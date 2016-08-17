
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
# Apache Tez Changelog

## Release 0.8.5 - Unreleased (as of 2016-08-17)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1248](https://issues.apache.org/jira/browse/TEZ-1248) | Reduce slow-start should special case 1 reducer runs |  Critical | . | Gopal V | Zhiyuan Yang |
| [TEZ-3370](https://issues.apache.org/jira/browse/TEZ-3370) | Tez UI: Display the log link as N/A if the app does not provide a log link |  Major | . | Siddharth Seth | Sreenath Somarajapuram |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3337](https://issues.apache.org/jira/browse/TEZ-3337) | Do not log empty fields of TaskAttemptFinishedEvent to avoid confusion |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3356](https://issues.apache.org/jira/browse/TEZ-3356) | Fix initializing of stats when custom ShuffleVertexManager is used |  Major | . | Peter Slawski | Peter Slawski |
| [TEZ-3348](https://issues.apache.org/jira/browse/TEZ-3348) | NullPointerException in Tez MROutput while trying to write using Parquet's DeprecatedParquetOutputFormat |  Major | . | Piyush Narang | Piyush Narang |
| [TEZ-3384](https://issues.apache.org/jira/browse/TEZ-3384) | Fix TestATSV15HistoryLoggingService::testDAGGroupingGroupingEnabled unit test |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |
| [TEZ-3398](https://issues.apache.org/jira/browse/TEZ-3398) | Tez UI: Bread crumb link to Application from Application details dag/configuration tab is broken |  Critical | . | Sushmitha Sreenivasan | Sreenath Somarajapuram |
| [TEZ-3352](https://issues.apache.org/jira/browse/TEZ-3352) | MRInputHelpers getStringProperty() should not fail if property value is null |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3413](https://issues.apache.org/jira/browse/TEZ-3413) | ConcurrentModificationException in HistoryEventTimelineConversion for AppLaunchedEvent |  Blocker | . | Jonathan Eagles | Jonathan Eagles |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3357](https://issues.apache.org/jira/browse/TEZ-3357) | Change TimelineCachePlugin to handle DAG grouping |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3358](https://issues.apache.org/jira/browse/TEZ-3358) | Support using the same TimelineGroupId for multiple DAGs |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3374](https://issues.apache.org/jira/browse/TEZ-3374) | Change TEZ\_HISTORY\_LOGGING\_TIMELINE\_NUM\_DAGS\_PER\_GROUP conf key name. |  Major | . | Harish Jaiprakash | Tsuyoshi Ozawa |
| [TEZ-3359](https://issues.apache.org/jira/browse/TEZ-3359) | Add granular log levels for HistoryLoggingService. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3376](https://issues.apache.org/jira/browse/TEZ-3376) | Fix groupId generation to account for dagId starting with 1. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3235](https://issues.apache.org/jira/browse/TEZ-3235) | Modify Example TestOrderedWordCount job to test the IPC limit for large dag plans |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |
| [TEZ-3409](https://issues.apache.org/jira/browse/TEZ-3409) | Log dagId along with other information when submitting a dag |  Major | . | Siddharth Seth | Siddharth Seth |


