
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
# Changelog

## Release 1.3.2 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7323](https://issues.apache.org/jira/browse/SPARK-7323) | Use insertAll instead of individual insert while merging combiners |  Minor | Spark Core | Mridul Muralidharan | Mridul Muralidharan |
| [SPARK-7140](https://issues.apache.org/jira/browse/SPARK-7140) | Do not scan all values in Vector.hashCode |  Major | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6988](https://issues.apache.org/jira/browse/SPARK-6988) | Fix Spark SQL documentation for 1.3.x |  Minor | SQL | Olivier Girardot | Olivier Girardot |
| [SPARK-6343](https://issues.apache.org/jira/browse/SPARK-6343) | Make doc more explicit regarding network connectivity requirements |  Minor | Documentation | Peter Parente | Peter Parente |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-7330](https://issues.apache.org/jira/browse/SPARK-7330) | JDBC RDD could lead to NPE when the date field is null |  Major | SQL | Adrian Wang | Adrian Wang |
| [SPARK-7234](https://issues.apache.org/jira/browse/SPARK-7234) | When codegen on DateType defaultPrimitive will throw type mismatch exception |  Major | SQL | Chen Song | Chen Song |
| [SPARK-7229](https://issues.apache.org/jira/browse/SPARK-7229) | SpecificMutableRow should take integer type as internal representation for DateType |  Major | SQL | Cheng Hao | Cheng Hao |
| [SPARK-7204](https://issues.apache.org/jira/browse/SPARK-7204) | Call sites in UI are not accurate for DataFrame operations |  Critical | SQL | Patrick Wendell | Patrick Wendell |
| [SPARK-7196](https://issues.apache.org/jira/browse/SPARK-7196) | decimal precision lost when loading DataFrame from JDBC |  Major | SQL | Ken Geis | Liang-Chi Hsieh |
| [SPARK-7187](https://issues.apache.org/jira/browse/SPARK-7187) | Exceptions in SerializationDebugger should not crash user code |  Major | Spark Core | Andrew Or | Andrew Or |
| [SPARK-7181](https://issues.apache.org/jira/browse/SPARK-7181) | External Sorter merge with aggregation go to an infinite loop when we have a total ordering |  Critical | Spark Core | Qiping Li | Qiping Li |
| [SPARK-7155](https://issues.apache.org/jira/browse/SPARK-7155) | SparkContext's newAPIHadoopFile does not support comma-separated list of files, but the other API hadoopFile does. |  Major | Spark Core | Yong Tang | Yong Tang |
| [SPARK-7103](https://issues.apache.org/jira/browse/SPARK-7103) | SparkContext.union crashed when some RDDs have no partitioner |  Critical | Spark Core | Steven She | Steven She |
| [SPARK-7070](https://issues.apache.org/jira/browse/SPARK-7070) | LDA.setBeta calls itself |  Critical | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-7039](https://issues.apache.org/jira/browse/SPARK-7039) | JdbcRdd doesn't support java.sql.Types.NVARCHAR |  Minor | SQL | Shuai Zheng | Shuai Zheng |
| [SPARK-7036](https://issues.apache.org/jira/browse/SPARK-7036) | ALS.train should support DataFrames in PySpark |  Minor | MLlib | Xiangrui Meng | Xiangrui Meng |
| [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | Make StreamingKMeans `Serializable` |  Major | MLlib | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6992](https://issues.apache.org/jira/browse/SPARK-6992) | Spark SQL documentation for programmatically adding a Schema is broken for Java API |  Minor | Documentation | Olivier Girardot | Olivier Girardot |
| [SPARK-6985](https://issues.apache.org/jira/browse/SPARK-6985) | Receiver maxRate over 1000 causes a StackOverflowError |  Critical | Streaming | David McGuire | David McGuire |
| [SPARK-6975](https://issues.apache.org/jira/browse/SPARK-6975) | Argument checking conflict in Yarn when dynamic allocation is enabled |  Minor | YARN | Saisai Shao | Saisai Shao |
| [SPARK-6967](https://issues.apache.org/jira/browse/SPARK-6967) | Internal DateType not handled correctly in caching |  Blocker | SQL | Michael Armbrust | Adrian Wang |
| [SPARK-6954](https://issues.apache.org/jira/browse/SPARK-6954) | ExecutorAllocationManager can end up requesting a negative number of executors |  Major | YARN | Cheolsoo Park | Sandy Ryza |
| [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | spark-daemon.sh PID reuse check fails on long classpath |  Minor | Deploy | Punya Biswal | Punya Biswal |
| [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6886](https://issues.apache.org/jira/browse/SPARK-6886) | Big closure in PySpark will fail during shuffle |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-6878](https://issues.apache.org/jira/browse/SPARK-6878) | Sum on empty RDD fails with exception |  Minor | Spark Core | Erik van Oosten | Erik van Oosten |
| [SPARK-6868](https://issues.apache.org/jira/browse/SPARK-6868) | Container link broken on Spark UI Executors page when YARN is set to HTTPS\_ONLY |  Minor | YARN | Dean Chen | Dean Chen |
| [SPARK-6860](https://issues.apache.org/jira/browse/SPARK-6860) | Fix the possible inconsistency of StreamingPage |  Minor | Streaming, Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6767](https://issues.apache.org/jira/browse/SPARK-6767) | Documentation error in Spark SQL Readme file |  Trivial | Documentation, SQL | Tijo Thomas | Tijo Thomas |
| [SPARK-6766](https://issues.apache.org/jira/browse/SPARK-6766) | StreamingListenerBatchSubmitted isn't sent and StreamingListenerBatchStarted.batchInfo.processingStartTime is a wrong value |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf |  Minor | Tests | Kay Ousterhout | Kay Ousterhout |
| [SPARK-6636](https://issues.apache.org/jira/browse/SPARK-6636) | Use public DNS hostname everywhere in spark\_ec2.py |  Minor | EC2 | Matt Aasted | Matt Aasted |
| [SPARK-6506](https://issues.apache.org/jira/browse/SPARK-6506) | python support yarn cluster mode requires SPARK\_HOME to be set |  Major | YARN | Thomas Graves | Marcelo Vanzin |
| [SPARK-6205](https://issues.apache.org/jira/browse/SPARK-6205) | UISeleniumSuite fails for Hadoop 2.x test with NoClassDefFoundError |  Minor | Tests | Sean Owen | Sean Owen |
| [SPARK-5969](https://issues.apache.org/jira/browse/SPARK-5969) | The pyspark.rdd.sortByKey always fills only two partitions when ascending=False. |  Major | PySpark | Milan Straka | Milan Straka |
| [SPARK-5634](https://issues.apache.org/jira/browse/SPARK-5634) | History server shows misleading message when there are no incomplete apps |  Minor | Spark Core | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-5529](https://issues.apache.org/jira/browse/SPARK-5529) | BlockManager heartbeat expiration does not kill executor |  Major | Spark Core, YARN | Hong Shen | Hong Shen |
| [SPARK-5456](https://issues.apache.org/jira/browse/SPARK-5456) | Decimal Type comparison issue |  Blocker | SQL | Kuldeep | Adrian Wang |
| [SPARK-5074](https://issues.apache.org/jira/browse/SPARK-5074) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite |  Critical | Spark Core | Shixiong Zhu | Shixiong Zhu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-6781](https://issues.apache.org/jira/browse/SPARK-6781) | sqlCtx -\> sqlContext in pyspark shell |  Critical | SQL | Michael Armbrust | Davies Liu |


