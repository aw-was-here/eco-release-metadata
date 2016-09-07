
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

## Release 0.7.2 - Unreleased (as of 2016-09-07)



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


