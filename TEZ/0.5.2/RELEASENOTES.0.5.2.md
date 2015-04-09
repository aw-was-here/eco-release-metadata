
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
#  0.5.2 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-1731](https://issues.apache.org/jira/browse/TEZ-1731) | *Critical* | **OnDiskMerger can end up clobbering files across tasks with LocalDiskFetch**

When an on disk fetch starts with LOCAL files (optimize.local.fetch), the filename used by the merger is based on the source file name. This name can be the same for all tasks reading the same input on the node - and can result in files being overwritten between tasks, depending on the order in which events are processed, and the dir allocated by the local dir-allocator.

Leads to ChecksumExceptions, and FileNotFoundExceptions during the merge.


---

* [TEZ-1728](https://issues.apache.org/jira/browse/TEZ-1728) | *Major* | **Remove local host name from Fetcher thread name**

Leads to unnecessarily long log lines from the Fetchers - and bloats the logs.

Logging the src host once should be adequate.


---

* [TEZ-1726](https://issues.apache.org/jira/browse/TEZ-1726) | *Critical* | **Build broken against Hadoop-2.6.0 due to change in NodeReport**

NodeReport is changed by YARN-2698. Technically, that's a private API - so we should just fix it in Tez.


---

* [TEZ-1722](https://issues.apache.org/jira/browse/TEZ-1722) | *Minor* | **DAG should be related to Application Id in ATS data**

DAG should be related to newly add tez entity for application


---

* [TEZ-1716](https://issues.apache.org/jira/browse/TEZ-1716) | *Major* | **Additional ATS data for UI**

Add failed and killed attempt info at DAG and Vertex Level.
Add tez-site configuration contents to Tez App Entity
Add task's successful attempt id in task data.


---

* [TEZ-1712](https://issues.apache.org/jira/browse/TEZ-1712) | *Major* | **SSL context gets destroyed too soon after downloading data from one of the vertices**

In scenarios where a vertex has to download shuffle data from multiple sources, sslContext gets destroyed soon after data is downloaded from one of the vertex.  This causes SSL handshake exception when data needs to be downloaded from other vertices and fetchers to fail.


---

* [TEZ-1711](https://issues.apache.org/jira/browse/TEZ-1711) | *Major* | **Don't cache outputSpecList in VertexImpl.getOutputSpecList(taskIndex)**

It would cache the outputSpecList in its VertexImpl.getOutputSepcList(taskIndex), but I don't think we should cache it as it depends on the taskIndex, although in all the EdgeManagerPlugin Implementations, the value is the same no matter what the taskIndex is. But it has risk that if we have a new EdgeManagerPlugin that has different behavior. Or if this case would never happens, then just remove the taskIndex from the method parameter.


---

* [TEZ-1703](https://issues.apache.org/jira/browse/TEZ-1703) | *Major* | **Exception handling for InputInitializer**

For handleInputInitializerEvent - this should be fairly straightfoward to handle. At the moment this is an inline call from within the AsyncDispatcher, and will end up causing a RuntimeException. The RuntimeException can be changed to a AMUserCodeException which will take care of this.
For onVertexStateUpdated, this eventually gets invoked from within RootInputInitializerManager. Catching exceptions there and sending a RootInputInitialzierFailedEvent should be enough to fix this ? May require some state machine changes to handle this event on a few more states.


---

* [TEZ-1701](https://issues.apache.org/jira/browse/TEZ-1701) | *Major* | **ATS fixes to flush all history events and also using batching**

There are cases when the timeline server can get backlogged. To address this, the AM should wait for a longer period to send events to it. Also, sending events in batches will reduce the load.


---

* [TEZ-1700](https://issues.apache.org/jira/browse/TEZ-1700) | *Major* | **Replace containerId from TaskLocationHint with [TaskIndex+Vertex] based affinity**

Today 1-1 dependencies are affinitized by creating a task location hint with the producer task container id. It can be created by affinitizing to the producer task-index+vertexname combination instead and internally Tez can map it to the container. This also allows this dependency to be specified before the container is assigned. This allows the dependency to be generic.


---

* [TEZ-1699](https://issues.apache.org/jira/browse/TEZ-1699) | *Critical* | **Vertex.setParallelism should throw an exception for invalid invocations**

There is a return value of false when setParallelism is not successful. However that may be ignored and in some cases the invocation is actually incorrect and its better to throw an exception than return false. Throwing an unchecked exception can allow doing this compatibly.


---

* [TEZ-1698](https://issues.apache.org/jira/browse/TEZ-1698) | *Major* | **Cut down on ResourceCalculatorProcessTree overheads in Tez**

ResourceCalculatorProcessTree scraps all of /proc/ for PIDs which are part of the current task's process group.

This is mostly wasted in Tez, since unlike YARN which has to do this since it has the PID for the container-executor process (bash) and has to trace the bash -> java spawn inheritance.

!ProcfsBasedProcessTree.png!

The latency effect of this is less clearly visible with the profiler turned on as this is primarily related to rate of syscalls + overhead in the kernel (via the following codepath in YARN).

!ProcfsFiles.png!

{code}
 private List<String> getProcessList() {
    String[] processDirs = (new File(procfsDir)).list();
...
    for (String dir : processDirs) {
      try {
        if ((new File(procfsDir, dir)).isDirectory()) {
          processList.add(dir);
        }
...

  public void updateProcessTree() {
    if (!pid.equals(deadPid)) {
      // Get the list of processes
      List<String> processList = getProcessList();
...
      for (String proc : processList) {
        // Get information for each process
        ProcessInfo pInfo = new ProcessInfo(proc);
        if (constructProcessInfo(pInfo, procfsDir) != null) {
          allProcessInfo.put(proc, pInfo);
          if (proc.equals(this.pid)) {
            me = pInfo; // cache 'me'
            processTree.put(proc, pInfo);
          }
        }
      }
{code}


---

* [TEZ-1689](https://issues.apache.org/jira/browse/TEZ-1689) | *Critical* | **Exception handling for EdgeManagerPlugin**

EdgeManagePlugin and InputInitializer are both user code which could lead exception, we should handle it, fail the DAG and display the exception in client side.


---

* [TEZ-1686](https://issues.apache.org/jira/browse/TEZ-1686) | *Major* | **TestRecoveryParser.testGetLastCompletedDAG fails sometimes**

The test would fail if the random number generated is 0.


---

* [TEZ-1684](https://issues.apache.org/jira/browse/TEZ-1684) | *Major* | **upgrade mockito to latest release**

Randomly (once in 1000 runs in my VM), I get the following exception.

Exception in thread "DelayedContainerManager" java.lang.ClassCastException: java.util.LinkedList cannot be cast to org.apache.hadoop.yarn.api.records.Priority
	at org.apache.tez.dag.app.rm.TezAMRMClientAsync$$EnhancerByMockitoWithCGLIB$$9c9a5aeb.getTopPriority(<generated>)
	at org.apache.tez.dag.app.rm.YarnTaskSchedulerService.assignReUsedContainerWithLocation(YarnTaskSchedulerService.java:1459)
	at org.apache.tez.dag.app.rm.YarnTaskSchedulerService.assignDelayedContainer(YarnTaskSchedulerService.java:660)
	at org.apache.tez.dag.app.rm.YarnTaskSchedulerService.access$700(YarnTaskSchedulerService.java:82)
	at org.apache.tez.dag.app.rm.YarnTaskSchedulerService$DelayedContainerManager.run(YarnTaskSchedulerService.java:1765)

It appears to be a bug in mockito when using RETURNS\_DEEP\_STUBS in unit tests.  With mockito 1.10.8 version, this issue isn't cropping up. Currently tez uses mockito 1.9.5.  Should we migrate to 1.10.8?


---

* [TEZ-1682](https://issues.apache.org/jira/browse/TEZ-1682) | *Blocker* | **Tez AM hangs at times when there are task failures**

Reported by [~karams]. 

The Task does not move into it's final state, and effectively does not send the relevant events to the Vertex.
Happens when there's multiple attempts for the task - caused by Node failure for instance.


---

* [TEZ-1676](https://issues.apache.org/jira/browse/TEZ-1676) | *Major* | **Fix failing test in TestHistoryEventTimelineConversion**

Tests run: 2, Failures: 0, Errors: 1, Skipped: 0, Time elapsed: 0.379 sec <<< FAILURE!
testHandlerExists(org.apache.tez.dag.history.logging.ats.TestHistoryEventTimelineConversion)  Time elapsed: 0.016 sec  <<< ERROR!
java.lang.NullPointerException: null
	at org.apache.tez.dag.history.logging.ats.HistoryEventTimelineConversion.convertVertexParallelismUpdatedEvent(HistoryEventTimelineConversion.java:503)
	at org.apache.tez.dag.history.logging.ats.HistoryEventTimelineConversion.convertToTimelineEntity(HistoryEventTimelineConversion.java:107)
	at org.apache.tez.dag.history.logging.ats.TestHistoryEventTimelineConversion.testHandlerExists(TestHistoryEventTimelineConversion.java:182)


---

* [TEZ-1674](https://issues.apache.org/jira/browse/TEZ-1674) | *Critical* | **Rename parameters related to counters / memory distribution**

The parameter names don't make a lot of sense right now, or duplicate information.

Previous name   Current name after the 0.5 refactor.
tez.runtime.job.counters.max  tez.am.counters.max.keys
tez.runtime.job.counters.group.name.max tez.am.counters.group-name.max.keys
tez.runtime.job.counters.counter.name.max tez.am.counters.name.max.keys
tez.runtime.job.counters.groups.max tez.am.counters.groups.max.keys
A lot of these are not related to keys

tez.task.scale.memory.allocator.class tez.task.scale.task.memory.allocator.class
tez.task.scale.memory.reserve-fraction  tez.task.scale.task.memory.reserve-fraction
tez.task.scale.memory.additional.reservation.fraction.per-io  tez.task.scale.task.memory.additional-reservation.fraction.per-io
tez.task.scale.memory.additional reservation.fraction.max tez.task.scale.task.memory.additional-reservation.fraction.max
tez.task.initial.memory.scale.ratios  tez.task.scale.task.memory.ratios
task is duplicated

Also
tez.task.max-events-per-heartbeat.max - repeats max

I'd prefer to have made these changes directly, but after talking to [~hitesh], will add deprecation - and target removal in 0.7


---

* [TEZ-1673](https://issues.apache.org/jira/browse/TEZ-1673) | *Major* | **Update the default value for allowed node failures, num events per heartbeat and counter update interval**

The current number - 3 is something that was inherited from MapReduce.
Since Tez is affected more by a node being marked as bad - where retries could be triggered several levels up, I think a higher default value would be better. I'd propose changing this to 10.


---

* [TEZ-1669](https://issues.apache.org/jira/browse/TEZ-1669) | *Critical* | **yarn-swimlanes.sh throws error post TEZ-1556**

Traceback (most recent call last):
  File "swimlane.py", line 201, in <module>
    sys.exit(main(sys.argv[1:]))
  File "swimlane.py", line 121, in main
    log = AMLog(args[0]).structure()
  File "/yyy/tez-autobuild/tez/tez-tools/swimlanes/amlogparser.py", line 185, in \_\_init\_\_
    self.events = filter(lambda a:a, [self.parse(l.strip()) for l in fp])
  File "/yyy/tez-autobuild/tez/tez-tools/swimlanes/amlogparser.py", line 246, in parse
    ts = m.group("ts")
AttributeError: 'NoneType' object has no attribute 'group'


Not sure if it has got anything to do with the recent logging changes introduced in TEZ-1566 (which trims the package name to just 2 levels).


---

* [TEZ-1668](https://issues.apache.org/jira/browse/TEZ-1668) | *Major* | **InputInitializers should be able to register for Vertex state updates in the constructor itself**

Currently, this is only possible when initialize is called.


---

* [TEZ-1666](https://issues.apache.org/jira/browse/TEZ-1666) | *Critical* | **UserPayload should be null if the payload is not specified**

As an example in the ProcessorDescriptor - if no payload is specified, context.getUserPayload should return null.

SleepProcessor has an explicit check for a null payload, to enable default sleep value - which fails.

Marking as critical since this is an API behaviour inconsistency.


---

* [TEZ-1665](https://issues.apache.org/jira/browse/TEZ-1665) | *Major* | **DAGScheduler should provide a priority range instead of an exact priority**

Specifying the exact priority leaks task attempt concepts into the DAGScheduler. Eg. the DAGScheduler increases the priority of attempt-re-executions arbitrarily. Providing a range allows these decisions to be made at the task attempt level. e.g. when there are no competing tasks then there is no reason to increase the priority. Similarly for speculation, the speculative task priority could be lower than normal tasks because we may want the first attempt of other tasks to run ahead of a speculative task. These relative priorities within a vertex can be made locally instead of leaking into the DAGScheduler.


---

* [TEZ-1664](https://issues.apache.org/jira/browse/TEZ-1664) | *Major* | **Add checks to ensure that the client and AM are compatible**

There is a potential chance that a client is misconfigured wrongly to point to an incompatible tez tar ball on HDFS.

Until we end up supporting either compatibility across various versions or uploading the tez tarball if not configured, we should do a version compatibility check and fail the AM if it was launched by an incompatible client.


---

* [TEZ-1658](https://issues.apache.org/jira/browse/TEZ-1658) | *Major* | **Additional data generation to Timeline for UI**

Additional data/changes needed:
    - vertexId to be serialized into the dag plan
    - status should be a primary filter for better search capabilities
    - containerId and nodeId should be in other info for task attempts in addition to related entities


---

* [TEZ-1656](https://issues.apache.org/jira/browse/TEZ-1656) | *Major* | **Grouping of splits should maintain the original ordering of splits within a group**

Sometimes the original splits may have an ordering (eg. splits from a sorted file). Maintaining the ordering of splits inside a group maintains the sort order.
The node level grouping maintains ordering. When collecting leftover groups for rack level grouping, the ordering is lost in current code.


---

* [TEZ-1649](https://issues.apache.org/jira/browse/TEZ-1649) | *Major* | **ShuffleVertexManager auto reduce parallelism can cause jobs to hang indefinitely (with ScatterGather edges)**

Consider the following DAG
 M1, M2 --> R1
 M2, M3 --> R2
 R1 --> R2

All edges are Scatter-Gather.
 1. Set R1's (1000 parallelism) min/max setting to 0.25 - 0.5f
 2. Set R2's (21 parallelism) min/max setting to 0.2 and 0.3f
 3. Let M1 send some data from HDFS (test.txt)
 4. Let M2 (50 parallelism) generate some data and send it to R2
 5. Let M3 (500 parallelism) generate some data and send it to R2

- Since R2's min/max can get satisfied by getting events from M3 itself, R2 will change its parallelism quickly than R1.
- In the mean time, R1 changes its parallelism from 1000 to 20.  This is not propagated to R2 and it would keep waiting.

Tested this on a small scale (20 node) cluster and it happens consistently.


---

* [TEZ-1647](https://issues.apache.org/jira/browse/TEZ-1647) | *Major* | **Issue with caching of events in VertexManager::onRootVertexInitialized**

Came across a use-case in Hive where the current functionality does not work. 

Consider a vertex with 2 inputs ( i1, i2 ):

The custom vertex manager in Hive generates events only when both i1 and i2 are initialized. 

Therefore vertexManagerPlugin::onRootInitialized(i1) does nothing but for vertexManagerPLugin::onRootIniitialized(i2) , it calls context.addEvents(i1) and context.addEvents(i2). When this happens, the events generated for i1 never get sent to the VertexImpl to be routed to the tasks.


---

* [TEZ-1646](https://issues.apache.org/jira/browse/TEZ-1646) | *Major* | **Add support for augmenting classpath via configs**

In some cases, users may need to augment the framework classpath to add locally deployed/installed resources to the classpath. For examples, where resources are not deployed via yarn local resources but via more conventional means such as rpms, etc.


---

* [TEZ-1645](https://issues.apache.org/jira/browse/TEZ-1645) | *Major* | **Add support for specifying additional local resources via config**

In some cases, there is a need to add additional jars such as lzo or a jar for host-rack mapping. Would be useful to have this to ensure that code does not need to change for cases such as changing compression codecs.


---

* [TEZ-1643](https://issues.apache.org/jira/browse/TEZ-1643) | *Major* | **DAGAppMaster kills DAG & shuts down, when RM is restarted**

Scenario:
1. Start a long running job
2. Kill RM (recovery is enabled in RM. No RM-HA configured)
3. AMRMClientAsyncImpl$HeartbeatThread throws error (EOFException) which internally causes the appmaster to kill DAG.

2014-10-08 02:24:06,705 INFO [IPC Server handler 6 on 55291] org.apache.tez.dag.app.dag.impl.TaskImpl: TaskAttempt:attempt\_1412734988643\_0001\_1\_00\_000000\_0 sent events: (0-1)
2014-10-08 02:24:12,255 ERROR [AMRM Heartbeater thread] org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl: Exception on heartbeat
java.io.IOException: Failed on local exception: java.io.EOFException; Host Details : local host is: "m-tez-uns-try-3/1.1.1.1"; destination host is: "
m-tez-uns-try-3":8030;
        at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:764)
        at org.apache.hadoop.ipc.Client.call(Client.java:1472)
        at org.apache.hadoop.ipc.Client.call(Client.java:1399)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:232)
        at com.sun.proxy.$Proxy27.allocate(Unknown Source)
        at org.apache.hadoop.yarn.api.impl.pb.client.ApplicationMasterProtocolPBClientImpl.allocate(ApplicationMasterProtocolPBClientImpl.java:77)
        at sun.reflect.GeneratedMethodAccessor3.invoke(Unknown Source)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:187)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
        at com.sun.proxy.$Proxy28.allocate(Unknown Source)
        at org.apache.hadoop.yarn.client.api.impl.AMRMClientImpl.allocate(AMRMClientImpl.java:278)
        at org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl$HeartbeatThread.run(AMRMClientAsyncImpl.java:224)
Caused by: java.io.EOFException
        at java.io.DataInputStream.readInt(DataInputStream.java:392)
        at org.apache.hadoop.ipc.Client$Connection.receiveRpcResponse(Client.java:1071)
        at org.apache.hadoop.ipc.Client$Connection.run(Client.java:966)
2014-10-08 02:24:12,256 INFO [AMRM Callback Handler Thread] org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl: Interrupted while waiting for queue
java.lang.InterruptedException
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.reportInterruptAfterWait(AbstractQueuedSynchronizer.java:2017)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2052)
        at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:442)
        at org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl$CallbackHandlerThread.run(AMRMClientAsyncImpl.java:274)
2014-10-08 02:24:12,257 ERROR [AMRM Callback Handler Thread] org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl: Stopping callback due to:
java.io.IOException: Failed on local exception: java.io.EOFException; Host Details : local host is: "m-tez-uns-try-3/1.1.1.1"; destination host is: "m-tez-uns-try-3":8030;
        at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:764)
        at org.apache.hadoop.ipc.Client.call(Client.java:1472)
        at org.apache.hadoop.ipc.Client.call(Client.java:1399)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:232)
        at com.sun.proxy.$Proxy27.allocate(Unknown Source)
        at org.apache.hadoop.yarn.api.impl.pb.client.ApplicationMasterProtocolPBClientImpl.allocate(ApplicationMasterProtocolPBClientImpl.java:77)
        at sun.reflect.GeneratedMethodAccessor3.invoke(Unknown Source)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:187)
        at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
        at com.sun.proxy.$Proxy28.allocate(Unknown Source)
        at org.apache.hadoop.yarn.client.api.impl.AMRMClientImpl.allocate(AMRMClientImpl.java:278)
        at org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl$HeartbeatThread.run(AMRMClientAsyncImpl.java:224)
Caused by: java.io.EOFException
        at java.io.DataInputStream.readInt(DataInputStream.java:392)
        at org.apache.hadoop.ipc.Client$Connection.receiveRpcResponse(Client.java:1071)
        at org.apache.hadoop.ipc.Client$Connection.run(Client.java:966)
2014-10-08 02:24:12,257 INFO [TaskSchedulerAppCaller #0] org.apache.tez.dag.app.rm.TaskSchedulerEventHandler: Error reported by scheduler
2014-10-08 02:24:12,258 INFO [AsyncDispatcher event handler] org.apache.tez.common.TezUtilsInternal: Redirecting log file based on addend: dag\_1412734988643\_0001\_1\_post


---

* [TEZ-1638](https://issues.apache.org/jira/browse/TEZ-1638) | *Critical* | **Missing type parametrization in runtime Input/Output configs**

In UnorderedInputConfig (https://github.com/apache/tez/blob/master/tez-runtime-library/src/main/java/org/apache/tez/runtime/library/conf/UnorderedKVInputConfig.java) some methods of SpecificBuilder have a parameterized return type (SpecificBuilder<E>) and some a non-parameterized return type (SpecificBuilder).

Shouldn't all methods return the parameterized version?


---

* [TEZ-1637](https://issues.apache.org/jira/browse/TEZ-1637) | *Major* | **Improved shuffle error handling across NM restarts**

Similar to MAPREDUCE-5891 :- need to make sure the Tez shufflehandler can handle NM restarts correctly. This is required for rolling upgrades


---

* [TEZ-1634](https://issues.apache.org/jira/browse/TEZ-1634) | *Major* | **BlockCompressorStream.finish() is called twice in IFile.close leading to Shuffle errors**

When IFile.Writer is closed, it explicitly calls compressedOut.finish(); And as a part of FSDataOutputStream.close(), it again internally calls finish().  Please refer o.a.h.i.compress.BlockCompressorStream for more details on finish(). This leads to additional 4 bytes being written to IFile.  This causes issues randomly during shuffle.  Also, this prevents IFileInputStream to do the proper checksumming.  

This error happens only when we try to fetch multiple attempt outputs using the same URL.  And is easily reproducible with SnappCompressionCodec.  First attempt output would be downloaded by fetcher and due to the last 4 bytes in the stream, it wouldn't do the proper checksumming in IFileInputStream.  This causes the subsequent attempt download to fail with the following exception.

Example error in shuffle phase is attached below.

>>>>
2014-09-15 09:54:22,950 WARN [fetcher [scope\_41] #31] org.apache.tez.runtime.library.common.shuffle.impl.Fetcher: Invalid map id 
java.lang.IllegalArgumentException: Invalid header received:  partition: 0
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyMapOutput(Fetcher.java:352)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyFromHost(Fetcher.java:294)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.run(Fetcher.java:160)
>>>>

I will attach the debug version of BlockCompressionStream with threaddump (which validates that finish() is called twice in IFile.close()).  This bug was present in earlier versions of Tez as well, and was able to consistently reproduce it now on local-vm itself.


---

* [TEZ-1633](https://issues.apache.org/jira/browse/TEZ-1633) | *Major* | **Fixed expected values in TestTaskRecovery.testRecovery\_OneTAStarted**

$ mvn clean package
{code}
Tests run: 17, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 1.747 sec <<< FAILURE!
testRecovery\_OneTAStarted(org.apache.tez.dag.app.dag.impl.TestTaskRecovery)  Time elapsed: 0.051 sec  <<< FAILURE!
java.lang.AssertionError: expected:<1> but was:<2>
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.failNotEquals(Assert.java:743)
	at org.junit.Assert.assertEquals(Assert.java:118)
	at org.junit.Assert.assertEquals(Assert.java:555)
	at org.junit.Assert.assertEquals(Assert.java:542)
	at org.apache.tez.dag.app.dag.impl.TestTaskRecovery.testRecovery\_OneTAStarted(TestTaskRecovery.java:277)

Running org.apache.tez.dag.app.dag.impl.TestVertexImpl
{code}


---

* [TEZ-1632](https://issues.apache.org/jira/browse/TEZ-1632) | *Major* | **NPE at TestPreemption.testPreemptionWithoutSession**

Some issues with multithreading
mockApp.getContext().getCurrentDAG() returns non-null value after 200-300ms.

{code}
$ mvn clean package
...
Tests run: 2, Failures: 0, Errors: 1, Skipped: 0, Time elapsed: 9.566 sec <<< FAILURE!
testPreemptionWithoutSession(org.apache.tez.dag.app.TestPreemption)  Time elapsed: 0.182 sec  <<< ERROR!
java.lang.NullPointerException: null
	at org.apache.tez.dag.app.TestPreemption.testPreemptionWithoutSession(TestPreemption.java:105)

Running org.apache.tez.client.TestLocalMode
{code}


---

* [TEZ-1629](https://issues.apache.org/jira/browse/TEZ-1629) | *Major* | **Replace ThreadPool's default RejectedExecutionHandler in ContainerLauncherImpl to void abort when AM shutdown**

2014-09-19 10:18:42,654 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.DAGAppMaster: On DAG completion. Old state: RUNNING new state: SUCCEEDED
2014-09-19 10:18:42,654 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.DAGAppMaster: Shutting down on completion of dag:dag\_1410976766734\_0795\_1
2014-09-19 10:18:42,654 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.DAGAppMaster: DAGAppMasterShutdownHandler invoked
2014-09-19 10:18:42,655 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.DAGAppMaster: Handling DAGAppMaster shutdown
2014-09-19 10:18:42,656 INFO [AMShutdownThread] org.apache.tez.dag.app.DAGAppMaster: Sleeping for 5 seconds before shutting down
2014-09-19 10:18:47,661 INFO [AMShutdownThread] org.apache.tez.dag.app.DAGAppMaster: Calling stop for all the services
2014-09-19 10:18:47,662 INFO [AMShutdownThread] org.apache.tez.dag.history.HistoryEventHandler: Stopping HistoryEventHandler
2014-09-19 10:18:47,663 INFO [AMShutdownThread] org.apache.tez.dag.history.recovery.RecoveryService: Stopping RecoveryService
2014-09-19 10:18:47,663 INFO [AMShutdownThread] org.apache.tez.dag.history.recovery.RecoveryService: Closing Summary Stream
2014-09-19 10:18:47,663 INFO [RecoveryEventHandlingThread] org.apache.tez.dag.history.recovery.RecoveryService: EventQueue take interrupted. Returning
2014-09-19 10:18:47,699 INFO [AMShutdownThread] org.apache.tez.dag.history.logging.ats.ATSHistoryLoggingService: Stopping ATSService, eventQueueBacklog=0
2014-09-19 10:18:47,699 INFO [HistoryEventHandlingThread] org.apache.tez.dag.history.logging.ats.ATSHistoryLoggingService: EventQueue take interrupted. Returning
2014-09-19 10:18:47,700 INFO [AMShutdownThread] org.apache.tez.dag.app.launcher.ContainerLauncherImpl: Sending a stop request to the NM for ContainerId: container\_1410976766734\_0795\_01\_000002
2014-09-19 10:18:47,711 INFO [AsyncDispatcher event handler] org.apache.tez.dag.history.HistoryEventHandler: [HISTORY][DAG:dag\_1410976766734\_0795\_1][Event:CONTAINER\_STOPPED]: containerId=container\_1410976766734\_0795\_01\_000002, stoppedTime=1411121927711, exitStatus=-100
2014-09-19 10:18:47,712 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.rm.container.AMContainerImpl: AMContainer container\_1410976766734\_0795\_01\_000002 transitioned from IDLE to STOP\_REQUESTED via event C\_NM\_STOP\_SENT
2014-09-19 10:18:47,713 INFO [DelayedContainerManager] org.apache.tez.dag.app.rm.YarnTaskSchedulerService: AllocatedContainerManager Thread interrupted
2014-09-19 10:18:47,713 ERROR [ContainerLauncher Event Handler] org.apache.hadoop.yarn.YarnUncaughtExceptionHandler: Thread Thread[ContainerLauncher Event Handler,5,main] threw an Exception.
java.util.concurrent.RejectedExecutionException: Task org.apache.tez.dag.app.launcher.ContainerLauncherImpl$EventProcessor@8b1f182 rejected from java.util.concurrent.ThreadPoolExecutor@5a669243[Terminated, pool size = 0, active threads = 0, queued tasks = 0, completed tasks = 1]
        at java.util.concurrent.ThreadPoolExecutor$AbortPolicy.rejectedExecution(ThreadPoolExecutor.java:2048)
        at java.util.concurrent.ThreadPoolExecutor.reject(ThreadPoolExecutor.java:821)
        at java.util.concurrent.ThreadPoolExecutor.execute(ThreadPoolExecutor.java:1372)
        at org.apache.tez.dag.app.launcher.ContainerLauncherImpl$1.run(ContainerLauncherImpl.java:310)


---

* [TEZ-1621](https://issues.apache.org/jira/browse/TEZ-1621) | *Major* | **Should report error to AM before shuting down TezChild**

While running an in session testorderedwordcount example the DAG failed with the following error on the console:
{noformat}
14/09/25 01:55:53 INFO examples.TestOrderedWordCount: DAG 1 diagnostics: [Vertex failed, vertexName=initialmap, vertexId=vertex\_1411586515507\_0110\_1\_00, diagnostics=[Task failed, taskId=task\_1411586515507\_0110\_1\_00\_000000, diagnostics=[TaskAttempt 0 failed, info=[Container container\_1411586515507\_0110\_01\_000002 finished with diagnostics set to [Container failed. Exception from container-launch.
Container id: container\_1411586515507\_0110\_01\_000002
Exit code: 255
Stack trace: ExitCodeException exitCode=255:
        at org.apache.hadoop.util.Shell.runCommand(Shell.java:538)
        at org.apache.hadoop.util.Shell.run(Shell.java:455)
        at org.apache.hadoop.util.Shell$ShellCommandExecutor.execute(Shell.java:702)
        at org.apache.hadoop.yarn.server.nodemanager.LinuxContainerExecutor.launchContainer(LinuxContainerExecutor.java:290)
        at org.apache.hadoop.yarn.server.nodemanager.containermanager.launcher.ContainerLaunch.call(ContainerLaunch.java:299)
        at org.apache.hadoop.yarn.server.nodemanager.containermanager.launcher.ContainerLaunch.call(ContainerLaunch.java:81)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{noformat}
This wasn't very helpful, the root cause is in the application log:
{noformat}
2014-09-25 01:55:41,246 ERROR [TezChild] org.apache.tez.runtime.task.TezTaskRunner: Exception of type Error. Exiting now
java.lang.UnsatisfiedLinkError: org.apache.hadoop.util.NativeCrc32.nativeVerifyChunkedSums(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IILjava/lang/String;J)V
        at org.apache.hadoop.util.NativeCrc32.nativeVerifyChunkedSums(Native Method)
        at org.apache.hadoop.util.NativeCrc32.verifyChunkedSums(NativeCrc32.java:57)
        at org.apache.hadoop.util.DataChecksum.verifyChunkedSums(DataChecksum.java:291)
        at org.apache.hadoop.hdfs.BlockReaderLocal.fillBuffer(BlockReaderLocal.java:344)
        at org.apache.hadoop.hdfs.BlockReaderLocal.fillDataBuf(BlockReaderLocal.java:444)
        at org.apache.hadoop.hdfs.BlockReaderLocal.readWithBounceBuffer(BlockReaderLocal.java:575)
        at org.apache.hadoop.hdfs.BlockReaderLocal.read(BlockReaderLocal.java:539)
        at org.apache.hadoop.hdfs.DFSInputStream$ByteArrayStrategy.doRead(DFSInputStream.java:683)
        at org.apache.hadoop.hdfs.DFSInputStream.readBuffer(DFSInputStream.java:739)
        at org.apache.hadoop.hdfs.DFSInputStream.readWithStrategy(DFSInputStream.java:796)
        at org.apache.hadoop.hdfs.DFSInputStream.read(DFSInputStream.java:837)
        at java.io.DataInputStream.read(DataInputStream.java:100)
        at org.apache.hadoop.util.LineReader.fillBuffer(LineReader.java:180)
        at org.apache.hadoop.util.LineReader.readDefaultLine(LineReader.java:216)
        at org.apache.hadoop.util.LineReader.readLine(LineReader.java:174)
        at org.apache.hadoop.mapreduce.lib.input.LineRecordReader.nextKeyValue(LineRecordReader.java:149)
        at org.apache.hadoop.mapreduce.split.TezGroupedSplitsInputFormat$TezGroupedSplitsRecordReader.nextKeyValue(TezGroupedSplitsInputFormat.java:167)
        at org.apache.tez.mapreduce.lib.MRReaderMapReduce.next(MRReaderMapReduce.java:116)
        at org.apache.tez.mapreduce.processor.map.MapProcessor$NewRecordReader.nextKeyValue(MapProcessor.java:266)
        at org.apache.tez.mapreduce.hadoop.mapreduce.MapContextImpl.nextKeyValue(MapContextImpl.java:81)
        at org.apache.hadoop.mapreduce.lib.map.WrappedMapper$Context.nextKeyValue(WrappedMapper.java:91)
        at org.apache.hadoop.mapreduce.Mapper.run(Mapper.java:144)
        at org.apache.tez.mapreduce.processor.map.MapProcessor.runNewMapper(MapProcessor.java:237)
        at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:124)
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:324)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:180)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:172)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:172)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:167)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
2014-09-25 01:55:41,250 INFO [TezChild] org.apache.hadoop.util.ExitUtil: Exiting with status -1
{noformat}
Attached are the complete console.log and application log.


---

* [TEZ-1620](https://issues.apache.org/jira/browse/TEZ-1620) | *Major* | **Wait for application finish before stopping MiniTezCluster**

Currently, we sleep 10 seconds to wait for DAGAppMaster to finish, otherwise DAGAppMaster will hang there for connecting RM to unregister. 
We should wait for all the applications finish before stopping MiniTezCluster.


---

* [TEZ-1614](https://issues.apache.org/jira/browse/TEZ-1614) | *Major* | **Use setFromConfiguration() in SortMergeJoinExample to demonstrate the usage**

Currently setFromConfiguration is used in all examples.  setFromConfiguration  need not be invoked in all examples and is an optional invocation.  Use setFromConfiguration() only in SortMergeJoinExample to demonstrate the usage.


---

* [TEZ-1596](https://issues.apache.org/jira/browse/TEZ-1596) | *Major* | **Secure Shuffle utils is extremely expensive for fast queries**

Generating the hash for YARN's secure shuffle is more expensive than the actual HTTP call once keep-alive is turned on.

!Shuffle\_generateHash.png!


---

* [TEZ-1590](https://issues.apache.org/jira/browse/TEZ-1590) | *Major* | **Fetchers should not report failures after the Processor on the task completes**

Details in https://issues.apache.org/jira/browse/PIG-4069?focusedCommentId=14136710&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14136710


---

* [TEZ-1579](https://issues.apache.org/jira/browse/TEZ-1579) | *Minor* | **MR examples should be setting mapreduce.framework.name to yarn-tez**

By default, if framework name is not set to yarn-tez, the examples will end up using MR even though they are part of the tez examples jar. 

The example driver may need to be changed to inject the framework name.


---

* [TEZ-1547](https://issues.apache.org/jira/browse/TEZ-1547) | *Major* | **Make use of state change notifier in VertexManagerPlugins and fix TEZ-1494 without latency penalty**

Instead of the various APIs like onVertexStarted, simple notifications could be sent.
Some existing APIs could end up being deprecated.


---

* [TEZ-1542](https://issues.apache.org/jira/browse/TEZ-1542) | *Major* | **Local Mode crashes on concurrentModificationException**

java.util.ConcurrentModificationException
        at java.util.HashMap$HashIterator.nextEntry(HashMap.java:894)
        at java.util.HashMap$EntryIterator.next(HashMap.java:934)
        at java.util.HashMap$EntryIterator.next(HashMap.java:932)
        at
java.lang.ProcessEnvironment$StringEntrySet$1.next(ProcessEnvironment.java:332)
        at
java.lang.ProcessEnvironment$StringEntrySet$1.next(ProcessEnvironment.java:328)
        at
java.util.Collections$UnmodifiableMap$UnmodifiableEntrySet$1.next(Collections.java:1403)
        at
java.util.Collections$UnmodifiableMap$UnmodifiableEntrySet$1.next(Collections.java:1396)
        at java.util.HashMap.putAllForCreate(HashMap.java:533)
        at java.util.HashMap.<init>(HashMap.java:320)
        at
org.apache.tez.dag.utils.EnvironmentUpdateUtils.put(EnvironmentUpdateUtils.java:42)
        at
org.apache.tez.dag.app.launcher.LocalContainerLauncher.<init>(LocalContainerLauncher.java:112)
        at
org.apache.tez.dag.app.DAGAppMaster.createContainerLauncher(DAGAppMaster.java:819)
        at
org.apache.tez.dag.app.DAGAppMaster.serviceInit(DAGAppMaster.java:379)
        at
org.apache.hadoop.service.AbstractService.init(AbstractService.java:163)
        at org.apache.tez.dag.app.DAGAppMaster$5.run(DAGAppMaster.java:1904)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at
org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1637)
        at
org.apache.tez.dag.app.DAGAppMaster.initAndStartAppMaster(DAGAppMaster.java:1901)
        at org.apache.tez.client.LocalClient$1.run(LocalClient.java:294)
        at java.lang.Thread.run(Thread.java:722)


---

* [TEZ-1479](https://issues.apache.org/jira/browse/TEZ-1479) | *Major* | **Disambiguate between ShuffleInputEventHandler and ShuffleInputEventHandlerImpl (which are not related)**

common.shuffle.impl.ShuffleInputEventHandler is not related to shuffle.common.impl.ShuffleInputEventHandlerImpl 

This is extremely confusing and needs refactoring internally to be readable.

Same applies to common.shuffle.impl.Fetcher and shuffle.common.Fetcher classes


---

* [TEZ-1470](https://issues.apache.org/jira/browse/TEZ-1470) | *Minor* | **Recovery fails due to TaskAttemptFinishedEvent being recorded multiple times for the same task**

TaskAttempt can move from SUCCEEDED to KILLED due to node failure. In this case TaskAttemptFinishedEvent may been recorded 2 times,and will cause failure in recovery.

{code}
14-05-16 08:07:18,386 INFO [main] org.apache.hadoop.service.AbstractService: Service org.apache.tez.dag.app.DAGAppMaster failed in state STARTED; cause: org.apache.tez.dag.api.TezUncheckedException: Invalid recovery event for attempt finished, more completions than starts encountered, taskId=task\_1400226928057\_0001\_1\_05\_000005, finishedAttempts=2, incompleteAttempts=-1
org.apache.tez.dag.api.TezUncheckedException: Invalid recovery event for attempt finished, more completions than starts encountered, taskId=task\_1400226928057\_0001\_1\_05\_000005, finishedAttempts=2, incompleteAttempts=-1
	at org.apache.tez.dag.app.dag.impl.TaskImpl.restoreFromEvent(TaskImpl.java:592)
	at org.apache.tez.dag.app.RecoveryParser.parseRecoveryData(RecoveryParser.java:814)
	at org.apache.tez.dag.app.DAGAppMaster.recoverDAG(DAGAppMaster.java:1529)
	at org.apache.tez.dag.app.DAGAppMaster.serviceStart(DAGAppMaster.java:1558)
	at org.apache.hadoop.service.AbstractService.start(AbstractService.java:193)
	at org.apache.tez.dag.app.DAGAppMaster$5.run(DAGAppMaster.java:1957)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1557)
	at org.apache.tez.dag.app.DAGAppMaster.initAndStartAppMaster(DAGAppMaster.java:1953)
	at org.apache.tez.dag.app.DAGAppMaster.main(DAGAppMaster.java:1792)
{code}


---

* [TEZ-1462](https://issues.apache.org/jira/browse/TEZ-1462) | *Trivial* | **Remove unnecessary SuppressWarnings**

Eclipse finds couple unnecessary SuppressWarnings


---

* [TEZ-1424](https://issues.apache.org/jira/browse/TEZ-1424) | *Critical* | **Fixes to DAG text representation in debug mode**

Several fixes required
- Don't log entire tokens, just the identifier should be enough
- DAG ID (or unique number needs to be used). Otherwise we get only one file per session
- This should not go into the local-directory - since that isn't accessible. Instead the log directory would be a better place.

Marking as critical for 0.5.1 since this is very useful for debugging.


---

* [TEZ-1396](https://issues.apache.org/jira/browse/TEZ-1396) | *Major* | **Grouping should generate consistent groups when given the same set of splits**

Currently, it seems like Grouping can end up generating a different set of groups on different invocations of the same set of splits and target tasks.

The order likely gets affected by the randomization in the block location report from HDFS.

This should be consistent for better cache utilization.


---

* [TEZ-1267](https://issues.apache.org/jira/browse/TEZ-1267) | *Critical* | **Exception handling for VertexManager**

Events are generated by user code. In some places they're also handled by user code within the AM. Currently, exceptions which are generated when handling user code will end up killing the AM (and hence leading to a retry).
Instead, failure to handle such events, should cause the application to fail.


---

* [TEZ-1210](https://issues.apache.org/jira/browse/TEZ-1210) | *Major* | **TezClientUtils.localizeDagPlanAsText() needs to be fixed for session mode**

It writes the dagPlan in text form to the same location. Either it should not be invoked in session mode or it should written with a differentiating prefix.


---

* [TEZ-1141](https://issues.apache.org/jira/browse/TEZ-1141) | *Major* | **DAGStatus.Progress should include number of failed and killed attempts**

Currently its impossible to know whether a job is seeing a lot of issues and failures because we only report running tasks. Eventually the job fails but before that we have no indication that a bunch of task failures have been happening.


---

* [TEZ-792](https://issues.apache.org/jira/browse/TEZ-792) | *Critical* | **Default staging path should have user name**

Current default is "/tmp/tez/staging"
In a multi-tenant environment, only the first user will create the directory. The subsequent users will be unable to write to this directory due to permission and will ultimately fail the job.

This JIRA is to modify the default directory from /tmp/tez/staging to something like /tmp/tez-joe/staging.



