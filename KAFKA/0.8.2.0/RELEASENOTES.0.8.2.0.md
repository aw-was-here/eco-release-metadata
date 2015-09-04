
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
# Apache Kafka  0.8.2.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-1902](https://issues.apache.org/jira/browse/KAFKA-1902) | *Blocker* | **fix MetricName so that Yammer reporter can work correctly**

Currently, we create MetricName in the following format.

group: "kafka.server"
type: "BrokerTopicMetrics"
name: "BytesInPerSec"
scope: null
mBeanName: "kafka.server:type=BrokerTopicMetrics,name=BytesInPerSec,topic=test"

However, Yammer metric reporter seems to only use the first four fields group, type, name and scope during reporting.


---

* [KAFKA-1879](https://issues.apache.org/jira/browse/KAFKA-1879) | *Major* | **Log warning when receiving produce requests with acks \> 1**

0.8.2 deprecates support for acks \> 1.
We want to start logging warnings when client use this deprecated behavior, so we can safely drop it in the next release (see KAFKA-1697 for more details).


---

* [KAFKA-1876](https://issues.apache.org/jira/browse/KAFKA-1876) | *Blocker* | **pom file for scala 2.11 should reference a specific version**

Currently, the pom file specifies the following scala dependency for 2.11.
    \<dependency\>
      \<groupId\>org.scala-lang\</groupId\>
      \<artifactId\>scala-library\</artifactId\>
      \<version\>2.11\</version\>
      \<scope\>compile\</scope\>
    \</dependency\>
However, there is no 2.11 in maven central (there are only 2.11.1, 2.11.2, etc).


---

* [KAFKA-1874](https://issues.apache.org/jira/browse/KAFKA-1874) | *Major* | **missing import util.parsing.json.JSON**

core project
main scala folder
kafka.utils.Json.scala file

line#21
import util.parsing.json.JSON

this class is missing.


---

* [KAFKA-1873](https://issues.apache.org/jira/browse/KAFKA-1873) | *Minor* | **scalatest\_2.10-1.9.1.jar of core build path is cross-compiled with an incompatible version of Scala (2.10.0)**

When you setup your development environment, you see this in Problems for the project 'core'.

Description	Resource	Path	Location	Type
scalatest\_2.10-1.9.1.jar of core build path is cross-compiled with an incompatible version of Scala (2.10.0). In case this report is mistaken, this check can be disabled in the compiler preference page.	core		Unknown	Scala Version Problem


---

* [KAFKA-1872](https://issues.apache.org/jira/browse/KAFKA-1872) | *Major* | **Update Developer Setup**

I setup my developer environment today and came up with an updated document.

Update the CWiki page at https://cwiki.apache.org/confluence/display/KAFKA/Developer+Setup
OR create a new page:

Update the site page at http://kafka.apache.org/code.html
with the one created in previous step.


---

* [KAFKA-1870](https://issues.apache.org/jira/browse/KAFKA-1870) | *Blocker* | **Cannot commit with simpleConsumer on Zookeeper only with Java API**

From Kafka 0.8.2, we need to pass version 0 in the OffsetCommitRequest if we want to commit only on zookeeper.

However the Java API doesnt allow to pass the version in parameter.

Can you please add the version in the constructor of kafka.javaapi.OffsetCommitRequest ?


---

* [KAFKA-1868](https://issues.apache.org/jira/browse/KAFKA-1868) | *Blocker* | **ConsoleConsumer shouldn't override dual.commit.enabled to false if not explicitly set**

In ConsoleConsumer, we override dual.commit.enabled to false if not explicitly set. However, if offset.storage is set to kafka, by default, dual.commit.enabled is set to true and we shouldn't override that.


---

* [KAFKA-1864](https://issues.apache.org/jira/browse/KAFKA-1864) | *Blocker* | **Revisit defaults for the internal offsets topic**

Realize this is late, but as I was reviewing the 0.8.2 RC, I found that our defaults for the offsets topic are not ideal. The # of partitions currently default to 1 and the replication factor is 1 as well. Granted that the replication factor is changeable in the future (through the admin tool), changing the # of partitions is a very disruptive change. The concern is that this feature is on by default on the server and will be activated the moment the first client turns on kafka based offset storage. 

My proposal is to change the # of partitions to something large (50 or so) and change the replication factor to min(# of alive brokers, configured replication factor)


---

* [KAFKA-1861](https://issues.apache.org/jira/browse/KAFKA-1861) | *Major* | **Publishing kafka-client:test in order to utilize the helper utils in TestUtils**

Related to SAMZA-227 (Upgrade KafkaSystemProducer to new java-based Kafka API)
Turns out that some of the utilities that are helpful in writing unit tests are available in org.apache.kafka.test.TestUtils.java (:kafka-clients). This is not published to maven repository. Hence, we are forced to reproduce the same code in samza. This can be avoided if the test package is published to the Maven repo.

For example, we are creating a customize MockProducer to be used in Samza unit-tests and access to these quick helper utils will be useful.


---

* [KAFKA-1851](https://issues.apache.org/jira/browse/KAFKA-1851) | *Blocker* | **OffsetFetchRequest returns extra partitions when input only contains unknown partitions**

When issuing an OffsetFetchRequest with an unknown topic partition, the OffsetFetchResponse unexpectedly returns all partitions in the same consumer group, in addition to the unknown partition.


---

* [KAFKA-1841](https://issues.apache.org/jira/browse/KAFKA-1841) | *Blocker* | **OffsetCommitRequest API - timestamp field is not versioned**

Timestamp field was added to the OffsetCommitRequest wire protocol api for 0.8.2 by KAFKA-1012 .  The 0.8.1.1 server does not support the timestamp field, so I think the api version of OffsetCommitRequest should be incremented and checked by the 0.8.2 kafka server before attempting to read a timestamp from the network buffer in OffsetCommitRequest.readFrom (core/src/main/scala/kafka/api/OffsetCommitRequest.scala)

It looks like a subsequent patch (KAFKA-1462) added another api change to support a new constructor w/ params generationId and consumerId, calling that version 1, and a pending patch (KAFKA-1634) adds retentionMs as another field, while possibly removing timestamp altogether, calling this version 2.  So the fix here is not straightforward enough for me to submit a patch.

This could possibly be merged into KAFKA-1634, but opening as a separate Issue because I believe the lack of versioning in the current trunk should block 0.8.2 release.


---

* [KAFKA-1831](https://issues.apache.org/jira/browse/KAFKA-1831) | *Major* | **Producer does not provide any information about which host the data was sent to**

For traceability purposes and for troubleshooting, when sending data to Kafka, the Producer should provide information about which host the data was sent to. This works well already in the SimpleConsumer, which provides host() and port() methods.


---

* [KAFKA-1819](https://issues.apache.org/jira/browse/KAFKA-1819) | *Blocker* | **Cleaner gets confused about deleted and re-created topics**

I get an error like this after deleting a compacted topic and re-creating it. I think it's because the brokers don't remove cleaning checkpoints from the cleaner-offset-checkpoint file. This is from a build based off commit bd212b7.

java.lang.IllegalArgumentException: requirement failed: Last clean offset is 587607 but segment base offset is 0 for log foo-6.
        at scala.Predef$.require(Predef.scala:233)
        at kafka.log.Cleaner.buildOffsetMap(LogCleaner.scala:502)
        at kafka.log.Cleaner.clean(LogCleaner.scala:300)
        at kafka.log.LogCleaner$CleanerThread.cleanOrSleep(LogCleaner.scala:214)
        at kafka.log.LogCleaner$CleanerThread.doWork(LogCleaner.scala:192)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:60)


---

* [KAFKA-1806](https://issues.apache.org/jira/browse/KAFKA-1806) | *Blocker* | **broker fetch request uses old leader offset which is higher than current leader offset causes error**

Although following issue: https://issues.apache.org/jira/browse/KAFKA-727
is marked fixed but I still see this issue in 0.8.1.1. I am able to reproducer the issue consistently. 

[2014-08-18 06:43:58,356] ERROR [KafkaApi-1] Error when processing fetch request for partition [mmetopic4,2] offset 1940029 from consumer with correlation id 21 (kafka.server.Kaf
kaApis)
java.lang.IllegalArgumentException: Attempt to read with a maximum offset (1818353) less than the start offset (1940029).
        at kafka.log.LogSegment.read(LogSegment.scala:136)
        at kafka.log.Log.read(Log.scala:386)
        at kafka.server.KafkaApis.kafka$server$KafkaApis$$readMessageSet(KafkaApis.scala:530)
        at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$readMessageSets$1.apply(KafkaApis.scala:476)
        at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$readMessageSets$1.apply(KafkaApis.scala:471)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:233)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:233)
        at scala.collection.immutable.Map$Map1.foreach(Map.scala:119)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:233)
        at scala.collection.immutable.Map$Map1.map(Map.scala:107)
        at kafka.server.KafkaApis.kafka$server$KafkaApis$$readMessageSets(KafkaApis.scala:471)
        at kafka.server.KafkaApis$FetchRequestPurgatory.expire(KafkaApis.scala:783)
        at kafka.server.KafkaApis$FetchRequestPurgatory.expire(KafkaApis.scala:765)
        at kafka.server.RequestPurgatory$ExpiredRequestReaper.run(RequestPurgatory.scala:216)
        at java.lang.Thread.run(Thread.java:745)


---

* [KAFKA-1799](https://issues.apache.org/jira/browse/KAFKA-1799) | *Blocker* | **ProducerConfig.METRIC\_REPORTER\_CLASSES\_CONFIG doesn't work**

When running the following test, we got an unknown configuration exception.

    @Test
    public void testMetricsReporter() {
        Properties producerProps = new Properties();
        producerProps.put(ProducerConfig.BOOTSTRAP\_SERVERS\_CONFIG, "host1:123");
        producerProps.put(ProducerConfig.METRIC\_REPORTER\_CLASSES\_CONFIG, "org.apache.kafka.clients.producer.new-metrics-reporter");
        new KafkaProducer(producerProps);
    }

org.apache.kafka.common.config.ConfigException: Unknown configuration 'org.apache.kafka.clients.producer.new-metrics-reporter'
	at org.apache.kafka.common.config.AbstractConfig.get(AbstractConfig.java:60)
	at org.apache.kafka.common.config.AbstractConfig.getClass(AbstractConfig.java:91)
	at org.apache.kafka.common.config.AbstractConfig.getConfiguredInstances(AbstractConfig.java:147)
	at org.apache.kafka.clients.producer.KafkaProducer.\<init\>(KafkaProducer.java:105)
	at org.apache.kafka.clients.producer.KafkaProducer.\<init\>(KafkaProducer.java:94)


---

* [KAFKA-1797](https://issues.apache.org/jira/browse/KAFKA-1797) | *Major* | **add the serializer/deserializer api to the new java client**

Currently, the new java clients take a byte array for both the key and the value. While this api is simple, it pushes the serialization/deserialization logic into the application. This makes it hard to reason about what type of data flows through Kafka and also makes it hard to share an implementation of the serializer/deserializer. For example, to support Avro, the serialization logic could be quite involved since it might need to register the Avro schema in some remote registry and maintain a schema cache locally, etc. Without a serialization api, it's impossible to share such an implementation so that people can easily reuse.


---

* [KAFKA-1768](https://issues.apache.org/jira/browse/KAFKA-1768) | *Major* | **Expose version via JMX**

See Gwen's code snippet in http://search-hadoop.com/m/4TaT4xtk36/Programmatic+Kafka+version+detection%252Fextraction&subj=Programmatic+Kafka+version+detection+extraction+


---

* [KAFKA-1766](https://issues.apache.org/jira/browse/KAFKA-1766) | *Minor* | **Ecosystem docs subsection has wrong anchor**

the following portion of html at http://kafka.apache.org/documentation.html seems to be wrong:

\<h3\>\<a id="upgrade"\>1.4 Ecosystem\</a\>\</h3\>

it should be

\<h3\>\<a id="ecosystem"\>1.4 Ecosystem\</a\>\</h3\>

Why don't you have Kafka docs in github also? If you had it would be trivial to create a PR to fix this issue


---

* [KAFKA-1764](https://issues.apache.org/jira/browse/KAFKA-1764) | *Major* | **ZookeeperConsumerConnector could put multiple shutdownCommand to the same data chunk queue.**

In ZookeeperConsumerConnector shutdown(), we could potentially put multiple shutdownCommand into the same data chunk queue, provided the topics are sharing the same data chunk queue in topicThreadIdAndQueues.

From email thread to document:

In ZookeeperConsumerConnector shutdown(), we could potentially put
multiple shutdownCommand into the same data chunk queue, provided the
topics are sharing the same data chunk queue in topicThreadIdAndQueues.

In our case, we only have 1 consumer stream for all the topics, the data
chunk queue capacity is set to 1. The execution sequence causing problem is
as below:
1. ZookeeperConsumerConnector shutdown() is called, it tries to put
shutdownCommand for each queue in topicThreadIdAndQueues. Since we only
have 1 queue, multiple shutdownCommand will be put into the queue.
2. In sendShutdownToAllQueues(), between queue.clean() and
queue.put(shutdownCommand), consumer iterator receives the shutdownCommand
and put it back into the data chunk queue. After that,
ZookeeperConsumerConnector tries to put another shutdownCommand into the
data chunk queue but will block forever.

The thread stack trace is as below:
{code}
"Thread-23" #58 prio=5 os\_prio=0 tid=0x00007ff440004800 nid=0x40a waiting
on condition [0x00007ff4f0124000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  \<0x0000000680b96bf0\> (a
java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:175)
        at
java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2039)
        at
java.util.concurrent.LinkedBlockingQueue.put(LinkedBlockingQueue.java:350)
        at
kafka.consumer.ZookeeperConsumerConnector$$anonfun$sendShutdownToAllQueues$1.apply(ZookeeperConsumerConnector.scala:262)
        at
kafka.consumer.ZookeeperConsumerConnector$$anonfun$sendShutdownToAllQueues$1.apply(ZookeeperConsumerConnector.scala:259)
        at scala.collection.Iterator$class.foreach(Iterator.scala:727)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1157)
        at
scala.collection.IterableLike$class.foreach(IterableLike.scala:72)
        at scala.collection.AbstractIterable.foreach(Iterable.scala:54)
        at
kafka.consumer.ZookeeperConsumerConnector.sendShutdownToAllQueues(ZookeeperConsumerConnector.scala:259)
        at
kafka.consumer.ZookeeperConsumerConnector.liftedTree1$1(ZookeeperConsumerConnector.scala:199)
        at
kafka.consumer.ZookeeperConsumerConnector.shutdown(ZookeeperConsumerConnector.scala:192)
        - locked \<0x0000000680dd5848\> (a java.lang.Object)
        at
kafka.tools.MirrorMaker$$anonfun$cleanShutdown$1.apply(MirrorMaker.scala:185)
        at
kafka.tools.MirrorMaker$$anonfun$cleanShutdown$1.apply(MirrorMaker.scala:185)
        at scala.collection.immutable.List.foreach(List.scala:318)
        at kafka.tools.MirrorMaker$.cleanShutdown(MirrorMaker.scala:185)
{code}


---

* [KAFKA-1761](https://issues.apache.org/jira/browse/KAFKA-1761) | *Minor* | **num.partitions 	documented default is 1 while actual default is 2**

Default {{num.partitions}} documented in http://kafka.apache.org/08/configuration.html is 1, while server configuration defaults same parameter to 2 (see https://github.com/apache/kafka/blob/0.8.1/config/server.properties#L63 )

Please have this inconsistency fixed.


---

* [KAFKA-1743](https://issues.apache.org/jira/browse/KAFKA-1743) | *Blocker* | **ConsumerConnector.commitOffsets in 0.8.2 is not backward compatible**

In 0.8.1.x, ConsumerConnector has the following api:
  def commitOffsets

This is changed to the following in 0.8.2 and breaks compatibility

  def commitOffsets(retryOnFailure: Boolean = true)


---

* [KAFKA-1742](https://issues.apache.org/jira/browse/KAFKA-1742) | *Blocker* | **ControllerContext removeTopic does not correctly update state**

removeTopic does not correctly update the state of ControllerContext.

This is because it removes the topic from some underlying maps through dropWhile.


---

* [KAFKA-1738](https://issues.apache.org/jira/browse/KAFKA-1738) | *Blocker* | **Partitions for topic not created after restart from forced shutdown**

We are using Kafka Topic APIs to create the topic. But in some cases, the topic gets created but we don't see the partition specific files and when producer/consumer tries to get the topic metadata and it fails with exception. Same happens if one tries to create using the command line.

k.p.BrokerPartitionInfo - Error while fetching metadata [{TopicMetadata for topic tloader1 -\> No partition metadata for topic tloader1 due to kafka.common.UnknownTopicOrPartitionException}] for topic [tloader1]: class kafka.common.UnknownTopicOrPartitionException

Steps to reproduce - 

1.      Stop kafka using kill  -9 \<PID of Kafka\>
2.      Start Kafka
3.      Create Topic with partition and replication factor of 1.
4.      Check the response “Created topic \<topic\_name\>”
5.      Run the list command to verify if its created.
6.      Now check the data directory of kakfa. There would not be any for the newly created topic.


We see issues when we are creating new topics. This happens randomly and we dont know the exact reasons. We see the below logs in controller during the time of creation of topics which doesnt have the partition files.

2014-11-03 13:12:50,625] INFO [Controller 0]: New topic creation callback for [JobJTopic,0] (kafka.controller.KafkaController)
[2014-11-03 13:12:50,626] INFO [Controller 0]: New partition creation callback for [JobJTopic,0] (kafka.controller.KafkaController)
[2014-11-03 13:12:50,626] INFO [Partition state machine on Controller 0]: Invoking state change to NewPartition for partitions [JobJTopic,0] (kafka.controller.PartitionStateMachine)
[2014-11-03 13:12:50,653] INFO [Replica state machine on controller 0]: Invoking state change to NewReplica for replicas [Topic=JobJTopic,Partition=0,Replica=0] (kafka.controller.ReplicaStateMachine)
[2014-11-03 13:12:50,654] INFO [Partition state machine on Controller 0]: Invoking state change to OnlinePartition for partitions [JobJTopic,0] (kafka.controller.PartitionStateMachine)
[2014-11-03 13:12:50,654] DEBUG [Partition state machine on Controller 0]: Live assigned replicas for partition [JobJTopic,0] are: [List(0)] (kafka.controller.PartitionStateMachine)
[2014-11-03 13:12:50,654] DEBUG [Partition state machine on Controller 0]: Initializing leader and isr for partition [JobJTopic,0] to (Leader:0,ISR:0,LeaderEpoch:0,ControllerEpoch:2) (kafka.controller.PartitionStateMachine)
[2014-11-03 13:12:50,667] INFO [Replica state machine on controller 0]: Invoking state change to OnlineReplica for replicas [Topic=JobJTopic,Partition=0,Replica=0] (kafka.controller.ReplicaStateMachine)
[2014-11-03 13:12:50,794] WARN [Controller-0-to-broker-0-send-thread], Controller 0 fails to send a request to broker id:0,host:DMIPVM,port:9092 (kafka.controller.RequestSendThread)
java.io.EOFException: Received -1 when reading from channel, socket has likely been closed.
	at kafka.utils.Utils$.read(Utils.scala:381)
	at kafka.network.BoundedByteBufferReceive.readFrom(BoundedByteBufferReceive.scala:54)
	at kafka.network.Receive$class.readCompletely(Transmission.scala:56)
	at kafka.network.BoundedByteBufferReceive.readCompletely(BoundedByteBufferReceive.scala:29)
	at kafka.network.BlockingChannel.receive(BlockingChannel.scala:108)
	at kafka.controller.RequestSendThread.doWork(ControllerChannelManager.scala:146)
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:60)
[2014-11-03 13:12:50,965] ERROR [Controller-0-to-broker-0-send-thread], Controller 0 epoch 2 failed to send request Name:UpdateMetadataRequest;Version:0;Controller:0;ControllerEpoch:2;CorrelationId:43;ClientId:id\_0-host\_null-port\_9092;AliveBrokers:id:0,host:DMIPVM,port:9092;PartitionState:[JobJTopic,0] -\> (LeaderAndIsrInfo:(Leader:0,ISR:0,LeaderEpoch:0,ControllerEpoch:2),ReplicationFactor:1),AllReplicas:0) to broker id:0,host:DMIPVM,port:9092. Reconnecting to broker. (kafka.controller.RequestSendThread)
java.nio.channels.ClosedChannelException
	at kafka.network.BlockingChannel.send(BlockingChannel.scala:97)
	at kafka.controller.RequestSendThread.liftedTree1$1(ControllerChannelManager.scala:132)
	at kafka.controller.RequestSendThread.doWork(ControllerChannelManager.scala:131)
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:60)


---

* [KAFKA-1732](https://issues.apache.org/jira/browse/KAFKA-1732) | *Minor* | **DumpLogSegments tool fails when path has a '.'**

Using DumpLogSegments in a directory that has a '.' that isn't part of the file extension causes an exception:

{code}
16:48 $ time /Users/ewencp/kafka.git/bin/kafka-run-class.sh kafka.tools.DumpLogSegments  --file /Users/ewencp/kafka.git/system\_test/replication\_testsuite/testcase\_1/logs/broker-3/kafka\_server\_3\_logs/test\_1-1/00000000000000016895.index --verify-index-only
Dumping /Users/ewencp/kafka.git/system\_test/replication\_testsuite/testcase\_1/logs/broker-3/kafka\_server\_3\_logs/test\_1-1/00000000000000016895.index
Exception in thread "main" java.io.FileNotFoundException: /Users/ewencp/kafka.log (No such file or directory)
	at java.io.FileInputStream.open(Native Method)
	at java.io.FileInputStream.\<init\>(FileInputStream.java:146)
	at kafka.utils.Utils$.openChannel(Utils.scala:162)
	at kafka.log.FileMessageSet.\<init\>(FileMessageSet.scala:74)
	at kafka.tools.DumpLogSegments$.kafka$tools$DumpLogSegments$$dumpIndex(DumpLogSegments.scala:109)
	at kafka.tools.DumpLogSegments$$anonfun$main$1.apply(DumpLogSegments.scala:80)
	at kafka.tools.DumpLogSegments$$anonfun$main$1.apply(DumpLogSegments.scala:73)
	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:33)
	at scala.collection.mutable.ArrayOps$ofRef.foreach(ArrayOps.scala:105)
	at kafka.tools.DumpLogSegments$.main(DumpLogSegments.scala:73)
	at kafka.tools.DumpLogSegments.main(DumpLogSegments.scala)
{code}


---

* [KAFKA-1728](https://issues.apache.org/jira/browse/KAFKA-1728) | *Blocker* | **update 082 docs**

We need to update the docs for 082 release.

https://svn.apache.org/repos/asf/kafka/site/082

http://kafka.apache.org/082/documentation.html


---

* [KAFKA-1723](https://issues.apache.org/jira/browse/KAFKA-1723) | *Blocker* | **make the metrics name in new producer more standard**

The jmx name in the new producer looks like the following:
kafka.producer.myclientid:type=mytopic

However, this can be ambiguous since we allow "." in client id and topic.


---

* [KAFKA-1721](https://issues.apache.org/jira/browse/KAFKA-1721) | *Major* | **Snappy compressor is not thread safe**

From the mailing list, it can generate this exception:

2014-10-20 18:55:21.841 [kafka-producer-network-thread] ERROR
org.apache.kafka.clients.producer.internals.Sender - Uncaught error in
kafka producer I/O thread:
\*java.lang.NullPointerException\*
at
org.xerial.snappy.BufferRecycler.releaseInputBuffer(BufferRecycler.java:153)
at org.xerial.snappy.SnappyOutputStream.close(SnappyOutputStream.java:317)
at java.io.FilterOutputStream.close(FilterOutputStream.java:160)
at org.apache.kafka.common.record.Compressor.close(Compressor.java:94)
at
org.apache.kafka.common.record.MemoryRecords.close(MemoryRecords.java:119)
at
org.apache.kafka.clients.producer.internals.RecordAccumulator.drain(RecordAccumulator.java:285)
at org.apache.kafka.clients.producer.internals.Sender.run(Sender.java:162)
at org.apache.kafka.clients.producer.internals.Sender.run(Sender.java:115)
at java.lang.Thread.run(Thread.java:744)

This appears to be an issue with the snappy-java library using ThreadLocal for an internal buffer recycling object which results in that object being shared unsafely across threads if one thread sends to multiple producers:

{quote}
I think the issue is that you're
using all your producers across a thread pool and the snappy library
uses ThreadLocal BufferRecyclers. When new Snappy streams are allocated,
they may be allocated from the same thread (e.g. one of your MyProducer
classes calls Producer.send() on multiple producers from the same
thread) and therefore use the same BufferRecycler. Eventually you hit
the code in the stacktrace, and if two producer send threads hit it
concurrently they improperly share the unsynchronized BufferRecycler.

This seems like a pain to fix -- it's really a deficiency of the snappy
library and as far as I can see there's no external control over
BufferRecycler in their API. One possibility is to record the thread ID
when we generate a new stream in Compressor and use that to synchronize
access to ensure no concurrent BufferRecycler access. That could be made
specific to snappy so it wouldn't impact other codecs. Not exactly
ideal, but it would work. Unfortunately I can't think of any way for you
to protect against this in your own code since the problem arises in the
producer send thread, which your code should never know about.

Another option would be to setup your producers differently to avoid the
possibility of unsynchronized access from multiple threads (i.e. don't
use the same thread pool approach), but whether you can do that will
depend on your use case.
{quote}


---

* [KAFKA-1719](https://issues.apache.org/jira/browse/KAFKA-1719) | *Major* | **Make mirror maker exit when one consumer/producer thread exits.**

When one of the consumer/producer thread exits, the entire mirror maker will be blocked. In this case, it is better to make it exit. It seems a single ZookeeperConsumerConnector is sufficient for mirror maker, probably we don't need a list for the connectors.


---

* [KAFKA-1717](https://issues.apache.org/jira/browse/KAFKA-1717) | *Blocker* | **remove netty dependency through ZK 3.4.x**

ZK 3.4.x specifies a dependency on netty. However, that dependency is optional (ZOOKEEPER-1681). To avoid potential jar conflict, it's better to exclude netty dependency from Kafka.


---

* [KAFKA-1706](https://issues.apache.org/jira/browse/KAFKA-1706) | *Major* | **Adding a byte bounded blocking queue to util.**

We saw many out of memory issues in Mirror Maker. To enhance memory management we want to introduce a ByteBoundedBlockingQueue that has limit on both number of messages and number of bytes in it.


---

* [KAFKA-1699](https://issues.apache.org/jira/browse/KAFKA-1699) | *Major* | **autoRebalanceScheduler.shutdown() causes deadlock while controller shutting down**

when a controller shutdown starts with auto.leader.rebalance.enable set to true. Controller shutdown completes whille the process waits on autoRebalanceScheduler.shutdown().


---

* [KAFKA-1692](https://issues.apache.org/jira/browse/KAFKA-1692) | *Trivial* | **[Java New Producer]  IO Thread Name Must include  Client ID**

Please add client id so people who are looking at Jconsole or Profile tool can see Thread by client id since single JVM can have multiple producer instance.  

org.apache.kafka.clients.producer.KafkaProducer
{code}
String ioThreadName = "kafka-producer-network-thread";
 if(clientId != null){
        	ioThreadName = ioThreadName  + " \| "+clientId; 
        }        
        this.ioThread = new KafkaThread(ioThreadName, this.sender, true);
{code}


---

* [KAFKA-1681](https://issues.apache.org/jira/browse/KAFKA-1681) | *Blocker* | **Newly elected KafkaController might not start deletion of pending topics**

As part of KAFKA-1663 deleteTopicStateChanged.set(true) is removed from start(). This will cause newly elected kafka controller not to process the existing delete topic requests.


---

* [KAFKA-1671](https://issues.apache.org/jira/browse/KAFKA-1671) | *Blocker* | **uploaded archives are missing for Scala version 2.11**

https://repository.apache.org/content/groups/staging/org/apache/kafka/


---

* [KAFKA-1670](https://issues.apache.org/jira/browse/KAFKA-1670) | *Blocker* | **Corrupt log files for segment.bytes values close to Int.MaxInt**

The maximum value for the topic-level config {{segment.bytes}} is {{Int.MaxInt}} (2147483647). \*Using this value causes brokers to corrupt their log files, leaving them unreadable.\*

We set {{segment.bytes}} to {{2122317824}} which is well below the maximum. One by one, the ISR of all partitions shrunk to 1. Brokers would crash when restarted, attempting to read from a negative offset in a log file. After discovering that many segment files had grown to 4GB or more, we were forced to shut down our \*entire production Kafka cluster\* for several hours while we split all segment files into 1GB chunks.

Looking into the {{kafka.log}} code, the {{segment.bytes}} parameter is used inconsistently. It is treated as a \*soft\* maximum for the size of the segment file (https://github.com/apache/kafka/blob/0.8.1.1/core/src/main/scala/kafka/log/LogConfig.scala#L26) with logs rolled only after (https://github.com/apache/kafka/blob/0.8.1.1/core/src/main/scala/kafka/log/Log.scala#L246) they exceed this value. However, much of the code that deals with log files uses \*ints\* to store the size of the file and the position in the file. Overflow of these ints leads the broker to append to the segments indefinitely, and to fail to read these segments for consuming or recovery.

This is trivial to reproduce:

{code}
$ bin/kafka-topics.sh --topic segment-bytes-test --create --replication-factor 2 --partitions 1 --zookeeper zkhost:2181
$ bin/kafka-topics.sh --topic segment-bytes-test --alter --config segment.bytes=2147483647 --zookeeper zkhost:2181
$ yes "Int.MaxValue is a ridiculous bound on file size in 2014" \| bin/kafka-console-producer.sh --broker-list localhost:6667 zkhost:2181 --topic segment-bytes-test
{code}

After running for a few minutes, the log file is corrupt:

{code}
$ ls -lh data/segment-bytes-test-0/
total 9.7G
-rw-r--r-- 1 root root  10M Oct  3 19:39 00000000000000000000.index
-rw-r--r-- 1 root root 9.7G Oct  3 19:39 00000000000000000000.log
{code}

We recovered the data from the log files using a simple Python script: https://gist.github.com/also/9f823d9eb9dc0a410796


---

* [KAFKA-1663](https://issues.apache.org/jira/browse/KAFKA-1663) | *Blocker* | **Controller unable to shutdown after a soft failure**

As part of testing KAFKA-1558 I came across a case where inducing soft failure in the current controller elects a new controller  but the old controller doesn't shutdown properly.
steps to reproduce
1) 5 broker cluster
2) high number of topics(I tested it with 1000 topics)
3) on the current controller do kill -SIGSTOP  pid( broker's process id)
4) wait for bit over zookeeper timeout (server.properties)
5) kill -SIGCONT pid
6) There will be a new controller elected. check old controller's
log 
[2014-09-30 15:59:53,398] INFO [SessionExpirationListener on 1], ZK expired; shut down all controller components and try to re-elect (kafka.controller.KafkaController$SessionExpirationListener)
[2014-09-30 15:59:53,400] INFO [delete-topics-thread-1], Shutting down (kafka.controller.TopicDeletionManager$DeleteTopicsThread)

If it stops there and the broker  logs keeps printing 
Cached zkVersion [0] not equal to that in zookeeper, skip updating ISR (kafka.cluster.Partition)
than the controller shutdown never completes.


---

* [KAFKA-1662](https://issues.apache.org/jira/browse/KAFKA-1662) | *Blocker* | **gradle release issue permgen space**

Finding issues doing the kafka release with permgen space

./gradlew releaseTarGzAll

ant:scaladoc] java.lang.OutOfMemoryError: PermGen space
:kafka-0.8.2-ALPHA1-src:core:scaladoc FAILED
:releaseTarGz\_2\_10\_1 FAILED

FAILURE: Build failed with an exception.

\* What went wrong:
Execution failed for task ':core:scaladoc'.
\> PermGen space

\* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

BUILD FAILED

Total time: 5 mins 55.53 secs

FAILURE: Build failed with an exception.

\* What went wrong:
PermGen space


---

* [KAFKA-1653](https://issues.apache.org/jira/browse/KAFKA-1653) | *Major* | **Duplicate broker ids allowed in replica assignment**

The reassign partitions command and the controller do not ensure that all replicas for a partition are on different brokers. For example, you could set 1,2,2 as the list of brokers for the replicas.

kafka-topics.sh --describe --under-replicated will list these partitions as under-replicated, but I can't see a reason why the controller should allow this state.


---

* [KAFKA-1647](https://issues.apache.org/jira/browse/KAFKA-1647) | *Critical* | **Replication offset checkpoints (high water marks) can be lost on hard kills and restarts**

We ran into this scenario recently in a production environment. This can happen when enough brokers in a cluster are taken down. i.e., a rolling bounce done properly should not cause this issue. It can occur if all replicas for any partition are taken down.

Here is a sample scenario:

\* Cluster of three brokers: b0, b1, b2
\* Two partitions (of some topic) with replication factor two: p0, p1
\* Initial state:
p0: leader = b0, ISR = {b0, b1}
p1: leader = b1, ISR = {b0, b1}
\* Do a parallel hard-kill of all brokers
\* Bring up b2, so it is the new controller
\* b2 initializes its controller context and populates its leader/ISR cache (i.e., controllerContext.partitionLeadershipInfo) from zookeeper. The last known leaders are b0 (for p0) and b1 (for p2)
\* Bring up b1
\* The controller's onBrokerStartup procedure initiates a replica state change for all replicas on b1 to become online. As part of this replica state change it gets the last known leader and ISR and sends a LeaderAndIsrRequest to b1 (for p1 and p2). This LeaderAndIsr request contains: {{p0: leader=b0; p1: leader=b1;} leaders=b1}. b0 is indicated as the leader of p0 but it is not included in the leaders field because b0 is down.
\* On receiving the LeaderAndIsrRequest, b1's replica manager will successfully make itself (b1) the leader for p1 (and create the local replica object corresponding to p1). It will however abort the become follower transition for p0 because the designated leader b0 is offline. So it will not create the local replica object for p0.
\* It will then start the high water mark checkpoint thread. Since only p1 has a local replica object, only p1's high water mark will be checkpointed to disk. p0's previously written checkpoint  if any will be lost.

So in summary it seems we should always create the local replica object even if the online transition does not happen.

Possible symptoms of the above bug could be one or more of the following (we saw 2 and 3):
# Data loss; yes on a hard-kill data loss is expected, but this can actually cause loss of nearly all data if the broker becomes follower, truncates, and soon after happens to become leader.
# High IO on brokers that lose their high water mark then subsequently (on a successful become follower transition) truncate their log to zero and start catching up from the beginning.
# If the offsets topic is affected, then offsets can get reset. This is because during an offset load we don't read past the high water mark. So if a water mark is missing then we don't load anything (even if the offsets are there in the log).


---

* [KAFKA-1645](https://issues.apache.org/jira/browse/KAFKA-1645) | *Blocker* | **some more jars in our src release**

The first one is being taken care of in KAFKA-1490 

the rest... can we just delete them? Do we need/want them anymore? 

{code}

root@precise64:~/kafka-0.8.1.1-src# find ./ -name \*jar
./gradle/wrapper/gradle-wrapper.jar
./lib/apache-rat-0.8.jar
./system\_test/migration\_tool\_testsuite/0.7/lib/kafka-0.7.0.jar
./system\_test/migration\_tool\_testsuite/0.7/lib/kafka-perf-0.7.0.jar
./system\_test/migration\_tool\_testsuite/0.7/lib/zkclient-0.1.jar
./contrib/hadoop-consumer/lib/piggybank.jar
./contrib/hadoop-producer/lib/piggybank.jar

{code}

rat is not required in the project I can speak for that file +1 to remove it

I don't see why we have to keep the other ones nor what code changes we have to make for getting rid of them.


---

* [KAFKA-1644](https://issues.apache.org/jira/browse/KAFKA-1644) | *Major* | **Inherit FetchResponse from RequestOrResponse**

Unlike all other Kafka API responses {{FetchResponse}} is not a subclass of RequestOrResponse, which requires handling it as a special case while processing responses.


---

* [KAFKA-1642](https://issues.apache.org/jira/browse/KAFKA-1642) | *Blocker* | **[Java New Producer Kafka Trunk] CPU Usage Spike to 100% when network connection is lost**

I see my CPU spike to 100% when network connection is lost for while.  It seems network  IO thread are very busy logging following error message.  Is this expected behavior ?
2014-09-17 14:06:16.830 [kafka-producer-network-thread] ERROR org.apache.kafka.clients.producer.internals.Sender - Uncaught error in kafka producer I/O thread: 

java.lang.IllegalStateException: No entry found for node -2

at org.apache.kafka.clients.ClusterConnectionStates.nodeState(ClusterConnectionStates.java:110)

at org.apache.kafka.clients.ClusterConnectionStates.disconnected(ClusterConnectionStates.java:99)

at org.apache.kafka.clients.NetworkClient.initiateConnect(NetworkClient.java:394)

at org.apache.kafka.clients.NetworkClient.maybeUpdateMetadata(NetworkClient.java:380)

at org.apache.kafka.clients.NetworkClient.poll(NetworkClient.java:174)

at org.apache.kafka.clients.producer.internals.Sender.run(Sender.java:175)

at org.apache.kafka.clients.producer.internals.Sender.run(Sender.java:115)

at java.lang.Thread.run(Thread.java:744)

Thanks,

Bhavesh


---

* [KAFKA-1637](https://issues.apache.org/jira/browse/KAFKA-1637) | *Major* | **SimpleConsumer.fetchOffset returns wrong error code when no offset exists for topic/partition/consumer group**

This concerns Kafka's Offset  Fetch API:

According to Kafka's current documentation, "if there is no offset associated with a topic-partition under that consumer group the broker does not set an error code (since it is not really an error), but returns empty metadata and sets the offset field to -1."  (Link below)

However, in Kafka 08.1.1 Error code '3' is returned, which effectively makes it impossible for the client to decide if there was an error, or if there is no offset associated with a topic-partition under that consumer group.


https://cwiki.apache.org/confluence/display/KAFKA/A+Guide+To+The+Kafka+Protocol#AGuideToTheKafkaProtocol-MetadataAPI


---

* [KAFKA-1635](https://issues.apache.org/jira/browse/KAFKA-1635) | *Trivial* | **Java doc of makeLeaders in ReplicaManager is wrong**

ReplicaManager have an incorrect java doc. The overview of function  makeLeaders() is the same as makeFollowers().
Also see commit at https://github.com/apache/kafka/commit/6739a8e601331ad07d9856dc351785351755a5d5


---

* [KAFKA-1624](https://issues.apache.org/jira/browse/KAFKA-1624) | *Major* | **bump up default scala version to 2.10.4 to compile with java 8**

{code}

Java HotSpot(TM) 64-Bit Server VM warning: ignoring option MaxPermSize=512m; support was removed in 8.0
error: error while loading CharSequence, class file '/usr/lib/jvm/java-8-oracle/jre/lib/rt.jar(java/lang/CharSequence.class)' is broken
(class java.lang.RuntimeException/bad constant pool tag 18 at byte 10)
error: error while loading Comparator, class file '/usr/lib/jvm/java-8-oracle/jre/lib/rt.jar(java/util/Comparator.class)' is broken
(class java.lang.RuntimeException/bad constant pool tag 18 at byte 20)
error: error while loading AnnotatedElement, class file '/usr/lib/jvm/java-8-oracle/jre/lib/rt.jar(java/lang/reflect/AnnotatedElement.class)' is broken
(class java.lang.RuntimeException/bad constant pool tag 18 at byte 76)
error: error while loading Arrays, class file '/usr/lib/jvm/java-8-oracle/jre/lib/rt.jar(java/util/Arrays.class)' is broken
(class java.lang.RuntimeException/bad constant pool tag 18 at byte 765)
/tmp/sbt\_53783b12/xsbt/ExtractAPI.scala:395: error: java.util.Comparator does not take type parameters
	private[this] val sortClasses = new Comparator[Symbol] {
                                            ^
5 errors found
:core:compileScala FAILED

FAILURE: Build failed with an exception.

\* What went wrong:
Execution failed for task ':core:compileScala'.
\> org.gradle.messaging.remote.internal.PlaceholderException (no error message)

\* Try:
Run with --stacktrace option to get the stack trace. Run with --info or --debug option to get more log output.

BUILD FAILED

Total time: 1 mins 48.298 secs
{code}


---

* [KAFKA-1622](https://issues.apache.org/jira/browse/KAFKA-1622) | *Blocker* | **project shouldn't require signing to build**

we only need signing for uploadArchives that is it

The project trunk failed to build due to some signing/license checks (the diff I used to get things to build is here: https://gist.github.com/dehora/7e3c0bd75bb2b5d87557)


---

* [KAFKA-1620](https://issues.apache.org/jira/browse/KAFKA-1620) | *Major* | **Make kafka api protocol implementation public**

Some of the classes which implement Kafka api protocol, such as {{RequestOrResponse}} and {{FetchRequest}} are defined as private to {{kafka}} package. Those classes would be extremely usefull for writing custom clients (we're using Scala with Akka and implementing one directly on top of Akka TCP), and don't seem to contain any actuall internal logic of Kafka. Therefore it seems like a nice idea to make them public.


---

* [KAFKA-1619](https://issues.apache.org/jira/browse/KAFKA-1619) | *Major* | **perf dir can be removed**

There is no code in perf/ any more. We can also remove the perf target in build.gradle.


---

* [KAFKA-1618](https://issues.apache.org/jira/browse/KAFKA-1618) | *Blocker* | **Exception thrown when running console producer with no port number for the broker**

When running console producer with just "localhost" as the broker list, I get ArrayIndexOutOfBounds exception.

I expect either a clearer error about arguments or for the producer to "guess" a default port.

[root@shapira-1 bin]# ./kafka-console-producer.sh  --topic rufus1 --broker-list localhost
java.lang.ArrayIndexOutOfBoundsException: 1
	at kafka.client.ClientUtils$$anonfun$parseBrokerList$1.apply(ClientUtils.scala:102)
	at kafka.client.ClientUtils$$anonfun$parseBrokerList$1.apply(ClientUtils.scala:97)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:59)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:47)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
	at scala.collection.AbstractTraversable.map(Traversable.scala:105)
	at kafka.client.ClientUtils$.parseBrokerList(ClientUtils.scala:97)
	at kafka.producer.BrokerPartitionInfo.\<init\>(BrokerPartitionInfo.scala:32)
	at kafka.producer.async.DefaultEventHandler.\<init\>(DefaultEventHandler.scala:41)
	at kafka.producer.Producer.\<init\>(Producer.scala:59)
	at kafka.producer.ConsoleProducer$.main(ConsoleProducer.scala:158)
	at kafka.producer.ConsoleProducer.main(ConsoleProducer.scala)


---

* [KAFKA-1616](https://issues.apache.org/jira/browse/KAFKA-1616) | *Major* | **Purgatory Size and Num.Delayed.Request metrics are incorrect**

The request purgatory used two atomic integers "watched" and "unsatisfied" to record the purgatory size ( = watched + unsatisfied) and number of delayed requests ( = unsatisfied). But due to some race conditions these two atomic integers are not updated correctly, result in incorrect metrics.

Proposed solution: to have a cleaner semantics, we can define the "purgatory size" to be just the number of elements in the watched lists, and the "number of delayed requests" to be just the length of the expiry queue. And instead of using two atomic integeres we just compute the size of the lists / queue on the fly each time the metrics are pulled. This may use some more CPU cycles for these two metrics but should be minor, and the correctness is guaranteed.


---

* [KAFKA-1611](https://issues.apache.org/jira/browse/KAFKA-1611) | *Major* | **Improve system test configuration**

I'd like to make the config a bit more "out of the box" for the common case of local cluster. This will include:

1. Fix cluster\_config.json of migration testsuite, it has hardcoded path that prevents it from working out of the box at all. 

2. Use JAVA\_HOME environment variable if "default" is specified and if JAVA\_HOME is defined. The current guessing method is a bit broken and using JAVA\_HOME will allow devs to configure their default java dir without editing multiple cluster\_config.json files in multiple places. 

3. (if feasible without too much headache): Configure remote hosts only for test packages that will not be skipped. This will reduce some overhead in the common use cases.


---

* [KAFKA-1609](https://issues.apache.org/jira/browse/KAFKA-1609) | *Major* | **New producer metadata response handling should only exclude a PartitionInfo when its error is LEADER\_NOT\_AVAILABLE**

The new producer is not able to produce data when it sees ReplicaNotAvailable error, even when the leader of the replica is still available. 

This behavior is different from old producer, which says "any other error code (e.g. ReplicaNotAvailable) can be ignored since the producer does not need to access the replica and isr metadata".

To reproduce the error:
1) Start 4 brokers
2) Create a topic of 1 partition using a replication factor of 3.
3) Start producerPerformance with new producer
4) Kill the leader of the topic/partition
5) Kill the new leader of the topic/partition
6) Observe that the producerPerformance stops producing data.


---

* [KAFKA-1600](https://issues.apache.org/jira/browse/KAFKA-1600) | *Blocker* | **Controller failover not working correctly.**

We are running a 10 node Kafka 0.8.1 cluster and experienced a failure as following. 
At some time, broker A stopped acting as controller any more. We see this by kafka.controller - KafkaController - ActiveControllerCount in JMX metrics jumped from 1 to 0.
In the meanwhile, broker A was still running and registering itself in the zookeeper /kafka/controller node. So no other brokers could be elected as new controller.
Since that the cluster was running without controller. Producers and consumers still worked. But functions requiring a controller such as new topic leader election and topic leader failover were not working any more.
A force restart of broker A could lead to a controller election and bring the cluster back to a correct state.
Here is our brief observations. I can provide more necessary informations if needed.


---

* [KAFKA-1598](https://issues.apache.org/jira/browse/KAFKA-1598) | *Trivial* | **Fix variable typo in Kafka main class**

I guess that this one is super-nit, but I've noticed that the name {{kafkaServerStartble}} is miss-spelled in the main {{Kafka.scala}} file.


---

* [KAFKA-1597](https://issues.apache.org/jira/browse/KAFKA-1597) | *Minor* | **New metrics: ResponseQueueSize and BeingSentResponses**

This patch adds two metrics:

h3. ResponseQueueSize
As of 0.8.1, the sizes of the response queues are [reported as different metrics\|https://github.com/apache/kafka/blob/0.8.1/core/src/main/scala/kafka/network/RequestChannel.scala#L127-L134] - one per processor thread. This is not very ideal for different reasons:
\* charts have to sum the different metrics
\* the metrics collection system might not support 'wild card queries' like {{sum:kafka.network.RequestChannel.Processor\_\*\_ResponseQueueSize}} in which case monitoring now depends on the number of configured network threads
\* monitoring the response by thread is not very valuable. However the global number of responses is useful.

\* proposal\*
So this patch exposes the total number of queued responses as a metric {{ResponseQueueSize}}

\*implementation\*
In {{RequestChannel}}, create a Gauge that adds up the size of the response queues.


h3. BeingSentResponses
As of 0.8.1, the processor threads will poll responses from the queues and attach them to the SelectionKey as fast as possible. The consequence of that is that the response queues are not a good indicator of the number of "in-flight" responses. The {{ServerSocketChannel}} acting as another queue of response to be sent.
The current metrics don't reflect the size of this "buffer", which is an issue.

\*proposal\*
This patch adds a gauge that keeps track of the number of responses being handled by the {{ServerSocketChannel}}.
That new metric is named "BeingSentResponses" (who said naming was hard?)

\*implementation\*
To calculate that metric, the patch adds up the number of SelectionKeys interested in writing, across processor threads.

Another approach could be to keep all in-flight responses in a data structure (let's say a map) shared by the processor threads. A response will be added to that map when dequeued from the response queue, and removed when the write is complete. The gauge will simply report the size of that map. I decided against that second approach as it is more intrusive and requires some additional bookkeeping to gather information already available through the {{SelectionKey}}'s


---

* [KAFKA-1585](https://issues.apache.org/jira/browse/KAFKA-1585) | *Critical* | **Client: Infinite "conflict in /consumers/"**

Periodically we have kafka consumers cycling in "conflict in /consumers/" and "I wrote this conflicted ephemeral node". 
Please see attached log extract.
After restarting the process kafka consumers are working perfectly. 

We are using Zookeeper 3.4.5


---

* [KAFKA-1580](https://issues.apache.org/jira/browse/KAFKA-1580) | *Critical* | **Reject producer requests to internal topics**

Producer requests to internal topics (currently only \_\_consumer\_offset) can be disastrous.

E.g., if we allow a message to be appended to the offsets topic this could lead to fatal exceptions when loading the offsets topic and when compacting the log.

Producer requests to these topics should be rejected.


---

* [KAFKA-1578](https://issues.apache.org/jira/browse/KAFKA-1578) | *Major* | **Controller should de-register all listeners upon designation**

Today in KafkaController.onControllerResignation all the admin path listeners are not de-registered. This will cause multiple controllers listening on the same admin paths, and the fake controllers, upon failing to finish the admin commands, will also delete the admin zk path incorrectly.


---

* [KAFKA-1577](https://issues.apache.org/jira/browse/KAFKA-1577) | *Blocker* | **Exception in ConnectionQuotas while shutting down**

{code}
[2014-08-07 19:38:08,228] ERROR Uncaught exception in thread 'kafka-network-thread-9092-0': (kafka.utils.Utils$)
java.util.NoSuchElementException: None.get
        at scala.None$.get(Option.scala:185)
        at scala.None$.get(Option.scala:183)
        at kafka.network.ConnectionQuotas.dec(SocketServer.scala:471)
        at kafka.network.AbstractServerThread.close(SocketServer.scala:158)
        at kafka.network.AbstractServerThread.close(SocketServer.scala:150)
        at kafka.network.AbstractServerThread.closeAll(SocketServer.scala:171)
        at kafka.network.Processor.run(SocketServer.scala:338)
        at java.lang.Thread.run(Thread.java:662)
{code}


---

* [KAFKA-1576](https://issues.apache.org/jira/browse/KAFKA-1576) | *Major* | **Make "deleteTopic" a bit more user friendly**

Current implementation of deleteTopic has few usability issues:

1. Successful deleteTopic doesn't give the user any feedback that anything happened
2. Attempting to delete a topic twice leads to a "node exists" exception from zkclient. We should catch this and send "Topic is being deleted" error to the user.
3. Listing topics may show deleted topics (while the brokers are still cleaning up), it will be nice to mark them as deleted.


---

* [KAFKA-1574](https://issues.apache.org/jira/browse/KAFKA-1574) | *Major* | **unit tests can hang on socketserver shutdown**

Saw the following stacktrace.

"kafka-network-thread-59843-2" prio=5 tid=7fc7e5943800 nid=0x11eefa000 runnable [11eef9000]
   java.lang.Thread.State: RUNNABLE
        at sun.nio.ch.KQueueArrayWrapper.kevent0(Native Method)
        at sun.nio.ch.KQueueArrayWrapper.poll(KQueueArrayWrapper.java:136)
        at sun.nio.ch.KQueueSelectorImpl.doSelect(KQueueSelectorImpl.java:69)
        at sun.nio.ch.SelectorImpl.lockAndDoSelect(SelectorImpl.java:69)
        - locked \<7f4a80328\> (a sun.nio.ch.Util$2)
        - locked \<7f4a80310\> (a java.util.Collections$UnmodifiableSet)
        - locked \<7f4a71968\> (a sun.nio.ch.KQueueSelectorImpl)
        at sun.nio.ch.SelectorImpl.select(SelectorImpl.java:80)
        at kafka.network.Processor.run(SocketServer.scala:296)
        at java.lang.Thread.run(Thread.java:695)

"Test worker" prio=5 tid=7fc7e50d4800 nid=0x11534c000 waiting on condition [115349000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  \<7f4a69d50\> (a java.util.concurrent.CountDownLatch$Sync)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.doAcquireSharedInterruptibly(AbstractQueuedSynchronizer.java:969)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly(AbstractQueuedSynchronizer.java:1281)
        at java.util.concurrent.CountDownLatch.await(CountDownLatch.java:207)
        at kafka.network.AbstractServerThread.shutdown(SocketServer.scala:113)
        at kafka.network.SocketServer$$anonfun$shutdown$2.apply(SocketServer.scala:92)
        at kafka.network.SocketServer$$anonfun$shutdown$2.apply(SocketServer.scala:91)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:34)
        at scala.collection.mutable.ArrayOps.foreach(ArrayOps.scala:34)
        at kafka.network.SocketServer.shutdown(SocketServer.scala:91)
        at kafka.server.KafkaServer$$anonfun$shutdown$3.apply$mcV$sp(KafkaServer.scala:246)
        at kafka.utils.Utils$.swallow(Utils.scala:172)
        at kafka.utils.Logging$class.swallowWarn(Logging.scala:92)
        at kafka.utils.Utils$.swallowWarn(Utils.scala:45)
        at kafka.utils.Logging$class.swallow(Logging.scala:94)
        at kafka.utils.Utils$.swallow(Utils.scala:45)
        at kafka.server.KafkaServer.shutdown(KafkaServer.scala:246)
        at kafka.admin.AdminTest$$anonfun$testPartitionReassignmentNonOverlappingReplicas$3.apply(AdminTest.scala:232)
        at kafka.admin.AdminTest$$anonfun$testPartitionReassignmentNonOverlappingReplicas$3.apply(AdminTest.scala:232)


---

* [KAFKA-1571](https://issues.apache.org/jira/browse/KAFKA-1571) | *Major* | **MetadataeTest hangs**

Saw the following stacktrace. 

"Thread-47" prio=10 tid=0x00007fb5b00a5000 nid=0x25de in Object.wait() [0x00007fb5af9f8000]
   java.lang.Thread.State: TIMED\_WAITING (on object monitor)
        at java.lang.Object.wait(Native Method)
        - waiting on \<0x00000006b0925e40\> (a org.apache.kafka.clients.producer.internals.Metadata)
        at org.apache.kafka.clients.producer.internals.Metadata.awaitUpdate(Metadata.java:107)
        - locked \<0x00000006b0925e40\> (a org.apache.kafka.clients.producer.internals.Metadata)
        at org.apache.kafka.clients.producer.MetadataTest$1.run(MetadataTest.java:57)

"Thread-46" prio=10 tid=0x00007fb5b00a3800 nid=0x25dd in Object.wait() [0x00007fb5afbfa000]
   java.lang.Thread.State: TIMED\_WAITING (on object monitor)
        at java.lang.Object.wait(Native Method)
        - waiting on \<0x00000006b0925e40\> (a org.apache.kafka.clients.producer.internals.Metadata)
        at org.apache.kafka.clients.producer.internals.Metadata.awaitUpdate(Metadata.java:107)
        - locked \<0x00000006b0925e40\> (a org.apache.kafka.clients.producer.internals.Metadata)
        at org.apache.kafka.clients.producer.MetadataTest$1.run(MetadataTest.java:57)

"Test worker" prio=10 tid=0x00007fb610891000 nid=0x25b1 in Object.wait() [0x00007fb5d4a5f000]
   java.lang.Thread.State: WAITING (on object monitor)
        at java.lang.Object.wait(Native Method)
        - waiting on \<0x00000006b0926700\> (a org.apache.kafka.clients.producer.MetadataTest$1)
        at java.lang.Thread.join(Thread.java:1186)
        - locked \<0x00000006b0926700\> (a org.apache.kafka.clients.producer.MetadataTest$1)
        at java.lang.Thread.join(Thread.java:1239)
        at org.apache.kafka.clients.producer.MetadataTest.testMetadata(MetadataTest.java:46)


---

* [KAFKA-1567](https://issues.apache.org/jira/browse/KAFKA-1567) | *Major* | **Metric memory leaking after closing the clients**

When consumers or producers shut down, the metrics they registered in yammer registry is not deleted which causes memory leak.


---

* [KAFKA-1562](https://issues.apache.org/jira/browse/KAFKA-1562) | *Major* | **kafka-topics.sh alter add partitions resets cleanup.policy**

When partitions are added to an already existing topic the cleanup.policy=compact is not retained.

{code}
./kafka-topics.sh --zookeeper localhost --create --partitions 1 --replication-factor 1 --topic KTEST --config cleanup.policy=compact

./kafka-topics.sh --zookeeper localhost --describe --topic KTEST
Topic:KTEST	PartitionCount:1	ReplicationFactor:1	Configs:cleanup.policy=compact
	Topic: KTEST	Partition: 0	Leader: 0	Replicas: 0	Isr: 0

./kafka-topics.sh --zookeeper localhost --alter --partitions 3 --topic KTEST --config cleanup.policy=compact

 ./kafka-topics.sh --zookeeper localhost --describe --topic KTEST
Topic:KTEST	PartitionCount:3	ReplicationFactor:1	Configs:
	Topic: KTEST	Partition: 0	Leader: 0	Replicas: 0	Isr: 0
	Topic: KTEST	Partition: 1	Leader: 0	Replicas: 0	Isr: 0
	Topic: KTEST	Partition: 2	Leader: 0	Replicas: 0	Isr: 0
{code}


---

* [KAFKA-1558](https://issues.apache.org/jira/browse/KAFKA-1558) | *Blocker* | **AdminUtils.deleteTopic does not work**

the AdminUtils:.deleteTopic method is implemented as

{code}
    def deleteTopic(zkClient: ZkClient, topic: String) {
        ZkUtils.createPersistentPath(zkClient, ZkUtils.getDeleteTopicPath(topic))
    }
{code}

but the DeleteTopicCommand actually does

{code}
    zkClient = new ZkClient(zkConnect, 30000, 30000, ZKStringSerializer)
    zkClient.deleteRecursive(ZkUtils.getTopicPath(topic))
{code}

so I guess, that the 'createPersistentPath' above should actually be 


{code}
    def deleteTopic(zkClient: ZkClient, topic: String) {
        ZkUtils.deletePathRecursive(zkClient, ZkUtils.getTopicPath(topic))
    }
{code}


---

* [KAFKA-1555](https://issues.apache.org/jira/browse/KAFKA-1555) | *Major* | **provide strong consistency with reasonable availability**

In a mission critical application, we expect a kafka cluster with 3 brokers can satisfy two requirements:
1. When 1 broker is down, no message loss or service blocking happens.
2. In worse cases such as two brokers are down, service can be blocked, but no message loss happens.

We found that current kafka versoin (0.8.1.1) cannot achieve the requirements due to its three behaviors:
1. when choosing a new leader from 2 followers in ISR, the one with less messages may be chosen as the leader.
2. even when replica.lag.max.messages=0, a follower can stay in ISR when it has less messages than the leader.
3. ISR can contains only 1 broker, therefore acknowledged messages may be stored in only 1 broker.

The following is an analytical proof. 
We consider a cluster with 3 brokers and a topic with 3 replicas, and assume that at the beginning, all 3 replicas, leader A, followers B and C, are in sync, i.e., they have the same messages and are all in ISR.
According to the value of request.required.acks (acks for short), there are the following cases.
1. acks=0, 1, 3. Obviously these settings do not satisfy the requirement.
2. acks=2. Producer sends a message m. It's acknowledged by A and B. At this time, although C hasn't received m, C is still in ISR. If A is killed, C can be elected as the new leader, and consumers will miss m.
3. acks=-1. B and C restart and are removed from ISR. Producer sends a message m to A, and receives an acknowledgement. Disk failure happens in A before B and C replicate m. Message m is lost.

In summary, any existing configuration cannot satisfy the requirements.


---

* [KAFKA-1549](https://issues.apache.org/jira/browse/KAFKA-1549) | *Major* | **dead brokers coming in the TopicMetadataResponse**

JunRao confirming my observation that brokers are only added to the metadataCache, never removed: "The way that we update liveBrokers in MetadataCache.updateCache() doesn't seem right. We only add newly received live brokers to the list. However, there could be existing brokers in that list that are now dead. Those dead brokers shouldn't be returned to the clients. We should probably just take the new live broker list and cache it."


---

* [KAFKA-1544](https://issues.apache.org/jira/browse/KAFKA-1544) | *Major* | **LogCleaner may take a long time to shutdown**

We have the following code in LogCleaner. Since the cleaner thread is shutdown w/o interrupt. If may take up to backoff time for the cleaner thread to detect the shutdown flag.

    private def cleanOrSleep() {
      cleanerManager.grabFilthiestLog() match {
        case None =\>
          // there are no cleanable logs, sleep a while
          time.sleep(config.backOffMs)


---

* [KAFKA-1542](https://issues.apache.org/jira/browse/KAFKA-1542) | *Major* | **normal IOException in the new producer is logged as ERROR**

Saw the following error in the log. It seems this can happen if the broker is down. So, this probably should be logged as WARN, instead ERROR.

2014/07/16 00:12:51.799 [Selector] Error in I/O: 
java.io.IOException: Connection timed out
        at sun.nio.ch.FileDispatcherImpl.read0(Native Method)
        at sun.nio.ch.SocketDispatcher.read(SocketDispatcher.java:39)
        at sun.nio.ch.IOUtil.readIntoNativeBuffer(IOUtil.java:223)
        at sun.nio.ch.IOUtil.read(IOUtil.java:197)
        at sun.nio.ch.SocketChannelImpl.read(SocketChannelImpl.java:379)
        at org.apache.kafka.common.network.NetworkReceive.readFrom(NetworkReceive.java:60)
        at org.apache.kafka.common.network.Selector.poll(Selector.java:241)
        at org.apache.kafka.clients.NetworkClient.poll(NetworkClient.java:171)
        at org.apache.kafka.clients.producer.internals.Sender.run(Sender.java:174)
        at org.apache.kafka.clients.producer.internals.Sender.run(Sender.java:114)
        at java.lang.Thread.run(Thread.java:744)


---

* [KAFKA-1539](https://issues.apache.org/jira/browse/KAFKA-1539) | *Major* | **Due to OS caching Kafka might loose offset files which causes full reset of data**

Seen this while testing power failure and disk failures. Due to chaching on OS level (eg. XFS can cache data for 30 seconds) after failure we got offset files of zero length. This dramatically slows down broker startup (it have to re-check all segments) and if high watermark offsets lost it simply erases all data and start recovering from other brokers (looks funny - first spending 2-3 hours re-checking logs and then deleting them all due to missing high watermark).

Proposal: introduce offset files rotation. Keep two version of offset file, write to oldest, read from the newest valid. In this case we would be able to configure offset checkpoint time in a way that at least one file is alway flushed and valid.


---

* [KAFKA-1535](https://issues.apache.org/jira/browse/KAFKA-1535) | *Major* | **return all live brokers in TopicMetadataResponse**

Currently, we only return the brokers that have assigned replicas for a topic in TopicMetadataResponse. The new producer will use those brokers for refreshing metadata. Now suppose that we stop all those brokers, copy all local data to some new hosts and then restart those hosts (with the original broker id). There is no way for the new producer to automatically get the information about the new brokers since all old brokers are gone.


---

* [KAFKA-1533](https://issues.apache.org/jira/browse/KAFKA-1533) | *Major* | **transient unit test failure in ProducerFailureHandlingTest**

Occasionally, saw the test hang on tear down. The following is the stack trace.

"Test worker" prio=5 tid=7f9246956000 nid=0x10e078000 in Object.wait() [10e075000]
   java.lang.Thread.State: WAITING (on object monitor)
        at java.lang.Object.wait(Native Method)
        - waiting on \<7f4e69578\> (a org.apache.zookeeper.ClientCnxn$Packet)
        at java.lang.Object.wait(Object.java:485)
        at org.apache.zookeeper.ClientCnxn.submitRequest(ClientCnxn.java:1344)
        - locked \<7f4e69578\> (a org.apache.zookeeper.ClientCnxn$Packet)
        at org.apache.zookeeper.ZooKeeper.delete(ZooKeeper.java:732)
        at org.I0Itec.zkclient.ZkConnection.delete(ZkConnection.java:91)
        at org.I0Itec.zkclient.ZkClient$8.call(ZkClient.java:720)
        at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:675)
        at org.I0Itec.zkclient.ZkClient.delete(ZkClient.java:716)
        at kafka.utils.ZkUtils$.deletePath(ZkUtils.scala:416)
        at kafka.utils.ZkUtils$.deregisterBrokerInZk(ZkUtils.scala:184)
        at kafka.server.KafkaHealthcheck.shutdown(KafkaHealthcheck.scala:50)
        at kafka.server.KafkaServer$$anonfun$shutdown$2.apply$mcV$sp(KafkaServer.scala:243)
        at kafka.utils.Utils$.swallow(Utils.scala:172)
        at kafka.utils.Logging$class.swallowWarn(Logging.scala:92)
        at kafka.utils.Utils$.swallowWarn(Utils.scala:45)
        at kafka.utils.Logging$class.swallow(Logging.scala:94)
        at kafka.utils.Utils$.swallow(Utils.scala:45)
        at kafka.server.KafkaServer.shutdown(KafkaServer.scala:243)
        at kafka.api.ProducerFailureHandlingTest.tearDown(ProducerFailureHandlingTest.scala:90)


---

* [KAFKA-1531](https://issues.apache.org/jira/browse/KAFKA-1531) | *Major* | **zookeeper.connection.timeout.ms is set to 10000000 in configuration file in Kafka tarball**

I've noticed that Kafka tarball comes with zookeeper.connection.timeout.ms=1000000 in server.properties while https://kafka.apache.org/08/documentation.html says the default is 6000. This setting was introduced in configuration file in 46b6144a, so quite a long time ago (3 years), which makes it look intentional, but as per Jun Rao's comment on IRC, 6000 sounds more reasonable, so that entry should probably be changed or removed from config at all.


---

* [KAFKA-1529](https://issues.apache.org/jira/browse/KAFKA-1529) | *Major* | **transient unit test failure in testAutoCreateAfterDeleteTopic**

Saw the following transient failure.

kafka.admin.DeleteTopicTest \> testAutoCreateAfterDeleteTopic FAILED
    org.scalatest.junit.JUnitTestFailedError: Topic should have been auto created
        at org.scalatest.junit.AssertionsForJUnit$class.newAssertionFailedException(AssertionsForJUnit.scala:101)
        at org.scalatest.junit.JUnit3Suite.newAssertionFailedException(JUnit3Suite.scala:149)
        at org.scalatest.Assertions$class.fail(Assertions.scala:711)
        at org.scalatest.junit.JUnit3Suite.fail(JUnit3Suite.scala:149)
        at kafka.admin.DeleteTopicTest.testAutoCreateAfterDeleteTopic(DeleteTopicTest.scala:222)


---

* [KAFKA-1519](https://issues.apache.org/jira/browse/KAFKA-1519) | *Minor* | **Console consumer: expose configuration option to enable/disable writing the line separator**

The current console consumer includes a {{DefaultMessageFormatter}}, which exposes a few user-configurable options which can be set on the command line via --property, e.g. "--property line.separator=XYZ".

Unfortunately, the current implementation does not allow the user to completely disable writing any such line separator.  However, this functionality would be helpful to enable users to capture data "as is" from a Kafka topic to snapshot file.  Capturing data "as is" -- without an artificial line separator -- is particularly nice for data in a binary format (including Avro).



\*No workaround\*

A potential workaround would be to pass an empty string as the property value of "line.separator", but this doesn't work in the current implementation.

The following variants throw an "Invalid parser arguments" exception:

{code}
--property line.separator=       # "nothing"
--property line.separator=""     # double quotes
--property line.separator=''     # single quotes
{code}

Escape tricks via a backslash don't work either.

If there actually is a workaround please let me know.

\*How to fix\*

We can introduce a "print.line" option to enable/disable writing "line.separator" similar to how the code already uses "print.key" to enable/disable writing "key.separator".

This change is trivial.  To preserve backwards compatibility, the "print.line" option would be set to true by default (unlike the "print.key" option, which defaults to false).

\*Alternatives\*

Apart from modifying the built-in {{DefaultMessageFormatter}}, users could of course implement their own custom {{MessageFormatter}}.  But given that it's a) a trivial change to the {{DefaultMessageFormatter}} and b) a nice user feature I'd say changing the built-in {{DefaultMessageFormatter}} would be the better approach.  This way, Kafka would support writing data as-is to a file out of the box.


---

* [KAFKA-1515](https://issues.apache.org/jira/browse/KAFKA-1515) | *Major* | **Wake-up Sender upon blocked on fetching leader metadata**

Currently the new KafkaProducer will not wake up the sender thread upon forcing metadata fetch, and hence if the sender is polling with a long timeout (e.g. the metadata.age period) this wait will usually timeout and fail.


---

* [KAFKA-1513](https://issues.apache.org/jira/browse/KAFKA-1513) | *Minor* | **Cleanup KafkaServerStartable code**

[init method\|https://github.com/apache/kafka/blob/0.8.1/core/src/main/scala/kafka/server/KafkaServerStartable.scala#L26] too hard to understand.
Var initialization would be simpler for readers.
Patch will be soon. It's my first time:)


---

* [KAFKA-1512](https://issues.apache.org/jira/browse/KAFKA-1512) | *Major* | **Limit the maximum number of connections per ip address**

To protect against client connection leaks add a new configuration
  max.connections.per.ip
that causes the SocketServer to enforce a limit on the maximum number of connections from each InetAddress instance. For backwards compatibility this will default to 2 billion.


---

* [KAFKA-1511](https://issues.apache.org/jira/browse/KAFKA-1511) | *Minor* | **Malformated link and consumer/producer mixup in documentation**

Hi!

{quote}
Adding such callback functionality is proposed for Kafka 0.9, see [Proposed Producer API](https://cwiki.apache.org/confluence/display/KAFKA/Client+Rewrite#ClientRewrite-ProposedProducerAPI).
{quote}

The link is not formatted as a link (markdown syntax instead of HTML).

{quote}
If the consumer never crashed it could just store this position in memory, but if the producer fails and we want this topic partition to be taken over by another process the new process will need to choose an appropriate position from which to start processing. 
{quote}

I think that "producer" should be replaced by "consumer".

I do not propose a patch because I am unsure where the sources are. Is that the HTML files in the SVN repository? Or is there some git repository somewhere?


---

* [KAFKA-1510](https://issues.apache.org/jira/browse/KAFKA-1510) | *Major* | **Force offset commits when migrating consumer offsets from zookeeper to kafka**

When migrating consumer offsets from ZooKeeper to kafka, we have to turn on dual-commit (i.e., the consumers will commit offsets to both zookeeper and kafka) in addition to setting offsets.storage to kafka. However, when we commit offsets we only commit offsets if they have changed (since the last commit). For low-volume topics or for topics that receive data in bursts offsets may not move for a long period of time. Therefore we may want to force the commit (even if offsets have not changed) when migrating (i.e., when dual-commit is enabled) - we can add a minimum interval threshold (say force commit after every 10 auto-commits) as well as on rebalance and shutdown.

Also, I think it is safe to switch the default for offsets.storage from zookeeper to kafka and set the default to dual-commit (for people who have not migrated yet). We have deployed this to the largest consumers at linkedin and have not seen any issues so far (except for the migration caveat that this jira will resolve).


---

* [KAFKA-1503](https://issues.apache.org/jira/browse/KAFKA-1503) | *Major* | **all partitions are using same broker as their leader after broker is down**

The current leader selection always pick the first live broker in ISR when the current leader broker is down. Since the list of liveBrokerInIsr is not evenly distributed. As time goes on, all the partitions will use only one broker as its leader. 

I figured out a fix which is to use the first live broker in replica list which is also in ISR list. Since the liveAssignedReplicas is evenly distributed across brokers, all the partitions will be evenly distributed in the live brokers in ISR.
The fix is:
kafka-0.8.1.1-src/core/src/main/scala/kafka/controller/PartitionLeaderSelector.scala


71	71
           case false =\>
72	 
-            val newLeader = liveBrokersInIsr.head
 	72
+            val liveReplicasInIsr = liveAssignedReplicas.filter(r =\> liveBrokersInIsr.contains(r))
 	73
+            val newLeader = liveReplicasInIsr.head


---

* [KAFKA-1502](https://issues.apache.org/jira/browse/KAFKA-1502) | *Major* | **source jar is empty**

When doing a local publish, kafka\_2.8.0-0.8.1.1-sources.jar only contains the following files.
META-INF/
META-INF/MANIFEST.MF
LICENSE
NOTICE


---

* [KAFKA-1491](https://issues.apache.org/jira/browse/KAFKA-1491) | *Major* | **ConsumerMetadataResponse is not read completely**

This is a regression after KAFKA-1437

The broker always populates the coordinator broker field, but the consumer may do a partial read if error code is non-zero. It should always read the field or we will probably end up with a buffer overflow exception of some sort when reading from a response that has a non-zero error code.


---

* [KAFKA-1490](https://issues.apache.org/jira/browse/KAFKA-1490) | *Blocker* | **remove gradlew initial setup output from source distribution**

Our current source releases contains lots of stuff in the gradle folder we do not need


---

* [KAFKA-1485](https://issues.apache.org/jira/browse/KAFKA-1485) | *Major* | **Upgrade to Zookeeper 3.4.6 and create "shim" for ZKCLI so system tests can run**

I can't run projects alongside Kafka that use zookeeper 3.4 jars. 3.4 has been out for 2.5 years and seems to be ready for adoption.

In particular Apache Storm will upgrade to Zookeeper 3.4.x in their next 0.9.2 release. I can't run both versions in my tests at the same time. 

The only compile problem I saw was in EmbeddedZookeeper.scala


---

* [KAFKA-1481](https://issues.apache.org/jira/browse/KAFKA-1481) | *Critical* | **Stop using dashes AND underscores as separators in MBean names**

MBeans should not use dashes or underscores as separators because these characters are allowed in hostnames, topics, group and consumer IDs, etc., and these are embedded in MBeans names making it impossible to parse out individual bits from MBeans.

Perhaps a pipe character should be used to avoid the conflict. 

This looks like a major blocker because it means nobody can write Kafka 0.8.x monitoring tools unless they are doing it for themselves AND do not use dashes AND do not use underscores.

See: http://search-hadoop.com/m/4TaT4lonIW


---

* [KAFKA-1473](https://issues.apache.org/jira/browse/KAFKA-1473) | *Major* | **transient unit test failure in testRequestHandlingDuringDeleteTopic**

kafka.admin.DeleteTopicTest \> testRequestHandlingDuringDeleteTopic FAILED
    org.scalatest.junit.JUnitTestFailedError: fails with exception
        at org.scalatest.junit.AssertionsForJUnit$class.newAssertionFailedException(AssertionsForJUnit.scala:102)
        at org.scalatest.junit.JUnit3Suite.newAssertionFailedException(JUnit3Suite.scala:149)
        at org.scalatest.Assertions$class.fail(Assertions.scala:731)
        at org.scalatest.junit.JUnit3Suite.fail(JUnit3Suite.scala:149)
        at kafka.admin.DeleteTopicTest.testRequestHandlingDuringDeleteTopic(DeleteTopicTest.scala:118)

        Caused by:
        org.scalatest.junit.JUnitTestFailedError: Test should fail because the topic is being deleted
            at org.scalatest.junit.AssertionsForJUnit$class.newAssertionFailedException(AssertionsForJUnit.scala:101)
            at org.scalatest.junit.JUnit3Suite.newAssertionFailedException(JUnit3Suite.scala:149)
            at org.scalatest.Assertions$class.fail(Assertions.scala:711)
            at org.scalatest.junit.JUnit3Suite.fail(JUnit3Suite.scala:149)
            at kafka.admin.DeleteTopicTest.testRequestHandlingDuringDeleteTopic(DeleteTopicTest.scala:120)


---

* [KAFKA-1472](https://issues.apache.org/jira/browse/KAFKA-1472) | *Major* | **Add the compression ratio metrics in the new producer**

New producer's bytes throughput is based on compressed data. With the current implementation, it would be very easy to get the compression ratio of each closed batch upon drain(). It would be good to have such metric to help understanding the throughput metrics.


---

* [KAFKA-1469](https://issues.apache.org/jira/browse/KAFKA-1469) | *Major* | **Util.abs function does not return correct absolute values for negative values**

Reported by Russell Melick. [edit1: I don't think this affects correctness of
the places that use the abs utility since we just need it to return a
consistent positive value, but we should fix this nonetheless]
[edit 2: actually it affects correctness in places that depend on consistent
values across the fix. e.g., the offset manager is determined based on
abs(hash(consumer group)). So after an upgrade that can change]

{code}
     /\*\*
      \* Get the absolute value of the given number. If the number is
   Int.MinValue return 0.
      \* This is different from java.lang.Math.abs or scala.math.abs in that
   they return Int.MinValue (!).
      \*/
     def abs(n: Int) = n & 0x7fffffff
{code}

For negative integers, it does not return the absolute value.  It does
appear to do what the comment says for Int.MinValue though.  For example,

{code}
   scala\> -1 & 0x7fffffff
   res8: Int = 2147483647

   scala\> -2 & 0x7fffffff
   res9: Int = 2147483646

   scala\> -2147483647 & 0x7fffffff
   res11: Int = 1

   scala\> -2147483648 & 0x7fffffff
   res12: Int = 0
{code}


---

* [KAFKA-1468](https://issues.apache.org/jira/browse/KAFKA-1468) | *Major* | **Improve perf tests**

This is issue is a placeholder for a bunch of improvements that came out of a round of benchmarking.


---

* [KAFKA-1462](https://issues.apache.org/jira/browse/KAFKA-1462) | *Major* | **Add new request and response formats for the new consumer and coordinator communication**

We need to add the request / response formats according to the new format protocol once their design is final:

https://cwiki.apache.org/confluence/display/KAFKA
/Kafka+0.9+Consumer+Rewrite+Design


---

* [KAFKA-1459](https://issues.apache.org/jira/browse/KAFKA-1459) | *Major* | **kafka.tools.ConsumerOffsetChecker throws NoNodeException**

When using the kafka.tools.ConsumerOffsetChecker to check offsets for consumers that are doing manual offset management, and offsets for some but not all partitions have been stored, the offset checker will throw a no node exception.  It should probably return 0 for partitions that dont have an offset recorded yet.

In this case I was using github.com/pinterest/secor, which may read thousands or millions of messages from a partition before committing an offset.


---

* [KAFKA-1453](https://issues.apache.org/jira/browse/KAFKA-1453) | *Major* | **Add a channel queue jmx in Mirror Maker**

This metric would be very helpful identifying which side (consumer or producer) is the bottleneck for slowness.


---

* [KAFKA-1451](https://issues.apache.org/jira/browse/KAFKA-1451) | *Minor* | **Broker stuck due to leader election race**

h3. Symptoms

The broker does not become available due to being stuck in an infinite loop while electing leader. This can be recognised by the following line being repeatedly written to server.log:

{code}
[2014-05-14 04:35:09,187] INFO I wrote this conflicted ephemeral node [{"version":1,"brokerid":1,"timestamp":"1400060079108"}] at /controller a while back in a different session, hence I will backoff for this node to be deleted by Zookeeper and retry (kafka.utils.ZkUtils$)
{code}

h3. Steps to Reproduce

In a single kafka 0.8.1.1 node, single zookeeper 3.4.6 (but will likely behave the same with the ZK version included in Kafka distribution) node setup:

# start both zookeeper and kafka (in any order)
# stop zookeeper
# stop kafka
# start kafka
# start zookeeper

h3. Likely Cause

{{ZookeeperLeaderElector}} subscribes to data changes on startup, and then triggers an election. if the deletion of ephemeral {{/controller}} node associated with previous zookeeper session of the broker happens after subscription to changes in new session, election will be invoked twice, once from {{startup}} and once from {{handleDataDeleted}}:

\* {{startup}}: acquire {{controllerLock}}
\* {{startup}}: subscribe to data changes
\* zookeeper: delete {{/controller}} since the session that created it timed out
\* {{handleDataDeleted}}: {{/controller}} was deleted
\* {{handleDataDeleted}}: wait on {{controllerLock}}
\* {{startup}}: elect -- writes {{/controller}}
\* {{startup}}: release {{controllerLock}}
\* {{handleDataDeleted}}: acquire {{controllerLock}}
\* {{handleDataDeleted}}: elect -- attempts to write {{/controller}} and then gets into infinite loop as a result of conflict

{{createEphemeralPathExpectConflictHandleZKBug}} assumes that the existing znode was written from different session, which is not true in this case; it was written from the same session. That adds to the confusion.

h3. Suggested Fix

In {{ZookeeperLeaderElector.startup}} first run {{elect}} and then subscribe to data changes.


---

* [KAFKA-1446](https://issues.apache.org/jira/browse/KAFKA-1446) | *Major* | **Consumer metrics for rebalance**

The Kafka consumer should have metrics around the number of seconds spent in rebalance over the last minute as well as the number of rebalances started during the previous minute.

The other important thing about these metrics is that they should only be updated once per minute for example the rebalance time should not increase from second to second during a rebalance.


---

* [KAFKA-1444](https://issues.apache.org/jira/browse/KAFKA-1444) | *Minor* | **kafka.javaapi.TopicMetadata and PartitionMetadata doesn't forward the toString method**

the kafka.javaapi.PartitionMetadata and TopicMetadata classes don't forward the toString method to the underlying kafka.api.PartitionMetadata/TopicMetadata classes along with the other methods. This means toString on these classes doesn't work properly.


---

* [KAFKA-1443](https://issues.apache.org/jira/browse/KAFKA-1443) | *Major* | **Add delete topic to topic commands and update DeleteTopicCommand**

Add delete topic option to current topic commands


---

* [KAFKA-1442](https://issues.apache.org/jira/browse/KAFKA-1442) | *Minor* | **RBTools post-review is deprecated**

kafka-patch-review.py uses RBTools post-review for sending patch reviews. post-review command is deprecated and replaced by rbt post in their latest release. 
kafka-patch-review.py updates the jira ticket with attaching patch even if the RBTools are not found.


---

* [KAFKA-1438](https://issues.apache.org/jira/browse/KAFKA-1438) | *Major* | **Migrate kafka client tools**

Currently the console/perf client tools scatter across different packages, we'd better to:

1. Move Consumer/ProducerPerformance and SimpleConsumerPerformance to tools and remove the perf sub-project.
2. Move ConsoleConsumer from kafka.consumer to kafka.tools.
3. Move other consumer related tools from kafka.consumer to kafka.tools.


---

* [KAFKA-1437](https://issues.apache.org/jira/browse/KAFKA-1437) | *Major* | **ConsumerMetadataResponse should always include coordinator information**

The consumer metadata response currently includes coordinator broker information only on NoError. We need to avoid data-driven protocol specifications - the error code field being the data in this case. This won't work with the protocol schema utilities in the client package which does not (and should not) look at the data.

Also, need to update the wire protocol wiki page after the above is fixed.


---

* [KAFKA-1434](https://issues.apache.org/jira/browse/KAFKA-1434) | *Major* | **kafka.admin.TopicCommand missing --delete topic command**

It is not possible to delete topic as --delete command is not available:
~/kafka\_2.10-0.8.1.1/bin# ./kafka-run-class.sh kafka.admin.TopicCommand
Command must include exactly one action: --list, --describe, --create or --alter
Option                                  Description
------                                  -----------
--alter                                 Alter the configuration for the topic.
--config \<name=value\>                   A topic configuration override for the
                                          topic being created or altered.
--create                                Create a new topic.
--deleteConfig \<name\>                   A topic configuration override to be
                                          removed for an existing topic
--describe                              List details for the given topics.
--help                                  Print usage information.
--list                                  List all available topics.
--partitions \<Integer: # of partitions\> The number of partitions for the topic
                                          being created or altered (WARNING:
                                          If partitions are increased for a
                                          topic that has a key, the partition
                                          logic or ordering of the messages
                                          will be affected
--replica-assignment                    A list of manual partition-to-broker
  \<broker\_id\_for\_part1\_replica1 :         assignments for the topic being
  broker\_id\_for\_part1\_replica2 ,          created or altered.
  broker\_id\_for\_part2\_replica1 :
  broker\_id\_for\_part2\_replica2 , ...\>
--replication-factor \<Integer:          The replication factor for each
  replication factor\>                     partition in the topic being created.
--topic \<topic\>                         The topic to be create, alter or
                                          describe. Can also accept a regular
                                          expression except for --create option
--topics-with-overrides                 if set when describing topics, only
                                          show topics that have overridden
                                          configs
--unavailable-partitions                if set when describing topics, only
                                          show partitions whose leader is not
                                          available
--under-replicated-partitions           if set when describing topics, only
                                          show under replicated partitions
--zookeeper \<urls\>                      REQUIRED: The connection string for
                                          the zookeeper connection in the form
                                          host:port. Multiple URLS can be
                                          given to allow fail-over.


---

* [KAFKA-1433](https://issues.apache.org/jira/browse/KAFKA-1433) | *Major* | **transient unit test failure in ZookeeperConsumerConnectorTest**

Saw the following transient unit test failure.

kafka.consumer.ZookeeperConsumerConnectorTest \> testBasic FAILED
    kafka.common.FailedToSendMessageException: Failed to send messages after 3 tries.
        at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:90)
        at kafka.producer.Producer.send(Producer.scala:76)
        at kafka.consumer.ZookeeperConsumerConnectorTest.sendMessagesToBrokerPartition(ZookeeperConsumerConnectorTest.scala:353)
        at kafka.consumer.ZookeeperConsumerConnectorTest.testBasic(ZookeeperConsumerConnectorTest.scala:92)


---

* [KAFKA-1432](https://issues.apache.org/jira/browse/KAFKA-1432) | *Major* | **Make num.producerThreads configurable on new MirrrorMaker**

Originally we make the num.producerThreads coupled with num.consumerThreads since we thought with the new producer, a single or couple of instances are sufficient for throughput. However, with compression turned on, which is now executed in the caller thread we still need configurable number of producer threads.


---

* [KAFKA-1431](https://issues.apache.org/jira/browse/KAFKA-1431) | *Minor* | **ConsoleConsumer - Option to clean zk consumer path**

Raised in response to KAFKA-1426. Currently option "from-beginning" auto deletes the zk consumer path. This is confusing and un-expected behaviour. Suggest a separate option to clean the console consumer path.


---

* [KAFKA-1430](https://issues.apache.org/jira/browse/KAFKA-1430) | *Blocker* | **Purgatory redesign**

We have seen 2 main issues with the Purgatory.

1. There is no atomic checkAndWatch functionality. So, a client typically first checks whether a request is satisfied or not and then register the watcher. However, by the time the watcher is registered, the registered item could already be satisfied. This item won't be satisfied until the next update happens or the delayed time expires, which means the watched item could be delayed. 

2. FetchRequestPurgatory doesn't quite work. This is because the current design tries to incrementally maintain the accumulated bytes ready for fetch. However, this is difficult since the right time to check whether a fetch (for regular consumer) request is satisfied is when the high watermark moves. At that point, it's hard to figure out how many bytes we should incrementally add to each pending fetch request.

The problem has been reported in KAFKA-1150 and KAFKA-703.


---

* [KAFKA-1425](https://issues.apache.org/jira/browse/KAFKA-1425) | *Minor* | **provide logStartOffset in addition to LogEndOffset metric**

Hello,

Would it be possible to include a metric to report the minimum message offset for each topic/partition? This would mirror the LogEndOffset which is already provided.

There's also a Size metric that's provided; however, this gives us the size of a topic/partition in bytes so I'm unable to calculate the Starting/beginning message offset based on the end offset.

I've attached a patch I used with kafka 0.8.1 to expose this metric.

Thanks,
Alex


---

* [KAFKA-1424](https://issues.apache.org/jira/browse/KAFKA-1424) | *Major* | **transient unit test failure in testSendWithDeadBroker**

Saw the following transient unit test failure.

kafka.producer.ProducerTest \> testSendWithDeadBroker FAILED
    java.lang.AssertionError: Message set should have 1 message
        at org.junit.Assert.fail(Assert.java:69)
        at org.junit.Assert.assertTrue(Assert.java:32)
        at kafka.producer.ProducerTest.testSendWithDeadBroker(ProducerTest.scala:245)


---

* [KAFKA-1423](https://issues.apache.org/jira/browse/KAFKA-1423) | *Major* | **Updating partition count clears topic configuration and any further alters done to a topics config do not stick**

After creating a topic with custom retention configs, I tried to change the number of partitions. This succeeded but it cleared the config for the topic. I then tried to add the configs back in, which appeared to succeed, but the config is still reporting empty when using `kafka-topics.sh --describe`.


---

* [KAFKA-1419](https://issues.apache.org/jira/browse/KAFKA-1419) | *Blocker* | **cross build for scala 2.11**

Please publish builds for scala 2.11, hopefully just needs a small tweak to the gradle conf?


---

* [KAFKA-1418](https://issues.apache.org/jira/browse/KAFKA-1418) | *Major* | **transient unit test failure in ProducerFailureHandlingTest**

Saw the following transient failure.

kafka.api.ProducerFailureHandlingTest \> testWrongBrokerList PASSED

kafka.api.ProducerFailureHandlingTest \> testNoResponse FAILED
    kafka.common.KafkaException: Socket server failed to bind to localhost:49013: Address already in use.
        at kafka.network.Acceptor.openServerSocket(SocketServer.scala:195)
        at kafka.network.Acceptor.\<init\>(SocketServer.scala:141)
        at kafka.network.SocketServer.startup(SocketServer.scala:68)
        at kafka.server.KafkaServer.startup(KafkaServer.scala:84)
        at kafka.utils.TestUtils$.createServer(TestUtils.scala:120)
        at kafka.api.ProducerFailureHandlingTest.setUp(ProducerFailureHandlingTest.scala:80)

        Caused by:
        java.net.BindException: Address already in use
            at sun.nio.ch.Net.bind(Native Method)
            at sun.nio.ch.ServerSocketChannelImpl.bind(ServerSocketChannelImpl.java:124)
            at sun.nio.ch.ServerSocketAdaptor.bind(ServerSocketAdaptor.java:59)
            at sun.nio.ch.ServerSocketAdaptor.bind(ServerSocketAdaptor.java:52)
            at kafka.network.Acceptor.openServerSocket(SocketServer.scala:191)
            ... 5 more


---

* [KAFKA-1414](https://issues.apache.org/jira/browse/KAFKA-1414) | *Major* | **Speedup broker startup after hard reset**

After hard reset due to power failure broker takes way too much time recovering unflushed segments in a single thread. This could be easiliy improved launching multiple threads (one per data dirrectory, assuming that typically each data directory is on a dedicated drive). Localy we trie this simple patch to LogManager.loadLogs and it seems to work, however I'm too new to scala, so do not take it literally:

{code}
  /\*\*
   \* Recover and load all logs in the given data directories
   \*/
  private def loadLogs(dirs: Seq[File]) {
    val threads : Array[Thread] = new Array[Thread](dirs.size)
    var i: Int = 0
    val me = this

    for(dir \<- dirs) {
      val thread = new Thread( new Runnable {
        def run()
        {
          val recoveryPoints = me.recoveryPointCheckpoints(dir).read
          /\* load the logs \*/
          val subDirs = dir.listFiles()
          if(subDirs != null) {
            val cleanShutDownFile = new File(dir, Log.CleanShutdownFile)
            if(cleanShutDownFile.exists())
              info("Found clean shutdown file. Skipping recovery for all logs in data directory '%s'".format(dir.getAbsolutePath))
            for(dir \<- subDirs) {
              if(dir.isDirectory) {
                info("Loading log '" + dir.getName + "'")
                val topicPartition = Log.parseTopicPartitionName(dir.getName)
                val config = topicConfigs.getOrElse(topicPartition.topic, defaultConfig)
                val log = new Log(dir,
                  config,
                  recoveryPoints.getOrElse(topicPartition, 0L),
                  scheduler,
                  time)
                val previous = addLogWithLock(topicPartition, log)
                if(previous != null)
                  throw new IllegalArgumentException("Duplicate log directories found: %s, %s!".format(log.dir.getAbsolutePath, previous.dir.getAbsolutePath))
              }
            }
            cleanShutDownFile.delete()
          }
        }
      })

      thread.start()
      threads(i) = thread
      i = i + 1
    }

    for(thread \<- threads) {
      thread.join()
    }
  }

  def addLogWithLock(topicPartition: TopicAndPartition, log: Log): Log = {
    logCreationOrDeletionLock synchronized {
      this.logs.put(topicPartition, log)
    }
  }
{code}


---

* [KAFKA-1412](https://issues.apache.org/jira/browse/KAFKA-1412) | *Major* | **transient unit test failure in ProducerSendTest.testAutoCreateTopic**

Saw the following transient failure. 

kafka.api.test.ProducerSendTest \> testAutoCreateTopic FAILED
    java.util.concurrent.ExecutionException: org.apache.kafka.common.errors.UnknownTopicOrPartitionException: This server does not host this topic-partition.
        at org.apache.kafka.clients.producer.internals.FutureRecordMetadata.valueOrError(FutureRecordMetadata.java:56)
        at org.apache.kafka.clients.producer.internals.FutureRecordMetadata.get(FutureRecordMetadata.java:43)
        at org.apache.kafka.clients.producer.internals.FutureRecordMetadata.get(FutureRecordMetadata.java:25)
        at kafka.api.test.ProducerSendTest.testAutoCreateTopic(ProducerSendTest.scala:254)

        Caused by:
        org.apache.kafka.common.errors.UnknownTopicOrPartitionException: This server does not host this topic-partition.


---

* [KAFKA-1411](https://issues.apache.org/jira/browse/KAFKA-1411) | *Major* | **remove unused test cases**

We have some redundant tests for producer.
1. Tests in LazyInitProducerTest are redundant from those in PrimitiveApiTest.
2. AsyncProducerTest.testBrokerListAndAsync() just returns immediately. There are other tests that cover the same functionality.
3. PrimitiveApiTest: The compression property wasn't set properly. Also, there is no need to test compression with other combinations such as encoder/multi-fetch.


---

* [KAFKA-1410](https://issues.apache.org/jira/browse/KAFKA-1410) | *Major* | **MetadataCache cleanup**

There are a few remaining cleanup items from KAFKA-1356 for trunk.

1. There is no need to call ensureTopicExists(). A consistent check would require holding the read lock of metadata cache on every fetch/producer request, which means a metadata update could block all fetch/producer requests. Also, this call is just an optimization. When leaderAndIsrRequest is propagated after a topic deletion, fetch/producer requests will be rejected by the ReplicaManager.

2. The update of the controller epoc when handling metadata request needs to be done inside the replicaStateChangeLock.


---

* [KAFKA-1409](https://issues.apache.org/jira/browse/KAFKA-1409) | *Critical* | **oversized messages can slow down the brokers**

There are 2 main issues.

1. The broker first decompresses and then recompresses each message (to assign new offsets) before validating the message size (we have to do the validation after recompression since the message size could change). So, it can spend many secs to decompress/recompress an oversized message, only to be dropped later. While this was happening, a request thread was tied up, which reduced the capacity on the broker.

2. Both the fetch and producer requests need to hold a leader lock (per partition). So, if the producer is slow in appending the log, it will block other producer/fetch requests on the same partition.


---

* [KAFKA-1406](https://issues.apache.org/jira/browse/KAFKA-1406) | *Major* | **Fix scaladoc/javadoc warnings**

./gradlew docsJarAll

You will see a bunch of warnings mainly due to typos/incorrect use of javadoc/scaladoc


---

* [KAFKA-1400](https://issues.apache.org/jira/browse/KAFKA-1400) | *Major* | **transient unit test failure in SocketServerTest**

Saw the following transient failure.
kafka.network.SocketServerTest \> testSocketsCloseOnShutdown FAILED java.lang.AssertionError: Expected exception: java.net.SocketException


---

* [KAFKA-1399](https://issues.apache.org/jira/browse/KAFKA-1399) | *Major* | **Drop Scala 2.8.x support**

It's been almost 4 years since [Scala 2.8 has been released\|http://www.scala-lang.org/old/node/7009] and 3 years since [Scala 2.9 has been released\|http://www.scala-lang.org/old/node/9483], so there was more than plenty of time to migrate.

Continued support of old Scala 2.8 is causing issues like [this\|https://issues.apache.org/jira/browse/KAFKA-1362?focusedCommentId=13970390&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-13970390].


---

* [KAFKA-1397](https://issues.apache.org/jira/browse/KAFKA-1397) | *Major* | **delete topic is not working**

All unit tests are disabled since they hang transiently (see details in KAFKA-1391).


---

* [KAFKA-1396](https://issues.apache.org/jira/browse/KAFKA-1396) | *Major* | **fix transient unit test ProducerFailureHandlingTest.testBrokerFailure**

Currently disabled after kafka-1390.


---

* [KAFKA-1395](https://issues.apache.org/jira/browse/KAFKA-1395) | *Major* | **fix unit tests in AutoOffsetResetTest**

It's currently disabled after kafka-1390.


---

* [KAFKA-1392](https://issues.apache.org/jira/browse/KAFKA-1392) | *Major* | **all TestUtiles.waitUntilTrue() should throw an exception if the return value is false**

In all unit tests, we expect TestUtiles.waitUntilTrue() to be true. However, this is not enforced in all unit tests.


---

* [KAFKA-1391](https://issues.apache.org/jira/browse/KAFKA-1391) | *Major* | **transient unit test failure in DeleteTopicTest.testPreferredReplicaElectionDuringDeleteTopic**

The test hang due to the following deadlock.

"Test worker" prio=5 tid=7fd40c0b2800 nid=0x114ebd000 waiting on condition [114eb9000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  \<7f40b2aa0\> (a java.util.concurrent.CountDownLatch$Sync)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.doAcquireSharedInterruptibly(AbstractQueuedSynchronizer.java:969)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly(AbstractQueuedSynchronizer.java:1281)
        at java.util.concurrent.CountDownLatch.await(CountDownLatch.java:207)
        at kafka.utils.ShutdownableThread.shutdown(ShutdownableThread.scala:36)
        at kafka.controller.TopicDeletionManager.shutdown(TopicDeletionManager.scala:105)
        at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply$mcV$sp(KafkaController.scala:344)
        at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply(KafkaController.scala:340)
        at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply(KafkaController.scala:340)
        at kafka.utils.Utils$.inLock(Utils.scala:537)
        at kafka.controller.KafkaController.onControllerResignation(KafkaController.scala:340)
        at kafka.controller.KafkaController$$anonfun$shutdown$1.apply$mcV$sp(KafkaController.scala:647)
        at kafka.controller.KafkaController$$anonfun$shutdown$1.apply(KafkaController.scala:645)
        at kafka.controller.KafkaController$$anonfun$shutdown$1.apply(KafkaController.scala:645)
        at kafka.utils.Utils$.inLock(Utils.scala:537)
        at kafka.controller.KafkaController.shutdown(KafkaController.scala:645)
        at kafka.server.KafkaServer$$anonfun$shutdown$9.apply$mcV$sp(KafkaServer.scala:242)
        at kafka.utils.Utils$.swallow(Utils.scala:166)
        at kafka.utils.Logging$class.swallowWarn(Logging.scala:92)
        at kafka.utils.Utils$.swallowWarn(Utils.scala:45)
        at kafka.utils.Logging$class.swallow(Logging.scala:94)
        at kafka.utils.Utils$.swallow(Utils.scala:45)
        at kafka.server.KafkaServer.shutdown(KafkaServer.scala:242)
        at kafka.admin.DeleteTopicTest.testPreferredReplicaElectionDuringDeleteTopic(DeleteTopicTest.scala:163)

"delete-topics-thread" prio=5 tid=7fd409ad2000 nid=0x11b0c2000 waiting on condition [11b0c1000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  \<7f40a7048\> (a java.util.concurrent.locks.ReentrantLock$NonfairSync)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireQueued(AbstractQueuedSynchronizer.java:842)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire(AbstractQueuedSynchronizer.java:1178)
        at java.util.concurrent.locks.ReentrantLock$NonfairSync.lock(ReentrantLock.java:186)
        at java.util.concurrent.locks.ReentrantLock.lock(ReentrantLock.java:262)
        at kafka.utils.Utils$.inLock(Utils.scala:535)
        at kafka.controller.TopicDeletionManager$DeleteTopicsThread.doWork(TopicDeletionManager.scala:376)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)


---

* [KAFKA-1390](https://issues.apache.org/jira/browse/KAFKA-1390) | *Major* | **TestUtils.waitUntilLeaderIsElectedOrChanged may wait longer than it needs**

The way that waitUntilLeaderIsElectedOrChanged() works is to wait for a ZK callback on leader change. However, if the leader is already elected (and won't change) at the time waitUntilLeaderIsElectedOrChanged() is called, this function will wait for the full timeout, which is unnecessary.


---

* [KAFKA-1389](https://issues.apache.org/jira/browse/KAFKA-1389) | *Major* | **transient unit test failure in ProducerFailureHandlingTest**

Saw the following transient unit test failure.

kafka.api.ProducerFailureHandlingTest \> testTooLargeRecordWithAckZero FAILED
    junit.framework.AssertionFailedError: Partition [topic-1,0] metadata not propagated after timeout
        at junit.framework.Assert.fail(Assert.java:47)
        at junit.framework.Assert.assertTrue(Assert.java:20)
        at kafka.utils.TestUtils$.waitUntilMetadataIsPropagated(TestUtils.scala:532)
        at kafka.utils.TestUtils$$anonfun$createTopic$1.apply(TestUtils.scala:151)
        at kafka.utils.TestUtils$$anonfun$createTopic$1.apply(TestUtils.scala:150)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:244)
        at scala.collection.immutable.Range.foreach(Range.scala:141)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:244)
        at scala.collection.AbstractTraversable.map(Traversable.scala:105)
        at kafka.utils.TestUtils$.createTopic(TestUtils.scala:150)
        at kafka.api.ProducerFailureHandlingTest.testTooLargeRecordWithAckZero(ProducerFailureHandlingTest.scala:115)


---

* [KAFKA-1384](https://issues.apache.org/jira/browse/KAFKA-1384) | *Major* | **Log Broker state**

Currently we don't have visibility into what state the broker is currently in, ie: Startup -\> Running -\> Waiting Controlled shutdown -\> Shutting down

So without knowing what state the broker it is it's hard to figure out what the current broker is performing.

This ticket is to add a new metric to expose the current broker state.


---

* [KAFKA-1383](https://issues.apache.org/jira/browse/KAFKA-1383) | *Major* | **transient unit test failure in SocketServerTest**

Saw the following transient unit test failure.

kafka.network.SocketServerTest \> testNullResponse FAILED
    java.lang.AssertionError: null
        at org.junit.Assert.fail(Assert.java:69)
        at org.junit.Assert.assertTrue(Assert.java:32)
        at org.junit.Assert.assertFalse(Assert.java:51)
        at org.junit.Assert.assertFalse(Assert.java:60)
        at kafka.network.SocketServerTest.testNullResponse(SocketServerTest.scala:117)


---

* [KAFKA-1382](https://issues.apache.org/jira/browse/KAFKA-1382) | *Major* | **Update zkVersion on partition state update failures**

Our updateIsr code is currently:

  private def updateIsr(newIsr: Set[Replica]) {
    debug("Updated ISR for partition [%s,%d] to %s".format(topic, partitionId, newIsr.mkString(",")))
    val newLeaderAndIsr = new LeaderAndIsr(localBrokerId, leaderEpoch, newIsr.map(r =\> r.brokerId).toList, zkVersion)
    // use the epoch of the controller that made the leadership decision, instead of the current controller epoch
    val (updateSucceeded, newVersion) = ZkUtils.conditionalUpdatePersistentPath(zkClient,
      ZkUtils.getTopicPartitionLeaderAndIsrPath(topic, partitionId),
      ZkUtils.leaderAndIsrZkData(newLeaderAndIsr, controllerEpoch), zkVersion)
    if (updateSucceeded){
      inSyncReplicas = newIsr
      zkVersion = newVersion
      trace("ISR updated to [%s] and zkVersion updated to [%d]".format(newIsr.mkString(","), zkVersion))
    } else {
      info("Cached zkVersion [%d] not equal to that in zookeeper, skip updating ISR".format(zkVersion))
    }

We encountered an interesting scenario recently when a large producer fully
saturated the broker's NIC for over an hour. The large volume of data led to
a number of ISR shrinks (and subsequent expands). The NIC saturation
affected the zookeeper client heartbeats and led to a session timeout. The
timeline was roughly as follows:

- Attempt to expand ISR
- Expansion written to zookeeper (confirmed in zookeeper transaction logs)
- Session timeout after around 13 seconds (the configured timeout is 20
  seconds) so that lines up.
- zkclient reconnects to zookeeper (with the same session ID) and retries
  the write - but uses the old zkVersion. This fails because the zkVersion
  has already been updated (above).
- The ISR expand keeps failing after that and the only way to get out of it
  is to bounce the broker.

In the above code, if the zkVersion is different we should probably update
the cached version and even retry the expansion until it succeeds.


---

* [KAFKA-1381](https://issues.apache.org/jira/browse/KAFKA-1381) | *Major* | **transient unit test failure in AddPartitionsTest**

Saw the following transient unit test failure.

kafka.admin.AddPartitionsTest \> testReplicaPlacement FAILED
    java.util.NoSuchElementException: None.get
        at scala.None$.get(Option.scala:313)
        at scala.None$.get(Option.scala:311)
        at kafka.admin.AddPartitionsTest.testReplicaPlacement(AddPartitionsTest.scala:189)


---

* [KAFKA-1378](https://issues.apache.org/jira/browse/KAFKA-1378) | *Major* | **transient unit test failure in LogRecoveryTest**

Saw the following transient unit test failure.

kafka.server.LogRecoveryTest \> testHWCheckpointNoFailuresMultipleLogSegments FAILED
    java.lang.AssertionError: Failed to update highwatermark for follower after 1000 ms
        at org.junit.Assert.fail(Assert.java:69)
        at org.junit.Assert.assertTrue(Assert.java:32)
        at kafka.server.LogRecoveryTest.testHWCheckpointNoFailuresMultipleLogSegments(LogRecoveryTest.scala:182)


---

* [KAFKA-1376](https://issues.apache.org/jira/browse/KAFKA-1376) | *Major* | **transient test failure in UncleanLeaderElectionTest**

We have the following transient unit test failure in trunk.

kafka.integration.UncleanLeaderElectionTest \> testUncleanLeaderElectionEnabled FAILED
    org.I0Itec.zkclient.exception.ZkTimeoutException: Unable to connect to zookeeper server within timeout: 400
        at org.I0Itec.zkclient.ZkClient.connect(ZkClient.java:880)
        at org.I0Itec.zkclient.ZkClient.\<init\>(ZkClient.java:98)
        at org.I0Itec.zkclient.ZkClient.\<init\>(ZkClient.java:84)
        at kafka.consumer.ZookeeperConsumerConnector.connectZk(ZookeeperConsumerConnector.scala:169)
        at kafka.consumer.ZookeeperConsumerConnector.\<init\>(ZookeeperConsumerConnector.scala:125)
        at kafka.consumer.ZookeeperConsumerConnector.\<init\>(ZookeeperConsumerConnector.scala:141)
        at kafka.consumer.Consumer$.create(ConsumerConnector.scala:89)
        at kafka.integration.UncleanLeaderElectionTest.consumeAllMessages(UncleanLeaderElectionTest.scala:273)
        at kafka.integration.UncleanLeaderElectionTest.verifyUncleanLeaderElectionEnabled(UncleanLeaderElectionTest.scala:197)
        at kafka.integration.UncleanLeaderElectionTest.testUncleanLeaderElectionEnabled(UncleanLeaderElectionTest.scala:106)

kafka.integration.UncleanLeaderElectionTest \> testUncleanLeaderElectionDisabled PASSED

kafka.integration.UncleanLeaderElectionTest \> testUncleanLeaderElectionEnabledByTopicOverride PASSED

kafka.integration.UncleanLeaderElectionTest \> testCleanLeaderElectionDisabledByTopicOverride FAILED
    org.I0Itec.zkclient.exception.ZkTimeoutException: Unable to connect to zookeeper server within timeout: 400
        at org.I0Itec.zkclient.ZkClient.connect(ZkClient.java:880)
        at org.I0Itec.zkclient.ZkClient.\<init\>(ZkClient.java:98)
        at org.I0Itec.zkclient.ZkClient.\<init\>(ZkClient.java:84)
        at kafka.consumer.ZookeeperConsumerConnector.connectZk(ZookeeperConsumerConnector.scala:169)
        at kafka.consumer.ZookeeperConsumerConnector.\<init\>(ZookeeperConsumerConnector.scala:125)
        at kafka.consumer.ZookeeperConsumerConnector.\<init\>(ZookeeperConsumerConnector.scala:141)
        at kafka.consumer.Consumer$.create(ConsumerConnector.scala:89)
        at kafka.integration.UncleanLeaderElectionTest.consumeAllMessages(UncleanLeaderElectionTest.scala:273)
        at kafka.integration.UncleanLeaderElectionTest.verifyUncleanLeaderElectionDisabled(UncleanLeaderElectionTest.scala:214)
        at kafka.integration.UncleanLeaderElectionTest.testCleanLeaderElectionDisabledByTopicOverride(UncleanLeaderElectionTest.scala:148)


---

* [KAFKA-1375](https://issues.apache.org/jira/browse/KAFKA-1375) | *Trivial* | **Formatting for "Running a task on a particular version of Scala" paragraph in README.md is broken**

See commit which broke formatting at https://github.com/apache/kafka/commit/879e3e770ebc49f916137e8416df74373fa26a74#diff-04c6e90faac2675aa89e2176d2eec7d8


---

* [KAFKA-1371](https://issues.apache.org/jira/browse/KAFKA-1371) | *Trivial* | **Ignore build output dirs**

After a clean clone and project build, build output directories get reported as changes/new. They should be ignored.


---

* [KAFKA-1370](https://issues.apache.org/jira/browse/KAFKA-1370) | *Trivial* | **Gradle startup script for Windows**

Please provide Gradle startup script for Windows.


---

* [KAFKA-1369](https://issues.apache.org/jira/browse/KAFKA-1369) | *Minor* | **snappy version update 1.1.x**

https://github.com/xerial/snappy-java/issues/38 issue

snappy version 1.1.x

{code}
org.xerial.snappy.SnappyError: [FAILED\_TO\_LOAD\_NATIVE\_LIBRARY] null
    at org.xerial.snappy.SnappyLoader.load(SnappyLoader.java:239)
    at org.xerial.snappy.Snappy.\<clinit\>(Snappy.java:48)
    at org.xerial.snappy.SnappyInputStream.hasNextChunk(SnappyInputStream.java:351)
    at org.xerial.snappy.SnappyInputStream.rawRead(SnappyInputStream.java:159)
    at org.xerial.snappy.SnappyInputStream.read(SnappyInputStream.java:142)
    at java.io.InputStream.read(InputStream.java:101)
    at kafka.message.ByteBufferMessageSet$$anonfun$decompress$1.apply$mcI$sp(ByteBufferMessageSet.scala:68)
    at kafka.message.ByteBufferMessageSet$$anonfun$decompress$1.apply(ByteBufferMessageSet.scala:68)
    at kafka.message.ByteBufferMessageSet$$anonfun$decompress$1.apply(ByteBufferMessageSet.scala:68)
    at scala.collection.immutable.Stream$.continually(Stream.scala:1129)
    at kafka.message.ByteBufferMessageSet$.decompress(ByteBufferMessageSet.scala:68)
    at kafka.message.ByteBufferMessageSet$$anon$1.makeNextOuter(ByteBufferMessageSet.scala:178)
    at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:191)
    at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:145)
    at kafka.utils.IteratorTemplate.maybeComputeNext(IteratorTemplate.scala:66)
    at kafka.utils.IteratorTemplate.hasNext(IteratorTemplate.scala:58)
{code}

{code}
/tmp] ldd snappy-1.0.5-libsnappyjava.so
./snappy-1.0.5-libsnappyjava.so: /usr/lib64/libstdc++.so.6: version `GLIBCXX\_3.4.9' not found (required by ./snappy-1.0.5-libsnappyjava.so)
./snappy-1.0.5-libsnappyjava.so: /usr/lib64/libstdc++.so.6: version `GLIBCXX\_3.4.11' not found (required by ./snappy-1.0.5-libsnappyjava.so)
	linux-vdso.so.1 =\>  (0x00007fff81dfc000)
	libstdc++.so.6 =\> /usr/lib64/libstdc++.so.6 (0x00002b554b430000)
	libm.so.6 =\> /lib64/libm.so.6 (0x00002b554b731000)
	libc.so.6 =\> /lib64/libc.so.6 (0x00002b554b9b4000)
	libgcc\_s.so.1 =\> /lib64/libgcc\_s.so.1 (0x00002b554bd0c000)
	/lib64/ld-linux-x86-64.so.2 (0x00000033e2a00000)
{code}

{code}
/tmp] ldd snappy-1.1.1M1-be6ba593-9ac7-488e-953e-ba5fd9530ee1-libsnappyjava.so
ldd: warning: you do not have execution permission for `./snappy-1.1.1M1-be6ba593-9ac7-488e-953e-ba5fd9530ee1-libsnappyjava.so'
	linux-vdso.so.1 =\>  (0x00007fff1c132000)
	libstdc++.so.6 =\> /usr/lib64/libstdc++.so.6 (0x00002b9548319000)
	libm.so.6 =\> /lib64/libm.so.6 (0x00002b954861a000)
	libc.so.6 =\> /lib64/libc.so.6 (0x00002b954889d000)
	libgcc\_s.so.1 =\> /lib64/libgcc\_s.so.1 (0x00002b9548bf5000)
	/lib64/ld-linux-x86-64.so.2 (0x00000033e2a00000)
{code}


---

* [KAFKA-1364](https://issues.apache.org/jira/browse/KAFKA-1364) | *Major* | **ReplicaManagerTest hard-codes log dir**

Saw the following unit test failure. This is probably due to that the hard-coded log.dir conflicts with the default config when running a standalone sack.

kafka.server.ReplicaManagerTest \> testHighwaterMarkDirectoryMapping FAILED
    java.lang.IllegalArgumentException: requirement failed: Corrupt index found, index file (/tmp/kafka-logs/test-topic-1/00000000000000000000.index) has non-zero size but the last offset is 0 and the base offset is 0
        at scala.Predef$.require(Predef.scala:145)
        at kafka.log.OffsetIndex.sanityCheck(OffsetIndex.scala:352)
        at kafka.log.Log$$anonfun$loadSegments$5.apply(Log.scala:159)
        at kafka.log.Log$$anonfun$loadSegments$5.apply(Log.scala:158)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at scala.collection.JavaConversions$JIteratorWrapper.foreach(JavaConversions.scala:474)
        at scala.collection.IterableLike$class.foreach(IterableLike.scala:79)
        at scala.collection.JavaConversions$JCollectionWrapper.foreach(JavaConversions.scala:495)
        at kafka.log.Log.loadSegments(Log.scala:158)
        at kafka.log.Log.\<init\>(Log.scala:64)
        at kafka.server.ReplicaManagerTest.testHighwaterMarkDirectoryMapping(ReplicaManagerTest.scala:43)


---

* [KAFKA-1359](https://issues.apache.org/jira/browse/KAFKA-1359) | *Major* | **Add topic/broker metrics once new topic/broker is discovered**

Today some topic/broker level metrics are only added the first time such an event (record-retry, record-error, etc) happens. This has a potential issue for customized mbean reporter which needs to register all the sensors at the time the new broker/topic is discovered. It is better to add such metrics at the very beginning when new topic/brokers are discovered.


---

* [KAFKA-1353](https://issues.apache.org/jira/browse/KAFKA-1353) | *Major* | **report capacity used by request thread pool and network thread pool**

For monitoring and alerting, it would be very useful for the broker to report the percentage of the request thread pool and network thread pool used.


---

* [KAFKA-1344](https://issues.apache.org/jira/browse/KAFKA-1344) | *Major* | **Kafka-console-producer.sh support snappy compression**

Wish kafka-console-producer.sh support snappy compression.
Thanks.


---

* [KAFKA-1337](https://issues.apache.org/jira/browse/KAFKA-1337) | *Major* | **Rationalize new producer configs**

New producer configs have been added somewhat haphazardly. Before we consider the producer final, let's do the following:
1. Go back and think about all the config names and make sure they are really what we want.
2. Add doc strings for all the configs
3. Make the config keys non-public.
4. Add a feature to differentiate important from non-important configs.
5. Add code to generate the website documentation off the internal config docs.


---

* [KAFKA-1325](https://issues.apache.org/jira/browse/KAFKA-1325) | *Major* | **Fix inconsistent per topic log configs**

Related thread from the user mailing list - http://mail-archives.apache.org/mod\_mbox/kafka-users/201403.mbox/%3Cd8f6f3857b82c4ccd8725aba6fd68cb8%40cweb01.nmdf.nhnsystem.com%3E

Our documentation is a little confusing on the log configs. 

The log property for retention.ms is in millis but the server default it maps to is in minutes.
Same is true for segment.ms as well. We could either improve the docs or
change the per-topic configs to be consistent with the server defaults.


---

* [KAFKA-1318](https://issues.apache.org/jira/browse/KAFKA-1318) | *Major* | **waiting for producer to stop is not reliable in system tests**

Occasionally, system hangs because the producer already stopped, but the script was still waiting for the producer to stop.


---

* [KAFKA-1312](https://issues.apache.org/jira/browse/KAFKA-1312) | *Trivial* | **Update gitignore to ignore IDE generated files**

Generated IDE files for Intellij and Eclipse are not marked as ignore in Kafka.
Provided patch adds these into gitignore.


---

* [KAFKA-1308](https://issues.apache.org/jira/browse/KAFKA-1308) | *Blocker* | **Publish jar of test utilities to Maven**

For projects that use Kafka, and want to write tests that exercise Kafka (in our case, Samza), it's useful to have access to Kafka's test utility classes such as kafka.zk.EmbeddedZookeeper and kafka.utils.TestUtils. We can use {{./gradlew testJar}} to build jar files that contain those classes, but as far as I know, these are currently not made available in a binary release.

At the moment, we have to check those kafka\*-test.jar files into the Samza repository. To avoid that, would it be possible to publish those jars of tests to Maven, so that they fit into the normal dependency management?

Or perhaps, if publishing the tests themselves is not appropriate, we could move the test utilities into a separate module that is published, and make the tests depend on that module?


---

* [KAFKA-1307](https://issues.apache.org/jira/browse/KAFKA-1307) | *Major* | **potential socket leak in new producer and clean up**

Address the delta review comments from kafka-1227.

20. Selector and Sender: need to close socket channel on IOException in addition to UnresolvedHostnameException.
21. AbstractConfig:
21.1 To be consistent, we probably should change the return value of the following api from Long to long.
public Long getLong(String key)
21.1 Could we also add getDouble(String key)?
22. Metadata.fetch(): The wait time is incorrect when there is an InterruptedException.
23. Add comments on BufferPool.allocate() and Struct.instanceOf() for clarification.
24. Various other minor fixes for mis-spelling.


---

* [KAFKA-1305](https://issues.apache.org/jira/browse/KAFKA-1305) | *Blocker* | **Controller can hang on controlled shutdown with auto leader balance enabled**

This is relatively easy to reproduce especially when doing a rolling bounce.
What happened here is as follows:

1. The previous controller was bounced and broker 265 became the new controller.
2. I went on to do a controlled shutdown of broker 265 (the new controller).
3. In the mean time the automatically scheduled preferred replica leader election process started doing its thing and starts sending LeaderAndIsrRequests/UpdateMetadataRequests to itself (and other brokers).  (t@113 below).
4. While that's happening, the controlled shutdown process on 265 succeeds and proceeds to deregister itself from ZooKeeper and shuts down the socket server.
5. (ReplicaStateMachine actually removes deregistered brokers from the controller channel manager's list of brokers to send requests to.  However, that removal cannot take place (t@18 below) because preferred replica leader election task owns the controller lock.)
6. So the request thread to broker 265 gets into infinite retries.
7. The entire broker shutdown process is blocked on controller shutdown for the same reason (it needs to acquire the controller lock).

Relevant portions from the thread-dump:

"Controller-265-to-broker-265-send-thread" - Thread t@113
   java.lang.Thread.State: TIMED\_WAITING
	at java.lang.Thread.sleep(Native Method)
	at kafka.controller.RequestSendThread$$anonfun$liftedTree1$1$1.apply$mcV$sp(ControllerChannelManager.scala:143)
	at kafka.utils.Utils$.swallow(Utils.scala:167)
	at kafka.utils.Logging$class.swallowWarn(Logging.scala:92)
	at kafka.utils.Utils$.swallowWarn(Utils.scala:46)
	at kafka.utils.Logging$class.swallow(Logging.scala:94)
	at kafka.utils.Utils$.swallow(Utils.scala:46)
	at kafka.controller.RequestSendThread.liftedTree1$1(ControllerChannelManager.scala:143)
	at kafka.controller.RequestSendThread.doWork(ControllerChannelManager.scala:131)
	- locked java.lang.Object@6dbf14a7
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)

   Locked ownable synchronizers:
	- None

...

"Thread-4" - Thread t@17
   java.lang.Thread.State: WAITING on java.util.concurrent.locks.ReentrantLock$NonfairSync@4836840 owned by: kafka-scheduler-0
	at sun.misc.Unsafe.park(Native Method)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireQueued(AbstractQueuedSynchronizer.java:842)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire(AbstractQueuedSynchronizer.java:1178)
	at java.util.concurrent.locks.ReentrantLock$NonfairSync.lock(ReentrantLock.java:186)
	at java.util.concurrent.locks.ReentrantLock.lock(ReentrantLock.java:262)
	at kafka.utils.Utils$.inLock(Utils.scala:536)
	at kafka.controller.KafkaController.shutdown(KafkaController.scala:642)
	at kafka.server.KafkaServer$$anonfun$shutdown$9.apply$mcV$sp(KafkaServer.scala:242)
	at kafka.utils.Utils$.swallow(Utils.scala:167)
	at kafka.utils.Logging$class.swallowWarn(Logging.scala:92)
	at kafka.utils.Utils$.swallowWarn(Utils.scala:46)
	at kafka.utils.Logging$class.swallow(Logging.scala:94)
	at kafka.utils.Utils$.swallow(Utils.scala:46)
	at kafka.server.KafkaServer.shutdown(KafkaServer.scala:242)
	at kafka.server.KafkaServerStartable.shutdown(KafkaServerStartable.scala:46)
	at kafka.Kafka$$anon$1.run(Kafka.scala:42)

...

"kafka-scheduler-0" - Thread t@117
   java.lang.Thread.State: WAITING on java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject@1dc407fc
	at sun.misc.Unsafe.park(Native Method)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)
	at java.util.concurrent.LinkedBlockingQueue.put(LinkedBlockingQueue.java:306)
	at kafka.controller.ControllerChannelManager.sendRequest(ControllerChannelManager.scala:57)
	- locked java.lang.Object@578b748f
	at kafka.controller.KafkaController.sendRequest(KafkaController.scala:657)
	at kafka.controller.ControllerBrokerRequestBatch$$anonfun$sendRequestsToBrokers$2.apply(ControllerChannelManager.scala:290)
	at kafka.controller.ControllerBrokerRequestBatch$$anonfun$sendRequestsToBrokers$2.apply(ControllerChannelManager.scala:282)
	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
	at scala.collection.Iterator$class.foreach(Iterator.scala:631)
	at scala.collection.mutable.HashTable$$anon$1.foreach(HashTable.scala:161)
	at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:194)
	at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
	at scala.collection.mutable.HashMap.foreach(HashMap.scala:80)
	at kafka.controller.ControllerBrokerRequestBatch.sendRequestsToBrokers(ControllerChannelManager.scala:282)
	at kafka.controller.PartitionStateMachine.handleStateChanges(PartitionStateMachine.scala:126)
	at kafka.controller.KafkaController.onPreferredReplicaElection(KafkaController.scala:612)
	at kafka.controller.KafkaController$$anonfun$kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance$4$$anonfun$apply$17$$anonfun$apply$5.apply$mcV$sp(KafkaController.scala:1119)
	at kafka.controller.KafkaController$$anonfun$kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance$4$$anonfun$apply$17$$anonfun$apply$5.apply(KafkaController.scala:1114)
	at kafka.controller.KafkaController$$anonfun$kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance$4$$anonfun$apply$17$$anonfun$apply$5.apply(KafkaController.scala:1114)
	at kafka.utils.Utils$.inLock(Utils.scala:538)
	at kafka.controller.KafkaController$$anonfun$kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance$4$$anonfun$apply$17.apply(KafkaController.scala:1111)
	at kafka.controller.KafkaController$$anonfun$kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance$4$$anonfun$apply$17.apply(KafkaController.scala:1109)
	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
	at scala.collection.Iterator$class.foreach(Iterator.scala:631)
	at scala.collection.mutable.HashTable$$anon$1.foreach(HashTable.scala:161)
	at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:194)
	at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
	at scala.collection.mutable.HashMap.foreach(HashMap.scala:80)
	at kafka.controller.KafkaController$$anonfun$kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance$4.apply(KafkaController.scala:1109)
	at kafka.controller.KafkaController$$anonfun$kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance$4.apply(KafkaController.scala:1088)
	at scala.collection.immutable.HashMap$HashMap1.foreach(HashMap.scala:125)
	at scala.collection.immutable.HashMap$HashTrieMap.foreach(HashMap.scala:344)
	at kafka.controller.KafkaController.kafka$controller$KafkaController$$checkAndTriggerPartitionRebalance(KafkaController.scala:1088)
	at kafka.controller.KafkaController$$anonfun$onControllerFailover$1.apply$mcV$sp(KafkaController.scala:323)
	at kafka.utils.KafkaScheduler$$anon$1.run(KafkaScheduler.scala:100)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
	at java.util.concurrent.FutureTask$Sync.innerRunAndReset(FutureTask.java:317)
	at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:150)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$101(ScheduledThreadPoolExecutor.java:98)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.runPeriodic(ScheduledThreadPoolExecutor.java:180)
	at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:204)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
	at java.lang.Thread.run(Thread.java:662)

   Locked ownable synchronizers:
	- locked java.util.concurrent.locks.ReentrantLock$NonfairSync@4836840

	- locked java.util.concurrent.locks.ReentrantLock$NonfairSync@4918530

...

"ZkClient-EventThread-18-/kafka-shadow" - Thread t@18
   java.lang.Thread.State: WAITING on java.util.concurrent.locks.ReentrantLock$NonfairSync@4836840 owned by: kafka-scheduler-0
	at sun.misc.Unsafe.park(Native Method)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireQueued(AbstractQueuedSynchronizer.java:842)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire(AbstractQueuedSynchronizer.java:1178)
	at java.util.concurrent.locks.ReentrantLock$NonfairSync.lock(ReentrantLock.java:186)
	at java.util.concurrent.locks.ReentrantLock.lock(ReentrantLock.java:262)
	at kafka.utils.Utils$.inLock(Utils.scala:536)
	at kafka.controller.ReplicaStateMachine$BrokerChangeListener.handleChildChange(ReplicaStateMachine.scala:328)
	at org.I0Itec.zkclient.ZkClient$7.run(ZkClient.java:568)
	at org.I0Itec.zkclient.ZkEventThread.run(ZkEventThread.java:71)


---

* [KAFKA-1304](https://issues.apache.org/jira/browse/KAFKA-1304) | *Major* | **unregistered mbean exception in new producer**

Saw the following when running the new producer in ProducerPerformance.

[2014-03-03 12:44:07,619] ERROR Error when closing producer (kafka.perf.ProducerPerformance$)
org.apache.kafka.common.KafkaException: Error unregistering mbean
        at org.apache.kafka.common.metrics.JmxReporter.unregister(JmxReporter.java:100)
        at org.apache.kafka.common.metrics.JmxReporter.close(JmxReporter.java:90)
        at org.apache.kafka.common.metrics.Metrics.close(Metrics.java:204)
        at org.apache.kafka.clients.producer.KafkaProducer.close(KafkaProducer.java:279)
        at kafka.perf.ProducerPerformance$NewShinyProducer.close(ProducerPerformance.scala:222)
        at kafka.perf.ProducerPerformance$ProducerThread.run(ProducerPerformance.scala:299)
        at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
        at java.lang.Thread.run(Thread.java:662)
Caused by: javax.management.InstanceNotFoundException: kafka:type=producer
        at com.sun.jmx.interceptor.DefaultMBeanServerInterceptor.getMBean(DefaultMBeanServerInterceptor.java:1094)
        at com.sun.jmx.interceptor.DefaultMBeanServerInterceptor.exclusiveUnregisterMBean(DefaultMBeanServerInterceptor.java:415)
        at com.sun.jmx.interceptor.DefaultMBeanServerInterceptor.unregisterMBean(DefaultMBeanServerInterceptor.java:403)
        at com.sun.jmx.mbeanserver.JmxMBeanServer.unregisterMBean(JmxMBeanServer.java:506)
        at org.apache.kafka.common.metrics.JmxReporter.unregister(JmxReporter.java:98)
        ... 8 more


---

* [KAFKA-1302](https://issues.apache.org/jira/browse/KAFKA-1302) | *Major* | **cleanup logging in new producer**

1. When we hit an error in producer, we call the callback with a null RecordMetadata. If the callback tries to get the topic/partition, it will hit a NullPointerException. It's probably better to create a RecordMetadata with -1 as the offset.
2. When printing out a Struct, we don't print out the content wrapped in an array properly. So, we will see sth like the following.
[2014-03-09 11:56:24,364] INFO Created 1 requests: [InFlightRequest(expectResponse=true, batches={test-0=RecordBatch(topicPartition=test-0, recordCount=1)}, request=RequestSend(header={api\_key=0,api\_version=0,correlation\_id=1,client\_id=perf-test}, body={acks=-1,timeout=3000,topic\_data=[Ljava.lang.Object;@700a4488}))] (org.apache.kafka.clients.producer.internals.Sender)
3. Need to override the toString() in ProduceResponse.
4. Sender.run(now): It would be good to log metadata request too.
5. Sender.handleDisconnects(): It would be useful to log the correlation id of cancelled inflight requests


---

* [KAFKA-1301](https://issues.apache.org/jira/browse/KAFKA-1301) | *Major* | **system testcase\_0206 fails using the new producer**

The problem is that the producer doesn't drain the unsent data properly on close. The problem is in the following code in Sender.run(). It's possible for this loop to exit with unfinished requests.

        // okay we stopped accepting requests but there may still be
        // requests in the accumulator or waiting for acknowledgment,
        // wait until these are completed.
        int unsent = 0;
        do {
            try {
                unsent = run(time.milliseconds());
            } catch (Exception e) {
                log.error("Uncaught error in kafka producer I/O thread: ", e);
            }
        } while (unsent \> 0 \|\| this.inFlightRequests.totalInFlightRequests() \> 0);

Suppose that all produce requests are being sent, but the sender is waiting for responses. Then the broker failed. In handling disconnects, we cleared all inflight requests. When we check the condition in the while clause, there is no unsent data and no in flight requests. However, failed records have been added to RecordAccumulator and are ready to be sent in the next iteration.


---

* [KAFKA-1298](https://issues.apache.org/jira/browse/KAFKA-1298) | *Major* | **Controlled shutdown tool doesn't seem to work out of the box**

Download Kafka and try to use our shutdown tool. Got this:

bin/kafka-run-class.sh kafka.admin.ShutdownBroker --zookeeper localhost:2181 --broker 0
[2014-03-06 16:58:23,636] ERROR Operation failed due to controller failure (kafka.admin.ShutdownBroker$)
java.io.IOException: Failed to retrieve RMIServer stub: javax.naming.ServiceUnavailableException [Root exception is java.rmi.ConnectException: Connection refused to host: jkreps-mn.linkedin.biz; nested exception is: 
	java.net.ConnectException: Connection refused]
	at javax.management.remote.rmi.RMIConnector.connect(RMIConnector.java:340)
	at javax.management.remote.JMXConnectorFactory.connect(JMXConnectorFactory.java:249)
	at kafka.admin.ShutdownBroker$.kafka$admin$ShutdownBroker$$invokeShutdown(ShutdownBroker.scala:56)
	at kafka.admin.ShutdownBroker$.main(ShutdownBroker.scala:109)
	at kafka.admin.ShutdownBroker.main(ShutdownBroker.scala)
Caused by: javax.naming.ServiceUnavailableException [Root exception is java.rmi.ConnectException: Connection refused to host: jkreps-mn.linkedin.biz; nested exception is: 
	java.net.ConnectException: Connection refused]
	at com.sun.jndi.rmi.registry.RegistryContext.lookup(RegistryContext.java:101)
	at com.sun.jndi.toolkit.url.GenericURLContext.lookup(GenericURLContext.java:185)
	at javax.naming.InitialContext.lookup(InitialContext.java:392)
	at javax.management.remote.rmi.RMIConnector.findRMIServerJNDI(RMIConnector.java:1888)
	at javax.management.remote.rmi.RMIConnector.findRMIServer(RMIConnector.java:1858)
	at javax.management.remote.rmi.RMIConnector.connect(RMIConnector.java:257)
	... 4 more
Caused by: java.rmi.ConnectException: Connection refused to host: jkreps-mn.linkedin.biz; nested exception is: 
	java.net.ConnectException: Connection refused
	at sun.rmi.transport.tcp.TCPEndpoint.newSocket(TCPEndpoint.java:601)
	at sun.rmi.transport.tcp.TCPChannel.createConnection(TCPChannel.java:198)
	at sun.rmi.transport.tcp.TCPChannel.newConnection(TCPChannel.java:184)
	at sun.rmi.server.UnicastRef.newCall(UnicastRef.java:322)
	at sun.rmi.registry.RegistryImpl\_Stub.lookup(Unknown Source)
	at com.sun.jndi.rmi.registry.RegistryContext.lookup(RegistryContext.java:97)
	... 9 more
Caused by: java.net.ConnectException: Connection refused
	at java.net.PlainSocketImpl.socketConnect(Native Method)
	at java.net.PlainSocketImpl.doConnect(PlainSocketImpl.java:382)
	at java.net.PlainSocketImpl.connectToAddress(PlainSocketImpl.java:241)
	at java.net.PlainSocketImpl.connect(PlainSocketImpl.java:228)
	at java.net.SocksSocketImpl.connect(SocksSocketImpl.java:431)
	at java.net.Socket.connect(Socket.java:527)
	at java.net.Socket.connect(Socket.java:476)
	at java.net.Socket.\<init\>(Socket.java:373)
	at java.net.Socket.\<init\>(Socket.java:187)
	at sun.rmi.transport.proxy.RMIDirectSocketFactory.createSocket(RMIDirectSocketFactory.java:22)
	at sun.rmi.transport.proxy.RMIMasterSocketFactory.createSocket(RMIMasterSocketFactory.java:128)
	at sun.rmi.transport.tcp.TCPEndpoint.newSocket(TCPEndpoint.java:595)
	... 14 more
Oh god, RMI?????!!!???

Presumably this is because we stopped setting the JMX port by default. This is good because setting the JMX port breaks the quickstart which requires running multiple nodes on a single machine. The root cause imo is just using RMI here instead of our regular RPC.


---

* [KAFKA-1297](https://issues.apache.org/jira/browse/KAFKA-1297) | *Major* | **releaseTarGz target needs signing task**

./gradlew releaseTarGz

three warnings found
:core:processResources UP-TO-DATE
:core:classes
:core:copyDependantLibs UP-TO-DATE
:core:jar
:core:signArchives FAILED

FAILURE: Build failed with an exception.

\* What went wrong:
Execution failed for task ':core:signArchives'.
\> Cannot perform signing task ':core:signArchives' because it has no configured signatory


---

* [KAFKA-1294](https://issues.apache.org/jira/browse/KAFKA-1294) | *Major* | **Enable leadership balancing by default**

We should change 
  auto.leader.rebalance.enable=true

The current state where any time nodes are restarted the traffic gets all lopsided is very unintuitive.

It sounds like the only reason we haven't done this is because we aren't sure it works. We should just try it in an integration env and the system tests and then make it the default.


---

* [KAFKA-1291](https://issues.apache.org/jira/browse/KAFKA-1291) | *Major* | **Make wrapper shell scripts for important tools**

It is nice to have a proper command for the important tools just to help with discoverability. I noticed that mirror maker doesn't have such a wrapper. Neither does consumer offset checker. It would be good to do an audit and think of any tools that should have a wrapper that don't.


---

* [KAFKA-1280](https://issues.apache.org/jira/browse/KAFKA-1280) | *Major* | **exclude kafka-clients jar from dependant-libs dir**

We already include the built kafka-clients jar in the kafka-run-class path. There is no need to copy it over to dependant-libs. Duplicates add confusion.


---

* [KAFKA-1278](https://issues.apache.org/jira/browse/KAFKA-1278) | *Major* | **More flexible helper scripts**

This patch fixes all non override-able environment variables. Being able to override the heap allocation, log directory, and log4j configuration is very useful for deployments that don't subscribe to the default values.


---

* [KAFKA-1276](https://issues.apache.org/jira/browse/KAFKA-1276) | *Major* | **Provide a list of config overrides available when running kafka.topics**

It would be helpful to have the help for kafka-topics enumerate a list of the per-topic configuration overrides that are available with the --config option.


---

* [KAFKA-1240](https://issues.apache.org/jira/browse/KAFKA-1240) | *Major* | **Add ability to existing system tests to use the new producer client**

We need to add the new producer to existing system tests. Until we release the new producer (0.9), the system tests will run the same tests twice - once on the 0.8.x producer and once on the 0.9 producer.


---

* [KAFKA-1238](https://issues.apache.org/jira/browse/KAFKA-1238) | *Critical* | **New producer hangs in a loop detecting metadata for auto created topics**

New producer hangs in a loop detecting metadata for auto created topics -

java.lang.IllegalStateException: No known nodes.
	at kafka.common.Cluster.nextNode(Cluster.java:97)
	at kafka.clients.producer.internals.Sender.maybeMetadataRequest(Sender.java:154)
	at kafka.clients.producer.internals.Sender.run(Sender.java:120)
	at kafka.clients.producer.internals.Sender.run(Sender.java:84)
	at java.lang.Thread.run(Thread.java:695)
java.lang.IllegalStateException: No known nodes.
	at kafka.common.Cluster.nextNode(Cluster.java:97)
	at kafka.clients.producer.internals.Sender.maybeMetadataRequest(Sender.java:154)
	at kafka.clients.producer.internals.Sender.run(Sender.java:120)
	at kafka.clients.producer.internals.Sender.run(Sender.java:84)
	at java.lang.Thread.run(Thread.java:695)
java.lang.IllegalStateException: No known nodes.
	at kafka.common.Cluster.nextNode(Cluster.java:97)
	at kafka.clients.producer.internals.Sender.maybeMetadataRequest(Sender.java:154)
	at kafka.clients.producer.internals.Sender.run(Sender.java:120)
	at kafka.clients.producer.internals.Sender.run(Sender.java:84)
	at java.lang.Thread.run(Thread.java:695)
java.lang.IllegalStateException: No known nodes.
	at kafka.common.Cluster.nextNode(Cluster.java:97)
	at kafka.clients.producer.internals.Sender.maybeMetadataRequest(Sender.java:154)
	at kafka.clients.producer.internals.Sender.run(Sender.java:120)
	at kafka.clients.producer.internals.Sender.run(Sender.java:84)
	at java.lang.Thread.run(Thread.java:695)
java.lang.IllegalStateException: No known nodes.
	at kafka.common.Cluster.nextNode(Cluster.java:97)
	at kafka.clients.producer.internals.Sender.maybeMetadataRequest(Sender.java:154)
	at kafka.clients.producer.internals.Sender.run(Sender.java:120)
	at kafka.clients.producer.internals.Sender.run(Sender.java:84)
	at java.lang.Thread.run(Thread.java:695)
java.lang.IllegalStateException: No known nodes.
	at kafka.common.Cluster.nextNode(Cluster.java:97)
	at kafka.clients.producer.internals.Sender.maybeMetadataRequest(Sender.java:154)
	at kafka.clients.producer.internals.Sender.run(Sender.java:120)
	at kafka.clients.producer.internals.Sender.run(Sender.java:84)
	at java.lang.Thread.run(Thread.java:695)

The producer needs to be restarted to start sending data to the auto created topic


---

* [KAFKA-1235](https://issues.apache.org/jira/browse/KAFKA-1235) | *Major* | **Enable server to indefinitely retry on controlled shutdown**

Today the kafka server can exit silently if it hits an exception that is swallowed during controlled shut down or "controlled.shutdown.max.retries" has been exhausted. It is better to add an option to let it retry indefinitely.

Also will fix some other loose-check bugs on socket-closing logic.


---

* [KAFKA-1227](https://issues.apache.org/jira/browse/KAFKA-1227) | *Major* | **Code dump of new producer**

The plan is to take a dump of the producer code "as is" and then do a series of post-commit reviews to get it into shape. This bug tracks just the code dump.


---

* [KAFKA-1212](https://issues.apache.org/jira/browse/KAFKA-1212) | *Major* | **System test exception handling does not stop background producer threads**

When exception is thrown, the system test script stops all known entities. However, the background producer thread cannot be stopped since it does not register its pid in the testcase environment. We need to specifically stop them.


---

* [KAFKA-1210](https://issues.apache.org/jira/browse/KAFKA-1210) | *Trivial* | **Windows Bat files are not working properly**

The bat files are not working properly.
The paths in them are invalid.
They have not been updated to reflect the changes made to the shell scripts.


---

* [KAFKA-1193](https://issues.apache.org/jira/browse/KAFKA-1193) | *Major* | **Data loss if broker is killed using kill -9**

We are having kafka cluster of 2 nodes. (Using Kafka 0.8.0 version)
Replication Factor: 2
Number of partitions: 2

Actual Behaviour:
-------------------------
Out of two nodes, if leader node goes down then data lost happens.

Steps to Reproduce:
------------------------------
1. Create a 2 node kafka cluster with replication factor 2
2. Start the Kafka cluster
3. Create a topic lets say "test-trunk111"
4. Restart any one node.
5. Check topic status using kafka-list-topic tool.
topic isr status is:

topic: test-trunk111    partition: 0    leader: 0    replicas: 1,0    isr: 0,1
topic: test-trunk111    partition: 1    leader: 0    replicas: 0,1    isr: 0,1

If there is only one broker node in isr list then wait for some time and again check isr status of topic. There should be 2 brokers in isr list.
6. Start producing the data.
7. Kill leader node (borker-0 in our case) meanwhile of data producing.
8. After all data is produced start consumer.
9. Observe the behaviour. There is data loss.

After leader goes down, topic isr status is:

topic: test-trunk111    partition: 0    leader: 1    replicas: 1,0    isr: 1
topic: test-trunk111    partition: 1    leader: 1    replicas: 0,1    isr: 1

We have tried below things to avoid data loss:
----------------------------------------------------------------

1. Configured "request.required.acks=-1" in producer configuration because as mentioned in documentation http://kafka.apache.org/documentation.html#producerconfigs, setting this value to -1 provides guarantee that no messages will be lost.
2. Increased the "message.send.max.retries" from 3 to 10 in producer configuration.

3. Set "controlled.shutdown.enable" to true in broker configuration.

4. Tested with Kafka-0.8.1 after applying patch KAFKA-1188.patch available on https://issues.apache.org/jira/browse/KAFKA-1188 

Nothing work out from above things in case of leader node is killed using "kill -9 \<pid\>".

Expected Behaviour:
----------------------------
No data should be lost.


---

* [KAFKA-1192](https://issues.apache.org/jira/browse/KAFKA-1192) | *Major* | **Enable DumpLogSegments tool to deserialize messages**

Currently the DumpLogSegments tool reads the message payloads as strings by default, which will not display the messages correctly if the messages are deserialized with another class. By enablding deserialization with a customized class we can use this tool to debug more issues where I need to read the message content.


---

* [KAFKA-1189](https://issues.apache.org/jira/browse/KAFKA-1189) | *Minor* | **kafka-server-stop.sh doesn't stop broker**

Just before the 0.8.0 release this commit[1] changed the signal in the kafka-server-stop.sh script from SIGTERM to SIGINT. This doesn't seem to stop the broker. Changing this back to SIGTERM (or -15) fixes the issues.

[1] - https://github.com/apache/kafka/commit/51de7c55d2b3107b79953f401fc8c9530bd0eea0


---

* [KAFKA-1180](https://issues.apache.org/jira/browse/KAFKA-1180) | *Major* | **WhiteList topic filter gets a NullPointerException on complex Regex**

We are needing to create a stream selector that essentially combines the logic of the BlackList and WhiteList classes (which is not easily exposed in the high-level consumer api).  That is, we want to select a topic that contains a certain prefix, as long as it doesn't also contain a secondary string.

This should be easy to do with ordinary java Regex's, but we're running into some issues, trying to do this with the WhiteList class only.

We have a pattern that uses negative lookahead, like this:

"test-(?!bad\\b)[\\w]+"

So this should select a topic like: "test-good", but exclude a topic like "test-bad", and also exclude a topic without the "test" prefix, like "foo-bar".

Instead, what we see is a NullPointerException in the call to createMessageStreamsByFilter (after having previously sent a message to "test-good" followed by a message to "test-bad"):

21700 [ConsumerFetcherThread-group1\_square-1a7ac0.local-1386869343370-dc19c7dc-0-1946108683] ERROR kafka.consumer.ConsumerFetcherThread  - [ConsumerFetcherThread-group1\_square-1a7ac0.local-1386869343370-dc19c7dc-0-1946108683], Error due to 
kafka.common.KafkaException: error processing data for partition [test-bad,0] offset 0
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$1$$anonfun$apply$mcV$sp$2.apply(AbstractFetcherThread.scala:137)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$1$$anonfun$apply$mcV$sp$2.apply(AbstractFetcherThread.scala:109)
	at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$1.apply$mcV$sp(AbstractFetcherThread.scala:109)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$1.apply(AbstractFetcherThread.scala:109)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$1.apply(AbstractFetcherThread.scala:109)
	at kafka.utils.Utils$.inLock(Utils.scala:565)
	at kafka.server.AbstractFetcherThread.processFetchRequest(AbstractFetcherThread.scala:108)
	at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:86)
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)
Caused by: java.lang.NullPointerException
	at kafka.consumer.PartitionTopicInfo.enqueue(PartitionTopicInfo.scala:60)
	at kafka.consumer.ConsumerFetcherThread.processPartitionData(ConsumerFetcherThread.scala:49)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$1$$anonfun$apply$mcV$sp$2.apply(AbstractFetcherThread.scala:128)
	... 9 more


---

* [KAFKA-1179](https://issues.apache.org/jira/browse/KAFKA-1179) | *Major* | **createMessageStreams() in javaapi.ZookeeperConsumerConnector does not throw**

In kafka.consumer.javaapi.ZookeeperConsumerConnector.scala, the createMessageStreams() directly calls underlying.consume() (line 80)
In kafka.consumer.ZookeeperConsumerConnector.scala, the createMessageStreams() throws an exception if it has been called more than once (line 133). 

The javaapi should throw if it is called more than once, just like the scala api.


---

* [KAFKA-1147](https://issues.apache.org/jira/browse/KAFKA-1147) | *Major* | **Consumer socket timeout should be greater than fetch max wait**

From the mailing list:
The consumer-config documentation states that "The actual timeout set
will be max.fetch.wait + socket.timeout.ms." - however, that change
seems to have been lost in the code a while ago - we should either fix the doc or re-introduce the addition.


---

* [KAFKA-1146](https://issues.apache.org/jira/browse/KAFKA-1146) | *Trivial* | **toString() on KafkaStream gets stuck indefinitely**

There is no toString implementation for KafkaStream, so if a user tries to print the stream it falls back to default toString implementation which tries to iterate over the collection and gets stuck indefinitely as it awaits messages. KafkaStream could instead override the toString and return a verbose description of the stream with topic name etc.

println("Current stream: " + stream) // This call never returns


---

* [KAFKA-1124](https://issues.apache.org/jira/browse/KAFKA-1124) | *Major* | **Sending to a new topic (with auto.create.topics.enable) returns ERROR**

I had thought this was reported issue, but can't seem to find a previous report for it.

If auto.create.topics.enable is true, a producer still gets an ERROR logged on the first attempt to send a message to a new topic, e.g.:

2013-11-06 03:00:08,638 ERROR [Thread-1] async.DefaultEventHandler - Failed to collate messages by topic, partition due to: Failed to fetch topic metadata for topic: mynewtopic
2013-11-06 03:00:08,638  INFO [Thread-1] async.DefaultEventHandler - Back off for 100 ms before retrying send. Remaining retries = 3

This usually clears itself up immediately on retry (after 100 ms), as handled by the the kafka.producer.async.DefaultEventHandler (with retries enabled).

However, this is logged to the client as an ERROR, and looks scary, when in fact it should have been a normal operation (since we have auto.create.topics.enable=true).

There should be a better interaction here between the producer client and the server.

Perhaps the server can create the topic in flight before returning the metadata request.

Or, if it needs to be asynchronous, it could return a code which indicates something like: "The topic doesn't exist yet, it is being created, try again shortly".....and have the client automatically retry (even if retries not enabled, since it's not an ERROR condition, really).

The ERROR log level is a problem since apps often have alert systems set up to notify when any ERROR happens, etc.....


---

* [KAFKA-1123](https://issues.apache.org/jira/browse/KAFKA-1123) | *Major* | **Broker IPv6 addresses parsed incorrectly**

It seems that broker addresses are parsed incorrectly when IPv6 addresses are supplied.  IPv6 addresses have colons in them, and Kafka seems to be interpreting the first : as the address:port separator.

I have only tried this with the console-producer --broker-list option, so I don't know if this affects anything deeper than the CLI.


---

* [KAFKA-1108](https://issues.apache.org/jira/browse/KAFKA-1108) | *Major* | **when controlled shutdown attempt fails, the reason is not always logged**

In KafkaServer.controlledShutdown(), it initiates a controlled shutdown, and then if there's a failure, it will retry the controlledShutdown.

Looking at the code, there are 2 ways a retry could fail, one with an error response from the controller, and this messaging code:

{code}
info("Remaining partitions to move: %s".format(shutdownResponse.partitionsRemaining.mkString(",")))
info("Error code from controller: %d".format(shutdownResponse.errorCode))
{code}

Alternatively, there could be an IOException, with this code executed:

{code}
            catch {
              case ioe: java.io.IOException =\>
                channel.disconnect()
                channel = null
                // ignore and try again
            }
{code}

And then finally, in either case:

{code}
          if (!shutdownSuceeded) {
            Thread.sleep(config.controlledShutdownRetryBackoffMs)
            warn("Retrying controlled shutdown after the previous attempt failed...")
          }
{code}

It would be nice if the nature of the IOException were logged in either case (I'd be happy with an ioe.getMessage() instead of a full stack trace, as kafka in general tends to be too willing to dump IOException stack traces!).

I suspect, in my case, the actual IOException is a socket timeout (as the time between initial "Starting controlled shutdown...." and the first "Retrying..." message is usually about 35 seconds (the socket timeout + the controlled shutdown retry backoff).  So, it would seem that really, the issue in this case is that controlled shutdown is taking too long.  It would seem sensible instead to have the controller report back to the server (before the socket timeout) that more time is needed, etc.


---

* [KAFKA-1096](https://issues.apache.org/jira/browse/KAFKA-1096) | *Major* | **An old controller coming out of long GC could update its epoch to the latest controller's epoch**

If a controller GCs for too long, we could have two controllers in the cluster. The controller epoch is supposed to minimize the damage in such a situation, as the brokers will reject the requests sent by the controller with an older epoch.

When the old controller is still in long GC, a new controller could be elected. This will fire ControllerEpochListener on the old controller. When it comes out of GC, its ControllerEpochListener will update its own epoch to the new controller's epoch. So both controllers are now able to send out requests with the same controller epoch until the old controller's handleNewSession() can execute in the controller lock. 

ControllerEpochListener does not seem necessary, so we can probably delete it.


---

* [KAFKA-1079](https://issues.apache.org/jira/browse/KAFKA-1079) | *Minor* | **Liars in PrimitiveApiTest that promise to test api in compression mode, but don't do this actually**

Long time ago (0.7) we had ByteBufferMessageSet as a part of api and it's allowed us to control compression. Times goes on and now PrimitiveApiTest have methods that promise to test api with compression enabled, but in fact they don't. Moreover this methods almost entirely copy their counterparts without compression. In particular I'm talking about `testProduceAndMultiFetch` / `testProduceAndMultiFetchWithCompression` and `testMultiProduce`/`testMultiProduceWithCompression` pairs. 

The fix could be super-easy and soundness -- just parameterize methods with producer of each type (with/without compression). Sadly but it isn't feasible for junit3, so straightforward solution is to do the same ugly thing as `testDefaultEncoderProducerAndFetchWithCompression` method does -- forget about class-wide producer and roll-out it's own. I will attach path if that is a problem indeed.


---

* [KAFKA-1045](https://issues.apache.org/jira/browse/KAFKA-1045) | *Major* | **producer zk.connect config**

java.lang.IllegalArgumentException: requirement failed: Missing required property 'metadata.broker.list'


        props.put("zk.connect", KafkaConfig.getZooAddress());

when i config zk, why the above tip appear?


---

* [KAFKA-1041](https://issues.apache.org/jira/browse/KAFKA-1041) | *Major* | **Number of file handles increases indefinitely in producer if broker host is unresolvable**

We found a issue that if broker host is un resolvable, the number of file handle keep increasing for every message we produce and eventually it uses up all available files handles in operating system. If broker itself is not running and broker host name is resolvable, open file handles count stays flat.

lsof output shows number of these open file handles continue to grow for every message we produce.

 java      19631    relango   81u     sock                0,6      0t0  196966526 can't identify protocol

I can easily reproduce this with console producer,  If I run console producer with right hostname and if broker is not running, the console producer will exit after three tries. But If I run console producer with unresolvable broker, it throws below exception and continues to wait for user input, every time I enter new message, it opens socket and file handle count keeps increasing.. 

Here is Exception in producer

ERROR fetching topic metadata for topics [Set(test-1378245487417)] from broker [ArrayBuffer(id:0,host:localhost1,port:6667)] failed (kafka.utils.Utils$)
kafka.common.KafkaException: fetching topic metadata for topics [Set(test-1378245487417)] from broker [ArrayBuffer(id:0,host:localhost1,port:6667)] failed
        at kafka.client.ClientUtils$.fetchTopicMetadata(ClientUtils.scala:51)
        at kafka.producer.BrokerPartitionInfo.updateInfo(BrokerPartitionInfo.scala:82)
        at kafka.producer.async.DefaultEventHandler$$anonfun$handle$2.apply$mcV$sp(DefaultEventHandler.scala:79)
        at kafka.utils.Utils$.swallow(Utils.scala:186)
        at kafka.utils.Logging$class.swallowError(Logging.scala:105)
        at kafka.utils.Utils$.swallowError(Utils.scala:45)
        at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:79)
        at kafka.producer.async.ProducerSendThread.tryToHandle(ProducerSendThread.scala:104)
        at kafka.producer.async.ProducerSendThread$$anonfun$processEvents$3.apply(ProducerSendThread.scala:87)
        at kafka.producer.async.ProducerSendThread$$anonfun$processEvents$3.apply(ProducerSendThread.scala:67)
        at scala.collection.immutable.Stream.foreach(Stream.scala:526)
        at kafka.producer.async.ProducerSendThread.processEvents(ProducerSendThread.scala:66)
        at kafka.producer.async.ProducerSendThread.run(ProducerSendThread.scala:44)
Caused by: java.nio.channels.UnresolvedAddressException
        at sun.nio.ch.Net.checkAddress(Net.java:30)
        at sun.nio.ch.SocketChannelImpl.connect(SocketChannelImpl.java:487)
        at kafka.network.BlockingChannel.connect(BlockingChannel.scala:59)
        at kafka.producer.SyncProducer.connect(SyncProducer.scala:151)
        at kafka.producer.SyncProducer.getOrMakeConnection(SyncProducer.scala:166)
        at kafka.producer.SyncProducer.kafka$producer$SyncProducer$$doSend(SyncProducer.scala:73)
        at kafka.producer.SyncProducer.send(SyncProducer.scala:117)
        at kafka.client.ClientUtils$.fetchTopicMetadata(ClientUtils.scala:37)
        ... 12 more


---

* [KAFKA-1028](https://issues.apache.org/jira/browse/KAFKA-1028) | *Major* | **per topic configuration of preference for consistency over availability**

As discussed with Neha on the ML.

It should be possible to configure a topic to disallow unclean leader election, thus preventing the situation where committed messages can be discarded once a failed leader comes back online in a situation where it was the only ISR.

This would open kafka to additional usecases where the possibility of committted messages being discarded is unacceptable.


---

* [KAFKA-1026](https://issues.apache.org/jira/browse/KAFKA-1026) | *Major* | **Dynamically Adjust Batch Size Upon Receiving MessageSizeTooLargeException**

Among the exceptions that can possibly received in Producer.send(), MessageSizeTooLargeException is currently not recoverable since the producer does not change the batch size but still retries on sending. It is better to have a dynamic batch size adjustment mechanism based on MessageSizeTooLargeException.

This is related to KAFKA-998


---

* [KAFKA-1012](https://issues.apache.org/jira/browse/KAFKA-1012) | *Minor* | **Implement an Offset Manager and hook offset requests to it**

After KAFKA-657, we have a protocol for consumers to commit and fetch offsets from brokers. Currently, consumers are not using this API and directly talking with Zookeeper. 

This Jira will involve following:
1. Add a special topic in kafka for storing offsets
2. Add an OffsetManager interface which would handle storing, accessing, loading and maintaining consumer offsets
3. Implement offset managers for both of these 2 choices : existing ZK based storage or inbuilt storage for offsets.
4. Leader brokers would now maintain an additional hash table of offsets for the group-topic-partitions that they lead
5. Consumers should now use the OffsetCommit and OffsetFetch API


---

* [KAFKA-1002](https://issues.apache.org/jira/browse/KAFKA-1002) | *Major* | **Delete aliveLeaders field from LeaderAndIsrRequest**

After KAFKA-999 is committed, we don't need aliveLeaders in LeaderAndIsrRequest.


---

* [KAFKA-1000](https://issues.apache.org/jira/browse/KAFKA-1000) | *Minor* | **Inbuilt consumer offset management feature for kakfa**

Kafka currently stores offsets in zookeeper. This is a problem for several reasons. First it means the consumer must embed the zookeeper client which is not available in all languages. Secondly offset commits are actually quite frequent and Zookeeper does not scale this kind of high-write load. 

This Jira is for tracking the phase #2 of Offset Management [0]. Joel and I have been working on this. [1] is the overall design of the feature.

[0] : https://cwiki.apache.org/confluence/display/KAFKA/Offset+Management
[1] : https://cwiki.apache.org/confluence/display/KAFKA/Inbuilt+Consumer+Offset+Management


---

* [KAFKA-924](https://issues.apache.org/jira/browse/KAFKA-924) | *Major* | **Specify console consumer properties via a single --property command line parameter**

Quoting Neha from KAFKA-917:

I think the right way to add access to all consumer properties is to specify it through a single --property command line parameter that takes in "key1=value1,key2=value2,..." list. That will make sure we don't have to keep changing console consumer as well add/remove config options on the consumer. Some configs make sense to be top level for console consumer though. Things like topic, from-beginning, groupid etc. Rest can be specified through the "property" parameter.


---

* [KAFKA-909](https://issues.apache.org/jira/browse/KAFKA-909) | *Major* | **Provide support in the producer to specify a stateful instance of an Encoder, like the consuemr allows with the Decoder**

It is very useful to have a shared instance of the Encoder, to do advanced encoding.  The consumer allows the ability to set the Decoder instance and achieve this capability.  The producer should offer the same capability.


---

* [KAFKA-899](https://issues.apache.org/jira/browse/KAFKA-899) | *Major* | **LeaderNotAvailableException the first time a new message for a partition is processed.**

I'm porting some unit tests from 0.7.2 to 0.8.0.  The test does the following, all embedded in the same java process:

-- spins up a zk instance
-- spins up a kafka server using a fresh log directory
-- creates a producer and sends a message
-- creates a high-level consumer and verifies that it can consume the message
-- shuts down the consumer
-- stops the kafka server
-- stops zk

The test seems to be working fine now, however, I consistently see the following exceptions (which from poking around the mailing list seem to be expected?).  If these are expected, can we suppress the logging of these exceptions, since it clutters the output of tests, and presumably, clutters the logs of the running server/consumers, during clean startup and shutdown......

When I call producer.send(), I get:

1071 [main] WARN kafka.producer.BrokerPartitionInfo  - Error while fetching metadata 	partition 0	leader: none	replicas: 	isr: 	isUnderReplicated: false for topic partition [test-topic,0]: [class kafka.common.LeaderNotAvailableException]
1081 [main] WARN kafka.producer.async.DefaultEventHandler  - Failed to collate messages by topic,partition due to
kafka.common.LeaderNotAvailableException: No leader for any partition
	at kafka.producer.async.DefaultEventHandler.kafka$producer$async$DefaultEventHandler$$getPartition(DefaultEventHandler.scala:212)
	at kafka.producer.async.DefaultEventHandler$$anonfun$partitionAndCollate$1.apply(DefaultEventHandler.scala:150)
	at kafka.producer.async.DefaultEventHandler$$anonfun$partitionAndCollate$1.apply(DefaultEventHandler.scala:148)
	at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:57)
	at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:43)
	at kafka.producer.async.DefaultEventHandler.partitionAndCollate(DefaultEventHandler.scala:148)
	at kafka.producer.async.DefaultEventHandler.dispatchSerializedData(DefaultEventHandler.scala:94)
	at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:72)
	at kafka.producer.Producer.send(Producer.scala:74)
	at kafka.javaapi.producer.Producer.send(Producer.scala:32)
	at com.squareup.kafka.server.KafkaServerTest.produceAndConsumeMessage(KafkaServerTest.java:98)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:44)
	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:15)
	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:41)
	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:20)
	at org.junit.internal.runners.statements.RunBefores.evaluate(RunBefores.java:28)
	at org.junit.runners.ParentRunner.runLeaf(ParentRunner.java:263)
	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:69)
	at org.junit.runners.BlockJUnit4ClassRunner.runChild(BlockJUnit4ClassRunner.java:48)
	at org.junit.runners.ParentRunner$3.run(ParentRunner.java:231)
	at org.junit.runners.ParentRunner$1.schedule(ParentRunner.java:60)
	at org.junit.runners.ParentRunner.runChildren(ParentRunner.java:229)
	at org.junit.runners.ParentRunner.access$000(ParentRunner.java:50)
	at org.junit.runners.ParentRunner$2.evaluate(ParentRunner.java:222)
	at org.junit.runners.ParentRunner.run(ParentRunner.java:292)
	at org.junit.runner.JUnitCore.run(JUnitCore.java:157)
	at com.intellij.junit4.JUnit4IdeaTestRunner.startRunnerWithArgs(JUnit4IdeaTestRunner.java:77)
	at com.intellij.rt.execution.junit.JUnitStarter.prepareStreamsAndStart(JUnitStarter.java:195)
	at com.intellij.rt.execution.junit.JUnitStarter.main(JUnitStarter.java:63)
1133 [kafka-request-handler-1] WARN kafka.server.HighwaterMarkCheckpoint  - No highwatermark file is found. Returning 0 as the highwatermark for partition [test-topic,0]
	...
        ...

It would be great if instead of this exception, it would just log a meaningful message, like:

"No leader was available for partition X, one will now be created"

Jason


---

* [KAFKA-847](https://issues.apache.org/jira/browse/KAFKA-847) | *Major* | **kafka appender layout does not work for kafka 0.7.1**

I am using kafka 0.7.1 right now.
I am using the following log4j properties file and trying to send some log information to kafka server.

log4j.rootLogger=INFO,file,stdout

log4j.appender.stdout=org.apache.log4j.ConsoleAppender
log4j.appender.stdout.layout=org.apache.log4j.PatternLayout
log4j.appender.stdout.layout.ConversionPattern=[%d] %p %t %m (%c)%n

log4j.appender.file=org.apache.log4j.RollingFileAppender
#log4j.appender.file.FileNamePattern=c:\\development\\producer-agent\_%d{yyyy-MM-dd}.log
log4j.appender.file.File=${AC\_DATA\_HOME}\\lmservice\\tailer-aggregator.log
log4j.appender.file.MaxFileSize=100MB
log4j.appender.file.MaxBackupIndex=1
log4j.appender.file.layout=org.apache.log4j.PatternLayout
#log4j.appender.file.layout.ConversionPattern= %-4r [%t] %-5p %c %x - %m%n
log4j.appender.file.layout.ConversionPattern=[%d] %p %t %m (%c)%n

log4j.appender.KAFKA=kafka.producer.KafkaLog4jAppender
log4j.appender.KAFKA.layout=org.apache.log4j.PatternLayout
log4j.appender.KAFKA.layout.ConversionPattern=[%d] %p %t %m (%c)%n
log4j.appender.KAFKA.BrokerList=0:localhost:9092
log4j.appender.KAFKA.SerializerClass=kafka.serializer.StringEncoder
log4j.appender.KAFKA.Topic=test.topic

# Turn on all our debugging info
log4j.logger.kafka=INFO, KAFKA
log4j.logger.org=INFO, KAFKA
log4j.logger.com=INFO, KAFKA

However, I find that the messages send to kafka server are not formatted as my defined layout. 
KafkaLog4jAppender just sends messages(%m), and there is no other conversion patterns.


---

* [KAFKA-784](https://issues.apache.org/jira/browse/KAFKA-784) | *Minor* | **creating topic without partitions, deleting then creating with partition causes errors in 'kafka-list-topic'**

Create a new topic using the command line:

./kafka-create-topic.sh --topic trash-1 --replica 3 --zookeeper localhost

Realize you forgot to add the partition command, so remove it:

./kafka-delete-topic.sh --topic trash-1 --zookeeper localhost

Recreate it with partitions:

./kafka-create-topic.sh --topic trash-1 --replica 3 --zookeeper localhost --partition 5

Try to get a listing:

./kafka-list-topic.sh --topic trash-1 --zookeeper localhost


Errors:

[2013-03-04 14:15:23,876] ERROR Error while fetching metadata for partition [trash-1,0] (kafka.admin.AdminUtils$)
kafka.common.LeaderNotAvailableException: Leader not available for topic trash-1 partition 0
        at kafka.admin.AdminUtils$$anonfun$3.apply(AdminUtils.scala:120)
        at kafka.admin.AdminUtils$$anonfun$3.apply(AdminUtils.scala:103)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
        at scala.collection.immutable.List.foreach(List.scala:45)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)
        at scala.collection.immutable.List.map(List.scala:45)
        at kafka.admin.AdminUtils$.kafka$admin$AdminUtils$$fetchTopicMetadataFromZk(AdminUtils.scala:103)
        at kafka.admin.AdminUtils$.fetchTopicMetadataFromZk(AdminUtils.scala:92)
        at kafka.admin.ListTopicCommand$.showTopic(ListTopicCommand.scala:80)
        at kafka.admin.ListTopicCommand$$anonfun$main$2.apply(ListTopicCommand.scala:66)
        at kafka.admin.ListTopicCommand$$anonfun$main$2.apply(ListTopicCommand.scala:65)
        at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
        at scala.collection.immutable.List.foreach(List.scala:45)
        at kafka.admin.ListTopicCommand$.main(ListTopicCommand.scala:65)
        at kafka.admin.ListTopicCommand.main(ListTopicCommand.scala)
Caused by: kafka.common.LeaderNotAvailableException: No leader exists for partition 0
        at kafka.admin.AdminUtils$$anonfun$3.apply(AdminUtils.scala:117)
        ... 16 more
topic: trash-1
PartitionMetadata(0,None,List(),List(),5)


Can't recover until you restart all the Brokers in the cluster. Then the list command works correctly.


---

* [KAFKA-703](https://issues.apache.org/jira/browse/KAFKA-703) | *Blocker* | **A fetch request in Fetch Purgatory can double count the bytes from the same delayed produce request**

When a producer request is handled, the fetch purgatory is checked to ensure any fetch requests are satisfied. When the produce request is satisfied we do the check again and if the same fetch request was still in the fetch purgatory it would end up double counting the bytes received.

Possible Solutions

1. In the delayed produce request case, do the check only after the produce request is satisfied. This could potentially delay the fetch request from being satisfied.
2. Remove dependency of fetch request on produce request and just look at the last logical log offset (which should mostly be cached). This would need the replica.fetch.min.bytes to be number of messages rather than bytes. This also helps KAFKA-671 in that we would no longer need to pass the ProduceRequest object to the producer purgatory and hence not have to consume any memory.


---

* [KAFKA-472](https://issues.apache.org/jira/browse/KAFKA-472) | *Major* | **update metadata in batches in Producer**

Currently, the producer obtains the metadata of topics being produced one at a time. This means that tools like mirror maker will make many getMetadata requests to the broker. Ideally, we should make BrokerPartition.getBrokerPartitionInfo() a batch api that takes a list of topics.


---

* [KAFKA-294](https://issues.apache.org/jira/browse/KAFKA-294) | *Major* | **"Path length must be \> 0" error during startup**

When starting Kafka 0.7.0 using zkclient-0.1.jar, I get this error:

INFO 2012-03-06 02:39:04,072  main kafka.server.KafkaZooKeeper Registering broker /brokers/ids/1
FATAL 2012-03-06 02:39:04,111  main kafka.server.KafkaServer Fatal error during startup.
java.lang.IllegalArgumentException: Path length must be \> 0
        at org.apache.zookeeper.common.PathUtils.validatePath(PathUtils.java:48)
        at org.apache.zookeeper.common.PathUtils.validatePath(PathUtils.java:35)
        at org.apache.zookeeper.ZooKeeper.create(ZooKeeper.java:620)
        at org.I0Itec.zkclient.ZkConnection.create(ZkConnection.java:87)
        at org.I0Itec.zkclient.ZkClient$1.call(ZkClient.java:308)
        at org.I0Itec.zkclient.ZkClient$1.call(ZkClient.java:304)
        at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:675)
        at org.I0Itec.zkclient.ZkClient.create(ZkClient.java:304)
        at org.I0Itec.zkclient.ZkClient.createPersistent(ZkClient.java:213)
        at org.I0Itec.zkclient.ZkClient.createPersistent(ZkClient.java:223)
        at org.I0Itec.zkclient.ZkClient.createPersistent(ZkClient.java:223)
        at kafka.utils.ZkUtils$.createParentPath(ZkUtils.scala:48)
        at kafka.utils.ZkUtils$.createEphemeralPath(ZkUtils.scala:60)
        at kafka.utils.ZkUtils$.createEphemeralPathExpectConflict(ZkUtils.scala:72)
        at kafka.server.KafkaZooKeeper.registerBrokerInZk(KafkaZooKeeper.scala:57)
        at kafka.log.LogManager.startup(LogManager.scala:124)
        at kafka.server.KafkaServer.startup(KafkaServer.scala:80)
        at kafka.server.KafkaServerStartable.startup(KafkaServerStartable.scala:47)
        at kafka.Kafka$.main(Kafka.scala:60)
        at kafka.Kafka.main(Kafka.scala)

The problem seems to be this code in ZkClient's createPersistent method:

String parentDir = path.substring(0, path.lastIndexOf('/'));
createPersistent(parentDir, createParents);
createPersistent(path, createParents);

which doesn't check for whether parentDir is an empty string, which it will become for /brokers/ids/1 after two recursions.



