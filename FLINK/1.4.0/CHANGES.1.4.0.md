
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

## Release 1.4.0 - Unreleased (as of 2017-06-30)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6483](https://issues.apache.org/jira/browse/FLINK-6483) | Support time materialization |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5340](https://issues.apache.org/jira/browse/FLINK-5340) | Add a metric exposing jobs uptimes |  Minor | Core | Dan Bress | Stephan Ewen |
| [FLINK-6237](https://issues.apache.org/jira/browse/FLINK-6237) | support RAND and RAND\_INTEGER on Table API & SQL |  Major | Table API & SQL | godfrey he | godfrey he |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6459](https://issues.apache.org/jira/browse/FLINK-6459) | Move ACCESS\_CONTROL\_ALLOW\_ORIGIN to JobManagerOptions |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6164](https://issues.apache.org/jira/browse/FLINK-6164) | Make ProcessWindowFunction a RichFunction |  Blocker | DataStream API | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-5720](https://issues.apache.org/jira/browse/FLINK-5720) | Deprecate "Folding" in all of DataStream API |  Blocker | DataStream API | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-6461](https://issues.apache.org/jira/browse/FLINK-6461) | Deprecate web-related configuration defaults in ConfigConstants |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
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
| [FLINK-6820](https://issues.apache.org/jira/browse/FLINK-6820) | Activate checkstyle for runtime/filecache |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6852](https://issues.apache.org/jira/browse/FLINK-6852) | Fix misuse of GCD |  Minor | Machine Learning Library | Ruidong Li | Ruidong Li |
| [FLINK-6414](https://issues.apache.org/jira/browse/FLINK-6414) | Use scala.binary.version in place of change-scala-version.sh |  Major | Build System | Greg Hogan | Greg Hogan |
| [FLINK-6803](https://issues.apache.org/jira/browse/FLINK-6803) | Add test for PojoSerializer when Pojo changes |  Major | Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6796](https://issues.apache.org/jira/browse/FLINK-6796) | Allow setting the user code class loader for AbstractStreamOperatorTestHarness |  Minor | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6859](https://issues.apache.org/jira/browse/FLINK-6859) | StateCleaningCountTrigger should not delete timer |  Major | Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-6929](https://issues.apache.org/jira/browse/FLINK-6929) | Add documentation for Table API OVER windows |  Major | Documentation, Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-6937](https://issues.apache.org/jira/browse/FLINK-6937) | Fix link markdown in Production Readiness Checklist doc |  Minor | Documentation | Juan Paulo Gutierrez |  |
| [FLINK-6985](https://issues.apache.org/jira/browse/FLINK-6985) | Remove bugfix version from docs title |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-6952](https://issues.apache.org/jira/browse/FLINK-6952) | Add link to Javadocs |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-6769](https://issues.apache.org/jira/browse/FLINK-6769) | Replace usage of deprecated FileSystem#create(Path, boolean) |  Trivial | Core | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6863](https://issues.apache.org/jira/browse/FLINK-6863) | Fully separate streaming&batch examples |  Major | Examples | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6788](https://issues.apache.org/jira/browse/FLINK-6788) | Remove unused GenericFlatTypePostPass/AbstractSchema class |  Trivial | Optimizer | Chesnay Schepler | Miao Wang |
| [FLINK-6967](https://issues.apache.org/jira/browse/FLINK-6967) | Fully separate batch and storm examples |  Minor | Examples, Storm Compatibility | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6786](https://issues.apache.org/jira/browse/FLINK-6786) | Remove duplicate QueryScopeInfoTest |  Major | Metrics, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6389](https://issues.apache.org/jira/browse/FLINK-6389) | Upgrade hbase dependency to 1.3.1 |  Minor | Batch Connectors and Input/Output Formats | Ted Yu | mingleizhang |
| [FLINK-6682](https://issues.apache.org/jira/browse/FLINK-6682) | Improve error message in case parallelism exceeds maxParallelism |  Major | State Backends, Checkpointing | Chesnay Schepler | mingleizhang |
| [FLINK-6418](https://issues.apache.org/jira/browse/FLINK-6418) | Support for dynamic state changes in CEP patterns |  Major | CEP | Elias Levy | Dawid Wysakowicz |
| [FLINK-6920](https://issues.apache.org/jira/browse/FLINK-6920) | Remove minor guava usages in several modules |  Major | Batch Connectors and Input/Output Formats, Build System, ElasticSearch Connector, Gelly, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7014](https://issues.apache.org/jira/browse/FLINK-7014) | Expose isDeterministic interface to ScalarFunction and TableFunction |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-7004](https://issues.apache.org/jira/browse/FLINK-7004) | Switch to Travis Trusty image |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7008](https://issues.apache.org/jira/browse/FLINK-7008) | Update NFA state only when the NFA changes. |  Major | CEP | Kostas Kloudas | Dian Fu |
| [FLINK-6710](https://issues.apache.org/jira/browse/FLINK-6710) | Remove twitter-inputformat |  Minor | Batch Connectors and Input/Output Formats | Chesnay Schepler | Chesnay Schepler |


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
| [FLINK-6837](https://issues.apache.org/jira/browse/FLINK-6837) | Fix a small error message bug, And improve some message info. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6816](https://issues.apache.org/jira/browse/FLINK-6816) | Fix wrong usage of Scala string interpolation in Table API |  Minor | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-6812](https://issues.apache.org/jira/browse/FLINK-6812) | Elasticsearch 5 release artifacts not published to Maven central |  Blocker | ElasticSearch Connector | Tzu-Li (Gordon) Tai | Robert Metzger |
| [FLINK-6844](https://issues.apache.org/jira/browse/FLINK-6844) | TraversableSerializer should implement compatibility methods |  Blocker | Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6853](https://issues.apache.org/jira/browse/FLINK-6853) | Migrating from Flink 1.1 fails for FlinkCEP |  Major | CEP | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6815](https://issues.apache.org/jira/browse/FLINK-6815) | Javadocs don't work anymore in Flink 1.4-SNAPSHOT |  Major | Build System | Robert Metzger | Robert Metzger |
| [FLINK-6834](https://issues.apache.org/jira/browse/FLINK-6834) | Over window doesn't support complex calculation |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-6783](https://issues.apache.org/jira/browse/FLINK-6783) | Wrongly extracted TypeInformations for WindowedStream::aggregate |  Blocker | Core, DataStream API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6876](https://issues.apache.org/jira/browse/FLINK-6876) | The comment of DataStream#assignTimestampsAndWatermarks is incorrect |  Minor | DataStream API | Dian Fu |  |
| [FLINK-6869](https://issues.apache.org/jira/browse/FLINK-6869) | Scala serializers do not have the serialVersionUID specified |  Blocker | Scala API, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6883](https://issues.apache.org/jira/browse/FLINK-6883) | Serializer for collection of Scala case classes are generated with different anonymous class names in 1.3 |  Blocker | Scala API, Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6804](https://issues.apache.org/jira/browse/FLINK-6804) | Inconsistent state migration behaviour between different state backends |  Critical | State Backends, Checkpointing, Type Serialization System | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-6801](https://issues.apache.org/jira/browse/FLINK-6801) | PojoSerializerConfigSnapshot cannot deal with missing Pojo fields |  Major | Type Serialization System | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-6848](https://issues.apache.org/jira/browse/FLINK-6848) | Extend the managed state docs with a Scala example |  Major | Documentation, State Backends, Checkpointing | Fokko Driesprong | Fokko Driesprong |
| [FLINK-6833](https://issues.apache.org/jira/browse/FLINK-6833) | Race condition: Asynchronous checkpointing task can fail completed StreamTask |  Critical | Local Runtime, State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6899](https://issues.apache.org/jira/browse/FLINK-6899) | Wrong state array size in NestedMapsStateTable |  Minor | State Backends, Checkpointing | Till Rohrmann | Till Rohrmann |
| [FLINK-6744](https://issues.apache.org/jira/browse/FLINK-6744) | Flaky ExecutionGraphSchedulingTest |  Critical | Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-6685](https://issues.apache.org/jira/browse/FLINK-6685) | SafetyNetCloseableRegistry is closed prematurely in Task::triggerCheckpointBarrier |  Blocker | . | Stefan Richter | Stefan Richter |
| [FLINK-6817](https://issues.apache.org/jira/browse/FLINK-6817) | Fix NPE when preceding is not set in OVER window |  Minor | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-6915](https://issues.apache.org/jira/browse/FLINK-6915) | EnumValueSerializer broken |  Major | State Backends, Checkpointing, Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6914](https://issues.apache.org/jira/browse/FLINK-6914) | TrySerializer#ensureCompatibility causes StackOverflowException |  Major | State Backends, Checkpointing, Type Serialization System | Till Rohrmann | Till Rohrmann |
| [FLINK-6913](https://issues.apache.org/jira/browse/FLINK-6913) | Instable StatefulJobSavepointMigrationITCase.testRestoreSavepoint |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6941](https://issues.apache.org/jira/browse/FLINK-6941) | Selecting window start / end on over window causes field not resolve exception |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6886](https://issues.apache.org/jira/browse/FLINK-6886) | Fix Timestamp field can not be selected in event time case when  toDataStream[T], \`T\` not a \`Row\` Type. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6602](https://issues.apache.org/jira/browse/FLINK-6602) | Table source with defined time attributes allows empty string |  Major | Table API & SQL | Timo Walther | Zhe Li |
| [FLINK-6930](https://issues.apache.org/jira/browse/FLINK-6930) | Selecting window start / end on row-based Tumble/Slide window causes NPE |  Major | Table API & SQL | Fabian Hueske | Jark Wu |
| [FLINK-6881](https://issues.apache.org/jira/browse/FLINK-6881) | Creating a table from a POJO and defining a time attribute fails |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-6896](https://issues.apache.org/jira/browse/FLINK-6896) | Creating a table from a POJO and use table sink to output fail |  Major | Table API & SQL | Mark You | sunjincheng |
| [FLINK-6652](https://issues.apache.org/jira/browse/FLINK-6652) | Problem with DelimitedInputFormat |  Major | Batch Connectors and Input/Output Formats | Moritz Schubotz | Fabian Hueske |
| [FLINK-6836](https://issues.apache.org/jira/browse/FLINK-6836) | Failing YARNSessionCapacitySchedulerITCase.testTaskManagerFailure |  Critical | Tests, YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-6945](https://issues.apache.org/jira/browse/FLINK-6945) | TaskCancelAsyncProducerConsumerITCase.testCancelAsyncProducerAndConsumer instable test case |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6918](https://issues.apache.org/jira/browse/FLINK-6918) | Failing tests: ChainLengthDecreaseTest and ChainLengthIncreaseTest |  Critical | Tests | Greg Hogan | Till Rohrmann |
| [FLINK-6806](https://issues.apache.org/jira/browse/FLINK-6806) | rocksdb is not listed as state backend in doc |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-6956](https://issues.apache.org/jira/browse/FLINK-6956) | Table examples broken |  Major | Examples, Table API & SQL | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6943](https://issues.apache.org/jira/browse/FLINK-6943) | Improve exceptions within TypeExtractionUtils#getSingleAbstractMethod |  Major | Core | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6541](https://issues.apache.org/jira/browse/FLINK-6541) | Jar upload directory not created |  Minor | Webfrontend | Andrey | Chesnay Schepler |
| [FLINK-6774](https://issues.apache.org/jira/browse/FLINK-6774) | build-helper-maven-plugin version not set |  Minor | Build System | Nico Kruber | Nico Kruber |
| [FLINK-6868](https://issues.apache.org/jira/browse/FLINK-6868) | Using \`scala.binary.version\` for \`flink-streaming-scala\` in \`Cassandra Connector\` |  Blocker | Build System, Cassandra Connector | Benedict Jin | Benedict Jin |
| [FLINK-6994](https://issues.apache.org/jira/browse/FLINK-6994) | Wrong base url in master docs |  Major | Documentation | Timo Walther | Timo Walther |
| [FLINK-7005](https://issues.apache.org/jira/browse/FLINK-7005) | Optimization steps are missing for nested registered tables |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-7025](https://issues.apache.org/jira/browse/FLINK-7025) | Using NullByteKeySelector for Unbounded ProcTime NonPartitioned Over |  Major | Table API & SQL | sunjincheng | sunjincheng |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6175](https://issues.apache.org/jira/browse/FLINK-6175) | HistoryServerTest.testFullArchiveLifecycle fails |  Major | History Server, Tests, Webfrontend | Ufuk Celebi | Chesnay Schepler |
| [FLINK-6597](https://issues.apache.org/jira/browse/FLINK-6597) | Cleanup WindowOperatorTest useless imports |  Major | Streaming | sunjincheng | sunjincheng |
| [FLINK-6845](https://issues.apache.org/jira/browse/FLINK-6845) | Cleanup  "println(StreamITCase.testResults)" call in test case |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6830](https://issues.apache.org/jira/browse/FLINK-6830) | Add ITTests for savepoint migration from 1.3 |  Major | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


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
| [FLINK-6745](https://issues.apache.org/jira/browse/FLINK-6745) | Table API / SQL Docs: Overview Page |  Major | Documentation, Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6746](https://issues.apache.org/jira/browse/FLINK-6746) | Table API / SQL Docs: Common Page |  Major | Documentation, Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6661](https://issues.apache.org/jira/browse/FLINK-6661) | Merge "Subtasks" and "TaskManagers" view |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6723](https://issues.apache.org/jira/browse/FLINK-6723) | Activate strict checkstyle for flink-libraries |  Trivial | CEP, Gelly, Machine Learning Library, Python API, Table API & SQL | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6488](https://issues.apache.org/jira/browse/FLINK-6488) | Mark deprecated for 'start-local.sh' and 'stop-local' scripts |  Major | Startup Shell Scripts | Stephan Ewen | mingleizhang |
| [FLINK-6798](https://issues.apache.org/jira/browse/FLINK-6798) | Remove/update documentation about network buffer tuning |  Major | Documentation, Network | Robert Metzger | Nico Kruber |
| [FLINK-6784](https://issues.apache.org/jira/browse/FLINK-6784) | Add some notes about externalized checkpoints and the difference to savepoints |  Major | Documentation, State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-6782](https://issues.apache.org/jira/browse/FLINK-6782) | Update savepoint documentation |  Major | Documentation, State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-6960](https://issues.apache.org/jira/browse/FLINK-6960) | Add E() supported in SQL |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6942](https://issues.apache.org/jira/browse/FLINK-6942) | Add E() supported in TableAPI |  Major | Table API & SQL | sunjincheng | Timo Walther |


