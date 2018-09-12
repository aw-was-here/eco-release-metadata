
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
# Apache Spark Changelog

## Release 2.3.1 - 2018-06-08



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24021](https://issues.apache.org/jira/browse/SPARK-24021) | Fix bug in BlacklistTracker's updateBlacklistForFetchFailure |  Major | Spark Core | wuyi | wuyi |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23948](https://issues.apache.org/jira/browse/SPARK-23948) | Trigger mapstage's job listener in submitMissingTasks |  Major | Scheduler, Spark Core | jin xing | jin xing |
| [SPARK-24465](https://issues.apache.org/jira/browse/SPARK-24465) | LSHModel should support Structured Streaming for transform |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23040](https://issues.apache.org/jira/browse/SPARK-23040) | BlockStoreShuffleReader's return Iterator isn't interruptible if aggregator or ordering is specified |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-23628](https://issues.apache.org/jira/browse/SPARK-23628) | WholeStageCodegen can generate methods with too many params |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-23624](https://issues.apache.org/jira/browse/SPARK-23624) | Revise doc of method pushFilters |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23695](https://issues.apache.org/jira/browse/SPARK-23695) | Confusing error message for PySpark's Kinesis tests when its jar is missing but enabled |  Trivial | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23644](https://issues.apache.org/jira/browse/SPARK-23644) | SHS with proxy doesn't show applications |  Minor | Spark Core, Web UI | Marco Gaido | Marco Gaido |
| [SPARK-23553](https://issues.apache.org/jira/browse/SPARK-23553) | Tests should not assume the default value of \`spark.sql.sources.default\` |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23691](https://issues.apache.org/jira/browse/SPARK-23691) | Use sql\_conf util in PySpark tests where possible |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23769](https://issues.apache.org/jira/browse/SPARK-23769) | Remove unnecessary scalastyle check disabling |  Minor | Spark Core | Riaas Mokiem | Riaas Mokiem |
| [SPARK-23645](https://issues.apache.org/jira/browse/SPARK-23645) | pandas\_udf can not be called with keyword arguments |  Minor | PySpark | Stu (Michael Stewart) | Stu (Michael Stewart) |
| [SPARK-23838](https://issues.apache.org/jira/browse/SPARK-23838) | SparkUI: Running SQL query displayed as "completed" in SQL tab |  Major | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-23822](https://issues.apache.org/jira/browse/SPARK-23822) | Improve error message for Parquet schema mismatches |  Major | SQL | Yuchen Huo | Yuchen Huo |
| [SPARK-23962](https://issues.apache.org/jira/browse/SPARK-23962) | Flaky tests from SQLMetricsTestUtils.currentExecutionIds |  Minor | SQL, Tests | Imran Rashid | Imran Rashid |
| [SPARK-23867](https://issues.apache.org/jira/browse/SPARK-23867) | com.codahale.metrics.Counter output in log message has no toString method |  Minor | Scheduler | Patrick Pisciuneri | Patrick Pisciuneri |
| [SPARK-23963](https://issues.apache.org/jira/browse/SPARK-23963) | Queries on text-based Hive tables grow disproportionately slower as the number of columns increase |  Minor | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-24014](https://issues.apache.org/jira/browse/SPARK-24014) | Add onStreamingStarted method to StreamingListener |  Trivial | PySpark | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-24128](https://issues.apache.org/jira/browse/SPARK-24128) | Mention spark.sql.crossJoin.enabled in implicit cartesian product error msg |  Minor | SQL | Henry Robinson | Henry Robinson |
| [SPARK-24188](https://issues.apache.org/jira/browse/SPARK-24188) | /api/v1/version not working |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24246](https://issues.apache.org/jira/browse/SPARK-24246) | Improve AnalysisException by setting the cause when it's available |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-24262](https://issues.apache.org/jira/browse/SPARK-24262) | Fix typo in UDF error message |  Trivial | PySpark | holdenk | Kelley Robinson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23020](https://issues.apache.org/jira/browse/SPARK-23020) | Re-enable Flaky Test: org.apache.spark.launcher.SparkLauncherSuite.testInProcessLauncher |  Blocker | Tests | Sameer Agarwal | Marcelo Vanzin |
| [SPARK-23406](https://issues.apache.org/jira/browse/SPARK-23406) | Stream-stream self joins does not work |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23340](https://issues.apache.org/jira/browse/SPARK-23340) | Upgrade Apache ORC to 1.4.3 |  Major | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23457](https://issues.apache.org/jira/browse/SPARK-23457) | Register task completion listeners first for ParquetFileFormat |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23436](https://issues.apache.org/jira/browse/SPARK-23436) | Incorrect Date column Inference in partition discovery |  Major | SQL | Apoorva Sareen | Marco Gaido |
| [SPARK-23434](https://issues.apache.org/jira/browse/SPARK-23434) | Spark should not warn \`metadata directory\` for a HDFS file path |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23490](https://issues.apache.org/jira/browse/SPARK-23490) | Check storage.locationUri with existing table in CreateTable |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23438](https://issues.apache.org/jira/browse/SPARK-23438) | DStreams could lose blocks with WAL enabled when driver crashes |  Critical | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23449](https://issues.apache.org/jira/browse/SPARK-23449) | Extra java options lose order in Docker context |  Minor | Kubernetes | Andrew Korzhuev | Andrew Korzhuev |
| [SPARK-23523](https://issues.apache.org/jira/browse/SPARK-23523) | Incorrect result caused by the rule OptimizeMetadataOnlyQuery |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23365](https://issues.apache.org/jira/browse/SPARK-23365) | DynamicAllocation with failure in straggler task can lead to a hung spark job |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-23448](https://issues.apache.org/jira/browse/SPARK-23448) | Dataframe returns wrong result when column don't respect datatype |  Major | SQL | Ahmed ZAROUI | Liang-Chi Hsieh |
| [SPARK-23508](https://issues.apache.org/jira/browse/SPARK-23508) | blockManagerIdCache in BlockManagerId may cause oom |  Major | Deploy, Spark Core | zhoukang | zhoukang |
| [SPARK-23517](https://issues.apache.org/jira/browse/SPARK-23517) | Make pyspark.util.\_exception\_message produce the trace from Java side for Py4JJavaError |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23551](https://issues.apache.org/jira/browse/SPARK-23551) | Exclude \`hadoop-mapreduce-client-core\` dependency from \`orc-mapreduce\` |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23570](https://issues.apache.org/jira/browse/SPARK-23570) | Add Spark-2.3 in HiveExternalCatalogVersionsSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23569](https://issues.apache.org/jira/browse/SPARK-23569) | pandas\_udf does not work with type-annotated python functions |  Major | PySpark | Stu (Michael Stewart) | Stu (Michael Stewart) |
| [SPARK-23291](https://issues.apache.org/jira/browse/SPARK-23291) | SparkR : substr : In SparkR dataframe , starting and ending position arguments in "substr" is giving wrong result  when the position is greater than 1 |  Major | SparkR | Narendra | Liang-Chi Hsieh |
| [SPARK-23525](https://issues.apache.org/jira/browse/SPARK-23525) | ALTER TABLE CHANGE COLUMN doesn't work for external hive table |  Major | SQL | Pavlo Skliar | Xingbo Jiang |
| [SPARK-23524](https://issues.apache.org/jira/browse/SPARK-23524) | Big local shuffle blocks should not be checked for corruption. |  Major | Spark Core | jin xing | jin xing |
| [SPARK-23630](https://issues.apache.org/jira/browse/SPARK-23630) | Spark-on-YARN missing user customizations of hadoop config |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23173](https://issues.apache.org/jira/browse/SPARK-23173) | from\_json can produce nulls for fields which are marked as non-nullable |  Major | SQL | Herman van Hovell | Michał Świtakowski |
| [SPARK-23462](https://issues.apache.org/jira/browse/SPARK-23462) | Improve the error message in \`StructType\` |  Major | SQL | Xiao Li | Xiayun Sun |
| [SPARK-23598](https://issues.apache.org/jira/browse/SPARK-23598) | WholeStageCodegen can lead to IllegalAccessError  calling append for HashAggregateExec |  Major | Spark Core | David Vogelbacher | Kazuaki Ishizaki |
| [SPARK-23658](https://issues.apache.org/jira/browse/SPARK-23658) | InProcessAppHandle uses the wrong class in getLogger |  Minor | Spark Submit | Sahil Takiar | Sahil Takiar |
| [SPARK-23671](https://issues.apache.org/jira/browse/SPARK-23671) | SHS is ignoring number of replay threads |  Critical | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23608](https://issues.apache.org/jira/browse/SPARK-23608) | SHS needs synchronization between attachSparkUI and detachSparkUI functions |  Minor | Spark Core, Web UI | Ye Zhou | Ye Zhou |
| [SPARK-23670](https://issues.apache.org/jira/browse/SPARK-23670) | Memory leak of SparkPlanGraphWrapper in sparkUI |  Major | SQL | Myroslav Lisniak | Myroslav Lisniak |
| [SPARK-23623](https://issues.apache.org/jira/browse/SPARK-23623) | Avoid concurrent use of cached KafkaConsumer in CachedKafkaConsumer (kafka-0-10-sql) |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23728](https://issues.apache.org/jira/browse/SPARK-23728) | ML test with expected exceptions testing streaming fails on 2.3 |  Major | ML, Tests | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23660](https://issues.apache.org/jira/browse/SPARK-23660) | Yarn throws exception in cluster mode when the application is small |  Minor | YARN | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23288](https://issues.apache.org/jira/browse/SPARK-23288) | Incorrect number of written records in structured streaming |  Major | SQL, Structured Streaming | Yuriy Bondaruk | Gabor Somogyi |
| [SPARK-23729](https://issues.apache.org/jira/browse/SPARK-23729) | Glob resolution breaks remote naming of files/archives |  Major | Spark Submit | Mihaly Toth | Mihaly Toth |
| [SPARK-23760](https://issues.apache.org/jira/browse/SPARK-23760) | CodegenContext.withSubExprEliminationExprs should save/restore CSE state correctly |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-23599](https://issues.apache.org/jira/browse/SPARK-23599) | The UUID() expression is too non-deterministic |  Critical | SQL | Herman van Hovell | Liang-Chi Hsieh |
| [SPARK-23614](https://issues.apache.org/jira/browse/SPARK-23614) | Union produces incorrect results when caching is used |  Major | SQL | Morten Hornbech | Liang-Chi Hsieh |
| [SPARK-23759](https://issues.apache.org/jira/browse/SPARK-23759) | Unable to bind Spark UI to specific host name / IP |  Major | Spark Core, Web UI | Felix Albani | Felix Albani |
| [SPARK-23788](https://issues.apache.org/jira/browse/SPARK-23788) | Race condition in StreamingQuerySuite |  Minor | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23806](https://issues.apache.org/jira/browse/SPARK-23806) | Broadcast. unpersist can cause fatal exception when used with dynamic allocation |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-23639](https://issues.apache.org/jira/browse/SPARK-23639) | SparkSQL CLI fails talk to Kerberized metastore when use proxy user |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-23808](https://issues.apache.org/jira/browse/SPARK-23808) | Test spark sessions should set default session |  Major | SQL | Jose Torres | Jose Torres |
| [SPARK-23827](https://issues.apache.org/jira/browse/SPARK-23827) | StreamingJoinExec should ensure that input data is partitioned into specific number of partitions |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23802](https://issues.apache.org/jira/browse/SPARK-23802) | PropagateEmptyRelation can leave query plan in unresolved state |  Minor | SQL | Robert Kruszewski | Robert Kruszewski |
| [SPARK-23868](https://issues.apache.org/jira/browse/SPARK-23868) | Fix scala.MatchError in literals.sql.out |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-23637](https://issues.apache.org/jira/browse/SPARK-23637) | Yarn might allocate more resource if a same executor is killed multiple times. |  Major | YARN | jin xing | jin xing |
| [SPARK-23823](https://issues.apache.org/jira/browse/SPARK-23823) | ResolveReferences loses correct origin |  Major | SQL | Jiahui Jiang | Jiahui Jiang |
| [SPARK-23809](https://issues.apache.org/jira/browse/SPARK-23809) | Active SparkSession should be set by getOrCreate |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-23816](https://issues.apache.org/jira/browse/SPARK-23816) | FetchFailedException when killing speculative task |  Major | SQL | chen xiao | Imran Rashid |
| [SPARK-23971](https://issues.apache.org/jira/browse/SPARK-23971) | Should not leak Spark sessions across test suites |  Major | SQL, Tests | Eric Liang | Eric Liang |
| [SPARK-23815](https://issues.apache.org/jira/browse/SPARK-23815) | Spark writer dynamic partition overwrite mode fails to write output on multi level partition |  Major | Spark Core | Fangshi Li | Fangshi Li |
| [SPARK-23835](https://issues.apache.org/jira/browse/SPARK-23835) | When Dataset.as converts column from nullable to non-nullable type, null Doubles are converted silently to -1 |  Major | SQL | Joseph K. Bradley | Marco Gaido |
| [SPARK-23986](https://issues.apache.org/jira/browse/SPARK-23986) | CompileException when using too many avg aggregation after joining |  Major | SQL | Michel Davit | Marco Gaido |
| [SPARK-24007](https://issues.apache.org/jira/browse/SPARK-24007) | EqualNullSafe for FloatType and DoubleType might generate a wrong result by codegen. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-23989](https://issues.apache.org/jira/browse/SPARK-23989) | When using \`SortShuffleWriter\`, the data will be overwritten |  Critical | Spark Core | liuxian | Wenchen Fan |
| [SPARK-24022](https://issues.apache.org/jira/browse/SPARK-24022) | Flaky test: SparkContextSuite |  Major | Spark Core, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-24033](https://issues.apache.org/jira/browse/SPARK-24033) | LAG Window function broken in Spark 2.3 |  Major | SQL | Emlyn Corrin | Xiao Li |
| [SPARK-23004](https://issues.apache.org/jira/browse/SPARK-23004) | Structured Streaming raise "llegalStateException: Cannot remove after already committed or aborted" |  Major | Structured Streaming | secfree | Tathagata Das |
| [SPARK-24002](https://issues.apache.org/jira/browse/SPARK-24002) | Task not serializable caused by org.apache.parquet.io.api.Binary$ByteBufferBackedBinary.getBytes |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-24062](https://issues.apache.org/jira/browse/SPARK-24062) | SASL encryption cannot be worked in ThriftServer |  Major | Spark Core, SQL | Saisai Shao | Saisai Shao |
| [SPARK-24085](https://issues.apache.org/jira/browse/SPARK-24085) | Scalar subquery error |  Major | SQL | Alexey Baturin | Dilip Biswal |
| [SPARK-24104](https://issues.apache.org/jira/browse/SPARK-24104) | SQLAppStatusListener overwrites metrics onDriverAccumUpdates instead of updating them |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23853](https://issues.apache.org/jira/browse/SPARK-23853) | Skip doctests which require hive support built in PySpark |  Trivial | PySpark, SQL | holdenk | Dongjoon Hyun |
| [SPARK-23941](https://issues.apache.org/jira/browse/SPARK-23941) | Mesos task failed on specific spark app name |  Major | Mesos, Spark Submit | bounkong khamphousone | bounkong khamphousone |
| [SPARK-24107](https://issues.apache.org/jira/browse/SPARK-24107) | ChunkedByteBuffer.writeFully method has not reset the limit value |  Blocker | Block Manager, Input/Output | wangjinhai | wangjinhai |
| [SPARK-24133](https://issues.apache.org/jira/browse/SPARK-24133) | Reading Parquet files containing large strings can fail with java.lang.ArrayIndexOutOfBoundsException |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-23489](https://issues.apache.org/jira/browse/SPARK-23489) | Flaky Test: HiveExternalCatalogVersionsSuite |  Major | SQL, Tests | Marco Gaido | Dongjoon Hyun |
| [SPARK-24166](https://issues.apache.org/jira/browse/SPARK-24166) | InMemoryTableScanExec should not access SQLConf at executor side |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24169](https://issues.apache.org/jira/browse/SPARK-24169) | JsonToStructs should not access SQLConf at executor side |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23433](https://issues.apache.org/jira/browse/SPARK-23433) | java.lang.IllegalStateException: more than one active taskSet for stage |  Major | Spark Core | Shixiong Zhu | Imran Rashid |
| [SPARK-24168](https://issues.apache.org/jira/browse/SPARK-24168) | WindowExec should not access SQLConf at executor side |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23697](https://issues.apache.org/jira/browse/SPARK-23697) | Accumulators of Spark 1.x no longer work with Spark 2.x |  Major | Spark Core | Sergey Zhemzhitsky | Wenchen Fan |
| [SPARK-23775](https://issues.apache.org/jira/browse/SPARK-23775) | Flaky test: DataFrameRangeSuite |  Major | SQL, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-24068](https://issues.apache.org/jira/browse/SPARK-24068) | CSV schema inferring doesn't work for compressed files |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24214](https://issues.apache.org/jira/browse/SPARK-24214) | StreamingRelationV2/StreamingExecutionRelation/ContinuousExecutionRelation.toJSON should not fail |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-23852](https://issues.apache.org/jira/browse/SPARK-23852) | Parquet MR bug can lead to incorrect SQL results |  Blocker | SQL | Henry Robinson | Ryan Blue |
| [SPARK-19181](https://issues.apache.org/jira/browse/SPARK-19181) | SparkListenerSuite.local metrics fails when average executorDeserializeTime is too short. |  Minor | Tests | Jose Soltren | Attila Zsolt Piros |
| [SPARK-10878](https://issues.apache.org/jira/browse/SPARK-10878) | Race condition when resolving Maven coordinates via Ivy |  Minor | Spark Core | Ryan Williams | Kazuaki Ishizaki |
| [SPARK-24067](https://issues.apache.org/jira/browse/SPARK-24067) | Backport SPARK-17147 to 2.3 (Spark Streaming Kafka 0.10 Consumer Can't Handle Non-consecutive Offsets (i.e. Log Compaction)) |  Major | DStreams | Joachim Hereth | Cody Koeninger |
| [SPARK-24255](https://issues.apache.org/jira/browse/SPARK-24255) | Require Java 8 in SparkR description |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-24263](https://issues.apache.org/jira/browse/SPARK-24263) | SparkR java check breaks on openjdk |  Blocker | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-23780](https://issues.apache.org/jira/browse/SPARK-23780) | Failed to use googleVis library with new SparkR |  Major | SparkR | Ivan Dzikovsky | Felix Cheung |
| [SPARK-24259](https://issues.apache.org/jira/browse/SPARK-24259) | ArrayWriter for Arrow produces wrong output |  Critical | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-21945](https://issues.apache.org/jira/browse/SPARK-21945) | pyspark --py-files doesn't work in yarn client mode |  Major | PySpark | Thomas Graves | Hyukjin Kwon |
| [SPARK-22371](https://issues.apache.org/jira/browse/SPARK-22371) | dag-scheduler-event-loop thread stopped with error  Attempted to access garbage collected accumulator 5605982 |  Major | Spark Core | Mayank Agarwal | Artem Rudoy |
| [SPARK-23850](https://issues.apache.org/jira/browse/SPARK-23850) | We should not redact username\|user\|url from UI by default |  Major | Web UI | Thomas Graves | Marcelo Vanzin |
| [SPARK-24309](https://issues.apache.org/jira/browse/SPARK-24309) | AsyncEventQueue should handle an interrupt from a Listener |  Blocker | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-24313](https://issues.apache.org/jira/browse/SPARK-24313) | Collection functions interpreted execution doesn't work with complex types |  Critical | SQL | Marco Gaido | Marco Gaido |
| [SPARK-24257](https://issues.apache.org/jira/browse/SPARK-24257) | LongToUnsafeRowMap calculate the new size may be wrong |  Blocker | SQL | dzcxzl | dzcxzl |
| [SPARK-24322](https://issues.apache.org/jira/browse/SPARK-24322) | Upgrade Apache ORC to 1.4.4 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24364](https://issues.apache.org/jira/browse/SPARK-24364) | Files deletion after globbing may fail StructuredStreaming jobs |  Major | Structured Streaming | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24230](https://issues.apache.org/jira/browse/SPARK-24230) | With Parquet 1.10 upgrade has errors in the vectorized reader |  Major | SQL | Ian O Connell | Ryan Blue |
| [SPARK-24373](https://issues.apache.org/jira/browse/SPARK-24373) | "df.cache() df.count()" no longer eagerly caches data when the analyzed plans are different after re-analyzing the plans |  Blocker | SQL | Wenbo Zhao | Marco Gaido |
| [SPARK-19613](https://issues.apache.org/jira/browse/SPARK-19613) | Flaky test: StateStoreRDDSuite |  Minor | Structured Streaming, Tests | Kay Ousterhout | Dongjoon Hyun |
| [SPARK-23991](https://issues.apache.org/jira/browse/SPARK-23991) | data loss when allocateBlocksToBatch |  Major | DStreams, Input/Output | kevin fu | Gabor Somogyi |
| [SPARK-23754](https://issues.apache.org/jira/browse/SPARK-23754) | StopIterator exception in Python UDF results in partial result |  Blocker | PySpark | Li Jin | Emilio Dorigatti |
| [SPARK-24384](https://issues.apache.org/jira/browse/SPARK-24384) | spark-submit --py-files with .py files doesn't work in client mode before context initialization |  Major | PySpark, Spark Submit | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23649](https://issues.apache.org/jira/browse/SPARK-23649) | CSV schema inferring fails on some UTF-8 chars |  Major | SQL | Maxim Gekk |  |
| [SPARK-24414](https://issues.apache.org/jira/browse/SPARK-24414) | Stages page doesn't show all task attempts when failures |  Critical | Web UI | Thomas Graves | Marcelo Vanzin |
| [SPARK-24399](https://issues.apache.org/jira/browse/SPARK-24399) | Reused Exchange is used where it should not be |  Critical | SQL | David Vrba |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22882](https://issues.apache.org/jira/browse/SPARK-22882) | ML test for StructuredStreaming: spark.ml.classification |  Major | ML, Tests | Joseph K. Bradley | Weichen Xu |
| [SPARK-22915](https://issues.apache.org/jira/browse/SPARK-22915) | ML test for StructuredStreaming: spark.ml.feature, N-Z |  Major | ML, Tests | Joseph K. Bradley | Attila Zsolt Piros |
| [SPARK-23881](https://issues.apache.org/jira/browse/SPARK-23881) | Flaky test: JobCancellationSuite."interruptible iterator of shuffle reader" |  Major | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-22883](https://issues.apache.org/jira/browse/SPARK-22883) | ML test for StructuredStreaming: spark.ml.feature, A-M |  Major | ML, Tests | Joseph K. Bradley | Joseph K. Bradley |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23706](https://issues.apache.org/jira/browse/SPARK-23706) | spark.conf.get(value, default=None) should produce None in PySpark |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23748](https://issues.apache.org/jira/browse/SPARK-23748) | Support select from temp tables |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-23942](https://issues.apache.org/jira/browse/SPARK-23942) | PySpark's collect doesn't trigger QueryExecutionListener |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24334](https://issues.apache.org/jira/browse/SPARK-24334) | Race condition in ArrowPythonRunner causes unclean shutdown of Arrow memory allocator |  Major | PySpark | Li Jin | Li Jin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23329](https://issues.apache.org/jira/browse/SPARK-23329) | Update the function descriptions with the arguments and returned values of the trigonometric functions |  Minor | SQL | Xiao Li | Mihaly Toth |
| [SPARK-23642](https://issues.apache.org/jira/browse/SPARK-23642) | isZero scaladoc for LongAccumulator describes wrong method |  Minor | Documentation | Sean | Sean |
| [SPARK-24378](https://issues.apache.org/jira/browse/SPARK-24378) | Incorrect examples for date\_trunc function in spark 2.3.0 |  Trivial | Documentation | Prakhar Gupta | Yuming Wang |
| [SPARK-24444](https://issues.apache.org/jira/browse/SPARK-24444) | Improve pandas\_udf GROUPED\_MAP docs to explain column assignment |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-23601](https://issues.apache.org/jira/browse/SPARK-23601) | Remove .md5 files from release |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-24392](https://issues.apache.org/jira/browse/SPARK-24392) | Mark pandas\_udf as Experimental |  Blocker | PySpark | Bryan Cutler | Bryan Cutler |


