
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

## Release 1.4.0 - Unreleased (as of 2017-08-26)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6483](https://issues.apache.org/jira/browse/FLINK-6483) | Support time materialization |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5340](https://issues.apache.org/jira/browse/FLINK-5340) | Add a metric exposing jobs uptimes |  Minor | Core | Dan Bress | Stephan Ewen |
| [FLINK-6237](https://issues.apache.org/jira/browse/FLINK-6237) | support RAND and RAND\_INTEGER on Table API & SQL |  Major | Table API & SQL | godfrey he | godfrey he |
| [FLINK-4022](https://issues.apache.org/jira/browse/FLINK-4022) | Partition discovery / regex topic subscription for the Kafka consumer |  Critical | Kafka Connector, Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


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
| [FLINK-7149](https://issues.apache.org/jira/browse/FLINK-7149) | Add checkpoint ID to 'sendValues()' in GenericWriteAheadSink |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-7150](https://issues.apache.org/jira/browse/FLINK-7150) | Code improvements to the ElasticSearch connector |  Major | ElasticSearch Connector | Stephan Ewen | Stephan Ewen |
| [FLINK-7136](https://issues.apache.org/jira/browse/FLINK-7136) | Docs search can be customized to be more useful |  Major | Documentation | David Anderson | David Anderson |
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
| [FLINK-7233](https://issues.apache.org/jira/browse/FLINK-7233) | TaskManagerHeapSizeCalculationJavaBashTest failed on Travis |  Major | Tests | Chesnay Schepler | Nico Kruber |
| [FLINK-7232](https://issues.apache.org/jira/browse/FLINK-7232) | Update checkstyle docs regarding test inclusion |  Major | Checkstyle, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7105](https://issues.apache.org/jira/browse/FLINK-7105) | Make ActorSystem creation per default non-daemonic |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
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
| [FLINK-7382](https://issues.apache.org/jira/browse/FLINK-7382) | Broken links in \`Apache Flink Documentation\`  page |  Minor | Documentation | Hai Zhou | Hai Zhou |
| [FLINK-7383](https://issues.apache.org/jira/browse/FLINK-7383) | Remove ConfigurationUtil |  Trivial | Configuration | Till Rohrmann | Till Rohrmann |
| [FLINK-7375](https://issues.apache.org/jira/browse/FLINK-7375) | Remove ActorGateway from JobClient |  Minor | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-7372](https://issues.apache.org/jira/browse/FLINK-7372) | Remove ActorGateway from JobGraph |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7422](https://issues.apache.org/jira/browse/FLINK-7422) | Upgrade Kinesis Client Library (KCL) in flink-connector-kinesis from 1.6.2 to 1.8.1 |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7408](https://issues.apache.org/jira/browse/FLINK-7408) | Extract WebRuntimeMonitor options from JobManagerOptions |  Trivial | Configuration | Till Rohrmann | Till Rohrmann |
| [FLINK-7434](https://issues.apache.org/jira/browse/FLINK-7434) | Scafolding of a scala project should rely on "sbt new" |  Minor | Documentation | Svend Vanderveken | Svend Vanderveken |
| [FLINK-7399](https://issues.apache.org/jira/browse/FLINK-7399) | Add checkstyle rule to forbid codehaus jackson imports |  Major | Checkstyle | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7445](https://issues.apache.org/jira/browse/FLINK-7445) | Remove FLINK-1234 reference from PR template |  Critical | GitHub | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7443](https://issues.apache.org/jira/browse/FLINK-7443) | Store and deserializer fields in MetricFetcher should be final |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7415](https://issues.apache.org/jira/browse/FLINK-7415) | Include instructions for creating the keyspace in cassandra examples |  Minor | Cassandra Connector | Hai Zhou |  |
| [FLINK-7405](https://issues.apache.org/jira/browse/FLINK-7405) | Reduce spamming warning logging from DatadogHttpReporter |  Minor | Metrics | Bowen Li | Bowen Li |
| [FLINK-7213](https://issues.apache.org/jira/browse/FLINK-7213) | Introduce state management by OperatorID in TaskManager |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-7462](https://issues.apache.org/jira/browse/FLINK-7462) | Add very obvious warning about outdated docs |  Major | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-7347](https://issues.apache.org/jira/browse/FLINK-7347) | "removeAll" is extremely inefficient in MessageAcknowledgingSourceBase.notifyCheckpointComplete |  Major | DataStream API | Yonatan Most | Yonatan Most |
| [FLINK-7269](https://issues.apache.org/jira/browse/FLINK-7269) | Refactor passing of dynamic properties |  Major | Configuration | Till Rohrmann | Fang Yong |
| [FLINK-6835](https://issues.apache.org/jira/browse/FLINK-6835) | Document the checkstyle requirements |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7480](https://issues.apache.org/jira/browse/FLINK-7480) | Set HADOOP\_CONF\_DIR to sane default if not set |  Major | Startup Shell Scripts | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5851](https://issues.apache.org/jira/browse/FLINK-5851) | Renaming AsyncCollector into ResultPromise/ResultFuture |  Major | DataStream API | Till Rohrmann | mingleizhang |
| [FLINK-6244](https://issues.apache.org/jira/browse/FLINK-6244) | Emit timeouted Patterns as Side Output |  Major | CEP | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-7337](https://issues.apache.org/jira/browse/FLINK-7337) | Refactor handling of time indicator attributes |  Major | Table API & SQL | Fabian Hueske | Fabian Hueske |


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
| [FLINK-6654](https://issues.apache.org/jira/browse/FLINK-6654) | missing maven dependency on "flink-shaded-hadoop2-uber" in flink-dist |  Major | Build System | Nico Kruber | Nico Kruber |
| [FLINK-7176](https://issues.apache.org/jira/browse/FLINK-7176) | Failed builds (due to compilation) don't upload logs |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7216](https://issues.apache.org/jira/browse/FLINK-7216) | ExecutionGraph can perform concurrent global restarts to scheduling |  Blocker | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-7231](https://issues.apache.org/jira/browse/FLINK-7231) | SlotSharingGroups are not always released in time for new restarts |  Blocker | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-7225](https://issues.apache.org/jira/browse/FLINK-7225) | Cutoff exception message in StateDescriptor |  Major | State Backends, Checkpointing | Chesnay Schepler | Stephan Ewen |
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


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6175](https://issues.apache.org/jira/browse/FLINK-6175) | HistoryServerTest.testFullArchiveLifecycle fails |  Major | History Server, Tests, Webfrontend | Ufuk Celebi | Chesnay Schepler |
| [FLINK-6597](https://issues.apache.org/jira/browse/FLINK-6597) | Cleanup WindowOperatorTest useless imports |  Major | Streaming | sunjincheng | sunjincheng |
| [FLINK-6845](https://issues.apache.org/jira/browse/FLINK-6845) | Cleanup  "println(StreamITCase.testResults)" call in test case |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6830](https://issues.apache.org/jira/browse/FLINK-6830) | Add ITTests for savepoint migration from 1.3 |  Major | State Backends, Checkpointing | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7429](https://issues.apache.org/jira/browse/FLINK-7429) | Add restore from 1.2 / 1.3 migration tests for FlinkKinesisConsumer |  Blocker | Kinesis Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


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
| [FLINK-6665](https://issues.apache.org/jira/browse/FLINK-6665) | Pass a ScheduledExecutorService to the RestartStrategy |  Major | Distributed Coordination | Stephan Ewen | Fang Yong |
| [FLINK-6667](https://issues.apache.org/jira/browse/FLINK-6667) | Pass a callback type to the RestartStrategy, rather than the full ExecutionGraph |  Major | Distributed Coordination | Stephan Ewen | Fang Yong |
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


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6887](https://issues.apache.org/jira/browse/FLINK-6887) | Split up CodeGenerator into several specific CodeGenerator |  Major | Table API & SQL | Jark Wu | Jark Wu |


