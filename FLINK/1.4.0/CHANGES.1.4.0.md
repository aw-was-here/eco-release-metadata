
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

## Release 1.4.0 - Unreleased (as of 2017-06-03)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6483](https://issues.apache.org/jira/browse/FLINK-6483) | Support time materialization |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5340](https://issues.apache.org/jira/browse/FLINK-5340) | Add a metric exposing jobs uptimes |  Minor | Core | Dan Bress | Stephan Ewen |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6459](https://issues.apache.org/jira/browse/FLINK-6459) | Move ACCESS\_CONTROL\_ALLOW\_ORIGIN to JobManagerOptions |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6164](https://issues.apache.org/jira/browse/FLINK-6164) | Make ProcessWindowFunction a RichFunction |  Blocker | DataStream API | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-5720](https://issues.apache.org/jira/browse/FLINK-5720) | Deprecate "Folding" in all of DataStream API |  Blocker | DataStream API | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-6461](https://issues.apache.org/jira/browse/FLINK-6461) | Deprecate web-related configuration defaults in ConfigConstants |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6414](https://issues.apache.org/jira/browse/FLINK-6414) | Use scala.binary.version in place of change-scala-version.sh |  Major | Build System | Greg Hogan | Greg Hogan |
| [FLINK-6013](https://issues.apache.org/jira/browse/FLINK-6013) | Add Datadog HTTP metrics reporter |  Critical | Metrics | Bowen Li | Bowen Li |
| [FLINK-6558](https://issues.apache.org/jira/browse/FLINK-6558) | Yarn tests fail on Windows |  Major | Tests, YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6565](https://issues.apache.org/jira/browse/FLINK-6565) | Improve error messages for state restore failures |  Critical | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6566](https://issues.apache.org/jira/browse/FLINK-6566) | Narrow down interface for compatibility hook method in VersionedIOReadableWritable |  Major | Core, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6554](https://issues.apache.org/jira/browse/FLINK-6554) | CompatibilityResult should contain a notCompatible() option |  Minor | Type Serialization System | Chesnay Schepler | Tzu-Li (Gordon) Tai |
| [FLINK-6462](https://issues.apache.org/jira/browse/FLINK-6462) | Add requiresOver interface for  AggregateFunction |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6519](https://issues.apache.org/jira/browse/FLINK-6519) | Integrate BlobStore in HighAvailabilityServices lifecycle management |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6555](https://issues.apache.org/jira/browse/FLINK-6555) | Generalize ConjunctFuture |  Trivial | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6601](https://issues.apache.org/jira/browse/FLINK-6601) | Use time indicators in DataStreamLogicalWindowAggregateRule |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6600](https://issues.apache.org/jira/browse/FLINK-6600) | Add key serializer's config snapshot to KeyedBackendSerializationProxy |  Major | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6596](https://issues.apache.org/jira/browse/FLINK-6596) | Disable javadoc generation in all travis builds |  Trivial | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6288](https://issues.apache.org/jira/browse/FLINK-6288) | FlinkKafkaProducer's custom Partitioner is always invoked with number of partitions of default topic |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Fang Yong |
| [FLINK-6608](https://issues.apache.org/jira/browse/FLINK-6608) | Relax Kerberos login contexts parsing by trimming whitespaces in contexts list |  Minor | Configuration, Security | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6551](https://issues.apache.org/jira/browse/FLINK-6551) | OutputTag name should not be allowed to be empty |  Major | DataStream API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6660](https://issues.apache.org/jira/browse/FLINK-6660) | expand the streaming connectors overview page |  Major | Documentation, Streaming Connectors | David Anderson | David Anderson |
| [FLINK-6706](https://issues.apache.org/jira/browse/FLINK-6706) | remove ChaosMonkeyITCase |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-4497](https://issues.apache.org/jira/browse/FLINK-4497) | Add support for Scala tuples and case classes to Cassandra sink |  Major | Cassandra Connector | Elias Levy | Chesnay Schepler |
| [FLINK-6708](https://issues.apache.org/jira/browse/FLINK-6708) | Don't let the FlinkYarnSessionCli fail if it cannot retrieve the ClusterStatus |  Minor | YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-6653](https://issues.apache.org/jira/browse/FLINK-6653) | Avoid directly serializing AWS's Shard class in Kinesis consumer's checkpoints |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Wei-Che Wei |
| [FLINK-6766](https://issues.apache.org/jira/browse/FLINK-6766) | Update documentation with async backends and incremental checkpoints |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6724](https://issues.apache.org/jira/browse/FLINK-6724) | Include function class name in UserDefinedFunctionUtils exceptions |  Trivial | Table API & SQL | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6781](https://issues.apache.org/jira/browse/FLINK-6781) | Make fetch size configurable in JDBCInputFormat |  Minor | Batch Connectors and Input/Output Formats | Maximilian Bode | Maximilian Bode |
| [FLINK-6795](https://issues.apache.org/jira/browse/FLINK-6795) | Activate checkstyle for runtime/process |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6794](https://issues.apache.org/jira/browse/FLINK-6794) | Activate checkstyle for  migration/\* |  Trivial | State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6793](https://issues.apache.org/jira/browse/FLINK-6793) | Activate checkstyle for runtime/metrics |  Trivial | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6831](https://issues.apache.org/jira/browse/FLINK-6831) | Activate checkstyle for runtime/\* |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6827](https://issues.apache.org/jira/browse/FLINK-6827) | Activate checkstyle for runtime/webmonitor |  Trivial | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6824](https://issues.apache.org/jira/browse/FLINK-6824) | Activate checkstyle for runtime/event |  Trivial | Distributed Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6819](https://issues.apache.org/jira/browse/FLINK-6819) | Activate checkstyle for runtime/leaderretrieval |  Trivial | Distributed Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6818](https://issues.apache.org/jira/browse/FLINK-6818) | Activate checkstyle for runtime/history |  Trivial | History Server | Chesnay Schepler | Chesnay Schepler |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6436](https://issues.apache.org/jira/browse/FLINK-6436) | Bug in CommonCorrelate's generateCollector method when using udtf with udf |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-6479](https://issues.apache.org/jira/browse/FLINK-6479) | Fix IndexOutOfBoundsException bug |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-5070](https://issues.apache.org/jira/browse/FLINK-5070) | Unable to use Scala's BeanProperty with classes |  Major | Core, Scala API, Type Serialization System | Jakub Nowacki | Timo Walther |
| [FLINK-6396](https://issues.apache.org/jira/browse/FLINK-6396) | FsSavepointStreamFactoryTest fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5978](https://issues.apache.org/jira/browse/FLINK-5978) | JM WebFrontend address ConfigOption is defined in ConfigConstants |  Minor | JobManager | Chesnay Schepler | Fang Yong |
| [FLINK-6330](https://issues.apache.org/jira/browse/FLINK-6330) | Improve Docker documentation |  Major | Docker | Patrick Lucas | Patrick Lucas |
| [FLINK-5165](https://issues.apache.org/jira/browse/FLINK-5165) | Checkpointing tests using FsStatebackend fail on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6531](https://issues.apache.org/jira/browse/FLINK-6531) | Deserialize checkpoint hooks with user classloader |  Blocker | State Backends, Checkpointing | Eron Wright | Eron Wright |
| [FLINK-6508](https://issues.apache.org/jira/browse/FLINK-6508) | Include license files of packaged dependencies |  Blocker | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6515](https://issues.apache.org/jira/browse/FLINK-6515) | KafkaConsumer checkpointing fails because of ClassLoader issues |  Blocker | Kafka Connector | Aljoscha Krettek | Stephan Ewen |
| [FLINK-6501](https://issues.apache.org/jira/browse/FLINK-6501) | Make sure NOTICE files are bundled into shaded JAR files |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-6564](https://issues.apache.org/jira/browse/FLINK-6564) | Build fails on file systems that do not distinguish between upper and lower case |  Blocker | Build System | Fabian Hueske | Fabian Hueske |
| [FLINK-6562](https://issues.apache.org/jira/browse/FLINK-6562) | Support implicit table references for nested fields in SQL |  Major | Table API & SQL | Haohui Mai | Haohui Mai |
| [FLINK-6561](https://issues.apache.org/jira/browse/FLINK-6561) | GlobFilePathFilterTest#testExcludeFilenameWithStart fails on Windows |  Trivial | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6548](https://issues.apache.org/jira/browse/FLINK-6548) | AvroOutputFormatTest fails on Windows |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5101](https://issues.apache.org/jira/browse/FLINK-5101) | Test CassandraConnectorITCase instable |  Major | Cassandra Connector | Stefan Richter | Chesnay Schepler |
| [FLINK-6530](https://issues.apache.org/jira/browse/FLINK-6530) | Unclosed Response in DatadogHttpClient#validateApiKey() |  Minor | . | Ted Yu | Chesnay Schepler |
| [FLINK-6397](https://issues.apache.org/jira/browse/FLINK-6397) | MultipleProgramsTestBase does not reset ContextEnvironment |  Critical | Tests | Chesnay Schepler | Biao Liu |
| [FLINK-6520](https://issues.apache.org/jira/browse/FLINK-6520) | FlinkKafkaConsumer09+ does not overwrite props to disable auto commit offsets when commit mode is OffsetCommitMode.ON\_CHECKPOINTS |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6514](https://issues.apache.org/jira/browse/FLINK-6514) | Cannot start Flink Cluster in standalone mode |  Blocker | Build System, Cluster Management | Aljoscha Krettek | Stephan Ewen |
| [FLINK-6517](https://issues.apache.org/jira/browse/FLINK-6517) | Support multiple consecutive windows |  Critical | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6579](https://issues.apache.org/jira/browse/FLINK-6579) | Add proper support for BasicArrayTypeInfo |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6580](https://issues.apache.org/jira/browse/FLINK-6580) | Flink on YARN doesnt start with default parameters |  Blocker | YARN | Robert Metzger | Robert Metzger |
| [FLINK-6593](https://issues.apache.org/jira/browse/FLINK-6593) | Fix Bug in ProctimeAttribute or RowtimeAttribute with CodeGenerator |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-6581](https://issues.apache.org/jira/browse/FLINK-6581) | Dynamic property parsing broken for YARN |  Major | YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-6284](https://issues.apache.org/jira/browse/FLINK-6284) | Incorrect sorting of completed checkpoints in ZooKeeperCompletedCheckpointStore |  Blocker | State Backends, Checkpointing | Xiaogang Shi | Till Rohrmann |
| [FLINK-6587](https://issues.apache.org/jira/browse/FLINK-6587) | Java Table API cannot parse function names starting with keywords |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6598](https://issues.apache.org/jira/browse/FLINK-6598) | Remove useless param rowRelDataType of DataStreamGroupAggregate. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6583](https://issues.apache.org/jira/browse/FLINK-6583) | Enable QueryConfig in count base GroupWindow |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6031](https://issues.apache.org/jira/browse/FLINK-6031) | Add parameter for per job yarn clusters to control whether the user code jar is included into the system classloader. |  Critical | YARN | Robert Metzger | Chesnay Schepler |
| [FLINK-6416](https://issues.apache.org/jira/browse/FLINK-6416) | Potential divide by zero issue in InputGateMetrics#refreshAndGetAvg() |  Minor | Metrics, Network | Ted Yu | Chesnay Schepler |
| [FLINK-6440](https://issues.apache.org/jira/browse/FLINK-6440) | Noisy logs from metric fetcher |  Critical | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6585](https://issues.apache.org/jira/browse/FLINK-6585) | Table examples are not runnable in IDE |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6614](https://issues.apache.org/jira/browse/FLINK-6614) | Applying function on window auxiliary function fails |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6582](https://issues.apache.org/jira/browse/FLINK-6582) | Project from maven archetype is not buildable by default due to ${scala.binary.version} |  Major | Build System, Quickstarts | Dawid Wysakowicz | Greg Hogan |
| [FLINK-6612](https://issues.apache.org/jira/browse/FLINK-6612) | ZooKeeperStateHandleStore does not guard against concurrent delete operations |  Blocker | Distributed Coordination, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6574](https://issues.apache.org/jira/browse/FLINK-6574) | Support nested catalogs in ExternalCatalog |  Critical | Table API & SQL | Haohui Mai | Haohui Mai |
| [FLINK-6439](https://issues.apache.org/jira/browse/FLINK-6439) | Unclosed InputStream in OperatorSnapshotUtil#readStateHandle() |  Minor | State Backends, Checkpointing | Ted Yu | Fang Yong |
| [FLINK-6586](https://issues.apache.org/jira/browse/FLINK-6586) | InputGateMetrics#refreshAndGetMin returns Integer.MAX\_VALUE for local channels |  Trivial | Metrics, Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6639](https://issues.apache.org/jira/browse/FLINK-6639) | Java/Scala code tabs broken in CEP docs |  Major | CEP, Documentation | David Anderson | David Anderson |
| [FLINK-5636](https://issues.apache.org/jira/browse/FLINK-5636) | IO Metric for StreamTwoInputProcessor |  Major | DataStream API, Metrics | david.wang | Chesnay Schepler |
| [FLINK-6644](https://issues.apache.org/jira/browse/FLINK-6644) | Don't register HUP unix signal handler on Windows |  Major | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6628](https://issues.apache.org/jira/browse/FLINK-6628) | Cannot start taskmanager with cygwin in directory containing spaces |  Major | Startup Shell Scripts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6635](https://issues.apache.org/jira/browse/FLINK-6635) | ClientConnectionTest is broken because the ClusterClient lazily connects to the JobManager |  Minor | Client, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6629](https://issues.apache.org/jira/browse/FLINK-6629) | ClusterClient cannot submit jobs to HA cluster if address not set in configuration |  Blocker | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-6671](https://issues.apache.org/jira/browse/FLINK-6671) | RocksDBStateBackendTest.testCancelRunningSnapshot unstable |  Critical | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6328](https://issues.apache.org/jira/browse/FLINK-6328) | Savepoints must not be counted as retained checkpoints |  Blocker | State Backends, Checkpointing | Stephan Ewen | Till Rohrmann |
| [FLINK-6492](https://issues.apache.org/jira/browse/FLINK-6492) | Unclosed DataOutputViewStream in GenericArraySerializerConfigSnapshot#write() |  Minor | State Backends, Checkpointing | Ted Yu |  |
| [FLINK-6662](https://issues.apache.org/jira/browse/FLINK-6662) | ClassNotFoundException: o.a.f.r.j.t.JobSnapshottingSettings recovering job |  Major | JobManager, Mesos, State Backends, Checkpointing | Jared Stehler | Till Rohrmann |
| [FLINK-5376](https://issues.apache.org/jira/browse/FLINK-5376) | Misleading log statements in UnorderedStreamElementQueue |  Minor | DataStream API | Ted Yu | Chesnay Schepler |
| [FLINK-6659](https://issues.apache.org/jira/browse/FLINK-6659) | RocksDBMergeIteratorTest, SavepointITCase leave temporary directories behind |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6320](https://issues.apache.org/jira/browse/FLINK-6320) | Flakey JobManagerHAJobGraphRecoveryITCase |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-6669](https://issues.apache.org/jira/browse/FLINK-6669) | [Build] Scala style check errror on Windows |  Minor | . | Jinjiang Ling | Jinjiang Ling |
| [FLINK-6642](https://issues.apache.org/jira/browse/FLINK-6642) | EnvInformation#getOpenFileHandlesLimit should return -1 for Windows |  Major | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6714](https://issues.apache.org/jira/browse/FLINK-6714) | Operator state backend should set user classloader as context classloader when snapshotting |  Blocker | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6646](https://issues.apache.org/jira/browse/FLINK-6646) | YARN session doesn't work with HA |  Blocker | YARN | Robert Metzger | Till Rohrmann |
| [FLINK-6704](https://issues.apache.org/jira/browse/FLINK-6704) | Cannot disable YARN user jar inclusion |  Minor | YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6702](https://issues.apache.org/jira/browse/FLINK-6702) | SIGABRT after CEPOperatorTest#testCEPOperatorSerializationWRocksDB() during GC |  Major | CEP, Tests | Nico Kruber | Nico Kruber |
| [FLINK-6780](https://issues.apache.org/jira/browse/FLINK-6780) | ExternalTableSource should add time attributes in the row type |  Critical | Table API & SQL | Haohui Mai | Haohui Mai |
| [FLINK-6753](https://issues.apache.org/jira/browse/FLINK-6753) | Flaky SqlITCase |  Major | Table API & SQL, Tests | Chesnay Schepler | Timo Walther |
| [FLINK-6560](https://issues.apache.org/jira/browse/FLINK-6560) | Restore maven parallelism in flink-tests |  Critical | Build System | Greg Hogan | Greg Hogan |
| [FLINK-6792](https://issues.apache.org/jira/browse/FLINK-6792) | flink-yarn-tests always fail on travis |  Critical | Tests, YARN | Chesnay Schepler | Till Rohrmann |
| [FLINK-6775](https://issues.apache.org/jira/browse/FLINK-6775) | StateDescriptor cannot be shared by multiple subtasks |  Blocker | DataStream API | Till Rohrmann | Till Rohrmann |
| [FLINK-6809](https://issues.apache.org/jira/browse/FLINK-6809) | side outputs documentation: wrong variable name in java example code |  Trivial | Documentation | Petr Novotnik | Petr Novotnik |
| [FLINK-6840](https://issues.apache.org/jira/browse/FLINK-6840) | MultipleLinearRegression documentation contains outdated information |  Major | Machine Learning Library | Till Rohrmann | Till Rohrmann |
| [FLINK-6797](https://issues.apache.org/jira/browse/FLINK-6797) | building docs fails with bundler 1.15 |  Major | Documentation | David Anderson | David Anderson |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6175](https://issues.apache.org/jira/browse/FLINK-6175) | HistoryServerTest.testFullArchiveLifecycle fails |  Major | History Server, Tests, Webfrontend | Ufuk Celebi | Chesnay Schepler |
| [FLINK-6597](https://issues.apache.org/jira/browse/FLINK-6597) | Cleanup WindowOperatorTest useless imports |  Major | Streaming | sunjincheng | sunjincheng |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6518](https://issues.apache.org/jira/browse/FLINK-6518) | Migrate BlobServer configuration options |  Major | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5781](https://issues.apache.org/jira/browse/FLINK-5781) | Generation HTML from ConfigOption |  Major | Documentation | Ufuk Celebi | Dawid Wysakowicz |
| [FLINK-5780](https://issues.apache.org/jira/browse/FLINK-5780) | Extend ConfigOption with descriptions |  Major | Core, Documentation | Ufuk Celebi | Dawid Wysakowicz |
| [FLINK-6020](https://issues.apache.org/jira/browse/FLINK-6020) | Blob Server cannot handle multiple job submits (with same content) parallelly |  Critical | Distributed Coordination | Tao Wang | Till Rohrmann |
| [FLINK-6618](https://issues.apache.org/jira/browse/FLINK-6618) | Fix GroupWindowStringExpressionTest testcase bug |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6632](https://issues.apache.org/jira/browse/FLINK-6632) | Fix parameter case sensitive error for test passing/rejecting filter API |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6450](https://issues.apache.org/jira/browse/FLINK-6450) | Web UI Subtasks view for TaskManagers has a misleading name |  Major | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6451](https://issues.apache.org/jira/browse/FLINK-6451) | Web UI: Rename 'Metrics' view to 'Task Metrics' |  Major | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6448](https://issues.apache.org/jira/browse/FLINK-6448) | Web UI TaskManager view: Rename 'Free Memory' to 'JVM Heap' |  Major | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-6495](https://issues.apache.org/jira/browse/FLINK-6495) | Migrate Akka configuration options |  Major | Distributed Coordination, Network | Chesnay Schepler | Fang Yong |
| [FLINK-6650](https://issues.apache.org/jira/browse/FLINK-6650) | Fix Non-windowed group-aggregate error when using append-table mode. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6675](https://issues.apache.org/jira/browse/FLINK-6675) | Activate strict checkstyle for flink-annotations |  Trivial | Core | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6432](https://issues.apache.org/jira/browse/FLINK-6432) | Activate strict checkstyle for flink-python |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6431](https://issues.apache.org/jira/browse/FLINK-6431) | Activate strict checkstyle for flink-metrics |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6691](https://issues.apache.org/jira/browse/FLINK-6691) | Add checkstyle import block rule for scala imports |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6687](https://issues.apache.org/jira/browse/FLINK-6687) | Activate strict checkstyle for flink-runtime-web |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6707](https://issues.apache.org/jira/browse/FLINK-6707) | Activate strict checkstyle for flink-examples |  Trivial | Examples | Greg Hogan | Greg Hogan |
| [FLINK-6715](https://issues.apache.org/jira/browse/FLINK-6715) | Activate strict checkstyle in for flink-mesos |  Major | Mesos | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6716](https://issues.apache.org/jira/browse/FLINK-6716) | Suppress load errors in checkstyle JavadocMethod |  Major | . | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6718](https://issues.apache.org/jira/browse/FLINK-6718) | Activate strict checkstyle for flink-clients |  Minor | Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6688](https://issues.apache.org/jira/browse/FLINK-6688) | Activate strict checkstyle in flink-test-utils |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6701](https://issues.apache.org/jira/browse/FLINK-6701) | Activate strict checkstyle for flink-yarn |  Major | YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6709](https://issues.apache.org/jira/browse/FLINK-6709) | Activate strict checkstyle for flink-gellies |  Trivial | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-6728](https://issues.apache.org/jira/browse/FLINK-6728) | Activate strict checkstyle for flink-quickstart |  Major | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6721](https://issues.apache.org/jira/browse/FLINK-6721) | Activate strict checkstyle for flink-fs-tests |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6720](https://issues.apache.org/jira/browse/FLINK-6720) | Activate strict checkstyle for flink-java8 |  Major | Java API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6711](https://issues.apache.org/jira/browse/FLINK-6711) | Activate strict checkstyle for flink-connectors |  Major | Batch Connectors and Input/Output Formats, Streaming Connectors | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6137](https://issues.apache.org/jira/browse/FLINK-6137) | Activate strict checkstyle for flink-cep |  Minor | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6699](https://issues.apache.org/jira/browse/FLINK-6699) | Activate strict-checkstyle in flink-yarn-tests |  Major | Tests, YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6760](https://issues.apache.org/jira/browse/FLINK-6760) | Fix OverWindowTest alias test error |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6736](https://issues.apache.org/jira/browse/FLINK-6736) | Fix UDTF codegen bug when window follow by join( UDTF) |  Major | Table API & SQL | sunjincheng | Timo Walther |
| [FLINK-6737](https://issues.apache.org/jira/browse/FLINK-6737) | Fix over expression parse String error. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6722](https://issues.apache.org/jira/browse/FLINK-6722) | Activate strict checkstyle for flink-table |  Major | Table API & SQL | Chesnay Schepler | Greg Hogan |
| [FLINK-6570](https://issues.apache.org/jira/browse/FLINK-6570) | QueryableStateClient constructor in documentation doesn't match actual signature |  Major | Documentation, Queryable State | Robert Metzger |  |


