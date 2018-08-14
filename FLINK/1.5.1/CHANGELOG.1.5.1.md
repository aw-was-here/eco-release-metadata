
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

## Release 1.5.1 - 2018-07-12



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9316](https://issues.apache.org/jira/browse/FLINK-9316) | Expose operator unique ID to the user defined functions in DataStream . |  Major | Streaming | Piotr Nowojski | Piotr Nowojski |
| [FLINK-9564](https://issues.apache.org/jira/browse/FLINK-9564) | Expose end-to-end module directory to test scripts |  Major | Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9599](https://issues.apache.org/jira/browse/FLINK-9599) | Implement generic mechanism to receive files via rest |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9280](https://issues.apache.org/jira/browse/FLINK-9280) | Extend JobSubmitHandler to accept jar files |  Critical | Job-Submission, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9153](https://issues.apache.org/jira/browse/FLINK-9153) | TaskManagerRunner should support rpc port range |  Major | TaskManager | vinoyang | vinoyang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9372](https://issues.apache.org/jira/browse/FLINK-9372) | Typo on Elasticsearch website link (elastic.io --\> elastic.co) |  Minor | Documentation, ElasticSearch Connector | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9409](https://issues.apache.org/jira/browse/FLINK-9409) | Remove flink-avro and flink-json from /opt |  Major | Build System | Nico Kruber | Timo Walther |
| [FLINK-9355](https://issues.apache.org/jira/browse/FLINK-9355) | Simplify configuration of local recovery to a simple on/off |  Major | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-9518](https://issues.apache.org/jira/browse/FLINK-9518) | SSL setup Docs config example has wrong keys password |  Minor | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9517](https://issues.apache.org/jira/browse/FLINK-9517) | Fixing broken links on CLI and Upgrade Docs |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9549](https://issues.apache.org/jira/browse/FLINK-9549) | Fix FlickCEP Docs broken link and minor style changes |  Trivial | CEP, Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9508](https://issues.apache.org/jira/browse/FLINK-9508) | General Spell Check on Flink Docs |  Trivial | Documentation | Yazdan Shirvany | Yazdan Shirvany |
| [FLINK-9573](https://issues.apache.org/jira/browse/FLINK-9573) | Check for leadership with leader session id |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9638](https://issues.apache.org/jira/browse/FLINK-9638) | Add helper script to run single e2e test |  Minor | Tests | Florian Schmidt | Florian Schmidt |
| [FLINK-9594](https://issues.apache.org/jira/browse/FLINK-9594) | Add documentation for e2e test changes introduced with FLINK-9257 |  Minor | Tests | Florian Schmidt | Florian Schmidt |
| [FLINK-9595](https://issues.apache.org/jira/browse/FLINK-9595) | Add instructions to docs about ceased support of KPL version used in Kinesis connector |  Critical | Documentation, Kinesis Connector | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-9672](https://issues.apache.org/jira/browse/FLINK-9672) | Fail fatally if we cannot submit job on added JobGraph signal |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9456](https://issues.apache.org/jira/browse/FLINK-9456) | Let ResourceManager notify JobManager about failed/killed TaskManagers |  Major | Distributed Coordination | Till Rohrmann | Sihua Zhou |
| [FLINK-4301](https://issues.apache.org/jira/browse/FLINK-4301) | Parameterize Flink version in Quickstart bash script |  Major | Documentation | Timo Walther | Simone Robutti |
| [FLINK-8650](https://issues.apache.org/jira/browse/FLINK-8650) | Add tests and documentation for WINDOW clause |  Major | Table API & SQL | Timo Walther | Sergey Nuyanzin |
| [FLINK-8654](https://issues.apache.org/jira/browse/FLINK-8654) | Extend quickstart docs on how to submit jobs |  Major | Documentation, Quickstarts | Chesnay Schepler | Yazdan Shirvany |
| [FLINK-9707](https://issues.apache.org/jira/browse/FLINK-9707) | LocalFileSystem does not support concurrent directory creations |  Blocker | FileSystem | Till Rohrmann | Till Rohrmann |
| [FLINK-9109](https://issues.apache.org/jira/browse/FLINK-9109) | Add flink modify command to documentation |  Major | Documentation | Till Rohrmann | Till Rohrmann |
| [FLINK-9729](https://issues.apache.org/jira/browse/FLINK-9729) | Duplicate lines for "Weekday name (Sunday .. Saturday)" |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9734](https://issues.apache.org/jira/browse/FLINK-9734) | Typo 'field-deleimiter' in SQL client docs |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9276](https://issues.apache.org/jira/browse/FLINK-9276) | Improve error message when TaskManager fails |  Critical | Distributed Coordination | Stephan Ewen | vinoyang |
| [FLINK-7565](https://issues.apache.org/jira/browse/FLINK-7565) | Add support for HTTP 1.1 (Chunked transfer encoding) to Flink web UI |  Major | Webfrontend | Robert Metzger |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-9174](https://issues.apache.org/jira/browse/FLINK-9174) | The type of state created in ProccessWindowFunction.proccess() is inconsistency |  Major | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9437](https://issues.apache.org/jira/browse/FLINK-9437) | Revert cypher suite update |  Blocker | Security | Till Rohrmann | Till Rohrmann |
| [FLINK-9258](https://issues.apache.org/jira/browse/FLINK-9258) | ConcurrentModificationException in ComponentMetricGroup.getAllVariables |  Major | Metrics | Narayanan Arunachalam | Chesnay Schepler |
| [FLINK-9326](https://issues.apache.org/jira/browse/FLINK-9326) | TaskManagerOptions.NUM\_TASK\_SLOTS does not work for local/embedded mode |  Major | Core | Samuel Doyle | vinoyang |
| [FLINK-9215](https://issues.apache.org/jira/browse/FLINK-9215) | TaskManager Releasing  - org.apache.flink.util.FlinkException |  Major | Cluster Management, ResourceManager, Streaming | Bob Lau | Sihua Zhou |
| [FLINK-9398](https://issues.apache.org/jira/browse/FLINK-9398) | Flink CLI list running job returns all jobs except in CREATE state |  Major | Client | Rong Rong | Rong Rong |
| [FLINK-8946](https://issues.apache.org/jira/browse/FLINK-8946) | TaskManager stop sending metrics after JobManager failover |  Critical | Metrics, TaskManager | Truong Duc Kien | vinoyang |
| [FLINK-9458](https://issues.apache.org/jira/browse/FLINK-9458) | Unable to recover from job failure on YARN with NPE |  Blocker | . | Truong Duc Kien | Till Rohrmann |
| [FLINK-9570](https://issues.apache.org/jira/browse/FLINK-9570) | SQL Client merging environments uses AbstractMap |  Major | . | Dominik Wosiński | Dominik Wosiński |
| [FLINK-9494](https://issues.apache.org/jira/browse/FLINK-9494) | Race condition in Dispatcher with concurrent granting and revoking of leaderhship |  Critical | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9530](https://issues.apache.org/jira/browse/FLINK-9530) | Task numRecords metrics broken for chains |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9257](https://issues.apache.org/jira/browse/FLINK-9257) | End-to-end tests prints "All tests PASS" even if individual test-script returns non-zero exit code |  Critical | Tests | Florian Schmidt | Florian Schmidt |
| [FLINK-9468](https://issues.apache.org/jira/browse/FLINK-9468) | Wrong calculation of outputLimit in LimitedConnectionsFileSystem |  Critical | FileSystem | Sihua Zhou | Sihua Zhou |
| [FLINK-9467](https://issues.apache.org/jira/browse/FLINK-9467) | No Watermark display on Web UI |  Blocker | Metrics, Webfrontend | Truong Duc Kien | Chesnay Schepler |
| [FLINK-8795](https://issues.apache.org/jira/browse/FLINK-8795) | Scala shell broken for Flip6 |  Blocker | Scala Shell | kant kodali | Dawid Wysakowicz |
| [FLINK-9374](https://issues.apache.org/jira/browse/FLINK-9374) | Flink Kinesis Producer does not backpressure |  Critical | Kinesis Connector | Franz Thoma | Franz Thoma |
| [FLINK-9500](https://issues.apache.org/jira/browse/FLINK-9500) | FileUploadHandler does not handle EmptyLastHttpContent |  Major | Client, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9493](https://issues.apache.org/jira/browse/FLINK-9493) | Forward exception when releasing a TaskManager at the SlotPool |  Critical | JobManager | Till Rohrmann | Andrey Zagrebin |
| [FLINK-9634](https://issues.apache.org/jira/browse/FLINK-9634) | Deactivate previous location based scheduling if local recovery is disabled |  Major | Distributed Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-9524](https://issues.apache.org/jira/browse/FLINK-9524) | NPE from ProcTimeBoundedRangeOver.scala |  Major | Table API & SQL | yan zhou | yan zhou |
| [FLINK-9629](https://issues.apache.org/jira/browse/FLINK-9629) | Datadog metrics reporter does not have shaded dependencies |  Major | Metrics | Georgii Gobozov | Georgii Gobozov |
| [FLINK-9627](https://issues.apache.org/jira/browse/FLINK-9627) | Extending 'KafkaJsonTableSource' according to comments will result in NPE |  Major | . | Dominik Wosiński | vinoyang |
| [FLINK-9684](https://issues.apache.org/jira/browse/FLINK-9684) | HistoryServerArchiveFetcher not working properly with secure hdfs cluster |  Major | History Server | Ethan Li | Ethan Li |
| [FLINK-9580](https://issues.apache.org/jira/browse/FLINK-9580) | Potentially unclosed ByteBufInputStream in RestClient#readRawResponse |  Minor | REST | Ted Yu | vinoyang |
| [FLINK-9677](https://issues.apache.org/jira/browse/FLINK-9677) | RestClient fails for large uploads |  Major | REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9567](https://issues.apache.org/jira/browse/FLINK-9567) | Flink does not release resource in Yarn Cluster mode |  Critical | Cluster Management, YARN | Shimin Yang | Shimin Yang |
| [FLINK-9665](https://issues.apache.org/jira/browse/FLINK-9665) | PrometheusReporter does not properly unregister metrics |  Major | Metrics | Chesnay Schepler | Jelmer Kuperus |
| [FLINK-8785](https://issues.apache.org/jira/browse/FLINK-8785) | JobSubmitHandler does not handle JobSubmissionExceptions |  Blocker | Job-Submission, JobManager, REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9708](https://issues.apache.org/jira/browse/FLINK-9708) | Network buffer leaks when buffer request fails during buffer redistribution |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-9636](https://issues.apache.org/jira/browse/FLINK-9636) | Network buffer leaks in requesting a batch of segments during canceling |  Major | Network | zhijiang | Nico Kruber |
| [FLINK-9633](https://issues.apache.org/jira/browse/FLINK-9633) | Flink doesn't use the Savepoint path's filesystem to create the OuptutStream on Task. |  Critical | State Backends, Checkpointing | Sihua Zhou | Sihua Zhou |
| [FLINK-9654](https://issues.apache.org/jira/browse/FLINK-9654) | Internal error while deserializing custom Scala TypeSerializer instances |  Major | . | Zsolt Donca | Zsolt Donca |
| [FLINK-9554](https://issues.apache.org/jira/browse/FLINK-9554) | flink scala shell doesn't work in yarn mode |  Blocker | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-9676](https://issues.apache.org/jira/browse/FLINK-9676) | Deadlock during canceling task and recycling exclusive buffer |  Critical | Network | zhijiang | Nico Kruber |
| [FLINK-9581](https://issues.apache.org/jira/browse/FLINK-9581) | Redundant spaces for Collect at sql.md |  Trivial | Documentation, Table API & SQL | Sergey Nuyanzin | Sergey Nuyanzin |
| [FLINK-9769](https://issues.apache.org/jira/browse/FLINK-9769) | FileUploads may be shared across requests |  Blocker | Job-Submission, REST, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9770](https://issues.apache.org/jira/browse/FLINK-9770) | UI jar list broken |  Blocker | Job-Submission, REST, Webfrontend | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9789](https://issues.apache.org/jira/browse/FLINK-9789) | Watermark metrics for an operator&task shadow each other |  Blocker | Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-9603](https://issues.apache.org/jira/browse/FLINK-9603) | Incorrect indexing of part files, when part suffix is specified (FileAlreadyExistsException) |  Major | filesystem-connector | Rinat Sharipov | Kostas Kloudas |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-8996](https://issues.apache.org/jira/browse/FLINK-8996) | Include an operator with broadcast and union state |  Major | Tests | Stefan Richter | Tzu-Li (Gordon) Tai |
| [FLINK-9322](https://issues.apache.org/jira/browse/FLINK-9322) | Add exception throwing map function that simulates failures to the general purpose DataStream job |  Major | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-9320](https://issues.apache.org/jira/browse/FLINK-9320) | Update \`test-ha.sh\` end-to-end test to use general purpose DataStream job |  Critical | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-8977](https://issues.apache.org/jira/browse/FLINK-8977) | End-to-end test: Manually resume job after terminal failure |  Blocker | Tests | Till Rohrmann | Tzu-Li (Gordon) Tai |
| [FLINK-8989](https://issues.apache.org/jira/browse/FLINK-8989) | End-to-end test: ElasticSearch connector |  Major | ElasticSearch Connector, Tests | Till Rohrmann | zhangminglei |
| [FLINK-9008](https://issues.apache.org/jira/browse/FLINK-9008) | End-to-end test: Quickstarts |  Blocker | Quickstarts, Tests | Till Rohrmann | zhangminglei |
| [FLINK-8982](https://issues.apache.org/jira/browse/FLINK-8982) | End-to-end test: Queryable state |  Blocker | Queryable State, Tests | Till Rohrmann | Florian Schmidt |
| [FLINK-9394](https://issues.apache.org/jira/browse/FLINK-9394) | Let externalized checkpoint resume e2e also test rescaling |  Major | Tests | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |


