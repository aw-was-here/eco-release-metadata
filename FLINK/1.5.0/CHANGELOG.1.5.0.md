
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

## Release 1.5.0 - 2018-05-25



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
| [FLINK-8240](https://issues.apache.org/jira/browse/FLINK-8240) | Create unified interfaces to configure and instatiate TableSources |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-7923](https://issues.apache.org/jira/browse/FLINK-7923) | Support accessing subfields of a Composite element in an Object Array type column |  Major | Table API & SQL | Rong Rong | Shuyi Chen |
| [FLINK-8345](https://issues.apache.org/jira/browse/FLINK-8345) | Iterate over keyed state on broadcast side of connect with broadcast. |  Major | Streaming | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8609](https://issues.apache.org/jira/browse/FLINK-8609) | Add support to deploy detached job mode clusters |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8608](https://issues.apache.org/jira/browse/FLINK-8608) | Add MiniDispatcher for job mode |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8516](https://issues.apache.org/jira/browse/FLINK-8516) | Allow custom shard-to-subtask assignment for the FlinkKinesisConsumer |  Major | Kinesis Connector | Thomas Weise | Thomas Weise |
| [FLINK-5886](https://issues.apache.org/jira/browse/FLINK-5886) | Python API for streaming applications |  Major | Python API | Zohar Mizrahi | Zohar Mizrahi |
| [FLINK-8668](https://issues.apache.org/jira/browse/FLINK-8668) | Remove "hadoop classpath" from config.sh |  Major | . | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8631](https://issues.apache.org/jira/browse/FLINK-8631) | Add support for generic response types to RestClient |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8705](https://issues.apache.org/jira/browse/FLINK-8705) | Integrate Remote(Stream)Environment with Flip-6 cluster |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8656](https://issues.apache.org/jira/browse/FLINK-8656) | Add CLI command for rescaling |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8634](https://issues.apache.org/jira/browse/FLINK-8634) | Implement asynchronous rescaling REST handlers |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8629](https://issues.apache.org/jira/browse/FLINK-8629) | Allow JobMaster to rescale jobs |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8781](https://issues.apache.org/jira/browse/FLINK-8781) | Try to reschedule failed tasks to previous allocation |  Major | Scheduler | Stefan Richter | Stefan Richter |
| [FLINK-8360](https://issues.apache.org/jira/browse/FLINK-8360) | Implement task-local state recovery |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-8317](https://issues.apache.org/jira/browse/FLINK-8317) | Enable Triggering of Savepoints via RestfulGateway |  Major | Distributed Coordination, REST | Gary Yao | Gary Yao |
| [FLINK-8743](https://issues.apache.org/jira/browse/FLINK-8743) | Add annotation to override documented default |  Trivial | Configuration, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4343](https://issues.apache.org/jira/browse/FLINK-4343) | Implement new TaskManager |  Major | Cluster Management | Stephan Ewen | Till Rohrmann |
| [FLINK-4834](https://issues.apache.org/jira/browse/FLINK-4834) | Implement unified High Availability Services Abstraction |  Major | Cluster Management | Stephan Ewen |  |
| [FLINK-4897](https://issues.apache.org/jira/browse/FLINK-4897) | Implement Dispatcher to support Flink sessions |  Major | Cluster Management, Mesos | Eron Wright | Till Rohrmann |
| [FLINK-7075](https://issues.apache.org/jira/browse/FLINK-7075) | Implement Flip-6 standalone mode |  Major | Cluster Management, Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-4345](https://issues.apache.org/jira/browse/FLINK-4345) | Implement new ResourceManager |  Major | Cluster Management | Stephan Ewen |  |
| [FLINK-4344](https://issues.apache.org/jira/browse/FLINK-4344) | Implement new JobManager |  Major | Cluster Management | Stephan Ewen |  |
| [FLINK-4926](https://issues.apache.org/jira/browse/FLINK-4926) | Implement FLIP-6 Flink-on-YARN jobs |  Major | YARN | Stephan Ewen |  |
| [FLINK-6378](https://issues.apache.org/jira/browse/FLINK-6378) | Implement FLIP-6 Flink-on-Mesos |  Major | Mesos | Eron Wright | Eron Wright |
| [FLINK-4346](https://issues.apache.org/jira/browse/FLINK-4346) | Implement basic RPC abstraction |  Major | Distributed Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-5725](https://issues.apache.org/jira/browse/FLINK-5725) | Support windowed JOIN between two streaming tables |  Major | Table API & SQL | Haohui Mai | hongyuhong |


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
| [FLINK-8149](https://issues.apache.org/jira/browse/FLINK-8149) | Replace usages of deprecated SerializationSchema |  Major | Kinesis Connector | Hai Zhou | Hai Zhou |
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
| [FLINK-8266](https://issues.apache.org/jira/browse/FLINK-8266) | Add network memory to ResourceProfile |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8344](https://issues.apache.org/jira/browse/FLINK-8344) | Add support for HA to RestClusterClient |  Major | Client | Till Rohrmann | Gary Yao |
| [FLINK-8490](https://issues.apache.org/jira/browse/FLINK-8490) | Allow custom docker parameters for docker tasks on Mesos |  Major | Mesos | Jörg Schad |  |
| [FLINK-8454](https://issues.apache.org/jira/browse/FLINK-8454) | Remove JobExecutionResultCache |  Major | Distributed Coordination, REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8453](https://issues.apache.org/jira/browse/FLINK-8453) | Add SerializableExecutionGraphStore to Dispatcher |  Major | Distributed Coordination, REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8450](https://issues.apache.org/jira/browse/FLINK-8450) | Make JobMaster/DispatcherGateway#requestJob type safe |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8449](https://issues.apache.org/jira/browse/FLINK-8449) | Extend OnCompletionActions to receive AccessExecutionGraph |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8432](https://issues.apache.org/jira/browse/FLINK-8432) | Add openstack swift filesystem |  Major | filesystem-connector | Jelmer Kuperus | Jelmer Kuperus |
| [FLINK-8431](https://issues.apache.org/jira/browse/FLINK-8431) | Allow to specify # GPUs for TaskManager in Mesos |  Minor | Cluster Management, Mesos | Dongwon Kim | Dongwon Kim |
| [FLINK-8476](https://issues.apache.org/jira/browse/FLINK-8476) | ConfigConstants#DEFAULT\_HA\_JOB\_MANAGER\_PORT unused |  Trivial | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4765](https://issues.apache.org/jira/browse/FLINK-4765) | Migrate ConfigConstants to ConfigOptions |  Major | Local Runtime | Stephan Ewen |  |
| [FLINK-8422](https://issues.apache.org/jira/browse/FLINK-8422) | Checkstyle for org.apache.flink.api.java.tuple |  Trivial | Core | Greg Hogan | Greg Hogan |
| [FLINK-5820](https://issues.apache.org/jira/browse/FLINK-5820) | Extend State Backend Abstraction to support Global Cleanup Hooks |  Blocker | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4812](https://issues.apache.org/jira/browse/FLINK-4812) | Report Watermark metrics in all operators |  Critical | Metrics | Robert Metzger | Chesnay Schepler |
| [FLINK-7984](https://issues.apache.org/jira/browse/FLINK-7984) | Bump snappy-java to 1.1.4 |  Major | Build System | Hai Zhou | Hai Zhou |
| [FLINK-8384](https://issues.apache.org/jira/browse/FLINK-8384) | Session Window Assigner with Dynamic Gaps |  Minor | Streaming | Dyana Rose | Dyana Rose |
| [FLINK-8243](https://issues.apache.org/jira/browse/FLINK-8243) | OrcTableSource should recursively read all files in nested directories of the input path. |  Critical | Batch Connectors and Input/Output Formats | Fabian Hueske | Fabian Hueske |
| [FLINK-8555](https://issues.apache.org/jira/browse/FLINK-8555) | Fix TableFunction varargs length exceeds 254 for SQL |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-8493](https://issues.apache.org/jira/browse/FLINK-8493) | Integrate queryable state with Flip-6 |  Major | Distributed Coordination, Queryable State | Till Rohrmann | Till Rohrmann |
| [FLINK-8471](https://issues.apache.org/jira/browse/FLINK-8471) | Add Flip-6 configuration switch |  Major | Configuration | Till Rohrmann | Till Rohrmann |
| [FLINK-8502](https://issues.apache.org/jira/browse/FLINK-8502) | Remove LibraryCacheManager from JobMaster |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8501](https://issues.apache.org/jira/browse/FLINK-8501) | Use single BlobCacheService per TaskExecutor |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-6004](https://issues.apache.org/jira/browse/FLINK-6004) | Allow FlinkKinesisConsumer to skip corrupted messages |  Major | Streaming Connectors | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7803](https://issues.apache.org/jira/browse/FLINK-7803) | Update savepoint Documentation |  Major | Documentation, State Backends, Checkpointing | Razvan | Razvan |
| [FLINK-7608](https://issues.apache.org/jira/browse/FLINK-7608) | LatencyGauge change to  histogram metric |  Major | Metrics | Hai Zhou | Hai Zhou |
| [FLINK-8550](https://issues.apache.org/jira/browse/FLINK-8550) | Iterate over entryset instead of keys |  Major | Table API & SQL | Hequn Cheng | Hequn Cheng |
| [FLINK-8362](https://issues.apache.org/jira/browse/FLINK-8362) | Shade Elasticsearch dependencies away |  Major | Build System, ElasticSearch Connector | Nico Kruber | Nico Kruber |
| [FLINK-8597](https://issues.apache.org/jira/browse/FLINK-8597) | Add examples for Connected Streams with Broadcast State. |  Major | Streaming | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8571](https://issues.apache.org/jira/browse/FLINK-8571) | Provide an enhanced KeyedStream implementation to use ForwardPartitioner |  Major | . | Nagarjun Guraja | Stefan Richter |
| [FLINK-8172](https://issues.apache.org/jira/browse/FLINK-8172) | Remove unnecessary synchronisation in RecordSerializer |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8636](https://issues.apache.org/jira/browse/FLINK-8636) | Pass TaskManagerServices to TaskExecutor |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8087](https://issues.apache.org/jira/browse/FLINK-8087) | Decouple Slot from SlotPool |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8088](https://issues.apache.org/jira/browse/FLINK-8088) | Bind logical slots to their request id instead of the slot allocation id |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8089](https://issues.apache.org/jira/browse/FLINK-8089) | Fulfil slot requests with unused offered slots |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8637](https://issues.apache.org/jira/browse/FLINK-8637) | Pass JobManagerSharedServices to JobMaster |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8626](https://issues.apache.org/jira/browse/FLINK-8626) | Introduce BackPressureStatsTracker interface |  Minor | REST, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8553](https://issues.apache.org/jira/browse/FLINK-8553) | switch flink-metrics-datadog to async mode |  Major | Metrics | Bowen Li | Bowen Li |
| [FLINK-5779](https://issues.apache.org/jira/browse/FLINK-5779) | Auto generate configuration docs |  Major | Configuration, Documentation | Ufuk Celebi | Dawid Wysakowicz |
| [FLINK-8652](https://issues.apache.org/jira/browse/FLINK-8652) | Reduce log level of QueryableStateClient.getKvState() to DEBUG |  Major | Queryable State | Fabian Hueske | Fabian Hueske |
| [FLINK-8643](https://issues.apache.org/jira/browse/FLINK-8643) | Use JobManagerOptions#SLOT\_REQUEST\_TIMEOUT in ExecutionGraph |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8530](https://issues.apache.org/jira/browse/FLINK-8530) | Enable detached job submission for RestClusterClient |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8212](https://issues.apache.org/jira/browse/FLINK-8212) | Pull EnvironmentInformation out of TaskManagerServices |  Major | Local Runtime, Network | Till Rohrmann | zhangminglei |
| [FLINK-8613](https://issues.apache.org/jira/browse/FLINK-8613) | Return excess container in YarnResourceManager |  Major | Distributed Coordination, YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-8605](https://issues.apache.org/jira/browse/FLINK-8605) | Enable job cancellation from the web UI |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8604](https://issues.apache.org/jira/browse/FLINK-8604) | Move JobTerminationHandler to WebMonitorEndpoint |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8603](https://issues.apache.org/jira/browse/FLINK-8603) | Split RestClusterClient#submitJob into submitJob and requestJobResult |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8529](https://issues.apache.org/jira/browse/FLINK-8529) | Let Yarn entry points use YarnConfigOptions#APPLICATION\_MASTER\_PORT |  Major | Distributed Coordination, YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-8611](https://issues.apache.org/jira/browse/FLINK-8611) | Add result future to JobManagerRunner |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8610](https://issues.apache.org/jira/browse/FLINK-8610) | Remove RestfulGateway from JobMasterGateway |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8647](https://issues.apache.org/jira/browse/FLINK-8647) | Introduce JobMasterConfiguration |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8576](https://issues.apache.org/jira/browse/FLINK-8576) | Log message for QueryableState loading failure too verbose |  Minor | Queryable State | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5728](https://issues.apache.org/jira/browse/FLINK-5728) | FlinkKafkaProducer should flush on checkpoint by default |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-3655](https://issues.apache.org/jira/browse/FLINK-3655) | Allow comma-separated or multiple directories to be specified for FileInputFormat |  Major | Core | Gna Phetsarath | Fabian Hueske |
| [FLINK-8671](https://issues.apache.org/jira/browse/FLINK-8671) | Split documented default value if it is too long |  Trivial | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8411](https://issues.apache.org/jira/browse/FLINK-8411) | Don't allow adding null in ListState.add()/addAll() |  Blocker | State Backends, Checkpointing | Bowen Li | Bowen Li |
| [FLINK-8612](https://issues.apache.org/jira/browse/FLINK-8612) | Add non-detached job mode |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8546](https://issues.apache.org/jira/browse/FLINK-8546) | Respect savepoint settings and recover from latest checkpoint in Flip-6 |  Major | JobManager | Till Rohrmann | Till Rohrmann |
| [FLINK-8653](https://issues.apache.org/jira/browse/FLINK-8653) | Remove slot request timeout from SlotPool |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8673](https://issues.apache.org/jira/browse/FLINK-8673) | Don't let JobManagerRunner shut down itself |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8682](https://issues.apache.org/jira/browse/FLINK-8682) | Make start/stop cluster scripts work without SSH for local HA setups |  Minor | Startup Shell Scripts | Stephan Ewen | Stephan Ewen |
| [FLINK-8681](https://issues.apache.org/jira/browse/FLINK-8681) | Remove planVisualizer.html move notice |  Trivial | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-8680](https://issues.apache.org/jira/browse/FLINK-8680) | Name printing sinks by default. |  Trivial | . | Stephan Ewen | Stephan Ewen |
| [FLINK-8549](https://issues.apache.org/jira/browse/FLINK-8549) | Move TimerServiceOptions to TaskManagerOptions |  Major | Local Runtime | Stephan Ewen | Stephan Ewen |
| [FLINK-8675](https://issues.apache.org/jira/browse/FLINK-8675) | Make shut down of RestServerEndpoint non blocking |  Minor | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8669](https://issues.apache.org/jira/browse/FLINK-8669) | Extend FutureUtils to have method to wait for the completion of all futures |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8695](https://issues.apache.org/jira/browse/FLINK-8695) | Move RocksDB State Backend from 'flink-contrib' to 'flink-state-backends' |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-8698](https://issues.apache.org/jira/browse/FLINK-8698) | Use Flip-6 MiniCluster in Local(Stream)Environment |  Major | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8574](https://issues.apache.org/jira/browse/FLINK-8574) | Add timestamps to travis logging messages |  Minor | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8632](https://issues.apache.org/jira/browse/FLINK-8632) | Generalize SavepointHandlers to be used for other asynchronous operations |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8710](https://issues.apache.org/jira/browse/FLINK-8710) | AbstractYarnClusterDescriptor doesn't use pre-defined configs in Hadoop's YarnConfiguration |  Minor | YARN | Bowen Li | Bowen Li |
| [FLINK-8639](https://issues.apache.org/jira/browse/FLINK-8639) | Fix always need to seek multiple times when iterator RocksDBMapState |  Critical | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8633](https://issues.apache.org/jira/browse/FLINK-8633) | Expose JobMaster#rescaleJob via the Dispatcher |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8627](https://issues.apache.org/jira/browse/FLINK-8627) | Introduce SUSPENDING state |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8677](https://issues.apache.org/jira/browse/FLINK-8677) | Make ClusterEntrypoint shut down non-blocking |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8666](https://issues.apache.org/jira/browse/FLINK-8666) | Use AkkaUtils#testDispatcherConfig in MiniCluster |  Minor | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8670](https://issues.apache.org/jira/browse/FLINK-8670) | Make MetricRegistryImpl#shutdown non blocking |  Major | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-8749](https://issues.apache.org/jira/browse/FLINK-8749) | Release slots when scheduling operation is canceled in ExecutionGraph |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8748](https://issues.apache.org/jira/browse/FLINK-8748) | Cancel slot requests for alternatively completed slots in SlotPool |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8746](https://issues.apache.org/jira/browse/FLINK-8746) | Support rescaling of jobs which are not fully running |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8775](https://issues.apache.org/jira/browse/FLINK-8775) | Make shut down of MiniCluster non blocking |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8774](https://issues.apache.org/jira/browse/FLINK-8774) | Make shut down of ResourceManagerRunner non blocking |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8773](https://issues.apache.org/jira/browse/FLINK-8773) | Make shut down of JobManagerRunner non blocking |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8761](https://issues.apache.org/jira/browse/FLINK-8761) | Various improvements to the Quickstarts |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8593](https://issues.apache.org/jira/browse/FLINK-8593) | Latency metric docs are outdated |  Major | Documentation, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8645](https://issues.apache.org/jira/browse/FLINK-8645) | Support convenient extension of parent-first ClassLoader patterns |  Major | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8719](https://issues.apache.org/jira/browse/FLINK-8719) | add README for flink-contrib to clarify its purpose |  Minor | flink-contrib | Bowen Li | Bowen Li |
| [FLINK-8792](https://issues.apache.org/jira/browse/FLINK-8792) |  bad semantic of method name MessageQueryParameter.convertStringToValue |  Minor | REST | vinoyang | vinoyang |
| [FLINK-8730](https://issues.apache.org/jira/browse/FLINK-8730) | Make SerializedThrowable deserialized from JSON re-throwable |  Critical | Client, REST | Gary Yao | Gary Yao |
| [FLINK-8777](https://issues.apache.org/jira/browse/FLINK-8777) | improve resource release when recovery from failover |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8515](https://issues.apache.org/jira/browse/FLINK-8515) | update RocksDBMapState to replace deprecated remove() with delete() |  Minor | State Backends, Checkpointing | Bowen Li | Bowen Li |
| [FLINK-8805](https://issues.apache.org/jira/browse/FLINK-8805) | Optimize EventSerializer.isEvent method |  Major | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8814](https://issues.apache.org/jira/browse/FLINK-8814) | Control over the extension of part files created by BucketingSink |  Major | Streaming Connectors | Jelmer Kuperus |  |
| [FLINK-8810](https://issues.apache.org/jira/browse/FLINK-8810) | Move end-to-end test scripts to end-to-end module |  Major | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5281](https://issues.apache.org/jira/browse/FLINK-5281) | Extend KafkaJsonTableSources to support nested data |  Major | Table API & SQL | Fabian Hueske | Ivan Mushketyk |
| [FLINK-6352](https://issues.apache.org/jira/browse/FLINK-6352) | FlinkKafkaConsumer should support to use timestamp to set up start offset |  Blocker | Kafka Connector | Fang Yong | Fang Yong |
| [FLINK-8560](https://issues.apache.org/jira/browse/FLINK-8560) | add KeyedProcessFunction to expose the key in onTimer() and other methods |  Major | DataStream API | Jürgen Thomann | Bowen Li |
| [FLINK-8758](https://issues.apache.org/jira/browse/FLINK-8758) | Expose method for non-blocking job submission on ClusterClient |  Blocker | Client, Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8890](https://issues.apache.org/jira/browse/FLINK-8890) | Compare checkpoints with order in CompletedCheckpoint.checkpointsMatch() |  Major | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8889](https://issues.apache.org/jira/browse/FLINK-8889) | Do not override config values in TestBaseUtils#startCluster |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8911](https://issues.apache.org/jira/browse/FLINK-8911) | Add separate script for nightly end-to-end tests |  Major | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7521](https://issues.apache.org/jira/browse/FLINK-7521) | Remove the 10MB limit from the current REST implementation. |  Blocker | REST | Kostas Kloudas | Gary Yao |
| [FLINK-7805](https://issues.apache.org/jira/browse/FLINK-7805) | Add HA capabilities to YarnResourceManager |  Major | Distributed Coordination, YARN | Till Rohrmann | Gary Yao |
| [FLINK-8842](https://issues.apache.org/jira/browse/FLINK-8842) | Change default REST port to 8081 |  Blocker | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8667](https://issues.apache.org/jira/browse/FLINK-8667) | expose key in KeyedBroadcastProcessFunction#onTimer() |  Major | . | Bowen Li | Bowen Li |
| [FLINK-8876](https://issues.apache.org/jira/browse/FLINK-8876) | Improve concurrent access handling in stateful serializers |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8840](https://issues.apache.org/jira/browse/FLINK-8840) | Pull out YarnClient initialization out of AbstractYarnClusterDescriptor |  Major | YARN | Till Rohrmann | Till Rohrmann |
| [FLINK-8811](https://issues.apache.org/jira/browse/FLINK-8811) | Add MiniClusterClient to allow fast MiniCluster operations |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8091](https://issues.apache.org/jira/browse/FLINK-8091) | Support running historyserver in foreground |  Minor | Docker, History Server | Joshua Griffith |  |
| [FLINK-8888](https://issues.apache.org/jira/browse/FLINK-8888) | Upgrade AWS SDK in flink-connector-kinesis |  Minor | . | Kailash Hassan Dayanand | Kailash Hassan Dayanand |
| [FLINK-8945](https://issues.apache.org/jira/browse/FLINK-8945) | Allow customization of the KinesisProxy |  Minor | . | Kailash Hassan Dayanand | Kailash Hassan Dayanand |
| [FLINK-8843](https://issues.apache.org/jira/browse/FLINK-8843) | Decouple bind REST address from advertised address |  Critical | REST | Till Rohrmann | Gary Yao |
| [FLINK-8948](https://issues.apache.org/jira/browse/FLINK-8948) | RescalingITCase fails on Travis |  Blocker | State Backends, Checkpointing, Tests, Travis | Chesnay Schepler | Piotr Nowojski |
| [FLINK-8935](https://issues.apache.org/jira/browse/FLINK-8935) | Implement remaining methods in MiniClusterClient |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8942](https://issues.apache.org/jira/browse/FLINK-8942) | Pass target ResourceID to HeartbeatListener#retrievePayload |  Blocker | Distributed Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8756](https://issues.apache.org/jira/browse/FLINK-8756) | Support ClusterClient.getAccumulators() in RestClusterClient |  Blocker | Client | Aljoscha Krettek | vinoyang |
| [FLINK-9020](https://issues.apache.org/jira/browse/FLINK-9020) | Move test projects of end-to-end tests in separate modules |  Major | Tests | Florian Schmidt | Florian Schmidt |
| [FLINK-8925](https://issues.apache.org/jira/browse/FLINK-8925) | Activate flip6 on travis |  Blocker | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8956](https://issues.apache.org/jira/browse/FLINK-8956) | Port RescalingITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8959](https://issues.apache.org/jira/browse/FLINK-8959) | Port AccumulatorLiveITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8957](https://issues.apache.org/jira/browse/FLINK-8957) | Port JMXJobManagerMetricTest to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8958](https://issues.apache.org/jira/browse/FLINK-8958) | Port TaskCancelAsyncProducerConsumerITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8964](https://issues.apache.org/jira/browse/FLINK-8964) | Port JobSubmissionFailsITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8965](https://issues.apache.org/jira/browse/FLINK-8965) | Port TimestampITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8721](https://issues.apache.org/jira/browse/FLINK-8721) | Client blocks indefinitely if job archiving fails |  Blocker | Client, JobManager | Chesnay Schepler | Piotr Nowojski |
| [FLINK-8962](https://issues.apache.org/jira/browse/FLINK-8962) | Port AccumulatorErrorITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Piotr Nowojski |
| [FLINK-8940](https://issues.apache.org/jira/browse/FLINK-8940) | Implement JobMaster#disposeSavepoint |  Blocker | JobManager, State Backends, Checkpointing | Chesnay Schepler | Till Rohrmann |
| [FLINK-9093](https://issues.apache.org/jira/browse/FLINK-9093) | If Google can't be accessed,the document can't be use |  Major | Documentation | Matrix42 | Matrix42 |
| [FLINK-9121](https://issues.apache.org/jira/browse/FLINK-9121) | Remove Flip-6 prefixes from code base |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9051](https://issues.apache.org/jira/browse/FLINK-9051) | Invert flip6 profile |  Major | Build System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9042](https://issues.apache.org/jira/browse/FLINK-9042) | Port ResumeCheckpointManuallyITCase to flip6 |  Blocker | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8963](https://issues.apache.org/jira/browse/FLINK-8963) | Port BigUserProgramJobSubmitITCase to flip6 |  Blocker | Job-Submission, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8966](https://issues.apache.org/jira/browse/FLINK-8966) | Port AvroExternalJarProgramITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8804](https://issues.apache.org/jira/browse/FLINK-8804) | Bump flink-shaded-jackson dependency to 3.0 |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8697](https://issues.apache.org/jira/browse/FLINK-8697) | Rename DummyFlinkKafkaConsumer in Kinesis tests |  Trivial | Kinesis Connector, Tests | Chesnay Schepler | Bowen Li |
| [FLINK-8771](https://issues.apache.org/jira/browse/FLINK-8771) | Upgrade scalastyle to 1.0.0 |  Major | Build System | Ted Yu | Bowen Li |
| [FLINK-8254](https://issues.apache.org/jira/browse/FLINK-8254) | REST API documentation wonky due to shading |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9131](https://issues.apache.org/jira/browse/FLINK-9131) | Disable spotbugs on travis |  Critical | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9107](https://issues.apache.org/jira/browse/FLINK-9107) | Document timer coalescing for ProcessFunctions |  Major | Documentation, Streaming | Nico Kruber | Nico Kruber |
| [FLINK-8742](https://issues.apache.org/jira/browse/FLINK-8742) | Move ConfigDocsGenerator annotation to flink-annotations |  Trivial | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9140](https://issues.apache.org/jira/browse/FLINK-9140) | simplify scalastyle configurations |  Minor | Build System | Bowen Li | Bowen Li |
| [FLINK-8684](https://issues.apache.org/jira/browse/FLINK-8684) | Rework MesosTaskManagerParameters#MESOS\_RM\_TASKS\_SLOTS |  Major | Documentation, Mesos | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9160](https://issues.apache.org/jira/browse/FLINK-9160) | Make subclasses of RuntimeContext internal that should be internal |  Major | DataSet API, DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9152](https://issues.apache.org/jira/browse/FLINK-9152) | Harmonize BroadcastProcessFunction Context names |  Blocker | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9089](https://issues.apache.org/jira/browse/FLINK-9089) | Upgrade Orc dependency to 1.4.3 |  Minor | . | Ted Yu | vinoyang |
| [FLINK-9203](https://issues.apache.org/jira/browse/FLINK-9203) | Deprecate non-well-defined SinkFunctions |  Major | DataStream API | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9210](https://issues.apache.org/jira/browse/FLINK-9210) | Call getValue() only once in gauge serialization |  Minor | Metrics | Jisu You | Chesnay Schepler |
| [FLINK-9180](https://issues.apache.org/jira/browse/FLINK-9180) | Remove REST\_ prefix from rest options |  Critical | Configuration, REST | Chesnay Schepler | zhangminglei |
| [FLINK-8955](https://issues.apache.org/jira/browse/FLINK-8955) | Port ClassLoaderITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8960](https://issues.apache.org/jira/browse/FLINK-8960) | Port SavepointITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9206](https://issues.apache.org/jira/browse/FLINK-9206) | CheckpointCoordinator log messages do not contain the job ID |  Major | State Backends, Checkpointing | Nico Kruber | Nico Kruber |
| [FLINK-9227](https://issues.apache.org/jira/browse/FLINK-9227) | Add Bucketing e2e test script to run-nightly-tests.sh |  Major | Tests | zhangminglei | zhangminglei |
| [FLINK-8335](https://issues.apache.org/jira/browse/FLINK-8335) | Upgrade hbase connector dependency to 1.4.3 |  Minor | Batch Connectors and Input/Output Formats | Ted Yu | zhangminglei |
| [FLINK-9198](https://issues.apache.org/jira/browse/FLINK-9198) | Improve error messages in AbstractDeserializationSchema for type extraction |  Major | . | Stephan Ewen | Stephan Ewen |
| [FLINK-9197](https://issues.apache.org/jira/browse/FLINK-9197) | Improve error message for TypyInformation and TypeHint with generics |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8700](https://issues.apache.org/jira/browse/FLINK-8700) | Port tests from FlinkMiniCluster to MiniClusterResource |  Blocker | Tests | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-8793](https://issues.apache.org/jira/browse/FLINK-8793) | Hide key containing "secret" in web interface |  Critical | REST | Etienne CARRIERE | Sihua Zhou |
| [FLINK-9100](https://issues.apache.org/jira/browse/FLINK-9100) | Shadow/Hide password from configuration that is logged to log file |  Critical | Configuration | Szymon Szczypiński | Sihua Zhou |
| [FLINK-9033](https://issues.apache.org/jira/browse/FLINK-9033) | Replace usages of deprecated TASK\_MANAGER\_NUM\_TASK\_SLOTS |  Major | Configuration | Hai Zhou | Hai Zhou |
| [FLINK-8202](https://issues.apache.org/jira/browse/FLINK-8202) | Update queryable section on configuration page |  Major | Documentation, Queryable State | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6557](https://issues.apache.org/jira/browse/FLINK-6557) | RocksDBKeyedStateBackend broken on Windows |  Major | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9274](https://issues.apache.org/jira/browse/FLINK-9274) | Add thread name to Kafka Partition Discovery |  Major | Kafka Connector | Nico Kruber | Nico Kruber |
| [FLINK-9275](https://issues.apache.org/jira/browse/FLINK-9275) | Set more distinctive output flusher thread names |  Major | Streaming | Nico Kruber | Nico Kruber |
| [FLINK-9266](https://issues.apache.org/jira/browse/FLINK-9266) | Upgrade AWS Kinesis Client version to 1.9.0 to reduce Kinesis describe streams calls |  Minor | Kinesis Connector | Thomas Moser | Thomas Moser |
| [FLINK-9154](https://issues.apache.org/jira/browse/FLINK-9154) | Include WebSubmissionExtension in REST API docs |  Major | Documentation, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9249](https://issues.apache.org/jira/browse/FLINK-9249) | Add convenience profile for skipping non-essential plugins |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8683](https://issues.apache.org/jira/browse/FLINK-8683) | Add test for configuration docs completeness |  Major | Configuration, Documentation, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9288](https://issues.apache.org/jira/browse/FLINK-9288) | clarify a few points in the event time / watermark docs |  Minor | Documentation | David Anderson | David Anderson |
| [FLINK-8726](https://issues.apache.org/jira/browse/FLINK-8726) | Code highlighting partially broken |  Trivial | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6719](https://issues.apache.org/jira/browse/FLINK-6719) | Add details about fault-tolerance of timers to ProcessFunction docs |  Major | DataStream API, Documentation | Tzu-Li (Gordon) Tai | Bowen Li |
| [FLINK-8064](https://issues.apache.org/jira/browse/FLINK-8064) | Extend dependency section to list flink-core |  Major | Documentation, Queryable State | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9306](https://issues.apache.org/jira/browse/FLINK-9306) | Execute YARN IT tests for legacy and new mode |  Blocker | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-9179](https://issues.apache.org/jira/browse/FLINK-9179) | Deduplicate WebOptions.PORT and RestOptions.REST\_PORT |  Blocker | Configuration, REST, Webfrontend | Chesnay Schepler | zhangminglei |
| [FLINK-8284](https://issues.apache.org/jira/browse/FLINK-8284) | Explicitly mention port conflicts in reporter docs |  Major | Documentation, Metrics | Julio Biason | Chesnay Schepler |
| [FLINK-9125](https://issues.apache.org/jira/browse/FLINK-9125) | MiniClusterResource should set CoreOptions.TMP\_DIRS |  Major | Tests | Chesnay Schepler | vinoyang |
| [FLINK-9282](https://issues.apache.org/jira/browse/FLINK-9282) | Update quickstart page |  Critical | Documentation | Chesnay Schepler | 陈梓立 |
| [FLINK-9265](https://issues.apache.org/jira/browse/FLINK-9265) | Upgrade Prometheus version |  Minor | Build System, Metrics | Ted Yu | vinoyang |
| [FLINK-8134](https://issues.apache.org/jira/browse/FLINK-8134) | Add description to MessageHeaders |  Major | Documentation, REST | Chesnay Schepler | Maxim Belov |
| [FLINK-9323](https://issues.apache.org/jira/browse/FLINK-9323) | Move checkstyle configuration to plugin management |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9318](https://issues.apache.org/jira/browse/FLINK-9318) | Mark ConfigOptionsDocsCompletenessTest as IT case |  Trivial | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9309](https://issues.apache.org/jira/browse/FLINK-9309) | Recommend HA setup on Production Readiness Checklist |  Major | Documentation | Fabian Hueske | vinoyang |
| [FLINK-9330](https://issues.apache.org/jira/browse/FLINK-9330) | Improve logging of SlotPool for debugging purposes |  Major | Distributed Coordination | Till Rohrmann | Stephan Ewen |
| [FLINK-9348](https://issues.apache.org/jira/browse/FLINK-9348) | scalastyle documentation for IntelliJ IDE setup |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9357](https://issues.apache.org/jira/browse/FLINK-9357) | Add margins to yarn exception excerpts |  Major | Tests, YARN | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9283](https://issues.apache.org/jira/browse/FLINK-9283) | Update cluster execution docs |  Major | Documentation | Chesnay Schepler | yuqi |
| [FLINK-9284](https://issues.apache.org/jira/browse/FLINK-9284) | Update CLI page |  Critical | Client, Documentation | Chesnay Schepler | Triones Deng |
| [FLINK-9285](https://issues.apache.org/jira/browse/FLINK-9285) | Update REST API page |  Critical | Documentation, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9354](https://issues.apache.org/jira/browse/FLINK-9354) | print execution times for end-to-end tests |  Major | Tests, Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8659](https://issues.apache.org/jira/browse/FLINK-8659) | Add migration tests for Broadcast state. |  Major | Streaming | Kostas Kloudas | Kostas Kloudas |
| [FLINK-9070](https://issues.apache.org/jira/browse/FLINK-9070) | Improve performance of RocksDBMapState.clear() |  Major | State Backends, Checkpointing | Truong Duc Kien | Sihua Zhou |
| [FLINK-9425](https://issues.apache.org/jira/browse/FLINK-9425) | Make release scripts compliant with ASF release policy |  Critical | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-9286](https://issues.apache.org/jira/browse/FLINK-9286) | Update classloading debugging page |  Critical | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9064](https://issues.apache.org/jira/browse/FLINK-9064) | Add Scaladocs link to documentation |  Minor | Documentation | Matt Hagen | vinoyang |
| [FLINK-8845](https://issues.apache.org/jira/browse/FLINK-8845) | Use WriteBatch to improve performance for recovery in RocksDB backend |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8527](https://issues.apache.org/jira/browse/FLINK-8527) | Making stopping of Flip-6 components non-blocking |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8796](https://issues.apache.org/jira/browse/FLINK-8796) | Update "Upgrading Applications and Flink Versions" for 1.5 |  Blocker | Documentation | Till Rohrmann | Fabian Hueske |
| [FLINK-9757](https://issues.apache.org/jira/browse/FLINK-9757) | Typos found in docs after hunspell run |  Trivial | Documentation | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-4319](https://issues.apache.org/jira/browse/FLINK-4319) | Rework Cluster Management (FLIP-6) |  Major | Cluster Management | Stephan Ewen | Till Rohrmann |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7870](https://issues.apache.org/jira/browse/FLINK-7870) | SlotPool should cancel the slot request to RM if not need any more. |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8010](https://issues.apache.org/jira/browse/FLINK-8010) | Bump remaining flink-shaded dependencies |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7773](https://issues.apache.org/jira/browse/FLINK-7773) | Test instability in UtilsTest#testYarnFlinkResourceManagerJobManagerLostLeadership |  Critical | Tests, YARN | Nico Kruber | Till Rohrmann |
| [FLINK-8002](https://issues.apache.org/jira/browse/FLINK-8002) | Incorrect join window boundaries for LESS\_THAN and GREATER\_THAN predicates |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-6434](https://issues.apache.org/jira/browse/FLINK-6434) | There may be allocatedSlots leak in SlotPool |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8040](https://issues.apache.org/jira/browse/FLINK-8040) | Test instability ResourceGuard#testCloseBlockIfAcquired |  Major | Core, Tests | Gary Yao | Stefan Richter |
| [FLINK-7657](https://issues.apache.org/jira/browse/FLINK-7657) | SQL Timestamps Converted To Wrong Type By Optimizer Causing ClassCastException |  Blocker | Table API & SQL | Kent Murra | Kent Murra |
| [FLINK-7451](https://issues.apache.org/jira/browse/FLINK-7451) | Query fails when non-ascii characters are used in string literals |  Major | Table API & SQL | Jark Wu | Jark Wu |
| [FLINK-8013](https://issues.apache.org/jira/browse/FLINK-8013) | Check of AggregateFunction merge function signature is too strict. |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-7678](https://issues.apache.org/jira/browse/FLINK-7678) | SQL UserDefineTableFunction does not take CompositeType input correctly |  Major | Table API & SQL | Rong Rong | Timo Walther |
| [FLINK-7942](https://issues.apache.org/jira/browse/FLINK-7942) | NPE when apply FilterJoinRule |  Major | Table API & SQL | lincoln.lee | Timo Walther |
| [FLINK-7698](https://issues.apache.org/jira/browse/FLINK-7698) | Join with null literals leads to NPE |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-7988](https://issues.apache.org/jira/browse/FLINK-7988) | HadoopS3FileSystemITCase leaves test directories behind in S3 |  Major | filesystem-connector, Tests | Nico Kruber | Nico Kruber |
| [FLINK-8096](https://issues.apache.org/jira/browse/FLINK-8096) | Fix time material issue when write to TableSink |  Blocker | Table API & SQL | Dian Fu | Dian Fu |
| [FLINK-8136](https://issues.apache.org/jira/browse/FLINK-8136) | Cast exception error on Flink SQL when using DATE\_FORMAT |  Blocker | Table API & SQL | David Marcos | Timo Walther |
| [FLINK-5465](https://issues.apache.org/jira/browse/FLINK-5465) | RocksDB fails with segfault while calling AbstractRocksDBState.clear() |  Major | State Backends, Checkpointing | Robert Metzger | Stefan Richter |
| [FLINK-8126](https://issues.apache.org/jira/browse/FLINK-8126) | Update and fix checkstyle |  Trivial | Build System | Greg Hogan | Greg Hogan |
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
| [FLINK-7777](https://issues.apache.org/jira/browse/FLINK-7777) | Bump japicmp to 0.11.0 |  Minor | Build System | Hai Zhou | Hai Zhou |
| [FLINK-8156](https://issues.apache.org/jira/browse/FLINK-8156) | Bump commons-beanutils version to 1.9.3 |  Major | Build System | Hai Zhou | Hai Zhou |
| [FLINK-8461](https://issues.apache.org/jira/browse/FLINK-8461) | Wrong logger configurations for shaded Netty |  Major | Logging | Stephan Ewen | Stephan Ewen |
| [FLINK-8355](https://issues.apache.org/jira/browse/FLINK-8355) | DataSet Should not union a NULL row for AGG without GROUP BY clause. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-8325](https://issues.apache.org/jira/browse/FLINK-8325) | Add COUNT AGG support constant parameter, i.e. COUNT(\*), COUNT(1) |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-8248](https://issues.apache.org/jira/browse/FLINK-8248) | RocksDB state backend Checkpointing is not working with KeyedCEP in 1.4 |  Major | CEP, State Backends, Checkpointing | jia liu |  |
| [FLINK-8462](https://issues.apache.org/jira/browse/FLINK-8462) | TaskExecutor does not verify RM heartbeat timeouts |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8463](https://issues.apache.org/jira/browse/FLINK-8463) | Remove unnecessary thread blocking in RestClient#submitRequest |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8120](https://issues.apache.org/jira/browse/FLINK-8120) | Cannot access Web UI from YARN application overview in FLIP-6 mode |  Blocker | YARN | Gary Yao | Till Rohrmann |
| [FLINK-8433](https://issues.apache.org/jira/browse/FLINK-8433) | Update code example for "Managed Operator State" documentation |  Major | Documentation, State Backends, Checkpointing | Fabian Hueske | zhangminglei |
| [FLINK-8499](https://issues.apache.org/jira/browse/FLINK-8499) | Kryo must not be child-first loaded |  Blocker | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8466](https://issues.apache.org/jira/browse/FLINK-8466) | ErrorInfo needs to hold Exception as SerializedThrowable |  Blocker | Local Runtime | Jelmer Kuperus | Stephan Ewen |
| [FLINK-8406](https://issues.apache.org/jira/browse/FLINK-8406) | BucketingSink does not detect hadoop file systems |  Blocker | FileSystem | Chesnay Schepler | Stephan Ewen |
| [FLINK-8352](https://issues.apache.org/jira/browse/FLINK-8352) | Flink UI Reports No Error on Job Submission Failures |  Major | Webfrontend | Elias Levy | Steven Langbroek |
| [FLINK-8146](https://issues.apache.org/jira/browse/FLINK-8146) | Potential resource leak in PythonPlanBinder#unzipPythonLibrary |  Major | Python API | Ted Yu | Chesnay Schepler |
| [FLINK-8485](https://issues.apache.org/jira/browse/FLINK-8485) | Running Flink inside Intellij no longer works after upgrading from 1.3.2 to 1.4.0 |  Blocker | Core | Xuan Nguyen | Till Rohrmann |
| [FLINK-8224](https://issues.apache.org/jira/browse/FLINK-8224) | Should shudownApplication when job terminated in job mode |  Major | Cluster Management | shuai.xu | shuai.xu |
| [FLINK-8488](https://issues.apache.org/jira/browse/FLINK-8488) | Dispatcher does not recover Jobs |  Blocker | Distributed Coordination | Gary Yao | Till Rohrmann |
| [FLINK-8505](https://issues.apache.org/jira/browse/FLINK-8505) | SlotManager can reach inconsistent state |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8465](https://issues.apache.org/jira/browse/FLINK-8465) | Retrieve correct leader component address in ClusterClient |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7736](https://issues.apache.org/jira/browse/FLINK-7736) | Fix some of the alerts raised by lgtm.com |  Major | . | Malcolm Taylor | Malcolm Taylor |
| [FLINK-8130](https://issues.apache.org/jira/browse/FLINK-8130) | Javadocs link for snapshot release is not correct |  Blocker | Documentation | Gabor Gevay | Chesnay Schepler |
| [FLINK-8524](https://issues.apache.org/jira/browse/FLINK-8524) | Incorrect JavaDoc in TypeExtractor.getBinaryOperatorReturnType |  Trivial | Java API | Florian Schmidt | Florian Schmidt |
| [FLINK-5659](https://issues.apache.org/jira/browse/FLINK-5659) | FileBaseUtils#deleteFileOrDirectory not thread-safe on Windows |  Trivial | Core, Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6623](https://issues.apache.org/jira/browse/FLINK-6623) | BlobCacheSuccessTest fails on Windows |  Major | Tests | constantine stanley | Chesnay Schepler |
| [FLINK-6464](https://issues.apache.org/jira/browse/FLINK-6464) | Metric name is not stable |  Critical | DataStream API, Metrics | Andrey | Chesnay Schepler |
| [FLINK-8504](https://issues.apache.org/jira/browse/FLINK-8504) | TaskExecutor does not properly deregisters JobManager from JobLeaderService |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8407](https://issues.apache.org/jira/browse/FLINK-8407) | Setting the parallelism after a partitioning operation should be forbidden |  Major | DataStream API | Xingcan Cui | Xingcan Cui |
| [FLINK-8492](https://issues.apache.org/jira/browse/FLINK-8492) | Improve cost estimation for Calcs |  Major | Table API & SQL | Hequn Cheng | Hequn Cheng |
| [FLINK-8496](https://issues.apache.org/jira/browse/FLINK-8496) | WebUI does not display TM MemorySegment metrics |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8230](https://issues.apache.org/jira/browse/FLINK-8230) | NPE in OrcRowInputFormat on nested structs |  Blocker | Batch Connectors and Input/Output Formats | Sebastian Klemke | Fabian Hueske |
| [FLINK-8489](https://issues.apache.org/jira/browse/FLINK-8489) | Data is not emitted by second ElasticSearch connector |  Critical | ElasticSearch Connector | Fabian Hueske | Chesnay Schepler |
| [FLINK-8242](https://issues.apache.org/jira/browse/FLINK-8242) | ClassCastException in OrcTableSource.toOrcPredicate |  Critical | Batch Connectors and Input/Output Formats | Fabian Hueske | Fabian Hueske |
| [FLINK-8561](https://issues.apache.org/jira/browse/FLINK-8561) | SharedBuffer line 573 uses == to compare BufferEntries instead of .equals. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8398](https://issues.apache.org/jira/browse/FLINK-8398) | Stabilize flaky KinesisDataFetcherTests |  Major | Kinesis Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8419](https://issues.apache.org/jira/browse/FLINK-8419) | Kafka consumer's offset metrics are not registered for dynamically discovered partitions |  Blocker | Kafka Connector, Metrics | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8275](https://issues.apache.org/jira/browse/FLINK-8275) | Flink YARN deployment with Kerberos enabled not working |  Blocker | Security | Shuyi Chen | Shuyi Chen |
| [FLINK-8565](https://issues.apache.org/jira/browse/FLINK-8565) | CheckpointOptionsTest unstable |  Major | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8559](https://issues.apache.org/jira/browse/FLINK-8559) | Exceptions in RocksDBIncrementalSnapshotOperation#takeSnapshot cause job to get stuck |  Blocker | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8385](https://issues.apache.org/jira/browse/FLINK-8385) | Fix exceptions in AbstractEventTimeWindowCheckpointingITCase |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-8595](https://issues.apache.org/jira/browse/FLINK-8595) | Include table source factory services in flink-table jar |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-8575](https://issues.apache.org/jira/browse/FLINK-8575) | BackPressureStatsTrackerITCase unstable |  Critical | Tests | Chesnay Schepler | Gary Yao |
| [FLINK-8318](https://issues.apache.org/jira/browse/FLINK-8318) | Conflict jackson library with ElasticSearch connector |  Blocker | ElasticSearch Connector, Startup Shell Scripts | Jihyun Cho | Nico Kruber |
| [FLINK-8270](https://issues.apache.org/jira/browse/FLINK-8270) | TaskManagers do not use correct local path for shipped Keytab files in Yarn deployment modes |  Blocker | Security | Tzu-Li (Gordon) Tai | Shuyi Chen |
| [FLINK-7124](https://issues.apache.org/jira/browse/FLINK-7124) | Allow to rescale JobGraph on JobManager |  Major | Distributed Coordination | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-8617](https://issues.apache.org/jira/browse/FLINK-8617) | Fix code generation bug while accessing Map type |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-7871](https://issues.apache.org/jira/browse/FLINK-7871) | SlotPool should release its unused slot to RM |  Major | Distributed Coordination | shuai.xu | Biao Liu |
| [FLINK-8423](https://issues.apache.org/jira/browse/FLINK-8423) | OperatorChain#pushToOperator catch block may fail with NPE |  Critical | Streaming | Chesnay Schepler | zhangminglei |
| [FLINK-8642](https://issues.apache.org/jira/browse/FLINK-8642) | Initialize descriptors before use at getBroadcastState(). |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8520](https://issues.apache.org/jira/browse/FLINK-8520) | CassandraConnectorITCase.testCassandraTableSink unstable on Travis |  Blocker | Cassandra Connector, Table API & SQL, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-8676](https://issues.apache.org/jira/browse/FLINK-8676) | Memory Leak in AbstractKeyedStateBackend.applyToAllKeys() when backend is base on RocksDB |  Blocker | State Backends, Checkpointing, Streaming | Sihua Zhou | Sihua Zhou |
| [FLINK-8662](https://issues.apache.org/jira/browse/FLINK-8662) | FutureUtilsTest#testRetryWithDelay unstable |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-8693](https://issues.apache.org/jira/browse/FLINK-8693) | initPythonInterpreter is called twice with same arguments in InterpreterUtils#initAndExecPythonScript |  Trivial | Python API | Ted Yu | Chesnay Schepler |
| [FLINK-8692](https://issues.apache.org/jira/browse/FLINK-8692) | Mistake in MyMapFunction code snippet |  Trivial | Documentation | Matt Hagen | Chesnay Schepler |
| [FLINK-8383](https://issues.apache.org/jira/browse/FLINK-8383) | flink-mesos build failing: duplicate Jackson relocation in shaded jar |  Critical | Build System, Mesos | Tzu-Li (Gordon) Tai | Chesnay Schepler |
| [FLINK-8657](https://issues.apache.org/jira/browse/FLINK-8657) | Fix incorrect description for external checkpoint vs savepoint |  Minor | Documentation | Sihua Zhou | Sihua Zhou |
| [FLINK-8425](https://issues.apache.org/jira/browse/FLINK-8425) | SpilledSubpartitionView not protected against concurrent release calls |  Minor | Network | Nico Kruber | Nico Kruber |
| [FLINK-8621](https://issues.apache.org/jira/browse/FLINK-8621) | PrometheusReporterTest.endpointIsUnavailableAfterReporterIsClosed unstable on Travis |  Blocker | Metrics, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-8709](https://issues.apache.org/jira/browse/FLINK-8709) | Flaky test: SlotPoolRpcTest.testCancelSlotAllocationWithoutResourceManager |  Blocker | . | Bowen Li | Till Rohrmann |
| [FLINK-8713](https://issues.apache.org/jira/browse/FLINK-8713) | FileInputFormatTest.testGetStatisticsMultipleOneFileWithCachedVersion unstable on Travis |  Critical | Batch Connectors and Input/Output Formats, Tests | Till Rohrmann | Chesnay Schepler |
| [FLINK-8738](https://issues.apache.org/jira/browse/FLINK-8738) | Converge runtime dependency versions for 'scala-lang' and for 'com.typesafe:config' |  Major | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-8711](https://issues.apache.org/jira/browse/FLINK-8711) | Flink with YARN uses wrong SlotsPerTaskManager |  Critical | YARN | Aleksandr Filichkin | Till Rohrmann |
| [FLINK-8735](https://issues.apache.org/jira/browse/FLINK-8735) | Add savepoint migration ITCase that covers operator state |  Blocker | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8732](https://issues.apache.org/jira/browse/FLINK-8732) | Cancel scheduling operation when cancelling the ExecutionGraph |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8679](https://issues.apache.org/jira/browse/FLINK-8679) | RocksDBKeyedBackend.getKeys(stateName, namespace) doesn't filter data with namespace |  Blocker | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8754](https://issues.apache.org/jira/browse/FLINK-8754) | TaskManagerInfo is not serializable |  Blocker | Distributed Coordination | Gary Yao | Gary Yao |
| [FLINK-8138](https://issues.apache.org/jira/browse/FLINK-8138) | Race in TaskAsyncCallTest leads to test time out |  Critical | Tests | Ufuk Celebi | Till Rohrmann |
| [FLINK-8776](https://issues.apache.org/jira/browse/FLINK-8776) | Cannot submit jobs from Web UI in FLIP-6 YARN Session |  Blocker | Job-Submission, Webfrontend | Gary Yao | Gary Yao |
| [FLINK-8772](https://issues.apache.org/jira/browse/FLINK-8772) | FlinkKafkaConsumerBase partitions discover missing a log parameter |  Trivial | Kafka Connector | Matrix42 | Matrix42 |
| [FLINK-8596](https://issues.apache.org/jira/browse/FLINK-8596) | Custom command line code does not correctly catch errors |  Blocker | Client | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-8543](https://issues.apache.org/jira/browse/FLINK-8543) | Output Stream closed at org.apache.hadoop.fs.s3a.S3AOutputStream.checkOpen |  Blocker | Streaming Connectors | chris snow |  |
| [FLINK-8791](https://issues.apache.org/jira/browse/FLINK-8791) | Fix documentation on how to link dependencies |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-8787](https://issues.apache.org/jira/browse/FLINK-8787) | Deploying FLIP-6 YARN session with HA fails |  Blocker | Client, YARN | Gary Yao | Gary Yao |
| [FLINK-8451](https://issues.apache.org/jira/browse/FLINK-8451) | CaseClassSerializer is not backwards compatible in 1.4 |  Blocker | Type Serialization System | Timo Walther | Timo Walther |
| [FLINK-8821](https://issues.apache.org/jira/browse/FLINK-8821) | Fix non-terminating decimal error |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-8751](https://issues.apache.org/jira/browse/FLINK-8751) | Canceling a job results in a InterruptedException in the TM |  Major | TaskManager | Elias Levy | Stefan Richter |
| [FLINK-8826](https://issues.apache.org/jira/browse/FLINK-8826) | In Flip6 mode, when starting yarn cluster, configured taskmanager.heap.mb is ignored |  Blocker | ResourceManager, YARN | Piotr Nowojski | Till Rohrmann |
| [FLINK-8337](https://issues.apache.org/jira/browse/FLINK-8337) | GatherSumApplyITCase.testConnectedComponentsWithObjectReuseDisabled instable |  Blocker | Gelly, Tests | Till Rohrmann | Nico Kruber |
| [FLINK-8857](https://issues.apache.org/jira/browse/FLINK-8857) | HBase connector read example throws exception at the end. |  Trivial | Batch Connectors and Input/Output Formats | Xu Zhang | Xu Zhang |
| [FLINK-8849](https://issues.apache.org/jira/browse/FLINK-8849) | Wrong link from concepts/runtime to doc on chaining |  Minor | Documentation | Ken Krugler | Ken Krugler |
| [FLINK-8517](https://issues.apache.org/jira/browse/FLINK-8517) | StaticlyNestedIterationsITCase.testJobWithoutObjectReuse unstable on Travis |  Blocker | DataSet API, TaskManager, Tests | Till Rohrmann | Nico Kruber |
| [FLINK-8769](https://issues.apache.org/jira/browse/FLINK-8769) | Quickstart job execution in IDE logs contain several exceptions |  Blocker | Local Runtime | Chesnay Schepler | Nico Kruber |
| [FLINK-8834](https://issues.apache.org/jira/browse/FLINK-8834) | Job fails to restart due to some tasks stuck in cancelling state |  Major | . | Daniel Harper |  |
| [FLINK-8839](https://issues.apache.org/jira/browse/FLINK-8839) | Table source factory discovery is broken in SQL Client |  Blocker | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-8729](https://issues.apache.org/jira/browse/FLINK-8729) | Migrate JSONGenerator from Sling to Jackson |  Minor | Build System, Streaming | Stephan Ewen | Chesnay Schepler |
| [FLINK-8860](https://issues.apache.org/jira/browse/FLINK-8860) | SlotManager spamming log files |  Blocker | JobManager, ResourceManager | Nico Kruber | Nico Kruber |
| [FLINK-8854](https://issues.apache.org/jira/browse/FLINK-8854) | Mapping of SchemaValidator.deriveFieldMapping() is incorrect. |  Blocker | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-8800](https://issues.apache.org/jira/browse/FLINK-8800) | Set Logging to TRACE for org.apache.flink.runtime.rest.handler.job.metrics.JobVertexMetricsHandler |  Blocker | REST | Stephan Ewen | Chesnay Schepler |
| [FLINK-8847](https://issues.apache.org/jira/browse/FLINK-8847) | Modules containing package-info.java are always recompiled |  Minor | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8487](https://issues.apache.org/jira/browse/FLINK-8487) | State loss after multiple restart attempts |  Blocker | State Backends, Checkpointing | Fabian Hueske | Aljoscha Krettek |
| [FLINK-8882](https://issues.apache.org/jira/browse/FLINK-8882) | flink-tests fails with core dump |  Blocker | Tests | Chesnay Schepler | Stefan Richter |
| [FLINK-8274](https://issues.apache.org/jira/browse/FLINK-8274) | Fix Java 64K method compiling limitation for CommonCalc |  Critical | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-7490](https://issues.apache.org/jira/browse/FLINK-7490) | UDF Agg throws Exception when flink-table is loaded with AppClassLoader |  Blocker | Table API & SQL | Miguel Rui Pereira Marques | Fabian Hueske |
| [FLINK-8409](https://issues.apache.org/jira/browse/FLINK-8409) | Race condition in KafkaConsumerThread leads to potential NPE |  Blocker | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8421](https://issues.apache.org/jira/browse/FLINK-8421) | HeapInternalTimerService should reconfigure compatible key / namespace serializers on restore |  Blocker | . | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8484](https://issues.apache.org/jira/browse/FLINK-8484) | Kinesis consumer re-reads closed shards on job restart |  Blocker | Kinesis Connector | Philip Luppens | Philip Luppens |
| [FLINK-8012](https://issues.apache.org/jira/browse/FLINK-8012) | Table with time attribute cannot be written to CsvTableSink |  Critical | Table API & SQL | Fabian Hueske | Fabian Hueske |
| [FLINK-7922](https://issues.apache.org/jira/browse/FLINK-7922) | leastRestrictive in FlinkTypeFactory does not resolve composite type correctly |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-7971](https://issues.apache.org/jira/browse/FLINK-7971) | Fix potential NPE with inconsistent state |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-8687](https://issues.apache.org/jira/browse/FLINK-8687) | MaterializedCollectStreamResult#retrievePage should take resultLock |  Major | . | Ted Yu | zhangminglei |
| [FLINK-8807](https://issues.apache.org/jira/browse/FLINK-8807) | ZookeeperCompleted checkpoint store can get stuck in infinite loop |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8927](https://issues.apache.org/jira/browse/FLINK-8927) | Eagerly release the checkpoint object created from RocksDB |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8783](https://issues.apache.org/jira/browse/FLINK-8783) | Test instability SlotPoolRpcTest.testExtraSlotsAreKept |  Blocker | Tests | Gary Yao | Till Rohrmann |
| [FLINK-8904](https://issues.apache.org/jira/browse/FLINK-8904) | Flink-client tests do not restore previous sysout after changing it |  Blocker | Client, Tests | Nico Kruber | Nico Kruber |
| [FLINK-4569](https://issues.apache.org/jira/browse/FLINK-4569) | JobRetrievalITCase.testJobRetrieval() does not forward exceptions to parent thread. |  Blocker | Client | Robert Metzger | Chesnay Schepler |
| [FLINK-8883](https://issues.apache.org/jira/browse/FLINK-8883) | ExceptionUtils.rethrowIfFatalError should treat ThreadDeath as fatal |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8856](https://issues.apache.org/jira/browse/FLINK-8856) | Move all interrupt() calls to TaskCanceler |  Blocker | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-8934](https://issues.apache.org/jira/browse/FLINK-8934) | Cancel slot requests for otherwisely fulfilled requests |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8827](https://issues.apache.org/jira/browse/FLINK-8827) | When FLINK\_CONF\_DIR contains spaces, execute zookeeper related scripts failed |  Major | . | Donghui Xu |  |
| [FLINK-8798](https://issues.apache.org/jira/browse/FLINK-8798) | Make commons-logging a parent-first pattern |  Blocker | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8808](https://issues.apache.org/jira/browse/FLINK-8808) | Enable RestClusterClient to submit jobs to local Dispatchers |  Blocker | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8896](https://issues.apache.org/jira/browse/FLINK-8896) | Kafka08Fetcher trying to look up topic "n/a" on partiton "-1" |  Critical | Kafka Connector | Nico Kruber | Nico Kruber |
| [FLINK-8884](https://issues.apache.org/jira/browse/FLINK-8884) | The DispatcherThreadFactory should register uncaught exception handlers |  Major | TaskManager | Stephan Ewen | Stephan Ewen |
| [FLINK-8824](https://issues.apache.org/jira/browse/FLINK-8824) | In Kafka Consumers, replace 'getCanonicalName()' with 'getClassName()' |  Major | Kafka Connector | Stephan Ewen | zhangminglei |
| [FLINK-8916](https://issues.apache.org/jira/browse/FLINK-8916) | Checkpointing Mode is always shown to be "At Least Once" in Web UI |  Blocker | REST | Gary Yao | vinoyang |
| [FLINK-8915](https://issues.apache.org/jira/browse/FLINK-8915) | CheckpointingStatisticsHandler fails to return PendingCheckpointStats |  Blocker | REST | Gary Yao | vinoyang |
| [FLINK-8894](https://issues.apache.org/jira/browse/FLINK-8894) | CurrentJobIdsHandler fails to serialize response |  Blocker | REST | Gary Yao | Gary Yao |
| [FLINK-7804](https://issues.apache.org/jira/browse/FLINK-7804) | YarnResourceManager does not execute AMRMClientAsync callbacks in main thread |  Blocker | Distributed Coordination, YARN | Till Rohrmann | Gary Yao |
| [FLINK-8812](https://issues.apache.org/jira/browse/FLINK-8812) | Possible resource leak in Flip6 |  Blocker | Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-9016](https://issues.apache.org/jira/browse/FLINK-9016) | Unregister jobs from JobMetricGroup after termination |  Critical | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-8906](https://issues.apache.org/jira/browse/FLINK-8906) | Flip6DefaultCLI is not tested in org.apache.flink.client.cli tests |  Blocker | Client, Tests | Nico Kruber | Nico Kruber |
| [FLINK-8905](https://issues.apache.org/jira/browse/FLINK-8905) | RestClusterClient#getMaxSlots returns 0 |  Blocker | Client, Cluster Management, REST | Nico Kruber | Nico Kruber |
| [FLINK-8830](https://issues.apache.org/jira/browse/FLINK-8830) | YarnResourceManager throws NullPointerException |  Blocker | YARN | Piotr Nowojski | vinoyang |
| [FLINK-8801](https://issues.apache.org/jira/browse/FLINK-8801) | S3's eventual consistent read-after-write may fail yarn deployment of resources to S3 |  Blocker | FileSystem, ResourceManager, YARN | Nico Kruber | Nico Kruber |
| [FLINK-9019](https://issues.apache.org/jira/browse/FLINK-9019) | Unclosed closeableRegistry in StreamTaskStateInitializerImpl#rawOperatorStateInputs |  Minor | . | Ted Yu | vinoyang |
| [FLINK-8881](https://issues.apache.org/jira/browse/FLINK-8881) | Accumulators not updated for running jobs |  Blocker | DataSet API, DataStream API, Distributed Coordination, JobManager, TaskManager | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9028](https://issues.apache.org/jira/browse/FLINK-9028) | flip6 should check config before starting cluster |  Major | Distributed Coordination | Sihua Zhou | Sihua Zhou |
| [FLINK-7343](https://issues.apache.org/jira/browse/FLINK-7343) | Kafka010ProducerITCase instability |  Blocker | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8984](https://issues.apache.org/jira/browse/FLINK-8984) | Disabling credit based flow control deadlocks Flink on checkpoint |  Blocker | Configuration, Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8649](https://issues.apache.org/jira/browse/FLINK-8649) | Scala StreamExecutionEnvironment.createInput should pass on the TypeInfo |  Trivial | Scala API | Gabor Gevay | Gabor Gevay |
| [FLINK-8903](https://issues.apache.org/jira/browse/FLINK-8903) | Built-in agg functions VAR\_POP, VAR\_SAMP, STDEV\_POP, STDEV\_SAMP are broken in Group Windows |  Critical | Table API & SQL | lilizhao | Fabian Hueske |
| [FLINK-9034](https://issues.apache.org/jira/browse/FLINK-9034) | State Descriptors drop TypeInformation on serialization |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-9035](https://issues.apache.org/jira/browse/FLINK-9035) | State Descriptors have broken hashCode() and equals() |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-8562](https://issues.apache.org/jira/browse/FLINK-8562) | Fix YARNSessionFIFOSecuredITCase |  Blocker | Security | Shuyi Chen | Shuyi Chen |
| [FLINK-9027](https://issues.apache.org/jira/browse/FLINK-9027) | Web UI does not cleanup temporary files |  Blocker | Webfrontend | Nico Kruber | Till Rohrmann |
| [FLINK-9047](https://issues.apache.org/jira/browse/FLINK-9047) | SlotPool can fail to release slots |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8931](https://issues.apache.org/jira/browse/FLINK-8931) | TASK\_KILLING is not covered by match in TaskMonitor#whenUnhandled |  Major | . | Ted Yu | vinoyang |
| [FLINK-5411](https://issues.apache.org/jira/browse/FLINK-5411) | LocalStreamEnvironmentITCase#testRunIsolatedJob failed on travis |  Blocker | ResourceManager, Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-8901](https://issues.apache.org/jira/browse/FLINK-8901) | YARN application name for Flink (per-job) submissions claims it is using only 1 TaskManager |  Blocker | YARN | Nico Kruber | Till Rohrmann |
| [FLINK-8789](https://issues.apache.org/jira/browse/FLINK-8789) | Misleading error message when stopping task that wasn't started yet |  Blocker | Streaming | Chesnay Schepler | Till Rohrmann |
| [FLINK-8415](https://issues.apache.org/jira/browse/FLINK-8415) | Unprotected access to recordsToSend in LongRecordWriterThread#shutdown() |  Minor | Streaming | Ted Yu | vinoyang |
| [FLINK-9057](https://issues.apache.org/jira/browse/FLINK-9057) | NPE in CreditBasedSequenceNumberingViewReader when cancelling before initilization was complete |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-9026](https://issues.apache.org/jira/browse/FLINK-9026) | Unregister finished tasks from TaskManagerMetricGroup and close it |  Major | Metrics | Till Rohrmann | Sihua Zhou |
| [FLINK-9063](https://issues.apache.org/jira/browse/FLINK-9063) | Possible SpillableSubpartitionTest testSpillFinishedBufferConsumers test failure |  Blocker | Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8887](https://issues.apache.org/jira/browse/FLINK-8887) | ClusterClient.getJobStatus can throw FencingTokenException |  Blocker | Distributed Coordination | Gary Yao | Till Rohrmann |
| [FLINK-9099](https://issues.apache.org/jira/browse/FLINK-9099) | Failing allocated slots not noticed |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8740](https://issues.apache.org/jira/browse/FLINK-8740) | Job-level metrics lost during job re-submission in HA mode |  Blocker | JobManager | Joshua DeWald | Till Rohrmann |
| [FLINK-8943](https://issues.apache.org/jira/browse/FLINK-8943) | Jobs will not recover if DFS is temporarily unavailable |  Blocker | Distributed Coordination | Gary Yao | Till Rohrmann |
| [FLINK-8813](https://issues.apache.org/jira/browse/FLINK-8813) | AutoParallellismITCase fails with Flip6 |  Blocker | JobManager, Tests | Chesnay Schepler | Piotr Nowojski |
| [FLINK-9060](https://issues.apache.org/jira/browse/FLINK-9060) | Deleting state using KeyedStateBackend.getKeys() throws Exception |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Sihua Zhou |
| [FLINK-8708](https://issues.apache.org/jira/browse/FLINK-8708) | Unintended integer division in StandaloneThreadedGenerator |  Minor | . | Ted Yu | vinoyang |
| [FLINK-9065](https://issues.apache.org/jira/browse/FLINK-9065) | CorrelateITCase failed on travis |  Blocker | JobManager, Table API & SQL | Chesnay Schepler |  |
| [FLINK-9097](https://issues.apache.org/jira/browse/FLINK-9097) | Jobs can be dropped in HA when job submission fails |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8802](https://issues.apache.org/jira/browse/FLINK-8802) | Concurrent serialization without duplicating serializers in state server. |  Blocker | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8926](https://issues.apache.org/jira/browse/FLINK-8926) | Shutdown client proxy on test end. |  Major | Queryable State, Tests | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8928](https://issues.apache.org/jira/browse/FLINK-8928) | Improve error message on server binding error. |  Major | Queryable State | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8908](https://issues.apache.org/jira/browse/FLINK-8908) | MapSerializer creates new serializer even if key and value serializers are stateless |  Major | Type Serialization System | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8891](https://issues.apache.org/jira/browse/FLINK-8891) | RestServerEndpoint can bind on local address only |  Blocker | REST, YARN | Gary Yao | Gary Yao |
| [FLINK-6567](https://issues.apache.org/jira/browse/FLINK-6567) | ExecutionGraphMetricsTest fails on Windows CI |  Blocker | Tests | Chesnay Schepler | Till Rohrmann |
| [FLINK-9094](https://issues.apache.org/jira/browse/FLINK-9094) | AccumulatorLiveITCase unstable on Travis |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-9108](https://issues.apache.org/jira/browse/FLINK-9108) | invalid ProcessWindowFunction link in Document |  Trivial | Documentation | Matrix42 | Matrix42 |
| [FLINK-9031](https://issues.apache.org/jira/browse/FLINK-9031) | DataSet Job result changes when adding rebalance after union |  Critical | DataSet API, Local Runtime, Optimizer | Fabian Hueske | Fabian Hueske |
| [FLINK-9110](https://issues.apache.org/jira/browse/FLINK-9110) | Building docs with Ruby 2.5 fails if bundler is not globally installed |  Blocker | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-9068](https://issues.apache.org/jira/browse/FLINK-9068) | Website documentation issue - html tag visible on screen |  Minor | Project Website | SHANKAR GANESH | SHANKAR GANESH |
| [FLINK-8968](https://issues.apache.org/jira/browse/FLINK-8968) | Fix native resource leak caused by ReadOptions |  Blocker | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8837](https://issues.apache.org/jira/browse/FLINK-8837) |  add @Experimental annotation and properly annotate some classes |  Blocker | Streaming | Stephan Ewen | Bowen Li |
| [FLINK-8835](https://issues.apache.org/jira/browse/FLINK-8835) | Fix TaskManager config keys |  Blocker | TaskManager | Stephan Ewen | zhangminglei |
| [FLINK-8699](https://issues.apache.org/jira/browse/FLINK-8699) | Fix concurrency problem in rocksdb full checkpoint |  Blocker | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-8426](https://issues.apache.org/jira/browse/FLINK-8426) | Error in Generating Timestamp/Watermakr doc |  Trivial | Documentation | Christophe Jolif | Dmitrii Kniazev |
| [FLINK-9147](https://issues.apache.org/jira/browse/FLINK-9147) | PrometheusReporter jar does not include Prometheus dependencies |  Blocker | Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-9087](https://issues.apache.org/jira/browse/FLINK-9087) | Change the method signature of RecordWriter#broadcastEvent() from BufferConsumer to void |  Minor | Network | Ted Yu | Triones Deng |
| [FLINK-8872](https://issues.apache.org/jira/browse/FLINK-8872) | Yarn detached mode via -yd does not detach |  Blocker | Client, YARN | Nico Kruber | Nico Kruber |
| [FLINK-9103](https://issues.apache.org/jira/browse/FLINK-9103) | SSL verification on TaskManager when parallelism \> 1 |  Major | Docker, Network, Security | Edward Rojas | Edward Rojas |
| [FLINK-9163](https://issues.apache.org/jira/browse/FLINK-9163) | Harden e2e tests' signal traps and config restoration during abort |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-9156](https://issues.apache.org/jira/browse/FLINK-9156) | CLI does not respect -m,--jobmanager option |  Blocker | Client | Gary Yao | Chesnay Schepler |
| [FLINK-9177](https://issues.apache.org/jira/browse/FLINK-9177) | Link under Installing Mesos goes to a 404 page |  Trivial | Documentation | Arunan Sugunakumar | Arunan Sugunakumar |
| [FLINK-9045](https://issues.apache.org/jira/browse/FLINK-9045) | LocalEnvironment with web UI does not work with flip-6 |  Blocker | Webfrontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-8366](https://issues.apache.org/jira/browse/FLINK-8366) | Use Row instead of String as key when process upsert results |  Major | Table API & SQL | Hequn Cheng | Hequn Cheng |
| [FLINK-9011](https://issues.apache.org/jira/browse/FLINK-9011) | YarnResourceManager spamming log file at INFO level |  Blocker | ResourceManager, YARN | Nico Kruber | vinoyang |
| [FLINK-9145](https://issues.apache.org/jira/browse/FLINK-9145) | Website build is broken |  Blocker | Project Website | Chesnay Schepler | Timo Walther |
| [FLINK-8661](https://issues.apache.org/jira/browse/FLINK-8661) | Replace Collections.EMPTY\_MAP with Collections.emptyMap() |  Minor | . | Ted Yu | zhangminglei |
| [FLINK-9199](https://issues.apache.org/jira/browse/FLINK-9199) | Malfunctioning URL target in some messageheaders |  Major | REST | Rong Rong | Rong Rong |
| [FLINK-9208](https://issues.apache.org/jira/browse/FLINK-9208) | StreamNetworkThroughputBenchmarkTests not run in Maven |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-9144](https://issues.apache.org/jira/browse/FLINK-9144) | Spilling batch job hangs |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-9022](https://issues.apache.org/jira/browse/FLINK-9022) | fix resource close in \`StreamTaskStateInitializerImpl.streamOperatorStateContext()\` |  Blocker | State Backends, Checkpointing | Sihua Zhou | Stefan Richter |
| [FLINK-9113](https://issues.apache.org/jira/browse/FLINK-9113) | Data loss in BucketingSink when writing to local filesystem |  Blocker | Streaming Connectors | Timo Walther | Timo Walther |
| [FLINK-9158](https://issues.apache.org/jira/browse/FLINK-9158) | Set default FixedRestartDelayStrategy delay to 0s |  Blocker | Distributed Coordination | Till Rohrmann | Sihua Zhou |
| [FLINK-8402](https://issues.apache.org/jira/browse/FLINK-8402) | HadoopS3FileSystemITCase.testDirectoryListing fails on Travis |  Critical | FileSystem, Tests | Till Rohrmann | Nico Kruber |
| [FLINK-9053](https://issues.apache.org/jira/browse/FLINK-9053) | Exception in RecordWriter during cleanup of StreamTask with the checkpoint trigger running in parallel |  Blocker | Network | Chesnay Schepler | Nico Kruber |
| [FLINK-8600](https://issues.apache.org/jira/browse/FLINK-8600) | BucketingSink errors out when used with Presto filesystem |  Blocker | FileSystem | Narayanan Arunachalam | Aljoscha Krettek |
| [FLINK-9241](https://issues.apache.org/jira/browse/FLINK-9241) | Usage docs for ScalaGauge doesn't work |  Major | Documentation, Metrics | Julio Biason | Chesnay Schepler |
| [FLINK-9230](https://issues.apache.org/jira/browse/FLINK-9230) | WebFrontendITCase.testStopYarn is unstable |  Blocker | Tests, Webfrontend | zhangminglei | Sihua Zhou |
| [FLINK-9225](https://issues.apache.org/jira/browse/FLINK-9225) | Minor code comments fix in RuntimeContext |  Trivial | Documentation | binlijin | binlijin |
| [FLINK-9229](https://issues.apache.org/jira/browse/FLINK-9229) | Fix literal handling in code generation |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-9243](https://issues.apache.org/jira/browse/FLINK-9243) | SuccessAfterNetworkBuffersFailureITCase#testSuccessfulProgramAfterFailure is unstable |  Blocker | Network, Tests | Sihua Zhou | Nico Kruber |
| [FLINK-8841](https://issues.apache.org/jira/browse/FLINK-8841) | Duplicate MapSerializer and HashMapSerializer. |  Major | State Backends, Checkpointing, Type Serialization System | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8715](https://issues.apache.org/jira/browse/FLINK-8715) | RocksDB does not propagate reconfiguration of serializer to the states |  Blocker | State Backends, Checkpointing | Arvid Heise | Tzu-Li (Gordon) Tai |
| [FLINK-9256](https://issues.apache.org/jira/browse/FLINK-9256) | NPE in SingleInputGate#updateInputChannel() for non-credit based flow control |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-9196](https://issues.apache.org/jira/browse/FLINK-9196) | YARN: Flink binaries are not deleted from HDFS after cluster shutdown |  Blocker | YARN | Gary Yao | Gary Yao |
| [FLINK-9263](https://issues.apache.org/jira/browse/FLINK-9263) | Kafka010ITCase failed on travis because of the concurrency problem in DefaultOperateStateBackend |  Blocker | Tests | Sihua Zhou | Sihua Zhou |
| [FLINK-5372](https://issues.apache.org/jira/browse/FLINK-5372) | Fix RocksDBAsyncSnapshotTest.testCancelFullyAsyncCheckpoints() |  Blocker | DataStream API | Aljoscha Krettek | Stefan Richter |
| [FLINK-9211](https://issues.apache.org/jira/browse/FLINK-9211) | Job submission via REST/dashboard does not work on Kubernetes |  Blocker | Client, Job-Submission, REST, Web Client | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-9213](https://issues.apache.org/jira/browse/FLINK-9213) | Revert breaking change in checkpoint detail URL |  Blocker | REST | Chesnay Schepler | Andrey Zagrebin |
| [FLINK-9216](https://issues.apache.org/jira/browse/FLINK-9216) | Fix comparator violation |  Major | Streaming | Ruidong Li | Ruidong Li |
| [FLINK-9119](https://issues.apache.org/jira/browse/FLINK-9119) | example code error in Concepts & Common API |  Minor | Documentation | chillon.m | vinoyang |
| [FLINK-8900](https://issues.apache.org/jira/browse/FLINK-8900) | YARN FinalStatus always shows as KILLED with Flip-6 |  Blocker | YARN | Nico Kruber | Stephan Ewen |
| [FLINK-9293](https://issues.apache.org/jira/browse/FLINK-9293) | SlotPool should check slot id when accepting a slot offer with existing allocation id |  Blocker | JobManager | shuai.xu | shuai.xu |
| [FLINK-9169](https://issues.apache.org/jira/browse/FLINK-9169) | NPE when restoring from old savepoint and state serializer could not be deserialized |  Blocker | State Backends, Checkpointing | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-9287](https://issues.apache.org/jira/browse/FLINK-9287) | KafkaProducer011 seems to leak threads when not in exactly-once mode |  Blocker | Kafka Connector | Christopher Ng | Piotr Nowojski |
| [FLINK-8237](https://issues.apache.org/jira/browse/FLINK-8237) | BucketingSink throws NPE when Writer.duplicate returns null |  Minor | . | Gábor Hermann | Pavel Shvetsov |
| [FLINK-8286](https://issues.apache.org/jira/browse/FLINK-8286) | Fix Flink-Yarn-Kerberos integration for FLIP-6 |  Blocker | Security | Shuyi Chen | Shuyi Chen |
| [FLINK-8533](https://issues.apache.org/jira/browse/FLINK-8533) | Support MasterTriggerRestoreHook state reinitialization |  Major | State Backends, Checkpointing | Eron Wright | Eron Wright |
| [FLINK-9141](https://issues.apache.org/jira/browse/FLINK-9141) | Calling getSideOutput() and split() on one DataStream causes NPE |  Critical | DataStream API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8912](https://issues.apache.org/jira/browse/FLINK-8912) | Web UI does not render error messages correctly in FLIP-6 mode |  Critical | Webfrontend | Gary Yao | Chesnay Schepler |
| [FLINK-9317](https://issues.apache.org/jira/browse/FLINK-9317) | Async I/O API Example For Scala has Variable Name error |  Minor | Documentation | Yazdan Shirvany |  |
| [FLINK-9321](https://issues.apache.org/jira/browse/FLINK-9321) | Rename SubtasksAllAccumulatorsHandlers |  Trivial | REST | Chesnay Schepler | vinoyang |
| [FLINK-9261](https://issues.apache.org/jira/browse/FLINK-9261) | Regression - Flink CLI and Web UI not working when SSL is enabled |  Blocker | Client, Network, Web Client | Edward Rojas | Gary Yao |
| [FLINK-9331](https://issues.apache.org/jira/browse/FLINK-9331) | MesosResourceManager sometimes does not request new Containers |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9324](https://issues.apache.org/jira/browse/FLINK-9324) | SingleLogicalSlot returns completed release future before slot is properly returned |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9190](https://issues.apache.org/jira/browse/FLINK-9190) | YarnResourceManager sometimes does not request new Containers |  Blocker | Distributed Coordination, YARN | Gary Yao | Gary Yao |
| [FLINK-9332](https://issues.apache.org/jira/browse/FLINK-9332) | Fix Codegen error of CallGenerator |  Major | Table API & SQL | Ruidong Li | Ruidong Li |
| [FLINK-9339](https://issues.apache.org/jira/browse/FLINK-9339) | Accumulators are not UI accessible running in FLIP-6 mode |  Minor | REST | Cliff Resnick | vinoyang |
| [FLINK-9201](https://issues.apache.org/jira/browse/FLINK-9201) | same merge window will be fired twice if watermark already passed the merge window |  Blocker | Core | yuemeng | yuemeng |
| [FLINK-8780](https://issues.apache.org/jira/browse/FLINK-8780) | Add Broadcast State documentation. |  Critical | DataStream API, Documentation, Streaming | Kostas Kloudas | Kostas Kloudas |
| [FLINK-9336](https://issues.apache.org/jira/browse/FLINK-9336) | Queryable state fails with Exception after task manager restore |  Blocker | Queryable State | Florian Schmidt | Sihua Zhou |
| [FLINK-9194](https://issues.apache.org/jira/browse/FLINK-9194) | Finished jobs are not archived to HistoryServer |  Blocker | History Server, JobManager | Gary Yao | Chesnay Schepler |
| [FLINK-9246](https://issues.apache.org/jira/browse/FLINK-9246) | HistoryServer job overview broken |  Blocker | History Server, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9358](https://issues.apache.org/jira/browse/FLINK-9358) | Closing of unestablished RM connections can cause NPE |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9304](https://issues.apache.org/jira/browse/FLINK-9304) | Timer service shutdown should not be interrupted |  Major | Streaming | Stefan Richter | Stefan Richter |
| [FLINK-9350](https://issues.apache.org/jira/browse/FLINK-9350) | Parameter baseInterval has wrong check message in CheckpointCoordinator constructor |  Trivial | State Backends, Checkpointing | vinoyang | vinoyang |
| [FLINK-8816](https://issues.apache.org/jira/browse/FLINK-8816) | Remove the oldWorker only after starting newWorker successfully in registerTaskExecutorInternal() |  Major | Distributed Coordination | Sihua Zhou | Sihua Zhou |
| [FLINK-8741](https://issues.apache.org/jira/browse/FLINK-8741) | KafkaFetcher09/010/011 uses wrong user code classloader |  Blocker | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8859](https://issues.apache.org/jira/browse/FLINK-8859) | RocksDB backend should pass WriteOption to Rocks.put() when restoring |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9176](https://issues.apache.org/jira/browse/FLINK-9176) | Category annotations are unused |  Critical | Build System, Tests | Chesnay Schepler | zhangminglei |
| [FLINK-9333](https://issues.apache.org/jira/browse/FLINK-9333) | QuickStart Docs Spelling fix and some info regarding IntelliJ JVM Options |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9359](https://issues.apache.org/jira/browse/FLINK-9359) | Update quickstart docs to only mention Java 8 |  Major | Documentation | David Anderson | David Anderson |
| [FLINK-9381](https://issues.apache.org/jira/browse/FLINK-9381) | BlobServer data for a job is not getting cleaned up at JM |  Blocker | JobManager | Amit Jain | Till Rohrmann |
| [FLINK-9373](https://issues.apache.org/jira/browse/FLINK-9373) | Fix potential data losing for RocksDBBackend |  Blocker | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9299](https://issues.apache.org/jira/browse/FLINK-9299) | ProcessWindowFunction documentation Java examples have errors |  Minor | Documentation | Ken Krugler | vinoyang |
| [FLINK-9397](https://issues.apache.org/jira/browse/FLINK-9397) | Individual Buffer Timeout of 0 incorrectly leads to default timeout |  Major | Streaming | Stephan Ewen | Stephan Ewen |
| [FLINK-9403](https://issues.apache.org/jira/browse/FLINK-9403) | Documentation continues to refer to removed methods |  Minor | Documentation | Elias Levy | Elias Levy |
| [FLINK-9295](https://issues.apache.org/jira/browse/FLINK-9295) | FlinkKafkaProducer011 sometimes throws ProducerFencedExceptions when in EXACTLY\_ONCE mode |  Major | Kafka Connector | Christopher Ng | Piotr Nowojski |
| [FLINK-9414](https://issues.apache.org/jira/browse/FLINK-9414) | Remove jline-terminal and jline-reader from LICENSE file |  Major | . | Till Rohrmann | Till Rohrmann |
| [FLINK-9406](https://issues.apache.org/jira/browse/FLINK-9406) | Request finished partition state fails due to referential equality comparison |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9408](https://issues.apache.org/jira/browse/FLINK-9408) | Retry JM-RM connection in case of explicit disconnect |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9402](https://issues.apache.org/jira/browse/FLINK-9402) | Kinesis consumer validation incorrectly requires aws.region property |  Minor | Kinesis Connector | Thomas Weise | Thomas Weise |
| [FLINK-9349](https://issues.apache.org/jira/browse/FLINK-9349) | KafkaConnector Exception  while fetching from multiple kafka topics |  Critical | Kafka Connector | Vishal Santoshi | Sergey Nuyanzin |
| [FLINK-9415](https://issues.apache.org/jira/browse/FLINK-9415) | Remove reference to StreamingMultipleProgramsTestBase in docs |  Minor | Documentation | Thomas Weise | Thomas Weise |
| [FLINK-9234](https://issues.apache.org/jira/browse/FLINK-9234) | Commons Logging is missing from shaded Flink Table library |  Blocker | Table API & SQL | Eron Wright | Timo Walther |
| [FLINK-9427](https://issues.apache.org/jira/browse/FLINK-9427) | Cannot download from BlobServer, because the server address is unknown. |  Blocker | TaskManager | Piotr Nowojski | Till Rohrmann |
| [FLINK-9421](https://issues.apache.org/jira/browse/FLINK-9421) | RunningJobsRegistry entries are not cleaned up after job termination |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9416](https://issues.apache.org/jira/browse/FLINK-9416) | Make job submission retriable operation in case of a ongoing leader election |  Critical | Client | Till Rohrmann | Till Rohrmann |
| [FLINK-8836](https://issues.apache.org/jira/browse/FLINK-8836) | Duplicating a KryoSerializer does not duplicate registered default serializers |  Blocker | Type Serialization System | Tzu-Li (Gordon) Tai | Stefan Richter |
| [FLINK-9426](https://issues.apache.org/jira/browse/FLINK-9426) | Harden RocksDBWriteBatchPerformanceTest.benchMark() |  Major | Tests | Sihua Zhou | Sihua Zhou |
| [FLINK-9452](https://issues.apache.org/jira/browse/FLINK-9452) | Flink 1.5 document version title shows snapshot |  Minor | Documentation | vinoyang | vinoyang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8251](https://issues.apache.org/jira/browse/FLINK-8251) | Add network (micro) benchmarks in Flink |  Major | Network, Tests | Nico Kruber |  |
| [FLINK-8472](https://issues.apache.org/jira/browse/FLINK-8472) | Extend migration tests for Flink 1.4 |  Blocker | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-9081](https://issues.apache.org/jira/browse/FLINK-9081) | ResourceManagerTaskExecutorTest is unstable |  Blocker | ResourceManager | Timo Walther | Sihua Zhou |
| [FLINK-7488](https://issues.apache.org/jira/browse/FLINK-7488) | TaskManagerHeapSizeCalculationJavaBashTest sometimes fails |  Minor | Tests | Ted Yu | Chesnay Schepler |
| [FLINK-9223](https://issues.apache.org/jira/browse/FLINK-9223) | bufferConsumers should be closed in SpillableSubpartitionTest#testConsumeSpilledPartitionSpilledBeforeAdd |  Minor | . | Ted Yu | vinoyang |
| [FLINK-9214](https://issues.apache.org/jira/browse/FLINK-9214) | YarnClient should be stopped in YARNSessionCapacitySchedulerITCase#testDetachedPerJobYarnClusterInternal |  Minor | . | Ted Yu | vinoyang |
| [FLINK-9254](https://issues.apache.org/jira/browse/FLINK-9254) | Move NotSoMiniClusterIterations to be an end-to-end test |  Minor | Tests | Andrey Zagrebin | Andrey Zagrebin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-7941](https://issues.apache.org/jira/browse/FLINK-7941) | Port SubtasksTimesHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Fang Yong | Fang Yong |
| [FLINK-7706](https://issues.apache.org/jira/browse/FLINK-7706) | Port JobAccumulatorsHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Hai Zhou |
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
| [FLINK-7679](https://issues.apache.org/jira/browse/FLINK-7679) | Upgrade maven enforcer plugin to 3.0.0-M1 |  Major | Build System | Ted Yu | Hai Zhou |
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
| [FLINK-8199](https://issues.apache.org/jira/browse/FLINK-8199) | Annotation for Elasticsearch connector |  Major | ElasticSearch Connector | zhangminglei | zhangminglei |
| [FLINK-8276](https://issues.apache.org/jira/browse/FLINK-8276) | Annotation for Kafka connector |  Major | Streaming Connectors | zhangminglei | zhangminglei |
| [FLINK-8368](https://issues.apache.org/jira/browse/FLINK-8368) | Port SubtaskExecutionAttemptDetailsHandler to new REST endpoint |  Major | REST | Biao Liu | Biao Liu |
| [FLINK-8369](https://issues.apache.org/jira/browse/FLINK-8369) | Port SubtaskExecutionAttemptAccumulatorsHandler to new REST endpoint |  Major | REST | Biao Liu | Biao Liu |
| [FLINK-8367](https://issues.apache.org/jira/browse/FLINK-8367) | Port SubtaskCurrentAttemptDetailsHandler to new REST endpoint |  Major | REST | Biao Liu | Biao Liu |
| [FLINK-8175](https://issues.apache.org/jira/browse/FLINK-8175) | remove flink-streaming-contrib and migrate its classes to flink-streaming-java/scala |  Major | . | Bowen Li | Bowen Li |
| [FLINK-7468](https://issues.apache.org/jira/browse/FLINK-7468) | Implement sender backlog logic for credit-based |  Major | Network | zhijiang | zhijiang |
| [FLINK-7925](https://issues.apache.org/jira/browse/FLINK-7925) |  Add CheckpointingOptions |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-7520](https://issues.apache.org/jira/browse/FLINK-7520) | let our Buffer class extend from netty's buffer class |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-8395](https://issues.apache.org/jira/browse/FLINK-8395) | Create (derived) sliced Buffer class |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-7518](https://issues.apache.org/jira/browse/FLINK-7518) | pass our own buffer instances to netty |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-6892](https://issues.apache.org/jira/browse/FLINK-6892) | Add L/RPAD supported in SQL |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-6973](https://issues.apache.org/jira/browse/FLINK-6973) | Add L/RPAD supported in TableAPI |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-7858](https://issues.apache.org/jira/browse/FLINK-7858) | Port JobVertexTaskManagersHandler to REST endpoint |  Major | REST | Fang Yong | Fang Yong |
| [FLINK-8494](https://issues.apache.org/jira/browse/FLINK-8494) | Migrate CC#DEFAULT\_PARALLELISM\_KEY |  Blocker | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-4767](https://issues.apache.org/jira/browse/FLINK-4767) | Migrate JobManager configuration options |  Major | Distributed Coordination, Local Runtime | Stephan Ewen |  |
| [FLINK-5823](https://issues.apache.org/jira/browse/FLINK-5823) | Store Checkpoint Root Metadata in StateBackend (not in HA custom store) |  Blocker | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-8531](https://issues.apache.org/jira/browse/FLINK-8531) | Support separation of "Exclusive", "Shared" and "Task owned" state |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-8539](https://issues.apache.org/jira/browse/FLINK-8539) | Introduce "CompletedCheckpointStorageLocation" to explicitly handle disposal of checkpoint storage locations |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-8540](https://issues.apache.org/jira/browse/FLINK-8540) | FileStateHandles must not attempt to delete their parent directory. |  Major | State Backends, Checkpointing | Stephan Ewen | Stephan Ewen |
| [FLINK-4809](https://issues.apache.org/jira/browse/FLINK-4809) | Operators should tolerate checkpoint failures |  Major | State Backends, Checkpointing | Stephan Ewen | Stefan Richter |
| [FLINK-7797](https://issues.apache.org/jira/browse/FLINK-7797) | Add support for windowed outer joins for streaming tables |  Major | Table API & SQL | Fabian Hueske | Xingcan Cui |
| [FLINK-8495](https://issues.apache.org/jira/browse/FLINK-8495) | Serve main cluster components log and stdout file |  Major | REST, Webfrontend | Till Rohrmann | Till Rohrmann |
| [FLINK-7856](https://issues.apache.org/jira/browse/FLINK-7856) | Port JobVertexBackPressureHandler to REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Fang Yong | Gary Yao |
| [FLINK-8503](https://issues.apache.org/jira/browse/FLINK-8503) | Port TaskManagerLogHandler to new REST endpoint |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8446](https://issues.apache.org/jira/browse/FLINK-8446) | Add support for multiple broadcast states. |  Major | DataStream API | Kostas Kloudas | Kostas Kloudas |
| [FLINK-7760](https://issues.apache.org/jira/browse/FLINK-7760) | Restore failing from external checkpointing metadata. |  Blocker | CEP, State Backends, Checkpointing | Shashank Agarwal |  |
| [FLINK-6590](https://issues.apache.org/jira/browse/FLINK-6590) | Integrate generated tables into documentation |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8456](https://issues.apache.org/jira/browse/FLINK-8456) | Add Scala API for Connected Streams with Broadcast State. |  Major | Streaming | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8644](https://issues.apache.org/jira/browse/FLINK-8644) | Shut down AkkaRpcActors with PoisonPill |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7713](https://issues.apache.org/jira/browse/FLINK-7713) | Port JarUploadHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Gary Yao |
| [FLINK-8630](https://issues.apache.org/jira/browse/FLINK-8630) | Add proper support for JSON formats |  Blocker | Streaming Connectors | Xingcan Cui | Timo Walther |
| [FLINK-8475](https://issues.apache.org/jira/browse/FLINK-8475) | Move remaining sections to generated tables |  Major | Configuration | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8607](https://issues.apache.org/jira/browse/FLINK-8607) | Add a basic embedded SQL CLI client |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-7711](https://issues.apache.org/jira/browse/FLINK-7711) | Port JarListHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Gary Yao |
| [FLINK-8614](https://issues.apache.org/jira/browse/FLINK-8614) | Enable Flip-6 per default |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-7715](https://issues.apache.org/jira/browse/FLINK-7715) | Port JarRunHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Gary Yao |
| [FLINK-7456](https://issues.apache.org/jira/browse/FLINK-7456) | Implement Netty sender incoming pipeline for credit-based |  Major | Network | zhijiang | zhijiang |
| [FLINK-8723](https://issues.apache.org/jira/browse/FLINK-8723) | Remove existing BroadcastState examples. |  Blocker | Examples, Streaming | Kostas Kloudas | Kostas Kloudas |
| [FLINK-6489](https://issues.apache.org/jira/browse/FLINK-6489) | Rework 'start-local.bat' to 'start-local-cluster.bat' |  Major | Startup Shell Scripts | Stephan Ewen | Stephan Ewen |
| [FLINK-8696](https://issues.apache.org/jira/browse/FLINK-8696) | Remove JobManager local mode from the Unix Shell Scripts |  Major | Startup Shell Scripts | Stephan Ewen | Stephan Ewen |
| [FLINK-7714](https://issues.apache.org/jira/browse/FLINK-7714) | Port JarPlanHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Gary Yao |
| [FLINK-7712](https://issues.apache.org/jira/browse/FLINK-7712) | Port JarDeleteHandler to new REST endpoint |  Major | Distributed Coordination, REST, Webfrontend | Tzu-Li (Gordon) Tai | Gary Yao |
| [FLINK-8547](https://issues.apache.org/jira/browse/FLINK-8547) | Implement CheckpointBarrierHandler not to spill data for exactly-once based on credit-based flow control |  Major | Network | zhijiang | zhijiang |
| [FLINK-8674](https://issues.apache.org/jira/browse/FLINK-8674) | Efficiently handle alwaysFlush case (0ms flushTimeout) |  Major | . | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8635](https://issues.apache.org/jira/browse/FLINK-8635) | Register asynchronous rescaling handler at WebMonitorEndpoint |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-8665](https://issues.apache.org/jira/browse/FLINK-8665) | Allow RpcEndpoint#postStop to complete asynchronously |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8664](https://issues.apache.org/jira/browse/FLINK-8664) | Change termination future type of RpcEndpoint to Void |  Minor | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8678](https://issues.apache.org/jira/browse/FLINK-8678) | Make AkkaRpcService#stopService non-blocking |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8762](https://issues.apache.org/jira/browse/FLINK-8762) | Remove unnecessary examples and make "StreamingJob" the default |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8763](https://issues.apache.org/jira/browse/FLINK-8763) | Remove obsolete Dummy.java classes from quickstart projects. |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8765](https://issues.apache.org/jira/browse/FLINK-8765) | Simplify quickstart properties |  Trivial | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8764](https://issues.apache.org/jira/browse/FLINK-8764) | Make quickstarts work out of the box for IDE and JAR packaging |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8766](https://issues.apache.org/jira/browse/FLINK-8766) | Pin scala runtime version for Java Quickstart |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8767](https://issues.apache.org/jira/browse/FLINK-8767) | Set the maven.compiler.source and .target properties for Java Quickstart |  Minor | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8733](https://issues.apache.org/jira/browse/FLINK-8733) | SpillableSubpartition#spillFinishedBufferConsumers() does not count spilled bytes anymore |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-8734](https://issues.apache.org/jira/browse/FLINK-8734) | SpillableSubpartition does not update byte statistics when spilled by a SpillableSubpartitionView |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-8736](https://issues.apache.org/jira/browse/FLINK-8736) | Memory segment offsets for slices of slices are wrong |  Critical | Network | Nico Kruber | Nico Kruber |
| [FLINK-8538](https://issues.apache.org/jira/browse/FLINK-8538) | Add a Kafka table source factory with JSON format support |  Major | Table API & SQL | Timo Walther | Xingcan Cui |
| [FLINK-8750](https://issues.apache.org/jira/browse/FLINK-8750) | InputGate may contain data after an EndOfPartitionEvent |  Blocker | Network | Nico Kruber | Piotr Nowojski |
| [FLINK-8737](https://issues.apache.org/jira/browse/FLINK-8737) | Creating a union of UnionGate instances will fail with UnsupportedOperationException when retrieving buffers |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-8694](https://issues.apache.org/jira/browse/FLINK-8694) | Make notifyDataAvailable call reliable |  Blocker | . | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8760](https://issues.apache.org/jira/browse/FLINK-8760) | Correctly set \`moreAvailable\` flag in SingleInputGate and UnionInputGate |  Blocker | . | Piotr Nowojski | Piotr Nowojski |
| [FLINK-8747](https://issues.apache.org/jira/browse/FLINK-8747) | The tag of waiting for floating buffers in RemoteInputChannel should be updated properly |  Minor | Network | zhijiang | zhijiang |
| [FLINK-7756](https://issues.apache.org/jira/browse/FLINK-7756) | RocksDB state backend Checkpointing (Async and Incremental)  is not working with CEP. |  Blocker | CEP, State Backends, Checkpointing, Streaming | Shashank Agarwal | Aljoscha Krettek |
| [FLINK-6321](https://issues.apache.org/jira/browse/FLINK-6321) | RocksDB state backend Checkpointing is not working with KeyedCEP. |  Blocker | CEP | Shashank Agarwal | Kostas Kloudas |
| [FLINK-8458](https://issues.apache.org/jira/browse/FLINK-8458) | Add the switch for keeping both the old mode and the new credit-based mode |  Major | Network | zhijiang | zhijiang |
| [FLINK-8818](https://issues.apache.org/jira/browse/FLINK-8818) | Harden YarnFileStageTest upload test for eventual consistent read-after-write |  Blocker | FileSystem, Tests, YARN | Nico Kruber | Nico Kruber |
| [FLINK-8797](https://issues.apache.org/jira/browse/FLINK-8797) | Port AbstractOperatorRestoreTestBase to MiniClusterResource |  Blocker | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8778](https://issues.apache.org/jira/browse/FLINK-8778) | Migrate queryable state ITCases to use MiniClusterResource |  Blocker | Tests | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-8850](https://issues.apache.org/jira/browse/FLINK-8850) | SQL Client does not support Event-time |  Blocker | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-8832](https://issues.apache.org/jira/browse/FLINK-8832) | Create a SQL Client Kafka fat-jar |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-8877](https://issues.apache.org/jira/browse/FLINK-8877) | Configure Kryo's log level based on Flink's log level |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8786](https://issues.apache.org/jira/browse/FLINK-8786) | SpillableSubpartitionView#getNextBuffer always sets isMoreAvailable to false when switching from spillable to spilled |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-8459](https://issues.apache.org/jira/browse/FLINK-8459) | Implement cancelWithSavepoint in RestClusterClient |  Blocker | Client | Gary Yao | Gary Yao |
| [FLINK-8878](https://issues.apache.org/jira/browse/FLINK-8878) | Check for concurrent access to Kryo Serializer |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8755](https://issues.apache.org/jira/browse/FLINK-8755) | SpilledSubpartitionView wrongly relys on the backlog for determining whether more data is available |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-8879](https://issues.apache.org/jira/browse/FLINK-8879) | Add concurrent access check to AvroSerializer |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8701](https://issues.apache.org/jira/browse/FLINK-8701) | Migrate SavepointMigrationTestBase to MiniClusterResource |  Blocker | Tests | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-8975](https://issues.apache.org/jira/browse/FLINK-8975) | End-to-end test: Resume from savepoint |  Blocker | Tests | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-8976](https://issues.apache.org/jira/browse/FLINK-8976) | End-to-end test: Resume with different parallelism |  Blocker | Tests | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-8852](https://issues.apache.org/jira/browse/FLINK-8852) | SQL Client does not work with new FLIP-6 mode |  Blocker | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-8833](https://issues.apache.org/jira/browse/FLINK-8833) | Create a SQL Client JSON format fat-jar |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-9067](https://issues.apache.org/jira/browse/FLINK-9067) | End-to-end test: Stream SQL query with failure and retry |  Major | Table API & SQL, Tests | Fabian Hueske | Fabian Hueske |
| [FLINK-9106](https://issues.apache.org/jira/browse/FLINK-9106) | Add UnfencedMainThreadExecutor to FencedRpcEndpoint |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8973](https://issues.apache.org/jira/browse/FLINK-8973) | End-to-end test: Run general purpose job with failures in standalone mode |  Blocker | Tests | Till Rohrmann | Kostas Kloudas |
| [FLINK-9128](https://issues.apache.org/jira/browse/FLINK-9128) | Add support for scheduleRunAsync for FencedRpcEndpoints |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8563](https://issues.apache.org/jira/browse/FLINK-8563) | Support consecutive DOT operators |  Major | Table API & SQL | Timo Walther | Shuyi Chen |
| [FLINK-8703](https://issues.apache.org/jira/browse/FLINK-8703) | Migrate tests from LocalFlinkMiniCluster to MiniClusterResource |  Blocker | Tests | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-8702](https://issues.apache.org/jira/browse/FLINK-8702) | Migrate tests from FlinkMiniCluster to MiniClusterResource |  Blocker | Tests | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-8961](https://issues.apache.org/jira/browse/FLINK-8961) | Port JobRetrievalITCase to flip6 |  Blocker | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8370](https://issues.apache.org/jira/browse/FLINK-8370) | Port AbstractAggregatingMetricsHandler to RestServerEndpoint |  Blocker | REST | Gary Yao | Chesnay Schepler |
| [FLINK-9183](https://issues.apache.org/jira/browse/FLINK-9183) | Kafka consumer docs to warn about idle partitions |  Major | . | Juho Autio | Juho Autio |
| [FLINK-9186](https://issues.apache.org/jira/browse/FLINK-9186) | Enable dependency convergence for flink-libraries |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8990](https://issues.apache.org/jira/browse/FLINK-8990) | End-to-end test: Dynamic Kafka partition discovery |  Major | Kafka Connector, Tests | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-8704](https://issues.apache.org/jira/browse/FLINK-8704) | Migrate tests from TestingCluster to MiniClusterResource |  Blocker | Tests | Aljoscha Krettek | Chesnay Schepler |
| [FLINK-8980](https://issues.apache.org/jira/browse/FLINK-8980) | End-to-end test: BucketingSink |  Blocker | Tests | Till Rohrmann | Timo Walther |
| [FLINK-9076](https://issues.apache.org/jira/browse/FLINK-9076) | Make credit-based floating buffers optional |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-8967](https://issues.apache.org/jira/browse/FLINK-8967) | Port NetworkStackThroughputITCase to flip6 |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9212](https://issues.apache.org/jira/browse/FLINK-9212) | Port SubtasksAllAccumulatorsHandler to new REST endpoint |  Blocker | REST | Chesnay Schepler | Hai Zhou |
| [FLINK-8978](https://issues.apache.org/jira/browse/FLINK-8978) | End-to-end test: Job upgrade |  Blocker | Tests | Till Rohrmann | Andrey Zagrebin |
| [FLINK-9073](https://issues.apache.org/jira/browse/FLINK-9073) | Resume from savepoint end-to-end tests should be extended for different state backends |  Blocker | . | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-9181](https://issues.apache.org/jira/browse/FLINK-9181) | Add SQL Client documentation page |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-9074](https://issues.apache.org/jira/browse/FLINK-9074) | End-to-end test: Resume from retained checkpoints |  Blocker | . | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-9365](https://issues.apache.org/jira/browse/FLINK-9365) | Add version information to remote rpc messages |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9361](https://issues.apache.org/jira/browse/FLINK-9361) | Changing refresh interval in changelog mode leads to exception |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-8910](https://issues.apache.org/jira/browse/FLINK-8910) | Introduce automated end-to-end test for local recovery (including sticky scheduling) |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-8232](https://issues.apache.org/jira/browse/FLINK-8232) | Create RestHandler for long running operations |  Major | REST | Till Rohrmann |  |
| [FLINK-6160](https://issues.apache.org/jira/browse/FLINK-6160) |  Retry JobManager/ResourceManager connection in case of timeout |  Blocker | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-8979](https://issues.apache.org/jira/browse/FLINK-8979) | Extend Kafka end-to-end tests to run with different versions |  Blocker | Tests | Till Rohrmann | Tzu-Li (Gordon) Tai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8320](https://issues.apache.org/jira/browse/FLINK-8320) | Flink cluster does not work on Java 9 |  Major | . | Steve Layland |  |
| [FLINK-6909](https://issues.apache.org/jira/browse/FLINK-6909) | Fix error message in CsvReader for wrong type class |  Minor | Type Serialization System | Md Kamaruzzaman | Timo Walther |
| [FLINK-8359](https://issues.apache.org/jira/browse/FLINK-8359) | Update copyright date in NOTICE |  Major | Build System | Hai Zhou | Hai Zhou |
| [FLINK-7934](https://issues.apache.org/jira/browse/FLINK-7934) | Upgrade Calcite dependency to 1.15 |  Major | Table API & SQL | Rong Rong | Shuyi Chen |
| [FLINK-8308](https://issues.apache.org/jira/browse/FLINK-8308) | Update yajl-ruby dependency to 1.3.1 or higher |  Critical | Project Website | Fabian Hueske | Steven Langbroek |
| [FLINK-8648](https://issues.apache.org/jira/browse/FLINK-8648) | Allow for customization of emitRecordAndUpdateState in Kinesis connector |  Minor | Kinesis Connector | Thomas Weise | Thomas Weise |
| [FLINK-8972](https://issues.apache.org/jira/browse/FLINK-8972) | Create general purpose DataSet testing job |  Critical | Tests | Till Rohrmann | Fabian Hueske |
| [FLINK-9069](https://issues.apache.org/jira/browse/FLINK-9069) | Fix some double semicolons to single semicolons, and update checkstyle |  Trivial | Checkstyle | Jacob Park | Jacob Park |
| [FLINK-8507](https://issues.apache.org/jira/browse/FLINK-8507) | Upgrade Calcite dependency to 1.16 |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-8509](https://issues.apache.org/jira/browse/FLINK-8509) | Remove SqlGroupedWindowFunction from Flink repo |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-8508](https://issues.apache.org/jira/browse/FLINK-8508) | Remove RexSimplify from Flink repo |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-9059](https://issues.apache.org/jira/browse/FLINK-9059) | Add support for unified table source and sink declaration in environment file |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-9124](https://issues.apache.org/jira/browse/FLINK-9124) | Allow customization of KinesisProxy.getRecords read timeout and retry |  Minor | Kinesis Connector | Thomas Weise | Thomas Weise |
| [FLINK-9188](https://issues.apache.org/jira/browse/FLINK-9188) | Provide a mechanism to configure AmazonKinesisClient in FlinkKinesisConsumer |  Major | Kinesis Connector | Thomas Weise | Thomas Weise |
| [FLINK-9310](https://issues.apache.org/jira/browse/FLINK-9310) | Update default cyphersuites |  Major | Security | Stephan Ewen | Stephan Ewen |


