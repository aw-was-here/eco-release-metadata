
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
# Apache Tez  0.8.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2860](https://issues.apache.org/jira/browse/TEZ-2860) | *Major* | **NPE in DAGClientImpl**

{code}
-------------------------------------------------------------------------------
Test set: org.apache.tez.client.TestLocalMode
-------------------------------------------------------------------------------
Tests run: 4, Failures: 0, Errors: 1, Skipped: 0, Time elapsed: 12.312 sec \<\<\< FAILURE!
testNoSysExitOnSuccessfulDAG(org.apache.tez.client.TestLocalMode)  Time elapsed: 0.178 sec  \<\<\< ERROR!
java.lang.NullPointerException: null
	at com.google.protobuf.AbstractMessageLite$Builder.checkForNullValues(AbstractMessageLite.java:338)
	at com.google.protobuf.AbstractMessageLite$Builder.addAll(AbstractMessageLite.java:323)
	at org.apache.tez.dag.api.records.DAGProtos$DAGStatusProto$Builder.addAllDiagnostics(DAGProtos.java:21033)
	at org.apache.tez.dag.api.client.DAGClientImpl.getDAGStatusViaRM(DAGClientImpl.java:358)
	at org.apache.tez.dag.api.client.DAGClientImpl.getDAGStatus(DAGClientImpl.java:168)
	at org.apache.tez.dag.api.client.DAGClientImpl.\_waitForCompletionWithStatusUpdates(DAGClientImpl.java:370)
	at org.apache.tez.dag.api.client.DAGClientImpl.waitForCompletion(DAGClientImpl.java:227)
	at org.apache.tez.client.TestLocalMode.testNoSysExitOnSuccessfulDAG(TestLocalMode.java:131)

{code}


---

* [TEZ-2859](https://issues.apache.org/jira/browse/TEZ-2859) | *Blocker* | **TestMergeManager.testLocalDiskMergeMultipleTasks failing**

java.lang.AssertionError: Values should be different. Actual: 1
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.failEquals(Assert.java:185)
	at org.junit.Assert.assertNotEquals(Assert.java:161)
	at org.junit.Assert.assertNotEquals(Assert.java:198)
	at org.junit.Assert.assertNotEquals(Assert.java:209)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.TestMergeManager.testLocalDiskMergeMultipleTasks(TestMergeManager.java:432)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.TestMergeManager.testLocalDiskMergeMultipleTasks(TestMergeManager.java:192)


https://builds.apache.org/job/Tez-Build/1259/testReport/junit/org.apache.tez.runtime.library.common.shuffle.orderedgrouped/TestMergeManager/testLocalDiskMergeMultipleTasks/


---

* [TEZ-2858](https://issues.apache.org/jira/browse/TEZ-2858) | *Major* | **Stop using System.currentTimeMillis in TestInputReadyTracker**

Looks like the test can end up being flakey on some platforms where the resolution may be higher than 1ms.


---

* [TEZ-2857](https://issues.apache.org/jira/browse/TEZ-2857) | *Major* | **Flakey tests in TestDAGImpl**

testDAGKill
{code}
java.lang.AssertionError: expected:\<6\> but was:\<5\>
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.failNotEquals(Assert.java:743)
	at org.junit.Assert.assertEquals(Assert.java:118)
	at org.junit.Assert.assertEquals(Assert.java:555)
	at org.junit.Assert.assertEquals(Assert.java:542)
	at org.apache.tez.dag.app.dag.impl.TestDAGImpl.testDAGKill(TestDAGImpl.java:1880)
{code}

testDAGKillPending
{code}
java.lang.AssertionError: expected:\<5\> but was:\<3\>
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.failNotEquals(Assert.java:743)
	at org.junit.Assert.assertEquals(Assert.java:118)
	at org.junit.Assert.assertEquals(Assert.java:555)
	at org.junit.Assert.assertEquals(Assert.java:542)
	at org.apache.tez.dag.app.dag.impl.TestDAGImpl.testDAGKillPending(TestDAGImpl.java:1916)
{code}

There's a race between vertex success and vertex terminate reaching the vertices, which cause the tests to be flakey.


---

* [TEZ-2855](https://issues.apache.org/jira/browse/TEZ-2855) | *Critical* | **Potential NPE while routing VertexManager events**

Observed while running against 0.8.0-alpha. This will likely affect 0.7 as well - that'll be known after debugging.

{code}
2015-09-24T12:13:42,675 ERROR [Dispatcher thread: Central] common.AsyncDispatcher: Error in dispatcher thread
java.lang.NullPointerException
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handleRoutedTezEvents(VertexImpl.java:4429) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl.access$4000(VertexImpl.java:203) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl$RouteEventTransition.transition(VertexImpl.java:4175) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl$RouteEventTransition.transition(VertexImpl.java:4167) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:385) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448) ~[hadoop-yarn-common-2.6.0.jar:?]
  at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1906) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:202) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:2069) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:2055) ~[TezAppJar.jar:0.8.0-alpha]
  at org.apache.tez.common.AsyncDispatcher.dispatch(AsyncDispatcher.java:183) [tez-common-0.8.0-alpha.jar:0.8.0-alpha]
  at org.apache.tez.common.AsyncDispatcher$1.run(AsyncDispatcher.java:114) [tez-common-0.8.0-alpha.jar:0.8.0-alpha]
  at java.lang.Thread.run(Thread.java:745) [?:1.8.0\_40]
2015-09-24T12:13:42,681 INFO [HistoryEventHandlingThread] impl.SimpleHistoryLoggingService: Writing event TASK\_ATTEMPT\_FINISHED to history file
{code}

Looks like the VertexManager was null.


---

* [TEZ-2853](https://issues.apache.org/jira/browse/TEZ-2853) | *Blocker* | **Tez UI: task attempt page is coming empty**

Creeped in from TEZ-2843 changes.


---

* [TEZ-2847](https://issues.apache.org/jira/browse/TEZ-2847) | *Major* | **Tez UI: Task details doesn't gets updated on manual refresh after job complete**

When the AM gets stopped in between an in-progress poll, the UI display details from the last poll and doesn't gets updated.
The update doesn't happen even on manual refresh.


---

* [TEZ-2843](https://issues.apache.org/jira/browse/TEZ-2843) | *Major* | **Tez UI: Show error if in progress fails due to AM not reachable**

currently the in progress update can fail when the AM finishes, but no feedback is given to the user regarding the same.


---

* [TEZ-2836](https://issues.apache.org/jira/browse/TEZ-2836) | *Major* | **Avoid setting framework/system counters for tasks running in threads**

Counters like FileSystemCounters, GC\_TIME, CPU\_TIME etc - are computed incorrectly in case of LocalMode, Uber, TestService and others where tasks may execute in threads. (The values end up being a combination of what's running in the process - which could be other tasks or the AM).
It's better not to set them for now, instead of reporting incorrect values.


---

* [TEZ-2834](https://issues.apache.org/jira/browse/TEZ-2834) | *Major* | **Make Tez preemption resilient to incorrect free resource reported by YARN**

Will attach the DAG.

Repro for reference: TPC-DS q\_70 @ 30 TB scale.

"Map 7" completes in 2 waves. Output is very tiny, so reducer 8 gets launched slightly late.  But before "Reducer 9" can get scheduled, slots are taken up by "Map 1", which is not preempted for running "Reducer 9".

This is with 0.7.1 codebase.


---

* [TEZ-2833](https://issues.apache.org/jira/browse/TEZ-2833) | *Major* | **Dont create extra directory during ATS file download**

The file name already has the dag id as a unique identifier. Placing it inside another directory with the dag id seems unnecessary and can throw off a user expecting the zip file in the user specified download dir.
/cc [~rajesh.balamohan]


---

* [TEZ-2832](https://issues.apache.org/jira/browse/TEZ-2832) | *Major* | **Support tests for both SimpleHistory logging and ATS logging**

This will ensure that both kinds of logging continue to be valid for using with the cp analyzer


---

* [TEZ-2827](https://issues.apache.org/jira/browse/TEZ-2827) | *Minor* | **Increase timeout for TestFetcher testInputAttemptIdentifierMap**

{noformat}
java.lang.Exception: test timed out after 1000 milliseconds
	at java.util.ArrayList.\<init\>(ArrayList.java:144)
	at org.mockito.cglib.proxy.Enhancer.emitMethods(Enhancer.java:895)
	at org.mockito.cglib.proxy.Enhancer.generateClass(Enhancer.java:499)
	at org.mockito.cglib.core.DefaultGeneratorStrategy.generate(DefaultGeneratorStrategy.java:25)
	at org.mockito.cglib.core.AbstractClassGenerator.create(AbstractClassGenerator.java:217)
	at org.mockito.cglib.proxy.Enhancer.createHelper(Enhancer.java:378)
	at org.mockito.cglib.proxy.Enhancer.createClass(Enhancer.java:318)
	at org.mockito.internal.creation.jmock.ClassImposterizer.createProxyClass(ClassImposterizer.java:124)
	at org.mockito.internal.creation.jmock.ClassImposterizer.imposterise(ClassImposterizer.java:60)
	at org.mockito.internal.creation.jmock.ClassImposterizer.imposterise(ClassImposterizer.java:52)
	at org.mockito.internal.creation.CglibMockMaker.createMock(CglibMockMaker.java:24)
	at org.mockito.internal.util.MockUtil.createMock(MockUtil.java:32)
	at org.mockito.internal.MockitoCore.mock(MockitoCore.java:59)
	at org.mockito.Mockito.spy(Mockito.java:1341)
	at org.apache.tez.runtime.library.common.shuffle.TestFetcher.testInputAttemptIdentifierMap(TestFetcher.java:278)
{noformat}

Works fine in local environment. But times out in precommit env at times.


---

* [TEZ-2825](https://issues.apache.org/jira/browse/TEZ-2825) | *Major* | **Report progress in terms of completed tasks to reduce load on AM for Tez UI**

Scanning all tasks and doing an average progress is very heavyweight for calculating vertex progress.


---

* [TEZ-2817](https://issues.apache.org/jira/browse/TEZ-2817) | *Major* | **Tez UI: update in progress counter data for the dag vertices and tasks table**

Update dag\>vertex & dag\>tasks tables with the counter values.


---

* [TEZ-2816](https://issues.apache.org/jira/browse/TEZ-2816) | *Major* | **Preemption sometimes does not respect heartbeats between preemptions**

https://builds.apache.org/job/Tez-Build-Hadoop-2.4/170/console

{noformat}
Running org.apache.tez.analyzer.TestAnalyzer
Tests run: 13, Failures: 2, Errors: 0, Skipped: 0, Time elapsed: 99.595 sec \<\<\< FAILURE!
testBasicInputFailureWithoutExit(org.apache.tez.analyzer.TestAnalyzer)  Time elapsed: 6.276 sec  \<\<\< FAILURE!
java.lang.AssertionError: v2 : 000000\_0
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.apache.tez.analyzer.TestAnalyzer.verifyCriticalPath(TestAnalyzer.java:273)
	at org.apache.tez.analyzer.TestAnalyzer.runDAGAndVerify(TestAnalyzer.java:220)
	at org.apache.tez.analyzer.TestAnalyzer.testBasicInputFailureWithoutExit(TestAnalyzer.java:399)

testCascadingInputFailureWithExitSuccess(org.apache.tez.analyzer.TestAnalyzer)  Time elapsed: 5.986 sec  \<\<\< FAILURE!
java.lang.AssertionError: v3 : 000000\_1
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.apache.tez.analyzer.TestAnalyzer.verifyCriticalPath(TestAnalyzer.java:273)
	at org.apache.tez.analyzer.TestAnalyzer.runDAGAndVerify(TestAnalyzer.java:220)
	at org.apache.tez.analyzer.TestAnalyzer.testCascadingInputFailureWithExitSuccess(TestAnalyzer.java:561)


Results :

Failed tests: 
  TestAnalyzer.testBasicInputFailureWithoutExit:399-\>runDAGAndVerify:220-\>verifyCriticalPath:273 v2 : 000000\_0
  TestAnalyzer.testCascadingInputFailureWithExitSuccess:561-\>runDAGAndVerify:220-\>verifyCriticalPath:273 v3 : 000000\_1
{noformat}


---

* [TEZ-2813](https://issues.apache.org/jira/browse/TEZ-2813) | *Major* | **Tez UI: add counter data for rest api calls to AM Web Services v2**

- Add attempts API
- Add counters to the returned data for vertices, tasks & attempts.


---

* [TEZ-2812](https://issues.apache.org/jira/browse/TEZ-2812) | *Major* | **Tez UI: Update task & attempt tables while in progress.**

- Update Vertex \> All Tasks
- Update DAG \> All Attempts, Vertex \> Attempts & Task \> Attempts pages while in progress.


---

* [TEZ-2810](https://issues.apache.org/jira/browse/TEZ-2810) | *Major* | **Support for showing allocation delays due to internal preemption**

Also adds support for drawing critical path for attempts that did not get allocated or launched.


---

* [TEZ-2808](https://issues.apache.org/jira/browse/TEZ-2808) | *Major* | **Race condition between preemption and container assignment**

New container allocated. Put in delayed container manager queue. Triggers assignment run on delayed container manager thread. 
On AMRMClient thread callback, preemption is called. This is to ensure preemption logic is guaranteed to be invoked at regular intervals even though nothing else may be happening because there are no containers allocated/to-match. Preemption logic checks if containers are available to assign by looking at delayed container manager queue. If by this time, the assignment thread has polled the queue to remove the container for assignment checking, then the preemption code will see no containers available to assign. So it proceeds to preempt containers.


---

* [TEZ-2807](https://issues.apache.org/jira/browse/TEZ-2807) | *Major* | **Log data in the finish event instead of the start event**

The start event may not be logged if the attempt failed before launching. So that data is lost.


---

* [TEZ-2792](https://issues.apache.org/jira/browse/TEZ-2792) | *Major* | **Add AM web service API for tasks.**

Add AM API for fetching realtime tasks info:
- API endpoint : /ws/v2/tez/tasksInfo
- Query Params:
-- dagID: Just need to pass the dagIndex, (mandatory).
-- vertexID: Just need to pass the vertexIndex. Can be a comma separated list
-- taskID: Must be of the format \<vertexIndex\>\_\<taskIndex\>. For instance task with index 5 in vertex 3 can be referenced using the id 3\_5. Can be a comma separated list.
-- limit: Maximum number of items to be returned (Defaults to 100).
- If taskID is passed: All (capped by limit) the specified tasks will be returned. vertexID if present wont be considered.
- IF vertexID is passed: All (capped by limit) tasks under the vertices will be returned.
- If just dagID is passed: All (capped by limit) tasks under the DAG will be returned.
- Data returned: complete task id, progress, status


---

* [TEZ-2787](https://issues.apache.org/jira/browse/TEZ-2787) | *Major* | **Tez AM should have java.io.tmpdir=./tmp to be consistent with tasks**

TezRuntimeChildJVM ensures that tasks are launched with -Djava.io.tmpdir=./tmp, but there's no corresponding code to ensure the Tez AM also has a similar tmpdir setting.  The client should setup the AM launch context to have -Djava.io.tmpdir=./tmp to be consistent with the tasks and to prevent accidental leaking of files in /tmp by the Tez AM if it crashes.


---

* [TEZ-2786](https://issues.apache.org/jira/browse/TEZ-2786) | *Major* | **Tez UI: Update vertex, task & attempt details page while in progress.**

- Add realtime update into Vertex, Task & Attempt details page.
- Add progress bar to the details page.
- Give proper icon for scheduled status.
- Add reset calls to routs to reset controllers when unloaded.


---

* [TEZ-2784](https://issues.apache.org/jira/browse/TEZ-2784) | *Major* | **optimize TaskImpl.isFinished()**

getInternalState() gets called multiple times within the same method within read lock. This shows up in the AM profiler when executing large jobs.


---

* [TEZ-2783](https://issues.apache.org/jira/browse/TEZ-2783) | *Major* | **Refactor analyzers to extend TezAnalyzerBase**

Refactoring other analyzers to extend from TezAnalyzerBase allows it be to run in standalone cmdline mode.


---

* [TEZ-2782](https://issues.apache.org/jira/browse/TEZ-2782) | *Major* | **VertexInfo.getAvgExecutionTimeInterval throws NPE when task does not have any valid attempts info**

{noformat}
java.lang.NullPointerException
        at org.apache.tez.history.parser.datamodel.VertexInfo.getAvgExecutionTimeInterval(VertexInfo.java:204)
        at org.apache.tez.analyzer.plugins.CriticalPathAnalyzer.analyzeCriticalPath(CriticalPathAnalyzer.java:165)
        at org.apache.tez.analyzer.plugins.CriticalPathAnalyzer.analyze(CriticalPathAnalyzer.java:134)
        at org.apache.tez.analyzer.plugins.TezAnalyzerBase.run(TezAnalyzerBase.java:113)
        at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
        at org.apache.tez.analyzer.plugins.CriticalPathAnalyzer.main(CriticalPathAnalyzer.java:428)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:71)
        at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:144)
        at org.apache.tez.analyzer.plugins.AnalyzerDriver.main(AnalyzerDriver.java:31)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.apache.hadoop.util.RunJar.run(RunJar.java:222)
        at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
{noformat}


---

* [TEZ-2780](https://issues.apache.org/jira/browse/TEZ-2780) | *Major* | **Tez UI: Update All Tasks page while in progress.**

Modify table component to automatically update cell based on in-progress data.
#. Upgrade polling logic to manage a specific entity.
#. Added progress column to All Tasks table.
#. Updated table to automatically reflect model change - Just need to set observePath to true in defaultColumnConfigs.
#. Updated table logic to send action on row change - so that polling logic can query for fresh records.


---

* [TEZ-2775](https://issues.apache.org/jira/browse/TEZ-2775) | *Major* | **Improve and consolidate logging in Runtime components.**

Specifically Shuffle, which logs a lot for each event being processed and data being fetched.
Also PipelinedShuffle is fairly noisy - some of the information from here could be consolidated.


---

* [TEZ-2768](https://issues.apache.org/jira/browse/TEZ-2768) | *Major* | **Log a useful error message when the summary stream cannot be closed when shutting down an AM**

Hive might delete the staging directory before recovery summary stream is closed. The exceptions in the logs could be suppressed though with a more useful WARN message rather than a trace which is confusing.
{code}
015-08-25 03:09:02,075 INFO [AMShutdownThread] recovery.RecoveryService: Closing Summary Stream
2015-08-25 03:09:02,086 WARN [AMShutdownThread] recovery.RecoveryService: Error when closing summary stream
org.apache.hadoop.ipc.RemoteException(java.io.FileNotFoundException): No lease on /user/jzhang/tez/staging/.tez/application\_1439860407967\_0134/recovery/1/summary (inode 510613): File does not exist. Holder DFSClient\_NONMAPREDUCE\_-40719795\_1 does not have any open files.
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2535)
	at org.apache.hadoop.hdfs.server.namenode.FSDirWriteFileOp.completeFileInternal(FSDirWriteFileOp.java:722)
	at org.apache.hadoop.hdfs.server.namenode.FSDirWriteFileOp.completeFile(FSDirWriteFileOp.java:691)
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFile(FSNamesystem.java:2584)
	at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.complete(NameNodeRpcServer.java:773)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.complete(ClientNamenodeProtocolServerSideTranslatorPB.java:540)
	at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:616)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:972)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2088)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2084)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:422)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1655)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2084)

	at org.apache.hadoop.ipc.Client.call(Client.java:1468)
	at org.apache.hadoop.ipc.Client.call(Client.java:1399)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:232)
	at com.sun.proxy.$Proxy11.complete(Unknown Source)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.complete(ClientNamenodeProtocolTranslatorPB.java:443)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:497)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:187)
	at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
	at com.sun.proxy.$Proxy12.complete(Unknown Source)
	at org.apache.hadoop.hdfs.DFSOutputStream.completeFile(DFSOutputStream.java:2250)
	at org.apache.hadoop.hdfs.DFSOutputStream.close(DFSOutputStream.java:2234)
	at org.apache.hadoop.fs.FSDataOutputStream$PositionCache.close(FSDataOutputStream.java:72)
	at org.apache.hadoop.fs.FSDataOutputStream.close(FSDataOutputStream.java:106)
	at org.apache.tez.dag.history.recovery.RecoveryService.serviceStop(RecoveryService.java:216)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.CompositeService.stop(CompositeService.java:157)
	at org.apache.hadoop.service.CompositeService.serviceStop(CompositeService.java:131)
	at org.apache.tez.dag.history.HistoryEventHandler.serviceStop(HistoryEventHandler.java:80)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:65)
	at org.apache.tez.dag.app.DAGAppMaster.stopServices(DAGAppMaster.java:1772)
	at org.apache.tez.dag.app.DAGAppMaster.serviceStop(DAGAppMaster.java:1946)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterShutdownHandler$AMShutdownRunnable.run(DAGAppMaster.java:878)
	at java.lang.Thread.run(Thread.java:745)
2015-08-25 03:09:02,090 INFO [AMShutdownThread] recovery.RecoveryService: Closing Output Stream for DAG dag\_1439860407967\_0134\_1
2015-08-25 03:09:02,090 WARN [AMShutdownThread] recovery.RecoveryService: Error when closing output stream
java.nio.channels.ClosedChannelException
	at org.apache.hadoop.hdfs.DFSOutputStream.checkClosed(DFSOutputStream.java:1622)
	at org.apache.hadoop.hdfs.DFSOutputStream.flushOrSync(DFSOutputStream.java:1986)
	at org.apache.hadoop.hdfs.DFSOutputStream.hflush(DFSOutputStream.java:1946)
	at org.apache.hadoop.fs.FSDataOutputStream.hflush(FSDataOutputStream.java:130)
	at org.apache.tez.dag.history.recovery.RecoveryService.serviceStop(RecoveryService.java:224)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.CompositeService.stop(CompositeService.java:157)
	at org.apache.hadoop.service.CompositeService.serviceStop(CompositeService.java:131)
	at org.apache.tez.dag.history.HistoryEventHandler.serviceStop(HistoryEventHandler.java:80)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
	at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:65)
	at org.apache.tez.dag.app.DAGAppMaster.stopServices(DAGAppMaster.java:1772)
	at org.apache.tez.dag.app.DAGAppMaster.serviceStop(DAGAppMaster.java:1946)
	at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
	at org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterShutdownHandler$AMShutdownRunnable.run(DAGAppMaster.java:878)
	at java.lang.Thread.run(Thread.java:745)
{code}


---

* [TEZ-2761](https://issues.apache.org/jira/browse/TEZ-2761) | *Major* | **Tez UI: update the progress on the dag and vertices pages with info from AM**

The data displayed on the UI for running tasks should be updated with the latest status fetched from AM.
This includes the status, progress, task count etc. The api should also allow querying the values for the tasks (running, failed, succeeded...).


---

* [TEZ-2758](https://issues.apache.org/jira/browse/TEZ-2758) | *Major* | **Remove append API in RecoveryService after TEZ-1909**

After TEZ-1909, there would be no case for append recovery file.


---

* [TEZ-2755](https://issues.apache.org/jira/browse/TEZ-2755) | *Major* | **Fix findbugs warning in TezClient**

{code}
Multithreaded correctness Warnings
Code 	Warning
SWL 	org.apache.tez.client.TezClient.stop() calls Thread.sleep() with a lock held
	

Bug type SWL\_SLEEP\_WITH\_LOCK\_HELD (click for details)
In class org.apache.tez.client.TezClient
In method org.apache.tez.client.TezClient.stop()
At TezClient.java:[line 584]
Details
SWL\_SLEEP\_WITH\_LOCK\_HELD: Method calls Thread.sleep() with a lock held

This method calls Thread.sleep() with a lock held. This may result in very poor performance and scalability, or a deadlock, since other threads may be waiting to acquire the lock. It is a much better idea to call wait() on the lock, which releases the lock and allows other threads to run. 
{code}


---

* [TEZ-2754](https://issues.apache.org/jira/browse/TEZ-2754) | *Major* | **Tez UI: StartTime & EndTime is not displayed with right format in Graphical View**

Attach the screenshot, currently the starttime and endtime is displayed with millsecs, should use human readable format.
\cc [~Sreenath] [~pramachandran]


---

* [TEZ-2750](https://issues.apache.org/jira/browse/TEZ-2750) | *Major* | **Shuffle may not shutdown in case of a fetch failure, causing it to hang**

When running the Cascading tests with 0.8-alpha, they hang forever.

{code}
git clone https://github.com/cascading/cascading
cd cascading
{code}

update cascading-hadoop2-tez/build.gradle:

- update ext.tezVersion to  '0.8.0-alpha'
- add the staging repos to the repositories block.

{code}
 maven {url = 'https://repository.apache.org/content/repositories/orgapachetez-1040/'}
 maven {url = 'https://repository.apache.org/content/repositories/orgapachetez-1041/'}
{code}

then run this:

{code}
gradle cascading-hadoop2-tez:build -i
{code}

It will hang after a while. You will have to have gradle 2.x installed on your machine. 1.x wont work.


---

* [TEZ-2747](https://issues.apache.org/jira/browse/TEZ-2747) | *Major* | **Update master to reflect 0.8.0-alpha release**

Update CHANGES.txt, version in pom.xml


---

* [TEZ-2745](https://issues.apache.org/jira/browse/TEZ-2745) | *Major* | **ClassNotFoundException of user code should fail dag**

This ClassNotFoundException is not captured now. The current behavior is AM crashed and relaunched again until max app attempt is reached. 

Here's user code used in AM:
\* EdgeManager
\* VertexManager
\* InputInitializer
\* OutputCommitter
\* Other user pluggable components (like DAGScheduler, HistoryServiceLogging etc.)


---

* [TEZ-2716](https://issues.apache.org/jira/browse/TEZ-2716) | *Major* | **DefaultSorter.isRleNeeded not thread safe**

TEZ-1997.
Should be targeted at the same set of versions that TEZ-1997 goes into.


---

* [TEZ-2662](https://issues.apache.org/jira/browse/TEZ-2662) | *Major* | **Provide a way to check whether AM or task opts are valid and error if not**

Current impl appends cmd-opts specified in config to programmatic opts provided. This creates potential conflicts when using UseParallelGC v/s UseG1GC 

Tez should support a way to do checks for invalid java opts and error out as needed.


---

* [TEZ-2660](https://issues.apache.org/jira/browse/TEZ-2660) | *Major* | **Tez UI: need to show application page even if system metrics publish is disabled.**

if system metrics publish is disabled the application page is not shown currently. This means the following does not work. 
\* history url from yarn ui will redirect to a page which will error
\* we do not show the url from tez-ui to yarn app page.
This can be enhanced and fixed by using the data if its available through the yarn rest api. https://hadoop.apache.org/docs/r2.4.1/hadoop-yarn/hadoop-yarn-site/ResourceManagerRest.html#Cluster\_Applications\_API
cc [~hitesh]


---

* [TEZ-2294](https://issues.apache.org/jira/browse/TEZ-2294) | *Major* | **Add tez-site-template.xml with description of config properties**

Document all tez configs with descriptions and default values. 
Also, document MR configs that can be easily translated to Tez configs via Tez helpers.


---

* [TEZ-2097](https://issues.apache.org/jira/browse/TEZ-2097) | *Critical* | **TEZ-UI Add dag logs backend support**

If dag fails due to AM error, there's no way to check the dag logs on tez-ui. Users have to grab the app logs.



