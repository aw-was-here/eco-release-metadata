
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

## Release 0.5.4 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2219](https://issues.apache.org/jira/browse/TEZ-2219) | Should verify the input\_name/output\_name to be unique per vertex |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1775](https://issues.apache.org/jira/browse/TEZ-1775) | Allow setting log level per logger |  Major | . | Siddharth Seth | Siddharth Seth |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2397](https://issues.apache.org/jira/browse/TEZ-2397) | Translation of LocalResources via Tez plan serialization can be lossy |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2379](https://issues.apache.org/jira/browse/TEZ-2379) | org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: T\_ATTEMPT\_KILLED at KILLED |  Blocker | . | Rajesh Balamohan | Hitesh Shah |
| [TEZ-2369](https://issues.apache.org/jira/browse/TEZ-2369) | Add a few unit tests for RootInputInitializerManager |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2348](https://issues.apache.org/jira/browse/TEZ-2348) | EOF exception during UnorderedKVReader.next() |  Major | . | Jason Dere | Rajesh Balamohan |
| [TEZ-2334](https://issues.apache.org/jira/browse/TEZ-2334) | ContainerManagementProtocolProxy modifies IPC timeout conf without making a copy |  Major | . | Chang Li | Chang Li |
| [TEZ-2317](https://issues.apache.org/jira/browse/TEZ-2317) | Event processing backlog can result in task failures for short tasks |  Major | . | Rohini Palaniswamy | Bikas Saha |
| [TEZ-2305](https://issues.apache.org/jira/browse/TEZ-2305) | MR compatibility sleep job fails with IOException: Undefined job output-path |  Critical | . | Tassapol Athiapinya | Jeff Zhang |
| [TEZ-2303](https://issues.apache.org/jira/browse/TEZ-2303) | ConcurrentModificationException while processing recovery |  Major | . | Jason Lowe | Jeff Zhang |
| [TEZ-2289](https://issues.apache.org/jira/browse/TEZ-2289) | ATSHistoryLoggingService can generate ArrayOutOfBoundsException |  Major | . | Jonathan Eagles | Chang Li |
| [TEZ-2257](https://issues.apache.org/jira/browse/TEZ-2257) | NPEs in TaskReporter |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2240](https://issues.apache.org/jira/browse/TEZ-2240) | Fix toUpperCase/toLowerCase to use Locale.ENGLISH |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [TEZ-2238](https://issues.apache.org/jira/browse/TEZ-2238) | TestContainerReuse flaky |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2224](https://issues.apache.org/jira/browse/TEZ-2224) | EventQueue empty doesn't mean events are consumed in RecoveryService |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2221](https://issues.apache.org/jira/browse/TEZ-2221) | VertexGroup name should be unqiue |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2220](https://issues.apache.org/jira/browse/TEZ-2220) | TestTezJobs compile failure in branch 0.5 |  Major | . | Rajesh Balamohan | Hitesh Shah |
| [TEZ-2217](https://issues.apache.org/jira/browse/TEZ-2217) | The min-held-containers being released prematurely |  Major | . | Gopal V | Bikas Saha |
| [TEZ-2214](https://issues.apache.org/jira/browse/TEZ-2214) | FetcherOrderedGrouped can get stuck indefinitely when MergeManager misses memToDiskMerging |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2199](https://issues.apache.org/jira/browse/TEZ-2199) | updateLocalResourcesForInputSplits assumes wrongly that split data is on same FS as the default FS |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2193](https://issues.apache.org/jira/browse/TEZ-2193) | Check returned value from EdgeManagerPlugin before using it |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2192](https://issues.apache.org/jira/browse/TEZ-2192) | Relocalization does not check for source |  Blocker | . | Rohini Palaniswamy | Hitesh Shah |
| [TEZ-2162](https://issues.apache.org/jira/browse/TEZ-2162) | org.apache.hadoop.mapreduce.lib.output.SequenceFileOutputFormat is not recognized |  Critical | . | Oleg Zhurakousky | Jeff Zhang |
| [TEZ-2133](https://issues.apache.org/jira/browse/TEZ-2133) | Secured Impersonation: Failed to delete tez scratch data dir |  Major | . | Johannes Zillmann | Chang Li |
| [TEZ-2080](https://issues.apache.org/jira/browse/TEZ-2080) | Localclient should be using tezconf in init instead of yarnconf |  Major | . | Prakash Ramachandran | Siddharth Seth |
| [TEZ-2071](https://issues.apache.org/jira/browse/TEZ-2071) | TestAMRecovery should set test names for test DAGs |  Major | . | Bikas Saha | Jeff Zhang |
| [TEZ-2058](https://issues.apache.org/jira/browse/TEZ-2058) | Flaky test: TestTezJobs::testInvalidQueueSubmission |  Blocker | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2037](https://issues.apache.org/jira/browse/TEZ-2037) | Should log TaskAttemptFinishedEvent if taskattempt is recovered to KILLED |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2036](https://issues.apache.org/jira/browse/TEZ-2036) | OneToOneEdgeManager should enforce that source and destination tasks have same number |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2020](https://issues.apache.org/jira/browse/TEZ-2020) | For 1-1 edge vertex configured event may be sent incorrectly |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2015](https://issues.apache.org/jira/browse/TEZ-2015) | VertexImpl.doneReconfiguringVertex() should check other criteria before sending notification |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2011](https://issues.apache.org/jira/browse/TEZ-2011) | InputReadyVertexManager not resilient to updates in parallelism |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1949](https://issues.apache.org/jira/browse/TEZ-1949) | Whitelist TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges |  Critical | . | Gopal V | Gopal V |
| [TEZ-1942](https://issues.apache.org/jira/browse/TEZ-1942) | Number of tasks show in Tez UI with auto-reduce parallelism is misleading |  Blocker | . | Rajesh Balamohan | Prakash Ramachandran |
| [TEZ-1934](https://issues.apache.org/jira/browse/TEZ-1934) | TestAMRecovery may fail due to the execution order is not determined |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1931](https://issues.apache.org/jira/browse/TEZ-1931) | Publish tez version info to Timeline |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1928](https://issues.apache.org/jira/browse/TEZ-1928) | Tez local mode hang in Pig tez local mode |  Major | . | Daniel Dai | Hitesh Shah |
| [TEZ-1924](https://issues.apache.org/jira/browse/TEZ-1924) | Tez AM does not register with AM with full FQDN causing jobs to fail in some environments |  Major | . | Ivan Mitic | Ivan Mitic |
| [TEZ-1923](https://issues.apache.org/jira/browse/TEZ-1923) | FetcherOrderedGrouped gets into infinite loop due to memory pressure |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1895](https://issues.apache.org/jira/browse/TEZ-1895) | Vertex reRunning should decrease successfulMembers of VertexGroupInfo |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1893](https://issues.apache.org/jira/browse/TEZ-1893) | Verify invalid -1 parallelism in DAG.verify() |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1878](https://issues.apache.org/jira/browse/TEZ-1878) | Task-specific log level override not working in certain conditions |  Major | . | Hitesh Shah | Siddharth Seth |
| [TEZ-1861](https://issues.apache.org/jira/browse/TEZ-1861) | TestOnFileSortedOutput failing |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1852](https://issues.apache.org/jira/browse/TEZ-1852) | WordCount in local mode hangs in shuffle phase |  Critical | . | Jeff Zhang | Prakash Ramachandran |
| [TEZ-1851](https://issues.apache.org/jira/browse/TEZ-1851) | FileSystem counters do not differentiate between different FileSystems |  Critical | . | Prasanth Jayachandran | Siddharth Seth |
| [TEZ-1836](https://issues.apache.org/jira/browse/TEZ-1836) | Provide better error messages when tez.runtime.io.sort.mb is wrongly configured |  Major | . | Rajesh Balamohan | Vasanth kumar RJ |
| [TEZ-1800](https://issues.apache.org/jira/browse/TEZ-1800) | Integer overflow in ExternalSorter.getInitialMemoryRequirement() |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1642](https://issues.apache.org/jira/browse/TEZ-1642) | TestAMRecovery sometimes fail |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1560](https://issues.apache.org/jira/browse/TEZ-1560) | Invalid state machine handling for V\_SOURCE\_VERTEX\_RECOVERED in recovery |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-900](https://issues.apache.org/jira/browse/TEZ-900) | Confusing message for incorrect queue for some tez examples |  Major | . | Jonathan Eagles | Chang Li |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1962](https://issues.apache.org/jira/browse/TEZ-1962) | Running out of threads in tez local mode |  Critical | . | Gunther Hagleitner | Siddharth Seth |
| [TEZ-1521](https://issues.apache.org/jira/browse/TEZ-1521) | VertexDataMovementEventsGeneratedEvent may be logged twice in recovery log |  Critical | . | Jeff Zhang | Jeff Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


