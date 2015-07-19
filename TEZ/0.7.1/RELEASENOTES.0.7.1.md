
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

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


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

* [TEZ-2554](https://issues.apache.org/jira/browse/TEZ-2554) | *Major* | **Tez UI: View log link does not correctly propagate login crendential to read log from yarn web.**

Append "user.name=<am user>" to the view/download logs url as a query param.

Sample url:
http://address:19888/jobhistory/logs/address:45454/container\_e18\_1434089649193\_0001\_01\_000002/container\_e18\_1434089649193\_0001\_01\_000002/hrt\_qa?user.name=hrt\_qa

Reported by [~tassapola] offline.


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
* ensures applicationId is not null (in some corner cases this causes exception in store.find)
* makes the ui backward compatible (0.5).
* allows to remove the appid from primary filter (TEZ-2485)


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
2015-06-01 07:38:26,919 INFO [DelayedContainerManager] rm.YarnTaskSchedulerService: Assigning container to task, container=Container: [ContainerId: container\_e02\_1433141118424\_0012\_01\_000011, NodeId: ip-172-31-18-41.ec2.internal:45454, NodeHttpAddress: ip-172-31-18-41.ec2.internal:8042, Resource: <memory:1536, vCores:1>, Priority: 2, Token: Token { kind: ContainerToken, service: 172.31.18.41:45454 }, ], task=attempt\_1433141118424\_0012\_2\_00\_000003\_1, containerHost=ip-172-31, localityMatchType=NodeLocal, matchedLocation=ip-172-31-18-41.ec2.internal, honorLocalityFlags=true, reusedContainer=true, delayedContainers=4, containerResourceMemory=1536, containerResourceVCores=1
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

as a workaround, it is possible to run with {code:scala}"tez.runtime.sorter.class" -> "LEGACY"{code}, but this is impractical in the long run.


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
2015-05-18 16:57:50,257 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: adding path spec: /*
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
/**
   * Set description info for this DAG that can be used for visualization purposes.
   * @param dagInfo JSON blob as a serialized string.
   *                Recognized keys by the UI are:
   *                    "context" - The application context in which this DAG is being used.
   *                                For example, this could be set to "Hive" or "Pig" if
   *                                this is being run as part of a Hive or Pig script.
   *                    "description" - General description on what this DAG is going to do.
   *                                In the case of Hive, this could be the SQL query text.
   * @return {@link DAG}
   */
{code}
It would be useful to show this information.


---

* [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | *Major* | **Tez UI: Generic changes based on feedbacks.**

1. Status icon in all DAGs table is not inline with the text always.
2. Downloaded zip file must have type application/zip
3. KILLED status must be removed from All Dags status dropdown.
4. Text color must be made darker.


---

* [TEZ-2409](https://issues.apache.org/jira/browse/TEZ-2409) | *Critical* | **Allow different edges to have different routing plugins**

It may be useful to allow different edge manager plugin types based on different requirements. In order to support this, we would need to support different plugins per edge for routing the events on that edge. A motivating scenario is when a custom plugin from an older release of a downstream project is using older API's while the latest release of that project has moved on to newer API's. This would allow both old and new releases to work with the latest Tez framework as optimally as possible.


---

* [TEZ-2391](https://issues.apache.org/jira/browse/TEZ-2391) | *Blocker* | **TestVertexImpl timing out at times on jenkins builds**

For example, https://builds.apache.org/job/Tez-Build/1028/console


---

* [TEZ-2304](https://issues.apache.org/jira/browse/TEZ-2304) | *Major* | **InvalidStateTransitonException TA\_SCHEDULE at START\_WAIT during recovery**

I saw a Tez AM throw a few InvalidStateTransitonException (sic) instances during recovery complaining about TA\_SCHEDULE arriving at the START\_WAIT state.


---

* [TEZ-2291](https://issues.apache.org/jira/browse/TEZ-2291) | *Major* | **TEZ UI: Improper vertex name in tables.**

-1. Counters values are not getting displayed in tables.-
2. There is probably a race condition where the vertex name does not get displayed - reproduction - go to all tasks page of one dag, go back to all dags, go to another dag all tasks, check if the vertex name is getting displayed. at times i was seeing vertex id instead. a refresh would show the vertex name.


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



