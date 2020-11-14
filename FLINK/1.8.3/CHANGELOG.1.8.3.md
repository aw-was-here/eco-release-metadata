
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

## Release 1.8.3 - 2019-12-11



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13967](https://issues.apache.org/jira/browse/FLINK-13967) | Generate full binary licensing via collect\_license\_files.sh |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13968](https://issues.apache.org/jira/browse/FLINK-13968) | Add travis check for the correctness of the binary licensing |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14334](https://issues.apache.org/jira/browse/FLINK-14334) | ElasticSearch docs refer to non-existent ExceptionUtils.containsThrowable |  Major | Connectors / ElasticSearch, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13991](https://issues.apache.org/jira/browse/FLINK-13991) | Add git exclusion for 1.9+ features to 1.8 |  Trivial | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14008](https://issues.apache.org/jira/browse/FLINK-14008) | Auto-generate binary licensing |  Blocker | Build System | Till Rohrmann | Chesnay Schepler |
| [FLINK-12848](https://issues.apache.org/jira/browse/FLINK-12848) | Method equals() in RowTypeInfo should consider fieldsNames |  Major | Table SQL / Planner | Aloys Zhang | Aloys Zhang |
| [FLINK-14123](https://issues.apache.org/jira/browse/FLINK-14123) | Lower the default value of taskmanager.memory.fraction |  Major | Runtime / Configuration | liupengcheng | liupengcheng |
| [FLINK-14639](https://issues.apache.org/jira/browse/FLINK-14639) | Metrics User Scope docs refer to wrong class |  Minor | Documentation, Runtime / Metrics | hehuiyuan | Chesnay Schepler |
| [FLINK-14646](https://issues.apache.org/jira/browse/FLINK-14646) | Check non-null for key in KeyGroupStreamPartitioner |  Minor | Runtime / State Backends | Jiayi Liao | Jiayi Liao |
| [FLINK-13729](https://issues.apache.org/jira/browse/FLINK-13729) | Update website generation dependencies |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-14104](https://issues.apache.org/jira/browse/FLINK-14104) | Bump Jackson to 2.10.1 |  Major | BuildSystem / Shaded | Nico Kruber | Nico Kruber |
| [FLINK-14995](https://issues.apache.org/jira/browse/FLINK-14995) | Kinesis NOTICE is incorrect |  Blocker | Release System | Chesnay Schepler | Chesnay Schepler |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13728](https://issues.apache.org/jira/browse/FLINK-13728) | Fix wrong closing tag order in sidenav |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13936](https://issues.apache.org/jira/browse/FLINK-13936) | NOTICE-binary is outdated |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13966](https://issues.apache.org/jira/browse/FLINK-13966) | Jar sorting in collect\_license\_files.sh is locale dependent |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13892](https://issues.apache.org/jira/browse/FLINK-13892) | HistoryServerTest failed on Travis |  Major | Runtime / Coordination, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14009](https://issues.apache.org/jira/browse/FLINK-14009) | Cron jobs broken due to verifying incorrect NOTICE-binary file |  Blocker | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-14043](https://issues.apache.org/jira/browse/FLINK-14043) | SavepointMigrationTestBase is super slow |  Major | Runtime / State Backends, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-14107](https://issues.apache.org/jira/browse/FLINK-14107) | Kinesis consumer record emitter deadlock under event time alignment |  Major | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-13746](https://issues.apache.org/jira/browse/FLINK-13746) | Elasticsearch (v2.3.5) sink end-to-end test fails on Travis |  Critical | Connectors / ElasticSearch, Tests | Till Rohrmann | Zijie Lu |
| [FLINK-14010](https://issues.apache.org/jira/browse/FLINK-14010) | Dispatcher & JobManagers don't give up leadership when AM is shut down |  Critical | Deployment / YARN, Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-14315](https://issues.apache.org/jira/browse/FLINK-14315) | NPE with JobMaster.disconnectTaskManager |  Critical | Runtime / Task | Steven Zhen Wu | Till Rohrmann |
| [FLINK-14347](https://issues.apache.org/jira/browse/FLINK-14347) | YARNSessionFIFOITCase.checkForProhibitedLogContents found a log with prohibited string |  Critical | Deployment / YARN, Tests | Caizhi Weng | Zili Chen |
| [FLINK-13999](https://issues.apache.org/jira/browse/FLINK-13999) | Correct the documentation of MATCH\_RECOGNIZE |  Major | Documentation | Dian Fu | Dian Fu |
| [FLINK-14337](https://issues.apache.org/jira/browse/FLINK-14337) | HistoryServer does not handle NPE on corruped archives properly |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-14413](https://issues.apache.org/jira/browse/FLINK-14413) | Shade-plugin ApacheNoticeResourceTransformer uses platform-dependent encoding |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14434](https://issues.apache.org/jira/browse/FLINK-14434) | Dispatcher#createJobManagerRunner should not start JobManagerRunner |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-14235](https://issues.apache.org/jira/browse/FLINK-14235) | Kafka010ProducerITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceCustomOperator fails on travis |  Blocker | Connectors / Kafka | Piotr Nowojski | Piotr Nowojski |
| [FLINK-14175](https://issues.apache.org/jira/browse/FLINK-14175) | Upgrade KPL version in flink-connector-kinesis to fix application OOM |  Major | Connectors / Kinesis | Abhilasha Seth | Abhilasha Seth |
| [FLINK-14370](https://issues.apache.org/jira/browse/FLINK-14370) | KafkaProducerAtLeastOnceITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceRegularSink fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann | Jiangjie Qin |
| [FLINK-14398](https://issues.apache.org/jira/browse/FLINK-14398) | Further split input unboxing code into separate methods |  Major | Table SQL / Legacy Planner, Table SQL / Planner | Hao Dang | Hao Dang |
| [FLINK-14562](https://issues.apache.org/jira/browse/FLINK-14562) | RMQSource leaves idle consumer after closing |  Major | Connectors/ RabbitMQ | Nicolas Deslandes | Nicolas Deslandes |
| [FLINK-12342](https://issues.apache.org/jira/browse/FLINK-12342) | Yarn Resource Manager Acquires Too Many Containers |  Major | Deployment / YARN | Zhenqiu Huang | Till Rohrmann |
| [FLINK-14589](https://issues.apache.org/jira/browse/FLINK-14589) | Redundant slot requests with the same AllocationID leads to inconsistent slot table |  Major | Runtime / Coordination | Hwanju Kim | Hwanju Kim |
| [FLINK-13184](https://issues.apache.org/jira/browse/FLINK-13184) | Starting a TaskExecutor blocks the YarnResourceManager's main thread |  Critical | Deployment / YARN | Xintong Song | Yang Wang |
| [FLINK-13749](https://issues.apache.org/jira/browse/FLINK-13749) | Make Flink client respect classloading policy |  Minor | Command Line Client, Runtime / REST | Paul Lin | Paul Lin |
| [FLINK-13995](https://issues.apache.org/jira/browse/FLINK-13995) | Fix shading of the licence information of netty |  Major | BuildSystem / Shaded | Arvid Heise | Chesnay Schepler |
| [FLINK-14976](https://issues.apache.org/jira/browse/FLINK-14976) | Cassandra Connector leaks Semaphore on Throwable; hangs on close |  Major | Connectors / Cassandra | Mads Chr. Olesen | Mads Chr. Olesen |
| [FLINK-15036](https://issues.apache.org/jira/browse/FLINK-15036) | Container startup error will be handled out side of the YarnResourceManager's main thread |  Blocker | Deployment / YARN | Till Rohrmann | Yang Wang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13724](https://issues.apache.org/jira/browse/FLINK-13724) | Remove unnecessary whitespace from the docs' sidenav |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13723](https://issues.apache.org/jira/browse/FLINK-13723) | Use liquid-c for faster doc generation |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13725](https://issues.apache.org/jira/browse/FLINK-13725) | Use sassc for faster doc generation |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13726](https://issues.apache.org/jira/browse/FLINK-13726) | Build docs with jekyll 4.0.0.pre.beta1 |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13791](https://issues.apache.org/jira/browse/FLINK-13791) | Speed up sidenav by using group\_by |  Major | Documentation | Nico Kruber | Nico Kruber |


