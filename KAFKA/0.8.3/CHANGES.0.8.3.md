
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
# Apache Kafka Changelog

## Release 0.8.3 - Unreleased (as of 2015-09-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2187](https://issues.apache.org/jira/browse/KAFKA-2187) | Introduce merge-kafka-pr.py script |  Minor | . | Ismael Juma | Ismael Juma |
| [KAFKA-1499](https://issues.apache.org/jira/browse/KAFKA-1499) | Broker-side compression configuration |  Major | . | Joel Koshy | Manikumar Reddy |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2485](https://issues.apache.org/jira/browse/KAFKA-2485) | Allow producer performance to take properties from a file via --producer.config command line parameter |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-2433](https://issues.apache.org/jira/browse/KAFKA-2433) | Remove documentation on dead configuration item: replica.lag.max.messages |  Trivial | website | Stephen Powis |  |
| [KAFKA-2430](https://issues.apache.org/jira/browse/KAFKA-2430) | Listing of PR commits in commit message should be optional |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-2429](https://issues.apache.org/jira/browse/KAFKA-2429) | Add annotations to mark classes as stable/unstable |  Major | . | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2384](https://issues.apache.org/jira/browse/KAFKA-2384) | Override commit message title in kafka-merge-pr.py |  Major | . | Guozhang Wang | Ismael Juma |
| [KAFKA-2350](https://issues.apache.org/jira/browse/KAFKA-2350) | Add KafkaConsumer pause capability |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-2344](https://issues.apache.org/jira/browse/KAFKA-2344) | kafka-merge-pr improvements |  Minor | . | Gwen Shapira | Ismael Juma |
| [KAFKA-2328](https://issues.apache.org/jira/browse/KAFKA-2328) | merge-kafka-pr.py script should not leave user in a detached branch |  Minor | . | Ismael Juma | Ismael Juma |
| [KAFKA-2324](https://issues.apache.org/jira/browse/KAFKA-2324) | Update to Scala 2.11.7 |  Minor | . | Ismael Juma | Ismael Juma |
| [KAFKA-2323](https://issues.apache.org/jira/browse/KAFKA-2323) | Simplify ScalaTest dependency versions |  Minor | . | Ismael Juma | Ismael Juma |
| [KAFKA-2321](https://issues.apache.org/jira/browse/KAFKA-2321) | Introduce CONTRIBUTING.md |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-2314](https://issues.apache.org/jira/browse/KAFKA-2314) | Proper help message for MirrorMaker's `message.handler` property |  Trivial | . | Kostya Golikov | Kostya Golikov |
| [KAFKA-2312](https://issues.apache.org/jira/browse/KAFKA-2312) | Use AtomicLong opposed to AtomicReference to store currentThread in consumer |  Minor | clients | Tim Brooks | Tim Brooks |
| [KAFKA-2265](https://issues.apache.org/jira/browse/KAFKA-2265) | creating a topic with large number of partitions takes a long time |  Major | core | Jun Rao | Manikumar Reddy |
| [KAFKA-2185](https://issues.apache.org/jira/browse/KAFKA-2185) | Update to Gradle 2.4 |  Minor | build | Ismael Juma | Ismael Juma |
| [KAFKA-2132](https://issues.apache.org/jira/browse/KAFKA-2132) | Move Log4J appender to a separate module |  Major | . | Gwen Shapira | Ashish K Singh |
| [KAFKA-2131](https://issues.apache.org/jira/browse/KAFKA-2131) | Update new producer javadocs with correct documentation links |  Trivial | clients | Manikumar Reddy | Manikumar Reddy |
| [KAFKA-2128](https://issues.apache.org/jira/browse/KAFKA-2128) | kafka.Kafka should return non-zero exit code when caught exception. |  Minor | core | Sasaki Toru | Sasaki Toru |
| [KAFKA-2119](https://issues.apache.org/jira/browse/KAFKA-2119) | ConsumerRecord key() and value() methods should not have throws Exception |  Trivial | clients, consumer | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2110](https://issues.apache.org/jira/browse/KAFKA-2110) | Doc: Clarify that max number of consumer instances is per consumer group |  Trivial | . | Peter Vandenabeele | Peter Vandenabeele |
| [KAFKA-2109](https://issues.apache.org/jira/browse/KAFKA-2109) | Support retries in KafkaLog4jAppender |  Minor | producer | Dave Beech | Dave Beech |
| [KAFKA-2096](https://issues.apache.org/jira/browse/KAFKA-2096) | Enable keepalive socket option for broker to prevent socket leak |  Critical | network | Allen Wang | Allen Wang |
| [KAFKA-2090](https://issues.apache.org/jira/browse/KAFKA-2090) | Remove duplicate check to metadataFetchInProgress |  Minor | . | Tim Brooks | Tim Brooks |
| [KAFKA-2044](https://issues.apache.org/jira/browse/KAFKA-2044) | Support requests and responses from o.a.k.common in KafkaApis |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2039](https://issues.apache.org/jira/browse/KAFKA-2039) | Update Scala to 2.10.5 and 2.11.6 |  Minor | . | Ismael Juma | Ismael Juma |
| [KAFKA-2016](https://issues.apache.org/jira/browse/KAFKA-2016) | RollingBounceTest takes long |  Major | . | Jun Rao | Ted Malaska |
| [KAFKA-2005](https://issues.apache.org/jira/browse/KAFKA-2005) | Generate html report for system tests |  Major | system tests | Ashish K Singh | Ashish K Singh |
| [KAFKA-1997](https://issues.apache.org/jira/browse/KAFKA-1997) | Refactor Mirror Maker |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1994](https://issues.apache.org/jira/browse/KAFKA-1994) | Evaluate performance effect of chroot check on Topic creation |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-1990](https://issues.apache.org/jira/browse/KAFKA-1990) | Add unlimited time-based log retention |  Major | . | Jay Kreps | Jeff Holoman |
| [KAFKA-1989](https://issues.apache.org/jira/browse/KAFKA-1989) | New purgatory design |  Critical | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-1982](https://issues.apache.org/jira/browse/KAFKA-1982) | change kafka.examples.Producer to use the new java producer |  Major | . | Jun Rao | Ashish K Singh |
| [KAFKA-1965](https://issues.apache.org/jira/browse/KAFKA-1965) | Leaner DelayedItem |  Trivial | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-1957](https://issues.apache.org/jira/browse/KAFKA-1957) | code doc typo |  Trivial | config | Yaguo Zhou |  |
| [KAFKA-1938](https://issues.apache.org/jira/browse/KAFKA-1938) | [doc] Quick start example should reference appropriate Kafka version |  Trivial | website | Stevo Slavic | Manikumar Reddy |
| [KAFKA-1926](https://issues.apache.org/jira/browse/KAFKA-1926) | Replace kafka.utils.Utils with o.a.k.common.utils.Utils |  Major | . | Jay Kreps | Tong Li |
| [KAFKA-1915](https://issues.apache.org/jira/browse/KAFKA-1915) | Integrate checkstyle for java code |  Minor | . | Jay Kreps | Jay Kreps |
| [KAFKA-1885](https://issues.apache.org/jira/browse/KAFKA-1885) | Allow test methods in "core" to be individually run from outside of the IDE |  Major | system tests | jaikiran pai | jaikiran pai |
| [KAFKA-1854](https://issues.apache.org/jira/browse/KAFKA-1854) | Allow the JIRA username and password to be prompted during patch submission |  Major | . | jaikiran pai | jaikiran pai |
| [KAFKA-1818](https://issues.apache.org/jira/browse/KAFKA-1818) | Code cleanup in ReplicationUtils including unit test |  Trivial | replication | Eric Olander | Neha Narkhede |
| [KAFKA-1807](https://issues.apache.org/jira/browse/KAFKA-1807) | Improve accuracy of ProducerPerformance target throughput |  Minor | clients, tools | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1801](https://issues.apache.org/jira/browse/KAFKA-1801) | Remove non-functional variable definition in log4j.properties |  Trivial | log | Raman Gupta | Raman Gupta |
| [KAFKA-1654](https://issues.apache.org/jira/browse/KAFKA-1654) | Provide a way to override server configuration from command line |  Major | core | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [KAFKA-1651](https://issues.apache.org/jira/browse/KAFKA-1651) | Removed some extra whitespace in KafkaServer.scala |  Trivial | core | Jonathan Creasy |  |
| [KAFKA-1650](https://issues.apache.org/jira/browse/KAFKA-1650) | Mirror Maker could lose data on unclean shutdown. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1646](https://issues.apache.org/jira/browse/KAFKA-1646) | Improve consumer read performance for Windows |  Major | log | xueqiang wang | Honghai Chen |
| [KAFKA-1644](https://issues.apache.org/jira/browse/KAFKA-1644) | Inherit FetchResponse from RequestOrResponse |  Major | . | Anton Karamanov | Anton Karamanov |
| [KAFKA-1546](https://issues.apache.org/jira/browse/KAFKA-1546) | Automate replica lag tuning |  Major | replication | Neha Narkhede | Aditya Auradkar |
| [KAFKA-1461](https://issues.apache.org/jira/browse/KAFKA-1461) | Replica fetcher thread does not implement any back-off behavior |  Major | replication | Sam Meder | Sriharsha Chintalapani |
| [KAFKA-1173](https://issues.apache.org/jira/browse/KAFKA-1173) | Using Vagrant to get up and running with Apache Kafka |  Major | . | Joe Stein | Ewen Cheslack-Postava |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2519](https://issues.apache.org/jira/browse/KAFKA-2519) | NetworkClient.close should remove node from inFlightRequests |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-2469](https://issues.apache.org/jira/browse/KAFKA-2469) | System test console consumer logs should write all messages to debug logger |  Minor | system tests | Ewen Cheslack-Postava | Geoff Anderson |
| [KAFKA-2468](https://issues.apache.org/jira/browse/KAFKA-2468) | SIGINT during Kafka server startup can leave server deadlocked |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-2467](https://issues.apache.org/jira/browse/KAFKA-2467) | ConsoleConsumer regressions |  Major | tools | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2466](https://issues.apache.org/jira/browse/KAFKA-2466) | ConsoleConsumer throws ConcurrentModificationException on termination |  Major | tools | Ashish K Singh | Ashish K Singh |
| [KAFKA-2461](https://issues.apache.org/jira/browse/KAFKA-2461) | request logger no longer logs extra information in debug mode |  Blocker | . | Gwen Shapira | Ashish K Singh |
| [KAFKA-2457](https://issues.apache.org/jira/browse/KAFKA-2457) | StackOverflowError during builds |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-2438](https://issues.apache.org/jira/browse/KAFKA-2438) | add maxParallelForks to build.gradle to speedup tests |  Major | . | Sriharsha Chintalapani | Sriharsha Chintalapani |
| [KAFKA-2437](https://issues.apache.org/jira/browse/KAFKA-2437) | Controller does not handle zk node deletion correctly. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2436](https://issues.apache.org/jira/browse/KAFKA-2436) | log.retention.hours should be honored by LogManager |  Critical | . | Dong Lin | Dong Lin |
| [KAFKA-2413](https://issues.apache.org/jira/browse/KAFKA-2413) | New consumer's subscribe(Topic...) api fails if called more than once |  Major | consumer | Ashish K Singh | Onur Karaman |
| [KAFKA-2408](https://issues.apache.org/jira/browse/KAFKA-2408) | (new) system tests: ConsoleConsumerService occasionally fails to register consumed message |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2407](https://issues.apache.org/jira/browse/KAFKA-2407) | Only create a log directory when it will be used |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2406](https://issues.apache.org/jira/browse/KAFKA-2406) | ISR propagation should be throttled to avoid overwhelming controller. |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2405](https://issues.apache.org/jira/browse/KAFKA-2405) | KafkaHealthCheck kills the JVM in handleSessionEstablishmentError |  Major | core | jaikiran pai | jaikiran pai |
| [KAFKA-2393](https://issues.apache.org/jira/browse/KAFKA-2393) | Correctly Handle InvalidTopicException in KafkaApis.getTopicMetadata() |  Major | . | Grant Henke | Grant Henke |
| [KAFKA-2381](https://issues.apache.org/jira/browse/KAFKA-2381) | Possible ConcurrentModificationException while unsubscribing from a topic in new consumer |  Major | consumer | Ashish K Singh | Ashish K Singh |
| [KAFKA-2357](https://issues.apache.org/jira/browse/KAFKA-2357) | Update zookeeper.connect description in Kafka documentation |  Major | . | Yuto Sasaki | David Jacot |
| [KAFKA-2353](https://issues.apache.org/jira/browse/KAFKA-2353) | SocketServer.Processor should catch exception and close the socket properly in configureNewConnections. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2347](https://issues.apache.org/jira/browse/KAFKA-2347) | Add setConsumerRebalanceListener method to ZookeeperConsuemrConnector java api. |  Major | . | Jiangjie Qin | Ashish K Singh |
| [KAFKA-2345](https://issues.apache.org/jira/browse/KAFKA-2345) | Attempt to delete a topic already marked for deletion throws ZkNodeExistsException |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-2337](https://issues.apache.org/jira/browse/KAFKA-2337) | Verify that metric names will not collide when creating new topics |  Major | . | Gwen Shapira | Grant Henke |
| [KAFKA-2336](https://issues.apache.org/jira/browse/KAFKA-2336) | Changing offsets.topic.num.partitions after the offset topic is created breaks consumer group partition assignment |  Major | core | Grant Henke | Grant Henke |
| [KAFKA-2335](https://issues.apache.org/jira/browse/KAFKA-2335) | Javadoc for Consumer says that it's thread-safe |  Major | consumer | Ismael Juma | Jason Gustafson |
| [KAFKA-2330](https://issues.apache.org/jira/browse/KAFKA-2330) | Vagrantfile sets global configs instead of per-provider override configs |  Minor | . | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2327](https://issues.apache.org/jira/browse/KAFKA-2327) | broker doesn't start if config defines advertised.host but not advertised.port |  Minor | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2317](https://issues.apache.org/jira/browse/KAFKA-2317) | De-register isrChangeNotificationListener on controller resignation |  Major | controller | Ashish K Singh | Ashish K Singh |
| [KAFKA-2316](https://issues.apache.org/jira/browse/KAFKA-2316) | Drop java 1.6 support |  Major | . | Sriharsha Chintalapani | Sriharsha Chintalapani |
| [KAFKA-2313](https://issues.apache.org/jira/browse/KAFKA-2313) | javadoc fix for KafkaConsumer deserialization |  Trivial | . | Onur Karaman | Onur Karaman |
| [KAFKA-2308](https://issues.apache.org/jira/browse/KAFKA-2308) | New producer + Snappy face un-compression errors after broker restart |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2306](https://issues.apache.org/jira/browse/KAFKA-2306) | New producer should emit metrics for buffer exhaustion |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-2304](https://issues.apache.org/jira/browse/KAFKA-2304) | Support enabling JMX in Kafka Vagrantfile |  Minor | . | Stevo Slavic | Stevo Slavic |
| [KAFKA-2300](https://issues.apache.org/jira/browse/KAFKA-2300) | Error in controller log when broker tries to rejoin cluster |  Major | . | Johnny Brown | Flavio Junqueira |
| [KAFKA-2291](https://issues.apache.org/jira/browse/KAFKA-2291) | Documentation Error |  Trivial | website | UTKARSH BHATNAGAR |  |
| [KAFKA-2290](https://issues.apache.org/jira/browse/KAFKA-2290) | OffsetIndex should open RandomAccessFile consistently |  Major | core | Jun Rao | Chris Black |
| [KAFKA-2288](https://issues.apache.org/jira/browse/KAFKA-2288) | Follow-up to KAFKA-2249 - reduce logging and testing |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2281](https://issues.apache.org/jira/browse/KAFKA-2281) | org.apache.kafka.clients.producer.internals.ErrorLoggingCallback holds unnecessary byte[] value |  Major | producer | TAO XIAO | TAO XIAO |
| [KAFKA-2276](https://issues.apache.org/jira/browse/KAFKA-2276) | Initial patch for KIP-25 |  Major | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-2272](https://issues.apache.org/jira/browse/KAFKA-2272) | listeners endpoint parsing fails if the hostname has capital letter |  Major | . | Sriharsha Chintalapani | Sriharsha Chintalapani |
| [KAFKA-2270](https://issues.apache.org/jira/browse/KAFKA-2270) | incorrect package name in unit tests |  Minor | core | Jun Rao | Proneet Verma |
| [KAFKA-2266](https://issues.apache.org/jira/browse/KAFKA-2266) | Client Selector can drop idle connections without notifying NetworkClient |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2264](https://issues.apache.org/jira/browse/KAFKA-2264) | SESSION\_TIMEOUT\_MS\_CONFIG in ConsumerConfig should be int |  Trivial | clients | Jun Rao | Manikumar Reddy |
| [KAFKA-2262](https://issues.apache.org/jira/browse/KAFKA-2262) | LogSegmentSize validation should be consistent |  Trivial | core | Jun Rao | Manikumar Reddy |
| [KAFKA-2253](https://issues.apache.org/jira/browse/KAFKA-2253) | Deadlock in delayed operation purgatory |  Major | . | Mayuresh Gharat | Guozhang Wang |
| [KAFKA-2252](https://issues.apache.org/jira/browse/KAFKA-2252) | Socket connection closing is logged, but not corresponding opening of socket |  Major | . | Jason Rosenberg | Gwen Shapira |
| [KAFKA-2251](https://issues.apache.org/jira/browse/KAFKA-2251) | "Connection reset by peer" IOExceptions should not be logged as ERROR |  Major | . | Jason Rosenberg |  |
| [KAFKA-2250](https://issues.apache.org/jira/browse/KAFKA-2250) | ConcurrentModificationException in metrics reporting |  Major | . | Jason Rosenberg |  |
| [KAFKA-2249](https://issues.apache.org/jira/browse/KAFKA-2249) | KafkaConfig does not preserve original Properties |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2248](https://issues.apache.org/jira/browse/KAFKA-2248) | Use Apache Rat to enforce copyright headers |  Major | build | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2241](https://issues.apache.org/jira/browse/KAFKA-2241) | AbstractFetcherThread.shutdown() should not block on ReadableByteChannel.read(buffer) |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-2235](https://issues.apache.org/jira/browse/KAFKA-2235) | LogCleaner offset map overflow |  Major | core, log | Ivan Simoneko | Ivan Simoneko |
| [KAFKA-2234](https://issues.apache.org/jira/browse/KAFKA-2234) | Partition reassignment of a nonexistent topic prevents future reassignments |  Blocker | . | Bob Halley | Manikumar Reddy |
| [KAFKA-2232](https://issues.apache.org/jira/browse/KAFKA-2232) | make MockProducer generic |  Major | clients | Jun Rao | Alexander Pakulov |
| [KAFKA-2226](https://issues.apache.org/jira/browse/KAFKA-2226) | NullPointerException in TestPurgatoryPerformance |  Major | . | Onur Karaman | Yasuhiro Matsuda |
| [KAFKA-2202](https://issues.apache.org/jira/browse/KAFKA-2202) | ConsumerPerformance reports a throughput much higher than the actual one |  Minor | tools | Micael Capitão | Manikumar Reddy |
| [KAFKA-2198](https://issues.apache.org/jira/browse/KAFKA-2198) | kafka-topics.sh exits with 0 status on failures |  Major | admin | Bob Halley | Manikumar Reddy |
| [KAFKA-2189](https://issues.apache.org/jira/browse/KAFKA-2189) | Snappy compression of message batches less efficient in 0.8.2.1 |  Blocker | build, compression, log | Olson,Andrew | Ismael Juma |
| [KAFKA-2169](https://issues.apache.org/jira/browse/KAFKA-2169) | Upgrade to zkclient-0.5 |  Critical | . | Neha Narkhede | Parth Brahmbhatt |
| [KAFKA-2164](https://issues.apache.org/jira/browse/KAFKA-2164) | ReplicaFetcherThread: suspicious log message on reset offset |  Major | . | Alexey Ozeritskiy |  |
| [KAFKA-2161](https://issues.apache.org/jira/browse/KAFKA-2161) | Fix a few copyrights |  Trivial | . | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2130](https://issues.apache.org/jira/browse/KAFKA-2130) | Resource leakage in AppInfo.scala during initialization |  Trivial | . | Sebastien Zimmer | Manikumar Reddy |
| [KAFKA-2122](https://issues.apache.org/jira/browse/KAFKA-2122) | Remove controller.message.queue.size Config |  Major | . | Onur Karaman | Sriharsha Chintalapani |
| [KAFKA-2121](https://issues.apache.org/jira/browse/KAFKA-2121) | prevent potential resource leak in KafkaProducer and KafkaConsumer |  Major | producer | Steven Zhen Wu | Steven Zhen Wu |
| [KAFKA-2118](https://issues.apache.org/jira/browse/KAFKA-2118) | Cleaner cannot clean after shutdown during replaceSegments |  Major | . | Gian Merlino | Rajini Sivaram |
| [KAFKA-2117](https://issues.apache.org/jira/browse/KAFKA-2117) | OffsetManager uses incorrect field for metadata |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-2115](https://issues.apache.org/jira/browse/KAFKA-2115) | Error updating metrics in RequestChannel |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2114](https://issues.apache.org/jira/browse/KAFKA-2114) | Unable to change min.insync.replicas default |  Major | . | Bryan Baugher | Gwen Shapira |
| [KAFKA-2113](https://issues.apache.org/jira/browse/KAFKA-2113) | TestPurgatoryPerformance does not compile using IBM JDK |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2112](https://issues.apache.org/jira/browse/KAFKA-2112) | make overflowWheel volatile |  Major | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2104](https://issues.apache.org/jira/browse/KAFKA-2104) |  testDuplicateListeners()  has a typo |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2101](https://issues.apache.org/jira/browse/KAFKA-2101) | Metric metadata-age is reset on a failed update |  Major | . | Tim Brooks | Tim Brooks |
| [KAFKA-2099](https://issues.apache.org/jira/browse/KAFKA-2099) | BrokerEndPoint file, methods and object names should match |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2088](https://issues.apache.org/jira/browse/KAFKA-2088) | kafka-console-consumer.sh should not create zookeeper path when no brokers found and chroot was set in zookeeper.connect |  Minor | clients | Zhiqiang He | Zhiqiang He |
| [KAFKA-2043](https://issues.apache.org/jira/browse/KAFKA-2043) | CompressionType is passed in each RecordAccumulator append |  Minor | clients | Grant Henke | Grant Henke |
| [KAFKA-2042](https://issues.apache.org/jira/browse/KAFKA-2042) | New producer metadata update always get all topics. |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2033](https://issues.apache.org/jira/browse/KAFKA-2033) | Small typo in documentation |  Major | consumer | Pierre-Yves Ritschard | Pierre-Yves Ritschard |
| [KAFKA-2032](https://issues.apache.org/jira/browse/KAFKA-2032) | ConsumerConfig doesn't validate partition.assignment.strategy values |  Major | . | Jason Rosenberg | Parth Brahmbhatt |
| [KAFKA-2026](https://issues.apache.org/jira/browse/KAFKA-2026) | Logging of unused options always shows null for the value and is misleading if the option is used by serializers |  Trivial | clients | Ewen Cheslack-Postava | Manikumar Reddy |
| [KAFKA-2012](https://issues.apache.org/jira/browse/KAFKA-2012) | Broker should automatically handle corrupt index files |  Major | . | Todd Palino | Manikumar Reddy |
| [KAFKA-2009](https://issues.apache.org/jira/browse/KAFKA-2009) | Fix UncheckedOffset.removeOffset synchronization and trace logging issue in mirror maker |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2001](https://issues.apache.org/jira/browse/KAFKA-2001) | OffsetCommitTest hang during setup |  Major | core | Jun Rao | Joel Koshy |
| [KAFKA-1999](https://issues.apache.org/jira/browse/KAFKA-1999) | Fix failing unit-test: kafka.api.ProducerFailureHandlingTest \> testNotEnoughReplicasAfterBrokerShutdown |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-1992](https://issues.apache.org/jira/browse/KAFKA-1992) | Following KAFKA-1697, checkEnoughReplicasReachOffset doesn't need to get requiredAcks |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-1988](https://issues.apache.org/jira/browse/KAFKA-1988) | org.apache.kafka.common.utils.Utils.abs method returns wrong value for negative numbers. |  Blocker | . | Tong Li | Tong Li |
| [KAFKA-1975](https://issues.apache.org/jira/browse/KAFKA-1975) | testGroupConsumption occasionally hang |  Major | . | Jun Rao |  |
| [KAFKA-1973](https://issues.apache.org/jira/browse/KAFKA-1973) | Remove the accidentally created LogCleanerManager.scala.orig |  Major | . | Jiangjie Qin | Grant Henke |
| [KAFKA-1969](https://issues.apache.org/jira/browse/KAFKA-1969) | NPE in unit test for new consumer |  Major | . | Neha Narkhede | Guozhang Wang |
| [KAFKA-1964](https://issues.apache.org/jira/browse/KAFKA-1964) |  testPartitionReassignmentCallback hangs occasionally |  Major | admin | Jun Rao | Guozhang Wang |
| [KAFKA-1960](https://issues.apache.org/jira/browse/KAFKA-1960) | .gitignore does not exclude test generated files and folders. |  Minor | build | Tong Li | Tong Li |
| [KAFKA-1959](https://issues.apache.org/jira/browse/KAFKA-1959) | Class CommitThread overwrite group of Thread class causing compile errors |  Major | core | Tong Li | Tong Li |
| [KAFKA-1948](https://issues.apache.org/jira/browse/KAFKA-1948) | kafka.api.consumerTests are hanging |  Major | . | Gwen Shapira | Guozhang Wang |
| [KAFKA-1947](https://issues.apache.org/jira/browse/KAFKA-1947) | can't explicitly set replica-assignment when add partitions |  Major | core | Honghai Chen |  |
| [KAFKA-1940](https://issues.apache.org/jira/browse/KAFKA-1940) | Initial checkout and build failing |  Major | build | Martin Lemanski | Martin Lemanski |
| [KAFKA-1901](https://issues.apache.org/jira/browse/KAFKA-1901) | Move Kafka version to be generated in code by build (instead of in manifest) |  Major | . | Jason Rosenberg | Manikumar Reddy |
| [KAFKA-1896](https://issues.apache.org/jira/browse/KAFKA-1896) | Record size funcition of record in mirror maker hit NPE when the message value is null. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1891](https://issues.apache.org/jira/browse/KAFKA-1891) | MirrorMaker hides consumer exception - making troubleshooting challenging |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-1890](https://issues.apache.org/jira/browse/KAFKA-1890) | Fix bug preventing Mirror Maker from successful rebalance. |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1884](https://issues.apache.org/jira/browse/KAFKA-1884) | Print metadata response errors |  Major | producer | Manikumar Reddy | Manikumar Reddy |
| [KAFKA-1883](https://issues.apache.org/jira/browse/KAFKA-1883) | NullPointerException in RequestSendThread |  Major | core | jaikiran pai | jaikiran pai |
| [KAFKA-1881](https://issues.apache.org/jira/browse/KAFKA-1881) | transient unit test failure in testDeleteTopicWithCleaner due to OOME |  Major | core | Jun Rao | Ewen Cheslack-Postava |
| [KAFKA-1878](https://issues.apache.org/jira/browse/KAFKA-1878) | ProducerFailureHandlingTest.testCannotSendToInternalTopic fails with TimeoutException while trying to fetch metadata for topic |  Major | system tests | jaikiran pai | jaikiran pai |
| [KAFKA-1877](https://issues.apache.org/jira/browse/KAFKA-1877) | Expose version via JMX for 'new' producer |  Major | clients, producer | Vladimir Tretyakov | Manikumar Reddy |
| [KAFKA-1867](https://issues.apache.org/jira/browse/KAFKA-1867) | liveBroker list not updated on a cluster with no topics |  Major | . | Jun Rao | Sriharsha Chintalapani |
| [KAFKA-1866](https://issues.apache.org/jira/browse/KAFKA-1866) | LogStartOffset gauge throws exceptions after log.delete() |  Major | . | Gian Merlino | Sriharsha Chintalapani |
| [KAFKA-1865](https://issues.apache.org/jira/browse/KAFKA-1865) | Add a flush() call to the new producer API |  Major | . | Jay Kreps | Jay Kreps |
| [KAFKA-1852](https://issues.apache.org/jira/browse/KAFKA-1852) | OffsetCommitRequest can commit offset on unknown topic |  Major | . | Jun Rao | Sriharsha Chintalapani |
| [KAFKA-1848](https://issues.apache.org/jira/browse/KAFKA-1848) | Checking shutdown during each iteration of ZookeeperConsumerConnector |  Major | . | Aditya Auradkar | Aditya Auradkar |
| [KAFKA-1836](https://issues.apache.org/jira/browse/KAFKA-1836) | metadata.fetch.timeout.ms set to zero blocks forever |  Minor | clients | Paul Pearcy |  |
| [KAFKA-1824](https://issues.apache.org/jira/browse/KAFKA-1824) | in ConsoleProducer - properties key.separator and parse.key no longer work |  Major | tools | Gwen Shapira | Gwen Shapira |
| [KAFKA-1815](https://issues.apache.org/jira/browse/KAFKA-1815) | ServerShutdownTest fails in trunk. |  Minor | . | Anatoly Fayngelerin | Anatoly Fayngelerin |
| [KAFKA-1813](https://issues.apache.org/jira/browse/KAFKA-1813) | Build fails for scala 2.9.2 |  Minor | build | Anatoly Fayngelerin | Anatoly Fayngelerin |
| [KAFKA-1812](https://issues.apache.org/jira/browse/KAFKA-1812) |  Allow IpV6 in configuration with parseCsvMap |  Minor | . | Jeff Holoman | Jeff Holoman |
| [KAFKA-1803](https://issues.apache.org/jira/browse/KAFKA-1803) | UncleanLeaderElectionEnableProp in LogConfig should be of boolean |  Major | core | Jun Rao | Dave Parfitt |
| [KAFKA-1798](https://issues.apache.org/jira/browse/KAFKA-1798) | ConfigDef.parseType() should throw exception on invalid boolean value |  Major | . | Jun Rao | dokovan |
| [KAFKA-1782](https://issues.apache.org/jira/browse/KAFKA-1782) | Junit3 Misusage |  Major | . | Guozhang Wang | Alexander Pakulov |
| [KAFKA-1762](https://issues.apache.org/jira/browse/KAFKA-1762) | Update max-inflight-request doc string |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1758](https://issues.apache.org/jira/browse/KAFKA-1758) | corrupt recovery file prevents startup |  Major | log | Jason Rosenberg | Manikumar Reddy |
| [KAFKA-1757](https://issues.apache.org/jira/browse/KAFKA-1757) | Can not delete Topic index on Windows |  Minor | log | Lukáš Vyhlídka | Sriharsha Chintalapani |
| [KAFKA-1747](https://issues.apache.org/jira/browse/KAFKA-1747) | TestcaseEnv improperly shares state between instances |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1746](https://issues.apache.org/jira/browse/KAFKA-1746) | System tests don't handle errors well |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1739](https://issues.apache.org/jira/browse/KAFKA-1739) | Remove testComplexCompressDecompress in MessageCompressionTest |  Major | . | Guozhang Wang | Manikumar Reddy |
| [KAFKA-1733](https://issues.apache.org/jira/browse/KAFKA-1733) | Producer.send will block indeterminately when broker is unavailable. |  Major | core, producer | Marc Chung | Marc Chung |
| [KAFKA-1727](https://issues.apache.org/jira/browse/KAFKA-1727) | Fix comment about message format |  Trivial | . | Muneyuki Noguchi | Muneyuki Noguchi |
| [KAFKA-1724](https://issues.apache.org/jira/browse/KAFKA-1724) | Errors after reboot in single node setup |  Major | . | Ciprian Hacman | Sriharsha Chintalapani |
| [KAFKA-1711](https://issues.apache.org/jira/browse/KAFKA-1711) | WARN Property topic is not valid when running console producer |  Major | core | Jun Rao | Joe Crobak |
| [KAFKA-1702](https://issues.apache.org/jira/browse/KAFKA-1702) | Messages silently Lost by producer |  Major | producer | Alexis Midon | Alexis Midon |
| [KAFKA-1700](https://issues.apache.org/jira/browse/KAFKA-1700) | examples directory - README and shell scripts are out of date |  Minor | . | Geoff Anderson | Geoff Anderson |
| [KAFKA-1698](https://issues.apache.org/jira/browse/KAFKA-1698) | Validator.ensureValid() only validates default config value |  Major | core | Jun Rao | Ewen Cheslack-Postava |
| [KAFKA-1697](https://issues.apache.org/jira/browse/KAFKA-1697) | remove code related to ack\>1 on the broker |  Major | . | Jun Rao | Gwen Shapira |
| [KAFKA-1668](https://issues.apache.org/jira/browse/KAFKA-1668) | TopicCommand doesn't warn if --topic argument doesn't match any topics |  Minor | tools | Ryan Berdeen | Manikumar Reddy |
| [KAFKA-1667](https://issues.apache.org/jira/browse/KAFKA-1667) |  topic-level configuration not validated |  Major | . | Ryan Berdeen | Dmytro Kostiuchenko |
| [KAFKA-1648](https://issues.apache.org/jira/browse/KAFKA-1648) | Round robin consumer balance throws an NPE when there are no topics |  Major | consumer | Todd Palino | Mayuresh Gharat |
| [KAFKA-1641](https://issues.apache.org/jira/browse/KAFKA-1641) | Log cleaner exits if last cleaned offset is lower than earliest offset |  Major | . | Joel Koshy | Guozhang Wang |
| [KAFKA-1634](https://issues.apache.org/jira/browse/KAFKA-1634) | Improve semantics of timestamp in OffsetCommitRequests and update documentation |  Blocker | . | Neha Narkhede | Guozhang Wang |
| [KAFKA-1583](https://issues.apache.org/jira/browse/KAFKA-1583) | Kafka API Refactoring |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1517](https://issues.apache.org/jira/browse/KAFKA-1517) | Messages is a required argument to Producer Performance Test |  Trivial | . | Daniel Compton | Daniel Compton |
| [KAFKA-1481](https://issues.apache.org/jira/browse/KAFKA-1481) | Stop using dashes AND underscores as separators in MBean names |  Critical | core | Otis Gospodnetic | Vladimir Tretyakov |
| [KAFKA-1465](https://issues.apache.org/jira/browse/KAFKA-1465) | kafka-reassign-partitions.sh fails when topic name contains dash/hyphen |  Major | tools | Adrian Muraru |  |
| [KAFKA-1374](https://issues.apache.org/jira/browse/KAFKA-1374) | LogCleaner (compaction) does not support compressed topics |  Major | . | Joel Koshy | Manikumar Reddy |
| [KAFKA-1367](https://issues.apache.org/jira/browse/KAFKA-1367) | Broker topic metadata not kept in sync with ZooKeeper |  Major | . | Ryan Berdeen | Ashish K Singh |
| [KAFKA-1109](https://issues.apache.org/jira/browse/KAFKA-1109) | Need to fix GC log configuration code, not able to override KAFKA\_GC\_LOG\_OPTS |  Major | . | Viktor Kolodrevskiy | Manikumar Reddy |
| [KAFKA-1070](https://issues.apache.org/jira/browse/KAFKA-1070) | Auto-assign node id |  Major | . | Jay Kreps | Sriharsha Chintalapani |
| [KAFKA-1057](https://issues.apache.org/jira/browse/KAFKA-1057) | Trim whitespaces from user specified configs |  Major | config | Neha Narkhede | Manikumar Reddy |
| [KAFKA-972](https://issues.apache.org/jira/browse/KAFKA-972) | MetadataRequest returns stale list of brokers |  Major | core | Vinicius Carvalho | Ashish K Singh |
| [KAFKA-824](https://issues.apache.org/jira/browse/KAFKA-824) | java.lang.NullPointerException in commitOffsets |  Major | consumer | Yonghui Zhao | Parth Brahmbhatt |
| [KAFKA-766](https://issues.apache.org/jira/browse/KAFKA-766) | Isr shrink/expand check is fragile |  Major | . | Sriram Subramanian | Neha Narkhede |
| [KAFKA-742](https://issues.apache.org/jira/browse/KAFKA-742) | Existing directories under the Kafka data directory without any data cause process to not start |  Major | config | Chris Curtin | Ashish K Singh |
| [KAFKA-328](https://issues.apache.org/jira/browse/KAFKA-328) | Write unit test for kafka server startup and shutdown API |  Major | . | Neha Narkhede | BalajiSeshadri |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2355](https://issues.apache.org/jira/browse/KAFKA-2355) | Add an unit test to validate the deletion of a partition marked as deleted |  Minor | . | Edward Ribeiro | Edward Ribeiro |
| [KAFKA-2340](https://issues.apache.org/jira/browse/KAFKA-2340) | Add additional unit tests for new consumer Fetcher |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2013](https://issues.apache.org/jira/browse/KAFKA-2013) | benchmark test for the purgatory |  Trivial | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2486](https://issues.apache.org/jira/browse/KAFKA-2486) | New consumer performance |  Major | consumer | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-2475](https://issues.apache.org/jira/browse/KAFKA-2475) | Reduce copycat configs to only specify a converter or serializer, not both |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2439](https://issues.apache.org/jira/browse/KAFKA-2439) | Add MirrorMakerService to ducktape system tests |  Major | system tests | Geoff Anderson | Geoff Anderson |
| [KAFKA-2415](https://issues.apache.org/jira/browse/KAFKA-2415) | Transient failure in LogRecoveryTest.testHWCheckpointWithFailuresMultipleLogSegments |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2411](https://issues.apache.org/jira/browse/KAFKA-2411) | remove usage of BlockingChannel in the broker |  Blocker | security | Jun Rao | Ismael Juma |
| [KAFKA-2401](https://issues.apache.org/jira/browse/KAFKA-2401) | Fix transient failure of ProducerSendTest.testCloseWithZeroTimeoutFromSenderThread() |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2400](https://issues.apache.org/jira/browse/KAFKA-2400) | Expose heartbeat frequency in new consumer configuration |  Minor | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2388](https://issues.apache.org/jira/browse/KAFKA-2388) | subscribe(topic)/unsubscribe(topic) should either take a callback to allow user to handle exceptions or it should be synchronous. |  Major | . | Jiangjie Qin | Jason Gustafson |
| [KAFKA-2386](https://issues.apache.org/jira/browse/KAFKA-2386) | Transient test failure: testGenerationIdIncrementsOnRebalance |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-2377](https://issues.apache.org/jira/browse/KAFKA-2377) | Add copycat system tests |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2367](https://issues.apache.org/jira/browse/KAFKA-2367) | Add Copycat runtime data API |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2366](https://issues.apache.org/jira/browse/KAFKA-2366) | Initial patch for Copycat |  Major | copycat | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2342](https://issues.apache.org/jira/browse/KAFKA-2342) | KafkaConsumer rebalance with in-flight fetch can cause invalid position |  Major | core | Jun Rao | Jason Gustafson |
| [KAFKA-2332](https://issues.apache.org/jira/browse/KAFKA-2332) | Add quota metrics to old producer and consumer |  Major | . | Aditya Auradkar | Dong Lin |
| [KAFKA-2301](https://issues.apache.org/jira/browse/KAFKA-2301) | Deprecate ConsumerOffsetChecker |  Major | tools | Ashish K Singh | Ashish K Singh |
| [KAFKA-2275](https://issues.apache.org/jira/browse/KAFKA-2275) | Add a ListTopics() API to the new consumer |  Critical | consumer | Guozhang Wang | Ashish K Singh |
| [KAFKA-2271](https://issues.apache.org/jira/browse/KAFKA-2271) | transient unit test failure in KafkaConfigConfigDefTest.testFromPropsToProps |  Major | core | Jun Rao | Jason Gustafson |
| [KAFKA-2245](https://issues.apache.org/jira/browse/KAFKA-2245) | Add response tests for ConsumerCoordinator |  Critical | consumer | Onur Karaman | Onur Karaman |
| [KAFKA-2210](https://issues.apache.org/jira/browse/KAFKA-2210) | KafkaAuthorizer: Add all public entities, config changes and changes to KafkaAPI and kafkaServer to allow pluggable authorizer implementation. |  Blocker | security | Parth Brahmbhatt | Parth Brahmbhatt |
| [KAFKA-2205](https://issues.apache.org/jira/browse/KAFKA-2205) | Generalize TopicConfigManager to handle multiple entity configs |  Major | . | Aditya Auradkar | Aditya Auradkar |
| [KAFKA-2195](https://issues.apache.org/jira/browse/KAFKA-2195) | Add versionId to AbstractRequest.getErrorResponse and AbstractRequest.getRequest |  Major | . | Andrii Biletskyi | Andrii Biletskyi |
| [KAFKA-2168](https://issues.apache.org/jira/browse/KAFKA-2168) | New consumer poll() can block other calls like position(), commit(), and close() indefinitely |  Critical | clients, consumer | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-2136](https://issues.apache.org/jira/browse/KAFKA-2136) | Client side protocol changes to return quota delays |  Blocker | . | Aditya Auradkar | Aditya Auradkar |
| [KAFKA-2123](https://issues.apache.org/jira/browse/KAFKA-2123) | Make new consumer offset commit API use callback + future |  Critical | clients, consumer | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-2103](https://issues.apache.org/jira/browse/KAFKA-2103) | kafka.producer.AsyncProducerTest failure. |  Major | . | Jiangjie Qin | Ewen Cheslack-Postava |
| [KAFKA-2089](https://issues.apache.org/jira/browse/KAFKA-2089) | MetadataTest transient failure |  Major | . | Jun Rao | Rajini Sivaram |
| [KAFKA-2067](https://issues.apache.org/jira/browse/KAFKA-2067) | Add LeaderAndISR request/response to org.apache.kafka.common.requests |  Major | . | Gwen Shapira | Ismael Juma |
| [KAFKA-2065](https://issues.apache.org/jira/browse/KAFKA-2065) | Add ControlledShutdown to  org.apache.kafka.common.requests |  Major | . | Gwen Shapira | Ismael Juma |
| [KAFKA-2056](https://issues.apache.org/jira/browse/KAFKA-2056) | PartitionAssignorTest.testRangePartitionAssignor transient failure |  Major | . | Guozhang Wang | Fangmin Lv |
| [KAFKA-2055](https://issues.apache.org/jira/browse/KAFKA-2055) | ConsumerBounceTest.testSeekAndCommitWithBrokerFailures transient failure |  Major | . | Guozhang Wang | Fangmin Lv |
| [KAFKA-2015](https://issues.apache.org/jira/browse/KAFKA-2015) | Enable ConsoleConsumer to use new consumer |  Major | consumer | Guozhang Wang | Ben Stopford |
| [KAFKA-1986](https://issues.apache.org/jira/browse/KAFKA-1986) | Producer request failure rate should not include InvalidMessageSizeException and OffsetOutOfRangeException |  Major | . | Aditya Auradkar | Aditya Auradkar |
| [KAFKA-1953](https://issues.apache.org/jira/browse/KAFKA-1953) | Disambiguate metrics from different purgatories |  Major | purgatory | Joel Koshy | Joel Koshy |
| [KAFKA-1943](https://issues.apache.org/jira/browse/KAFKA-1943) | Producer request failure rate should not include MessageSetSizeTooLarge and MessageSizeTooLargeException |  Major | . | Aditya A Auradkar | Aditya Auradkar |
| [KAFKA-1928](https://issues.apache.org/jira/browse/KAFKA-1928) | Move kafka.network over to using the network classes in org.apache.kafka.common.network |  Major | security | Jun Rao | Gwen Shapira |
| [KAFKA-1925](https://issues.apache.org/jira/browse/KAFKA-1925) | Coordinator Node Id set to INT\_MAX breaks coordinator metadata updates |  Critical | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1914](https://issues.apache.org/jira/browse/KAFKA-1914) | Count TotalProduceRequestRate and TotalFetchRequestRate in BrokerTopicMetrics |  Major | core | Aditya A Auradkar | Aditya Auradkar |
| [KAFKA-1910](https://issues.apache.org/jira/browse/KAFKA-1910) | Refactor KafkaConsumer |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1845](https://issues.apache.org/jira/browse/KAFKA-1845) | KafkaConfig should use ConfigDef |  Major | . | Gwen Shapira | Andrii Biletskyi |
| [KAFKA-1809](https://issues.apache.org/jira/browse/KAFKA-1809) | Refactor brokers to allow listening on multiple ports and IPs |  Major | security | Gwen Shapira | Gwen Shapira |
| [KAFKA-1760](https://issues.apache.org/jira/browse/KAFKA-1760) | Implement new consumer client |  Major | consumer | Jay Kreps | Jay Kreps |
| [KAFKA-1750](https://issues.apache.org/jira/browse/KAFKA-1750) | handle "topic not exists" scenario |  Major | tools | Dmitry Pekar | Dmitry Pekar |
| [KAFKA-1740](https://issues.apache.org/jira/browse/KAFKA-1740) | Merge Offset manager into Coordinator |  Critical | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1691](https://issues.apache.org/jira/browse/KAFKA-1691) | new java consumer needs ssl support as a client |  Major | security | Joe Stein | Sriharsha Chintalapani |
| [KAFKA-1690](https://issues.apache.org/jira/browse/KAFKA-1690) | Add SSL support to Kafka Broker, Producer and Consumer |  Major | . | Joe Stein | Sriharsha Chintalapani |
| [KAFKA-1685](https://issues.apache.org/jira/browse/KAFKA-1685) | Implement TLS/SSL tests |  Major | security | Jay Kreps | Sriharsha Chintalapani |
| [KAFKA-1683](https://issues.apache.org/jira/browse/KAFKA-1683) | Implement a "session" concept in the socket server |  Major | security | Jay Kreps | Gwen Shapira |
| [KAFKA-1471](https://issues.apache.org/jira/browse/KAFKA-1471) | Add Producer Unit Tests for LZ4 and LZ4HC compression |  Major | . | James Oliver | Ewen Cheslack-Postava |
| [KAFKA-1335](https://issues.apache.org/jira/browse/KAFKA-1335) | Add rebalancing logic to the coordinator / consumer |  Major | consumer | Neha Narkhede | Guozhang Wang |
| [KAFKA-1334](https://issues.apache.org/jira/browse/KAFKA-1334) | Coordinator should detect consumer failures |  Major | consumer | Neha Narkhede | Onur Karaman |
| [KAFKA-1333](https://issues.apache.org/jira/browse/KAFKA-1333) | Add consumer co-ordinator module to the server |  Major | consumer | Neha Narkhede | Guozhang Wang |
| [KAFKA-1329](https://issues.apache.org/jira/browse/KAFKA-1329) | Add metadata fetch and refresh functionality to the consumer |  Major | consumer | Neha Narkhede | Neha Narkhede |
| [KAFKA-1328](https://issues.apache.org/jira/browse/KAFKA-1328) | Add new consumer APIs |  Major | consumer | Neha Narkhede | Neha Narkhede |
| [KAFKA-1316](https://issues.apache.org/jira/browse/KAFKA-1316) | Refactor Sender |  Major | clients | Jay Kreps | Jay Kreps |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1476](https://issues.apache.org/jira/browse/KAFKA-1476) | Get a list of consumer groups |  Major | tools | Ryan Williams | Onur Karaman |
| [KAFKA-2492](https://issues.apache.org/jira/browse/KAFKA-2492) | Upgrade zkclient dependency to 0.6 |  Trivial | . | Stevo Slavic | Stevo Slavic |
| [KAFKA-2349](https://issues.apache.org/jira/browse/KAFKA-2349) | `contributing` website page should link to "Contributing Code Changes" wiki page |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-2348](https://issues.apache.org/jira/browse/KAFKA-2348) | Drop support for Scala 2.9 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-1856](https://issues.apache.org/jira/browse/KAFKA-1856) | Add PreCommit Patch Testing |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-1661](https://issues.apache.org/jira/browse/KAFKA-1661) | Move MockConsumer and MockProducer from src/main to src/test |  Trivial | clients, consumer, producer | Andras Hatvani |  |


