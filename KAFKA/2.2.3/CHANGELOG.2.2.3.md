
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

## Release 2.2.3 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7052](https://issues.apache.org/jira/browse/KAFKA-7052) | ExtractField SMT throws NPE - needs clearer error message |  Major | KafkaConnect | Robin Moffatt |  |
| [KAFKA-9810](https://issues.apache.org/jira/browse/KAFKA-9810) | Document Connect Root REST API on  / |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8875](https://issues.apache.org/jira/browse/KAFKA-8875) | CreateTopic API should check topic existence before replication factor |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-1714](https://issues.apache.org/jira/browse/KAFKA-1714) | more better bootstrapping of the gradle-wrapper.jar |  Major | build | Joe Stein | Grant Henke |
| [KAFKA-9051](https://issues.apache.org/jira/browse/KAFKA-9051) | Source task source offset reads can block graceful shutdown |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9190](https://issues.apache.org/jira/browse/KAFKA-9190) | Server leaves connections with expired authentication sessions open |  Major | . | Jason Gustafson | Ron Dagostino |
| [KAFKA-8705](https://issues.apache.org/jira/browse/KAFKA-8705) | NullPointerException was thrown by topology optimization when two MergeNodes have common KeyChaingingNode |  Major | streams | Hiroshi Nakahara | Bill Bejeck |
| [KAFKA-9307](https://issues.apache.org/jira/browse/KAFKA-9307) | Transaction coordinator could be left in unknown state after ZK session timeout |  Major | core | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-9232](https://issues.apache.org/jira/browse/KAFKA-9232) | Coordinator new member heartbeat completion does not work for JoinGroup v3 |  Major | . | Jason Gustafson | A. Sophie Blee-Goldman |
| [KAFKA-9144](https://issues.apache.org/jira/browse/KAFKA-9144) | Early expiration of producer state can cause coordinator epoch to regress |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9083](https://issues.apache.org/jira/browse/KAFKA-9083) | Various parsing issues in Values class |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9024](https://issues.apache.org/jira/browse/KAFKA-9024) | org.apache.kafka.connect.transforms.ValueToKey throws NPE |  Minor | KafkaConnect | Robin Moffatt | Nigel Liang |
| [KAFKA-9143](https://issues.apache.org/jira/browse/KAFKA-9143) | DistributedHerder misleadingly log error on connector task reconfiguration |  Minor | KafkaConnect | Ivan Yurchenko | Ivan Yurchenko |
| [KAFKA-9254](https://issues.apache.org/jira/browse/KAFKA-9254) | Updating Kafka Broker configuration dynamically twice reverts log configuration to default |  Critical | config, log, replication | fenghong | huxihx |
| [KAFKA-8764](https://issues.apache.org/jira/browse/KAFKA-8764) | LogCleanerManager endless loop while compacting/cleaning segments |  Major | log cleaner | Tomislav Rajakovic |  |
| [KAFKA-9192](https://issues.apache.org/jira/browse/KAFKA-9192) | NullPointerException if field in schema not present in value |  Major | KafkaConnect | Mark Tinsley |  |
| [KAFKA-9204](https://issues.apache.org/jira/browse/KAFKA-9204) | ReplaceField transformation fails when encountering tombstone event |  Major | KafkaConnect | Georgios Kalogiros |  |
| [KAFKA-8025](https://issues.apache.org/jira/browse/KAFKA-8025) | Flaky Test RocksDBGenericOptionsToDbOptionsColumnFamilyOptionsAdapterTest#shouldForwardAllDbOptionsCalls |  Critical | streams, unit tests | Konstantine Karantasis | Matthias J. Sax |
| [KAFKA-9601](https://issues.apache.org/jira/browse/KAFKA-9601) | Workers log raw connector configs, including values |  Critical | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8245](https://issues.apache.org/jira/browse/KAFKA-8245) | Flaky Test DeleteConsumerGroupsTest#testDeleteCmdAllGroups |  Critical | admin, unit tests | Matthias J. Sax | Chia-Ping Tsai |
| [KAFKA-9634](https://issues.apache.org/jira/browse/KAFKA-9634) | ConfigProvider does not document thread safety |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9752](https://issues.apache.org/jira/browse/KAFKA-9752) | Consumer rebalance can be stuck after new member timeout with old JoinGroup version |  Blocker | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9707](https://issues.apache.org/jira/browse/KAFKA-9707) | InsertField.Key transformation should apply to tombstone records |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9706](https://issues.apache.org/jira/browse/KAFKA-9706) | Flatten transformation fails when encountering tombstone event |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9739](https://issues.apache.org/jira/browse/KAFKA-9739) | StreamsBuilder.build fails with StreamsException "Found a null keyChangingChild node for OptimizableRepartitionNode" |  Major | streams | Artur Poliachenko | Bill Bejeck |
| [KAFKA-9763](https://issues.apache.org/jira/browse/KAFKA-9763) | Recent changes to Connect's InsertField will fail to inject field on key of tombstone record |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10477](https://issues.apache.org/jira/browse/KAFKA-10477) | Sink Connector fails with DataException when trying to convert Kafka record with empty key to Connect Record |  Major | KafkaConnect | Shaik Zakir Hussain | Shaik Zakir Hussain |
| [KAFKA-10439](https://issues.apache.org/jira/browse/KAFKA-10439) | Connect's Values class loses precision for integers, larger than 64 bits |  Major | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7489](https://issues.apache.org/jira/browse/KAFKA-7489) | ConnectDistributedTest is always running broker with dev version |  Major | KafkaConnect, system tests | Andras Katona | Randall Hauch |


