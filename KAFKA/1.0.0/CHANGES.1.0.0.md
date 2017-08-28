
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

## Release 1.0.0 - Unreleased (as of 2017-08-28)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4602](https://issues.apache.org/jira/browse/KAFKA-4602) | KIP-72 Allow putting a bound on memory consumed by Incoming requests |  Major | core | radai rosenblatt | radai rosenblatt |
| [KAFKA-5341](https://issues.apache.org/jira/browse/KAFKA-5341) | Add UnderMinIsrPartitionCount and per-partition UnderMinIsr metrics |  Major | . | Dong Lin | Dong Lin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5439](https://issues.apache.org/jira/browse/KAFKA-5439) | Add checks in integration tests to verify that threads have been shutdown |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5233](https://issues.apache.org/jira/browse/KAFKA-5233) | Changes to punctuate semantics (KIP-138) |  Major | streams | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-5485](https://issues.apache.org/jira/browse/KAFKA-5485) | Streams should not suspend tasks twice |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5542](https://issues.apache.org/jira/browse/KAFKA-5542) | Improve Java doc for LeaderEpochFileCache.endOffsetFor() |  Major | . | Dong Lin | Ben Stopford |
| [KAFKA-5525](https://issues.apache.org/jira/browse/KAFKA-5525) | Streams reset tool should have same console output with or without dry-run |  Minor | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-5557](https://issues.apache.org/jira/browse/KAFKA-5557) | Using a logPrefix inside the StreamPartitionAssignor |  Trivial | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-5384](https://issues.apache.org/jira/browse/KAFKA-5384) | KIP-162: Enable topic deletion by default |  Major | core | Gwen Shapira |  |
| [KAFKA-5410](https://issues.apache.org/jira/browse/KAFKA-5410) | Fix taskClass() method name in Connector and flush() signature in SinkTask |  Major | documentation | Paolo Patierno | Paolo Patierno |
| [KAFKA-5468](https://issues.apache.org/jira/browse/KAFKA-5468) | Change Source offset commit message to info to match Sink behaviour |  Major | . | Stephane Maarek | Stephane Maarek |
| [KAFKA-3741](https://issues.apache.org/jira/browse/KAFKA-3741) | Allow setting of default topic configs via StreamsConfig |  Major | streams | Roger Hoover | Damian Guy |
| [KAFKA-1595](https://issues.apache.org/jira/browse/KAFKA-1595) | Remove deprecated and slower scala JSON parser |  Major | . | Jagbir | Ismael Juma |
| [KAFKA-5549](https://issues.apache.org/jira/browse/KAFKA-5549) | Explain that \`client.id\` is just used as a prefix within Streams |  Trivial | streams | Matthias J. Sax |  |
| [KAFKA-5363](https://issues.apache.org/jira/browse/KAFKA-5363) | Add ability to batch restore and receive restoration stats. |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-5454](https://issues.apache.org/jira/browse/KAFKA-5454) | Add a new Kafka Streams example IoT oriented |  Trivial | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-5096](https://issues.apache.org/jira/browse/KAFKA-5096) | Only log invalid user configs and overwrite with correct one |  Minor | streams | Matthias J. Sax | Mariam John |
| [KAFKA-5461](https://issues.apache.org/jira/browse/KAFKA-5461) | KIP-168: Add GlobalTopicCount metric per cluster |  Major | . | Abhishek Mendhekar | Abhishek Mendhekar |
| [KAFKA-5602](https://issues.apache.org/jira/browse/KAFKA-5602) | Add --custom-ducktape flag to ducker-ak |  Major | system tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5516](https://issues.apache.org/jira/browse/KAFKA-5516) | Formatting verifiable producer/consumer output in a similar fashion |  Trivial | tools | Paolo Patierno | Paolo Patierno |
| [KAFKA-5629](https://issues.apache.org/jira/browse/KAFKA-5629) | Console Consumer overrides auto.offset.reset property when provided on the command line without warning about it. |  Trivial | consumer | Sönke Liebau | Sönke Liebau |
| [KAFKA-5470](https://issues.apache.org/jira/browse/KAFKA-5470) | Replace -XX:+DisableExplicitGC with -XX:+ExplicitGCInvokesConcurrent in kafka-run-class |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-5077](https://issues.apache.org/jira/browse/KAFKA-5077) | Make server start script work against Java 9 |  Minor | . | Xavier Léauté | Xavier Léauté |
| [KAFKA-5744](https://issues.apache.org/jira/browse/KAFKA-5744) | ShellTest: add tests for attempting to run nonexistent program, error return |  Major | unit tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4322](https://issues.apache.org/jira/browse/KAFKA-4322) | StateRestoreCallback begin and end indication |  Minor | streams | Mark Shelton | Mark Shelton |
| [KAFKA-5755](https://issues.apache.org/jira/browse/KAFKA-5755) | Refactor Producer to use LogContext |  Major | producer | Jason Gustafson | huxihx |
| [KAFKA-4380](https://issues.apache.org/jira/browse/KAFKA-4380) | Update the usage description of clean shutdown file. |  Trivial | log | holdenk | holdenk |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5412](https://issues.apache.org/jira/browse/KAFKA-5412) | Using connect-console-sink/source.properties raises an exception related to "file" property not found |  Major | KafkaConnect | Paolo Patierno | Paolo Patierno |
| [KAFKA-4785](https://issues.apache.org/jira/browse/KAFKA-4785) | Records from internal repartitioning topics should always use RecordMetadataTimestampExtractor |  Major | streams | Matthias J. Sax | Jeyhun Karimov |
| [KAFKA-4913](https://issues.apache.org/jira/browse/KAFKA-4913) | creating a window store with one segment throws division by zero error |  Major | streams | Xavier Léauté | Damian Guy |
| [KAFKA-5487](https://issues.apache.org/jira/browse/KAFKA-5487) | Rolling upgrade test for streams |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-5506](https://issues.apache.org/jira/browse/KAFKA-5506) | bin/kafka-consumer-groups.sh failing to query offsets |  Major | consumer | Yousef Amar | Ismael Juma |
| [KAFKA-5402](https://issues.apache.org/jira/browse/KAFKA-5402) | JmxReporter Fetch metrics for kafka.server should not be created when client quotas are not enabled |  Major | core | Koelli Mungee | Rajini Sivaram |
| [KAFKA-5484](https://issues.apache.org/jira/browse/KAFKA-5484) | Refactor kafkatest docker support |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5544](https://issues.apache.org/jira/browse/KAFKA-5544) | The LastStableOffsetLag metric should be removed when partition is deleted |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5548](https://issues.apache.org/jira/browse/KAFKA-5548) | SchemaBuilder does not validate input. |  Minor | KafkaConnect | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-5469](https://issues.apache.org/jira/browse/KAFKA-5469) | Created state changelog topics not logged correctly |  Major | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-5167](https://issues.apache.org/jira/browse/KAFKA-5167) | streams task gets stuck after re-balance due to LockException |  Major | streams | Narendra Kumar | Matthias J. Sax |
| [KAFKA-5464](https://issues.apache.org/jira/browse/KAFKA-5464) | StreamsKafkaClient should not use StreamsConfig.POLL\_MS\_CONFIG |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5508](https://issues.apache.org/jira/browse/KAFKA-5508) | Documentation for altering topics |  Minor | documentation | Tom Bentley | huxihx |
| [KAFKA-5566](https://issues.apache.org/jira/browse/KAFKA-5566) | Instable test QueryableStateIntegrationTest.shouldAllowToQueryAfterThreadDied |  Major | streams, unit tests | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5127](https://issues.apache.org/jira/browse/KAFKA-5127) | Replace pattern matching with foreach where the case None is unused |  Minor | core | Balint Molnar | Balint Molnar |
| [KAFKA-5579](https://issues.apache.org/jira/browse/KAFKA-5579) | SchemaBuilder.type(Schema.Type) should not allow null. |  Minor | KafkaConnect | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-5600](https://issues.apache.org/jira/browse/KAFKA-5600) | Group loading regression causing stale metadata/offsets cache |  Critical | core | Jan Burkhardt | Jan Burkhardt |
| [KAFKA-5587](https://issues.apache.org/jira/browse/KAFKA-5587) | Processor got uncaught exception: NullPointerException |  Major | core | Dan | Rajini Sivaram |
| [KAFKA-4669](https://issues.apache.org/jira/browse/KAFKA-4669) | KafkaProducer.flush hangs when NetworkClient.handleCompletedReceives throws exception |  Critical | clients | Cheng Ju | Rajini Sivaram |
| [KAFKA-5608](https://issues.apache.org/jira/browse/KAFKA-5608) | System test failure due to timeout starting Jmx tool |  Major | . | Jason Gustafson | Ewen Cheslack-Postava |
| [KAFKA-4830](https://issues.apache.org/jira/browse/KAFKA-4830) | Augment KStream.print() to allow users pass in extra parameters in the printed string |  Major | streams | Guozhang Wang | james chien |
| [KAFKA-5556](https://issues.apache.org/jira/browse/KAFKA-5556) | KafkaConsumer.commitSync throws IllegalStateException: Attempt to retrieve exception from future which hasn't failed |  Critical | clients | Damian Guy | Umesh Chaudhary |
| [KAFKA-5610](https://issues.apache.org/jira/browse/KAFKA-5610) | KafkaApis.handleWriteTxnMarkerRequest can return UNSUPPORTED\_FOR\_MESSAGE\_FORMAT error on partition emigration |  Critical | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5534](https://issues.apache.org/jira/browse/KAFKA-5534) | KafkaConsumer offsetsForTimes should include partitions in result even if no offset could be found |  Major | consumer | Jason Gustafson | Vahid Hashemian |
| [KAFKA-5623](https://issues.apache.org/jira/browse/KAFKA-5623) | ducktape kafka service: do not assume Service contains num\_nodes |  Major | system tests | Colin P. McCabe |  |
| [KAFKA-5431](https://issues.apache.org/jira/browse/KAFKA-5431) | LogCleaner stopped due to org.apache.kafka.common.errors.CorruptRecordException |  Major | core | Carsten Rietz | huxihx |
| [KAFKA-5512](https://issues.apache.org/jira/browse/KAFKA-5512) | KafkaConsumer: High memory allocation rate when idle |  Major | consumer | Stephane Roset |  |
| [KAFKA-5481](https://issues.apache.org/jira/browse/KAFKA-5481) | ListOffsetResponse isn't logged in the right way with trace level enabled |  Major | clients | Paolo Patierno | Paolo Patierno |
| [KAFKA-5630](https://issues.apache.org/jira/browse/KAFKA-5630) | Consumer poll loop over the same record after a CorruptRecordException |  Critical | consumer | Vincent Maurin | Jiangjie Qin |
| [KAFKA-3623](https://issues.apache.org/jira/browse/KAFKA-3623) | Make KStreamTestDriver extending from ExternalResource |  Major | streams | Guozhang Wang | Mariam John |
| [KAFKA-5663](https://issues.apache.org/jira/browse/KAFKA-5663) | LogDirFailureTest system test fails |  Major | . | Apurva Mehta | Dong Lin |
| [KAFKA-5619](https://issues.apache.org/jira/browse/KAFKA-5619) | Make --new-consumer option as deprecated in all tools |  Major | tools | Paolo Patierno | Paolo Patierno |
| [KAFKA-5599](https://issues.apache.org/jira/browse/KAFKA-5599) | ConsoleConsumer : --new-consumer option as deprecated |  Major | tools | Paolo Patierno | Paolo Patierno |
| [KAFKA-5535](https://issues.apache.org/jira/browse/KAFKA-5535) | Transformations - tranformations for value broken on tombstone events |  Major | KafkaConnect | Yelei Wu | Ewen Cheslack-Postava |
| [KAFKA-5643](https://issues.apache.org/jira/browse/KAFKA-5643) | Using \_DUCKTAPE\_OPTIONS has no effect on executing tests |  Major | system tests | Paolo Patierno | Paolo Patierno |
| [KAFKA-5701](https://issues.apache.org/jira/browse/KAFKA-5701) | Unit test shouldTogglePrepareForBulkLoadDuringRestoreCalls fails |  Major | streams | Eno Thereska | Bill Bejeck |
| [KAFKA-5704](https://issues.apache.org/jira/browse/KAFKA-5704) | Auto topic creation causes failure with older clusters |  Major | KafkaConnect | Ewen Cheslack-Postava | Randall Hauch |
| [KAFKA-2360](https://issues.apache.org/jira/browse/KAFKA-2360) | The kafka-consumer-perf-test.sh script help information print useless parameters. |  Minor | tools | Bo Wang | huxihx |
| [KAFKA-5717](https://issues.apache.org/jira/browse/KAFKA-5717) | [streams] 'null' values in state stores |  Major | streams | Bart Vercammen | Damian Guy |
| [KAFKA-5507](https://issues.apache.org/jira/browse/KAFKA-5507) | kafka-run-class.sh doesn't check for empty $CLASSPATH |  Minor | tools | Evgeny Veretennikov | Evgeny Veretennikov |
| [KAFKA-5711](https://issues.apache.org/jira/browse/KAFKA-5711) | Bulk Restore Should Handle Deletes |  Major | streams | Bill Bejeck | Bill Bejeck |
| [KAFKA-5567](https://issues.apache.org/jira/browse/KAFKA-5567) | With transformations that mutate the topic-partition committing offsets should to refer to the original topic-partition |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-5733](https://issues.apache.org/jira/browse/KAFKA-5733) | System tests get exception RocksDBException: db has more levels than options.num\_levels |  Major | streams | Eno Thereska | Bill Bejeck |
| [KAFKA-5730](https://issues.apache.org/jira/browse/KAFKA-5730) | Consumer should ensure consistent ordering between sync and async offset commits |  Major | consumer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5745](https://issues.apache.org/jira/browse/KAFKA-5745) | Partition.makeLeader() should convert HW to OffsetMetadata before becoming the leader |  Major | core | Jun Rao | huxihx |
| [KAFKA-5737](https://issues.apache.org/jira/browse/KAFKA-5737) | KafkaAdminClient thread should be daemon |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5753](https://issues.apache.org/jira/browse/KAFKA-5753) | ShellTest.testRunProgramWithErrorReturn fails on macOS |  Major | . | Jason Gustafson | Ismael Juma |
| [KAFKA-4856](https://issues.apache.org/jira/browse/KAFKA-4856) | Calling KafkaProducer.close() from multiple threads may cause spurious error |  Minor | clients | Xavier Léauté | Manikumar |
| [KAFKA-5752](https://issues.apache.org/jira/browse/KAFKA-5752) | Delete topic and re-create topic immediate will delete the new topic's timeindex |  Critical | . | Pengwei | Manikumar |
| [KAFKA-5152](https://issues.apache.org/jira/browse/KAFKA-5152) | Kafka Streams keeps restoring state after shutdown is initiated during startup |  Blocker | streams | Xavier Léauté | Damian Guy |
| [KAFKA-5239](https://issues.apache.org/jira/browse/KAFKA-5239) | Producer buffer pool allocates memory inside a lock. |  Major | clients | Sean McCauliff | Sean McCauliff |
| [KAFKA-5417](https://issues.apache.org/jira/browse/KAFKA-5417) | Clients get inconsistent connection states when SASL/SSL connection is marked CONECTED and DISCONNECTED at the same time |  Critical | clients | dongeforever |  |
| [KAFKA-5644](https://issues.apache.org/jira/browse/KAFKA-5644) | Transient test failure: ResetConsumerGroupOffsetTest.testResetOffsetsToZonedDateTime |  Minor | . | Manikumar | Manikumar |
| [KAFKA-5595](https://issues.apache.org/jira/browse/KAFKA-5595) | Illegal state in SocketServer; attempt to send with another send in progress |  Major | . | Jason Gustafson | Rajini Sivaram |
| [KAFKA-5771](https://issues.apache.org/jira/browse/KAFKA-5771) | org.apache.kafka.streams.state.internals.Segments#segments method returns incorrect results when segments were added out of order |  Major | streams | Alexander Radzishevsky | Alexander Radzishevsky |
| [KAFKA-5620](https://issues.apache.org/jira/browse/KAFKA-5620) | SerializationException in doSend() masks class cast exception |  Major | . | Jeremy Custenborder | Jeremy Custenborder |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5742](https://issues.apache.org/jira/browse/KAFKA-5742) | Support passing ZK chroot in system tests |  Major | system tests | Xavier Léauté | Xavier Léauté |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5389](https://issues.apache.org/jira/browse/KAFKA-5389) | Replace zkClient.exists method with zkUtils.pathExists |  Major | core | Balint Molnar | Balint Molnar |
| [KAFKA-5314](https://issues.apache.org/jira/browse/KAFKA-5314) | Improve exception handling for state stores |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-5391](https://issues.apache.org/jira/browse/KAFKA-5391) | Replace zkClient.delete\* method with an equivalent zkUtils method |  Major | core | Balint Molnar | Balint Molnar |
| [KAFKA-4661](https://issues.apache.org/jira/browse/KAFKA-4661) | Improve test coverage UsePreviousTimeOnInvalidTimestamp |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4659](https://issues.apache.org/jira/browse/KAFKA-4659) | Improve test coverage of CachingKeyValueStore |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4655](https://issues.apache.org/jira/browse/KAFKA-4655) | Improve test coverage of CompositeReadOnlySessionStore |  Major | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4658](https://issues.apache.org/jira/browse/KAFKA-4658) | Improve test coverage InMemoryKeyValueLoggedStore |  Major | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4656](https://issues.apache.org/jira/browse/KAFKA-4656) | Improve test coverage of CompositeReadOnlyKeyValueStore |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-4653](https://issues.apache.org/jira/browse/KAFKA-4653) | Improve test coverage of RocksDBStore |  Minor | streams | Damian Guy | Jeyhun Karimov |
| [KAFKA-5372](https://issues.apache.org/jira/browse/KAFKA-5372) | Unexpected state transition Dead to PendingShutdown |  Major | streams | Jason Gustafson | Eno Thereska |
| [KAFKA-5157](https://issues.apache.org/jira/browse/KAFKA-5157) | Options for handling corrupt data during deserialization |  Major | streams | Eno Thereska | Eno Thereska |
| [KAFKA-5134](https://issues.apache.org/jira/browse/KAFKA-5134) | Replace zkClient.getChildren method with zkUtils.getChildren |  Major | core | Balint Molnar | Balint Molnar |
| [KAFKA-5501](https://issues.apache.org/jira/browse/KAFKA-5501) | introduce async ZookeeperClient |  Major | . | Onur Karaman | Onur Karaman |
| [KAFKA-4868](https://issues.apache.org/jira/browse/KAFKA-4868) | Optimize RocksDb config for fast recovery/bulk load |  Major | streams | Eno Thereska | Bill Bejeck |
| [KAFKA-5670](https://issues.apache.org/jira/browse/KAFKA-5670) | Add Topology and deprecate TopologyBuilder |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5671](https://issues.apache.org/jira/browse/KAFKA-5671) | Add StreamsBuilder and deprecate KStreamBuilder |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5006](https://issues.apache.org/jira/browse/KAFKA-5006) | KeyValueStore.put may throw exception unrelated to the current put attempt |  Blocker | streams | Xavier Léauté | Guozhang Wang |
| [KAFKA-2959](https://issues.apache.org/jira/browse/KAFKA-2959) | Remove temporary mapping to deserialize functions in RequestChannel |  Major | . | Grant Henke | Jason Gustafson |
| [KAFKA-2507](https://issues.apache.org/jira/browse/KAFKA-2507) | Replace ControlledShutdown{Request,Response} with org.apache.kafka.common.requests equivalent |  Major | . | Ismael Juma | Jason Gustafson |
| [KAFKA-5388](https://issues.apache.org/jira/browse/KAFKA-5388) | Replace zkClient.subscribe\*Changes method with an equivalent zkUtils method |  Major | core | Balint Molnar | Balint Molnar |
| [KAFKA-5727](https://issues.apache.org/jira/browse/KAFKA-5727) | Add the archetype project along with "write applications" web docs. |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5673](https://issues.apache.org/jira/browse/KAFKA-5673) | Refactor KeyValueStore hierarchy so that MeteredKeyValueStore is the outermost store |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-4643](https://issues.apache.org/jira/browse/KAFKA-4643) | Improve test coverage of StreamsKafkaClient |  Major | streams | Damian Guy |  |
| [KAFKA-5689](https://issues.apache.org/jira/browse/KAFKA-5689) | Refactor  WindowStore hierarchy so that Metered Store is the outermost store |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5342](https://issues.apache.org/jira/browse/KAFKA-5342) | Distinguish abortable failures in transactional producer |  Major | clients, core, producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5776](https://issues.apache.org/jira/browse/KAFKA-5776) | Add the Trogdor fault injection daemon |  Major | system tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5749](https://issues.apache.org/jira/browse/KAFKA-5749) | Refactor SessionStore hierarchy |  Major | streams | Damian Guy | Damian Guy |


