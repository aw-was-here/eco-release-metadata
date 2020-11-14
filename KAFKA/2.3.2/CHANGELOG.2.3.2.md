
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

## Release 2.3.2 - Unreleased (as of 2020-11-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9156](https://issues.apache.org/jira/browse/KAFKA-9156) | LazyTimeIndex & LazyOffsetIndex may cause niobufferoverflow in concurrent state |  Blocker | core | shilin Lu | Alex Mironov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7052](https://issues.apache.org/jira/browse/KAFKA-7052) | ExtractField SMT throws NPE - needs clearer error message |  Major | KafkaConnect | Robin Moffatt |  |
| [KAFKA-9810](https://issues.apache.org/jira/browse/KAFKA-9810) | Document Connect Root REST API on  / |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9919](https://issues.apache.org/jira/browse/KAFKA-9919) | Add logging to KafkaBasedLog |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9419](https://issues.apache.org/jira/browse/KAFKA-9419) | Integer Overflow Possible with CircularIterator |  Minor | . | David Mollitor |  |
| [KAFKA-9468](https://issues.apache.org/jira/browse/KAFKA-9468) | config.storage.topic partition count issue is hard to debug |  Minor | KafkaConnect | Evelyn Bayes | Randall Hauch |
| [KAFKA-9216](https://issues.apache.org/jira/browse/KAFKA-9216) | Enforce connect internal topic configuration at startup |  Major | KafkaConnect | Randall Hauch | Evelyn Bayes |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8945](https://issues.apache.org/jira/browse/KAFKA-8945) | Incorrect null check in the constructor for ConnectorHealth and AbstractState |  Major | KafkaConnect | Sanjana Kaundinya | Chris Egerton |
| [KAFKA-8947](https://issues.apache.org/jira/browse/KAFKA-8947) | Connect framework incorrectly instantiates TaskStates for REST extensions |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8340](https://issues.apache.org/jira/browse/KAFKA-8340) | ServiceLoader fails when used from isolated plugin path directory |  Major | KafkaConnect | Chris Egerton | Greg Harris |
| [KAFKA-8819](https://issues.apache.org/jira/browse/KAFKA-8819) | Plugin path for converters not working as intended |  Major | KafkaConnect | Magesh kumar Nandakumar | Greg Harris |
| [KAFKA-9073](https://issues.apache.org/jira/browse/KAFKA-9073) | Kafka Streams State stuck in rebalancing after one of the StreamThread encounters java.lang.IllegalStateException: No current assignment for partition |  Major | streams | amuthan Ganeshan | Guozhang Wang |
| [KAFKA-9093](https://issues.apache.org/jira/browse/KAFKA-9093) | NullPointerException in KafkaConsumer with group.instance.id |  Minor | clients | Rolef Heinrich | huxihx |
| [KAFKA-9150](https://issues.apache.org/jira/browse/KAFKA-9150) | DescribeGroup uses member assignment as metadata |  Blocker | . | Jason Gustafson | David Jacot |
| [KAFKA-9133](https://issues.apache.org/jira/browse/KAFKA-9133) | LogCleaner thread dies with: currentLog cannot be empty on an unexpected exception |  Blocker | log cleaner | Karolis Pocius | Jason Gustafson |
| [KAFKA-9046](https://issues.apache.org/jira/browse/KAFKA-9046) | Connect worker configs require undocumented 'admin.' prefix to configure DLQ for connectors |  Blocker | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9200](https://issues.apache.org/jira/browse/KAFKA-9200) | ListOffsetRequest missing error response for v5 |  Minor | . | Lucas Bradstreet | Lucas Bradstreet |
| [KAFKA-1714](https://issues.apache.org/jira/browse/KAFKA-1714) | more better bootstrapping of the gradle-wrapper.jar |  Major | build | Joe Stein | Grant Henke |
| [KAFKA-9223](https://issues.apache.org/jira/browse/KAFKA-9223) | RebalanceSourceConnectorsIntegrationTest disrupting builds with System::exit |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9051](https://issues.apache.org/jira/browse/KAFKA-9051) | Source task source offset reads can block graceful shutdown |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9203](https://issues.apache.org/jira/browse/KAFKA-9203) | kafka-client 2.3.1 fails to consume lz4 compressed topic |  Blocker | compression, consumer | David Watzke | Ismael Juma |
| [KAFKA-9265](https://issues.apache.org/jira/browse/KAFKA-9265) | kafka.log.Log instances are leaking on log delete |  Major | . | Vikas Singh | Vikas Singh |
| [KAFKA-9190](https://issues.apache.org/jira/browse/KAFKA-9190) | Server leaves connections with expired authentication sessions open |  Major | . | Jason Gustafson | Ron Dagostino |
| [KAFKA-9184](https://issues.apache.org/jira/browse/KAFKA-9184) | Redundant task creation and periodic rebalances after zombie worker rejoins the group |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9212](https://issues.apache.org/jira/browse/KAFKA-9212) | Keep receiving FENCED\_LEADER\_EPOCH while sending ListOffsetRequest |  Blocker | consumer, offset manager | Yannick | Jason Gustafson |
| [KAFKA-8705](https://issues.apache.org/jira/browse/KAFKA-8705) | NullPointerException was thrown by topology optimization when two MergeNodes have common KeyChaingingNode |  Major | streams | Hiroshi Nakahara | Bill Bejeck |
| [KAFKA-9307](https://issues.apache.org/jira/browse/KAFKA-9307) | Transaction coordinator could be left in unknown state after ZK session timeout |  Major | core | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-9232](https://issues.apache.org/jira/browse/KAFKA-9232) | Coordinator new member heartbeat completion does not work for JoinGroup v3 |  Major | . | Jason Gustafson | A. Sophie Blee-Goldman |
| [KAFKA-9068](https://issues.apache.org/jira/browse/KAFKA-9068) | Fix incorrect JavaDocs for \`Stores.xxxSessionStore(...)\` |  Minor | streams | Matthias J. Sax | David Kim |
| [KAFKA-9144](https://issues.apache.org/jira/browse/KAFKA-9144) | Early expiration of producer state can cause coordinator epoch to regress |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9083](https://issues.apache.org/jira/browse/KAFKA-9083) | Various parsing issues in Values class |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9024](https://issues.apache.org/jira/browse/KAFKA-9024) | org.apache.kafka.connect.transforms.ValueToKey throws NPE |  Minor | KafkaConnect | Robin Moffatt | Nigel Liang |
| [KAFKA-9143](https://issues.apache.org/jira/browse/KAFKA-9143) | DistributedHerder misleadingly log error on connector task reconfiguration |  Minor | KafkaConnect | Ivan Yurchenko | Ivan Yurchenko |
| [KAFKA-9254](https://issues.apache.org/jira/browse/KAFKA-9254) | Updating Kafka Broker configuration dynamically twice reverts log configuration to default |  Critical | config, log, replication | fenghong | huxihx |
| [KAFKA-8764](https://issues.apache.org/jira/browse/KAFKA-8764) | LogCleanerManager endless loop while compacting/cleaning segments |  Major | log cleaner | Tomislav Rajakovic |  |
| [KAFKA-9074](https://issues.apache.org/jira/browse/KAFKA-9074) | Connect's Values class does not parse time or timestamp values from string literals |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-9261](https://issues.apache.org/jira/browse/KAFKA-9261) | NPE when updating client metadata |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9507](https://issues.apache.org/jira/browse/KAFKA-9507) | AdminClient should check for missing committed offsets |  Major | . | Jason Gustafson | David Mao |
| [KAFKA-9192](https://issues.apache.org/jira/browse/KAFKA-9192) | NullPointerException if field in schema not present in value |  Major | KafkaConnect | Mark Tinsley |  |
| [KAFKA-9204](https://issues.apache.org/jira/browse/KAFKA-9204) | ReplaceField transformation fails when encountering tombstone event |  Major | KafkaConnect | Georgios Kalogiros |  |
| [KAFKA-9535](https://issues.apache.org/jira/browse/KAFKA-9535) | Metadata not updated when consumer encounters FENCED\_LEADER\_EPOCH |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-8025](https://issues.apache.org/jira/browse/KAFKA-8025) | Flaky Test RocksDBGenericOptionsToDbOptionsColumnFamilyOptionsAdapterTest#shouldForwardAllDbOptionsCalls |  Critical | streams, unit tests | Konstantine Karantasis | Matthias J. Sax |
| [KAFKA-9601](https://issues.apache.org/jira/browse/KAFKA-9601) | Workers log raw connector configs, including values |  Critical | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8245](https://issues.apache.org/jira/browse/KAFKA-8245) | Flaky Test DeleteConsumerGroupsTest#testDeleteCmdAllGroups |  Critical | admin, unit tests | Matthias J. Sax | Chia-Ping Tsai |
| [KAFKA-9658](https://issues.apache.org/jira/browse/KAFKA-9658) | Removing default user quota doesn't take effect until broker restart |  Major | . | Anna Povzner | Anna Povzner |
| [KAFKA-9533](https://issues.apache.org/jira/browse/KAFKA-9533) | JavaDocs of KStream#ValueTransform incorrect |  Major | streams | Michael Viamari | Matthias J. Sax |
| [KAFKA-9634](https://issues.apache.org/jira/browse/KAFKA-9634) | ConfigProvider does not document thread safety |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9563](https://issues.apache.org/jira/browse/KAFKA-9563) | Fix Kafka connect consumer and producer override documentation |  Minor | docs, documentation, KafkaConnect | Sayed Mohammad Hossein Torabi |  |
| [KAFKA-9749](https://issues.apache.org/jira/browse/KAFKA-9749) | TransactionMarkerRequestCompletionHandler should treat storage exceptions as retriable |  Major | core | Bob Barrett | Bob Barrett |
| [KAFKA-9752](https://issues.apache.org/jira/browse/KAFKA-9752) | Consumer rebalance can be stuck after new member timeout with old JoinGroup version |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9707](https://issues.apache.org/jira/browse/KAFKA-9707) | InsertField.Key transformation should apply to tombstone records |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9706](https://issues.apache.org/jira/browse/KAFKA-9706) | Flatten transformation fails when encountering tombstone event |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9739](https://issues.apache.org/jira/browse/KAFKA-9739) | StreamsBuilder.build fails with StreamsException "Found a null keyChangingChild node for OptimizableRepartitionNode" |  Major | streams | Artur Poliachenko | Bill Bejeck |
| [KAFKA-9830](https://issues.apache.org/jira/browse/KAFKA-9830) | DeadLetterQueueReporter leaks KafkaProducer instance |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9633](https://issues.apache.org/jira/browse/KAFKA-9633) | ConfigProvider.close() not called |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9955](https://issues.apache.org/jira/browse/KAFKA-9955) | Exceptions thrown from SinkTask::close shadow other exceptions |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-8869](https://issues.apache.org/jira/browse/KAFKA-8869) | Map taskConfigs in KafkaConfigBackingStore grows monotonically despite of task removals |  Major | KafkaConnect | Konstantine Karantasis | Chris Egerton |
| [KAFKA-9888](https://issues.apache.org/jira/browse/KAFKA-9888) | REST extensions can mutate connector configs in worker config state snapshot |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9472](https://issues.apache.org/jira/browse/KAFKA-9472) | Reducing number of tasks for connector causes deleted tasks to show as UNASSIGNED |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10056](https://issues.apache.org/jira/browse/KAFKA-10056) | Consumer metadata may use outdated groupSubscription that doesn't contain newly subscribed topics |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9851](https://issues.apache.org/jira/browse/KAFKA-9851) | Revoking Connect tasks due to connectivity issues should also clear running assignment |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8803](https://issues.apache.org/jira/browse/KAFKA-8803) | Stream will not start due to TimeoutException: Timeout expired after 60000milliseconds while awaiting InitProducerId |  Major | streams | Raman Gupta | Guozhang Wang |
| [KAFKA-9848](https://issues.apache.org/jira/browse/KAFKA-9848) | Avoid triggering scheduled rebalance delay when task assignment fails but Connect workers remain in the group |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9849](https://issues.apache.org/jira/browse/KAFKA-9849) | Fix issue with worker.unsync.backoff.ms creating zombie workers when incremental cooperative rebalancing is used |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9841](https://issues.apache.org/jira/browse/KAFKA-9841) | Connector and Task duplicated when a worker join with old generation assignment |  Major | KafkaConnect | Yu Wang | Yu Wang |
| [KAFKA-9969](https://issues.apache.org/jira/browse/KAFKA-9969) | ConnectorClientConfigRequest is loaded in isolation and throws LinkageError |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-8391](https://issues.apache.org/jira/browse/KAFKA-8391) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testDeleteConnector |  Critical | KafkaConnect | Matthias J. Sax | Randall Hauch |
| [KAFKA-8661](https://issues.apache.org/jira/browse/KAFKA-8661) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testStartTwoConnectors |  Critical | KafkaConnect, unit tests | Matthias J. Sax | Randall Hauch |
| [KAFKA-8672](https://issues.apache.org/jira/browse/KAFKA-8672) | RebalanceSourceConnectorsIntegrationTest#testReconfigConnector |  Critical | KafkaConnect | Matthias J. Sax | Konstantine Karantasis |
| [KAFKA-9763](https://issues.apache.org/jira/browse/KAFKA-9763) | Recent changes to Connect's InsertField will fail to inject field on key of tombstone record |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10224](https://issues.apache.org/jira/browse/KAFKA-10224) | The license term about jersey is not correct |  Critical | core | jaredli2020 | Rens Groothuijsen |
| [KAFKA-10401](https://issues.apache.org/jira/browse/KAFKA-10401) | GroupMetadataManager ignores current\_state\_timestamp field for GROUP\_METADATA\_VALUE\_SCHEMA\_V3 |  Critical | offset manager | Marek | Luke Chen |
| [KAFKA-10477](https://issues.apache.org/jira/browse/KAFKA-10477) | Sink Connector fails with DataException when trying to convert Kafka record with empty key to Connect Record |  Major | KafkaConnect | Shaik Zakir Hussain | Shaik Zakir Hussain |
| [KAFKA-10439](https://issues.apache.org/jira/browse/KAFKA-10439) | Connect's Values class loses precision for integers, larger than 64 bits |  Major | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-10574](https://issues.apache.org/jira/browse/KAFKA-10574) | Infinite loop in SimpleHeaderConverter and Values classes |  Major | KafkaConnect | Chris Egerton | Chris Egerton |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7489](https://issues.apache.org/jira/browse/KAFKA-7489) | ConnectDistributedTest is always running broker with dev version |  Major | KafkaConnect, system tests | Andras Katona | Randall Hauch |
| [KAFKA-10295](https://issues.apache.org/jira/browse/KAFKA-10295) | ConnectDistributedTest.test\_bounce should wait for graceful stop |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10286](https://issues.apache.org/jira/browse/KAFKA-10286) | Connect system tests should wait for workers to join group |  Minor | KafkaConnect | Greg Harris | Greg Harris |


