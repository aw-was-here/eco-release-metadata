
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

## Release 1.9.3 - 2020-04-24



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15938](https://issues.apache.org/jira/browse/FLINK-15938) | Idle state not cleaned in StreamingJoinOperator and StreamingSemiAntiJoinOperator |  Critical | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-16280](https://issues.apache.org/jira/browse/FLINK-16280) | Fix sample code errors in the documentation about elasticsearch connector |  Minor | Connectors / ElasticSearch, Documentation | Jiaqi Li | Jiaqi Li |
| [FLINK-16862](https://issues.apache.org/jira/browse/FLINK-16862) | Remove example url in quickstarts |  Blocker | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16018](https://issues.apache.org/jira/browse/FLINK-16018) | Improve error reporting when submitting batch job (instead of AskTimeoutException) |  Blocker | Runtime / Coordination | Robert Metzger | Till Rohrmann |
| [FLINK-16942](https://issues.apache.org/jira/browse/FLINK-16942) | ES 5 sink should allow users to select netty transport client |  Major | Connectors / ElasticSearch | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16697](https://issues.apache.org/jira/browse/FLINK-16697) | [CVE-2020-1960] Disable JMX rebinding |  Major | Runtime / Metrics | Colm O hEigeartaigh | Colm O hEigeartaigh |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15638](https://issues.apache.org/jira/browse/FLINK-15638) | releasing/create\_release\_branch.sh does not set version in flink-python/pyflink/version.py |  Blocker | Release System | Gary Yao | Hequn Cheng |
| [FLINK-15575](https://issues.apache.org/jira/browse/FLINK-15575) | Azure Filesystem Shades Wrong Package "httpcomponents" |  Major | FileSystems | Konstantin Knauf | Konstantin Knauf |
| [FLINK-15844](https://issues.apache.org/jira/browse/FLINK-15844) | Removal of JobWithJars.buildUserCodeClassLoader method without Configuration breaks backwards compatibility |  Major | Client / Job Submission | Ismaël Mejía | Ismaël Mejía |
| [FLINK-15010](https://issues.apache.org/jira/browse/FLINK-15010) | Temp directories flink-netty-shuffle-\* are not cleaned up |  Major | Runtime / Network | Nico Kruber | Yun Gao |
| [FLINK-15863](https://issues.apache.org/jira/browse/FLINK-15863) | Fix docs stating that savepoints are relocatable |  Blocker | Documentation | Nico Kruber | Bastien DINE |
| [FLINK-16242](https://issues.apache.org/jira/browse/FLINK-16242) | BinaryGeneric serialization error cause checkpoint failure |  Major | Table SQL / Planner, Table SQL / Runtime | Jiayi Liao | Jiayi Liao |
| [FLINK-14560](https://issues.apache.org/jira/browse/FLINK-14560) | The value of taskmanager.memory.size in flink-conf.yaml is set to zero will cause taskmanager not to work |  Minor | Deployment / YARN | fa zheng | fa zheng |
| [FLINK-11193](https://issues.apache.org/jira/browse/FLINK-11193) | Rocksdb timer service factory configuration option is not settable per job |  Minor | Runtime / State Backends | Fan weiwen | Aitozi |
| [FLINK-15386](https://issues.apache.org/jira/browse/FLINK-15386) | SingleJobSubmittedJobGraphStore.putJobGraph has a logic error |  Minor | Runtime / Coordination | Ethan Li | Ethan Li |
| [FLINK-15085](https://issues.apache.org/jira/browse/FLINK-15085) | HistoryServer dashboard config json out of sync |  Blocker | Runtime / Web Frontend | chaganti spurthi | Chesnay Schepler |
| [FLINK-16573](https://issues.apache.org/jira/browse/FLINK-16573) | Kinesis consumer does not properly shutdown RecordFetcher threads |  Major | Connectors / Kinesis | Maximilian Michels | Maximilian Michels |
| [FLINK-16047](https://issues.apache.org/jira/browse/FLINK-16047) | Blink planner produces wrong aggregate results with state clean up |  Critical | Table SQL / Planner | Timo Walther | Jark Wu |
| [FLINK-16703](https://issues.apache.org/jira/browse/FLINK-16703) | AkkaRpcActor state machine does not record transition to terminating state. |  Minor | Runtime / Coordination | Dmitri Chmelev | Till Rohrmann |
| [FLINK-16860](https://issues.apache.org/jira/browse/FLINK-16860) | Failed to push filter into OrcTableSource when upgrading to 1.9.2 |  Major | Connectors / ORC, Table SQL / API | Nikola | Jingsong Lee |
| [FLINK-14316](https://issues.apache.org/jira/browse/FLINK-14316) | Stuck in "Job leader ... lost leadership" error |  Critical | Runtime / Coordination | Steven Zhen Wu | Till Rohrmann |
| [FLINK-16836](https://issues.apache.org/jira/browse/FLINK-16836) | Losing leadership does not clear rpc connection in JobManagerLeaderListener |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-16373](https://issues.apache.org/jira/browse/FLINK-16373) | EmbeddedLeaderService: IllegalStateException: The RPC connection is already closed |  Major | Runtime / Coordination | Robert Metzger | Till Rohrmann |
| [FLINK-16916](https://issues.apache.org/jira/browse/FLINK-16916) | The logic of NullableSerializer#copy is wrong |  Blocker | API / Type Serialization System | Congxian Qiu | Congxian Qiu |
| [FLINK-16954](https://issues.apache.org/jira/browse/FLINK-16954) | ClassRelocator uses JDK 11 APIs |  Blocker | API / Type Serialization System | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-16696](https://issues.apache.org/jira/browse/FLINK-16696) | Savepoint trigger documentation is insufficient |  Minor | Documentation, Runtime / REST | Roman Khachatryan | Chesnay Schepler |
| [FLINK-17062](https://issues.apache.org/jira/browse/FLINK-17062) | Fix the conversion from Java row type to Python row type |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-15812](https://issues.apache.org/jira/browse/FLINK-15812) | HistoryServer archiving is done in Dispatcher main thread |  Critical | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16576](https://issues.apache.org/jira/browse/FLINK-16576) | State inconsistency on restore with memory state backends |  Blocker | Runtime / State Backends | Nico Kruber | Congxian Qiu |
| [FLINK-16308](https://issues.apache.org/jira/browse/FLINK-16308) | SQL connector download links are broken |  Critical | Documentation, Table SQL / Ecosystem | Fabian Hueske | Fabian Hueske |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16389](https://issues.apache.org/jira/browse/FLINK-16389) | Bump Kafka 0.10 to 0.10.2.2 |  Major | Connectors / Kafka | Chesnay Schepler | Chesnay Schepler |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16454](https://issues.apache.org/jira/browse/FLINK-16454) | Update the copyright year in NOTICE files |  Blocker | Release System | Zhijiang | Zhijiang |


