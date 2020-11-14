
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

## Release 2.5.0 - 2020-04-14



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9267](https://issues.apache.org/jira/browse/KAFKA-9267) | ZkSecurityMigrator should not create /controller node |  Major | admin | NanerLee |  |
| [KAFKA-8843](https://issues.apache.org/jira/browse/KAFKA-8843) | Zookeeper migration tool support for TLS |  Major | . | Pere Urbon-Bayes | Ron Dagostino |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7251](https://issues.apache.org/jira/browse/KAFKA-7251) | Add support for TLS 1.3 |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6049](https://issues.apache.org/jira/browse/KAFKA-6049) | Kafka Streams: Add Cogroup in the DSL |  Major | streams | Guozhang Wang | Walker Carlson |
| [KAFKA-9352](https://issues.apache.org/jira/browse/KAFKA-9352) | unbalanced assignment of topic-partition to tasks |  Major | mirrormaker | Ning Zhang | Ning Zhang |
| [KAFKA-6144](https://issues.apache.org/jira/browse/KAFKA-6144) | Allow serving interactive queries from in-sync Standbys |  Major | streams | Antony Stubbs | Navinder Brar |
| [KAFKA-9445](https://issues.apache.org/jira/browse/KAFKA-9445) | Allow fetching a key from a single partition rather than iterating over all the stores on an instance |  Major | streams | Navinder Brar | Navinder Brar |
| [KAFKA-9487](https://issues.apache.org/jira/browse/KAFKA-9487) | Followup : KAFKA-9445(Allow fetching a key from a single partition); addressing code review comments |  Blocker | streams | Navinder Brar | Navinder Brar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8991](https://issues.apache.org/jira/browse/KAFKA-8991) | Enable scalac optimizer |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-9039](https://issues.apache.org/jira/browse/KAFKA-9039) | Optimize replica fetching CPU utilization with large number of partitions |  Major | core | Guozhang Wang | Lucas Bradstreet |
| [KAFKA-8834](https://issues.apache.org/jira/browse/KAFKA-8834) | Distinguish URPs caused by reassignment plus other metrics |  Major | . | Jason Gustafson | Viktor Somogyi-Vass |
| [KAFKA-8455](https://issues.apache.org/jira/browse/KAFKA-8455) | Add VoidSerde to Serdes |  Minor | streams | John Roesler | Nikolay Izhikov |
| [KAFKA-7689](https://issues.apache.org/jira/browse/KAFKA-7689) | Add Commit/List Offsets Operations to AdminClient |  Major | admin | Mickael Maison | Mickael Maison |
| [KAFKA-8482](https://issues.apache.org/jira/browse/KAFKA-8482) | alterReplicaLogDirs should be better documented |  Major | admin | Colin McCabe | Dongjin Lee |
| [KAFKA-8964](https://issues.apache.org/jira/browse/KAFKA-8964) | Refactor Stream-Thread-level Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8968](https://issues.apache.org/jira/browse/KAFKA-8968) | Refactor Task-level Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9102](https://issues.apache.org/jira/browse/KAFKA-9102) | Increase default zk session timeout and max lag |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8980](https://issues.apache.org/jira/browse/KAFKA-8980) | Refactor State-Store-level Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9110](https://issues.apache.org/jira/browse/KAFKA-9110) | Improve efficiency of disk reads when TLS is enabled |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-9016](https://issues.apache.org/jira/browse/KAFKA-9016) | Warn when log dir stopped serving replicas |  Major | log, log cleaner | Viktor Somogyi-Vass | kumar uttpal |
| [KAFKA-9098](https://issues.apache.org/jira/browse/KAFKA-9098) | Name Repartition Filter, Source, and Sink Processors |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-8710](https://issues.apache.org/jira/browse/KAFKA-8710) | InitProducerId changes for KIP-360 |  Major | core | Bob Barrett | Bob Barrett |
| [KAFKA-9011](https://issues.apache.org/jira/browse/KAFKA-9011) | Add KStream#flatTransform and KStream#flatTransformValues to Scala API |  Major | streams | Alex Kokachev | Alex Kokachev |
| [KAFKA-9086](https://issues.apache.org/jira/browse/KAFKA-9086) | Refactor Processor Node Streams Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9183](https://issues.apache.org/jira/browse/KAFKA-9183) | SaslSslAdminClientIntegrationTest takes too long to execute |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8960](https://issues.apache.org/jira/browse/KAFKA-8960) | Move Task determineCommitId in gradle.build to Project Level |  Minor | clients, streams | Bruno Cadonna | Rabi Kumar K C |
| [KAFKA-9226](https://issues.apache.org/jira/browse/KAFKA-9226) | Section on deletion of segment files is out of date |  Trivial | documentation | Sönke Liebau | Sönke Liebau |
| [KAFKA-8953](https://issues.apache.org/jira/browse/KAFKA-8953) | Consider renaming \`UsePreviousTimeOnInvalidTimestamp\` timestamp extractor |  Trivial | streams | Matthias J. Sax | Rabi Kumar K C |
| [KAFKA-8855](https://issues.apache.org/jira/browse/KAFKA-8855) | Collect and Expose Client's Name and Version in the Brokers |  Major | . | David Jacot | David Jacot |
| [KAFKA-9316](https://issues.apache.org/jira/browse/KAFKA-9316) | ConsoleProducer help info not expose default properties |  Major | tools | huxihx | huxihx |
| [KAFKA-9277](https://issues.apache.org/jira/browse/KAFKA-9277) | move all group state transition rules into their states |  Minor | . | dengziming | dengziming |
| [KAFKA-9202](https://issues.apache.org/jira/browse/KAFKA-9202) | serde in ConsoleConsumer with access to headers |  Major | consumer | Jorg Heymans | huxihx |
| [KAFKA-9324](https://issues.apache.org/jira/browse/KAFKA-9324) | Drop support for Scala 2.11 (KIP-531) |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-9337](https://issues.apache.org/jira/browse/KAFKA-9337) | Simplifying standalone mm2-connect config |  Minor | KafkaConnect, mirrormaker | karan kumar | karan kumar |
| [KAFKA-6614](https://issues.apache.org/jira/browse/KAFKA-6614) | kafka-streams to configure internal topics message.timestamp.type=CreateTime |  Minor | streams | Dmitry Vsekhvalnov | A. Sophie Blee-Goldman |
| [KAFKA-9384](https://issues.apache.org/jira/browse/KAFKA-9384) |  Loop improvements |  Minor | streams | highluck | highluck |
| [KAFKA-7639](https://issues.apache.org/jira/browse/KAFKA-7639) | Read one request at a time from socket to reduce broker memory usage |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7538](https://issues.apache.org/jira/browse/KAFKA-7538) | Improve locking model used to update ISRs and HW |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9420](https://issues.apache.org/jira/browse/KAFKA-9420) | Bump APIs to enable flexible versions |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8821](https://issues.apache.org/jira/browse/KAFKA-8821) | Avoid pattern subscription to allow for stricter ACL settings |  Minor | streams | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-7317](https://issues.apache.org/jira/browse/KAFKA-7317) | Use collections subscription for main consumer to reduce metadata |  Major | streams | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-9152](https://issues.apache.org/jira/browse/KAFKA-9152) | Improve Sensor Retrieval |  Minor | streams | Bruno Cadonna | highluck |
| [KAFKA-9460](https://issues.apache.org/jira/browse/KAFKA-9460) | Enable TLSv1.2 by default and disable all others protocol versions |  Major | security | Nikolay Izhikov | Nikolay Izhikov |
| [KAFKA-9426](https://issues.apache.org/jira/browse/KAFKA-9426) | OffsetsForLeaderEpochClient Use Switch Statement |  Minor | . | David Mollitor |  |
| [KAFKA-9405](https://issues.apache.org/jira/browse/KAFKA-9405) | Use Map API computeIfAbsent Where Applicable |  Minor | clients | David Mollitor |  |
| [KAFKA-9040](https://issues.apache.org/jira/browse/KAFKA-9040) | Implement --all option for describing configs |  Major | . | Jason Gustafson | Raymond Ng |
| [KAFKA-7658](https://issues.apache.org/jira/browse/KAFKA-7658) | Add KStream#toTable to the Streams DSL |  Major | streams | Guozhang Wang | highluck |
| [KAFKA-9360](https://issues.apache.org/jira/browse/KAFKA-9360) | emitting checkpoint and heartbeat set to false will not disable the activity in their SourceTask |  Major | mirrormaker | Ning Zhang | Ning Zhang |
| [KAFKA-9474](https://issues.apache.org/jira/browse/KAFKA-9474) | Kafka RPC protocol should support type 'double' |  Minor | . | Brian Byrne | Brian Byrne |
| [KAFKA-9408](https://issues.apache.org/jira/browse/KAFKA-9408) | Use StandardCharsets UTF-8 instead of UTF-8 Name |  Minor | core | David Mollitor |  |
| [KAFKA-8503](https://issues.apache.org/jira/browse/KAFKA-8503) | Implement default.api.timeout.ms for AdminClient |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-9375](https://issues.apache.org/jira/browse/KAFKA-9375) | Add thread names to kafka connect threads |  Minor | KafkaConnect | karan kumar | karan kumar |
| [KAFKA-9437](https://issues.apache.org/jira/browse/KAFKA-9437) | KIP-559: Make the Kafka Protocol Friendlier with L7 Proxies |  Major | . | David Jacot | David Jacot |
| [KAFKA-9230](https://issues.apache.org/jira/browse/KAFKA-9230) | Change User Customizable Metrics API in StreamsMetrics interface |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9115](https://issues.apache.org/jira/browse/KAFKA-9115) | Add Roll-up Throughput Sensor for Processing on Source Nodes |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9422](https://issues.apache.org/jira/browse/KAFKA-9422) | Track the set of topics a connector is using |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9477](https://issues.apache.org/jira/browse/KAFKA-9477) | Doc: Add RoundRobinAssignor as an option to consumer configs |  Minor | consumer, docs | Alexandra Rodoni | Alexandra Rodoni |
| [KAFKA-7052](https://issues.apache.org/jira/browse/KAFKA-7052) | ExtractField SMT throws NPE - needs clearer error message |  Major | KafkaConnect | Robin Moffatt |  |
| [KAFKA-9483](https://issues.apache.org/jira/browse/KAFKA-9483) | Add Scala KStream#toTable to the Streams DSL |  Minor | streams | highluck | highluck |
| [KAFKA-9499](https://issues.apache.org/jira/browse/KAFKA-9499) | Improve deletion process by batching more aggressively |  Major | . | David Jacot | David Jacot |
| [KAFKA-6607](https://issues.apache.org/jira/browse/KAFKA-6607) | Kafka Streams lag not zero when input topic transactional |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8507](https://issues.apache.org/jira/browse/KAFKA-8507) | Support --bootstrap-server in all command line tools |  Major | tools | Jason Gustafson | Mitchell |
| [KAFKA-8805](https://issues.apache.org/jira/browse/KAFKA-8805) | Bump producer epoch following recoverable errors |  Major | producer | Bob Barrett | Bob Barrett |
| [KAFKA-9515](https://issues.apache.org/jira/browse/KAFKA-9515) | Upgrade ZooKeeper to 3.5.7 |  Blocker | . | Ismael Juma | Ismael Juma |
| [KAFKA-9575](https://issues.apache.org/jira/browse/KAFKA-9575) | "Notable changes in 2.5.0" doesn't mention ZooKeeper 3.5.7 |  Blocker | docs, documentation | Ron Dagostino | Ron Dagostino |
| [KAFKA-9586](https://issues.apache.org/jira/browse/KAFKA-9586) | Fix errored json filename in ops documentation |  Minor | documentation | Dongjin Lee | Dongjin Lee |
| [KAFKA-9567](https://issues.apache.org/jira/browse/KAFKA-9567) | Docs and system tests for ZooKeeper 3.5.7 and KIP-515 |  Blocker | . | Ron Dagostino |  |
| [KAFKA-9091](https://issues.apache.org/jira/browse/KAFKA-9091) | KIP-538: Add a metric tracking the number of open connections with a given SSL cipher type |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-8904](https://issues.apache.org/jira/browse/KAFKA-8904) | Reduce metadata lookups when producing to a large number of topics |  Minor | controller, producer | Brian Byrne | Brian Byrne |
| [KAFKA-6819](https://issues.apache.org/jira/browse/KAFKA-6819) | Refactor build-in StreamsMetrics internal implementations |  Major | streams | Guozhang Wang | Bruno Cadonna |
| [KAFKA-9106](https://issues.apache.org/jira/browse/KAFKA-9106) | metrics exposed via JMX shoud be configurable |  Major | metrics | Xavier Léauté | Xavier Léauté |
| [KAFKA-9758](https://issues.apache.org/jira/browse/KAFKA-9758) | Add documentations for KIP-523 and KIP-527 |  Major | docs, streams | Boyang Chen | Boyang Chen |
| [KAFKA-9810](https://issues.apache.org/jira/browse/KAFKA-9810) | Document Connect Root REST API on  / |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8893](https://issues.apache.org/jira/browse/KAFKA-8893) | Flaky ResetIntegrationTest. testReprocessingFromScratchAfterResetWithIntermediateUserTopic |  Major | streams | Stanislav Kozlovski |  |
| [KAFKA-8894](https://issues.apache.org/jira/browse/KAFKA-8894) | Flaky org.apache.kafka.streams.integration.ResetIntegrationTest.testReprocessingFromFileAfterResetWithoutIntermediateUserTopic |  Minor | streams | Stanislav Kozlovski |  |
| [KAFKA-9688](https://issues.apache.org/jira/browse/KAFKA-9688) | kafka-topic.sh should show KIP-455 adding and removing replicas |  Major | tools | Colin McCabe | Cheng Tan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9014](https://issues.apache.org/jira/browse/KAFKA-9014) | AssertionError thrown by SourceRecordWriteCounter when SourceTask.poll returns an empty list |  Major | KafkaConnect | Richard Wise | Konstantine Karantasis |
| [KAFKA-8945](https://issues.apache.org/jira/browse/KAFKA-8945) | Incorrect null check in the constructor for ConnectorHealth and AbstractState |  Major | KafkaConnect | Sanjana Kaundinya | Chris Egerton |
| [KAFKA-8340](https://issues.apache.org/jira/browse/KAFKA-8340) | ServiceLoader fails when used from isolated plugin path directory |  Major | KafkaConnect | Chris Egerton | Greg Harris |
| [KAFKA-8819](https://issues.apache.org/jira/browse/KAFKA-8819) | Plugin path for converters not working as intended |  Major | KafkaConnect | Magesh kumar Nandakumar | Greg Harris |
| [KAFKA-8081](https://issues.apache.org/jira/browse/KAFKA-8081) | Flaky Test TopicCommandWithAdminClientTest#testDescribeUnderMinIsrPartitions |  Critical | admin, unit tests | Matthias J. Sax | Viktor Somogyi-Vass |
| [KAFKA-8030](https://issues.apache.org/jira/browse/KAFKA-8030) | Flaky Test TopicCommandWithAdminClientTest#testDescribeUnderMinIsrPartitionsMixed |  Critical | admin, unit tests | Matthias J. Sax | Viktor Somogyi-Vass |
| [KAFKA-9056](https://issues.apache.org/jira/browse/KAFKA-9056) | Selector outbound byte metric does not count partial sends |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8700](https://issues.apache.org/jira/browse/KAFKA-8700) | Flaky Test QueryableStateIntegrationTest#queryOnRebalance |  Critical | streams, unit tests | Matthias J. Sax | Chris Pettitt |
| [KAFKA-9077](https://issues.apache.org/jira/browse/KAFKA-9077) | System Test Failure: StreamsSimpleBenchmarkTest |  Minor | streams, system tests | Manikumar | Bruno Cadonna |
| [KAFKA-9169](https://issues.apache.org/jira/browse/KAFKA-9169) | Standby Tasks point ask for incorrect offsets on resuming post suspension |  Critical | streams | Navinder Brar | John Roesler |
| [KAFKA-9051](https://issues.apache.org/jira/browse/KAFKA-9051) | Source task source offset reads can block graceful shutdown |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9219](https://issues.apache.org/jira/browse/KAFKA-9219) | NullPointerException when polling metrics from Kafka Connect |  Major | KafkaConnect | Mickael Maison | Ning Zhang |
| [KAFKA-9255](https://issues.apache.org/jira/browse/KAFKA-9255) | MessageSet v1 protocol wrong specification |  Major | documentation | Fábio Silva | Fábio Silva |
| [KAFKA-9258](https://issues.apache.org/jira/browse/KAFKA-9258) | Connect ConnectorStatusMetricsGroup sometimes NPE |  Blocker | KafkaConnect | Cyrus Vafadari | Cyrus Vafadari |
| [KAFKA-9184](https://issues.apache.org/jira/browse/KAFKA-9184) | Redundant task creation and periodic rebalances after zombie worker rejoins the group |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9131](https://issues.apache.org/jira/browse/KAFKA-9131) | failed producer metadata updates result in the unrelated error message |  Major | streams | Gleb Komissarov | Gleb Komissarov |
| [KAFKA-9241](https://issues.apache.org/jira/browse/KAFKA-9241) | SASL Clients are not forced to re-authenticate if they don't leverage SaslAuthenticateRequest |  Major | clients | Ron Dagostino | Ron Dagostino |
| [KAFKA-9025](https://issues.apache.org/jira/browse/KAFKA-9025) | ZkSecurityMigrator not working with zookeeper chroot |  Major | security | Laurent Millet | huxihx |
| [KAFKA-9002](https://issues.apache.org/jira/browse/KAFKA-9002) | Flaky Test org.apache.kafka.streams.integration.RegexSourceIntegrationTest.testRegexMatchesTopicsAWhenCreated |  Major | streams, unit tests | Bill Bejeck | Guozhang Wang |
| [KAFKA-7925](https://issues.apache.org/jira/browse/KAFKA-7925) | Constant 100% cpu usage by all kafka brokers |  Critical | core | Abhi | Rajini Sivaram |
| [KAFKA-8705](https://issues.apache.org/jira/browse/KAFKA-8705) | NullPointerException was thrown by topology optimization when two MergeNodes have common KeyChaingingNode |  Major | streams | Hiroshi Nakahara | Bill Bejeck |
| [KAFKA-9297](https://issues.apache.org/jira/browse/KAFKA-9297) | CreateTopic API do not work with older version of the request/response |  Major | . | David Jacot | David Jacot |
| [KAFKA-9305](https://issues.apache.org/jira/browse/KAFKA-9305) |  Add version 2.4 to streams system tests |  Major | . | Manikumar | Bruno Cadonna |
| [KAFKA-8928](https://issues.apache.org/jira/browse/KAFKA-8928) | Logged producer config does not always match actual config values |  Major | clients | Chris Pettitt | huxihx |
| [KAFKA-9330](https://issues.apache.org/jira/browse/KAFKA-9330) | Calling AdminClient.close in the AdminClient completion callback causes deadlock |  Major | . | Vikas Singh | Vikas Singh |
| [KAFKA-9068](https://issues.apache.org/jira/browse/KAFKA-9068) | Fix incorrect JavaDocs for \`Stores.xxxSessionStore(...)\` |  Minor | streams | Matthias J. Sax | David Kim |
| [KAFKA-9386](https://issues.apache.org/jira/browse/KAFKA-9386) | Flaky test AclAuthorizerTest.testHighConcurrencyDeletionOfResourceAcls |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9379](https://issues.apache.org/jira/browse/KAFKA-9379) | Flaky Test TopicCommandWithAdminClientTest.testCreateAlterTopicWithRackAware |  Critical | admin, core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-3061](https://issues.apache.org/jira/browse/KAFKA-3061) | Get rid of Guava dependency |  Major | . | Gwen Shapira | Ismael Juma |
| [KAFKA-8786](https://issues.apache.org/jira/browse/KAFKA-8786) | Deprecated Gradle features making it incompatible with Gradle 6.0. |  Trivial | . | Aljoscha Pörtner |  |
| [KAFKA-9287](https://issues.apache.org/jira/browse/KAFKA-9287) | Transaction completion may block unnecessarily after abortable error |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9159](https://issues.apache.org/jira/browse/KAFKA-9159) | Consumer.endOffsets Throw TimeoutException: Failed to get offsets by times in 30000ms after a leader change |  Major | consumer | zhangzhanchang |  |
| [KAFKA-9218](https://issues.apache.org/jira/browse/KAFKA-9218) | MirrorMaker 2 can fail to create topics |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-9329](https://issues.apache.org/jira/browse/KAFKA-9329) | KafkaController::replicasAreValid should return error |  Major | . | Vikas Singh | Vikas Singh |
| [KAFKA-9338](https://issues.apache.org/jira/browse/KAFKA-9338) | Incremental fetch sessions do not maintain or use leader epoch for fencing purposes |  Major | core | Lucas Bradstreet | Jason Gustafson |
| [KAFKA-9457](https://issues.apache.org/jira/browse/KAFKA-9457) | Flaky test org.apache.kafka.common.network.SelectorTest.testGracefulClose |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9083](https://issues.apache.org/jira/browse/KAFKA-9083) | Various parsing issues in Values class |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9024](https://issues.apache.org/jira/browse/KAFKA-9024) | org.apache.kafka.connect.transforms.ValueToKey throws NPE |  Minor | KafkaConnect | Robin Moffatt | Nigel Liang |
| [KAFKA-9143](https://issues.apache.org/jira/browse/KAFKA-9143) | DistributedHerder misleadingly log error on connector task reconfiguration |  Minor | KafkaConnect | Ivan Yurchenko | Ivan Yurchenko |
| [KAFKA-9462](https://issues.apache.org/jira/browse/KAFKA-9462) | Correct exception message in DistributedHerder |  Trivial | KafkaConnect | Ted Yu | Ted Yu |
| [KAFKA-4203](https://issues.apache.org/jira/browse/KAFKA-4203) | Java producer default max message size does not align with broker default |  Major | . | Grant Henke | Ismael Juma |
| [KAFKA-8162](https://issues.apache.org/jira/browse/KAFKA-8162) | IBM JDK Class not found error when handling SASL authentication exception |  Major | clients, core | Arkadiusz Firus | Edoardo Comar |
| [KAFKA-8764](https://issues.apache.org/jira/browse/KAFKA-8764) | LogCleanerManager endless loop while compacting/cleaning segments |  Major | log cleaner | Tomislav Rajakovic |  |
| [KAFKA-9492](https://issues.apache.org/jira/browse/KAFKA-9492) | ProducerResponse with record-level errors throw NPE with older client version |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9074](https://issues.apache.org/jira/browse/KAFKA-9074) | Connect's Values class does not parse time or timestamp values from string literals |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5868](https://issues.apache.org/jira/browse/KAFKA-5868) | Kafka Consumer Rebalancing takes too long |  Major | streams | Nandish Kotadia |  |
| [KAFKA-9491](https://issues.apache.org/jira/browse/KAFKA-9491) | Fast election during reassignment can lead to replica fetcher failures |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9507](https://issues.apache.org/jira/browse/KAFKA-9507) | AdminClient should check for missing committed offsets |  Major | . | Jason Gustafson | David Mao |
| [KAFKA-9505](https://issues.apache.org/jira/browse/KAFKA-9505) | InternalTopicManager may falls into infinite loop with partially created topics |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-9480](https://issues.apache.org/jira/browse/KAFKA-9480) | Value for Task-level Metric process-rate is Constant Zero |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9517](https://issues.apache.org/jira/browse/KAFKA-9517) | KTable Joins Without Materialized Argument Yield Results That Further Joins NPE On |  Blocker | streams | Paul Snively | John Roesler |
| [KAFKA-8211](https://issues.apache.org/jira/browse/KAFKA-8211) | Flaky Test: ResetConsumerGroupOffsetTest.testResetOffsetsExportImportPlan |  Major | admin, clients, unit tests | Bill Bejeck | huxihx |
| [KAFKA-9390](https://issues.apache.org/jira/browse/KAFKA-9390) | Non-key joining of KTable not compatible with confluent avro serdes |  Blocker | streams | Andy Bryant | John Roesler |
| [KAFKA-9355](https://issues.apache.org/jira/browse/KAFKA-9355) | RocksDB statistics are removed from JMX when EOS enabled and empty local state dir |  Major | metrics, streams | Stanislav Savulchik | Bruno Cadonna |
| [KAFKA-9503](https://issues.apache.org/jira/browse/KAFKA-9503) | TopologyTestDriver processes intermediate results in the wrong order |  Major | streams-test-utils | John Roesler | John Roesler |
| [KAFKA-9500](https://issues.apache.org/jira/browse/KAFKA-9500) | Foreign-Key Join creates an invalid topology |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-9192](https://issues.apache.org/jira/browse/KAFKA-9192) | NullPointerException if field in schema not present in value |  Major | KafkaConnect | Mark Tinsley |  |
| [KAFKA-9204](https://issues.apache.org/jira/browse/KAFKA-9204) | ReplaceField transformation fails when encountering tombstone event |  Major | KafkaConnect | Georgios Kalogiros |  |
| [KAFKA-9556](https://issues.apache.org/jira/browse/KAFKA-9556) | KIP-558 cannot be fully disabled and when enabled topic reset not working on connector deletion |  Blocker | KafkaConnect | Randall Hauch | Konstantine Karantasis |
| [KAFKA-9137](https://issues.apache.org/jira/browse/KAFKA-9137) | Maintenance of FetchSession cache causing FETCH\_SESSION\_ID\_NOT\_FOUND in live sessions |  Major | core | Lucas Bradstreet |  |
| [KAFKA-9535](https://issues.apache.org/jira/browse/KAFKA-9535) | Metadata not updated when consumer encounters FENCED\_LEADER\_EPOCH |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9512](https://issues.apache.org/jira/browse/KAFKA-9512) | Flaky Test LagFetchIntegrationTest.shouldFetchLagsDuringRestoration |  Critical | streams, unit tests | Matthias J. Sax | Vinoth Chandar |
| [KAFKA-8025](https://issues.apache.org/jira/browse/KAFKA-8025) | Flaky Test RocksDBGenericOptionsToDbOptionsColumnFamilyOptionsAdapterTest#shouldForwardAllDbOptionsCalls |  Critical | streams, unit tests | Konstantine Karantasis | Matthias J. Sax |
| [KAFKA-9558](https://issues.apache.org/jira/browse/KAFKA-9558) | getListOffsetsCalls doesn't update node in case of leader change |  Critical | admin | Sanjana Kaundinya | Sanjana Kaundinya |
| [KAFKA-6266](https://issues.apache.org/jira/browse/KAFKA-6266) | Kafka 1.0.0 : Repeated occurrence of WARN Resetting first dirty offset of \_\_consumer\_offsets-xx to log start offset 203569 since the checkpointed offset 120955 is invalid. (kafka.log.LogCleanerManager$) |  Major | offset manager | VinayKumar | David Mao |
| [KAFKA-9577](https://issues.apache.org/jira/browse/KAFKA-9577) | Client encountering SASL\_HANDSHAKE protocol version errors on 2.5 / trunk |  Blocker | core | Lucas Bradstreet | Lucas Bradstreet |
| [KAFKA-9599](https://issues.apache.org/jira/browse/KAFKA-9599) | create unique sensor to record group rebalance |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9601](https://issues.apache.org/jira/browse/KAFKA-9601) | Workers log raw connector configs, including values |  Critical | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9661](https://issues.apache.org/jira/browse/KAFKA-9661) | Config synonyms are no longer included in kafka-configs --describe output |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9662](https://issues.apache.org/jira/browse/KAFKA-9662) | Throttling system test fails when messages are produced before consumer starts up |  Major | system tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9668](https://issues.apache.org/jira/browse/KAFKA-9668) | Iterating over KafkaStreams.getAllMetadata() results in ConcurrentModificationException |  Major | streams | Andy Coates | Andy Coates |
| [KAFKA-8245](https://issues.apache.org/jira/browse/KAFKA-8245) | Flaky Test DeleteConsumerGroupsTest#testDeleteCmdAllGroups |  Critical | admin, unit tests | Matthias J. Sax | Chia-Ping Tsai |
| [KAFKA-9658](https://issues.apache.org/jira/browse/KAFKA-9658) | Removing default user quota doesn't take effect until broker restart |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-9364](https://issues.apache.org/jira/browse/KAFKA-9364) | Fix misleading consumer logs on throttling |  Minor | . | Colin McCabe | Colin McCabe |
| [KAFKA-9712](https://issues.apache.org/jira/browse/KAFKA-9712) | Reflections library 0.9.12 introduced in 2.5 causes regression scanning for plugins on plugin\_path |  Blocker | KafkaConnect | Nigel Liang | Nigel Liang |
| [KAFKA-9701](https://issues.apache.org/jira/browse/KAFKA-9701) | Consumer could catch InconsistentGroupProtocolException during rebalance |  Blocker | . | Boyang Chen | Boyang Chen |
| [KAFKA-9741](https://issues.apache.org/jira/browse/KAFKA-9741) | ConsumerCoordinator must update ConsumerGroupMetadata before calling onPartitionsRevoked() |  Critical | consumer | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8842](https://issues.apache.org/jira/browse/KAFKA-8842) | Reading/Writing confused in Connect QuickStart Guide |  Trivial | documentation | Franz van Betteraey | Alaa Zbair |
| [KAFKA-9634](https://issues.apache.org/jira/browse/KAFKA-9634) | ConfigProvider does not document thread safety |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9563](https://issues.apache.org/jira/browse/KAFKA-9563) | Fix Kafka connect consumer and producer override documentation |  Minor | docs, documentation, KafkaConnect | Sayed Mohammad Hossein Torabi |  |
| [KAFKA-9749](https://issues.apache.org/jira/browse/KAFKA-9749) | TransactionMarkerRequestCompletionHandler should treat storage exceptions as retriable |  Major | core | Bob Barrett | Bob Barrett |
| [KAFKA-9700](https://issues.apache.org/jira/browse/KAFKA-9700) | Negative estimatedCompressionRatio leads to misjudgment about if there is no room |  Major | clients | jiamei xie |  |
| [KAFKA-9752](https://issues.apache.org/jira/browse/KAFKA-9752) | Consumer rebalance can be stuck after new member timeout with old JoinGroup version |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9707](https://issues.apache.org/jira/browse/KAFKA-9707) | InsertField.Key transformation should apply to tombstone records |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9706](https://issues.apache.org/jira/browse/KAFKA-9706) | Flatten transformation fails when encountering tombstone event |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9233](https://issues.apache.org/jira/browse/KAFKA-9233) | Kafka consumer throws undocumented IllegalStateException |  Minor | consumer | Andrew Olson | Andrew Olson |
| [KAFKA-9750](https://issues.apache.org/jira/browse/KAFKA-9750) | Flaky test kafka.server.ReplicaManagerTest.testFencedErrorCausedByBecomeLeader |  Blocker | core | Bob Barrett | Chia-Ping Tsai |
| [KAFKA-9807](https://issues.apache.org/jira/browse/KAFKA-9807) | Race condition updating high watermark allows reads above LSO |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9770](https://issues.apache.org/jira/browse/KAFKA-9770) | Caching State Store does not Close Underlying State Store When Exception is Thrown During Flushing |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9815](https://issues.apache.org/jira/browse/KAFKA-9815) | Consumer may never re-join if inconsistent metadata is received once |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9801](https://issues.apache.org/jira/browse/KAFKA-9801) | Static member could get empty assignment unexpectedly |  Critical | consumer, streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8803](https://issues.apache.org/jira/browse/KAFKA-8803) | Stream will not start due to TimeoutException: Timeout expired after 60000milliseconds while awaiting InitProducerId |  Major | streams | Raman Gupta | Guozhang Wang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9334](https://issues.apache.org/jira/browse/KAFKA-9334) | Add more unit tests for Materialized class |  Minor | unit tests | Sainath Batthala | Sainath Batthala |
| [KAFKA-9188](https://issues.apache.org/jira/browse/KAFKA-9188) | Flaky Test SslAdminClientIntegrationTest.testSynchronousAuthorizerAclUpdatesBlockRequestThreads |  Major | core | Bill Bejeck | Rajini Sivaram |
| [KAFKA-9181](https://issues.apache.org/jira/browse/KAFKA-9181) | Flaky test kafka.api.SaslGssapiSslEndToEndAuthorizationTest.testNoConsumeWithoutDescribeAclViaSubscribe |  Major | core | Bill Bejeck | Rajini Sivaram |
| [KAFKA-9523](https://issues.apache.org/jira/browse/KAFKA-9523) | Reduce flakiness of BranchedMultiLevelRepartitionConnectedTopologyTest |  Major | streams, unit tests | Boyang Chen | Boyang Chen |
| [KAFKA-9319](https://issues.apache.org/jira/browse/KAFKA-9319) | Run some system tests using TLSv1.3 |  Major | . | Rajini Sivaram | Nikolay Izhikov |
| [KAFKA-9509](https://issues.apache.org/jira/browse/KAFKA-9509) | Fix flaky test MirrorConnectorsIntegrationTest.testReplication |  Major | mirrormaker | Sanjana Kaundinya | Luke Chen |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8988](https://issues.apache.org/jira/browse/KAFKA-8988) | Replace CreatePartitions request/response with automated protocol |  Major | . | Vikas Singh | Vikas Singh |
| [KAFKA-9383](https://issues.apache.org/jira/browse/KAFKA-9383) | Expose Consumer Group Metadata for Transactional Producer |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-8421](https://issues.apache.org/jira/browse/KAFKA-8421) | Allow consumer.poll() to return data in the middle of rebalance |  Major | consumer, streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8617](https://issues.apache.org/jira/browse/KAFKA-8617) | Replace EndTxn request/response with automated protocol |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9428](https://issues.apache.org/jira/browse/KAFKA-9428) | Expose standby information in KafkaStreams via queryMetadataForKey API |  Major | streams | Vinoth Chandar | Vinoth Chandar |
| [KAFKA-9429](https://issues.apache.org/jira/browse/KAFKA-9429) | Allow ability to control whether stale reads out of state stores are desirable |  Major | streams | Vinoth Chandar | Vinoth Chandar |
| [KAFKA-9431](https://issues.apache.org/jira/browse/KAFKA-9431) | Expose API in KafkaStreams to fetch all local offset lags |  Major | streams | Vinoth Chandar | Vinoth Chandar |
| [KAFKA-8847](https://issues.apache.org/jira/browse/KAFKA-8847) | Deprecate and remove usage of supporting classes in kafka.security.auth |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9418](https://issues.apache.org/jira/browse/KAFKA-9418) | Add new sendOffsets API to include consumer group metadata |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-9026](https://issues.apache.org/jira/browse/KAFKA-9026) | Replace DescribeAcls request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-9027](https://issues.apache.org/jira/browse/KAFKA-9027) | Replace CreateAcls request/response with automated protocol |  Major | . | Mickael Maison | Ismael Juma |
| [KAFKA-9028](https://issues.apache.org/jira/browse/KAFKA-9028) | Replace DeleteAcls request/response with automated protocol |  Major | . | Mickael Maison | Ismael Juma |
| [KAFKA-9519](https://issues.apache.org/jira/browse/KAFKA-9519) | Deprecate ZooKeeper access for kafka-configs.sh |  Major | . | Sanjana Kaundinya | Sanjana Kaundinya |
| [KAFKA-9417](https://issues.apache.org/jira/browse/KAFKA-9417) | Integration test for new EOS model with vanilla Producer and Consumer |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-9582](https://issues.apache.org/jira/browse/KAFKA-9582) | Ensure EOS task producer not through fatal error in unclean shutdown |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9759](https://issues.apache.org/jira/browse/KAFKA-9759) | Add documentation change for KIP-562 |  Major | docs, streams | Boyang Chen | Boyang Chen |
| [KAFKA-8820](https://issues.apache.org/jira/browse/KAFKA-8820) | kafka-reassign-partitions.sh should support the KIP-455 API |  Major | . | Gwen Shapira | Colin McCabe |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7737](https://issues.apache.org/jira/browse/KAFKA-7737) | Consolidate InitProducerId API |  Minor | producer | Viktor Somogyi-Vass | Jason Gustafson |
| [KAFKA-8963](https://issues.apache.org/jira/browse/KAFKA-8963) | Benchmark and optimize incremental fetch session handler |  Major | . | Lucas Bradstreet | Lucas Bradstreet |
| [KAFKA-9606](https://issues.apache.org/jira/browse/KAFKA-9606) | Document Metrics Changes from KIP-444 |  Major | docs, streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9343](https://issues.apache.org/jira/browse/KAFKA-9343) | Add ps command for Kafka and zookeeper process on z/OS. |  Major | tools | Shuo Zhang | Shuo Zhang |


