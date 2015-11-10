
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

## Release 0.7.1 - Unreleased (as of 2015-11-10)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2679](https://issues.apache.org/jira/browse/TEZ-2679) | Admin forms of launch env settings |  Major | . | Jason Lowe | Jonathan Eagles |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2886](https://issues.apache.org/jira/browse/TEZ-2886) | Ability to merge AM credentials with DAG credentials |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-2768](https://issues.apache.org/jira/browse/TEZ-2768) | Log a useful error message when the summary stream cannot be closed when shutting down an AM |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2767](https://issues.apache.org/jira/browse/TEZ-2767) | Make TezMxBeanResourceCalculator the default resource calculator |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2758](https://issues.apache.org/jira/browse/TEZ-2758) | Remove append API in RecoveryService after TEZ-1909 |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2754](https://issues.apache.org/jira/browse/TEZ-2754) | Tez UI: StartTime & EndTime is not displayed with right format in Graphical View |  Major | . | Jeff Zhang | Sreenath Somarajapuram |
| [TEZ-2719](https://issues.apache.org/jira/browse/TEZ-2719) | Consider reducing logs in unordered fetcher with shared-fetch option |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2662](https://issues.apache.org/jira/browse/TEZ-2662) | Provide a way to check whether AM or task opts are valid and error if not |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2575](https://issues.apache.org/jira/browse/TEZ-2575) | Handle KeyValue pairs size which do not fit in a single block in PipelinedSorter |  Major | . | Saikat | Saikat |
| [TEZ-2561](https://issues.apache.org/jira/browse/TEZ-2561) | Port for TaskAttemptListenerImpTezDag should be configurable |  Major | . | Johannes Zillmann | Jeff Zhang |
| [TEZ-2478](https://issues.apache.org/jira/browse/TEZ-2478) | Move OneToOne routing to store events in Tasks |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2211](https://issues.apache.org/jira/browse/TEZ-2211) | Tez UI: Allow users to configure timezone |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2198](https://issues.apache.org/jira/browse/TEZ-2198) | Fix sorter spill counts |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2096](https://issues.apache.org/jira/browse/TEZ-2096) | TEZ-UI : Add link to view AM log of finished & running apps |  Major | UI | Rajesh Balamohan | Jonathan Eagles |
| [TEZ-1961](https://issues.apache.org/jira/browse/TEZ-1961) | Remove misleading exception "No running dag" from AM logs |  Critical | . | Siddharth Seth | Jeff Zhang |
| [TEZ-1314](https://issues.apache.org/jira/browse/TEZ-1314) | Port MAPREDUCE-5821 to Tez |  Major | . | Siddharth Seth | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2929](https://issues.apache.org/jira/browse/TEZ-2929) | Tez UI: Dag details page displays vertices to be running even when dag have completed. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2922](https://issues.apache.org/jira/browse/TEZ-2922) | Tez Live UI gives access denied for admins |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2909](https://issues.apache.org/jira/browse/TEZ-2909) | Tez UI: Application link in All DAGs table is disable when applicationhistory is unavailable. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2907](https://issues.apache.org/jira/browse/TEZ-2907) | NPE in IFile.Reader.getLength during final merge operation |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2904](https://issues.apache.org/jira/browse/TEZ-2904) | Pig can't specify task specific command opts |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2900](https://issues.apache.org/jira/browse/TEZ-2900) | Ignore V\_INPUT\_DATA\_INFORMATION when vertex is in Failed/Killed/Error |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2899](https://issues.apache.org/jira/browse/TEZ-2899) | Tez UI: DAG getting created with huge horizontal gap in between vertices |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2896](https://issues.apache.org/jira/browse/TEZ-2896) | Fix thread names used during Input/Output initialization |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2887](https://issues.apache.org/jira/browse/TEZ-2887) | Tez build failure due to missing dependency in pom files |  Major | . | Ashish Singh | Ashish Singh |
| [TEZ-2885](https://issues.apache.org/jira/browse/TEZ-2885) | Remove counter logs from AMWebController |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2874](https://issues.apache.org/jira/browse/TEZ-2874) | Improved logging for caller context |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2868](https://issues.apache.org/jira/browse/TEZ-2868) | Fix setting Caller Context in Tez Examples |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2866](https://issues.apache.org/jira/browse/TEZ-2866) | Tez UI: Newly added columns wont be displayed by default in tables |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2860](https://issues.apache.org/jira/browse/TEZ-2860) | NPE in DAGClientImpl |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2855](https://issues.apache.org/jira/browse/TEZ-2855) | Potential NPE while routing VertexManager events |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2853](https://issues.apache.org/jira/browse/TEZ-2853) | Tez UI: task attempt page is coming empty |  Blocker | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2851](https://issues.apache.org/jira/browse/TEZ-2851) | Support a way for upstream applications to pass in a caller context to Tez |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2850](https://issues.apache.org/jira/browse/TEZ-2850) | Tez MergeManager OOM for small Map Outputs |  Major | . | Saikat | Jonathan Eagles |
| [TEZ-2847](https://issues.apache.org/jira/browse/TEZ-2847) | Tez UI: Task details doesn't gets updated on manual refresh after job complete |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2834](https://issues.apache.org/jira/browse/TEZ-2834) | Make Tez preemption resilient to incorrect free resource reported by YARN |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-2829](https://issues.apache.org/jira/browse/TEZ-2829) | Tez UI: minor fixes to in-progress update of UI from AM |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2825](https://issues.apache.org/jira/browse/TEZ-2825) | Report progress in terms of completed tasks to reduce load on AM for Tez UI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2816](https://issues.apache.org/jira/browse/TEZ-2816) | Preemption sometimes does not respect heartbeats between preemptions |  Major | . | Jeff Zhang | Bikas Saha |
| [TEZ-2809](https://issues.apache.org/jira/browse/TEZ-2809) | Minimal distribution compiled on 2.6 fails to run on 2.7 |  Blocker | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2808](https://issues.apache.org/jira/browse/TEZ-2808) | Race condition between preemption and container assignment |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2787](https://issues.apache.org/jira/browse/TEZ-2787) | Tez AM should have java.io.tmpdir=./tmp to be consistent with tasks |  Major | . | Jason Lowe | Jonathan Eagles |
| [TEZ-2781](https://issues.apache.org/jira/browse/TEZ-2781) | Fallback to send only TaskAttemptFailedEvent if taskFailed heartbeat fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2755](https://issues.apache.org/jira/browse/TEZ-2755) | Fix findbugs warning in TezClient |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2752](https://issues.apache.org/jira/browse/TEZ-2752) | logUnsuccessful completion in Attempt should write original finish time to ATS |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2745](https://issues.apache.org/jira/browse/TEZ-2745) | ClassNotFoundException of user code should fail dag |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2742](https://issues.apache.org/jira/browse/TEZ-2742) | VertexImpl.finished() terminationCause hides member var of the same name |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2732](https://issues.apache.org/jira/browse/TEZ-2732) | DefaultSorter throws ArrayIndex exceptions on 2047 Mb size sort buffers |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2716](https://issues.apache.org/jira/browse/TEZ-2716) | DefaultSorter.isRleNeeded not thread safe |  Major | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-2687](https://issues.apache.org/jira/browse/TEZ-2687) | ATS History shutdown happens before the min-held containers are released |  Major | . | Gopal V | Jeff Zhang |
| [TEZ-2663](https://issues.apache.org/jira/browse/TEZ-2663) | SessionNotRunning exceptions are wrapped in a ServiceException from a dying AM |  Major | . | Gopal V | Hitesh Shah |
| [TEZ-2660](https://issues.apache.org/jira/browse/TEZ-2660) | Tez UI: need to show application page even if system metrics publish is disabled. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2636](https://issues.apache.org/jira/browse/TEZ-2636) | MRInput and MultiMRInput should work for cases when there are 0 physical inputs |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2635](https://issues.apache.org/jira/browse/TEZ-2635) | Limit number of attempts being downloaded in unordered fetch |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2630](https://issues.apache.org/jira/browse/TEZ-2630) | TezChild receives IP address instead of FQDN |  Critical | . | Rajat Jain | Hitesh Shah |
| [TEZ-2629](https://issues.apache.org/jira/browse/TEZ-2629) | LimitExceededException in Tez client when DAG has exceeds the default max counters |  Major | . | Jason Dere | Siddharth Seth |
| [TEZ-2623](https://issues.apache.org/jira/browse/TEZ-2623) | Fix module dependencies related to hadoop-auth |  Major | . | Rajat Jain | Rajat Jain |
| [TEZ-2602](https://issues.apache.org/jira/browse/TEZ-2602) | Throwing EOFException when launching MR job |  Major | . | Tsuyoshi Ozawa | Rajesh Balamohan |
| [TEZ-2600](https://issues.apache.org/jira/browse/TEZ-2600) | When used with HDFS federation(viewfs) ,tez will throw a error |  Major | . | Xiaowei Wang | Xiaowei Wang |
| [TEZ-2579](https://issues.apache.org/jira/browse/TEZ-2579) | Incorrect comparison of TaskAttemptId |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2568](https://issues.apache.org/jira/browse/TEZ-2568) | V\_INPUT\_DATA\_INFORMATION may happen after vertex is initialized |  Blocker | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2567](https://issues.apache.org/jira/browse/TEZ-2567) | Tez UI: download dag data does not work within ambari |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2566](https://issues.apache.org/jira/browse/TEZ-2566) | Allow TaskAttemptFinishedEvent without TaskAttemptStartedEvent when it is KILLED/FAILED |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2560](https://issues.apache.org/jira/browse/TEZ-2560) | fix tex-ui build for maven 3.3+ |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2554](https://issues.apache.org/jira/browse/TEZ-2554) | Tez UI: View log link does not correctly propagate login crendential to read log from yarn web. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2553](https://issues.apache.org/jira/browse/TEZ-2553) | Tez UI: Tez UI Nits |  Minor | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2552](https://issues.apache.org/jira/browse/TEZ-2552) | CRC errors can cause job to run for very long time in large jobs |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2548](https://issues.apache.org/jira/browse/TEZ-2548) | TezClient submitDAG can hang if the AM is in the process of shutting down |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2547](https://issues.apache.org/jira/browse/TEZ-2547) | Tez UI: Download Data fails on secure, cross-origin clusters |  Critical | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2545](https://issues.apache.org/jira/browse/TEZ-2545) | It is not necessary to start the vertex group commit when DAG is in TERMINATING |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2541](https://issues.apache.org/jira/browse/TEZ-2541) | DAGClientImpl enable TimelineClient check is wrong. |  Major | . | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2540](https://issues.apache.org/jira/browse/TEZ-2540) | Create both tez-dist minimal and minimal.tar.gz formats as part of build |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2537](https://issues.apache.org/jira/browse/TEZ-2537) | mapreduce.map.env and mapreduce.reduce.env need to fall back to mapred.child.env for compatibility |  Major | . | Jonathan Eagles | Rohini Palaniswamy |
| [TEZ-2534](https://issues.apache.org/jira/browse/TEZ-2534) | Error handling summary event when shutting down AM |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2533](https://issues.apache.org/jira/browse/TEZ-2533) | AM deadlock when shutdown |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2527](https://issues.apache.org/jira/browse/TEZ-2527) | Tez UI: Application hangs on entering erroneous RegEx in counter table search box. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2523](https://issues.apache.org/jira/browse/TEZ-2523) | Tez UI: derive applicationId from dag/vertex id instead of relying on json data |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2509](https://issues.apache.org/jira/browse/TEZ-2509) | YarnTaskSchedulerService should not try to allocate containers if AM is shutting down |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2505](https://issues.apache.org/jira/browse/TEZ-2505) | PipelinedSorter uses Comparator objects concurrently from multiple threads |  Major | . | Cyrille Chépélov | Rajesh Balamohan |
| [TEZ-2504](https://issues.apache.org/jira/browse/TEZ-2504) | Tez UI: tables - show status column without scrolling, numeric 0 shown as Not available |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2489](https://issues.apache.org/jira/browse/TEZ-2489) | Disable warn log for Timeline ACL error when tez.allow.disabled.timeline-domains set to true |  Major | . | Hitesh Shah | Chang Li |
| [TEZ-2483](https://issues.apache.org/jira/browse/TEZ-2483) | Tez should close task if processor fail |  Major | . | Daniel Dai | Jeff Zhang |
| [TEZ-2482](https://issues.apache.org/jira/browse/TEZ-2482) | Tez UI: Mouse events not working on IE11 |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2481](https://issues.apache.org/jira/browse/TEZ-2481) | Tez UI: graphical view does not render properly on IE11 |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2475](https://issues.apache.org/jira/browse/TEZ-2475) | Tez local mode hanging in big testsuite |  Major | . | André Kelpe | Siddharth Seth |
| [TEZ-2474](https://issues.apache.org/jira/browse/TEZ-2474) | The old taskNum is logged incorrectly when parallelism is changed |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2460](https://issues.apache.org/jira/browse/TEZ-2460) | Temporary solution for issue due to YARN-2560 |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | Tez UI: Dag view caching, error handling and minor layout changes |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2453](https://issues.apache.org/jira/browse/TEZ-2453) | Tez UI: show the dagInfo is the application has set the same. |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2440](https://issues.apache.org/jira/browse/TEZ-2440) | Sorter should check for indexCacheList.size() in flush() |  Major | . | Rajesh Balamohan | Mit Desai |
| [TEZ-2398](https://issues.apache.org/jira/browse/TEZ-2398) | Flaky test: TestFaultTolerance |  Major | . | Rajesh Balamohan | Bikas Saha |
| [TEZ-2391](https://issues.apache.org/jira/browse/TEZ-2391) | TestVertexImpl timing out at times on jenkins builds |  Blocker | . | Hitesh Shah | Mit Desai |
| [TEZ-2311](https://issues.apache.org/jira/browse/TEZ-2311) | AM can hang if kill received while recovering from previous attempt |  Major | . | Jason Lowe | Jeff Zhang |
| [TEZ-2304](https://issues.apache.org/jira/browse/TEZ-2304) | InvalidStateTransitonException TA\_SCHEDULE at START\_WAIT during recovery |  Major | . | Jason Lowe | Jeff Zhang |
| [TEZ-2300](https://issues.apache.org/jira/browse/TEZ-2300) | TezClient.stop() takes a lot of time or does not work sometimes |  Major | . | Rohini Palaniswamy | Jonathan Eagles |
| [TEZ-2291](https://issues.apache.org/jira/browse/TEZ-2291) | TEZ UI: Improper vertex name in tables. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2097](https://issues.apache.org/jira/browse/TEZ-2097) | TEZ-UI Add dag logs backend support |  Critical | UI | Jeff Zhang | Jonathan Eagles |
| [TEZ-1529](https://issues.apache.org/jira/browse/TEZ-1529) | ATS and TezClient integration  in secure kerberos enabled cluster |  Blocker | . | Prakash Ramachandran | Prakash Ramachandran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2882](https://issues.apache.org/jira/browse/TEZ-2882) | Consider improving fetch failure handling |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2843](https://issues.apache.org/jira/browse/TEZ-2843) | Tez UI: Show error if in progress fails due to AM not reachable |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2842](https://issues.apache.org/jira/browse/TEZ-2842) | Tez UI: Update Tez App details page while in-progress |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2817](https://issues.apache.org/jira/browse/TEZ-2817) | Tez UI: update in progress counter data for the dag vertices and tasks table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2813](https://issues.apache.org/jira/browse/TEZ-2813) | Tez UI: add counter data for rest api calls to AM Web Services v2 |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2812](https://issues.apache.org/jira/browse/TEZ-2812) | Tez UI: Update task & attempt tables while in progress. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2807](https://issues.apache.org/jira/browse/TEZ-2807) | Log data in the finish event instead of the start event |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2792](https://issues.apache.org/jira/browse/TEZ-2792) | Add AM web service API for tasks. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2786](https://issues.apache.org/jira/browse/TEZ-2786) | Tez UI: Update vertex, task & attempt details page while in progress. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2780](https://issues.apache.org/jira/browse/TEZ-2780) | Tez UI: Update All Tasks page while in progress. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2766](https://issues.apache.org/jira/browse/TEZ-2766) | Tez UI: Add vertex in-progress info in DAG details. |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2761](https://issues.apache.org/jira/browse/TEZ-2761) | Tez UI: update the progress on the dag and vertices pages with info from AM |  Major | UI | Prakash Ramachandran | Prakash Ramachandran |
| [TEZ-2731](https://issues.apache.org/jira/browse/TEZ-2731) | Fix Tez GenericCounter performance bottleneck |  Major | . | Gopal V | Gopal V |
| [TEZ-2549](https://issues.apache.org/jira/browse/TEZ-2549) | Reduce Counter Load on the Timeline Server |  Major | . | Jonathan Eagles | Jason Lowe |
| [TEZ-2511](https://issues.apache.org/jira/browse/TEZ-2511) | Add exitCode to diagnostics when container fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-814](https://issues.apache.org/jira/browse/TEZ-814) | Improve heuristic for determining a task has failed outputs |  Major | . | Bikas Saha | Bikas Saha |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2858](https://issues.apache.org/jira/browse/TEZ-2858) | Stop using System.currentTimeMillis in TestInputReadyTracker |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2857](https://issues.apache.org/jira/browse/TEZ-2857) | Flakey tests in TestDAGImpl |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2844](https://issues.apache.org/jira/browse/TEZ-2844) | Backport TEZ-2775 to branch-0.7 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2830](https://issues.apache.org/jira/browse/TEZ-2830) | Backport TEZ-2774 to branch-0.7 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2828](https://issues.apache.org/jira/browse/TEZ-2828) | Fix typo in "Shuffle assigned " log statement in shuffle.orderedgrouped.Shuffle |  Trivial | . | Johannes Zillmann |  |
| [TEZ-2789](https://issues.apache.org/jira/browse/TEZ-2789) | Backport events added in TEZ-2612 to branch-0.7 |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2734](https://issues.apache.org/jira/browse/TEZ-2734) | Add a test to verify the filename generated by OnDiskMerge |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2546](https://issues.apache.org/jira/browse/TEZ-2546) | Tez UI: Fetch hive query text from timeline if dagInfo is not set |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2513](https://issues.apache.org/jira/browse/TEZ-2513) | Tez UI: Allow filtering by DAG ID on All dags table |  Major | UI | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | Tez UI: Generic changes based on feedbacks. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2409](https://issues.apache.org/jira/browse/TEZ-2409) | Allow different edges to have different routing plugins |  Critical | . | Bikas Saha | Bikas Saha |


