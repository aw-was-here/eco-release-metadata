
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
# Changelog

## Release 0.8.2.0 - 2015-02-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1597](https://issues.apache.org/jira/browse/KAFKA-1597) | New metrics: ResponseQueueSize and BeingSentResponses |  Minor | core | Alexis Midon | Alexis Midon |
| [KAFKA-1512](https://issues.apache.org/jira/browse/KAFKA-1512) | Limit the maximum number of connections per ip address |  Major | . | Jay Kreps | Jeff Holoman |
| [KAFKA-1443](https://issues.apache.org/jira/browse/KAFKA-1443) | Add delete topic to topic commands and update DeleteTopicCommand |  Major | . | Timothy Chen | Timothy Chen |
| [KAFKA-1384](https://issues.apache.org/jira/browse/KAFKA-1384) | Log Broker state |  Major | . | Timothy Chen | Timothy Chen |
| [KAFKA-1227](https://issues.apache.org/jira/browse/KAFKA-1227) | Code dump of new producer |  Major | . | Jay Kreps | Jay Kreps |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1879](https://issues.apache.org/jira/browse/KAFKA-1879) | Log warning when receiving produce requests with acks \> 1 |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-1872](https://issues.apache.org/jira/browse/KAFKA-1872) | Update Developer Setup |  Major | build | Sree Vaddi | Sree Vaddi |
| [KAFKA-1831](https://issues.apache.org/jira/browse/KAFKA-1831) | Producer does not provide any information about which host the data was sent to |  Major | producer | Mark Payne | Jun Rao |
| [KAFKA-1797](https://issues.apache.org/jira/browse/KAFKA-1797) | add the serializer/deserializer api to the new java client |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1769](https://issues.apache.org/jira/browse/KAFKA-1769) | javadoc should only include client facing packages |  Blocker | . | Jun Rao | Jun Rao |
| [KAFKA-1768](https://issues.apache.org/jira/browse/KAFKA-1768) | Expose version via JMX |  Major | . | Otis Gospodnetic |  |
| [KAFKA-1719](https://issues.apache.org/jira/browse/KAFKA-1719) | Make mirror maker exit when one consumer/producer thread exits. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1706](https://issues.apache.org/jira/browse/KAFKA-1706) | Adding a byte bounded blocking queue to util. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1692](https://issues.apache.org/jira/browse/KAFKA-1692) | [Java New Producer]  IO Thread Name Must include  Client ID |  Trivial | producer | Bhavesh Mistry | Ewen Cheslack-Postava |
| [KAFKA-1644](https://issues.apache.org/jira/browse/KAFKA-1644) | Inherit FetchResponse from RequestOrResponse |  Major | . | Anton Karamanov | Anton Karamanov |
| [KAFKA-1620](https://issues.apache.org/jira/browse/KAFKA-1620) | Make kafka api protocol implementation public |  Major | . | Anton Karamanov | Anton Karamanov |
| [KAFKA-1618](https://issues.apache.org/jira/browse/KAFKA-1618) | Exception thrown when running console producer with no port number for the broker |  Blocker | . | Gwen Shapira | BalajiSeshadri |
| [KAFKA-1576](https://issues.apache.org/jira/browse/KAFKA-1576) | Make "deleteTopic" a bit more user friendly |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-1555](https://issues.apache.org/jira/browse/KAFKA-1555) | provide strong consistency with reasonable availability |  Major | controller | Jiang Wu | Gwen Shapira |
| [KAFKA-1535](https://issues.apache.org/jira/browse/KAFKA-1535) | return all live brokers in TopicMetadataResponse |  Major | core | Jun Rao | nicu marasoiu |
| [KAFKA-1519](https://issues.apache.org/jira/browse/KAFKA-1519) | Console consumer: expose configuration option to enable/disable writing the line separator |  Minor | consumer | Michael Noll | Gwen Shapira |
| [KAFKA-1513](https://issues.apache.org/jira/browse/KAFKA-1513) | Cleanup KafkaServerStartable code |  Minor | core | Evgeny Vereshchagin | Evgeny Vereshchagin |
| [KAFKA-1493](https://issues.apache.org/jira/browse/KAFKA-1493) | Use a well-documented LZ4 compression format and remove redundant LZ4HC option |  Blocker | . | James Oliver | James Oliver |
| [KAFKA-1488](https://issues.apache.org/jira/browse/KAFKA-1488) | new metrics for measuring the ratio when the new producer is block for space allocation |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1456](https://issues.apache.org/jira/browse/KAFKA-1456) | Add LZ4 and LZ4C as a compression codec |  Major | . | Joe Stein |  |
| [KAFKA-1446](https://issues.apache.org/jira/browse/KAFKA-1446) | Consumer metrics for rebalance |  Major | . | Clark Haskins | Sriharsha Chintalapani |
| [KAFKA-1430](https://issues.apache.org/jira/browse/KAFKA-1430) | Purgatory redesign |  Blocker | core | Jun Rao | Guozhang Wang |
| [KAFKA-1425](https://issues.apache.org/jira/browse/KAFKA-1425) | provide logStartOffset in addition to LogEndOffset metric |  Minor | . | alexcb |  |
| [KAFKA-1419](https://issues.apache.org/jira/browse/KAFKA-1419) | cross build for scala 2.11 |  Blocker | clients | Scott Clasen | Ivan Lyutov |
| [KAFKA-1414](https://issues.apache.org/jira/browse/KAFKA-1414) | Speedup broker startup after hard reset |  Major | log | Dmitry Bugaychenko | Anton Karamanov |
| [KAFKA-1392](https://issues.apache.org/jira/browse/KAFKA-1392) | all TestUtiles.waitUntilTrue() should throw an exception if the return value is false |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1390](https://issues.apache.org/jira/browse/KAFKA-1390) | TestUtils.waitUntilLeaderIsElectedOrChanged may wait longer than it needs |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1353](https://issues.apache.org/jira/browse/KAFKA-1353) | report capacity used by request thread pool and network thread pool |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-1344](https://issues.apache.org/jira/browse/KAFKA-1344) | Kafka-console-producer.sh support snappy compression |  Major | . | aio | Ivan Lyutov |
| [KAFKA-1325](https://issues.apache.org/jira/browse/KAFKA-1325) | Fix inconsistent per topic log configs |  Major | log | Neha Narkhede | Manikumar Reddy |
| [KAFKA-1312](https://issues.apache.org/jira/browse/KAFKA-1312) | Update gitignore to ignore IDE generated files |  Trivial | . | Timothy Chen |  |
| [KAFKA-1298](https://issues.apache.org/jira/browse/KAFKA-1298) | Controlled shutdown tool doesn't seem to work out of the box |  Major | . | Jay Kreps | Sriharsha Chintalapani |
| [KAFKA-1294](https://issues.apache.org/jira/browse/KAFKA-1294) | Enable leadership balancing by default |  Major | . | Jay Kreps |  |
| [KAFKA-1291](https://issues.apache.org/jira/browse/KAFKA-1291) | Make wrapper shell scripts for important tools |  Major | . | Jay Kreps |  |
| [KAFKA-1287](https://issues.apache.org/jira/browse/KAFKA-1287) | enable log4j in command line tools using the new producer |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1278](https://issues.apache.org/jira/browse/KAFKA-1278) | More flexible helper scripts |  Major | tools | Nathan Brown | Nathan Brown |
| [KAFKA-1028](https://issues.apache.org/jira/browse/KAFKA-1028) | per topic configuration of preference for consistency over availability |  Major | . | Scott Clasen | Andrew Olson |
| [KAFKA-909](https://issues.apache.org/jira/browse/KAFKA-909) | Provide support in the producer to specify a stateful instance of an Encoder, like the consuemr allows with the Decoder |  Major | producer | Rob Withers | Jun Rao |
| [KAFKA-404](https://issues.apache.org/jira/browse/KAFKA-404) | When using chroot path, create chroot on startup if it doesn't exist |  Major | . | Jonathan Creasy | Jonathan Creasy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1902](https://issues.apache.org/jira/browse/KAFKA-1902) | fix MetricName so that Yammer reporter can work correctly |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-1876](https://issues.apache.org/jira/browse/KAFKA-1876) | pom file for scala 2.11 should reference a specific version |  Blocker | . | Jun Rao | Jun Rao |
| [KAFKA-1874](https://issues.apache.org/jira/browse/KAFKA-1874) | missing import util.parsing.json.JSON |  Major | core | Sree Vaddi |  |
| [KAFKA-1873](https://issues.apache.org/jira/browse/KAFKA-1873) | scalatest\_2.10-1.9.1.jar of core build path is cross-compiled with an incompatible version of Scala (2.10.0) |  Minor | core | Sree Vaddi |  |
| [KAFKA-1870](https://issues.apache.org/jira/browse/KAFKA-1870) | Cannot commit with simpleConsumer on Zookeeper only with Java API |  Blocker | consumer | Thomas Vandevelde | Jun Rao |
| [KAFKA-1868](https://issues.apache.org/jira/browse/KAFKA-1868) | ConsoleConsumer shouldn't override dual.commit.enabled to false if not explicitly set |  Blocker | . | Jun Rao | Jun Rao |
| [KAFKA-1864](https://issues.apache.org/jira/browse/KAFKA-1864) | Revisit defaults for the internal offsets topic |  Blocker | . | Neha Narkhede | Jun Rao |
| [KAFKA-1861](https://issues.apache.org/jira/browse/KAFKA-1861) | Publishing kafka-client:test in order to utilize the helper utils in TestUtils |  Major | . | Navina Ramesh | Manikumar Reddy |
| [KAFKA-1851](https://issues.apache.org/jira/browse/KAFKA-1851) | OffsetFetchRequest returns extra partitions when input only contains unknown partitions |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-1841](https://issues.apache.org/jira/browse/KAFKA-1841) | OffsetCommitRequest API - timestamp field is not versioned |  Blocker | core | Dana Powers | Jun Rao |
| [KAFKA-1819](https://issues.apache.org/jira/browse/KAFKA-1819) | Cleaner gets confused about deleted and re-created topics |  Blocker | . | Gian Merlino | Gwen Shapira |
| [KAFKA-1806](https://issues.apache.org/jira/browse/KAFKA-1806) | broker fetch request uses old leader offset which is higher than current leader offset causes error |  Blocker | consumer | lokesh Birla | Neha Narkhede |
| [KAFKA-1799](https://issues.apache.org/jira/browse/KAFKA-1799) | ProducerConfig.METRIC\_REPORTER\_CLASSES\_CONFIG doesn't work |  Blocker | . | Jun Rao | Manikumar Reddy |
| [KAFKA-1766](https://issues.apache.org/jira/browse/KAFKA-1766) | Ecosystem docs subsection has wrong anchor |  Minor | . | Kirill Zaborsky |  |
| [KAFKA-1764](https://issues.apache.org/jira/browse/KAFKA-1764) | ZookeeperConsumerConnector could put multiple shutdownCommand to the same data chunk queue. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1761](https://issues.apache.org/jira/browse/KAFKA-1761) | num.partitions 	documented default is 1 while actual default is 2 |  Minor | log | Stevo Slavic | Manikumar Reddy |
| [KAFKA-1743](https://issues.apache.org/jira/browse/KAFKA-1743) | ConsumerConnector.commitOffsets in 0.8.2 is not backward compatible |  Blocker | core | Jun Rao | Manikumar Reddy |
| [KAFKA-1742](https://issues.apache.org/jira/browse/KAFKA-1742) | ControllerContext removeTopic does not correctly update state |  Blocker | . | Onur Karaman | Onur Karaman |
| [KAFKA-1738](https://issues.apache.org/jira/browse/KAFKA-1738) | Partitions for topic not created after restart from forced shutdown |  Blocker | core | Pradeep | Jun Rao |
| [KAFKA-1732](https://issues.apache.org/jira/browse/KAFKA-1732) | DumpLogSegments tool fails when path has a '.' |  Minor | tools | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1721](https://issues.apache.org/jira/browse/KAFKA-1721) | Snappy compressor is not thread safe |  Major | compression | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1717](https://issues.apache.org/jira/browse/KAFKA-1717) | remove netty dependency through ZK 3.4.x |  Blocker | core | Jun Rao | Jun Rao |
| [KAFKA-1699](https://issues.apache.org/jira/browse/KAFKA-1699) | autoRebalanceScheduler.shutdown() causes deadlock while controller shutting down |  Major | . | Sriharsha Chintalapani | Sriharsha Chintalapani |
| [KAFKA-1681](https://issues.apache.org/jira/browse/KAFKA-1681) | Newly elected KafkaController might not start deletion of pending topics |  Blocker | . | Sriharsha Chintalapani | Sriharsha Chintalapani |
| [KAFKA-1673](https://issues.apache.org/jira/browse/KAFKA-1673) | potential  java.lang.IllegalStateException in BufferPool.allocate() |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1671](https://issues.apache.org/jira/browse/KAFKA-1671) | uploaded archives are missing for Scala version 2.11 |  Blocker | . | Joe Stein | Ivan Lyutov |
| [KAFKA-1670](https://issues.apache.org/jira/browse/KAFKA-1670) | Corrupt log files for segment.bytes values close to Int.MaxInt |  Blocker | . | Ryan Berdeen | Sriharsha Chintalapani |
| [KAFKA-1663](https://issues.apache.org/jira/browse/KAFKA-1663) | Controller unable to shutdown after a soft failure |  Blocker | . | Sriharsha Chintalapani | Sriharsha Chintalapani |
| [KAFKA-1662](https://issues.apache.org/jira/browse/KAFKA-1662) | gradle release issue permgen space |  Blocker | . | Joe Stein | Sriharsha Chintalapani |
| [KAFKA-1653](https://issues.apache.org/jira/browse/KAFKA-1653) | Duplicate broker ids allowed in replica assignment |  Major | tools | Ryan Berdeen | Ewen Cheslack-Postava |
| [KAFKA-1647](https://issues.apache.org/jira/browse/KAFKA-1647) | Replication offset checkpoints (high water marks) can be lost on hard kills and restarts |  Critical | . | Joel Koshy | Jiangjie Qin |
| [KAFKA-1645](https://issues.apache.org/jira/browse/KAFKA-1645) | some more jars in our src release |  Blocker | . | Joe Stein | Joe Stein |
| [KAFKA-1642](https://issues.apache.org/jira/browse/KAFKA-1642) | [Java New Producer Kafka Trunk] CPU Usage Spike to 100% when network connection is lost |  Blocker | producer | Bhavesh Mistry | Ewen Cheslack-Postava |
| [KAFKA-1637](https://issues.apache.org/jira/browse/KAFKA-1637) | SimpleConsumer.fetchOffset returns wrong error code when no offset exists for topic/partition/consumer group |  Major | consumer, core | Amir Malekpour | Ewen Cheslack-Postava |
| [KAFKA-1635](https://issues.apache.org/jira/browse/KAFKA-1635) | Java doc of makeLeaders in ReplicaManager is wrong |  Trivial | core, replication | Lantao Jin | Lantao Jin |
| [KAFKA-1624](https://issues.apache.org/jira/browse/KAFKA-1624) | bump up default scala version to 2.10.4 to compile with java 8 |  Major | . | Joe Stein | Guozhang Wang |
| [KAFKA-1622](https://issues.apache.org/jira/browse/KAFKA-1622) | project shouldn't require signing to build |  Blocker | . | Joe Stein | Ivan Lyutov |
| [KAFKA-1619](https://issues.apache.org/jira/browse/KAFKA-1619) | perf dir can be removed |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1616](https://issues.apache.org/jira/browse/KAFKA-1616) | Purgatory Size and Num.Delayed.Request metrics are incorrect |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1609](https://issues.apache.org/jira/browse/KAFKA-1609) | New producer metadata response handling should only exclude a PartitionInfo when its error is LEADER\_NOT\_AVAILABLE |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-1603](https://issues.apache.org/jira/browse/KAFKA-1603) | MirrorMaker consumer does not put the message key into ProducerRecord |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1600](https://issues.apache.org/jira/browse/KAFKA-1600) | Controller failover not working correctly. |  Blocker | controller | Ding Haifeng |  |
| [KAFKA-1598](https://issues.apache.org/jira/browse/KAFKA-1598) | Fix variable typo in Kafka main class |  Trivial | . | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [KAFKA-1585](https://issues.apache.org/jira/browse/KAFKA-1585) | Client: Infinite "conflict in /consumers/" |  Critical | consumer | Artur Denysenko |  |
| [KAFKA-1580](https://issues.apache.org/jira/browse/KAFKA-1580) | Reject producer requests to internal topics |  Critical | core | Joel Koshy | Guozhang Wang |
| [KAFKA-1578](https://issues.apache.org/jira/browse/KAFKA-1578) | Controller should de-register all listeners upon designation |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1577](https://issues.apache.org/jira/browse/KAFKA-1577) | Exception in ConnectionQuotas while shutting down |  Blocker | core | Joel Koshy | Sriharsha Chintalapani |
| [KAFKA-1574](https://issues.apache.org/jira/browse/KAFKA-1574) | unit tests can hang on socketserver shutdown |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1571](https://issues.apache.org/jira/browse/KAFKA-1571) | MetadataeTest hangs |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1567](https://issues.apache.org/jira/browse/KAFKA-1567) | Metric memory leaking after closing the clients |  Major | clients | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1562](https://issues.apache.org/jira/browse/KAFKA-1562) | kafka-topics.sh alter add partitions resets cleanup.policy |  Major | . | Kenny | Jonathan Natkins |
| [KAFKA-1558](https://issues.apache.org/jira/browse/KAFKA-1558) | AdminUtils.deleteTopic does not work |  Blocker | . | Henning Schmiedehausen | Sriharsha Chintalapani |
| [KAFKA-1549](https://issues.apache.org/jira/browse/KAFKA-1549) | dead brokers coming in the TopicMetadataResponse |  Major | . | nicu marasoiu | nicu marasoiu |
| [KAFKA-1544](https://issues.apache.org/jira/browse/KAFKA-1544) | LogCleaner may take a long time to shutdown |  Major | core | Jun Rao | Manikumar Reddy |
| [KAFKA-1542](https://issues.apache.org/jira/browse/KAFKA-1542) | normal IOException in the new producer is logged as ERROR |  Major | . | Jun Rao | David Corley |
| [KAFKA-1539](https://issues.apache.org/jira/browse/KAFKA-1539) | Due to OS caching Kafka might loose offset files which causes full reset of data |  Major | log | Dmitry Bugaychenko | Jay Kreps |
| [KAFKA-1533](https://issues.apache.org/jira/browse/KAFKA-1533) | transient unit test failure in ProducerFailureHandlingTest |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-1531](https://issues.apache.org/jira/browse/KAFKA-1531) | zookeeper.connection.timeout.ms is set to 10000000 in configuration file in Kafka tarball |  Major | config | Michał Michalski | Manikumar Reddy |
| [KAFKA-1529](https://issues.apache.org/jira/browse/KAFKA-1529) | transient unit test failure in testAutoCreateAfterDeleteTopic |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1515](https://issues.apache.org/jira/browse/KAFKA-1515) | Wake-up Sender upon blocked on fetching leader metadata |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1511](https://issues.apache.org/jira/browse/KAFKA-1511) | Malformated link and consumer/producer mixup in documentation |  Minor | website | Vincent Bernat | Jun Rao |
| [KAFKA-1510](https://issues.apache.org/jira/browse/KAFKA-1510) | Force offset commits when migrating consumer offsets from zookeeper to kafka |  Major | . | Joel Koshy | Joel Koshy |
| [KAFKA-1503](https://issues.apache.org/jira/browse/KAFKA-1503) | all partitions are using same broker as their leader after broker is down |  Major | controller | Jianwen Wang | Jianwen Wang |
| [KAFKA-1502](https://issues.apache.org/jira/browse/KAFKA-1502) | source jar is empty |  Major | build | Jun Rao | Jun Rao |
| [KAFKA-1491](https://issues.apache.org/jira/browse/KAFKA-1491) | ConsumerMetadataResponse is not read completely |  Major | . | Joel Koshy |  |
| [KAFKA-1490](https://issues.apache.org/jira/browse/KAFKA-1490) | remove gradlew initial setup output from source distribution |  Blocker | . | Joe Stein | Ivan Lyutov |
| [KAFKA-1481](https://issues.apache.org/jira/browse/KAFKA-1481) | Stop using dashes AND underscores as separators in MBean names |  Critical | core | Otis Gospodnetic | Vladimir Tretyakov |
| [KAFKA-1473](https://issues.apache.org/jira/browse/KAFKA-1473) | transient unit test failure in testRequestHandlingDuringDeleteTopic |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-1469](https://issues.apache.org/jira/browse/KAFKA-1469) | Util.abs function does not return correct absolute values for negative values |  Major | . | Joel Koshy |  |
| [KAFKA-1468](https://issues.apache.org/jira/browse/KAFKA-1468) | Improve perf tests |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-1459](https://issues.apache.org/jira/browse/KAFKA-1459) | kafka.tools.ConsumerOffsetChecker throws NoNodeException |  Major | tools | Scott Clasen | Sriharsha Chintalapani |
| [KAFKA-1453](https://issues.apache.org/jira/browse/KAFKA-1453) | Add a channel queue jmx in Mirror Maker |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1451](https://issues.apache.org/jira/browse/KAFKA-1451) | Broker stuck due to leader election race |  Minor | core | Maciek Makowski | Manikumar Reddy |
| [KAFKA-1444](https://issues.apache.org/jira/browse/KAFKA-1444) | kafka.javaapi.TopicMetadata and PartitionMetadata doesn't forward the toString method |  Minor | . | Simon Cooper | Sriharsha Chintalapani |
| [KAFKA-1442](https://issues.apache.org/jira/browse/KAFKA-1442) | RBTools post-review is deprecated |  Minor | . | Sriharsha Chintalapani | Sriharsha Chintalapani |
| [KAFKA-1438](https://issues.apache.org/jira/browse/KAFKA-1438) | Migrate kafka client tools |  Major | . | Guozhang Wang | Sriharsha Chintalapani |
| [KAFKA-1437](https://issues.apache.org/jira/browse/KAFKA-1437) | ConsumerMetadataResponse should always include coordinator information |  Major | . | Joel Koshy | Joel Koshy |
| [KAFKA-1434](https://issues.apache.org/jira/browse/KAFKA-1434) | kafka.admin.TopicCommand missing --delete topic command |  Major | tools | Michał Czerwiński |  |
| [KAFKA-1433](https://issues.apache.org/jira/browse/KAFKA-1433) | transient unit test failure in ZookeeperConsumerConnectorTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1432](https://issues.apache.org/jira/browse/KAFKA-1432) | Make num.producerThreads configurable on new MirrrorMaker |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1431](https://issues.apache.org/jira/browse/KAFKA-1431) | ConsoleConsumer - Option to clean zk consumer path |  Minor | consumer | Jeremy A Laycock | Sriharsha Chintalapani |
| [KAFKA-1424](https://issues.apache.org/jira/browse/KAFKA-1424) | transient unit test failure in testSendWithDeadBroker |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1423](https://issues.apache.org/jira/browse/KAFKA-1423) | Updating partition count clears topic configuration and any further alters done to a topics config do not stick |  Major | . | Nathan Brown |  |
| [KAFKA-1418](https://issues.apache.org/jira/browse/KAFKA-1418) | transient unit test failure in ProducerFailureHandlingTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1412](https://issues.apache.org/jira/browse/KAFKA-1412) | transient unit test failure in ProducerSendTest.testAutoCreateTopic |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1410](https://issues.apache.org/jira/browse/KAFKA-1410) | MetadataCache cleanup |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1409](https://issues.apache.org/jira/browse/KAFKA-1409) | oversized messages can slow down the brokers |  Critical | core | Jun Rao | Guozhang Wang |
| [KAFKA-1406](https://issues.apache.org/jira/browse/KAFKA-1406) | Fix scaladoc/javadoc warnings |  Major | packaging | Joel Koshy | Alan Lee |
| [KAFKA-1400](https://issues.apache.org/jira/browse/KAFKA-1400) | transient unit test failure in SocketServerTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1397](https://issues.apache.org/jira/browse/KAFKA-1397) | delete topic is not working |  Major | . | Jun Rao | Timothy Chen |
| [KAFKA-1396](https://issues.apache.org/jira/browse/KAFKA-1396) | fix transient unit test ProducerFailureHandlingTest.testBrokerFailure |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-1395](https://issues.apache.org/jira/browse/KAFKA-1395) | fix unit tests in AutoOffsetResetTest |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-1391](https://issues.apache.org/jira/browse/KAFKA-1391) | transient unit test failure in DeleteTopicTest.testPreferredReplicaElectionDuringDeleteTopic |  Major | . | Jun Rao |  |
| [KAFKA-1389](https://issues.apache.org/jira/browse/KAFKA-1389) | transient unit test failure in ProducerFailureHandlingTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1383](https://issues.apache.org/jira/browse/KAFKA-1383) | transient unit test failure in SocketServerTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1382](https://issues.apache.org/jira/browse/KAFKA-1382) | Update zkVersion on partition state update failures |  Major | . | Joel Koshy | Sriharsha Chintalapani |
| [KAFKA-1381](https://issues.apache.org/jira/browse/KAFKA-1381) | transient unit test failure in AddPartitionsTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1378](https://issues.apache.org/jira/browse/KAFKA-1378) | transient unit test failure in LogRecoveryTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1376](https://issues.apache.org/jira/browse/KAFKA-1376) | transient test failure in UncleanLeaderElectionTest |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1375](https://issues.apache.org/jira/browse/KAFKA-1375) | Formatting for "Running a task on a particular version of Scala" paragraph in README.md is broken |  Trivial | website | Stevo Slavic | Stevo Slavic |
| [KAFKA-1369](https://issues.apache.org/jira/browse/KAFKA-1369) | snappy version update 1.1.x |  Minor | core | thinker0 | Roger Hoover |
| [KAFKA-1364](https://issues.apache.org/jira/browse/KAFKA-1364) | ReplicaManagerTest hard-codes log dir |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-1319](https://issues.apache.org/jira/browse/KAFKA-1319) | kafka jar doesn't depend on metrics-annotation any more |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1318](https://issues.apache.org/jira/browse/KAFKA-1318) | waiting for producer to stop is not reliable in system tests |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1307](https://issues.apache.org/jira/browse/KAFKA-1307) | potential socket leak in new producer and clean up |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1305](https://issues.apache.org/jira/browse/KAFKA-1305) | Controller can hang on controlled shutdown with auto leader balance enabled |  Blocker | . | Joel Koshy | Sriharsha Chintalapani |
| [KAFKA-1302](https://issues.apache.org/jira/browse/KAFKA-1302) | cleanup logging in new producer |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1301](https://issues.apache.org/jira/browse/KAFKA-1301) | system testcase\_0206 fails using the new producer |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1297](https://issues.apache.org/jira/browse/KAFKA-1297) | releaseTarGz target needs signing task |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1280](https://issues.apache.org/jira/browse/KAFKA-1280) | exclude kafka-clients jar from dependant-libs dir |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1276](https://issues.apache.org/jira/browse/KAFKA-1276) | Provide a list of config overrides available when running kafka.topics |  Major | tools | Todd Palino | Jay Kreps |
| [KAFKA-1238](https://issues.apache.org/jira/browse/KAFKA-1238) | New producer hangs in a loop detecting metadata for auto created topics |  Critical | producer | Neha Narkhede | Jay Kreps |
| [KAFKA-1235](https://issues.apache.org/jira/browse/KAFKA-1235) | Enable server to indefinitely retry on controlled shutdown |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1212](https://issues.apache.org/jira/browse/KAFKA-1212) | System test exception handling does not stop background producer threads |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1210](https://issues.apache.org/jira/browse/KAFKA-1210) | Windows Bat files are not working properly |  Trivial | . | Håkan Canberger | Stevo Slavic |
| [KAFKA-1193](https://issues.apache.org/jira/browse/KAFKA-1193) | Data loss if broker is killed using kill -9 |  Major | replication | Hanish Bansal |  |
| [KAFKA-1192](https://issues.apache.org/jira/browse/KAFKA-1192) | Enable DumpLogSegments tool to deserialize messages |  Major | tools | Guozhang Wang | Manikumar Reddy |
| [KAFKA-1189](https://issues.apache.org/jira/browse/KAFKA-1189) | kafka-server-stop.sh doesn't stop broker |  Minor | tools | Bryan Baugher | Martin Kleppmann |
| [KAFKA-1180](https://issues.apache.org/jira/browse/KAFKA-1180) | WhiteList topic filter gets a NullPointerException on complex Regex |  Major | consumer | Jason Rosenberg | Joe Stein |
| [KAFKA-1179](https://issues.apache.org/jira/browse/KAFKA-1179) | createMessageStreams() in javaapi.ZookeeperConsumerConnector does not throw |  Major | consumer | Vincent Rischmann | Sriharsha Chintalapani |
| [KAFKA-1147](https://issues.apache.org/jira/browse/KAFKA-1147) | Consumer socket timeout should be greater than fetch max wait |  Major | . | Joel Koshy | Guozhang Wang |
| [KAFKA-1146](https://issues.apache.org/jira/browse/KAFKA-1146) | toString() on KafkaStream gets stuck indefinitely |  Trivial | consumer | Arup Malakar | Arup Malakar |
| [KAFKA-1124](https://issues.apache.org/jira/browse/KAFKA-1124) | Sending to a new topic (with auto.create.topics.enable) returns ERROR |  Major | . | Jason Rosenberg |  |
| [KAFKA-1123](https://issues.apache.org/jira/browse/KAFKA-1123) | Broker IPv6 addresses parsed incorrectly |  Major | producer | Andrew Otto | Krzysztof Szafrański |
| [KAFKA-1108](https://issues.apache.org/jira/browse/KAFKA-1108) | when controlled shutdown attempt fails, the reason is not always logged |  Major | . | Jason Rosenberg | Ewen Cheslack-Postava |
| [KAFKA-1096](https://issues.apache.org/jira/browse/KAFKA-1096) | An old controller coming out of long GC could update its epoch to the latest controller's epoch |  Major | controller | Swapnil Ghike | Sriharsha Chintalapani |
| [KAFKA-1045](https://issues.apache.org/jira/browse/KAFKA-1045) | producer zk.connect config |  Major | . | sjk |  |
| [KAFKA-1041](https://issues.apache.org/jira/browse/KAFKA-1041) | Number of file handles increases indefinitely in producer if broker host is unresolvable |  Major | producer | Rajasekar Elango | Rajasekar Elango |
| [KAFKA-1026](https://issues.apache.org/jira/browse/KAFKA-1026) | Dynamically Adjust Batch Size Upon Receiving MessageSizeTooLargeException |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1002](https://issues.apache.org/jira/browse/KAFKA-1002) | Delete aliveLeaders field from LeaderAndIsrRequest |  Major | . | Swapnil Ghike |  |
| [KAFKA-924](https://issues.apache.org/jira/browse/KAFKA-924) | Specify console consumer properties via a single --property command line parameter |  Major | . | Swapnil Ghike | Sriharsha Chintalapani |
| [KAFKA-899](https://issues.apache.org/jira/browse/KAFKA-899) | LeaderNotAvailableException the first time a new message for a partition is processed. |  Major | core | Jason Rosenberg | Jun Rao |
| [KAFKA-847](https://issues.apache.org/jira/browse/KAFKA-847) | kafka appender layout does not work for kafka 0.7.1 |  Major | producer | Sining Ma | Peter Pham |
| [KAFKA-703](https://issues.apache.org/jira/browse/KAFKA-703) | A fetch request in Fetch Purgatory can double count the bytes from the same delayed produce request |  Blocker | purgatory | Sriram Subramanian | Sriram Subramanian |
| [KAFKA-472](https://issues.apache.org/jira/browse/KAFKA-472) | update metadata in batches in Producer |  Major | core | Jun Rao |  |
| [KAFKA-294](https://issues.apache.org/jira/browse/KAFKA-294) | "Path length must be \> 0" error during startup |  Major | . | Thomas Dudziak |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1411](https://issues.apache.org/jira/browse/KAFKA-1411) | remove unused test cases |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1285](https://issues.apache.org/jira/browse/KAFKA-1285) | enable log4j in unit test |  Major | . | Jun Rao | Jun Rao |
| [KAFKA-1079](https://issues.apache.org/jira/browse/KAFKA-1079) | Liars in PrimitiveApiTest that promise to test api in compression mode, but don't do this actually |  Minor | core | Kostya Golikov | Kostya Golikov |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1731](https://issues.apache.org/jira/browse/KAFKA-1731) | add config/jmx changes in 0.8.2 doc |  Blocker | . | Jun Rao | Jun Rao |
| [KAFKA-1730](https://issues.apache.org/jira/browse/KAFKA-1730) | add the doc for the new java producer in 0.8.2 |  Blocker | . | Jun Rao | Manikumar Reddy |
| [KAFKA-1723](https://issues.apache.org/jira/browse/KAFKA-1723) | make the metrics name in new producer more standard |  Blocker | clients | Jun Rao | Manikumar Reddy |
| [KAFKA-1611](https://issues.apache.org/jira/browse/KAFKA-1611) | Improve system test configuration |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-1472](https://issues.apache.org/jira/browse/KAFKA-1472) | Add the compression ratio metrics in the new producer |  Major | producer | Guozhang Wang | Dong Lin |
| [KAFKA-1471](https://issues.apache.org/jira/browse/KAFKA-1471) | Add Producer Unit Tests for LZ4 and LZ4HC compression |  Major | . | James Oliver | Ewen Cheslack-Postava |
| [KAFKA-1462](https://issues.apache.org/jira/browse/KAFKA-1462) | Add new request and response formats for the new consumer and coordinator communication |  Major | consumer | Guozhang Wang | Jun Rao |
| [KAFKA-1359](https://issues.apache.org/jira/browse/KAFKA-1359) | Add topic/broker metrics once new topic/broker is discovered |  Major | producer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1337](https://issues.apache.org/jira/browse/KAFKA-1337) | Rationalize new producer configs |  Major | producer | Jay Kreps | Jay Kreps |
| [KAFKA-1328](https://issues.apache.org/jira/browse/KAFKA-1328) | Add new consumer APIs |  Major | consumer | Neha Narkhede | Neha Narkhede |
| [KAFKA-1316](https://issues.apache.org/jira/browse/KAFKA-1316) | Refactor Sender |  Major | producer | Jay Kreps | Jay Kreps |
| [KAFKA-1304](https://issues.apache.org/jira/browse/KAFKA-1304) | unregistered mbean exception in new producer |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-1240](https://issues.apache.org/jira/browse/KAFKA-1240) | Add ability to existing system tests to use the new producer client |  Major | producer | Neha Narkhede | Jun Rao |
| [KAFKA-1012](https://issues.apache.org/jira/browse/KAFKA-1012) | Implement an Offset Manager and hook offset requests to it |  Minor | consumer | Tejas Patil | Tejas Patil |
| [KAFKA-784](https://issues.apache.org/jira/browse/KAFKA-784) | creating topic without partitions, deleting then creating with partition causes errors in 'kafka-list-topic' |  Minor | core | Chris Curtin | Swapnil Ghike |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1485](https://issues.apache.org/jira/browse/KAFKA-1485) | Upgrade to Zookeeper 3.4.6 and create "shim" for ZKCLI so system tests can run |  Major | . | Machiel Groeneveld | Gwen Shapira |
| [KAFKA-1371](https://issues.apache.org/jira/browse/KAFKA-1371) | Ignore build output dirs |  Trivial | tools | Stevo Slavic | Stevo Slavic |
| [KAFKA-1370](https://issues.apache.org/jira/browse/KAFKA-1370) | Gradle startup script for Windows |  Trivial | tools | Stevo Slavic | Stevo Slavic |
| [KAFKA-1308](https://issues.apache.org/jira/browse/KAFKA-1308) | Publish jar of test utilities to Maven |  Blocker | . | Martin Kleppmann | Jakob Homan |
| [KAFKA-1728](https://issues.apache.org/jira/browse/KAFKA-1728) | update 082 docs |  Blocker | . | Jun Rao |  |
| [KAFKA-1559](https://issues.apache.org/jira/browse/KAFKA-1559) | Upgrade Gradle wrapper to Gradle 2.0 |  Trivial | build | Stevo Slavic | Ivan Lyutov |
| [KAFKA-1399](https://issues.apache.org/jira/browse/KAFKA-1399) | Drop Scala 2.8.x support |  Major | packaging | Stevo Slavic | Ivan Lyutov |


