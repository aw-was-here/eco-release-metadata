
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

## Release 0.9.0 - Unreleased (as of 2016-07-29)



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3258](https://issues.apache.org/jira/browse/TEZ-3258) | Jvm Checker does not ignore DisableExplicitGC when checking JVM GC options |  Major | . | Fengdong Yu | Fengdong Yu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3206](https://issues.apache.org/jira/browse/TEZ-3206) | Have unordered partitioned KV output send partition stats via VertexManagerEvent |  Major | . | Ming Ma | Ming Ma |
| [TEZ-909](https://issues.apache.org/jira/browse/TEZ-909) | Provide support for application tags |  Major | . | Rohini Palaniswamy | Eric Badger |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3242](https://issues.apache.org/jira/browse/TEZ-3242) | Reduce bytearray copy with TezEvent Serialization and deserialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-3246](https://issues.apache.org/jira/browse/TEZ-3246) | Improve diagnostics when DAG killed by user |  Major | . | Jason Lowe | Eric Badger |
| [TEZ-3240](https://issues.apache.org/jira/browse/TEZ-3240) | Improvements to tez.lib.uris to allow for multiple tarballs and mixing tarballs and jars. |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3216](https://issues.apache.org/jira/browse/TEZ-3216) | Support for more precise partition stats in VertexManagerEvent |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3302](https://issues.apache.org/jira/browse/TEZ-3302) | Add a version of processorContext.waitForAllInputsReady and waitForAnyInputReady with a timeout |  Major | . | Siddharth Seth | Tsuyoshi Ozawa |
| [TEZ-3308](https://issues.apache.org/jira/browse/TEZ-3308) | Add counters to capture input split length. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3291](https://issues.apache.org/jira/browse/TEZ-3291) | Optimize splits grouping when locality information is not available |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3327](https://issues.apache.org/jira/browse/TEZ-3327) | ATS Parser: Populate config details available in dag |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1248](https://issues.apache.org/jira/browse/TEZ-1248) | Reduce slow-start should special case 1 reducer runs |  Critical | . | Gopal V | Zhiyuan Yang |
| [TEZ-3303](https://issues.apache.org/jira/browse/TEZ-3303) | Have ShuffleVertexManager consume more precise partition stats |  Major | . | Ming Ma | Tsuyoshi Ozawa |
| [TEZ-3370](https://issues.apache.org/jira/browse/TEZ-3370) | Tez UI: Display the log link as N/A if the app does not provide a log link |  Major | . | Siddharth Seth | Sreenath Somarajapuram |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3219](https://issues.apache.org/jira/browse/TEZ-3219) | Allow service plugins to define log locations link for remotely run task attempts |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3227](https://issues.apache.org/jira/browse/TEZ-3227) | Tez UI: Replace UI1 with UI2 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3232](https://issues.apache.org/jira/browse/TEZ-3232) | Disable randomFailingInputs in testFaulttolerance to unblock other tests |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3207](https://issues.apache.org/jira/browse/TEZ-3207) | Add support for fetching multiple partitions from the same source task to UnorderedKVInput |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3203](https://issues.apache.org/jira/browse/TEZ-3203) | DAG hangs when one of the upstream vertices has zero tasks |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3233](https://issues.apache.org/jira/browse/TEZ-3233) | Tez UI: Have LLAP information reflect in Tez UI |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3193](https://issues.apache.org/jira/browse/TEZ-3193) | Deadlock in AM during task commit request |  Blocker | . | Jason Lowe | Jason Lowe |
| [TEZ-3245](https://issues.apache.org/jira/browse/TEZ-3245) | Data race between addKnowInput and clearAndGetOnepartition of InputHost |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3250](https://issues.apache.org/jira/browse/TEZ-3250) | TezTaskRunner2 should accept ExecutorService |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3251](https://issues.apache.org/jira/browse/TEZ-3251) | Allow ability to add custom counters to TaskRunner2Callable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3256](https://issues.apache.org/jira/browse/TEZ-3256) | [Backport HADOOP-11032] Remove Guava Stopwatch dependency |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3254](https://issues.apache.org/jira/browse/TEZ-3254) | Tez UI: Consider downloading Hive/Pig explain plans |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3255](https://issues.apache.org/jira/browse/TEZ-3255) | Tez UI: Hide swimlane while displaying running DAGs from old versions of Tez |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3259](https://issues.apache.org/jira/browse/TEZ-3259) | Tez UI: Build issue - File saver package is not working well with bower |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3237](https://issues.apache.org/jira/browse/TEZ-3237) | Corrupted shuffle transfers to disk are not detected during transfer |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3262](https://issues.apache.org/jira/browse/TEZ-3262) | Tez UI : zip.js is not having a bower friendly versioning system |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3257](https://issues.apache.org/jira/browse/TEZ-3257) | Flaky TestUnorderedPartitionedKVWriter |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3280](https://issues.apache.org/jira/browse/TEZ-3280) | LOG MRInputHelpers split generation message as INFO |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3276](https://issues.apache.org/jira/browse/TEZ-3276) | Tez Example MRRSleep job fails when tez.staging-dir fs is not same as default FS |  Major | . | Sushmitha Sreenivasan | Harish Jaiprakash |
| [TEZ-3281](https://issues.apache.org/jira/browse/TEZ-3281) | Tez UI: Swimlane improvements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3289](https://issues.apache.org/jira/browse/TEZ-3289) | Tez Example MRRSleep job does not set Staging dir correctly on secure cluster |  Major | . | Sushmitha Sreenivasan | Harish Jaiprakash |
| [TEZ-3264](https://issues.apache.org/jira/browse/TEZ-3264) | Tez UI: UI discrepancies |  Minor | UI | Zhiyuan Yang | Sreenath Somarajapuram |
| [TEZ-2846](https://issues.apache.org/jira/browse/TEZ-2846) | Flaky test: TestCommit.testVertexCommit\_OnDAGSuccess |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3292](https://issues.apache.org/jira/browse/TEZ-3292) | Tez UI: UTs breaking with timezone change |  Blocker | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3290](https://issues.apache.org/jira/browse/TEZ-3290) | Set full task attempt id string in configuration object |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3295](https://issues.apache.org/jira/browse/TEZ-3295) | TestOrderedWordCount should handle relative input/output paths |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |
| [TEZ-3298](https://issues.apache.org/jira/browse/TEZ-3298) | Tez fails to compile against hadoop 2.8 after MAPREDUCE-5870 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3294](https://issues.apache.org/jira/browse/TEZ-3294) | DAG.createDag() does not clear local state on repeat calls |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3296](https://issues.apache.org/jira/browse/TEZ-3296) | Tez job can hang if two vertices at the same root distance have different task requirements |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3304](https://issues.apache.org/jira/browse/TEZ-3304) | TestHistoryParser fails with Hadoop 2.7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3305](https://issues.apache.org/jira/browse/TEZ-3305) | TestAnalyzer fails on Hadoop 2.7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3288](https://issues.apache.org/jira/browse/TEZ-3288) | Tez UI: Display more details in the error bar |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3314](https://issues.apache.org/jira/browse/TEZ-3314) | Double counting input bytes in MultiMRInput |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3293](https://issues.apache.org/jira/browse/TEZ-3293) | Fetch failures can cause a shuffle hang waiting for memory merge that never starts |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3286](https://issues.apache.org/jira/browse/TEZ-3286) | Allow clients to set processor reserved memory per vertex (instead of per container) |  Major | . | Wei Zheng | Hitesh Shah |
| [TEZ-3313](https://issues.apache.org/jira/browse/TEZ-3313) | ATSFileParser : Wrong args passed in VersionInfo |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3318](https://issues.apache.org/jira/browse/TEZ-3318) | Tez UI: Polling is not restarted after RM recovery |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3223](https://issues.apache.org/jira/browse/TEZ-3223) | Support a NullHistoryLogger to disable history logging if needed. |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3325](https://issues.apache.org/jira/browse/TEZ-3325) | Flaky test in TestDAGImpl.testCounterLimits |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3329](https://issues.apache.org/jira/browse/TEZ-3329) | Tez ATS data is incomplete for a vertex which fails or gets killed before initialization |  Critical | . | Sushmitha Sreenivasan | Sreenath Somarajapuram |
| [TEZ-3337](https://issues.apache.org/jira/browse/TEZ-3337) | Do not log empty fields of TaskAttemptFinishedEvent to avoid confusion |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3356](https://issues.apache.org/jira/browse/TEZ-3356) | Fix initializing of stats when custom ShuffleVertexManager is used |  Major | . | Peter Slawski | Peter Slawski |
| [TEZ-3348](https://issues.apache.org/jira/browse/TEZ-3348) | NullPointerException in Tez MROutput while trying to write using Parquet's DeprecatedParquetOutputFormat |  Major | . | Piyush Narang | Piyush Narang |
| [TEZ-3333](https://issues.apache.org/jira/browse/TEZ-3333) | Tez UI: Handle cases where Vertex/Task/Task Attempt data is missing |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3379](https://issues.apache.org/jira/browse/TEZ-3379) | Tez analyzer: Move sysout to log4j |  Trivial | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3382](https://issues.apache.org/jira/browse/TEZ-3382) | Tez analyzer: Should be resilient to new counters |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3384](https://issues.apache.org/jira/browse/TEZ-3384) | Fix TestATSV15HistoryLoggingService::testDAGGroupingGroupingEnabled unit test |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3086](https://issues.apache.org/jira/browse/TEZ-3086) | Tez UI: Backward compatibility changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3063](https://issues.apache.org/jira/browse/TEZ-3063) | Tez UI : Display Input, Output, Processor, Source and Sink configurations under a vertex |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3357](https://issues.apache.org/jira/browse/TEZ-3357) | Change TimelineCachePlugin to handle DAG grouping |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3358](https://issues.apache.org/jira/browse/TEZ-3358) | Support using the same TimelineGroupId for multiple DAGs |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3374](https://issues.apache.org/jira/browse/TEZ-3374) | Change TEZ\_HISTORY\_LOGGING\_TIMELINE\_NUM\_DAGS\_PER\_GROUP conf key name. |  Major | . | Harish Jaiprakash | Tsuyoshi Ozawa |
| [TEZ-3359](https://issues.apache.org/jira/browse/TEZ-3359) | Add granular log levels for HistoryLoggingService. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3376](https://issues.apache.org/jira/browse/TEZ-3376) | Fix groupId generation to account for dagId starting with 1. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3228](https://issues.apache.org/jira/browse/TEZ-3228) | Update version in master to 0.9.0 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3323](https://issues.apache.org/jira/browse/TEZ-3323) | Update license and Notice for xml-apis, update year |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3235](https://issues.apache.org/jira/browse/TEZ-3235) | Modify Example TestOrderedWordCount job to test the IPC limit for large dag plans |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |


