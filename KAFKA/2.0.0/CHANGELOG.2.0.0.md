
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

## Release 2.0.0 - 2018-07-30



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5253](https://issues.apache.org/jira/browse/KAFKA-5253) | TopologyTestDriver must handle streams created with patterns |  Major | streams, unit tests | Wim Van Leuven | Jagadesh Adireddi |
| [KAFKA-6292](https://issues.apache.org/jira/browse/KAFKA-6292) | KafkaConsumer ran into Unknown error fetching data for topic-partition caused by integer overflow in FileLogInputStream |  Major | log | Terence Yi |  |
| [KAFKA-6608](https://issues.apache.org/jira/browse/KAFKA-6608) | Add TimeoutException to KafkaConsumer#position() |  Blocker | consumer | Richard Yu | Richard Yu |
| [KAFKA-7182](https://issues.apache.org/jira/browse/KAFKA-7182) | SASL/OAUTHBEARER client response is missing %x01 separators |  Blocker | clients | Ron Dagostino | Ron Dagostino |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6576](https://issues.apache.org/jira/browse/KAFKA-6576) | Configurable Quota Management (KIP-257) |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6886](https://issues.apache.org/jira/browse/KAFKA-6886) | Externalize Secrets for Kafka Connect Configurations |  Major | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-6935](https://issues.apache.org/jira/browse/KAFKA-6935) | KIP-295 Add Streams Config for Optional Optimization |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-6841](https://issues.apache.org/jira/browse/KAFKA-6841) | Add support for Prefixed ACLs |  Major | admin, security | Piyush Vijay | Andy Coates |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6515](https://issues.apache.org/jira/browse/KAFKA-6515) | Add toString() method to kafka connect Field class |  Minor | KafkaConnect | Bartłomiej Tartanus |  |
| [KAFKA-5987](https://issues.apache.org/jira/browse/KAFKA-5987) | Kafka metrics templates used in document generation should maintain order of tags |  Blocker | clients | Randall Hauch | Randall Hauch |
| [KAFKA-6184](https://issues.apache.org/jira/browse/KAFKA-6184) | report a metric of the lag between the consumer offset and the start offset of the log |  Major | . | Jun Rao | huxihx |
| [KAFKA-6481](https://issues.apache.org/jira/browse/KAFKA-6481) | Improving performance of the function ControllerChannelManager.addUpdateMetadataRequestForBrokers |  Minor | . | Lucas Wang | Lucas Wang |
| [KAFKA-6424](https://issues.apache.org/jira/browse/KAFKA-6424) | QueryableStateIntegrationTest#queryOnRebalance should accept raw text |  Minor | streams | Ted Yu | Filipe Agapito |
| [KAFKA-6057](https://issues.apache.org/jira/browse/KAFKA-6057) | Users forget \`--execute\` in the offset reset tool |  Major | consumer, core, tools | Yeva Byzek | Gilles Degols |
| [KAFKA-5327](https://issues.apache.org/jira/browse/KAFKA-5327) | Console Consumer should only poll for up to max messages |  Minor | tools | Dustin Cote | huxihx |
| [KAFKA-6560](https://issues.apache.org/jira/browse/KAFKA-6560) | Use single-point queries than range queries for windowed aggregation operators |  Critical | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-3806](https://issues.apache.org/jira/browse/KAFKA-3806) | Adjust default values of log.retention.hours and offsets.retention.minutes |  Minor | config | Michal Turek | Ewen Cheslack-Postava |
| [KAFKA-6615](https://issues.apache.org/jira/browse/KAFKA-6615) | Add scripts for DumpLogSegments |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6024](https://issues.apache.org/jira/browse/KAFKA-6024) | Consider moving validation in KafkaConsumer ahead of call to acquireAndEnsureOpen() |  Minor | . | Ted Yu | siva santhalingam |
| [KAFKA-6640](https://issues.apache.org/jira/browse/KAFKA-6640) | Improve efficiency of KafkaAdminClient.describeTopics() |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6106](https://issues.apache.org/jira/browse/KAFKA-6106) | Postpone normal processing of tasks within a thread until restoration of all tasks have completed |  Major | streams | Guozhang Wang | Kamal Chandraprakash |
| [KAFKA-6454](https://issues.apache.org/jira/browse/KAFKA-6454) | Allow timestamp manipulation in Processor API |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6486](https://issues.apache.org/jira/browse/KAFKA-6486) | TimeWindows causes unordered calls to windowed aggregation functions |  Minor | streams | Valentino Proietti | Asutosh Pandya |
| [KAFKA-6659](https://issues.apache.org/jira/browse/KAFKA-6659) | Improve error message if state store is not found |  Trivial | streams | Matthias J. Sax | Stuart Perks |
| [KAFKA-3591](https://issues.apache.org/jira/browse/KAFKA-3591) | JmxTool should exit out if a provided query matches no values |  Trivial | tools | Harsh J |  |
| [KAFKA-6611](https://issues.apache.org/jira/browse/KAFKA-6611) | Re-write simple benchmark in system tests with JMXTool |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6473](https://issues.apache.org/jira/browse/KAFKA-6473) | Add MockProcessorContext to public test-utils |  Major | streams | Matthias J. Sax | John Roesler |
| [KAFKA-4914](https://issues.apache.org/jira/browse/KAFKA-4914) | Partition re-assignment tool should check types before persisting state in ZooKeeper |  Major | admin | Nick Travers | Nick Travers |
| [KAFKA-5674](https://issues.apache.org/jira/browse/KAFKA-5674) | max.connections.per.ip minimum value to be zero to allow IP address blocking |  Major | . | Tristan Stevens | Viktor Somogyi |
| [KAFKA-6630](https://issues.apache.org/jira/browse/KAFKA-6630) | Speed up the processing of TopicDeletionStopReplicaResponseReceived events on the controller |  Minor | core | Lucas Wang | Lucas Wang |
| [KAFKA-4292](https://issues.apache.org/jira/browse/KAFKA-4292) | KIP-86: Configurable SASL callback handlers |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6688](https://issues.apache.org/jira/browse/KAFKA-6688) | The Trogdor coordinator should track task statuses |  Major | system tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6058](https://issues.apache.org/jira/browse/KAFKA-6058) | KIP-222: Add "describe consumer groups" and "list consumer groups" to KafkaAdminClient |  Major | clients | Matthias J. Sax | Jorge Quilcate |
| [KAFKA-6727](https://issues.apache.org/jira/browse/KAFKA-6727) | org.apache.kafka.clients.admin.Config has broken equals and hashCode method. |  Minor | clients, tools | Andy Coates | Andy Coates |
| [KAFKA-6514](https://issues.apache.org/jira/browse/KAFKA-6514) | Add API version as a tag for the RequestsPerSec metric |  Major | core | Allen Wang |  |
| [KAFKA-6772](https://issues.apache.org/jira/browse/KAFKA-6772) | Broker should load credentials from ZK before requests are allowed |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-6802](https://issues.apache.org/jira/browse/KAFKA-6802) | Improve logging when topics aren't known and assignments skipped |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-6376](https://issues.apache.org/jira/browse/KAFKA-6376) | Improve Streams metrics for skipped records |  Major | metrics, streams | Matthias J. Sax | John Roesler |
| [KAFKA-6670](https://issues.apache.org/jira/browse/KAFKA-6670) | Implement a Scala wrapper library for Kafka Streams |  Major | streams | Debasish Ghosh | Debasish Ghosh |
| [KAFKA-6677](https://issues.apache.org/jira/browse/KAFKA-6677) | Remove EOS producer config max.in.flight.request.per.connection=1 |  Major | streams | Matthias J. Sax | Jagadesh Adireddi |
| [KAFKA-6535](https://issues.apache.org/jira/browse/KAFKA-6535) | Set default retention ms for Streams repartition topics to Long.MAX\_VALUE |  Major | streams | Guozhang Wang | Khaireddine Rezgui |
| [KAFKA-6526](https://issues.apache.org/jira/browse/KAFKA-6526) | Update controller to handle changes to unclean.leader.election.enable |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6795](https://issues.apache.org/jira/browse/KAFKA-6795) | Add unit test for ReplicaAlterLogDirsThread |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-6628](https://issues.apache.org/jira/browse/KAFKA-6628) | RocksDBSegmentedBytesStoreTest does not cover time window serdes |  Major | streams | Guozhang Wang | Liju |
| [KAFKA-6673](https://issues.apache.org/jira/browse/KAFKA-6673) | Segment and Stamped implement Comparable, but don't override equals. |  Minor | streams | Koen De Groote | Asutosh Pandya |
| [KAFKA-5965](https://issues.apache.org/jira/browse/KAFKA-5965) | Remove Deprecated AdminClient from Streams Resetter Tool |  Major | streams | Bill Bejeck | Alexander Fedosov |
| [KAFKA-6813](https://issues.apache.org/jira/browse/KAFKA-6813) | Remove deprecated APIs from KIP-120 and KIP-182 in Streams |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5907](https://issues.apache.org/jira/browse/KAFKA-5907) | Support aggregatedJavadoc in Java 9 |  Major | . | Ismael Juma |  |
| [KAFKA-3473](https://issues.apache.org/jira/browse/KAFKA-3473) | KIP-237: More Controller Health Metrics |  Major | controller | Jiangjie Qin | Dong Lin |
| [KAFKA-6896](https://issues.apache.org/jira/browse/KAFKA-6896) | add producer metrics exporting in KafkaStreams.java |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-6905](https://issues.apache.org/jira/browse/KAFKA-6905) | Document that Processor objects can be reused |  Major | documentation, streams | David Glasser | David Glasser |
| [KAFKA-6849](https://issues.apache.org/jira/browse/KAFKA-6849) |  Add transformValues() method to KTable |  Major | streams | Andy Coates | Andy Coates |
| [KAFKA-6685](https://issues.apache.org/jira/browse/KAFKA-6685) | Connect deserialization log message should distinguish key from value |  Minor | KafkaConnect | Yeva Byzek | Jagadesh Adireddi |
| [KAFKA-6850](https://issues.apache.org/jira/browse/KAFKA-6850) | KIP-244: Add Record Header support to Kafka Streams Processor API |  Major | streams | Jorge Quilcate | Jorge Quilcate |
| [KAFKA-2061](https://issues.apache.org/jira/browse/KAFKA-2061) | Offer a --version flag to print the kafka version |  Minor | . | Andrew Pennebaker |  |
| [KAFKA-6930](https://issues.apache.org/jira/browse/KAFKA-6930) | Update KafkaZkClient debug log |  Trivial | core, zkclient | darion yaphet |  |
| [KAFKA-6562](https://issues.apache.org/jira/browse/KAFKA-6562) | KIP-255: OAuth Authentication via SASL/OAUTHBEARER |  Major | clients | Ron Dagostino | Ron Dagostino |
| [KAFKA-5529](https://issues.apache.org/jira/browse/KAFKA-5529) | ConsoleProducer uses deprecated BaseProducer |  Minor | tools | Evgeny Veretennikov | Evgeny Veretennikov |
| [KAFKA-6913](https://issues.apache.org/jira/browse/KAFKA-6913) | Add primitive numeric converters to Connect |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-6776](https://issues.apache.org/jira/browse/KAFKA-6776) | Connect Rest Extension Plugin |  Major | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-1894](https://issues.apache.org/jira/browse/KAFKA-1894) | Avoid long or infinite blocking in the consumer |  Major | consumer | Jay Kreps | Jason Gustafson |
| [KAFKA-3834](https://issues.apache.org/jira/browse/KAFKA-3834) | Consumer should not block in poll on coordinator discovery |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-6957](https://issues.apache.org/jira/browse/KAFKA-6957) | Add getter to AbstractStream class to make internalTopologyBuilder accessible outside of package |  Minor | streams | Florian Hussonnois | Florian Hussonnois |
| [KAFKA-6738](https://issues.apache.org/jira/browse/KAFKA-6738) | Kafka Connect handling of bad data |  Critical | KafkaConnect | Randall Hauch | Arjun Satish |
| [KAFKA-4936](https://issues.apache.org/jira/browse/KAFKA-4936) | Allow dynamic routing of output records |  Major | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-6028](https://issues.apache.org/jira/browse/KAFKA-6028) | Improve the quota throttle communication. |  Major | clients, core | Jiangjie Qin | Jon Lee |
| [KAFKA-6760](https://issues.apache.org/jira/browse/KAFKA-6760) | responses not logged properly in controller |  Major | core | Jun Rao | Mickael Maison |
| [KAFKA-6955](https://issues.apache.org/jira/browse/KAFKA-6955) | Use Java AdminClient in DeleteRecordsCommand |  Major | . | Ismael Juma | Vahid Hashemian |
| [KAFKA-5058](https://issues.apache.org/jira/browse/KAFKA-5058) | Add a sensor to KafkaStreams to track records that have been dropped due to having a null key |  Minor | streams | Damian Guy | John Roesler |
| [KAFKA-6938](https://issues.apache.org/jira/browse/KAFKA-6938) | Add documentation for accessing Headers on Kafka Streams Processor API |  Major | documentation, streams | Jorge Quilcate | Jorge Quilcate |
| [KAFKA-5523](https://issues.apache.org/jira/browse/KAFKA-5523) | ReplayLogProducer not using the new Kafka consumer |  Minor | tools | Paolo Patierno | Manikumar |
| [KAFKA-6750](https://issues.apache.org/jira/browse/KAFKA-6750) | Add listener name to AuthenticationContext |  Major | security | Mickael Maison | Mickael Maison |
| [KAFKA-6730](https://issues.apache.org/jira/browse/KAFKA-6730) | Simplify state store recovery |  Major | streams | Matthias J. Sax | Richard Yu |
| [KAFKA-6997](https://issues.apache.org/jira/browse/KAFKA-6997) | Kafka run class doesn't exclude test-sources jar |  Minor | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-6726](https://issues.apache.org/jira/browse/KAFKA-6726) | KIP-277 - Fine Grained ACL for CreateTopics API |  Major | core, tools | Edoardo Comar | Edoardo Comar |
| [KAFKA-6538](https://issues.apache.org/jira/browse/KAFKA-6538) | Enhance ByteStore exceptions with more context information |  Minor | streams | Matthias J. Sax | Jagadesh Adireddi |
| [KAFKA-7000](https://issues.apache.org/jira/browse/KAFKA-7000) | KafkaConsumer.position should wait for assignment metadata |  Blocker | clients | John Roesler | John Roesler |
| [KAFKA-3379](https://issues.apache.org/jira/browse/KAFKA-3379) | Update tools relying on old producer to use new producer. |  Major | . | Ashish Singh | Ashish Singh |
| [KAFKA-6979](https://issues.apache.org/jira/browse/KAFKA-6979) | Add max.block.ms to consumer for default timeout behavior |  Blocker | consumer | Jason Gustafson | Dhruvil Shah |
| [KAFKA-7009](https://issues.apache.org/jira/browse/KAFKA-7009) | Mute logger for reflections.org at the warn level in system tests |  Critical | KafkaConnect, system tests | Randall Hauch | Randall Hauch |
| [KAFKA-7050](https://issues.apache.org/jira/browse/KAFKA-7050) | Decrease consumer request timeout to 30s |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5370](https://issues.apache.org/jira/browse/KAFKA-5370) | Replace uses of old consumer with the new consumer |  Minor | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-7066](https://issues.apache.org/jira/browse/KAFKA-7066) | Make Streams Runtime Error User Friendly in Case of Serialisation exception |  Major | streams | Stephane Maarek | Stephane Maarek |
| [KAFKA-6546](https://issues.apache.org/jira/browse/KAFKA-6546) | Add ENDPOINT\_NOT\_FOUND\_ON\_LEADER error code for missing listener |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7091](https://issues.apache.org/jira/browse/KAFKA-7091) | AdminClient should handle FindCoordinatorResponse errors |  Major | . | Manikumar | Manikumar |
| [KAFKA-7111](https://issues.apache.org/jira/browse/KAFKA-7111) | Review the NetworkClient log level used |  Trivial | clients | Luan Cestari | Stanislav Kozlovski |
| [KAFKA-7126](https://issues.apache.org/jira/browse/KAFKA-7126) | Reduce number of rebalance for large consumer groups after a topic is created |  Major | . | Dong Lin | Jon Lee |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6378](https://issues.apache.org/jira/browse/KAFKA-6378) | NullPointerException on KStream-GlobalKTable leftJoin when KeyValueMapper returns null |  Major | streams | Andy Bryant | Andy Bryant |
| [KAFKA-6288](https://issues.apache.org/jira/browse/KAFKA-6288) | Broken symlink interrupts scanning the plugin path |  Major | KafkaConnect | Yeva Byzek | Konstantine Karantasis |
| [KAFKA-6253](https://issues.apache.org/jira/browse/KAFKA-6253) | Improve sink connector topic regex validation |  Major | KafkaConnect | Ewen Cheslack-Postava | Jeff Klukas |
| [KAFKA-6513](https://issues.apache.org/jira/browse/KAFKA-6513) | New Connect header support doesn't define \`converter.type\` property correctly |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-6552](https://issues.apache.org/jira/browse/KAFKA-6552) | “entity\_type” not exactly  in description of kafka-configs.sh |  Trivial | admin | Xin | Xin |
| [KAFKA-6503](https://issues.apache.org/jira/browse/KAFKA-6503) | Connect: Plugin scan is very slow |  Critical | KafkaConnect | Per Steffensen | Robert Yokota |
| [KAFKA-5624](https://issues.apache.org/jira/browse/KAFKA-5624) | Unsafe use of expired sensors |  Major | . | Jason Gustafson | Manikumar |
| [KAFKA-6238](https://issues.apache.org/jira/browse/KAFKA-6238) | Issues with protocol version when applying a rolling upgrade to 1.0.0 |  Major | documentation | Diego Louzán | Jason Gustafson |
| [KAFKA-6577](https://issues.apache.org/jira/browse/KAFKA-6577) | Connect standalone SASL file source and sink test fails without explanation |  Blocker | KafkaConnect, system tests | Randall Hauch | Randall Hauch |
| [KAFKA-6534](https://issues.apache.org/jira/browse/KAFKA-6534) | Consumer.poll may not trigger rebalance in time when there is a task migration |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-4831](https://issues.apache.org/jira/browse/KAFKA-4831) | Extract WindowedSerde to public APIs |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6656](https://issues.apache.org/jira/browse/KAFKA-6656) | Use non-zero status code when kafka-configs.sh fails |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6658](https://issues.apache.org/jira/browse/KAFKA-6658) | Fix RoundTripWorkload and make k/v generation configurable |  Major | system tests, unit tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6672](https://issues.apache.org/jira/browse/KAFKA-6672) | ConfigCommand failing to alter configs |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6530](https://issues.apache.org/jira/browse/KAFKA-6530) | Use actual first offset of messages when rolling log segment for magic v2 |  Major | . | Jason Gustafson | Dhruvil Shah |
| [KAFKA-6637](https://issues.apache.org/jira/browse/KAFKA-6637) | if set topic config segment.ms=0 Kafka broker won't be able to start |  Major | . | Chong Wang | huxihx |
| [KAFKA-6710](https://issues.apache.org/jira/browse/KAFKA-6710) | Streams integration tests hang during shutdown |  Major | core, streams | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6052](https://issues.apache.org/jira/browse/KAFKA-6052) | Windows: Consumers not polling when isolation.level=read\_committed |  Major | consumer, producer | Ansel Zandegran | Vahid Hashemian |
| [KAFKA-6446](https://issues.apache.org/jira/browse/KAFKA-6446) | KafkaProducer with transactionId endless waits when bootstrap server is down |  Critical | clients, producer | Eduardo Sciullo | huxihx |
| [KAFKA-6386](https://issues.apache.org/jira/browse/KAFKA-6386) | Deprecate KafkaStreams constructor taking StreamsConfig parameter |  Minor | streams | Matthias J. Sax | Boyang Chen |
| [KAFKA-6724](https://issues.apache.org/jira/browse/KAFKA-6724) | ConsumerPerformance resets offsets on every startup |  Minor | core, tools | Alex Dunayevsky |  |
| [KAFKA-6731](https://issues.apache.org/jira/browse/KAFKA-6731) | waitOnState waits for the wrong state instead of the target one |  Major | streams | huxihx | huxihx |
| [KAFKA-6728](https://issues.apache.org/jira/browse/KAFKA-6728) | Kafka Connect Header Null Pointer Exception |  Critical | KafkaConnect | Philippe Hong | Randall Hauch |
| [KAFKA-6739](https://issues.apache.org/jira/browse/KAFKA-6739) | Down-conversion fails for records with headers |  Critical | core | Koelli Mungee | Dhruvil Shah |
| [KAFKA-6741](https://issues.apache.org/jira/browse/KAFKA-6741) | Transient test failure: SslTransportLayerTest.testNetworkThreadTimeRecorded |  Minor | . | Manikumar | Manikumar |
| [KAFKA-6748](https://issues.apache.org/jira/browse/KAFKA-6748) | Scheduler cannot be cancelled from Punctuator |  Major | streams | Frederic Arno | Frederic Arno |
| [KAFKA-6747](https://issues.apache.org/jira/browse/KAFKA-6747) | kafka-streams Invalid transition attempted from state READY to state ABORTING\_TRANSACTION |  Major | streams | Frederic Arno | Ted Yu |
| [KAFKA-4883](https://issues.apache.org/jira/browse/KAFKA-4883) | invalid client sasl.jaas.config triggers NullPointerException |  Minor | . | Xavier Léauté | Manikumar |
| [KAFKA-6752](https://issues.apache.org/jira/browse/KAFKA-6752) | Unclean leader election metric no longer working |  Major | controller | Jason Gustafson | Manikumar |
| [KAFKA-6650](https://issues.apache.org/jira/browse/KAFKA-6650) | The controller should be able to handle a partially deleted topic |  Minor | . | Lucas Wang | Lucas Wang |
| [KAFKA-6765](https://issues.apache.org/jira/browse/KAFKA-6765) | Intermittent test failure in CustomQuotaCallbackTest |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6742](https://issues.apache.org/jira/browse/KAFKA-6742) | TopologyTestDriver error when dealing with stores from GlobalKTable |  Minor | streams | Valentino Proietti | Valentino Proietti |
| [KAFKA-6775](https://issues.apache.org/jira/browse/KAFKA-6775) | AbstractProcessor created in SimpleBenchmark should call super#init |  Minor | streams | Ted Yu | Jimin Hsieh |
| [KAFKA-6796](https://issues.apache.org/jira/browse/KAFKA-6796) | Surprising UNKNOWN\_TOPIC error for produce/fetch requests to non-replicas |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-6778](https://issues.apache.org/jira/browse/KAFKA-6778) | DescribeConfigs does not return error for non-existent topic |  Major | admin | Magnus Edenhill | Manikumar |
| [KAFKA-6826](https://issues.apache.org/jira/browse/KAFKA-6826) | Avoid range scans when forwarding values in window store aggregations |  Critical | streams | Xavier Léauté | Xavier Léauté |
| [KAFKA-3417](https://issues.apache.org/jira/browse/KAFKA-3417) | Invalid characters in config properties not being validated? |  Minor | config | Byron Ruth | Mickael Maison |
| [KAFKA-6829](https://issues.apache.org/jira/browse/KAFKA-6829) | Consumer should retry when encountering unknown topic or partition error |  Minor | clients | Bill Bejeck | Bill Bejeck |
| [KAFKA-6855](https://issues.apache.org/jira/browse/KAFKA-6855) | Kafka fails to start with Java 10 due to faulty Java version detection |  Major | core | Anders Tornblad | Ismael Juma |
| [KAFKA-6853](https://issues.apache.org/jira/browse/KAFKA-6853) | ResponseMetadata calculates latency incorrectly (and therefore ZooKeeperRequestLatencyMs is incorrect) |  Minor | core | Fuud |  |
| [KAFKA-6857](https://issues.apache.org/jira/browse/KAFKA-6857) | LeaderEpochFileCache.endOffsetFor() should check for UNDEFINED\_EPOCH explicitly |  Major | core | Jun Rao | Anna Povzner |
| [KAFKA-6844](https://issues.apache.org/jira/browse/KAFKA-6844) | Race condition between StreamThread and GlobalStreamThread stopping |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-6871](https://issues.apache.org/jira/browse/KAFKA-6871) | KStreams Scala API: incorrect Javadocs and misleading parameter name |  Minor | . | Michael Noll | Michael Noll |
| [KAFKA-6390](https://issues.apache.org/jira/browse/KAFKA-6390) | Update ZooKeeper to 3.4.12, Gradle and other minor updates |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-6879](https://issues.apache.org/jira/browse/KAFKA-6879) | Controller deadlock following session expiration |  Critical | controller | Jason Gustafson | Jason Gustafson |
| [KAFKA-6834](https://issues.apache.org/jira/browse/KAFKA-6834) | log cleaner should handle the case when the size of a message set is larger than the max message size |  Major | . | Jun Rao | Rajini Sivaram |
| [KAFKA-6299](https://issues.apache.org/jira/browse/KAFKA-6299) | Fix AdminClient error handling when metadata changes |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6878](https://issues.apache.org/jira/browse/KAFKA-6878) | NPE when querying global state store not in READY state |  Major | streams | Salazar |  |
| [KAFKA-6361](https://issues.apache.org/jira/browse/KAFKA-6361) | Fast leader fail over can lead to log divergence between leader and follower |  Major | . | Jason Gustafson | Anna Povzner |
| [KAFKA-6870](https://issues.apache.org/jira/browse/KAFKA-6870) | Concurrency conflicts in SampledStat |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-6825](https://issues.apache.org/jira/browse/KAFKA-6825) | DEFAULT\_PRODUCTION\_EXCEPTION\_HANDLER\_CLASS\_CONFIG is private |  Minor | streams | Anna O | Guozhang Wang |
| [KAFKA-6894](https://issues.apache.org/jira/browse/KAFKA-6894) | Improve error message when connecting processor with a global store |  Minor | streams | Robert Yokota | Robert Yokota |
| [KAFKA-6394](https://issues.apache.org/jira/browse/KAFKA-6394) | Prevent misconfiguration of advertised listeners |  Major | . | Jason Gustafson | Manikumar |
| [KAFKA-6729](https://issues.apache.org/jira/browse/KAFKA-6729) | KTable should use user source topics if possible and not create changelog topic |  Blocker | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-6566](https://issues.apache.org/jira/browse/KAFKA-6566) | SourceTask#stop() not called after exception raised in poll() |  Blocker | KafkaConnect | Gunnar Morling | Robert Yokota |
| [KAFKA-5807](https://issues.apache.org/jira/browse/KAFKA-5807) | Check Connector.config() and Transformation.config() returns a valid ConfigDef |  Minor | . | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-6937](https://issues.apache.org/jira/browse/KAFKA-6937) | In-sync replica delayed during fetch if replica throttle is exceeded |  Major | core | Jun Rao | Jun Rao |
| [KAFKA-6929](https://issues.apache.org/jira/browse/KAFKA-6929) | ZkData - Consumers offsets Zookeeper path is not correct |  Major | core | maytal |  |
| [KAFKA-6427](https://issues.apache.org/jira/browse/KAFKA-6427) | Inconsistent exception type from KafkaConsumer.position |  Trivial | consumer | Jay Kahrman |  |
| [KAFKA-5540](https://issues.apache.org/jira/browse/KAFKA-5540) | Deprecate and remove internal converter configs |  Major | KafkaConnect | Ewen Cheslack-Postava | Chris Egerton |
| [KAFKA-4879](https://issues.apache.org/jira/browse/KAFKA-4879) | KafkaConsumer.position may hang forever when deleting a topic |  Major | consumer | Shixiong Zhu | Jason Gustafson |
| [KAFKA-6054](https://issues.apache.org/jira/browse/KAFKA-6054) | ERROR "SubscriptionInfo - unable to decode subscription data: version=2" when upgrading from 0.10.0.0 to 0.10.2.1 |  Major | streams | James Cheng | Matthias J. Sax |
| [KAFKA-6927](https://issues.apache.org/jira/browse/KAFKA-6927) | Broker uses significant amount of memory during down-conversion |  Major | core | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-6936](https://issues.apache.org/jira/browse/KAFKA-6936) | Scala API Wrapper for Streams uses default serializer for table aggregate |  Major | streams | Daniel Heinrich |  |
| [KAFKA-6973](https://issues.apache.org/jira/browse/KAFKA-6973) | setting invalid timestamp causes Kafka broker restart to fail |  Major | admin | Paul Brebner | huxihx |
| [KAFKA-6581](https://issues.apache.org/jira/browse/KAFKA-6581) | ConsumerGroupCommand hangs if even one of the partition is unavailable |  Minor | admin, core, tools | Sahil Aggarwal |  |
| [KAFKA-3177](https://issues.apache.org/jira/browse/KAFKA-3177) | Kafka consumer can hang when position() is called on a non-existing partition. |  Critical | clients | Jiangjie Qin | Jason Gustafson |
| [KAFKA-3899](https://issues.apache.org/jira/browse/KAFKA-3899) | Consumer.poll() stuck in loop if wrong credentials are supplied |  Major | clients | Edoardo Comar |  |
| [KAFKA-6743](https://issues.apache.org/jira/browse/KAFKA-6743) | ConsumerPerformance fails to consume all messages on topics with large number of partitions |  Minor | core, tools | Alex Dunayevsky |  |
| [KAFKA-6709](https://issues.apache.org/jira/browse/KAFKA-6709) | broker failed to handle request due to OOM |  Critical | core | Zou Tao | Dhruvil Shah |
| [KAFKA-5974](https://issues.apache.org/jira/browse/KAFKA-5974) | Removed unused parameter ProcessorContext |  Major | streams | Matthias J. Sax | siva santhalingam |
| [KAFKA-3665](https://issues.apache.org/jira/browse/KAFKA-3665) | Default ssl.endpoint.identification.algorithm should be https |  Major | security | Ismael Juma | Rajini Sivaram |
| [KAFKA-6704](https://issues.apache.org/jira/browse/KAFKA-6704) | Checking hasNext from SegementIterator could throw InvalidStateStoreException |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-6981](https://issues.apache.org/jira/browse/KAFKA-6981) | Missing Connector Config (errors.deadletterqueue.topic.name) kills Connect Clusters |  Major | . | Arjun Satish | Arjun Satish |
| [KAFKA-5588](https://issues.apache.org/jira/browse/KAFKA-5588) | Remove deprecated new-consumer option for tools |  Minor | . | Paolo Patierno | Paolo Patierno |
| [KAFKA-5919](https://issues.apache.org/jira/browse/KAFKA-5919) | Adding checks on "version" field for tools using it |  Minor | tools | Paolo Patierno | Paolo Patierno |
| [KAFKA-6919](https://issues.apache.org/jira/browse/KAFKA-6919) | Trogdor documentation points to wrong location for trogdor.sh |  Minor | . | Koen De Groote |  |
| [KAFKA-6877](https://issues.apache.org/jira/browse/KAFKA-6877) | Remove completedFetch upon a failed parse if it contains no records. |  Major | clients, consumer | Adem Efe Gencer | Adem Efe Gencer |
| [KAFKA-6993](https://issues.apache.org/jira/browse/KAFKA-6993) | Fix defective documentations for KStream/KTable methods |  Minor | documentation, streams | Lee Dongjin | Lee Dongjin |
| [KAFKA-6967](https://issues.apache.org/jira/browse/KAFKA-6967) | TopologyTestDriver does not allow pre-populating state stores that have change logging |  Major | streams | James Cheng | Matthias J. Sax |
| [KAFKA-6991](https://issues.apache.org/jira/browse/KAFKA-6991) | Connect Rest Extension Plugin issue with Class Loader |  Major | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-6264](https://issues.apache.org/jira/browse/KAFKA-6264) | Log cleaner thread may die on legacy segment containing messages whose offsets are too large |  Critical | core | Jiangjie Qin | Dhruvil Shah |
| [KAFKA-5697](https://issues.apache.org/jira/browse/KAFKA-5697) | StreamThread.shutdown() need to interrupt the stream threads to break the loop |  Major | streams | Guozhang Wang | John Roesler |
| [KAFKA-6906](https://issues.apache.org/jira/browse/KAFKA-6906) | Kafka Streams does not commit transactions if data is produced via wall-clock punctuation |  Major | streams | Matthias J. Sax | Jagadesh Adireddi |
| [KAFKA-7029](https://issues.apache.org/jira/browse/KAFKA-7029) | ReplicaVerificationTool should not use the deprecated SimpleConsumer |  Major | . | Ismael Juma | Manikumar |
| [KAFKA-6351](https://issues.apache.org/jira/browse/KAFKA-6351) | libs directory has duplicate javassist jars |  Minor | build | pre sto |  |
| [KAFKA-6782](https://issues.apache.org/jira/browse/KAFKA-6782) | GlobalKTable GlobalStateStore never finishes restoring when consuming aborted messages |  Major | streams | Lingxiao WANG | Lingxiao WANG |
| [KAFKA-7043](https://issues.apache.org/jira/browse/KAFKA-7043) | Connect isolation whitelist does not include new primitive converters (KIP-305) |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7031](https://issues.apache.org/jira/browse/KAFKA-7031) | Kafka Connect API module depends on Jersey |  Blocker | KafkaConnect | Randall Hauch | Magesh kumar Nandakumar |
| [KAFKA-6749](https://issues.apache.org/jira/browse/KAFKA-6749) | TopologyTestDriver fails when topoloy under test uses EXACTLY\_ONCE |  Minor | streams | Frederic Arno | Jagadesh Adireddi |
| [KAFKA-6860](https://issues.apache.org/jira/browse/KAFKA-6860) | NPE when reinitializeStateStores with eos enabled |  Major | streams | ko byoung kwon | Matthias J. Sax |
| [KAFKA-6711](https://issues.apache.org/jira/browse/KAFKA-6711) | GlobalStateManagerImpl should not write offsets of in-memory stores in checkpoint file |  Major | streams | Cemalettin Koç | Cemalettin Koç |
| [KAFKA-6975](https://issues.apache.org/jira/browse/KAFKA-6975) | AdminClient.deleteRecords() may cause replicas unable to fetch from beginning |  Blocker | . | Anna Povzner | Anna Povzner |
| [KAFKA-7055](https://issues.apache.org/jira/browse/KAFKA-7055) | Kafka Streams Processor API allows you to add sinks and processors without parent |  Minor | streams | Nikki Thean | Nikki Thean |
| [KAFKA-6445](https://issues.apache.org/jira/browse/KAFKA-6445) | Remove deprecated metrics in 2.0 |  Trivial | . | Charly Molter | Dong Lin |
| [KAFKA-7032](https://issues.apache.org/jira/browse/KAFKA-7032) | The TimeUnit is neglected by KakfaConsumer#close(long, TimeUnit) |  Blocker | consumer | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-7021](https://issues.apache.org/jira/browse/KAFKA-7021) | Source KTable checkpoint is not correct |  Major | streams | Matthias J. Sax | Guozhang Wang |
| [KAFKA-7056](https://issues.apache.org/jira/browse/KAFKA-7056) | Connect's new numeric converters should be in a different package |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7039](https://issues.apache.org/jira/browse/KAFKA-7039) | DelegatingClassLoader creates plugin instance even if its not Versioned |  Blocker | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-7047](https://issues.apache.org/jira/browse/KAFKA-7047) | Connect isolation whitelist does not include SimpleHeaderConverter |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7058](https://issues.apache.org/jira/browse/KAFKA-7058) | ConnectSchema#equals() broken for array-typed default values |  Major | KafkaConnect | Gunnar Morling | Ewen Cheslack-Postava |
| [KAFKA-7068](https://issues.apache.org/jira/browse/KAFKA-7068) | ConfigTransformer doesn't handle null values |  Blocker | KafkaConnect | Magesh kumar Nandakumar |  |
| [KAFKA-7048](https://issues.apache.org/jira/browse/KAFKA-7048) | NPE when creating connector |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-7067](https://issues.apache.org/jira/browse/KAFKA-7067) | ConnectRestApiTest fails assertion |  Blocker | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-7023](https://issues.apache.org/jira/browse/KAFKA-7023) | Kafka Streams RocksDB bulk loading config may not be honored with customized RocksDBConfigSetter |  Major | streams | Liquan Pei | Liquan Pei |
| [KAFKA-6737](https://issues.apache.org/jira/browse/KAFKA-6737) | Is Kafka imapcted by critical vulnerqbilty CVE-2018-7489 |  Critical | packaging, security, unit tests | Akansh Shandilya |  |
| [KAFKA-7012](https://issues.apache.org/jira/browse/KAFKA-7012) | Performance issue upgrading to kafka 1.0.1 or 1.1 |  Critical | . | rajadayalan perumalsamy | Rajini Sivaram |
| [KAFKA-7064](https://issues.apache.org/jira/browse/KAFKA-7064) | "Unexpected resource type GROUP" when describing broker configs using latest admin client |  Blocker | . | Rohan Desai | Andy Coates |
| [KAFKA-6697](https://issues.apache.org/jira/browse/KAFKA-6697) | JBOD configured broker should not die if log directory is invalid |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-7082](https://issues.apache.org/jira/browse/KAFKA-7082) | Concurrent createTopics calls may throw NodeExistsException |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-7076](https://issues.apache.org/jira/browse/KAFKA-7076) | Broker startup could be inefficient when using old message format |  Major | core | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-7104](https://issues.apache.org/jira/browse/KAFKA-7104) | ReplicaFetcher thread may die because of inconsistent log start offset in fetch response |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-6809](https://issues.apache.org/jira/browse/KAFKA-6809) | connections-created metric does not behave as expected |  Major | . | Anna Povzner | Stanislav Kozlovski |
| [KAFKA-7028](https://issues.apache.org/jira/browse/KAFKA-7028) | super.users doesn't work with custom principals |  Major | . | Ismael Juma | Stanislav Kozlovski |
| [KAFKA-7112](https://issues.apache.org/jira/browse/KAFKA-7112) | StreamThread does not check for state again after pollRequests() |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-6949](https://issues.apache.org/jira/browse/KAFKA-6949) | alterReplicaLogDirs() should grab partition lock when accessing log of the future replica |  Blocker | . | Jason Gustafson | Dong Lin |
| [KAFKA-7136](https://issues.apache.org/jira/browse/KAFKA-7136) | PushHttpMetricsReporter may deadlock when processing metrics changes |  Blocker | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4041](https://issues.apache.org/jira/browse/KAFKA-4041) | kafka unable to reconnect to zookeeper behind an ELB |  Blocker | . | prabhakar | Ismael Juma |
| [KAFKA-7168](https://issues.apache.org/jira/browse/KAFKA-7168) | Broker shutdown during SSL handshake may be handled as handshake failure |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7185](https://issues.apache.org/jira/browse/KAFKA-7185) | getMatchingAcls throws StringIndexOutOfBoundsException for empty resource name |  Blocker | . | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-6897](https://issues.apache.org/jira/browse/KAFKA-6897) | Mirrormaker waits to shut down forever on produce failure with abort.on.send.failure=true |  Major | . | Koelli Mungee | Dhruvil Shah |
| [KAFKA-7193](https://issues.apache.org/jira/browse/KAFKA-7193) | ZooKeeper client times out with localhost due to random choice of ipv4/ipv6 |  Major | zkclient | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7194](https://issues.apache.org/jira/browse/KAFKA-7194) | Error deserializing assignment after rebalance |  Major | . | Konstantine Karantasis | Jason Gustafson |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5944](https://issues.apache.org/jira/browse/KAFKA-5944) | Add unit tests for handling of authentication failures in clients |  Major | clients | Rajini Sivaram | Vahid Hashemian |
| [KAFKA-6716](https://issues.apache.org/jira/browse/KAFKA-6716) | discardChannel should be released in MockSelector#completeSend |  Minor | . | Ted Yu | huxihx |
| [KAFKA-2951](https://issues.apache.org/jira/browse/KAFKA-2951) | Additional authorization test cases |  Major | . | Flavio Junqueira | Flavio Junqueira |
| [KAFKA-5739](https://issues.apache.org/jira/browse/KAFKA-5739) | Rewrite KStreamPeekTest at processor level avoiding driver usage |  Minor | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-7195](https://issues.apache.org/jira/browse/KAFKA-7195) | StreamStreamJoinIntegrationTest fails in 2.0 Jenkins |  Major | . | Ted Yu | Manikumar |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4641](https://issues.apache.org/jira/browse/KAFKA-4641) | Improve test coverage of StreamsThread |  Minor | streams | Damian Guy | Guozhang Wang |
| [KAFKA-4651](https://issues.apache.org/jira/browse/KAFKA-4651) | Improve test coverage of Stores |  Minor | streams | Damian Guy | Bill Bejeck |
| [KAFKA-3368](https://issues.apache.org/jira/browse/KAFKA-3368) | Add the Message/Record set protocol to the protocol docs |  Major | . | Grant Henke | Andras Beni |
| [KAFKA-6447](https://issues.apache.org/jira/browse/KAFKA-6447) | Add Delegation Token Operations to KafkaAdminClient |  Major | . | Manikumar | Manikumar |
| [KAFKA-3387](https://issues.apache.org/jira/browse/KAFKA-3387) | Update GetOffsetShell tool to not rely on old producer. |  Major | . | Ashish Singh | Ashish Singh |
| [KAFKA-2391](https://issues.apache.org/jira/browse/KAFKA-2391) | Blocking call such as position(), partitionsFor(), committed() and listTopics() should have a timeout |  Critical | . | Jiangjie Qin | Jason Gustafson |
| [KAFKA-7011](https://issues.apache.org/jira/browse/KAFKA-7011) | Investigate if its possible to drop the ResourceNameType field from Java Resource class. |  Major | core, security | Andy Coates | Andy Coates |
| [KAFKA-7006](https://issues.apache.org/jira/browse/KAFKA-7006) | Remove duplicate Scala ResourceNameType class |  Major | core, security | Andy Coates | Andy Coates |
| [KAFKA-7005](https://issues.apache.org/jira/browse/KAFKA-7005) | Remove duplicate Java Resource class. |  Major | core, security | Andy Coates | Andy Coates |
| [KAFKA-7007](https://issues.apache.org/jira/browse/KAFKA-7007) | Use JSON for /kafka-acl-extended-changes path |  Major | core, security | Andy Coates | Andy Coates |
| [KAFKA-7030](https://issues.apache.org/jira/browse/KAFKA-7030) | Add configuration to disable message down-conversion |  Major | . | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-2837](https://issues.apache.org/jira/browse/KAFKA-2837) | FAILING TEST: kafka.api.ProducerBounceTest \> testBrokerFailure |  Major | . | Gwen Shapira | jin xing |
| [KAFKA-7010](https://issues.apache.org/jira/browse/KAFKA-7010) | Rename ResourceNameType.ANY to MATCH |  Major | core, security | Andy Coates | Andy Coates |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5660](https://issues.apache.org/jira/browse/KAFKA-5660) | Don't throw TopologyBuilderException during runtime |  Major | streams | Matthias J. Sax | Nick Afshartous |
| [KAFKA-6810](https://issues.apache.org/jira/browse/KAFKA-6810) | Enable dynamic reconfiguration of SSL truststores |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6854](https://issues.apache.org/jira/browse/KAFKA-6854) | Log cleaner fails with transaction markers that are deleted during clean |  Blocker | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5677](https://issues.apache.org/jira/browse/KAFKA-5677) | Remove deprecated punctuate method |  Major | . | Michal Borowiecki |  |
| [KAFKA-6917](https://issues.apache.org/jira/browse/KAFKA-6917) | Request handler deadlocks attempting to acquire group metadata lock |  Blocker | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-4423](https://issues.apache.org/jira/browse/KAFKA-4423) | Drop support for Java 7 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-6911](https://issues.apache.org/jira/browse/KAFKA-6911) | Incorrect check for keystore/truststore dynamic update |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6921](https://issues.apache.org/jira/browse/KAFKA-6921) | Remove old Scala producer and all related code, tests, and tools |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-6769](https://issues.apache.org/jira/browse/KAFKA-6769) | Upgrade jetty library version |  Critical | core, security | Di Shang |  |
| [KAFKA-6916](https://issues.apache.org/jira/browse/KAFKA-6916) | AdminClient does not refresh metadata on broker failure |  Major | admin | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6912](https://issues.apache.org/jira/browse/KAFKA-6912) | Add authorization tests for custom principal types |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7001](https://issues.apache.org/jira/browse/KAFKA-7001) | Rename errors.allowed.max property in Connect to errors.tolerance |  Minor | KafkaConnect | Arjun Satish | Arjun Satish |
| [KAFKA-7002](https://issues.apache.org/jira/browse/KAFKA-7002) | Allow replication factor to be set via a configuration property for the Connect DLQ topic |  Major | KafkaConnect | Arjun Satish | Arjun Satish |
| [KAFKA-6800](https://issues.apache.org/jira/browse/KAFKA-6800) | Update documentation for SASL/PLAIN and SCRAM to use callbacks |  Major | documentation, security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7003](https://issues.apache.org/jira/browse/KAFKA-7003) | Add headers with error context in messages written to the Connect DeadLetterQueue topic |  Major | . | Arjun Satish |  |
| [KAFKA-6805](https://issues.apache.org/jira/browse/KAFKA-6805) | Allow dynamic broker configs to be configured in ZooKeeper before starting broker |  Major | tools | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2983](https://issues.apache.org/jira/browse/KAFKA-2983) | Remove old Scala consumer and all related code, tests, and tools |  Major | . | Grant Henke | Ismael Juma |


