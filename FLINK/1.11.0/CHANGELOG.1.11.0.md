
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

## Release 1.11.0 - 2020-07-07



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-14270](https://issues.apache.org/jira/browse/FLINK-14270) | new web ui should display more than 4 metrics |  Major | Runtime / Web Frontend | David Anderson | Yadong Xie |
| [FLINK-14485](https://issues.apache.org/jira/browse/FLINK-14485) | Support for Temporary Objects in Table module |  Major | Table SQL / API, Table SQL / Legacy Planner, Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15349](https://issues.apache.org/jira/browse/FLINK-15349) | add "create catalog" DDL to blink planner |  Critical | Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-16455](https://issues.apache.org/jira/browse/FLINK-16455) | Introduce flink-sql-connector-hive modules to provide hive uber jars |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-15396](https://issues.apache.org/jira/browse/FLINK-15396) | Support to ignore parse errors for JSON format |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jark Wu | Zou |
| [FLINK-16459](https://issues.apache.org/jira/browse/FLINK-16459) | Add Serialization benchmark for Apache Thrift |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-16460](https://issues.apache.org/jira/browse/FLINK-16460) | Add Serialization benchmark for Protobuf |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-16222](https://issues.apache.org/jira/browse/FLINK-16222) | Use plugins mechanism for initializing MetricReporters |  Major | Runtime / Metrics | Alexander Fedulov | Alexander Fedulov |
| [FLINK-16890](https://issues.apache.org/jira/browse/FLINK-16890) | Add AvroGeneric benchmark |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-14474](https://issues.apache.org/jira/browse/FLINK-14474) | FLIP-67 Cluster partitions |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15400](https://issues.apache.org/jira/browse/FLINK-15400) | elasticsearch sink support dynamic index. |  Major | Connectors / ElasticSearch, Table SQL / Ecosystem | ouyangwulin | Leonard Xu |
| [FLINK-17275](https://issues.apache.org/jira/browse/FLINK-17275) | Add core training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17057](https://issues.apache.org/jira/browse/FLINK-17057) | Add OpenSSL micro-benchmarks |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-14816](https://issues.apache.org/jira/browse/FLINK-14816) | Add thread dump feature for taskmanager |  Major | Runtime / Web Frontend | lamber-ken | lamber-ken |
| [FLINK-11086](https://issues.apache.org/jira/browse/FLINK-11086) | Add support for Hadoop 3 |  Major | Deployment / YARN | Sebastian Klemke | Robert Metzger |
| [FLINK-17680](https://issues.apache.org/jira/browse/FLINK-17680) | Support @ExcludeFromDocumentation in RestAPIDocGenerator |  Major | Documentation | Caizhi Weng | Caizhi Weng |
| [FLINK-17715](https://issues.apache.org/jira/browse/FLINK-17715) | Supports function DDLs in SQL-CLI |  Major | Table SQL / Client | Danny Chen | Danny Chen |
| [FLINK-13987](https://issues.apache.org/jira/browse/FLINK-13987) | Better TM/JM Log Display |  Major | Runtime / REST | lining | lining |
| [FLINK-14460](https://issues.apache.org/jira/browse/FLINK-14460) | Active Kubernetes integration phase 2 - Advanced Features |  Major | Deployment / Kubernetes | Yang Wang |  |
| [FLINK-15670](https://issues.apache.org/jira/browse/FLINK-15670) | Kafka Shuffle: uses Kafka as a message bus to shuffle and persist data at the same time |  Major | API / DataStream, Connectors / Kafka | Stephan Ewen | Yuan Mei |
| [FLINK-16605](https://issues.apache.org/jira/browse/FLINK-16605) | Add max limitation to the total number of slots |  Major | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17844](https://issues.apache.org/jira/browse/FLINK-17844) | Activate japicmp-maven-plugin checks for @PublicEvolving between bug fix releases (x.y.u -\> x.y.v) |  Critical | Build System | Till Rohrmann | Chesnay Schepler |
| [FLINK-17653](https://issues.apache.org/jira/browse/FLINK-17653) | FLIP-126: Unify (and separate) Watermark Assigners |  Major | API / Core, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16743](https://issues.apache.org/jira/browse/FLINK-16743) | [Umbrella] Introduce datagen, print, blackhole connectors |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-15331](https://issues.apache.org/jira/browse/FLINK-15331) | [umbrella] Create a table from a changelog |  Major | Table SQL / API | Timo Walther | Jark Wu |
| [FLINK-17044](https://issues.apache.org/jira/browse/FLINK-17044) | FLIP-108: Add GPU support in Flink |  Major | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-14977](https://issues.apache.org/jira/browse/FLINK-14977) | Add informational primary key constraints in Table API |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15688](https://issues.apache.org/jira/browse/FLINK-15688) | Add N-Ary Stream Operator in Flink |  Major | API / DataStream, Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-14551](https://issues.apache.org/jira/browse/FLINK-14551) | Unaligned checkpoints |  Major | Runtime / Checkpointing, Runtime / Network | Zhijiang |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-14958](https://issues.apache.org/jira/browse/FLINK-14958) | ProgramTargetDescriptor#jobID can be of type JobID |  Minor | . | Zili Chen | AT-Fieldless |
| [FLINK-15359](https://issues.apache.org/jira/browse/FLINK-15359) | Remove unused YarnConfigOptions |  Major | Runtime / Configuration | Zili Chen | Yan Xu |
| [FLINK-15454](https://issues.apache.org/jira/browse/FLINK-15454) | ClusterEntrypoint#installSecurityContext is now unique |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-9679](https://issues.apache.org/jira/browse/FLINK-9679) | Add ConfluentRegistryAvroSerializationSchema |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Yazdan Shirvany | Dominik Wosiński |
| [FLINK-15222](https://issues.apache.org/jira/browse/FLINK-15222) | Move state benchmark utils into core repository |  Major | Benchmarks, Runtime / State Backends | Yu Li | Yu Li |
| [FLINK-15510](https://issues.apache.org/jira/browse/FLINK-15510) | Pretty Print StreamGraph JSON Plan |  Major | API / DataStream | Zili Chen | Zili Chen |
| [FLINK-15457](https://issues.apache.org/jira/browse/FLINK-15457) | Remove outdated TODO in YarnEntrypointUtils |  Minor | Deployment / YARN | Yang Wang | Yang Wang |
| [FLINK-15306](https://issues.apache.org/jira/browse/FLINK-15306) | Adjust the default netty transport option from nio to auto |  Minor | Runtime / Configuration, Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-15548](https://issues.apache.org/jira/browse/FLINK-15548) | Make KeyedCoProcessOperatorWithWatermarkDelay extends KeyedCoProcessOperator instead of LegacyKeyedCoProcessOperator |  Minor | Table SQL / Runtime | wangsan | wangsan |
| [FLINK-15115](https://issues.apache.org/jira/browse/FLINK-15115) | Drop Kafka 0.8/0.9 |  Major | Connectors / Kafka | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15431](https://issues.apache.org/jira/browse/FLINK-15431) | Add numLateRecordsDropped metric in CepOperator |  Major | Library / CEP | Benchao Li | Benchao Li |
| [FLINK-15307](https://issues.apache.org/jira/browse/FLINK-15307) | Subclasses of FailoverStrategy are easily confused with implementation classes of RestartStrategy |  Minor | Runtime / Configuration | Andrew.D.lin | Andrew.D.lin |
| [FLINK-15220](https://issues.apache.org/jira/browse/FLINK-15220) | Add startFromTimestamp in KafkaTableSource |  Major | Connectors / Kafka | Paul Lin | Paul Lin |
| [FLINK-15558](https://issues.apache.org/jira/browse/FLINK-15558) | Bump Elasticsearch version from 7.3.2 to 7.5.1 for es7 connector |  Major | Connectors / ElasticSearch | vinoyang |  |
| [FLINK-14831](https://issues.apache.org/jira/browse/FLINK-14831) | Generate InfluxDB config docs |  Minor | Documentation, Runtime / Configuration, Runtime / Metrics | ouyangwulin | Chesnay Schepler |
| [FLINK-15458](https://issues.apache.org/jira/browse/FLINK-15458) | Allow specific options to have non-unique key |  Minor | Documentation, Runtime / Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15601](https://issues.apache.org/jira/browse/FLINK-15601) | Remove useless constant field NUM\_STOP\_CALL\_TRIES in Execution |  Major | Runtime / Task | vinoyang | vinoyang |
| [FLINK-15681](https://issues.apache.org/jira/browse/FLINK-15681) | Remove legacy ExecutionAndAllocationFuture class |  Major | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-15617](https://issues.apache.org/jira/browse/FLINK-15617) | Remove useless JobRetrievalException |  Trivial | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-15603](https://issues.apache.org/jira/browse/FLINK-15603) | Show checkpoint start delay in checkpoint statistics |  Critical | Runtime / Metrics, Runtime / Web Frontend | Stephan Ewen | Piotr Nowojski |
| [FLINK-15628](https://issues.apache.org/jira/browse/FLINK-15628) | CreatewebSubmissionHandlers ArrayList in WebSubmissionExtension with default Size |  Major | Runtime / REST | lining | lining |
| [FLINK-9272](https://issues.apache.org/jira/browse/FLINK-9272) | DataDog API "counter" metric type is deprecated |  Major | Runtime / Metrics | Elias Levy | Jörn Kottmann |
| [FLINK-15810](https://issues.apache.org/jira/browse/FLINK-15810) | Add more description for FlinkKafkaProducerMigrationOperatorTest |  Major | Tests | vinoyang | vinoyang |
| [FLINK-15872](https://issues.apache.org/jira/browse/FLINK-15872) | Remove unnecessary javadocs in InputFormat |  Minor | API / Core | Paul Lin | Paul Lin |
| [FLINK-15683](https://issues.apache.org/jira/browse/FLINK-15683) | Restructure Configuration Docs |  Blocker | Documentation, Runtime / Configuration | Stephan Ewen | Stephan Ewen |
| [FLINK-15618](https://issues.apache.org/jira/browse/FLINK-15618) | Remove unused JobTimeoutException |  Trivial | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-15546](https://issues.apache.org/jira/browse/FLINK-15546) | Obscure error message from ScalarOperatorGens::generateCast |  Minor | Table SQL / API | Rui Li | Zhenghua Gao |
| [FLINK-15862](https://issues.apache.org/jira/browse/FLINK-15862) | Remove deprecated class KafkaPartitioner and all its usages |  Major | Connectors / Kafka | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15941](https://issues.apache.org/jira/browse/FLINK-15941) | ConfluentSchemaRegistryCoder should not perform HTTP requests for all request |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Dawid Wysakowicz | Stephen Whelan |
| [FLINK-15994](https://issues.apache.org/jira/browse/FLINK-15994) | Support byte array arguments for FROM\_BASE64 function |  Major | Table SQL / Planner | hailong wang | hailong wang |
| [FLINK-15949](https://issues.apache.org/jira/browse/FLINK-15949) | Harden jackson dependency constraints |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15785](https://issues.apache.org/jira/browse/FLINK-15785) | Rework E2E test activations |  Major | Build System, Test Infrastructure, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16037](https://issues.apache.org/jira/browse/FLINK-16037) | maven-dependency-plugin not fully compatible with Java 11 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16046](https://issues.apache.org/jira/browse/FLINK-16046) | Drop Elasticsearch 2.x connector |  Major | Connectors / ElasticSearch | Dawid Wysakowicz | Chesnay Schepler |
| [FLINK-16059](https://issues.apache.org/jira/browse/FLINK-16059) | Order properties in REST API docs alphabetically |  Minor | Documentation, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15702](https://issues.apache.org/jira/browse/FLINK-15702) | Make sqlClient classloader aligned with other components |  Major | Table SQL / Client | liupengcheng | liupengcheng |
| [FLINK-15988](https://issues.apache.org/jira/browse/FLINK-15988) | Make JsonRowSerializationSchema's constructor private |  Minor | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Benchao Li | Benchao Li |
| [FLINK-15473](https://issues.apache.org/jira/browse/FLINK-15473) | Add support for Linux on ppc64le to MemoryArchitecture |  Major | . | Ronald O. Edmark | Stephan Ewen |
| [FLINK-16135](https://issues.apache.org/jira/browse/FLINK-16135) | Unify AutoContextClassLoader and TemporaryClassLoaderContext |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-16042](https://issues.apache.org/jira/browse/FLINK-16042) | Add state benchmark for append operation in AppendingState |  Major | Benchmarks | Jiayi Liao | Jiayi Liao |
| [FLINK-16164](https://issues.apache.org/jira/browse/FLINK-16164) | Disable maven-site-plugin |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7727](https://issues.apache.org/jira/browse/FLINK-7727) | Extend logging in file server handlers |  Minor | Runtime / REST, Runtime / Web Frontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16169](https://issues.apache.org/jira/browse/FLINK-16169) | Harden BlobServerRangeTest |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12343](https://issues.apache.org/jira/browse/FLINK-12343) | Allow set file.replication in Yarn Configuration |  Minor | Command Line Client, Deployment / YARN | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-16191](https://issues.apache.org/jira/browse/FLINK-16191) | Improve error message on Windows when RocksDB Paths are too long |  Major | Runtime / State Backends | Stephan Ewen | Stephan Ewen |
| [FLINK-15672](https://issues.apache.org/jira/browse/FLINK-15672) | Switch to Log4j 2 by default |  Major | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-16163](https://issues.apache.org/jira/browse/FLINK-16163) | Migrate to flink-shaded-zookeeper |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14177](https://issues.apache.org/jira/browse/FLINK-14177) | Bump Curator From 2.12.0 to 4.2.0 |  Major | Connectors / Hadoop Compatibility, Runtime / Checkpointing | lamber-ken | Chesnay Schepler |
| [FLINK-15967](https://issues.apache.org/jira/browse/FLINK-15967) | Use universal kafka connector in StateMachineExample |  Minor | Examples | Zili Chen | Zili Chen |
| [FLINK-15912](https://issues.apache.org/jira/browse/FLINK-15912) | Add Context to improve TableSourceFactory and TableSinkFactory |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-16188](https://issues.apache.org/jira/browse/FLINK-16188) | Make AutoClosableProcess constructor private |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16183](https://issues.apache.org/jira/browse/FLINK-16183) | Make identifier parsing in Table API more lenient |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-15094](https://issues.apache.org/jira/browse/FLINK-15094) | Warning about using private constructor of java.nio.DirectByteBuffer in Java 11 |  Major | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-16179](https://issues.apache.org/jira/browse/FLINK-16179) | Use configuration from TableFactory in hive connector |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-16259](https://issues.apache.org/jira/browse/FLINK-16259) |  Drop interface/impl separation for checkpoint Metadata and rename MetadataV2 to CheckpointMetadata |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-16247](https://issues.apache.org/jira/browse/FLINK-16247) | Rename 'checkpoints.savepoint.' package and classes to 'checkpoint.metadata.' |  Major | Runtime / Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-16192](https://issues.apache.org/jira/browse/FLINK-16192) | Remove "Legacy State" and Checkpoint Compatibility with Flink 1.2 |  Major | Runtime / Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-15562](https://issues.apache.org/jira/browse/FLINK-15562) | Document example settings.xml for configuring snapshot repository |  Major | Documentation | Jeff Zhang | Yangze Guo |
| [FLINK-16257](https://issues.apache.org/jira/browse/FLINK-16257) | Remove useless ResultPartitionID from AddCredit message |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-15948](https://issues.apache.org/jira/browse/FLINK-15948) | Resource will be wasted when the task manager memory is not a multiple of Yarn minimum allocation |  Minor | Deployment / YARN | Yang Wang | Yang Wang |
| [FLINK-16297](https://issues.apache.org/jira/browse/FLINK-16297) | Remove unnecessary indents and blank lines in code blocks |  Minor | Documentation | Yangze Guo | Yangze Guo |
| [FLINK-16288](https://issues.apache.org/jira/browse/FLINK-16288) | Setting the TTL for discarding task pods on Kubernetes. |  Major | Deployment / Kubernetes | Niels Basjes | Niels Basjes |
| [FLINK-15329](https://issues.apache.org/jira/browse/FLINK-15329) | Incorrect comment for MemoryManager#availableMemory |  Minor | Runtime / Coordination | lining | lining |
| [FLINK-16339](https://issues.apache.org/jira/browse/FLINK-16339) | DatadogReporter isn't logging configuration options |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16307](https://issues.apache.org/jira/browse/FLINK-16307) | LocalStandaloneFlinkResource should use Dist#startFlinkCluster |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16341](https://issues.apache.org/jira/browse/FLINK-16341) | Remove DatadogReporter#DatadogHttpRequest |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16342](https://issues.apache.org/jira/browse/FLINK-16342) | Remove mocking from DatadogHttpClientTest |  Major | Runtime / Metrics, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13417](https://issues.apache.org/jira/browse/FLINK-13417) | Bundle Zookeeper 3.5 as optional dependency in distribution |  Blocker | Runtime / Coordination | Konstantin Knauf | Chesnay Schepler |
| [FLINK-16285](https://issues.apache.org/jira/browse/FLINK-16285) | Refactor SingleInputGate#setInputChannel to remove IntermediateResultPartitionID argument |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-16015](https://issues.apache.org/jira/browse/FLINK-16015) | Refine fallback filesystems to only handle specific filesystems |  Major | FileSystems | Arvid Heise | Arvid Heise |
| [FLINK-16219](https://issues.apache.org/jira/browse/FLINK-16219) | Make AsyncWaitOperator chainable again |  Major | Runtime / Task | Arvid Heise | Arvid Heise |
| [FLINK-16190](https://issues.apache.org/jira/browse/FLINK-16190) | Migrate existing java e2e tests away from FlinkDistribution |  Major | Test Infrastructure, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16348](https://issues.apache.org/jira/browse/FLINK-16348) | Add commas to large numeric accumulators |  Trivial | Runtime / Web Frontend | Kboh | Kboh |
| [FLINK-10917](https://issues.apache.org/jira/browse/FLINK-10917) | Bump io.dropwizard:metrics-core to 3.2.6 |  Minor | Build System, Runtime / Metrics | Dongwon Kim | Chesnay Schepler |
| [FLINK-16280](https://issues.apache.org/jira/browse/FLINK-16280) | Fix sample code errors in the documentation about elasticsearch connector |  Minor | Connectors / ElasticSearch, Documentation | Jiaqi Li | Jiaqi Li |
| [FLINK-16194](https://issues.apache.org/jira/browse/FLINK-16194) | Refactor the Kubernetes decorator design |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-15584](https://issues.apache.org/jira/browse/FLINK-15584) | Give nested data type of ROWs in ValidationException |  Minor | Table SQL / Legacy Planner | Benoît Paris | Ayush Saxena |
| [FLINK-16189](https://issues.apache.org/jira/browse/FLINK-16189) | Remove testing logic from FlinkDistribution |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16239](https://issues.apache.org/jira/browse/FLINK-16239) | Port KubernetesSessionCliTest to the right package |  Trivial | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16238](https://issues.apache.org/jira/browse/FLINK-16238) | Rename Fabric8ClientTest to Fabric8FlinkKubeClient |  Minor | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16427](https://issues.apache.org/jira/browse/FLINK-16427) | Remove directly throw ProgramInvocationExceptions in RemoteStreamEnvironment |  Major | API / DataStream | Zili Chen | Zili Chen |
| [FLINK-15782](https://issues.apache.org/jira/browse/FLINK-15782) | Rework JDBC sinks |  Major | Connectors / JDBC | Roman Khachatryan | Roman Khachatryan |
| [FLINK-14041](https://issues.apache.org/jira/browse/FLINK-14041) | Refactor LeaderRetrievalServiceHostnameResolutionTest and remove StandaloneUtils |  Minor | Runtime / Coordination, Tests | Zili Chen | Zili Chen |
| [FLINK-15337](https://issues.apache.org/jira/browse/FLINK-15337) | Add vendor table to documentation |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-16546](https://issues.apache.org/jira/browse/FLINK-16546) | Fix logging bug in YarnClusterDescriptor#startAppMaster |  Minor | Deployment / YARN | Canbin Zheng | Canbin Zheng |
| [FLINK-16545](https://issues.apache.org/jira/browse/FLINK-16545) | Remove Eclipse-specific plugins |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16493](https://issues.apache.org/jira/browse/FLINK-16493) | Use enum type instead of string type for KubernetesConfigOptions.REST\_SERVICE\_EXPOSED\_TYPE |  Minor | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-15727](https://issues.apache.org/jira/browse/FLINK-15727) | Let BashJavaUtils return dynamic configs and JVM parameters in one call |  Major | Deployment / Scripts | Till Rohrmann | Yangze Guo |
| [FLINK-15090](https://issues.apache.org/jira/browse/FLINK-15090) | Reverse the dependency from flink-streaming-java to flink-client |  Major | API / DataStream, Build System, Client / Job Submission | Zili Chen | Zili Chen |
| [FLINK-16343](https://issues.apache.org/jira/browse/FLINK-16343) | Improve exception message when reading an unbounded source in batch mode |  Major | Table SQL / Planner | Kurt Young | Jark Wu |
| [FLINK-15966](https://issues.apache.org/jira/browse/FLINK-15966) | Capture the call stack of RPC ask() calls. |  Major | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-16623](https://issues.apache.org/jira/browse/FLINK-16623) | add the shorthand 'desc'  for describe on sql client |  Minor | Table SQL / Client | Jun Zhang | Jun Zhang |
| [FLINK-16494](https://issues.apache.org/jira/browse/FLINK-16494) | Use enum type instead of string type for KubernetesConfigOptions.CONTAINER\_IMAGE\_PULL\_POLICY |  Minor | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-13000](https://issues.apache.org/jira/browse/FLINK-13000) | Remove JobID argument from SimpleSlotProvider |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11271](https://issues.apache.org/jira/browse/FLINK-11271) | Improvement to Kerberos Security |  Major | Deployment / YARN | Rong Rong | Rong Rong |
| [FLINK-16293](https://issues.apache.org/jira/browse/FLINK-16293) | Document using plugins in Kubernetes |  Major | Deployment / Kubernetes, FileSystems | Niels Basjes | Niels Basjes |
| [FLINK-15962](https://issues.apache.org/jira/browse/FLINK-15962) | Reduce the default chunk size in netty stack |  Major | Runtime / Network | Zhijiang | Yun Gao |
| [FLINK-16011](https://issues.apache.org/jira/browse/FLINK-16011) | Normalize the within usage in Pattern |  Major | Library / CEP | shuai.xu | shuai.xu |
| [FLINK-16547](https://issues.apache.org/jira/browse/FLINK-16547) | Respect the config option of FileJobGraphRetriever#JOB\_GRAPH\_FILE\_PATH |  Minor | Deployment / YARN | Canbin Zheng | Canbin Zheng |
| [FLINK-16540](https://issues.apache.org/jira/browse/FLINK-16540) | Fully specify bugfix version of Docker containers in Flink Playground docker-compose.yaml files |  Major | Examples | Fabian Hueske | Fabian Hueske |
| [FLINK-15989](https://issues.apache.org/jira/browse/FLINK-15989) | Rewrap OutOfMemoryError in allocateUnpooledOffHeap with better message |  Major | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-16625](https://issues.apache.org/jira/browse/FLINK-16625) | Extract BootstrapTools#getEnvironmentVariables to ConfigurationUtils#getPrefixedKeyValuePairs |  Minor | API / Core | Canbin Zheng | Canbin Zheng |
| [FLINK-16604](https://issues.apache.org/jira/browse/FLINK-16604) | Column key in JM configuration is too narrow |  Minor | Runtime / Web Frontend | Jeff Zhang | Yadong Xie |
| [FLINK-16692](https://issues.apache.org/jira/browse/FLINK-16692) | flink joblistener can register from config |  Major | API / Core | jackylau | jackylau |
| [FLINK-16826](https://issues.apache.org/jira/browse/FLINK-16826) | Support copying of jars |  Major | Test Infrastructure | Chesnay Schepler | Alexander Fedulov |
| [FLINK-16828](https://issues.apache.org/jira/browse/FLINK-16828) | PrometheusReporters support factories |  Major | Runtime / Metrics | Chesnay Schepler | Alexander Fedulov |
| [FLINK-16594](https://issues.apache.org/jira/browse/FLINK-16594) | Typos in GlobalAggregateManager Javadoc |  Trivial | Runtime / Coordination | forideal | forideal |
| [FLINK-16831](https://issues.apache.org/jira/browse/FLINK-16831) | Support plugin directory as JarLocation |  Major | Test Infrastructure | Chesnay Schepler | Alexander Fedulov |
| [FLINK-16832](https://issues.apache.org/jira/browse/FLINK-16832) | Refactor ReporterSetup |  Major | Runtime / Metrics | Chesnay Schepler | Alexander Fedulov |
| [FLINK-16862](https://issues.apache.org/jira/browse/FLINK-16862) | Remove example url in quickstarts |  Blocker | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14338](https://issues.apache.org/jira/browse/FLINK-14338) | Upgrade Calcite version to 1.22 for Flink SQL |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-16018](https://issues.apache.org/jira/browse/FLINK-16018) | Improve error reporting when submitting batch job (instead of AskTimeoutException) |  Blocker | Runtime / Coordination | Robert Metzger | Till Rohrmann |
| [FLINK-16849](https://issues.apache.org/jira/browse/FLINK-16849) | comment is not reasonable |  Trivial | Documentation | hufeihu | hufeihu |
| [FLINK-16837](https://issues.apache.org/jira/browse/FLINK-16837) | Disable trimStackTrace in surefire plugin |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16808](https://issues.apache.org/jira/browse/FLINK-16808) | Consolidated logging in FactoryUtils |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16807](https://issues.apache.org/jira/browse/FLINK-16807) | Improve reporting of errors during resource initialization |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16737](https://issues.apache.org/jira/browse/FLINK-16737) | Remove KubernetesUtils#getContentFromFile |  Trivial | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16942](https://issues.apache.org/jira/browse/FLINK-16942) | ES 5 sink should allow users to select netty transport client |  Major | Connectors / ElasticSearch | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16772](https://issues.apache.org/jira/browse/FLINK-16772) | Bump derby to 10.12.1.1+ or exclude it |  Blocker | Connectors / Hive | Chesnay Schepler | Rui Li |
| [FLINK-6258](https://issues.apache.org/jira/browse/FLINK-6258) | Deprecate ListCheckpointed interface |  Major | API / DataStream | Tzu-Li (Gordon) Tai | Aljoscha Krettek |
| [FLINK-17007](https://issues.apache.org/jira/browse/FLINK-17007) | Add section "How to handle application parameters" in DataStream documentation |  Major | Documentation | Congxian Qiu | Congxian Qiu |
| [FLINK-16555](https://issues.apache.org/jira/browse/FLINK-16555) | Preflight check for known unstable hashCodes. |  Critical | API / DataStream, API / Type Serialization System | Stephan Ewen | Lu Niu |
| [FLINK-17036](https://issues.apache.org/jira/browse/FLINK-17036) | Datadog forwarder does not allow for EU endpoint |  Major | Runtime / Metrics | Raymond Farrelly | Raymond Farrelly |
| [FLINK-16864](https://issues.apache.org/jira/browse/FLINK-16864) | Add idle metrics for Task |  Major | Runtime / Metrics, Runtime / Task | Wenlong Lyu | Wenlong Lyu |
| [FLINK-17063](https://issues.apache.org/jira/browse/FLINK-17063) | Make null type be a possible result of a type inference |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16697](https://issues.apache.org/jira/browse/FLINK-16697) | [CVE-2020-1960] Disable JMX rebinding |  Major | Runtime / Metrics | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [FLINK-9656](https://issues.apache.org/jira/browse/FLINK-9656) | Environment java opts for flink run |  Minor | Command Line Client | Jozef Vilcek | Jun Qin |
| [FLINK-16949](https://issues.apache.org/jira/browse/FLINK-16949) | Enhance AbstractStreamOperatorTestHarness to use customized TtlTimeProvider |  Major | Tests | Yun Tang | Yun Tang |
| [FLINK-17050](https://issues.apache.org/jira/browse/FLINK-17050) | Remove methods getVertex() and getResultPartition() from SchedulingTopology |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-17067](https://issues.apache.org/jira/browse/FLINK-17067) | CatalogManager#createTable and createTemporaryTable should provide consistent semantics |  Major | Table SQL / API | Zhenghua Gao | Zhenghua Gao |
| [FLINK-17098](https://issues.apache.org/jira/browse/FLINK-17098) | CatalogManager#dropTemporaryTable and dropTemporaryView should use ObjectIdentifier as its argument |  Major | Table SQL / API | Zhenghua Gao | Zhenghua Gao |
| [FLINK-16961](https://issues.apache.org/jira/browse/FLINK-16961) | Bump Netty 4 to 4.1.44 |  Major | API / Python, Connectors / Cassandra, Connectors / ElasticSearch, Connectors / HBase | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13691](https://issues.apache.org/jira/browse/FLINK-13691) | Remove deprecated query config |  Major | Table SQL / API | Timo Walther | jinhai |
| [FLINK-17134](https://issues.apache.org/jira/browse/FLINK-17134) | Wrong logging information in Kafka010PartitionDiscoverer#L80 |  Major | Connectors / Kafka | Jiayi Liao | Jiayi Liao |
| [FLINK-15827](https://issues.apache.org/jira/browse/FLINK-15827) | Deprecate unused taskmanager.registration.\* options |  Blocker | Runtime / Coordination | Till Rohrmann | Eduardo Winpenny Tejedor |
| [FLINK-17082](https://issues.apache.org/jira/browse/FLINK-17082) | Remove mocking from SQL client tests |  Major | Table SQL / Client, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17132](https://issues.apache.org/jira/browse/FLINK-17132) | Bump Prometheus version |  Major | Runtime / Metrics | MING LIU | MING LIU |
| [FLINK-17023](https://issues.apache.org/jira/browse/FLINK-17023) | Improve handling of unexpected input in config.sh#extractExecutionParams |  Major | Deployment / Scripts | Caizhi Weng | Caizhi Weng |
| [FLINK-16895](https://issues.apache.org/jira/browse/FLINK-16895) | Remove outdated and defunct build\_docs.bat |  Minor | Documentation, Stateful Functions | Stephan Ewen | Stephan Ewen |
| [FLINK-16683](https://issues.apache.org/jira/browse/FLINK-16683) | Remove scripts for starting Flink on Windows |  Blocker | Deployment / Scripts | Robert Metzger | Chesnay Schepler |
| [FLINK-17142](https://issues.apache.org/jira/browse/FLINK-17142) | Bump ORC version |  Major | Connectors / ORC | Sivaprasanna Sethuraman | Sivaprasanna Sethuraman |
| [FLINK-17263](https://issues.apache.org/jira/browse/FLINK-17263) | Remove RepeatFamilyOperandTypeChecker in blink planner and replace it  with calcite's CompositeOperandTypeChecker |  Major | Table SQL / Planner | Terry Wang | Terry Wang |
| [FLINK-17197](https://issues.apache.org/jira/browse/FLINK-17197) | ContinuousFileReaderOperator might shade the real exception when processing records |  Major | Connectors / FileSystem, Runtime / Task | Caizhi Weng | Roman Khachatryan |
| [FLINK-16874](https://issues.apache.org/jira/browse/FLINK-16874) | Respect the dynamic options when calculating memory options in taskmanager.sh |  Major | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17249](https://issues.apache.org/jira/browse/FLINK-17249) | Bump universal Kafka connector to Kafka 2.2.2 |  Major | Connectors / Kafka | Ismael Juma | Ismael Juma |
| [FLINK-17276](https://issues.apache.org/jira/browse/FLINK-17276) | Add checkstyle to training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17277](https://issues.apache.org/jira/browse/FLINK-17277) | Apply IntelliJ recommendations to training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17278](https://issues.apache.org/jira/browse/FLINK-17278) | Add Travis to the training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17279](https://issues.apache.org/jira/browse/FLINK-17279) | Use gradle build scans for training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17316](https://issues.apache.org/jira/browse/FLINK-17316) | Have HourlyTips solutions use TumblingEventTimeWindows.of |  Major | Documentation / Training / Exercises | David Anderson | David Anderson |
| [FLINK-17072](https://issues.apache.org/jira/browse/FLINK-17072) | Let Dispatcher and ResourceManager pick random endpoint id |  Minor | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-17333](https://issues.apache.org/jira/browse/FLINK-17333) | add doc for 'create catalog' ddl |  Major | Documentation, Table SQL / API | Bowen Li | Bowen Li |
| [FLINK-17432](https://issues.apache.org/jira/browse/FLINK-17432) | Rename Tutorials to Training |  Major | Documentation / Training | David Anderson | David Anderson |
| [FLINK-17125](https://issues.apache.org/jira/browse/FLINK-17125) | Add a Usage Notes Page to Answer Common Questions Encountered by PyFlink Users |  Major | API / Python, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-16125](https://issues.apache.org/jira/browse/FLINK-16125) | Make zookeeper.connect optional for Kafka connectors |  Major | Connectors / Kafka | Jiangjie Qin | Qingsheng Ren |
| [FLINK-16871](https://issues.apache.org/jira/browse/FLINK-16871) | Make more build information available during runtime. |  Major | Build System | Niels Basjes | Niels Basjes |
| [FLINK-16408](https://issues.apache.org/jira/browse/FLINK-16408) | Bind user code class loader to lifetime of a slot |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-17291](https://issues.apache.org/jira/browse/FLINK-17291) | Translate training lesson on event-driven applications to chinese |  Major | chinese-translation, Documentation / Training | David Anderson | Roc Marshal |
| [FLINK-17204](https://issues.apache.org/jira/browse/FLINK-17204) | The RMQSource and RMQSink of the RabbitMQ connector have inconsistent default value of durable ​​when declaring the queue. |  Major | Connectors/ RabbitMQ | ChaojianZhang | Austin Cawley-Edwards |
| [FLINK-17271](https://issues.apache.org/jira/browse/FLINK-17271) | Translate new DataStream API training |  Major | chinese-translation, Documentation / Training | David Anderson | Bai Xu |
| [FLINK-17289](https://issues.apache.org/jira/browse/FLINK-17289) | Translate training/etl.zh.md to chinese |  Major | chinese-translation, Documentation / Training | David Anderson | Li Ying |
| [FLINK-16521](https://issues.apache.org/jira/browse/FLINK-16521) | Remove unused FileUtils#isClassFile |  Trivial | API / Core | Canbin Zheng | Guru Prasad |
| [FLINK-17537](https://issues.apache.org/jira/browse/FLINK-17537) | Refactor flink-jdbc connector structure |  Major | Connectors / JDBC | Leonard Xu | Leonard Xu |
| [FLINK-17538](https://issues.apache.org/jira/browse/FLINK-17538) | Refactor flink-hbase connector structure |  Major | Connectors / HBase | Leonard Xu | Jark Wu |
| [FLINK-14881](https://issues.apache.org/jira/browse/FLINK-14881) | Upgrade AWS SDK to support "IAM Roles for Service Accounts" in AWS EKS |  Major | FileSystems | Vincent Chenal | Rafi Aroch |
| [FLINK-17248](https://issues.apache.org/jira/browse/FLINK-17248) | Make the thread nums of io executor of ClusterEntrypoint and MiniCluster configurable |  Major | Runtime / Checkpointing, Runtime / Coordination | Yun Tang | Yun Tang |
| [FLINK-5763](https://issues.apache.org/jira/browse/FLINK-5763) | Make savepoints self-contained and relocatable |  Critical | Runtime / State Backends | Ufuk Celebi | Congxian Qiu |
| [FLINK-17696](https://issues.apache.org/jira/browse/FLINK-17696) |  Support eager initialization of operators with OperatorEventDispatcher |  Minor | Runtime / Task | Stephan Ewen | Stephan Ewen |
| [FLINK-17671](https://issues.apache.org/jira/browse/FLINK-17671) | Simplify the ManuallyTriggeredScheduledExecutortriggering logic |  Minor | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-7267](https://issues.apache.org/jira/browse/FLINK-7267) | Add support for lists of hosts to connect |  Minor | Connectors/ RabbitMQ | Hu Hailin | Austin Cawley-Edwards |
| [FLINK-16963](https://issues.apache.org/jira/browse/FLINK-16963) | Convert all MetricReporters to plugins |  Major | Runtime / Metrics | Chesnay Schepler |  |
| [FLINK-17764](https://issues.apache.org/jira/browse/FLINK-17764) | Update tips about the default planner when the planner parameter value is not recognized |  Minor | Examples | xushiwei | xushiwei |
| [FLINK-17522](https://issues.apache.org/jira/browse/FLINK-17522) | Document flink-jepsen Command Line Options |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-17348](https://issues.apache.org/jira/browse/FLINK-17348) | Expose metric group to ascendingTimestampExtractor |  Major | API / DataStream | Theo Diefenthal | Aljoscha Krettek |
| [FLINK-17602](https://issues.apache.org/jira/browse/FLINK-17602) | Documentation for broadcast state correction |  Trivial | API / DataStream, Documentation | Mans Singh | Mans Singh |
| [FLINK-17704](https://issues.apache.org/jira/browse/FLINK-17704) | Allow running specific benchmarks from maven directly |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-15813](https://issues.apache.org/jira/browse/FLINK-15813) | Set default value of jobmanager.execution.failover-strategy to region |  Blocker | Runtime / Coordination | Till Rohrmann | Zhu Zhu |
| [FLINK-17728](https://issues.apache.org/jira/browse/FLINK-17728) | sql client supports parser statements via sql parser |  Major | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-17520](https://issues.apache.org/jira/browse/FLINK-17520) | Extend CompositeTypeSerializerSnapshot to allow composite serializers to signal migration based on outer configuration |  Critical | API / Type Serialization System | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-16970](https://issues.apache.org/jira/browse/FLINK-16970) | Bundle JMXReporter separately from dist jar |  Major | Build System, Runtime / Metrics | Chesnay Schepler | molsion mo |
| [FLINK-17361](https://issues.apache.org/jira/browse/FLINK-17361) | Support creating of a JDBC table using a custom query |  Major | Table SQL / API | Flavio Pompermaier | Flavio Pompermaier |
| [FLINK-16611](https://issues.apache.org/jira/browse/FLINK-16611) | Datadog reporter should chunk large reports |  Major | Runtime / Metrics | Chesnay Schepler | Stephen Whelan |
| [FLINK-15947](https://issues.apache.org/jira/browse/FLINK-15947) | Finish moving scala expression DSL to flink-table-api-scala |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17780](https://issues.apache.org/jira/browse/FLINK-17780) | Add task name to log statements of ChannelStateWriter |  Major | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-17675](https://issues.apache.org/jira/browse/FLINK-17675) | Resolve CVE-2019-11358 from jquery |  Major | Documentation | Koala Lam | Robert Metzger |
| [FLINK-17854](https://issues.apache.org/jira/browse/FLINK-17854) | Use InputStatus directly in user-facing async input APIs (like source readers) |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-5479](https://issues.apache.org/jira/browse/FLINK-5479) | Per-partition watermarks in FlinkKafkaConsumer should consider idle partitions |  Major | Connectors / Kafka | Tzu-Li (Gordon) Tai | Aljoscha Krettek |
| [FLINK-17812](https://issues.apache.org/jira/browse/FLINK-17812) | Bundle reporters in plugins/ directory |  Major | Build System, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17906](https://issues.apache.org/jira/browse/FLINK-17906) | Simple performance improvements in WatermarkOutputMultiplexer |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-17904](https://issues.apache.org/jira/browse/FLINK-17904) | Add "scheduleWithFixedDelay" to ProcessingTimeService |  Major | Runtime / Task | Stephan Ewen | Stephan Ewen |
| [FLINK-17565](https://issues.apache.org/jira/browse/FLINK-17565) | Bump fabric8 version from 4.5.2 to 4.9.2 |  Critical | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17819](https://issues.apache.org/jira/browse/FLINK-17819) | Yarn error unhelpful when forgetting HADOOP\_CLASSPATH |  Critical | Deployment / YARN | Arvid Heise | Kostas Kloudas |
| [FLINK-16144](https://issues.apache.org/jira/browse/FLINK-16144) | Add client.timeout setting and use that for CLI operations |  Major | Command Line Client | Aljoscha Krettek | wangtong |
| [FLINK-17952](https://issues.apache.org/jira/browse/FLINK-17952) | Confusing exception was thrown when old planner and batch mode is used via EnvironmentSettings |  Major | API / Python | Dian Fu | Wei Zhong |
| [FLINK-16934](https://issues.apache.org/jira/browse/FLINK-16934) | Change default planner to blink |  Major | Table SQL / API | Kurt Young | Kurt Young |
| [FLINK-18010](https://issues.apache.org/jira/browse/FLINK-18010) | Add more logging to HistoryServer |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17970](https://issues.apache.org/jira/browse/FLINK-17970) | Increase default value of IO pool executor to 4 \* #cores |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-17945](https://issues.apache.org/jira/browse/FLINK-17945) | Improve error reporting of Python CI tests |  Major | API / Python, Tests | Robert Metzger | Dian Fu |
| [FLINK-16508](https://issues.apache.org/jira/browse/FLINK-16508) | Name the ports exposed by the main Container in Pod |  Minor | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17033](https://issues.apache.org/jira/browse/FLINK-17033) | Upgrade OpenJDK docker image for Kubernetes |  Major | Deployment / Kubernetes | Canbin Zheng |  |
| [FLINK-18042](https://issues.apache.org/jira/browse/FLINK-18042) | Bump flink-shaded version to 11.0 |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16350](https://issues.apache.org/jira/browse/FLINK-16350) | Add E2E test for running against Zookeeper 3.5 |  Major | Runtime / Coordination, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17872](https://issues.apache.org/jira/browse/FLINK-17872) | Update StreamingFileSink documents to add avro formats |  Trivial | Connectors / FileSystem, Documentation | Yun Gao | Yun Gao |
| [FLINK-18185](https://issues.apache.org/jira/browse/FLINK-18185) | Confusing ValidationExcetion in DataGenTableSourceFactory |  Minor | Table SQL / API | Konstantin Knauf | Jingsong Lee |
| [FLINK-16681](https://issues.apache.org/jira/browse/FLINK-16681) | Jdbc JDBCOutputFormat   and JDBCLookupFunction PreparedStatement loss connection, if long time not records to write. |  Major | Connectors / JDBC | LakeShen | Lijie Wang |
| [FLINK-16217](https://issues.apache.org/jira/browse/FLINK-16217) | SQL Client crashed when any uncatched exception is thrown |  Critical | Table SQL / Client | Jark Wu | godfrey he |
| [FLINK-18018](https://issues.apache.org/jira/browse/FLINK-18018) | Bundle GPU plugin in "plugins/" directory |  Major | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17980](https://issues.apache.org/jira/browse/FLINK-17980) | Simplify Flink Getting Started Material |  Critical | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-18188](https://issues.apache.org/jira/browse/FLINK-18188) | Document asymmetric allocation of Flink memory |  Major | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-18160](https://issues.apache.org/jira/browse/FLINK-18160) | YARN session logs about HADOOP\_CONF\_DIR even though HADOOP\_CLASSPATH containing a config is set |  Major | Deployment / YARN | Robert Metzger | Robert Metzger |
| [FLINK-16497](https://issues.apache.org/jira/browse/FLINK-16497) | Improve default flush strategy for JDBC sink to make it work out-of-box |  Critical | Connectors / JDBC, Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-16496](https://issues.apache.org/jira/browse/FLINK-16496) | Improve default flush strategy for HBase sink to make it work out-of-box |  Critical | Connectors / HBase, Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-16495](https://issues.apache.org/jira/browse/FLINK-16495) | Improve default flush strategy for Elasticsearch sink to make it work out-of-box |  Critical | Connectors / ElasticSearch, Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-16448](https://issues.apache.org/jira/browse/FLINK-16448) | add documentation for Hive table source and sink parallelism setting strategy |  Critical | Connectors / Hive, Documentation | Bowen Li | Jingsong Lee |
| [FLINK-15950](https://issues.apache.org/jira/browse/FLINK-15950) | Remove registration of TableSource/TableSink in ConnectTableDescriptor |  Major | Table SQL / API | Kurt Young |  |
| [FLINK-18175](https://issues.apache.org/jira/browse/FLINK-18175) | Add human readable summary for configured and derived memory sizes. |  Major | Runtime / Coordination | Xintong Song | Chesnay Schepler |
| [FLINK-17981](https://issues.apache.org/jira/browse/FLINK-17981) | Add new Flink docs homepage content |  Critical | Documentation | Seth Wiesman | David Anderson |
| [FLINK-16225](https://issues.apache.org/jira/browse/FLINK-16225) | Metaspace Out Of Memory should be handled as Fatal Error in TaskManager |  Critical | Runtime / Task | Stephan Ewen | Andrey Zagrebin |
| [FLINK-15362](https://issues.apache.org/jira/browse/FLINK-15362) | Bump Kafka client version to 2.4.1 for universal Kafka connector |  Major | Connectors / Kafka | vinoyang | Aljoscha Krettek |
| [FLINK-18282](https://issues.apache.org/jira/browse/FLINK-18282) | retranslate the documentation home page |  Major | chinese-translation, Documentation | David Anderson | wangsong |
| [FLINK-18250](https://issues.apache.org/jira/browse/FLINK-18250) | Enrich OOM error messages with more details in ClusterEntrypoint |  Major | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-18294](https://issues.apache.org/jira/browse/FLINK-18294) | Log java processes and disk space after each e2e test |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18304](https://issues.apache.org/jira/browse/FLINK-18304) | Document default reporter interval |  Major | Documentation, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18305](https://issues.apache.org/jira/browse/FLINK-18305) | Add interval configuration too all reporter examples that support it |  Major | Documentation, Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18298](https://issues.apache.org/jira/browse/FLINK-18298) | Rename TableResult headers of SHOW statements |  Major | Table SQL / API | Fabian Hueske | godfrey he |
| [FLINK-18301](https://issues.apache.org/jira/browse/FLINK-18301) | Backup Kafka logs on e2e failure |  Major | Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17269](https://issues.apache.org/jira/browse/FLINK-17269) | Translate new Training Overview |  Major | chinese-translation, Documentation / Training | David Anderson | Yichao Yang |
| [FLINK-17376](https://issues.apache.org/jira/browse/FLINK-17376) | Remove deprecated state access methods |  Critical | API / DataStream | Stephan Ewen | Manish Ghildiyal |
| [FLINK-17544](https://issues.apache.org/jira/browse/FLINK-17544) | NPE JDBCUpsertOutputFormat |  Major | Connectors / JDBC | John Lonergan | Shengkai Fang |
| [FLINK-18353](https://issues.apache.org/jira/browse/FLINK-18353) | [1.11.0] maybe document jobmanager behavior change regarding -XX:MaxDirectMemorySize |  Major | Documentation, Runtime / Configuration | Steven Zhen Wu | Andrey Zagrebin |
| [FLINK-18283](https://issues.apache.org/jira/browse/FLINK-18283) | Update outdated Javadoc for clear method of ProcessWindowFunction |  Minor | API / Core, API / DataStream | Abhijit Shandilya | Abhijit Shandilya |
| [FLINK-18194](https://issues.apache.org/jira/browse/FLINK-18194) | Update Table API Walkthrough |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-18351](https://issues.apache.org/jira/browse/FLINK-18351) | ModuleManager creates a lot of duplicate/similar log messages |  Major | Table SQL / API | Robert Metzger | Shengkai Fang |
| [FLINK-18430](https://issues.apache.org/jira/browse/FLINK-18430) | Upgrade stability to @Public for CheckpointedFunction and CheckpointListener |  Critical | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-17292](https://issues.apache.org/jira/browse/FLINK-17292) | Translate Fault Tolerance training lesson to Chinese |  Major | chinese-translation, Documentation / Training | David Anderson | Roc Marshal |
| [FLINK-18423](https://issues.apache.org/jira/browse/FLINK-18423) | Fix Prefer tag in document "Detecting Patterns" page of "Streaming Concepts" |  Minor | Documentation, Documentation / Training | Roc Marshal | Roc Marshal |
| [FLINK-18435](https://issues.apache.org/jira/browse/FLINK-18435) | Allow reporter factories to intercept reflection-based instantiation attempts |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16361](https://issues.apache.org/jira/browse/FLINK-16361) | FLIP-84: Improve & Refactor API of TableEnvironment & Table |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-17318](https://issues.apache.org/jira/browse/FLINK-17318) | The comment is not right in \`org.apache.flink.table.planner.delegation.PlannerBase\` |  Major | Table SQL / Planner | Hequn Cheng |  |
| [FLINK-16614](https://issues.apache.org/jira/browse/FLINK-16614) | FLIP-116 Unified Memory Configuration for Job Manager |  Major | Runtime / Configuration, Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8255](https://issues.apache.org/jira/browse/FLINK-8255) | Key expressions on named row types do not work |  Major | API / DataSet, API / DataStream | Timo Walther | Sergey Nuyanzin |
| [FLINK-15536](https://issues.apache.org/jira/browse/FLINK-15536) | Revert removal of ConfigConstants.YARN\_MAX\_FAILED\_CONTAINERS |  Blocker | Runtime / Configuration | Zili Chen | Zili Chen |
| [FLINK-15739](https://issues.apache.org/jira/browse/FLINK-15739) | PojoSerializerUpgradeTest.testSpecifications fails with NPE on Java 12 |  Major | Tests | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-15738](https://issues.apache.org/jira/browse/FLINK-15738) | Bump powermock to 2.0.4 |  Major | Connectors / Kinesis, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13689](https://issues.apache.org/jira/browse/FLINK-13689) | Rest High Level Client for Elasticsearch6.x connector leaks threads if no connection could be established |  Major | Connectors / ElasticSearch | Rishindra Kumar | static-max |
| [FLINK-11373](https://issues.apache.org/jira/browse/FLINK-11373) | CliFrontend cuts off reason for error messages |  Minor | Command Line Client | Maximilian Michels | leesf |
| [FLINK-15811](https://issues.apache.org/jira/browse/FLINK-15811) | StreamSourceOperatorWatermarksTest.testNoMaxWatermarkOnAsyncCancel fails on Travis |  Blocker | Runtime / Task, Tests | Chesnay Schepler | Roman Khachatryan |
| [FLINK-15417](https://issues.apache.org/jira/browse/FLINK-15417) | Remove the docker volume or mount when starting Mesos e2e cluster |  Major | Deployment / Mesos, Tests | Yangze Guo | Yangze Guo |
| [FLINK-15445](https://issues.apache.org/jira/browse/FLINK-15445) | JDBC Table Source didn't work for Types with precision (or/and scale) |  Major | Connectors / JDBC | Zhenghua Gao | Zhenghua Gao |
| [FLINK-16026](https://issues.apache.org/jira/browse/FLINK-16026) | Travis failed due to python setup |  Critical | API / Python | Jingsong Lee | Huang Xingbo |
| [FLINK-15685](https://issues.apache.org/jira/browse/FLINK-15685) | org.apache.flink.tests.util.kafka.SQLClientKafkaITCase failed on traivs |  Major | Table SQL / Client, Tests | Congxian Qiu | Chesnay Schepler |
| [FLINK-16113](https://issues.apache.org/jira/browse/FLINK-16113) | ExpressionReducer shouldn't escape the reduced string value |  Critical | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-15982](https://issues.apache.org/jira/browse/FLINK-15982) | 'Quickstarts Java nightly end-to-end test' is failed on travis |  Major | Tests | Jark Wu | Robert Metzger |
| [FLINK-16118](https://issues.apache.org/jira/browse/FLINK-16118) | testDynamicTableFunction fails |  Critical | Table SQL / Planner | Roman Khachatryan | Timo Walther |
| [FLINK-16068](https://issues.apache.org/jira/browse/FLINK-16068) | table with keyword-escaped columns and computed\_column\_expression columns |  Critical | Table SQL / Client | pangliang | Benchao Li |
| [FLINK-16056](https://issues.apache.org/jira/browse/FLINK-16056) | NullPointerException during ContinuousFileProcessingITCase |  Major | API / DataStream | Roman Khachatryan | Roman Khachatryan |
| [FLINK-16055](https://issues.apache.org/jira/browse/FLINK-16055) | Avoid catalog functions when listing Hive built-in functions |  Major | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-15744](https://issues.apache.org/jira/browse/FLINK-15744) | Some TaskManager Task exceptions are logged as info |  Major | Runtime / Configuration | Jason Kania | Jason Kania |
| [FLINK-15835](https://issues.apache.org/jira/browse/FLINK-15835) | OSS filesystems bundles entire hadoop-common |  Major | FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14533](https://issues.apache.org/jira/browse/FLINK-14533) | PushFilterIntoTableSourceScanRule misses predicate pushdowns |  Major | Table SQL / Planner | Yuval Itzchakov | Yuval Itzchakov |
| [FLINK-15866](https://issues.apache.org/jira/browse/FLINK-15866) | ClosureCleaner#getSuperClassOrInterfaceName throws NPE for Object |  Critical | API / Core | Aven Wu | Aven Wu |
| [FLINK-16162](https://issues.apache.org/jira/browse/FLINK-16162) | Bump flink-shaded to 10.0 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16065](https://issues.apache.org/jira/browse/FLINK-16065) | Unignore FileUtilsTest.testDeleteDirectoryConcurrently() |  Major | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-15904](https://issues.apache.org/jira/browse/FLINK-15904) | Make Kafka Consumer work with activated "disableGenericTypes()" |  Major | Connectors / Kafka | Aljoscha Krettek | Oleksandr Nitavskyi |
| [FLINK-16182](https://issues.apache.org/jira/browse/FLINK-16182) | Remove invalid check in input type inference logic |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16139](https://issues.apache.org/jira/browse/FLINK-16139) | Co-location constraints are not reset on task recovery in DefaultScheduler |  Critical | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14228](https://issues.apache.org/jira/browse/FLINK-14228) | The runtime support for Bounded[One\|Multi]Input#endInput does not properly implement their semantics |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-14038](https://issues.apache.org/jira/browse/FLINK-14038) | ExecutionGraph deploy failed due to akka timeout |  Major | Runtime / Task | liupengcheng | liupengcheng |
| [FLINK-16186](https://issues.apache.org/jira/browse/FLINK-16186) | Speed up ElasticsearchITCase#testInvalidElasticsearchCluster |  Major | Connectors / ElasticSearch, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16233](https://issues.apache.org/jira/browse/FLINK-16233) | Hive connector missing log4j1 exclusions against certain hive versions |  Major | Build System, Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16243](https://issues.apache.org/jira/browse/FLINK-16243) | Update quickstart documentation to Log4j2 |  Major | Documentation, Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16228](https://issues.apache.org/jira/browse/FLINK-16228) | Redundant double-quote in Travis profiles |  Major | Deployment / Mesos, Tests, Travis | Robert Metzger | Yangze Guo |
| [FLINK-16237](https://issues.apache.org/jira/browse/FLINK-16237) | Several places missing Log4j2 configuration property |  Blocker | Tests | Yangze Guo | Chesnay Schepler |
| [FLINK-16161](https://issues.apache.org/jira/browse/FLINK-16161) | Statistics zero should be unknown in HiveCatalog |  Blocker | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-16067](https://issues.apache.org/jira/browse/FLINK-16067) | Flink's CalciteParser swallows error position information |  Major | Table SQL / Planner | Fabian Hueske | Dawid Wysakowicz |
| [FLINK-10918](https://issues.apache.org/jira/browse/FLINK-10918) | incremental Keyed state with RocksDB throws cannot create directory error in windows |  Major | Runtime / Queryable State, Runtime / State Backends | Amit | Stephan Ewen |
| [FLINK-16013](https://issues.apache.org/jira/browse/FLINK-16013) | List and map config options could not be parsed correctly |  Major | Runtime / Configuration | Yang Wang | Yang Wang |
| [FLINK-16111](https://issues.apache.org/jira/browse/FLINK-16111) | Kubernetes deployment does not respect "taskmanager.cpu.cores". |  Major | Deployment / Kubernetes | Xintong Song | Xintong Song |
| [FLINK-16263](https://issues.apache.org/jira/browse/FLINK-16263) | BaseRowArrowReaderWriterTest/RowArrowReaderWriterTest sun.misc.Unsafe or java.nio.DirectByteBuffer.\<init\>(long, int) not available |  Major | API / Python, Tests | Robert Metzger | Dian Fu |
| [FLINK-16242](https://issues.apache.org/jira/browse/FLINK-16242) | BinaryGeneric serialization error cause checkpoint failure |  Major | Table SQL / Planner, Table SQL / Runtime | Jiayi Liao | Jiayi Liao |
| [FLINK-16283](https://issues.apache.org/jira/browse/FLINK-16283) | NullPointerException in GroupAggProcessFunction.close() |  Major | Table SQL / Runtime | Robert Metzger | Jark Wu |
| [FLINK-16231](https://issues.apache.org/jira/browse/FLINK-16231) | Hive connector is missing jdk.tools exclusion against Hive 2.x.x |  Major | Build System, Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16287](https://issues.apache.org/jira/browse/FLINK-16287) | ES6 sql jar relocates log4j2 |  Major | Build System, Connectors / ElasticSearch | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16115](https://issues.apache.org/jira/browse/FLINK-16115) | Aliyun oss filesystem could not work with plugin mechanism |  Critical | Connectors / FileSystem | Yang Wang | Yang Wang |
| [FLINK-14818](https://issues.apache.org/jira/browse/FLINK-14818) | StreamNetworkBenchmarkEnvironment incorrectly setups a receiving InputGate |  Major | Benchmarks | Piotr Nowojski | Yingjie Cao |
| [FLINK-16234](https://issues.apache.org/jira/browse/FLINK-16234) | Fix unstable cases in StreamingJobGraphGeneratorTest |  Minor | . | cpugputpu |  |
| [FLINK-16275](https://issues.apache.org/jira/browse/FLINK-16275) | AggsHandlerCodeGenerator can fail with custom module |  Major | Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-16301](https://issues.apache.org/jira/browse/FLINK-16301) | Annoying "Cannot find FunctionDefinition" messages with SQL for f\_proctime or = |  Major | Table SQL / Planner | Nico Kruber | Jark Wu |
| [FLINK-16265](https://issues.apache.org/jira/browse/FLINK-16265) | TPC-H end-to-end test (Blink Planner): Encodings that differ from the schema are not supported yet for CsvTableSources. |  Major | Table SQL / Planner | Robert Metzger | Jingsong Lee |
| [FLINK-16264](https://issues.apache.org/jira/browse/FLINK-16264) | SQLClientKafkaITCase fails with: Could not map the schema field 'rowtime' to a field from source. |  Major | Table SQL / Client, Tests | Robert Metzger | Jingsong Lee |
| [FLINK-15975](https://issues.apache.org/jira/browse/FLINK-15975) | HiveGenericUDFTest#testMap relies on element order |  Minor | Connectors / Hive, Tests | testfixer0 | testfixer0 |
| [FLINK-16331](https://issues.apache.org/jira/browse/FLINK-16331) | Remove source licenses for old WebUI |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13934](https://issues.apache.org/jira/browse/FLINK-13934) | HistoryServerStaticFileServerHandlerTest failed on Travis |  Critical | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16352](https://issues.apache.org/jira/browse/FLINK-16352) | Changing HashMap to LinkedHashMap for deterministic iterations in ExpressionTest |  Minor | Table SQL / API | testfixer0 | testfixer0 |
| [FLINK-16360](https://issues.apache.org/jira/browse/FLINK-16360) |  connector on hive 2.0.1 don't  support type conversion from STRING to VARCHAR |  Major | Connectors / Hive | wgcn | Jingsong Lee |
| [FLINK-16370](https://issues.apache.org/jira/browse/FLINK-16370) | Flink-dist bundles ZK 3.5 as JDK11-exclusive dependency |  Blocker | Build System | Robert Metzger | Chesnay Schepler |
| [FLINK-16281](https://issues.apache.org/jira/browse/FLINK-16281) | parameter 'maxRetryTimes' can not work in JDBCUpsertTableSink |  Major | Table SQL / Ecosystem | Leonard Xu | Leonard Xu |
| [FLINK-11193](https://issues.apache.org/jira/browse/FLINK-11193) | Rocksdb timer service factory configuration option is not settable per job |  Minor | Runtime / State Backends | Fan weiwen | Aitozi |
| [FLINK-15838](https://issues.apache.org/jira/browse/FLINK-15838) | Dangling CountDownLatch.await(timeout) |  Major | Tests | Roman Leventov | Ayush Saxena |
| [FLINK-16393](https://issues.apache.org/jira/browse/FLINK-16393) | Kinesis consumer unnecessarily creates record emitter thread w/o source sync |  Minor | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-16418](https://issues.apache.org/jira/browse/FLINK-16418) | Hide hive version to avoid user confuse |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-2336](https://issues.apache.org/jira/browse/FLINK-2336) | ArrayIndexOufOBoundsException in TypeExtractor when mapping |  Critical | API / Type Serialization System | William Saar | Guowei Ma |
| [FLINK-16400](https://issues.apache.org/jira/browse/FLINK-16400) | HdfsKindTest.testS3Kind fails in Hadoop 2.4.1 nightly test |  Critical | FileSystems, Tests | Robert Metzger | Arvid Heise |
| [FLINK-16269](https://issues.apache.org/jira/browse/FLINK-16269) | Generic type can not be matched when convert table to stream. |  Major | Table SQL / API | xiemeilong | Jark Wu |
| [FLINK-16108](https://issues.apache.org/jira/browse/FLINK-16108) | StreamSQLExample is failed if running in blink planner |  Critical | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-16410](https://issues.apache.org/jira/browse/FLINK-16410) | PrometheusReporterEndToEndITCase fails with ClassNotFoundException |  Blocker | Runtime / Metrics, Tests | Robert Metzger | Chesnay Schepler |
| [FLINK-16435](https://issues.apache.org/jira/browse/FLINK-16435) | Replace since decorator with versionadd to mark the version an API was introduced |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-16445](https://issues.apache.org/jira/browse/FLINK-16445) | Raise japicmp.referenceVersion to 1.10.0 |  Critical | Build System | Gary Yao | Gary Yao |
| [FLINK-16313](https://issues.apache.org/jira/browse/FLINK-16313) | flink-state-processor-api: surefire execution unstable on Azure |  Blocker | API / State Processor, Tests | Robert Metzger | Seth Wiesman |
| [FLINK-16463](https://issues.apache.org/jira/browse/FLINK-16463) | CodeGenUtils generates code that has two semicolons for GroupingWindowAggsHandler in blink |  Minor | Table SQL / Planner | hehuiyuan | hehuiyuan |
| [FLINK-16500](https://issues.apache.org/jira/browse/FLINK-16500) | Hive get primary key should not throw exception when Invalid method name |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-16467](https://issues.apache.org/jira/browse/FLINK-16467) | MemorySizeTest#testToHumanReadableString() is not portable |  Major | API / Core | Michael Osipov | Xintong Song |
| [FLINK-16371](https://issues.apache.org/jira/browse/FLINK-16371) | HadoopCompressionBulkWriter fails with 'java.io.NotSerializableException' |  Major | Connectors / FileSystem | Sivaprasanna Sethuraman | Sivaprasanna Sethuraman |
| [FLINK-16525](https://issues.apache.org/jira/browse/FLINK-16525) | TwoPhaseCommitSinkFunction subtask logs misleading name |  Trivial | Runtime / Task | Fabian Paul | Fabian Paul |
| [FLINK-16014](https://issues.apache.org/jira/browse/FLINK-16014) | S3 plugin ClassNotFoundException SAXParser |  Major | FileSystems | Arvid Heise | Arvid Heise |
| [FLINK-16519](https://issues.apache.org/jira/browse/FLINK-16519) | CheckpointCoordinatorFailureTest logs LinkageErrors |  Minor | Runtime / Checkpointing | godfrey he | godfrey he |
| [FLINK-16477](https://issues.apache.org/jira/browse/FLINK-16477) | CorrelateTest.testCorrelatePythonTableFunction test fails |  Blocker | Table SQL / Planner, Tests | Robert Metzger | Hequn Cheng |
| [FLINK-16374](https://issues.apache.org/jira/browse/FLINK-16374) | StreamingKafkaITCase: IOException: error=13, Permission denied |  Critical | Connectors / Kafka, Tests | Robert Metzger | Robert Metzger |
| [FLINK-11720](https://issues.apache.org/jira/browse/FLINK-11720) | ES5: ElasticsearchSinkITCase failing |  Critical | Connectors / ElasticSearch | Robert Metzger | Robert Metzger |
| [FLINK-16526](https://issues.apache.org/jira/browse/FLINK-16526) | Fix exception when computed column expression references a keyword column name |  Critical | Table SQL / API | YufeiLiu | Jark Wu |
| [FLINK-16550](https://issues.apache.org/jira/browse/FLINK-16550) | HadoopS3\* tests fail with NullPointerException exceptions |  Blocker | FileSystems | Robert Metzger | Arvid Heise |
| [FLINK-16539](https://issues.apache.org/jira/browse/FLINK-16539) | sql client set param error |  Minor | Table SQL / Client | Jun Zhang | Jun Zhang |
| [FLINK-16464](https://issues.apache.org/jira/browse/FLINK-16464) | result-mode tableau may  shift when content contains Chinese String in SQL CLI |  Minor | Table SQL / Client | Leonard Xu | Leonard Xu |
| [FLINK-16541](https://issues.apache.org/jira/browse/FLINK-16541) | Document of table.exec.shuffle-mode is incorrect |  Major | Documentation | Caizhi Weng | Caizhi Weng |
| [FLINK-16573](https://issues.apache.org/jira/browse/FLINK-16573) | Kinesis consumer does not properly shutdown RecordFetcher threads |  Major | Connectors / Kinesis | Maximilian Michels | Maximilian Michels |
| [FLINK-16047](https://issues.apache.org/jira/browse/FLINK-16047) | Blink planner produces wrong aggregate results with state clean up |  Critical | Table SQL / Planner | Timo Walther | Jark Wu |
| [FLINK-16413](https://issues.apache.org/jira/browse/FLINK-16413) | Reduce hive source parallelism when limit push down |  Major | Connectors / Hive | Jingsong Lee | Jun Zhang |
| [FLINK-16433](https://issues.apache.org/jira/browse/FLINK-16433) | TableEnvironmentImpl doesn't clear buffered operations when it fails to translate the operation |  Major | Table SQL / API | Rui Li | Rui Li |
| [FLINK-16635](https://issues.apache.org/jira/browse/FLINK-16635) | Incompatible okio dependency in flink-metrics-influxdb module |  Major | Runtime / Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-15953](https://issues.apache.org/jira/browse/FLINK-15953) | Job Status is hard to read for some Statuses |  Major | Runtime / Web Frontend | Gary Yao | Yadong Xie |
| [FLINK-16646](https://issues.apache.org/jira/browse/FLINK-16646) | flink read orc file throw a NullPointerException |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jun Zhang | Jun Zhang |
| [FLINK-16583](https://issues.apache.org/jira/browse/FLINK-16583) | Invalid classloader during pipeline creation |  Critical | Connectors / Kafka, Table SQL / Client, Tests | Zhijiang | Timo Walther |
| [FLINK-16678](https://issues.apache.org/jira/browse/FLINK-16678) | Hbase Connector Doc Error |  Trivial | Documentation | sulei | sulei |
| [FLINK-16664](https://issues.apache.org/jira/browse/FLINK-16664) | Unable to set DataStreamSource parallelism to default (-1) |  Major | API / DataStream | Nico Kruber | Nico Kruber |
| [FLINK-16676](https://issues.apache.org/jira/browse/FLINK-16676) | test\_pipeline\_from\_invalid\_json is failing Azure |  Blocker | API / Python | Piotr Nowojski | Hequn Cheng |
| [FLINK-15852](https://issues.apache.org/jira/browse/FLINK-15852) | Job is submitted to the wrong session cluster |  Critical | Command Line Client | Canbin Zheng | Kostas Kloudas |
| [FLINK-16684](https://issues.apache.org/jira/browse/FLINK-16684) | StreamingFileSink builder does not work with Scala |  Critical | API / Scala, Connectors / FileSystem | Till Rohrmann | Till Rohrmann |
| [FLINK-16220](https://issues.apache.org/jira/browse/FLINK-16220) | JsonRowSerializationSchema throws cast exception : NullNode cannot be cast to ArrayNode |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Benchao Li | Benchao Li |
| [FLINK-16633](https://issues.apache.org/jira/browse/FLINK-16633) | CI builds without S3 credentials fail |  Major | Build System / Azure Pipelines, FileSystems | Robert Metzger | Robert Metzger |
| [FLINK-16345](https://issues.apache.org/jira/browse/FLINK-16345) | Computed column can not refer time attribute column |  Major | Table SQL / Planner | Leonard Xu | Jark Wu |
| [FLINK-16532](https://issues.apache.org/jira/browse/FLINK-16532) | Shouldn't trim whitespaces in Path |  Major | API / Core | Rui Li | Rui Li |
| [FLINK-16711](https://issues.apache.org/jira/browse/FLINK-16711) | Parquet columnar row reader read footer from wrong end |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Jingsong Lee |
| [FLINK-16652](https://issues.apache.org/jira/browse/FLINK-16652) | BytesColumnVector should init buffer in Hive 3.x |  Major | Connectors / Hive, Connectors / ORC | Rui Li | Jingsong Lee |
| [FLINK-16718](https://issues.apache.org/jira/browse/FLINK-16718) | KvStateServerHandlerTest leaks Netty ByteBufs |  Major | Runtime / Queryable State, Tests | Gary Yao | Gary Yao |
| [FLINK-16675](https://issues.apache.org/jira/browse/FLINK-16675) | TableEnvironmentITCase. testClearOperation fails on travis nightly build |  Blocker | Table SQL / API | Yu Li | Rui Li |
| [FLINK-16740](https://issues.apache.org/jira/browse/FLINK-16740) | OrcSplitReaderUtil::logicalTypeToOrcType fails to create decimal type with precision \< 10 |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Rui Li | Rui Li |
| [FLINK-15911](https://issues.apache.org/jira/browse/FLINK-15911) | Flink does not work over NAT |  Blocker | Runtime / Coordination | Till Rohrmann | Xintong Song |
| [FLINK-15579](https://issues.apache.org/jira/browse/FLINK-15579) | UpsertStreamTableSink should work on batch mode |  Major | Table SQL / Planner | Shu Li Zheng | Shu Li Zheng |
| [FLINK-16629](https://issues.apache.org/jira/browse/FLINK-16629) | Streaming bucketing end-to-end test output hash mismatch |  Blocker | API / DataStream, Tests | Piotr Nowojski | Robert Metzger |
| [FLINK-16663](https://issues.apache.org/jira/browse/FLINK-16663) | Docs version 1.10 missing from version picker dropdown |  Critical | Documentation | Stephan Ewen | Chesnay Schepler |
| [FLINK-16166](https://issues.apache.org/jira/browse/FLINK-16166) | Javadoc doclint option not working on Java 11 |  Minor | Build System, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15438](https://issues.apache.org/jira/browse/FLINK-15438) | Counter metrics are incorrectly reported as total counts to DataDog |  Minor | Runtime / Metrics | Jörn Kottmann | Jörn Kottmann |
| [FLINK-16170](https://issues.apache.org/jira/browse/FLINK-16170) | SearchTemplateRequest ClassNotFoundException when use flink-sql-connector-elasticsearch7 |  Blocker | Connectors / ElasticSearch | Jark Wu | Leonard Xu |
| [FLINK-16805](https://issues.apache.org/jira/browse/FLINK-16805) | StreamingKafkaITCase fails with "Could not instantiate instance using default factory." |  Blocker | Connectors / Kafka, Tests | Robert Metzger | Robert Metzger |
| [FLINK-16786](https://issues.apache.org/jira/browse/FLINK-16786) | Fix pyarrow version incompatible problem |  Major | API / Python | Hequn Cheng | Rong Rong |
| [FLINK-16720](https://issues.apache.org/jira/browse/FLINK-16720) | Maven gets stuck downloading artifacts on Azure |  Critical | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-16647](https://issues.apache.org/jira/browse/FLINK-16647) | Miss file extension when inserting to hive table with compression |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-16825](https://issues.apache.org/jira/browse/FLINK-16825) | PrometheusReporterEndToEndITCase should rely on path returned by DownloadCache |  Major | Runtime / Metrics, Tests | Chesnay Schepler | Alexander Fedulov |
| [FLINK-16798](https://issues.apache.org/jira/browse/FLINK-16798) | Logs from BashJavaUtils are not properly preserved and passed into TM logs. |  Major | Deployment / Scripts | Xintong Song | Chesnay Schepler |
| [FLINK-16262](https://issues.apache.org/jira/browse/FLINK-16262) | Class loader problem with FlinkKafkaProducer.Semantic.EXACTLY\_ONCE and usrlib directory |  Blocker | Connectors / Kafka | Jürgen Kreileder | Guowei Ma |
| [FLINK-16727](https://issues.apache.org/jira/browse/FLINK-16727) | Fix cast exception when having time point literal as parameters |  Major | Table SQL / Planner | Matrix42 | Jark Wu |
| [FLINK-16070](https://issues.apache.org/jira/browse/FLINK-16070) | Blink planner can not extract correct unique key for UpsertStreamTableSink |  Critical | Table SQL / Planner | Leonard Xu | godfrey he |
| [FLINK-13483](https://issues.apache.org/jira/browse/FLINK-13483) | PrestoS3FileSystemITCase.testDirectoryListing fails on Travis |  Critical | FileSystems | Tzu-Li (Gordon) Tai | Lu Niu |
| [FLINK-16796](https://issues.apache.org/jira/browse/FLINK-16796) | Fix The Bug of Python UDTF in SQL Query |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-16703](https://issues.apache.org/jira/browse/FLINK-16703) | AkkaRpcActor state machine does not record transition to terminating state. |  Minor | Runtime / Coordination | Dmitri Chmelev | Till Rohrmann |
| [FLINK-16878](https://issues.apache.org/jira/browse/FLINK-16878) | flink-table-planner contains unwanted dependency org.apiguardian.api |  Blocker | Table SQL / Planner | Robert Metzger | Danny Chen |
| [FLINK-16888](https://issues.apache.org/jira/browse/FLINK-16888) | Re-add jquery license file under "/licenses" |  Blocker | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-16834](https://issues.apache.org/jira/browse/FLINK-16834) | Examples cannot be run from IDE |  Critical | Client / Job Submission, Examples | Till Rohrmann | Till Rohrmann |
| [FLINK-16591](https://issues.apache.org/jira/browse/FLINK-16591) | Flink-zh Doc show a wrong Email address |  Minor | chinese-translation, Project Website | forideal | forideal |
| [FLINK-14311](https://issues.apache.org/jira/browse/FLINK-14311) | Streaming File Sink end-to-end test failed on Travis |  Critical | Connectors / FileSystem, Tests | Till Rohrmann | Aljoscha Krettek |
| [FLINK-16560](https://issues.apache.org/jira/browse/FLINK-16560) | Forward Configuration in PackagedProgramUtils#getPipelineFromProgram |  Blocker | API / DataStream, Runtime / Configuration | Zhu Zhu | Aljoscha Krettek |
| [FLINK-14316](https://issues.apache.org/jira/browse/FLINK-14316) | Stuck in "Job leader ... lost leadership" error |  Critical | Runtime / Coordination | Steven Zhen Wu | Till Rohrmann |
| [FLINK-16836](https://issues.apache.org/jira/browse/FLINK-16836) | Losing leadership does not clear rpc connection in JobManagerLeaderListener |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-16373](https://issues.apache.org/jira/browse/FLINK-16373) | EmbeddedLeaderService: IllegalStateException: The RPC connection is already closed |  Major | Runtime / Coordination | Robert Metzger | Till Rohrmann |
| [FLINK-16944](https://issues.apache.org/jira/browse/FLINK-16944) | Compile error in. DumpCompiledPlanTest and PreviewPlanDumpTest |  Blocker | API / DataStream, Runtime / Configuration | Piotr Nowojski | Chesnay Schepler |
| [FLINK-16917](https://issues.apache.org/jira/browse/FLINK-16917) | "TPC-DS end-to-end test (Blink planner)" gets stuck |  Blocker | Runtime / Task, Tests | Robert Metzger | Arvid Heise |
| [FLINK-16939](https://issues.apache.org/jira/browse/FLINK-16939) | TaskManagerMessageParameters#taskManagerIdParameter is not declared final |  Minor | Runtime / REST | Gary Yao | Gary Yao |
| [FLINK-16940](https://issues.apache.org/jira/browse/FLINK-16940) | Avoid creating currentRegion HashSet with manually set initialCapacity |  Major | Runtime / REST | Gary Yao | Gary Yao |
| [FLINK-16916](https://issues.apache.org/jira/browse/FLINK-16916) | The logic of NullableSerializer#copy is wrong |  Blocker | API / Type Serialization System | Congxian Qiu | Congxian Qiu |
| [FLINK-16885](https://issues.apache.org/jira/browse/FLINK-16885) | SQL hive-connector wilcard excludes don't work on maven 3.1.X |  Blocker | Build System, Connectors / Hive | Chesnay Schepler | Jingsong Lee |
| [FLINK-16476](https://issues.apache.org/jira/browse/FLINK-16476) | SelectivityEstimatorTest logs LinkageErrors |  Critical | Table SQL / Planner | Robert Metzger | godfrey he |
| [FLINK-15305](https://issues.apache.org/jira/browse/FLINK-15305) | MemoryMappedBoundedDataTest fails with IOException on ppc64le |  Minor | Runtime / Network, Tests | Siddhesh Ghadi | Yingjie Cao |
| [FLINK-16705](https://issues.apache.org/jira/browse/FLINK-16705) | LocalExecutor tears down MiniCluster before client can retrieve JobResult |  Blocker | Client / Job Submission | Maximilian Michels | Maximilian Michels |
| [FLINK-16710](https://issues.apache.org/jira/browse/FLINK-16710) | Log Upload blocks Main Thread in TaskExecutor |  Critical | Runtime / Coordination | Gary Yao | wangsan |
| [FLINK-16980](https://issues.apache.org/jira/browse/FLINK-16980) | Python UDF doesn't work with protobuf 3.6.1 |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-16979](https://issues.apache.org/jira/browse/FLINK-16979) | flink-sql-connector-hive-1.2.2\_2.11 doesn't compile on JDK11 |  Blocker | Connectors / Hive | Robert Metzger | Chesnay Schepler |
| [FLINK-15772](https://issues.apache.org/jira/browse/FLINK-15772) | Shaded Hadoop S3A with credentials provider end-to-end test fails on travis |  Critical | Connectors / FileSystem, Tests | Yu Li | Aljoscha Krettek |
| [FLINK-16590](https://issues.apache.org/jira/browse/FLINK-16590) | flink-oss-fs-hadoop: Not all dependencies in NOTICE file are bundled |  Critical | Connectors / FileSystem, Release System | Gary Yao | Aljoscha Krettek |
| [FLINK-16913](https://issues.apache.org/jira/browse/FLINK-16913) | ReadableConfigToConfigurationAdapter#getEnum throws UnsupportedOperationException |  Blocker | Runtime / Configuration | Canbin Zheng | Dawid Wysakowicz |
| [FLINK-17010](https://issues.apache.org/jira/browse/FLINK-17010) | Streaming File Sink s3 end-to-end test fails with "Output hash mismatch" |  Blocker | Connectors / FileSystem | Robert Metzger | Aljoscha Krettek |
| [FLINK-16817](https://issues.apache.org/jira/browse/FLINK-16817) | StringUtils.arrayToString() doesn't convert array of byte array correctly |  Major | API / Core | Bowen Li | Bowen Li |
| [FLINK-16632](https://issues.apache.org/jira/browse/FLINK-16632) | SqlDateTimeUtils#toSqlTimestamp(String, String) may yield incorrect result |  Critical | Table SQL / Planner | Jingsong Lee | Zhenghua Gao |
| [FLINK-17040](https://issues.apache.org/jira/browse/FLINK-17040) | SavepointWriterITCase broken |  Blocker | Runtime / Task, Tests | Wenlong Lyu | Yingjie Cao |
| [FLINK-16856](https://issues.apache.org/jira/browse/FLINK-16856) | taskmanager.sh not working on Mac |  Critical | Deployment / Scripts | Yang Wang | Chesnay Schepler |
| [FLINK-13497](https://issues.apache.org/jira/browse/FLINK-13497) | Checkpoints can complete after CheckpointFailureManager fails job |  Critical | Runtime / Checkpointing | Till Rohrmann | Biao Liu |
| [FLINK-9429](https://issues.apache.org/jira/browse/FLINK-9429) | Quickstart E2E not working locally |  Critical | Quickstarts, Tests | Till Rohrmann | Aljoscha Krettek |
| [FLINK-17053](https://issues.apache.org/jira/browse/FLINK-17053) | RecordWriterTest.testClearBuffersAfterInterruptDuringBlockingBufferRequest fails |  Critical | Runtime / Network | Robert Metzger |  |
| [FLINK-17054](https://issues.apache.org/jira/browse/FLINK-17054) | TaskMailboxProcessorTest.testIdleTime() unstable |  Critical | Runtime / Task | Robert Metzger |  |
| [FLINK-16696](https://issues.apache.org/jira/browse/FLINK-16696) | Savepoint trigger documentation is insufficient |  Minor | Documentation, Runtime / REST | Roman Khachatryan | Chesnay Schepler |
| [FLINK-17056](https://issues.apache.org/jira/browse/FLINK-17056) | JMH main() methods call unrelated benchmarks |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-17062](https://issues.apache.org/jira/browse/FLINK-17062) | Fix the conversion from Java row type to Python row type |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-15812](https://issues.apache.org/jira/browse/FLINK-15812) | HistoryServer archiving is done in Dispatcher main thread |  Critical | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16981](https://issues.apache.org/jira/browse/FLINK-16981) | flink-runtime tests are crashing the JVM on Java11 because of PowerMock |  Critical | Runtime / Coordination, Tests | Robert Metzger | Chesnay Schepler |
| [FLINK-16626](https://issues.apache.org/jira/browse/FLINK-16626) | Prevent REST handler from being closed more than once |  Blocker | Deployment / YARN | chaiyongqiang | Weike Dong |
| [FLINK-17107](https://issues.apache.org/jira/browse/FLINK-17107) | CheckpointCoordinatorConfiguration#isExactlyOnce() is inconsistent with StreamConfig#getCheckpointMode() |  Major | Runtime / Checkpointing | Yingjie Cao | Yingjie Cao |
| [FLINK-16767](https://issues.apache.org/jira/browse/FLINK-16767) | Failed to read Hive table with RegexSerDe |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15936](https://issues.apache.org/jira/browse/FLINK-15936) | TaskExecutorTest#testSlotAcceptance deadlocks |  Critical | Runtime / Coordination, Tests | Gary Yao | Andrey Zagrebin |
| [FLINK-17124](https://issues.apache.org/jira/browse/FLINK-17124) | The PyFlink Job runs into infinite loop if the Python UDF imports job code |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-17114](https://issues.apache.org/jira/browse/FLINK-17114) | When the pyflink job runs in local mode and the command "python" points to Python 2.7, the startup of the Python UDF worker will fail. |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-17080](https://issues.apache.org/jira/browse/FLINK-17080) | Utils.CollectHelper is possible to throw NPE if the sink is up but not initialized when the job fails |  Major | API / DataSet | Caizhi Weng | Caizhi Weng |
| [FLINK-13880](https://issues.apache.org/jira/browse/FLINK-13880) | The behavior of JobExecutionResult.getAccumulatorResult does not match its java doc |  Major | API / Core | Caizhi Weng | Caizhi Weng |
| [FLINK-17093](https://issues.apache.org/jira/browse/FLINK-17093) | Python UDF doesn't work when the input column is from composite field |  Blocker | API / Python | Dian Fu | Dian Fu |
| [FLINK-17064](https://issues.apache.org/jira/browse/FLINK-17064) | Improve literals conversion in ExpressionConverter |  Major | Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16813](https://issues.apache.org/jira/browse/FLINK-16813) |  JDBCInputFormat doesn't correctly map Short |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-17152](https://issues.apache.org/jira/browse/FLINK-17152) | FunctionDefinitionUtil generate wrong resultType and  acc type of AggregateFunctionDefinition |  Blocker | Table SQL / Runtime | Terry Wang | Terry Wang |
| [FLINK-16822](https://issues.apache.org/jira/browse/FLINK-16822) | The config set by SET command does not work |  Critical | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-16598](https://issues.apache.org/jira/browse/FLINK-16598) | Respect the rest port exposed by Service in Fabric8FlinkKubeClient#getRestEndpoint |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-15486](https://issues.apache.org/jira/browse/FLINK-15486) | LocalInputChannelTest.testConcurrentConsumeMultiplePartitions failing on ppc64le platform. |  Minor | Runtime / Network, Tests | Siddhesh Ghadi | Yingjie Cao |
| [FLINK-16576](https://issues.apache.org/jira/browse/FLINK-16576) | State inconsistency on restore with memory state backends |  Blocker | Runtime / State Backends | Nico Kruber | Congxian Qiu |
| [FLINK-17131](https://issues.apache.org/jira/browse/FLINK-17131) | Javadocs broken for master |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16771](https://issues.apache.org/jira/browse/FLINK-16771) | NPE when filtering by decimal column |  Major | Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-17172](https://issues.apache.org/jira/browse/FLINK-17172) | Re-enable debug level logging in Jepsen Tests |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-16581](https://issues.apache.org/jira/browse/FLINK-16581) | Support state ttl for Mini-Batch deduplication using StateTtlConfig |  Critical | Table SQL / Runtime | Jingsong Lee | dalongliu |
| [FLINK-16308](https://issues.apache.org/jira/browse/FLINK-16308) | SQL connector download links are broken |  Critical | Documentation, Table SQL / Ecosystem | Fabian Hueske | Fabian Hueske |
| [FLINK-17205](https://issues.apache.org/jira/browse/FLINK-17205) | test\_ci Python fails with unable to execute 'gcc': No such file or directory |  Blocker | API / Python | Piotr Nowojski | Piotr Nowojski |
| [FLINK-17211](https://issues.apache.org/jira/browse/FLINK-17211) | Some tests in flink-sql-parser module are disabled |  Blocker | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16411](https://issues.apache.org/jira/browse/FLINK-16411) | Maven central connection timeouts on Azure Pipelines |  Critical | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-16823](https://issues.apache.org/jira/browse/FLINK-16823) | The functioin TIMESTAMPDIFF doesn't perform expected result |  Major | Table SQL / Planner | Adam N D DENG | Zhenghua Gao |
| [FLINK-16600](https://issues.apache.org/jira/browse/FLINK-16600) | Respect the rest.bind-port for the Kubernetes setup |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17223](https://issues.apache.org/jira/browse/FLINK-17223) | System.IO.IOException: No space left on device in misc profile on free Azure builders |  Major | Build System / Azure Pipelines | Robert Metzger | Robert Metzger |
| [FLINK-17068](https://issues.apache.org/jira/browse/FLINK-17068) | ERROR at teardown of TableConfigTests.test\_get\_set\_decimal\_context |  Critical | API / Python, Tests | Robert Metzger | Dian Fu |
| [FLINK-17257](https://issues.apache.org/jira/browse/FLINK-17257) | AbstractYarnClusterTest does not compile with Hadoop 2.10 |  Major | Deployment / YARN, Tests | Xintong Song | Xintong Song |
| [FLINK-15347](https://issues.apache.org/jira/browse/FLINK-15347) | ZooKeeperDefaultDispatcherRunnerTest.testResourceCleanupUnderLeadershipChange failed on Travis |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-17135](https://issues.apache.org/jira/browse/FLINK-17135) | PythonCalcSplitRuleTest.testPandasFunctionMixedWithGeneralPythonFunction failed |  Major | API / Python, Tests | Dian Fu | Dian Fu |
| [FLINK-17264](https://issues.apache.org/jira/browse/FLINK-17264) | taskmanager.sh could not work on Mac |  Blocker | Deployment / Scripts | Yang Wang | Yang Wang |
| [FLINK-17266](https://issues.apache.org/jira/browse/FLINK-17266) | WorkerResourceSpec is not serializable |  Blocker | Deployment / Mesos | Gary Yao | Till Rohrmann |
| [FLINK-16412](https://issues.apache.org/jira/browse/FLINK-16412) | Disallow embedded metastore in HiveCatalog production code |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-16662](https://issues.apache.org/jira/browse/FLINK-16662) | Blink Planner failed to generate JobGraph for POJO DataStream converting to Table (Cannot determine simple type name) |  Blocker | Client / Job Submission, Table SQL / Planner | chenxyz | LionelZ |
| [FLINK-17323](https://issues.apache.org/jira/browse/FLINK-17323) | ChannelStateReader rejects requests about unkown channels (Unaligned checkpoints) |  Major | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17138](https://issues.apache.org/jira/browse/FLINK-17138) | LocalExecutorITCase.testParameterizedTypes failed on travis |  Major | Table SQL / Planner | Piotr Nowojski | Rui Li |
| [FLINK-17188](https://issues.apache.org/jira/browse/FLINK-17188) | Failed to download conda when running python tests |  Blocker | API / Python, Build System / Azure Pipelines | Dawid Wysakowicz | Huang Xingbo |
| [FLINK-17344](https://issues.apache.org/jira/browse/FLINK-17344) | RecordWriterTest.testIdleTime possibly deadlocks on Travis |  Major | Runtime / Network | Andrey Zagrebin | Wenlong Lyu |
| [FLINK-17308](https://issues.apache.org/jira/browse/FLINK-17308) | ExecutionGraphCache cachedExecutionGraphs not cleanup cause OOM Bug |  Critical | Runtime / REST | yujunyong | Till Rohrmann |
| [FLINK-17175](https://issues.apache.org/jira/browse/FLINK-17175) | StringUtils.arrayToString() should consider Object[] lastly |  Major | API / Core | Bowen Li | Bowen Li |
| [FLINK-17338](https://issues.apache.org/jira/browse/FLINK-17338) | LocalExecutorITCase.testBatchQueryCancel test timeout |  Critical | Table SQL / Client, Table SQL / Legacy Planner, Table SQL / Planner | Robert Metzger | Aljoscha Krettek |
| [FLINK-17268](https://issues.apache.org/jira/browse/FLINK-17268) | SourceReaderTestBase.testAddSplitToExistingFetcher deadlocks on Travis |  Critical | Connectors / Common | Till Rohrmann | Jiangjie Qin |
| [FLINK-17301](https://issues.apache.org/jira/browse/FLINK-17301) | TaskManagerRunnerStartupTest.testStartupWhenNetworkStackFailsToInitialize fails on OSX |  Blocker | Runtime / Coordination, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-17359](https://issues.apache.org/jira/browse/FLINK-17359) | Entropy key is not resolved if flink-s3-fs-hadoop is added as a plugin |  Major | FileSystems | Prem Santosh | Prem Santosh |
| [FLINK-15669](https://issues.apache.org/jira/browse/FLINK-15669) | SQL client can't cancel flink job |  Critical | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-17313](https://issues.apache.org/jira/browse/FLINK-17313) | Validation error when insert decimal/varchar with precision into sink using TypeInformation of row |  Major | Table SQL / Planner | Terry Wang | Terry Wang |
| [FLINK-17410](https://issues.apache.org/jira/browse/FLINK-17410) | BlockingPartitionBenchmark compilation failed due to changed StreamGraph interface |  Major | Benchmarks | Zhu Zhu | Zhu Zhu |
| [FLINK-16959](https://issues.apache.org/jira/browse/FLINK-16959) | 'Walkthrough Table Java nightly end-to-end test' [FAIL] Test script contains errors |  Critical | Build System / Azure Pipelines, Table SQL / API, Table SQL / Planner, Tests | Piotr Nowojski | Robert Metzger |
| [FLINK-17390](https://issues.apache.org/jira/browse/FLINK-17390) | Container resource cannot be mapped on Hadoop 2.10+ |  Blocker | Deployment / YARN | Xintong Song | Xintong Song |
| [FLINK-17440](https://issues.apache.org/jira/browse/FLINK-17440) | Potential Buffer leak in output unspilling for unaligned checkpoints |  Critical | Runtime / Network | Piotr Nowojski | Zhijiang |
| [FLINK-17471](https://issues.apache.org/jira/browse/FLINK-17471) | Move LICENSE and NOTICE files to root directory of python distribution |  Blocker | API / Python | Yu Li | Wei Zhong |
| [FLINK-17436](https://issues.apache.org/jira/browse/FLINK-17436) | When submitting Python job via "flink run" a IllegalAccessError will be raised due to the package's private access control |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-16901](https://issues.apache.org/jira/browse/FLINK-16901) | Flink Kinesis connector NOTICE should have contents of AWS KPL's THIRD\_PARTY\_NOTICES file manually merged in |  Blocker | Connectors / Kinesis | Tzu-Li (Gordon) Tai | Yu Li |
| [FLINK-17483](https://issues.apache.org/jira/browse/FLINK-17483) | Update flink-sql-connector-elasticsearch7 NOTICE file to correctly reflect bundled dependencies |  Blocker | Connectors / ElasticSearch | Yu Li | Yu Li |
| [FLINK-17489](https://issues.apache.org/jira/browse/FLINK-17489) | Support any kind of array in StringUtils.arrayAwareToString() |  Major | API / Core | Timo Walther | Timo Walther |
| [FLINK-17332](https://issues.apache.org/jira/browse/FLINK-17332) | Fix restart policy not equals to Never for native task manager pods |  Minor | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17496](https://issues.apache.org/jira/browse/FLINK-17496) | Performance regression with amazon-kinesis-producer 0.13.1 in Flink 1.10.x |  Major | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-17514](https://issues.apache.org/jira/browse/FLINK-17514) | TaskCancelerWatchdog does not kill TaskManager |  Blocker | Runtime / Task | Aljoscha Krettek | Till Rohrmann |
| [FLINK-17501](https://issues.apache.org/jira/browse/FLINK-17501) | Improve logging in AbstractServerHandler#channelRead(ChannelHandlerContext, Object) |  Major | Runtime / Queryable State | Gary Yao | Gary Yao |
| [FLINK-17403](https://issues.apache.org/jira/browse/FLINK-17403) | Fix invalid classpath in BashJavaUtilsITCase |  Major | Tests | Paul Lin | Paul Lin |
| [FLINK-17385](https://issues.apache.org/jira/browse/FLINK-17385) | Fix precision problem when converting JDBC numberic into Flink decimal type |  Major | Connectors / JDBC, Table SQL / Ecosystem | Jark Wu | Flavio Pompermaier |
| [FLINK-17420](https://issues.apache.org/jira/browse/FLINK-17420) | Cannot alias Tuple and Row fields when converting DataStream to Table |  Major | Table SQL / API | Gyula Fora | Leonard Xu |
| [FLINK-17552](https://issues.apache.org/jira/browse/FLINK-17552) |  UnionInputGate shouldn't be caching InputChannels |  Major | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-16638](https://issues.apache.org/jira/browse/FLINK-16638) | Flink checkStateMappingCompleteness doesn't include UserDefinedOperatorIDs |  Critical | Runtime / Checkpointing | Bashar Abdul Jawad | Eduardo Winpenny Tejedor |
| [FLINK-17555](https://issues.apache.org/jira/browse/FLINK-17555) | docstring of pyflink.table.descriptors.FileSystem:1:duplicate object description of pyflink.table.descriptors.FileSystem |  Major | API / Python | Piotr Nowojski | Shuiqiang Chen |
| [FLINK-17092](https://issues.apache.org/jira/browse/FLINK-17092) | Pyflink test BlinkStreamDependencyTests is instable |  Major | API / Python, Tests | Zhijiang | Shuiqiang Chen |
| [FLINK-17570](https://issues.apache.org/jira/browse/FLINK-17570) | BatchTableEnvironment#fromValues(Object... values) throws StackOverflowError |  Major | Table SQL / API | Wei Zhong | Dawid Wysakowicz |
| [FLINK-17568](https://issues.apache.org/jira/browse/FLINK-17568) | Task may consume data after checkpoint barrier before performing checkpoint for unaligned checkpoint |  Major | Runtime / Checkpointing | Yingjie Cao | Yingjie Cao |
| [FLINK-17585](https://issues.apache.org/jira/browse/FLINK-17585) | "PythonProgramOptions" changes the entry point class when user submit a Java sql job which contains Python UDF |  Major | API / Python | Wei Zhong | Shuiqiang Chen |
| [FLINK-17586](https://issues.apache.org/jira/browse/FLINK-17586) | Due to the new behavior of the flink-table module the Python dependency management command line options does not work |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-17564](https://issues.apache.org/jira/browse/FLINK-17564) | Inflight data of incoming channel may be disordered for unaligned checkpoint |  Major | Runtime / Checkpointing | Yingjie Cao | Yingjie Cao |
| [FLINK-17601](https://issues.apache.org/jira/browse/FLINK-17601) | TableEnvironmentITCase.testStatementSet fails on travis |  Blocker | Table SQL / Planner | Dawid Wysakowicz | godfrey he |
| [FLINK-16346](https://issues.apache.org/jira/browse/FLINK-16346) | BlobsCleanupITCase.testBlobServerCleanupCancelledJob fails on Travis |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-17454](https://issues.apache.org/jira/browse/FLINK-17454) | test\_configuration.py ConfigurationTests::test\_add\_all failed on travis |  Major | API / Python | Piotr Nowojski | Shuiqiang Chen |
| [FLINK-16770](https://issues.apache.org/jira/browse/FLINK-16770) | Resuming Externalized Checkpoint (rocks, incremental, scale up) end-to-end test fails with no such file |  Blocker | Runtime / Checkpointing, Tests | Zhijiang | Yun Tang |
| [FLINK-17580](https://issues.apache.org/jira/browse/FLINK-17580) | NPE in unaligned checkpoint for EndOfPartition events |  Major | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-16921](https://issues.apache.org/jira/browse/FLINK-16921) | "kubernetes session test" is unstable |  Critical | Deployment / Kubernetes, Tests | Robert Metzger | Yang Wang |
| [FLINK-17609](https://issues.apache.org/jira/browse/FLINK-17609) | Execute the script directly when user specified the entry script with "-py" rather than run as module. |  Major | API / Python, Client / Job Submission | Shuiqiang Chen | Shuiqiang Chen |
| [FLINK-17497](https://issues.apache.org/jira/browse/FLINK-17497) | Quickstarts Java nightly end-to-end test fails with "class file has wrong version 55.0, should be 52.0" |  Major | Build System / Azure Pipelines, Tests | Robert Metzger | Robert Metzger |
| [FLINK-17309](https://issues.apache.org/jira/browse/FLINK-17309) | TPC-DS fail to run data generator |  Critical | Table SQL / Planner | Dawid Wysakowicz | Leonard Xu |
| [FLINK-15841](https://issues.apache.org/jira/browse/FLINK-15841) | TimeWindow.intersects return true for consecutive windows |  Trivial | API / DataStream | Jörn Kottmann | Jörn Kottmann |
| [FLINK-17592](https://issues.apache.org/jira/browse/FLINK-17592) | flink-table-planner doesn't compile on Scala 2.12 |  Blocker | Table SQL / Planner | Robert Metzger | Aljoscha Krettek |
| [FLINK-17562](https://issues.apache.org/jira/browse/FLINK-17562) | POST /jars/:jarid/plan is not working |  Minor | Documentation, Runtime / Web Frontend | AT-Fieldless | Nicholas Jiang |
| [FLINK-15154](https://issues.apache.org/jira/browse/FLINK-15154) | Change Flink binding addresses in local mode |  Minor | Runtime / Coordination | Andrea Cardaci | Xintong Song |
| [FLINK-17336](https://issues.apache.org/jira/browse/FLINK-17336) | MVN exited with EXIT CODE: 143. in "libraries" test job |  Critical | Build System / Azure Pipelines, Tests | Robert Metzger | Robert Metzger |
| [FLINK-17640](https://issues.apache.org/jira/browse/FLINK-17640) | RecoveredInputChannelTest.testConcurrentReadStateAndProcessAndRelease() failed |  Critical | Runtime / Network | Arvid Heise | Zhijiang |
| [FLINK-17663](https://issues.apache.org/jira/browse/FLINK-17663) | CheckpointBarrierUnaligner.getFlattenedChannelIndex can throw ArrayIndexOutOfBoundsException |  Critical | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-17679](https://issues.apache.org/jira/browse/FLINK-17679) | Fix the bug of encoding bytes in cython coder |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-17578](https://issues.apache.org/jira/browse/FLINK-17578) | Union of 2 SideOutputs behaviour incorrect |  Major | API / DataStream | Tom Wells | Danish Amjad |
| [FLINK-17596](https://issues.apache.org/jira/browse/FLINK-17596) | Unstable PyFlinkBlinkStreamUserDefinedFunctionTests testMethod#test\_udf\_in\_join\_condition\_2 |  Major | API / Python | Yun Tang | Wei Zhong |
| [FLINK-17697](https://issues.apache.org/jira/browse/FLINK-17697) | JDK11: JdbcFullTest.testEnrichedClassCastException: expected:\<[java.lang.String cannot be cast to java.lang.Double], field index: 3, fi...\> but was:\<[class java.lang.String |  Critical | Connectors / JDBC | Robert Metzger | Leonard Xu |
| [FLINK-17701](https://issues.apache.org/jira/browse/FLINK-17701) | Exclude jdk:tools dependency from all Hadoop dependencies for Java 9+ compatibility |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-17722](https://issues.apache.org/jira/browse/FLINK-17722) | "Failed to find the file" in "build\_wheels" stage |  Major | API / Python, Build System / Azure Pipelines | Robert Metzger | Huang Xingbo |
| [FLINK-17652](https://issues.apache.org/jira/browse/FLINK-17652) | Legacy JM heap options should fallback to new JVM\_HEAP\_MEMORY in standalone |  Major | Runtime / Configuration, Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-17591](https://issues.apache.org/jira/browse/FLINK-17591) | TableEnvironmentITCase.testExecuteSqlAndToDataStream failed |  Blocker | Table SQL / Legacy Planner, Tests | Jark Wu | godfrey he |
| [FLINK-17643](https://issues.apache.org/jira/browse/FLINK-17643) | LaunchCoordinatorTest fails |  Major | Deployment / Mesos | Arvid Heise | Till Rohrmann |
| [FLINK-17724](https://issues.apache.org/jira/browse/FLINK-17724) | PyFlink end-to-end test fails with Cannot run program "venv.zip/.conda/bin/python": error=2, No such file or directory |  Blocker | API / Python, Tests | Robert Metzger | Wei Zhong |
| [FLINK-17727](https://issues.apache.org/jira/browse/FLINK-17727) | Can't subsume checkpoint with no channel state in UC mode |  Critical | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17350](https://issues.apache.org/jira/browse/FLINK-17350) | StreamTask should always fail immediately on failures in synchronous part of a checkpoint |  Critical | Runtime / Checkpointing, Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-17739](https://issues.apache.org/jira/browse/FLINK-17739) | ResultPartitionTest.testInitializeMoreStateThanBuffer is unstable |  Major | Runtime / Network | Piotr Nowojski | Zhijiang |
| [FLINK-9528](https://issues.apache.org/jira/browse/FLINK-9528) | Incorrect results: Filter does not treat Upsert messages correctly. |  Critical | Table SQL / Planner | Fabian Hueske |  |
| [FLINK-17754](https://issues.apache.org/jira/browse/FLINK-17754) | Walkthrough Table Java nightly end-to-end test failed to compile |  Blocker | Table SQL / API, Table SQL / Planner, Tests | Piotr Nowojski | Kurt Young |
| [FLINK-17694](https://issues.apache.org/jira/browse/FLINK-17694) | Wrong min-length check in SimpleVersionedSerialization |  Minor | API / Core | Stephan Ewen | Stephan Ewen |
| [FLINK-17674](https://issues.apache.org/jira/browse/FLINK-17674) | OperatorCoordinator state in checkpoints should always be a ByteStreamStateHandle |  Minor | Runtime / Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-17670](https://issues.apache.org/jira/browse/FLINK-17670) | Savepoint handling of "non-restored" state should also take OperatorCoordinator state into account |  Major | Runtime / Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-17772](https://issues.apache.org/jira/browse/FLINK-17772) | test\_pandas\_udf.py: NoClassDefFoundError RowDataArrowPythonScalarFunctionRunner |  Major | API / Python, Tests | Robert Metzger | Dian Fu |
| [FLINK-17649](https://issues.apache.org/jira/browse/FLINK-17649) | Generated hash aggregate code may produce NPE when there exists an aggregate call with Filter. |  Major | Table SQL / Planner | Shuo Cheng | Shuo Cheng |
| [FLINK-17386](https://issues.apache.org/jira/browse/FLINK-17386) | Exception in HadoopSecurityContextFactory.createContext while no shaded-hadoop-lib provided. |  Major | Deployment / YARN | Wenlong Lyu | Rong Rong |
| [FLINK-17787](https://issues.apache.org/jira/browse/FLINK-17787) | BucketStateSerializerTest fails on output mismatch |  Blocker | API / DataStream, Tests | Robert Metzger | Aljoscha Krettek |
| [FLINK-17692](https://issues.apache.org/jira/browse/FLINK-17692) | "flink-end-to-end-tests/test-scripts/hadoop/yarn.classpath" present after building Flink |  Major | Deployment / YARN | Robert Metzger | Robert Metzger |
| [FLINK-17703](https://issues.apache.org/jira/browse/FLINK-17703) | Default execution command fails due 'benchmark' profile being inactive |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-17681](https://issues.apache.org/jira/browse/FLINK-17681) | TableEnvironment fromValues not work with map type and SQL |  Major | Table SQL / API | Jingsong Lee | Dawid Wysakowicz |
| [FLINK-17792](https://issues.apache.org/jira/browse/FLINK-17792) | Failing to invoking jstack on TM processes should not fail Jepsen Tests |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-17777](https://issues.apache.org/jira/browse/FLINK-17777) | Make Mesos Jepsen Tests pass with Hadoop-free Flink |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-17687](https://issues.apache.org/jira/browse/FLINK-17687) | Collect TaskManager logs in Mesos Jepsen Tests |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-17799](https://issues.apache.org/jira/browse/FLINK-17799) | Performance regression in all network benchmarks |  Blocker | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-17786](https://issues.apache.org/jira/browse/FLINK-17786) | Cannot switch dialect in SQL CLI |  Major | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-17790](https://issues.apache.org/jira/browse/FLINK-17790) | flink-connector-kafka-base does not compile on Java11 |  Blocker | Connectors / Kafka, Table SQL / Ecosystem | Robert Metzger | Till Rohrmann |
| [FLINK-15758](https://issues.apache.org/jira/browse/FLINK-15758) | Investigate potential out-of-memory problems due to managed unsafe memory allocation |  Critical | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-17353](https://issues.apache.org/jira/browse/FLINK-17353) | Broken links in Flink docs master |  Major | chinese-translation, Documentation | Seth Wiesman | Yichao Yang |
| [FLINK-17626](https://issues.apache.org/jira/browse/FLINK-17626) | Fs connector should use FLIP-122 format options style |  Critical | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-16383](https://issues.apache.org/jira/browse/FLINK-16383) | KafkaProducerExactlyOnceITCase.testExactlyOnceRegularSink fails with "The producer has already been closed" |  Blocker | Runtime / Task, Tests | Robert Metzger | Arvid Heise |
| [FLINK-17634](https://issues.apache.org/jira/browse/FLINK-17634) | Reject multiple handler registrations under the same URL |  Major | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17737](https://issues.apache.org/jira/browse/FLINK-17737) | KeyedStateCheckpointingITCase fails in UnalignedCheckpoint mode |  Critical | Runtime / Checkpointing, Runtime / Task, Tests | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17809](https://issues.apache.org/jira/browse/FLINK-17809) | BashJavaUtil script logic does not work for paths with spaces |  Major | Deployment / Scripts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17619](https://issues.apache.org/jira/browse/FLINK-17619) | Only set offset commit if group id is configured for Kafka Table source |  Major | Connectors / Kafka, Table SQL / API | Gyula Fora | Gyula Fora |
| [FLINK-17763](https://issues.apache.org/jira/browse/FLINK-17763) | No log files when starting scala-shell |  Minor | Scala Shell | Jeff Zhang | Chesnay Schepler |
| [FLINK-12030](https://issues.apache.org/jira/browse/FLINK-12030) | KafkaITCase.testMultipleSourcesOnePartition is unstable: This server does not host this topic-partition |  Critical | Connectors / Kafka, Tests | Aljoscha Krettek | Jiangjie Qin |
| [FLINK-15399](https://issues.apache.org/jira/browse/FLINK-15399) | Join with a LookupableTableSource：java.lang.RuntimeException: while converting  XXXX Caused by: java.lang.AssertionError: Field ordinal 26 is invalid for  type |  Major | Table SQL / API | Rockey Cui |  |
| [FLINK-17725](https://issues.apache.org/jira/browse/FLINK-17725) | FileUploadHandlerTest.testUploadCleanupOnFailure fails with "SocketTimeout timeout" |  Critical | Runtime / Coordination | Robert Metzger | Till Rohrmann |
| [FLINK-16922](https://issues.apache.org/jira/browse/FLINK-16922) | DecimalData.toUnscaledBytes should be consistent with BigDecimla.unscaledValue.toByteArray |  Critical | Table SQL / Runtime | Jingsong Lee | Jark Wu |
| [FLINK-14894](https://issues.apache.org/jira/browse/FLINK-14894) | HybridOffHeapUnsafeMemorySegmentTest#testByteBufferWrap failed on Travis |  Critical | Runtime / Network, Tests | Gary Yao | Andrey Zagrebin |
| [FLINK-17846](https://issues.apache.org/jira/browse/FLINK-17846) | flink-walkthrough-table-scala failed on azure |  Blocker | Table SQL / API, Tests | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17730](https://issues.apache.org/jira/browse/FLINK-17730) | HadoopS3RecoverableWriterITCase.testRecoverAfterMultiplePersistsStateWithMultiPart times out |  Major | Build System / Azure Pipelines, FileSystems, Tests | Robert Metzger | Robert Metzger |
| [FLINK-17645](https://issues.apache.org/jira/browse/FLINK-17645) | REAPER\_THREAD.start() in SafetyNetCloseableRegistry failed, causing the repeated failover. |  Major | Runtime / Task | Zakelly Lan | Lijie Wang |
| [FLINK-17817](https://issues.apache.org/jira/browse/FLINK-17817) | CollectResultFetcher fails with EOFException in AggregateReduceGroupingITCase |  Blocker | API / DataStream, Tests | Robert Metzger | Caizhi Weng |
| [FLINK-14369](https://issues.apache.org/jira/browse/FLINK-14369) | KafkaProducerAtLeastOnceITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceCustomOperator fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann | Shuiqiang Chen |
| [FLINK-17850](https://issues.apache.org/jira/browse/FLINK-17850) | PostgresCatalogITCase . testGroupByInsert() fails on CI |  Blocker | Table SQL / Ecosystem | Stephan Ewen | Jark Wu |
| [FLINK-17794](https://issues.apache.org/jira/browse/FLINK-17794) | Tear down installed software in reverse order in Jepsen Tests |  Major | Tests | Gary Yao | Gary Yao |
| [FLINK-17805](https://issues.apache.org/jira/browse/FLINK-17805) | InputProcessorUtil doesn't handle indexes for multiple inputs operators correctly |  Critical | Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-17771](https://issues.apache.org/jira/browse/FLINK-17771) | "PyFlink end-to-end test" fails with "The output result: [] is not as expected: [2, 3, 4]!" on Java11 |  Major | API / Python, Tests | Robert Metzger | Wei Zhong |
| [FLINK-17823](https://issues.apache.org/jira/browse/FLINK-17823) | Resolve the race condition while releasing RemoteInputChannel |  Blocker | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-16911](https://issues.apache.org/jira/browse/FLINK-16911) | PrestoS3FileSystemITCase#testSimpleFileWriteAndRead fails on checkPathExistence |  Critical | FileSystems, Tests | Piotr Nowojski | Aljoscha Krettek |
| [FLINK-17866](https://issues.apache.org/jira/browse/FLINK-17866) | InvalidPathException was thrown when running the test cases of PyFlink on Windows |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-17801](https://issues.apache.org/jira/browse/FLINK-17801) | TaskExecutorTest.testHeartbeatTimeoutWithResourceManager timeout |  Critical | Runtime / Coordination, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-17905](https://issues.apache.org/jira/browse/FLINK-17905) | Docs for JDBC connector show licence and markup |  Major | Documentation | Roman Khachatryan | Roman Khachatryan |
| [FLINK-16197](https://issues.apache.org/jira/browse/FLINK-16197) | Failed to query partitioned table when partition folder is removed |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-17878](https://issues.apache.org/jira/browse/FLINK-17878) | Transient watermark attribute should be initial at runtime in streaming file operators |  Major | Connectors / FileSystem | xiaogang zhou | xiaogang zhou |
| [FLINK-17651](https://issues.apache.org/jira/browse/FLINK-17651) | DecomposeGroupingSetsRule generates wrong plan when there exist distinct agg and simple agg with same filter |  Major | Table SQL / Planner | Shuo Cheng | Shuo Cheng |
| [FLINK-17894](https://issues.apache.org/jira/browse/FLINK-17894) | RowGenerator in datagen connector should be serializable |  Blocker | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-17822](https://issues.apache.org/jira/browse/FLINK-17822) | Nightly Flink CLI end-to-end test failed with "JavaGcCleanerWrapper$PendingCleanersRunner cannot access class jdk.internal.misc.SharedSecrets" in Java 11 |  Blocker | Runtime / Task, Tests | Dian Fu | Andrey Zagrebin |
| [FLINK-17721](https://issues.apache.org/jira/browse/FLINK-17721) | AbstractHadoopFileSystemITTest .cleanupDirectoryWithRetry fails with AssertionError |  Critical | FileSystems, Tests | Robert Metzger | Xintong Song |
| [FLINK-17870](https://issues.apache.org/jira/browse/FLINK-17870) | dependent jars are missing to be shipped to cluster in scala shell |  Major | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-17189](https://issues.apache.org/jira/browse/FLINK-17189) | Table with processing time attribute can not be read from Hive catalog |  Blocker | Table SQL / Ecosystem, Table SQL / Planner | Timo Walther | Jingsong Lee |
| [FLINK-17889](https://issues.apache.org/jira/browse/FLINK-17889) | flink-connector-hive jar contains wrong class in its SPI config file org.apache.flink.table.factories.TableFactory |  Blocker | Connectors / Hive | Jeff Zhang | Jingsong Lee |
| [FLINK-17896](https://issues.apache.org/jira/browse/FLINK-17896) | HiveCatalog can't work with new table factory because of is\_generic |  Blocker | Connectors / Hive, Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-17917](https://issues.apache.org/jira/browse/FLINK-17917) | ResourceInformationReflector#getExternalResources should ignore the external resource with a value of 0 |  Blocker | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17929](https://issues.apache.org/jira/browse/FLINK-17929) | Fix invalid liquid expressions |  Major | Documentation | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17802](https://issues.apache.org/jira/browse/FLINK-17802) | Set offset commit only if group id is configured for new Kafka Table source |  Major | Connectors / Kafka | Leonard Xu | Leonard Xu |
| [FLINK-17756](https://issues.apache.org/jira/browse/FLINK-17756) | Drop table/view shouldn't take effect on each other |  Major | Table SQL / API | Kurt Young | Danny Chen |
| [FLINK-17934](https://issues.apache.org/jira/browse/FLINK-17934) | StreamingFileWriter should set chainingStrategy |  Blocker | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-17955](https://issues.apache.org/jira/browse/FLINK-17955) | BucketLifeCycleListener should just in Buckets |  Major | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-17750](https://issues.apache.org/jira/browse/FLINK-17750) | YARNHighAvailabilityITCase.testKillYarnSessionClusterEntrypoint failed on azure |  Critical | Runtime / Coordination | Roman Khachatryan | Till Rohrmann |
| [FLINK-17938](https://issues.apache.org/jira/browse/FLINK-17938) | Cannot run mvn clean verify flink-yarn-tests |  Critical | Deployment / YARN, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-17751](https://issues.apache.org/jira/browse/FLINK-17751) | proctime defined in ddl can't work with over window in Table api |  Blocker | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-17925](https://issues.apache.org/jira/browse/FLINK-17925) | Fix Filesystem options to default values and types |  Blocker | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-17351](https://issues.apache.org/jira/browse/FLINK-17351) | CheckpointCoordinator and CheckpointFailureManager ignores checkpoint timeouts |  Critical | Runtime / Checkpointing | Piotr Nowojski | Yuan Mei |
| [FLINK-17820](https://issues.apache.org/jira/browse/FLINK-17820) | Memory threshold is ignored for channel state |  Critical | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17950](https://issues.apache.org/jira/browse/FLINK-17950) | Broken Scala env.countinuousSource method |  Blocker | API / Scala | Stephan Ewen | Stephan Ewen |
| [FLINK-16021](https://issues.apache.org/jira/browse/FLINK-16021) | DescriptorProperties.putTableSchema does not include constraints |  Critical | Table SQL / API, Table SQL / Ecosystem | Timo Walther | Danny Chen |
| [FLINK-17942](https://issues.apache.org/jira/browse/FLINK-17942) | Count distinct could not clean state in WindowOperator |  Major | . | Benchao Li | Benchao Li |
| [FLINK-17657](https://issues.apache.org/jira/browse/FLINK-17657) | Fix reading BIGINT UNSIGNED type field not work in JDBC |  Major | Connectors / JDBC | lun zhang | Leonard Xu |
| [FLINK-17928](https://issues.apache.org/jira/browse/FLINK-17928) | Incorrect state size reported when using unaligned checkpoints |  Critical | Runtime / Checkpointing | Piotr Nowojski | Roman Khachatryan |
| [FLINK-17861](https://issues.apache.org/jira/browse/FLINK-17861) | Channel state handles, when inlined, duplicate underlying data |  Critical | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17958](https://issues.apache.org/jira/browse/FLINK-17958) | Kubernetes session constantly allocates taskmanagers after cancel a job |  Blocker | Runtime / Coordination | Yang Wang | Xintong Song |
| [FLINK-17988](https://issues.apache.org/jira/browse/FLINK-17988) | Checkpointing slows down after reaching state.checkpoints.num-retained |  Critical | Runtime / Checkpointing | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17986](https://issues.apache.org/jira/browse/FLINK-17986) | Erroneous check in FsCheckpointStateOutputStream#write(int) |  Blocker | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17558](https://issues.apache.org/jira/browse/FLINK-17558) | Partitions are released in TaskExecutor Main Thread |  Critical | Runtime / Coordination | Gary Yao | Chesnay Schepler |
| [FLINK-17744](https://issues.apache.org/jira/browse/FLINK-17744) | StreamContextEnvironment#execute cannot be call JobListener#onJobExecuted |  Major | Client / Job Submission | Echo Lee | Echo Lee |
| [FLINK-15771](https://issues.apache.org/jira/browse/FLINK-15771) | SQLClientKafkaITCase.testKafka failed on Travis |  Critical | Connectors / Kafka, Table SQL / Client, Tests | Till Rohrmann | Timo Walther |
| [FLINK-17992](https://issues.apache.org/jira/browse/FLINK-17992) | Exception from RemoteInputChannel#onBuffer should not fail the whole NetworkClientHandler |  Blocker | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-17463](https://issues.apache.org/jira/browse/FLINK-17463) | BlobCacheCleanupTest.testPermanentBlobCleanup:133-\>verifyJobCleanup:432 » FileAlreadyExists |  Critical | Runtime / Coordination, Tests | Robert Metzger | Gary Yao |
| [FLINK-17946](https://issues.apache.org/jira/browse/FLINK-17946) | The config option "pipeline.jars" doesn't work if the job was executed via TableEnvironment.execute\_sql and StatementSet.execute |  Major | API / Python | Dian Fu | Wei Zhong |
| [FLINK-17990](https://issues.apache.org/jira/browse/FLINK-17990) | ArrowSourceFunctionTestBase.testParallelProcessing is instable |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-16282](https://issues.apache.org/jira/browse/FLINK-16282) | Wrong exception using DESCRIBE SQL command |  Major | Table SQL / Planner | Nico Kruber | Leonard Xu |
| [FLINK-17842](https://issues.apache.org/jira/browse/FLINK-17842) | Performance regression on 19.05.2020 |  Blocker | Benchmarks | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18035](https://issues.apache.org/jira/browse/FLINK-18035) | Executors#newCachedThreadPool could not work as expected |  Blocker | Runtime / Coordination | Yang Wang | Chesnay Schepler |
| [FLINK-17967](https://issues.apache.org/jira/browse/FLINK-17967) | Could not find document \*\*\* in docs |  Major | Documentation | Aven Wu | Aven Wu |
| [FLINK-17230](https://issues.apache.org/jira/browse/FLINK-17230) | Fix incorrect returned address of Endpoint for the ClusterIP Service |  Blocker | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17994](https://issues.apache.org/jira/browse/FLINK-17994) | Fix the race condition between CheckpointBarrierUnaligner#processBarrier and #notifyBarrierReceived |  Blocker | Runtime / Checkpointing | Zhijiang | Zhijiang |
| [FLINK-17968](https://issues.apache.org/jira/browse/FLINK-17968) | Hadoop Configuration is not properly serialized in HBaseRowInputFormat |  Major | Connectors / HBase, Table SQL / Ecosystem | Robert Metzger | tartarus |
| [FLINK-18036](https://issues.apache.org/jira/browse/FLINK-18036) | Chinese documentation build is broken |  Blocker | chinese-translation, Documentation | Aljoscha Krettek | Aven Wu |
| [FLINK-17015](https://issues.apache.org/jira/browse/FLINK-17015) | Fix NPE from NullAwareMapIterator |  Major | Table SQL / Planner | Jark Wu |  |
| [FLINK-17996](https://issues.apache.org/jira/browse/FLINK-17996) | NPE in CatalogTableStatisticsConverter.convertToColumnStats method |  Blocker | Table SQL / Planner | godfrey he | Nicholas Jiang |
| [FLINK-18008](https://issues.apache.org/jira/browse/FLINK-18008) | HistoryServer does not log environment information on startup |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18012](https://issues.apache.org/jira/browse/FLINK-18012) | Deactivate slot timeout if TaskSlotTable.tryMarkSlotActive is called |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-15363](https://issues.apache.org/jira/browse/FLINK-15363) | Hbase connector do not support datatypes with precision like TIMESTAMP(9) and DECIMAL(10,4) |  Major | Connectors / HBase, Table SQL / Ecosystem | Leonard Xu | Leonard Xu |
| [FLINK-16057](https://issues.apache.org/jira/browse/FLINK-16057) | Performance regression in ContinuousFileReaderOperator |  Blocker | API / DataStream, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17923](https://issues.apache.org/jira/browse/FLINK-17923) | It will throw MemoryAllocationException if rocksdb statebackend and Python UDF are used in the same slot |  Blocker | API / Python, Runtime / State Backends | Dian Fu | Dian Fu |
| [FLINK-18052](https://issues.apache.org/jira/browse/FLINK-18052) | Elasticsearch7DynamicSinkITCase.testWritingDocumentsNoPrimaryKey fails with NPE |  Major | Connectors / ElasticSearch | Robert Metzger |  |
| [FLINK-17895](https://issues.apache.org/jira/browse/FLINK-17895) | Default value of rows-per-second in datagen can be limited |  Minor | Table SQL / API | Jingsong Lee | Fangliang Liu |
| [FLINK-17959](https://issues.apache.org/jira/browse/FLINK-17959) | Exception: "CANCELLED: call already cancelled" is thrown when run python udf |  Major | API / Python | Hequn Cheng | Dian Fu |
| [FLINK-18006](https://issues.apache.org/jira/browse/FLINK-18006) | It will throw Invalid lambda deserialization Exception when writing to elastic search with new format |  Blocker | Connectors / ElasticSearch, Table SQL / Client | Shengkai Fang | Dawid Wysakowicz |
| [FLINK-16451](https://issues.apache.org/jira/browse/FLINK-16451) | Fix IndexOutOfBoundsException for DISTINCT AGG with constants |  Critical | Table SQL / Planner | jinfeng | Jark Wu |
| [FLINK-17466](https://issues.apache.org/jira/browse/FLINK-17466) | toRetractStream doesn't work correctly with Pojo conversion class |  Critical | Table SQL / Planner | Gyula Fora | Jark Wu |
| [FLINK-18087](https://issues.apache.org/jira/browse/FLINK-18087) | Uploading user artifact for Yarn job cluster could not work |  Blocker | Deployment / YARN | Yang Wang | Yang Wang |
| [FLINK-18055](https://issues.apache.org/jira/browse/FLINK-18055) | Catalog does not exist in SQL Client |  Blocker | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-17918](https://issues.apache.org/jira/browse/FLINK-17918) | LIMIT queries are failed when adding sleeping time of async checkpoint |  Blocker | Runtime / Checkpointing, Table SQL / Runtime | Piotr Nowojski | Jark Wu |
| [FLINK-17935](https://issues.apache.org/jira/browse/FLINK-17935) | Logs could not show up when deploying Flink on Yarn via "--executor" |  Blocker | Deployment / YARN | Yang Wang | Kostas Kloudas |
| [FLINK-17847](https://issues.apache.org/jira/browse/FLINK-17847) | ArrayIndexOutOfBoundsException happens when codegen StreamExec operator |  Major | Table SQL / Planner | Leonard Xu | Leonard Xu |
| [FLINK-17404](https://issues.apache.org/jira/browse/FLINK-17404) | Running HA per-job cluster (rocks, non-incremental) gets stuck killing a non-existing pid in Hadoop 3 build profile |  Critical | Runtime / Coordination, Test Infrastructure, Tests | Robert Metzger | Robert Metzger |
| [FLINK-17717](https://issues.apache.org/jira/browse/FLINK-17717) | Throws for DDL create temporary system function with composite table path |  Critical | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-16577](https://issues.apache.org/jira/browse/FLINK-16577) | Exception will be thrown when computing columnInterval relmetadata in some case |  Critical | Table SQL / Planner | Shuo Cheng | godfrey he |
| [FLINK-17416](https://issues.apache.org/jira/browse/FLINK-17416) | Flink-kubernetes doesn't work on java 8 8u252 |  Major | Deployment / Kubernetes | wangxiyuan |  |
| [FLINK-18074](https://issues.apache.org/jira/browse/FLINK-18074) | Confirm checkpoint completed on task side would not fail the task if exception thrown out |  Blocker | Runtime / Checkpointing, Runtime / Task | Yun Tang | Yun Tang |
| [FLINK-18143](https://issues.apache.org/jira/browse/FLINK-18143) | Fix Python meter metric not correct problem |  Major | API / Python | Hequn Cheng | Hequn Cheng |
| [FLINK-18059](https://issues.apache.org/jira/browse/FLINK-18059) | Can not execute create/drop catalog statement in sql client |  Critical | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-18142](https://issues.apache.org/jira/browse/FLINK-18142) | Wrong state names in HiveContinuousMonitoringFunction |  Critical | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-17553](https://issues.apache.org/jira/browse/FLINK-17553) | Constant exists in group window key leads to  error:  Unsupported call: TUMBLE\_END(TIMESTAMP(3) NOT NULL) |  Critical | Table SQL / Planner | Terry Wang | Terry Wang |
| [FLINK-18076](https://issues.apache.org/jira/browse/FLINK-18076) | Sql client uses wrong class loader when parsing queries |  Blocker | Table SQL / Client | Dawid Wysakowicz | Leonard Xu |
| [FLINK-18048](https://issues.apache.org/jira/browse/FLINK-18048) | "--host" option could not take effect for standalone application cluster |  Critical | Deployment / Scripts | Yang Wang | Yang Wang |
| [FLINK-18073](https://issues.apache.org/jira/browse/FLINK-18073) | AvroRowDataSerializationSchema is not always serializable |  Blocker | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Seth Wiesman | Jark Wu |
| [FLINK-18110](https://issues.apache.org/jira/browse/FLINK-18110) | Bucket Listener in StreamingFileSink should notify for buckets detected to be inactive at recovery |  Blocker | Connectors / FileSystem, Connectors / Hive | Yun Gao | Yun Gao |
| [FLINK-18151](https://issues.apache.org/jira/browse/FLINK-18151) | Resolve CWE22 problems in pyflink\_gateway\_server.py |  Critical | API / Python | Hequn Cheng | Shuiqiang Chen |
| [FLINK-18149](https://issues.apache.org/jira/browse/FLINK-18149) | Taskmanager logs could not show up in native K8s deployment |  Blocker | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-18118](https://issues.apache.org/jira/browse/FLINK-18118) | Some SQL Jobs with two input operators are loosing data with unaligned checkpoints |  Blocker | Runtime / Checkpointing, Table SQL / Runtime | Jark Wu | Arvid Heise |
| [FLINK-18046](https://issues.apache.org/jira/browse/FLINK-18046) | Decimal column stats not supported for Hive table |  Critical | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-18178](https://issues.apache.org/jira/browse/FLINK-18178) | flink-training exercises don't build with Eclipse |  Major | Documentation / Training / Exercises | David Anderson | Nico Kruber |
| [FLINK-18075](https://issues.apache.org/jira/browse/FLINK-18075) | Kafka connector does not call open method of (de)serialization schema |  Blocker | Connectors / Kafka, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Seth Wiesman | Dawid Wysakowicz |
| [FLINK-17625](https://issues.apache.org/jira/browse/FLINK-17625) | Fix ArrayIndexOutOfBoundsException in AppendOnlyTopNFunction |  Critical | Table SQL / Planner | Jark Wu | dalongliu |
| [FLINK-17893](https://issues.apache.org/jira/browse/FLINK-17893) | SQL-CLI no exception stack |  Blocker | Table SQL / Client | Jingsong Lee | godfrey he |
| [FLINK-16291](https://issues.apache.org/jira/browse/FLINK-16291) | Count(\*) doesn't work with Hive module |  Critical | Connectors / Hive, Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-16559](https://issues.apache.org/jira/browse/FLINK-16559) | Cannot create Hive avro table in test |  Major | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-18056](https://issues.apache.org/jira/browse/FLINK-18056) | Hive file sink throws exception when the target in-progress file exists. |  Blocker | Connectors / FileSystem, Connectors / Hive | Yun Gao | Yun Gao |
| [FLINK-18130](https://issues.apache.org/jira/browse/FLINK-18130) | File name conflict for different jobs in filesystem/hive sink |  Blocker | Connectors / FileSystem, Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-18050](https://issues.apache.org/jira/browse/FLINK-18050) | Fix the bug of recycling buffer twice once exception in ChannelStateWriteRequestDispatcher#dispatch |  Blocker | Runtime / Checkpointing | Zhijiang | Roman Khachatryan |
| [FLINK-15066](https://issues.apache.org/jira/browse/FLINK-15066) | Cannot run multiple \`insert into csvTable values ()\` |  Blocker | Table SQL / Client | Kurt Young | Jingsong Lee |
| [FLINK-18136](https://issues.apache.org/jira/browse/FLINK-18136) | Don't start channel state writing for savepoints (RPC) |  Major | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-18181](https://issues.apache.org/jira/browse/FLINK-18181) | StreamingFileCommitter should not use fs modification time for proc committer |  Critical | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-18152](https://issues.apache.org/jira/browse/FLINK-18152) | Master starts despite IllegalConfigurationException |  Major | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-18063](https://issues.apache.org/jira/browse/FLINK-18063) | Fix the race condition for aborting checkpoint in CheckpointBarrierUnaligner |  Blocker | Runtime / Checkpointing | Zhijiang | Zhijiang |
| [FLINK-17765](https://issues.apache.org/jira/browse/FLINK-17765) | Verbose client error messages |  Critical | Client / Job Submission, Runtime / Coordination, Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-18208](https://issues.apache.org/jira/browse/FLINK-18208) | flink es connector exists 2 Spelling mistakes |  Major | Connectors / ElasticSearch | jackylau |  |
| [FLINK-18045](https://issues.apache.org/jira/browse/FLINK-18045) | Fix Kerberos credentials checking to unblock Flink on secured MapR |  Critical | Deployment / YARN | Bart Krasinski | Bart Krasinski |
| [FLINK-18126](https://issues.apache.org/jira/browse/FLINK-18126) | Correct the exception handling of the Python CompletableFuture |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-18207](https://issues.apache.org/jira/browse/FLINK-18207) | RowGenerator in datagen factory should implement snapshotState |  Critical | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-18176](https://issues.apache.org/jira/browse/FLINK-18176) | Add supplement for file system connector document |  Major | Connectors / FileSystem, Documentation | Shengkai Fang | Shengkai Fang |
| [FLINK-18157](https://issues.apache.org/jira/browse/FLINK-18157) | Jobstore size check compares against offHeapMemory |  Major | Runtime / Coordination | Chesnay Schepler | Nicholas Jiang |
| [FLINK-17753](https://issues.apache.org/jira/browse/FLINK-17753) | watermark defined in ddl does not work in Table api |  Blocker | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-18061](https://issues.apache.org/jira/browse/FLINK-18061) | TableResult#collect should return closeable iterator to avoid resource leak |  Blocker | Table SQL / API | godfrey he | godfrey he |
| [FLINK-18156](https://issues.apache.org/jira/browse/FLINK-18156) | Misleading error message if derived JVM overhead is too small |  Major | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-18154](https://issues.apache.org/jira/browse/FLINK-18154) | Unhelpful error message if heap.size takes up signficant portion of process.size |  Major | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-18057](https://issues.apache.org/jira/browse/FLINK-18057) | SingleInputGateTest.testConcurrentReadStateAndProcessAndClose: expected:\<3\> but was:\<2\> |  Major | Runtime / Network, Tests | Robert Metzger | Yingjie Cao |
| [FLINK-17498](https://issues.apache.org/jira/browse/FLINK-17498) | MapCancelingITCase.testMapCancelling fails with timeout |  Major | Runtime / Coordination, Runtime / Task, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-17944](https://issues.apache.org/jira/browse/FLINK-17944) | Wrong output in sql client's table mode |  Blocker | Table SQL / Client | Jeff Zhang | Jeff Zhang |
| [FLINK-18215](https://issues.apache.org/jira/browse/FLINK-18215) | BashJavaUtils logging message should include log level |  Major | Runtime / Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18189](https://issues.apache.org/jira/browse/FLINK-18189) | Incorrect size check for sum of heap/non-heap memory |  Blocker | Runtime / Coordination | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-18239](https://issues.apache.org/jira/browse/FLINK-18239) | Kubernetes e2e test fails with "Kubernetes 1.18.3 requires conntrack to be installed in root's path" |  Blocker | Deployment / Kubernetes, Tests | Robert Metzger | Yang Wang |
| [FLINK-17869](https://issues.apache.org/jira/browse/FLINK-17869) | Fix the race condition of aborting unaligned checkpoint |  Blocker | Runtime / Checkpointing | Zhijiang | Roman Khachatryan |
| [FLINK-18232](https://issues.apache.org/jira/browse/FLINK-18232) | Hive streaming source can not work when inserting new multiple records partition with start offset |  Critical | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-16821](https://issues.apache.org/jira/browse/FLINK-16821) | Run Kubernetes test failed with invalid named "minikube" |  Major | Deployment / Kubernetes, Tests | Zhijiang | Robert Metzger |
| [FLINK-17965](https://issues.apache.org/jira/browse/FLINK-17965) | Hive dialect doesn't properly handle special character escaping with SQL CLI |  Blocker | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-18030](https://issues.apache.org/jira/browse/FLINK-18030) | Hive UDF doesn't accept empty string literal parameter |  Critical | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-18214](https://issues.apache.org/jira/browse/FLINK-18214) | Incorrect warning if jobstore.cache-size exceeds heap size |  Major | Runtime / Configuration | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-18237](https://issues.apache.org/jira/browse/FLINK-18237) | IllegalArgumentException when reading filesystem partitioned table with stream mode |  Blocker | Connectors / FileSystem, Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-15849](https://issues.apache.org/jira/browse/FLINK-15849) | Update SQL-CLIENT document from type to data-type |  Blocker | Documentation, Table SQL / API | Jingsong Lee | Danny Chen |
| [FLINK-18217](https://issues.apache.org/jira/browse/FLINK-18217) | config.sh#extractExecutionResults does not fail on wrong input |  Blocker | Deployment / Scripts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18058](https://issues.apache.org/jira/browse/FLINK-18058) | MesosResourceManagerTest.testWorkerStarted:656 » NullPointer |  Critical | Deployment / Mesos | Robert Metzger | Chesnay Schepler |
| [FLINK-17788](https://issues.apache.org/jira/browse/FLINK-17788) | scala shell in yarn mode is broken |  Major | Scala Shell | Jeff Zhang | Kostas Kloudas |
| [FLINK-18247](https://issues.apache.org/jira/browse/FLINK-18247) | Unstable test: TableITCase.testCollectWithClose:122 expected:\<CANCELED\> but was:\<CANCELLING\> |  Major | Table SQL / API, Tests | Robert Metzger | godfrey he |
| [FLINK-17182](https://issues.apache.org/jira/browse/FLINK-17182) | RemoteInputChannelTest.testConcurrentOnSenderBacklogAndRecycle fail on azure |  Major | Runtime / Network | Dawid Wysakowicz | Yun Gao |
| [FLINK-18256](https://issues.apache.org/jira/browse/FLINK-18256) | Hadoop dependencies are wrongly bundled into flink-orc |  Blocker | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Yang Wang | Yang Wang |
| [FLINK-18241](https://issues.apache.org/jira/browse/FLINK-18241) | Custom OptionsFactory in user code not working when configured via flink-conf.yaml |  Major | Runtime / Configuration, Runtime / State Backends | Nico Kruber | Dawid Wysakowicz |
| [FLINK-18259](https://issues.apache.org/jira/browse/FLINK-18259) | HeartbeatManagerTest.testHeartbeatCluster unstable |  Critical | Runtime / Coordination, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-18233](https://issues.apache.org/jira/browse/FLINK-18233) | TaskExecutorSubmissionTest unstable |  Critical | Runtime / Coordination, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-18137](https://issues.apache.org/jira/browse/FLINK-18137) | JobMasterTriggerSavepointITCase.testStopJobAfterSavepoint fails with AskTimeoutException |  Blocker | Runtime / Checkpointing, Runtime / Coordination, Runtime / Task, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-18252](https://issues.apache.org/jira/browse/FLINK-18252) | Resuming Savepoint (file, async, no parallelism change) end-to-end test fails with unaligned checkpoint enabled |  Major | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-18226](https://issues.apache.org/jira/browse/FLINK-18226) | ResourceManager requests unnecessary new workers if previous workers are allocated but not registered. |  Blocker | Deployment / Kubernetes, Deployment / YARN, Runtime / Coordination | Xintong Song | Xintong Song |
| [FLINK-18277](https://issues.apache.org/jira/browse/FLINK-18277) | Elasticsearch6DynamicSink#asSummaryString() return identifier typo |  Trivial | Connectors / ElasticSearch | Qishang Zhong | Qishang Zhong |
| [FLINK-18265](https://issues.apache.org/jira/browse/FLINK-18265) | Hidden files should be ignored when the filesystem table searches for partitions |  Blocker | Connectors / FileSystem, Table SQL / API | Jingsong Lee | godfrey he |
| [FLINK-18173](https://issues.apache.org/jira/browse/FLINK-18173) | Bundle flink-csv and flink-json jars in lib |  Blocker | Build System, Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-18197](https://issues.apache.org/jira/browse/FLINK-18197) | Should add more logs for hive streaming integration |  Major | Connectors / FileSystem, Connectors / Hive | Rui Li | Rui Li |
| [FLINK-18223](https://issues.apache.org/jira/browse/FLINK-18223) | AvroSerializer does not correctly instantiate GenericRecord |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Lorenzo Nicora | Lorenzo Nicora |
| [FLINK-16432](https://issues.apache.org/jira/browse/FLINK-16432) | Building Hive connector gives problems |  Blocker | Connectors / Hive | Niels Basjes | Arvid Heise |
| [FLINK-18147](https://issues.apache.org/jira/browse/FLINK-18147) | Orc document display is disordered |  Blocker | Documentation, FileSystems | Shuai Xia | Shuai Xia |
| [FLINK-17327](https://issues.apache.org/jira/browse/FLINK-17327) | Kafka unavailability could cause Flink TM shutdown |  Critical | Connectors / Kafka | Jun Qin | Aljoscha Krettek |
| [FLINK-18162](https://issues.apache.org/jira/browse/FLINK-18162) | AddSplitEvents should serialize the splits into bytes. |  Blocker | Connectors / Common | Jiangjie Qin | Jiangjie Qin |
| [FLINK-18261](https://issues.apache.org/jira/browse/FLINK-18261) | flink-orc and flink-parquet have invalid NOTICE file |  Blocker | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Robert Metzger | Jingsong Lee |
| [FLINK-18268](https://issues.apache.org/jira/browse/FLINK-18268) | Correct Table API in Temporal table docs |  Major | Documentation | Leonard Xu | Leonard Xu |
| [FLINK-17891](https://issues.apache.org/jira/browse/FLINK-17891) |  FlinkYarnSessionCli sets wrong execution.target type |  Major | Command Line Client, Deployment / YARN | Shangwen Tang | Kostas Kloudas |
| [FLINK-17322](https://issues.apache.org/jira/browse/FLINK-17322) | Enable latency tracker would corrupt the broadcast state |  Major | Runtime / Network | Yun Tang | Arvid Heise |
| [FLINK-17666](https://issues.apache.org/jira/browse/FLINK-17666) | Insert into partitioned table can fail with select \* |  Critical | Connectors / Hive | Rui Li | Danny Chen |
| [FLINK-18322](https://issues.apache.org/jira/browse/FLINK-18322) | Fix unstable ExecutorNotifierTest#testExceptionInHandler. |  Blocker | Connectors / Common | Jiangjie Qin | Jiangjie Qin |
| [FLINK-18083](https://issues.apache.org/jira/browse/FLINK-18083) | Improve exception message of TIMESTAMP/TIME  out of the HBase connector supported precision |  Major | Connectors / HBase | Leonard Xu | Leonard Xu |
| [FLINK-18314](https://issues.apache.org/jira/browse/FLINK-18314) | Fix wrong documentation in Kafka SQL Connector page |  Major | Documentation | jinxin | Jark Wu |
| [FLINK-18161](https://issues.apache.org/jira/browse/FLINK-18161) | Changing parallelism is not possible in sql-client.sh |  Critical | Table SQL / Client | Robert Metzger | godfrey he |
| [FLINK-18311](https://issues.apache.org/jira/browse/FLINK-18311) | StreamingKafkaITCase stalls indefinitely |  Blocker | Connectors / Kafka, Tests | Dian Fu | Aljoscha Krettek |
| [FLINK-18082](https://issues.apache.org/jira/browse/FLINK-18082) | UnsignedTypeConversionITCase stalls in ch.vorburger.mariadb4j.DB.stop |  Major | Connectors / JDBC, Table SQL / Ecosystem | Robert Metzger | Leonard Xu |
| [FLINK-18302](https://issues.apache.org/jira/browse/FLINK-18302) | Sql client uses wrong class loader when execute INSERT statements |  Critical | Table SQL / Client | Jark Wu | Jark Wu |
| [FLINK-18303](https://issues.apache.org/jira/browse/FLINK-18303) | Filesystem connector doesn't flush part files after rolling interval |  Major | Connectors / FileSystem, Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-18329](https://issues.apache.org/jira/browse/FLINK-18329) | Dist NOTICE issues |  Blocker | Build System, Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18331](https://issues.apache.org/jira/browse/FLINK-18331) | Hive NOTICE issues |  Minor | Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18326](https://issues.apache.org/jira/browse/FLINK-18326) | Kubernetes NOTICE issues |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18328](https://issues.apache.org/jira/browse/FLINK-18328) | Blink planner NOTICE issues |  Blocker | Build System, Table SQL / Planner | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18148](https://issues.apache.org/jira/browse/FLINK-18148) | "Resuming Savepoint" e2e fails with TimeoutException in CliFrontend.stop() |  Critical | Command Line Client | Robert Metzger | Robert Metzger |
| [FLINK-18330](https://issues.apache.org/jira/browse/FLINK-18330) | Python NOTICE issues |  Critical | API / Python, Build System | Chesnay Schepler | Dian Fu |
| [FLINK-18238](https://issues.apache.org/jira/browse/FLINK-18238) | RemoteChannelThroughputBenchmark deadlocks |  Blocker | Runtime / Checkpointing | Piotr Nowojski | Yingjie Cao |
| [FLINK-18072](https://issues.apache.org/jira/browse/FLINK-18072) | HBaseLookupFunction can not work with new internal data structure RowData |  Major | Connectors / HBase | Leonard Xu | Leonard Xu |
| [FLINK-18290](https://issues.apache.org/jira/browse/FLINK-18290) | Tests are crashing with exit code 239 |  Blocker | Build System / Azure Pipelines, Runtime / Checkpointing | Robert Metzger | Roman Khachatryan |
| [FLINK-18338](https://issues.apache.org/jira/browse/FLINK-18338) | RocksDB tests crash the JVM on CI |  Blocker | Runtime / State Backends, Tests | Chesnay Schepler | Yun Tang |
| [FLINK-18272](https://issues.apache.org/jira/browse/FLINK-18272) | FileSystemLookupFunction can fail if the file gets updated/deleted while cache is reloaded |  Critical | FileSystems | Rui Li | Rui Li |
| [FLINK-18319](https://issues.apache.org/jira/browse/FLINK-18319) | Lack LICENSE.protobuf in flink-sql-orc |  Blocker | Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-18289](https://issues.apache.org/jira/browse/FLINK-18289) | UDF notify checkpoint aborted interface not work |  Critical | Runtime / Checkpointing, Runtime / Task | Yun Tang | Yun Tang |
| [FLINK-18094](https://issues.apache.org/jira/browse/FLINK-18094) | Index offset not consistent in CheckpointedInputGate for unaligned checkpoints. |  Critical | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-17768](https://issues.apache.org/jira/browse/FLINK-17768) | UnalignedCheckpointITCase.shouldPerformUnalignedCheckpointOnLocalAndRemoteChannel is instable |  Critical | Runtime / Checkpointing | Dian Fu | Zhijiang |
| [FLINK-16589](https://issues.apache.org/jira/browse/FLINK-16589) | Flink Table SQL fails/crashes with big queries with lots of fields |  Critical | Table SQL / Planner | Viet Pham | Benchao Li |
| [FLINK-18368](https://issues.apache.org/jira/browse/FLINK-18368) | HadoopRecoverableWriterOldHadoopWithNoTruncateSupportTest.createHDFS fails with "Running in secure mode, but config doesn't have a keytab" |  Major | FileSystems, Tests | Robert Metzger | Stephan Ewen |
| [FLINK-18119](https://issues.apache.org/jira/browse/FLINK-18119) | Fix unlimitedly growing state for time range bounded over aggregate |  Major | Table SQL / Runtime | Hyeonseop Lee | Hyeonseop Lee |
| [FLINK-18242](https://issues.apache.org/jira/browse/FLINK-18242) | Custom OptionsFactory settings seem to have no effect on RocksDB |  Major | Runtime / State Backends | Nico Kruber | Yu Li |
| [FLINK-18381](https://issues.apache.org/jira/browse/FLINK-18381) | Update Jekyll to 4.0.1 |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-18378](https://issues.apache.org/jira/browse/FLINK-18378) | CatalogManager checks for CatalogTableImpl instead of CatalogTable |  Major | Table SQL / Planner | Fabian Hueske | Dawid Wysakowicz |
| [FLINK-18352](https://issues.apache.org/jira/browse/FLINK-18352) | org.apache.flink.core.execution.DefaultExecutorServiceLoader not thread safe |  Major | Client / Job Submission | Marcos Klein | Kostas Kloudas |
| [FLINK-18403](https://issues.apache.org/jira/browse/FLINK-18403) | Ensure that only exactly once checkpointing can be unaligned |  Major | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-18412](https://issues.apache.org/jira/browse/FLINK-18412) | JdbcFullTest failed to compile on JDK11 |  Blocker | Connectors / JDBC, Tests | Dian Fu | Jark Wu |
| [FLINK-18320](https://issues.apache.org/jira/browse/FLINK-18320) | flink-sql-connector-hive modules should merge hive-exec dependencies |  Blocker | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-18348](https://issues.apache.org/jira/browse/FLINK-18348) | RemoteInputChannel should checkError before checking partitionRequestClient |  Critical | Runtime / Network | Jiayi Liao | Jiayi Liao |
| [FLINK-18399](https://issues.apache.org/jira/browse/FLINK-18399) | TableResult#print can not print the result of unbounded stream query |  Blocker | Table SQL / API | godfrey he | godfrey he |
| [FLINK-14938](https://issues.apache.org/jira/browse/FLINK-14938) | Flink elasticsearch failure handler re-add indexrequest causes ConcurrentModificationException |  Major | Connectors / ElasticSearch | Shengnan YU | Shengnan YU |
| [FLINK-17639](https://issues.apache.org/jira/browse/FLINK-17639) | Document which FileSystems are supported by the StreamingFileSink |  Major | Documentation | Kostas Kloudas | Guowei Ma |
| [FLINK-18425](https://issues.apache.org/jira/browse/FLINK-18425) | GenericArrayData cannot convert object arrays to primitive arrays |  Major | Table SQL / Runtime | Timo Walther | Timo Walther |
| [FLINK-18426](https://issues.apache.org/jira/browse/FLINK-18426) | Incompatible deprecated key type for registration cluster options |  Critical | Runtime / Configuration, Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-18429](https://issues.apache.org/jira/browse/FLINK-18429) | Add default method for CheckpointListener.notifyCheckpointAborted(checkpointId) |  Blocker | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-18428](https://issues.apache.org/jira/browse/FLINK-18428) | StreamExecutionEnvironment#continuousSource() method should be renamed to source() |  Blocker | API / DataStream | Jiangjie Qin | Jiangjie Qin |
| [FLINK-18168](https://issues.apache.org/jira/browse/FLINK-18168) | Error results when use UDAF with Object Array return type |  Major | Table SQL / Runtime | Zou | Zou |
| [FLINK-17800](https://issues.apache.org/jira/browse/FLINK-17800) | RocksDB optimizeForPointLookup results in missing time windows |  Critical | Runtime / State Backends | Yordan Pavlov | Yun Tang |
| [FLINK-17807](https://issues.apache.org/jira/browse/FLINK-17807) | Fix the broken link "/zh/ops/memory/mem\_detail.html" in documentation |  Major | Documentation | Jark Wu | Xintong Song |
| [FLINK-18439](https://issues.apache.org/jira/browse/FLINK-18439) | Update sql client jar url in docs |  Major | Documentation | Leonard Xu | Leonard Xu |
| [FLINK-14567](https://issues.apache.org/jira/browse/FLINK-14567) | Aggregate query with more than two group fields can't be write into HBase sink |  Critical | Connectors / HBase, Table SQL / Legacy Planner, Table SQL / Planner | Jark Wu |  |
| [FLINK-18297](https://issues.apache.org/jira/browse/FLINK-18297) | SQL client: setting execution.type to invalid value shuts down the session |  Major | Table SQL / Client | David Anderson |  |
| [FLINK-18144](https://issues.apache.org/jira/browse/FLINK-18144) | State TTL configuration can't be set in SQL CLI |  Major | Table SQL / API, Table SQL / Client | Jark Wu |  |
| [FLINK-17190](https://issues.apache.org/jira/browse/FLINK-17190) | SQL client does not support views that reference a table from DDL |  Major | Table SQL / Client | Timo Walther |  |
| [FLINK-17045](https://issues.apache.org/jira/browse/FLINK-17045) | If multiple views are based on tables not defined in the yaml config file, dropping one of the views will throw exception |  Major | Table SQL / Client | Caizhi Weng |  |
| [FLINK-15699](https://issues.apache.org/jira/browse/FLINK-15699) | FirstValueAggFunctionWithoutOrderTest failed on Traivs |  Major | Table SQL / Planner, Tests | Congxian Qiu |  |
| [FLINK-18187](https://issues.apache.org/jira/browse/FLINK-18187) | CheckPubSubEmulatorTest failed on azure |  Critical | Connectors / Google Cloud PubSub, Tests | Roman Khachatryan | Robert Metzger |
| [FLINK-17091](https://issues.apache.org/jira/browse/FLINK-17091) | AvroRow(De)SerializationSchema doesn't support new Timestamp conversion classes |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Paul Lin | Paul Lin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16196](https://issues.apache.org/jira/browse/FLINK-16196) | FlinkStandaloneHiveRunner leaks HMS process |  Major | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-17081](https://issues.apache.org/jira/browse/FLINK-17081) | Batch test classes in Blink planner does not extend TestLogger |  Major | Tests | Caizhi Weng | Caizhi Weng |
| [FLINK-17476](https://issues.apache.org/jira/browse/FLINK-17476) | Add tests to check recovery from snapshot created with different UC mode |  Major | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17867](https://issues.apache.org/jira/browse/FLINK-17867) | Fix Hive-3.1.1 test |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13632](https://issues.apache.org/jira/browse/FLINK-13632) | Port serializer upgrade tests to TypeSerializerUpgradeTestBase |  Critical | API / Type Serialization System, Tests | Till Rohrmann | Aljoscha Krettek |
| [FLINK-17937](https://issues.apache.org/jira/browse/FLINK-17937) | Change some hive connector tests to IT cases |  Major | Connectors / Hive, Tests | Rui Li | Rui Li |
| [FLINK-18100](https://issues.apache.org/jira/browse/FLINK-18100) | Test different user-defined metrics for Python UDF |  Blocker | API / Python | sunjincheng | Hequn Cheng |
| [FLINK-18086](https://issues.apache.org/jira/browse/FLINK-18086) | Migrate SQLClientKafkaITCase to use DDL and new options to create tables |  Major | Connectors / Kafka, Table SQL / Ecosystem, Tests | Jark Wu | Jark Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15127](https://issues.apache.org/jira/browse/FLINK-15127) | rename CreateFunctionOperation, DropFunctionOperation, AlterFunctionOperation to CreateCatalogFunctionOperation, DropCatalogFunctionOperation, AlterCatalogFunctionOperation |  Major | Table SQL / Planner | Bowen Li | Zhenqiu Huang |
| [FLINK-14765](https://issues.apache.org/jira/browse/FLINK-14765) | Remove STATE\_UPDATER in Execution |  Major | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-14766](https://issues.apache.org/jira/browse/FLINK-14766) | Remove volatile variable in ExecutionVertex |  Major | Runtime / Coordination | Jiayi Liao | Jiayi Liao |
| [FLINK-14655](https://issues.apache.org/jira/browse/FLINK-14655) | Change Type of Field jobStatusListeners from CopyOnWriteArrayList to ArrayList |  Major | Runtime / Coordination | vinoyang | vinoyang |
| [FLINK-15021](https://issues.apache.org/jira/browse/FLINK-15021) | Remove the setting of netty channel watermark in NettyServer |  Minor | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-15009](https://issues.apache.org/jira/browse/FLINK-15009) | Add a utility for creating type inference logic via reflection |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-15281](https://issues.apache.org/jira/browse/FLINK-15281) | Map Flink's TypeInference to Calcite's interfaces |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-14703](https://issues.apache.org/jira/browse/FLINK-14703) | Port the Kafka SQL related tests. |  Major | Build System, Connectors / Kafka | Zheng Hu | Zheng Hu |
| [FLINK-13905](https://issues.apache.org/jira/browse/FLINK-13905) | Separate checkpoint triggering into stages |  Major | Runtime / Checkpointing | Biao Liu | Biao Liu |
| [FLINK-15612](https://issues.apache.org/jira/browse/FLINK-15612) | Implement a DataTypeLookup |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-15737](https://issues.apache.org/jira/browse/FLINK-15737) | Support Java 12 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15487](https://issues.apache.org/jira/browse/FLINK-15487) | Expose the new type inference for scalar functions |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-15695](https://issues.apache.org/jira/browse/FLINK-15695) | Remove outdated section of Configuration Page |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-13955](https://issues.apache.org/jira/browse/FLINK-13955) | Integrate ContinuousFileReaderOperator with StreamTask mailbox execution model |  Major | Runtime / Task | Alex | Roman Khachatryan |
| [FLINK-12484](https://issues.apache.org/jira/browse/FLINK-12484) | Drop unnecessary locking for code-paths that now use the mailbox |  Major | Runtime / Task | Stefan Richter | Roman Khachatryan |
| [FLINK-13373](https://issues.apache.org/jira/browse/FLINK-13373) | Remove Tutorials and Examples sections from Getting Started |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-15646](https://issues.apache.org/jira/browse/FLINK-15646) | Configurable K8s context support |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-15990](https://issues.apache.org/jira/browse/FLINK-15990) | Remove register source and sink in ConnectTableDescriptor |  Major | API / Python, Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-13793](https://issues.apache.org/jira/browse/FLINK-13793) | Build different language docs in parallel |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-15993](https://issues.apache.org/jira/browse/FLINK-15993) | Add timeout to 404 documentation redirect, add explanation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15997](https://issues.apache.org/jira/browse/FLINK-15997) | Make documentation 404 page look like a documentation page |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15802](https://issues.apache.org/jira/browse/FLINK-15802) | Expose the new type inference for table functions |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-16054](https://issues.apache.org/jira/browse/FLINK-16054) | Support Java 13 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14802](https://issues.apache.org/jira/browse/FLINK-14802) | Multi vectorized read version support for hive orc read |  Major | Connectors / Hive, Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-16049](https://issues.apache.org/jira/browse/FLINK-16049) | Remove outdated "Best Practices" section from Application Development Section |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15708](https://issues.apache.org/jira/browse/FLINK-15708) | Add MigrationVersion.v1\_10 |  Major | Tests | vinoyang | vinoyang |
| [FLINK-14568](https://issues.apache.org/jira/browse/FLINK-14568) | Add methods for interacting with temporary functions |  Major | Table SQL / API | Dawid Wysakowicz |  |
| [FLINK-14086](https://issues.apache.org/jira/browse/FLINK-14086) | PrometheusReporterEndToEndITCase doesn't support ARM arch |  Minor | Tests | wangxiyuan |  |
| [FLINK-16151](https://issues.apache.org/jira/browse/FLINK-16151) | Translate "Event-time/Pre-defined Timestamp Extractors / Watermark Emitters" into Chinese |  Major | chinese-translation, Documentation | Yun Gao |  |
| [FLINK-16072](https://issues.apache.org/jira/browse/FLINK-16072) | Optimize the performance of the write/read null mask in FlattenRowCoder |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-16000](https://issues.apache.org/jira/browse/FLINK-16000) | Move "Project Build Setup" to "Getting Started" in documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16041](https://issues.apache.org/jira/browse/FLINK-16041) | Expand "popular" documentation sections by default |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15652](https://issues.apache.org/jira/browse/FLINK-15652) | Support for imagePullSecrets k8s option |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-11589](https://issues.apache.org/jira/browse/FLINK-11589) | Introduce service provider pattern for user to dynamically load SecurityFactory classes |  Major | Runtime / Coordination | Rong Rong | Rong Rong |
| [FLINK-14231](https://issues.apache.org/jira/browse/FLINK-14231) | Support the timers of the upstream operator with endInput properly |  Major | Runtime / Task | Haibo Sun | Haibo Sun |
| [FLINK-15999](https://issues.apache.org/jira/browse/FLINK-15999) | Extract “Concepts” material from API/Library sections and start proper concepts section |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15561](https://issues.apache.org/jira/browse/FLINK-15561) | Unify Kerberos credentials checking |  Major | Deployment / YARN | Rong Rong | Rong Rong |
| [FLINK-16082](https://issues.apache.org/jira/browse/FLINK-16082) | Translate "Overview" page of "Streaming Concepts" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Benchao Li |
| [FLINK-16081](https://issues.apache.org/jira/browse/FLINK-16081) | Translate "Overview" page of "Table API & SQL" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Benchao Li |
| [FLINK-15172](https://issues.apache.org/jira/browse/FLINK-15172) | Optimize the operator algorithm to lazily allocate memory |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-16251](https://issues.apache.org/jira/browse/FLINK-16251) | Optimize the cost of function call  in ScalarFunctionOpertation |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-16060](https://issues.apache.org/jira/browse/FLINK-16060) | Create MVP of multiple input processor |  Major | API / DataStream, Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-16180](https://issues.apache.org/jira/browse/FLINK-16180) | Replacing vertexExecution in ScheduledUnit with executionVertexID |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-16276](https://issues.apache.org/jira/browse/FLINK-16276) | Introduce factory methods to create DefaultScheduler for testing |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-16033](https://issues.apache.org/jira/browse/FLINK-16033) | Introduce a Java Expression DSL |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-12814](https://issues.apache.org/jira/browse/FLINK-12814) | Support a traditional and scrolling view of result (non-interactive) |  Major | Table SQL / Client | Zhenghua Gao | Kurt Young |
| [FLINK-15081](https://issues.apache.org/jira/browse/FLINK-15081) | Translate "Concepts & Common API" page of Table API into Chinese |  Minor | chinese-translation, Documentation | Steve OU | ShijieZhang |
| [FLINK-15582](https://issues.apache.org/jira/browse/FLINK-15582) | Enable batch scheduling tests in LegacySchedulerBatchSchedulingTest for DefaultScheduler as well |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-16362](https://issues.apache.org/jira/browse/FLINK-16362) | Remove deprecated method in StreamTableSink |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-16131](https://issues.apache.org/jira/browse/FLINK-16131) | Translate "Amazon S3" page of "File Systems" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Qingsheng Ren |
| [FLINK-16300](https://issues.apache.org/jira/browse/FLINK-16300) | Rework SchedulerTestUtils with testing classes to replace mockito usages |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-16133](https://issues.apache.org/jira/browse/FLINK-16133) | Translate "Azure Blob Storage" page of "File Systems" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Qingsheng Ren |
| [FLINK-16132](https://issues.apache.org/jira/browse/FLINK-16132) | Translate "Aliyun OSS" page of "File Systems" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Qingsheng Ren |
| [FLINK-16089](https://issues.apache.org/jira/browse/FLINK-16089) | Translate "Data Types" page of "Table API & SQL" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Jiang Leilei |
| [FLINK-16084](https://issues.apache.org/jira/browse/FLINK-16084) | Translate "Time Attributes" page of "Streaming Concepts" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Benchao Li |
| [FLINK-16172](https://issues.apache.org/jira/browse/FLINK-16172) | Add baseline set of allowed unused dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16173](https://issues.apache.org/jira/browse/FLINK-16173) | Reduce noise for used undeclared dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11899](https://issues.apache.org/jira/browse/FLINK-11899) | Introduce parquet ColumnarRow split reader |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-16359](https://issues.apache.org/jira/browse/FLINK-16359) | Introduce WritableVectors for abstract writing |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-16129](https://issues.apache.org/jira/browse/FLINK-16129) | Translate "Overview" page of "File Systems" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Qingsheng Ren |
| [FLINK-16130](https://issues.apache.org/jira/browse/FLINK-16130) | Translate "Common Configurations" page of "File Systems" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Qingsheng Ren |
| [FLINK-16450](https://issues.apache.org/jira/browse/FLINK-16450) | Integrate parquet columnar row reader to hive |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-16199](https://issues.apache.org/jira/browse/FLINK-16199) | Support IS JSON predication for SQL in blink planner |  Major | Table SQL / API, Table SQL / Planner | Zili Chen | Zili Chen |
| [FLINK-16273](https://issues.apache.org/jira/browse/FLINK-16273) | Solve "sun.misc.Unseafe or java.nio.DirectByteBuffer.\<init\>(long, int) not available" problem for users |  Major | API / Python | Hequn Cheng | Dian Fu |
| [FLINK-15131](https://issues.apache.org/jira/browse/FLINK-15131) | Add Source API classes |  Major | API / DataStream | Jiangjie Qin | Jiangjie Qin |
| [FLINK-16512](https://issues.apache.org/jira/browse/FLINK-16512) | Add API to persist channel state |  Major | Runtime / Checkpointing | Roman Khachatryan | Roman Khachatryan |
| [FLINK-16363](https://issues.apache.org/jira/browse/FLINK-16363) | Correct the execution behavior of TableEnvironment and StreamTableEnvironment |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-10742](https://issues.apache.org/jira/browse/FLINK-10742) | Let Netty use Flink's buffers directly in credit-based mode |  Major | Runtime / Network | Nico Kruber | Yun Gao |
| [FLINK-16261](https://issues.apache.org/jira/browse/FLINK-16261) | Avoid unnecessary casting in TypeInferenceOperandChecker |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-14121](https://issues.apache.org/jira/browse/FLINK-14121) | Upgrade commons-compress to 1.20 |  Major | API / DataStream, Build System, Release System | John Lonergan | Niels Basjes |
| [FLINK-16336](https://issues.apache.org/jira/browse/FLINK-16336) | Support new type inference for temporal table functions |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-16096](https://issues.apache.org/jira/browse/FLINK-16096) | Translate "Catalogs" page of "Table API & SQL" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | zhule |
| [FLINK-16586](https://issues.apache.org/jira/browse/FLINK-16586) | Build ResultSubpartitionInfo and InputChannelInfo in respective constructors |  Major | Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-16083](https://issues.apache.org/jira/browse/FLINK-16083) | Translate "Dynamic Table" page of "Streaming Concepts" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | ShijieZhang |
| [FLINK-15958](https://issues.apache.org/jira/browse/FLINK-15958) | Fully support RAW types in the API |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-16344](https://issues.apache.org/jira/browse/FLINK-16344) | Preserve nullability for nested types |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-16236](https://issues.apache.org/jira/browse/FLINK-16236) | Fix YARNSessionFIFOSecuredITCase not loading the correct security context factory |  Major | Deployment / YARN | Rong Rong | Rong Rong |
| [FLINK-16471](https://issues.apache.org/jira/browse/FLINK-16471) | develop PostgresCatalog |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16472](https://issues.apache.org/jira/browse/FLINK-16472) | support precision of timestamp and time data types |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-15667](https://issues.apache.org/jira/browse/FLINK-15667) | Support to mount Hadoop Configurations |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16302](https://issues.apache.org/jira/browse/FLINK-16302) | Add Rest Handler to list TM Logfiles and enable reading Logs by Filename |  Major | Runtime / REST | lining | lining |
| [FLINK-16092](https://issues.apache.org/jira/browse/FLINK-16092) | Translate "Overview" page of "Functions" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | zhule |
| [FLINK-15647](https://issues.apache.org/jira/browse/FLINK-15647) | Support user-specified annotations for JM/TM pods |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16316](https://issues.apache.org/jira/browse/FLINK-16316) | Provide new base class for StreamOperators |  Major | API / DataStream | Piotr Nowojski | Piotr Nowojski |
| [FLINK-16377](https://issues.apache.org/jira/browse/FLINK-16377) | Support inline user defined functions in expression dsl |  Major | Table SQL / API, Table SQL / Planner | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16317](https://issues.apache.org/jira/browse/FLINK-16317) | Add watermarks, keyed state and latency markers support for MultipleInputStreamOperator |  Major | API / DataStream, Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-16702](https://issues.apache.org/jira/browse/FLINK-16702) | develop JDBCCatalogFactory, descriptor, and validator for service discovery |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16498](https://issues.apache.org/jira/browse/FLINK-16498) | connect PostgresCatalog to table planner |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16810](https://issues.apache.org/jira/browse/FLINK-16810) | add back PostgresCatalogITCase |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16127](https://issues.apache.org/jira/browse/FLINK-16127) | Translate "Fault Tolerance Guarantees" page of connectors into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Xuannan Su |
| [FLINK-16128](https://issues.apache.org/jira/browse/FLINK-16128) | Translate "Google Cloud PubSub" page into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Xuannan Su |
| [FLINK-11404](https://issues.apache.org/jira/browse/FLINK-11404) | Web UI: Add Load More Button to Exception Page |  Major | Runtime / Web Frontend | lining | Yadong Xie |
| [FLINK-14792](https://issues.apache.org/jira/browse/FLINK-14792) | Extend TaskExecutor interface to support release of cluster partitions |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16806](https://issues.apache.org/jira/browse/FLINK-16806) | Implement Input selection for MultipleInputStreamOperator |  Major | API / DataStream, Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-16741](https://issues.apache.org/jira/browse/FLINK-16741) | Web UI: Enable listing TM Logs and displaying Logs by Filename |  Major | Runtime / Web Frontend | Yadong Xie | Yadong Xie |
| [FLINK-15282](https://issues.apache.org/jira/browse/FLINK-15282) | Remove ParameterScope in blink planner |  Major | Table SQL / Planner | Jark Wu |  |
| [FLINK-15210](https://issues.apache.org/jira/browse/FLINK-15210) | Move java files in flink-sql-parser module package org.apache.calcite.sql to org.apache.flink.sql.parser.type |  Major | Table SQL / API | Danny Chen |  |
| [FLINK-16857](https://issues.apache.org/jira/browse/FLINK-16857) | Support partition prune by getPartitions of source |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-16858](https://issues.apache.org/jira/browse/FLINK-16858) | Expose partitioned by grammar |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-16877](https://issues.apache.org/jira/browse/FLINK-16877) | SingleDirectoryWriter should not produce file when no input record |  Major | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-16035](https://issues.apache.org/jira/browse/FLINK-16035) | Update the Java's TableEnvironment/Table to accept the Java Expression DSL |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16036](https://issues.apache.org/jira/browse/FLINK-16036) | Deprecate String based Expression DSL in TableEnvironments |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-14791](https://issues.apache.org/jira/browse/FLINK-14791) | Process ClusterPartitionReport on ResourceManager |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16389](https://issues.apache.org/jira/browse/FLINK-16389) | Bump Kafka 0.10 to 0.10.2.2 |  Major | Connectors / Kafka | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16044](https://issues.apache.org/jira/browse/FLINK-16044) | Extract libraries documentation to a top-level section |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16045](https://issues.apache.org/jira/browse/FLINK-16045) | Extract connectors documentation to a top-level section |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16098](https://issues.apache.org/jira/browse/FLINK-16098) | Translate "Overview" page of "Hive Integration" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Liuzhixing |
| [FLINK-15822](https://issues.apache.org/jira/browse/FLINK-15822) | Rethink the necessity of the internal Service |  Major | Deployment / Kubernetes | Canbin Zheng |  |
| [FLINK-14126](https://issues.apache.org/jira/browse/FLINK-14126) | Elasticsearch Xpack Machine Learning doesn't support ARM |  Minor | Tests | wangxiyuan | wangxiyuan |
| [FLINK-15998](https://issues.apache.org/jira/browse/FLINK-15998) | In Glossary, clarify Application/Job cluster description |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16912](https://issues.apache.org/jira/browse/FLINK-16912) | Introduce table row write support for parquet writer |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Jingsong Lee |
| [FLINK-16830](https://issues.apache.org/jira/browse/FLINK-16830) | Let users use Row/List/Map/Seq directly in Expression DSL |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16859](https://issues.apache.org/jira/browse/FLINK-16859) | Introduce FileSystemTableFactory, FileSystemTableSource, FileSystemTableSink |  Major | Connectors / FileSystem, Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-14266](https://issues.apache.org/jira/browse/FLINK-14266) | Introduce Row Csv InputFormat |  Major | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-16749](https://issues.apache.org/jira/browse/FLINK-16749) | Support to set node selector for JM/TM pod |  Major | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-16537](https://issues.apache.org/jira/browse/FLINK-16537) | Implement ResultPartition state recovery for unaligned checkpoint |  Major | Runtime / Checkpointing, Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-16811](https://issues.apache.org/jira/browse/FLINK-16811) | introduce row converter API to JDBCDialect |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16535](https://issues.apache.org/jira/browse/FLINK-16535) | BatchTableSink#emitDataSet returns DataSink |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-16602](https://issues.apache.org/jira/browse/FLINK-16602) | Rework the Service design for native Kubernetes deployment |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-14162](https://issues.apache.org/jira/browse/FLINK-14162) | Unify SchedulerOperations#allocateSlotsAndDeploy implementation for all scheduling strategies |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17035](https://issues.apache.org/jira/browse/FLINK-17035) | Replace FailoverTopology with SchedulingTopology |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-16988](https://issues.apache.org/jira/browse/FLINK-16988) | Add core table source/sink interfaces |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17047](https://issues.apache.org/jira/browse/FLINK-17047) | Simplify SchedulingStrategy#onPartitionConsumable(...) parameters |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-15817](https://issues.apache.org/jira/browse/FLINK-15817) | Kubernetes Resource leak while deployment exception happens |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16803](https://issues.apache.org/jira/browse/FLINK-16803) | Need to make sure partition inherit table spec when writing to Hive tables |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15639](https://issues.apache.org/jira/browse/FLINK-15639) | Support to set toleration for jobmanager and taskmanger |  Major | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-16303](https://issues.apache.org/jira/browse/FLINK-16303) | Add Rest Handler to list JM Logfiles and enable reading Logs by Filename |  Major | Runtime / REST | lining | lining |
| [FLINK-14504](https://issues.apache.org/jira/browse/FLINK-14504) | Add partition management REST API endpoints |  Major | Runtime / Coordination, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16995](https://issues.apache.org/jira/browse/FLINK-16995) | Add new data structure interfaces in table-common |  Major | Table SQL / API | Timo Walther | Jark Wu |
| [FLINK-16960](https://issues.apache.org/jira/browse/FLINK-16960) | Add PipelinedRegion Interface to Topology |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-17103](https://issues.apache.org/jira/browse/FLINK-17103) | Supports dynamic table options for Blink planner |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-16744](https://issues.apache.org/jira/browse/FLINK-16744) | Implement API to persist channel state |  Major | Runtime / Checkpointing | Roman Khachatryan | Roman Khachatryan |
| [FLINK-16887](https://issues.apache.org/jira/browse/FLINK-16887) | Refactor retraction rules to support inferring ChangelogMode |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-17084](https://issues.apache.org/jira/browse/FLINK-17084) | Implement type inference for ROW/ARRAY/MAP constructors |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16815](https://issues.apache.org/jira/browse/FLINK-16815) | add e2e tests for reading primitive data types from postgres with JDBCTableSource and PostgresCatalog |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16820](https://issues.apache.org/jira/browse/FLINK-16820) | support reading timestamp, data, and time in JDBCTableSource |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16968](https://issues.apache.org/jira/browse/FLINK-16968) | Convert StatsD reporter to plugin |  Major | Runtime / Metrics | Chesnay Schepler | Sivaprasanna Sethuraman |
| [FLINK-17128](https://issues.apache.org/jira/browse/FLINK-17128) | Add isBounded to TableSinkFactory#Context |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-16437](https://issues.apache.org/jira/browse/FLINK-16437) | Make SlotManager allocate resource from ResourceManager at the worker granularity. |  Major | Runtime / Coordination | Xintong Song | Xintong Song |
| [FLINK-16587](https://issues.apache.org/jira/browse/FLINK-16587) | Add basic CheckpointBarrierHandler for unaligned checkpoint |  Major | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-16967](https://issues.apache.org/jira/browse/FLINK-16967) | Convert Slf4j reporter to plugin |  Major | Runtime / Metrics | Chesnay Schepler | molsion mo |
| [FLINK-16962](https://issues.apache.org/jira/browse/FLINK-16962) | Convert DatadogReporter to plugin |  Major | Runtime / Metrics | Chesnay Schepler | molsion mo |
| [FLINK-17181](https://issues.apache.org/jira/browse/FLINK-17181) | Drop generic Types in SchedulingTopology Interface |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-8864](https://issues.apache.org/jira/browse/FLINK-8864) | Add CLI query history in SQL Client |  Major | Table SQL / Client | Timo Walther | Kurt Young |
| [FLINK-16379](https://issues.apache.org/jira/browse/FLINK-16379) | Introduce fromValues in TableEnvironment |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16366](https://issues.apache.org/jira/browse/FLINK-16366) | Introduce executeSql method in TableEnvironment |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-15816](https://issues.apache.org/jira/browse/FLINK-15816) | Limit the maximum length of the value of kubernetes.cluster-id configuration option |  Minor | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16992](https://issues.apache.org/jira/browse/FLINK-16992) | Add ability interfaces for table source/sink |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17014](https://issues.apache.org/jira/browse/FLINK-17014) | Implement PipelinedRegionSchedulingStrategy |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17206](https://issues.apache.org/jira/browse/FLINK-17206) | Refactor FunctionCatalog to support delayed UDF initialization. |  Major | Table SQL / API | Wei Zhong | Wei Zhong |
| [FLINK-17106](https://issues.apache.org/jira/browse/FLINK-17106) | Support create/drop view in Flink SQL |  Major | Table SQL / API, Table SQL / Legacy Planner, Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-17126](https://issues.apache.org/jira/browse/FLINK-17126) | Correct the execution behavior of BatchTableEnvironment |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-17121](https://issues.apache.org/jira/browse/FLINK-17121) | Adds Pipeline of Building Wheel Packages in Azure CI |  Major | API / Python, Build System / Azure Pipelines | Huang Xingbo | Huang Xingbo |
| [FLINK-17209](https://issues.apache.org/jira/browse/FLINK-17209) | Allow users to specify dialect in sql-client yaml |  Major | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-16779](https://issues.apache.org/jira/browse/FLINK-16779) | Support RAW types through the stack |  Major | Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-17226](https://issues.apache.org/jira/browse/FLINK-17226) | Remove Prometheus relocations |  Major | Runtime / Metrics | Chesnay Schepler | molsion mo |
| [FLINK-17227](https://issues.apache.org/jira/browse/FLINK-17227) | Remove Datadog relocations |  Major | Runtime / Metrics | Chesnay Schepler | molsion mo |
| [FLINK-17236](https://issues.apache.org/jira/browse/FLINK-17236) | Add new Training section to Documentation |  Major | Documentation, Documentation / Training | David Anderson | David Anderson |
| [FLINK-16802](https://issues.apache.org/jira/browse/FLINK-16802) | Set schema info in JobConf for Hive readers |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14543](https://issues.apache.org/jira/browse/FLINK-14543) | Support partition for temporary table |  Major | Table SQL / API | Jingsong Lee | Jingsong Lee |
| [FLINK-17020](https://issues.apache.org/jira/browse/FLINK-17020) | Introduce GlobalDataExchangeMode for JobGraph Generation |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17169](https://issues.apache.org/jira/browse/FLINK-17169) | Refactor BaseRow to use RowKind instead of byte header |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-17237](https://issues.apache.org/jira/browse/FLINK-17237) | Add Intro to DataStream API page to Training section |  Major | Documentation / Training | David Anderson | David Anderson |
| [FLINK-17238](https://issues.apache.org/jira/browse/FLINK-17238) | Add ETL page to Training section |  Major | Documentation / Training | David Anderson | David Anderson |
| [FLINK-17239](https://issues.apache.org/jira/browse/FLINK-17239) | Add streaming analytics page to Training section |  Major | Documentation / Training | David Anderson | David Anderson |
| [FLINK-17240](https://issues.apache.org/jira/browse/FLINK-17240) | Add page on Event-driven Applications to Training section |  Major | Documentation / Training | David Anderson | David Anderson |
| [FLINK-17241](https://issues.apache.org/jira/browse/FLINK-17241) | Add page on Fault Tolerance to Training |  Major | Documentation / Training | David Anderson | David Anderson |
| [FLINK-17180](https://issues.apache.org/jira/browse/FLINK-17180) | Implement PipelinedRegion interface for SchedulingTopology |  Major | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-17021](https://issues.apache.org/jira/browse/FLINK-17021) | Blink Planner set GlobalDataExchangeMode |  Major | Runtime / Coordination, Table SQL / Planner | Zhu Zhu | Zhu Zhu |
| [FLINK-13639](https://issues.apache.org/jira/browse/FLINK-13639) | Consider refactoring of IntermediateResultPartitionID to consist of IntermediateDataSetID and partitionIndex |  Minor | Runtime / Coordination | Andrey Zagrebin | Yangze Guo |
| [FLINK-16812](https://issues.apache.org/jira/browse/FLINK-16812) | support array types in PostgresRowConverter |  Major | Connectors / JDBC | Bowen Li | Bowen Li |
| [FLINK-16935](https://issues.apache.org/jira/browse/FLINK-16935) | Open or delete ignored test cases in blink planner |  Major | Table SQL / Planner | Kurt Young | Kurt Young |
| [FLINK-16438](https://issues.apache.org/jira/browse/FLINK-16438) | Make YarnResourceManager starts workers using WorkerResourceSpec requested by SlotManager |  Major | Deployment / YARN | Xintong Song | Xintong Song |
| [FLINK-16439](https://issues.apache.org/jira/browse/FLINK-16439) | Make KubernetesResourceManager starts workers using WorkerResourceSpec requested by SlotManager |  Major | Deployment / Kubernetes | Xintong Song | Xintong Song |
| [FLINK-17299](https://issues.apache.org/jira/browse/FLINK-17299) | Add checkpoint with remote channel benchmark |  Minor | Benchmarks | Yingjie Cao | Yingjie Cao |
| [FLINK-14258](https://issues.apache.org/jira/browse/FLINK-14258) | Integrate file system connector to streaming sink |  Major | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-15006](https://issues.apache.org/jira/browse/FLINK-15006) | Add option to close shuffle when dynamic partition inserting |  Major | Table SQL / Planner | Jingsong Lee | Jingsong Lee |
| [FLINK-17339](https://issues.apache.org/jira/browse/FLINK-17339) | Change default planner to blink and update test cases in both planners |  Major | Table SQL / API, Table SQL / Legacy Planner, Table SQL / Planner | Kurt Young | Kurt Young |
| [FLINK-16404](https://issues.apache.org/jira/browse/FLINK-16404) | Avoid caching buffers for blocked input channels before barrier alignment |  Major | Runtime / Network | Zhijiang | Yingjie Cao |
| [FLINK-16965](https://issues.apache.org/jira/browse/FLINK-16965) | Convert Graphite reporter to plugin |  Major | Runtime / Metrics | Chesnay Schepler | Yangze Guo |
| [FLINK-17009](https://issues.apache.org/jira/browse/FLINK-17009) | Fold API-agnostic documentation into DataStream documentation |  Major | API / DataStream, Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16440](https://issues.apache.org/jira/browse/FLINK-16440) | Extend SlotManager metrics and status for dynamic slot allocation. |  Major | Runtime / Metrics | Xintong Song | Xintong Song |
| [FLINK-16473](https://issues.apache.org/jira/browse/FLINK-16473) | add documentation for JDBCCatalog and PostgresCatalog |  Major | Connectors / JDBC, Documentation | Bowen Li | Bowen Li |
| [FLINK-17311](https://issues.apache.org/jira/browse/FLINK-17311) | Add the logic of compressed in tgz before uploading artifacts |  Major | API / Python, Build System / Azure Pipelines | Huang Xingbo | Huang Xingbo |
| [FLINK-17210](https://issues.apache.org/jira/browse/FLINK-17210) | Implement database DDLs for Hive dialect |  Major | Connectors / Hive, Table SQL / Client | Rui Li | Rui Li |
| [FLINK-17111](https://issues.apache.org/jira/browse/FLINK-17111) | Support SHOW VIEWS in Flink SQL |  Major | Table SQL / API, Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-16645](https://issues.apache.org/jira/browse/FLINK-16645) | Limit the maximum backlogs in subpartitions for data skew case |  Major | Runtime / Network | Zhijiang | Jiayi Liao |
| [FLINK-16996](https://issues.apache.org/jira/browse/FLINK-16996) | Refactor planner and connectors to use new data structures |  Major | Table SQL / Ecosystem, Table SQL / Planner | Timo Walther | Jark Wu |
| [FLINK-17391](https://issues.apache.org/jira/browse/FLINK-17391) | sink.rolling-policy.time.interval default value should be bigger |  Major | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-17455](https://issues.apache.org/jira/browse/FLINK-17455) | Move FileSystemFormatFactory to table common |  Major | Connectors / FileSystem | Jingsong Lee | Jingsong Lee |
| [FLINK-14241](https://issues.apache.org/jira/browse/FLINK-14241) | Add ARM installation step for flink e2e container test |  Major | Tests | wangxiyuan | wangxiyuan |
| [FLINK-17325](https://issues.apache.org/jira/browse/FLINK-17325) | Integrate orc to file system connector |  Major | Connectors / FileSystem, Connectors / ORC | Jingsong Lee | Jingsong Lee |
| [FLINK-17461](https://issues.apache.org/jira/browse/FLINK-17461) | Support JSON serialization and deseriazation schema for RowData type |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jark Wu | Jark Wu |
| [FLINK-17370](https://issues.apache.org/jira/browse/FLINK-17370) | Ensure deterministic type inference extraction |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17373](https://issues.apache.org/jira/browse/FLINK-17373) | Support the NULL type for function calls |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-16103](https://issues.apache.org/jira/browse/FLINK-16103) | Translate "Configuration" page of "Table API & SQL" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Delin Zhao |
| [FLINK-16034](https://issues.apache.org/jira/browse/FLINK-16034) | Update the string based expressions to the java dsl in documentation |  Major | Documentation, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17515](https://issues.apache.org/jira/browse/FLINK-17515) | Move YARN staging functionality to a separate class |  Major | Client / Job Submission, Deployment / YARN | Kostas Kloudas | Kostas Kloudas |
| [FLINK-17244](https://issues.apache.org/jira/browse/FLINK-17244) | Update Getting Started / Overview: training and python |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-16997](https://issues.apache.org/jira/browse/FLINK-16997) | Add new factory interfaces and utilities |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17462](https://issues.apache.org/jira/browse/FLINK-17462) | Support CSV serialization and deseriazation schema for RowData type |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jark Wu | Jark Wu |
| [FLINK-17460](https://issues.apache.org/jira/browse/FLINK-17460) | Create sql-jars for parquet and orc |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Jingsong Lee |
| [FLINK-16804](https://issues.apache.org/jira/browse/FLINK-16804) | Deprecate String based Expression DSL in Table |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16102](https://issues.apache.org/jira/browse/FLINK-16102) | Translate "Use Hive connector in scala shell" page of "Hive Integration" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | zhule |
| [FLINK-17306](https://issues.apache.org/jira/browse/FLINK-17306) | Add open/close methods to DeserializationSchema |  Major | Connectors / Common | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16029](https://issues.apache.org/jira/browse/FLINK-16029) | Remove register source and sink in test cases of blink planner |  Major | Table SQL / API, Tests | Zhenghua Gao | Zhenghua Gao |
| [FLINK-17251](https://issues.apache.org/jira/browse/FLINK-17251) | supports INSERT statement in TableEnvironment#executeSql and Table#executeInsert api |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-16104](https://issues.apache.org/jira/browse/FLINK-16104) | Translate "Streaming Aggregation" page of "Table API & SQL" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | ChaojianZhang |
| [FLINK-17267](https://issues.apache.org/jira/browse/FLINK-17267) | supports EXPLAIN statement in TableEnvironment#executeSql and Table#explain api |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-16989](https://issues.apache.org/jira/browse/FLINK-16989) | Support ScanTableSource in planner |  Major | Table SQL / Planner | Timo Walther | Jark Wu |
| [FLINK-14267](https://issues.apache.org/jira/browse/FLINK-14267) | Introduce Row Csv Encoder |  Major | Connectors / FileSystem | Jingsong Lee | Leonard Xu |
| [FLINK-16097](https://issues.apache.org/jira/browse/FLINK-16097) | Translate "SQL Client" page of "Table API & SQL" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Bai Xu |
| [FLINK-13344](https://issues.apache.org/jira/browse/FLINK-13344) | Translate "How to Contribute" page into Chinese. |  Major | chinese-translation, Project Website | Jark Wu | WangHengWei |
| [FLINK-16990](https://issues.apache.org/jira/browse/FLINK-16990) | Support LookupTableSource in planner |  Major | Table SQL / Planner | Timo Walther | Jark Wu |
| [FLINK-16367](https://issues.apache.org/jira/browse/FLINK-16367) | Introduce createStatementSet method in TableEnvironment |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-17452](https://issues.apache.org/jira/browse/FLINK-17452) | Support creating Hive tables with constraints |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-17286](https://issues.apache.org/jira/browse/FLINK-17286) | Integrate json to file system connector |  Major | Connectors / FileSystem, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Leonard Xu |
| [FLINK-17603](https://issues.apache.org/jira/browse/FLINK-17603) | Prepare Hive partitioned streaming source |  Major | . | Jingsong Lee | Jingsong Lee |
| [FLINK-17369](https://issues.apache.org/jira/browse/FLINK-17369) | Migrate RestartPipelinedRegionFailoverStrategyBuildingTest to PipelinedRegionComputeUtilTest |  Major | Runtime / Coordination, Tests | Gary Yao | Gary Yao |
| [FLINK-17608](https://issues.apache.org/jira/browse/FLINK-17608) | Add TM log and stdout page back |  Major | Runtime / Web Frontend | Yadong Xie | Yadong Xie |
| [FLINK-17252](https://issues.apache.org/jira/browse/FLINK-17252) | supports SELECT statement in TableEnvironment#executeSql and Table#execute api |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-13682](https://issues.apache.org/jira/browse/FLINK-13682) | Translate "Code Style - Scala Guide" page into Chinese |  Major | chinese-translation, Project Website | Jark Wu | Jeff Yang |
| [FLINK-14257](https://issues.apache.org/jira/browse/FLINK-14257) | Integrate csv to FileSystemTableFactory |  Major | Connectors / FileSystem | Jingsong Lee | Leonard Xu |
| [FLINK-17130](https://issues.apache.org/jira/browse/FLINK-17130) | Web UI: Enable listing JM Logs and displaying Logs by Filename |  Major | Runtime / Web Frontend | Yadong Xie | Yadong Xie |
| [FLINK-17577](https://issues.apache.org/jira/browse/FLINK-17577) | SinkFormat#createSinkFormat should use DynamicTableSink.Context as the first parameter |  Critical | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-16536](https://issues.apache.org/jira/browse/FLINK-16536) | Implement InputChannel state recovery for unaligned checkpoint |  Major | Runtime / Checkpointing, Runtime / Network | Zhijiang | Zhijiang |
| [FLINK-17434](https://issues.apache.org/jira/browse/FLINK-17434) | Hive partitioned source support streaming read |  Major | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-17536](https://issues.apache.org/jira/browse/FLINK-17536) | Change the config option of slot max limitation to "slotmanager.number-of-slots.max" |  Major | Runtime / Configuration | Yangze Guo | Yangze Guo |
| [FLINK-17614](https://issues.apache.org/jira/browse/FLINK-17614) | Add project ITCase for partition table in filesystem connector |  Major | Connectors / FileSystem | Leonard Xu | Jingsong Lee |
| [FLINK-17002](https://issues.apache.org/jira/browse/FLINK-17002) | Support creating tables using other tables definition |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17112](https://issues.apache.org/jira/browse/FLINK-17112) | Support DESCRIBE view\_name in Flink SQL |  Major | Table SQL / API, Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-17342](https://issues.apache.org/jira/browse/FLINK-17342) | Schedule savepoint if max-inflight-checkpoints limit is reached instead of forcing (in UC mode) |  Major | Runtime / Checkpointing | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17307](https://issues.apache.org/jira/browse/FLINK-17307) | Add collector to DeserializationSchema |  Major | Connectors / Common | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17612](https://issues.apache.org/jira/browse/FLINK-17612) | Support Python command line options in SQL Client |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-16364](https://issues.apache.org/jira/browse/FLINK-16364) | Deprecate the methods in TableEnvironment proposed by FLIP-84 |  Major | Table SQL / API | godfrey he | godfrey he |
| [FLINK-17633](https://issues.apache.org/jira/browse/FLINK-17633) | Improve FactoryUtil to align with new format options keys |  Major | . | Jark Wu | Jark Wu |
| [FLINK-17431](https://issues.apache.org/jira/browse/FLINK-17431) | Implement table DDLs for Hive dialect part 1 |  Major | Connectors / Hive, Table SQL / API | Rui Li | Rui Li |
| [FLINK-16991](https://issues.apache.org/jira/browse/FLINK-16991) | Support DynamicTableSink in planner |  Major | Table SQL / Planner | Timo Walther | Jark Wu |
| [FLINK-17430](https://issues.apache.org/jira/browse/FLINK-17430) | Support SupportsPartitioning in planner |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-17429](https://issues.apache.org/jira/browse/FLINK-17429) | Support SupportsOverwrite in planner |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-17648](https://issues.apache.org/jira/browse/FLINK-17648) | YarnApplicationClusterEntryPoint should override getRPCPortRange |  Major | Client / Job Submission | Yang Wang | Kostas Kloudas |
| [FLINK-17660](https://issues.apache.org/jira/browse/FLINK-17660) | DataTypeExtractor does not check for default constructor |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17604](https://issues.apache.org/jira/browse/FLINK-17604) | Implement format factory for CSV serialization and deseriazation schema of RowData type |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Danny Chen | Danny Chen |
| [FLINK-17654](https://issues.apache.org/jira/browse/FLINK-17654) | Move Clock classes to flink-core to make them usable outside runtime |  Major | API / Core | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16946](https://issues.apache.org/jira/browse/FLINK-16946) | Update user documentation for job manager memory model |  Major | Documentation, Runtime / Configuration, Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-16178](https://issues.apache.org/jira/browse/FLINK-16178) | Prerequisite cleanups and refactorings in the Checkpoint Coordinator |  Major | Runtime / Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-17222](https://issues.apache.org/jira/browse/FLINK-17222) | Improve FieldsDataType |  Minor | Table SQL / API | Dawid Wysakowicz | Timo Walther |
| [FLINK-17668](https://issues.apache.org/jira/browse/FLINK-17668) | Fix shortcomings in new data structures |  Major | Table SQL / Planner, Table SQL / Runtime | Timo Walther | Timo Walther |
| [FLINK-17667](https://issues.apache.org/jira/browse/FLINK-17667) | Implement INSERT for Hive dialect |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-17629](https://issues.apache.org/jira/browse/FLINK-17629) | Implement format factory for JSON serialization and deserialization schema |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jark Wu | Danny Chen |
| [FLINK-17693](https://issues.apache.org/jira/browse/FLINK-17693) | Add createTypeInformation to DynamicTableSink#Context |  Major | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-17150](https://issues.apache.org/jira/browse/FLINK-17150) | Introduce Canal format to support reading canal changelogs |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-17149](https://issues.apache.org/jira/browse/FLINK-17149) | Introduce Debezium format to support reading debezium changelogs |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-17218](https://issues.apache.org/jira/browse/FLINK-17218) | Add recovery to integration tests of unaligned checkpoints |  Major | Runtime / Checkpointing | Arvid Heise | Arvid Heise |
| [FLINK-17632](https://issues.apache.org/jira/browse/FLINK-17632) | Support to specify a remote path for job jar |  Major | Client / Job Submission, Deployment / YARN | Yang Wang | Yang Wang |
| [FLINK-17729](https://issues.apache.org/jira/browse/FLINK-17729) | Make mandatory to have lib/, plugin/ and dist in yarn.provided.lib.dirs |  Major | Client / Job Submission, Deployment / YARN | Kostas Kloudas | Kostas Kloudas |
| [FLINK-16624](https://issues.apache.org/jira/browse/FLINK-16624) | Support user-specified annotations for the rest Service |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-17748](https://issues.apache.org/jira/browse/FLINK-17748) | Remove registration of TableSource/TableSink in Table Env |  Major | Table SQL / API | Kurt Young | Zhenghua Gao |
| [FLINK-17450](https://issues.apache.org/jira/browse/FLINK-17450) | Implement function & catalog DDLs for Hive dialect |  Major | Connectors / Hive, Table SQL / API | Rui Li | Rui Li |
| [FLINK-17467](https://issues.apache.org/jira/browse/FLINK-17467) | Implement aligned savepoint in UC mode |  Major | Runtime / Checkpointing, Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17719](https://issues.apache.org/jira/browse/FLINK-17719) | Provide ChannelStateReader#hasStates for hints of reading channel states |  Major | Runtime / Checkpointing, Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-17734](https://issues.apache.org/jira/browse/FLINK-17734) | Add specialized collecting sink function |  Major | API / DataStream | Caizhi Weng | Caizhi Weng |
| [FLINK-15836](https://issues.apache.org/jira/browse/FLINK-15836) | Throw fatal error in KubernetesResourceManager when the pods watcher is closed with exception |  Major | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-15668](https://issues.apache.org/jira/browse/FLINK-15668) | Remove AlsoRunWithLegacyScheduler |  Major | Runtime / Coordination, Tests | Zhu Zhu | Zhu Zhu |
| [FLINK-15629](https://issues.apache.org/jira/browse/FLINK-15629) | Remove LegacyScheduler class and the consequently unused codes after this removal |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17028](https://issues.apache.org/jira/browse/FLINK-17028) | Introduce a new HBase connector with new property keys |  Major | Connectors / HBase, Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-17695](https://issues.apache.org/jira/browse/FLINK-17695) | Simplify SourceOperator by using a utility SimpleVersionedListState |  Major | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-17699](https://issues.apache.org/jira/browse/FLINK-17699) | Reduce scope for SourceOperator arguments and initialize more eagerly |  Minor | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-16177](https://issues.apache.org/jira/browse/FLINK-16177) | Integrate Operator Coordinators with Checkpoints |  Major | Runtime / Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-17672](https://issues.apache.org/jira/browse/FLINK-17672) |  OperatorCoordinators receive failure notifications on task failure instead of on task restarts |  Critical | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-17673](https://issues.apache.org/jira/browse/FLINK-17673) | Add failure reason to OperatorCoordinator.failTask(...) |  Major | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-16357](https://issues.apache.org/jira/browse/FLINK-16357) | Extend Checkpoint Coordinator to differentiate between "regional restore" and "full restore". |  Major | Runtime / Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-17702](https://issues.apache.org/jira/browse/FLINK-17702) | OperatorCoordinators must be notified of tasks cancelled as part of failover |  Blocker | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-17451](https://issues.apache.org/jira/browse/FLINK-17451) | Implement view DDLs for Hive dialect |  Major | Connectors / Hive, Table SQL / API | Rui Li | Rui Li |
| [FLINK-17428](https://issues.apache.org/jira/browse/FLINK-17428) | Support SupportsProjectionPushDown in planner |  Major | Table SQL / Planner | Jark Wu | godfrey he |
| [FLINK-16966](https://issues.apache.org/jira/browse/FLINK-16966) | Convert InfluxDB reporter to plugin |  Major | Runtime / Metrics | Chesnay Schepler | xingyuan cheng |
| [FLINK-17026](https://issues.apache.org/jira/browse/FLINK-17026) | Introduce a new Kafka connector with new property keys |  Major | Connectors / Kafka, Table SQL / Ecosystem | Jark Wu | Danny Chen |
| [FLINK-17757](https://issues.apache.org/jira/browse/FLINK-17757) | Implement format factory for Avro serialization and deseriazation schema of RowData type |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-17735](https://issues.apache.org/jira/browse/FLINK-17735) | Add specialized collecting iterator |  Major | API / DataStream | Caizhi Weng | Caizhi Weng |
| [FLINK-17656](https://issues.apache.org/jira/browse/FLINK-17656) | Migrate e2e tests to flink-docker |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-17163](https://issues.apache.org/jira/browse/FLINK-17163) | Remove flink-contrib/docker-flink |  Major | flink-docker | Andrey Zagrebin | Chesnay Schepler |
| [FLINK-17165](https://issues.apache.org/jira/browse/FLINK-17165) | Remove flink-container/docker |  Major | flink-docker | Andrey Zagrebin | Chesnay Schepler |
| [FLINK-17740](https://issues.apache.org/jira/browse/FLINK-17740) | Remove flink-container/kubernetes |  Major | Deployment / Kubernetes, flink-docker | Andrey Zagrebin | Chesnay Schepler |
| [FLINK-17408](https://issues.apache.org/jira/browse/FLINK-17408) | Introduce GPUDriver |  Major | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17407](https://issues.apache.org/jira/browse/FLINK-17407) | Introduce external resource framework. |  Major | Runtime / Configuration, Runtime / Coordination, Runtime / Task | Yangze Guo | Yangze Guo |
| [FLINK-15796](https://issues.apache.org/jira/browse/FLINK-15796) | Extend Kubernetes documentation on how to use a custom image |  Minor | Deployment / Kubernetes | Till Rohrmann |  |
| [FLINK-16999](https://issues.apache.org/jira/browse/FLINK-16999) | Data structure should cover all conversions declared in logical types |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-17029](https://issues.apache.org/jira/browse/FLINK-17029) | Introduce a new JDBC connector with new property keys |  Major | Connectors / JDBC, Table SQL / Ecosystem | Jark Wu | Leonard Xu |
| [FLINK-17658](https://issues.apache.org/jira/browse/FLINK-17658) | Add new TimestampAssigner and WatermarkGenerator interfaces |  Major | API / Core | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-17659](https://issues.apache.org/jira/browse/FLINK-17659) | Add common watermark strategies and WatermarkStrategies helper |  Major | API / Core | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-17661](https://issues.apache.org/jira/browse/FLINK-17661) | Add APIs for using new WatermarkStrategy/WatermarkGenerator |  Major | API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-17669](https://issues.apache.org/jira/browse/FLINK-17669) | Use new WatermarkStrategy/WatermarkGenerator in Kafka connector |  Major | Connectors / Kafka | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-17766](https://issues.apache.org/jira/browse/FLINK-17766) | Use checkpoint lock instead of fine-grained locking in Kafka AbstractFetcher |  Major | Connectors / Kafka | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-17166](https://issues.apache.org/jira/browse/FLINK-17166) | Modify the log4j-console.properties to also output logs into the files for WebUI |  Major | Runtime / Configuration | Andrey Zagrebin | Yang Wang |
| [FLINK-17791](https://issues.apache.org/jira/browse/FLINK-17791) | Combine collecting sink and iterator to support collecting query results under all execution and network environments |  Major | API / DataStream, Table SQL / Planner | Caizhi Weng | Caizhi Weng |
| [FLINK-17758](https://issues.apache.org/jira/browse/FLINK-17758) | Remove AdaptedRestartPipelinedRegionStrategyNG |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17759](https://issues.apache.org/jira/browse/FLINK-17759) | Remove RestartIndividualStrategy |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-17593](https://issues.apache.org/jira/browse/FLINK-17593) | Support arbitrary recovery mechanism for PartFileWriter |  Major | Connectors / FileSystem | Yun Gao | Guowei Ma |
| [FLINK-17796](https://issues.apache.org/jira/browse/FLINK-17796) | Application mode should respect user specified classpath configuration |  Critical | Client / Job Submission | Yang Wang | Yang Wang |
| [FLINK-17781](https://issues.apache.org/jira/browse/FLINK-17781) | OperatorCoordinator Context must support calls from thread other than JobMaster Main Thread |  Blocker | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-16094](https://issues.apache.org/jira/browse/FLINK-16094) | Translate "User-defined Functions" page of "Functions" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Benchao Li |
| [FLINK-16160](https://issues.apache.org/jira/browse/FLINK-16160) | Schema#proctime and Schema#rowtime don't work in TableEnvironment#connect code path |  Critical | Table SQL / API | Zhenghua Gao | Zhenghua Gao |
| [FLINK-17527](https://issues.apache.org/jira/browse/FLINK-17527) | kubernetes-session.sh uses log4j-console.properties |  Major | Deployment / Kubernetes | Till Rohrmann | Yang Wang |
| [FLINK-17547](https://issues.apache.org/jira/browse/FLINK-17547) | Support unaligned checkpoints for records spilled to files |  Major | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-17810](https://issues.apache.org/jira/browse/FLINK-17810) | Add document for K8s application mode |  Major | . | Yang Wang | Yang Wang |
| [FLINK-17797](https://issues.apache.org/jira/browse/FLINK-17797) | Align the behavior between the new and legacy HBase table source |  Major | Connectors / HBase | Jark Wu | Jark Wu |
| [FLINK-17798](https://issues.apache.org/jira/browse/FLINK-17798) | Align the behavior between the new and legacy JDBC table source |  Major | Connectors / JDBC | Jark Wu | Jark Wu |
| [FLINK-17541](https://issues.apache.org/jira/browse/FLINK-17541) | Support inline structured types |  Major | Table SQL / API, Table SQL / Planner | Timo Walther | Timo Walther |
| [FLINK-17622](https://issues.apache.org/jira/browse/FLINK-17622) | Remove useless switch for decimal in PostresCatalog |  Major | Connectors / JDBC | Flavio Pompermaier | Flavio Pompermaier |
| [FLINK-17356](https://issues.apache.org/jira/browse/FLINK-17356) | Pass table's primary key to catalog table in PostgresCatalog |  Major | Connectors / JDBC, Table SQL / Ecosystem | Flavio Pompermaier | Flavio Pompermaier |
| [FLINK-17762](https://issues.apache.org/jira/browse/FLINK-17762) | Postgres Catalog should pass table's primary key to catalogTable |  Major | Table SQL / Ecosystem | Leonard Xu |  |
| [FLINK-17873](https://issues.apache.org/jira/browse/FLINK-17873) | Add check for max concurrent checkpoints under UC mode |  Major | Runtime / Checkpointing | Yuan Mei | Yuan Mei |
| [FLINK-17773](https://issues.apache.org/jira/browse/FLINK-17773) | Update documentation for new WatermarkGenerator/WatermarkStrategies |  Major | API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-17876](https://issues.apache.org/jira/browse/FLINK-17876) | Add documentation on how to use Python UDF in SQL DDL |  Major | API / Python, Documentation | Wei Zhong | Shuiqiang Chen |
| [FLINK-17843](https://issues.apache.org/jira/browse/FLINK-17843) | Check for RowKind when converting Row to expression |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-17004](https://issues.apache.org/jira/browse/FLINK-17004) | Document the CREATE TABLE ... LIKE syntax in english |  Major | Documentation, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-16210](https://issues.apache.org/jira/browse/FLINK-16210) | Add section about applications and clusters/session in concepts documentation |  Major | Documentation | Aljoscha Krettek | Marta Paes Moreira |
| [FLINK-17456](https://issues.apache.org/jira/browse/FLINK-17456) | Update hive connector tests to execute DDL & DML via TableEnvironment |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-17939](https://issues.apache.org/jira/browse/FLINK-17939) | Translate "Python Table API Installation" page into Chinese |  Major | API / Python, chinese-translation, Documentation | Jark Wu | Jark Wu |
| [FLINK-17936](https://issues.apache.org/jira/browse/FLINK-17936) | Implement type inference for AS |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17898](https://issues.apache.org/jira/browse/FLINK-17898) | Remove Exceptions from signatures of SourceOutput methods |  Blocker | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-17897](https://issues.apache.org/jira/browse/FLINK-17897) | Resolve stability annotations discussion for FLIP-27 in 1.11 |  Blocker | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-17903](https://issues.apache.org/jira/browse/FLINK-17903) | Evolve WatermarkOutputMultiplexer to make it reusable in FLIP-27 Sources |  Major | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-17899](https://issues.apache.org/jira/browse/FLINK-17899) | Integrate FLIP-126 Timestamps and Watermarking with FLIP-27 sources |  Major | API / DataStream | Stephan Ewen | Stephan Ewen |
| [FLINK-17284](https://issues.apache.org/jira/browse/FLINK-17284) | Support serial field type in PostgresCatalog |  Major | Connectors / JDBC | Flavio Pompermaier | Flavio Pompermaier |
| [FLINK-16086](https://issues.apache.org/jira/browse/FLINK-16086) | Translate "Temporal Tables" page of "Streaming Concepts" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | CaoZhen |
| [FLINK-17689](https://issues.apache.org/jira/browse/FLINK-17689) | Add integeration tests for changelog formats |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jark Wu | Jark Wu |
| [FLINK-17882](https://issues.apache.org/jira/browse/FLINK-17882) | Don't allow self referencing structured type |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17880](https://issues.apache.org/jira/browse/FLINK-17880) | Use new type inference for SQL table and scalar functions |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-16986](https://issues.apache.org/jira/browse/FLINK-16986) | Enhance the OperatorEvent handling guarantee during checkpointing. |  Blocker | Runtime / Checkpointing | Jiangjie Qin | Stephan Ewen |
| [FLINK-17887](https://issues.apache.org/jira/browse/FLINK-17887) | Improve interface of ScanFormatFactory and SinkFormatFactory |  Blocker | Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-17340](https://issues.apache.org/jira/browse/FLINK-17340) | Update docs which related to default planner changes |  Blocker | Documentation | Kurt Young | Kurt Young |
| [FLINK-17830](https://issues.apache.org/jira/browse/FLINK-17830) | Add documentation for the new HBase connector |  Blocker | Connectors / HBase, Documentation | Jark Wu | Jark Wu |
| [FLINK-17995](https://issues.apache.org/jira/browse/FLINK-17995) | Redesign Table & SQL Connectors pages |  Blocker | Documentation, Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-16998](https://issues.apache.org/jira/browse/FLINK-16998) | Add a changeflag to Row type |  Major | API / Core | Timo Walther | Timo Walther |
| [FLINK-18011](https://issues.apache.org/jira/browse/FLINK-18011) | Make WatermarkStrategy/WatermarkStrategies more ergonomic |  Blocker | API / Core, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-18079](https://issues.apache.org/jira/browse/FLINK-18079) | KafkaShuffle Manual Tests |  Major | API / DataStream, Runtime / Checkpointing | Yuan Mei | Yuan Mei |
| [FLINK-16975](https://issues.apache.org/jira/browse/FLINK-16975) | Add docs for FileSystem connector |  Blocker | Connectors / FileSystem, Documentation | Leonard Xu | Jingsong Lee |
| [FLINK-15126](https://issues.apache.org/jira/browse/FLINK-15126) | migrate "show functions" from sql cli to sql parser |  Major | Table SQL / Client, Table SQL / Planner | Bowen Li | Zhenqiu Huang |
| [FLINK-17102](https://issues.apache.org/jira/browse/FLINK-17102) | Add -Dkubernetes.container.image=\<ImageName\> for the start-flink-session section |  Minor | Deployment / Kubernetes | Canbin Zheng |  |
| [FLINK-17706](https://issues.apache.org/jira/browse/FLINK-17706) | Clarify licensing situation for flink-benchmarks |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-17705](https://issues.apache.org/jira/browse/FLINK-17705) | Add rat license checks for flink-benchmarks |  Major | Benchmarks | Nico Kruber | Nico Kruber |
| [FLINK-17281](https://issues.apache.org/jira/browse/FLINK-17281) | Add existing flink-benchmarks code |  Major | Benchmarks | Yun Tang | Nico Kruber |
| [FLINK-17974](https://issues.apache.org/jira/browse/FLINK-17974) | Test new Flink Docker image |  Critical | flink-docker | Till Rohrmann | Robert Metzger |
| [FLINK-18029](https://issues.apache.org/jira/browse/FLINK-18029) | Add more ITCases for Kafka with new formats |  Blocker | Connectors / Kafka, Tests | Danny Chen | Jark Wu |
| [FLINK-17776](https://issues.apache.org/jira/browse/FLINK-17776) | Add documentation for DDL&DML in hive dialect |  Blocker | Connectors / Hive, Documentation | Jingsong Lee | Rui Li |
| [FLINK-17635](https://issues.apache.org/jira/browse/FLINK-17635) | Add documentation about view support |  Blocker | Documentation, Table SQL / API | Kurt Young | Leonard Xu |
| [FLINK-16101](https://issues.apache.org/jira/browse/FLINK-16101) | Translate "Hive Functions" page of "Hive Integration" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | zhangzhanhua |
| [FLINK-18085](https://issues.apache.org/jira/browse/FLINK-18085) | Manually test application mode for standalone, Yarn, K8s |  Critical | . | Yang Wang | Yang Wang |
| [FLINK-18170](https://issues.apache.org/jira/browse/FLINK-18170) | E2E tests manually for PostgresCatalog |  Blocker | Connectors / JDBC | Leonard Xu | Leonard Xu |
| [FLINK-18078](https://issues.apache.org/jira/browse/FLINK-18078) | E2E tests manually for Hive streaming dim join |  Blocker | Connectors / Hive, Tests | Jingsong Lee | Rui Li |
| [FLINK-18025](https://issues.apache.org/jira/browse/FLINK-18025) | E2E tests manually for Hive streaming sink |  Blocker | Connectors / Hive, Tests | Danny Chen | Rui Li |
| [FLINK-18028](https://issues.apache.org/jira/browse/FLINK-18028) | E2E tests manually for MySQL JDBC |  Blocker | Connectors / Kafka, Tests | Danny Chen | Shengkai Fang |
| [FLINK-18026](https://issues.apache.org/jira/browse/FLINK-18026) | E2E tests manually for Kafka connector and all formats |  Blocker | Connectors / Kafka, Tests | Danny Chen | Shengkai Fang |
| [FLINK-18195](https://issues.apache.org/jira/browse/FLINK-18195) | Remove references to Expressions.interval(Duration) from (java)docs |  Critical | Documentation, Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-18124](https://issues.apache.org/jira/browse/FLINK-18124) | Add documentation for new FLIP-27 source interface |  Blocker | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-18093](https://issues.apache.org/jira/browse/FLINK-18093) | E2E tests manually for Elasticsearch Sink |  Blocker | Connectors / ElasticSearch, Tests | Jark Wu | Shengkai Fang |
| [FLINK-18133](https://issues.apache.org/jira/browse/FLINK-18133) | Add documentation for the new Avro format |  Blocker | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-16213](https://issues.apache.org/jira/browse/FLINK-16213) | Add "What Is State" section in concepts documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-16208](https://issues.apache.org/jira/browse/FLINK-16208) | Add introduction to timely stream processing concepts documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-18023](https://issues.apache.org/jira/browse/FLINK-18023) | E2E tests manually for new filesystem connector |  Blocker | Connectors / FileSystem, Tests | Danny Chen | Jingsong Lee |
| [FLINK-18084](https://issues.apache.org/jira/browse/FLINK-18084) | Create documentation for the Application Mode |  Major | Client / Job Submission, Documentation | Kostas Kloudas | Kostas Kloudas |
| [FLINK-18099](https://issues.apache.org/jira/browse/FLINK-18099) | Release guard for PyFlink |  Blocker | API / Python | sunjincheng | sunjincheng |
| [FLINK-18077](https://issues.apache.org/jira/browse/FLINK-18077) | E2E tests manually for Hive streaming source |  Blocker | Connectors / Hive, Tests | Jingsong Lee | Rui Li |
| [FLINK-18024](https://issues.apache.org/jira/browse/FLINK-18024) | E2E tests manually for new Hive dependency jars |  Blocker | Connectors / Hive, Tests | Danny Chen | Rui Li |
| [FLINK-18131](https://issues.apache.org/jira/browse/FLINK-18131) | Add documentation for the new JSON format |  Blocker | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Danny Chen |
| [FLINK-17113](https://issues.apache.org/jira/browse/FLINK-17113) | Use executeSql to execute view statements and fix nullability loss problem |  Critical | Table SQL / Client | Zhenghua Gao | Danny Chen |
| [FLINK-18132](https://issues.apache.org/jira/browse/FLINK-18132) | Add documentation for the new CSV format |  Blocker | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Danny Chen |
| [FLINK-18092](https://issues.apache.org/jira/browse/FLINK-18092) | E2E tests manually for HBase |  Blocker | Connectors / HBase, Tests | Jark Wu | Leonard Xu |
| [FLINK-17832](https://issues.apache.org/jira/browse/FLINK-17832) | Add documentation for the new Elasticsearch connector |  Blocker | Connectors / ElasticSearch, Documentation | Jark Wu | Jark Wu |
| [FLINK-17733](https://issues.apache.org/jira/browse/FLINK-17733) | Add documentation for real-time hive |  Blocker | Documentation | Jingsong Lee | Jingsong Lee |
| [FLINK-17829](https://issues.apache.org/jira/browse/FLINK-17829) | Add documentation for the new JDBC connector |  Blocker | Connectors / JDBC, Documentation | Jark Wu | Leonard Xu |
| [FLINK-16375](https://issues.apache.org/jira/browse/FLINK-16375) | Reintroduce registerTableSource/Sink methods for table env |  Blocker | Table SQL / API | Dawid Wysakowicz | Kurt Young |
| [FLINK-17422](https://issues.apache.org/jira/browse/FLINK-17422) | Create user document for the external resource framework and the GPU plugin.. |  Critical | Documentation | Xintong Song | Yangze Guo |
| [FLINK-17831](https://issues.apache.org/jira/browse/FLINK-17831) | Add documentation for the new Kafka connector |  Blocker | Connectors / Kafka, Documentation | Jark Wu | Danny Chen |
| [FLINK-18091](https://issues.apache.org/jira/browse/FLINK-18091) | Test Relocatable Savepoints |  Major | Tests | Stephan Ewen | Congxian Qiu |
| [FLINK-18253](https://issues.apache.org/jira/browse/FLINK-18253) | Add filesystem documentation for Avro |  Critical | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Jingsong Lee |
| [FLINK-18141](https://issues.apache.org/jira/browse/FLINK-18141) | Add documentation for Parquet format |  Blocker | Documentation, FileSystems, Table SQL / Ecosystem | Jark Wu | Jingsong Lee |
| [FLINK-17836](https://issues.apache.org/jira/browse/FLINK-17836) | Add document for Hive dim join |  Blocker | Connectors / Hive, Documentation | Danny Chen | Rui Li |
| [FLINK-18140](https://issues.apache.org/jira/browse/FLINK-18140) | Add documentation for ORC format |  Blocker | Documentation, FileSystems, Table SQL / Ecosystem | Jark Wu | Jingsong Lee |
| [FLINK-17686](https://issues.apache.org/jira/browse/FLINK-17686) | Add document to dataGen, print, blackhole connectors |  Blocker | Documentation, Table SQL / Ecosystem | Jingsong Lee | Jingsong Lee |
| [FLINK-18089](https://issues.apache.org/jira/browse/FLINK-18089) | Add the network zero-copy test into the azure E2E pipeline |  Major | Build System / Azure Pipelines, Runtime / Network | Yun Gao | Yun Gao |
| [FLINK-18248](https://issues.apache.org/jira/browse/FLINK-18248) | Update data type documentation for 1.11 |  Critical | Documentation, Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17976](https://issues.apache.org/jira/browse/FLINK-17976) | Test native K8s integration |  Critical | Runtime / Coordination | Till Rohrmann | Robert Metzger |
| [FLINK-18307](https://issues.apache.org/jira/browse/FLINK-18307) | Replace "slave" file name with "workers" |  Major | Deployment / Scripts | Stephan Ewen | Stephan Ewen |
| [FLINK-18065](https://issues.apache.org/jira/browse/FLINK-18065) | Add documentation for new scalar/table functions |  Critical | Documentation, Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18134](https://issues.apache.org/jira/browse/FLINK-18134) | Add documentation for the Debezium format |  Critical | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-18135](https://issues.apache.org/jira/browse/FLINK-18135) | Add documentation for the Canal format |  Critical | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-17005](https://issues.apache.org/jira/browse/FLINK-17005) | Translate the CREATE TABLE ... LIKE syntax documentation to Chinese |  Major | Documentation | Dawid Wysakowicz | Yichao Yang |
| [FLINK-18299](https://issues.apache.org/jira/browse/FLINK-18299) | Add option in json format to parse timestamp in different standard |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Shengkai Fang | Shengkai Fang |
| [FLINK-17977](https://issues.apache.org/jira/browse/FLINK-17977) | Check log sanity |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-18254](https://issues.apache.org/jira/browse/FLINK-18254) | Add documentation for primary key syntax |  Critical | Documentation, Table SQL / API | Jark Wu | Danny Chen |
| [FLINK-18317](https://issues.apache.org/jira/browse/FLINK-18317) | Verify dependencies licenses in Flink 1.11 |  Blocker | Build System | Piotr Nowojski | Chesnay Schepler |
| [FLINK-18390](https://issues.apache.org/jira/browse/FLINK-18390) | Translate "JSON Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | Shengkai Fang |
| [FLINK-18392](https://issues.apache.org/jira/browse/FLINK-18392) | Translate "Debezium Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | JasonLee |
| [FLINK-18385](https://issues.apache.org/jira/browse/FLINK-18385) | Translate "DataGen SQL Connector" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | venn wu |
| [FLINK-18066](https://issues.apache.org/jira/browse/FLINK-18066) | Add documentation for how to develop a new table source/sink |  Critical | Documentation, Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18380](https://issues.apache.org/jira/browse/FLINK-18380) | Add a table source example |  Major | Examples, Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-17599](https://issues.apache.org/jira/browse/FLINK-17599) | Update documents due to FLIP-84 |  Blocker | Documentation, Table SQL / API | Kurt Young | godfrey he |
| [FLINK-18396](https://issues.apache.org/jira/browse/FLINK-18396) | Translate "Formats Overview" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | dalongliu |
| [FLINK-18386](https://issues.apache.org/jira/browse/FLINK-18386) | Translate "Print SQL Connector" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | houmaozheng |
| [FLINK-18393](https://issues.apache.org/jira/browse/FLINK-18393) | Translate "Canal Format" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | Zhiye Zou |
| [FLINK-18198](https://issues.apache.org/jira/browse/FLINK-18198) | Translate "HBase SQL Connector" page into Chinese |  Major | chinese-translation, Documentation, Table SQL / Ecosystem | Jark Wu | YiQiang Zeng |
| [FLINK-18064](https://issues.apache.org/jira/browse/FLINK-18064) | Update documentation taking unaligned checkpoints into the account |  Critical | Documentation, Runtime / Checkpointing | Piotr Nowojski | Arvid Heise |
| [FLINK-17534](https://issues.apache.org/jira/browse/FLINK-17534) | Update the interfaces to PublicEvolving and add documentation. |  Major | Connectors / Common | Jiangjie Qin |  |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11767](https://issues.apache.org/jira/browse/FLINK-11767) | Introduce new TypeSerializerUpgradeTestBase, new PojoSerializerUpgradeTest |  Blocker | API / Type Serialization System, Tests | vinoyang | Aljoscha Krettek |
| [FLINK-15444](https://issues.apache.org/jira/browse/FLINK-15444) | Make the component AbstractInvokable in CheckpointBarrierHandler NonNull |  Minor | Runtime / Checkpointing | Zhijiang | Zhijiang |
| [FLINK-14313](https://issues.apache.org/jira/browse/FLINK-14313) | Add Gojek to Chinese Powered By page |  Minor | chinese-translation, Project Website | Fabian Hueske | Jiawei Wu |
| [FLINK-16004](https://issues.apache.org/jira/browse/FLINK-16004) | Exclude flink-rocksdb-state-memory-control-test jars from the dist |  Major | Tests | Yu Li | Chesnay Schepler |
| [FLINK-16136](https://issues.apache.org/jira/browse/FLINK-16136) | YarnPrioritySchedulingITCase.yarnApplication\_submissionWithPriority\_shouldRespectPriority() fails |  Major | Deployment / YARN, Tests | Robert Metzger | Robert Metzger |
| [FLINK-16530](https://issues.apache.org/jira/browse/FLINK-16530) | Add documentation about "GROUPING SETS" and "CUBE" support in streaming mode |  Major | Documentation, Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-16554](https://issues.apache.org/jira/browse/FLINK-16554) | Extract static classes from StreamTask |  Minor | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-16454](https://issues.apache.org/jira/browse/FLINK-16454) | Update the copyright year in NOTICE files |  Blocker | Release System | Zhijiang | Zhijiang |
| [FLINK-15991](https://issues.apache.org/jira/browse/FLINK-15991) | Create Chinese documentation for FLIP-49 TM memory model |  Major | Documentation | Andrey Zagrebin | Xintong Song |
| [FLINK-16592](https://issues.apache.org/jira/browse/FLINK-16592) | The doc of Streaming File Sink has a mistake of grammar |  Minor | Connectors / FileSystem, Documentation | Chen | Chen |
| [FLINK-16653](https://issues.apache.org/jira/browse/FLINK-16653) | Introduce ResultPartitionWriterTestBase for simplifying tests |  Major | Runtime / Network, Tests | Zhijiang | Zhijiang |
| [FLINK-16690](https://issues.apache.org/jira/browse/FLINK-16690) | Refactor StreamTaskTest to reuse TestTaskBuilder and MockStreamTaskBuilder |  Major | Runtime / Task, Tests | Zhijiang | Zhijiang |
| [FLINK-16434](https://issues.apache.org/jira/browse/FLINK-16434) | Add document to explain how to pack hive with their own hive dependencies |  Major | Connectors / Hive, Documentation | Jingsong Lee |  |
| [FLINK-16712](https://issues.apache.org/jira/browse/FLINK-16712) | Refactor StreamTask to construct final fields |  Major | Runtime / Task | Zhijiang | Zhijiang |
| [FLINK-16778](https://issues.apache.org/jira/browse/FLINK-16778) | the java e2e profile isn't setting the hadoop switch on Azure |  Major | Build System / Azure Pipelines, Test Infrastructure | Robert Metzger | Robert Metzger |
| [FLINK-15901](https://issues.apache.org/jira/browse/FLINK-15901) | Support partitioned generic table in HiveCatalog |  Major | Connectors / Hive | Rui Li | Jingsong Lee |
| [FLINK-17345](https://issues.apache.org/jira/browse/FLINK-17345) | Support register and get Python UDF in Catalog |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-15591](https://issues.apache.org/jira/browse/FLINK-15591) | make up for feature parity by supporting CREATE TEMPORARY TABLE/VIEW in DDL |  Major | Table SQL / API | Bowen Li | Zhenghua Gao |
| [FLINK-17473](https://issues.apache.org/jira/browse/FLINK-17473) | Remove unused classes ArchivedExecutionBuilder, ArchivedExecutionVertexBuilder, and ArchivedExecutionJobVertexBuilder |  Major | Runtime / Coordination, Tests | Gary Yao | Gary Yao |
| [FLINK-17616](https://issues.apache.org/jira/browse/FLINK-17616) | Temporarily increase akka.ask.timeout in TPC-DS e2e test |  Critical | Runtime / Coordination, Tests | Gary Yao | Gary Yao |
| [FLINK-17665](https://issues.apache.org/jira/browse/FLINK-17665) | Serialize DataType of Buffer into BufferResponse |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-17956](https://issues.apache.org/jira/browse/FLINK-17956) | Add Flink 1.11 MigrationVersion |  Major | API / Core | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-18032](https://issues.apache.org/jira/browse/FLINK-18032) | Remove outdated sections in migration guide |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-18120](https://issues.apache.org/jira/browse/FLINK-18120) | Don't expand documentation sections by default |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15339](https://issues.apache.org/jira/browse/FLINK-15339) | Correct the terminology of "Time-windowed Join" to "Interval Join" in Table API & SQL |  Blocker | Documentation, Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-17982](https://issues.apache.org/jira/browse/FLINK-17982) | Resolve TODO's in concepts documentation |  Blocker | Documentation | Seth Wiesman | Aljoscha Krettek |
| [FLINK-17795](https://issues.apache.org/jira/browse/FLINK-17795) | Add an example to show how to leverage GPU resources |  Critical | Examples | Yangze Guo | Yangze Guo |
| [FLINK-18021](https://issues.apache.org/jira/browse/FLINK-18021) | [Umbrella] Manually tests for 1.11 SQL features |  Blocker | Table SQL / API | Danny Chen |  |
| [FLINK-15687](https://issues.apache.org/jira/browse/FLINK-15687) | Potential test instabilities due to concurrent access to TaskSlotTable. |  Critical | Runtime / Coordination, Tests | Kostas Kloudas | Xintong Song |
| [FLINK-18224](https://issues.apache.org/jira/browse/FLINK-18224) | Add document about sql client's tableau result mode |  Blocker | Documentation, Table SQL / Client | Kurt Young | Kurt Young |
| [FLINK-18315](https://issues.apache.org/jira/browse/FLINK-18315) | Insert into partitioned table can fail with values |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-18377](https://issues.apache.org/jira/browse/FLINK-18377) | Rename "Flink Master" back to JobManager in documentation |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-18411](https://issues.apache.org/jira/browse/FLINK-18411) | CollectionExecutorTest failed to compiled in release-1.11 |  Blocker | Tests | xiaojin.wy | Jark Wu |
| [FLINK-18313](https://issues.apache.org/jira/browse/FLINK-18313) | Update Hive dialect doc about VIEW |  Blocker | Connectors / Hive, Documentation | Rui Li | Rui Li |
| [FLINK-18416](https://issues.apache.org/jira/browse/FLINK-18416) | Deprecate TableEnvironment#connect API |  Major | . | Jark Wu | Jark Wu |
| [FLINK-18349](https://issues.apache.org/jira/browse/FLINK-18349) | Add Flink 1.11 release notes to documentation |  Critical | Documentation | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18497](https://issues.apache.org/jira/browse/FLINK-18497) | Publish Dockerfiles for release 1.11.0 |  Critical | Release System | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18671](https://issues.apache.org/jira/browse/FLINK-18671) | Update upgrade compatibility table (docs/ops/upgrading.md) for 1.11.0 |  Critical | Documentation | Piotr Nowojski | Piotr Nowojski |


