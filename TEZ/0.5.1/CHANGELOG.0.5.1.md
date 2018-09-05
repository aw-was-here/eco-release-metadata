
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

## Release 0.5.1 - 2014-10-02

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1578](https://issues.apache.org/jira/browse/TEZ-1578) | Remove TeraSort from Tez codebase |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1499](https://issues.apache.org/jira/browse/TEZ-1499) | Add SortMergeJoinExample to tez-examples |  Major | . | Jeff Zhang | Jeff Zhang |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1539](https://issues.apache.org/jira/browse/TEZ-1539) | Change InputInitializerEvent semantics to SEND\_ONCE\_ON\_SUCCESS |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1534](https://issues.apache.org/jira/browse/TEZ-1534) | Make client side configs available to AM and tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1533](https://issues.apache.org/jira/browse/TEZ-1533) | Request Events more often if a complete set of events is received by a task |  Major | . | Siddharth Seth | Siddharth Seth |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1624](https://issues.apache.org/jira/browse/TEZ-1624) | Flaky tests in TestContainerReuse due to race condition in DelayedContainerManager thread |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1613](https://issues.apache.org/jira/browse/TEZ-1613) | Decrease running time for TestAMRecovery |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1612](https://issues.apache.org/jira/browse/TEZ-1612) | ShuffleVertexManager's EdgeManager should not hard code source num tasks |  Major | . | Daniel Dai | Bikas Saha |
| [TEZ-1611](https://issues.apache.org/jira/browse/TEZ-1611) | Change DataSource/Sink to be able to supply URIs for credentials |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1609](https://issues.apache.org/jira/browse/TEZ-1609) | Add hostname to logIdentifiers of fetchers for easy debugging |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1599](https://issues.apache.org/jira/browse/TEZ-1599) | TezClient.preWarm() is not enabled |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1598](https://issues.apache.org/jira/browse/TEZ-1598) | DAGClientTimelineImpl uses ReflectiveOperationException (which has JDK 1.7 dependency) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1597](https://issues.apache.org/jira/browse/TEZ-1597) | ImmediateStartVertexManager should handle corner case of vertex having zero tasks |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1592](https://issues.apache.org/jira/browse/TEZ-1592) | Vertex should wait for all initializers to finish before moving to INITED state |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1587](https://issues.apache.org/jira/browse/TEZ-1587) | Some tez-examples fail in local mode |  Major | . | Jeff Zhang | Prakash Ramachandran |
| [TEZ-1585](https://issues.apache.org/jira/browse/TEZ-1585) | Memory leak in tez session mode |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1581](https://issues.apache.org/jira/browse/TEZ-1581) | GroupByOrderByMRRTest no longer functional |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1580](https://issues.apache.org/jira/browse/TEZ-1580) | Change TestOrderedWordCount to optionally use MR configs |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1575](https://issues.apache.org/jira/browse/TEZ-1575) | MRRSleepJob does not pick MR settings for container size and java opts |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1574](https://issues.apache.org/jira/browse/TEZ-1574) | Support additional formats for the tez deployed archive |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1571](https://issues.apache.org/jira/browse/TEZ-1571) | Add create method for DataSinkDescriptor |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1563](https://issues.apache.org/jira/browse/TEZ-1563) | TezClient.submitDAGSession alters DAG local resources regardless of DAG submission |  Major | . | Josh Elser | Bikas Saha |
| [TEZ-1549](https://issues.apache.org/jira/browse/TEZ-1549) | [Umbrella] Unit tests fail on Windows |  Major | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1548](https://issues.apache.org/jira/browse/TEZ-1548) | ShuffleVertexManagerConfigBuilder.setSlowStartMinSrcCompletionFraction setting wrong value |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1544](https://issues.apache.org/jira/browse/TEZ-1544) | Link to release artifacts for 0.5.0 does not point to a specific link for 0.5.0 |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1543](https://issues.apache.org/jira/browse/TEZ-1543) | Shuffle Errors on heavy load (causing task retries) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1536](https://issues.apache.org/jira/browse/TEZ-1536) | Fix spelling typo "configurartion" in TezClientUtils |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1527](https://issues.apache.org/jira/browse/TEZ-1527) | Improvement on waitForCompletion API |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1524](https://issues.apache.org/jira/browse/TEZ-1524) | getDAGStatus seems to fork out the entire JVM on non-secure clusters |  Major | . | Gopal V | Gopal V |
| [TEZ-1519](https://issues.apache.org/jira/browse/TEZ-1519) | TezTaskRunner should not initialize TezConfiguration in TezChild |  Blocker | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1515](https://issues.apache.org/jira/browse/TEZ-1515) | DAGAppMaster : Thread contentions due to org.apache.tez.common.counters.ResourceBundles |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1495](https://issues.apache.org/jira/browse/TEZ-1495) | ATS integration for TezClient |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-1494](https://issues.apache.org/jira/browse/TEZ-1494) | DAG hangs waiting for ShuffleManager.getNextInput() |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1488](https://issues.apache.org/jira/browse/TEZ-1488) | Rename HashComparator to ProxyComparator and implement in TezBytesComparator |  Major | . | Gopal V | Gopal V |
| [TEZ-1447](https://issues.apache.org/jira/browse/TEZ-1447) | Provide a mechanism for InputInitializers to know about interesting Vertex state changes |  Blocker | . | Gunther Hagleitner | Siddharth Seth |
| [TEZ-1433](https://issues.apache.org/jira/browse/TEZ-1433) | Invalid credentials can be used when a DAG is submitted to a session which has timed out |  Blocker | . | Siddharth Seth | Bikas Saha |
| [TEZ-1362](https://issues.apache.org/jira/browse/TEZ-1362) | Remove DAG\_COMPLETED in DAGEventType |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1310](https://issues.apache.org/jira/browse/TEZ-1310) | Update website documentation framework |  Major | . | Hitesh Shah | Jonathan Eagles |
| [TEZ-978](https://issues.apache.org/jira/browse/TEZ-978) | Enhance auto parallelism tuning for queries having empty outputs or data skewness |  Major | . | Rajesh Balamohan | Rajesh Balamohan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1569](https://issues.apache.org/jira/browse/TEZ-1569) | Add tests for preemption |  Major | . | Bikas Saha | Bikas Saha |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1618](https://issues.apache.org/jira/browse/TEZ-1618) | LocalTaskSchedulerService.getTotalResources() and getAvailableResources() can get negative if JVM memory is larger than 2GB |  Major | . | Chen He | Chen He |
| [TEZ-1568](https://issues.apache.org/jira/browse/TEZ-1568) | Add system test for propagation of diagnostics for errors |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1559](https://issues.apache.org/jira/browse/TEZ-1559) | Add system tests for AM recovery |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1555](https://issues.apache.org/jira/browse/TEZ-1555) | TestTezClientUtils.validateSetTezJarLocalResourcesDefinedButEmpty failing on Windows |  Major | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1554](https://issues.apache.org/jira/browse/TEZ-1554) | Failing tests in TestMRHelpers related to environment on Windows |  Major | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1553](https://issues.apache.org/jira/browse/TEZ-1553) | Multiple failures in testing path-related tests in TestTezCommonUtils for Windows |  Major | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1550](https://issues.apache.org/jira/browse/TEZ-1550) | TestEnvironmentUpdateUtils.testMultipleUpdateEnvironment fails on Windows |  Major | . | Hitesh Shah | Prakash Ramachandran |
| [TEZ-1345](https://issues.apache.org/jira/browse/TEZ-1345) | Add checks to guarantee all init events are written to recovery to consider vertex initialized |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1157](https://issues.apache.org/jira/browse/TEZ-1157) | Optimize broadcast :- Tasks pertaining to same job in same machine should not download multiple copies of broadcast data |  Major | . | Rajesh Balamohan | Gopal V |
| [TEZ-853](https://issues.apache.org/jira/browse/TEZ-853) | Support counters recovery |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-850](https://issues.apache.org/jira/browse/TEZ-850) | Recovery unit tests |  Major | . | Hitesh Shah | Jeff Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


