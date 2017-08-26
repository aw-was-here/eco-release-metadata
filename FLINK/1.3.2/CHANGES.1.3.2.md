
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

## Release 1.3.2 - 2017-08-05



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6874](https://issues.apache.org/jira/browse/FLINK-6874) | Static and transient fields ignored for POJOs |  Trivial | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-6937](https://issues.apache.org/jira/browse/FLINK-6937) | Fix link markdown in Production Readiness Checklist doc |  Minor | Documentation | Juan Paulo Gutierrez |  |
| [FLINK-6682](https://issues.apache.org/jira/browse/FLINK-6682) | Improve error message in case parallelism exceeds maxParallelism |  Major | State Backends, Checkpointing | Chesnay Schepler | mingleizhang |
| [FLINK-7004](https://issues.apache.org/jira/browse/FLINK-7004) | Switch to Travis Trusty image |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6898](https://issues.apache.org/jira/browse/FLINK-6898) | Limit size of operator component in metric name |  Critical | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6789](https://issues.apache.org/jira/browse/FLINK-6789) | Remove duplicated test utility reducer in optimizer |  Major | Optimizer, Tests | Chesnay Schepler | mingleizhang |
| [FLINK-6575](https://issues.apache.org/jira/browse/FLINK-6575) | Disable all tests on Windows that use HDFS |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7032](https://issues.apache.org/jira/browse/FLINK-7032) | Intellij is constantly changing language level of sub projects back to 1.6 |  Major | Build System | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7069](https://issues.apache.org/jira/browse/FLINK-7069) | Catch exceptions for each reporter separately |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7149](https://issues.apache.org/jira/browse/FLINK-7149) | Add checkpoint ID to 'sendValues()' in GenericWriteAheadSink |  Major | Streaming Connectors | Stephan Ewen | Stephan Ewen |
| [FLINK-7233](https://issues.apache.org/jira/browse/FLINK-7233) | TaskManagerHeapSizeCalculationJavaBashTest failed on Travis |  Major | Tests | Chesnay Schepler | Nico Kruber |
| [FLINK-7224](https://issues.apache.org/jira/browse/FLINK-7224) | Incorrect Javadoc description in all Kafka consumer versions |  Major | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7211](https://issues.apache.org/jira/browse/FLINK-7211) | Exclude Gelly javadoc jar from release |  Trivial | Build System | Greg Hogan | Greg Hogan |
| [FLINK-6365](https://issues.apache.org/jira/browse/FLINK-6365) | Adapt default values of the Kinesis connector |  Minor | Kinesis Connector | Steffen Hausmann | Bowen Li |
| [FLINK-7174](https://issues.apache.org/jira/browse/FLINK-7174) | Bump dependency of Kafka 0.10.x to the latest one |  Major | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-6940](https://issues.apache.org/jira/browse/FLINK-6940) | Clarify the effect of configuring per-job state backend |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-7228](https://issues.apache.org/jira/browse/FLINK-7228) | Harden HistoryServerStaticFileHandlerTest |  Minor | Tests, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6998](https://issues.apache.org/jira/browse/FLINK-6998) | Kafka connector needs to expose metrics for failed/successful offset commits in the Kafka Consumer callback |  Major | Kafka Connector | Zhenzhong Xu | Zhenzhong Xu |
| [FLINK-7287](https://issues.apache.org/jira/browse/FLINK-7287) | test instability in Kafka010ITCase.testCommitOffsetsToKafka |  Major | Kafka Connector, Tests | Nico Kruber | Nico Kruber |
| [FLINK-7290](https://issues.apache.org/jira/browse/FLINK-7290) | Make release scripts modular |  Major | Build System | Aljoscha Krettek | Aljoscha Krettek |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6945](https://issues.apache.org/jira/browse/FLINK-6945) | TaskCancelAsyncProducerConsumerITCase.testCancelAsyncProducerAndConsumer instable test case |  Critical | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-6918](https://issues.apache.org/jira/browse/FLINK-6918) | Failing tests: ChainLengthDecreaseTest and ChainLengthIncreaseTest |  Critical | Tests | Greg Hogan | Till Rohrmann |
| [FLINK-6806](https://issues.apache.org/jira/browse/FLINK-6806) | rocksdb is not listed as state backend in doc |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-6541](https://issues.apache.org/jira/browse/FLINK-6541) | Jar upload directory not created |  Minor | Webfrontend | Andrey | Chesnay Schepler |
| [FLINK-6774](https://issues.apache.org/jira/browse/FLINK-6774) | build-helper-maven-plugin version not set |  Minor | Build System | Nico Kruber | Nico Kruber |
| [FLINK-7005](https://issues.apache.org/jira/browse/FLINK-7005) | Optimization steps are missing for nested registered tables |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-7025](https://issues.apache.org/jira/browse/FLINK-7025) | Using NullByteKeySelector for Unbounded ProcTime NonPartitioned Over |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-5488](https://issues.apache.org/jira/browse/FLINK-5488) | yarnClient should be closed in AbstractYarnClusterDescriptor for error conditions |  Major | YARN | Ted Yu | Fang Yong |
| [FLINK-6742](https://issues.apache.org/jira/browse/FLINK-6742) | Improve error message when savepoint migration fails due to task removal |  Minor | State Backends, Checkpointing | Gyula Fora | Chesnay Schepler |
| [FLINK-6987](https://issues.apache.org/jira/browse/FLINK-6987) | TextInputFormatTest fails when run in path containing spaces |  Major | Build System | Timo Walther | mingleizhang |
| [FLINK-6655](https://issues.apache.org/jira/browse/FLINK-6655) | Misleading error message when HistoryServer path is empty |  Minor | History Server | Timo Walther | mingleizhang |
| [FLINK-7011](https://issues.apache.org/jira/browse/FLINK-7011) | Instable Kafka testStartFromKafkaCommitOffsets failures on Travis |  Major | Kafka Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6867](https://issues.apache.org/jira/browse/FLINK-6867) | Elasticsearch 1.x ITCase still instable due to embedded node instability |  Major | ElasticSearch Connector, Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-6376](https://issues.apache.org/jira/browse/FLINK-6376) | when deploy flink cluster on the yarn, it is lack of hdfs delegation token. |  Major | Security, YARN | zhangrucong1982 | zhangrucong1982 |
| [FLINK-7038](https://issues.apache.org/jira/browse/FLINK-7038) | Several misused "KeyedDataStream" term in docs and Javadocs |  Trivial | Documentation | Tzu-Li (Gordon) Tai | mingleizhang |
| [FLINK-7041](https://issues.apache.org/jira/browse/FLINK-7041) | Deserialize StateBackend from JobCheckpointingSettings with user classloader |  Blocker | DataStream API, Distributed Coordination, State Backends, Checkpointing | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7133](https://issues.apache.org/jira/browse/FLINK-7133) | Fix Elasticsearch version interference |  Blocker | Streaming Connectors | Aljoscha Krettek | Adebski |
| [FLINK-7158](https://issues.apache.org/jira/browse/FLINK-7158) | Wrong test jar dependency in flink-clients |  Blocker | Build System | Stephan Ewen | Stephan Ewen |
| [FLINK-6965](https://issues.apache.org/jira/browse/FLINK-6965) | Avro is missing snappy dependency |  Blocker | Type Serialization System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7132](https://issues.apache.org/jira/browse/FLINK-7132) | Fix BulkIteration parallelism |  Major | Java API | Greg Hogan | Greg Hogan |
| [FLINK-7034](https://issues.apache.org/jira/browse/FLINK-7034) | GraphiteReporter cannot recover from lost connection |  Blocker | Metrics | Aleksandr | Aljoscha Krettek |
| [FLINK-7154](https://issues.apache.org/jira/browse/FLINK-7154) | Missing call to build CsvTableSource example |  Trivial | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-7178](https://issues.apache.org/jira/browse/FLINK-7178) | Datadog Metric Reporter Jar is Lacking Dependencies |  Critical | Metrics | Elias Levy | Chesnay Schepler |
| [FLINK-6964](https://issues.apache.org/jira/browse/FLINK-6964) | Fix recovery for incremental checkpoints in StandaloneCompletedCheckpointStore |  Blocker | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-6654](https://issues.apache.org/jira/browse/FLINK-6654) | missing maven dependency on "flink-shaded-hadoop2-uber" in flink-dist |  Major | Build System | Nico Kruber | Nico Kruber |
| [FLINK-7216](https://issues.apache.org/jira/browse/FLINK-7216) | ExecutionGraph can perform concurrent global restarts to scheduling |  Blocker | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-7231](https://issues.apache.org/jira/browse/FLINK-7231) | SlotSharingGroups are not always released in time for new restarts |  Blocker | Distributed Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-7225](https://issues.apache.org/jira/browse/FLINK-7225) | Cutoff exception message in StateDescriptor |  Major | State Backends, Checkpointing | Chesnay Schepler | Stephan Ewen |
| [FLINK-7137](https://issues.apache.org/jira/browse/FLINK-7137) | Flink table API defaults top level fields as nullable and all nested fields within CompositeType as non-nullable |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-7177](https://issues.apache.org/jira/browse/FLINK-7177) | DataSetAggregateWithNullValuesRule fails creating null literal for non-nullable type |  Major | Table API & SQL | Rong Rong | Timo Walther |
| [FLINK-7255](https://issues.apache.org/jira/browse/FLINK-7255) | ListStateDescriptor example uses wrong constructor |  Major | Documentation, State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7258](https://issues.apache.org/jira/browse/FLINK-7258) | IllegalArgumentException in Netty bootstrap with large memory state segment size |  Minor | Network | Ufuk Celebi | Ufuk Celebi |
| [FLINK-7241](https://issues.apache.org/jira/browse/FLINK-7241) | Fix YARN high availability documentation |  Major | Documentation, YARN | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7226](https://issues.apache.org/jira/browse/FLINK-7226) | REST responses contain invalid content-encoding header |  Major | Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-7234](https://issues.apache.org/jira/browse/FLINK-7234) | Fix CombineHint documentation |  Major | Documentation | Greg Hogan | Greg Hogan |
| [FLINK-7195](https://issues.apache.org/jira/browse/FLINK-7195) | FlinkKafkaConsumer should not respect fetched partitions to filter restored partition states |  Blocker | Kafka Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-7281](https://issues.apache.org/jira/browse/FLINK-7281) | Fix various issues in (Maven) release infrastructure |  Blocker | Build System | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-6996](https://issues.apache.org/jira/browse/FLINK-6996) | FlinkKafkaProducer010 doesn't guarantee at-least-once semantic |  Blocker | Kafka Connector | Piotr Nowojski | Piotr Nowojski |
| [FLINK-7143](https://issues.apache.org/jira/browse/FLINK-7143) | Partition assignment for Kafka consumer is not stable |  Blocker | Kafka Connector | Steven Zhen Wu | Tzu-Li (Gordon) Tai |
| [FLINK-7268](https://issues.apache.org/jira/browse/FLINK-7268) | Zookeeper Checkpoint Store interacting with Incremental State Handles can lead to loss of handles |  Blocker | State Backends, Checkpointing | Aljoscha Krettek | Stefan Richter |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-6680](https://issues.apache.org/jira/browse/FLINK-6680) | App & Flink migration guide: updates for the 1.3 release |  Major | Documentation | Nico Kruber | Tzu-Li (Gordon) Tai |
| [FLINK-6665](https://issues.apache.org/jira/browse/FLINK-6665) | Pass a ScheduledExecutorService to the RestartStrategy |  Major | Distributed Coordination | Stephan Ewen | Fang Yong |
| [FLINK-6667](https://issues.apache.org/jira/browse/FLINK-6667) | Pass a callback type to the RestartStrategy, rather than the full ExecutionGraph |  Major | Distributed Coordination | Stephan Ewen | Fang Yong |


