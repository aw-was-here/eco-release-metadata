
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

## Release 3.0.0 - Unreleased (as of 2018-07-13)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24231](https://issues.apache.org/jira/browse/SPARK-24231) | Python API: Provide evaluateEachIteration method or equivalent for spark.ml GBTs |  Minor | ML, PySpark | Weichen Xu | Lu Wang |
| [SPARK-24397](https://issues.apache.org/jira/browse/SPARK-24397) | Add TaskContext.getLocalProperties in Python |  Major | PySpark | Tathagata Das | Tathagata Das |
| [SPARK-24232](https://issues.apache.org/jira/browse/SPARK-24232) | Allow referring to kubernetes secrets as env variable |  Major | Kubernetes | Dharmesh Kakadia | Stavros Kontopoulos |
| [SPARK-24396](https://issues.apache.org/jira/browse/SPARK-24396) | Add Structured Streaming ForeachWriter for python |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24662](https://issues.apache.org/jira/browse/SPARK-24662) | Structured Streaming should support LIMIT |  Major | Structured Streaming | Mukul Murthy | Mukul Murthy |
| [SPARK-24730](https://issues.apache.org/jira/browse/SPARK-24730) | Add policy to choose max as global watermark when streaming query has multiple watermarks |  Major | Structured Streaming | Tathagata Das | Tathagata Das |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-20449](https://issues.apache.org/jira/browse/SPARK-20449) | Upgrade breeze version to 0.13.1 |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-21765](https://issues.apache.org/jira/browse/SPARK-21765) | Ensure all leaf nodes that are derived from streaming sources have isStreaming=true |  Major | SQL, Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23143](https://issues.apache.org/jira/browse/SPARK-23143) | Add Python support for continuous trigger |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23144](https://issues.apache.org/jira/browse/SPARK-23144) | Add console sink for continuous queries |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23142](https://issues.apache.org/jira/browse/SPARK-23142) | Add documentation for Continuous Processing |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23454](https://issues.apache.org/jira/browse/SPARK-23454) | Add Trigger information to the Structured Streaming programming guide |  Minor | Documentation, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22839](https://issues.apache.org/jira/browse/SPARK-22839) | Refactor Kubernetes code for configuring driver/executor pods to use consistent and cleaner abstraction |  Major | Kubernetes | Yinan Li | Matt Cheah |
| [SPARK-23966](https://issues.apache.org/jira/browse/SPARK-23966) | Refactoring all checkpoint file writing logic in a common interface |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24094](https://issues.apache.org/jira/browse/SPARK-24094) | Change description strings of v2 streaming sources to reflect the change |  Trivial | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24697](https://issues.apache.org/jira/browse/SPARK-24697) | Fix the reported start offsets in streaming query progress |  Major | Structured Streaming | Arun Mahadevan | Tathagata Das |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-19378](https://issues.apache.org/jira/browse/SPARK-19378) | StateOperator metrics should still return the total number of rows in state even if there was no data for a trigger |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-21587](https://issues.apache.org/jira/browse/SPARK-21587) | Filter pushdown for EventTime Watermark Operator |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-21696](https://issues.apache.org/jira/browse/SPARK-21696) | State Store can't handle corrupted snapshots |  Critical | Structured Streaming | Alexander Bessonov |  |
| [SPARK-22018](https://issues.apache.org/jira/browse/SPARK-22018) | Catalyst Optimizer does not preserve top-level metadata while collapsing projects |  Major | Optimizer, Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22017](https://issues.apache.org/jira/browse/SPARK-22017) | watermark evaluation with multi-input stream operators is unspecified |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-22238](https://issues.apache.org/jira/browse/SPARK-22238) | EnsureStatefulOpPartitioning shouldn't ask for the child RDD before planning is completed |  Major | Structured Streaming | Burak Yavuz | Burak Yavuz |
| [SPARK-23484](https://issues.apache.org/jira/browse/SPARK-23484) | Fix possible race condition in KafkaContinuousReader |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23408](https://issues.apache.org/jira/browse/SPARK-23408) | Flaky test: StreamingOuterJoinSuite.left outer early state exclusion on right |  Minor | SQL, Tests | Marcelo Vanzin | Tathagata Das |
| [SPARK-23827](https://issues.apache.org/jira/browse/SPARK-23827) | StreamingJoinExec should ensure that input data is partitioned into specific number of partitions |  Critical | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23004](https://issues.apache.org/jira/browse/SPARK-23004) | Structured Streaming raise "llegalStateException: Cannot remove after already committed or aborted" |  Major | Structured Streaming | secfree | Tathagata Das |
| [SPARK-24056](https://issues.apache.org/jira/browse/SPARK-24056) | Make consumer creation lazy in Kafka source for Structured streaming |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24050](https://issues.apache.org/jira/browse/SPARK-24050) | StreamingQuery does not calculate input / processing rates in some cases |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24137](https://issues.apache.org/jira/browse/SPARK-24137) | [K8s] Mount temporary directories in emptydir volumes |  Major | Kubernetes | Matt Cheah | Matt Cheah |
| [SPARK-24453](https://issues.apache.org/jira/browse/SPARK-24453) | Fix error recovering from the failure in a no-data batch |  Major | Structured Streaming | Tathagata Das | Tathagata Das |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21464](https://issues.apache.org/jira/browse/SPARK-21464) | Minimize deprecation warnings caused by ProcessingTime class |  Minor | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-22884](https://issues.apache.org/jira/browse/SPARK-22884) | ML test for StructuredStreaming: spark.ml.clustering |  Major | ML, Tests | Joseph K. Bradley | Sandor Murakozi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22908](https://issues.apache.org/jira/browse/SPARK-22908) | add basic continuous kafka source |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23033](https://issues.apache.org/jira/browse/SPARK-23033) | disable task-level retry for continuous execution |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23052](https://issues.apache.org/jira/browse/SPARK-23052) | Migrate Microbatch ConsoleSink to v2 |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23362](https://issues.apache.org/jira/browse/SPARK-23362) | Migrate Kafka microbatch source to v2 |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-23491](https://issues.apache.org/jira/browse/SPARK-23491) | continuous symptom |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23097](https://issues.apache.org/jira/browse/SPARK-23097) | Migrate text socket source to v2 |  Major | Structured Streaming | Jose Torres | Saisai Shao |
| [SPARK-23559](https://issues.apache.org/jira/browse/SPARK-23559) | add epoch ID to data writer factory |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23096](https://issues.apache.org/jira/browse/SPARK-23096) | Migrate rate source to v2 |  Major | Structured Streaming | Jose Torres | Saisai Shao |
| [SPARK-23099](https://issues.apache.org/jira/browse/SPARK-23099) | Migrate foreach sink |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-23748](https://issues.apache.org/jira/browse/SPARK-23748) | Support select from temp tables |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-23747](https://issues.apache.org/jira/browse/SPARK-23747) | Add EpochCoordinator unit tests |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24038](https://issues.apache.org/jira/browse/SPARK-24038) | refactor continuous write exec to its own class |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24039](https://issues.apache.org/jira/browse/SPARK-24039) | remove restarting iterators hack |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24157](https://issues.apache.org/jira/browse/SPARK-24157) | Enable no-data micro batches for streaming aggregation and deduplication |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24132](https://issues.apache.org/jira/browse/SPARK-24132) | Instrumentation improvement for classification |  Major | ML | Lu Wang | Lu Wang |
| [SPARK-24155](https://issues.apache.org/jira/browse/SPARK-24155) | Instrumentation improvement for clustering |  Major | ML | Lu Wang | Lu Wang |
| [SPARK-24158](https://issues.apache.org/jira/browse/SPARK-24158) | Enable no-data micro batches for streaming joins |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-24115](https://issues.apache.org/jira/browse/SPARK-24115) | improve instrumentation for spark.ml.tuning |  Major | ML | yogesh garg | Bago Amirbekian |
| [SPARK-23503](https://issues.apache.org/jira/browse/SPARK-23503) | continuous execution should sequence committed epochs |  Major | Structured Streaming | Jose Torres |  |
| [SPARK-24234](https://issues.apache.org/jira/browse/SPARK-24234) | create the bottom-of-task RDD with row buffer |  Major | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-24386](https://issues.apache.org/jira/browse/SPARK-24386) | implement continuous processing coalesce(1) |  Major | Structured Streaming | Jose Torres | Jose Torres |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-21925](https://issues.apache.org/jira/browse/SPARK-21925) | Update trigger interval documentation in docs with behavior change in Spark 2.2 |  Major | Documentation, Structured Streaming | Burak Yavuz |  |
| [SPARK-23092](https://issues.apache.org/jira/browse/SPARK-23092) | Migrate MemoryStream to DataSource V2 |  Major | Structured Streaming | Burak Yavuz | Tathagata Das |


