
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

## Release 2.3.2 - Unreleased (as of 2018-09-12)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24542](https://issues.apache.org/jira/browse/SPARK-24542) | Hive UDF series UDFXPathXXXX allow users to pass carefully crafted XML to access arbitrary files |  Major | SQL | Xiao Li | Xiao Li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24455](https://issues.apache.org/jira/browse/SPARK-24455) | fix typo in TaskSchedulerImpl's comments |  Trivial | Spark Core | xueyu | xueyu |
| [SPARK-24696](https://issues.apache.org/jira/browse/SPARK-24696) | ColumnPruning rule fails to remove extra Project |  Major | SQL | Xiao Li | Maryann Xue |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23618](https://issues.apache.org/jira/browse/SPARK-23618) | docker-image-tool.sh Fails While Building Image |  Major | Kubernetes | Ninad Ingole |  |
| [SPARK-24369](https://issues.apache.org/jira/browse/SPARK-24369) | A bug when having multiple distinct aggregations |  Major | SQL | Xiao Li | Wenchen Fan |
| [SPARK-24468](https://issues.apache.org/jira/browse/SPARK-24468) | DecimalType \`adjustPrecisionScale\` might fail when scale is negative |  Minor | SQL | Yifei Wu | Marco Gaido |
| [SPARK-23732](https://issues.apache.org/jira/browse/SPARK-23732) | Broken link to scala source code in Spark Scala api Scaladoc |  Trivial | Build, Documentation, Project Infra | Yogesh Tewari | Marcelo Vanzin |
| [SPARK-24216](https://issues.apache.org/jira/browse/SPARK-24216) | Spark TypedAggregateExpression uses getSimpleName that is not safe in scala |  Major | SQL | Fangshi Li | Fangshi Li |
| [SPARK-24506](https://issues.apache.org/jira/browse/SPARK-24506) | Spark.ui.filters not applied to /sqlserver/ url |  Major | Web UI | t oo | Marco Gaido |
| [SPARK-24531](https://issues.apache.org/jira/browse/SPARK-24531) | HiveExternalCatalogVersionsSuite failing due to missing 2.2.0 version |  Blocker | Tests | Marco Gaido | Marco Gaido |
| [SPARK-24495](https://issues.apache.org/jira/browse/SPARK-24495) | SortMergeJoin with duplicate keys wrong results |  Blocker | SQL | Bogdan Raducanu | Marco Gaido |
| [SPARK-24452](https://issues.apache.org/jira/browse/SPARK-24452) | long = int\*int or long = int+int may cause overflow. |  Minor | Spark Core, SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-24583](https://issues.apache.org/jira/browse/SPARK-24583) | Wrong schema type in InsertIntoDataSourceCommand |  Major | SQL | Maryann Xue | Maryann Xue |
| [SPARK-24578](https://issues.apache.org/jira/browse/SPARK-24578) | Reading remote cache block behavior changes and causes timeout issue |  Blocker | Spark Core | Wenbo Zhao | Wenbo Zhao |
| [SPARK-24613](https://issues.apache.org/jira/browse/SPARK-24613) | Cache with UDF could not be matched with subsequent dependent caches |  Minor | SQL | Maryann Xue | Maryann Xue |
| [SPARK-24589](https://issues.apache.org/jira/browse/SPARK-24589) | OutputCommitCoordinator may allow duplicate commits |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24588](https://issues.apache.org/jira/browse/SPARK-24588) | StreamingSymmetricHashJoinExec should require HashClusteredPartitioning from children |  Blocker | Structured Streaming | Wenchen Fan | Wenchen Fan |
| [SPARK-24552](https://issues.apache.org/jira/browse/SPARK-24552) | Task attempt numbers are reused when stages are retried |  Blocker | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-24603](https://issues.apache.org/jira/browse/SPARK-24603) | Typo in comments |  Trivial | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-24385](https://issues.apache.org/jira/browse/SPARK-24385) | Trivially-true EqualNullSafe should be handled like EqualTo in Dataset.join |  Major | SQL | Daniel Shields | Marco Gaido |
| [SPARK-24704](https://issues.apache.org/jira/browse/SPARK-24704) | The order of stages in the DAG graph is incorrect |  Minor | Web UI | StanZhai | StanZhai |
| [SPARK-24535](https://issues.apache.org/jira/browse/SPARK-24535) | Fix java version parsing in SparkR on Windows |  Blocker | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-24739](https://issues.apache.org/jira/browse/SPARK-24739) | PySpark does not work with Python 3.7.0 |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24530](https://issues.apache.org/jira/browse/SPARK-24530) | Sphinx doesn't render autodoc\_docstring\_signature correctly (with Python 2?) and pyspark.ml docs are broken |  Critical | ML, PySpark | Xiangrui Meng | Hyukjin Kwon |
| [SPARK-24781](https://issues.apache.org/jira/browse/SPARK-24781) | Using a reference from Dataset in Filter/Sort might not work. |  Blocker | SQL | Takuya Ueshin | Liang-Chi Hsieh |
| [SPARK-24813](https://issues.apache.org/jira/browse/SPARK-24813) | HiveExternalCatalogVersionsSuite still flaky; fall back to Apache archive |  Major | Tests | Sean Owen | Sean Owen |
| [SPARK-23731](https://issues.apache.org/jira/browse/SPARK-23731) | FileSourceScanExec throws NullPointerException in subexpression elimination |  Major | SQL | Jacek Laskowski | Hyukjin Kwon |
| [SPARK-24879](https://issues.apache.org/jira/browse/SPARK-24879) | NPE in Hive partition filter pushdown for \`partCol IN (NULL, ....)\` |  Major | SQL | William Sheu | William Sheu |
| [SPARK-24908](https://issues.apache.org/jira/browse/SPARK-24908) | [R] remove spaces to make lintr happy |  Critical | Build | shane knapp | shane knapp |
| [SPARK-24891](https://issues.apache.org/jira/browse/SPARK-24891) | Fix HandleNullInputsForUDF rule |  Major | SQL | Maryann Xue | Maryann Xue |
| [SPARK-24867](https://issues.apache.org/jira/browse/SPARK-24867) | Add AnalysisBarrier to DataFrameWriter |  Blocker | SQL | Xiao Li | Xiao Li |
| [SPARK-24927](https://issues.apache.org/jira/browse/SPARK-24927) | The hadoop-provided profile doesn't play well with Snappy-compressed Parquet files |  Major | Build | Cheng Lian | Cheng Lian |
| [SPARK-24809](https://issues.apache.org/jira/browse/SPARK-24809) | Serializing LongHashedRelation in executor may result in data error |  Critical | SQL | Lijia Liu | Lijia Liu |
| [SPARK-24934](https://issues.apache.org/jira/browse/SPARK-24934) | Complex type and binary type in in-memory partition pruning does not work due to missing upper/lower bounds cases |  Critical | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24957](https://issues.apache.org/jira/browse/SPARK-24957) | Decimal arithmetic can lead to wrong values using codegen |  Major | SQL | David Vogelbacher | Marco Gaido |
| [SPARK-24536](https://issues.apache.org/jira/browse/SPARK-24536) | Query with nonsensical LIMIT hits AssertionError |  Trivial | SQL | Alexander Behm |  |
| [SPARK-24987](https://issues.apache.org/jira/browse/SPARK-24987) | Kafka Cached Consumer Leaking File Descriptors |  Critical | Structured Streaming | Yuval Itzchakov | Yuval Itzchakov |
| [SPARK-24948](https://issues.apache.org/jira/browse/SPARK-24948) | SHS filters wrongly some applications due to permission check |  Blocker | Web UI | Marco Gaido | Marco Gaido |
| [SPARK-25076](https://issues.apache.org/jira/browse/SPARK-25076) | SQLConf should not be retrieved from a stopped SparkSession |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24950](https://issues.apache.org/jira/browse/SPARK-24950) | scala DateTimeUtilsSuite daysToMillis and millisToDays fails w/java 8 181-b13 |  Major | Build, Tests | shane knapp | Chris Martin |
| [SPARK-25084](https://issues.apache.org/jira/browse/SPARK-25084) | "distribute by" on multiple columns may lead to codegen issue |  Blocker | SQL | yucai | yucai |
| [SPARK-25028](https://issues.apache.org/jira/browse/SPARK-25028) | AnalyzePartitionCommand failed with NPE if value is null |  Major | Spark Core | Izek Greenfield | Marco Gaido |
| [SPARK-25051](https://issues.apache.org/jira/browse/SPARK-25051) | where clause on dataset gives AnalysisException |  Blocker | SQL | MIK | Marco Gaido |
| [SPARK-25144](https://issues.apache.org/jira/browse/SPARK-25144) | distinct on Dataset leads to exception due to Managed memory leak detected |  Major | SQL | Ayoub Benali | Dongjoon Hyun |
| [SPARK-25114](https://issues.apache.org/jira/browse/SPARK-25114) | RecordBinaryComparator may return wrong result when subtraction between two words is divisible by Integer.MAX\_VALUE |  Blocker | Spark Core | Xingbo Jiang | Xingbo Jiang |
| [SPARK-25164](https://issues.apache.org/jira/browse/SPARK-25164) | Parquet reader builds entire list of columns once for each column |  Minor | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-25205](https://issues.apache.org/jira/browse/SPARK-25205) | typo in spark.network.crypto.keyFactoryIteration |  Trivial | Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-25124](https://issues.apache.org/jira/browse/SPARK-25124) | VectorSizeHint.size is buggy, breaking streaming pipeline |  Major | ML | Timothy Hunter | Huaxin Gao |
| [SPARK-24909](https://issues.apache.org/jira/browse/SPARK-24909) | Spark scheduler can hang when fetch failures, executor lost, task running on lost executor, and multiple stage attempts |  Critical | Scheduler | Thomas Graves | Thomas Graves |
| [SPARK-24415](https://issues.apache.org/jira/browse/SPARK-24415) | Stage page aggregated executor metrics wrong when failures |  Critical | Web UI | Thomas Graves | Ankur Gupta |
| [SPARK-25231](https://issues.apache.org/jira/browse/SPARK-25231) | Running a Large Job with Speculation On Causes Executor Heartbeats to Time Out on Driver |  Major | Scheduler, Spark Core | Parth Gandhi | Parth Gandhi |
| [SPARK-23243](https://issues.apache.org/jira/browse/SPARK-23243) | Shuffle+Repartition on an RDD could lead to incorrect answers |  Blocker | Spark Core | Xingbo Jiang | Wenchen Fan |
| [SPARK-25313](https://issues.apache.org/jira/browse/SPARK-25313) | Fix regression in FileFormatWriter output schema |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-25330](https://issues.apache.org/jira/browse/SPARK-25330) | Permission issue after upgrade hadoop version to 2.7.7 |  Major | Build | Yuming Wang | Yuming Wang |
| [SPARK-25368](https://issues.apache.org/jira/browse/SPARK-25368) | Incorrect constraint inference returns wrong result |  Blocker | Optimizer, SQL | Lev Katzav | Yuming Wang |
| [SPARK-24889](https://issues.apache.org/jira/browse/SPARK-24889) | dataset.unpersist() doesn't update storage memory stats |  Major | Spark Core | Yuri Bogomolov | Liang-Chi Hsieh |
| [SPARK-25371](https://issues.apache.org/jira/browse/SPARK-25371) | Vector Assembler with no input columns leads to opaque error |  Trivial | ML, MLlib | Victor Alor | Marco Gaido |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24502](https://issues.apache.org/jira/browse/SPARK-24502) | flaky test: UnsafeRowSerializerSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24521](https://issues.apache.org/jira/browse/SPARK-24521) | Fix ineffective test in CachedTableSuite |  Minor | SQL | Li Jin | Li Jin |
| [SPARK-24564](https://issues.apache.org/jira/browse/SPARK-24564) | Add test suite for RecordBinaryComparator |  Minor | SQL | Xingbo Jiang | Xingbo Jiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24976](https://issues.apache.org/jira/browse/SPARK-24976) | Allow None for Decimal type conversion (specific to PyArrow 0.9.0) |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24507](https://issues.apache.org/jira/browse/SPARK-24507) | Description in "Level of Parallelism in Data Receiving" section of Spark Streaming Programming Guide in is not relevan for the recent Kafka direct apprach |  Minor | Documentation, DStreams | Lev Greenberg | Rekha Joshi |
| [SPARK-25234](https://issues.apache.org/jira/browse/SPARK-25234) | SparkR:::parallelize doesn't handle integer overflow properly |  Major | SparkR | Xiangrui Meng | Xiangrui Meng |
| [SPARK-25273](https://issues.apache.org/jira/browse/SPARK-25273) | How to install testthat v1.0.2 |  Major | Documentation | Maxim Gekk | Maxim Gekk |


