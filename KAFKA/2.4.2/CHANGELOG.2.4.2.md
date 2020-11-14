
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

## Release 2.4.2 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9810](https://issues.apache.org/jira/browse/KAFKA-9810) | Document Connect Root REST API on  / |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9919](https://issues.apache.org/jira/browse/KAFKA-9919) | Add logging to KafkaBasedLog |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9127](https://issues.apache.org/jira/browse/KAFKA-9127) | Needless group coordination overhead for GlobalKTables |  Major | streams | Chris Toomey | A. Sophie Blee-Goldman |
| [KAFKA-9419](https://issues.apache.org/jira/browse/KAFKA-9419) | Integer Overflow Possible with CircularIterator |  Minor | . | David Mollitor |  |
| [KAFKA-9987](https://issues.apache.org/jira/browse/KAFKA-9987) | Improve sticky partition assignor algorithm |  Major | clients, consumer | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9468](https://issues.apache.org/jira/browse/KAFKA-9468) | config.storage.topic partition count issue is hard to debug |  Minor | KafkaConnect | Evelyn Bayes | Randall Hauch |
| [KAFKA-9216](https://issues.apache.org/jira/browse/KAFKA-9216) | Enforce connect internal topic configuration at startup |  Major | KafkaConnect | Randall Hauch | Evelyn Bayes |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9658](https://issues.apache.org/jira/browse/KAFKA-9658) | Removing default user quota doesn't take effect until broker restart |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-9675](https://issues.apache.org/jira/browse/KAFKA-9675) | RocksDB metrics reported always at zero |  Blocker | streams | Michael Viamari | Bruno Cadonna |
| [KAFKA-9533](https://issues.apache.org/jira/browse/KAFKA-9533) | JavaDocs of KStream#ValueTransform incorrect |  Major | streams | Michael Viamari | Matthias J. Sax |
| [KAFKA-9654](https://issues.apache.org/jira/browse/KAFKA-9654) | ReplicaAlterLogDirsThread can't be created again if the previous ReplicaAlterLogDirsThreadmeet encounters leader epoch error |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-8842](https://issues.apache.org/jira/browse/KAFKA-8842) | Reading/Writing confused in Connect QuickStart Guide |  Trivial | documentation | Franz van Betteraey | Alaa Zbair |
| [KAFKA-9634](https://issues.apache.org/jira/browse/KAFKA-9634) | ConfigProvider does not document thread safety |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9563](https://issues.apache.org/jira/browse/KAFKA-9563) | Fix Kafka connect consumer and producer override documentation |  Minor | docs, documentation, KafkaConnect | Sayed Mohammad Hossein Torabi |  |
| [KAFKA-9749](https://issues.apache.org/jira/browse/KAFKA-9749) | TransactionMarkerRequestCompletionHandler should treat storage exceptions as retriable |  Major | core | Bob Barrett | Bob Barrett |
| [KAFKA-9752](https://issues.apache.org/jira/browse/KAFKA-9752) | Consumer rebalance can be stuck after new member timeout with old JoinGroup version |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9707](https://issues.apache.org/jira/browse/KAFKA-9707) | InsertField.Key transformation should apply to tombstone records |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9706](https://issues.apache.org/jira/browse/KAFKA-9706) | Flatten transformation fails when encountering tombstone event |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9739](https://issues.apache.org/jira/browse/KAFKA-9739) | StreamsBuilder.build fails with StreamsException "Found a null keyChangingChild node for OptimizableRepartitionNode" |  Major | streams | Artur Poliachenko | Bill Bejeck |
| [KAFKA-9807](https://issues.apache.org/jira/browse/KAFKA-9807) | Race condition updating high watermark allows reads above LSO |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9815](https://issues.apache.org/jira/browse/KAFKA-9815) | Consumer may never re-join if inconsistent metadata is received once |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9835](https://issues.apache.org/jira/browse/KAFKA-9835) | Race condition with concurrent write allows reads above high watermark |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9826](https://issues.apache.org/jira/browse/KAFKA-9826) | Log cleaning repeatedly picks same segment with no effect when first dirty offset is past start of active segment |  Major | log cleaner | Steve Rodrigues | Steve Rodrigues |
| [KAFKA-9883](https://issues.apache.org/jira/browse/KAFKA-9883) | Connect request to restart task can result in IllegalArgumentError: "uriTemplate" parameter is null |  Minor | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-9704](https://issues.apache.org/jira/browse/KAFKA-9704) | z/OS won't let us resize file when mmap |  Major | log | Shuo Zhang | Shuo Zhang |
| [KAFKA-9925](https://issues.apache.org/jira/browse/KAFKA-9925) | Non-key KTable Joining may result in duplicate schema name in confluence schema registry |  Major | streams | Kin Siu | John Roesler |
| [KAFKA-9830](https://issues.apache.org/jira/browse/KAFKA-9830) | DeadLetterQueueReporter leaks KafkaProducer instance |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9543](https://issues.apache.org/jira/browse/KAFKA-9543) | Consumer offset reset after new segment rolling |  Major | . | Rafał Boniecki |  |
| [KAFKA-9633](https://issues.apache.org/jira/browse/KAFKA-9633) | ConfigProvider.close() not called |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9768](https://issues.apache.org/jira/browse/KAFKA-9768) | rest.advertised.listener configuration is not handled properly by the worker |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9667](https://issues.apache.org/jira/browse/KAFKA-9667) | Connect JSON serde strip trailing zeros |  Major | KafkaConnect | Andy Coates | Andy Coates |
| [KAFKA-9669](https://issues.apache.org/jira/browse/KAFKA-9669) | Kafka 2.4.0 Chokes on Filebeat 5.6 Produced Data |  Major | . | Weichu Liu | Jason Gustafson |
| [KAFKA-9537](https://issues.apache.org/jira/browse/KAFKA-9537) | Abstract transformations in configurations cause unfriendly error message. |  Minor | KafkaConnect | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-9955](https://issues.apache.org/jira/browse/KAFKA-9955) | Exceptions thrown from SinkTask::close shadow other exceptions |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9992](https://issues.apache.org/jira/browse/KAFKA-9992) | EmbeddedKafkaCluster.deleteTopicAndWait not working with kafka\_2.13 |  Major | packaging, streams | Andras Katona | Andras Katona |
| [KAFKA-8869](https://issues.apache.org/jira/browse/KAFKA-8869) | Map taskConfigs in KafkaConfigBackingStore grows monotonically despite of task removals |  Major | KafkaConnect | Konstantine Karantasis | Chris Egerton |
| [KAFKA-9950](https://issues.apache.org/jira/browse/KAFKA-9950) | MirrorMaker2 sharing of ConfigDef can lead to ConcurrentModificationException |  Major | mirrormaker | Chris Egerton | Chris Egerton |
| [KAFKA-9888](https://issues.apache.org/jira/browse/KAFKA-9888) | REST extensions can mutate connector configs in worker config state snapshot |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9472](https://issues.apache.org/jira/browse/KAFKA-9472) | Reducing number of tasks for connector causes deleted tasks to show as UNASSIGNED |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10056](https://issues.apache.org/jira/browse/KAFKA-10056) | Consumer metadata may use outdated groupSubscription that doesn't contain newly subscribed topics |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9570](https://issues.apache.org/jira/browse/KAFKA-9570) | SSL cannot be configured for Connect in standalone mode |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9851](https://issues.apache.org/jira/browse/KAFKA-9851) | Revoking Connect tasks due to connectivity issues should also clear running assignment |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8803](https://issues.apache.org/jira/browse/KAFKA-8803) | Stream will not start due to TimeoutException: Timeout expired after 60000milliseconds while awaiting InitProducerId |  Major | streams | Raman Gupta | Guozhang Wang |
| [KAFKA-9848](https://issues.apache.org/jira/browse/KAFKA-9848) | Avoid triggering scheduled rebalance delay when task assignment fails but Connect workers remain in the group |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9849](https://issues.apache.org/jira/browse/KAFKA-9849) | Fix issue with worker.unsync.backoff.ms creating zombie workers when incremental cooperative rebalancing is used |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9985](https://issues.apache.org/jira/browse/KAFKA-9985) | Sink connector consuming DLQ topic may exhaust broker |  Major | . | Mario Molina | Mario Molina |
| [KAFKA-9841](https://issues.apache.org/jira/browse/KAFKA-9841) | Connector and Task duplicated when a worker join with old generation assignment |  Major | KafkaConnect | Yu Wang | Yu Wang |
| [KAFKA-9066](https://issues.apache.org/jira/browse/KAFKA-9066) | Kafka Connect JMX : source & sink task metrics missing for tasks in failed state |  Major | KafkaConnect | Mikołaj Stefaniak | Chris Egerton |
| [KAFKA-9845](https://issues.apache.org/jira/browse/KAFKA-9845) | plugin.path property does not work with config provider |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9969](https://issues.apache.org/jira/browse/KAFKA-9969) | ConnectorClientConfigRequest is loaded in isolation and throws LinkageError |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-8391](https://issues.apache.org/jira/browse/KAFKA-8391) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testDeleteConnector |  Critical | KafkaConnect | Matthias J. Sax | Randall Hauch |
| [KAFKA-8661](https://issues.apache.org/jira/browse/KAFKA-8661) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testStartTwoConnectors |  Critical | KafkaConnect, unit tests | Matthias J. Sax | Randall Hauch |
| [KAFKA-8672](https://issues.apache.org/jira/browse/KAFKA-8672) | RebalanceSourceConnectorsIntegrationTest#testReconfigConnector |  Critical | KafkaConnect | Matthias J. Sax | Konstantine Karantasis |
| [KAFKA-10173](https://issues.apache.org/jira/browse/KAFKA-10173) | BufferUnderflowException during Kafka Streams Upgrade |  Blocker | streams | Karsten Schnitter | John Roesler |
| [KAFKA-10239](https://issues.apache.org/jira/browse/KAFKA-10239) | The groupInstanceId field in DescribeGroup response should be ignorable |  Critical | . | Jason Gustafson | Boyang Chen |
| [KAFKA-9763](https://issues.apache.org/jira/browse/KAFKA-9763) | Recent changes to Connect's InsertField will fail to inject field on key of tombstone record |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-9996](https://issues.apache.org/jira/browse/KAFKA-9996) | upgrade zookeeper to 3.5.8 to address security vulnerabilities |  Major | packaging | Emanuele Maccherani | Ismael Juma |
| [KAFKA-10224](https://issues.apache.org/jira/browse/KAFKA-10224) | The license term about jersey is not correct |  Critical | core | jaredli2020 | Rens Groothuijsen |
| [KAFKA-10401](https://issues.apache.org/jira/browse/KAFKA-10401) | GroupMetadataManager ignores current\_state\_timestamp field for GROUP\_METADATA\_VALUE\_SCHEMA\_V3 |  Critical | offset manager | Marek | Luke Chen |
| [KAFKA-10218](https://issues.apache.org/jira/browse/KAFKA-10218) | DistributedHerder's canReadConfigs field is never reset to true |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9584](https://issues.apache.org/jira/browse/KAFKA-9584) | Removing headers causes ConcurrentModificationException |  Minor | streams | Micah Ramos | Micah Ramos |
| [KAFKA-10477](https://issues.apache.org/jira/browse/KAFKA-10477) | Sink Connector fails with DataException when trying to convert Kafka record with empty key to Connect Record |  Major | KafkaConnect | Shaik Zakir Hussain | Shaik Zakir Hussain |
| [KAFKA-10439](https://issues.apache.org/jira/browse/KAFKA-10439) | Connect's Values class loses precision for integers, larger than 64 bits |  Major | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-10574](https://issues.apache.org/jira/browse/KAFKA-10574) | Infinite loop in SimpleHeaderConverter and Values classes |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10426](https://issues.apache.org/jira/browse/KAFKA-10426) | Deadlock in KafkaConfigBackingStore |  Critical | KafkaConnect | Goltseva Taisiia | Goltseva Taisiia |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10295](https://issues.apache.org/jira/browse/KAFKA-10295) | ConnectDistributedTest.test\_bounce should wait for graceful stop |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10286](https://issues.apache.org/jira/browse/KAFKA-10286) | Connect system tests should wait for workers to join group |  Minor | KafkaConnect | Greg Harris | Greg Harris |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9343](https://issues.apache.org/jira/browse/KAFKA-9343) | Add ps command for Kafka and zookeeper process on z/OS. |  Major | tools | Shuo Zhang | Shuo Zhang |
| [KAFKA-10146](https://issues.apache.org/jira/browse/KAFKA-10146) | Backport KAFKA-9066 to 2.5 and 2.4 branches |  Major | KafkaConnect | Randall Hauch | Randall Hauch |


