
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
#  0.5.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-1624](https://issues.apache.org/jira/browse/TEZ-1624) | *Major* | **Flaky tests in TestContainerReuse due to race condition in DelayedContainerManager thread**

Couple of TestContainerReuse tests are failing due to minor race condition in DelayedContainerManager thread.  

Wanted but not invoked:
taskSchedulerEventHandlerForTest.taskAllocated(
    Mock for TaskAttempt, hashCode: 290467934,
    <any>,
    Container: [ContainerId: container\_1\_0001\_01\_000001, NodeId: host1:0, NodeHttpAddress: host1:0, Resource: <memory:1024, vCores:1>, Priority: 1, Token: null, ]
);
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:580)

However, there were other interactions with this mock:
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:531)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:531)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:531)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:532)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:532)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:532)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:532)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:534)
-> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$SetApplicationRegistrationDataCallable.call(TaskSchedulerAppCallbackWrapper.java:244)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:570)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseWithTaskSpecificLaunchCmdOption(TestContainerReuse.java:571)

Wanted but not invoked:
taskSchedulerEventHandlerForTest.taskAllocated(
    Mock for TaskAttempt, hashCode: 392638651,
    <any>,
    Container: [ContainerId: container\_1\_0001\_01\_000001, NodeId: host1:0, NodeHttpAddress: host1:0, Resource: <memory:1024, vCores:1>, Priority: 5, Token: null, ]
);
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:333)

However, there were other interactions with this mock:
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:289)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:289)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:289)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:290)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:290)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:290)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:290)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:292)
-> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$SetApplicationRegistrationDataCallable.call(TaskSchedulerAppCallbackWrapper.java:244)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:323)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:324)

        at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerNotAvailable(TestContainerReuse.java:333)


org.mockito.exceptions.verification.WantedButNotInvoked:
Wanted but not invoked:
taskSchedulerEventHandlerForTest.taskAllocated(
    Mock for TaskAttempt, hashCode: 1830222901,
    <any>,
    Container: [ContainerId: container\_1\_0001\_01\_000001, NodeId: host1:0, NodeHttpAddress: host1:0, Resource: <memory:1024, vCores:1>, Priority: 3, Token: null, ]
);
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:909)

However, there were other interactions with this mock:
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:861)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:861)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:861)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:862)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:862)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:862)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:862)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:864)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:900)
-> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$SetApplicationRegistrationDataCallable.call(TaskSchedulerAppCallbackWrapper.java:244)

        at org.apache.tez.dag.app.rm.TestContainerReuse.testReuseAcrossVertices(TestContainerReuse.java:909)

testDelayedReuseContainerBecomesAvailable(org.apache.tez.dag.app.rm.TestContainerReuse)  Time elapsed: 0.053 sec  <<< FAILURE!
org.mockito.exceptions.verification.WantedButNotInvoked:
Wanted but not invoked:
taskSchedulerEventHandlerForTest.taskAllocated(
    Mock for TaskAttempt, hashCode: 1829491577,
    <any>,
    Container: [ContainerId: container\_1\_0001\_01\_000001, NodeId: host1:0, NodeHttpAddress: host1:0, Resource: <memory:1024, vCores:1>, Priority: 5, Token: null, ]
);
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:202)

However, there were other interactions with this mock:
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:151)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:151)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:151)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:152)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:152)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:152)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:152)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:154)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:191)
-> at org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable(TestContainerReuse.java:192)
-> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$SetApplicationRegistrationDataCallable.call(TaskSchedulerAppCallbackWrapper.java:244)


---

* [TEZ-1618](https://issues.apache.org/jira/browse/TEZ-1618) | *Major* | **LocalTaskSchedulerService.getTotalResources() and getAvailableResources() can get negative if JVM memory is larger than 2GB**

Tez job can get failed because of negative headroom value;

org.apache.tez.dag.app.dag.impl.VertexImpl - Creating 2 for vertex:
vertex\_1411054289802\_0001\_1\_01 [intermediate\_reducer]
56389 [InputInitializer [initialmap] #0] INFO 
org.apache.tez.mapreduce.common.MRInputAMSplitGenerator - Input MRInput asking
for -2 tasks. *strong* Headroom: -1365 *strong* Task Resource: 1024 waves: 1.7
56391 [InputInitializer [initialmap] #0] INFO 
org.apache.tez.mapreduce.common.MRInputAMSplitGenerator - Grouping input splits
56391 [InputInitializer [initialmap] #0] INFO 
org.apache.tez.mapreduce.hadoop.MRInputHelpers - Generating mapreduce api input
splits
56400 [AsyncDispatcher event handler] INFO 
org.apache.tez.dag.app.dag.impl.VertexImpl - Directly initializing vertex:
vertex\_1411054289802\_0001\_1\_01 [intermediate\_reducer]


---

* [TEZ-1612](https://issues.apache.org/jira/browse/TEZ-1612) | *Major* | **ShuffleVertexManager's EdgeManager should not hard code source num tasks**

Several Pig unit tests hang intermittently. For example, TestNewPlanImplicitSplit.testImplicitSplitInCoGroup, which is a DAG of 4 nodes:
!DAG1.png!
It uses auto-parallelism, vertex 106 change parallelism from 2->1, and vertex 107 from 21->1.

Log attached.


---

* [TEZ-1611](https://issues.apache.org/jira/browse/TEZ-1611) | *Major* | **Change DataSource/Sink to be able to supply URIs for credentials**

This way commonly used credentials (HDFS) can be obtained globally for the DAG and take advantage of previously cached credentials where appropriate. This would reduce round trips to the NN. The existing method to get credentials will still be in place for other credentials that we cannot obtain automatically via URIs


---

* [TEZ-1599](https://issues.apache.org/jira/browse/TEZ-1599) | *Major* | **TezClient.preWarm() is not enabled**

Also needs some fixes for it to work.


---

* [TEZ-1598](https://issues.apache.org/jira/browse/TEZ-1598) | *Major* | **DAGClientTimelineImpl uses ReflectiveOperationException (which has JDK 1.7 dependency)**



INFO] --- maven-compiler-plugin:3.1:compile (default-compile) @ tez-api ---
[INFO] Changes detected - recompiling the module!
[INFO] Compiling 126 source files to /home/jenkins/jenkins-slave/workspace/Tez-Build/tez-api/target/classes
[INFO] -------------------------------------------------------------
[ERROR] COMPILATION ERROR : 
[INFO] -------------------------------------------------------------
[ERROR] /home/jenkins/jenkins-slave/workspace/Tez-Build/tez-api/src/main/java/org/apache/tez/dag/api/client/DAGClientTimelineImpl.java:[451,14] cannot find symbol
symbol  : class ReflectiveOperationException
location: class org.apache.tez.dag.api.client.DAGClientTimelineImpl
[INFO] 1 error
[INFO] -------------------------------------------------------------


---

* [TEZ-1597](https://issues.apache.org/jira/browse/TEZ-1597) | *Major* | **ImmediateStartVertexManager should handle corner case of vertex having zero tasks**

ImmediateStartVertexManager would keep waiting for source completed event from the vertex with 0 task and would get into hung state.


---

* [TEZ-1592](https://issues.apache.org/jira/browse/TEZ-1592) | *Blocker* | **Vertex should wait for all initializers to finish before moving to INITED state**

Reported by [~vikram.dixit]

When using multiple initializers, the following stack trace is seen at times.
{code}
2014-09-17 15:05:00,406 ERROR [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Can't handle Invalid event V\_ROOT\_INPUT\_INITIALIZED on vertex Map 2 with vertexId vertex\_1410991351910\_0002\_8\_01 at current state RUNNING
org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_ROOT\_INPUT\_INITIALIZED at RUNNING
  at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:305)
  at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
  at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1337)
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:168)
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1641)
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1627)
  at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:173)
  at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:106)
  at java.lang.Thread.run(Thread.java:662)
{code}


---

* [TEZ-1587](https://issues.apache.org/jira/browse/TEZ-1587) | *Major* | **Some tez-examples fail in local mode**

*JoinExample run indefinitely, don't finish*
{code}
19:13:58,703 - Thread(Fetcher [hashSide] #1) - (HttpConnection.java:273) - Closing connection on fetcher [hashSide] 114
19:13:58,703 - Thread(ShuffleRunner [hashSide]) - (ShuffleManager.java:270) - Scheduling fetch for inputHost: jzhangMBPr.local:0
19:13:58,704 - Thread(ShuffleRunner [hashSide]) - (ShuffleManager.java:333) - Created Fetcher for host: jzhangMBPr.local, with inputs: []
19:14:03,599 - Thread( main) - (DAGClientRPCImpl.java:444) - DAG: State: RUNNING Progress: 0% TotalTasks: 6 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
19:14:03,601 - Thread( main) - (DAGClientRPCImpl.java:444) - 	VertexStatus: VertexName: hashSide Progress: 0% TotalTasks: 2 Succeeded: 0 Running: 0 Failed: 0 Killed: 0
19:14:03,602 - Thread( main) - (DAGClientRPCImpl.java:444) - 	VertexStatus: VertexName: streamingSide Progress: 0% TotalTasks: 2 Succeeded: 0 Running: 0 Failed: 0 Killed: 0
19:14:03,604 - Thread( main) - (DAGClientRPCImpl.java:444) - 	VertexStatus: VertexName: joiner Progress: 0% TotalTasks: 2 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
19:14:08,629 - Thread( main) - (DAGClientRPCImpl.java:444) - DAG: State: RUNNING Progress: 0% TotalTasks: 6 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
19:14:08,631 - Thread( main) - (DAGClientRPCImpl.java:444) - 	VertexStatus: VertexName: hashSide Progress: 0% TotalTasks: 2 Succeeded: 0 Running: 0 Failed: 0 Killed: 0
19:14:08,632 - Thread( main) - (DAGClientRPCImpl.java:444) - 	VertexStatus: VertexName: streamingSide Progress: 0% TotalTasks: 2 Succeeded: 0 Running: 0 Failed: 0 Killed: 0
19:14:08,633 - Thread( main) - (DAGClientRPCImpl.java:444) - 	VertexStatus: VertexName: joiner Progress: 0% TotalTasks: 2 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
19:14:13,658 - Thread( main) - (DAGClientRPCImpl.java:444) - DAG: State: RUNNING Progress: 0% TotalTasks: 6 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
{code} 

*WordCount and OrderedWordCount fail due to the following exception*
{code}
19:16:47,499 - Thread( main) - (DAGClientRPCImpl.java:444) - DAG completed. FinalState=FAILED
WordCount failed with diagnostics: [Vertex re-running, vertexName=Tokenizer, vertexId=vertex\_1410779802886\_0001\_1\_00, Vertex failed, vertexName=Summation, vertexId=vertex\_1410779802886\_0001\_1\_01, diagnostics=[Task failed, taskId=task\_1410779802886\_0001\_1\_01\_000000, diagnostics=[TaskAttempt 0 failed, info=[Error: Failure while running task:org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$ShuffleError: error in shuffle in fetcher [Tokenizer] #1
	at org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$RunShuffleCallable.call(Shuffle.java:335)
	at org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$RunShuffleCallable.call(Shuffle.java:1)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
Caused by: java.io.IOException: Exceeded MAX\_FAILED\_UNIQUE\_FETCHES; bailing-out.
	at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleScheduler.checkReducerHealth(ShuffleScheduler.java:375)
	at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleScheduler.copyFailed(ShuffleScheduler.java:292)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyFromHost(Fetcher.java:274)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.run(Fetcher.java:160)
, Container container\_1410779802886\_0001\_00\_000002 finished with diagnostics set to [TaskExecutionFailure: error in shuffle in fetcher [Tokenizer] #1]], TaskAttempt 1 failed, info=[Error: Failure while running task:org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$ShuffleError: error in shuffle in fetcher [Tokenizer] #2
	at org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$RunShuffleCallable.call(Shuffle.java:335)
	at org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$RunShuffleCallable.call(Shuffle.java:1)
	at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
	at java.util.concurrent.FutureTask.run(FutureTask.java:138)
	at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:895)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:918)
	at java.lang.Thread.run(Thread.java:695)
{code}
{code}


---

* [TEZ-1585](https://issues.apache.org/jira/browse/TEZ-1585) | *Major* | **Memory leak in tez session mode**

DAGAppMaster's memory gradually keeps increasing when running simple tez apps repeatedly in session mode.  Taking memory snapshots revealed that FileSystem.CACHE is getting populated with some keys which are not being released.  

Around 200KB of data is leaked for every job invocation in the session mode.  I will attach the profiler snapshots soon.  Haven't figured out yet on who makes the call to FileSystem.get() and not calling close().


---

* [TEZ-1578](https://issues.apache.org/jira/browse/TEZ-1578) | *Major* | **Remove TeraSort from Tez codebase**

Terasort is just a copy of the MR codebase. The better approach would be to ask users to run terasort using yarn-tez mode instead of duplicating it in Tez. 

It can be brought back in if and when we decide to write a tez-native impl of terasort.


---

* [TEZ-1574](https://issues.apache.org/jira/browse/TEZ-1574) | *Major* | **Support additional formats for the tez deployed archive**

Currently, we only look for .tgz and .tar.gz. Looking at extensions isn't the best method - but for now, this jira is to expand this list.
Improving the mechanism to detect an archive will be a separate jira.


---

* [TEZ-1571](https://issues.apache.org/jira/browse/TEZ-1571) | *Blocker* | **Add create method for DataSinkDescriptor**

Add create method for DataSinkDescriptor, and make the constructor private.


---

* [TEZ-1568](https://issues.apache.org/jira/browse/TEZ-1568) | *Major* | **Add system test for propagation of diagnostics for errors**

Design system test where exception come from Input, Output, Processor, InputInitializer and VertexManagerPlugin


---

* [TEZ-1563](https://issues.apache.org/jira/browse/TEZ-1563) | *Major* | **TezClient.submitDAGSession alters DAG local resources regardless of DAG submission**

In {{TezClient#submitDAGSesssion(Dag)}}, a {{DAGPlan}} is created from the {{DAG}} before the {{DAGClientAMProtocolBlockingPB}} is instantiated. When the application isn't running, {{waitForProxy()}} will throw a {{SessionNotRunning}} Exception.

The problem is that the internal state of the {{DAG}} is modified, regardless of whether the DAG is actually run or not. 

{code}
DAGPlan dagPlan = dag.createDag(amConfig.getTezConfiguration());
{code}

The {{createDag}} method will ultimately call {{addTaskLocalFiles}} for each {{Vertex}} in the {{DAG}}

{code}
// add common task files for this DAG
vertex.addTaskLocalFiles(commonTaskLocalFiles);
{code}

Because the {{DAG}}'s state is modified, {{Vertex#addTaskLocalFiles(Map)}} will fail if any resources are added multiple times. As such, if the application is not running and {{SessionNotRunning}} is thrown, that same DAG cannot be passed in to run the DAG after the application is started again.

Additionally, {{DAG}} is missing a getTaskLocalFiles method as compared to {{Vertex}} which would be good to add to make the two classes more uniform.


---

* [TEZ-1559](https://issues.apache.org/jira/browse/TEZ-1559) | *Major* | **Add system tests for AM recovery**

* [Fine-grained recovery task-level] In a vertex, task 0 is done task 1 is running. History flush happens. AM dies. Once AM is recovered, task 0 is not re-run. Task 1 is re-run.
* [Data movement types] Test AM recovery with all data movement types including 1-1, broadcast, scatter-gather with/without shuffle. AM should die in 2 scenarios: first-vertex task finishes completely and partially.
* [Kill AM many times] Set AM max attempt to high number. Kill many attempts. Last AM can still be recovered with latest AM history data.


---

* [TEZ-1555](https://issues.apache.org/jira/browse/TEZ-1555) | *Major* | **TestTezClientUtils.validateSetTezJarLocalResourcesDefinedButEmpty failing on Windows**

Error Message

Wrong FS: file://D:/w/tez/tez-api/target/org.apache.tez.client.TestTezClientUtils-tmpDir/emptyDir, expected: file:///
Stacktrace

java.lang.IllegalArgumentException: Wrong FS: file://D:/w/tez/tez-api/target/org.apache.tez.client.TestTezClientUtils-tmpDir/emptyDir, expected: file:///
	at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:645)
	at org.apache.hadoop.fs.FileSystem.makeQualified(FileSystem.java:465)
	at org.apache.hadoop.fs.FilterFileSystem.makeQualified(FilterFileSystem.java:119)
	at org.apache.tez.client.TezClientUtils.getLRFileStatus(TezClientUtils.java:132)
	at org.apache.tez.client.TezClientUtils.setupTezJarsLocalResources(TezClientUtils.java:198)
	at org.apache.tez.client.TestTezClientUtils.validateSetTezJarLocalResourcesDefinedButEmpty(TestTezClientUtils.java:77)


---

* [TEZ-1554](https://issues.apache.org/jira/browse/TEZ-1554) | *Major* | **Failing tests in TestMRHelpers related to environment on Windows**

TestMRHelpers.testMREnvSetupForReduce and  Map related tests failing.


---

* [TEZ-1553](https://issues.apache.org/jira/browse/TEZ-1553) | *Major* | **Multiple failures in testing path-related tests in TestTezCommonUtils for Windows**

Invalid path checks for Windows causing failures such as :

expected:<....1:51947/tmp/mystage[/.tez/testAppId/]recovery> but was:<....1:51947/tmp/mystage[\.tez\testAppId\]recovery>


---

* [TEZ-1550](https://issues.apache.org/jira/browse/TEZ-1550) | *Major* | **TestEnvironmentUpdateUtils.testMultipleUpdateEnvironment fails on Windows**

Error Message

Environment was not set propertly expected:<test.value1> but was:<null>
Stacktrace

java.lang.AssertionError: Environment was not set propertly expected:<test.value1> but was:<null>
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.failNotEquals(Assert.java:743)
	at org.junit.Assert.assertEquals(Assert.java:118)
	at org.apache.tez.dag.utils.TestEnvironmentUpdateUtils.testMultipleUpdateEnvironment(TestEnvironmentUpdateUtils.java:31)


---

* [TEZ-1543](https://issues.apache.org/jira/browse/TEZ-1543) | *Major* | **Shuffle Errors on heavy load (causing task retries)**

org.apache.tez.runtime.library.common.shuffle.impl.Shuffle: ShuffleRunner failed with error
org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$ShuffleError: error in shuffle in fetcher [initialmap] #13
        at org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$RunShuffleCallable.call(Shuffle.java:336)
        at org.apache.tez.runtime.library.common.shuffle.impl.Shuffle$RunShuffleCallable.call(Shuffle.java:318)
        at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:334)
        at java.util.concurrent.FutureTask.run(FutureTask.java:166)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:722)
Caused by: java.lang.NullPointerException
        at org.apache.hadoop.io.WritableUtils.readVLong(WritableUtils.java:308)
        at org.apache.hadoop.io.WritableUtils.readVInt(WritableUtils.java:329)
        at org.apache.hadoop.io.WritableUtils.readStringSafely(WritableUtils.java:475)
        at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleHeader.readFields(ShuffleHeader.java:82)
        at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyMapOutput(Fetcher.java:350)
        at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyFromHost(Fetcher.java:294)
        at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.run(Fetcher.java:160)


---

* [TEZ-1539](https://issues.apache.org/jira/browse/TEZ-1539) | *Major* | **Change InputInitializerEvent semantics to SEND\_ONCE\_ON\_SUCCESS**

Specifically for InputInitalizerEvents and VertexManagerEvents.

Pasting comment from TEZ-1447
In a majority of cases, events generated by different attempts of the same task will be identical - in which case just making use of the event generated by the first successful attempt is adequate. Doing something like this manes that users don't worry about retries, indices etc - and can just rely on receiving a set of events which are to be processed once the vertex succeeds.
If different attempts of the same workload generate different events - processing is likely to be incorrect, since it's very possible for all data to be processed (VERTEX successful), then a failure and retry - which generates a different event. The initializer doesn't even run at this point, since it's already done it's work and is complete. Handling such scenarios, likely involves re-running the entire initializer and re-starting the vertex which processed the event from scratch. In situations like this, where data generated may be different, the best bet is for speculation to be disabled (when it's supported), and max-attempts to be set to 1.


---

* [TEZ-1534](https://issues.apache.org/jira/browse/TEZ-1534) | *Major* | **Make client side configs available to AM and tasks**

Configs from the client (specifically the ones provided to TezClient, along with YARN additions) should be shipped over to the cluster (AM and tasks), instead of AM/tasks depending on configs present on cluster nodes.

These configs will primarily be used for Tez components like RPC servers, clients etc - and not by the Processor / Input / Output - which should be sending over fully configured payloads in any case.

Tez should continue to run without core-site, hdfs-site, yarn-site etc in the classpath on cluster nodes.


---

* [TEZ-1533](https://issues.apache.org/jira/browse/TEZ-1533) | *Major* | **Request Events more often if a complete set of events is received by a task**

If max-events-per-heartbeat events are received by a task, it should turn around and ask for more events - instead of waiting for the standard heartbeat delay.
For larger jobs, a large chunk of time can otherwise be spent just fetching events - which would unnecessarily block processing.


---

* [TEZ-1527](https://issues.apache.org/jira/browse/TEZ-1527) | *Major* | **Improvement on waitForCompletion API**

After [TEZ-1476|https://issues.apache.org/jira/browse/TEZ-1476], the waitForCompletion API has serveral changes may need to reconsider.

1.  waitForCompletionWithStatusUpdates(Set<Vertex> vertices, Set<StatusGetOpts> statusGetOpts) is replace with waitForCompletionWithStatusUpdates(Set<StatusGetOpts> statusGetOpts), this lead to backward compatibility issue. User can not specify what vertices to print now. 
2.  should add indention in front of VertexStatus when printing VertexStatus.


---

* [TEZ-1524](https://issues.apache.org/jira/browse/TEZ-1524) | *Major* | **getDAGStatus seems to fork out the entire JVM on non-secure clusters**

Tracked down a consistent fork() call to

{code}
	at org.apache.hadoop.util.Shell.runCommand(Shell.java:505)
	at org.apache.hadoop.util.Shell.run(Shell.java:418)
	at org.apache.hadoop.util.Shell$ShellCommandExecutor.execute(Shell.java:650)
	at org.apache.hadoop.util.Shell.execCommand(Shell.java:739)
	at org.apache.hadoop.util.Shell.execCommand(Shell.java:722)
	at org.apache.hadoop.security.ShellBasedUnixGroupsMapping.getUnixGroups(ShellBasedUnixGroupsMapping.java:83)
	at org.apache.hadoop.security.ShellBasedUnixGroupsMapping.getGroups(ShellBasedUnixGroupsMapping.java:52)
	at org.apache.hadoop.security.JniBasedUnixGroupsMappingWithFallback.getGroups(JniBasedUnixGroupsMappingWithFallback.java:50)
	at org.apache.hadoop.security.Groups.getGroups(Groups.java:139)
	at org.apache.hadoop.security.UserGroupInformation.getGroupNames(UserGroupInformation.java:1409)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getRPCUserGroups(DAGClientAMProtocolBlockingPBServerImpl.java:75)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:102)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
{code}

[~hitesh] - would it make sense to cache this at all?


---

* [TEZ-1519](https://issues.apache.org/jira/browse/TEZ-1519) | *Blocker* | **TezTaskRunner should not initialize TezConfiguration in TezChild**

Should be doing a new Configuration and augmenting with the config data from tez-conf.pb. 

Need confirmation on tez-conf.pb being localized for all containers.


---

* [TEZ-1515](https://issues.apache.org/jira/browse/TEZ-1515) | *Major* | **DAGAppMaster : Thread contentions due to org.apache.tez.common.counters.ResourceBundles**

Thread profiling DagAppMaster for a synthetic tez test revealed lots of contentions in RecoveryService / HistoryEventHandlingThread / AsyncDispatcher threads.  All of these try to access tez counters and are blocked on "public static synchronized <T> T getValue(String bundleName, String key,String suffix, T defaultValue)".

I will attach the thread profiler snapshots soon.


---

* [TEZ-1499](https://issues.apache.org/jira/browse/TEZ-1499) | *Major* | **Add SortMergeJoinExample to tez-examples**

In the current join example, the inputs of JoinProcessor is unordered so that it will always need to load one input into memory, and stream another input. This only fit for the case when one dataset is small enough to fit into memory ( even use no-broadcast, memory may not be enough ).  So I'd like to add another join example that make the inputs of JoinProcessor is ordered. ( using OrderedPartitionedKVEdgeConfig ). This kind of join could been used when both of the 2 datasets are large.


---

* [TEZ-1495](https://issues.apache.org/jira/browse/TEZ-1495) | *Major* | **ATS integration for TezClient**

Tez client should automatically redirect to ATS when the AM is not running.
All APIs exposed ( DAG status, counters, etc ) from the DAGClient should continue to work after the AM has shut down.


---

* [TEZ-1494](https://issues.apache.org/jira/browse/TEZ-1494) | *Major* | **DAG hangs waiting for ShuffleManager.getNextInput()**

Attaching the DAG and the stack trace of the hung process.  


Thread 30071: (state = BLOCKED)
 - sun.misc.Unsafe.park(boolean, long) @bci=0 (Interpreted frame)
 - java.util.concurrent.locks.LockSupport.park(java.lang.Object) @bci=14, line=186 (Interpreted frame)
 - java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await() @bci=42, line=2043 (Interpreted frame)
 - java.util.concurrent.LinkedBlockingQueue.take() @bci=29, line=442 (Interpreted frame)
 - org.apache.tez.runtime.library.shuffle.common.impl.ShuffleManager.getNextInput() @bci=67, line=610 (Interpreted frame)
 - org.apache.tez.runtime.library.common.readers.UnorderedKVReader.moveToNextInput() @bci=26, line=176 (Interpreted frame)
 - org.apache.tez.runtime.library.common.readers.UnorderedKVReader.next() @bci=30, line=117 (Interpreted frame)


---

* [TEZ-1488](https://issues.apache.org/jira/browse/TEZ-1488) | *Major* | **Rename HashComparator to ProxyComparator and implement in TezBytesComparator**

Speed up TezBytesComparator by ~20% when used in PipelinedSorter.

This moves part of the key comparator into the partition comparator, which is a single register operation.


---

* [TEZ-1447](https://issues.apache.org/jira/browse/TEZ-1447) | *Blocker* | **Provide a mechanism for InputInitializers to know about interesting Vertex state changes**

I'm trying to do dynamic partition pruning through input initializer events in Hive. That means that the initializer of a table scan vertex has to receive events from all tasks in another vertex (which contain the pruning info) before generating tasks to run.

The problem with the current API I ran into:

getNumTasks: I'm currently using a busy loop to wait for the num tasks for a vertex to be decided (-1 -> x). There's no way around it, because it's the only way to find out what number of events to expect (0 is a valid number of tasks - so I can't wait for the first to complete).

With auto-reducer parallelism I have to employ another busy loop. Because I might be initially expecting 10 events, which later get's knocked down to 5. Since there's no event associated with this, I have to periodically check whether I have enough events.

Versioning: Events have a version number, but I don't know which task they are coming from. Thus I can't de-dup events.


---

* [TEZ-1433](https://issues.apache.org/jira/browse/TEZ-1433) | *Blocker* | **Invalid credentials can be used when a DAG is submitted to a session which has timed out**

When a DAG is submitted to a session which has timed out, and the same DAG is then submitted to a new session - credentials associated with the old session can end up getting used.
Before we know that the session is no longer valid, the DAG is modified to add local resources and credentials.
On the next submission, since the DAG already has tokens (for HDFS for example) from the old session, the tokens are not updated.
Meanwhile, the old token would end up being cancelled by the RM - since the applicaiton associated with the previous session has finished.


---

* [TEZ-1362](https://issues.apache.org/jira/browse/TEZ-1362) | *Major* | **Remove DAG\_COMPLETED in DAGEventType**

It is never used


---

* [TEZ-1345](https://issues.apache.org/jira/browse/TEZ-1345) | *Major* | **Add checks to guarantee all init events are written to recovery to consider vertex initialized**

Related to issue discovered in TEZ-1033


---

* [TEZ-1310](https://issues.apache.org/jira/browse/TEZ-1310) | *Major* | **Update website documentation framework**

A better option for docs would be to use markdown format. Also, it might be worth investigating moving to cms instead of svnpubsub. 

https://www.apache.org/dev/project-site.html


---

* [TEZ-1157](https://issues.apache.org/jira/browse/TEZ-1157) | *Major* | **Optimize broadcast :- Tasks pertaining to same job in same machine should not download multiple copies of broadcast data**

Currently tasks (belonging to same job) running in the same machine download its own copy of broadcast data.  Optimization could be to  download one copy in the machine, and the rest of the tasks can refer to this downloaded copy.

(results after this feature)

!connections.png! 

!latency.png!


---

* [TEZ-978](https://issues.apache.org/jira/browse/TEZ-978) | *Major* | **Enhance auto parallelism tuning for queries having empty outputs or data skewness**

Running tpcds (query-92) with auto-tuning "tez.am.shuffle-vertex-manager.enable.auto-parallel" degraded the performance than original run.  

Query has lots of empty outputs and these tasks tend to complete a lot more faster than others.  Tez computes the parallelism with the given information (wherein most of the output is empty) and set the reducers to "1".  When other tasks complete, single reducer has to do the heavy lifting and this causes the performance degradation.

Map 1: 2/181    Map 5: 16/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 2/181    Map 5: 22/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 2/181    Map 5: 25/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 2/181    Map 5: 30/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 2/181    Map 5: 35/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 2/181    Map 5: 36/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 2/181    Map 5: 39/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 3/181    Map 5: 43/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/166
Map 1: 5/181    Map 5: 46/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1   <=== ShuffleVertexManager changing parallelism 
Map 1: 5/181    Map 5: 63/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 7/181    Map 5: 72/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 7/181    Map 5: 83/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 8/181    Map 5: 95/179   Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 8/181    Map 5: 104/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 9/181    Map 5: 116/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 12/181   Map 5: 123/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 13/181   Map 5: 127/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 16/181   Map 5: 127/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 17/181   Map 5: 128/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 18/181   Map 5: 131/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 19/181   Map 5: 131/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 25/181   Map 5: 132/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 33/181   Map 5: 132/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 42/181   Map 5: 134/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/109        Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1	 <=== ShuffleVertexManager changing parallelism 
Map 1: 51/181   Map 5: 135/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/1  Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 58/181   Map 5: 136/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/1  Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 63/181   Map 5: 136/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/1  Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1
Map 1: 70/181   Map 5: 136/179  Map 7: 1/1      Map 8: 1/1      Reducer 2: 0/1  Reducer 3: 0/137        Reducer 4: 0/1  Reducer 6: 0/1

Suggestion is to include 
1. Empty output information when computing auto-parallelism.  
2. Have a configurable value for determining the average output from the source (e.g minimum of 1 MB output from each source).  If the average task output size does not meet this criteria (which means all the completed tasks are small tasks), we can defer the computation of auto-parallelism until other tasks are completed.


---

* [TEZ-850](https://issues.apache.org/jira/browse/TEZ-850) | *Major* | **Recovery unit tests**

Tests for custom edge managers, groups handling, etc.



