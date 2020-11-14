
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
# Apache Kafka  2.0.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-7655](https://issues.apache.org/jira/browse/KAFKA-7655) | *Major* | **Metadata spamming requests from Kafka Streams under some circumstances, potential DOS**

There is a bug in the InternalTopicManager that makes the client believe that a topic exists even though it doesn't, it occurs mostly in those few seconds between when a topic is marked for deletion and when it is actually deleted. In that timespan, the Broker gives inconsistent information, first it hides the topic but then it refuses to create a new one therefore the client believes the topic was existing already and it starts polling for metadata.

The consequence is that the client goes into a loop where it polls for topic metadata and if this is done by many threads it can take down a small cluster or degrade greatly its performances.

The real life scenario is probably a reset gone wrong. Reproducing the issue is fairly simple, these are the steps:
 \* Stop a Kafka streams application
 \* Delete one of its changelog and the local store
 \* Restart the application immediately after the topic delete
 \* You will see the Kafka streams application hanging after the bootstrap saying something like: INFO  Metadata - Cluster ID: xxxx

 

I am attaching a patch that fixes the issue client side but my personal opinion is that this should be tackled on the broker as well, metadata requests seem expensive and it would be easy to craft a DDOS that can potentially take down an entire cluster in seconds just by flooding the brokers with metadata requests.

The patch kicks in only when a topic that wasn't existing in the first call to getNumPartitions triggers a TopicExistsException. When this happens it forces the re-validation of the topic and if it still looks like doesn't exists plan a retry with some delay, to give the broker the necessary time to sort it out.

I think this patch makes sense beside the above mentioned use case where a topic it's not existing, because, even if the topic was actually created, the client should not blindly trust it and should still re-validate it by checking the number of partitions. IE: a topic can be created automatically by the first request and then it would have the default partitions rather than the expected ones.


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



