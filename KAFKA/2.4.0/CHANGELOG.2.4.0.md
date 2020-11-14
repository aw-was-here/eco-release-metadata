
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

## Release 2.4.0 - 2019-12-16



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8801](https://issues.apache.org/jira/browse/KAFKA-8801) | electLeaderForPartitions redundancy for some success elect partitions |  Major | core | shilin Lu |  |
| [KAFKA-8952](https://issues.apache.org/jira/browse/KAFKA-8952) | Vulnerabilities found for jackson-databind-2.9.9 |  Blocker | . | Namrata Kokate | Ismael Juma |
| [KAFKA-6290](https://issues.apache.org/jira/browse/KAFKA-6290) | Kafka Connect cast transformation should support logical types |  Major | KafkaConnect | Sudhir Pradhan | Nigel Liang |
| [KAFKA-9156](https://issues.apache.org/jira/browse/KAFKA-9156) | LazyTimeIndex & LazyOffsetIndex may cause niobufferoverflow in concurrent state |  Blocker | core | shilin Lu | Alex Mironov |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8286](https://issues.apache.org/jira/browse/KAFKA-8286) | KIP-460 Admin Leader Election RPC |  Major | admin, clients, core | Jose Armando Garcia Sancio | Jose Armando Garcia Sancio |
| [KAFKA-3333](https://issues.apache.org/jira/browse/KAFKA-3333) | Alternative Partitioner to Support "Always Round-Robin" partitioning |  Major | clients | Stephen Powis | M. Manna |
| [KAFKA-8447](https://issues.apache.org/jira/browse/KAFKA-8447) | New Metric to Measure Number of Tasks on a Connector |  Major | KafkaConnect | Cyrus Vafadari |  |
| [KAFKA-3705](https://issues.apache.org/jira/browse/KAFKA-3705) | Support non-key joining in KTable |  Major | streams | Guozhang Wang | Adam Bellemare |
| [KAFKA-8885](https://issues.apache.org/jira/browse/KAFKA-8885) | The Kafka Protocol should Support Optional Tagged Fields |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-7500](https://issues.apache.org/jira/browse/KAFKA-7500) | MirrorMaker 2.0 (KIP-382) |  Major | KafkaConnect, mirrormaker | Ryanne Dolan | Ryanne Dolan |
| [KAFKA-8907](https://issues.apache.org/jira/browse/KAFKA-8907) | Return topic configs in CreateTopics response |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7800](https://issues.apache.org/jira/browse/KAFKA-7800) | Extend Admin API to support dynamic application log levels |  Major | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-7471](https://issues.apache.org/jira/browse/KAFKA-7471) | Multiple Consumer Group Management (Describe, Reset, Delete) |  Major | tools | Alex Dunayevsky | Alex Dunayevsky |
| [KAFKA-8874](https://issues.apache.org/jira/browse/KAFKA-8874) | KIP-517: Add consumer metrics to observe user poll behavior |  Minor | consumer, metrics | Kevin Lu | Kevin Lu |
| [KAFKA-8865](https://issues.apache.org/jira/browse/KAFKA-8865) | KIP-504: New Java Authorizer API |  Major | security | Rajini Sivaram | Rajini Sivaram |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8305](https://issues.apache.org/jira/browse/KAFKA-8305) | AdminClient should support creating topics with default partitions and replication factor |  Major | admin | Almog Gavra | Almog Gavra |
| [KAFKA-8400](https://issues.apache.org/jira/browse/KAFKA-8400) | Do not update follower replica state if the log read failed |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8333](https://issues.apache.org/jira/browse/KAFKA-8333) | Load high watermark checkpoint only once when handling LeaderAndIsr requests |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8501](https://issues.apache.org/jira/browse/KAFKA-8501) | Remove key and value from exception message |  Major | streams | Badai Aqrandista | Carlos Manuel Duclos Vergara |
| [KAFKA-8488](https://issues.apache.org/jira/browse/KAFKA-8488) | FetchSessionHandler logging create 73 mb allocation in TLAB which could be no op |  Minor | . | Wenshuai Hou |  |
| [KAFKA-8559](https://issues.apache.org/jira/browse/KAFKA-8559) | PartitionStates.partitionStates cause array grow allocation. |  Major | consumer | Wenshuai Hou |  |
| [KAFKA-8452](https://issues.apache.org/jira/browse/KAFKA-8452) | Possible Suppress buffer optimization: de-duplicate prior value |  Major | streams | John Roesler | John Roesler |
| [KAFKA-8544](https://issues.apache.org/jira/browse/KAFKA-8544) | Remove legacy kafka.admin.AdminClient |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-8563](https://issues.apache.org/jira/browse/KAFKA-8563) | Minor: Remove method call in networkSend. Rely on java's vargs boxing/autoboxing |  Minor | clients | karan kumar |  |
| [KAFKA-7197](https://issues.apache.org/jira/browse/KAFKA-7197) | Support Scala 2.13.0 |  Major | . | Martynas Mickevičius | Dejan Stojadinović |
| [KAFKA-8545](https://issues.apache.org/jira/browse/KAFKA-8545) | Remove legacy ZkUtils |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-8560](https://issues.apache.org/jira/browse/KAFKA-8560) | The Kafka protocol generator should support common structures |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-8634](https://issues.apache.org/jira/browse/KAFKA-8634) | Update ZooKeeper to 3.5.5 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-8644](https://issues.apache.org/jira/browse/KAFKA-8644) | The Kafka protocol generator should allow null defaults for bytes and array fields |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-8513](https://issues.apache.org/jira/browse/KAFKA-8513) | Add kafka-streams-application-reset.bat for Windows platform |  Minor | streams, tools | Kengo Seki | Kengo Seki |
| [KAFKA-8717](https://issues.apache.org/jira/browse/KAFKA-8717) | Use cached hw/lso offset metadata when reading from log |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7548](https://issues.apache.org/jira/browse/KAFKA-7548) | KafkaConsumer should not throw away already fetched data for paused partitions. |  Major | clients | Mayuresh Gharat | Sean Glover |
| [KAFKA-8792](https://issues.apache.org/jira/browse/KAFKA-8792) | Default ZK configuration to disable AdminServer |  Major | . | Gwen Shapira | Gwen Shapira |
| [KAFKA-7335](https://issues.apache.org/jira/browse/KAFKA-7335) | Store clusterId locally to ensure broker joins the right cluster |  Major | . | Jason Gustafson | David Jacot |
| [KAFKA-8594](https://issues.apache.org/jira/browse/KAFKA-8594) | Add Kafka Streams compatibility test for Kafka 2.3.0 |  Major | streams | Colin McCabe | Matthias J. Sax |
| [KAFKA-8753](https://issues.apache.org/jira/browse/KAFKA-8753) | Add JMX for number of topics marked for deletion |  Minor | metrics | David Arthur | David Arthur |
| [KAFKA-8601](https://issues.apache.org/jira/browse/KAFKA-8601) | Producer Improvement: Sticky Partitioner |  Major | . | Justine Olshan | Justine Olshan |
| [KAFKA-8676](https://issues.apache.org/jira/browse/KAFKA-8676) | Avoid Stopping Unnecessary Connectors and Tasks |  Major | KafkaConnect | Luying Liu |  |
| [KAFKA-7149](https://issues.apache.org/jira/browse/KAFKA-7149) | Reduce assignment data size to improve kafka streams scalability |  Major | streams | Ashish Surana | Vinoth Chandar |
| [KAFKA-8853](https://issues.apache.org/jira/browse/KAFKA-8853) | Create sustained connections test for Trogdor |  Major | system tests | Scott Hendricks | Scott Hendricks |
| [KAFKA-7018](https://issues.apache.org/jira/browse/KAFKA-7018) | persist memberId for consumer restart |  Major | consumer, streams | Boyang Chen | Boyang Chen |
| [KAFKA-8856](https://issues.apache.org/jira/browse/KAFKA-8856) | Add Streams Config for Backward-compatible Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8730](https://issues.apache.org/jira/browse/KAFKA-8730) | Add API to delete consumer offsets (KIP-496) |  Major | . | Jason Gustafson | David Jacot |
| [KAFKA-8745](https://issues.apache.org/jira/browse/KAFKA-8745) | DumpLogSegments doesn't show keys, when the message is null |  Major | tools | James Cheng | James Cheng |
| [KAFKA-8859](https://issues.apache.org/jira/browse/KAFKA-8859) | Refactor Cache-level Streams Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-6958](https://issues.apache.org/jira/browse/KAFKA-6958) | Allow to define custom processor names with KStreams DSL |  Minor | streams | Florian Hussonnois | Florian Hussonnois |
| [KAFKA-8880](https://issues.apache.org/jira/browse/KAFKA-8880) | Augment Consumer.committed(partition) to allow multiple partitions |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-7273](https://issues.apache.org/jira/browse/KAFKA-7273) | Converters should have access to headers. |  Major | KafkaConnect | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-6883](https://issues.apache.org/jira/browse/KAFKA-6883) | KafkaShortnamer should allow to convert Kerberos principal name to upper case user name |  Major | . | Attila Sasvári | Manikumar |
| [KAFKA-8956](https://issues.apache.org/jira/browse/KAFKA-8956) | Refactor DelayedCreatePartitions#updateWaiting to avoid modifying collection in foreach |  Minor | . | Colin McCabe | Ismael Juma |
| [KAFKA-8927](https://issues.apache.org/jira/browse/KAFKA-8927) | Remove config \`partition.grouper\` and interface \`PartitionGrouper\` |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8595](https://issues.apache.org/jira/browse/KAFKA-8595) | Support SerDe of Decimals in JSON that are not HEX encoded |  Major | . | Almog Gavra | Almog Gavra |
| [KAFKA-7772](https://issues.apache.org/jira/browse/KAFKA-7772) | Dynamically adjust log level in Connect workers |  Minor | KafkaConnect | Arjun Satish | Arjun Satish |
| [KAFKA-5609](https://issues.apache.org/jira/browse/KAFKA-5609) | Connect log4j should log to file by default |  Minor | config, KafkaConnect | Yeva Byzek | Konstantine Karantasis |
| [KAFKA-8558](https://issues.apache.org/jira/browse/KAFKA-8558) | KIP-479 - Add StreamJoined Overload to KStream#Join |  Blocker | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-8233](https://issues.apache.org/jira/browse/KAFKA-8233) | KIP-470: TopologyTestDriver test input and output usability improvements |  Minor | streams | Jukka Karvanen | Jukka Karvanen |
| [KAFKA-8669](https://issues.apache.org/jira/browse/KAFKA-8669) | Add java security providers in Kafka Security config |  Minor | . | Sai Sandeep | Sai Sandeep |
| [KAFKA-8696](https://issues.apache.org/jira/browse/KAFKA-8696) | Clean up Sum/Count/Total metrics |  Minor | . | John Roesler | John Roesler |
| [KAFKA-8934](https://issues.apache.org/jira/browse/KAFKA-8934) | Introduce Instance-level Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8985](https://issues.apache.org/jira/browse/KAFKA-8985) | Use flexibleVersions with LeaderAndIsr, UMR, etc., and improve RequestResponseTest coverage |  Major | . | Colin McCabe | Jason Gustafson |
| [KAFKA-6263](https://issues.apache.org/jira/browse/KAFKA-6263) | Expose metric for group metadata loading duration |  Major | core | Jason Gustafson | Anastasia Vela |
| [KAFKA-7245](https://issues.apache.org/jira/browse/KAFKA-7245) | Deprecate WindowStore#put(key, value) |  Minor | streams | Matthias J. Sax | Omkar Mestry |
| [KAFKA-8839](https://issues.apache.org/jira/browse/KAFKA-8839) | Improve logging in Kafka Streams around debugging task lifecycle |  Major | streams | Vinoth Chandar | Vinoth Chandar |
| [KAFKA-7190](https://issues.apache.org/jira/browse/KAFKA-7190) | Under low traffic conditions purging repartition topics cause WARN statements about  UNKNOWN\_PRODUCER\_ID |  Major | core, streams | Bill Bejeck | Bob Barrett |
| [KAFKA-8954](https://issues.apache.org/jira/browse/KAFKA-8954) | Topic existence check is wrongly implemented in the DeleteOffset API |  Major | . | David Jacot | David Jacot |
| [KAFKA-8725](https://issues.apache.org/jira/browse/KAFKA-8725) | Improve LogCleaner error handling when failing to grab the filthiest log |  Major | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-7981](https://issues.apache.org/jira/browse/KAFKA-7981) | Add Replica Fetcher and Log Cleaner Count Metrics |  Major | metrics | Viktor Somogyi-Vass | Viktor Somogyi-Vass |
| [KAFKA-9020](https://issues.apache.org/jira/browse/KAFKA-9020) | Streams sub-topologies should be sorted by sink -\> source relationship |  Major | streams | Guozhang Wang | A. Sophie Blee-Goldman |
| [KAFKA-9033](https://issues.apache.org/jira/browse/KAFKA-9033) | Change default client-id in consumer / producer to be more meaningful |  Major | clients | Guozhang Wang | Jason Gustafson |
| [KAFKA-8884](https://issues.apache.org/jira/browse/KAFKA-8884) | Improve streams errors on class cast exception in ProcessorsNodes |  Minor | streams | Antony Stubbs | Antony Stubbs |
| [KAFKA-9058](https://issues.apache.org/jira/browse/KAFKA-9058) | Foreign Key Join should not require a queriable store |  Blocker | . | John Roesler | John Roesler |
| [KAFKA-9038](https://issues.apache.org/jira/browse/KAFKA-9038) | Allow creating partitions while partition reassignment is in progress |  Major | . | Bob Barrett |  |
| [KAFKA-8984](https://issues.apache.org/jira/browse/KAFKA-8984) | Improve tagged fields documentation |  Minor | protocol | Colin McCabe | Colin McCabe |
| [KAFKA-8855](https://issues.apache.org/jira/browse/KAFKA-8855) | Collect and Expose Client's Name and Version in the Brokers |  Major | . | David Jacot | David Jacot |
| [KAFKA-8179](https://issues.apache.org/jira/browse/KAFKA-8179) | Incremental Rebalance Protocol for Kafka Consumer |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-8345](https://issues.apache.org/jira/browse/KAFKA-8345) | Create an Administrative API for Replica Reassignment |  Major | . | Colin McCabe | Colin McCabe |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7921](https://issues.apache.org/jira/browse/KAFKA-7921) | Instable KafkaStreamsTest |  Critical | streams, unit tests | Matthias J. Sax |  |
| [KAFKA-8461](https://issues.apache.org/jira/browse/KAFKA-8461) | Flakey test UncleanLeaderElectionTest#testUncleanLeaderElectionDisabledByTopicOverride |  Major | core | Boyang Chen | Manikumar |
| [KAFKA-8487](https://issues.apache.org/jira/browse/KAFKA-8487) | Consumer should not resetGeneration upon REBALANCE\_IN\_PROGRESS in commit response handler |  Major | consumer, streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8514](https://issues.apache.org/jira/browse/KAFKA-8514) | Kafka clients should not include Scala's Java 8 compatibility lib |  Major | clients | Enno Runne | Almog Gavra |
| [KAFKA-8263](https://issues.apache.org/jira/browse/KAFKA-8263) | Flaky Test MetricsIntegrationTest#testStreamMetricOfWindowStore |  Major | streams, unit tests | Matthias J. Sax | Bruno Cadonna |
| [KAFKA-8262](https://issues.apache.org/jira/browse/KAFKA-8262) | Flaky Test MetricsIntegrationTest#testStreamMetric |  Major | streams, unit tests | Matthias J. Sax | Bruno Cadonna |
| [KAFKA-8530](https://issues.apache.org/jira/browse/KAFKA-8530) | Consumer should handle authorization errors in OffsetFetch |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-8448](https://issues.apache.org/jira/browse/KAFKA-8448) | Too many kafka.log.Log instances (Memory Leak) |  Major | . | Juan Olivares | Justine Olshan |
| [KAFKA-8106](https://issues.apache.org/jira/browse/KAFKA-8106) | Reducing the allocation and copying of ByteBuffer  when logValidator  do validation. |  Major | core | Flower.min | Flower.min |
| [KAFKA-5998](https://issues.apache.org/jira/browse/KAFKA-5998) | /.checkpoint.tmp Not found exception |  Critical | streams | Yogesh BG | John Roesler |
| [KAFKA-8198](https://issues.apache.org/jira/browse/KAFKA-8198) | KStreams testing docs use non-existent method "pipe" |  Minor | documentation, streams | Michael Drogalis | Slim Ouertani |
| [KAFKA-6605](https://issues.apache.org/jira/browse/KAFKA-6605) | Flatten SMT does not properly handle fields that are null |  Major | KafkaConnect | Randall Hauch | Michal Borowiecki |
| [KAFKA-7157](https://issues.apache.org/jira/browse/KAFKA-7157) | Connect TimestampConverter SMT doesn't handle null values |  Major | KafkaConnect | Randall Hauch | Valeria Vasylieva |
| [KAFKA-8602](https://issues.apache.org/jira/browse/KAFKA-8602) | StreamThread Dies Because Restore Consumer is not Subscribed to Any Topic |  Critical | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8620](https://issues.apache.org/jira/browse/KAFKA-8620) | Race condition in StreamThread state change |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8637](https://issues.apache.org/jira/browse/KAFKA-8637) | WriteBatch objects leak off-heap memory |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8662](https://issues.apache.org/jira/browse/KAFKA-8662) | Produce fails if a previous produce was to an unauthorized topic |  Blocker | producer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8024](https://issues.apache.org/jira/browse/KAFKA-8024) | UtilsTest.testFormatBytes fails with german locale |  Trivial | . | Patrik Kleindl | Patrik Kleindl |
| [KAFKA-8670](https://issues.apache.org/jira/browse/KAFKA-8670) | kafka-topics.sh shows IllegalArgumentException when describing all topics if no topics exist on the cluster |  Major | admin, tools | Tirtha Chatterjee | Tirtha Chatterjee |
| [KAFKA-8053](https://issues.apache.org/jira/browse/KAFKA-8053) | kafka-topics.sh gives confusing error message when the topic doesn't exist |  Minor | . | Jakub Scholz | Tirtha Chatterjee |
| [KAFKA-8615](https://issues.apache.org/jira/browse/KAFKA-8615) | Change to track partition time breaks TimestampExtractor |  Major | streams | Bill Bejeck | A. Sophie Blee-Goldman |
| [KAFKA-8635](https://issues.apache.org/jira/browse/KAFKA-8635) | Unnecessary wait when looking up coordinator before transactional request |  Major | clients | Denis Washington | Bob Barrett |
| [KAFKA-8392](https://issues.apache.org/jira/browse/KAFKA-8392) | Kafka broker leaks metric when partition leader moves to another node. |  Major | metrics | Kamal Chandraprakash | Tu Tran |
| [KAFKA-8454](https://issues.apache.org/jira/browse/KAFKA-8454) | Add Java AdminClient interface |  Minor | admin, clients | Andy Coates | Andy Coates |
| [KAFKA-8526](https://issues.apache.org/jira/browse/KAFKA-8526) | Broker may select a failed dir for new replica even in the presence of other live dirs |  Major | . | Anna Povzner | Igor Soarez |
| [KAFKA-8442](https://issues.apache.org/jira/browse/KAFKA-8442) | Inconsistent ISR output in topic command when using --bootstrap-server |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-8688](https://issues.apache.org/jira/browse/KAFKA-8688) | Upgrade system tests fail due to data loss with older message format |  Major | system tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8731](https://issues.apache.org/jira/browse/KAFKA-8731) | InMemorySessionStore throws NullPointerException on startup |  Blocker | streams | Jonathan Gordon | A. Sophie Blee-Goldman |
| [KAFKA-8456](https://issues.apache.org/jira/browse/KAFKA-8456) | Flaky Test  StoreUpgradeIntegrationTest#shouldMigratePersistentWindowStoreToTimestampedWindowStoreUsingPapi |  Major | streams, unit tests | Boyang Chen | Matthias J. Sax |
| [KAFKA-8736](https://issues.apache.org/jira/browse/KAFKA-8736) | Performance: ThreadCache uses size() for empty cache check |  Critical | streams | Matthew Jarvie | Matthew Jarvie |
| [KAFKA-8748](https://issues.apache.org/jira/browse/KAFKA-8748) | Flaky Test DescribeLogDirsRequestTest#testDescribeLogDirsRequest |  Critical | core, unit tests | Matthias J. Sax | Ismael Juma |
| [KAFKA-8550](https://issues.apache.org/jira/browse/KAFKA-8550) | Connector validation fails with aliased converters |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8782](https://issues.apache.org/jira/browse/KAFKA-8782) | ReplicationQuotaManagerTest and ClientQuotaManagerTest should close Metrics object |  Major | core | Anna Povzner | Ismael Juma |
| [KAFKA-8774](https://issues.apache.org/jira/browse/KAFKA-8774) | Connect REST API exposes plaintext secrets in tasks endpoint if config value contains additional characters |  Critical | KafkaConnect | Oleksandr Diachenko | Arjun Satish |
| [KAFKA-7941](https://issues.apache.org/jira/browse/KAFKA-7941) | Connect KafkaBasedLog work thread terminates when getting offsets fails because broker is unavailable |  Minor | KafkaConnect | Paul Whalen | Paul Whalen |
| [KAFKA-8791](https://issues.apache.org/jira/browse/KAFKA-8791) | RocksDBTimestampedStore should open in regular mode for new stores |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8788](https://issues.apache.org/jira/browse/KAFKA-8788) | Optimize client metadata handling with a large number of partitions |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-7937](https://issues.apache.org/jira/browse/KAFKA-7937) | Flaky Test ResetConsumerGroupOffsetTest.testResetOffsetsNotExistingGroup |  Critical | admin, clients, unit tests | Matthias J. Sax | Bob Barrett |
| [KAFKA-8041](https://issues.apache.org/jira/browse/KAFKA-8041) | Flaky Test LogDirFailureTest#testIOExceptionDuringLogRoll |  Critical | core, unit tests | Matthias J. Sax | Bob Barrett |
| [KAFKA-8802](https://issues.apache.org/jira/browse/KAFKA-8802) | ConcurrentSkipListMap shows performance regression in cache and in-memory store |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8698](https://issues.apache.org/jira/browse/KAFKA-8698) | ListOffsets Response protocol documentation |  Minor | documentation | Fábio Silva | Asutosh Pandya |
| [KAFKA-8824](https://issues.apache.org/jira/browse/KAFKA-8824) | InMemoryTimeOrderedKeyValueBuffer propagates nulls when supress is configured |  Major | streams | Ferran altimiras | John Roesler |
| [KAFKA-8586](https://issues.apache.org/jira/browse/KAFKA-8586) | Source task producers silently fail to send records |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8412](https://issues.apache.org/jira/browse/KAFKA-8412) | Still a nullpointer exception thrown on shutdown while flushing before closing producers |  Minor | streams | Sebastiaan | Chris Pettitt |
| [KAFKA-8816](https://issues.apache.org/jira/browse/KAFKA-8816) | RecordCollector offsets updated indirectly by StreamTask |  Major | streams | Chris Pettitt | Chris Pettitt |
| [KAFKA-8837](https://issues.apache.org/jira/browse/KAFKA-8837) | Several integration tests incorrectly use verifyNonDaemonThreadsStatus |  Major | core | Anna Povzner | Anastasia Vela |
| [KAFKA-8860](https://issues.apache.org/jira/browse/KAFKA-8860) | SslPrincipalMapper should handle distinguished names with spaces |  Major | . | Manikumar |  |
| [KAFKA-7849](https://issues.apache.org/jira/browse/KAFKA-7849) | Warning when adding GlobalKTable |  Minor | streams | Dmitry Minkovsky | Omar Al-Safi |
| [KAFKA-8861](https://issues.apache.org/jira/browse/KAFKA-8861) | Fix flaky RegexSourceIntegrationTest.testMultipleConsumersCanReadFromPartitionedTopic |  Minor | streams, unit tests | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-8857](https://issues.apache.org/jira/browse/KAFKA-8857) | Config describe should not return isReadOnly=false based on synonyms |  Major | admin | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8889](https://issues.apache.org/jira/browse/KAFKA-8889) | Root cause is lost for FetchSessionHandler.handleError |  Minor | . | Qinghui Xu |  |
| [KAFKA-8878](https://issues.apache.org/jira/browse/KAFKA-8878) | Flaky Test AssignedStreamsTasksTest#shouldCloseCleanlyWithSuspendedTaskAndEOS |  Major | streams, unit tests | Matthias J. Sax | Chris Pettitt |
| [KAFKA-8817](https://issues.apache.org/jira/browse/KAFKA-8817) | Flaky Test KafkaProducerTest.testCloseIsForcedOnPendingAddOffsetRequest |  Major | core | Chris Pettitt | Guozhang Wang |
| [KAFKA-8875](https://issues.apache.org/jira/browse/KAFKA-8875) | CreateTopic API should check topic existence before replication factor |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-8755](https://issues.apache.org/jira/browse/KAFKA-8755) | Stand-by Task of an Optimized Source Table Does Not Write Anything to its State Store |  Major | streams | Bruno Cadonna | Chris Pettitt |
| [KAFKA-8892](https://issues.apache.org/jira/browse/KAFKA-8892) | Display the sorted configs in Kafka Configs Help Command. |  Minor | . | Kamal Chandraprakash | Kamal Chandraprakash |
| [KAFKA-7990](https://issues.apache.org/jira/browse/KAFKA-7990) | Flaky Test KafkaStreamsTest#shouldCleanupOldStateDirs |  Major | streams, unit tests | Matthias J. Sax | Guozhang Wang |
| [KAFKA-8086](https://issues.apache.org/jira/browse/KAFKA-8086) | Flaky Test GroupAuthorizerIntegrationTest#testPatternSubscriptionWithTopicAndGroupRead |  Critical | admin, unit tests | Matthias J. Sax |  |
| [KAFKA-8319](https://issues.apache.org/jira/browse/KAFKA-8319) | Flaky Test KafkaStreamsTest.statefulTopologyShouldCreateStateDirectory |  Major | streams | Bill Bejeck | Guozhang Wang |
| [KAFKA-8427](https://issues.apache.org/jira/browse/KAFKA-8427) | Error while cleanup under windows for EmbeddedKafkaCluster |  Major | streams | Sukumaar Mane | Guozhang Wang |
| [KAFKA-8911](https://issues.apache.org/jira/browse/KAFKA-8911) | Implicit TimeWindowedSerde creates Serde with null inner serializer |  Major | streams | Michał | Michał |
| [KAFKA-8804](https://issues.apache.org/jira/browse/KAFKA-8804) | Internal Connect REST endpoints are insecure |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8523](https://issues.apache.org/jira/browse/KAFKA-8523) | InsertField transformation fails when encountering tombstone event |  Major | KafkaConnect | Gunnar Morling |  |
| [KAFKA-8974](https://issues.apache.org/jira/browse/KAFKA-8974) | Sink Connectors can't handle topic list with whitespaces |  Minor | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-8649](https://issues.apache.org/jira/browse/KAFKA-8649) | Error while rolling update from Kafka Streams 2.0.0 -\> Kafka Streams 2.1.0 |  Critical | streams | Suyash Garg | A. Sophie Blee-Goldman |
| [KAFKA-8983](https://issues.apache.org/jira/browse/KAFKA-8983) | AdminClient deleteRecords should not fail all partitions unnecessarily |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8742](https://issues.apache.org/jira/browse/KAFKA-8742) | Flaky Test RepartitionWithMergeOptimizingIntegrationTest#shouldSendCorrectResults\_NO\_OPTIMIZATION |  Critical | streams, unit tests | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-8743](https://issues.apache.org/jira/browse/KAFKA-8743) | Flaky Test RepartitionWithMergeOptimizingIntegrationTest#shouldSendCorrectRecords\_OPTIMIZED |  Critical | streams, unit tests | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-9003](https://issues.apache.org/jira/browse/KAFKA-9003) | Flaky Test RepartitionOptimizingIntegrationTest#shouldSendCorrectRecords\_OPTIMIZED |  Major | streams, unit tests | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9029](https://issues.apache.org/jira/browse/KAFKA-9029) | Flaky Test CooperativeStickyAssignorTest.testReassignmentWithRandomSubscriptionsAndChanges |  Blocker | clients, unit tests | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-8671](https://issues.apache.org/jira/browse/KAFKA-8671) | NullPointerException occurs if topic associated with GlobalKTable changes |  Critical | streams | Alex Leung | Alex Leung |
| [KAFKA-8813](https://issues.apache.org/jira/browse/KAFKA-8813) | Race condition when creating topics and changing their configuration |  Major | . | Gwen Shapira | Vikas Singh |
| [KAFKA-5566](https://issues.apache.org/jira/browse/KAFKA-5566) | Flaky Test QueryableStateIntegrationTest.shouldAllowToQueryAfterThreadDied |  Major | streams, unit tests | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8078](https://issues.apache.org/jira/browse/KAFKA-8078) | Flaky Test TableTableJoinIntegrationTest#testInnerInner |  Major | streams, unit tests | Matthias J. Sax | Bruno Cadonna |
| [KAFKA-9014](https://issues.apache.org/jira/browse/KAFKA-9014) | AssertionError thrown by SourceRecordWriteCounter when SourceTask.poll returns an empty list |  Major | KafkaConnect | Richard Wise | Konstantine Karantasis |
| [KAFKA-9030](https://issues.apache.org/jira/browse/KAFKA-9030) | Document Instance-level Metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8945](https://issues.apache.org/jira/browse/KAFKA-8945) | Incorrect null check in the constructor for ConnectorHealth and AbstractState |  Major | KafkaConnect | Sanjana Kaundinya | Chris Egerton |
| [KAFKA-8947](https://issues.apache.org/jira/browse/KAFKA-8947) | Connect framework incorrectly instantiates TaskStates for REST extensions |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9032](https://issues.apache.org/jira/browse/KAFKA-9032) | Serializer is invoked with null when foreignValue=null |  Blocker | streams | ghassan Yammine | John Roesler |
| [KAFKA-8340](https://issues.apache.org/jira/browse/KAFKA-8340) | ServiceLoader fails when used from isolated plugin path directory |  Major | KafkaConnect | Chris Egerton | Greg Harris |
| [KAFKA-8819](https://issues.apache.org/jira/browse/KAFKA-8819) | Plugin path for converters not working as intended |  Major | KafkaConnect | Magesh kumar Nandakumar | Greg Harris |
| [KAFKA-8104](https://issues.apache.org/jira/browse/KAFKA-8104) | Consumer cannot rejoin to the group after rebalancing |  Critical | consumer | Gregory Koshelev | Nikolay Izhikov |
| [KAFKA-7263](https://issues.apache.org/jira/browse/KAFKA-7263) | Container exception java.lang.IllegalStateException: Coordinator selected invalid assignment protocol: null |  Major | . | laomei |  |
| [KAFKA-8891](https://issues.apache.org/jira/browse/KAFKA-8891) | invalid assignment protocol java.lang.IllegalStateException: Coordinator selected invalid assignment protocol: null |  Major | . | SAIRAM KODURU |  |
| [KAFKA-8950](https://issues.apache.org/jira/browse/KAFKA-8950) | KafkaConsumer stops fetching |  Major | clients | Will James |  |
| [KAFKA-9053](https://issues.apache.org/jira/browse/KAFKA-9053) | AssignmentInfo#encode hardcodes the LATEST\_SUPPORTED\_VERSION |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8962](https://issues.apache.org/jira/browse/KAFKA-8962) | KafkaAdminClient#describeTopics always goes through the controller |  Major | . | Dhruvil Shah |  |
| [KAFKA-8297](https://issues.apache.org/jira/browse/KAFKA-8297) | Kafka Streams ConsumerRecordFactory yields difficult compiler error about generics |  Minor | streams | Michael Drogalis |  |
| [KAFKA-8943](https://issues.apache.org/jira/browse/KAFKA-8943) | Move SecurityProviderCreator to a public package |  Blocker | security | Rajini Sivaram | Manikumar |
| [KAFKA-9084](https://issues.apache.org/jira/browse/KAFKA-9084) | AlterPartitionReassignments should not allow all replicas to be removed |  Blocker | controller | Colin McCabe | Stanislav Kozlovski |
| [KAFKA-9078](https://issues.apache.org/jira/browse/KAFKA-9078) | System Test Failure: ConnectRestApiTest |  Blocker | . | Manikumar | Konstantine Karantasis |
| [KAFKA-9089](https://issues.apache.org/jira/browse/KAFKA-9089) | Reassignment should be resilient to unexpected errors |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8992](https://issues.apache.org/jira/browse/KAFKA-8992) | Don't expose Errors in \`RemoveMemberFromGroupResult\` |  Blocker | . | Jason Gustafson | Boyang Chen |
| [KAFKA-9073](https://issues.apache.org/jira/browse/KAFKA-9073) | Kafka Streams State stuck in rebalancing after one of the StreamThread encounters java.lang.IllegalStateException: No current assignment for partition |  Major | streams | amuthan Ganeshan | Guozhang Wang |
| [KAFKA-8972](https://issues.apache.org/jira/browse/KAFKA-8972) | KafkaConsumer.unsubscribe could leave inconsistent user rebalance callback state |  Blocker | . | Boyang Chen | Boyang Chen |
| [KAFKA-9080](https://issues.apache.org/jira/browse/KAFKA-9080) | System Test Failure: MessageFormatChangeTest.testCompatibilty |  Blocker | . | Manikumar | Tu Tran |
| [KAFKA-9079](https://issues.apache.org/jira/browse/KAFKA-9079) | System Test Failure: TransactionsTest |  Major | . | Manikumar | Jason Gustafson |
| [KAFKA-9140](https://issues.apache.org/jira/browse/KAFKA-9140) | Consumer gets stuck rejoining the group indefinitely |  Blocker | clients, consumer | A. Sophie Blee-Goldman | Guozhang Wang |
| [KAFKA-9150](https://issues.apache.org/jira/browse/KAFKA-9150) | DescribeGroup uses member assignment as metadata |  Blocker | . | Jason Gustafson | David Jacot |
| [KAFKA-9133](https://issues.apache.org/jira/browse/KAFKA-9133) | LogCleaner thread dies with: currentLog cannot be empty on an unexpected exception |  Blocker | log cleaner | Karolis Pocius | Jason Gustafson |
| [KAFKA-9171](https://issues.apache.org/jira/browse/KAFKA-9171) | DelayedFetch completion may throw exception, causing successful produce to be failed |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9175](https://issues.apache.org/jira/browse/KAFKA-9175) | MirrorMaker 2 emits invalid topic partition metrics |  Blocker | KafkaConnect | Mickael Maison | Mickael Maison |
| [KAFKA-9046](https://issues.apache.org/jira/browse/KAFKA-9046) | Connect worker configs require undocumented 'admin.' prefix to configure DLQ for connectors |  Blocker | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9196](https://issues.apache.org/jira/browse/KAFKA-9196) | Records exposed before advancement of high watermark after segment roll |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9200](https://issues.apache.org/jira/browse/KAFKA-9200) | ListOffsetRequest missing error response for v5 |  Minor | . | Lucas Bradstreet | Lucas Bradstreet |
| [KAFKA-9198](https://issues.apache.org/jira/browse/KAFKA-9198) | StopReplica handler should complete pending purgatory operations |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9178](https://issues.apache.org/jira/browse/KAFKA-9178) | restoredPartitions is not cleared until the last restoring task completes |  Blocker | . | Boyang Chen | Boyang Chen |
| [KAFKA-1714](https://issues.apache.org/jira/browse/KAFKA-1714) | more better bootstrapping of the gradle-wrapper.jar |  Major | build | Joe Stein | Grant Henke |
| [KAFKA-9219](https://issues.apache.org/jira/browse/KAFKA-9219) | NullPointerException when polling metrics from Kafka Connect |  Major | KafkaConnect | Mickael Maison | Ning Zhang |
| [KAFKA-9069](https://issues.apache.org/jira/browse/KAFKA-9069) | Flaky Test AdminClientIntegrationTest.testCreatePartitions |  Major | admin, core, unit tests | Matthias J. Sax | huxihx |
| [KAFKA-9244](https://issues.apache.org/jira/browse/KAFKA-9244) | Update of old FK reference on RHS should not trigger join result |  Major | streams | Kin Siu | Matthias J. Sax |
| [KAFKA-9203](https://issues.apache.org/jira/browse/KAFKA-9203) | kafka-client 2.3.1 fails to consume lz4 compressed topic |  Blocker | compression, consumer | David Watzke | Ismael Juma |
| [KAFKA-9231](https://issues.apache.org/jira/browse/KAFKA-9231) | Streams Threads may die from recoverable errors with EOS enabled |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-9258](https://issues.apache.org/jira/browse/KAFKA-9258) | Connect ConnectorStatusMetricsGroup sometimes NPE |  Blocker | KafkaConnect | Cyrus Vafadari | Cyrus Vafadari |
| [KAFKA-9265](https://issues.apache.org/jira/browse/KAFKA-9265) | kafka.log.Log instances are leaking on log delete |  Major | . | Vikas Singh | Vikas Singh |
| [KAFKA-9190](https://issues.apache.org/jira/browse/KAFKA-9190) | Server leaves connections with expired authentication sessions open |  Major | . | Jason Gustafson | Ron Dagostino |
| [KAFKA-9251](https://issues.apache.org/jira/browse/KAFKA-9251) | Describing a non consumer group with the Admin API hangs forever |  Major | . | David Jacot | David Jacot |
| [KAFKA-9184](https://issues.apache.org/jira/browse/KAFKA-9184) | Redundant task creation and periodic rebalances after zombie worker rejoins the group |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9212](https://issues.apache.org/jira/browse/KAFKA-9212) | Keep receiving FENCED\_LEADER\_EPOCH while sending ListOffsetRequest |  Blocker | consumer, offset manager | Yannick | Jason Gustafson |
| [KAFKA-7994](https://issues.apache.org/jira/browse/KAFKA-7994) | Improve Partition-Time for rebalances and restarts |  Major | streams | Matthias J. Sax | Richard Yu |
| [KAFKA-8146](https://issues.apache.org/jira/browse/KAFKA-8146) | WARNING: An illegal reflective access operation has occurred |  Major | clients, core | Abhi |  |
| [KAFKA-9261](https://issues.apache.org/jira/browse/KAFKA-9261) | NPE when updating client metadata |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5972](https://issues.apache.org/jira/browse/KAFKA-5972) | Flatten SMT does not work with null values |  Minor | KafkaConnect | Tomas Zuklys | siva santhalingam |
| [KAFKA-7908](https://issues.apache.org/jira/browse/KAFKA-7908) | retention.ms and message.timestamp.difference.max.ms are tied |  Minor | core | Ciprian Pascu |  |
| [KAFKA-8122](https://issues.apache.org/jira/browse/KAFKA-8122) | Flaky Test EosIntegrationTest#shouldNotViolateEosIfOneTaskFailsWithState |  Major | streams, unit tests | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-7912](https://issues.apache.org/jira/browse/KAFKA-7912) | In-memory key-value store does not support concurrent access |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9000](https://issues.apache.org/jira/browse/KAFKA-9000) | Flaky Test KTableKTableForeignKeyJoinIntegrationTest.doLeftJoinFromRightThenDeleteRightEntity |  Blocker | streams | Bruno Cadonna | John Roesler |
| [KAFKA-9123](https://issues.apache.org/jira/browse/KAFKA-9123) | Add system test with large number of partitions |  Major | system tests | David Arthur | David Arthur |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8331](https://issues.apache.org/jira/browse/KAFKA-8331) | Add system test for enabling static membership on KStream |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8539](https://issues.apache.org/jira/browse/KAFKA-8539) | Add \`group.instance.id\` to Subscription class |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-8390](https://issues.apache.org/jira/browse/KAFKA-8390) | Replace CreateDelegationToken request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-8492](https://issues.apache.org/jira/browse/KAFKA-8492) | Modify ConsumerCoordinator Algorithm with incremental protocol (part 2) |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8221](https://issues.apache.org/jira/browse/KAFKA-8221) | Augment LeaveGroupRequest to batch operation |  Major | consumer | Boyang Chen | Boyang Chen |
| [KAFKA-8704](https://issues.apache.org/jira/browse/KAFKA-8704) | Add PartitionAssignor adapter for backwards compatibility |  Major | clients, streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8599](https://issues.apache.org/jira/browse/KAFKA-8599) | Replace ExpireDelegationToken request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-8493](https://issues.apache.org/jira/browse/KAFKA-8493) | Add PartitionsLost API in RebalanceListener (part 3) |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-4600](https://issues.apache.org/jira/browse/KAFKA-4600) | Consumer proceeds on when ConsumerRebalanceListener fails |  Major | consumer, streams | Braedon Vickers | Guozhang Wang |
| [KAFKA-8598](https://issues.apache.org/jira/browse/KAFKA-8598) | Replace RenewDelegationToken request/response with automated protocol |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-8600](https://issues.apache.org/jira/browse/KAFKA-8600) | Replace DescribeDelegationToken request/response with automated protocol |  Major | . | Mickael Maison | Viktor Somogyi-Vass |
| [KAFKA-8579](https://issues.apache.org/jira/browse/KAFKA-8579) | Expose RocksDB Metrics to JMX |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8760](https://issues.apache.org/jira/browse/KAFKA-8760) | KIP-504: Add new Java Authorizer API |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8866](https://issues.apache.org/jira/browse/KAFKA-8866) | Make Authorizer create/delete exceptions Optional |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8886](https://issues.apache.org/jira/browse/KAFKA-8886) | Make Authorizer create/delete methods asynchronous |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8355](https://issues.apache.org/jira/browse/KAFKA-8355) | Add static membership to Range assignor |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-8848](https://issues.apache.org/jira/browse/KAFKA-8848) | Update system test to use new authorizer |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8471](https://issues.apache.org/jira/browse/KAFKA-8471) | Replace control requests/responses with automated protocol |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-8609](https://issues.apache.org/jira/browse/KAFKA-8609) | Add consumer metrics for rebalances (part 9) |  Major | streams | A. Sophie Blee-Goldman | Guozhang Wang |
| [KAFKA-8887](https://issues.apache.org/jira/browse/KAFKA-8887) | Use purgatory for CreateAcls and DeleteAcls if implementation is async |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8510](https://issues.apache.org/jira/browse/KAFKA-8510) | Update StreamsPartitionAssignor to use the built-in owned partitions to achieve stickiness (part 7) |  Major | streams | Guozhang Wang | A. Sophie Blee-Goldman |
| [KAFKA-8932](https://issues.apache.org/jira/browse/KAFKA-8932) | Add tag for TopicConfigErrorCode in CreateTopics response when KIP-482 is merged |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8942](https://issues.apache.org/jira/browse/KAFKA-8942) | Document RocksDB metrics |  Major | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-4222](https://issues.apache.org/jira/browse/KAFKA-4222) | Flaky Test QueryableStateIntegrationTest.queryOnRebalance |  Major | streams, unit tests | Jason Gustafson | Guozhang Wang |
| [KAFKA-8603](https://issues.apache.org/jira/browse/KAFKA-8603) | Document upgrade path |  Blocker | consumer, streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8496](https://issues.apache.org/jira/browse/KAFKA-8496) | Add system test for compatibility and upgrade path (part 6) |  Major | streams | Guozhang Wang | Bill Bejeck |
| [KAFKA-8902](https://issues.apache.org/jira/browse/KAFKA-8902) | Benchmark cooperative vs eager rebalancing |  Major | streams | A. Sophie Blee-Goldman | John Roesler |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8443](https://issues.apache.org/jira/browse/KAFKA-8443) | Allow broker to select a preferred read replica for consumer |  Minor | . | David Arthur | David Arthur |
| [KAFKA-8765](https://issues.apache.org/jira/browse/KAFKA-8765) | Remove "unstable" annotations |  Blocker | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-9072](https://issues.apache.org/jira/browse/KAFKA-9072) | Add Section to Streams Developer Guide for Topology Naming (KIP-307) |  Major | streams | Bill Bejeck | Bill Bejeck |


