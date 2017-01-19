
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

## Release 0.7.2 - Unreleased (as of 2017-01-19)



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
| [TEZ-3242](https://issues.apache.org/jira/browse/TEZ-3242) | Reduce bytearray copy with TezEvent Serialization and deserialization |  Major | . | Rohini Palaniswamy | Rohini Palaniswamy |
| [TEZ-3240](https://issues.apache.org/jira/browse/TEZ-3240) | Improvements to tez.lib.uris to allow for multiple tarballs and mixing tarballs and jars. |  Major | . | Eric Badger | Eric Badger |
| [TEZ-2769](https://issues.apache.org/jira/browse/TEZ-2769) | TEZ-UI Hive SQL is only displayed to line 11 |  Major | UI | Jeff Zhang | Prakash Ramachandran |
| [TEZ-3326](https://issues.apache.org/jira/browse/TEZ-3326) | Display JVM system properties in AM and task logs |  Major | . | Ming Ma | Eric Badger |
| [TEZ-3317](https://issues.apache.org/jira/browse/TEZ-3317) | Speculative execution starts too early due to 0 progress |  Major | . | Jonathan Eagles | Kuhu Shukla |
| [TEZ-3505](https://issues.apache.org/jira/browse/TEZ-3505) | Move license to the file header for TezBytesWritableSerialization |  Major | . | darion yaphet | darion yaphet |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3243](https://issues.apache.org/jira/browse/TEZ-3243) | Output vertices are hidden for UI graph view |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3256](https://issues.apache.org/jira/browse/TEZ-3256) | [Backport HADOOP-11032] Remove Guava Stopwatch dependency |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3237](https://issues.apache.org/jira/browse/TEZ-3237) | Corrupted shuffle transfers to disk are not detected during transfer |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3257](https://issues.apache.org/jira/browse/TEZ-3257) | Flaky TestUnorderedPartitionedKVWriter |  Major | . | Ming Ma | Ming Ma |
| [TEZ-3280](https://issues.apache.org/jira/browse/TEZ-3280) | LOG MRInputHelpers split generation message as INFO |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3278](https://issues.apache.org/jira/browse/TEZ-3278) | Hide Swimlane from Tez UI |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3298](https://issues.apache.org/jira/browse/TEZ-3298) | Tez fails to compile against hadoop 2.8 after MAPREDUCE-5870 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3297](https://issues.apache.org/jira/browse/TEZ-3297) | Deadlock scenario in AM during ShuffleVertexManager auto reduce |  Critical | . | Zhiyuan Yang | Rajesh Balamohan |
| [TEZ-3294](https://issues.apache.org/jira/browse/TEZ-3294) | DAG.createDag() does not clear local state on repeat calls |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3296](https://issues.apache.org/jira/browse/TEZ-3296) | Tez job can hang if two vertices at the same root distance have different task requirements |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3304](https://issues.apache.org/jira/browse/TEZ-3304) | TestHistoryParser fails with Hadoop 2.7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3305](https://issues.apache.org/jira/browse/TEZ-3305) | TestAnalyzer fails on Hadoop 2.7 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3293](https://issues.apache.org/jira/browse/TEZ-3293) | Fetch failures can cause a shuffle hang waiting for memory merge that never starts |  Critical | . | Jason Lowe | Jason Lowe |
| [TEZ-3223](https://issues.apache.org/jira/browse/TEZ-3223) | Support a NullHistoryLogger to disable history logging if needed. |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3413](https://issues.apache.org/jira/browse/TEZ-3413) | ConcurrentModificationException in HistoryEventTimelineConversion for AppLaunchedEvent |  Blocker | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-2852](https://issues.apache.org/jira/browse/TEZ-2852) | TestVertexImpl fails due to race in AsyncDispatcher |  Critical | . | Jeff Zhang | Zhiyuan Yang |
| [TEZ-3009](https://issues.apache.org/jira/browse/TEZ-3009) | Errors that occur during container task acquisition are not logged |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3426](https://issues.apache.org/jira/browse/TEZ-3426) | Second AM attempt launched for session mode and recovery disabled for certain cases |  Critical | . | Jonathan Eagles | Jason Lowe |
| [TEZ-3442](https://issues.apache.org/jira/browse/TEZ-3442) | Flaky test: TestMapProcessor::testMapProcessorProgress |  Major | . | Hitesh Shah | Kuhu Shukla |
| [TEZ-3440](https://issues.apache.org/jira/browse/TEZ-3440) | Shuffling to memory can get out-of-sync when fetching multiple compressed map outputs |  Major | . | Nathan Roberts | Nathan Roberts |
| [TEZ-3460](https://issues.apache.org/jira/browse/TEZ-3460) | Tez Precommit Release audit warning |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3437](https://issues.apache.org/jira/browse/TEZ-3437) | Improve synchronization and the progress report behavior for Inputs from TEZ-3317 |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3368](https://issues.apache.org/jira/browse/TEZ-3368) | NPE in DelayedContainerManager |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3335](https://issues.apache.org/jira/browse/TEZ-3335) | DAG client thinks app is still running when app status is null |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3464](https://issues.apache.org/jira/browse/TEZ-3464) | Fix findbugs warnings in tez-dag mainLoop |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3439](https://issues.apache.org/jira/browse/TEZ-3439) | Tez joinvalidate fails when first input argument size is bigger than the second |  Major | . | Hui Cao | Hui Cao |
| [TEZ-3452](https://issues.apache.org/jira/browse/TEZ-3452) | Auto-reduce parallelism calculation can overflow with large inputs |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3483](https://issues.apache.org/jira/browse/TEZ-3483) | Create basic travis yml file for Tez |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3486](https://issues.apache.org/jira/browse/TEZ-3486) | COMBINE\_OUTPUT\_RECORDS/COMBINE\_INPUT\_RECORDS are not correct |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3493](https://issues.apache.org/jira/browse/TEZ-3493) | DAG submit timeout cannot be set to a month |  Minor | . | Siddharth Seth | Hitesh Shah |
| [TEZ-3536](https://issues.apache.org/jira/browse/TEZ-3536) | NPE in WebUIService start when host resolution fails. |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3347](https://issues.apache.org/jira/browse/TEZ-3347) | Tez UI: Vertex UI throws an error while getting vertexProgress for a killed Vertex |  Major | UI | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3507](https://issues.apache.org/jira/browse/TEZ-3507) | Task logs link when editing url from one task to another |  Major | UI | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3537](https://issues.apache.org/jira/browse/TEZ-3537) | ArrayIndexOutOfBoundsException with empty environment variables/Port YARN-3768 to Tez |  Major | . | Eric Badger | Eric Badger |
| [TEZ-3549](https://issues.apache.org/jira/browse/TEZ-3549) | TaskAttemptImpl does not initialize TEZ\_TASK\_PROGRESS\_STUCK\_INTERVAL\_MS correctly |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3559](https://issues.apache.org/jira/browse/TEZ-3559) | TEZ\_LIB\_URIS doesn't work with schemes different than the defaultFS |  Major | . | Eric Badger | Eric Badger |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3487](https://issues.apache.org/jira/browse/TEZ-3487) | Improvements in travis yml file to get builds to work |  Major | . | darion yaphet | darion yaphet |


