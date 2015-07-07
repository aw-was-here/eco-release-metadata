
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

## Release 0.5.2 - 2014-11-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1700](https://issues.apache.org/jira/browse/TEZ-1700) | Replace containerId from TaskLocationHint with [TaskIndex+Vertex] based affinity |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1699](https://issues.apache.org/jira/browse/TEZ-1699) | Vertex.setParallelism should throw an exception for invalid invocations |  Critical | . | Bikas Saha | Bikas Saha |
| [TEZ-1666](https://issues.apache.org/jira/browse/TEZ-1666) | UserPayload should be null if the payload is not specified |  Critical | . | Siddharth Seth | Siddharth Seth |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1710](https://issues.apache.org/jira/browse/TEZ-1710) | Add support for cluster default AM/task launch opts |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1674](https://issues.apache.org/jira/browse/TEZ-1674) | Rename parameters related to counters / memory distribution |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1673](https://issues.apache.org/jira/browse/TEZ-1673) | Update the default value for allowed node failures, num events per heartbeat and counter update interval |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1667](https://issues.apache.org/jira/browse/TEZ-1667) | Add a system test for InitializerEvents |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1641](https://issues.apache.org/jira/browse/TEZ-1641) | Add debug logs in VertexManager to help debugging custom VertexManagerPlugins |  Minor | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1547](https://issues.apache.org/jira/browse/TEZ-1547) | Make use of state change notifier in VertexManagerPlugins and fix TEZ-1494 without latency penalty |  Major | . | Siddharth Seth | Bikas Saha |
| [TEZ-1396](https://issues.apache.org/jira/browse/TEZ-1396) | Grouping should generate consistent groups when given the same set of splits |  Major | . | Siddharth Seth | Bikas Saha |
| [TEZ-1141](https://issues.apache.org/jira/browse/TEZ-1141) | DAGStatus.Progress should include number of failed and killed attempts |  Major | . | Bikas Saha | Hitesh Shah |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1735](https://issues.apache.org/jira/browse/TEZ-1735) | Allow setting basic info per DAG for Tez UI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1731](https://issues.apache.org/jira/browse/TEZ-1731) | OnDiskMerger can end up clobbering files across tasks with LocalDiskFetch |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1725](https://issues.apache.org/jira/browse/TEZ-1725) | Fix nanosecond to millis conversion in TezMxBeanResourceCalculator |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1722](https://issues.apache.org/jira/browse/TEZ-1722) | DAG should be related to Application Id in ATS data |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1716](https://issues.apache.org/jira/browse/TEZ-1716) | Additional ATS data for UI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1715](https://issues.apache.org/jira/browse/TEZ-1715) | Fix use of import java.util.\* in MultiMRInput |  Trivial | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1713](https://issues.apache.org/jira/browse/TEZ-1713) | tez.lib.uris should not require the paths specified to be fully qualified |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1712](https://issues.apache.org/jira/browse/TEZ-1712) | SSL context gets destroyed too soon after downloading data from one of the vertices |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1711](https://issues.apache.org/jira/browse/TEZ-1711) | Don't cache outputSpecList in VertexImpl.getOutputSpecList(taskIndex) |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1703](https://issues.apache.org/jira/browse/TEZ-1703) | Exception handling for InputInitializer |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1701](https://issues.apache.org/jira/browse/TEZ-1701) | ATS fixes to flush all history events and also using batching |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1698](https://issues.apache.org/jira/browse/TEZ-1698) | Cut down on ResourceCalculatorProcessTree overheads in Tez |  Major | . | Gopal V | Rajesh Balamohan |
| [TEZ-1688](https://issues.apache.org/jira/browse/TEZ-1688) | Add applicationId as a primary filter for all Timeline data for easier export |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1686](https://issues.apache.org/jira/browse/TEZ-1686) | TestRecoveryParser.testGetLastCompletedDAG fails sometimes |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1684](https://issues.apache.org/jira/browse/TEZ-1684) | upgrade mockito to latest release |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1683](https://issues.apache.org/jira/browse/TEZ-1683) | Do ugi::getGroups only when necessary when checking ACLs |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1682](https://issues.apache.org/jira/browse/TEZ-1682) | Tez AM hangs at times when there are task failures |  Blocker | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1676](https://issues.apache.org/jira/browse/TEZ-1676) | Fix failing test in TestHistoryEventTimelineConversion |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1669](https://issues.apache.org/jira/browse/TEZ-1669) | yarn-swimlanes.sh throws error post TEZ-1556 |  Critical | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1668](https://issues.apache.org/jira/browse/TEZ-1668) | InputInitializers should be able to register for Vertex state updates in the constructor itself |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1664](https://issues.apache.org/jira/browse/TEZ-1664) | Add checks to ensure that the client and AM are compatible |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1658](https://issues.apache.org/jira/browse/TEZ-1658) | Additional data generation to Timeline for UI |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1649](https://issues.apache.org/jira/browse/TEZ-1649) | ShuffleVertexManager auto reduce parallelism can cause jobs to hang indefinitely (with ScatterGather edges) |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1647](https://issues.apache.org/jira/browse/TEZ-1647) | Issue with caching of events in VertexManager::onRootVertexInitialized |  Major | . | Hitesh Shah | Jeff Zhang |
| [TEZ-1646](https://issues.apache.org/jira/browse/TEZ-1646) | Add support for augmenting classpath via configs |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1645](https://issues.apache.org/jira/browse/TEZ-1645) | Add support for specifying additional local resources via config |  Major | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1643](https://issues.apache.org/jira/browse/TEZ-1643) | DAGAppMaster kills DAG & shuts down, when RM is restarted |  Major | . | Rajesh Balamohan | Hitesh Shah |
| [TEZ-1638](https://issues.apache.org/jira/browse/TEZ-1638) | Missing type parametrization in runtime Input/Output configs |  Critical | . | Kostas Tzoumas | Kostas Tzoumas |
| [TEZ-1637](https://issues.apache.org/jira/browse/TEZ-1637) | Improved shuffle error handling across NM restarts |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1634](https://issues.apache.org/jira/browse/TEZ-1634) | BlockCompressorStream.finish() is called twice in IFile.close leading to Shuffle errors |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1633](https://issues.apache.org/jira/browse/TEZ-1633) | Fixed expected values in TestTaskRecovery.testRecovery\_OneTAStarted |  Major | . | Alexander Pivovarov | Alexander Pivovarov |
| [TEZ-1632](https://issues.apache.org/jira/browse/TEZ-1632) | NPE at TestPreemption.testPreemptionWithoutSession |  Major | . | Alexander Pivovarov | Alexander Pivovarov |
| [TEZ-1629](https://issues.apache.org/jira/browse/TEZ-1629) | Replace ThreadPool's default RejectedExecutionHandler in ContainerLauncherImpl to void abort when AM shutdown |  Major | . | Rajesh Balamohan | Jeff Zhang |
| [TEZ-1620](https://issues.apache.org/jira/browse/TEZ-1620) | Wait for application finish before stopping MiniTezCluster |  Major | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1614](https://issues.apache.org/jira/browse/TEZ-1614) | Use setFromConfiguration() in SortMergeJoinExample to demonstrate the usage |  Major | . | Rajesh Balamohan | Rajesh Balamohan |
| [TEZ-1596](https://issues.apache.org/jira/browse/TEZ-1596) | Secure Shuffle utils is extremely expensive for fast queries |  Major | . | Gopal V | Rajesh Balamohan |
| [TEZ-1590](https://issues.apache.org/jira/browse/TEZ-1590) | Fetchers should not report failures after the Processor on the task completes |  Major | . | Rohini Palaniswamy | Siddharth Seth |
| [TEZ-1579](https://issues.apache.org/jira/browse/TEZ-1579) | MR examples should be setting mapreduce.framework.name to yarn-tez |  Minor | . | Hitesh Shah | Krisztian Horvath |
| [TEZ-1567](https://issues.apache.org/jira/browse/TEZ-1567) | Avoid blacklisting nodes when the disable blacklisting threshold is about to be hit |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1479](https://issues.apache.org/jira/browse/TEZ-1479) | Disambiguate between ShuffleInputEventHandler and ShuffleInputEventHandlerImpl (which are not related) |  Major | . | Gopal V | Siddharth Seth |
| [TEZ-1424](https://issues.apache.org/jira/browse/TEZ-1424) | Fixes to DAG text representation in debug mode |  Critical | . | Siddharth Seth | Rajesh Balamohan |
| [TEZ-1210](https://issues.apache.org/jira/browse/TEZ-1210) | TezClientUtils.localizeDagPlanAsText() needs to be fixed for session mode |  Major | . | Bikas Saha | Alexander Pivovarov |
| [TEZ-1176](https://issues.apache.org/jira/browse/TEZ-1176) | Set parallelism should end up sending an update to ATS if numTasks are updated at run-time |  Major | . | Hitesh Shah | Hitesh Shah |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1689](https://issues.apache.org/jira/browse/TEZ-1689) | Exception handling for EdgeManagerPlugin |  Critical | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1621](https://issues.apache.org/jira/browse/TEZ-1621) | Should report error to AM before shuting down TezChild |  Major | . | Deepesh Khandelwal | Jeff Zhang |
| [TEZ-1542](https://issues.apache.org/jira/browse/TEZ-1542) | Local Mode crashes on concurrentModificationException |  Major | . | Chen He | Chen He |
| [TEZ-1470](https://issues.apache.org/jira/browse/TEZ-1470) | Recovery fails due to TaskAttemptFinishedEvent being recorded multiple times for the same task |  Minor | . | Jeff Zhang | Jeff Zhang |
| [TEZ-1267](https://issues.apache.org/jira/browse/TEZ-1267) | Exception handling for VertexManager |  Critical | . | Siddharth Seth | Jeff Zhang |
| [TEZ-792](https://issues.apache.org/jira/browse/TEZ-792) | Default staging path should have user name |  Critical | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [TEZ-1728](https://issues.apache.org/jira/browse/TEZ-1728) | Remove local host name from Fetcher thread name |  Major | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1726](https://issues.apache.org/jira/browse/TEZ-1726) | Build broken against Hadoop-2.6.0 due to change in NodeReport |  Critical | . | Siddharth Seth | Siddharth Seth |
| [TEZ-1695](https://issues.apache.org/jira/browse/TEZ-1695) | Set correct version on 0.5 branch to 0.5.2-SNAPSHOT |  Minor | . | Hitesh Shah | Hitesh Shah |
| [TEZ-1665](https://issues.apache.org/jira/browse/TEZ-1665) | DAGScheduler should provide a priority range instead of an exact priority |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1656](https://issues.apache.org/jira/browse/TEZ-1656) | Grouping of splits should maintain the original ordering of splits within a group |  Major | . | Bikas Saha | Bikas Saha |
| [TEZ-1462](https://issues.apache.org/jira/browse/TEZ-1462) | Remove unnecessary SuppressWarnings |  Trivial | . | Alexander Pivovarov | Alexander Pivovarov |


