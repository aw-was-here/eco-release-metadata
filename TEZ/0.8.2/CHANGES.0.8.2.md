
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

## Release 0.8.2 - Unreleased (as of 2015-12-15)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2949](https://issues.apache.org/jira/browse/TEZ-2949) | Allow duplicate dag names within session for Tez |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2948](https://issues.apache.org/jira/browse/TEZ-2948) | Stop using dagName in the dagComplete notification to TaskCommunicators |  Major | . | Siddharth Seth | Siddharth Seth |
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
| [TEZ-2935](https://issues.apache.org/jira/browse/TEZ-2935) | Add MR slow start translation for ShuffleVertexManager |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2886](https://issues.apache.org/jira/browse/TEZ-2886) | Ability to merge AM credentials with DAG credentials |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-2879](https://issues.apache.org/jira/browse/TEZ-2879) | While grouping splits, allow an alternate list of preferred locations to be provided per split |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2581](https://issues.apache.org/jira/browse/TEZ-2581) | Umbrella for Tez Recovery Redesign |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2244](https://issues.apache.org/jira/browse/TEZ-2244) | PipelinedSorter: Progressive allocation for sort-buffers |  Major | . | Gopal V | Rajesh Balamohan |
| [TEZ-2096](https://issues.apache.org/jira/browse/TEZ-2096) | TEZ-UI : Add link to view AM log of finished & running apps |  Major | UI | Rajesh Balamohan | Jonathan Eagles |
| [TEZ-1692](https://issues.apache.org/jira/browse/TEZ-1692) | Reduce code duplication between TezMapredSplitsGrouper and TezMapreduceSplitsGrouper |  Major | . | Siddharth Seth | Siddharth Seth |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2995](https://issues.apache.org/jira/browse/TEZ-2995) | Timeline primary filter should only be on callerId and not type |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2990](https://issues.apache.org/jira/browse/TEZ-2990) | Change test-patch.sh to run through all tests, despite failures in upstream modules |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2987](https://issues.apache.org/jira/browse/TEZ-2987) | TestVertexImpl.testTez2684 fails |  Major | . | Jeff Zhang | Bikas Saha |
| [TEZ-2977](https://issues.apache.org/jira/browse/TEZ-2977) | Make HadoopShim selection be overridable for distro-specific implementations |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2975](https://issues.apache.org/jira/browse/TEZ-2975) | Bump up apache commons dependency |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2970](https://issues.apache.org/jira/browse/TEZ-2970) | Re-localization in TezChild does not use correct UGI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2968](https://issues.apache.org/jira/browse/TEZ-2968) | Counter limits exception causes AM to crash |  Critical | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2966](https://issues.apache.org/jira/browse/TEZ-2966) | Tez does not honor mapreduce.task.timeout |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2963](https://issues.apache.org/jira/browse/TEZ-2963) | RecoveryService#handleSummaryEvent exception with HDFS transparent encryption + kerberos authentication |  Major | . | Karel Kolman | Hitesh Shah |
| [TEZ-2960](https://issues.apache.org/jira/browse/TEZ-2960) | Tez UI: Move hardcoded url namespace to the configuration file. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2956](https://issues.apache.org/jira/browse/TEZ-2956) | Handle auto-reduce parallelism when the totalNumBipartiteSourceTasks is 0 |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2952](https://issues.apache.org/jira/browse/TEZ-2952) | NPE in TestOnFileUnorderedKVOutput |  Major | . | Jeff Zhang | Bikas Saha |
| [TEZ-2947](https://issues.apache.org/jira/browse/TEZ-2947) | Tez UI: Timeline, RM & AM requests gets into a consecutive loop in counters page without any delay |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2946](https://issues.apache.org/jira/browse/TEZ-2946) | Tez UI: At times RM return a huge error message making the yellow error bar to fill the whole screen. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2945](https://issues.apache.org/jira/browse/TEZ-2945) | TEZ-2740 addendum to update API with currently supported parameters |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2944](https://issues.apache.org/jira/browse/TEZ-2944) | NPE in TestProcessorContext |  Major | . | Jeff Zhang | Bikas Saha |
| [TEZ-2943](https://issues.apache.org/jira/browse/TEZ-2943) | Change shuffle vertex manager to use per vertex data for auto reduce and slow start |  Major | . | Jonathan Eagles | Bikas Saha |
| [TEZ-2940](https://issues.apache.org/jira/browse/TEZ-2940) | Invalid shuffle max slow start setting causes vertex to hang indefinitely |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2933](https://issues.apache.org/jira/browse/TEZ-2933) | Tez UI: Load application details from RM when available |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2930](https://issues.apache.org/jira/browse/TEZ-2930) | Tez UI: Parent controller is not polling at times |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2929](https://issues.apache.org/jira/browse/TEZ-2929) | Tez UI: Dag details page displays vertices to be running even when dag have completed. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2924](https://issues.apache.org/jira/browse/TEZ-2924) | Framework for Hadoop shims |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2923](https://issues.apache.org/jira/browse/TEZ-2923) | Tez Live UI counters view empty for vertices, tasks, attempts |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2922](https://issues.apache.org/jira/browse/TEZ-2922) | Tez Live UI gives access denied for admins |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2911](https://issues.apache.org/jira/browse/TEZ-2911) | Null location Strings can cause problems with GroupedSplit serialization |  Minor | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2909](https://issues.apache.org/jira/browse/TEZ-2909) | Tez UI: Application link in All DAGs table is disable when applicationhistory is unavailable. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2908](https://issues.apache.org/jira/browse/TEZ-2908) | Tez UI: Errors are logged, but not displayed in the UI when AM fetch fails. |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2907](https://issues.apache.org/jira/browse/TEZ-2907) | NPE in IFile.Reader.getLength during final merge operation |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2906](https://issues.apache.org/jira/browse/TEZ-2906) | Compilation fails with hadoop 2.2.0 |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2904](https://issues.apache.org/jira/browse/TEZ-2904) | Pig can't specify task specific command opts |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2900](https://issues.apache.org/jira/browse/TEZ-2900) | Ignore V\_INPUT\_DATA\_INFORMATION when vertex is in Failed/Killed/Error |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2899](https://issues.apache.org/jira/browse/TEZ-2899) | Tez UI: DAG getting created with huge horizontal gap in between vertices |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2896](https://issues.apache.org/jira/browse/TEZ-2896) | Fix thread names used during Input/Output initialization |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2887](https://issues.apache.org/jira/browse/TEZ-2887) | Tez build failure due to missing dependency in pom files |  Major | . | Ashish Singh | Ashish Singh |
| [TEZ-2885](https://issues.apache.org/jira/browse/TEZ-2885) | Remove counter logs from AMWebController |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2875](https://issues.apache.org/jira/browse/TEZ-2875) | Enable missing tests in TestAnalyzer |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2874](https://issues.apache.org/jira/browse/TEZ-2874) | Improved logging for caller context |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2866](https://issues.apache.org/jira/browse/TEZ-2866) | Tez UI: Newly added columns wont be displayed by default in tables |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2850](https://issues.apache.org/jira/browse/TEZ-2850) | Tez MergeManager OOM for small Map Outputs |  Major | . | Saikat | Jonathan Eagles |
| [TEZ-2814](https://issues.apache.org/jira/browse/TEZ-2814) | ATSImportTool has a return statement in a finally block |  Major | . | Hitesh Shah | Rajesh Balamohan |
| [TEZ-2798](https://issues.apache.org/jira/browse/TEZ-2798) | NPE when executing TestMemoryWithEvents::testMemoryScatterGather |  Blocker | . | Rajesh Balamohan | Siddharth Seth |
| [TEZ-2781](https://issues.apache.org/jira/browse/TEZ-2781) | Fallback to send only TaskAttemptFailedEvent if taskFailed heartbeat fails |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-2592](https://issues.apache.org/jira/browse/TEZ-2592) | [Umbrella] Make it easier to generate binary artifacts for user convenience |  Major | . | Hitesh Shah |  |
| [TEZ-2553](https://issues.apache.org/jira/browse/TEZ-2553) | Tez UI: Tez UI Nits |  Minor | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-2480](https://issues.apache.org/jira/browse/TEZ-2480) | Exception when closing output is ignored |  Major | . | Sergey Shelukhin | Siddharth Seth |
| [TEZ-1976](https://issues.apache.org/jira/browse/TEZ-1976) | Findbug warning: Unread field: org.apache.hadoop.mapreduce.split.TezGroupedSplitsInputFormat$SplitHolder.split |  Major | . | Hitesh Shah | Chetna Chaudhari |
| [TEZ-1888](https://issues.apache.org/jira/browse/TEZ-1888) | Fix javac warnings all over codebase |  Critical | . | Hitesh Shah | Chetna Chaudhari |
| [TEZ-1670](https://issues.apache.org/jira/browse/TEZ-1670) | Add tests for all converter functions in HistoryEventTimelineConversion |  Minor | . | Hitesh Shah | Tatsuya Nishiyama |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2996](https://issues.apache.org/jira/browse/TEZ-2996) | TestAnalyzer fails in trunk after recovery redesign |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2979](https://issues.apache.org/jira/browse/TEZ-2979) | FlakyTest: org.apache.tez.history.TestHistoryParser |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2920](https://issues.apache.org/jira/browse/TEZ-2920) | org.apache.tez.client.TestTezClient.testStopRetriesUntilTimeout is flaky |  Critical | . | Hitesh Shah | Siddharth Seth |
| [TEZ-2918](https://issues.apache.org/jira/browse/TEZ-2918) | Make progress notifications in IOs |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2888](https://issues.apache.org/jira/browse/TEZ-2888) | Make critical path calculation resilient to AM crash |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-2882](https://issues.apache.org/jira/browse/TEZ-2882) | Consider improving fetch failure handling |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-2849](https://issues.apache.org/jira/browse/TEZ-2849) | Implement Specific Workaround for JDK-8026049 & JDK-8073093 |  Major | . | Gopal V | Gopal V |
| [TEZ-1788](https://issues.apache.org/jira/browse/TEZ-1788) | Test allowing vertex level disabling of speculation |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-808](https://issues.apache.org/jira/browse/TEZ-808) | Handle task attempts that are not making progress |  Major | . | Bikas Saha | Bikas Saha |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-2994](https://issues.apache.org/jira/browse/TEZ-2994) | LocalProgress in tez-runtime-library missing Apache header, rat check warnings from the new licenses after TEZ-2592 merge |  Major | . | Siddharth Seth | Hitesh Shah |
| [TEZ-2903](https://issues.apache.org/jira/browse/TEZ-2903) | Avoid using proprietary APIs where possible |  Major | . | Siddharth Seth | Chetna Chaudhari |
| [TEZ-2883](https://issues.apache.org/jira/browse/TEZ-2883) | changes for 0.8.1-alpha release |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2828](https://issues.apache.org/jira/browse/TEZ-2828) | Fix typo in "Shuffle assigned " log statement in shuffle.orderedgrouped.Shuffle |  Trivial | . | Johannes Zillmann |  |
| [TEZ-2824](https://issues.apache.org/jira/browse/TEZ-2824) | Add javadocs for Vertex.setConf and DAG.setConf |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-2595](https://issues.apache.org/jira/browse/TEZ-2595) | Add license and notice files into assembled full and minimal tarballs |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-2472](https://issues.apache.org/jira/browse/TEZ-2472) | Change slf4j version to 1.7.10 |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-604](https://issues.apache.org/jira/browse/TEZ-604) | Revert temporary changes made in TEZ-603 |  Blocker | . | Siddharth Seth | Hitesh Shah |


