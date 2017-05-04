
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

## Release 0.8.1-alpha - 2015-10-12



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2662](https://issues.apache.org/jira/browse/TEZ-2662) | Provide a way to check whether AM or task opts are valid and error if not |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2294](https://issues.apache.org/jira/browse/TEZ-2294) | Add tez-site-template.xml with description of config properties |  Major | . | Rajesh Balamohan | Hitesh Shah |
| [TEZ-2767](https://issues.apache.org/jira/browse/TEZ-2767) | Make TezMxBeanResourceCalculator the default resource calculator |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2754](https://issues.apache.org/jira/browse/TEZ-2754) | Tez UI: StartTime & EndTime is not displayed with right format in Graphical View |  Major | . | Jeff Zhang | Sreenath Somarajapuram |
| [TEZ-2768](https://issues.apache.org/jira/browse/TEZ-2768) | Log a useful error message when the summary stream cannot be closed when shutting down an AM |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2784](https://issues.apache.org/jira/browse/TEZ-2784) | optimize TaskImpl.isFinished() |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2643](https://issues.apache.org/jira/browse/TEZ-2643) | Minimize number of empty spills in Pipelined Sorter |  Major | . | Saikat | Saikat |
| [TEZ-2836](https://issues.apache.org/jira/browse/TEZ-2836) | Avoid setting framework/system counters for tasks running in threads |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2758](https://issues.apache.org/jira/browse/TEZ-2758) | Remove append API in RecoveryService after TEZ-1909 |  Major | . | Jeff Zhang | Jeff Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2742](https://issues.apache.org/jira/browse/TEZ-2742) | VertexImpl.finished() terminationCause hides member var of the same name |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2757](https://issues.apache.org/jira/browse/TEZ-2757) | Fix download links for Tez releases |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2750](https://issues.apache.org/jira/browse/TEZ-2750) | Shuffle may not shutdown in case of a fetch failure, causing it to hang |  Major | . | André Kelpe | Siddharth Seth |
| [TEZ-2765](https://issues.apache.org/jira/browse/TEZ-2765) | Change Xmlwriter to use defaultValue instead of value tag |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2755](https://issues.apache.org/jira/browse/TEZ-2755) | Fix findbugs warning in TezClient |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2745](https://issues.apache.org/jira/browse/TEZ-2745) | ClassNotFoundException of user code should fail dag |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2788](https://issues.apache.org/jira/browse/TEZ-2788) | Allow TezAnalyzerBase to parse SimpleHistory logs |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2783](https://issues.apache.org/jira/browse/TEZ-2783) | Refactor analyzers to extend TezAnalyzerBase |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2799](https://issues.apache.org/jira/browse/TEZ-2799) | SimpleHistoryParser NPE |  Major | . | Bikas Saha | Rajesh Balamohan |
| [TEZ-2808](https://issues.apache.org/jira/browse/TEZ-2808) | Race condition between preemption and container assignment |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2809](https://issues.apache.org/jira/browse/TEZ-2809) | Minimal distribution compiled on 2.6 fails to run on 2.7 |  Blocker | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2787](https://issues.apache.org/jira/browse/TEZ-2787) | Tez AM should have java.io.tmpdir=./tmp to be consistent with tasks |  Major | . | Jason Lowe | Jonathan Eagles |
| [TEZ-2660](https://issues.apache.org/jira/browse/TEZ-2660) | Tez UI: need to show application page even if system metrics publish is disabled. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2825](https://issues.apache.org/jira/browse/TEZ-2825) | Report progress in terms of completed tasks to reduce load on AM for Tez UI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2827](https://issues.apache.org/jira/browse/TEZ-2827) | Increase timeout for TestFetcher testInputAttemptIdentifierMap |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2816](https://issues.apache.org/jira/browse/TEZ-2816) | Preemption sometimes does not respect heartbeats between preemptions |  Major | . | Jeff Zhang | Bikas Saha |
| [TEZ-2097](https://issues.apache.org/jira/browse/TEZ-2097) | TEZ-UI Add dag logs backend support |  Critical | UI | Jeff Zhang | Jonathan Eagles |
| [TEZ-2834](https://issues.apache.org/jira/browse/TEZ-2834) | Make Tez preemption resilient to incorrect free resource reported by YARN |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-2833](https://issues.apache.org/jira/browse/TEZ-2833) | Dont create extra directory during ATS file download |  Major | . | Bikas Saha | Rajesh Balamohan |
| [TEZ-2847](https://issues.apache.org/jira/browse/TEZ-2847) | Tez UI: Task details doesn\'t gets updated on manual refresh after job complete |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2716](https://issues.apache.org/jira/browse/TEZ-2716) | DefaultSorter.isRleNeeded not thread safe |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2853](https://issues.apache.org/jira/browse/TEZ-2853) | Tez UI: task attempt page is coming empty |  Blocker | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2398](https://issues.apache.org/jira/browse/TEZ-2398) | Flaky test: TestFaultTolerance |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-2859](https://issues.apache.org/jira/browse/TEZ-2859) | TestMergeManager.testLocalDiskMergeMultipleTasks failing |  Blocker | . | Hitesh Shah |  |
| [TEZ-2851](https://issues.apache.org/jira/browse/TEZ-2851) | Support a way for upstream applications to pass in a caller context to Tez |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2855](https://issues.apache.org/jira/browse/TEZ-2855) | Potential NPE while routing VertexManager events |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2860](https://issues.apache.org/jira/browse/TEZ-2860) | NPE in DAGClientImpl |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2868](https://issues.apache.org/jira/browse/TEZ-2868) | Fix setting Caller Context in Tez Examples |  Major | . | Hitesh Shah | Hitesh Shah |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2739](https://issues.apache.org/jira/browse/TEZ-2739) | Improve handling of read errors in critical path analyzer |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2761](https://issues.apache.org/jira/browse/TEZ-2761) | Tez UI: update the progress on the dag and vertices pages with info from AM |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2766](https://issues.apache.org/jira/browse/TEZ-2766) | Tez UI: Add vertex in-progress info in DAG details. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2778](https://issues.apache.org/jira/browse/TEZ-2778) | Improvements to handle multiple read errors with complex DAGs |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2782](https://issues.apache.org/jira/browse/TEZ-2782) | VertexInfo.getAvgExecutionTimeInterval throws NPE when task does not have any valid attempts info |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2807](https://issues.apache.org/jira/browse/TEZ-2807) | Log data in the finish event instead of the start event |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2792](https://issues.apache.org/jira/browse/TEZ-2792) | Add AM web service API for tasks. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2780](https://issues.apache.org/jira/browse/TEZ-2780) | Tez UI: Update All Tasks page while in progress. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2810](https://issues.apache.org/jira/browse/TEZ-2810) | Support for showing allocation delays due to internal preemption |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2813](https://issues.apache.org/jira/browse/TEZ-2813) | Tez UI: add counter data for rest api calls to AM Web Services v2 |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2817](https://issues.apache.org/jira/browse/TEZ-2817) | Tez UI: update in progress counter data for the dag vertices and tasks table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2786](https://issues.apache.org/jira/browse/TEZ-2786) | Tez UI: Update vertex, task & attempt details page while in progress. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2812](https://issues.apache.org/jira/browse/TEZ-2812) | Tez UI: Update task & attempt tables while in progress. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2774](https://issues.apache.org/jira/browse/TEZ-2774) | Reduce logging in the AM, and parts of the runtime |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2832](https://issues.apache.org/jira/browse/TEZ-2832) | Support tests for both SimpleHistory logging and ATS logging |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2775](https://issues.apache.org/jira/browse/TEZ-2775) | Improve and consolidate logging in Runtime components. |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2843](https://issues.apache.org/jira/browse/TEZ-2843) | Tez UI: Show error if in progress fails due to AM not reachable |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2842](https://issues.apache.org/jira/browse/TEZ-2842) | Tez UI: Update Tez App details page while in-progress |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2747](https://issues.apache.org/jira/browse/TEZ-2747) | Update master to reflect 0.8.0-alpha release |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2762](https://issues.apache.org/jira/browse/TEZ-2762) | 0.8.0-alpha post release vote changes |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2857](https://issues.apache.org/jira/browse/TEZ-2857) | Flakey tests in TestDAGImpl |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2858](https://issues.apache.org/jira/browse/TEZ-2858) | Stop using System.currentTimeMillis in TestInputReadyTracker |  Major | . | Siddharth Seth | Siddharth Seth |


