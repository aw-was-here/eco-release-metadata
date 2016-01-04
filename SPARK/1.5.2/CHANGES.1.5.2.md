
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

## Release 1.5.2 - 2015-11-09

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11481](https://issues.apache.org/jira/browse/SPARK-11481) | orderBy with multiple columns in WindowSpec does not work properly |  Major | PySpark, SQL | Jose Antonio | Davies Liu |
| [SPARK-11023](https://issues.apache.org/jira/browse/SPARK-11023) | Error initializing SparkContext. java.net.URISyntaxException |  Major | PySpark | Jose Antonio | Marcelo Vanzin |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11813](https://issues.apache.org/jira/browse/SPARK-11813) | Avoid serialization of vocab in Word2Vec |  Minor | MLlib | yuhao yang | yuhao yang |
| [SPARK-11056](https://issues.apache.org/jira/browse/SPARK-11056) | Improve documentation on how to build Spark efficiently |  Minor | Documentation | Kay Ousterhout | Kay Ousterhout |
| [SPARK-10932](https://issues.apache.org/jira/browse/SPARK-10932) | Port two minor changes to release packaging scripts back into Spark repo |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-10889](https://issues.apache.org/jira/browse/SPARK-10889) | Upgrade Kinesis Client Library |  Minor | Streaming | Avrohom Katz | Avrohom Katz |
| [SPARK-10871](https://issues.apache.org/jira/browse/SPARK-10871) | Specify number of failed executors in ApplicationMaster error message |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-10833](https://issues.apache.org/jira/browse/SPARK-10833) | Inline, organize BSD/MIT licenses in LICENSE |  Major | Build | Sean Owen | Sean Owen |
| [SPARK-10577](https://issues.apache.org/jira/browse/SPARK-10577) | [PySpark] DataFrame hint for broadcast join |  Major | PySpark, SQL | Maciej Bryński | Jian Feng Zhang |
| [SPARK-10389](https://issues.apache.org/jira/browse/SPARK-10389) | support order by non-attribute grouping expression on Aggregate |  Major | SQL | Wenchen Fan | Wenchen Fan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11542](https://issues.apache.org/jira/browse/SPARK-11542) | glm does not work with long formula |  Major | SparkR | Davies Liu | Davies Liu |
| [SPARK-11537](https://issues.apache.org/jira/browse/SPARK-11537) | hour/minute/second returns negative value |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-11434](https://issues.apache.org/jira/browse/SPARK-11434) | flaky test ParquetFilterSuite.SPARK-11103: Filter applied on merged Parquet schema with new column fails |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-11424](https://issues.apache.org/jira/browse/SPARK-11424) | Guard against MAPREDUCE-5918 by ensuring RecordReader is only closed once in \*HadoopRDD |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-11417](https://issues.apache.org/jira/browse/SPARK-11417) | @Override is not supported by older version of Janino |  Major | . | Davies Liu | Davies Liu |
| [SPARK-11405](https://issues.apache.org/jira/browse/SPARK-11405) | ROW\_NUMBER function does not adhere to window ORDER BY, when joining |  Critical | SQL | Jarno Seppanen | Josh Rosen |
| [SPARK-11303](https://issues.apache.org/jira/browse/SPARK-11303) | sample (without replacement) + filter returns wrong results in DataFrame |  Major | SQL | Yuval Tanny | Yanbo Liang |
| [SPARK-11302](https://issues.apache.org/jira/browse/SPARK-11302) |  Multivariate Gaussian Model with Covariance  matrix returns incorrect answer in some cases |  Critical | MLlib | eyal sharon | Sean Owen |
| [SPARK-11301](https://issues.apache.org/jira/browse/SPARK-11301) | filter on partitioned column is case sensitive even the context is case insensitive |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-11264](https://issues.apache.org/jira/browse/SPARK-11264) | ./bin/spark-class can't find assembly jars with certain GREP\_OPTIONS set |  Minor | Spark Shell | Jeffrey Naisbitt | Jeffrey Naisbitt |
| [SPARK-11251](https://issues.apache.org/jira/browse/SPARK-11251) | Page size calculation is wrong in local mode |  Blocker | Shuffle | Andrew Or | Andrew Or |
| [SPARK-11246](https://issues.apache.org/jira/browse/SPARK-11246) | [1.5] Table cache for Parquet broken in 1.5 |  Major | SQL | David Ross | Xin Wu |
| [SPARK-11244](https://issues.apache.org/jira/browse/SPARK-11244) | sparkR.stop doesn't clean up .sparkRSQLsc in environment |  Major | SparkR | Sen Fang | Sen Fang |
| [SPARK-11233](https://issues.apache.org/jira/browse/SPARK-11233) | cosh is not registered in function registry |  Major | SQL | Reynold Xin | Shagun Sodhani |
| [SPARK-11153](https://issues.apache.org/jira/browse/SPARK-11153) | Turns off Parquet filter push-down for string and binary columns |  Blocker | SQL | Cheng Lian | Cheng Lian |
| [SPARK-11135](https://issues.apache.org/jira/browse/SPARK-11135) | Exchange sort-planning logic incorrectly avoid sorts when existing ordering is non-empty subset of required ordering |  Blocker | SQL | Josh Rosen | Josh Rosen |
| [SPARK-11126](https://issues.apache.org/jira/browse/SPARK-11126) | A memory leak in SQLListener.\_stageIdToStageMetrics |  Blocker | SQL | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11104](https://issues.apache.org/jira/browse/SPARK-11104) | A potential deadlock in StreamingContext.stop and stopOnShutdown |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11103](https://issues.apache.org/jira/browse/SPARK-11103) | Parquet filters push-down may cause exception when schema merging is turned on |  Blocker | SQL | Dominic Ricard | Hyukjin Kwon |
| [SPARK-11094](https://issues.apache.org/jira/browse/SPARK-11094) | Test runner script fails to parse Java version. |  Minor | Tests | Jakob Odersky | Jakob Odersky |
| [SPARK-11066](https://issues.apache.org/jira/browse/SPARK-11066) | Flaky test o.a.scheduler.DAGSchedulerSuite.misbehavedResultHandler occasionally fails due to j.l.UnsupportedOperationException concerning a finished JobWaiter |  Minor | Scheduler, Spark Core, Tests | Dr Stephen A Hellberg | Dr Stephen A Hellberg |
| [SPARK-11063](https://issues.apache.org/jira/browse/SPARK-11063) | Spark TaskSetManager doesn't use Receiver's scheduling executors |  Critical | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-11051](https://issues.apache.org/jira/browse/SPARK-11051) | NullPointerException when action called on localCheckpointed RDD (that was checkpointed before) |  Critical | Spark Core | Jacek Laskowski | Liang-Chi Hsieh |
| [SPARK-11047](https://issues.apache.org/jira/browse/SPARK-11047) | Internal accumulators miss the internal flag when replaying events in the history server |  Critical | Spark Core | Carson Wang | Carson Wang |
| [SPARK-11032](https://issues.apache.org/jira/browse/SPARK-11032) | Failure to resolve having correctly |  Blocker | SQL | Michael Armbrust | Wenchen Fan |
| [SPARK-11026](https://issues.apache.org/jira/browse/SPARK-11026) | spark.yarn.user.classpath.first does work for 'spark-submit --jars hdfs://user/foo.jar' |  Major | YARN | Lianhui Wang | Lianhui Wang |
| [SPARK-11009](https://issues.apache.org/jira/browse/SPARK-11009) | RowNumber in HiveContext returns negative values in cluster mode |  Blocker | Spark Core | Saif Addin Ellafi | Davies Liu |
| [SPARK-10981](https://issues.apache.org/jira/browse/SPARK-10981) | R semijoin leads to Java errors, R leftsemi leads to Spark errors |  Minor | SparkR | Monica Liu | Monica Liu |
| [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | Create wrong decimal if unscaled \> 1e18 and scale \> 0 |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10973](https://issues.apache.org/jira/browse/SPARK-10973) | \_\_gettitem\_\_ method throws IndexError exception when we try to access index after the last non-zero entry. |  Major | MLlib, PySpark | Maciej Szymkiewicz | Maciej Szymkiewicz |
| [SPARK-10960](https://issues.apache.org/jira/browse/SPARK-10960) | SQL with windowing function cannot reference column in inner select block |  Major | SQL | David Wong | Liang-Chi Hsieh |
| [SPARK-10959](https://issues.apache.org/jira/browse/SPARK-10959) | PySpark StreamingLogisticRegressionWithSGD does not train with given regParam and convergenceTol parameters |  Critical | PySpark | Bryan Cutler | Bryan Cutler |
| [SPARK-10955](https://issues.apache.org/jira/browse/SPARK-10955) | Warn if dynamic allocation is enabled for Streaming jobs |  Major | Streaming | Hari Shreedharan | Hari Shreedharan |
| [SPARK-10952](https://issues.apache.org/jira/browse/SPARK-10952) | Don't explode the environment when HIVE\_HOME isn't set. |  Minor | Build | Kevin Cox | Kevin Cox |
| [SPARK-10934](https://issues.apache.org/jira/browse/SPARK-10934) | hashCode of unsafe array may crash |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10914](https://issues.apache.org/jira/browse/SPARK-10914) | UnsafeRow serialization breaks when two machines have different Oops size |  Major | SQL | Ben Moran | Reynold Xin |
| [SPARK-10904](https://issues.apache.org/jira/browse/SPARK-10904) |   select(df, c("col1", "col2")) fails |  Major | SparkR | Weiqiang Zhuang | Felix Cheung |
| [SPARK-10901](https://issues.apache.org/jira/browse/SPARK-10901) | spark.yarn.user.classpath.first doesn't work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10885](https://issues.apache.org/jira/browse/SPARK-10885) | Display the failed output op in Streaming UI |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10859](https://issues.apache.org/jira/browse/SPARK-10859) | Predicates pushed to InmemoryColumnarTableScan are not evaluated correctly |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10858](https://issues.apache.org/jira/browse/SPARK-10858) | YARN: archives/jar/files rename with # doesn't work unless scheme given |  Minor | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10845](https://issues.apache.org/jira/browse/SPARK-10845) | SQL option "spark.sql.hive.version" doesn't show up in the result of "SET -v" |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10829](https://issues.apache.org/jira/browse/SPARK-10829) | Scan DataSource with predicate expression combine partition key and attributes doesn't work |  Critical | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10825](https://issues.apache.org/jira/browse/SPARK-10825) | Flaky test: StandaloneDynamicAllocationSuite |  Critical | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10812](https://issues.apache.org/jira/browse/SPARK-10812) | Spark Hadoop Util does not support stopping a non-yarn Spark Context & starting a Yarn spark context. |  Minor | YARN | holdenk | Holden Karau |
| [SPARK-10790](https://issues.apache.org/jira/browse/SPARK-10790) | Dynamic Allocation does not request any executors if first stage needs less than or equal to spark.dynamicAllocation.initialExecutors |  Major | Scheduler | Jonathan Kelly | Saisai Shao |
| [SPARK-10741](https://issues.apache.org/jira/browse/SPARK-10741) | Hive Query Having/OrderBy against Parquet table is not working |  Major | SQL | Ian | Wenchen Fan |
| [SPARK-10619](https://issues.apache.org/jira/browse/SPARK-10619) | Can't sort columns on Executor Page |  Major | Web UI | Thomas Graves | Thomas Graves |
| [SPARK-10581](https://issues.apache.org/jira/browse/SPARK-10581) | Groups are not resolved in scaladoc for org.apache.spark.sql.Column |  Minor | Documentation | Jacek Laskowski | Pravin Gadakh |
| [SPARK-10534](https://issues.apache.org/jira/browse/SPARK-10534) | ORDER BY clause allows only columns that are present in SELECT statement |  Major | SQL | Michal Cwienczek | Dilip Biswal |
| [SPARK-10515](https://issues.apache.org/jira/browse/SPARK-10515) | When killing executor, the pending replacement executors will be lost |  Major | Spark Core | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-10058](https://issues.apache.org/jira/browse/SPARK-10058) | Flaky test: HeartbeatReceiverSuite: normal heartbeat |  Critical | Spark Core, Tests | Davies Liu | Shixiong Zhu |
| [SPARK-8386](https://issues.apache.org/jira/browse/SPARK-8386) | DataFrame and JDBC regression |  Critical | SQL | Peter Haumer | Huaxin Gao |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-11039](https://issues.apache.org/jira/browse/SPARK-11039) | Document all UI "retained\*" configurations |  Trivial | Documentation, Web UI | Nick Pritchard | Nick Pritchard |


