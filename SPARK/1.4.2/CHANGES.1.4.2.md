
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

## Release 1.4.2 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9094](https://issues.apache.org/jira/browse/SPARK-9094) | Increase io.dropwizard.metrics dependency to 3.1.2 |  Minor | Spark Core | Carl Anders Düvel | Carl Anders Düvel |
| [SPARK-9010](https://issues.apache.org/jira/browse/SPARK-9010) | Improve the Spark Configuration document about `spark.kryoserializer.buffer` |  Trivial | Documentation | StanZhai | StanZhai |
| [SPARK-8390](https://issues.apache.org/jira/browse/SPARK-8390) | Update DirectKafkaWordCount examples to show how offset ranges can be used |  Major | Streaming | Tathagata Das | Cody Koeninger |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9109](https://issues.apache.org/jira/browse/SPARK-9109) | Unpersist a graph object does not work properly |  Minor | GraphX | Tien-Dung LE | Tien-Dung LE |
| [SPARK-9021](https://issues.apache.org/jira/browse/SPARK-9021) |  Change RDD.aggregate() to do reduce(mapPartitions()) instead of mapPartitions.fold() |  Major | PySpark | Nicholas Hwang |  |
| [SPARK-9012](https://issues.apache.org/jira/browse/SPARK-9012) | Accumulators in the task table should be escaped |  Major | Web UI | Shixiong Zhu | Shixiong Zhu |
| [SPARK-8990](https://issues.apache.org/jira/browse/SPARK-8990) | DataFrameReader.parquet() ignores user specified data source options |  Major | SQL | Cheng Lian | Cheng Lian |
| [SPARK-8974](https://issues.apache.org/jira/browse/SPARK-8974) | There is a bug in dynamicAllocation. When there is no running tasks, the number of executor a long time without running tasks, the number of executor does not reduce to the value of "spark.dynamicAllocation.minExecutors". |  Minor | Spark Core | KaiXinXIaoLei | KaiXinXIaoLei |
| [SPARK-8937](https://issues.apache.org/jira/browse/SPARK-8937) | A setting `spark.unsafe.exceptionOnMemoryLeak ` is missing in ScalaTest config. |  Minor | Tests | Kousuke Saruta | Kousuke Saruta |
| [SPARK-8910](https://issues.apache.org/jira/browse/SPARK-8910) | MiMa test is flaky because it starts a SQLContext |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-8865](https://issues.apache.org/jira/browse/SPARK-8865) | Fix bug:  init SimpleConsumerConfig with kafka params |  Minor | Streaming | guowei | guowei |
| [SPARK-8593](https://issues.apache.org/jira/browse/SPARK-8593) | History Server doesn't show complete application when one attempt inprogress |  Major | YARN | Thomas Graves | Rekha Joshi |
| [SPARK-7419](https://issues.apache.org/jira/browse/SPARK-7419) | Flaky test: o.a.s.streaming.CheckpointSuite |  Critical | Tests | Andrew Or | Shixiong Zhu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8743](https://issues.apache.org/jira/browse/SPARK-8743) | Deregister Codahale metrics for streaming when StreamingContext is closed |  Major | Streaming | Tathagata Das | Neelesh Srinivas Salian |
| [SPARK-2017](https://issues.apache.org/jira/browse/SPARK-2017) | web ui stage page becomes unresponsive when the number of tasks is large |  Major | Web UI | Reynold Xin | Andrew Or |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-8927](https://issues.apache.org/jira/browse/SPARK-8927) | Doc format wrong for some config descriptions |  Trivial | Documentation | Jon Alter | Jon Alter |
| [SPARK-7555](https://issues.apache.org/jira/browse/SPARK-7555) | User guide update for ElasticNet |  Major | ML | Joseph K. Bradley | Shuo Xiang |


