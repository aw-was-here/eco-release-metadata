
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

## Release 1.9.1 - 2019-10-19



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13517](https://issues.apache.org/jira/browse/FLINK-13517) | Restructure Hive Catalog documentation |  Major | Connectors / Hive, Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-13415](https://issues.apache.org/jira/browse/FLINK-13415) | Document how to use hive connector in scala shell |  Major | Documentation | Jeff Zhang | Jeff Zhang |
| [FLINK-13643](https://issues.apache.org/jira/browse/FLINK-13643) | Document the workaround for users with a different minor Hive version |  Major | Connectors / Hive | Xuefu Zhang | Terry Wang |
| [FLINK-13757](https://issues.apache.org/jira/browse/FLINK-13757) | Fix description is wrong of "IS NOT TRUE" function documentation |  Major | Documentation | hehuiyuan | hehuiyuan |
| [FLINK-13967](https://issues.apache.org/jira/browse/FLINK-13967) | Generate full binary licensing via collect\_license\_files.sh |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13968](https://issues.apache.org/jira/browse/FLINK-13968) | Add travis check for the correctness of the binary licensing |  Major | Travis | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13388](https://issues.apache.org/jira/browse/FLINK-13388) | Update UI screenshots in the documentation to the new default Web Frontend |  Critical | Documentation, Runtime / Web Frontend | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13336](https://issues.apache.org/jira/browse/FLINK-13336) | Remove the legacy batch fault tolerance page and redirect it to the new task failure recovery page |  Minor | Documentation | Zhu Zhu | Zhu Zhu |
| [FLINK-9941](https://issues.apache.org/jira/browse/FLINK-9941) | Flush in ScalaCsvOutputFormat before close method |  Major | API / Scala | Ryan Tao | Jiayi Liao |
| [FLINK-13845](https://issues.apache.org/jira/browse/FLINK-13845) | Drop all the content of removed "Checkpointed" interface |  Major | Documentation | Yun Tang | Yun Tang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13637](https://issues.apache.org/jira/browse/FLINK-13637) | Anchors not working in document(building.md, common.md, queryable\_state.md) |  Major | Documentation | Hequn Cheng | Hequn Cheng |
| [FLINK-13562](https://issues.apache.org/jira/browse/FLINK-13562) | throws exception when FlinkRelMdColumnInterval meets two stage stream group aggregate |  Critical | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13563](https://issues.apache.org/jira/browse/FLINK-13563) | TumblingGroupWindow should implement toString method |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13526](https://issues.apache.org/jira/browse/FLINK-13526) | Switching to a non existing catalog or database crashes sql-client |  Critical | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-13489](https://issues.apache.org/jira/browse/FLINK-13489) | Heavy deployment end-to-end test fails on Travis with TM heartbeat timeout |  Critical | Test Infrastructure | Tzu-Li (Gordon) Tai | Yingjie Cao |
| [FLINK-13534](https://issues.apache.org/jira/browse/FLINK-13534) | Unable to query Hive table with decimal column |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-13704](https://issues.apache.org/jira/browse/FLINK-13704) | TPC-H end-to-end test (Blink planner) fails on Travis |  Critical | Table SQL / Runtime | Till Rohrmann | Jingsong Lee |
| [FLINK-13484](https://issues.apache.org/jira/browse/FLINK-13484) | ConnectedComponents end-to-end test instable with NoResourceAvailableException |  Critical | Test Infrastructure | Tzu-Li (Gordon) Tai | Gary Yao |
| [FLINK-13663](https://issues.apache.org/jira/browse/FLINK-13663) | SQL Client end-to-end test for modern Kafka failed on Travis |  Critical | Connectors / Kafka, Table SQL / Client, Tests | Till Rohrmann | Alex |
| [FLINK-13585](https://issues.apache.org/jira/browse/FLINK-13585) | Fix sporadical deallock in TaskAsyncCallTest#testSetsUserCodeClassLoader() |  Critical | Runtime / Task, Tests | Gary Yao | Biao Liu |
| [FLINK-13501](https://issues.apache.org/jira/browse/FLINK-13501) | Fixes a few issues in documentation for Hive integration |  Critical | Connectors / Hive, Table SQL / API | Xuefu Zhang | Terry Wang |
| [FLINK-13705](https://issues.apache.org/jira/browse/FLINK-13705) | Broken links in Hive documentation |  Critical | Connectors / Hive | Till Rohrmann | Seth Wiesman |
| [FLINK-13530](https://issues.apache.org/jira/browse/FLINK-13530) | AbstractServerTest failed on Travis |  Major | Runtime / Queryable State, Tests | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13688](https://issues.apache.org/jira/browse/FLINK-13688) | HiveCatalogUseBlinkITCase.testBlinkUdf constantly failed with 1.9.0-rc2 |  Major | Connectors / Hive, Tests | Kurt Young | Jingsong Lee |
| [FLINK-13737](https://issues.apache.org/jira/browse/FLINK-13737) | flink-dist should add provided dependency on flink-examples-table |  Major | Examples | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-13738](https://issues.apache.org/jira/browse/FLINK-13738) | NegativeArraySizeException in LongHybridHashTable |  Major | Table SQL / Runtime | Robert Metzger | Jingsong Lee |
| [FLINK-13739](https://issues.apache.org/jira/browse/FLINK-13739) | BinaryRowTest.testWriteString() fails in some environments |  Major | Table SQL / Runtime | Robert Metzger | Jingsong Lee |
| [FLINK-13760](https://issues.apache.org/jira/browse/FLINK-13760) | Fix hardcode Scala version dependency in hive connector |  Blocker | Build System, Connectors / Hive | Jark Wu | Jark Wu |
| [FLINK-11630](https://issues.apache.org/jira/browse/FLINK-11630) | TaskExecutor does not wait for Task termination when terminating itself |  Major | Runtime / Coordination | Till Rohrmann | boshu Zheng |
| [FLINK-13742](https://issues.apache.org/jira/browse/FLINK-13742) | Fix code generation when aggregation contains both distinct aggregate with and without filter |  Major | Table SQL / Planner | Jark Wu | Shuo Cheng |
| [FLINK-13599](https://issues.apache.org/jira/browse/FLINK-13599) | Kinesis end-to-end test failed on Travis |  Critical | Connectors / Kinesis, Tests | Till Rohrmann | Andrey Zagrebin |
| [FLINK-13588](https://issues.apache.org/jira/browse/FLINK-13588) | StreamTask.handleAsyncException throws away the exception cause |  Major | Runtime / Task | John Lonergan | John Lonergan |
| [FLINK-13711](https://issues.apache.org/jira/browse/FLINK-13711) | Hive array values not properly displayed in SQL CLI |  Major | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-13564](https://issues.apache.org/jira/browse/FLINK-13564) | blink planner should also throw exception if constant with YEAR TO MONTH resolution was used for group windows |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13806](https://issues.apache.org/jira/browse/FLINK-13806) | Metric Fetcher floods the JM log with errors when TM is lost |  Critical | Runtime / Metrics | Stephan Ewen | Chesnay Schepler |
| [FLINK-13761](https://issues.apache.org/jira/browse/FLINK-13761) | \`SplitStream\` should be deprecated because \`SplitJavaStream\` is deprecated |  Major | API / Scala | zhihao zhang | zhihao zhang |
| [FLINK-13825](https://issues.apache.org/jira/browse/FLINK-13825) | The original plugins dir is not restored after e2e test run |  Minor | . | Alex | Alex |
| [FLINK-13831](https://issues.apache.org/jira/browse/FLINK-13831) | Free Slots / All Slots display error |  Critical | Runtime / Web Frontend | Yu Wang | Yu Wang |
| [FLINK-13830](https://issues.apache.org/jira/browse/FLINK-13830) | The Document about Cluster on yarn have some problems |  Major | Documentation | zhangmeng | Zhu Zhu |
| [FLINK-13728](https://issues.apache.org/jira/browse/FLINK-13728) | Fix wrong closing tag order in sidenav |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13823](https://issues.apache.org/jira/browse/FLINK-13823) | Incorrect debug log in CompileUtils |  Minor | Table SQL / Planner | wangsan | wangsan |
| [FLINK-13807](https://issues.apache.org/jira/browse/FLINK-13807) | Flink-avro unit tests fails if the character encoding in the environment is not default to UTF-8 |  Minor | . | Ethan Li | Zili Chen |
| [FLINK-13789](https://issues.apache.org/jira/browse/FLINK-13789) | Transactional Id Generation fails due to user code impacting formatting string |  Major | . | Hao Dang | Hao Dang |
| [FLINK-13875](https://issues.apache.org/jira/browse/FLINK-13875) | Add missing redirects to the flink documentation |  Major | Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-13805](https://issues.apache.org/jira/browse/FLINK-13805) | Bad Error Message when TaskManager is lost |  Blocker | Runtime / Coordination | Stephan Ewen | Till Rohrmann |
| [FLINK-13901](https://issues.apache.org/jira/browse/FLINK-13901) |  Documentation links check errors in release-1.9 |  Major | Documentation | Jark Wu | Jark Wu |
| [FLINK-13769](https://issues.apache.org/jira/browse/FLINK-13769) | BatchFineGrainedRecoveryITCase.testProgram failed on Travis |  Critical | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-13514](https://issues.apache.org/jira/browse/FLINK-13514) | StreamTaskTest.testAsyncCheckpointingConcurrentCloseAfterAcknowledge unstable |  Critical | Runtime / Task, Tests | Chesnay Schepler | Aljoscha Krettek |
| [FLINK-13568](https://issues.apache.org/jira/browse/FLINK-13568) | DDL create table doesn't allow STRING data type |  Critical | Table SQL / API | Xuefu Zhang | Danny Chen |
| [FLINK-12164](https://issues.apache.org/jira/browse/FLINK-12164) | JobMasterTest.testJobFailureWhenTaskExecutorHeartbeatTimeout is unstable |  Critical | Runtime / Coordination | Aljoscha Krettek | Biao Liu |
| [FLINK-13897](https://issues.apache.org/jira/browse/FLINK-13897) | OSS FS NOTICE file is placed in wrong directory |  Blocker | Build System, FileSystems | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13887](https://issues.apache.org/jira/browse/FLINK-13887) | Ensure defaultInputDependencyConstraint to be non-null when setting it in ExecutionConfig |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-13059](https://issues.apache.org/jira/browse/FLINK-13059) | Cassandra Connector leaks Semaphore on Exception; hangs on close |  Major | Connectors / Cassandra | Mads Chr. Olesen | Mads Chr. Olesen |
| [FLINK-13936](https://issues.apache.org/jira/browse/FLINK-13936) | NOTICE-binary is outdated |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13966](https://issues.apache.org/jira/browse/FLINK-13966) | Jar sorting in collect\_license\_files.sh is locale dependent |  Major | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13892](https://issues.apache.org/jira/browse/FLINK-13892) | HistoryServerTest failed on Travis |  Major | Runtime / Coordination, Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12501](https://issues.apache.org/jira/browse/FLINK-12501) | AvroTypeSerializer does not work with types generated by avrohugger |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-14009](https://issues.apache.org/jira/browse/FLINK-14009) | Cron jobs broken due to verifying incorrect NOTICE-binary file |  Blocker | Build System | Till Rohrmann | Till Rohrmann |
| [FLINK-14043](https://issues.apache.org/jira/browse/FLINK-14043) | SavepointMigrationTestBase is super slow |  Major | Runtime / State Backends, Tests | Till Rohrmann | Till Rohrmann |
| [FLINK-13653](https://issues.apache.org/jira/browse/FLINK-13653) | ResultStore should avoid using RowTypeInfo when creating a result |  Major | Table SQL / Client | Rui Li | Rui Li |
| [FLINK-14107](https://issues.apache.org/jira/browse/FLINK-14107) | Kinesis consumer record emitter deadlock under event time alignment |  Major | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-14140](https://issues.apache.org/jira/browse/FLINK-14140) | The Flink Logo Displayed in Flink Python Shell is Broken |  Trivial | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-14150](https://issues.apache.org/jira/browse/FLINK-14150) | Unnecessary \_\_pycache\_\_ directories appears in pyflink.zip |  Trivial | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-14119](https://issues.apache.org/jira/browse/FLINK-14119) | Clean idle state for RetractableTopNFunction |  Major | Table SQL / Planner | Jark Wu | Alec |
| [FLINK-14145](https://issues.apache.org/jira/browse/FLINK-14145) | getLatestCheckpoint(true) returns wrong checkpoint |  Major | Runtime / Checkpointing | Ufuk Celebi | Gyula Fora |
| [FLINK-13746](https://issues.apache.org/jira/browse/FLINK-13746) | Elasticsearch (v2.3.5) sink end-to-end test fails on Travis |  Critical | Connectors / ElasticSearch, Tests | Till Rohrmann | Zijie Lu |
| [FLINK-14076](https://issues.apache.org/jira/browse/FLINK-14076) | 'ClassNotFoundException: KafkaException' on Flink v1.9 w/ checkpointing |  Major | Connectors / Kafka, Runtime / Checkpointing | Jeffrey Martin | Jeffrey Martin |
| [FLINK-14010](https://issues.apache.org/jira/browse/FLINK-14010) | Dispatcher & JobManagers don't give up leadership when AM is shut down |  Critical | Deployment / YARN, Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-14139](https://issues.apache.org/jira/browse/FLINK-14139) | Fix potential memory leak of rest server when using session/standalone cluster |  Major | Runtime / REST | Yingjie Cao | Yingjie Cao |
| [FLINK-13386](https://issues.apache.org/jira/browse/FLINK-13386) | Fix some frictions in the new default Web UI |  Critical | Runtime / Web Frontend | Dawid Wysakowicz | Yadong Xie |
| [FLINK-14049](https://issues.apache.org/jira/browse/FLINK-14049) | Update error message for failed partition updates to include task name |  Critical | Runtime / Coordination | Stephan Ewen | Stephan Ewen |
| [FLINK-14288](https://issues.apache.org/jira/browse/FLINK-14288) | Add Py4j  NOTICE for source release |  Blocker | API / Python | sunjincheng | Dian Fu |
| [FLINK-13654](https://issues.apache.org/jira/browse/FLINK-13654) | Wrong word used in comments in the class \<KeyedStream\> |  Minor | API / DataStream | Eric Lee | Eric Lee |
| [FLINK-13940](https://issues.apache.org/jira/browse/FLINK-13940) | S3RecoverableWriter causes job to get stuck in recovery |  Major | Connectors / FileSystem | Jimmy Weibel Rasmussen | Kostas Kloudas |
| [FLINK-15155](https://issues.apache.org/jira/browse/FLINK-15155) | Join with a LookupableTableSource: the defined order lookup keys are inconsistent |  Major | API / DataStream | Rockey Cui |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-12749](https://issues.apache.org/jira/browse/FLINK-12749) | Getting Started - Docker Playgrounds - Flink Cluster Playground |  Major | Documentation | Konstantin Knauf | Konstantin Knauf |
| [FLINK-13490](https://issues.apache.org/jira/browse/FLINK-13490) | Fix if one column value is null when reading JDBC, the following values are all null |  Critical | Connectors / JDBC | Caizhi Weng | Caizhi Weng |
| [FLINK-13706](https://issues.apache.org/jira/browse/FLINK-13706) | add documentation of how to use Hive functions in Flink |  Major | Connectors / Hive, Documentation | Bowen Li | Bowen Li |
| [FLINK-13354](https://issues.apache.org/jira/browse/FLINK-13354) | Add documentation for how to use blink planner |  Critical | Documentation, Table SQL / Planner | Jark Wu | godfrey he |
| [FLINK-13105](https://issues.apache.org/jira/browse/FLINK-13105) | Add documentation for blink planner's built-in functions |  Critical | Documentation, Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-13359](https://issues.apache.org/jira/browse/FLINK-13359) | Add documentation for DDL introduction |  Critical | Documentation, Table SQL / API | Jark Wu | Danny Chen |
| [FLINK-13362](https://issues.apache.org/jira/browse/FLINK-13362) | Add documentation for Kafka & ES & FileSystem DDL |  Major | Documentation | Jark Wu | Danny Chen |
| [FLINK-13355](https://issues.apache.org/jira/browse/FLINK-13355) | Add documentation for Temporal Table Join in blink planner |  Critical | Documentation, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13356](https://issues.apache.org/jira/browse/FLINK-13356) | Add documentation for TopN and Deduplication in blink planner |  Critical | Documentation, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13363](https://issues.apache.org/jira/browse/FLINK-13363) | Add documentation for streaming aggregate performance tunning. |  Major | Documentation, Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-13941](https://issues.apache.org/jira/browse/FLINK-13941) | Prevent data-loss by not cleaning up small part files from S3. |  Blocker | Connectors / FileSystem | Kostas Kloudas | Kostas Kloudas |
| [FLINK-13942](https://issues.apache.org/jira/browse/FLINK-13942) | Add Overview page for Getting Started section |  Major | Documentation | Fabian Hueske | Fabian Hueske |
| [FLINK-13449](https://issues.apache.org/jira/browse/FLINK-13449) | Add ARM architecture to MemoryArchitecture |  Major | . | Stephan Ewen | wangxiyuan |
| [FLINK-13277](https://issues.apache.org/jira/browse/FLINK-13277) | add documentation of Hive source/sink |  Critical | Connectors / Hive, Documentation | Bowen Li | Rui Li |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13430](https://issues.apache.org/jira/browse/FLINK-13430) | Configure sending travis build notifications to builds@flink.apache.org |  Major | Build System | Jark Wu | Jark Wu |
| [FLINK-13937](https://issues.apache.org/jira/browse/FLINK-13937) | Fix wrong hive dependency version in documentation |  Major | Documentation | Jeff Yang | Jeff Yang |


