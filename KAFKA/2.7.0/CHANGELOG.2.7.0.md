
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

## Release 2.7.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10054](https://issues.apache.org/jira/browse/KAFKA-10054) | Add TRACE-level end-to-end latency metrics to Streams |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10259](https://issues.apache.org/jira/browse/KAFKA-10259) | KIP-554: Add Broker-side SCRAM Config API |  Major | . | Ron Dagostino | Ron Dagostino |
| [KAFKA-10338](https://issues.apache.org/jira/browse/KAFKA-10338) | Support PEM format for SSL certificates and private key |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9915](https://issues.apache.org/jira/browse/KAFKA-9915) | Throttle Create Topic, Create Partition and Delete Topic Operations |  Major | core | David Jacot | David Jacot |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10040](https://issues.apache.org/jira/browse/KAFKA-10040) | Make computing the PreferredReplicaImbalanceCount metric more efficient |  Major | . | David Jacot | David Jacot |
| [KAFKA-10033](https://issues.apache.org/jira/browse/KAFKA-10033) | AdminClient should throw UnknownTopicOrPartitionException instead of UnknownServerException if altering configs of non-existing topic |  Major | admin | Gregory Koshelev | Brian Byrne |
| [KAFKA-10106](https://issues.apache.org/jira/browse/KAFKA-10106) | log time taken to handle LeaderAndIsr request |  Minor | . | NIKHIL | NIKHIL |
| [KAFKA-10141](https://issues.apache.org/jira/browse/KAFKA-10141) | Add more detail to log segment deletion message |  Major | . | Jason Gustafson | Sanjana Kaundinya |
| [KAFKA-10168](https://issues.apache.org/jira/browse/KAFKA-10168) | Rename public StreamsConfig variable |  Trivial | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-9194](https://issues.apache.org/jira/browse/KAFKA-9194) | Missing documentation for replicaMaxWaitTimeMs config value |  Minor | documentation | Tomasz Szlek | sats |
| [KAFKA-10135](https://issues.apache.org/jira/browse/KAFKA-10135) | Extract Task#executeAndMaybeSwallow to be a general utility function into TaskManager |  Major | streams | Boyang Chen | feyman |
| [KAFKA-10126](https://issues.apache.org/jira/browse/KAFKA-10126) | Deprecate unused options in ConsumerPerformance |  Minor | consumer, tools | jiamei xie | jiamei xie |
| [KAFKA-9439](https://issues.apache.org/jira/browse/KAFKA-9439) | Add more public API tests for KafkaProducer |  Minor | . | Boyang Chen | Jeff Kim |
| [KAFKA-9076](https://issues.apache.org/jira/browse/KAFKA-9076) | MirrorMaker 2.0 automated consumer offset sync |  Major | mirrormaker | Ning Zhang | Ning Zhang |
| [KAFKA-9018](https://issues.apache.org/jira/browse/KAFKA-9018) | Kafka Connect - throw clearer exceptions on serialisation errors |  Minor | KafkaConnect | Robin Moffatt | Mario Molina |
| [KAFKA-10232](https://issues.apache.org/jira/browse/KAFKA-10232) | MirrorMaker2 internal topics Formatters |  Major | KafkaConnect, mirrormaker | Mickael Maison | Mickael Maison |
| [KAFKA-10225](https://issues.apache.org/jira/browse/KAFKA-10225) | Increase default zk session timeout for system tests |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10002](https://issues.apache.org/jira/browse/KAFKA-10002) | Improve performances of StopReplicaRequest with large number of partitions to be deleted |  Major | . | David Jacot | David Jacot |
| [KAFKA-10279](https://issues.apache.org/jira/browse/KAFKA-10279) | Allow dynamic update of certificates with additional SubjectAltNames |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10305](https://issues.apache.org/jira/browse/KAFKA-10305) | Print usage when parsing fails for ConsumerPerformance |  Minor | tools | huxihx | huxihx |
| [KAFKA-10316](https://issues.apache.org/jira/browse/KAFKA-10316) | Consider renaming getter method for Interactive Queries |  Minor | streams | Matthias J. Sax | John Thomas |
| [KAFKA-9450](https://issues.apache.org/jira/browse/KAFKA-9450) | Decouple inner state flushing from committing |  Major | streams | A. Sophie Blee-Goldman | Guozhang Wang |
| [KAFKA-10023](https://issues.apache.org/jira/browse/KAFKA-10023) | Enforce broker-wide and per-listener connection creation rate (KIP-612, part 1) |  Major | core | Anna Povzner | Anna Povzner |
| [KAFKA-10407](https://issues.apache.org/jira/browse/KAFKA-10407) | add linger.ms parameter support to KafkaLog4jAppender |  Minor | logging | Yu Yang | huxihx |
| [KAFKA-10035](https://issues.apache.org/jira/browse/KAFKA-10035) | Improve the AbstractResetIntegrationTest |  Minor | streams, unit tests | feyman | Sergei |
| [KAFKA-10211](https://issues.apache.org/jira/browse/KAFKA-10211) | Add DirectoryConfigProvider |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-10367](https://issues.apache.org/jira/browse/KAFKA-10367) | Allow running the Streams demo app with a config file |  Minor | streams | Mickael Maison | Mickael Maison |
| [KAFKA-10098](https://issues.apache.org/jira/browse/KAFKA-10098) | Remove unnecessary escaping in regular expression in SaslAuthenticatorTest.java |  Trivial | . | Can Cecen | Can Cecen |
| [KAFKA-10355](https://issues.apache.org/jira/browse/KAFKA-10355) | Handle accidental deletion of source-topics as exceptional failure |  Major | streams | Guozhang Wang | Bruno Cadonna |
| [KAFKA-9924](https://issues.apache.org/jira/browse/KAFKA-9924) | Add RocksDB Memory Consumption to RocksDB Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-5636](https://issues.apache.org/jira/browse/KAFKA-5636) | Add Sliding-Window support for Aggregations |  Major | streams | Michael G. Noll | Leah Thomas |
| [KAFKA-10403](https://issues.apache.org/jira/browse/KAFKA-10403) | Replace scala collection by java collection in generating MBeans attributes |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10131](https://issues.apache.org/jira/browse/KAFKA-10131) | Minimize use of --zookeeper flag in ducktape tests |  Major | system tests | Vinoth Chandar | Ron Dagostino |
| [KAFKA-10418](https://issues.apache.org/jira/browse/KAFKA-10418) | Incomplete error/docs when altering topic configs via kafka-topics with --bootstrap-server |  Minor | . | Ron Dagostino | Ron Dagostino |
| [KAFKA-10459](https://issues.apache.org/jira/browse/KAFKA-10459) | Document IQ APIs where order does not hold between stores |  Minor | streams | Jorge Esteban Quilcate Otoya | Luke Chen |
| [KAFKA-10458](https://issues.apache.org/jira/browse/KAFKA-10458) | Need a way to update quota for TokenBucket registered with Sensor |  Major | clients | Anna Povzner | David Jacot |
| [KAFKA-8836](https://issues.apache.org/jira/browse/KAFKA-8836) | Add inter-broker protocol to alter ISR |  Major | . | Jason Gustafson | David Arthur |
| [KAFKA-10077](https://issues.apache.org/jira/browse/KAFKA-10077) | Filter downstream of state-store results in spurious tombstones |  Major | streams | Andy Coates | Andy Coates |
| [KAFKA-8360](https://issues.apache.org/jira/browse/KAFKA-8360) | Docs do not mention RequestQueueSize JMX metric |  Major | documentation, metrics, network | Charles Francis Larrieu Casias | Ankit Kumar |
| [KAFKA-10020](https://issues.apache.org/jira/browse/KAFKA-10020) | KIP-616: Rename implicit Serdes instances in kafka-streams-scala |  Minor | streams | Yuriy Badalyantc | Yuriy Badalyantc |
| [KAFKA-6585](https://issues.apache.org/jira/browse/KAFKA-6585) | Consolidate duplicated logic on reset tools |  Minor | . | Guozhang Wang | Mani Jindal |
| [KAFKA-10277](https://issues.apache.org/jira/browse/KAFKA-10277) | Relax non-null key requirement for KStream-GlobalKTable joins |  Major | streams | Matthias J. Sax | Joel Wee |
| [KAFKA-10205](https://issues.apache.org/jira/browse/KAFKA-10205) | NullPointerException in StreamTask |  Minor | streams | Brian Forkan | Igor Soarez |
| [KAFKA-10503](https://issues.apache.org/jira/browse/KAFKA-10503) | MockProducer doesn't throw ClassCastException when no partition for topic |  Minor | clients, producer | Gonzalo Muñoz Fernández | Gonzalo Muñoz Fernández |
| [KAFKA-10478](https://issues.apache.org/jira/browse/KAFKA-10478) | advertised.listeners should allow duplicated ports |  Major | core | Andre Araujo | Andre Araujo |
| [KAFKA-6733](https://issues.apache.org/jira/browse/KAFKA-6733) | Support of printing additional ConsumerRecord fields in DefaultMessageFormatter |  Minor | tools | Mateusz Zakarczemny | Badai Aqrandista |
| [KAFKA-10186](https://issues.apache.org/jira/browse/KAFKA-10186) | Aborting transaction with pending data should throw non-fatal exception |  Major | producer | A. Sophie Blee-Goldman | Gokul Srinivas |
| [KAFKA-10122](https://issues.apache.org/jira/browse/KAFKA-10122) | Consumer should allow heartbeat during rebalance as well |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-7334](https://issues.apache.org/jira/browse/KAFKA-7334) | Suggest changing config for state.dir in case of FileNotFoundException |  Major | streams | Ted Yu | Vladimir |
| [KAFKA-10509](https://issues.apache.org/jira/browse/KAFKA-10509) | Add metric to track throttle time due to hitting connection rate quota |  Major | core | Anna Povzner | Anna Povzner |
| [KAFKA-10584](https://issues.apache.org/jira/browse/KAFKA-10584) | IndexSearchType should use sealed trait instead of Enumeration |  Major | core | Jun Rao | huxihx |
| [KAFKA-10143](https://issues.apache.org/jira/browse/KAFKA-10143) | Add integration testing ensuring that the reassignment tool can change replication quota with rebalance in progress |  Major | core | Jason Gustafson | Jason Gustafson |
| [KAFKA-10494](https://issues.apache.org/jira/browse/KAFKA-10494) | Streams: enableSendingOldValues should not call parent if node is itself materialized |  Blocker | streams | Andy Coates | Andy Coates |
| [KAFKA-10521](https://issues.apache.org/jira/browse/KAFKA-10521) | Remove ZK watch for completing partition reassignment |  Minor | controller | David Arthur | Jason Gustafson |
| [KAFKA-9587](https://issues.apache.org/jira/browse/KAFKA-9587) | Producer configs are omitted in the documentation |  Minor | clients, documentation | Dongjin Lee | Dongjin Lee |
| [KAFKA-9929](https://issues.apache.org/jira/browse/KAFKA-9929) | Support reverse iterator on WindowStore |  Major | streams | Jorge Esteban Quilcate Otoya | Jorge Esteban Quilcate Otoya |
| [KAFKA-10611](https://issues.apache.org/jira/browse/KAFKA-10611) | Merge log error to avoid double error |  Trivial | KafkaConnect | Benoit MAGGI |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10079](https://issues.apache.org/jira/browse/KAFKA-10079) | Improve thread-level stickiness of stateful tasks |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10014](https://issues.apache.org/jira/browse/KAFKA-10014) | Always try to close all channels in Selector#close |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9066](https://issues.apache.org/jira/browse/KAFKA-9066) | Kafka Connect JMX : source & sink task metrics missing for tasks in failed state |  Major | KafkaConnect | Mikołaj Stefaniak | Chris Egerton |
| [KAFKA-9845](https://issues.apache.org/jira/browse/KAFKA-9845) | plugin.path property does not work with config provider |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10147](https://issues.apache.org/jira/browse/KAFKA-10147) | MockAdminClient#describeConfigs(Collection\<ConfigResource\>) is unable to handle broker resource |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10180](https://issues.apache.org/jira/browse/KAFKA-10180) | TLSv1.3 system tests should not run under Java 8 |  Blocker | system tests | Ron Dagostino | Nikolay Izhikov |
| [KAFKA-9769](https://issues.apache.org/jira/browse/KAFKA-9769) | ReplicaManager Partition.makeFollower Increases LeaderEpoch when ZooKeeper disconnect occurs |  Minor | replication | Andrew Choi | Andrew Choi |
| [KAFKA-10243](https://issues.apache.org/jira/browse/KAFKA-10243) | ConcurrentModificationException while processing connection setup timeouts |  Major | network | Rajini Sivaram | David Jacot |
| [KAFKA-10220](https://issues.apache.org/jira/browse/KAFKA-10220) | NPE when describing resources |  Blocker | core | Edoardo Comar | Luke Chen |
| [KAFKA-10109](https://issues.apache.org/jira/browse/KAFKA-10109) | kafka-acls.sh/AclCommand opens multiple AdminClients |  Minor | tools | Tom Bentley | Tom Bentley |
| [KAFKA-10235](https://issues.apache.org/jira/browse/KAFKA-10235) | Fix flaky transactions\_test.py |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10179](https://issues.apache.org/jira/browse/KAFKA-10179) | State Store Passes Wrong Changelog Topic to Serde for Optimized Source Tables |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-10240](https://issues.apache.org/jira/browse/KAFKA-10240) | Sink tasks should not throw WakeupException on shutdown |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10192](https://issues.apache.org/jira/browse/KAFKA-10192) | Flaky test BlockingConnectorTest#testBlockInConnectorStop |  Major | KafkaConnect | Boyang Chen | Chris Egerton |
| [KAFKA-9666](https://issues.apache.org/jira/browse/KAFKA-9666) | Transactional producer Epoch could not be reset |  Critical | . | Boyang Chen | Bob Barrett |
| [KAFKA-10160](https://issues.apache.org/jira/browse/KAFKA-10160) | Kafka MM2 consumer configuration |  Major | . | Pavol Ipoth | sats |
| [KAFKA-10189](https://issues.apache.org/jira/browse/KAFKA-10189) | Reset metric EventQueueTimeMs |  Minor | controller, core, metrics | Jeff Kim | Jeff Kim |
| [KAFKA-8264](https://issues.apache.org/jira/browse/KAFKA-8264) | Flaky Test PlaintextConsumerTest#testLowMaxFetchSizeForRequestAndPartition |  Critical | core, unit tests | Matthias J. Sax | Luke Chen |
| [KAFKA-10300](https://issues.apache.org/jira/browse/KAFKA-10300) | fix flaky core/group\_mode\_transactions\_test.py |  Major | core, system tests | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10268](https://issues.apache.org/jira/browse/KAFKA-10268) | dynamic config like "--delete-config log.retention.ms" doesn't work |  Major | log, log cleaner | zhifeng.peng | huxihx |
| [KAFKA-10224](https://issues.apache.org/jira/browse/KAFKA-10224) | The license term about jersey is not correct |  Critical | core | jaredli2020 | Rens Groothuijsen |
| [KAFKA-10120](https://issues.apache.org/jira/browse/KAFKA-10120) | DescribeLogDirsResult exposes internal classes |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-10282](https://issues.apache.org/jira/browse/KAFKA-10282) | Log metrics are removed if a log is deleted and re-created quickly enough |  Major | log | Bob Barrett | Bob Barrett |
| [KAFKA-10321](https://issues.apache.org/jira/browse/KAFKA-10321) | shouldDieOnInvalidOffsetExceptionDuringStartup would block forever on JDK11 |  Major | streams | Boyang Chen |  |
| [KAFKA-10193](https://issues.apache.org/jira/browse/KAFKA-10193) | Add preemption for controller events that have callbacks |  Minor | controller, metrics | Jeff Kim | Jeff Kim |
| [KAFKA-10391](https://issues.apache.org/jira/browse/KAFKA-10391) | Streams should overwrite checkpoint excluding corrupted partitions |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8033](https://issues.apache.org/jira/browse/KAFKA-8033) | Flaky Test PlaintextConsumerTest#testFetchInvalidOffset |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-9516](https://issues.apache.org/jira/browse/KAFKA-9516) | Flaky Test PlaintextProducerSendTest#testNonBlockingProducer |  Critical | core, producer , tools, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-10387](https://issues.apache.org/jira/browse/KAFKA-10387) | Cannot include SMT configs with source connector that uses topic.creation.\* properties |  Critical | KafkaConnect | Arjun Satish | Konstantine Karantasis |
| [KAFKA-10158](https://issues.apache.org/jira/browse/KAFKA-10158) | Fix flaky kafka.admin.TopicCommandWithAdminClientTest#testDescribeUnderReplicatedPartitionsWhenReassignmentIsInProgress |  Minor | unit tests | Chia-Ping Tsai | Brian Byrne |
| [KAFKA-10395](https://issues.apache.org/jira/browse/KAFKA-10395) | TopologyTestDriver does not work with dynamic topic routing |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10312](https://issues.apache.org/jira/browse/KAFKA-10312) | MetadataCache.getPartitionMetadata may return incorrect error code when partition's leader is not present at the MetadataCache |  Minor | core | Raman Verma | Raman Verma |
| [KAFKA-10384](https://issues.apache.org/jira/browse/KAFKA-10384) | Separate converters from generated messages |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-10272](https://issues.apache.org/jira/browse/KAFKA-10272) | kafka-server-stop.sh fails on IBM i |  Minor | core | Jesse Gorzinski | Jesse Gorzinski |
| [KAFKA-10314](https://issues.apache.org/jira/browse/KAFKA-10314) | KafkaStorageException on reassignment when offline log directories exist |  Minor | core | Noa Resare | Noa Resare |
| [KAFKA-10133](https://issues.apache.org/jira/browse/KAFKA-10133) | Cannot compress messages in destination cluster with MM2 |  Minor | mirrormaker | Steve Jacobs | Ning Zhang |
| [KAFKA-8334](https://issues.apache.org/jira/browse/KAFKA-8334) | Occasional OffsetCommit Timeout |  Major | core | windkithk | Chia-Ping Tsai |
| [KAFKA-10134](https://issues.apache.org/jira/browse/KAFKA-10134) | High CPU issue during rebalance in Kafka consumer after upgrading to 2.5 |  Blocker | clients | Sean Guo | Guozhang Wang |
| [KAFKA-7970](https://issues.apache.org/jira/browse/KAFKA-7970) | Missing topic causes service shutdown without exception |  Minor | streams | Jonny Heavey | Bruno Cadonna |
| [KAFKA-8362](https://issues.apache.org/jira/browse/KAFKA-8362) | LogCleaner gets stuck after partition move between log directories |  Major | jbod, log cleaner | Julio Ng | Luke Chen |
| [KAFKA-8098](https://issues.apache.org/jira/browse/KAFKA-8098) | Flaky Test AdminClientIntegrationTest#testConsumerGroups |  Critical | core, unit tests | Matthias J. Sax | Luke Chen |
| [KAFKA-10401](https://issues.apache.org/jira/browse/KAFKA-10401) | GroupMetadataManager ignores current\_state\_timestamp field for GROUP\_METADATA\_VALUE\_SCHEMA\_V3 |  Critical | offset manager | Marek | Luke Chen |
| [KAFKA-10502](https://issues.apache.org/jira/browse/KAFKA-10502) | Threadlocal  may can not set null,because it may create a memory leak |  Major | . | huangyiming |  |
| [KAFKA-10218](https://issues.apache.org/jira/browse/KAFKA-10218) | DistributedHerder's canReadConfigs field is never reset to true |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9514](https://issues.apache.org/jira/browse/KAFKA-9514) | The protocol generator generated useless condition when a field is made nullable and flexible version is used |  Major | . | David Jacot | David Jacot |
| [KAFKA-10479](https://issues.apache.org/jira/browse/KAFKA-10479) | Throw exception if users try to update configs of existent listeners |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9584](https://issues.apache.org/jira/browse/KAFKA-9584) | Removing headers causes ConcurrentModificationException |  Minor | streams | Micah Ramos | Micah Ramos |
| [KAFKA-10326](https://issues.apache.org/jira/browse/KAFKA-10326) | Both serializer and deserializer should be able to see the generated client id |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10557](https://issues.apache.org/jira/browse/KAFKA-10557) | Missing docs when describing topic configs including documentation |  Major | . | Mickael Maison | Edoardo Comar |
| [KAFKA-10048](https://issues.apache.org/jira/browse/KAFKA-10048) | Possible data gap for a consumer after a failover when using MM2 |  Major | mirrormaker | Andre Araujo | Andre Araujo |
| [KAFKA-10477](https://issues.apache.org/jira/browse/KAFKA-10477) | Sink Connector fails with DataException when trying to convert Kafka record with empty key to Connect Record |  Major | KafkaConnect | Shaik Zakir Hussain | Shaik Zakir Hussain |
| [KAFKA-10531](https://issues.apache.org/jira/browse/KAFKA-10531) | KafkaBasedLog can sleep for negative values |  Major | core | Vikas Singh | Vikas Singh |
| [KAFKA-10439](https://issues.apache.org/jira/browse/KAFKA-10439) | Connect's Values class loses precision for integers, larger than 64 bits |  Major | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-10188](https://issues.apache.org/jira/browse/KAFKA-10188) | Sink task preCommit method gets called after task is stopped |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10362](https://issues.apache.org/jira/browse/KAFKA-10362) | When resuming Streams active task with EOS, the checkpoint file should be deleted |  Major | streams | Guozhang Wang | Sharath Bhat |
| [KAFKA-10271](https://issues.apache.org/jira/browse/KAFKA-10271) | Performance regression while fetching a key from a single partition |  Major | streams | Dima R | Dima R |
| [KAFKA-10140](https://issues.apache.org/jira/browse/KAFKA-10140) | Incremental config api excludes plugin config changes |  Critical | . | Jason Gustafson |  |
| [KAFKA-6078](https://issues.apache.org/jira/browse/KAFKA-6078) | Investigate failure of ReassignPartitionsClusterTest.shouldExpandCluster |  Major | core, unit tests | Dong Lin |  |
| [KAFKA-9393](https://issues.apache.org/jira/browse/KAFKA-9393) | DeleteRecords may cause extreme lock contention for large partition directories |  Major | . | Lucas Bradstreet | Gardner Vickers |
| [KAFKA-10200](https://issues.apache.org/jira/browse/KAFKA-10200) | MockProcessorContext doesn't work with WindowStores |  Major | streams, streams-test-utils | John Roesler | John Roesler |
| [KAFKA-10598](https://issues.apache.org/jira/browse/KAFKA-10598) | KafkaStreams reports inappropriate error message for IQ |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10564](https://issues.apache.org/jira/browse/KAFKA-10564) | Continuous logging about deleting obsolete state directories |  Minor | streams | Michael Bingham |  |
| [KAFKA-10574](https://issues.apache.org/jira/browse/KAFKA-10574) | Infinite loop in SimpleHeaderConverter and Values classes |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10215](https://issues.apache.org/jira/browse/KAFKA-10215) | MockProcessorContext doesn't work with SessionStores |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10613](https://issues.apache.org/jira/browse/KAFKA-10613) | Broker should not set leader epoch if the list-offset request version \< 4 |  Major | core | Guozhang Wang | Guozhang Wang |
| [KAFKA-10340](https://issues.apache.org/jira/browse/KAFKA-10340) | Source connectors should report error when trying to produce records to non-existent topics instead of hanging forever |  Major | KafkaConnect | Arjun Satish | Luke Chen |
| [KAFKA-10602](https://issues.apache.org/jira/browse/KAFKA-10602) | DLQ Reporter throws NPE when reporting from different thread |  Major | . | Lev Zemlyanov | Tom Bentley |
| [KAFKA-10559](https://issues.apache.org/jira/browse/KAFKA-10559) | Don't shutdown the entire app upon TimeoutException during internal topic validation |  Blocker | streams | A. Sophie Blee-Goldman | Sagar Rao |
| [KAFKA-10600](https://issues.apache.org/jira/browse/KAFKA-10600) | Connect adds error to property in validation result if connector does not define the property |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10332](https://issues.apache.org/jira/browse/KAFKA-10332) | MirrorMaker2 fails to detect topic if remote topic is created first |  Major | mirrormaker | Mickael Maison | Mickael Maison |
| [KAFKA-10455](https://issues.apache.org/jira/browse/KAFKA-10455) | Probing rebalances are not guaranteed to be triggered by non-leader members |  Blocker | streams | A. Sophie Blee-Goldman | Leah Thomas |
| [KAFKA-8630](https://issues.apache.org/jira/browse/KAFKA-8630) | Unit testing a streams processor with a WindowStore throws a ClassCastException |  Critical | streams-test-utils | Justin Fetherolf | John Roesler |
| [KAFKA-10454](https://issues.apache.org/jira/browse/KAFKA-10454) | Kafka Streams Stuck in infinite REBALANCING loop when stream \<\> table join partitions don't match |  Major | streams | Levani Kokhreidze | Levani Kokhreidze |
| [KAFKA-10515](https://issues.apache.org/jira/browse/KAFKA-10515) | NPE: Foreign key join serde may not be initialized with default serde if application is distributed |  Critical | streams | Thorsten Hake | Thorsten Hake |
| [KAFKA-10520](https://issues.apache.org/jira/browse/KAFKA-10520) | InitProducerId may be blocked if least loaded node is not ready to send |  Major | producer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10426](https://issues.apache.org/jira/browse/KAFKA-10426) | Deadlock in KafkaConfigBackingStore |  Critical | KafkaConnect | Goltseva Taisiia | Goltseva Taisiia |
| [KAFKA-10284](https://issues.apache.org/jira/browse/KAFKA-10284) | Group membership update due to static member rejoin should be persisted |  Critical | consumer | Boyang Chen | feyman |
| [KAFKA-10631](https://issues.apache.org/jira/browse/KAFKA-10631) | ProducerFencedException is not Handled on Offest Commit |  Blocker | clients | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-10616](https://issues.apache.org/jira/browse/KAFKA-10616) | StreamThread killed by "IllegalStateException: The processor is already closed" |  Blocker | streams | A. Sophie Blee-Goldman | Guozhang Wang |
| [KAFKA-9381](https://issues.apache.org/jira/browse/KAFKA-9381) | Javadocs + Scaladocs not published on maven central |  Blocker | documentation, streams | Julien Jean Paul Sirocchi | Bill Bejeck |
| [KAFKA-10647](https://issues.apache.org/jira/browse/KAFKA-10647) | Only serialize owned partition when consumer protocol version \>= 0 |  Blocker | . | David Jacot | David Jacot |
| [KAFKA-10638](https://issues.apache.org/jira/browse/KAFKA-10638) | QueryableStateIntegrationTest fails due to stricter store checking |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10651](https://issues.apache.org/jira/browse/KAFKA-10651) | Assignor reports offsets from uninitialized task |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10664](https://issues.apache.org/jira/browse/KAFKA-10664) | Streams fails to overwrite corrupted offsets leading to infinite OffsetOutOfRangeException loop |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9943](https://issues.apache.org/jira/browse/KAFKA-9943) | Enable TLSv.1.3 in system tests "run all" execution. |  Major | . | Nikolay Izhikov | Nikolay Izhikov |
| [KAFKA-10191](https://issues.apache.org/jira/browse/KAFKA-10191) | fix flaky StreamsOptimizedTest |  Major | streams, unit tests | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10295](https://issues.apache.org/jira/browse/KAFKA-10295) | ConnectDistributedTest.test\_bounce should wait for graceful stop |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10286](https://issues.apache.org/jira/browse/KAFKA-10286) | Connect system tests should wait for workers to join group |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10255](https://issues.apache.org/jira/browse/KAFKA-10255) | Fix flaky testOneWayReplicationWithAutorOffsetSync1 test |  Major | . | Luke Chen | Luke Chen |
| [KAFKA-9273](https://issues.apache.org/jira/browse/KAFKA-9273) | Refactor AbstractJoinIntegrationTest and Sub-classes |  Major | streams | Bill Bejeck | Albert Lowis |
| [KAFKA-10404](https://issues.apache.org/jira/browse/KAFKA-10404) | Flaky Test kafka.api.SaslSslConsumerTest.testCoordinatorFailover |  Major | core, unit tests | Bill Bejeck | Rajini Sivaram |
| [KAFKA-10351](https://issues.apache.org/jira/browse/KAFKA-10351) | Add missing tests for IOExceptions for GlobalStateManagerImpl |  Minor | streams, unit tests | Matthias J. Sax | Luke Chen |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9434](https://issues.apache.org/jira/browse/KAFKA-9434) | Replace AlterReplicaLogDirs request/response with automated protocol |  Major | . | Tom Bentley | Tom Bentley |
| [KAFKA-10027](https://issues.apache.org/jira/browse/KAFKA-10027) | Implement read path for feature versioning scheme |  Major | . | Kowshik Prakasam | Kowshik Prakasam |
| [KAFKA-9432](https://issues.apache.org/jira/browse/KAFKA-9432) | Replace DescribeConfigs request/response with automated protocol |  Major | . | Tom Bentley | Tom Bentley |
| [KAFKA-10174](https://issues.apache.org/jira/browse/KAFKA-10174) | Prefer --bootstrap-server ducktape tests using kafka\_configs.sh |  Major | . | Vinoth Chandar | Vinoth Chandar |
| [KAFKA-10163](https://issues.apache.org/jira/browse/KAFKA-10163) | Implement Broker side changes |  Major | . | David Jacot | David Jacot |
| [KAFKA-10164](https://issues.apache.org/jira/browse/KAFKA-10164) | Implement Admin side changes |  Major | . | David Jacot | David Jacot |
| [KAFKA-10270](https://issues.apache.org/jira/browse/KAFKA-10270) | Add a broker to controller channel manager to redirect AlterConfig |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-10319](https://issues.apache.org/jira/browse/KAFKA-10319) | Fix unknown offset sum on trunk |  Blocker | streams | John Roesler | Bruno Cadonna |
| [KAFKA-10261](https://issues.apache.org/jira/browse/KAFKA-10261) | Introduce the KIP-478 processors with shims |  Major | streams | John Roesler | John Roesler |
| [KAFKA-9911](https://issues.apache.org/jira/browse/KAFKA-9911) | Implement new producer fenced error |  Major | producer | Boyang Chen | Boyang Chen |
| [KAFKA-10042](https://issues.apache.org/jira/browse/KAFKA-10042) | Make INVALID\_PRODUCER\_EPOCH abortable from Produce response |  Major | producer | Boyang Chen | Boyang Chen |
| [KAFKA-10379](https://issues.apache.org/jira/browse/KAFKA-10379) | Implement the KIP-478 StreamBuilder#addGlobalStore() |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10447](https://issues.apache.org/jira/browse/KAFKA-10447) | Migrate tools module to JUnit 5 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-10258](https://issues.apache.org/jira/browse/KAFKA-10258) | Get rid of use\_zk\_connection flag in kafka.py public methods |  Major | . | Vinoth Chandar | Ron Dagostino |
| [KAFKA-10213](https://issues.apache.org/jira/browse/KAFKA-10213) | Prefer --bootstrap-server in ducktape tests for Kafka clients |  Major | . | Vinoth Chandar | Ron Dagostino |
| [KAFKA-10435](https://issues.apache.org/jira/browse/KAFKA-10435) | Fetch protocol changes for KIP-595 |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9627](https://issues.apache.org/jira/browse/KAFKA-9627) | Replace ListOffset request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-9629](https://issues.apache.org/jira/browse/KAFKA-9629) | Replace Fetch request/response with automated protocol |  Major | . | Mickael Maison | David Arthur |
| [KAFKA-10516](https://issues.apache.org/jira/browse/KAFKA-10516) | Implement Topic Command changes |  Major | . | David Jacot | David Jacot |
| [KAFKA-10535](https://issues.apache.org/jira/browse/KAFKA-10535) | KIP-478: Implement StateStoreContext and Record |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10028](https://issues.apache.org/jira/browse/KAFKA-10028) | Implement write path for feature versioning scheme |  Major | . | Kowshik Prakasam | Kowshik Prakasam |
| [KAFKA-10571](https://issues.apache.org/jira/browse/KAFKA-10571) | Replace occurrences of blackout with backoff for KIP-629 |  Major | . | Xavier Léauté | Xavier Léauté |
| [KAFKA-10536](https://issues.apache.org/jira/browse/KAFKA-10536) | KIP-478: Implement KStream changes |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10437](https://issues.apache.org/jira/browse/KAFKA-10437) | KIP-478: Implement test-utils changes |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10562](https://issues.apache.org/jira/browse/KAFKA-10562) | KIP-478: Delegate the store wrappers to the new init method |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-10570](https://issues.apache.org/jira/browse/KAFKA-10570) | Rename JMXReporter configs for KIP-629 |  Major | . | Xavier Léauté | Xavier Léauté |
| [KAFKA-10573](https://issues.apache.org/jira/browse/KAFKA-10573) | Rename connect transform configs for KIP-629 |  Major | . | Xavier Léauté | Xavier Léauté |
| [KAFKA-10605](https://issues.apache.org/jira/browse/KAFKA-10605) | KIP-478: deprecate the replaced Processor API members |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-10572](https://issues.apache.org/jira/browse/KAFKA-10572) | Rename MirrorMaker 2 blacklist configs for KIP-629 |  Major | . | Xavier Léauté | Xavier Léauté |
| [KAFKA-10599](https://issues.apache.org/jira/browse/KAFKA-10599) | Implement basic CLI tool for feature versioning system |  Major | . | Kowshik Prakasam | Kowshik Prakasam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10084](https://issues.apache.org/jira/browse/KAFKA-10084) | System test failure: StreamsEosTest.test\_failure\_and\_recovery\_complex |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10153](https://issues.apache.org/jira/browse/KAFKA-10153) | Error Reporting in Connect Documentation |  Major | documentation, KafkaConnect | Aakash Shah | Aakash Shah |
| [KAFKA-10341](https://issues.apache.org/jira/browse/KAFKA-10341) | Add version 2.6 to streams and systems tests |  Major | build, streams, system tests | Randall Hauch | Randall Hauch |
| [KAFKA-10456](https://issues.apache.org/jira/browse/KAFKA-10456) | wrong description in kafka-console-producer.sh help |  Trivial | producer | danilo batista queiroz | huxihx |
| [KAFKA-10556](https://issues.apache.org/jira/browse/KAFKA-10556) | NPE if sasl.mechanism is unrecognized |  Minor | . | Ron Dagostino | Ron Dagostino |
| [KAFKA-10068](https://issues.apache.org/jira/browse/KAFKA-10068) | Verify HighAvailabilityTaskAssignor performance with large clusters and topologies |  Blocker | streams | John Roesler | A. Sophie Blee-Goldman |
| [KAFKA-10592](https://issues.apache.org/jira/browse/KAFKA-10592) | system tests not running after python3 merge |  Major | system tests | Ron Dagostino | Nikolay Izhikov |
| [KAFKA-10669](https://issues.apache.org/jira/browse/KAFKA-10669) | ListOffsetRequest: make CurrentLeaderEpoch field ignorable and set MaxNumOffsets field to 1 |  Blocker | . | Manikumar | Manikumar |


