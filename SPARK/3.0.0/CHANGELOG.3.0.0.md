
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

## Release 3.0.0 - Unreleased (as of 2018-09-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24441](https://issues.apache.org/jira/browse/SPARK-24441) | Expose total estimated size of states in HDFSBackedStateStoreProvider |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-20636](https://issues.apache.org/jira/browse/SPARK-20636) | Eliminate unnecessary shuffle with adjacent Window expressions |  Major | Optimizer | Michael Styles | Michael Styles |
| [SPARK-24999](https://issues.apache.org/jira/browse/SPARK-24999) | Reduce unnecessary 'new' memory operations |  Major | SQL | caoxuewen | caoxuewen |
| [SPARK-23672](https://issues.apache.org/jira/browse/SPARK-23672) | Document Support returning lists in Arrow UDFs |  Major | PySpark, SQL | holdenk | holdenk |
| [SPARK-25241](https://issues.apache.org/jira/browse/SPARK-25241) | Configurable empty values when reading/writing CSV files |  Minor | SQL | Mario Molina | Mario Molina |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-24717](https://issues.apache.org/jira/browse/SPARK-24717) | Split out min retain version of state for memory in HDFSBackedStateStoreProvider |  Major | Structured Streaming | Jungtaek Lim | Jungtaek Lim |
| [SPARK-24699](https://issues.apache.org/jira/browse/SPARK-24699) | Watermark / Append mode should work with Trigger.Once |  Major | Structured Streaming | Chris Horn | Tathagata Das |
| [SPARK-25204](https://issues.apache.org/jira/browse/SPARK-25204) | rate source test is flaky |  Minor | Structured Streaming | Jose Torres | Jose Torres |
| [SPARK-25268](https://issues.apache.org/jira/browse/SPARK-25268) | runParallelPersonalizedPageRank throws serialization Exception |  Critical | GraphX | Bago Amirbekian | shahid |
| [SPARK-25072](https://issues.apache.org/jira/browse/SPARK-25072) | PySpark custom Row class can be given extra parameters |  Minor | PySpark | Jan-Willem van der Sijp | Li Yuanjian |
| [SPARK-25021](https://issues.apache.org/jira/browse/SPARK-25021) | Add spark.executor.pyspark.memory support to Kubernetes |  Major | Kubernetes | Ryan Blue | Ilan Filonenko |
| [SPARK-25399](https://issues.apache.org/jira/browse/SPARK-25399) | Reusing execution threads from continuous processing for microbatch streaming can result in correctness issues |  Critical | Structured Streaming | Mukul Murthy | Mukul Murthy |
| [SPARK-25363](https://issues.apache.org/jira/browse/SPARK-25363) | Schema pruning doesn't work if nested column is used in where clause |  Major | SQL | Liang-Chi Hsieh | Liang-Chi Hsieh |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-22187](https://issues.apache.org/jira/browse/SPARK-22187) | Update unsaferow format for saved state such that we can set timeouts when state is null |  Major | Structured Streaming | Tathagata Das | Tathagata Das |
| [SPARK-25328](https://issues.apache.org/jira/browse/SPARK-25328) | Add an example for having two columns as the grouping key in group aggregate pandas UDF |  Major | PySpark | Xiao Li | Hyukjin Kwon |


