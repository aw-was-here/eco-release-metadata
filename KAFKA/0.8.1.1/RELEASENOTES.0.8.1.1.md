
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
#  0.8.1.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-1398](https://issues.apache.org/jira/browse/KAFKA-1398) | *Critical* | **Topic config changes can be lost and cause fatal exceptions on broker restarts**

Our topic config cleanup policy seems to be broken. When a broker is
bounced and starting up:
1 - Read all the children of the config change path
2 - For each, if the change id is greater than the last executed change,
  then extract the topic information.
3 - If there is a log for that topic on this broker, then apply the change.
  However, if there is no log, then delete the config change.

In step 3, a delete triggers a child change watch firing on all the other
brokers. The other brokers currently take all the children of the config
path but will ignore those config changes that are less than the last
executed change. At least one issue here is that if a broker does not have
partitions for a topic then the lastExecutedChange is not updated (for
that topic).

Consider this scenario:
- Three brokers 0, 1, 2
- Topic A has partitions only assigned to broker 0
- Topic B has partitions only assigned to broker 1
- Topic C has partitions only assigned to broker 2
- Change 0: topic A
- Change 1: topic B
- Change 2: topic C
- lastExecutedChange on broker 0 is 0
- lastExecutedChange on broker 1 is 1
- lastExecutedChange on broker 2 is 2
- Bounce broker 1
- The above bounce will cause Change 0 and Change 2 to get deleted.
- Watch fires on broker 0 and 1
- Broker 0 will try and read the topic corresponding to change 1 (since its
  lastExecutedChange is 0) and then change 2. That read will fail:

2014/04/15 19:35:34.236 INFO [TopicConfigManager] [main] [kafka-server] [] Processed topic config change 25 for topic xyz, setting new config to
 {retention.ms=3600000, segment.ms=3600000}.
2014/04/15 19:35:34.238 FATAL [KafkaServerStartable] [main] [kafka-server] [] Fatal error during KafkaServerStable startup. Prepare to shutdown
org.I0Itec.zkclient.exception.ZkNoNodeException: org.apache.zookeeper.KeeperException$NoNodeException: KeeperErrorCode = NoNode for /config/changes/config\_change\_0000000026
        at org.I0Itec.zkclient.exception.ZkException.create(ZkException.java:47)
        at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:685)
        at org.I0Itec.zkclient.ZkClient.readData(ZkClient.java:766)
        at org.I0Itec.zkclient.ZkClient.readData(ZkClient.java:761)
        at kafka.utils.ZkUtils$.readData(ZkUtils.scala:467)
        at kafka.server.TopicConfigManager$$anonfun$kafka$server$TopicConfigManager$$processConfigChanges$2.apply(TopicConfigManager.scala:97)
        at kafka.server.TopicConfigManager$$anonfun$kafka$server$TopicConfigManager$$processConfigChanges$2.apply(TopicConfigManager.scala:93)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:57)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:43)
        at kafka.server.TopicConfigManager.kafka$server$TopicConfigManager$$processConfigChanges(TopicConfigManager.scala:93)
        at kafka.server.TopicConfigManager.processAllConfigChanges(TopicConfigManager.scala:81)
        at kafka.server.TopicConfigManager.startup(TopicConfigManager.scala:72)
        at kafka.server.KafkaServer.startup(KafkaServer.scala:104)
        at kafka.server.KafkaServerStartable.startup(KafkaServerStartable.scala:34)
        ...
Caused by: org.apache.zookeeper.KeeperException$NoNodeException: KeeperErrorCode = NoNode for /config/changes/config\_change\_0000000026
        at org.apache.zookeeper.KeeperException.create(KeeperException.java:102)
        at org.apache.zookeeper.KeeperException.create(KeeperException.java:42)
        at org.apache.zookeeper.ZooKeeper.getData(ZooKeeper.java:927)
        at org.apache.zookeeper.ZooKeeper.getData(ZooKeeper.java:956)
        at org.I0Itec.zkclient.ZkConnection.readData(ZkConnection.java:103)
        at org.I0Itec.zkclient.ZkClient$9.call(ZkClient.java:770)
        at org.I0Itec.zkclient.ZkClient$9.call(ZkClient.java:766)
        at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:675)
        ... 39 more


Another issue is that there are two logging statements with incorrect
qualifiers which makes things a little harder to debug. E.g.,

2014/04/15 19:35:34.223 ERROR [TopicConfigManager] [kafka-server] [] Ignoring topic config change %d for topic %s since the change has expired


---

* [KAFKA-1373](https://issues.apache.org/jira/browse/KAFKA-1373) | *Major* | **LogCleaner assumes first dirty offset zero if there is no cleaner checkpoint**

If you try enabling the compaction policy on a topic that already exists and if its first segment starts with anything other than zero you will see something like this:

java.lang.IllegalArgumentException: requirement failed: Last clean offset is 0 but segment base offset is 2722629 for log test-0.
        at scala.Predef$.require(Predef.scala:145)
        at kafka.log.Cleaner.buildOffsetMap(LogCleaner.scala:489)
        at kafka.log.Cleaner.clean(LogCleaner.scala:287)
        at kafka.log.LogCleaner$CleanerThread.cleanOrSleep(LogCleaner.scala:203)
        at kafka.log.LogCleaner$CleanerThread.doWork(LogCleaner.scala:188)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)


---

* [KAFKA-1365](https://issues.apache.org/jira/browse/KAFKA-1365) | *Critical* | **Second Manual preferred replica leader election command always fails**

After running kafka-preferred-replica-election.sh once, a second run will fail with "Preferred replica leader election currently in progress for ...".

The /admin/preferred\_replica\_election key is never deleted from ZooKeeper, because the "isTriggeredByAutoRebalance" parameter to onPreferredReplicaElection (https://github.com/apache/kafka/blob/0ffec142a991849833d9767be07e895428ccaea1/core/src/main/scala/kafka/controller/KafkaController.scala#L614) is used incorrectly. In the automatic case (https://github.com/apache/kafka/blob/0ffec142a991849833d9767be07e895428ccaea1/core/src/main/scala/kafka/controller/KafkaController.scala#L1119), it is set to false. In the manual case (https://github.com/apache/kafka/blob/0ffec142a991849833d9767be07e895428ccaea1/core/src/main/scala/kafka/controller/KafkaController.scala#L1266) the parameter is not passed, so it defaults to true.


---

* [KAFKA-1363](https://issues.apache.org/jira/browse/KAFKA-1363) | *Major* | **testTopicConfigChangesDuringDeleteTopic hangs**

Saw the following deadlock during shutting down the delete topic manager.

"delete-topics-thread" prio=10 tid=0x00007fd50c003800 nid=0x7d9 waiting on condition [0x00007fd53d160000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  <0x00000006b41d6318> (a java.util.concurrent.locks.ReentrantLock$NonfairSync)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireQueued(AbstractQueuedSynchronizer.java:842)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire(AbstractQueuedSynchronizer.java:1178)
        at java.util.concurrent.locks.ReentrantLock$NonfairSync.lock(ReentrantLock.java:186)
        at java.util.concurrent.locks.ReentrantLock.lock(ReentrantLock.java:262)
        at kafka.utils.Utils$.inLock(Utils.scala:535)
        at kafka.controller.TopicDeletionManager$DeleteTopicsThread.doWork(TopicDeletionManager.scala:363)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)

"Test worker" prio=10 tid=0x00007fd578928800 nid=0x763d waiting on condition [0x00007fd570a87000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  <0x00000006b5b6f580> (a java.util.concurrent.CountDownLatch$Sync)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:156)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.doAcquireSharedInterruptibly(AbstractQueuedSynchronizer.java:969)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly(AbstractQueuedSynchronizer.java:1281)
        at java.util.concurrent.CountDownLatch.await(CountDownLatch.java:207)
        at kafka.utils.ShutdownableThread.shutdown(ShutdownableThread.scala:36)
        at kafka.controller.TopicDeletionManager.shutdown(TopicDeletionManager.scala:100)
        at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply$mcV$sp(KafkaController.scala:345)
        at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply(KafkaController.scala:341)
        at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply(KafkaController.scala:341)
        at kafka.utils.Utils$.inLock(Utils.scala:537)
        at kafka.controller.KafkaController.onControllerResignation(KafkaController.scala:341)
        at kafka.controller.KafkaController$$anonfun$shutdown$1.apply$mcV$sp(KafkaController.scala:648)
        at kafka.controller.KafkaController$$anonfun$shutdown$1.apply(KafkaController.scala:646)
        at kafka.controller.KafkaController$$anonfun$shutdown$1.apply(KafkaController.scala:646)
        at kafka.utils.Utils$.inLock(Utils.scala:537)
        at kafka.controller.KafkaController.shutdown(KafkaController.scala:646)
        at kafka.server.KafkaServer$$anonfun$shutdown$9.apply$mcV$sp(KafkaServer.scala:242)
        at kafka.utils.Utils$.swallow(Utils.scala:166)
        at kafka.utils.Logging$class.swallowWarn(Logging.scala:92)
        at kafka.utils.Utils$.swallowWarn(Utils.scala:45)
        at kafka.utils.Logging$class.swallow(Logging.scala:94)
        at kafka.utils.Utils$.swallow(Utils.scala:45)
        at kafka.server.KafkaServer.shutdown(KafkaServer.scala:242)
        at kafka.admin.DeleteTopicTest$$anonfun$testTopicConfigChangesDuringDeleteTopic$1.apply(DeleteTopicTest.scala:362)
        at kafka.admin.DeleteTopicTest$$anonfun$testTopicConfigChangesDuringDeleteTopic$1.apply(DeleteTopicTest.scala:362)
        at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
        at scala.collection.immutable.List.foreach(List.scala:45)
        at kafka.admin.DeleteTopicTest.testTopicConfigChangesDuringDeleteTopic(DeleteTopicTest.scala:362)


---

* [KAFKA-1362](https://issues.apache.org/jira/browse/KAFKA-1362) | *Major* | **Publish sources and javadoc jars**

Currently just binaries jars get published on Maven Central (see http://repo1.maven.org/maven2/org/apache/kafka/kafka\_2.10/0.8.1/ ). Please also publish sources and javadoc jars.


---

* [KAFKA-1358](https://issues.apache.org/jira/browse/KAFKA-1358) | *Major* | **Broker throws exception when reconnecting to zookeeper**

A non-controller broker currently if zk session expires and re-established calls onControllerResignation even though it may not be the controller.

The result is that the broker gets exception like this: 

java.lang.NullPointerException
	at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply$mcV$sp(KafkaController.scala:340)
	at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply(KafkaController.scala:337)
	at kafka.controller.KafkaController$$anonfun$onControllerResignation$1.apply(KafkaController.scala:337)
	at kafka.utils.Utils$.inLock(Utils.scala:538)
	at kafka.controller.KafkaController.onControllerResignation(KafkaController.scala:337)
	at kafka.controller.KafkaController$SessionExpirationListener$$anonfun$handleNewSession$1.apply$mcZ$sp(KafkaController.scala:1068)
	at kafka.controller.KafkaController$SessionExpirationListener$$anonfun$handleNewSession$1.apply(KafkaController.scala:1067)
	at kafka.controller.KafkaController$SessionExpirationListener$$anonfun$handleNewSession$1.apply(KafkaController.scala:1067)
	at kafka.utils.Utils$.inLock(Utils.scala:538)
	at kafka.controller.KafkaController$SessionExpirationListener.handleNewSession(KafkaController.scala:1067)
	at org.I0Itec.zkclient.ZkClient$4.run(ZkClient.java:472)
	at org.I0Itec.zkclient.ZkEventThread.run(ZkEventThread.java:71)


---

* [KAFKA-1355](https://issues.apache.org/jira/browse/KAFKA-1355) | *Critical* | **Reduce/optimize update metadata requests sent during leader election**

This is part of the investigation into slow shutdowns in 0.8.1. While
logging contributes to bulk of the regression, this one also adds
quite a bit of overhead:

In addLeaderAndIsrRequest (called for every partition that is led by the
broker being shut down) we also add an UpdateMetadataRequest - each call to
addUpdateMetadataRequests does two traversals over \_all\_ (global)
partitions. I think it should be straightforward to optimize this a bit.

Marking as critical, since it is not as big an overhead as the logging.


---

* [KAFKA-1350](https://issues.apache.org/jira/browse/KAFKA-1350) | *Blocker* | **Fix excessive state change logging**

I can provide steps to reproduce this issue.  The state change logger needs
to be guarded (to check if trace logging is turned on or not).

The delete topic patch significantly increased the amount of logging that we
do both on the controller. This results in higher latencies in state
transitions and can slow down the controller (as well as the broker).  This
slow-down was how we ran into KAFKA-1342.


---

* [KAFKA-1323](https://issues.apache.org/jira/browse/KAFKA-1323) | *Blocker* | **log.dirs server property no longer supports relative directories**

This seems to have been caused by KAFKA-1315 - we now don't support relative directories.

Steps to reproduce:
* Set a relative directory for log.dirs. E.g., {{log.dirs=data/kafka-logs}}
* Bring up the broker and produce some messages: {{./bin/kafka-producer-perf-test.sh --broker-list localhost:9092 --messages 1000 --topic test}}


---

* [KAFKA-1317](https://issues.apache.org/jira/browse/KAFKA-1317) | *Blocker* | **KafkaServer 0.8.1 not responding to .shutdown() cleanly, possibly related to TopicDeletionManager or MetricsMeter state**

When I run an in-process instance of KafkaServer, send a message through it, then call shutdown(), some threads never exit and the process hangs until the process is killed manually. The same scenario does not result in a hang on 0.8.0. The hang happens when calling both shutdown() by itself as well as shutdown() and awaitShutdown() together. I have seen similar behavior shutting down a deployed kafka server as well, but haven't had time to diagnose whether or not it is the same symptom.


I suspect either the metrics-meter-tick-thread-1 & 2 or delete-topics-thread
 (waiting in kafka.controller.TopicDeletionManager.kafka$controller$TopicDeletionManager$$awaitTopicDeletionNotification(TopicDeletionManager.scala:178) is to blame. Since the TopicDeletionManager is new, it seems more suspicious to me. A complete thread dump is attached; the suspect threads are below.

"delete-topics-thread" prio=5 tid=0x00007fb3e31d2800 nid=0x6b03 waiting on condition [0x000000013c3b3000]
   java.lang.Thread.State: WAITING (parking)
	at sun.misc.Unsafe.park(Native Method)
	- parking to wait for  <0x000000012e6e6920> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:186)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2043)
	at kafka.controller.TopicDeletionManager.kafka$controller$TopicDeletionManager$$awaitTopicDeletionNotification(TopicDeletionManager.scala:178)
	at kafka.controller.TopicDeletionManager$DeleteTopicsThread$$anonfun$doWork$1.apply$mcV$sp(TopicDeletionManager.scala:334)
	at kafka.controller.TopicDeletionManager$DeleteTopicsThread$$anonfun$doWork$1.apply(TopicDeletionManager.scala:333)
	at kafka.controller.TopicDeletionManager$DeleteTopicsThread$$anonfun$doWork$1.apply(TopicDeletionManager.scala:333)
	at kafka.utils.Utils$.inLock(Utils.scala:538)
	at kafka.controller.TopicDeletionManager$DeleteTopicsThread.doWork(TopicDeletionManager.scala:333)
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)

   Locked ownable synchronizers:
	- None

"metrics-meter-tick-thread-2" daemon prio=5 tid=0x00007fb3e31c1000 nid=0x5f03 runnable [0x000000013ab8f000]
   java.lang.Thread.State: TIMED\_WAITING (parking)
	at sun.misc.Unsafe.park(Native Method)
	- parking to wait for  <0x000000012e7d05d8> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
	at java.util.concurrent.locks.LockSupport.parkNanos(LockSupport.java:226)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.awaitNanos(AbstractQueuedSynchronizer.java:2082)
	at java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:1090)
	at java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:807)
	at java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1068)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1130)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:724)

   Locked ownable synchronizers:
	- None

"metrics-meter-tick-thread-1" daemon prio=5 tid=0x00007fb3e31ef800 nid=0x5e03 waiting on condition [0x000000013a98c000]
   java.lang.Thread.State: WAITING (parking)
	at sun.misc.Unsafe.park(Native Method)
	- parking to wait for  <0x000000012e7d05d8> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:186)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2043)
	at java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:1085)
	at java.util.concurrent.ScheduledThreadPoolExecutor$DelayedWorkQueue.take(ScheduledThreadPoolExecutor.java:807)
	at java.util.concurrent.ThreadPoolExecutor.getTask(ThreadPoolExecutor.java:1068)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1130)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:724)

   Locked ownable synchronizers:
	- None


---

* [KAFKA-1315](https://issues.apache.org/jira/browse/KAFKA-1315) | *Blocker* | **log.dirs property in KafkaServer intolerant of trailing slash**

A trailing slash in log.dirs causes a java.util.NoSuchElementException on the producer and a kafka.common.NotLeaderForPartitionException on the consumer. 

Per this thread: http://mail-archives.apache.org/mod\_mbox/kafka-users/201307.mbox/%3CCAFbh0Q18PLacokCBy8+JG6Ef3N8+ysGKfqGhW4YB2Up18H-Eew@mail.gmail.com%3E

This is because we populate the key in
ReplicaManager.highWatermarkCheckpoints using the "dirs" config, but look
up the key using log.dir.getParent. So, if you have a trailing slash in the
config, they won't match. This seems a bug that we should fix. Could you
file a jira?

Thanks,

Jun

Still occuring for me, using org.apache.kafka:kafka\_2.10:0.8.1


---

* [KAFKA-1311](https://issues.apache.org/jira/browse/KAFKA-1311) | *Blocker* | **Add a flag to turn off delete topic until it is stable**

Currently delete topic is checked in as beta but is turned on by default. Since it is not well tested right now, I'm proposing turning the feature off until it is. This will introduce a config temporarily that we can get rid of once we are confident that delete topic is stable


---

* [KAFKA-1310](https://issues.apache.org/jira/browse/KAFKA-1310) | *Blocker* | **Zookeeper timeout causes deadlock in Controller**

Steps to reproduce:

1. Checkout and build 0.8.1 branch from github:
git clone git@github.com:apache/kafka.git && cd kafka && git checkout origin/0.8.1 && ./gradlew jar

2. Start zookeeper server:
./bin/zookeeper-server-start.sh config/zookeeper.properties

3. Start kafka server:
./bin/kafka-server-start.sh config/server.properties

4. Suspend zookeeper process for 10 seconds (ctrl-Z, then %1).

5. And kafka hasn't been re-registered in zookeeper.
./bin/zookeeper-shell.sh
ls /brokers/ids
>> []

Root cause of the problem seems to be the deadlock between DeleteTopicsThread and SessionExpirationListener in KafkaController.

1. DeleteTopicsThread acquires controllerLock and await()-s on deleteTopicsCond in awaitTopicDeletionNotification()

2. SessionExpirationListener fires. It acquires controllerLock and tries to shutdown deleteTopicManager(in onControllerResignation()). This interrupts DeleteTopicsThread.

3. DeleteTopicsThread can't return from deleteTopicsCond.await() because controllerLock is taken. We got a deadlock.


---

* [KAFKA-1171](https://issues.apache.org/jira/browse/KAFKA-1171) | *Blocker* | **Gradle build for Kafka**

We have previously discussed moving away from SBT to an easier-to-comprehend-and-debug build system such as Ant or Gradle. I put up a patch for an Ant+Ivy build a while ago[1], and it sounded like people wanted to check out Gradle as well.

1. https://issues.apache.org/jira/browse/KAFKA-855



