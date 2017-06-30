
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
# Apache Kafka  0.11.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [KAFKA-4864](https://issues.apache.org/jira/browse/KAFKA-4864) | *Critical* | **Kafka Secure Migrator tool doesn't secure all the nodes**

It seems that the secure nodes as referred by ZkUtils.scala are the following:

https://github.com/apache/kafka/blob/trunk/core/src/main/scala/kafka/utils/ZkUtils.scala#L201

A couple things:
- the list is highly outdated, and for example the most important nodes such as kafka-acls don't get secured. That's a huge security risk. Would it be better to just secure all the nodes recursively from the given root?
- the root of some nodes aren't secured. Ex: /brokers (but many others).

The result is the following after running the tool:
zookeeper-security-migration --zookeeper.acl secure --zookeeper.connect zoo1:2181/kafka-test

[zk: localhost:2181(CONNECTED) 9] getAcl /kafka-test/brokers
'world,'anyone
: cdrwa
[zk: localhost:2181(CONNECTED) 11] getAcl /kafka-test/brokers/ids
'world,'anyone
: r
'sasl,'myzkclient@EXAMPLE.COM
: cdrwa
[zk: localhost:2181(CONNECTED) 16] getAcl /kafka-test/kafka-acl
'world,'anyone
: cdrwa

That seems pretty bad to be honest... A fast enough ZkClient could delete some root nodes, and create the nodes they like before the Acls get set.


---

* [KAFKA-5289](https://issues.apache.org/jira/browse/KAFKA-5289) | *Critical* | **One StopReplicaRequest will caused two Responses**

After discussed with my friend markTC，we find a bug.
One StopReplicaRequest will caused two Responses.

At core/src/main/scala/kafka/server/KafkaApi.class 175 and 176 lines.

When an exception caused at 'replicaManager.replicaFetcherManager.shutdownIdleFetcherThreads()', 
will also return two responses.

one is at 175 lines 'requestChannel.sendResponse(new RequestChannel.Response(request, new ResponseSend(request.connectionId, responseHeader, response)))' and another at 111 lines 'requestChannel.sendResponse(new Response(request, new ResponseSend(request.connectionId, respHeader, response)))'.


---

* [KAFKA-3123](https://issues.apache.org/jira/browse/KAFKA-3123) | *Critical* | **Follower Broker cannot start if offsets are already out of range**

I was trying to upgrade our test Windows cluster from 0.8.1.1 to 0.9.0 one machine at a time. Our logs have just 2 hours of retention. I had re-imaged the test machine under consideration, and got the following error in loop after starting afresh with 0.9.0 broker:

[2016-01-19 13:57:28,809] WARN [ReplicaFetcherThread-1-169595708], Replica 177775588 for partition [EventLogs4,1] reset its fetch offset from 0 to current leader 169595708's start offset 334086 (kafka.server.ReplicaFetcherThread)
[2016-01-19 13:57:28,809] ERROR [ReplicaFetcherThread-1-169595708], Error getting offset for partition [EventLogs4,1] to broker 169595708 (kafka.server.ReplicaFetcherThread)
java.lang.IllegalStateException: Compaction for partition [EXO\_EventLogs4,1] cannot be aborted and paused since it is in LogCleaningPaused state.
	at kafka.log.LogCleanerManager$$anonfun$abortAndPauseCleaning$1.apply$mcV$sp(LogCleanerManager.scala:149)
	at kafka.log.LogCleanerManager$$anonfun$abortAndPauseCleaning$1.apply(LogCleanerManager.scala:140)
	at kafka.log.LogCleanerManager$$anonfun$abortAndPauseCleaning$1.apply(LogCleanerManager.scala:140)
	at kafka.utils.CoreUtils$.inLock(CoreUtils.scala:262)
	at kafka.log.LogCleanerManager.abortAndPauseCleaning(LogCleanerManager.scala:140)
	at kafka.log.LogCleaner.abortAndPauseCleaning(LogCleaner.scala:141)
	at kafka.log.LogManager.truncateFullyAndStartAt(LogManager.scala:304)
	at kafka.server.ReplicaFetcherThread.handleOffsetOutOfRange(ReplicaFetcherThread.scala:185)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$2$$anonfun$apply$mcV$sp$1$$anonfun$apply$2.apply(AbstractFetcherThread.scala:152)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$2$$anonfun$apply$mcV$sp$1$$anonfun$apply$2.apply(AbstractFetcherThread.scala:122)
	at scala.Option.foreach(Option.scala:236)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$2$$anonfun$apply$mcV$sp$1.apply(AbstractFetcherThread.scala:122)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$2$$anonfun$apply$mcV$sp$1.apply(AbstractFetcherThread.scala:120)
	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:98)
	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:98)
	at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:226)
	at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
	at scala.collection.mutable.HashMap.foreach(HashMap.scala:98)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$2.apply$mcV$sp(AbstractFetcherThread.scala:120)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$2.apply(AbstractFetcherThread.scala:120)
	at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$2.apply(AbstractFetcherThread.scala:120)
	at kafka.utils.CoreUtils$.inLock(CoreUtils.scala:262)
	at kafka.server.AbstractFetcherThread.processFetchRequest(AbstractFetcherThread.scala:118)
	at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:93)
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:63)

I could unblock myself with a code change. I deleted the action for "case s =\>" in the LogCleanerManager.scala's abortAndPauseCleaning(). I think we should not throw exception if the state is already LogCleaningAborted or LogCleaningPaused in this function, but instead just let it roll.



