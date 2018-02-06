
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

## Release 0.9.1 - 2018-01-04



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2104](https://issues.apache.org/jira/browse/TEZ-2104) | A CrossProductEdge which produces synthetic cross-product parallelism |  Major | . | Gopal V | Zhiyuan Yang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3805](https://issues.apache.org/jira/browse/TEZ-3805) | Analyzer: Add an analyzer to find out scheduling misses in 1:1 edges |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3816](https://issues.apache.org/jira/browse/TEZ-3816) | Ability to automatically speculate single-task vertices |  Major | . | Muhammad Samir Khan | Muhammad Samir Khan |
| [TEZ-3852](https://issues.apache.org/jira/browse/TEZ-3852) | Optimize ContainerContext.isSuperSet to speed container reuse decisions |  Major | . | Jonathan Eagles | Jonathan Eagles |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3801](https://issues.apache.org/jira/browse/TEZ-3801) | Update version in master to 0.9.1 |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3797](https://issues.apache.org/jira/browse/TEZ-3797) | Add tez debug tool for comparing counters of 2 DAGs |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3752](https://issues.apache.org/jira/browse/TEZ-3752) | Reduce Object size of InMemoryMapOutput for large jobs |  Major | . | Jonathan Eagles | Muhammad Samir Khan |
| [TEZ-3212](https://issues.apache.org/jira/browse/TEZ-3212) | IFile throws NegativeArraySizeException for value sizes between 1GB and 2GB |  Major | . | Jonathan Eagles | Muhammad Samir Khan |
| [TEZ-3804](https://issues.apache.org/jira/browse/TEZ-3804) | FetcherOrderedGrouped#setupLocalDiskFetch should ignore empty partition records |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3803](https://issues.apache.org/jira/browse/TEZ-3803) | Tasks can get killed due to insufficient progress while waiting for shuffle inputs to complete |  Critical | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3813](https://issues.apache.org/jira/browse/TEZ-3813) | Reduce Object size of MemoryFetchedInput for large jobs |  Major | . | Muhammad Samir Khan | Muhammad Samir Khan |
| [TEZ-3431](https://issues.apache.org/jira/browse/TEZ-3431) | Add unit tests for container release |  Major | . | Sushmitha Sreenivasan | Taklon Stephen Wu |
| [TEZ-3825](https://issues.apache.org/jira/browse/TEZ-3825) | Tez UI DAGs page can't query RUNNING or SUBMITTED apps |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3827](https://issues.apache.org/jira/browse/TEZ-3827) | TEZ Vertex status on DAG index page shows SUCCEEDED for SUCCEEDED\_WITH\_FAILURES final status |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3828](https://issues.apache.org/jira/browse/TEZ-3828) | Allow relaxing locality when retried task's priority is kept same |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3831](https://issues.apache.org/jira/browse/TEZ-3831) | Reduce Unordered memory needed for storing empty completed events |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3832](https://issues.apache.org/jira/browse/TEZ-3832) | TEZ DAG status shows SUCCEEDED for SUCCEEDED\_WITH\_FAILURES final status |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3724](https://issues.apache.org/jira/browse/TEZ-3724) | Tez UI on HTTP "corrects" HTTPS REST calls to HTTP |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3834](https://issues.apache.org/jira/browse/TEZ-3834) | TaskSchedulerManager NullPointerException during shutdown when failed to start |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3839](https://issues.apache.org/jira/browse/TEZ-3839) | Tez Shuffle Handler prints disk error stack traces for every read failure. |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3840](https://issues.apache.org/jira/browse/TEZ-3840) | Tez should write TEZ\_DAG\_ID before TEZ\_EXTRA\_INFO |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3836](https://issues.apache.org/jira/browse/TEZ-3836) | Tez UI task page sort does not work on RHEL7/Fedora |  Major | . | Kuhu Shukla | Sreenath Somarajapuram |
| [TEZ-3843](https://issues.apache.org/jira/browse/TEZ-3843) | Tez UI Vertex/Tasks log links for running tasks are missing |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3845](https://issues.apache.org/jira/browse/TEZ-3845) | Tez UI Cleanup Stats Table |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3833](https://issues.apache.org/jira/browse/TEZ-3833) | Tasks should report codec errors during shuffle as fetch failures |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3830](https://issues.apache.org/jira/browse/TEZ-3830) | HistoryEventTimelineConversion should not hard code the Task state. |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3847](https://issues.apache.org/jira/browse/TEZ-3847) | AM web controller task counters are empty sometimes |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3848](https://issues.apache.org/jira/browse/TEZ-3848) | Tez Local mode doesn't localize distributed cache files |  Major | . | Jacob Tolar | Jacob Tolar |
| [TEZ-3844](https://issues.apache.org/jira/browse/TEZ-3844) | Tez UI Dag Counters show no records for a RUNNING DAG. |  Major | UI | Kuhu Shukla | Jonathan Eagles |
| [TEZ-3849](https://issues.apache.org/jira/browse/TEZ-3849) | Combiner+PipelinedSorter silently drops records |  Major | . | Jacob Tolar | Jacob Tolar |
| [TEZ-3856](https://issues.apache.org/jira/browse/TEZ-3856) | API to access counters in InputInitializerContext |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3666](https://issues.apache.org/jira/browse/TEZ-3666) | Integer overflow in ShuffleVertexManagerBase |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3858](https://issues.apache.org/jira/browse/TEZ-3858) | Misleading dag level diagnostics in case of invalid vertex event |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3862](https://issues.apache.org/jira/browse/TEZ-3862) | Tez UI: Upgrade em-tgraph to version 0.0.14 |  Trivial | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3857](https://issues.apache.org/jira/browse/TEZ-3857) | Tez TaskImpl can throw Invalid state transition for leaf tasks that do Retro Active Transition |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3861](https://issues.apache.org/jira/browse/TEZ-3861) | PipelineSorter setting negative progess |  Major | . | Prasanth Jayachandran | Rajesh Balamohan |
| [TEZ-3867](https://issues.apache.org/jira/browse/TEZ-3867) | testSendCustomProcessorEvent try to get array out of read only ByteBuffer |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3869](https://issues.apache.org/jira/browse/TEZ-3869) | Analyzer: Fix VertexInfo::getLastTaskToFinish comparison |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3855](https://issues.apache.org/jira/browse/TEZ-3855) | Allow vertex manager to send event to processor |  Blocker | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3252](https://issues.apache.org/jira/browse/TEZ-3252) | [Umbrella] Enable support for Hadoop-3.x |  Major | . | Hitesh Shah |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3807](https://issues.apache.org/jira/browse/TEZ-3807) | InMemoryWriter is not tested with RLE enabled |  Major | . | Muhammad Samir Khan | Muhammad Samir Khan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3850](https://issues.apache.org/jira/browse/TEZ-3850) | Enable header as sort button on Tez UI |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3854](https://issues.apache.org/jira/browse/TEZ-3854) | Make use of new improved em-table sort-icon |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3853](https://issues.apache.org/jira/browse/TEZ-3853) | Binary incompatibility caused by DEFAULT\_LOG\_LEVEL |  Major | . | Aihua Xu | Zhiyuan Yang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3868](https://issues.apache.org/jira/browse/TEZ-3868) | Update website to factor in the TEZ trademark registration |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3876](https://issues.apache.org/jira/browse/TEZ-3876) | Bug in local mode distributed cache files |  Minor | . | Jacob Tolar | Jacob Tolar |


