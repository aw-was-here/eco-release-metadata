
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

## Release 1.11.2 - 2020-09-15



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18619](https://issues.apache.org/jira/browse/FLINK-18619) | Update training to use WatermarkStrategy |  Major | Documentation / Training | Seth Wiesman | Seth Wiesman |
| [FLINK-17285](https://issues.apache.org/jira/browse/FLINK-17285) | Translate "Python Table API" page into Chinese |  Major | API / Python, chinese-translation | Zixuan Rao | Zixuan Rao |
| [FLINK-18618](https://issues.apache.org/jira/browse/FLINK-18618) | Docker e2e tests are failing on CI |  Major | Build System / Azure Pipelines | Chesnay Schepler | Dawid Wysakowicz |
| [FLINK-18635](https://issues.apache.org/jira/browse/FLINK-18635) | Typo in 'concepts/timely stream processing' part of the website |  Trivial | Documentation | shizk233 | shizk233 |
| [FLINK-18644](https://issues.apache.org/jira/browse/FLINK-18644) | Remove obsolete doc for hive connector |  Minor | Connectors / Hive, Documentation | Rui Li | Rui Li |
| [FLINK-18730](https://issues.apache.org/jira/browse/FLINK-18730) | Remove Beta tag from SQL Client docs |  Major | Documentation, Table SQL / Client | Jark Wu | Jark Wu |
| [FLINK-18772](https://issues.apache.org/jira/browse/FLINK-18772) | Hide submit job web ui elements when running in per-job/application mode |  Minor | Runtime / Web Frontend | Till Rohrmann | Till Rohrmann |
| [FLINK-16619](https://issues.apache.org/jira/browse/FLINK-16619) | Misleading SlotManagerImpl logging for slot reports of unknown task manager |  Major | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-18793](https://issues.apache.org/jira/browse/FLINK-18793) | Fix Typo for api.common.eventtime.WatermarkStrategy Description |  Trivial | Documentation | Chris Lan |  |
| [FLINK-18816](https://issues.apache.org/jira/browse/FLINK-18816) | Correct API usage in Pyflink Dependency Management page |  Major | API / Python, Documentation | sunjincheng | Zhenhua Yang |
| [FLINK-18831](https://issues.apache.org/jira/browse/FLINK-18831) | Improve the Python documentation about the operations in Table |  Major | API / Python, Documentation | Dian Fu | Dian Fu |
| [FLINK-18839](https://issues.apache.org/jira/browse/FLINK-18839) | Add documentation about how to use catalog in Python Table API |  Major | API / Python, Documentation | Dian Fu | Dian Fu |
| [FLINK-17503](https://issues.apache.org/jira/browse/FLINK-17503) | Make memory configuration logging more user-friendly |  Major | Runtime / Coordination | Till Rohrmann | Matthias |
| [FLINK-18847](https://issues.apache.org/jira/browse/FLINK-18847) | Add documentation about data types in Python Table API |  Major | API / Python, Documentation | Dian Fu | Dian Fu |
| [FLINK-18849](https://issues.apache.org/jira/browse/FLINK-18849) | Improve the code tabs of the Flink documents |  Minor | Documentation | Wei Zhong | Wei Zhong |
| [FLINK-18643](https://issues.apache.org/jira/browse/FLINK-18643) | Migrate Jenkins jobs to ci-builds.apache.org |  Major | Release System | Chesnay Schepler | Robert Metzger |
| [FLINK-18797](https://issues.apache.org/jira/browse/FLINK-18797) | docs and examples use deprecated forms of keyBy |  Major | Documentation, Examples | David Anderson | wulei0302 |
| [FLINK-19055](https://issues.apache.org/jira/browse/FLINK-19055) | MemoryManagerSharedResourcesTest contains three tests running extraordinary long |  Major | Runtime / Task | Matthias | Andrey Zagrebin |
| [FLINK-19105](https://issues.apache.org/jira/browse/FLINK-19105) | Table API Sample Code Error |  Major | Documentation | weizheng | zhouyongjin |
| [FLINK-18598](https://issues.apache.org/jira/browse/FLINK-18598) | Add instructions for asynchronous execute in PyFlink doc |  Major | API / Python, Documentation | Huang Xingbo | Shuiqiang Chen |
| [FLINK-18881](https://issues.apache.org/jira/browse/FLINK-18881) | Modify the Access Broken Link |  Major | Documentation | weizheng |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16827](https://issues.apache.org/jira/browse/FLINK-16827) | StreamExecTemporalSort should require a distribution trait in StreamExecTemporalSortRule |  Major | Table SQL / Planner, Table SQL / Runtime | wuchangjun | Benchao Li |
| [FLINK-18608](https://issues.apache.org/jira/browse/FLINK-18608) | CustomizedConvertRule#convertCast drops nullability |  Blocker | Table SQL / Planner | Flavio Pompermaier | Dawid Wysakowicz |
| [FLINK-18588](https://issues.apache.org/jira/browse/FLINK-18588) | hive ddl create table should support 'if not exists' |  Major | Table SQL / Planner | wangtong | wangtong |
| [FLINK-18639](https://issues.apache.org/jira/browse/FLINK-18639) | Error messages from BashJavaUtils are eaten |  Major | Deployment / Scripts | Xintong Song | Xintong Song |
| [FLINK-18612](https://issues.apache.org/jira/browse/FLINK-18612) | WordCount example failure when setting relative output path |  Critical | fs | Zhijiang | Yun Gao |
| [FLINK-18600](https://issues.apache.org/jira/browse/FLINK-18600) | Kerberized YARN per-job on Docker test failed to download JDK 8u251 |  Blocker | Deployment / YARN, Tests | Dian Fu | Dawid Wysakowicz |
| [FLINK-18468](https://issues.apache.org/jira/browse/FLINK-18468) | TaskExecutorITCase.testJobReExecutionAfterTaskExecutorTermination fails with DuplicateJobSubmissionException |  Critical | Runtime / Coordination, Tests | Robert Metzger | Till Rohrmann |
| [FLINK-18650](https://issues.apache.org/jira/browse/FLINK-18650) | The description of dispatcher in Flink Architecture document is not accurate |  Minor | Documentation | Peng | Peng |
| [FLINK-18665](https://issues.apache.org/jira/browse/FLINK-18665) | Filesystem connector should use TableSchema exclude computed columns |  Critical | Connectors / FileSystem, Table SQL / Ecosystem | Jark Wu | Leonard Xu |
| [FLINK-18672](https://issues.apache.org/jira/browse/FLINK-18672) | Fix Scala code examples for UDF type inference annotations |  Major | Documentation, Table SQL / API | Fabian Hueske | Timo Walther |
| [FLINK-18421](https://issues.apache.org/jira/browse/FLINK-18421) | Elasticsearch (v6.3.1) sink end-to-end test instable |  Major | Connectors / ElasticSearch, Tests | Dian Fu | Roman Khachatryan |
| [FLINK-18632](https://issues.apache.org/jira/browse/FLINK-18632) | RowData's row kind do not assigned from input row data when sink code generate and physical type info is pojo type |  Major | Table SQL / Planner | luoziyu | luoziyu |
| [FLINK-18697](https://issues.apache.org/jira/browse/FLINK-18697) | Adding flink-table-api-java-bridge\_2.11 to a Flink job kills the IDE logging |  Major | Table SQL / API | Robert Metzger | Jark Wu |
| [FLINK-18552](https://issues.apache.org/jira/browse/FLINK-18552) | Update migration tests in master to cover migration from release-1.11 |  Major | Tests | Zhijiang | Yun Gao |
| [FLINK-18708](https://issues.apache.org/jira/browse/FLINK-18708) | The links of the connector sql jar of Kafka 0.10 and 0.11 are extinct |  Major | Connectors / Kafka, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-18655](https://issues.apache.org/jira/browse/FLINK-18655) | Set failOnUnableToExtractRepoInfo to false for git-commit-id-plugin in module flink-runtime |  Major | Build System | Hequn Cheng | Hequn Cheng |
| [FLINK-18341](https://issues.apache.org/jira/browse/FLINK-18341) | Building Flink Walkthrough Table Java 0.1 COMPILATION ERROR |  Critical | Table SQL / API, Tests | Piotr Nowojski | Seth Wiesman |
| [FLINK-18710](https://issues.apache.org/jira/browse/FLINK-18710) | ResourceProfileInfo is not serializable |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-18581](https://issues.apache.org/jira/browse/FLINK-18581) | Cannot find GC cleaner with java version previous jdk8u72(-b01) |  Critical | Runtime / Coordination | Xintong Song | Andrey Zagrebin |
| [FLINK-18656](https://issues.apache.org/jira/browse/FLINK-18656) | Start Delay metric is always zero for unaligned checkpoints |  Critical | Runtime / Metrics, Runtime / Network | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18595](https://issues.apache.org/jira/browse/FLINK-18595) | Deadlock during job shutdown |  Critical | Runtime / Network | Dian Fu | Zhijiang |
| [FLINK-18700](https://issues.apache.org/jira/browse/FLINK-18700) | Debezium-json format throws Exception when PG table's IDENTITY config is not FULL |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Leonard Xu | Jark Wu |
| [FLINK-18705](https://issues.apache.org/jira/browse/FLINK-18705) | Debezium-JSON throws NPE when tombstone message is received |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | Jark Wu |
| [FLINK-18663](https://issues.apache.org/jira/browse/FLINK-18663) | RestServerEndpoint may prevent server shutdown |  Critical | Runtime / REST | tartarus | tartarus |
| [FLINK-18748](https://issues.apache.org/jira/browse/FLINK-18748) | Savepoint would be queued unexpected if pendingCheckpoints less than maxConcurrentCheckpoints |  Major | Runtime / Checkpointing | Congxian Qiu | tao wang |
| [FLINK-18769](https://issues.apache.org/jira/browse/FLINK-18769) | MiniBatch doesn't work with FLIP-95 source |  Blocker | Table SQL / Runtime | Nico Kruber | Jark Wu |
| [FLINK-18749](https://issues.apache.org/jira/browse/FLINK-18749) | Correct dependencies in Kubernetes pom |  Major | Deployment / Kubernetes | Yang Wang | Yang Wang |
| [FLINK-18677](https://issues.apache.org/jira/browse/FLINK-18677) | ZooKeeperLeaderRetrievalService does not invalidate leader in case of SUSPENDED connection |  Major | Runtime / Coordination | Till Rohrmann | Matthias |
| [FLINK-16510](https://issues.apache.org/jira/browse/FLINK-16510) | Task manager safeguard shutdown may not be reliable |  Major | Runtime / Task | Maximilian Michels | Maximilian Michels |
| [FLINK-18859](https://issues.apache.org/jira/browse/FLINK-18859) | ExecutionGraphNotEnoughResourceTest.testRestartWithSlotSharingAndNotEnoughResources failed with "Condition was not met in given timeout." |  Critical | Runtime / Coordination, Tests | Dian Fu | Zhu Zhu |
| [FLINK-18862](https://issues.apache.org/jira/browse/FLINK-18862) | Fix LISTAGG throws BinaryRawValueData cannot be cast to StringData exception in runtime |  Major | Table SQL / Runtime | YUJIANBO | Jark Wu |
| [FLINK-18682](https://issues.apache.org/jira/browse/FLINK-18682) | Vector orc reader cannot read Hive 2.0.0 table |  Blocker | Connectors / Hive, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Rui Li | Rui Li |
| [FLINK-18821](https://issues.apache.org/jira/browse/FLINK-18821) | Netty client retry mechanism may cause PartitionRequestClientFactory#createPartitionRequestClient to wait infinitely |  Major | Runtime / Network | Caizhi Weng | Roman Khachatryan |
| [FLINK-18867](https://issues.apache.org/jira/browse/FLINK-18867) | Generic table stored in Hive catalog is incompatible between 1.10 and 1.11 |  Critical | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-18902](https://issues.apache.org/jira/browse/FLINK-18902) | Cannot serve results of asynchronous REST operations in per-job mode |  Blocker | Runtime / REST | Till Rohrmann | Till Rohrmann |
| [FLINK-18646](https://issues.apache.org/jira/browse/FLINK-18646) | Managed memory released check can block RPC thread |  Critical | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-18856](https://issues.apache.org/jira/browse/FLINK-18856) | CheckpointCoordinator ignores checkpointing.min-pause |  Major | Runtime / Checkpointing | Roman Khachatryan | Roman Khachatryan |
| [FLINK-18659](https://issues.apache.org/jira/browse/FLINK-18659) | FileNotFoundException when writing Hive orc tables |  Critical | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Rui Li |
| [FLINK-18956](https://issues.apache.org/jira/browse/FLINK-18956) | StreamTask.invoke should catch Throwable instead of Exception |  Major | Runtime / Task | Dian Fu | Dian Fu |
| [FLINK-18081](https://issues.apache.org/jira/browse/FLINK-18081) | Fix broken links in "Kerberos Authentication Setup and Configuration" doc |  Major | Documentation, Runtime / Configuration | Yangze Guo | Yangze Guo |
| [FLINK-18942](https://issues.apache.org/jira/browse/FLINK-18942) | HiveTableSink shouldn't try to create BulkWriter factory when using MR writer |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-18212](https://issues.apache.org/jira/browse/FLINK-18212) | Init lookup join failed when use udf on lookup table |  Major | Table SQL / Planner | YufeiLiu | Jark Wu |
| [FLINK-18994](https://issues.apache.org/jira/browse/FLINK-18994) | There is one typo in "Set up TaskManager Memory" |  Minor | chinese-translation | Peng | Xintong Song |
| [FLINK-18941](https://issues.apache.org/jira/browse/FLINK-18941) | There are some typos in "Set up JobManager Memory" |  Minor | chinese-translation | Peng | Kecheng Xiao |
| [FLINK-18993](https://issues.apache.org/jira/browse/FLINK-18993) | Invoke sanityCheckTotalFlinkMemory method incorrectly in JobManagerFlinkMemoryUtils.java |  Critical | Runtime / Configuration | Peng | Peng |
| [FLINK-19040](https://issues.apache.org/jira/browse/FLINK-19040) | SourceOperator is not closing SourceReader |  Critical | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-18750](https://issues.apache.org/jira/browse/FLINK-18750) | SqlValidatorException thrown when select from a view which contains a UDTF call |  Major | Table SQL / API | Wei Zhong | Danny Chen |
| [FLINK-18900](https://issues.apache.org/jira/browse/FLINK-18900) | HiveCatalog should error out when listing partitions with an invalid spec |  Major | Connectors / Hive | Rui Li | Nicholas Jiang |
| [FLINK-18992](https://issues.apache.org/jira/browse/FLINK-18992) | Table API renameColumns method annotation error |  Major | Table SQL / API | tzxxh | Fin-chan |
| [FLINK-14087](https://issues.apache.org/jira/browse/FLINK-14087) | throws java.lang.ArrayIndexOutOfBoundsException  when emiting the data using RebalancePartitioner. |  Major | API / DataStream, Runtime / Network | luojiangyu | Yun Gao |
| [FLINK-19108](https://issues.apache.org/jira/browse/FLINK-19108) | Stop expanding the identifiers with scope aliased by the system with 'EXPR$' prefix |  Major | Table SQL / API | Danny Chen | Danny Chen |
| [FLINK-18959](https://issues.apache.org/jira/browse/FLINK-18959) | Fail to archiveExecutionGraph because job is not finished when dispatcher close |  Critical | Runtime / Coordination | Liu | Liu |
| [FLINK-19133](https://issues.apache.org/jira/browse/FLINK-19133) | User provided kafka partitioners are not initialized correctly |  Blocker | Connectors / Kafka | Dawid Wysakowicz | Dawid Wysakowicz |
| [FLINK-19061](https://issues.apache.org/jira/browse/FLINK-19061) | HiveCatalog fails to get partition column stats if partition value contains special characters |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-19148](https://issues.apache.org/jira/browse/FLINK-19148) | Table crashed in Flink Table API & SQL  Docs |  Major | Documentation | Leonard Xu | Xiao Huang |
| [FLINK-18832](https://issues.apache.org/jira/browse/FLINK-18832) | BoundedBlockingSubpartition does not work with StreamTask |  Major | Runtime / Network, Runtime / Task | Till Rohrmann | Zhijiang |
| [FLINK-18641](https://issues.apache.org/jira/browse/FLINK-18641) | "Failure to finalize checkpoint" error in MasterTriggerRestoreHook |  Blocker | Runtime / Checkpointing | Brian Zhou | Jiangjie Qin |
| [FLINK-19094](https://issues.apache.org/jira/browse/FLINK-19094) | Revise the description of watermark strategy in Flink Table document |  Major | Documentation | Leonard Xu | Leonard Xu |
| [FLINK-19166](https://issues.apache.org/jira/browse/FLINK-19166) | StreamingFileWriter should register Listener before the initialization of buckets |  Blocker | Table SQL / Runtime | Jingsong Lee | Jingsong Lee |
| [FLINK-19109](https://issues.apache.org/jira/browse/FLINK-19109) | Split Reader eats chained periodic watermarks |  Blocker | Runtime / Task | David Anderson | Roman Khachatryan |
| [FLINK-15467](https://issues.apache.org/jira/browse/FLINK-15467) | Should wait for the end of the source thread during the Task cancellation |  Major | Runtime / Task | ming li | Roman Khachatryan |
| [FLINK-19194](https://issues.apache.org/jira/browse/FLINK-19194) | The UDF split and split\_index get wrong result |  Major | Table SQL / Runtime | fa zheng |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16087](https://issues.apache.org/jira/browse/FLINK-16087) | Translate "Detecting Patterns" page of "Streaming Concepts" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Roc Marshal |
| [FLINK-18264](https://issues.apache.org/jira/browse/FLINK-18264) | Translate the "External Resource Framework" page into Chinese |  Major | chinese-translation, Documentation | Yangze Guo | Yangze Guo |
| [FLINK-18628](https://issues.apache.org/jira/browse/FLINK-18628) | Invalid error message for overloaded methods with same parameter name |  Major | Table SQL / API | Timo Walther | Timo Walther |
| [FLINK-18910](https://issues.apache.org/jira/browse/FLINK-18910) | Create the new document structure for Python documentation according to FLIP-133 |  Major | Documentation | Wei Zhong | Wei Zhong |
| [FLINK-18912](https://issues.apache.org/jira/browse/FLINK-18912) | Add a Table API tutorial link(linked to try-flink/python\_table\_api.md) under  the "Python API" -\> "GettingStart" -\> "Tutorial" section |  Major | Documentation | Wei Zhong | Hequn Cheng |
| [FLINK-18917](https://issues.apache.org/jira/browse/FLINK-18917) | Add a "Built-in Functions" link (linked to dev/table/functions/systemFunctions.md) under the "Python API" -\> "User Guide" -\> "Table API" section |  Major | Documentation | Wei Zhong | Wei Zhong |
| [FLINK-18801](https://issues.apache.org/jira/browse/FLINK-18801) | Add a "10 minutes to Table API" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |
| [FLINK-19110](https://issues.apache.org/jira/browse/FLINK-19110) | Flatten current PyFlink documentation structure |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |
| [FLINK-18913](https://issues.apache.org/jira/browse/FLINK-18913) | Add a "TableEnvironment" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18666](https://issues.apache.org/jira/browse/FLINK-18666) | Update japicmp configuration for 1.11.1 |  Major | Build System | Dian Fu | Dian Fu |
| [FLINK-18667](https://issues.apache.org/jira/browse/FLINK-18667) | Data Types documentation misunderstand users |  Major | Documentation | Jingsong Lee | Shengkai Fang |
| [FLINK-18678](https://issues.apache.org/jira/browse/FLINK-18678) | Hive connector fails to create vector orc reader if user specifies incorrect hive version |  Major | Connectors / Hive, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Rui Li | Rui Li |


