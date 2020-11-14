
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
# Apache Kafka  2.2.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-8952](https://issues.apache.org/jira/browse/KAFKA-8952) | *Blocker* | **Vulnerabilities found for jackson-databind-2.9.9**

I am currently using apache kafka latest version-2.3.0, however When I deployed the binary on the containers, I can see the vulnerability reported for the two jars - jackson-databind-2.9.9.jar and  guava-20.0.jar (filed KAFKA-8959 for the Guava part).


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



