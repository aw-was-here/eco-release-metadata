
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

## Release 2.5.2 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10309](https://issues.apache.org/jira/browse/KAFKA-10309) | KafkaProducer's sendOffsetsToTransaction should not block infinitively |  Major | clients, streams | Sasaki Toru | Sasaki Toru |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9066](https://issues.apache.org/jira/browse/KAFKA-9066) | Kafka Connect JMX : source & sink task metrics missing for tasks in failed state |  Major | KafkaConnect | Mikołaj Stefaniak | Chris Egerton |
| [KAFKA-10224](https://issues.apache.org/jira/browse/KAFKA-10224) | The license term about jersey is not correct |  Critical | core | jaredli2020 | Rens Groothuijsen |
| [KAFKA-8033](https://issues.apache.org/jira/browse/KAFKA-8033) | Flaky Test PlaintextConsumerTest#testFetchInvalidOffset |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-9516](https://issues.apache.org/jira/browse/KAFKA-9516) | Flaky Test PlaintextProducerSendTest#testNonBlockingProducer |  Critical | core, producer , tools, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-10401](https://issues.apache.org/jira/browse/KAFKA-10401) | GroupMetadataManager ignores current\_state\_timestamp field for GROUP\_METADATA\_VALUE\_SCHEMA\_V3 |  Critical | offset manager | Marek | Luke Chen |
| [KAFKA-10218](https://issues.apache.org/jira/browse/KAFKA-10218) | DistributedHerder's canReadConfigs field is never reset to true |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9584](https://issues.apache.org/jira/browse/KAFKA-9584) | Removing headers causes ConcurrentModificationException |  Minor | streams | Micah Ramos | Micah Ramos |
| [KAFKA-10477](https://issues.apache.org/jira/browse/KAFKA-10477) | Sink Connector fails with DataException when trying to convert Kafka record with empty key to Connect Record |  Major | KafkaConnect | Shaik Zakir Hussain | Shaik Zakir Hussain |
| [KAFKA-10531](https://issues.apache.org/jira/browse/KAFKA-10531) | KafkaBasedLog can sleep for negative values |  Major | core | Vikas Singh | Vikas Singh |
| [KAFKA-10439](https://issues.apache.org/jira/browse/KAFKA-10439) | Connect's Values class loses precision for integers, larger than 64 bits |  Major | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-10188](https://issues.apache.org/jira/browse/KAFKA-10188) | Sink task preCommit method gets called after task is stopped |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10574](https://issues.apache.org/jira/browse/KAFKA-10574) | Infinite loop in SimpleHeaderConverter and Values classes |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10600](https://issues.apache.org/jira/browse/KAFKA-10600) | Connect adds error to property in validation result if connector does not define the property |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10332](https://issues.apache.org/jira/browse/KAFKA-10332) | MirrorMaker2 fails to detect topic if remote topic is created first |  Major | mirrormaker | Mickael Maison | Mickael Maison |
| [KAFKA-10426](https://issues.apache.org/jira/browse/KAFKA-10426) | Deadlock in KafkaConfigBackingStore |  Critical | KafkaConnect | Goltseva Taisiia | Goltseva Taisiia |
| [KAFKA-10284](https://issues.apache.org/jira/browse/KAFKA-10284) | Group membership update due to static member rejoin should be persisted |  Critical | consumer | Boyang Chen | feyman |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10404](https://issues.apache.org/jira/browse/KAFKA-10404) | Flaky Test kafka.api.SaslSslConsumerTest.testCoordinatorFailover |  Major | core, unit tests | Bill Bejeck | Rajini Sivaram |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10146](https://issues.apache.org/jira/browse/KAFKA-10146) | Backport KAFKA-9066 to 2.5 and 2.4 branches |  Major | KafkaConnect | Randall Hauch | Randall Hauch |


