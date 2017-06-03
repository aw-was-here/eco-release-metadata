
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
# Apache Flink Changelog

## Release 1.2.0 - 2017-02-02



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5221](https://issues.apache.org/jira/browse/FLINK-5221) | Checkpointed workless in Window Operator |  Major | DataStream API | Syinchwun Leo |  |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4180](https://issues.apache.org/jira/browse/FLINK-4180) | Create a batch SQL example |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4181](https://issues.apache.org/jira/browse/FLINK-4181) | Add a basic streaming Table API example |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-3940](https://issues.apache.org/jira/browse/FLINK-3940) | Add support for ORDER BY OFFSET FETCH |  Minor | Table API & SQL | Fabian Hueske | GaoLun |
| [FLINK-4359](https://issues.apache.org/jira/browse/FLINK-4359) | Add INTERVAL type |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3097](https://issues.apache.org/jira/browse/FLINK-3097) | Add support for custom functions in Table API |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4420](https://issues.apache.org/jira/browse/FLINK-4420) | Introduce star(\*) to select all of the columns in the table |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-3755](https://issues.apache.org/jira/browse/FLINK-3755) | Introduce key groups for key-value state to support dynamic scaling |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-3929](https://issues.apache.org/jira/browse/FLINK-3929) | Support for Kerberos Authentication with Keytab Credential |  Major | Security | Eron Wright | Vijay Srinivasaraghavan |
| [FLINK-3239](https://issues.apache.org/jira/browse/FLINK-3239) | Support for Kerberos enabled Kafka 0.9.0.0 |  Major | . | Niels Basjes | Vijay Srinivasaraghavan |
| [FLINK-3060](https://issues.apache.org/jira/browse/FLINK-3060) | Add possibility to integrate custom types into the TypeExtractor |  Minor | Type Serialization System | Timo Walther | Timo Walther |
| [FLINK-4546](https://issues.apache.org/jira/browse/FLINK-4546) |  Remove STREAM keyword in Stream SQL |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-3874](https://issues.apache.org/jira/browse/FLINK-3874) | Add a Kafka TableSink with JSON serialization |  Minor | Table API & SQL | Fabian Hueske | Ivan Mushketyk |
| [FLINK-3674](https://issues.apache.org/jira/browse/FLINK-3674) | Add an interface for Time aware User Functions |  Major | Streaming | Stephan Ewen | Aljoscha Krettek |
| [FLINK-4639](https://issues.apache.org/jira/browse/FLINK-4639) | Make Calcite features more pluggable |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4960](https://issues.apache.org/jira/browse/FLINK-4960) | Allow the AbstractStreamOperatorTestHarness to test scaling down |  Major | Tests | Kostas Kloudas | Kostas Kloudas |
| [FLINK-4294](https://issues.apache.org/jira/browse/FLINK-4294) | Allow access of composite type fields |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3932](https://issues.apache.org/jira/browse/FLINK-3932) | Implement State Backend Security |  Major | Security | Eron Wright | Vijay Srinivasaraghavan |
| [FLINK-4469](https://issues.apache.org/jira/browse/FLINK-4469) | Add support for user defined table function in Table API & SQL |  Blocker | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-4554](https://issues.apache.org/jira/browse/FLINK-4554) | Add support for array types |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4391](https://issues.apache.org/jira/browse/FLINK-4391) | Provide support for asynchronous operations over streams |  Major | DataStream API | Jamie Grier | david.wang |
| [FLINK-4861](https://issues.apache.org/jira/browse/FLINK-4861) | Package optional project artifacts |  Major | Build System | Greg Hogan | Greg Hogan |
| [FLINK-1984](https://issues.apache.org/jira/browse/FLINK-1984) | Integrate Flink with Apache Mesos |  Minor | Cluster Management, Mesos | Robert Metzger | Eron Wright |
| [FLINK-5265](https://issues.apache.org/jira/browse/FLINK-5265) | Introduce state handle replication mode for CheckpointCoordinator |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-3766](https://issues.apache.org/jira/browse/FLINK-3766) | Add a new tab for monitoring metrics in the web interface |  Major | Webfrontend | Robert Metzger |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-3904](https://issues.apache.org/jira/browse/FLINK-3904) | GlobalConfiguration doesn't ensure config has been loaded |  Minor | . | Maximilian Michels | Maximilian Michels |
| [FLINK-4179](https://issues.apache.org/jira/browse/FLINK-4179) | Update TPCHQuery3Table example |  Major | Table API & SQL | Timo Walther |  |
| [FLINK-4299](https://issues.apache.org/jira/browse/FLINK-4299) | Show loss of job manager in Client |  Major | Client | Ufuk Celebi | Maximilian Michels |
| [FLINK-4251](https://issues.apache.org/jira/browse/FLINK-4251) | Add possiblity for the RMQ Streaming Sink to customize the queue |  Minor | Streaming Connectors | Philipp Grulich |  |
| [FLINK-4203](https://issues.apache.org/jira/browse/FLINK-4203) | Improve Table API documentation |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4306](https://issues.apache.org/jira/browse/FLINK-4306) | Fix Flink and Storm dependencies in flink-storm and flink-storm-examples |  Major | Storm Compatibility | Stephan Ewen | Stephan Ewen |
| [FLINK-4161](https://issues.apache.org/jira/browse/FLINK-4161) | Quickstarts can exclude more flink-dist dependencies |  Trivial | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4308](https://issues.apache.org/jira/browse/FLINK-4308) | Allow uploaded jar directory to be configurable |  Minor | Webfrontend | Zhenzhong Xu |  |
| [FLINK-2090](https://issues.apache.org/jira/browse/FLINK-2090) | toString of CollectionInputFormat takes long time when the collection is huge |  Minor | . | Till Rohrmann | Ivan Mushketyk |
| [FLINK-4242](https://issues.apache.org/jira/browse/FLINK-4242) | Improve validation exception messages |  Minor | Table API & SQL | Till Rohrmann | GaoLun |
| [FLINK-4310](https://issues.apache.org/jira/browse/FLINK-4310) | Move BinaryCompatibility Check plugin to relevant projects |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-4366](https://issues.apache.org/jira/browse/FLINK-4366) | Enforce parallelism=1 For AllWindowedStream |  Major | . | Aljoscha Krettek | Jark Wu |
| [FLINK-4104](https://issues.apache.org/jira/browse/FLINK-4104) | Restructure Gelly docs |  Minor | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-4302](https://issues.apache.org/jira/browse/FLINK-4302) | Add JavaDocs to MetricConfig |  Major | Metrics | Ufuk Celebi | Chesnay Schepler |
| [FLINK-4281](https://issues.apache.org/jira/browse/FLINK-4281) | Wrap all Calcite Exceptions in Flink Exceptions |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4322](https://issues.apache.org/jira/browse/FLINK-4322) | Unify CheckpointCoordinator and SavepointCoordinator |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4189](https://issues.apache.org/jira/browse/FLINK-4189) | Introduce symbols for internal use |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4282](https://issues.apache.org/jira/browse/FLINK-4282) | Add Offset Parameter to WindowAssigners |  Major | Streaming | Aljoscha Krettek |  |
| [FLINK-4222](https://issues.apache.org/jira/browse/FLINK-4222) | Allow Kinesis configuration to get credentials from AWS Metadata |  Minor | Streaming Connectors | Nick Chadwick |  |
| [FLINK-3866](https://issues.apache.org/jira/browse/FLINK-3866) | StringArraySerializer claims type is immutable; shouldn't |  Minor | Core | Tatu Saloranta | Ivan Mushketyk |
| [FLINK-4435](https://issues.apache.org/jira/browse/FLINK-4435) | Replace Guava's VisibleForTesting annotation with Flink's annotation |  Major | . | Stephan Ewen | Jark Wu |
| [FLINK-4253](https://issues.apache.org/jira/browse/FLINK-4253) | Rename "recovery.mode" config key to "high-availability" |  Major | . | Ufuk Celebi | ramkrishna.s.vasudevan |
| [FLINK-4457](https://issues.apache.org/jira/browse/FLINK-4457) | Make the ExecutionGraph independent of Akka |  Major | Distributed Coordination | Till Rohrmann | Stephan Ewen |
| [FLINK-3899](https://issues.apache.org/jira/browse/FLINK-3899) | Document window processing with Reduce/FoldFunction + WindowFunction |  Major | Documentation, Streaming | Fabian Hueske | Daniel Blazevski |
| [FLINK-4525](https://issues.apache.org/jira/browse/FLINK-4525) | Drop the "eager split pre-assignment" code paths |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-4190](https://issues.apache.org/jira/browse/FLINK-4190) | Generalise RollingSink to work with arbitrary buckets |  Minor | filesystem-connector, Streaming Connectors | Josh Forman-Gornall | Josh Forman-Gornall |
| [FLINK-4539](https://issues.apache.org/jira/browse/FLINK-4539) | Duplicate/inconsistent logic for physical memory size in classes "Hardware" and "EnvironmentInformation" |  Minor | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-4340](https://issues.apache.org/jira/browse/FLINK-4340) | Remove RocksDB Semi-Async Checkpoint Mode |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4459](https://issues.apache.org/jira/browse/FLINK-4459) | Introduce SlotProvider for Scheduler |  Major | Scheduler | Till Rohrmann | Kurt Young |
| [FLINK-4599](https://issues.apache.org/jira/browse/FLINK-4599) | Add 'explain()' also to StreamTableEnvironment |  Major | Table API & SQL | Timo Walther | Simone Robutti |
| [FLINK-4625](https://issues.apache.org/jira/browse/FLINK-4625) | Guard Flink processes against blocking shutdown hooks |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4247](https://issues.apache.org/jira/browse/FLINK-4247) | CsvTableSource.getDataSet() expects Java ExecutionEnvironment |  Minor | Table API & SQL | Till Rohrmann | Timo Walther |
| [FLINK-4638](https://issues.apache.org/jira/browse/FLINK-4638) | Fix exception message for MemorySegment |  Trivial | Core | Liwei Lin(Inactive) |  |
| [FLINK-4268](https://issues.apache.org/jira/browse/FLINK-4268) | Add a parsers for BigDecimal/BigInteger |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-3670](https://issues.apache.org/jira/browse/FLINK-3670) | Kerberos: Improving long-running streaming jobs |  Major | Client, Local Runtime | Maximilian Michels | Vijay Srinivasaraghavan |
| [FLINK-3042](https://issues.apache.org/jira/browse/FLINK-3042) | Define a way to let types create their own TypeInformation |  Major | Core | Stephan Ewen | Timo Walther |
| [FLINK-4248](https://issues.apache.org/jira/browse/FLINK-4248) | CsvTableSource does not support reading SqlTimeTypeInfo types |  Major | Table API & SQL | Till Rohrmann | Timo Walther |
| [FLINK-4550](https://issues.apache.org/jira/browse/FLINK-4550) | Clearly define SQL operator table |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4549](https://issues.apache.org/jira/browse/FLINK-4549) | Test and document implicitly supported SQL functions |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4218](https://issues.apache.org/jira/browse/FLINK-4218) | Sporadic "java.lang.RuntimeException: Error triggering a checkpoint..." causes task restarting |  Major | . | Sergii Koshel | Stephan Ewen |
| [FLINK-4662](https://issues.apache.org/jira/browse/FLINK-4662) | Bump Calcite version up to 1.9 |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4241](https://issues.apache.org/jira/browse/FLINK-4241) | Cryptic expression parser exceptions |  Major | Table API & SQL | Till Rohrmann | Timo Walther |
| [FLINK-4684](https://issues.apache.org/jira/browse/FLINK-4684) | Remove obsolete classloader from CheckpointCoordinator |  Minor | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4560](https://issues.apache.org/jira/browse/FLINK-4560) | enforcer java version as 1.7 |  Major | . | shijinkui |  |
| [FLINK-4543](https://issues.apache.org/jira/browse/FLINK-4543) | Race Deadlock in SpilledSubpartitionViewTest |  Major | Network | Stephan Ewen | Stephan Ewen |
| [FLINK-4478](https://issues.apache.org/jira/browse/FLINK-4478) | Implement heartbeat logic |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4068](https://issues.apache.org/jira/browse/FLINK-4068) | Move constant computations out of code-generated \`flatMap\` functions. |  Major | Table API & SQL | Fabian Hueske | Jark Wu |
| [FLINK-4739](https://issues.apache.org/jira/browse/FLINK-4739) | Adding packaging details for the Elasticsearch connector |  Minor | Streaming Connectors | Steffen Hausmann |  |
| [FLINK-4737](https://issues.apache.org/jira/browse/FLINK-4737) | Add more compression algorithms to FileInputFormat |  Major | Core | Stephan Ewen |  |
| [FLINK-4728](https://issues.apache.org/jira/browse/FLINK-4728) | Replace reference equality with object equality |  Minor | Core, Optimizer | Greg Hogan | Greg Hogan |
| [FLINK-4751](https://issues.apache.org/jira/browse/FLINK-4751) | Extend Flink's futures to support combining two futures |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-4318](https://issues.apache.org/jira/browse/FLINK-4318) | Make master docs build target version-specific |  Major | Documentation | Ufuk Celebi | Maximilian Michels |
| [FLINK-4745](https://issues.apache.org/jira/browse/FLINK-4745) | Convert KafkaTableSource test to unit tests |  Major | Tests | Timo Walther | Timo Walther |
| [FLINK-4023](https://issues.apache.org/jira/browse/FLINK-4023) | Move Kafka consumer partition discovery from constructor to open() |  Minor | Kafka Connector | Michal Harish | Stefan Richter |
| [FLINK-4439](https://issues.apache.org/jira/browse/FLINK-4439) | Error message KafkaConsumer08 when all 'bootstrap.servers' are invalid |  Minor | Streaming Connectors | Gheorghe Gheorghe |  |
| [FLINK-2765](https://issues.apache.org/jira/browse/FLINK-2765) | Upgrade hbase version for hadoop-2 to 1.2 release |  Minor | . | Ted Yu | Fabian Hueske |
| [FLINK-4720](https://issues.apache.org/jira/browse/FLINK-4720) | Implement an archived version of the execution graph |  Major | JobManager, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4771](https://issues.apache.org/jira/browse/FLINK-4771) | Compression for AvroOutputFormat |  Major | Batch Connectors and Input/Output Formats | Lars Bachmann | Lars Bachmann |
| [FLINK-4723](https://issues.apache.org/jira/browse/FLINK-4723) | Unify behaviour of committed offsets to Kafka / ZK for Kafka 0.8 and 0.9 consumer |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-4792](https://issues.apache.org/jira/browse/FLINK-4792) | Update documentation - FlinkML/QuickStart Guide |  Trivial | Documentation | Thomas FOURNIER | Neelesh Srinivas Salian |
| [FLINK-4129](https://issues.apache.org/jira/browse/FLINK-4129) | Remove the example HITSAlgorithm |  Minor | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4780](https://issues.apache.org/jira/browse/FLINK-4780) | Ability to use UDP protocol in metrics-graphite |  Minor | Metrics | Maciej Prochniak | Chesnay Schepler |
| [FLINK-4772](https://issues.apache.org/jira/browse/FLINK-4772) | Store metrics in MetricStore as strings |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4775](https://issues.apache.org/jira/browse/FLINK-4775) | Simplify access to MetricStore |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4881](https://issues.apache.org/jira/browse/FLINK-4881) | Docker: Remove dependency on shared volumes |  Minor | Docker | Maximilian Michels | Maximilian Michels |
| [FLINK-4773](https://issues.apache.org/jira/browse/FLINK-4773) | Introduce an OperatorIOMetricGroup |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4924](https://issues.apache.org/jira/browse/FLINK-4924) | Simplify Operator Test Harness Constructors |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4892](https://issues.apache.org/jira/browse/FLINK-4892) | Snapshot TimerService using Key-Grouped State |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4579](https://issues.apache.org/jira/browse/FLINK-4579) | Add StateBackendFactory for RocksDB Backend |  Major | State Backends, Checkpointing | Aljoscha Krettek | Jark Wu |
| [FLINK-4037](https://issues.apache.org/jira/browse/FLINK-4037) | Introduce ArchivedExecutionGraph without any user classes |  Major | Webfrontend | Robert Metzger |  |
| [FLINK-4894](https://issues.apache.org/jira/browse/FLINK-4894) | Don't block on buffer request after broadcastEvent |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4715](https://issues.apache.org/jira/browse/FLINK-4715) | TaskManager should commit suicide after cancellation failure |  Major | Distributed Coordination | Till Rohrmann | Ufuk Celebi |
| [FLINK-4378](https://issues.apache.org/jira/browse/FLINK-4378) | Enable RollingSink to custom HDFS client configuration |  Major | filesystem-connector | Wenlong Lyu | Wenlong Lyu |
| [FLINK-4925](https://issues.apache.org/jira/browse/FLINK-4925) | Integrate meters into IOMetricGroups |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4245](https://issues.apache.org/jira/browse/FLINK-4245) | Metric naming improvements |  Major | Metrics | Stephan Ewen | Chesnay Schepler |
| [FLINK-4972](https://issues.apache.org/jira/browse/FLINK-4972) | CoordinatorShutdownTest relies on race condition for success |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4733](https://issues.apache.org/jira/browse/FLINK-4733) | Port WebFrontend to new metric system |  Major | Distributed Coordination, Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4445](https://issues.apache.org/jira/browse/FLINK-4445) | Ignore unmatched state when restoring from savepoint |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4923](https://issues.apache.org/jira/browse/FLINK-4923) | Expose input/output buffers and bufferPool usage as a metric for a Task |  Minor | Metrics | zhuhaifeng | zhuhaifeng |
| [FLINK-4996](https://issues.apache.org/jira/browse/FLINK-4996) | Make CrossHint @Public |  Trivial | Core | Greg Hogan | Greg Hogan |
| [FLINK-4943](https://issues.apache.org/jira/browse/FLINK-4943) | flink-mesos/ConfigConstants: Typo: YYARN -\> YARN |  Trivial | Documentation | Mischa Krüger | Mischa Krüger |
| [FLINK-4623](https://issues.apache.org/jira/browse/FLINK-4623) | Create Physical Execution Plan of a DataStream |  Major | Table API & SQL | Timo Walther | Anton Solovev |
| [FLINK-4876](https://issues.apache.org/jira/browse/FLINK-4876) | Allow web interface to be bound to a specific ip/interface/inetHost |  Minor | Webfrontend | Bram Vogelaar | Bram Vogelaar |
| [FLINK-5022](https://issues.apache.org/jira/browse/FLINK-5022) | Suppress RejectedExecutionException when the Executor is shut down |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-4975](https://issues.apache.org/jira/browse/FLINK-4975) | Add a limit for how much data may be buffered during checkpoint alignment |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5046](https://issues.apache.org/jira/browse/FLINK-5046) | Avoid redundant serialization when creating the TaskDeploymentDescriptor |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5012](https://issues.apache.org/jira/browse/FLINK-5012) | Provide Timestamp in TimelyFlatMapFunction |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5021](https://issues.apache.org/jira/browse/FLINK-5021) | Makes the ContinuousFileReaderOperator rescalable. |  Major | filesystem-connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-4939](https://issues.apache.org/jira/browse/FLINK-4939) | GenericWriteAheadSink: Decouple the creating from the committing subtask for a pending checkpoint |  Major | Cassandra Connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-4527](https://issues.apache.org/jira/browse/FLINK-4527) | Drop the "flinkAccumulators" from the Execution |  Major | JobManager | Stephan Ewen | Chesnay Schepler |
| [FLINK-4369](https://issues.apache.org/jira/browse/FLINK-4369) | EvictingWindowOperator Must Actually Evict Elements |  Blocker | Streaming | Aljoscha Krettek | Vishnu Viswanath |
| [FLINK-5054](https://issues.apache.org/jira/browse/FLINK-5054) | Make the BucketingSink rescalable. |  Major | filesystem-connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5123](https://issues.apache.org/jira/browse/FLINK-5123) | Add description how to do proper shading to Flink docs. |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3869](https://issues.apache.org/jira/browse/FLINK-3869) | WindowedStream.apply with FoldFunction is too restrictive |  Major | Streaming | Aljoscha Krettek | Yassine Marzougui |
| [FLINK-5124](https://issues.apache.org/jira/browse/FLINK-5124) | Support more temporal arithmetic |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5010](https://issues.apache.org/jira/browse/FLINK-5010) | Decouple the death watch parameters from the Akka ask timeout |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5000](https://issues.apache.org/jira/browse/FLINK-5000) | Rename Methods in ManagedInitializationContext |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3702](https://issues.apache.org/jira/browse/FLINK-3702) | DataStream API PojoFieldAccessor doesn't support nested POJOs |  Major | DataStream API | Robert Metzger | Gabor Gevay |
| [FLINK-4913](https://issues.apache.org/jira/browse/FLINK-4913) | Per-job Yarn clusters: include user jar in system class loader |  Major | Client, YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-5096](https://issues.apache.org/jira/browse/FLINK-5096) | Make the RollingSink rescalable. |  Major | filesystem-connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5168](https://issues.apache.org/jira/browse/FLINK-5168) | Scaladoc annotation link use [[]] instead of {@link} |  Major | Scala API | shijinkui |  |
| [FLINK-5181](https://issues.apache.org/jira/browse/FLINK-5181) | Add Tests in StateBackendTestBase that verify Default-Value Behaviour |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5026](https://issues.apache.org/jira/browse/FLINK-5026) | Rename TimelyFlatMap to Process |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4825](https://issues.apache.org/jira/browse/FLINK-4825) | Implement a RexExecutor that uses Flink's code generation |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4832](https://issues.apache.org/jira/browse/FLINK-4832) | Count/Sum 0 elements |  Major | Table API & SQL | Timo Walther | Anton Mushin |
| [FLINK-4260](https://issues.apache.org/jira/browse/FLINK-4260) | Allow SQL's LIKE ESCAPE |  Minor | Table API & SQL | Timo Walther | Leo Deng |
| [FLINK-5213](https://issues.apache.org/jira/browse/FLINK-5213) | Missing @Override in Task |  Trivial | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5194](https://issues.apache.org/jira/browse/FLINK-5194) | Log heartbeats on TRACE level |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5201](https://issues.apache.org/jira/browse/FLINK-5201) | Promote loaded config properties to INFO |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5196](https://issues.apache.org/jira/browse/FLINK-5196) | Don't log InputChannelDescriptor |  Major | JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5198](https://issues.apache.org/jira/browse/FLINK-5198) | Overwrite TaskState toString |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5199](https://issues.apache.org/jira/browse/FLINK-5199) | Improve logging of submitted job graph actions in HA case |  Major | . | Ufuk Celebi |  |
| [FLINK-5207](https://issues.apache.org/jira/browse/FLINK-5207) | Decrease HadoopFileSystem logging |  Major | . | Ufuk Celebi |  |
| [FLINK-5192](https://issues.apache.org/jira/browse/FLINK-5192) | Provide better log config templates |  Major | Distributed Coordination, JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4541](https://issues.apache.org/jira/browse/FLINK-4541) | Support for SQL NOT IN operator |  Major | Table API & SQL | Timo Walther | Alexander Shoshin |
| [FLINK-5169](https://issues.apache.org/jira/browse/FLINK-5169) | Make consumption of input channels fair |  Critical | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5185](https://issues.apache.org/jira/browse/FLINK-5185) | Decouple BatchTableSourceScan with TableSourceTable |  Minor | Table API & SQL | Kurt Young | jingzhang |
| [FLINK-5128](https://issues.apache.org/jira/browse/FLINK-5128) | Get Kafka partitions in FlinkKafkaProducer only if a partitioner is set |  Minor | Kafka Connector | Tzu-Li (Gordon) Tai | Renkai Ge |
| [FLINK-5146](https://issues.apache.org/jira/browse/FLINK-5146) | Improved resource cleanup in RocksDB keyed state backend |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5249](https://issues.apache.org/jira/browse/FLINK-5249) | description of datastream rescaling doesn't match the figure |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5259](https://issues.apache.org/jira/browse/FLINK-5259) | wrong execution environment in retry delays example |  Minor | . | David Anderson | David Anderson |
| [FLINK-5020](https://issues.apache.org/jira/browse/FLINK-5020) | Make the GenericWriteAheadSink rescalable. |  Major | Cassandra Connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5226](https://issues.apache.org/jira/browse/FLINK-5226) | Eagerly project unused attributes |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-5278](https://issues.apache.org/jira/browse/FLINK-5278) | Improve Task and checkpoint logging |  Minor | Distributed Coordination, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-4906](https://issues.apache.org/jira/browse/FLINK-4906) | Use constants for the name of system-defined metrics |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5211](https://issues.apache.org/jira/browse/FLINK-5211) | Include an example configuration for all reporters |  Major | Documentation, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5310](https://issues.apache.org/jira/browse/FLINK-5310) | Harden the RocksDB JNI library loading |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5163](https://issues.apache.org/jira/browse/FLINK-5163) | Make the production functions rescalable (apart from the Rolling/Bucketing Sinks) |  Major | . | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5145](https://issues.apache.org/jira/browse/FLINK-5145) | WebInterface to aggressive in pulling metrics |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5327](https://issues.apache.org/jira/browse/FLINK-5327) | Remove IOException from StateObject::getStateSize |  Minor | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5258](https://issues.apache.org/jira/browse/FLINK-5258) | reorganize the docs to improve navigation and reduce duplication |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-5240](https://issues.apache.org/jira/browse/FLINK-5240) | Properly Close StateBackend in StreamTask when closing/canceling |  Blocker | Streaming | Aljoscha Krettek | Maximilian Michels |
| [FLINK-5034](https://issues.apache.org/jira/browse/FLINK-5034) | Don't Write StateDescriptor to RocksDB Snapshot |  Blocker | Streaming | Aljoscha Krettek |  |
| [FLINK-5186](https://issues.apache.org/jira/browse/FLINK-5186) | Move Row and RowTypeInfo into Flink core |  Critical | Core, Table API & SQL | Anton Solovev |  |
| [FLINK-5266](https://issues.apache.org/jira/browse/FLINK-5266) | Eagerly project unused fields when selecting aggregation fields |  Major | Table API & SQL | Kurt Young | Kurt Young |
| [FLINK-5311](https://issues.apache.org/jira/browse/FLINK-5311) | Write user documentation for BipartiteGraph |  Major | Gelly | Ivan Mushketyk | Ivan Mushketyk |
| [FLINK-5366](https://issues.apache.org/jira/browse/FLINK-5366) | Add end-to-end tests for Savepoint Backwards Compatibility |  Blocker | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5367](https://issues.apache.org/jira/browse/FLINK-5367) | restore updates lost when merging recent doc refactoring |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-5412](https://issues.apache.org/jira/browse/FLINK-5412) | Enable RocksDB tests on Windows |  Major | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3615](https://issues.apache.org/jira/browse/FLINK-3615) | Add support for non-native SQL types |  Major | Table API & SQL | Vasia Kalavri |  |
| [FLINK-5280](https://issues.apache.org/jira/browse/FLINK-5280) | Refactor TableSource |  Major | Table API & SQL | Fabian Hueske | Ivan Mushketyk |
| [FLINK-5237](https://issues.apache.org/jira/browse/FLINK-5237) | Consolidate and harmonize Window Translation Tests |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5442](https://issues.apache.org/jira/browse/FLINK-5442) | Add test to fix ordinals of serialized enum StateDescriptor.Type |  Minor | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5466](https://issues.apache.org/jira/browse/FLINK-5466) | Make production environment default in gulpfile |  Major | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5421](https://issues.apache.org/jira/browse/FLINK-5421) | Explicit restore method in Snapshotable |  Major | . | Stefan Richter | Stefan Richter |
| [FLINK-5155](https://issues.apache.org/jira/browse/FLINK-5155) | Deprecate ValueStateDescriptor constructors with default value |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5250](https://issues.apache.org/jira/browse/FLINK-5250) | Make AbstractUdfStreamOperator aware of WrappingFunction |  Major | Streaming | Aljoscha Krettek | Stefan Richter |
| [FLINK-5448](https://issues.apache.org/jira/browse/FLINK-5448) | Fix typo in StateAssignmentOperation Exception |  Trivial | State Backends, Checkpointing | Ufuk Celebi |  |
| [FLINK-5438](https://issues.apache.org/jira/browse/FLINK-5438) | Typo in JobGraph generator Exception |  Trivial | Client | Ufuk Celebi |  |
| [FLINK-5485](https://issues.apache.org/jira/browse/FLINK-5485) | Mark compiled web frontend files as binary when processed by git diff |  Trivial | Webfrontend | Greg Hogan | Greg Hogan |
| [FLINK-5447](https://issues.apache.org/jira/browse/FLINK-5447) | Sync documentation of built-in functions for Table API with SQL |  Minor | Documentation, Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5512](https://issues.apache.org/jira/browse/FLINK-5512) | RabbitMQ documentation should inform that exactly-once holds for RMQSource only when parallelism is 1 |  Major | Documentation | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5377](https://issues.apache.org/jira/browse/FLINK-5377) | Improve savepoint docs |  Major | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5574](https://issues.apache.org/jira/browse/FLINK-5574) | Add checkpoint statistics docs |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5521](https://issues.apache.org/jira/browse/FLINK-5521) | remove unused KvStateRequestSerializer#serializeList |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5557](https://issues.apache.org/jira/browse/FLINK-5557) | Fix link in library methods |  Trivial | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-5424](https://issues.apache.org/jira/browse/FLINK-5424) | Improve Restart Strategy Logging |  Minor | Core | Shannon Carey | Shannon Carey |
| [FLINK-5113](https://issues.apache.org/jira/browse/FLINK-5113) | Make all Testing Functions implement CheckpointedFunction Interface. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5452](https://issues.apache.org/jira/browse/FLINK-5452) | Make table unit tests pass under cluster mode |  Major | Table API & SQL | Kurt Young | Kurt Young |
| [FLINK-5507](https://issues.apache.org/jira/browse/FLINK-5507) | remove queryable list state sink |  Major | State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-5515](https://issues.apache.org/jira/browse/FLINK-5515) | fix unused kvState.getSerializedValue call in KvStateServerHandler |  Major | . | Nico Kruber |  |
| [FLINK-5368](https://issues.apache.org/jira/browse/FLINK-5368) | Let Kafka consumer show something when it fails to read one topic out of topic list |  Critical | Kafka Connector | Sendoh | Sendoh |
| [FLINK-5528](https://issues.apache.org/jira/browse/FLINK-5528) | tests: reduce the retry delay in QueryableStateITCase |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5576](https://issues.apache.org/jira/browse/FLINK-5576) | extend deserialization functions of KvStateRequestSerializer to detect unconsumed bytes |  Minor | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5559](https://issues.apache.org/jira/browse/FLINK-5559) | queryable state: KvStateRequestSerializer#deserializeKeyAndNamespace() throws an IOException without own failure message if deserialisation fails |  Minor | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5508](https://issues.apache.org/jira/browse/FLINK-5508) | Remove Mesos dynamic class loading |  Minor | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5610](https://issues.apache.org/jira/browse/FLINK-5610) | Rename Installation and Setup to Project Setup |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5609](https://issues.apache.org/jira/browse/FLINK-5609) | Add last update time to docs |  Major | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5395](https://issues.apache.org/jira/browse/FLINK-5395) | support locally build distribution by script create\_release\_files.sh |  Major | Build System | shijinkui | shijinkui |
| [FLINK-4552](https://issues.apache.org/jira/browse/FLINK-4552) | Refactor WindowOperator/Trigger Tests |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5446](https://issues.apache.org/jira/browse/FLINK-5446) | System metrics reference incomplete |  Blocker | Documentation, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4396](https://issues.apache.org/jira/browse/FLINK-4396) | GraphiteReporter class not found at startup of jobmanager |  Major | Build System, Metrics | RWenden | Chesnay Schepler |
| [FLINK-5451](https://issues.apache.org/jira/browse/FLINK-5451) | Extend JMX metrics documentation section |  Major | Documentation, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5404](https://issues.apache.org/jira/browse/FLINK-5404) | Consolidate and update S3 documentation |  Minor | Documentation | Markus Dale |  |
| [FLINK-4611](https://issues.apache.org/jira/browse/FLINK-4611) | Make "AUTO" credential provider as default for Kinesis Connector |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Wei-Che Wei |
| [FLINK-5615](https://issues.apache.org/jira/browse/FLINK-5615) | queryable state: execute the QueryableStateITCase for all three state back-ends |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-4917](https://issues.apache.org/jira/browse/FLINK-4917) | Deprecate "CheckpointedAsynchronously" interface |  Major | Streaming | Stephan Ewen |  |
| [FLINK-5224](https://issues.apache.org/jira/browse/FLINK-5224) | Improve UDTF: emit rows directly instead of buffering them |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-4752](https://issues.apache.org/jira/browse/FLINK-4752) | Improve session window documentation |  Minor | Documentation | Till Rohrmann | Fabian Hueske |
| [FLINK-5480](https://issues.apache.org/jira/browse/FLINK-5480) | User-provided hashes for operators |  Major | DataStream API | Stefan Richter | Stefan Richter |
| [FLINK-5575](https://issues.apache.org/jira/browse/FLINK-5575) | in old releases, warn users and guide them to the latest stable docs |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-3347](https://issues.apache.org/jira/browse/FLINK-3347) | TaskManager (or its ActorSystem) need to restart in case they notice quarantine |  Critical | Distributed Coordination | Stephan Ewen | Till Rohrmann |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4259](https://issues.apache.org/jira/browse/FLINK-4259) | Unclosed FSDataOutputStream in FileCache#copy() |  Minor | . | Ted Yu | Neelesh Srinivas Salian |
| [FLINK-4289](https://issues.apache.org/jira/browse/FLINK-4289) | Source files have executable flag set |  Minor | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4296](https://issues.apache.org/jira/browse/FLINK-4296) | Scheduler accepts more tasks than it has task slots available |  Critical | Distributed Coordination, JobManager | Maximilian Michels | Till Rohrmann |
| [FLINK-4290](https://issues.apache.org/jira/browse/FLINK-4290) | CassandraConnectorTest deadlocks |  Critical | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-4298](https://issues.apache.org/jira/browse/FLINK-4298) | Clean up Storm Compatibility Dependencies |  Major | Storm Compatibility | Stephan Ewen | Stephan Ewen |
| [FLINK-4285](https://issues.apache.org/jira/browse/FLINK-4285) | Non-existing example in Flink quickstart setup documentation |  Minor | Documentation, Examples | Tzu-Li (Gordon) Tai | Stephan Ewen |
| [FLINK-4292](https://issues.apache.org/jira/browse/FLINK-4292) | HCatalog project incorrectly set up |  Critical | Batch Connectors and Input/Output Formats | Stephan Ewen | Stephan Ewen |
| [FLINK-4307](https://issues.apache.org/jira/browse/FLINK-4307) | Broken user-facing API for ListState |  Blocker | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-4219](https://issues.apache.org/jira/browse/FLINK-4219) | Quote PDSH opts in start-cluster.sh |  Major | Startup Shell Scripts | Greg Hogan | Greg Hogan |
| [FLINK-4314](https://issues.apache.org/jira/browse/FLINK-4314) | Test instability in JobManagerHAJobGraphRecoveryITCase.testJobPersistencyWhenJobManagerShutdown |  Major | . | Ufuk Celebi |  |
| [FLINK-4297](https://issues.apache.org/jira/browse/FLINK-4297) | Yarn client can't determine fat jar location if path contains spaces |  Major | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-4304](https://issues.apache.org/jira/browse/FLINK-4304) | Jar names that contain whitespace cause problems in web client |  Major | Web Client | Timo Walther | Timo Walther |
| [FLINK-3138](https://issues.apache.org/jira/browse/FLINK-3138) | Method References are not supported as lambda expressions |  Major | Core | Stephan Ewen | Timo Walther |
| [FLINK-4226](https://issues.apache.org/jira/browse/FLINK-4226) | Typo: Define Keys using Field Expressions example should use window and not reduce |  Trivial | Documentation | Ahmad Ragab |  |
| [FLINK-4276](https://issues.apache.org/jira/browse/FLINK-4276) | TextInputFormatTest.testNestedFileRead fails on Windows OS |  Trivial | Batch Connectors and Input/Output Formats, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4291](https://issues.apache.org/jira/browse/FLINK-4291) | No log entry for unscheduled reporters |  Trivial | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4332](https://issues.apache.org/jira/browse/FLINK-4332) | Savepoint Serializer mixed read()/readFully() |  Critical | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4333](https://issues.apache.org/jira/browse/FLINK-4333) | Name mixup in Savepoint versions |  Trivial | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4337](https://issues.apache.org/jira/browse/FLINK-4337) | Remove unnecessary Scala suffix from Hadoop1 artifact |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-4316](https://issues.apache.org/jira/browse/FLINK-4316) | Make flink-core independent of Hadoop |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-4342](https://issues.apache.org/jira/browse/FLINK-4342) | Fix dependencies of flink-connector-filesystem |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-4270](https://issues.apache.org/jira/browse/FLINK-4270) | 'as' in front of join does not work |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4236](https://issues.apache.org/jira/browse/FLINK-4236) | Flink Dashboard stops showing list of uploaded jars if main method cannot be looked up |  Major | Job-Submission | Gary Yao | Maximilian Michels |
| [FLINK-4385](https://issues.apache.org/jira/browse/FLINK-4385) | Union on Timestamp fields does not work |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4394](https://issues.apache.org/jira/browse/FLINK-4394) | RMQSource: The QueueName is not accessible to subclasses |  Major | Streaming Connectors | Dominik Bruhn | Dominik Bruhn |
| [FLINK-4309](https://issues.apache.org/jira/browse/FLINK-4309) | Potential null pointer dereference in DelegatingConfiguration#keySet() |  Minor | . | Ted Yu | Sunny T |
| [FLINK-4388](https://issues.apache.org/jira/browse/FLINK-4388) | Race condition during initialization of MemorySegmentFactory |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-4293](https://issues.apache.org/jira/browse/FLINK-4293) | Malformatted Apache Headers |  Minor | . | Stephan Ewen | Chesnay Schepler |
| [FLINK-4411](https://issues.apache.org/jira/browse/FLINK-4411) | [py] Chained dual input children are not properly propagated |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4412](https://issues.apache.org/jira/browse/FLINK-4412) | [py] Chaining does not properly handle broadcast variables |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4409](https://issues.apache.org/jira/browse/FLINK-4409) | class conflict between jsr305-1.3.9.jar and flink-shaded-hadoop2-1.1.1.jar |  Minor | Build System | Renkai Ge | Stephan Ewen |
| [FLINK-4021](https://issues.apache.org/jira/browse/FLINK-4021) | Problem of setting autoread for netty channel when more tasks sharing the same Tcp connection |  Major | Network | zhijiang | zhijiang |
| [FLINK-4425](https://issues.apache.org/jira/browse/FLINK-4425) | "Out Of Memory" during savepoint deserialization |  Major | State Backends, Checkpointing | Sergii Koshel |  |
| [FLINK-4454](https://issues.apache.org/jira/browse/FLINK-4454) | Lookups for JobManager address in config |  Minor | Client | Maximilian Michels | Maximilian Michels |
| [FLINK-4417](https://issues.apache.org/jira/browse/FLINK-4417) | Checkpoints should be subsumed by CheckpointID not, by timestamp |  Major | State Backends, Checkpointing | Stephan Ewen | ramkrishna.s.vasudevan |
| [FLINK-4453](https://issues.apache.org/jira/browse/FLINK-4453) | Scala code example in Window documentation shows Java |  Trivial | Documentation | Fabian Hueske | Jark Wu |
| [FLINK-4437](https://issues.apache.org/jira/browse/FLINK-4437) | Lock evasion around lastTriggeredCheckpoint may lead to lost updates to related fields |  Major | . | Ted Yu |  |
| [FLINK-4341](https://issues.apache.org/jira/browse/FLINK-4341) | Kinesis connector does not emit maximum watermark properly |  Blocker | Streaming Connectors | Scott Kidder | Tzu-Li (Gordon) Tai |
| [FLINK-4488](https://issues.apache.org/jira/browse/FLINK-4488) | Prevent cluster shutdown after job execution for non-detached jobs |  Minor | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-4486](https://issues.apache.org/jira/browse/FLINK-4486) | JobManager not fully running when yarn-session.sh finishes |  Major | YARN | Niels Basjes | Maximilian Michels |
| [FLINK-4526](https://issues.apache.org/jira/browse/FLINK-4526) | ApplicationClient: remove redundant proxy messages |  Major | YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-4271](https://issues.apache.org/jira/browse/FLINK-4271) | There is no way to set parallelism of operators produced by CoGroupedStreams |  Major | DataStream API | Wenlong Lyu | Jark Wu |
| [FLINK-4567](https://issues.apache.org/jira/browse/FLINK-4567) | Enhance SerializedThrowable to properly preserver cause chains |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-4566](https://issues.apache.org/jira/browse/FLINK-4566) | ProducerFailedException does not properly preserve Exception causes |  Major | Network | Stephan Ewen | Stephan Ewen |
| [FLINK-4570](https://issues.apache.org/jira/browse/FLINK-4570) | Scalastyle Maven plugin fails undeterministically |  Major | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-4073](https://issues.apache.org/jira/browse/FLINK-4073) | YARNSessionCapacitySchedulerITCase.testTaskManagerFailure failed on Travis |  Critical | Tests | Till Rohrmann | Maximilian Michels |
| [FLINK-4436](https://issues.apache.org/jira/browse/FLINK-4436) | Unclosed DataOutputBuffer in Utils#setTokensFor() |  Minor | . | Ted Yu |  |
| [FLINK-4522](https://issues.apache.org/jira/browse/FLINK-4522) | Gelly link broken in homepage |  Major | Documentation, Gelly | Vasia Kalavri | Greg Hogan |
| [FLINK-4257](https://issues.apache.org/jira/browse/FLINK-4257) | Handle delegating algorithm change of class |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4601](https://issues.apache.org/jira/browse/FLINK-4601) | Check for empty string properly |  Trivial | . | Alexander Pivovarov |  |
| [FLINK-4592](https://issues.apache.org/jira/browse/FLINK-4592) | Fix flaky test ScalarFunctionsTest.testCurrentTimePoint |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4626](https://issues.apache.org/jira/browse/FLINK-4626) | Missing break in MetricStore#add() |  Major | Metrics | Ted Yu | Chesnay Schepler |
| [FLINK-4612](https://issues.apache.org/jira/browse/FLINK-4612) | Close FileWriter using try with resources |  Trivial | Java API | Alexander Pivovarov |  |
| [FLINK-4622](https://issues.apache.org/jira/browse/FLINK-4622) | CLI help message should include 'savepoint' action |  Trivial | Client | Scott Kidder | Scott Kidder |
| [FLINK-4589](https://issues.apache.org/jira/browse/FLINK-4589) | Fix Merging of Covering Window in MergingWindowSet |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4081](https://issues.apache.org/jira/browse/FLINK-4081) | FieldParsers should support empty strings |  Major | Core | Flavio Pompermaier | Timo Walther |
| [FLINK-4594](https://issues.apache.org/jira/browse/FLINK-4594) | Validate lower bound in MathUtils.checkedDownCast |  Trivial | Core | Greg Hogan | Greg Hogan |
| [FLINK-4572](https://issues.apache.org/jira/browse/FLINK-4572) | Convert to negative in LongValueToIntValue |  Minor | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-4609](https://issues.apache.org/jira/browse/FLINK-4609) | Remove redundant check for null in CrossOperator |  Trivial | Java API | Alexander Pivovarov |  |
| [FLINK-4640](https://issues.apache.org/jira/browse/FLINK-4640) | Serialization of the initialValue of a Fold on WindowedStream fails |  Blocker | Streaming | Fabian Hueske | Stephan Ewen |
| [FLINK-4645](https://issues.apache.org/jira/browse/FLINK-4645) | Hard to register Kryo Serializers due to generics |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-4603](https://issues.apache.org/jira/browse/FLINK-4603) | KeyedStateBackend cannot restore user code classes |  Blocker | State Backends, Checkpointing | Till Rohrmann | Stefan Richter |
| [FLINK-4628](https://issues.apache.org/jira/browse/FLINK-4628) | User class loader unavailable during input split assignment |  Minor | JobManager | Maximilian Michels | Maximilian Michels |
| [FLINK-4666](https://issues.apache.org/jira/browse/FLINK-4666) | Make constants to be final in ParameterTool |  Trivial | Java API | Alexander Pivovarov |  |
| [FLINK-4665](https://issues.apache.org/jira/browse/FLINK-4665) | Remove boxing/unboxing to parse a primitive |  Trivial | Java API | Alexander Pivovarov |  |
| [FLINK-4663](https://issues.apache.org/jira/browse/FLINK-4663) | Flink JDBCOutputFormat logs wrong WARN message |  Minor | Batch Connectors and Input/Output Formats | Swapnil Chougule | Swapnil Chougule |
| [FLINK-4556](https://issues.apache.org/jira/browse/FLINK-4556) | Make Queryable State Key-Group Aware |  Blocker | Streaming | Aljoscha Krettek | Stefan Richter |
| [FLINK-4482](https://issues.apache.org/jira/browse/FLINK-4482) | numUnsuccessfulCheckpointsTriggers is accessed without holding triggerLock |  Minor | . | Ted Yu | Ted Yu |
| [FLINK-4485](https://issues.apache.org/jira/browse/FLINK-4485) | Finished jobs in yarn session fill /tmp filesystem |  Blocker | JobManager | Niels Basjes | Maximilian Michels |
| [FLINK-4672](https://issues.apache.org/jira/browse/FLINK-4672) | TaskManager accidentally decorates Kill messages |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-4590](https://issues.apache.org/jira/browse/FLINK-4590) | Some Table API tests are failing when debug lvl is set to DEBUG |  Major | Table API & SQL | Robert Metzger | Timo Walther |
| [FLINK-4252](https://issues.apache.org/jira/browse/FLINK-4252) | Table program cannot be compiled |  Major | Table API & SQL | Renkai Ge | Timo Walther |
| [FLINK-4671](https://issues.apache.org/jira/browse/FLINK-4671) | Table API can not be built |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4387](https://issues.apache.org/jira/browse/FLINK-4387) | Instability in KvStateClientTest.testClientServerIntegration() |  Major | . | Robert Metzger | Ufuk Celebi |
| [FLINK-4696](https://issues.apache.org/jira/browse/FLINK-4696) | Limit the number of Akka Dispatcher Threads in LocalMiniCluster |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4708](https://issues.apache.org/jira/browse/FLINK-4708) | Scope Mini Kerberos Cluster dependencies as test dependencies |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-4710](https://issues.apache.org/jira/browse/FLINK-4710) | Remove transitive Guice dependency from Hadoop |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-4711](https://issues.apache.org/jira/browse/FLINK-4711) | TaskManager can crash due to failing onPartitionStateUpdate call |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4702](https://issues.apache.org/jira/browse/FLINK-4702) | Kafka consumer must commit offsets asynchronously |  Blocker | Kafka Connector | Stephan Ewen | Stephan Ewen |
| [FLINK-4573](https://issues.apache.org/jira/browse/FLINK-4573) | Potential resource leak due to unclosed RandomAccessFile in TaskManagerLogHandler |  Minor | . | Ted Yu |  |
| [FLINK-4618](https://issues.apache.org/jira/browse/FLINK-4618) | FlinkKafkaConsumer09 should start from the next record on startup from offsets in Kafka |  Major | Kafka Connector | static-max |  |
| [FLINK-4624](https://issues.apache.org/jira/browse/FLINK-4624) | Gelly's summarization algorithm cannot deal with null vertex group values |  Major | Gelly | Till Rohrmann | Martin Junghanns |
| [FLINK-4732](https://issues.apache.org/jira/browse/FLINK-4732) | Maven junction plugin security threat |  Critical | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-4677](https://issues.apache.org/jira/browse/FLINK-4677) | Jars with no job executions produces NullPointerException in ClusterClient |  Minor | Client | Maximilian Michels | Maximilian Michels |
| [FLINK-4744](https://issues.apache.org/jira/browse/FLINK-4744) | Introduce usercode class loader to deserialize partitionable operator state |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-4700](https://issues.apache.org/jira/browse/FLINK-4700) | Harden the TimeProvider test |  Major | Tests | Kostas Kloudas | Stephan Ewen |
| [FLINK-4747](https://issues.apache.org/jira/browse/FLINK-4747) | Instability due to pending processing timers on operator close |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-4718](https://issues.apache.org/jira/browse/FLINK-4718) | Confusing label in Parallel Streams Diagram |  Trivial | Project Website | Neil Derraugh |  |
| [FLINK-4329](https://issues.apache.org/jira/browse/FLINK-4329) | Fix Streaming File Source Timestamps/Watermarks Handling |  Major | Streaming Connectors | Aljoscha Krettek | Kostas Kloudas |
| [FLINK-4709](https://issues.apache.org/jira/browse/FLINK-4709) | InputStreamFSInputWrapper does not close wrapped stream |  Major | Core | Holger Frydrych |  |
| [FLINK-4731](https://issues.apache.org/jira/browse/FLINK-4731) | HeapKeyedStateBackend restoring broken for scale-in |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-4777](https://issues.apache.org/jira/browse/FLINK-4777) | ContinuousFileMonitoringFunction may throw IOException when files are moved |  Critical | Streaming Connectors | Maximilian Michels | Maximilian Michels |
| [FLINK-4786](https://issues.apache.org/jira/browse/FLINK-4786) | BarrierBufferTest test instability |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-4788](https://issues.apache.org/jira/browse/FLINK-4788) | State backend class cannot be loaded, because fully qualified name converted to lower-case |  Blocker | State Backends, Checkpointing | Florian Koenig | Stephan Ewen |
| [FLINK-4311](https://issues.apache.org/jira/browse/FLINK-4311) | TableInputFormat fails when reused on next split |  Critical | . | Niels Basjes | Niels Basjes |
| [FLINK-4035](https://issues.apache.org/jira/browse/FLINK-4035) | Add Apache Kafka 0.10 connector |  Minor | Kafka Connector | Elias Levy | Robert Metzger |
| [FLINK-4418](https://issues.apache.org/jira/browse/FLINK-4418) | ClusterClient/ConnectionUtils#findConnectingAddress fails immediately if InetAddress.getLocalHost throws exception |  Major | Client | Shannon Carey | Shannon Carey |
| [FLINK-4793](https://issues.apache.org/jira/browse/FLINK-4793) | Using a local method with :: notation in Java 8 causes index out of bounds |  Major | . | Ted Dunning | Timo Walther |
| [FLINK-3706](https://issues.apache.org/jira/browse/FLINK-3706) | YARNSessionCapacitySchedulerITCase.testNonexistingQueue unstable |  Critical | YARN | Aljoscha Krettek | Robert Metzger |
| [FLINK-4140](https://issues.apache.org/jira/browse/FLINK-4140) | CheckpointCoordinator fails to discard completed checkpoint |  Major | State Backends, Checkpointing | Stefan Richter |  |
| [FLINK-4791](https://issues.apache.org/jira/browse/FLINK-4791) | Fix issues caused by expression reduction |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4774](https://issues.apache.org/jira/browse/FLINK-4774) | QueryScopeInfo scope concatenation broken |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4827](https://issues.apache.org/jira/browse/FLINK-4827) | The scala example of SQL on Streaming Tables  with wrong variable name in flink document |  Minor | Documentation | yuemeng |  |
| [FLINK-4564](https://issues.apache.org/jira/browse/FLINK-4564) | [metrics] Delimiter should be configured per reporter |  Major | Metrics | Chesnay Schepler | Anton Mushin |
| [FLINK-4108](https://issues.apache.org/jira/browse/FLINK-4108) | NPE in Row.productArity |  Major | Batch Connectors and Input/Output Formats, Type Serialization System | Martin Scholl | Timo Walther |
| [FLINK-4506](https://issues.apache.org/jira/browse/FLINK-4506) | CsvOutputFormat defaults allowNullValues to false, even though doc and declaration says true |  Minor | Batch Connectors and Input/Output Formats, Documentation | Michael Wong | Kirill Morozov |
| [FLINK-4586](https://issues.apache.org/jira/browse/FLINK-4586) | NumberSequenceIterator and Accumulator threading issue |  Minor | DataSet API | Johannes | Greg Hogan |
| [FLINK-4795](https://issues.apache.org/jira/browse/FLINK-4795) | CsvStringify crashes in case of tuple in tuple, t.e. ("a", True, (1,5)) |  Major | Python API | Yakov Goldberg | Chesnay Schepler |
| [FLINK-4805](https://issues.apache.org/jira/browse/FLINK-4805) | Stringify() crashes with Python3 (run with pyflink3) |  Major | Python API | Yakov Goldberg | Chesnay Schepler |
| [FLINK-4794](https://issues.apache.org/jira/browse/FLINK-4794) | partition\_by\_hash() crashes if no parameter is provided |  Major | Python API | Yakov Goldberg | Chesnay Schepler |
| [FLINK-4804](https://issues.apache.org/jira/browse/FLINK-4804) | Grouping.first() function usage fails |  Major | Python API | Yakov Goldberg | Chesnay Schepler |
| [FLINK-4784](https://issues.apache.org/jira/browse/FLINK-4784) | MetricQueryService actor name collision |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-3888](https://issues.apache.org/jira/browse/FLINK-3888) | Custom Aggregator with Convergence can't be registered directly with DeltaIteration |  Major | Local Runtime | Martin Liesenberg | Vasia Kalavri |
| [FLINK-4852](https://issues.apache.org/jira/browse/FLINK-4852) | ClassCastException when assigning Watermarks with TimeCharacteristic.ProcessingTime |  Major | Streaming | Maximilian Michels | Aljoscha Krettek |
| [FLINK-4581](https://issues.apache.org/jira/browse/FLINK-4581) | Table API throws "No suitable driver found for jdbc:calcite" |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4838](https://issues.apache.org/jira/browse/FLINK-4838) | remove STREAM keyword in StreamSQLExample |  Minor | Examples, Table API & SQL | Manu Zhang | Manu Zhang |
| [FLINK-4875](https://issues.apache.org/jira/browse/FLINK-4875) | operator name not correctly inferred |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4866](https://issues.apache.org/jira/browse/FLINK-4866) | Make Trigger.clear() Abstract to Enforce Implementation |  Major | Streaming | Aljoscha Krettek | Jark Wu |
| [FLINK-4879](https://issues.apache.org/jira/browse/FLINK-4879) | class KafkaTableSource should be public just like KafkaTableSink |  Minor | Kafka Connector, Table API & SQL | yuemeng |  |
| [FLINK-4862](https://issues.apache.org/jira/browse/FLINK-4862) | NPE on EventTimeSessionWindows with ContinuousEventTimeTrigger |  Major | DataStream API, Streaming | Manu Zhang | Manu Zhang |
| [FLINK-4824](https://issues.apache.org/jira/browse/FLINK-4824) | CliFrontend shows misleading error message when main() method returns before env.execute() |  Major | Client | Robert Metzger | Greg Hogan |
| [FLINK-4619](https://issues.apache.org/jira/browse/FLINK-4619) | JobManager does not answer to client when restore from savepoint fails |  Major | . | Maciej Prochniak |  |
| [FLINK-4907](https://issues.apache.org/jira/browse/FLINK-4907) | Add Test for Timers/State Provided by AbstractStreamOperator |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4544](https://issues.apache.org/jira/browse/FLINK-4544) | TaskManager metrics are vulnerable to custom JMX bean installation |  Major | Metrics | Stephan Ewen | Chesnay Schepler |
| [FLINK-4659](https://issues.apache.org/jira/browse/FLINK-4659) | Potential resource leak due to unclosed InputStream in SecurityContext#populateSystemSecurityProperties() |  Minor | . | Ted Yu | Neelesh Srinivas Salian |
| [FLINK-4932](https://issues.apache.org/jira/browse/FLINK-4932) | Don't let ExecutionGraph fail when in state Restarting |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4933](https://issues.apache.org/jira/browse/FLINK-4933) | ExecutionGraph.scheduleOrUpdateConsumers can fail the ExecutionGraph |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4887](https://issues.apache.org/jira/browse/FLINK-4887) | Replace ActorGateway by TaskManagerGateway interface |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-4845](https://issues.apache.org/jira/browse/FLINK-4845) | Fix Job Exceptions page |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4398](https://issues.apache.org/jira/browse/FLINK-4398) | Unstable test KvStateServerHandlerTest.testSimpleQuery |  Major | . | Kostas Kloudas | Ufuk Celebi |
| [FLINK-4945](https://issues.apache.org/jira/browse/FLINK-4945) | KafkaConsumer logs wrong warning about confirmation for unknown checkpoint |  Minor | Kafka Connector | Stefan Richter | Stefan Richter |
| [FLINK-4991](https://issues.apache.org/jira/browse/FLINK-4991) | TestTask hangs in testWatchDogInterruptsTask |  Major | Distributed Coordination | Ufuk Celebi |  |
| [FLINK-4743](https://issues.apache.org/jira/browse/FLINK-4743) | The sqrt/power function not accept the real data types. |  Major | Table API & SQL | Anton Mushin | Anton Solovev |
| [FLINK-4977](https://issues.apache.org/jira/browse/FLINK-4977) | Enum serialization does not work in all cases |  Minor | . | Sean Winard | Stephan Ewen |
| [FLINK-3813](https://issues.apache.org/jira/browse/FLINK-3813) | YARNSessionFIFOITCase.testDetachedMode failed on Travis |  Critical | . | Till Rohrmann | Maximilian Michels |
| [FLINK-4998](https://issues.apache.org/jira/browse/FLINK-4998) | ResourceManager fails when num task slots \> Yarn vcores |  Major | ResourceManager, YARN | Maximilian Michels | Maximilian Michels |
| [FLINK-5028](https://issues.apache.org/jira/browse/FLINK-5028) | Stream Tasks must not go through clean shutdown logic on cancellation |  Critical | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-5032](https://issues.apache.org/jira/browse/FLINK-5032) | CsvOutputFormatTest fails on Windows OS |  Major | Tests | Boris Osipov |  |
| [FLINK-5014](https://issues.apache.org/jira/browse/FLINK-5014) | RocksDBStateBackend misses good toString |  Major | . | Ufuk Celebi |  |
| [FLINK-5019](https://issues.apache.org/jira/browse/FLINK-5019) | Proper isRestored result for tasks that did not write state |  Major | . | Stefan Richter | Stefan Richter |
| [FLINK-5037](https://issues.apache.org/jira/browse/FLINK-5037) | Instability in AbstractUdfStreamOperatorLifecycleTest |  Major | Streaming | Aljoscha Krettek | Stefan Richter |
| [FLINK-5038](https://issues.apache.org/jira/browse/FLINK-5038) | Errors in the "cancelTask" method prevent closeables from being closed early |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-5027](https://issues.apache.org/jira/browse/FLINK-5027) | FileSource finishes successfully with a wrong path |  Major | DataStream API | Till Rohrmann | Kostas Kloudas |
| [FLINK-5033](https://issues.apache.org/jira/browse/FLINK-5033) | CEP operators don't properly advance time |  Minor | CEP | Till Rohrmann | Till Rohrmann |
| [FLINK-5040](https://issues.apache.org/jira/browse/FLINK-5040) | Set correct input channel types with eager scheduling |  Major | JobManager | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4177](https://issues.apache.org/jira/browse/FLINK-4177) | CassandraConnectorTest.testCassandraCommitter causing unstable builds |  Major | Cassandra Connector, Streaming Connectors | Robert Metzger | Chesnay Schepler |
| [FLINK-4801](https://issues.apache.org/jira/browse/FLINK-4801) | Input type inference is faulty with custom Tuples and RichFunctions |  Major | Type Serialization System | Timo Walther | Timo Walther |
| [FLINK-5057](https://issues.apache.org/jira/browse/FLINK-5057) | Cancellation timeouts are picked from wrong config |  Major | . | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5063](https://issues.apache.org/jira/browse/FLINK-5063) | State handles are not properly cleaned up for declined or expired checkpoints |  Critical | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-4263](https://issues.apache.org/jira/browse/FLINK-4263) | SQL's VALUES does not work properly |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5058](https://issues.apache.org/jira/browse/FLINK-5058) | taskManagerMemory attribute set wrong value in FlinkShell |  Major | Scala Shell | wyp |  |
| [FLINK-5056](https://issues.apache.org/jira/browse/FLINK-5056) | BucketingSink deletes valid data when checkpoint notification is slow. |  Major | filesystem-connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5071](https://issues.apache.org/jira/browse/FLINK-5071) | YARN: yarn.containers.vcores config not respected when checking for vcores |  Major | YARN | Gyula Fora | Maximilian Michels |
| [FLINK-4155](https://issues.apache.org/jira/browse/FLINK-4155) | Get Kafka producer partition info in open method instead of constructor |  Major | Kafka Connector | Gyula Fora | Tzu-Li (Gordon) Tai |
| [FLINK-5085](https://issues.apache.org/jira/browse/FLINK-5085) | Execute CheckpointCoodinator's state discard calls asynchronously |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5073](https://issues.apache.org/jira/browse/FLINK-5073) | ZooKeeperCompleteCheckpointStore executes blocking delete operation in ZooKeeper client thread |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5082](https://issues.apache.org/jira/browse/FLINK-5082) | Pull ExecutionService lifecycle management out of the JobManager |  Major | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-5143](https://issues.apache.org/jira/browse/FLINK-5143) | Add EXISTS to list of supported operators |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5149](https://issues.apache.org/jira/browse/FLINK-5149) | ContinuousEventTimeTrigger doesn't fire at the end of the window |  Major | Streaming | Maximilian Michels | Maximilian Michels |
| [FLINK-5075](https://issues.apache.org/jira/browse/FLINK-5075) | Kinesis consumer incorrectly determines shards as newly discovered when tested against Kinesalite |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5055](https://issues.apache.org/jira/browse/FLINK-5055) | Security feature crashes JM for certain Hadoop versions even though using no Kerberos |  Critical | Security | Till Rohrmann | Maximilian Michels |
| [FLINK-4667](https://issues.apache.org/jira/browse/FLINK-4667) | Yarn Session CLI not listening on correct ZK namespace when HA is enabled to use ZooKeeper backend |  Minor | Security, YARN | Vijay Srinivasaraghavan | Vijay Srinivasaraghavan |
| [FLINK-5112](https://issues.apache.org/jira/browse/FLINK-5112) | Remove unused accumulator code from ArchivedExecutionJobVertex |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4741](https://issues.apache.org/jira/browse/FLINK-4741) | WebRuntimeMonitor does not shut down all of it's threads (EventLoopGroups) on exit. |  Minor | Webfrontend | Joseph Sims | Roman Maier |
| [FLINK-4100](https://issues.apache.org/jira/browse/FLINK-4100) | RocksDBStateBackend#close() can throw NPE |  Trivial | State Backends, Checkpointing, Tests | Chesnay Schepler |  |
| [FLINK-5050](https://issues.apache.org/jira/browse/FLINK-5050) | JSON.org license is CatX |  Major | . | Ted Yu | Sergey\_Sokur |
| [FLINK-4872](https://issues.apache.org/jira/browse/FLINK-4872) | Type erasure problem exclusively on cluster execution |  Major | Core | Martin Junghanns | Timo Walther |
| [FLINK-5184](https://issues.apache.org/jira/browse/FLINK-5184) | Error result of compareSerialized in RowComparator class |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-5197](https://issues.apache.org/jira/browse/FLINK-5197) | Late JobStatusChanged messages can interfere with running jobs |  Minor | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-3680](https://issues.apache.org/jira/browse/FLINK-3680) | Remove or improve (not set) text in the Job Plan UI |  Major | Webfrontend | Jamie Grier | Ivan Mushketyk |
| [FLINK-5216](https://issues.apache.org/jira/browse/FLINK-5216) | CheckpointCoordinator's 'minPauseBetweenCheckpoints' refers to checkpoint start rather then checkpoint completion |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5218](https://issues.apache.org/jira/browse/FLINK-5218) | Eagerly close checkpoint streams on cancellation |  Critical | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5228](https://issues.apache.org/jira/browse/FLINK-5228) | LocalInputChannel re-trigger request and release deadlock |  Critical | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5209](https://issues.apache.org/jira/browse/FLINK-5209) | Fix TaskManager metrics |  Major | Webfrontend | Greg Hogan | Greg Hogan |
| [FLINK-5173](https://issues.apache.org/jira/browse/FLINK-5173) | Upgrade RocksDB dependency |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-5109](https://issues.apache.org/jira/browse/FLINK-5109) | Invalid Content-Encoding Header in REST API responses |  Major | Web Client, Webfrontend | Móger Tibor László |  |
| [FLINK-5248](https://issues.apache.org/jira/browse/FLINK-5248) | SavepointITCase doesn't catch savepoint restore failure |  Critical | Tests | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5261](https://issues.apache.org/jira/browse/FLINK-5261) | ScheduledDropwizardReporter does not properly clean up metrics |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5179](https://issues.apache.org/jira/browse/FLINK-5179) | MetricRegistry life-cycle issues with HA |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5275](https://issues.apache.org/jira/browse/FLINK-5275) | InputChanelDeploymentDescriptors throws misleading Exception if producer failed/cancelled |  Major | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5274](https://issues.apache.org/jira/browse/FLINK-5274) | LocalInputChannel throws NPE if partition reader is released |  Major | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5164](https://issues.apache.org/jira/browse/FLINK-5164) | Hadoop-compat IOFormat tests fail on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4563](https://issues.apache.org/jira/browse/FLINK-4563) | [metrics] scope caching not adjusted for multiple reporters |  Major | Metrics | Chesnay Schepler | Anton Mushin |
| [FLINK-5039](https://issues.apache.org/jira/browse/FLINK-5039) | Avro GenericRecord support is broken |  Blocker | Batch Connectors and Input/Output Formats | Bruno Dumon | Robert Metzger |
| [FLINK-5158](https://issues.apache.org/jira/browse/FLINK-5158) | Handle ZooKeeperCompletedCheckpointStore exceptions in CheckpointCoordinator |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5193](https://issues.apache.org/jira/browse/FLINK-5193) | Recovering all jobs fails completely if a single recovery fails |  Major | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-5285](https://issues.apache.org/jira/browse/FLINK-5285) | CancelCheckpointMarker flood when using at least once mode |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5206](https://issues.apache.org/jira/browse/FLINK-5206) | Flakey PythonPlanBinderTest |  Major | Python API | Nico Kruber | Chesnay Schepler |
| [FLINK-5147](https://issues.apache.org/jira/browse/FLINK-5147) | StreamingOperatorsITCase.testGroupedFoldOperation failed on Travis |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5114](https://issues.apache.org/jira/browse/FLINK-5114) | PartitionState update with finished execution fails |  Major | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4631](https://issues.apache.org/jira/browse/FLINK-4631) | NullPointerException during stream task cleanup |  Major | . | Avihai Berkovitz |  |
| [FLINK-5007](https://issues.apache.org/jira/browse/FLINK-5007) | Retain externalized checkpoint on suspension |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5326](https://issues.apache.org/jira/browse/FLINK-5326) | IllegalStateException: Bug in Netty consumer logic: reader queue got notified by partition about available data,  but none was available |  Major | Network | Robert Metzger | Ufuk Celebi |
| [FLINK-5330](https://issues.apache.org/jira/browse/FLINK-5330) | Harden KafkaConsumer08Test |  Minor | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-5002](https://issues.apache.org/jira/browse/FLINK-5002) | Lack of synchronization in LocalBufferPool#getNumberOfUsedBuffers |  Minor | . | Ted Yu | Roman Maier |
| [FLINK-5307](https://issues.apache.org/jira/browse/FLINK-5307) | Log configuration for every reporter |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5289](https://issues.apache.org/jira/browse/FLINK-5289) | NPE when using value state on non-keyed stream |  Major | Streaming | Timo Walther | Stefan Richter |
| [FLINK-5332](https://issues.apache.org/jira/browse/FLINK-5332) | Non-thread safe FileSystem::initOutPathLocalFS() can cause lost files/directories in local execution |  Critical | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-5097](https://issues.apache.org/jira/browse/FLINK-5097) | The TypeExtractor is missing input type information in some Graph methods |  Major | Gelly | Vasia Kalavri | Vasia Kalavri |
| [FLINK-5011](https://issues.apache.org/jira/browse/FLINK-5011) | TraversableSerializer does not perform a deep copy of the elements it is traversing |  Blocker | Core, Scala API | Dan Bress | Timo Walther |
| [FLINK-2821](https://issues.apache.org/jira/browse/FLINK-2821) | Change Akka configuration to allow accessing actors from different URLs |  Major | Distributed Coordination | Robert Metzger | Maximilian Michels |
| [FLINK-5344](https://issues.apache.org/jira/browse/FLINK-5344) | docs don't build in dockerized jekyll; -p option is broken |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-4973](https://issues.apache.org/jira/browse/FLINK-4973) | Flakey Yarn tests due to recently added latency marker |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-5369](https://issues.apache.org/jira/browse/FLINK-5369) | Rework jsr305 and logging dependencies |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-5016](https://issues.apache.org/jira/browse/FLINK-5016) | EventTimeWindowCheckpointingITCase testTumblingTimeWindowWithKVStateMaxMaxParallelism with RocksDB hangs |  Major | State Backends, Checkpointing, Tests | Ufuk Celebi |  |
| [FLINK-5162](https://issues.apache.org/jira/browse/FLINK-5162) | BlobRecoveryItCase#testBlobServerRecovery fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5382](https://issues.apache.org/jira/browse/FLINK-5382) | Taskmanager log download button causes 404 |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-4255](https://issues.apache.org/jira/browse/FLINK-4255) | Unstable test WebRuntimeMonitorITCase.testNoEscape |  Major | . | Kostas Kloudas | Boris Osipov |
| [FLINK-4870](https://issues.apache.org/jira/browse/FLINK-4870) | ContinuousFileMonitoringFunction does not properly handle absolut Windows paths |  Minor | Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5323](https://issues.apache.org/jira/browse/FLINK-5323) | CheckpointNotifier should be removed from docs |  Trivial | Documentation | Abhishek Singh |  |
| [FLINK-5349](https://issues.apache.org/jira/browse/FLINK-5349) | Fix code sample for Twitter connector |  Major | . | Ivan Mushketyk | Ivan Mushketyk |
| [FLINK-5160](https://issues.apache.org/jira/browse/FLINK-5160) | SecurityContextTest#testCreateInsecureHadoopCtx fails on windows |  Major | Security, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5392](https://issues.apache.org/jira/browse/FLINK-5392) | flink-dist build failed when change scala version to 2.11 |  Major | Build System | 刘喆 |  |
| [FLINK-5408](https://issues.apache.org/jira/browse/FLINK-5408) | RocksDB initialization can fail with an UnsatisfiedLinkError in the presence of multiple classloaders |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4890](https://issues.apache.org/jira/browse/FLINK-4890) | FileInputFormatTest#testExcludeFiles fails on Windows OS |  Major | Batch Connectors and Input/Output Formats | Chesnay Schepler | Stephan Ewen |
| [FLINK-5397](https://issues.apache.org/jira/browse/FLINK-5397) | Fail to deserialize savepoints in v1.1 when there exist missing fields in class serialization descriptors |  Major | State Backends, Checkpointing | Xiaogang Shi | Stefan Richter |
| [FLINK-4148](https://issues.apache.org/jira/browse/FLINK-4148) | incorrect calculation distance in QuadTree |  Trivial | Machine Learning Library | Alexey Diomin |  |
| [FLINK-5119](https://issues.apache.org/jira/browse/FLINK-5119) | Last taskmanager heartbeat not showing in web frontend |  Major | Webfrontend | Ufuk Celebi | Sachin Goel |
| [FLINK-5381](https://issues.apache.org/jira/browse/FLINK-5381) | Scrolling in some web interface pages doesn't work (taskmanager details, jobmanager config) |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-5359](https://issues.apache.org/jira/browse/FLINK-5359) | Job Exceptions view doesn't scroll |  Major | Webfrontend | Eron Wright | Sachin Goel |
| [FLINK-5267](https://issues.apache.org/jira/browse/FLINK-5267) | TaskManager logs not scrollable |  Major | Webfrontend | Mischa Krüger | Sachin Goel |
| [FLINK-5357](https://issues.apache.org/jira/browse/FLINK-5357) | WordCountTable fails |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5418](https://issues.apache.org/jira/browse/FLINK-5418) | Estimated row size does not support nested types |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5320](https://issues.apache.org/jira/browse/FLINK-5320) | Fix result TypeInformation in WindowedStream.fold(ACC, FoldFunction, WindowFunction) |  Blocker | Streaming | Yassine Marzougui | Yassine Marzougui |
| [FLINK-5364](https://issues.apache.org/jira/browse/FLINK-5364) | Rework JAAS configuration to support user-supplied entries |  Critical | Cluster Management | Eron Wright | Eron Wright |
| [FLINK-5361](https://issues.apache.org/jira/browse/FLINK-5361) | Flink shouldn't require Kerberos credentials |  Major | Client | Eron Wright | Eron Wright |
| [FLINK-5350](https://issues.apache.org/jira/browse/FLINK-5350) | Don't overwrite existing Jaas config property |  Major | Security | Maximilian Michels | Maximilian Michels |
| [FLINK-5427](https://issues.apache.org/jira/browse/FLINK-5427) | Typo in the event\_timestamps\_watermarks doc |  Minor | Documentation | Yelei Feng |  |
| [FLINK-5379](https://issues.apache.org/jira/browse/FLINK-5379) | Flink CliFrontend does not return when not logged in with kerberos |  Major | Client | Robert Metzger | Eron Wright |
| [FLINK-5444](https://issues.apache.org/jira/browse/FLINK-5444) | Flink UI uses absolute URLs. |  Major | . | Joerg Schad | Joerg Schad |
| [FLINK-5407](https://issues.apache.org/jira/browse/FLINK-5407) | Savepoint for iterative Task fails. |  Major | State Backends, Checkpointing | Stephan Ewen | Stefan Richter |
| [FLINK-5296](https://issues.apache.org/jira/browse/FLINK-5296) | Expose the old AlignedWindowOperators to the user through explicit commands. |  Blocker | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5467](https://issues.apache.org/jira/browse/FLINK-5467) | Stateless chained tasks set legacy operator state |  Major | State Backends, Checkpointing | Ufuk Celebi | Stefan Richter |
| [FLINK-5443](https://issues.apache.org/jira/browse/FLINK-5443) | Create a path to migrate from the Rolling to the BucketingSink. |  Major | filesystem-connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-4941](https://issues.apache.org/jira/browse/FLINK-4941) | Show ship strategy in web interface |  Major | Webfrontend | Robert Metzger | Robert Metzger |
| [FLINK-5345](https://issues.apache.org/jira/browse/FLINK-5345) | IOManager failed to properly clean up temp file directory |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-5394](https://issues.apache.org/jira/browse/FLINK-5394) | the estimateRowCount method of DataSetCalc didn't work in TableAPI |  Major | Table API & SQL | jingzhang | jingzhang |
| [FLINK-5144](https://issues.apache.org/jira/browse/FLINK-5144) | Error while applying rule AggregateJoinTransposeRule |  Major | Table API & SQL | Timo Walther | Kurt Young |
| [FLINK-5518](https://issues.apache.org/jira/browse/FLINK-5518) | HadoopInputFormat throws NPE when close() is called before open() |  Major | Batch Connectors and Input/Output Formats | Jakub Havlik | Jakub Havlik |
| [FLINK-5484](https://issues.apache.org/jira/browse/FLINK-5484) | Kryo serialization changed between 1.1 and 1.2 |  Major | Type Serialization System | Ufuk Celebi |  |
| [FLINK-5560](https://issues.apache.org/jira/browse/FLINK-5560) | Header in checkpoint stats summary misaligned |  Minor | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5556](https://issues.apache.org/jira/browse/FLINK-5556) | BarrierBuffer resets bytes written on spiller roll over |  Minor | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5531](https://issues.apache.org/jira/browse/FLINK-5531) | SSl code block formatting is broken |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5150](https://issues.apache.org/jira/browse/FLINK-5150) | WebUI metric-related resource leak |  Critical | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5432](https://issues.apache.org/jira/browse/FLINK-5432) | ContinuousFileMonitoringFunction is not monitoring nested files |  Major | filesystem-connector | Yassine Marzougui | Yassine Marzougui |
| [FLINK-5380](https://issues.apache.org/jira/browse/FLINK-5380) | Number of outgoing records not reported in web interface |  Blocker | Metrics, Streaming, Webfrontend | Robert Metzger | Chesnay Schepler |
| [FLINK-5329](https://issues.apache.org/jira/browse/FLINK-5329) | Metric list is being cut off in the WebFrontend |  Blocker | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5434](https://issues.apache.org/jira/browse/FLINK-5434) | Remove unsupported project() transformation from Scala DataStream docs |  Minor | Documentation | Vasia Kalavri | GaoLun |
| [FLINK-5419](https://issues.apache.org/jira/browse/FLINK-5419) | Taskmanager metrics not accessible via REST |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5321](https://issues.apache.org/jira/browse/FLINK-5321) | FlinkMiniCluster does not start Jobmanager MetricQueryService |  Major | JobManager, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5493](https://issues.apache.org/jira/browse/FLINK-5493) | FlinkDistributionOverlay does not properly display missing environment variables |  Minor | Cluster Management | Till Rohrmann | Boris Osipov |
| [FLINK-5482](https://issues.apache.org/jira/browse/FLINK-5482) | QueryableStateClient does not recover from a failed lookup due to a non-running job |  Major | . | Nico Kruber | Nico Kruber |
| [FLINK-5561](https://issues.apache.org/jira/browse/FLINK-5561) | DataInputDeserializer#available returns one too few |  Major | . | Nico Kruber | Nico Kruber |
| [FLINK-5468](https://issues.apache.org/jira/browse/FLINK-5468) | Restoring from a semi async rocksdb statebackend (1.1) to 1.2 fails with ClassNotFoundException |  Major | State Backends, Checkpointing | Robert Metzger | Stefan Richter |
| [FLINK-5549](https://issues.apache.org/jira/browse/FLINK-5549) | TypeExtractor fails with RuntimeException, but should use GenericTypeInfo |  Major | Type Serialization System | Robert Metzger | Timo Walther |
| [FLINK-5580](https://issues.apache.org/jira/browse/FLINK-5580) | Kerberos keytabs not working for YARN deployment mode |  Critical | Security, YARN | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-5483](https://issues.apache.org/jira/browse/FLINK-5483) | Link to "linking modules not contained in binary distribution" broken in all connector documentations |  Major | Documentation | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-2662](https://issues.apache.org/jira/browse/FLINK-2662) | CompilerException: "Bug: Plan generation for Unions picked a ship strategy between binary plan operators." |  Critical | Optimizer | Gabor Gevay | Fabian Hueske |
| [FLINK-5585](https://issues.apache.org/jira/browse/FLINK-5585) | NullPointer Exception in JobManager.updateAccumulators |  Major | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-5530](https://issues.apache.org/jira/browse/FLINK-5530) | race condition in AbstractRocksDBState#getSerializedValue |  Blocker | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5495](https://issues.apache.org/jira/browse/FLINK-5495) | ZooKeeperMesosWorkerStore cannot be instantiated |  Critical | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5496](https://issues.apache.org/jira/browse/FLINK-5496) | ClassCastException when using Mesos HA mode |  Critical | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-4829](https://issues.apache.org/jira/browse/FLINK-4829) | Accumulators are not thread safe |  Major | Local Runtime | Till Rohrmann | Maximilian Michels |
| [FLINK-5504](https://issues.apache.org/jira/browse/FLINK-5504) | mesos-appmaster.sh logs to wrong directory |  Minor | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5532](https://issues.apache.org/jira/browse/FLINK-5532) | Make the marker WindowAssigners for the fast aligned windows non-extendable. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5562](https://issues.apache.org/jira/browse/FLINK-5562) | Driver fixes |  Major | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-5118](https://issues.apache.org/jira/browse/FLINK-5118) | Inconsistent records sent/received metrics |  Major | Metrics, Webfrontend | Ufuk Celebi | Chesnay Schepler |
| [FLINK-5450](https://issues.apache.org/jira/browse/FLINK-5450) | WindowOperator logs about "re-registering state from an older Flink version" even though its not a restored window |  Major | DataStream API | Robert Metzger | Kostas Kloudas |
| [FLINK-5365](https://issues.apache.org/jira/browse/FLINK-5365) | Mesos AppMaster/TaskManager should obey sigterm |  Minor | Cluster Management, Mesos | Eron Wright | Eron Wright |
| [FLINK-5298](https://issues.apache.org/jira/browse/FLINK-5298) | TaskManager crashes when TM log not existant |  Major | Distributed Coordination, Mesos, Webfrontend | Mischa Krüger | Chesnay Schepler |
| [FLINK-5464](https://issues.apache.org/jira/browse/FLINK-5464) | MetricQueryService throws NullPointerException on JobManager |  Major | Metrics, Webfrontend | Robert Metzger | Chesnay Schepler |
| [FLINK-5613](https://issues.apache.org/jira/browse/FLINK-5613) | QueryableState: requesting a non-existing key in RocksDBStateBackend is not consistent with the MemoryStateBackend and FsStateBackend |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5375](https://issues.apache.org/jira/browse/FLINK-5375) | Fix watermark documentation |  Critical | Documentation, Project Website | Fabian Hueske | Tzu-Li (Gordon) Tai |
| [FLINK-5214](https://issues.apache.org/jira/browse/FLINK-5214) | Clean up checkpoint files when failing checkpoint operation on TM |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5229](https://issues.apache.org/jira/browse/FLINK-5229) | Cleanup StreamTaskStates if a checkpoint operation of a subsequent operator fails |  Major | Distributed Coordination, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5617](https://issues.apache.org/jira/browse/FLINK-5617) | Check new public APIs in 1.2 release |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-5292](https://issues.apache.org/jira/browse/FLINK-5292) | Make the operators for 1.1-\>1.2 backwards compatible. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5473](https://issues.apache.org/jira/browse/FLINK-5473) | setMaxParallelism() higher than 1 is possible on non-parallel operators |  Major | DataStream API | Robert Metzger | Stefan Richter |
| [FLINK-5247](https://issues.apache.org/jira/browse/FLINK-5247) | Fix incorrect check in allowedLateness() method. Make it a no-op for non-event time windows. |  Major | Streaming | Rohit Agarwal |  |
| [FLINK-5492](https://issues.apache.org/jira/browse/FLINK-5492) | BootstrapTools log wrong address of started ActorSystem |  Minor | . | Till Rohrmann | Till Rohrmann |
| [FLINK-5643](https://issues.apache.org/jira/browse/FLINK-5643) | StateUtil.discardStateFuture fails when state future contains null value |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-5638](https://issues.apache.org/jira/browse/FLINK-5638) | Deadlock when closing two chained async I/O operators |  Major | Local Runtime | Till Rohrmann | Till Rohrmann |
| [FLINK-5626](https://issues.apache.org/jira/browse/FLINK-5626) | Improve resource release in RocksDBKeyedStateBackend |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5602](https://issues.apache.org/jira/browse/FLINK-5602) | Migration with RocksDB job led to NPE for next checkpoint |  Major | . | Ufuk Celebi | Stefan Richter |
| [FLINK-5637](https://issues.apache.org/jira/browse/FLINK-5637) | Default Flink configuration contains whitespace characters, causing parser WARNings |  Major | . | Robert Metzger | Robert Metzger |
| [FLINK-5612](https://issues.apache.org/jira/browse/FLINK-5612) | GlobPathFilter not-serializable exception |  Blocker | Batch Connectors and Input/Output Formats | Chesnay Schepler | Ivan Mushketyk |
| [FLINK-5660](https://issues.apache.org/jira/browse/FLINK-5660) | Not properly cleaning PendingCheckpoints up |  Major | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5670](https://issues.apache.org/jira/browse/FLINK-5670) | Local RocksDB directories not cleaned up |  Minor | State Backends, Checkpointing | Ufuk Celebi | Aljoscha Krettek |
| [FLINK-5667](https://issues.apache.org/jira/browse/FLINK-5667) | Possible state data loss when task fails while checkpointing |  Blocker | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-5663](https://issues.apache.org/jira/browse/FLINK-5663) | Checkpoint fails because of closed registry |  Major | State Backends, Checkpointing | Ufuk Celebi | Stefan Richter |
| [FLINK-3918](https://issues.apache.org/jira/browse/FLINK-3918) | Not configuring any time characteristic leads to a ClassCastException |  Major | DataStream API | Robert Metzger | Aljoscha Krettek |
| [FLINK-4651](https://issues.apache.org/jira/browse/FLINK-4651) | Re-register processing time timers at the WindowOperator upon recovery. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5796](https://issues.apache.org/jira/browse/FLINK-5796) | broken links in the docs |  Major | Documentation | Nico Kruber |  |
| [FLINK-5048](https://issues.apache.org/jira/browse/FLINK-5048) | Kafka Consumer (0.9/0.10) threading model leads problematic cancellation behavior |  Blocker | Kafka Connector | Stephan Ewen | Stephan Ewen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5587](https://issues.apache.org/jira/browse/FLINK-5587) | AsyncWaitOperatorTest timed out on Travis |  Major | DataStream API, Local Runtime | Ufuk Celebi |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4312](https://issues.apache.org/jira/browse/FLINK-4312) | Remove Serializabiliy of ExecutionGraph |  Minor | JobManager | Stephan Ewen | Stephan Ewen |
| [FLINK-4320](https://issues.apache.org/jira/browse/FLINK-4320) | Fix misleading ScheduleMode names |  Minor | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4392](https://issues.apache.org/jira/browse/FLINK-4392) | Make RPC Service Thread Safe |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4403](https://issues.apache.org/jira/browse/FLINK-4403) | RPC proxy classloading should use Flink class' classloader |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4434](https://issues.apache.org/jira/browse/FLINK-4434) | Add a testing RPC service |  Major | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-4380](https://issues.apache.org/jira/browse/FLINK-4380) | Introduce KeyGroupAssigner and Max-Parallelism Parameter |  Major | Streaming | Aljoscha Krettek | Stefan Richter |
| [FLINK-4381](https://issues.apache.org/jira/browse/FLINK-4381) | Refactor State to Prepare For Key-Group State Backends |  Major | Streaming | Aljoscha Krettek | Stefan Richter |
| [FLINK-3761](https://issues.apache.org/jira/browse/FLINK-3761) | Refactor State Backends/Make Keyed State Key-Group Aware |  Major | State Backends, Checkpointing | Till Rohrmann | Aljoscha Krettek |
| [FLINK-4490](https://issues.apache.org/jira/browse/FLINK-4490) | Decouple Slot and Instance |  Major | Distributed Coordination | Kurt Young | Stephan Ewen |
| [FLINK-4389](https://issues.apache.org/jira/browse/FLINK-4389) | Expose metrics to Webfrontend |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4750](https://issues.apache.org/jira/browse/FLINK-4750) | Ensure that active processing time triggers complete before closing operators |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-4749](https://issues.apache.org/jira/browse/FLINK-4749) | Remove redundant processing time timers and futures in the window operator |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-4748](https://issues.apache.org/jira/browse/FLINK-4748) | Fix shutdown of automatic watermark context |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-3660](https://issues.apache.org/jira/browse/FLINK-3660) | Measure latency of elements and expose it as a metric |  Major | Metrics, Streaming | Robert Metzger | Robert Metzger |
| [FLINK-4324](https://issues.apache.org/jira/browse/FLINK-4324) | Enable Akka SSL |  Major | . | Suresh Krishnappa | Suresh Krishnappa |
| [FLINK-4325](https://issues.apache.org/jira/browse/FLINK-4325) | Implement Web UI HTTPS |  Major | . | Suresh Krishnappa | Suresh Krishnappa |
| [FLINK-4404](https://issues.apache.org/jira/browse/FLINK-4404) | Implement Data Transfer SSL |  Major | . | Suresh Krishnappa | Suresh Krishnappa |
| [FLINK-4405](https://issues.apache.org/jira/browse/FLINK-4405) | Implement Blob Server SSL |  Major | . | Suresh Krishnappa | Suresh Krishnappa |
| [FLINK-4509](https://issues.apache.org/jira/browse/FLINK-4509) | Specify savepoint directory per savepoint |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4507](https://issues.apache.org/jira/browse/FLINK-4507) | Deprecate savepoint backend config |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4512](https://issues.apache.org/jira/browse/FLINK-4512) | Add option for persistent checkpoints |  Major | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4877](https://issues.apache.org/jira/browse/FLINK-4877) | Refactorings around FLINK-3674 (User Function Timers) |  Major | Streaming | Aljoscha Krettek |  |
| [FLINK-3202](https://issues.apache.org/jira/browse/FLINK-3202) | Make Timer/Trigger Service Scoped to Key/Namespace |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-3950](https://issues.apache.org/jira/browse/FLINK-3950) | Add Meter Metric Type |  Major | Core, Metrics | Stephan Ewen | Ivan Mushketyk |
| [FLINK-4510](https://issues.apache.org/jira/browse/FLINK-4510) | Always create CheckpointCoordinator |  Major | State Backends, Checkpointing | Ufuk Celebi | Jark Wu |
| [FLINK-4987](https://issues.apache.org/jira/browse/FLINK-4987) | Harden slot pool logic |  Major | Cluster Management | Till Rohrmann | Stephan Ewen |
| [FLINK-4884](https://issues.apache.org/jira/browse/FLINK-4884) | Eagerly Store MergingWindowSet in State in WindowOperator |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4221](https://issues.apache.org/jira/browse/FLINK-4221) | Show metrics in WebFrontend |  Major | Metrics, Webfrontend | Chesnay Schepler | Robert Metzger |
| [FLINK-4984](https://issues.apache.org/jira/browse/FLINK-4984) | Add Cancellation Barriers to BarrierTracker and BarrierBuffer |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4985](https://issues.apache.org/jira/browse/FLINK-4985) | Report Declined/Canceled Checkpoints to Checkpoint Coordinator |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4174](https://issues.apache.org/jira/browse/FLINK-4174) | Enhance Window Evictor |  Major | Streaming | Vishnu Viswanath | Vishnu Viswanath |
| [FLINK-4900](https://issues.apache.org/jira/browse/FLINK-4900) | Implement Docker image support |  Major | Cluster Management, Mesos | Eron Wright | Mischa Krüger |
| [FLINK-4937](https://issues.apache.org/jira/browse/FLINK-4937) | Add incremental group window aggregation for streaming Table API |  Major | Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-4993](https://issues.apache.org/jira/browse/FLINK-4993) | Don't Allow Trigger.onMerge() to return TriggerResult |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-4921](https://issues.apache.org/jira/browse/FLINK-4921) | Upgrade to Mesos 1.0.1 |  Major | Cluster Management, Mesos | Eron Wright | Eron Wright |
| [FLINK-4918](https://issues.apache.org/jira/browse/FLINK-4918) | Add SSL support to Mesos artifact server |  Major | Mesos, Security | Vijay Srinivasaraghavan | Vijay Srinivasaraghavan |
| [FLINK-4826](https://issues.apache.org/jira/browse/FLINK-4826) | Add keytab based kerberos support for Mesos environment |  Major | Mesos, Security | Vijay Srinivasaraghavan | Vijay Srinivasaraghavan |
| [FLINK-5091](https://issues.apache.org/jira/browse/FLINK-5091) | Formalize the AppMaster environment for docker compability |  Major | Cluster Management, Mesos | Eron Wright | Eron Wright |
| [FLINK-5290](https://issues.apache.org/jira/browse/FLINK-5290) | Ensure backwards compatibility of the hashes used to generate JobVertexIds |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-4922](https://issues.apache.org/jira/browse/FLINK-4922) | Write documentation |  Major | Cluster Management, Mesos | Eron Wright | Maximilian Michels |
| [FLINK-5317](https://issues.apache.org/jira/browse/FLINK-5317) | Make the continuous file processing code backwards compatible, |  Major | filesystem-connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5294](https://issues.apache.org/jira/browse/FLINK-5294) | Make the WindowOperator backwards compatible. |  Blocker | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5295](https://issues.apache.org/jira/browse/FLINK-5295) | Migrate the AlignedWindowOperators to the WindowOperator and make it backwards compatible. |  Blocker | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5293](https://issues.apache.org/jira/browse/FLINK-5293) | Make the Kafka consumer backwards compatible. |  Blocker | Kafka Connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5318](https://issues.apache.org/jira/browse/FLINK-5318) | Make the Rolling sink backwards compatible. |  Blocker | filesystem-connector | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5457](https://issues.apache.org/jira/browse/FLINK-5457) | Create documentation for Asynchronous I/O |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-3580](https://issues.apache.org/jira/browse/FLINK-3580) | Reintroduce Date/Time and implement scalar functions for it |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-4959](https://issues.apache.org/jira/browse/FLINK-4959) | Write Documentation for ProcessFunction |  Critical | Streaming | Aljoscha Krettek | Stephan Ewen |
| [FLINK-4901](https://issues.apache.org/jira/browse/FLINK-4901) | Build DCOS Docker image |  Major | Cluster Management, Mesos | Eron Wright |  |
| [FLINK-5555](https://issues.apache.org/jira/browse/FLINK-5555) | Add documentation about debugging watermarks |  Major | Documentation | Robert Metzger | Robert Metzger |
| [FLINK-5417](https://issues.apache.org/jira/browse/FLINK-5417) | Fix the wrong config file name |  Trivial | Documentation | Tao Wang |  |
| [FLINK-5459](https://issues.apache.org/jira/browse/FLINK-5459) | Add documentation how to debug classloading issues |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-5454](https://issues.apache.org/jira/browse/FLINK-5454) | Add Documentation about how to tune Checkpointing for large state |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-4994](https://issues.apache.org/jira/browse/FLINK-4994) | Don't Clear Trigger State and Merging Window Set When Purging |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5529](https://issues.apache.org/jira/browse/FLINK-5529) | Improve / extends windowing documentation |  Major | Documentation | Stephan Ewen | Kostas Kloudas |
| [FLINK-5044](https://issues.apache.org/jira/browse/FLINK-5044) | Converting operator and function state from Flink 1.1 for all changed operators in 1.2 |  Major | DataStream API, Streaming | Stefan Richter |  |
| [FLINK-5456](https://issues.apache.org/jira/browse/FLINK-5456) | Add docs about new state and checkpointing interfaces |  Major | Documentation | Stephan Ewen | David Anderson |
| [FLINK-5502](https://issues.apache.org/jira/browse/FLINK-5502) | Add documentation about migrating functions from 1.1 to 1.2 |  Major | Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-5474](https://issues.apache.org/jira/browse/FLINK-5474) | Extend DC/OS documentation |  Minor | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5494](https://issues.apache.org/jira/browse/FLINK-5494) | Improve Mesos documentation |  Major | Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-5618](https://issues.apache.org/jira/browse/FLINK-5618) | Add queryable state documentation |  Major | Documentation | Ufuk Celebi |  |
| [FLINK-2730](https://issues.apache.org/jira/browse/FLINK-2730) | Add CPU/Network utilization graphs to new web dashboard |  Major | Webfrontend | Stephan Ewen | Sachin Goel |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4799](https://issues.apache.org/jira/browse/FLINK-4799) | Re-add build-target symlink to project root |  Minor | Build System | Maximilian Michels | Maximilian Michels |
| [FLINK-4778](https://issues.apache.org/jira/browse/FLINK-4778) | Update program example in /docs/setup/cli.md due to the change in FLINK-2021 |  Trivial | . | Pattarawat Chormai |  |
| [FLINK-4895](https://issues.apache.org/jira/browse/FLINK-4895) | Drop support for Hadoop 1 |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-4429](https://issues.apache.org/jira/browse/FLINK-4429) | Move Redis Sink from Flink to Bahir |  Major | Streaming Connectors | Robert Metzger | Robert Metzger |
| [FLINK-4446](https://issues.apache.org/jira/browse/FLINK-4446) | Move Flume Sink from Flink to Bahir |  Major | Streaming Connectors | Robert Metzger | Robert Metzger |


