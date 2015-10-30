
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

## Release 1.2.3 - Unreleased (as of 2015-10-30)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10657](https://issues.apache.org/jira/browse/SPARK-10657) | Remove legacy SCP-based Jenkins log archiving code |  Major | Project Infra | Josh Rosen | Josh Rosen |
| [SPARK-9633](https://issues.apache.org/jira/browse/SPARK-9633) | SBT download locations outdated; need an update |  Minor | Build | Sean Owen | Sean Owen |
| [SPARK-7331](https://issues.apache.org/jira/browse/SPARK-7331) | Create HiveConf per application instead of per query in HiveQl.scala |  Minor | SQL | Nitin Goyal | Nitin Goyal |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10980](https://issues.apache.org/jira/browse/SPARK-10980) | Create wrong decimal if unscaled \> 1e18 and scale \> 0 |  Major | SQL | Davies Liu | Davies Liu |
| [SPARK-10642](https://issues.apache.org/jira/browse/SPARK-10642) | Crash in rdd.lookup() with "java.lang.Long cannot be cast to java.lang.Integer" |  Major | PySpark | Thouis Jones | Liang-Chi Hsieh |
| [SPARK-9175](https://issues.apache.org/jira/browse/SPARK-9175) | BLAS.gemm fails to update matrix C when alpha==0 and beta!=1 |  Critical | MLlib | Meihua Wu | Meihua Wu |
| [SPARK-8563](https://issues.apache.org/jira/browse/SPARK-8563) | Bug that IndexedRowMatrix.computeSVD() yields the U with wrong numCols |  Major | MLlib | 19 Lee | 19 Lee |
| [SPARK-8525](https://issues.apache.org/jira/browse/SPARK-8525) | Bug in Streaming k-means documentation |  Minor | Documentation, MLlib | Oleksiy Dyagilev | Oleksiy Dyagilev |
| [SPARK-8062](https://issues.apache.org/jira/browse/SPARK-8062) | NullPointerException in SparkHadoopUtil.getFileSystemThreadStatistics |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-8032](https://issues.apache.org/jira/browse/SPARK-8032) | Make NumPy version checking in mllib/\_\_init\_\_.py |  Major | MLlib, PySpark | Manoj Kumar | Manoj Kumar |
| [SPARK-7946](https://issues.apache.org/jira/browse/SPARK-7946) | DecayFactor wrongly set in StreamingKMeans |  Major | MLlib, Streaming | Manoj Kumar | Manoj Kumar |
| [SPARK-7883](https://issues.apache.org/jira/browse/SPARK-7883) | Fixing broken trainImplicit example in MLlib Collaborative Filtering documentation. |  Trivial | Documentation, MLlib | Mike Dusenberry | Mike Dusenberry |
| [SPARK-7660](https://issues.apache.org/jira/browse/SPARK-7660) | Snappy-java buffer-sharing bug leads to data corruption / test failures |  Blocker | Shuffle, Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-7522](https://issues.apache.org/jira/browse/SPARK-7522) | ML Examples option for dataFormat should not be enclosed in angle brackets |  Minor | Examples | Bryan Cutler | Bryan Cutler |
| [SPARK-7181](https://issues.apache.org/jira/browse/SPARK-7181) | External Sorter merge with aggregation go to an infinite loop when we have a total ordering |  Critical | Spark Core | Qiping Li | Qiping Li |
| [SPARK-6998](https://issues.apache.org/jira/browse/SPARK-6998) | Make StreamingKMeans `Serializable` |  Major | MLlib | Shixiong Zhu | Shixiong Zhu |
| [SPARK-6952](https://issues.apache.org/jira/browse/SPARK-6952) | spark-daemon.sh PID reuse check fails on long classpath |  Minor | Deploy | Punya Biswal | Punya Biswal |
| [SPARK-6931](https://issues.apache.org/jira/browse/SPARK-6931) | python: struct.pack('!q', value) in write\_long(value, stream) in serializers.py require int(but doesn't raise exceptions in common cases) |  Critical | PySpark | Chunxi Zhang | Bryan Cutler |
| [SPARK-6905](https://issues.apache.org/jira/browse/SPARK-6905) | Upgrade Snappy Java to 1.1.1.7 to fix bug that resulted in worse compression |  Major | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-6886](https://issues.apache.org/jira/browse/SPARK-6886) | Big closure in PySpark will fail during shuffle |  Blocker | PySpark | Davies Liu | Davies Liu |
| [SPARK-6753](https://issues.apache.org/jira/browse/SPARK-6753) | Unit test for SPARK-3426 (in ShuffleSuite) doesn't correctly clone the SparkConf |  Minor | Tests | Kay Ousterhout | Kay Ousterhout |
| [SPARK-6209](https://issues.apache.org/jira/browse/SPARK-6209) | ExecutorClassLoader can leak connections after failing to load classes from the REPL class server |  Critical | Spark Core | Josh Rosen | Josh Rosen |
| [SPARK-5969](https://issues.apache.org/jira/browse/SPARK-5969) | The pyspark.rdd.sortByKey always fills only two partitions when ascending=False. |  Major | PySpark | Milan Straka | Milan Straka |
| [SPARK-5412](https://issues.apache.org/jira/browse/SPARK-5412) | Cannot bind Master to a specific hostname as per the documentation |  Major | Deploy | Alexis Seigneurin | Sean Owen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9198](https://issues.apache.org/jira/browse/SPARK-9198) | Typo in PySpark SparseVector docs (bad index) |  Minor | Documentation, MLlib, PySpark | Joseph K. Bradley | Joseph K. Bradley |


