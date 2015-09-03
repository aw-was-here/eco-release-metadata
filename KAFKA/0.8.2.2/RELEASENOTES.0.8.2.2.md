
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
# Apache Kafka  0.8.2.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-2308](https://issues.apache.org/jira/browse/KAFKA-2308) | *Major* | **New producer + Snappy face un-compression errors after broker restart**

Looks like the new producer, when used with Snappy, following a broker restart is sending messages the brokers can't decompress. This issue was discussed at few mailing lists thread, but I don't think we ever resolved it.

I can reproduce with trunk and Snappy 1.1.1.7. 

To reproduce:
1. Start 3 brokers
2. Create a topic with 3 partitions and 3 replicas each.
2. Start performance producer with --new-producer --compression-codec 2 (and set the number of messages to fairly high, to give you time. I went with 10M)
3. Bounce one of the brokers
4. The log of one of the surviving nodes should contain errors like:

{code}
2015-07-02 13:45:59,300 ERROR kafka.server.ReplicaManager: [Replica Manager on Broker 66]: Error processing append operation on partition [t3,0]
kafka.common.KafkaException:
        at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:94)
        at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:64)
        at kafka.utils.IteratorTemplate.maybeComputeNext(IteratorTemplate.scala:66)
        at kafka.utils.IteratorTemplate.hasNext(IteratorTemplate.scala:58)
        at kafka.message.ByteBufferMessageSet$$anon$2.innerDone(ByteBufferMessageSet.scala:177)
        at kafka.message.ByteBufferMessageSet$$anon$2.makeNext(ByteBufferMessageSet.scala:218)
        at kafka.message.ByteBufferMessageSet$$anon$2.makeNext(ByteBufferMessageSet.scala:173)
        at kafka.utils.IteratorTemplate.maybeComputeNext(IteratorTemplate.scala:66)
        at kafka.utils.IteratorTemplate.hasNext(IteratorTemplate.scala:58)
        at scala.collection.Iterator$$anon$11.hasNext(Iterator.scala:327)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at scala.collection.generic.Growable$class.$plus$plus$eq(Growable.scala:48)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:103)
        at scala.collection.mutable.ArrayBuffer.$plus$plus$eq(ArrayBuffer.scala:47)
        at scala.collection.TraversableOnce$class.to(TraversableOnce.scala:273)
        at scala.collection.AbstractIterator.to(Iterator.scala:1157)
        at scala.collection.TraversableOnce$class.toBuffer(TraversableOnce.scala:265)
        at scala.collection.AbstractIterator.toBuffer(Iterator.scala:1157)
        at kafka.message.ByteBufferMessageSet.validateMessagesAndAssignOffsets(ByteBufferMessageSet.scala:267)
        at kafka.log.Log.liftedTree1$1(Log.scala:327)
        at kafka.log.Log.append(Log.scala:326)
        at kafka.cluster.Partition$$anonfun$appendMessagesToLeader$1.apply(Partition.scala:423)
        at kafka.cluster.Partition$$anonfun$appendMessagesToLeader$1.apply(Partition.scala:409)
        at kafka.utils.CoreUtils$.inLock(CoreUtils.scala:262)
        at kafka.utils.CoreUtils$.inReadLock(CoreUtils.scala:268)
        at kafka.cluster.Partition.appendMessagesToLeader(Partition.scala:409)
        at kafka.server.ReplicaManager$$anonfun$appendToLocalLog$2.apply(ReplicaManager.scala:365)
        at kafka.server.ReplicaManager$$anonfun$appendToLocalLog$2.apply(ReplicaManager.scala:350)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:98)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:98)
        at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:226)
        at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
        at scala.collection.mutable.HashMap.foreach(HashMap.scala:98)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        at scala.collection.AbstractTraversable.map(Traversable.scala:105)
        at kafka.server.ReplicaManager.appendToLocalLog(ReplicaManager.scala:350)
        at kafka.server.ReplicaManager.appendMessages(ReplicaManager.scala:286)
        at kafka.server.KafkaApis.handleProducerRequest(KafkaApis.scala:270)
        at kafka.server.KafkaApis.handle(KafkaApis.scala:57)
        at kafka.server.KafkaRequestHandler.run(KafkaRequestHandler.scala:60)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.IOException: PARSING\_ERROR(2)
        at org.xerial.snappy.SnappyNative.throw\_error(SnappyNative.java:84)
        at org.xerial.snappy.SnappyNative.uncompressedLength(Native Method)
        at org.xerial.snappy.Snappy.uncompressedLength(Snappy.java:594)
        at org.xerial.snappy.SnappyInputStream.hasNextChunk(SnappyInputStream.java:358)
        at org.xerial.snappy.SnappyInputStream.rawRead(SnappyInputStream.java:167)
        at org.xerial.snappy.SnappyInputStream.read(SnappyInputStream.java:150)
        at java.io.DataInputStream.readFully(DataInputStream.java:195)
        at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:82)
        ... 43 more
{code}

The client has the following messages:
{code}
[2015-07-02 13:46:00,478] ERROR Error when sending message to topic t3 with key: 4 bytes, value: 100 bytes with error: The server experienced an unexpected error when processing the request (org.apache.kafka.clients.producer.internals.ErrorLoggingCallback)
java: target/snappy-1.1.1/snappy.cc:423: char* snappy::internal::CompressFragment(const char*, size\_t, char*, snappy::uint16*, int): Assertion `0 == memcmp(base, candidate, matched)' failed.
{code}


---

* [KAFKA-2189](https://issues.apache.org/jira/browse/KAFKA-2189) | *Blocker* | **Snappy compression of message batches less efficient in 0.8.2.1**

We are using snappy compression and noticed a fairly substantial increase (about 2.25x) in log filesystem space consumption after upgrading a Kafka cluster from 0.8.1.1 to 0.8.2.1. We found that this is caused by messages being seemingly recompressed individually (or possibly with a much smaller buffer or dictionary?) instead of as a batch as sent by producers. We eventually tracked down the change in compression ratio/scope to this [1] commit that updated the snappy version from 1.0.5 to 1.1.1.3. The Kafka client version does not appear to be relevant as we can reproduce this with both the 0.8.1.1 and 0.8.2.1 Producer.

Here are the log files from our troubleshooting that contain the same set of 1000 messages, for batch sizes of 1, 10, 100, and 1000. f9d9b was the last commit with 0.8.1.1-like behavior prior to f5ab8 introducing the issue.

{noformat}
-rw-rw-r-- 1 kafka kafka 404967 May 12 11:45 /var/kafka2/f9d9b-batch-1-0/00000000000000000000.log
-rw-rw-r-- 1 kafka kafka 119951 May 12 11:45 /var/kafka2/f9d9b-batch-10-0/00000000000000000000.log
-rw-rw-r-- 1 kafka kafka  89645 May 12 11:45 /var/kafka2/f9d9b-batch-100-0/00000000000000000000.log
-rw-rw-r-- 1 kafka kafka  88279 May 12 11:45 /var/kafka2/f9d9b-batch-1000-0/00000000000000000000.log

-rw-rw-r-- 1 kafka kafka 402837 May 12 11:41 /var/kafka2/f5ab8-batch-1-0/00000000000000000000.log
-rw-rw-r-- 1 kafka kafka 382437 May 12 11:41 /var/kafka2/f5ab8-batch-10-0/00000000000000000000.log
-rw-rw-r-- 1 kafka kafka 364791 May 12 11:41 /var/kafka2/f5ab8-batch-100-0/00000000000000000000.log
-rw-rw-r-- 1 kafka kafka 380693 May 12 11:41 /var/kafka2/f5ab8-batch-1000-0/00000000000000000000.log
{noformat}

[1] https://github.com/apache/kafka/commit/f5ab8e1780cf80f267906e3259ad4f9278c32d28



