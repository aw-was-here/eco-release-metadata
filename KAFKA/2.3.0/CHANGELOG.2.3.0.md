
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

## Release 2.3.0 - 2019-06-25



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4730](https://issues.apache.org/jira/browse/KAFKA-4730) | Streams does not have an in-memory windowed store |  Major | streams | Eno Thereska | A. Sophie Blee-Goldman |
| [KAFKA-7283](https://issues.apache.org/jira/browse/KAFKA-7283) | mmap indexes lazily and skip sanity check for segments below recovery point |  Major | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-7922](https://issues.apache.org/jira/browse/KAFKA-7922) | Returned authorized operations in describe responses (KIP-430) |  Major | core | Rajini Sivaram | Manikumar |
| [KAFKA-7730](https://issues.apache.org/jira/browse/KAFKA-7730) | Limit total number of active connections in the broker |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7904](https://issues.apache.org/jira/browse/KAFKA-7904) | KIP-427: Add AtMinIsr topic partition category (new metric & TopicCommand option) |  Minor | . | Kevin Lu | Kevin Lu |
| [KAFKA-8365](https://issues.apache.org/jira/browse/KAFKA-8365) | Protocol and consumer support for follower fetching |  Major | consumer | David Arthur | David Arthur |
| [KAFKA-8265](https://issues.apache.org/jira/browse/KAFKA-8265) | Connect Client Config Override policy |  Major | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7236](https://issues.apache.org/jira/browse/KAFKA-7236) | Add --under-min-isr option to describe topics command |  Minor | tools | Kevin Lu | Kevin Lu |
| [KAFKA-7440](https://issues.apache.org/jira/browse/KAFKA-7440) | Use leader epoch in consumer fetch requests |  Major | consumer | Jason Gustafson | David Arthur |
| [KAFKA-7811](https://issues.apache.org/jira/browse/KAFKA-7811) | Avoid unnecessary lock acquire when KafkaConsumer commits offsets |  Major | clients | lambdaliu | lambdaliu |
| [KAFKA-7487](https://issues.apache.org/jira/browse/KAFKA-7487) | DumpLogSegments reports mismatches for indexed offsets which are not at the start of a record batch |  Minor | core | Michael Bingham | Ismael Juma |
| [KAFKA-7933](https://issues.apache.org/jira/browse/KAFKA-7933) | KTableKTableLeftJoinTest takes an hour to finish |  Major | streams, unit tests | Viktor Somogyi-Vass | Matthias J. Sax |
| [KAFKA-7930](https://issues.apache.org/jira/browse/KAFKA-7930) | StreamsResetter makes "changelog" topic naming assumptions |  Major | streams, tools | Murad M | Murad M |
| [KAFKA-6161](https://issues.apache.org/jira/browse/KAFKA-6161) | Add default implementation to close() and configure() for Serializer, Deserializer and Serde |  Major | clients, streams | Evgeny Veretennikov | Chia-Ping Tsai |
| [KAFKA-7864](https://issues.apache.org/jira/browse/KAFKA-7864) | AdminZkClient.validateTopicCreate() should validate that partitions are 0-based |  Major | . | Jun Rao | Ryan |
| [KAFKA-7492](https://issues.apache.org/jira/browse/KAFKA-7492) | Explain \`null\` handling for reduce and aggregate |  Minor | documentation, streams | Matthias J. Sax | Asutosh Pandya |
| [KAFKA-7956](https://issues.apache.org/jira/browse/KAFKA-7956) | Avoid blocking in ShutdownableThread.awaitShutdown if the thread has not been started |  Minor | core | Gardner Vickers | Gardner Vickers |
| [KAFKA-7918](https://issues.apache.org/jira/browse/KAFKA-7918) | Streams store cleanup: inline byte-store generic parameters |  Major | streams | John Roesler | A. Sophie Blee-Goldman |
| [KAFKA-7963](https://issues.apache.org/jira/browse/KAFKA-7963) | Extract hard-coded Streams metric name strings to centralized place |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8006](https://issues.apache.org/jira/browse/KAFKA-8006) | Guard calls to init() and close() within user code |  Major | streams | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-8007](https://issues.apache.org/jira/browse/KAFKA-8007) | In-memory window store copies on fetch |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8060](https://issues.apache.org/jira/browse/KAFKA-8060) | The Kafka protocol generator should allow null default values for strings |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-7944](https://issues.apache.org/jira/browse/KAFKA-7944) | Add more natural Suppress test |  Major | streams | John Roesler | John Roesler |
| [KAFKA-8094](https://issues.apache.org/jira/browse/KAFKA-8094) | Iterating over cache with get(key) is inefficient |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-7243](https://issues.apache.org/jira/browse/KAFKA-7243) | Add unit integration tests to validate metrics in Kafka Streams |  Major | streams | Guozhang Wang | Khaireddine Rezgui |
| [KAFKA-8014](https://issues.apache.org/jira/browse/KAFKA-8014) | Extend Connect integration tests to add and remove workers dynamically |  Major | . | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-7986](https://issues.apache.org/jira/browse/KAFKA-7986) | distinguish the logging from different ZooKeeperClient instances |  Major | . | Jun Rao | Ivan Yurchenko |
| [KAFKA-8126](https://issues.apache.org/jira/browse/KAFKA-8126) | Flaky Test org.apache.kafka.connect.runtime.WorkerTest.testAddRemoveTask |  Major | KafkaConnect, unit tests | Guozhang Wang |  |
| [KAFKA-6399](https://issues.apache.org/jira/browse/KAFKA-6399) | Consider reducing "max.poll.interval.ms" default for Kafka Streams |  Minor | streams | Matthias J. Sax | John Roesler |
| [KAFKA-8168](https://issues.apache.org/jira/browse/KAFKA-8168) | Add a generated ApiMessageType class |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-8169](https://issues.apache.org/jira/browse/KAFKA-8169) | Wrong topic on streams quick start documentation |  Minor | documentation, streams | Tcheutchoua Steve | Tcheutchoua Steve |
| [KAFKA-7875](https://issues.apache.org/jira/browse/KAFKA-7875) | Add KStream#flatTransformValues |  Major | streams | Matthias J. Sax | Bruno Cadonna |
| [KAFKA-7466](https://issues.apache.org/jira/browse/KAFKA-7466) | Implement KIP-339: Create a new IncrementalAlterConfigs API |  Major | . | Colin McCabe | Manikumar |
| [KAFKA-7747](https://issues.apache.org/jira/browse/KAFKA-7747) | Consumer should check for truncation after leader changes |  Major | consumer | Jason Gustafson | David Arthur |
| [KAFKA-8029](https://issues.apache.org/jira/browse/KAFKA-8029) | Add in-memory bytes-only session store implementation |  Major | streams | Guozhang Wang | A. Sophie Blee-Goldman |
| [KAFKA-8131](https://issues.apache.org/jira/browse/KAFKA-8131) | Add --version parameter to command line help outputs & docs |  Minor | tools | Sönke Liebau | Sönke Liebau |
| [KAFKA-7320](https://issues.apache.org/jira/browse/KAFKA-7320) | Provide ability to disable auto topic creation in KafkaConsumer |  Major | consumer | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-8231](https://issues.apache.org/jira/browse/KAFKA-8231) | Expansion of ConnectClusterState interface |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8348](https://issues.apache.org/jira/browse/KAFKA-8348) | Document of kafkaStreams improvement |  Minor | documentation, streams | Lifei Chen | Lifei Chen |
| [KAFKA-6521](https://issues.apache.org/jira/browse/KAFKA-6521) | Store record timestamps in KTable stores |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8294](https://issues.apache.org/jira/browse/KAFKA-8294) | Batch StopReplica requests with partition deletion and add test cases |  Major | controller | Jason Gustafson | Jason Gustafson |
| [KAFKA-7847](https://issues.apache.org/jira/browse/KAFKA-7847) | KIP-421: Automatically resolve external configurations. |  Minor | config | TEJAL ADSUL |  |
| [KAFKA-8336](https://issues.apache.org/jira/browse/KAFKA-8336) | Enable dynamic update of client-side SSL factory in brokers |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8347](https://issues.apache.org/jira/browse/KAFKA-8347) | Choose next record to process by timestamp |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-5505](https://issues.apache.org/jira/browse/KAFKA-5505) | Connect: Do not restart connector and existing tasks on task-set change |  Major | KafkaConnect | Per Steffensen | Konstantine Karantasis |
| [KAFKA-8215](https://issues.apache.org/jira/browse/KAFKA-8215) | Limit memory usage of RocksDB |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8346](https://issues.apache.org/jira/browse/KAFKA-8346) | Improve replica fetcher behavior in handling partition failures |  Major | core | Aishwarya Gune | Aishwarya Gune |
| [KAFKA-6455](https://issues.apache.org/jira/browse/KAFKA-6455) | Improve timestamp propagation at DSL level |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-6474](https://issues.apache.org/jira/browse/KAFKA-6474) | Rewrite test to use new public TopologyTestDriver |  Major | streams, unit tests | Matthias J. Sax | Filipe Agapito |
| [KAFKA-7992](https://issues.apache.org/jira/browse/KAFKA-7992) | Add a server start time metric |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-8309](https://issues.apache.org/jira/browse/KAFKA-8309) | KIP-465: Add Consolidated Connector Endpoint to Connect REST API |  Major | . | dan norwood | dan norwood |
| [KAFKA-7321](https://issues.apache.org/jira/browse/KAFKA-7321) | ensure timely processing of deletion requests in Kafka topic (Time-based log compaction) |  Major | log | xiongqi wu | xiongqi wu |
| [KAFKA-8428](https://issues.apache.org/jira/browse/KAFKA-8428) | Cleanup LogValidator#validateMessagesAndAssignOffsetsCompressed to assume single record batch only |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-3816](https://issues.apache.org/jira/browse/KAFKA-3816) | Provide more context in Kafka Connect log messages using MDC |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-7850](https://issues.apache.org/jira/browse/KAFKA-7850) | Remove deprecated KStreamTestDriver |  Major | streams, unit tests | Richard Yu | Richard Yu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7896](https://issues.apache.org/jira/browse/KAFKA-7896) | Add some Log4J Kafka Properties for Producing to Secured Brokers |  Major | . | Rohan Desai | Rohan Desai |
| [KAFKA-6569](https://issues.apache.org/jira/browse/KAFKA-6569) | Reflection in OffsetIndex and TimeIndex construction |  Major | core | Kyle Ambroff-Kao | Kyle Ambroff-Kao |
| [KAFKA-7763](https://issues.apache.org/jira/browse/KAFKA-7763) | KafkaProducer with transactionId endless waits when network is disconnection for 10-20s |  Major | clients, producer | weasker | huxihx |
| [KAFKA-7961](https://issues.apache.org/jira/browse/KAFKA-7961) | Handle subscription changes with a rebalance in progress |  Major | consumer | Jason Gustafson | Jose Armando Garcia Sancio |
| [KAFKA-7962](https://issues.apache.org/jira/browse/KAFKA-7962) | StickyAssignor: throws NullPointerException during assignments if topic is deleted |  Major | consumer | Oleg Smirnov | huxihx |
| [KAFKA-7974](https://issues.apache.org/jira/browse/KAFKA-7974) | KafkaAdminClient loses worker thread/enters zombie state when initial DNS lookup fails |  Major | admin | Nicholas Parker |  |
| [KAFKA-7831](https://issues.apache.org/jira/browse/KAFKA-7831) | Consumer SubscriptionState missing synchronization |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-7939](https://issues.apache.org/jira/browse/KAFKA-7939) | Flaky Test KafkaAdminClientTest#testCreateTopicsRetryBackoff |  Critical | admin, unit tests | Matthias J. Sax |  |
| [KAFKA-8091](https://issues.apache.org/jira/browse/KAFKA-8091) | Flaky test  DynamicBrokerReconfigurationTest#testAddRemoveSaslListener |  Critical | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7801](https://issues.apache.org/jira/browse/KAFKA-7801) | TopicCommand should not be able to alter transaction topic partition count |  Major | admin | huxihx | huxihx |
| [KAFKA-7976](https://issues.apache.org/jira/browse/KAFKA-7976) | Flaky Test DynamicBrokerReconfigurationTest#testUncleanLeaderElectionEnable |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-7855](https://issues.apache.org/jira/browse/KAFKA-7855) | Kafka Streams Maven Archetype quickstart fails to compile out of the box |  Major | streams | Michael Drogalis | Kristian Aurlien |
| [KAFKA-8111](https://issues.apache.org/jira/browse/KAFKA-8111) | KafkaProducer can't produce data |  Critical | clients, core | John Roesler | Rajini Sivaram |
| [KAFKA-8114](https://issues.apache.org/jira/browse/KAFKA-8114) | Flaky Test DelegationTokenEndToEndAuthorizationTest#testNoGroupAcl |  Critical | core, unit tests | Matthias J. Sax | Manikumar |
| [KAFKA-7813](https://issues.apache.org/jira/browse/KAFKA-7813) | JmxTool throws NPE when --object-name is omitted |  Minor | . | Attila Sasvári | huxihx |
| [KAFKA-8121](https://issues.apache.org/jira/browse/KAFKA-8121) | ZooKeeperClient session expiry thread may leave clients behind after close |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8062](https://issues.apache.org/jira/browse/KAFKA-8062) | StateListener is not notified when StreamThread dies |  Minor | streams | Andrey Volkov | Guozhang Wang |
| [KAFKA-7989](https://issues.apache.org/jira/browse/KAFKA-7989) | Flaky Test RequestQuotaTest#testResponseThrottleTimeWhenBothFetchAndRequestQuotasViolated |  Critical | core, unit tests | Matthias J. Sax | Anna Povzner |
| [KAFKA-8142](https://issues.apache.org/jira/browse/KAFKA-8142) | Kafka Streams fails with NPE if record contains null-value in header |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5141](https://issues.apache.org/jira/browse/KAFKA-5141) | WorkerTest.testCleanupTasksOnStop transient failure due to NPE |  Critical | KafkaConnect, unit tests | Ewen Cheslack-Postava |  |
| [KAFKA-8063](https://issues.apache.org/jira/browse/KAFKA-8063) | Flaky Test WorkerTest#testConverterOverrides |  Critical | KafkaConnect, unit tests | Matthias J. Sax |  |
| [KAFKA-8190](https://issues.apache.org/jira/browse/KAFKA-8190) | Keystore update without file change doesn't update SSLContext |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8058](https://issues.apache.org/jira/browse/KAFKA-8058) | ConnectRestExtensionContext does not return list of connectors from its ConnectClusterState |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8157](https://issues.apache.org/jira/browse/KAFKA-8157) | Missing "key.serializer" exception when setting "segment index bytes" |  Major | streams | Cristian D | Guozhang Wang |
| [KAFKA-8181](https://issues.apache.org/jira/browse/KAFKA-8181) | Streams docs on serialization include Avro header, but no content |  Minor | streams | Michael Drogalis | Victoria Bialas |
| [KAFKA-8013](https://issues.apache.org/jira/browse/KAFKA-8013) | Avoid buffer underflow when reading a Struct from a partially correct buffer |  Major | . | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8208](https://issues.apache.org/jira/browse/KAFKA-8208) | Broken link for out-of-order data in KStreams Core Concepts doc |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8210](https://issues.apache.org/jira/browse/KAFKA-8210) | Missing link for KStreams in Streams DSL docs |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8209](https://issues.apache.org/jira/browse/KAFKA-8209) | Wrong link for KStreams DSL in Core Concepts doc |  Minor | documentation | Michael Drogalis | Bill Bejeck |
| [KAFKA-8232](https://issues.apache.org/jira/browse/KAFKA-8232) | Flaky test kafka.admin.TopicCommandWithAdminClientTest.testTopicDeletion |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6635](https://issues.apache.org/jira/browse/KAFKA-6635) | Producer close does not await pending transaction |  Major | producer | Jason Gustafson | Viktor Somogyi-Vass |
| [KAFKA-8241](https://issues.apache.org/jira/browse/KAFKA-8241) | Dynamic update of keystore fails on listener without truststore |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7026](https://issues.apache.org/jira/browse/KAFKA-7026) | Sticky assignor could assign a partition to multiple consumers (KIP-341) |  Major | clients | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-7652](https://issues.apache.org/jira/browse/KAFKA-7652) | Kafka Streams Session store performance degradation from 0.10.2.2 to 0.11.0.0 |  Major | . | Jonathan Gordon | Guozhang Wang |
| [KAFKA-7895](https://issues.apache.org/jira/browse/KAFKA-7895) | Ktable supress operator emitting more than one record for the same key per window |  Blocker | streams | prasanthi | John Roesler |
| [KAFKA-8277](https://issues.apache.org/jira/browse/KAFKA-8277) | Fix NPE in ConnectHeaders |  Major | KafkaConnect | Randall Hauch |  |
| [KAFKA-8204](https://issues.apache.org/jira/browse/KAFKA-8204) | Streams may flush state stores in the incorrect order |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-8227](https://issues.apache.org/jira/browse/KAFKA-8227) | Missing Links in Duality of Streams and Tables section |  Minor | documentation, streams | Bill Bejeck | Victoria Bialas |
| [KAFKA-8291](https://issues.apache.org/jira/browse/KAFKA-8291) | System test consumer\_test.py failed on trunk |  Major | consumer, core | Boyang Chen | Boyang Chen |
| [KAFKA-8254](https://issues.apache.org/jira/browse/KAFKA-8254) | Suppress incorrectly passes a null topic to the serdes |  Major | streams | John Roesler | John Roesler |
| [KAFKA-8134](https://issues.apache.org/jira/browse/KAFKA-8134) | ProducerConfig.LINGER\_MS\_CONFIG undocumented breaking change in kafka-clients 2.1 |  Major | clients | Sam Lendle | Dhruvil Shah |
| [KAFKA-8298](https://issues.apache.org/jira/browse/KAFKA-8298) | ConcurrentModificationException Possible when optimizing for repartition nodes |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-7946](https://issues.apache.org/jira/browse/KAFKA-7946) | Flaky Test DeleteConsumerGroupsTest#testDeleteNonEmptyGroup |  Critical | admin, unit tests | Matthias J. Sax | Gwen Shapira |
| [KAFKA-8323](https://issues.apache.org/jira/browse/KAFKA-8323) | Memory leak of BloomFilter Rocks object |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8289](https://issues.apache.org/jira/browse/KAFKA-8289) | KTable\<Windowed\<String\>, Long\>  can't be suppressed |  Blocker | streams | Xiaolin Jia | John Roesler |
| [KAFKA-7455](https://issues.apache.org/jira/browse/KAFKA-7455) | JmxTool cannot connect to an SSL-enabled JMX RMI port |  Major | tools | Attila Sasvári |  |
| [KAFKA-8275](https://issues.apache.org/jira/browse/KAFKA-8275) | NetworkClient leastLoadedNode selection should consider throttled nodes |  Major | clients, network | Jason Gustafson | Jason Gustafson |
| [KAFKA-8304](https://issues.apache.org/jira/browse/KAFKA-8304) | Connect susceptible to deadlock while registering REST extensions |  Blocker | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8240](https://issues.apache.org/jira/browse/KAFKA-8240) | Source.equals() can fail with NPE |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8313](https://issues.apache.org/jira/browse/KAFKA-8313) | KafkaStreams state not being updated properly after shutdown |  Minor | streams | Eric | Guozhang Wang |
| [KAFKA-8344](https://issues.apache.org/jira/browse/KAFKA-8344) | Fix vagrant-up.sh to work with AWS properly |  Major | system tests | Kengo Seki | Kengo Seki |
| [KAFKA-8352](https://issues.apache.org/jira/browse/KAFKA-8352) | Connect System Tests are failing with 404 |  Blocker | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-8332](https://issues.apache.org/jira/browse/KAFKA-8332) | Regression in handling of JoinGroupRequest disallows deterministic protocol selection based on order of preference |  Blocker | core | Konstantine Karantasis | Bob Barrett |
| [KAFKA-8363](https://issues.apache.org/jira/browse/KAFKA-8363) | Config provider parsing is broken |  Major | . | Chris Egerton | Chris Egerton |
| [KAFKA-5061](https://issues.apache.org/jira/browse/KAFKA-5061) | client.id should be set for Connect producers/consumers |  Major | KafkaConnect | Ewen Cheslack-Postava |  |
| [KAFKA-3522](https://issues.apache.org/jira/browse/KAFKA-3522) | Consider adding version information into rocksDB storage format |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-8379](https://issues.apache.org/jira/browse/KAFKA-8379) | Flaky test KafkaAdminClientTest.testUnreachableBootstrapServer |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8324](https://issues.apache.org/jira/browse/KAFKA-8324) | User constructed RocksObjects leak memory |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8290](https://issues.apache.org/jira/browse/KAFKA-8290) | Streams Not Closing Fenced Producer On Task Close |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-8376](https://issues.apache.org/jira/browse/KAFKA-8376) | Flaky test ClientAuthenticationFailureTest.testTransactionalProducerWithInvalidCredentials test. |  Major | . | Manikumar | Jason Gustafson |
| [KAFKA-8381](https://issues.apache.org/jira/browse/KAFKA-8381) | SSL factory for inter-broker listener is broken |  Blocker | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8320](https://issues.apache.org/jira/browse/KAFKA-8320) | Connect Error handling is using the RetriableException from common package |  Major | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-3143](https://issues.apache.org/jira/browse/KAFKA-3143) | inconsistent state in ZK when all replicas are dead |  Major | controller | Jun Rao | Ismael Juma |
| [KAFKA-8052](https://issues.apache.org/jira/browse/KAFKA-8052) | Intermittent INVALID\_FETCH\_SESSION\_EPOCH error on FETCH request |  Major | clients | Bartek Jakub | Rajini Sivaram |
| [KAFKA-8229](https://issues.apache.org/jira/browse/KAFKA-8229) | Connect Sink Task updates nextCommit when commitRequest is true |  Major | KafkaConnect | Scott Reynolds |  |
| [KAFKA-8415](https://issues.apache.org/jira/browse/KAFKA-8415) | Interface ConnectorClientConfigOverridePolicy needs to be excluded from class loading isolation |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8407](https://issues.apache.org/jira/browse/KAFKA-8407) | Connector client overrides broken on client configs with type 'Class' or 'List' |  Blocker | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8422](https://issues.apache.org/jira/browse/KAFKA-8422) | Client should not use old versions of OffsetsForLeaderEpoch |  Blocker | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-8351](https://issues.apache.org/jira/browse/KAFKA-8351) | Log cleaner must handle transactions spanning multiple segments |  Major | log cleaner | Jason Gustafson | Jason Gustafson |
| [KAFKA-7703](https://issues.apache.org/jira/browse/KAFKA-7703) | KafkaConsumer.position may return a wrong offset after "seekToEnd" is called |  Blocker | clients | Shixiong Zhu | Viktor Somogyi-Vass |
| [KAFKA-8187](https://issues.apache.org/jira/browse/KAFKA-8187) | State store record loss across multiple reassignments when using standby tasks |  Blocker | streams | William Greer | Lifei Chen |
| [KAFKA-8418](https://issues.apache.org/jira/browse/KAFKA-8418) | Connect System tests are not waiting for REST resources to be registered |  Blocker | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-8199](https://issues.apache.org/jira/browse/KAFKA-8199) | ClassCastException when trying to groupBy after suppress |  Blocker | streams | Bill Bejeck | Jose Lopez |
| [KAFKA-8446](https://issues.apache.org/jira/browse/KAFKA-8446) | Kafka Streams restoration crashes with NPE when the record value is null |  Blocker | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8463](https://issues.apache.org/jira/browse/KAFKA-8463) | Fix redundant reassignment of tasks when leader worker leaves |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8426](https://issues.apache.org/jira/browse/KAFKA-8426) | KIP 421 Bug: ConfigProvider configs param inconsistent with KIP-297 |  Blocker | . | TEJAL ADSUL |  |
| [KAFKA-8425](https://issues.apache.org/jira/browse/KAFKA-8425) | KIP 421 Bug: Modifying Immutable Originals Map results in Java exception |  Blocker | config | TEJAL ADSUL |  |
| [KAFKA-8475](https://issues.apache.org/jira/browse/KAFKA-8475) | Temporarily restore SslFactory.sslContext() helper |  Blocker | . | Colin McCabe | Randall Hauch |
| [KAFKA-8473](https://issues.apache.org/jira/browse/KAFKA-8473) | Adjust Connect system tests for incremental cooperative rebalancing and enable them for both eager and incremental cooperative rebalancing |  Critical | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8404](https://issues.apache.org/jira/browse/KAFKA-8404) | Authorization header is not passed in Connect when forwarding REST requests |  Blocker | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-4893](https://issues.apache.org/jira/browse/KAFKA-4893) | async topic deletion conflicts with max topic length |  Major | log | Onur Karaman | Colin McCabe |
| [KAFKA-8449](https://issues.apache.org/jira/browse/KAFKA-8449) | Restart task on reconfiguration under incremental cooperative rebalancing |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8483](https://issues.apache.org/jira/browse/KAFKA-8483) | Possible reordering of messages by producer after UNKNOWN\_PRODUCER\_ID error |  Major | producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-8484](https://issues.apache.org/jira/browse/KAFKA-8484) | ProducerId reset can cause IllegalStateException |  Major | producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-8564](https://issues.apache.org/jira/browse/KAFKA-8564) | NullPointerException when loading logs at startup |  Blocker | log | Mickael Maison | Edoardo Comar |
| [KAFKA-8198](https://issues.apache.org/jira/browse/KAFKA-8198) | KStreams testing docs use non-existent method "pipe" |  Minor | documentation, streams | Michael Drogalis | Slim Ouertani |
| [KAFKA-7176](https://issues.apache.org/jira/browse/KAFKA-7176) | State store metrics for migrated tasks are not removed |  Major | streams | Sam Lendle |  |
| [KAFKA-8623](https://issues.apache.org/jira/browse/KAFKA-8623) | KafkaProducer possible deadlock when sending to different topics |  Critical | producer | Alexander Bagiev | Kun Song |
| [KAFKA-7908](https://issues.apache.org/jira/browse/KAFKA-7908) | retention.ms and message.timestamp.difference.max.ms are tied |  Minor | core | Ciprian Pascu |  |
| [KAFKA-5604](https://issues.apache.org/jira/browse/KAFKA-5604) | All producer methods should raise \`ProducerFencedException\` after the first time. |  Major | . | Apurva Mehta | Guozhang Wang |
| [KAFKA-4912](https://issues.apache.org/jira/browse/KAFKA-4912) | Add check for topic name length |  Minor | streams | Matthias J. Sax | Soumabrata Chakraborty |
| [KAFKA-7912](https://issues.apache.org/jira/browse/KAFKA-7912) | In-memory key-value store does not support concurrent access |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8118](https://issues.apache.org/jira/browse/KAFKA-8118) | Ensure that tests close ZooKeeper clients since they can impact subsequent tests |  Major | core | Rajini Sivaram | Rajini Sivaram |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7972](https://issues.apache.org/jira/browse/KAFKA-7972) | Replace SaslHandshake request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-7832](https://issues.apache.org/jira/browse/KAFKA-7832) | Use automatic RPC generation in CreateTopics |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-7997](https://issues.apache.org/jira/browse/KAFKA-7997) | Replace SaslAuthenticate request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-8090](https://issues.apache.org/jira/browse/KAFKA-8090) | Replace ControlledShutdown request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-7862](https://issues.apache.org/jira/browse/KAFKA-7862) | Modify JoinGroup logic to incorporate group.instance.id change |  Major | consumer | Boyang Chen | Boyang Chen |
| [KAFKA-8285](https://issues.apache.org/jira/browse/KAFKA-8285) | Handle thread-id random switch on JVM for KStream |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8284](https://issues.apache.org/jira/browse/KAFKA-8284) | Enable static membership on KStream |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8220](https://issues.apache.org/jira/browse/KAFKA-8220) | Avoid kicking out members through rebalance timeout |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-8373](https://issues.apache.org/jira/browse/KAFKA-8373) | Add group.instance.id field into Sync/Heartbeat/OffsetCommit protocols |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-8225](https://issues.apache.org/jira/browse/KAFKA-8225) | Handle conflicting static member id |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-8386](https://issues.apache.org/jira/browse/KAFKA-8386) | Use COORDINATOR\_NOT\_AVAILABLE to replace UNKNOWN\_MEMBER\_ID when the group is not available |  Major | . | Boyang Chen | Boyang Chen |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7950](https://issues.apache.org/jira/browse/KAFKA-7950) | Kafka tools GetOffsetShell -time description |  Trivial | tools | Kartik | Kartik |
| [KAFKA-7766](https://issues.apache.org/jira/browse/KAFKA-7766) | Improve fail-fast behavior of Jenkins build |  Minor | build | David Arthur | David Arthur |
| [KAFKA-8308](https://issues.apache.org/jira/browse/KAFKA-8308) | Update jetty for security vulnerability CVE-2019-10241 |  Major | core | Di Shang | Ismael Juma |
| [KAFKA-8155](https://issues.apache.org/jira/browse/KAFKA-8155) | Update Streams system tests for 2.2.0 and 2.1.1 releases |  Blocker | streams, system tests | John Roesler | Matthias J. Sax |
| [KAFKA-7778](https://issues.apache.org/jira/browse/KAFKA-7778) | Add KTable.suppress to Scala API |  Major | streams | Jacek Laskowski | John Roesler |


