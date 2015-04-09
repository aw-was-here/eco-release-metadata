
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
# Hadoop Changelog

## Release 0.7.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2213](https://issues.apache.org/jira/browse/TEZ-2213) | For the ordered case, enabling pipelined shuffle should automatically disable final merge |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2209](https://issues.apache.org/jira/browse/TEZ-2209) | Fix pipelined shuffle to fetch data from any one attempt |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2196](https://issues.apache.org/jira/browse/TEZ-2196) | Consider reusing UnorderedPartitionedKVWriter with single output in UnorderedKVOutput |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2176](https://issues.apache.org/jira/browse/TEZ-2176) | Move all logging to slf4j |  Major | . | Siddharth Seth | Vasanth kumar RJ |
| [TEZ-2169](https://issues.apache.org/jira/browse/TEZ-2169) | Add NDC context to various threads and pools |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-2159](https://issues.apache.org/jira/browse/TEZ-2159) | Tez UI: download timeline data for offline use. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2149](https://issues.apache.org/jira/browse/TEZ-2149) | Optimizations for the timed version of DAGClient.getStatus |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2083](https://issues.apache.org/jira/browse/TEZ-2083) | Make PipelinedSorter as the default sorter |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1967](https://issues.apache.org/jira/browse/TEZ-1967) | Add a monitoring API on DAGClient which returns after a time interval or on DAG state change |  Major | . | Siddharth Seth | Vasanth kumar RJ |
| [TEZ-1917](https://issues.apache.org/jira/browse/TEZ-1917) | Examples should extend TezExampleBase |  Major | . | Siddharth Seth | Vasanth kumar RJ |
| [TEZ-1867](https://issues.apache.org/jira/browse/TEZ-1867) | Create new central dispatcher for Tez AM |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1855](https://issues.apache.org/jira/browse/TEZ-1855) | Avoid scanning for previously written files within Inputs / Outputs |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1837](https://issues.apache.org/jira/browse/TEZ-1837) | Restrict usage of Environment variables to main methods |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1826](https://issues.apache.org/jira/browse/TEZ-1826) | Add option to disable split grouping and local mode option for tez-examples |  Minor | . | Siddharth Seth | Jeff Zhang |
| [TEZ-1767](https://issues.apache.org/jira/browse/TEZ-1767) | Enable RLE in reducer side merge codepath |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1274](https://issues.apache.org/jira/browse/TEZ-1274) | Remove Key/Value type checks in IFile |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1233](https://issues.apache.org/jira/browse/TEZ-1233) | Allow configuration of framework parameters per vertex |  Major | . | Siddharth Seth | Jeff Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2293](https://issues.apache.org/jira/browse/TEZ-2293) | When running in "mr" mode, always use MR config settings |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2290](https://issues.apache.org/jira/browse/TEZ-2290) | Scale memory for Default Sorter down to a max of 2047 MB if configured higher |  Blocker | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-2269](https://issues.apache.org/jira/browse/TEZ-2269) | DAGAppMaster becomes unresponsive |  Major | . | Rajesh Balamohan |  |
| [TEZ-2265](https://issues.apache.org/jira/browse/TEZ-2265) | All inputs/outputs in a task share the same counter object |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2251](https://issues.apache.org/jira/browse/TEZ-2251) | Race condition in VertexImpl & Edge causes DAG to hang |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2233](https://issues.apache.org/jira/browse/TEZ-2233) | Allow EdgeProperty of an edge to be changed by VertexManager |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2232](https://issues.apache.org/jira/browse/TEZ-2232) | Allow setParallelism to be called multiple times before tasks get scheduled |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2223](https://issues.apache.org/jira/browse/TEZ-2223) | TestMockDAGAppMaster fails due to TEZ-2210 on mac |  Major | . | Jeff Zhang | Hitesh Shah |
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
| [TEZ-2082](https://issues.apache.org/jira/browse/TEZ-2082) | Race condition in TaskAttemptListenerImpTezDag.getTask() |  Major | . | Hitesh Shah | Bikas Saha |
| [TEZ-2080](https://issues.apache.org/jira/browse/TEZ-2080) | Localclient should be using tezconf in init instead of yarnconf |  Major | . | Prakash Ramachandran | Siddharth Seth |
| [TEZ-2075](https://issues.apache.org/jira/browse/TEZ-2075) | Incompatible issue caused by TEZ-1233 that TezConfiguration.TEZ\_SITE\_XML is made private |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2072](https://issues.apache.org/jira/browse/TEZ-2072) | Add missing Private annotation to createDAG in the DAG API class |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2070](https://issues.apache.org/jira/browse/TEZ-2070) | Controller class of output should be committer rather than initializer in DAG's dot file |  Trivial | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2059](https://issues.apache.org/jira/browse/TEZ-2059) | Remove TaskEventHandler in TestDAGImpl |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2009](https://issues.apache.org/jira/browse/TEZ-2009) | Change license/copyright headers to 2015 |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2000](https://issues.apache.org/jira/browse/TEZ-2000) | Source vertex exists error during DAG submission |  Major | . | Rohini Palaniswamy | Jeff Zhang |
| [TEZ-1999](https://issues.apache.org/jira/browse/TEZ-1999) | IndexOutOfBoundsException during merge |  Major | . | Rohini Palaniswamy | Rajesh Balamohan |
| [TEZ-1997](https://issues.apache.org/jira/browse/TEZ-1997) | Remove synchronization DefaultSorter::isRLENeeded() (Causes sorter to hang indefinitely in large jobs) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1996](https://issues.apache.org/jira/browse/TEZ-1996) | Update Website after 0.6.0 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-1995](https://issues.apache.org/jira/browse/TEZ-1995) | Build failure against hadoop 2.2 |  Major | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-1993](https://issues.apache.org/jira/browse/TEZ-1993) | Implement a pluggable InputSizeEstimator for grouping fairly |  Major | . | Gopal V | Gopal V |
| [TEZ-1982](https://issues.apache.org/jira/browse/TEZ-1982) | TezChild setupUgi should not be using environment |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1963](https://issues.apache.org/jira/browse/TEZ-1963) | Fix post memory merge to be \> 2 GB |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1949](https://issues.apache.org/jira/browse/TEZ-1949) | Whitelist TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges |  Critical | . | Gopal V | Gopal V |
| [TEZ-1945](https://issues.apache.org/jira/browse/TEZ-1945) | Remove 2 GB memlimit restriction in MergeManager |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1935](https://issues.apache.org/jira/browse/TEZ-1935) | Organization should be removed from http://tez.apache.org/team-list.html |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1913](https://issues.apache.org/jira/browse/TEZ-1913) | Reduce deserialize cost in ValuesIterator |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1889](https://issues.apache.org/jira/browse/TEZ-1889) | Fix test-patch to provide correct findbugs report |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1881](https://issues.apache.org/jira/browse/TEZ-1881) | Setup initial test-patch script for TEZ-1313 |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1844](https://issues.apache.org/jira/browse/TEZ-1844) | Shouldn't invoke system.exit in local mode when AM is failed to start |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1827](https://issues.apache.org/jira/browse/TEZ-1827) | MiniTezCluster takes 10 minutes to shut down |  Minor | . | Ashutosh Chauhan | Hitesh Shah |
| [TEZ-1803](https://issues.apache.org/jira/browse/TEZ-1803) | Support \> 2gb sort buffer in pipelinedsorter |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1661](https://issues.apache.org/jira/browse/TEZ-1661) | LocalTaskScheduler hangs when shutdown |  Major | . | Oleg Zhurakousky | Jeff Zhang |
| [TEZ-1593](https://issues.apache.org/jira/browse/TEZ-1593) | Refactor PipelinedSorter to remove all MMAP based ByteBuffer references |  Major | . | Gopal V | Rajesh Balamohan |
| [TEZ-167](https://issues.apache.org/jira/browse/TEZ-167) | Create tests for MR Combiner |  Major | . | Hitesh Shah | Devaraj K |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2273](https://issues.apache.org/jira/browse/TEZ-2273) | Tez UI: Support client side searching & sorting for dag tasks page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2236](https://issues.apache.org/jira/browse/TEZ-2236) | Tez UI: Support loading of all tasks in the dag tasks page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2023](https://issues.apache.org/jira/browse/TEZ-2023) | Refactor logIndividualFetchComplete() to be common for both shuffle-schedulers |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1980](https://issues.apache.org/jira/browse/TEZ-1980) | Suppress tez-dag findbugs warnings until addressed |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1951](https://issues.apache.org/jira/browse/TEZ-1951) | Fix general findbugs warnings in tez-dag |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1941](https://issues.apache.org/jira/browse/TEZ-1941) | Memory provided by *Context.getAvailableMemory needs to be setup explicitly |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1909](https://issues.apache.org/jira/browse/TEZ-1909) | Remove need to copy over all events from attempt 1 to attempt 2 dir |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1906](https://issues.apache.org/jira/browse/TEZ-1906) | Fix findbugs warnings in tez-yarn-timeline-history-with-acls |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1905](https://issues.apache.org/jira/browse/TEZ-1905) | Fix findbugs warnings in tez-tests |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1904](https://issues.apache.org/jira/browse/TEZ-1904) | Fix findbugs warnings in tez-runtime-library |  Major | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1903](https://issues.apache.org/jira/browse/TEZ-1903) | Fix findbugs warnings in tez-runtime-internals |  Major | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1902](https://issues.apache.org/jira/browse/TEZ-1902) | Fix findbugs warnings in tez-mapreduce |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1901](https://issues.apache.org/jira/browse/TEZ-1901) | Fix findbugs warnings in tez-examples |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1899](https://issues.apache.org/jira/browse/TEZ-1899) | Fix findbugs warnings in tez-common |  Major | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1898](https://issues.apache.org/jira/browse/TEZ-1898) | Fix findbugs warnings in tez-api module |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1879](https://issues.apache.org/jira/browse/TEZ-1879) | Create local UGI instances for each task and the AM, when running in LocalMode |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-485](https://issues.apache.org/jira/browse/TEZ-485) | Get rid of TezTaskStatus |  Minor | . | Siddharth Seth | Siddharth Seth |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2264](https://issues.apache.org/jira/browse/TEZ-2264) | Remove unused taskUmbilical reference in TezTaskRunner, register as running late |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2243](https://issues.apache.org/jira/browse/TEZ-2243) | documentation should explicitly specify protobuf 2.5.0 |  Minor | . | Michael Howard | Michael Howard |
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
| [TEZ-1856](https://issues.apache.org/jira/browse/TEZ-1856) | Remove LocalOnFileSortedOutput, LocalMergedInput, LocalTaskOutputFiles |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1313](https://issues.apache.org/jira/browse/TEZ-1313) | Setup pre-commit build to test submitted patches |  Major | . | Hitesh Shah | Hitesh Shah |


