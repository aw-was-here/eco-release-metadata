
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

## Release 2.2.2 - 2018-07-02



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22688](https://issues.apache.org/jira/browse/SPARK-22688) | Upgrade Janino version to 3.0.8 |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22897](https://issues.apache.org/jira/browse/SPARK-22897) | Expose  stageAttemptId in TaskContext |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-23963](https://issues.apache.org/jira/browse/SPARK-23963) | Queries on text-based Hive tables grow disproportionately slower as the number of columns increase |  Minor | SQL | Bruce Robbins | Bruce Robbins |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21278](https://issues.apache.org/jira/browse/SPARK-21278) | Upgrade to Py4J 0.10.6 |  Major | PySpark | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22607](https://issues.apache.org/jira/browse/SPARK-22607) | Set large stack size consistently for tests to avoid StackOverflowError |  Minor | Build, Tests | Sean Owen | Sean Owen |
| [SPARK-22637](https://issues.apache.org/jira/browse/SPARK-22637) | CatalogImpl.refresh() has quadratic complexity for a view |  Minor | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-22654](https://issues.apache.org/jira/browse/SPARK-22654) | Retry download of Spark from ASF mirror in HiveExternalCatalogVersionsSuite |  Minor | SQL, Tests | Sean Owen | Sean Owen |
| [SPARK-22635](https://issues.apache.org/jira/browse/SPARK-22635) | FileNotFoundException again while reading ORC files containing special characters |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-22373](https://issues.apache.org/jira/browse/SPARK-22373) | Intermittent NullPointerException in org.codehaus.janino.IClass.isAssignableFrom |  Minor | Spark Core | Dan Meany |  |
| [SPARK-22653](https://issues.apache.org/jira/browse/SPARK-22653) | executorAddress registered in CoarseGrainedSchedulerBackend.executorDataMap is null |  Major | Scheduler | Thomas Graves | Thomas Graves |
| [SPARK-22162](https://issues.apache.org/jira/browse/SPARK-22162) | Executors and the driver use inconsistent Job IDs during the new RDD commit protocol |  Major | Spark Core | Reza Safi | Reza Safi |
| [SPARK-22686](https://issues.apache.org/jira/browse/SPARK-22686) | DROP TABLE IF EXISTS should not show AnalysisException |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22289](https://issues.apache.org/jira/browse/SPARK-22289) | Cannot save LogisticRegressionModel with bounds on coefficients |  Major | ML | Nic Eggert | yuhao yang |
| [SPARK-22700](https://issues.apache.org/jira/browse/SPARK-22700) | Bucketizer.transform incorrectly drops row containing NaN |  Major | ML | zhengruifeng | zhengruifeng |
| [SPARK-22574](https://issues.apache.org/jira/browse/SPARK-22574) | Wrong request causing Spark Dispatcher going inactive |  Minor | Mesos, Spark Submit | German Schiavon Matteo | German Schiavon Matteo |
| [SPARK-22817](https://issues.apache.org/jira/browse/SPARK-22817) | Use fixed testthat version for SparkR tests in AppVeyor |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22862](https://issues.apache.org/jira/browse/SPARK-22862) | Docs on lazy elimination of columns missing from an encoder. |  Major | SQL | Michael Armbrust | Michael Armbrust |
| [SPARK-22889](https://issues.apache.org/jira/browse/SPARK-22889) | CRAN checks can fail if older Spark install exists |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-22983](https://issues.apache.org/jira/browse/SPARK-22983) | Don't push filters beneath aggregates with empty grouping expressions |  Critical | SQL | Josh Rosen | Josh Rosen |
| [SPARK-22972](https://issues.apache.org/jira/browse/SPARK-22972) | Couldn't find corresponding Hive SerDe for data source provider org.apache.spark.sql.hive.orc. |  Major | SQL | xubo245 | xubo245 |
| [SPARK-22984](https://issues.apache.org/jira/browse/SPARK-22984) | Fix incorrect bitmap copying and offset shifting in GenerateUnsafeRowJoiner |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-22982](https://issues.apache.org/jira/browse/SPARK-22982) | Remove unsafe asynchronous close() call from FileDownloadChannel |  Blocker | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-23001](https://issues.apache.org/jira/browse/SPARK-23001) | NullPointerException when running desc database |  Major | SQL | ANDY GUAN | Xiao Li |
| [SPARK-22975](https://issues.apache.org/jira/browse/SPARK-22975) | MetricsReporter producing NullPointerException when there was no progress reported |  Major | Structured Streaming | Yuriy Bondaruk | Marco Gaido |
| [SPARK-23038](https://issues.apache.org/jira/browse/SPARK-23038) | Update docker/spark-test (JDK/OS) |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23281](https://issues.apache.org/jira/browse/SPARK-23281) | Query produces results in incorrect order when a composite order by clause refers to both original columns and aliases |  Major | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-23186](https://issues.apache.org/jira/browse/SPARK-23186) | Initialize DriverManager first before loading Drivers |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23358](https://issues.apache.org/jira/browse/SPARK-23358) | When the number of partitions is greater than 2^28, it will result in an error result |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-23376](https://issues.apache.org/jira/browse/SPARK-23376) | creating UnsafeKVExternalSorter with BytesToBytesMap may fail |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23391](https://issues.apache.org/jira/browse/SPARK-23391) | It may lead to overflow for some integer multiplication |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-23230](https://issues.apache.org/jira/browse/SPARK-23230) | When hive.default.fileformat is other kinds of file types, create textfile table cause a serde error |  Minor | SQL | dzcxzl | dzcxzl |
| [SPARK-23053](https://issues.apache.org/jira/browse/SPARK-23053) | taskBinarySerialization and task partitions calculate in DagScheduler.submitMissingTasks should keep the same RDD checkpoint status |  Major | Scheduler, Spark Core | huangtengfei | huangtengfei |
| [SPARK-23434](https://issues.apache.org/jira/browse/SPARK-23434) | Spark should not warn \`metadata directory\` for a HDFS file path |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23438](https://issues.apache.org/jira/browse/SPARK-23438) | DStreams could lose blocks with WAL enabled when driver crashes |  Critical | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23508](https://issues.apache.org/jira/browse/SPARK-23508) | blockManagerIdCache in BlockManagerId may cause oom |  Major | Deploy, Spark Core | zhoukang | zhoukang |
| [SPARK-23525](https://issues.apache.org/jira/browse/SPARK-23525) | ALTER TABLE CHANGE COLUMN doesn't work for external hive table |  Major | SQL | Pavlo Skliar | Xingbo Jiang |
| [SPARK-23759](https://issues.apache.org/jira/browse/SPARK-23759) | Unable to bind Spark UI to specific host name / IP |  Major | Spark Core, Web UI | Felix Albani | Felix Albani |
| [SPARK-23788](https://issues.apache.org/jira/browse/SPARK-23788) | Race condition in StreamingQuerySuite |  Minor | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23816](https://issues.apache.org/jira/browse/SPARK-23816) | FetchFailedException when killing speculative task |  Major | SQL | chen xiao | Imran Rashid |
| [SPARK-24007](https://issues.apache.org/jira/browse/SPARK-24007) | EqualNullSafe for FloatType and DoubleType might generate a wrong result by codegen. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-23941](https://issues.apache.org/jira/browse/SPARK-23941) | Mesos task failed on specific spark app name |  Major | Mesos, Spark Submit | bounkong khamphousone | bounkong khamphousone |
| [SPARK-23489](https://issues.apache.org/jira/browse/SPARK-23489) | Flaky Test: HiveExternalCatalogVersionsSuite |  Major | SQL, Tests | Marco Gaido | Dongjoon Hyun |
| [SPARK-23433](https://issues.apache.org/jira/browse/SPARK-23433) | java.lang.IllegalStateException: more than one active taskSet for stage |  Major | Spark Core | Shixiong Zhu | Imran Rashid |
| [SPARK-23697](https://issues.apache.org/jira/browse/SPARK-23697) | Accumulators of Spark 1.x no longer work with Spark 2.x |  Major | Spark Core | Sergey Zhemzhitsky | Wenchen Fan |
| [SPARK-23850](https://issues.apache.org/jira/browse/SPARK-23850) | We should not redact username\|user\|url from UI by default |  Major | Web UI | Thomas Graves | Marcelo Vanzin |
| [SPARK-24257](https://issues.apache.org/jira/browse/SPARK-24257) | LongToUnsafeRowMap calculate the new size may be wrong |  Blocker | SQL | dzcxzl | dzcxzl |
| [SPARK-23649](https://issues.apache.org/jira/browse/SPARK-23649) | CSV schema inferring fails on some UTF-8 chars |  Major | SQL | Maxim Gekk |  |
| [SPARK-23732](https://issues.apache.org/jira/browse/SPARK-23732) | Broken link to scala source code in Spark Scala api Scaladoc |  Trivial | Build, Documentation, Project Infra | Yogesh Tewari | Marcelo Vanzin |
| [SPARK-24506](https://issues.apache.org/jira/browse/SPARK-24506) | Spark.ui.filters not applied to /sqlserver/ url |  Major | Web UI | t oo | Marco Gaido |
| [SPARK-24531](https://issues.apache.org/jira/browse/SPARK-24531) | HiveExternalCatalogVersionsSuite failing due to missing 2.2.0 version |  Blocker | Tests | Marco Gaido | Marco Gaido |
| [SPARK-24589](https://issues.apache.org/jira/browse/SPARK-24589) | OutputCommitCoordinator may allow duplicate commits |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24552](https://issues.apache.org/jira/browse/SPARK-24552) | Task attempt numbers are reused when stages are retried |  Blocker | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-24603](https://issues.apache.org/jira/browse/SPARK-24603) | Typo in comments |  Trivial | Spark Core | Fokko Driesprong | Fokko Driesprong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22603](https://issues.apache.org/jira/browse/SPARK-22603) | 64KB JVM bytecode limit problem with FormatString |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |


