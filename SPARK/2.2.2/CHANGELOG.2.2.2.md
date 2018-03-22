
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

## Release 2.2.2 - Unreleased (as of 2018-03-22)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22688](https://issues.apache.org/jira/browse/SPARK-22688) | Upgrade Janino version to 3.0.8 |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
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
| [SPARK-23525](https://issues.apache.org/jira/browse/SPARK-23525) | ALTER TABLE CHANGE COLUMN doesn't work for external hive table |  Major | SQL | Pavlo Skliar | Jiang Xingbo |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22603](https://issues.apache.org/jira/browse/SPARK-22603) | 64KB JVM bytecode limit problem with FormatString |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |


