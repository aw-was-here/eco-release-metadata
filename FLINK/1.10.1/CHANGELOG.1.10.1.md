
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

## Release 1.10.1 - 2020-05-12



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-17275](https://issues.apache.org/jira/browse/FLINK-17275) | Add core training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16191](https://issues.apache.org/jira/browse/FLINK-16191) | Improve error message on Windows when RocksDB Paths are too long |  Major | Runtime / State Backends | Stephan Ewen | Stephan Ewen |
| [FLINK-15094](https://issues.apache.org/jira/browse/FLINK-15094) | Warning about using private constructor of java.nio.DirectByteBuffer in Java 11 |  Major | Runtime / Task | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-16288](https://issues.apache.org/jira/browse/FLINK-16288) | Setting the TTL for discarding task pods on Kubernetes. |  Major | Deployment / Kubernetes | Niels Basjes | Niels Basjes |
| [FLINK-16280](https://issues.apache.org/jira/browse/FLINK-16280) | Fix sample code errors in the documentation about elasticsearch connector |  Minor | Connectors / ElasticSearch, Documentation | Jiaqi Li | Jiaqi Li |
| [FLINK-15584](https://issues.apache.org/jira/browse/FLINK-15584) | Give nested data type of ROWs in ValidationException |  Minor | Table SQL / Legacy Planner | Benoît Paris | Ayush Saxena |
| [FLINK-16343](https://issues.apache.org/jira/browse/FLINK-16343) | Improve exception message when reading an unbounded source in batch mode |  Major | Table SQL / Planner | Kurt Young | Jark Wu |
| [FLINK-16293](https://issues.apache.org/jira/browse/FLINK-16293) | Document using plugins in Kubernetes |  Major | Deployment / Kubernetes, FileSystems | Niels Basjes | Niels Basjes |
| [FLINK-15989](https://issues.apache.org/jira/browse/FLINK-15989) | Rewrap OutOfMemoryError in allocateUnpooledOffHeap with better message |  Major | Runtime / Coordination | Andrey Zagrebin | Andrey Zagrebin |
| [FLINK-16604](https://issues.apache.org/jira/browse/FLINK-16604) | Column key in JM configuration is too narrow |  Minor | Runtime / Web Frontend | Jeff Zhang | Yadong Xie |
| [FLINK-16862](https://issues.apache.org/jira/browse/FLINK-16862) | Remove example url in quickstarts |  Blocker | Quickstarts | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16018](https://issues.apache.org/jira/browse/FLINK-16018) | Improve error reporting when submitting batch job (instead of AskTimeoutException) |  Blocker | Runtime / Coordination | Robert Metzger | Till Rohrmann |
| [FLINK-16942](https://issues.apache.org/jira/browse/FLINK-16942) | ES 5 sink should allow users to select netty transport client |  Major | Connectors / ElasticSearch | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16772](https://issues.apache.org/jira/browse/FLINK-16772) | Bump derby to 10.12.1.1+ or exclude it |  Blocker | Connectors / Hive | Chesnay Schepler | Rui Li |
| [FLINK-16697](https://issues.apache.org/jira/browse/FLINK-16697) | [CVE-2020-1960] Disable JMX rebinding |  Major | Runtime / Metrics | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [FLINK-9656](https://issues.apache.org/jira/browse/FLINK-9656) | Environment java opts for flink run |  Minor | Command Line Client | Jozef Vilcek | Jun Qin |
| [FLINK-16683](https://issues.apache.org/jira/browse/FLINK-16683) | Remove scripts for starting Flink on Windows |  Blocker | Deployment / Scripts | Robert Metzger | Chesnay Schepler |
| [FLINK-16763](https://issues.apache.org/jira/browse/FLINK-16763) | Should not use BatchTableEnvironment for Python UDF in the document of flink-1.10 |  Major | API / Python, Documentation | Hequn Cheng | Hequn Cheng |
| [FLINK-16874](https://issues.apache.org/jira/browse/FLINK-16874) | Respect the dynamic options when calculating memory options in taskmanager.sh |  Major | Runtime / Coordination | Yangze Guo | Yangze Guo |
| [FLINK-17276](https://issues.apache.org/jira/browse/FLINK-17276) | Add checkstyle to training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17277](https://issues.apache.org/jira/browse/FLINK-17277) | Apply IntelliJ recommendations to training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17278](https://issues.apache.org/jira/browse/FLINK-17278) | Add Travis to the training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17279](https://issues.apache.org/jira/browse/FLINK-17279) | Use gradle build scans for training exercises |  Major | Documentation / Training / Exercises | Nico Kruber | Nico Kruber |
| [FLINK-17316](https://issues.apache.org/jira/browse/FLINK-17316) | Have HourlyTips solutions use TumblingEventTimeWindows.of |  Major | Documentation / Training / Exercises | David Anderson | David Anderson |
| [FLINK-17125](https://issues.apache.org/jira/browse/FLINK-17125) | Add a Usage Notes Page to Answer Common Questions Encountered by PyFlink Users |  Major | API / Python, Documentation | Huang Xingbo | Huang Xingbo |
| [FLINK-16125](https://issues.apache.org/jira/browse/FLINK-16125) | Make zookeeper.connect optional for Kafka connectors |  Major | Connectors / Kafka | Jiangjie Qin | Qingsheng Ren |
| [FLINK-18292](https://issues.apache.org/jira/browse/FLINK-18292) | Savepoint for job error |  Minor | Command Line Client | Kayo |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15811](https://issues.apache.org/jira/browse/FLINK-15811) | StreamSourceOperatorWatermarksTest.testNoMaxWatermarkOnAsyncCancel fails on Travis |  Blocker | Runtime / Task, Tests | Chesnay Schepler | Roman Khachatryan |
| [FLINK-15417](https://issues.apache.org/jira/browse/FLINK-15417) | Remove the docker volume or mount when starting Mesos e2e cluster |  Major | Deployment / Mesos, Tests | Yangze Guo | Yangze Guo |
| [FLINK-16026](https://issues.apache.org/jira/browse/FLINK-16026) | Travis failed due to python setup |  Critical | API / Python | Jingsong Lee | Huang Xingbo |
| [FLINK-16113](https://issues.apache.org/jira/browse/FLINK-16113) | ExpressionReducer shouldn't escape the reduced string value |  Critical | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-16068](https://issues.apache.org/jira/browse/FLINK-16068) | table with keyword-escaped columns and computed\_column\_expression columns |  Critical | Table SQL / Client | pangliang | Benchao Li |
| [FLINK-15904](https://issues.apache.org/jira/browse/FLINK-15904) | Make Kafka Consumer work with activated "disableGenericTypes()" |  Major | Connectors / Kafka | Aljoscha Krettek | Oleksandr Nitavskyi |
| [FLINK-16139](https://issues.apache.org/jira/browse/FLINK-16139) | Co-location constraints are not reset on task recovery in DefaultScheduler |  Critical | Runtime / Coordination | Zhu Zhu | Zhu Zhu |
| [FLINK-14038](https://issues.apache.org/jira/browse/FLINK-14038) | ExecutionGraph deploy failed due to akka timeout |  Major | Runtime / Task | liupengcheng | liupengcheng |
| [FLINK-16161](https://issues.apache.org/jira/browse/FLINK-16161) | Statistics zero should be unknown in HiveCatalog |  Blocker | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-16067](https://issues.apache.org/jira/browse/FLINK-16067) | Flink's CalciteParser swallows error position information |  Major | Table SQL / Planner | Fabian Hueske | Dawid Wysakowicz |
| [FLINK-10918](https://issues.apache.org/jira/browse/FLINK-10918) | incremental Keyed state with RocksDB throws cannot create directory error in windows |  Major | Runtime / Queryable State, Runtime / State Backends | Amit | Stephan Ewen |
| [FLINK-16013](https://issues.apache.org/jira/browse/FLINK-16013) | List and map config options could not be parsed correctly |  Major | Runtime / Configuration | Yang Wang | Yang Wang |
| [FLINK-16111](https://issues.apache.org/jira/browse/FLINK-16111) | Kubernetes deployment does not respect "taskmanager.cpu.cores". |  Major | Deployment / Kubernetes | Xintong Song | Xintong Song |
| [FLINK-16242](https://issues.apache.org/jira/browse/FLINK-16242) | BinaryGeneric serialization error cause checkpoint failure |  Major | Table SQL / Planner, Table SQL / Runtime | Jiayi Liao | Jiayi Liao |
| [FLINK-16231](https://issues.apache.org/jira/browse/FLINK-16231) | Hive connector is missing jdk.tools exclusion against Hive 2.x.x |  Major | Build System, Connectors / Hive | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16115](https://issues.apache.org/jira/browse/FLINK-16115) | Aliyun oss filesystem could not work with plugin mechanism |  Critical | Connectors / FileSystem | Yang Wang | Yang Wang |
| [FLINK-16234](https://issues.apache.org/jira/browse/FLINK-16234) | Fix unstable cases in StreamingJobGraphGeneratorTest |  Minor | . | cpugputpu |  |
| [FLINK-16301](https://issues.apache.org/jira/browse/FLINK-16301) | Annoying "Cannot find FunctionDefinition" messages with SQL for f\_proctime or = |  Major | Table SQL / Planner | Nico Kruber | Jark Wu |
| [FLINK-16331](https://issues.apache.org/jira/browse/FLINK-16331) | Remove source licenses for old WebUI |  Major | Release System | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16360](https://issues.apache.org/jira/browse/FLINK-16360) |  connector on hive 2.0.1 don't  support type conversion from STRING to VARCHAR |  Major | Connectors / Hive | wgcn | Jingsong Lee |
| [FLINK-16281](https://issues.apache.org/jira/browse/FLINK-16281) | parameter 'maxRetryTimes' can not work in JDBCUpsertTableSink |  Major | Table SQL / Ecosystem | Leonard Xu | Leonard Xu |
| [FLINK-11193](https://issues.apache.org/jira/browse/FLINK-11193) | Rocksdb timer service factory configuration option is not settable per job |  Minor | Runtime / State Backends | Fan weiwen | Aitozi |
| [FLINK-15838](https://issues.apache.org/jira/browse/FLINK-15838) | Dangling CountDownLatch.await(timeout) |  Major | Tests | Roman Leventov | Ayush Saxena |
| [FLINK-16414](https://issues.apache.org/jira/browse/FLINK-16414) | create udaf/udtf function using sql casuing ValidationException: SQL validation failed. null |  Critical | Table SQL / API | Terry Wang | Terry Wang |
| [FLINK-2336](https://issues.apache.org/jira/browse/FLINK-2336) | ArrayIndexOufOBoundsException in TypeExtractor when mapping |  Critical | API / Type Serialization System | William Saar | Guowei Ma |
| [FLINK-16269](https://issues.apache.org/jira/browse/FLINK-16269) | Generic type can not be matched when convert table to stream. |  Major | Table SQL / API | xiemeilong | Jark Wu |
| [FLINK-16108](https://issues.apache.org/jira/browse/FLINK-16108) | StreamSQLExample is failed if running in blink planner |  Critical | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-16435](https://issues.apache.org/jira/browse/FLINK-16435) | Replace since decorator with versionadd to mark the version an API was introduced |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-16313](https://issues.apache.org/jira/browse/FLINK-16313) | flink-state-processor-api: surefire execution unstable on Azure |  Blocker | API / State Processor, Tests | Robert Metzger | Seth Wiesman |
| [FLINK-16467](https://issues.apache.org/jira/browse/FLINK-16467) | MemorySizeTest#testToHumanReadableString() is not portable |  Major | API / Core | Michael Osipov | Xintong Song |
| [FLINK-16241](https://issues.apache.org/jira/browse/FLINK-16241) | Remove the license and notice file in flink-ml-lib module on release-1.10 branch |  Blocker | Library / Machine Learning | Hequn Cheng | Hequn Cheng |
| [FLINK-16025](https://issues.apache.org/jira/browse/FLINK-16025) | Service could expose blob server port mismatched with JM Container |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |
| [FLINK-16371](https://issues.apache.org/jira/browse/FLINK-16371) | HadoopCompressionBulkWriter fails with 'java.io.NotSerializableException' |  Major | Connectors / FileSystem | Sivaprasanna Sethuraman | Sivaprasanna Sethuraman |
| [FLINK-16014](https://issues.apache.org/jira/browse/FLINK-16014) | S3 plugin ClassNotFoundException SAXParser |  Major | FileSystems | Arvid Heise | Arvid Heise |
| [FLINK-16526](https://issues.apache.org/jira/browse/FLINK-16526) | Fix exception when computed column expression references a keyword column name |  Critical | Table SQL / API | YufeiLiu | Jark Wu |
| [FLINK-16550](https://issues.apache.org/jira/browse/FLINK-16550) | HadoopS3\* tests fail with NullPointerException exceptions |  Blocker | FileSystems | Robert Metzger | Arvid Heise |
| [FLINK-16541](https://issues.apache.org/jira/browse/FLINK-16541) | Document of table.exec.shuffle-mode is incorrect |  Major | Documentation | Caizhi Weng | Caizhi Weng |
| [FLINK-16573](https://issues.apache.org/jira/browse/FLINK-16573) | Kinesis consumer does not properly shutdown RecordFetcher threads |  Major | Connectors / Kinesis | Maximilian Michels | Maximilian Michels |
| [FLINK-16047](https://issues.apache.org/jira/browse/FLINK-16047) | Blink planner produces wrong aggregate results with state clean up |  Critical | Table SQL / Planner | Timo Walther | Jark Wu |
| [FLINK-16413](https://issues.apache.org/jira/browse/FLINK-16413) | Reduce hive source parallelism when limit push down |  Major | Connectors / Hive | Jingsong Lee | Jun Zhang |
| [FLINK-16433](https://issues.apache.org/jira/browse/FLINK-16433) | TableEnvironmentImpl doesn't clear buffered operations when it fails to translate the operation |  Major | Table SQL / API | Rui Li | Rui Li |
| [FLINK-16635](https://issues.apache.org/jira/browse/FLINK-16635) | Incompatible okio dependency in flink-metrics-influxdb module |  Major | Runtime / Metrics | Till Rohrmann | Till Rohrmann |
| [FLINK-15953](https://issues.apache.org/jira/browse/FLINK-15953) | Job Status is hard to read for some Statuses |  Major | Runtime / Web Frontend | Gary Yao | Yadong Xie |
| [FLINK-16646](https://issues.apache.org/jira/browse/FLINK-16646) | flink read orc file throw a NullPointerException |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Jun Zhang | Jun Zhang |
| [FLINK-16664](https://issues.apache.org/jira/browse/FLINK-16664) | Unable to set DataStreamSource parallelism to default (-1) |  Major | API / DataStream | Nico Kruber | Nico Kruber |
| [FLINK-15852](https://issues.apache.org/jira/browse/FLINK-15852) | Job is submitted to the wrong session cluster |  Critical | Command Line Client | Canbin Zheng | Kostas Kloudas |
| [FLINK-16684](https://issues.apache.org/jira/browse/FLINK-16684) | StreamingFileSink builder does not work with Scala |  Critical | API / Scala, Connectors / FileSystem | Till Rohrmann | Till Rohrmann |
| [FLINK-16220](https://issues.apache.org/jira/browse/FLINK-16220) | JsonRowSerializationSchema throws cast exception : NullNode cannot be cast to ArrayNode |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Benchao Li | Benchao Li |
| [FLINK-16345](https://issues.apache.org/jira/browse/FLINK-16345) | Computed column can not refer time attribute column |  Major | Table SQL / Planner | Leonard Xu | Jark Wu |
| [FLINK-16652](https://issues.apache.org/jira/browse/FLINK-16652) | BytesColumnVector should init buffer in Hive 3.x |  Major | Connectors / Hive, Connectors / ORC | Rui Li | Jingsong Lee |
| [FLINK-16718](https://issues.apache.org/jira/browse/FLINK-16718) | KvStateServerHandlerTest leaks Netty ByteBufs |  Major | Runtime / Queryable State, Tests | Gary Yao | Gary Yao |
| [FLINK-16567](https://issues.apache.org/jira/browse/FLINK-16567) | Get the API error of the StreamQueryConfig on Page "Query Configuration" |  Major | Documentation, Table SQL / API | jinhai | jinhai |
| [FLINK-16675](https://issues.apache.org/jira/browse/FLINK-16675) | TableEnvironmentITCase. testClearOperation fails on travis nightly build |  Blocker | Table SQL / API | Yu Li | Rui Li |
| [FLINK-16740](https://issues.apache.org/jira/browse/FLINK-16740) | OrcSplitReaderUtil::logicalTypeToOrcType fails to create decimal type with precision \< 10 |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Rui Li | Rui Li |
| [FLINK-16732](https://issues.apache.org/jira/browse/FLINK-16732) | Failed to call Hive UDF with constant return value |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-16759](https://issues.apache.org/jira/browse/FLINK-16759) | HiveModuleTest failed to compile on release-1.10 |  Major | Build System, Connectors / Hive | Dian Fu | Jingsong Lee |
| [FLINK-16170](https://issues.apache.org/jira/browse/FLINK-16170) | SearchTemplateRequest ClassNotFoundException when use flink-sql-connector-elasticsearch7 |  Blocker | Connectors / ElasticSearch | Jark Wu | Leonard Xu |
| [FLINK-16647](https://issues.apache.org/jira/browse/FLINK-16647) | Miss file extension when inserting to hive table with compression |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-16825](https://issues.apache.org/jira/browse/FLINK-16825) | PrometheusReporterEndToEndITCase should rely on path returned by DownloadCache |  Major | Runtime / Metrics, Tests | Chesnay Schepler | Alexander Fedulov |
| [FLINK-16262](https://issues.apache.org/jira/browse/FLINK-16262) | Class loader problem with FlinkKafkaProducer.Semantic.EXACTLY\_ONCE and usrlib directory |  Blocker | Connectors / Kafka | Jürgen Kreileder | Guowei Ma |
| [FLINK-16727](https://issues.apache.org/jira/browse/FLINK-16727) | Fix cast exception when having time point literal as parameters |  Major | Table SQL / Planner | Matrix42 | Jark Wu |
| [FLINK-16070](https://issues.apache.org/jira/browse/FLINK-16070) | Blink planner can not extract correct unique key for UpsertStreamTableSink |  Critical | Table SQL / Planner | Leonard Xu | godfrey he |
| [FLINK-13483](https://issues.apache.org/jira/browse/FLINK-13483) | PrestoS3FileSystemITCase.testDirectoryListing fails on Travis |  Critical | FileSystems | Tzu-Li (Gordon) Tai | Lu Niu |
| [FLINK-16703](https://issues.apache.org/jira/browse/FLINK-16703) | AkkaRpcActor state machine does not record transition to terminating state. |  Minor | Runtime / Coordination | Dmitri Chmelev | Till Rohrmann |
| [FLINK-16888](https://issues.apache.org/jira/browse/FLINK-16888) | Re-add jquery license file under "/licenses" |  Blocker | Build System | Stephan Ewen | Chesnay Schepler |
| [FLINK-14311](https://issues.apache.org/jira/browse/FLINK-14311) | Streaming File Sink end-to-end test failed on Travis |  Critical | Connectors / FileSystem, Tests | Till Rohrmann | Aljoscha Krettek |
| [FLINK-16860](https://issues.apache.org/jira/browse/FLINK-16860) | Failed to push filter into OrcTableSource when upgrading to 1.9.2 |  Major | Connectors / ORC, Table SQL / API | Nikola | Jingsong Lee |
| [FLINK-16560](https://issues.apache.org/jira/browse/FLINK-16560) | Forward Configuration in PackagedProgramUtils#getPipelineFromProgram |  Blocker | API / DataStream, Runtime / Configuration | Zhu Zhu | Aljoscha Krettek |
| [FLINK-14316](https://issues.apache.org/jira/browse/FLINK-14316) | Stuck in "Job leader ... lost leadership" error |  Critical | Runtime / Coordination | Steven Zhen Wu | Till Rohrmann |
| [FLINK-16836](https://issues.apache.org/jira/browse/FLINK-16836) | Losing leadership does not clear rpc connection in JobManagerLeaderListener |  Major | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-16373](https://issues.apache.org/jira/browse/FLINK-16373) | EmbeddedLeaderService: IllegalStateException: The RPC connection is already closed |  Major | Runtime / Coordination | Robert Metzger | Till Rohrmann |
| [FLINK-16944](https://issues.apache.org/jira/browse/FLINK-16944) | Compile error in. DumpCompiledPlanTest and PreviewPlanDumpTest |  Blocker | API / DataStream, Runtime / Configuration | Piotr Nowojski | Chesnay Schepler |
| [FLINK-16916](https://issues.apache.org/jira/browse/FLINK-16916) | The logic of NullableSerializer#copy is wrong |  Blocker | API / Type Serialization System | Congxian Qiu | Congxian Qiu |
| [FLINK-16705](https://issues.apache.org/jira/browse/FLINK-16705) | LocalExecutor tears down MiniCluster before client can retrieve JobResult |  Blocker | Client / Job Submission | Maximilian Michels | Maximilian Michels |
| [FLINK-16980](https://issues.apache.org/jira/browse/FLINK-16980) | Python UDF doesn't work with protobuf 3.6.1 |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-15772](https://issues.apache.org/jira/browse/FLINK-15772) | Shaded Hadoop S3A with credentials provider end-to-end test fails on travis |  Critical | Connectors / FileSystem, Tests | Yu Li | Aljoscha Krettek |
| [FLINK-16913](https://issues.apache.org/jira/browse/FLINK-16913) | ReadableConfigToConfigurationAdapter#getEnum throws UnsupportedOperationException |  Blocker | Runtime / Configuration | Canbin Zheng | Dawid Wysakowicz |
| [FLINK-16632](https://issues.apache.org/jira/browse/FLINK-16632) | SqlDateTimeUtils#toSqlTimestamp(String, String) may yield incorrect result |  Critical | Table SQL / Planner | Jingsong Lee | Zhenghua Gao |
| [FLINK-16696](https://issues.apache.org/jira/browse/FLINK-16696) | Savepoint trigger documentation is insufficient |  Minor | Documentation, Runtime / REST | Roman Khachatryan | Chesnay Schepler |
| [FLINK-17062](https://issues.apache.org/jira/browse/FLINK-17062) | Fix the conversion from Java row type to Python row type |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-17066](https://issues.apache.org/jira/browse/FLINK-17066) | Update pyarrow version bounds less than 0.14.0 |  Blocker | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-15812](https://issues.apache.org/jira/browse/FLINK-15812) | HistoryServer archiving is done in Dispatcher main thread |  Critical | Runtime / Coordination | Chesnay Schepler | Chesnay Schepler |
| [FLINK-16981](https://issues.apache.org/jira/browse/FLINK-16981) | flink-runtime tests are crashing the JVM on Java11 because of PowerMock |  Critical | Runtime / Coordination, Tests | Robert Metzger | Chesnay Schepler |
| [FLINK-16626](https://issues.apache.org/jira/browse/FLINK-16626) | Prevent REST handler from being closed more than once |  Blocker | Deployment / YARN | chaiyongqiang | Weike Dong |
| [FLINK-17107](https://issues.apache.org/jira/browse/FLINK-17107) | CheckpointCoordinatorConfiguration#isExactlyOnce() is inconsistent with StreamConfig#getCheckpointMode() |  Major | Runtime / Checkpointing | Yingjie Cao | Yingjie Cao |
| [FLINK-16767](https://issues.apache.org/jira/browse/FLINK-16767) | Failed to read Hive table with RegexSerDe |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-15936](https://issues.apache.org/jira/browse/FLINK-15936) | TaskExecutorTest#testSlotAcceptance deadlocks |  Critical | Runtime / Coordination, Tests | Gary Yao | Andrey Zagrebin |
| [FLINK-17124](https://issues.apache.org/jira/browse/FLINK-17124) | The PyFlink Job runs into infinite loop if the Python UDF imports job code |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-17114](https://issues.apache.org/jira/browse/FLINK-17114) | When the pyflink job runs in local mode and the command "python" points to Python 2.7, the startup of the Python UDF worker will fail. |  Major | API / Python | Wei Zhong | Wei Zhong |
| [FLINK-17093](https://issues.apache.org/jira/browse/FLINK-17093) | Python UDF doesn't work when the input column is from composite field |  Blocker | API / Python | Dian Fu | Dian Fu |
| [FLINK-17152](https://issues.apache.org/jira/browse/FLINK-17152) | FunctionDefinitionUtil generate wrong resultType and  acc type of AggregateFunctionDefinition |  Blocker | Table SQL / Runtime | Terry Wang | Terry Wang |
| [FLINK-16822](https://issues.apache.org/jira/browse/FLINK-16822) | The config set by SET command does not work |  Critical | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-16576](https://issues.apache.org/jira/browse/FLINK-16576) | State inconsistency on restore with memory state backends |  Blocker | Runtime / State Backends | Nico Kruber | Congxian Qiu |
| [FLINK-16771](https://issues.apache.org/jira/browse/FLINK-16771) | NPE when filtering by decimal column |  Major | Table SQL / Planner | Rui Li | Rui Li |
| [FLINK-16308](https://issues.apache.org/jira/browse/FLINK-16308) | SQL connector download links are broken |  Critical | Documentation, Table SQL / Ecosystem | Fabian Hueske | Fabian Hueske |
| [FLINK-16662](https://issues.apache.org/jira/browse/FLINK-16662) | Blink Planner failed to generate JobGraph for POJO DataStream converting to Table (Cannot determine simple type name) |  Blocker | Client / Job Submission, Table SQL / Planner | chenxyz | LionelZ |
| [FLINK-17308](https://issues.apache.org/jira/browse/FLINK-17308) | ExecutionGraphCache cachedExecutionGraphs not cleanup cause OOM Bug |  Critical | Runtime / REST | yujunyong | Till Rohrmann |
| [FLINK-17338](https://issues.apache.org/jira/browse/FLINK-17338) | LocalExecutorITCase.testBatchQueryCancel test timeout |  Critical | Table SQL / Client, Table SQL / Legacy Planner, Table SQL / Planner | Robert Metzger | Aljoscha Krettek |
| [FLINK-17359](https://issues.apache.org/jira/browse/FLINK-17359) | Entropy key is not resolved if flink-s3-fs-hadoop is added as a plugin |  Major | FileSystems | Prem Santosh | Prem Santosh |
| [FLINK-15669](https://issues.apache.org/jira/browse/FLINK-15669) | SQL client can't cancel flink job |  Critical | Table SQL / Client | godfrey he | godfrey he |
| [FLINK-17313](https://issues.apache.org/jira/browse/FLINK-17313) | Validation error when insert decimal/varchar with precision into sink using TypeInformation of row |  Major | Table SQL / Planner | Terry Wang | Terry Wang |
| [FLINK-17334](https://issues.apache.org/jira/browse/FLINK-17334) |  Flink does not support HIVE UDFs with primitive return types |  Major | Connectors / Hive | roy.ru | roy.ru |
| [FLINK-17471](https://issues.apache.org/jira/browse/FLINK-17471) | Move LICENSE and NOTICE files to root directory of python distribution |  Blocker | API / Python | Yu Li | Wei Zhong |
| [FLINK-16901](https://issues.apache.org/jira/browse/FLINK-16901) | Flink Kinesis connector NOTICE should have contents of AWS KPL's THIRD\_PARTY\_NOTICES file manually merged in |  Blocker | Connectors / Kinesis | Tzu-Li (Gordon) Tai | Yu Li |
| [FLINK-17483](https://issues.apache.org/jira/browse/FLINK-17483) | Update flink-sql-connector-elasticsearch7 NOTICE file to correctly reflect bundled dependencies |  Blocker | Connectors / ElasticSearch | Yu Li | Yu Li |
| [FLINK-17499](https://issues.apache.org/jira/browse/FLINK-17499) | LazyTimerService used to register timers via State Processing API incorrectly mixes event time timers with processing time timers |  Major | API / State Processor | Adam Laczynski | Seth Wiesman |
| [FLINK-17496](https://issues.apache.org/jira/browse/FLINK-17496) | Performance regression with amazon-kinesis-producer 0.13.1 in Flink 1.10.x |  Major | Connectors / Kinesis | Thomas Weise | Thomas Weise |
| [FLINK-17514](https://issues.apache.org/jira/browse/FLINK-17514) | TaskCancelerWatchdog does not kill TaskManager |  Blocker | Runtime / Task | Aljoscha Krettek | Till Rohrmann |
| [FLINK-17403](https://issues.apache.org/jira/browse/FLINK-17403) | Fix invalid classpath in BashJavaUtilsITCase |  Major | Tests | Paul Lin | Paul Lin |
| [FLINK-16821](https://issues.apache.org/jira/browse/FLINK-16821) | Run Kubernetes test failed with invalid named "minikube" |  Major | Deployment / Kubernetes, Tests | Zhijiang | Robert Metzger |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-16049](https://issues.apache.org/jira/browse/FLINK-16049) | Remove outdated "Best Practices" section from Application Development Section |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-15561](https://issues.apache.org/jira/browse/FLINK-15561) | Unify Kerberos credentials checking |  Major | Deployment / YARN | Rong Rong | Rong Rong |
| [FLINK-16131](https://issues.apache.org/jira/browse/FLINK-16131) | Translate "Amazon S3" page of "File Systems" into Chinese |  Major | chinese-translation, Documentation | Jark Wu | Qingsheng Ren |
| [FLINK-16389](https://issues.apache.org/jira/browse/FLINK-16389) | Bump Kafka 0.10 to 0.10.2.2 |  Major | Connectors / Kafka | Chesnay Schepler | Chesnay Schepler |
| [FLINK-14126](https://issues.apache.org/jira/browse/FLINK-14126) | Elasticsearch Xpack Machine Learning doesn't support ARM |  Minor | Tests | wangxiyuan | wangxiyuan |
| [FLINK-15817](https://issues.apache.org/jira/browse/FLINK-15817) | Kubernetes Resource leak while deployment exception happens |  Major | Deployment / Kubernetes | Canbin Zheng | Canbin Zheng |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-15933](https://issues.apache.org/jira/browse/FLINK-15933) | update content of how generic table schema is stored in hive via HiveCatalog |  Major | Documentation | Bowen Li | Rui Li |
| [FLINK-16004](https://issues.apache.org/jira/browse/FLINK-16004) | Exclude flink-rocksdb-state-memory-control-test jars from the dist |  Major | Tests | Yu Li | Chesnay Schepler |
| [FLINK-16530](https://issues.apache.org/jira/browse/FLINK-16530) | Add documentation about "GROUPING SETS" and "CUBE" support in streaming mode |  Major | Documentation, Table SQL / API | Jark Wu | Jark Wu |
| [FLINK-16454](https://issues.apache.org/jira/browse/FLINK-16454) | Update the copyright year in NOTICE files |  Blocker | Release System | Zhijiang | Zhijiang |
| [FLINK-15991](https://issues.apache.org/jira/browse/FLINK-15991) | Create Chinese documentation for FLIP-49 TM memory model |  Major | Documentation | Andrey Zagrebin | Xintong Song |
| [FLINK-16592](https://issues.apache.org/jira/browse/FLINK-16592) | The doc of Streaming File Sink has a mistake of grammar |  Minor | Connectors / FileSystem, Documentation | Chen | Chen |


