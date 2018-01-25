
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

## Release 1.5.0 - Unreleased (as of 2018-01-25)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6951](https://issues.apache.org/jira/browse/FLINK-6951) | Incompatible versions of httpcomponents jars for Flink kinesis connector |  Critical | Kinesis Connector | Ted Yu | Bowen Li |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8038](https://issues.apache.org/jira/browse/FLINK-8038) | Support MAP value constructor |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-8118](https://issues.apache.org/jira/browse/FLINK-8118) | Allow to specify the offsets of KafkaTableSources |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-8190](https://issues.apache.org/jira/browse/FLINK-8190) | Add extra FlinkKafkaConsumer constructors to expose pattern-based topic subscription functionality |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7918](https://issues.apache.org/jira/browse/FLINK-7918) | Run AbstractTestBase tests on Flip-6 MiniCluster |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8317](https://issues.apache.org/jira/browse/FLINK-8317) | Enable Triggering of Savepoints via RestfulGateway |  Major | Distributed Coordination, REST | Gary Yao | Gary Yao |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7872](https://issues.apache.org/jira/browse/FLINK-7872) | Set ACCESS\_CONTROL\_ALLOW\_ORIGIN header in HandlerUtils#sendResponse |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8004](https://issues.apache.org/jira/browse/FLINK-8004) | Sample code in Debugging & Monitoring Metrics documentation section is not valid java |  Minor | Documentation, Metrics | Andreas Hecke | Chesnay Schepler |
| [FLINK-8000](https://issues.apache.org/jira/browse/FLINK-8000) | Sort REST handler URLs in RestServerEndpoint |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7986](https://issues.apache.org/jira/browse/FLINK-7986) | Introduce FilterSetOpTransposeRule to Flink |  Trivial | . | Ruidong Li | Ruidong Li |
| [FLINK-8095](https://issues.apache.org/jira/browse/FLINK-8095) | Introduce ProjectSetOpTransposeRule to Flink |  Major | . | Ruidong Li | Ruidong Li |
| [FLINK-4600](https://issues.apache.org/jira/browse/FLINK-4600) | Support min/max aggregations for Date/Time/Timestamp/Intervals |  Major | Table API & SQL | Timo Walther | Leo Deng |
| [FLINK-8123](https://issues.apache.org/jira/browse/FLINK-8123) | Bundle python library in jar |  Minor | Python API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8113](https://issues.apache.org/jira/browse/FLINK-8113) | Bump maven-shade-plugin to 3.0.0 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8084](https://issues.apache.org/jira/browse/FLINK-8084) | Remove japicmp deactivations in several modules |  Trivial | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8081](https://issues.apache.org/jira/browse/FLINK-8081) | Annotate MetricRegistry#getReporters() with @VisibleForTesting |  Major | Metrics, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8076](https://issues.apache.org/jira/browse/FLINK-8076) | Upgrade KinesisProducer to 0.10.6 to set properties approperiately |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-8149](https://issues.apache.org/jira/browse/FLINK-8149) | Replace usages of deprecated SerializationSchema |  Major | Kinesis Connector | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-7851](https://issues.apache.org/jira/browse/FLINK-7851) | Improve scheduling balance in case of fewer sub tasks than input operator |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8193](https://issues.apache.org/jira/browse/FLINK-8193) | Rework quickstart exclusions |  Major | Build System, Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8133](https://issues.apache.org/jira/browse/FLINK-8133) | Generate documentation for new REST API |  Blocker | Documentation, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7692](https://issues.apache.org/jira/browse/FLINK-7692) | Support user-defined variables in Metrics |  Minor | Metrics | Chesnay Schepler | Wei-Che Wei |
| [FLINK-8239](https://issues.apache.org/jira/browse/FLINK-8239) | Extend StreamTaskTestHarness to support TwoInput head operators |  Major | Streaming, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8238](https://issues.apache.org/jira/browse/FLINK-8238) | StreamTaskTestHarness should only allow one setup call |  Major | Streaming, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8080](https://issues.apache.org/jira/browse/FLINK-8080) | Rework "metrics.reporters" config option to an optional include list |  Trivial | Configuration, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8241](https://issues.apache.org/jira/browse/FLINK-8241) | Remove ResultPartitionWriter related PrepareForTest annotations |  Major | Network, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8085](https://issues.apache.org/jira/browse/FLINK-8085) | Thin out the LogicalSlot interface |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8078](https://issues.apache.org/jira/browse/FLINK-8078) | Decouple Execution from actual slot implementation |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7878](https://issues.apache.org/jira/browse/FLINK-7878) | Extend the resource type user can define in ResourceSpec |  Major | DataSet API, DataStream API | shuai.xu | shuai.xu |
| [FLINK-7928](https://issues.apache.org/jira/browse/FLINK-7928) | Extend the filed in ResourceProfile for precisely calculating the resource of a task manager |  Major | JobManager, ResourceManager | shuai.xu | shuai.xu |
| [FLINK-8264](https://issues.apache.org/jira/browse/FLINK-8264) | Add Scala to the parent-first loading patterns |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8218](https://issues.apache.org/jira/browse/FLINK-8218) | move flink-connector-kinesis examples from /src to /test |  Minor | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-8216](https://issues.apache.org/jira/browse/FLINK-8216) | Unify test utils in flink-connector-kinesis |  Minor | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-7452](https://issues.apache.org/jira/browse/FLINK-7452) | Add helper methods for all built-in Flink types to Types |  Major | Type Serialization System | Timo Walther | Timo Walther |
| [FLINK-8223](https://issues.apache.org/jira/browse/FLINK-8223) | Update Hadoop versions |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-8171](https://issues.apache.org/jira/browse/FLINK-8171) | Remove work arounds in Flip6LocalStreamEnvironment |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8330](https://issues.apache.org/jira/browse/FLINK-8330) | Remove FlinkYarnCLI |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8257](https://issues.apache.org/jira/browse/FLINK-8257) | Unify the value checks for setParallelism() |  Major | Configuration | Xingcan Cui | Xingcan Cui |
| [FLINK-8258](https://issues.apache.org/jira/browse/FLINK-8258) | Enable query configuration for batch queries |  Major | Table API & SQL | Xingcan Cui | Xingcan Cui |
| [FLINK-8122](https://issues.apache.org/jira/browse/FLINK-8122) | Name all table sinks and sources |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-8139](https://issues.apache.org/jira/browse/FLINK-8139) | Check for proper equals() and hashCode() when registering a table |  Major | Table API & SQL | Timo Walther | Aegeaner |
| [FLINK-8346](https://issues.apache.org/jira/browse/FLINK-8346) | add S3 signature v4 workaround to docs |  Major | Documentation, FileSystem | Nico Kruber | Nico Kruber |
| [FLINK-8260](https://issues.apache.org/jira/browse/FLINK-8260) | Document API of Kafka 0.11 Producer |  Critical | Documentation | Fabian Hueske | Tzu-Li (Gordon) Tai |
| [FLINK-8287](https://issues.apache.org/jira/browse/FLINK-8287) | Flink Kafka Producer docs should clearly state what partitioner is used by default |  Major | Documentation, Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8206](https://issues.apache.org/jira/browse/FLINK-8206) | Clean up and refactor RecordWriter Tests |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8178](https://issues.apache.org/jira/browse/FLINK-8178) | Introduce not threadsafe write only BufferBuilder |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8250](https://issues.apache.org/jira/browse/FLINK-8250) | Remove RecordSerializer#instantiateMetrics |  Trivial | Metrics, Type Serialization System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8280](https://issues.apache.org/jira/browse/FLINK-8280) | Enable checkstyle for org.apache.flink.runtime.blob |  Major | Checkstyle | Nico Kruber | Nico Kruber |
| [FLINK-8292](https://issues.apache.org/jira/browse/FLINK-8292) | Remove unnecessary force cast in DataStreamSource |  Trivial | DataStream API | Matrix42 |  |
| [FLINK-7909](https://issues.apache.org/jira/browse/FLINK-7909) | Unify cluster creation for test bases |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-7904](https://issues.apache.org/jira/browse/FLINK-7904) | Enable Flip6 build profile on Travis |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-7903](https://issues.apache.org/jira/browse/FLINK-7903) | Add Flip6 build profile |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8381](https://issues.apache.org/jira/browse/FLINK-8381) | Document more flexible schema definition |  Major | Documentation, Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-8375](https://issues.apache.org/jira/browse/FLINK-8375) | Remove unnecessary synchronization in ResultPartition |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8389](https://issues.apache.org/jira/browse/FLINK-8389) | Release all slots when terminating the JobMaster |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7910](https://issues.apache.org/jira/browse/FLINK-7910) | Generalize TestEnvironment/TestStreamEnvironment to be used with Flip-6 MiniCluster |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-7475](https://issues.apache.org/jira/browse/FLINK-7475) | support update() in ListState |  Major | Core, DataStream API, State Backends, Checkpointing | yf | Bowen Li |
| [FLINK-8404](https://issues.apache.org/jira/browse/FLINK-8404) | Mark Flip-6 tests with Flip6 annotation |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-7747](https://issues.apache.org/jira/browse/FLINK-7747) | remove the ResultPartitionWriter wrapper |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-8271](https://issues.apache.org/jira/browse/FLINK-8271) | upgrade from deprecated classes to AmazonKinesis |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-8324](https://issues.apache.org/jira/browse/FLINK-8324) | Expose another offsets metrics by using new metric API to specify user defined variables |  Trivial | Kafka Connector | Wei-Che Wei | Wei-Che Wei |
| [FLINK-8162](https://issues.apache.org/jira/browse/FLINK-8162) | Kinesis Connector to report millisBehindLatest metric |  Minor | Kinesis Connector | Cristian |  |
| [FLINK-8296](https://issues.apache.org/jira/browse/FLINK-8296) | Rework FlinkKafkaConsumerBestTest to not use Java reflection for dependency injection |  Major | Kafka Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8082](https://issues.apache.org/jira/browse/FLINK-8082) | Bump version compatibility check to 1.4 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8279](https://issues.apache.org/jira/browse/FLINK-8279) | Use Mesos/YARN temp directories as fallback for BlobServer/Cache temp directories |  Major | Distributed Coordination, Network | Nico Kruber | Nico Kruber |
| [FLINK-8350](https://issues.apache.org/jira/browse/FLINK-8350) | replace "taskmanager.tmp.dirs" with "env.io.tmp.dirs" for all components |  Major | Cluster Management, Configuration | Nico Kruber | Nico Kruber |
| [FLINK-8455](https://issues.apache.org/jira/browse/FLINK-8455) | Add Hadoop to the parent-first loading patterns |  Blocker | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8469](https://issues.apache.org/jira/browse/FLINK-8469) | relocate and unify RocksDB option params in RocksDBPerformanceTest |  Minor | State Backends, Checkpointing | Bowen Li | Bowen Li |
| [FLINK-8365](https://issues.apache.org/jira/browse/FLINK-8365) | Relax List type in HeapListState and HeapKeyedStateBackend |  Major | State Backends, Checkpointing | Bowen Li | Bowen Li |
| [FLINK-8441](https://issues.apache.org/jira/browse/FLINK-8441) | serialize values and value separator directly to stream in RocksDBListState |  Major | State Backends, Checkpointing | Bowen Li | Bowen Li |
| [FLINK-8473](https://issues.apache.org/jira/browse/FLINK-8473) | JarListHandler may fail with NPE if directory is deleted |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8079](https://issues.apache.org/jira/browse/FLINK-8079) | Skip remaining E2E tests if one failed |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8361](https://issues.apache.org/jira/browse/FLINK-8361) | Remove create\_release\_files.sh |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-7720](https://issues.apache.org/jira/browse/FLINK-7720) | Centralize creation of backends and state related resources |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-7719](https://issues.apache.org/jira/browse/FLINK-7719) | Send checkpoint id to task as part of deployment descriptor when resuming |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7870](https://issues.apache.org/jira/browse/FLINK-7870) | SlotPool should cancel the slot request to RM if not need any more. |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8010](https://issues.apache.org/jira/browse/FLINK-8010) | Bump remaining flink-shaded dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7773](https://issues.apache.org/jira/browse/FLINK-7773) | Test instability in UtilsTest#testYarnFlinkResourceManagerJobManagerLostLeadership |  Critical | Tests, YARN | Nico Kruber | Till Rohrmann |
| [FLINK-7971](https://issues.apache.org/jira/browse/FLINK-7971) | Fix potential NPE with inconsistent state |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-8012](https://issues.apache.org/jira/browse/FLINK-8012) | Table with time attribute cannot be written to CsvTableSink |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7922](https://issues.apache.org/jira/browse/FLINK-7922) | leastRestrictive in FlinkTypeFactory does not resolve composite type correctly |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-8002](https://issues.apache.org/jira/browse/FLINK-8002) | Incorrect join window boundaries for LESS\_THAN and GREATER\_THAN predicates |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6434](https://issues.apache.org/jira/browse/FLINK-6434) | There may be allocatedSlots leak in SlotPool |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8040](https://issues.apache.org/jira/browse/FLINK-8040) | Test instability ResourceGuard#testCloseBlockIfAcquired |  Major | Core, Tests | Gary Yao | Stefan Richter |
| [FLINK-7657](https://issues.apache.org/jira/browse/FLINK-7657) | SQL Timestamps Converted To Wrong Type By Optimizer Causing ClassCastException |  Blocker | Table API & SQL | Kent Murra | Kent Murra |
| [FLINK-7451](https://issues.apache.org/jira/browse/FLINK-7451) | Query fails when non-ascii characters are used in string literals |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-8013](https://issues.apache.org/jira/browse/FLINK-8013) | Check of AggregateFunction merge function signature is too strict. |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-7678](https://issues.apache.org/jira/browse/FLINK-7678) | SQL UserDefineTableFunction does not take CompositeType input correctly |  Major | Table API & SQL | Rong Rong | Timo Walther |
| [FLINK-7490](https://issues.apache.org/jira/browse/FLINK-7490) | UDF Agg throws Exception when flink-table is loaded with AppClassLoader |  Blocker | Table API & SQL | Miguel Rui Pereira Marques | Fabian Hueske |
| [FLINK-7942](https://issues.apache.org/jira/browse/FLINK-7942) | NPE when apply FilterJoinRule |  Major | Table API & SQL | lincoln.lee | Timo Walther |
| [FLINK-7698](https://issues.apache.org/jira/browse/FLINK-7698) | Join with null literals leads to NPE |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-7988](https://issues.apache.org/jira/browse/FLINK-7988) | HadoopS3FileSystemITCase leaves test directories behind in S3 |  Major | filesystem-connector, Tests | Nico Kruber | Nico Kruber |
| [FLINK-8096](https://issues.apache.org/jira/browse/FLINK-8096) | Fix time material issue when write to TableSink |  Blocker | Table API & SQL | Dian Fu | Dian Fu |
| [FLINK-8136](https://issues.apache.org/jira/browse/FLINK-8136) | Cast exception error on Flink SQL when using DATE\_FORMAT |  Blocker | Table API & SQL | David Marcos | Timo Walther |
| [FLINK-5465](https://issues.apache.org/jira/browse/FLINK-5465) | RocksDB fails with segfault while calling AbstractRocksDBState.clear() |  Major | State Backends, Checkpointing | Robert Metzger | Stefan Richter |
| [FLINK-8126](https://issues.apache.org/jira/browse/FLINK-8126) | Update and fix checkstyle |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-8161](https://issues.apache.org/jira/browse/FLINK-8161) | Flakey YARNSessionCapacitySchedulerITCase on Travis |  Critical | Tests, YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-8150](https://issues.apache.org/jira/browse/FLINK-8150) | WebUI in FLIP-6 mode exposes TaskManagerConnection IDs as TaskManager IDs |  Blocker | Distributed Coordination, REST | Gary Yao | Till Rohrmann |
| [FLINK-7989](https://issues.apache.org/jira/browse/FLINK-7989) | flink-dist jar is deployed twice onto YARN |  Major | YARN | Nico Kruber | Nico Kruber |
| [FLINK-8151](https://issues.apache.org/jira/browse/FLINK-8151) | [Table] Map equality check to use entrySet equality |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-8173](https://issues.apache.org/jira/browse/FLINK-8173) | Fix input unboxing and support Avro Utf8 in Table API |  Major | Table API & SQL | Tao Xia | Timo Walther |
| [FLINK-8184](https://issues.apache.org/jira/browse/FLINK-8184) | Return raw JsonPlan instead of escaped string value in JobDetailsInfo |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7395](https://issues.apache.org/jira/browse/FLINK-7395) | NumBytesOut metric in RecordWriter call synchronized method |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8194](https://issues.apache.org/jira/browse/FLINK-8194) | Disable akka.actor.warn-about-java-serializer-usage to suppress akka warnings when using the Java serializer |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8196](https://issues.apache.org/jira/browse/FLINK-8196) | Fix Hadoop Servlet Dependency Exclusion |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-8198](https://issues.apache.org/jira/browse/FLINK-8198) | Useless check against -1 in LimitedConnectionsFileSystem#fromConfig |  Minor | . | Ted Yu | Stephan Ewen |
| [FLINK-8007](https://issues.apache.org/jira/browse/FLINK-8007) | Move TestMeter class to test scope |  Trivial | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8204](https://issues.apache.org/jira/browse/FLINK-8204) | Failing JobManagerLeaderSessionIDITCase on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8174](https://issues.apache.org/jira/browse/FLINK-8174) | Mesos RM unable to accept offers for unreserved resources |  Blocker | Mesos | Eron Wright | Eron Wright |
| [FLINK-8145](https://issues.apache.org/jira/browse/FLINK-8145) | IOManagerAsync not properly shut down in various tests |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-8235](https://issues.apache.org/jira/browse/FLINK-8235) | Cannot run spotbugs for single module |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8213](https://issues.apache.org/jira/browse/FLINK-8213) | Prevent potential metric-related ClassCastExceptions |  Minor | Metrics, Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8176](https://issues.apache.org/jira/browse/FLINK-8176) | Dispatcher does not start SubmittedJobGraphStore |  Major | Distributed Coordination, Job-Submission, YARN | Gary Yao | Gary Yao |
| [FLINK-8261](https://issues.apache.org/jira/browse/FLINK-8261) | Typos in the shading exclusion for jsr305 in the quickstarts |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8263](https://issues.apache.org/jira/browse/FLINK-8263) | Wrong packaging of flink-core in scala quickstarty |  Blocker | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8262](https://issues.apache.org/jira/browse/FLINK-8262) | IndividualRestartsConcurrencyTest.testLocalFailureFailsPendingCheckpoints fails on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8249](https://issues.apache.org/jira/browse/FLINK-8249) | Kinesis Producer didnt configure region |  Major | Kinesis Connector | Joao Boto |  |
| [FLINK-8215](https://issues.apache.org/jira/browse/FLINK-8215) | Support implicit type widening for array/map constructors in SQL |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-8295](https://issues.apache.org/jira/browse/FLINK-8295) | Netty shading does not work properly |  Major | Cassandra Connector, Core | Timo Walther | Nico Kruber |
| [FLINK-8278](https://issues.apache.org/jira/browse/FLINK-8278) | Scala examples in Metric documentation do not compile |  Major | Documentation | Fabian Hueske | Xingcan Cui |
| [FLINK-5506](https://issues.apache.org/jira/browse/FLINK-5506) | Java 8 - CommunityDetection.java:158 - java.lang.NullPointerException |  Major | Gelly | Miguel E. Coimbra | Greg Hogan |
| [FLINK-8326](https://issues.apache.org/jira/browse/FLINK-8326) | CheckpointCoordinatorTest#testRestoreLatestCheckpointedStateScaleOut() didn't use the correct parameter to trigger test function |  Minor | State Backends, Checkpointing | Wei-Che Wei | Wei-Che Wei |
| [FLINK-8203](https://issues.apache.org/jira/browse/FLINK-8203) | Make schema definition of DataStream/DataSet to Table conversion more flexible |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-8373](https://issues.apache.org/jira/browse/FLINK-8373) | Inconsistencies in some FileSystem directory functions |  Minor | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8374](https://issues.apache.org/jira/browse/FLINK-8374) | Unstable Yarn tests due to Akka Shutdown Exception Logging |  Critical | Tests | Stephan Ewen | Stephan Ewen |
| [FLINK-8265](https://issues.apache.org/jira/browse/FLINK-8265) | Missing jackson dependency for flink-mesos |  Critical | Mesos | Eron Wright | Eron Wright |
| [FLINK-8116](https://issues.apache.org/jira/browse/FLINK-8116) | Stale comments referring to Checkpointed interface |  Trivial | DataStream API, Documentation | Gabor Gevay |  |
| [FLINK-8268](https://issues.apache.org/jira/browse/FLINK-8268) | Test instability for 'TwoPhaseCommitSinkFunctionTest' |  Critical | Tests | Stephan Ewen | Piotr Nowojski |
| [FLINK-8298](https://issues.apache.org/jira/browse/FLINK-8298) | Shutdown MockEnvironment |  Major | Tests | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8283](https://issues.apache.org/jira/browse/FLINK-8283) | FlinkKafkaConsumerBase failing on Travis with no output in 10min |  Critical | Kafka Connector, Tests | Nico Kruber | Tzu-Li (Gordon) Tai |
| [FLINK-8388](https://issues.apache.org/jira/browse/FLINK-8388) | Snapshot documentation redirects to 1.4 |  Major | Documentation, Project Website | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8200](https://issues.apache.org/jira/browse/FLINK-8200) | RocksDBAsyncSnapshotTest should use temp fold instead of fold with fixed name |  Major | . | Wenlong Lyu | Wenlong Lyu |
| [FLINK-8393](https://issues.apache.org/jira/browse/FLINK-8393) | Reconnect to last known JobMaster when connection is lost |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8400](https://issues.apache.org/jira/browse/FLINK-8400) | Use the lexicographic smallest attribute as the common group id when extract unique key |  Major | Table API & SQL | Hequn Cheng | Hequn Cheng |
| [FLINK-7949](https://issues.apache.org/jira/browse/FLINK-7949) | AsyncWaitOperator is not restarting when queue is full |  Critical | Streaming | Bartłomiej Tartanus | Bartłomiej Tartanus |
| [FLINK-8371](https://issues.apache.org/jira/browse/FLINK-8371) | Buffers are not recycled in a non-spilled SpillableSubpartition upon release |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-8226](https://issues.apache.org/jira/browse/FLINK-8226) | Dangling reference generated after NFA clean up timed out SharedBufferEntry |  Major | CEP | Dian Fu | Dian Fu |
| [FLINK-8288](https://issues.apache.org/jira/browse/FLINK-8288) | Register the web interface url to yarn for yarn job mode |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8420](https://issues.apache.org/jira/browse/FLINK-8420) | Timeout exceptions are not properly recognized by RetryingRegistration |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8201](https://issues.apache.org/jira/browse/FLINK-8201) | YarnResourceManagerTest causes license checking failure |  Major | . | Wenlong Lyu | Wenlong Lyu |
| [FLINK-8306](https://issues.apache.org/jira/browse/FLINK-8306) | FlinkKafkaConsumerBaseTest has invalid mocks on final methods |  Critical | Kafka Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8399](https://issues.apache.org/jira/browse/FLINK-8399) | Use independent configurations for the different timeouts in slot manager |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8289](https://issues.apache.org/jira/browse/FLINK-8289) | The RestServerEndpoint should return the address with real ip when getRestAdddress |  Major | . | shuai.xu | shuai.xu |
| [FLINK-8049](https://issues.apache.org/jira/browse/FLINK-8049) | RestClient#shutdown() ignores exceptions thrown when shutting down netty. |  Critical | REST | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8050](https://issues.apache.org/jira/browse/FLINK-8050) | RestServer#shutdown() ignores exceptions thrown when shutting down netty. |  Major | REST | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7777](https://issues.apache.org/jira/browse/FLINK-7777) | Bump japicmp to 0.11.0 |  Minor | Build System | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-8156](https://issues.apache.org/jira/browse/FLINK-8156) | Bump commons-beanutils version to 1.9.3 |  Major | Build System | Hai Zhou UTC+8 | Hai Zhou UTC+8 |
| [FLINK-8461](https://issues.apache.org/jira/browse/FLINK-8461) | Wrong logger configurations for shaded Netty |  Major | Logging | Stephan Ewen | Stephan Ewen |
| [FLINK-8355](https://issues.apache.org/jira/browse/FLINK-8355) | DataSet Should not union a NULL row for AGG without GROUP BY clause. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-8325](https://issues.apache.org/jira/browse/FLINK-8325) | Add COUNT AGG support constant parameter, i.e. COUNT(\*), COUNT(1) |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-8248](https://issues.apache.org/jira/browse/FLINK-8248) | RocksDB state backend Checkpointing is not working with KeyedCEP in 1.4 |  Major | CEP, State Backends, Checkpointing | jia liu |  |
| [FLINK-8462](https://issues.apache.org/jira/browse/FLINK-8462) | TaskExecutor does not verify RM heartbeat timeouts |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8463](https://issues.apache.org/jira/browse/FLINK-8463) | Remove unnecessary thread blocking in RestClient#submitRequest |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8120](https://issues.apache.org/jira/browse/FLINK-8120) | Cannot access Web UI from YARN application overview in FLIP-6 mode |  Blocker | YARN | Gary Yao | Till Rohrmann |
| [FLINK-8411](https://issues.apache.org/jira/browse/FLINK-8411) | HeapListState#add(null) will wipe out entire list state |  Critical | State Backends, Checkpointing | Bowen Li | Bowen Li |
| [FLINK-8433](https://issues.apache.org/jira/browse/FLINK-8433) | Update code example for "Managed Operator State" documentation |  Major | Documentation, State Backends, Checkpointing | Fabian Hueske | mingleizhang |
| [FLINK-8499](https://issues.apache.org/jira/browse/FLINK-8499) | Kryo must not be child-first loaded |  Blocker | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8466](https://issues.apache.org/jira/browse/FLINK-8466) | ErrorInfo needs to hold Exception as SerializedThrowable |  Blocker | Local Runtime | Jelmer Kuperus | Stephan Ewen |
| [FLINK-8406](https://issues.apache.org/jira/browse/FLINK-8406) | BucketingSink does not detect hadoop file systems |  Blocker | FileSystem | Chesnay Schepler | Stephan Ewen |
| [FLINK-8352](https://issues.apache.org/jira/browse/FLINK-8352) | Flink UI Reports No Error on Job Submission Failures |  Major | Webfrontend | Elias Levy | Steven Langbroek |
| [FLINK-8146](https://issues.apache.org/jira/browse/FLINK-8146) | Potential resource leak in PythonPlanBinder#unzipPythonLibrary |  Major | Python API | Ted Yu | Chesnay Schepler |
| [FLINK-8485](https://issues.apache.org/jira/browse/FLINK-8485) | Running Flink inside Intellij no longer works after upgrading from 1.3.2 to 1.4.0 |  Blocker | Core | Xuan Nguyen | Till Rohrmann |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8251](https://issues.apache.org/jira/browse/FLINK-8251) | Add network (micro) benchmarks in Flink |  Major | Network, Tests | Nico Kruber |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7941](https://issues.apache.org/jira/browse/FLINK-7941) | Port SubtasksTimesHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Fang Yong | Fang Yong |
| [FLINK-7706](https://issues.apache.org/jira/browse/FLINK-7706) | Port JobAccumulatorsHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Hai Zhou UTC+8 |
| [FLINK-7705](https://issues.apache.org/jira/browse/FLINK-7705) | Port JobDetailsHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Till Rohrmann |
| [FLINK-7076](https://issues.apache.org/jira/browse/FLINK-7076) | Implement container release to support dynamic scaling |  Major | ResourceManager | Till Rohrmann | Shuyi Chen |
| [FLINK-7996](https://issues.apache.org/jira/browse/FLINK-7996) | Add support for (left.time = right.time) predicates to window join. |  Critical | Table API & SQL | Fabian Hueske | Xingcan Cui |
| [FLINK-8024](https://issues.apache.org/jira/browse/FLINK-8024) | Let ClusterOverviewHandler directly extend from AbstractRestHandler |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8025](https://issues.apache.org/jira/browse/FLINK-8025) | Let DashboardConfigHandler extend from AbstractRestHandler |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8026](https://issues.apache.org/jira/browse/FLINK-8026) | Let ClusterConfigHandler extend from AbstractRestHandler |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7962](https://issues.apache.org/jira/browse/FLINK-7962) | Add built-in support for min/max aggregation for Timestamp |  Major | Table API & SQL | Dian Fu | Dian Fu |
| [FLINK-7003](https://issues.apache.org/jira/browse/FLINK-7003) | "select \* from" in Flink SQL should not flatten all fields in the table by default |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-7389](https://issues.apache.org/jira/browse/FLINK-7389) | Remove Calcite PushProjector |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-8097](https://issues.apache.org/jira/browse/FLINK-8097) | Add built-in support for min/max aggregation for Date/Time |  Major | Table API & SQL | Dian Fu | Dian Fu |
| [FLINK-6505](https://issues.apache.org/jira/browse/FLINK-6505) | Proactively cleanup local FS for RocksDBKeyedStateBackend on startup |  Major | State Backends, Checkpointing | Stefan Richter | Bowen Li |
| [FLINK-7316](https://issues.apache.org/jira/browse/FLINK-7316) | always use off-heap network buffers |  Major | Core, Network | Nico Kruber | Nico Kruber |
| [FLINK-7679](https://issues.apache.org/jira/browse/FLINK-7679) | Upgrade maven enforcer plugin to 3.0.0-M1 |  Major | Build System | Ted Yu | Hai Zhou UTC+8 |
| [FLINK-8027](https://issues.apache.org/jira/browse/FLINK-8027) | Generalize existing rest handlers to work with arbitrary RestfulGateway |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8028](https://issues.apache.org/jira/browse/FLINK-8028) | Let JobMaster impelment RestfulGateway |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8104](https://issues.apache.org/jira/browse/FLINK-8104) | Fix Row value constructor |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-7749](https://issues.apache.org/jira/browse/FLINK-7749) | Refactor the ResultPartitionWriter into an interface |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7748](https://issues.apache.org/jira/browse/FLINK-7748) | remove event listener behaviour from ResultPartitionWriter |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7806](https://issues.apache.org/jira/browse/FLINK-7806) | Move CurrentJobsOverviewHandler to jobs/overview |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-7815](https://issues.apache.org/jira/browse/FLINK-7815) | Remove grouping from MultipleJobsDetails |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8030](https://issues.apache.org/jira/browse/FLINK-8030) | Start JobMasterRestEndpoint in JobClusterEntrypoint |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8029](https://issues.apache.org/jira/browse/FLINK-8029) | Create common WebMonitorEndpoint |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8323](https://issues.apache.org/jira/browse/FLINK-8323) | Fix Mod scala function bug |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-7406](https://issues.apache.org/jira/browse/FLINK-7406) | Implement Netty receiver incoming pipeline for credit-based |  Major | Network | zhijiang | zhijiang |
| [FLINK-7416](https://issues.apache.org/jira/browse/FLINK-7416) | Implement Netty receiver outgoing pipeline for credit-based |  Major | Network | zhijiang | zhijiang |
| [FLINK-8207](https://issues.apache.org/jira/browse/FLINK-8207) | Unify TestPooledBufferProvider and TestInfinityBufferProvider |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8208](https://issues.apache.org/jira/browse/FLINK-8208) | Reduce mockito usage in RecordWriterTest |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8209](https://issues.apache.org/jira/browse/FLINK-8209) | Do not relay on specific method names in LocalBufferPoolTest |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8210](https://issues.apache.org/jira/browse/FLINK-8210) | Do not use mockito for collecting results in MockEnvironment |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8214](https://issues.apache.org/jira/browse/FLINK-8214) | Do not use mockito for collecting results in StreamMockEnvironment |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8220](https://issues.apache.org/jira/browse/FLINK-8220) | Implement set of network throughput benchmarks in Flink |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8221](https://issues.apache.org/jira/browse/FLINK-8221) | Implement set of network latency benchmarks in Flink |  Major | Network | Piotr Nowojski | Nico Kruber |
| [FLINK-6094](https://issues.apache.org/jira/browse/FLINK-6094) | Implement stream-stream non-window  inner join |  Major | Table API & SQL | Shaoxuan Wang | Hequn Cheng |
| [FLINK-7427](https://issues.apache.org/jira/browse/FLINK-7427) | integrate PartitionRequestProtocol into NettyProtocol |  Minor | Network | Nico Kruber | Nico Kruber |
| [FLINK-7517](https://issues.apache.org/jira/browse/FLINK-7517) | let NettyBufferPool extend PooledByteBufAllocator |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-8252](https://issues.apache.org/jira/browse/FLINK-8252) | Convert network benchmarks to streaming benchmarks |  Major | Network, Tests | Nico Kruber | Nico Kruber |
| [FLINK-8392](https://issues.apache.org/jira/browse/FLINK-8392) | Simplify termination future completion |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6893](https://issues.apache.org/jira/browse/FLINK-6893) | Add BIN supported in SQL & Table API |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6974](https://issues.apache.org/jira/browse/FLINK-6974) | Add BIN supported in TableAPI |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-8234](https://issues.apache.org/jira/browse/FLINK-8234) | Cache JobExecutionResult from finished JobManagerRunners |  Blocker | Distributed Coordination | Till Rohrmann | Gary Yao |
| [FLINK-7499](https://issues.apache.org/jira/browse/FLINK-7499) | double buffer release in SpillableSubpartitionView |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-8233](https://issues.apache.org/jira/browse/FLINK-8233) | Expose JobExecutionResult via HTTP |  Blocker | REST | Till Rohrmann | Gary Yao |
| [FLINK-8332](https://issues.apache.org/jira/browse/FLINK-8332) | Move dispose savepoint into ClusterClient |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8329](https://issues.apache.org/jira/browse/FLINK-8329) | Move YarnClient out of YarnClusterClient |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8328](https://issues.apache.org/jira/browse/FLINK-8328) | Pull Yarn ApplicationStatus polling out of YarnClusterClient |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8299](https://issues.apache.org/jira/browse/FLINK-8299) | Retrieve ExecutionResult by REST polling |  Blocker | REST | Gary Yao | Gary Yao |
| [FLINK-8339](https://issues.apache.org/jira/browse/FLINK-8339) | Let CustomCommandLine return a ClusterDescriptor |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8338](https://issues.apache.org/jira/browse/FLINK-8338) | Make CustomCommandLines non static in CliFrontend |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8333](https://issues.apache.org/jira/browse/FLINK-8333) | Split command options from deployment options in CliFrontend |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8119](https://issues.apache.org/jira/browse/FLINK-8119) | Cannot submit jobs to YARN Session in FLIP-6 mode |  Blocker | Client | Gary Yao | Till Rohrmann |
| [FLINK-8347](https://issues.apache.org/jira/browse/FLINK-8347) | Make Cluster id typesafe |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8349](https://issues.apache.org/jira/browse/FLINK-8349) | Remove Yarn specific commands from YarnClusterClient |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8342](https://issues.apache.org/jira/browse/FLINK-8342) | Remove ClusterClient generic type parameter from ClusterDescriptor |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8341](https://issues.apache.org/jira/browse/FLINK-8341) | Remove unneeded CommandLineOptions |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8340](https://issues.apache.org/jira/browse/FLINK-8340) | Do not pass Configuration and configuration directory to CustomCommandLine methods |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8217](https://issues.apache.org/jira/browse/FLINK-8217) | Properly annotate APIs of flink-connector-kinesis |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-8199](https://issues.apache.org/jira/browse/FLINK-8199) | Annotation for Elasticsearch connector |  Major | ElasticSearch Connector | mingleizhang | mingleizhang |
| [FLINK-8276](https://issues.apache.org/jira/browse/FLINK-8276) | Annotation for Kafka connector |  Major | Streaming Connectors | mingleizhang | mingleizhang |
| [FLINK-8368](https://issues.apache.org/jira/browse/FLINK-8368) | Port SubtaskExecutionAttemptDetailsHandler to new REST endpoint |  Major | REST | Biao Liu | Biao Liu |
| [FLINK-8369](https://issues.apache.org/jira/browse/FLINK-8369) | Port SubtaskExecutionAttemptAccumulatorsHandler to new REST endpoint |  Major | REST | Biao Liu | Biao Liu |
| [FLINK-8367](https://issues.apache.org/jira/browse/FLINK-8367) | Port SubtaskCurrentAttemptDetailsHandler to new REST endpoint |  Major | REST | Biao Liu | Biao Liu |
| [FLINK-8175](https://issues.apache.org/jira/browse/FLINK-8175) | remove flink-streaming-contrib and migrate its classes to flink-streaming-java/scala |  Major | . | Bowen Li | Bowen Li |
| [FLINK-7468](https://issues.apache.org/jira/browse/FLINK-7468) | Implement sender backlog logic for credit-based |  Major | Network | zhijiang | zhijiang |
| [FLINK-7925](https://issues.apache.org/jira/browse/FLINK-7925) |  Add CheckpointingOptions |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-7520](https://issues.apache.org/jira/browse/FLINK-7520) | let our Buffer class extend from netty's buffer class |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-8395](https://issues.apache.org/jira/browse/FLINK-8395) | Create (derived) sliced Buffer class |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7518](https://issues.apache.org/jira/browse/FLINK-7518) | pass our own buffer instances to netty |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-6590](https://issues.apache.org/jira/browse/FLINK-6590) | Integrate generated tables into documentation |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6892](https://issues.apache.org/jira/browse/FLINK-6892) | Add L/RPAD supported in SQL |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6973](https://issues.apache.org/jira/browse/FLINK-6973) | Add L/RPAD supported in TableAPI |  Major | Table API & SQL | sunjincheng | sunjincheng |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8320](https://issues.apache.org/jira/browse/FLINK-8320) | Flink cluster does not work on Java 9 |  Major | . | Steve Layland |  |
| [FLINK-8359](https://issues.apache.org/jira/browse/FLINK-8359) | Update copyright date in NOTICE |  Major | Build System | Hai Zhou UTC+8 | Hai Zhou UTC+8 |


