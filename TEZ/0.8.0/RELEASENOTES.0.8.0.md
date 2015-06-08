
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
#  0.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


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

* [TEZ-2506](https://issues.apache.org/jira/browse/TEZ-2506) | *Major* | **TestAysncHttpConnection failing**

{code}
https://builds.apache.org/job/PreCommit-TEZ-Build/767//testReport/org.apache.tez.http/TestHttpConnection/testAsyncHttpConnectionInterrupt/
{code}

{code}
2015-05-29 20:19:01,802 INFO  [Thread-0] netty.AsyncHttpConnection (AsyncHttpConnection.java:initClient(78)) - Initializing AsyncClient (TezBodyDeferringAsyncHandler)
2015-05-29 20:19:02,057 ERROR [pool-4-thread-1] netty.TezBodyDeferringAsyncHandler (TezBodyDeferringAsyncHandler.java:onThrowable(84)) - Error in asyncHandler 
java.net.ConnectException: http://10.255.255.255:10221/
	at com.ning.http.client.providers.netty.NettyConnectListener.operationComplete(NettyConnectListener.java:104)
	at org.jboss.netty.channel.DefaultChannelFuture.notifyListener(DefaultChannelFuture.java:427)
	at org.jboss.netty.channel.DefaultChannelFuture.addListener(DefaultChannelFuture.java:145)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.doConnect(NettyAsyncHttpProvider.java:1139)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.execute(NettyAsyncHttpProvider.java:944)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.nextRequest(NettyAsyncHttpProvider.java:1404)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.nextRequest(NettyAsyncHttpProvider.java:1400)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.remotelyClosed(NettyAsyncHttpProvider.java:1521)
	at com.ning.http.client.providers.netty.NettyConnectListener.operationComplete(NettyConnectListener.java:96)
	at org.jboss.netty.channel.DefaultChannelFuture.notifyListener(DefaultChannelFuture.java:427)
	at org.jboss.netty.channel.DefaultChannelFuture.addListener(DefaultChannelFuture.java:145)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.doConnect(NettyAsyncHttpProvider.java:1139)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.execute(NettyAsyncHttpProvider.java:940)
	at com.ning.http.client.AsyncHttpClient.executeRequest(AsyncHttpClient.java:499)
	at org.apache.tez.http.async.netty.AsyncHttpConnection.connect(AsyncHttpConnection.java:154)
	at org.apache.tez.http.async.netty.AsyncHttpConnection$$EnhancerByMockitoWithCGLIB$$93c3f8e5.CGLIB$connect$3(<generated>)
	at org.apache.tez.http.async.netty.AsyncHttpConnection$$EnhancerByMockitoWithCGLIB$$93c3f8e5$$FastClassByMockitoWithCGLIB$$b69a0361.invoke(<generated>)
	at org.mockito.cglib.proxy.MethodProxy.invokeSuper(MethodProxy.java:216)
	at org.mockito.internal.creation.AbstractMockitoMethodProxy.invokeSuper(AbstractMockitoMethodProxy.java:10)
	at org.mockito.internal.invocation.realmethod.CGLIBProxyRealMethod.invoke(CGLIBProxyRealMethod.java:22)
	at org.mockito.internal.invocation.realmethod.FilteredCGLIBProxyRealMethod.invoke(FilteredCGLIBProxyRealMethod.java:27)
	at org.mockito.internal.invocation.InvocationImpl.callRealMethod(InvocationImpl.java:112)
	at org.mockito.internal.stubbing.answers.CallsRealMethods.answer(CallsRealMethods.java:36)
	at org.mockito.internal.handler.MockHandlerImpl.handle(MockHandlerImpl.java:93)
	at org.mockito.internal.handler.NullResultGuardian.handle(NullResultGuardian.java:29)
	at org.mockito.internal.handler.InvocationNotifierHandler.handle(InvocationNotifierHandler.java:38)
	at org.mockito.internal.creation.MethodInterceptorFilter.intercept(MethodInterceptorFilter.java:61)
	at org.apache.tez.http.async.netty.AsyncHttpConnection$$EnhancerByMockitoWithCGLIB$$93c3f8e5.connect(<generated>)
	at org.apache.tez.http.TestHttpConnection$Worker.call(TestHttpConnection.java:185)
	at org.apache.tez.http.TestHttpConnection$Worker.call(TestHttpConnection.java:170)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.nio.channels.ClosedByInterruptException
	at java.nio.channels.spi.AbstractInterruptibleChannel.end(AbstractInterruptibleChannel.java:202)
	at sun.nio.ch.SocketChannelImpl.connect(SocketChannelImpl.java:681)
	at org.jboss.netty.channel.socket.nio.NioClientSocketPipelineSink.connect(NioClientSocketPipelineSink.java:108)
	at org.jboss.netty.channel.socket.nio.NioClientSocketPipelineSink.eventSunk(NioClientSocketPipelineSink.java:70)
	at org.jboss.netty.handler.codec.oneone.OneToOneEncoder.handleDownstream(OneToOneEncoder.java:54)
	at org.jboss.netty.handler.codec.http.HttpClientCodec.handleDownstream(HttpClientCodec.java:97)
	at org.jboss.netty.handler.stream.ChunkedWriteHandler.handleDownstream(ChunkedWriteHandler.java:109)
	at org.jboss.netty.channel.Channels.connect(Channels.java:634)
	at org.jboss.netty.channel.AbstractChannel.connect(AbstractChannel.java:207)
	at org.jboss.netty.bootstrap.ClientBootstrap.connect(ClientBootstrap.java:229)
	at org.jboss.netty.bootstrap.ClientBootstrap.connect(ClientBootstrap.java:182)
	at com.ning.http.client.providers.netty.NettyAsyncHttpProvider.doConnect(NettyAsyncHttpProvider.java:1100)
	... 30 more
{code}

[~rajesh.balamohan] - could you pleas take a look.


---

* [TEZ-2503](https://issues.apache.org/jira/browse/TEZ-2503) | *Minor* | **findbugs version isn't reported properly in test-patch report**

Post TEZ-1883


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

* [TEZ-2482](https://issues.apache.org/jira/browse/TEZ-2482) | *Major* | **Tez UI: Mouse events not working on IE11**

In IE 11 mouse events are not delivered to the page anymore at all after a SVG use element which has was under the mouse is removed - https://connect.microsoft.com/IE/feedback/details/796745

this affects IE on win7 and win2012 r2


---

* [TEZ-2481](https://issues.apache.org/jira/browse/TEZ-2481) | *Major* | **Tez UI: graphical view does not render properly on IE11**

The issue was because of IE's poor/broken support of css in SVG.
# IE doesn't support transform in css like other browsers. This caused the bubbles in a vertex to appear at the origin - https://connect.microsoft.com/IE/feedbackdetail/view/920928
# IE have a broken support for the marker(Arrow on the path). This was causing the links/paths to disappear - https://connect.microsoft.com/IE/feedback/details/801938


---

* [TEZ-2468](https://issues.apache.org/jira/browse/TEZ-2468) | *Major* | **Change master to build against Java 7**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-2461](https://issues.apache.org/jira/browse/TEZ-2461) | *Major* | **tez-history-parser compile fails with hadoop-2.4**

https://builds.apache.org/job/Tez-Build-Hadoop-2.4/98/console

\cc [~rajesh.balamohan]


---

* [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | *Major* | **Tez UI: Dag view caching, error handling and minor layout changes**

# Enable caching in Dag View.
# View throws error when all vertex data are not loaded
# Display single outputs directly below the vertex
# Vetex & Input nodes at the same level slightly overlaps at times
# Entities under a DAG not loading in IE
# Prevent 'All DAGs' page from hitting ATS with a huge limit when rowCount is manually edited


---

* [TEZ-2454](https://issues.apache.org/jira/browse/TEZ-2454) | *Major* | **Change FetcherOrderedGroup to work as Callables instead of blocking threads**

The Fetcher threads for Ordered Input currently run and block till merge completes, which makes it difficult to use them via ThreadPools.


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

* [TEZ-2450](https://issues.apache.org/jira/browse/TEZ-2450) | *Major* | **support async http clients in ordered & unordered inputs**

It will be helpful to switch between JDK & other async http impls.  For LLAP scenarios, it would be useful to make http clients interruptible which is supported in async libraries.


---

* [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | *Major* | **Tez UI: Generic changes based on feedbacks.**

1. Status icon in all DAGs table is not inline with the text always.
2. Downloaded zip file must have type application/zip
3. KILLED status must be removed from All Dags status dropdown.
4. Text color must be made darker.


---

* [TEZ-2446](https://issues.apache.org/jira/browse/TEZ-2446) | *Major* | **Tez UI: Add tezVersion details when downloading timeline data for offline use**

TEZ-2159 - Enables downloading timeline data for offline use.  It would be good to add TEZ\_APPLICATION (Which contains tezVersion, configs etc) along with this.
\cc [~pramachandran]


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

* [TEZ-2436](https://issues.apache.org/jira/browse/TEZ-2436) | *Major* | **Tez UI: Add cancel button in column selector.**

Add cancel button beside OK and realign select all checkbox.


---

* [TEZ-2423](https://issues.apache.org/jira/browse/TEZ-2423) | *Major* | **Tez UI: Remove Attempt Index column from task-\>attempts page**

Attempt Index and Attempt No serves the same purpose.


---

* [TEZ-2406](https://issues.apache.org/jira/browse/TEZ-2406) | *Major* | **Tez UI: Display per-io counter columns in task and attempt pages under vertex**

- We will auto-populate all the counter names including io counter names to the tasks (under a vertex) and task attempts (under task, vertex).
- To enable navigation the column names will be searchable in the pop-up for column selection.
- Per-io counter names will not be stored in the personalization settings given they are dag / vertex specific.


---

* [TEZ-2391](https://issues.apache.org/jira/browse/TEZ-2391) | *Blocker* | **TestVertexImpl timing out at times on jenkins builds**

For example, https://builds.apache.org/job/Tez-Build/1028/console


---

* [TEZ-2376](https://issues.apache.org/jira/browse/TEZ-2376) | *Major* | **Remove TaskAttemptEventType.TA\_DIAGNOSTICS\_UPDATE**

It is never used.


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
ADDITIONAL\_SPILL\_COUNT = 5 <-- Additional spills involved in sorting
TOTAL\_SPILLS = 1 <-- Final merged output

With pipelining:
============
ADDITIONAL\_SPILL\_COUNT = 0 <-- Additional spills involved in sorting
TOTAL\_SPILLS = 5 <--- all spills are final output


---

* [TEZ-2076](https://issues.apache.org/jira/browse/TEZ-2076) | *Major* | **Tez framework to extract/analyze data stored in ATS for specific dag**

- Users should be able to download ATS data pertaining to a DAG from Tez-UI (more like a zip file containing DAG/Vertex/Task/TaskAttempt info).
- This can be plugged to an analyzer which parses the data, adds semantics and provides an in-memory representation for further analysis.
- This will enable to write different analyzer rules, which can be run on top of this in-memory representation to come up with analysis on the DAG.
- Results of this analyzer rules can be rendered on to UI (standalone webapp) later point in time.


---

* [TEZ-1970](https://issues.apache.org/jira/browse/TEZ-1970) | *Major* | **Fix javadoc warnings in SortMergeJoinExample**

test-patch reports 3 existing javadoc warnings.


---

* [TEZ-1752](https://issues.apache.org/jira/browse/TEZ-1752) | *Major* | **Inputs / Outputs in the Runtime library should be interruptable**

Not possible to preempt tasks without killing containers without this.

There's still the problem of Processors not supporting interrupts. We may need API enhancements to either query IPOs on whether they are interrupbtible.



