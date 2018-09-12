
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

## Release 1.7.0 - Unreleased (as of 2018-09-12)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9935](https://issues.apache.org/jira/browse/FLINK-9935) | Batch Table API: grouping by window and attribute causes java.lang.ClassCastException: |  Critical | Table API & SQL | Roman Wozniak | Fabian Hueske |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9688](https://issues.apache.org/jira/browse/FLINK-9688) | ATAN2 Sql Function support |  Minor | Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-7812](https://issues.apache.org/jira/browse/FLINK-7812) | Log system resources as metrics |  Major | Metrics | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10022](https://issues.apache.org/jira/browse/FLINK-10022) | Add metrics for input/output buffers |  Major | Metrics, Network | Nico Kruber | Nico Kruber |
| [FLINK-9850](https://issues.apache.org/jira/browse/FLINK-9850) | Add a string to the print method to identify output for DataStream |  Major | DataStream API | Hequn Cheng | vinoyang |
| [FLINK-10163](https://issues.apache.org/jira/browse/FLINK-10163) | Support CREATE VIEW in SQL Client |  Major | Table API & SQL | Timo Walther | Timo Walther |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9890](https://issues.apache.org/jira/browse/FLINK-9890) | Remove obsolete Class ResourceManagerConfiguration |  Major | Distributed Coordination | Gary Yao | Gary Yao |
| [FLINK-6222](https://issues.apache.org/jira/browse/FLINK-6222) | YARN: setting environment variables in an easier fashion |  Major | Startup Shell Scripts | Craig Foster | Dawid Wysakowicz |
| [FLINK-9236](https://issues.apache.org/jira/browse/FLINK-9236) | Use Apache Parent POM 20 |  Major | Build System | Ted Yu | jiayichao |
| [FLINK-9944](https://issues.apache.org/jira/browse/FLINK-9944) | Cleanup end-to-end test poms |  Major | Build System, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9504](https://issues.apache.org/jira/browse/FLINK-9504) | Change checkpoint duration log level to debug to avoid too much log |  Minor | State Backends, Checkpointing | aitozi | aitozi |
| [FLINK-10055](https://issues.apache.org/jira/browse/FLINK-10055) | incorrect in-progress file suffix in BucketingSink's java doc |  Minor | Documentation | Bowen Li | Bowen Li |
| [FLINK-10073](https://issues.apache.org/jira/browse/FLINK-10073) | Allow setting a restart strategy in SQL Client |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-10094](https://issues.apache.org/jira/browse/FLINK-10094) | Always backup default config for end-to-end tests |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9933](https://issues.apache.org/jira/browse/FLINK-9933) | Simplify taskmanager memory default values |  Minor | Documentation | Chesnay Schepler | vinoyang |
| [FLINK-10102](https://issues.apache.org/jira/browse/FLINK-10102) | EXECUTION\_FAILOVER\_STRATEGY docs are wrong |  Major | Distributed Coordination, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9240](https://issues.apache.org/jira/browse/FLINK-9240) | Avoid deprecated akka methods |  Minor | Client, Local Runtime, Mesos, Tests, Web Client, YARN | Arnout Engelen |  |
| [FLINK-10099](https://issues.apache.org/jira/browse/FLINK-10099) | Rework YarnResourceManagerTest |  Major | Tests | 陈梓立 | 陈梓立 |
| [FLINK-9795](https://issues.apache.org/jira/browse/FLINK-9795) | Update Mesos documentation for flip6 |  Major | Documentation | Leonid Ishimnikov | Gary Yao |
| [FLINK-9919](https://issues.apache.org/jira/browse/FLINK-9919) | Remove unit from fullRestarts metric docs |  Major | Documentation, Metrics | Chesnay Schepler | vinoyang |
| [FLINK-10006](https://issues.apache.org/jira/browse/FLINK-10006) | Improve logging in BarrierBuffer |  Major | Logging, Network | Nico Kruber | Nico Kruber |
| [FLINK-9977](https://issues.apache.org/jira/browse/FLINK-9977) | Refine the docs for Table/SQL built-in functions |  Minor | Documentation | Xingcan Cui | Xingcan Cui |
| [FLINK-8135](https://issues.apache.org/jira/browse/FLINK-8135) | Add description to MessageParameter |  Major | Documentation, REST | Chesnay Schepler | Andrei |
| [FLINK-9853](https://issues.apache.org/jira/browse/FLINK-9853) | add hex support in table api and sql |  Major | Table API & SQL | xueyu | xueyu |
| [FLINK-10123](https://issues.apache.org/jira/browse/FLINK-10123) | Use ExecutorThreadFactory instead of DefaultThreadFactory in RestServer/Client |  Major | REST | Till Rohrmann | Till Rohrmann |
| [FLINK-10056](https://issues.apache.org/jira/browse/FLINK-10056) | Add testRequestNextInputSplit |  Major | JobManager, Tests | 陈梓立 | 陈梓立 |
| [FLINK-8290](https://issues.apache.org/jira/browse/FLINK-8290) | Allow setting clientId in flink-connector-kafka-0.8 |  Major | . | xymaqingxiang | xymaqingxiang |
| [FLINK-10110](https://issues.apache.org/jira/browse/FLINK-10110) | Harden e2e Kafka shutdown |  Major | Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-9013](https://issues.apache.org/jira/browse/FLINK-9013) | Document yarn.containers.vcores only being effective when adapting YARN config |  Major | Documentation, YARN | Nico Kruber | Dawid Wysakowicz |
| [FLINK-9446](https://issues.apache.org/jira/browse/FLINK-9446) | Compatibility table not up-to-date |  Major | Documentation | Razvan | Chesnay Schepler |
| [FLINK-9859](https://issues.apache.org/jira/browse/FLINK-9859) | More Akka config options |  Major | Local Runtime | 陈梓立 | 陈梓立 |
| [FLINK-10020](https://issues.apache.org/jira/browse/FLINK-10020) | Kinesis Consumer listShards should support more recoverable exceptions |  Major | Kinesis Connector | Thomas Weise | Thomas Weise |
| [FLINK-9899](https://issues.apache.org/jira/browse/FLINK-9899) | Add more metrics to the Kinesis source connector |  Major | Kinesis Connector | Lakshmi Rao | Lakshmi Rao |
| [FLINK-10001](https://issues.apache.org/jira/browse/FLINK-10001) | Improve Kubernetes documentation |  Major | Documentation, Kubernetes | Till Rohrmann | Till Rohrmann |
| [FLINK-6670](https://issues.apache.org/jira/browse/FLINK-6670) | Remove CommonTestUtils.createTempDirectory() |  Minor | Tests | Nico Kruber | Chesnay Schepler |
| [FLINK-10082](https://issues.apache.org/jira/browse/FLINK-10082) | Initialize StringBuilder in Slf4jReporter with estimated size |  Major | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10181](https://issues.apache.org/jira/browse/FLINK-10181) | Add anchor link to individual rest requests |  Major | Documentation, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10164](https://issues.apache.org/jira/browse/FLINK-10164) | Add support for resuming from savepoints to StandaloneJobClusterEntrypoint |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-10233](https://issues.apache.org/jira/browse/FLINK-10233) | Undeprecate ConfigOption#withDescription(String) |  Major | Configuration, Core | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10137](https://issues.apache.org/jira/browse/FLINK-10137) | YARN: Log completed Containers |  Major | Distributed Coordination, ResourceManager, YARN | Gary Yao | Gary Yao |
| [FLINK-9642](https://issues.apache.org/jira/browse/FLINK-9642) | Add caching layer to SharedBuffer |  Major | CEP | aitozi | aitozi |
| [FLINK-10270](https://issues.apache.org/jira/browse/FLINK-10270) | Delete LegacyRestHandlerAdapter |  Major | REST | Gary Yao | Gary Yao |
| [FLINK-7551](https://issues.apache.org/jira/browse/FLINK-7551) | Add VERSION to the REST urls. |  Critical | REST | Kostas Kloudas | Chesnay Schepler |
| [FLINK-10186](https://issues.apache.org/jira/browse/FLINK-10186) | Use ThreadLocalRandom in BufferSpiller constructor |  Major | Streaming | Hiroaki Yoshida | Hiroaki Yoshida |
| [FLINK-10254](https://issues.apache.org/jira/browse/FLINK-10254) | Fix inappropriate checkNotNull in stateBackend |  Major | State Backends, Checkpointing | aitozi | aitozi |
| [FLINK-10131](https://issues.apache.org/jira/browse/FLINK-10131) | Improve logging around ResultSubpartition |  Major | Logging, Network | Nico Kruber | Nico Kruber |
| [FLINK-10170](https://issues.apache.org/jira/browse/FLINK-10170) | Support string representation for map and array types in descriptor-based Table API |  Major | Table API & SQL | Jun Zhang | Jun Zhang |
| [FLINK-10185](https://issues.apache.org/jira/browse/FLINK-10185) | Make ZooKeeperStateHandleStore#releaseAndTryRemove synchronous |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9185](https://issues.apache.org/jira/browse/FLINK-9185) | Potential null dereference in PrioritizedOperatorSubtaskState#resolvePrioritizedAlternatives |  Minor | . | Ted Yu | Stephen Jason |
| [FLINK-5750](https://issues.apache.org/jira/browse/FLINK-5750) | Incorrect translation of n-ary Union |  Critical | Table API & SQL | Anton Mushin | Alexander Koltsov |
| [FLINK-9914](https://issues.apache.org/jira/browse/FLINK-9914) | Flink docker information in official website is out of date and should be update |  Minor | . | vinoyang | vinoyang |
| [FLINK-9927](https://issues.apache.org/jira/browse/FLINK-9927) | Error in Python Stream API example on website |  Minor | Documentation | Joe Malt |  |
| [FLINK-9562](https://issues.apache.org/jira/browse/FLINK-9562) | Wrong wording in flink-optimizer module |  Trivial | Optimizer | Alexandr Arkhipov | Alexandr Arkhipov |
| [FLINK-9972](https://issues.apache.org/jira/browse/FLINK-9972) | Debug memory logging not working |  Critical | TaskManager | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10063](https://issues.apache.org/jira/browse/FLINK-10063) | Jepsen: Automatically restart Mesos Processes |  Critical | Tests | Gary Yao | Gary Yao |
| [FLINK-10105](https://issues.apache.org/jira/browse/FLINK-10105) | Test failure because of jobmanager.execution.failover-strategy is outdated |  Major | Tests | vinoyang | Dawid Wysakowicz |
| [FLINK-9693](https://issues.apache.org/jira/browse/FLINK-9693) | Possible memory leak in jobmanager retaining archived checkpoints |  Major | JobManager, State Backends, Checkpointing | Steven Zhen Wu | Till Rohrmann |
| [FLINK-9664](https://issues.apache.org/jira/browse/FLINK-9664) | FlinkML Quickstart Loading Data section example doesn't work as described |  Major | Documentation, Machine Learning Library | Mano Swerts | Rong Rong |
| [FLINK-9546](https://issues.apache.org/jira/browse/FLINK-9546) | The heartbeatTimeoutIntervalMs of HeartbeatMonitor should be larger than 0 |  Minor | Core | Sihua Zhou | Sihua Zhou |
| [FLINK-9289](https://issues.apache.org/jira/browse/FLINK-9289) | Parallelism of generated operators should have max parallism of input |  Major | DataSet API | Fabian Hueske | Xingcan Cui |
| [FLINK-10101](https://issues.apache.org/jira/browse/FLINK-10101) | Mesos web ui url is missing. |  Major | Mesos | Renjie Liu | Renjie Liu |
| [FLINK-10154](https://issues.apache.org/jira/browse/FLINK-10154) | Make sure we always read at least one record in KinesisConnector |  Minor | Kinesis Connector | Jamie Grier | Jamie Grier |
| [FLINK-10116](https://issues.apache.org/jira/browse/FLINK-10116) | createComparator fails on case class with Unit type fields prior to the join-key |  Major | DataSet API | Will | Fabian Hueske |
| [FLINK-10159](https://issues.apache.org/jira/browse/FLINK-10159) | TestHarness#initializeState(xyz) calls after TestHarness#open() are being silently ignored |  Critical | Tests | Piotr Nowojski | Piotr Nowojski |
| [FLINK-10169](https://issues.apache.org/jira/browse/FLINK-10169) | RowtimeValidator fails with custom TimestampExtractor |  Major | Table API & SQL | Timo Walther |  |
| [FLINK-10072](https://issues.apache.org/jira/browse/FLINK-10072) | Syntax and consistency issues in "The Broadcast State Pattern" |  Trivial | Documentation, Streaming | Rick Hofstede | Rick Hofstede |
| [FLINK-10151](https://issues.apache.org/jira/browse/FLINK-10151) | [State TTL] Fix false recursion call in TransformingStateTableKeyGroupPartitioner.tryAddToSource |  Major | State Backends, Checkpointing | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10187](https://issues.apache.org/jira/browse/FLINK-10187) | Fix LogicalUnnestRule to match Correlate/Uncollect correctly |  Major | Table API & SQL | Shuyi Chen | Shuyi Chen |
| [FLINK-10172](https://issues.apache.org/jira/browse/FLINK-10172) | Inconsistentcy in ExpressionParser and ExpressionDsl for order by asc/desc |  Major | Table API & SQL | Rong Rong | Rong Rong |
| [FLINK-10175](https://issues.apache.org/jira/browse/FLINK-10175) | Fix concurrent access to shared buffer in map state / querable state |  Critical | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-10204](https://issues.apache.org/jira/browse/FLINK-10204) | StreamElementSerializer#copy broken for LatencyMarkers |  Major | Metrics, Streaming | Ben La Monica | Ben La Monica |
| [FLINK-10192](https://issues.apache.org/jira/browse/FLINK-10192) | SQL Client table visualization mode does not update correctly |  Major | Table API & SQL | Fabian Hueske | Timo Walther |
| [FLINK-10189](https://issues.apache.org/jira/browse/FLINK-10189) | FindBugs warnings: Inefficient use of keySet iterator instead of entrySet iterator |  Major | Streaming, Streaming Connectors | Hiroaki Yoshida | Hiroaki Yoshida |
| [FLINK-10138](https://issues.apache.org/jira/browse/FLINK-10138) | Queryable state (rocksdb) end-to-end test failed on Travis |  Blocker | Queryable State, Tests | Till Rohrmann |  |
| [FLINK-10142](https://issues.apache.org/jira/browse/FLINK-10142) | Reduce synchronization overhead for credit notifications |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-10141](https://issues.apache.org/jira/browse/FLINK-10141) | Reduce lock contention introduced with 1.5 |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-10115](https://issues.apache.org/jira/browse/FLINK-10115) | Content-length limit is also applied to FileUploads |  Major | REST, Webfrontend | Yazdan Shirvany | Chesnay Schepler |
| [FLINK-10150](https://issues.apache.org/jira/browse/FLINK-10150) | Chained batch operators interfere with each other other |  Blocker | Metrics, Webfrontend | Helmut Zechmann | Chesnay Schepler |
| [FLINK-10283](https://issues.apache.org/jira/browse/FLINK-10283) | FileCache logs unnecessary warnings |  Major | Local Runtime | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10261](https://issues.apache.org/jira/browse/FLINK-10261) | INSERT INTO does not work with ORDER BY clause |  Major | Table API & SQL | Timo Walther | xueyu |
| [FLINK-10193](https://issues.apache.org/jira/browse/FLINK-10193) | Default RPC timeout is used when triggering savepoint via JobMasterGateway |  Critical | Distributed Coordination | Gary Yao | Gary Yao |
| [FLINK-10174](https://issues.apache.org/jira/browse/FLINK-10174) | getbytes with no charsets test error for hex and toBase64 |  Major | Table API & SQL | xueyu | xueyu |
| [FLINK-10293](https://issues.apache.org/jira/browse/FLINK-10293) | RemoteStreamEnvironment does not forward port to RestClusterClient |  Major | Client, Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10281](https://issues.apache.org/jira/browse/FLINK-10281) | Fix string literal escaping throughout Table & SQL API |  Major | Table API & SQL | vinoyang | Timo Walther |
| [FLINK-10011](https://issues.apache.org/jira/browse/FLINK-10011) | Old job resurrected during HA failover |  Blocker | JobManager | Elias Levy | Till Rohrmann |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5860](https://issues.apache.org/jira/browse/FLINK-5860) | Replace all the file creating from java.io.tmpdir with TemporaryFolder |  Major | Tests | shijinkui | Mahesh Senniappan |
| [FLINK-10084](https://issues.apache.org/jira/browse/FLINK-10084) | Migration tests weren't updated for 1.5 |  Critical | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10139](https://issues.apache.org/jira/browse/FLINK-10139) | Update migration tests for 1.6 |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10201](https://issues.apache.org/jira/browse/FLINK-10201) | The batchTestUtil was mistakenly used in some stream sql tests |  Minor | Table API & SQL | Xingcan Cui | Xingcan Cui |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9951](https://issues.apache.org/jira/browse/FLINK-9951) | Update scm developerConnection |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-6846](https://issues.apache.org/jira/browse/FLINK-6846) | Add TIMESTAMPADD supported in TableAPI |  Major | Table API & SQL | sunjincheng | sunjincheng |
| [FLINK-9915](https://issues.apache.org/jira/browse/FLINK-9915) | Add TO\_BASE64 function for table/sql API |  Minor | Table API & SQL | vinoyang | vinoyang |
| [FLINK-9916](https://issues.apache.org/jira/browse/FLINK-9916) | Add FROM\_BASE64 function for table/sql API |  Minor | . | vinoyang | vinoyang |
| [FLINK-9928](https://issues.apache.org/jira/browse/FLINK-9928) | Add LOG2 function for table/sql API |  Minor | Table API & SQL | vinoyang | vinoyang |
| [FLINK-9135](https://issues.apache.org/jira/browse/FLINK-9135) | Remove AggregateReduceFunctionsRule once CALCITE-2216 is fixed |  Major | Table API & SQL | Fabian Hueske | Shuyi Chen |
| [FLINK-9637](https://issues.apache.org/jira/browse/FLINK-9637) | Add public user documentation for TTL feature |  Major | State Backends, Checkpointing | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-10087](https://issues.apache.org/jira/browse/FLINK-10087) | Update BucketingSinkMigrationTest |  Major | filesystem-connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10085](https://issues.apache.org/jira/browse/FLINK-10085) | Update AbstractOperatorRestoreTestBase |  Critical | State Backends, Checkpointing, Streaming, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10089](https://issues.apache.org/jira/browse/FLINK-10089) | Update FlinkKafkaConsumerBaseMigrationTest |  Major | Kafka Connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10090](https://issues.apache.org/jira/browse/FLINK-10090) | Update ContinuousFileProcessingMigrationTest |  Major | filesystem-connector | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10091](https://issues.apache.org/jira/browse/FLINK-10091) | Update WindowOperatorMigrationTest |  Major | Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10092](https://issues.apache.org/jira/browse/FLINK-10092) | Update StatefulJobSavepointMigrationITCase |  Major | State Backends, Checkpointing | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10109](https://issues.apache.org/jira/browse/FLINK-10109) | Add documentation for StreamingFileSink |  Major | Streaming Connectors | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-7205](https://issues.apache.org/jira/browse/FLINK-7205) | Add UUID supported in TableAPI/SQL |  Major | Table API & SQL | sunjincheng | Jiayi Liao |
| [FLINK-5232](https://issues.apache.org/jira/browse/FLINK-5232) | Add a Thread default uncaught exception handler on the JobManager |  Major | JobManager | Stephan Ewen | vinoyang |
| [FLINK-10059](https://issues.apache.org/jira/browse/FLINK-10059) | Add LTRIM supported in Table API and SQL |  Minor | Table API & SQL | vinoyang | vinoyang |
| [FLINK-10060](https://issues.apache.org/jira/browse/FLINK-10060) | Add RTRIM supported in Table API and SQL |  Minor | . | vinoyang | vinoyang |
| [FLINK-9781](https://issues.apache.org/jira/browse/FLINK-9781) | scala-maven-plugin fails on java 9 |  Major | Build System, Scala API | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10207](https://issues.apache.org/jira/browse/FLINK-10207) | Bump checkstyle-plugin to 8.9 |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10243](https://issues.apache.org/jira/browse/FLINK-10243) | Add option to reduce latency metrics granularity |  Major | Configuration, Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10242](https://issues.apache.org/jira/browse/FLINK-10242) | Disable latency metrics by default |  Major | Configuration, Metrics | Chesnay Schepler | Chesnay Schepler |


