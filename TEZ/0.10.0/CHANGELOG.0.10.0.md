
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

## Release 0.10.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3911](https://issues.apache.org/jira/browse/TEZ-3911) | Optional min/max/avg aggr. task counters reported to HistoryLoggingService at final counter aggr. |  Critical | . | Eric Wohlstadter | Vineet Garg |
| [TEZ-3975](https://issues.apache.org/jira/browse/TEZ-3975) | Please add OWASP Dependency Check to the build (pom.xml) |  Major | . | Albert Baker | Jonathan Turner Eagles |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3916](https://issues.apache.org/jira/browse/TEZ-3916) | Add hadoop-azure-datalake jar to azure profile |  Critical | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3958](https://issues.apache.org/jira/browse/TEZ-3958) | Add internal vertex priority information into the tez dag.dot debug information |  Major | . | Gopal Vijayaraghavan | Jaume M |
| [TEZ-3957](https://issues.apache.org/jira/browse/TEZ-3957) | Report TASK\_DURATION\_MILLIS as a Counter for completed tasks |  Major | . | Eric Wohlstadter | Sergey Shelukhin |
| [TEZ-3952](https://issues.apache.org/jira/browse/TEZ-3952) | Allow Tez task speculation to grant greater customization of certain parameters |  Major | . | Nishant Dash | Nishant Dash |
| [TEZ-4048](https://issues.apache.org/jira/browse/TEZ-4048) | Make proto history logger queue size configurable |  Minor | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-4068](https://issues.apache.org/jira/browse/TEZ-4068) | Prevent new speculative attempt after task has issued canCommit to an attempt |  Major | . | Jonathan Turner Eagles | Ying Han |
| [TEZ-4075](https://issues.apache.org/jira/browse/TEZ-4075) | Tez: Reimplement tez.runtime.transfer.data-via-events.enabled |  Major | . | Gopal Vijayaraghavan | Richard Zhang |
| [TEZ-4096](https://issues.apache.org/jira/browse/TEZ-4096) | SSLFactory should pickup configs from incoming conf payload |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4084](https://issues.apache.org/jira/browse/TEZ-4084) | Tez local mode fails when distributed cache creates link with parent |  Minor | . | Jacob Tolar | Jacob Tolar |
| [TEZ-4083](https://issues.apache.org/jira/browse/TEZ-4083) | Upgrade to latest 9.3.x Jetty version |  Major | . | Daniel Velasquez | László Bodor |
| [TEZ-4067](https://issues.apache.org/jira/browse/TEZ-4067) | Tez Speculation decision is calculated on each update by the dispatcher |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [TEZ-4098](https://issues.apache.org/jira/browse/TEZ-4098) | tez-tools improvements: log-split, swimlane |  Major | . | László Bodor | László Bodor |
| [TEZ-4113](https://issues.apache.org/jira/browse/TEZ-4113) | TezUtils::createByteStringFromConf should use snappy instead of DeflaterOutputStream |  Trivial | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4117](https://issues.apache.org/jira/browse/TEZ-4117) | Fix minor issues in docs/pom.xml |  Major | . | László Bodor | László Bodor |
| [TEZ-4101](https://issues.apache.org/jira/browse/TEZ-4101) | Eliminate some guava dependencies by Java8+ features - Preconditions |  Major | . | László Bodor | László Bodor |
| [TEZ-4106](https://issues.apache.org/jira/browse/TEZ-4106) | Add Exponential Smooth RuntimeEstimator to the speculator |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [TEZ-4081](https://issues.apache.org/jira/browse/TEZ-4081) | Container release idle timeout exception for equal min and max values |  Major | . | Jonathan Turner Eagles | László Bodor |
| [TEZ-4124](https://issues.apache.org/jira/browse/TEZ-4124) | GuavaShim: introduce an interoperability layer for different guava versions |  Major | . | László Bodor | László Bodor |
| [TEZ-4100](https://issues.apache.org/jira/browse/TEZ-4100) | Upgrade to Hadoop 3.1.3 and Guava 27 |  Major | . | László Bodor | László Bodor |
| [TEZ-4109](https://issues.apache.org/jira/browse/TEZ-4109) | Improve TezCommonUtils.getCredentialsInfo and use it from more contexts |  Major | . | László Bodor | László Bodor |
| [TEZ-4126](https://issues.apache.org/jira/browse/TEZ-4126) | Shell scripts under tez-tools should be runnable |  Trivial | . | László Bodor | László Bodor |
| [TEZ-4099](https://issues.apache.org/jira/browse/TEZ-4099) | Add details on whether SSL is enabled or not in HttpConnectionParams |  Trivial | . | Rajesh Balamohan | László Bodor |
| [TEZ-4097](https://issues.apache.org/jira/browse/TEZ-4097) | Report localHostname in Fetcher and FetcherOrderedGrouped failure log messages |  Minor | . | László Bodor | László Bodor |
| [TEZ-4131](https://issues.apache.org/jira/browse/TEZ-4131) | Reduce apache commons collections direct dependencies |  Minor | . | Jonathan Turner Eagles | zhangbutao |
| [TEZ-4134](https://issues.apache.org/jira/browse/TEZ-4134) | Upgrade maven surefire plugin to 3.0.0-M4 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4146](https://issues.apache.org/jira/browse/TEZ-4146) | Register RUNNING state in DAG's state change callback |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4145](https://issues.apache.org/jira/browse/TEZ-4145) | Reduce lock contention in TezSpillRecord |  Major | . | Rajesh Balamohan | László Bodor |
| [TEZ-4144](https://issues.apache.org/jira/browse/TEZ-4144) | Checkstyle: '{' is followed by whitespace |  Trivial | . | László Bodor | László Bodor |
| [TEZ-4147](https://issues.apache.org/jira/browse/TEZ-4147) | Reduce NN calls in RecoveryService::handleRecoveryEvent |  Trivial | . | Rajesh Balamohan | László Bodor |
| [TEZ-4151](https://issues.apache.org/jira/browse/TEZ-4151) | Missing apache commons collections4 dependency on tez-mapreduce and tez-plugins/tez-history-parser |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4136](https://issues.apache.org/jira/browse/TEZ-4136) | String representation for tez counters |  Major | . | László Bodor | László Bodor |
| [TEZ-4156](https://issues.apache.org/jira/browse/TEZ-4156) | Fix Tez to reuse IPC connections |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4155](https://issues.apache.org/jira/browse/TEZ-4155) | Remove sync bottleneck in counters |  Trivial | . | Rajesh Balamohan | László Bodor |
| [TEZ-4182](https://issues.apache.org/jira/browse/TEZ-4182) | Expose build user and java version in version-info.properties |  Minor | . | László Bodor | László Bodor |
| [TEZ-4171](https://issues.apache.org/jira/browse/TEZ-4171) | DAGImp::getDAGStatus should try to report RUNNING state information correctly |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4135](https://issues.apache.org/jira/browse/TEZ-4135) | Improve memory allocation when executing in-memory reads |  Major | . | Rajesh Balamohan | László Bodor |
| [TEZ-4105](https://issues.apache.org/jira/browse/TEZ-4105) | Tez job-analyzer tool to support proto logging history |  Major | . | László Bodor | László Bodor |
| [TEZ-4199](https://issues.apache.org/jira/browse/TEZ-4199) | MergeManager::finalMerge should make use of compression |  Major | . | Rajesh Balamohan | Mustafa İman |
| [TEZ-4172](https://issues.apache.org/jira/browse/TEZ-4172) | Let tasks be killed after too many overall attempts |  Major | . | László Bodor | László Bodor |
| [TEZ-4224](https://issues.apache.org/jira/browse/TEZ-4224) | Add Laszlo Bodor's public key to KEYS |  Major | . | László Bodor | László Bodor |
| [TEZ-4175](https://issues.apache.org/jira/browse/TEZ-4175) | Consider removing YarnConfiguration where it's possible |  Major | . | László Bodor | László Bodor |
| [TEZ-4225](https://issues.apache.org/jira/browse/TEZ-4225) | CHANGES.txt for 0.10.0 Release |  Major | . | László Bodor | László Bodor |
| [TEZ-4226](https://issues.apache.org/jira/browse/TEZ-4226) | Update version for 0.10.0 release |  Major | . | László Bodor | László Bodor |
| [TEZ-4238](https://issues.apache.org/jira/browse/TEZ-4238) | Check null mrReader in MRInput.close |  Major | . | László Bodor | László Bodor |
| [TEZ-4243](https://issues.apache.org/jira/browse/TEZ-4243) | Changes for 0.10.0 release |  Major | . | László Bodor | László Bodor |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3924](https://issues.apache.org/jira/browse/TEZ-3924) | TestDefaultSorter fails intermittently due random keys and interaction with RLE and partition collisions |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3932](https://issues.apache.org/jira/browse/TEZ-3932) | TaskSchedulerManager can throw NullPointerException during DAGAppMaster container cleanup race |  Major | . | Valencia Edna Serrao | Jonathan Turner Eagles |
| [TEZ-3933](https://issues.apache.org/jira/browse/TEZ-3933) | Remove sleep from test TestExceptionPropagation |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3824](https://issues.apache.org/jira/browse/TEZ-3824) | MRCombiner creates new JobConf copy per spill |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3937](https://issues.apache.org/jira/browse/TEZ-3937) | Empty partition BitSet to byte[] conversion creates one extra byte in rounding error |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3935](https://issues.apache.org/jira/browse/TEZ-3935) | DAG aware scheduler should release unassigned new containers rather than hold them |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [TEZ-3940](https://issues.apache.org/jira/browse/TEZ-3940) | Reduce time to convert TaskFinishedEvent to string |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3939](https://issues.apache.org/jira/browse/TEZ-3939) | Remove performance hit of precondition check in AM for register running task attempt |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3943](https://issues.apache.org/jira/browse/TEZ-3943) | TezClient leaks DAGClient for prewarm |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3948](https://issues.apache.org/jira/browse/TEZ-3948) | Tez distribution broken with hadoop3 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3938](https://issues.apache.org/jira/browse/TEZ-3938) | Task attempts failing due to not making progress |  Major | . | Jonathan Turner Eagles | Kuhu Shukla |
| [TEZ-3951](https://issues.apache.org/jira/browse/TEZ-3951) | TezClient wait too long for the DAGClient for prewarm; tries to shut down the wrong DAG |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3953](https://issues.apache.org/jira/browse/TEZ-3953) | Restore ABI-compat for DAGClient for TEZ-3951 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [TEZ-3959](https://issues.apache.org/jira/browse/TEZ-3959) | HTTP 502 for bower install |  Blocker | UI | Eric Wohlstadter | Harish JP |
| [TEZ-3962](https://issues.apache.org/jira/browse/TEZ-3962) | Configuration decode leaks an Inflater object |  Major | . | Gopal Vijayaraghavan | Eric Wohlstadter |
| [TEZ-3960](https://issues.apache.org/jira/browse/TEZ-3960) | Better error handling in proto history logger and add doAs support. |  Major | . | Harish JP | Harish JP |
| [TEZ-3954](https://issues.apache.org/jira/browse/TEZ-3954) | Reduce Tez Shuffle Handler Memory needs for holding TezIndexRecords |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3963](https://issues.apache.org/jira/browse/TEZ-3963) | Possible InflaterInputStream leaked in TezCommonUtils and related classes |  Major | . | Jaume M | Jaume M |
| [TEZ-3912](https://issues.apache.org/jira/browse/TEZ-3912) | Fetchers should be more robust to corrupted inputs |  Major | . | Jason Darrell Lowe | Kuhu Shukla |
| [TEZ-3955](https://issues.apache.org/jira/browse/TEZ-3955) | Upgrade hadoop dependency to 3.0.3 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3964](https://issues.apache.org/jira/browse/TEZ-3964) | Inflater not closed in some places |  Major | . | Jaume M | Jaume M |
| [TEZ-3970](https://issues.apache.org/jira/browse/TEZ-3970) | NullPointerException in Tez ShuffleHandler Ranged Fetch |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3965](https://issues.apache.org/jira/browse/TEZ-3965) | TestMROutput: Fix the hard-coded "/tmp/output" paths |  Minor | . | Gopal Vijayaraghavan | Jaume M |
| [TEZ-3942](https://issues.apache.org/jira/browse/TEZ-3942) | RPC getTask writable optimization invalid in hadoop 2.8+ |  Major | . | Jonathan Turner Eagles | Nishant Dash |
| [TEZ-3934](https://issues.apache.org/jira/browse/TEZ-3934) | LegacySpeculator sometime issues wrong number of speculative attempts |  Major | . | Jonathan Turner Eagles | Nishant Dash |
| [TEZ-3974](https://issues.apache.org/jira/browse/TEZ-3974) | Tez: Correctness regression of TEZ-955 in TEZ-2937 |  Critical | . | Gopal Vijayaraghavan | Jaume M |
| [TEZ-3978](https://issues.apache.org/jira/browse/TEZ-3978) | DAGClientServer Socket exception when localhost name lookup failures |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3980](https://issues.apache.org/jira/browse/TEZ-3980) | ShuffleRunner: the wake loop needs to check for shutdown |  Major | . | Gopal Vijayaraghavan | Gopal Vijayaraghavan |
| [TEZ-3973](https://issues.apache.org/jira/browse/TEZ-3973) | Add Kuhu Shukla's (kshukla) public key to KEYS |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3989](https://issues.apache.org/jira/browse/TEZ-3989) | Fix by-laws related to emeritus clause |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-3972](https://issues.apache.org/jira/browse/TEZ-3972) | Tez DAG can hang when a single task fails to fetch |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3982](https://issues.apache.org/jira/browse/TEZ-3982) | DAGAppMaster and tasks should not report negative or invalid progress |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3981](https://issues.apache.org/jira/browse/TEZ-3981) | UnorderedPartitionedKVWriter.getInitialMemoryRequirement may return negative memory |  Major | . | Jaume M | Jaume M |
| [TEZ-3969](https://issues.apache.org/jira/browse/TEZ-3969) | TaskAttemptImpl: static fields initialized in instance ctor |  Minor | . | Gopal Vijayaraghavan | Jaume M |
| [TEZ-3990](https://issues.apache.org/jira/browse/TEZ-3990) | The number of shuffle penalties for a host/inputAttemptIdentifier should be capped |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3961](https://issues.apache.org/jira/browse/TEZ-3961) | Tez UI web.xml tries to reach out to java.sun.com for validation after moving to jetty-9 |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-3976](https://issues.apache.org/jira/browse/TEZ-3976) | Batch ShuffleManager error report events |  Major | . | Jaume M | Jaume M |
| [TEZ-4022](https://issues.apache.org/jira/browse/TEZ-4022) | Upgrade Maven Surefire plugin to 3.0.0-M1 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4027](https://issues.apache.org/jira/browse/TEZ-4027) | DagAwareYarnTaskScheduler can miscompute blocked vertices and cause a hang |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-4028](https://issues.apache.org/jira/browse/TEZ-4028) | Events not visible from proto history logging for s3a filesystem until dag completes. |  Major | . | Harish JP | Harish JP |
| [TEZ-4036](https://issues.apache.org/jira/browse/TEZ-4036) | TestMockDAGAppMaster#testInternalPreemption should assert for failed state |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-4004](https://issues.apache.org/jira/browse/TEZ-4004) | Update jetty9 to align with Hadoop and Hive |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4034](https://issues.apache.org/jira/browse/TEZ-4034) | Column selector filter should be case-insensitive |  Minor | UI | Jacob Tolar | Jacob Tolar |
| [TEZ-4035](https://issues.apache.org/jira/browse/TEZ-4035) | Tez master breaks with YARN 3.2.0 ApplicationReport API change |  Minor | . | Rajesh Balamohan | Jonathan Turner Eagles |
| [TEZ-4042](https://issues.apache.org/jira/browse/TEZ-4042) | Speculative attempts should avoid running on the same node |  Major | . | Jonathan Turner Eagles | Ying Han |
| [TEZ-4032](https://issues.apache.org/jira/browse/TEZ-4032) | TEZ will throw "Client cannot authenticate via:[TOKEN, KERBEROS]"  when used with HDFS federation(non viewfs, only hdfs schema used). |  Major | . | zhangbutao | zhangbutao |
| [TEZ-4049](https://issues.apache.org/jira/browse/TEZ-4049) | Fix findbugs issues in NotRunningJob |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4047](https://issues.apache.org/jira/browse/TEZ-4047) | Tez trademark in xml is causing xml parsing issue |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4044](https://issues.apache.org/jira/browse/TEZ-4044) | Zookeeper: exclude jline from Zookeeper client from tez dist |  Major | . | Gopal Vijayaraghavan | Gopal Vijayaraghavan |
| [TEZ-4057](https://issues.apache.org/jira/browse/TEZ-4057) | Fix Unsorted broadcast shuffle umasks |  Major | . | Gopal Vijayaraghavan | Eric Wohlstadter |
| [TEZ-4058](https://issues.apache.org/jira/browse/TEZ-4058) | Changes for 0.9.2 release |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [TEZ-4062](https://issues.apache.org/jira/browse/TEZ-4062) | Speculative attempt scheduling should be aborted when Task has completed |  Major | . | Yingda Chen | Ying Han |
| [TEZ-4066](https://issues.apache.org/jira/browse/TEZ-4066) | Upgrade servlet-api from 2.5 to 3.1.0 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4076](https://issues.apache.org/jira/browse/TEZ-4076) | Add hadoop-cloud-storage jar to aws and azure mvn profiles |  Major | . | Jesus Camacho Rodriguez | Jesus Camacho Rodriguez |
| [TEZ-4088](https://issues.apache.org/jira/browse/TEZ-4088) | Create in-memory ifile writer for transferring smaller payloads (follow up of TEZ-4075) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4091](https://issues.apache.org/jira/browse/TEZ-4091) | UnorderedPartitionedKVWriter::readDataForDME should check if in-mem file is flushed or not |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4085](https://issues.apache.org/jira/browse/TEZ-4085) | Tez UI resources vendor.js and tez-ui.js not getting minified in tez releases |  Minor | . | Himanshu Mishra | Himanshu Mishra |
| [TEZ-3992](https://issues.apache.org/jira/browse/TEZ-3992) | Update commons-codec from 1.4 to 1.11 |  Major | . | László Bodor | László Bodor |
| [TEZ-4107](https://issues.apache.org/jira/browse/TEZ-4107) | PreCommit-TEZ-Build fails - Docker failed to build yetus/tez |  Major | . | László Bodor | László Bodor |
| [TEZ-1869](https://issues.apache.org/jira/browse/TEZ-1869) | Exclude tez-ui war / other dependencies from tez.tar.gz |  Major | UI | Siddharth Seth | Rajesh Balamohan |
| [TEZ-4108](https://issues.apache.org/jira/browse/TEZ-4108) | NullPointerException during speculative execution race condition |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4103](https://issues.apache.org/jira/browse/TEZ-4103) | Progress in DAG, Vertex, and tasks is incorrect |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [TEZ-4115](https://issues.apache.org/jira/browse/TEZ-4115) | turn on data-via-events as default |  Minor | . | Richard Zhang | Richard Zhang |
| [TEZ-3391](https://issues.apache.org/jira/browse/TEZ-3391) | Optimize single split MR split reader |  Major | . | Rohini Palaniswamy | Ahmed Hussein |
| [TEZ-4102](https://issues.apache.org/jira/browse/TEZ-4102) | Let session credentials be merged before merging am launch credentials |  Major | . | László Bodor | László Bodor |
| [TEZ-2229](https://issues.apache.org/jira/browse/TEZ-2229) | bower ESUDO Cannot be run with sudo -- during build |  Critical | . | Fengdong Yu | Syed Shameerur Rahman |
| [TEZ-4026](https://issues.apache.org/jira/browse/TEZ-4026) | Fetch Download rate shows 0.0 MB per second if duration is 0 millis |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3664](https://issues.apache.org/jira/browse/TEZ-3664) | Flaky tests due to writing to /tmp directory |  Major | . | Yesha Vora | Jonathan Turner Eagles |
| [TEZ-3727](https://issues.apache.org/jira/browse/TEZ-3727) | When using HDFS federation, token of tez.simple.history.logging.dir is not added, causing AM to fail |  Major | . | Xi Chen | László Bodor |
| [TEZ-4127](https://issues.apache.org/jira/browse/TEZ-4127) | TestMergeManager#testOnDiskMergerFilenames fails with dot directory name |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4114](https://issues.apache.org/jira/browse/TEZ-4114) | Remove direct jetty dependency from tez |  Major | . | László Bodor | László Bodor |
| [TEZ-4142](https://issues.apache.org/jira/browse/TEZ-4142) | TezUtils.createConfFromByteString on Configuration larger than 32MB throws com.google.protobuf.CodedInputStream exception |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4140](https://issues.apache.org/jira/browse/TEZ-4140) | Tez DAG Recovery: Discrepancy In Scheduling Vertices During Vertex Recovery |  Major | . | Syed Shameerur Rahman | Syed Shameerur Rahman |
| [TEZ-4158](https://issues.apache.org/jira/browse/TEZ-4158) | Change to a maintained bouncy castle version |  Major | . | László Bodor | László Bodor |
| [TEZ-4173](https://issues.apache.org/jira/browse/TEZ-4173) | isSetParallelismCalled should be checked before skipping vertex reinit |  Major | . | László Bodor | Syed Shameerur Rahman |
| [TEZ-4174](https://issues.apache.org/jira/browse/TEZ-4174) | [Kubernetes] Fetcher should connection failure on SocketException |  Major | . | Prasanth Jayachandran | Prasanth Jayachandran |
| [TEZ-4186](https://issues.apache.org/jira/browse/TEZ-4186) | Limits: Fix init order regression from TEZ-4155 |  Major | . | Gopal Vijayaraghavan | Gopal Vijayaraghavan |
| [TEZ-4179](https://issues.apache.org/jira/browse/TEZ-4179) | [Kubernetes] Extend NodeId in tez to support unique worker identity |  Major | . | Prasanth Jayachandran | Attila Magyar |
| [TEZ-4200](https://issues.apache.org/jira/browse/TEZ-4200) | Precommit docker image build fails |  Major | . | Mustafa İman | Mustafa İman |
| [TEZ-4201](https://issues.apache.org/jira/browse/TEZ-4201) | findbugs-maven-plugin is not compatible with Maven 3.6.0+ |  Major | . | Mustafa İman | Mustafa İman |
| [TEZ-4133](https://issues.apache.org/jira/browse/TEZ-4133) | key class implements writableComparable and configurable use default configuration |  Major | . | wang qiang | wang qiang |
| [TEZ-4206](https://issues.apache.org/jira/browse/TEZ-4206) | TestSpeculation.testBasicSpeculationPerVertexConf is flaky |  Major | . | Mustafa İman | Mustafa İman |
| [TEZ-4204](https://issues.apache.org/jira/browse/TEZ-4204) | Data race in RootInputInitializerManager |  Blocker | . | Mustafa İman | Mustafa İman |
| [TEZ-4212](https://issues.apache.org/jira/browse/TEZ-4212) | Fix build checkstyle configuration and suppressions dtd URLs |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4208](https://issues.apache.org/jira/browse/TEZ-4208) | Pipelinesorter uses single SortSpan after spill |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4188](https://issues.apache.org/jira/browse/TEZ-4188) | Link to NodeManager Logs of Home and DAG details doesn't consider yarnProtocol |  Major | UI | Eugene Chung | Eugene Chung |
| [TEZ-4207](https://issues.apache.org/jira/browse/TEZ-4207) | Provide approximate number of input records to be processed in UnorderedKVInput |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4223](https://issues.apache.org/jira/browse/TEZ-4223) | Adding new jars or resources after the first DAG runs does not work. |  Major | . | Harish JP | Harish JP |
| [TEZ-4213](https://issues.apache.org/jira/browse/TEZ-4213) | Bound appContext executor capacity using a configurable property |  Major | . | Panagiotis Garefalakis | Panagiotis Garefalakis |
| [TEZ-3645](https://issues.apache.org/jira/browse/TEZ-3645) | Reuse SerializationFactory while sorting, merging, and writing IFiles |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4228](https://issues.apache.org/jira/browse/TEZ-4228) | TezClassLoader should be used in TezChild and for Configuration objects |  Blocker | . | László Bodor | László Bodor |
| [TEZ-4230](https://issues.apache.org/jira/browse/TEZ-4230) | LocalContainerLauncher can kill task future too early, causing app hang |  Major | . | László Bodor | László Bodor |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-4123](https://issues.apache.org/jira/browse/TEZ-4123) | TestMRRJobsDAGApi flaky timeout - unhealthy node |  Major | . | László Bodor | László Bodor |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3926](https://issues.apache.org/jira/browse/TEZ-3926) | Changes to master for 0.10.x line and 0.9 release branch |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3927](https://issues.apache.org/jira/browse/TEZ-3927) | TestReduceProcessor fails on Hadoop 3.x |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3930](https://issues.apache.org/jira/browse/TEZ-3930) | TestDagAwareYarnTaskScheduler fails on Hadoop 3 |  Major | . | Jonathan Turner Eagles | Jason Darrell Lowe |
| [TEZ-3931](https://issues.apache.org/jira/browse/TEZ-3931) | TestExternalTezServices fails on Hadoop3 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3902](https://issues.apache.org/jira/browse/TEZ-3902) | Upgrade to netty-3.10.5.Final.jar |  Major | . | Eric Wohlstadter | Jason Darrell Lowe |
| [TEZ-3947](https://issues.apache.org/jira/browse/TEZ-3947) | TestATSHistoryWithACLs fails with Hadoop3 and Jersey 1.19 |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3929](https://issues.apache.org/jira/browse/TEZ-3929) | Upgrade Jersey to 1.19 |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3946](https://issues.apache.org/jira/browse/TEZ-3946) | NoClassDefFoundError, org.apache.hadoop.mapred.ShuffleHandler. (Multiple tests with Hadoop3) |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3949](https://issues.apache.org/jira/browse/TEZ-3949) | TestATSHistoryV15 is failing with hadoop3+ |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3944](https://issues.apache.org/jira/browse/TEZ-3944) | TestTaskScheduler times-out on Hadoop3 |  Major | . | Eric Wohlstadter | Jonathan Turner Eagles |
| [TEZ-3994](https://issues.apache.org/jira/browse/TEZ-3994) | Upgrade maven-surefire-plugin to 0.21.0 to support yetus |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4012](https://issues.apache.org/jira/browse/TEZ-4012) | Add docker support for Tez. |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4021](https://issues.apache.org/jira/browse/TEZ-4021) | API incompatibility wro4j-maven-plugin |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4041](https://issues.apache.org/jira/browse/TEZ-4041) | TestExtServicesWithLocalMode fails in docker |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4043](https://issues.apache.org/jira/browse/TEZ-4043) | Create a yetus compatible checkstyle configuration |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4050](https://issues.apache.org/jira/browse/TEZ-4050) | maven site is failing due to missing configuration. |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-3995](https://issues.apache.org/jira/browse/TEZ-3995) | Fix dot files produced by tests to prevent ASF license warnings in yetus |  Major | . | Jonathan Turner Eagles | Jaume M |
| [TEZ-4052](https://issues.apache.org/jira/browse/TEZ-4052) | Fit dot files ASF License issues - part 2 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-1348](https://issues.apache.org/jira/browse/TEZ-1348) | Allow Tez local mode to run against filesystems other than local FS |  Critical | . | Siddharth Seth | Todd Lipcon |
| [TEZ-3860](https://issues.apache.org/jira/browse/TEZ-3860) | JDK9: ReflectionUtils may not use URLClassLoader |  Major | . | Zoltan Haindrich | László Bodor |
| [TEZ-4122](https://issues.apache.org/jira/browse/TEZ-4122) | TestMRRJobsDAGApi should set TezClassLoader |  Major | . | László Bodor | László Bodor |
| [TEZ-4161](https://issues.apache.org/jira/browse/TEZ-4161) | Speed up TestTezUtils |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4162](https://issues.apache.org/jira/browse/TEZ-4162) | Speed up TestInputReadyTracker |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4163](https://issues.apache.org/jira/browse/TEZ-4163) | Speed up TestTaskReporter |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4164](https://issues.apache.org/jira/browse/TEZ-4164) | Speed up TestFetcher |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4165](https://issues.apache.org/jira/browse/TEZ-4165) | Speed up TestShuffleScheduler#testNumParallelScheduledFetchers |  Major | . | Jonathan Turner Eagles | László Bodor |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3923](https://issues.apache.org/jira/browse/TEZ-3923) | Move master to Hadoop 3+ and create separate 0.9.x line |  Major | . | Eric Wohlstadter | Jonathan Turner Eagles |
| [TEZ-3977](https://issues.apache.org/jira/browse/TEZ-3977) | Add Eric Wohlstadter's public key to KEYS |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3988](https://issues.apache.org/jira/browse/TEZ-3988) | Update snapshot version in master to 0.10.1-SNAPSHOT |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-3986](https://issues.apache.org/jira/browse/TEZ-3986) | add CHANGES.txt (branch-0.10.0 only) |  Major | . | Eric Wohlstadter | Eric Wohlstadter |
| [TEZ-4003](https://issues.apache.org/jira/browse/TEZ-4003) | Add gopalv@apache.org to KEYS file |  Trivial | . | Gopal Vijayaraghavan | Gopal Vijayaraghavan |
| [TEZ-3998](https://issues.apache.org/jira/browse/TEZ-3998) | Allow CONCURRENT edge property in DAG construction and introduce ConcurrentSchedulingType |  Major | . | Yingda Chen | Yingda Chen |
| [TEZ-4037](https://issues.apache.org/jira/browse/TEZ-4037) | Add back DAG search status KILLED |  Major | UI | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4040](https://issues.apache.org/jira/browse/TEZ-4040) | Upgrade RoaringBitmap version to avoid NoSuchMethodError |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4031](https://issues.apache.org/jira/browse/TEZ-4031) | Support tez gitbox migration |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4086](https://issues.apache.org/jira/browse/TEZ-4086) | Some Tez examples cannot work with outputPaths on a FS other than the default FS |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-4203](https://issues.apache.org/jira/browse/TEZ-4203) | Findbugs: MergeThread.shuffleSchedulerThread; locked 80% of time |  Minor | . | Mustafa İman | Rajesh Balamohan |


