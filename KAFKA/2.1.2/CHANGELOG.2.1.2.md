
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

## Release 2.1.2 - Unreleased (as of 2020-11-14)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-6290](https://issues.apache.org/jira/browse/KAFKA-6290) | Kafka Connect cast transformation should support logical types |  Major | KafkaConnect | Sudhir Pradhan | Nigel Liang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7834](https://issues.apache.org/jira/browse/KAFKA-7834) | Extend collected logs in system test services to include heap dumps |  Major | system tests | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8040](https://issues.apache.org/jira/browse/KAFKA-8040) | Streams needs to handle timeout in initTransactions |  Critical | streams | John Roesler | John Roesler |
| [KAFKA-8014](https://issues.apache.org/jira/browse/KAFKA-8014) | Extend Connect integration tests to add and remove workers dynamically |  Major | . | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8126](https://issues.apache.org/jira/browse/KAFKA-8126) | Flaky Test org.apache.kafka.connect.runtime.WorkerTest.testAddRemoveTask |  Major | KafkaConnect, unit tests | Guozhang Wang |  |
| [KAFKA-6789](https://issues.apache.org/jira/browse/KAFKA-6789) | Add retry logic in AdminClient requests |  Major | admin | Guozhang Wang | Manikumar |
| [KAFKA-8348](https://issues.apache.org/jira/browse/KAFKA-8348) | Document of kafkaStreams improvement |  Minor | documentation, streams | Lifei Chen | Lifei Chen |
| [KAFKA-8347](https://issues.apache.org/jira/browse/KAFKA-8347) | Choose next record to process by timestamp |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9810](https://issues.apache.org/jira/browse/KAFKA-9810) | Document Connect Root REST API on  / |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7935](https://issues.apache.org/jira/browse/KAFKA-7935) | UNSUPPORTED\_COMPRESSION\_TYPE if ReplicaManager.getLogConfig returns None |  Critical | core | Ismael Juma | Ismael Juma |
| [KAFKA-7920](https://issues.apache.org/jira/browse/KAFKA-7920) | Do not permit zstd use until inter.broker.protocol.version is updated to 2.1 |  Blocker | core | Jason Gustafson | Dongjin Lee |
| [KAFKA-7945](https://issues.apache.org/jira/browse/KAFKA-7945) | ExpiringCredentialRefreshingLogin - timeout value is negative |  Major | . | Denis Ogun | Ron Dagostino |
| [KAFKA-8012](https://issues.apache.org/jira/browse/KAFKA-8012) | NullPointerException while truncating at high watermark can crash replica fetcher thread |  Blocker | core | Colin Hicks | Colin Hicks |
| [KAFKA-7312](https://issues.apache.org/jira/browse/KAFKA-7312) | Transient failure in kafka.api.AdminClientIntegrationTest.testMinimumRequestTimeouts |  Critical | admin, unit tests | Guozhang Wang | Manikumar |
| [KAFKA-8002](https://issues.apache.org/jira/browse/KAFKA-8002) | Replica reassignment to new log dir may not complete if future and current replicas segment files have different base offsets |  Critical | core | Anna Povzner | Bob Barrett |
| [KAFKA-7974](https://issues.apache.org/jira/browse/KAFKA-7974) | KafkaAdminClient loses worker thread/enters zombie state when initial DNS lookup fails |  Major | admin | Nicholas Parker |  |
| [KAFKA-8061](https://issues.apache.org/jira/browse/KAFKA-8061) | Handle concurrent ProducerId reset and call to Sender thread shutdown |  Major | . | Manikumar | Manikumar |
| [KAFKA-8069](https://issues.apache.org/jira/browse/KAFKA-8069) | Committed offsets get cleaned up right after the coordinator loading them back from \_\_consumer\_offsets in broker with old inter-broker protocol version (\< 2.2) |  Blocker | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-8065](https://issues.apache.org/jira/browse/KAFKA-8065) | Forwarding modified timestamps does not reset timestamp correctly |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-7855](https://issues.apache.org/jira/browse/KAFKA-7855) | Kafka Streams Maven Archetype quickstart fails to compile out of the box |  Major | streams | Michael Drogalis | Kristian Aurlien |
| [KAFKA-8142](https://issues.apache.org/jira/browse/KAFKA-8142) | Kafka Streams fails with NPE if record contains null-value in header |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5141](https://issues.apache.org/jira/browse/KAFKA-5141) | WorkerTest.testCleanupTasksOnStop transient failure due to NPE |  Critical | KafkaConnect, unit tests | Ewen Cheslack-Postava |  |
| [KAFKA-8063](https://issues.apache.org/jira/browse/KAFKA-8063) | Flaky Test WorkerTest#testConverterOverrides |  Critical | KafkaConnect, unit tests | Matthias J. Sax |  |
| [KAFKA-8190](https://issues.apache.org/jira/browse/KAFKA-8190) | Keystore update without file change doesn't update SSLContext |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8058](https://issues.apache.org/jira/browse/KAFKA-8058) | ConnectRestExtensionContext does not return list of connectors from its ConnectClusterState |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8241](https://issues.apache.org/jira/browse/KAFKA-8241) | Dynamic update of keystore fails on listener without truststore |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7866](https://issues.apache.org/jira/browse/KAFKA-7866) | Duplicate offsets after transaction index append failure |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-8277](https://issues.apache.org/jira/browse/KAFKA-8277) | Fix NPE in ConnectHeaders |  Major | KafkaConnect | Randall Hauch |  |
| [KAFKA-8227](https://issues.apache.org/jira/browse/KAFKA-8227) | Missing Links in Duality of Streams and Tables section |  Minor | documentation, streams | Bill Bejeck | Victoria Bialas |
| [KAFKA-8254](https://issues.apache.org/jira/browse/KAFKA-8254) | Suppress incorrectly passes a null topic to the serdes |  Major | streams | John Roesler | John Roesler |
| [KAFKA-8134](https://issues.apache.org/jira/browse/KAFKA-8134) | ProducerConfig.LINGER\_MS\_CONFIG undocumented breaking change in kafka-clients 2.1 |  Major | clients | Sam Lendle | Dhruvil Shah |
| [KAFKA-8298](https://issues.apache.org/jira/browse/KAFKA-8298) | ConcurrentModificationException Possible when optimizing for repartition nodes |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-8066](https://issues.apache.org/jira/browse/KAFKA-8066) | ReplicaFetcherThread fails to startup because of failing to register the metric. |  Major | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-7601](https://issues.apache.org/jira/browse/KAFKA-7601) | Handle message format downgrades during upgrade of message format version |  Major | . | Jason Gustafson |  |
| [KAFKA-8289](https://issues.apache.org/jira/browse/KAFKA-8289) | KTable\<Windowed\<String\>, Long\>  can't be suppressed |  Blocker | streams | Xiaolin Jia | John Roesler |
| [KAFKA-8306](https://issues.apache.org/jira/browse/KAFKA-8306) | Ensure consistency of checkpointed log start offset and current log end offset |  Major | . | Jason Gustafson | Dhruvil Shah |
| [KAFKA-8304](https://issues.apache.org/jira/browse/KAFKA-8304) | Connect susceptible to deadlock while registering REST extensions |  Blocker | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8240](https://issues.apache.org/jira/browse/KAFKA-8240) | Source.equals() can fail with NPE |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8352](https://issues.apache.org/jira/browse/KAFKA-8352) | Connect System Tests are failing with 404 |  Blocker | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-7633](https://issues.apache.org/jira/browse/KAFKA-7633) | Kafka Connect requires permission to create internal topics even if they exist |  Major | KafkaConnect | Arabelle Hou |  |
| [KAFKA-8335](https://issues.apache.org/jira/browse/KAFKA-8335) | Log cleaner skips Transactional mark and batch record, causing unlimited growth of \_\_consumer\_offsets |  Major | . | Boquan Tang | Jason Gustafson |
| [KAFKA-8363](https://issues.apache.org/jira/browse/KAFKA-8363) | Config provider parsing is broken |  Major | . | Chris Egerton | Chris Egerton |
| [KAFKA-8290](https://issues.apache.org/jira/browse/KAFKA-8290) | Streams Not Closing Fenced Producer On Task Close |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-8320](https://issues.apache.org/jira/browse/KAFKA-8320) | Connect Error handling is using the RetriableException from common package |  Major | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-8187](https://issues.apache.org/jira/browse/KAFKA-8187) | State store record loss across multiple reassignments when using standby tasks |  Blocker | streams | William Greer | Lifei Chen |
| [KAFKA-8418](https://issues.apache.org/jira/browse/KAFKA-8418) | Connect System tests are not waiting for REST resources to be registered |  Blocker | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |
| [KAFKA-8404](https://issues.apache.org/jira/browse/KAFKA-8404) | Authorization header is not passed in Connect when forwarding REST requests |  Blocker | KafkaConnect | Robert Yokota | Robert Yokota |
| [KAFKA-4893](https://issues.apache.org/jira/browse/KAFKA-4893) | async topic deletion conflicts with max topic length |  Major | log | Onur Karaman | Colin McCabe |
| [KAFKA-8564](https://issues.apache.org/jira/browse/KAFKA-8564) | NullPointerException when loading logs at startup |  Blocker | log | Mickael Maison | Edoardo Comar |
| [KAFKA-8570](https://issues.apache.org/jira/browse/KAFKA-8570) | Downconversion could fail when log contains out of order message formats |  Major | clients | Dhruvil Shah | Dhruvil Shah |
| [KAFKA-8536](https://issues.apache.org/jira/browse/KAFKA-8536) | Error creating ACL Alter Topic in 2.2 |  Critical | security | Alvaro Peris | Manikumar |
| [KAFKA-6605](https://issues.apache.org/jira/browse/KAFKA-6605) | Flatten SMT does not properly handle fields that are null |  Major | KafkaConnect | Randall Hauch | Michal Borowiecki |
| [KAFKA-7157](https://issues.apache.org/jira/browse/KAFKA-7157) | Connect TimestampConverter SMT doesn't handle null values |  Major | KafkaConnect | Randall Hauch | Valeria Vasylieva |
| [KAFKA-8602](https://issues.apache.org/jira/browse/KAFKA-8602) | StreamThread Dies Because Restore Consumer is not Subscribed to Any Topic |  Critical | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-8620](https://issues.apache.org/jira/browse/KAFKA-8620) | Race condition in StreamThread state change |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-8637](https://issues.apache.org/jira/browse/KAFKA-8637) | WriteBatch objects leak off-heap memory |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8615](https://issues.apache.org/jira/browse/KAFKA-8615) | Change to track partition time breaks TimestampExtractor |  Major | streams | Bill Bejeck | A. Sophie Blee-Goldman |
| [KAFKA-8550](https://issues.apache.org/jira/browse/KAFKA-8550) | Connector validation fails with aliased converters |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8774](https://issues.apache.org/jira/browse/KAFKA-8774) | Connect REST API exposes plaintext secrets in tasks endpoint if config value contains additional characters |  Critical | KafkaConnect | Oleksandr Diachenko | Arjun Satish |
| [KAFKA-7941](https://issues.apache.org/jira/browse/KAFKA-7941) | Connect KafkaBasedLog work thread terminates when getting offsets fails because broker is unavailable |  Minor | KafkaConnect | Paul Whalen | Paul Whalen |
| [KAFKA-8586](https://issues.apache.org/jira/browse/KAFKA-8586) | Source task producers silently fail to send records |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8412](https://issues.apache.org/jira/browse/KAFKA-8412) | Still a nullpointer exception thrown on shutdown while flushing before closing producers |  Minor | streams | Sebastiaan | Chris Pettitt |
| [KAFKA-8816](https://issues.apache.org/jira/browse/KAFKA-8816) | RecordCollector offsets updated indirectly by StreamTask |  Major | streams | Chris Pettitt | Chris Pettitt |
| [KAFKA-8861](https://issues.apache.org/jira/browse/KAFKA-8861) | Fix flaky RegexSourceIntegrationTest.testMultipleConsumersCanReadFromPartitionedTopic |  Minor | streams, unit tests | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-8875](https://issues.apache.org/jira/browse/KAFKA-8875) | CreateTopic API should check topic existence before replication factor |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-8523](https://issues.apache.org/jira/browse/KAFKA-8523) | InsertField transformation fails when encountering tombstone event |  Major | KafkaConnect | Gunnar Morling |  |
| [KAFKA-8974](https://issues.apache.org/jira/browse/KAFKA-8974) | Sink Connectors can't handle topic list with whitespaces |  Minor | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-8649](https://issues.apache.org/jira/browse/KAFKA-8649) | Error while rolling update from Kafka Streams 2.0.0 -\> Kafka Streams 2.1.0 |  Critical | streams | Suyash Garg | A. Sophie Blee-Goldman |
| [KAFKA-9014](https://issues.apache.org/jira/browse/KAFKA-9014) | AssertionError thrown by SourceRecordWriteCounter when SourceTask.poll returns an empty list |  Major | KafkaConnect | Richard Wise | Konstantine Karantasis |
| [KAFKA-8945](https://issues.apache.org/jira/browse/KAFKA-8945) | Incorrect null check in the constructor for ConnectorHealth and AbstractState |  Major | KafkaConnect | Sanjana Kaundinya | Chris Egerton |
| [KAFKA-8947](https://issues.apache.org/jira/browse/KAFKA-8947) | Connect framework incorrectly instantiates TaskStates for REST extensions |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8340](https://issues.apache.org/jira/browse/KAFKA-8340) | ServiceLoader fails when used from isolated plugin path directory |  Major | KafkaConnect | Chris Egerton | Greg Harris |
| [KAFKA-8819](https://issues.apache.org/jira/browse/KAFKA-8819) | Plugin path for converters not working as intended |  Major | KafkaConnect | Magesh kumar Nandakumar | Greg Harris |
| [KAFKA-9053](https://issues.apache.org/jira/browse/KAFKA-9053) | AssignmentInfo#encode hardcodes the LATEST\_SUPPORTED\_VERSION |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-1714](https://issues.apache.org/jira/browse/KAFKA-1714) | more better bootstrapping of the gradle-wrapper.jar |  Major | build | Joe Stein | Grant Henke |
| [KAFKA-9051](https://issues.apache.org/jira/browse/KAFKA-9051) | Source task source offset reads can block graceful shutdown |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9232](https://issues.apache.org/jira/browse/KAFKA-9232) | Coordinator new member heartbeat completion does not work for JoinGroup v3 |  Major | . | Jason Gustafson | A. Sophie Blee-Goldman |
| [KAFKA-9254](https://issues.apache.org/jira/browse/KAFKA-9254) | Updating Kafka Broker configuration dynamically twice reverts log configuration to default |  Critical | config, log, replication | fenghong | huxihx |
| [KAFKA-9601](https://issues.apache.org/jira/browse/KAFKA-9601) | Workers log raw connector configs, including values |  Critical | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8245](https://issues.apache.org/jira/browse/KAFKA-8245) | Flaky Test DeleteConsumerGroupsTest#testDeleteCmdAllGroups |  Critical | admin, unit tests | Matthias J. Sax | Chia-Ping Tsai |
| [KAFKA-5972](https://issues.apache.org/jira/browse/KAFKA-5972) | Flatten SMT does not work with null values |  Minor | KafkaConnect | Tomas Zuklys | siva santhalingam |
| [KAFKA-9634](https://issues.apache.org/jira/browse/KAFKA-9634) | ConfigProvider does not document thread safety |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9707](https://issues.apache.org/jira/browse/KAFKA-9707) | InsertField.Key transformation should apply to tombstone records |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9706](https://issues.apache.org/jira/browse/KAFKA-9706) | Flatten transformation fails when encountering tombstone event |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-4912](https://issues.apache.org/jira/browse/KAFKA-4912) | Add check for topic name length |  Minor | streams | Matthias J. Sax | Soumabrata Chakraborty |
| [KAFKA-8011](https://issues.apache.org/jira/browse/KAFKA-8011) | Flaky Test RegexSourceIntegrationTest#testRegexMatchesTopicsAWhenCreated |  Blocker | streams | Bill Bejeck | Matthias J. Sax |
| [KAFKA-9763](https://issues.apache.org/jira/browse/KAFKA-9763) | Recent changes to Connect's InsertField will fail to inject field on key of tombstone record |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10439](https://issues.apache.org/jira/browse/KAFKA-10439) | Connect's Values class loses precision for integers, larger than 64 bits |  Major | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7799](https://issues.apache.org/jira/browse/KAFKA-7799) | Fix flaky test RestServerTest.testCORSEnabled |  Major | KafkaConnect | Jason Gustafson | Jason Gustafson |
| [KAFKA-7489](https://issues.apache.org/jira/browse/KAFKA-7489) | ConnectDistributedTest is always running broker with dev version |  Major | KafkaConnect, system tests | Andras Katona | Randall Hauch |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7651](https://issues.apache.org/jira/browse/KAFKA-7651) | Flaky test SaslSslAdminClientIntegrationTest.testMinimumRequestTimeouts |  Critical | core, unit tests | Dong Lin | Manikumar |


