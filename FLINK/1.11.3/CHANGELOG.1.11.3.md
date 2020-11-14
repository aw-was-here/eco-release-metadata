
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

## Release 1.11.3 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-19193](https://issues.apache.org/jira/browse/FLINK-19193) | Recommend stop-with-savepoint in upgrade guidelines |  Major | Documentation | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-19523](https://issues.apache.org/jira/browse/FLINK-19523) | Hide sensitive command-line configurations |  Major | Runtime / Configuration | Qinghui Xu | Qinghui Xu |
| [FLINK-19677](https://issues.apache.org/jira/browse/FLINK-19677) | TaskManager takes abnormally long time to register with JobManager on Kubernetes |  Major | Runtime / Task | Weike Dong | Weike Dong |
| [FLINK-19252](https://issues.apache.org/jira/browse/FLINK-19252) | Jaas file created under io.tmp.dirs - folder not created if not exists |  Major | Runtime / Coordination | Koala Lam | Yangze Guo |
| [FLINK-19892](https://issues.apache.org/jira/browse/FLINK-19892) | Replace \_\_metaclass\_\_ field with metaclass keyword |  Major | API / Python | Huang Xingbo | Nicholas Jiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18222](https://issues.apache.org/jira/browse/FLINK-18222) | "Avro Confluent Schema Registry nightly end-to-end test" unstable with "Kafka cluster did not start after 120 seconds" |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile), Tests | Robert Metzger | Robert Metzger |
| [FLINK-16768](https://issues.apache.org/jira/browse/FLINK-16768) | HadoopS3RecoverableWriterITCase.testRecoverWithStateWithMultiPart hangs |  Critical | FileSystems, Tests | Zhijiang | Robert Metzger |
| [FLINK-19151](https://issues.apache.org/jira/browse/FLINK-19151) | Flink does not normalize container resource with correct configurations when Yarn FairScheduler is used |  Major | Deployment / YARN | Xintong Song | jinhai |
| [FLINK-19170](https://issues.apache.org/jira/browse/FLINK-19170) | Parameter naming error |  Major | Table SQL / Ecosystem | sulei | sulei |
| [FLINK-19135](https://issues.apache.org/jira/browse/FLINK-19135) | (Stream)ExecutionEnvironment.execute() should not throw ExecutionException |  Major | API / DataSet, API / DataStream | Aljoscha Krettek | Aljoscha Krettek |
| [FLINK-17825](https://issues.apache.org/jira/browse/FLINK-17825) | HA end-to-end gets killed due to timeout |  Critical | Runtime / Coordination, Tests | Robert Metzger | Robert Metzger |
| [FLINK-9992](https://issues.apache.org/jira/browse/FLINK-9992) | FsStorageLocationReferenceTest#testEncodeAndDecode failed in CI |  Critical | FileSystems, Tests | vinoyang | Dian Fu |
| [FLINK-19121](https://issues.apache.org/jira/browse/FLINK-19121) | Avoid accessing HDFS frequently in HiveBulkWriterFactory |  Blocker | Connectors / Hive | Jingsong Lee | Jingsong Lee |
| [FLINK-19280](https://issues.apache.org/jira/browse/FLINK-19280) | The option "sink.buffer-flush.max-rows" for JDBC can't be disabled by set to zero |  Major | Connectors / JDBC, Table SQL / Ecosystem | Jark Wu | dalongliu |
| [FLINK-19244](https://issues.apache.org/jira/browse/FLINK-19244) | CSV format can't deserialize null ROW field |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | Ying Z | Ying Z |
| [FLINK-19321](https://issues.apache.org/jira/browse/FLINK-19321) | CollectSinkFunction does not define serialVersionUID |  Major | Table SQL / Runtime | Fabian Hueske | CloseRiver |
| [FLINK-19281](https://issues.apache.org/jira/browse/FLINK-19281) | LIKE cannot recognize full table path |  Major | Table SQL / API, Table SQL / Planner | Benchao Li | CloseRiver |
| [FLINK-19140](https://issues.apache.org/jira/browse/FLINK-19140) | Join with Table Function (UDTF) SQL example is incorrect |  Major | Documentation, Table SQL / API | Benchao Li | Benchao Li |
| [FLINK-19227](https://issues.apache.org/jira/browse/FLINK-19227) | The catalog is still created after opening failed in catalog registering |  Major | Table SQL / API | Jingsong Lee | CloseRiver |
| [FLINK-19361](https://issues.apache.org/jira/browse/FLINK-19361) | Make HiveCatalog thread safe |  Major | Connectors / Hive | Rui Li | Rui Li |
| [FLINK-19433](https://issues.apache.org/jira/browse/FLINK-19433) | An Error example of FROM\_UNIXTIME function in document |  Major | Documentation, Table SQL / API | Kyle Zhang | Kyle Zhang |
| [FLINK-19258](https://issues.apache.org/jira/browse/FLINK-19258) | Fix the wrong example of "csv.line-delimiter" in CSV documentation |  Major | Documentation, Formats (JSON, Avro, Parquet, ORC, SequenceFile), Table SQL / Ecosystem | Jark Wu | dalongliu |
| [FLINK-18818](https://issues.apache.org/jira/browse/FLINK-18818) | HadoopRenameCommitterHDFSTest.testCommitOneFile[Override: false] failed with "java.io.IOException: The stream is closed" |  Major | Connectors / FileSystem, Tests | Dian Fu | Yun Gao |
| [FLINK-18815](https://issues.apache.org/jira/browse/FLINK-18815) | AbstractCloseableRegistryTest.testClose unstable |  Critical | FileSystems, Tests | Robert Metzger | Kezhu Wang |
| [FLINK-19295](https://issues.apache.org/jira/browse/FLINK-19295) | YARNSessionFIFOITCase.checkForProhibitedLogContents found a log with prohibited string |  Major | Deployment / YARN, Runtime / Coordination, Tests | Dian Fu | Robert Metzger |
| [FLINK-17341](https://issues.apache.org/jira/browse/FLINK-17341) | freeSlot in TaskExecutor.closeJobManagerConnection cause ConcurrentModificationException |  Major | Runtime / Coordination | huweihua | Matthias |
| [FLINK-19291](https://issues.apache.org/jira/browse/FLINK-19291) | Fix exception for AvroSchemaConverter#convertToSchema when RowType contains multiple row fields |  Major | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | xiaozilong | xiaozilong |
| [FLINK-19423](https://issues.apache.org/jira/browse/FLINK-19423) | Fix ArrayIndexOutOfBoundsException when executing DELETE statement in JDBC upsert sink |  Critical | Connectors / JDBC, Table SQL / Ecosystem | limbo | Jark Wu |
| [FLINK-17458](https://issues.apache.org/jira/browse/FLINK-17458) | TaskExecutorSubmissionTest#testFailingScheduleOrUpdateConsumers |  Major | Runtime / Coordination, Tests | Congxian Qiu | Till Rohrmann |
| [FLINK-19618](https://issues.apache.org/jira/browse/FLINK-19618) | Broken link in docs |  Major | Documentation | hailong wang | hailong wang |
| [FLINK-18915](https://issues.apache.org/jira/browse/FLINK-18915) | FIXED\_PATH(dummy Hadoop Path) with WriterImpl may cause ORC writer OOM |  Critical | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | wei | Yun Gao |
| [FLINK-18836](https://issues.apache.org/jira/browse/FLINK-18836) | Python UDTF doesn't work well when the return type isn't generator |  Major | API / Python | Dian Fu | Huang Xingbo |
| [FLINK-19695](https://issues.apache.org/jira/browse/FLINK-19695) | Writing Table with RowTime Column of type TIMESTAMP(3) to Kafka fails with ClassCastException |  Critical | Table SQL / Planner | Konstantin Knauf | Jark Wu |
| [FLINK-19022](https://issues.apache.org/jira/browse/FLINK-19022) | AkkaRpcActor failed to start but no exception information |  Critical | Runtime / Coordination | tartarus | tartarus |
| [FLINK-19401](https://issues.apache.org/jira/browse/FLINK-19401) | Job stuck in restart loop due to excessive checkpoint recoveries which block the JobMaster |  Critical | Runtime / Checkpointing | Steven Zhen Wu | Roman Khachatryan |
| [FLINK-19629](https://issues.apache.org/jira/browse/FLINK-19629) |  Fix NullPointException when deserializing map field with null value for Avro format |  Critical | Formats (JSON, Avro, Parquet, ORC, SequenceFile) | shizhengchao | shizhengchao |
| [FLINK-19675](https://issues.apache.org/jira/browse/FLINK-19675) | The plan of is incorrect when Calc contains WHERE clause, composite fields access and Python UDF at the same time |  Major | API / Python | Dian Fu | Dian Fu |
| [FLINK-19557](https://issues.apache.org/jira/browse/FLINK-19557) | Issue retrieving leader after zookeeper session reconnect |  Critical | Runtime / Coordination | Max Mizikar | Till Rohrmann |
| [FLINK-19750](https://issues.apache.org/jira/browse/FLINK-19750) | Deserializer is not opened in Kafka consumer when restoring from state |  Critical | Connectors / Kafka | Qingsheng Ren | Qingsheng Ren |
| [FLINK-19154](https://issues.apache.org/jira/browse/FLINK-19154) | Application mode deletes HA data in case of suspended ZooKeeper connection |  Blocker | Client / Job Submission | Husky Zeng | Kostas Kloudas |
| [FLINK-19755](https://issues.apache.org/jira/browse/FLINK-19755) | Fix CEP documentation error of the example in 'After Match Strategy' section |  Major | Documentation, Library / CEP | jackylau | jackylau |
| [FLINK-19777](https://issues.apache.org/jira/browse/FLINK-19777) | Fix NullPointException for WindowOperator.close() |  Major | Table SQL / Runtime | frank wang | Jark Wu |
| [FLINK-19201](https://issues.apache.org/jira/browse/FLINK-19201) | PyFlink e2e tests is instable and failed with "Connection broken: OSError" |  Major | API / Python | Dian Fu | Huang Xingbo |
| [FLINK-19587](https://issues.apache.org/jira/browse/FLINK-19587) | Error result when casting binary type as varchar |  Major | Table SQL / Planner | hailong wang | hailong wang |
| [FLINK-19894](https://issues.apache.org/jira/browse/FLINK-19894) | Use iloc for positional slicing instead of direct slicing in from\_pandas |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19740](https://issues.apache.org/jira/browse/FLINK-19740) | Error in to\_pandas for table containing event time: class java.time.LocalDateTime cannot be cast to class java.sql.Timestamp |  Major | API / Python, Table SQL / API | Alex Hall | Huang Xingbo |
| [FLINK-19907](https://issues.apache.org/jira/browse/FLINK-19907) | Channel state (upstream) can be restored after emission of new elements (watermarks) |  Major | Runtime / Network | Roman Khachatryan | Roman Khachatryan |
| [FLINK-19901](https://issues.apache.org/jira/browse/FLINK-19901) | Unable to exclude metrics variables for the last metrics reporter. |  Major | Runtime / Metrics | Truong Duc Kien | Chesnay Schepler |
| [FLINK-19138](https://issues.apache.org/jira/browse/FLINK-19138) | Python UDF supports directly specifying input\_types as DataTypes.ROW |  Major | API / Python | Huang Xingbo | Huang Xingbo |
| [FLINK-19948](https://issues.apache.org/jira/browse/FLINK-19948) | Calling NOW() function throws compile exception |  Major | Table SQL / Planner | Jark Wu | Jark Wu |
| [FLINK-19867](https://issues.apache.org/jira/browse/FLINK-19867) | Validation fails for UDF that accepts var-args |  Major | Table SQL / API | Rui Li | Rui Li |
| [FLINK-19790](https://issues.apache.org/jira/browse/FLINK-19790) | Writing MAP\<STRING, STRING\> to Kafka with JSON format produces incorrect data. |  Critical | Table SQL / Ecosystem | Fabian Hueske | Benchao Li |
| [FLINK-19909](https://issues.apache.org/jira/browse/FLINK-19909) | Flink application in attach mode could not terminate when the only job is canceled |  Blocker | Deployment / Kubernetes, Deployment / YARN, Runtime / Coordination | Yang Wang | Kostas Kloudas |
| [FLINK-19741](https://issues.apache.org/jira/browse/FLINK-19741) | InternalTimeServiceManager fails to restore due to corrupt reads if there are other users of raw keyed state streams |  Blocker | Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-19748](https://issues.apache.org/jira/browse/FLINK-19748) | KeyGroupRangeOffsets#KeyGroupOffsetsIterator should skip key groups that don't have a defined offset |  Blocker | Runtime / Checkpointing, Runtime / State Backends | Tzu-Li (Gordon) Tai | Tzu-Li (Gordon) Tai |
| [FLINK-19237](https://issues.apache.org/jira/browse/FLINK-19237) | LeaderChangeClusterComponentsTest.testReelectionOfJobMaster failed with "NoResourceAvailableException: Could not allocate the required slot within slot request timeout" |  Critical | Runtime / Coordination | Dian Fu | Robert Metzger |
| [FLINK-20064](https://issues.apache.org/jira/browse/FLINK-20064) | Broken links in the documentation |  Major | Documentation | Seth Wiesman | Dian Fu |
| [FLINK-20069](https://issues.apache.org/jira/browse/FLINK-20069) | docs\_404\_check doesn't work properly |  Major | Build System | Dian Fu | Dian Fu |
| [FLINK-13733](https://issues.apache.org/jira/browse/FLINK-13733) | FlinkKafkaInternalProducerITCase.testHappyPath fails on Travis |  Critical | Connectors / Kafka, Tests | Till Rohrmann | Jiangjie Qin |
| [FLINK-20068](https://issues.apache.org/jira/browse/FLINK-20068) | KafkaSubscriberTest.testTopicPatternSubscriber failed with unexpected results |  Blocker | Connectors / Kafka | Dian Fu | Jiangjie Qin |
| [FLINK-20018](https://issues.apache.org/jira/browse/FLINK-20018) | pipeline.cached-files option cannot escape ':' in path |  Major | Runtime / Configuration | Xuannan Su | Dawid Wysakowicz |
| [FLINK-20076](https://issues.apache.org/jira/browse/FLINK-20076) | DispatcherTest.testOnRemovedJobGraphDoesNotCleanUpHAFiles does not test the desired functionality |  Minor | Runtime / Coordination | Matthias | Matthias |
| [FLINK-20079](https://issues.apache.org/jira/browse/FLINK-20079) | Modified UnalignedCheckpointITCase...MassivelyParallel fails |  Major | Runtime / Task | Roman Khachatryan | Roman Khachatryan |
| [FLINK-20033](https://issues.apache.org/jira/browse/FLINK-20033) | Job fails when stopping JobMaster |  Critical | Runtime / Coordination | Till Rohrmann | Till Rohrmann |
| [FLINK-20065](https://issues.apache.org/jira/browse/FLINK-20065) | UnalignedCheckpointCompatibilityITCase.test failed with AskTimeoutException |  Blocker | Runtime / Coordination | Dian Fu | Till Rohrmann |
| [FLINK-20013](https://issues.apache.org/jira/browse/FLINK-20013) | BoundedBlockingSubpartition may leak network buffer if task is failed or canceled |  Major | Runtime / Network | Yingjie Cao | Nicholas Jiang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18725](https://issues.apache.org/jira/browse/FLINK-18725) | "Run Kubernetes test" failed with "30025: provided port is already allocated" |  Critical | Deployment / Kubernetes, Tests | Dian Fu | Yang Wang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [FLINK-18604](https://issues.apache.org/jira/browse/FLINK-18604) | HBase  ConnectorDescriptor can not work in Table API |  Major | Connectors / HBase, Table SQL / API | Leonard Xu | Fangliang Liu |
| [FLINK-18918](https://issues.apache.org/jira/browse/FLINK-18918) | Add a "Connectors" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Hequn Cheng |
| [FLINK-18916](https://issues.apache.org/jira/browse/FLINK-18916) | Add a "Operations" link(linked to dev/table/tableApi.md) under the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Dian Fu |
| [FLINK-18922](https://issues.apache.org/jira/browse/FLINK-18922) | Add a "Catalogs" link (linked to dev/table/catalogs.md) under the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Dian Fu |
| [FLINK-18926](https://issues.apache.org/jira/browse/FLINK-18926) | Add a "Environment Variables" document under  the "Python API" -\> "User Guide" -\> "Table API" section |  Major | API / Python, Documentation | Wei Zhong | Wei Zhong |


