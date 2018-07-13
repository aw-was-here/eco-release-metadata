
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

## Release 1.0.0 - 2017-11-01



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-4602](https://issues.apache.org/jira/browse/KAFKA-4602) | KIP-72 Allow putting a bound on memory consumed by Incoming requests |  Major | core | radai rosenblatt | radai rosenblatt |
| [KAFKA-5341](https://issues.apache.org/jira/browse/KAFKA-5341) | Add UnderMinIsrPartitionCount and per-partition UnderMinIsr metrics |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-4819](https://issues.apache.org/jira/browse/KAFKA-4819) | Expose states of active tasks to public API |  Minor | streams | Florian Hussonnois | Florian Hussonnois |
| [KAFKA-5738](https://issues.apache.org/jira/browse/KAFKA-5738) | Add cumulative count attribute for all Kafka rate metrics |  Major | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5854](https://issues.apache.org/jira/browse/KAFKA-5854) | Handle SASL authentication failures as non-retriable exceptions in clients |  Major | clients | Rajini Sivaram | Vahid Hashemian |
| [KAFKA-5746](https://issues.apache.org/jira/browse/KAFKA-5746) | Add new metrics to support health checks |  Major | metrics | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5651](https://issues.apache.org/jira/browse/KAFKA-5651) | KIP-182: Reduce Streams DSL overloads and allow easier use of custom storage engines |  Major | streams | Damian Guy | Damian Guy |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5439](https://issues.apache.org/jira/browse/KAFKA-5439) | Add checks in integration tests to verify that threads have been shutdown |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5233](https://issues.apache.org/jira/browse/KAFKA-5233) | Changes to punctuate semantics (KIP-138) |  Major | streams | Michal Borowiecki | Michal Borowiecki |
| [KAFKA-5485](https://issues.apache.org/jira/browse/KAFKA-5485) | Streams should not suspend tasks twice |  Minor | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5542](https://issues.apache.org/jira/browse/KAFKA-5542) | Improve Java doc for LeaderEpochFileCache.endOffsetFor() |  Major | . | Dong Lin | Ben Stopford |
| [KAFKA-5525](https://issues.apache.org/jira/browse/KAFKA-5525) | Streams reset tool should have same console output with or without dry-run |  Minor | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-5557](https://issues.apache.org/jira/browse/KAFKA-5557) | Using a logPrefix inside the StreamPartitionAssignor |  Trivial | streams | Paolo Patierno | Paolo Patierno |
| [KAFKA-5384](https://issues.apache.org/jira/browse/KAFKA-5384) | KIP-162: Enable topic deletion by default |  Major | core | Gwen Shapira | Gwen Shapira |
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
| [KAFKA-5470](https://issues.apache.org/jira/browse/KAFKA-5470) | Replace -XX:+DisableExplicitGC with -XX:+ExplicitGCInvokesConcurrent in kafka-run-class |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5077](https://issues.apache.org/jira/browse/KAFKA-5077) | Make server start script work against Java 9 |  Minor | . | Xavier Léauté | Xavier Léauté |
| [KAFKA-5744](https://issues.apache.org/jira/browse/KAFKA-5744) | ShellTest: add tests for attempting to run nonexistent program, error return |  Major | unit tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-4322](https://issues.apache.org/jira/browse/KAFKA-4322) | StateRestoreCallback begin and end indication |  Minor | streams | Mark Shelton | Mark Shelton |
| [KAFKA-5755](https://issues.apache.org/jira/browse/KAFKA-5755) | Refactor Producer to use LogContext |  Major | producer | Jason Gustafson | huxihx |
| [KAFKA-4380](https://issues.apache.org/jira/browse/KAFKA-4380) | Update the usage description of clean shutdown file. |  Trivial | log | holdenk | holdenk |
| [KAFKA-5768](https://issues.apache.org/jira/browse/KAFKA-5768) | Upgrade ducktape version to 0.7.1, and use new kill\_java\_processes |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5762](https://issues.apache.org/jira/browse/KAFKA-5762) | Refactor AdminClient to use LogContext |  Major | . | Ismael Juma | Kamal Chandraprakash |
| [KAFKA-5726](https://issues.apache.org/jira/browse/KAFKA-5726) | KafkaConsumer.subscribe() overload that takes just Pattern without ConsumerRebalanceListener |  Minor | consumer | Yeva Byzek | Attila Kreiner |
| [KAFKA-5820](https://issues.apache.org/jira/browse/KAFKA-5820) | Remove unneeded synchronized keyword in StreamThread |  Minor | . | Ted Yu |  |
| [KAFKA-4260](https://issues.apache.org/jira/browse/KAFKA-4260) | Improve documentation of configuration listeners=PLAINTEXT://0.0.0.0:9092 |  Minor | documentation | Michal Turek | Tom Bentley |
| [KAFKA-5763](https://issues.apache.org/jira/browse/KAFKA-5763) | Refactor NetworkClient to use LogContext |  Major | . | Ismael Juma |  |
| [KAFKA-4763](https://issues.apache.org/jira/browse/KAFKA-4763) | Handle disk failure for JBOD (KIP-112) |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5076](https://issues.apache.org/jira/browse/KAFKA-5076) | Remove usage of java.xml.bind.\* classes hidden by default in JDK9 |  Minor | . | Xavier Léauté | Ismael Juma |
| [KAFKA-4501](https://issues.apache.org/jira/browse/KAFKA-4501) | Support Java 9 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5783](https://issues.apache.org/jira/browse/KAFKA-5783) | Implement KafkaPrincipalBuilder interface with support for SASL (KIP-189) |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-5822](https://issues.apache.org/jira/browse/KAFKA-5822) | Consistent logging of topic partitions |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-4764](https://issues.apache.org/jira/browse/KAFKA-4764) | Improve diagnostics for SASL authentication failures |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5754](https://issues.apache.org/jira/browse/KAFKA-5754) | Refactor Streams to use LogContext |  Major | streams | Jason Gustafson | Umesh Chaudhary |
| [KAFKA-5515](https://issues.apache.org/jira/browse/KAFKA-5515) | Consider removing date formatting from Segments class |  Major | streams | Bill Bejeck | Damian Guy |
| [KAFKA-5358](https://issues.apache.org/jira/browse/KAFKA-5358) | Consumer perf tool should count rebalance time separately |  Major | . | Jason Gustafson | huxihx |
| [KAFKA-5657](https://issues.apache.org/jira/browse/KAFKA-5657) | Connect REST API should include the connector type when describing a connector |  Major | KafkaConnect | Randall Hauch | Ted Yu |
| [KAFKA-5856](https://issues.apache.org/jira/browse/KAFKA-5856) | Add AdminClient.createPartitions() |  Major | . | Tom Bentley | Tom Bentley |
| [KAFKA-5947](https://issues.apache.org/jira/browse/KAFKA-5947) | Handle authentication failures from transactional producer and KafkaAdminClient |  Major | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5330](https://issues.apache.org/jira/browse/KAFKA-5330) | Use per-task converters in Connect |  Major | KafkaConnect | Ewen Cheslack-Postava |  |
| [KAFKA-5915](https://issues.apache.org/jira/browse/KAFKA-5915) | Support unmapping of mapped/direct buffers in Java 9 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5920](https://issues.apache.org/jira/browse/KAFKA-5920) | Handle SSL authentication failures as non-retriable exceptions in clients |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5695](https://issues.apache.org/jira/browse/KAFKA-5695) | Test DeleteRecordsRequest in AuthorizerIntegrationTest |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5750](https://issues.apache.org/jira/browse/KAFKA-5750) | Elevate log messages for denials to INFO in SimpleAclAuthorizer class |  Major | security | Phillip Walker | Manikumar |
| [KAFKA-5958](https://issues.apache.org/jira/browse/KAFKA-5958) | User StoreListener not available for global stores |  Major | streams | Matthias J. Sax | Bill Bejeck |
| [KAFKA-5932](https://issues.apache.org/jira/browse/KAFKA-5932) | Avoid call fetchPrevious in FlushListeners |  Major | streams | Guozhang Wang | Bill Bejeck |
| [KAFKA-5985](https://issues.apache.org/jira/browse/KAFKA-5985) | Mention the need to close store iterators |  Major | documentation, streams | Stanislav Chizhov | Bill Bejeck |
| [KAFKA-5495](https://issues.apache.org/jira/browse/KAFKA-5495) | Replace the deprecated 'ConsumerOffsetChecker' in documentation |  Minor | documentation | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-4108](https://issues.apache.org/jira/browse/KAFKA-4108) | Improve DumpLogSegments offsets-decoder output format |  Major | tools | Jason Gustafson | Vahid Hashemian |
| [KAFKA-4416](https://issues.apache.org/jira/browse/KAFKA-4416) | Add a '--group' option to the console consumer |  Minor | . | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-6004](https://issues.apache.org/jira/browse/KAFKA-6004) | Enable custom authentication plugins to return error messages to clients |  Blocker | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-2376](https://issues.apache.org/jira/browse/KAFKA-2376) | Add Kafka Connect metrics |  Blocker | KafkaConnect | Ewen Cheslack-Postava | Randall Hauch |
| [KAFKA-5547](https://issues.apache.org/jira/browse/KAFKA-5547) | Return topic authorization failed if no topic describe access |  Major | . | Jason Gustafson | Manikumar |
| [KAFKA-6025](https://issues.apache.org/jira/browse/KAFKA-6025) | There is something wrong in Kafka Streams document |  Trivial | documentation, streams | laomei | Bill Bejeck |
| [KAFKA-4504](https://issues.apache.org/jira/browse/KAFKA-4504) | Details of retention.bytes property at Topic level are not clear on how they impact partition size |  Major | documentation | Justin Manchester | Manikumar |
| [KAFKA-5743](https://issues.apache.org/jira/browse/KAFKA-5743) | All ducktape services should store their files in subdirectories of /mnt |  Major | system tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6280](https://issues.apache.org/jira/browse/KAFKA-6280) | Allow for additional archive types to be loaded from plugin.path in Connect |  Minor | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |


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
| [KAFKA-5668](https://issues.apache.org/jira/browse/KAFKA-5668) | queryable state window store range scan only returns results from one store |  Major | streams | Xavier Léauté | Damian Guy |
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
| [KAFKA-5787](https://issues.apache.org/jira/browse/KAFKA-5787) | StoreChangeLogReader needs to restore partitions that were added post initialization |  Blocker | streams | Damian Guy | Damian Guy |
| [KAFKA-5603](https://issues.apache.org/jira/browse/KAFKA-5603) | Streams should not abort transaction when closing zombie task |  Critical | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5379](https://issues.apache.org/jira/browse/KAFKA-5379) | ProcessorContext.appConfigs() should return parsed/validated values |  Minor | streams | Tommy Becker | Tommy Becker |
| [KAFKA-5804](https://issues.apache.org/jira/browse/KAFKA-5804) | ChangeLoggingWindowBytesStore needs to retain duplicates when writing to the log |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5797](https://issues.apache.org/jira/browse/KAFKA-5797) | StoreChangelogReader should be resilient to broker-side metadata not available |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-2105](https://issues.apache.org/jira/browse/KAFKA-2105) | NullPointerException in client on MetadataRequest |  Minor | clients | Roger Hoover | Manikumar |
| [KAFKA-5818](https://issues.apache.org/jira/browse/KAFKA-5818) | KafkaStreams state transitions not correct |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4860](https://issues.apache.org/jira/browse/KAFKA-4860) | Kafka batch files does not support path with spaces |  Minor | . | Vladimír Kleštinec |  |
| [KAFKA-5837](https://issues.apache.org/jira/browse/KAFKA-5837) | ReassignPartitionsCommand fails if default throttle/timeout used |  Major | admin | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-3856](https://issues.apache.org/jira/browse/KAFKA-3856) | Cleanup Kafka Streams builder API |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-5756](https://issues.apache.org/jira/browse/KAFKA-5756) | Synchronization issue on flush |  Major | KafkaConnect | Oleg Kuznetsov |  |
| [KAFKA-4585](https://issues.apache.org/jira/browse/KAFKA-4585) | KIP-163: Offset fetch and commit requests use the same permissions |  Major | consumer | Ewen Cheslack-Postava | Vahid Hashemian |
| [KAFKA-5698](https://issues.apache.org/jira/browse/KAFKA-5698) | Sort processor node based on name suffix in TopologyDescription.toString() |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-5656](https://issues.apache.org/jira/browse/KAFKA-5656) | Support bulk attributes request on KafkaMbean where some attributes do not exist |  Minor | clients | Erik Kringen |  |
| [KAFKA-5790](https://issues.apache.org/jira/browse/KAFKA-5790) | SocketServer.processNewResponses should not skip a response if exception is thrown |  Critical | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-5607](https://issues.apache.org/jira/browse/KAFKA-5607) | Improve error handling in SocketServer to reduce illegal states later |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5872](https://issues.apache.org/jira/browse/KAFKA-5872) | Transient failure in SslSelectorTest.testMuteOnOOM |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5908](https://issues.apache.org/jira/browse/KAFKA-5908) | CompositeReadOnlyWindowStore range fetch doesn't return all values when fetching with different start and end times |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5833](https://issues.apache.org/jira/browse/KAFKA-5833) | Reset thread interrupt state in case of InterruptedException |  Major | streams | Ted Yu | Matthias J. Sax |
| [KAFKA-5918](https://issues.apache.org/jira/browse/KAFKA-5918) | Fix minor typos and errors in the Kafka Streams turotial |  Minor | documentation | Jakub Scholz | Jakub Scholz |
| [KAFKA-5735](https://issues.apache.org/jira/browse/KAFKA-5735) | Client-ids are not handled consistently by clients and broker |  Major | clients, core | Rajini Sivaram | Mickael Maison |
| [KAFKA-5956](https://issues.apache.org/jira/browse/KAFKA-5956) | StreamBuilder#table and StreamsBuilder#globalTable should use serdes from Materialized |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5954](https://issues.apache.org/jira/browse/KAFKA-5954) | Failure in Connect system test: ConnectRestApiTest |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5959](https://issues.apache.org/jira/browse/KAFKA-5959) | NPE in NetworkClient |  Blocker | producer | Xavier Léauté | Apurva Mehta |
| [KAFKA-5862](https://issues.apache.org/jira/browse/KAFKA-5862) | Remove ZK dependency from Streams reset tool |  Major | streams, tools | Matthias J. Sax | Bill Bejeck |
| [KAFKA-3356](https://issues.apache.org/jira/browse/KAFKA-3356) | Remove ConsumerOffsetChecker, deprecated in 0.9, in 0.11 |  Blocker | tools | Ashish Singh | Mickael Maison |
| [KAFKA-5960](https://issues.apache.org/jira/browse/KAFKA-5960) | Producer uses unsupported ProduceRequest version against older brokers |  Blocker | producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5865](https://issues.apache.org/jira/browse/KAFKA-5865) | Expiring batches with idempotence enabled could cause data loss. |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5765](https://issues.apache.org/jira/browse/KAFKA-5765) | Move merge() from StreamsBuilder to KStream |  Major | streams | Matthias J. Sax | Richard Yu |
| [KAFKA-5679](https://issues.apache.org/jira/browse/KAFKA-5679) | Add logging to distinguish between internally and externally initiated shutdown of Kafka |  Major | . | Apurva Mehta | Rajini Sivaram |
| [KAFKA-5867](https://issues.apache.org/jira/browse/KAFKA-5867) | Kafka Connect applications should log info message when starting up |  Major | KafkaConnect | Randall Hauch | Konstantine Karantasis |
| [KAFKA-5979](https://issues.apache.org/jira/browse/KAFKA-5979) | kip-120 changed internal streams topic naming |  Blocker | streams | dan norwood | Matthias J. Sax |
| [KAFKA-5976](https://issues.apache.org/jira/browse/KAFKA-5976) | RequestChannel.sendReponse records incorrect size for NetworkSend with TRACE logging |  Major | core | huxihx | huxihx |
| [KAFKA-3986](https://issues.apache.org/jira/browse/KAFKA-3986) | completedReceives can contain closed channels |  Major | network | Ryan P |  |
| [KAFKA-5957](https://issues.apache.org/jira/browse/KAFKA-5957) | Producer IllegalStateException due to second deallocate after aborting a batch |  Critical | producer | Jason Gustafson | Jason Gustafson |
| [KAFKA-5968](https://issues.apache.org/jira/browse/KAFKA-5968) | Remove all broker metrics during shutdown |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-5986](https://issues.apache.org/jira/browse/KAFKA-5986) | Streams State Restoration never completes when logging is disabled |  Critical | . | Damian Guy | Damian Guy |
| [KAFKA-5225](https://issues.apache.org/jira/browse/KAFKA-5225) | StreamsResetter doesn't allow custom Consumer properties |  Major | streams, tools | Dustin Cote | Matthias J. Sax |
| [KAFKA-5758](https://issues.apache.org/jira/browse/KAFKA-5758) | Reassigning a topic's partitions can adversely impact other topics |  Major | core | David van Geest | Ismael Juma |
| [KAFKA-5995](https://issues.apache.org/jira/browse/KAFKA-5995) | Rename AlterReplicaDir to AlterReplicaDirs |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5843](https://issues.apache.org/jira/browse/KAFKA-5843) | Mx4jLoader.maybeLoad should only be executed if kafka\_mx4jenable is set to true |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-6005](https://issues.apache.org/jira/browse/KAFKA-6005) | Reject JoinGroup request from first member with empty protocol type/protocol list |  Minor | . | Manikumar | Manikumar |
| [KAFKA-5864](https://issues.apache.org/jira/browse/KAFKA-5864) | ReplicaFetcherThread should not die due to replica in offline log directory |  Major | . | Dong Lin | Dong Lin |
| [KAFKA-5967](https://issues.apache.org/jira/browse/KAFKA-5967) | Ineffective check of negative value in CompositeReadOnlyKeyValueStore#approximateNumEntries() |  Minor | streams | Ted Yu | siva santhalingam |
| [KAFKA-6008](https://issues.apache.org/jira/browse/KAFKA-6008) | Kafka Connect: Unsanitized workerID causes exception during startup |  Major | KafkaConnect | Jakub Scholz | Jakub Scholz |
| [KAFKA-6010](https://issues.apache.org/jira/browse/KAFKA-6010) | Transient failure: MemoryRecordsBuilderTest.convertToV1WithMixedV0AndV2Data |  Major | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-5980](https://issues.apache.org/jira/browse/KAFKA-5980) | FailOnInvalidTimestamp does not log error |  Major | streams | Michael Rylander | Matthias J. Sax |
| [KAFKA-5767](https://issues.apache.org/jira/browse/KAFKA-5767) | Kafka server should halt if IBP \< 1.0.0 and there is log directory failure |  Critical | . | Dong Lin | Dong Lin |
| [KAFKA-5879](https://issues.apache.org/jira/browse/KAFKA-5879) | Controller should read the latest IsrChangeNotification znodes when handling IsrChangeNotification event |  Critical | . | Dong Lin | Dong Lin |
| [KAFKA-6003](https://issues.apache.org/jira/browse/KAFKA-6003) | Replication Fetcher thread for a partition with no data fails to start |  Blocker | replication | Stanislav Chizhov | Apurva Mehta |
| [KAFKA-6012](https://issues.apache.org/jira/browse/KAFKA-6012) | NoSuchElementException in markErrorMeter during TransactionsBounceTest |  Blocker | . | Ismael Juma | Rajini Sivaram |
| [KAFKA-5989](https://issues.apache.org/jira/browse/KAFKA-5989) | disableLogging() causes partitions to not be consumed |  Blocker | streams | Tuan Nguyen | Damian Guy |
| [KAFKA-5576](https://issues.apache.org/jira/browse/KAFKA-5576) | Support Power platform by updating rocksdb version |  Blocker | streams | Yussuf Shaikh | Yussuf Shaikh |
| [KAFKA-5953](https://issues.apache.org/jira/browse/KAFKA-5953) | Connect classloader isolation may be broken for JDBC drivers |  Critical | KafkaConnect | Jiri Pechanec | Konstantine Karantasis |
| [KAFKA-6015](https://issues.apache.org/jira/browse/KAFKA-6015) | NPE in RecordAccumulator |  Blocker | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5829](https://issues.apache.org/jira/browse/KAFKA-5829) | Speedup broker startup after unclean shutdown by reducing unnecessary snapshot files deletion |  Blocker | . | Dong Lin | Ismael Juma |
| [KAFKA-5774](https://issues.apache.org/jira/browse/KAFKA-5774) | WorkerSinkTask failure exception should include cause |  Major | KafkaConnect | Randall Hauch |  |
| [KAFKA-6030](https://issues.apache.org/jira/browse/KAFKA-6030) | Integer overflow in log cleaner cleanable ratio computation |  Major | . | Jason Gustafson | Xin Li |
| [KAFKA-6026](https://issues.apache.org/jira/browse/KAFKA-6026) | KafkaFuture timeout fails to fire if a narrow race condition is hit |  Blocker | admin | Bart De Vylder |  |
| [KAFKA-6027](https://issues.apache.org/jira/browse/KAFKA-6027) | System test failure: LogDirFailureTest |  Blocker | . | Ismael Juma | Dong Lin |
| [KAFKA-6016](https://issues.apache.org/jira/browse/KAFKA-6016) | Use the idempotent producer in the reassign\_partitions\_test |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-6053](https://issues.apache.org/jira/browse/KAFKA-6053) | NoSuchMethodError when creating ProducerRecord in upgrade system tests |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-6055](https://issues.apache.org/jira/browse/KAFKA-6055) | Running tools on Windows fail due to typo in JVM config |  Blocker | tools | Vahid Hashemian | Vahid Hashemian |
| [KAFKA-6087](https://issues.apache.org/jira/browse/KAFKA-6087) | Scanning plugin.path needs to support relative symlinks |  Blocker | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-5970](https://issues.apache.org/jira/browse/KAFKA-5970) | Deadlock due to locking of DelayedProduce and group |  Blocker | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6093](https://issues.apache.org/jira/browse/KAFKA-6093) | replica dir not deleted after topic deletion |  Blocker | core | Jun Rao | Dong Lin |
| [KAFKA-6042](https://issues.apache.org/jira/browse/KAFKA-6042) | Kafka Request Handler deadlocks and brings down the cluster. |  Blocker | . | Ben Corlett | Rajini Sivaram |
| [KAFKA-6101](https://issues.apache.org/jira/browse/KAFKA-6101) | Reconnecting to broker does not exponentially backoff |  Major | clients | Sean Rohead | Ted Yu |
| [KAFKA-5720](https://issues.apache.org/jira/browse/KAFKA-5720) | In Jenkins, kafka.api.SaslSslAdminClientIntegrationTest failed with org.apache.kafka.common.errors.TimeoutException |  Minor | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-6070](https://issues.apache.org/jira/browse/KAFKA-6070) | ducker-ak: add ipaddress and enum34 dependencies to docker image |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5140](https://issues.apache.org/jira/browse/KAFKA-5140) | Flaky ResetIntegrationTest |  Major | streams, unit tests | Matthias J. Sax | Guozhang Wang |
| [KAFKA-6116](https://issues.apache.org/jira/browse/KAFKA-6116) | Major performance issue due to excessive logging during leader election |  Blocker | controller | Ismael Juma | Onur Karaman |
| [KAFKA-6100](https://issues.apache.org/jira/browse/KAFKA-6100) | Streams quick start crashes Java on Windows |  Major | streams | Vahid Hashemian | Guozhang Wang |
| [KAFKA-6131](https://issues.apache.org/jira/browse/KAFKA-6131) | Transaction markers are sometimes discarded if txns complete concurrently |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-6134](https://issues.apache.org/jira/browse/KAFKA-6134) | High memory usage on controller during partition reassignment |  Critical | controller | Jason Gustafson | Jason Gustafson |
| [KAFKA-6119](https://issues.apache.org/jira/browse/KAFKA-6119) | Silent Data Loss in Kafka011 Transactional Producer |  Blocker | core, producer | Gary Y. | Apurva Mehta |
| [KAFKA-5318](https://issues.apache.org/jira/browse/KAFKA-5318) | Streams state may be misleading |  Major | streams | Joao |  |
| [KAFKA-6334](https://issues.apache.org/jira/browse/KAFKA-6334) | Minor documentation typo |  Trivial | documentation | Andrew Olson | Andrew Olson |
| [KAFKA-6613](https://issues.apache.org/jira/browse/KAFKA-6613) | The controller shouldn't stop partition reassignment after an exception is being thrown |  Major | admin, config, controller, core | chandra kasiraju |  |
| [KAFKA-6792](https://issues.apache.org/jira/browse/KAFKA-6792) | Wrong pointer in the link for stream dsl |  Major | documentation, streams | robin m |  |
| [KAFKA-6815](https://issues.apache.org/jira/browse/KAFKA-6815) | "default.production.exception.handler" default value is not specified correctly in KafkaStream doc |  Minor | documentation | taekyung kim |  |
| [KAFKA-6861](https://issues.apache.org/jira/browse/KAFKA-6861) | Missing ')' in Kafka Streams documentation |  Trivial | documentation, streams | Ravi Raj Singh |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5742](https://issues.apache.org/jira/browse/KAFKA-5742) | Support passing ZK chroot in system tests |  Major | system tests | Xavier Léauté | Xavier Léauté |
| [KAFKA-6104](https://issues.apache.org/jira/browse/KAFKA-6104) | Add unit tests for ClusterConnectionStates |  Trivial | unit tests | Sönke Liebau | Sönke Liebau |


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
| [KAFKA-5806](https://issues.apache.org/jira/browse/KAFKA-5806) | Fix transient unit test failure in trogdor coordinator shutdown |  Major | system tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5823](https://issues.apache.org/jira/browse/KAFKA-5823) | Update Docs |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5597](https://issues.apache.org/jira/browse/KAFKA-5597) | Autogenerate Producer sender metrics |  Major | . | James Cheng | James Cheng |
| [KAFKA-5817](https://issues.apache.org/jira/browse/KAFKA-5817) | Add Serialized class and KStream groupBy and groupByKey overloads |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5819](https://issues.apache.org/jira/browse/KAFKA-5819) | Add Joined class and relevant KStream join overloads |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5816](https://issues.apache.org/jira/browse/KAFKA-5816) | Add Produced class and new to and through overloads to KStream |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5650](https://issues.apache.org/jira/browse/KAFKA-5650) | Provide a simple way for custom storage engines to use streams wrapped stores (KIP-182) |  Major | . | Damian Guy | Damian Guy |
| [KAFKA-5844](https://issues.apache.org/jira/browse/KAFKA-5844) | Add groupBy(KeyValueMapper, Serialized) to KTable |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5777](https://issues.apache.org/jira/browse/KAFKA-5777) | Add ducktape integration for the Trogdor Fault injection daemon |  Major | system tests | Colin P. McCabe | Colin P. McCabe |
| [KAFKA-5832](https://issues.apache.org/jira/browse/KAFKA-5832) | Add Consumed class and overloads to StreamBuilder |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5853](https://issues.apache.org/jira/browse/KAFKA-5853) | Add WindowedKStream interface and implemenation |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5815](https://issues.apache.org/jira/browse/KAFKA-5815) | Add Printed class and KStream#print(Printed) |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5852](https://issues.apache.org/jira/browse/KAFKA-5852) | Add filter, filterNot, mapValues and Materialized to KTable |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5531](https://issues.apache.org/jira/browse/KAFKA-5531) | Check exception handling in all streams tests |  Major | streams | Eno Thereska | Evgeny Veretennikov |
| [KAFKA-5653](https://issues.apache.org/jira/browse/KAFKA-5653) | Add new API methods to KTable |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5655](https://issues.apache.org/jira/browse/KAFKA-5655) | Add new API methods to KGroupedTable |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5494](https://issues.apache.org/jira/browse/KAFKA-5494) | Idempotent producer should not require max.in.flight.requests.per.connection=1 |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5654](https://issues.apache.org/jira/browse/KAFKA-5654) | Add new API methods to KGroupedStream |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5873](https://issues.apache.org/jira/browse/KAFKA-5873) | Add Materialized overloads to StreamBuilder |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5921](https://issues.apache.org/jira/browse/KAFKA-5921) | Add Materialized overloads to WindowedKStream |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5839](https://issues.apache.org/jira/browse/KAFKA-5839) | Upgrade Guide doc changes for KIP-130 |  Major | streams | Guozhang Wang | Florian Hussonnois |
| [KAFKA-5931](https://issues.apache.org/jira/browse/KAFKA-5931) | Deprecate KTable#to and KTable#through |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5793](https://issues.apache.org/jira/browse/KAFKA-5793) | Tighten up situations where OutOfOrderSequence may be returned |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5922](https://issues.apache.org/jira/browse/KAFKA-5922) | Add SessionWindowedKStream |  Major | streams | Damian Guy | Damian Guy |
| [KAFKA-5913](https://issues.apache.org/jira/browse/KAFKA-5913) | Add \`hasOffset\` and \`hasTimestamp\` methods to RecordMetadata to indicate whether metadata is available |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-5937](https://issues.apache.org/jira/browse/KAFKA-5937) | Improve ProcessorStateManager exception handling |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5899](https://issues.apache.org/jira/browse/KAFKA-5899) | Create Connect metrics for connectors |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5900](https://issues.apache.org/jira/browse/KAFKA-5900) | Create Connect metrics common to source and sink tasks |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5949](https://issues.apache.org/jira/browse/KAFKA-5949) | User Callback Exceptions need to be handled properly |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-5901](https://issues.apache.org/jira/browse/KAFKA-5901) | Create Connect metrics for source tasks |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5888](https://issues.apache.org/jira/browse/KAFKA-5888) | Transactions system test should check for message order |  Major | . | Apurva Mehta | Apurva Mehta |
| [KAFKA-4593](https://issues.apache.org/jira/browse/KAFKA-4593) | Task migration during rebalance callback process could lead the obsoleted task's IllegalStateException |  Major | streams | Guozhang Wang | Matthias J. Sax |
| [KAFKA-5902](https://issues.apache.org/jira/browse/KAFKA-5902) | Create Connect metrics for sink tasks |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5990](https://issues.apache.org/jira/browse/KAFKA-5990) | Add generated documentation for Connect metrics |  Blocker | documentation, KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5903](https://issues.apache.org/jira/browse/KAFKA-5903) | Create Connect metrics for workers |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5904](https://issues.apache.org/jira/browse/KAFKA-5904) | Create Connect metrics for worker rebalances |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-5397](https://issues.apache.org/jira/browse/KAFKA-5397) | streams are not recovering from LockException during rebalancing |  Major | streams | Jozef Koval |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-5708](https://issues.apache.org/jira/browse/KAFKA-5708) | Update Jackson dependencies (from 2.8.5 to 2.9.x) |  Blocker | build | Dejan Stojadinović | Dejan Stojadinović |
| [KAFKA-5884](https://issues.apache.org/jira/browse/KAFKA-5884) | Enable PowerMock tests when running on Java 9 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-5977](https://issues.apache.org/jira/browse/KAFKA-5977) | Upgrade RocksDB dependency to legally acceptable version |  Blocker | streams | Stevo Slavic | Guozhang Wang |


