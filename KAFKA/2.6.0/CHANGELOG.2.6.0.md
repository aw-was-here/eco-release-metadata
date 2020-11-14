
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

## Release 2.6.0 - 2020-08-03



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-7740](https://issues.apache.org/jira/browse/KAFKA-7740) | Kafka Admin Client should be able to manage user/client configurations for users and clients |  Major | clients | Yaodong Yang | Brian Byrne |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9756](https://issues.apache.org/jira/browse/KAFKA-9756) | Refactor the main loop to process more than one record of one task at a time |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-9753](https://issues.apache.org/jira/browse/KAFKA-9753) | Add task-level active-process-ratio to Streams metrics |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8890](https://issues.apache.org/jira/browse/KAFKA-8890) | KIP-519: Make SSL context/engine configuration extensible |  Minor | security | Maulin Vasavada |  |
| [KAFKA-8611](https://issues.apache.org/jira/browse/KAFKA-8611) | Add KStream#repartition operation |  Minor | streams | Levani Kokhreidze | Levani Kokhreidze |
| [KAFKA-6145](https://issues.apache.org/jira/browse/KAFKA-6145) | Warm up new KS instances before migrating tasks - potentially a two phase rebalance |  Major | streams | Antony Stubbs | A. Sophie Blee-Goldman |
| [KAFKA-9673](https://issues.apache.org/jira/browse/KAFKA-9673) | Conditionally apply SMTs |  Major | KafkaConnect | Tom Bentley | Tom Bentley |
| [KAFKA-9320](https://issues.apache.org/jira/browse/KAFKA-9320) | Enable TLSv1.3 by default and disable some of the older protocols |  Major | security | Rajini Sivaram | Nikolay Izhikov |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9113](https://issues.apache.org/jira/browse/KAFKA-9113) | Clean up task management |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8164](https://issues.apache.org/jira/browse/KAFKA-8164) | Improve test passing rate by rerunning flaky tests |  Major | . | Viktor Somogyi-Vass | Viktor Somogyi-Vass |
| [KAFKA-9177](https://issues.apache.org/jira/browse/KAFKA-9177) | Pause completed partitions on restore consumer |  Major | streams | A. Sophie Blee-Goldman | Guozhang Wang |
| [KAFKA-9423](https://issues.apache.org/jira/browse/KAFKA-9423) | Refine layout of configuration options on website and make individual settings directly linkable |  Trivial | documentation | Sönke Liebau | Sönke Liebau |
| [KAFKA-9481](https://issues.apache.org/jira/browse/KAFKA-9481) | Improve TaskMigratedException handling on Stream thread |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8147](https://issues.apache.org/jira/browse/KAFKA-8147) | Add changelog topic configuration to KTable suppress |  Minor | streams | Maarten | highluck |
| [KAFKA-9594](https://issues.apache.org/jira/browse/KAFKA-9594) | speed up the processing of LeaderAndIsrRequest |  Minor | . | Jun Rao | Manikumar |
| [KAFKA-9327](https://issues.apache.org/jira/browse/KAFKA-9327) | GroupMetadata metrics are not documented |  Major | . | Gwen Shapira | Dongjin Lee |
| [KAFKA-9626](https://issues.apache.org/jira/browse/KAFKA-9626) | Benchmark and optimize AclAuthorizer.acls() |  Major | . | Lucas Bradstreet | Manikumar |
| [KAFKA-9685](https://issues.apache.org/jira/browse/KAFKA-9685) | Solve Set concatenation perf issue in AclAuthorizer |  Minor | security | Jiao Zhang | Jiao Zhang |
| [KAFKA-9404](https://issues.apache.org/jira/browse/KAFKA-9404) | Use ArrayList instead of LinkedList in Sensor Class |  Trivial | . | David Mollitor |  |
| [KAFKA-9407](https://issues.apache.org/jira/browse/KAFKA-9407) | Return Immutable List from SchemaSourceTask |  Minor | KafkaConnect, tools | David Mollitor |  |
| [KAFKA-9573](https://issues.apache.org/jira/browse/KAFKA-9573) | TestUpgrade system test failed on Java11. |  Major | . | Nikolay Izhikov | Nikolay Izhikov |
| [KAFKA-9729](https://issues.apache.org/jira/browse/KAFKA-9729) | Shrink inWriteLock time in SimpleAuthorizer |  Minor | security | Jiao Zhang | Lucas Bradstreet |
| [KAFKA-8470](https://issues.apache.org/jira/browse/KAFKA-8470) | State change logs should not be in TRACE level |  Minor | . | Stanislav Kozlovski | Stanislav Kozlovski |
| [KAFKA-6037](https://issues.apache.org/jira/browse/KAFKA-6037) | Make Sub-topology Parallelism Tunable |  Major | streams | Guozhang Wang | Levani Kokhreidze |
| [KAFKA-9539](https://issues.apache.org/jira/browse/KAFKA-9539) | Add leader epoch in StopReplicaRequest |  Major | core | David Jacot | David Jacot |
| [KAFKA-9864](https://issues.apache.org/jira/browse/KAFKA-9864) | Avoid expensive QuotaViolationException usage |  Major | core | Lucas Bradstreet | Lucas Bradstreet |
| [KAFKA-9779](https://issues.apache.org/jira/browse/KAFKA-9779) | Add version 2.5 to streams system tests |  Major | streams, system tests | Boyang Chen | Boyang Chen |
| [KAFKA-9838](https://issues.apache.org/jira/browse/KAFKA-9838) | Add additional log concurrency test cases |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9309](https://issues.apache.org/jira/browse/KAFKA-9309) | Add the ability to translate Message classes to and from JSON |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-9894](https://issues.apache.org/jira/browse/KAFKA-9894) | Support Java 14 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-9907](https://issues.apache.org/jira/browse/KAFKA-9907) | Switch default build to Scala 2.13 |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-9612](https://issues.apache.org/jira/browse/KAFKA-9612) | CLI Dynamic Configuration with file input |  Minor | core | Aneel Nazareth | Aneel Nazareth |
| [KAFKA-9866](https://issues.apache.org/jira/browse/KAFKA-9866) | Do not attempt to elect preferred leader replicas which are outside ISR |  Minor | . | Stanislav Kozlovski | Wang Ge |
| [KAFKA-9932](https://issues.apache.org/jira/browse/KAFKA-9932) | First LeaderAndIsrRequest can take long due to unnecessary ZK read |  Major | . | Ismael Juma | Ismael Juma |
| [KAFKA-9919](https://issues.apache.org/jira/browse/KAFKA-9919) | Add logging to KafkaBasedLog |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9127](https://issues.apache.org/jira/browse/KAFKA-9127) | Needless group coordination overhead for GlobalKTables |  Major | streams | Chris Toomey | A. Sophie Blee-Goldman |
| [KAFKA-9731](https://issues.apache.org/jira/browse/KAFKA-9731) | Increased fetch request rate with leader selector due to HW propagation |  Major | core | Vahid Hashemian | Ismael Juma |
| [KAFKA-9112](https://issues.apache.org/jira/browse/KAFKA-9112) | Combine streams \`onAssignment\` with \`partitionsAssigned\` task creation |  Major | streams | Boyang Chen | Guozhang Wang |
| [KAFKA-9419](https://issues.apache.org/jira/browse/KAFKA-9419) | Integer Overflow Possible with CircularIterator |  Minor | . | David Mollitor |  |
| [KAFKA-9865](https://issues.apache.org/jira/browse/KAFKA-9865) | Expose output topic names from TopologyTestDriver |  Minor | streams-test-utils | Andy Coates | Andy Coates |
| [KAFKA-9290](https://issues.apache.org/jira/browse/KAFKA-9290) | Update IQ related JavaDocs |  Minor | streams | Matthias J. Sax | highluck |
| [KAFKA-9949](https://issues.apache.org/jira/browse/KAFKA-9949) | Flaky Test GlobalKTableIntegrationTest#shouldKStreamGlobalKTableLeftJoin |  Critical | streams, unit tests | Matthias J. Sax | Guozhang Wang |
| [KAFKA-9966](https://issues.apache.org/jira/browse/KAFKA-9966) | Flaky Test EosBetaUpgradeIntegrationTest#shouldUpgradeFromEosAlphaToEosBeta |  Critical | streams, unit tests | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-9850](https://issues.apache.org/jira/browse/KAFKA-9850) | Move KStream#repartition operator validation during Topology build process |  Major | streams | Levani Kokhreidze | HaiyuanZhao |
| [KAFKA-9650](https://issues.apache.org/jira/browse/KAFKA-9650) | Include human readable quantities for default config docs |  Trivial | docs | Tom Bentley | Tom Bentley |
| [KAFKA-9525](https://issues.apache.org/jira/browse/KAFKA-9525) | Allow explicit rebalance triggering on the Consumer |  Major | clients | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9132](https://issues.apache.org/jira/browse/KAFKA-9132) | Refactor StreamThread to take advantage of new ConsumerRebalanceListener exception handling |  Major | streams | A. Sophie Blee-Goldman | Boyang Chen |
| [KAFKA-9720](https://issues.apache.org/jira/browse/KAFKA-9720) | Update gradle to 6.0+ |  Major | build | David Arthur | Ismael Juma |
| [KAFKA-9292](https://issues.apache.org/jira/browse/KAFKA-9292) | KIP-551: Expose disk read and write metrics |  Major | . | Colin McCabe | Colin McCabe |
| [KAFKA-9409](https://issues.apache.org/jira/browse/KAFKA-9409) | Increase Immutability of ClusterConfigState |  Minor | . | David Mollitor |  |
| [KAFKA-9780](https://issues.apache.org/jira/browse/KAFKA-9780) | Deprecate commit records without record metadata |  Minor | KafkaConnect | Mario Molina | Mario Molina |
| [KAFKA-9931](https://issues.apache.org/jira/browse/KAFKA-9931) | Kafka Connect should accept '-1' as a valid replication factor |  Critical | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-9944](https://issues.apache.org/jira/browse/KAFKA-9944) | Allow HTTP Response Headers to be Configured for Kafka Connect |  Minor | KafkaConnect | Jeff Huang | Jeff Huang |
| [KAFKA-9767](https://issues.apache.org/jira/browse/KAFKA-9767) | Basic auth extension should have logging |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-6755](https://issues.apache.org/jira/browse/KAFKA-6755) | MaskField SMT should optionally take a literal value to use instead of using null |  Major | KafkaConnect | Randall Hauch | Valeria Vasylieva |
| [KAFKA-10022](https://issues.apache.org/jira/browse/KAFKA-10022) | console-producer supports the setting of client.id |  Minor | tools | Young Chou |  |
| [KAFKA-4794](https://issues.apache.org/jira/browse/KAFKA-4794) | Add access to OffsetStorageReader from SourceConnector |  Minor | KafkaConnect | Florian Hussonnois |  |
| [KAFKA-5295](https://issues.apache.org/jira/browse/KAFKA-5295) | Allow Kafka Connect source connectors to specify topic-specific settings for new topics |  Major | KafkaConnect | Randall Hauch | Konstantine Karantasis |
| [KAFKA-9353](https://issues.apache.org/jira/browse/KAFKA-9353) | Add groupInstanceId to DescribeGroup for better visibility |  Minor | admin | dengziming | dengziming |
| [KAFKA-9561](https://issues.apache.org/jira/browse/KAFKA-9561) | Update task input partitions when topic metadata changes |  Major | streams | Boyang Chen | Stepanenko Vyacheslav |
| [KAFKA-7523](https://issues.apache.org/jira/browse/KAFKA-7523) | TransformerSupplier/ProcessorSupplier enhancements |  Minor | streams | Paul Whalen | Paul Whalen |
| [KAFKA-9983](https://issues.apache.org/jira/browse/KAFKA-9983) | Add INFO-level end-to-end latency metrics to Streams |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9952](https://issues.apache.org/jira/browse/KAFKA-9952) | Reconsider immediate propagation of hw when replica selector is used |  Major | . | Jason Gustafson |  |
| [KAFKA-9960](https://issues.apache.org/jira/browse/KAFKA-9960) | Metrics Reporter should support additional context tags |  Major | . | Xavier Léauté | Xavier Léauté |
| [KAFKA-9146](https://issues.apache.org/jira/browse/KAFKA-9146) | Add option to force delete members in stream reset tool |  Major | consumer, streams | Boyang Chen | feyman |
| [KAFKA-9971](https://issues.apache.org/jira/browse/KAFKA-9971) | Error Reporting in Sink Connectors |  Critical | KafkaConnect | Aakash Shah | Aakash Shah |
| [KAFKA-9130](https://issues.apache.org/jira/browse/KAFKA-9130) | Allow listing consumer groups per state |  Major | . | Mickael Maison | Mickael Maison |
| [KAFKA-9494](https://issues.apache.org/jira/browse/KAFKA-9494) | Include data type of the config in ConfigEntry |  Minor | clients, core | Shailesh Panwar |  |
| [KAFKA-10074](https://issues.apache.org/jira/browse/KAFKA-10074) | Improve performance of \`matchingAcls\` |  Critical | . | Ismael Juma | Ismael Juma |
| [KAFKA-9987](https://issues.apache.org/jira/browse/KAFKA-9987) | Improve sticky partition assignor algorithm |  Major | clients, consumer | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9468](https://issues.apache.org/jira/browse/KAFKA-9468) | config.storage.topic partition count issue is hard to debug |  Minor | KafkaConnect | Evelyn Bayes | Randall Hauch |
| [KAFKA-10012](https://issues.apache.org/jira/browse/KAFKA-10012) | Reducing memory overhead associated with strings in MetricName |  Major | network | Navina Ramesh | Navina Ramesh |
| [KAFKA-10005](https://issues.apache.org/jira/browse/KAFKA-10005) | Decouple RestoreListener from RestoreCallback and not enable bulk loading for RocksDB |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-8938](https://issues.apache.org/jira/browse/KAFKA-8938) | Connect - Improve Memory Allocations During Struct Validation |  Minor | KafkaConnect | Auston McReynolds |  |
| [KAFKA-10115](https://issues.apache.org/jira/browse/KAFKA-10115) | Incorporate errors.tolerance with the Errant Record Reporter |  Major | KafkaConnect | Aakash Shah | Aakash Shah |
| [KAFKA-9216](https://issues.apache.org/jira/browse/KAFKA-9216) | Enforce connect internal topic configuration at startup |  Major | KafkaConnect | Randall Hauch | Evelyn Bayes |
| [KAFKA-10135](https://issues.apache.org/jira/browse/KAFKA-10135) | Extract Task#executeAndMaybeSwallow to be a general utility function into TaskManager |  Major | streams | Boyang Chen | feyman |
| [KAFKA-9313](https://issues.apache.org/jira/browse/KAFKA-9313) | Set default for client.dns.lookup to use\_all\_dns\_ips |  Minor | clients | Yeva Byzek | Badai Aqrandista |
| [KAFKA-6508](https://issues.apache.org/jira/browse/KAFKA-6508) | Look into optimizing StreamPartitionAssignor StandbyTask Assignment |  Major | streams | Bill Bejeck |  |
| [KAFKA-6453](https://issues.apache.org/jira/browse/KAFKA-6453) | Document timestamp propagation semantics |  Major | streams | Matthias J. Sax | James Galasyn |
| [KAFKA-9852](https://issues.apache.org/jira/browse/KAFKA-9852) | Lower block duration in BufferPoolTest to cut down on overall test runtime |  Trivial | unit tests | Sönke Liebau | Sönke Liebau |
| [KAFKA-10406](https://issues.apache.org/jira/browse/KAFKA-10406) | Table data doesn't wrap around in fixed-width columns and gets hidden |  Trivial | docs | Sanjay Ravikumar |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9490](https://issues.apache.org/jira/browse/KAFKA-9490) | Some factory methods in Grouped are missing generic parameters |  Minor | streams | Dariusz Kordonski | Matthias J. Sax |
| [KAFKA-9074](https://issues.apache.org/jira/browse/KAFKA-9074) | Connect's Values class does not parse time or timestamp values from string literals |  Major | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-8574](https://issues.apache.org/jira/browse/KAFKA-8574) | EOS race condition during task transition leads to LocalStateStore truncation in Kafka Streams 2.0.1 |  Major | streams | William Greer | Guozhang Wang |
| [KAFKA-9557](https://issues.apache.org/jira/browse/KAFKA-9557) | Thread-level "process" metrics are computed incorrectly |  Major | streams | John Roesler | John Roesler |
| [KAFKA-9540](https://issues.apache.org/jira/browse/KAFKA-9540) | Application getting "Could not find the standby task 0\_4 while closing it" error |  Minor | streams | Badai Aqrandista | A. Sophie Blee-Goldman |
| [KAFKA-8910](https://issues.apache.org/jira/browse/KAFKA-8910) | Incorrect javadoc at KafkaProducer.InterceptorCallback#onCompletion |  Major | . | Sergey Ushakov | Dongjin Lee |
| [KAFKA-9206](https://issues.apache.org/jira/browse/KAFKA-9206) | Consumer should handle \`CORRUPT\_MESSAGE\` error code in fetch response |  Major | . | Jason Gustafson | Agam Brahma |
| [KAFKA-9308](https://issues.apache.org/jira/browse/KAFKA-9308) | Misses SAN after certificate creation |  Minor | documentation | Agostino Sarubbo | Sönke Liebau |
| [KAFKA-9572](https://issues.apache.org/jira/browse/KAFKA-9572) | Sum Computation with Exactly-Once Enabled and Injected Failures Misses Some Records |  Blocker | streams | Bruno Cadonna | Guozhang Wang |
| [KAFKA-9498](https://issues.apache.org/jira/browse/KAFKA-9498) | Topic validation during the creation trigger unnecessary TopicChange events |  Major | . | David Jacot | David Jacot |
| [KAFKA-9614](https://issues.apache.org/jira/browse/KAFKA-9614) | Avoid initializing the topology twice when resuming stream tasks from suspended state |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-9610](https://issues.apache.org/jira/browse/KAFKA-9610) | Should not throw illegal state exception during task revocation |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9607](https://issues.apache.org/jira/browse/KAFKA-9607) | Should not clear partition queue during task close |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-9620](https://issues.apache.org/jira/browse/KAFKA-9620) | Task revocation failure could introduce remaining unclean tasks |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9623](https://issues.apache.org/jira/browse/KAFKA-9623) | Streams will attempt to commit during shutdown if rebalance is in progress |  Major | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-9632](https://issues.apache.org/jira/browse/KAFKA-9632) | Transient test failure: PartitionLockTest.testAppendReplicaFetchWithUpdateIsr |  Major | core | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9663](https://issues.apache.org/jira/browse/KAFKA-9663) | KafkaStreams.metadataForKey, queryMetadataForKey docs don't mention null |  Minor | streams | Tom Bentley | Tom Bentley |
| [KAFKA-9645](https://issues.apache.org/jira/browse/KAFKA-9645) | Records could not find corresponding partition/task |  Major | consumer | Boyang Chen | Boyang Chen |
| [KAFKA-9605](https://issues.apache.org/jira/browse/KAFKA-9605) | EOS Producer could throw illegal state if trying to complete a failed batch after fatal error |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9695](https://issues.apache.org/jira/browse/KAFKA-9695) | AdminClient allows null topic configs, but broker throws NPE |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9644](https://issues.apache.org/jira/browse/KAFKA-9644) | incrementalAlterConfigs OpType.APPEND on unset property fails with NullPointerException |  Minor | admin | Steve Rodrigues | Steve Rodrigues |
| [KAFKA-9675](https://issues.apache.org/jira/browse/KAFKA-9675) | RocksDB metrics reported always at zero |  Blocker | streams | Michael Viamari | Bruno Cadonna |
| [KAFKA-9718](https://issues.apache.org/jira/browse/KAFKA-9718) | Don't log passwords for AlterConfigs requests in request logs |  Major | . | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-9533](https://issues.apache.org/jira/browse/KAFKA-9533) | JavaDocs of KStream#ValueTransform incorrect |  Major | streams | Michael Viamari | Matthias J. Sax |
| [KAFKA-6647](https://issues.apache.org/jira/browse/KAFKA-6647) | KafkaStreams.cleanUp creates .lock file in directory its trying to clean (Windows OS) |  Minor | streams | George Bloggs | Guozhang Wang |
| [KAFKA-9712](https://issues.apache.org/jira/browse/KAFKA-9712) | Reflections library 0.9.12 introduced in 2.5 causes regression scanning for plugins on plugin\_path |  Blocker | KafkaConnect | Nigel Liang | Nigel Liang |
| [KAFKA-9625](https://issues.apache.org/jira/browse/KAFKA-9625) | Unable to Describe broker configurations that have been set via IncrementalAlterConfigs |  Critical | core | Colin McCabe | Sanjana Kaundinya |
| [KAFKA-9047](https://issues.apache.org/jira/browse/KAFKA-9047) | AdminClient group operations may not respect backoff |  Major | admin | Jason Gustafson | Sanjana Kaundinya |
| [KAFKA-9656](https://issues.apache.org/jira/browse/KAFKA-9656) | TxnOffsetCommit should not return COORDINATOR\_LOADING error for old request versions |  Major | . | Jason Gustafson | Boyang Chen |
| [KAFKA-9568](https://issues.apache.org/jira/browse/KAFKA-9568) | Kstreams APPLICATION\_SERVER\_CONFIG is not updated with static membership |  Major | streams | David J. Garcia | A. Sophie Blee-Goldman |
| [KAFKA-9677](https://issues.apache.org/jira/browse/KAFKA-9677) | Low consume bandwidth quota may cause consumer not being able to fetch data |  Major | core | Anna Povzner | Anna Povzner |
| [KAFKA-9225](https://issues.apache.org/jira/browse/KAFKA-9225) | kafka fail to run on linux-aarch64 |  Major | streams | jiamei xie | jiamei xie |
| [KAFKA-9553](https://issues.apache.org/jira/browse/KAFKA-9553) | Transaction state loading metric does not count total loading time |  Major | . | Jason Gustafson | Agam Brahma |
| [KAFKA-9743](https://issues.apache.org/jira/browse/KAFKA-9743) | StreamTask could fail to close during HandleNewAssignment |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9711](https://issues.apache.org/jira/browse/KAFKA-9711) | The authentication failure caused by SSLEngine#beginHandshake is not properly caught and handled |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9700](https://issues.apache.org/jira/browse/KAFKA-9700) | Negative estimatedCompressionRatio leads to misjudgment about if there is no room |  Major | clients | jiamei xie |  |
| [KAFKA-9373](https://issues.apache.org/jira/browse/KAFKA-9373) | Improve shutdown performance via lazy accessing the offset and time indices. |  Major | log | Adem Efe Gencer | Adem Efe Gencer |
| [KAFKA-9600](https://issues.apache.org/jira/browse/KAFKA-9600) | EndTxn handler should check strict epoch equality |  Major | . | Jason Gustafson | Boyang Chen |
| [KAFKA-9783](https://issues.apache.org/jira/browse/KAFKA-9783) | Flaky Test QueryableStateIntegrationTest#concurrentAccesses |  Critical | streams, unit tests | Matthias J. Sax | Guozhang Wang |
| [KAFKA-9739](https://issues.apache.org/jira/browse/KAFKA-9739) | StreamsBuilder.build fails with StreamsException "Found a null keyChangingChild node for OptimizableRepartitionNode" |  Major | streams | Artur Poliachenko | Bill Bejeck |
| [KAFKA-9812](https://issues.apache.org/jira/browse/KAFKA-9812) | Integration tests hang and timeout the entire PR build on jenkins |  Major | streams | Konstantine Karantasis | John Roesler |
| [KAFKA-9775](https://issues.apache.org/jira/browse/KAFKA-9775) | IllegalFormatConversionException from kafka-consumer-perf-test.sh |  Major | tools | Tom Bentley | Tom Bentley |
| [KAFKA-9820](https://issues.apache.org/jira/browse/KAFKA-9820) | validateMessagesAndAssignOffsetsCompressed allocates batch iterator which is not used |  Major | core | Lucas Bradstreet |  |
| [KAFKA-9691](https://issues.apache.org/jira/browse/KAFKA-9691) | Flaky test kafka.admin.TopicCommandWithAdminClientTest#testDescribeUnderReplicatedPartitionsWhenReassignmentIsInProgress |  Major | unit tests | Tom Bentley | Tom Bentley |
| [KAFKA-9583](https://issues.apache.org/jira/browse/KAFKA-9583) | OffsetsForLeaderEpoch requests are sometimes not sent to the leader of partition |  Minor | clients | Andy Fang |  |
| [KAFKA-9642](https://issues.apache.org/jira/browse/KAFKA-9642) | "BigDecimal(double)" should not be used |  Minor | KafkaConnect | Soontaek Lim | Soontaek Lim |
| [KAFKA-3720](https://issues.apache.org/jira/browse/KAFKA-3720) | Remove BufferExhaustedException from doSend() in KafkaProducer |  Minor | producer | Mayuresh Gharat | Sönke Liebau |
| [KAFKA-8107](https://issues.apache.org/jira/browse/KAFKA-8107) | Flaky Test kafka.api.ClientIdQuotaTest.testQuotaOverrideDelete |  Critical | core, unit tests | Guozhang Wang | David Jacot |
| [KAFKA-9826](https://issues.apache.org/jira/browse/KAFKA-9826) | Log cleaning repeatedly picks same segment with no effect when first dirty offset is past start of active segment |  Major | log cleaner | Steve Rodrigues | Steve Rodrigues |
| [KAFKA-9797](https://issues.apache.org/jira/browse/KAFKA-9797) | Fix flaky system test TestSecurityRollingUpgrade.test\_enable\_separate\_interbroker\_listener |  Major | system tests | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-7885](https://issues.apache.org/jira/browse/KAFKA-7885) | Streams: TopologyDescription violates equals-hashCode contract. |  Minor | streams | Piotr Fras | Piotr Fras |
| [KAFKA-9703](https://issues.apache.org/jira/browse/KAFKA-9703) | ProducerBatch.split takes up too many resources if the bigBatch is huge |  Major | . | jiamei xie | jiamei xie |
| [KAFKA-9854](https://issues.apache.org/jira/browse/KAFKA-9854) | Re-authenticating causes mismatched parse of response |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9796](https://issues.apache.org/jira/browse/KAFKA-9796) | Broker shutdown could be stuck forever under certain conditions |  Major | . | David Jacot | David Jacot |
| [KAFKA-9819](https://issues.apache.org/jira/browse/KAFKA-9819) | Flaky Test StoreChangelogReaderTest#shouldNotThrowOnUnknownRevokedPartition[0] |  Major | streams | A. Sophie Blee-Goldman | Matthias J. Sax |
| [KAFKA-9818](https://issues.apache.org/jira/browse/KAFKA-9818) | Flaky Test RecordCollectorTest.shouldNotThrowStreamsExceptionOnSubsequentCallIfASendFailsWithContinueExceptionHandler |  Major | streams | A. Sophie Blee-Goldman | Matthias J. Sax |
| [KAFKA-9868](https://issues.apache.org/jira/browse/KAFKA-9868) | Flaky Test EOSUncleanShutdownIntegrationTest.shouldWorkWithUncleanShutdownWipeOutStateStore |  Major | streams, unit tests | A. Sophie Blee-Goldman | Boyang Chen |
| [KAFKA-9388](https://issues.apache.org/jira/browse/KAFKA-9388) | Flaky Test StandbyTaskCreationIntegrationTest.shouldCreateStandByTasksForMaterializedAndOptimizedSourceTables |  Critical | streams, unit tests | Matthias J. Sax | Guozhang Wang |
| [KAFKA-9823](https://issues.apache.org/jira/browse/KAFKA-9823) | Consumer should check equality of the generation for coordinator requests |  Major | consumer | Guozhang Wang | Guozhang Wang |
| [KAFKA-9844](https://issues.apache.org/jira/browse/KAFKA-9844) | Maximum number of members within a group is not always enforced due to a race condition in join group |  Major | . | David Jacot | David Jacot |
| [KAFKA-9883](https://issues.apache.org/jira/browse/KAFKA-9883) | Connect request to restart task can result in IllegalArgumentError: "uriTemplate" parameter is null |  Minor | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-9704](https://issues.apache.org/jira/browse/KAFKA-9704) | z/OS won't let us resize file when mmap |  Major | log | Shuo Zhang | Shuo Zhang |
| [KAFKA-9885](https://issues.apache.org/jira/browse/KAFKA-9885) | Evict last members of a group when the maximum allowed is reached |  Major | . | David Jacot | David Jacot |
| [KAFKA-9921](https://issues.apache.org/jira/browse/KAFKA-9921) | Caching is not working properly with WindowStateStore when retaining duplicates |  Major | streams | Georgi Petkov | A. Sophie Blee-Goldman |
| [KAFKA-9176](https://issues.apache.org/jira/browse/KAFKA-9176) | Flaky test failure:  OptimizedKTableIntegrationTest.shouldApplyUpdatesToStandbyStore |  Major | streams, unit tests | Manikumar | Guozhang Wang |
| [KAFKA-9875](https://issues.apache.org/jira/browse/KAFKA-9875) | Flaky Test SuppressionDurabilityIntegrationTest.shouldRecoverBufferAfterShutdown[exactly\_once] |  Major | streams, unit tests | A. Sophie Blee-Goldman | John Roesler |
| [KAFKA-9925](https://issues.apache.org/jira/browse/KAFKA-9925) | Non-key KTable Joining may result in duplicate schema name in confluence schema registry |  Major | streams | Kin Siu | John Roesler |
| [KAFKA-9922](https://issues.apache.org/jira/browse/KAFKA-9922) | Update examples README |  Major | consumer, documentation | jiamei xie | jiamei xie |
| [KAFKA-9830](https://issues.apache.org/jira/browse/KAFKA-9830) | DeadLetterQueueReporter leaks KafkaProducer instance |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9652](https://issues.apache.org/jira/browse/KAFKA-9652) | Throttle time metric needs to be updated for KIP-219 |  Major | . | Jason Gustafson | Ismael Juma |
| [KAFKA-9034](https://issues.apache.org/jira/browse/KAFKA-9034) | kafka-run-class.sh will fail if JAVA\_HOME has space |  Minor | tools | Fenjin Wang | Manasvi Gupta |
| [KAFKA-9633](https://issues.apache.org/jira/browse/KAFKA-9633) | ConfigProvider.close() not called |  Minor | . | Tom Bentley | Tom Bentley |
| [KAFKA-9939](https://issues.apache.org/jira/browse/KAFKA-9939) | Fetch request metrics are updated twice for delayed fetches |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9918](https://issues.apache.org/jira/browse/KAFKA-9918) | SslEngineFactory is NOT closed when channel is closing |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9768](https://issues.apache.org/jira/browse/KAFKA-9768) | rest.advertised.listener configuration is not handled properly by the worker |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9667](https://issues.apache.org/jira/browse/KAFKA-9667) | Connect JSON serde strip trailing zeros |  Major | KafkaConnect | Andy Coates | Andy Coates |
| [KAFKA-9928](https://issues.apache.org/jira/browse/KAFKA-9928) | Flaky GlobalKTableEOSIntegrationTest#shouldKStreamGlobalKTableLeftJoin[exactly\_once\_beta] |  Major | streams, unit tests | Guozhang Wang | Matthias J. Sax |
| [KAFKA-9972](https://issues.apache.org/jira/browse/KAFKA-9972) | Corrupted standby task could be committed |  Major | streams | Boyang Chen | Boyang Chen |
| [KAFKA-7965](https://issues.apache.org/jira/browse/KAFKA-7965) | Flaky Test ConsumerBounceTest#testRollingBrokerRestartsWithSmallerMaxGroupSizeConfigDisruptsBigGroup |  Critical | clients, consumer, unit tests | Matthias J. Sax | David Jacot |
| [KAFKA-9984](https://issues.apache.org/jira/browse/KAFKA-9984) | Should fail the subscription when pattern is empty |  Major | consumer | Boyang Chen | HaiyuanZhao |
| [KAFKA-9537](https://issues.apache.org/jira/browse/KAFKA-9537) | Abstract transformations in configurations cause unfriendly error message. |  Minor | KafkaConnect | Jeremy Custenborder | Jeremy Custenborder |
| [KAFKA-10001](https://issues.apache.org/jira/browse/KAFKA-10001) | Store's own restore listener should be triggered in store changelog reader |  Major | . | Guozhang Wang | Guozhang Wang |
| [KAFKA-9617](https://issues.apache.org/jira/browse/KAFKA-9617) | Replica Fetcher can mark partition as failed when max.message.bytes is changed |  Major | . | Stanislav Kozlovski | Chia-Ping Tsai |
| [KAFKA-9955](https://issues.apache.org/jira/browse/KAFKA-9955) | Exceptions thrown from SinkTask::close shadow other exceptions |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10004](https://issues.apache.org/jira/browse/KAFKA-10004) | ConfigCommand fails to find default broker configs without ZK |  Major | . | Luke Chen | Luke Chen |
| [KAFKA-9992](https://issues.apache.org/jira/browse/KAFKA-9992) | EmbeddedKafkaCluster.deleteTopicAndWait not working with kafka\_2.13 |  Major | packaging, streams | Andras Katona | Andras Katona |
| [KAFKA-9859](https://issues.apache.org/jira/browse/KAFKA-9859) | kafka-streams-application-reset tool doesn't take into account topics generated by KTable foreign key join operation |  Major | streams, tools | Levani Kokhreidze | Levani Kokhreidze |
| [KAFKA-9603](https://issues.apache.org/jira/browse/KAFKA-9603) | Number of open files keeps increasing in Streams application |  Major | streams | Bruno Iljazovic | Bruno Cadonna |
| [KAFKA-8869](https://issues.apache.org/jira/browse/KAFKA-8869) | Map taskConfigs in KafkaConfigBackingStore grows monotonically despite of task removals |  Major | KafkaConnect | Konstantine Karantasis | Chris Egerton |
| [KAFKA-9950](https://issues.apache.org/jira/browse/KAFKA-9950) | MirrorMaker2 sharing of ConfigDef can lead to ConcurrentModificationException |  Major | mirrormaker | Chris Egerton | Chris Egerton |
| [KAFKA-9980](https://issues.apache.org/jira/browse/KAFKA-9980) | Fix bug where alterClientQuotas could not set default client quotas |  Major | . | Cheng Tan | Brian Byrne |
| [KAFKA-9942](https://issues.apache.org/jira/browse/KAFKA-9942) | ConfigCommand fails to set client quotas for default users with --bootstrap-server. |  Major | . | Cheng Tan | Brian Byrne |
| [KAFKA-9173](https://issues.apache.org/jira/browse/KAFKA-9173) | StreamsPartitionAssignor assigns partitions to only one worker |  Critical | streams | Oleg Muravskiy |  |
| [KAFKA-9888](https://issues.apache.org/jira/browse/KAFKA-9888) | REST extensions can mutate connector configs in worker config state snapshot |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9472](https://issues.apache.org/jira/browse/KAFKA-9472) | Reducing number of tasks for connector causes deleted tasks to show as UNASSIGNED |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9898](https://issues.apache.org/jira/browse/KAFKA-9898) | Flaky Test StoreQueryIntegrationTest.shouldQueryAllStalePartitionStores |  Major | streams, unit tests | A. Sophie Blee-Goldman | Guozhang Wang |
| [KAFKA-9298](https://issues.apache.org/jira/browse/KAFKA-9298) | Reuse of a mapped stream causes an Invalid Topology |  Minor | streams | Walker Carlson | Bill Bejeck |
| [KAFKA-10018](https://issues.apache.org/jira/browse/KAFKA-10018) |  Change command line tools from /bin/sh to /bin/bash |  Major | admin | jiamei xie | jiamei xie |
| [KAFKA-10052](https://issues.apache.org/jira/browse/KAFKA-10052) | Flaky Test InternalTopicsIntegrationTest.testCreateInternalTopicsWithFewerReplicasThanBrokers |  Critical | KafkaConnect | A. Sophie Blee-Goldman | Konstantine Karantasis |
| [KAFKA-10029](https://issues.apache.org/jira/browse/KAFKA-10029) | Selector.completedReceives should not be modified when channel is closed |  Major | network | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10056](https://issues.apache.org/jira/browse/KAFKA-10056) | Consumer metadata may use outdated groupSubscription that doesn't contain newly subscribed topics |  Major | consumer | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10061](https://issues.apache.org/jira/browse/KAFKA-10061) | Flaky Test \`ReassignPartitionsIntegrationTest .testCancellation\` |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9501](https://issues.apache.org/jira/browse/KAFKA-9501) | Promote Standby tasks to active tasks without closing them |  Critical | streams | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-9821](https://issues.apache.org/jira/browse/KAFKA-9821) | Stream task may skip assignment with static members and incremental rebalances |  Major | streams | Guozhang Wang | A. Sophie Blee-Goldman |
| [KAFKA-10030](https://issues.apache.org/jira/browse/KAFKA-10030) | Throw exception while fetching a key from a single partition |  Major | streams | Dima R | Dima R |
| [KAFKA-9945](https://issues.apache.org/jira/browse/KAFKA-9945) | TopicCommand should support --if-exists and --if-not-exists when --bootstrap-server is used |  Major | . | Colin McCabe | Vinoth Chandar |
| [KAFKA-10080](https://issues.apache.org/jira/browse/KAFKA-10080) | IllegalStateException after duplicate CompleteCommit append to transaction log |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9777](https://issues.apache.org/jira/browse/KAFKA-9777) | Purgatory locking bug can lead to hanging transaction |  Critical | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-10089](https://issues.apache.org/jira/browse/KAFKA-10089) | The stale ssl engine factory is not closed after reconfigure |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-9788](https://issues.apache.org/jira/browse/KAFKA-9788) | Sensor name collision for group and transaction coordinator load metrics |  Minor | . | Bob Barrett | Bob Barrett |
| [KAFKA-10069](https://issues.apache.org/jira/browse/KAFKA-10069) | The user-defined "predicate" and "negate" are not removed from Transformation |  Minor | KafkaConnect | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10066](https://issues.apache.org/jira/browse/KAFKA-10066) | TopologyTestDriver isn't taking record headers into account during de/serialization |  Minor | streams-test-utils | Stefaan Dutry | Matthias J. Sax |
| [KAFKA-10110](https://issues.apache.org/jira/browse/KAFKA-10110) | ConnectDistributed fails with NPE when Kafka cluster has no ID |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-10111](https://issues.apache.org/jira/browse/KAFKA-10111) | SinkTaskContext.errantRecordReporter() added in KIP-610 should be a default method |  Blocker | KafkaConnect | Randall Hauch | Randall Hauch |
| [KAFKA-8011](https://issues.apache.org/jira/browse/KAFKA-8011) | Flaky Test RegexSourceIntegrationTest#testRegexMatchesTopicsAWhenCreated |  Blocker | streams | Bill Bejeck | Matthias J. Sax |
| [KAFKA-9570](https://issues.apache.org/jira/browse/KAFKA-9570) | SSL cannot be configured for Connect in standalone mode |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9840](https://issues.apache.org/jira/browse/KAFKA-9840) | Consumer should not use OffsetForLeaderEpoch without current epoch validation |  Major | consumer | Jason Gustafson | Boyang Chen |
| [KAFKA-9851](https://issues.apache.org/jira/browse/KAFKA-9851) | Revoking Connect tasks due to connectivity issues should also clear running assignment |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-10102](https://issues.apache.org/jira/browse/KAFKA-10102) | Source node references not updated after rebuilding topology |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10063](https://issues.apache.org/jira/browse/KAFKA-10063) | UnsupportedOperation when querying cleaner metrics after shutdown |  Major | . | Jason Gustafson | Chia-Ping Tsai |
| [KAFKA-9724](https://issues.apache.org/jira/browse/KAFKA-9724) | Consumer wrongly ignores fetched records "since it no longer has valid position" |  Major | clients, consumer | Oleg Muravskiy | David Arthur |
| [KAFKA-9716](https://issues.apache.org/jira/browse/KAFKA-9716) | Values of compression-rate and compression-rate-avg are misleading |  Minor | clients, compression | Christian Kosmowski | Rens Groothuijsen |
| [KAFKA-9848](https://issues.apache.org/jira/browse/KAFKA-9848) | Avoid triggering scheduled rebalance delay when task assignment fails but Connect workers remain in the group |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-9849](https://issues.apache.org/jira/browse/KAFKA-9849) | Fix issue with worker.unsync.backoff.ms creating zombie workers when incremental cooperative rebalancing is used |  Major | KafkaConnect | Konstantine Karantasis | Konstantine Karantasis |
| [KAFKA-10079](https://issues.apache.org/jira/browse/KAFKA-10079) | Improve thread-level stickiness of stateful tasks |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-9991](https://issues.apache.org/jira/browse/KAFKA-9991) | Flaky Test KTableSourceTopicRestartIntegrationTest.shouldRestoreAndProgressWhenTopicWrittenToDuringRestorationWithEosAlphaEnabled |  Major | streams | A. Sophie Blee-Goldman | Guozhang Wang |
| [KAFKA-7833](https://issues.apache.org/jira/browse/KAFKA-7833) | StreamsBuilder should throw an exception if addGlobalStore and addStateStore is called for the same store builder |  Major | streams | Sam Lendle | Rob Meng |
| [KAFKA-9985](https://issues.apache.org/jira/browse/KAFKA-9985) | Sink connector consuming DLQ topic may exhaust broker |  Major | . | Mario Molina | Mario Molina |
| [KAFKA-9841](https://issues.apache.org/jira/browse/KAFKA-9841) | Connector and Task duplicated when a worker join with old generation assignment |  Major | KafkaConnect | Yu Wang | Yu Wang |
| [KAFKA-9066](https://issues.apache.org/jira/browse/KAFKA-9066) | Kafka Connect JMX : source & sink task metrics missing for tasks in failed state |  Major | KafkaConnect | Mikołaj Stefaniak | Chris Egerton |
| [KAFKA-9845](https://issues.apache.org/jira/browse/KAFKA-9845) | plugin.path property does not work with config provider |  Minor | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-9969](https://issues.apache.org/jira/browse/KAFKA-9969) | ConnectorClientConfigRequest is loaded in isolation and throws LinkageError |  Major | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-9374](https://issues.apache.org/jira/browse/KAFKA-9374) | Worker can be disabled by blocked connectors |  Major | KafkaConnect | Chris Egerton | Chris Egerton |
| [KAFKA-10085](https://issues.apache.org/jira/browse/KAFKA-10085) | Compute lag correctly for optimized source changelogs |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8391](https://issues.apache.org/jira/browse/KAFKA-8391) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testDeleteConnector |  Critical | KafkaConnect | Matthias J. Sax | Randall Hauch |
| [KAFKA-8661](https://issues.apache.org/jira/browse/KAFKA-8661) | Flaky Test RebalanceSourceConnectorsIntegrationTest#testStartTwoConnectors |  Critical | KafkaConnect, unit tests | Matthias J. Sax | Randall Hauch |
| [KAFKA-10049](https://issues.apache.org/jira/browse/KAFKA-10049) | KTable-KTable Foreign Key join throwing Serialization Exception |  Blocker | streams | Amit Chauhan | Adam Bellemare |
| [KAFKA-10144](https://issues.apache.org/jira/browse/KAFKA-10144) | Corrupted standby tasks are not always cleaned up |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10152](https://issues.apache.org/jira/browse/KAFKA-10152) | Attempt to write checkpoint without first committing during recycle |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10150](https://issues.apache.org/jira/browse/KAFKA-10150) | IllegalStateException when revoking task in CREATED state |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-8672](https://issues.apache.org/jira/browse/KAFKA-8672) | RebalanceSourceConnectorsIntegrationTest#testReconfigConnector |  Critical | KafkaConnect | Matthias J. Sax | Konstantine Karantasis |
| [KAFKA-10165](https://issues.apache.org/jira/browse/KAFKA-10165) | Percentiles metric leaking memory |  Blocker | metrics, streams | A. Sophie Blee-Goldman | John Roesler |
| [KAFKA-10147](https://issues.apache.org/jira/browse/KAFKA-10147) | MockAdminClient#describeConfigs(Collection\<ConfigResource\>) is unable to handle broker resource |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10151](https://issues.apache.org/jira/browse/KAFKA-10151) | Flaky Test StoreUpgradeIntegrationTest.shouldMigratePersistentKeyValueStoreToTimestampedKeyValueStoreUsingPapi |  Major | streams | A. Sophie Blee-Goldman |  |
| [KAFKA-9896](https://issues.apache.org/jira/browse/KAFKA-9896) | Flaky Test StandbyTaskEOSIntegrationTest#surviveWithOneTaskAsStandby[exactly\_once\_beta] |  Critical | streams, unit tests | Matthias J. Sax | A. Sophie Blee-Goldman |
| [KAFKA-10123](https://issues.apache.org/jira/browse/KAFKA-10123) | Regression resetting offsets in consumer when fetching from old broker |  Blocker | . | Jason Gustafson | David Arthur |
| [KAFKA-10167](https://issues.apache.org/jira/browse/KAFKA-10167) | Streams EOS-Beta should not try to get end-offsets as read-committed |  Blocker | streams | Guozhang Wang | Guozhang Wang |
| [KAFKA-10113](https://issues.apache.org/jira/browse/KAFKA-10113) | LogTruncationException sets fetch offsets incorrectly |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-10148](https://issues.apache.org/jira/browse/KAFKA-10148) | Kafka Streams Restores too few Records with eos-beta Enabled |  Blocker | streams | Bruno Cadonna | Bruno Cadonna |
| [KAFKA-9891](https://issues.apache.org/jira/browse/KAFKA-9891) | Invalid state store content after task migration with exactly\_once and standby replicas |  Blocker | streams | Mateusz Jadczyk | Matthias J. Sax |
| [KAFKA-10169](https://issues.apache.org/jira/browse/KAFKA-10169) | KafkaException: Failing batch since transaction was aborted |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10198](https://issues.apache.org/jira/browse/KAFKA-10198) | Dirty tasks may be recycled instead of closed |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10212](https://issues.apache.org/jira/browse/KAFKA-10212) | Describing a topic with the TopicCommand fails if unauthorised to use ListPartitionReassignments API |  Critical | . | David Jacot | David Jacot |
| [KAFKA-10214](https://issues.apache.org/jira/browse/KAFKA-10214) | fix flaky zookeeper\_tls\_test.py |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10209](https://issues.apache.org/jira/browse/KAFKA-10209) | Fix connect\_rest\_test.py after the introduction of new connector configs |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10173](https://issues.apache.org/jira/browse/KAFKA-10173) | BufferUnderflowException during Kafka Streams Upgrade |  Blocker | streams | Karsten Schnitter | John Roesler |
| [KAFKA-10166](https://issues.apache.org/jira/browse/KAFKA-10166) | Excessive TaskCorruptedException seen in testing |  Blocker | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10239](https://issues.apache.org/jira/browse/KAFKA-10239) | The groupInstanceId field in DescribeGroup response should be ignorable |  Critical | . | Jason Gustafson | Boyang Chen |
| [KAFKA-10235](https://issues.apache.org/jira/browse/KAFKA-10235) | Fix flaky transactions\_test.py |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [KAFKA-10249](https://issues.apache.org/jira/browse/KAFKA-10249) | In-memory stores are skipped when checkpointing but not skipped when reading the checkpoint |  Major | streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10262](https://issues.apache.org/jira/browse/KAFKA-10262) | StateDirectory is not thread-safe |  Blocker | streams | A. Sophie Blee-Goldman | Matthias J. Sax |
| [KAFKA-10247](https://issues.apache.org/jira/browse/KAFKA-10247) | Streams may attempt to process after closing a task |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-10192](https://issues.apache.org/jira/browse/KAFKA-10192) | Flaky test BlockingConnectorTest#testBlockInConnectorStop |  Major | KafkaConnect | Boyang Chen | Chris Egerton |
| [KAFKA-10257](https://issues.apache.org/jira/browse/KAFKA-10257) | system test kafkatest.tests.core.security\_rolling\_upgrade\_test fails |  Major | . | Jun Rao | Chia-Ping Tsai |
| [KAFKA-9996](https://issues.apache.org/jira/browse/KAFKA-9996) | upgrade zookeeper to 3.5.8 to address security vulnerabilities |  Major | packaging | Emanuele Maccherani | Ismael Juma |
| [KAFKA-10223](https://issues.apache.org/jira/browse/KAFKA-10223) | ReplicaNotAvailableException must be retriable to handle reassignments |  Critical | clients | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10274](https://issues.apache.org/jira/browse/KAFKA-10274) | Transaction system test uses inconsistent timeouts |  Major | . | Jason Gustafson | Jason Gustafson |
| [KAFKA-9161](https://issues.apache.org/jira/browse/KAFKA-9161) | Close gaps in Streams configs documentation |  Major | documentation, streams | A. Sophie Blee-Goldman | A. Sophie Blee-Goldman |
| [KAFKA-10268](https://issues.apache.org/jira/browse/KAFKA-10268) | dynamic config like "--delete-config log.retention.ms" doesn't work |  Major | log, log cleaner | zhifeng.peng | huxihx |
| [KAFKA-10306](https://issues.apache.org/jira/browse/KAFKA-10306) | GlobalThread might loop forever |  Blocker | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-10287](https://issues.apache.org/jira/browse/KAFKA-10287) | fix flaky streams/streams\_standby\_replica\_test.py |  Blocker | streams, system tests | Chia-Ping Tsai | Bruno Cadonna |
| [KAFKA-10224](https://issues.apache.org/jira/browse/KAFKA-10224) | The license term about jersey is not correct |  Critical | core | jaredli2020 | Rens Groothuijsen |
| [KAFKA-9659](https://issues.apache.org/jira/browse/KAFKA-9659) | Kafka Streams / Consumer configured for static membership fails on "fatal exception: group.instance.id gets fenced" |  Major | streams | Rohan Desai | Guozhang Wang |
| [KAFKA-9708](https://issues.apache.org/jira/browse/KAFKA-9708) | Connector does not prefer to use packaged classes during configuration |  Major | KafkaConnect | Greg Harris | Greg Harris |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9182](https://issues.apache.org/jira/browse/KAFKA-9182) | Flaky Test org.apache.kafka.streams.integration.KTableSourceTopicRestartIntegrationTest.shouldRestoreAndProgressWhenTopicWrittenToDuringRestorationWithEosEnabled |  Major | streams | Bill Bejeck |  |
| [KAFKA-10295](https://issues.apache.org/jira/browse/KAFKA-10295) | ConnectDistributedTest.test\_bounce should wait for graceful stop |  Minor | KafkaConnect | Greg Harris | Greg Harris |
| [KAFKA-10286](https://issues.apache.org/jira/browse/KAFKA-10286) | Connect system tests should wait for workers to join group |  Minor | KafkaConnect | Greg Harris | Greg Harris |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-8768](https://issues.apache.org/jira/browse/KAFKA-8768) | Replace DeleteRecords request/response with automated protocol |  Major | . | Mickael Maison | Tom Bentley |
| [KAFKA-8618](https://issues.apache.org/jira/browse/KAFKA-8618) | Replace WriteTxnMarkers request/response with automated protocol |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9435](https://issues.apache.org/jira/browse/KAFKA-9435) | Replace DescribeLogDirs request/response with automated protocol |  Major | . | Tom Bentley | Tom Bentley |
| [KAFKA-9441](https://issues.apache.org/jira/browse/KAFKA-9441) | Refactor commit logic |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-9451](https://issues.apache.org/jira/browse/KAFKA-9451) | Pass consumer group metadata to producer on commit |  Major | streams | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-9760](https://issues.apache.org/jira/browse/KAFKA-9760) | Add EOS protocol changes to documentation |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9719](https://issues.apache.org/jira/browse/KAFKA-9719) | Add System Test For ensuring the EOS-beta app would crash with broker downgrade |  Major | streams | Boyang Chen | Matthias J. Sax |
| [KAFKA-9748](https://issues.apache.org/jira/browse/KAFKA-9748) | Extend EOS integration test for EOS-beta |  Major | streams, unit tests | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-9433](https://issues.apache.org/jira/browse/KAFKA-9433) | Replace AlterConfigs request/response with automated protocol |  Major | . | Tom Bentley | Tom Bentley |
| [KAFKA-8436](https://issues.apache.org/jira/browse/KAFKA-8436) | Replace AddOffsetsToTxn request/response with automated protocol |  Major | . | Boyang Chen | Boyang Chen |
| [KAFKA-9832](https://issues.apache.org/jira/browse/KAFKA-9832) | Extend EOS system tests for EOS-beta |  Major | . | Matthias J. Sax | Matthias J. Sax |
| [KAFKA-4696](https://issues.apache.org/jira/browse/KAFKA-4696) | Streams standby task assignment should be state-store aware |  Major | streams | Damian Guy | A. Sophie Blee-Goldman |
| [KAFKA-4969](https://issues.apache.org/jira/browse/KAFKA-4969) | State-store workload-aware StreamsPartitionAssignor |  Major | streams | Matthias J. Sax |  |
| [KAFKA-9466](https://issues.apache.org/jira/browse/KAFKA-9466) | Add documentation for new stream EOS change |  Major | docs, streams | Boyang Chen | Matthias J. Sax |
| [KAFKA-10248](https://issues.apache.org/jira/browse/KAFKA-10248) | Drop idempotent KTable source updates |  Major | . | John Roesler | Richard Yu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KAFKA-9343](https://issues.apache.org/jira/browse/KAFKA-9343) | Add ps command for Kafka and zookeeper process on z/OS. |  Major | tools | Shuo Zhang | Shuo Zhang |
| [KAFKA-9670](https://issues.apache.org/jira/browse/KAFKA-9670) | Benchmark and optimize MetadataResponse preparation |  Major | . | Manikumar | Manikumar |
| [KAFKA-6342](https://issues.apache.org/jira/browse/KAFKA-6342) | Remove workaround for JSON parsing of non-escaped strings |  Major | core | Rajini Sivaram | Viktor Somogyi-Vass |
| [KAFKA-10003](https://issues.apache.org/jira/browse/KAFKA-10003) | Deprecate KStream#through in favor of KStream#repartition |  Major | streams | Levani Kokhreidze | Matthias J. Sax |
| [KAFKA-9392](https://issues.apache.org/jira/browse/KAFKA-9392) | Document and add test for deleteAcls that match single/multiple resources |  Major | security | Rajini Sivaram | Rajini Sivaram |
| [KAFKA-10064](https://issues.apache.org/jira/browse/KAFKA-10064) | Add documentation for KIP-571 |  Major | docs, streams | Boyang Chen | feyman |
| [KAFKA-10084](https://issues.apache.org/jira/browse/KAFKA-10084) | System test failure: StreamsEosTest.test\_failure\_and\_recovery\_complex |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10086](https://issues.apache.org/jira/browse/KAFKA-10086) | Standby state isn't always re-used when transitioning to active |  Blocker | streams | John Roesler | John Roesler |
| [KAFKA-8835](https://issues.apache.org/jira/browse/KAFKA-8835) | Update documentation for URP changes in KIP-352 |  Trivial | . | Jason Gustafson | Viktor Somogyi-Vass |
| [KAFKA-10185](https://issues.apache.org/jira/browse/KAFKA-10185) | Streams should log summarized restoration information at info level |  Major | streams | John Roesler | John Roesler |
| [KAFKA-10153](https://issues.apache.org/jira/browse/KAFKA-10153) | Error Reporting in Connect Documentation |  Major | documentation, KafkaConnect | Aakash Shah | Aakash Shah |


