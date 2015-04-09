
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
#  0.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [KAFKA-1283](https://issues.apache.org/jira/browse/KAFKA-1283) | *Major* | **Log4jAppender is unable to send the message.**

User application can`t send any messages via KafkaLog4jAppender.

Here is log4j.properties.
----------------------------------------------------------------------------------------------
log4j.rootLogger=INFO, stdout, KAFKA

log4j.appender.stdout=org.apache.log4j.ConsoleAppender
log4j.appender.stdout.layout=org.apache.log4j.PatternLayout
log4j.appender.stdout.layout.ConversionPattern=%5p [%t] (%F:%L) - %m%n


log4j.appender.KAFKA=kafka.producer.KafkaLog4jAppender
log4j.appender.KAFKA.layout=org.apache.log4j.PatternLayout
log4j.appender.KAFKA.layout.ConversionPattern=%-5p: %c - %m%n
log4j.appender.KAFKA.BrokerList=hnode01:9092
log4j.appender.KAFKA.Topic=DKTestEvent

#log4j.appender.KAFKA.SerializerClass=kafka.log4j.AppenderStringEncoder
----------------------------------------------------------------------------------------------


And this is a sample application.
----------------------------------------------------------------------------------------------
import org.apache.log4j.Logger;
import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.PropertyConfigurator;

public class HelloWorld {

	static Logger logger = Logger.getLogger(HelloWorld.class.getName());

	public static void main(String[] args) {
		PropertyConfigurator.configure(args[0]);

		logger.info("Entering application.");
		logger.debug("Debugging!.");
		logger.info("Exiting application.");
	}
}
----------------------------------------------------------------------------------------------

Since my project is maven project, I attached pom.xml also.

----------------------------------------------------------------------------------------------
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
	<modelVersion>4.0.0</modelVersion>
	<groupId>com.my.app</groupId>
	<artifactId>log4-appender</artifactId>
	<version>0.0.1-SNAPSHOT</version>

	<dependencies>
		<dependency>
			<groupId>org.apache.kafka</groupId>
			<artifactId>kafka\_2.8.2</artifactId>
			<version>0.8.0</version>
		</dependency>

		<dependency>
			<groupId>log4j</groupId>
			<artifactId>log4j</artifactId>
			<version>1.2.17</version>
		</dependency>
	</dependencies>

</project>
----------------------------------------------------------------------------------------------------------


And I am getting these error:
----------------------------------------------------------------------------------------------
INFO [main] (Logging.scala:67) - Verifying properties
 INFO [main] (Logging.scala:67) - Property metadata.broker.list is overridden to hnode01:9092
 INFO [main] (Logging.scala:67) - Property serializer.class is overridden to kafka.serializer.StringEncoder
 INFO [main] (HelloWorld.java:14) - Entering application.
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 0 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 1 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 2 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 3 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 4 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 5 for 1 topic(s) Set(DKTestEvent)
.
.
.
INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 60 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 61 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (HelloWorld.java:14) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 62 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (Logging.scala:67) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 63 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (Logging.scala:67) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 64 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (Logging.scala:67) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 65 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (Logging.scala:67) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 66 for 1 topic(s) Set(DKTestEvent)
 INFO [main] (Logging.scala:67) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 67 for 1 topic(s) Set(DKTestEvent)
.
.
.
 INFO [main] (Logging.scala:67) - Fetching metadata from broker id:0,host:hnode01,port:9092 with correlation id 534 for 1 topic(s) Set(DKTestEvent)
ERROR [main] (Logging.scala:67) - 
ERROR [main] (Logging.scala:67) - 
ERROR [main] (Logging.scala:67) - 
ERROR [main] (Logging.scala:67) - 
ERROR [main] (Logging.scala:67) - 
ERROR [main] (Logging.scala:67) - 
java.lang.StackOverflowError
	at java.lang.ClassLoader.defineClass1(Native Method)
	at java.lang.ClassLoader.defineClass(ClassLoader.java:643)
	at java.security.SecureClassLoader.defineClass(SecureClassLoader.java:142)
	at java.net.URLClassLoader.defineClass(URLClassLoader.java:277)
	at java.net.URLClassLoader.access$000(URLClassLoader.java:73)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:212)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:205)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:323)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:294)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:268)
	at java.lang.ClassLoader.defineClass1(Native Method)
	at java.lang.ClassLoader.defineClass(ClassLoader.java:643)
	at java.security.SecureClassLoader.defineClass(SecureClassLoader.java:142)
	at java.net.URLClassLoader.defineClass(URLClassLoader.java:277)
	at java.net.URLClassLoader.access$000(URLClassLoader.java:73)
	at java.net.URLClassLoader$1.run(URLClassLoader.java:212)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:205)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:323)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:294)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:268)
	at org.apache.log4j.spi.ThrowableInformation.getThrowableStrRep(ThrowableInformation.java:87)
	at org.apache.log4j.spi.LoggingEvent.getThrowableStrRep(LoggingEvent.java:413)
	at org.apache.log4j.WriterAppender.subAppend(WriterAppender.java:313)
	at org.apache.log4j.WriterAppender.append(WriterAppender.java:162)
	at org.apache.log4j.AppenderSkeleton.doAppend(AppenderSkeleton.java:251)
	at org.apache.log4j.helpers.AppenderAttachableImpl.appendLoopOnAppenders(AppenderAttachableImpl.java:66)
	at org.apache.log4j.Category.callAppenders(Category.java:206)
	at org.apache.log4j.Category.forcedLog(Category.java:391)
	at org.apache.log4j.Category.error(Category.java:322)
	at kafka.utils.Logging$$anonfun$swallowError$1.apply(Logging.scala:105)
	at kafka.utils.Logging$$anonfun$swallowError$1.apply(Logging.scala:105)
	at kafka.utils.Utils$.swallow(Utils.scala:189)
	at kafka.utils.Logging$class.swallowError(Logging.scala:105)
	at kafka.utils.Utils$.swallowError(Utils.scala:46)
	at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:67)
	at kafka.producer.Producer.send(Producer.scala:76)
	at kafka.producer.KafkaLog4jAppender.append(KafkaLog4jAppender.scala:96)
	at org.apache.log4j.AppenderSkeleton.doAppend(AppenderSkeleton.java:251)
	at org.apache.log4j.helpers.AppenderAttachableImpl.appendLoopOnAppenders(AppenderAttachableImpl.java:66)
	at org.apache.log4j.Category.callAppenders(Category.java:206)
	at org.apache.log4j.Category.forcedLog(Category.java:391)
	at org.apache.log4j.Category.info(Category.java:666)
	at kafka.utils.Logging$class.info(Logging.scala:67)
	at kafka.client.ClientUtils$.info(ClientUtils.scala:31)
	at kafka.client.ClientUtils$.fetchTopicMetadata(ClientUtils.scala:51)
	at kafka.producer.BrokerPartitionInfo.updateInfo(BrokerPartitionInfo.scala:82)
	at kafka.producer.async.DefaultEventHandler$$anonfun$handle$1.apply$mcV$sp(DefaultEventHandler.scala:67)
	at kafka.utils.Utils$.swallow(Utils.scala:187)
	at kafka.utils.Logging$class.swallowError(Logging.scala:105)
	at kafka.utils.Utils$.swallowError(Utils.scala:46)
	at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:67)
	at kafka.producer.Producer.send(Producer.scala:76)
	at kafka.producer.KafkaLog4jAppender.append(KafkaLog4jAppender.scala:96)
	at org.apache.log4j.AppenderSkeleton.doAppend(AppenderSkeleton.java:251)
	at org.apache.log4j.helpers.AppenderAttachableImpl.appendLoopOnAppenders(AppenderAttachableImpl.java:66)
.
.
.
----------------------------------------------------------------------------------------------

I am getting above error continuously if i don`t terminate the program.


---

* [KAFKA-1133](https://issues.apache.org/jira/browse/KAFKA-1133) | *Major* | **LICENSE and NOTICE files need to get into  META-INF when jars are built before they're signed for publishing to maven**

This needs to happen in our Build.scala the sbt package docs http://www.scala-sbt.org/release/docs/Howto/package.html probably a straight forward line of code or ten or whatever to-do this maybe


---

* [KAFKA-1131](https://issues.apache.org/jira/browse/KAFKA-1131) | *Major* | **copy some more files into the release tar and zip that are needed/desired**

e.g.  LICENSE, NOTICE, README (or maybe a new quick start file .txt)


---

* [KAFKA-1078](https://issues.apache.org/jira/browse/KAFKA-1078) | *Major* | **Update System Test to handle controller data returned by ZK**

There is a change in the result returned by ZK when querying for controller:

2013-10-07 09:39:15,599 - DEBUG - executing command [ssh localhost "JAVA\_HOME=/export/apps/jdk/JDK-1\_6\_0\_27 /home/user/kafka/bin/kafka-run-class.sh org.apache.zookeeper.ZooKeeperMain -server localhost:2188 get /controller 2> /dev/null | tail -1"] (kafka\_system\_test\_utils)

1. Previously it returned : 1
2. It is currently returning : { "brokerid":1, "timestamp":"1381163914835", "version":1 }

The impact is that System Test doesn't have the correct entity ID for bouncing controller. There are a few test cases that are impacted by this change when they are bouncing the controller.


---

* [KAFKA-1075](https://issues.apache.org/jira/browse/KAFKA-1075) | *Major* | **Consumer will not rebalance upon topic partition change**

Due to the watcher and zk data structure mismatch, consumer will not rebalance upon topic partition change. Details:

ZK data structure for topic partitions:

/brokers/topics/[topic-name]/partitions/[partition-id]/state

When new partitions are added, it will change the data in /brokers/topics/[topic-name], however the ZK client is watching on child change of /brokers/topics/[topic-name], which will always be a single child 'partitions'.

Proposal: add a data change listener, which will trigger rebalance upon data changes on /brokers/topics/[topic-name].


---

* [KAFKA-1073](https://issues.apache.org/jira/browse/KAFKA-1073) | *Major* | **CheckReassignmentStatus is broken**

CheckReassignmentStatus is supposed to take the output from ReassignPartitionsCommand as the input. However, the output from ReassignPartitionsCommand is not a valid json. It's also not clear how to prepare the input to CheckReassignmentStatus.


---

* [KAFKA-1071](https://issues.apache.org/jira/browse/KAFKA-1071) | *Major* | **The random partition selected in DefaultEventHandler is not random across producer instances**

In DefaultEventHandler, partitionCounter is initialized to 0. If multiple producers start at about the same time, they likely will always select the same partition.


---

* [KAFKA-1069](https://issues.apache.org/jira/browse/KAFKA-1069) | *Major* | **MBean kafka.cluster.Partition report wrong UnderReplicated status**

Happens on kafka-0.8.0-beta1.
The MBean kafka.cluster.Partition shows an UnderReplicated status which is wrong.

Let's take a simple example :
- one topic named topictest
- replication factor = 2
- 3 nodes

Output of kafka-list-topic.sh command :
topic: topictest        partition: 0    leader: 2       replicas: 3,2   isr: 2,3
topic: topictest        partition: 1    leader: 1       replicas: 1,3   isr: 1,3
topic: topictest        partition: 2    leader: 1       replicas: 2,1   isr: 1,2
topic: topictest        partition: 3    leader: 1       replicas: 3,1   isr: 1,3
topic: topictest        partition: 4    leader: 1       replicas: 1,2   isr: 1,2
topic: topictest        partition: 5    leader: 2       replicas: 2,3   isr: 2,3
topic: topictest        partition: 6    leader: 2       replicas: 3,2   isr: 2,3
topic: topictest        partition: 7    leader: 1       replicas: 1,3   isr: 1,3

So everything is ok, each partition have one follower and the ISR size is 2.

Node 1 which is leader of partition 1 :
MBean "kafka.cluster":type="Partition",name="acorreler-1-UnderReplicated" = 0
Node 3 which if a follower of partition 1 :
"kafka.cluster":type="Partition",name="acorreler-1-UnderReplicated" = 1

On each node, the MBean "kafka.server":type="ReplicaManager",name="UnderReplicatedPartitions" reports 0 which is correct.

So it seems that the followers of a partition believe that their partitions replicates are under replicated.


---

* [KAFKA-1046](https://issues.apache.org/jira/browse/KAFKA-1046) | *Major* | **Added support for Scala 2.10 builds while maintaining compatibility with 2.8.x**

I refactored the project such that it will compile against Scala 2.10.1.


---

* [KAFKA-1038](https://issues.apache.org/jira/browse/KAFKA-1038) | *Major* | **fetch response should use empty messageset instead of null when handling errors**

Saw the following exception:

Exception when handling request (kafka.server.KafkaRequestHandler)
java.lang.NullPointerException
        at
kafka.api.FetchResponsePartitionData.<init>(FetchResponse.scala:46)
        at kafka.api.FetchRequest$$anonfun$2.apply(FetchRequest.scala:158)
        at kafka.api.FetchRequest$$anonfun$2.apply(FetchRequest.scala:156)
        at
scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:233)
        at
scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:233)
        at
scala.collection.immutable.HashMap$HashMap1.foreach(HashMap.scala:178)
        at
scala.collection.immutable.HashMap$HashTrieMap.foreach(HashMap.scala:347)
        at
scala.collection.immutable.HashMap$HashTrieMap.foreach(HashMap.scala:347)
        at
scala.collection.TraversableLike$class.map(TraversableLike.scala:233)
        at scala.collection.immutable.HashMap.map(HashMap.scala:38)
        at kafka.api.FetchRequest.handleError(FetchRequest.scala:156)
        at kafka.server.KafkaApis.handle(KafkaApis.scala:78)
        at
kafka.server.KafkaRequestHandler.run(KafkaRequestHandler.scala:42)
        at java.lang.Thread.run(Thread.java:662)


---

* [KAFKA-1035](https://issues.apache.org/jira/browse/KAFKA-1035) | *Major* | **Add message-send-max-retries and retry-backoff-ms options to console producer**

It's possible for console producer to give up too soon if it can't find a leader of a topic. Increasing message-send-max-retries would resolve this but.  Console producer doesn't provide options to set message-send-max-retries and retry-backoff-ms.


---

* [KAFKA-1031](https://issues.apache.org/jira/browse/KAFKA-1031) | *Major* | **Little modification to the stop script to be able to kill the proper process**

Escape the . in the kafka.Kafka chain
Also add a grep java to get the real java process and exclude the kafka-run-class.sh process


---

* [KAFKA-1030](https://issues.apache.org/jira/browse/KAFKA-1030) | *Blocker* | **Addition of partitions requires bouncing all the consumers of that topic**

Consumer may not notice new partitions because the propagation of the metadata to servers can be delayed. 

Options:
1. As Jun suggested on KAFKA-956, the easiest fix would be to read the new partition data from zookeeper instead of a kafka server.
2. Run a fetch metadata loop in consumer, and set auto.offset.reset to smallest once the consumer has started.

1 sounds easier to do. If 1 causes long delays in reading all partitions at the start of every rebalance, 2 may be worth considering.
 
The same issue affects MirrorMaker when new topics are created, MirrorMaker may not notice all partitions of the new topics until the next rebalance.


---

* [KAFKA-1029](https://issues.apache.org/jira/browse/KAFKA-1029) | *Blocker* | **Zookeeper leader election stuck in ephemeral node retry loop**

We're seeing the following log statements (over and over):

[2013-08-27 07:21:49,538] INFO conflict in /controller data: { "brokerid":3, "timestamp":"1377587945206", "version":1 } stored data: { "brokerid":2, "timestamp":"1377587460904", "version":1 } (kafka.utils.ZkUtils$)

[2013-08-27 07:21:49,559] INFO I wrote this conflicted ephemeral node [{ "brokerid":3, "timestamp":"1377587945206", "version":1 }] at /controller a while back in a different session, hence I will backoff for this node to be deleted by Zookeeper and retry (kafka.utils.ZkUtils$)

where the broker is essentially stuck in the loop that is trying to deal with left-over ephemeral nodes. The code looks a bit racy to me. In particular:

ZookeeperLeaderElector:

  def elect: Boolean = {
    controllerContext.zkClient.subscribeDataChanges(electionPath, leaderChangeListener)
    val timestamp = SystemTime.milliseconds.toString
    val electString = ...

    try {
      createEphemeralPathExpectConflictHandleZKBug(controllerContext.zkClient, electionPath, electString, leaderId,
        (controllerString : String, leaderId : Any) => KafkaController.parseControllerId(controllerString) == leaderId.asInstanceOf[Int],
        controllerContext.zkSessionTimeout)

leaderChangeListener is registered before the create call (by the way, it looks like a new registration will be added every elect call - shouldn't it register in startup()?) so can update leaderId to the current leader before the call to create. If that happens then we will continuously get node exists exceptions and the checker function will always return true, i.e. we will never get out of the while(true) loop.

I think the right fix here is to pass brokerId instead of leaderId when calling create, i.e.

createEphemeralPathExpectConflictHandleZKBug(controllerContext.zkClient, electionPath, electString, brokerId,
        (controllerString : String, leaderId : Any) => KafkaController.parseControllerId(controllerString) == leaderId.asInstanceOf[Int],
        controllerContext.zkSessionTimeout)

The loop dealing with the ephemeral node bug is now only triggered for the broker that owned the node previously, although I am still not 100% sure if that is sufficient.


---

* [KAFKA-1018](https://issues.apache.org/jira/browse/KAFKA-1018) | *Major* | **tidy up the POM from what feedback has come from the 0.8 beta and publishing to maven**

from Chris Riccomini 

1. Maven central can't resolve it properly (POM is different from Apache release). Have to use Apache release repo directly to get things to work.
2. Exclusions must be manually applied even though they exist in Kafka's POM already. I think Maven can handle this automatically, if the POM is done right.
3. Weird parent block in Kafka POMs that points to org.apache.
4. Would be nice to publish kafka-test jars as well.
5. Would be nice to have SNAPSHOT releases off of trunk using a Hudson job.
Our hypothesis regarding the first issue is that it was caused by duplicate publishing during testing, and it should go away in the future.
Regarding number 2, I have to explicitly exclude the following when depending on Kafka:
exclude module: 'jms'
exclude module: 'jmxtools'
exclude module: 'jmxri'
I believe these just need to be excluded from the appropriate jars in the actual SBT build file, to fix this issue. I see JMS is excluded from ZK, but it's probably being pulled in from somewhere else, anyway.
Regarding number 3, it is indeed listed as something to do on the Apache publication page (http://www.apache.org/dev/publishing-maven-artifacts.html). I can't find an example of anyone using it, but it doesn't seem to be doing any harm.
Also, regarding your intransitive() call, that is disabling ALL dependencies not just the exclusions, I believe. I think that the "proper" way to do that would be to do what I've done: exclude("jms", "jmxtools", "jmxri"). Regardless, fixing number 2, above, should mean that intransitive()/exclude() are not required.


---

* [KAFKA-1017](https://issues.apache.org/jira/browse/KAFKA-1017) | *Major* | **High number of open file handles in 0.8 producer**

Reported by Jun Rao:

For over-partitioned topics, each broker could be the leader for at least 1 partition. In the producer, we randomly select a partition to send the data. Pretty soon, each producer will establish a connection to each of the n brokers. Effectively, we increased the # of socket connections by a factor of n, compared to 0.7.

The increased number of socket connections increases the number of open file handles, this could come pretty  close to the OS limit.


---

* [KAFKA-1010](https://issues.apache.org/jira/browse/KAFKA-1010) | *Blocker* | **Concurrency issue in getCluster() causes rebalance failure and dead consumer**

We're seeing the following stack trace on the consumer when brokers are (forcefully) removed from the cluster:

Thu Aug 15 05:10:06 GMT 2013 Exception in thread "main" org.I0Itec.zkclient.exception.ZkNoNodeException: org.apache.zookeeper.KeeperException$NoNodeException: KeeperErrorCode = NoNode for /brokers/ids/4
at org.I0Itec.zkclient.exception.ZkException.create(ZkException.java:47)
at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:685)
at org.I0Itec.zkclient.ZkClient.readData(ZkClient.java:766)
at org.I0Itec.zkclient.ZkClient.readData(ZkClient.java:761)
at kafka.utils.ZkUtils$.readData(ZkUtils.scala:407)
at kafka.utils.ZkUtils$$anonfun$getCluster$1.apply(ZkUtils.scala:453)
at kafka.utils.ZkUtils$$anonfun$getCluster$1.apply(ZkUtils.scala:452)
at scala.collection.Iterator$class.foreach(Iterator.scala:631)
at scala.collection.JavaConversions$JIteratorWrapper.foreach(JavaConversions.scala:549)
at scala.collection.IterableLike$class.foreach(IterableLike.scala:79)
at scala.collection.JavaConversions$JListWrapper.foreach(JavaConversions.scala:596)
at kafka.utils.ZkUtils$.getCluster(ZkUtils.scala:452)
at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener$$anonfun$syncedRebalance$1.apply$mcVI$sp(ZookeeperConsumerConnector.scala:394)
at scala.collection.immutable.Range$ByOne$class.foreach$mVc$sp(Range.scala:282)
at scala.collection.immutable.Range$$anon$2.foreach$mVc$sp(Range.scala:265)
at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.syncedRebalance(ZookeeperConsumerConnector.scala:391)
at kafka.consumer.ZookeeperConsumerConnector.kafka$consumer$ZookeeperConsumerConnector$$reinitializeConsumer(ZookeeperConsumerConnector.scala:722)
at kafka.consumer.ZookeeperConsumerConnector.consume(ZookeeperConsumerConnector.scala:206)
at kafka.javaapi.consumer.ZookeeperConsumerConnector.createMessageStreams(ZookeeperConsumerConnector.scala:77)
at kafka.javaapi.consumer.ZookeeperConsumerConnector.createMessageStreams(ZookeeperConsumerConnector.scala:89)

I'm pretty sure this is due to the following logic in getCluster():

    val nodes = getChildrenParentMayNotExist(zkClient, BrokerIdsPath)
    for (node <- nodes) {
      val brokerZKString = readData(zkClient, BrokerIdsPath + "/" + node).\_1
      cluster.add(Broker.createBroker(node.toInt, brokerZKString))
    }

which is obviously not safe since the nodes retrieved in the first call may have disappeared by the time we iterate to get the values.

getCluster() seems to only be used in ZookeeperConsumerConnector.syncedRebalance and in ImportZkOffsets.updateZkOffsets (which doesn't actually look like it is using the values), so the simplest solution may be to just move the getCluster() call into the try block in syncedRebalance and kill the usage in the other call.


---

* [KAFKA-1008](https://issues.apache.org/jira/browse/KAFKA-1008) | *Major* | **Unmap before resizing**

While I was studying how MappedByteBuffer works, I saw a sharing runtime exception on Windows. I applied what I learned to generate a patch which uses an internal open JDK API to solve this problem.

Following Jay's advice, I made a helper method called tryUnmap().


---

* [KAFKA-1003](https://issues.apache.org/jira/browse/KAFKA-1003) | *Major* | **ConsumerFetcherManager should pass clientId as metricsPrefix to AbstractFetcherManager**

For consistency. We use clientId in the metric names elsewhere on clients.


---

* [KAFKA-994](https://issues.apache.org/jira/browse/KAFKA-994) | *Major* | **High level consumer doesn't throw an exception when the message it is trying to fetch exceeds the configured fetch size**

The high level consumer code is supposed to throw an exception when it encounters a message that exceeds its configured max message size. The relevant code form ConsumerIterator.scala is:

      // if we just updated the current chunk and it is empty that means the fetch size is too small!
      if(currentDataChunk.messages.validBytes == 0)
        throw new MessageSizeTooLargeException("Found a message larger than the maximum fetch size of this consumer on topic " +
                                               "%s partition %d at fetch offset %d. Increase the fetch size, or decrease the maximum message size the broker will allow."
                                               .format(currentDataChunk.topicInfo.topic, currentDataChunk.topicInfo.partitionId, currentDataChunk.fetchOffset))
    }

The problem is that KAFKA-846 changed PartitionTopicInfo.enqueue:

   def enqueue(messages: ByteBufferMessageSet) {
-    val size = messages.sizeInBytes
+    val size = messages.validBytes
     if(size > 0) {

i.e. chunks that contain messages that are too big (validBytes = 0) will never even be enqueued, so won't ever hit the too-large message check in ConsumerIterator... 

I've attached a patch that passes our tests...


---

* [KAFKA-991](https://issues.apache.org/jira/browse/KAFKA-991) | *Major* | **Reduce the queue size in hadoop producer**

Currently the queue.size in hadoop producer is 10MB. This means that the KafkaRecordWriter will hit the send button on kafka producer after the size of uncompressed queued messages becomes greater than 10MB. (The other condition on which the messages are sent is if their number exceeds SHORT.MAX\_VALUE).

Considering that the server accepts a (compressed) batch of messages of sizeupto 1 million bytes minus the log overhead, we should probably reduce the queue size in hadoop producer. We should do two things:

1. change max message size on the broker to 1 million + log overhead, because that will make the client message size easy to remember. Right now the maximum number of bytes that can be accepted from a client in a batch of messages is an awkward 999988. (I don't have a stronger reason). We have set fetch size on the consumer to 1MB, this gives us a lot of room even if the log overhead increased with further versions.

2. Set the default number of bytes on hadoop producer to 1 million bytes. Anyone who wants higher throughput can override this config using kafka.output.queue.size


---

* [KAFKA-989](https://issues.apache.org/jira/browse/KAFKA-989) | *Major* | **Race condition shutting down high-level consumer results in spinning background thread**

Running an application that uses the Kafka client under load, can often hit this issue within a few hours.

High-level consumers come and go over this application's lifecycle, but there are a variety of defenses that ensure each high-level consumer lasts several seconds before being shutdown.  Nevertheless, some race is causing this background thread to continue long after the ZKClient it is using has been disconnected.  Since the thread was spawned by a consumer that has already been shutdown, the application has no way to find this thread and stop it.

Reported on the users-kafka mailing list 6/25 as "0.8 throwing exception 'Failed to find leader' and high-level consumer fails to make progress". 

The only remedy is to shutdown the application and restart it.  Externally detecting that this state has occurred is not pleasant: need to grep log for repeated occurrences of the same exception.

Stack trace:

Failed to find leader for Set([topic6,0]): java.lang.NullPointerException
	at org.I0Itec.zkclient.ZkClient$2.call(ZkClient.java:416)
	at org.I0Itec.zkclient.ZkClient$2.call(ZkClient.java:413)
	at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:675)
	at org.I0Itec.zkclient.ZkClient.getChildren(ZkClient.java:413)
	at org.I0Itec.zkclient.ZkClient.getChildren(ZkClient.java:409)
	at kafka.utils.ZkUtils$.getChildrenParentMayNotExist(ZkUtils.scala:438)
	at kafka.utils.ZkUtils$.getAllBrokersInCluster(ZkUtils.scala:75)
	at kafka.consumer.ConsumerFetcherManager$LeaderFinderThread.doWork(ConsumerFetcherManager.scala:63)
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)


---

* [KAFKA-987](https://issues.apache.org/jira/browse/KAFKA-987) | *Major* | **Avoid checkpointing offsets in Kafka consumer that have not changed since the last commit**

We need to fix the Kafka zookeeper consumer to avoid checkpointing offsets that have not changed since the last offset commit. This will help reduce the write load on zookeeper.


---

* [KAFKA-978](https://issues.apache.org/jira/browse/KAFKA-978) | *Major* | **kafka pom file has 2 entries for zookeeper (one with exclusion, one without)**

I've noticed, in the 0.8-beta the pom file, there are 2 dependencies listed for zookeeper, one of which has an exclusion clause, the other does not.   I assume this is not intended:

<dependency>
<groupId>org.apache.zookeeper</groupId>
<artifactId>zookeeper</artifactId>
<version>3.3.4</version>
<exclusions>
<exclusion>
<groupId>log4j</groupId>
<artifactId>log4j</artifactId>
</exclusion>
<exclusion>
<groupId>jline</groupId>
<artifactId>jline</artifactId>
</exclusion>
</exclusions>
</dependency>

and then

<dependency>
<groupId>org.apache.zookeeper</groupId>
<artifactId>zookeeper</artifactId>
<version>3.3.4</version>
</dependency>


---

* [KAFKA-974](https://issues.apache.org/jira/browse/KAFKA-974) | *Major* | **can't use public release maven repo because of failure of downloaded dependency**

trying to use the 0.8.0-beta1 release from public maven


name := "Stub"

version := "1.0.0.0"

scalaVersion := "2.9.2"

mainClass := Some("Stub")

libraryDependencies ++= Seq(
	"org.apache.kafka" % "kafka\_2.9.2" % "0.8.0-beta1"
)

results in

Joes-MacBook-Air:stub joestein$ ./sbt compile
[info] Set current project to default-63d5f2 (in build file:/opt/medialets/SymanticManager/scala/stub/)
[info] Updating {file:/opt/medialets/SymanticManager/scala/stub/}default-63d5f2...
[warn] 	[NOT FOUND  ] javax.jms#jms;1.1!jms.jar (50ms)
[warn] ==== public: tried
[warn]   http://repo1.maven.org/maven2/javax/jms/jms/1.1/jms-1.1.jar
[warn] 	[NOT FOUND  ] com.sun.jdmk#jmxtools;1.2.1!jmxtools.jar (12ms)
[warn] ==== public: tried
[warn]   http://repo1.maven.org/maven2/com/sun/jdmk/jmxtools/1.2.1/jmxtools-1.2.1.jar
[warn] 	[NOT FOUND  ] com.sun.jmx#jmxri;1.2.1!jmxri.jar (71ms)
[warn] ==== public: tried
[warn]   http://repo1.maven.org/maven2/com/sun/jmx/jmxri/1.2.1/jmxri-1.2.1.jar
[warn] 	::::::::::::::::::::::::::::::::::::::::::::::
[warn] 	::              FAILED DOWNLOADS            ::
[warn] 	:: ^ see resolution messages for details  ^ ::
[warn] 	::::::::::::::::::::::::::::::::::::::::::::::
[warn] 	:: javax.jms#jms;1.1!jms.jar
[warn] 	:: com.sun.jdmk#jmxtools;1.2.1!jmxtools.jar
[warn] 	:: com.sun.jmx#jmxri;1.2.1!jmxri.jar
[warn] 	::::::::::::::::::::::::::::::::::::::::::::::
[info] 
[warn] :: problems summary ::
[warn] :::: WARNINGS
[warn] 		[NOT FOUND  ] javax.jms#jms;1.1!jms.jar (50ms)
[warn] 	==== public: tried
[warn] 	  http://repo1.maven.org/maven2/javax/jms/jms/1.1/jms-1.1.jar
[warn] 		[NOT FOUND  ] com.sun.jdmk#jmxtools;1.2.1!jmxtools.jar (12ms)
[warn] 	==== public: tried
[warn] 	  http://repo1.maven.org/maven2/com/sun/jdmk/jmxtools/1.2.1/jmxtools-1.2.1.jar
[warn] 		[NOT FOUND  ] com.sun.jmx#jmxri;1.2.1!jmxri.jar (71ms)
[warn] 	==== public: tried
[warn] 	  http://repo1.maven.org/maven2/com/sun/jmx/jmxri/1.2.1/jmxri-1.2.1.jar
[warn] 		::::::::::::::::::::::::::::::::::::::::::::::
[warn] 		::              FAILED DOWNLOADS            ::
[warn] 		:: ^ see resolution messages for details  ^ ::
[warn] 		::::::::::::::::::::::::::::::::::::::::::::::
[warn] 		:: javax.jms#jms;1.1!jms.jar
[warn] 		:: com.sun.jdmk#jmxtools;1.2.1!jmxtools.jar
[warn] 		:: com.sun.jmx#jmxri;1.2.1!jmxri.jar
[warn] 		::::::::::::::::::::::::::::::::::::::::::::::
[info] 
[info] :: USE VERBOSE OR DEBUG MESSAGE LEVEL FOR MORE DETAILS
[error] {file:/opt/medialets/SymanticManager/scala/stub/}default-63d5f2/*:update: sbt.ResolveException: download failed: javax.jms#jms;1.1!jms.jar
[error] download failed: com.sun.jdmk#jmxtools;1.2.1!jmxtools.jar
[error] download failed: com.sun.jmx#jmxri;1.2.1!jmxri.jar
[error] Total time: 3 s, completed Jul 13, 2013 1:55:36 AM


---

* [KAFKA-969](https://issues.apache.org/jira/browse/KAFKA-969) | *Major* | **Need to prevent failure of rebalance when there are no brokers available when consumer comes up**

There are some rare instances when a consumer would be up before bringing up the Kafka brokers. This would usually happen in a test scenario. In such conditions, during rebalance instead of failing the rebalance we just log the error and subscribe to broker changes. When the broker comes back up, we trigger the rebalance.


---

* [KAFKA-968](https://issues.apache.org/jira/browse/KAFKA-968) | *Trivial* | **Typographical Errors in Output**

The word "partition" is referred to as "partion" in system\_test/replication\_testsuite/testcase\_0106/testcase\_0106\_properties.json line 2 and core/src/main/scala/kafka/server/AbstractFetcherManager.scala line 49.  This typo may interfere with text-based searching of output.


---

* [KAFKA-963](https://issues.apache.org/jira/browse/KAFKA-963) | *Major* | **when publishing to maven repository central missing signature on everything**

I got the publishing to work but when closing the staged release I get 

 -Missing Signature: '/org/apache/kafka/kafka\_2.9.2/0.8.0-beta1/kafka\_2.9.2-0.8.0-beta1.jar.asc' does not exist for 'kafka\_2.9.2-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.9.2/0.8.0-beta1/kafka\_2.9.2-0.8.0-beta1-javadoc.jar.asc' does not exist for 'kafka\_2.9.2-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.2/0.8.0-beta1/contrib\_2.8.2-0.8.0-beta1.pom.asc' does not exist for 'contrib\_2.8.2-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.2/0.8.0-beta1/contrib\_2.8.2-0.8.0-beta1.jar.asc' does not exist for 'contrib\_2.8.2-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.2/0.8.0-beta1/contrib\_2.8.2-0.8.0-beta1-sources.jar.asc' does not exist for 'contrib\_2.8.2-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.2/0.8.0-beta1/contrib\_2.8.2-0.8.0-beta1-javadoc.jar.asc' does not exist for 'contrib\_2.8.2-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.2/0.8.0-beta1/kafka-perf\_2.8.2-0.8.0-beta1-javadoc.jar.asc' does not exist for 'kafka-perf\_2.8.2-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.2/0.8.0-beta1/kafka-perf\_2.8.2-0.8.0-beta1.jar.asc' does not exist for 'kafka-perf\_2.8.2-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.2/0.8.0-beta1/kafka-perf\_2.8.2-0.8.0-beta1.pom.asc' does not exist for 'kafka-perf\_2.8.2-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.2/0.8.0-beta1/kafka-perf\_2.8.2-0.8.0-beta1-sources.jar.asc' does not exist for 'kafka-perf\_2.8.2-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.0/0.8.0-beta1/contrib\_2.8.0-0.8.0-beta1-javadoc.jar.asc' does not exist for 'contrib\_2.8.0-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.0/0.8.0-beta1/contrib\_2.8.0-0.8.0-beta1.jar.asc' does not exist for 'contrib\_2.8.0-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.0/0.8.0-beta1/contrib\_2.8.0-0.8.0-beta1-sources.jar.asc' does not exist for 'contrib\_2.8.0-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.8.0/0.8.0-beta1/contrib\_2.8.0-0.8.0-beta1.pom.asc' does not exist for 'contrib\_2.8.0-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.8.2/0.8.0-beta1/kafka\_2.8.2-0.8.0-beta1-sources.jar.asc' does not exist for 'kafka\_2.8.2-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.8.2/0.8.0-beta1/kafka\_2.8.2-0.8.0-beta1-javadoc.jar.asc' does not exist for 'kafka\_2.8.2-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.8.2/0.8.0-beta1/kafka\_2.8.2-0.8.0-beta1.pom.asc' does not exist for 'kafka\_2.8.2-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.8.2/0.8.0-beta1/kafka\_2.8.2-0.8.0-beta1.jar.asc' does not exist for 'kafka\_2.8.2-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.0/0.8.0-beta1/kafka-perf\_2.8.0-0.8.0-beta1-javadoc.jar.asc' does not exist for 'kafka-perf\_2.8.0-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.0/0.8.0-beta1/kafka-perf\_2.8.0-0.8.0-beta1.pom.asc' does not exist for 'kafka-perf\_2.8.0-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.0/0.8.0-beta1/kafka-perf\_2.8.0-0.8.0-beta1-sources.jar.asc' does not exist for 'kafka-perf\_2.8.0-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.8.0/0.8.0-beta1/kafka-perf\_2.8.0-0.8.0-beta1.jar.asc' does not exist for 'kafka-perf\_2.8.0-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.1/0.8.0-beta1/contrib\_2.9.1-0.8.0-beta1.pom.asc' does not exist for 'contrib\_2.9.1-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.1/0.8.0-beta1/contrib\_2.9.1-0.8.0-beta1-sources.jar.asc' does not exist for 'contrib\_2.9.1-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.1/0.8.0-beta1/contrib\_2.9.1-0.8.0-beta1-javadoc.jar.asc' does not exist for 'contrib\_2.9.1-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.1/0.8.0-beta1/contrib\_2.9.1-0.8.0-beta1.jar.asc' does not exist for 'contrib\_2.9.1-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.9.1/0.8.0-beta1/kafka-perf\_2.9.1-0.8.0-beta1.pom.asc' does not exist for 'kafka-perf\_2.9.1-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.9.1/0.8.0-beta1/kafka-perf\_2.9.1-0.8.0-beta1.jar.asc' does not exist for 'kafka-perf\_2.9.1-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.9.1/0.8.0-beta1/kafka-perf\_2.9.1-0.8.0-beta1-sources.jar.asc' does not exist for 'kafka-perf\_2.9.1-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/kafka-perf\_2.9.1/0.8.0-beta1/kafka-perf\_2.9.1-0.8.0-beta1-javadoc.jar.asc' does not exist for 'kafka-perf\_2.9.1-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.9.1/0.8.0-beta1/kafka\_2.9.1-0.8.0-beta1-javadoc.jar.asc' does not exist for 'kafka\_2.9.1-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.9.1/0.8.0-beta1/kafka\_2.9.1-0.8.0-beta1.pom.asc' does not exist for 'kafka\_2.9.1-0.8.0-beta1.pom'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.9.1/0.8.0-beta1/kafka\_2.9.1-0.8.0-beta1-sources.jar.asc' does not exist for 'kafka\_2.9.1-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/kafka\_2.9.1/0.8.0-beta1/kafka\_2.9.1-0.8.0-beta1.jar.asc' does not exist for 'kafka\_2.9.1-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.2/0.8.0-beta1/contrib\_2.9.2-0.8.0-beta1-sources.jar.asc' does not exist for 'contrib\_2.9.2-0.8.0-beta1-sources.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.2/0.8.0-beta1/contrib\_2.9.2-0.8.0-beta1-javadoc.jar.asc' does not exist for 'contrib\_2.9.2-0.8.0-beta1-javadoc.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.2/0.8.0-beta1/contrib\_2.9.2-0.8.0-beta1.jar.asc' does not exist for 'contrib\_2.9.2-0.8.0-beta1.jar'.
    -Missing Signature: '/org/apache/kafka/contrib\_2.9.2/0.8.0-beta1/contrib\_2.9.2-0.8.0-beta1.pom.asc' does not exist for 'contrib\_2.9.2-0.8.0-beta1.pom'.
 
OK	

looking at http://www.scala-sbt.org/0.12.3/docs/Community/Using-Sonatype.html we need the sbt signing plugin like

This file specifies the plugins for your project. If you intend to sign the artefacts, you'll need to include @jsuereth's xsbt-gpg-plugin:

resolvers += Resolver.url("sbt-plugin-releases", /* no new line */
  new URL("http://scalasbt.artifactoryonline.com/scalasbt/sbt-plugin-releases")) /* no new line */
  (Resolver.ivyStylePatterns)

addSbtPlugin("com.jsuereth" % "xsbt-gpg-plugin" % "0.5")


---

* [KAFKA-959](https://issues.apache.org/jira/browse/KAFKA-959) | *Major* | **DefaultEventHandler can send more produce requests than necesary**

In DefaultEventHandler, for a batch of messages, it picks a random partition per message (when there is no key specified). This means that it can send up to P produce requests where P is the number of partitions in a topic. A better way is probably to pick a single random partition for the whole batch of messages. This will reduce the number of produce requests.


---

* [KAFKA-956](https://issues.apache.org/jira/browse/KAFKA-956) | *Blocker* | **High-level consumer fails to check topic metadata response for errors**

In our environment we noticed that consumers would sometimes hang when started too close to starting the Kafka server. I tracked this down and it seems to be related to some code in rebalance (ZookeeperConsumerConnector.scala). In particular the following code seems problematic:

      val topicsMetadata = ClientUtils.fetchTopicMetadata(myTopicThreadIdsMap.keySet,
                                                          brokers,
                                                          config.clientId,
                                                          config.socketTimeoutMs,
                                                          correlationId.getAndIncrement).topicsMetadata
      val partitionsPerTopicMap = new mutable.HashMap[String, Seq[Int]]
      topicsMetadata.foreach(m => {
        val topic = m.topic
        val partitions = m.partitionsMetadata.map(m1 => m1.partitionId)
        partitionsPerTopicMap.put(topic, partitions)
      })

The response is never checked for error, so may not actually contain any partition info! Rebalance goes its merry way, but doesn't know about any partitions so never assigns them...


---

* [KAFKA-955](https://issues.apache.org/jira/browse/KAFKA-955) | *Major* | **After a leader change, messages sent with ack=0 are lost**

If the leader changes for a partition, and a producer is sending messages with ack=0, then messages will be lost, since the producer has no active way of knowing that the leader has changed, until it's next metadata refresh update.

The broker receiving the message, which is no longer the leader, logs a message like this:

Produce request with correlation id 7136261 from client  on partition [mytopic,0] failed due to Leader not local for partition [mytopic,0] on broker 508818741

This is exacerbated by the controlled shutdown mechanism, which forces an immediate leader change.

A possible solution to this would be for a broker which receives a message, for a topic that it is no longer the leader for (and if the ack level is 0), then the broker could just silently forward the message over to the current leader.


---

* [KAFKA-954](https://issues.apache.org/jira/browse/KAFKA-954) | *Blocker* | **tidy up README file for better general availability**

e.g. how to start server after building and all would be good too


---

* [KAFKA-951](https://issues.apache.org/jira/browse/KAFKA-951) | *Major* | **Leader election rate may be reported on a non-controller**

If a broker was a controller but is not a current controller, it will still update leader election mbean even though it doesn't really do any leader election.


---

* [KAFKA-950](https://issues.apache.org/jira/browse/KAFKA-950) | *Major* | **bytesSinceLastIndexEntry needs to be reset after log segment is truncated**

bytesSinceLastIndexEntry needs to be reset after log segment is truncated. Otherwise, it's possible to add an index entry that points to the first message in a log segment.


---

* [KAFKA-947](https://issues.apache.org/jira/browse/KAFKA-947) | *Major* | **isr-expiration-thread may block LeaderAndIsr request for a relatively long period**

If there are lots of partitions whose isr needs to be shrank, isr-expiration-thread will hold a long lock on leaderPartitionsLock, which will delay LeaderAndIsr requests.


---

* [KAFKA-946](https://issues.apache.org/jira/browse/KAFKA-946) | *Critical* | **Kafka Hadoop Consumer fails when verifying message checksum**

The code tries to verify the checksum, but fails because the data available isn't the same. In KafkaETLContext:

    protected boolean get(KafkaETLKey key, BytesWritable value) throws IOException {
	if (\_messageIt != null && \_messageIt.hasNext()) {
            MessageAndOffset messageAndOffset = \_messageIt.next();

            ByteBuffer buf = messageAndOffset.message().payload();
            int origSize = buf.remaining();
            byte[] bytes = new byte[origSize];
          buf.get(bytes, buf.position(), origSize);
            value.set(bytes, 0, origSize);

            key.set(\_index, \_offset, messageAndOffset.message().checksum());

            \_offset = messageAndOffset.nextOffset();  //increase offset                                                                                                                                  
            \_count ++;  //increase count                                                                                                                                                                 

            return true;
        }
        else return false;
    }

Note that the message payload is used and the message checksum is included in the key. The in SimpleKafkaETLMapper:

    @Override
    public void map(KafkaETLKey key, BytesWritable val,
            OutputCollector<LongWritable, Text> collector,
            Reporter reporter) throws IOException {


	byte[] bytes = KafkaETLUtils.getBytes(val);

        //check the checksum of message                                                                                                                                                                  
        Message message = new Message(bytes);
        long checksum = key.getChecksum();
	if (checksum != message.checksum())
            throw new IOException ("Invalid message checksum "
                                            + message.checksum() + ". Expected " + key + ".");

the Message object is initialized with the payload bytes and a new checksum is calculated. The problem is that the original message checksum also contains the key so checksum verification fails...


---

* [KAFKA-944](https://issues.apache.org/jira/browse/KAFKA-944) | *Critical* | **the pom output from publish and publish-local is not accurate**

the groupId in the publish-local and publish output is wrong

its

<groupId>org.apache</groupId>

and should be

<groupId>org.apache.kafka</groupId> 

per https://issues.apache.org/jira/browse/INFRA-6399

also, I think we should be adding this http://www.apache.org/dev/publishing-maven-artifacts.html#adjust-maven maybe some other things going through it over again


---

* [KAFKA-941](https://issues.apache.org/jira/browse/KAFKA-941) | *Blocker* | **Add Apache 2.0 license to missing code source files**

Unapproved licenses:

  ./core/src/main/scala/kafka/admin/CheckReassignmentStatus.scala
  ./core/src/main/scala/kafka/api/ApiUtils.scala
  ./core/src/main/scala/kafka/api/UpdateMetadataRequest.scala
  ./core/src/main/scala/kafka/client/ClientUtils.scala
  ./core/src/main/scala/kafka/common/BrokerNotExistException.scala
  ./core/src/main/scala/kafka/consumer/ConsumerTopicStat.scala
  ./core/src/main/scala/kafka/consumer/package.html
  ./core/src/main/scala/kafka/log/LogSegment.scala
  ./core/src/main/scala/kafka/log/package.html
  ./core/src/main/scala/kafka/message/package.html
  ./core/src/main/scala/kafka/network/package.html
  ./core/src/main/scala/kafka/producer/async/AsyncProducerStats.scala
  ./core/src/main/scala/kafka/server/package.html
  ./core/src/main/scala/kafka/utils/CommandLineUtils.scala
  ./core/src/main/scala/kafka/utils/FileLock.scala
  ./core/src/main/scala/kafka/utils/Json.scala
  ./core/src/main/scala/kafka/utils/Topic.scala
  ./core/src/main/scala/kafka/utils/package.html
  ./core/src/test/scala/unit/kafka/log/LogSegmentTest.scala


---

* [KAFKA-940](https://issues.apache.org/jira/browse/KAFKA-940) | *Major* | **Scala match error in javaapi.Implicits**

This would affect javaapi users who (correctly) test for null on API calls (e.g., if (partitionMetadata.leader == null))

Right now, we actually get a match error:
scala.MatchError: null
	at kafka.javaapi.Implicits$.optionToJavaRef(Implicits.scala:38)
	at kafka.javaapi.Implicits$.optionToJavaRef(Implicits.scala:40)
	at kafka.javaapi.PartitionMetadata.leader(TopicMetadata.scala:51)
<truncated>


---

* [KAFKA-939](https://issues.apache.org/jira/browse/KAFKA-939) | *Major* | **./sbt publish-local fails due to invalid javac flags passed to javadoc**

Fixed by applying suggestion found here: https://groups.google.com/forum/?fromgroups#!topic/simple-build-tool/I75AODwFlH0


---

* [KAFKA-938](https://issues.apache.org/jira/browse/KAFKA-938) | *Critical* | **High CPU usage when more or less idle**

We've noticed Kafka using a lot of CPU in a pretty much idle environment and tracked it down to it's DelayedItem implementation. In particular, the time conversion for how much longer to wait:

  def getDelay(unit: TimeUnit): Long = {
    val elapsedMs = (SystemTime.milliseconds - createdMs)
    unit.convert(max(delayMs - elapsedMs, 0), unit)
  }

does not actually convert, so Kafka ends up treating a ms value like nanoseconds, e.g. waking up every 100 ns or so. The above code should really be:

  def getDelay(unit: TimeUnit): Long = {
    val elapsedMs = (SystemTime.milliseconds - createdMs)
    unit.convert(max(delayMs - elapsedMs, 0), TimeUnit.MILLISECONDS)
  }

I'll attach a patch.


---

* [KAFKA-937](https://issues.apache.org/jira/browse/KAFKA-937) | *Major* | **ConsumerFetcherThread can deadlock**

We have the following access pattern that can introduce a deadlock.

AbstractFetcherThread.processPartitionsWithError() ->
ConsumerFetcherThread.processPartitionsWithError() -> 
ConsumerFetcherManager.addPartitionsWithError() wait for lock ->
LeaderFinderThread holding lock while calling AbstractFetcherManager.shutdownIdleFetcherThreads() ->
AbstractFetcherManager calling fetcher.shutdown, which needs to wait until AbstractFetcherThread.processPartitionsWithError() completes.


---

* [KAFKA-932](https://issues.apache.org/jira/browse/KAFKA-932) | *Major* | **System Test - set retry.backoff.ms=300 to all test cases**

1. Set retry.backoff.ms=300 to all test cases
2. Set each bouncing 1 minute apart in replication\_testsuite


---

* [KAFKA-931](https://issues.apache.org/jira/browse/KAFKA-931) | *Major* | **make zookeeper.connect a required property**

Currently, zookeeper.connect defaults to a null string. If this property is not overwritten, we will see weird NullPointerException in ZK. It will be better to make zookeeper.connect required property.


---

* [KAFKA-927](https://issues.apache.org/jira/browse/KAFKA-927) | *Major* | **Integrate controlled shutdown into kafka shutdown hook**

The controlled shutdown mechanism should be integrated into the software for better operational benefits. Also few optimizations can be done to reduce unnecessary rpc and zk calls. This patch has been tested on a prod like environment by doing rolling bounces continuously for a day. The average time of doing a rolling bounce with controlled shutdown for a cluster with 7 nodes without this patch is 340 seconds. With this patch it reduces to 220 seconds. Also it ensures correctness in scenarios where the controller shrinks the isr and the new leader could place the broker to be shutdown back into the isr.


---

* [KAFKA-923](https://issues.apache.org/jira/browse/KAFKA-923) | *Critical* | **Improve controller failover latency**

During controller failover, we do the following things -

1. Increment controller epoch 
2. Initialize controller context
3. Initialize replica state machine
4. Initialize partition state machine

During step 2 above, we read the information of all topics and partitions, the replica assignments and leadership information. During step 3 and 4, we re-read some of this information from zookeeper. Since the zookeeper reads are proportional to the number of topics and the reads are serial, it is important to optimize this. The zookeeper reads in steps 3 and 4 are not required.


---

* [KAFKA-921](https://issues.apache.org/jira/browse/KAFKA-921) | *Major* | **Expose max lag mbean for consumers and replica fetchers**

We have a ton of consumer mbeans with names that are derived from the consumer id, broker being fetched from, fetcher id, etc. This makes it difficult to do basic monitoring of consumer/replica fetcher lag - since the mbean to monitor can change. A more useful metric for monitoring purposes is the maximum lag across all fetchers.


---

* [KAFKA-920](https://issues.apache.org/jira/browse/KAFKA-920) | *Blocker* | **zkclient jar 0.2.0 is not compatible with 0.1.0**

Just realized that zkclient 0.2.0 introduced a non-backward compatible api. In 0.1.0, it has
   public void writeData(java.lang.String path, java.lang.Object datat)
   public void writeData(java.lang.String path, java.lang.Object datat, int expectedVersion)

In 0.2.0, they are changed to

   public Stat writeData(java.lang.String path, java.lang.Object datat)
   public Stat writeData(java.lang.String path, java.lang.Object datat, int expectedVersion)

This means that If an application uses Kafka and also drags in another library (X) that depends on zkclient 0.1.0 (and uses "void writeData())", then when they upgrade to Kafka 0.8 consumer (which uses zkclient 0.2.0), their application can't just upgrade to zkclient 0.2.0 since library X's call to "void writeData()" will fail because of the signature change. Since zkclient 0.1.0 is widely used, this issue may affect many applications.

This non-backward compatible change was introduced by me since I didn't realize it's a signature change then. I am trying to see if zkclient can release a new version that's compatible. If that can't be done in time, we will have to downgrade zkclient to 0.1.0 and add the needed ZK functionality inside Kafka. This is not ideal, but can solve the issue quicker.


---

* [KAFKA-919](https://issues.apache.org/jira/browse/KAFKA-919) | *Major* | **Disabling of auto commit is ignored during consumer group rebalancing**

From the mailing list:

In one of our applications using Kafka, we are using the high-level consumer to pull messages from our topic.

Because we pull messages from topics in discrete units (e.g., an hour's worth of messages), we want to control explicitly when offsets are committed.

Even though "auto.commit.enable" is set to false, during consumer group rebalancing, offsets are committed anyway, regardless of the setting of this flag.

Is this a bug? Or just a known gap in offset management? I do see plenty of notes on the wiki suggesting future releases may enable applications using the high-level consumer to have more fine-grained control over offset management.

I also fully realize that different applications have different needs, and meeting all of them with a clean API can be challenging.

In the case of this application, the high-level consumer solves the problem of locating the correct in a cluster for a given topic, so there are advantages to using it, even if we are not using it to balance fetch load across multiple consumers. We ideally have only 1 consumer active per consumer group, and can tolerate some duplicate messages. But, the consumer groups make it easy for 1 consumer to recover at the correct starting point, should the prior consumer in the group have failed before doing a commit.


---

* [KAFKA-916](https://issues.apache.org/jira/browse/KAFKA-916) | *Major* | **Deadlock between fetcher shutdown and handling partitions with error**

Here is another consumer deadlock that we encountered. All consumers are
vulnerable to this during a rebalance if there happen to be partitions in
error.

On a rebalance, the fetcher manager closes all fetchers and this holds on to
the fetcher thread map's lock. (mapLock in AbstractFetcherManager). [t1]
While the fetcher manager is iterating over fetchers to stop them, a fetcher
that is yet to be stopped hits an error on a partition and proceeds to
handle partitions with error [t2]. This handling involves looking up the
fetcher for that partition and then removing it from the fetcher's set of
partitions to consume. This requires grabbing the same map lock in [t1],
hence the deadlock.

[t1]
2013-05-22\_20:23:11.95767 "main" prio=10 tid=0x00007f1b24007800 nid=0x573b waiting on condition [0x00007f1b2bd38000]
2013-05-22\_20:23:11.95767    java.lang.Thread.State: WAITING (parking)
2013-05-22\_20:23:11.95767 	at sun.misc.Unsafe.park(Native Method)
2013-05-22\_20:23:11.95767 	- parking to wait for  <0x00007f1a25780598> (a java.util.concurrent.CountDownLatch$Sync)
2013-05-22\_20:23:11.95767 	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)
2013-05-22\_20:23:11.95767 	at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
2013-05-22\_20:23:11.95768 	at java.util.concurrent.locks.AbstractQueuedSynchronizer.doAcquireSharedInterruptibly(AbstractQueuedSynchronizer.java:969)
2013-05-22\_20:23:11.95768 	at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly(AbstractQueuedSynchronizer.java:1281)
2013-05-22\_20:23:11.95768 	at java.util.concurrent.CountDownLatch.await(CountDownLatch.java:207)
2013-05-22\_20:23:11.95768 	at kafka.utils.ShutdownableThread.shutdown(ShutdownableThread.scala:36)
2013-05-22\_20:23:11.95769 	at kafka.server.AbstractFetcherThread.shutdown(AbstractFetcherThread.scala:68)
2013-05-22\_20:23:11.95769 	at kafka.server.AbstractFetcherManager$$anonfun$closeAllFetchers$1.apply(AbstractFetcherManager.scala:79)
2013-05-22\_20:23:11.95769 	at kafka.server.AbstractFetcherManager$$anonfun$closeAllFetchers$1.apply(AbstractFetcherManager.scala:78)
2013-05-22\_20:23:11.95769 	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
2013-05-22\_20:23:11.95769 	at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
2013-05-22\_20:23:11.95770 	at scala.collection.Iterator$class.foreach(Iterator.scala:631)
2013-05-22\_20:23:11.95770 	at scala.collection.mutable.HashTable$$anon$1.foreach(HashTable.scala:161)
2013-05-22\_20:23:11.95770 	at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:194)
2013-05-22\_20:23:11.95770 	at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
2013-05-22\_20:23:11.95771 	at scala.collection.mutable.HashMap.foreach(HashMap.scala:80)
2013-05-22\_20:23:11.95771 	at kafka.server.AbstractFetcherManager.closeAllFetchers(AbstractFetcherManager.scala:78)
---> 2013-05-22\_20:23:11.95771 	- locked <0x00007f1a2ae92510> (a java.lang.Object)
2013-05-22\_20:23:11.95771 	at kafka.consumer.ConsumerFetcherManager.stopConnections(ConsumerFetcherManager.scala:156)
2013-05-22\_20:23:11.95771 	at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.kafka$consumer$ZookeeperConsumerConnector$ZKRebalancerListener$$closeFetchersForQueues(ZookeeperConsumerConnector.scala:488)
2013-05-22\_20:23:11.95772 	at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.closeFetchers(ZookeeperConsumerConnector.scala:525)
2013-05-22\_20:23:11.95772 	at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.kafka$consumer$ZookeeperConsumerConnector$ZKRebalancerListener$$rebalance(ZookeeperConsumerConnector.scala:422)
2013-05-22\_20:23:11.95772 	at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener$$anonfun$syncedRebalance$1.apply$mcVI$sp(ZookeeperConsumerConnector.scala:374)
2013-05-22\_20:23:11.95772 	at scala.collection.immutable.Range$ByOne$class.foreach$mVc$sp(Range.scala:282)
2013-05-22\_20:23:11.95773 	at scala.collection.immutable.Range$$anon$2.foreach$mVc$sp(Range.scala:265)
2013-05-22\_20:23:11.95773 	at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.syncedRebalance(ZookeeperConsumerConnector.scala:369)
2013-05-22\_20:23:11.95773 	- locked <0x00007f1a2a29b450> (a java.lang.Object)
2013-05-22\_20:23:11.95773 	at kafka.consumer.ZookeeperConsumerConnector.kafka$consumer$ZookeeperConsumerConnector$$reinitializeConsumer(ZookeeperConsumerConnector.scala:680)
2013-05-22\_20:23:11.95774 	at kafka.consumer.ZookeeperConsumerConnector$WildcardStreamsHandler.handleTopicEvent(ZookeeperConsumerConnector.scala:754)
2013-05-22\_20:23:11.95774 	at kafka.consumer.ZookeeperTopicEventWatcher$ZkTopicEventListener.liftedTree1$1(ZookeeperTopicEventWatcher.scala:74)
2013-05-22\_20:23:11.95774 	at kafka.consumer.ZookeeperTopicEventWatcher$ZkTopicEventListener.handleChildChange(ZookeeperTopicEventWatcher.scala:69)
2013-05-22\_20:23:11.95774 	- locked <0x00007f1a2a69b1d8> (a java.lang.Object)
2013-05-22\_20:23:11.95774 	at kafka.consumer.ZookeeperTopicEventWatcher.startWatchingTopicEvents(ZookeeperTopicEventWatcher.scala:46)
2013-05-22\_20:23:11.95775 	at kafka.consumer.ZookeeperTopicEventWatcher.<init>(ZookeeperTopicEventWatcher.scala:33)
2013-05-22\_20:23:11.95775 	at kafka.consumer.ZookeeperConsumerConnector$WildcardStreamsHandler.<init>(ZookeeperConsumerConnector.scala:721)
2013-05-22\_20:23:11.95775 	at kafka.consumer.ZookeeperConsumerConnector.createMessageStreamsByFilter(ZookeeperConsumerConnector.scala:140)
2013-05-22\_20:23:11.95776 	at kafka.tools.MirrorMaker$$anonfun$main$3.apply(MirrorMaker.scala:118)
2013-05-22\_20:23:11.95776 	at kafka.tools.MirrorMaker$$anonfun$main$3.apply(MirrorMaker.scala:118)
2013-05-22\_20:23:11.95776 	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
2013-05-22\_20:23:11.95776 	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
2013-05-22\_20:23:11.95776 	at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
2013-05-22\_20:23:11.95777 	at scala.collection.immutable.List.foreach(List.scala:45)
2013-05-22\_20:23:11.95777 	at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)
2013-05-22\_20:23:11.95777 	at scala.collection.immutable.List.map(List.scala:45)
2013-05-22\_20:23:11.95777 	at kafka.tools.MirrorMaker$.main(MirrorMaker.scala:118)
2013-05-22\_20:23:11.95777 	at kafka.tools.MirrorMaker.main(MirrorMaker.scala)

[t2]

2013-05-22\_20:23:11.87465 "ConsumerFetcherThread-xxxx-1369238724254-cff180ff-0-505" prio=10 tid=0x00007f196401a800 nid=0x717a waiting for monitor entry [0x00007f19bf0ef000]
2013-05-22\_20:23:11.87466    java.lang.Thread.State: BLOCKED (on object monitor)
2013-05-22\_20:23:11.87467 	at kafka.server.AbstractFetcherManager.removeFetcher(AbstractFetcherManager.scala:57)
---> 2013-05-22\_20:23:11.87467 	- waiting to lock <0x00007f1a2ae92510> (a java.lang.Object)
2013-05-22\_20:23:11.87468 	at kafka.consumer.ConsumerFetcherManager$$anonfun$addPartitionsWithError$2.apply(ConsumerFetcherManager.scala:170)
2013-05-22\_20:23:11.95682 	at kafka.consumer.ConsumerFetcherManager$$anonfun$addPartitionsWithError$2.apply(ConsumerFetcherManager.scala:170)
2013-05-22\_20:23:11.95683 	at scala.collection.mutable.HashSet.foreach(HashSet.scala:61)
2013-05-22\_20:23:11.95684 	at kafka.consumer.ConsumerFetcherManager.addPartitionsWithError(ConsumerFetcherManager.scala:170)
2013-05-22\_20:23:11.95684 	at kafka.consumer.ConsumerFetcherThread.handlePartitionsWithErrors(ConsumerFetcherThread.scala:69)
2013-05-22\_20:23:11.95684 	at kafka.server.AbstractFetcherThread.processFetchRequest(AbstractFetcherThread.scala:168)
2013-05-22\_20:23:11.95684 	at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:88)
2013-05-22\_20:23:11.95684 	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)
2013-05-22\_20:23:11.95686 
2013-05-22\_20:23:11.95686 "main-EventThread" daemon prio=10 tid=0x00007f1b2471d000 nid=0x605a waiting on condition [0x00007f19bedec000]
2013-05-22\_20:23:11.95686    java.lang.Thread.State: WAITING (parking)
2013-05-22\_20:23:11.95686 	at sun.misc.Unsafe.park(Native Method)
2013-05-22\_20:23:11.95686 	- parking to wait for  <0x00007f1a2a4426f8> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
2013-05-22\_20:23:11.95687 	at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)
2013-05-22\_20:23:11.95687 	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)
2013-05-22\_20:23:11.95687 	at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:399)
2013-05-22\_20:23:11.95687 	at org.apache.zookeeper.ClientCnxn$EventThread.run(ClientCnxn.java:503)


---

* [KAFKA-914](https://issues.apache.org/jira/browse/KAFKA-914) | *Major* | **Deadlock between initial rebalance and watcher-triggered rebalances**

Summary doesn't give the full picture and the fetcher-manager/fetcher-thread                                                                                                                                
code is very complex so it's a bit hard to articulate the following very                                                                                                                                    
clearly. I will try and describe the sequence that results in a deadlock                                                                                                                                    
when starting up a large number of consumers at around the same time:                                                                                                                                       
                                                                                                                                                                                                            
- When a consumer's createMessageStream method is called, it initiates an                                                                                                                                   
  initial inline rebalance.                                                                                                                                                                                 
- However, before the above initial rebalance actually begins, a ZK watch                                                                                                                                   
  may trigger (due to some other consumers starting up) and initiate a                                                                                                                                      
  rebalance. This happens successfully so fetchers start and start filling                                                                                                                                  
  up the chunk queues.                                                                                                                                                                                      
- Another watch triggers and initiates yet another rebalance. This rebalance                                                                                                                                
  attempt tries to close the fetchers. Before the fetchers are stopped, we                                                                                                                                  
  shutdown the leader-finder-thread to prevent new fetchers from being                                                                                                                                      
  started.                                                                                                                                                                                                  
- The shutdown is accomplished by interrupting the leader-finder-thread and                                                                                                                                 
  then awaiting its shutdown latch.                                                                                                                                                                         
- If the leader-finder-thread still has a partition without leader to                                                                                                                                       
  process and tries to add a fetcher for it, it will get an exception                                                                                                                                       
  (InterruptedException if acquiring the partitionMapLock or                                                                                                                                                
  ClosedByInterruptException if performing an offset request). If we get an                                                                                                                                 
  InterruptedException the thread's interrupted flag is cleared.                                                                                                                                            
- However, the leader-finder-thread may have multiple partitions without                                                                                                                                    
  leader that it is currently processing. So if the interrupted flag is                                                                                                                                     
  cleared and the leader-finder-thread tries to add a fetcher for a another                                                                                                                                 
  partition, it does not receive an InterruptedException when it tries to                                                                                                                                   
  acquire the partitionMapLock. It can end up blocking indefinitely at that                                                                                                                                 
  point.                                                                                                                                                                                                    
- The problem is that until now, the createMessageStream's initial inline                                                                                                                                   
  rebalance has not yet returned - it is blocked on the rebalance lock                                                                                                                                      
  waiting on the second watch-triggered rebalance to complete. i.e., the                                                                                                                                    
  consumer iterators have not been created yet and thus the fetcher queues                                                                                                                                  
  get filled up. [td1]                                                                                                                                                                                      
- As a result, processPartitionData (which holds on to the partitionMapLock)                                                                                                                                
  in one or more fetchers will be blocked trying to enqueue into a full                                                                                                                                     
  chunk queue.[td2]                                                                                                                                                                                         
- So the leader-finder-thread cannot finish adding fetchers for the                                                                                                                                         
  remaining partitions without leader and thus cannot shutdown.                                                                                                                                             
                                                                                                                                                                                                            
One way to fix would be to let the exception from the leader-finder-thread                                                                                                                                  
propagate outside if the leader-finder-thread is currently shutting down -                                                                                                                                  
and avoid the subsequent (unnecessary) attempt to add a fetcher and lock                                                                                                                                    
partitionMapLock. There may be more elegant fixes (such as rewriting the                                                                                                                                    
whole consumer manager logic) but obviously we want to avoid extensive                                                                                                                                      
changes at this point in 0.8.                                                                                                                                                                               
                                                                                                                                                                                                            
Relevant portions of the thread-dump are here:                                                                                                                                                              
                                                                                                                                                                                                            
[td1] createMessageStream's initial inline rebalance (blocked on the ongoing                                                                                                                                
watch-triggered rebalance)                                                                                                                                                                                  
                                                                                                                                                                                                            
2013-05-20\_17:50:13.04848 "main" prio=10 tid=0x00007f5960008000 nid=0x3772 waiting for monitor entry [0x00007f59666c3000]                                                                                   
2013-05-20\_17:50:13.04848    java.lang.Thread.State: BLOCKED (on object monitor)                                                                                                                            
2013-05-20\_17:50:13.04848       at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.syncedRebalance(ZookeeperConsumerConnector.scala:368)                                                     
2013-05-20\_17:50:13.04849       - waiting to lock <0x00007f58637dfe10> (a java.lang.Object)                                                                                                                 
2013-05-20\_17:50:13.04849       at kafka.consumer.ZookeeperConsumerConnector.kafka$consumer$ZookeeperConsumerConnector$$reinitializeConsumer(ZookeeperConsumerConnector.scala:678)                          
2013-05-20\_17:50:13.04850       at kafka.consumer.ZookeeperConsumerConnector$WildcardStreamsHandler.<init>(ZookeeperConsumerConnector.scala:712)                                                            
2013-05-20\_17:50:13.04850       at kafka.consumer.ZookeeperConsumerConnector.createMessageStreamsByFilter(ZookeeperConsumerConnector.scala:140)                                                             
2013-05-20\_17:50:13.04850       at kafka.tools.MirrorMaker$$anonfun$4.apply(MirrorMaker.scala:118)                                                                                                          
2013-05-20\_17:50:13.04850       at kafka.tools.MirrorMaker$$anonfun$4.apply(MirrorMaker.scala:118)                                                                                                          
2013-05-20\_17:50:13.04850       at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)                                                                                         
2013-05-20\_17:50:13.04851       at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)                                                                                         
2013-05-20\_17:50:13.04851       at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)                                                                                           
2013-05-20\_17:50:13.04851       at scala.collection.immutable.List.foreach(List.scala:45)                                                                                                                   
2013-05-20\_17:50:13.04851       at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)                                                                                                    
2013-05-20\_17:50:13.04852       at scala.collection.immutable.List.map(List.scala:45)                                                                                                                       
2013-05-20\_17:50:13.04852       at kafka.tools.MirrorMaker$.main(MirrorMaker.scala:118)                                                                                                                     
2013-05-20\_17:50:13.04852       at kafka.tools.MirrorMaker.main(MirrorMaker.scala)                                                                                                                          
                                                                                                                                                                                                            
[td2] A consumer fetcher thread blocked on full queue.                                                                                                                                                      
                                                                                                                                                                                                            
2013-05-20\_17:50:13.04703 "ConsumerFetcherThread-xxxx-1368836182178-2009023c-0-3248" prio=10 tid=0x00007f57a4010800 nid=0x3920 waiting on condition [0x00                                                   
007f58316ae000]                                                                                                                                                                                             
2013-05-20\_17:50:13.04703    java.lang.Thread.State: WAITING (parking)                                                                                                                                      
2013-05-20\_17:50:13.04703       at sun.misc.Unsafe.park(Native Method)                                                                                                                                      
2013-05-20\_17:50:13.04704       - parking to wait for  <0x00007f586381d6c0> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)                                                       
2013-05-20\_17:50:13.04704       at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)                                                                                                        
2013-05-20\_17:50:13.04704       at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)                                                        
2013-05-20\_17:50:13.04704       at java.util.concurrent.LinkedBlockingQueue.put(LinkedBlockingQueue.java:306)                                                                                               
2013-05-20\_17:50:13.04704       at kafka.consumer.PartitionTopicInfo.enqueue(PartitionTopicInfo.scala:60)                                                                                                   
2013-05-20\_17:50:13.04705       at kafka.consumer.ConsumerFetcherThread.processPartitionData(ConsumerFetcherThread.scala:50)                                                                                
2013-05-20\_17:50:13.04706       at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$4.apply(AbstractFetcherThread.scala:131)                                                                 
2013-05-20\_17:50:13.04707       at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$4.apply(AbstractFetcherThread.scala:112)                                                                 
2013-05-20\_17:50:13.04708       at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)                                                                                                               
2013-05-20\_17:50:13.04709       at kafka.server.AbstractFetcherThread.processFetchRequest(AbstractFetcherThread.scala:112)                                                                                  
2013-05-20\_17:50:13.04709       at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:88)                                                                                                
2013-05-20\_17:50:13.04709       at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)                                                                                                          
2                                                                                                                                                                                                           
                                                                                                                                                                                                            
[td3] Second watch-triggered rebalance                                                                                                                                                                      
                                                                                                                                                                                                            
2013-05-20\_17:50:13.04725 "xxxx-1368836182178-2009023c\_watcher\_executor" prio=10 tid=0x00007f5960777800 nid=0x37af waiting on condition [0x00007f58318b00                                                   
00]                                                                                                                                                                                                         
2013-05-20\_17:50:13.04725    java.lang.Thread.State: WAITING (parking)                                                                                                                                      
2013-05-20\_17:50:13.04726       at sun.misc.Unsafe.park(Native Method)                                                                                                                                      
2013-05-20\_17:50:13.04726       - parking to wait for  <0x00007f5863728de8> (a java.util.concurrent.CountDownLatch$Sync)                                                                                    
2013-05-20\_17:50:13.04726       at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)                                                                                                        
2013-05-20\_17:50:13.04727       at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)                                                         
2013-05-20\_17:50:13.04727       at java.util.concurrent.locks.AbstractQueuedSynchronizer.doAcquireSharedInterruptibly(AbstractQueuedSynchronizer.java:969)                                                  
2013-05-20\_17:50:13.04728       at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireSharedInterruptibly(AbstractQueuedSynchronizer.java:1281)                                                   
2013-05-20\_17:50:13.04728       at java.util.concurrent.CountDownLatch.await(CountDownLatch.java:207)                                                                                                       
2013-05-20\_17:50:13.04729       at kafka.utils.ShutdownableThread.shutdown(ShutdownableThread.scala:36)                                                                                                     
2013-05-20\_17:50:13.04729       at kafka.consumer.ConsumerFetcherManager.stopConnections(ConsumerFetcherManager.scala:125)                                                                                  
2013-05-20\_17:50:13.04730       at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.kafka$consumer$ZookeeperConsumerConnector$ZKRebalancerListener$$closeFetchersForQueues(ZookeeperConsumerCo
nnector.scala:486)                                                                                                                                                                                          
2013-05-20\_17:50:13.04730       at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.closeFetchers(ZookeeperConsumerConnector.scala:523)                                                       
2013-05-20\_17:50:13.04731       at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.kafka$consumer$ZookeeperConsumerConnector$ZKRebalancerListener$$rebalance(ZookeeperConsumerConnector.scala
:420)                                                                                                                                                                                                       
2013-05-20\_17:50:13.04731       at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener$$anonfun$syncedRebalance$1.apply$mcVI$sp(ZookeeperConsumerConnector.scala:373)                            
2013-05-20\_17:50:13.04732       at scala.collection.immutable.Range$ByOne$class.foreach$mVc$sp(Range.scala:282)                                                                                             
2013-05-20\_17:50:13.04733       at scala.collection.immutable.Range$$anon$2.foreach$mVc$sp(Range.scala:265)                                                                                                 
2013-05-20\_17:50:13.04733       at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.syncedRebalance(ZookeeperConsumerConnector.scala:368)                                                     
2013-05-20\_17:50:13.04733       - locked <0x00007f58637dfe10> (a java.lang.Object)                                                                                                                          
2013-05-20\_17:50:13.04734       at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener$$anon$1.run(ZookeeperConsumerConnector.scala:325)                                                         
                                                                                                                                                                                                            
[td4] leader-finder-thread still trying to process partitions without leader, blocked on the partitionMapLock held by processPartitionData in td2.                                                          
                                                                                                                                                                                                            
2013-05-20\_17:50:13.04712 "xxxx-1368836182178-2009023c-leader-finder-thread" prio=10 tid=0x00007f57b0027800 nid=0x38d8 waiting on condition [0x00007f5831                                                   
7af000]                                                                                                                                                                                                     
2013-05-20\_17:50:13.04712    java.lang.Thread.State: WAITING (parking)                                                                                                                                      
2013-05-20\_17:50:13.04713       at sun.misc.Unsafe.park(Native Method)                                                                                                                                      
2013-05-20\_17:50:13.04713       - parking to wait for  <0x00007f586375e3d8> (a java.util.concurrent.locks.ReentrantLock$NonfairSync)                                                                        
2013-05-20\_17:50:13.04713       at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)                                                                                                        
2013-05-20\_17:50:13.04714       at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)                                                         
2013-05-20\_17:50:13.04714       at java.util.concurrent.locks.AbstractQueuedSynchronizer.doAcquireInterruptibly(AbstractQueuedSynchronizer.java:867)                                                        
2013-05-20\_17:50:13.04717       at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly(AbstractQueuedSynchronizer.java:1201)                                                         
2013-05-20\_17:50:13.04718       at java.util.concurrent.locks.ReentrantLock.lockInterruptibly(ReentrantLock.java:312)                                                                                       
2013-05-20\_17:50:13.04718       at kafka.server.AbstractFetcherThread.addPartition(AbstractFetcherThread.scala:173)                                                                                         
2013-05-20\_17:50:13.04719       at kafka.server.AbstractFetcherManager.addFetcher(AbstractFetcherManager.scala:48)                                                                                          
2013-05-20\_17:50:13.04719       - locked <0x00007f586374b040> (a java.lang.Object)                                                                                                                          
2013-05-20\_17:50:13.04719       at kafka.consumer.ConsumerFetcherManager$LeaderFinderThread$$anonfun$doWork$4.apply(ConsumerFetcherManager.scala:83)                                                        
2013-05-20\_17:50:13.04720       at kafka.consumer.ConsumerFetcherManager$LeaderFinderThread$$anonfun$doWork$4.apply(ConsumerFetcherManager.scala:79)                                                        
2013-05-20\_17:50:13.04721       at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)                                                                                              
2013-05-20\_17:50:13.04721       at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)                                                                                              
2013-05-20\_17:50:13.04721       at scala.collection.Iterator$class.foreach(Iterator.scala:631)                                                                                                              
2013-05-20\_17:50:13.04722       at scala.collection.mutable.HashTable$$anon$1.foreach(HashTable.scala:161)                                                                                                  
2013-05-20\_17:50:13.04723       at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:194)                                                                                               
2013-05-20\_17:50:13.04723       at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)                                                                                                          
2013-05-20\_17:50:13.04723       at scala.collection.mutable.HashMap.foreach(HashMap.scala:80)                                                                                                               
2013-05-20\_17:50:13.04724       at kafka.consumer.ConsumerFetcherManager$LeaderFinderThread.doWork(ConsumerFetcherManager.scala:79)                                                                         
2013-05-20\_17:50:13.04724       at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)


---

* [KAFKA-907](https://issues.apache.org/jira/browse/KAFKA-907) | *Major* | **controller needs to close socket channel to brokers on exception**

When the controller sends a request to a broker (e.g., leaderAndIsrRequest), it may hit a exception (e.g. SocketTimeException). When this happens, the socket channel needs to be closed and recreated.


---

* [KAFKA-905](https://issues.apache.org/jira/browse/KAFKA-905) | *Major* | **Logs can have same offsets causing recovery failure**

Consider the following scenario - 

L                       F
1  m1,m2        1 m1,m2
3  m3,m4        3 m3,m4
5  m5,m6        5 m5,m6

HW = 6           HW = 4

Follower goes down and comes back up. Truncates its log to HW

L                             F
1  m1,m2               1 m1,m2
3  m3,m4               3 m3,m4
5  m5,m6

HW = 6            HW = 4

Before follower catches up with the leader, leader goes down and follower becomes the leader. It then gets new messages

F                       L
1  m1,m2        1  m1,m2
3  m3,m4        3  m3,m4
5  m5,m6      10 m5-m10

HW=6              HW=4

follower fetches from offset 7. Since offset 7 is within the compressed message 10 in the leader, the whole message chunk is sent to the follower

F                        L      
1   m1,m2         1  m1,m2
3   m3,m4         3  m3,m4  
5   m5,m6       10  m5-m10
10 m5-m10

HW=4               HW=10

The follower logs now contain the same offsets. On recovery, re-indexing will fail due to repeated offsets.

Possible ways to fix this - 
1. The fetcher thread can do deep iteration instead of shallow iteration and drop the offsets that are less than the log end offset. This would however incur performance hit.
2. To optimize step 1, we could do the deep iteration till the logical offset of the fetched message set is greater than the log end offset of the follower log and then switch to shallow iteration.
3. On recovery we just truncate the active segment and refetch the data.

All the above 3 steps are hacky. The right fix is to ensure we never corrupt the logs. We can incur data loss but should not compromise consistency. For 0.8, the easiest and simplest fix would be 3.


---

* [KAFKA-903](https://issues.apache.org/jira/browse/KAFKA-903) | *Blocker* | **[0.8.0 - windows]  FATAL - [highwatermark-checkpoint-thread1] (Logging.scala:109) - Attempt to swap the new high watermark file with the old one failed**

This FATAL shuts down both brokers on windows, 
{2013-05-10 18:23:57,636} DEBUG [local-vat] (Logging.scala:51) - Sending 1 
messages with no compression to [robert\_v\_2x0,0]
{2013-05-10 18:23:57,637} DEBUG [local-vat] (Logging.scala:51) - Producer 
sending messages with correlation id 178 for topics [robert\_v\_2x0,0] to 
broker 1 on 192.168.1.100:9093
{2013-05-10 18:23:57,689} FATAL [highwatermark-checkpoint-thread1] 
(Logging.scala:109) - Attempt to swap the new high watermark file with the 
old one failed
{2013-05-10 18:23:57,739}  INFO [Thread-4] (Logging.scala:67) - [Kafka 
Server 0], shutting down

Furthermore, attempts to restart them fail, with the following log:
{2013-05-10 19:14:52,156}  INFO [Thread-1] (Logging.scala:67) - [Kafka Server 0], started
{2013-05-10 19:14:52,157}  INFO [ZkClient-EventThread-32-localhost:2181] (Logging.scala:67) - New leader is 0
{2013-05-10 19:14:52,193} DEBUG [ZkClient-EventThread-32-localhost:2181] (ZkEventThread.java:79) - Delivering event #1 done
{2013-05-10 19:14:52,193} DEBUG [ZkClient-EventThread-32-localhost:2181] (ZkEventThread.java:69) - Delivering event #4 ZkEvent[Data of /controller\_epoch changed sent to kafka.controller.ControllerEpochListener@5cb88f42]
{2013-05-10 19:14:52,210} DEBUG [SyncThread:0] (FinalRequestProcessor.java:78) - Processing request:: sessionid:0x13e9127882e0001 type:exists cxid:0x1d zxid:0xfffffffffffffffe txntype:unknown reqpath:/controller\_epoch
{2013-05-10 19:14:52,210} DEBUG [SyncThread:0] (FinalRequestProcessor.java:160) - sessionid:0x13e9127882e0001 type:exists cxid:0x1d zxid:0xfffffffffffffffe txntype:unknown reqpath:/controller\_epoch
{2013-05-10 19:14:52,213} DEBUG [Thread-1-SendThread(localhost:2181)] (ClientCnxn.java:838) - Reading reply sessionid:0x13e9127882e0001, packet:: clientPath:null serverPath:null finished:false header:: 29,3  replyHeader:: 29,37,0  request:: '/controller\_epoch,T  response:: s{16,36,1368231712816,1368234889961,1,0,0,0,1,0,16} 
{2013-05-10 19:14:52,219}  INFO [Thread-5] (Logging.scala:67) - [Kafka Server 0], shutting down


---

* [KAFKA-900](https://issues.apache.org/jira/browse/KAFKA-900) | *Major* | **ClosedByInterruptException when high-level consumer shutdown normally**

I'm porting some unit tests from 0.7.2 to 0.8.0. The test does the following, all embedded in the same java process: 

-- spins up a zk instance 
-- spins up a kafka server using a fresh log directory 
-- creates a producer and sends a message 
-- creates a high-level consumer and verifies that it can consume the message 
-- shuts down the consumer 
-- stops the kafka server 
-- stops zk 

The test seems to be working fine now, however, I consistently see the following exception, when the consumer connector is shutdown:

1699 [ConsumerFetcherThread-group1\_square-1a7ac0.local-1368076598439-d66bb2eb-0-1946108683] WARN kafka.consumer.ConsumerFetcherThread  - [ConsumerFetcherThread-group1\_square-1a7ac0.local-1368076598439-d66bb2eb-0-1946108683], Error in fetch Name: FetchRequest; Version: 0; CorrelationId: 1; ClientId: group1-ConsumerFetcherThread-group1\_square-1a7ac0.local-1368076598439-d66bb2eb-0-1946108683; ReplicaId: -1; MaxWait: 100 ms; MinBytes: 1 bytes; RequestInfo: [test-topic,0] -> PartitionFetchInfo(1,1048576)
java.nio.channels.ClosedByInterruptException
	at java.nio.channels.spi.AbstractInterruptibleChannel.end(AbstractInterruptibleChannel.java:184)
	at sun.nio.ch.SocketChannelImpl.connect(SocketChannelImpl.java:543)
	at kafka.network.BlockingChannel.connect(BlockingChannel.scala:57)
	at kafka.consumer.SimpleConsumer.connect(SimpleConsumer.scala:47)
	at kafka.consumer.SimpleConsumer.reconnect(SimpleConsumer.scala:60)
	at kafka.consumer.SimpleConsumer.liftedTree1$1(SimpleConsumer.scala:81)
	at kafka.consumer.SimpleConsumer.kafka$consumer$SimpleConsumer$$sendRequest(SimpleConsumer.scala:73)
	at kafka.consumer.SimpleConsumer$$anonfun$fetch$1$$anonfun$apply$mcV$sp$1.apply$mcV$sp(SimpleConsumer.scala:112)
	at kafka.consumer.SimpleConsumer$$anonfun$fetch$1$$anonfun$apply$mcV$sp$1.apply(SimpleConsumer.scala:112)
	at kafka.consumer.SimpleConsumer$$anonfun$fetch$1$$anonfun$apply$mcV$sp$1.apply(SimpleConsumer.scala:112)
	at kafka.metrics.KafkaTimer.time(KafkaTimer.scala:33)
	at kafka.consumer.SimpleConsumer$$anonfun$fetch$1.apply$mcV$sp(SimpleConsumer.scala:111)
	at kafka.consumer.SimpleConsumer$$anonfun$fetch$1.apply(SimpleConsumer.scala:111)
	at kafka.consumer.SimpleConsumer$$anonfun$fetch$1.apply(SimpleConsumer.scala:111)
	at kafka.metrics.KafkaTimer.time(KafkaTimer.scala:33)
	at kafka.consumer.SimpleConsumer.fetch(SimpleConsumer.scala:110)
	at kafka.server.AbstractFetcherThread.processFetchRequest(AbstractFetcherThread.scala:96)
	at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:88)
	at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)
1721 [Thread-12] INFO com.squareup.kafka.server.KafkaServer  - Shutting down KafkaServer
2030 [main] INFO com.squareup.kafka.server.KafkaServer  - Shut down complete for KafkaServer
Disconnected from the target VM, address: '127.0.0.1:49243', transport: 'socket'


It would be great if instead, something meaningful was logged, like:

"Consumer connector has been shutdown"


---

* [KAFKA-895](https://issues.apache.org/jira/browse/KAFKA-895) | *Trivial* | **Protocol documentation is not clear about requiredAcks = 0.**

After reading the protocol guide (https://cwiki.apache.org/KAFKA/a-guide-to-the-kafka-protocol.html), I was under the impression that the Produce API was sending a response even when requiredAcks = 0 (immediately after receiving the request). However, after some tests, I realized that no response is sent in that case. The protocol documentation should specify clearly that behavior.


---

* [KAFKA-884](https://issues.apache.org/jira/browse/KAFKA-884) | *Minor* | **Get java.lang.NoSuchMethodError: com.yammer.metrics.core.TimerContext.stop()J when stopping kafka brokers**

When stopping kafka brokers I get the following stack trace:

2013-04-26 14:30:16,394] INFO [Replica Manager on Broker 1]: Shutted down completely (kafka.server.ReplicaManager)
[2013-04-26 14:30:16,398] WARN com.yammer.metrics.core.TimerContext.stop()J (kafka.utils.Utils$)
java.lang.NoSuchMethodError: com.yammer.metrics.core.TimerContext.stop()J
	at kafka.metrics.KafkaTimer.time(KafkaTimer.scala:36)
	at kafka.log.FileMessageSet.flush(FileMessageSet.scala:164)
	at kafka.log.FileMessageSet.close(FileMessageSet.scala:173)
	at kafka.log.LogSegment$$anonfun$close$2.apply$mcV$sp(LogSegment.scala:161)
	at kafka.utils.Utils$.swallow(Utils.scala:186)
	at kafka.utils.Logging$class.swallowWarn(Logging.scala:91)
	at kafka.utils.Utils$.swallowWarn(Utils.scala:45)
	at kafka.utils.Logging$class.swallow(Logging.scala:93)
	at kafka.utils.Utils$.swallow(Utils.scala:45)
	at kafka.log.LogSegment.close(LogSegment.scala:161)
	at kafka.log.Log$$anonfun$close$2.apply(Log.scala:248)
	at kafka.log.Log$$anonfun$close$2.apply(Log.scala:247)
	at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:34)
	at scala.collection.mutable.ArrayOps.foreach(ArrayOps.scala:34)
	at kafka.log.Log.close(Log.scala:247)
	at kafka.log.LogManager$$anonfun$shutdown$2.apply(LogManager.scala:290)
	at kafka.log.LogManager$$anonfun$shutdown$2.apply(LogManager.scala:290)
	at scala.collection.Iterator$class.foreach(Iterator.scala:631)
	at scala.collection.JavaConversions$JIteratorWrapper.foreach(JavaConversions.scala:474)
	at scala.collection.IterableLike$class.foreach(IterableLike.scala:79)
	at scala.collection.JavaConversions$JCollectionWrapper.foreach(JavaConversions.scala:495)
	at kafka.log.LogManager.shutdown(LogManager.scala:290)
	at kafka.server.KafkaServer$$anonfun$shutdown$7.apply$mcV$sp(KafkaServer.scala:125)
	at kafka.utils.Utils$.swallow(Utils.scala:186)
	at kafka.utils.Logging$class.swallowWarn(Logging.scala:91)
	at kafka.utils.Utils$.swallowWarn(Utils.scala:45)
	at kafka.utils.Logging$class.swallow(Logging.scala:93)
	at kafka.utils.Utils$.swallow(Utils.scala:45)
	at kafka.server.KafkaServer.shutdown(KafkaServer.scala:125)
	at kafka.server.KafkaServerStartable.shutdown(KafkaServerStartable.scala:46)
	at kafka.Kafka$$anon$1.run(Kafka.scala:42)

Steps to reproduce:
git checkout  remotes/origin/0.8
./sbt update
./sbt +package
./sbt assembly-package-dependency
./sbt eclipse

Now create 3 server.properties under config as described in the quick-start for 0.8
Additionally comment out the JMX\_PORT in bin/kafka-server-start.sh.
Now start up servers and create a topic

bin/zookeeper-server-start.sh config/zookeeper.properties&
bin/kafka-server-start.sh config/server0.properties&
bin/kafka-server-start.sh config/server1.properties&
bin/kafka-server-start.sh config/server2.properties&
bin/kafka-create-topic.sh --topic mytopic --replica 3 --zookeeper localhost:2181
bin/kafka-console-producer.sh --broker-list localhost:9092,localhost:9093,localhost:9094 --sync --topic mytopic

Confirm that kafka servers are running as well as QuorumPeerMain
$ jps
43668 QuorumPeerMain
43669 Jps
43666 Kafka
43667 Kafka
43665 Kafka

Now stop the brokers and zookeeper
kill $(ps -eaf|grep Kafka|grep -v grep|awk '{print $2}')
kill $(ps -eaf|grep QuorumPeerMain|grep -v grep|awk '{print $2}')

You should see the above stack trace.


---

* [KAFKA-880](https://issues.apache.org/jira/browse/KAFKA-880) | *Major* | **NoLeaderPartitionSet should be cleared before leader finder thread is started up**

This was a recent regression.

This could prevent the consumer from progressing because fetchers for the currently owned partitions may not be added (depending on the order that the map iterator yields).

I think the fix should be simple - just clear the set after stopping the leader finder thread and stopping fetchers.

[2013-04-25 17:06:38,377] WARN [sometopic-somehost-1366909575615-f801367d-leader-finder-thread]
, Failed to find leader for Set([sometopic,11], [sometopic,25], [sometopic,24]) (kafka.consumer.ConsumerFetcherManager$Lead
erFinderThread)
java.util.NoSuchElementException: key not found: [sometopic,24]
        at scala.collection.MapLike$class.default(MapLike.scala:223)
        at scala.collection.immutable.Map$Map2.default(Map.scala:110)
        at scala.collection.MapLike$class.apply(MapLike.scala:134)
        at scala.collection.immutable.Map$Map2.apply(Map.scala:110)
        at kafka.consumer.ConsumerFetcherManager$LeaderFinderThread$$anonfun$doWork$4.apply(ConsumerFetcherManager.scala:81)
        at kafka.consumer.ConsumerFetcherManager$LeaderFinderThread$$anonfun$doWork$4.apply(ConsumerFetcherManager.scala:79)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at scala.collection.mutable.HashTable$$anon$1.foreach(HashTable.scala:161)
        at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:194)
        at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
        at scala.collection.mutable.HashMap.foreach(HashMap.scala:80)
        at kafka.consumer.ConsumerFetcherManager$LeaderFinderThread.doWork(ConsumerFetcherManager.scala:79)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)


---

* [KAFKA-879](https://issues.apache.org/jira/browse/KAFKA-879) | *Major* | **In system test, read the new leader from zookeeper instead of broker log on completion of become-leader state transition**

Currently the system test reads the new leader from a broker log statement on completion of become-leader state transition. The log statements can change with time and can also move around.

We can read the leader info from zookeeper given a topic, partition. The path is #2 at https://cwiki.apache.org/confluence/display/KAFKA/Kafka+data+structures+in+Zookeeper. The Zookeeper data structures are unlikely to change in foreseeable future.


---

* [KAFKA-872](https://issues.apache.org/jira/browse/KAFKA-872) | *Major* | **Socket server does not set send/recv buffer sizes**

The socket server should set its send and receive socket buffer sizes - this is important in cross-DC mirroring setups where large buffer sizes are essential to enable the mirror-maker processes to do bulk consumption.


---

* [KAFKA-871](https://issues.apache.org/jira/browse/KAFKA-871) | *Blocker* | **Rename ZkConfig properties**

For clarity. Renaming these properties should help in migration from 0.7 to 0.8.


---

* [KAFKA-866](https://issues.apache.org/jira/browse/KAFKA-866) | *Blocker* | **Recover segment does shallow iteration to fix index causing inconsistencies**

When we recover a segment, we do a shallow iteration to fix the index. This creates entries in the index with the last logical offset in a compressed messageSet. However, during log append we use the starting offset in a compressed message set to populate the index (We changed to starting offset recently). This causes inconsistencies.


---

* [KAFKA-861](https://issues.apache.org/jira/browse/KAFKA-861) | *Major* | **IndexOutOfBoundsException while fetching data from leader**

2013-04-09 16:36:50,051] ERROR [ReplicaFetcherThread-0-261], Error due to  (kafka.server.ReplicaFetcherThread)
kafka.common.KafkaException: error processing data for topic firehoseUpdates partititon 14 offset 53531364
        at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$4.apply(AbstractFetcherThread.scala:136)
        at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$4.apply(AbstractFetcherThread.scala:113)
        at scala.collection.immutable.HashMap$HashMap1.foreach(HashMap.scala:125)
        at scala.collection.immutable.HashMap$HashTrieMap.foreach(HashMap.scala:344)
        at scala.collection.immutable.HashMap$HashTrieMap.foreach(HashMap.scala:344)
        at kafka.server.AbstractFetcherThread.processFetchRequest(AbstractFetcherThread.scala:113)
        at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:89)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)
Caused by: java.lang.IndexOutOfBoundsException
        at java.nio.Buffer.checkIndex(Buffer.java:512)
        at java.nio.HeapByteBuffer.get(HeapByteBuffer.java:121)
        at kafka.message.Message.compressionCodec(Message.scala:202)
        at kafka.message.ByteBufferMessageSet$$anon$1.makeNextOuter(ByteBufferMessageSet.scala:174)
        at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:197)
        at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:145)
        at kafka.utils.IteratorTemplate.maybeComputeNext(IteratorTemplate.scala:61)
        at kafka.utils.IteratorTemplate.hasNext(IteratorTemplate.scala:53)
        at scala.collection.IterableLike$class.isEmpty(IterableLike.scala:92)
        at kafka.message.MessageSet.isEmpty(MessageSet.scala:67)
        at scala.collection.TraversableLike$class.lastOption(TraversableLike.scala:512)
        at kafka.message.MessageSet.lastOption(MessageSet.scala:67)


---

* [KAFKA-856](https://issues.apache.org/jira/browse/KAFKA-856) | *Major* | **Correlation id for OffsetFetch request (#2) always responds with 0**

The in the new Kafka when making an OffsetFetch request the correlation id always response is always sent as 0. It doesn't matter if the client request specifies a correlation id other then 0.

Example wireshark capture:

00000000  00 00 00 31 00 07 00 00  00 00 00 2a 00 03 66 6f ...1.... ...*..fo
00000010  6f 00 0a 74 65 73 74 2d  67 72 6f 75 70 00 00 00 o..test- group...
00000020  01 00 0a 74 65 73 74 5f  74 6f 70 69 63 00 00 00 ...test\_ topic...
00000030  01 00 00 00 00                                   .....
 
Request #1
--------
len:    00 00 00 31
api:    00 07
ver:    00 00
cor:    00 00 00 2a
cid:    2a 00 03 66 6f 6f
....
 
00000000  00 00 00 2d 00 00 00 2a  00 03 66 6f 6f 00 00 00 ...-...* ..foo...
00000010  01 00 0a 74 65 73 74 5f  74 6f 70 69 63 00 00 00 ...test\_ topic...
00000020  01 00 00 00 00 ff ff ff  ff ff ff ff ff 00 00 00 ........ ........
00000030  03
 
Response #1
--------
len:    00 00 00 2d
cor:    00 00 00 2a
cid:    2a 00 03 66 6f 6f
....
 
00000035  00 00 00 35 00 02 00 00  00 00 00 2a 00 03 66 6f ...5.... ...*..fo
00000045  6f ff ff ff ff 00 00 00  01 00 0a 74 65 73 74 5f o....... ...test\_
00000055  74 6f 70 69 63 00 00 00  01 00 00 00 00 ff ff ff topic... ........
00000065  ff ff ff ff fe 00 00 00  01                      ........ .
 
Request #2
---------
len:    00 00 00 35
api:    00 02
ver:    00 00
cor:    00 00 00 2a
cid:    00 03 66 6f 6f
 
00000031  00 00 00 2a 00 00 00 00  00 00 00 01 00 0a 74 65 ...*.... ......te
00000041  73 74 5f 74 6f 70 69 63  00 00 00 01 00 00 00 00 st\_topic ........
00000051  00 00 00 00 00 01 00 00  00 00 00 00 00 00       ........ ......
 
Response #2:
----------
len:    00 00 00 2a
cor:    00 00 00 00
alen:   00 00 00 01
....


---

* [KAFKA-850](https://issues.apache.org/jira/browse/KAFKA-850) | *Blocker* | **add an option to show under replicated partitions in list topic command**

For debugging purpose, it's very important to be able to find out the under replicated partitions quickly. List topic command is a good place to add this feature.


---

* [KAFKA-846](https://issues.apache.org/jira/browse/KAFKA-846) | *Blocker* | **AbstractFetcherThread should do shallow instead of deep iteration**

Deep iteration does decompression, which introduces unnecessary overhead.


---

* [KAFKA-843](https://issues.apache.org/jira/browse/KAFKA-843) | *Major* | **Re-add the release-zip sbt target**

This target has been removed a while ago.


---

* [KAFKA-840](https://issues.apache.org/jira/browse/KAFKA-840) | *Blocker* | **Controller tries to perform preferred replica election on failover before state machines have started up**

If the admin/preferred\_replica\_election path is non-empty when a new controller starts, the controller attempts to perform preferred replica election before the partition and replica state machine have been initialized. In this case, the controller will try to make invalid state transitions.


---

* [KAFKA-832](https://issues.apache.org/jira/browse/KAFKA-832) | *Blocker* | **0.8 Consumer prevents rebalance if consumer thread is blocked or slow**

0.8 consumer involves multiple locks across the fetcher manager, leader finder thread and the rebalance watcher executor that prevent rebalance from interrupting the consumer. Rebalance should always take precedence over consumption, not the other way around. The effect of this bug is that if a consumer is lagging and the fetcher thread is blocked on adding the next fetched data chunk to the internal blocking queue, rebalance is halted.


---

* [KAFKA-830](https://issues.apache.org/jira/browse/KAFKA-830) | *Blocker* | **partition replica assignment map in the controller should be a Set**

partitionReplicaAssignment currently stores the list of assigned replicas as a sequence. When a broker comes online, the replica state machine adds the broker to the list of assigned replicas. It should do that only if the replica is already not in the list of assigned replicas. This causes the replication factor to be incorrectly calculated


---

* [KAFKA-827](https://issues.apache.org/jira/browse/KAFKA-827) | *Blocker* | **improve list topic output format**

We need to make the output of list topic command more readable.


---

* [KAFKA-826](https://issues.apache.org/jira/browse/KAFKA-826) | *Blocker* | **Make Kafka 0.8 depend on metrics 2.2.0 instead of 3.x**

In order to mavenize Kafka 0.8, we have to depend on metrics 2.2.0 since metrics 3.x is a huge change as well as not an officially supported release.


---

* [KAFKA-825](https://issues.apache.org/jira/browse/KAFKA-825) | *Blocker* | **KafkaController.isActive() needs to be synchronized**

KafkaController.isActive() is not synchronized right now. This means that it could read an outdated controllerContext.controllerChannelManager.


---

* [KAFKA-819](https://issues.apache.org/jira/browse/KAFKA-819) | *Major* | **System Test : Add validation of log segment index to offset**

This can be achieved by calling DumpLogSegments.


---

* [KAFKA-814](https://issues.apache.org/jira/browse/KAFKA-814) | *Blocker* | **Controller should not throw exception when a preferred replica is already the leader for a partition**

When a preferred replica is already a leader for a partition, the controller throws and logs the exception. This causes lots of noise in the log and the error is really not actionable. The controller should just continue with the next partition.


---

* [KAFKA-813](https://issues.apache.org/jira/browse/KAFKA-813) | *Blocker* | **Minor cleanup in Controller**

Before starting work on delete topic support, uploading a patch first to address some minor hiccups that touch a bunch of files:

1. Change PartitionOfflineException to PartitionUnavailableException because in the partition state machine we mark a partition offline when its leader is down, whereas the PartitionOfflineException is thrown when all the assigned replicas of the partition are down.
2. Change PartitionOfflineRate to UnavailablePartitionRate
3. Remove default leader selector from partition state machine's handleStateChange. We can specify null as default when we don't need to use a leader selector.
4. Include controller info in the client id of LeaderAndIsrRequest.
5. Rename controllerContext.allleaders to something more meaningful - partitionLeadershipInfo.
6. We don't need to put partition in OnlinePartition state in partition state machine initializeLeaderAndIsrForPartition, the state change occurs in handleStateChange.
7. Add todo in handleStateChanges
8. Left a comment above ReassignedPartitionLeaderSelector that reassigned replicas are already in the ISR (this is not true for other leader selectors), renamed the vals in the selector.


---

* [KAFKA-812](https://issues.apache.org/jira/browse/KAFKA-812) | *Blocker* | **Support deep iteration in DumpLogSegments tool**

Currently, DumpLogSegments only supports shallow iteration. This makes it hard to verify index consistency in system tests.


---

* [KAFKA-811](https://issues.apache.org/jira/browse/KAFKA-811) | *Blocker* | **Fix clientId in migration tool**

Append producer threadId to the clientId passed by the user.


---

* [KAFKA-807](https://issues.apache.org/jira/browse/KAFKA-807) | *Trivial* | **LineMessageReader doesn't correctly parse the key separator**

Typo in key name prevents extracting the key separator. The patch follows; what's the recommended way to submit patches?

Index: core/src/main/scala/kafka/producer/ConsoleProducer.scala
IDEA additional info:
Subsystem: com.intellij.openapi.diff.impl.patch.CharsetEP
<+>UTF-8
Subsystem: com.intellij.openapi.diff.impl.patch.BaseRevisionTextPatchEP
<+>/**\n * Licensed to the Apache Software Foundation (ASF) under one or more\n * contributor license agreements.  See the NOTICE file distributed with\n * this work for additional information regarding copyright ownership.\n * The ASF licenses this file to You under the Apache License, Version 2.0\n * (the \"License\"); you may not use this file except in compliance with\n * the License.  You may obtain a copy of the License at\n * \n *    http://www.apache.org/licenses/LICENSE-2.0\n *\n * Unless required by applicable law or agreed to in writing, software\n * distributed under the License is distributed on an \"AS IS\" BASIS,\n * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n * See the License for the specific language governing permissions and\n * limitations under the License.\n */\n\npackage kafka.producer\n\nimport scala.collection.JavaConversions.\_\nimport joptsimple.\_\nimport java.util.Properties\nimport java.io.\_\nimport kafka.common.\_\nimport kafka.message.\_\nimport kafka.serializer.\_\n\nobject ConsoleProducer { \n\n  def main(args: Array[String]) { \n    val parser = new OptionParser\n    val topicOpt = parser.accepts(\"topic\", \"REQUIRED: The topic id to produce messages to.\")\n                           .withRequiredArg\n                           .describedAs(\"topic\")\n                           .ofType(classOf[String])\n    val brokerListOpt = parser.accepts(\"broker-list\", \"REQUIRED: The broker list string in the form HOST1:PORT1,HOST2:PORT2.\")\n                           .withRequiredArg\n                           .describedAs(\"broker-list\")\n                           .ofType(classOf[String])\n    val syncOpt = parser.accepts(\"sync\", \"If set message send requests to the brokers are synchronously, one at a time as they arrive.\")\n    val compressOpt = parser.accepts(\"compress\", \"If set, messages batches are sent compressed\")\n    val batchSizeOpt = parser.accepts(\"batch-size\", \"Number of messages to send in a single batch if they are not being sent synchronously.\")\n                             .withRequiredArg\n                             .describedAs(\"size\")\n                             .ofType(classOf[java.lang.Integer])\n                             .defaultsTo(200)\n    val sendTimeoutOpt = parser.accepts(\"timeout\", \"If set and the producer is running in asynchronous mode, this gives the maximum amount of time\" + \n                                                   \" a message will queue awaiting suffient batch size. The value is given in ms.\")\n                               .withRequiredArg\n                               .describedAs(\"timeout\_ms\")\n                               .ofType(classOf[java.lang.Long])\n                               .defaultsTo(1000)\n    val queueSizeOpt = parser.accepts(\"queue-size\", \"If set and the producer is running in asynchronous mode, this gives the maximum amount of \" + \n                                                   \" messages will queue awaiting suffient batch size.\")\n                               .withRequiredArg\n                               .describedAs(\"queue\_size\")\n                               .ofType(classOf[java.lang.Long])\n                               .defaultsTo(10000)\n    val queueEnqueueTimeoutMsOpt = parser.accepts(\"queue-enqueuetimeout-ms\", \"Timeout for event enqueue\")\n                               .withRequiredArg\n                               .describedAs(\"queue enqueuetimeout ms\")\n                               .ofType(classOf[java.lang.Long])\n                               .defaultsTo(0)\n    val requestRequiredAcksOpt = parser.accepts(\"request-required-acks\", \"The required acks of the producer requests\")\n                               .withRequiredArg\n                               .describedAs(\"request required acks\")\n                               .ofType(classOf[java.lang.Integer])\n                               .defaultsTo(0)\n    val requestTimeoutMsOpt = parser.accepts(\"request-timeout-ms\", \"The ack timeout of the producer requests. Value must be non-negative and non-zero\")\n                               .withRequiredArg\n                               .describedAs(\"request timeout ms\")\n                               .ofType(classOf[java.lang.Integer])\n                               .defaultsTo(1500)\n    val valueEncoderOpt = parser.accepts(\"value-serializer\", \"The class name of the message encoder implementation to use for serializing values.\")\n                                 .withRequiredArg\n                                 .describedAs(\"encoder\_class\")\n                                 .ofType(classOf[java.lang.String])\n                                 .defaultsTo(classOf[StringEncoder].getName)\n    val keyEncoderOpt = parser.accepts(\"key-serializer\", \"The class name of the message encoder implementation to use for serializing keys.\")\n                                 .withRequiredArg\n                                 .describedAs(\"encoder\_class\")\n                                 .ofType(classOf[java.lang.String])\n                                 .defaultsTo(classOf[StringEncoder].getName)\n    val messageReaderOpt = parser.accepts(\"line-reader\", \"The class name of the class to use for reading lines from standard in. \" + \n                                                          \"By default each line is read as a separate message.\")\n                                  .withRequiredArg\n                                  .describedAs(\"reader\_class\")\n                                  .ofType(classOf[java.lang.String])\n                                  .defaultsTo(classOf[LineMessageReader].getName)\n    val socketBufferSizeOpt = parser.accepts(\"socket-buffer-size\", \"The size of the tcp RECV size.\")\n                                  .withRequiredArg\n                                  .describedAs(\"size\")\n                                  .ofType(classOf[java.lang.Integer])\n                                  .defaultsTo(1024*100)\n    val propertyOpt = parser.accepts(\"property\", \"A mechanism to pass user-defined properties in the form key=value to the message reader. \" +\n                                                 \"This allows custom configuration for a user-defined message reader.\")\n                            .withRequiredArg\n                            .describedAs(\"prop\")\n                            .ofType(classOf[String])\n\n\n    val options = parser.parse(args : \_*)\n    for(arg <- List(topicOpt, brokerListOpt)) {\n      if(!options.has(arg)) {\n        System.err.println(\"Missing required argument \\\"\" + arg + \"\\\"\")\n        parser.printHelpOn(System.err)\n        System.exit(1)\n      }\n    }\n\n    val topic = options.valueOf(topicOpt)\n    val brokerList = options.valueOf(brokerListOpt)\n    val sync = options.has(syncOpt)\n    val compress = options.has(compressOpt)\n    val batchSize = options.valueOf(batchSizeOpt)\n    val sendTimeout = options.valueOf(sendTimeoutOpt)\n    val queueSize = options.valueOf(queueSizeOpt)\n    val queueEnqueueTimeoutMs = options.valueOf(queueEnqueueTimeoutMsOpt)\n    val requestRequiredAcks = options.valueOf(requestRequiredAcksOpt)\n    val requestTimeoutMs = options.valueOf(requestTimeoutMsOpt)\n    val keyEncoderClass = options.valueOf(keyEncoderOpt)\n    val valueEncoderClass = options.valueOf(valueEncoderOpt)\n    val readerClass = options.valueOf(messageReaderOpt)\n    val socketBuffer = options.valueOf(socketBufferSizeOpt)\n    val cmdLineProps = parseLineReaderArgs(options.valuesOf(propertyOpt))\n    cmdLineProps.put(\"topic\", topic)\n\n    val props = new Properties()\n    props.put(\"broker.list\", brokerList)\n    val codec = if(compress) DefaultCompressionCodec.codec else NoCompressionCodec.codec\n    props.put(\"compression.codec\", codec.toString)\n    props.put(\"producer.type\", if(sync) \"sync\" else \"async\")\n    if(options.has(batchSizeOpt))\n      props.put(\"batch.num.messages\", batchSize.toString)\n    props.put(\"queue.buffering.max.ms\", sendTimeout.toString)\n    props.put(\"queue.buffering.max.messages\", queueSize.toString)\n    props.put(\"queue.enqueue.timeout.ms\", queueEnqueueTimeoutMs.toString)\n    props.put(\"request.required.acks\", requestRequiredAcks.toString)\n    props.put(\"request.timeout.ms\", requestTimeoutMs.toString)\n    props.put(\"key.serializer.class\", keyEncoderClass)\n    props.put(\"serializer.class\", valueEncoderClass)\n    props.put(\"send.buffer.bytes\", socketBuffer.toString)\n    val reader = Class.forName(readerClass).newInstance().asInstanceOf[MessageReader[AnyRef, AnyRef]]\n    reader.init(System.in, cmdLineProps)\n\n    try {\n        val producer = new Producer[AnyRef, AnyRef](new ProducerConfig(props))\n\n        Runtime.getRuntime.addShutdownHook(new Thread() {\n          override def run() {\n            producer.close()\n          }\n        })\n\n        var message: KeyedMessage[AnyRef, AnyRef] = null\n        do {\n          message = reader.readMessage()\n          if(message != null)\n            producer.send(message)\n        } while(message != null)\n    } catch {\n      case e: Exception =>\n        e.printStackTrace\n        System.exit(1)\n    }\n    System.exit(0)\n  }\n\n  def parseLineReaderArgs(args: Iterable[String]): Properties = {\n    val splits = args.map(\_ split \"=\").filterNot(\_ == null).filterNot(\_.length == 0)\n    if(!splits.forall(\_.length == 2)) {\n      System.err.println(\"Invalid line reader properties: \" + args.mkString(\" \"))\n      System.exit(1)\n    }\n    val props = new Properties\n    for(a <- splits)\n      props.put(a(0), a(1))\n    props\n  }\n\n  trait MessageReader[K,V] { \n    def init(inputStream: InputStream, props: Properties) {}\n    def readMessage(): KeyedMessage[K,V]\n    def close() {}\n  }\n\n  class LineMessageReader extends MessageReader[String, String] {\n    var topic: String = null\n    var reader: BufferedReader = null\n    var parseKey = false\n    var keySeparator = \"\\t\"\n    var ignoreError = false\n    var lineNumber = 0\n\n    override def init(inputStream: InputStream, props: Properties) {\n      topic = props.getProperty(\"topic\")\n      if(props.containsKey(\"parse.key\"))\n        parseKey = props.getProperty(\"parse.key\").trim.toLowerCase.equals(\"true\")\n      if(props.containsKey(\"key.seperator\"))\n        keySeparator = props.getProperty(\"key.separator\")\n      if(props.containsKey(\"ignore.error\"))\n        ignoreError = props.getProperty(\"ignore.error\").trim.toLowerCase.equals(\"true\")\n      reader = new BufferedReader(new InputStreamReader(inputStream))\n    }\n\n    override def readMessage() = {\n      lineNumber += 1\n      (reader.readLine(), parseKey) match {\n        case (null, \_) => null\n        case (line, true) =>\n          line.indexOf(keySeparator) match {\n            case -1 =>\n              if(ignoreError)\n                new KeyedMessage(topic, line)\n              else\n                throw new KafkaException(\"No key found on line \" + lineNumber + \": \" + line)\n            case n =>\n              new KeyedMessage(topic,\n                             line.substring(0, n), \n                             if(n + keySeparator.size > line.size) \"\" else line.substring(n + keySeparator.size))\n          }\n        case (line, false) =>\n          new KeyedMessage(topic, line)\n      }\n    }\n  }\n}\n
===================================================================
--- core/src/main/scala/kafka/producer/ConsoleProducer.scala	(revision 290d5e0eac38e9917c64353a131154821b899f26)
+++ core/src/main/scala/kafka/producer/ConsoleProducer.scala	(revision )
@@ -196,7 +196,7 @@
       topic = props.getProperty("topic")
       if(props.containsKey("parse.key"))
         parseKey = props.getProperty("parse.key").trim.toLowerCase.equals("true")
-      if(props.containsKey("key.seperator"))
+      if(props.containsKey("key.separator"))
         keySeparator = props.getProperty("key.separator")
       if(props.containsKey("ignore.error"))
         ignoreError = props.getProperty("ignore.error").trim.toLowerCase.equals("true")


---

* [KAFKA-804](https://issues.apache.org/jira/browse/KAFKA-804) | *Blocker* | **Incorrect index in the log of a follower**

In the follower, in log.append(), we use the offset of the 1st compressed message as the offset for appending index entries. This means that the index is pointing to an earlier position in the file than it should.  Instead, it should use the offset of the 1st uncompressed message for appending index.


---

* [KAFKA-801](https://issues.apache.org/jira/browse/KAFKA-801) | *Blocker* | **Fix MessagesInPerSec mbean to count uncompressed message rate**

Today, BrokerTopicMetrics.MessagesInPerSec does shallow iteration and hence counts the number of compressed messages in every request. This does not make sense, we should count the number of uncompressed messages stored on the leader. Also, this metric makes sense only on the leader.


---

* [KAFKA-800](https://issues.apache.org/jira/browse/KAFKA-800) | *Blocker* | **inSyncReplica in Partition needs some tweaks**

1. isUnderReplicated method in Partition.scala needs to take the leaderIsrUpdateLock before reading the inSyncReplica structure. We suspect that this could cause the gauge to read stale values from the cache.

2. toString api should take the leaderIsrUpdateLock to prevent anything from blowing up when it iterates the data structures


---

* [KAFKA-798](https://issues.apache.org/jira/browse/KAFKA-798) | *Blocker* | **Use biased histograms instead of uniform histograms in KafkaMetricsGroup**

A biased histogram produces quantiles which are representative of (roughly) the last five minutes of data. On the other hand, a uniform histogram produces quantiles which are valid for the entirely of the histogram’s lifetime. More discussion at http://metrics.codahale.com/manual/core/#man-core-histograms-uniform


---

* [KAFKA-793](https://issues.apache.org/jira/browse/KAFKA-793) | *Blocker* | **Include controllerId in all requests sent by controller**

As part of KAFKA-513, we added controllerId in LeaderAndIsrRequest. We should add that to all requests sent by the controller, such as StopReplicaRequest.

Other small issues that can be taken care of by this jira:
1. The string "state.change.logger" is used in many places. We should create a constant val and reuse the val to avoid human mistakes.
2. Remove the private constructor from ControllerChannelManager.
3. Remove default from jsonFileOpt in PreferredReplicaLeaderElectionCommand, because the default is only used to indicate an absense of a legitimate jsonFile. We can check the same using if(options.has(jsonFileOpt))


---

* [KAFKA-792](https://issues.apache.org/jira/browse/KAFKA-792) | *Major* | **Update multiple attributes in testcase\_xxxx\_properties.json**

The following are some of the properties need to be updated in some testcase\_xxxx\_properties.json. These changes have been patched in local Hudson for a while. Create this new JIRA to check in these changes.

log.segment.bytes
default.replication.factor
num.partitions


---

* [KAFKA-791](https://issues.apache.org/jira/browse/KAFKA-791) | *Major* | **Fix validation bugs in System Test**

The following issues are found in data / log checksum match in System Test:

1. kafka\_system\_test\_utils.validate\_simple\_consumer\_data\_matched
It reports PASSED even some log segments don't match

2. kafka\_system\_test\_utils.validate\_data\_matched (this is fixed and patched in local Hudson for some time)
It reports PASSED in the Ack=1 cases even data loss is greater than the tolerance (1%).

3. kafka\_system\_test\_utils.validate\_simple\_consumer\_data\_matched
It gets a unique set of MessageID to validate. It should leave all MessageID as is (no dedup needed) and the test case should fail if sorted MessageID don't match across the replicas.

4. There is a data loss tolerance of 1% in the test cases of Ack=1. Currently 1% is too strict and seeing some random failures due to 2 ~ 3% of data loss. It will be increased to 5% such that the System Test will get a more consistent passing rate in those test cases. The following will be updated to 5% tolerance in kafka\_system\_test\_utils:
validate\_data\_matched
validate\_simple\_consumer\_data\_matched
validate\_data\_matched\_in\_multi\_topics\_from\_single\_consumer\_producer


---

* [KAFKA-786](https://issues.apache.org/jira/browse/KAFKA-786) | *Blocker* | **Use "withRequiredArg" while parsing jopt options in all tools**

While parsing jopt Options in our tools, we sometimes use withRequiredArg() and sometimes use withOptionalArg(). I think this confusing and we should always use withRequiredArg().

withOptionalArg() allows you to provide an option without an argument. For instance, the following commands will yield the same result if xyz was a parser option that accepted an optional argument and was provided a default in the tool's code:
kafka-tool.sh --xyz 
kafka-tool.sh 

I don't quite see the need to allow the 1st command, think that writing code will be less confusing if we allowed only the second command. To do that, we can make all options require arguments. These arguments will need to be given via command line or via a default in the code. So if xyz was an option that required an argument then you will see the following:

kafka-tool.sh --xyz 
Option ['xyz'] requires an argument //printed by jOpt

kafka-tool.sh --xyz argumentVal
// Kafka tool proceeds

If you want to use a default value specified for xyz in the code, then simply run ./kafka-tool.sh.


---

* [KAFKA-785](https://issues.apache.org/jira/browse/KAFKA-785) | *Blocker* | **Resolve bugs in PreferredReplicaLeaderElection admin tool**

1. Since we run the preferred replica election on all partitions if the jsonFile is empty, the jsonFileOpt should not be checked in the code as a required option. 
2. We should not pass "" to Utils.readFileAsString
3. KAFKA-780


---

* [KAFKA-780](https://issues.apache.org/jira/browse/KAFKA-780) | *Blocker* | **Reassign partitions tool produces NPE in shutdown handler**

sghike@sghike-mn:~/kafka-local/kafka/bin$ ./kafka-reassign-partitions.sh --zookeeper localhost:2181 --path-to-json-file test1.json
[2013-03-03 03:43:54,513] INFO Starting ZkClient event thread. (org.I0Itec.zkclient.ZkEventThread)
[2013-03-03 03:43:54,534] INFO Client environment:zookeeper.version=3.3.3-1203054, built on 11/17/2011 05:47 GMT (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:host.name=192.168.1.107 (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:java.version=1.6.0\_41 (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:java.vendor=Apple Inc. (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:java.home=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:java.class.path=:/Users/sghike/.ivy2/cache/org.xerial.snappy/snappy-java/bundles/snappy-java-1.0.4.1.jar:/Users/sghike/.ivy2/cache/org.scala-lang/scala-library/jars/scala-library-2.8.0.jar:~/Users/sghike/.ivy2/cache/org.scala-lang/scala-compiler/jars/scala-compiler-2.8.0.jar:/Users/sghike/.ivy2/cache/log4j/log4j/jars/log4j-1.2.15.jar:/Users/sghike/.ivy2/cache/org.slf4j/slf4j-api/jars/slf4j-api-1.6.4.jar:/Users/sghike/.ivy2/cache/org.apache.zookeeper/zookeeper/jars/zookeeper-3.3.4.jar:/Users/sghike/.ivy2/cache/net.sf.jopt-simple/jopt-simple/jars/jopt-simple-3.2.jar:./../core/target/scala-2.8.0/kafka\_2.8.0-0.8-SNAPSHOT.jar:./../core/lib/metrics-annotation-3.0.0-c0c8be71.jar:./../core/lib/metrics-core-3.0.0-c0c8be71.jar:./../core/lib/zkclient-20120522.jar:./../perf/target/scala-2.8.0/kafka-perf\_2.8.0-0.8-SNAPSHOT.jar (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:java.library.path=.:/Library/Java/Extensions:/System/Library/Java/Extensions:/usr/lib/java (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:java.io.tmpdir=/var/folders/py/4syf5w4d1lg9h4byyrr4pm1m0000gp/T/ (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:java.compiler=<NA> (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:os.name=Mac OS X (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:os.arch=x86\_64 (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:os.version=10.7.5 (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:user.name=sghike (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,535] INFO Client environment:user.home=/Users/sghike (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,536] INFO Client environment:user.dir=/Users/sghike/kafka-local/kafka/bin (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,536] INFO Initiating client connection, connectString=localhost:2181 sessionTimeout=30000 watcher=org.I0Itec.zkclient.ZkClient@67dacccc (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,550] INFO Opening socket connection to server localhost/0:0:0:0:0:0:0:1:2181 (org.apache.zookeeper.ClientCnxn)
[2013-03-03 03:43:54,558] INFO Socket connection established to localhost/0:0:0:0:0:0:0:1:2181, initiating session (org.apache.zookeeper.ClientCnxn)
[2013-03-03 03:43:54,766] INFO Session establishment complete on server localhost/0:0:0:0:0:0:0:1:2181, sessionid = 0x13d3009f7400003, negotiated timeout = 30000 (org.apache.zookeeper.ClientCnxn)
[2013-03-03 03:43:54,768] INFO zookeeper state changed (SyncConnected) (org.I0Itec.zkclient.ZkClient)
Successfully started reassignment of partitions Map([foo,0] -> WrappedArray(0))
[2013-03-03 03:43:54,847] INFO Terminate ZkClient event thread. (org.I0Itec.zkclient.ZkEventThread)
[2013-03-03 03:43:54,848] INFO Session: 0x13d3009f7400003 closed (org.apache.zookeeper.ZooKeeper)
[2013-03-03 03:43:54,848] INFO EventThread shut down (org.apache.zookeeper.ClientCnxn)
Exception in thread "Thread-3" java.lang.NullPointerException
	at org.I0Itec.zkclient.ZkClient$2.call(ZkClient.java:416)
	at org.I0Itec.zkclient.ZkClient$2.call(ZkClient.java:413)
	at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:675)
	at org.I0Itec.zkclient.ZkClient.getChildren(ZkClient.java:413)
	at org.I0Itec.zkclient.ZkClient.deleteRecursive(ZkClient.java:505)
	at kafka.utils.ZkUtils$.deletePathRecursive(ZkUtils.scala:389)
	at kafka.admin.ReassignPartitionsCommand$$anon$1.run(ReassignPartitionsCommand.scala:78)

The contents of test1.json -
Before getting parsed -  [{"topic": "foo", "partition": "0", "replicas": "0" }]
After getting parsed - List(Map(topic -> foo, partition -> 0, replicas -> 0)). The only topic partition in my system is [foo,0].

Zookeeper did not have /admin path when the reassign partitions tool was run.

This exception is thrown from ZkUtils.deletePathRecursive() which is in the shutdown handler of ReassignPartitionsCommand. But I never pressed Ctrl+C, so this code should not have executed.


---

* [KAFKA-779](https://issues.apache.org/jira/browse/KAFKA-779) | *Blocker* | **Standardize Zk data structures for Re-assign partitions and Preferred replication election**

Follow the schema at https://cwiki.apache.org/confluence/display/KAFKA/Kafka+data+structures+in+Zookeeper


---

* [KAFKA-776](https://issues.apache.org/jira/browse/KAFKA-776) | *Blocker* | **Changing ZK format breaks some tools**

There are some tools that parse the zk output and they might break.1 has been verified to break.

Few that read the zk output are 
1. Shutdown Broker
2. PreferredReplicaLeader
3. ConsumerOffsetChecker

There could be few others but I have not checked everything


---

* [KAFKA-772](https://issues.apache.org/jira/browse/KAFKA-772) | *Major* | **System Test Transient Failure on testcase\_0122**

* This test case is failing randomly in the past few weeks. Please note there is a small % data loss allowance for the test case with Ack = 1. But the failure in this case is the mismatch of log segment checksum across the replicas.

* Test description:
3 brokers cluster
Replication factor = 3
No. topic = 2
No. partitions = 3
Controlled failure (kill -15)
Ack = 1

* Test case output
\_test\_case\_name  :  testcase\_0122
\_test\_class\_name  :  ReplicaBasicTest
arg : auto\_create\_topic  :  true
arg : bounce\_broker  :  true
arg : broker\_type  :  leader
arg : message\_producing\_free\_time\_sec  :  15
arg : num\_iteration  :  3
arg : num\_partition  :  3
arg : replica\_factor  :  3
arg : sleep\_seconds\_between\_producer\_calls  :  1
validation\_status  : 
     Leader Election Latency - iter 1 brokerid 3  :  377.00 ms
     Leader Election Latency - iter 2 brokerid 1  :  374.00 ms
     Leader Election Latency - iter 3 brokerid 2  :  384.00 ms
     Leader Election Latency MAX  :  384.00
     Leader Election Latency MIN  :  374.00
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-0\_r1.log  :  1750
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-0\_r2.log  :  1750
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-0\_r3.log  :  1750
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-1\_r1.log  :  1750
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-1\_r2.log  :  1750
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-1\_r3.log  :  1750
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-2\_r1.log  :  1500
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-2\_r2.log  :  1500
     Unique messages from consumer on [test\_1] at simple\_consumer\_test\_1-2\_r3.log  :  1500
     Unique messages from consumer on [test\_2]  :  5000
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-0\_r1.log  :  1714
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-0\_r2.log  :  1714
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-0\_r3.log  :  1680
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-1\_r1.log  :  1708
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-1\_r2.log  :  1708
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-1\_r3.log  :  1708
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-2\_r1.log  :  1469
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-2\_r2.log  :  1469
     Unique messages from consumer on [test\_2] at simple\_consumer\_test\_2-2\_r3.log  :  1469
     Unique messages from producer on [test\_2]  :  4900
     Validate for data matched on topic [test\_1] across replicas  :  PASSED
     Validate for data matched on topic [test\_2]  :  FAILED
     Validate for data matched on topic [test\_2] across replicas  :  FAILED
     Validate for merged log segment checksum in cluster [source]  :  FAILED
     Validate leader election successful  :  PASSED


---

* [KAFKA-770](https://issues.apache.org/jira/browse/KAFKA-770) | *Major* | **KafkaConfig properties should be verified in the constructor**

To maintain consistency with ProducerConfig and ConsumerConfig, KafkaConfig properties should be verified in the constructor.


---

* [KAFKA-769](https://issues.apache.org/jira/browse/KAFKA-769) | *Blocker* | **On startup, a brokers highwatermark for every topic partition gets reset to zero**

There is a race condition between the highwatermark thread and the handleLeaderAndIsrRequest call of the request handler thread. When a broker starts, the highwatermark thread tries to persist all the checkpoints of the partitions in ReplicaManager. This partition map in ReplicaManager is initially empty. When the leaderAndIsrRequest runs, it updates each partition and if the highwatermark thread runs during this interval, it is essentially going to overwrite the highwatermark file to an inconsistent state. The read of the highwatermark reads from the file each time and hence would return the inconsistent state.


---

* [KAFKA-768](https://issues.apache.org/jira/browse/KAFKA-768) | *Blocker* | **broker should exit if hitting exceptions durin startup**

A broker hit the following exception, but didn't exit.

2013/02/20 01:54:21.341 FATAL [KafkaServerStartable] [main] [kafka] []  Fatal error during KafkaServerStable startup. Prepare to shutdown
kafka.common.KafkaException: Failed to create data directory /export/content/kafka/i001\_caches
        at kafka.log.LogManager$$anonfun$createAndValidateLogDirs$2.apply(LogManager.scala:77)
        at kafka.log.LogManager$$anonfun$createAndValidateLogDirs$2.apply(LogManager.scala:72)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:34)
        at scala.collection.mutable.WrappedArray.foreach(WrappedArray.scala:32)
        at kafka.log.LogManager.createAndValidateLogDirs(LogManager.scala:72)
        at kafka.log.LogManager.<init>(LogManager.scala:60)
        at kafka.server.KafkaServer.startup(KafkaServer.scala:59)
        at kafka.server.KafkaServerStartable.startup(KafkaServerStartable.scala:34)


---

* [KAFKA-767](https://issues.apache.org/jira/browse/KAFKA-767) | *Blocker* | **Message Size check should be done after assigning the offsets**

Replica fetcher thread fails with messageSizeTooLarge exception. One theory is that this check is happening before decompress - assign offsets - compress phase. Hence the final compressed size can be different from that obtained from the produce request. This causes replica fetcher thread to be permanently down and prevents the broker from being in sync.

2013/02/20 02:19:25.447 ERROR [ReplicaFetcherThread] [ReplicaFetcherThread-0-274] [kafka] []  [ReplicaFetcherThread-0-274], Error due to
kafka.common.MessageSizeTooLargeException: Message size is 1000028 bytes which exceeds the maximum configured message size of 1000000.
        at kafka.log.Log$$anonfun$analyzeAndValidateMessageSet$1.apply(Log.scala:353)
        at kafka.log.Log$$anonfun$analyzeAndValidateMessageSet$1.apply(Log.scala:339)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at kafka.utils.IteratorTemplate.foreach(IteratorTemplate.scala:32)
        at kafka.log.Log.analyzeAndValidateMessageSet(Log.scala:339)
        at kafka.log.Log.append(Log.scala:262)
        at kafka.server.ReplicaFetcherThread.processPartitionData(ReplicaFetcherThread.scala:52)
        at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$4.apply(AbstractFetcherThread.scala:130)
        at kafka.server.AbstractFetcherThread$$anonfun$processFetchRequest$4.apply(AbstractFetcherThread.scala:113)
        at scala.collection.immutable.HashMap$HashMap1.foreach(HashMap.scala:125)
        at scala.collection.immutable.HashMap$HashTrieMap.foreach(HashMap.scala:344)
        at scala.collection.immutable.HashMap$HashTrieMap.foreach(HashMap.scala:344)
        at kafka.server.AbstractFetcherThread.processFetchRequest(AbstractFetcherThread.scala:113)
        at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:89)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:51)


---

* [KAFKA-763](https://issues.apache.org/jira/browse/KAFKA-763) | *Blocker* | **Add an option to replica from the largest offset during unclean leader election**

If there is an unclean leader election, a follower may have an offset out of the range of the leader. Currently, the follower will delete all its data and refetch from the smallest offset of the leader. It would be useful to add an option to let the follower refetch from the largest offset of the leader since refetching from the smallest offset may take some time.


---

* [KAFKA-762](https://issues.apache.org/jira/browse/KAFKA-762) | *Blocker* | **Improve second replica assignment**

Currently, for partitions from different topics, if the first replica is assigned to the same broker, their second replica is also assigned to the same broker. This means that when a broker fails, many leaders on the failed broker will be moved to the same broker, and thus introduces more load on that broker.


---

* [KAFKA-758](https://issues.apache.org/jira/browse/KAFKA-758) | *Blocker* | **startHighWaterMarksCheckPointThread is never called**

startHighWaterMarksCheckPointThread is never called during startup and hence we only persist the highwater mark file on a clean shutdown. With an unclean shutdown, the highwater marks are not persisted. This causes long recovery time for replicas after unclean shutdowns.


---

* [KAFKA-756](https://issues.apache.org/jira/browse/KAFKA-756) | *Blocker* | **Processor thread blocks due to infinite loop during fetch response send**

This looks to be because of an infinite loop during fetch response send. This happens because we try to send bytes from a log which has been truncated during send. The total size to send is calculated at the beginning of the iteration and it does not take into account the change in log size during send. When send happens, it uses the size calculated at the start and loops continuously hoping to send more data.


---

* [KAFKA-755](https://issues.apache.org/jira/browse/KAFKA-755) | *Blocker* | **standardizing json values stored in ZK**

Currently, we have the following paths in ZK that stores non-singleton values.

1. Topic assignment value:
/brokers/topics/topic
{ "0": ["0"] }

2. LeaderAndISR info:
/brokers/topics/test/partitions/0/leaderAndISR
{ "ISR":"0,1","leader":"0","controllerEpoch":"1","leaderEpoch":"0" }

3. broker registration:
/brokers/ids/0
192.168.1.148:9092:9999

4. partition reassignment path

It would be good if we do the following:
a. make them true json (e.g., using number as the value for broker/partition, instead of string).
b. add version support for future growth.


---

* [KAFKA-751](https://issues.apache.org/jira/browse/KAFKA-751) | *Minor* | **Fix windows build script - kafka-run-class.bat**

I've updated the kafka-run-class.bat to keep it in line (and working) with the kafka-run-class.sh.

I'll attach a diff file to the issue.


---

* [KAFKA-748](https://issues.apache.org/jira/browse/KAFKA-748) | *Blocker* | **Append to index fails due to invalid offset**

We seem to be appending to the index and it checks to make sure we do not insert an entry with an offset that is larger than the actual offset of the message. We seem to be trying to insert an offset = 1 in the index while lastOffset is 24463. This seems to get fixed on restarting the broker.

java.lang.IllegalArgumentException: Attempt to append an offset (1) to position 21703 no larger than the last offset appended (24463).
at kafka.log.OffsetIndex.append(OffsetIndex.scala:183)
at kafka.log.LogSegment.append(LogSegment.scala:60)
at kafka.log.Log.append(Log.scala:286)
at kafka.server.KafkaApis$$anonfun$appendToLocalLog$2.apply(KafkaApis.scala:188)
at kafka.server.KafkaApis$$anonfun$appendToLocalLog$2.apply(KafkaApis.scala:181)
at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)
at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)


---

* [KAFKA-743](https://issues.apache.org/jira/browse/KAFKA-743) | *Blocker* | **PreferredReplicaLeaderElectionCommand has command line error**

bin/kafka-preferred-replica-election.sh 
Exception in thread "main" joptsimple.IllegalOptionSpecificationException: ' ' is not a legal option character
	at joptsimple.ParserRules.ensureLegalOptionCharacter(ParserRules.java:81)
	at joptsimple.ParserRules.ensureLegalOption(ParserRules.java:71)
	at joptsimple.ParserRules.ensureLegalOptions(ParserRules.java:76)
	at joptsimple.OptionParser.acceptsAll(OptionParser.java:309)
	at joptsimple.OptionParser.accepts(OptionParser.java:271)
	at kafka.admin.PreferredReplicaLeaderElectionCommand$.main(PreferredReplicaLeaderElectionCommand.scala:29)
	at kafka.admin.PreferredReplicaLeaderElectionCommand.main(PreferredReplicaLeaderElectionCommand.scala)


---

* [KAFKA-738](https://issues.apache.org/jira/browse/KAFKA-738) | *Blocker* | **correlationId is not set in FetchRequest in AbstractFetcherThread**

correlationId is always 0 in FetchRequest in AbstractFetcherThread.


---

* [KAFKA-732](https://issues.apache.org/jira/browse/KAFKA-732) | *Blocker* | **MirrorMaker with shallow.iterator.enable=true produces unreadble messages**

Trying to use MirrorMaker between two 0.8 clusters

When using shallow.iterator.enable=true on the consumer side, the performance gain is big (when incoming messages are compressed) and the producer does not complain but write the messages uncompressed without the compression flag.

If you try:
- enable compression on the producer, it obviously makes things worse since the data get double-compressed (the wiki warns about this)
- disable compression and the compressed messages are written in bulk in an uncompressed message, thus making it unreadable.

If I follow correctly the current state of code from MirrorMaker to the produce request, there is no way for the producer to know whether the message is deep or not. So I wonder how it worked on 0.7?

Here is the code as i read it (correct me if i'm wrong):

1. MirrorMakerThread.run(): create KeyedMessage[Array[Byte],Array[Byte]](topic, message)
2. Producer.send() -> DefaultEventHandler.handle()
3. DefaultEventHandler.serialize(): use DefaultEncoder for the message (does nothing)
4. DefaultEventHandler.dispatchSerializedData():
4.1 DefaultEventHandler.partitionAndCollate(): group messages by broker/partition/topic
4.2 DefaultEventHandler.dispatchSerializeData(): cycle through each broker
4.3 DefaultEventHandler.groupMessagesToSet(): Create a ByteBufferMessageSet for each partition/topic grouping all the messages together, and compressing them if needed
4.4 DefaultEventHandler.send(): send the ByteBufferMessageSets for this broker in one ProduceRequest

The gist is that in DEH.groupMessagesToSet(), you don't know wether the raw message in KeyedMessage.message is shallow or not. So I think I missed something... Also it doesn't seem possible to send batch of deep messages in one ProduceRequest.

I would love to provide a patch (or if you tell me that i'm doing it wrong, it's even better), since I can easily test it on my test clusters but I will need guidance here.


---

* [KAFKA-731](https://issues.apache.org/jira/browse/KAFKA-731) | *Major* | **~/ivy2/cache should be a variable in the kafka-run-class bash script**

since this may be in different places people can easily change it


---

* [KAFKA-726](https://issues.apache.org/jira/browse/KAFKA-726) | *Blocker* | **Add ReplicaFetcherThread name to mbean names**

1. Add ReplicaFetcherThread name to mbean names via clientId.

2. Use a uniform format for thread names in ConsumerFetcherThread and ReplicaFetcherThread.

3. Modify the way kafka.server.FetcherStats are created so that the thread name is not appended twice to the mbean name.


---

* [KAFKA-718](https://issues.apache.org/jira/browse/KAFKA-718) | *Major* | **kafka-run-class.sh should use reasonable gc settings**

Our start script seems to use the default "stop the world" collector. It would be good to default to well tuned gc settings including gc logging, CMS, etc. Whatever we are using in prod and perf lab...

Many people who want to use kafka basically don't know java well so they won't succeed in figuring this stuff out on their own and just think it is broken and timing out if we don't have good defaults.


---

* [KAFKA-713](https://issues.apache.org/jira/browse/KAFKA-713) | *Major* | **Update Hadoop producer for Kafka 0.8 changes**

With the changes in Kafka 0.8, the Hadoop producer (in contrib) is busted due to changes in the way KeyedMessages are now handled. I will fix.


---

* [KAFKA-708](https://issues.apache.org/jira/browse/KAFKA-708) | *Blocker* | **ISR becomes empty while marking a partition offline**

Attached state change log shows that ISR becomes empty when a partition is being marked as offline.


---

* [KAFKA-702](https://issues.apache.org/jira/browse/KAFKA-702) | *Blocker* | **Deadlock between request handler/processor threads**

We have seen this a couple of times in the past few days in a test cluster. The request handler and processor threads deadlock on the request/response queues bringing the server to a halt

"kafka-processor-10251-7" prio=10 tid=0x00007f4a0c3c9800 nid=0x4c39 waiting on condition [0x00007f46f698e000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  <0x00007f48c9dd2698> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)
        at java.util.concurrent.ArrayBlockingQueue.put(ArrayBlockingQueue.java:252)
        at kafka.network.RequestChannel.sendRequest(RequestChannel.scala:107)
        at kafka.network.Processor.read(SocketServer.scala:321)
        at kafka.network.Processor.run(SocketServer.scala:231)
        at java.lang.Thread.run(Thread.java:619)


"kafka-request-handler-7" daemon prio=10 tid=0x00007f4a0c57f000 nid=0x4c47 waiting on condition [0x00007f46f5b80000]
   java.lang.Thread.State: WAITING (parking)
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  <0x00007f48c9dd6348> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:1987)
        at java.util.concurrent.ArrayBlockingQueue.put(ArrayBlockingQueue.java:252)
        at kafka.network.RequestChannel.sendResponse(RequestChannel.scala:112)
        at kafka.server.KafkaApis.handleProducerRequest(KafkaApis.scala:198)
        at kafka.server.KafkaApis.handle(KafkaApis.scala:58)
        at kafka.server.KafkaRequestHandler.run(KafkaRequestHandler.scala:41)
        at java.lang.Thread.run(Thread.java:619)

This is because there is a cycle in the wait-for graph of processor threads and request handler threads. If the request handling slows down on a busy server, the request queue fills up. All processor threads quickly block on adding incoming requests to the request queue. Due to this, those threads do not processes responses filling up their response queues. At this moment, the request handler threads start blocking on adding responses to the respective response queues. This can lead to a deadlock where every thread is holding a lock on one queue and asking a lock for the other queue. This brings the server to a halt where it accepts connections but every request gets timed out.

One way to resolve this is by breaking the cycle in the wait-for graph of the request handler and processor threads. Instead of having the processor threads dispatching the responses, we can have one or more dedicated response handler threads that dequeue responses from the queue and write those on the socket. One downside of this approach is that now access to the selector will have to be synchronized.


---

* [KAFKA-701](https://issues.apache.org/jira/browse/KAFKA-701) | *Minor* | **ConsoleProducer does not exit correctly and fix some config properties following KAFKA-648**

Just added a proper try/catch around the ConsoleProducer so that when an exception is thrown, the system exits (with error code 1)

In addition, KAFKA-648 broker some configs like request.enqueue.timeout.ms and zk.connection.timeout.ms that I fixed


---

* [KAFKA-699](https://issues.apache.org/jira/browse/KAFKA-699) | *Blocker* | **Disallow clients to set replicaId in FetchRequest**

ReplicaId in FetchRequest is for Kafka internal use. Setting it incorrectly will cause unexpected behavior in the broker. So, we shouldn't allow clients to set it.


---

* [KAFKA-698](https://issues.apache.org/jira/browse/KAFKA-698) | *Blocker* | **broker may expose uncommitted data to a consumer**

We saw the following error in the log during testing. The problem seems to be that when the high watermark was at offset 39021, the broker incorrectly exposed an uncommitted message (at offset 39022) to the client. This doesn't always happen, but can happen when certain conditions are met, which I should explain in the comments.

2013/01/11 00:54:42.059 ERROR [KafkaApis] [kafka-request-handler-2] [kafka] []  [KafkaApi-277] error when processing request (service\_metrics,2,39022,2000000)
java.lang.IllegalArgumentException: Attempt to read with a maximum offset (39021) less than the start offset (39022).
        at kafka.log.LogSegment.read(LogSegment.scala:105)
        at kafka.log.Log.read(Log.scala:386)
        at kafka.server.KafkaApis.kafka$server$KafkaApis$$readMessageSet(KafkaApis.scala:369)
        at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$readMessageSets$1.apply(KafkaApis.scala:327)
        at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$readMessageSets$1.apply(KafkaApis.scala:323)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)
        at scala.collection.immutable.Map$Map1.map(Map.scala:93)
        at kafka.server.KafkaApis.kafka$server$KafkaApis$$readMessageSets(KafkaApis.scala:323)
        at kafka.server.KafkaApis$$anonfun$maybeUnblockDelayedFetchRequests$2.apply(KafkaApis.scala:165)
        at kafka.server.KafkaApis$$anonfun$maybeUnblockDelayedFetchRequests$2.apply(KafkaApis.scala:164)
        at scala.collection.mutable.ResizableArray$class.foreach(ResizableArray.scala:57)
        at scala.collection.mutable.ArrayBuffer.foreach(ArrayBuffer.scala:43)
        at kafka.server.KafkaApis.maybeUnblockDelayedFetchRequests(KafkaApis.scala:164)
        at kafka.server.KafkaApis$$anonfun$handleProducerRequest$3.apply(KafkaApis.scala:186)
        at kafka.server.KafkaApis$$anonfun$handleProducerRequest$3.apply(KafkaApis.scala:185)
        at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)
        at kafka.server.KafkaApis.handleProducerRequest(KafkaApis.scala:185)
        at kafka.server.KafkaApis.handle(KafkaApis.scala:58)
        at kafka.server.KafkaRequestHandler.run(KafkaRequestHandler.scala:41)
        at java.lang.Thread.run(Thread.java:619)


---

* [KAFKA-695](https://issues.apache.org/jira/browse/KAFKA-695) | *Blocker* | **Broker shuts down due to attempt to read a closed index file**

Broker shuts down with the following error message -


013/01/11 01:43:51.320 ERROR [KafkaApis] [request-expiration-task] [kafka] []  [KafkaApi-277] error when processing request (service\_metrics,2,39192,2000000)
java.nio.channels.ClosedChannelException
        at sun.nio.ch.FileChannelImpl.ensureOpen(FileChannelImpl.java:88)
        at sun.nio.ch.FileChannelImpl.read(FileChannelImpl.java:613)
        at kafka.log.FileMessageSet.searchFor(FileMessageSet.scala:82)
        at kafka.log.LogSegment.translateOffset(LogSegment.scala:76)
        at kafka.log.LogSegment.read(LogSegment.scala:106)
        at kafka.log.Log.read(Log.scala:386)
        at kafka.server.KafkaApis.kafka$server$KafkaApis$$readMessageSet(KafkaApis.scala:369)
        at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$readMessageSets$1.apply(KafkaApis.scala:327)
        at kafka.server.KafkaApis$$anonfun$kafka$server$KafkaApis$$readMessageSets$1.apply(KafkaApis.scala:323)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)
        at scala.collection.immutable.Map$Map1.map(Map.scala:93)
        at kafka.server.KafkaApis.kafka$server$KafkaApis$$readMessageSets(KafkaApis.scala:323)
        at kafka.server.KafkaApis$FetchRequestPurgatory.expire(KafkaApis.scala:519)
        at kafka.server.KafkaApis$FetchRequestPurgatory.expire(KafkaApis.scala:501)
        at kafka.server.RequestPurgatory$ExpiredRequestReaper.run(RequestPurgatory.scala:222)
        at java.lang.Thread.run(Thread.java:619)
2013/01/11 01:43:52.815 INFO [Processor] [kafka-processor-10251-2] [kafka] []  Closing socket connection to /172.20.72.244.
2013/01/11 01:43:54.286 INFO [Processor] [kafka-processor-10251-3] [kafka] []  Closing socket connection to /172.20.72.243.
2013/01/11 01:43:54.385 ERROR [LogManager] [kafka-logflusher-1] [kafka] []  [Log Manager on Broker 277] Error flushing topic service\_metrics
java.nio.channels.ClosedChannelException
        at sun.nio.ch.FileChannelImpl.ensureOpen(FileChannelImpl.java:88)
        at sun.nio.ch.FileChannelImpl.force(FileChannelImpl.java:349)
        at kafka.log.FileMessageSet$$anonfun$flush$1.apply$mcV$sp(FileMessageSet.scala:154)
        at kafka.log.FileMessageSet$$anonfun$flush$1.apply(FileMessageSet.scala:154)
        at kafka.log.FileMessageSet$$anonfun$flush$1.apply(FileMessageSet.scala:154)
        at kafka.metrics.KafkaTimer.time(KafkaTimer.scala:33)
        at kafka.log.FileMessageSet.flush(FileMessageSet.scala:153)
        at kafka.log.LogSegment.flush(LogSegment.scala:151)
        at kafka.log.Log.flush(Log.scala:493)
        at kafka.log.LogManager$$anonfun$kafka$log$LogManager$$flushDirtyLogs$2.apply(LogManager.scala:319)
        at kafka.log.LogManager$$anonfun$kafka$log$LogManager$$flushDirtyLogs$2.apply(LogManager.scala:310)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at scala.collection.JavaConversions$JIteratorWrapper.foreach(JavaConversions.scala:474)
        at scala.collection.IterableLike$class.foreach(IterableLike.scala:79)
        at scala.collection.JavaConversions$JCollectionWrapper.foreach(JavaConversions.scala:495)
        at kafka.log.LogManager.kafka$log$LogManager$$flushDirtyLogs(LogManager.scala:310)
        at kafka.log.LogManager$$anonfun$startup$2.apply$mcV$sp(LogManager.scala:144)
        at kafka.utils.Utils$$anon$2.run(Utils.scala:66)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
        at java.util.concurrent.FutureTask$Sync.innerRunAndReset(FutureTask.java:317)
        at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:150)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$101(ScheduledThreadPoolExecutor.java:98)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.runPeriodic(ScheduledThreadPoolExecutor.java:181)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:205)
        at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
        at java.lang.Thread.run(Thread.java:619)
2013/01/11 01:43:54.447 FATAL [LogManager] [kafka-logflusher-1] [kafka] []  [Log Manager on Broker 277] Halting due to unrecoverable I/O error while flushing logs: null
java.nio.channels.ClosedChannelException
        at sun.nio.ch.FileChannelImpl.ensureOpen(FileChannelImpl.java:88)
        at sun.nio.ch.FileChannelImpl.force(FileChannelImpl.java:349)
        at kafka.log.FileMessageSet$$anonfun$flush$1.apply$mcV$sp(FileMessageSet.scala:154)
        at kafka.log.FileMessageSet$$anonfun$flush$1.apply(FileMessageSet.scala:154)
        at kafka.log.FileMessageSet$$anonfun$flush$1.apply(FileMessageSet.scala:154)
        at kafka.metrics.KafkaTimer.time(KafkaTimer.scala:33)
        at kafka.log.FileMessageSet.flush(FileMessageSet.scala:153)
        at kafka.log.LogSegment.flush(LogSegment.scala:151)
        at kafka.log.Log.flush(Log.scala:493)

       at kafka.log.LogSegment.flush(LogSegment.scala:151)
        at kafka.log.Log.flush(Log.scala:493)
        at kafka.log.LogManager$$anonfun$kafka$log$LogManager$$flushDirtyLogs$2.apply(LogManager.scala:319)
        at kafka.log.LogManager$$anonfun$kafka$log$LogManager$$flushDirtyLogs$2.apply(LogManager.scala:310)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at scala.collection.JavaConversions$JIteratorWrapper.foreach(JavaConversions.scala:474)
        at scala.collection.IterableLike$class.foreach(IterableLike.scala:79)
        at scala.collection.JavaConversions$JCollectionWrapper.foreach(JavaConversions.scala:495)
        at kafka.log.LogManager.kafka$log$LogManager$$flushDirtyLogs(LogManager.scala:310)
        at kafka.log.LogManager$$anonfun$startup$2.apply$mcV$sp(LogManager.scala:144)
        at kafka.utils.Utils$$anon$2.run(Utils.scala:66)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:441)
        at java.util.concurrent.FutureTask$Sync.innerRunAndReset(FutureTask.java:317)
        at java.util.concurrent.FutureTask.runAndReset(FutureTask.java:150)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.access$101(ScheduledThreadPoolExecutor.java:98)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.runPeriodic(ScheduledThreadPoolExecutor.java:181)
        at java.util.concurrent.ScheduledThreadPoolExecutor$ScheduledFutureTask.run(ScheduledThreadPoolExecutor.java:205)
        at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
        at java.lang.Thread.run(Thread.java:619)
2013/01/11 01:43:54.512 INFO [ComponentsContextLoaderListener] [Thread-2] [kafka] []  Shutting down...


---

* [KAFKA-693](https://issues.apache.org/jira/browse/KAFKA-693) | *Major* | **Consumer rebalance fails if no leader available for a partition and stops all fetchers**

I am currently experiencing this with the MirrorMaker but I assume it happens for any rebalance. The symptoms are:

I have replication factor of 1

1. If i start the MirrorMaker (bin/kafka-run-class.sh kafka.tools.MirrorMaker --consumer.config mirror-consumer.properties  --producer.config mirror-producer.properties --blacklist 'xdummyx' --num.streams=1 --num.producers=1) with a broker down
1.1 I set the refresh.leader.backoff.ms to 600000 (10min) so that the ConsumerFetcherManager doesn't retry to often to get the unavailable partitions
1.2 The rebalance starts at the init step and fails: Exception in thread "main" kafka.common.ConsumerRebalanceFailedException: KafkaMirror\_mirror-01-1357893495345-fac86b15 can't rebalance after 4 retries
1.3 After the exception, everything stops (fetchers and queues)
1.4 I attached the full logs (info & debug) for this case

2. If i start the MirrorMaker with all the brokers up and then kill a broker
2.1 The first rebalance is successful
2.2 The consumer will handle correctly the broker down and stop the associated ConsumerFetcherThread
2.3 The refresh.leader.backoff.ms to 600000 works correctly
2.4 If something triggers a rebalance (new topic, partition reassignment...), then we go back to 1., the rebalance fails and stops everything.

I think the desired behavior is to consumer whatever is available, and try later at some intervals. I would be glad to help on that issue although the Consumer code seems a little tough to get on.


---

* [KAFKA-692](https://issues.apache.org/jira/browse/KAFKA-692) | *Minor* | **ConsoleConsumer outputs diagnostic message to stdout instead of stderr**

At the end of its handling loop, ConsoleConsumer prints "Consumed %d messages" to standard out.  Clients who use custom formatters, and read this output, shouldn't need to special case this line, or accept a parse error.

It should instead go (as all diagnostics should) to stderr.

patch attached.


---

* [KAFKA-691](https://issues.apache.org/jira/browse/KAFKA-691) | *Major* | **Fault tolerance broken with replication factor 1**

In 0.7 if a partition was down we would just send the message elsewhere. This meant that the partitioning was really more of a "stickiness" then a hard guarantee. This made it impossible to depend on it for partitioned, stateful processing.

In 0.8 when running with replication this should not be a problem generally as the partitions are now highly available and fail over to other replicas. However in the case of replication factor = 1 no longer really works for most cases as now a dead broker will give errors for that broker.

I am not sure of the best fix. Intuitively I think this is something that should be handled by the Partitioner interface. However currently the partitioner has no knowledge of which nodes are available. So you could use a random partitioner, but that would keep going back to the down node.


---

* [KAFKA-690](https://issues.apache.org/jira/browse/KAFKA-690) | *Major* | **TopicMetadataRequest throws exception when no topics are specified**

If no topics are sent in a TopicMetadataRequest, `readFrom` throws an exception when trying to get the the head of the topic list for a debug statement.

java.util.NoSuchElementException: head of empty list
	at scala.collection.immutable.Nil$.head(List.scala:386)
	at scala.collection.immutable.Nil$.head(List.scala:383)
	at kafka.api.TopicMetadataRequest$$anonfun$readFrom$2.apply(TopicMetadataRequest.scala:43)
	at kafka.api.TopicMetadataRequest$$anonfun$readFrom$2.apply(TopicMetadataRequest.scala:43)
	at kafka.utils.Logging$class.debug(Logging.scala:51)
	at kafka.api.TopicMetadataRequest$.debug(TopicMetadataRequest.scala:25)
	at kafka.api.TopicMetadataRequest$.readFrom(TopicMetadataRequest.scala:43)
	at kafka.api.RequestKeys$$anonfun$4.apply(RequestKeys.scala:37)
	at kafka.api.RequestKeys$$anonfun$4.apply(RequestKeys.scala:37)
	at kafka.network.RequestChannel$Request.<init>(RequestChannel.scala:47)
	at kafka.network.Processor.read(SocketServer.scala:320)
	at kafka.network.Processor.run(SocketServer.scala:231)
	at java.lang.Thread.run(Thread.java:680)


---

* [KAFKA-688](https://issues.apache.org/jira/browse/KAFKA-688) | *Major* | **System Test - Update all testcase\_xxxx\_properties.json for properties keys uniform naming convention**

After the changes made in "uniform naming convention of properties keys" (KAFKA-648), all testcase\_xxxx\_properties.json files need to be updated on the following properties keys changes:

brokerid => broker.id
log.file.size => log.segment.size
groupid => group.id


---

* [KAFKA-684](https://issues.apache.org/jira/browse/KAFKA-684) | *Major* | **ConsoleProducer does not have the queue-size option**

When using the kafka ConsoleProducer (from script kafka-console-producer.sh), you cannot set the queue.size, which gets very annoying when  you want to produce quickly a lot of messages. You definitely need to increase the queue.size (or decrease the send timeout).

Here is a simple patch to add the option.


---

* [KAFKA-680](https://issues.apache.org/jira/browse/KAFKA-680) | *Major* | **ApiUtils#writeShortString uses String length instead of byte length**

Instead of using the length of the encoded bytes, writeShortString is using String#length. If non single-byte characters are encoded, then things go wrong then decoding the string with readShortString


---

* [KAFKA-675](https://issues.apache.org/jira/browse/KAFKA-675) | *Minor* | **Only bind to the interface declared in the 'hostname' config property**

At the moment, Kafka always binds to all interfaces (0.0.0.0) which isn't ideal on some environments, even if the 'hostname' config parameter is set.

Kafka should only bind to the interface set in the 'hostname' parameter - which defaults to InetAddress.getLocalHost.getHostAddress


---

* [KAFKA-673](https://issues.apache.org/jira/browse/KAFKA-673) | *Critical* | **Broker recovery check logic is reversed**

We are currently running recovery when there IS a clean shutdown and not recovering when there isn't.


---

* [KAFKA-668](https://issues.apache.org/jira/browse/KAFKA-668) | *Major* | **Controlled shutdown admin tool should not require controller JMX url/port to be supplied**

The controlled shutdown admin command takes a zookeeper string and also requires the user to supply the controller's jmx url/port. This is a bit annoying since the purpose of the zookeeper string is to discover the controller. The tool should require exactly one of these options. If zookeeper is supplied then discover the controller and its jmx port (which means we will need to add the jmx port information to zk).


---

* [KAFKA-667](https://issues.apache.org/jira/browse/KAFKA-667) | *Minor* | **Rename .highwatermark file**

The 0.8 branch currently has a file in each log directory called
  .highwatermark
Soon we hope to add two more files in the same format. One will hold the cleaner position for log deduplication, and the other will hold the flusher position for log flush. Each of these is sort of a "highwater mark". It would be good to rename .highwatermark to be a little bit more intuitive when we add these other files. I propose:
  replication-offset-checkpoint
  flusher-offset-checkpoint
  cleaner-offset-checkpoint
replication-offset-checkpoint would replace the .highwatermark file. I am not making them dot files since they represent an important part of the persistent state and so the user should see it. Also shell * doesn't match hidden files, so if you did something like cp my\_log/* to my\_backup\_log/* you would not get corresponding .highwatermark file.

I am filing this bug now because it might be nice to just make this trivial change now and avoid having to handle backwards compatibility later.


---

* [KAFKA-664](https://issues.apache.org/jira/browse/KAFKA-664) | *Blocker* | **Kafka server threads die due to OOME during long running test**

I set up a Kafka cluster with 5 brokers (JVM memory 512M) and set up a long running producer process that sends data to 100s of partitions continuously for ~15 hours. After ~4 hours of operation, few server threads (acceptor and processor) exited due to OOME -

[2012-12-07 08:24:44,355] ERROR OOME with size 1700161893 (kafka.network.BoundedByteBufferReceive)
java.lang.OutOfMemoryError: Java heap space
[2012-12-07 08:24:44,356] ERROR Uncaught exception in thread 'kafka-acceptor': (kafka.utils.Utils$)
java.lang.OutOfMemoryError: Java heap space
[2012-12-07 08:24:44,356] ERROR Uncaught exception in thread 'kafka-processor-9092-1': (kafka.utils.Utils$)
java.lang.OutOfMemoryError: Java heap space
[2012-12-07 08:24:46,344] INFO Unable to reconnect to ZooKeeper service, session 0x13afd0753870103 has expired, closing socket connection (org.apache.zookeeper.ClientCnxn)
[2012-12-07 08:24:46,344] INFO zookeeper state changed (Expired) (org.I0Itec.zkclient.ZkClient)
[2012-12-07 08:24:46,344] INFO Initiating client connection, connectString=eat1-app309.corp:12913,eat1-app310.corp:12913,eat1-app311.corp:12913,eat1-app312.corp:12913,eat1-app313.corp:12913 sessionTimeout=15000 watcher=org.I0Itec.zkclient.ZkClient@19202d69 (org.apache.zookeeper.ZooKeeper)
[2012-12-07 08:24:55,702] ERROR OOME with size 2001040997 (kafka.network.BoundedByteBufferReceive)
java.lang.OutOfMemoryError: Java heap space
[2012-12-07 08:25:01,192] ERROR Uncaught exception in thread 'kafka-request-handler-0': (kafka.utils.Utils$)
java.lang.OutOfMemoryError: Java heap space
[2012-12-07 08:25:08,739] INFO Opening socket connection to server eat1-app311.corp/172.20.72.75:12913 (org.apache.zookeeper.ClientCnxn)
[2012-12-07 08:25:14,221] INFO Socket connection established to eat1-app311.corp/172.20.72.75:12913, initiating session (org.apache.zookeeper.ClientCnxn)
[2012-12-07 08:25:17,943] INFO Client session timed out, have not heard from server in 3722ms for sessionid 0x0, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn)
[2012-12-07 08:25:19,805] ERROR error in loggedRunnable (kafka.utils.Utils$)
java.lang.OutOfMemoryError: Java heap space
[2012-12-07 08:25:23,528] ERROR OOME with size 1853095936 (kafka.network.BoundedByteBufferReceive)
java.lang.OutOfMemoryError: Java heap space


It seems like it runs out of memory while trying to read the producer request, but its unclear so far.


---

* [KAFKA-648](https://issues.apache.org/jira/browse/KAFKA-648) | *Blocker* | **Use uniform convention for naming properties keys**

Currently, the convention that we seem to use to get a property value in *Config is as follows:

val configVal = property.getType("config.val", ...) // dot is used to separate two words in the key and the first letter of second word is capitalized in configVal.

We should use similar convention for groupId, consumerId, clientId, correlationId.

This change will probably be backward non-compatible.


---

* [KAFKA-646](https://issues.apache.org/jira/browse/KAFKA-646) | *Blocker* | **Provide aggregate stats at the high level Producer and ZookeeperConsumerConnector level**

WIth KAFKA-622, we measure ProducerRequestStats and FetchRequestAndResponseStats at the SyncProducer and SimpleConsumer level respectively. We could also aggregate them in the high level Producer and ZookeeperConsumerConnector level to provide an overall sense of request/response rate/size at the client level. Currently, I am not completely clear about the math that might be necessary for such  aggregation or if metrics already provides an API for aggregating stats of the same type.

We should also address the comments by Jun at KAFKA-622, I am copy pasting them here:

60. What happens if have 2 instances of Consumers with the same clientid in the same jvm? Does one of them fail because it fails to register metrics? Ditto for Producers.
61. ConsumerTopicStats: What if a topic is named AllTopics? We use to handle this by adding a - in topic specific stats.
62. ZookeeperConsumerConnector: Do we need to validate groupid?
63. ClientId: Does the clientid length need to be different from topic length?
64. AbstractFetcherThread: When building a fetch request, do we need to pass in brokerInfo as part of the client id? BrokerInfo contains the source broker info and the fetch requests are always made to the source broker.


---

* [KAFKA-638](https://issues.apache.org/jira/browse/KAFKA-638) | *Major* | **remove ProducerShell**

This is because there is already a ConsoleProducer and it does everything ProducerShell does and more.


---

* [KAFKA-634](https://issues.apache.org/jira/browse/KAFKA-634) | *Major* | **ConsoleProducer compresses messages and ignores the --compress flag**

I am using the kafka-producer-shell.sh script without the --compress option

however my messages seem to be gzipped

the docs say compression is off by default:
http://incubator.apache.org/kafka/configuration.html

The only producer.properties file I can find is at:
/home/ubuntu/kafka-0.7.2-incubating-src/config/producer.properties

In there is:
compression.codec=0

My process looks like:

root      1748  1746  0 Nov19 ?        00:02:37 java -Xmx512M -server -Dlog4j.configuration=file:/usr/local/bin/kafka/../config/log4j.properties -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -cp :/usr/local/bin/kafka/../project/boot/scala-2.8.0/lib/scala-compiler.jar:/usr/local/bin/kafka/../project/boot/scala-2.8.0/lib/scala-library.jar:/usr/local/bin/kafka/../core/target/scala\_2.8.0/kafka-0.7.2.jar:/usr/local/bin/kafka/../core/lib/*.jar:/usr/local/bin/kafka/../perf/target/scala\_2.8.0/kafka-perf-0.7.2.jar:/usr/local/bin/kafka/../core/lib\_managed/scala\_2.8.0/compile/jopt-simple-3.2.jar:/usr/local/bin/kafka/../core/lib\_managed/scala\_2.8.0/compile/log4j-1.2.15.jar:/usr/local/bin/kafka/../core/lib\_managed/scala\_2.8.0/compile/snappy-java-1.0.4.1.jar:/usr/local/bin/kafka/../core/lib\_managed/scala\_2.8.0/compile/zkclient-0.1.jar:/usr/local/bin/kafka/../core/lib\_managed/scala\_2.8.0/compile/zookeeper-3.3.4.jar kafka.producer.ConsoleProducer --topic logtail --zookeeper x.x.x.x:2181

But the messages come out gobbledegook unless I use a client that understands compressed messages, and in that client it identifies the bit as set to 1, gzip compression.


Jun Rao junrao@gmail.com via incubator.apache.org 
Nov 26 (1 day ago)
to kafka-users 

This seems to be a bug in ConsoleProducer. It also compresses messages and
ignores the --compress flag. Could you file a jira?

Thanks,
Jun


---

* [KAFKA-632](https://issues.apache.org/jira/browse/KAFKA-632) | *Major* | **ProducerRequest should take ByteBufferMessageSet instead of MessageSet**

Currently, ProducerRequest takes MessageSet in the constructor and casts it to ByteBufferMessageSet. It should take ByteBufferMessageSet directly.


---

* [KAFKA-622](https://issues.apache.org/jira/browse/KAFKA-622) | *Blocker* | **Create mbeans per client**

Currently we create one mbean of each type for a given mbean server, regardless of the number of clients. We should create MBeans per client for both producer and consumer. To do that we need to introduce clientId in mbean names.


---

* [KAFKA-618](https://issues.apache.org/jira/browse/KAFKA-618) | *Blocker* | **Deadlock between leader-finder-thread and consumer-fetcher-thread during broker failure**

This causes the test failure reported in KAFKA-607. This affects high-level consumers - if they hit the deadlock then they would get wedged (or at least until the consumer timeout).

Here is the threaddump output that shows the issue:

Found one Java-level deadlock:
=============================
"ConsumerFetcherThread-console-consumer-41755\_jkoshy-ld-1353026496639-b0e24a70-0-1":
  waiting for ownable synchronizer 0x00007f2283ad0000, (a java.util.concurrent.locks.ReentrantLock$NonfairSync),
  which is held by "console-consumer-41755\_jkoshy-ld-1353026496639-b0e24a70-leader-finder-thread"
"console-consumer-41755\_jkoshy-ld-1353026496639-b0e24a70-leader-finder-thread":
  waiting to lock monitor 0x00007f2288297190 (object 0x00007f2283ab01d0, a java.lang.Object),
  which is held by "ConsumerFetcherThread-console-consumer-41755\_jkoshy-ld-1353026496639-b0e24a70-0-1"

Java stack information for the threads listed above:
===================================================
"ConsumerFetcherThread-console-consumer-41755\_jkoshy-ld-1353026496639-b0e24a70-0-1":
        at sun.misc.Unsafe.park(Native Method)
        - parking to wait for  <0x00007f2283ad0000> (a java.util.concurrent.locks.ReentrantLock$NonfairSync)
        at java.util.concurrent.locks.LockSupport.park(LockSupport.java:158)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.parkAndCheckInterrupt(AbstractQueuedSynchronizer.java:811)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireQueued(AbstractQueuedSynchronizer.java:842)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquire(AbstractQueuedSynchronizer.java:1178)
        at java.util.concurrent.locks.ReentrantLock$NonfairSync.lock(ReentrantLock.java:186)
        at java.util.concurrent.locks.ReentrantLock.lock(ReentrantLock.java:262)
        at kafka.consumer.ConsumerFetcherManager.getPartitionTopicInfo(ConsumerFetcherManager.scala:131)
        at kafka.consumer.ConsumerFetcherThread.processPartitionData(ConsumerFetcherThread.scala:43)
        at kafka.server.AbstractFetcherThread$$anonfun$doWork$5.apply(AbstractFetcherThread.scala:116)
        at kafka.server.AbstractFetcherThread$$anonfun$doWork$5.apply(AbstractFetcherThread.scala:99)
        at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)
        at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:99)
        - locked <0x00007f2283ab01d0> (a java.lang.Object)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:50)
"console-consumer-41755\_jkoshy-ld-1353026496639-b0e24a70-leader-finder-thread":
        at kafka.server.AbstractFetcherThread.addPartition(AbstractFetcherThread.scala:142)
        - waiting to lock <0x00007f2283ab01d0> (a java.lang.Object)
        at kafka.server.AbstractFetcherManager.addFetcher(AbstractFetcherManager.scala:49)
        - locked <0x00007f2283ab0338> (a java.lang.Object)
        at kafka.consumer.ConsumerFetcherManager$$anon$1$$anonfun$doWork$5.apply(ConsumerFetcherManager.scala:81)
        at kafka.consumer.ConsumerFetcherManager$$anon$1$$anonfun$doWork$5.apply(ConsumerFetcherManager.scala:76)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at scala.collection.mutable.HashTable$$anon$1.foreach(HashTable.scala:161)
        at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:194)
        at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
        at scala.collection.mutable.HashMap.foreach(HashMap.scala:80)
        at kafka.consumer.ConsumerFetcherManager$$anon$1.doWork(ConsumerFetcherManager.scala:76)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:50)

Found 1 deadlock.


---

* [KAFKA-614](https://issues.apache.org/jira/browse/KAFKA-614) | *Major* | **DumpLogSegment offset verification is incorrect for compressed messages**

During verification, DumpLogSegment tries to make sure that offsets are consecutive. However, this won't be true for compressed messages since FileMessageSet only does shallow iteration. The simplest fix is to skip the verification for compressed messages.


---

* [KAFKA-613](https://issues.apache.org/jira/browse/KAFKA-613) | *Major* | **MigrationTool should disable shallow iteration in the 0.7 consumer**

If shallow iteration is enabled, we should override it and log a warning.


---

* [KAFKA-612](https://issues.apache.org/jira/browse/KAFKA-612) | *Major* | **move shutting down of fetcher thread out of critical path**

Shutting down a fetch thread seems to take more than 200ms since we need to interrupt the thread. Currently, we shutdown fetcher threads while processing a leaderAndIsr request. This can delay some of the partitions to become a leader.


---

* [KAFKA-608](https://issues.apache.org/jira/browse/KAFKA-608) | *Blocker* | **getTopicMetadata does not respect producer config settings**

ProducerPool.scala contains the following code:
object ProducerPool{
  def createSyncProducer(configOpt: Option[ProducerConfig], broker: Broker): SyncProducer = {
    val props = new Properties()
    props.put("host", broker.host)
    props.put("port", broker.port.toString)
    if(configOpt.isDefined)
      props.putAll(configOpt.get.props.props)
    new SyncProducer(new SyncProducerConfig(props))
  }
}

Note also, that ClientUtils.getTopicMetadata() does the following:
   ProducerPool.createSyncProducer(None, brokers(i))

As a result there is no way to control the socket settings for the get metadata request.

My recommendation is that we require the config to be specified in the 

Note that this creates a new sync producer without using ANY of the settings the user had given for the producer. In particular the socket timeout is defaulted to 500ms. 

This causes unit tests to fail a lot since a newly started test may easily timeout on a 500ms request.


---

* [KAFKA-604](https://issues.apache.org/jira/browse/KAFKA-604) | *Blocker* | **Add missing metrics in 0.8**

It would be good if we add the following metrics:

Producer: droppedMessageRate per topic

ReplicaManager: partition count on the broker

FileMessageSet: logFlushTimer per log (i.e., partition). Also, logFlushTime should probably be moved to LogSegment since the flush now includes index flush time.


---

* [KAFKA-596](https://issues.apache.org/jira/browse/KAFKA-596) | *Major* | **LogSegment.firstAppendTime not reset after truncate to**

Currently, we don't reset LogSegment.firstAppendTime after the segment is truncated. What can happen is that we truncate the segment to size 0 and on next append, a new log segment with the same starting offset is rolled because the time-based rolling is triggered.


---

* [KAFKA-592](https://issues.apache.org/jira/browse/KAFKA-592) | *Blocker* | **Register metrics beans at kafka server startup**

jmx beans are not registered until the corresponding part of the code executes. To set alerts on some of the server side beans, they need to be registered at server startup.


---

* [KAFKA-591](https://issues.apache.org/jira/browse/KAFKA-591) | *Major* | **Add test cases to test log size retention and more**

Add test cases to test the followings:

1. Log Size Retention

2. Replica Factor < no. of brokers in a cluster

3. Multiple instances of Migration Tool

4. Multiple instances of Mirror Maker

5. Set "log.index.interval.bytes" to be slightly smaller than message size to force the indexing to be performed for each message


---

* [KAFKA-586](https://issues.apache.org/jira/browse/KAFKA-586) | *Critical* | **system test configs are broken**

system test suite has a set of default config values that are picked up from the testsuite/config directory. One can override the value of a config in the testcase\_properties.json file. This is great, but the assumption is that the config property that is being overridden should also present in the testsuite/config/*.properties file. 

Currently, there are a number of properties in KafkaConfig that are not in the testsuite/config/*.properties file. So the tests might intend to override some properties, but that will be ignored. 

Let's either add all the configs in the testsuite/config/*.properties file or remove this depedency and override the property specified in testcase\_properties.json.


---

* [KAFKA-584](https://issues.apache.org/jira/browse/KAFKA-584) | *Major* | **produce/fetch remote time metric not set correctly when num.acks = 1**

When num.acks = 1, the produce/fetch remote time is set to a very high value (several hours). This is due to a race condition on the apiLocalTime, which is initialized to -1, that makes the (responseTime - apiLocalTime) a very large value.


---

* [KAFKA-581](https://issues.apache.org/jira/browse/KAFKA-581) | *Trivial* | **provides windows batch script for starting Kafka/Zookeeper**

Provide a port for quickstarting Kafka dev on Windows :
- kafka-run-class.bat
- kafka-server-start.bat
- zookeeper-server-start.bat
This will help Kafka community growth


---

* [KAFKA-580](https://issues.apache.org/jira/browse/KAFKA-580) | *Blocker* | **system test testcase\_0122 under replication fails due to large # of data loss**

testcase\_0122 fails sometimes because a large # of messages is lost with ack = 1. In this case, we expect only a small number of messages to be lost when there are broker failures.


---

* [KAFKA-579](https://issues.apache.org/jira/browse/KAFKA-579) | *Blocker* | **remove connection timeout in SyncProducer**

Currently, SyncProducer has a few parameters that control how long the client should wait to establish a socket connection and how frequent the connection should be re-established. Those parameters seem to be needed primarily for vip on a load balancer. In 0.8, SyncProducer doesn't deal with VIP any more. So, we probably should get rid of those parameters. One of the issues that I have seen is that when a broker is down, SyncProducer will still wait connectionTimeout time to try to establish a connection. This is unnecessary since the high level producer already has the retry logic and is delaying requests like getMetadataRequest.


---

* [KAFKA-578](https://issues.apache.org/jira/browse/KAFKA-578) | *Blocker* | **Leader finder thread in ConsumerFetcherManager needs to handle exceptions**

Saw the leader finder thread due to the following exception. We need to add a try/catch clause to handle the exceptions.

[2012-10-11 17:17:14,192] ERROR [mm\_regtest\_grp\_jrao-ld-1350000983383-47e0e557-leader-finder-thread], Error due to  (kafka.consumer.ConsumerFetcherManager$$anon$1)
kafka.common.KafkaException: fetching topic metadata for topics [Set(test\_1)] from broker [ArrayBuffer()] failed
        at kafka.utils.Utils$.getTopicMetadata(Utils.scala:704)
        at kafka.consumer.ConsumerFetcherManager$$anon$1.doWork(ConsumerFetcherManager.scala:55)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:50)


---

* [KAFKA-577](https://issues.apache.org/jira/browse/KAFKA-577) | *Major* | **extend DumpLogSegments to verify consistency btw data and index**

It would be good to extend DumpLogSegments to do the following verification:
1. The offsets stored in the index match those in the log data.
2. The offsets in the data log is consecutive.


---

* [KAFKA-576](https://issues.apache.org/jira/browse/KAFKA-576) | *Major* | **SimpleConsumer throws UnsupportedOperationException: empty.head**

* In this case, there are 15 log segment files in broker-1 data dir:

ls -l /tmp/kafka\_server\_1\_logs/test\_1-0/
total 240
-rw-r--r-- 1 jfung eng    16 Oct 16 10:41 00000000000000000000.index
-rw-r--r-- 1 jfung eng 10440 Oct 16 10:40 00000000000000000000.log
-rw-r--r-- 1 jfung eng     8 Oct 16 10:41 00000000000000000020.index
-rw-r--r-- 1 jfung eng 10440 Oct 16 10:40 00000000000000000020.log
. . .
-rw-r--r-- 1 jfung eng     8 Oct 16 10:41 00000000000000000280.index
-rw-r--r-- 1 jfung eng 10440 Oct 16 10:41 00000000000000000280.log


* The following are the dump log segment of the first log segment file

bin/kafka-run-class.sh kafka.tools.DumpLogSegments /tmp/kafka\_server\_1\_logs/test\_1-0/00000000000000000000.log 
Dumping /tmp/kafka\_server\_1\_logs/test\_1-0/00000000000000000000.log
Starting offset: 0
offset: 0 isvalid: true payloadsize: 500 magic: 2 compresscodec: NoCompressionCodec crc: 1663889063
offset: 1 isvalid: true payloadsize: 500 magic: 2 compresscodec: NoCompressionCodec crc: 2803454828
offset: 2 isvalid: true payloadsize: 500 magic: 2 compresscodec: NoCompressionCodec crc: 683347625
. . .
offset: 18 isvalid: true payloadsize: 500 magic: 2 compresscodec: NoCompressionCodec crc: 1892511043
offset: 19 isvalid: true payloadsize: 500 magic: 2 compresscodec: NoCompressionCodec crc: 601297044

* Output of SimpleConsumerShell:
. . .
next offset = 16
Topic:test\_1:ThreadID:2:MessageID:0000000043:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
next offset = 17
Topic:test\_1:ThreadID:3:MessageID:0000000063:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
next offset = 18
Topic:test\_1:ThreadID:4:MessageID:0000000083:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
next offset = 19
Topic:test\_1:ThreadID:0:MessageID:0000000003:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
next offset = 19
Topic:test\_1:ThreadID:0:MessageID:0000000003:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
next offset = 19
Topic:test\_1:ThreadID:0:MessageID:0000000003:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
next offset = 19
Topic:test\_1:ThreadID:0:MessageID:0000000003:xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx 
. . .

* It appears that SimpleConsumerShell doesn't advance to the next log segment file

* It should probably block inside the while loop to prevent infinite looping


---

* [KAFKA-575](https://issues.apache.org/jira/browse/KAFKA-575) | *Blocker* | **Partition.makeFollower() reads broker info from ZK**

To follow a new leader, Partition.makeFollower() has to obtain the broker info of the new leader. Currently, it reads that info from ZK for every affected partition. This increases the time for a leader to truly available.


---

* [KAFKA-573](https://issues.apache.org/jira/browse/KAFKA-573) | *Major* | **System Test : Leader Failure Log Segment Checksum Mismatched When request-num-acks is 1**

• Test Description:

1. Start a 3-broker cluster as source
2. Send messages to source cluster
3. Find leader and terminate it (kill -15)
4. Start the broker again
5. Start a consumer to consume data
6. Compare the MessageID in the data between producer log and consumer log.

• Issue: There will be data loss if request-num-acks is set to 1. 

• To reproduce this issue, please do the followings:

1. Download the latest 0.8 branch
2. Apply the patch attached to this JIRA
3. Build kafka by running "./sbt update package"
4. Execute the test in directory "system\_test" : "python -B system\_test\_runner.py"
5. This test will execute testcase\_2 with the following settings:
    Replica factor : 3
    No. of partitions : 1
    No. of bouncing : 1


---

* [KAFKA-567](https://issues.apache.org/jira/browse/KAFKA-567) | *Blocker* | **Replication Data Loss in Mirror Maker Bouncing testcase**

* Test Description: 
1. Start a 3-broker cluster as source
2. Start a 3-broker cluster as target
3. Start 1 instance of Mirror Maker to replicate data from source to target
4. While producer is sending data into source cluster, stop Mirror Maker with "kill -15". Start Mirror Maker again after 1 second.
5. Start a consumer to consume data from target cluster.
6. Compare the MessageID in the data between producer log and consumer log.

* To reproduce this issue, please do the followings:

1. Download the latest 0.8 branch
2. Apply the patch attached to this JIRA
3. Build kafka by running "./sbt update package"
4. Execute the test in directory "system\_test" : "python -B system\_test\_runner.py"

* The test result may look like the following:

\_test\_case\_name  :  testcase\_5002
\_test\_class\_name  :  MirrorMakerTest
arg : bounce\_leader  :  false
arg : bounce\_mirror\_maker  :  true
arg : message\_producing\_free\_time\_sec  :  15
arg : num\_iteration  :  1
arg : num\_messages\_to\_produce\_per\_producer\_call  :  50
arg : num\_partition  :  1
arg : replica\_factor  :  3
arg : sleep\_seconds\_between\_producer\_calls  :  1
validation\_status  : 
     Log segment checksum matching across all replicas  :  FAILED
     Unique messages from consumer on [test\_1]  :  355
     Unique messages from producer on [test\_1]  :  400
     Validate for data matched on topic [test\_1]  :  FAILED

* Attached a tar file for the system test output log, the brokers' log4j files and data log segment files.

* There are no unusual Exception / Error found in the logs. However, there are consistently data loss in this Mirror Maker bouncing test case. Not sure if this is related to KAFKA-552.


---

* [KAFKA-563](https://issues.apache.org/jira/browse/KAFKA-563) | *Major* | **KafkaScheduler shutdown in ZookeeperConsumerConnector should check for config.autocommit**

Kafkascheduler starts up only if ConsumerConfig.autocommit is true. Its shutdown should check for this condition too.


---

* [KAFKA-562](https://issues.apache.org/jira/browse/KAFKA-562) | *Major* | **Non-failure System Test Log Segment File Checksums mismatched**

To reproduce this issue
1. Download 0.8 branch (reproduced in r1396343)
2. Apply the patch attached
3. Build Kafka under <kafka\_home> by running "./sbt update package"
4. In the directory <kafka\_home>/system\_test, run "python -B system\_test\_runner.py" and it will run the case "testcase\_0002" which will reproduce this issue.
5. The log segment files will be located in /tmp


---

* [KAFKA-557](https://issues.apache.org/jira/browse/KAFKA-557) | *Blocker* | **Replica fetch thread doesn't need to recompute message id**

With kafka-506, the leader broker computes the logical id for each message produced. This could involve decompressing and recompressing messages, which are expensive. When data is replicated from the leader to the follower, we could avoid recomputing the logical message id since it's the same.


---

* [KAFKA-556](https://issues.apache.org/jira/browse/KAFKA-556) | *Major* | **Change MessageSet.sizeInBytes to Int**

With kafka-506, there are various places where we assume that each log segment is less than 2GB.


---

* [KAFKA-553](https://issues.apache.org/jira/browse/KAFKA-553) | *Trivial* | **confusing reference to zk.connect in config/producer.properties**

https://svn.apache.org/repos/asf/incubator/kafka/branches/0.8/config/producer.properties
still has comments relative to zookeeper:
    # need to set either broker.list or zk.connect
    # zk.connect=
    …
But https://issues.apache.org/jira/browse/KAFKA-369 has removed the dependency to
zookeeper.
Those old comments are confusing since they imply that you can still use zk.connect with producers.


---

* [KAFKA-546](https://issues.apache.org/jira/browse/KAFKA-546) | *Major* | **Fix commit() in zk consumer for compressed messages**

In 0.7.x and earlier versions offsets were assigned by the byte location in the file. Because it wasn't possible to directly decompress from the middle of a compressed block, messages inside a compressed message set effectively had no offset. As a result the offset given to the consumer was always the offset of the wrapper message set.

In 0.8 after the logical offsets patch messages in a compressed set do have offsets. However the server still needs to fetch from the beginning of the compressed messageset (otherwise it can't be decompressed). As a result a commit() which occurs in the middle of a message set will still result in some duplicates.

This can be fixed in the ConsumerIterator by discarding messages smaller than the fetch offset rather than giving them to the consumer. This will make commit work correctly in the presence of compressed messages (finally).


---

* [KAFKA-545](https://issues.apache.org/jira/browse/KAFKA-545) | *Blocker* | **Add a Performance Suite for the Log subsystem**

We have had several performance concerns or potential improvements for the logging subsystem. To conduct these in a data-driven way, it would be good to have a single-machine performance test that isolated the performance of the log.

The performance optimizations we would like to evaluate include
- Special casing appends in a follower which already have the correct offset to avoid decompression and recompression
- Memory mapping either all or some of the segment files to improve the performance of small appends and lookups
- Supporting multiple data directories and avoiding RAID

Having a standalone tool is nice to isolate the component and makes profiling more intelligible.

This test would drive load against Log/LogManager controlled by a set of command line options. These command line program could then be scripted up into a suite of tests that covered variations in message size, message set size, compression, number of partitions, etc.

Here is a proposed usage for the tool:

./bin/kafka-log-perf-test.sh
Option                   Description                            
------                       -----------                            
--partitions             The number of partitions to write to
--dir                       The directory in which to write the log
--message-size      The size of the messages
--set-size               The number of messages per write
--compression        Compression alg
--messages            The number of messages to write
--readers                The number of reader threads reading the data

The tool would capture latency and throughput for the append() and read() operations.


---

* [KAFKA-540](https://issues.apache.org/jira/browse/KAFKA-540) | *Blocker* | **log.append() should halt on IOException**

See the following entry in the broker log in a system test run. We interrupted the ReplicaFetcherThread during shutdown. However, log.append halts the system when we hit the interrupted exception. The fix is not to halt the system in log.append and just pass on the exception. The caller can decide what to do.

[2012-10-03 15:08:53,124] FATAL [Kafka Log on Broker 2], Halting due to unrecoverable I/O error while handling producer request (kafka.log.Log)
java.nio.channels.ClosedByInterruptException
        at java.nio.channels.spi.AbstractInterruptibleChannel.end(AbstractInterruptibleChannel.java:184)
        at sun.nio.ch.FileChannelImpl.write(FileChannelImpl.java:203)
        at kafka.message.ByteBufferMessageSet.writeTo(ByteBufferMessageSet.scala:128)
        at kafka.log.FileMessageSet.append(FileMessageSet.scala:155)
        at kafka.log.LogSegment.append(LogSegment.scala:60)
        at kafka.log.Log.liftedTree1$1(Log.scala:282)
        at kafka.log.Log.append(Log.scala:270)
        at kafka.server.ReplicaFetcherThread.processPartitionData(ReplicaFetcherThread.scala:42)
        at kafka.server.AbstractFetcherThread$$anonfun$doWork$5.apply(AbstractFetcherThread.scala:105)
        at kafka.server.AbstractFetcherThread$$anonfun$doWork$5.apply(AbstractFetcherThread.scala:98)
        at scala.collection.immutable.Map$Map1.foreach(Map.scala:105)
        at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:98)
        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:50)
(


---

* [KAFKA-539](https://issues.apache.org/jira/browse/KAFKA-539) | *Blocker* | **Replica.hw should be initialized to the smaller of checkedpointed HW and log end offset**

Currently, replica.hw is always initialized to checkedpointed HW. However, on unclean shutdown, log end offset could be less than checkedpointed HW.


---

* [KAFKA-537](https://issues.apache.org/jira/browse/KAFKA-537) | *Major* | **expose clientId and correlationId in ConsumerConfig**

We need to expose clientId and correlationId in ConsumerConfig and use it properly in AbstractFetcherThread. For follower fetchers, we should set the clientId to a special string, something list "follower".


---

* [KAFKA-528](https://issues.apache.org/jira/browse/KAFKA-528) | *Blocker* | **IndexOutOfBoundsException thrown by kafka.consumer.ConsumerFetcherThread**

1. Attached file system\_test\_1348521165.tar.gz contains all the associated log files for this test session.

2. The system test output log can be found at: system\_test\_1348521165/system\_test\_output.log

3. The following log message can be found at: system\_test\_1348521165/logs/console\_consumer-5/console\_consumer.log

[2012-09-24 14:15:12,016] ERROR [ConsumerFetcherThread-console-consumer-16186\_jfung-1348521311426-2c83ced7-0-1], Error due to  (kafka.consumer.ConsumerFetcherThread)

java.lang.IndexOutOfBoundsException

        at java.nio.Buffer.checkIndex(Buffer.java:512)

        at java.nio.HeapByteBuffer.get(HeapByteBuffer.java:121)

        at kafka.message.Message.magic(Message.scala:119)

        at kafka.message.Message.checksum(Message.scala:132)

        at kafka.message.Message.isValid(Message.scala:144)

        at kafka.message.ByteBufferMessageSet$$anon$1.makeNextOuter(ByteBufferMessageSet.scala:118)

        at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:149)

        at kafka.message.ByteBufferMessageSet$$anon$1.makeNext(ByteBufferMessageSet.scala:89)

        at kafka.utils.IteratorTemplate.maybeComputeNext(IteratorTemplate.scala:61)

        at kafka.utils.IteratorTemplate.hasNext(IteratorTemplate.scala:53)

        at kafka.message.ByteBufferMessageSet.shallowValidBytes(ByteBufferMessageSet.scala:54)

        at kafka.message.ByteBufferMessageSet.validBytes(ByteBufferMessageSet.scala:49)

        at kafka.consumer.PartitionTopicInfo.enqueue(PartitionTopicInfo.scala:54)

        at kafka.consumer.ConsumerFetcherThread.processPartitionData(ConsumerFetcherThread.scala:42)

        at kafka.server.AbstractFetcherThread$$anonfun$doWork$5.apply(AbstractFetcherThread.scala:103)

        at kafka.server.AbstractFetcherThread$$anonfun$doWork$5.apply(AbstractFetcherThread.scala:96)

        at scala.collection.immutable.Map$Map2.foreach(Map.scala:127)

        at kafka.server.AbstractFetcherThread.doWork(AbstractFetcherThread.scala:96)

        at kafka.utils.ShutdownableThread.run(ShutdownableThread.scala:50)


---

* [KAFKA-526](https://issues.apache.org/jira/browse/KAFKA-526) | *Major* | **System Test should remove the top level data log directory**

As there are hidden files such as ".highwatermark" located inside the directory, the top level should be removed during the clean up stage of System Test.


---

* [KAFKA-516](https://issues.apache.org/jira/browse/KAFKA-516) | *Major* | **Consider catching all exceptions in ShutdownableThread**

I don't think there is any case where we want an uncaught exception to kill the thread. In fact this can be a bit hard to debug if an important background thread disappears. We should consider catching everything.


---

* [KAFKA-513](https://issues.apache.org/jira/browse/KAFKA-513) | *Blocker* | **Add state change log to Kafka brokers**

Once KAFKA-499 is checked in, every controller to broker communication can be modelled as a state change for one or more partitions. Every state change request will carry the controller epoch. If there is a problem with the state of some partitions, it will be good to have a tool that can create a timeline of requested and completed state changes. This will require each broker to output a state change log that has entries like

[2012-09-10 10:06:17,280] broker 1 received request LeaderAndIsr() for partition [foo, 0] from controller 2, epoch 1
[2012-09-10 10:06:17,350] broker 1 completed request LeaderAndIsr() for partition [foo, 0] from controller 2, epoch 1

On controller, this will look like -

[2012-09-10 10:06:17,198] controller 2, epoch 1, initiated state change request LeaderAndIsr() for partition [foo, 0]

We need a tool that can collect the state change log from all brokers and create a per-partition timeline of state changes -

[foo, 0]

[2012-09-10 10:06:17,198] controller 2, epoch 1 initiated state change request LeaderAndIsr() 
[2012-09-10 10:06:17,280] broker 1 received request LeaderAndIsr() from controller 2, epoch 1
[2012-09-10 10:06:17,350] broker 1 completed request LeaderAndIsr() from controller 2, epoch 1

This JIRA involves adding the state change log to each broker and adding the tool to create the timeline


---

* [KAFKA-512](https://issues.apache.org/jira/browse/KAFKA-512) | *Blocker* | **Remove checksum from ByteBufferMessageSet.iterator**

Messages are explicitly checksumed in Log.append. But there is also a checksum computed and checked automatically in ByteBufferMessageSet.iterator as we iterate. This iterator is used quite a lot and as a result we compute this checksum 39 times on a single message produce. It turns out the default crc32 implementation in java is quite expensive so this is not good.

The proposed fix is to remove the automatic checksum from the iterator and add explicit isValid() checks in the consumer as well as retaining the existing check in Log.append().

If folks are in agreement I will probably include this in the KAFKA-506 patch as that already contains a lot of ByteBufferMessageSet changes.


---

* [KAFKA-511](https://issues.apache.org/jira/browse/KAFKA-511) | *Blocker* | **offset returned in Producer response may not be correct**

The problems is that we append messages to the log and then get the offset. Another produce request could have sneaked in between the 2 steps.


---

* [KAFKA-510](https://issues.apache.org/jira/browse/KAFKA-510) | *Blocker* | **broker needs to know the replication factor per partition**

A broker needs to know the replication factor to report under replicated partitions.


---

* [KAFKA-509](https://issues.apache.org/jira/browse/KAFKA-509) | *Blocker* | **server should shut down on encountering invalid highwatermark file**

1. Somehow I managed to produce the following .highwatermark file (most probably while playing with kafka-create-topic.sh) - 
0
7
abra.kabra 0 0
0 0 0
abrakabra 0 0
\0 0 0
king. 0 0
abra..kabra 0 0
... 0 0

Perhaps the first two lines are not valid. But I am not able to reproduce this issue today. 

2. Since the topic names can contain a whitespace, perhaps the delimiter should change from a space char to / which is not allowed anymore in topic names.

3. With this .highwatermark file, the kafka server produces following - 
[2012-09-12 14:54:49,456] INFO Replica Manager on Broker 0: Becoming Leader for topic [abra.kabra] partition [0] (kafka.server.ReplicaManager)
[2012-09-12 14:54:49,456] INFO [ReplicaFetcherManager on broker 0, ], removing fetcher on topic abra.kabra, partition 0 (kafka.server.ReplicaFetcherManager)
[2012-09-12 14:54:49,457] ERROR Replica Manager on Broker 0: Error processing leaderAndISR request LeaderAndIsrRequest(1,,true,1000,Map((...,0) -> { "ISR": "0","leader": "0","leaderEpoch": "0" }, (\0,0) -> { "ISR": "0","leader": "0","leaderEpoch": "0" }, (abrakabra,0) -> { "ISR": "0","leader": "0","leaderEpoch": "0" }, (0,0) -> { "ISR": "0","leader": "0","leaderEpoch": "0" }, (abra..kabra,0) -> { "ISR": "0","leader": "0","leaderEpoch": "0" }, (king.,0) -> { "ISR": "0","leader": "0","leaderEpoch": "0" }, (abra.kabra,0) -> { "ISR": "0","leader": "0","leaderEpoch": "0" })) (kafka.server.ReplicaManager)
java.lang.StringIndexOutOfBoundsException: String index out of range: -1
	at java.lang.String.substring(String.java:1937)
	at kafka.server.HighwaterMarkCheckpoint$$anonfun$1.apply(HighwaterMarkCheckpoint.scala:103)
	at kafka.server.HighwaterMarkCheckpoint$$anonfun$1.apply(HighwaterMarkCheckpoint.scala:96)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
	at scala.collection.immutable.Range$ByOne$class.foreach(Range.scala:282)
	at scala.collection.immutable.Range$$anon$2.foreach(Range.scala:265)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)
	at scala.collection.immutable.Range.map(Range.scala:39)
	at kafka.server.HighwaterMarkCheckpoint.read(HighwaterMarkCheckpoint.scala:96)
        ... (more junk) ..

And then it goes in a while(1) loop to print the following - 
[2012-09-12 14:54:50,458] ERROR Replica Manager on Broker 0: Highwatermark for topic abra.kabra partition 0 doesn't exist during checkpointing (kafka.server.ReplicaManager)
[2012-09-12 14:54:50,459] ERROR Replica Manager on Broker 0: Highwatermark for topic ... partition 0 doesn't exist during checkpointing (kafka.server.ReplicaManager)
[2012-09-12 14:54:50,459] ERROR Replica Manager on Broker 0: Highwatermark for topic \0 partition 0 doesn't exist during checkpointing (kafka.server.ReplicaManager)
[2012-09-12 14:54:50,459] ERROR Replica Manager on Broker 0: Highwatermark for topic 0 partition 0 doesn't exist during checkpointing (kafka.server.ReplicaManager)
[2012-09-12 14:54:50,459] ERROR Replica Manager on Broker 0: Highwatermark for topic king. partition 0 doesn't exist during checkpointing (kafka.server.ReplicaManager)
[2012-09-12 14:54:50,460] ERROR Replica Manager on Broker 0: Highwatermark for topic abra..kabra partition 0 doesn't exist during checkpointing (kafka.server.ReplicaManager)
[2012-09-12 14:54:50,460] ERROR Replica Manager on Broker 0: Highwatermark for topic abrakabra partition 0 doesn't exist during checkpointing (kafka.server.ReplicaManager)

The server should shut down on encountering the error.


---

* [KAFKA-507](https://issues.apache.org/jira/browse/KAFKA-507) | *Major* | **Shut down ZK last to avoid hanging brokers running processes**

Add a dictionary to keep track of brokers pids in TestcaseEnv to distinguish the pids between ZK and brokers


---

* [KAFKA-506](https://issues.apache.org/jira/browse/KAFKA-506) | *Major* | **Store logical offset in log**

Currently we only support retention by dropping entire segment files. A more nuanced retention policy would allow dropping individual messages from a segment file by recopying it. This is not currently possible because the lookup structure we use to locate messages is based on the file offset directly.

To fix this we should move to a sequential, logical offset (0,1,2,3,...) which would allow deleting individual messages (e.g. 2) without deleting the entire segment.

It is desirable to make this change in the 0.8 timeframe since we are already doing data format changes.

As part of this we would explicitly store the key field given by the producer for partitioning (right now there is no way for the consumer to find the value used for partitioning).

This combination of features would allow a key-based retention policy that would clean obsolete values either by a user defined key.

The specific use case I am targeting is a commit log for local state maintained by a process doing some kind of near-real-time processing. The process could log out its local state changes and be able to restore from this log in the event of a failure. However I think this is a broadly useful feature.

The following changes would be part of this:
1. The log format would now be
      8 byte offset
      4 byte message\_size
      N byte message
2. The offsets would be changed to a sequential, logical number rather than the byte offset (e.g. 0,1,2,3,...)
3. A local memory-mapped lookup structure will be kept for each log segment that contains the mapping from logical to physical offset.

I propose to break this into two patches. The first makes the log format changes, but retains the physical offset. The second adds the lookup structure and moves to logical offset.

Here are a few issues to be considered for the first patch:
1. Currently a MessageSet implements Iterable[MessageAndOffset]. One surprising thing is that the offset is actually the offset of the next message. I think there are actually several uses for the current offset. I would propose making this hold the current message offset since with logical offsets the next offset is always just current\_offset+1. Note that since we no longer require messages to be dense, it is not true that if the next offset is N the current offset is N-1 (because N-1 may have been deleted). Thoughts or objections?
2. Currently during iteration over a ByteBufferMessageSet we throw an exception if there are zero messages in the set. This is used to detect fetches that are smaller than a single message size. I think this behavior is misplaced and should be moved up into the consumer.
3. In addition to adding a key in Message, I made two other changes: (1) I moved the CRC to the first field and made it cover the entire message contents (previously it only covered the payload), (2) I dropped support for Magic=0, effectively making the attributes field required, which simplifies the code (since we are breaking compatibility anyway).


---

* [KAFKA-505](https://issues.apache.org/jira/browse/KAFKA-505) | *Major* | **Remove errorcode from TopicMetaDataResponse**

TopicMetaData has an errorcode, hence the errorcode in TopicMetaDataResponse can be removed. Accordingly modify the handleTopicMetaDataRequest to return errorcodes at partition level.


---

* [KAFKA-503](https://issues.apache.org/jira/browse/KAFKA-503) | *Major* | **Support "testcase\_to\_run" or "testcase\_to\_skip"**

It would be nice that the test framework can read config files such as:
- system\_test/testcase\_to\_run.json
- system\_test/testcase\_to\_skip.json

in such a format: 
{
    "ReplicaBasicTest": [ "testcase\_2", "testcase\_3", "testcase\_4", "testcase\_5", "testcase\_6" ]
}


---

* [KAFKA-502](https://issues.apache.org/jira/browse/KAFKA-502) | *Major* | **Simplify setup / initialization in replication\_basic\_test.py**

The setup and initialization could be simplified by moving some common code to a base class or some helper functions


---

* [KAFKA-501](https://issues.apache.org/jira/browse/KAFKA-501) | *Blocker* | **getOfffset Api needs to return different latest offset to regular and follower consumers**

For follower consumers, getOffset should return logEndOffset as the latest offset. For regular consumers, getOffset should return highWatermark as the latest offset.


---

* [KAFKA-500](https://issues.apache.org/jira/browse/KAFKA-500) | *Blocker* | **javaapi support for getTopoicMetaData**

TopicMetaRequest and TopicMetaResponse use scala Seq and Option. We need a version so that java applications can use more easily.


---

* [KAFKA-499](https://issues.apache.org/jira/browse/KAFKA-499) | *Blocker* | **Refactor controller state machine**

Currently, the controller logic is very procedural and is similar to KafkaZookeeper. Controller should have a well defined state machine with states and transitions. This will make it easier to understand and maintain the controller code.


---

* [KAFKA-497](https://issues.apache.org/jira/browse/KAFKA-497) | *Blocker* | **recover consumer during unclean leadership change**

When we do an unclean leadership change (i.e., no live broker in ISR), offsets already exposed to consumers may no longer be valid. As a result, a consumer could either receive an OffsetOutOfRange exception or hit an InvalidMessageSizeException while iterating a fetched message set. In either case, we need to be able to recover the consumption (probably from the current latest offset from the leader). We need to recover both regular and follower consumers.


---

* [KAFKA-495](https://issues.apache.org/jira/browse/KAFKA-495) | *Major* | **Handle topic names with "/" on Kafka server**

If a producer publishes data to topic "foo/foo", the Kafka server ends up creating an invalid directory structure on the server. This corrupts the zookeeper data structure for the topic - /brokers/topics/foo/foo. This leads to rebalancing failures on the consumer as well as errors on the zookeeper based producer. 

We need to harden the invalid topic handling on the Kafka server side to avoid this.


---

* [KAFKA-494](https://issues.apache.org/jira/browse/KAFKA-494) | *Major* | **Relative paths should be used for svg URLs in dashboards html**

Relative paths should be used for svg URLs in dashboards html in order to be recognized by Hudson job running in Tomcat.


---

* [KAFKA-492](https://issues.apache.org/jira/browse/KAFKA-492) | *Major* | **Sometimes the python system test framework doesn't terminate all running processes**

The system test framework keeps track of the parent pids of all running processes such as brokers, zookeeper, JmxTool, producer, consumer. Sometimes, the children processes of one or two brokers are not terminated properly. This is not consistently reproducible.


---

* [KAFKA-491](https://issues.apache.org/jira/browse/KAFKA-491) | *Major* | **KafkaRequestHandler needs to handle exceptions**

Currently, if apis.handle() throws an exception (e.g., if the broker receives an invalid request), KafkaRequestHandler will die. We need to handle exceptions properly.


---

* [KAFKA-490](https://issues.apache.org/jira/browse/KAFKA-490) | *Blocker* | **Check max message size on server instead of producer**

Message size is checked currently only in SyncProducer and not at the server. Therefore, non-java clients can push bigger messages to the server. Need a message size check at the server. Can remove the check from producer side since server can send acks in 0.8.


---

* [KAFKA-481](https://issues.apache.org/jira/browse/KAFKA-481) | *Major* | **Require values in Utils.getTopic* methods to be positive**

KafkaConfig can currently accept negative values for topic specific properties, need to prevent this.


---

* [KAFKA-475](https://issues.apache.org/jira/browse/KAFKA-475) | *Major* | **Time based log segment rollout**

Some applications might want their data to be deleted from the Kafka servers earlier than the default retention time.


---

* [KAFKA-474](https://issues.apache.org/jira/browse/KAFKA-474) | *Major* | **support changing host/port of a broker**

Currently, the consumer client caches the host/port of a broker and never refreshes the cache. This means that if a broker changes to a different host, the consumer client won't be able to connect to the new host without a restart. One possibility is to change AbstractFetcherManager to maintain a map of <Broker, fetcher>, instead of <broker id, fetcher>.


---

* [KAFKA-473](https://issues.apache.org/jira/browse/KAFKA-473) | *Blocker* | **Use getMetadata Api in ZookeeperConsumerConnector**

Currently, ZookeeperConsumerConnector gets topic metadata from ZK directly. It's better to use the getMetadata Api since it's batched. This is especially helpful if the consumer client is in a different data center.


---

* [KAFKA-471](https://issues.apache.org/jira/browse/KAFKA-471) | *Major* | **Transient failure in ProducerTest**

[0m[[31merror[0m] [0mTest Failed: testSendToNewTopic(kafka.producer.ProducerTest)[0m
java.lang.AssertionError: Message set should not have any more messages
	at org.junit.Assert.fail(Assert.java:69)
	at org.junit.Assert.assertTrue(Assert.java:32)
	at org.junit.Assert.assertFalse(Assert.java:51)
	at kafka.producer.ProducerTest.testSendToNewTopic(ProducerTest.scala:183)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at junit.framework.TestCase.runTest(TestCase.java:164)
	at junit.framework.TestCase.runBare(TestCase.java:130)
	at junit.framework.TestResult$1.protect(TestResult.java:110)
	at junit.framework.TestResult.runProtected(TestResult.java:128)
	at junit.framework.TestResult.run(TestResult.java:113)
	at junit.framework.TestCase.run(TestCase.java:120)
	at junit.framework.TestSuite.runTest(TestSuite.java:228)
	at junit.framework.TestSuite.run(TestSuite.java:223)
	at junit.framework.TestSuite.runTest(TestSuite.java:228)
	at junit.framework.TestSuite.run(TestSuite.java:223)
	at org.scalatest.junit.JUnit3Suite.run(JUnit3Suite.scala:309)
	at org.scalatest.tools.ScalaTestFramework$ScalaTestRunner.run(ScalaTestFramework.scala:40)
	at sbt.TestRunner.run(TestFramework.scala:53)
	at sbt.TestRunner.runTest$1(TestFramework.scala:67)
	at sbt.TestRunner.run(TestFramework.scala:76)
	at sbt.TestFramework$$anonfun$10$$anonfun$apply$11.runTest$2(TestFramework.scala:194)
	at sbt.TestFramework$$anonfun$10$$anonfun$apply$11$$anonfun$apply$12.apply(TestFramework.scala:205)
	at sbt.TestFramework$$anonfun$10$$anonfun$apply$11$$anonfun$apply$12.apply(TestFramework.scala:205)
	at sbt.NamedTestTask.run(TestFramework.scala:92)
	at sbt.ScalaProject$$anonfun$sbt$ScalaProject$$toTask$1.apply(ScalaProject.scala:193)
	at sbt.ScalaProject$$anonfun$sbt$ScalaProject$$toTask$1.apply(ScalaProject.scala:193)
	at sbt.TaskManager$Task.invoke(TaskManager.scala:62)
	at sbt.impl.RunTask.doRun$1(RunTask.scala:77)
	at sbt.impl.RunTask.runTask(RunTask.scala:85)
	at sbt.impl.RunTask.sbt$impl$RunTask$$runIfNotRoot(RunTask.scala:60)
	at sbt.impl.RunTask$$anonfun$runTasksExceptRoot$2.apply(RunTask.scala:48)
	at sbt.impl.RunTask$$anonfun$runTasksExceptRoot$2.apply(RunTask.scala:48)
	at sbt.Distributor$Run$Worker$$anonfun$2.apply(ParallelRunner.scala:131)
	at sbt.Distributor$Run$Worker$$anonfun$2.apply(ParallelRunner.scala:131)
	at sbt.Control$.trapUnit(Control.scala:19)
	at sbt.Distributor$Run$Worker.run(ParallelRunner.scala:131)


---

* [KAFKA-470](https://issues.apache.org/jira/browse/KAFKA-470) | *Major* | **transient unit test failure in RequestPurgatoryTest**

[error] Test Failed: testRequestExpirey(kafka.server.RequestPurgatoryTest)
junit.framework.AssertionFailedError: Time for expiration was about 20ms
	at junit.framework.Assert.fail(Assert.java:47)
	at junit.framework.Assert.assertTrue(Assert.java:20)
	at kafka.server.RequestPurgatoryTest.testRequestExpirey(RequestPurgatoryTest.scala:75)


---

* [KAFKA-468](https://issues.apache.org/jira/browse/KAFKA-468) | *Trivial* | **String#getBytes is platform dependent**

Just noticed while looking at the source that some calls to java.lang.String#getBytes do not include the encoding. They should probably specify "UTF-8" for platform-independence.


---

* [KAFKA-467](https://issues.apache.org/jira/browse/KAFKA-467) | *Major* | **Controller based leader election failed ERROR messages in LazyInitProducerTest**

[info] Test Starting: testMultiProduce(kafka.integration.LazyInitProducerTest)
[2012-08-17 08:46:45,165] ERROR Timing out after 500 ms since leader is not elected for topic test1 partition 0 (kafka.utils.TestUtils$:93)
[2012-08-17 08:46:45,668] ERROR Timing out after 500 ms since leader is not elected for topic test2 partition 0 (kafka.utils.TestUtils$:93)
[2012-08-17 08:46:46,171] ERROR Timing out after 500 ms since leader is not elected for topic test3 partition 0 (kafka.utils.TestUtils$:93)
[info] Test Passed: testMultiProduce(kafka.integration.LazyInitProducerTest)
[info] Test Starting: testMultiProduceResend(kafka.integration.LazyInitProducerTest)
[2012-08-17 08:46:49,028] ERROR Timing out after 1500 ms since leader is not elected for topic test1 partition 0 (kafka.utils.TestUtils$:93)
[2012-08-17 08:46:50,531] ERROR Timing out after 1500 ms since leader is not elected for topic test2 partition 0 (kafka.utils.TestUtils$:93)
[2012-08-17 08:46:52,034] ERROR Timing out after 1500 ms since leader is not elected for topic test3 partition 0 (kafka.utils.TestUtils$:93)
[info] Test Passed: testMultiProduceResend(kafka.integration.LazyInitProducerTest)

Leader election should not time out


---

* [KAFKA-464](https://issues.apache.org/jira/browse/KAFKA-464) | *Major* | **KafkaController NPE in SessionExpireListener**

Sometime see the following in LogRecoverTest.

[2012-08-15 09:06:01,845] ERROR Error handling event ZkEvent[New session event sent to kafka.server.KafkaController$SessionExpireListener@e8ae59a] (org.I0Itec.zkclient.ZkEventThread)
java.lang.NullPointerException
	at kafka.server.KafkaController$SessionExpireListener.handleNewSession(KafkaController.scala:284)
	at org.I0Itec.zkclient.ZkClient$4.run(ZkClient.java:472)
	at org.I0Itec.zkclient.ZkEventThread.run(ZkEventThread.java:71)


---

* [KAFKA-463](https://issues.apache.org/jira/browse/KAFKA-463) | *Blocker* | **log.truncateTo needs to handle targetOffset smaller than the lowest offset in the log**

When this happens, we should truncate all existing log segments.


---

* [KAFKA-461](https://issues.apache.org/jira/browse/KAFKA-461) | *Major* | **remove support for format for magic byte 0 in 0.8**

Since 0.8 is a non-backward compatible release, should we remove the support for magic byte 0 in Message and support only magic byte 1?


---

* [KAFKA-459](https://issues.apache.org/jira/browse/KAFKA-459) | *Major* | **KafkaController.RequestSendThread can throw exception on broker socket**

It can hit NullPointerException at line 74 in KafkaController


---

* [KAFKA-458](https://issues.apache.org/jira/browse/KAFKA-458) | *Major* | **remove errorcode from ByteBufferMessageSet**

Since the FetchResponse already has errorcode, there is no need to keep errorcode in ByteBufferMessageSet any more.


---

* [KAFKA-456](https://issues.apache.org/jira/browse/KAFKA-456) | *Minor* | **ProducerSendThread calls ListBuffer.size a whole bunch. That is a O(n) operation**

Hi all,

So there are various statements throughout the async code that call 'events.size', mostly for debugging purposes.
Problem is that this call is O(n), so it could add up if the batch size is high. (it's a ListBuffer)

I see this in at least ProducerSendThread (x4), likely more. Will factor this out myself soon when I start hacking on the project, just wanted to put this somewhere.


---

* [KAFKA-440](https://issues.apache.org/jira/browse/KAFKA-440) | *Major* | **Create a regression test framework for distributed environment testing**

Initial requirements:

1. The whole test framework is preferably coded in Python (a common scripting language which has well supported features)

2. Test framework driver should be generic (distributed environment can be local host)

3. Test framework related configurations are defined in JSON format

4. Test environment, suite, case definitions may be defined in the following levels:
  4-a entity\_id is used as a key for looking up related config from different levels

  4-b Cluster level defines: entity\_id, hostname, kafka\_home, java\_home, ...

  4-c Test suite / case level defines:
    4-c-1 zookeeper: entity\_id, clientPort, dataDir, log\_filename, config\_filename
    4-c-2 broker: entity\_id, port, log.file.size, log.dir, log\_filename, config\_filename
    4-c-3 producer: entity\_id, topic, threads, compression-codec, message-size, log\_filename, config\_filename


---

* [KAFKA-439](https://issues.apache.org/jira/browse/KAFKA-439) | *Trivial* | **@returns was used in scala doc when it should have been @return**

Couple of files had the return doc tag written as "@returns" instead of "@return", so it's missing from the API docs for the public method of Utils.

File: Producer.scala
File: Utils.scala


---

* [KAFKA-431](https://issues.apache.org/jira/browse/KAFKA-431) | *Major* | **LogCorruptionTest.testMessageSizeTooLarge fails occasionally**

It fails with the following exception:

[0m[[0minfo[0m] [0mTest Starting: testMessageSizeTooLarge(kafka.log.LogCorruptionTest)[0m
[2012-07-31 15:54:57,525] ERROR KafkaApi on Broker 0, Error while retrieving topic metadata (kafka.server.KafkaApis:99)
java.lang.NullPointerException
	at scala.util.parsing.combinator.Parsers$NoSuccess.<init>(Parsers.scala:131)
	at scala.util.parsing.combinator.Parsers$Failure.<init>(Parsers.scala:158)
	at scala.util.parsing.combinator.Parsers$$anonfun$acceptIf$1.apply(Parsers.scala:489)
	at scala.util.parsing.combinator.Parsers$$anonfun$acceptIf$1.apply(Parsers.scala:487)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Success.flatMapWithNext(Parsers.scala:113)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1$$anonfun$apply$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Failure.append(Parsers.scala:162)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Success.flatMapWithNext(Parsers.scala:113)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Success.flatMapWithNext(Parsers.scala:113)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Success.flatMapWithNext(Parsers.scala:113)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$flatMap$1.apply(Parsers.scala:200)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$map$1.apply(Parsers.scala:203)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$Parser$$anonfun$append$1.apply(Parsers.scala:208)
	at scala.util.parsing.combinator.Parsers$$anon$3.apply(Parsers.scala:182)
	at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:742)
	at scala.util.parsing.json.JSON$.parseRaw(JSON.scala:71)
	at scala.util.parsing.json.JSON$.parseFull(JSON.scala:85)
	at kafka.utils.ZkUtils$$anonfun$getPartitionAssignmentForTopics$1.apply(ZkUtils.scala:461)
	at kafka.utils.ZkUtils$$anonfun$getPartitionAssignmentForTopics$1.apply(ZkUtils.scala:456)
	at scala.collection.Iterator$class.foreach(Iterator.scala:631)
	at scala.collection.LinearSeqLike$$anon$1.foreach(LinearSeqLike.scala:52)
	at kafka.utils.ZkUtils$.getPartitionAssignmentForTopics(ZkUtils.scala:456)
	at kafka.admin.AdminUtils$$anonfun$getTopicMetaDataFromZK$1.apply(AdminUtils.scala:93)
	at kafka.admin.AdminUtils$$anonfun$getTopicMetaDataFromZK$1.apply(AdminUtils.scala:91)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
	at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
	at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
	at scala.collection.immutable.List.foreach(List.scala:45)
	at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)
	at scala.collection.immutable.List.map(List.scala:45)
	at kafka.admin.AdminUtils$.getTopicMetaDataFromZK(AdminUtils.scala:91)
	at kafka.server.KafkaApis$$anonfun$handleTopicMetadataRequest$1.apply(KafkaApis.scala:433)
	at kafka.server.KafkaApis$$anonfun$handleTopicMetadataRequest$1.apply(KafkaApis.scala:423)
	at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
	at scala.collection.immutable.List.foreach(List.scala:45)
	at kafka.server.KafkaApis.handleTopicMetadataRequest(KafkaApis.scala:422)
	at kafka.server.KafkaApis.handle(KafkaApis.scala:61)
	at kafka.server.KafkaRequestHandler.run(KafkaRequestHandler.scala:38)
	at java.lang.Thread.run(Thread.java:662)


---

* [KAFKA-429](https://issues.apache.org/jira/browse/KAFKA-429) | *Major* | **Expose JMX operation to set logger level dynamically**

With KAFKA-16, we can change logger levels dynamically, but that is a global setting - i.e., it affects logging in all classes. It would be useful to expose a setLoggerLevel/add appenders operation that can be applied to classes/packages.

We should also add this for the tools (and not just the broker) - e.g., mirror-maker, console consumer, etc.


---

* [KAFKA-428](https://issues.apache.org/jira/browse/KAFKA-428) | *Major* | **need to update leaderAndISR path in ZK conditionally in ReplicaManager**

When the leader tries to update the leaderAndISR path in ZK, the path may have been updated by the controller. When this happens, the leader should abort the update and log it. The controller should send new requests to the leader later on.


---

* [KAFKA-425](https://issues.apache.org/jira/browse/KAFKA-425) | *Major* | **Wrong class name in performance test scripts**

perf tools were moved to perf by KAFKA-176 but scripts used to run those tools weren't updated accordingly.


---

* [KAFKA-424](https://issues.apache.org/jira/browse/KAFKA-424) | *Trivial* | **Remove invalid mirroring arguments from kafka-server-start.sh**

Since r1310645, mirroring is in MirrorMaker, and kafka.Kafka.main()
only supports a single argument.


---

* [KAFKA-420](https://issues.apache.org/jira/browse/KAFKA-420) | *Major* | **maintain HW correctly with only 1 replica in ISR**

Currently, the HW maintenance logic is only triggered when handling fetch requests from the follower. As a result, if the ISR has only 1 replica, the HW won't be incremented since there is no request from the follower to trigger the maintenance logic.


---

* [KAFKA-418](https://issues.apache.org/jira/browse/KAFKA-418) | *Major* | **NullPointerException in ConsumerFetcherManager**

[info] Test Starting: testConsumerDecoder(kafka.consumer.ZookeeperConsumerConnectorTest)
[2012-07-25 11:50:23,324] ERROR ConsumerFetcherThread-group1\_consumer1-0-1 error in fetching (kafka.consumer.ConsumerFetcherThread:99)
java.lang.NullPointerException
        at kafka.consumer.ConsumerFetcherManager.getPartitionTopicInfo(ConsumerFetcherManager.scala:124)
        at kafka.consumer.ConsumerFetcherThread.processPartitionData(ConsumerFetcherThread.scala:36)
        at kafka.server.AbstractFetcherThread$$anonfun$run$5$$anonfun$apply$1.apply(AbstractFetcherThread.scala:97)
        at kafka.server.AbstractFetcherThread$$anonfun$run$5$$anonfun$apply$1.apply(AbstractFetcherThread.scala:89)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:34)
        at scala.collection.mutable.ArrayOps.foreach(ArrayOps.scala:34)
        at kafka.server.AbstractFetcherThread$$anonfun$run$5.apply(AbstractFetcherThread.scala:89)
        at kafka.server.AbstractFetcherThread$$anonfun$run$5.apply(AbstractFetcherThread.scala:88)
        at scala.collection.IndexedSeqOptimized$class.foreach(IndexedSeqOptimized.scala:34)
        at scala.collection.mutable.ArrayOps.foreach(ArrayOps.scala:34)
        at kafka.server.AbstractFetcherThread.run(AbstractFetcherThread.scala:88)
[2012-07-25 11:50:23,328] ERROR Closing socket for /127.0.0.1 because of error (kafka.network.Processor:99)


---

* [KAFKA-416](https://issues.apache.org/jira/browse/KAFKA-416) | *Major* | **Controller tests throw several zookeeper errors**

[info] == kafka.controller.ControllerBasicTest ==
[info] Test Starting: testControllerFailOver(kafka.controller.ControllerBasicTest)
[2012-07-25 11:16:06,911] WARN Exception causing close of session 0x0 due to java.io.IOException: ZooKeeperServer not running (org.apache.zookeeper.server.NIOServerCnxn:639)
[info] Test Passed: testControllerFailOver(kafka.controller.ControllerBasicTest)
[info] Test Starting: testControllerCommandSend(kafka.controller.ControllerBasicTest)
[2012-07-25 11:16:13,802] WARN Session 0x138bf5a6e12000c for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:13,814] WARN Session 0x138bf5a6e12000a for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:13,822] WARN Session 0x138bf5a6e120008 for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:13,866] WARN Session 0x138bf5a6e12000b for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:14,153] WARN Session 0x138bf5a6e120006 for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:15,347] WARN Session 0x138bf5a6e12000c for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:15,712] WARN Session 0x138bf5a6e12000b for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:15,810] WARN Session 0x138bf5a6e12000a for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[2012-07-25 11:16:15,848] WARN Session 0x138bf5a6e120008 for server null, unexpected error, closing socket connection and attempting reconnect (org.apache.zookeeper.ClientCnxn:1188)
java.net.ConnectException: Connection refused
        at sun.nio.ch.SocketChannelImpl.checkConnect(Native Method)
        at sun.nio.ch.SocketChannelImpl.finishConnect(SocketChannelImpl.java:567)
        at org.apache.zookeeper.ClientCnxn$SendThread.run(ClientCnxn.java:1146)
[info] Test Passed: testControllerCommandSend(kafka.controller.ControllerBasicTest)

These error messages suggest that the controller is not closing zookeeper sessions correctly. It could also mean that the unit test doesn't close zookeeper sessions correctly.


---

* [KAFKA-415](https://issues.apache.org/jira/browse/KAFKA-415) | *Major* | **Controller throws NoSuchElementException while marking a broker failed**

[2012-07-25 11:13:50,078] ERROR Error while removing broker by the controller (kafka.server.ControllerChannelManager:99)
java.util.NoSuchElementException: key not found: 0
        at scala.collection.MapLike$class.default(MapLike.scala:223)
        at scala.collection.mutable.HashMap.default(HashMap.scala:39)
        at scala.collection.MapLike$class.apply(MapLike.scala:134)
        at scala.collection.mutable.HashMap.apply(HashMap.scala:39)
        at kafka.server.ControllerChannelManager.removeBroker(KafkaController.scala:138)
        at kafka.server.ControllerChannelManager$$anonfun$shutDown$3.apply(KafkaController.scala:111)
        at kafka.server.ControllerChannelManager$$anonfun$shutDown$3.apply(KafkaController.scala:110)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
        at scala.collection.mutable.HashMap$$anonfun$foreach$1.apply(HashMap.scala:80)
        at scala.collection.Iterator$class.foreach(Iterator.scala:631)
        at scala.collection.mutable.HashTable$$anon$1.foreach(HashTable.scala:161)
        at scala.collection.mutable.HashTable$class.foreachEntry(HashTable.scala:194)
        at scala.collection.mutable.HashMap.foreachEntry(HashMap.scala:39)
        at scala.collection.mutable.HashMap.foreach(HashMap.scala:80)
        at kafka.server.ControllerChannelManager.shutDown(KafkaController.scala:110)
        at kafka.server.KafkaController.shutDown(KafkaController.scala:197)
        at kafka.server.KafkaServer.shutdown(KafkaServer.scala:126)
        at kafka.server.LogRecoveryTest$$anonfun$testHWCheckpointWithFailuresMultipleLogSegments$5.apply(LogRecoveryTest.scala:237)
        at kafka.server.LogRecoveryTest$$anonfun$testHWCheckpointWithFailuresMultipleLogSegments$5.apply(LogRecoveryTest.scala:237)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.TraversableLike$$anonfun$map$1.apply(TraversableLike.scala:206)
        at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
        at scala.collection.immutable.List.foreach(List.scala:45)
        at scala.collection.TraversableLike$class.map(TraversableLike.scala:206)
        at scala.collection.immutable.List.map(List.scala:45)
        at kafka.server.LogRecoveryTest.testHWCheckpointWithFailuresMultipleLogSegments(LogRecoveryTest.scala:237)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
        at java.lang.reflect.Method.invoke(Method.java:597)
        at junit.framework.TestCase.runTest(TestCase.java:164)
        at junit.framework.TestCase.runBare(TestCase.java:130)
        at junit.framework.TestResult$1.protect(TestResult.java:110)
        at junit.framework.TestResult.runProtected(TestResult.java:128)
        at junit.framework.TestResult.run(TestResult.java:113)
        at junit.framework.TestCase.run(TestCase.java:120)
        at junit.framework.TestSuite.runTest(TestSuite.java:228)
        at junit.framework.TestSuite.run(TestSuite.java:223)
        at junit.framework.TestSuite.runTest(TestSuite.java:228)
        at junit.framework.TestSuite.run(TestSuite.java:223)
        at org.scalatest.junit.JUnit3Suite.run(JUnit3Suite.scala:309)
        at org.scalatest.tools.ScalaTestFramework$ScalaTestRunner.run(ScalaTestFramework.scala:40)
        at sbt.TestRunner.run(TestFramework.scala:53)
        at sbt.TestRunner.runTest$1(TestFramework.scala:67)
        at sbt.TestRunner.run(TestFramework.scala:76)
        at sbt.TestFramework$$anonfun$10$$anonfun$apply$11.runTest$2(TestFramework.scala:194)
        at sbt.TestFramework$$anonfun$10$$anonfun$apply$11$$anonfun$apply$12.apply(TestFramework.scala:205)
        at sbt.TestFramework$$anonfun$10$$anonfun$apply$11$$anonfun$apply$12.apply(TestFramework.scala:205)
        at sbt.NamedTestTask.run(TestFramework.scala:92)
        at sbt.ScalaProject$$anonfun$sbt$ScalaProject$$toTask$1.apply(ScalaProject.scala:193)
        at sbt.ScalaProject$$anonfun$sbt$ScalaProject$$toTask$1.apply(ScalaProject.scala:193)
        at sbt.TaskManager$Task.invoke(TaskManager.scala:62)
        at sbt.impl.RunTask.doRun$1(RunTask.scala:77)
        at sbt.impl.RunTask.runTask(RunTask.scala:85)
        at sbt.impl.RunTask.sbt$impl$RunTask$$runIfNotRoot(RunTask.scala:60)
        at sbt.impl.RunTask$$anonfun$runTasksExceptRoot$2.apply(RunTask.scala:48)
        at sbt.impl.RunTask$$anonfun$runTasksExceptRoot$2.apply(RunTask.scala:48)
        at sbt.Distributor$Run$Worker$$anonfun$2.apply(ParallelRunner.scala:131)
        at sbt.Distributor$Run$Worker$$anonfun$2.apply(ParallelRunner.scala:131)
        at sbt.Control$.trapUnit(Control.scala:19)
        at sbt.Distributor$Run$Worker.run(ParallelRunner.scala:131)
[info] Test Passed: testHWCheckpointWithFailuresMultipleLogSegments(kafka.server.LogRecoveryTest)


---

* [KAFKA-413](https://issues.apache.org/jira/browse/KAFKA-413) | *Major* | **single\_host\_multi\_brokers system test fails on laptop**

 I got the following exception when running system\_test/single\_host\_multi\_brokers/bin/run-test.sh. This seems to only happen on laptop, not desktop.

2012-07-24 00:22:51 cleaning up kafka server log/data dir 
2012-07-24 00:22:53 starting zookeeper 
2012-07-24 00:22:55 starting cluster 
2012-07-24 00:22:55 starting kafka server 
2012-07-24 00:22:55 -> kafka\_pids[1]: 75282 
2012-07-24 00:22:55 starting kafka server 
2012-07-24 00:22:55 -> kafka\_pids[2]: 75286 
2012-07-24 00:22:55 starting kafka server 
2012-07-24 00:22:55 -> kafka\_pids[3]: 75291 
2012-07-24 00:22:57 creating topic [mytest] on [localhost:2181] 
creation failed because of org.apache.zookeeper.KeeperException$NoNodeException: KeeperErrorCode = NoNode for /brokers/ids 
org.I0Itec.zkclient.exception.ZkNoNodeException: org.apache.zookeeper.KeeperException$NoNodeException: KeeperErrorCode = NoNode for /brokers/ids 
at org.I0Itec.zkclient.exception.ZkException.create(ZkException.java:47) 
at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:685) 
at org.I0Itec.zkclient.ZkClient.getChildren(ZkClient.java:413) 
at org.I0Itec.zkclient.ZkClient.getChildren(ZkClient.java:409) 
at kafka.utils.ZkUtils$.getChildren(ZkUtils.scala:363) 
at kafka.utils.ZkUtils$.getSortedBrokerList(ZkUtils.scala:80) 
at kafka.admin.CreateTopicCommand$.createTopic(CreateTopicCommand.scala:86) 
at kafka.admin.CreateTopicCommand$.main(CreateTopicCommand.scala:73) 
at kafka.admin.CreateTopicCommand.main(CreateTopicCommand.scala) 
Caused by: org.apache.zookeeper.KeeperException$NoNodeException: KeeperErrorCode = NoNode for /brokers/ids 
at org.apache.zookeeper.KeeperException.create(KeeperException.java:102) 
at org.apache.zookeeper.KeeperException.create(KeeperException.java:42) 
at org.apache.zookeeper.ZooKeeper.getChildren(ZooKeeper.java:1249) 
at org.apache.zookeeper.ZooKeeper.getChildren(ZooKeeper.java:1277) 
at org.I0Itec.zkclient.ZkConnection.getChildren(ZkConnection.java:99) 
at org.I0Itec.zkclient.ZkClient$2.call(ZkClient.java:416) 
at org.I0Itec.zkclient.ZkClient$2.call(ZkClient.java:413) 
at org.I0Itec.zkclient.ZkClient.retryUntilConnected(ZkClient.java:675) 
... 7 more


---

* [KAFKA-412](https://issues.apache.org/jira/browse/KAFKA-412) | *Major* | **deal with empty TopicData list in producer and fetch request**

Both producer and fetch request can pass in an empty list of TopicData. Instead of handling those requests through RequestPurgatory, we should just send a response with an empty list immediately.


---

* [KAFKA-396](https://issues.apache.org/jira/browse/KAFKA-396) | *Major* | **Mirroring system test fails on 0.8**

Just making a note of this - will look into this later.


---

* [KAFKA-393](https://issues.apache.org/jira/browse/KAFKA-393) | *Major* | **Add constructor for message which takes both byte array offset and length**

This would avoid an extra copying step for clients that (for whatever reason) have multiple messages in a byte[] to push into kafka.


---

* [KAFKA-391](https://issues.apache.org/jira/browse/KAFKA-391) | *Blocker* | **Producer request and response classes should use maps**

Producer response contains two arrays of error codes and offsets - the ordering in these arrays correspond to the flattened ordering of the request arrays.

It would be better to switch to maps in the request and response as this would make the code clearer and more efficient (right now, linear scans are used in handling producer acks).

We can probably do the same in the fetch request/response.


---

* [KAFKA-386](https://issues.apache.org/jira/browse/KAFKA-386) | *Major* | **Race condition in accessing ISR**

Also brought up in KAFKA-353 - Partition's inSyncReplicas is used by both KafkaApis and ReplicaManager; and is subject to concurrent writes. Should be able to just switch it to an AtomicReference, but need to look at the code more carefully to determine if that is sufficient.


---

* [KAFKA-385](https://issues.apache.org/jira/browse/KAFKA-385) | *Major* | **RequestPurgatory enhancements - expire/checkSatisfy issue; add jmx beans**

As discussed in KAFKA-353:
1 - There is potential for a client-side race condition in the implementations of expire and checkSatisfied. We can just synchronize on the DelayedItem.
2 - Would be good to add jmx beans to facilitate monitoring RequestPurgatory stats.


---

* [KAFKA-379](https://issues.apache.org/jira/browse/KAFKA-379) | *Major* | **TopicCount.constructTopicCount isn't thread-safe**

TopicCount uses scala.util.parsing.json.JSON, which isn't thread-safe https://issues.scala-lang.org/browse/SI-4929

If you have multiple consumers within the same JVM, and they all rebalance at the same time, you can get errors like the following:

[...] kafka.consumer.TopicCount$.constructTopicCount:39] ERROR: error parsing consumer json string [...]
java.lang.NullPointerException
        at scala.util.parsing.combinator.Parsers$NoSuccess.<init>(Parsers.scala:131)
        at scala.util.parsing.combinator.Parsers$Failure.<init>(Parsers.scala:158)
        at scala.util.parsing.combinator.Parsers$$anonfun$acceptIf$1.apply(Parsers.scala:489)
        ...
        at scala.util.parsing.combinator.Parsers$$anon$2.apply(Parsers.scala:742)
        at scala.util.parsing.json.JSON$.parseRaw(JSON.scala:71)
        at scala.util.parsing.json.JSON$.parseFull(JSON.scala:85)
        at kafka.consumer.TopicCount$.constructTopicCount(TopicCount.scala:32)
        at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.kafka$consumer$ZookeeperConsumerConnector$ZKRebalancerListener$$getTopicCount(ZookeeperConsumerConnector.scala:422)
        at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.kafka$consumer$ZookeeperConsumerConnector$ZKRebalancerListener$$rebalance(ZookeeperConsumerConnector.scala:460)
        at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener$$anonfun$syncedRebalance$1.apply$mcVI$sp(ZookeeperConsumerConnector.scala:437)
        at scala.collection.immutable.Range$ByOne$class.foreach$mVc$sp(Range.scala:282)
        at scala.collection.immutable.Range$$anon$2.foreach$mVc$sp(Range.scala:265)
        at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.syncedRebalance(ZookeeperConsumerConnector.scala:433)
        at kafka.consumer.ZookeeperConsumerConnector$ZKRebalancerListener.handleChildChange(ZookeeperConsumerConnector.scala:375)
        at org.I0Itec.zkclient.ZkClient$7.run(ZkClient.java:568)
        at org.I0Itec.zkclient.ZkEventThread.run(ZkEventThread.java:71)

I ran into this on 0.7.0, but the code in trunk appears to be vulnerable to the same issue.


---

* [KAFKA-376](https://issues.apache.org/jira/browse/KAFKA-376) | *Major* | **expose different data to fetch requests from the follower replicas and consumer clients**

Currently, the broker always uses highwatermark to calculate the available bytes to a fetch request, no matter where the request is from. Instead, we should use highwatermark for requests coming from real consumer clients and use logendoffset for requests coming from follower replicas.


---

* [KAFKA-371](https://issues.apache.org/jira/browse/KAFKA-371) | *Major* | **Creating topic of empty string puts broker in a bad state**

Using the Java client library, I accidentally published a message where the topic name was the empty string. This put the broker in a bad state where publishing became impossible, and the following exception was logged 10-20 times per second:

2012-06-21 00:41:30,324 [kafka-processor-3] ERROR kafka.network.Processor  - Closing socket for /127.0.0.1 because of er
ror
kafka.common.InvalidTopicException: topic name can't be empty
        at kafka.log.LogManager.getOrCreateLog(LogManager.scala:165)
        at kafka.server.KafkaRequestHandlers.kafka$server$KafkaRequestHandlers$$handleProducerRequest(KafkaRequestHandle
rs.scala:75)
        at kafka.server.KafkaRequestHandlers.handleProducerRequest(KafkaRequestHandlers.scala:58)
        at kafka.server.KafkaRequestHandlers$$anonfun$handlerFor$1.apply(KafkaRequestHandlers.scala:43)
        at kafka.server.KafkaRequestHandlers$$anonfun$handlerFor$1.apply(KafkaRequestHandlers.scala:43)
        at kafka.network.Processor.handle(SocketServer.scala:289)
        at kafka.network.Processor.read(SocketServer.scala:312)
        at kafka.network.Processor.run(SocketServer.scala:207)
        at java.lang.Thread.run(Thread.java:679)

Restarting Kafka did not help. I had to manually clear out the bad state in Zookeeper to resolve the problem.

The broker should not accept a message that would put it in such a bad state.


---

* [KAFKA-370](https://issues.apache.org/jira/browse/KAFKA-370) | *Major* | **Exception "java.util.NoSuchElementException: None.get" appears inconsistently in Mirror Maker log.**

Exception in Mirror Maker log:
=========================
[2012-06-20 10:56:04,364] DEBUG Getting broker partition info for topic test01 (kafka.producer.BrokerPartitionInfo)
[2012-06-20 10:56:04,365] INFO Fetching metadata for topic test01 (kafka.producer.BrokerPartitionInfo)
[2012-06-20 10:56:04,366] ERROR Error in handling batch of 200 events (kafka.producer.async.ProducerSendThread)
java.util.NoSuchElementException: None.get
        at scala.None$.get(Option.scala:185)
        at scala.None$.get(Option.scala:183)
        at kafka.producer.ProducerPool.getAnyProducer(ProducerPool.scala:76)
        at kafka.producer.BrokerPartitionInfo.updateInfo(BrokerPartitionInfo.scala:73)
        at kafka.producer.BrokerPartitionInfo.getBrokerPartitionInfo(BrokerPartitionInfo.scala:45)
        at kafka.producer.async.DefaultEventHandler.kafka$producer$async$DefaultEventHandler$$getPartitionListForTopic(DefaultEventHandler.scala:129)
        at kafka.producer.async.DefaultEventHandler$$anonfun$partitionAndCollate$1.apply(DefaultEventHandler.scala:95)
        at kafka.producer.async.DefaultEventHandler$$anonfun$partitionAndCollate$1.apply(DefaultEventHandler.scala:94)
        at scala.collection.LinearSeqOptimized$class.foreach(LinearSeqOptimized.scala:61)
        at scala.collection.immutable.List.foreach(List.scala:45)
        at scala.collection.generic.TraversableForwarder$class.foreach(TraversableForwarder.scala:44)
        at scala.collection.mutable.ListBuffer.foreach(ListBuffer.scala:42)
        at kafka.producer.async.DefaultEventHandler.partitionAndCollate(DefaultEventHandler.scala:94)
        at kafka.producer.async.DefaultEventHandler.dispatchSerializedData(DefaultEventHandler.scala:65)
        at kafka.producer.async.DefaultEventHandler.handle(DefaultEventHandler.scala:49)
        at kafka.producer.async.ProducerSendThread.tryToHandle(ProducerSendThread.scala:96)
        at kafka.producer.async.ProducerSendThread$$anonfun$processEvents$3.apply(ProducerSendThread.scala:82)
        at kafka.producer.async.ProducerSendThread$$anonfun$processEvents$3.apply(ProducerSendThread.scala:60)
        at scala.collection.immutable.Stream.foreach(Stream.scala:254)
        at kafka.producer.async.ProducerSendThread.processEvents(ProducerSendThread.scala:59)
        at kafka.producer.async.ProducerSendThread.run(ProducerSendThread.scala:37)

Steps to reproduce
=================
It cannot be reproduced consistently. However, running the following script 2 or 3 times (step 2) will show the error:

1. Apply kafka-306-v2.patch to 0.8 branch (revision 1352192 is used to reproduce this)

2. Under the directory <kafka home>/system\_test/broker\_failure, execute the following command:
=> $ bin/run-test.sh 5 0

3. Check the log under the directory <kafka home>/system\_test/broker\_failure:
=> $ grep Exception `ls kafka\_mirror\_maker*.log`
=>    kafka\_mirror\_maker2.log:java.util.NoSuchElementException: None.get

4. Also the kafka log sizes between source and target will not match:

[/tmp]  $ find kafka* -name *.kafka -ls
19400444 6104 -rw-r--r--   1 jfung    eng       6246655 Jun 20 10:56 kafka-source4-logs/test01-0/00000000000000000000.kafka
19400819 5356 -rw-r--r--   1 jfung    eng       5483627 Jun 20 10:56 kafka-target3-logs/test01-0/00000000000000000000.kafka

Notes about the patch kafka-306-v2.patch
===============================
This patch fix the broker\_failure test suite to do the followings:

a. Start 4 kafka brokers as source cluster
b. Start 3 kafka brokers as target cluster
c. Start 3 mirror maker to enable mirroring
d. Send n messages to source cluster
e. No bouncing is performed in this test for simplicity
f. After the producer is stopped, validate the data count is matched between source & target


---

* [KAFKA-369](https://issues.apache.org/jira/browse/KAFKA-369) | *Major* | **remove ZK dependency on producer**

Currently, the only place that ZK is actually used is in BrokerPartitionInfo. We use ZK to get a list of brokers for making TopicMetadataRequest requests. Instead, we can provide a list of brokers in the producer config directly. That way, the producer client is no longer dependant on ZK.


---

* [KAFKA-367](https://issues.apache.org/jira/browse/KAFKA-367) | *Major* | **StringEncoder/StringDecoder use platform default character set**

StringEncoder and StringDecoder take the platform default character set. This is bad since the messages they produce are sent off that machine. We should
-- add a new required argument to these that adds the character set and default to UTF-8 rather than the machine setting
-- add a commandline parameter for the console-* tools to let you specify the correct encoding.


---

* [KAFKA-365](https://issues.apache.org/jira/browse/KAFKA-365) | *Major* | **change copyright in NOTICE to 2012**

need to change the copyright in NOTICE file to 2012


---

* [KAFKA-362](https://issues.apache.org/jira/browse/KAFKA-362) | *Major* | **ZookeeperConsumerConnector needs to connect to new leader after leadership change**

Currently, if the leader of a partition changes, the fetcher in ZookeeperConsumerConnector won't switch to the new leader automatically.


---

* [KAFKA-356](https://issues.apache.org/jira/browse/KAFKA-356) | *Major* | **Create a generic Kafka thread class that includes basic boiler plate code of instantiating and shutting down threads cleanly**

We have a lot of threads that basically run in a loop and use an isRunning atomic boolean and count down latch. It will be useful to refactor it out into a helper runnable that these can extend. Verifying the lifecycle details for each is kind of a pain and it pretty easy to either not cleanly shutdown all the threads.


---

* [KAFKA-352](https://issues.apache.org/jira/browse/KAFKA-352) | *Major* | **Throw exception to client if it makes a produce/consume request to a Kafka broker for a topic that hasn't been created**

It will be good to inform the client if it makes a produce/consume request to a Kafka broker for a topic that hasn't been created. The exception should be something like UnknownTopicException that is descriptive.


---

* [KAFKA-351](https://issues.apache.org/jira/browse/KAFKA-351) | *Major* | **Refactor some new components introduced for replication**

Jay had some good refactoring suggestions as part of the review for KAFKA-46. I'd like to file this umbrella JIRA with individual sub tasks to cover those suggestions


---

* [KAFKA-344](https://issues.apache.org/jira/browse/KAFKA-344) | *Blocker* | **migration tool from 0.7 to 0.8**

Since 0.8 is a non-backward compatible release, we need a migration tool. One way to do that is to have a tool that can mirror data from an 0.7 Kafka cluster into an 0.8 Kafka cluster. Once the mirror is set up, we can then first migrate the consumers to the 0.8 cluster, followed by the producers. After that, we can decommission the 0.7 cluster.


---

* [KAFKA-343](https://issues.apache.org/jira/browse/KAFKA-343) | *Major* | **revisit the become leader and become follower state change operations using V3 design**

We need to reimplement become leader/follower using the controller model described in https://cwiki.apache.org/confluence/display/KAFKA/kafka+Detailed+Replication+Design+V3


---

* [KAFKA-342](https://issues.apache.org/jira/browse/KAFKA-342) | *Major* | **revisit the broker startup procedure according to V3 design**

We need to change the implementation based on https://cwiki.apache.org/confluence/display/KAFKA/kafka+Detailed+Replication+Design+V3


---

* [KAFKA-339](https://issues.apache.org/jira/browse/KAFKA-339) | *Major* | **using MultiFetch in the follower**

A broker could be following multiple topic/partitions from the broker. Instead of using 1 fetcher thread per topic/partition, it would be more efficient to use 1 fetcher thread that issues multi-fetch requests.


---

* [KAFKA-338](https://issues.apache.org/jira/browse/KAFKA-338) | *Major* | **controller failover**

We want to implement that controller failover logic according to https://cwiki.apache.org/confluence/display/KAFKA/kafka+Detailed+Replication+Design+V3


---

* [KAFKA-337](https://issues.apache.org/jira/browse/KAFKA-337) | *Major* | **upgrade ZKClient to allow conditional updates in ZK**

Based on https://cwiki.apache.org/confluence/display/KAFKA/kafka+Detailed+Replication+Design+V3 , there are a few cases that we need to update a ZK path conditionally (based on ZK version). We will need to upgrade to the latest version of ZKClient that exposes the version of a ZK path during writes.


---

* [KAFKA-336](https://issues.apache.org/jira/browse/KAFKA-336) | *Major* | **add an admin RPC to communicate state changes between the controller and the broker**

Based on the discussion in https://cwiki.apache.org/confluence/display/KAFKA/kafka+Detailed+Replication+Design+V3 , it's more efficient to communicate state change commands between the controller and the broker using a direct RPC than via ZK. This ticket will be implementing an admin RPC client for the controller to send state change commands.


---

* [KAFKA-335](https://issues.apache.org/jira/browse/KAFKA-335) | *Major* | **Implement an embedded controller**

This ticket will implement a controller as described in https://cwiki.apache.org/confluence/display/KAFKA/kafka+Detailed+Replication+Design+V3

This includes creating the controller path, setting up necessary watchers (e.g, Broker path and TopicPath), and failover the controller.


---

* [KAFKA-329](https://issues.apache.org/jira/browse/KAFKA-329) | *Major* | **Remove the watches/broker for new topics and partitions and change create topic admin API to send start replica state change to all brokers**

Currently in 0.8, all brokers register a watch on /brokers/topics and /brokers/topics/[topic] for all topics in a Kafka cluster. The watches are required to discover new topics. 
There is another way this can be achieved, as proposed here - https://cwiki.apache.org/confluence/display/KAFKA/Kafka+replication+detailed+design+V2#KafkareplicationdetaileddesignV2-Createtopic

Basically, the create-topic admin command sends start-replica state change request to all brokers in the assigned replicas list.


---

* [KAFKA-325](https://issues.apache.org/jira/browse/KAFKA-325) | *Blocker* | **revisit broker config in 0.8**

With the create topic ddl, some of the broker configs like topic.partition.count.map probably don't make sense anymore.


---

* [KAFKA-324](https://issues.apache.org/jira/browse/KAFKA-324) | *Major* | **enforce broker.id to be a non-negative integer**

In DefaultEventHandler, it seems that we rely on the fact that broker.id is a non-negative integer. However, we don't enforce that in broker startup.


---

* [KAFKA-323](https://issues.apache.org/jira/browse/KAFKA-323) | *Major* | **Add the ability to use the async producer in the Log4j appender**

I needed the log4j appender to use the async producer, so I added a couple of configuration methods to the log4j appender. I only added methods for the configuration fields that I needed. There are several in in the various ProducerConfigs that still cannot be set in the appender.

Sample use:


			KafkaLog4jAppender kafkaAppender = new KafkaLog4jAppender();
			kafkaAppender.setZkConnect( "localhost:2181/kafka" );
			kafkaAppender.setTopic( "webapp" );
			kafkaAppender.setProducerType( "async" );
			kafkaAppender.setEnqueueTimeout( Integer.toString( Integer.MIN\_VALUE ) );
			kafkaAppender.activateOptions();


---

* [KAFKA-306](https://issues.apache.org/jira/browse/KAFKA-306) | *Major* | **broker failure system test broken on replication branch**

The system test in system\_test/broker\_failure is broken on the replication branch. This test is a pretty useful failure injection test that exercises the consumer rebalancing feature, various replication features like leader election. It will be good to have this test fixed as well as run on every checkin to the replication branch


---

* [KAFKA-305](https://issues.apache.org/jira/browse/KAFKA-305) | *Critical* | **SyncProducer does not correctly timeout**

So it turns out that using the channel in SyncProducer like we are to perform blocking reads will not trigger socket timeouts (though we set it) and will block forever which is bad.  This bug identifies the issue: http://bugs.sun.com/bugdatabase/view\_bug.do?bug\_id=4614802 and this article presents a potential work-around: http://stackoverflow.com/questions/2866557/timeout-for-socketchannel for workaround. The work-around is a simple solution that involves creating a separate ReadableByteChannel instance for timeout-enabled reads.


---

* [KAFKA-295](https://issues.apache.org/jira/browse/KAFKA-295) | *Major* | **Bug in async producer DefaultEventHandler retry logic**

In the DefaultEventHandler's retry loop, the logic should not return after a successful retry.  Rather, it should set a boolean flag indicating that the retry was successful and exit or break the while loop.  In the end it should throw an exception only the flag is false.  Otherwise, it should continue the outer for loop and send remaining data to remaning brokers.


---

* [KAFKA-285](https://issues.apache.org/jira/browse/KAFKA-285) | *Major* | **Increase maximum value of log.retention.size**

The log.retention.size property was retrieved as an Int, which means a maximum of Int.MaxValue (2 GB). This patch gets the property as a long.


---

* [KAFKA-271](https://issues.apache.org/jira/browse/KAFKA-271) | *Major* | **Modify new FetchResponse object to remove the initial offset field**

Currently in the 0.8 branch, the FetchResponse contains the initial offset field for a set of messages.  This field isn't technically required since the client should have access to the request, and therefore the initialOffset which it can set manually.  This should simplify the wire protocol.


---

* [KAFKA-267](https://issues.apache.org/jira/browse/KAFKA-267) | *Major* | **Enhance ProducerPerformance to generate unique random Long value for payload**

This is achieved by:
1. Adding a new class UniqueRandom to shuffle a range of numbers.
2. An optional new argument "start-index" is added to specify the starting number of the range to be shuffled. If this argument is omitted, it is defaulted to 1. So it is backward compatible with the argument options.
3. The ending number of the range is the starting number + number of messages - 1.


Other ProducerPerformance advancement: 
1. producing to multiple topics
2. supporting multiple instances of producer performance ( and distinguishes them)
3. allowing waiting some time after sending a request


---

* [KAFKA-259](https://issues.apache.org/jira/browse/KAFKA-259) | *Minor* | **Give better error message when trying to run shell scripts without having built/downloaded the jars yet**

Hi there, I've cloned from the kafka github repo and tried to run the start server script:

 ./bin/kafka-server-start.sh config/server.properties 

Which results in:

Exception in thread "main" java.lang.NoClassDefFoundError: kafka/Kafka
Caused by: java.lang.ClassNotFoundException: kafka.Kafka
	at java.net.URLClassLoader$1.run(URLClassLoader.java:202)
	at java.security.AccessController.doPrivileged(Native Method)
	at java.net.URLClassLoader.findClass(URLClassLoader.java:190)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:306)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:301)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:247)

It seems that Im missing a build step? what have I forgotten to do?

Thanks in advance and I look forward to using kafka.

regards
rcdh


---

* [KAFKA-258](https://issues.apache.org/jira/browse/KAFKA-258) | *Major* | **Remove broker.id from the broker.list config in the Producer**

The broker.list config option for the Producer requires the format to be a comma-separated list of "broker\_id:broker\_host:broker:port"

For ease of use, broker host and port should be sufficient to identify a broker. Making it necessary to use a broker id is unintuitive and can be error prone


---

* [KAFKA-253](https://issues.apache.org/jira/browse/KAFKA-253) | *Major* | **Refactor the async producer to have only one queue instead of one queue per broker in a Kafka cluster**

Today, the async producer is associated with a particular broker instance, just like the SyncProducer. The Producer maintains a producer pool of sync/async producers, one per broker. Since the producer pool creates one async producer per broker, we have multiple producer queues for one Producer instance. 

With replication, a topic partition will be logical. This requires refactoring the AsyncProducer to be broker agnostic. As a side effect of this refactoring, we should also ensure that we have only one queue per Producer instance.


---

* [KAFKA-240](https://issues.apache.org/jira/browse/KAFKA-240) | *Major* | **implement new producer and consumer request format**

We want to change the producer/consumer request/response format according to the discussion in the following wiki:

https://cwiki.apache.org/confluence/display/KAFKA/New+Wire+Format+Proposal


---

* [KAFKA-239](https://issues.apache.org/jira/browse/KAFKA-239) | *Major* | **Wire existing producer and consumer to use the new ZK data structure**

We can assume the leader of a partition is always the first replica. Data will only be stored in the first replica. So, there is no fault-tolerance support yet. Just make the partition logical.


---

* [KAFKA-237](https://issues.apache.org/jira/browse/KAFKA-237) | *Major* | **create/delete ZK path for a topic in an admin tool**

This subtask will implement a create/delete admin tool that create/delete the ZK paths needed for a new topic. The needed ZK paths are described in the design doc in KAFKA-50 and the discussion in KAFKA-47.


---

* [KAFKA-235](https://issues.apache.org/jira/browse/KAFKA-235) | *Major* | **Add a 'log.file.age' configuration parameter to force rotation of log files after they've reached a certain age**

The Kafka client has the ability to start consuming at an offset before or after a given point in time. The granularity of this offset is the log file as the Kafka servers do not keep track of arrival time of various messages.

This means that the granularity of offsets relative to time depends on arrival rate of messages and thus of log file rotation. A topic with lots of messages will have its log files rotated very often (thus each spans a short time interval) whereas a topic with very few messages might not see its log files rotated for hours.

In order to circumvent this granularity disparity, having a parameter that would force log file rotation after a certain delay (xxx ms) would allow for pretty much constant time granularity to be available at the cost of more file descriptor being used.


---

* [KAFKA-233](https://issues.apache.org/jira/browse/KAFKA-233) | *Major* | **The producer's load balancing logic can send requests to dead brokers, when using the async producer option**

The ZK producer, when used with the async producer option does the following 

1. Create a pool of async producers, one each for a broker registered under /broker/ids
2. On each send request, apply the Partitioner, to decide the broker and partition to send the data
3. Use the Async producer's send API to enqueue that data into the async producer's queue
4. When the data is dequeued by the ProducerSendThread, use the underlying sync producer to send it to the broker

The load balancing decision is taken in step 2, before entering the queue. This leaves a window of error, equal to the queue length, when a broker can go down. When this happens, potentially, a queue worth of data can fail to reach a broker, and will be dropped by the EventHandler. 

To correct this, the Producer, with the async option, needs to be refactored to allow only a single queue to hold all requests. And the application of the Partitioner should be moved to the end of the queue, in the EventHandler.


---

* [KAFKA-203](https://issues.apache.org/jira/browse/KAFKA-203) | *Major* | **Improve Kafka internal metrics**

Currently metrics in kafka are using old-school JMX directly. This makes adding metrics a pain. It would be good to do one of the following:
1. Convert to Coda Hale's metrics package (https://github.com/codahale/metrics)
2. Write a simple metrics package

The new metrics package should make metrics easier to add and work with and package up the common logic of keeping windowed gauges, histograms, counters, etc. JMX should be just one output of this.

The advantage of the Coda Hale package is that it exists so we don't need to write it. The downsides are (1) introduces another client dependency which causes conflicts, and (2) seems a bit heavy on design. The good news is that the metrics-core package doesn't seem to bring in a lot of dependencies which is nice, though the scala wrapper seems to want scala 2.9. I am also a little skeptical of the approach for histograms--it does sampling instead of bucketing though that may be okay.


---

* [KAFKA-202](https://issues.apache.org/jira/browse/KAFKA-202) | *Major* | **Make the request processing in kafka asynchonous**

We need to handle long-lived requests to support replication. To make this work we need to make the processing mechanism asynchronous from the network threads.

To accomplish this we will retain the existing pool of network threads but add a new pool of request handling threads. These will do all the disk I/O. There will be a queue mechanism to transfer requests to and from this secondary pool.


---

* [KAFKA-193](https://issues.apache.org/jira/browse/KAFKA-193) | *Major* | **use by name parameter helper for logging and trait to include lazy logging and refactor code to use the new LogHelper**

1) New tait to include logging and helper methods so if (log.isDebugEnabled()) is not required because it is in the helper and log paramaters are passed by name so not executed to tidy up the code

2) refactor all occurrence of logging to use the log helper

3/4 (possibly to be handled in to tickets) the "lint" affect from this for changes patched but not on trunk and new patches moving forward until this is baked in


---

* [KAFKA-192](https://issues.apache.org/jira/browse/KAFKA-192) | *Major* | **CompressionUtilTest does not run and fails when it does**

CompressionUtilTest does not run the functions inside of it during ./sbt test

if you change CompressionUtilTest to extend JUnitSuite then the existing functions run (once you adorne them with @Test) but then fail ...

I suspect the TestUtils.checkEquals(messages.iterator, decompressedMessages.iterator) is failing in testSimpleCompressDecompress because all of the messages are serialized into byte arrays and the entire set of messages compressed and that new compressed messages is what is returned as one message instead of the List[Message] and therefor are not interpreted within TestUtil.checkEquals to see this nuance.

e.g.

[error] Test Failed: testSimpleCompressDecompress
junit.framework.AssertionFailedError: expected:<message(magic = 1, attributes = 0, crc = 3819140844, payload = java.nio.HeapByteBuffer[pos=0 lim=8 cap=8])> but was:<MessageAndOffset(message(magic = 1, attributes = 0, crc = 3819140844, payload = java.nio.HeapByteBuffer[pos=0 lim=8 cap=8]),18)>

and

[error] Test Failed: testComplexCompressDecompress
junit.framework.AssertionFailedError: expected:<2> but was:<3>


---

* [KAFKA-188](https://issues.apache.org/jira/browse/KAFKA-188) | *Major* | **Support multiple data directories**

Currently we allow only a single data directory. This means that a multi-disk configuration needs to be a RAID array or LVM volume or something like that to be mounted as a single directory.

For a high-throughput low-reliability configuration this would mean RAID0 striping. Common wisdom in Hadoop land has it that a JBOD setup that just mounts each disk as a separate directory and does application-level balancing over these results in about 30% write-improvement. For example see this claim here:
  http://old.nabble.com/Re%3A-RAID-vs.-JBOD-p21466110.html

It is not clear to me why this would be the case--it seems the RAID controller should be able to balance writes as well as the application so it may depend on the details of the setup.

Nonetheless this would be really easy to implement, all you need to do is add multiple data directories and balance partition creation over these disks.

One problem this might cause is if a particular topic is much larger than the others it might unbalance the load across the disks. The partition->disk assignment policy should probably attempt to evenly spread each topic to avoid this, rather than just trying keep the number of partitions balanced between disks.


---

* [KAFKA-187](https://issues.apache.org/jira/browse/KAFKA-187) | *Major* | **Add Snappy Compression as a Codec and refactor CompressionUtil and option on startup to select what the default codec**

My thoughts are a new trait CompressionDependencies for KafkaProject.scala, adding snappy as the first library.

refactor CompressionUtil for better code reuse and provide a way on startup to select what the default codec is instead of the default always gziping


---

* [KAFKA-181](https://issues.apache.org/jira/browse/KAFKA-181) | *Major* | **Log errors for unrecognized config options**

Currently, unrecognized config options are silently ignored. Notably, if a config has a typo or if a deprecated config is used, then there is no warning issued and defaults are assumed. One can argue that the broker or a consumer or a producer with an unrecognized config option should not even be allowed to start up especially if defaults are silently assumed, but it would be good to at least log an error.


---

* [KAFKA-176](https://issues.apache.org/jira/browse/KAFKA-176) | *Major* | **Fix existing perf tools**

The existing perf tools - ProducerPerformance.scala, ConsumerPerformance.scala and SimpleConsumerPerformance.scala are slightly buggy. It will be good to -

1. move them to a perf directory from the existing kafka/tools location
2. fix the bugs, so that they measure throughput correctly


---

* [KAFKA-171](https://issues.apache.org/jira/browse/KAFKA-171) | *Major* | **Kafka producer should do a single write to send message sets**

From email thread: 
http://mail-archives.apache.org/mod\_mbox/incubator-kafka-dev/201110.mbox/%3cCAFbh0Q1PYUj32thBaYQ29E6J4wT\_mrG5SuUsfdeGWj6rmEx9Gw@mail.gmail.com%3e
> Before sending an actual message, kafka producer do send a (control) message of 4 bytes to the server. Kafka producer always does this action before send some message to the server.

I think this is because in BoundedByteBufferSend.scala we do essentially
 channel.write(sizeBuffer)
 channel.write(dataBuffer)

The correct solution is to use vector I/O and instead do
 channel.write(Array(sizeBuffer, dataBuffer))


---

* [KAFKA-165](https://issues.apache.org/jira/browse/KAFKA-165) | *Minor* | **Add helper script for zkCli.sh**

It would be nice to have a helper script for starting zkCli packaged in so we could include it's usage in the docs.


---

* [KAFKA-155](https://issues.apache.org/jira/browse/KAFKA-155) | *Major* | **Support graceful Decommissioning of Broker**

There should be a graceful way of decommissioning the broker so that there is absolutely 0 data loss. Decommissioning is not necessarily related to replication (Kafka-50).

There should be a way to get the broker out of the cluster only from the produce side. Consumers should be able to continue keep pulling data. When the administrator is sure that all data has been consumed by consumers, broker node can be removed permanently.

Same would be useful for rolling upgrades without any message loss.


---

* [KAFKA-139](https://issues.apache.org/jira/browse/KAFKA-139) | *Major* | **cross-compile multiple Scala versions and upgrade to SBT 0.12.1**

Since scala does not maintain binary compatibly between versions, organizations tend to have to move all of there code at the same time.  It would thus be very helpful if we could cross build multiple scala versions.

http://code.google.com/p/simple-build-tool/wiki/CrossBuild

Unclear if this would require KAFKA-134 or just work.


---

* [KAFKA-133](https://issues.apache.org/jira/browse/KAFKA-133) | *Major* | **Publish kafka jar to a public maven repository**

The released kafka jar must be download manually and then deploy to a private repository before they can be used by a developer using maven2.

Similar to other Apache projects, it will be nice to have a way to publish Kafka releases to a public maven repo. 

In the past, we gave it a try using sbt publish to Sonatype Nexus maven repo, but ran into some authentication problems. It will be good to revisit this and get it resolved.


---

* [KAFKA-100](https://issues.apache.org/jira/browse/KAFKA-100) | *Major* | **ProducerShell should use high-level producer instead of SyncProducer**

We should change ProducerShell to use high-level producer instead of SyncProducer.


---

* [KAFKA-93](https://issues.apache.org/jira/browse/KAFKA-93) | *Minor* | **Change code header to follow standard ASF source header**

Need to update Kafka code to include ASF standard source header: http://www.apache.org/legal/src-headers.html

I think most Kafka code already have the ASF header. Just need to remove the copyrights section of the comment per guideline.


---

* [KAFKA-81](https://issues.apache.org/jira/browse/KAFKA-81) | *Major* | **wrong path in bin/kafka-run-class.sh**

https://github.com/kafka-dev/kafka/issues/28

{{monospace}}
I just downloaded the official 0.6 archive:
https://github.com/downloads/kafka-dev/kafka/kafka-0.6.zip

and tried starting zookeeper / kafka.

The above archive will extract the deps into a dir called "libs", but in bin/kafka-run-class.sh there's a loop to add the jars in "lib" to the classpath:

for file in $base\_dir/lib/*.jar;
do
  CLASSPATH=$CLASSPATH:$file
done

It's a little more complicated then that. The tarball also places kafka-0.6.jar in the root of the directory, where no scripts look. config does not seem to have the log4j properties files, which makes zookeeper sad.
{{monospace}}


---

* [KAFKA-50](https://issues.apache.org/jira/browse/KAFKA-50) | *Major* | **kafka intra-cluster replication support**

Currently, Kafka doesn't have replication. Each log segment is stored in a single broker. This limits both the availability and the durability of Kafka. If a broker goes down, all log segments stored on that broker become unavailable to consumers. If a broker dies permanently (e.g., disk failure), all unconsumed data on that node is lost forever. Our goal is to replicate every log segment to multiple broker nodes to improve both the availability and the durability. 

We'd like to support the following in Kafka replication: 

1. Configurable synchronous and asynchronous replication 
2. Small unavailable window (e.g., less than 5 seconds) during broker failures 
3. Auto recovery when a failed broker rejoins 
4. Balanced load when a broker fails (i.e., the load on the failed broker is evenly spread among multiple surviving brokers)

Here is a complete design proposal for Kafka replication - https://cwiki.apache.org/confluence/display/KAFKA/Kafka+Replication


---

* [KAFKA-49](https://issues.apache.org/jira/browse/KAFKA-49) | *Major* | **Add acknowledgement to the produce request.**

Currently, the produce request doesn't get acknowledged. We need to have a broker send a response to the producer and have the producer wait for the response before sending the next request.


---

* [KAFKA-46](https://issues.apache.org/jira/browse/KAFKA-46) | *Major* | **Commit thread, ReplicaFetcherThread for intra-cluster replication**

We need to implement the commit thread at the leader and the fetcher thread at the follower for replication the data from the leader.


---

* [KAFKA-43](https://issues.apache.org/jira/browse/KAFKA-43) | *Blocker* | **Rebalance to preferred broke with intra-cluster replication support**

We need to allow the leader to be moved to the preferred broker, for better load balancing.


---

* [KAFKA-42](https://issues.apache.org/jira/browse/KAFKA-42) | *Blocker* | **Support rebalancing the partitions with replication**

As new brokers are added, we need to support moving partition replicas from one set of brokers to another, online.


---

* [KAFKA-15](https://issues.apache.org/jira/browse/KAFKA-15) | *Major* | **SBT release-zip target doesn't include bin and config directories anymore**

SBT release-zip target is responsible for creating a fully deployable release zip containing all the package jars, scripts in the bin directory and config property files. 
Currently, it packages the kafka jar and the lib directories correctly.



