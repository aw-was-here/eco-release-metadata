
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

## Release 2.6.1 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10122](https://issues.apache.org/jira/browse/KAFKA-10122) | Consumer should allow heartbeat during rebalance as well |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-10309](https://issues.apache.org/jira/browse/KAFKA-10309) | KafkaProducer's sendOffsetsToTransaction should not block infinitively |  Major | clients, streams | Sasaki Toru | Sasaki Toru |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9666](https://issues.apache.org/jira/browse/KAFKA-9666) | Transactional producer Epoch could not be reset |  Critical | . | Boyang Chen | Bob Barrett |
| [KAFKA-10282](https://issues.apache.org/jira/browse/KAFKA-10282) | Log metrics are removed if a log is deleted and re-created quickly enough |  Major | log | Bob Barrett | Bob Barrett |
| [KAFKA-8033](https://issues.apache.org/jira/browse/KAFKA-8033) | Flaky Test PlaintextConsumerTest#testFetchInvalidOffset |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-9516](https://issues.apache.org/jira/browse/KAFKA-9516) | Flaky Test PlaintextProducerSendTest#testNonBlockingProducer |  Critical | core, producer , tools, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-10387](https://issues.apache.org/jira/browse/KAFKA-10387) | Cannot include SMT configs with source connector that uses topic.creation.\* properties |  Critical | KafkaConnect | Arjun Satish | Konstantine Karantasis |
| [KAFKA-10395](https://issues.apache.org/jira/browse/KAFKA-10395) | TopologyTestDriver does not work with dynamic topic routing |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10432](https://issues.apache.org/jira/browse/KAFKA-10432) | LeaderEpochCache is incorrectly recovered on segment recovery for epoch 0 |  Major | . | Lucas Bradstreet |  |
| [KAFKA-10134](https://issues.apache.org/jira/browse/KAFKA-10134) | High CPU issue during rebalance in Kafka consumer after upgrading to 2.5 |  Blocker | clients | Sean Guo | Guozhang Wang |
| [KAFKA-10401](https://issues.apache.org/jira/browse/KAFKA-10401) | GroupMetadataManager ignores current\_state\_timestamp field for GROUP\_METADATA\_VALUE\_SCHEMA\_V3 |  Critical | offset manager | Marek | Luke Chen |
| [KAFKA-10218](https://issues.apache.org/jira/browse/KAFKA-10218) | DistributedHerder's canReadConfigs field is never reset to true |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9584](https://issues.apache.org/jira/browse/KAFKA-9584) | Removing headers causes ConcurrentModificationException |  Minor | streams | Micah Ramos | Micah Ramos |
| [KAFKA-10557](https://issues.apache.org/jira/browse/KAFKA-10557) | Missing docs when describing topic configs including documentation |  Major | . | Mickael Maison | Edoardo Comar |
| [KAFKA-10477](https://issues.apache.org/jira/browse/KAFKA-10477) | Sink Connector fails with DataException when trying to convert Kafka record with empty key to Connect Record |  Major | KafkaConnect | Shaik Zakir Hussain | Shaik Zakir Hussain |
| [KAFKA-10531](https://issues.apache.org/jira/browse/KAFKA-10531) | KafkaBasedLog can sleep for negative values |  Major | core | Vikas Singh | Vikas Singh |
| [KAFKA-10439](https://issues.apache.org/jira/browse/KAFKA-10439) | Connect's Values class loses precision for integers, larger than 64 bits |  Major | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-10188](https://issues.apache.org/jira/browse/KAFKA-10188) | Sink task preCommit method gets called after task is stopped |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10271](https://issues.apache.org/jira/browse/KAFKA-10271) | Performance regression while fetching a key from a single partition |  Major | streams | Dima R | Dima R |
| [KAFKA-10598](https://issues.apache.org/jira/browse/KAFKA-10598) | KafkaStreams reports inappropriate error message for IQ |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10564](https://issues.apache.org/jira/browse/KAFKA-10564) | Continuous logging about deleting obsolete state directories |  Minor | streams | Michael Bingham |  |
| [KAFKA-10574](https://issues.apache.org/jira/browse/KAFKA-10574) | Infinite loop in SimpleHeaderConverter and Values classes |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10340](https://issues.apache.org/jira/browse/KAFKA-10340) | Source connectors should report error when trying to produce records to non-existent topics instead of hanging forever |  Major | KafkaConnect | Arjun Satish | Luke Chen |
| [KAFKA-10602](https://issues.apache.org/jira/browse/KAFKA-10602) | DLQ Reporter throws NPE when reporting from different thread |  Major | . | Lev Zemlyanov | Tom Bentley |
| [KAFKA-10600](https://issues.apache.org/jira/browse/KAFKA-10600) | Connect adds error to property in validation result if connector does not define the property |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10332](https://issues.apache.org/jira/browse/KAFKA-10332) | MirrorMaker2 fails to detect topic if remote topic is created first |  Major | mirrormaker | Mickael Maison | Mickael Maison |
| [KAFKA-10455](https://issues.apache.org/jira/browse/KAFKA-10455) | Probing rebalances are not guaranteed to be triggered by non-leader members |  Blocker | streams | A. Sophie Blee-Goldman | Leah Thomas |
| [KAFKA-8630](https://issues.apache.org/jira/browse/KAFKA-8630) | Unit testing a streams processor with a WindowStore throws a ClassCastException |  Critical | streams-test-utils | Justin Fetherolf | John Roesler |
| [KAFKA-10454](https://issues.apache.org/jira/browse/KAFKA-10454) | Kafka Streams Stuck in infinite REBALANCING loop when stream \<\> table join partitions don't match |  Major | streams | Levani Kokhreidze | Levani Kokhreidze |
| [KAFKA-10515](https://issues.apache.org/jira/browse/KAFKA-10515) | NPE: Foreign key join serde may not be initialized with default serde if application is distributed |  Critical | streams | Thorsten Hake | Thorsten Hake |
| [KAFKA-10426](https://issues.apache.org/jira/browse/KAFKA-10426) | Deadlock in KafkaConfigBackingStore |  Critical | KafkaConnect | Goltseva Taisiia | Goltseva Taisiia |
| [KAFKA-10284](https://issues.apache.org/jira/browse/KAFKA-10284) | Group membership update due to static member rejoin should be persisted |  Critical | consumer | Boyang Chen | feyman |
| [KAFKA-10651](https://issues.apache.org/jira/browse/KAFKA-10651) | Assignor reports offsets from uninitialized task |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10633](https://issues.apache.org/jira/browse/KAFKA-10633) | Constant probing rebalances in Streams 2.6 |  Major | streams | Bradley Peterson |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-10404](https://issues.apache.org/jira/browse/KAFKA-10404) | Flaky Test kafka.api.SaslSslConsumerTest.testCoordinatorFailover |  Major | core, unit tests | Bill Bejeck | Rajini Sivaram |


