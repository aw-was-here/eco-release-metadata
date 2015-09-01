
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

* [KAFKA-2235](https://issues.apache.org/jira/browse/KAFKA-2235) | *Major* | **LogCleaner offset map overflow**

We've seen log cleaning generating an error for a topic with lots of small messages. It seems that cleanup map overflow is possible if a log segment contains more unique keys than empty slots in offsetMap. Check for baseOffset and map utilization before processing segment seems to be not enough because it doesn't take into account segment size (number of unique messages in the segment).

I suggest to estimate upper bound of keys in a segment as a number of messages in the segment and compare it with the number of available slots in the map (keeping in mind desired load factor). It should work in cases where an empty map is capable to hold all the keys for a single segment. If even a single segment no able to fit into an empty map cleanup process will still fail. Probably there should be a limit on the log segment entries count?

Here is the stack trace for this error:
2015-05-19 16:52:48,758 ERROR [kafka-log-cleaner-thread-0] kafka.log.LogCleaner - [kafka-log-cleaner-thread-0], Error due to
java.lang.IllegalArgumentException: requirement failed: Attempt to add a new entry to a full offset map.
       at scala.Predef$.require(Predef.scala:233)
       at kafka.log.SkimpyOffsetMap.put(OffsetMap.scala:79)
       at kafka.log.Cleaner$$anonfun$kafka$log$Cleaner$$buildOffsetMapForSegment$1.apply(LogCleaner.scala:543)
       at kafka.log.Cleaner$$anonfun$kafka$log$Cleaner$$buildOffsetMapForSegment$1.apply(LogCleaner.scala:538)
       at scala.collection.Iterator$class.foreach(Iterator.scala:727)
       at kafka.utils.IteratorTemplate.foreach(IteratorTemplate.scala:32)
       at scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
       at kafka.message.MessageSet.foreach(MessageSet.scala:67)
       at kafka.log.Cleaner.kafka$log$Cleaner$$buildOffsetMapForSegment(LogCleaner.scala:538)
       at kafka.log.Cleaner$$anonfun$buildOffsetMap$3.apply(LogCleaner.scala:515)
       at kafka.log.Cleaner$$anonfun$buildOffsetMap$3.apply(LogCleaner.scala:512)
       at scala.collection.immutable.Stream.foreach(Stream.scala:547)
       at kafka.log.Cleaner.buildOffsetMap(LogCleaner.scala:512)
       at kafka.log.Cleaner.clean(LogCleaner.scala:307)
       at kafka.log.LogCleaner$CleanerThread.cleanOrSleep(LogCleaner.scala:221)
       at kafka.log.LogCleaner$CleanerThread.doWork(LogCleaner.scala:199)
       at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:60)


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


---

* [KAFKA-2114](https://issues.apache.org/jira/browse/KAFKA-2114) | *Major* | **Unable to change min.insync.replicas default**

Following the comment here[1] I was unable to change the min.insync.replicas default value. I tested this by setting up a 3 node cluster, wrote to a topic with a replication factor of 3, using request.required.acks=-1 and setting min.insync.replicas=2 on the broker's server.properties. I then shutdown 2 brokers but I was still able to write successfully. Only after running the alter topic command setting min.insync.replicas=2 on the topic did I see write failures.

[1] - http://mail-archives.apache.org/mod\_mbox/kafka-users/201504.mbox/%3CCANZ-JHF71yqKE6%2BKKhWe2EGUJv6R3bTpoJnYck3u1-M35sobgg%40mail.gmail.com%3E


---

* [KAFKA-2096](https://issues.apache.org/jira/browse/KAFKA-2096) | *Critical* | **Enable keepalive socket option for broker to prevent socket leak**

We run a Kafka 0.8.2.1 cluster in AWS with large number of producers (> 10000). Also the number of producer instances scale up and down significantly on a daily basis.

The issue we found is that after 10 days, the open file descriptor count will approach the limit of 32K. An investigation of these open file descriptors shows that a significant portion of these are from client instances that are terminated during scaling down. Somehow they still show as "ESTABLISHED" in netstat. We suspect that the AWS firewall between the client and broker causes this issue.

We attempted to use "keepalive" socket option to reduce this socket leak on broker and it appears to be working. Specifically, we added this line to kafka.network.Acceptor.accept():

      socketChannel.socket().setKeepAlive(true)

It is confirmed during our experiment of this change that entries in netstat where the client instance is terminated were probed as configured in operating system. After configured number of probes, the OS determined that the peer is no longer alive and the entry is removed, possibly after an error in Kafka to read from the channel and closing the channel. Also, our experiment shows that after a few days, the instance was able to keep a stable low point of open file descriptor count, compared with other instances where the low point keeps increasing day to day.


---

* [KAFKA-1883](https://issues.apache.org/jira/browse/KAFKA-1883) | *Major* | **NullPointerException in RequestSendThread**

I often see the following exception while running some tests
(ProducerFailureHandlingTest.testNoResponse is one such instance):

{code}
[2015-01-19 22:30:24,257] ERROR [Controller-0-to-broker-1-send-thread],
Controller 0 fails to send a request to broker
id:1,host:localhost,port:56729 (kafka.controller.RequestSendThread:103)
java.lang.NullPointerException
    at kafka.controller.RequestSendThread.doWork(ControllerChannelManager.
scala:150)
    at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:60)

{code}

Looking at that code in question, I can see that the NPE can be triggered
when the "receive" is null which can happen if the "isRunning" is false
(i.e a shutdown has been requested).


---

* [KAFKA-1836](https://issues.apache.org/jira/browse/KAFKA-1836) | *Minor* | **metadata.fetch.timeout.ms set to zero blocks forever**

You can easily work around this by setting the timeout value to 1ms, but 0ms should mean 0ms or at least have the behavior documented.


---

* [KAFKA-1758](https://issues.apache.org/jira/browse/KAFKA-1758) | *Major* | **corrupt recovery file prevents startup**

Hi,

We recently had a kafka node go down suddenly. When it came back up, it apparently had a corrupt recovery file, and refused to startup:

{code}
2014-11-06 08:17:19,299  WARN [main] server.KafkaServer - Error starting up KafkaServer
java.lang.NumberFormatException: For input string: "^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@
^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@"
        at java.lang.NumberFormatException.forInputString(NumberFormatException.java:65)
        at java.lang.Integer.parseInt(Integer.java:481)
        at java.lang.Integer.parseInt(Integer.java:527)
        at scala.collection.immutable.StringLike$class.toInt(StringLike.scala:229)
        at scala.collection.immutable.StringOps.toInt(StringOps.scala:31)
        at kafka.server.OffsetCheckpoint.read(OffsetCheckpoint.scala:76)
        at kafka.log.LogManager$$anonfun$loadLogs$1.apply(LogManager.scala:106)
        at kafka.log.LogManager$$anonfun$loadLogs$1.apply(LogManager.scala:105)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
        at scala.collection.mutable.WrappedArray.foreach(WrappedArray.scala:34)
        at kafka.log.LogManager.loadLogs(LogManager.scala:105)
        at kafka.log.LogManager.<init>(LogManager.scala:57)
        at kafka.server.KafkaServer.createLogManager(KafkaServer.scala:275)
        at kafka.server.KafkaServer.startup(KafkaServer.scala:72)
{code}

And the app is under a monitor (so it was repeatedly restarting and failing with this error for several minutes before we got to it)…

We moved the ‘recovery-point-offset-checkpoint’ file out of the way, and it then restarted cleanly (but of course re-synced all it’s data from replicas, so we had no data loss).

Anyway, I’m wondering if that’s the expected behavior? Or should it not declare it corrupt and then proceed automatically to an unclean restart?

Should this NumberFormatException be handled a bit more gracefully?

We saved the corrupt file if it’s worth inspecting (although I doubt it will be useful!)….

The corrupt files appeared to be all zeroes.


---

* [KAFKA-1668](https://issues.apache.org/jira/browse/KAFKA-1668) | *Minor* | **TopicCommand doesn't warn if --topic argument doesn't match any topics**

Running {{kafka-topics.sh --alter}} with an invalid {{--topic}} argument produces no output and exits with 0, indicating success.

{code}
$ bin/kafka-topics.sh --topic does-not-exist --alter --config invalid=xxx --zookeeper zkhost:2181
$ echo $?
0
{code}

An invalid topic name or a regular expression that matches 0 topics should at least print a warning.


---

* [KAFKA-1057](https://issues.apache.org/jira/browse/KAFKA-1057) | *Major* | **Trim whitespaces from user specified configs**

Whitespaces in configs are a common problem that leads to config errors. It will be nice if Kafka can trim the whitespaces from configs automatically



