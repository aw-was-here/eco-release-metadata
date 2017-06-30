
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

## Release 2.2.1 - Unreleased (as of 2017-06-30)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20861](https://issues.apache.org/jira/browse/SPARK-20861) | Pyspark CrossValidator & TrainValidationSplit should delegate parameter looping to estimators |  Minor | ML, PySpark | Bago Amirbekian | Bago Amirbekian |
| [SPARK-21060](https://issues.apache.org/jira/browse/SPARK-21060) | Css style about paging function is error in the executor page. |  Minor | Web UI | guoxiaolongzte | guoxiaolongzte |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20140](https://issues.apache.org/jira/browse/SPARK-20140) | Remove hardcoded kinesis retry wait and max retries |  Major | DStreams | Yash Sharma | Yash Sharma |
| [SPARK-20756](https://issues.apache.org/jira/browse/SPARK-20756) | yarn-shuffle jar has references to unshaded guava and contains scala classes |  Major | YARN | Mark Grover | Mark Grover |
| [SPARK-20814](https://issues.apache.org/jira/browse/SPARK-20814) | Mesos scheduler does not respect spark.executor.extraClassPath configuration |  Critical | Mesos | Gene Pang | Marcelo Vanzin |
| [SPARK-20365](https://issues.apache.org/jira/browse/SPARK-20365) | Not so accurate classpath format for AM and Containers |  Minor | YARN | Saisai Shao |  |
| [SPARK-20922](https://issues.apache.org/jira/browse/SPARK-20922) | Unsafe deserialization in Spark LauncherConnection |  Major | Spark Submit | Aditya Sharad | Marcelo Vanzin |
| [SPARK-20926](https://issues.apache.org/jira/browse/SPARK-20926) | Exposure to Guava libraries by directly accessing tableRelationCache in SessionCatalog caused failures |  Major | Spark Core | Reza Safi | Reza Safi |
| [SPARK-20914](https://issues.apache.org/jira/browse/SPARK-20914) | Javadoc contains code that is invalid |  Trivial | Documentation | Cristian Teodor | Sean Owen |
| [SPARK-21041](https://issues.apache.org/jira/browse/SPARK-21041) | With whole-stage codegen, SparkSession.range()'s behavior is inconsistent with SparkContext.range() |  Major | SQL | Kris Mok | Dongjoon Hyun |
| [SPARK-17914](https://issues.apache.org/jira/browse/SPARK-17914) | Spark SQL casting to TimestampType with nanosecond results in incorrect timestamp |  Major | SQL | Oksana Romankova | Anton Okolnychyi |
| [SPARK-20345](https://issues.apache.org/jira/browse/SPARK-20345) | Fix STS error handling logic on HiveSQLException |  Major | SQL | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-21059](https://issues.apache.org/jira/browse/SPARK-21059) | LikeSimplification can NPE on null pattern |  Major | SQL | Reynold Xin | Reynold Xin |
| [SPARK-21050](https://issues.apache.org/jira/browse/SPARK-21050) | ml word2vec write has overflow issue in calculating numPartitions |  Major | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-20920](https://issues.apache.org/jira/browse/SPARK-20920) | ForkJoinPool pools are leaked when writing hive tables with many partitions |  Major | SQL | Rares Mirica | Sean Owen |
| [SPARK-21064](https://issues.apache.org/jira/browse/SPARK-21064) | Fix the default value bug in NettyBlockTransferServiceSuite |  Trivial | Tests | DjvuLee | DjvuLee |
| [SPARK-12552](https://issues.apache.org/jira/browse/SPARK-12552) | Recovered driver's resource is not counted in the Master |  Major | Deploy, Spark Core | Saisai Shao | Saisai Shao |
| [SPARK-21126](https://issues.apache.org/jira/browse/SPARK-21126) | The configuration which named "spark.core.connection.auth.wait.timeout" hasn't been used in spark |  Trivial | Documentation, Spark Core | liuzhaokun | liuzhaokun |
| [SPARK-19688](https://issues.apache.org/jira/browse/SPARK-19688) | Spark on Yarn Credentials File set to different application directory |  Minor | DStreams, YARN | Devaraj Jonnadula | Xing Shi |
| [SPARK-21138](https://issues.apache.org/jira/browse/SPARK-21138) | Cannot delete staging dir when the clusters of "spark.yarn.stagingDir" and "spark.hadoop.fs.defaultFS" are different |  Major | YARN | sharkd tu | sharkd tu |
| [SPARK-20929](https://issues.apache.org/jira/browse/SPARK-20929) | LinearSVC should not use shared Param HasThresholds |  Minor | ML | Joseph K. Bradley | Joseph K. Bradley |
| [SPARK-21167](https://issues.apache.org/jira/browse/SPARK-21167) | Path is not decoded correctly when reading output of FileSink |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-21181](https://issues.apache.org/jira/browse/SPARK-21181) | Suppress memory leak errors reported by netty |  Minor | Input/Output | Dhruve Ashar | Dhruve Ashar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20957](https://issues.apache.org/jira/browse/SPARK-20957) | Flaky Test: o.a.s.sql.streaming.StreamingQueryManagerSuite listing |  Major | Structured Streaming | Shixiong Zhu | Shixiong Zhu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21042](https://issues.apache.org/jira/browse/SPARK-21042) | Document Dataset.union is resolution by position, not name |  Major | SQL | Reynold Xin | Reynold Xin |


