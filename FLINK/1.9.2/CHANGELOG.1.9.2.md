
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

## Release 1.9.2 - 2020-01-30



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-14066](https://issues.apache.org/jira/browse/FLINK-14066) | Pyflink building failure in master and 1.9.0 version |  Blocker | API / Python, Build System | Xu Yang | Dian Fu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-14335](https://issues.apache.org/jira/browse/FLINK-14335) | ExampleIntegrationTest in testing docs is incorrect |  Major | Documentation, Tests | Chesnay Schepler | Yangze Guo |
| [FLINK-14334](https://issues.apache.org/jira/browse/FLINK-14334) | ElasticSearch docs refer to non-existent ExceptionUtils.containsThrowable |  Major | Connectors / ElasticSearch, Documentation | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14008](https://issues.apache.org/jira/browse/FLINK-14008) | Auto-generate binary licensing |  Blocker | Build System | Till Rohrmann | Chesnay Schepler |
| [FLINK-12848](https://issues.apache.org/jira/browse/FLINK-12848) | Method equals() in RowTypeInfo should consider fieldsNames |  Major | Table SQL / Planner | Aloys Zhang | Aloys Zhang |
| [FLINK-14123](https://issues.apache.org/jira/browse/FLINK-14123) | Lower the default value of taskmanager.memory.fraction |  Major | Runtime / Configuration | liupengcheng | liupengcheng |
| [FLINK-14206](https://issues.apache.org/jira/browse/FLINK-14206) | Let fullRestart metric count fine grained restarts as well |  Major | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14408](https://issues.apache.org/jira/browse/FLINK-14408) | In OldPlanner, UDF open method can not be invoke when SQL is optimized |  Major | Table SQL / Legacy Planner | hailong wang | hailong wang |
| [FLINK-14639](https://issues.apache.org/jira/browse/FLINK-14639) | Metrics User Scope docs refer to wrong class |  Minor | Documentation, Runtime / Metrics | hehuiyuan | Chesnay Schepler |
| [FLINK-14646](https://issues.apache.org/jira/browse/FLINK-14646) | Check non-null for key in KeyGroupStreamPartitioner |  Minor | Runtime / State Backends | Jiayi Liao | Jiayi Liao |
| [FLINK-13729](https://issues.apache.org/jira/browse/FLINK-13729) | Update website generation dependencies |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-14104](https://issues.apache.org/jira/browse/FLINK-14104) | Bump Jackson to 2.10.1 |  Major | BuildSystem / Shaded | Nico Kruber | Nico Kruber |
| [FLINK-14995](https://issues.apache.org/jira/browse/FLINK-14995) | Kinesis NOTICE is incorrect |  Blocker | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15113](https://issues.apache.org/jira/browse/FLINK-15113) | fs.azure.account.key not hidden from global configuration |  Major | Runtime / Web Frontend | Nico Kruber | Nico Kruber |
| [FLINK-11135](https://issues.apache.org/jira/browse/FLINK-11135) | Reorder Hadoop config loading in HadoopUtils |  Minor | Deployment / YARN, Runtime / Configuration | Paul Lin | Paul Lin |
| [FLINK-14825](https://issues.apache.org/jira/browse/FLINK-14825) | Rework state processor api documentation |  Major | API / State Processor, Documentation | Seth Wiesman | Seth Wiesman |
| [FLINK-15554](https://issues.apache.org/jira/browse/FLINK-15554) | Bump jetty-util-ajax to 9.3.24 |  Major | Build System, Connectors / FileSystem | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15657](https://issues.apache.org/jira/browse/FLINK-15657) | Fix the python table api doc link in Python API tutorial |  Major | API / Python, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-15726](https://issues.apache.org/jira/browse/FLINK-15726) | Fixing error message in StreamExecTableSourceScan |  Major | Table SQL / Planner | Benoît Paris | Benoît Paris |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13827](https://issues.apache.org/jira/browse/FLINK-13827) | Shell variable should be escaped in start-scala-shell.sh |  Major | Scala Shell | Zili Chen | Zili Chen |
| [FLINK-14315](https://issues.apache.org/jira/browse/FLINK-14315) | NPE with JobMaster.disconnectTaskManager |  Critical | Runtime / Task | Steven Zhen Wu | Till Rohrmann |
| [FLINK-14347](https://issues.apache.org/jira/browse/FLINK-14347) | YARNSessionFIFOITCase.checkForProhibitedLogContents found a log with prohibited string |  Critical | Deployment / YARN, Tests | Caizhi Weng | Zili Chen |
| [FLINK-13999](https://issues.apache.org/jira/browse/FLINK-13999) | Correct the documentation of MATCH\_RECOGNIZE |  Major | Documentation | Dian Fu | Dian Fu |
| [FLINK-14355](https://issues.apache.org/jira/browse/FLINK-14355) | Example code in state processor API docs doesn't compile |  Major | API / State Processor | Mitch Wasson | Jiayi Liao |
| [FLINK-14337](https://issues.apache.org/jira/browse/FLINK-14337) | HistoryServer does not handle NPE on corruped archives properly |  Critical | Runtime / Coordination | Till Rohrmann | Chesnay Schepler |
| [FLINK-14413](https://issues.apache.org/jira/browse/FLINK-14413) | Shade-plugin ApacheNoticeResourceTransformer uses platform-dependent encoding |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-12399](https://issues.apache.org/jira/browse/FLINK-12399) | FilterableTableSource does not use filters on job run |  Major | Table SQL / API | Josh Bradt | Rong Rong |
| [FLINK-13799](https://issues.apache.org/jira/browse/FLINK-13799) | Web Job Submit Page displays stream of error message when web submit is disables in the config |  Critical | Runtime / Web Frontend | Stephan Ewen | Chesnay Schepler |
| [FLINK-14445](https://issues.apache.org/jira/browse/FLINK-14445) | Python module build failed when making sdist |  Major | . | Yun Tang | Wei Zhong |
| [FLINK-14459](https://issues.apache.org/jira/browse/FLINK-14459) | Python module build hangs |  Major | API / Python | Hequn Cheng | Hequn Cheng |
| [FLINK-14434](https://issues.apache.org/jira/browse/FLINK-14434) | Dispatcher#createJobManagerRunner should not start JobManagerRunner |  Major | Runtime / Coordination | Zili Chen | Zili Chen |
| [FLINK-14447](https://issues.apache.org/jira/browse/FLINK-14447) | Network metrics doc table render confusion |  Major | Documentation, Runtime / Metrics | vinoyang | vinoyang |
| [FLINK-14235](https://issues.apache.org/jira/browse/FLINK-14235) | Kafka010ProducerITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceCustomOperator fails on travis |  Blocker | Connectors / Kafka | Piotr Nowojski | Piotr Nowojski |
| [FLINK-14175](https://issues.apache.org/jira/browse/FLINK-14175) | Upgrade KPL version in flink-connector-kinesis to fix application OOM |  Major | Connectors / Kinesis | Abhilasha Seth | Abhilasha Seth |
| [FLINK-14524](https://issues.apache.org/jira/browse/FLINK-14524) | PostgreSQL JDBC sink generates invalid SQL in upsert mode |  Major | Connectors / JDBC | Fawad Halim | Fawad Halim |
| [FLINK-14370](https://issues.apache.org/jira/browse/FLINK-14370) | KafkaProducerAtLeastOnceITCase\>KafkaProducerTestBase.testOneToOneAtLeastOnceRegularSink fails on Travis |  Critical | Connectors / Kafka | Till Rohrmann | Jiangjie Qin |
| [FLINK-10435](https://issues.apache.org/jira/browse/FLINK-10435) | Client sporadically hangs after Ctrl + C |  Major | Command Line Client, Deployment / YARN | Gary Yao | Yang Wang |
| [FLINK-14398](https://issues.apache.org/jira/browse/FLINK-14398) | Further split input unboxing code into separate methods |  Major | Table SQL / Legacy Planner, Table SQL / Planner | Hao Dang | Hao Dang |
| [FLINK-14547](https://issues.apache.org/jira/browse/FLINK-14547) | UDF cannot be in the join condition in blink planner |  Major | Table SQL / Planner | Huang Xingbo | Huang Xingbo |
| [FLINK-14074](https://issues.apache.org/jira/browse/FLINK-14074) | MesosResourceManager can't create new taskmanagers in Session Cluster Mode. |  Blocker | Deployment / Mesos | Alexander Kasyanenko | Till Rohrmann |
| [FLINK-14561](https://issues.apache.org/jira/browse/FLINK-14561) | Don't write FLINK\_PLUGINS\_DIR ENV variable to Flink configuration |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-14562](https://issues.apache.org/jira/browse/FLINK-14562) | RMQSource leaves idle consumer after closing |  Major | Connectors/ RabbitMQ | Nicolas Deslandes | Nicolas Deslandes |
| [FLINK-12342](https://issues.apache.org/jira/browse/FLINK-12342) | Yarn Resource Manager Acquires Too Many Containers |  Major | Deployment / YARN | Zhenqiu Huang | Till Rohrmann |
| [FLINK-14589](https://issues.apache.org/jira/browse/FLINK-14589) | Redundant slot requests with the same AllocationID leads to inconsistent slot table |  Major | Runtime / Coordination | Hwanju Kim | Hwanju Kim |
| [FLINK-13702](https://issues.apache.org/jira/browse/FLINK-13702) | BaseMapSerializerTest.testDuplicate fails on Travis |  Critical | Table SQL / Planner | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-13740](https://issues.apache.org/jira/browse/FLINK-13740) | TableAggregateITCase.testNonkeyedFlatAggregate failed on Travis |  Critical | Table SQL / Planner | Till Rohrmann | Dawid Wysakowicz |
| [FLINK-13969](https://issues.apache.org/jira/browse/FLINK-13969) | Resuming Externalized Checkpoint (rocks, incremental, scale down) end-to-end test fails on Travis |  Critical | Runtime / Checkpointing | Till Rohrmann | Congxian Qiu |
| [FLINK-14673](https://issues.apache.org/jira/browse/FLINK-14673) | Shouldn't expect HMS client to throw NoSuchObjectException for non-existing function |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-14784](https://issues.apache.org/jira/browse/FLINK-14784) | CsvTableSink miss delimiter when row start with null member |  Major | Table SQL / API | Leonard Xu | Leonard Xu |
| [FLINK-13184](https://issues.apache.org/jira/browse/FLINK-13184) | Starting a TaskExecutor blocks the YarnResourceManager's main thread |  Critical | Deployment / YARN | Xintong Song | Yang Wang |
| [FLINK-14382](https://issues.apache.org/jira/browse/FLINK-14382) | Incorrect handling of FLINK\_PLUGINS\_DIR on Yarn |  Blocker | Deployment / YARN | Yang Wang | Yang Wang |
| [FLINK-14641](https://issues.apache.org/jira/browse/FLINK-14641) | Fix description of metric \`fullRestarts\` |  Critical | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-13708](https://issues.apache.org/jira/browse/FLINK-13708) | Transformations should be cleared because a table environment could execute multiple job |  Critical | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-13749](https://issues.apache.org/jira/browse/FLINK-13749) | Make Flink client respect classloading policy |  Minor | Command Line Client, Runtime / REST | Paul Lin | Paul Lin |
| [FLINK-14846](https://issues.apache.org/jira/browse/FLINK-14846) | Correct the default writerbuffer size documentation of RocksDB |  Major | Documentation, Runtime / State Backends | Yun Tang | Yun Tang |
| [FLINK-13995](https://issues.apache.org/jira/browse/FLINK-13995) | Fix shading of the licence information of netty |  Major | BuildSystem / Shaded | Arvid Heise | Chesnay Schepler |
| [FLINK-14817](https://issues.apache.org/jira/browse/FLINK-14817) | "Streaming Aggregation" document contains misleading code examples |  Major | Documentation | Victor Wong | Victor Wong |
| [FLINK-14930](https://issues.apache.org/jira/browse/FLINK-14930) | OSS Filesystem Uses Wrong Shading Prefix |  Major | FileSystems | Konstantin Knauf | Konstantin Knauf |
| [FLINK-11835](https://issues.apache.org/jira/browse/FLINK-11835) | ZooKeeperLeaderElectionITCase.testJobExecutionOnClusterWithLeaderChange failed |  Critical | Runtime / Coordination | Gary Yao | chunpinghe |
| [FLINK-10377](https://issues.apache.org/jira/browse/FLINK-10377) | Remove precondition in TwoPhaseCommitSinkFunction.notifyCheckpointComplete |  Major | Connectors / Common | Stefan Richter | Stefan Richter |
| [FLINK-14976](https://issues.apache.org/jira/browse/FLINK-14976) | Cassandra Connector leaks Semaphore on Throwable; hangs on close |  Major | Connectors / Cassandra | Mads Chr. Olesen | Mads Chr. Olesen |
| [FLINK-14910](https://issues.apache.org/jira/browse/FLINK-14910) | DisableAutoGeneratedUIDs fails on keyBy |  Major | API / DataStream | William Cheng | Dawid Wysakowicz |
| [FLINK-14960](https://issues.apache.org/jira/browse/FLINK-14960) | Dependency shading of table modules test fails on Travis |  Blocker | Table SQL / Planner, Tests | Caizhi Weng | Jark Wu |
| [FLINK-15036](https://issues.apache.org/jira/browse/FLINK-15036) | Container startup error will be handled out side of the YarnResourceManager's main thread |  Blocker | Deployment / YARN | Till Rohrmann | Yang Wang |
| [FLINK-15063](https://issues.apache.org/jira/browse/FLINK-15063) | Input group and output group of the task metric are reversed |  Major | Runtime / Metrics, Runtime / Network | lining | lining |
| [FLINK-14949](https://issues.apache.org/jira/browse/FLINK-14949) | Task cancellation can be stuck against out-of-thread error |  Major | Runtime / Task | Hwanju Kim | Hwanju Kim |
| [FLINK-13945](https://issues.apache.org/jira/browse/FLINK-13945) | Instructions for building flink-shaded against vendor repository don't work |  Major | BuildSystem / Shaded | Elise Ramé | Chesnay Schepler |
| [FLINK-13862](https://issues.apache.org/jira/browse/FLINK-13862) | Update Execution Plan docs |  Minor | Documentation | Stephan Ewen | Chesnay Schepler |
| [FLINK-11120](https://issues.apache.org/jira/browse/FLINK-11120) | TIMESTAMPADD function handles TIME incorrectly |  Major | Table SQL / Planner | Forward Xu | Forward Xu |
| [FLINK-14953](https://issues.apache.org/jira/browse/FLINK-14953) | Parquet table source should use schema type to build FilterPredicate |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Zhenqiu Huang | Zhenqiu Huang |
| [FLINK-15076](https://issues.apache.org/jira/browse/FLINK-15076) | Source thread should be interrupted during the Task cancellation |  Blocker | Runtime / Task | Piotr Nowojski | Piotr Nowojski |
| [FLINK-14951](https://issues.apache.org/jira/browse/FLINK-14951) | State TTL backend end-to-end test fail when taskManager has multiple slot |  Major | Runtime / State Backends, Tests | Yangze Guo | Yangze Guo |
| [FLINK-14574](https://issues.apache.org/jira/browse/FLINK-14574) |  flink-s3-fs-hadoop doesn't work with plugins mechanism |  Blocker | FileSystems | Piotr Nowojski | Arvid Heise |
| [FLINK-15013](https://issues.apache.org/jira/browse/FLINK-15013) | Flink (on YARN) sometimes needs too many slots |  Blocker | Runtime / Coordination | Aljoscha Krettek | Till Rohrmann |
| [FLINK-15001](https://issues.apache.org/jira/browse/FLINK-15001) | The digest of sub-plan reuse should contain retraction traits for stream physical nodes |  Major | Table SQL / Planner | godfrey he | godfrey he |
| [FLINK-15234](https://issues.apache.org/jira/browse/FLINK-15234) | Hive table created from flink catalog table shouldn't have null properties in parameters |  Blocker | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-15240](https://issues.apache.org/jira/browse/FLINK-15240) | is\_generic key is missing for Flink table stored in HiveCatalog |  Blocker | Connectors / Hive | Bowen Li | Bowen Li |
| [FLINK-15030](https://issues.apache.org/jira/browse/FLINK-15030) | Potential deadlock for bounded blocking ResultPartition. |  Major | Runtime / Network | Yingjie Cao | Yingjie Cao |
| [FLINK-13589](https://issues.apache.org/jira/browse/FLINK-13589) | DelimitedInputFormat index error on multi-byte delimiters with whole file input splits |  Blocker | Connectors / FileSystem, Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Adric Eckstein | Arvid Heise |
| [FLINK-14683](https://issues.apache.org/jira/browse/FLINK-14683) | RemoteStreamEnvironment's construction function has a wrong method |  Minor | Table SQL / API | forideal | Kostas Kloudas |
| [FLINK-15266](https://issues.apache.org/jira/browse/FLINK-15266) | NPE in blink planner code gen |  Blocker | Table SQL / Runtime | Benchao Li | Benchao Li |
| [FLINK-15065](https://issues.apache.org/jira/browse/FLINK-15065) | RocksDB configurable options doc description error |  Major | Documentation | YufeiLiu | Yun Tang |
| [FLINK-15361](https://issues.apache.org/jira/browse/FLINK-15361) | ParquetTableSource should pass predicate in projectFields |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jingsong Lee | Jingsong Lee |
| [FLINK-15412](https://issues.apache.org/jira/browse/FLINK-15412) | LocalExecutorITCase#testParameterizedTypes failed in travis |  Major | Table SQL / Client | Dian Fu | Rui Li |
| [FLINK-15413](https://issues.apache.org/jira/browse/FLINK-15413) | ScalarOperatorsTest failed in travis |  Major | Table SQL / Planner | Dian Fu | Jark Wu |
| [FLINK-15435](https://issues.apache.org/jira/browse/FLINK-15435) | ExecutionConfigTests.test\_equals\_and\_hash in pyFlink fails when cpu core numbers is 6 |  Major | API / Python | Benchao Li |  |
| [FLINK-15418](https://issues.apache.org/jira/browse/FLINK-15418) | StreamExecMatchRule not set FlinkRelDistribution |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-15421](https://issues.apache.org/jira/browse/FLINK-15421) | GroupAggsHandler throws java.time.LocalDateTime cannot be cast to java.sql.Timestamp |  Critical | Table SQL / Planner | Benchao Li | Zhenghua Gao |
| [FLINK-15259](https://issues.apache.org/jira/browse/FLINK-15259) | HiveInspector.toInspectors() should convert Flink constant to Hive constant |  Blocker | Connectors / Hive | Bowen Li | Rui Li |
| [FLINK-15443](https://issues.apache.org/jira/browse/FLINK-15443) | Use JDBC connector write FLOAT value occur ClassCastException |  Major | Connectors / JDBC | Xianxun Ye | Jingsong Lee |
| [FLINK-15478](https://issues.apache.org/jira/browse/FLINK-15478) | FROM\_BASE64 code gen type wrong |  Major | Table SQL / Planner | Benchao Li | Benchao Li |
| [FLINK-14200](https://issues.apache.org/jira/browse/FLINK-14200) | Temporal Table Function Joins do not work on Tables (only TableSources) on the query side |  Major | Table SQL / Planner | Benoît Paris | Jark Wu |
| [FLINK-15543](https://issues.apache.org/jira/browse/FLINK-15543) | Apache Camel not bundled but listed in flink-dist NOTICE |  Blocker | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15523](https://issues.apache.org/jira/browse/FLINK-15523) | ConfigConstants generally excluded from japicmp |  Blocker | Build System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-15522](https://issues.apache.org/jira/browse/FLINK-15522) | Misleading root cause exception when cancelling the job |  Critical | Client / Job Submission, Runtime / Coordination | Till Rohrmann | Zhu Zhu |
| [FLINK-15489](https://issues.apache.org/jira/browse/FLINK-15489) | WebUI log refresh not working |  Blocker | Runtime / Web Frontend | Dawid Wysakowicz | Yadong Xie |
| [FLINK-15615](https://issues.apache.org/jira/browse/FLINK-15615) | Docs: wrong guarantees stated for the file sink |  Major | Documentation | Roman Khachatryan | Roman Khachatryan |
| [FLINK-15577](https://issues.apache.org/jira/browse/FLINK-15577) | WindowAggregate RelNodes missing Window specs in digest |  Critical | Table SQL / Legacy Planner | Benoit Hanotte | Benoit Hanotte |
| [FLINK-15549](https://issues.apache.org/jira/browse/FLINK-15549) | Integer overflow in SpillingResettableMutableObjectIterator |  Major | API / DataSet | caojian0613 | caojian0613 |
| [FLINK-13758](https://issues.apache.org/jira/browse/FLINK-13758) | Failed to submit JobGraph when registered hdfs file in DistributedCache |  Critical | Command Line Client | luoguohao | Yang Wang |
| [FLINK-14701](https://issues.apache.org/jira/browse/FLINK-14701) | Slot leaks if SharedSlotOversubscribedException happens |  Critical | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-16819](https://issues.apache.org/jira/browse/FLINK-16819) | Got KryoException while using UDAF in flink1.9 |  Major | API / Type Serialization System, Table SQL / Planner | Xingxing Di |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-13724](https://issues.apache.org/jira/browse/FLINK-13724) | Remove unnecessary whitespace from the docs' sidenav |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13723](https://issues.apache.org/jira/browse/FLINK-13723) | Use liquid-c for faster doc generation |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13817](https://issues.apache.org/jira/browse/FLINK-13817) | Expose whether web submissions are enabled |  Major | Runtime / REST | Chesnay Schepler | Chesnay Schepler |
| [FLINK-13360](https://issues.apache.org/jira/browse/FLINK-13360) | Add documentation for HBase connector for Table API & SQL |  Major | Connectors / HBase, Documentation | Jark Wu | Jingsong Lee |
| [FLINK-13361](https://issues.apache.org/jira/browse/FLINK-13361) | Add documentation for JDBC connector for Table API & SQL |  Major | Connectors / JDBC, Documentation | Jark Wu | Jingsong Lee |
| [FLINK-13818](https://issues.apache.org/jira/browse/FLINK-13818) | Check whether web submission are enabled |  Major | Runtime / Web Frontend | Chesnay Schepler | Yadong Xie |
| [FLINK-14535](https://issues.apache.org/jira/browse/FLINK-14535) | Cast exception is thrown when count distinct on decimal fields |  Minor | Table SQL / Planner | Zhenghua Gao | Zhenghua Gao |
| [FLINK-12122](https://issues.apache.org/jira/browse/FLINK-12122) | Spread out tasks evenly across all available registered TaskManagers |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-13725](https://issues.apache.org/jira/browse/FLINK-13725) | Use sassc for faster doc generation |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13726](https://issues.apache.org/jira/browse/FLINK-13726) | Build docs with jekyll 4.0.0.pre.beta1 |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-13791](https://issues.apache.org/jira/browse/FLINK-13791) | Speed up sidenav by using group\_by |  Major | Documentation | Nico Kruber | Nico Kruber |
| [FLINK-14735](https://issues.apache.org/jira/browse/FLINK-14735) | Improve batch schedule check input consumable performance |  Major | Runtime / Task | Jingsong Lee | Zhu Zhu |


