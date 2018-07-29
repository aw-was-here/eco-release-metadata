
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

## Release 2.4.0 - Unreleased (as of 2018-07-29)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23680](https://issues.apache.org/jira/browse/SPARK-23680) | entrypoint.sh does not accept arbitrary UIDs, returning as an error |  Major | Kubernetes | Ricardo Martinelli de Oliveira | Ricardo Martinelli de Oliveira |
| [SPARK-24021](https://issues.apache.org/jira/browse/SPARK-24021) | Fix bug in BlacklistTracker's updateBlacklistForFetchFailure |  Major | Spark Core | wuyi | wuyi |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22119](https://issues.apache.org/jira/browse/SPARK-22119) | Add cosine distance to KMeans |  Minor | ML, MLlib | Marco Gaido | Marco Gaido |
| [SPARK-23235](https://issues.apache.org/jira/browse/SPARK-23235) | Add executor Threaddump to api |  Minor | Web UI | Imran Rashid | Attila Zsolt Piros |
| [SPARK-23541](https://issues.apache.org/jira/browse/SPARK-23541) | Allow Kafka source to read data with greater parallelism than the number of topic-partitions |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23751](https://issues.apache.org/jira/browse/SPARK-23751) | Kolmogorov-Smirnoff test Python API in pyspark.ml |  Major | ML, PySpark | Joseph K. Bradley | Weichen Xu |
| [SPARK-23948](https://issues.apache.org/jira/browse/SPARK-23948) | Trigger mapstage's job listener in submitMissingTasks |  Major | Scheduler, Spark Core | jin xing | jin xing |
| [SPARK-23846](https://issues.apache.org/jira/browse/SPARK-23846) | samplingRatio for schema inferring of CSV datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-14682](https://issues.apache.org/jira/browse/SPARK-14682) | Provide evaluateEachIteration method or equivalent for spark.ml GBTs |  Minor | ML | Joseph K. Bradley | Weichen Xu |
| [SPARK-24027](https://issues.apache.org/jira/browse/SPARK-24027) | Support MapType(StringType, DataType) as root type by from\_json |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24231](https://issues.apache.org/jira/browse/SPARK-24231) | Python API: Provide evaluateEachIteration method or equivalent for spark.ml GBTs |  Minor | ML, PySpark | Weichen Xu | Lu Wang |
| [SPARK-24193](https://issues.apache.org/jira/browse/SPARK-24193) | Sort by disk when number of limit is big in TakeOrderedAndProjectExec |  Major | SQL | jin xing | jin xing |
| [SPARK-23856](https://issues.apache.org/jira/browse/SPARK-23856) | Spark jdbc setQueryTimeout option |  Minor | SQL | Dmitry Mikhailov | Takeshi Yamamuro |
| [SPARK-24371](https://issues.apache.org/jira/browse/SPARK-24371) | Added isInCollection in DataFrame API for Scala and Java. |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-24397](https://issues.apache.org/jira/browse/SPARK-24397) | Add TaskContext.getLocalProperties in Python |  Major | PySpark | Tathagata Das | Tathagata Das |
| [SPARK-24232](https://issues.apache.org/jira/browse/SPARK-24232) | Allow referring to kubernetes secrets as env variable |  Major | Kubernetes | Dharmesh Kakadia | Stavros Kontopoulos |
| [SPARK-15784](https://issues.apache.org/jira/browse/SPARK-15784) | Add Power Iteration Clustering to spark.ml |  Major | ML | Xinh Huynh | Miao Wang |
| [SPARK-23984](https://issues.apache.org/jira/browse/SPARK-23984) | PySpark Bindings for K8S |  Major | Kubernetes, PySpark | Ilan Filonenko |  |
| [SPARK-23010](https://issues.apache.org/jira/browse/SPARK-23010) | Add integration testing for Kubernetes backend into the apache/spark repository |  Major | Kubernetes | Anirudh Ramanathan |  |
| [SPARK-24412](https://issues.apache.org/jira/browse/SPARK-24412) | Adding docs about automagical type casting in \`isin\` and \`isInCollection\` APIs |  Major | SQL | DB Tsai | thrvskn |
| [SPARK-15064](https://issues.apache.org/jira/browse/SPARK-15064) | Locale support in StopWordsRemover |  Major | ML | Xiangrui Meng |  |
| [SPARK-24479](https://issues.apache.org/jira/browse/SPARK-24479) | Register StreamingQueryListener in Spark Conf |  Major | Structured Streaming | Mingjie Tang | Arun Mahadevan |
| [SPARK-24396](https://issues.apache.org/jira/browse/SPARK-24396) | Add Structured Streaming ForeachWriter for python |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24542](https://issues.apache.org/jira/browse/SPARK-24542) | Hive UDF series UDFXPathXXXX allow users to pass carefully crafted XML to access arbitrary files |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-24372](https://issues.apache.org/jira/browse/SPARK-24372) | Create script for preparing RCs |  Major | Project Infra | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24465](https://issues.apache.org/jira/browse/SPARK-24465) | LSHModel should support Structured Streaming for transform |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-24662](https://issues.apache.org/jira/browse/SPARK-24662) | Structured Streaming should support LIMIT |  Major | Structured Streaming | Mukul Murthy | Mukul Murthy |
| [SPARK-24730](https://issues.apache.org/jira/browse/SPARK-24730) | Add policy to choose max as global watermark when streaming query has multiple watermarks |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22880](https://issues.apache.org/jira/browse/SPARK-22880) | Add option to cascade jdbc truncate if database supports this (PostgreSQL and Oracle) |  Minor | SQL | Daniel van der Ende | Daniel van der Ende |
| [SPARK-24802](https://issues.apache.org/jira/browse/SPARK-24802) | Optimization Rule Exclusion |  Major | SQL | Maryann Xue | Maryann Xue |
| [SPARK-23146](https://issues.apache.org/jira/browse/SPARK-23146) | Support client mode for Kubernetes cluster backend |  Major | Kubernetes | Anirudh Ramanathan |  |
| [SPARK-24795](https://issues.apache.org/jira/browse/SPARK-24795) | Implement barrier execution mode |  Major | Spark Core | Jiang Xingbo | Jiang Xingbo |
| [SPARK-24288](https://issues.apache.org/jira/browse/SPARK-24288) | Enable preventing predicate pushdown |  Major | SQL | Tomasz Gawęda | Maryann Xue |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23043](https://issues.apache.org/jira/browse/SPARK-23043) | Upgrade json4s-jackson to 3.5.3 |  Minor | Build | Takako Shimamoto | Takako Shimamoto |
| [SPARK-22959](https://issues.apache.org/jira/browse/SPARK-22959) | Configuration to select the modules for daemon and worker in PySpark |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23031](https://issues.apache.org/jira/browse/SPARK-23031) | Merge script should allow arbitrary assignees |  Minor | Project Infra | Marcelo Vanzin | Imran Rashid |
| [SPARK-23024](https://issues.apache.org/jira/browse/SPARK-23024) | Spark ui about the contents of the form need to have hidden and show features, when the table records very much. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-23085](https://issues.apache.org/jira/browse/SPARK-23085) | API parity for mllib.linalg.Vectors.sparse |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-11630](https://issues.apache.org/jira/browse/SPARK-11630) | ClosureCleaner incorrectly warns for class based closures |  Trivial | Spark Core | Frens Jan Rumph | Rekha Joshi |
| [SPARK-23174](https://issues.apache.org/jira/browse/SPARK-23174) | Fix pep8 to latest official version |  Trivial | Build | Rekha Joshi | Rekha Joshi |
| [SPARK-22068](https://issues.apache.org/jira/browse/SPARK-22068) | Reduce the duplicate code between putIteratorAsValues and putIteratorAsBytes |  Major | Spark Core | Xianyang Liu | Xianyang Liu |
| [SPARK-23166](https://issues.apache.org/jira/browse/SPARK-23166) | Add maxDF Parameter to CountVectorizer |  Minor | ML | Yacine Mazari | Yacine Mazari |
| [SPARK-23228](https://issues.apache.org/jira/browse/SPARK-23228) | Able to track Python create SparkSession in JVM |  Minor | PySpark | Saisai Shao | Saisai Shao |
| [SPARK-23247](https://issues.apache.org/jira/browse/SPARK-23247) | combines Unsafe operations and statistics operations in Scan Data Source |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-23188](https://issues.apache.org/jira/browse/SPARK-23188) | Make vectorized columar reader batch size configurable |  Major | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-23202](https://issues.apache.org/jira/browse/SPARK-23202) | Add new API in DataSourceWriter: onDataWriterCommit |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23253](https://issues.apache.org/jira/browse/SPARK-23253) | Only write shuffle temporary index file when there is not an existing one |  Major | Shuffle, Spark Core | Kent Yao | Kent Yao |
| [SPARK-23295](https://issues.apache.org/jira/browse/SPARK-23295) | Exclude Waring message when generating versions  in make-distribution.sh |  Minor | Build | Kent Yao | Kent Yao |
| [SPARK-21860](https://issues.apache.org/jira/browse/SPARK-21860) | Improve memory reuse for heap memory in \`HeapMemoryAllocator\` |  Minor | Spark Core | liuxian | liuxian |
| [SPARK-23336](https://issues.apache.org/jira/browse/SPARK-23336) | Upgrade snappy-java to 1.1.7.1 |  Minor | Build | Yuming Wang | Yuming Wang |
| [SPARK-16501](https://issues.apache.org/jira/browse/SPARK-16501) | spark.mesos.secret exposed on UI and command line |  Major | Spark Submit, Web UI | Eric Daniel | Rob Vesse |
| [SPARK-23378](https://issues.apache.org/jira/browse/SPARK-23378) | move setCurrentDatabase from HiveExternalCatalog to HiveClientImpl |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-23379](https://issues.apache.org/jira/browse/SPARK-23379) | remove redundant metastore access if the current database name is the same |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-23303](https://issues.apache.org/jira/browse/SPARK-23303) | improve the explain result for data source v2 relations |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23318](https://issues.apache.org/jira/browse/SPARK-23318) | FP-growth: WARN FPGrowth: Input data is not cached |  Minor | ML | Arseniy Tashoyan | Arseniy Tashoyan |
| [SPARK-20659](https://issues.apache.org/jira/browse/SPARK-20659) | Remove StorageStatus, or make it private. |  Major | Spark Core | Marcelo Vanzin | Attila Zsolt Piros |
| [SPARK-23382](https://issues.apache.org/jira/browse/SPARK-23382) | Spark Streaming ui about the contents of the form need to have hidden and show features, when the table records very much. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-23217](https://issues.apache.org/jira/browse/SPARK-23217) | Add cosine distance measure to ClusteringEvaluator |  Major | ML | Marco Gaido | Marco Gaido |
| [SPARK-23366](https://issues.apache.org/jira/browse/SPARK-23366) | Improve hot reading path in ReadAheadInputStream |  Major | Spark Core | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23359](https://issues.apache.org/jira/browse/SPARK-23359) | Adds an alias 'names' of 'fieldNames' in Scala's StructType |  Trivial | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23447](https://issues.apache.org/jira/browse/SPARK-23447) | Cleanup codegen template for Literal |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-23383](https://issues.apache.org/jira/browse/SPARK-23383) | Make a distribution should exit with usage while detecting wrong options |  Minor | Build | Kent Yao | Kent Yao |
| [SPARK-23456](https://issues.apache.org/jira/browse/SPARK-23456) | Turn on \`native\` ORC implementation by default |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21783](https://issues.apache.org/jira/browse/SPARK-21783) | Turn on ORC filter push-down by default |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23424](https://issues.apache.org/jira/browse/SPARK-23424) | Add codegenStageId in comment |  Minor | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-23445](https://issues.apache.org/jira/browse/SPARK-23445) | ColumnStat refactoring |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23389](https://issues.apache.org/jira/browse/SPARK-23389) | When the shuffle dependency specifies aggregation ,and \`dependency.mapSideCombine=false\`,  we should be able to use serialized sorting. |  Major | Spark Core | liuxian | liuxian |
| [SPARK-23510](https://issues.apache.org/jira/browse/SPARK-23510) | Support read data from Hive 2.2 and Hive 2.3 metastore |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-23518](https://issues.apache.org/jira/browse/SPARK-23518) | Avoid metastore access when users only want to read and store data frames |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-3159](https://issues.apache.org/jira/browse/SPARK-3159) | Check for reducible DecisionTree |  Minor | MLlib | Joseph K. Bradley | Alessandro Solimando |
| [SPARK-23040](https://issues.apache.org/jira/browse/SPARK-23040) | BlockStoreShuffleReader's return Iterator isn't interruptible if aggregator or ordering is specified |  Minor | Spark Core | Xianjin YE | Xianjin YE |
| [SPARK-23538](https://issues.apache.org/jira/browse/SPARK-23538) | Simplify SSL configuration for https client |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23604](https://issues.apache.org/jira/browse/SPARK-23604) | ParquetInteroperabilityTest timestamp test should use Statistics.hasNonNullValue |  Minor | SQL | Henry Robinson | Henry Robinson |
| [SPARK-23159](https://issues.apache.org/jira/browse/SPARK-23159) | Update Cloudpickle to match version 0.4.3 |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-22751](https://issues.apache.org/jira/browse/SPARK-22751) | Improve ML RandomForest shuffle performance |  Minor | ML | lucio35 | lucio35 |
| [SPARK-23628](https://issues.apache.org/jira/browse/SPARK-23628) | WholeStageCodegen can generate methods with too many params |  Major | SQL | Marco Gaido | Marco Gaido |
| [SPARK-23624](https://issues.apache.org/jira/browse/SPARK-23624) | Revise doc of method pushFilters |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23412](https://issues.apache.org/jira/browse/SPARK-23412) | Add cosine distance measure to BisectingKMeans |  Minor | ML, MLlib | Marco Gaido | Marco Gaido |
| [SPARK-23550](https://issues.apache.org/jira/browse/SPARK-23550) | Cleanup unused / redundant methods in Utils object |  Trivial | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23656](https://issues.apache.org/jira/browse/SPARK-23656) | Assertion in XXH64Suite.testKnownByteArrayInputs() is not performed on big endian platform |  Minor | Tests | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-23695](https://issues.apache.org/jira/browse/SPARK-23695) | Confusing error message for PySpark's Kinesis tests when its jar is missing but enabled |  Trivial | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23644](https://issues.apache.org/jira/browse/SPARK-23644) | SHS with proxy doesn't show applications |  Minor | Spark Core, Web UI | Marco Gaido | Marco Gaido |
| [SPARK-23553](https://issues.apache.org/jira/browse/SPARK-23553) | Tests should not assume the default value of \`spark.sql.sources.default\` |  Major | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-15009](https://issues.apache.org/jira/browse/SPARK-15009) | PySpark CountVectorizerModel should be able to construct from vocabulary list |  Minor | ML, PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-23683](https://issues.apache.org/jira/browse/SPARK-23683) | FileCommitProtocol.instantiate to require 3-arg constructor for dynamic partition overwrite |  Major | Spark Core | Steve Loughran | Steve Loughran |
| [SPARK-23708](https://issues.apache.org/jira/browse/SPARK-23708) | Comment of ShutdownHookManager.addShutdownHook is error |  Minor | Spark Core | zhoukang | zhoukang |
| [SPARK-23691](https://issues.apache.org/jira/browse/SPARK-23691) | Use sql\_conf util in PySpark tests where possible |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23500](https://issues.apache.org/jira/browse/SPARK-23500) | Filters on named\_structs could be pushed into scans |  Major | SQL | Henry Robinson | Henry Robinson |
| [SPARK-23568](https://issues.apache.org/jira/browse/SPARK-23568) | Silhouette should get number of features from metadata if available |  Minor | ML | Marco Gaido | Marco Gaido |
| [SPARK-23372](https://issues.apache.org/jira/browse/SPARK-23372) | Writing empty struct in parquet fails during execution. It should fail earlier during analysis. |  Minor | SQL | Dilip Biswal | Dilip Biswal |
| [SPARK-23769](https://issues.apache.org/jira/browse/SPARK-23769) | Remove unnecessary scalastyle check disabling |  Minor | Spark Core | Riaas Mokiem | Riaas Mokiem |
| [SPARK-23167](https://issues.apache.org/jira/browse/SPARK-23167) | Update TPCDS queries from v1.4 to v2.7 (latest) |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-23700](https://issues.apache.org/jira/browse/SPARK-23700) | Cleanup unused imports |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-23645](https://issues.apache.org/jira/browse/SPARK-23645) | pandas\_udf can not be called with keyword arguments |  Minor | PySpark | Stu (Michael Stewart) | Stu (Michael Stewart) |
| [SPARK-23572](https://issues.apache.org/jira/browse/SPARK-23572) | Update security.md to cover new features |  Major | Documentation | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23162](https://issues.apache.org/jira/browse/SPARK-23162) | PySpark ML LinearRegressionSummary missing r2adj |  Minor | ML, PySpark | Bryan Cutler | kevin yu |
| [SPARK-23699](https://issues.apache.org/jira/browse/SPARK-23699) | PySpark should raise same Error when Arrow fallback is disabled |  Minor | PySpark, SQL | Bryan Cutler | Bryan Cutler |
| [SPARK-23675](https://issues.apache.org/jira/browse/SPARK-23675) | Title add spark logo, use spark logo image |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |
| [SPARK-23770](https://issues.apache.org/jira/browse/SPARK-23770) | Expose repartitionByRange in SparkR |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23727](https://issues.apache.org/jira/browse/SPARK-23727) | Support DATE predict push down in parquet |  Major | SQL | yucai | yucai |
| [SPARK-23285](https://issues.apache.org/jira/browse/SPARK-23285) | Allow spark.executor.cores to be fractional |  Minor | Kubernetes, Scheduler, Spark Submit | Anirudh Ramanathan | Yinan Li |
| [SPARK-21351](https://issues.apache.org/jira/browse/SPARK-21351) | Update nullability based on children's output in optimized logical plan |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-23838](https://issues.apache.org/jira/browse/SPARK-23838) | SparkUI: Running SQL query displayed as "completed" in SQL tab |  Major | Web UI | Gengliang Wang | Gengliang Wang |
| [SPARK-23817](https://issues.apache.org/jira/browse/SPARK-23817) | Migrate ORC file format read path to data source V2 |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23822](https://issues.apache.org/jira/browse/SPARK-23822) | Improve error message for Parquet schema mismatches |  Major | SQL | Yuchen Huo | Yuchen Huo |
| [SPARK-23861](https://issues.apache.org/jira/browse/SPARK-23861) | Clarify behavior of default window frame boundaries with and without orderBy clause |  Minor | SQL | Li Jin | Li Jin |
| [SPARK-23828](https://issues.apache.org/jira/browse/SPARK-23828) | PySpark StringIndexerModel should have constructor from labels |  Minor | ML, PySpark | Bryan Cutler | Huaxin Gao |
| [SPARK-23892](https://issues.apache.org/jira/browse/SPARK-23892) | Improve coverage and fix lint error in UTF8String-related Suite |  Minor | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-22856](https://issues.apache.org/jira/browse/SPARK-22856) | Add wrapper for codegen output and nullability |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-14681](https://issues.apache.org/jira/browse/SPARK-14681) | Provide label/impurity stats for spark.ml decision tree nodes |  Major | ML | Joseph K. Bradley | Weichen Xu |
| [SPARK-23947](https://issues.apache.org/jira/browse/SPARK-23947) | Add hashUTF8String convenience method to hasher classes |  Minor | SQL | Kris Mok | Kris Mok |
| [SPARK-23841](https://issues.apache.org/jira/browse/SPARK-23841) | NodeIdCache should unpersist the last cached nodeIdsForInstances |  Minor | ML | zhengruifeng | zhengruifeng |
| [SPARK-23944](https://issues.apache.org/jira/browse/SPARK-23944) | Add Param set functions to LSHModel types |  Major | MLlib | Lu Wang | Lu Wang |
| [SPARK-23562](https://issues.apache.org/jira/browse/SPARK-23562) | RFormula handleInvalid should handle invalid values in non-string columns. |  Major | ML | Bago Amirbekian |  |
| [SPARK-19947](https://issues.apache.org/jira/browse/SPARK-19947) | RFormulaModel always throws Exception on transforming data with NULL or Unseen labels |  Major | ML | Andrei Iatsuk |  |
| [SPARK-23960](https://issues.apache.org/jira/browse/SPARK-23960) | Mark HashAggregateExec.bufVars as transient |  Minor | SQL | Kris Mok | Kris Mok |
| [SPARK-22941](https://issues.apache.org/jira/browse/SPARK-22941) | Allow SparkSubmit to throw exceptions instead of exiting / printing errors. |  Major | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23962](https://issues.apache.org/jira/browse/SPARK-23962) | Flaky tests from SQLMetricsTestUtils.currentExecutionIds |  Minor | SQL, Tests | Imran Rashid | Imran Rashid |
| [SPARK-23867](https://issues.apache.org/jira/browse/SPARK-23867) | com.codahale.metrics.Counter output in log message has no toString method |  Minor | Scheduler | Patrick Pisciuneri | Patrick Pisciuneri |
| [SPARK-22839](https://issues.apache.org/jira/browse/SPARK-22839) | Refactor Kubernetes code for configuring driver/executor pods to use consistent and cleaner abstraction |  Major | Kubernetes | Yinan Li | Matt Cheah |
| [SPARK-23896](https://issues.apache.org/jira/browse/SPARK-23896) | Improve PartitioningAwareFileIndex |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23375](https://issues.apache.org/jira/browse/SPARK-23375) | Optimizer should remove unneeded Sort |  Minor | SQL | Marco Gaido | Marco Gaido |
| [SPARK-23963](https://issues.apache.org/jira/browse/SPARK-23963) | Queries on text-based Hive tables grow disproportionately slower as the number of columns increase |  Minor | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-23966](https://issues.apache.org/jira/browse/SPARK-23966) | Refactoring all checkpoint file writing logic in a common interface |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23979](https://issues.apache.org/jira/browse/SPARK-23979) | MultiAlias should not be a CodegenFallback |  Trivial | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-23956](https://issues.apache.org/jira/browse/SPARK-23956) | Use effective RPC port in AM registration |  Minor | YARN | Gera Shegalov | Gera Shegalov |
| [SPARK-9312](https://issues.apache.org/jira/browse/SPARK-9312) | The OneVsRest model does not provide rawPrediction |  Major | ML, MLlib | Badari Madhav | Lu Wang |
| [SPARK-23873](https://issues.apache.org/jira/browse/SPARK-23873) | Use accessors in interpreted LambdaVariable |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-23875](https://issues.apache.org/jira/browse/SPARK-23875) | Create IndexedSeq wrapper for ArrayData |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-21741](https://issues.apache.org/jira/browse/SPARK-21741) | Python API for DataFrame-based multivariate summarizer |  Major | ML, PySpark | Yanbo Liang | Weichen Xu |
| [SPARK-24014](https://issues.apache.org/jira/browse/SPARK-24014) | Add onStreamingStarted method to StreamingListener |  Trivial | PySpark | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-23877](https://issues.apache.org/jira/browse/SPARK-23877) | Metadata-only queries do not push down filter conditions |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-24029](https://issues.apache.org/jira/browse/SPARK-24029) | Set "reuse address" flag on listen sockets |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23564](https://issues.apache.org/jira/browse/SPARK-23564) | the  optimized logical plan about Left anti join should be further optimization |  Major | SQL | KaiXinXIaoLei | Marco Gaido |
| [SPARK-24024](https://issues.apache.org/jira/browse/SPARK-24024) | Fix deviance calculations in GLM to handle corner cases |  Minor | ML | Teng Peng | Teng Peng |
| [SPARK-23973](https://issues.apache.org/jira/browse/SPARK-23973) | Remove consecutive sorts |  Minor | SQL | Henry Robinson | Marco Gaido |
| [SPARK-22683](https://issues.apache.org/jira/browse/SPARK-22683) | DynamicAllocation wastes resources by allocating containers that will barely be used |  Major | Spark Core | Julien Cuquemelle | Julien Cuquemelle |
| [SPARK-23455](https://issues.apache.org/jira/browse/SPARK-23455) | Default Params in ML should be saved separately |  Major | ML | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-23880](https://issues.apache.org/jira/browse/SPARK-23880) | table cache should be lazy and don't trigger any jobs. |  Major | SQL | Wenchen Fan | Takeshi Yamamuro |
| [SPARK-24094](https://issues.apache.org/jira/browse/SPARK-24094) | Change description strings of v2 streaming sources to reflect the change |  Trivial | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24057](https://issues.apache.org/jira/browse/SPARK-24057) | put the real data type in the AssertionError message |  Minor | PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-24083](https://issues.apache.org/jira/browse/SPARK-24083) | Diagnostics message for uncaught exceptions should include the stacktrace |  Minor | YARN | zhoukang | zhoukang |
| [SPARK-23830](https://issues.apache.org/jira/browse/SPARK-23830) | Spark on YARN in cluster deploy mode fail with NullPointerException when a Spark application is a Scala class not object |  Trivial | YARN | Jacek Laskowski | Eric Maynard |
| [SPARK-23565](https://issues.apache.org/jira/browse/SPARK-23565) | Improved error message for when the number of sources for a query changes |  Minor | Structured Streaming | Patrick McGloin | Patrick McGloin |
| [SPARK-24072](https://issues.apache.org/jira/browse/SPARK-24072) | clearly define pushed filters |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24003](https://issues.apache.org/jira/browse/SPARK-24003) | Add support to provide spark.executor.extraJavaOptions in terms of App Id and/or Executor Id's |  Major | Mesos, Spark Core, YARN | Devaraj K | Devaraj K |
| [SPARK-24131](https://issues.apache.org/jira/browse/SPARK-24131) | Add majorMinorVersion API to PySpark for determining Spark versions |  Minor | PySpark | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-24111](https://issues.apache.org/jira/browse/SPARK-24111) | Add TPCDS v2.7 (latest) queries in TPCDSQueryBenchmark |  Trivial | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-24035](https://issues.apache.org/jira/browse/SPARK-24035) | SQL syntax for Pivot |  Major | SQL | Xiao Li | Maryann Xue |
| [SPARK-24136](https://issues.apache.org/jira/browse/SPARK-24136) | MemoryStreamDataReader.next should skip sleeping if record is available |  Minor | Structured Streaming | Arun Mahadevan | Arun Mahadevan |
| [SPARK-24017](https://issues.apache.org/jira/browse/SPARK-24017) | Refactor ExternalCatalog to be an interface |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-24126](https://issues.apache.org/jira/browse/SPARK-24126) | PySpark tests leave a lot of garbage in /tmp |  Minor | PySpark, Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24160](https://issues.apache.org/jira/browse/SPARK-24160) | ShuffleBlockFetcherIterator should fail if it receives zero-size blocks |  Major | Shuffle | Josh Rosen | Josh Rosen |
| [SPARK-16406](https://issues.apache.org/jira/browse/SPARK-16406) | Reference resolution for large number of columns should be faster |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-24128](https://issues.apache.org/jira/browse/SPARK-24128) | Mention spark.sql.crossJoin.enabled in implicit cartesian product error msg |  Minor | SQL | Henry Robinson | Henry Robinson |
| [SPARK-24188](https://issues.apache.org/jira/browse/SPARK-24188) | /api/v1/version not working |  Major | Web UI | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24117](https://issues.apache.org/jira/browse/SPARK-24117) | Unified the getSizePerRow |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-23972](https://issues.apache.org/jira/browse/SPARK-23972) | Upgrade to Parquet 1.10 |  Major | Spark Core | Henry Robinson | Ryan Blue |
| [SPARK-24181](https://issues.apache.org/jira/browse/SPARK-24181) | Better error message for writing sorted data |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-24182](https://issues.apache.org/jira/browse/SPARK-24182) | Improve error message for client mode when AM fails |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24172](https://issues.apache.org/jira/browse/SPARK-24172) | we should not apply operator pushdown to data source v2 many times |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24246](https://issues.apache.org/jira/browse/SPARK-24246) | Improve AnalysisException by setting the cause when it's available |  Major | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-24262](https://issues.apache.org/jira/browse/SPARK-24262) | Fix typo in UDF error message |  Trivial | PySpark | holdenk | Kelley Robinson |
| [SPARK-23627](https://issues.apache.org/jira/browse/SPARK-23627) | Provide isEmpty() function in DataSet |  Trivial | Spark Core, SQL | Goun Na | Goun Na |
| [SPARK-24058](https://issues.apache.org/jira/browse/SPARK-24058) | Default Params in ML should be saved separately: Python API |  Major | ML, PySpark | Joseph K. Bradley | Liang-Chi Hsieh |
| [SPARK-24275](https://issues.apache.org/jira/browse/SPARK-24275) | Revise doc comments in InputPartition |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-22210](https://issues.apache.org/jira/browse/SPARK-22210) | Online LDA variationalTopicInference  should use random seed to have stable behavior |  Minor | ML | yuhao yang | Lu Wang |
| [SPARK-24277](https://issues.apache.org/jira/browse/SPARK-24277) | Code clean up in SQL module: HadoopMapReduceCommitProtocol/FileFormatWriter |  Trivial | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24303](https://issues.apache.org/jira/browse/SPARK-24303) | Update cloudpickle to v0.4.4 |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-20538](https://issues.apache.org/jira/browse/SPARK-20538) | Dataset.reduce operator should use withNewExecutionId (as foreach or foreachPartition) |  Trivial | SQL | Jacek Laskowski | Soham Aurangabadkar |
| [SPARK-24312](https://issues.apache.org/jira/browse/SPARK-24312) | Upgrade to 2.3.3 for Hive Metastore Client 2.3 |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24149](https://issues.apache.org/jira/browse/SPARK-24149) | Automatic namespaces discovery in HDFS federation |  Minor | YARN | Marco Gaido | Marco Gaido |
| [SPARK-24308](https://issues.apache.org/jira/browse/SPARK-24308) | Handle DataReaderFactory to InputPartition renames in left over classes |  Major | SQL | Arun Mahadevan | Arun Mahadevan |
| [SPARK-24250](https://issues.apache.org/jira/browse/SPARK-24250) | support accessing SQLConf inside tasks |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24242](https://issues.apache.org/jira/browse/SPARK-24242) | RangeExec should have correct outputOrdering |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-7132](https://issues.apache.org/jira/browse/SPARK-7132) | Add fit with validation set to spark.ml GBT |  Minor | ML | Joseph K. Bradley | Weichen Xu |
| [SPARK-24209](https://issues.apache.org/jira/browse/SPARK-24209) | 0 configuration Knox gateway support in SHS |  Minor | Web UI | Marco Gaido | Marco Gaido |
| [SPARK-24321](https://issues.apache.org/jira/browse/SPARK-24321) | Extract common code from Divide/Remainder to a base trait |  Minor | SQL | Kris Mok | Kris Mok |
| [SPARK-20087](https://issues.apache.org/jira/browse/SPARK-20087) | Include accumulators / taskMetrics when sending TaskKilled to onTaskEnd listeners |  Major | Spark Core | Charles Lewis | Xianjin YE |
| [SPARK-24121](https://issues.apache.org/jira/browse/SPARK-24121) | The API for handling expression code generation in expression codegen |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-24206](https://issues.apache.org/jira/browse/SPARK-24206) | Improve DataSource benchmark code for read and pushdown |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-22269](https://issues.apache.org/jira/browse/SPARK-22269) | Java style checks should be run in Jenkins |  Major | Build | Andrew Ash | Hyukjin Kwon |
| [SPARK-24329](https://issues.apache.org/jira/browse/SPARK-24329) | Remove comments filtering before parsing of CSV files |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24332](https://issues.apache.org/jira/browse/SPARK-24332) | Fix places reading 'spark.network.timeout' as milliseconds |  Major | Mesos, Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-24367](https://issues.apache.org/jira/browse/SPARK-24367) | Parquet: use JOB\_SUMMARY\_LEVEL instead of deprecated flag ENABLE\_JOB\_SUMMARY |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24244](https://issues.apache.org/jira/browse/SPARK-24244) | Parse only required columns of CSV file |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24366](https://issues.apache.org/jira/browse/SPARK-24366) | Improve error message for Catalyst type converters |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24381](https://issues.apache.org/jira/browse/SPARK-24381) | Improve Unit Test Coverage of NOT IN subqueries |  Major | SQL | Miles Yucht |  |
| [SPARK-24365](https://issues.apache.org/jira/browse/SPARK-24365) | Add data source write benchmark |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23161](https://issues.apache.org/jira/browse/SPARK-23161) | Add missing APIs to Python GBTClassifier |  Minor | ML, PySpark | Bryan Cutler | Huaxin Gao |
| [SPARK-24337](https://issues.apache.org/jira/browse/SPARK-24337) | Improve the error message for invalid SQL conf value |  Major | SQL | Shixiong Zhu |  |
| [SPARK-24330](https://issues.apache.org/jira/browse/SPARK-24330) | Refactor ExecuteWriteTask in FileFormatWriter with DataWriter(V2) |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24326](https://issues.apache.org/jira/browse/SPARK-24326) |  Add local:// scheme support for the app jar in mesos cluster mode |  Major | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-24356](https://issues.apache.org/jira/browse/SPARK-24356) | Duplicate strings in File.path managed by FileSegmentManagedBuffer |  Major | Shuffle | Misha Dmitriev | Misha Dmitriev |
| [SPARK-24455](https://issues.apache.org/jira/browse/SPARK-24455) | fix typo in TaskSchedulerImpl's comments |  Trivial | Spark Core | xueyu | xueyu |
| [SPARK-24215](https://issues.apache.org/jira/browse/SPARK-24215) | Implement \_\_repr\_\_ and \_repr\_html\_ for dataframes in PySpark |  Major | PySpark, Spark Core, SQL | Ryan Blue | Li Yuanjian |
| [SPARK-23803](https://issues.apache.org/jira/browse/SPARK-23803) | Support bucket pruning to optimize filtering on a bucketed column |  Major | SQL | Asher Saban | Asher Saban |
| [SPARK-24477](https://issues.apache.org/jira/browse/SPARK-24477) | Import submodules under pyspark.ml by default |  Major | ML, PySpark | Xiangrui Meng | Hyukjin Kwon |
| [SPARK-24454](https://issues.apache.org/jira/browse/SPARK-24454) | ml.image doesn't have \_\_all\_\_ explicitly defined |  Minor | ML, PySpark | Xiangrui Meng | Hyukjin Kwon |
| [SPARK-22144](https://issues.apache.org/jira/browse/SPARK-22144) | ExchangeCoordinator will not combine the partitions of an 0 sized pre-shuffle |  Major | SQL | Lijia Liu | Lijia Liu |
| [SPARK-24485](https://issues.apache.org/jira/browse/SPARK-24485) | Measure and log elapsed time for filesystem operations in HDFSBackedStateStoreProvider |  Minor | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-24543](https://issues.apache.org/jira/browse/SPARK-24543) | Support any DataType as DDL string for from\_json's schema |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24248](https://issues.apache.org/jira/browse/SPARK-24248) | [K8S] Use the Kubernetes cluster as the backing store for the state of pods |  Major | Kubernetes | Matt Cheah |  |
| [SPARK-24490](https://issues.apache.org/jira/browse/SPARK-24490) | Use WebUI.addStaticHandler in web UIs |  Trivial | Web UI | Jacek Laskowski | Jacek Laskowski |
| [SPARK-24525](https://issues.apache.org/jira/browse/SPARK-24525) | Provide an option to limit MemorySink memory usage |  Major | Structured Streaming | Mukul Murthy | Mukul Murthy |
| [SPARK-23772](https://issues.apache.org/jira/browse/SPARK-23772) | Provide an option to ignore column of all null values or empty map/array during JSON schema inference |  Major | SQL | Xiangrui Meng | Takeshi Yamamuro |
| [SPARK-24534](https://issues.apache.org/jira/browse/SPARK-24534) | Add a way to bypass entrypoint.sh script if no spark cmd is passed |  Minor | Kubernetes | Ricardo Martinelli de Oliveira |  |
| [SPARK-24565](https://issues.apache.org/jira/browse/SPARK-24565) | Add API for in Structured Streaming for exposing output rows of each microbatch as a DataFrame |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24575](https://issues.apache.org/jira/browse/SPARK-24575) | Prohibit window expressions inside WHERE and HAVING clauses |  Minor | SQL | Anton Okolnychyi | Anton Okolnychyi |
| [SPARK-24547](https://issues.apache.org/jira/browse/SPARK-24547) | Spark on K8s docker-image-tool.sh improvements |  Minor | Kubernetes | Ray Burgemeestre |  |
| [SPARK-24571](https://issues.apache.org/jira/browse/SPARK-24571) | Support literals with values of the Char type |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24574](https://issues.apache.org/jira/browse/SPARK-24574) | improve array\_contains function of the sql component to deal with Column type |  Major | SQL | Chongguang LIU | Chongguang LIU |
| [SPARK-24614](https://issues.apache.org/jira/browse/SPARK-24614) | PySpark - Fix SyntaxWarning on tests.py |  Trivial | PySpark | Rekha Joshi | Rekha Joshi |
| [SPARK-16630](https://issues.apache.org/jira/browse/SPARK-16630) | Blacklist a node if executors won't launch on it. |  Major | YARN | Thomas Graves | Attila Zsolt Piros |
| [SPARK-24519](https://issues.apache.org/jira/browse/SPARK-24519) | MapStatus has 2000 hardcoded |  Minor | Spark Core | Hieu Tri Huynh | Hieu Tri Huynh |
| [SPARK-24518](https://issues.apache.org/jira/browse/SPARK-24518) | Using Hadoop credential provider API to store password |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-24327](https://issues.apache.org/jira/browse/SPARK-24327) | Verify and normalize a partition column name based on the JDBC resolved schema |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-24596](https://issues.apache.org/jira/browse/SPARK-24596) | Non-cascading Cache Invalidation |  Major | SQL | Maryann Xue | Maryann Xue |
| [SPARK-23776](https://issues.apache.org/jira/browse/SPARK-23776) | pyspark-sql tests should display build instructions when components are missing |  Minor | PySpark | Bruce Robbins | Bruce Robbins |
| [SPARK-24636](https://issues.apache.org/jira/browse/SPARK-24636) | Type Coercion of Arrays for array\_join Function |  Major | SQL | Marek Novotny | Marek Novotny |
| [SPARK-24658](https://issues.apache.org/jira/browse/SPARK-24658) | Remove workaround for ANTLR bug |  Critical | SQL | Yuming Wang | Yuming Wang |
| [SPARK-24423](https://issues.apache.org/jira/browse/SPARK-24423) | Add a new option \`query\` for JDBC sources |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-24605](https://issues.apache.org/jira/browse/SPARK-24605) | size(null) should return null |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-21687](https://issues.apache.org/jira/browse/SPARK-21687) | Spark SQL should set createTime for Hive partition |  Minor | SQL | Chaozhong Yang | Chaozhong Yang |
| [SPARK-24204](https://issues.apache.org/jira/browse/SPARK-24204) | Verify a write schema in Json/Orc/ParquetFileFormat |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-14712](https://issues.apache.org/jira/browse/SPARK-14712) | spark.ml LogisticRegressionModel.toString should summarize model |  Trivial | ML | Joseph K. Bradley | Bravo Zhang |
| [SPARK-24408](https://issues.apache.org/jira/browse/SPARK-24408) | Move abs function to math\_funcs group |  Trivial | Documentation, SQL | Jacek Laskowski | Jacek Laskowski |
| [SPARK-24566](https://issues.apache.org/jira/browse/SPARK-24566) | Fix spark.storage.blockManagerSlaveTimeoutMs default config |  Major | Spark Core | xueyu | xueyu |
| [SPARK-24638](https://issues.apache.org/jira/browse/SPARK-24638) | StringStartsWith support push down |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-24696](https://issues.apache.org/jira/browse/SPARK-24696) | ColumnPruning rule fails to remove extra Project |  Major | SQL | Xiao Li | Maryann Xue |
| [SPARK-24665](https://issues.apache.org/jira/browse/SPARK-24665) | Add SQLConf in PySpark to manage all sql configs |  Major | PySpark | Li Yuanjian | Li Yuanjian |
| [SPARK-24683](https://issues.apache.org/jira/browse/SPARK-24683) | SparkLauncher.NO\_RESOURCE doesn't work with Java applications |  Critical | Kubernetes | Matt Cheah |  |
| [SPARK-24428](https://issues.apache.org/jira/browse/SPARK-24428) | Remove unused code and fix any related doc in K8s module |  Minor | Kubernetes | Stavros Kontopoulos |  |
| [SPARK-24709](https://issues.apache.org/jira/browse/SPARK-24709) | Inferring schema from JSON string literal |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24732](https://issues.apache.org/jira/browse/SPARK-24732) | Type coercion between MapTypes. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-24727](https://issues.apache.org/jira/browse/SPARK-24727) | The cache 100 in CodeGenerator is too small for streaming |  Major | SQL | ant\_nebula | Takeshi Yamamuro |
| [SPARK-24716](https://issues.apache.org/jira/browse/SPARK-24716) | Refactor ParquetFilters |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-24635](https://issues.apache.org/jira/browse/SPARK-24635) | Remove Blocks class |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-24673](https://issues.apache.org/jira/browse/SPARK-24673) | scala sql function from\_utc\_timestamp second argument could be Column instead of String |  Minor | SQL | Antonio Murgia | Antonio Murgia |
| [SPARK-24361](https://issues.apache.org/jira/browse/SPARK-24361) | Polish code block manipulation API |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-23820](https://issues.apache.org/jira/browse/SPARK-23820) | Allow the long form of call sites to be recorded in the log |  Trivial | Spark Core | Michael Mior | Michael Mior |
| [SPARK-24675](https://issues.apache.org/jira/browse/SPARK-24675) | Rename table: validate existence of new location |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24737](https://issues.apache.org/jira/browse/SPARK-24737) | Type coercion between StructTypes. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-24692](https://issues.apache.org/jira/browse/SPARK-24692) | Improvement FilterPushdownBenchmark |  Major | Tests | Yuming Wang | Yuming Wang |
| [SPARK-24757](https://issues.apache.org/jira/browse/SPARK-24757) | Improve error message for broadcast timeouts |  Trivial | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24646](https://issues.apache.org/jira/browse/SPARK-24646) | Support wildcard '\*' for to spark.yarn.dist.forceDownloadSchemes |  Minor | Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-24759](https://issues.apache.org/jira/browse/SPARK-24759) | No reordering keys for broadcast hash join |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-24706](https://issues.apache.org/jira/browse/SPARK-24706) | Support ByteType and ShortType pushdown to parquet |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-24678](https://issues.apache.org/jira/browse/SPARK-24678) | We should use 'PROCESS\_LOCAL' first for Spark-Streaming |  Major | Block Manager | sharkd tu | sharkd tu |
| [SPARK-23529](https://issues.apache.org/jira/browse/SPARK-23529) | Specify hostpath volume and mount the volume in Spark driver and executor pods in Kubernetes |  Minor | Kubernetes | Suman Somasundar | Andrew Korzhuev |
| [SPARK-24470](https://issues.apache.org/jira/browse/SPARK-24470) | RestSubmissionClient to be robust against 404 & non json responses |  Minor | Spark Core | Steve Loughran | Rekha Joshi |
| [SPARK-24697](https://issues.apache.org/jira/browse/SPARK-24697) | Fix the reported start offsets in streaming query progress |  Major | Structured Streaming | Arun Mahadevan | Tathagata Das |
| [SPARK-24782](https://issues.apache.org/jira/browse/SPARK-24782) | Simplify conf access in expressions |  Minor | SQL | Marco Gaido | Marco Gaido |
| [SPARK-24761](https://issues.apache.org/jira/browse/SPARK-24761) | Check modifiability of config parameters |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24691](https://issues.apache.org/jira/browse/SPARK-24691) | Add new API \`supportDataType\` in FileFormat |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-20168](https://issues.apache.org/jira/browse/SPARK-20168) | Enable kinesis to start stream from Initial position specified by a timestamp |  Minor | DStreams | Yash Sharma | Yash Sharma |
| [SPARK-24790](https://issues.apache.org/jira/browse/SPARK-24790) | Allow complex aggregate expressions in Pivot |  Minor | SQL | Maryann Xue | Maryann Xue |
| [SPARK-23528](https://issues.apache.org/jira/browse/SPARK-23528) | Add numIter to ClusteringSummary |  Minor | ML | Erich Schubert | Marco Gaido |
| [SPARK-23831](https://issues.apache.org/jira/browse/SPARK-23831) | Add org.apache.derby to IsolatedClientLoader |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-24718](https://issues.apache.org/jira/browse/SPARK-24718) | Timestamp support pushdown to parquet data source |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-24807](https://issues.apache.org/jira/browse/SPARK-24807) | Adding files/jars twice: output a warning and add a note |  Trivial | Spark Core | Maxim Gekk | Maxim Gekk |
| [SPARK-24558](https://issues.apache.org/jira/browse/SPARK-24558) | Driver prints the wrong info in the log when the executor which holds cacheBlock is IDLE.Time-out value displayed is not as per configuration value. |  Minor | Spark Core | sandeep katta | sandeep katta |
| [SPARK-24538](https://issues.apache.org/jira/browse/SPARK-24538) | ByteArrayDecimalType support push down to parquet data sources |  Major | SQL | Yuming Wang | Yuming Wang |
| [SPARK-18230](https://issues.apache.org/jira/browse/SPARK-18230) | MatrixFactorizationModel.recommendProducts throws NoSuchElement exception when the user does not exist |  Minor | MLlib | Mikael Ståldal | shahid |
| [SPARK-23259](https://issues.apache.org/jira/browse/SPARK-23259) | Clean up legacy code around hive external catalog |  Major | SQL | Feng Liu | Feng Liu |
| [SPARK-24305](https://issues.apache.org/jira/browse/SPARK-24305) | Avoid serialization of private fields in new collection expressions |  Minor | SQL | Marek Novotny | Marek Novotny |
| [SPARK-21590](https://issues.apache.org/jira/browse/SPARK-21590) | Structured Streaming window start time should support negative values to adjust time zone |  Major | Structured Streaming | Kevin Zhang | Kevin Zhang |
| [SPARK-24747](https://issues.apache.org/jira/browse/SPARK-24747) | Make spark.ml.util.Instrumentation class more flexible |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-24576](https://issues.apache.org/jira/browse/SPARK-24576) |  Upgrade Apache ORC to 1.5.2 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24129](https://issues.apache.org/jira/browse/SPARK-24129) | Add option to pass --build-arg's to docker-image-tool.sh |  Minor | Kubernetes | Devaraj K | Devaraj K |
| [SPARK-24858](https://issues.apache.org/jira/browse/SPARK-24858) | Avoid unnecessary parquet footer reads |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24268](https://issues.apache.org/jira/browse/SPARK-24268) | DataType in error messages are not coherent |  Minor | ML, SQL | Marco Gaido | Marco Gaido |
| [SPARK-24424](https://issues.apache.org/jira/browse/SPARK-24424) | Support ANSI-SQL compliant syntax for  GROUPING SET |  Major | SQL | Xiao Li | Dilip Biswal |
| [SPARK-24868](https://issues.apache.org/jira/browse/SPARK-24868) | add sequence function in Python |  Minor | PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-24871](https://issues.apache.org/jira/browse/SPARK-24871) | Refactor Concat and MapConcat to avoid creating concatenator object for each row. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-24551](https://issues.apache.org/jira/browse/SPARK-24551) | Add Integration tests for Secrets |  Minor | Kubernetes | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-24339](https://issues.apache.org/jira/browse/SPARK-24339) | spark sql can not prune column in transform/map/reduce query |  Minor | SQL | xdcjie | Li Yuanjian |
| [SPARK-24890](https://issues.apache.org/jira/browse/SPARK-24890) | Short circuiting the \`if\` condition when \`trueValue\` and \`falseValue\` are the same |  Major | SQL | DB Tsai | DB Tsai |
| [SPARK-23957](https://issues.apache.org/jira/browse/SPARK-23957) | Sorts in subqueries are redundant and can be removed |  Major | SQL | Henry Robinson | Henry Robinson |
| [SPARK-19018](https://issues.apache.org/jira/browse/SPARK-19018) | spark csv writer charset support |  Major | SQL | todd.chen | Carlos Peña |
| [SPARK-24849](https://issues.apache.org/jira/browse/SPARK-24849) | Convert StructType to DDL string |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24860](https://issues.apache.org/jira/browse/SPARK-24860) | Expose dynamic partition overwrite per write operation |  Minor | SQL | koert kuipers | Koert Kuipers |
| [SPARK-24801](https://issues.apache.org/jira/browse/SPARK-24801) | Empty byte[] arrays in spark.network.sasl.SaslEncryption$EncryptedMessage can waste a lot of memory |  Major | YARN | Misha Dmitriev | Misha Dmitriev |
| [SPARK-24929](https://issues.apache.org/jira/browse/SPARK-24929) | Merge script swallow KeyboardInterrupt |  Trivial | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24865](https://issues.apache.org/jira/browse/SPARK-24865) | Remove AnalysisBarrier |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21960](https://issues.apache.org/jira/browse/SPARK-21960) | Spark Streaming Dynamic Allocation should respect spark.executor.instances |  Minor | DStreams | Karthik Palaniappan | Karthik Palaniappan |
| [SPARK-13343](https://issues.apache.org/jira/browse/SPARK-13343) | speculative tasks that didn't commit shouldn't be marked as success |  Major | Spark Core | Thomas Graves | Hieu Tri Huynh |
| [SPARK-24956](https://issues.apache.org/jira/browse/SPARK-24956) | Upgrade maven from 3.3.9 to 3.5.4 |  Minor | Build | Kazuaki Ishizaki | Kazuaki Ishizaki |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22018](https://issues.apache.org/jira/browse/SPARK-22018) | Catalyst Optimizer does not preserve top-level metadata while collapsing projects |  Major | Optimizer, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22017](https://issues.apache.org/jira/browse/SPARK-22017) | watermark evaluation with multi-input stream operators is unspecified |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-22238](https://issues.apache.org/jira/browse/SPARK-22238) | EnsureStatefulOpPartitioning shouldn't ask for the child RDD before planning is completed |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-22949](https://issues.apache.org/jira/browse/SPARK-22949) | Reduce memory requirement for TrainValidationSplit |  Critical | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-23028](https://issues.apache.org/jira/browse/SPARK-23028) | Bump master branch version to 2.4.0-SNAPSHOT |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-23038](https://issues.apache.org/jira/browse/SPARK-23038) | Update docker/spark-test (JDK/OS) |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22956](https://issues.apache.org/jira/browse/SPARK-22956) | Union Stream Failover Cause \`IllegalStateException\` |  Major | Structured Streaming | Li Yuanjian | Li Yuanjian |
| [SPARK-23044](https://issues.apache.org/jira/browse/SPARK-23044) | merge script has bug when assigning jiras to non-contributors |  Minor | Project Infra | Imran Rashid | Imran Rashid |
| [SPARK-20947](https://issues.apache.org/jira/browse/SPARK-20947) | Encoding/decoding issue in PySpark pipe implementation |  Major | PySpark | Xiaozhe Wang | Xiaozhe Wang |
| [SPARK-17088](https://issues.apache.org/jira/browse/SPARK-17088) | IsolatedClientLoader fails to load Hive client when sharesHadoopClasses is false |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-22577](https://issues.apache.org/jira/browse/SPARK-22577) | executor page blacklist status should update with TaskSet level blacklisting |  Major | Scheduler | Thomas Graves | Attila Zsolt Piros |
| [SPARK-23152](https://issues.apache.org/jira/browse/SPARK-23152) | Invalid guard condition in org.apache.spark.ml.classification.Classifier |  Minor | ML, MLlib | Matthew Tovbin | Matthew Tovbin |
| [SPARK-22297](https://issues.apache.org/jira/browse/SPARK-22297) | Flaky test: BlockManagerSuite "Shuffle registration timeout and maxAttempts conf" |  Minor | Spark Core, Tests | Marcelo Vanzin | Mark Petruska |
| [SPARK-23059](https://issues.apache.org/jira/browse/SPARK-23059) | Correct some improper with view related method usage |  Minor | SQL, Tests | xubo245 | xubo245 |
| [SPARK-23088](https://issues.apache.org/jira/browse/SPARK-23088) | History server not showing incomplete/running applications |  Minor | Spark Core, Web UI | paul mackles | paul mackles |
| [SPARK-21525](https://issues.apache.org/jira/browse/SPARK-21525) | ReceiverSupervisorImpl seems to ignore the error code when writing to the WAL |  Major | DStreams | Mark Grover | Marcelo Vanzin |
| [SPARK-23020](https://issues.apache.org/jira/browse/SPARK-23020) | Re-enable Flaky Test: org.apache.spark.launcher.SparkLauncherSuite.testInProcessLauncher |  Blocker | Tests | Sameer Agarwal | Marcelo Vanzin |
| [SPARK-23306](https://issues.apache.org/jira/browse/SPARK-23306) | Race condition in TaskMemoryManager |  Minor | Spark Core | Zhan Zhang | Zhan Zhang |
| [SPARK-23189](https://issues.apache.org/jira/browse/SPARK-23189) | reflect stage level blacklisting on executor tab |  Major | Web UI | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23394](https://issues.apache.org/jira/browse/SPARK-23394) | Storage info's Cached Partitions doesn't consider the replications (but sc.getRDDStorageInfo does) |  Major | Spark Core | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-23406](https://issues.apache.org/jira/browse/SPARK-23406) | Stream-stream self joins does not work |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23340](https://issues.apache.org/jira/browse/SPARK-23340) | Upgrade Apache ORC to 1.4.3 |  Major | Build, SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23377](https://issues.apache.org/jira/browse/SPARK-23377) | Bucketizer with multiple columns persistence bug |  Blocker | ML | Bago Amirbekian | Liang-Chi Hsieh |
| [SPARK-23457](https://issues.apache.org/jira/browse/SPARK-23457) | Register task completion listeners first for ParquetFileFormat |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23436](https://issues.apache.org/jira/browse/SPARK-23436) | Incorrect Date column Inference in partition discovery |  Major | SQL | Apoorva Sareen | Marco Gaido |
| [SPARK-23240](https://issues.apache.org/jira/browse/SPARK-23240) | PythonWorkerFactory issues unhelpful message when pyspark.daemon produces bogus stdout |  Minor | PySpark | Bruce Robbins | Bruce Robbins |
| [SPARK-23434](https://issues.apache.org/jira/browse/SPARK-23434) | Spark should not warn \`metadata directory\` for a HDFS file path |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23476](https://issues.apache.org/jira/browse/SPARK-23476) | Spark will not start in local mode with authentication on |  Minor | Spark Core, Spark Shell | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23490](https://issues.apache.org/jira/browse/SPARK-23490) | Check storage.locationUri with existing table in CreateTable |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23408](https://issues.apache.org/jira/browse/SPARK-23408) | Flaky test: StreamingOuterJoinSuite.left outer early state exclusion on right |  Minor | SQL, Tests | Marcelo Vanzin | Tathagata Das |
| [SPARK-23459](https://issues.apache.org/jira/browse/SPARK-23459) | Improve the error message when unknown column is specified in partition columns |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-23438](https://issues.apache.org/jira/browse/SPARK-23438) | DStreams could lose blocks with WAL enabled when driver crashes |  Critical | DStreams | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23449](https://issues.apache.org/jira/browse/SPARK-23449) | Extra java options lose order in Docker context |  Minor | Kubernetes | Andrew Korzhuev | Andrew Korzhuev |
| [SPARK-17147](https://issues.apache.org/jira/browse/SPARK-17147) | Spark Streaming Kafka 0.10 Consumer Can't Handle Non-consecutive Offsets (i.e. Log Compaction) |  Major | DStreams | Robert Conrad | Cody Koeninger |
| [SPARK-23523](https://issues.apache.org/jira/browse/SPARK-23523) | Incorrect result caused by the rule OptimizeMetadataOnlyQuery |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23365](https://issues.apache.org/jira/browse/SPARK-23365) | DynamicAllocation with failure in straggler task can lead to a hung spark job |  Major | Scheduler | Imran Rashid | Imran Rashid |
| [SPARK-23417](https://issues.apache.org/jira/browse/SPARK-23417) | pyspark tests give wrong sbt instructions |  Minor | PySpark | Jose Torres | Bruce Robbins |
| [SPARK-23508](https://issues.apache.org/jira/browse/SPARK-23508) | blockManagerIdCache in BlockManagerId may cause oom |  Major | Deploy, Spark Core | zhoukang | zhoukang |
| [SPARK-23514](https://issues.apache.org/jira/browse/SPARK-23514) | Replace spark.sparkContext.hadoopConfiguration by spark.sessionState.newHadoopConf() |  Major | SQL | Xiao Li | Juliusz Sompolski |
| [SPARK-23405](https://issues.apache.org/jira/browse/SPARK-23405) | The task will hang up when a small table left semi join a big table |  Major | SQL | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-23551](https://issues.apache.org/jira/browse/SPARK-23551) | Exclude \`hadoop-mapreduce-client-core\` dependency from \`orc-mapreduce\` |  Minor | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23570](https://issues.apache.org/jira/browse/SPARK-23570) | Add Spark-2.3 in HiveExternalCatalogVersionsSuite |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-23569](https://issues.apache.org/jira/browse/SPARK-23569) | pandas\_udf does not work with type-annotated python functions |  Major | PySpark | Stu (Michael Stewart) | Stu (Michael Stewart) |
| [SPARK-23496](https://issues.apache.org/jira/browse/SPARK-23496) | Locality of coalesced partitions can be severely skewed by the order of input partitions |  Major | Spark Core | Ala Luszczak | Ala Luszczak |
| [SPARK-22430](https://issues.apache.org/jira/browse/SPARK-22430) | Unknown tag warnings when building R docs with Roxygen 6.0.1 |  Trivial | Documentation | Joel Croteau | Rekha Joshi |
| [SPARK-18630](https://issues.apache.org/jira/browse/SPARK-18630) | PySpark ML memory leak |  Minor | ML, PySpark | holdenk | yogesh garg |
| [SPARK-23291](https://issues.apache.org/jira/browse/SPARK-23291) | SparkR : substr : In SparkR dataframe , starting and ending position arguments in "substr" is giving wrong result  when the position is greater than 1 |  Major | SparkR | Narendra | Liang-Chi Hsieh |
| [SPARK-23525](https://issues.apache.org/jira/browse/SPARK-23525) | ALTER TABLE CHANGE COLUMN doesn't work for external hive table |  Major | SQL | Pavlo Skliar | Jiang Xingbo |
| [SPARK-23524](https://issues.apache.org/jira/browse/SPARK-23524) | Big local shuffle blocks should not be checked for corruption. |  Major | Spark Core | jin xing | jin xing |
| [SPARK-23620](https://issues.apache.org/jira/browse/SPARK-23620) | Split thread dump lines by using the br tag |  Minor | Web UI | Maxim Gekk | Maxim Gekk |
| [SPARK-23522](https://issues.apache.org/jira/browse/SPARK-23522) | pyspark should always use sys.exit rather than exit |  Major | PySpark | Benjamin Peterson | Benjamin Peterson |
| [SPARK-23602](https://issues.apache.org/jira/browse/SPARK-23602) | PrintToStderr should behave the same in interpreted mode |  Trivial | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23271](https://issues.apache.org/jira/browse/SPARK-23271) | Parquet output contains only "\_SUCCESS" file after empty DataFrame saving |  Minor | SQL | Pavlo Z. | Dilip Biswal |
| [SPARK-23630](https://issues.apache.org/jira/browse/SPARK-23630) | Spark-on-YARN missing user customizations of hadoop config |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23173](https://issues.apache.org/jira/browse/SPARK-23173) | from\_json can produce nulls for fields which are marked as non-nullable |  Major | SQL | Herman van Hovell | Michał Świtakowski |
| [SPARK-23462](https://issues.apache.org/jira/browse/SPARK-23462) | Improve the error message in \`StructType\` |  Major | SQL | Xiao Li | Xiayun Sun |
| [SPARK-23618](https://issues.apache.org/jira/browse/SPARK-23618) | docker-image-tool.sh Fails While Building Image |  Major | Kubernetes | Ninad Ingole |  |
| [SPARK-23547](https://issues.apache.org/jira/browse/SPARK-23547) | Cleanup the .pipeout file when the Hive Session closed |  Major | SQL | zuotingbing | zuotingbing |
| [SPARK-23598](https://issues.apache.org/jira/browse/SPARK-23598) | WholeStageCodegen can lead to IllegalAccessError  calling append for HashAggregateExec |  Major | Spark Core | David Vogelbacher | Kazuaki Ishizaki |
| [SPARK-23658](https://issues.apache.org/jira/browse/SPARK-23658) | InProcessAppHandle uses the wrong class in getLogger |  Minor | Spark Submit | Sahil Takiar | Sahil Takiar |
| [SPARK-23671](https://issues.apache.org/jira/browse/SPARK-23671) | SHS is ignoring number of replay threads |  Critical | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23608](https://issues.apache.org/jira/browse/SPARK-23608) | SHS needs synchronization between attachSparkUI and detachSparkUI functions |  Minor | Spark Core, Web UI | Ye Zhou | Ye Zhou |
| [SPARK-23670](https://issues.apache.org/jira/browse/SPARK-23670) | Memory leak of SparkPlanGraphWrapper in sparkUI |  Major | SQL | Myroslav Lisniak | Myroslav Lisniak |
| [SPARK-23635](https://issues.apache.org/jira/browse/SPARK-23635) | Spark executor env variable is overwritten by same name AM env variable |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-18371](https://issues.apache.org/jira/browse/SPARK-18371) | Spark Streaming backpressure bug - generates a batch with large number of records |  Major | DStreams | mapreduced | Sebastian Arzt |
| [SPARK-23623](https://issues.apache.org/jira/browse/SPARK-23623) | Avoid concurrent use of cached KafkaConsumer in CachedKafkaConsumer (kafka-0-10-sql) |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23660](https://issues.apache.org/jira/browse/SPARK-23660) | Yarn throws exception in cluster mode when the application is small |  Minor | YARN | Gabor Somogyi | Gabor Somogyi |
| [SPARK-23574](https://issues.apache.org/jira/browse/SPARK-23574) | SinglePartition in data source V2 scan |  Major | Spark Core | Jose Torres | Jose Torres |
| [SPARK-23666](https://issues.apache.org/jira/browse/SPARK-23666) | Undeterministic column name with UDFs |  Minor | SQL | Daniel Darabos | Takeshi Yamamuro |
| [SPARK-23288](https://issues.apache.org/jira/browse/SPARK-23288) | Incorrect number of written records in structured streaming |  Major | SQL, Structured Streaming | Yuriy Bondaruk | Gabor Somogyi |
| [SPARK-23729](https://issues.apache.org/jira/browse/SPARK-23729) | Glob resolution breaks remote naming of files/archives |  Major | Spark Submit | Mihaly Toth | Mihaly Toth |
| [SPARK-23760](https://issues.apache.org/jira/browse/SPARK-23760) | CodegenContext.withSubExprEliminationExprs should save/restore CSE state correctly |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-23599](https://issues.apache.org/jira/browse/SPARK-23599) | The UUID() expression is too non-deterministic |  Critical | SQL | Herman van Hovell | Liang-Chi Hsieh |
| [SPARK-23614](https://issues.apache.org/jira/browse/SPARK-23614) | Union produces incorrect results when caching is used |  Major | SQL | Morten Hornbech | Liang-Chi Hsieh |
| [SPARK-23361](https://issues.apache.org/jira/browse/SPARK-23361) | Driver restart fails if it happens after 7 days from app submission |  Major | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23759](https://issues.apache.org/jira/browse/SPARK-23759) | Unable to bind Spark UI to specific host name / IP |  Major | Spark Core, Web UI | Felix Albani | Felix Albani |
| [SPARK-21685](https://issues.apache.org/jira/browse/SPARK-21685) | Params isSet in scala Transformer triggered by \_setDefault in pyspark |  Major | PySpark | Ratan Rai Sur | Bryan Cutler |
| [SPARK-23788](https://issues.apache.org/jira/browse/SPARK-23788) | Race condition in StreamingQuerySuite |  Minor | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23549](https://issues.apache.org/jira/browse/SPARK-23549) | Spark SQL unexpected behavior when comparing timestamp to date |  Major | SQL | Dong Jiang | Kazuaki Ishizaki |
| [SPARK-23787](https://issues.apache.org/jira/browse/SPARK-23787) | SparkSubmitSuite::"download remote resource if it is not supported by yarn" fails on Hadoop 2.9 |  Minor | Spark Core, Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23794](https://issues.apache.org/jira/browse/SPARK-23794) | UUID() should be stateful |  Major | SQL | Herman van Hovell | Liang-Chi Hsieh |
| [SPARK-23806](https://issues.apache.org/jira/browse/SPARK-23806) | Broadcast. unpersist can cause fatal exception when used with dynamic allocation |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-23785](https://issues.apache.org/jira/browse/SPARK-23785) | LauncherBackend doesn't check state of connection before setting state |  Major | Spark Core | Sahil Takiar | Sahil Takiar |
| [SPARK-23639](https://issues.apache.org/jira/browse/SPARK-23639) | SparkSQL CLI fails talk to Kerberized metastore when use proxy user |  Major | SQL | Kent Yao | Kent Yao |
| [SPARK-23808](https://issues.apache.org/jira/browse/SPARK-23808) | Test spark sessions should set default session |  Major | SQL | Jose Torres | Jose Torres |
| [SPARK-23743](https://issues.apache.org/jira/browse/SPARK-23743) | IsolatedClientLoader.isSharedClass returns an unindented result against \`slf4j\` keyword |  Minor | SQL | Jongyoul Lee | Jongyoul Lee |
| [SPARK-23640](https://issues.apache.org/jira/browse/SPARK-23640) | Hadoop config may override spark config |  Major | Spark Core | Yuming Wang | Yuming Wang |
| [SPARK-23827](https://issues.apache.org/jira/browse/SPARK-23827) | StreamingJoinExec should ensure that input data is partitioned into specific number of partitions |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23825](https://issues.apache.org/jira/browse/SPARK-23825) | [K8s] Spark pods should request memory + memoryOverhead as resources |  Major | Kubernetes | David Vogelbacher |  |
| [SPARK-23834](https://issues.apache.org/jira/browse/SPARK-23834) | Flaky test: LauncherServerSuite.testAppHandleDisconnect |  Major | Tests | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23802](https://issues.apache.org/jira/browse/SPARK-23802) | PropagateEmptyRelation can leave query plan in unresolved state |  Minor | SQL | Robert Kruszewski | Robert Kruszewski |
| [SPARK-23868](https://issues.apache.org/jira/browse/SPARK-23868) | Fix scala.MatchError in literals.sql.out |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-23637](https://issues.apache.org/jira/browse/SPARK-23637) | Yarn might allocate more resource if a same executor is killed multiple times. |  Major | YARN | jin xing | jin xing |
| [SPARK-23823](https://issues.apache.org/jira/browse/SPARK-23823) | ResolveReferences loses correct origin |  Major | SQL | Jiahui Jiang | Jiahui Jiang |
| [SPARK-23882](https://issues.apache.org/jira/browse/SPARK-23882) | Is UTF8StringSuite.writeToOutputStreamUnderflow() supported? |  Minor | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-23809](https://issues.apache.org/jira/browse/SPARK-23809) | Active SparkSession should be set by getOrCreate |  Minor | SQL | Eric Liang | Eric Liang |
| [SPARK-23893](https://issues.apache.org/jira/browse/SPARK-23893) | Possible overflow in long = int \* int |  Minor | Spark Core, SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-23816](https://issues.apache.org/jira/browse/SPARK-23816) | FetchFailedException when killing speculative task |  Major | SQL | chen xiao | Imran Rashid |
| [SPARK-23951](https://issues.apache.org/jira/browse/SPARK-23951) | Use java classed in ExprValue and simplify a bunch of stuff |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-6951](https://issues.apache.org/jira/browse/SPARK-6951) | History server slow startup if the event log directory is large |  Major | Web UI | Matt Cheah | Marcelo Vanzin |
| [SPARK-23971](https://issues.apache.org/jira/browse/SPARK-23971) | Should not leak Spark sessions across test suites |  Major | SQL, Tests | Eric Liang | Eric Liang |
| [SPARK-23815](https://issues.apache.org/jira/browse/SPARK-23815) | Spark writer dynamic partition overwrite mode fails to write output on multi level partition |  Major | Spark Core | Fangshi Li | Fangshi Li |
| [SPARK-23835](https://issues.apache.org/jira/browse/SPARK-23835) | When Dataset.as converts column from nullable to non-nullable type, null Doubles are converted silently to -1 |  Major | SQL | Joseph K. Bradley | Marco Gaido |
| [SPARK-22676](https://issues.apache.org/jira/browse/SPARK-22676) | Avoid iterating all partition paths when spark.sql.hive.verifyPartitionPath=true |  Major | SQL | jin xing | jin xing |
| [SPARK-23986](https://issues.apache.org/jira/browse/SPARK-23986) | CompileException when using too many avg aggregation after joining |  Major | SQL | Michel Davit | Marco Gaido |
| [SPARK-22968](https://issues.apache.org/jira/browse/SPARK-22968) | java.lang.IllegalStateException: No current assignment for partition kssh-2 |  Major | Spark Core | Jepson | Saisai Shao |
| [SPARK-21479](https://issues.apache.org/jira/browse/SPARK-21479) | Outer join filter pushdown in null supplying table when condition is on one of the joined columns |  Major | Optimizer, SQL | Abhijit Bhole | Maryann Xue |
| [SPARK-24007](https://issues.apache.org/jira/browse/SPARK-24007) | EqualNullSafe for FloatType and DoubleType might generate a wrong result by codegen. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-21811](https://issues.apache.org/jira/browse/SPARK-21811) | Inconsistency when finding the widest common type of a combination of DateType, StringType, and NumericType |  Minor | SQL | Ryan Bald | Jiang Xingbo |
| [SPARK-23989](https://issues.apache.org/jira/browse/SPARK-23989) | When using \`SortShuffleWriter\`, the data will be overwritten |  Critical | Spark Core | liuxian | Wenchen Fan |
| [SPARK-23976](https://issues.apache.org/jira/browse/SPARK-23976) | UTF8String.concat() or ByteArray.concat() may allocate shorter structure. |  Minor | Spark Core | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-24022](https://issues.apache.org/jira/browse/SPARK-24022) | Flaky test: SparkContextSuite |  Major | Spark Core, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-24033](https://issues.apache.org/jira/browse/SPARK-24033) | LAG Window function broken in Spark 2.3 |  Major | SQL | Emlyn Corrin | Xiao Li |
| [SPARK-23799](https://issues.apache.org/jira/browse/SPARK-23799) | [CBO] FilterEstimation.evaluateInSet produces devision by zero in a case of empty table with analyzed statistics |  Major | Optimizer | Michael Shtelma | Michael Shtelma |
| [SPARK-21168](https://issues.apache.org/jira/browse/SPARK-21168) | KafkaRDD should always set kafka clientId. |  Trivial | DStreams | Xingxing Di | liuzhaokun |
| [SPARK-23004](https://issues.apache.org/jira/browse/SPARK-23004) | Structured Streaming raise "llegalStateException: Cannot remove after already committed or aborted" |  Major | Structured Streaming | secfree | Tathagata Das |
| [SPARK-23888](https://issues.apache.org/jira/browse/SPARK-23888) | speculative task should not run on a given host where another attempt is already running on |  Major | Scheduler, Spark Core | wuyi | wuyi |
| [SPARK-24002](https://issues.apache.org/jira/browse/SPARK-24002) | Task not serializable caused by org.apache.parquet.io.api.Binary$ByteBufferBackedBinary.getBytes |  Major | SQL | Xiao Li | Xiao Li |
| [SPARK-24056](https://issues.apache.org/jira/browse/SPARK-24056) | Make consumer creation lazy in Kafka source for Structured streaming |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24012](https://issues.apache.org/jira/browse/SPARK-24012) | Union of map and other compatible column |  Major | SQL | Lijia Liu | Lijia Liu |
| [SPARK-24050](https://issues.apache.org/jira/browse/SPARK-24050) | StreamingQuery does not calculate input / processing rates in some cases |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24062](https://issues.apache.org/jira/browse/SPARK-24062) | SASL encryption cannot be worked in ThriftServer |  Major | Spark Core, SQL | Saisai Shao | Saisai Shao |
| [SPARK-23355](https://issues.apache.org/jira/browse/SPARK-23355) | convertMetastore should not ignore table properties |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24085](https://issues.apache.org/jira/browse/SPARK-24085) | Scalar subquery error |  Major | SQL | Alexey Baturin | Dilip Biswal |
| [SPARK-24104](https://issues.apache.org/jira/browse/SPARK-24104) | SQLAppStatusListener overwrites metrics onDriverAccumUpdates instead of updating them |  Major | SQL | Juliusz Sompolski | Juliusz Sompolski |
| [SPARK-23094](https://issues.apache.org/jira/browse/SPARK-23094) | Json Readers choose wrong encoding when bad records are present and fail |  Major | SQL | Burak Yavuz | Maxim Gekk |
| [SPARK-23853](https://issues.apache.org/jira/browse/SPARK-23853) | Skip doctests which require hive support built in PySpark |  Trivial | PySpark, SQL | holdenk | Dongjoon Hyun |
| [SPARK-24061](https://issues.apache.org/jira/browse/SPARK-24061) | [SS]TypedFilter is not supported in Continuous Processing |  Major | SQL | Wang Yanlin | Wang Yanlin |
| [SPARK-23941](https://issues.apache.org/jira/browse/SPARK-23941) | Mesos task failed on specific spark app name |  Major | Mesos, Spark Submit | bounkong khamphousone | bounkong khamphousone |
| [SPARK-24107](https://issues.apache.org/jira/browse/SPARK-24107) | ChunkedByteBuffer.writeFully method has not reset the limit value |  Blocker | Block Manager, Input/Output | wangjinhai | wangjinhai |
| [SPARK-24013](https://issues.apache.org/jira/browse/SPARK-24013) | ApproximatePercentile grinds to a halt on sorted input. |  Major | SQL | Juliusz Sompolski | Marco Gaido |
| [SPARK-24133](https://issues.apache.org/jira/browse/SPARK-24133) | Reading Parquet files containing large strings can fail with java.lang.ArrayIndexOutOfBoundsException |  Major | SQL | Ala Luszczak | Ala Luszczak |
| [SPARK-24123](https://issues.apache.org/jira/browse/SPARK-24123) | Fix a flaky test \`DateTimeUtilsSuite.monthsBetween\` |  Minor | SQL | Dongjoon Hyun | Marco Gaido |
| [SPARK-24110](https://issues.apache.org/jira/browse/SPARK-24110) | Avoid calling UGI loginUserFromKeytab in ThriftServer |  Major | SQL | Saisai Shao | Saisai Shao |
| [SPARK-23489](https://issues.apache.org/jira/browse/SPARK-23489) | Flaky Test: HiveExternalCatalogVersionsSuite |  Major | SQL, Tests | Marco Gaido | Dongjoon Hyun |
| [SPARK-23715](https://issues.apache.org/jira/browse/SPARK-23715) | from\_utc\_timestamp returns incorrect results for some UTC date/time values |  Major | SQL | Bruce Robbins | Wenchen Fan |
| [SPARK-24166](https://issues.apache.org/jira/browse/SPARK-24166) | InMemoryTableScanExec should not access SQLConf at executor side |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24169](https://issues.apache.org/jira/browse/SPARK-24169) | JsonToStructs should not access SQLConf at executor side |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23433](https://issues.apache.org/jira/browse/SPARK-23433) | java.lang.IllegalStateException: more than one active taskSet for stage |  Major | Spark Core | Shixiong Zhu | Imran Rashid |
| [SPARK-24168](https://issues.apache.org/jira/browse/SPARK-24168) | WindowExec should not access SQLConf at executor side |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24167](https://issues.apache.org/jira/browse/SPARK-24167) | ParquetFilters should not access SQLConf at executor side |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-23697](https://issues.apache.org/jira/browse/SPARK-23697) | Accumulators of Spark 1.x no longer work with Spark 2.x |  Major | Spark Core | Sergey Zhemzhitsky | Wenchen Fan |
| [SPARK-24143](https://issues.apache.org/jira/browse/SPARK-24143) | filter empty blocks when convert mapstatus to (blockId, size) pair |  Major | Spark Core | jin xing | jin xing |
| [SPARK-23775](https://issues.apache.org/jira/browse/SPARK-23775) | Flaky test: DataFrameRangeSuite |  Major | SQL, Tests | Gabor Somogyi | Gabor Somogyi |
| [SPARK-24043](https://issues.apache.org/jira/browse/SPARK-24043) | InterpretedPredicate.eval fails if expression tree contains Nondeterministic expressions |  Minor | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-15750](https://issues.apache.org/jira/browse/SPARK-15750) | Constructing FPGrowth fails when no numPartitions specified in pyspark |  Major | MLlib, PySpark | Jeff Zhang | Jeff Zhang |
| [SPARK-23975](https://issues.apache.org/jira/browse/SPARK-23975) | Allow Clustering to take Arrays of Double as input features |  Major | ML | Lu Wang | Lu Wang |
| [SPARK-24076](https://issues.apache.org/jira/browse/SPARK-24076) | very bad performance when shuffle.partition = 8192 |  Major | SQL | yucai | yucai |
| [SPARK-24068](https://issues.apache.org/jira/browse/SPARK-24068) | CSV schema inferring doesn't work for compressed files |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24214](https://issues.apache.org/jira/browse/SPARK-24214) | StreamingRelationV2/StreamingExecutionRelation/ContinuousExecutionRelation.toJSON should not fail |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-24141](https://issues.apache.org/jira/browse/SPARK-24141) | Fix bug in CoarseGrainedSchedulerBackend.killExecutors |  Critical | Spark Core | wuyi | wuyi |
| [SPARK-23852](https://issues.apache.org/jira/browse/SPARK-23852) | Parquet MR bug can lead to incorrect SQL results |  Blocker | SQL | Henry Robinson | Ryan Blue |
| [SPARK-22279](https://issues.apache.org/jira/browse/SPARK-22279) | Turn on spark.sql.hive.convertMetastoreOrc by default |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24137](https://issues.apache.org/jira/browse/SPARK-24137) | [K8s] Mount temporary directories in emptydir volumes |  Major | Kubernetes | Matt Cheah | Matt Cheah |
| [SPARK-19181](https://issues.apache.org/jira/browse/SPARK-19181) | SparkListenerSuite.local metrics fails when average executorDeserializeTime is too short. |  Minor | Tests | Jose Soltren | Attila Zsolt Piros |
| [SPARK-10878](https://issues.apache.org/jira/browse/SPARK-10878) | Race condition when resolving Maven coordinates via Ivy |  Minor | Spark Core | Ryan Williams | Kazuaki Ishizaki |
| [SPARK-24255](https://issues.apache.org/jira/browse/SPARK-24255) | Require Java 8 in SparkR description |  Major | SparkR | Shivaram Venkataraman | Shivaram Venkataraman |
| [SPARK-17916](https://issues.apache.org/jira/browse/SPARK-17916) | CSV data source treats empty string as null no matter what nullValue option is |  Major | SQL | Hossein Falaki | Maxim Gekk |
| [SPARK-24228](https://issues.apache.org/jira/browse/SPARK-24228) | Fix the lint error |  Minor | Build | Xiao Li |  |
| [SPARK-24263](https://issues.apache.org/jira/browse/SPARK-24263) | SparkR java check breaks on openjdk |  Blocker | SparkR | Felix Cheung | Felix Cheung |
| [SPARK-23780](https://issues.apache.org/jira/browse/SPARK-23780) | Failed to use googleVis library with new SparkR |  Major | SparkR | Ivan Dzikovsky | Felix Cheung |
| [SPARK-24241](https://issues.apache.org/jira/browse/SPARK-24241) | Do not fail fast when dynamic resource allocation enabled with 0 executor |  Minor | Spark Submit | Kent Yao | Kent Yao |
| [SPARK-24259](https://issues.apache.org/jira/browse/SPARK-24259) | ArrayWriter for Arrow produces wrong output |  Critical | PySpark, SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |
| [SPARK-21945](https://issues.apache.org/jira/browse/SPARK-21945) | pyspark --py-files doesn't work in yarn client mode |  Major | PySpark | Thomas Graves | Hyukjin Kwon |
| [SPARK-22371](https://issues.apache.org/jira/browse/SPARK-22371) | dag-scheduler-event-loop thread stopped with error  Attempted to access garbage collected accumulator 5605982 |  Major | Spark Core | Mayank Agarwal | Artem Rudoy |
| [SPARK-23850](https://issues.apache.org/jira/browse/SPARK-23850) | We should not redact username\|user\|url from UI by default |  Major | Web UI | Thomas Graves | Marcelo Vanzin |
| [SPARK-23857](https://issues.apache.org/jira/browse/SPARK-23857) | In mesos cluster mode spark submit requires the keytab to be available on the local file system. |  Minor | Mesos | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-24309](https://issues.apache.org/jira/browse/SPARK-24309) | AsyncEventQueue should handle an interrupt from a Listener |  Blocker | Scheduler, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-21673](https://issues.apache.org/jira/browse/SPARK-21673) | Spark local directory is not set correctly |  Major | Block Manager, Mesos | Jake Charland | Jake Charland |
| [SPARK-24313](https://issues.apache.org/jira/browse/SPARK-24313) | Collection functions interpreted execution doesn't work with complex types |  Critical | SQL | Marco Gaido | Marco Gaido |
| [SPARK-24348](https://issues.apache.org/jira/browse/SPARK-24348) | scala.MatchError in the "element\_at" expression |  Major | SQL | Alex Vayda | Alex Vayda |
| [SPARK-19185](https://issues.apache.org/jira/browse/SPARK-19185) | ConcurrentModificationExceptions with CachedKafkaConsumers when Windowing |  Major | DStreams | Kalvin Chau | Gabor Somogyi |
| [SPARK-24294](https://issues.apache.org/jira/browse/SPARK-24294) | Throw SparkException when OOM in BroadcastExchangeExec |  Major | SQL | jin xing | jin xing |
| [SPARK-23416](https://issues.apache.org/jira/browse/SPARK-23416) | Flaky test: KafkaSourceStressForDontFailOnDataLossSuite.stress test for failOnDataLoss=false |  Minor | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24257](https://issues.apache.org/jira/browse/SPARK-24257) | LongToUnsafeRowMap calculate the new size may be wrong |  Blocker | SQL | dzcxzl | dzcxzl |
| [SPARK-24322](https://issues.apache.org/jira/browse/SPARK-24322) | Upgrade Apache ORC to 1.4.4 |  Major | Build | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-24364](https://issues.apache.org/jira/browse/SPARK-24364) | Files deletion after globbing may fail StructuredStreaming jobs |  Major | Structured Streaming | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24230](https://issues.apache.org/jira/browse/SPARK-24230) | With Parquet 1.10 upgrade has errors in the vectorized reader |  Major | SQL | Ian O Connell | Ryan Blue |
| [SPARK-24350](https://issues.apache.org/jira/browse/SPARK-24350) | ClassCastException in "array\_position" function |  Major | SQL | Alex Vayda |  |
| [SPARK-24368](https://issues.apache.org/jira/browse/SPARK-24368) | Flaky tests: org.apache.spark.sql.execution.datasources.csv.UnivocityParserSuite |  Major | SQL, Tests | Xiao Li | Maxim Gekk |
| [SPARK-15125](https://issues.apache.org/jira/browse/SPARK-15125) | CSV data source recognizes empty quoted strings in the input as null. |  Major | SQL | Suresh Thalamati |  |
| [SPARK-24373](https://issues.apache.org/jira/browse/SPARK-24373) | "df.cache() df.count()" no longer eagerly caches data when the analyzed plans are different after re-analyzing the plans |  Blocker | SQL | Wenbo Zhao | Marco Gaido |
| [SPARK-19613](https://issues.apache.org/jira/browse/SPARK-19613) | Flaky test: StateStoreRDDSuite |  Minor | Structured Streaming, Tests | Kay Ousterhout | Dongjoon Hyun |
| [SPARK-24377](https://issues.apache.org/jira/browse/SPARK-24377) | Make --py-files work in non pyspark application |  Minor | Spark Submit | Saisai Shao | Saisai Shao |
| [SPARK-23991](https://issues.apache.org/jira/browse/SPARK-23991) | data loss when allocateBlocksToBatch |  Major | DStreams, Input/Output | kevin fu | Gabor Somogyi |
| [SPARK-23754](https://issues.apache.org/jira/browse/SPARK-23754) | StopIterator exception in Python UDF results in partial result |  Blocker | PySpark | Li Jin | Emilio Dorigatti |
| [SPARK-24384](https://issues.apache.org/jira/browse/SPARK-24384) | spark-submit --py-files with .py files doesn't work in client mode before context initialization |  Major | PySpark, Spark Submit | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24276](https://issues.apache.org/jira/browse/SPARK-24276) | semanticHash() returns different values for semantically the same IS IN |  Minor | SQL | Maxim Gekk | Marco Gaido |
| [SPARK-23649](https://issues.apache.org/jira/browse/SPARK-23649) | CSV schema inferring fails on some UTF-8 chars |  Major | SQL | Maxim Gekk |  |
| [SPARK-24414](https://issues.apache.org/jira/browse/SPARK-24414) | Stages page doesn't show all task attempts when failures |  Critical | Web UI | Thomas Graves | Marcelo Vanzin |
| [SPARK-24351](https://issues.apache.org/jira/browse/SPARK-24351) | offsetLog/commitLog purge thresholdBatchId should be computed with current committed epoch but not currentBatchId in CP mode |  Major | Structured Streaming | huangtengfei | huangtengfei |
| [SPARK-24369](https://issues.apache.org/jira/browse/SPARK-24369) | A bug when having multiple distinct aggregations |  Major | SQL | Xiao Li | Wenchen Fan |
| [SPARK-23786](https://issues.apache.org/jira/browse/SPARK-23786) | CSV schema validation - column names are not checked |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-21896](https://issues.apache.org/jira/browse/SPARK-21896) | Stack Overflow when window function nested inside aggregate function |  Minor | PySpark, SQL | Luyao Yang | Anton Okolnychyi |
| [SPARK-24300](https://issues.apache.org/jira/browse/SPARK-24300) | generateLDAData in ml.cluster.LDASuite didn't set seed correctly |  Minor | ML | Xiangrui Meng | Lu Wang |
| [SPARK-16451](https://issues.apache.org/jira/browse/SPARK-16451) | Spark-shell / pyspark should finish gracefully when "SaslException: GSS initiate failed" is hit |  Major | . | Yesha Vora | Marcelo Vanzin |
| [SPARK-24453](https://issues.apache.org/jira/browse/SPARK-24453) | Fix error recovering from the failure in a no-data batch |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22384](https://issues.apache.org/jira/browse/SPARK-22384) | Refine partition pruning when attribute is wrapped in Cast |  Major | SQL | jin xing | jin xing |
| [SPARK-17756](https://issues.apache.org/jira/browse/SPARK-17756) | java.lang.ClassCastException when using cartesian with DStream.transform |  Major | DStreams, PySpark | Maciej Szymkiewicz | Hyukjin Kwon |
| [SPARK-24217](https://issues.apache.org/jira/browse/SPARK-24217) | Power Iteration Clustering is not displaying cluster indices corresponding to some vertices. |  Major | ML | shahid |  |
| [SPARK-24213](https://issues.apache.org/jira/browse/SPARK-24213) | Power Iteration Clustering in the SparkML throws exception, when the ID is IntType |  Major | ML | shahid |  |
| [SPARK-24468](https://issues.apache.org/jira/browse/SPARK-24468) | DecimalType \`adjustPrecisionScale\` might fail when scale is negative |  Minor | SQL | Yifei Wu | Marco Gaido |
| [SPARK-24520](https://issues.apache.org/jira/browse/SPARK-24520) | Double braces in link |  Trivial | Documentation | Fokko Driesprong | Fokko Driesprong |
| [SPARK-23732](https://issues.apache.org/jira/browse/SPARK-23732) | Broken link to scala source code in Spark Scala api Scaladoc |  Trivial | Build, Documentation, Project Infra | Yogesh Tewari | Marcelo Vanzin |
| [SPARK-24416](https://issues.apache.org/jira/browse/SPARK-24416) | Update configuration definition for spark.blacklist.killBlacklistedExecutors |  Minor | Spark Core | Sanket Reddy | Sanket Reddy |
| [SPARK-24216](https://issues.apache.org/jira/browse/SPARK-24216) | Spark TypedAggregateExpression uses getSimpleName that is not safe in scala |  Major | SQL | Fangshi Li | Fangshi Li |
| [SPARK-24506](https://issues.apache.org/jira/browse/SPARK-24506) | Spark.ui.filters not applied to /sqlserver/ url |  Major | Web UI | t oo | Marco Gaido |
| [SPARK-24466](https://issues.apache.org/jira/browse/SPARK-24466) | TextSocketMicroBatchReader no longer works with nc utility |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-24500](https://issues.apache.org/jira/browse/SPARK-24500) | UnsupportedOperationException when trying to execute Union plan with Stream of children |  Major | SQL | Bogdan Raducanu | Herman van Hovell |
| [SPARK-24531](https://issues.apache.org/jira/browse/SPARK-24531) | HiveExternalCatalogVersionsSuite failing due to missing 2.2.0 version |  Blocker | Tests | Marco Gaido | Marco Gaido |
| [SPARK-24495](https://issues.apache.org/jira/browse/SPARK-24495) | SortMergeJoin with duplicate keys wrong results |  Blocker | SQL | Bogdan Raducanu | Marco Gaido |
| [SPARK-24563](https://issues.apache.org/jira/browse/SPARK-24563) | Allow running PySpark shell without Hive |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-24319](https://issues.apache.org/jira/browse/SPARK-24319) | run-example can not print usage |  Minor | Spark Submit | Bryan Cutler | Gabor Somogyi |
| [SPARK-24452](https://issues.apache.org/jira/browse/SPARK-24452) | long = int\*int or long = int+int may cause overflow. |  Minor | Spark Core, SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-24573](https://issues.apache.org/jira/browse/SPARK-24573) | SBT Java checkstyle affecting the build |  Major | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24526](https://issues.apache.org/jira/browse/SPARK-24526) | Spaces in the build dir causes failures in the build/mvn script |  Minor | Build | Trystan Leftwich | Trystan Leftwich |
| [SPARK-24548](https://issues.apache.org/jira/browse/SPARK-24548) | JavaPairRDD to Dataset\<Row\> in SPARK generates ambiguous results |  Major | Java API, SQL | Jackson | Liang-Chi Hsieh |
| [SPARK-24556](https://issues.apache.org/jira/browse/SPARK-24556) | ReusedExchange should rewrite output partitioning also when child's partitioning is RangePartitioning |  Major | SQL | yucai | yucai |
| [SPARK-24583](https://issues.apache.org/jira/browse/SPARK-24583) | Wrong schema type in InsertIntoDataSourceCommand |  Major | SQL | Maryann Xue | Maryann Xue |
| [SPARK-23778](https://issues.apache.org/jira/browse/SPARK-23778) | SparkContext.emptyRDD confuses SparkContext.union |  Trivial | Spark Core | Stefano Pettini | Marco Gaido |
| [SPARK-24578](https://issues.apache.org/jira/browse/SPARK-24578) | Reading remote cache block behavior changes and causes timeout issue |  Blocker | Spark Core | Wenbo Zhao | Wenbo Zhao |
| [SPARK-24613](https://issues.apache.org/jira/browse/SPARK-24613) | Cache with UDF could not be matched with subsequent dependent caches |  Minor | SQL | Maryann Xue | Maryann Xue |
| [SPARK-24589](https://issues.apache.org/jira/browse/SPARK-24589) | OutputCommitCoordinator may allow duplicate commits |  Blocker | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24588](https://issues.apache.org/jira/browse/SPARK-24588) | StreamingSymmetricHashJoinExec should require HashClusteredPartitioning from children |  Blocker | Structured Streaming | Wenchen Fan | Wenchen Fan |
| [SPARK-24190](https://issues.apache.org/jira/browse/SPARK-24190) | lineSep shouldn't be required in JSON write |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24633](https://issues.apache.org/jira/browse/SPARK-24633) | arrays\_zip function's code generator splits input processing incorrectly |  Minor | SQL | Bruce Robbins | Marco Gaido |
| [SPARK-24648](https://issues.apache.org/jira/browse/SPARK-24648) | SQLMetrics counters are not thread safe |  Minor | Project Infra | Stacy Kerkela | Stacy Kerkela |
| [SPARK-24552](https://issues.apache.org/jira/browse/SPARK-24552) | Task attempt numbers are reused when stages are retried |  Blocker | Spark Core | Ryan Blue | Ryan Blue |
| [SPARK-24659](https://issues.apache.org/jira/browse/SPARK-24659) | GenericArrayData.equals should respect element type differences |  Major | SQL | Kris Mok | Kris Mok |
| [SPARK-24446](https://issues.apache.org/jira/browse/SPARK-24446) | Library path with special characters breaks Spark on YARN |  Minor | YARN | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-24660](https://issues.apache.org/jira/browse/SPARK-24660) | SHS is not showing properly errors when downloading logs |  Major | Web UI | Marco Gaido | Marco Gaido |
| [SPARK-24553](https://issues.apache.org/jira/browse/SPARK-24553) | Job UI redirect causing http 302 error |  Minor | Web UI | Steven Kallman | Steven Kallman |
| [SPARK-24645](https://issues.apache.org/jira/browse/SPARK-24645) | Skip parsing when csvColumnPruning enabled and partitions scanned only |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-24603](https://issues.apache.org/jira/browse/SPARK-24603) | Typo in comments |  Trivial | Spark Core | Fokko Driesprong | Fokko Driesprong |
| [SPARK-24715](https://issues.apache.org/jira/browse/SPARK-24715) | sbt build brings a wrong jline versions |  Critical | Build | Dongjoon Hyun | Liang-Chi Hsieh |
| [SPARK-24385](https://issues.apache.org/jira/browse/SPARK-24385) | Trivially-true EqualNullSafe should be handled like EqualTo in Dataset.join |  Major | SQL | Daniel Shields | Marco Gaido |
| [SPARK-23698](https://issues.apache.org/jira/browse/SPARK-23698) | Spark code contains numerous undefined names in Python 3 |  Minor | PySpark | cclauss | cclauss |
| [SPARK-24704](https://issues.apache.org/jira/browse/SPARK-24704) | The order of stages in the DAG graph is incorrect |  Minor | Web UI | StanZhai | StanZhai |
| [SPARK-24698](https://issues.apache.org/jira/browse/SPARK-24698) | In Pyspark's ML, an Identifiable's UID has 20 random characters rather than the 12 mentioned in the documentation. |  Trivial | ML | Thomas Dunne | Thomas Dunne |
| [SPARK-24711](https://issues.apache.org/jira/browse/SPARK-24711) | Integration tests will not work with exclude/include tags |  Minor | Kubernetes | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-24743](https://issues.apache.org/jira/browse/SPARK-24743) | Update the JavaDirectKafkaWordCount example to support the new API of Kafka |  Minor | Examples | luochuan | luochuan |
| [SPARK-24694](https://issues.apache.org/jira/browse/SPARK-24694) | Integration tests pass only one app argument |  Minor | Kubernetes | Stavros Kontopoulos | Stavros Kontopoulos |
| [SPARK-24535](https://issues.apache.org/jira/browse/SPARK-24535) | Fix java version parsing in SparkR on Windows |  Blocker | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-24569](https://issues.apache.org/jira/browse/SPARK-24569) | Spark Aggregator with output type Option[Boolean] creates column of type Row |  Major | SQL | John Conwell | Liang-Chi Hsieh |
| [SPARK-24749](https://issues.apache.org/jira/browse/SPARK-24749) | Cannot filter array\<struct\> with named\_struct |  Major | SQL | pin\_zhang | Liang-Chi Hsieh |
| [SPARK-24739](https://issues.apache.org/jira/browse/SPARK-24739) | PySpark does not work with Python 3.7.0 |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24530](https://issues.apache.org/jira/browse/SPARK-24530) | Sphinx doesn't render autodoc\_docstring\_signature correctly (with Python 2?) and pyspark.ml docs are broken |  Critical | ML, PySpark | Xiangrui Meng | Hyukjin Kwon |
| [SPARK-24165](https://issues.apache.org/jira/browse/SPARK-24165) | UDF within when().otherwise() raises NullPointerException |  Major | SQL | Jingxuan Wang | Marek Novotny |
| [SPARK-23461](https://issues.apache.org/jira/browse/SPARK-23461) | vignettes should include model predictions for some ML models |  Major | SparkR | Felix Cheung | Huaxin Gao |
| [SPARK-24610](https://issues.apache.org/jira/browse/SPARK-24610) | wholeTextFiles broken for small files |  Minor | Input/Output | Dhruve Ashar | Dhruve Ashar |
| [SPARK-23007](https://issues.apache.org/jira/browse/SPARK-23007) | Add schema evolution test suite for file-based data sources |  Major | SQL, Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23486](https://issues.apache.org/jira/browse/SPARK-23486) | LookupFunctions should not check the same function name more than once |  Major | SQL | Cheng Lian | kevin yu |
| [SPARK-24713](https://issues.apache.org/jira/browse/SPARK-24713) | AppMatser of spark streaming kafka OOM if there are hundreds of topics consumed |  Major | Input/Output | Yuanbo Liu | Yuanbo Liu |
| [SPARK-24781](https://issues.apache.org/jira/browse/SPARK-24781) | Using a reference from Dataset in Filter/Sort might not work. |  Blocker | SQL | Takuya Ueshin | Liang-Chi Hsieh |
| [SPARK-17091](https://issues.apache.org/jira/browse/SPARK-17091) | Convert IN predicate to equivalent Parquet filter |  Major | . | Andrew Duffy | Yuming Wang |
| [SPARK-24754](https://issues.apache.org/jira/browse/SPARK-24754) | Minhash integer overflow |  Minor | ML | Jiayuan Ma | Sean Owen |
| [SPARK-24676](https://issues.apache.org/jira/browse/SPARK-24676) | Project required data from parsed data when csvColumnPruning disabled |  Minor | SQL | Takeshi Yamamuro | Takeshi Yamamuro |
| [SPARK-24813](https://issues.apache.org/jira/browse/SPARK-24813) | HiveExternalCatalogVersionsSuite still flaky; fall back to Apache archive |  Major | Tests | Sean Owen | Sean Owen |
| [SPARK-24734](https://issues.apache.org/jira/browse/SPARK-24734) | Fix containsNull of Concat for array type. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-24681](https://issues.apache.org/jira/browse/SPARK-24681) | Cannot create a view from a table when a nested column name contains ':' |  Major | SQL | Adrian Ionescu | Takeshi Yamamuro |
| [SPARK-24804](https://issues.apache.org/jira/browse/SPARK-24804) | There are duplicate words in the title in the DatasetSuite |  Trivial | Spark Core | hantiantian | hantiantian |
| [SPARK-24677](https://issues.apache.org/jira/browse/SPARK-24677) | TaskSetManager not updating successfulTaskDurations for old stage attempts |  Critical | Spark Core | dzcxzl | dzcxzl |
| [SPARK-22151](https://issues.apache.org/jira/browse/SPARK-22151) | PYTHONPATH not picked up from the spark.yarn.appMasterEnv properly |  Major | YARN | Thomas Graves | Parth Gandhi |
| [SPARK-24755](https://issues.apache.org/jira/browse/SPARK-24755) | Executor loss can cause task to not be resubmitted |  Major | Spark Core | Mridul Muralidharan | Hieu Tri Huynh |
| [SPARK-24846](https://issues.apache.org/jira/browse/SPARK-24846) | Stabilize expression cannonicalization |  Major | SQL | Herman van Hovell |  |
| [SPARK-24195](https://issues.apache.org/jira/browse/SPARK-24195) | sc.addFile for local:/ path is broken |  Minor | Spark Core | Felix Cheung | Li Yuanjian |
| [SPARK-23731](https://issues.apache.org/jira/browse/SPARK-23731) | FileSourceScanExec throws NullPointerException in subexpression elimination |  Major | SQL | Jacek Laskowski | Hyukjin Kwon |
| [SPARK-24880](https://issues.apache.org/jira/browse/SPARK-24880) | Fix the group id for spark-kubernetes-integration-tests |  Major | Build, Kubernetes | Shixiong Zhu | Shixiong Zhu |
| [SPARK-24488](https://issues.apache.org/jira/browse/SPARK-24488) | Analyzer throws when generator is aliased multiple times |  Minor | SQL | Brandon Krieger | Brandon Krieger |
| [SPARK-24879](https://issues.apache.org/jira/browse/SPARK-24879) | NPE in Hive partition filter pushdown for \`partCol IN (NULL, ....)\` |  Major | SQL | William Sheu | William Sheu |
| [SPARK-24873](https://issues.apache.org/jira/browse/SPARK-24873) | increase switch to shielding frequent interaction reports with yarn |  Major | Spark Shell, YARN | JieFang.He | Yuming Wang |
| [SPARK-24850](https://issues.apache.org/jira/browse/SPARK-24850) | Query plan string representation grows exponentially on queries with recursive cached datasets |  Major | SQL | Onur Satici | Onur Satici |
| [SPARK-24594](https://issues.apache.org/jira/browse/SPARK-24594) | Introduce metrics for YARN executor allocation problems |  Major | YARN | Attila Zsolt Piros | Attila Zsolt Piros |
| [SPARK-24870](https://issues.apache.org/jira/browse/SPARK-24870) | Cache can't work normally if there are case letters in SQL |  Major | SQL | eaton | eaton |
| [SPARK-24812](https://issues.apache.org/jira/browse/SPARK-24812) | Last Access Time in the table description is not valid |  Minor | SQL | Sujith | Sujith |
| [SPARK-24895](https://issues.apache.org/jira/browse/SPARK-24895) | Spark 2.4.0 Snapshot artifacts has broken metadata due to mismatched filenames |  Major | Build | Eric Chang | Eric Chang |
| [SPARK-24891](https://issues.apache.org/jira/browse/SPARK-24891) | Fix HandleNullInputsForUDF rule |  Major | SQL | Maryann Xue | Maryann Xue |
| [SPARK-24911](https://issues.apache.org/jira/browse/SPARK-24911) | SHOW CREATE TABLE drops escaping of nested column names |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24878](https://issues.apache.org/jira/browse/SPARK-24878) | Fix reverse function for array type of primitive type containing null. |  Major | SQL | Takuya Ueshin | Takuya Ueshin |
| [SPARK-24919](https://issues.apache.org/jira/browse/SPARK-24919) | Scala linter rule for sparkContext.hadoopConfiguration |  Major | Build | Gengliang Wang | Gengliang Wang |
| [SPARK-24829](https://issues.apache.org/jira/browse/SPARK-24829) | In Spark Thrift Server, CAST AS FLOAT inconsistent with spark-shell or spark-sql |  Major | SQL | zuotingbing | zuotingbing |
| [SPARK-24927](https://issues.apache.org/jira/browse/SPARK-24927) | The hadoop-provided profile doesn't play well with Snappy-compressed Parquet files |  Major | Build | Cheng Lian | Cheng Lian |
| [SPARK-24950](https://issues.apache.org/jira/browse/SPARK-24950) | scala DateTimeUtilsSuite daysToMillis and millisToDays fails w/java 8 181-b13 |  Major | Build, Tests | shane knapp | Chris Martin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16139](https://issues.apache.org/jira/browse/SPARK-16139) | Audit tests for leaked threads |  Major | Tests | Imran Rashid | Gabor Somogyi |
| [SPARK-23169](https://issues.apache.org/jira/browse/SPARK-23169) | Run lintr on the changes of lint-r script and .lintr configuration |  Minor | Project Infra | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23392](https://issues.apache.org/jira/browse/SPARK-23392) | Add some test case for images feature |  Trivial | ML, Tests | xubo245 | xubo245 |
| [SPARK-22886](https://issues.apache.org/jira/browse/SPARK-22886) | ML test for StructuredStreaming: spark.ml.recommendation |  Major | ML, Tests | Joseph K. Bradley | Gabor Somogyi |
| [SPARK-22882](https://issues.apache.org/jira/browse/SPARK-22882) | ML test for StructuredStreaming: spark.ml.classification |  Major | ML, Tests | Joseph K. Bradley | Weichen Xu |
| [SPARK-22915](https://issues.apache.org/jira/browse/SPARK-22915) | ML test for StructuredStreaming: spark.ml.feature, N-Z |  Major | ML, Tests | Joseph K. Bradley | Attila Zsolt Piros |
| [SPARK-23849](https://issues.apache.org/jira/browse/SPARK-23849) | Tests for the samplingRatio option of json schema inferring |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-23881](https://issues.apache.org/jira/browse/SPARK-23881) | Flaky test: JobCancellationSuite."interruptible iterator of shuffle reader" |  Major | Spark Core | Jiang Xingbo | Jiang Xingbo |
| [SPARK-22883](https://issues.apache.org/jira/browse/SPARK-22883) | ML test for StructuredStreaming: spark.ml.feature, A-M |  Major | ML, Tests | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-24044](https://issues.apache.org/jira/browse/SPARK-24044) | Explicitly print out skipped tests from unittest module |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-22885](https://issues.apache.org/jira/browse/SPARK-22885) | ML test for StructuredStreaming: spark.ml.tuning |  Major | ML, Tests | Joseph K. Bradley | Weichen Xu |
| [SPARK-22884](https://issues.apache.org/jira/browse/SPARK-22884) | ML test for StructuredStreaming: spark.ml.clustering |  Major | ML, Tests | Joseph K. Bradley | Sandor Murakozi |
| [SPARK-24502](https://issues.apache.org/jira/browse/SPARK-24502) | flaky test: UnsafeRowSerializerSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24521](https://issues.apache.org/jira/browse/SPARK-24521) | Fix ineffective test in CachedTableSuite |  Minor | SQL | Li Jin | Li Jin |
| [SPARK-24564](https://issues.apache.org/jira/browse/SPARK-24564) | Add test suite for RecordBinaryComparator |  Minor | SQL | Jiang Xingbo | Jiang Xingbo |
| [SPARK-24740](https://issues.apache.org/jira/browse/SPARK-24740) | PySpark tests do not pass with NumPy 0.14.x+ |  Minor | ML, PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24562](https://issues.apache.org/jira/browse/SPARK-24562) | Allow running same tests with multiple configs in SQLQueryTestSuite |  Trivial | SQL, Tests | Marco Gaido | Marco Gaido |
| [SPARK-24840](https://issues.apache.org/jira/browse/SPARK-24840) | do not use dummy filter to switch codegen on/off |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24861](https://issues.apache.org/jira/browse/SPARK-24861) | create corrected temp directories in RateSourceSuite |  Major | Structured Streaming | Wenchen Fan | Wenchen Fan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-12850](https://issues.apache.org/jira/browse/SPARK-12850) | Support bucket pruning (predicate pushdown for bucketed tables) |  Major | SQL | Reynold Xin | Xiao Li |
| [SPARK-23046](https://issues.apache.org/jira/browse/SPARK-23046) | Have RFormula include VectorSizeHint in pipeline |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22274](https://issues.apache.org/jira/browse/SPARK-22274) | User-defined aggregation functions with pandas udf |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-23344](https://issues.apache.org/jira/browse/SPARK-23344) | Add KMeans distanceMeasure param to PySpark |  Minor | ML, PySpark | Marco Gaido | Marco Gaido |
| [SPARK-23084](https://issues.apache.org/jira/browse/SPARK-23084) | Add unboundedPreceding(), unboundedFollowing() and currentRow() to PySpark |  Major | PySpark | Xiao Li | Huaxin Gao |
| [SPARK-22624](https://issues.apache.org/jira/browse/SPARK-22624) | Expose range partitioning shuffle introduced by SPARK-22614 |  Major | PySpark | Adrian Ionescu | xubo245 |
| [SPARK-23352](https://issues.apache.org/jira/browse/SPARK-23352) | Explicitly specify supported types in Pandas UDFs |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23323](https://issues.apache.org/jira/browse/SPARK-23323) | DataSourceV2 should use the output commit coordinator. |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23362](https://issues.apache.org/jira/browse/SPARK-23362) | Migrate Kafka microbatch source to v2 |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23203](https://issues.apache.org/jira/browse/SPARK-23203) | DataSourceV2 should use immutable trees. |  Blocker | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23418](https://issues.apache.org/jira/browse/SPARK-23418) | DataSourceV2 should not allow userSpecifiedSchema without ReadSupportWithSchema |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23491](https://issues.apache.org/jira/browse/SPARK-23491) | continuous symptom |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23097](https://issues.apache.org/jira/browse/SPARK-23097) | Migrate text socket source to v2 |  Major | Structured Streaming | Jose Torres | Saisai Shao |
| [SPARK-23585](https://issues.apache.org/jira/browse/SPARK-23585) | Add interpreted execution for UnwrapOption expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23559](https://issues.apache.org/jira/browse/SPARK-23559) | add epoch ID to data writer factory |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23586](https://issues.apache.org/jira/browse/SPARK-23586) | Add interpreted execution for WrapOption expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23594](https://issues.apache.org/jira/browse/SPARK-23594) | Add interpreted execution for GetExternalRowField expression |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-23590](https://issues.apache.org/jira/browse/SPARK-23590) | Add interpreted execution for CreateExternalRow expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23611](https://issues.apache.org/jira/browse/SPARK-23611) | Extend ExpressionEvalHelper harness to also test failures |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-23591](https://issues.apache.org/jira/browse/SPARK-23591) | Add interpreted execution for EncodeUsingSerializer expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23380](https://issues.apache.org/jira/browse/SPARK-23380) | Adds a conf for Arrow fallback in toPandas/createDataFrame with Pandas DataFrame |  Major | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23011](https://issues.apache.org/jira/browse/SPARK-23011) | Support alternative function form with group aggregate pandas UDF |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-23592](https://issues.apache.org/jira/browse/SPARK-23592) | Add interpreted execution for DecodeUsingSerializer expression |  Major | SQL | Herman van Hovell | Marco Gaido |
| [SPARK-23581](https://issues.apache.org/jira/browse/SPARK-23581) | Add an interpreted version of GenerateUnsafeProjection |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-23706](https://issues.apache.org/jira/browse/SPARK-23706) | spark.conf.get(value, default=None) should produce None in PySpark |  Minor | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-21898](https://issues.apache.org/jira/browse/SPARK-21898) | Feature parity for KolmogorovSmirnovTest in MLlib |  Minor | ML, MLlib | Weichen Xu | Weichen Xu |
| [SPARK-10884](https://issues.apache.org/jira/browse/SPARK-10884) | Support prediction on single instance for regression and classification related models |  Major | ML | Yanbo Liang | Weichen Xu |
| [SPARK-23577](https://issues.apache.org/jira/browse/SPARK-23577) | Supports line separator for text datasource |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-11239](https://issues.apache.org/jira/browse/SPARK-11239) | PMML export for ML linear regression |  Major | ML | holdenk | holdenk |
| [SPARK-23783](https://issues.apache.org/jira/browse/SPARK-23783) | Add new generic export trait for ML pipelines |  Major | ML | holdenk | holdenk |
| [SPARK-23615](https://issues.apache.org/jira/browse/SPARK-23615) | Add maxDF Parameter to Python CountVectorizer |  Minor | ML, PySpark | Bryan Cutler | Huaxin Gao |
| [SPARK-23096](https://issues.apache.org/jira/browse/SPARK-23096) | Migrate rate source to v2 |  Major | Structured Streaming | Jose Torres | Saisai Shao |
| [SPARK-23765](https://issues.apache.org/jira/browse/SPARK-23765) | Supports line separator for json datasource |  Major | SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23713](https://issues.apache.org/jira/browse/SPARK-23713) | Clean-up UnsafeWriter classes |  Major | SQL | Herman van Hovell | Kazuaki Ishizaki |
| [SPARK-23690](https://issues.apache.org/jira/browse/SPARK-23690) | VectorAssembler should have handleInvalid to handle columns with null values |  Major | ML | yogesh garg | yogesh garg |
| [SPARK-23099](https://issues.apache.org/jira/browse/SPARK-23099) | Migrate foreach sink |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23587](https://issues.apache.org/jira/browse/SPARK-23587) | Add interpreted execution for MapObjects expression |  Major | SQL | Herman van Hovell | Liang-Chi Hsieh |
| [SPARK-23826](https://issues.apache.org/jira/browse/SPARK-23826) | TestHiveSparkSession should set default session |  Major | SQL | Jose Torres | Xiao Li |
| [SPARK-23583](https://issues.apache.org/jira/browse/SPARK-23583) | Add interpreted execution to Invoke expression |  Major | SQL | Herman van Hovell | Kazuaki Ishizaki |
| [SPARK-23593](https://issues.apache.org/jira/browse/SPARK-23593) | Add interpreted execution for InitializeJavaBean expression |  Major | SQL | Herman van Hovell | Liang-Chi Hsieh |
| [SPARK-23582](https://issues.apache.org/jira/browse/SPARK-23582) | Add interpreted execution to StaticInvoke expression |  Major | SQL | Herman van Hovell | Kazuaki Ishizaki |
| [SPARK-23870](https://issues.apache.org/jira/browse/SPARK-23870) |  Forward RFormula handleInvalid Param to VectorAssembler |  Major | ML | yogesh garg | yogesh garg |
| [SPARK-23859](https://issues.apache.org/jira/browse/SPARK-23859) | Initial PR for Instrumentation improvements: UUID and logging levels |  Major | ML | Joseph K. Bradley | Weichen Xu |
| [SPARK-23847](https://issues.apache.org/jira/browse/SPARK-23847) | Add asc\_nulls\_first, asc\_nulls\_last to PySpark |  Minor | PySpark, SQL | Huaxin Gao | Huaxin Gao |
| [SPARK-23864](https://issues.apache.org/jira/browse/SPARK-23864) | Add Unsafe\* copy methods to UnsafeWriter |  Major | SQL | Herman van Hovell | Herman van Hovell |
| [SPARK-23871](https://issues.apache.org/jira/browse/SPARK-23871) | add python api for VectorAssembler handleInvalid |  Minor | ML, PySpark | yogesh garg | Huaxin Gao |
| [SPARK-23762](https://issues.apache.org/jira/browse/SPARK-23762) | UTF8StringBuilder uses MemoryBlock |  Major | SQL | Kazuaki Ishizaki | Kazuaki Ishizaki |
| [SPARK-23748](https://issues.apache.org/jira/browse/SPARK-23748) | Support select from temp tables |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-23942](https://issues.apache.org/jira/browse/SPARK-23942) | PySpark's collect doesn't trigger QueryExecutionListener |  Major | PySpark, SQL | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23905](https://issues.apache.org/jira/browse/SPARK-23905) | Add UDF weekday |  Major | SQL | Xiao Li | yucai |
| [SPARK-23917](https://issues.apache.org/jira/browse/SPARK-23917) | High-order function: array\_max(x) → x |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-21088](https://issues.apache.org/jira/browse/SPARK-21088) | CrossValidator, TrainValidationSplit should collect all models when fitting: Python API |  Major | ML, PySpark | Joseph K. Bradley | Weichen Xu |
| [SPARK-23918](https://issues.apache.org/jira/browse/SPARK-23918) | High-order function: array\_min(x) → x |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-23747](https://issues.apache.org/jira/browse/SPARK-23747) | Add EpochCoordinator unit tests |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23341](https://issues.apache.org/jira/browse/SPARK-23341) | DataSourceOptions should handle path and table names to avoid confusion. |  Major | SQL | Ryan Blue | Wenchen Fan |
| [SPARK-23926](https://issues.apache.org/jira/browse/SPARK-23926) | High-order function: reverse(x) → array |  Major | SQL | Xiao Li | Marek Novotny |
| [SPARK-23919](https://issues.apache.org/jira/browse/SPARK-23919) | High-order function: array\_position(x, element) → bigint |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-23924](https://issues.apache.org/jira/browse/SPARK-23924) | High-order function: element\_at |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-23584](https://issues.apache.org/jira/browse/SPARK-23584) | Add interpreted execution to NewInstance expression |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-23588](https://issues.apache.org/jira/browse/SPARK-23588) | Add interpreted execution for CatalystToExternalMap expression |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-24026](https://issues.apache.org/jira/browse/SPARK-24026) | spark.ml Scala/Java API for PIC |  Major | ML | Joseph K. Bradley | Miao Wang |
| [SPARK-22362](https://issues.apache.org/jira/browse/SPARK-22362) | Add unit test for Window Aggregate Functions |  Major | SQL | Jiang Xingbo | Attila Zsolt Piros |
| [SPARK-23736](https://issues.apache.org/jira/browse/SPARK-23736) | High-order function: concat(array1, array2, ..., arrayN) → array |  Major | SQL | Marek Novotny | Marek Novotny |
| [SPARK-23595](https://issues.apache.org/jira/browse/SPARK-23595) | Add interpreted execution for ValidateExternalType expression |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-23589](https://issues.apache.org/jira/browse/SPARK-23589) | Add interpreted execution for ExternalMapToCatalyst expression |  Major | SQL | Herman van Hovell | Takeshi Yamamuro |
| [SPARK-24054](https://issues.apache.org/jira/browse/SPARK-24054) | Add array\_position function /  element\_at functions |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23807](https://issues.apache.org/jira/browse/SPARK-23807) | Add Hadoop 3 profile with relevant POM fix ups |  Major | Build | Steve Loughran | Steve Loughran |
| [SPARK-23990](https://issues.apache.org/jira/browse/SPARK-23990) | Instruments logging improvements - ML regression package |  Major | ML | Weichen Xu | Weichen Xu |
| [SPARK-24038](https://issues.apache.org/jira/browse/SPARK-24038) | refactor continuous write exec to its own class |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23821](https://issues.apache.org/jira/browse/SPARK-23821) | High-order function: flatten(x) → array |  Major | SQL | Marek Novotny | Marek Novotny |
| [SPARK-24069](https://issues.apache.org/jira/browse/SPARK-24069) | Add array\_max / array\_min functions |  Major | SparkR | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-23902](https://issues.apache.org/jira/browse/SPARK-23902) | Provide an option in months\_between UDF to disable rounding-off |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-23916](https://issues.apache.org/jira/browse/SPARK-23916) | High-order function: array\_join(x, delimiter, null\_replacement) → varchar |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-23688](https://issues.apache.org/jira/browse/SPARK-23688) | Refactor tests away from rate source |  Major | Structured Streaming | Jose Torres | Jungtaek Lim |
| [SPARK-23723](https://issues.apache.org/jira/browse/SPARK-23723) | New encoding option for json datasource |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-23724](https://issues.apache.org/jira/browse/SPARK-23724) | Custom record separator for jsons in charsets different from UTF-8 |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-23923](https://issues.apache.org/jira/browse/SPARK-23923) | High-order function: cardinality(x) → bigint |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-24039](https://issues.apache.org/jira/browse/SPARK-24039) | remove restarting iterators hack |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24157](https://issues.apache.org/jira/browse/SPARK-24157) | Enable no-data micro batches for streaming aggregation and deduplication |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24185](https://issues.apache.org/jira/browse/SPARK-24185) | add  flatten function |  Major | SparkR | Huaxin Gao | Huaxin Gao |
| [SPARK-23921](https://issues.apache.org/jira/browse/SPARK-23921) | High-order function: array\_sort(x) → array |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-23930](https://issues.apache.org/jira/browse/SPARK-23930) | High-order function: slice(x, start, length) → array |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-20114](https://issues.apache.org/jira/browse/SPARK-20114) | spark.ml parity for sequential pattern mining - PrefixSpan |  Major | ML | yuhao yang | Weichen Xu |
| [SPARK-24132](https://issues.apache.org/jira/browse/SPARK-24132) | Instrumentation improvement for classification |  Major | ML | Lu Wang | Lu Wang |
| [SPARK-24073](https://issues.apache.org/jira/browse/SPARK-24073) | DataSourceV2: Rename DataReaderFactory to InputPartition. |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23907](https://issues.apache.org/jira/browse/SPARK-23907) | Support regr\_\* functions |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-24197](https://issues.apache.org/jira/browse/SPARK-24197) | add array\_sort function |  Major | SparkR | Marek Novotny | Marek Novotny |
| [SPARK-24198](https://issues.apache.org/jira/browse/SPARK-24198) | add slice function |  Major | SparkR | Marek Novotny | Marek Novotny |
| [SPARK-24186](https://issues.apache.org/jira/browse/SPARK-24186) | add array\_reverse and concat |  Major | SparkR | Huaxin Gao | Huaxin Gao |
| [SPARK-24155](https://issues.apache.org/jira/browse/SPARK-24155) | Instrumentation improvement for clustering |  Major | ML | Lu Wang | Lu Wang |
| [SPARK-24040](https://issues.apache.org/jira/browse/SPARK-24040) | support single partition aggregates |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24158](https://issues.apache.org/jira/browse/SPARK-24158) | Enable no-data micro batches for streaming joins |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23925](https://issues.apache.org/jira/browse/SPARK-23925) | High-order function: repeat(element, count) → array |  Major | SQL | Xiao Li | Florent Pepin |
| [SPARK-23922](https://issues.apache.org/jira/browse/SPARK-23922) | High-order function: arrays\_overlap(x, y) → boolean |  Major | SQL | Xiao Li | Marco Gaido |
| [SPARK-24115](https://issues.apache.org/jira/browse/SPARK-24115) | improve instrumentation for spark.ml.tuning |  Major | ML | yogesh garg | Bago Amirbekian |
| [SPARK-24310](https://issues.apache.org/jira/browse/SPARK-24310) | Instrumentation for frequent pattern mining |  Major | ML | Joseph K. Bradley | Bago Amirbekian |
| [SPARK-24159](https://issues.apache.org/jira/browse/SPARK-24159) | Enable no-data micro batches for streaming mapGroupswithState |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23503](https://issues.apache.org/jira/browse/SPARK-23503) | continuous execution should sequence committed epochs |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-23935](https://issues.apache.org/jira/browse/SPARK-23935) | High-order function: map\_entries(map\<K, V\>) → array\<row\<K,V\>\> |  Major | SQL | Xiao Li | Marek Novotny |
| [SPARK-24234](https://issues.apache.org/jira/browse/SPARK-24234) | create the bottom-of-task RDD with row buffer |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24325](https://issues.apache.org/jira/browse/SPARK-24325) | Tests for Hadoop's LinesReader |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-23711](https://issues.apache.org/jira/browse/SPARK-23711) | Add fallback to interpreted execution logic |  Major | SQL | Herman van Hovell | Liang-Chi Hsieh |
| [SPARK-24334](https://issues.apache.org/jira/browse/SPARK-24334) | Race condition in ArrowPythonRunner causes unclean shutdown of Arrow memory allocator |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-24331](https://issues.apache.org/jira/browse/SPARK-24331) | Add arrays\_overlap / array\_repeat / map\_entries |  Major | SparkR | Marek Novotny | Marek Novotny |
| [SPARK-24419](https://issues.apache.org/jira/browse/SPARK-24419) | Upgrade SBT to 0.13.17 with Scala 2.10.7 |  Major | Build | DB Tsai | DB Tsai |
| [SPARK-24146](https://issues.apache.org/jira/browse/SPARK-24146) | spark.ml parity for sequential pattern mining - PrefixSpan: Python API |  Major | ML, PySpark | Weichen Xu | Weichen Xu |
| [SPARK-23900](https://issues.apache.org/jira/browse/SPARK-23900) | format\_number udf should take user specifed format as argument |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-23920](https://issues.apache.org/jira/browse/SPARK-23920) | High-order function: array\_remove(x, element) → array |  Major | SQL | Xiao Li | Huaxin Gao |
| [SPARK-23903](https://issues.apache.org/jira/browse/SPARK-23903) | Add support for date extract |  Major | SQL | Xiao Li | Yuming Wang |
| [SPARK-24290](https://issues.apache.org/jira/browse/SPARK-24290) | Instrumentation Improvement: add logNamedValue taking Array types |  Major | ML | Lu Wang | Lu Wang |
| [SPARK-24187](https://issues.apache.org/jira/browse/SPARK-24187) | add array\_join |  Major | SparkR | Huaxin Gao | Huaxin Gao |
| [SPARK-24119](https://issues.apache.org/jira/browse/SPARK-24119) | Add interpreted execution to SortPrefix expression |  Minor | SQL | Bruce Robbins | Bruce Robbins |
| [SPARK-19826](https://issues.apache.org/jira/browse/SPARK-19826) | spark.ml Python API for PIC |  Major | ML, PySpark | Felix Cheung | Huaxin Gao |
| [SPARK-23931](https://issues.apache.org/jira/browse/SPARK-23931) | High-order function: array\_zip(array1, array2[, ...]) → array\<row\> |  Major | SQL | Xiao Li | Dylan Guedes |
| [SPARK-23933](https://issues.apache.org/jira/browse/SPARK-23933) | High-order function: map(array\<K\>, array\<V\>) → map\<K,V\> |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-22239](https://issues.apache.org/jira/browse/SPARK-22239) | User-defined window functions with pandas udf (unbounded window) |  Major | PySpark | Li Jin | Li Jin |
| [SPARK-24235](https://issues.apache.org/jira/browse/SPARK-24235) | create the top-of-task RDD sending rows to the remote buffer |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-14376](https://issues.apache.org/jira/browse/SPARK-14376) | spark.ml parity for trees |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-24478](https://issues.apache.org/jira/browse/SPARK-24478) | DataSourceV2 should push filters and projection at physical plan conversion |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-23912](https://issues.apache.org/jira/browse/SPARK-23912) | High-order function: array\_distinct(x) → array |  Major | SQL | Xiao Li | Huaxin Gao |
| [SPARK-23934](https://issues.apache.org/jira/browse/SPARK-23934) | High-order function: map\_from\_entries(array\<row\<K, V\>\>) → map\<K,V\> |  Major | SQL | Xiao Li | Marek Novotny |
| [SPARK-24324](https://issues.apache.org/jira/browse/SPARK-24324) | Pandas Grouped Map UserDefinedFunction mixes column labels |  Major | PySpark | Cristian Consonni | Bryan Cutler |
| [SPARK-24418](https://issues.apache.org/jira/browse/SPARK-24418) | Upgrade to Scala 2.11.12 |  Major | Build | DB Tsai | DB Tsai |
| [SPARK-6237](https://issues.apache.org/jira/browse/SPARK-6237) | Support uploading blocks \> 2GB as a stream |  Major | Shuffle, Spark Core | Reynold Xin | Imran Rashid |
| [SPARK-23927](https://issues.apache.org/jira/browse/SPARK-23927) | High-order function: sequence |  Major | SQL | Xiao Li | Alex Vayda |
| [SPARK-23120](https://issues.apache.org/jira/browse/SPARK-23120) | Add PMML pipeline export support to PySpark |  Major | ML, PySpark | holdenk | holdenk |
| [SPARK-24439](https://issues.apache.org/jira/browse/SPARK-24439) | Add distanceMeasure to BisectingKMeans in PySpark |  Minor | ML, PySpark | Huaxin Gao | Huaxin Gao |
| [SPARK-24386](https://issues.apache.org/jira/browse/SPARK-24386) | implement continuous processing coalesce(1) |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24420](https://issues.apache.org/jira/browse/SPARK-24420) | Upgrade ASM to 6.x to support JDK9+ |  Major | Build | DB Tsai | DB Tsai |
| [SPARK-23936](https://issues.apache.org/jira/browse/SPARK-23936) | High-order function: map\_concat(map1\<K, V\>, map2\<K, V\>, ..., mapN\<K, V\>) → map\<K,V\> |  Major | SQL | Xiao Li | Bruce Robbins |
| [SPARK-23914](https://issues.apache.org/jira/browse/SPARK-23914) | High-order function: array\_union(x, y) → array |  Major | SQL | Xiao Li | Kazuaki Ishizaki |
| [SPARK-24537](https://issues.apache.org/jira/browse/SPARK-24537) | Add array\_remove / array\_zip / map\_from\_arrays / array\_distinct |  Major | SparkR | Huaxin Gao | Huaxin Gao |
| [SPARK-24776](https://issues.apache.org/jira/browse/SPARK-24776) | AVRO unit test: use SQLTestUtils and Replace deprecated methods |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24800](https://issues.apache.org/jira/browse/SPARK-24800) | Refactor Avro Serializer and Deserializer |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24810](https://issues.apache.org/jira/browse/SPARK-24810) | Fix paths to resource files in AvroSuite |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24805](https://issues.apache.org/jira/browse/SPARK-24805) | Don't ignore files without .avro extension by default |  Major | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24070](https://issues.apache.org/jira/browse/SPARK-24070) | TPC-DS Performance Tests for Parquet 1.10.0 Upgrade |  Major | SQL | Xiao Li | Takeshi Yamamuro |
| [SPARK-24854](https://issues.apache.org/jira/browse/SPARK-24854) | Gather all options into AvroOptions |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24307](https://issues.apache.org/jira/browse/SPARK-24307) | Support sending messages over 2GB from memory |  Major | Block Manager, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-24811](https://issues.apache.org/jira/browse/SPARK-24811) | Add function \`from\_avro\` and \`to\_avro\` |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24876](https://issues.apache.org/jira/browse/SPARK-24876) | Simplify schema serialization |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24836](https://issues.apache.org/jira/browse/SPARK-24836) | New option - ignoreExtension |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24883](https://issues.apache.org/jira/browse/SPARK-24883) | Remove implicit class AvroDataFrameWriter/AvroDataFrameReader |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-24887](https://issues.apache.org/jira/browse/SPARK-24887) | Use SerializableConfiguration in Spark util |  Major | SQL | Gengliang Wang | Gengliang Wang |
| [SPARK-23325](https://issues.apache.org/jira/browse/SPARK-23325) | DataSourceV2 readers should always produce InternalRow. |  Major | SQL | Ryan Blue | Ryan Blue |
| [SPARK-24297](https://issues.apache.org/jira/browse/SPARK-24297) | Change default value for spark.maxRemoteBlockSizeFetchToMem to be \< 2GB |  Major | Block Manager, Shuffle, Spark Core | Imran Rashid | Imran Rashid |
| [SPARK-24924](https://issues.apache.org/jira/browse/SPARK-24924) | Add mapping for built-in Avro data source |  Minor | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-23928](https://issues.apache.org/jira/browse/SPARK-23928) | High-order function: shuffle(x) → array |  Major | SQL | Xiao Li | H Lu |
| [SPARK-24881](https://issues.apache.org/jira/browse/SPARK-24881) | New options - compression and compressionLevel |  Minor | SQL | Maxim Gekk | Maxim Gekk |
| [SPARK-24624](https://issues.apache.org/jira/browse/SPARK-24624) | Can not mix vectorized and non-vectorized UDFs |  Major | SQL | Xiao Li | Li Jin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23256](https://issues.apache.org/jira/browse/SPARK-23256) | Add columnSchema method to PySpark image reader |  Minor | ML, PySpark | Nick Pentreath | Hyukjin Kwon |
| [SPARK-23509](https://issues.apache.org/jira/browse/SPARK-23509) | Upgrade commons-net from 2.2 to 3.1 |  Minor | Spark Core | PandaMonkey | Kazuaki Ishizaki |
| [SPARK-23566](https://issues.apache.org/jira/browse/SPARK-23566) | Arguement name fix |  Minor | Documentation | Anirudh | Anirudh |
| [SPARK-23329](https://issues.apache.org/jira/browse/SPARK-23329) | Update the function descriptions with the arguments and returned values of the trigonometric functions |  Minor | SQL | Xiao Li | Mihaly Toth |
| [SPARK-23642](https://issues.apache.org/jira/browse/SPARK-23642) | isZero scaladoc for LongAccumulator describes wrong method |  Minor | Documentation | Sean | Sean |
| [SPARK-24124](https://issues.apache.org/jira/browse/SPARK-24124) | Spark history server should create spark.history.store.path and set permissions properly |  Major | Spark Core | Thomas Graves | Thomas Graves |
| [SPARK-24378](https://issues.apache.org/jira/browse/SPARK-24378) | Incorrect examples for date\_trunc function in spark 2.3.0 |  Trivial | Documentation | Prakhar Gupta | Yuming Wang |
| [SPARK-24444](https://issues.apache.org/jira/browse/SPARK-24444) | Improve pandas\_udf GROUPED\_MAP docs to explain column assignment |  Major | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-24224](https://issues.apache.org/jira/browse/SPARK-24224) | Java example code for Power Iteration Clustering in spark.ml |  Trivial | ML | shahid | shahid |
| [SPARK-24191](https://issues.apache.org/jira/browse/SPARK-24191) | Scala example code for Power Iteration Clustering in Spark ML examples |  Trivial | Documentation, Examples, ML | shahid | shahid |
| [SPARK-24134](https://issues.apache.org/jira/browse/SPARK-24134) | A missing full-stop in doc "Tuning Spark" |  Trivial | Documentation | Xiaodong DENG | Xiaodong DENG |
| [SPARK-21607](https://issues.apache.org/jira/browse/SPARK-21607) | Can dropTempView function add a param like dropTempView(viewName: String, dropSelfOnly: Boolean) |  Major | SQL | ant\_nebula | Maryann Xue |
| [SPARK-24507](https://issues.apache.org/jira/browse/SPARK-24507) | Description in "Level of Parallelism in Data Receiving" section of Spark Streaming Programming Guide in is not relevan for the recent Kafka direct apprach |  Minor | Documentation, DStreams | Lev Greenberg | Rekha Joshi |
| [SPARK-23254](https://issues.apache.org/jira/browse/SPARK-23254) | Add user guide entry for DataFrame multivariate summary |  Minor | Documentation, ML | Nick Pentreath | Weichen Xu |
| [SPARK-24628](https://issues.apache.org/jira/browse/SPARK-24628) | Typos of the example code in docs/mllib-data-types.md |  Minor | MLlib | Weizhe Huang | Weizhe Huang |
| [SPARK-21261](https://issues.apache.org/jira/browse/SPARK-21261) | SparkSQL regexpExpressions example |  Minor | Examples | zhangxin | Sean Owen |
| [SPARK-24852](https://issues.apache.org/jira/browse/SPARK-24852) | Have spark.ml training use updated \`Instrumentation\` APIs. |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-23231](https://issues.apache.org/jira/browse/SPARK-23231) | Add doc for string indexer ordering to user guide (also to RFormula guide) |  Minor | Documentation, ML | Nick Pentreath | zhengruifeng |
| [SPARK-23092](https://issues.apache.org/jira/browse/SPARK-23092) | Migrate MemoryStream to DataSource V2 |  Major | Structured Streaming | Burak Yavuz | Tathagata Das |
| [SPARK-23501](https://issues.apache.org/jira/browse/SPARK-23501) | Refactor AllStagesPage in order to avoid redundant code |  Trivial | Web UI | Marco Gaido | Marco Gaido |
| [SPARK-23601](https://issues.apache.org/jira/browse/SPARK-23601) | Remove .md5 files from release |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-23533](https://issues.apache.org/jira/browse/SPARK-23533) | Add support for changing ContinuousDataReader's startOffset |  Major | Structured Streaming | Li Yuanjian | Li Yuanjian |
| [SPARK-24392](https://issues.apache.org/jira/browse/SPARK-24392) | Mark pandas\_udf as Experimental |  Blocker | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-24533](https://issues.apache.org/jira/browse/SPARK-24533) | typesafe has rebranded to lightbend. change the build/mvn endpoint from downloads.typesafe.com to downloads.lightbend.com |  Trivial | Spark Core | Sanket Reddy | Sanket Reddy |
| [SPARK-24654](https://issues.apache.org/jira/browse/SPARK-24654) | Update, fix LICENSE and NOTICE, and specialize for source vs binary |  Major | Build | Sean Owen | Sean Owen |
| [SPARK-20220](https://issues.apache.org/jira/browse/SPARK-20220) | Add thrift scheduling pool config in scheduling docs |  Trivial | Documentation | Miklos Christine | Miklos Christine |
| [SPARK-23451](https://issues.apache.org/jira/browse/SPARK-23451) | Deprecate KMeans computeCost |  Trivial | ML | Marco Gaido | Marco Gaido |


