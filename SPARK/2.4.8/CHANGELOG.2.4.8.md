
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

## Release 2.4.8 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32090](https://issues.apache.org/jira/browse/SPARK-32090) | UserDefinedType.equal() does not have symmetry |  Major | SQL | wuyi | wuyi |
| [SPARK-33156](https://issues.apache.org/jira/browse/SPARK-33156) | Upgrade GithubAction image from 18.04 to 20.04 |  Major | Project Infra | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33123](https://issues.apache.org/jira/browse/SPARK-33123) | Ignore \`GitHub Action file\` change in Amplab Jenkins |  Major | Tests | William Hyun | William Hyun |
| [SPARK-33228](https://issues.apache.org/jira/browse/SPARK-33228) | Don't uncache data when replacing an existing view having the same plan |  Major | SQL | Takeshi Yamamuro | Takeshi Yamamuro |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-25271](https://issues.apache.org/jira/browse/SPARK-25271) | Creating parquet table with all the column null throws exception |  Critical | SQL | Shivu Sondur | L. C. Hsieh |
| [SPARK-27872](https://issues.apache.org/jira/browse/SPARK-27872) | Driver and executors use a different service account breaking pull secrets |  Major | Kubernetes, Spark Core | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-29574](https://issues.apache.org/jira/browse/SPARK-29574) | spark with user provided hadoop doesn't work on kubernetes |  Major | Kubernetes, Spark Core | Michał Wesołowski | Shahin Shakeri |
| [SPARK-30201](https://issues.apache.org/jira/browse/SPARK-30201) | HiveOutputWriter standardOI should use ObjectInspectorCopyOption.DEFAULT |  Critical | SQL | ulysses you | ulysses you |
| [SPARK-31882](https://issues.apache.org/jira/browse/SPARK-31882) | DAG-viz is not rendered correctly with pagination. |  Major | Web UI | Kousuke Saruta | Kousuke Saruta |
| [SPARK-32815](https://issues.apache.org/jira/browse/SPARK-32815) | Fix LibSVM data source loading error on file paths with glob metacharacters |  Major | MLlib | Maxim Gekk | Maxim Gekk |
| [SPARK-32836](https://issues.apache.org/jira/browse/SPARK-32836) | Fix DataStreamReaderWriterSuite to check writer options correctly |  Major | Structured Streaming, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32832](https://issues.apache.org/jira/browse/SPARK-32832) | Use CaseInsensitiveMap for DataStreamReader/Writer options |  Major | Structured Streaming | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32794](https://issues.apache.org/jira/browse/SPARK-32794) | Rare corner case error in micro-batch engine with some stateful queries + no-data-batches + V1 streaming sources |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-32845](https://issues.apache.org/jira/browse/SPARK-32845) | Add sinkParameter to check sink options robustly in DataStreamReaderWriterSuite |  Minor | SQL | Wenchen Fan | Dongjoon Hyun |
| [SPARK-32865](https://issues.apache.org/jira/browse/SPARK-32865) | python section in quickstart page doesn't display SPARK\_VERSION correctly |  Minor | docs, Documentation | Bowen Li | Bowen Li |
| [SPARK-32708](https://issues.apache.org/jira/browse/SPARK-32708) | Query optimization fails to reuse exchange with DataSourceV2 |  Major | SQL | Mingjia Liu | Mingjia Liu |
| [SPARK-32872](https://issues.apache.org/jira/browse/SPARK-32872) | BytesToBytesMap at MAX\_CAPACITY exceeds growth threshold |  Major | Spark Core | Ankur Dave | Ankur Dave |
| [SPARK-32715](https://issues.apache.org/jira/browse/SPARK-32715) | Broadcast block pieces may memory leak |  Major | Spark Core | Lantao Jin | Lantao Jin |
| [SPARK-32738](https://issues.apache.org/jira/browse/SPARK-32738) | thread safe endpoints may hang due to fatal error |  Major | Spark Core | Zhenhua Wang | Zhenhua Wang |
| [SPARK-32900](https://issues.apache.org/jira/browse/SPARK-32900) | UnsafeExternalSorter.SpillableIterator cannot spill when there are NULLs in the input and radix sorting is used. |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-32635](https://issues.apache.org/jira/browse/SPARK-32635) | When pyspark.sql.functions.lit() function is used with dataframe cache, it returns wrong result |  Blocker | SQL | Vinod KC | Peter Toth |
| [SPARK-32908](https://issues.apache.org/jira/browse/SPARK-32908) | percentile\_approx() returns incorrect results |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-32898](https://issues.apache.org/jira/browse/SPARK-32898) | totalExecutorRunTimeMs is too big |  Major | Spark Core | Linhong Liu | wuyi |
| [SPARK-32886](https://issues.apache.org/jira/browse/SPARK-32886) | '.../jobs/undefined' link from "Event Timeline" in jobs page |  Minor | Web UI | Zhen Li | Zhen Li |
| [SPARK-32999](https://issues.apache.org/jira/browse/SPARK-32999) | TreeNode.nodeName should not throw malformed class name error |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-32901](https://issues.apache.org/jira/browse/SPARK-32901) | UnsafeExternalSorter may cause a SparkOutOfMemoryError to be thrown while spilling |  Major | Spark Core | Tom van Bussel | Tom van Bussel |
| [SPARK-33094](https://issues.apache.org/jira/browse/SPARK-33094) | ORC format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33101](https://issues.apache.org/jira/browse/SPARK-33101) | LibSVM format does not propagate Hadoop config from DS options to underlying HDFS file system |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-33136](https://issues.apache.org/jira/browse/SPARK-33136) | Handling nullability for complex types is broken during resolution of V2 write command |  Major | SQL | Jungtaek Lim | Jungtaek Lim |
| [SPARK-33131](https://issues.apache.org/jira/browse/SPARK-33131) | Fix grouping sets with having clause can not resolve qualified col name |  Major | SQL | ulysses you | ulysses you |
| [SPARK-33217](https://issues.apache.org/jira/browse/SPARK-33217) | Set upper bound of Pandas and PyArrow version in GitHub Actions in branch-2.4 |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-33230](https://issues.apache.org/jira/browse/SPARK-33230) | FileOutputWriter jobs have duplicate JobIDs if launched in same second |  Major | SQL | Steve Loughran | Steve Loughran |
| [SPARK-33183](https://issues.apache.org/jira/browse/SPARK-33183) | Bug in optimizer rule EliminateSorts |  Major | SQL | Allison Wang | Allison Wang |
| [SPARK-33268](https://issues.apache.org/jira/browse/SPARK-33268) | Fix bugs for casting data from/to PythonUserDefinedType |  Major | PySpark, SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-33292](https://issues.apache.org/jira/browse/SPARK-33292) | Make Literal ArrayBasedMapData string representation disambiguous |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33290](https://issues.apache.org/jira/browse/SPARK-33290) | REFRESH TABLE should invalidate cache even though the table itself may not be cached |  Major | SQL | Chao Sun | Chao Sun |
| [SPARK-33313](https://issues.apache.org/jira/browse/SPARK-33313) | R/run-tests.sh is not compatible with testthat \>= 3.0 |  Major | R, Tests | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-33333](https://issues.apache.org/jira/browse/SPARK-33333) | Upgrade Jetty to 9.4.28.v20200408 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33338](https://issues.apache.org/jira/browse/SPARK-33338) | GROUP BY using literal map should not fail |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33372](https://issues.apache.org/jira/browse/SPARK-33372) | Fix InSet bucket pruning |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-33405](https://issues.apache.org/jira/browse/SPARK-33405) | Upgrade commons-compress to 1.20 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-33339](https://issues.apache.org/jira/browse/SPARK-33339) | Pyspark application will hang due to non Exception |  Major | PySpark | lrz | lrz |
| [SPARK-33417](https://issues.apache.org/jira/browse/SPARK-33417) | Correct the behaviour of query filters in TPCDSQueryBenchmark |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-26646](https://issues.apache.org/jira/browse/SPARK-26646) | Flaky test: pyspark.mllib.tests.test\_streaming\_algorithms StreamingLogisticRegressionWithSGDTests.test\_training\_and\_prediction |  Major | MLlib, PySpark | Hyukjin Kwon | L. C. Hsieh |
| [SPARK-33051](https://issues.apache.org/jira/browse/SPARK-33051) | Uses setup-r to install R in GitHub Actions build |  Major | Project Infra, SparkR | Hyukjin Kwon | Hyukjin Kwon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-30894](https://issues.apache.org/jira/browse/SPARK-30894) | The nullability of Size function should not depend on SQLConf.get |  Blocker | SQL | Wenchen Fan | Maxim Gekk |
| [SPARK-33096](https://issues.apache.org/jira/browse/SPARK-33096) | Use LinkedHashMap instead of Map for newlyCreatedExecutors |  Minor | Kubernetes | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-32247](https://issues.apache.org/jira/browse/SPARK-32247) | scipy installation fails with PyPy |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-32888](https://issues.apache.org/jira/browse/SPARK-32888) | reading a parallized rdd with two identical records results in a zero count df when read via spark.read.csv |  Minor | Spark Core | Punit Shah | L. C. Hsieh |
| [SPARK-32306](https://issues.apache.org/jira/browse/SPARK-32306) | \`approx\_percentile\` in Spark SQL gives incorrect results |  Major | PySpark, SQL | Sean Malory | Maxim Gekk |


