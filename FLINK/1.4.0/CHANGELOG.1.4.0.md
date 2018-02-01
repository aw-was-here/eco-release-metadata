
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

## Release 1.4.0 - 2017-12-12



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7508](https://issues.apache.org/jira/browse/FLINK-7508) | switch FlinkKinesisProducer to use KPL's ThreadingMode to ThreadedPool mode rather than Per\_Request mode |  Critical | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7540](https://issues.apache.org/jira/browse/FLINK-7540) | Akka hostnames are not normalised consistently |  Blocker | Distributed Coordination, YARN | Tong Yan Ou | Till Rohrmann |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6483](https://issues.apache.org/jira/browse/FLINK-6483) | Support time materialization |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5340](https://issues.apache.org/jira/browse/FLINK-5340) | Add a metric exposing jobs uptimes |  Minor | Core | Dan Bress | Stephan Ewen |
| [FLINK-6237](https://issues.apache.org/jira/browse/FLINK-6237) | support RAND and RAND\_INTEGER on Table API & SQL |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-4022](https://issues.apache.org/jira/browse/FLINK-4022) | Partition discovery / regex topic subscription for the Kafka consumer |  Critical | Kafka Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7497](https://issues.apache.org/jira/browse/FLINK-7497) | Allow users to add custom user context stored in state in TwoPhaseCommitSinkFunction |  Major | Streaming | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7576](https://issues.apache.org/jira/browse/FLINK-7576) | Add FutureUtils.retryWithDelay |  Minor | Core | Till Rohrmann | Till Rohrmann |
| [FLINK-7683](https://issues.apache.org/jira/browse/FLINK-7683) | Add method to iterate over all of the existing keys in a statebackend |  Major | State Backends, Checkpointing | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7491](https://issues.apache.org/jira/browse/FLINK-7491) | Support COLLECT Aggregate function in Flink SQL |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-5498](https://issues.apache.org/jira/browse/FLINK-5498) | Add support for left/right outer joins with non-equality predicates (and 1+ equality predicates) |  Minor | Table API & SQL | lincoln.lee | Fabian Hueske |
| [FLINK-5967](https://issues.apache.org/jira/browse/FLINK-5967) | Add RuntimeContext#getAggregatingState() and document AggregatingState |  Critical | DataStream API, Documentation | Aljoscha Krettek | Bowen Li |
| [FLINK-6442](https://issues.apache.org/jira/browse/FLINK-6442) | Extend TableAPI Support Sink Table Registration and ‘insert into’ Clause in SQL |  Minor | Table API & SQL | lincoln.lee | lincoln.lee |
| [FLINK-5706](https://issues.apache.org/jira/browse/FLINK-5706) | Implement Flink's own S3 filesystem |  Major | filesystem-connector | Stephan Ewen | Stephan Ewen |
| [FLINK-4557](https://issues.apache.org/jira/browse/FLINK-4557) | Table API Stream Aggregations |  Major | Table API & SQL | Timo Walther |  |
| [FLINK-8118](https://issues.apache.org/jira/browse/FLINK-8118) | Allow to specify the offsets of KafkaTableSources |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-8190](https://issues.apache.org/jira/browse/FLINK-8190) | Add extra FlinkKafkaConsumer constructors to expose pattern-based topic subscription functionality |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


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
| [FLINK-6898](https://issues.apache.org/jira/browse/FLINK-6898) | Limit size of operator component in metric name |  Critical | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7000](https://issues.apache.org/jira/browse/FLINK-7000) | Add custom configuration for StreamExecutionEnvironment#createLocalEnvironment |  Major | DataStream API, Scala API | Lim Chee Hau |  |
| [FLINK-6638](https://issues.apache.org/jira/browse/FLINK-6638) | Allow overriding default value for all types when retrieving ConfigOption |  Major | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6221](https://issues.apache.org/jira/browse/FLINK-6221) | Add Prometheus support to metrics |  Minor | Metrics | Joshua Griffith | Maximilian Bode |
| [FLINK-5918](https://issues.apache.org/jira/browse/FLINK-5918) | port range support for config taskmanager.rpc.port |  Major | Core | Yelei Feng | Yelei Feng |
| [FLINK-6908](https://issues.apache.org/jira/browse/FLINK-6908) | start-cluster.sh accepts batch/streaming mode argument |  Trivial | Startup Shell Scripts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7030](https://issues.apache.org/jira/browse/FLINK-7030) | Build with scala-2.11 by default |  Major | Build System | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7048](https://issues.apache.org/jira/browse/FLINK-7048) | Define javadoc skipping in travis watchdog script |  Trivial | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7046](https://issues.apache.org/jira/browse/FLINK-7046) | Hide logging about downloaded artifacts on travis |  Trivial | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6789](https://issues.apache.org/jira/browse/FLINK-6789) | Remove duplicated test utility reducer in optimizer |  Major | Optimizer, Tests | Chesnay Schepler | mingleizhang |
| [FLINK-6575](https://issues.apache.org/jira/browse/FLINK-6575) | Disable all tests on Windows that use HDFS |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7032](https://issues.apache.org/jira/browse/FLINK-7032) | Intellij is constantly changing language level of sub projects back to 1.6 |  Major | Build System | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7070](https://issues.apache.org/jira/browse/FLINK-7070) | Rework ScalaShellITCase#testSubmissionOfExternalLibraryStream |  Critical | Scala Shell, Tests | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-6880](https://issues.apache.org/jira/browse/FLINK-6880) | Activate checkstyle for runtime/iterative |  Trivial | Local Runtime | Greg Hogan | Greg Hogan |
| [FLINK-6877](https://issues.apache.org/jira/browse/FLINK-6877) | Activate checkstyle for runtime/security |  Trivial | Local Runtime | Greg Hogan | Greg Hogan |
| [FLINK-6821](https://issues.apache.org/jira/browse/FLINK-6821) | Activate checkstyle for runtime/fs |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6826](https://issues.apache.org/jira/browse/FLINK-6826) | Activate checkstyle for runtime/net |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6823](https://issues.apache.org/jira/browse/FLINK-6823) | Activate checkstyle for runtime/broadcast |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6043](https://issues.apache.org/jira/browse/FLINK-6043) | Display time when exceptions/root cause of failure happened |  Minor | Webfrontend | Till Rohrmann | Chesnay Schepler |
| [FLINK-6008](https://issues.apache.org/jira/browse/FLINK-6008) | collection of BlobServer improvements |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7044](https://issues.apache.org/jira/browse/FLINK-7044) | Add methods to the client API that take the stateDescriptor. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7109](https://issues.apache.org/jira/browse/FLINK-7109) | HadoopUtils#getHadoopConfiguration should not load global configuration |  Minor | Configuration | Till Rohrmann | Till Rohrmann |
| [FLINK-6828](https://issues.apache.org/jira/browse/FLINK-6828) | Activate checkstyle for runtime/deployment |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6825](https://issues.apache.org/jira/browse/FLINK-6825) | Activate checkstyle for runtime/heartbeat |  Trivial | Distributed Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6822](https://issues.apache.org/jira/browse/FLINK-6822) | Activate checkstyle for runtime/plugable |  Trivial | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6878](https://issues.apache.org/jira/browse/FLINK-6878) |  Activate checkstyle for runtime/query |  Trivial | Local Runtime | Greg Hogan | Greg Hogan |
| [FLINK-7099](https://issues.apache.org/jira/browse/FLINK-7099) | Replace usages of deprecated JOB\_MANAGER\_IPC\_PORT\_KEY |  Major | Configuration, Local Runtime | Chesnay Schepler | Fang Yong |
| [FLINK-6058](https://issues.apache.org/jira/browse/FLINK-6058) | Don't read DEFAULT\_PARALLELISM from GlobalConfiguration |  Major | DataStream API | Aljoscha Krettek | Fang Yong |
| [FLINK-7069](https://issues.apache.org/jira/browse/FLINK-7069) | Catch exceptions for each reporter separately |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7017](https://issues.apache.org/jira/browse/FLINK-7017) | Remove netty usages in flink-tests |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7047](https://issues.apache.org/jira/browse/FLINK-7047) | Reorganize build profiles |  Major | Tests, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6865](https://issues.apache.org/jira/browse/FLINK-6865) | Expand checkstyle docs to include import in intellij |  Major | Checkstyle | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6934](https://issues.apache.org/jira/browse/FLINK-6934) | Consider moving LRUCache and it's test classes |  Major | Local Runtime | mingleizhang | mingleizhang |
| [FLINK-6617](https://issues.apache.org/jira/browse/FLINK-6617) | Improve JAVA and SCALA logical plans consistent test |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-7186](https://issues.apache.org/jira/browse/FLINK-7186) | Activate checkstyle flink-java/sampling |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7189](https://issues.apache.org/jira/browse/FLINK-7189) | Activate checkstyle flink-java/utils |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7182](https://issues.apache.org/jira/browse/FLINK-7182) | Activate checkstyle flink-java/functions |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-6550](https://issues.apache.org/jira/browse/FLINK-6550) | Calling ctx.collect with a null OutputTag should log a warning or throw an exception |  Minor | DataStream API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7183](https://issues.apache.org/jira/browse/FLINK-7183) | Activate checkstyle flink-java/aggregation |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7184](https://issues.apache.org/jira/browse/FLINK-7184) | Activate checkstyle flink-java/hadoop |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7162](https://issues.apache.org/jira/browse/FLINK-7162) | Tests should not write outside 'target' directory. |  Major | Local Runtime | mingleizhang | mingleizhang |
| [FLINK-7232](https://issues.apache.org/jira/browse/FLINK-7232) | Update checkstyle docs regarding test inclusion |  Major | Checkstyle, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7224](https://issues.apache.org/jira/browse/FLINK-7224) | Incorrect Javadoc description in all Kafka consumer versions |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7211](https://issues.apache.org/jira/browse/FLINK-7211) | Exclude Gelly javadoc jar from release |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-6539](https://issues.apache.org/jira/browse/FLINK-6539) | Add automated end-to-end tests |  Major | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6365](https://issues.apache.org/jira/browse/FLINK-6365) | Adapt default values of the Kinesis connector |  Minor | Kinesis Connector | Steffen Hausmann | Bowen Li |
| [FLINK-7174](https://issues.apache.org/jira/browse/FLINK-7174) | Bump dependency of Kafka 0.10.x to the latest one |  Major | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-6940](https://issues.apache.org/jira/browse/FLINK-6940) | Clarify the effect of configuring per-job state backend |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-7228](https://issues.apache.org/jira/browse/FLINK-7228) | Harden HistoryServerStaticFileHandlerTest |  Minor | Tests, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7256](https://issues.apache.org/jira/browse/FLINK-7256) | End-to-end tests should only be run after successful compilation |  Major | Tests, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5987](https://issues.apache.org/jira/browse/FLINK-5987) | Upgrade zookeeper dependency to 3.4.10 |  Major | Build System | Ted Yu | mingleizhang |
| [FLINK-7141](https://issues.apache.org/jira/browse/FLINK-7141) | enable travis cache again |  Major | Build System, Travis | Nico Kruber | Nico Kruber |
| [FLINK-7181](https://issues.apache.org/jira/browse/FLINK-7181) | Activate checkstyle flink-java/operators/\* |  Trivial | Java API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7187](https://issues.apache.org/jira/browse/FLINK-7187) | Activate checkstyle flink-java/sca |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7257](https://issues.apache.org/jira/browse/FLINK-7257) | Extend flink-runtime checkstyle coverage to tests |  Minor | Checkstyle | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7125](https://issues.apache.org/jira/browse/FLINK-7125) | Remove configuration loading from AbstractYarnClusterDescriptor |  Major | YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-7220](https://issues.apache.org/jira/browse/FLINK-7220) | Update RocksDB dependency to 5.5.5 |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6998](https://issues.apache.org/jira/browse/FLINK-6998) | Kafka connector needs to expose metrics for failed/successful offset commits in the Kafka Consumer callback |  Major | Kafka Connector | Zhenzhong Xu | Zhenzhong Xu |
| [FLINK-7287](https://issues.apache.org/jira/browse/FLINK-7287) | test instability in Kafka010ITCase.testCommitOffsetsToKafka |  Major | Kafka Connector, Tests | Nico Kruber | Nico Kruber |
| [FLINK-7134](https://issues.apache.org/jira/browse/FLINK-7134) | Remove hadoop1.x code in mapreduce.utils.HadoopUtils |  Major | Java API | mingleizhang | mingleizhang |
| [FLINK-7118](https://issues.apache.org/jira/browse/FLINK-7118) | Remove hadoop1.x code in HadoopUtils |  Major | Java API | mingleizhang | mingleizhang |
| [FLINK-7290](https://issues.apache.org/jira/browse/FLINK-7290) | Make release scripts modular |  Major | Build System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7188](https://issues.apache.org/jira/browse/FLINK-7188) | Activate checkstyle flink-java/summarize |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7192](https://issues.apache.org/jira/browse/FLINK-7192) | Activate checkstyle flink-java/test/operator |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7185](https://issues.apache.org/jira/browse/FLINK-7185) | Activate checkstyle flink-java/io |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7191](https://issues.apache.org/jira/browse/FLINK-7191) | Activate checkstyle flink-java/operators/translation |  Trivial | Build System | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7311](https://issues.apache.org/jira/browse/FLINK-7311) | refrain from using fail(Exception#getMessage()) in core memory tests |  Minor | Core, Tests | Nico Kruber | Nico Kruber |
| [FLINK-7252](https://issues.apache.org/jira/browse/FLINK-7252) | Remove Flink Futures or back them by CompletableFutures |  Major | Build System | Stephan Ewen | Till Rohrmann |
| [FLINK-7127](https://issues.apache.org/jira/browse/FLINK-7127) | Remove unnecessary null check or add null check |  Trivial | State Backends, Checkpointing | Ufuk Celebi | Dmitrii Kniazev |
| [FLINK-4565](https://issues.apache.org/jira/browse/FLINK-4565) | Support for SQL IN operator |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-7210](https://issues.apache.org/jira/browse/FLINK-7210) | Add TwoPhaseCommitSinkFunction (implementing exactly-once semantic in generic way) |  Major | Streaming Connectors | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7349](https://issues.apache.org/jira/browse/FLINK-7349) | Only execute checkstyle in one build profile |  Major | Checkstyle, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7350](https://issues.apache.org/jira/browse/FLINK-7350) | only execute japicmp in one build profile |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4499](https://issues.apache.org/jira/browse/FLINK-4499) | Introduce findbugs maven plugin |  Major | Build System | Ted Yu | Suneel Marthi |
| [FLINK-7348](https://issues.apache.org/jira/browse/FLINK-7348) | Allow redundant modifiers on methods |  Major | Checkstyle | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7298](https://issues.apache.org/jira/browse/FLINK-7298) | Records can be cleared when all data in state is invalid |  Major | . | Hequn Cheng | Hequn Cheng |
| [FLINK-6429](https://issues.apache.org/jira/browse/FLINK-6429) | Bump up Calcite version to 1.13 |  Major | Table API & SQL | Timo Walther | Haohui Mai |
| [FLINK-7301](https://issues.apache.org/jira/browse/FLINK-7301) | Rework state documentation |  Major | Documentation | Timo Walther | Timo Walther |
| [FLINK-7382](https://issues.apache.org/jira/browse/FLINK-7382) | Broken links in \`Apache Flink Documentation\`  page |  Minor | Documentation | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7383](https://issues.apache.org/jira/browse/FLINK-7383) | Remove ConfigurationUtil |  Trivial | Configuration | Till Rohrmann | Till Rohrmann |
| [FLINK-7375](https://issues.apache.org/jira/browse/FLINK-7375) | Remove ActorGateway from JobClient |  Minor | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-7372](https://issues.apache.org/jira/browse/FLINK-7372) | Remove ActorGateway from JobGraph |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7408](https://issues.apache.org/jira/browse/FLINK-7408) | Extract WebRuntimeMonitor options from JobManagerOptions |  Trivial | Configuration | Till Rohrmann | Till Rohrmann |
| [FLINK-7434](https://issues.apache.org/jira/browse/FLINK-7434) | Scafolding of a scala project should rely on "sbt new" |  Minor | Documentation | Svend Vanderveken | Svend Vanderveken |
| [FLINK-7399](https://issues.apache.org/jira/browse/FLINK-7399) | Add checkstyle rule to forbid codehaus jackson imports |  Major | Checkstyle | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7445](https://issues.apache.org/jira/browse/FLINK-7445) | Remove FLINK-1234 reference from PR template |  Critical | GitHub | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7443](https://issues.apache.org/jira/browse/FLINK-7443) | Store and deserializer fields in MetricFetcher should be final |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7415](https://issues.apache.org/jira/browse/FLINK-7415) | Include instructions for creating the keyspace in cassandra examples |  Minor | Cassandra Connector | Hai Zhou UTC+8 |  |
| [FLINK-7405](https://issues.apache.org/jira/browse/FLINK-7405) | Reduce spamming warning logging from DatadogHttpReporter |  Minor | Metrics | Bowen Li | Bowen Li |
| [FLINK-7213](https://issues.apache.org/jira/browse/FLINK-7213) | Introduce state management by OperatorID in TaskManager |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-7462](https://issues.apache.org/jira/browse/FLINK-7462) | Add very obvious warning about outdated docs |  Major | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-7347](https://issues.apache.org/jira/browse/FLINK-7347) | "removeAll" is extremely inefficient in MessageAcknowledgingSourceBase.notifyCheckpointComplete |  Major | DataStream API | Yonatan Most | Yonatan Most |
| [FLINK-7269](https://issues.apache.org/jira/browse/FLINK-7269) | Refactor passing of dynamic properties |  Major | Configuration | Till Rohrmann | Fang Yong |
| [FLINK-6835](https://issues.apache.org/jira/browse/FLINK-6835) | Document the checkstyle requirements |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7480](https://issues.apache.org/jira/browse/FLINK-7480) | Set HADOOP\_CONF\_DIR to sane default if not set |  Major | Startup Shell Scripts | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6244](https://issues.apache.org/jira/browse/FLINK-6244) | Emit timeouted Patterns as Side Output |  Major | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7337](https://issues.apache.org/jira/browse/FLINK-7337) | Refactor handling of time indicator attributes |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7544](https://issues.apache.org/jira/browse/FLINK-7544) | Make all PathParameters mandatory |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7543](https://issues.apache.org/jira/browse/FLINK-7543) | Simplify REST parameter access. |  Major | REST | Kostas Kloudas | Chesnay Schepler |
| [FLINK-7454](https://issues.apache.org/jira/browse/FLINK-7454) | update 'Monitoring Current Event Time' section of Flink doc |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-7498](https://issues.apache.org/jira/browse/FLINK-7498) | Bind together state fields of TwoPhaseCommitSinkFunction |  Major | Streaming | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7559](https://issues.apache.org/jira/browse/FLINK-7559) | Typo in flink-quickstart pom.xml |  Minor | Quickstarts | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-6787](https://issues.apache.org/jira/browse/FLINK-6787) | Job-/StoppableException should extend FlinkException |  Trivial | Local Runtime | Chesnay Schepler | Fang Yong |
| [FLINK-7299](https://issues.apache.org/jira/browse/FLINK-7299) | Write GenericRecord using AvroOutputFormat |  Minor | Batch Connectors and Input/Output Formats | Vishnu Viswanath | Vishnu Viswanath |
| [FLINK-7422](https://issues.apache.org/jira/browse/FLINK-7422) | Upgrade Kinesis Client Library (KCL) and AWS SDK in flink-connector-kinesis |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7457](https://issues.apache.org/jira/browse/FLINK-7457) | Make dispatcher highly available |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7489](https://issues.apache.org/jira/browse/FLINK-7489) | Remove job lifecycle methods from public JobMasterGateway interface |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7409](https://issues.apache.org/jira/browse/FLINK-7409) | WebRuntimeMonitor blocks serving threads |  Minor | Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7404](https://issues.apache.org/jira/browse/FLINK-7404) | Table API batch join code-gen's equi-join conditions |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7572](https://issues.apache.org/jira/browse/FLINK-7572) | Improve TableSchema ValidationException message. |  Major | . | sunjincheng | sunjincheng |
| [FLINK-7407](https://issues.apache.org/jira/browse/FLINK-7407) | Assumption of partition id strict contiguity is too naive in Kafka consumer's AbstractPartitionDiscoverer |  Blocker | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7440](https://issues.apache.org/jira/browse/FLINK-7440) | Add eager serializable checks on provided de-/serialization schemas for Kinesis consumer / producer |  Major | Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7617](https://issues.apache.org/jira/browse/FLINK-7617) | Remove string format in BitSet to improve the performance of BuildSideOuterjoin |  Major | Local Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-7458](https://issues.apache.org/jira/browse/FLINK-7458) | Generalize GatewayRetriever for WebRuntimeMonitor |  Major | Distributed Coordination, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7459](https://issues.apache.org/jira/browse/FLINK-7459) | Introduce RedirectHandler for the WebRuntimeMonitor |  Major | Distributed Coordination, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7533](https://issues.apache.org/jira/browse/FLINK-7533) | Retry failed gateway retrievals in the LeaderGatewayRetriever |  Major | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7580](https://issues.apache.org/jira/browse/FLINK-7580) | Let LeaderGatewayRetriever implementations automatically retry failed gateway retrieval operations |  Minor | Distributed Coordination, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-4858](https://issues.apache.org/jira/browse/FLINK-4858) | Remove Legacy Checkpointing Interfaces |  Critical | DataStream API, State Backends, Checkpointing | Aljoscha Krettek |  |
| [FLINK-7583](https://issues.apache.org/jira/browse/FLINK-7583) | Create singleton isntance for the content type header |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7581](https://issues.apache.org/jira/browse/FLINK-7581) | Name netty threads of rest components |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7630](https://issues.apache.org/jira/browse/FLINK-7630) | Allow passing a File or an InputStream to ParameterTool.fromPropertiesFile() |  Minor | Java API | Wei-Che Wei | Wei-Che Wei |
| [FLINK-7527](https://issues.apache.org/jira/browse/FLINK-7527) | Add redirection logic to AbstractRestHandler |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7529](https://issues.apache.org/jira/browse/FLINK-7529) | Retrieve complete REST address from RestfulGateway |  Minor | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-6733](https://issues.apache.org/jira/browse/FLINK-6733) | Remove commented out AvgAggregationFunction.java |  Trivial | Java API | Dawid Wysakowicz | Mikhail Lipkovich |
| [FLINK-7644](https://issues.apache.org/jira/browse/FLINK-7644) | Line the extra semicolon in the source code |  Minor | Build System | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7442](https://issues.apache.org/jira/browse/FLINK-7442) | Add option for using a child-first classloader for loading user code |  Major | Local Runtime | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7619](https://issues.apache.org/jira/browse/FLINK-7619) | Improve abstraction in AbstractAsyncIOCallable to better fit |  Minor | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-7439](https://issues.apache.org/jira/browse/FLINK-7439) | Support variable arguments for UDTF in SQL |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-7664](https://issues.apache.org/jira/browse/FLINK-7664) | Replace FlinkFutureException by CompletionException |  Major | Core | Till Rohrmann | Till Rohrmann |
| [FLINK-7654](https://issues.apache.org/jira/browse/FLINK-7654) | Update RabbitMQ Java client to  4.x |  Major | RabbitMQ Connector, Streaming Connectors | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-2268](https://issues.apache.org/jira/browse/FLINK-2268) | Provide Flink binary release without Hadoop |  Major | Build System | Robert Metzger | Aljoscha Krettek |
| [FLINK-7645](https://issues.apache.org/jira/browse/FLINK-7645) | Modify system-metrics part show in the document |  Major | Documentation, Metrics | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7725](https://issues.apache.org/jira/browse/FLINK-7725) | Add test base for marshalling requests |  Trivial | REST, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6549](https://issues.apache.org/jira/browse/FLINK-6549) | Improve error message for type mismatches with side outputs |  Minor | DataStream API | Chesnay Schepler | Bowen Li |
| [FLINK-7541](https://issues.apache.org/jira/browse/FLINK-7541) | Redistribute operator state using OperatorID |  Major | . | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7662](https://issues.apache.org/jira/browse/FLINK-7662) | Remove unnecessary packaged licenses |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-7575](https://issues.apache.org/jira/browse/FLINK-7575) | Dashboard jobs/tasks metrics display 0 when metrics are not yet available |  Minor | Webfrontend | James Lafa | James Lafa |
| [FLINK-6988](https://issues.apache.org/jira/browse/FLINK-6988) | Add Apache Kafka 0.11 connector |  Major | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7744](https://issues.apache.org/jira/browse/FLINK-7744) | Add missing top links to documentation |  Minor | Documentation | Sirko B |  |
| [FLINK-7776](https://issues.apache.org/jira/browse/FLINK-7776) | do not emit duplicated records in group aggregation |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-7770](https://issues.apache.org/jira/browse/FLINK-7770) | Hide Queryable State behind a proxy. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7769](https://issues.apache.org/jira/browse/FLINK-7769) | Move Queryable State outside the runtime. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7660](https://issues.apache.org/jira/browse/FLINK-7660) | Support sideOutput in ProcessAllWindowFunction |  Major | DataStream API, Scala API | Bowen Li | Bowen Li |
| [FLINK-7414](https://issues.apache.org/jira/browse/FLINK-7414) | Hardcode scala.version to 2.11 in flink-quickstart-scala |  Blocker | Build System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6703](https://issues.apache.org/jira/browse/FLINK-6703) | Document how to take a savepoint on YARN |  Major | Documentation, YARN | Chesnay Schepler | Bowen Li |
| [FLINK-7813](https://issues.apache.org/jira/browse/FLINK-7813) | Replace MetricRegistryThreadFactory |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6314](https://issues.apache.org/jira/browse/FLINK-6314) | Allow setting CassandraSink mapper options |  Major | Cassandra Connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6907](https://issues.apache.org/jira/browse/FLINK-6907) | Adjust TupleGenerator javadocs in flink-java |  Trivial | Java API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7831](https://issues.apache.org/jira/browse/FLINK-7831) | Retrieve last received heartbeat from HeartbeatManager |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7861](https://issues.apache.org/jira/browse/FLINK-7861) | Suppress ActorKilledExceptions |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7579](https://issues.apache.org/jira/browse/FLINK-7579) | Documentation of yarn.application-attempts is not accurate |  Minor | Documentation | Sebastian Klemke | Sebastian Klemke |
| [FLINK-7879](https://issues.apache.org/jira/browse/FLINK-7879) | only execute apache-rat in one build profile |  Major | Travis | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-6861](https://issues.apache.org/jira/browse/FLINK-6861) | Use OperatorID in metric system |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7864](https://issues.apache.org/jira/browse/FLINK-7864) | Support side-outputs in CoProcessFunction |  Major | DataStream API | Aljoscha Krettek | Bowen Li |
| [FLINK-7388](https://issues.apache.org/jira/browse/FLINK-7388) | ProcessFunction.onTimer() sets processing time as timestamp |  Major | DataStream API | Fabian Hueske | Bowen Li |
| [FLINK-7611](https://issues.apache.org/jira/browse/FLINK-7611) | add metrics to measure the data drop by watermark |  Minor | Metrics | aitozi | aitozi |
| [FLINK-4831](https://issues.apache.org/jira/browse/FLINK-4831) | Implement a slf4j metric reporter |  Minor | Metrics | Chesnay Schepler | Hai Zhou UTC+8 |
| [FLINK-7502](https://issues.apache.org/jira/browse/FLINK-7502) | PrometheusReporter improvements |  Minor | Metrics | Maximilian Bode | Maximilian Bode |
| [FLINK-7666](https://issues.apache.org/jira/browse/FLINK-7666) | ContinuousFileReaderOperator swallows chained watermarks |  Blocker | Streaming Connectors | Ufuk Celebi | Kostas Kloudas |
| [FLINK-7920](https://issues.apache.org/jira/browse/FLINK-7920) | Make MiniClusterConfiguration immutable |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7840](https://issues.apache.org/jira/browse/FLINK-7840) | Shade Akka's Netty Dependency |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-7820](https://issues.apache.org/jira/browse/FLINK-7820) | deprecate docs of FoldingState and FoldingStateDescriptor |  Minor | Queryable State | Bowen Li | Bowen Li |
| [FLINK-7739](https://issues.apache.org/jira/browse/FLINK-7739) | Improve Kafka\*ITCase tests stability |  Major | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7781](https://issues.apache.org/jira/browse/FLINK-7781) | Support simple on-demand metrics aggregation |  Major | Metrics, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7912](https://issues.apache.org/jira/browse/FLINK-7912) | Document metrics REST API |  Major | Metrics, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7867](https://issues.apache.org/jira/browse/FLINK-7867) | Start MetricQueryService on TaskManagerRunner |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7876](https://issues.apache.org/jira/browse/FLINK-7876) | Register TaskManagerMetricGroup under ResourceID instead of InstanceID |  Minor | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-6529](https://issues.apache.org/jira/browse/FLINK-6529) | Rework the shading model in Flink |  Critical | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-7972](https://issues.apache.org/jira/browse/FLINK-7972) | Move SerializationSchema to flink-core |  Trivial | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-7420](https://issues.apache.org/jira/browse/FLINK-7420) | Move all Avro code to flink-avro |  Blocker | Build System | Stephan Ewen | Aljoscha Krettek |
| [FLINK-7992](https://issues.apache.org/jira/browse/FLINK-7992) | extend PR template with S3 question |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-7843](https://issues.apache.org/jira/browse/FLINK-7843) | Improve and enhance documentation for system metrics |  Critical | Documentation | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7997](https://issues.apache.org/jira/browse/FLINK-7997) | Avro should be always in the user code |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-8004](https://issues.apache.org/jira/browse/FLINK-8004) | Sample code in Debugging & Monitoring Metrics documentation section is not valid java |  Minor | Documentation, Metrics | Andreas Hecke | Chesnay Schepler |
| [FLINK-7810](https://issues.apache.org/jira/browse/FLINK-7810) | Switch from custom Flakka to Akka 2.4.x |  Major | Distributed Coordination | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7768](https://issues.apache.org/jira/browse/FLINK-7768) | Load File Systems via Java Service abstraction |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-7767](https://issues.apache.org/jira/browse/FLINK-7767) | Avoid loading Hadoop conf dynamically at runtime |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-7766](https://issues.apache.org/jira/browse/FLINK-7766) | Remove obsolete reflection for hflush on HDFS |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-7233](https://issues.apache.org/jira/browse/FLINK-7233) | TaskManagerHeapSizeCalculationJavaBashTest failed on Travis |  Major | Tests | Chesnay Schepler | Nico Kruber |
| [FLINK-7150](https://issues.apache.org/jira/browse/FLINK-7150) | Code improvements to the ElasticSearch connector |  Major | ElasticSearch Connector | Stephan Ewen | Stephan Ewen |
| [FLINK-7149](https://issues.apache.org/jira/browse/FLINK-7149) | Add checkpoint ID to 'sendValues()' in GenericWriteAheadSink |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-7136](https://issues.apache.org/jira/browse/FLINK-7136) | Docs search can be customized to be more useful |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-7105](https://issues.apache.org/jira/browse/FLINK-7105) | Make ActorSystem creation per default non-daemonic |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-5851](https://issues.apache.org/jira/browse/FLINK-5851) | Renaming AsyncCollector into ResultPromise/ResultFuture |  Major | DataStream API | Till Rohrmann | mingleizhang |
| [FLINK-6163](https://issues.apache.org/jira/browse/FLINK-6163) | Document per-window state in ProcessWindowFunction |  Blocker | DataStream API, Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8053](https://issues.apache.org/jira/browse/FLINK-8053) | Default to asynchronous snapshots for FsStateBackend |  Major | State Backends, Checkpointing | Aljoscha Krettek | Stefan Richter |
| [FLINK-8011](https://issues.apache.org/jira/browse/FLINK-8011) | Set dist flink-python dependency to provided |  Trivial | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8056](https://issues.apache.org/jira/browse/FLINK-8056) | Default flink-conf.yaml uses deprecated keys |  Major | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7848](https://issues.apache.org/jira/browse/FLINK-7848) | Allow time attributes for atomic types |  Major | Table API & SQL | Timo Walther | Fabian Hueske |
| [FLINK-3656](https://issues.apache.org/jira/browse/FLINK-3656) | Rework Table API tests |  Major | Table API & SQL | Vasia Kalavri |  |
| [FLINK-7986](https://issues.apache.org/jira/browse/FLINK-7986) | Introduce FilterSetOpTransposeRule to Flink |  Trivial | . | Ruidong Li | Ruidong Li |
| [FLINK-8063](https://issues.apache.org/jira/browse/FLINK-8063) | Client blocks indefinitely when querying a non-existing state |  Critical | Queryable State | Chesnay Schepler | Kostas Kloudas |
| [FLINK-7265](https://issues.apache.org/jira/browse/FLINK-7265) | FileSystems should describe their kind and consistency level |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8095](https://issues.apache.org/jira/browse/FLINK-8095) | Introduce ProjectSetOpTransposeRule to Flink |  Major | . | Ruidong Li | Ruidong Li |
| [FLINK-8099](https://issues.apache.org/jira/browse/FLINK-8099) | Reduce default restart delay to 1 second |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7977](https://issues.apache.org/jira/browse/FLINK-7977) | bump version of compatibility check for Flink 1.4 |  Minor | Build System | Bowen Li | Bowen Li |
| [FLINK-8070](https://issues.apache.org/jira/browse/FLINK-8070) | YarnTestBase should print prohibited string |  Critical | Tests, YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8166](https://issues.apache.org/jira/browse/FLINK-8166) | Release scripts should also create Hadoop-free binaries by default |  Minor | . | Tzu-Li (Gordon) Tai | Aljoscha Krettek |
| [FLINK-8125](https://issues.apache.org/jira/browse/FLINK-8125) | Support limiting the number of open FileSystem connections |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8081](https://issues.apache.org/jira/browse/FLINK-8081) | Annotate MetricRegistry#getReporters() with @VisibleForTesting |  Major | Metrics, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7907](https://issues.apache.org/jira/browse/FLINK-7907) | Flink Metrics documentation missing Scala examples |  Minor | Documentation | Colin Williams | Hai Zhou UTC+8 |
| [FLINK-7762](https://issues.apache.org/jira/browse/FLINK-7762) | Make WikipediaEditsSourceTest a proper test |  Minor | Streaming Connectors | Aljoscha Krettek | Ufuk Celebi |
| [FLINK-8193](https://issues.apache.org/jira/browse/FLINK-8193) | Rework quickstart exclusions |  Major | Build System, Quickstarts | Chesnay Schepler | Chesnay Schepler |


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
| [FLINK-5488](https://issues.apache.org/jira/browse/FLINK-5488) | yarnClient should be closed in AbstractYarnClusterDescriptor for error conditions |  Major | YARN | Ted Yu | Fang Yong |
| [FLINK-6742](https://issues.apache.org/jira/browse/FLINK-6742) | Improve error message when savepoint migration fails due to task removal |  Minor | State Backends, Checkpointing | Gyula Fora | Chesnay Schepler |
| [FLINK-6987](https://issues.apache.org/jira/browse/FLINK-6987) | TextInputFormatTest fails when run in path containing spaces |  Major | Build System | Timo Walther | mingleizhang |
| [FLINK-6655](https://issues.apache.org/jira/browse/FLINK-6655) | Misleading error message when HistoryServer path is empty |  Minor | History Server | Timo Walther | mingleizhang |
| [FLINK-6785](https://issues.apache.org/jira/browse/FLINK-6785) | Ineffective checks in MetricRegistryTest |  Major | Metrics, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7011](https://issues.apache.org/jira/browse/FLINK-7011) | Instable Kafka testStartFromKafkaCommitOffsets failures on Travis |  Major | Kafka Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6867](https://issues.apache.org/jira/browse/FLINK-6867) | Elasticsearch 1.x ITCase still instable due to embedded node instability |  Major | ElasticSearch Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6376](https://issues.apache.org/jira/browse/FLINK-6376) | when deploy flink cluster on the yarn, it is lack of hdfs delegation token. |  Major | Security, YARN | zhangrucong1982 | zhangrucong1982 |
| [FLINK-6310](https://issues.apache.org/jira/browse/FLINK-6310) | LocalExecutor#endSession() uses wrong lock for synchronization |  Major | Local Runtime | Ted Yu | Fang Yong |
| [FLINK-7066](https://issues.apache.org/jira/browse/FLINK-7066) | Kafka integration tests failing in "airplane mode" |  Major | Tests | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7012](https://issues.apache.org/jira/browse/FLINK-7012) | remove user-JAR upload when disposing a savepoint the old way |  Minor | Client, State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-7039](https://issues.apache.org/jira/browse/FLINK-7039) | Increase forkCountTestPackage for sudo-enabled TravisCI |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-7037](https://issues.apache.org/jira/browse/FLINK-7037) | Remove scala suffix from flink-examples module |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6759](https://issues.apache.org/jira/browse/FLINK-6759) | storm-examples cannot be built without cached dependencies |  Major | Build System | Chesnay Schepler |  |
| [FLINK-7038](https://issues.apache.org/jira/browse/FLINK-7038) | Several misused "KeyedDataStream" term in docs and Javadocs |  Trivial | Documentation | Tzu-Li (Gordon) Tai | mingleizhang |
| [FLINK-7041](https://issues.apache.org/jira/browse/FLINK-7041) | Deserialize StateBackend from JobCheckpointingSettings with user classloader |  Blocker | DataStream API, Distributed Coordination, State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7042](https://issues.apache.org/jira/browse/FLINK-7042) | Fix jar file discovery in YARN tests |  Critical | YARN | Greg Hogan | Greg Hogan |
| [FLINK-6302](https://issues.apache.org/jira/browse/FLINK-6302) | Documentation build error on ruby 2.4 |  Trivial | Documentation | Tao Meng | Tao Meng |
| [FLINK-7111](https://issues.apache.org/jira/browse/FLINK-7111) | flink-scala-shell fails on mvn verify |  Major | Scala Shell, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7133](https://issues.apache.org/jira/browse/FLINK-7133) | Fix Elasticsearch version interference |  Blocker | Streaming Connectors | Aljoscha Krettek | Adebski |
| [FLINK-7138](https://issues.apache.org/jira/browse/FLINK-7138) | Storm example jars do not contain WordCountData |  Major | Examples, Storm Compatibility | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7131](https://issues.apache.org/jira/browse/FLINK-7131) | Streaming wordcount jar does not contain WordCountData |  Major | Examples | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7132](https://issues.apache.org/jira/browse/FLINK-7132) | Fix BulkIteration parallelism |  Major | Java API | Greg Hogan | Greg Hogan |
| [FLINK-6888](https://issues.apache.org/jira/browse/FLINK-6888) | Can not determine TypeInformation of ACC type of AggregateFunction when ACC is a Scala case/tuple class |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-7034](https://issues.apache.org/jira/browse/FLINK-7034) | GraphiteReporter cannot recover from lost connection |  Blocker | Metrics | Aleksandr | Aljoscha Krettek |
| [FLINK-7173](https://issues.apache.org/jira/browse/FLINK-7173) | Fix the illustration of tumbling window. |  Major | DataStream API, Documentation | sunjincheng | sunjincheng |
| [FLINK-7154](https://issues.apache.org/jira/browse/FLINK-7154) | Missing call to build CsvTableSource example |  Trivial | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-7161](https://issues.apache.org/jira/browse/FLINK-7161) | Fix misusage of Double.MIN\_VALUE and Float.MIN\_VALUE |  Major | Configuration | Kurt Young | Kurt Young |
| [FLINK-7101](https://issues.apache.org/jira/browse/FLINK-7101) | Fix Non-windowed group-aggregate error when using \`minIdleStateRetentionTime\` config and retract agg |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-7178](https://issues.apache.org/jira/browse/FLINK-7178) | Datadog Metric Reporter Jar is Lacking Dependencies |  Critical | Metrics | Elias Levy | Chesnay Schepler |
| [FLINK-7212](https://issues.apache.org/jira/browse/FLINK-7212) | JobManagerLeaderSessionIDITSuite not executed |  Major | JobManager, Tests | Nico Kruber | Nico Kruber |
| [FLINK-6964](https://issues.apache.org/jira/browse/FLINK-6964) | Fix recovery for incremental checkpoints in StandaloneCompletedCheckpointStore |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-7102](https://issues.apache.org/jira/browse/FLINK-7102) | improve ClassLoaderITCase |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-7222](https://issues.apache.org/jira/browse/FLINK-7222) | Kafka010ITCase fails on windows |  Major | Kafka Connector | Fang Yong | Fang Yong |
| [FLINK-7197](https://issues.apache.org/jira/browse/FLINK-7197) | Missing call to GraphAlgorithmWrappingBase#canMergeConfigurationWith() |  Minor | Gelly | Ted Yu | Greg Hogan |
| [FLINK-5541](https://issues.apache.org/jira/browse/FLINK-5541) | Missing null check for localJar in FlinkSubmitter#submitTopology() |  Minor | Storm Compatibility | Ted Yu | mingleizhang |
| [FLINK-7230](https://issues.apache.org/jira/browse/FLINK-7230) | Travis sometimes fails due to downloaded snapshot artifacts |  Critical | Tests, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7176](https://issues.apache.org/jira/browse/FLINK-7176) | Failed builds (due to compilation) don't upload logs |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7058](https://issues.apache.org/jira/browse/FLINK-7058) | flink-scala-shell unintended dependencies for scala 2.11 |  Blocker | Build System | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7137](https://issues.apache.org/jira/browse/FLINK-7137) | Flink table API defaults top level fields as nullable and all nested fields within CompositeType as non-nullable |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-7177](https://issues.apache.org/jira/browse/FLINK-7177) | DataSetAggregateWithNullValuesRule fails creating null literal for non-nullable type |  Major | Table API & SQL | Rong Rong | Timo Walther |
| [FLINK-7255](https://issues.apache.org/jira/browse/FLINK-7255) | ListStateDescriptor example uses wrong constructor |  Major | Documentation, State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7170](https://issues.apache.org/jira/browse/FLINK-7170) | Fix until condition when the contiguity is strict |  Major | CEP | Dian Fu | Dian Fu |
| [FLINK-7258](https://issues.apache.org/jira/browse/FLINK-7258) | IllegalArgumentException in Netty bootstrap with large memory state segment size |  Minor | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-7241](https://issues.apache.org/jira/browse/FLINK-7241) | Fix YARN high availability documentation |  Major | Documentation, YARN | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7264](https://issues.apache.org/jira/browse/FLINK-7264) | travis watchdog is killed before tests |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7226](https://issues.apache.org/jira/browse/FLINK-7226) | REST responses contain invalid content-encoding header |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7234](https://issues.apache.org/jira/browse/FLINK-7234) | Fix CombineHint documentation |  Major | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-7082](https://issues.apache.org/jira/browse/FLINK-7082) | Flip-6: Generic entry point for Flink sessions |  Major | Cluster Management | Till Rohrmann | Till Rohrmann |
| [FLINK-7248](https://issues.apache.org/jira/browse/FLINK-7248) | Invalid checkRestoredNullCheckpointWhenFetcherNotReady test in FlinkKafkaConsumerBaseTest |  Major | Kafka Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7281](https://issues.apache.org/jira/browse/FLINK-7281) | Fix various issues in (Maven) release infrastructure |  Blocker | Build System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7279](https://issues.apache.org/jira/browse/FLINK-7279) | MiniCluster can deadlock at shut down |  Major | Tests | Till Rohrmann | Nico Kruber |
| [FLINK-7115](https://issues.apache.org/jira/browse/FLINK-7115) | test instability in MiniClusterITCase.runJobWithMultipleJobManagers |  Major | Tests | Nico Kruber |  |
| [FLINK-7201](https://issues.apache.org/jira/browse/FLINK-7201) | ConcurrentModificationException in JobLeaderIdService |  Major | JobManager | Xu Pingyong | Xu Pingyong |
| [FLINK-6213](https://issues.apache.org/jira/browse/FLINK-6213) | When number of failed containers exceeds maximum failed containers and application is stopped, the AM container will be released 10 minutes later |  Major | YARN | Yelei Feng | Yelei Feng |
| [FLINK-7283](https://issues.apache.org/jira/browse/FLINK-7283) | PythonPlanBinderTest issues with python paths |  Major | Python API, Tests | Nico Kruber | Nico Kruber |
| [FLINK-6996](https://issues.apache.org/jira/browse/FLINK-6996) | FlinkKafkaProducer010 doesn't guarantee at-least-once semantic |  Blocker | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7346](https://issues.apache.org/jira/browse/FLINK-7346) | EventTimeWindowCheckpointingITCase.testPreAggregatedSlidingTimeWindow killed by maven watchdog on Travis |  Major | DataStream API, Tests | Nico Kruber | Nico Kruber |
| [FLINK-7166](https://issues.apache.org/jira/browse/FLINK-7166) | generated avro sources not cleaned up or re-created after changes |  Major | Build System | Nico Kruber | Nico Kruber |
| [FLINK-7215](https://issues.apache.org/jira/browse/FLINK-7215) | Typo in FAQ page |  Trivial | Documentation | Bowen Li | Bowen Li |
| [FLINK-7306](https://issues.apache.org/jira/browse/FLINK-7306) | function notFollowedBy in CEP  dont  return  a  Pattern  object |  Major | CEP | Hanmiao Li | Dawid Wysakowicz |
| [FLINK-7143](https://issues.apache.org/jira/browse/FLINK-7143) | Partition assignment for Kafka consumer is not stable |  Blocker | Kafka Connector | Steven Zhen Wu | Tzu-Li (Gordon) Tai |
| [FLINK-6493](https://issues.apache.org/jira/browse/FLINK-6493) | Ineffective null check in RegisteredOperatorBackendStateMetaInfo#equals() |  Minor | State Backends, Checkpointing | Ted Yu | mingleizhang |
| [FLINK-7356](https://issues.apache.org/jira/browse/FLINK-7356) | misleading s3 file uri in configuration file |  Major | Configuration | Bowen Li | Bowen Li |
| [FLINK-7221](https://issues.apache.org/jira/browse/FLINK-7221) | JDBCOutputFormat swallows errors on last batch |  Major | Batch Connectors and Input/Output Formats | Ken Geis | Fabian Hueske |
| [FLINK-7343](https://issues.apache.org/jira/browse/FLINK-7343) | Kafka010ProducerITCase instability |  Major | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7385](https://issues.apache.org/jira/browse/FLINK-7385) | Fix ArrayIndexOutOfBoundsException when object-reuse is enabled |  Blocker | DataStream API | Ruidong Li | Ruidong Li |
| [FLINK-7352](https://issues.apache.org/jira/browse/FLINK-7352) | ExecutionGraphRestartTest timeouts |  Critical | Distributed Coordination, Tests | Nico Kruber | Till Rohrmann |
| [FLINK-7240](https://issues.apache.org/jira/browse/FLINK-7240) | Externalized RocksDB can fail with stackoverflow |  Critical | State Backends, Checkpointing, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-7354](https://issues.apache.org/jira/browse/FLINK-7354) | test instability in LocalFlinkMiniClusterITCase#testLocalFlinkMiniClusterWithMultipleTaskManagers |  Critical | Tests | Nico Kruber | Nico Kruber |
| [FLINK-7260](https://issues.apache.org/jira/browse/FLINK-7260) | Match not exhaustive in WindowJoinUtil.scala |  Minor | Table API & SQL | Ted Yu | Timo Walther |
| [FLINK-7396](https://issues.apache.org/jira/browse/FLINK-7396) | Don't put multiple directories in HADOOP\_CONF\_DIR in config.sh |  Blocker | Startup Shell Scripts | Aljoscha Krettek | Fang Yong |
| [FLINK-7441](https://issues.apache.org/jira/browse/FLINK-7441) | Double quote string literals is not supported in Table API and SQL |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-6692](https://issues.apache.org/jira/browse/FLINK-6692) | The flink-dist jar contains unshaded netty jar |  Major | Build System | Haohui Mai | Haohui Mai |
| [FLINK-7268](https://issues.apache.org/jira/browse/FLINK-7268) | Zookeeper Checkpoint Store interacting with Incremental State Handles can lead to loss of handles |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Stefan Richter |
| [FLINK-7362](https://issues.apache.org/jira/browse/FLINK-7362) | CheckpointProperties are not correctly set when restoring savepoint with HA enabled |  Major | State Backends, Checkpointing | Aljoscha Krettek | Stefan Richter |
| [FLINK-7453](https://issues.apache.org/jira/browse/FLINK-7453) | FlinkKinesisProducer logs empty aws region |  Minor | . | Bowen Li | Bowen Li |
| [FLINK-7477](https://issues.apache.org/jira/browse/FLINK-7477) | Use "hadoop classpath" to augment classpath when available |  Major | Startup Shell Scripts | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7398](https://issues.apache.org/jira/browse/FLINK-7398) | Table API operators/UDFs must not store Logger |  Blocker | Table API & SQL | Aljoscha Krettek | Haohui Mai |
| [FLINK-7309](https://issues.apache.org/jira/browse/FLINK-7309) | NullPointerException in CodeGenUtils.timePointToInternalCode() generated code |  Critical | Local Runtime, Table API & SQL | Liangliang Chen |  |
| [FLINK-7366](https://issues.apache.org/jira/browse/FLINK-7366) | Upgrade kinesis producer library in flink-connector-kinesis |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7556](https://issues.apache.org/jira/browse/FLINK-7556) | Fix fetch size configurable in JDBCInputFormat for MySQL Driver |  Trivial | Batch Connectors and Input/Output Formats | Nycholas de Oliveira e Oliveira | Nycholas de Oliveira e Oliveira |
| [FLINK-7501](https://issues.apache.org/jira/browse/FLINK-7501) | Generalize leader id of RegisteredRpcConnection |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7444](https://issues.apache.org/jira/browse/FLINK-7444) | Make external calls non-blocking |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7526](https://issues.apache.org/jira/browse/FLINK-7526) | TaskExecutor should filter out duplicate JobManager gained leadership messages |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7523](https://issues.apache.org/jira/browse/FLINK-7523) | test instability in LocalStreamEnvironmentITCase#testRunIsolatedJob |  Critical | Distributed Coordination | Nico Kruber | Till Rohrmann |
| [FLINK-7227](https://issues.apache.org/jira/browse/FLINK-7227) | OR expression with more than 2 predicates is not pushed into a TableSource |  Major | Table API & SQL | Usman Younas | Usman Younas |
| [FLINK-7564](https://issues.apache.org/jira/browse/FLINK-7564) | Fix Watermark semantics in Table API |  Blocker | Table API & SQL | Aljoscha Krettek | Xingcan Cui |
| [FLINK-7568](https://issues.apache.org/jira/browse/FLINK-7568) | Bring window documentation up-to-date with latest changes and improve |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7430](https://issues.apache.org/jira/browse/FLINK-7430) | ContinuousFileReaderOperator swallows exceptions |  Critical | DataStream API, filesystem-connector | Peter Ertl | Till Rohrmann |
| [FLINK-7367](https://issues.apache.org/jira/browse/FLINK-7367) | Parameterize more configs for FlinkKinesisProducer (RecordMaxBufferedTime, MaxConnections, RequestTimeout, etc) |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7294](https://issues.apache.org/jira/browse/FLINK-7294) | mesos.resourcemanager.framework.role not working |  Critical | Mesos | Bhumika Bayani | Eron Wright |
| [FLINK-7199](https://issues.apache.org/jira/browse/FLINK-7199) | Graph simplification does not set parallelism |  Minor | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-7273](https://issues.apache.org/jira/browse/FLINK-7273) | Gelly tests with empty graphs |  Minor | Gelly | Greg Hogan | Greg Hogan |
| [FLINK-7625](https://issues.apache.org/jira/browse/FLINK-7625) |  typo in docs metrics sections |  Major | Documentation, Metrics | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7563](https://issues.apache.org/jira/browse/FLINK-7563) | Fix watermark semantics in CEP operators |  Blocker | CEP | Aljoscha Krettek | Yueting Chen |
| [FLINK-7639](https://issues.apache.org/jira/browse/FLINK-7639) | TaskExecutorITCase is flakey |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-7598](https://issues.apache.org/jira/browse/FLINK-7598) | ineffective shaded artifacts checks in travis\_mvn\_watchdog.sh |  Major | Travis | Nico Kruber | Nico Kruber |
| [FLINK-7609](https://issues.apache.org/jira/browse/FLINK-7609) | WindowWordCount example doesn't print countWindow output with default configs |  Major | Examples | Bowen Li | Bowen Li |
| [FLINK-7651](https://issues.apache.org/jira/browse/FLINK-7651) | RetryingRegistration does not wait between failed connection attempts |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7552](https://issues.apache.org/jira/browse/FLINK-7552) | Extend SinkFunction interface with SinkContext |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7553](https://issues.apache.org/jira/browse/FLINK-7553) | Use new SinkFunction interface in FlinkKafkaProducer010 |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7571](https://issues.apache.org/jira/browse/FLINK-7571) | Execution of TableSources with Time Indicators fails |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7655](https://issues.apache.org/jira/browse/FLINK-7655) | Revisit default non-leader id for FencedRpcEndpoints |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7567](https://issues.apache.org/jira/browse/FLINK-7567) | DataStream#iterate() on env.fromElements() / env.fromCollection() does not work |  Major | DataStream API | Peter Ertl | Mikhail Lipkovich |
| [FLINK-7600](https://issues.apache.org/jira/browse/FLINK-7600) | shorten delay of KinesisProducerConfiguration.setCredentialsRefreshDelay() to avoid updateCredentials Exception |  Minor | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7656](https://issues.apache.org/jira/browse/FLINK-7656) | Switch to user ClassLoader when invoking initializeOnMaster finalizeOnMaster |  Major | Local Runtime | Fabian Hueske | Fabian Hueske |
| [FLINK-7596](https://issues.apache.org/jira/browse/FLINK-7596) | fix bug when Set Operation handles ANY type |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-4047](https://issues.apache.org/jira/browse/FLINK-4047) | Fix documentation about determinism of KeySelectors |  Blocker | Documentation | Fabian Hueske | mingleizhang |
| [FLINK-4048](https://issues.apache.org/jira/browse/FLINK-4048) | Remove Hadoop dependencies from ExecutionEnvironment |  Major | DataSet API | Robert Metzger | Aljoscha Krettek |
| [FLINK-7663](https://issues.apache.org/jira/browse/FLINK-7663) | Allow AbstractRestHandler to handle bad requests |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7487](https://issues.apache.org/jira/browse/FLINK-7487) | test instability in ClassLoaderITCase (no resources available) |  Critical | Tests | Nico Kruber | Nico Kruber |
| [FLINK-7675](https://issues.apache.org/jira/browse/FLINK-7675) | LatestCompletedCheckpointExternalPathGauge should check if external path is exist |  Blocker | Metrics | Wei-Che Wei | Wei-Che Wei |
| [FLINK-7659](https://issues.apache.org/jira/browse/FLINK-7659) | Unprotected access to inProgress in JobCancellationWithSavepointHandlers#handleNewRequest |  Major | REST | Ted Yu | Bowen Li |
| [FLINK-7626](https://issues.apache.org/jira/browse/FLINK-7626) | Add some metric description about checkpoints |  Major | Documentation, Metrics | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7438](https://issues.apache.org/jira/browse/FLINK-7438) | Some classes are eclipsed by classes in package scala |  Minor | Build System, DataStream API, Scala API | Ted Yu | Hai Zhou UTC+8 |
| [FLINK-7674](https://issues.apache.org/jira/browse/FLINK-7674) | NullPointerException in ContinuousFileMonitoringFunction close |  Minor | Streaming Connectors | Ufuk Celebi | Bowen Li |
| [FLINK-7547](https://issues.apache.org/jira/browse/FLINK-7547) | o.a.f.s.api.scala.async.AsyncFunction is not declared Serializable |  Minor | Streaming | Elias Levy | Hai Zhou UTC+8 |
| [FLINK-7734](https://issues.apache.org/jira/browse/FLINK-7734) | test instability in ResourceManagerTest |  Critical | ResourceManager, Tests | Nico Kruber | Till Rohrmann |
| [FLINK-7700](https://issues.apache.org/jira/browse/FLINK-7700) | State merging in RocksDB backend leaves old state |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5619](https://issues.apache.org/jira/browse/FLINK-5619) | Consolidate State tests |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7721](https://issues.apache.org/jira/browse/FLINK-7721) | StatusWatermarkValve should output a new min watermark only if it was aggregated from aligned chhanels |  Blocker | DataStream API | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7728](https://issues.apache.org/jira/browse/FLINK-7728) | StatusWatermarkValve has different min watermark advancement behavior depending on the ordering inputs become idle |  Blocker | DataStream API | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7483](https://issues.apache.org/jira/browse/FLINK-7483) | BlobCache cleanup timer not reset after job re-registration |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-5908](https://issues.apache.org/jira/browse/FLINK-5908) | Blob Cache can (rarely) get corrupted on failed blob downloads |  Major | Distributed Coordination, Network | Stephan Ewen | Nico Kruber |
| [FLINK-6380](https://issues.apache.org/jira/browse/FLINK-6380) | BlobService concurrency issues between delete and put/get methods |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-4660](https://issues.apache.org/jira/browse/FLINK-4660) | HadoopFileSystem (with S3A) may leak connections, which cause job to stuck in a restarting loop |  Critical | State Backends, Checkpointing | Zhenzhong Xu |  |
| [FLINK-7761](https://issues.apache.org/jira/browse/FLINK-7761) | Twitter example is not self-contained |  Major | Examples | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7790](https://issues.apache.org/jira/browse/FLINK-7790) | Unresolved query parameters are not omitted from request |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7792](https://issues.apache.org/jira/browse/FLINK-7792) | CliFrontend tests suppress logging |  Trivial | Client, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7808](https://issues.apache.org/jira/browse/FLINK-7808) | JobDetails constructor should check length of tasksPerState array |  Minor | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7807](https://issues.apache.org/jira/browse/FLINK-7807) | HandlerUtils methods should log errors |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7818](https://issues.apache.org/jira/browse/FLINK-7818) | Synchronize MetricStore access in the TaskManagersHandler |  Major | Metrics, REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7830](https://issues.apache.org/jira/browse/FLINK-7830) | Problematic interaction of CEP and asynchronous snapshots |  Major | CEP, State Backends, Checkpointing | Aljoscha Krettek |  |
| [FLINK-6805](https://issues.apache.org/jira/browse/FLINK-6805) | Flink Cassandra connector dependency on Netty disagrees with Flink |  Blocker | Cassandra Connector | Shannon Carey | Michael Fong |
| [FLINK-7774](https://issues.apache.org/jira/browse/FLINK-7774) | Deserializers are not cleaned up when closing input streams |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7763](https://issues.apache.org/jira/browse/FLINK-7763) | TableSinkITCase fails with "object reuse" enabled |  Blocker | Table API & SQL | Aljoscha Krettek | Fabian Hueske |
| [FLINK-7371](https://issues.apache.org/jira/browse/FLINK-7371) | user defined aggregator assumes nr of arguments smaller or equal than number of row fields |  Blocker | Table API & SQL | Stefano Bortoli | Timo Walther |
| [FLINK-7426](https://issues.apache.org/jira/browse/FLINK-7426) | Table API does not support null values in keys |  Blocker | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-7785](https://issues.apache.org/jira/browse/FLINK-7785) | DispatcherTest failure |  Major | Distributed Coordination, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-7757](https://issues.apache.org/jira/browse/FLINK-7757) | RocksDB lock is too strict and can block snapshots in synchronous phase |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-7021](https://issues.apache.org/jira/browse/FLINK-7021) | Flink Task Manager hangs on startup if one Zookeeper node is unresolvable |  Blocker | Core | Scott Kidder | Scott Kidder |
| [FLINK-7759](https://issues.apache.org/jira/browse/FLINK-7759) | Fix Bug that fieldName with Boolean prefix can't be parsed by ExpressionParser. |  Critical | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-7802](https://issues.apache.org/jira/browse/FLINK-7802) | Exception occur when empty field collection was pushed into CSVTableSource |  Critical | Table API & SQL | godfrey he | godfrey he |
| [FLINK-7730](https://issues.apache.org/jira/browse/FLINK-7730) | TableFunction LEFT OUTER joins with ON predicates are broken |  Critical | Table API & SQL | Fabian Hueske | Xingcan Cui |
| [FLINK-7875](https://issues.apache.org/jira/browse/FLINK-7875) | StaticFileServer should not reuse the tmp dir |  Minor | Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7837](https://issues.apache.org/jira/browse/FLINK-7837) | AggregatingFunction does not work with immutable types |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7839](https://issues.apache.org/jira/browse/FLINK-7839) | Creating Quickstart project for SNAPSHOT version fails |  Major | Documentation | Gary Yao | Michael Fong |
| [FLINK-7793](https://issues.apache.org/jira/browse/FLINK-7793) | SlotManager releases idle TaskManager in standalone mode |  Major | ResourceManager | Till Rohrmann | Till Rohrmann |
| [FLINK-7898](https://issues.apache.org/jira/browse/FLINK-7898) | TaskExecutorTest.testTriggerRegistrationOnLeaderChange fails on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-7899](https://issues.apache.org/jira/browse/FLINK-7899) | SlotManagerTest.testTaskManagerTimeoutDoesNotRemoveSlots flaky on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6546](https://issues.apache.org/jira/browse/FLINK-6546) | Fix dependencies of flink-mesos |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-6245](https://issues.apache.org/jira/browse/FLINK-6245) | Fix late side output documentation in Window documents. |  Minor | DataStream API, Documentation | Kostas Kloudas | Bowen Li |
| [FLINK-7067](https://issues.apache.org/jira/browse/FLINK-7067) | Cancel with savepoint does not restart checkpoint scheduler on failure |  Blocker | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-7868](https://issues.apache.org/jira/browse/FLINK-7868) | Only run checkstyleonce for compilation |  Critical | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7623](https://issues.apache.org/jira/browse/FLINK-7623) | Detecting whether an operator is restored doesn't work with chained state |  Blocker | DataStream API, State Backends, Checkpointing | Aljoscha Krettek | Piotr Nowojski |
| [FLINK-7737](https://issues.apache.org/jira/browse/FLINK-7737) | On HCFS systems, FSDataOutputStream does not issue hsync only hflush which leads to data loss |  Blocker | Streaming Connectors | Ryan Hobbs | Piotr Nowojski |
| [FLINK-7731](https://issues.apache.org/jira/browse/FLINK-7731) | Trigger on GlobalWindow does not clean state completely |  Minor | Core, DataStream API | Gerard Garcia | Aljoscha Krettek |
| [FLINK-7755](https://issues.apache.org/jira/browse/FLINK-7755) | Null values are not correctly handled by batch inner and outer joins |  Blocker | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7882](https://issues.apache.org/jira/browse/FLINK-7882) | Writing to S3 from EMR fails with exception |  Blocker | Core | Gary Yao | Piotr Nowojski |
| [FLINK-7849](https://issues.apache.org/jira/browse/FLINK-7849) | Remove guava shading from hcatalog connector |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7669](https://issues.apache.org/jira/browse/FLINK-7669) | Always load Flink classes through parent ClassLoader |  Blocker | Local Runtime | Raymond Tay | Aljoscha Krettek |
| [FLINK-7542](https://issues.apache.org/jira/browse/FLINK-7542) | Some tests in AggregateITCase fail for some Time Zones |  Major | Table API & SQL | Usman Younas | Fabian Hueske |
| [FLINK-7637](https://issues.apache.org/jira/browse/FLINK-7637) | FlinkKinesisProducer violates at-least-once guarantees |  Blocker | Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7368](https://issues.apache.org/jira/browse/FLINK-7368) | MetricStore makes cpu spin at 100% |  Blocker | Metrics | Nico Chen | Piotr Nowojski |
| [FLINK-7846](https://issues.apache.org/jira/browse/FLINK-7846) | Remove guava shading from ES2 connector |  Minor | Build System, ElasticSearch Connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6173](https://issues.apache.org/jira/browse/FLINK-6173) | flink-table not pack-in com.fasterxml.jackson.\* in after #FLINK-5414 |  Blocker | Table API & SQL | Zhenghua Gao | Timo Walther |
| [FLINK-7844](https://issues.apache.org/jira/browse/FLINK-7844) | Fine Grained Recovery triggers checkpoint timeout failure |  Major | State Backends, Checkpointing | Zhenzhong Xu | Till Rohrmann |
| [FLINK-7933](https://issues.apache.org/jira/browse/FLINK-7933) | Test instability PrometheusReporterTest |  Critical | Metrics, Tests | Kostas Kloudas | Chesnay Schepler |
| [FLINK-6870](https://issues.apache.org/jira/browse/FLINK-6870) | Combined batch and stream TableSource can not produce same time attributes |  Major | Table API & SQL | Timo Walther |  |
| [FLINK-7179](https://issues.apache.org/jira/browse/FLINK-7179) | ProjectableTableSource interface doesn't compatible with BoundedOutOfOrdernessTimestampExtractor |  Major | Table API & SQL | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-5233](https://issues.apache.org/jira/browse/FLINK-5233) | Upgrade Jackson version because of class loader leak |  Critical | Local Runtime | Robert Metzger | Chesnay Schepler |
| [FLINK-7902](https://issues.apache.org/jira/browse/FLINK-7902) | TwoPhaseCommitSinkFunctions should use custom TypeSerializer |  Blocker | Kafka Connector | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7939](https://issues.apache.org/jira/browse/FLINK-7939) | DataStream of atomic type cannot be converted to Table with time attributes |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7400](https://issues.apache.org/jira/browse/FLINK-7400) | off-heap limits set to conservatively in cluster environments |  Blocker | Cluster Management, Mesos, YARN | Nico Kruber | Nico Kruber |
| [FLINK-7100](https://issues.apache.org/jira/browse/FLINK-7100) | TaskManager metrics are registered twice |  Blocker | Local Runtime, Metrics | Chesnay Schepler | Fang Yong |
| [FLINK-7732](https://issues.apache.org/jira/browse/FLINK-7732) | Invalid offset to commit in Kafka |  Blocker | Kafka Connector, Tests | Nico Kruber | Piotr Nowojski |
| [FLINK-7960](https://issues.apache.org/jira/browse/FLINK-7960) | ExecutionGraphRestartTest fails sporadically |  Critical | Distributed Coordination, Tests | Gary Yao | Till Rohrmann |
| [FLINK-7784](https://issues.apache.org/jira/browse/FLINK-7784) | Don't fail TwoPhaseCommitSinkFunction when failing to commit |  Blocker | DataStream API | Aljoscha Krettek | Gary Yao |
| [FLINK-7764](https://issues.apache.org/jira/browse/FLINK-7764) | FlinkKafkaProducer010 does not accept name, uid, or parallelism |  Major | Kafka Connector | Fabian Hueske | Xingcan Cui |
| [FLINK-7153](https://issues.apache.org/jira/browse/FLINK-7153) | Eager Scheduling can't allocate source for ExecutionGraph correctly |  Critical | JobManager | Sihua Zhou | Till Rohrmann |
| [FLINK-7421](https://issues.apache.org/jira/browse/FLINK-7421) | AvroRow(De)serializationSchema not serializable |  Critical | Streaming Connectors, Table API & SQL | Timo Walther | Fabian Hueske |
| [FLINK-7338](https://issues.apache.org/jira/browse/FLINK-7338) | User Defined aggregation with constants causes error under in lowerbound over window extraction |  Critical | Table API & SQL | Stefano Bortoli | Fabian Hueske |
| [FLINK-7968](https://issues.apache.org/jira/browse/FLINK-7968) | Deduplicate serializer classes between runtime and queryable state |  Trivial | Queryable State | Stephan Ewen | Stephan Ewen |
| [FLINK-7847](https://issues.apache.org/jira/browse/FLINK-7847) | Fix typo in flink-avro shading pattern |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7994](https://issues.apache.org/jira/browse/FLINK-7994) | Remove direct curator dependency from flink-mesos |  Major | Build System, Mesos | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7993](https://issues.apache.org/jira/browse/FLINK-7993) | Kafka 08 curator shading pattern out-of-sync |  Blocker | Build System, Kafka Connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7701](https://issues.apache.org/jira/browse/FLINK-7701) | IllegalArgumentException in Netty bootstrap with small memory state segment size |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7905](https://issues.apache.org/jira/browse/FLINK-7905) | HadoopS3FileSystemITCase failed on travis |  Major | FileSystem, Tests | Chesnay Schepler | Stephan Ewen |
| [FLINK-7978](https://issues.apache.org/jira/browse/FLINK-7978) | Kafka011 exactly-once Producer sporadically fails to commit under high parallelism |  Blocker | Kafka Connector | Gary Yao | Piotr Nowojski |
| [FLINK-8001](https://issues.apache.org/jira/browse/FLINK-8001) | Mark Kafka Consumer as idle if it doesn't have partitions |  Blocker | . | Aljoscha Krettek | Tzu-Li (Gordon) Tai |
| [FLINK-8010](https://issues.apache.org/jira/browse/FLINK-8010) | Bump remaining flink-shaded dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8009](https://issues.apache.org/jira/browse/FLINK-8009) | flink-dist pulls in flink-runtime's transitive avro/jackson dependency |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7838](https://issues.apache.org/jira/browse/FLINK-7838) | Kafka011ProducerExactlyOnceITCase do not finish |  Blocker | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7772](https://issues.apache.org/jira/browse/FLINK-7772) | Test instability in BlobCacheDeleteTest |  Critical | Network | Nico Kruber | Nico Kruber |
| [FLINK-7742](https://issues.apache.org/jira/browse/FLINK-7742) | Fix array access might be out of bounds |  Major | Build System | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7643](https://issues.apache.org/jira/browse/FLINK-7643) | Configure FileSystems only once |  Major | State Backends, Checkpointing | Ufuk Celebi | Stephan Ewen |
| [FLINK-7436](https://issues.apache.org/jira/browse/FLINK-7436) | HBaseConnectorITCase NullPointerException |  Major | Batch Connectors and Input/Output Formats | Greg Hogan |  |
| [FLINK-7357](https://issues.apache.org/jira/browse/FLINK-7357) | HOP\_START() HOP\_END() does not work when using HAVING clause with GROUP BY HOP window |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-7231](https://issues.apache.org/jira/browse/FLINK-7231) | SlotSharingGroups are not always released in time for new restarts |  Blocker | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-7225](https://issues.apache.org/jira/browse/FLINK-7225) | Cutoff exception message in StateDescriptor |  Major | State Backends, Checkpointing | Chesnay Schepler | Stephan Ewen |
| [FLINK-7216](https://issues.apache.org/jira/browse/FLINK-7216) | ExecutionGraph can perform concurrent global restarts to scheduling |  Blocker | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-6654](https://issues.apache.org/jira/browse/FLINK-6654) | missing maven dependency on "flink-shaded-hadoop2-uber" in flink-dist |  Major | Build System | Nico Kruber | Nico Kruber |
| [FLINK-7971](https://issues.apache.org/jira/browse/FLINK-7971) | Fix potential NPE with inconsistent state |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-8012](https://issues.apache.org/jira/browse/FLINK-8012) | Table with time attribute cannot be written to CsvTableSink |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7922](https://issues.apache.org/jira/browse/FLINK-7922) | leastRestrictive in FlinkTypeFactory does not resolve composite type correctly |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-8002](https://issues.apache.org/jira/browse/FLINK-8002) | Incorrect join window boundaries for LESS\_THAN and GREATER\_THAN predicates |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-8017](https://issues.apache.org/jira/browse/FLINK-8017) | High availability cluster-id option incorrect in documentation |  Minor | Documentation | Dan Kelley |  |
| [FLINK-8005](https://issues.apache.org/jira/browse/FLINK-8005) | Snapshotting FlinkKafkaProducer011 fails due to ClassLoader issues |  Blocker | Core, Kafka Connector, State Backends, Checkpointing | Gary Yao | Gary Yao |
| [FLINK-4500](https://issues.apache.org/jira/browse/FLINK-4500) | Cassandra sink can lose messages |  Major | Cassandra Connector | Elias Levy | Michael Fong |
| [FLINK-8040](https://issues.apache.org/jira/browse/FLINK-8040) | Test instability ResourceGuard#testCloseBlockIfAcquired |  Major | Core, Tests | Gary Yao | Stefan Richter |
| [FLINK-7657](https://issues.apache.org/jira/browse/FLINK-7657) | SQL Timestamps Converted To Wrong Type By Optimizer Causing ClassCastException |  Blocker | Table API & SQL | Kent Murra | Kent Murra |
| [FLINK-7845](https://issues.apache.org/jira/browse/FLINK-7845) | Netty Exception when submitting batch job repeatedly |  Blocker | Core, Network | Flavio Pompermaier | Piotr Nowojski |
| [FLINK-8006](https://issues.apache.org/jira/browse/FLINK-8006) | flink-daemon.sh: line 103: binary operator expected |  Major | Startup Shell Scripts | Alejandro |  |
| [FLINK-7998](https://issues.apache.org/jira/browse/FLINK-7998) | Make case classes in TPCHQuery3.java public to allow dynamic instantiation |  Minor | Examples | Keren Zhu | Keren Zhu |
| [FLINK-8071](https://issues.apache.org/jira/browse/FLINK-8071) | Akka shading sometimes produces invalid code |  Blocker | Build System, Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7973](https://issues.apache.org/jira/browse/FLINK-7973) | Fix service shading relocation for S3 file systems |  Blocker | . | Stephan Ewen | Nico Kruber |
| [FLINK-7451](https://issues.apache.org/jira/browse/FLINK-7451) | Query fails when non-ascii characters are used in string literals |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-8013](https://issues.apache.org/jira/browse/FLINK-8013) | Check of AggregateFunction merge function signature is too strict. |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-7678](https://issues.apache.org/jira/browse/FLINK-7678) | SQL UserDefineTableFunction does not take CompositeType input correctly |  Major | Table API & SQL | Rong Rong | Timo Walther |
| [FLINK-7490](https://issues.apache.org/jira/browse/FLINK-7490) | UDF Agg throws Exception when flink-table is loaded with AppClassLoader |  Blocker | Table API & SQL | Miguel Rui Pereira Marques | Fabian Hueske |
| [FLINK-7942](https://issues.apache.org/jira/browse/FLINK-7942) | NPE when apply FilterJoinRule |  Major | Table API & SQL | lincoln.lee | Timo Walther |
| [FLINK-7698](https://issues.apache.org/jira/browse/FLINK-7698) | Join with null literals leads to NPE |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-7266](https://issues.apache.org/jira/browse/FLINK-7266) | Don't attempt to delete parent directory on S3 |  Blocker | Core | Stephan Ewen | Aljoscha Krettek |
| [FLINK-8083](https://issues.apache.org/jira/browse/FLINK-8083) | FileSystem class not binary compatible with 1.3 |  Blocker | Core, FileSystem | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-7988](https://issues.apache.org/jira/browse/FLINK-7988) | HadoopS3FileSystemITCase leaves test directories behind in S3 |  Major | filesystem-connector, Tests | Nico Kruber | Nico Kruber |
| [FLINK-4228](https://issues.apache.org/jira/browse/FLINK-4228) | YARN artifact upload does not work with S3AFileSystem |  Blocker | State Backends, Checkpointing | Ufuk Celebi | Nico Kruber |
| [FLINK-8096](https://issues.apache.org/jira/browse/FLINK-8096) | Fix time material issue when write to TableSink |  Blocker | Table API & SQL | Dian Fu | Dian Fu |
| [FLINK-8086](https://issues.apache.org/jira/browse/FLINK-8086) | FlinkKafkaProducer011 can permanently fail in recovery through ProducerFencedException |  Blocker | Kafka Connector | Stefan Richter | Piotr Nowojski |
| [FLINK-8108](https://issues.apache.org/jira/browse/FLINK-8108) | Wrong args bound check in PythonPlanBinder |  Critical | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8109](https://issues.apache.org/jira/browse/FLINK-8109) | PythonPlanBinder should check for script existence |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8114](https://issues.apache.org/jira/browse/FLINK-8114) | NO-arg scripts are given an empty string as argument |  Major | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7943](https://issues.apache.org/jira/browse/FLINK-7943) | OptionalDataException when launching Flink jobs concurrently |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8115](https://issues.apache.org/jira/browse/FLINK-8115) | Kafka E2E tests fail on travis |  Major | Build System, Tests | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-7702](https://issues.apache.org/jira/browse/FLINK-7702) | Javadocs are not being built |  Blocker | Documentation | Gabor Gevay |  |
| [FLINK-8131](https://issues.apache.org/jira/browse/FLINK-8131) | Update to Kafka 0.11.0.2 |  Blocker | Kafka Connector | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8136](https://issues.apache.org/jira/browse/FLINK-8136) | Cast exception error on Flink SQL when using DATE\_FORMAT |  Blocker | Table API & SQL | David Marcos | Timo Walther |
| [FLINK-8132](https://issues.apache.org/jira/browse/FLINK-8132) | FlinkKafkaProducer011 can commit incorrect transaction during recovery |  Blocker | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-5465](https://issues.apache.org/jira/browse/FLINK-5465) | RocksDB fails with segfault while calling AbstractRocksDBState.clear() |  Major | State Backends, Checkpointing | Robert Metzger | Stefan Richter |
| [FLINK-8126](https://issues.apache.org/jira/browse/FLINK-8126) | Update and fix checkstyle |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-8165](https://issues.apache.org/jira/browse/FLINK-8165) | ParameterTools not serializable properly |  Blocker | Configuration, Java API | Gyula Fora | Gyula Fora |
| [FLINK-6294](https://issues.apache.org/jira/browse/FLINK-6294) | BucketingSink throws NPE while cancelling job |  Major | Streaming Connectors | Andrey |  |
| [FLINK-7989](https://issues.apache.org/jira/browse/FLINK-7989) | flink-dist jar is deployed twice onto YARN |  Major | YARN | Nico Kruber | Nico Kruber |
| [FLINK-8173](https://issues.apache.org/jira/browse/FLINK-8173) | Fix input unboxing and support Avro Utf8 in Table API |  Major | Table API & SQL | Tao Xia | Timo Walther |
| [FLINK-7595](https://issues.apache.org/jira/browse/FLINK-7595) | Removing stateless task from task chain breaks savepoint restore |  Blocker | State Backends, Checkpointing | Ufuk Celebi | Chesnay Schepler |
| [FLINK-8167](https://issues.apache.org/jira/browse/FLINK-8167) | Failing WikipediaEditsSourceTest on Travis |  Critical | Tests | Till Rohrmann | Ufuk Celebi |
| [FLINK-8177](https://issues.apache.org/jira/browse/FLINK-8177) | Flink cannot be built for Hadoop 2.9.0 |  Critical | YARN | Fabian Hueske | Aljoscha Krettek |
| [FLINK-8148](https://issues.apache.org/jira/browse/FLINK-8148) | Test instability in YarnFileStageTest |  Critical | Tests, YARN | Nico Kruber | Nico Kruber |
| [FLINK-8194](https://issues.apache.org/jira/browse/FLINK-8194) | Disable akka.actor.warn-about-java-serializer-usage to suppress akka warnings when using the Java serializer |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8196](https://issues.apache.org/jira/browse/FLINK-8196) | Fix Hadoop Servlet Dependency Exclusion |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-8198](https://issues.apache.org/jira/browse/FLINK-8198) | Useless check against -1 in LimitedConnectionsFileSystem#fromConfig |  Minor | . | Ted Yu | Stephan Ewen |
| [FLINK-8164](https://issues.apache.org/jira/browse/FLINK-8164) | JobManager's archiving does not work on S3 |  Major | History Server, JobManager | Cristian |  |
| [FLINK-8186](https://issues.apache.org/jira/browse/FLINK-8186) | AvroInputFormat regression: fails to deserialize GenericRecords on standalone cluster with hadoop27 compat |  Blocker | . | Sebastian Klemke | Aljoscha Krettek |
| [FLINK-8174](https://issues.apache.org/jira/browse/FLINK-8174) | Mesos RM unable to accept offers for unreserved resources |  Blocker | Mesos | Eron Wright | Eron Wright |
| [FLINK-7495](https://issues.apache.org/jira/browse/FLINK-7495) | AbstractUdfStreamOperator#initializeState() should be called in AsyncWaitOperator#initializeState() |  Minor | DataStream API | Ted Yu | Fang Yong |
| [FLINK-5691](https://issues.apache.org/jira/browse/FLINK-5691) | Creating Reporter for elasticsearch 5.1.X causing conflicts of io.netty library |  Major | Metrics | prabhat kumar |  |
| [FLINK-7927](https://issues.apache.org/jira/browse/FLINK-7927) | Different Netty Versions in dependencies of flink-runtime make it impossible to use 3rd party libraries using netty |  Major | Build System | Claudius Eisele |  |
| [FLINK-8102](https://issues.apache.org/jira/browse/FLINK-8102) | Formatting issues in Mesos documentation. |  Minor | . | Jörg Schad | Jörg Schad |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6175](https://issues.apache.org/jira/browse/FLINK-6175) | HistoryServerTest.testFullArchiveLifecycle fails |  Major | History Server, Tests, Webfrontend | Ufuk Celebi | Chesnay Schepler |
| [FLINK-6597](https://issues.apache.org/jira/browse/FLINK-6597) | Cleanup WindowOperatorTest useless imports |  Major | Streaming | sunjincheng | sunjincheng |
| [FLINK-6845](https://issues.apache.org/jira/browse/FLINK-6845) | Cleanup  "println(StreamITCase.testResults)" call in test case |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6830](https://issues.apache.org/jira/browse/FLINK-6830) | Add ITTests for savepoint migration from 1.3 |  Major | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7429](https://issues.apache.org/jira/browse/FLINK-7429) | Add restore from 1.2 / 1.3 migration tests for FlinkKinesisConsumer |  Blocker | Kinesis Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7393](https://issues.apache.org/jira/browse/FLINK-7393) | Move unit tests of KinesisConfigUtil from FlinkKinesisConsumerTest to KinesisConfigUtilTest |  Minor | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7724](https://issues.apache.org/jira/browse/FLINK-7724) | add extra metrics to MetricStoreTest.setupStore |  Major | REST, Tests | Bowen Li | Bowen Li |
| [FLINK-4655](https://issues.apache.org/jira/browse/FLINK-4655) | Add tests for validation of Expressions |  Major | Table API & SQL | Timo Walther |  |


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
| [FLINK-6498](https://issues.apache.org/jira/browse/FLINK-6498) | Migrate Zookeeper configuration options |  Major | Distributed Coordination | Chesnay Schepler | Fang Yong |
| [FLINK-6496](https://issues.apache.org/jira/browse/FLINK-6496) | Migrate SSL configuration options |  Major | Security | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6680](https://issues.apache.org/jira/browse/FLINK-6680) | App & Flink migration guide: updates for the 1.3 release |  Major | Documentation | Nico Kruber | Tzu-Li (Gordon) Tai |
| [FLINK-7093](https://issues.apache.org/jira/browse/FLINK-7093) | Send SlotReport as part of the heartbeat payload to the RM |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7074](https://issues.apache.org/jira/browse/FLINK-7074) | Add entry point for TaskManagerRunner |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7097](https://issues.apache.org/jira/browse/FLINK-7097) | Start TaskExecutor via start-up script |  Minor | Startup Shell Scripts | Till Rohrmann | Till Rohrmann |
| [FLINK-6925](https://issues.apache.org/jira/browse/FLINK-6925) | Add CONCAT/CONCAT\_WS supported in SQL |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-7116](https://issues.apache.org/jira/browse/FLINK-7116) | Add getPort method to RpcService |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7117](https://issues.apache.org/jira/browse/FLINK-7117) | Add JobManagerLeaderRetrieval method with default JobManager address |  Major | Cluster Management | Till Rohrmann | Till Rohrmann |
| [FLINK-7103](https://issues.apache.org/jira/browse/FLINK-7103) | Implement skeletal structure of dispatcher component |  Major | Cluster Management | Till Rohrmann | Till Rohrmann |
| [FLINK-7052](https://issues.apache.org/jira/browse/FLINK-7052) | remove NAME\_ADDRESSABLE mode |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-6902](https://issues.apache.org/jira/browse/FLINK-6902) | Activate strict checkstyle for flink-streaming-scala |  Minor | Scala API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6695](https://issues.apache.org/jira/browse/FLINK-6695) | Activate strict checkstyle in flink-contrib |  Trivial | flink-contrib | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6975](https://issues.apache.org/jira/browse/FLINK-6975) | Add CONCAT/CONCAT\_WS supported in TableAPI |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6811](https://issues.apache.org/jira/browse/FLINK-6811) | Add TIMESTAMPADD supported in SQL |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6891](https://issues.apache.org/jira/browse/FLINK-6891) | Add LOG(X) supported in SQL |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-7202](https://issues.apache.org/jira/browse/FLINK-7202) | Split supressions for flink-core, flink-java, flink-optimizer per package |  Major | Build System, Checkstyle | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7254](https://issues.apache.org/jira/browse/FLINK-7254) | java8 module pom disables checkstyle |  Major | Checkstyle | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7247](https://issues.apache.org/jira/browse/FLINK-7247) | Replace travis java 7 profiles |  Blocker | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7113](https://issues.apache.org/jira/browse/FLINK-7113) | Make ClusterDescriptor independent of Flink cluster size |  Major | Cluster Management | Till Rohrmann | Till Rohrmann |
| [FLINK-7135](https://issues.apache.org/jira/browse/FLINK-7135) | Pass in proper Configuration to Dispatcher component |  Major | Cluster Management, Mesos | Till Rohrmann | Till Rohrmann |
| [FLINK-7110](https://issues.apache.org/jira/browse/FLINK-7110) | Allow ClusterDescriptor to deploy per-job cluster |  Major | Cluster Management | Till Rohrmann | Till Rohrmann |
| [FLINK-7098](https://issues.apache.org/jira/browse/FLINK-7098) | Start standalone cluster entry point via start-up script |  Minor | Startup Shell Scripts | Till Rohrmann | Till Rohrmann |
| [FLINK-7092](https://issues.apache.org/jira/browse/FLINK-7092) | Shutdown ResourceManager components properly |  Minor | Mesos | Till Rohrmann | mingleizhang |
| [FLINK-7295](https://issues.apache.org/jira/browse/FLINK-7295) | Add callback for proper RpcEndpoint shut down |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7253](https://issues.apache.org/jira/browse/FLINK-7253) | Remove all 'assume Java 8' code in tests |  Major | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-7250](https://issues.apache.org/jira/browse/FLINK-7250) | Drop the jdk8 build profile |  Major | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-7249](https://issues.apache.org/jira/browse/FLINK-7249) | Bump Java version in build plugin |  Major | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-6732](https://issues.apache.org/jira/browse/FLINK-6732) | Activate strict checkstyle for flink-java |  Major | Java API | Chesnay Schepler | Dawid Wysakowicz |
| [FLINK-7304](https://issues.apache.org/jira/browse/FLINK-7304) | Simnplify garbage collector configuration in taskmanager.sh |  Major | Startup Shell Scripts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7303](https://issues.apache.org/jira/browse/FLINK-7303) | Build elasticsearch5 by default |  Major | Batch Connectors and Input/Output Formats, Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7305](https://issues.apache.org/jira/browse/FLINK-7305) | Add new import block for shaded dependencies |  Major | Checkstyle | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5509](https://issues.apache.org/jira/browse/FLINK-5509) | Replace QueryableStateClient keyHashCode argument |  Minor | Queryable State | Ufuk Celebi | Kostas Kloudas |
| [FLINK-7027](https://issues.apache.org/jira/browse/FLINK-7027) | Replace netty dependencies |  Major | Build System, Network | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7054](https://issues.apache.org/jira/browse/FLINK-7054) | remove LibraryCacheManager#getFile() |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-7107](https://issues.apache.org/jira/browse/FLINK-7107) | Start Yarn session via start-up script |  Minor | Startup Shell Scripts | Till Rohrmann | Till Rohrmann |
| [FLINK-7028](https://issues.apache.org/jira/browse/FLINK-7028) | Replace asm dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6494](https://issues.apache.org/jira/browse/FLINK-6494) | Migrate ResourceManager configuration options |  Major | Distributed Coordination, ResourceManager | Chesnay Schepler | Fang Yong |
| [FLINK-7379](https://issues.apache.org/jira/browse/FLINK-7379) | Remove \`HighAvailabilityServices\` from QS client constructor. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7381](https://issues.apache.org/jira/browse/FLINK-7381) | Decouple WebRuntimeMonitor from ActorGateway |  Major | Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7387](https://issues.apache.org/jira/browse/FLINK-7387) | Let RpcEndpoint directly implement RpcGateways |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7056](https://issues.apache.org/jira/browse/FLINK-7056) | add API to allow job-related BLOBs to be stored |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-7055](https://issues.apache.org/jira/browse/FLINK-7055) | refactor BlobService#getURL() methods to return a File object |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-6180](https://issues.apache.org/jira/browse/FLINK-6180) | Remove TestingSerialRpcService |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6982](https://issues.apache.org/jira/browse/FLINK-6982) | Replace guava dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7057](https://issues.apache.org/jira/browse/FLINK-7057) | move BLOB ref-counting from LibraryCacheManager to BlobCache |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-6630](https://issues.apache.org/jira/browse/FLINK-6630) | Implement FLIP-6 MesosAppMasterRunner |  Major | Mesos | Eron Wright | Eron Wright |
| [FLINK-6631](https://issues.apache.org/jira/browse/FLINK-6631) | Implement FLIP-6 MesosTaskExecutorRunner |  Major | Mesos | Eron Wright | Eron Wright |
| [FLINK-7077](https://issues.apache.org/jira/browse/FLINK-7077) | Implement task release to support dynamic scaling |  Major | Mesos, ResourceManager | Till Rohrmann | Eron Wright |
| [FLINK-7519](https://issues.apache.org/jira/browse/FLINK-7519) | Enrich ClientRestException with HttpResponseStatus |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7500](https://issues.apache.org/jira/browse/FLINK-7500) | Set JobMaster leader session id in main thread |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7507](https://issues.apache.org/jira/browse/FLINK-7507) | Fence Dispatcher |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7504](https://issues.apache.org/jira/browse/FLINK-7504) | Fence ResourceManager |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7169](https://issues.apache.org/jira/browse/FLINK-7169) | Support AFTER MATCH SKIP function in CEP library API |  Major | CEP | Yueting Chen | Yueting Chen |
| [FLINK-7506](https://issues.apache.org/jira/browse/FLINK-7506) | Fence JobMaster |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7528](https://issues.apache.org/jira/browse/FLINK-7528) | Create Dispatcher REST endpoint |  Minor | Distributed Coordination, REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7531](https://issues.apache.org/jira/browse/FLINK-7531) | Move existing REST handler to flink-runtime |  Minor | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7532](https://issues.apache.org/jira/browse/FLINK-7532) | Add StaticFileServerHandler to DispatcherRestEndpoint |  Minor | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7534](https://issues.apache.org/jira/browse/FLINK-7534) | Create LegacyRestHandlerAdapter for the old REST handlers |  Major | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7535](https://issues.apache.org/jira/browse/FLINK-7535) | Port DashboardConfigHandler to new REST endpoint |  Minor | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7638](https://issues.apache.org/jira/browse/FLINK-7638) | Port CurrentJobsOverviewHandler to new REST endpoint |  Minor | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7647](https://issues.apache.org/jira/browse/FLINK-7647) | Port JobManagerConfigHandler to new REST endpoint |  Major | REST, Webfrontend | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7650](https://issues.apache.org/jira/browse/FLINK-7650) | Port JobCancellationHandler to new REST endpoint |  Major | REST, Webfrontend | Tzu-Li (Gordon) Tai | Till Rohrmann |
| [FLINK-7649](https://issues.apache.org/jira/browse/FLINK-7649) | Port JobStoppingHandler to new REST endpoint |  Major | REST, Webfrontend | Tzu-Li (Gordon) Tai | Till Rohrmann |
| [FLINK-7411](https://issues.apache.org/jira/browse/FLINK-7411) | minor performance improvements in NettyMessage |  Minor | Network | Nico Kruber | Nico Kruber |
| [FLINK-7514](https://issues.apache.org/jira/browse/FLINK-7514) | fix BackPressureStatsTrackerITCase releasing buffers twice |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7513](https://issues.apache.org/jira/browse/FLINK-7513) | remove TestBufferFactory#MOCK\_BUFFER |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7667](https://issues.apache.org/jira/browse/FLINK-7667) | Add serializable AccessExecutionGraph implementation |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7710](https://issues.apache.org/jira/browse/FLINK-7710) | Port CheckpointStatsHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Till Rohrmann |
| [FLINK-7708](https://issues.apache.org/jira/browse/FLINK-7708) | Port CheckpointConfigHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Till Rohrmann |
| [FLINK-7695](https://issues.apache.org/jira/browse/FLINK-7695) | Port JobConfigHandler to new REST endpoint |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7668](https://issues.apache.org/jira/browse/FLINK-7668) | Add AccessExecutionGraph refresh interval to ExecutionGraphHolder |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7412](https://issues.apache.org/jira/browse/FLINK-7412) | optimise NettyMessage.TaskEventRequest#readFrom() to read from netty buffers directly |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7752](https://issues.apache.org/jira/browse/FLINK-7752) | RedirectHandler should execute on the IO thread |  Minor | Cluster Management, Mesos | Eron Wright | Eron Wright |
| [FLINK-7754](https://issues.apache.org/jira/browse/FLINK-7754) | Complete termination future after actor has been stopped. |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7068](https://issues.apache.org/jira/browse/FLINK-7068) | change BlobService sub-classes for permanent and transient BLOBs |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-7261](https://issues.apache.org/jira/browse/FLINK-7261) | avoid unnecessary exceptions in the logs in non-HA cases |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-7632](https://issues.apache.org/jira/browse/FLINK-7632) | Better documentation and examples on C\* sink usage for Pojo and Tuples data types |  Major | Cassandra Connector, Documentation | Michael Fong | Michael Fong |
| [FLINK-7378](https://issues.apache.org/jira/browse/FLINK-7378) | Create a fix size (non rebalancing) buffer pool type for the floating buffers |  Major | Core | zhijiang | zhijiang |
| [FLINK-7394](https://issues.apache.org/jira/browse/FLINK-7394) | Manage exclusive buffers in RemoteInputChannel |  Major | Core | zhijiang | zhijiang |
| [FLINK-7699](https://issues.apache.org/jira/browse/FLINK-7699) | Define the BufferListener interface to replace EventListener in BufferProvider |  Major | Core | zhijiang | zhijiang |
| [FLINK-6233](https://issues.apache.org/jira/browse/FLINK-6233) | Support rowtime inner equi-join between two streams in the SQL API |  Major | Table API & SQL | hongyuhong | Xingcan Cui |
| [FLINK-7661](https://issues.apache.org/jira/browse/FLINK-7661) | Add credit field in PartitionRequest message |  Major | Network | zhijiang | zhijiang |
| [FLINK-5604](https://issues.apache.org/jira/browse/FLINK-5604) | Replace QueryableStateClient constructor |  Major | Queryable State | Ufuk Celebi | Kostas Kloudas |
| [FLINK-5905](https://issues.apache.org/jira/browse/FLINK-5905) | Add user-defined aggregation functions to documentation. |  Major | Table API & SQL | Fabian Hueske | Shaoxuan Wang |
| [FLINK-7653](https://issues.apache.org/jira/browse/FLINK-7653) | Properly implement DispatcherGateway methods on the Dispatcher |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Till Rohrmann |
| [FLINK-7835](https://issues.apache.org/jira/browse/FLINK-7835) | Fix duplicate() method in NFASerializer |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7435](https://issues.apache.org/jira/browse/FLINK-7435) | FsStateBackend with incremental backup enable does not work with Keyed CEP |  Blocker | CEP | daiqing | Kostas Kloudas |
| [FLINK-6318](https://issues.apache.org/jira/browse/FLINK-6318) | NFA serialisation doesn't work with TypeSerializers that load classes |  Blocker | CEP | Aljoscha Krettek |  |
| [FLINK-3582](https://issues.apache.org/jira/browse/FLINK-3582) | Add Iterator over State for All Keys in Partitioned State |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7791](https://issues.apache.org/jira/browse/FLINK-7791) | Integrate LIST command into REST client |  Major | Client, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7140](https://issues.apache.org/jira/browse/FLINK-7140) | include a UUID/random name into the BlobKey |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-7484](https://issues.apache.org/jira/browse/FLINK-7484) | CaseClassSerializer.duplicate() does not perform proper deep copy |  Blocker | CEP, DataStream API, Scala API | Shashank Agarwal | Aljoscha Krettek |
| [FLINK-7417](https://issues.apache.org/jira/browse/FLINK-7417) | Create flink-shaded-jackson |  Blocker | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-5920](https://issues.apache.org/jira/browse/FLINK-5920) | Make port (range) of queryable state server configurable |  Blocker | Queryable State | Yelei Feng | Kostas Kloudas |
| [FLINK-7788](https://issues.apache.org/jira/browse/FLINK-7788) | Allow port range for queryable state client proxy. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7826](https://issues.apache.org/jira/browse/FLINK-7826) | Add support for all types of state to the QueryableStateClient. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7703](https://issues.apache.org/jira/browse/FLINK-7703) | Port JobExceptionsHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Fang Yong |
| [FLINK-7853](https://issues.apache.org/jira/browse/FLINK-7853) | Reject table function outer joins with predicates in Table API |  Blocker | Table API & SQL | Xingcan Cui | Xingcan Cui |
| [FLINK-7854](https://issues.apache.org/jira/browse/FLINK-7854) | Reject lateral table outer joins with predicates in SQL |  Blocker | Table API & SQL | Xingcan Cui | Xingcan Cui |
| [FLINK-7196](https://issues.apache.org/jira/browse/FLINK-7196) | add a TTL to transient BLOB files |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-7262](https://issues.apache.org/jira/browse/FLINK-7262) | remove unused FallbackLibraryCacheManager |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-7783](https://issues.apache.org/jira/browse/FLINK-7783) | Don't always remove checkpoints in ZooKeeperCompletedCheckpointStore#recover() |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7824](https://issues.apache.org/jira/browse/FLINK-7824) | Put the queryable state jars in the opt folder. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7908](https://issues.apache.org/jira/browse/FLINK-7908) | Restructure the QS module to reduce client deps. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7924](https://issues.apache.org/jira/browse/FLINK-7924) | Fix incorrect names of checkpoint options |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-6495](https://issues.apache.org/jira/browse/FLINK-6495) | Migrate Akka configuration options |  Blocker | Distributed Coordination, Network | Chesnay Schepler | Piotr Nowojski |
| [FLINK-7418](https://issues.apache.org/jira/browse/FLINK-7418) | Replace all uses of jackson with flink-shaded-jackson |  Blocker | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-7863](https://issues.apache.org/jira/browse/FLINK-7863) | Make MetricFetcher work with RestfulGateway |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7778](https://issues.apache.org/jira/browse/FLINK-7778) | Relocate ZooKeeper |  Critical | Build System | Till Rohrmann | Chesnay Schepler |
| [FLINK-7779](https://issues.apache.org/jira/browse/FLINK-7779) | Relocate Curator |  Critical | Build System | Till Rohrmann | Chesnay Schepler |
| [FLINK-7516](https://issues.apache.org/jira/browse/FLINK-7516) | HybridMemorySegment: do not allow copies into a read-only ByteBuffer |  Major | Core, Network | Nico Kruber | Nico Kruber |
| [FLINK-7515](https://issues.apache.org/jira/browse/FLINK-7515) | allow actual 0-length content in NettyMessage#allocateBuffer() |  Minor | Network | Nico Kruber | Nico Kruber |
| [FLINK-7745](https://issues.apache.org/jira/browse/FLINK-7745) | add tests for ensuring NetworkBufferPool overprovisioning behaviour |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7822](https://issues.apache.org/jira/browse/FLINK-7822) | Add documentation for the new queryable state client. |  Blocker | Documentation, Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7823](https://issues.apache.org/jira/browse/FLINK-7823) | Adjust queryable state configuration parameters |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7842](https://issues.apache.org/jira/browse/FLINK-7842) | Shade jackson (org.codehouse.jackson) in flink-shaded-hadoop2 |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-7809](https://issues.apache.org/jira/browse/FLINK-7809) | Drop support for Scala 2.10 |  Major | Build System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7312](https://issues.apache.org/jira/browse/FLINK-7312) | activate checkstyle for flink/core/memory/\* |  Minor | Checkstyle, Core | Nico Kruber | Nico Kruber |
| [FLINK-7310](https://issues.apache.org/jira/browse/FLINK-7310) | always use HybridMemorySegment |  Major | Core | Nico Kruber | Nico Kruber |
| [FLINK-6667](https://issues.apache.org/jira/browse/FLINK-6667) | Pass a callback type to the RestartStrategy, rather than the full ExecutionGraph |  Major | Distributed Coordination | Stephan Ewen | Fang Yong |
| [FLINK-6665](https://issues.apache.org/jira/browse/FLINK-6665) | Pass a ScheduledExecutorService to the RestartStrategy |  Major | Distributed Coordination | Stephan Ewen | Fang Yong |
| [FLINK-7996](https://issues.apache.org/jira/browse/FLINK-7996) | Add support for (left.time = right.time) predicates to window join. |  Critical | Table API & SQL | Fabian Hueske | Xingcan Cui |
| [FLINK-7886](https://issues.apache.org/jira/browse/FLINK-7886) | Enable dependency convergence for flink-core |  Major | Build System | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7419](https://issues.apache.org/jira/browse/FLINK-7419) | Shade jackson dependency in flink-avro |  Blocker | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-5270](https://issues.apache.org/jira/browse/FLINK-5270) | Refactor the batch Scala-expression Table API tests |  Major | Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-5272](https://issues.apache.org/jira/browse/FLINK-5272) | Refactor the stream Scala-expression Table API tests |  Major | Table API & SQL | Fabian Hueske | sunjincheng |
| [FLINK-7003](https://issues.apache.org/jira/browse/FLINK-7003) | "select \* from" in Flink SQL should not flatten all fields in the table by default |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-7389](https://issues.apache.org/jira/browse/FLINK-7389) | Remove Calcite PushProjector |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-8111](https://issues.apache.org/jira/browse/FLINK-8111) | Add fasterxml relocation to flink-dist |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6505](https://issues.apache.org/jira/browse/FLINK-6505) | Proactively cleanup local FS for RocksDBKeyedStateBackend on startup |  Major | State Backends, Checkpointing | Stefan Richter | Bowen Li |
| [FLINK-7780](https://issues.apache.org/jira/browse/FLINK-7780) | Integrate savepoint command into REST client |  Blocker | Client, REST | Chesnay Schepler | Gary Yao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7494](https://issues.apache.org/jira/browse/FLINK-7494) | No license headers in ".travis.yml" file |  Major | Travis | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7562](https://issues.apache.org/jira/browse/FLINK-7562) | uploaded jars sort by upload-time on dashboard page |  Minor | Webfrontend | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-6887](https://issues.apache.org/jira/browse/FLINK-6887) | Split up CodeGenerator into several specific CodeGenerator |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-6751](https://issues.apache.org/jira/browse/FLINK-6751) | Table API / SQL Docs: UDFs Page |  Major | Documentation, Table API & SQL | Fabian Hueske | Shaoxuan Wang |
| [FLINK-7242](https://issues.apache.org/jira/browse/FLINK-7242) | Drop Java 7 Support |  Critical | Build System | Eron Wright | Chesnay Schepler |
| [FLINK-8110](https://issues.apache.org/jira/browse/FLINK-8110) | fasterxml jackson services are not relocated |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6750](https://issues.apache.org/jira/browse/FLINK-6750) | Table API / SQL Docs: Table Sources & Sinks Page |  Major | Documentation, Table API & SQL | Fabian Hueske | Timo Walther |


