
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

## Release 0.9.2 - Unreleased (as of 2018-09-12)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3770](https://issues.apache.org/jira/browse/TEZ-3770) | DAG-aware YARN task scheduler |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3892](https://issues.apache.org/jira/browse/TEZ-3892) | getClient API for TezClient |  Major | . | Eric Wohlstadter | Eric Wohlstadter |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3895](https://issues.apache.org/jira/browse/TEZ-3895) | Missing name for local mode task scheduler service async request handler thread |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3888](https://issues.apache.org/jira/browse/TEZ-3888) | Update Jetty to org.eclipse.jetty 9.x |  Major | . | Eric Wohlstadter | Eric Wohlstadter |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3877](https://issues.apache.org/jira/browse/TEZ-3877) | Delete unordered spill files once merge is done |  Major | . | Rohini Palaniswamy | Jason Lowe |
| [TEZ-3894](https://issues.apache.org/jira/browse/TEZ-3894) | Tez intermediate outputs implicitly rely on permissive umask for shuffle |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3893](https://issues.apache.org/jira/browse/TEZ-3893) | Tez Local Mode can hang for cases |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3896](https://issues.apache.org/jira/browse/TEZ-3896) | TestATSV15HistoryLoggingService#testNonSessionDomains is failing |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3898](https://issues.apache.org/jira/browse/TEZ-3898) | TestTezCommonUtils fails when compiled against hadoop version \>= 2.8 |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3897](https://issues.apache.org/jira/browse/TEZ-3897) | Tez Local Mode hang for vertices with broadcast input |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3874](https://issues.apache.org/jira/browse/TEZ-3874) | NPE in TezClientUtils when "yarn.resourcemanager.zk-address" is present in Configuration |  Blocker | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3907](https://issues.apache.org/jira/browse/TEZ-3907) | Improve log message to include the location the writers decide to spill output |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3909](https://issues.apache.org/jira/browse/TEZ-3909) | DAG can hang if vertex with no tasks is killed |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3817](https://issues.apache.org/jira/browse/TEZ-3817) | DAGs can hang after more than one uncaught Exception during doTransition. |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3887](https://issues.apache.org/jira/browse/TEZ-3887) | Tez Shuffle Handler should support Index Cache configuration |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3873](https://issues.apache.org/jira/browse/TEZ-3873) | A maven enforcer plugin dependency error in pom.xml |  Minor | . | Jinjiang Ling |  |
| [TEZ-3914](https://issues.apache.org/jira/browse/TEZ-3914) | Recovering a large DAG fails to size limit exceeded |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3924](https://issues.apache.org/jira/browse/TEZ-3924) | TestDefaultSorter fails intermittently due random keys and interaction with RLE and partition collisions |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3932](https://issues.apache.org/jira/browse/TEZ-3932) | TaskSchedulerManager can throw NullPointerException during DAGAppMaster container cleanup race |  Major | . | Valencia Edna Serrao | Jonathan Eagles |
| [TEZ-3933](https://issues.apache.org/jira/browse/TEZ-3933) | Remove sleep from test TestExceptionPropagation |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3824](https://issues.apache.org/jira/browse/TEZ-3824) | MRCombiner creates new JobConf copy per spill |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3937](https://issues.apache.org/jira/browse/TEZ-3937) | Empty partition BitSet to byte[] conversion creates one extra byte in rounding error |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3935](https://issues.apache.org/jira/browse/TEZ-3935) | DAG aware scheduler should release unassigned new containers rather than hold them |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3940](https://issues.apache.org/jira/browse/TEZ-3940) | Reduce time to convert TaskFinishedEvent to string |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3939](https://issues.apache.org/jira/browse/TEZ-3939) | Remove performance hit of precondition check in AM for register running task attempt |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3943](https://issues.apache.org/jira/browse/TEZ-3943) | TezClient leaks DAGClient for prewarm |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3938](https://issues.apache.org/jira/browse/TEZ-3938) | Task attempts failing due to not making progress |  Major | . | Jonathan Eagles | Kuhu Shukla |
| [TEZ-3951](https://issues.apache.org/jira/browse/TEZ-3951) | TezClient wait too long for the DAGClient for prewarm; tries to shut down the wrong DAG |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3953](https://issues.apache.org/jira/browse/TEZ-3953) | Restore ABI-compat for DAGClient for TEZ-3951 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3959](https://issues.apache.org/jira/browse/TEZ-3959) | HTTP 502 for bower install |  Blocker | UI | Eric Wohlstadter | Harish Jaiprakash |
| [TEZ-3962](https://issues.apache.org/jira/browse/TEZ-3962) | Configuration decode leaks an Inflater object |  Major | . | Gopal V | Eric Wohlstadter |
| [TEZ-3954](https://issues.apache.org/jira/browse/TEZ-3954) | Reduce Tez Shuffle Handler Memory needs for holding TezIndexRecords |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3963](https://issues.apache.org/jira/browse/TEZ-3963) | Possible InflaterInputStream leaked in TezCommonUtils and related classes |  Major | . | Jaume M | Jaume M |
| [TEZ-3912](https://issues.apache.org/jira/browse/TEZ-3912) | Fetchers should be more robust to corrupted inputs |  Major | . | Jason Lowe | Kuhu Shukla |
| [TEZ-3964](https://issues.apache.org/jira/browse/TEZ-3964) | Inflater not closed in some places |  Major | . | Jaume M | Jaume M |
| [TEZ-3970](https://issues.apache.org/jira/browse/TEZ-3970) | NullPointerException in Tez ShuffleHandler Ranged Fetch |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3942](https://issues.apache.org/jira/browse/TEZ-3942) | RPC getTask writable optimization invalid in hadoop 2.8+ |  Major | . | Jonathan Eagles | Nishant Dash |
| [TEZ-3934](https://issues.apache.org/jira/browse/TEZ-3934) | LegacySpeculator sometime issues wrong number of speculative attempts |  Major | . | Jonathan Eagles | Nishant Dash |
| [TEZ-3974](https://issues.apache.org/jira/browse/TEZ-3974) | Tez: Correctness regression of TEZ-955 in TEZ-2937 |  Critical | . | Gopal V | Jaume M |
| [TEZ-3978](https://issues.apache.org/jira/browse/TEZ-3978) | DAGClientServer Socket exception when localhost name lookup failures |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3980](https://issues.apache.org/jira/browse/TEZ-3980) | ShuffleRunner: the wake loop needs to check for shutdown |  Major | . | Gopal V | Gopal V |
| [TEZ-3973](https://issues.apache.org/jira/browse/TEZ-3973) | Add Kuhu Shukla's (kshukla) public key to KEYS |  Minor | . | Kuhu Shukla | Kuhu Shukla |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3927](https://issues.apache.org/jira/browse/TEZ-3927) | TestReduceProcessor fails on Hadoop 3.x |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3930](https://issues.apache.org/jira/browse/TEZ-3930) | TestDagAwareYarnTaskScheduler fails on Hadoop 3 |  Major | . | Jonathan Eagles | Jason Lowe |
| [TEZ-3931](https://issues.apache.org/jira/browse/TEZ-3931) | TestExternalTezServices fails on Hadoop3 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3947](https://issues.apache.org/jira/browse/TEZ-3947) | TestATSHistoryWithACLs fails with Hadoop3 and Jersey 1.19 |  Major | . | Eric Wohlstadter | Eric Wohlstadter |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3880](https://issues.apache.org/jira/browse/TEZ-3880) | do not count rejected tasks as killed in vertex progress |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3905](https://issues.apache.org/jira/browse/TEZ-3905) | Change BUILDING.TXT to minimum JDK 1.8 |  Trivial | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3977](https://issues.apache.org/jira/browse/TEZ-3977) | Add Eric Wohlstadter's public key to KEYS |  Major | . | Eric Wohlstadter | Eric Wohlstadter |


