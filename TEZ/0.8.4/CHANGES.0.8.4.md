
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

## Release 0.8.4 - 2016-07-08



### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3258](https://issues.apache.org/jira/browse/TEZ-3258) | Jvm Checker does not ignore DisableExplicitGC when checking JVM GC options |  Major | . | Fengdong Yu | Fengdong Yu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-909](https://issues.apache.org/jira/browse/TEZ-909) | Provide support for application tags |  Major | . | Rohini Palaniswamy | Eric Badger |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3077](https://issues.apache.org/jira/browse/TEZ-3077) | TezClient.waitTillReady should support timeout |  Major | . | Sergey Shelukhin | Kuhu Shukla |
| [TEZ-3242](https://issues.apache.org/jira/browse/TEZ-3242) | Reduce bytearray copy with TezEvent Serialization and deserialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-3246](https://issues.apache.org/jira/browse/TEZ-3246) | Improve diagnostics when DAG killed by user |  Major | . | Jason Lowe | Eric Badger |
| [TEZ-3240](https://issues.apache.org/jira/browse/TEZ-3240) | Improvements to tez.lib.uris to allow for multiple tarballs and mixing tarballs and jars. |  Major | . | Eric Badger | Eric Badger |
| [TEZ-2769](https://issues.apache.org/jira/browse/TEZ-2769) | TEZ-UI Hive SQL is only displayed to line 11 |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-3302](https://issues.apache.org/jira/browse/TEZ-3302) | Add a version of processorContext.waitForAllInputsReady and waitForAnyInputReady with a timeout |  Major | . | Siddharth Seth | Tsuyoshi Ozawa |
| [TEZ-3308](https://issues.apache.org/jira/browse/TEZ-3308) | Add counters to capture input split length. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3291](https://issues.apache.org/jira/browse/TEZ-3291) | Optimize splits grouping when locality information is not available |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3202](https://issues.apache.org/jira/browse/TEZ-3202) | Reduce the memory need for jobs with high number of segments |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3165](https://issues.apache.org/jira/browse/TEZ-3165) | Allow Inputs/Outputs to be initialized serially, control processor initialization relative to Inputs/Outputs |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3210](https://issues.apache.org/jira/browse/TEZ-3210) | Tez UI 2: license should account for numeral, more-js, loader.js , etc |  Major | . | Hitesh Shah | Sreenath Somarajapuram |
| [TEZ-3224](https://issues.apache.org/jira/browse/TEZ-3224) | User payload is not initialized before creating vertex manager plugin |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [TEZ-3219](https://issues.apache.org/jira/browse/TEZ-3219) | Allow service plugins to define log locations link for remotely run task attempts |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3203](https://issues.apache.org/jira/browse/TEZ-3203) | DAG hangs when one of the upstream vertices has zero tasks |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3193](https://issues.apache.org/jira/browse/TEZ-3193) | Deadlock in AM during task commit request |  Blocker | . | Jason Lowe | Jason Lowe |
| [TEZ-3250](https://issues.apache.org/jira/browse/TEZ-3250) | TezTaskRunner2 should accept ExecutorService |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3251](https://issues.apache.org/jira/browse/TEZ-3251) | Allow ability to add custom counters to TaskRunner2Callable |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3256](https://issues.apache.org/jira/browse/TEZ-3256) | [Backport HADOOP-11032] Remove Guava Stopwatch dependency |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3259](https://issues.apache.org/jira/browse/TEZ-3259) | Tez UI: Build issue - File saver package is not working well with bower |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3237](https://issues.apache.org/jira/browse/TEZ-3237) | Corrupted shuffle transfers to disk are not detected during transfer |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3262](https://issues.apache.org/jira/browse/TEZ-3262) | Tez UI : zip.js is not having a bower friendly versioning system |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3257](https://issues.apache.org/jira/browse/TEZ-3257) | Flaky TestUnorderedPartitionedKVWriter |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3280](https://issues.apache.org/jira/browse/TEZ-3280) | LOG MRInputHelpers split generation message as INFO |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3278](https://issues.apache.org/jira/browse/TEZ-3278) | Hide Swimlane from Tez UI |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3281](https://issues.apache.org/jira/browse/TEZ-3281) | Tez UI: Swimlane improvements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3290](https://issues.apache.org/jira/browse/TEZ-3290) | Set full task attempt id string in configuration object |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-3298](https://issues.apache.org/jira/browse/TEZ-3298) | Tez fails to compile against hadoop 2.8 after MAPREDUCE-5870 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3297](https://issues.apache.org/jira/browse/TEZ-3297) | Deadlock scenario in AM during ShuffleVertexManager auto reduce |  Critical | . | Zhiyuan Yang | Rajesh Balamohan |
| [TEZ-3294](https://issues.apache.org/jira/browse/TEZ-3294) | DAG.createDag() does not clear local state on repeat calls |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3296](https://issues.apache.org/jira/browse/TEZ-3296) | Tez job can hang if two vertices at the same root distance have different task requirements |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3304](https://issues.apache.org/jira/browse/TEZ-3304) | TestHistoryParser fails with Hadoop 2.7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3305](https://issues.apache.org/jira/browse/TEZ-3305) | TestAnalyzer fails on Hadoop 2.7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3314](https://issues.apache.org/jira/browse/TEZ-3314) | Double counting input bytes in MultiMRInput |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3293](https://issues.apache.org/jira/browse/TEZ-3293) | Fetch failures can cause a shuffle hang waiting for memory merge that never starts |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3286](https://issues.apache.org/jira/browse/TEZ-3286) | Allow clients to set processor reserved memory per vertex (instead of per container) |  Major | . | Wei Zheng | Hitesh Shah |
| [TEZ-3318](https://issues.apache.org/jira/browse/TEZ-3318) | Tez UI: Polling is not restarted after RM recovery |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3223](https://issues.apache.org/jira/browse/TEZ-3223) | Support a NullHistoryLogger to disable history logging if needed. |  Trivial | . | Hitesh Shah | Hitesh Shah |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3214](https://issues.apache.org/jira/browse/TEZ-3214) | Tez UI 2: Pagination in All DAGs |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3087](https://issues.apache.org/jira/browse/TEZ-3087) | Tez UI 2: Add log links in task & attempt details page |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3146](https://issues.apache.org/jira/browse/TEZ-3146) | Tez UI 2: CSS & JS assets in the UI must be minified |  Blocker | . | Sreenath Somarajapuram | Sreenath Somarajapuram |
| [TEZ-3226](https://issues.apache.org/jira/browse/TEZ-3226) | Tez UI 2: All DAGs UX improvements |  Major | . | Sreenath Somarajapuram | Sreenath Somarajapuram |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3323](https://issues.apache.org/jira/browse/TEZ-3323) | Update license and Notice for xml-apis, update year |  Major | . | Siddharth Seth | Siddharth Seth |


