
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
# Changelog

## Release 0.7.0 - 2015-05-18

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2437](https://issues.apache.org/jira/browse/TEZ-2437) | FilterLinesByWord NPEs when run in Localmode |  Major | . | Amit Tiwari |  |
| [TEZ-2424](https://issues.apache.org/jira/browse/TEZ-2424) | Bump up max counter group name length limit to account for per\_io counters |  Minor | . | Hitesh Shah | Hitesh Shah |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2446](https://issues.apache.org/jira/browse/TEZ-2446) | Tez UI: Add tezVersion details when downloading timeline data for offline use |  Major | . | Rajesh Balamohan | Prakash Ramachandran |
| [TEZ-2435](https://issues.apache.org/jira/browse/TEZ-2435) | Add public key to KEYS |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2392](https://issues.apache.org/jira/browse/TEZ-2392) | Have all readers throw an Exception on incorrect next() usage |  Critical | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2384](https://issues.apache.org/jira/browse/TEZ-2384) | Add warning message in the case of prewarn under non-session mode |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2368](https://issues.apache.org/jira/browse/TEZ-2368) | Make a dag identifier available in Context classes |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2213](https://issues.apache.org/jira/browse/TEZ-2213) | For the ordered case, enabling pipelined shuffle should automatically disable final merge |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2212](https://issues.apache.org/jira/browse/TEZ-2212) | Notify components on DAG completion |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2209](https://issues.apache.org/jira/browse/TEZ-2209) | Fix pipelined shuffle to fetch data from any one attempt |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2196](https://issues.apache.org/jira/browse/TEZ-2196) | Consider reusing UnorderedPartitionedKVWriter with single output in UnorderedKVOutput |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2176](https://issues.apache.org/jira/browse/TEZ-2176) | Move all logging to slf4j |  Major | . | Siddharth Seth | Vasanth kumar RJ |
| [TEZ-2169](https://issues.apache.org/jira/browse/TEZ-2169) | Add NDC context to various threads and pools |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-2159](https://issues.apache.org/jira/browse/TEZ-2159) | Tez UI: download timeline data for offline use. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2149](https://issues.apache.org/jira/browse/TEZ-2149) | Optimizations for the timed version of DAGClient.getStatus |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2083](https://issues.apache.org/jira/browse/TEZ-2083) | Make PipelinedSorter as the default sorter |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2016](https://issues.apache.org/jira/browse/TEZ-2016) | Tez UI: Dag View Fit and Finish |  Major | UI | Jonathan Eagles | Sreenath Somarajapuram |
| [TEZ-1967](https://issues.apache.org/jira/browse/TEZ-1967) | Add a monitoring API on DAGClient which returns after a time interval or on DAG state change |  Major | . | Siddharth Seth | Vasanth kumar RJ |
| [TEZ-1917](https://issues.apache.org/jira/browse/TEZ-1917) | Examples should extend TezExampleBase |  Major | . | Siddharth Seth | Vasanth kumar RJ |
| [TEZ-1867](https://issues.apache.org/jira/browse/TEZ-1867) | Create new central dispatcher for Tez AM |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1855](https://issues.apache.org/jira/browse/TEZ-1855) | Avoid scanning for previously written files within Inputs / Outputs |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1837](https://issues.apache.org/jira/browse/TEZ-1837) | Restrict usage of Environment variables to main methods |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1826](https://issues.apache.org/jira/browse/TEZ-1826) | Add option to disable split grouping and local mode option for tez-examples |  Minor | . | Siddharth Seth | Jeff Zhang |
| [TEZ-1767](https://issues.apache.org/jira/browse/TEZ-1767) | Enable RLE in reducer side merge codepath |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1274](https://issues.apache.org/jira/browse/TEZ-1274) | Remove Key/Value type checks in IFile |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1233](https://issues.apache.org/jira/browse/TEZ-1233) | Allow configuration of framework parameters per vertex |  Major | . | Siddharth Seth | Jeff Zhang |
| [TEZ-714](https://issues.apache.org/jira/browse/TEZ-714) | OutputCommitters should not run in the main AM dispatcher thread |  Critical | . | Siddharth Seth | Jeff Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2445](https://issues.apache.org/jira/browse/TEZ-2445) | Disable the object cleanup in local mode in LogicalIOProcessorRuntimeTask |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2432](https://issues.apache.org/jira/browse/TEZ-2432) | Syntax error in DOAP file release section |  Major | . | Sebb | Hitesh Shah |
| [TEZ-2426](https://issues.apache.org/jira/browse/TEZ-2426) | Ensure the eventRouter thread completes before switching to a new task and thread safety fixes in IPOContexts. |  Critical | . | Bikas Saha | Siddharth Seth |
| [TEZ-2423](https://issues.apache.org/jira/browse/TEZ-2423) | Tez UI: Remove Attempt Index column from task-\>attempts page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2417](https://issues.apache.org/jira/browse/TEZ-2417) | Tez UI: Counters are blank in the Attempts page if all attempts failed |  Major | UI | Sreenath Somarajapuram | Prakash Ramachandran |
| [TEZ-2416](https://issues.apache.org/jira/browse/TEZ-2416) | Tez UI: Make tooltips display faster. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2415](https://issues.apache.org/jira/browse/TEZ-2415) | PMC RDF needs to use asfext:pmc, not asfext:PMC |  Major | . | Sebb | Hitesh Shah |
| [TEZ-2412](https://issues.apache.org/jira/browse/TEZ-2412) | Should kill vertex in DAGImpl#VertexRerunWhileCommitting |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2410](https://issues.apache.org/jira/browse/TEZ-2410) | VertexGroupCommitFinishedEvent & VertexCommitStartedEvent is not logged correctly |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2408](https://issues.apache.org/jira/browse/TEZ-2408) | TestTaskAttempt fails to compile against hadoop-2.4 and hadoop-2.2 |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2406](https://issues.apache.org/jira/browse/TEZ-2406) | Tez UI: Display per-io counter columns in task and attempt pages under vertex |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2405](https://issues.apache.org/jira/browse/TEZ-2405) | PipelinedSorter can throw NPE with custom compartor |  Critical | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2404](https://issues.apache.org/jira/browse/TEZ-2404) | Handle DataMovementEvent before its TaskAttemptCompletedEvent |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2401](https://issues.apache.org/jira/browse/TEZ-2401) | Tez UI: All-dag page has duration keep counting for KILLED dag. |  Critical | UI | Tassapol Athiapinya | Prakash Ramachandran |
| [TEZ-2397](https://issues.apache.org/jira/browse/TEZ-2397) | Translation of LocalResources via Tez plan serialization can be lossy |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2396](https://issues.apache.org/jira/browse/TEZ-2396) | pig-tez-tfile-parser pom is hard coded to depend on 0.6.0-SNAPSHOT version |  Major | . | Jonathan Eagles | Rajesh Balamohan |
| [TEZ-2395](https://issues.apache.org/jira/browse/TEZ-2395) | Tez UI: Minimum/Maximum Duration show a empty bracket next to 0 secs when you purposefully failed a job. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2394](https://issues.apache.org/jira/browse/TEZ-2394) | Issues when there is an error in VertexManager callbacks |  Critical | . | Bikas Saha | Bikas Saha |
| [TEZ-2389](https://issues.apache.org/jira/browse/TEZ-2389) | Tez UI: Sort by attempt-no is incorrect in attempts pages. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2386](https://issues.apache.org/jira/browse/TEZ-2386) | Tez UI: Inconsistent usage of icon colors |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2383](https://issues.apache.org/jira/browse/TEZ-2383) | Cleanup input/output/processor contexts in LogicalIOProcessorRuntimeTask |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2379](https://issues.apache.org/jira/browse/TEZ-2379) | org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: T\_ATTEMPT\_KILLED at KILLED |  Blocker | . | Rajesh Balamohan | Hitesh Shah |
| [TEZ-2374](https://issues.apache.org/jira/browse/TEZ-2374) | Fix build break against hadoop-2.2 due to TEZ-2325 |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2369](https://issues.apache.org/jira/browse/TEZ-2369) | Add a few unit tests for RootInputInitializerManager |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2366](https://issues.apache.org/jira/browse/TEZ-2366) | Pig tez MiniTezCluster unit tests fail intermittently after TEZ-2333 |  Critical | . | Daniel Dai | Prakash Ramachandran |
| [TEZ-2364](https://issues.apache.org/jira/browse/TEZ-2364) | 'joindatagen' AM picks wrong staging dir |  Major | . | Yesha Vora | Siddharth Seth |
| [TEZ-2363](https://issues.apache.org/jira/browse/TEZ-2363) | Counters: off by 1 error for REDUCE\_INPUT\_GROUPS counter |  Minor | . | Gopal V | Gopal V |
| [TEZ-2362](https://issues.apache.org/jira/browse/TEZ-2362) | State Change Notifier Thread should be stopped when dag is completed |  Major | . | Jeff Zhang | Bikas Saha |
| [TEZ-2360](https://issues.apache.org/jira/browse/TEZ-2360) | per-io counters flag should generate both overall and per-edge counters |  Major | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-2358](https://issues.apache.org/jira/browse/TEZ-2358) | Pipelined Shuffle: MergeManager assumptions about 1 merge per source-task |  Blocker | . | Gopal V | Rajesh Balamohan |
| [TEZ-2357](https://issues.apache.org/jira/browse/TEZ-2357) | Tez UI: misc.js.orig is committed by accident |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-2342](https://issues.apache.org/jira/browse/TEZ-2342) | TestFaultTolerance.testRandomFailingTasks fails due to timeout |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2341](https://issues.apache.org/jira/browse/TEZ-2341) | TestMockDAGAppMaster.testBasicCounters fails on windows |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2340](https://issues.apache.org/jira/browse/TEZ-2340) | TestRecoveryParser fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2328](https://issues.apache.org/jira/browse/TEZ-2328) | Add tez.runtime.sorter.class & rename tez.runtime.sort.threads to tez.runtime.pipelined.sorter.sort.threads |  Major | . | Rajesh Balamohan | Hitesh Shah |
| [TEZ-2325](https://issues.apache.org/jira/browse/TEZ-2325) | Route status update event directly to the attempt |  Major | . | Bikas Saha | Prakash Ramachandran |
| [TEZ-2323](https://issues.apache.org/jira/browse/TEZ-2323) | Fix TestOrderedWordcount to use MR memory configs |  Major | . | Yesha Vora | Hitesh Shah |
| [TEZ-2318](https://issues.apache.org/jira/browse/TEZ-2318) | Tez UI: source and sink page is broken as they are not populated. |  Major | UI | Prakash Ramachandran | Sreenath Somarajapuram |
| [TEZ-2314](https://issues.apache.org/jira/browse/TEZ-2314) | Tez task attempt failures due to bad event serialization |  Blocker | . | Rohini Palaniswamy | Bikas Saha |
| [TEZ-2313](https://issues.apache.org/jira/browse/TEZ-2313) | Regression in handling obsolete events in ShuffleScheduler |  Blocker | . | Bikas Saha | Rajesh Balamohan |
| [TEZ-2310](https://issues.apache.org/jira/browse/TEZ-2310) | Deadlock caused by StateChangeNotifier sending notifications on thread holding locks |  Major | . | Daniel Dai | Bikas Saha |
| [TEZ-2305](https://issues.apache.org/jira/browse/TEZ-2305) | MR compatibility sleep job fails with IOException: Undefined job output-path |  Critical | . | Tassapol Athiapinya | Jeff Zhang |
| [TEZ-2299](https://issues.apache.org/jira/browse/TEZ-2299) | Invalid dag creation in MRRSleepJob post TEZ-2293 |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2298](https://issues.apache.org/jira/browse/TEZ-2298) | Ignore sending failure message, when TaskReporter$HeartbeatCallable is shutdown |  Major | . | Rajesh Balamohan | Siddharth Seth |
| [TEZ-2293](https://issues.apache.org/jira/browse/TEZ-2293) | When running in "mr" mode, always use MR config settings |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2290](https://issues.apache.org/jira/browse/TEZ-2290) | Scale memory for Default Sorter down to a max of 2047 MB if configured higher |  Blocker | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-2269](https://issues.apache.org/jira/browse/TEZ-2269) | DAGAppMaster becomes unresponsive |  Major | . | Rajesh Balamohan |  |
| [TEZ-2265](https://issues.apache.org/jira/browse/TEZ-2265) | All inputs/outputs in a task share the same counter object |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2261](https://issues.apache.org/jira/browse/TEZ-2261) | Should add diagnostics in DAGAppMaster when recovery error happens |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2252](https://issues.apache.org/jira/browse/TEZ-2252) | Tez UI: in graphical view some of the sinks are hidden as they overlap |  Major | UI | Rohini Palaniswamy | Sreenath Somarajapuram |
| [TEZ-2251](https://issues.apache.org/jira/browse/TEZ-2251) | Race condition in VertexImpl & Edge causes DAG to hang |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2248](https://issues.apache.org/jira/browse/TEZ-2248) | VertexImpl/DAGImpl.checkForCompletion have too many termination cause checks |  Major | . | Bikas Saha | Jeff Zhang |
| [TEZ-2237](https://issues.apache.org/jira/browse/TEZ-2237) | Valid events should be sent out when an Output is not started |  Critical | . | Cyrille Chépélov | Siddharth Seth |
| [TEZ-2233](https://issues.apache.org/jira/browse/TEZ-2233) | Allow EdgeProperty of an edge to be changed by VertexManager |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2232](https://issues.apache.org/jira/browse/TEZ-2232) | Allow setParallelism to be called multiple times before tasks get scheduled |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2224](https://issues.apache.org/jira/browse/TEZ-2224) | EventQueue empty doesn't mean events are consumed in RecoveryService |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2223](https://issues.apache.org/jira/browse/TEZ-2223) | TestMockDAGAppMaster fails due to TEZ-2210 on mac |  Major | . | Jeff Zhang | Hitesh Shah |
| [TEZ-2221](https://issues.apache.org/jira/browse/TEZ-2221) | VertexGroup name should be unqiue |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2204](https://issues.apache.org/jira/browse/TEZ-2204) | TestAMRecovery increasingly flaky on jenkins builds. |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-2202](https://issues.apache.org/jira/browse/TEZ-2202) | Fix LocalTaskExecutionThread ID to the standard thread numbering |  Major | . | Gopal V | Gopal V |
| [TEZ-2195](https://issues.apache.org/jira/browse/TEZ-2195) | TestTezJobs::testInvalidQueueSubmission/testInvalidQueueSubmissionToSession fail with hadoop branch-2 |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2186](https://issues.apache.org/jira/browse/TEZ-2186) | OOM with a simple scatter gather job with re-use |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2178](https://issues.apache.org/jira/browse/TEZ-2178) | YARN-3122 breaks tez compilation with hadoop 2.7.0 |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2171](https://issues.apache.org/jira/browse/TEZ-2171) | Remove unused metrics code |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-2170](https://issues.apache.org/jira/browse/TEZ-2170) | Incorrect its in README.md |  Critical | . | Jakob Homan | Jakob Homan |
| [TEZ-2133](https://issues.apache.org/jira/browse/TEZ-2133) | Secured Impersonation: Failed to delete tez scratch data dir |  Major | . | Johannes Zillmann | Chang Li |
| [TEZ-2095](https://issues.apache.org/jira/browse/TEZ-2095) | master branch fails to compile against hadoop-2.4 |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2085](https://issues.apache.org/jira/browse/TEZ-2085) | PipelinedSorter should bail out (on BufferOverflowException) instead of retrying continuously |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2084](https://issues.apache.org/jira/browse/TEZ-2084) | Tez UI: Stacktrace format info is lost in diagnostics |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-2082](https://issues.apache.org/jira/browse/TEZ-2082) | Race condition in TaskAttemptListenerImpTezDag.getTask() |  Major | . | Hitesh Shah | Bikas Saha |
| [TEZ-2080](https://issues.apache.org/jira/browse/TEZ-2080) | Localclient should be using tezconf in init instead of yarnconf |  Major | . | Prakash Ramachandran | Siddharth Seth |
| [TEZ-2075](https://issues.apache.org/jira/browse/TEZ-2075) | Incompatible issue caused by TEZ-1233 that TezConfiguration.TEZ\_SITE\_XML is made private |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2072](https://issues.apache.org/jira/browse/TEZ-2072) | Add missing Private annotation to createDAG in the DAG API class |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2070](https://issues.apache.org/jira/browse/TEZ-2070) | Controller class of output should be committer rather than initializer in DAG's dot file |  Trivial | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2059](https://issues.apache.org/jira/browse/TEZ-2059) | Remove TaskEventHandler in TestDAGImpl |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2057](https://issues.apache.org/jira/browse/TEZ-2057) | tez-dag/pom.xml contains versions for dependencies |  Major | . | Hitesh Shah | Jonathan Eagles |
| [TEZ-2033](https://issues.apache.org/jira/browse/TEZ-2033) | Update TestOrderedWordCount to add processor configs as history text and use MR configs correctly |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2009](https://issues.apache.org/jira/browse/TEZ-2009) | Change license/copyright headers to 2015 |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2000](https://issues.apache.org/jira/browse/TEZ-2000) | Source vertex exists error during DAG submission |  Major | . | Rohini Palaniswamy | Jeff Zhang |
| [TEZ-1999](https://issues.apache.org/jira/browse/TEZ-1999) | IndexOutOfBoundsException during merge |  Major | . | Rohini Palaniswamy | Rajesh Balamohan |
| [TEZ-1997](https://issues.apache.org/jira/browse/TEZ-1997) | Remove synchronization DefaultSorter::isRLENeeded() (Causes sorter to hang indefinitely in large jobs) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1996](https://issues.apache.org/jira/browse/TEZ-1996) | Update Website after 0.6.0 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1995](https://issues.apache.org/jira/browse/TEZ-1995) | Build failure against hadoop 2.2 |  Major | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-1993](https://issues.apache.org/jira/browse/TEZ-1993) | Implement a pluggable InputSizeEstimator for grouping fairly |  Major | . | Gopal V | Gopal V |
| [TEZ-1988](https://issues.apache.org/jira/browse/TEZ-1988) | Tez UI: does not work when using file:// in a browser |  Major | UI | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1982](https://issues.apache.org/jira/browse/TEZ-1982) | TezChild setupUgi should not be using environment |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1963](https://issues.apache.org/jira/browse/TEZ-1963) | Fix post memory merge to be \> 2 GB |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1949](https://issues.apache.org/jira/browse/TEZ-1949) | Whitelist TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges |  Critical | . | Gopal V | Gopal V |
| [TEZ-1945](https://issues.apache.org/jira/browse/TEZ-1945) | Remove 2 GB memlimit restriction in MergeManager |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1935](https://issues.apache.org/jira/browse/TEZ-1935) | Organization should be removed from http://tez.apache.org/team-list.html |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1913](https://issues.apache.org/jira/browse/TEZ-1913) | Reduce deserialize cost in ValuesIterator |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1912](https://issues.apache.org/jira/browse/TEZ-1912) | Merge exceptions are thrown when enabling tez.runtime.shuffle.memory-to-memory.enable && tez.runtime.shuffle.memory-to-memory.segments |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1889](https://issues.apache.org/jira/browse/TEZ-1889) | Fix test-patch to provide correct findbugs report |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1881](https://issues.apache.org/jira/browse/TEZ-1881) | Setup initial test-patch script for TEZ-1313 |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1844](https://issues.apache.org/jira/browse/TEZ-1844) | Shouldn't invoke system.exit in local mode when AM is failed to start |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1827](https://issues.apache.org/jira/browse/TEZ-1827) | MiniTezCluster takes 10 minutes to shut down |  Minor | . | Ashutosh Chauhan | Hitesh Shah |
| [TEZ-1803](https://issues.apache.org/jira/browse/TEZ-1803) | Support \> 2gb sort buffer in pipelinedsorter |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1661](https://issues.apache.org/jira/browse/TEZ-1661) | LocalTaskScheduler hangs when shutdown |  Major | . | Oleg Zhurakousky | Jeff Zhang |
| [TEZ-1593](https://issues.apache.org/jira/browse/TEZ-1593) | Refactor PipelinedSorter to remove all MMAP based ByteBuffer references |  Major | . | Gopal V | Rajesh Balamohan |
| [TEZ-1560](https://issues.apache.org/jira/browse/TEZ-1560) | Invalid state machine handling for V\_SOURCE\_VERTEX\_RECOVERED in recovery |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-167](https://issues.apache.org/jira/browse/TEZ-167) | Create tests for MR Combiner |  Major | . | Hitesh Shah | Devaraj K |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2345](https://issues.apache.org/jira/browse/TEZ-2345) | TEZ-UI: Enable cell level loading in all DAGs table |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2344](https://issues.apache.org/jira/browse/TEZ-2344) | TEZ-UI: Equip basic-ember-table's cell level loading for all use cases in all DAGs table |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2308](https://issues.apache.org/jira/browse/TEZ-2308) | Add set/get of record counts in task/vertex statistics |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2275](https://issues.apache.org/jira/browse/TEZ-2275) | Tez UI: enable faster loading and caching of data in tables |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2274](https://issues.apache.org/jira/browse/TEZ-2274) | Tez UI: full data loading, client side search and sort for other pages |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2273](https://issues.apache.org/jira/browse/TEZ-2273) | Tez UI: Support client side searching & sorting for dag tasks page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2236](https://issues.apache.org/jira/browse/TEZ-2236) | Tez UI: Support loading of all tasks in the dag tasks page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2234](https://issues.apache.org/jira/browse/TEZ-2234) | Add API for statistics information - allow vertex managers to get output size per source vertex |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2023](https://issues.apache.org/jira/browse/TEZ-2023) | Refactor logIndividualFetchComplete() to be common for both shuffle-schedulers |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1980](https://issues.apache.org/jira/browse/TEZ-1980) | Suppress tez-dag findbugs warnings until addressed |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1969](https://issues.apache.org/jira/browse/TEZ-1969) | Stop the DAGAppMaster when a local mode client is stopped |  Major | . | Siddharth Seth | Prakash Ramachandran |
| [TEZ-1951](https://issues.apache.org/jira/browse/TEZ-1951) | Fix general findbugs warnings in tez-dag |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1941](https://issues.apache.org/jira/browse/TEZ-1941) | Memory provided by *Context.getAvailableMemory needs to be setup explicitly |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1906](https://issues.apache.org/jira/browse/TEZ-1906) | Fix findbugs warnings in tez-yarn-timeline-history-with-acls |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1905](https://issues.apache.org/jira/browse/TEZ-1905) | Fix findbugs warnings in tez-tests |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1904](https://issues.apache.org/jira/browse/TEZ-1904) | Fix findbugs warnings in tez-runtime-library |  Major | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1903](https://issues.apache.org/jira/browse/TEZ-1903) | Fix findbugs warnings in tez-runtime-internals |  Major | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1902](https://issues.apache.org/jira/browse/TEZ-1902) | Fix findbugs warnings in tez-mapreduce |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1901](https://issues.apache.org/jira/browse/TEZ-1901) | Fix findbugs warnings in tez-examples |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1899](https://issues.apache.org/jira/browse/TEZ-1899) | Fix findbugs warnings in tez-common |  Major | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1898](https://issues.apache.org/jira/browse/TEZ-1898) | Fix findbugs warnings in tez-api module |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1879](https://issues.apache.org/jira/browse/TEZ-1879) | Create local UGI instances for each task and the AM, when running in LocalMode |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1521](https://issues.apache.org/jira/browse/TEZ-1521) | VertexDataMovementEventsGeneratedEvent may be logged twice in recovery log |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1482](https://issues.apache.org/jira/browse/TEZ-1482) | Fix memory issues for Local Mode running concurrent tasks |  Major | . | Chen He | Prakash Ramachandran |
| [TEZ-776](https://issues.apache.org/jira/browse/TEZ-776) | Reduce AM mem usage caused by storing TezEvents |  Blocker | . | Siddharth Seth | Bikas Saha |
| [TEZ-485](https://issues.apache.org/jira/browse/TEZ-485) | Get rid of TezTaskStatus |  Minor | . | Siddharth Seth | Siddharth Seth |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2352](https://issues.apache.org/jira/browse/TEZ-2352) | Move getTaskStatistics into the RuntimeTask class |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2333](https://issues.apache.org/jira/browse/TEZ-2333) | Enable local fetch optimization by default. |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2330](https://issues.apache.org/jira/browse/TEZ-2330) | Create reconfigureVertex() API for input based initialization |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2292](https://issues.apache.org/jira/browse/TEZ-2292) | Add e2e test for error reporting when vertex manager invokes plugin APIs |  Blocker | . | Bikas Saha | Bikas Saha |
| [TEZ-2264](https://issues.apache.org/jira/browse/TEZ-2264) | Remove unused taskUmbilical reference in TezTaskRunner, register as running late |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2243](https://issues.apache.org/jira/browse/TEZ-2243) | documentation should explicitly specify protobuf 2.5.0 |  Minor | . | Michael Howard | Michael Howard |
| [TEZ-2231](https://issues.apache.org/jira/browse/TEZ-2231) | Create project by-laws |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2210](https://issues.apache.org/jira/browse/TEZ-2210) | Record DAG AM CPU usage stats |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2203](https://issues.apache.org/jira/browse/TEZ-2203) | Intern strings in tez counters |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2191](https://issues.apache.org/jira/browse/TEZ-2191) | Simulation improvements to MockDAGAppMaster |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2174](https://issues.apache.org/jira/browse/TEZ-2174) | Make task priority available to TaskAttemptListener |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2130](https://issues.apache.org/jira/browse/TEZ-2130) | Send the sessionToken as part of the AM CLC |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2093](https://issues.apache.org/jira/browse/TEZ-2093) | Add events to MockDAGAppMaster and add e2e test for event routing |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2045](https://issues.apache.org/jira/browse/TEZ-2045) | TaskAttemptListener should not pull Tasks from AMContainer |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2008](https://issues.apache.org/jira/browse/TEZ-2008) | Add methods to SecureShuffleUtils to verify a reply based on a provided Key |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1933](https://issues.apache.org/jira/browse/TEZ-1933) | Move TezChild and related classes into tez-runtime-internals |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1914](https://issues.apache.org/jira/browse/TEZ-1914) | VertexManager logic should not run on the central dispatcher |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1897](https://issues.apache.org/jira/browse/TEZ-1897) | Create a concurrent version of AsyncDispatcher |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1856](https://issues.apache.org/jira/browse/TEZ-1856) | Remove LocalOnFileSortedOutput, LocalMergedInput, LocalTaskOutputFiles |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1313](https://issues.apache.org/jira/browse/TEZ-1313) | Setup pre-commit build to test submitted patches |  Major | . | Hitesh Shah | Hitesh Shah |


