
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
#  0.9.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-2294](https://issues.apache.org/jira/browse/KAFKA-2294) | *Major* | **javadoc compile error due to illegal \<p/\> , build failing (jdk 8)**

Quick one,

kafka/clients/src/main/java/org/apache/kafka/clients/producer/KafkaProducer.java:525: error: self-closing element not allowed
     * <p/>

This is causing build to fail under java 8 due to strict html checking.

Replace that <p/> with <p>

Regards,


---

* [KAFKA-1863](https://issues.apache.org/jira/browse/KAFKA-1863) | *Major* | **Exception categories / hierarchy in clients**

In the new clients package we introduces a new set of exceptions, but its hierarchy is not very clear as of today:

{code}
RuntimeException -> KafkaException -> BufferExhastedException
                                                           -> ConfigException
                                                           -> SerializationException
                                                           -> QuotaViolationException
                                                           -> SchemaException

                                                           -> ApiException

ApiException -> InvalidTopicException
                     -> OffsetMetadataTooLarge (probabaly need to be renamed)
                     -> RecordBatchTooLargeException
                     -> RecordTooLargeException
                     -> UnknownServerException

                     -> RetriableException

RetriableException -> CorruptRecordException
                               -> InvalidMetadataException
                               -> NotEnoughtReplicasAfterAppendException
                               -> NotEnoughReplicasException
                               -> OffsetOutOfRangeException
                               -> TimeoutException
                               -> UnknownTopicOrPartitionException
{code}

KafkaProducer.send() may throw KafkaExceptions that are not ApiExceptions; other exceptions will be set in the returned future metadata.

We need better to

1. Re-examine the hierarchy. For example, for producers only exceptions that are thrown directly from the caller thread before it is appended to the batch buffer should be ApiExceptions; some exceptions could be renamed / merged.

2. Clearly document the exception category / hierarchy as part of the release.

[~criccomini] may have some more feedbacks for this issue from Samza's usage experience. [~jkreps]


---

* [KAFKA-1720](https://issues.apache.org/jira/browse/KAFKA-1720) | *Major* | **[Renaming / Comments] Delayed Operations**

After KAFKA-1583 checked in, we would better renaming the delayed requests to delayed operations.


---

* [KAFKA-1536](https://issues.apache.org/jira/browse/KAFKA-1536) | *Major* | **Change the status of the JIRA to "Patch Available" in the kafka-review-tool**

When using the kafka-review-tool to upload a patch to certain jira, the status remains "OPEN". It makes searching for JIRAs that needs review a bit hard. Would be better to make the tool also change the status of the jira.


---

* [KAFKA-1483](https://issues.apache.org/jira/browse/KAFKA-1483) | *Major* | **Split Brain about Leader Partitions**

Today in the server there are two places storing the leader partition info:

1) leaderPartitions list in the ReplicaManager.
2) leaderBrokerIdOpt in the Partition.

1) is used as the ground truth to decide if the server is the current leader for serving requests; 2) is used as the ground truth for reporting leader counts metrics, etc and for the background Shrinking-ISR thread to decide which partition to check. There is a risk that these two ground truth caches are not consistent, and we'd better only make one of them as the ground truth.


---

* [KAFKA-1445](https://issues.apache.org/jira/browse/KAFKA-1445) | *Major* | **New Producer should send all partitions that have non-empty batches when on of them is ready**

One difference between the new producer and the old producer is that on the new producer the linger time is per partition, instead of global. Therefore, when the traffic is low, the sender will likely expire partitions one-by-one and send lots of small request containing only a few partitions with a few data, resulting largely increased request rate.

One solution of it would be to let senders select all partitions that have non-empty batches when on of them is ready.


---

* [KAFKA-1377](https://issues.apache.org/jira/browse/KAFKA-1377) | *Major* | **transient unit test failure in LogOffsetTest**

Saw the following transient unit test failure.

kafka.server.LogOffsetTest > testGetOffsetsBeforeEarliestTime FAILED
    junit.framework.AssertionFailedError: expected:<List(0)> but was:<Vector()>
        at junit.framework.Assert.fail(Assert.java:47)
        at junit.framework.Assert.failNotEquals(Assert.java:277)
        at junit.framework.Assert.assertEquals(Assert.java:64)
        at junit.framework.Assert.assertEquals(Assert.java:71)
        at kafka.server.LogOffsetTest.testGetOffsetsBeforeEarliestTime(LogOffsetTest.scala:198)


---

* [KAFKA-1320](https://issues.apache.org/jira/browse/KAFKA-1320) | *Major* | **Change compression.codec to compression.type in new producer configs of system tests**

In the new producer, the compression config is no longer specified by compression.codec but compression.type.


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

* [KAFKA-1281](https://issues.apache.org/jira/browse/KAFKA-1281) | *Major* | **add the new producer to existing tools**

Need to create a new version of a few existing tools using the new producer. Those tools include: 

* ConsoleProducer
* KafkaLog4jAppender
* TestEndToEndLatency
* TestLogCleaning
* ReplayLogProducer

Not sure about ReplayLogProducer since it seems to be just a specialized version of MirrorMaker.


---

* [KAFKA-1258](https://issues.apache.org/jira/browse/KAFKA-1258) | *Major* | **Delete temporary data directory after unit test finishes**

Today in unit testsuite most of the time when a test case is setup a temporary directory will be created with a random int as suffix, and will not be deleted after the test. After a few unit tests this will create tons of directories in java.io.tmpdir (/tmp for Linux). Would be better to remove them for clean unit tests.


---

* [KAFKA-1237](https://issues.apache.org/jira/browse/KAFKA-1237) | *Major* | **Add mirror maker using 08 consumer and 09 producer**

Until the new consumer client is ready, we need another mirror maker that uses the 08 consumer and 09 producer.


---

* [KAFKA-1236](https://issues.apache.org/jira/browse/KAFKA-1236) | *Critical* | **Change producer performance tool to optionally use the new producer**

The producer performance tool needs the ability to optionally use the new producer.


---

* [KAFKA-1233](https://issues.apache.org/jira/browse/KAFKA-1233) | *Major* | **Integration test for the new producer**

The first integration test on the new producer api, which should test the following cases:

a. null-key v.s. not-null-key
b. null-value v.s. not-null-value
c. null-partition-key v.s. not-null-partition-key
d. null-topic v.s. not-null-topic
e. blocking on every RecordSend v.s. non-blocking


---

* [KAFKA-1147](https://issues.apache.org/jira/browse/KAFKA-1147) | *Major* | **Consumer socket timeout should be greater than fetch max wait**

From the mailing list:
The consumer-config documentation states that "The actual timeout set
will be max.fetch.wait + socket.timeout.ms." - however, that change
seems to have been lost in the code a while ago - we should either fix the doc or re-introduce the addition.


---

* [KAFKA-1072](https://issues.apache.org/jira/browse/KAFKA-1072) | *Major* | **Allow mulitple topics selected with a TopicFilter to be balanced among consumers**

Currently, there is no parallelism used when consuming a set of topics selected by a white list topic filter, if those topics all have a partition count of 1.  Currently, all topics that match the filter get assigned to the same thread on the same consumer, even though there may be plenty of different topics (and therefore many partitions to be consumed from).

There are often good reasons to use a partition count of only 1 (e.g. to preserve message ordering).  For arbitrary scalability, over a large number of topics, this would be a great benefit to be able to consume topics balanced over a set of available consumers.


---

* [KAFKA-1067](https://issues.apache.org/jira/browse/KAFKA-1067) | *Major* | **the default partitioner should be randomizing messages and a new partition for the meta refresh requirements created**

Details behind this http://mail-archives.apache.org/mod\_mbox/kafka-dev/201310.mbox/%3CCAFbh0Q0aVh%2Bvqxfy7H-%2BMnRFBt6BnyoZk1LWBoMspwSmTqUKMg%40mail.gmail.com%3E


---

* [KAFKA-1054](https://issues.apache.org/jira/browse/KAFKA-1054) | *Major* | **Eliminate Compilation Warnings for 0.8 Final Release**

Currently we have a total number of 38 warnings for source code compilation of 0.8.

1) 3 from "Unchecked type pattern"
2) 6 from "Unchecked conversion"
3) 29 from "Deprecated Hadoop API functions"

It's better we finish these before the final release of 0.8


---

* [KAFKA-1032](https://issues.apache.org/jira/browse/KAFKA-1032) | *Major* | **Messages sent to the old leader will be lost on broker GC resulted failure**

As pointed out by Swapnil, today when a broker in on long GC, it will marked by the controller as failed and trigger the onBrokerFailure function to migrate leadership to other brokers. However, since the Controller does not notify the broker with stopReplica request even after a new leader has been elected for its partitions. The new leader will hence stop fetching from the old leader while the old leader is not aware that he is no longer the leader. And since the old leader is not really dead producers will not refresh their metadata immediately and will continue sending messages to the old leader. The old leader will only know it is no longer the leader when it gets notified by controller in the onBrokerStartup function, and message sent starting from the time the new leader is elected to the timestamp the old leader realize it is no longer the leader will be lost.


---

* [KAFKA-855](https://issues.apache.org/jira/browse/KAFKA-855) | *Major* | **Ant+Ivy build for Kafka**

Kafka has very simple build requirements and a system like Ant is well suited for a clean and concise build. I have an experimental patch that does just this - replaces SBT with Ant+Ivy. IMO, this approach is cleaner, clearer, and more developer friendly.

Dependencies are localized to one directory in the project rather than living in ~/.ivy2 and elsewhere. This makes manual classpath building very simple (just one glob) and also makes packaging the libs very easy.

Testing is done through junit rather than scalatest. The Kafka tests use `org.scalatest.junit.JUnitSuite` which allow the tests to be executed through the junit test runner.

Management of the Scala version is handled through Ivy. The way I have laid out the Ant script, the Scala version can be changed by setting a different runtime property (-Dscala.version=2.8.2). Cross-compilation of the Kafka artifact would be simple to add.

The one downside to this approach is lack of an incremental build. `scalac` is deprecating its incremental build capabilities in coming versions. The suggested solution to this is to use an IDE that supports incremental builds.

The main motivation for this approach, to me at least, is that a developer can look at build.xml and immediately understand what is going on (with the exception maybe of the <ivy: .../> actions which would not be changing). This is largely not true for SBT unless someone is already familiar with SBT.


---

* [KAFKA-803](https://issues.apache.org/jira/browse/KAFKA-803) | *Major* | **Offset returned to producer is not consistent**

Currently, the offset that we return to the producer is the offset of the first message if the producer request doesn't go through purgatory, and the offset of the last message, if otherwise. We need to make this consistent.


---

* [KAFKA-771](https://issues.apache.org/jira/browse/KAFKA-771) | *Major* | **NPE in handleOffsetCommitRequest**

If the metadata string is null, we get an NPE on the length check


---

* [KAFKA-665](https://issues.apache.org/jira/browse/KAFKA-665) | *Critical* | **Outgoing responses delayed on a busy Kafka broker**

In a long running test, I observed that after a few hours of operation, few requests start timing out, mainly because they spent very long time sitting in the response queue -

[2012-12-07 22:05:56,670] TRACE Completed request with correlation id 3965966 and client : TopicMetadataRequest:4009, queueTime:1, localTime:28, remoteTime:0, sendTime:3980 (kafka.network.RequestChannel$)
[2012-12-07 22:04:12,046] TRACE Completed request with correlation id 3962561 and client : TopicMetadataRequest:3449, queueTime:0, localTime:29, remoteTime:0, sendTime:3420 (kafka.network.RequestChannel$)
[2012-12-07 22:05:56,670] TRACE Completed request with correlation id 3965966 and client : TopicMetadataRequest:4009, queueTime:1, localTime:28, remoteTime:0, sendTime:3980 (kafka.network.RequestChannel$)

We might have a problem in the way we process outgoing responses. Basically, if the processor thread blocks on enqueuing requests in the request queue, it doesn't come around to processing its responses which are ready to go out.


---

* [KAFKA-496](https://issues.apache.org/jira/browse/KAFKA-496) | *Blocker* | **high level producer send should return a response**

Currently, Producer.send() doesn't return any value. In 0.8, since each produce request will be acked, we should pass the response back. What we can do is that if the producer is in sync mode, we can return a map of (topic,partitionId) -> (errorcode, offset). If the producer is in async mode, we can just return a null.


---

* [KAFKA-409](https://issues.apache.org/jira/browse/KAFKA-409) | *Major* | **Refactor DefaultEventHandler**

The code in DefaultEventHandler has evolved to be a big blob of complex procedural logic. This is difficult to understand and read. Particularly the partitionAndCollate() API returns a nested complex data structure Option[Map[Int, Map[(String, Int), Seq[ProducerData[K,Message]]]]]. This class would definitely benefit from a refactor


---

* [KAFKA-322](https://issues.apache.org/jira/browse/KAFKA-322) | *Minor* | **Remove one-off Send objects**

We seem to be accumulating a bunch of unnecessary classes that implement Send. I am not sure why people are doing this. Example:
ProducerResponseSend.scala

It is not at all clear why we would add a custom send object for each request/response type. They all do the same thing. The only reason for having the concept of a Send object was to allow two implementations: ByteBufferSend and MessageSetSend, the later let's us abstract over the difference between a normal write and a sendfile() call.

I think we can refactory ByteBufferSend to take one or more ByteBuffers instead of just one and delete all of these one-offs.



