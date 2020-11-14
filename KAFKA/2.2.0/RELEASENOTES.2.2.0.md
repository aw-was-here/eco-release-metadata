
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
# Apache Kafka  2.2.0 Release Notes

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

* [KAFKA-7672](https://issues.apache.org/jira/browse/KAFKA-7672) | *Critical* | **The local state not fully restored after KafkaStream rebalanced, resulting in data loss**

Normally, when a task is migrated to a new thread and no checkpoint file was found under its task folder, Kafka Stream needs to restore the local state for remote changelog topic completely and then resume running. However, in some scenarios, we found that Kafka Stream \*NOT\* restore this state even no checkpoint was found, but just clean the state folder and transition to running state directly, resulting the historic data loss. 

To be specific, I will give the detailed logs for Kafka Stream in our project to show this scenario: 
{quote}2018-10-23 08:27:07,684 INFO  org.apache.kafka.clients.consumer.internals.ConsumerCoordinator - [Consumer clientId=AuditTrailBatch-StreamThread-1-consumer, groupId=AuditTrailBatch] Revoking previously assigned partitions [AuditTrailBatch-0-5]

2018-10-23 08:27:07,684 INFO  org.apache.kafka.streams.processor.internals.StreamThread    - stream-thread [AuditTrailBatch-StreamThread-1] State transition from PARTITIONS\_ASSIGNED to PARTITIONS\_REVOKED

2018-10-23 08:27:10,856 INFO  org.apache.kafka.clients.consumer.internals.AbstractCoordinator - [Consumer clientId=AuditTrailBatch-StreamThread-1-consumer, groupId=AuditTrailBatch] (Re-)joining group

2018-10-23 08:27:53,153 INFO  org.apache.kafka.clients.consumer.internals.AbstractCoordinator - [Consumer clientId=AuditTrailBatch-StreamThread-1-consumer, groupId=AuditTrailBatch] Successfully joined group with generation 323

2018-10-23 08:27:53,153 INFO  org.apache.kafka.clients.consumer.internals.ConsumerCoordinator - [Consumer clientId=AuditTrailBatch-StreamThread-1-consumer, groupId=AuditTrailBatch] Setting newly assigned partitions [AuditTrailBatch-store1-repartition-1]

2018-10-23 08:27:53,153 INFO  org.apache.kafka.streams.processor.internals.StreamThread    - stream-thread [AuditTrailBatch-StreamThread-1] State transition from PARTITIONS\_REVOKED to PARTITIONS\_ASSIGNED

2018-10-23 08:27:53,153 INFO  org.apache.kafka.streams.processor.internals.StreamThread    - stream-thread [AuditTrailBatch-StreamThread-1] \*Creating producer client for task 1\_1\*

2018-10-23 08:27:53,622 INFO  org.apache.kafka.streams.processor.internals.StreamThread    - stream-thread [AuditTrailBatch-StreamThread-1] partition assignment took 469 ms.

2018-10-23 08:27:54,357 INFO  org.apache.kafka.streams.processor.internals.StoreChangelogReader - stream-thread [AuditTrailBatch-StreamThread-1]\*No checkpoint found for task 1\_1 state store AuditTrailBatch-store1-changelog-1 with EOS turned on.\* \*Reinitializing the task and restore its state from the beginning.\*

2018-10-23 08:27:54,357 INFO  org.apache.kafka.clients.consumer.internals.Fetcher          - [Consumer clientId=AuditTrailBatch-StreamThread-1-restore-consumer, groupId=]\*Resetting offset for partition AuditTrailBatch-store1-changelog-1 to offset 0.\*

2018-10-23 08:27:54,653 INFO  org.apache.kafka.streams.processor.internals.StreamThread    - stream-thread [AuditTrailBatch-StreamThread-1]\*State transition from PARTITIONS\_ASSIGNED to RUNNING\*
{quote}
From the logs above, we can get the procedure for thread AuditTrailBatch-StreamThread-1:
 # the previous running task assigned to thread 1 is task 0\_5 (the corresponding partition is AuditTrailBatch-0-5)
 # group begins to rebalance, the new task 1\_1 is assigned to thread 1.
 # no checkpoint was found under 1\_1 state folder, so reset the offset to 0 and clean the local state folder.
 # thread 1 transitions to RUNNING state directly without the restoration for task 1\_1, so the historic data for state 1\_1 is lost for thread 1. 

\*ThoubleShoot\*

To investigate the cause for this issue, we analysis the source code in KafkaStream and found the key is the variable named "completedRestorers".

This is the definition of the variable:
{code:java}
private final Set\<TopicPartition\> completedRestorers = new HashSet\<\>();{code}
Each thread object has its own completedRestorers, which is created in the thread initialization, and not accessed crossly by other threads. The completedRestorers is used to record the partitions that has been restored completely in the thread.
{code:java}
if (restorer.hasCompleted(pos, endOffsets.get(partition))) {
  restorer.restoreDone();
  endOffsets.remove(partition);
  completedRestorers.add(partition);
}{code}
Once the partition is added to completedRestorers set, it will be returned by restore() and pass to the next caller updateRestored(), and then the transitionToRunning() will set this task to running state. 

But we found that completedRestorers \*never\* be cleared during the life cycle of this thread, even in the reset function:
{code:java}
//org/apache/kafka/streams/processor/internals/StoreChangelogReader.java

@Override
public void reset() {
 partitionInfo.clear();
 stateRestorers.clear();
 needsRestoring.clear();
 endOffsets.clear();
 needsInitializing.clear();
}
{code}
It will cause a problem: we assume that the task 1 once assigned to thread A, so its partition has been added to completeRestores. Then it migrated to another thread (maybe in a different instance). After several rounds of rebalancing, it transitioned to thread A again and no checkpoint was here for some reason. The right way is to clean the state folder and restore it for beginning, but now, it found this task's partition is already in completedRestorers list, so it will consider this task as restored completely and resumed running directly.

To avoid it, we should clean the historical completedRestorers set every time after reassignment. So I add the clear operation in the reset() and validate it works.
{code:java}
//org/apache/kafka/streams/processor/internals/StoreChangelogReader.java

public void reset() {
  partitionInfo.clear();
  stateRestorers.clear();
  needsRestoring.clear();
  endOffsets.clear();
  needsInitializing.clear();
  //add by linyli
  completedRestorers.clear();
 }
{code}
 

\*PS:\*

In addition, I also investigate why no checkpoint was found for this state sometimes, and I found that the most common sense is when a task is migrated from one thread to another thread in the \*same\* instance.

Why?

From source code about task reassignment, we know that the task needs write to its checkpoint file in EOS when it's closed by the previous thread, and the next thread will create the task and read from the checkpoint file for restoration. But the read/write process for this checkpoint file is Asynchronous! So it's most probably that the next thread read before the previous one finished writing, causing no checkpoint found issue and need extra restoration, which is totally a waste of time and network.

To avoid the concurrency of read/write, I advise to add some wait time when read checkpoint to restore.

This is my fix: 
{code:java}
//org/apache/kafka/streams/processor/internals/AbstractStateManager.java
AbstractStateManager(final File baseDir,
 final boolean eosEnabled) {
 this.baseDir = baseDir;
 this.eosEnabled = eosEnabled;

 //add by linyli to fix checkpoint file latency in the same instance.
 try
 {
   File checkpointfile = new File(baseDir, CHECKPOINT\_FILE\_NAME);
   if(!checkpointfile.exists()) {
     Thread.sleep(1000);
 }
 }catch (InterruptedException e)
 {

 }

 this.checkpoint = new OffsetCheckpoint(new File(baseDir, CHECKPOINT\_FILE\_NAME));
}{code}



