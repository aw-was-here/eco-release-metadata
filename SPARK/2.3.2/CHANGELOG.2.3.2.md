
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

## Release 2.3.2 - Unreleased (as of 2018-07-13)



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
| [SPARK-24535](https://issues.apache.org/jira/browse/SPARK-24535) | Fix java version parsing in SparkR on Windows |  Blocker | SparkR | Shivaram Venkataraman | Felix Cheung |
| [SPARK-24739](https://issues.apache.org/jira/browse/SPARK-24739) | PySpark does not work with Python 3.7.0 |  Critical | PySpark | Hyukjin Kwon | Hyukjin Kwon |
| [SPARK-24530](https://issues.apache.org/jira/browse/SPARK-24530) | Sphinx doesn't render autodoc\_docstring\_signature correctly (with Python 2?) and pyspark.ml docs are broken |  Critical | ML, PySpark | Xiangrui Meng | Hyukjin Kwon |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24502](https://issues.apache.org/jira/browse/SPARK-24502) | flaky test: UnsafeRowSerializerSuite |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-24521](https://issues.apache.org/jira/browse/SPARK-24521) | Fix ineffective test in CachedTableSuite |  Minor | SQL | Li Jin | Li Jin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24507](https://issues.apache.org/jira/browse/SPARK-24507) | Description in "Level of Parallelism in Data Receiving" section of Spark Streaming Programming Guide in is not relevan for the recent Kafka direct apprach |  Minor | Documentation, DStreams | Lev Greenberg | Rekha Joshi |


