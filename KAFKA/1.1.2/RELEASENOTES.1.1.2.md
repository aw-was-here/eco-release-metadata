
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache Kafka  1.1.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-6292](https://issues.apache.org/jira/browse/KAFKA-6292) | *Major* | **KafkaConsumer ran into Unknown error fetching data for topic-partition caused by integer overflow in FileLogInputStream**

Steps to reproduce:
\* Broker config to reproduce this bug:

{code:java}
  # The maximum size of a log segment file. When this size is reached a new log segment will be created.
#2G
log.segment.bytes=2147483647
{code}

\* Setups:

    producer sends messages constantly. 
    consumer polling
    topic has 1 partitions and replication factor 1.
    min.insync.replicas=1
    producer has "acks=all"
    consumer has default "enable.auto.commit=false"
    consumer manually commitSync offsets after handling messages.
    kafka in standalone
\* Observe log in consumer side(for me running 12 hours)

{code:java}
2017-12-18 07:11:01.013 WARN sep105v1 [app-consumer-subscription-pool-4-thread-20] org.apache.kafka.clients.consumer.internals.Fetcher {} Unknown error fetching data for topic-partition DDI.DISPATCHER.P\_TVIN.W\_SL.P\_appx.P\_ul.P\_pos-0
{code}

\* Observe server.log in Kafka/logs

{code:java}
[2017-12-14 04:52:21,144] ERROR [Replica Manager on Broker 3]: Error processing fetch operation on partition DDI.DISPATCHER.P\_TVIN.W\_SL.P\_appx.P\_ul.P\_pos-0, offset 4043314339 (kafka.server.ReplicaManager)
org.apache.kafka.common.KafkaException: java.io.EOFException: Failed to read \`log header\` from file channel \`sun.nio.ch.FileChannelImpl@5604ea91\`. Expected to read 17 bytes, but reached end of file after reading 0 bytes. Started read from position 2147483643.
        at org.apache.kafka.common.record.RecordBatchIterator.makeNext(RecordBatchIterator.java:40)
        at org.apache.kafka.common.record.RecordBatchIterator.makeNext(RecordBatchIterator.java:24)
        at org.apache.kafka.common.utils.AbstractIterator.maybeComputeNext(AbstractIterator.java:79)
        at org.apache.kafka.common.utils.AbstractIterator.hasNext(AbstractIterator.java:45)
        at org.apache.kafka.common.record.FileRecords.searchForOffsetWithSize(FileRecords.java:279)
        at kafka.log.LogSegment.translateOffset(LogSegment.scala:176)
        at kafka.log.LogSegment.read(LogSegment.scala:228)
        at kafka.log.Log.read(Log.scala:938)
        at kafka.server.ReplicaManager.read$1(ReplicaManager.scala:719)
        at kafka.server.ReplicaManager.$anonfun$readFromLocalLog$6(ReplicaManager.scala:780)
        at scala.collection.mutable.ResizableArray.foreach(ResizableArray.scala:59)
        at scala.collection.mutable.ResizableArray.foreach$(ResizableArray.scala:52)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:48)
        at kafka.server.ReplicaManager.readFromLocalLog(ReplicaManager.scala:779)
        at kafka.server.ReplicaManager.fetchMessages(ReplicaManager.scala:617)
        at kafka.server.KafkaApis.handleFetchRequest(KafkaApis.scala:615)
        at kafka.server.KafkaApis.handle(KafkaApis.scala:98)
        at kafka.server.KafkaRequestHandler.run(KafkaRequestHandler.scala:66)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.EOFException: Failed to read \`log header\` from file channel \`sun.nio.ch.FileChannelImpl@5604ea91\`. Expected to read 17 bytes, but reached end of file after reading 0 bytes. Started read from position 2147483643.
        at org.apache.kafka.common.utils.Utils.readFullyOrFail(Utils.java:751)
        at org.apache.kafka.common.record.FileLogInputStream.nextBatch(FileLogInputStream.java:66)
        at org.apache.kafka.common.record.FileLogInputStream.nextBatch(FileLogInputStream.java:40)
        at org.apache.kafka.common.record.RecordBatchIterator.makeNext(RecordBatchIterator.java:35)
        ... 18 more

{code}

\* Impact:
# After EOF exception occurs, the consumer will failed to consume the remain message
# After the segments log files which cause the EOF exception has been deleted by the log Cleaner thread. Consumer recovered to consumer message.
# Have no impact from the view of producer
\* Analysis:
# Kafka log file list:
{code:java}
ls /ssd/kafka-logs/DDI.DISPATCHER.P\_TVIN.W\_SL.P\_appx.P\_ul.P\_pos-0/\*.log
-rw-r--r-- 1 root root 2147481479 Dec 27 14:15 000000000004043314387.log
-rw-r--r-- 1 root root 2147483647 Dec 27 14:15 000000000004039884900.log
{code}

# use tools to check the log: /bin/kafka-run-class.sh kafka.tools.DumpLogSegments --deep-iteration --print-data-log --files /ssd/kafka-logs/DDI.DISPATCHER.P\_TVIN.W\_SL.P\_appx.P\_ul.P\_pos-0/00000000004039884900.log

Exception print in console is the same in the server.log:

{code:java}
bin/kafka-run-class.sh kafka.tools.DumpLogSegments --deep-iteration --print-data-log --files 00000000004039884900.log \> tmp.log
Exception in thread "main" org.apache.kafka.common.KafkaException: java.io.EOFException: Failed to read \`log header\` from file channel \`sun.nio.ch.FileChannelImpl@4e41089d\`. Expected to read 17 bytes, but reached end of file after reading 0 bytes. Started read from position 2147483637.
  at org.apache.kafka.common.record.RecordBatchIterator.makeNext(RecordBatchIterator.java:40)
  at org.apache.kafka.common.record.RecordBatchIterator.makeNext(RecordBatchIterator.java:24)
  at org.apache.kafka.common.utils.AbstractIterator.maybeComputeNext(AbstractIterator.java:79)
  at org.apache.kafka.common.utils.AbstractIterator.hasNext(AbstractIterator.java:45)
  at scala.collection.convert.Wrappers$JIteratorWrapper.hasNext(Wrappers.scala:39)
  at scala.collection.Iterator.foreach(Iterator.scala:929)
  at scala.collection.Iterator.foreach$(Iterator.scala:929)
  at scala.collection.AbstractIterator.foreach(Iterator.scala:1417)
  at scala.collection.IterableLike.foreach(IterableLike.scala:71)
  at scala.collection.IterableLike.foreach$(IterableLike.scala:70)
  at scala.collection.AbstractIterable.foreach(Iterable.scala:54)
  at kafka.tools.DumpLogSegments$.dumpLog(DumpLogSegments.scala:375)
  at kafka.tools.DumpLogSegments$.$anonfun$main$1(DumpLogSegments.scala:112)
  at kafka.tools.DumpLogSegments$.$anonfun$main$1$adapted(DumpLogSegments.scala:104)
  at scala.collection.IndexedSeqOptimized.foreach(IndexedSeqOptimized.scala:32)
  at scala.collection.IndexedSeqOptimized.foreach$(IndexedSeqOptimized.scala:29)
  at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:191)
  at kafka.tools.DumpLogSegments$.main(DumpLogSegments.scala:104)
  at kafka.tools.DumpLogSegments.main(DumpLogSegments.scala)
Caused by: java.io.EOFException: Failed to read \`log header\` from file channel \`sun.nio.ch.FileChannelImpl@4e41089d\`. Expected to read 17 bytes, but reached end of file after reading 0 bytes. Started read from position 2147483637.
  at org.apache.kafka.common.utils.Utils.readFullyOrFail(Utils.java:791)
  at org.apache.kafka.common.record.FileLogInputStream.nextBatch(FileLogInputStream.java:66)
  at org.apache.kafka.common.record.FileLogInputStream.nextBatch(FileLogInputStream.java:40)
  at org.apache.kafka.common.record.RecordBatchIterator.makeNext(RecordBatchIterator.java:35)
  ... 18 more
{code}

\* Root Cause:
  In org.apache.kafka.common.record.FileLogInputStream.java:

{code:java}
60    @Override
61    public FileChannelRecordBatch nextBatch() throws IOException {
62        if (position + HEADER\_SIZE\_UP\_TO\_MAGIC \>= end)
63            return null;
64
65        logHeaderBuffer.rewind();
66        Utils.readFullyOrFail(channel, logHeaderBuffer, position, "log header");
.....
{code}
    EOFException is raised at line 66, which expected to read next batch records from the log segment, but current position is reached the end of segment file. Check the code in line 62, if the position is 2147483647, then (position + HEADER\_SIZE\_UP\_TO\_MAGIC) is overflow and will be a negative.

\* Workaround:
# lower down the log.segment.bytes


---

* [KAFKA-6290](https://issues.apache.org/jira/browse/KAFKA-6290) | *Major* | **Kafka Connect cast transformation should support logical types**

I am facing same issue when consuming from KAFKA to HDFS with CAST TRANSFORMS. Any pointer please.

My Connector :
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

{code:java}
{
 "name": "hdfs-sink-avro-cast-test-stndln",
 "config": {
  "key.converter": "io.confluent.connect.avro.AvroConverter",
  "key.converter.schema.registry.url": "http://localhost:8081",
  "value.converter": "io.confluent.connect.avro.AvroConverter",
  "value.converter.schema.registry.url": "http://localhost:8081",
  "key.converter.schemas.enable": "true",
  "value.converter.schemas.enable": "true",
  "internal.key.converter": "org.apache.kafka.connect.json.JsonConverter",
  "internal.value.converter": "org.apache.kafka.connect.json.JsonConverter",
  "internal.key.converter.schemas.enable": "false",
  "internal.value.converter.schemas.enable": "false",
  "offset.storage.file.filename": "/tmp/connect.offsets.avroHdfsConsumer.casttest.stndln",
  "offset.flush.interval.ms": "500",
  "parse.key": "true",
  "connector.class": "io.confluent.connect.hdfs.HdfsSinkConnector",
  "hadoop.home": "/usr/lib/hadoop",
  "hdfs.url": "hdfs://ip-127-34-56-789.us-east-1.compute.interna:8020",
  "topics": "avro\_raw\_KFK\_SRP\_USER\_TEST\_V,avro\_raw\_KFK\_SRP\_PG\_HITS\_TEST\_V",
  "tasks.max": "1",
  "topics.dir": "/home/hadoop/kafka/data/streams/in/raw/casttest1",
  "logs.dir": "/home/hadoop/kafka/wal/streams/in/raw/casttest1",
  "hive.integration": "true",
  "hive.metastore.uris": "thrift://ip-127-34-56-789.us-east-1.compute.internal:9083",
  "schema.compatibility": "BACKWARD",
  "flush.size": "10000",
  "rotate.interval.ms": "1000",
  "mode": "timestamp",
  "transforms": "Cast",
  "transforms.Cast.type": "org.apache.kafka.connect.transforms.Cast$Value",
  "transforms.Cast.spec": "residuals:float64,comp:float64"
 }
}
{code}

Exception :
\*\*\*\*\*\*\*\*\*\*\*\*\*

{code:java}

[2017-11-16 01:14:39,719] ERROR Task hdfs-sink-avro-cast-test-stndln-0 threw an uncaught and unrecoverable exception (org.apache.kafka.connect.runtime.WorkerTask:148)
org.apache.kafka.connect.errors.DataException: Invalid Java object for schema type INT64: class java.util.Date for field: "null"
        at org.apache.kafka.connect.data.ConnectSchema.validateValue(ConnectSchema.java:239)
        at org.apache.kafka.connect.data.ConnectSchema.validateValue(ConnectSchema.java:209)
        at org.apache.kafka.connect.data.Struct.put(Struct.java:214)
        at org.apache.kafka.connect.transforms.Cast.applyWithSchema(Cast.java:152)
        at org.apache.kafka.connect.transforms.Cast.apply(Cast.java:108)
        at org.apache.kafka.connect.runtime.TransformationChain.apply(TransformationChain.java:38)
        at org.apache.kafka.connect.runtime.WorkerSinkTask.convertMessages(WorkerSinkTask.java:414)
        at org.apache.kafka.connect.runtime.WorkerSinkTask.poll(WorkerSinkTask.java:250)
        at org.apache.kafka.connect.runtime.WorkerSinkTask.iteration(WorkerSinkTask.java:180)
        at org.apache.kafka.connect.runtime.WorkerSinkTask.execute(WorkerSinkTask.java:148)
        at org.apache.kafka.connect.runtime.WorkerTask.doRun(WorkerTask.java:146)
        at org.apache.kafka.connect.runtime.WorkerTask.run(WorkerTask.java:190)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1149)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:624)
        at java.lang.Thread.run(Thread.java:748)
[2017-11-16 01:14:39,719] ERROR Task is being killed and will not recover until manually restarted (org.apache.kafka.connect.runtime.WorkerTask:149)
[2017-11-16 01:14:39,719] INFO Shutting down Hive executor service. (io.confluent.connect.hdfs.DataWriter:309)

{code}



