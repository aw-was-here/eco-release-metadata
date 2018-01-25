
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

## Release 2.4.0 - Unreleased (as of 2018-01-25)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22119](https://issues.apache.org/jira/browse/SPARK-22119) | Add cosine distance to KMeans |  Minor | ML, MLlib | Marco Gaido | Marco Gaido |


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


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22949](https://issues.apache.org/jira/browse/SPARK-22949) | Reduce memory requirement for TrainValidationSplit |  Critical | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-23028](https://issues.apache.org/jira/browse/SPARK-23028) | Bump master branch version to 2.4.0-SNAPSHOT |  Major | Build | Xiao Li | Xiao Li |
| [SPARK-23038](https://issues.apache.org/jira/browse/SPARK-23038) | Update docker/spark-test (JDK/OS) |  Minor | Tests | Dongjoon Hyun | Dongjoon Hyun |
| [SPARK-22956](https://issues.apache.org/jira/browse/SPARK-22956) | Union Stream Failover Cause \`IllegalStateException\` |  Major | Structured Streaming | Li Yuanjian | Li Yuanjian |
| [SPARK-23044](https://issues.apache.org/jira/browse/SPARK-23044) | merge script has bug when assigning jiras to non-contributors |  Minor | Project Infra | Imran Rashid | Imran Rashid |
| [SPARK-20947](https://issues.apache.org/jira/browse/SPARK-20947) | Encoding/decoding issue in PySpark pipe implementation |  Major | PySpark | Xiaozhe Wang | Xiaozhe Wang |
| [SPARK-17088](https://issues.apache.org/jira/browse/SPARK-17088) | IsolatedClientLoader fails to load Hive client when sharesHadoopClasses is false |  Minor | SQL | Marcelo Vanzin | Marcelo Vanzin |
| [SPARK-23177](https://issues.apache.org/jira/browse/SPARK-23177) | PySpark parameter-less UDFs raise exception if applied after distinct |  Major | PySpark | Jakub Wasikowski | Liang-Chi Hsieh |
| [SPARK-21727](https://issues.apache.org/jira/browse/SPARK-21727) | Operating on an ArrayType in a SparkR DataFrame throws error |  Major | SparkR | Neil Alexander McQuarrie | Neil Alexander McQuarrie |
| [SPARK-23148](https://issues.apache.org/jira/browse/SPARK-23148) | spark.read.csv with multiline=true gives FileNotFoundException if path contains spaces |  Major | SQL | Bogdan Raducanu | Henry Robinson |
| [SPARK-22577](https://issues.apache.org/jira/browse/SPARK-22577) | executor page blacklist status should update with TaskSet level blacklisting |  Major | Scheduler | Thomas Graves | Attila Zsolt Piros |
| [SPARK-23152](https://issues.apache.org/jira/browse/SPARK-23152) | Invalid guard condition in org.apache.spark.ml.classification.Classifier |  Minor | ML, MLlib | Matthew Tovbin | Matthew Tovbin |
| [SPARK-22297](https://issues.apache.org/jira/browse/SPARK-22297) | Flaky test: BlockManagerSuite "Shuffle registration timeout and maxAttempts conf" |  Minor | Spark Core, Tests | Marcelo Vanzin | Mark Petruska |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-16139](https://issues.apache.org/jira/browse/SPARK-16139) | Audit tests for leaked threads |  Major | Tests | Imran Rashid | Gabor Somogyi |
| [SPARK-23169](https://issues.apache.org/jira/browse/SPARK-23169) | Run lintr on the changes of lint-r script and .lintr configuration |  Minor | Project Infra | Hyukjin Kwon | Hyukjin Kwon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-23046](https://issues.apache.org/jira/browse/SPARK-23046) | Have RFormula include VectorSizeHint in pipeline |  Major | ML | Bago Amirbekian | Bago Amirbekian |
| [SPARK-22274](https://issues.apache.org/jira/browse/SPARK-22274) | User-defined aggregation functions with pandas udf |  Major | PySpark | Li Jin | Li Jin |


