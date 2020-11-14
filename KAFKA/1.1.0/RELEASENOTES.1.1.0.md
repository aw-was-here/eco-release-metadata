
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
# Apache Kafka  1.1.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-8624](https://issues.apache.org/jira/browse/KAFKA-8624) | *Major* | **这边是服务端的kafka，版本是 kafka\_2.11-1.0.0.2，当客户端向主题发送消息的时候抛出如下异常，客户端跟服务端的版本不一致吗？**

ERROR [KafkaApi-1004] Error when handling request \\{replica\_id=-1,max\_wait\_time=10000,min\_bytes=0,topics=[{topic=ETE,partitions=[{partition=3,fetch\_offset=119224671,max\_bytes=1048576}]}]} (kafka.server.KafkaApis)
java.lang.IllegalArgumentException: Magic v0 does not support record headers
 at org.apache.kafka.common.record.MemoryRecordsBuilder.appendWithOffset(MemoryRecordsBuilder.java:403)
 at org.apache.kafka.common.record.MemoryRecordsBuilder.append(MemoryRecordsBuilder.java:586)
 at org.apache.kafka.common.record.AbstractRecords.convertRecordBatch(AbstractRecords.java:134)
 at org.apache.kafka.common.record.AbstractRecords.downConvert(AbstractRecords.java:109)
 at org.apache.kafka.common.record.FileRecords.downConvert(FileRecords.java:253)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$convertedPartitionData$1$1$$anonfun$apply$4.apply(KafkaApis.scala:519)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$convertedPartitionData$1$1$$anonfun$apply$4.apply(KafkaApis.scala:517)
 at scala.Option.map(Option.scala:146)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$convertedPartitionData$1$1.apply(KafkaApis.scala:517)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$convertedPartitionData$1$1.apply(KafkaApis.scala:507)
 at scala.Option.flatMap(Option.scala:171)
 at kafka.server.KafkaApis.kafka$server$KafkaApis$$convertedPartitionData$1(KafkaApis.scala:507)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$createResponse$2$1.apply(KafkaApis.scala:555)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$createResponse$2$1.apply(KafkaApis.scala:554)
 at scala.collection.Iterator$class.foreach(Iterator.scala:891)
 at scala.collection.AbstractIterator.foreach(Iterator.scala:1334)
 at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
 at scala.collection.AbstractIterable.foreach(Iterable.scala:54)
 at kafka.server.KafkaApis.kafka$server$KafkaApis$$createResponse$2(KafkaApis.scala:554)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$fetchResponseCallback$1$1.apply(KafkaApis.scala:568)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$fetchResponseCallback$1$1.apply(KafkaApis.scala:568)
 at kafka.server.KafkaApis$$anonfun$sendResponseMaybeThrottle$1.apply$mcVI$sp(KafkaApis.scala:2033)
 at kafka.server.ClientRequestQuotaManager.maybeRecordAndThrottle(ClientRequestQuotaManager.scala:54)
 at kafka.server.KafkaApis.sendResponseMaybeThrottle(KafkaApis.scala:2032)
 at kafka.server.KafkaApis.kafka$server$KafkaApis$$fetchResponseCallback$1(KafkaApis.scala:568)
 at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$processResponseCallback$1$1.apply$mcVI$sp(KafkaApis.scala:587)
 at kafka.server.ClientQuotaManager.maybeRecordAndThrottle(ClientQuotaManager.scala:176)
 at kafka.server.KafkaApis.kafka$server$KafkaApis$$processResponseCallback$1(KafkaApis.scala:586)
 at kafka.server.KafkaApis$$anonfun$handleFetchRequest$3.apply(KafkaApis.scala:603)
 at kafka.server.KafkaApis$$anonfun$handleFetchRequest$3.apply(KafkaApis.scala:603)
 at kafka.server.ReplicaManager.fetchMessages(ReplicaManager.scala:820)
 at kafka.server.KafkaApis.handleFetchRequest(KafkaApis.scala:595)
 at kafka.server.KafkaApis.handle(KafkaApis.scala:99)
 at kafka.server.KafkaRequestHandler.run(KafkaRequestHandler.scala:65)
 at java.lang.Thread.run(Thread.java:748)



