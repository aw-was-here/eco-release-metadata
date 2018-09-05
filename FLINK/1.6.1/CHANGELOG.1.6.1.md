
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

## Release 1.6.1 - Unreleased (as of 2018-09-05)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10022](https://issues.apache.org/jira/browse/FLINK-10022) | Add metrics for input/output buffers |  Major | Metrics, Network | Nico Kruber | Nico Kruber |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10094](https://issues.apache.org/jira/browse/FLINK-10094) | Always backup default config for end-to-end tests |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9795](https://issues.apache.org/jira/browse/FLINK-9795) | Update Mesos documentation for flip6 |  Major | Documentation | Leonid Ishimnikov | Gary Yao |
| [FLINK-10006](https://issues.apache.org/jira/browse/FLINK-10006) | Improve logging in BarrierBuffer |  Major | Logging, Network | Nico Kruber | Nico Kruber |
| [FLINK-10110](https://issues.apache.org/jira/browse/FLINK-10110) | Harden e2e Kafka shutdown |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-9013](https://issues.apache.org/jira/browse/FLINK-9013) | Document yarn.containers.vcores only being effective when adapting YARN config |  Major | Documentation, YARN | Nico Kruber | Dawid Wysakowicz |
| [FLINK-9446](https://issues.apache.org/jira/browse/FLINK-9446) | Compatibility table not up-to-date |  Major | Documentation | Razvan | Chesnay Schepler |
| [FLINK-9859](https://issues.apache.org/jira/browse/FLINK-9859) | More Akka config options |  Major | Local Runtime | 陈梓立 | 陈梓立 |
| [FLINK-10020](https://issues.apache.org/jira/browse/FLINK-10020) | Kinesis Consumer listShards should support more recoverable exceptions |  Major | Kinesis Connector | Thomas Weise | Thomas Weise |
| [FLINK-9899](https://issues.apache.org/jira/browse/FLINK-9899) | Add more metrics to the Kinesis source connector |  Major | Kinesis Connector | Lakshmi Rao | Lakshmi Rao |
| [FLINK-10001](https://issues.apache.org/jira/browse/FLINK-10001) | Improve Kubernetes documentation |  Major | Documentation, Kubernetes | Till Rohrmann | Till Rohrmann |
| [FLINK-10082](https://issues.apache.org/jira/browse/FLINK-10082) | Initialize StringBuilder in Slf4jReporter with estimated size |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10164](https://issues.apache.org/jira/browse/FLINK-10164) | Add support for resuming from savepoints to StandaloneJobClusterEntrypoint |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10137](https://issues.apache.org/jira/browse/FLINK-10137) | YARN: Log completed Containers |  Major | Distributed Coordination, ResourceManager, YARN | Gary Yao | Gary Yao |
| [FLINK-9962](https://issues.apache.org/jira/browse/FLINK-9962) | allow users to specify TimeZone in DateTimeBucketer |  Major | Streaming Connectors | Bowen Li | Bowen Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9972](https://issues.apache.org/jira/browse/FLINK-9972) | Debug memory logging not working |  Critical | TaskManager | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10063](https://issues.apache.org/jira/browse/FLINK-10063) | Jepsen: Automatically restart Mesos Processes |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10105](https://issues.apache.org/jira/browse/FLINK-10105) | Test failure because of jobmanager.execution.failover-strategy is outdated |  Major | Tests | vinoyang | Dawid Wysakowicz |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | JobManager, State Backends, Checkpointing | Steven Zhen Wu | Till Rohrmann |
| [FLINK-9546](https://issues.apache.org/jira/browse/FLINK-9546) | The heartbeatTimeoutIntervalMs of HeartbeatMonitor should be larger than 0 |  Minor | Core | Sihua Zhou | Sihua Zhou |
| [FLINK-9289](https://issues.apache.org/jira/browse/FLINK-9289) | Parallelism of generated operators should have max parallism of input |  Major | DataSet API | Fabian Hueske | Xingcan Cui |
| [FLINK-10101](https://issues.apache.org/jira/browse/FLINK-10101) | Mesos web ui url is missing. |  Major | Mesos | Renjie Liu | Renjie Liu |
| [FLINK-10154](https://issues.apache.org/jira/browse/FLINK-10154) | Make sure we always read at least one record in KinesisConnector |  Minor | Kinesis Connector | Jamie Grier | Jamie Grier |
| [FLINK-10116](https://issues.apache.org/jira/browse/FLINK-10116) | createComparator fails on case class with Unit type fields prior to the join-key |  Major | DataSet API | Will | Fabian Hueske |
| [FLINK-10169](https://issues.apache.org/jira/browse/FLINK-10169) | RowtimeValidator fails with custom TimestampExtractor |  Major | Table API & SQL | Timo Walther |  |
| [FLINK-10151](https://issues.apache.org/jira/browse/FLINK-10151) | [State TTL] Fix false recursion call in TransformingStateTableKeyGroupPartitioner.tryAddToSource |  Major | State Backends, Checkpointing | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10172](https://issues.apache.org/jira/browse/FLINK-10172) | Inconsistentcy in ExpressionParser and ExpressionDsl for order by asc/desc |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-10204](https://issues.apache.org/jira/browse/FLINK-10204) | StreamElementSerializer#copy broken for LatencyMarkers |  Major | Metrics, Streaming | Ben La Monica | Ben La Monica |
| [FLINK-10192](https://issues.apache.org/jira/browse/FLINK-10192) | SQL Client table visualization mode does not update correctly |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-10142](https://issues.apache.org/jira/browse/FLINK-10142) | Reduce synchronization overhead for credit notifications |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-10141](https://issues.apache.org/jira/browse/FLINK-10141) | Reduce lock contention introduced with 1.5 |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-10115](https://issues.apache.org/jira/browse/FLINK-10115) | Content-length limit is also applied to FileUploads |  Major | REST, Webfrontend | Yazdan Shirvany | Chesnay Schepler |
| [FLINK-10150](https://issues.apache.org/jira/browse/FLINK-10150) | Chained batch operators interfere with each other other |  Blocker | Metrics, Webfrontend | Helmut Zechmann | Chesnay Schepler |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10084](https://issues.apache.org/jira/browse/FLINK-10084) | Migration tests weren't updated for 1.5 |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9637](https://issues.apache.org/jira/browse/FLINK-9637) | Add public user documentation for TTL feature |  Major | State Backends, Checkpointing | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10087](https://issues.apache.org/jira/browse/FLINK-10087) | Update BucketingSinkMigrationTest |  Major | filesystem-connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10085](https://issues.apache.org/jira/browse/FLINK-10085) | Update AbstractOperatorRestoreTestBase |  Critical | State Backends, Checkpointing, Streaming, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10089](https://issues.apache.org/jira/browse/FLINK-10089) | Update FlinkKafkaConsumerBaseMigrationTest |  Major | Kafka Connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10090](https://issues.apache.org/jira/browse/FLINK-10090) | Update ContinuousFileProcessingMigrationTest |  Major | filesystem-connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10091](https://issues.apache.org/jira/browse/FLINK-10091) | Update WindowOperatorMigrationTest |  Major | Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10092](https://issues.apache.org/jira/browse/FLINK-10092) | Update StatefulJobSavepointMigrationITCase |  Major | State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10109](https://issues.apache.org/jira/browse/FLINK-10109) | Add documentation for StreamingFileSink |  Major | Streaming Connectors | Aljoscha Krettek | Aljoscha Krettek |


