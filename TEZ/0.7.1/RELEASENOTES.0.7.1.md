
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
# Apache Tez  0.7.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-2887](https://issues.apache.org/jira/browse/TEZ-2887) | *Major* | **Tez build failure due to missing dependency in pom files**

Missing \*hadoop-yarn-common\* dependency in tez-common and \*hadoop-hdfs\* in tez-tests resulted in compilation error.


---

* [TEZ-2885](https://issues.apache.org/jira/browse/TEZ-2885) | *Major* | **Remove counter logs from AMWebController**

{noformat}
-rw-r--r-- 1 yarn hadoop 3568047011 Oct 13 09:18 syslog\_dag\_1443665985063\_8907\_1
{noformat}

While performing some tests with in-progress URL, it ended up generating huge log in AM.  Might need to remove the unwanted counter logs or move it to debug.

//cc [~Sreenath]


---

* [TEZ-2874](https://issues.apache.org/jira/browse/TEZ-2874) | *Major* | **Improved logging for caller context**

Primary filters will add load onto Timeline so it might be better to not set a primary filter until we have better understanding on usage patterns.


---

* [TEZ-2868](https://issues.apache.org/jira/browse/TEZ-2868) | *Major* | **Fix setting Caller Context in Tez Examples**

Caller context not setup properly for tez examples


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

* [TEZ-2834](https://issues.apache.org/jira/browse/TEZ-2834) | *Major* | **Make Tez preemption resilient to incorrect free resource reported by YARN**

Will attach the DAG.

Repro for reference: TPC-DS q\_70 @ 30 TB scale.

"Map 7" completes in 2 waves. Output is very tiny, so reducer 8 gets launched slightly late.  But before "Reducer 9" can get scheduled, slots are taken up by "Map 1", which is not preempted for running "Reducer 9".

This is with 0.7.1 codebase.


---

* [TEZ-2829](https://issues.apache.org/jira/browse/TEZ-2829) | *Major* | **Tez UI: minor fixes to in-progress update of UI from AM**

fix issues related to the in progess updates as part of TEZ-2760.

\* fix incorrect version check for amwebservice.
\* add extra checks before setting the status
\* update the time shown when status/progress is updated. (set using didLoad function)


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

* [TEZ-2789](https://issues.apache.org/jira/browse/TEZ-2789) | *Major* | **Backport events added in TEZ-2612 to branch-0.7**

Having the events in the 0.7 line will allow them to be persisted to ATS or SimpleHistory logging. After that, the latest analyzers from master or 0.8 could be used to analyze them. At some point when the analzyers are stable, they could move into the UI directly or be back-ported in bulk to the 0.7.


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

* [TEZ-2781](https://issues.apache.org/jira/browse/TEZ-2781) | *Major* | **Fallback to send only TaskAttemptFailedEvent if taskFailed heartbeat fails**

It is possible the taskFailed heartbeat fails to send to AM (due to counter limitation exceed) . In that case client can not get the right diagnostic info. 

{code}
hive\> select gencounter(2500) from (select count(\*) from abc) a;
Query ID = hrt\_qa\_20150831220000\_1956a7d6-1d41-406b-9266-af56ed21883c
Total jobs = 1
Launching Job 1 out of 1


Status: Running (Executing on YARN cluster with App id application\_1440915851419\_0007)

--------------------------------------------------------------------------------
        VERTICES      STATUS  TOTAL  COMPLETED  RUNNING  PENDING  FAILED  KILLED
--------------------------------------------------------------------------------
Map 1              SUCCEEDED      0          0        0        0       0       0
Reducer 2             FAILED      1          0        0        1       4       0
--------------------------------------------------------------------------------
VERTICES: 01/02  [\>\>--------------------------] 0%    ELAPSED TIME: 25.44 s
--------------------------------------------------------------------------------
Status: Failed
Vertex failed, vertexName=Reducer 2, vertexId=vertex\_1440915851419\_0007\_2\_01, diagnostics=[Task failed, taskId=task\_1440915851419\_0007\_2\_01\_000000, diagnostics=[TaskAttempt 0 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000002 finished with diagnostics set to [Container failed. ]], TaskAttempt 1 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000003 finished with diagnostics set to [Container failed. ]], TaskAttempt 2 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000004 finished with diagnostics set to [Container failed. ]], TaskAttempt 3 failed, info=[Container container\_e02\_1440915851419\_0007\_01\_000005 finished with diagnostics set to [Container failed. ]]], Vertex failed as one or more tasks failed. failedTasks:1, Vertex vertex\_1440915851419\_0007\_2\_01 [Reducer 2] killed/failed due to:null]
DAG failed due to vertex failure. failedVertices:1 killedVertices:0
FAILED: Execution Error, return code 2 from org.apache.hadoop.hive.ql.exec.tez.TezTask
{code}
{code}
2015-08-31 22:00:27,528 WARN [TezChild] task.TezTaskRunner: Heartbeat failure caused by communication failure
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.ipc.RpcServerException): IPC server unable to read call parameters: Too many counters: 2001 max=2000
    at org.apache.hadoop.ipc.Client.call(Client.java:1469)
    at org.apache.hadoop.ipc.Client.call(Client.java:1400)
    at org.apache.hadoop.ipc.WritableRpcEngine$Invoker.invoke(WritableRpcEngine.java:244)
    at com.sun.proxy.$Proxy9.heartbeat(Unknown Source)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.heartbeat(TaskReporter.java:249)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.taskFailed(TaskReporter.java:344)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.access$300(TaskReporter.java:119)
    at org.apache.tez.runtime.task.TaskReporter.taskFailed(TaskReporter.java:381)
    at org.apache.tez.runtime.task.TezTaskRunner.sendFailure(TezTaskRunner.java:257)
    at org.apache.tez.runtime.task.TezTaskRunner.access$600(TezTaskRunner.java:51)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:224)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:168)
    at java.security.AccessController.doPrivileged(Native Method)
    at javax.security.auth.Subject.doAs(Subject.java:415)
    at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1671)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:168)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:163)
    at java.util.concurrent.FutureTask.run(FutureTask.java:262)
    at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
    at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
    at java.lang.Thread.run(Thread.java:745)
2015-08-31 22:00:27,529 INFO [TezChild] task.TezTaskRunner: Ignoring the following exception since a previous exception is already registered
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.ipc.RpcServerException): IPC server unable to read call parameters: Too many counters: 2001 max=2000
    at org.apache.hadoop.ipc.Client.call(Client.java:1469)
    at org.apache.hadoop.ipc.Client.call(Client.java:1400)
    at org.apache.hadoop.ipc.WritableRpcEngine$Invoker.invoke(WritableRpcEngine.java:244)
    at com.sun.proxy.$Proxy9.heartbeat(Unknown Source)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.heartbeat(TaskReporter.java:249)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.taskFailed(TaskReporter.java:344)
    at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.access$300(TaskReporter.java:119)
    at org.apache.tez.runtime.task.TaskReporter.taskFailed(TaskReporter.java:381)
    at org.apache.tez.runtime.task.TezTaskRunner.sendFailure(TezTaskRunner.java:257)
    at org.apache.tez.runtime.task.TezTaskRunner.access$600(TezTaskRunner.java:51)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:224)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:168)
    at java.security.AccessController.doPrivileged(Native Method)
    at javax.security.auth.Subject.doAs(Subject.java:415)
    at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1671)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:168)
    at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:163)
    at java.util.concurrent.FutureTask.run(FutureTask.java:262)
    at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
    at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
    at java.lang.Thread.run(Thread.java:745)
2015-08-31 22:00:27,537 INFO [TezChild] runtime.LogicalIOProcessorRuntimeTask: Final Counters : Counters: 2012 [[File System Counters HDFS\_BYTES\_READ=0, HDFS\_BYTES\_WRITTEN=0, HDFS\_READ\_OPS=0, HDFS\_LARGE\_READ\_OPS=0, HDFS\_WRITE\_OPS=0][org.apache.tez.common.counters.TaskCounter GC\_TIME\_MILLIS=0, CPU\_MILLISECONDS=350, PHYSICAL\_MEMORY\_BYTES=211939328, VIRTUAL\_MEMORY\_BYTES=2892767232, COMMITTED\_HEAP\_BYTES=324009984, OUTPUT\_RECORDS=0][TestCounter Counter #0=1, Counter #1=1, Counter #10=1, Counter #100=1, Counter #1000=1, Counter #1001=1, Counter #1002=1, Counter #1003=1, Counter #1004=1, Counter #1005=1, Counter #1006=1, Counter #1007=1, Counter #1008=1, Counter #1009=1, Counter #101=1, Counter #1010=1, Counter #1011=1, Counter #1012=1, Counter #1013=1, Counter #1014=1, Counter #1015=1, Counter #1016=1, Counter #1017=1, Counter #1018=1, Counter #1019=1, Counter #102=1, Counter #1020=1, Counter #1021=1, Counter #1022=1, Counter #1023=1, Counter #1024=1, Counter #1025=1, Counter #1026=1, Counter #1027=1, Counter #1028=1, Counter #1029=1, Counter #103=1, Counter #1030=1, Counter #1031=1, Counter #1032=1, Counter #1033=1, Counter #1034=1, Counter #1035=1, Counter #1036=1, Counter #1037=1, Counter #1038=1, Counter #1039=1, Counter #104=1, Counter #1040=1, Counter #1041=1, Counter #1042=1, Counter #1043=1, Counter #1044=1, Counter #1045=1, Counter #1046=1, Counter #1047=1, Counter #1048=1, Counter #1049=1, Counter #105=1, Counter #1050=1, Counter #1051=1, Counter #1052=1, Counter #1053=1, Counter #1054=1, Counter #1055=1, Counter #1056=1, Counter #1057=1, Counter #1058=1, Counter #1059=1, Counter #106=1, Counter #1060=1, Counter #1061=1, Counter #1062=1, Counter #1063=1, Counter #1064=1, Counter #1065=1, Counter #1066=1, Counter #1067=1, Counter #1068=1, Counter #1069=1, Counter #107=1, Counter #1070=1, Counter #1071=1, Counter #1072=1, Counter #1073=1, Counter #1074=1, Counter #1075=1, Counter #1076=1, Counter #1077=1, Counter #1078=1, Counter #1079=1, Counter #108=1, Counter #1080=1, Counter #1081=1, Counter #1082=1, Counter #1083=1, Counter #1084=1, Counter #1085=1, Counter #1086=1, Counter #1087=1, Counter #1088=1, Counter #1089=1, Counter #109=1, Counter #1090=1, Counter #1091=1, Counter #1092=1, Counter #1093=1, Counter #1094=1, Counter #1095=1, Counter #1096=1, Counter #1097=1, Counter #1098=1, Counter #1099=1, Counter #11=1, Counter #110=1, Counter #1100=1, Counter #1101=1, Counter #1102=1, Counter #1103=1, Counter #1104=1, Counter #1105=1, Counter #1106=1, Counter #1107=1, Counter #1108=1, Counter #1109=1, Counter #111=1, Counter #1110=1, Counter #1111=1, Counter #1112=1, Counter #1113=1, Counter #1114=1, Counter #1115=1, Counter #1116=1, Counter #1117=1, Counter #1118=1, Counter #1119=1, Counter #112=1, Counter #1120=1, Counter #1121=1, Counter #1122=1, Counter #1123=1, Counter #1124=1, Counter #1125=1, Counter #1126=1, Counter #1127=1, Counter #1128=1, Counter #1129=1, Counter #113=1, Counter #1130=1, Counter #1131=1, Counter #1132=1, Counter #1133=1, Counter #1134=1, Counter #1135=1, Counter #1136=1, Counter #1137=1, Counter #1138=1, Counter #1139=1, Counter #114=1, Counter #1140=1, Counter #1141=1, Counter #1142=1, Counter #1143=1, Counter #1144=1, Counter #1145=1, Counter #1146=1, Counter #1147=1, Counter #1148=1, Counter #1149=1, Counter #115=1, Counter #1150=1, Counter #1151=1, Counter #1152=1, Counter #1153=1, Counter #1154=1, Counter #1155=1, Counter #1156=1, Counter #1157=1, Counter #1158=1, Counter #1159=1, Counter #116=1, Counter #1160=1, Counter #1161=1, Counter #1162=1, Counter #1163=1, Counter #1164=1, Counter #1165=1, Counter #1166=1, Counter #1167=1, Counter #1168=1, Counter #1169=1, Counter #117=1, Counter #1170=1, Counter #1171=1, Counter #1172=1, Counter #1173=1, Counter #1174=1, Counter #1175=1, Counter #1176=1, Counter #1177=1, Counter #1178=1, Counter #1179=1, Counter #118=1, Counter #1180=1, Counter #1181=1, Counter #1182=1, Counter #1183=1, Counter #1184=1, Counter #1185=1, Counter #1186=1, Counter #1187=1, Counter #1188=1, Counter #1189=1, Counter #119=1, Counter #1190=1, Counter #1191=1, Counter #1192=1, Counter #1193=1, Counter #1194=1, Counter #1195=1, Counter #1196=1, Counter #1197=1, Counter #1198=1, Counter #1199=1, Counter #12=1, Counter #120=1, Counter #1200=1, Counter #1201=1, Counter #1202=1, Counter #1203=1, Counter #1204=1, Counter #1205=1, Counter #1206=1, Counter #1207=1, Counter #1208=1, Counter #1209=1, Counter #121=1, Counter #1210=1, Counter #1211=1, Counter #1212=1, Counter #1213=1, Counter #1214=1, Counter #1215=1, Counter #1216=1, Counter #1217=1, Counter #1218=1, Counter #1219=1, Counter #122=1, Counter #1220=1, Counter #1221=1, Counter #1222=1, Counter #1223=1, Counter #1224=1, Counter #1225=1, Counter #1226=1, Counter #1227=1, Counter #1228=1, Counter #1229=1, Counter #123=1, Counter #1230=1, Counter #1231=1, Counter #1232=1, Counter #1233=1, Counter #1234=1, Counter #1235=1, Counter #1236=1, Counter #1237=1, Counter #1238=1, Counter #1239=1, Counter #124=1, Counter #1240=1, Counter #1241=1, Counter #1242=1, Counter #1243=1, Counter #1244=1, Counter #1245=1, Counter #1246=1, Counter #1247=1, Counter #1248=1, Counter #1249=1, Counter #125=1, Counter #1250=1, Counter #1251=1, Counter #1252=1, Counter #1253=1, Counter #1254=1, Counter #1255=1, Counter #1256=1, Counter #1257=1, Counter #1258=1, Counter #1259=1, Counter #126=1, Counter #1260=1, Counter #1261=1, Counter #1262=1, Counter #1263=1, Counter #1264=1, Counter #1265=1, Counter #1266=1, Counter #1267=1, Counter #1268=1, Counter #1269=1, Counter #127=1, Counter #1270=1, Counter #1271=1, Counter #1272=1, Counter #1273=1, Counter #1274=1, Counter #1275=1, Counter #1276=1, Counter #1277=1, Counter #1278=1, Counter #1279=1, Counter #128=1, Counter #1280=1, Counter #1281=1, Counter #1282=1, Counter #1283=1, Counter #1284=1, Counter #1285=1, Counter #1286=1, Counter #1287=1, Counter #1288=1, Counter #1289=1, Counter #129=1, Counter #1290=1, Counter #1291=1, Counter #1292=1, Counter #1293=1, Counter #1294=1, Counter #1295=1, Counter #1296=1, Counter #1297=1, Counter #1298=1, Counter #1299=1, Counter #13=1, Counter #130=1, Counter #1300=1, Counter #1301=1, Counter #1302=1, Counter #1303=1, Counter #1304=1, Counter #1305=1, Counter #1306=1, Counter #1307=1, Counter #1308=1, Counter #1309=1, Counter #131=1, Counter #1310=1, Counter #1311=1, Counter #1312=1, Counter #1313=1, Counter #1314=1, Counter #1315=1, Counter #1316=1, Counter #1317=1, Counter #1318=1, Counter #1319=1, Counter #132=1, Counter #1320=1, Counter #1321=1, Counter #1322=1, Counter #1323=1, Counter #1324=1, Counter #1325=1, Counter #1326=1, Counter #1327=1, Counter #1328=1, Counter #1329=1, Counter #133=1, Counter #1330=1, Counter #1331=1, Counter #1332=1, Counter #1333=1, Counter #1334=1, Counter #1335=1, Counter #1336=1, Counter #1337=1, Counter #1338=1, Counter #1339=1, Counter #134=1, Counter #1340=1, Counter #1341=1, Counter #1342=1, Counter #1343=1, Counter #1344=1, Counter #1345=1, Counter #1346=1, Counter #1347=1, Counter #1348=1, Counter #1349=1, Counter #135=1, Counter #1350=1, Counter #1351=1, Counter #1352=1, Counter #1353=1, Counter #1354=1, Counter #1355=1, Counter #1356=1, Counter #1357=1, Counter #1358=1, Counter #1359=1, Counter #136=1, Counter #1360=1, Counter #1361=1, Counter #1362=1, Counter #1363=1, Counter #1364=1, Counter #1365=1, Counter #1366=1, Counter #1367=1, Counter #1368=1, Counter #1369=1, Counter #137=1, Counter #1370=1, Counter #1371=1, Counter #1372=1, Counter #1373=1, Counter #1374=1, Counter #1375=1, Counter #1376=1, Counter #1377=1, Counter #1378=1, Counter #1379=1, Counter #138=1, Counter #1380=1, Counter #1381=1, Counter #1382=1, Counter #1383=1, Counter #1384=1, Counter #1385=1, Counter #1386=1, Counter #1387=1, Counter #1388=1, Counter #1389=1, Counter #139=1, Counter #1390=1, Counter #1391=1, Counter #1392=1, Counter #1393=1, Counter #1394=1, Counter #1395=1, Counter #1396=1, Counter #1397=1, Counter #1398=1, Counter #1399=1, Counter #14=1, Counter #140=1, Counter #1400=1, Counter #1401=1, Counter #1402=1, Counter #1403=1, Counter #1404=1, Counter #1405=1, Counter #1406=1, Counter #1407=1, Counter #1408=1, Counter #1409=1, Counter #141=1, Counter #1410=1, Counter #1411=1, Counter #1412=1, Counter #1413=1, Counter #1414=1, Counter #1415=1, Counter #1416=1, Counter #1417=1, Counter #1418=1, Counter #1419=1, Counter #142=1, Counter #1420=1, Counter #1421=1, Counter #1422=1, Counter #1423=1, Counter #1424=1, Counter #1425=1, Counter #1426=1, Counter #1427=1, Counter #1428=1, Counter #1429=1, Counter #143=1, Counter #1430=1, Counter #1431=1, Counter #1432=1, Counter #1433=1, Counter #1434=1, Counter #1435=1, Counter #1436=1, Counter #1437=1, Counter #1438=1, Counter #1439=1, Counter #144=1, Counter #1440=1, Counter #1441=1, Counter #1442=1, Counter #1443=1, Counter #1444=1, Counter #1445=1, Counter #1446=1, Counter #1447=1, Counter #1448=1, Counter #1449=1, Counter #145=1, Counter #1450=1, Counter #1451=1, Counter #1452=1, Counter #1453=1, Counter #1454=1, Counter #1455=1, Counter #1456=1, Counter #1457=1, Counter #1458=1, Counter #1459=1, Counter #146=1, Counter #1460=1, Counter #1461=1, Counter #1462=1, Counter #1463=1, Counter #1464=1, Counter #1465=1, Counter #1466=1, Counter #1467=1, Counter #1468=1, Counter #1469=1, Counter #147=1, Counter #1470=1, Counter #1471=1, Counter #1472=1, Counter #1473=1, Counter #1474=1, Counter #1475=1, Counter #1476=1, Counter #1477=1, Counter #1478=1, Counter #1479=1, Counter #148=1, Counter #1480=1, Counter #1481=1, Counter #1482=1, Counter #1483=1, Counter #1484=1, Counter #1485=1, Counter #1486=1, Counter #1487=1, Counter #1488=1, Counter #1489=1, Counter #149=1, Counter #1490=1, Counter #1491=1, Counter #1492=1, Counter #1493=1, Counter #1494=1, Counter #1495=1, Counter #1496=1, Counter #1497=1, Counter #1498=1, Counter #1499=1, Counter #15=1, Counter #150=1, Counter #1500=1, Counter #1501=1, Counter #1502=1, Counter #1503=1, Counter #1504=1, Counter #1505=1, Counter #1506=1, Counter #1507=1, Counter #1508=1, Counter #1509=1, Counter #151=1, Counter #1510=1, Counter #1511=1, Counter #1512=1, Counter #1513=1, Counter #1514=1, Counter #1515=1, Counter #1516=1, Counter #1517=1, Counter #1518=1, Counter #1519=1, Counter #152=1, Counter #1520=1, Counter #1521=1, Counter #1522=1, Counter #1523=1, Counter #1524=1, Counter #1525=1, Counter #1526=1, Counter #1527=1, Counter #1528=1, Counter #1529=1, Counter #153=1, Counter #1530=1, Counter #1531=1, Counter #1532=1, Counter #1533=1, Counter #1534=1, Counter #1535=1, Counter #1536=1, Counter #1537=1, Counter #1538=1, Counter #1539=1, Counter #154=1, Counter #1540=1, Counter #1541=1, Counter #1542=1, Counter #1543=1, Counter #1544=1, Counter #1545=1, Counter #1546=1, Counter #1547=1, Counter #1548=1, Counter #1549=1, Counter #155=1, Counter #1550=1, Counter #1551=1, Counter #1552=1, Counter #1553=1, Counter #1554=1, Counter #1555=1, Counter #1556=1, Counter #1557=1, Counter #1558=1, Counter #1559=1, Counter #156=1, Counter #1560=1, Counter #1561=1, Counter #1562=1, Counter #1563=1, Counter #1564=1, Counter #1565=1, Counter #1566=1, Counter #1567=1, Counter #1568=1, Counter #1569=1, Counter #157=1, Counter #1570=1, Counter #1571=1, Counter #1572=1, Counter #1573=1, Counter #1574=1, Counter #1575=1, Counter #1576=1, Counter #1577=1, Counter #1578=1, Counter #1579=1, Counter #158=1, Counter #1580=1, Counter #1581=1, Counter #1582=1, Counter #1583=1, Counter #1584=1, Counter #1585=1, Counter #1586=1, Counter #1587=1, Counter #1588=1, Counter #1589=1, Counter #159=1, Counter #1590=1, Counter #1591=1, Counter #1592=1, Counter #1593=1, Counter #1594=1, Counter #1595=1, Counter #1596=1, Counter #1597=1, Counter #1598=1, Counter #1599=1, Counter #16=1, Counter #160=1, Counter #1600=1, Counter #1601=1, Counter #1602=1, Counter #1603=1, Counter #1604=1, Counter #1605=1, Counter #1606=1, Counter #1607=1, Counter #1608=1, Counter #1609=1, Counter #161=1, Counter #1610=1, Counter #1611=1, Counter #1612=1, Counter #1613=1, Counter #1614=1, Counter #1615=1, Counter #1616=1, Counter #1617=1, Counter #1618=1, Counter #1619=1, Counter #162=1, Counter #1620=1, Counter #1621=1, Counter #1622=1, Counter #1623=1, Counter #1624=1, Counter #1625=1, Counter #1626=1, Counter #1627=1, Counter #1628=1, Counter #1629=1, Counter #163=1, Counter #1630=1, Counter #1631=1, Counter #1632=1, Counter #1633=1, Counter #1634=1, Counter #1635=1, Counter #1636=1, Counter #1637=1, Counter #1638=1, Counter #1639=1, Counter #164=1, Counter #1640=1, Counter #1641=1, Counter #1642=1, Counter #1643=1, Counter #1644=1, Counter #1645=1, Counter #1646=1, Counter #1647=1, Counter #1648=1, Counter #1649=1, Counter #165=1, Counter #1650=1, Counter #1651=1, Counter #1652=1, Counter #1653=1, Counter #1654=1, Counter #1655=1, Counter #1656=1, Counter #1657=1, Counter #1658=1, Counter #1659=1, Counter #166=1, Counter #1660=1, Counter #1661=1, Counter #1662=1, Counter #1663=1, Counter #1664=1, Counter #1665=1, Counter #1666=1, Counter #1667=1, Counter #1668=1, Counter #1669=1, Counter #167=1, Counter #1670=1, Counter #1671=1, Counter #1672=1, Counter #1673=1, Counter #1674=1, Counter #1675=1, Counter #1676=1, Counter #1677=1, Counter #1678=1, Counter #1679=1, Counter #168=1, Counter #1680=1, Counter #1681=1, Counter #1682=1, Counter #1683=1, Counter #1684=1, Counter #1685=1, Counter #1686=1, Counter #1687=1, Counter #1688=1, Counter #1689=1, Counter #169=1, Counter #1690=1, Counter #1691=1, Counter #1692=1, Counter #1693=1, Counter #1694=1, Counter #1695=1, Counter #1696=1, Counter #1697=1, Counter #1698=1, Counter #1699=1, Counter #17=1, Counter #170=1, Counter #1700=1, Counter #1701=1, Counter #1702=1, Counter #1703=1, Counter #1704=1, Counter #1705=1, Counter #1706=1, Counter #1707=1, Counter #1708=1, Counter #1709=1, Counter #171=1, Counter #1710=1, Counter #1711=1, Counter #1712=1, Counter #1713=1, Counter #1714=1, Counter #1715=1, Counter #1716=1, Counter #1717=1, Counter #1718=1, Counter #1719=1, Counter #172=1, Counter #1720=1, Counter #1721=1, Counter #1722=1, Counter #1723=1, Counter #1724=1, Counter #1725=1, Counter #1726=1, Counter #1727=1, Counter #1728=1, Counter #1729=1, Counter #173=1, Counter #1730=1, Counter #1731=1, Counter #1732=1, Counter #1733=1, Counter #1734=1, Counter #1735=1, Counter #1736=1, Counter #1737=1, Counter #1738=1, Counter #1739=1, Counter #174=1, Counter #1740=1, Counter #1741=1, Counter #1742=1, Counter #1743=1, Counter #1744=1, Counter #1745=1, Counter #1746=1, Counter #1747=1, Counter #1748=1, Counter #1749=1, Counter #175=1, Counter #1750=1, Counter #1751=1, Counter #1752=1, Counter #1753=1, Counter #1754=1, Counter #1755=1, Counter #1756=1, Counter #1757=1, Counter #1758=1, Counter #1759=1, Counter #176=1, Counter #1760=1, Counter #1761=1, Counter #1762=1, Counter #1763=1, Counter #1764=1, Counter #1765=1, Counter #1766=1, Counter #1767=1, Counter #1768=1, Counter #1769=1, Counter #177=1, Counter #1770=1, Counter #1771=1, Counter #1772=1, Counter #1773=1, Counter #1774=1, Counter #1775=1, Counter #1776=1, Counter #1777=1, Counter #1778=1, Counter #1779=1, Counter #178=1, Counter #1780=1, Counter #1781=1, Counter #1782=1, Counter #1783=1, Counter #1784=1, Counter #1785=1, Counter #1786=1, Counter #1787=1, Counter #1788=1, Counter #1789=1, Counter #179=1, Counter #1790=1, Counter #1791=1, Counter #1792=1, Counter #1793=1, Counter #1794=1, Counter #1795=1, Counter #1796=1, Counter #1797=1, Counter #1798=1, Counter #1799=1, Counter #18=1, Counter #180=1, Counter #1800=1, Counter #1801=1, Counter #1802=1, Counter #1803=1, Counter #1804=1, Counter #1805=1, Counter #1806=1, Counter #1807=1, Counter #1808=1, Counter #1809=1, Counter #181=1, Counter #1810=1, Counter #1811=1, Counter #1812=1, Counter #1813=1, Counter #1814=1, Counter #1815=1, Counter #1816=1, Counter #1817=1, Counter #1818=1, Counter #1819=1, Counter #182=1, Counter #1820=1, Counter #1821=1, Counter #1822=1, Counter #1823=1, Counter #1824=1, Counter #1825=1, Counter #1826=1, Counter #1827=1, Counter #1828=1, Counter #1829=1, Counter #183=1, Counter #1830=1, Counter #1831=1, Counter #1832=1, Counter #1833=1, Counter #1834=1, Counter #1835=1, Counter #1836=1, Counter #1837=1, Counter #1838=1, Counter #1839=1, Counter #184=1, Counter #1840=1, Counter #1841=1, Counter #1842=1, Counter #1843=1, Counter #1844=1, Counter #1845=1, Counter #1846=1, Counter #1847=1, Counter #1848=1, Counter #1849=1, Counter #185=1, Counter #1850=1, Counter #1851=1, Counter #1852=1, Counter #1853=1, Counter #1854=1, Counter #1855=1, Counter #1856=1, Counter #1857=1, Counter #1858=1, Counter #1859=1, Counter #186=1, Counter #1860=1, Counter #1861=1, Counter #1862=1, Counter #1863=1, Counter #1864=1, Counter #1865=1, Counter #1866=1, Counter #1867=1, Counter #1868=1, Counter #1869=1, Counter #187=1, Counter #1870=1, Counter #1871=1, Counter #1872=1, Counter #1873=1, Counter #1874=1, Counter #1875=1, Counter #1876=1, Counter #1877=1, Counter #1878=1, Counter #1879=1, Counter #188=1, Counter #1880=1, Counter #1881=1, Counter #1882=1, Counter #1883=1, Counter #1884=1, Counter #1885=1, Counter #1886=1, Counter #1887=1, Counter #1888=1, Counter #1889=1, Counter #189=1, Counter #1890=1, Counter #1891=1, Counter #1892=1, Counter #1893=1, Counter #1894=1, Counter #1895=1, Counter #1896=1, Counter #1897=1, Counter #1898=1, Counter #1899=1, Counter #19=1, Counter #190=1, Counter #1900=1, Counter #1901=1, Counter #1902=1, Counter #1903=1, Counter #1904=1, Counter #1905=1, Counter #1906=1, Counter #1907=1, Counter #1908=1, Counter #1909=1, Counter #191=1, Counter #1910=1, Counter #1911=1, Counter #1912=1, Counter #1913=1, Counter #1914=1, Counter #1915=1, Counter #1916=1, Counter #1917=1, Counter #1918=1, Counter #1919=1, Counter #192=1, Counter #1920=1, Counter #1921=1, Counter #1922=1, Counter #1923=1, Counter #1924=1, Counter #1925=1, Counter #1926=1, Counter #1927=1, Counter #1928=1, Counter #1929=1, Counter #193=1, Counter #1930=1, Counter #1931=1, Counter #1932=1, Counter #1933=1, Counter #1934=1, Counter #1935=1, Counter #1936=1, Counter #1937=1, Counter #1938=1, Counter #1939=1, Counter #194=1, Counter #1940=1, Counter #1941=1, Counter #1942=1, Counter #1943=1, Counter #1944=1, Counter #1945=1, Counter #1946=1, Counter #1947=1, Counter #1948=1, Counter #1949=1, Counter #195=1, Counter #1950=1, Counter #1951=1, Counter #1952=1, Counter #1953=1, Counter #1954=1, Counter #1955=1, Counter #1956=1, Counter #1957=1, Counter #1958=1, Counter #1959=1, Counter #196=1, Counter #1960=1, Counter #1961=1, Counter #1962=1, Counter #1963=1, Counter #1964=1, Counter #1965=1, Counter #1966=1, Counter #1967=1, Counter #1968=1, Counter #1969=1, Counter #197=1, Counter #1970=1, Counter #1971=1, Counter #1972=1, Counter #1973=1, Counter #1974=1, Counter #1975=1, Counter #1976=1, Counter #1977=1, Counter #1978=1, Counter #1979=1, Counter #198=1, Counter #1980=1, Counter #1981=1, Counter #1982=1, Counter #1983=1, Counter #1984=1, Counter #1985=1, Counter #1986=1, Counter #1987=1, Counter #1988=1, Counter #1989=1, Counter #199=1, Counter #1990=1, Counter #1991=1, Counter #1992=1, Counter #1993=1, Counter #1994=1, Counter #1995=1, Counter #1996=1, Counter #1997=1, Counter #1998=1, Counter #1999=1, Counter #2=1, Counter #20=1, Counter #200=1, Counter #2000=0, Counter #201=1, Counter #202=1, Counter #203=1, Counter #204=1, Counter #205=1, Counter #206=1, Counter #207=1, Counter #208=1, Counter #209=1, Counter #21=1, Counter #210=1, Counter #211=1, Counter #212=1, Counter #213=1, Counter #214=1, Counter #215=1, Counter #216=1, Counter #217=1, Counter #218=1, Counter #219=1, Counter #22=1, Counter #220=1, Counter #221=1, Counter #222=1, Counter #223=1, Counter #224=1, Counter #225=1, Counter #226=1, Counter #227=1, Counter #228=1, Counter #229=1, Counter #23=1, Counter #230=1, Counter #231=1, Counter #232=1, Counter #233=1, Counter #234=1, Counter #235=1, Counter #236=1, Counter #237=1, Counter #238=1, Counter #239=1, Counter #24=1, Counter #240=1, Counter #241=1, Counter #242=1, Counter #243=1, Counter #244=1, Counter #245=1, Counter #246=1, Counter #247=1, Counter #248=1, Counter #249=1, Counter #25=1, Counter #250=1, Counter #251=1, Counter #252=1, Counter #253=1, Counter #254=1, Counter #255=1, Counter #256=1, Counter #257=1, Counter #258=1, Counter #259=1, Counter #26=1, Counter #260=1, Counter #261=1, Counter #262=1, Counter #263=1, Counter #264=1, Counter #265=1, Counter #266=1, Counter #267=1, Counter #268=1, Counter #269=1, Counter #27=1, Counter #270=1, Counter #271=1, Counter #272=1, Counter #273=1, Counter #274=1, Counter #275=1, Counter #276=1, Counter #277=1, Counter #278=1, Counter #279=1, Counter #28=1, Counter #280=1, Counter #281=1, Counter #282=1, Counter #283=1, Counter #284=1, Counter #285=1, Counter #286=1, Counter #287=1, Counter #288=1, Counter #289=1, Counter #29=1, Counter #290=1, Counter #291=1, Counter #292=1, Counter #293=1, Counter #294=1, Counter #295=1, Counter #296=1, Counter #297=1, Counter #298=1, Counter #299=1, Counter #3=1, Counter #30=1, Counter #300=1, Counter #301=1, Counter #302=1, Counter #303=1, Counter #304=1, Counter #305=1, Counter #306=1, Counter #307=1, Counter #308=1, Counter #309=1, Counter #31=1, Counter #310=1, Counter #311=1, Counter #312=1, Counter #313=1, Counter #314=1, Counter #315=1, Counter #316=1, Counter #317=1, Counter #318=1, Counter #319=1, Counter #32=1, Counter #320=1, Counter #321=1, Counter #322=1, Counter #323=1, Counter #324=1, Counter #325=1, Counter #326=1, Counter #327=1, Counter #328=1, Counter #329=1, Counter #33=1, Counter #330=1, Counter #331=1, Counter #332=1, Counter #333=1, Counter #334=1, Counter #335=1, Counter #336=1, Counter #337=1, Counter #338=1, Counter #339=1, Counter #34=1, Counter #340=1, Counter #341=1, Counter #342=1, Counter #343=1, Counter #344=1, Counter #345=1, Counter #346=1, Counter #347=1, Counter #348=1, Counter #349=1, Counter #35=1, Counter #350=1, Counter #351=1, Counter #352=1, Counter #353=1, Counter #354=1, Counter #355=1, Counter #356=1, Counter #357=1, Counter #358=1, Counter #359=1, Counter #36=1, Counter #360=1, Counter #361=1, Counter #362=1, Counter #363=1, Counter #364=1, Counter #365=1, Counter #366=1, Counter #367=1, Counter #368=1, Counter #369=1, Counter #37=1, Counter #370=1, Counter #371=1, Counter #372=1, Counter #373=1, Counter #374=1, Counter #375=1, Counter #376=1, Counter #377=1, Counter #378=1, Counter #379=1, Counter #38=1, Counter #380=1, Counter #381=1, Counter #382=1, Counter #383=1, Counter #384=1, Counter #385=1, Counter #386=1, Counter #387=1, Counter #388=1, Counter #389=1, Counter #39=1, Counter #390=1, Counter #391=1, Counter #392=1, Counter #393=1, Counter #394=1, Counter #395=1, Counter #396=1, Counter #397=1, Counter #398=1, Counter #399=1, Counter #4=1, Counter #40=1, Counter #400=1, Counter #401=1, Counter #402=1, Counter #403=1, Counter #404=1, Counter #405=1, Counter #406=1, Counter #407=1, Counter #408=1, Counter #409=1, Counter #41=1, Counter #410=1, Counter #411=1, Counter #412=1, Counter #413=1, Counter #414=1, Counter #415=1, Counter #416=1, Counter #417=1, Counter #418=1, Counter #419=1, Counter #42=1, Counter #420=1, Counter #421=1, Counter #422=1, Counter #423=1, Counter #424=1, Counter #425=1, Counter #426=1, Counter #427=1, Counter #428=1, Counter #429=1, Counter #43=1, Counter #430=1, Counter #431=1, Counter #432=1, Counter #433=1, Counter #434=1, Counter #435=1, Counter #436=1, Counter #437=1, Counter #438=1, Counter #439=1, Counter #44=1, Counter #440=1, Counter #441=1, Counter #442=1, Counter #443=1, Counter #444=1, Counter #445=1, Counter #446=1, Counter #447=1, Counter #448=1, Counter #449=1, Counter #45=1, Counter #450=1, Counter #451=1, Counter #452=1, Counter #453=1, Counter #454=1, Counter #455=1, Counter #456=1, Counter #457=1, Counter #458=1, Counter #459=1, Counter #46=1, Counter #460=1, Counter #461=1, Counter #462=1, Counter #463=1, Counter #464=1, Counter #465=1, Counter #466=1, Counter #467=1, Counter #468=1, Counter #469=1, Counter #47=1, Counter #470=1, Counter #471=1, Counter #472=1, Counter #473=1, Counter #474=1, Counter #475=1, Counter #476=1, Counter #477=1, Counter #478=1, Counter #479=1, Counter #48=1, Counter #480=1, Counter #481=1, Counter #482=1, Counter #483=1, Counter #484=1, Counter #485=1, Counter #486=1, Counter #487=1, Counter #488=1, Counter #489=1, Counter #49=1, Counter #490=1, Counter #491=1, Counter #492=1, Counter #493=1, Counter #494=1, Counter #495=1, Counter #496=1, Counter #497=1, Counter #498=1, Counter #499=1, Counter #5=1, Counter #50=1, Counter #500=1, Counter #501=1, Counter #502=1, Counter #503=1, Counter #504=1, Counter #505=1, Counter #506=1, Counter #507=1, Counter #508=1, Counter #509=1, Counter #51=1, Counter #510=1, Counter #511=1, Counter #512=1, Counter #513=1, Counter #514=1, Counter #515=1, Counter #516=1, Counter #517=1, Counter #518=1, Counter #519=1, Counter #52=1, Counter #520=1, Counter #521=1, Counter #522=1, Counter #523=1, Counter #524=1, Counter #525=1, Counter #526=1, Counter #527=1, Counter #528=1, Counter #529=1, Counter #53=1, Counter #530=1, Counter #531=1, Counter #532=1, Counter #533=1, Counter #534=1, Counter #535=1, Counter #536=1, Counter #537=1, Counter #538=1, Counter #539=1, Counter #54=1, Counter #540=1, Counter #541=1, Counter #542=1, Counter #543=1, Counter #544=1, Counter #545=1, Counter #546=1, Counter #547=1, Counter #548=1, Counter #549=1, Counter #55=1, Counter #550=1, Counter #551=1, Counter #552=1, Counter #553=1, Counter #554=1, Counter #555=1, Counter #556=1, Counter #557=1, Counter #558=1, Counter #559=1, Counter #56=1, Counter #560=1, Counter #561=1, Counter #562=1, Counter #563=1, Counter #564=1, Counter #565=1, Counter #566=1, Counter #567=1, Counter #568=1, Counter #569=1, Counter #57=1, Counter #570=1, Counter #571=1, Counter #572=1, Counter #573=1, Counter #574=1, Counter #575=1, Counter #576=1, Counter #577=1, Counter #578=1, Counter #579=1, Counter #58=1, Counter #580=1, Counter #581=1, Counter #582=1, Counter #583=1, Counter #584=1, Counter #585=1, Counter #586=1, Counter #587=1, Counter #588=1, Counter #589=1, Counter #59=1, Counter #590=1, Counter #591=1, Counter #592=1, Counter #593=1, Counter #594=1, Counter #595=1, Counter #596=1, Counter #597=1, Counter #598=1, Counter #599=1, Counter #6=1, Counter #60=1, Counter #600=1, Counter #601=1, Counter #602=1, Counter #603=1, Counter #604=1, Counter #605=1, Counter #606=1, Counter #607=1, Counter #608=1, Counter #609=1, Counter #61=1, Counter #610=1, Counter #611=1, Counter #612=1, Counter #613=1, Counter #614=1, Counter #615=1, Counter #616=1, Counter #617=1, Counter #618=1, Counter #619=1, Counter #62=1, Counter #620=1, Counter #621=1, Counter #622=1, Counter #623=1, Counter #624=1, Counter #625=1, Counter #626=1, Counter #627=1, Counter #628=1, Counter #629=1, Counter #63=1, Counter #630=1, Counter #631=1, Counter #632=1, Counter #633=1, Counter #634=1, Counter #635=1, Counter #636=1, Counter #637=1, Counter #638=1, Counter #639=1, Counter #64=1, Counter #640=1, Counter #641=1, Counter #642=1, Counter #643=1, Counter #644=1, Counter #645=1, Counter #646=1, Counter #647=1, Counter #648=1, Counter #649=1, Counter #65=1, Counter #650=1, Counter #651=1, Counter #652=1, Counter #653=1, Counter #654=1, Counter #655=1, Counter #656=1, Counter #657=1, Counter #658=1, Counter #659=1, Counter #66=1, Counter #660=1, Counter #661=1, Counter #662=1, Counter #663=1, Counter #664=1, Counter #665=1, Counter #666=1, Counter #667=1, Counter #668=1, Counter #669=1, Counter #67=1, Counter #670=1, Counter #671=1, Counter #672=1, Counter #673=1, Counter #674=1, Counter #675=1, Counter #676=1, Counter #677=1, Counter #678=1, Counter #679=1, Counter #68=1, Counter #680=1, Counter #681=1, Counter #682=1, Counter #683=1, Counter #684=1, Counter #685=1, Counter #686=1, Counter #687=1, Counter #688=1, Counter #689=1, Counter #69=1, Counter #690=1, Counter #691=1, Counter #692=1, Counter #693=1, Counter #694=1, Counter #695=1, Counter #696=1, Counter #697=1, Counter #698=1, Counter #699=1, Counter #7=1, Counter #70=1, Counter #700=1, Counter #701=1, Counter #702=1, Counter #703=1, Counter #704=1, Counter #705=1, Counter #706=1, Counter #707=1, Counter #708=1, Counter #709=1, Counter #71=1, Counter #710=1, Counter #711=1, Counter #712=1, Counter #713=1, Counter #714=1, Counter #715=1, Counter #716=1, Counter #717=1, Counter #718=1, Counter #719=1, Counter #72=1, Counter #720=1, Counter #721=1, Counter #722=1, Counter #723=1, Counter #724=1, Counter #725=1, Counter #726=1, Counter #727=1, Counter #728=1, Counter #729=1, Counter #73=1, Counter #730=1, Counter #731=1, Counter #732=1, Counter #733=1, Counter #734=1, Counter #735=1, Counter #736=1, Counter #737=1, Counter #738=1, Counter #739=1, Counter #74=1, Counter #740=1, Counter #741=1, Counter #742=1, Counter #743=1, Counter #744=1, Counter #745=1, Counter #746=1, Counter #747=1, Counter #748=1, Counter #749=1, Counter #75=1, Counter #750=1, Counter #751=1, Counter #752=1, Counter #753=1, Counter #754=1, Counter #755=1, Counter #756=1, Counter #757=1, Counter #758=1, Counter #759=1, Counter #76=1, Counter #760=1, Counter #761=1, Counter #762=1, Counter #763=1, Counter #764=1, Counter #765=1, Counter #766=1, Counter #767=1, Counter #768=1, Counter #769=1, Counter #77=1, Counter #770=1, Counter #771=1, Counter #772=1, Counter #773=1, Counter #774=1, Counter #775=1, Counter #776=1, Counter #777=1, Counter #778=1, Counter #779=1, Counter #78=1, Counter #780=1, Counter #781=1, Counter #782=1, Counter #783=1, Counter #784=1, Counter #785=1, Counter #786=1, Counter #787=1, Counter #788=1, Counter #789=1, Counter #79=1, Counter #790=1, Counter #791=1, Counter #792=1, Counter #793=1, Counter #794=1, Counter #795=1, Counter #796=1, Counter #797=1, Counter #798=1, Counter #799=1, Counter #8=1, Counter #80=1, Counter #800=1, Counter #801=1, Counter #802=1, Counter #803=1, Counter #804=1, Counter #805=1, Counter #806=1, Counter #807=1, Counter #808=1, Counter #809=1, Counter #81=1, Counter #810=1, Counter #811=1, Counter #812=1, Counter #813=1, Counter #814=1, Counter #815=1, Counter #816=1, Counter #817=1, Counter #818=1, Counter #819=1, Counter #82=1, Counter #820=1, Counter #821=1, Counter #822=1, Counter #823=1, Counter #824=1, Counter #825=1, Counter #826=1, Counter #827=1, Counter #828=1, Counter #829=1, Counter #83=1, Counter #830=1, Counter #831=1, Counter #832=1, Counter #833=1, Counter #834=1, Counter #835=1, Counter #836=1, Counter #837=1, Counter #838=1, Counter #839=1, Counter #84=1, Counter #840=1, Counter #841=1, Counter #842=1, Counter #843=1, Counter #844=1, Counter #845=1, Counter #846=1, Counter #847=1, Counter #848=1, Counter #849=1, Counter #85=1, Counter #850=1, Counter #851=1, Counter #852=1, Counter #853=1, Counter #854=1, Counter #855=1, Counter #856=1, Counter #857=1, Counter #858=1, Counter #859=1, Counter #86=1, Counter #860=1, Counter #861=1, Counter #862=1, Counter #863=1, Counter #864=1, Counter #865=1, Counter #866=1, Counter #867=1, Counter #868=1, Counter #869=1, Counter #87=1, Counter #870=1, Counter #871=1, Counter #872=1, Counter #873=1, Counter #874=1, Counter #875=1, Counter #876=1, Counter #877=1, Counter #878=1, Counter #879=1, Counter #88=1, Counter #880=1, Counter #881=1, Counter #882=1, Counter #883=1, Counter #884=1, Counter #885=1, Counter #886=1, Counter #887=1, Counter #888=1, Counter #889=1, Counter #89=1, Counter #890=1, Counter #891=1, Counter #892=1, Counter #893=1, Counter #894=1, Counter #895=1, Counter #896=1, Counter #897=1, Counter #898=1, Counter #899=1, Counter #9=1, Counter #90=1, Counter #900=1, Counter #901=1, Counter #902=1, Counter #903=1, Counter #904=1, Counter #905=1, Counter #906=1, Counter #907=1, Counter #908=1, Counter #909=1, Counter #91=1, Counter #910=1, Counter #911=1, Counter #912=1, Counter #913=1, Counter #914=1, Counter #915=1, Counter #916=1, Counter #917=1, Counter #918=1, Counter #919=1, Counter #92=1, Counter #920=1, Counter #921=1, Counter #922=1, Counter #923=1, Counter #924=1, Counter #925=1, Counter #926=1, Counter #927=1, Counter #928=1, Counter #929=1, Counter #93=1, Counter #930=1, Counter #931=1, Counter #932=1, Counter #933=1, Counter #934=1, Counter #935=1, Counter #936=1, Counter #937=1, Counter #938=1, Counter #939=1, Counter #94=1, Counter #940=1, Counter #941=1, Counter #942=1, Counter #943=1, Counter #944=1, Counter #945=1, Counter #946=1, Counter #947=1, Counter #948=1, Counter #949=1, Counter #95=1, Counter #950=1, Counter #951=1, Counter #952=1, Counter #953=1, Counter #954=1, Counter #955=1, Counter #956=1, Counter #957=1, Counter #958=1, Counter #959=1, Counter #96=1, Counter #960=1, Counter #961=1, Counter #962=1, Counter #963=1, Counter #964=1, Counter #965=1, Counter #966=1, Counter #967=1, Counter #968=1, Counter #969=1, Counter #97=1, Counter #970=1, Counter #971=1, Counter #972=1, Counter #973=1, Counter #974=1, Counter #975=1, Counter #976=1, Counter #977=1, Counter #978=1, Counter #979=1, Counter #98=1, Counter #980=1, Counter #981=1, Counter #982=1, Counter #983=1, Counter #984=1, Counter #985=1, Counter #986=1, Counter #987=1, Counter #988=1, Counter #989=1, Counter #99=1, Counter #990=1, Counter #991=1, Counter #992=1, Counter #993=1, Counter #994=1, Counter #995=1, Counter #996=1, Counter #997=1, Counter #998=1, Counter #999=1]]
2015-08-31 22:00:27,539 INFO [main] impl.MetricsSystemImpl: Stopping TezTask metrics system...
2015-08-31 22:00:27,540 INFO [main] impl.MetricsSystemImpl: TezTask metrics system stopped.
2015-08-31 22:00:27,540 INFO [main] impl.MetricsSystemImpl: TezTask metrics system shutdown complete.
{code}


---

* [TEZ-2780](https://issues.apache.org/jira/browse/TEZ-2780) | *Major* | **Tez UI: Update All Tasks page while in progress.**

Modify table component to automatically update cell based on in-progress data.
#. Upgrade polling logic to manage a specific entity.
#. Added progress column to All Tasks table.
#. Updated table to automatically reflect model change - Just need to set observePath to true in defaultColumnConfigs.
#. Updated table logic to send action on row change - so that polling logic can query for fresh records.


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

* [TEZ-2752](https://issues.apache.org/jira/browse/TEZ-2752) | *Major* | **logUnsuccessful completion in Attempt should write original finish time to ATS**

Currently it overwrites with the current time and that results in wrong information since in reality the attempt might have finished earlier if the failure was output failure. Other failures also set the finish time in the terminate transition and thus even in non output failed cases the value of finishtime can be used instead of using current time.


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

* [TEZ-2734](https://issues.apache.org/jira/browse/TEZ-2734) | *Major* | **Add a test to verify the filename generated by OnDiskMerge**

Follow up to TEZ-1808


---

* [TEZ-2732](https://issues.apache.org/jira/browse/TEZ-2732) | *Major* | **DefaultSorter throws ArrayIndex exceptions on 2047 Mb size sort buffers**

{noformat}
  kvbuffer.length = 2146435072 (2047 MB)
  Corner case: bufIndex=2026133899, kvbidx=523629312.
  distkvi = mod - i + j = 2146435072 - 2026133899 + 523629312 = 643930485
  newPos = (2026133899 + (max(.., min(643930485/2, 271128624))) (This would overflow)
{noformat}

Would be good to restrict the max allowed sort buffer to 1800 instead of 2047.


---

* [TEZ-2731](https://issues.apache.org/jira/browse/TEZ-2731) | *Major* | **Fix Tez GenericCounter performance bottleneck**

GenericCounter::increment(1) shows up as a ~16% performance penalty inside the unvectorized codepath of Hive queries.

The vectorized codepath amortizes this entirely by running through that exactly once every 1024 rows & the performance improvement is dramatic.

!lock-inc.png!
!mr-reader-next.png!

Optimize the GenericCounter impl for mostly uncontested atomic operations.


---

* [TEZ-2719](https://issues.apache.org/jira/browse/TEZ-2719) | *Major* | **Consider reducing logs in unordered fetcher with shared-fetch option**

For large broadcast, this can be a problem
e.g 
In one of the jobs (query\_17 @ 10 TB scale), Map 7 generates around 1.1 GB of data which is given to 330 tasks in downstream Map 1.

Map 1 uses all slots in cluster (~ 224 per wave). Until data is downloaded, shared fetch would end up re-queuing fetches.  As a part of it, it would end up printing 3 logs per attempt. E.g

{noformat}
2015-08-14 02:09:11,761 INFO [Fetcher [Map\_7] #0] shuffle.Fetcher: Requeuing machine1:13562 downloads because we didn't get a lock
2015-08-14 02:09:11,761 INFO [Fetcher [Map\_7] #0] shuffle.Fetcher: Shared fetch failed to return 1 inputs on this try
2015-08-14 02:09:11,761 INFO [ShuffleRunner [Map\_7]] impl.ShuffleManager: Scheduling fetch for inputHost: machine1:13562
2015-08-14 02:09:11,761 INFO [ShuffleRunner [Map\_7]] impl.ShuffleManager: Created Fetcher for host: machine1 with inputs: [InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=0], attemptNumber=0, pathComponent=attempt\_1439264591968\_0058\_1\_04\_000000\_0\_10029, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1]]
{noformat}

Based on disk / network, it  might take time for fetcher to finish downloading and release the lock.  Since there was only one task in Map-1, it ended up in a sort of tight loop generating relatively larger logs.

Looks like 260-290 MB task log files are created in this case per attempt.  That would be around 2.3 GB to 3 GB (depending on number of slots waiting) in machine with 8-10 slots.


---

* [TEZ-2716](https://issues.apache.org/jira/browse/TEZ-2716) | *Major* | **DefaultSorter.isRleNeeded not thread safe**

TEZ-1997.
Should be targeted at the same set of versions that TEZ-1997 goes into.


---

* [TEZ-2687](https://issues.apache.org/jira/browse/TEZ-2687) | *Major* | **ATS History shutdown happens before the min-held containers are released**

When ATS goes into a GC pause under heavy loads and while it recovers, each Tez AM holds onto a few containers even though it is shutting down and will never accept any more DAGs.


---

* [TEZ-2663](https://issues.apache.org/jira/browse/TEZ-2663) | *Major* | **SessionNotRunning exceptions are wrapped in a ServiceException from a dying AM**

The scenario in TEZ-2548 throws a SessionNotRunning from the AM right now, which gets wrapped in a ServiceException by the protobuf layer, so that the exception thrown by TezClient cannot be caught and handled cleanly.

{code}
2015-07-30 01:32:50,997 ERROR [HiveServer2-Background-Pool: Thread-494()]: exec.Task (TezTask.java:execute(191)) - Failed to execute tez graph.
org.apache.tez.dag.api.TezException: com.google.protobuf.ServiceException: org.apache.hadoop.ipc.RemoteException(org.apache.tez.dag.api.SessionNotRunning): AM unable to accept new DAG submissions. In the process of shutting down
        at org.apache.tez.dag.app.DAGAppMaster.submitDAGToAppMaster(DAGAppMaster.java:1265)
        at org.apache.tez.dag.api.client.DAGClientHandler.submitDAG(DAGClientHandler.java:120)
        at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.submitDAG(DAGClientAMProtocolBlockingPBServerImpl.java:161)
        at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7471)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:616)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:969)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2049)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2045)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2045)
{code}


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

* [TEZ-2636](https://issues.apache.org/jira/browse/TEZ-2636) | *Major* | **MRInput and MultiMRInput should work for cases when there are 0 physical inputs**

It's possible that an Input is setup without any actual data. This is especially valid when a task is processing multiple MRInputs. One side has data, but the other does not. In such cases - we currently end up generating an error.


---

* [TEZ-2635](https://issues.apache.org/jira/browse/TEZ-2635) | *Major* | **Limit number of attempts being downloaded in unordered fetch**

{noformat}
2015-07-22 23:39:14,221 WARN [Fetcher [Map\_3] #4] shuffle.Fetcher: Fetch Failure from host while connecting: machine123, attempt: InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=12], attemptNumber=0, pathComponent=attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_0, fetchTypeInfo=INCREMENTAL\_UPDATE, spillEventId=0] Informing ShuffleManager: 
java.io.IOException: Server returned HTTP response code: 400 for URL: http://machine123:13562/mapOutput?job=job\_1437098194051\_0178&reduce=279&map=attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_0,attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_1,attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_2,attempt\_1437098194051\_0178\_2\_02\_000012\_0\_10003\_3,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000031\_0\_10006\_4,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_0,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_1,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_2,attempt\_1437098194051\_0178\_2\_02\_000050\_0\_10009\_3,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_0,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_0,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_0,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_1,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_1,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_1,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_2,attempt\_1437098194051\_0178\_2\_02\_000069\_0\_10012\_3,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_2,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_2,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_0,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_0,attempt\_1437098194051\_0178\_2\_02\_000107\_0\_10033\_3,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_3,attempt\_1437098194051\_0178\_2\_02\_000088\_0\_10033\_4,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_0,attempt\_1437098194051\_0178\_2\_02\_000145\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000126\_0\_10006\_4,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_1,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_1,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_1,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_2,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_2,attempt\_1437098194051\_0178\_2\_02\_000164\_0\_10030\_3,attempt\_1437098194051\_0178\_2\_02\_000183\_0\_10006\_3,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_2,attempt\_1437098194051\_0178\_2\_02\_000202\_0\_10015\_3,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_0,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_0,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_0,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_0,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_0,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_0,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_0,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_0,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_1,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_1,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_1,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_1,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_0,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_1,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_1,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_1,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_1,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_2,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_2,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_2,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_2,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_2,attempt\_1437098194051\_0178\_2\_02\_000133\_0\_10036\_3,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_2,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_2,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_1,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_2,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_3,attempt\_1437098194051\_0178\_2\_02\_000095\_0\_10009\_3,attempt\_1437098194051\_0178\_2\_02\_000096\_0\_10012\_3,attempt\_1437098194051\_0178\_2\_02\_000114\_0\_10009\_3,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_3,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_3,attempt\_1437098194051\_0178\_2\_02\_000190\_0\_10015\_4,attempt\_1437098194051\_0178\_2\_02\_000143\_0\_10036\_4,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_3,attempt\_1437098194051\_0178\_2\_02\_000153\_0\_10041\_4,attempt\_1437098194051\_0178\_2\_02\_000181\_0\_10042\_4,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_2,attempt\_1437098194051\_0178\_2\_02\_000209\_0\_10018\_3&keepAlive=true
	at sun.net.www.protocol.http.HttpURLConnection.getInputStream0(HttpURLConnection.java:1839)
	at sun.net.www.protocol.http.HttpURLConnection.getInputStream(HttpURLConnection.java:1440)
	at org.apache.tez.http.HttpConnection.getInputStream(HttpConnection.java:248)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.setupConnection(Fetcher.java:441)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.doHttpFetch(Fetcher.java:470)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.doHttpFetch(Fetcher.java:403)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:199)
	at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:71)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{noformat}

tez.runtime.shuffle.fetch.max.task.output.at.once is provided only for ordered fetch, which defaults to 20. But for unordered case, this is not honored.

[~gopalv] got this issue when executing "select p.p\_partkey, li.l\_suppkey from (select distinct l\_partkey as p\_partkey from lineitem) p join lineitem li on p.p\_partkey = li.l\_partkey where li.l\_linenumber = 1 and li.l\_orderkey in (select l\_orderkey from lineitem where l\_shipmode = 'AIR') limit 2" @ 10 TB scale


---

* [TEZ-2630](https://issues.apache.org/jira/browse/TEZ-2630) | *Critical* | **TezChild receives IP address instead of FQDN**

I am running a yarn cluster on AWS. The slave nodes (NMs) are all configured to listen on private DNS. For example, a sample node manager listens on ip-10-16-141-168.ec2.internal:8042.

When I'm trying to run a Tez job (even simple ones like select count(\*) from nation) - they fail because child tasks are unable to connect to the AM. The issue is they are trying to connect to the IP instead of the private DNS. Here's a sample log line (couple of them added by me for debugging):

{code}
2015-07-21 17:08:21,919 INFO [main] task.TezChild: TezChild starting
2015-07-21 17:08:22,310 INFO [main] task.TezChild: Using socket factory class: org.apache.hadoop.net.StandardSocketFactory
2015-07-21 17:08:22,336 INFO [main] task.TezChild: PID, containerIdentifier:  3699, container\_1437498369268\_0001\_01\_000002
2015-07-21 17:08:22,418 INFO [main] Configuration.deprecation: fs.default.name is deprecated. Instead, use fs.defaultFS
2015-07-21 17:08:23,025 INFO [main] task.TezChild: Got host:port: 10.16.141.168:37949
2015-07-21 17:08:23,035 INFO [main] task.TezChild: address variables: 10.16.141.168:37949
2015-07-21 17:08:23,143 INFO [TezChild] task.ContainerReporter: Attempting to fetch new task
2015-07-21 17:08:24,201 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 0 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:25,202 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 1 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:26,757 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 2 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:27,758 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 3 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
{code}

AM is listening at the right address. But TezChild is receiving the IP address instead of the private DNS. 

AM logs:
{code}
2015-07-21 18:09:27,906 INFO [ServiceThread:org.apache.tez.dag.app.TaskAttemptListenerImpTezDag] app.TaskAttemptListenerImpTezDag: Listening at address: ip-10-234-2-80.ec2.internal:49967
{code}

TezChild logs:
{code}
2015-07-21 18:09:35,353 INFO [main] task.TezChild: TezChild starting
2015-07-21 18:09:35,379 INFO [main] task.TezChild: Args: 10.234.2.80,49967,container\_1437501941642\_0001\_01\_000002,application\_1437501941642\_0001,1
2015-07-21 18:09:35,770 INFO [main] task.TezChild: Using socket factory class: org.apache.hadoop.net.StandardSocketFactory
2015-07-21 18:09:35,785 INFO [main] task.TezChild: PID, containerIdentifier:  8670, container\_1437501941642\_0001\_01\_000002
2015-07-21 18:09:35,864 INFO [main] Configuration.deprecation: fs.default.name is deprecated. Instead, use fs.defaultFS
2015-07-21 18:09:36,403 INFO [main] task.TezChild: Got host:port: 10.234.2.80:49967
2015-07-21 18:09:36,413 INFO [main] task.TezChild: address variables: 10.234.2.80:49967
{code}


---

* [TEZ-2629](https://issues.apache.org/jira/browse/TEZ-2629) | *Major* | **LimitExceededException in Tez client when DAG has exceeds the default max counters**

Original issue was HIVE-11303, seeing LimitExceededException when the client tries to get the counters for a completed job:

{noformat}
2015-07-17 18:18:11,830 INFO  [main]: counters.Limits (Limits.java:ensureInitialized(59)) - Counter limits initialized with parameters:  GROUP\_NAME\_MAX=256, MAX\_GROUPS=500, COUNTER\_NAME\_MAX=64, MAX\_COUNTERS=1200
2015-07-17 18:18:11,841 ERROR [main]: exec.Task (TezTask.java:execute(189)) - Failed to execute tez graph.
org.apache.tez.common.counters.LimitExceededException: Too many counters: 1201 max=1200
        at org.apache.tez.common.counters.Limits.checkCounters(Limits.java:87)
        at org.apache.tez.common.counters.Limits.incrCounters(Limits.java:94)
        at org.apache.tez.common.counters.AbstractCounterGroup.addCounter(AbstractCounterGroup.java:76)
        at org.apache.tez.common.counters.AbstractCounterGroup.addCounterImpl(AbstractCounterGroup.java:93)
        at org.apache.tez.common.counters.AbstractCounterGroup.findCounter(AbstractCounterGroup.java:104)
        at org.apache.tez.dag.api.DagTypeConverters.convertTezCountersFromProto(DagTypeConverters.java:567)
        at org.apache.tez.dag.api.client.DAGStatus.getDAGCounters(DAGStatus.java:148)
        at org.apache.hadoop.hive.ql.exec.tez.TezTask.execute(TezTask.java:175)
        at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:160)
        at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:89)
        at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1673)
        at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1432)
        at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1213)
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:1064)
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:1054)
        at org.apache.hadoop.hive.cli.CliDriver.processLocalCmd(CliDriver.java:213)
        at org.apache.hadoop.hive.cli.CliDriver.processCmd(CliDriver.java:165)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:376)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:311)
        at org.apache.hadoop.hive.cli.CliDriver.processReader(CliDriver.java:409)
        at org.apache.hadoop.hive.cli.CliDriver.processFile(CliDriver.java:425)
        at org.apache.hadoop.hive.cli.CliDriver.executeDriver(CliDriver.java:714)
        at org.apache.hadoop.hive.cli.CliDriver.run(CliDriver.java:681)
        at org.apache.hadoop.hive.cli.CliDriver.main(CliDriver.java:621)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.apache.hadoop.util.RunJar.run(RunJar.java:221)
        at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
{noformat}

It looks like Limits.ensureInitialized() is defaulting to an empty configuration, resulting in COUNTERS\_MAX being set to the default of 1200 (even though Hive's configuration specified tez.counters.max=16000).

Per [~sseth]:
{quote}
I think the Tez client does need to make this call to setup the Configuration correctly. We do this for the AM and the executing task - which is why it works. Could you please open a Tez jira for this ?
Also, Limits is making use of Configuration instead of TezConfiguration for default initialization, which implies changes to tez-site on the local node won't be picked up.
{quote}


---

* [TEZ-2623](https://issues.apache.org/jira/browse/TEZ-2623) | *Major* | **Fix module dependencies related to hadoop-auth**

Tez doesn't compile when the {{.m2}} directory is empty. It needs to depend on {{hadoop-auth}} as well.

{code}
[ERROR] /Users/rjain/workspace/tez/tez-runtime-library/src/main/java/org/apache/tez/runtime/library/common/shuffle/HttpConnection.java:[402,51] cannot access org.apache.hadoop.security.authentication.client.ConnectionConfigurator
  class file for org.apache.hadoop.security.authentication.client.ConnectionConfigurator not found
[INFO] 1 error
{code}


---

* [TEZ-2602](https://issues.apache.org/jira/browse/TEZ-2602) | *Major* | **Throwing EOFException when launching MR job**

{quote}
$hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount   -Dmapreduce.framework.name=yarn-tez -Dmapr
ed.reduce.tasks=15 -Dtez.runtime.sort.threads=1 wc10g tezwc10g5 
15/07/07 13:24:30 INFO client.RMProxy: Connecting to ResourceManager at /127.0.0.1:8081                                                                                                                                                                       
15/07/07 13:24:30 INFO client.AHSProxy: Connecting to Application History server at /0.0.0.0:10200
15/07/07 13:24:30 INFO mapreduce.Job: The url to track the job: http://ip-172-31-4-8.ap-northeast-1.compute.internal:8088/proxy/application\_1435943097882\_0019/                                                                                               
15/07/07 13:24:30 INFO mapreduce.Job: Running job: job\_1435943097882\_0019
15/07/07 13:24:31 INFO mapreduce.Job: Job job\_1435943097882\_0019 running in uber mode : false                                                                                                                                                                 
15/07/07 13:24:31 INFO mapreduce.Job:  map 0% reduce 0%
15/07/07 13:24:59 INFO mapreduce.Job: Job job\_1435943097882\_0019 failed with state FAILED due to: Vertex failed, vertexName=initialmap, vertexId=vertex\_1435943097882\_0019\_1\_00, diagnostics=[Task failed, taskId=task\_1435943097882\_0019\_1\_00\_000005, diagnostics=[TaskAttempt 0 failed, info=[Error: Failure while running task:java.io.EOFException
        at java.io.DataInputStream.readFully(DataInputStream.java:197)                                                                                                                                                                                        
        at org.apache.hadoop.io.Text.readWithKnownLength(Text.java:319)
        at org.apache.hadoop.io.Text.readFields(Text.java:291)                                                                                                                                                                                                
        at org.apache.hadoop.io.serializer.WritableSerialization$WritableDeserializer.deserialize(WritableSerialization.java:71)
        at org.apache.hadoop.io.serializer.WritableSerialization$WritableDeserializer.deserialize(WritableSerialization.java:42)                                                                                                                              
        at org.apache.hadoop.mapreduce.task.ReduceContextImpl.nextKeyValue(ReduceContextImpl.java:142)
        at org.apache.hadoop.mapreduce.task.ReduceContextImpl.nextKey(ReduceContextImpl.java:121)                                                                                                                                                             
        at org.apache.hadoop.mapreduce.lib.reduce.WrappedReducer$Context.nextKey(WrappedReducer.java:302)
        at org.apache.hadoop.mapreduce.Reducer.run(Reducer.java:170)                                                                                                                                                                                          
        at org.apache.tez.mapreduce.combine.MRCombiner.runNewCombiner(MRCombiner.java:191)
        at org.apache.tez.mapreduce.combine.MRCombiner.combine(MRCombiner.java:115)                                                                                                                                                                           
        at org.apache.tez.runtime.library.common.sort.impl.ExternalSorter.runCombineProcessor(ExternalSorter.java:285)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.spill(PipelinedSorter.java:463)                                                                                                                                                    
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.sort(PipelinedSorter.java:219)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.collect(PipelinedSorter.java:311)                                                                                                                                                  
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.write(PipelinedSorter.java:267)
        at org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput$1.write(OrderedPartitionedKVOutput.java:164)                                                                                                                                      
        at org.apache.tez.mapreduce.processor.map.MapProcessor$NewOutputCollector.write(MapProcessor.java:363)
        at org.apache.tez.mapreduce.hadoop.mapreduce.TaskInputOutputContextImpl.write(TaskInputOutputContextImpl.java:90)                                                                                                                                     
        at org.apache.hadoop.mapreduce.lib.map.WrappedMapper$Context.write(WrappedMapper.java:112)
        at org.apache.hadoop.examples.WordCount$TokenizerMapper.map(WordCount.java:47)                                                                                                                                                                        
        at org.apache.hadoop.examples.WordCount$TokenizerMapper.map(WordCount.java:36)
        at org.apache.hadoop.mapreduce.Mapper.run(Mapper.java:146)                                                                                                                                                                                            
        at org.apache.tez.mapreduce.processor.map.MapProcessor.runNewMapper(MapProcessor.java:237)
        at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:124)                                                                                                                                                                     
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:345)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:179)                                                                                                                                                         
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:171)
        at java.security.AccessController.doPrivileged(Native Method)                                                                                                                                                                                         
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)                                                                                                                                                               
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:171)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:167)                                                                                                                                                  
        at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)                                                                                                                                                                                           
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)                                                                                                                                                                    
        at java.lang.Thread.run(Thread.java:745)
]], Vertex did not succeed due to OWN\_TASK\_FAILURE, failedTasks:1 killedTasks:89, Vertex vertex\_1435943097882\_0019\_1\_00 [initialmap] killed/failed due to:null]. Vertex killed, vertexName=finalreduce, vertexId=vertex\_1435943097882\_0019\_1\_01, diagnostics=[Vertex received Kill while in RUNNING state., Vertex did not succeed due to OTHER\_VERTEX\_FAILURE, failedTasks:0 killedTasks:15, Vertex vertex\_1435943097882\_0019\_1\_01 [finalreduce] killed/failed due to:null]. DAG did not succeed due to VERTEX\_FAILURE. failedVertices:1 killedVertices:1                                                                                                                                                                                                                                
15/07/07 13:24:59 INFO mapreduce.Job: Counters: 0
{quote}


---

* [TEZ-2600](https://issues.apache.org/jira/browse/TEZ-2600) | *Major* | **When used with HDFS federation(viewfs) ,tez will throw a error**

When I execute the exapmle of tez,orderedwordcount ,Tez throw a error
{code}
java.lang.IllegalArgumentException: Wrong FS: hdfs://SunshineNameNode2/user/wang/tez-0.6.0.tar.gz, expected: viewfs://nsX/
        at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:645)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getUriPath(ViewFileSystem.java:117)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getFileStatus(ViewFileSystem.java:346)
        at org.apache.hadoop.fs.FileSystem.isDirectory(FileSystem.java:1413)
        at org.apache.tez.client.TezClientUtils.getLRFileStatus(TezClientUtils.java:130)
        at org.apache.tez.client.TezClientUtils.setupTezJarsLocalResources(TezClientUtils.java:179)
        at org.apache.tez.client.TezClient.getTezJarResources(TezClient.java:757)
        at org.apache.tez.client.TezClient.submitDAGApplication(TezClient.java:725)
        at org.apache.tez.client.TezClient.submitDAGApplication(TezClient.java:703)
        at org.apache.tez.client.TezClient.submitDAG(TezClient.java:383)
        at org.apache.tez.examples.OrderedWordCount.run(OrderedWordCount.java:208)
        at org.apache.tez.examples.OrderedWordCount.run(OrderedWordCount.java:232)
        at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
        at org.apache.tez.examples.OrderedWordCount.main(OrderedWordCount.java:240)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
        at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:145)
        at org.apache.tez.examples.ExampleDriver.main(ExampleDriver.java:61)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.hadoop.util.RunJar.main(RunJar.java:212)

{code}


---

* [TEZ-2579](https://issues.apache.org/jira/browse/TEZ-2579) | *Major* | **Incorrect comparison of TaskAttemptId**

TaskImpl#AttemptSucceededTransition
{code}
      // issue kill to all other attempts
      for (TaskAttempt attempt : task.attempts.values()) {
        if (attempt.getID() != task.successfulAttempt &&  // should use !equals 
        !attempt.isFinished()) {           // but it won't affect the state machine transition, because the successful task attempt should already complete. 
{code}


---

* [TEZ-2575](https://issues.apache.org/jira/browse/TEZ-2575) | *Major* | **Handle KeyValue pairs size which do not fit in a single block in PipelinedSorter**

In the present implementation, the available buffer is divided into blocks (specified in the constructor for pipeline sort). and a linked list of these block byte buffers is maintained. 
A span is created out of the buffers. 
The present logic, doesnot handle scenario where a single key-value pair size doesnot fit into any of the blocks.
example if 1mb total memory is divided into 4 blocks, (256 kb each),
if a single KV pair is greater than the blocksize(~ignoring meta data size), 
then it fails with buffer exceptions.


---

* [TEZ-2568](https://issues.apache.org/jira/browse/TEZ-2568) | *Blocker* | **V\_INPUT\_DATA\_INFORMATION may happen after vertex is initialized**

{code}
2015-06-19 15:57:28,462 ERROR [Dispatcher thread: Central] impl.VertexImpl: Can't handle Invalid event V\_INPUT\_DATA\_INFORMATION on vertex Map 2 with vertexId vertex\_1434754502979\_0002\_2\_00 at current state INITED
org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_INPUT\_DATA\_INFORMATION at INITED
        at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:305)
        at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
        at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
        at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1799)
        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:198)
        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1963)
        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1949)
        at org.apache.tez.common.AsyncDispatcher.dispatch(AsyncDispatcher.java:183)
        at org.apache.tez.common.AsyncDispatcher$1.run(AsyncDispatcher.java:114)
        at java.lang.Thread.run(Thread.java:722)
{code}

Vertex move to INITED as long as its parallelism is determined, no null edges and root inputs are initialized. RootInputDataInformation handling is not a precondition of vertex move to INITED.   We can't wait for all the V\_INPUT\_DATA\_INFORMATION events available in INITIALIZING state, because it is not know how many V\_INPUT\_DATA\_INFORMATION we may receive, it is determined by VM.  So will allow V\_INPUT\_DATA\_INFORMATION happens when vertex is initialized.


---

* [TEZ-2567](https://issues.apache.org/jira/browse/TEZ-2567) | *Major* | **Tez UI: download dag data does not work within ambari**

downloading of dag data from the ui while using a ambari fails. 
This is due to the fact that $.ajax call does not know how to parse the data as the content-type headers are removed by the ambari proxy (this was a getJSON call later changed to ajax call as we needed to pass the credentials).


---

* [TEZ-2566](https://issues.apache.org/jira/browse/TEZ-2566) | *Major* | **Allow TaskAttemptFinishedEvent without TaskAttemptStartedEvent when it is KILLED/FAILED**

TEZ-2304 allow logging TaskAttempFinishedEvent even without TaskAttemptStartedEvent but don't change the logic in Task#restoreFromEvent.
Task attempt is possible to be KILLED/FAILED before it is started, but not possible to be SUCCEEDED without started.


---

* [TEZ-2561](https://issues.apache.org/jira/browse/TEZ-2561) | *Major* | **Port for TaskAttemptListenerImpTezDag should be configurable**

Noticed sporadic DAG failures in our ec2 test environment.
Tasks failing with that:
{noformat}
2015-06-17 11:19:51,064 INFO [main] impl.MetricsSystemImpl: Scheduled snapshot period at 10 second(s).
2015-06-17 11:19:51,064 INFO [main] impl.MetricsSystemImpl: TezTask metrics system started
2015-06-17 11:19:51,259 INFO [TezChild] task.ContainerReporter: Attempting to fetch new task
2015-06-17 11:20:11,311 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 0 time(s); maxRetries=5
2015-06-17 11:20:31,312 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 1 time(s); maxRetries=5
2015-06-17 11:20:51,313 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 2 time(s); maxRetries=5
2015-06-17 11:21:11,314 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 3 time(s); maxRetries=5
2015-06-17 11:21:31,315 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 4 time(s); maxRetries=5
2015-06-17 11:21:51,317 INFO [main] impl.MetricsSystemImpl: Stopping TezTask metrics system...
2015-06-17 11:21:51,318 INFO [main] impl.MetricsSystemImpl: TezTask metrics system stopped.
2015-06-17 11:21:51,318 INFO [main] impl.MetricsSystemImpl: TezTask metrics system shutdown complete.
{noformat}

From the AppMaster:
{noformat}
Created DAGAppMaster for application appattempt\_1434553606315\_0022\_000001
2015-06-17 11:19:43,655 INFO [Socket Reader #1 for port 60630] ipc.Server: Starting Socket Reader #1 for port 60630
2015-06-17 11:19:43,656 INFO [Socket Reader #1 for port 31001] ipc.Server: Starting Socket Reader #1 for port 31001
2015-06-17 11:19:43,713 WARN [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] conf.Configuration: mapred-site.xml:an attempt to override final parameter: mapreduce.cluster.local.dir;  Ignoring.
{noformat}

[~hitesh] mentioned its likely to be the TaskAttemptListenerImpTezDag which starts on that port. Would be nice if the port(-range) can be configured!!!


---

* [TEZ-2560](https://issues.apache.org/jira/browse/TEZ-2560) | *Major* | **fix tex-ui build for maven 3.3+**

currently tez-ui build fails if mvn version is 3.3 due to the frontend-maven-plugin. this is fixed in 0.0.23 version of the plugin but it fails on maven version below 3.1


---

* [TEZ-2554](https://issues.apache.org/jira/browse/TEZ-2554) | *Major* | **Tez UI: View log link does not correctly propagate login crendential to read log from yarn web.**

Append "user.name=\<am user\>" to the view/download logs url as a query param.

Sample url:
http://address:19888/jobhistory/logs/address:45454/container\_e18\_1434089649193\_0001\_01\_000002/container\_e18\_1434089649193\_0001\_01\_000002/hrt\_qa?user.name=hrt\_qa

Reported by [~tassapola] offline.


---

* [TEZ-2552](https://issues.apache.org/jira/browse/TEZ-2552) | *Major* | **CRC errors can cause job to run for very long time in large jobs**

Ran a fairly large job at 10 TB scale which had 1009 reducers.

One of the machine had bad disk and NM did not delist that disk.  Machine hosting NM has disk issues (sdf & sde holds shuffle data).  exceptions.

{noformat}
Info fld=0x8960894
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 96 08 90 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144050320
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x895a2b9
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 95 a2 b8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144024248
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x895a2b9
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 95 a2 b8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144024248
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x8849edb
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 84 9e d8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 142909144
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x8849edb
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 84 9e d8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 142909144
{noformat}

In-memory fetches start throwing CRC as follows.  

{noformat}
2015-06-11 01:01:03,728 INFO [ShuffleAndMergeRunner [Map\_11]] orderedgrouped.ShuffleScheduler: PendingHosts=[]
2015-06-11 01:01:03,730 INFO [Fetcher [Map\_11] #0] http.HttpConnection: for url=http://cn056-10.l42scl.hortonworks.com:13562/mapOutput?job=job\_1433813751839\_0124&reduce=3&map=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027&keepAlive=true sent hash and receievd reply 0 ms
2015-06-11 01:01:03,730 INFO [Fetcher [Map\_11] #0] orderedgrouped.FetcherOrderedGrouped: fetcher#439 about to shuffle output of map InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=446], attemptNumber=0, pathComponent=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] decomp: 45475 len: 23974 to MEMORY
2015-06-11 01:01:07,206 INFO [Fetcher [Map\_11] #0] impl.IFileInputStream:  CurrentOffset=2510, offset=2510, off=2502, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
2015-06-11 01:01:07,207 INFO [Fetcher [Map\_11] #0] impl.IFileInputStream:  CurrentOffset=2510, offset=2510, off=0, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
2015-06-11 01:01:07,207 WARN [Fetcher [Map\_11] #0] orderedgrouped.FetcherOrderedGrouped: Failed to shuffle output of InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=446], attemptNumber=0, pathComponent=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] from cn056-10.l42scl.hortonworks.com:13562
org.apache.hadoop.fs.ChecksumException: Checksum Error:  CurrentOffset=2510, offset=2510, off=2502, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
	at org.apache.tez.runtime.library.common.sort.impl.IFileInputStream.doRead(IFileInputStream.java:255)
	at org.apache.tez.runtime.library.common.sort.impl.IFileInputStream.read(IFileInputStream.java:185)
	at org.apache.hadoop.io.compress.BlockDecompressorStream.getCompressedData(BlockDecompressorStream.java:127)
	at org.apache.hadoop.io.compress.BlockDecompressorStream.decompress(BlockDecompressorStream.java:98)
	at org.apache.hadoop.io.compress.DecompressorStream.read(DecompressorStream.java:85)
	at org.apache.hadoop.io.IOUtils.readFully(IOUtils.java:192)
	at org.apache.tez.runtime.library.common.sort.impl.IFile$Reader.readToMemory(IFile.java:619)
	at org.apache.tez.runtime.library.common.shuffle.ShuffleUtils.shuffleToMemory(ShuffleUtils.java:113)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.copyMapOutput(FetcherOrderedGrouped.java:471)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.copyFromHost(FetcherOrderedGrouped.java:267)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.fetchNext(FetcherOrderedGrouped.java:164)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.callInternal(FetcherOrderedGrouped.java:177)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.callInternal(FetcherOrderedGrouped.java:52)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{noformat}

TaskAttemptImpl didn't fail it due to the following code

{noformat}
float failureFraction = ((float) attempt.uniquefailedOutputReports.size())
          / outputFailedEvent.getConsumerTaskNumber();
{noformat}

In this case, reducer ran in 180 slot waves.  So even if all 180 tasks report the error, it would be around 180/1009 = 0.17 (which is less than 0.25 MAX\_ALLOWED\_OUTPUT\_FAILURES\_FRACTION) and the job runs for ever (killed the job after 2 hours; normally run in couple of minutes)

In fetcher side, reducer state would be healthy and it would continue to wait.

Env: Tez master & Hive master
Ref: Query\_88 @ 10 TB scale.


---

* [TEZ-2548](https://issues.apache.org/jira/browse/TEZ-2548) | *Major* | **TezClient submitDAG can hang if the AM is in the process of shutting down**

submitDAG and serviceStop are both synchronized causing submitDAG to be locked out during the shutdown process. 

Seen by [~gopalv]


---

* [TEZ-2546](https://issues.apache.org/jira/browse/TEZ-2546) | *Major* | **Tez UI: Fetch hive query text from timeline if dagInfo is not set**

Followup to TEZ-2453, to make UI backward compatible and display hive queries in order versions.


---

* [TEZ-2545](https://issues.apache.org/jira/browse/TEZ-2545) | *Major* | **It is not necessary to start the vertex group commit when DAG is in TERMINATING**

{noformat}
Failed

org.apache.tez.dag.app.dag.impl.TestCommit.testDAGKilledWhileRunning\_OnVertexSuccess

Failing for the past 2 builds (Since Unstable#3372 )
运行时间：5 秒
Error Message

test timed out after 5000 milliseconds
Stacktrace

java.lang.Exception: test timed out after 5000 milliseconds
	at java.lang.Thread.sleep(Native Method)
	at org.apache.tez.dag.app.dag.impl.TestCommit.waitUntil(TestCommit.java:355)
	at org.apache.tez.dag.app.dag.impl.TestCommit.testDAGKilledWhileRunning\_OnVertexSuccess(TestCommit.java:1652)

Standard Output

2015-06-09 04:12:25,778 INFO  [Thread-43] impl.TestCommit (TestCommit.java:createDAGPlan(401)) - Setting up group dag plan
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.CallableEventType for class org.apache.tez.dag.app.dag.impl.CallableEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.TaskEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$TaskEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.TaskAttemptEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$TaskAttemptEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.VertexEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$VertexEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.DAGEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$DagEventDispatcher
2015-06-09 04:12:25,783 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.DAGAppMasterEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$DAGFinishEventHandler
2015-06-09 04:12:25,784 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:setAdditionalOutputs(4497)) - setting additional outputs for vertex vertex2
2015-06-09 04:12:25,784 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:setAdditionalOutputs(4497)) - setting additional outputs for vertex vertex1
2015-06-09 04:12:25,786 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:setAdditionalOutputs(4497)) - setting additional outputs for vertex vertex3
2015-06-09 04:12:25,787 INFO  [Thread-43] impl.DAGImpl (DAGImpl.java:assignDAGScheduler(1488)) - Using DAG Scheduler: org.apache.tez.dag.app.dag.impl.DAGSchedulerNaturalOrder
2015-06-09 04:12:25,788 INFO  [Thread-43] impl.DAGImpl (DAGImpl.java:handle(1100)) - dag\_100\_0001\_1 transitioned from NEW to INITED
2015-06-09 04:12:25,789 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:handle(1100)) - dag\_100\_0001\_1 transitioned from INITED to RUNNING
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:assignVertexManager(2469)) - Setting vertexManager to ImmediateStartVertexManager for vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3246)) - Creating 1 tasks for vertex: vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3258)) - Directly initializing vertex: vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2131)) - Invoking committer inits for vertex, vertexId=vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2143)) - Instantiating committer for output=v12Out, vertexId=vertex\_100\_0001\_1\_01 [vertex1], committerClass=org.apache.tez.dag.app.dag.impl.TestCommit$CountingOutputCommitter
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2161)) - Invoking committer init for output=v12Out, vertexId=vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2165)) - Invoking committer setup for output=v12Out, vertexId=vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_01 [vertex1] transitioned from NEW to INITED due to event V\_INIT
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:assignVertexManager(2469)) - Setting vertexManager to ImmediateStartVertexManager for vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3246)) - Creating 1 tasks for vertex: vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3258)) - Directly initializing vertex: vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2131)) - Invoking committer inits for vertex, vertexId=vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2143)) - Instantiating committer for output=v12Out, vertexId=vertex\_100\_0001\_1\_00 [vertex2], committerClass=org.apache.tez.dag.app.dag.impl.TestCommit$CountingOutputCommitter
2015-06-09 04:12:25,793 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2161)) - Invoking committer init for output=v12Out, vertexId=vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2165)) - Invoking committer setup for output=v12Out, vertexId=vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_00 [vertex2] transitioned from NEW to INITED due to event V\_INIT
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_01 [vertex1] transitioned from INITED to RUNNING due to event V\_START
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_00 [vertex2] transitioned from INITED to RUNNING due to event V\_START
2015-06-09 04:12:25,795 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:assignVertexManager(2462)) - Setting vertexManager to ShuffleVertexManager for vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,823 INFO  [AsyncDispatcher event handler] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:initialize(813)) - Shuffle Vertex Manager: settings minFrac:0.25 maxFrac:0.75 auto:false desiredTaskIput:104857600 minTasks:1
2015-06-09 04:12:25,823 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3246)) - Creating 1 tasks for vertex: vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,826 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3258)) - Directly initializing vertex: vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,826 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2131)) - Invoking committer inits for vertex, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,826 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2143)) - Instantiating committer for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3], committerClass=org.apache.tez.dag.app.dag.impl.TestCommit$CountingOutputCommitter
2015-06-09 04:12:25,827 INFO  [App Shared Pool - #0] impl.ImmediateStartVertexManager (ImmediateStartVertexManager.java:scheduleTasks(99)) - Starting 1 in vertex1
2015-06-09 04:12:25,827 INFO  [App Shared Pool - #1] impl.ImmediateStartVertexManager (ImmediateStartVertexManager.java:scheduleTasks(99)) - Starting 1 in vertex2
2015-06-09 04:12:25,827 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2161)) - Invoking committer init for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,827 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2165)) - Invoking committer setup for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,828 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from NEW to INITED due to event V\_INIT
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3407)) - Source vertex started: vertex\_100\_0001\_1\_01 for vertex: vertex\_100\_0001\_1\_02 [vertex3] numStartedSources: 1 numSources: 2
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3412)) - Cannot start vertex: vertex\_100\_0001\_1\_02 [vertex3] numStartedSources: 1 numSources: 2
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3407)) - Source vertex started: vertex\_100\_0001\_1\_00 for vertex: vertex\_100\_0001\_1\_02 [vertex3] numStartedSources: 2 numSources: 2
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:startIfPossible(3293)) - Triggering start event for vertex: vertex\_100\_0001\_1\_02 [vertex3] with distanceFromRoot: 1
2015-06-09 04:12:25,830 INFO  [AsyncDispatcher event handler] impl.TaskImpl (TaskImpl.java:handle(899)) - task\_100\_0001\_1\_01\_000000 Task Transitioned from NEW to SCHEDULED due to event T\_SCHEDULE
2015-06-09 04:12:25,830 INFO  [AsyncDispatcher event handler] impl.TaskImpl (TaskImpl.java:handle(899)) - task\_100\_0001\_1\_00\_000000 Task Transitioned from NEW to SCHEDULED due to event T\_SCHEDULE
2015-06-09 04:12:25,830 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from INITED to RUNNING due to event V\_START
2015-06-09 04:12:25,831 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:transition(3817)) - Num completed Tasks for vertex\_100\_0001\_1\_01 [vertex1] : 1
2015-06-09 04:12:25,831 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1955)) - Checking tasks for vertex completion for vertex\_100\_0001\_1\_01 [vertex1], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,832 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1983)) - All tasks are succeeded, vertex:vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,832 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_01 [vertex1] transitioned from RUNNING to SUCCEEDED due to event V\_TASK\_COMPLETED
2015-06-09 04:12:25,832 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:transition(1883)) - Vertex vertex\_100\_0001\_1\_01 [vertex1] completed., numCompletedVertices=1, numSuccessfulVertices=1, numFailedVertices=0, numKilledVertices=0, numVertices=3
2015-06-09 04:12:25,834 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:checkVerticesForCompletion(1178)) - Checking vertices for DAG completion, numCompletedVertices=1, numSuccessfulVertices=1, numFailedVertices=0, numKilledVertices=0, numVertices=3, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,833 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:transition(3817)) - Num completed Tasks for vertex\_100\_0001\_1\_00 [vertex2] : 1
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1955)) - Checking tasks for vertex completion for vertex\_100\_0001\_1\_00 [vertex2], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1983)) - All tasks are succeeded, vertex:vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_00 [vertex2] transitioned from RUNNING to SUCCEEDED due to event V\_TASK\_COMPLETED
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:transition(3817)) - Num completed Tasks for vertex\_100\_0001\_1\_02 [vertex3] : 1
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1955)) - Checking tasks for vertex completion for vertex\_100\_0001\_1\_02 [vertex3], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,835 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1983)) - All tasks are succeeded, vertex:vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:commitOrFinish(1907)) - Invoking committer commit for vertex, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from RUNNING to COMMITTING due to event V\_TASK\_COMPLETED
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.DAGImpl (DAGImpl.java:handle(1100)) - dag\_100\_0001\_1 transitioned from RUNNING to TERMINATING
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:25,834 INFO  [App Shared Pool - #1] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:onVertexStarted(467)) - OnVertexStarted vertex: vertex3 with 2 source tasks and 1 pending tasks
2015-06-09 04:12:25,836 INFO  [App Shared Pool - #0] impl.VertexImpl (VertexImpl.java:run(1930)) - Invoking committer commit for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:vertexSucceeded(1943)) - All members of group: uv12 are succeeded. Commiting outputs
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:transition(1883)) - Vertex vertex\_100\_0001\_1\_00 [vertex2] completed., numCompletedVertices=2, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=0, numVertices=3
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:checkVerticesForCompletion(1178)) - Checking vertices for DAG completion, numCompletedVertices=2, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=0, numVertices=3, commitInProgress=1, terminationCause=DAG\_KILL
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3710)) - Vertex received Kill while in COMMITTING state, terminationCause=DAG\_KILL, vertex=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:cancelCommits(3979)) - Canceling commit of output:v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,838 INFO  [App Shared Pool - #2] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:handleVertexStateUpdate(837)) - Received configured notification : CONFIGURED for vertex: vertex1 in vertex: vertex3
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from COMMITTING to TERMINATING due to event V\_TERMINATE
2015-06-09 04:12:25,839 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:commitCompleted(3959)) - Commit failed for output:v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3], java.util.concurrent.CancellationException
	at java.util.concurrent.FutureTask$Sync.innerGet(FutureTask.java:250)
	at java.util.concurrent.FutureTask.get(FutureTask.java:111)
	at com.google.common.util.concurrent.Uninterruptibles.getUninterruptibly(Uninterruptibles.java:132)
	at com.google.common.util.concurrent.Futures$6.run(Futures.java:974)
	at com.google.common.util.concurrent.MoreExecutors$SameThreadExecutorService.execute(MoreExecutors.java:253)
	at com.google.common.util.concurrent.ExecutionList$RunnableExecutorPair.execute(ExecutionList.java:149)
	at com.google.common.util.concurrent.ExecutionList.execute(ExecutionList.java:134)
	at com.google.common.util.concurrent.ListenableFutureTask.done(ListenableFutureTask.java:86)
	at java.util.concurrent.FutureTask$Sync.innerCancel(FutureTask.java:322)
	at java.util.concurrent.FutureTask.cancel(FutureTask.java:104)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.cancelCommits(VertexImpl.java:3980)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.access$5600(VertexImpl.java:199)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$VertexKilledWhileCommittingTransition.transition(VertexImpl.java:3713)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$VertexKilledWhileCommittingTransition.transition(VertexImpl.java:3701)
	at org.apache.hadoop.yarn.state.StateMachineFactory$SingleInternalArc.doTransition(StateMachineFactory.java:362)
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1799)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:198)
	at org.apache.tez.dag.app.dag.impl.TestCommit$VertexEventDispatcher.handle(TestCommit.java:168)
	at org.apache.tez.dag.app.dag.impl.TestCommit$VertexEventDispatcher.handle(TestCommit.java:162)
	at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:175)
	at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:108)
	at java.lang.Thread.run(Thread.java:722)

2015-06-09 04:12:25,839 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:checkCommitsForCompletion(2001)) - Checking commits for vertex completion for vertex\_100\_0001\_1\_02 [vertex3], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=DAG\_KILL
2015-06-09 04:12:25,840 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:finishWithTerminationCause(2038)) - Vertex did not succeed due to DAG\_KILL, failedTasks:0 killedTasks:0
2015-06-09 04:12:25,840 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:abortVertex(3556)) - Invoking committer abort for vertex, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,840 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(3563)) - Invoking committer abort for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,841 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from TERMINATING to KILLED due to event V\_COMMIT\_COMPLETED
2015-06-09 04:12:25,842 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:transition(1883)) - Vertex vertex\_100\_0001\_1\_02 [vertex3] completed., numCompletedVertices=3, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=1, numVertices=3
2015-06-09 04:12:25,842 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:checkVerticesForCompletion(1178)) - Checking vertices for DAG completion, numCompletedVertices=3, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=1, numVertices=3, commitInProgress=1, terminationCause=DAG\_KILL
2015-06-09 04:12:25,838 INFO  [App Shared Pool - #3] impl.DAGImpl (DAGImpl.java:call(1971)) - Committing output: v12Out
2015-06-09 04:12:25,840 INFO  [App Shared Pool - #0] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:handleVertexStateUpdate(837)) - Received configured notification : CONFIGURED for vertex: vertex2 in vertex: vertex3
2015-06-09 04:12:25,936 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:25,943 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,039 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,044 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,141 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,144 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,242 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,245 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,342 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,345 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,443 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,446 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,544 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,547 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,644 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,647 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,745 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,749 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,846 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,849 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,947 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,950 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,048 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,050 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,148 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,151 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,249 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,252 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,349 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,353 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,450 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,454 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,550 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,555 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,651 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,656 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,752 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,757 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,852 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,857 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,953 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,958 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,053 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,058 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,155 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,159 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,256 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,259 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,356 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,360 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,457 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,462 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,557 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,562 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,658 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,663 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,759 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,763 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,859 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,864 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,960 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,966 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,061 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,067 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,162 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,168 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,262 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,268 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,363 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,369 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,464 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,469 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,565 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,570 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,666 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,671 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,766 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,771 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,869 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,872 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,970 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,972 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,072 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,073 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,173 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,174 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,274 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,275 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,376 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,376 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,476 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,476 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,577 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,577 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,678 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,679 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,786 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,808 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,815 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
Standard Error

java.lang.InterruptedException: sleep interrupted
	at java.lang.Thread.sleep(Native Method)
	at org.apache.tez.dag.app.dag.impl.TestCommit.waitUntil(TestCommit.java:355)
	at org.apache.tez.dag.app.dag.impl.TestCommit.testDAGKilledWhileRunning\_OnVertexSuccess(TestCommit.java:1652)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:601)
	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:47)
	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)
	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:44)
	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:17)
	at org.junit.internal.runners.statements.FailOnTimeout$StatementThread.run(FailOnTimeout.java:74)
{noformat}


---

* [TEZ-2540](https://issues.apache.org/jira/browse/TEZ-2540) | *Major* | **Create both tez-dist minimal and minimal.tar.gz formats as part of build**

the full builds create both directory and corresponding tar.gz. this change would have the minimal build do the same.


---

* [TEZ-2534](https://issues.apache.org/jira/browse/TEZ-2534) | *Major* | **Error handling summary event when shutting down AM**

When AM is shutting down, it will close the summary stream, but there may be still some events in the queue which will cause exception when handling summary event. And this would cause the next AM fail to recover the running dag. 
One way to resolve this issue is to always drain the events in the queue before closing the summary stream (set drainEventsFlag as true), but this flag may be useful in unit test. 
{noformat}
2015-06-03 16:37:15,761 INFO [Thread-1] app.DAGAppMaster: DAGAppMasterShutdownHook invoked
2015-06-03 16:37:15,761 INFO [Thread-1] app.DAGAppMaster: DAGAppMaster received a signal. Signaling TaskScheduler
2015-06-03 16:37:15,761 INFO [Thread-1] rm.TaskSchedulerEventHandler: TaskScheduler notified that iSignalled was : true
2015-06-03 16:37:15,762 INFO [Thread-1] history.HistoryEventHandler: Stopping HistoryEventHandler
2015-06-03 16:37:15,762 INFO [Thread-1] recovery.RecoveryService: Stopping RecoveryService
2015-06-03 16:37:15,762 INFO [Thread-1] recovery.RecoveryService: Closing Summary Stream
2015-06-03 16:37:15,772 INFO [Thread-1] recovery.RecoveryService: Closing Output Stream for DAG dag\_1433320263267\_0019\_1
2015-06-03 16:37:15,773 ERROR [Dispatcher thread: Central] recovery.RecoveryService: Error handling summary event, eventType=VERTEX\_FINISHED
java.nio.channels.ClosedChannelException
	at org.apache.hadoop.hdfs.DFSOutputStream.checkClosed(DFSOutputStream.java:1622)
	at org.apache.hadoop.fs.FSOutputSummer.write(FSOutputSummer.java:104)
	at org.apache.hadoop.fs.FSDataOutputStream$PositionCache.write(FSDataOutputStream.java:58)
	at java.io.DataOutputStream.write(DataOutputStream.java:107)
	at com.google.protobuf.CodedOutputStream.refreshBuffer(CodedOutputStream.java:833)
	at com.google.protobuf.CodedOutputStream.flush(CodedOutputStream.java:843)
	at com.google.protobuf.AbstractMessageLite.writeDelimitedTo(AbstractMessageLite.java:91)
	at org.apache.tez.dag.history.events.VertexFinishedEvent.toSummaryProtoStream(VertexFinishedEvent.java:207)
	at org.apache.tez.dag.history.recovery.RecoveryService.handleSummaryEvent(RecoveryService.java:373)
	at org.apache.tez.dag.history.recovery.RecoveryService.handle(RecoveryService.java:285)
	at org.apache.tez.dag.history.HistoryEventHandler.handleCriticalEvent(HistoryEventHandler.java:105)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.logJobHistoryVertexCompletedHelper(VertexImpl.java:1890)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.logJobHistoryVertexFinishedEvent(VertexImpl.java:1869)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.finished(VertexImpl.java:2107)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.finished(VertexImpl.java:2125)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.checkTasksForCompletion(VertexImpl.java:1989)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$TaskCompletedTransition.transition(VertexImpl.java:3833)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$TaskCompletedTransition.transition(VertexImpl.java:1)
	at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:385)
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1799)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1954)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1)
	at org.apache.tez.common.AsyncDispatcher.dispatch(AsyncDispatcher.java:183)
	at org.apache.tez.common.AsyncDispatcher$1.run(AsyncDispatcher.java:114)
	at java.lang.Thread.run(Thread.java:745)
2015-06-03 16:37:15,775 ERROR [Dispatcher thread: Central] recovery.RecoveryService: Adding a flag to ensure next AM attempt does not start up, flagFile=hdfs://localhost:58857/tmp/owc-staging-dir/.tez/application\_1433320263267\_0019/recovery/1/RecoveryFatalErrorOccurred
2015-06-03 16:37:15,781 ERROR [Dispatcher thread: Central] recovery.RecoveryService: Recovery failure occurred. Skipping all events
2015-06-03 16:37:15,781 INFO [HistoryEventHandlingThread] impl.SimpleHistoryLoggingService: Writing event VERTEX\_FINISHED to history file
{noformat}


---

* [TEZ-2533](https://issues.apache.org/jira/browse/TEZ-2533) | *Major* | **AM deadlock when shutdown**

AM is shutdown due to AM\_REBOOT signal
{noformat}
2015-06-03 15:44:25,637 INFO [Dispatcher thread: Central] app.DAGAppMaster: Received an AM\_REBOOT signal
2015-06-03 15:44:25,637 INFO [Dispatcher thread: Central] app.DAGAppMaster: DAGAppMasterShutdownHandler invoked
2015-06-03 15:44:25,637 INFO [Dispatcher thread: Central] app.DAGAppMaster: Handling DAGAppMaster shutdown
2015-06-03 15:44:25,639 INFO [AMShutdownThread] app.DAGAppMaster: Calling stop for all the services
2015-06-03 15:44:25,640 INFO [AMShutdownThread] history.HistoryEventHandler: Stopping HistoryEventHandler
2015-06-03 15:44:25,640 INFO [AMShutdownThread] recovery.RecoveryService: Stopping RecoveryService
2015-06-03 15:44:25,640 INFO [AMShutdownThread] recovery.RecoveryService: Handle the remaining events in queue, queue size=0
2015-06-03 15:44:25,640 INFO [RecoveryEventHandlingThread] recovery.RecoveryService: EventQueue take interrupted. Returning
{noformat}
Then AM is failed to shutdown 
{noformat}
2015-06-03 15:44:25,814 WARN [AMShutdownThread] app.DAGAppMaster: Graceful stop failed
{noformat}
And at the same time AM shutdown hook is invoked and hang there, wait for lock of DAGAppMaster#shutdownHandlerRunning
{noformat}
2015-06-03 15:44:25,818 INFO [Thread-1] app.DAGAppMaster: DAGAppMasterShutdownHook invoked
2015-06-03 15:44:25,818 INFO [Thread-1] app.DAGAppMaster: The shutdown handler is still running, waiting for it to complete
{noformat}


---

* [TEZ-2523](https://issues.apache.org/jira/browse/TEZ-2523) | *Major* | **Tez UI: derive applicationId from dag/vertex id instead of relying on json data**

currently the applicationId for the models dag/vertex is picked up from primary filter data for the dag/vertex json. deriving this from the dagid/vertexid on the models has the below benefits.
\* ensures applicationId is not null (in some corner cases this causes exception in store.find)
\* makes the ui backward compatible (0.5).
\* allows to remove the appid from primary filter (TEZ-2485)


---

* [TEZ-2513](https://issues.apache.org/jira/browse/TEZ-2513) | *Major* | **Tez UI: Allow filtering by DAG ID on All dags table**

On using the filter display the record with the specific id, if not available display a No Records found message.


---

* [TEZ-2511](https://issues.apache.org/jira/browse/TEZ-2511) | *Major* | **Add exitCode to diagnostics when container fails**

Currently we only identify the container failure cause for PREEMPTED / DISKS\_FAILED, that means except for these 2 cases, there would be no clear diagnostic message for other cases. 

{code}
      String message = "Container completed. ";
      TaskAttemptTerminationCause errCause = TaskAttemptTerminationCause.CONTAINER\_EXITED;
      int exitStatus = containerStatus.getExitStatus();
      if (exitStatus == ContainerExitStatus.PREEMPTED) {
        message = "Container preempted externally. ";
        errCause = TaskAttemptTerminationCause.EXTERNAL\_PREEMPTION;
      } else if (exitStatus == ContainerExitStatus.DISKS\_FAILED) {
        message = "Container disk failed. ";
        errCause = TaskAttemptTerminationCause.NODE\_DISK\_ERROR;
      } else if (exitStatus != ContainerExitStatus.SUCCESS){
        message = "Container failed. ";
      }
      if (containerStatus.getDiagnostics() != null) {
        message += containerStatus.getDiagnostics();
      }
      sendEvent(new AMContainerEventCompleted(amContainer.getContainerId(), exitStatus, message, errCause));
{code}


---

* [TEZ-2509](https://issues.apache.org/jira/browse/TEZ-2509) | *Major* | **YarnTaskSchedulerService should not try to allocate containers if AM is shutting down**

Observed when doing some recovery testing: 

Failure as during dag shutdown, 4 attempts of the same task failed. 

{code}
2015-06-01 07:38:27,184 INFO [Dispatcher thread: Central] history.HistoryEventHandler: [HISTORY][DAG:dag\_1433141118424\_0012\_2][Event:TASK\_FINISHED]: vertexName=initialmap, taskId=task\_1433141118424\_0012\_2\_00\_000003, startTime=1433144297281, finishTime=1433144307184, timeTaken=9903, status=FAILED, successfulAttemptID=null, diagnostics=TaskAttempt 0 failed, info=[Container container\_e02\_1433141118424\_0012\_01\_000018 hit an invalid transition - C\_NM\_STOP\_SENT at RUNNING]
TaskAttempt 1 failed, info=[AttemptId: attempt\_1433141118424\_0012\_2\_00\_000003\_1 cannot be allocated to container: container\_e02\_1433141118424\_0012\_01\_000011 in STOP\_REQUESTED state]
TaskAttempt 2 failed, info=[Container container\_e02\_1433141118424\_0012\_01\_000012 hit an invalid transition - C\_NM\_STOP\_SENT at RUNNING]
TaskAttempt 3 failed, info=[Container container\_e02\_1433141118424\_0012\_01\_000025 hit an invalid transition - C\_NM\_STOP\_SENT at RUNNING], counters=Counters: 0
{code}
  

DAG kill signal received.
{code}
2015-06-01 07:38:25,811 INFO [Thread-3] app.DAGAppMaster: DAGAppMasterShutdownHook invoked
2015-06-01 07:38:25,811 INFO [Thread-3] app.DAGAppMaster: DAGAppMaster received a signal. Signaling TaskScheduler
{code}

First attempt marked as failed as container was killed.
{code}
2015-06-01 07:38:26,906 INFO [Dispatcher thread: Central] history.HistoryEventHandler: [HISTORY][DAG:dag\_1433141118424\_0012\_2][Event:TASK\_ATTEMPT\_FINISHED]: vertexName=initialmap, taskAttemptId=attempt\_1433141118424\_0012\_2\_00\_000003\_0, startTime=1433144297281, finishTime=1433144306904, timeTaken=9623, status=FAILED, errorEnum=FRAMEWORK\_ERROR, diagnostics=Container container\_e02\_1433141118424\_0012\_01\_000018 hit an invalid transition - C\_NM\_STOP\_SENT at RUNNING, counters=Counters: 0
{code}

Subsequent attempt scheduled, assigned and eventually fails. 
{code}
2015-06-01 07:38:26,919 INFO [DelayedContainerManager] rm.YarnTaskSchedulerService: Assigning container to task, container=Container: [ContainerId: container\_e02\_1433141118424\_0012\_01\_000011, NodeId: ip-172-31-18-41.ec2.internal:45454, NodeHttpAddress: ip-172-31-18-41.ec2.internal:8042, Resource: \<memory:1536, vCores:1\>, Priority: 2, Token: Token { kind: ContainerToken, service: 172.31.18.41:45454 }, ], task=attempt\_1433141118424\_0012\_2\_00\_000003\_1, containerHost=ip-172-31, localityMatchType=NodeLocal, matchedLocation=ip-172-31-18-41.ec2.internal, honorLocalityFlags=true, reusedContainer=true, delayedContainers=4, containerResourceMemory=1536, containerResourceVCores=1
{code}

Scheduler stops too late.
{code}
2015-06-01 07:38:27,403 DEBUG [Thread-3] service.AbstractService: Service: org.apache.tez.dag.app.rm.YarnTaskSchedulerService entered state STOPPED
{code}


---

* [TEZ-2505](https://issues.apache.org/jira/browse/TEZ-2505) | *Major* | **PipelinedSorter uses Comparator objects concurrently from multiple threads**

When attempting to run the same multi-DAG application (that worked fine under the same environment except Cascading-3.0.0-wip-115 and tez 0.6.1), one of the early, and simplest DAG crashes on the PipelinedSorter.

The stack at the crash site looks like:
{code}
2015-05-28 11:52:47,120 ERROR [TezChild] element.TrapHandler: caught Throwable, no trap available, rethrowing
cascading.CascadingException: unable to compare stream elements in position: 0
        at cascading.tuple.hadoop.util.DeserializerComparator.compareTuples(DeserializerComparator.java:164)
        at cascading.tuple.hadoop.util.TupleComparator.compare(TupleComparator.java:38)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SortSpan.compareKeys(PipelinedSorter.java:669)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SortSpan.compare(PipelinedSorter.java:684)
        at org.apache.hadoop.util.QuickSort.sortInternal(QuickSort.java:99)
        at org.apache.hadoop.util.QuickSort.sort(QuickSort.java:63)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SortSpan.sort(PipelinedSorter.java:631)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.sort(PipelinedSorter.java:230)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.collect(PipelinedSorter.java:311)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.write(PipelinedSorter.java:272)
        at org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput$1.write(OrderedPartitionedKVOutput.java:164)
        at cascading.flow.tez.stream.element.OldOutputCollector.collect(OldOutputCollector.java:51)
        at cascading.tap.hadoop.util.MeasuredOutputCollector.collect(MeasuredOutputCollector.java:69)
        at cascading.flow.tez.stream.element.TezCoGroupGate.wrapGroupingAndCollect(TezCoGroupGate.java:193)
        at cascading.flow.hadoop.stream.HadoopGroupGate.receive(HadoopGroupGate.java:103)
        at cascading.flow.hadoop.stream.HadoopGroupGate.receive(HadoopGroupGate.java:45)
        at cascading.flow.stream.element.FunctionEachStage$1.collect(FunctionEachStage.java:81)
        at cascading.tuple.TupleEntryCollector.safeCollect(TupleEntryCollector.java:145)
        at cascading.tuple.TupleEntryCollector.add(TupleEntryCollector.java:133)
        at com.twitter.scalding.FlatMapFunction$$anonfun$operate$2.apply(Operations.scala:49)
        at com.twitter.scalding.FlatMapFunction$$anonfun$operate$2.apply(Operations.scala:47)
        at scala.collection.Iterator$class.foreach(Iterator.scala:750)
        at scala.collection.AbstractIterator.foreach(Iterator.scala:1202)
        at com.twitter.scalding.FlatMapFunction.operate(Operations.scala:47)
        at cascading.flow.stream.element.FunctionEachStage.receive(FunctionEachStage.java:100)
        at cascading.flow.stream.element.FunctionEachStage.receive(FunctionEachStage.java:40)
        at cascading.flow.stream.element.FunctionEachStage$1.collect(FunctionEachStage.java:81)
        at cascading.tuple.TupleEntryCollector.safeCollect(TupleEntryCollector.java:145)
        at cascading.tuple.TupleEntryCollector.add(TupleEntryCollector.java:133)
        at com.twitter.scalding.MapFunction.operate(Operations.scala:60)
        at cascading.flow.stream.element.FunctionEachStage.receive(FunctionEachStage.java:100)
        at cascading.flow.stream.element.FunctionEachStage.receive(FunctionEachStage.java:40)
        at cascading.flow.stream.element.FunctionEachStage$1.collect(FunctionEachStage.java:81)
        at cascading.tuple.TupleEntryCollector.safeCollect(TupleEntryCollector.java:145)
        at cascading.tuple.TupleEntryCollector.add(TupleEntryCollector.java:133)
        at cascading.operation.Identity$1.operate(Identity.java:124)
        at cascading.operation.Identity.operate(Identity.java:150)
        at cascading.flow.stream.element.FunctionEachStage.receive(FunctionEachStage.java:100)
        at cascading.flow.stream.element.FunctionEachStage.receive(FunctionEachStage.java:40)
        at cascading.flow.stream.element.SourceStage.map(SourceStage.java:110)
        at cascading.flow.stream.element.SourceStage.run(SourceStage.java:66)
        at cascading.flow.tez.stream.element.TezSourceStage.run(TezSourceStage.java:95)
        at cascading.flow.tez.FlowProcessor.run(FlowProcessor.java:165)
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:337)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:179)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:171)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1628)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:171)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:167)
        at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
Caused by: cascading.CascadingException: unable to read element from underlying stream
        at cascading.tuple.hadoop.util.TupleElementComparator.compare(TupleElementComparator.java:82)
        at cascading.tuple.hadoop.util.TupleElementComparator.compare(TupleElementComparator.java:33)
        at cascading.tuple.hadoop.util.DeserializerComparator.compareTuples(DeserializerComparator.java:160)
        ... 55 more
Caused by: java.io.EOFException
        at java.io.DataInputStream.readFully(DataInputStream.java:197)
        at java.io.DataInputStream.readFully(DataInputStream.java:169)
        at org.apache.hadoop.io.WritableUtils.readString(WritableUtils.java:125)
        at cascading.tuple.hadoop.io.HadoopTupleInputStream.readString(HadoopTupleInputStream.java:75)
        at cascading.tuple.hadoop.io.HadoopTupleInputStream.readType(HadoopTupleInputStream.java:85)
        at cascading.tuple.hadoop.io.HadoopTupleInputStream.getNextElement(HadoopTupleInputStream.java:52)
        at cascading.tuple.hadoop.util.TupleElementComparator.compare(TupleElementComparator.java:77)
        ... 57 more
{code}

with an apparently random variation at the top of stack which is
{code}
2015-05-28 13:10:13,459 ERROR [TezChild] element.TrapHandler: caught Throwable, no trap available, rethrowing
cascading.CascadingException: java.io.EOFException
        at cascading.tuple.hadoop.util.TupleComparator.compare(TupleComparator.java:42)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SortSpan.compareKeys(PipelinedSorter.java:669)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SortSpan.compare(PipelinedSorter.java:684)
        at org.apache.hadoop.util.QuickSort.sortInternal(QuickSort.java:99)
        at org.apache.hadoop.util.QuickSort.sort(QuickSort.java:63)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SortSpan.sort(PipelinedSorter.java:631)
{code}

all running TezChildren fail with the same stacks (either variant) at the same time on the same node, which is straight off a HDFS-backed CSV file.

The cascading.tuple.hadoop.util.TupleComparator#compare code at the top of stack has been in use in a MAPREDUCE context for over 2.5 years; first analysis with [~cwensel] (who successfully reproduced the issue without scalding) points towards an issue on tez side.

as a workaround, it is possible to run with {code:scala}"tez.runtime.sorter.class" -\> "LEGACY"{code}, but this is impractical in the long run.


---

* [TEZ-2489](https://issues.apache.org/jira/browse/TEZ-2489) | *Major* | **Disable warn log for Timeline ACL error when tez.allow.disabled.timeline-domains set to true**

15/05/26 22:57:38 WARN client.TezClient: Could not instantiate object for org.apache.tez.dag.history.ats.acls.ATSHistoryACLPolicyManager. ACLs cannot be enforced correctly for history data in Timeline
org.apache.tez.dag.api.TezUncheckedException: Unable to load class: org.apache.tez.dag.history.ats.acls.ATSHistoryACLPolicyManager
       at org.apache.tez.common.ReflectionUtils.getClazz(ReflectionUtils.java:45)
       at org.apache.tez.common.ReflectionUtils.createClazzInstance(ReflectionUtils.java:88)
       at org.apache.tez.client.TezClient.start(TezClient.java:317)
       at cascading.flow.tez.planner.Hadoop2TezFlowStepJob.internalNonBlockingStart(Hadoop2TezFlowStepJob.java:137)
       at cascading.flow.planner.FlowStepJob.blockOnJob(FlowStepJob.java:248)
       at cascading.flow.planner.FlowStepJob.start(FlowStepJob.java:172)
       at cascading.flow.planner.FlowStepJob.call(FlowStepJob.java:134)
       at cascading.flow.planner.FlowStepJob.call(FlowStepJob.java:45)
       at java.util.concurrent.FutureTask.run(FutureTask.java:262)
       at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
       at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
       at java.lang.Thread.run(Thread.java:745)
Caused by: java.lang.ClassNotFoundException: org.apache.tez.dag.history.ats.acls.ATSHistoryACLPolicyManager
       at java.net.URLClassLoader$1.run(URLClassLoader.java:366)
       at java.net.URLClassLoader$1.run(URLClassLoader.java:355)

Reported by @chris wensel


---

* [TEZ-2483](https://issues.apache.org/jira/browse/TEZ-2483) | *Major* | **Tez should close task if processor fail**

The symptom is if PigProcessor fail, MRInput is not closed. On Windows, this creates a problem since Pig client cannot remove the input file.

In general, if a task fail, Tez shall close all input/output handles in cleanup. MROutput is closed in MROutput.abort() which Pig invokes explicitly right now. Attach a demo patch.


---

* [TEZ-2482](https://issues.apache.org/jira/browse/TEZ-2482) | *Major* | **Tez UI: Mouse events not working on IE11**

In IE 11 mouse events are not delivered to the page anymore at all after a SVG use element which has was under the mouse is removed - https://connect.microsoft.com/IE/feedback/details/796745

this affects IE on win7 and win2012 r2


---

* [TEZ-2481](https://issues.apache.org/jira/browse/TEZ-2481) | *Major* | **Tez UI: graphical view does not render properly on IE11**

The issue was because of IE's poor/broken support of css in SVG.
# IE doesn't support transform in css like other browsers. This caused the bubbles in a vertex to appear at the origin - https://connect.microsoft.com/IE/feedbackdetail/view/920928
# IE have a broken support for the marker(Arrow on the path). This was causing the links/paths to disappear - https://connect.microsoft.com/IE/feedback/details/801938


---

* [TEZ-2475](https://issues.apache.org/jira/browse/TEZ-2475) | *Major* | **Tez local mode hanging in big testsuite**

we have a big test suite for lingual, our SQL layer for cascading. We are trying very hard to make it work correctly on Tez, but I am stuck:

The setup is a huge suite of SQL based tests (6000+), which are being executed in order in local mode. At certain moments the whole process just stops. Nothing gets executed any longer. This is not all the time, but quite often. Note that it is not happening at the same line of code, more at random, which makes it quite complex to debug.

What I am seeing, is these kind of stacktraces in the middle of the run:

2015-05-21 16:07:42,413 ERROR [TaskHeartbeatThread] task.TezTaskRunner (TezTaskRunner.java:reportError(333)) - TaskReporter reported error
    java.lang.InterruptedException
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.reportInterruptAfterWait(AbstractQueuedSynchronizer.java:2017)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2188)
        at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.call(TaskReporter.java:187)
        at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.call(TaskReporter.java:118)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)

This looks like it could be related to the hang, but the hang is not happening immediately afterwards, but some time later.

I have gone through quite a few JIRAs and saw that there were problems with locks and hanging threads before, which should be fixed, but it still happens.

I have tried 0.6.1 and 0.7.0. Both show the same behaviour.

This gist contains a thread dump of a hanging build: https://gist.github.com/fs111/1ee44469bf5cc31e5a52


---

* [TEZ-2474](https://issues.apache.org/jira/browse/TEZ-2474) | *Minor* | **The old taskNum is logged incorrectly when parallelism is changed**

{noformat}
2015-05-21 15:04:33,103 INFO [App Shared Pool - #0] impl.VertexImpl: Vertex vertex\_1431910485566\_0017\_1\_02 [reduce] parallelism set to 1 from 1
{noformat}


---

* [TEZ-2460](https://issues.apache.org/jira/browse/TEZ-2460) | *Major* | **Temporary solution for issue due to YARN-2560**

Due to YARN-2560, DAGClient can't get the correct diagnostics, this jira is to make a temporary solution for it before YARN-2560 is resolved.  Here's one example that dag is failed due to version incompatible.
{noformat}
15/05/18 17:34:18 INFO client.TezClient: Tez Client Version: [ component=tez-api, version=0.7.0.2.3.0.0-1986, revision=7a048b526519e53de5d6464493697e92b15718fc, SCM-URL=scm:git:https://git-wip-us.apache.org/repos/asf/tez.git, buildTime=20150514-0857 ]
15/05/18 17:34:19 INFO impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
15/05/18 17:34:19 INFO client.RMProxy: Connecting to ResourceManager at c6402.ambari.apache.org/192.168.64.102:8050
15/05/18 17:34:19 INFO client.TezClient: Using org.apache.tez.dag.history.ats.acls.ATSHistoryACLPolicyManager to manage Timeline ACLs
15/05/18 17:34:19 INFO impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
15/05/18 17:34:21 INFO examples.OrderedWordCount: Running OrderedWordCount
15/05/18 17:34:21 INFO client.TezClient: Submitting DAG application with id: application\_1431967480765\_0017
15/05/18 17:34:21 INFO client.TezClientUtils: Using tez.lib.uris value from configuration: /hdp/apps/2.3.0.0-1986/tez/tez.tar.gz
15/05/18 17:34:21 INFO client.TezClient: Tez system stage directory hdfs://c1ha/tmp/ambari-qa/staging/.tez/application\_1431967480765\_0017 doesn't exist and is created
15/05/18 17:34:21 INFO acls.ATSHistoryACLPolicyManager: Created Timeline Domain for History ACLs, domainId=Tez\_ATS\_application\_1431967480765\_0017
15/05/18 17:34:22 INFO client.TezClient: Submitting DAG to YARN, applicationId=application\_1431967480765\_0017, dagName=OrderedWordCount
15/05/18 17:34:22 INFO impl.YarnClientImpl: Submitted application application\_1431967480765\_0017
15/05/18 17:34:22 INFO client.TezClient: The url to track the Tez AM: http://c6402.ambari.apache.org:8088/proxy/application\_1431967480765\_0017/
15/05/18 17:34:22 INFO impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
15/05/18 17:34:22 INFO client.RMProxy: Connecting to ResourceManager at c6402.ambari.apache.org/192.168.64.102:8050
15/05/18 17:34:22 INFO client.DAGClientImpl: Waiting for DAG to start running
15/05/18 17:34:34 INFO client.DAGClientImpl: DAG initialized: CurrentState=Running
15/05/18 17:34:38 INFO client.DAGClientImpl: DAG completed. FinalState=FAILED
15/05/18 17:34:38 INFO examples.OrderedWordCount: DAG diagnostics: []
{noformat}

{noformat}
2015-05-18 16:57:46,807 INFO [main] app.DAGAppMaster: Created DAGAppMaster for application appattempt\_1431967480765\_0008\_000001, versionInfo=[ component=tez-dag, version=0.5.2.2.2.3.0-2611, revision=2d3c6b639d5b1048bd20aad5736823a35edd2485, SCM-URL=scm:git:https://git-wip-us.apache.org/repos/asf/tez.git, buildTIme=20150314-1805 ]
2015-05-18 16:57:47,931 INFO [main] app.DAGAppMaster: Comparing client version with AM version, clientVersion=0.7.0.2.3.0.0-1986, AMVersion=0.5.2.2.2.3.0-2611
2015-05-18 16:57:47,932 FATAL [main] app.DAGAppMaster: Incompatible versions found, clientVersion=0.7.0.2.3.0.0-1986, AMVersion=0.5.2.2.2.3.0-2611
2015-05-18 16:57:49,348 INFO [main] app.DAGAppMaster: Adding session token to jobTokenSecretManager for application
2015-05-18 16:57:49,354 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.container.AMContainerEventType for class org.apache.tez.dag.app.rm.container.AMContainerMap
2015-05-18 16:57:49,355 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.node.AMNodeEventType for class org.apache.tez.dag.app.rm.node.AMNodeTracker
2015-05-18 16:57:49,356 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.DAGAppMasterEventType for class org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterEventHandler
2015-05-18 16:57:49,356 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.DAGEventType for class org.apache.tez.dag.app.DAGAppMaster$DagEventDispatcher
2015-05-18 16:57:49,357 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.VertexEventType for class org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher
2015-05-18 16:57:49,358 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.TaskEventType for class org.apache.tez.dag.app.DAGAppMaster$TaskEventDispatcher
2015-05-18 16:57:49,358 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.TaskAttemptEventType for class org.apache.tez.dag.app.DAGAppMaster$TaskAttemptEventDispatcher
2015-05-18 16:57:49,391 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.AMSchedulerEventType for class org.apache.tez.dag.app.rm.TaskSchedulerEventHandler
2015-05-18 16:57:49,394 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.NMCommunicatorEventType for class org.apache.tez.dag.app.launcher.ContainerLauncherImpl
2015-05-18 16:57:49,397 INFO [main] node.AMNodeTracker: blacklistDisablePercent is 33, blacklistingEnabled: true, maxTaskFailuresPerNode: 10
2015-05-18 16:57:49,397 ERROR [main] web.WebUIService: Tez UI History URL is not set
2015-05-18 16:57:49,398 INFO [main] launcher.ContainerLauncherImpl: Upper limit on the thread pool size is 500
2015-05-18 16:57:49,398 INFO [main] history.HistoryEventHandler: Initializing HistoryEventHandler
2015-05-18 16:57:49,407 INFO [main] ats.ATSHistoryLoggingService: Initializing ATSService
2015-05-18 16:57:50,051 INFO [main] impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
2015-05-18 16:57:50,054 INFO [main] recovery.RecoveryService: Initializing RecoveryService
2015-05-18 16:57:50,089 INFO [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] history.HistoryEventHandler: Starting HistoryEventHandler
2015-05-18 16:57:50,089 INFO [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] ats.ATSHistoryLoggingService: Starting ATSService
2015-05-18 16:57:50,091 INFO [ServiceThread:org.apache.tez.dag.app.launcher.ContainerLauncherImpl] impl.ContainerManagementProtocolProxy: yarn.client.max-cached-nodemanagers-proxies : 0
2015-05-18 16:57:50,103 INFO [ServiceThread:org.apache.tez.dag.app.TaskAttemptListenerImpTezDag] ipc.CallQueueManager: Using callQueue class java.util.concurrent.LinkedBlockingQueue
2015-05-18 16:57:50,105 INFO [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] recovery.RecoveryService: Starting RecoveryService
2015-05-18 16:57:50,108 INFO [ServiceThread:DAGClientRPCServer] ipc.CallQueueManager: Using callQueue class java.util.concurrent.LinkedBlockingQueue
2015-05-18 16:57:50,123 INFO [Socket Reader #1 for port 53947] ipc.Server: Starting Socket Reader #1 for port 53947
2015-05-18 16:57:50,140 INFO [Socket Reader #1 for port 53906] ipc.Server: Starting Socket Reader #1 for port 53906
2015-05-18 16:57:50,178 INFO [IPC Server listener on 53906] ipc.Server: IPC Server listener on 53906: starting
2015-05-18 16:57:50,178 INFO [ServiceThread:DAGClientRPCServer] client.DAGClientServer: Instantiated DAGClientRPCServer at c6403.ambari.apache.org/192.168.64.103:53906
2015-05-18 16:57:50,178 INFO [IPC Server Responder] ipc.Server: IPC Server Responder: starting
2015-05-18 16:57:50,186 INFO [IPC Server Responder] ipc.Server: IPC Server Responder: starting
2015-05-18 16:57:50,186 INFO [IPC Server listener on 53947] ipc.Server: IPC Server listener on 53947: starting
2015-05-18 16:57:50,235 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: Logging to org.slf4j.impl.Log4jLoggerAdapter(org.mortbay.log) via org.mortbay.log.Slf4jLog
2015-05-18 16:57:50,239 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpRequestLog: Http request log for http.requests. is not defined
2015-05-18 16:57:50,249 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Added global filter 'safety' (class=org.apache.hadoop.http.HttpServer2$QuotingInputFilter)
2015-05-18 16:57:50,254 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Added filter AM\_PROXY\_FILTER (class=org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter) to context 
2015-05-18 16:57:50,254 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Added filter AM\_PROXY\_FILTER (class=org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter) to context static
2015-05-18 16:57:50,257 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: adding path spec: /\*
2015-05-18 16:57:50,276 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Jetty bound to port 39924
2015-05-18 16:57:50,276 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: jetty-6.1.26.hwx
2015-05-18 16:57:50,325 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: Extract jar:file:/hadoop/yarn/local/filecache/15/tez.tar.gz/lib/hadoop-yarn-common-2.6.0.2.2.3.0-2611.jar!/webapps/ to /tmp/Jetty\_0\_0\_0\_0\_39924\_webapps\_\_\_\_jab5s/webapp
2015-05-18 16:57:50,468 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: NO JSP Support for /, did not find org.apache.jasper.servlet.JspServlet
2015-05-18 16:57:50,663 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: Started HttpServer2$SelectChannelConnectorWithSafeStartup@0.0.0.0:39924
2015-05-18 16:57:50,669 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] webapp.WebApps: Web app / started at 39924
2015-05-18 16:57:51,023 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] webapp.WebApps: Registered webapp guice modules
2015-05-18 16:57:51,098 INFO [ServiceThread:org.apache.tez.dag.app.rm.TaskSchedulerEventHandler] rm.YarnTaskSchedulerService: TaskScheduler initialized with configuration: maxRMHeartbeatInterval: 250, containerReuseEnabled: true, reuseRackLocal: true, reuseNonLocal: false, localitySchedulingDelay: 250, preemptionPercentage: 10, numHeartbeatsBetweenPreemptions3, idleContainerMinTimeout=10000, idleContainerMaxTimeout=20000, sessionMinHeldContainers=0
2015-05-18 16:57:51,231 INFO [ServiceThread:org.apache.tez.dag.app.rm.TaskSchedulerEventHandler] client.RMProxy: Connecting to ResourceManager at c6402.ambari.apache.org/192.168.64.102:8030
2015-05-18 16:57:51,467 INFO [main] rm.TaskSchedulerEventHandler: TaskScheduler notified that it should unregister from RM
2015-05-18 16:57:51,467 INFO [main] app.DAGAppMaster: DAGAppMasterShutdownHandler invoked
2015-05-18 16:57:51,467 INFO [main] app.DAGAppMaster: Handling DAGAppMaster shutdown
2015-05-18 16:57:51,473 INFO [AMShutdownThread] app.DAGAppMaster: Sleeping for 5 seconds before shutting down
2015-05-18 16:57:51,553 INFO [AMRM Callback Handler Thread] rm.YarnTaskSchedulerService: App total resource memory: 682 cpu: 1 taskAllocations: 0
2015-05-18 16:57:51,556 INFO [AsyncDispatcher event handler] node.AMNodeTracker: Num cluster nodes = 1
2015-05-18 16:57:52,002 INFO [IPC Server handler 0 on 53906] ipc.Server: IPC Server handler 0 on 53906, call org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPB.getDAGStatus from 192.168.64.103:36267 Call#136 Retry#0
org.apache.tez.dag.api.TezException: No running dag at present
	at org.apache.tez.dag.api.client.DAGClientHandler.getDAG(DAGClientHandler.java:84)
	at org.apache.tez.dag.api.client.DAGClientHandler.getACLManager(DAGClientHandler.java:151)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:94)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:619)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:962)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2039)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2035)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1628)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2033)
...
...
2015-05-18 16:57:56,517 INFO [IPC Server handler 0 on 53906] ipc.Server: IPC Server handler 0 on 53906, call org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPB.getDAGStatus from 192.168.64.103:36885 Call#1936 Retry#0
org.apache.tez.dag.api.TezException: No running dag at present
	at org.apache.tez.dag.api.client.DAGClientHandler.getDAG(DAGClientHandler.java:84)
	at org.apache.tez.dag.api.client.DAGClientHandler.getACLManager(DAGClientHandler.java:151)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:94)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:619)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:962)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2039)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2035)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1628)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2033)
2015-05-18 16:57:56,616 INFO [AMShutdownThread] rm.YarnTaskSchedulerService: Successfully unregistered application from RM
2015-05-18 16:57:56,616 INFO [AMRM Callback Handler Thread] impl.AMRMClientAsyncImpl: Interrupted while waiting for queue
java.lang.InterruptedException
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.reportInterruptAfterWait(AbstractQueuedSynchronizer.java:2017)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2052)
	at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:442)
	at org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl$CallbackHandlerThread.run(AMRMClientAsyncImpl.java:274)
2015-05-18 16:57:56,642 INFO [AMShutdownThread] mortbay.log: Stopped HttpServer2$SelectChannelConnectorWithSafeStartup@0.0.0.0:0
2015-05-18 16:57:56,644 INFO [AMShutdownThread] ipc.Server: Stopping server on 53947
2015-05-18 16:57:56,646 INFO [IPC Server listener on 53947] ipc.Server: Stopping IPC Server listener on 53947
2015-05-18 16:57:56,647 INFO [IPC Server Responder] ipc.Server: Stopping IPC Server Responder
2015-05-18 16:57:56,647 INFO [AMShutdownThread] ipc.Server: Stopping server on 53906
2015-05-18 16:57:56,647 INFO [IPC Server listener on 53906] ipc.Server: Stopping IPC Server listener on 53906
2015-05-18 16:57:56,665 INFO [IPC Server Responder] ipc.Server: Stopping IPC Server Responder
2015-05-18 16:57:56,676 INFO [AMShutdownThread] app.DAGAppMaster: Completed deletion of tez scratch data dir, path=hdfs://c1ha/tmp/ambari-qa/staging/.tez/application\_1431967480765\_0008
2015-05-18 16:57:56,676 INFO [AMShutdownThread] app.DAGAppMaster: Exiting DAGAppMaster..GoodBye!
2015-05-18 16:57:56,677 INFO [Thread-1] app.DAGAppMaster: DAGAppMasterShutdownHook invoked
{noformat}


---

* [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | *Major* | **Tez UI: Dag view caching, error handling and minor layout changes**

# Enable caching in Dag View.
# View throws error when all vertex data are not loaded
# Display single outputs directly below the vertex
# Vetex & Input nodes at the same level slightly overlaps at times
# Entities under a DAG not loading in IE
# Prevent 'All DAGs' page from hitting ATS with a huge limit when rowCount is manually edited


---

* [TEZ-2453](https://issues.apache.org/jira/browse/TEZ-2453) | *Major* | **Tez UI: show the dagInfo is the application has set the same.**

hive/pig etc can set additional info on the dag using 

{code}
/\*\*
   \* Set description info for this DAG that can be used for visualization purposes.
   \* @param dagInfo JSON blob as a serialized string.
   \*                Recognized keys by the UI are:
   \*                    "context" - The application context in which this DAG is being used.
   \*                                For example, this could be set to "Hive" or "Pig" if
   \*                                this is being run as part of a Hive or Pig script.
   \*                    "description" - General description on what this DAG is going to do.
   \*                                In the case of Hive, this could be the SQL query text.
   \* @return {@link DAG}
   \*/
{code}
It would be useful to show this information.


---

* [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | *Major* | **Tez UI: Generic changes based on feedbacks.**

1. Status icon in all DAGs table is not inline with the text always.
2. Downloaded zip file must have type application/zip
3. KILLED status must be removed from All Dags status dropdown.
4. Text color must be made darker.


---

* [TEZ-2440](https://issues.apache.org/jira/browse/TEZ-2440) | *Major* | **Sorter should check for indexCacheList.size() in flush()**

{noformat}
015-05-11 20:28:20,225 INFO [main] task.TezTaskRunner: Shutdown requested... returning
2015-05-11 20:28:20,225 INFO [main] task.TezChild: Got a shouldDie notification via hearbeats. Shutting down
2015-05-11 20:28:20,231 INFO [TezChild] impl.PipelinedSorter: Thread interrupted, cleaned up stale data, sorter threads shutdown=true, terminated=false
2015-05-11 20:28:20,231 INFO [TezChild] runtime.LogicalIOProcessorRuntimeTask: Joining on EventRouter
2015-05-11 20:28:20,231 INFO [TezChild] runtime.LogicalIOProcessorRuntimeTask: Ignoring interrupt while waiting for the router thread to die
2015-05-11 20:28:20,232 INFO [TezChild] task.TezTaskRunner: Encounted an error while executing task: attempt\_1429683757595\_0875\_1\_07\_000000\_0
java.lang.ArrayIndexOutOfBoundsException: -1
        at java.util.ArrayList.elementData(ArrayList.java:418)
        at java.util.ArrayList.get(ArrayList.java:431)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.flush(PipelinedSorter.java:462)
        at org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput.close(OrderedPartitionedKVOutput.java:183)
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.close(LogicalIOProcessorRuntimeTask.java:360)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:181)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:171)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1628)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:171)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:167)
        at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
{noformat}

When a DAG is killed in the middle, sometimes these exceptions are thrown (e.g q\_17 in TPC-DS).  Even though it is completely harmless, it would be better to fix it to avoid distraction when debugging


---

* [TEZ-2409](https://issues.apache.org/jira/browse/TEZ-2409) | *Critical* | **Allow different edges to have different routing plugins**

It may be useful to allow different edge manager plugin types based on different requirements. In order to support this, we would need to support different plugins per edge for routing the events on that edge. A motivating scenario is when a custom plugin from an older release of a downstream project is using older API's while the latest release of that project has moved on to newer API's. This would allow both old and new releases to work with the latest Tez framework as optimally as possible.


---

* [TEZ-2391](https://issues.apache.org/jira/browse/TEZ-2391) | *Blocker* | **TestVertexImpl timing out at times on jenkins builds**

For example, https://builds.apache.org/job/Tez-Build/1028/console


---

* [TEZ-2311](https://issues.apache.org/jira/browse/TEZ-2311) | *Major* | **AM can hang if kill received while recovering from previous attempt**

We saw an instance of a Tez job hanging despite receiving multiple kill requests from clients.  The AM was recovering from a prior attempt when the first kill request arrived.


---

* [TEZ-2304](https://issues.apache.org/jira/browse/TEZ-2304) | *Major* | **InvalidStateTransitonException TA\_SCHEDULE at START\_WAIT during recovery**

I saw a Tez AM throw a few InvalidStateTransitonException (sic) instances during recovery complaining about TA\_SCHEDULE arriving at the START\_WAIT state.


---

* [TEZ-2300](https://issues.apache.org/jira/browse/TEZ-2300) | *Major* | **TezClient.stop() takes a lot of time or does not work sometimes**

  Noticed this with a couple of pig scripts which were not behaving well (AM close to OOM, etc) and even with some that were running fine. Pig calls Tezclient.stop() in shutdown hook. Ctrl+C to the pig script either exits immediately or is hung. In both cases it either takes a long time for the yarn application to go to KILLED state. Many times I just end up calling yarn application -kill separately after waiting for 5 mins or more for it to get killed.


---

* [TEZ-2291](https://issues.apache.org/jira/browse/TEZ-2291) | *Major* | **TEZ UI: Improper vertex name in tables.**

-1. Counters values are not getting displayed in tables.-
2. There is probably a race condition where the vertex name does not get displayed - reproduction - go to all tasks page of one dag, go back to all dags, go to another dag all tasks, check if the vertex name is getting displayed. at times i was seeing vertex id instead. a refresh would show the vertex name.


---

* [TEZ-2198](https://issues.apache.org/jira/browse/TEZ-2198) | *Major* | **Fix sorter spill counts**

Prior to pipelined shuffle, tez merged all spilled data into a single file.  This ended up creating one index file and one output file. In this context, TaskCounter.ADDITIONAL\_SPILL\_COUNT was referred as the number of additional spills and there was no counter needed to track the number of merges.

With pipelined shuffle, there is no final merge and ADDITIONAL\_SPILL\_COUNT would be misleading, as these spills are direct output files which are consumed by the consumers.

It would be good to have the following 
- ADDITIONAL\_SPILL\_COUNT: represents the spills that are needed by the task to generate the final merged output
- TOTAL\_SPILLS: represents the total number of shuffle directories (index + output files) that got created at the end of processing.

For e.g, Assume sorter generated 5 spills in an attempt
Without pipelining:
==============
ADDITIONAL\_SPILL\_COUNT = 5 \<-- Additional spills involved in sorting
TOTAL\_SPILLS = 1 \<-- Final merged output

With pipelining:
============
ADDITIONAL\_SPILL\_COUNT = 0 \<-- Additional spills involved in sorting
TOTAL\_SPILLS = 5 \<--- all spills are final output


---

* [TEZ-2097](https://issues.apache.org/jira/browse/TEZ-2097) | *Critical* | **TEZ-UI Add dag logs backend support**

If dag fails due to AM error, there's no way to check the dag logs on tez-ui. Users have to grab the app logs.


---

* [TEZ-2096](https://issues.apache.org/jira/browse/TEZ-2096) | *Major* | **TEZ-UI : Add link to view AM log of finished & running apps**

Currently, user can view the logs of task attempts via tez-ui.  It would be good to provide similar feature for viewing AM logs as well (e.g user wants to view the AM log of a failed DAG for any exceptions).


---

* [TEZ-1961](https://issues.apache.org/jira/browse/TEZ-1961) | *Critical* | **Remove misleading exception "No running dag" from AM logs**

{code}
15/01/14 16:45:06 INFO ipc.Server: IPC Server handler 0 on 51000, call org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPB.getDAGStatus from  Call#0 Retry#0
org.apache.tez.dag.api.TezException: No running dag at present
	at org.apache.tez.dag.api.client.DAGClientHandler.getDAG(DAGClientHandler.java:84)
	at org.apache.tez.dag.api.client.DAGClientHandler.getACLManager(DAGClientHandler.java:151)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:94)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:617)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:962)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2041)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2037)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2035)
15/01/14 16:45:06 INFO client.DAGClientImpl: DAG initialized: CurrentState=Running
{code}

This exception shows up fairly often and isn't very relevant - queries before a DAG is submitted to the AM.
This is very misleading, especially for folks new to Tez, and should be removed.


---

* [TEZ-1529](https://issues.apache.org/jira/browse/TEZ-1529) | *Blocker* | **ATS and TezClient integration  in secure kerberos enabled cluster**

This is a follow up for TEZ-1495 which address ATS - TezClient integration. however it does not enable it  in secure kerberos enabled cluster.


---

* [TEZ-814](https://issues.apache.org/jira/browse/TEZ-814) | *Major* | **Improve heuristic for determining a task has failed outputs**

Currently 25% of consumers need to report failure. However we may not always have those many error reports. Eg. this is the last consumer and it the source is lost. Or some consumers are cut off from the source. The job may hang on those consumers waiting for a re-run.



