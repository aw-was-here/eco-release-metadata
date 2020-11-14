
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

## Release 1.7.2 - 2019-02-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-10457](https://issues.apache.org/jira/browse/FLINK-10457) | Support SequenceFile for StreamingFileSink |  Major | Connectors / Common, Connectors / FileSystem | Jihyun Cho | Kostas Kloudas |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11168](https://issues.apache.org/jira/browse/FLINK-11168) | LargePlanTest times out on Travis |  Major | Tests | Chesnay Schepler | Maximilian Michels |
| [FLINK-11262](https://issues.apache.org/jira/browse/FLINK-11262) | Bump jython-standalone to 2.7.1 |  Major | API / Python, Build System | Fokko Driesprong | Fokko Driesprong |
| [FLINK-11134](https://issues.apache.org/jira/browse/FLINK-11134) | Invalid REST API request should not log the full exception in Flink logs |  Minor | Runtime / REST | Mark Cho | Chesnay Schepler |
| [FLINK-11304](https://issues.apache.org/jira/browse/FLINK-11304) | Typo in time attributes doc |  Trivial | Documentation | Jaryzhen | Jaryzhen |
| [FLINK-11331](https://issues.apache.org/jira/browse/FLINK-11331) | Fix errors in tableApi.md and functions.md |  Major | Table SQL / API | Hequn Cheng | Hequn Cheng |
| [FLINK-11289](https://issues.apache.org/jira/browse/FLINK-11289) | Rework example module structure to account for licensing |  Major | Build System, Examples | Chesnay Schepler | Chesnay Schepler |
| [FLINK-10910](https://issues.apache.org/jira/browse/FLINK-10910) | Harden Kubernetes e2e test |  Critical | Test Infrastructure | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-11469](https://issues.apache.org/jira/browse/FLINK-11469) | Fix example in "Tuning Checkpoints and Large State" documentation |  Minor | Documentation, Runtime / State Backends | shengjk1 |  |
| [FLINK-11473](https://issues.apache.org/jira/browse/FLINK-11473) | Clarify Documenation on Latency Tracking |  Minor | Documentation, Runtime / Metrics | Konstantin Knauf | Konstantin Knauf |
| [FLINK-11079](https://issues.apache.org/jira/browse/FLINK-11079) | Skip deployment for flnk-storm-examples |  Major | Build System, Legacy Components / Storm Compatibility | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11207](https://issues.apache.org/jira/browse/FLINK-11207) | Update Apache commons-compress from 1.4.1 to 1.18 |  Blocker | Build System | Nico Kruber | Nico Kruber |
| [FLINK-11023](https://issues.apache.org/jira/browse/FLINK-11023) | Update LICENSE and NOTICE files for flink-connectors |  Critical | Connectors / Common | Till Rohrmann | Chesnay Schepler |
| [FLINK-11628](https://issues.apache.org/jira/browse/FLINK-11628) | Cache maven on travis |  Major | Travis | Chesnay Schepler | Chesnay Schepler |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11083](https://issues.apache.org/jira/browse/FLINK-11083) | CRowSerializerConfigSnapshot is not instantiable |  Major | API / Type Serialization System, Table SQL / API | boshu Zheng | boshu Zheng |
| [FLINK-11100](https://issues.apache.org/jira/browse/FLINK-11100) | Presto S3 FileSystem E2E test broken |  Major | FileSystems, Test Infrastructure | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11151](https://issues.apache.org/jira/browse/FLINK-11151) | FileUploadHandler stops working if the upload directory is removed |  Major | Runtime / Coordination, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11201](https://issues.apache.org/jira/browse/FLINK-11201) | Document SBT dependency requirements when using MiniClusterResource |  Major | Tests | eugen yushin | Till Rohrmann |
| [FLINK-11246](https://issues.apache.org/jira/browse/FLINK-11246) | Fix distinct AGG visibility issues |  Major | Table SQL / API | sunjincheng | Dian Fu |
| [FLINK-11235](https://issues.apache.org/jira/browse/FLINK-11235) | Elasticsearch connector leaks threads if no connection could be established |  Major | Connectors / ElasticSearch | lamber-ken | lamber-ken |
| [FLINK-10761](https://issues.apache.org/jira/browse/FLINK-10761) | MetricGroup#getAllVariables can deadlock |  Critical | Runtime / Metrics | Chesnay Schepler | Chesnay Schepler |
| [FLINK-11194](https://issues.apache.org/jira/browse/FLINK-11194) | missing Scala 2.12 build of HBase connector |  Major | API / DataSet, Build System | Zhenhao Li | Chesnay Schepler |
| [FLINK-11234](https://issues.apache.org/jira/browse/FLINK-11234) | ExternalTableCatalogBuilder unable to build a batch-only table |  Minor | Table SQL / API, Tests | Eron Wright | Eron Wright |
| [FLINK-11119](https://issues.apache.org/jira/browse/FLINK-11119) | Incorrect Scala example for Table Function |  Major | Documentation | Denys Fakhritdinov | TANG Wen-hui |
| [FLINK-11227](https://issues.apache.org/jira/browse/FLINK-11227) | The DescriptorProperties contains some bounds checking errors |  Major | Table SQL / API | Xingcan Cui | Xingcan Cui |
| [FLINK-11173](https://issues.apache.org/jira/browse/FLINK-11173) | Proctime attribute validation throws an incorrect exception message |  Major | Table SQL / API | vinoyang | TANG Wen-hui |
| [FLINK-11279](https://issues.apache.org/jira/browse/FLINK-11279) | Invalid week interval parsing in ExpressionParser |  Major | Table SQL / API | Forward Xu | Forward Xu |
| [FLINK-11191](https://issues.apache.org/jira/browse/FLINK-11191) | Exception in code generation when ambiguous columns in MATCH\_RECOGNIZE |  Major | Table SQL / API | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-11232](https://issues.apache.org/jira/browse/FLINK-11232) | Empty Start Time of sub-task on web dashboard |  Major | Runtime / Web Frontend | BoWang | BoWang |
| [FLINK-11251](https://issues.apache.org/jira/browse/FLINK-11251) | Incompatible metric name on prometheus reporter |  Major | Runtime / Metrics | Wei-Che Wei | Wei-Che Wei |
| [FLINK-11084](https://issues.apache.org/jira/browse/FLINK-11084) | Incorrect ouput after two consecutive split and select |  Critical | . | Shimin Yang | Shimin Yang |
| [FLINK-11224](https://issues.apache.org/jira/browse/FLINK-11224) | Log is missing in scala-shell |  Major | Scala Shell | Jeff Zhang | Jeff Zhang |
| [FLINK-10848](https://issues.apache.org/jira/browse/FLINK-10848) | Flink's Yarn ResourceManager can allocate too many excess containers |  Major | Deployment / YARN | Shuyi Chen | Till Rohrmann |
| [FLINK-11187](https://issues.apache.org/jira/browse/FLINK-11187) | StreamingFileSink with S3 backend transient socket timeout issues |  Major | Connectors / Common, FileSystems | Addison Higham | Addison Higham |
| [FLINK-11436](https://issues.apache.org/jira/browse/FLINK-11436) | Java deserialization failure of the AvroSerializer when used in an old CompositeSerializers |  Blocker | API / Type Serialization System | Igal Shilman | Igal Shilman |
| [FLINK-11071](https://issues.apache.org/jira/browse/FLINK-11071) | Dynamic proxy classes cannot be resolved when deserializing job graph |  Major | . | Oleg Zhukov | BoWang |
| [FLINK-10774](https://issues.apache.org/jira/browse/FLINK-10774) | connection leak when partition discovery is disabled and open throws exception |  Major | Connectors / Kafka | Steven Zhen Wu | Till Rohrmann |
| [FLINK-11145](https://issues.apache.org/jira/browse/FLINK-11145) | Fix Hadoop version handling in binary release script |  Major | Build System | Thomas Weise | Thomas Weise |
| [FLINK-11389](https://issues.apache.org/jira/browse/FLINK-11389) | Incorrectly use job information when call getSerializedTaskInformation in class TaskDeploymentDescriptor |  Major | Runtime / Coordination | yuqi | yuqi |
| [FLINK-11419](https://issues.apache.org/jira/browse/FLINK-11419) | StreamingFileSink fails to recover after taskmanager failure |  Blocker | Connectors / FileSystem | Edward Rojas | Edward Rojas |
| [FLINK-11302](https://issues.apache.org/jira/browse/FLINK-11302) | FlinkS3FileSystem uses an incorrect path for temporary files |  Major | FileSystems | Artsem Semianenka | Artsem Semianenka |
| [FLINK-11046](https://issues.apache.org/jira/browse/FLINK-11046) | ElasticSearch6Connector cause thread blocked when index failed with retry |  Major | Connectors / ElasticSearch | luoguohao | xueyu |
| [FLINK-10721](https://issues.apache.org/jira/browse/FLINK-10721) | Kafka discovery-loop exceptions may be swallowed |  Major | Connectors / Kafka | zzsmdfj | Chesnay Schepler |
| [FLINK-11725](https://issues.apache.org/jira/browse/FLINK-11725) | use flink cli  when  {{-yn}} \* {{-ys}} \< {{-p}}, the applied resources are erratic |  Major | Runtime / Coordination | shengjk1 |  |
| [FLINK-11919](https://issues.apache.org/jira/browse/FLINK-11919) | Exception in thread "main" org.apache.flink.table.api.SqlParserException: SQL parse failed. Encountered "FROM user" at line 1, column 17. |  Blocker | Table SQL / API | thinktothings |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-11180](https://issues.apache.org/jira/browse/FLINK-11180) | ProcessFailureCancelingITCase#testCancelingOnProcessFailure |  Major | Tests | sunjincheng | Hequn Cheng |
| [FLINK-11179](https://issues.apache.org/jira/browse/FLINK-11179) |  JoinCancelingITCase#testCancelSortMatchWhileDoingHeavySorting test error |  Major | Tests | sunjincheng | sunjincheng |
| [FLINK-11181](https://issues.apache.org/jira/browse/FLINK-11181) | SimpleRecoveryITCaseBase test error |  Major | . | sunjincheng | Hequn Cheng |


