
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

## Release 1.4.1 - 2018-02-15



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6951](https://issues.apache.org/jira/browse/FLINK-6951) | Incompatible versions of httpcomponents jars for Flink kinesis connector |  Critical | Kinesis Connector | Ted Yu | Bowen Li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8264](https://issues.apache.org/jira/browse/FLINK-8264) | Add Scala to the parent-first loading patterns |  Major | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8346](https://issues.apache.org/jira/browse/FLINK-8346) | add S3 signature v4 workaround to docs |  Major | Documentation, FileSystem | Nico Kruber | Nico Kruber |
| [FLINK-8260](https://issues.apache.org/jira/browse/FLINK-8260) | Document API of Kafka 0.11 Producer |  Critical | Documentation | Fabian Hueske | Tzu-Li (Gordon) Tai |
| [FLINK-8287](https://issues.apache.org/jira/browse/FLINK-8287) | Flink Kafka Producer docs should clearly state what partitioner is used by default |  Major | Documentation, Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8271](https://issues.apache.org/jira/browse/FLINK-8271) | upgrade from deprecated classes to AmazonKinesis |  Major | Kinesis Connector | Bowen Li | Bowen Li |
| [FLINK-8296](https://issues.apache.org/jira/browse/FLINK-8296) | Rework FlinkKafkaConsumerBestTest to not use Java reflection for dependency injection |  Major | Kafka Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8455](https://issues.apache.org/jira/browse/FLINK-8455) | Add Hadoop to the parent-first loading patterns |  Blocker | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8473](https://issues.apache.org/jira/browse/FLINK-8473) | JarListHandler may fail with NPE if directory is deleted |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8079](https://issues.apache.org/jira/browse/FLINK-8079) | Skip remaining E2E tests if one failed |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8243](https://issues.apache.org/jira/browse/FLINK-8243) | OrcTableSource should recursively read all files in nested directories of the input path. |  Critical | Batch Connectors and Input/Output Formats | Fabian Hueske | Fabian Hueske |
| [FLINK-8362](https://issues.apache.org/jira/browse/FLINK-8362) | Shade Elasticsearch dependencies away |  Major | Build System, ElasticSearch Connector | Nico Kruber | Nico Kruber |
| [FLINK-8571](https://issues.apache.org/jira/browse/FLINK-8571) | Provide an enhanced KeyedStream implementation to use ForwardPartitioner |  Major | . | Nagarjun Guraja | Stefan Richter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8145](https://issues.apache.org/jira/browse/FLINK-8145) | IOManagerAsync not properly shut down in various tests |  Major | Tests | Nico Kruber | Nico Kruber |
| [FLINK-8235](https://issues.apache.org/jira/browse/FLINK-8235) | Cannot run spotbugs for single module |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8261](https://issues.apache.org/jira/browse/FLINK-8261) | Typos in the shading exclusion for jsr305 in the quickstarts |  Major | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8263](https://issues.apache.org/jira/browse/FLINK-8263) | Wrong packaging of flink-core in scala quickstarty |  Blocker | Quickstarts | Stephan Ewen | Stephan Ewen |
| [FLINK-8249](https://issues.apache.org/jira/browse/FLINK-8249) | Kinesis Producer didnt configure region |  Major | Kinesis Connector | Joao Boto |  |
| [FLINK-8295](https://issues.apache.org/jira/browse/FLINK-8295) | Netty shading does not work properly |  Major | Cassandra Connector, Core | Timo Walther | Nico Kruber |
| [FLINK-8278](https://issues.apache.org/jira/browse/FLINK-8278) | Scala examples in Metric documentation do not compile |  Major | Documentation | Fabian Hueske | Xingcan Cui |
| [FLINK-5506](https://issues.apache.org/jira/browse/FLINK-5506) | Java 8 - CommunityDetection.java:158 - java.lang.NullPointerException |  Major | Gelly | Miguel E. Coimbra | Greg Hogan |
| [FLINK-8265](https://issues.apache.org/jira/browse/FLINK-8265) | Missing jackson dependency for flink-mesos |  Critical | Mesos | Eron Wright | Eron Wright |
| [FLINK-8283](https://issues.apache.org/jira/browse/FLINK-8283) | FlinkKafkaConsumerBase failing on Travis with no output in 10min |  Critical | Kafka Connector, Tests | Nico Kruber | Tzu-Li (Gordon) Tai |
| [FLINK-8200](https://issues.apache.org/jira/browse/FLINK-8200) | RocksDBAsyncSnapshotTest should use temp fold instead of fold with fixed name |  Major | . | Wenlong Lyu | Wenlong Lyu |
| [FLINK-7949](https://issues.apache.org/jira/browse/FLINK-7949) | AsyncWaitOperator is not restarting when queue is full |  Critical | Streaming | Bartłomiej Tartanus | Bartłomiej Tartanus |
| [FLINK-8371](https://issues.apache.org/jira/browse/FLINK-8371) | Buffers are not recycled in a non-spilled SpillableSubpartition upon release |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-8226](https://issues.apache.org/jira/browse/FLINK-8226) | Dangling reference generated after NFA clean up timed out SharedBufferEntry |  Major | CEP | Dian Fu | Dian Fu |
| [FLINK-8306](https://issues.apache.org/jira/browse/FLINK-8306) | FlinkKafkaConsumerBaseTest has invalid mocks on final methods |  Critical | Kafka Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8461](https://issues.apache.org/jira/browse/FLINK-8461) | Wrong logger configurations for shaded Netty |  Major | Logging | Stephan Ewen | Stephan Ewen |
| [FLINK-8355](https://issues.apache.org/jira/browse/FLINK-8355) | DataSet Should not union a NULL row for AGG without GROUP BY clause. |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-8325](https://issues.apache.org/jira/browse/FLINK-8325) | Add COUNT AGG support constant parameter, i.e. COUNT(\*), COUNT(1) |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-8248](https://issues.apache.org/jira/browse/FLINK-8248) | RocksDB state backend Checkpointing is not working with KeyedCEP in 1.4 |  Major | CEP, State Backends, Checkpointing | jia liu |  |
| [FLINK-8433](https://issues.apache.org/jira/browse/FLINK-8433) | Update code example for "Managed Operator State" documentation |  Major | Documentation, State Backends, Checkpointing | Fabian Hueske | mingleizhang |
| [FLINK-8499](https://issues.apache.org/jira/browse/FLINK-8499) | Kryo must not be child-first loaded |  Blocker | Core | Stephan Ewen | Stephan Ewen |
| [FLINK-8466](https://issues.apache.org/jira/browse/FLINK-8466) | ErrorInfo needs to hold Exception as SerializedThrowable |  Blocker | Local Runtime | Jelmer Kuperus | Stephan Ewen |
| [FLINK-8406](https://issues.apache.org/jira/browse/FLINK-8406) | BucketingSink does not detect hadoop file systems |  Blocker | FileSystem | Chesnay Schepler | Stephan Ewen |
| [FLINK-8352](https://issues.apache.org/jira/browse/FLINK-8352) | Flink UI Reports No Error on Job Submission Failures |  Major | Webfrontend | Elias Levy | Steven Langbroek |
| [FLINK-8485](https://issues.apache.org/jira/browse/FLINK-8485) | Running Flink inside Intellij no longer works after upgrading from 1.3.2 to 1.4.0 |  Blocker | Core | Xuan Nguyen | Till Rohrmann |
| [FLINK-8496](https://issues.apache.org/jira/browse/FLINK-8496) | WebUI does not display TM MemorySegment metrics |  Major | Metrics, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8230](https://issues.apache.org/jira/browse/FLINK-8230) | NPE in OrcRowInputFormat on nested structs |  Blocker | Batch Connectors and Input/Output Formats | Sebastian Klemke | Fabian Hueske |
| [FLINK-8489](https://issues.apache.org/jira/browse/FLINK-8489) | Data is not emitted by second ElasticSearch connector |  Critical | ElasticSearch Connector | Fabian Hueske | Chesnay Schepler |
| [FLINK-8242](https://issues.apache.org/jira/browse/FLINK-8242) | ClassCastException in OrcTableSource.toOrcPredicate |  Critical | Batch Connectors and Input/Output Formats | Fabian Hueske | Fabian Hueske |
| [FLINK-8561](https://issues.apache.org/jira/browse/FLINK-8561) | SharedBuffer line 573 uses == to compare BufferEntries instead of .equals. |  Major | CEP | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8398](https://issues.apache.org/jira/browse/FLINK-8398) | Stabilize flaky KinesisDataFetcherTests |  Major | Kinesis Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8419](https://issues.apache.org/jira/browse/FLINK-8419) | Kafka consumer's offset metrics are not registered for dynamically discovered partitions |  Blocker | Kafka Connector, Metrics | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8275](https://issues.apache.org/jira/browse/FLINK-8275) | Flink YARN deployment with Kerberos enabled not working |  Blocker | Security | Shuyi Chen | Shuyi Chen |
| [FLINK-8559](https://issues.apache.org/jira/browse/FLINK-8559) | Exceptions in RocksDBIncrementalSnapshotOperation#takeSnapshot cause job to get stuck |  Blocker | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-8522](https://issues.apache.org/jira/browse/FLINK-8522) | DefaultOperatorStateBackend writes data in checkpoint that is never read. |  Major | State Backends, Checkpointing | Kostas Kloudas | Kostas Kloudas |
| [FLINK-8318](https://issues.apache.org/jira/browse/FLINK-8318) | Conflict jackson library with ElasticSearch connector |  Blocker | ElasticSearch Connector, Startup Shell Scripts | Jihyun Cho | Nico Kruber |
| [FLINK-8270](https://issues.apache.org/jira/browse/FLINK-8270) | TaskManagers do not use correct local path for shipped Keytab files in Yarn deployment modes |  Blocker | Security | Tzu-Li (Gordon) Tai | Shuyi Chen |
| [FLINK-8409](https://issues.apache.org/jira/browse/FLINK-8409) | Race condition in KafkaConsumerThread leads to potential NPE |  Blocker | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8421](https://issues.apache.org/jira/browse/FLINK-8421) | HeapInternalTimerService should reconfigure compatible key / namespace serializers on restore |  Blocker | . | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8484](https://issues.apache.org/jira/browse/FLINK-8484) | Kinesis consumer re-reads closed shards on job restart |  Blocker | Kinesis Connector | Philip Luppens | Philip Luppens |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8472](https://issues.apache.org/jira/browse/FLINK-8472) | Extend migration tests for Flink 1.4 |  Blocker | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8323](https://issues.apache.org/jira/browse/FLINK-8323) | Fix Mod scala function bug |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-7499](https://issues.apache.org/jira/browse/FLINK-7499) | double buffer release in SpillableSubpartitionView |  Blocker | Network | Nico Kruber | Nico Kruber |
| [FLINK-7760](https://issues.apache.org/jira/browse/FLINK-7760) | Restore failing from external checkpointing metadata. |  Blocker | CEP, State Backends, Checkpointing | Shashank Agarwal |  |
| [FLINK-7756](https://issues.apache.org/jira/browse/FLINK-7756) | RocksDB state backend Checkpointing (Async and Incremental)  is not working with CEP. |  Blocker | CEP, State Backends, Checkpointing, Streaming | Shashank Agarwal | Aljoscha Krettek |
| [FLINK-6321](https://issues.apache.org/jira/browse/FLINK-6321) | RocksDB state backend Checkpointing is not working with KeyedCEP. |  Blocker | CEP | Shashank Agarwal | Kostas Kloudas |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8320](https://issues.apache.org/jira/browse/FLINK-8320) | Flink cluster does not work on Java 9 |  Major | . | Steve Layland |  |


