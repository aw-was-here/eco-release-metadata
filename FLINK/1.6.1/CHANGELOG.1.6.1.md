
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

## Release 1.6.1 - 2018-09-20



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10022](https://issues.apache.org/jira/browse/FLINK-10022) | Add metrics for input/output buffers |  Major | Runtime / Metrics, Runtime / Network | Nico Kruber | Nico Kruber |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10094](https://issues.apache.org/jira/browse/FLINK-10094) | Always backup default config for end-to-end tests |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9795](https://issues.apache.org/jira/browse/FLINK-9795) | Update Mesos documentation for flip6 |  Major | Documentation | Leonid Ishimnikov | Gary Yao |
| [FLINK-10006](https://issues.apache.org/jira/browse/FLINK-10006) | Improve logging in BarrierBuffer |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10110](https://issues.apache.org/jira/browse/FLINK-10110) | Harden e2e Kafka shutdown |  Major | Connectors / Kafka | Till Rohrmann | Till Rohrmann |
| [FLINK-9013](https://issues.apache.org/jira/browse/FLINK-9013) | Document yarn.containers.vcores only being effective when adapting YARN config |  Major | Deployment / YARN, Documentation | Nico Kruber | Dawid Wysakowicz |
| [FLINK-9446](https://issues.apache.org/jira/browse/FLINK-9446) | Compatibility table not up-to-date |  Major | Documentation | Razvan | Chesnay Schepler |
| [FLINK-9859](https://issues.apache.org/jira/browse/FLINK-9859) | More Akka config options |  Major | Runtime / Task | Zili Chen | Zili Chen |
| [FLINK-10020](https://issues.apache.org/jira/browse/FLINK-10020) | Kinesis Consumer listShards should support more recoverable exceptions |  Major | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-9899](https://issues.apache.org/jira/browse/FLINK-9899) | Add more metrics to the Kinesis source connector |  Major | Connectors / Kinesis | Lakshmi Rao | Lakshmi Rao |
| [FLINK-10001](https://issues.apache.org/jira/browse/FLINK-10001) | Improve Kubernetes documentation |  Major | Deployment / Kubernetes, Documentation | Till Rohrmann | Till Rohrmann |
| [FLINK-10082](https://issues.apache.org/jira/browse/FLINK-10082) | Initialize StringBuilder in Slf4jReporter with estimated size |  Major | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10164](https://issues.apache.org/jira/browse/FLINK-10164) | Add support for resuming from savepoints to StandaloneJobClusterEntrypoint |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10137](https://issues.apache.org/jira/browse/FLINK-10137) | YARN: Log completed Containers |  Major | Deployment / YARN, Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-9962](https://issues.apache.org/jira/browse/FLINK-9962) | allow users to specify TimeZone in DateTimeBucketer |  Major | Connectors / Common | Bowen Li | Bowen Li |
| [FLINK-10131](https://issues.apache.org/jira/browse/FLINK-10131) | Improve logging around ResultSubpartition |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10170](https://issues.apache.org/jira/browse/FLINK-10170) | Support string representation for map and array types in descriptor-based Table API |  Major | Table SQL / API | Jun Zhang | Jun Zhang |
| [FLINK-10185](https://issues.apache.org/jira/browse/FLINK-10185) | Make ZooKeeperStateHandleStore#releaseAndTryRemove synchronous |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10301](https://issues.apache.org/jira/browse/FLINK-10301) | Allow a custom Configuration in StreamNetworkBenchmarkEnvironment |  Major | Runtime / Network, Tests | Nico Kruber | Nico Kruber |
| [FLINK-10223](https://issues.apache.org/jira/browse/FLINK-10223) | TaskManagers should log their ResourceID during startup |  Major | Runtime / Coordination | Konstantin Knauf | Gary Yao |
| [FLINK-10325](https://issues.apache.org/jira/browse/FLINK-10325) | [State TTL] Refactor TtlListState to use only loops, no java stream API for performance |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10142](https://issues.apache.org/jira/browse/FLINK-10142) | Reduce synchronization overhead for credit notifications |  Major | Runtime / Network | Nico Kruber | Nico Kruber |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9972](https://issues.apache.org/jira/browse/FLINK-9972) | Debug memory logging not working |  Critical | Runtime / Coordination | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10063](https://issues.apache.org/jira/browse/FLINK-10063) | Jepsen: Automatically restart Mesos Processes |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10105](https://issues.apache.org/jira/browse/FLINK-10105) | Test failure because of jobmanager.execution.failover-strategy is outdated |  Major | Tests | vinoyang | Dawid Wysakowicz |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | Runtime / Coordination, Runtime / State Backends | Steven Zhen Wu | Till Rohrmann |
| [FLINK-9546](https://issues.apache.org/jira/browse/FLINK-9546) | The heartbeatTimeoutIntervalMs of HeartbeatMonitor should be larger than 0 |  Minor | . | Sihua Zhou | Sihua Zhou |
| [FLINK-9289](https://issues.apache.org/jira/browse/FLINK-9289) | Parallelism of generated operators should have max parallism of input |  Major | API / DataSet | Fabian Hueske | Xingcan Cui |
| [FLINK-10101](https://issues.apache.org/jira/browse/FLINK-10101) | Mesos web ui url is missing. |  Major | Deployment / Mesos | Renjie Liu | Renjie Liu |
| [FLINK-10154](https://issues.apache.org/jira/browse/FLINK-10154) | Make sure we always read at least one record in KinesisConnector |  Minor | Connectors / Kinesis | Jamie Grier | Jamie Grier |
| [FLINK-10116](https://issues.apache.org/jira/browse/FLINK-10116) | createComparator fails on case class with Unit type fields prior to the join-key |  Major | API / DataSet | Will | Fabian Hueske |
| [FLINK-10169](https://issues.apache.org/jira/browse/FLINK-10169) | RowtimeValidator fails with custom TimestampExtractor |  Major | Table SQL / API | Timo Walther |  |
| [FLINK-10151](https://issues.apache.org/jira/browse/FLINK-10151) | [State TTL] Fix false recursion call in TransformingStateTableKeyGroupPartitioner.tryAddToSource |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10204](https://issues.apache.org/jira/browse/FLINK-10204) | StreamElementSerializer#copy broken for LatencyMarkers |  Major | Runtime / Metrics | Ben La Monica | Ben La Monica |
| [FLINK-10192](https://issues.apache.org/jira/browse/FLINK-10192) | SQL Client table visualization mode does not update correctly |  Major | Table SQL / API, Table SQL / Client | Fabian Hueske | Timo Walther |
| [FLINK-10141](https://issues.apache.org/jira/browse/FLINK-10141) | Reduce lock contention introduced with 1.5 |  Major | Runtime / Network | Nico Kruber | Nico Kruber |
| [FLINK-10115](https://issues.apache.org/jira/browse/FLINK-10115) | Content-length limit is also applied to FileUploads |  Major | Runtime / REST, Runtime / Web Frontend | Yazdan Shirvany | Chesnay Schepler |
| [FLINK-10150](https://issues.apache.org/jira/browse/FLINK-10150) | Chained batch operators interfere with each other other |  Blocker | Runtime / Metrics, Runtime / Web Frontend | Helmut Zechmann | Chesnay Schepler |
| [FLINK-10283](https://issues.apache.org/jira/browse/FLINK-10283) | FileCache logs unnecessary warnings |  Major | Runtime / Task | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10261](https://issues.apache.org/jira/browse/FLINK-10261) | INSERT INTO does not work with ORDER BY clause |  Major | Table SQL / API | Timo Walther | xueyu |
| [FLINK-10193](https://issues.apache.org/jira/browse/FLINK-10193) | Default RPC timeout is used when triggering savepoint via JobMasterGateway |  Critical | Runtime / Coordination | Gary Yao | Gary Yao |
| [FLINK-10293](https://issues.apache.org/jira/browse/FLINK-10293) | RemoteStreamEnvironment does not forward port to RestClusterClient |  Major | Command Line Client | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10267](https://issues.apache.org/jira/browse/FLINK-10267) | [State] Fix arbitrary iterator access on RocksDBMapIterator |  Major | Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-10011](https://issues.apache.org/jira/browse/FLINK-10011) | Old job resurrected during HA failover |  Blocker | Runtime / Coordination | Elias Levy | Till Rohrmann |
| [FLINK-10269](https://issues.apache.org/jira/browse/FLINK-10269) | Elasticsearch 6 UpdateRequest fail because of binary incompatibility |  Blocker | Connectors / ElasticSearch | Timo Walther | Timo Walther |
| [FLINK-10328](https://issues.apache.org/jira/browse/FLINK-10328) | Stopping the ZooKeeperSubmittedJobGraphStore should release all currently held locks |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10329](https://issues.apache.org/jira/browse/FLINK-10329) | Fail with exception if job cannot be removed by ZooKeeperSubmittedJobGraphStore#removeJobGraph |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10255](https://issues.apache.org/jira/browse/FLINK-10255) | Standby Dispatcher locks submitted JobGraphs |  Blocker | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10314](https://issues.apache.org/jira/browse/FLINK-10314) | Blocking calls in Execution Graph creation bring down cluster |  Blocker | Runtime / Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-10639](https://issues.apache.org/jira/browse/FLINK-10639) | Fix java syntax error in document |  Major | Documentation, Table SQL / API | sunjincheng | Hequn Cheng |
| [FLINK-10133](https://issues.apache.org/jira/browse/FLINK-10133) | finished job's jobgraph never been cleaned up in zookeeper for standalone clusters (HA mode with multiple masters) |  Major | Runtime / Coordination | Xiangyu Zhu |  |
| [FLINK-10172](https://issues.apache.org/jira/browse/FLINK-10172) | Inconsistency in ExpressionParser and ExpressionDsl for order by asc/desc |  Major | Table SQL / API | Rong Rong | Rong Rong |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10084](https://issues.apache.org/jira/browse/FLINK-10084) | Migration tests weren't updated for 1.5 |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9637](https://issues.apache.org/jira/browse/FLINK-9637) | Add public user documentation for TTL feature |  Major | Runtime / State Backends | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10087](https://issues.apache.org/jira/browse/FLINK-10087) | Update BucketingSinkMigrationTest |  Major | Connectors / FileSystem | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10085](https://issues.apache.org/jira/browse/FLINK-10085) | Update AbstractOperatorRestoreTestBase |  Critical | Runtime / State Backends, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10089](https://issues.apache.org/jira/browse/FLINK-10089) | Update FlinkKafkaConsumerBaseMigrationTest |  Major | Connectors / Kafka | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10090](https://issues.apache.org/jira/browse/FLINK-10090) | Update ContinuousFileProcessingMigrationTest |  Major | Connectors / FileSystem | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10091](https://issues.apache.org/jira/browse/FLINK-10091) | Update WindowOperatorMigrationTest |  Major | API / DataStream | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10092](https://issues.apache.org/jira/browse/FLINK-10092) | Update StatefulJobSavepointMigrationITCase |  Major | Runtime / State Backends | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10109](https://issues.apache.org/jira/browse/FLINK-10109) | Add documentation for StreamingFileSink |  Major | Connectors / Common | Aljoscha Krettek | Aljoscha Krettek |


