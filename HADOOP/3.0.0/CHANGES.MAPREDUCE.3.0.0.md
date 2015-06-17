
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
# Hadoop Changelog

## Release 3.0.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6336](https://issues.apache.org/jira/browse/MAPREDUCE-6336) | Enable v2 FileOutputCommitter by default |  Major | mrv2 | Gera Shegalov | Siqi Li |
| [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | TestHighRamJob fails due to the change in MAPREDUCE-5785 |  Major | contrib/gridmix, mrv2 | Masatake Iwasaki | Masatake Iwasaki |
| [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | TestJobConf#testNegativeValueForTaskVmem failures |  Major | test | Gera Shegalov | Varun Saxena |
| [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | Fix typo 'programatically' in job.xml (and a few other places) |  Trivial | . | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | Derive heap size or mapreduce.\*.memory.mb automatically |  Major | mr-am, task | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb |  Major | distcp | Mithun Radhakrishnan | Ratandeep Ratti |
| [MAPREDUCE-4424](https://issues.apache.org/jira/browse/MAPREDUCE-4424) | 'mapred job -list' command should show the job name as well |  Minor | mrv2 | Harsh J | Avinash Kujur |
| [MAPREDUCE-2632](https://issues.apache.org/jira/browse/MAPREDUCE-2632) | Avoid calling the partitioner when the numReduceTasks is 1. |  Major | . | Ravi Teja Ch N V | Sunil G |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4887](https://issues.apache.org/jira/browse/MAPREDUCE-4887) | Rehashing partitioner for better distribution |  Major | . | Radim Kolar | Radim Kolar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6260](https://issues.apache.org/jira/browse/MAPREDUCE-6260) | Convert site documentation to markdown |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [MAPREDUCE-6250](https://issues.apache.org/jira/browse/MAPREDUCE-6250) | deprecate sbin/mr-jobhistory-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [MAPREDUCE-6057](https://issues.apache.org/jira/browse/MAPREDUCE-6057) | Remove obsolete entries from mapred-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6013](https://issues.apache.org/jira/browse/MAPREDUCE-6013) | mapred version is missing |  Major | scripts | Allen Wittenauer | Akira AJISAKA |
| [MAPREDUCE-5197](https://issues.apache.org/jira/browse/MAPREDUCE-5197) | Checkpoint Service: a library component to facilitate checkpoint of task state |  Major | mrv2 | Carlo Curino | Carlo Curino |
| [MAPREDUCE-5196](https://issues.apache.org/jira/browse/MAPREDUCE-5196) | CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing |  Major | mr-am, mrv2 | Carlo Curino | Carlo Curino |
| [MAPREDUCE-4735](https://issues.apache.org/jira/browse/MAPREDUCE-4735) | Make arguments in TestDFSIO case insensitive |  Trivial | test | Robert Kanter | Brandon Li |
| [MAPREDUCE-4686](https://issues.apache.org/jira/browse/MAPREDUCE-4686) | hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes |  Major | build | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-4371](https://issues.apache.org/jira/browse/MAPREDUCE-4371) | Check for cyclic dependencies in Jobcontrol job DAG |  Major | mrv1 | madhukara phatak | madhukara phatak |
| [MAPREDUCE-3956](https://issues.apache.org/jira/browse/MAPREDUCE-3956) | Remove the use of the deprecated Syncable.sync() method |  Minor | examples | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-3302](https://issues.apache.org/jira/browse/MAPREDUCE-3302) | Remove the last dependency call from org.apache.hadoop.record package in MR. |  Minor | client | Harsh J | Harsh J |
| [MAPREDUCE-2944](https://issues.apache.org/jira/browse/MAPREDUCE-2944) | Improve checking of input for Api displayTasks() |  Trivial | client | XieXianshan | XieXianshan |
| [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | Task level native optimization |  Major | task | Binglin Chang | Sean Zhong |
| [MAPREDUCE-2384](https://issues.apache.org/jira/browse/MAPREDUCE-2384) | The job submitter should make sure to validate jobs before creation of necessary files |  Major | job submission, test | Denny Ye | Harsh J |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6396](https://issues.apache.org/jira/browse/MAPREDUCE-6396) | TestPipeApplication fails by NullPointerException |  Major | test | Akira AJISAKA | Brahma Reddy Battula |
| [MAPREDUCE-6343](https://issues.apache.org/jira/browse/MAPREDUCE-6343) | JobConf.parseMaximumHeapSizeMB() fails to parse value greater than 2GB expressed in bytes |  Major | . | Hao Xia | Hao Xia |
| [MAPREDUCE-6161](https://issues.apache.org/jira/browse/MAPREDUCE-6161) | mapred hsadmin command missing from trunk |  Major | scripts | Jason Lowe | Allen Wittenauer |
| [MAPREDUCE-5912](https://issues.apache.org/jira/browse/MAPREDUCE-5912) | Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196 |  Major | client | Remus Rusanu | Remus Rusanu |
| [MAPREDUCE-5717](https://issues.apache.org/jira/browse/MAPREDUCE-5717) | Task pings are interpreted as task progress |  Major | . | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5012](https://issues.apache.org/jira/browse/MAPREDUCE-5012) | Typo in javadoc for IdentityMapper class |  Trivial | documentation | Adam Monsen | Adam Monsen |
| [MAPREDUCE-4695](https://issues.apache.org/jira/browse/MAPREDUCE-4695) | Fix LocalRunner on trunk after MAPREDUCE-3223 broke it |  Blocker | . | Harsh J | Harsh J |
| [MAPREDUCE-4685](https://issues.apache.org/jira/browse/MAPREDUCE-4685) | DBCount should not use ACCESS |  Major | examples | Viji | Viji |
| [MAPREDUCE-4574](https://issues.apache.org/jira/browse/MAPREDUCE-4574) | Fix TotalOrderParitioner to work with non-WritableComparable key types |  Trivial | client | Harsh J | Harsh J |
| [MAPREDUCE-4413](https://issues.apache.org/jira/browse/MAPREDUCE-4413) | MR lib dir contains jdiff (which is gpl) |  Critical | build | Eli Collins | Nemon Lou |
| [MAPREDUCE-3990](https://issues.apache.org/jira/browse/MAPREDUCE-3990) | MRBench allows Long-sized input-lines value but parses CLI argument as an Integer |  Trivial | benchmarks | Harsh J | Harsh J |
| [MAPREDUCE-3223](https://issues.apache.org/jira/browse/MAPREDUCE-3223) | Remove MR1 configs from mapred-default.xml |  Major | documentation, mrv2 | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-3149](https://issues.apache.org/jira/browse/MAPREDUCE-3149) | add a test to verify that buildDTAuthority works for cases with no authority. |  Major | . | John George | John George |
| [MAPREDUCE-2978](https://issues.apache.org/jira/browse/MAPREDUCE-2978) | hudson findbugs not reporting properly |  Major | mrv2 | Thomas Graves | Tom White |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-2669](https://issues.apache.org/jira/browse/MAPREDUCE-2669) | Some new examples and test cases for them. |  Minor | examples | Plamen Jeliazkov | Plamen Jeliazkov |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6078](https://issues.apache.org/jira/browse/MAPREDUCE-6078) | native-task: fix gtest build on macosx |  Trivial | task | Binglin Chang | Binglin Chang |
| [MAPREDUCE-5867](https://issues.apache.org/jira/browse/MAPREDUCE-5867) | Possible NPE in KillAMPreemptionPolicy related to ProportionalCapacityPreemptionPolicy |  Major | resourcemanager | Sunil G | Sunil G |
| [MAPREDUCE-5189](https://issues.apache.org/jira/browse/MAPREDUCE-5189) | Basic AM changes to support preemption requests (per YARN-45) |  Major | mr-am, mrv2 | Carlo Curino | Carlo Curino |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


