
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

## Release 0.11.0.1 - Unreleased (as of 2017-08-28)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5485](https://issues.apache.org/jira/browse/KAFKA-5485) | Streams should not suspend tasks twice |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5410](https://issues.apache.org/jira/browse/KAFKA-5410) | Fix taskClass() method name in Connector and flush() signature in SinkTask |  Major | documentation | Paolo Patierno | Paolo Patierno |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5506](https://issues.apache.org/jira/browse/KAFKA-5506) | bin/kafka-consumer-groups.sh failing to query offsets |  Major | consumer | Yousef Amar | Ismael Juma |
| [KAFKA-5484](https://issues.apache.org/jira/browse/KAFKA-5484) | Refactor kafkatest docker support |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5544](https://issues.apache.org/jira/browse/KAFKA-5544) | The LastStableOffsetLag metric should be removed when partition is deleted |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5167](https://issues.apache.org/jira/browse/KAFKA-5167) | streams task gets stuck after re-balance due to LockException |  Major | streams | Narendra Kumar | Matthias J. Sax |
| [KAFKA-5464](https://issues.apache.org/jira/browse/KAFKA-5464) | StreamsKafkaClient should not use StreamsConfig.POLL\_MS\_CONFIG |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5508](https://issues.apache.org/jira/browse/KAFKA-5508) | Documentation for altering topics |  Minor | documentation | Tom Bentley | huxihx |
| [KAFKA-5584](https://issues.apache.org/jira/browse/KAFKA-5584) | Incorrect log size for topics larger than 2 GB |  Critical | log | Gregor Uhlenheuer |  |
| [KAFKA-5600](https://issues.apache.org/jira/browse/KAFKA-5600) | Group loading regression causing stale metadata/offsets cache |  Critical | core | Jan Burkhardt | Jan Burkhardt |
| [KAFKA-5587](https://issues.apache.org/jira/browse/KAFKA-5587) | Processor got uncaught exception: NullPointerException |  Major | core | Dan | Rajini Sivaram |
| [KAFKA-4669](https://issues.apache.org/jira/browse/KAFKA-4669) | KafkaProducer.flush hangs when NetworkClient.handleCompletedReceives throws exception |  Critical | clients | Cheng Ju | Rajini Sivaram |
| [KAFKA-5608](https://issues.apache.org/jira/browse/KAFKA-5608) | System test failure due to timeout starting Jmx tool |  Major | . | Jason Gustafson | Ewen Cheslack-Postava |
| [KAFKA-5556](https://issues.apache.org/jira/browse/KAFKA-5556) | KafkaConsumer.commitSync throws IllegalStateException: Attempt to retrieve exception from future which hasn't failed |  Critical | clients | Damian Guy | Umesh Chaudhary |
| [KAFKA-5610](https://issues.apache.org/jira/browse/KAFKA-5610) | KafkaApis.handleWriteTxnMarkerRequest can return UNSUPPORTED\_FOR\_MESSAGE\_FORMAT error on partition emigration |  Critical | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5623](https://issues.apache.org/jira/browse/KAFKA-5623) | ducktape kafka service: do not assume Service contains num\_nodes |  Major | system tests | Colin P. McCabe |  |
| [KAFKA-5431](https://issues.apache.org/jira/browse/KAFKA-5431) | LogCleaner stopped due to org.apache.kafka.common.errors.CorruptRecordException |  Major | core | Carsten Rietz | huxihx |
| [KAFKA-5512](https://issues.apache.org/jira/browse/KAFKA-5512) | KafkaConsumer: High memory allocation rate when idle |  Major | consumer | Stephane Roset |  |
| [KAFKA-5634](https://issues.apache.org/jira/browse/KAFKA-5634) | Replica fetcher thread crashes due to OffsetOutOfRangeException |  Critical | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5630](https://issues.apache.org/jira/browse/KAFKA-5630) | Consumer poll loop over the same record after a CorruptRecordException |  Critical | consumer | Vincent Maurin | Jiangjie Qin |
| [KAFKA-5643](https://issues.apache.org/jira/browse/KAFKA-5643) | Using \_DUCKTAPE\_OPTIONS has no effect on executing tests |  Major | system tests | Paolo Patierno | Paolo Patierno |
| [KAFKA-5700](https://issues.apache.org/jira/browse/KAFKA-5700) | producer missed header information when splitting batches |  Critical | producer | huxihx | huxihx |
| [KAFKA-5658](https://issues.apache.org/jira/browse/KAFKA-5658) | Fix AdminClient request timeout handling bug resulting in continual BrokerNotAvailableExceptions |  Critical | . | dan norwood | Colin P. McCabe |
| [KAFKA-5704](https://issues.apache.org/jira/browse/KAFKA-5704) | Auto topic creation causes failure with older clusters |  Major | KafkaConnect | Ewen Cheslack-Postava | Randall Hauch |
| [KAFKA-5717](https://issues.apache.org/jira/browse/KAFKA-5717) | [streams] 'null' values in state stores |  Major | streams | Bart Vercammen | Damian Guy |
| [KAFKA-5731](https://issues.apache.org/jira/browse/KAFKA-5731) | Connect WorkerSinkTask out of order offset commit can lead to inconsistent state |  Major | KafkaConnect | Jason Gustafson | Randall Hauch |
| [KAFKA-5611](https://issues.apache.org/jira/browse/KAFKA-5611) | One or more consumers in a consumer-group stop consuming after rebalancing |  Major | . | Panos Skianis | Jason Gustafson |
| [KAFKA-5567](https://issues.apache.org/jira/browse/KAFKA-5567) | With transformations that mutate the topic-partition committing offsets should to refer to the original topic-partition |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-5745](https://issues.apache.org/jira/browse/KAFKA-5745) | Partition.makeLeader() should convert HW to OffsetMetadata before becoming the leader |  Major | core | Jun Rao | huxihx |
| [KAFKA-5737](https://issues.apache.org/jira/browse/KAFKA-5737) | KafkaAdminClient thread should be daemon |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5747](https://issues.apache.org/jira/browse/KAFKA-5747) | Broker crashes on startup when trying to parse empty snapshot files |  Major | . | Lukasz Mierzwa | Jason Gustafson |
| [KAFKA-4856](https://issues.apache.org/jira/browse/KAFKA-4856) | Calling KafkaProducer.close() from multiple threads may cause spurious error |  Minor | clients | Xavier Léauté | Manikumar |
| [KAFKA-5752](https://issues.apache.org/jira/browse/KAFKA-5752) | Delete topic and re-create topic immediate will delete the new topic's timeindex |  Critical | . | Pengwei | Manikumar |
| [KAFKA-5152](https://issues.apache.org/jira/browse/KAFKA-5152) | Kafka Streams keeps restoring state after shutdown is initiated during startup |  Blocker | streams | Xavier Léauté | Damian Guy |
| [KAFKA-5417](https://issues.apache.org/jira/browse/KAFKA-5417) | Clients get inconsistent connection states when SASL/SSL connection is marked CONECTED and DISCONNECTED at the same time |  Critical | clients | dongeforever |  |
| [KAFKA-5644](https://issues.apache.org/jira/browse/KAFKA-5644) | Transient test failure: ResetConsumerGroupOffsetTest.testResetOffsetsToZonedDateTime |  Minor | . | Manikumar | Manikumar |
| [KAFKA-5771](https://issues.apache.org/jira/browse/KAFKA-5771) | org.apache.kafka.streams.state.internals.Segments#segments method returns incorrect results when segments were added out of order |  Major | streams | Alexander Radzishevsky | Alexander Radzishevsky |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5742](https://issues.apache.org/jira/browse/KAFKA-5742) | Support passing ZK chroot in system tests |  Major | system tests | Xavier Léauté | Xavier Léauté |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5490](https://issues.apache.org/jira/browse/KAFKA-5490) | Deletion of tombstones during cleaning should consider idempotent message retention |  Critical | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5020](https://issues.apache.org/jira/browse/KAFKA-5020) | Update protocol documentation to mention message format v2 |  Critical | clients, core, producer | Ismael Juma | Apurva Mehta |
| [KAFKA-5522](https://issues.apache.org/jira/browse/KAFKA-5522) | ListOffset should take LSO into account when searching by timestamp |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5727](https://issues.apache.org/jira/browse/KAFKA-5727) | Add the archetype project along with "write applications" web docs. |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5342](https://issues.apache.org/jira/browse/KAFKA-5342) | Distinguish abortable failures in transactional producer |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |


