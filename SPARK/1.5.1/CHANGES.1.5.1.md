
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

## Release 1.5.1 - Unreleased (as of 2015-09-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10411](https://issues.apache.org/jira/browse/SPARK-10411) | In SQL tab move visualization above explain output |  Minor | SQL, Web UI | Andrew Or | Shixiong Zhu |
| [SPARK-10071](https://issues.apache.org/jira/browse/SPARK-10071) | QueueInputDStream Should Allow Checkpointing |  Major | Streaming | Asim Jalis | Shixiong Zhu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10566](https://issues.apache.org/jira/browse/SPARK-10566) | SnappyCompressionCodec init exception handling masks important error information |  Minor | Input/Output | Daniel Imfeld | Daniel Imfeld |
| [SPARK-10564](https://issues.apache.org/jira/browse/SPARK-10564) | ThreadingSuite: assertions in threads don't fail the test |  Critical | Tests | Andrew Or | Andrew Or |
| [SPARK-10556](https://issues.apache.org/jira/browse/SPARK-10556) | SBT build explicitly sets Scala version, which can conflict with SBT's own scala version |  Minor | Build | Ahir Reddy | Ahir Reddy |
| [SPARK-10554](https://issues.apache.org/jira/browse/SPARK-10554) | Potential NPE with ShutdownHook |  Minor | Block Manager | Nithin Asokan | Nithin Asokan |
| [SPARK-10480](https://issues.apache.org/jira/browse/SPARK-10480) | ML.LinearRegressionModel.copy() can not use argument "extra" |  Minor | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10479](https://issues.apache.org/jira/browse/SPARK-10479) | LogisticRegression copy should copy model summary if available |  Minor | ML | Feynman Liang | Yanbo Liang |
| [SPARK-10470](https://issues.apache.org/jira/browse/SPARK-10470) | ml.IsotonicRegressionModel.copy did not set parent |  Major | ML | Yanbo Liang | Yanbo Liang |
| [SPARK-10466](https://issues.apache.org/jira/browse/SPARK-10466) | UnsafeRow exception in Sort-Based Shuffle with data spill |  Blocker | SQL | Cheng Hao | Cheng Hao |
| [SPARK-10454](https://issues.apache.org/jira/browse/SPARK-10454) | Flaky test: o.a.s.scheduler.DAGSchedulerSuite.late fetch failures don't cause multiple concurrent attempts for the same map stage |  Critical | Scheduler, Spark Core | Pete Robbins | Pete Robbins |
| [SPARK-10441](https://issues.apache.org/jira/browse/SPARK-10441) | Cannot write timestamp to JSON |  Critical | SQL | Yin Huai | Yin Huai |
| [SPARK-10434](https://issues.apache.org/jira/browse/SPARK-10434) | Parquet compatibility with 1.4 is broken when writing arrays that may contain nulls |  Minor | SQL | Cheng Lian | Cheng Lian |
| [SPARK-10431](https://issues.apache.org/jira/browse/SPARK-10431) | Flaky test: o.a.s.metrics.InputOutputMetricsSuite - input metrics with cache and coalesce |  Critical | Tests | Pete Robbins | Pete Robbins |
| [SPARK-10422](https://issues.apache.org/jira/browse/SPARK-10422) | String column in InMemoryColumnarCache needs to override clone method |  Major | SQL | Yin Huai | Yin Huai |
| [SPARK-10392](https://issues.apache.org/jira/browse/SPARK-10392) | Pyspark - Wrong DateType support on JDBC connection |  Major | PySpark, SQL | Maciej Bryński | Alexey Grishchenko |
| [SPARK-10379](https://issues.apache.org/jira/browse/SPARK-10379) | UnsafeShuffleExternalSorter should preserve first page |  Critical | SQL | Davies Liu | Davies Liu |
| [SPARK-10332](https://issues.apache.org/jira/browse/SPARK-10332) | spark-submit to yarn doesn't fail if executors is 0 |  Minor | Spark Submit, YARN | Thomas Graves | holdenk |
| [SPARK-10311](https://issues.apache.org/jira/browse/SPARK-10311) | In cluster mode, AppId and AttemptId should be update when ApplicationMaster is new |  Major | Streaming | meiyoula | meiyoula |
| [SPARK-10301](https://issues.apache.org/jira/browse/SPARK-10301) | For struct type, if parquet's global schema has less fields than a file's schema, data reading will fail |  Critical | SQL | Yin Huai | Cheng Lian |
| [SPARK-9924](https://issues.apache.org/jira/browse/SPARK-9924) | checkForLogs and cleanLogs are scheduled at fixed rate and can get piled up |  Major | Web UI | Rohit Agarwal | Rohit Agarwal |
| [SPARK-9869](https://issues.apache.org/jira/browse/SPARK-9869) | Flaky test: o.a.s.streaming.InputStreamSuite - socket input stream |  Critical | Streaming | Josh Rosen | Pete Robbins |
| [SPARK-7736](https://issues.apache.org/jira/browse/SPARK-7736) | Exception not failing Python applications (in yarn cluster mode) |  Major | YARN | Shay Rojansky | Marcelo Vanzin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-9803](https://issues.apache.org/jira/browse/SPARK-9803) | Add transform and subset  to DataFrame |  Major | SparkR | Hossein Falaki | Felix Cheung |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10469](https://issues.apache.org/jira/browse/SPARK-10469) | Document tungsten-sort |  Minor | Documentation | holdenk | holdenk |
| [SPARK-10402](https://issues.apache.org/jira/browse/SPARK-10402) | Add scaladoc for default values of params in ML |  Minor | Documentation, ML | holdenk | holdenk |
| [SPARK-10398](https://issues.apache.org/jira/browse/SPARK-10398) | Migrate Spark download page to use new lua mirroring scripts |  Minor | Project Infra | Luciano Resende | Luciano Resende |


