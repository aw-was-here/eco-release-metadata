
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

## Release 0.8.5 - 2017-03-13



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1248](https://issues.apache.org/jira/browse/TEZ-1248) | Reduce slow-start should special case 1 reducer runs |  Critical | . | Gopal V | Zhiyuan Yang |
| [TEZ-3370](https://issues.apache.org/jira/browse/TEZ-3370) | Tez UI: Display the log link as N/A if the app does not provide a log link |  Major | . | Siddharth Seth | Sreenath Somarajapuram |
| [TEZ-3326](https://issues.apache.org/jira/browse/TEZ-3326) | Display JVM system properties in AM and task logs |  Major | . | Ming Ma | Eric Badger |
| [TEZ-3317](https://issues.apache.org/jira/browse/TEZ-3317) | Speculative execution starts too early due to 0 progress |  Major | . | Jonathan Eagles | Kuhu Shukla |
| [TEZ-3436](https://issues.apache.org/jira/browse/TEZ-3436) | Check input and output count before start in MapProcessor |  Minor | . | darion yaphet | darion yaphet |
| [TEZ-3505](https://issues.apache.org/jira/browse/TEZ-3505) | Move license to the file header for TezBytesWritableSerialization |  Major | . | darion yaphet | darion yaphet |


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
| [TEZ-2852](https://issues.apache.org/jira/browse/TEZ-2852) | TestVertexImpl fails due to race in AsyncDispatcher |  Critical | . | Jeff Zhang | Zhiyuan Yang |
| [TEZ-3009](https://issues.apache.org/jira/browse/TEZ-3009) | Errors that occur during container task acquisition are not logged |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3426](https://issues.apache.org/jira/browse/TEZ-3426) | Second AM attempt launched for session mode and recovery disabled for certain cases |  Critical | . | Jonathan Eagles | Jason Lowe |
| [TEZ-3442](https://issues.apache.org/jira/browse/TEZ-3442) | Flaky test: TestMapProcessor::testMapProcessorProgress |  Major | . | Hitesh Shah | Kuhu Shukla |
| [TEZ-3429](https://issues.apache.org/jira/browse/TEZ-3429) | Set reconfigureDoneTime on VertexConfigurationDoneEvent properly |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3433](https://issues.apache.org/jira/browse/TEZ-3433) | Tez UI: Searching using wrong ID causes error in all DAGs page |  Major | . | Sreenath Somarajapuram | Sushmitha Sreenivasan |
| [TEZ-3440](https://issues.apache.org/jira/browse/TEZ-3440) | Shuffling to memory can get out-of-sync when fetching multiple compressed map outputs |  Major | . | Nathan Roberts | Nathan Roberts |
| [TEZ-3460](https://issues.apache.org/jira/browse/TEZ-3460) | Tez Precommit Release audit warning |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3437](https://issues.apache.org/jira/browse/TEZ-3437) | Improve synchronization and the progress report behavior for Inputs from TEZ-3317 |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3368](https://issues.apache.org/jira/browse/TEZ-3368) | NPE in DelayedContainerManager |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3335](https://issues.apache.org/jira/browse/TEZ-3335) | DAG client thinks app is still running when app status is null |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3330](https://issues.apache.org/jira/browse/TEZ-3330) | Propagate additional config parameters when running MR jobs via Tez. |  Major | . | Manuel Godbert | Siddharth Seth |
| [TEZ-3464](https://issues.apache.org/jira/browse/TEZ-3464) | Fix findbugs warnings in tez-dag mainLoop |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3439](https://issues.apache.org/jira/browse/TEZ-3439) | Tez joinvalidate fails when first input argument size is bigger than the second |  Major | . | Hui Cao | Hui Cao |
| [TEZ-3452](https://issues.apache.org/jira/browse/TEZ-3452) | Auto-reduce parallelism calculation can overflow with large inputs |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3483](https://issues.apache.org/jira/browse/TEZ-3483) | Create basic travis yml file for Tez |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3097](https://issues.apache.org/jira/browse/TEZ-3097) | Flaky test: TestCommit.testDAGCommitStartedEventFail\_OnDAGSuccess |  Major | . | Jeff Zhang | Harish Jaiprakash |
| [TEZ-3486](https://issues.apache.org/jira/browse/TEZ-3486) | COMBINE\_OUTPUT\_RECORDS/COMBINE\_INPUT\_RECORDS are not correct |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3493](https://issues.apache.org/jira/browse/TEZ-3493) | DAG submit timeout cannot be set to a month |  Minor | . | Siddharth Seth | Hitesh Shah |
| [TEZ-3533](https://issues.apache.org/jira/browse/TEZ-3533) | ShuffleScheduler should shutdown threadpool on exit |  Critical | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3491](https://issues.apache.org/jira/browse/TEZ-3491) | Tez job can hang due to container priority inversion |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3536](https://issues.apache.org/jira/browse/TEZ-3536) | NPE in WebUIService start when host resolution fails. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3347](https://issues.apache.org/jira/browse/TEZ-3347) | Tez UI: Vertex UI throws an error while getting vertexProgress for a killed Vertex |  Major | UI | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3546](https://issues.apache.org/jira/browse/TEZ-3546) | Tez UI: On sorting asc - Not Available must be at the top. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3507](https://issues.apache.org/jira/browse/TEZ-3507) | Task logs link when editing url from one task to another |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3537](https://issues.apache.org/jira/browse/TEZ-3537) | ArrayIndexOutOfBoundsException with empty environment variables/Port YARN-3768 to Tez |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3549](https://issues.apache.org/jira/browse/TEZ-3549) | TaskAttemptImpl does not initialize TEZ\_TASK\_PROGRESS\_STUCK\_INTERVAL\_MS correctly |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3559](https://issues.apache.org/jira/browse/TEZ-3559) | TEZ\_LIB\_URIS doesn't work with schemes different than the defaultFS |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3568](https://issues.apache.org/jira/browse/TEZ-3568) | Update SecurityUtils configuration to pick user provided configuration. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3566](https://issues.apache.org/jira/browse/TEZ-3566) | OOM because of too many DFSClient instances in TokenCache.obtainTokensForFileSystems |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3574](https://issues.apache.org/jira/browse/TEZ-3574) | Container reuse won't pickup extra dag level local resource |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3462](https://issues.apache.org/jira/browse/TEZ-3462) | Task attempt failure during container shutdown loses useful container diagnostics |  Major | . | Jason Lowe | Eric Badger |
| [TEZ-3582](https://issues.apache.org/jira/browse/TEZ-3582) | Exception swallowed in PipelinedSorter causing incorrect results |  Blocker | . | Travis Woodruff | Rajesh Balamohan |
| [TEZ-3601](https://issues.apache.org/jira/browse/TEZ-3601) | Add another HistoryLogLevel to suppress TaskAttempts at specific levels |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3244](https://issues.apache.org/jira/browse/TEZ-3244) | Allow overlap of input and output memory when they are not concurrent |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3609](https://issues.apache.org/jira/browse/TEZ-3609) | Improve ATSv15 performance for DAG entities read calls. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3550](https://issues.apache.org/jira/browse/TEZ-3550) | DagClient does not provide access to AppID/DagID |  Major | . | Jason Dere | Siddharth Seth |
| [TEZ-3643](https://issues.apache.org/jira/browse/TEZ-3643) | Long running AMs can go out of memory due to retained AMContainer instances |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3644](https://issues.apache.org/jira/browse/TEZ-3644) | Cleanup container list stored in AMNode |  Major | . | Siddharth Seth | Siddharth Seth |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3357](https://issues.apache.org/jira/browse/TEZ-3357) | Change TimelineCachePlugin to handle DAG grouping |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3358](https://issues.apache.org/jira/browse/TEZ-3358) | Support using the same TimelineGroupId for multiple DAGs |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3374](https://issues.apache.org/jira/browse/TEZ-3374) | Change TEZ\_HISTORY\_LOGGING\_TIMELINE\_NUM\_DAGS\_PER\_GROUP conf key name. |  Major | . | Harish Jaiprakash | Tsuyoshi Ozawa |
| [TEZ-3359](https://issues.apache.org/jira/browse/TEZ-3359) | Add granular log levels for HistoryLoggingService. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3376](https://issues.apache.org/jira/browse/TEZ-3376) | Fix groupId generation to account for dagId starting with 1. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3000](https://issues.apache.org/jira/browse/TEZ-3000) | Fix TestContainerReuse |  Major | . | Jeff Zhang | Ming Ma |
| [TEZ-3419](https://issues.apache.org/jira/browse/TEZ-3419) | Tez UI: Applications page shows error, for users with only DAG level ACL permission. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3487](https://issues.apache.org/jira/browse/TEZ-3487) | Improvements in travis yml file to get builds to work |  Major | . | darion yaphet | darion yaphet |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3235](https://issues.apache.org/jira/browse/TEZ-3235) | Modify Example TestOrderedWordCount job to test the IPC limit for large dag plans |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |
| [TEZ-3409](https://issues.apache.org/jira/browse/TEZ-3409) | Log dagId along with other information when submitting a dag |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3534](https://issues.apache.org/jira/browse/TEZ-3534) | Differentiate thread names on Fetchers, minor changes to shuffle shutdown code |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3624](https://issues.apache.org/jira/browse/TEZ-3624) | Split multiple calls on the same line in TaskCommunicatorContextImpl |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3651](https://issues.apache.org/jira/browse/TEZ-3651) | Changes for 0.8.5 release |  Major | . | Siddharth Seth | Siddharth Seth |


