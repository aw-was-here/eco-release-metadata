
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

## Release 1.3.0 - Unreleased (as of 2017-01-19)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4686](https://issues.apache.org/jira/browse/FLINK-4686) | Add possibility to get column names |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-5303](https://issues.apache.org/jira/browse/FLINK-5303) | Add CUBE/ROLLUP/GROUPING SETS operator in SQL |  Major | Documentation, Table API & SQL | Alexander Chermenin | Alexander Chermenin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-4288](https://issues.apache.org/jira/browse/FLINK-4288) | Make it possible to unregister tables |  Major | Table API & SQL | Timo Walther | Timo Walther |
| [FLINK-5412](https://issues.apache.org/jira/browse/FLINK-5412) | Enable RocksDB tests on Windows |  Major | State Backends, Checkpointing, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5066](https://issues.apache.org/jira/browse/FLINK-5066) | add more efficient isEvent check to EventSerializer |  Major | Network | Nico Kruber | Nico Kruber |
| [FLINK-4673](https://issues.apache.org/jira/browse/FLINK-4673) | TypeInfoFactory for Either type |  Minor | Core | Greg Hogan | Greg Hogan |
| [FLINK-5280](https://issues.apache.org/jira/browse/FLINK-5280) | Refactor TableSource |  Major | Table API & SQL | Fabian Hueske | Ivan Mushketyk |
| [FLINK-5358](https://issues.apache.org/jira/browse/FLINK-5358) | Support RowTypeInfo extraction in TypeExtractor by Row instance |  Major | . | Anton Solovev | Anton Solovev |
| [FLINK-5237](https://issues.apache.org/jira/browse/FLINK-5237) | Consolidate and harmonize Window Translation Tests |  Major | Streaming | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-5442](https://issues.apache.org/jira/browse/FLINK-5442) | Add test to fix ordinals of serialized enum StateDescriptor.Type |  Minor | State Backends, Checkpointing | Stefan Richter | Stefan Richter |
| [FLINK-5388](https://issues.apache.org/jira/browse/FLINK-5388) | Remove private access of edges and vertices of Gelly Graph class |  Major | Gelly | wouter ligtenberg | Anton Solovev |
| [FLINK-5466](https://issues.apache.org/jira/browse/FLINK-5466) | Make production environment default in gulpfile |  Major | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-4450](https://issues.apache.org/jira/browse/FLINK-4450) | update storm version to 1.0.0 |  Major | flink-contrib | yuzhongliu |  |
| [FLINK-5448](https://issues.apache.org/jira/browse/FLINK-5448) | Fix typo in StateAssignmentOperation Exception |  Trivial | State Backends, Checkpointing | Ufuk Celebi |  |
| [FLINK-5438](https://issues.apache.org/jira/browse/FLINK-5438) | Typo in JobGraph generator Exception |  Trivial | Client | Ufuk Celebi |  |
| [FLINK-5485](https://issues.apache.org/jira/browse/FLINK-5485) | Mark compiled web frontend files as binary when processed by git diff |  Trivial | Webfrontend | Greg Hogan | Greg Hogan |
| [FLINK-3150](https://issues.apache.org/jira/browse/FLINK-3150) | Make YARN container invocation configurable |  Major | YARN | Robert Metzger | Nico Kruber |
| [FLINK-5377](https://issues.apache.org/jira/browse/FLINK-5377) | Improve savepoint docs |  Major | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5574](https://issues.apache.org/jira/browse/FLINK-5574) | Add checkpoint statistics docs |  Minor | Documentation | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5521](https://issues.apache.org/jira/browse/FLINK-5521) | remove unused KvStateRequestSerializer#serializeList |  Major | Queryable State | Nico Kruber | Nico Kruber |
| [FLINK-5519](https://issues.apache.org/jira/browse/FLINK-5519) | scala-maven-plugin version all change to 3.2.2 |  Major | Build System | shijinkui | shijinkui |
| [FLINK-5543](https://issues.apache.org/jira/browse/FLINK-5543) | customCommandLine tips in CliFrontend |  Major | Client | shijinkui | shijinkui |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5382](https://issues.apache.org/jira/browse/FLINK-5382) | Taskmanager log download button causes 404 |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-4255](https://issues.apache.org/jira/browse/FLINK-4255) | Unstable test WebRuntimeMonitorITCase.testNoEscape |  Major | . | Kostas Kloudas | Boris Osipov |
| [FLINK-4870](https://issues.apache.org/jira/browse/FLINK-4870) | ContinuousFileMonitoringFunction does not properly handle absolut Windows paths |  Minor | Streaming | Chesnay Schepler | Chesnay Schepler |
| [FLINK-5323](https://issues.apache.org/jira/browse/FLINK-5323) | CheckpointNotifier should be removed from docs |  Trivial | Documentation | Abhishek Singh |  |
| [FLINK-5349](https://issues.apache.org/jira/browse/FLINK-5349) | Fix code sample for Twitter connector |  Major | . | Ivan Mushketyk | Ivan Mushketyk |
| [FLINK-5392](https://issues.apache.org/jira/browse/FLINK-5392) | flink-dist build failed when change scala version to 2.11 |  Major | Build System | 刘喆 |  |
| [FLINK-5408](https://issues.apache.org/jira/browse/FLINK-5408) | RocksDB initialization can fail with an UnsatisfiedLinkError in the presence of multiple classloaders |  Major | ksDB State Backend | Stephan Ewen | Stephan Ewen |
| [FLINK-4890](https://issues.apache.org/jira/browse/FLINK-4890) | FileInputFormatTest#testExcludeFiles fails on Windows OS |  Major | Batch Connectors and Input/Output Formats | Chesnay Schepler | Stephan Ewen |
| [FLINK-5397](https://issues.apache.org/jira/browse/FLINK-5397) | Fail to deserialize savepoints in v1.1 when there exist missing fields in class serialization descriptors |  Major | State Backends, Checkpointing | Xiaogang Shi | Stefan Richter |
| [FLINK-5390](https://issues.apache.org/jira/browse/FLINK-5390) | input should be closed in finally block in YarnFlinkApplicationMasterRunner#loadJobGraph() |  Minor | . | Ted Yu | Roman Maier |
| [FLINK-5400](https://issues.apache.org/jira/browse/FLINK-5400) | Add accessor to folding states in RuntimeContext |  Major | State Backends, Checkpointing | Xiaogang Shi | Xiaogang Shi |
| [FLINK-4148](https://issues.apache.org/jira/browse/FLINK-4148) | incorrect calculation distance in QuadTree |  Trivial | Machine Learning Library | Alexey Diomin |  |
| [FLINK-5119](https://issues.apache.org/jira/browse/FLINK-5119) | Last taskmanager heartbeat not showing in web frontend |  Major | Webfrontend | Ufuk Celebi | Sachin Goel |
| [FLINK-5381](https://issues.apache.org/jira/browse/FLINK-5381) | Scrolling in some web interface pages doesn't work (taskmanager details, jobmanager config) |  Major | Webfrontend | Robert Metzger | Sachin Goel |
| [FLINK-5359](https://issues.apache.org/jira/browse/FLINK-5359) | Job Exceptions view doesn't scroll |  Major | Webfrontend | Eron Wright | Sachin Goel |
| [FLINK-5267](https://issues.apache.org/jira/browse/FLINK-5267) | TaskManager logs not scrollable |  Major | Webfrontend | Mischa Krüger | Sachin Goel |
| [FLINK-5383](https://issues.apache.org/jira/browse/FLINK-5383) | TaskManager fails with SIGBUS when loading RocksDB |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-5364](https://issues.apache.org/jira/browse/FLINK-5364) | Rework JAAS configuration to support user-supplied entries |  Critical | Cluster Management | Eron Wright | Eron Wright |
| [FLINK-5361](https://issues.apache.org/jira/browse/FLINK-5361) | Flink shouldn't require Kerberos credentials |  Major | Client | Eron Wright | Eron Wright |
| [FLINK-5350](https://issues.apache.org/jira/browse/FLINK-5350) | Don't overwrite existing Jaas config property |  Major | Security | Maximilian Michels | Maximilian Michels |
| [FLINK-5427](https://issues.apache.org/jira/browse/FLINK-5427) | Typo in the event\_timestamps\_watermarks doc |  Minor | Documentation | Yelei Feng |  |
| [FLINK-5379](https://issues.apache.org/jira/browse/FLINK-5379) | Flink CliFrontend does not return when not logged in with kerberos |  Major | Client | Robert Metzger | Eron Wright |
| [FLINK-5444](https://issues.apache.org/jira/browse/FLINK-5444) | Flink UI uses absolute URLs. |  Major | . | Joerg Schad | Joerg Schad |
| [FLINK-5407](https://issues.apache.org/jira/browse/FLINK-5407) | Savepoint for iterative Task fails. |  Major | State Backends, Checkpointing | Stephan Ewen | Stefan Richter |
| [FLINK-5467](https://issues.apache.org/jira/browse/FLINK-5467) | Stateless chained tasks set legacy operator state |  Major | State Backends, Checkpointing | Ufuk Celebi | Stefan Richter |
| [FLINK-5489](https://issues.apache.org/jira/browse/FLINK-5489) | maven release:prepare fails due to invalid JDOM comments in pom.xml |  Minor | Build System | Haohui Mai | Haohui Mai |
| [FLINK-5345](https://issues.apache.org/jira/browse/FLINK-5345) | IOManager failed to properly clean up temp file directory |  Major | . | Robert Metzger | Stephan Ewen |
| [FLINK-5518](https://issues.apache.org/jira/browse/FLINK-5518) | HadoopInputFormat throws NPE when close() is called before open() |  Major | Batch Connectors and Input/Output Formats | Jakub Havlik | Jakub Havlik |
| [FLINK-5484](https://issues.apache.org/jira/browse/FLINK-5484) | Kryo serialization changed between 1.1 and 1.2 |  Major | Type Serialization System | Ufuk Celebi |  |
| [FLINK-5560](https://issues.apache.org/jira/browse/FLINK-5560) | Header in checkpoint stats summary misaligned |  Minor | Webfrontend | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5556](https://issues.apache.org/jira/browse/FLINK-5556) | BarrierBuffer resets bytes written on spiller roll over |  Minor | State Backends, Checkpointing | Ufuk Celebi | Ufuk Celebi |
| [FLINK-5531](https://issues.apache.org/jira/browse/FLINK-5531) | SSl code block formatting is broken |  Major | Documentation | Chesnay Schepler | Chesnay Schepler |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5457](https://issues.apache.org/jira/browse/FLINK-5457) | Create documentation for Asynchronous I/O |  Major | Documentation | Stephan Ewen | Stephan Ewen |
| [FLINK-4692](https://issues.apache.org/jira/browse/FLINK-4692) | Add tumbling group-windows for batch tables |  Major | Table API & SQL | Timo Walther | Jark Wu |
| [FLINK-4959](https://issues.apache.org/jira/browse/FLINK-4959) | Write Documentation for ProcessFunction |  Critical | Streaming | Aljoscha Krettek | Stephan Ewen |
| [FLINK-5268](https://issues.apache.org/jira/browse/FLINK-5268) | Split TableProgramsTestBase into TableProgramsCollectionTestBase and TableProgramsClusterTestBase |  Minor | Table API & SQL | Fabian Hueske |  |
| [FLINK-5555](https://issues.apache.org/jira/browse/FLINK-5555) | Add documentation about debugging watermarks |  Major | Documentation | Robert Metzger | Robert Metzger |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-5378](https://issues.apache.org/jira/browse/FLINK-5378) | Update Scopt version to 3.5.0 |  Trivial | . | Lorenz Bühmann |  |
| [FLINK-5084](https://issues.apache.org/jira/browse/FLINK-5084) | Replace Java Table API integration tests by unit tests |  Minor | Table API & SQL | Fabian Hueske |  |


