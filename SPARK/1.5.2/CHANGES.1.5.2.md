
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

## Release 1.5.2 - Unreleased (as of 2015-10-07)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10889](https://issues.apache.org/jira/browse/SPARK-10889) | Upgrade Kinesis Client Library |  Minor | Streaming | Avrohom Katz | Avrohom Katz |
| [SPARK-10871](https://issues.apache.org/jira/browse/SPARK-10871) | Specify number of failed executors in ApplicationMaster error message |  Minor | Spark Core | Ryan Williams | Ryan Williams |
| [SPARK-10833](https://issues.apache.org/jira/browse/SPARK-10833) | Inline, organize BSD/MIT licenses in LICENSE |  Major | Build | Sean Owen | Sean Owen |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [SPARK-10952](https://issues.apache.org/jira/browse/SPARK-10952) | Don't explode the environment when HIVE\_HOME isn't set. |  Minor | Build | Kevin Cox | Kevin Cox |
| [SPARK-10934](https://issues.apache.org/jira/browse/SPARK-10934) | hashCode of unsafe array may crush |  Major | SQL | Wenchen Fan | Wenchen Fan |
| [SPARK-10904](https://issues.apache.org/jira/browse/SPARK-10904) |   select(df, c("col1", "col2")) fails |  Major | SparkR | Weiqiang Zhuang | Felix Cheung |
| [SPARK-10901](https://issues.apache.org/jira/browse/SPARK-10901) | spark.yarn.user.classpath.first doesn't work |  Critical | YARN | Thomas Graves | Thomas Graves |
| [SPARK-10885](https://issues.apache.org/jira/browse/SPARK-10885) | Display the failed output op in Streaming UI |  Major | Streaming | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10859](https://issues.apache.org/jira/browse/SPARK-10859) | Predicates pushed to InmemoryColumnarTableScan are not evaluated correctly |  Blocker | SQL | Davies Liu | Davies Liu |
| [SPARK-10825](https://issues.apache.org/jira/browse/SPARK-10825) | Flaky test: StandaloneDynamicAllocationSuite |  Critical | Spark Core, Tests | Shixiong Zhu | Shixiong Zhu |
| [SPARK-10790](https://issues.apache.org/jira/browse/SPARK-10790) | Dynamic Allocation does not request any executors if first stage needs less than or equal to spark.dynamicAllocation.initialExecutors |  Major | Scheduler | Jonathan Kelly | Saisai Shao |
| [SPARK-10741](https://issues.apache.org/jira/browse/SPARK-10741) | Hive Query Having/OrderBy against Parquet table is not working |  Major | SQL | Ian | Wenchen Fan |
| [SPARK-10058](https://issues.apache.org/jira/browse/SPARK-10058) | Flaky test: HeartbeatReceiverSuite: normal heartbeat |  Critical | Spark Core, Tests | Davies Liu | Shixiong Zhu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


