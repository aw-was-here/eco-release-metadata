
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

## Release 0.10.0 - Unreleased (as of 2018-07-13)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3911](https://issues.apache.org/jira/browse/TEZ-3911) | Optional min/max/avg aggr. task counters reported to HistoryLoggingService at final counter aggr. |  Critical | . | Eric Wohlstadter | Vineet Garg |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3924](https://issues.apache.org/jira/browse/TEZ-3924) | TestDefaultSorter fails intermittently due random keys and interaction with RLE and partition collisions |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3932](https://issues.apache.org/jira/browse/TEZ-3932) | TaskSchedulerManager can throw NullPointerException during DAGAppMaster container cleanup race |  Major | . | Valencia Edna Serrao | Jonathan Eagles |
| [TEZ-3933](https://issues.apache.org/jira/browse/TEZ-3933) | Remove sleep from test TestExceptionPropagation |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3824](https://issues.apache.org/jira/browse/TEZ-3824) | MRCombiner creates new JobConf copy per spill |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3937](https://issues.apache.org/jira/browse/TEZ-3937) | Empty partition BitSet to byte[] conversion creates one extra byte in rounding error |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3935](https://issues.apache.org/jira/browse/TEZ-3935) | DAG aware scheduler should release unassigned new containers rather than hold them |  Major | . | Jason Lowe | Jason Lowe |
| [TEZ-3940](https://issues.apache.org/jira/browse/TEZ-3940) | Reduce time to convert TaskFinishedEvent to string |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3939](https://issues.apache.org/jira/browse/TEZ-3939) | Remove performance hit of precondition check in AM for register running task attempt |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3943](https://issues.apache.org/jira/browse/TEZ-3943) | TezClient leaks DAGClient for prewarm |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3948](https://issues.apache.org/jira/browse/TEZ-3948) | Tez distribution broken with hadoop3 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3938](https://issues.apache.org/jira/browse/TEZ-3938) | Task attempts failing due to not making progress |  Major | . | Jonathan Eagles | Kuhu Shukla |
| [TEZ-3951](https://issues.apache.org/jira/browse/TEZ-3951) | TezClient wait too long for the DAGClient for prewarm; tries to shut down the wrong DAG |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3953](https://issues.apache.org/jira/browse/TEZ-3953) | Restore ABI-compat for DAGClient for TEZ-3951 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3959](https://issues.apache.org/jira/browse/TEZ-3959) | HTTP 502 for bower install |  Blocker | UI | Eric Wohlstadter | Harish Jaiprakash |
| [TEZ-3962](https://issues.apache.org/jira/browse/TEZ-3962) | Configuration decode leaks an Inflater object |  Major | . | Gopal V | Eric Wohlstadter |
| [TEZ-3960](https://issues.apache.org/jira/browse/TEZ-3960) | Better error handling in proto history logger and add doAs support. |  Major | . | Harish Jaiprakash | Harish Jaiprakash |
| [TEZ-3954](https://issues.apache.org/jira/browse/TEZ-3954) | Reduce Tez Shuffle Handler Memory needs for holding TezIndexRecords |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3963](https://issues.apache.org/jira/browse/TEZ-3963) | Possible InflaterInputStream leaked in TezCommonUtils and related classes |  Major | . | Jaume M | Jaume M |
| [TEZ-3912](https://issues.apache.org/jira/browse/TEZ-3912) | Fetchers should be more robust to corrupted inputs |  Major | . | Jason Lowe | Kuhu Shukla |
| [TEZ-3955](https://issues.apache.org/jira/browse/TEZ-3955) | Upgrade hadoop dependency to 3.0.3 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3964](https://issues.apache.org/jira/browse/TEZ-3964) | Inflater not closed in some places |  Major | . | Jaume M | Jaume M |
| [TEZ-3970](https://issues.apache.org/jira/browse/TEZ-3970) | NullPointerException in Tez ShuffleHandler Ranged Fetch |  Major | . | Jonathan Eagles | Jonathan Eagles |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3926](https://issues.apache.org/jira/browse/TEZ-3926) | Changes to master for 0.10.x line and 0.9 release branch |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3927](https://issues.apache.org/jira/browse/TEZ-3927) | TestReduceProcessor fails on Hadoop 3.x |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3930](https://issues.apache.org/jira/browse/TEZ-3930) | TestDagAwareYarnTaskScheduler fails on Hadoop 3 |  Major | . | Jonathan Eagles | Jason Lowe |
| [TEZ-3931](https://issues.apache.org/jira/browse/TEZ-3931) | TestExternalTezServices fails on Hadoop3 |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3902](https://issues.apache.org/jira/browse/TEZ-3902) | Upgrade to netty-3.10.5.Final.jar |  Major | . | Eric Wohlstadter | Jason Lowe |
| [TEZ-3947](https://issues.apache.org/jira/browse/TEZ-3947) | TestATSHistoryWithACLs fails with Hadoop3 and Jersey 1.19 |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3929](https://issues.apache.org/jira/browse/TEZ-3929) | Upgrade Jersey to 1.19 |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3946](https://issues.apache.org/jira/browse/TEZ-3946) | NoClassDefFoundError, org.apache.hadoop.mapred.ShuffleHandler. (Multiple tests with Hadoop3) |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3949](https://issues.apache.org/jira/browse/TEZ-3949) | TestATSHistoryV15 is failing with hadoop3+ |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [TEZ-3944](https://issues.apache.org/jira/browse/TEZ-3944) | TestTaskScheduler times-out on Hadoop3 |  Major | . | Eric Wohlstadter | Jonathan Eagles |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3923](https://issues.apache.org/jira/browse/TEZ-3923) | Move master to Hadoop 3+ and create separate 0.9.x line |  Major | . | Eric Wohlstadter | Jonathan Eagles |


