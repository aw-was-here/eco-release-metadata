
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

## Release 2.5.1 - 2020-08-10



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9919](https://issues.apache.org/jira/browse/KAFKA-9919) | Add logging to KafkaBasedLog |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9127](https://issues.apache.org/jira/browse/KAFKA-9127) | Needless group coordination overhead for GlobalKTables |  Major | streams | Chris Toomey | A. Sophie Blee-Goldman |
| [KAFKA-9419](https://issues.apache.org/jira/browse/KAFKA-9419) | Integer Overflow Possible with CircularIterator |  Minor | . | David Mollitor |  |
| [KAFKA-9987](https://issues.apache.org/jira/browse/KAFKA-9987) | Improve sticky partition assignor algorithm |  Major | clients, consumer | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9468](https://issues.apache.org/jira/browse/KAFKA-9468) | config.storage.topic partition count issue is hard to debug |  Minor | KafkaConnect | Evelyn Bayes | Randall Hauch |
| [KAFKA-8938](https://issues.apache.org/jira/browse/KAFKA-8938) | Connect - Improve Memory Allocations During Struct Validation |  Minor | KafkaConnect | Auston McReynolds |  |
| [KAFKA-9216](https://issues.apache.org/jira/browse/KAFKA-9216) | Enforce connect internal topic configuration at startup |  Major | KafkaConnect | Randall Hauch | Evelyn Bayes |
| [KAFKA-10406](https://issues.apache.org/jira/browse/KAFKA-10406) | Table data doesn't wrap around in fixed-width columns and gets hidden |  Trivial | docs | Sanjay Ravikumar |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9540](https://issues.apache.org/jira/browse/KAFKA-9540) | Application getting "Could not find the standby task 0\_4 while closing it" error |  Minor | streams | Badai Aqrandista | A. Sophie Blee-Goldman |
| [KAFKA-9675](https://issues.apache.org/jira/browse/KAFKA-9675) | RocksDB metrics reported always at zero |  Blocker | streams | Michael Viamari | Bruno Cadonna |
| [KAFKA-9718](https://issues.apache.org/jira/browse/KAFKA-9718) | Don't log passwords for AlterConfigs requests in request logs |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9533](https://issues.apache.org/jira/browse/KAFKA-9533) | JavaDocs of KStream#ValueTransform incorrect |  Major | streams | Michael Viamari | Matthias J. Sax |
| [KAFKA-6647](https://issues.apache.org/jira/browse/KAFKA-6647) | KafkaStreams.cleanUp creates .lock file in directory its trying to clean (Windows OS) |  Minor | streams | George Bloggs | Guozhang Wang |
| [KAFKA-9625](https://issues.apache.org/jira/browse/KAFKA-9625) | Unable to Describe broker configurations that have been set via IncrementalAlterConfigs |  Critical | core | Colin McCabe | Sanjana Kaundinya |
| [KAFKA-9654](https://issues.apache.org/jira/browse/KAFKA-9654) | ReplicaAlterLogDirsThread can't be created again if the previous ReplicaAlterLogDirsThreadmeet encounters leader epoch error |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9739](https://issues.apache.org/jira/browse/KAFKA-9739) | StreamsBuilder.build fails with StreamsException "Found a null keyChangingChild node for OptimizableRepartitionNode" |  Major | streams | Artur Poliachenko | Bill Bejeck |
| [KAFKA-9835](https://issues.apache.org/jira/browse/KAFKA-9835) | Race condition with concurrent write allows reads above high watermark |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9583](https://issues.apache.org/jira/browse/KAFKA-9583) | OffsetsForLeaderEpoch requests are sometimes not sent to the leader of partition |  Minor | clients | Andy Fang |  |
| [KAFKA-9826](https://issues.apache.org/jira/browse/KAFKA-9826) | Log cleaning repeatedly picks same segment with no effect when first dirty offset is past start of active segment |  Major | log cleaner | Steve Rodrigues | Steve Rodrigues |
| [KAFKA-9854](https://issues.apache.org/jira/browse/KAFKA-9854) | Re-authenticating causes mismatched parse of response |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9863](https://issues.apache.org/jira/browse/KAFKA-9863) | update the deprecated --zookeeper option in the documentation into --bootstrap-server |  Major | docs, documentation | Luke Chen | Luke Chen |
| [KAFKA-9883](https://issues.apache.org/jira/browse/KAFKA-9883) | Connect request to restart task can result in IllegalArgumentError: "uriTemplate" parameter is null |  Minor | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-9704](https://issues.apache.org/jira/browse/KAFKA-9704) | z/OS won't let us resize file when mmap |  Major | log | Shuo Zhang | Shuo Zhang |
| [KAFKA-9839](https://issues.apache.org/jira/browse/KAFKA-9839) | IllegalStateException on metadata update when broker learns about its new epoch after the controller |  Critical | controller, core | Anna Povzner | Anna Povzner |
| [KAFKA-9921](https://issues.apache.org/jira/browse/KAFKA-9921) | Caching is not working properly with WindowStateStore when retaining duplicates |  Major | streams | Georgi Petkov | A. Sophie Blee-Goldman |
| [KAFKA-9925](https://issues.apache.org/jira/browse/KAFKA-9925) | Non-key KTable Joining may result in duplicate schema name in confluence schema registry |  Major | streams | Kin Siu | John Roesler |
| [KAFKA-9922](https://issues.apache.org/jira/browse/KAFKA-9922) | Update examples README |  Major | consumer, documentation | jiamei xie | jiamei xie |
| [KAFKA-9830](https://issues.apache.org/jira/browse/KAFKA-9830) | DeadLetterQueueReporter leaks KafkaProducer instance |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9543](https://issues.apache.org/jira/browse/KAFKA-9543) | Consumer offset reset after new segment rolling |  Major | . | Rafał Boniecki |  |
| [KAFKA-9633](https://issues.apache.org/jira/browse/KAFKA-9633) | ConfigProvider.close() not called |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9768](https://issues.apache.org/jira/browse/KAFKA-9768) | rest.advertised.listener configuration is not handled properly by the worker |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9667](https://issues.apache.org/jira/browse/KAFKA-9667) | Connect JSON serde strip trailing zeros |  Major | KafkaConnect | Andy Coates | Andy Coates |
| [KAFKA-9669](https://issues.apache.org/jira/browse/KAFKA-9669) | Kafka 2.4.0 Chokes on Filebeat 5.6 Produced Data |  Major | . | Weichu Liu | Jason Gustafson |
| [KAFKA-9537](https://issues.apache.org/jira/browse/KAFKA-9537) | Abstract transformations in configurations cause unfriendly error message. |  Minor | KafkaConnect | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-9955](https://issues.apache.org/jira/browse/KAFKA-9955) | Exceptions thrown from SinkTask::close shadow other exceptions |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10004](https://issues.apache.org/jira/browse/KAFKA-10004) | ConfigCommand fails to find default broker configs without ZK |  Major | . | Luke Chen | Luke Chen |
| [KAFKA-9992](https://issues.apache.org/jira/browse/KAFKA-9992) | EmbeddedKafkaCluster.deleteTopicAndWait not working with kafka\_2.13 |  Major | packaging, streams | Andras Katona | Andras Katona |
| [KAFKA-8869](https://issues.apache.org/jira/browse/KAFKA-8869) | Map taskConfigs in KafkaConfigBackingStore grows monotonically despite of task removals |  Major | KafkaConnect | Konstantine Karantasis | Chris Egerton |
| [KAFKA-9950](https://issues.apache.org/jira/browse/KAFKA-9950) | MirrorMaker2 sharing of ConfigDef can lead to ConcurrentModificationException |  Major | mirrormaker | Chris Egerton | Chris Egerton |
| [KAFKA-9888](https://issues.apache.org/jira/browse/KAFKA-9888) | REST extensions can mutate connector configs in worker config state snapshot |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9472](https://issues.apache.org/jira/browse/KAFKA-9472) | Reducing number of tasks for connector causes deleted tasks to show as UNASSIGNED |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9298](https://issues.apache.org/jira/browse/KAFKA-9298) | Reuse of a mapped stream causes an Invalid Topology |  Minor | streams | Walker Carlson | Bill Bejeck |
| [KAFKA-9802](https://issues.apache.org/jira/browse/KAFKA-9802) | Fix flaky system test \`TransactionsTest.test\_transactions\` |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-10029](https://issues.apache.org/jira/browse/KAFKA-10029) | Selector.completedReceives should not be modified when channel is closed |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10056](https://issues.apache.org/jira/browse/KAFKA-10056) | Consumer metadata may use outdated groupSubscription that doesn't contain newly subscribed topics |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10030](https://issues.apache.org/jira/browse/KAFKA-10030) | Throw exception while fetching a key from a single partition |  Major | streams | Dima R | Dima R |
| [KAFKA-10066](https://issues.apache.org/jira/browse/KAFKA-10066) | TopologyTestDriver isn't taking record headers into account during de/serialization |  Minor | streams-test-utils | Stefaan Dutry | Matthias J. Sax |
| [KAFKA-9570](https://issues.apache.org/jira/browse/KAFKA-9570) | SSL cannot be configured for Connect in standalone mode |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9851](https://issues.apache.org/jira/browse/KAFKA-9851) | Revoking Connect tasks due to connectivity issues should also clear running assignment |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9724](https://issues.apache.org/jira/browse/KAFKA-9724) | Consumer wrongly ignores fetched records "since it no longer has valid position" |  Major | clients, consumer | Oleg Muravskiy | David Arthur |
| [KAFKA-9848](https://issues.apache.org/jira/browse/KAFKA-9848) | Avoid triggering scheduled rebalance delay when task assignment fails but Connect workers remain in the group |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9849](https://issues.apache.org/jira/browse/KAFKA-9849) | Fix issue with worker.unsync.backoff.ms creating zombie workers when incremental cooperative rebalancing is used |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9985](https://issues.apache.org/jira/browse/KAFKA-9985) | Sink connector consuming DLQ topic may exhaust broker |  Major | . | Mario Molina | Mario Molina |
| [KAFKA-9841](https://issues.apache.org/jira/browse/KAFKA-9841) | Connector and Task duplicated when a worker join with old generation assignment |  Major | KafkaConnect | Yu Wang | Yu Wang |
| [KAFKA-9845](https://issues.apache.org/jira/browse/KAFKA-9845) | plugin.path property does not work with config provider |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9969](https://issues.apache.org/jira/browse/KAFKA-9969) | ConnectorClientConfigRequest is loaded in isolation and throws LinkageError |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-8391](https://issues.apache.org/jira/browse/KAFKA-8391) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testDeleteConnector |  Critical | KafkaConnect | Matthias J. Sax | Randall Hauch |
| [KAFKA-8661](https://issues.apache.org/jira/browse/KAFKA-8661) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testStartTwoConnectors |  Critical | KafkaConnect, unit tests | Matthias J. Sax | Randall Hauch |
| [KAFKA-10049](https://issues.apache.org/jira/browse/KAFKA-10049) | KTable-KTable Foreign Key join throwing Serialization Exception |  Blocker | streams | Amit Chauhan | Adam Bellemare |
| [KAFKA-8672](https://issues.apache.org/jira/browse/KAFKA-8672) | RebalanceSourceConnectorsIntegrationTest#testReconfigConnector |  Critical | KafkaConnect | Matthias J. Sax | Konstantine Karantasis |
| [KAFKA-10123](https://issues.apache.org/jira/browse/KAFKA-10123) | Regression resetting offsets in consumer when fetching from old broker |  Blocker | . | Jason Gustafson | David Arthur |
| [KAFKA-9891](https://issues.apache.org/jira/browse/KAFKA-9891) | Invalid state store content after task migration with exactly\_once and standby replicas |  Blocker | streams | Mateusz Jadczyk | Matthias J. Sax |
| [KAFKA-10212](https://issues.apache.org/jira/browse/KAFKA-10212) | Describing a topic with the TopicCommand fails if unauthorised to use ListPartitionReassignments API |  Critical | . | David Jacot | David Jacot |
| [KAFKA-10173](https://issues.apache.org/jira/browse/KAFKA-10173) | BufferUnderflowException during Kafka Streams Upgrade |  Blocker | streams | Karsten Schnitter | John Roesler |
| [KAFKA-10239](https://issues.apache.org/jira/browse/KAFKA-10239) | The groupInstanceId field in DescribeGroup response should be ignorable |  Critical | . | Jason Gustafson | Boyang Chen |
| [KAFKA-10221](https://issues.apache.org/jira/browse/KAFKA-10221) | Backport fix for KAFKA-9603 to 2.5 |  Blocker | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9763](https://issues.apache.org/jira/browse/KAFKA-9763) | Recent changes to Connect's InsertField will fail to inject field on key of tombstone record |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10254](https://issues.apache.org/jira/browse/KAFKA-10254) | 100% cpu usage by kafkaConsumer poll , when broker can't be connect |  Critical | clients | xiaotong.wang |  |
| [KAFKA-9996](https://issues.apache.org/jira/browse/KAFKA-9996) | upgrade zookeeper to 3.5.8 to address security vulnerabilities |  Major | packaging | Emanuele Maccherani | Ismael Juma |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10295](https://issues.apache.org/jira/browse/KAFKA-10295) | ConnectDistributedTest.test\_bounce should wait for graceful stop |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10286](https://issues.apache.org/jira/browse/KAFKA-10286) | Connect system tests should wait for workers to join group |  Minor | KafkaConnect | Greg Harris | Greg Harris |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10185](https://issues.apache.org/jira/browse/KAFKA-10185) | Streams should log summarized restoration information at info level |  Major | streams | John Roesler | John Roesler |


