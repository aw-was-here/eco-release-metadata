
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

## Release 0.8.3 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1499](https://issues.apache.org/jira/browse/KAFKA-1499) | Broker-side compression configuration |  Major | . | Joel Koshy | Manikumar Reddy |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2131](https://issues.apache.org/jira/browse/KAFKA-2131) | Update new producer javadocs with correct documentation links |  Trivial | clients | Manikumar Reddy | Manikumar Reddy |
| [KAFKA-2119](https://issues.apache.org/jira/browse/KAFKA-2119) | ConsumerRecord key() and value() methods should not have throws Exception |  Trivial | clients, consumer | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2110](https://issues.apache.org/jira/browse/KAFKA-2110) | Doc: Clarify that max number of consumer instances is per consumer group |  Trivial | . | Peter Vandenabeele | Peter Vandenabeele |
| [KAFKA-2109](https://issues.apache.org/jira/browse/KAFKA-2109) | Support retries in KafkaLog4jAppender |  Minor | producer | Dave Beech | Dave Beech |
| [KAFKA-2096](https://issues.apache.org/jira/browse/KAFKA-2096) | Enable keepalive socket option for broker to prevent socket leak |  Critical | network | Allen Wang | Allen Wang |
| [KAFKA-2090](https://issues.apache.org/jira/browse/KAFKA-2090) | Remove duplicate check to metadataFetchInProgress |  Minor | . | Tim Brooks | Tim Brooks |
| [KAFKA-2044](https://issues.apache.org/jira/browse/KAFKA-2044) | Support requests and responses from o.a.k.common in KafkaApis |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2039](https://issues.apache.org/jira/browse/KAFKA-2039) | Update Scala to 2.10.5 and 2.11.6 |  Minor | . | Ismael Juma | Ismael Juma |
| [KAFKA-2016](https://issues.apache.org/jira/browse/KAFKA-2016) | RollingBounceTest takes long |  Major | . | Jun Rao | Ted Malaska |
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
| [KAFKA-1650](https://issues.apache.org/jira/browse/KAFKA-1650) | Mirror Maker could lose data on unclean shutdown. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1644](https://issues.apache.org/jira/browse/KAFKA-1644) | Inherit FetchResponse from RequestOrResponse |  Major | . | Anton Karamanov | Anton Karamanov |
| [KAFKA-1546](https://issues.apache.org/jira/browse/KAFKA-1546) | Automate replica lag tuning |  Major | replication | Neha Narkhede | Aditya Auradkar |
| [KAFKA-1461](https://issues.apache.org/jira/browse/KAFKA-1461) | Replica fetcher thread does not implement any back-off behavior |  Major | replication | Sam Meder | Sriharsha Chintalapani |
| [KAFKA-1173](https://issues.apache.org/jira/browse/KAFKA-1173) | Using Vagrant to get up and running with Apache Kafka |  Major | . | Joe Stein | Ewen Cheslack-Postava |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2117](https://issues.apache.org/jira/browse/KAFKA-2117) | OffsetManager uses incorrect field for metadata |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-2115](https://issues.apache.org/jira/browse/KAFKA-2115) | Error updating metrics in RequestChannel |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2113](https://issues.apache.org/jira/browse/KAFKA-2113) | TestPurgatoryPerformance does not compile using IBM JDK |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2112](https://issues.apache.org/jira/browse/KAFKA-2112) | make overflowWheel volatile |  Major | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2104](https://issues.apache.org/jira/browse/KAFKA-2104) |  testDuplicateListeners()  has a typo |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2099](https://issues.apache.org/jira/browse/KAFKA-2099) | BrokerEndPoint file, methods and object names should match |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-2088](https://issues.apache.org/jira/browse/KAFKA-2088) | kafka-console-consumer.sh should not create zookeeper path when no brokers found and chroot was set in zookeeper.connect |  Minor | clients | Zhiqiang He | Zhiqiang He |
| [KAFKA-2043](https://issues.apache.org/jira/browse/KAFKA-2043) | CompressionType is passed in each RecordAccumulator append |  Minor | clients | Grant Henke | Grant Henke |
| [KAFKA-2042](https://issues.apache.org/jira/browse/KAFKA-2042) | New producer metadata update always get all topics. |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-2033](https://issues.apache.org/jira/browse/KAFKA-2033) | Small typo in documentation |  Major | consumer | Pierre-Yves Ritschard | Pierre-Yves Ritschard |
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
| [KAFKA-1896](https://issues.apache.org/jira/browse/KAFKA-1896) | Record size funcition of record in mirror maker hit NPE when the message value is null. |  Major | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1891](https://issues.apache.org/jira/browse/KAFKA-1891) | MirrorMaker hides consumer exception - making troubleshooting challenging |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-1890](https://issues.apache.org/jira/browse/KAFKA-1890) | Fix bug preventing Mirror Maker from successful rebalance. |  Blocker | . | Jiangjie Qin | Jiangjie Qin |
| [KAFKA-1883](https://issues.apache.org/jira/browse/KAFKA-1883) | NullPointerException in RequestSendThread |  Major | core | jaikiran pai | jaikiran pai |
| [KAFKA-1881](https://issues.apache.org/jira/browse/KAFKA-1881) | transient unit test failure in testDeleteTopicWithCleaner due to OOME |  Major | core | Jun Rao | Ewen Cheslack-Postava |
| [KAFKA-1878](https://issues.apache.org/jira/browse/KAFKA-1878) | ProducerFailureHandlingTest.testCannotSendToInternalTopic fails with TimeoutException while trying to fetch metadata for topic |  Major | system tests | jaikiran pai | jaikiran pai |
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
| [KAFKA-1762](https://issues.apache.org/jira/browse/KAFKA-1762) | Update max-inflight-request doc string |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-1757](https://issues.apache.org/jira/browse/KAFKA-1757) | Can not delete Topic index on Windows |  Minor | log | Lukáš Vyhlídka | Sriharsha Chintalapani |
| [KAFKA-1747](https://issues.apache.org/jira/browse/KAFKA-1747) | TestcaseEnv improperly shares state between instances |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1746](https://issues.apache.org/jira/browse/KAFKA-1746) | System tests don't handle errors well |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1739](https://issues.apache.org/jira/browse/KAFKA-1739) | Remove testComplexCompressDecompress in MessageCompressionTest |  Major | . | Guozhang Wang | Manikumar Reddy |
| [KAFKA-1733](https://issues.apache.org/jira/browse/KAFKA-1733) | Producer.send will block indeterminately when broker is unavailable. |  Major | core, producer | Marc Chung | Marc Chung |
| [KAFKA-1727](https://issues.apache.org/jira/browse/KAFKA-1727) | Fix comment about message format |  Trivial | . | Muneyuki Noguchi | Muneyuki Noguchi |
| [KAFKA-1724](https://issues.apache.org/jira/browse/KAFKA-1724) | Errors after reboot in single node setup |  Major | . | Ciprian Hacman | Sriharsha Chintalapani |
| [KAFKA-1711](https://issues.apache.org/jira/browse/KAFKA-1711) | WARN Property topic is not valid when running console producer |  Major | core | Jun Rao | Joe Crobak |
| [KAFKA-1702](https://issues.apache.org/jira/browse/KAFKA-1702) | Messages silently Lost by producer |  Major | producer | Alexis Midon | Alexis Midon |
| [KAFKA-1700](https://issues.apache.org/jira/browse/KAFKA-1700) | examples directory - README and shell scripts are out of date |  Minor | . | Geoffrey Anderson | Geoffrey Anderson |
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
| [KAFKA-1109](https://issues.apache.org/jira/browse/KAFKA-1109) | Need to fix GC log configuration code, not able to override KAFKA\_GC\_LOG\_OPTS |  Major | . | Viktor Kolodrevskiy | Manikumar Reddy |
| [KAFKA-1070](https://issues.apache.org/jira/browse/KAFKA-1070) | Auto-assign node id |  Major | . | Jay Kreps | Sriharsha Chintalapani |
| [KAFKA-1057](https://issues.apache.org/jira/browse/KAFKA-1057) | Trim whitespaces from user specified configs |  Major | config | Neha Narkhede | Manikumar Reddy |
| [KAFKA-766](https://issues.apache.org/jira/browse/KAFKA-766) | Isr shrink/expand check is fragile |  Major | . | Sriram Subramanian | Neha Narkhede |
| [KAFKA-742](https://issues.apache.org/jira/browse/KAFKA-742) | Existing directories under the Kafka data directory without any data cause process to not start |  Major | config | Chris Curtin | Ashish K Singh |
| [KAFKA-328](https://issues.apache.org/jira/browse/KAFKA-328) | Write unit test for kafka server startup and shutdown API |  Major | . | Neha Narkhede | BalajiSeshadri |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2013](https://issues.apache.org/jira/browse/KAFKA-2013) | benchmark test for the purgatory |  Trivial | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2056](https://issues.apache.org/jira/browse/KAFKA-2056) | PartitionAssignorTest.testRangePartitionAssignor transient failure |  Major | . | Guozhang Wang | Fangmin Lv |
| [KAFKA-1986](https://issues.apache.org/jira/browse/KAFKA-1986) | Producer request failure rate should not include InvalidMessageSizeException and OffsetOutOfRangeException |  Major | . | Aditya Auradkar | Aditya Auradkar |
| [KAFKA-1953](https://issues.apache.org/jira/browse/KAFKA-1953) | Disambiguate metrics from different purgatories |  Major | purgatory | Joel Koshy | Joel Koshy |
| [KAFKA-1943](https://issues.apache.org/jira/browse/KAFKA-1943) | Producer request failure rate should not include MessageSetSizeTooLarge and MessageSizeTooLargeException |  Major | . | Aditya A Auradkar | Aditya Auradkar |
| [KAFKA-1925](https://issues.apache.org/jira/browse/KAFKA-1925) | Coordinator Node Id set to INT\_MAX breaks coordinator metadata updates |  Critical | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1914](https://issues.apache.org/jira/browse/KAFKA-1914) | Count TotalProduceRequestRate and TotalFetchRequestRate in BrokerTopicMetrics |  Major | core | Aditya A Auradkar | Aditya Auradkar |
| [KAFKA-1910](https://issues.apache.org/jira/browse/KAFKA-1910) | Refactor KafkaConsumer |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1845](https://issues.apache.org/jira/browse/KAFKA-1845) | KafkaConfig should use ConfigDef |  Major | . | Gwen Shapira | Andrii Biletskyi |
| [KAFKA-1809](https://issues.apache.org/jira/browse/KAFKA-1809) | Refactor brokers to allow listening on multiple ports and IPs |  Major | security | Gwen Shapira | Gwen Shapira |
| [KAFKA-1760](https://issues.apache.org/jira/browse/KAFKA-1760) | Implement new consumer client |  Major | consumer | Jay Kreps | Jay Kreps |
| [KAFKA-1750](https://issues.apache.org/jira/browse/KAFKA-1750) | handle "topic not exists" scenario |  Major | tools | Dmitry Pekar | Dmitry Pekar |
| [KAFKA-1471](https://issues.apache.org/jira/browse/KAFKA-1471) | Add Producer Unit Tests for LZ4 and LZ4HC compression |  Major | . | James Oliver | Ewen Cheslack-Postava |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-1476](https://issues.apache.org/jira/browse/KAFKA-1476) | Get a list of consumer groups |  Major | tools | Ryan Williams | Onur Karaman |
| [KAFKA-1856](https://issues.apache.org/jira/browse/KAFKA-1856) | Add PreCommit Patch Testing |  Major | . | Ashish K Singh | Ashish K Singh |
| [KAFKA-1661](https://issues.apache.org/jira/browse/KAFKA-1661) | Move MockConsumer and MockProducer from src/main to src/test |  Trivial | clients, consumer, producer | Andras Hatvani |  |


