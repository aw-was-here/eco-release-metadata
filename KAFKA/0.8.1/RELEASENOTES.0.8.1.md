
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
# Apache Kafka  0.8.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-1417](https://issues.apache.org/jira/browse/KAFKA-1417) | *Major* | **Very slow initial high-level consumer startup in low traffic/blocking fetch scenario**

We're seeing very slow startup times when starting a high level consumer in a low traffic/blocking fetch type setup. The example we've come across has a consumer that is set up to use 3 topics and uses a 20s/1 byte fetch timeout. What happens is that the leader finder thread adds partitions one by one and since the offset is not know this causes a call to figure out the offset. This call uses the fetcher threads simple consumer instance and locks around the call. Initially this is not a problem, but as soon as the fetcher thread has some partitions it will start fetching and since this is a low traffic situation the fetch will at least sometimes take up to 20s (again locking around the simple consumer). This leads to behavior like:

# Finder thread adds a partition
# Data thread notices it has partitions to fetch data for, locks the consumer for 20s
# Finder thread tries to add a partition, tries to lock consumer and blocks for 20s
# Rinse, repeat for each partition


---

* [KAFKA-1289](https://issues.apache.org/jira/browse/KAFKA-1289) | *Major* | **Misc. nitpicks in log cleaner**

There are a couple of minor annoyances in the log cleaner in 0.8.1. Since this is one of the major features it would be nice to address these.

Problems:
1. Logging is no longer going to the kafka-cleaner.log 
2. Shutdown when the log cleaner is enabled is very slow
3. TestLogCleaner uses obsolete properties for the producer and consumer

In addition I want to change the configuration from "dedupe" to "compact" as we don't use the terminology dedupe anywhere else and I think it is less intuitive.


---

* [KAFKA-1275](https://issues.apache.org/jira/browse/KAFKA-1275) | *Minor* | **fixes for quickstart documentation**

The quickstart guide refers to commands that no longer exist in the master git branch per changes in KAFKA-554.

If changes for the documentation to match 0.8.1 are already in development elsewhere, please feel free to discard this issue.


---

* [KAFKA-1274](https://issues.apache.org/jira/browse/KAFKA-1274) | *Blocker* | **gradle.properties needs the variables used in the build.gradle**

These get overridden from the global .gradle/gradle.properties so having them as blank is fine when not used or for folks that want to use them in the repo project directly


---

* [KAFKA-1271](https://issues.apache.org/jira/browse/KAFKA-1271) | *Major* | **controller logs exceptions during ZK session expiration**

Saw the following issues when there is ZK session expiration in the controller.

1. 
 ERROR Error handling event ZkEvent[Children of
/admin/delete\_topics changed sent to
kafka.controller.PartitionStateMachine$DeleteTopicsListener@39abdac9]
(org.I0Itec.zkclient.ZkEventThread)
java.lang.NullPointerException
at
scala.collection.JavaConversions$JListWrapper.iterator(JavaConversions.scala:524)
at scala.collection.IterableLike$class.foreach(IterableLike.scala:79)
at
scala.collection.JavaConversions$JListWrapper.foreach(JavaConversions.scala:521)
at
scala.collection.TraversableOnce$class.foldLeft(TraversableOnce.scala:176)
at
scala.collection.JavaConversions$JListWrapper.foldLeft(JavaConversions.scala:521)
at
scala.collection.TraversableOnce$class.$div$colon(TraversableOnce.scala:139)
at
scala.collection.JavaConversions$JListWrapper.$div$colon(JavaConversions.scala:521)
at scala.collection.generic.Addable$class.$plus$plus(Addable.scala:54)
at scala.collection.immutable.Set$EmptySet$.$plus$plus(Set.scala:47)
at scala.collection.TraversableOnce$class.toSet(TraversableOnce.scala:436)
at
scala.collection.JavaConversions$JListWrapper.toSet(JavaConversions.scala:521)
at
kafka.controller.PartitionStateMachine$DeleteTopicsListener$$anonfun$handleChildChange$2.apply$mcV$sp(PartitionStateMachine.scala:448)
at
kafka.controller.PartitionStateMachine$DeleteTopicsListener$$anonfun$handleChildChange$2.apply(PartitionStateMachine.scala:445)
at
kafka.controller.PartitionStateMachine$DeleteTopicsListener$$anonfun$handleChildChange$2.apply(PartitionStateMachine.scala:445)
at kafka.utils.Utils$.inLock(Utils.scala:538)
at
kafka.controller.PartitionStateMachine$DeleteTopicsListener.handleChildChange(PartitionStateMachine.scala:445)
at org.I0Itec.zkclient.ZkClient$7.run(ZkClient.java:570)
at org.I0Itec.zkclient.ZkEventThread.run(ZkEventThread.java:71) 

2. IllegalStateException due to "Kafka scheduler has not been started".


---

* [KAFKA-1263](https://issues.apache.org/jira/browse/KAFKA-1263) | *Major* | **Snazzy up the README markdown for better visibility on github**

Here are my suggested changes so you can see them on github how they look https://github.com/stealthly/samplereadmekafka/blob/master/README.md


---

* [KAFKA-1249](https://issues.apache.org/jira/browse/KAFKA-1249) | *Minor* | **release tar name is different than 0.8.0**

kafka\_2.10.1-0.8.1-dist.tgz

I think this is a minor issue since we can just rename prior to upload and signing


---

* [KAFKA-1246](https://issues.apache.org/jira/browse/KAFKA-1246) | *Major* | **The 2.10 version is showing up as 2.10.1**

This is arguably not a bad thing it is just different so I wanted to create a ticket for it...  If we could keep it consistent as 2.10 that would make sense since Scala is now minor version compatible so either way really.  

Need to confirm that the 2.10.1 is in fact working in 2.10.2 and 2.10.3


---

* [KAFKA-1245](https://issues.apache.org/jira/browse/KAFKA-1245) | *Blocker* | **the jar files and pom are not being signed so nexus is failing to publish them**

I have a fix for this I did already in a previous patch, just need to dig it out and see about integrating it again and where it was left off


---

* [KAFKA-1244](https://issues.apache.org/jira/browse/KAFKA-1244) | *Blocker* | **The LICENSE and NOTICE are missing from the jar files**

The LICENSE and NOTICE are in the release tar but are missing from the jar META-INF published to maven and the jar files within the release tar.


---

* [KAFKA-1243](https://issues.apache.org/jira/browse/KAFKA-1243) | *Blocker* | **Gradle issues for release**

This is the parent issue for all of the sub tasks found for the release that are required to update on gradle.  I think some of the changes are going to be minor and in some cases not blockers but there are a bunch of them so we can identify each minuscule item but have it a bit organized.


---

* [KAFKA-1232](https://issues.apache.org/jira/browse/KAFKA-1232) | *Major* | **make TopicCommand more consistent**

Currently, TopicCommand has the following inconsistencies.
1. The topic arg is optional in list topic, but not in describe topic.
2. The topics-with-overrides option is available in list topic, but not in describe topic.
3. It's also a bit weird that if the topics-with-overrides option is specified, list topics returns more than just a list of topics (it prints out the config, replication factor, etc).


---

* [KAFKA-1228](https://issues.apache.org/jira/browse/KAFKA-1228) | *Critical* | **Socket Leak on ReplicaFetcherThread**

Follow up bug on the user mailing list

http://search-hadoop.com/m/4TaT4XrcE71/possibly+leaking&subj=Possibly+leaking+socket+on+ReplicaFetcherThread

uncaught "java.nio.channels.UnresolvedAddressException" when trying to resolve brokers domain lead to unclose socket


---

* [KAFKA-1214](https://issues.apache.org/jira/browse/KAFKA-1214) | *Trivial* | **Support arguments to zookeeper-shell.sh script**

It would be useful to support arguments to zookeeper-shell.sh script (for example, in provisioning Kafka to use a chroot this could be used to pre-create the chroot ZNode).


---

* [KAFKA-1205](https://issues.apache.org/jira/browse/KAFKA-1205) | *Minor* | **README in examples not update**

The commands in the examples/README are not working. The name of the projects and the order of them have been changed.


---

* [KAFKA-1202](https://issues.apache.org/jira/browse/KAFKA-1202) | *Major* | **optimize ZK access in KafkaController**

In KafkaController, we access ZK in the following places. Those accesses are not necessary since we can read from the cache in the controller.

In onBrokerFailure(deadBrokers: Seq[Int]),
replicaStateMachine.handleStateChanges(getAllReplicasOnBroker(zkClient, controllerContext.allTopics.toSeq, deadBrokers), OfflineReplica)
  }

In onBrokerStartup(newBrokers: Seq[Int])
replicaStateMachine.handleStateChanges(getAllReplicasOnBroker(zkClient, controllerContext.allTopics.toSeq, newBrokers), OnlineReplica)
  }

In  shutdownBroker(),
getPartitionsAssignedToBroker(zkClient, controllerContext.allTopics.toSeq, id).map {
  }


---

* [KAFKA-1200](https://issues.apache.org/jira/browse/KAFKA-1200) | *Major* | **inconsistent log levels when consumed offset is reset**

I've recently been dealing with the issue where my consumer falls behind and essentially loses data when the broker deletes data, due to it's retention policy.

On the broker, this is logged as an ERROR:

2013-12-23 05:02:08,456 ERROR [kafka-request-handler-2] server.KafkaApis - [KafkaApi-45] Error when processing fetch request for partition [mytopic,0] offset 204243601 from consumer with correlation id 130341
kafka.common.OffsetOutOfRangeException: Request for offset 204243601 but we only have log segments in the range 204343397 to 207423640.

But on the consumer, this same event is logged as a WARN:

2013-12-23 05:02:08,797  WARN [ConsumerFetcherThread-myconsumergroup-1387353494862-7aa0c61d-0-45] consumer.ConsumerFetcherThread - [ConsumerFetcherThread-myconsumergroup-1387353494862-7aa0c61d-0-45], Current offset 204243601 for partition [mytopic,0] out of range; reset offset to 204343397

It seems this should also be an ERROR condition (it would seem the consumer would care more about this than the broker, at least!).

Also, sometimes (but not always) there is also this log message on the consumer, which does log as an ERROR (I'm not sure why this log line doesn't always appear after the above WARN?):

2014-01-08 02:31:47,681 ERROR [myconsumerthread-0]
consumer.ConsumerIterator - consumed offset: 16163904970 doesn't match
fetch offset: 16175326044 for mytopic:0: fetched offset = 16175330598:
consumed offset = 16163904970;
 Consumer may lose data

In this message, there is the "Consumer may lose data" message, which makes sense.  Seems the fetcher thread above should also log something like that, and be an ERROR.

This would allow for more consistent alerting, in this case.


---

* [KAFKA-1198](https://issues.apache.org/jira/browse/KAFKA-1198) | *Major* | **NullPointerException in describe topic**

If topic is not specified, we get the following.

bin/kafka-topics.sh --zookeeper localhost:2181 --describe
(Error while executing topic command,java.lang.NullPointerException)

Also, list topic seems to always list all topics even when topics are specified.


---

* [KAFKA-1186](https://issues.apache.org/jira/browse/KAFKA-1186) | *Major* | **Add topic regex to the kafka-topics tool**

Add the ability to take topic regular expressions to the kafka-topics tool.


---

* [KAFKA-1171](https://issues.apache.org/jira/browse/KAFKA-1171) | *Blocker* | **Gradle build for Kafka**

We have previously discussed moving away from SBT to an easier-to-comprehend-and-debug build system such as Ant or Gradle. I put up a patch for an Ant+Ivy build a while ago[1], and it sounded like people wanted to check out Gradle as well.

1. https://issues.apache.org/jira/browse/KAFKA-855


---

* [KAFKA-1170](https://issues.apache.org/jira/browse/KAFKA-1170) | *Critical* | **ISR can be inconsistent during partition reassignment for low throughput partitions**

During reassignment of partitions, if the reassigned replicas already has the current leader, then the ISR of the partition can have the old replicas. This is particularly true for partitions that don't have further incoming data, since the leader does not remove replicas that have stopped sending fetch requests from the ISR if their log end offsets match (no more data comes in).


---

* [KAFKA-1164](https://issues.apache.org/jira/browse/KAFKA-1164) | *Major* | **kafka should depend on snappy 1.0.5 (instead of 1.0.4.1)**

There is a bug in snappy 1.0.4.1, that makes it not work when using java 7, on MacOSX.  This issue is fixed in snappy 1.0.5.  We've confirmed this locally.

https://github.com/ptaoussanis/carmine/issues/5

So, the kafka distribution should update the KafkaProject.scala file to call out version 1.0.5 instead of 1.0.4.1.  I believe this file is used when generating the pom.xml file for kafka.


---

* [KAFKA-1158](https://issues.apache.org/jira/browse/KAFKA-1158) | *Major* | **remove bin/run-rat.sh**

its vestigial we don't even use it during a release, just run rat from the jar on its own...


---

* [KAFKA-1157](https://issues.apache.org/jira/browse/KAFKA-1157) | *Major* | **Clean up Per-topic Configuration from Kafka properties**

After KAFKA-554, per-topic configurations could be removed from kafka properties.


---

* [KAFKA-1156](https://issues.apache.org/jira/browse/KAFKA-1156) | *Critical* | **Improve reassignment tool to output the existing assignment to facilitate rollbacks**

It is useful for the partition reassignment tool to output the current partition assignment as part of the dry run. This will make rollbacks easier if the reassignment does not work out.


---

* [KAFKA-1154](https://issues.apache.org/jira/browse/KAFKA-1154) | *Major* | **replicas may not have consistent data after becoming follower**

This is an issued introduced in KAFKA-1001. The issue is that in ReplicaManager.makeFollowers(), we truncate the log before marking the replica as the follower. New messages from the producer can still be added to the log after the log is truncated, but before the replica is marked as the follower. Those newly produced messages can actually be committed, which implies those truncated messages are also committed. However, the new leader is not guaranteed to have those truncated messages.


---

* [KAFKA-1152](https://issues.apache.org/jira/browse/KAFKA-1152) | *Major* | **ReplicaManager's handling of the leaderAndIsrRequest should gracefully handle leader == -1**

If a partition is created with replication factor 1, then the controller can set the partition's leader to -1 in leaderAndIsrRequest when the only replica of the partition is being bounced. 

The handling of this request with a leader == -1 throws an exception on the ReplicaManager which prevents the addition of fetchers for the remaining partitions in the leaderAndIsrRequest.

After the replica is bounced, the replica first receives a leaderAndIsrRequest with leader == -1, then it receives another leaderAndIsrRequest with the correct leader (which is the replica itself) due to OfflinePartition to OnlinePartition state change. 

In handling the first request, ReplicaManager should ignore the partition for which the request has leader == -1, and continue addition of fetchers for the remaining partitions. The next leaderAndIsrRequest will take care of setting the correct leader for that partition.


---

* [KAFKA-1151](https://issues.apache.org/jira/browse/KAFKA-1151) | *Major* | **The Hadoop consumer API doc is not referencing the contrib consumer**

http://kafka.apache.org/documentation.html#kafkahadoopconsumerapi

it is pointing to https://github.com/linkedin/camus/tree/camus-kafka-0.8/

if we are still supporting the contrib/hadoop-consumer then we should point to the read me (maybe this link instead https://github.com/apache/kafka/tree/0.8/contrib/hadoop-consumer)

thoughts?


---

* [KAFKA-1141](https://issues.apache.org/jira/browse/KAFKA-1141) | *Blocker* | **make changes to downloads for the archive old releases to new old\_releases folder**

I copied the files from dist incubator to where they belong now in dist, gotta modifiy the downloads page too

need to-do this before RC4

http://archive.apache.org/dist/kafka/ waiting on the artifacts to mirror


---

* [KAFKA-1140](https://issues.apache.org/jira/browse/KAFKA-1140) | *Major* | **Move the decoding logic from ConsumerIterator.makeNext to next**

Usually people will write code around consumer like

while(iter.hasNext()) {
try {
  msg = iter.next()
  // do something
}
catch{
}
}

----

However, the iter.hasNext() call itself can throw exceptions due to decoding failures. It would be better to move the decoding to the next function call.


---

* [KAFKA-1136](https://issues.apache.org/jira/browse/KAFKA-1136) | *Trivial* | **Add subAppend in Log4jAppender for generic usage**

KafkaLog4jAppender is quite useful for us to send our log4j logs to the Kafka system with ease. However, according to our experience,  it is not so that convenient to customize the message content before emitting it out. Sometimes, we need to decorate the message like adding more system level information before passing it to the producer. I wonder if it is possible to add one subAppend() function, like org.apache.log4j.WriterAppender does. Thus, the end user can customize their message by overwriting the subAppend() only in their own hierarchy class, and re-use all the rest part.


---

* [KAFKA-1133](https://issues.apache.org/jira/browse/KAFKA-1133) | *Major* | **LICENSE and NOTICE files need to get into  META-INF when jars are built before they're signed for publishing to maven**

This needs to happen in our Build.scala the sbt package docs http://www.scala-sbt.org/release/docs/Howto/package.html probably a straight forward line of code or ten or whatever to-do this maybe


---

* [KAFKA-1131](https://issues.apache.org/jira/browse/KAFKA-1131) | *Major* | **copy some more files into the release tar and zip that are needed/desired**

e.g.  LICENSE, NOTICE, README (or maybe a new quick start file .txt)


---

* [KAFKA-1128](https://issues.apache.org/jira/browse/KAFKA-1128) | *Major* | **Github is still showing 0.7 as the default branch**

https://github.com/apache/kafka

I think this is because we don't have a master branch.  My thoughts are we should branch trunk creating a master branch and then everything would be ok... we then start using master as we used to use trunk.

I think this is important to promote the adoption of 0.8.0 otherwise folks that find Kafka on github are still going to start with 0.7 and we should always be whatever is latest and live (0.9 moving forward and so on) from the main repo.

thoughts?


---

* [KAFKA-1127](https://issues.apache.org/jira/browse/KAFKA-1127) | *Minor* | **kafka and zookeeper server should start in daemon mode and log to correct position**

Hi

At present, the kafka-server-start.sh and zookeeper-server-start.sh will start kafka broker and zookeeper in fg mode, though "daemon" parameter is added. you need to add & to make it bg. But the console log will still output in fg.

Should make it fully run in bg and redirect console log to files. And log file position should not depends on where the cmd is running. Thus it will be more friendly for scripts to launch server on nodes by batch.


---

* [KAFKA-1121](https://issues.apache.org/jira/browse/KAFKA-1121) | *Major* | **DumpLogSegments tool should print absolute file name to report inconsistencies**

Normally, the user would know where the index file lies. But in case of a script that continuously checks the index files for consistency, it will help to have the absolute file path printed in the output.


---

* [KAFKA-1112](https://issues.apache.org/jira/browse/KAFKA-1112) | *Critical* | **broker can not start itself after kafka is killed with -9**

When I kill kafka with -9, broker cannot start itself because of corrupted index logs. I think kafka should try to delete/rebuild indexes itself without manual intervention.


---

* [KAFKA-1103](https://issues.apache.org/jira/browse/KAFKA-1103) | *Major* | **Consumer uses two zkclients**

.. which is very confusing when debugging consumer logs. I don't remember any good reason for this, and we should get rid of the one instantiated in ZookeeperTopicEventWatcher if possible.


---

* [KAFKA-1097](https://issues.apache.org/jira/browse/KAFKA-1097) | *Critical* | **Race condition while reassigning low throughput partition leads to incorrect ISR information in zookeeper**

While moving partitions, the controller moves the old replicas through the following state changes -

ONLINE -> OFFLINE -> NON\_EXISTENT

During the offline state change, the controller removes the old replica and writes the updated ISR to zookeeper and notifies the leader. Note that it doesn't notify the old replicas to stop fetching from the leader (to be fixed in KAFKA-1032). During the non-existent state change, the controller does not write the updated ISR or replica list to zookeeper. Right after the non-existent state change, the controller writes the new replica list to zookeeper, but does not update the ISR. So an old replica can send a fetch request after the offline state change, essentially letting the leader add it back to the ISR. The problem is that if there is no new data coming in for the partition and the old replica is fully caught up, the leader cannot remove it from the ISR. That lets a non existent replica live in the ISR at least until new data comes in to the partition


---

* [KAFKA-1092](https://issues.apache.org/jira/browse/KAFKA-1092) | *Major* | **Add server config parameter to separate bind address and ZK hostname**

Currently, in server.properties, you can configure host.name which gets used for two purposes: 1) to bind the socket 2) to publish the broker details to ZK for clients to use.

There are times when these two settings need to be different.  Here's an example.  I want to setup Kafka brokers on OpenStack virtual machines in a private cloud but I need producers to connect from elsewhere on the internal corporate network.  With OpenStack, the virtual machines are only exposed to DHCP addresses (typically RFC 1918 private addresses).  You can assign "floating ips" to a virtual machine but it's forwarded using Network Address Translation and not exposed directly to the VM.  Also, there's typically no DNS to provide hostname lookup.  Hosts have names like "fubar.novalocal" that are not externally routable.

Here's what I want.  I want the broker to bind to the VM's private network IP but I want it to publish it's floating IP to ZooKeeper so that producers can publish to it.

I propose a new optional parameter, "listen", which would allow you to specify the socket address to listen on.  If not set, the parameter would default to host.name, which is the current behavior.

#Publish the externally routable IP in ZK
host.name = <floating ip>
#Accept connections from any interface the VM knows about
listen = *


---

* [KAFKA-1090](https://issues.apache.org/jira/browse/KAFKA-1090) | *Minor* | **testPipelinedRequestOrdering has transient failures**

The issue is that after the 1st response is added to the response queue, the socket key may or may not be readable depending on how quickly the response is sent through socket.


---

* [KAFKA-1084](https://issues.apache.org/jira/browse/KAFKA-1084) | *Minor* | **Validate properties for custom serializers**

We use specifics encoder/decoder for our producers/consumers, they get correctly initialized by the Producer/Consumer. The only downside is the validate() function of VerifiableProperties that pollutes our log stream.

This patch allows custom serializers keys to validate correctly if they begin with the "external" prefix, for example:

external.my.encoder.param=true

will not raise a WARN.


---

* [KAFKA-1074](https://issues.apache.org/jira/browse/KAFKA-1074) | *Major* | **Reassign partitions should delete the old replicas from disk**

Currently, after reassigning replicas to other brokers, the old replicas are not removed from disk and have to be deleted manually.


---

* [KAFKA-1060](https://issues.apache.org/jira/browse/KAFKA-1060) | *Major* | **Break-down sendTime into responseQueueTime and the real sendTime**

Currently the responseSendTime in updateRequestMetrics actually contains two portions, the responseQueueTime and the real SendTime. We would like to distinguish these two cases.

This is related to KAFKA-1043


---

* [KAFKA-1055](https://issues.apache.org/jira/browse/KAFKA-1055) | *Major* | **BrokerTopicStats is updated before checking for MessageSizeTooLarge**

In Log.append function, BrokerTopicStats is updated before the checking for MessageSizeTooLarge, hence even if messages are refused at the server due to this exception, their counts would still be aggregated. Need to move the BrokerTopicStats update after the checking.


---

* [KAFKA-1052](https://issues.apache.org/jira/browse/KAFKA-1052) | *Major* | **integrate add-partitions command into topicCommand**

After merging from 0.8 (kafka-1051), we dragged in a new admin command add-partitions. This needs to be integrated with the general topicCommand.


---

* [KAFKA-1036](https://issues.apache.org/jira/browse/KAFKA-1036) | *Critical* | **Unable to rename replication offset checkpoint in windows**

Although there was a fix for checkpoint file renaming in windows that tries to delete the existing checkpoint file if renamed failed, I'm still seeing renaming errors on windows even though the destination file doesn't exist.

A bit investigation shows that it wasn't able to rename the file since the kafka jvm still holds a fie lock on the tmp file and wasn't able to rename it. 

Attaching a patch that calls a explict writer.close so it can release the lock and can able to rename it.


---

* [KAFKA-1020](https://issues.apache.org/jira/browse/KAFKA-1020) | *Major* | **Remove getAllReplicasOnBroker from KafkaController**

Today KafkaController call getAllReplicasOnBroker on broker failure and new broker start up to get all the replicas that broker is holding (or suppose to hold). This function actually issue a read on each topic's partition znodes. With large number of topic/partitions this could seriously increase the latency of handling broker failure and new broker startup.

On the other hand, ControllerContext maintains a partitionReplicaAssignment cache, which is designed to keep the most updated partition replica assignment according to ZK. So instead of reading from ZK, we could just read from the local cache, given that partitionReplicaAssignment is guaranteed to be up-to-date.


---

* [KAFKA-1009](https://issues.apache.org/jira/browse/KAFKA-1009) | *Minor* | **DumpLogSegments tool should return error on non-existing files**

If we run the tool on an non-existing file, we get the following

bin/kafka-run-class.sh kafka.tools.DumpLogSegments --files 00.log
Dumping 00.log
Starting offset: 0

The tool should return an error message instead.


---

* [KAFKA-1004](https://issues.apache.org/jira/browse/KAFKA-1004) | *Major* | **Handle topic event for trivial whitelist topic filters**

Toay consumer's TopicEventWatcher is not subscribed with trivial whitelist topic names. Hence if the topic is not registered on ZK when the consumer is started, it will not trigger the rebalance of consumers later when it is created and hence not be consumed even if it is in the whilelist. A proposed fix would be always subscribe TopicEventWatcher for all whitelist consumers.


---

* [KAFKA-1001](https://issues.apache.org/jira/browse/KAFKA-1001) | *Major* | **Handle follower transition in batch**

In KAFKA-615 we made changes to avoid fsync'ing the active segment of the log due to log roll and maintaining recovery semantics.

One downside of the fix for that issue was that it required checkpointing the recovery point for the log many times, one for each partition that transitioned to follower state.

In this ticket I aim to fix that issue by making the following changes:
1. Add a new API LogManager.truncateTo(m: Map[TopicAndPartition, Long]). This method will first checkpoint the recovery point, then truncate each of the given logs to the given offset. This method will have to ensure these two things happen atomically.
2. Change ReplicaManager to first stop fetching for all partitions changing to follower state, then call LogManager.truncateTo then complete the existing logic.

We think this will, over all, be a good thing. The reason is that the fetching thread current does something like (a) acquire lock, (b) fetch partitions, (c) write data to logs, (d) release locks. Since we currently remove fetchers one at a time this requires acquiring the fetcher lock, and hence generally blocking for half of the read/write cycle for each partition. By doing this in bulk we will avoid reacquiring the lock over and over for each change.


---

* [KAFKA-995](https://issues.apache.org/jira/browse/KAFKA-995) | *Minor* | **Enforce that the value for replica.fetch.max.bytes is always \>= the value for message.max.bytes**

replica.fetch.max.bytes must always be >=  message.max.bytes for replication to work correctly. This ticket adds enforcement of the constraint.


---

* [KAFKA-985](https://issues.apache.org/jira/browse/KAFKA-985) | *Minor* | **Increasing log retention quickly overflows scala Int**

After increasing log.retention.hours from the default of 168 to 744 (31 days) I noticed that logs were being deleted at every cleanup interval.

scala> val retentionMs: Long = 60 * 60 * 1000 * 31 * 24
retentionMs: Long = -1616567296

This only appears to affect trunk.  I'll attach the minor patch I'm using locally.  Thanks.


---

* [KAFKA-933](https://issues.apache.org/jira/browse/KAFKA-933) | *Minor* | **Hadoop example running DataGenerator causes kafka.message.Message cannot be cast to [B exception**

Working of git master codebase

and following instructions at

https://github.com/apache/kafka/blob/trunk/contrib/hadoop-consumer/README

https://github.com/apache/kafka

when running

./run-class.sh kafka.etl.impl.DataGenerator test/test.properties

an exception is thrown

Exception in thread "main" java.lang.ClassCastException: kafka.message.Message cannot be cast to [B
	at kafka.serializer.DefaultEncoder.toBytes(Encoder.scala:34)
	at kafka.producer.async.DefaultEventHandler$$anonfun$serialize$1.apply(DefaultEventHandler.scala:129)
	at kafka.producer.async.DefaultEventHandler$$anonfun$serialize$1.apply(DefaultEventHandler.scala:124)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:233)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:233)
	at scala.collection.Iterator$class.foreach(Iterator.scala:772)
	at scala.collection.JavaConversions$JIteratorWrapper.foreach(JavaConversions.scala:573)
	at scala.collection.IterableLike$class.foreach(IterableLike.scala:73)
	at scala.collection.JavaConversions$JListWrapper.foreach(JavaConversions.scala:615)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:233)
	at scala.collection.JavaConversions$JListWrapper.map(JavaConversions.scala:615)
	at kafka.producer.async.DefaultEventHandler.serialize(DefaultEventHandler.scala:124)
	at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:54)
	at kafka.producer.Producer.send(Producer.scala:74)
	at kafka.javaapi.producer.Producer.send(Producer.scala:41)


---

* [KAFKA-930](https://issues.apache.org/jira/browse/KAFKA-930) | *Major* | **Integrate preferred replica election logic into kafka**

It seems useful to integrate the preferred replica election logic into kafka controller. A simple way to implement this would be to have a background thread that periodically finds the topic partitions that are not assigned to the preferred broker and initiate the move. We could come up with some heuristics to initiate the move only if the imbalance over a specific threshold in order to avoid rebalancing too aggressively. Making the software do this reduces operational cost.


---

* [KAFKA-925](https://issues.apache.org/jira/browse/KAFKA-925) | *Major* | **Add optional partition key override in producer**

We have a key that is used for partitioning in the producer and stored with the message. Actually these uses, though often the same, could be different. The two meanings are effectively:
1. Assignment to a partition
2. Deduplication within a partition

In cases where we want to allow the client to take advantage of both of these and they aren't the same it would be nice to allow them to be specified separately.

To implement this I added an optional partition key to KeyedMessage. When specified this key is used for partitioning rather than the message key. This key is of type Any and the parametric typing is removed from the partitioner to allow it to work with either key.

An alternative would be to allow the partition id to specified in the KeyedMessage. This would be slightly more convenient in the case where there is no partition key but instead you know a priori the partition number--this case must be handled by giving the partition id as the partition key and using an identity partitioner which is slightly more roundabout. However this is inconsistent with the normal partitioning which requires a key in the case where the partition is determined by a key--in that case you would be manually calling your partitioner in user code. It seems best to me to either use a key or always a partition and since we currently take a key I stuck with that.


---

* [KAFKA-918](https://issues.apache.org/jira/browse/KAFKA-918) | *Major* | **Change log.retention.hours to be log.retention.mins**

We stood up a cluster that is processing over 350,000 events per second, with each event a fixed payload size of 2K. The storage required to process that much data over an hour is beyond what we wanted to pay for at AWS. Additionally, we don't have a requirement to keep the files around for an extended period after processing.

It would be tremendously valuable for us to be able to define the log.retention in minutes, not hours. For example, we would prefer to only keep 30 minutes of logs around.


---

* [KAFKA-897](https://issues.apache.org/jira/browse/KAFKA-897) | *Minor* | **NullPointerException in ConsoleConsumer**

The protocol document [1] mentions that keys and values in message sets can be null. However the ConsoleConsumer throws a NPE when a null is passed for the value.

java.lang.NullPointerException
        at kafka.utils.Utils$.readBytes(Utils.scala:141)
        at kafka.consumer.ConsumerIterator.makeNext(ConsumerIterator.scala:106)
        at kafka.consumer.ConsumerIterator.makeNext(ConsumerIterator.scala:33)
        at kafka.utils.IteratorTemplate.maybeComputeNext(IteratorTemplate.scala:61)
        at kafka.utils.IteratorTemplate.hasNext(IteratorTemplate.scala:53)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at kafka.utils.IteratorTemplate.foreach(IteratorTemplate.scala:32)
        at scala.collection.IterableLike$class.foreach(IterableLike.scala:79)
        at kafka.consumer.KafkaStream.foreach(KafkaStream.scala:25)
        at kafka.consumer.ConsoleConsumer$.main(ConsoleConsumer.scala:195)
        at kafka.consumer.ConsoleConsumer.main(ConsoleConsumer.scala)

[1] https://cwiki.apache.org/confluence/display/KAFKA/A+Guide+To+The+Kafka+Protocol#AGuideToTheKafkaProtocol-Messagesets


---

* [KAFKA-896](https://issues.apache.org/jira/browse/KAFKA-896) | *Major* | **merge 0.8 (988d4d8e65a14390abd748318a64e281e4a37c19) to trunk**

Files that have conflicts:

# Unmerged paths:
#   (use "git add/rm <file>..." as appropriate to mark resolution)
#
#	both modified:      core/src/main/scala/kafka/admin/PreferredReplicaLeaderElectionCommand.scala
#	both modified:      core/src/main/scala/kafka/cluster/Partition.scala
#	both modified:      core/src/main/scala/kafka/log/FileMessageSet.scala
#	both modified:      core/src/main/scala/kafka/log/Log.scala
#	both modified:      core/src/main/scala/kafka/log/LogManager.scala
#	both modified:      core/src/main/scala/kafka/message/ByteBufferMessageSet.scala
#	deleted by us:      core/src/main/scala/kafka/server/HighwaterMarkCheckpoint.scala
#	both modified:      core/src/main/scala/kafka/server/KafkaApis.scala
#	both modified:      core/src/main/scala/kafka/server/ReplicaFetcherThread.scala
#	both modified:      core/src/main/scala/kafka/server/ReplicaManager.scala
#	both modified:      core/src/main/scala/kafka/tools/DumpLogSegments.scala
#	both modified:      core/src/test/scala/unit/kafka/admin/AdminTest.scala
#	both modified:      core/src/test/scala/unit/kafka/utils/TestUtils.scala
#

Files have to be changed manually due to merge.

# Changed but not updated:
#   (use "git add <file>..." to update what will be committed)
#   (use "git checkout -- <file>..." to discard changes in working directory)
#
#	modified:   core/src/main/scala/kafka/log/LogSegment.scala
#	modified:   core/src/test/scala/unit/kafka/producer/ProducerTest.scala
#


---

* [KAFKA-852](https://issues.apache.org/jira/browse/KAFKA-852) | *Minor* | **Remove clientId from OffsetFetchResponse and OffsetCommitResponse**

These are not needed and conflict with the API documentation. Should be removed to be consistent with other APIs


---

* [KAFKA-823](https://issues.apache.org/jira/browse/KAFKA-823) | *Major* | **merge 0.8 (51421fcc0111031bb77f779a6f6c00520d526a34) to trunk**

merge 0.8 up to the following commit to trunk

commit 51421fcc0111031bb77f779a6f6c00520d526a34
Author: Neha Narkhede <neha.narkhede@gmail.com>
Date:   Fri Mar 22 09:32:27 2013 -0700

    KAFKA-816 Reduce noise in Kafka server logs due to NotLeaderForPartitionException; reviewed by Jun Rao


---

* [KAFKA-739](https://issues.apache.org/jira/browse/KAFKA-739) | *Major* | **Handle null values in Message payload**

Add tests for null message payloads in producer, server, and consumer.
Ensure log cleaner treats these as deletes.
Test that null keys are rejected on dedupe logs.


---

* [KAFKA-723](https://issues.apache.org/jira/browse/KAFKA-723) | *Critical* | **Scala's default case class toString() is very inefficient**

Request logging is in the critical path of processing requests and we use Scala's default toString() API to log the requests. We should override the toString() in these case classes and log only what is useful.


---

* [KAFKA-671](https://issues.apache.org/jira/browse/KAFKA-671) | *Blocker* | **DelayedProduce requests should not hold full producer request data**

Per summary, this leads to unnecessary memory usage.


---

* [KAFKA-657](https://issues.apache.org/jira/browse/KAFKA-657) | *Major* | **Add an API to commit offsets**

Currently the consumer directly writes their offsets to zookeeper. Two problems with this: (1) This is a poor use of zookeeper, and we need to replace it with a more scalable offset store, and (2) it makes it hard to carry over to clients in other languages. A first step towards accomplishing that is to add a proper Kafka API for committing offsets. The initial version of this would just write to zookeeper as we do today, but in the future we would then have the option of changing this.

This api likely needs to take a sequence of consumer-group/topic/partition/offset entries and commit them all.

It would be good to do a wiki design on how this would work and consensus on that first.


---

* [KAFKA-648](https://issues.apache.org/jira/browse/KAFKA-648) | *Blocker* | **Use uniform convention for naming properties keys**

Currently, the convention that we seem to use to get a property value in *Config is as follows:

val configVal = property.getType("config.val", ...) // dot is used to separate two words in the key and the first letter of second word is capitalized in configVal.

We should use similar convention for groupId, consumerId, clientId, correlationId.

This change will probably be backward non-compatible.


---

* [KAFKA-615](https://issues.apache.org/jira/browse/KAFKA-615) | *Major* | **Avoid fsync on log segment roll**

It still isn't feasible to run without an application level fsync policy. This is a problem as fsync locks the file and tuning such a policy so that the flushes aren't so frequent that seeks reduce throughput, yet not so infrequent that the fsync is writing so much data that there is a noticable jump in latency is very challenging.

The remaining problem is the way that log recovery works. Our current policy is that if a clean shutdown occurs we do no recovery. If an unclean shutdown occurs we recovery the last segment of all logs. To make this correct we need to ensure that each segment is fsync'd before we create a new segment. Hence the fsync during roll.

Obviously if the fsync during roll is the only time fsync occurs then it will potentially write out the entire segment which for a 1GB segment at 50mb/sec might take many seconds. The goal of this JIRA is to eliminate this and make it possible to run with no application-level fsyncs at all, depending entirely on replication and background writeback for durability.


---

* [KAFKA-561](https://issues.apache.org/jira/browse/KAFKA-561) | *Major* | **Rebuild index file for a log segment if there is none**

There are two ways an index file could be missing:
1. Someone could delete it or it could be lost due to file corruption
2. The server could crash in the middle of rolling the log after having created the new log segment but before having created the corresponding index segment.

Regardless it would be nice to recover gracefully from this and rebuild the index segment off the corresponding log segment if this happened. This will be slow.

This should be done after KAFKA-521.


---

* [KAFKA-554](https://issues.apache.org/jira/browse/KAFKA-554) | *Major* | **Move all per-topic configuration into ZK and add to the CreateTopicCommand**

We have a number of per-topic configurations that control message retention and flush interval. Here is the list of properties I find in KafkaConfig that appear to be per-topic:
  topic.log.file.size
  topic.log.roll.hours
  topic.log.retention.hours
  topic.log.retention.size
  topic.flush.intervals.ms
Currently we specify these in server.properties. This is not a good solution as it requires a rolling bounce of the cluster to make a change, which just doesn't scale to having hundreds of topics. Also the map encoded in a CSV string is kind of hacky.

We should move these into ZK in some kind of JSON blob that allows easily adding new per-topic configs and we should remove these from server.properties.

It would be good to start with a wiki design and get consensus on that first.


---

* [KAFKA-515](https://issues.apache.org/jira/browse/KAFKA-515) | *Major* | **Log cleanup can close a file channel opnened by Log.read before the transfer completes**

If consumers are lagging behind, then log cleanup activities can close a file channel opened by Log.read 
1. before the transfer the starts (broker will probably throw an exception in this case) OR
2. during the transfer (possibility of half baked corrupted data being sent to consumer?)

We probably haven't hit this race condition in practice because the consumers consume data well before the logs are cleaned up.

To avoid this issue, we could avoid cleaning up the file until the transfer is complete. Reference counting?


---

* [KAFKA-347](https://issues.apache.org/jira/browse/KAFKA-347) | *Major* | **change number of partitions of a topic online**

We will need an admin tool to change the number of partitions of a topic online.


---

* [KAFKA-330](https://issues.apache.org/jira/browse/KAFKA-330) | *Blocker* | **Add delete topic support**

One proposal of this API is here - https://cwiki.apache.org/confluence/display/KAFKA/Kafka+replication+detailed+design+V2#KafkareplicationdetaileddesignV2-Deletetopic


---

* [KAFKA-184](https://issues.apache.org/jira/browse/KAFKA-184) | *Minor* | **Log retention size and file size should be a long**

Realized this in a local set up: the log.retention.size config option should be a long, or we're limited to 2GB. Also, the name can be improved to log.retention.size.bytes or Mbytes as appropriate. Same comments for log.file.size. If we rename the configs, it would be better to resolve KAFKA-181 first.



