
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

## Release 0.9.0 - 2017-07-28



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3258](https://issues.apache.org/jira/browse/TEZ-3258) | Jvm Checker does not ignore DisableExplicitGC when checking JVM GC options |  Major | . | Fengdong Yu | Fengdong Yu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3206](https://issues.apache.org/jira/browse/TEZ-3206) | Have unordered partitioned KV output send partition stats via VertexManagerEvent |  Major | . | Ming Ma | Ming Ma |
| [TEZ-909](https://issues.apache.org/jira/browse/TEZ-909) | Provide support for application tags |  Major | . | Rohini Palaniswamy | Eric Badger |
| [TEZ-3466](https://issues.apache.org/jira/browse/TEZ-3466) | Tez classpath building to mimic mapreduce classpath building |  Major | . | Jonathan Turner Eagles | Jason Darrell Lowe |
| [TEZ-3271](https://issues.apache.org/jira/browse/TEZ-3271) | Provide mapreduce failures.maxpercent equivalent |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3334](https://issues.apache.org/jira/browse/TEZ-3334) | Tez Custom Shuffle Handler |  Major | . | Jonathan Turner Eagles |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3242](https://issues.apache.org/jira/browse/TEZ-3242) | Reduce bytearray copy with TezEvent Serialization and deserialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-3246](https://issues.apache.org/jira/browse/TEZ-3246) | Improve diagnostics when DAG killed by user |  Major | . | Jason Darrell Lowe | Eric Badger |
| [TEZ-3240](https://issues.apache.org/jira/browse/TEZ-3240) | Improvements to tez.lib.uris to allow for multiple tarballs and mixing tarballs and jars. |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3216](https://issues.apache.org/jira/browse/TEZ-3216) | Support for more precise partition stats in VertexManagerEvent |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3302](https://issues.apache.org/jira/browse/TEZ-3302) | Add a version of processorContext.waitForAllInputsReady and waitForAnyInputReady with a timeout |  Major | . | Siddharth Seth | Tsuyoshi Ozawa |
| [TEZ-3308](https://issues.apache.org/jira/browse/TEZ-3308) | Add counters to capture input split length. |  Major | . | Harish JP | Harish JP |
| [TEZ-3291](https://issues.apache.org/jira/browse/TEZ-3291) | Optimize splits grouping when locality information is not available |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3327](https://issues.apache.org/jira/browse/TEZ-3327) | ATS Parser: Populate config details available in dag |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1248](https://issues.apache.org/jira/browse/TEZ-1248) | Reduce slow-start should special case 1 reducer runs |  Critical | . | Gopal Vijayaraghavan | Zhiyuan Yang |
| [TEZ-3303](https://issues.apache.org/jira/browse/TEZ-3303) | Have ShuffleVertexManager consume more precise partition stats |  Major | . | Ming Ma | Tsuyoshi Ozawa |
| [TEZ-3370](https://issues.apache.org/jira/browse/TEZ-3370) | Tez UI: Display the log link as N/A if the app does not provide a log link |  Major | . | Siddharth Seth | Sreenath Somarajapuram |
| [TEZ-3326](https://issues.apache.org/jira/browse/TEZ-3326) | Display JVM system properties in AM and task logs |  Major | . | Ming Ma | Eric Badger |
| [TEZ-3272](https://issues.apache.org/jira/browse/TEZ-3272) | Add AMContainerImpl and AMNodeImpl to StateMachine visualization list |  Major | . | Ming Ma | Tsuyoshi Ozawa |
| [TEZ-3404](https://issues.apache.org/jira/browse/TEZ-3404) | Move blocking call for YARN Timeline domain creation from client side to AM |  Major | . | Harish JP | Harish JP |
| [TEZ-3317](https://issues.apache.org/jira/browse/TEZ-3317) | Speculative execution starts too early due to 0 progress |  Major | . | Jonathan Turner Eagles | Kuhu Shukla |
| [TEZ-3436](https://issues.apache.org/jira/browse/TEZ-3436) | Check input and output count before start in MapProcessor |  Minor | . | darion yaphet | darion yaphet |
| [TEZ-3430](https://issues.apache.org/jira/browse/TEZ-3430) | Make split sorting optional |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3215](https://issues.apache.org/jira/browse/TEZ-3215) | Support for MultipleOutputs |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3505](https://issues.apache.org/jira/browse/TEZ-3505) | Move license to the file header for TezBytesWritableSerialization |  Major | . | darion yaphet | darion yaphet |
| [TEZ-3547](https://issues.apache.org/jira/browse/TEZ-3547) | Add TaskAssignment Analyzer |  Major | . | Dharmesh Kakadia | Dharmesh Kakadia |
| [TEZ-3552](https://issues.apache.org/jira/browse/TEZ-3552) | Shuffle split array when size-based sorting is turned off |  Major | . | Ming Ma | Zhiyuan Yang |
| [TEZ-3551](https://issues.apache.org/jira/browse/TEZ-3551) | FrameworkClient created twice causing minor delay |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3443](https://issues.apache.org/jira/browse/TEZ-3443) | Remove a repeated method |  Minor | . | darion yaphet | darion yaphet |
| [TEZ-3496](https://issues.apache.org/jira/browse/TEZ-3496) | Tez UI: Optimize display of all tasks table |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2712](https://issues.apache.org/jira/browse/TEZ-2712) | Tez UI: Display the vertex description in the tooltip of vertex in DAG view UI |  Major | . | Rohini Palaniswamy | Sreenath Somarajapuram |
| [TEZ-3494](https://issues.apache.org/jira/browse/TEZ-3494) | Support relative url for tez-ui.history-url.base config |  Major | . | Ran Zhao | Hitesh Shah |
| [TEZ-3554](https://issues.apache.org/jira/browse/TEZ-3554) | Add a link to get to all logs from Tez UI while job is running |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3634](https://issues.apache.org/jira/browse/TEZ-3634) | reduce the buffer sizes in PipelinedSorter by a small amount |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3650](https://issues.apache.org/jira/browse/TEZ-3650) | Improve performance of FetchStatsLogger#logIndividualFetchComplete |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-1526](https://issues.apache.org/jira/browse/TEZ-1526) | LoadingCache for TezTaskID slow for large jobs |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3680](https://issues.apache.org/jira/browse/TEZ-3680) | Optimizations to UnorderedPartitionedKVWriter |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3673](https://issues.apache.org/jira/browse/TEZ-3673) | Allocate smaller buffers in UnorderedPartitionedKVWriter |  Major | . | Harish JP | Harish JP |
| [TEZ-3715](https://issues.apache.org/jira/browse/TEZ-3715) | Differentiate between TaskAttempt submission and TaskAttempt started |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3007](https://issues.apache.org/jira/browse/TEZ-3007) | Use AppFinalState.ENDED when unregistering with the RM in session mode |  Major | . | Siddharth Seth | Harish JP |
| [TEZ-3747](https://issues.apache.org/jira/browse/TEZ-3747) | TezConstants.TEZ\_SHUFFLE\_HANDLER\_SERVICE\_ID is referenced in Hive |  Minor | . | Rajesh Balamohan | Kuhu Shukla |
| [TEZ-3794](https://issues.apache.org/jira/browse/TEZ-3794) | tez-tools: swimlane does not recognize "HistoryEventHandler.criticalEvents" based logs |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3219](https://issues.apache.org/jira/browse/TEZ-3219) | Allow service plugins to define log locations link for remotely run task attempts |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3227](https://issues.apache.org/jira/browse/TEZ-3227) | Tez UI: Replace UI1 with UI2 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3232](https://issues.apache.org/jira/browse/TEZ-3232) | Disable randomFailingInputs in testFaulttolerance to unblock other tests |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3207](https://issues.apache.org/jira/browse/TEZ-3207) | Add support for fetching multiple partitions from the same source task to UnorderedKVInput |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3203](https://issues.apache.org/jira/browse/TEZ-3203) | DAG hangs when one of the upstream vertices has zero tasks |  Critical | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3233](https://issues.apache.org/jira/browse/TEZ-3233) | Tez UI: Have LLAP information reflect in Tez UI |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3193](https://issues.apache.org/jira/browse/TEZ-3193) | Deadlock in AM during task commit request |  Blocker | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3245](https://issues.apache.org/jira/browse/TEZ-3245) | Race condition between addKnowInput and clearAndGetOnepartition of InputHost |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3250](https://issues.apache.org/jira/browse/TEZ-3250) | TezTaskRunner2 should accept ExecutorService |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3251](https://issues.apache.org/jira/browse/TEZ-3251) | Allow ability to add custom counters to TaskRunner2Callable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3256](https://issues.apache.org/jira/browse/TEZ-3256) | [Backport HADOOP-11032] Remove Guava Stopwatch dependency |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3254](https://issues.apache.org/jira/browse/TEZ-3254) | Tez UI: Consider downloading Hive/Pig explain plans |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3255](https://issues.apache.org/jira/browse/TEZ-3255) | Tez UI: Hide swimlane while displaying running DAGs from old versions of Tez |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3259](https://issues.apache.org/jira/browse/TEZ-3259) | Tez UI: Build issue - File saver package is not working well with bower |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3237](https://issues.apache.org/jira/browse/TEZ-3237) | Corrupted shuffle transfers to disk are not detected during transfer |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3262](https://issues.apache.org/jira/browse/TEZ-3262) | Tez UI : zip.js is not having a bower friendly versioning system |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3257](https://issues.apache.org/jira/browse/TEZ-3257) | Flaky TestUnorderedPartitionedKVWriter |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3280](https://issues.apache.org/jira/browse/TEZ-3280) | LOG MRInputHelpers split generation message as INFO |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3276](https://issues.apache.org/jira/browse/TEZ-3276) | Tez Example MRRSleep job fails when tez.staging-dir fs is not same as default FS |  Major | . | Sushmitha Sreenivasan | Harish JP |
| [TEZ-3281](https://issues.apache.org/jira/browse/TEZ-3281) | Tez UI: Swimlane improvements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3289](https://issues.apache.org/jira/browse/TEZ-3289) | Tez Example MRRSleep job does not set Staging dir correctly on secure cluster |  Major | . | Sushmitha Sreenivasan | Harish JP |
| [TEZ-3264](https://issues.apache.org/jira/browse/TEZ-3264) | Tez UI: UI discrepancies |  Minor | UI | Zhiyuan Yang | Sreenath Somarajapuram |
| [TEZ-2846](https://issues.apache.org/jira/browse/TEZ-2846) | Flaky test: TestCommit.testVertexCommit\_OnDAGSuccess |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3292](https://issues.apache.org/jira/browse/TEZ-3292) | Tez UI: UTs breaking with timezone change |  Blocker | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3290](https://issues.apache.org/jira/browse/TEZ-3290) | Set full task attempt id string in configuration object |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3295](https://issues.apache.org/jira/browse/TEZ-3295) | TestOrderedWordCount should handle relative input/output paths |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |
| [TEZ-3298](https://issues.apache.org/jira/browse/TEZ-3298) | Tez fails to compile against hadoop 2.8 after MAPREDUCE-5870 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3297](https://issues.apache.org/jira/browse/TEZ-3297) | Deadlock scenario in AM during ShuffleVertexManager auto reduce |  Critical | . | Zhiyuan Yang | Rajesh Balamohan |
| [TEZ-3294](https://issues.apache.org/jira/browse/TEZ-3294) | DAG.createDag() does not clear local state on repeat calls |  Major | . | Harish JP | Harish JP |
| [TEZ-3296](https://issues.apache.org/jira/browse/TEZ-3296) | Tez job can hang if two vertices at the same root distance have different task requirements |  Critical | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3304](https://issues.apache.org/jira/browse/TEZ-3304) | TestHistoryParser fails with Hadoop 2.7 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3305](https://issues.apache.org/jira/browse/TEZ-3305) | TestAnalyzer fails on Hadoop 2.7 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3288](https://issues.apache.org/jira/browse/TEZ-3288) | Tez UI: Display more details in the error bar |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3314](https://issues.apache.org/jira/browse/TEZ-3314) | Double counting input bytes in MultiMRInput |  Major | . | Harish JP | Harish JP |
| [TEZ-3293](https://issues.apache.org/jira/browse/TEZ-3293) | Fetch failures can cause a shuffle hang waiting for memory merge that never starts |  Critical | . | Jason Darrell Lowe | Jason Darrell Lowe |
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
| [TEZ-3398](https://issues.apache.org/jira/browse/TEZ-3398) | Tez UI: Bread crumb link to Application from Application details dag/configuration tab is broken |  Critical | . | Sushmitha Sreenivasan | Sreenath Somarajapuram |
| [TEZ-3352](https://issues.apache.org/jira/browse/TEZ-3352) | MRInputHelpers getStringProperty() should not fail if property value is null |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3413](https://issues.apache.org/jira/browse/TEZ-3413) | ConcurrentModificationException in HistoryEventTimelineConversion for AppLaunchedEvent |  Blocker | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-2852](https://issues.apache.org/jira/browse/TEZ-2852) | TestVertexImpl fails due to race in AsyncDispatcher |  Critical | . | Jeff Zhang | Zhiyuan Yang |
| [TEZ-3009](https://issues.apache.org/jira/browse/TEZ-3009) | Errors that occur during container task acquisition are not logged |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3426](https://issues.apache.org/jira/browse/TEZ-3426) | Second AM attempt launched for session mode and recovery disabled for certain cases |  Critical | . | Jonathan Turner Eagles | Jason Darrell Lowe |
| [TEZ-3284](https://issues.apache.org/jira/browse/TEZ-3284) | Synchronization for every write in UnorderdKVWriter |  Critical | . | Gopal Vijayaraghavan | Jonathan Turner Eagles |
| [TEZ-3434](https://issues.apache.org/jira/browse/TEZ-3434) | Add unit tests for flushing of recovery events |  Major | . | Harish JP | Harish JP |
| [TEZ-3163](https://issues.apache.org/jira/browse/TEZ-3163) | Reuse and tune Inflaters and Deflaters to speed DME processing |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3442](https://issues.apache.org/jira/browse/TEZ-3442) | Flaky test: TestMapProcessor::testMapProcessorProgress |  Major | . | Hitesh Shah | Kuhu Shukla |
| [TEZ-3429](https://issues.apache.org/jira/browse/TEZ-3429) | Set reconfigureDoneTime on VertexConfigurationDoneEvent properly |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3433](https://issues.apache.org/jira/browse/TEZ-3433) | Tez UI: Searching using wrong ID causes error in all DAGs page |  Major | . | Sreenath Somarajapuram | Sushmitha Sreenivasan |
| [TEZ-3440](https://issues.apache.org/jira/browse/TEZ-3440) | Shuffling to memory can get out-of-sync when fetching multiple compressed map outputs |  Major | . | Nathan Roberts | Nathan Roberts |
| [TEZ-3460](https://issues.apache.org/jira/browse/TEZ-3460) | Tez Precommit Release audit warning |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3437](https://issues.apache.org/jira/browse/TEZ-3437) | Improve synchronization and the progress report behavior for Inputs from TEZ-3317 |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3368](https://issues.apache.org/jira/browse/TEZ-3368) | NPE in DelayedContainerManager |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3335](https://issues.apache.org/jira/browse/TEZ-3335) | DAG client thinks app is still running when app status is null |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3330](https://issues.apache.org/jira/browse/TEZ-3330) | Propagate additional config parameters when running MR jobs via Tez. |  Major | . | Manuel Godbert | Siddharth Seth |
| [TEZ-3464](https://issues.apache.org/jira/browse/TEZ-3464) | Fix findbugs warnings in tez-dag mainLoop |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3449](https://issues.apache.org/jira/browse/TEZ-3449) | Fix Spelling typos |  Minor | . | darion yaphet | darion yaphet |
| [TEZ-3453](https://issues.apache.org/jira/browse/TEZ-3453) | Correct the downloaded ATS dag data location for analyzer |  Minor | . | Dharmesh Kakadia |  |
| [TEZ-3428](https://issues.apache.org/jira/browse/TEZ-3428) | Tez UI: First Tab not needed for few entries in DAG listings |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3106](https://issues.apache.org/jira/browse/TEZ-3106) | Tez UI 2 - Features Umbrella |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3469](https://issues.apache.org/jira/browse/TEZ-3469) | Tez UI: Bump Phantom JS version to 2.1.1 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3439](https://issues.apache.org/jira/browse/TEZ-3439) | Tez joinvalidate fails when first input argument size is bigger than the second |  Major | . | Hui Cao | Hui Cao |
| [TEZ-3452](https://issues.apache.org/jira/browse/TEZ-3452) | Auto-reduce parallelism calculation can overflow with large inputs |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3483](https://issues.apache.org/jira/browse/TEZ-3483) | Create basic travis yml file for Tez |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3405](https://issues.apache.org/jira/browse/TEZ-3405) | Support ability for AM to kill itself if there is no client heartbeating to it |  Critical | . | Gunther Hagleitner | Hitesh Shah |
| [TEZ-3097](https://issues.apache.org/jira/browse/TEZ-3097) | Flaky test: TestCommit.testDAGCommitStartedEventFail\_OnDAGSuccess |  Major | . | Jeff Zhang | Harish JP |
| [TEZ-3457](https://issues.apache.org/jira/browse/TEZ-3457) | Add more unit test coverage for container reuse. |  Major | . | Harish JP | Harish JP |
| [TEZ-3470](https://issues.apache.org/jira/browse/TEZ-3470) | Tez UI: Make the build work in IBM PPC |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3502](https://issues.apache.org/jira/browse/TEZ-3502) | Tez UI: Search in All DAGs page doesn't work with numeric values |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3486](https://issues.apache.org/jira/browse/TEZ-3486) | COMBINE\_OUTPUT\_RECORDS/COMBINE\_INPUT\_RECORDS are not correct |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3493](https://issues.apache.org/jira/browse/TEZ-3493) | DAG submit timeout cannot be set to a month |  Minor | . | Siddharth Seth | Hitesh Shah |
| [TEZ-3477](https://issues.apache.org/jira/browse/TEZ-3477) | MRInputHelpers generateInputSplitsToMem public API modified |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3533](https://issues.apache.org/jira/browse/TEZ-3533) | ShuffleScheduler should shutdown threadpool on exit |  Critical | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3491](https://issues.apache.org/jira/browse/TEZ-3491) | Tez job can hang due to container priority inversion |  Critical | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3536](https://issues.apache.org/jira/browse/TEZ-3536) | NPE in WebUIService start when host resolution fails. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3546](https://issues.apache.org/jira/browse/TEZ-3546) | Tez UI: On sorting asc - Not Available must be at the top. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3222](https://issues.apache.org/jira/browse/TEZ-3222) | Reduce messaging overhead for auto-reduce parallelism case |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3537](https://issues.apache.org/jira/browse/TEZ-3537) | ArrayIndexOutOfBoundsException with empty environment variables/Port YARN-3768 to Tez |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3549](https://issues.apache.org/jira/browse/TEZ-3549) | TaskAttemptImpl does not initialize TEZ\_TASK\_PROGRESS\_STUCK\_INTERVAL\_MS correctly |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3558](https://issues.apache.org/jira/browse/TEZ-3558) | CartesianProduct is missing from the ExampleDriver class |  Minor | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |
| [TEZ-3559](https://issues.apache.org/jira/browse/TEZ-3559) | TEZ\_LIB\_URIS doesn't work with schemes different than the defaultFS |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3565](https://issues.apache.org/jira/browse/TEZ-3565) | amConfig should check queuename isEmpty |  Major | . | Hui Fei | Hui Fei |
| [TEZ-3555](https://issues.apache.org/jira/browse/TEZ-3555) | Tez UI: Build is failing in RHEL6 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3561](https://issues.apache.org/jira/browse/TEZ-3561) | Fix wrong tez tarball name in install.md |  Minor | . | Akira Ajisaka | Akira Ajisaka |
| [TEZ-3570](https://issues.apache.org/jira/browse/TEZ-3570) | Tez UI: Wait for sometime before tooltips are displayed |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3504](https://issues.apache.org/jira/browse/TEZ-3504) | Tez UI: Duration is displaying invalid values when start or end time is invalid |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3568](https://issues.apache.org/jira/browse/TEZ-3568) | Update SecurityUtils configuration to pick user provided configuration. |  Major | . | Harish JP | Harish JP |
| [TEZ-3566](https://issues.apache.org/jira/browse/TEZ-3566) | OOM because of too many DFSClient instances in TokenCache.obtainTokensForFileSystems |  Major | . | Harish JP | Harish JP |
| [TEZ-3574](https://issues.apache.org/jira/browse/TEZ-3574) | Container reuse won't pickup extra dag level local resource |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3529](https://issues.apache.org/jira/browse/TEZ-3529) | Tez UI: Add 'All Queries' table in the landing page along 'All DAGs' page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3530](https://issues.apache.org/jira/browse/TEZ-3530) | Tez UI: Add query details page, and link the page from All Queries table |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3531](https://issues.apache.org/jira/browse/TEZ-3531) | Tez UI: All Queries table: Improve searchability |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3556](https://issues.apache.org/jira/browse/TEZ-3556) | Tez UI: Display query configurations |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3571](https://issues.apache.org/jira/browse/TEZ-3571) | Tez UI: Display a Total Timeline View for Hive Queries |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3583](https://issues.apache.org/jira/browse/TEZ-3583) | Tez UI: UTs are flaky because of a dependency issue |  Critical | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3462](https://issues.apache.org/jira/browse/TEZ-3462) | Task attempt failure during container shutdown loses useful container diagnostics |  Major | . | Jason Darrell Lowe | Eric Badger |
| [TEZ-3584](https://issues.apache.org/jira/browse/TEZ-3584) | amKeepAliveService in TezClient should shutdown in case of AM failure |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3580](https://issues.apache.org/jira/browse/TEZ-3580) | Tez UI: Pagination broken on queries page |  Critical | UI | Siddharth Seth | Sreenath Somarajapuram |
| [TEZ-3582](https://issues.apache.org/jira/browse/TEZ-3582) | Exception swallowed in PipelinedSorter causing incorrect results |  Blocker | . | Travis Woodruff | Rajesh Balamohan |
| [TEZ-3575](https://issues.apache.org/jira/browse/TEZ-3575) | RM have started forwarding origin. Use that in AMWebController for CORS support |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3417](https://issues.apache.org/jira/browse/TEZ-3417) | Reduce sleep time on AM shutdown to reduce test runtimes |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3589](https://issues.apache.org/jira/browse/TEZ-3589) | add a unit test for amKeepAlive not being shutdown if an app takes a long time to launch |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3591](https://issues.apache.org/jira/browse/TEZ-3591) | Tez UI: Logs url in all DAGs doesn't open in a new window |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3592](https://issues.apache.org/jira/browse/TEZ-3592) | Tez UI: Search issues |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3593](https://issues.apache.org/jira/browse/TEZ-3593) | Tez UI: Issues in timeline page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3594](https://issues.apache.org/jira/browse/TEZ-3594) | Tez UI: Graphical view tooltip issues |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3598](https://issues.apache.org/jira/browse/TEZ-3598) | Tez UI: Text formatting changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3601](https://issues.apache.org/jira/browse/TEZ-3601) | Add another HistoryLogLevel to suppress TaskAttempts at specific levels |  Major | . | Harish JP | Harish JP |
| [TEZ-3581](https://issues.apache.org/jira/browse/TEZ-3581) | Add different logger to enable suppressing logs for specific lines. |  Major | . | Harish JP | Harish JP |
| [TEZ-3602](https://issues.apache.org/jira/browse/TEZ-3602) | Tez UI: Query Name field is not required |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3244](https://issues.apache.org/jira/browse/TEZ-3244) | Allow overlap of input and output memory when they are not concurrent |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3609](https://issues.apache.org/jira/browse/TEZ-3609) | Improve ATSv15 performance for DAG entities read calls. |  Major | . | Harish JP | Harish JP |
| [TEZ-3267](https://issues.apache.org/jira/browse/TEZ-3267) | Publish queue name to ATS as part of dag summary |  Major | . | Harish JP | Harish JP |
| [TEZ-3615](https://issues.apache.org/jira/browse/TEZ-3615) | Tez UI: Table changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3550](https://issues.apache.org/jira/browse/TEZ-3550) | DagClient does not provide access to AppID/DagID |  Major | . | Jason Dere | Siddharth Seth |
| [TEZ-3619](https://issues.apache.org/jira/browse/TEZ-3619) | Tez UI: Improve DAG Data download |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3610](https://issues.apache.org/jira/browse/TEZ-3610) | TEZ UI 0.7 0.9 compatibility for url query params and tez-app sub-routes |  Major | UI | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3627](https://issues.apache.org/jira/browse/TEZ-3627) | Use queue name available in RegisterApplicationMasterResponse. |  Major | . | Harish JP | Harish JP |
| [TEZ-3629](https://issues.apache.org/jira/browse/TEZ-3629) | Tez UI: Enable the UI to display log links from LLAP |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3626](https://issues.apache.org/jira/browse/TEZ-3626) | Tez UI: First Task Start Time & Last Task Finish Time values are showing up incorrectly |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3630](https://issues.apache.org/jira/browse/TEZ-3630) | Tez UI: Use DAG status for controlling auto-refresh polling. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3638](https://issues.apache.org/jira/browse/TEZ-3638) | VertexImpl logs too much at info when removing tasks after auto-reduce parallelism |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3637](https://issues.apache.org/jira/browse/TEZ-3637) | TezMerger logs too much at INFO level |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [TEZ-3639](https://issues.apache.org/jira/browse/TEZ-3639) | Tez UI: Footer pagination is improper in landing page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3640](https://issues.apache.org/jira/browse/TEZ-3640) | Tez UI: Add associated llap application id to queries page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3643](https://issues.apache.org/jira/browse/TEZ-3643) | Long running AMs can go out of memory due to retained AMContainer instances |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3646](https://issues.apache.org/jira/browse/TEZ-3646) | IFile.Writer has an extra output stream flush call |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3644](https://issues.apache.org/jira/browse/TEZ-3644) | Cleanup container list stored in AMNode |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3647](https://issues.apache.org/jira/browse/TEZ-3647) | Add a setting which lets Tez determine Xmx |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3649](https://issues.apache.org/jira/browse/TEZ-3649) | AsyncHttpConnection should add StopWatch start |  Major | . | Hui Fei | Hui Fei |
| [TEZ-3648](https://issues.apache.org/jira/browse/TEZ-3648) | IFile.Write#close has an extra output stream flush |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3642](https://issues.apache.org/jira/browse/TEZ-3642) | Tez UI: Auto-refresh is not stopping when DAG is the main entity |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3503](https://issues.apache.org/jira/browse/TEZ-3503) | Tez UI: Support search by queue name |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3656](https://issues.apache.org/jira/browse/TEZ-3656) | Tez UI: Status correction is not working as expected |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3659](https://issues.apache.org/jira/browse/TEZ-3659) | AM/Task classpath should not contain hadoop conf directory. |  Major | . | Harish JP | Harish JP |
| [TEZ-3672](https://issues.apache.org/jira/browse/TEZ-3672) | Remove duplicate Apache license headers |  Trivial | . | Saijin Huang | Saijin Huang |
| [TEZ-3671](https://issues.apache.org/jira/browse/TEZ-3671) | TestCompositeDataMovementEvent has a misplaced Apache license header |  Minor | . | Saijin Huang | Saijin Huang |
| [TEZ-3677](https://issues.apache.org/jira/browse/TEZ-3677) | by-laws markdown has an incorrect license header |  Minor | . | Saijin Huang | Saijin Huang |
| [TEZ-3678](https://issues.apache.org/jira/browse/TEZ-3678) | The command "hadoop dfs" should be replaced by "hadoop fs" in install markdown |  Trivial | . | Saijin Huang | Saijin Huang |
| [TEZ-3679](https://issues.apache.org/jira/browse/TEZ-3679) | Minor ASF header issues |  Minor | . | Saijin Huang | Saijin Huang |
| [TEZ-3681](https://issues.apache.org/jira/browse/TEZ-3681) | Improve UI error message while trying to sort running DAGs with Auto Refresh enabled |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3285](https://issues.apache.org/jira/browse/TEZ-3285) | Tez UI: Lock down dependency versions |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3616](https://issues.apache.org/jira/browse/TEZ-3616) | TestMergeManager#testLocalDiskMergeMultipleTasks fails intermittently |  Major | . | Sonia Garudi | Hui Fei |
| [TEZ-3631](https://issues.apache.org/jira/browse/TEZ-3631) | Tez UI: TEZ\_DAG\_EXTRA\_INFO compatibility changes - Makes All DAGs page faster. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3611](https://issues.apache.org/jira/browse/TEZ-3611) | Create lightweight summary events for ATS. |  Major | . | Harish JP | Harish JP |
| [TEZ-3695](https://issues.apache.org/jira/browse/TEZ-3695) | TestTezSharedExecutor fails sporadically |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3699](https://issues.apache.org/jira/browse/TEZ-3699) | For large dataset, pipelined shuffle throws exceptions in consumer side for UnorderedPartitioned edge |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3703](https://issues.apache.org/jira/browse/TEZ-3703) | Use a sha comparison to compare vertex and dag resources, if there is a mismatch |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3707](https://issues.apache.org/jira/browse/TEZ-3707) | TezSharedExecutor race condition in awaitTermination vs isTerminated. |  Major | . | Harish JP | Harish JP |
| [TEZ-3696](https://issues.apache.org/jira/browse/TEZ-3696) | Jobs can hang when both concurrency and speculation are enabled |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3697](https://issues.apache.org/jira/browse/TEZ-3697) | Adding #output\_record in vertex manager event payload |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3700](https://issues.apache.org/jira/browse/TEZ-3700) | Consumer attempt should kill itself instead of failing during validation checks with final merge avoidance |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3717](https://issues.apache.org/jira/browse/TEZ-3717) | tez-yarn-timeline-history-with-fs does not build with hadoop-2.8. |  Major | . | Harish JP | Harish JP |
| [TEZ-3719](https://issues.apache.org/jira/browse/TEZ-3719) | DAGImpl.computeProgress slows down dispatcher and ipc threads |  Major | . | Rajesh Balamohan | Gopal Vijayaraghavan |
| [TEZ-3709](https://issues.apache.org/jira/browse/TEZ-3709) | TezMerger is slow for high number of segments |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3731](https://issues.apache.org/jira/browse/TEZ-3731) | Add committer kshukla to Tez Team List |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3723](https://issues.apache.org/jira/browse/TEZ-3723) | TezIndexRecord#hasData() returns true for empty index record in the Unordered case |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3730](https://issues.apache.org/jira/browse/TEZ-3730) | Lower logging level in UnorderedPartitionedKVWriter |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3662](https://issues.apache.org/jira/browse/TEZ-3662) | Vertex Duration in 0.9 Tez UI regression from 0.7 |  Major | UI | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3737](https://issues.apache.org/jira/browse/TEZ-3737) | FairCartesianProductVertexMananger used incorrect #partition |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3742](https://issues.apache.org/jira/browse/TEZ-3742) | Fix AMContainerHelpers#createCommonContainerLaunchContext to not pass localResources. |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3743](https://issues.apache.org/jira/browse/TEZ-3743) | TestTaskCommunicatorContextImpl throws NullPointerException after TEZ-3334 merge |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3744](https://issues.apache.org/jira/browse/TEZ-3744) | Fix findbugs warnings after TEZ-3334 merge |  Major | . | Jason Darrell Lowe | Kuhu Shukla |
| [TEZ-3736](https://issues.apache.org/jira/browse/TEZ-3736) | SubmittedDAGs is always 0 in Resource Manager UI |  Minor | . | Artem Velykorodnyi | Artem Velykorodnyi |
| [TEZ-3714](https://issues.apache.org/jira/browse/TEZ-3714) | Tez UI: Hive Queries page: Use Dag ID and App ID if they are published form Hive side. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3739](https://issues.apache.org/jira/browse/TEZ-3739) | Fair CartesianProduct doesn't works well with huge difference in output size |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3748](https://issues.apache.org/jira/browse/TEZ-3748) | TaskAttemptImpl State Machine Invalid event: TA\_SUBMITTED at KILL\_IN\_PROGRESS |  Critical | . | Kuhu Shukla | Jonathan Turner Eagles |
| [TEZ-3749](https://issues.apache.org/jira/browse/TEZ-3749) | Get map and reduce task memory from JobConf. |  Minor | . | Harish JP | Harish JP |
| [TEZ-3750](https://issues.apache.org/jira/browse/TEZ-3750) | Add TEZ\_RUNTIME\_UNORDERED\_PARTITIONED\_KVWRITER\_BUFFER\_MERGE\_PERCENT to UnorderedPartitionedKVOutput. |  Major | . | Harish JP | Harish JP |
| [TEZ-3701](https://issues.apache.org/jira/browse/TEZ-3701) | UnorderedPartitionedKVWriter - issues with parallel Deflater usage, synchronousqueue in threadpool |  Blocker | . | Harish JP | Rajesh Balamohan |
| [TEZ-3732](https://issues.apache.org/jira/browse/TEZ-3732) | Reduce Object size of InputAttemptIdentifier and MapOutput for large jobs |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3698](https://issues.apache.org/jira/browse/TEZ-3698) | UnorderedKV writer should be able to honor tez.runtime.enable.final-merge.in.output without pipelinedshuffle |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3741](https://issues.apache.org/jira/browse/TEZ-3741) | Tez outputs should free memory when closed |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3760](https://issues.apache.org/jira/browse/TEZ-3760) | Tez AUX Services: Shading needs to filter SIG files with -Pazure builds |  Blocker | . | Gopal Vijayaraghavan | Kuhu Shukla |
| [TEZ-3766](https://issues.apache.org/jira/browse/TEZ-3766) | Tez Aux-services : Clean up shaded jar to not include default config xml files and yarn-client pieces |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3693](https://issues.apache.org/jira/browse/TEZ-3693) | ControlledClock is not used |  Trivial | . | Jason Darrell Lowe | Muhammad Samir Khan |
| [TEZ-3768](https://issues.apache.org/jira/browse/TEZ-3768) | Test timeout value for TestShuffleHandlerJobs is low |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3758](https://issues.apache.org/jira/browse/TEZ-3758) | Vertex can hang in RUNNING state when two task attempts finish very closely and have retroactive failures |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3761](https://issues.apache.org/jira/browse/TEZ-3761) | NPE in Fetcher under load |  Major | . | Rajesh Balamohan | Jonathan Turner Eagles |
| [TEZ-3762](https://issues.apache.org/jira/browse/TEZ-3762) | When final merge is disabled in unordered case, it should create index file instead of relying on cache |  Major | . | Rajesh Balamohan | Zhiyuan Yang |
| [TEZ-3778](https://issues.apache.org/jira/browse/TEZ-3778) | Remove SecurityInfo from tez-auxservices shaded jar |  Blocker | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3767](https://issues.apache.org/jira/browse/TEZ-3767) | Shuffle should not report error to AM during inputContext.killSelf() |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3777](https://issues.apache.org/jira/browse/TEZ-3777) | Avoid buffer copies by passing RLE flag to TezMerger from PipelinedSorter |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3769](https://issues.apache.org/jira/browse/TEZ-3769) | Unordered: Fix wrong stats being sent out in the last event, when final merge is disabled |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3771](https://issues.apache.org/jira/browse/TEZ-3771) | Tez UI: WASB/ADLS counters should be listed on the Tez UI |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3605](https://issues.apache.org/jira/browse/TEZ-3605) | Detect and prune empty partitions for the Ordered case |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3775](https://issues.apache.org/jira/browse/TEZ-3775) | Tez UI: Show DAG context in document title |  Major | UI | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3274](https://issues.apache.org/jira/browse/TEZ-3274) | Vertex with MRInput and broadcast input does not respect slow start |  Major | . | Jonathan Turner Eagles | Eric Badger |
| [TEZ-3785](https://issues.apache.org/jira/browse/TEZ-3785) | Add Zhiyuan Yang's public key to KEYS |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3687](https://issues.apache.org/jira/browse/TEZ-3687) | Code smell in DAGStatus and VertexStatus equals implementation |  Trivial | . | JC | Akira Ajisaka |
| [TEZ-3784](https://issues.apache.org/jira/browse/TEZ-3784) | Submitting very large DAG throws com.google.protobuf.CodedInputStream exception |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-3786](https://issues.apache.org/jira/browse/TEZ-3786) | Fix Tez UI test failures after TEZ-3775 |  Major | UI | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3791](https://issues.apache.org/jira/browse/TEZ-3791) | Failed/Killed task can throw InvalidStateTransitonException when a new attempt is launched |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3795](https://issues.apache.org/jira/browse/TEZ-3795) | Vertex state machine can throw InvalidStateTransitonException from TERMINATING state |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3792](https://issues.apache.org/jira/browse/TEZ-3792) | RootInputVertexManager doesn't drain queued source task completed events |  Blocker | . | Eric Badger | Eric Badger |
| [TEZ-3798](https://issues.apache.org/jira/browse/TEZ-3798) | Remove duplicate package-info.java |  Blocker | . | Zhiyuan Yang | Zhiyuan Yang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3508](https://issues.apache.org/jira/browse/TEZ-3508) | TestTaskScheduler cleanup |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3086](https://issues.apache.org/jira/browse/TEZ-3086) | Tez UI: Backward compatibility changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3063](https://issues.apache.org/jira/browse/TEZ-3063) | Tez UI : Display Input, Output, Processor, Source and Sink configurations under a vertex |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3357](https://issues.apache.org/jira/browse/TEZ-3357) | Change TimelineCachePlugin to handle DAG grouping |  Major | . | Harish JP | Harish JP |
| [TEZ-3358](https://issues.apache.org/jira/browse/TEZ-3358) | Support using the same TimelineGroupId for multiple DAGs |  Major | . | Harish JP | Harish JP |
| [TEZ-3355](https://issues.apache.org/jira/browse/TEZ-3355) | Tez Custom Shuffle Handler POC |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3374](https://issues.apache.org/jira/browse/TEZ-3374) | Change TEZ\_HISTORY\_LOGGING\_TIMELINE\_NUM\_DAGS\_PER\_GROUP conf key name. |  Major | . | Harish JP | Tsuyoshi Ozawa |
| [TEZ-3359](https://issues.apache.org/jira/browse/TEZ-3359) | Add granular log levels for HistoryLoggingService. |  Major | . | Harish JP | Harish JP |
| [TEZ-3376](https://issues.apache.org/jira/browse/TEZ-3376) | Fix groupId generation to account for dagId starting with 1. |  Major | . | Harish JP | Harish JP |
| [TEZ-3380](https://issues.apache.org/jira/browse/TEZ-3380) | Shuffle Handler: Replace primitive wrapper's valueOf method with parse\* method to avoid unnecessary boxing/unboxing |  Major | . | Jonathan Turner Eagles | Kuhu Shukla |
| [TEZ-3377](https://issues.apache.org/jira/browse/TEZ-3377) | Remove ShuffleHandler dependency on mapred.FadvisedChunkedFile and mapred.FadvisedFileRegion |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3378](https://issues.apache.org/jira/browse/TEZ-3378) | Move Shuffle Handler configuration into the Tez namespace |  Major | . | Jonathan Turner Eagles | Eric Badger |
| [TEZ-3393](https://issues.apache.org/jira/browse/TEZ-3393) | Remove extra jetty dependency from Shuffle Handler |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3390](https://issues.apache.org/jira/browse/TEZ-3390) | Package Shuffle Handler as a shaded uber-jar |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3238](https://issues.apache.org/jira/browse/TEZ-3238) | Shuffle service name should be configureable and should not be hardcoded to ‘mapreduce\_shuffle’ |  Major | . | Rob Leidle | Jonathan Turner Eagles |
| [TEZ-3408](https://issues.apache.org/jira/browse/TEZ-3408) | Allow Task Output Files to reside in DAG specific directories for Custom Shuffle Handler |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3410](https://issues.apache.org/jira/browse/TEZ-3410) | ShuffleHandler should use Path.SEPARATOR instead of '/' |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3412](https://issues.apache.org/jira/browse/TEZ-3412) | Modify ShuffleHandler to use Constants.DAG\_PREFIX and fix AttemptPathIdentifier#toString() |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3411](https://issues.apache.org/jira/browse/TEZ-3411) | TestShuffleHandler#testSendMapCount should not used hard coded ShuffleHandler port |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3360](https://issues.apache.org/jira/browse/TEZ-3360) | Tez Custom Shuffle Handler Documentation |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3395](https://issues.apache.org/jira/browse/TEZ-3395) | Refactor ShuffleVertexManager to make parts of it re-usable in other plugins |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3230](https://issues.apache.org/jira/browse/TEZ-3230) | Implement vertex manager and edge manager of cartesian product edge |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3000](https://issues.apache.org/jira/browse/TEZ-3000) | Fix TestContainerReuse |  Major | . | Jeff Zhang | Ming Ma |
| [TEZ-3419](https://issues.apache.org/jira/browse/TEZ-3419) | Tez UI: Applications page shows error, for users with only DAG level ACL permission. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3487](https://issues.apache.org/jira/browse/TEZ-3487) | Improvements in travis yml file to get builds to work |  Major | . | darion yaphet | darion yaphet |
| [TEZ-3362](https://issues.apache.org/jira/browse/TEZ-3362) | Delete intermediate data at DAG level for Shuffle Handler |  Major | . | Jonathan Turner Eagles | Kuhu Shukla |
| [TEZ-3480](https://issues.apache.org/jira/browse/TEZ-3480) | Port MAPREDUCE-6763 to Tez ShuffleHandler |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3465](https://issues.apache.org/jira/browse/TEZ-3465) | Support broadcast edge into cartesian product vertex and forbid other edges |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3269](https://issues.apache.org/jira/browse/TEZ-3269) | Provide basic fair routing and scheduling functionality via custom VertexManager and EdgeManager |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3509](https://issues.apache.org/jira/browse/TEZ-3509) | Make DAG Deletion Tracker configurable for ContainerLaunchers |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3361](https://issues.apache.org/jira/browse/TEZ-3361) | Fetch Multiple Partitions from the Shuffle Handler |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3557](https://issues.apache.org/jira/browse/TEZ-3557) | TEZ-3362 causes TestContainerLauncherWrapper#testDelegation to fail |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3564](https://issues.apache.org/jira/browse/TEZ-3564) | TezConfiguration#TEZ\_DELETION\_TRACKER\_CLASS has the wrong config key-name |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3563](https://issues.apache.org/jira/browse/TEZ-3563) | Tez Shuffle Handler logging fails to initialize |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3532](https://issues.apache.org/jira/browse/TEZ-3532) | Backport MAPREDUCE-6808. Log map attempts as part of shuffle handler audit log |  Major | . | Jonathan Turner Eagles | Kuhu Shukla |
| [TEZ-3579](https://issues.apache.org/jira/browse/TEZ-3579) | Wrong configuration key for max slow start fraction in CartesianProductVertexManager |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3586](https://issues.apache.org/jira/browse/TEZ-3586) | Remove fusesource.leveldbjni from the tez-auxservices shaded jar |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3587](https://issues.apache.org/jira/browse/TEZ-3587) | Fetcher fetchInputs() can NPE on srcAttempt due to missing entry in pathToAttemptMap |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3458](https://issues.apache.org/jira/browse/TEZ-3458) | Auto grouping for cartesian product edge(unpartitioned case) |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3590](https://issues.apache.org/jira/browse/TEZ-3590) | Remove google.protobuf from the tez-auxservices shaded jar |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3595](https://issues.apache.org/jira/browse/TEZ-3595) | Composite Fetch account error for disk direct |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3596](https://issues.apache.org/jira/browse/TEZ-3596) | Number of Empty DME logged for Composite fetch is too high |  Minor | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3597](https://issues.apache.org/jira/browse/TEZ-3597) | Composite Fetch hangs on certain DME empty events. |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3599](https://issues.apache.org/jira/browse/TEZ-3599) | Unordered Fetcher can hang if empty partitions are present |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3604](https://issues.apache.org/jira/browse/TEZ-3604) | Remove the compositeInputAttemptIdentifier from remaining list upon fetch completion in the Ordered case |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3606](https://issues.apache.org/jira/browse/TEZ-3606) | Fix debug log for empty partitions to the expanded partitionId in the Composite case |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3608](https://issues.apache.org/jira/browse/TEZ-3608) | Fetcher can hang if copyMapOutput/fetchInputs returns early |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3612](https://issues.apache.org/jira/browse/TEZ-3612) | Tez Shuffle Handler Content length does not match actual |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3618](https://issues.apache.org/jira/browse/TEZ-3618) | Shuffle Handler Loading cache equality tests always results is false |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3620](https://issues.apache.org/jira/browse/TEZ-3620) | UnorderedPartitionedKVOutput is missing the shuffle service config in the confKeys set |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3621](https://issues.apache.org/jira/browse/TEZ-3621) | Optimize the Shuffle Handler content length calculation for keep alive |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3253](https://issues.apache.org/jira/browse/TEZ-3253) | Remove special handling for last app attempt (absence of ApplicationConstants.MAX\_APP\_ATTEMPTS\_ENV in AM env) |  Major | . | Hitesh Shah | Akira Ajisaka |
| [TEZ-3655](https://issues.apache.org/jira/browse/TEZ-3655) | Specify netty version instead of inheriting from hadoop dependency |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3628](https://issues.apache.org/jira/browse/TEZ-3628) | Give Tez shuffle handler threads custom names |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3665](https://issues.apache.org/jira/browse/TEZ-3665) | TestATSV15HistoryLoggingService should use mocked TimelineClient |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3667](https://issues.apache.org/jira/browse/TEZ-3667) | Stop using org.apache.hadoop.security.ssl.SSLFactory.DEFAULT\_SSL\_REQUIRE\_CLIENT\_CERT |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3668](https://issues.apache.org/jira/browse/TEZ-3668) | Explicitly include hadoop-mapreduce-client-shuffle for test in root pom |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3652](https://issues.apache.org/jira/browse/TEZ-3652) | Remove ShuffleClientMetrics |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3682](https://issues.apache.org/jira/browse/TEZ-3682) | Pass parameters instead of configuration for changes to support tez shuffle handler |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3683](https://issues.apache.org/jira/browse/TEZ-3683) | LocalContainerLauncher#shouldDelete member variable is not used |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3684](https://issues.apache.org/jira/browse/TEZ-3684) | Incorporate first pass non-essential TEZ-3334 pre-merge feedback |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3654](https://issues.apache.org/jira/browse/TEZ-3654) | Make CartesianProduct edge work with GroupInputEdge |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-1187](https://issues.apache.org/jira/browse/TEZ-1187) | Add a framework ExecutorService which shares threads. |  Major | . | Siddharth Seth | Harish JP |
| [TEZ-3690](https://issues.apache.org/jira/browse/TEZ-3690) | Tez on hadoop 3 build failed due to hdfs client/server jar separation |  Blocker | . | Junping Du | Junping Du |
| [TEZ-2049](https://issues.apache.org/jira/browse/TEZ-2049) | Remove YARN references from Tez AsyncDispatcher |  Major | . | Bikas Saha | Zhiyuan Yang |
| [TEZ-3685](https://issues.apache.org/jira/browse/TEZ-3685) | ShuffleHandler completedInputSet off-by-one error |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3702](https://issues.apache.org/jira/browse/TEZ-3702) | Tez shuffle jar includes service loader entry for ClientProtocolProvider but not the corresponding class |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3705](https://issues.apache.org/jira/browse/TEZ-3705) | Modify DeletionTracker and deletion threads to be initialized only if enabled for tez\_shuffle |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3708](https://issues.apache.org/jira/browse/TEZ-3708) | Improve parallelism and auto grouping of unpartitioned cartesian product |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3725](https://issues.apache.org/jira/browse/TEZ-3725) | Cleanup http connections and other unnecessary fields in DAG Deletion tracker classes. |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3726](https://issues.apache.org/jira/browse/TEZ-3726) | Clean up DeletionTracker's reflection instantiation and provide ContainerLauncher with dagComplete() functionality |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3691](https://issues.apache.org/jira/browse/TEZ-3691) | Setup fetchers to use shared executor. |  Major | . | Harish JP | Harish JP |
| [TEZ-3735](https://issues.apache.org/jira/browse/TEZ-3735) | Test failures in TestTaskAttempt and TestAMContainerMap |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3740](https://issues.apache.org/jira/browse/TEZ-3740) | Clean up TEZ-3334-CHANGES.txt |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3633](https://issues.apache.org/jira/browse/TEZ-3633) | Implement keep-alive timeout in tez shuffle handler |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3712](https://issues.apache.org/jira/browse/TEZ-3712) | Use Local FileContext for deleting dag level directories |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3713](https://issues.apache.org/jira/browse/TEZ-3713) | Allow dag level deletion in cases where containers are reused |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3787](https://issues.apache.org/jira/browse/TEZ-3787) | Remove Tez UI build and rebuild errors and warning due to yarn install and ember-truth-helpers |  Major | UI | Jonathan Turner Eagles | Jonathan Turner Eagles |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3228](https://issues.apache.org/jira/browse/TEZ-3228) | Update version in master to 0.9.0 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3323](https://issues.apache.org/jira/browse/TEZ-3323) | Update license and Notice for xml-apis, update year |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3235](https://issues.apache.org/jira/browse/TEZ-3235) | Modify Example TestOrderedWordCount job to test the IPC limit for large dag plans |  Major | . | Sushmitha Sreenivasan | Sushmitha Sreenivasan |
| [TEZ-3409](https://issues.apache.org/jira/browse/TEZ-3409) | Log dagId along with other information when submitting a dag |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3484](https://issues.apache.org/jira/browse/TEZ-3484) | Tez UI: Remove .travis.yml from webapp folder |  Trivial | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3534](https://issues.apache.org/jira/browse/TEZ-3534) | Differentiate thread names on Fetchers, minor changes to shuffle shutdown code |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3600](https://issues.apache.org/jira/browse/TEZ-3600) | Fix or disable flaky test: TestTokenCache |  Major | . | Siddharth Seth | Harish JP |
| [TEZ-3624](https://issues.apache.org/jira/browse/TEZ-3624) | Split multiple calls on the same line in TaskCommunicatorContextImpl |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3653](https://issues.apache.org/jira/browse/TEZ-3653) | Tez UI: Swimlane tooltip is not proper for running DAGs |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3660](https://issues.apache.org/jira/browse/TEZ-3660) | Remove CHANGES.txt |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3657](https://issues.apache.org/jira/browse/TEZ-3657) | Add committer zhiyuany to the Tez Team List |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3663](https://issues.apache.org/jira/browse/TEZ-3663) | Add harishjp to Tez teams list. |  Minor | . | Harish JP | Harish JP |
| [TEZ-3689](https://issues.apache.org/jira/browse/TEZ-3689) | Change minimum hadoop version to 2.7.0 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3675](https://issues.apache.org/jira/browse/TEZ-3675) | Handle changes to ResourceCalculatorProcessTree in YARN-3427 for Hadoop 3.x |  Major | . | Siddharth Seth | Zhiyuan Yang |
| [TEZ-3716](https://issues.apache.org/jira/browse/TEZ-3716) | Allow attempt retries to be treated the same as the first attempt |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-3745](https://issues.apache.org/jira/browse/TEZ-3745) | Change master to required java 8 |  Blocker | . | Siddharth Seth | Siddharth Seth |


