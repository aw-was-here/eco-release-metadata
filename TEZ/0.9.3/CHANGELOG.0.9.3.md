
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

## Release 0.9.3 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-4045](https://issues.apache.org/jira/browse/TEZ-4045) | Task should be accessible from TaskAttempt |  Major | . | Yingda Chen | Ying Han |
| [TEZ-4068](https://issues.apache.org/jira/browse/TEZ-4068) | Prevent new speculative attempt after task has issued canCommit to an attempt |  Major | . | Jonathan Turner Eagles | Ying Han |
| [TEZ-4084](https://issues.apache.org/jira/browse/TEZ-4084) | Tez local mode fails when distributed cache creates link with parent |  Minor | . | Jacob Tolar | Jacob Tolar |
| [TEZ-4083](https://issues.apache.org/jira/browse/TEZ-4083) | Upgrade to latest 9.3.x Jetty version |  Major | . | Daniel Velasquez | László Bodor |
| [TEZ-4067](https://issues.apache.org/jira/browse/TEZ-4067) | Tez Speculation decision is calculated on each update by the dispatcher |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [TEZ-4117](https://issues.apache.org/jira/browse/TEZ-4117) | Fix minor issues in docs/pom.xml |  Major | . | László Bodor | László Bodor |
| [TEZ-4101](https://issues.apache.org/jira/browse/TEZ-4101) | Eliminate some guava dependencies by Java8+ features - Preconditions |  Major | . | László Bodor | László Bodor |
| [TEZ-4106](https://issues.apache.org/jira/browse/TEZ-4106) | Add Exponential Smooth RuntimeEstimator to the speculator |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [TEZ-4081](https://issues.apache.org/jira/browse/TEZ-4081) | Container release idle timeout exception for equal min and max values |  Major | . | Jonathan Turner Eagles | László Bodor |
| [TEZ-4124](https://issues.apache.org/jira/browse/TEZ-4124) | GuavaShim: introduce an interoperability layer for different guava versions |  Major | . | László Bodor | László Bodor |
| [TEZ-4099](https://issues.apache.org/jira/browse/TEZ-4099) | Add details on whether SSL is enabled or not in HttpConnectionParams |  Trivial | . | Rajesh Balamohan | László Bodor |
| [TEZ-4131](https://issues.apache.org/jira/browse/TEZ-4131) | Reduce apache commons collections direct dependencies |  Minor | . | Jonathan Turner Eagles | zhangbutao |
| [TEZ-4134](https://issues.apache.org/jira/browse/TEZ-4134) | Upgrade maven surefire plugin to 3.0.0-M4 |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4146](https://issues.apache.org/jira/browse/TEZ-4146) | Register RUNNING state in DAG's state change callback |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4145](https://issues.apache.org/jira/browse/TEZ-4145) | Reduce lock contention in TezSpillRecord |  Major | . | Rajesh Balamohan | László Bodor |
| [TEZ-4144](https://issues.apache.org/jira/browse/TEZ-4144) | Checkstyle: '{' is followed by whitespace |  Trivial | . | László Bodor | László Bodor |
| [TEZ-4147](https://issues.apache.org/jira/browse/TEZ-4147) | Reduce NN calls in RecoveryService::handleRecoveryEvent |  Trivial | . | Rajesh Balamohan | László Bodor |
| [TEZ-4151](https://issues.apache.org/jira/browse/TEZ-4151) | Missing apache commons collections4 dependency on tez-mapreduce and tez-plugins/tez-history-parser |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4136](https://issues.apache.org/jira/browse/TEZ-4136) | String representation for tez counters |  Major | . | László Bodor | László Bodor |
| [TEZ-4155](https://issues.apache.org/jira/browse/TEZ-4155) | Remove sync bottleneck in counters |  Trivial | . | Rajesh Balamohan | László Bodor |
| [TEZ-4182](https://issues.apache.org/jira/browse/TEZ-4182) | Expose build user and java version in version-info.properties |  Minor | . | László Bodor | László Bodor |
| [TEZ-4171](https://issues.apache.org/jira/browse/TEZ-4171) | DAGImp::getDAGStatus should try to report RUNNING state information correctly |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-4135](https://issues.apache.org/jira/browse/TEZ-4135) | Improve memory allocation when executing in-memory reads |  Major | . | Rajesh Balamohan | László Bodor |
| [TEZ-4199](https://issues.apache.org/jira/browse/TEZ-4199) | MergeManager::finalMerge should make use of compression |  Major | . | Rajesh Balamohan | Mustafa İman |
| [TEZ-4172](https://issues.apache.org/jira/browse/TEZ-4172) | Let tasks be killed after too many overall attempts |  Major | . | László Bodor | László Bodor |
| [TEZ-4238](https://issues.apache.org/jira/browse/TEZ-4238) | Check null mrReader in MRInput.close |  Major | . | László Bodor | László Bodor |
| [TEZ-4229](https://issues.apache.org/jira/browse/TEZ-4229) | Improve TezLocalCacheManager to use configured root directory |  Major | . | László Bodor | László Bodor |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-4057](https://issues.apache.org/jira/browse/TEZ-4057) | Fix Unsorted broadcast shuffle umasks |  Major | . | Gopal Vijayaraghavan | Eric Wohlstadter |
| [TEZ-4062](https://issues.apache.org/jira/browse/TEZ-4062) | Speculative attempt scheduling should be aborted when Task has completed |  Major | . | Yingda Chen | Ying Han |
| [TEZ-4085](https://issues.apache.org/jira/browse/TEZ-4085) | Tez UI resources vendor.js and tez-ui.js not getting minified in tez releases |  Minor | . | Himanshu Mishra | Himanshu Mishra |
| [TEZ-4107](https://issues.apache.org/jira/browse/TEZ-4107) | PreCommit-TEZ-Build fails - Docker failed to build yetus/tez |  Major | . | László Bodor | László Bodor |
| [TEZ-1869](https://issues.apache.org/jira/browse/TEZ-1869) | Exclude tez-ui war / other dependencies from tez.tar.gz |  Major | UI | Siddharth Seth | Rajesh Balamohan |
| [TEZ-4108](https://issues.apache.org/jira/browse/TEZ-4108) | NullPointerException during speculative execution race condition |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4103](https://issues.apache.org/jira/browse/TEZ-4103) | Progress in DAG, Vertex, and tasks is incorrect |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [TEZ-3391](https://issues.apache.org/jira/browse/TEZ-3391) | Optimize single split MR split reader |  Major | . | Rohini Palaniswamy | Ahmed Hussein |
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
| [TEZ-4186](https://issues.apache.org/jira/browse/TEZ-4186) | Limits: Fix init order regression from TEZ-4155 |  Major | . | Gopal Vijayaraghavan | Gopal Vijayaraghavan |
| [TEZ-4200](https://issues.apache.org/jira/browse/TEZ-4200) | Precommit docker image build fails |  Major | . | Mustafa İman | Mustafa İman |
| [TEZ-4201](https://issues.apache.org/jira/browse/TEZ-4201) | findbugs-maven-plugin is not compatible with Maven 3.6.0+ |  Major | . | Mustafa İman | Mustafa İman |
| [TEZ-4133](https://issues.apache.org/jira/browse/TEZ-4133) | key class implements writableComparable and configurable use default configuration |  Major | . | wang qiang | wang qiang |
| [TEZ-4206](https://issues.apache.org/jira/browse/TEZ-4206) | TestSpeculation.testBasicSpeculationPerVertexConf is flaky |  Major | . | Mustafa İman | Mustafa İman |
| [TEZ-4212](https://issues.apache.org/jira/browse/TEZ-4212) | Fix build checkstyle configuration and suppressions dtd URLs |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4188](https://issues.apache.org/jira/browse/TEZ-4188) | Link to NodeManager Logs of Home and DAG details doesn't consider yarnProtocol |  Major | UI | Eugene Chung | Eugene Chung |
| [TEZ-4223](https://issues.apache.org/jira/browse/TEZ-4223) | Adding new jars or resources after the first DAG runs does not work. |  Major | . | Harish JP | Harish JP |
| [TEZ-3645](https://issues.apache.org/jira/browse/TEZ-3645) | Reuse SerializationFactory while sorting, merging, and writing IFiles |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4228](https://issues.apache.org/jira/browse/TEZ-4228) | TezClassLoader should be used in TezChild and for Configuration objects |  Blocker | . | László Bodor | László Bodor |
| [TEZ-4230](https://issues.apache.org/jira/browse/TEZ-4230) | LocalContainerLauncher can kill task future too early, causing app hang |  Major | . | László Bodor | László Bodor |
| [TEZ-4070](https://issues.apache.org/jira/browse/TEZ-4070) | SSLFactory not closed in DAGClientTimelineImpl caused native memory issues |  Major | . | Xun REN | László Bodor |
| [TEZ-4237](https://issues.apache.org/jira/browse/TEZ-4237) | Upgrade async-http-client-1.9.40 due to CVE-2017-14063 |  Major | . | László Bodor | László Bodor |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-4123](https://issues.apache.org/jira/browse/TEZ-4123) | TestMRRJobsDAGApi flaky timeout - unhealthy node |  Major | . | László Bodor | László Bodor |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-3860](https://issues.apache.org/jira/browse/TEZ-3860) | JDK9: ReflectionUtils may not use URLClassLoader |  Major | . | Zoltan Haindrich | László Bodor |
| [TEZ-4122](https://issues.apache.org/jira/browse/TEZ-4122) | TestMRRJobsDAGApi should set TezClassLoader |  Major | . | László Bodor | László Bodor |
| [TEZ-4161](https://issues.apache.org/jira/browse/TEZ-4161) | Speed up TestTezUtils |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4162](https://issues.apache.org/jira/browse/TEZ-4162) | Speed up TestInputReadyTracker |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4163](https://issues.apache.org/jira/browse/TEZ-4163) | Speed up TestTaskReporter |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4164](https://issues.apache.org/jira/browse/TEZ-4164) | Speed up TestFetcher |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [TEZ-4165](https://issues.apache.org/jira/browse/TEZ-4165) | Speed up TestShuffleScheduler#testNumParallelScheduledFetchers |  Major | . | Jonathan Turner Eagles | László Bodor |


