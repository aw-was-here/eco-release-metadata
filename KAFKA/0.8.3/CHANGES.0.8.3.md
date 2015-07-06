
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

## Release 0.8.3 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2265](https://issues.apache.org/jira/browse/KAFKA-2265) | creating a topic with large number of partitions takes a long time |  Major | core | Jun Rao | Manikumar Reddy |
| [KAFKA-2185](https://issues.apache.org/jira/browse/KAFKA-2185) | Update to Gradle 2.4 |  Minor | build | Ismael Juma | Ismael Juma |
| [KAFKA-2131](https://issues.apache.org/jira/browse/KAFKA-2131) | Update new producer javadocs with correct documentation links |  Trivial | clients | Manikumar Reddy | Manikumar Reddy |
| [KAFKA-2128](https://issues.apache.org/jira/browse/KAFKA-2128) | kafka.Kafka should return non-zero exit code when caught exception. |  Minor | core | Sasaki Toru | Sasaki Toru |
| [KAFKA-2119](https://issues.apache.org/jira/browse/KAFKA-2119) | ConsumerRecord key() and value() methods should not have throws Exception |  Trivial | clients, consumer | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-2109](https://issues.apache.org/jira/browse/KAFKA-2109) | Support retries in KafkaLog4jAppender |  Minor | producer | Dave Beech | Dave Beech |
| [KAFKA-2096](https://issues.apache.org/jira/browse/KAFKA-2096) | Enable keepalive socket option for broker to prevent socket leak |  Critical | network | Allen Wang | Allen Wang |
| [KAFKA-2005](https://issues.apache.org/jira/browse/KAFKA-2005) | Generate html report for system tests |  Major | system tests | Ashish K Singh | Ashish K Singh |
| [KAFKA-1989](https://issues.apache.org/jira/browse/KAFKA-1989) | New purgatory design |  Critical | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-1965](https://issues.apache.org/jira/browse/KAFKA-1965) | Leaner DelayedItem |  Trivial | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-1938](https://issues.apache.org/jira/browse/KAFKA-1938) | [doc] Quick start example should reference appropriate Kafka version |  Trivial | website | Stevo Slavic | Manikumar Reddy |
| [KAFKA-1885](https://issues.apache.org/jira/browse/KAFKA-1885) | Allow test methods in "core" to be individually run from outside of the IDE |  Major | system tests | jaikiran pai | jaikiran pai |
| [KAFKA-1818](https://issues.apache.org/jira/browse/KAFKA-1818) | Code cleanup in ReplicationUtils including unit test |  Trivial | replication | Eric Olander | Neha Narkhede |
| [KAFKA-1807](https://issues.apache.org/jira/browse/KAFKA-1807) | Improve accuracy of ProducerPerformance target throughput |  Minor | clients, tools | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1801](https://issues.apache.org/jira/browse/KAFKA-1801) | Remove non-functional variable definition in log4j.properties |  Trivial | log | Raman Gupta | Raman Gupta |
| [KAFKA-1654](https://issues.apache.org/jira/browse/KAFKA-1654) | Provide a way to override server configuration from command line |  Major | core | Jarek Jarcec Cecho | Jarek Jarcec Cecho |
| [KAFKA-1646](https://issues.apache.org/jira/browse/KAFKA-1646) | Improve consumer read performance for Windows |  Major | log | xueqiang wang | Honghai Chen |
| [KAFKA-1546](https://issues.apache.org/jira/browse/KAFKA-1546) | Automate replica lag tuning |  Major | replication | Neha Narkhede | Aditya Auradkar |
| [KAFKA-1461](https://issues.apache.org/jira/browse/KAFKA-1461) | Replica fetcher thread does not implement any back-off behavior |  Major | replication | Sam Meder | Sriharsha Chintalapani |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2290](https://issues.apache.org/jira/browse/KAFKA-2290) | OffsetIndex should open RandomAccessFile consistently |  Major | core | Jun Rao | Chris Black |
| [KAFKA-2270](https://issues.apache.org/jira/browse/KAFKA-2270) | incorrect package name in unit tests |  Minor | core | Jun Rao | Proneet Verma |
| [KAFKA-2264](https://issues.apache.org/jira/browse/KAFKA-2264) | SESSION\_TIMEOUT\_MS\_CONFIG in ConsumerConfig should be int |  Trivial | clients | Jun Rao | Manikumar Reddy |
| [KAFKA-2262](https://issues.apache.org/jira/browse/KAFKA-2262) | LogSegmentSize validation should be consistent |  Trivial | core | Jun Rao | Manikumar Reddy |
| [KAFKA-2235](https://issues.apache.org/jira/browse/KAFKA-2235) | LogCleaner offset map overflow |  Major | core, log | Ivan Simoneko | Ivan Simoneko |
| [KAFKA-2232](https://issues.apache.org/jira/browse/KAFKA-2232) | make MockProducer generic |  Major | clients | Jun Rao | Alexander Pakulov |
| [KAFKA-2189](https://issues.apache.org/jira/browse/KAFKA-2189) | Snappy compression of message batches less efficient in 0.8.2.1 |  Blocker | build, compression, log | Olson,Andrew | Ismael Juma |
| [KAFKA-2121](https://issues.apache.org/jira/browse/KAFKA-2121) | prevent potential resource leak in KafkaProducer and KafkaConsumer |  Major | producer | Steven Zhen Wu | Steven Zhen Wu |
| [KAFKA-2117](https://issues.apache.org/jira/browse/KAFKA-2117) | OffsetManager uses incorrect field for metadata |  Major | core | Jun Rao | Guozhang Wang |
| [KAFKA-2112](https://issues.apache.org/jira/browse/KAFKA-2112) | make overflowWheel volatile |  Major | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |
| [KAFKA-2088](https://issues.apache.org/jira/browse/KAFKA-2088) | kafka-console-consumer.sh should not create zookeeper path when no brokers found and chroot was set in zookeeper.connect |  Minor | clients | Zhiqiang He | Zhiqiang He |
| [KAFKA-2043](https://issues.apache.org/jira/browse/KAFKA-2043) | CompressionType is passed in each RecordAccumulator append |  Minor | clients | Grant Henke | Grant Henke |
| [KAFKA-2033](https://issues.apache.org/jira/browse/KAFKA-2033) | Small typo in documentation |  Major | consumer | Pierre-Yves Ritschard | Pierre-Yves Ritschard |
| [KAFKA-2001](https://issues.apache.org/jira/browse/KAFKA-2001) | OffsetCommitTest hang during setup |  Major | core | Jun Rao | Joel Koshy |
| [KAFKA-1964](https://issues.apache.org/jira/browse/KAFKA-1964) |  testPartitionReassignmentCallback hangs occasionally |  Major | admin | Jun Rao | Guozhang Wang |
| [KAFKA-1960](https://issues.apache.org/jira/browse/KAFKA-1960) | .gitignore does not exclude test generated files and folders. |  Minor | build | Tong Li | Tong Li |
| [KAFKA-1959](https://issues.apache.org/jira/browse/KAFKA-1959) | Class CommitThread overwrite group of Thread class causing compile errors |  Major | core | Tong Li | Tong Li |
| [KAFKA-1940](https://issues.apache.org/jira/browse/KAFKA-1940) | Initial checkout and build failing |  Major | build | Martin Lemanski | Martin Lemanski |
| [KAFKA-1884](https://issues.apache.org/jira/browse/KAFKA-1884) | Print metadata response errors |  Major | producer | Manikumar Reddy | Manikumar Reddy |
| [KAFKA-1883](https://issues.apache.org/jira/browse/KAFKA-1883) | NullPointerException in RequestSendThread |  Major | core | jaikiran pai | jaikiran pai |
| [KAFKA-1881](https://issues.apache.org/jira/browse/KAFKA-1881) | transient unit test failure in testDeleteTopicWithCleaner due to OOME |  Major | core | Jun Rao | Ewen Cheslack-Postava |
| [KAFKA-1878](https://issues.apache.org/jira/browse/KAFKA-1878) | ProducerFailureHandlingTest.testCannotSendToInternalTopic fails with TimeoutException while trying to fetch metadata for topic |  Major | system tests | jaikiran pai | jaikiran pai |
| [KAFKA-1824](https://issues.apache.org/jira/browse/KAFKA-1824) | in ConsoleProducer - properties key.separator and parse.key no longer work |  Major | tools | Gwen Shapira | Gwen Shapira |
| [KAFKA-1813](https://issues.apache.org/jira/browse/KAFKA-1813) | Build fails for scala 2.9.2 |  Minor | build | Anatoly Fayngelerin | Anatoly Fayngelerin |
| [KAFKA-1803](https://issues.apache.org/jira/browse/KAFKA-1803) | UncleanLeaderElectionEnableProp in LogConfig should be of boolean |  Major | core | Jun Rao | Dave Parfitt |
| [KAFKA-1758](https://issues.apache.org/jira/browse/KAFKA-1758) | corrupt recovery file prevents startup |  Major | log | Jason Rosenberg | Manikumar Reddy |
| [KAFKA-1757](https://issues.apache.org/jira/browse/KAFKA-1757) | Can not delete Topic index on Windows |  Minor | log | Lukáš Vyhlídka | Sriharsha Chintalapani |
| [KAFKA-1747](https://issues.apache.org/jira/browse/KAFKA-1747) | TestcaseEnv improperly shares state between instances |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1746](https://issues.apache.org/jira/browse/KAFKA-1746) | System tests don't handle errors well |  Major | system tests | Ewen Cheslack-Postava | Ewen Cheslack-Postava |
| [KAFKA-1733](https://issues.apache.org/jira/browse/KAFKA-1733) | Producer.send will block indeterminately when broker is unavailable. |  Major | core, producer | Marc Chung | Marc Chung |
| [KAFKA-1711](https://issues.apache.org/jira/browse/KAFKA-1711) | WARN Property topic is not valid when running console producer |  Major | core | Jun Rao | Joe Crobak |
| [KAFKA-1702](https://issues.apache.org/jira/browse/KAFKA-1702) | Messages silently Lost by producer |  Major | producer | Alexis Midon | Alexis Midon |
| [KAFKA-1698](https://issues.apache.org/jira/browse/KAFKA-1698) | Validator.ensureValid() only validates default config value |  Major | core | Jun Rao | Ewen Cheslack-Postava |
| [KAFKA-1668](https://issues.apache.org/jira/browse/KAFKA-1668) | TopicCommand doesn't warn if --topic argument doesn't match any topics |  Minor | tools | Ryan Berdeen | Manikumar Reddy |
| [KAFKA-1648](https://issues.apache.org/jira/browse/KAFKA-1648) | Round robin consumer balance throws an NPE when there are no topics |  Major | consumer | Todd Palino | Mayuresh Gharat |
| [KAFKA-1481](https://issues.apache.org/jira/browse/KAFKA-1481) | Stop using dashes AND underscores as separators in MBean names |  Critical | core | Otis Gospodnetic | Vladimir Tretyakov |
| [KAFKA-1057](https://issues.apache.org/jira/browse/KAFKA-1057) | Trim whitespaces from user specified configs |  Major | config | Neha Narkhede | Manikumar Reddy |
| [KAFKA-742](https://issues.apache.org/jira/browse/KAFKA-742) | Existing directories under the Kafka data directory without any data cause process to not start |  Major | config | Chris Curtin | Ashish K Singh |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2013](https://issues.apache.org/jira/browse/KAFKA-2013) | benchmark test for the purgatory |  Trivial | purgatory | Yasuhiro Matsuda | Yasuhiro Matsuda |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-2245](https://issues.apache.org/jira/browse/KAFKA-2245) | Add response tests for ConsumerCoordinator |  Critical | consumer | Onur Karaman | Onur Karaman |
| [KAFKA-2168](https://issues.apache.org/jira/browse/KAFKA-2168) | New consumer poll() can block other calls like position(), commit(), and close() indefinitely |  Critical | clients, consumer | Ewen Cheslack-Postava | Jason Gustafson |
| [KAFKA-1953](https://issues.apache.org/jira/browse/KAFKA-1953) | Disambiguate metrics from different purgatories |  Major | purgatory | Joel Koshy | Joel Koshy |
| [KAFKA-1928](https://issues.apache.org/jira/browse/KAFKA-1928) | Move kafka.network over to using the network classes in org.apache.kafka.common.network |  Major | security | Jun Rao | Gwen Shapira |
| [KAFKA-1925](https://issues.apache.org/jira/browse/KAFKA-1925) | Coordinator Node Id set to INT\_MAX breaks coordinator metadata updates |  Critical | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1914](https://issues.apache.org/jira/browse/KAFKA-1914) | Count TotalProduceRequestRate and TotalFetchRequestRate in BrokerTopicMetrics |  Major | core | Aditya A Auradkar | Aditya Auradkar |
| [KAFKA-1910](https://issues.apache.org/jira/browse/KAFKA-1910) | Refactor KafkaConsumer |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-1809](https://issues.apache.org/jira/browse/KAFKA-1809) | Refactor brokers to allow listening on multiple ports and IPs |  Major | security | Gwen Shapira | Gwen Shapira |
| [KAFKA-1760](https://issues.apache.org/jira/browse/KAFKA-1760) | Implement new consumer client |  Major | consumer | Jay Kreps | Jay Kreps |
| [KAFKA-1750](https://issues.apache.org/jira/browse/KAFKA-1750) | handle "topic not exists" scenario |  Major | tools | Dmitry Pekar | Dmitry Pekar |
| [KAFKA-1740](https://issues.apache.org/jira/browse/KAFKA-1740) | Merge Offset manager into Coordinator |  Critical | consumer | Guozhang Wang | Guozhang Wang |
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


