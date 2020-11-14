
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

## Release 2.2.1 - 2019-06-01



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8014](https://issues.apache.org/jira/browse/KAFKA-8014) | Extend Connect integration tests to add and remove workers dynamically |  Major | . | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-8126](https://issues.apache.org/jira/browse/KAFKA-8126) | Flaky Test org.apache.kafka.connect.runtime.WorkerTest.testAddRemoveTask |  Major | KafkaConnect, unit tests | Guozhang Wang |  |
| [KAFKA-6789](https://issues.apache.org/jira/browse/KAFKA-6789) | Add retry logic in AdminClient requests |  Major | admin | Guozhang Wang | Manikumar |
| [KAFKA-8348](https://issues.apache.org/jira/browse/KAFKA-8348) | Document of kafkaStreams improvement |  Minor | documentation, streams | Lifei Chen | Lifei Chen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7974](https://issues.apache.org/jira/browse/KAFKA-7974) | KafkaAdminClient loses worker thread/enters zombie state when initial DNS lookup fails |  Major | admin | Nicholas Parker |  |
| [KAFKA-7939](https://issues.apache.org/jira/browse/KAFKA-7939) | Flaky Test KafkaAdminClientTest#testCreateTopicsRetryBackoff |  Critical | admin, unit tests | Matthias J. Sax |  |
| [KAFKA-8091](https://issues.apache.org/jira/browse/KAFKA-8091) | Flaky test  DynamicBrokerReconfigurationTest#testAddRemoveSaslListener |  Critical | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7976](https://issues.apache.org/jira/browse/KAFKA-7976) | Flaky Test DynamicBrokerReconfigurationTest#testUncleanLeaderElectionEnable |  Critical | core, unit tests | Matthias J. Sax | Rajini Sivaram |
| [KAFKA-7855](https://issues.apache.org/jira/browse/KAFKA-7855) | Kafka Streams Maven Archetype quickstart fails to compile out of the box |  Major | streams | Michael Drogalis | Kristian Aurlien |
| [KAFKA-8114](https://issues.apache.org/jira/browse/KAFKA-8114) | Flaky Test DelegationTokenEndToEndAuthorizationTest#testNoGroupAcl |  Critical | core, unit tests | Matthias J. Sax | Manikumar |
| [KAFKA-8121](https://issues.apache.org/jira/browse/KAFKA-8121) | ZooKeeperClient session expiry thread may leave clients behind after close |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8062](https://issues.apache.org/jira/browse/KAFKA-8062) | StateListener is not notified when StreamThread dies |  Minor | streams | Andrey Volkov | Guozhang Wang |
| [KAFKA-7989](https://issues.apache.org/jira/browse/KAFKA-7989) | Flaky Test RequestQuotaTest#testResponseThrottleTimeWhenBothFetchAndRequestQuotasViolated |  Critical | core, unit tests | Matthias J. Sax | Anna Povzner |
| [KAFKA-8142](https://issues.apache.org/jira/browse/KAFKA-8142) | Kafka Streams fails with NPE if record contains null-value in header |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8150](https://issues.apache.org/jira/browse/KAFKA-8150) | Fix bugs in handling null arrays in generated RPC code |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-5141](https://issues.apache.org/jira/browse/KAFKA-5141) | WorkerTest.testCleanupTasksOnStop transient failure due to NPE |  Critical | KafkaConnect, unit tests | Ewen Cheslack-Postava |  |
| [KAFKA-8063](https://issues.apache.org/jira/browse/KAFKA-8063) | Flaky Test WorkerTest#testConverterOverrides |  Critical | KafkaConnect, unit tests | Matthias J. Sax |  |
| [KAFKA-8190](https://issues.apache.org/jira/browse/KAFKA-8190) | Keystore update without file change doesn't update SSLContext |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8058](https://issues.apache.org/jira/browse/KAFKA-8058) | ConnectRestExtensionContext does not return list of connectors from its ConnectClusterState |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8157](https://issues.apache.org/jira/browse/KAFKA-8157) | Missing "key.serializer" exception when setting "segment index bytes" |  Major | streams | Cristian D | Guozhang Wang |
| [KAFKA-8232](https://issues.apache.org/jira/browse/KAFKA-8232) | Flaky test kafka.admin.TopicCommandWithAdminClientTest.testTopicDeletion |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-8241](https://issues.apache.org/jira/browse/KAFKA-8241) | Dynamic update of keystore fails on listener without truststore |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7866](https://issues.apache.org/jira/browse/KAFKA-7866) | Duplicate offsets after transaction index append failure |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-7895](https://issues.apache.org/jira/browse/KAFKA-7895) | Ktable supress operator emitting more than one record for the same key per window |  Blocker | streams | prasanthi | John Roesler |
| [KAFKA-8277](https://issues.apache.org/jira/browse/KAFKA-8277) | Fix NPE in ConnectHeaders |  Major | KafkaConnect | Randall Hauch |  |
| [KAFKA-8204](https://issues.apache.org/jira/browse/KAFKA-8204) | Streams may flush state stores in the incorrect order |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-8227](https://issues.apache.org/jira/browse/KAFKA-8227) | Missing Links in Duality of Streams and Tables section |  Minor | documentation, streams | Bill Bejeck | Victoria Bialas |
| [KAFKA-8254](https://issues.apache.org/jira/browse/KAFKA-8254) | Suppress incorrectly passes a null topic to the serdes |  Major | streams | John Roesler | John Roesler |
| [KAFKA-8134](https://issues.apache.org/jira/browse/KAFKA-8134) | ProducerConfig.LINGER\_MS\_CONFIG undocumented breaking change in kafka-clients 2.1 |  Major | clients | Sam Lendle | Dhruvil Shah |
| [KAFKA-8298](https://issues.apache.org/jira/browse/KAFKA-8298) | ConcurrentModificationException Possible when optimizing for repartition nodes |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-8066](https://issues.apache.org/jira/browse/KAFKA-8066) | ReplicaFetcherThread fails to startup because of failing to register the metric. |  Major | . | Zhanxiang (Patrick) Huang | Zhanxiang (Patrick) Huang |
| [KAFKA-8248](https://issues.apache.org/jira/browse/KAFKA-8248) | Producer may fail IllegalStateException |  Major | producer | Matthias J. Sax | Jason Gustafson |
| [KAFKA-7601](https://issues.apache.org/jira/browse/KAFKA-7601) | Handle message format downgrades during upgrade of message format version |  Major | . | Jason Gustafson |  |
| [KAFKA-7946](https://issues.apache.org/jira/browse/KAFKA-7946) | Flaky Test DeleteConsumerGroupsTest#testDeleteNonEmptyGroup |  Critical | admin, unit tests | Matthias J. Sax | Gwen Shapira |
| [KAFKA-8323](https://issues.apache.org/jira/browse/KAFKA-8323) | Memory leak of BloomFilter Rocks object |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8289](https://issues.apache.org/jira/browse/KAFKA-8289) | KTable\<Windowed\<String\>, Long\>  can't be suppressed |  Blocker | streams | Xiaolin Jia | John Roesler |
| [KAFKA-8306](https://issues.apache.org/jira/browse/KAFKA-8306) | Ensure consistency of checkpointed log start offset and current log end offset |  Major | . | Jason Gustafson | Dhruvil Shah |
| [KAFKA-8304](https://issues.apache.org/jira/browse/KAFKA-8304) | Connect susceptible to deadlock while registering REST extensions |  Blocker | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-8240](https://issues.apache.org/jira/browse/KAFKA-8240) | Source.equals() can fail with NPE |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-8352](https://issues.apache.org/jira/browse/KAFKA-8352) | Connect System Tests are failing with 404 |  Blocker | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-7633](https://issues.apache.org/jira/browse/KAFKA-7633) | Kafka Connect requires permission to create internal topics even if they exist |  Major | KafkaConnect | Arabelle Hou |  |
| [KAFKA-8335](https://issues.apache.org/jira/browse/KAFKA-8335) | Log cleaner skips Transactional mark and batch record, causing unlimited growth of \_\_consumer\_offsets |  Major | . | Boquan Tang | Jason Gustafson |
| [KAFKA-8363](https://issues.apache.org/jira/browse/KAFKA-8363) | Config provider parsing is broken |  Major | . | Chris Egerton | Chris Egerton |
| [KAFKA-8320](https://issues.apache.org/jira/browse/KAFKA-8320) | Connect Error handling is using the RetriableException from common package |  Major | KafkaConnect | Magesh kumar Nandakumar | Magesh kumar Nandakumar |
| [KAFKA-8187](https://issues.apache.org/jira/browse/KAFKA-8187) | State store record loss across multiple reassignments when using standby tasks |  Blocker | streams | William Greer | Lifei Chen |
| [KAFKA-8418](https://issues.apache.org/jira/browse/KAFKA-8418) | Connect System tests are not waiting for REST resources to be registered |  Blocker | KafkaConnect | Oleksandr Diachenko | Oleksandr Diachenko |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8118](https://issues.apache.org/jira/browse/KAFKA-8118) | Ensure that tests close ZooKeeper clients since they can impact subsequent tests |  Major | core | Rajini Sivaram | Rajini Sivaram |


