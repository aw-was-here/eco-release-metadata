
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
#  0.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2446](https://issues.apache.org/jira/browse/TEZ-2446) | *Major* | **Tez UI: Add tezVersion details when downloading timeline data for offline use**

TEZ-2159 - Enables downloading timeline data for offline use.  It would be good to add TEZ\_APPLICATION (Which contains tezVersion, configs etc) along with this.
\cc [~pramachandran]


---

* [TEZ-2437](https://issues.apache.org/jira/browse/TEZ-2437) | *Major* | **FilterLinesByWord NPEs when run in Localmode**

Subsequent to Tez-1969 [https://issues.apache.org/jira/browse/TEZ-1969] I've noticed that org.apache.tez.mapreduce.examples.FilterLinesByWord.java NPEs with this stack trace, when run on Localmode:

at org.apache.tez.client.LocalClient.getApplicationReport(LocalClient.java:145)
	at org.apache.tez.dag.api.client.rpc.DAGClientRPCImpl.getAppReport(DAGClientRPCImpl.java:213)
	at org.apache.tez.dag.api.client.rpc.DAGClientRPCImpl.createAMProxyIfNeeded(DAGClientRPCImpl.java:230)
	at org.apache.tez.dag.api.client.rpc.DAGClientRPCImpl.getVertexStatus(DAGClientRPCImpl.java:102)
	at org.apache.tez.dag.api.client.DAGClientImpl.getVertexStatusViaAM(DAGClientImpl.java:257)
	at org.apache.tez.dag.api.client.DAGClientImpl.getVertexStatus(DAGClientImpl.java:166)
	at org.apache.tez.mapreduce.examples.ExampleDriver.printDAGStatus(ExampleDriver.java:122)


---

* [TEZ-2432](https://issues.apache.org/jira/browse/TEZ-2432) | *Major* | **Syntax error in DOAP file release section**

DOAP files can contain details of multiple release Versions, however each must be listed in a separate release section, for example:

<release>
      <Version>
        <name>Apache XYZ</name>
        <created>2015-02-16</created>
        <revision>1.6.2</revision>
      </Version>
</release>
<release>
      <Version>
        <name>Apache XYZ</name>
        <created>2014-09-24</created>
        <revision>1.6.1</revision>
      </Version>
</release>

Please can the project DOAP be corrected accordingly?

Thanks.


---

* [TEZ-2426](https://issues.apache.org/jira/browse/TEZ-2426) | *Critical* | **Ensure the eventRouter thread completes before switching to a new task and thread safety fixes in IPOContexts.**

Sequence of events
1) Task A starts in a container
2) Task A complete event comes to AM
3) Task B starts in the same container
4) Task A's input calls some method on its context. Crashes with NPE
5) The crash sends an input failed event for Task A to the AM
6) Task A state machine crashes saying cannot handle failed after success

In some cases, it could be that status update event is also sent after completion, though not sure if its related to the failed event being sent.


---

* [TEZ-2424](https://issues.apache.org/jira/browse/TEZ-2424) | *Minor* | **Bump up max counter group name length limit to account for per\_io counters**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-2423](https://issues.apache.org/jira/browse/TEZ-2423) | *Major* | **Tez UI: Remove Attempt Index column from task-\>attempts page**

Attempt Index and Attempt No serves the same purpose.


---

* [TEZ-2417](https://issues.apache.org/jira/browse/TEZ-2417) | *Major* | **Tez UI: Counters are blank in the Attempts page if all attempts failed**

If all attempts fail, clicking the main Counters link on the Attempts page gives an empty counters table.

- We should probably display a message stating that there are no counters.
- For the task counters page, if the task was in a failed or killed state display a message that says "Task [FAILED/KILLED], please check the counters of individual task attempts.".


---

* [TEZ-2415](https://issues.apache.org/jira/browse/TEZ-2415) | *Major* | **PMC RDF needs to use asfext:pmc, not asfext:PMC**

The asfext DOAP extension PMC data documentation [1] was clarified recently, as there was some historic confusion over whether the property name should be in upper or lower case.

It has now been confirmed that lower case should be used [2]. 

There are a few PMC data files which currently use upper case; your PMC is one such.

Please could the project change "asfext:PMC" to "asfext:pmc" in the file? There will be two such references.

Thanks.

[1] http://projects.apache.org/docs/pmc.html
[2] http://projects.apache.org/ns/asfext


---

* [TEZ-2412](https://issues.apache.org/jira/browse/TEZ-2412) | *Blocker* | **Should kill vertex in DAGImpl#VertexRerunWhileCommitting**


* When vertex rerun, it move to RUNNING state, so should kill it in DAGImpl#VertexRerunWhileCommitting


---

* [TEZ-2410](https://issues.apache.org/jira/browse/TEZ-2410) | *Blocker* | **VertexGroupCommitFinishedEvent & VertexCommitStartedEvent is not logged correctly**

VertexGroupCommitFinishedEvent may be logged for non-vertex group commits.
VertexGroupCommitFinishedEvent may be logged for each member vertex of the group instead of once per group.
VertexCommitStartedEvent may be logged for each output of vertex


---

* [TEZ-2406](https://issues.apache.org/jira/browse/TEZ-2406) | *Major* | **Tez UI: Display per-io counter columns in task and attempt pages under vertex**

- We will auto-populate all the counter names including io counter names to the tasks (under a vertex) and task attempts (under task, vertex).
- To enable navigation the column names will be searchable in the pop-up for column selection.
- Per-io counter names will not be stored in the personalization settings given they are dag / vertex specific.


---

* [TEZ-2405](https://issues.apache.org/jira/browse/TEZ-2405) | *Critical* | **PipelinedSorter can throw NPE with custom compartor**

If custom comparators are used,  PipelinedSorter can throw NPE depending on custom comparator implementations.

{noformat}
], TaskAttempt 1 failed, info=[Error: Failure while running task:java.lang.NullPointerException
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SpanIterator.compareTo(PipelinedSorter.java:837)
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SpanIterator.compareTo(PipelinedSorter.java:767)
	at java.util.PriorityQueue.siftUpComparable(PriorityQueue.java:637)
	at java.util.PriorityQueue.siftUp(PriorityQueue.java:629)
	at java.util.PriorityQueue.offer(PriorityQueue.java:329)
	at java.util.PriorityQueue.add(PriorityQueue.java:306)
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SpanMerger.add(PipelinedSorter.java:996)
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$SpanMerger.next(PipelinedSorter.java:1065)
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter$PartitionFilter.next(PipelinedSorter.java:936)
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.spill(PipelinedSorter.java:366)
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.flush(PipelinedSorter.java:406)
	at org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput.close(OrderedPartitionedKVOutput.java:183)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.close(LogicalIOProcessorRuntimeTask.java:355)
	at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:181)
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
{noformat}


---

* [TEZ-2404](https://issues.apache.org/jira/browse/TEZ-2404) | *Critical* | **Handle DataMovementEvent before its TaskAttemptCompletedEvent**

TEZ-2325 route TASK\_ATTEMPT\_COMPLETED\_EVENT directly to the attempt, but it would cause recovery issue. Recovery need that DataMovement event is handled before TaskAttemptCompletedEvent, otherwise DataMovement event may be lost in recovering and cause the its dependent tasks hang.

2 Ways to fix this issue.

1. Still route TaskAtttemptCompletedEvent in Vertex
2. route DataMovementEvent before TaskAttemptCompeltedEvent in TezTaskAttemptListener


---

* [TEZ-2397](https://issues.apache.org/jira/browse/TEZ-2397) | *Critical* | **Translation of LocalResources via Tez plan serialization can be lossy**

Happens when there's no port information. The way we serialize a YarnURL into a string causes the reconstructed path to include the port as -1, which is an invalid URL. Path/URL reconstruction from this causes the hostname to be lost.
This is problematic on clusters running HDFA HA - since there's no host:port information, only a service name. I'd imaging it'll be a problem for viewfs as well.


---

* [TEZ-2395](https://issues.apache.org/jira/browse/TEZ-2395) | *Major* | **Tez UI: Minimum/Maximum Duration show a empty bracket next to 0 secs when you purposefully failed a job.**

I set hive.tez.java.opts=-Xmx1m in order to fail a query.
Vertex Details shows an empty bracket as shown in the attached screenshot:
Minimum Duration 0 secs [ ] 
Maximum Duration 0 secs [ ]
It would look better if the empty bracket is not displayed in a case there is no ask attempts.

reported by [~taksaito]


---

* [TEZ-2392](https://issues.apache.org/jira/browse/TEZ-2392) | *Critical* | **Have all readers throw an Exception on incorrect next() usage**

Follow up from TEZ-2348.
Marking as critical since this is a behaviour change, and we should get it in early.


---

* [TEZ-2389](https://issues.apache.org/jira/browse/TEZ-2389) | *Major* | **Tez UI: Sort by attempt-no is incorrect in attempts pages.**

Reported by [~tassapola]


---

* [TEZ-2386](https://issues.apache.org/jira/browse/TEZ-2386) | *Major* | **Tez UI: Inconsistent usage of icon colors**

if there's failed attempts in a DAG, and it succeeds - an orange icon shows up on the DAG page. This is very useful to identify DAGs which may need some debugging.
However, the color is Green for Vertex / Task views after this - so it's difficult to know which one actually had problems.


---

* [TEZ-2383](https://issues.apache.org/jira/browse/TEZ-2383) | *Major* | **Cleanup input/output/processor contexts in LogicalIOProcessorRuntimeTask**

Currently they get released when sorter object gets GC-ed, but it might be good to explicitly release them on close as well.


---

* [TEZ-2379](https://issues.apache.org/jira/browse/TEZ-2379) | *Blocker* | **org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: T\_ATTEMPT\_KILLED at KILLED**

{noformat}
2015-04-28 04:49:32,455 ERROR [Dispatcher thread: Central] impl.TaskImpl: Can't handle this event at current state for task\_1429683757595\_0479\_1\_03\_000013
org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: T\_ATTEMPT\_KILLED at KILLED
        at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:305)
        at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
        at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
        at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
        at org.apache.tez.dag.app.dag.impl.TaskImpl.handle(TaskImpl.java:853)
        at org.apache.tez.dag.app.dag.impl.TaskImpl.handle(TaskImpl.java:106)
        at org.apache.tez.dag.app.DAGAppMaster$TaskEventDispatcher.handle(DAGAppMaster.java:1874)
        at org.apache.tez.dag.app.DAGAppMaster$TaskEventDispatcher.handle(DAGAppMaster.java:1860)
        at org.apache.tez.common.AsyncDispatcher.dispatch(AsyncDispatcher.java:182)
        at org.apache.tez.common.AsyncDispatcher$1.run(AsyncDispatcher.java:113)
        at java.lang.Thread.run(Thread.java:745)
{noformat}

Additional notes:
============
Hive - latest build 
Tez - master
tpch-200 gb scale q\_17 (kill the job in the middle of execution)


---

* [TEZ-2369](https://issues.apache.org/jira/browse/TEZ-2369) | *Major* | **Add a few unit tests for RootInputInitializerManager**

{code}
-      Integer successfulAttempt = vertexSuccessfulAttemptMap.get(taskId);
+      Integer successfulAttempt = vertexSuccessfulAttemptMap.get(taskId.getId());
{code}

This could cause events to be sent multiple times.


---

* [TEZ-2368](https://issues.apache.org/jira/browse/TEZ-2368) | *Major* | **Make a dag identifier available in Context classes**

Provide the dag number, which is a unique number, for each dag running within an application in the TezInputContext, TezOutputContext, TezProcessorContext.
When containers are re-used, or for external services, this can be used to generate intermediate data to a dag specific directory instead of an application specific directory, where it becomes difficult to differentiate between different dags.
The DAG name does provide this - but is not suitable for use in a directory name. Hashing the name is an option, but can lead to collisions.
Generating data into a dag specific directory will eventually only be usable when we move away from the default MR handler, or enhance it to support an additional parameter.


---

* [TEZ-2366](https://issues.apache.org/jira/browse/TEZ-2366) | *Critical* | **Pig tez MiniTezCluster unit tests fail intermittently after TEZ-2333**

There are around 20 unit tests (out of around 2000) fail intermittently after TEZ-2333. Here is a stack:
{code}
org.apache.hadoop.util.DiskChecker$DiskErrorException: Could not find output/attempt\_1429899954360\_0001\_1\_01\_000000\_1\_10003/file.out.index in any of the configured local directories
        at org.apache.hadoop.fs.LocalDirAllocator$AllocatorPerContext.getLocalPathToRead(LocalDirAllocator.java:449)
        at org.apache.hadoop.fs.LocalDirAllocator.getLocalPathToRead(LocalDirAllocator.java:164)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.getShuffleInputFileName(Fetcher.java:611)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.getTezIndexRecord(Fetcher.java:591)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.doLocalDiskFetch(Fetcher.java:536)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.setupLocalDiskFetch(Fetcher.java:517)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:190)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:72)
        at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)
{code}

To reproduce that in Pig test, using the following commands:
svn co http://svn.apache.org/repos/asf/pig/trunk
ant -Dhadoopversion=23 -Dtest.exec.type=tez -Dtestcase=TestTezAutoParallelism test

Note in Pig codebase, we already set TEZ\_RUNTIME\_OPTIMIZE\_LOCAL\_FETCH to "true" (http://svn.apache.org/viewvc/pig/trunk/src/org/apache/pig/backend/hadoop/executionengine/tez/TezLauncher.java?view=markup). I tried changing TEZ\_RUNTIME\_OPTIMIZE\_LOCAL\_FETCH to "false" in Pig and does not help.


---

* [TEZ-2364](https://issues.apache.org/jira/browse/TEZ-2364) | *Major* | **'joindatagen' AM picks wrong staging dir**

joindatagen application is run as hrt\_qa user. and tez.staging-dir is set as  {noformat}'/tmp/${user.name}/staging'{noformat}

Here, AM tries to access "/tmp/yarn/staging" dir instead "/tmp/hrt\_qa/staging".

{code}
2015-04-23 21:09:13,032 INFO [main] app.DAGAppMaster: Comparing client version with AM version, clientVersion=0.7.0.2.3.0.0-1716, AMVersion=0.7.0.2.3.0.0-1716
2015-04-23 21:09:14,653 INFO [main] service.AbstractService: Service org.apache.tez.dag.app.DAGAppMaster failed in state INITED; cause: org.apache.tez.dag.api.TezUncheckedException: org.apache.hadoop.security.AccessControlException: Permission denied: user=hrt\_qa, access=EXECUTE, inode="/tmp/yarn/staging":yarn:hdfs:drwx------
        at org.apache.hadoop.hdfs.server.namenode.FSPermissionChecker.check(FSPermissionChecker.java:319)
        at org.apache.hadoop.hdfs.server.namenode.FSPermissionChecker.checkTraverse(FSPermissionChecker.java:259)
        at org.apache.hadoop.hdfs.server.namenode.FSPermissionChecker.checkPermission(FSPermissionChecker.java:205)
        at org.apache.hadoop.hdfs.server.namenode.FSPermissionChecker.checkPermission(FSPermissionChecker.java:190)
        at org.apache.hadoop.hdfs.server.namenode.FSDirectory.checkPermission(FSDirectory.java:1698)
        at org.apache.hadoop.hdfs.server.namenode.FSDirStatAndListingOp.getFileInfo(FSDirStatAndListingOp.java:108)
        at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.getFileInfo(FSNamesystem.java:3849)
        at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.getFileInfo(NameNodeRpcServer.java:1005)
        at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.getFileInfo(ClientNamenodeProtocolServerSideTranslatorPB.java:843)
        at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:616)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:969)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2049)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2045)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2043)
{code}


---

* [TEZ-2363](https://issues.apache.org/jira/browse/TEZ-2363) | *Minor* | **Counters: off by 1 error for REDUCE\_INPUT\_GROUPS counter**

The reduce input key groups are not incremented for the first key in operation, only for the second key does it increment in moveToNext() -> nextKey() -> inputKeyCounter.increment(1);


---

* [TEZ-2362](https://issues.apache.org/jira/browse/TEZ-2362) | *Major* | **State Change Notifier Thread should be stopped when dag is completed**

For each dag, there's one thread of State Change Notifier. Should stop it when dag is completed. Otherwise it may exhaust the thread resources of AM and slow down AM for one sessions with lots of DAGs.  

JStack trace for multiple threads of State Change Notifier
{code}

"State Change Notifier DAG: dag\_1429844178238\_0001\_3" daemon prio=5 tid=0x00007fa525596800 nid=0x102503 waiting on condition [0x000000019e362000]
   java.lang.Thread.State: WAITING (parking)
    at sun.misc.Unsafe.park(Native Method)
    - parking to wait for  <0x0000000706f2b3e8> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
    at java.util.concurrent.locks.LockSupport.park(LockSupport.java:186)
    at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2043)
    at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:442)
    at org.apache.tez.dag.app.dag.StateChangeNotifier$1.run(StateChangeNotifier.java:100)

   Locked ownable synchronizers:
    - None

"State Change Notifier DAG: dag\_1429844178238\_0001\_2" daemon prio=5 tid=0x00007fa529025000 nid=0x101f03 waiting on condition [0x000000019e059000]
   java.lang.Thread.State: WAITING (parking)
    at sun.misc.Unsafe.park(Native Method)
    - parking to wait for  <0x0000000706f2f3e8> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
    at java.util.concurrent.locks.LockSupport.park(LockSupport.java:186)
    at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2043)
    at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:442)
    at org.apache.tez.dag.app.dag.StateChangeNotifier$1.run(StateChangeNotifier.java:100)

   Locked ownable synchronizers:
    - None

"State Change Notifier DAG: dag\_1429844178238\_0001\_1" daemon prio=5 tid=0x00007fa52539a800 nid=0xd1133 waiting on condition [0x00000001859d3000]
   java.lang.Thread.State: WAITING (parking)
    at sun.misc.Unsafe.park(Native Method)
    - parking to wait for  <0x0000000706f2d500> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
    at java.util.concurrent.locks.LockSupport.park(LockSupport.java:186)
    at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2043)
    at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:442)
    at org.apache.tez.dag.app.dag.StateChangeNotifier$1.run(StateChangeNotifier.java:100)

   Locked ownable synchronizers:
    - None

"State Change Notifier DAG: dag\_1429844178013\_0001\_1" daemon prio=5 tid=0x00007fa526396800 nid=0xd191b waiting on condition [0x0000000192a3d000]
   java.lang.Thread.State: WAITING (parking)
    at sun.misc.Unsafe.park(Native Method)
    - parking to wait for  <0x0000000706f18c98> (a java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject)
    at java.util.concurrent.locks.LockSupport.park(LockSupport.java:186)
    at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2043)
    at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:442)
    at org.apache.tez.dag.app.dag.StateChangeNotifier$1.run(StateChangeNotifier.java:100)

   Locked ownable synchronizers:
    - None
{code}


---

* [TEZ-2360](https://issues.apache.org/jira/browse/TEZ-2360) | *Major* | **per-io counters flag should generate both overall and per-edge counters**

Currently, the per-io flag disables overall per task counters and retains only per edge counters. It would be useful to have both overall and per edge counters.


---

* [TEZ-2358](https://issues.apache.org/jira/browse/TEZ-2358) | *Blocker* | **Pipelined Shuffle: MergeManager assumptions about 1 merge per source-task**

The Tez MergeManager code assumes that the src-task-id is unique between merge operations, this results in some confusion when two merge sequences have to process output from the same src-task-id.

{code}
private TezRawKeyValueIterator finalMerge(Configuration job, FileSystem fs,
                                       List<MapOutput> inMemoryMapOutputs,
                                       List<FileChunk> onDiskMapOutputs
...
 if (inMemoryMapOutputs.size() > 0) {
      int srcTaskId = inMemoryMapOutputs.get(0).getAttemptIdentifier().getInputIdentifier().getInputIndex();
...
       // must spill to disk, but can't retain in-mem for intermediate merge
        final Path outputPath = 
          mapOutputFile.getInputFileForWrite(srcTaskId,
                                             inMemToDiskBytes).suffix(
                                                 Constants.MERGED\_OUTPUT\_PREFIX);
...
{code}

This or some scenario related to this, results in the following FileChunks list which contains identical named paths with different lengths.

{code}
2015-04-23 03:28:50,983 INFO [MemtoDiskMerger [Map\_1]] orderedgrouped.MergeManager: Initiating in-memory merge with 6 segments...
2015-04-23 03:28:50,987 INFO [MemtoDiskMerger [Map\_1]] impl.TezMerger: Merging 6 sorted segments
2015-04-23 03:28:50,988 INFO [MemtoDiskMerger [Map\_1]] impl.TezMerger: Down to the last merge-pass, with 6 segments left of total size: 1165944755 bytes
2015-04-23 03:28:58,495 INFO [MemtoDiskMerger [Map\_1]] orderedgrouped.MergeManager: attempt\_1429683757595\_0141\_1\_01\_000143\_0\_10027 Merge of the 6 files in-memory complete. Local file is /grid/5/cluster/yarn/local/usercache/gopal/appcache/application\_1429683757595\_0141/attempt\_1429683757595\_0141\_1\_01\_000143\_0\_10027\_spill\_404.out.merged of size 785583965
2015-04-23 03:28:58,496 INFO [ShuffleAndMergeRunner [Map\_1]] orderedgrouped.MergeManager: finalMerge called with 0 in-memory map-outputs and 5 on-disk map-outputs
2015-04-23 03:28:58,496 INFO [ShuffleAndMergeRunner [Map\_1]] orderedgrouped.MergeManager: GOPAL: onDiskBytes = 365232290 += 365232290for/grid/4/cluster/yarn/local/usercache/gopal/appcache/application\_1429683757595\_0141/attempt\_1429683757595\_0141\_1\_01\_000143\_0\_10027\_spill\_1023.out
2015-04-23 03:28:58,496 INFO [ShuffleAndMergeRunner [Map\_1]] orderedgrouped.MergeManager: GOPAL: onDiskBytes = 730529899 += 365297609for/grid/5/cluster/yarn/local/usercache/gopal/appcache/application\_1429683757595\_0141/attempt\_1429683757595\_0141\_1\_01\_000143\_0\_10027\_spill\_404.out
2015-04-23 03:28:58,496 INFO [ShuffleAndMergeRunner [Map\_1]] orderedgrouped.MergeManager: GOPAL: onDiskBytes = 1095828683 += 365298784for/grid/5/cluster/yarn/local/usercache/gopal/appcache/application\_1429683757595\_0141/attempt\_1429683757595\_0141\_1\_01\_000143\_0\_10027\_spill\_404.out
{code}

The multiple instances of 404.out indicates that we pulled two pipelined chunks of the same shuffle src id, once into memory and twice onto disk.

{code}
2015-04-23 03:28:08,256 INFO [TezTaskEventRouter[attempt\_1429683757595\_0141\_1\_01\_000143\_0]] orderedgrouped.ShuffleInputEventHandlerOrderedGrouped: DME srcIdx: 143, targetIdx: 404, attemptNum: 0, payload: [hasEmptyPartitions: true, host: cn047-10.l42scl.hortonworks.com, port: 13562, pathComponent: attempt\_1429683757595\_0141\_1\_00\_000404\_0\_10009\_0, runDuration: 0]
2015-04-23 03:28:08,270 INFO [TezTaskEventRouter[attempt\_1429683757595\_0141\_1\_01\_000143\_0]] orderedgrouped.ShuffleInputEventHandlerOrderedGrouped: DME srcIdx: 143, targetIdx: 404, attemptNum: 0, payload: [hasEmptyPartitions: true, host: cn047-10.l42scl.hortonworks.com, port: 13562, pathComponent: attempt\_1429683757595\_0141\_1\_00\_000404\_0\_10009\_1, runDuration: 0]
2015-04-23 03:28:08,272 INFO [TezTaskEventRouter[attempt\_1429683757595\_0141\_1\_01\_000143\_0]] orderedgrouped.ShuffleInputEventHandlerOrderedGrouped: DME srcIdx: 143, targetIdx: 404, attemptNum: 0, payload: [hasEmptyPartitions: true, host: cn047-10.l42scl.hortonworks.com, port: 13562, pathComponent: attempt\_1429683757595\_0141\_1\_00\_000404\_0\_10009\_2, runDuration: 0]
{code}

This will fail depending on how many times \_404\_0 is at the top of the FileChunks list in this run.


---

* [TEZ-2357](https://issues.apache.org/jira/browse/TEZ-2357) | *Major* | **Tez UI: misc.js.orig is committed by accident**

\cc [~pramachandran] [~Sreenath]


---

* [TEZ-2345](https://issues.apache.org/jira/browse/TEZ-2345) | *Major* | **TEZ-UI: Enable cell level loading in all DAGs table**

- Enable cell level loading in all DAGs table using basic-ember-table component.
- Re-arrange UI element into make it similar to other tables.


---

* [TEZ-2344](https://issues.apache.org/jira/browse/TEZ-2344) | *Major* | **TEZ-UI: Equip basic-ember-table's cell level loading for all use cases in all DAGs table**

1. Must handle promises, objects and primitive data types.
2. Must be generic
3. Display waiting animation or Not Availabe! messages when required.


---

* [TEZ-2342](https://issues.apache.org/jira/browse/TEZ-2342) | *Minor* | **TestFaultTolerance.testRandomFailingTasks fails due to timeout**

{code}
Error Message

test timed out after 120000 milliseconds
Stacktrace

java.lang.Exception: test timed out after 120000 milliseconds
	at java.lang.Thread.sleep(Native Method)
	at org.apache.tez.test.TestFaultTolerance.runDAGAndVerify(TestFaultTolerance.java:126)
	at org.apache.tez.test.TestFaultTolerance.runDAGAndVerify(TestFaultTolerance.java:114)
	at org.apache.tez.test.TestFaultTolerance.testRandomFailingTasks(TestFaultTolerance.java:723)
Standard Output

2015-04-17 07:46:10,952 INFO  [main] test.TestFaultTolerance (TestFaultTolerance.java:setup(65)) - Starting mini clusters
2015-04-17 07:46:11,508 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:<init>(446)) - starting cluster: numNameNodes=1, numDataNodes=1
Formatting using clusterid: testClusterID
2015-04-17 07:46:12,919 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(716)) - No KeyProvider found.
2015-04-17 07:46:12,920 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(726)) - fsLock is fair:true
2015-04-17 07:46:13,021 INFO  [main] Configuration.deprecation (Configuration.java:warnOnceIfDeprecated(1173)) - hadoop.configured.node.mapping is deprecated. Instead, use net.topology.configured.node.mapping
2015-04-17 07:46:13,021 INFO  [main] blockmanagement.DatanodeManager (DatanodeManager.java:<init>(239)) - dfs.block.invalidate.limit=1000
2015-04-17 07:46:13,022 INFO  [main] blockmanagement.DatanodeManager (DatanodeManager.java:<init>(245)) - dfs.namenode.datanode.registration.ip-hostname-check=true
2015-04-17 07:46:13,022 INFO  [main] blockmanagement.BlockManager (InvalidateBlocks.java:printBlockDeletionTime(71)) - dfs.namenode.startup.delay.block.deletion.sec is set to 000:00:00:00.000
2015-04-17 07:46:13,025 INFO  [main] blockmanagement.BlockManager (InvalidateBlocks.java:printBlockDeletionTime(76)) - The block deletion will start around 2015 Apr 17 07:46:13
2015-04-17 07:46:13,029 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map BlocksMap
2015-04-17 07:46:13,030 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:13,032 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 2.0% max memory 910.3 MB = 18.2 MB
2015-04-17 07:46:13,033 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^21 = 2097152 entries
2015-04-17 07:46:13,079 INFO  [main] blockmanagement.BlockManager (BlockManager.java:createBlockTokenSecretManager(365)) - dfs.block.access.token.enable=false
2015-04-17 07:46:13,080 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(350)) - defaultReplication         = 1
2015-04-17 07:46:13,080 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(351)) - maxReplication             = 512
2015-04-17 07:46:13,083 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(352)) - minReplication             = 1
2015-04-17 07:46:13,083 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(353)) - maxReplicationStreams      = 2
2015-04-17 07:46:13,083 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(354)) - shouldCheckForEnoughRacks  = false
2015-04-17 07:46:13,084 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(355)) - replicationRecheckInterval = 3000
2015-04-17 07:46:13,084 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(356)) - encryptDataTransfer        = false
2015-04-17 07:46:13,084 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(357)) - maxNumBlocksToLog          = 1000
2015-04-17 07:46:13,115 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(746)) - fsOwner             = jenkins (auth:SIMPLE)
2015-04-17 07:46:13,116 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(747)) - supergroup          = supergroup
2015-04-17 07:46:13,116 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(748)) - isPermissionEnabled = true
2015-04-17 07:46:13,116 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(759)) - HA Enabled: false
2015-04-17 07:46:13,120 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(796)) - Append Enabled: true
2015-04-17 07:46:13,475 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map INodeMap
2015-04-17 07:46:13,475 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:13,475 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 1.0% max memory 910.3 MB = 9.1 MB
2015-04-17 07:46:13,476 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^20 = 1048576 entries
2015-04-17 07:46:13,477 INFO  [main] namenode.FSDirectory (FSDirectory.java:<init>(234)) - ACLs enabled? false
2015-04-17 07:46:13,477 INFO  [main] namenode.FSDirectory (FSDirectory.java:<init>(238)) - XAttrs enabled? true
2015-04-17 07:46:13,477 INFO  [main] namenode.FSDirectory (FSDirectory.java:<init>(246)) - Maximum size of an xattr: 16384
2015-04-17 07:46:13,478 INFO  [main] namenode.NameNode (FSDirectory.java:<init>(294)) - Caching file names occuring more than 10 times
2015-04-17 07:46:13,489 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map cachedBlocks
2015-04-17 07:46:13,489 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:13,490 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 0.25% max memory 910.3 MB = 2.3 MB
2015-04-17 07:46:13,490 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^18 = 262144 entries
2015-04-17 07:46:13,493 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(5160)) - dfs.namenode.safemode.threshold-pct = 0.9990000128746033
2015-04-17 07:46:13,493 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(5161)) - dfs.namenode.safemode.min.datanodes = 0
2015-04-17 07:46:13,493 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(5162)) - dfs.namenode.safemode.extension     = 0
2015-04-17 07:46:13,499 INFO  [main] metrics.TopMetrics (TopMetrics.java:logConf(65)) - NNTop conf: dfs.namenode.top.window.num.buckets = 10
2015-04-17 07:46:13,499 INFO  [main] metrics.TopMetrics (TopMetrics.java:logConf(67)) - NNTop conf: dfs.namenode.top.num.users = 10
2015-04-17 07:46:13,499 INFO  [main] metrics.TopMetrics (TopMetrics.java:logConf(69)) - NNTop conf: dfs.namenode.top.windows.minutes = 1,5,25
2015-04-17 07:46:13,502 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:initRetryCache(905)) - Retry cache on namenode is enabled
2015-04-17 07:46:13,502 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:initRetryCache(913)) - Retry cache will use 0.03 of total heap and retry cache entry expiry time is 600000 millis
2015-04-17 07:46:13,508 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map NameNodeRetryCache
2015-04-17 07:46:13,508 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:13,508 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 0.029999999329447746% max memory 910.3 MB = 279.6 KB
2015-04-17 07:46:13,509 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^15 = 32768 entries
2015-04-17 07:46:13,704 INFO  [main] namenode.FSImage (FSImage.java:format(158)) - Allocated new BlockPoolId: BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:13,732 INFO  [main] common.Storage (NNStorage.java:format(552)) - Storage directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\name1 has been successfully formatted.
2015-04-17 07:46:13,761 INFO  [main] common.Storage (NNStorage.java:format(552)) - Storage directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\name2 has been successfully formatted.
2015-04-17 07:46:14,163 INFO  [main] namenode.NNStorageRetentionManager (NNStorageRetentionManager.java:getImageTxIdToRetain(203)) - Going to retain 1 images with txid >= 0
2015-04-17 07:46:14,210 INFO  [main] namenode.NameNode (NameNode.java:createNameNode(1416)) - createNameNode []
2015-04-17 07:46:14,278 WARN  [main] impl.MetricsConfig (MetricsConfig.java:loadFirst(125)) - Cannot locate configuration: tried hadoop-metrics2-namenode.properties,hadoop-metrics2.properties
2015-04-17 07:46:14,363 INFO  [main] impl.MetricsSystemImpl (MetricsSystemImpl.java:startTimer(377)) - Scheduled snapshot period at 10 second(s).
2015-04-17 07:46:14,364 INFO  [main] impl.MetricsSystemImpl (MetricsSystemImpl.java:start(192)) - NameNode metrics system started
2015-04-17 07:46:14,368 INFO  [main] namenode.NameNode (NameNode.java:setClientNamenodeAddress(397)) - fs.defaultFS is hdfs://127.0.0.1:0
2015-04-17 07:46:14,429 INFO  [main] hdfs.DFSUtil (DFSUtil.java:httpServerTemplateForNNAndJN(1703)) - Starting Web-server for hdfs at: http://127.0.0.1:0
2015-04-17 07:46:14,566 INFO  [main] mortbay.log (Slf4jLog.java:info(67)) - Logging to org.slf4j.impl.Log4jLoggerAdapter(org.mortbay.log) via org.mortbay.log.Slf4jLog
2015-04-17 07:46:14,586 INFO  [main] server.AuthenticationFilter (AuthenticationFilter.java:constructSecretProvider(282)) - Unable to initialize FileSignerSecretProvider, falling back to use random secrets.
2015-04-17 07:46:14,601 INFO  [main] http.HttpRequestLog (HttpRequestLog.java:getRequestLog(80)) - Http request log for http.requests.namenode is not defined
2015-04-17 07:46:14,614 INFO  [main] http.HttpServer2 (HttpServer2.java:addGlobalFilter(710)) - Added global filter 'safety' (class=org.apache.hadoop.http.HttpServer2$QuotingInputFilter)
2015-04-17 07:46:14,619 INFO  [main] http.HttpServer2 (HttpServer2.java:addFilter(685)) - Added filter static\_user\_filter (class=org.apache.hadoop.http.lib.StaticUserWebFilter$StaticUserFilter) to context hdfs
2015-04-17 07:46:14,619 INFO  [main] http.HttpServer2 (HttpServer2.java:addFilter(693)) - Added filter static\_user\_filter (class=org.apache.hadoop.http.lib.StaticUserWebFilter$StaticUserFilter) to context static
2015-04-17 07:46:14,664 INFO  [main] http.HttpServer2 (NameNodeHttpServer.java:initWebHdfs(86)) - Added filter 'org.apache.hadoop.hdfs.web.AuthFilter' (class=org.apache.hadoop.hdfs.web.AuthFilter)
2015-04-17 07:46:14,665 INFO  [main] http.HttpServer2 (HttpServer2.java:addJerseyResourcePackage(609)) - addJerseyResourcePackage: packageName=org.apache.hadoop.hdfs.server.namenode.web.resources;org.apache.hadoop.hdfs.web.resources, pathSpec=/webhdfs/v1/*
2015-04-17 07:46:14,708 INFO  [main] http.HttpServer2 (HttpServer2.java:openListeners(915)) - Jetty bound to port 60602
2015-04-17 07:46:14,708 INFO  [main] mortbay.log (Slf4jLog.java:info(67)) - jetty-6.1.26
2015-04-17 07:46:14,760 INFO  [main] mortbay.log (Slf4jLog.java:info(67)) - Extract jar:file:/D:/dal-UT/.m2/repository/org/apache/hadoop/hadoop-hdfs/2.5.0.2858/hadoop-hdfs-2.5.0.2858-tests.jar!/webapps/hdfs to D:\tmp\tez-dal\Jetty\_127\_0\_0\_1\_60602\_hdfs\_\_\_\_.6o51sx\webapp
2015-04-17 07:46:15,019 INFO  [main] mortbay.log (Slf4jLog.java:info(67)) - Started HttpServer2$SelectChannelConnectorWithSafeStartup@127.0.0.1:60602
2015-04-17 07:46:15,029 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(716)) - No KeyProvider found.
2015-04-17 07:46:15,029 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(726)) - fsLock is fair:true
2015-04-17 07:46:15,030 INFO  [main] blockmanagement.DatanodeManager (DatanodeManager.java:<init>(239)) - dfs.block.invalidate.limit=1000
2015-04-17 07:46:15,030 INFO  [main] blockmanagement.DatanodeManager (DatanodeManager.java:<init>(245)) - dfs.namenode.datanode.registration.ip-hostname-check=true
2015-04-17 07:46:15,030 INFO  [main] blockmanagement.BlockManager (InvalidateBlocks.java:printBlockDeletionTime(71)) - dfs.namenode.startup.delay.block.deletion.sec is set to 000:00:00:00.000
2015-04-17 07:46:15,031 INFO  [main] blockmanagement.BlockManager (InvalidateBlocks.java:printBlockDeletionTime(76)) - The block deletion will start around 2015 Apr 17 07:46:15
2015-04-17 07:46:15,031 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map BlocksMap
2015-04-17 07:46:15,031 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:15,032 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 2.0% max memory 910.3 MB = 18.2 MB
2015-04-17 07:46:15,032 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^21 = 2097152 entries
2015-04-17 07:46:15,059 INFO  [main] blockmanagement.BlockManager (BlockManager.java:createBlockTokenSecretManager(365)) - dfs.block.access.token.enable=false
2015-04-17 07:46:15,060 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(350)) - defaultReplication         = 1
2015-04-17 07:46:15,062 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(351)) - maxReplication             = 512
2015-04-17 07:46:15,062 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(352)) - minReplication             = 1
2015-04-17 07:46:15,063 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(353)) - maxReplicationStreams      = 2
2015-04-17 07:46:15,064 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(354)) - shouldCheckForEnoughRacks  = false
2015-04-17 07:46:15,064 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(355)) - replicationRecheckInterval = 3000
2015-04-17 07:46:15,064 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(356)) - encryptDataTransfer        = false
2015-04-17 07:46:15,065 INFO  [main] blockmanagement.BlockManager (BlockManager.java:<init>(357)) - maxNumBlocksToLog          = 1000
2015-04-17 07:46:15,066 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(746)) - fsOwner             = jenkins (auth:SIMPLE)
2015-04-17 07:46:15,066 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(747)) - supergroup          = supergroup
2015-04-17 07:46:15,066 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(748)) - isPermissionEnabled = true
2015-04-17 07:46:15,067 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(759)) - HA Enabled: false
2015-04-17 07:46:15,067 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(796)) - Append Enabled: true
2015-04-17 07:46:15,067 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map INodeMap
2015-04-17 07:46:15,068 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:15,068 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 1.0% max memory 910.3 MB = 9.1 MB
2015-04-17 07:46:15,068 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^20 = 1048576 entries
2015-04-17 07:46:15,068 INFO  [main] namenode.FSDirectory (FSDirectory.java:<init>(234)) - ACLs enabled? false
2015-04-17 07:46:15,069 INFO  [main] namenode.FSDirectory (FSDirectory.java:<init>(238)) - XAttrs enabled? true
2015-04-17 07:46:15,069 INFO  [main] namenode.FSDirectory (FSDirectory.java:<init>(246)) - Maximum size of an xattr: 16384
2015-04-17 07:46:15,069 INFO  [main] namenode.NameNode (FSDirectory.java:<init>(294)) - Caching file names occuring more than 10 times
2015-04-17 07:46:15,069 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map cachedBlocks
2015-04-17 07:46:15,070 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:15,070 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 0.25% max memory 910.3 MB = 2.3 MB
2015-04-17 07:46:15,070 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^18 = 262144 entries
2015-04-17 07:46:15,071 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(5160)) - dfs.namenode.safemode.threshold-pct = 0.9990000128746033
2015-04-17 07:46:15,071 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(5161)) - dfs.namenode.safemode.min.datanodes = 0
2015-04-17 07:46:15,071 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:<init>(5162)) - dfs.namenode.safemode.extension     = 0
2015-04-17 07:46:15,072 INFO  [main] metrics.TopMetrics (TopMetrics.java:logConf(65)) - NNTop conf: dfs.namenode.top.window.num.buckets = 10
2015-04-17 07:46:15,074 INFO  [main] metrics.TopMetrics (TopMetrics.java:logConf(67)) - NNTop conf: dfs.namenode.top.num.users = 10
2015-04-17 07:46:15,075 INFO  [main] metrics.TopMetrics (TopMetrics.java:logConf(69)) - NNTop conf: dfs.namenode.top.windows.minutes = 1,5,25
2015-04-17 07:46:15,075 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:initRetryCache(905)) - Retry cache on namenode is enabled
2015-04-17 07:46:15,076 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:initRetryCache(913)) - Retry cache will use 0.03 of total heap and retry cache entry expiry time is 600000 millis
2015-04-17 07:46:15,076 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(354)) - Computing capacity for map NameNodeRetryCache
2015-04-17 07:46:15,076 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(355)) - VM type       = 64-bit
2015-04-17 07:46:15,076 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(356)) - 0.029999999329447746% max memory 910.3 MB = 279.6 KB
2015-04-17 07:46:15,076 INFO  [main] util.GSet (LightWeightGSet.java:computeCapacity(361)) - capacity      = 2^15 = 32768 entries
2015-04-17 07:46:15,091 INFO  [main] common.Storage (Storage.java:tryLock(715)) - Lock on D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\name1\in\_use.lock acquired by nodename 2544@sijenkins-win-3
2015-04-17 07:46:15,098 INFO  [main] common.Storage (Storage.java:tryLock(715)) - Lock on D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\name2\in\_use.lock acquired by nodename 2544@sijenkins-win-3
2015-04-17 07:46:15,102 INFO  [main] namenode.FileJournalManager (FileJournalManager.java:recoverUnfinalizedSegments(362)) - Recovering unfinalized segments in D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\name1\current
2015-04-17 07:46:15,102 INFO  [main] namenode.FileJournalManager (FileJournalManager.java:recoverUnfinalizedSegments(362)) - Recovering unfinalized segments in D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\name2\current
2015-04-17 07:46:15,103 INFO  [main] namenode.FSImage (FSImage.java:loadFSImage(669)) - No edit log streams selected.
2015-04-17 07:46:15,123 INFO  [main] namenode.FSImageFormatPBINode (FSImageFormatPBINode.java:loadINodeSection(255)) - Loading 1 INodes.
2015-04-17 07:46:15,134 INFO  [main] namenode.FSImageFormatProtobuf (FSImageFormatProtobuf.java:load(181)) - Loaded FSImage in 0 seconds.
2015-04-17 07:46:15,134 INFO  [main] namenode.FSImage (FSImage.java:loadFSImage(972)) - Loaded image for txid 0 from D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\name1\current\fsimage\_0000000000000000000
2015-04-17 07:46:15,142 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:loadFSImage(982)) - Need to save fs image? false (staleImage=false, haEnabled=false, isRollingUpgrade=false)
2015-04-17 07:46:15,143 INFO  [main] namenode.FSEditLog (FSEditLog.java:startLogSegment(1214)) - Starting log segment at 1
2015-04-17 07:46:15,187 INFO  [main] namenode.NameCache (NameCache.java:initialized(143)) - initialized with 0 entries 0 lookups
2015-04-17 07:46:15,187 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:loadFromDisk(688)) - Finished loading FSImage in 145 msecs
2015-04-17 07:46:15,506 INFO  [main] namenode.NameNode (NameNodeRpcServer.java:<init>(341)) - RPC server is binding to 127.0.0.1:0
2015-04-17 07:46:15,522 INFO  [main] ipc.CallQueueManager (CallQueueManager.java:<init>(53)) - Using callQueue class java.util.concurrent.LinkedBlockingQueue
2015-04-17 07:46:15,543 INFO  [Socket Reader #1 for port 60605] ipc.Server (Server.java:run(606)) - Starting Socket Reader #1 for port 60605
2015-04-17 07:46:15,599 INFO  [main] namenode.NameNode (NameNode.java:initialize(651)) - Clients are to use 127.0.0.1:60605 to access this namenode/service.
2015-04-17 07:46:15,602 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:registerMBean(6025)) - Registered FSNamesystemState MBean
2015-04-17 07:46:15,613 INFO  [main] namenode.LeaseManager (LeaseManager.java:getNumUnderConstructionBlocks(132)) - Number of blocks under construction: 0
2015-04-17 07:46:15,614 INFO  [main] namenode.LeaseManager (LeaseManager.java:getNumUnderConstructionBlocks(132)) - Number of blocks under construction: 0
2015-04-17 07:46:15,614 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:initializeReplQueues(1182)) - initializing replication queues
2015-04-17 07:46:15,614 INFO  [main] hdfs.StateChange (FSNamesystem.java:leave(5235)) - STATE* Leaving safe mode after 0 secs
2015-04-17 07:46:15,614 INFO  [main] hdfs.StateChange (FSNamesystem.java:leave(5247)) - STATE* Network topology has 0 racks and 0 datanodes
2015-04-17 07:46:15,615 INFO  [main] hdfs.StateChange (FSNamesystem.java:leave(5250)) - STATE* UnderReplicatedBlocks has 0 blocks
2015-04-17 07:46:15,629 INFO  [main] blockmanagement.DatanodeDescriptor (DatanodeDescriptor.java:updateHeartbeatState(450)) - Number of failed storage changes from 0 to 0
2015-04-17 07:46:15,630 INFO  [Replication Queue Initializer] blockmanagement.BlockManager (BlockManager.java:processMisReplicatesAsync(2754)) - Total number of blocks            = 0
2015-04-17 07:46:15,630 INFO  [Replication Queue Initializer] blockmanagement.BlockManager (BlockManager.java:processMisReplicatesAsync(2755)) - Number of invalid blocks          = 0
2015-04-17 07:46:15,630 INFO  [Replication Queue Initializer] blockmanagement.BlockManager (BlockManager.java:processMisReplicatesAsync(2756)) - Number of under-replicated blocks = 0
2015-04-17 07:46:15,631 INFO  [Replication Queue Initializer] blockmanagement.BlockManager (BlockManager.java:processMisReplicatesAsync(2757)) - Number of  over-replicated blocks = 0
2015-04-17 07:46:15,632 INFO  [Replication Queue Initializer] blockmanagement.BlockManager (BlockManager.java:processMisReplicatesAsync(2759)) - Number of blocks being written    = 0
2015-04-17 07:46:15,632 INFO  [Replication Queue Initializer] hdfs.StateChange (BlockManager.java:processMisReplicatesAsync(2760)) - STATE* Replication Queue initialization scan for invalid, over- and under-replicated blocks completed in 17 msec
2015-04-17 07:46:15,694 INFO  [IPC Server listener on 60605] ipc.Server (Server.java:run(676)) - IPC Server listener on 60605: starting
2015-04-17 07:46:15,693 INFO  [IPC Server Responder] ipc.Server (Server.java:run(836)) - IPC Server Responder: starting
2015-04-17 07:46:15,877 INFO  [main] namenode.NameNode (NameNode.java:startCommonServices(694)) - NameNode RPC up at: 127.0.0.1/127.0.0.1:60605
2015-04-17 07:46:15,877 INFO  [main] namenode.FSNamesystem (FSNamesystem.java:startActiveServices(1103)) - Starting services required for active state
2015-04-17 07:46:15,883 INFO  [CacheReplicationMonitor(481446731)] blockmanagement.CacheReplicationMonitor (CacheReplicationMonitor.java:run(160)) - Starting CacheReplicationMonitor with interval 30000 milliseconds
2015-04-17 07:46:15,896 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:startDataNodes(1413)) - Starting DataNode 0 with dfs.datanode.data.dir: [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1,[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2
2015-04-17 07:46:16,011 INFO  [main] impl.MetricsSystemImpl (MetricsSystemImpl.java:init(159)) - DataNode metrics system started (again)
2015-04-17 07:46:16,016 INFO  [main] datanode.BlockScanner (BlockScanner.java:<init>(151)) - Disabled block scanner.
2015-04-17 07:46:16,017 INFO  [main] datanode.DataNode (DataNode.java:<init>(436)) - Configured hostname is 127.0.0.1
2015-04-17 07:46:16,023 INFO  [main] datanode.DataNode (DataNode.java:startDataNode(1134)) - Starting DataNode with maxLockedMemory = 0
2015-04-17 07:46:16,056 INFO  [main] datanode.DataNode (DataNode.java:initDataXceiver(933)) - Opened streaming server at /127.0.0.1:60612
2015-04-17 07:46:16,059 INFO  [main] datanode.DataNode (DataXceiverServer.java:<init>(76)) - Balancing bandwith is 1048576 bytes/s
2015-04-17 07:46:16,060 INFO  [main] datanode.DataNode (DataXceiverServer.java:<init>(77)) - Number threads for balancing is 5
2015-04-17 07:46:16,070 INFO  [main] server.AuthenticationFilter (AuthenticationFilter.java:constructSecretProvider(282)) - Unable to initialize FileSignerSecretProvider, falling back to use random secrets.
2015-04-17 07:46:16,078 INFO  [main] http.HttpRequestLog (HttpRequestLog.java:getRequestLog(80)) - Http request log for http.requests.datanode is not defined
2015-04-17 07:46:16,079 INFO  [main] http.HttpServer2 (HttpServer2.java:addGlobalFilter(710)) - Added global filter 'safety' (class=org.apache.hadoop.http.HttpServer2$QuotingInputFilter)
2015-04-17 07:46:16,082 INFO  [main] http.HttpServer2 (HttpServer2.java:addFilter(685)) - Added filter static\_user\_filter (class=org.apache.hadoop.http.lib.StaticUserWebFilter$StaticUserFilter) to context datanode
2015-04-17 07:46:16,082 INFO  [main] http.HttpServer2 (HttpServer2.java:addFilter(693)) - Added filter static\_user\_filter (class=org.apache.hadoop.http.lib.StaticUserWebFilter$StaticUserFilter) to context static
2015-04-17 07:46:16,089 INFO  [main] http.HttpServer2 (HttpServer2.java:openListeners(915)) - Jetty bound to port 60613
2015-04-17 07:46:16,089 INFO  [main] mortbay.log (Slf4jLog.java:info(67)) - jetty-6.1.26
2015-04-17 07:46:16,096 INFO  [main] mortbay.log (Slf4jLog.java:info(67)) - Extract jar:file:/D:/dal-UT/.m2/repository/org/apache/hadoop/hadoop-hdfs/2.5.0.2858/hadoop-hdfs-2.5.0.2858-tests.jar!/webapps/datanode to D:\tmp\tez-dal\Jetty\_localhost\_60613\_datanode\_\_\_\_.sikda3\webapp
2015-04-17 07:46:16,254 INFO  [main] mortbay.log (Slf4jLog.java:info(67)) - Started HttpServer2$SelectChannelConnectorWithSafeStartup@localhost:60613
2015-04-17 07:46:16,539 INFO  [main] web.DatanodeHttpServer (DatanodeHttpServer.java:start(150)) - Listening HTTP traffic on /127.0.0.1:60632
2015-04-17 07:46:16,541 INFO  [main] datanode.DataNode (DataNode.java:startDataNode(1151)) - dnUserName = jenkins
2015-04-17 07:46:16,541 INFO  [main] datanode.DataNode (DataNode.java:startDataNode(1152)) - supergroup = supergroup
2015-04-17 07:46:16,564 INFO  [main] ipc.CallQueueManager (CallQueueManager.java:<init>(53)) - Using callQueue class java.util.concurrent.LinkedBlockingQueue
2015-04-17 07:46:16,566 INFO  [Socket Reader #1 for port 60633] ipc.Server (Server.java:run(606)) - Starting Socket Reader #1 for port 60633
2015-04-17 07:46:16,575 INFO  [main] datanode.DataNode (DataNode.java:initIpcServer(852)) - Opened IPC server at /127.0.0.1:60633
2015-04-17 07:46:16,589 INFO  [main] datanode.DataNode (BlockPoolManager.java:refreshNamenodes(152)) - Refresh request received for nameservices: null
2015-04-17 07:46:16,596 INFO  [main] datanode.DataNode (BlockPoolManager.java:doRefreshNamenodes(197)) - Starting BPOfferServices for nameservices: <default>
2015-04-17 07:46:16,607 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPServiceActor.java:run(845)) - Block pool <registering> (Datanode Uuid unassigned) service to /127.0.0.1:60605 starting to offer service
2015-04-17 07:46:16,616 INFO  [IPC Server Responder] ipc.Server (Server.java:run(836)) - IPC Server Responder: starting
2015-04-17 07:46:16,617 INFO  [IPC Server listener on 60633] ipc.Server (Server.java:run(676)) - IPC Server listener on 60633: starting
2015-04-17 07:46:17,034 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (Storage.java:tryLock(715)) - Lock on D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\in\_use.lock acquired by nodename 2544@sijenkins-win-3
2015-04-17 07:46:17,034 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (DataStorage.java:loadStorageDirectory(273)) - Storage directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1 is not formatted for BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,034 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (DataStorage.java:loadStorageDirectory(275)) - Formatting ...
2015-04-17 07:46:17,235 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:recoverTransitionRead(241)) - Analyzing storage directories for bpid BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,235 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (Storage.java:lock(675)) - Locking is disabled for D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current\BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,236 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:loadStorageDirectory(158)) - Block pool storage directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current\BP-725016459-10.79.60.8-1429281973548 is not formatted for BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,236 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:loadStorageDirectory(160)) - Formatting ...
2015-04-17 07:46:17,237 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:format(267)) - Formatting block pool BP-725016459-10.79.60.8-1429281973548 directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current\BP-725016459-10.79.60.8-1429281973548\current
2015-04-17 07:46:17,243 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:doTransition(359)) - Restored 0 block files from trash.
2015-04-17 07:46:17,255 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (Storage.java:tryLock(715)) - Lock on D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\in\_use.lock acquired by nodename 2544@sijenkins-win-3
2015-04-17 07:46:17,255 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (DataStorage.java:loadStorageDirectory(273)) - Storage directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2 is not formatted for BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,255 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (DataStorage.java:loadStorageDirectory(275)) - Formatting ...
2015-04-17 07:46:17,318 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:recoverTransitionRead(241)) - Analyzing storage directories for bpid BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,318 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (Storage.java:lock(675)) - Locking is disabled for D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current\BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,318 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:loadStorageDirectory(158)) - Block pool storage directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current\BP-725016459-10.79.60.8-1429281973548 is not formatted for BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,318 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:loadStorageDirectory(160)) - Formatting ...
2015-04-17 07:46:17,319 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:format(267)) - Formatting block pool BP-725016459-10.79.60.8-1429281973548 directory D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current\BP-725016459-10.79.60.8-1429281973548\current
2015-04-17 07:46:17,327 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] common.Storage (BlockPoolSliceStorage.java:doTransition(359)) - Restored 0 block files from trash.
2015-04-17 07:46:17,327 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:shouldWait(2303)) - dnInfo.length != numDataNodes
2015-04-17 07:46:17,331 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:waitActive(2255)) - Waiting for cluster to become active
2015-04-17 07:46:17,337 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (DataNode.java:initStorage(1398)) - Setting up storage: nsid=95952740;bpid=BP-725016459-10.79.60.8-1429281973548;lv=-56;nsInfo=lv=-63;cid=testClusterID;nsid=95952740;c=0;bpid=BP-725016459-10.79.60.8-1429281973548;dnuuid=null
2015-04-17 07:46:17,358 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (DataNode.java:checkDatanodeUuid(1227)) - Generated and persisted new Datanode UUID 3139557f-6bc1-4529-937f-81657d6baf32
2015-04-17 07:46:17,479 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:shouldWait(2303)) - dnInfo.length != numDataNodes
2015-04-17 07:46:17,506 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:waitActive(2255)) - Waiting for cluster to become active
2015-04-17 07:46:17,590 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsVolumeList.java:addVolume(303)) - Added new volume: DS-da6bd8c8-924e-43d2-9f85-75c88cb0c4fe
2015-04-17 07:46:17,590 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsDatasetImpl.java:addVolume(380)) - Added volume - D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current, StorageType: DISK
2015-04-17 07:46:17,590 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsVolumeList.java:addVolume(303)) - Added new volume: DS-ef534adf-3270-4cb7-b038-16dc61f3f409
2015-04-17 07:46:17,590 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsDatasetImpl.java:addVolume(380)) - Added volume - D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current, StorageType: DISK
2015-04-17 07:46:17,599 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsDatasetImpl.java:registerMBean(2028)) - Registered FSDatasetState MBean
2015-04-17 07:46:17,604 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DirectoryScanner (DirectoryScanner.java:start(332)) - Periodic Directory Tree Verification scan starting at 1429293531604 with interval 21600000
2015-04-17 07:46:17,606 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsDatasetImpl.java:addBlockPool(2474)) - Adding block pool BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:17,607 INFO  [Thread-58] impl.FsDatasetImpl (FsVolumeList.java:run(402)) - Scanning block pool BP-725016459-10.79.60.8-1429281973548 on volume D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current...
2015-04-17 07:46:17,607 INFO  [Thread-59] impl.FsDatasetImpl (FsVolumeList.java:run(402)) - Scanning block pool BP-725016459-10.79.60.8-1429281973548 on volume D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current...
2015-04-17 07:46:17,611 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:shouldWait(2303)) - dnInfo.length != numDataNodes
2015-04-17 07:46:17,612 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:waitActive(2255)) - Waiting for cluster to become active
2015-04-17 07:46:17,620 INFO  [Thread-59] impl.FsDatasetImpl (FsVolumeList.java:run(407)) - Time taken to scan block pool BP-725016459-10.79.60.8-1429281973548 on D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current: 13ms
2015-04-17 07:46:17,620 INFO  [Thread-58] impl.FsDatasetImpl (FsVolumeList.java:run(407)) - Time taken to scan block pool BP-725016459-10.79.60.8-1429281973548 on D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current: 13ms
2015-04-17 07:46:17,620 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsVolumeList.java:addBlockPool(433)) - Total time to scan all replicas for block pool BP-725016459-10.79.60.8-1429281973548: 16ms
2015-04-17 07:46:17,621 INFO  [Thread-60] impl.FsDatasetImpl (FsVolumeList.java:run(189)) - Adding replicas to map for block pool BP-725016459-10.79.60.8-1429281973548 on volume D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current...
2015-04-17 07:46:17,622 INFO  [Thread-61] impl.FsDatasetImpl (FsVolumeList.java:run(189)) - Adding replicas to map for block pool BP-725016459-10.79.60.8-1429281973548 on volume D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current...
2015-04-17 07:46:17,622 INFO  [Thread-60] impl.FsDatasetImpl (FsVolumeList.java:run(194)) - Time to add replicas to map for block pool BP-725016459-10.79.60.8-1429281973548 on volume D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data1\current: 0ms
2015-04-17 07:46:17,622 INFO  [Thread-61] impl.FsDatasetImpl (FsVolumeList.java:run(194)) - Time to add replicas to map for block pool BP-725016459-10.79.60.8-1429281973548 on volume D:\w\tez\tez-tests\target\org.apache.tez.test.TestFaultTolerance-tmpDir\data\data2\current: 0ms
2015-04-17 07:46:17,622 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] impl.FsDatasetImpl (FsVolumeList.java:getAllVolumesMap(220)) - Total time to add all replicas to map: 2ms
2015-04-17 07:46:17,625 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPServiceActor.java:register(800)) - Block pool BP-725016459-10.79.60.8-1429281973548 (Datanode Uuid null) service to /127.0.0.1:60605 beginning handshake with NN
2015-04-17 07:46:17,639 INFO  [IPC Server handler 3 on 60605] hdfs.StateChange (DatanodeManager.java:registerDatanode(879)) - BLOCK* registerDatanode: from DatanodeRegistration(127.0.0.1:60612, datanodeUuid=3139557f-6bc1-4529-937f-81657d6baf32, infoPort=60632, infoSecurePort=0, ipcPort=60633, storageInfo=lv=-56;cid=testClusterID;nsid=95952740;c=0) storage 3139557f-6bc1-4529-937f-81657d6baf32
2015-04-17 07:46:17,639 INFO  [IPC Server handler 3 on 60605] blockmanagement.DatanodeDescriptor (DatanodeDescriptor.java:updateHeartbeatState(450)) - Number of failed storage changes from 0 to 0
2015-04-17 07:46:17,640 INFO  [IPC Server handler 3 on 60605] net.NetworkTopology (NetworkTopology.java:add(419)) - Adding a new node: /default-rack/127.0.0.1:60612
2015-04-17 07:46:17,649 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPServiceActor.java:register(818)) - Block pool Block pool BP-725016459-10.79.60.8-1429281973548 (Datanode Uuid null) service to /127.0.0.1:60605 successfully registered with NN
2015-04-17 07:46:17,649 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPServiceActor.java:offerService(676)) - For namenode /127.0.0.1:60605 using DELETEREPORT\_INTERVAL of 300000 msec  BLOCKREPORT\_INTERVAL of 21600000msec CACHEREPORT\_INTERVAL of 10000msec Initial delay: 0msec; heartBeatInterval=3000
2015-04-17 07:46:17,666 INFO  [IPC Server handler 6 on 60605] blockmanagement.DatanodeDescriptor (DatanodeDescriptor.java:updateHeartbeatState(450)) - Number of failed storage changes from 0 to 0
2015-04-17 07:46:17,667 INFO  [IPC Server handler 6 on 60605] blockmanagement.DatanodeDescriptor (DatanodeDescriptor.java:updateStorage(856)) - Adding new storage ID DS-da6bd8c8-924e-43d2-9f85-75c88cb0c4fe for DN 127.0.0.1:60612
2015-04-17 07:46:17,668 INFO  [IPC Server handler 6 on 60605] blockmanagement.DatanodeDescriptor (DatanodeDescriptor.java:updateStorage(856)) - Adding new storage ID DS-ef534adf-3270-4cb7-b038-16dc61f3f409 for DN 127.0.0.1:60612
2015-04-17 07:46:17,682 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPOfferService.java:updateActorStatesFromHeartbeat(507)) - Namenode Block pool BP-725016459-10.79.60.8-1429281973548 (Datanode Uuid 3139557f-6bc1-4529-937f-81657d6baf32) service to /127.0.0.1:60605 trying to claim ACTIVE state with txid=1
2015-04-17 07:46:17,682 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPOfferService.java:updateActorStatesFromHeartbeat(519)) - Acknowledging ACTIVE Namenode Block pool BP-725016459-10.79.60.8-1429281973548 (Datanode Uuid 3139557f-6bc1-4529-937f-81657d6baf32) service to /127.0.0.1:60605
2015-04-17 07:46:17,700 INFO  [IPC Server handler 2 on 60605] BlockStateChange (BlockManager.java:processReport(1857)) - BLOCK* processReport: from storage DS-da6bd8c8-924e-43d2-9f85-75c88cb0c4fe node DatanodeRegistration(127.0.0.1:60612, datanodeUuid=3139557f-6bc1-4529-937f-81657d6baf32, infoPort=60632, infoSecurePort=0, ipcPort=60633, storageInfo=lv=-56;cid=testClusterID;nsid=95952740;c=0), blocks: 0, hasStaleStorage: true, processing time: 1 msecs
2015-04-17 07:46:17,700 INFO  [IPC Server handler 2 on 60605] BlockStateChange (BlockManager.java:processReport(1857)) - BLOCK* processReport: from storage DS-ef534adf-3270-4cb7-b038-16dc61f3f409 node DatanodeRegistration(127.0.0.1:60612, datanodeUuid=3139557f-6bc1-4529-937f-81657d6baf32, infoPort=60632, infoSecurePort=0, ipcPort=60633, storageInfo=lv=-56;cid=testClusterID;nsid=95952740;c=0), blocks: 0, hasStaleStorage: false, processing time: 0 msecs
2015-04-17 07:46:17,724 INFO  [main] hdfs.MiniDFSCluster (MiniDFSCluster.java:waitActive(2286)) - Cluster is active
2015-04-17 07:46:17,728 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPServiceActor.java:blockReport(524)) - Successfully sent block report 0x90ef08c8e154,  containing 2 storage report(s), of which we sent 2. The reports had 0 total blocks and used 1 RPC(s). This took 4 msec to generate and 42 msecs for RPC and NN processing. Got back one command: FinalizeCommand/5.
2015-04-17 07:46:17,728 INFO  [DataNode: [[[DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data1/, [DISK]file:/D:/w/tez/tez-tests/target/org.apache.tez.test.TestFaultTolerance-tmpDir/data/data2/]]  heartbeating to /127.0.0.1:60605] datanode.DataNode (BPOfferService.java:processCommandFromActive(690)) - Got finalize command for block pool BP-725016459-10.79.60.8-1429281973548
2015-04-17 07:46:18,270 INFO  [main] test.MiniTezCluster (MiniTezCluster.java:serviceInit(119)) - Using Tez AppJar: D:\w\tez\tez-tests\target\test-dir\hadoop-3789028744640582056.jar
2015-04-17 07:46:18,293 INFO  [IPC Server handler 0 on 60605] FSNamesystem.audit (FSNamesystem.java:logAuditMessage(8234)) - allowed=true	ugi=jenkins (auth:SIMPLE)	ip=/127.0.0.1	cmd=getfileinfo	src=/user/jenkins/target/org.apache.tez.test.TestFaultTolerance-tmpDir/TezAppJar.jar	dst=null	perm=null	proto=rpc
2015-04-17 07:46:18,351 INFO  [IPC Server handler 1 on 60605] FSNamesystem.audit (FSNamesystem.java:logAuditMessage(8234)) - allowed=true	ugi=jenkins (auth:SIMPLE)	ip=/127.0.0.1	cmd=create	src=/user/jenkins/target/org.apache.tez.test.TestFaultTolerance-tmpDir/TezAppJar.jar	dst=null	perm=jenkins:supergroup:rw-r--r--	proto=rpc
2015-04
...[truncated 654785 chars]...
entQueue (ParentQueue.java:assignContainersToChildQueues(591)) - Re-sorting assigned queue: root.default stats: default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:9216, vCores:9>, usedCapacity=0.5625, absoluteUsedCapacity=0.5625, numApps=1, numContainers=9
2015-04-17 07:48:16,517 INFO  [ResourceManager Event Processor] capacity.ParentQueue (ParentQueue.java:assignContainers(428)) - assignedContainer queue=root usedCapacity=0.5625 absoluteUsedCapacity=0.5625 used=<memory:9216, vCores:9> cluster=<memory:16384, vCores:32>
2015-04-17 07:48:16,517 INFO  [AsyncDispatcher event handler] application.ApplicationImpl (ApplicationImpl.java:transition(304)) - Adding container\_1429281980667\_0001\_01\_000041 to application application\_1429281980667\_0001
2015-04-17 07:48:16,518 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000041 transitioned from NEW to LOCALIZING
2015-04-17 07:48:16,518 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event CONTAINER\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:16,518 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event APPLICATION\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:16,518 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(200)) - Got APPLICATION\_INIT for service mapreduce\_shuffle
2015-04-17 07:48:16,518 INFO  [AsyncDispatcher event handler] mapred.ShuffleHandler (ShuffleHandler.java:addJobToken(560)) - Added token for job\_1429281980667\_0001
2015-04-17 07:48:16,519 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000041 transitioned from LOCALIZING to LOCALIZED
2015-04-17 07:48:16,584 INFO  [ContainersLauncher #1] launcher.ContainerLaunch (ContainerLaunch.java:call(346)) - Container container\_1429281980667\_0001\_01\_000038 succeeded 
2015-04-17 07:48:16,589 INFO  [Socket Reader #1 for port 60720] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:16,596 INFO  [IPC Server handler 3 on 60752] containermanager.ContainerManagerImpl (ContainerManagerImpl.java:startContainerInternal(816)) - Start request for container\_1429281980667\_0001\_01\_000042 by user jenkins
2015-04-17 07:48:16,597 INFO  [IPC Server handler 3 on 60752] nodemanager.NMAuditLogger (NMAuditLogger.java:logSuccess(89)) - USER=jenkins	IP=10.79.60.8	OPERATION=Start Container Request	TARGET=ContainerManageImpl	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000042
2015-04-17 07:48:16,598 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:16,600 INFO  [IPC Server handler 7 on 60720] containermanager.ContainerManagerImpl (ContainerManagerImpl.java:startContainerInternal(816)) - Start request for container\_1429281980667\_0001\_01\_000040 by user jenkins
2015-04-17 07:48:16,600 INFO  [IPC Server handler 7 on 60720] nodemanager.NMAuditLogger (NMAuditLogger.java:logSuccess(89)) - USER=jenkins	IP=10.79.60.8	OPERATION=Start Container Request	TARGET=ContainerManageImpl	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000040
2015-04-17 07:48:16,601 INFO  [AsyncDispatcher event handler] application.ApplicationImpl (ApplicationImpl.java:transition(304)) - Adding container\_1429281980667\_0001\_01\_000040 to application application\_1429281980667\_0001
2015-04-17 07:48:16,601 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000040 transitioned from NEW to LOCALIZING
2015-04-17 07:48:16,601 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event CONTAINER\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:16,601 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event APPLICATION\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:16,601 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(200)) - Got APPLICATION\_INIT for service mapreduce\_shuffle
2015-04-17 07:48:16,601 INFO  [AsyncDispatcher event handler] mapred.ShuffleHandler (ShuffleHandler.java:addJobToken(560)) - Added token for job\_1429281980667\_0001
2015-04-17 07:48:16,602 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000040 transitioned from LOCALIZING to LOCALIZED
2015-04-17 07:48:16,722 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000040 transitioned from LOCALIZED to RUNNING
2015-04-17 07:48:16,722 INFO  [AsyncDispatcher event handler] util.ProcfsBasedProcessTree (ProcfsBasedProcessTree.java:isAvailable(192)) - ProcfsBasedProcessTree currently is supported only on Linux.
2015-04-17 07:48:16,734 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000041 transitioned from LOCALIZED to RUNNING
2015-04-17 07:48:16,736 INFO  [AsyncDispatcher event handler] util.ProcfsBasedProcessTree (ProcfsBasedProcessTree.java:isAvailable(192)) - ProcfsBasedProcessTree currently is supported only on Linux.
2015-04-17 07:48:16,762 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000038 transitioned from KILLING to EXITED\_WITH\_SUCCESS
2015-04-17 07:48:16,763 INFO  [AsyncDispatcher event handler] application.ApplicationImpl (ApplicationImpl.java:transition(304)) - Adding container\_1429281980667\_0001\_01\_000042 to application application\_1429281980667\_0001
2015-04-17 07:48:16,764 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000042 transitioned from NEW to LOCALIZING
2015-04-17 07:48:16,765 INFO  [AsyncDispatcher event handler] nodemanager.NMAuditLogger (NMAuditLogger.java:logSuccess(89)) - USER=jenkins	OPERATION=Container Finished - Succeeded	TARGET=ContainerImpl	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000038
2015-04-17 07:48:16,765 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000038 transitioned from EXITED\_WITH\_SUCCESS to DONE
2015-04-17 07:48:16,765 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event CONTAINER\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:16,765 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event APPLICATION\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:16,766 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(200)) - Got APPLICATION\_INIT for service mapreduce\_shuffle
2015-04-17 07:48:16,767 INFO  [AsyncDispatcher event handler] mapred.ShuffleHandler (ShuffleHandler.java:addJobToken(560)) - Added token for job\_1429281980667\_0001
2015-04-17 07:48:16,767 INFO  [AsyncDispatcher event handler] application.ApplicationImpl (ApplicationImpl.java:transition(347)) - Removing container\_1429281980667\_0001\_01\_000038 from application application\_1429281980667\_0001
2015-04-17 07:48:16,767 INFO  [AsyncDispatcher event handler] util.ProcfsBasedProcessTree (ProcfsBasedProcessTree.java:isAvailable(192)) - ProcfsBasedProcessTree currently is supported only on Linux.
2015-04-17 07:48:16,769 INFO  [ContainersLauncher #1] nodemanager.DefaultContainerExecutor (DefaultContainerExecutor.java:buildCommandExecutor(267)) - launchContainer: [D:\w\tez\HADOOP\_LATEST\bin\winutils.exe, task, create, -m, -1, -c, -1, container\_1429281980667\_0001\_01\_000040, cmd /c D:/tmp/tez-dal/1429281978218/org.apache.tez.test.TestFaultTolerance-localDir-nm-0\_0/usercache/jenkins/appcache/application\_1429281980667\_0001/container\_1429281980667\_0001\_01\_000040/default\_container\_executor.cmd]
2015-04-17 07:48:16,770 INFO  [DeletionService #1] nodemanager.DefaultContainerExecutor (DefaultContainerExecutor.java:deleteAsUser(457)) - Deleting absolute path : D:/tmp/tez-dal/1429281978218/org.apache.tez.test.TestFaultTolerance-localDir-nm-2\_0/usercache/jenkins/appcache/application\_1429281980667\_0001/container\_1429281980667\_0001\_01\_000038
2015-04-17 07:48:16,776 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:16,820 INFO  [AsyncDispatcher event handler] monitor.ContainersMonitorImpl (ContainersMonitorImpl.java:isEnabled(192)) - Neither virutal-memory nor physical-memory monitoring is needed. Not running the monitor-thread
2015-04-17 07:48:16,831 INFO  [ContainersLauncher #2] nodemanager.DefaultContainerExecutor (DefaultContainerExecutor.java:buildCommandExecutor(267)) - launchContainer: [D:\w\tez\HADOOP\_LATEST\bin\winutils.exe, task, create, -m, -1, -c, -1, container\_1429281980667\_0001\_01\_000041, cmd /c D:/tmp/tez-dal/1429281978218/org.apache.tez.test.TestFaultTolerance-localDir-nm-1\_0/usercache/jenkins/appcache/application\_1429281980667\_0001/container\_1429281980667\_0001\_01\_000041/default\_container\_executor.cmd]
2015-04-17 07:48:16,843 INFO  [ContainersLauncher #2] launcher.ContainerLaunch (ContainerLaunch.java:call(346)) - Container container\_1429281980667\_0001\_01\_000037 succeeded 
2015-04-17 07:48:16,856 INFO  [AsyncDispatcher event handler] monitor.ContainersMonitorImpl (ContainersMonitorImpl.java:isEnabled(192)) - Neither virutal-memory nor physical-memory monitoring is needed. Not running the monitor-thread
2015-04-17 07:48:16,857 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event CONTAINER\_STOP for appId application\_1429281980667\_0001
2015-04-17 07:48:16,857 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000042 transitioned from LOCALIZING to LOCALIZED
2015-04-17 07:48:16,896 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000037 transitioned from KILLING to EXITED\_WITH\_SUCCESS
2015-04-17 07:48:16,898 INFO  [AsyncDispatcher event handler] nodemanager.NMAuditLogger (NMAuditLogger.java:logSuccess(89)) - USER=jenkins	OPERATION=Container Finished - Succeeded	TARGET=ContainerImpl	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000037
2015-04-17 07:48:16,898 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000037 transitioned from EXITED\_WITH\_SUCCESS to DONE
2015-04-17 07:48:16,898 INFO  [AsyncDispatcher event handler] application.ApplicationImpl (ApplicationImpl.java:transition(347)) - Removing container\_1429281980667\_0001\_01\_000037 from application application\_1429281980667\_0001
2015-04-17 07:48:16,898 INFO  [AsyncDispatcher event handler] util.ProcfsBasedProcessTree (ProcfsBasedProcessTree.java:isAvailable(192)) - ProcfsBasedProcessTree currently is supported only on Linux.
2015-04-17 07:48:16,899 INFO  [DeletionService #1] nodemanager.DefaultContainerExecutor (DefaultContainerExecutor.java:deleteAsUser(457)) - Deleting absolute path : D:/tmp/tez-dal/1429281978218/org.apache.tez.test.TestFaultTolerance-localDir-nm-3\_0/usercache/jenkins/appcache/application\_1429281980667\_0001/container\_1429281980667\_0001\_01\_000037
2015-04-17 07:48:16,913 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:16,961 INFO  [AsyncDispatcher event handler] monitor.ContainersMonitorImpl (ContainersMonitorImpl.java:isEnabled(192)) - Neither virutal-memory nor physical-memory monitoring is needed. Not running the monitor-thread
2015-04-17 07:48:16,962 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000042 transitioned from LOCALIZED to RUNNING
2015-04-17 07:48:16,962 INFO  [AsyncDispatcher event handler] util.ProcfsBasedProcessTree (ProcfsBasedProcessTree.java:isAvailable(192)) - ProcfsBasedProcessTree currently is supported only on Linux.
2015-04-17 07:48:16,976 INFO  [ContainersLauncher #1] nodemanager.DefaultContainerExecutor (DefaultContainerExecutor.java:buildCommandExecutor(267)) - launchContainer: [D:\w\tez\HADOOP\_LATEST\bin\winutils.exe, task, create, -m, -1, -c, -1, container\_1429281980667\_0001\_01\_000042, cmd /c D:/tmp/tez-dal/1429281978218/org.apache.tez.test.TestFaultTolerance-localDir-nm-2\_0/usercache/jenkins/appcache/application\_1429281980667\_0001/container\_1429281980667\_0001\_01\_000042/default\_container\_executor.cmd]
2015-04-17 07:48:16,998 INFO  [AsyncDispatcher event handler] monitor.ContainersMonitorImpl (ContainersMonitorImpl.java:isEnabled(192)) - Neither virutal-memory nor physical-memory monitoring is needed. Not running the monitor-thread
2015-04-17 07:48:16,998 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event CONTAINER\_STOP for appId application\_1429281980667\_0001
2015-04-17 07:48:17,015 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:17,065 INFO  [AsyncDispatcher event handler] monitor.ContainersMonitorImpl (ContainersMonitorImpl.java:isEnabled(192)) - Neither virutal-memory nor physical-memory monitoring is needed. Not running the monitor-thread
2015-04-17 07:48:17,179 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:17,186 INFO  [Socket Reader #1 for port 60752] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:17,190 INFO  [IPC Server handler 2 on 60752] containermanager.ContainerManagerImpl (ContainerManagerImpl.java:stopContainerInternal(966)) - Stopping container with container Id: container\_1429281980667\_0001\_01\_000029
2015-04-17 07:48:17,190 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000029 transitioned from RUNNING to KILLING
2015-04-17 07:48:17,190 INFO  [AsyncDispatcher event handler] launcher.ContainerLaunch (ContainerLaunch.java:cleanupContainer(370)) - Cleaning up container container\_1429281980667\_0001\_01\_000029
2015-04-17 07:48:17,191 INFO  [IPC Server handler 2 on 60752] nodemanager.NMAuditLogger (NMAuditLogger.java:logSuccess(89)) - USER=jenkins	IP=10.79.60.8	OPERATION=Stop Container Request	TARGET=ContainerManageImpl	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000029
2015-04-17 07:48:17,208 INFO  [ResourceManager Event Processor] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000042 Container Transitioned from ACQUIRED to RUNNING
2015-04-17 07:48:17,208 INFO  [ResourceManager Event Processor] capacity.CapacityScheduler (CapacityScheduler.java:completedContainer(1282)) - Null container completed...
2015-04-17 07:48:17,314 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:17,440 INFO  [ContainersLauncher #2] launcher.ContainerLaunch (ContainerLaunch.java:call(346)) - Container container\_1429281980667\_0001\_01\_000029 succeeded 
2015-04-17 07:48:17,554 INFO  [ResourceManager Event Processor] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000040 Container Transitioned from ACQUIRED to RUNNING
2015-04-17 07:48:17,556 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:17,569 INFO  [Socket Reader #1 for port 60696] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:17,718 INFO  [ResourceManager Event Processor] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000037 Container Transitioned from RUNNING to COMPLETED
2015-04-17 07:48:17,719 INFO  [ResourceManager Event Processor] fica.FiCaSchedulerApp (FiCaSchedulerApp.java:containerCompleted(113)) - Completed container: container\_1429281980667\_0001\_01\_000037 in state: COMPLETED event:FINISHED
2015-04-17 07:48:17,720 INFO  [ResourceManager Event Processor] resourcemanager.RMAuditLogger (RMAuditLogger.java:logSuccess(106)) - USER=jenkins	OPERATION=AM Released Container	TARGET=SchedulerApp	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000037
2015-04-17 07:48:17,720 INFO  [ResourceManager Event Processor] scheduler.SchedulerNode (SchedulerNode.java:releaseContainer(216)) - Released container container\_1429281980667\_0001\_01\_000037 of capacity <memory:1024, vCores:1> on host sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60774, which currently has 1 containers, <memory:1024, vCores:1> used and <memory:3072, vCores:7> available, release resources=true
2015-04-17 07:48:17,720 INFO  [ResourceManager Event Processor] capacity.LeafQueue (LeafQueue.java:releaseResource(1780)) - default used=<memory:8192, vCores:8> numContainers=8 user=jenkins user-resources=<memory:8192, vCores:8>
2015-04-17 07:48:17,738 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000029 transitioned from KILLING to EXITED\_WITH\_SUCCESS
2015-04-17 07:48:17,739 INFO  [DeletionService #2] nodemanager.DefaultContainerExecutor (DefaultContainerExecutor.java:deleteAsUser(457)) - Deleting absolute path : D:/tmp/tez-dal/1429281978218/org.apache.tez.test.TestFaultTolerance-localDir-nm-2\_0/usercache/jenkins/appcache/application\_1429281980667\_0001/container\_1429281980667\_0001\_01\_000029
2015-04-17 07:48:17,981 INFO  [ResourceManager Event Processor] capacity.LeafQueue (LeafQueue.java:completedContainer(1731)) - completedContainer container=Container: [ContainerId: container\_1429281980667\_0001\_01\_000037, NodeId: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60774, NodeHttpAddress: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60789, Resource: <memory:1024, vCores:1>, Priority: 4, Token: Token { kind: ContainerToken, service: 10.79.60.8:60774 }, ] queue=default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:8192, vCores:8>, usedCapacity=0.5, absoluteUsedCapacity=0.5, numApps=1, numContainers=8 cluster=<memory:16384, vCores:32>
2015-04-17 07:48:17,983 INFO  [ResourceManager Event Processor] capacity.ParentQueue (ParentQueue.java:completedContainer(636)) - completedContainer queue=root usedCapacity=0.5 absoluteUsedCapacity=0.5 used=<memory:8192, vCores:8> cluster=<memory:16384, vCores:32>
2015-04-17 07:48:17,983 INFO  [ResourceManager Event Processor] capacity.ParentQueue (ParentQueue.java:completedContainer(653)) - Re-sorting completed queue: root.default stats: default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:8192, vCores:8>, usedCapacity=0.5, absoluteUsedCapacity=0.5, numApps=1, numContainers=8
2015-04-17 07:48:17,983 INFO  [ResourceManager Event Processor] capacity.CapacityScheduler (CapacityScheduler.java:completedContainer(1307)) - Application attempt appattempt\_1429281980667\_0001\_000001 released container container\_1429281980667\_0001\_01\_000037 on node: host: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60774 #containers=1 available=<memory:3072, vCores:7> used=<memory:1024, vCores:1> with event: FINISHED
2015-04-17 07:48:17,983 INFO  [ResourceManager Event Processor] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000041 Container Transitioned from ACQUIRED to RUNNING
2015-04-17 07:48:17,982 INFO  [AsyncDispatcher event handler] nodemanager.NMAuditLogger (NMAuditLogger.java:logSuccess(89)) - USER=jenkins	OPERATION=Container Finished - Succeeded	TARGET=ContainerImpl	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000029
2015-04-17 07:48:17,986 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:17,986 INFO  [IPC Server handler 14 on 60696] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000029 Container Transitioned from RUNNING to RELEASED
2015-04-17 07:48:17,987 INFO  [IPC Server handler 14 on 60696] fica.FiCaSchedulerApp (FiCaSchedulerApp.java:containerCompleted(113)) - Completed container: container\_1429281980667\_0001\_01\_000029 in state: RELEASED event:RELEASED
2015-04-17 07:48:17,987 INFO  [IPC Server handler 14 on 60696] resourcemanager.RMAuditLogger (RMAuditLogger.java:logSuccess(106)) - USER=jenkins	IP=10.79.60.8	OPERATION=AM Released Container	TARGET=SchedulerApp	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000029
2015-04-17 07:48:17,986 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000029 transitioned from EXITED\_WITH\_SUCCESS to DONE
2015-04-17 07:48:17,988 INFO  [AsyncDispatcher event handler] application.ApplicationImpl (ApplicationImpl.java:transition(347)) - Removing container\_1429281980667\_0001\_01\_000029 from application application\_1429281980667\_0001
2015-04-17 07:48:17,988 INFO  [AsyncDispatcher event handler] util.ProcfsBasedProcessTree (ProcfsBasedProcessTree.java:isAvailable(192)) - ProcfsBasedProcessTree currently is supported only on Linux.
2015-04-17 07:48:17,987 INFO  [IPC Server handler 14 on 60696] scheduler.SchedulerNode (SchedulerNode.java:releaseContainer(216)) - Released container container\_1429281980667\_0001\_01\_000029 of capacity <memory:1024, vCores:1> on host sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752, which currently has 2 containers, <memory:2048, vCores:2> used and <memory:2048, vCores:6> available, release resources=true
2015-04-17 07:48:17,992 INFO  [IPC Server handler 14 on 60696] capacity.LeafQueue (LeafQueue.java:releaseResource(1780)) - default used=<memory:7168, vCores:7> numContainers=7 user=jenkins user-resources=<memory:7168, vCores:7>
2015-04-17 07:48:18,054 INFO  [IPC Server handler 14 on 60696] capacity.LeafQueue (LeafQueue.java:completedContainer(1731)) - completedContainer container=Container: [ContainerId: container\_1429281980667\_0001\_01\_000029, NodeId: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752, NodeHttpAddress: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60767, Resource: <memory:1024, vCores:1>, Priority: 1, Token: Token { kind: ContainerToken, service: 10.79.60.8:60752 }, ] queue=default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:7168, vCores:7>, usedCapacity=0.4375, absoluteUsedCapacity=0.4375, numApps=1, numContainers=7 cluster=<memory:16384, vCores:32>
2015-04-17 07:48:18,055 INFO  [IPC Server handler 14 on 60696] capacity.ParentQueue (ParentQueue.java:completedContainer(636)) - completedContainer queue=root usedCapacity=0.4375 absoluteUsedCapacity=0.4375 used=<memory:7168, vCores:7> cluster=<memory:16384, vCores:32>
2015-04-17 07:48:18,055 INFO  [IPC Server handler 14 on 60696] capacity.ParentQueue (ParentQueue.java:completedContainer(653)) - Re-sorting completed queue: root.default stats: default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:7168, vCores:7>, usedCapacity=0.4375, absoluteUsedCapacity=0.4375, numApps=1, numContainers=7
2015-04-17 07:48:18,055 INFO  [IPC Server handler 14 on 60696] capacity.CapacityScheduler (CapacityScheduler.java:completedContainer(1307)) - Application attempt appattempt\_1429281980667\_0001\_000001 released container container\_1429281980667\_0001\_01\_000029 on node: host: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752 #containers=2 available=<memory:2048, vCores:6> used=<memory:2048, vCores:2> with event: RELEASED
2015-04-17 07:48:18,056 INFO  [IPC Server handler 14 on 60696] scheduler.AbstractYarnScheduler (AbstractYarnScheduler.java:releaseContainers(472)) - container\_1429281980667\_0001\_01\_000037 doesn't exist. Add the container to the release request cache as it maybe on recovery.
2015-04-17 07:48:18,056 INFO  [IPC Server handler 14 on 60696] capacity.CapacityScheduler (CapacityScheduler.java:completedContainer(1282)) - Null container completed...
2015-04-17 07:48:18,056 INFO  [IPC Server handler 14 on 60696] scheduler.AppSchedulingInfo (AppSchedulingInfo.java:updateResourceRequests(181)) - checking for deactivate of application :application\_1429281980667\_0001
2015-04-17 07:48:18,056 INFO  [IPC Server handler 14 on 60696] scheduler.AppSchedulingInfo (AppSchedulingInfo.java:updateResourceRequests(181)) - checking for deactivate of application :application\_1429281980667\_0001
2015-04-17 07:48:18,058 INFO  [IPC Server handler 14 on 60696] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000043 Container Transitioned from ALLOCATED to ACQUIRED
2015-04-17 07:48:18,059 INFO  [IPC Server handler 14 on 60696] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000044 Container Transitioned from ALLOCATED to ACQUIRED
2015-04-17 07:48:18,386 INFO  [Node Status Updater] nodemanager.NodeStatusUpdaterImpl (NodeStatusUpdaterImpl.java:removeOrTrackCompletedContainersFromContext(482)) - Removed completed containers from NM context: [container\_1429281980667\_0001\_01\_000038]
2015-04-17 07:48:18,442 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:18,442 INFO  [ResourceManager Event Processor] capacity.CapacityScheduler (CapacityScheduler.java:completedContainer(1282)) - Null container completed...
2015-04-17 07:48:18,444 INFO  [AsyncDispatcher event handler] monitor.ContainersMonitorImpl (ContainersMonitorImpl.java:isEnabled(192)) - Neither virutal-memory nor physical-memory monitoring is needed. Not running the monitor-thread
2015-04-17 07:48:18,444 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event CONTAINER\_STOP for appId application\_1429281980667\_0001
2015-04-17 07:48:18,450 INFO  [ResourceManager Event Processor] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000045 Container Transitioned from NEW to ALLOCATED
2015-04-17 07:48:18,451 INFO  [ResourceManager Event Processor] resourcemanager.RMAuditLogger (RMAuditLogger.java:logSuccess(106)) - USER=jenkins	OPERATION=AM Allocated Container	TARGET=SchedulerApp	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000045
2015-04-17 07:48:18,451 INFO  [ResourceManager Event Processor] scheduler.SchedulerNode (SchedulerNode.java:allocateContainer(153)) - Assigned container container\_1429281980667\_0001\_01\_000045 of capacity <memory:1024, vCores:1> on host sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752, which has 3 containers, <memory:3072, vCores:3> used and <memory:1024, vCores:5> available after allocation
2015-04-17 07:48:18,451 INFO  [ResourceManager Event Processor] capacity.LeafQueue (LeafQueue.java:assignContainer(1628)) - assignedContainer application attempt=appattempt\_1429281980667\_0001\_000001 container=Container: [ContainerId: container\_1429281980667\_0001\_01\_000045, NodeId: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752, NodeHttpAddress: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60767, Resource: <memory:1024, vCores:1>, Priority: 16, Token: null, ] queue=default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:7168, vCores:7>, usedCapacity=0.4375, absoluteUsedCapacity=0.4375, numApps=1, numContainers=7 clusterResource=<memory:16384, vCores:32>
2015-04-17 07:48:18,453 INFO  [ResourceManager Event Processor] capacity.ParentQueue (ParentQueue.java:assignContainersToChildQueues(591)) - Re-sorting assigned queue: root.default stats: default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:8192, vCores:8>, usedCapacity=0.5, absoluteUsedCapacity=0.5, numApps=1, numContainers=8
2015-04-17 07:48:18,455 INFO  [ResourceManager Event Processor] capacity.ParentQueue (ParentQueue.java:assignContainers(428)) - assignedContainer queue=root usedCapacity=0.5 absoluteUsedCapacity=0.5 used=<memory:8192, vCores:8> cluster=<memory:16384, vCores:32>
2015-04-17 07:48:18,463 INFO  [Socket Reader #1 for port 60736] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:18,465 INFO  [Node Status Updater] nodemanager.NodeStatusUpdaterImpl (NodeStatusUpdaterImpl.java:removeOrTrackCompletedContainersFromContext(482)) - Removed completed containers from NM context: [container\_1429281980667\_0001\_01\_000035, container\_1429281980667\_0001\_01\_000021]
2015-04-17 07:48:18,490 INFO  [IPC Server handler 0 on 60736] containermanager.ContainerManagerImpl (ContainerManagerImpl.java:startContainerInternal(816)) - Start request for container\_1429281980667\_0001\_01\_000043 by user jenkins
2015-04-17 07:48:18,491 INFO  [IPC Server handler 0 on 60736] nodemanager.NMAuditLogger (NMAuditLogger.java:logSuccess(89)) - USER=jenkins	IP=10.79.60.8	OPERATION=Start Container Request	TARGET=ContainerManageImpl	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000043
2015-04-17 07:48:18,492 INFO  [AsyncDispatcher event handler] application.ApplicationImpl (ApplicationImpl.java:transition(304)) - Adding container\_1429281980667\_0001\_01\_000043 to application application\_1429281980667\_0001
2015-04-17 07:48:18,492 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000043 transitioned from NEW to LOCALIZING
2015-04-17 07:48:18,492 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event CONTAINER\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:18,492 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(196)) - Got event APPLICATION\_INIT for appId application\_1429281980667\_0001
2015-04-17 07:48:18,493 INFO  [AsyncDispatcher event handler] containermanager.AuxServices (AuxServices.java:handle(200)) - Got APPLICATION\_INIT for service mapreduce\_shuffle
2015-04-17 07:48:18,494 INFO  [AsyncDispatcher event handler] mapred.ShuffleHandler (ShuffleHandler.java:addJobToken(560)) - Added token for job\_1429281980667\_0001
2015-04-17 07:48:18,495 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000043 transitioned from LOCALIZING to LOCALIZED
2015-04-17 07:48:18,680 INFO  [Node Status Updater] nodemanager.NodeStatusUpdaterImpl (NodeStatusUpdaterImpl.java:removeOrTrackCompletedContainersFromContext(482)) - Removed completed containers from NM context: [container\_1429281980667\_0001\_01\_000033]
2015-04-17 07:48:18,681 INFO  [AsyncDispatcher event handler] container.ContainerImpl (ContainerImpl.java:handle(1123)) - Container container\_1429281980667\_0001\_01\_000043 transitioned from LOCALIZED to RUNNING
2015-04-17 07:48:18,681 INFO  [AsyncDispatcher event handler] util.ProcfsBasedProcessTree (ProcfsBasedProcessTree.java:isAvailable(192)) - ProcfsBasedProcessTree currently is supported only on Linux.
2015-04-17 07:48:18,690 INFO  [ContainersLauncher #1] nodemanager.DefaultContainerExecutor (DefaultContainerExecutor.java:buildCommandExecutor(267)) - launchContainer: [D:\w\tez\HADOOP\_LATEST\bin\winutils.exe, task, create, -m, -1, -c, -1, container\_1429281980667\_0001\_01\_000043, cmd /c D:/tmp/tez-dal/1429281978218/org.apache.tez.test.TestFaultTolerance-localDir-nm-1\_0/usercache/jenkins/appcache/application\_1429281980667\_0001/container\_1429281980667\_0001\_01\_000043/default\_container\_executor.cmd]
2015-04-17 07:48:18,691 INFO  [ResourceManager Event Processor] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000043 Container Transitioned from ACQUIRED to RUNNING
2015-04-17 07:48:19,123 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:19,138 INFO  [AsyncDispatcher event handler] monitor.ContainersMonitorImpl (ContainersMonitorImpl.java:isEnabled(192)) - Neither virutal-memory nor physical-memory monitoring is needed. Not running the monitor-thread
2015-04-17 07:48:19,143 INFO  [Socket Reader #1 for port 60696] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:19,146 INFO  [IPC Server handler 35 on 60696] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000044 Container Transitioned from ACQUIRED to RELEASED
2015-04-17 07:48:19,147 INFO  [IPC Server handler 35 on 60696] fica.FiCaSchedulerApp (FiCaSchedulerApp.java:containerCompleted(113)) - Completed container: container\_1429281980667\_0001\_01\_000044 in state: RELEASED event:RELEASED
2015-04-17 07:48:19,147 INFO  [IPC Server handler 35 on 60696] resourcemanager.RMAuditLogger (RMAuditLogger.java:logSuccess(106)) - USER=jenkins	IP=10.79.60.8	OPERATION=AM Released Container	TARGET=SchedulerApp	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000044
2015-04-17 07:48:19,147 INFO  [IPC Server handler 35 on 60696] scheduler.SchedulerNode (SchedulerNode.java:releaseContainer(216)) - Released container container\_1429281980667\_0001\_01\_000044 of capacity <memory:1024, vCores:1> on host sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60774, which currently has 0 containers, <memory:0, vCores:0> used and <memory:4096, vCores:8> available, release resources=true
2015-04-17 07:48:19,148 INFO  [IPC Server handler 35 on 60696] capacity.LeafQueue (LeafQueue.java:releaseResource(1780)) - default used=<memory:7168, vCores:7> numContainers=7 user=jenkins user-resources=<memory:7168, vCores:7>
2015-04-17 07:48:19,148 INFO  [IPC Server handler 35 on 60696] capacity.LeafQueue (LeafQueue.java:completedContainer(1731)) - completedContainer container=Container: [ContainerId: container\_1429281980667\_0001\_01\_000044, NodeId: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60774, NodeHttpAddress: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60789, Resource: <memory:1024, vCores:1>, Priority: 17, Token: Token { kind: ContainerToken, service: 10.79.60.8:60774 }, ] queue=default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:7168, vCores:7>, usedCapacity=0.4375, absoluteUsedCapacity=0.4375, numApps=1, numContainers=7 cluster=<memory:16384, vCores:32>
2015-04-17 07:48:19,148 INFO  [IPC Server handler 35 on 60696] capacity.ParentQueue (ParentQueue.java:completedContainer(636)) - completedContainer queue=root usedCapacity=0.4375 absoluteUsedCapacity=0.4375 used=<memory:7168, vCores:7> cluster=<memory:16384, vCores:32>
2015-04-17 07:48:19,148 INFO  [IPC Server handler 35 on 60696] capacity.ParentQueue (ParentQueue.java:completedContainer(653)) - Re-sorting completed queue: root.default stats: default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:7168, vCores:7>, usedCapacity=0.4375, absoluteUsedCapacity=0.4375, numApps=1, numContainers=7
2015-04-17 07:48:19,149 INFO  [IPC Server handler 35 on 60696] capacity.CapacityScheduler (CapacityScheduler.java:completedContainer(1307)) - Application attempt appattempt\_1429281980667\_0001\_000001 released container container\_1429281980667\_0001\_01\_000044 on node: host: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60774 #containers=0 available=<memory:4096, vCores:8> used=<memory:0, vCores:0> with event: RELEASED
2015-04-17 07:48:19,150 INFO  [IPC Server handler 35 on 60696] scheduler.AppSchedulingInfo (AppSchedulingInfo.java:updateResourceRequests(181)) - checking for deactivate of application :application\_1429281980667\_0001
2015-04-17 07:48:19,161 INFO  [IPC Server handler 35 on 60696] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000045 Container Transitioned from ALLOCATED to ACQUIRED
2015-04-17 07:48:19,299 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:19,436 INFO  [Node Status Updater] nodemanager.NodeStatusUpdaterImpl (NodeStatusUpdaterImpl.java:removeOrTrackCompletedContainersFromContext(482)) - Removed completed containers from NM context: [container\_1429281980667\_0001\_01\_000029]
2015-04-17 07:48:19,502 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:19,872 INFO  [Node Status Updater] nodemanager.NodeStatusUpdaterImpl (NodeStatusUpdaterImpl.java:removeOrTrackCompletedContainersFromContext(482)) - Removed completed containers from NM context: [container\_1429281980667\_0001\_01\_000037]
2015-04-17 07:48:19,878 WARN  [AsyncDispatcher event handler] containermanager.ContainerManagerImpl (ContainerManagerImpl.java:handle(1080)) - Event EventType: KILL\_CONTAINER sent to absent container container\_1429281980667\_0001\_01\_000044
2015-04-17 07:48:19,879 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:20,386 INFO  [Socket Reader #1 for port 60696] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:20,580 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:20,652 INFO  [IPC Server handler 35 on 60696] rmcontainer.RMContainerImpl (RMContainerImpl.java:handle(384)) - container\_1429281980667\_0001\_01\_000045 Container Transitioned from ACQUIRED to RELEASED
2015-04-17 07:48:20,652 INFO  [IPC Server handler 35 on 60696] fica.FiCaSchedulerApp (FiCaSchedulerApp.java:containerCompleted(113)) - Completed container: container\_1429281980667\_0001\_01\_000045 in state: RELEASED event:RELEASED
2015-04-17 07:48:20,653 INFO  [IPC Server handler 35 on 60696] resourcemanager.RMAuditLogger (RMAuditLogger.java:logSuccess(106)) - USER=jenkins	IP=10.79.60.8	OPERATION=AM Released Container	TARGET=SchedulerApp	RESULT=SUCCESS	APPID=application\_1429281980667\_0001	CONTAINERID=container\_1429281980667\_0001\_01\_000045
2015-04-17 07:48:20,653 INFO  [IPC Server handler 35 on 60696] scheduler.SchedulerNode (SchedulerNode.java:releaseContainer(216)) - Released container container\_1429281980667\_0001\_01\_000045 of capacity <memory:1024, vCores:1> on host sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752, which currently has 2 containers, <memory:2048, vCores:2> used and <memory:2048, vCores:6> available, release resources=true
2015-04-17 07:48:20,653 INFO  [IPC Server handler 35 on 60696] capacity.LeafQueue (LeafQueue.java:releaseResource(1780)) - default used=<memory:6144, vCores:6> numContainers=6 user=jenkins user-resources=<memory:6144, vCores:6>
2015-04-17 07:48:20,654 INFO  [IPC Server handler 35 on 60696] capacity.LeafQueue (LeafQueue.java:completedContainer(1731)) - completedContainer container=Container: [ContainerId: container\_1429281980667\_0001\_01\_000045, NodeId: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752, NodeHttpAddress: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60767, Resource: <memory:1024, vCores:1>, Priority: 16, Token: Token { kind: ContainerToken, service: 10.79.60.8:60752 }, ] queue=default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:6144, vCores:6>, usedCapacity=0.375, absoluteUsedCapacity=0.375, numApps=1, numContainers=6 cluster=<memory:16384, vCores:32>
2015-04-17 07:48:20,711 INFO  [IPC Server handler 35 on 60696] capacity.ParentQueue (ParentQueue.java:completedContainer(636)) - completedContainer queue=root usedCapacity=0.375 absoluteUsedCapacity=0.375 used=<memory:6144, vCores:6> cluster=<memory:16384, vCores:32>
2015-04-17 07:48:20,711 INFO  [IPC Server handler 35 on 60696] capacity.ParentQueue (ParentQueue.java:completedContainer(653)) - Re-sorting completed queue: root.default stats: default: capacity=1.0, absoluteCapacity=1.0, usedResources=<memory:6144, vCores:6>, usedCapacity=0.375, absoluteUsedCapacity=0.375, numApps=1, numContainers=6
2015-04-17 07:48:20,711 INFO  [IPC Server handler 35 on 60696] capacity.CapacityScheduler (CapacityScheduler.java:completedContainer(1307)) - Application attempt appattempt\_1429281980667\_0001\_000001 released container container\_1429281980667\_0001\_01\_000045 on node: host: sijenkins-win-3.sijenkinsservice.d3.internal.cloudapp.net:60752 #containers=2 available=<memory:2048, vCores:6> used=<memory:2048, vCores:2> with event: RELEASED
2015-04-17 07:48:20,898 WARN  [AsyncDispatcher event handler] containermanager.ContainerManagerImpl (ContainerManagerImpl.java:handle(1080)) - Event EventType: KILL\_CONTAINER sent to absent container container\_1429281980667\_0001\_01\_000045
2015-04-17 07:48:21,297 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:21,479 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:21,972 INFO  [Socket Reader #1 for port 60696] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:22,085 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:22,460 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:23,366 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:23,429 INFO  [Socket Reader #1 for port 60696] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:23,546 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:23,796 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:23,979 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:24,392 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:24,809 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:24,819 INFO  [Socket Reader #1 for port 60696] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:26,533 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:26,552 INFO  [Socket Reader #1 for port 60696] ipc.Server (Server.java:saslProcess(1316)) - Auth successful for appattempt\_1429281980667\_0001\_000001 (auth:SIMPLE)
2015-04-17 07:48:26,666 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:26,870 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:27,002 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:27,209 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
2015-04-17 07:48:27,346 INFO  [Thread-440] test.TestFaultTolerance (TestFaultTolerance.java:runDAGAndVerify(122)) - Waiting for dag to complete. Sleeping for 500ms. DAG name: testRandomFailingTasks DAG appContext: Executing on YARN cluster with App id application\_1429281980667\_0001 Current state: RUNNING
Standard Error

Apr 17, 2015 7:46:22 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.server.resourcemanager.webapp.JAXBContextResolver as a provider class
Apr 17, 2015 7:46:22 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.server.resourcemanager.webapp.RMWebServices as a root resource class
Apr 17, 2015 7:46:22 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.webapp.GenericExceptionHandler as a provider class
Apr 17, 2015 7:46:22 AM com.sun.jersey.server.impl.application.WebApplicationImpl \_initiate
INFO: Initiating Jersey application, version 'Jersey: 1.9 09/02/2011 11:17 AM'
Apr 17, 2015 7:46:22 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.server.resourcemanager.webapp.JAXBContextResolver to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:23 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.webapp.GenericExceptionHandler to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:24 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.server.resourcemanager.webapp.RMWebServices to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:24 AM com.google.inject.servlet.GuiceFilter setPipeline
WARNING: Multiple Servlet injectors detected. This is a warning indicating that you have more than one GuiceFilter running in your web application. If this is deliberate, you may safely ignore this message. If this is NOT deliberate however, your application may not work as expected.
Apr 17, 2015 7:46:24 AM com.google.inject.servlet.GuiceFilter setPipeline
WARNING: Multiple Servlet injectors detected. This is a warning indicating that you have more than one GuiceFilter running in your web application. If this is deliberate, you may safely ignore this message. If this is NOT deliberate however, your application may not work as expected.
Apr 17, 2015 7:46:24 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.server.nodemanager.webapp.NMWebServices as a root resource class
Apr 17, 2015 7:46:24 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.webapp.GenericExceptionHandler as a provider class
Apr 17, 2015 7:46:24 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.server.nodemanager.webapp.JAXBContextResolver as a provider class
Apr 17, 2015 7:46:24 AM com.sun.jersey.server.impl.application.WebApplicationImpl \_initiate
INFO: Initiating Jersey application, version 'Jersey: 1.9 09/02/2011 11:17 AM'
Apr 17, 2015 7:46:24 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.server.nodemanager.webapp.JAXBContextResolver to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:24 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.webapp.GenericExceptionHandler to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:24 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.server.nodemanager.webapp.NMWebServices to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:24 AM com.google.inject.servlet.GuiceFilter setPipeline
WARNING: Multiple Servlet injectors detected. This is a warning indicating that you have more than one GuiceFilter running in your web application. If this is deliberate, you may safely ignore this message. If this is NOT deliberate however, your application may not work as expected.
Apr 17, 2015 7:46:25 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.server.nodemanager.webapp.NMWebServices as a root resource class
Apr 17, 2015 7:46:25 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.webapp.GenericExceptionHandler as a provider class
Apr 17, 2015 7:46:25 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory register
INFO: Registering org.apache.hadoop.yarn.server.nodemanager.webapp.JAXBContextResolver as a provider class
Apr 17, 2015 7:46:25 AM com.sun.jersey.server.impl.application.WebApplicationImpl \_initiate
INFO: Initiating Jersey application, version 'Jersey: 1.9 09/02/2011 11:17 AM'
Apr 17, 2015 7:46:25 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.server.nodemanager.webapp.JAXBContextResolver to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:25 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.webapp.GenericExceptionHandler to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:25 AM com.sun.jersey.guice.spi.container.GuiceComponentProviderFactory getComponentProvider
INFO: Binding org.apache.hadoop.yarn.server.nodemanager.webapp.NMWebServices to GuiceManagedComponentProvider with the scope "Singleton"
Apr 17, 2015 7:46:25 AM com.google.inject.servlet.GuiceFilter setPipeline
WARNING: Multiple Servlet injectors detected. This is a warning indicating that you have more than one GuiceFilter running in your web application. If this is deliberate, you may safely ignore this message. If this is NOT deliberate however, your application may not work as expected.
{code}


---

* [TEZ-2341](https://issues.apache.org/jira/browse/TEZ-2341) | *Minor* | **TestMockDAGAppMaster.testBasicCounters fails on windows**

{code}
java.lang.AssertionError: null
	at org.junit.Assert.fail(Assert.java:86)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.junit.Assert.assertTrue(Assert.java:52)
	at org.apache.tez.dag.app.TestMockDAGAppMaster.testBasicCounters(TestMockDAGAppMaster.java:323)
{code}


---

* [TEZ-2340](https://issues.apache.org/jira/browse/TEZ-2340) | *Major* | **TestRecoveryParser fails**

Stacktrace
{code}
java.io.IOException: Not supported
	at org.apache.hadoop.fs.ChecksumFileSystem.append(ChecksumFileSystem.java:352)
	at org.apache.hadoop.fs.FileSystem.append(FileSystem.java:1174)
	at org.apache.tez.dag.history.recovery.RecoveryService.handleSummaryEvent(RecoveryService.java:365)
	at org.apache.tez.dag.history.recovery.RecoveryService.handle(RecoveryService.java:285)
	at org.apache.tez.dag.app.TestRecoveryParser.testSkipAllOtherEvents\_1(TestRecoveryParser.java:138)
{code}

Standard Output
{code}
2015-04-17 07:23:55,672 WARN  [main] fs.FileUtil (FileUtil.java:deleteImpl(187)) - Failed to delete file or dir [D:\w\tez\tez-dag\target\org.apache.tez.dag.app.TestRecoveryParser-tmpDir\recovery\1\.summary.crc]: it still exists.
2015-04-17 07:23:55,674 WARN  [main] fs.FileUtil (FileUtil.java:deleteImpl(187)) - Failed to delete file or dir [D:\w\tez\tez-dag\target\org.apache.tez.dag.app.TestRecoveryParser-tmpDir\recovery\1\summary]: it still exists.
2015-04-17 07:23:55,703 INFO  [Thread-5] impl.TestDAGImpl (TestDAGImpl.java:createTestDAGPlan(446)) - Setting up dag plan
2015-04-17 07:23:55,722 INFO  [Thread-5] recovery.RecoveryService (RecoveryService.java:serviceInit(109)) - Initializing RecoveryService
2015-04-17 07:23:55,723 INFO  [Thread-5] recovery.RecoveryService (RecoveryService.java:serviceStart(127)) - Starting RecoveryService
2015-04-17 07:23:55,724 ERROR [Thread-5] recovery.RecoveryService (RecoveryService.java:handle(314)) - Error handling summary event, eventType=DAG\_SUBMITTED
java.io.IOException: Not supported
	at org.apache.hadoop.fs.ChecksumFileSystem.append(ChecksumFileSystem.java:352)
	at org.apache.hadoop.fs.FileSystem.append(FileSystem.java:1174)
	at org.apache.tez.dag.history.recovery.RecoveryService.handleSummaryEvent(RecoveryService.java:365)
	at org.apache.tez.dag.history.recovery.RecoveryService.handle(RecoveryService.java:285)
	at org.apache.tez.dag.app.TestRecoveryParser.testSkipAllOtherEvents\_1(TestRecoveryParser.java:138)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:601)
	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:47)
	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)
	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:44)
	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:17)
	at org.junit.internal.runners.statements.FailOnTimeout$StatementThread.run(FailOnTimeout.java:74)
2015-04-17 07:23:55,724 ERROR [Thread-5] recovery.RecoveryService (RecoveryService.java:handle(318)) - Adding a flag to ensure next AM attempt does not start up, flagFile=target/org.apache.tez.dag.app.TestRecoveryParser-tmpDir/recovery/1/RecoveryFatalErrorOccurred
2015-04-17 07:23:55,725 ERROR [Thread-5] recovery.RecoveryService (RecoveryService.java:handle(323)) - Recovery failure occurred. Skipping all events
2015-04-17 07:23:55,756 ERROR [RecoveryEventHandlingThread] recovery.RecoveryService (RecoveryService.java:run(146)) - Recovery failure occurred. Stopping recovery thread. Current eventQueueSize=0
{code}


---

* [TEZ-2333](https://issues.apache.org/jira/browse/TEZ-2333) | *Major* | **Enable local fetch optimization by default.**

enable TEZ\_RUNTIME\_OPTIMIZE\_LOCAL\_FETCH by default.


---

* [TEZ-2330](https://issues.apache.org/jira/browse/TEZ-2330) | *Major* | **Create reconfigureVertex() API for input based initialization**

TEZ-2233 added a reconfigureVertex() to enable a cleaner API to change parallelism of a vertex. Adding a variant to do the same for input initialization based parallelism change would allow us to deprecate the older overloaded setParallelism() API.


---

* [TEZ-2325](https://issues.apache.org/jira/browse/TEZ-2325) | *Major* | **Route status update event directly to the attempt**

Today, all events from the attempt heartbeat are routed to the vertex. then the vertex routes (if any) status update events to the attempt. This is unnecessary and potentially creates out of order scenarios. We could route the status update events directly to attempts.


---

* [TEZ-2323](https://issues.apache.org/jira/browse/TEZ-2323) | *Major* | **Fix TestOrderedWordcount to use MR memory configs**

TestOrderedwordcount takes combination of  configs from mapred-site.xml and tez-site.xml. Due to considering mix of the mapred and tez configs, it fails with below error.

{noformat}
2015-04-15 13:20:53,599 DEBUG [main] app.RecoveryParser: Parsing event from input stream, eventType=TASK\_ATTEMPT\_FINISHED
2015-04-15 13:20:53,619 DEBUG [main] app.RecoveryParser: Parsed event from input stream, eventType=TASK\_ATTEMPT\_FINISHED, event=vertexName=null, taskAttemptId=attempt\_1429100089638\_0008\_1\_00\_000002\_0, startTime=0, finishTime=1429104012181, timeTaken=1429104012181, status=FAILED, errorEnum=FRAMEWORK\_ERROR, diagnostics=Error: Failure while running task:java.lang.IllegalArgumentException: tez.runtime.io.sort.mb 512 should be larger than 0 and should be less than the available task memory (MB):246
	at com.google.common.base.Preconditions.checkArgument(Preconditions.java:88)
	at org.apache.tez.runtime.library.common.sort.impl.ExternalSorter.getInitialMemoryRequirement(ExternalSorter.java:304)
	at org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput.initialize(OrderedPartitionedKVOutput.java:90)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:443)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:422)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [TEZ-2318](https://issues.apache.org/jira/browse/TEZ-2318) | *Major* | **Tez UI: source and sink page is broken as they are not populated.**

the error message is 
bq. error code: Unknown, message: Assertion Failed: You looked up the 'outputs' relationship on a 'vertex' with id vertex\_1428681176856\_0003\_1\_02 but some of the associated records were not loaded. Either make sure they are all loaded together with the parent record, or specify that the relationship is async (`DS.hasMany({ async: true })`)


---

* [TEZ-2314](https://issues.apache.org/jira/browse/TEZ-2314) | *Blocker* | **Tez task attempt failures due to bad event serialization**

{code}
2015-04-13 19:21:48,516 WARN [Socket Reader #3 for port 53530] ipc.Server: Unable to read call parameters for client 10.216.13.112on connection protocol org.apache.tez.common.TezTaskUmbilicalProtocol for rpcKind RPC\_WRITABLE
java.lang.ArrayIndexOutOfBoundsException: 1935896432
        at org.apache.tez.runtime.api.impl.EventMetaData.readFields(EventMetaData.java:120)
        at org.apache.tez.runtime.api.impl.TezEvent.readFields(TezEvent.java:271)
        at org.apache.tez.runtime.api.impl.TezHeartbeatRequest.readFields(TezHeartbeatRequest.java:110)
        at org.apache.hadoop.io.ObjectWritable.readObject(ObjectWritable.java:285)
        at org.apache.hadoop.ipc.WritableRpcEngine$Invocation.readFields(WritableRpcEngine.java:160)
        at org.apache.hadoop.ipc.Server$Connection.processRpcRequest(Server.java:1884)
        at org.apache.hadoop.ipc.Server$Connection.processOneRpc(Server.java:1816)
        at org.apache.hadoop.ipc.Server$Connection.readAndProcess(Server.java:1574)
        at org.apache.hadoop.ipc.Server$Listener.doRead(Server.java:806)
        at org.apache.hadoop.ipc.Server$Listener$Reader.doRunLoop(Server.java:673)
        at org.apache.hadoop.ipc.Server$Listener$Reader.run(Server.java:644)
{code}

cc/ [~hitesh] and [~bikassaha]


---

* [TEZ-2313](https://issues.apache.org/jira/browse/TEZ-2313) | *Blocker* | **Regression in handling obsolete events in ShuffleScheduler**

/cc [~rohini]

When an obsolete event is received then the shuffle scheduler fails fast even when pipelining is disabled. IIRC, obsolete inputs were supposed to fail the shuffled inputs if we were reading and merging partial spilled outputs. But in this case, pipelining is not on. So not sure why we are failing fast. 

{noformat}
Caused by: java.io.IOException: InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=4485], attemptNumber=1, pathComponent=null, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] is marked as obsoleteInput, but it exists in shuffleInfoEventMap. Some data could have been already merged to memory/disk outputs. Failing the fetch early.
at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.ShuffleScheduler.obsoleteInput(ShuffleScheduler.java:546)
at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.ShuffleInputEventHandlerOrderedGrouped.processTaskFailedEvent(ShuffleInputEventHandlerOrderedGrouped.java:122)
at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.ShuffleInputEventHandlerOrderedGrouped.handleEvent(ShuffleInputEventHandlerOrderedGrouped.java:73)
at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.ShuffleInputEventHandlerOrderedGrouped.handleEvents(ShuffleInputEventHandlerOrderedGrouped.java:63)
at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.Shuffle.handleEvents(Shuffle.java:246)
at org.apache.tez.runtime.library.input.OrderedGroupedKVInput.handleEvents(OrderedGroupedKVInput.java:265)
at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.handleEvent(LogicalIOProcessorRuntimeTask.java:620)
at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.access$1100(LogicalIOProcessorRuntimeTask.java:93)
at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$1.runInternal(LogicalIOProcessorRuntimeTask.java:683)
at org.apache.tez.common.RunnableWithNdc.run(RunnableWithNdc.java:35){noformat}
/cc [~rajesh.balamohan]


---

* [TEZ-2310](https://issues.apache.org/jira/browse/TEZ-2310) | *Major* | **Deadlock caused by StateChangeNotifier sending notifications on thread holding locks**

See the following deadlock in testing:

Thread#1:
{code}
Daemon Thread [App Shared Pool - #3] (Suspended)	
	owns: VertexManager$VertexManagerPluginContextImpl  (id=327)	
	owns: ShuffleVertexManager  (id=328)	
	owns: VertexManager  (id=329)	
	waiting for: VertexManager$VertexManagerPluginContextImpl  (id=326)	
	VertexManager$VertexManagerPluginContextImpl.onStateUpdated(VertexStateUpdate) line: 344	
	StateChangeNotifier$ListenerContainer.sendStateUpdate(VertexStateUpdate) line: 138	
	StateChangeNotifier$ListenerContainer.access$100(StateChangeNotifier$ListenerContainer, VertexStateUpdate) line: 122	
	StateChangeNotifier.sendStateUpdate(TezVertexID, VertexStateUpdate) line: 116	
	StateChangeNotifier.stateChanged(TezVertexID, VertexStateUpdate) line: 106	
	VertexImpl.maybeSendConfiguredEvent() line: 3385	
	VertexImpl.doneReconfiguringVertex() line: 1634	
	VertexManager$VertexManagerPluginContextImpl.doneReconfiguringVertex() line: 339	
	ShuffleVertexManager.schedulePendingTasks(int) line: 561	
	ShuffleVertexManager.schedulePendingTasks() line: 620	
	ShuffleVertexManager.handleVertexStateUpdate(VertexStateUpdate) line: 731	
	ShuffleVertexManager.onVertexStateUpdated(VertexStateUpdate) line: 744	
	VertexManager$VertexManagerEventOnVertexStateUpdate.invoke() line: 527	
	VertexManager$VertexManagerEvent$1.run() line: 612	
	VertexManager$VertexManagerEvent$1.run() line: 607	
	AccessController.doPrivileged(PrivilegedExceptionAction<T>, AccessControlContext) line: not available [native method]	
	Subject.doAs(Subject, PrivilegedExceptionAction<T>) line: 415	
	UserGroupInformation.doAs(PrivilegedExceptionAction<T>) line: 1548	
	VertexManager$VertexManagerEventOnVertexStateUpdate(VertexManager$VertexManagerEvent).call() line: 607	
	VertexManager$VertexManagerEventOnVertexStateUpdate(VertexManager$VertexManagerEvent).call() line: 596	
	ListenableFutureTask<V>(FutureTask<V>).run() line: 262	
	ThreadPoolExecutor.runWorker(ThreadPoolExecutor$Worker) line: 1145	
	ThreadPoolExecutor$Worker.run() line: 615	
	Thread.run() line: 745	
{code}
Thread #2
{code}
Daemon Thread [App Shared Pool - #2] (Suspended)	
	owns: VertexManager$VertexManagerPluginContextImpl  (id=326)	
	owns: PigGraceShuffleVertexManager  (id=344)	
	owns: VertexManager  (id=345)	
	Unsafe.park(boolean, long) line: not available [native method]	
	LockSupport.park(Object) line: 186	
	ReentrantReadWriteLock$NonfairSync(AbstractQueuedSynchronizer).parkAndCheckInterrupt() line: 834	
	ReentrantReadWriteLock$NonfairSync(AbstractQueuedSynchronizer).doAcquireShared(int) line: 964	
	ReentrantReadWriteLock$NonfairSync(AbstractQueuedSynchronizer).acquireShared(int) line: 1282	
	ReentrantReadWriteLock$ReadLock.lock() line: 731	
	VertexImpl.getTotalTasks() line: 952	
	VertexManager$VertexManagerPluginContextImpl.getVertexNumTasks(String) line: 162	
	PigGraceShuffleVertexManager(ShuffleVertexManager).updateSourceTaskCount() line: 435	
	PigGraceShuffleVertexManager(ShuffleVertexManager).onVertexStarted(Map<String,List<Integer>>) line: 353	
	VertexManager$VertexManagerEventOnVertexStarted.invoke() line: 541	
	VertexManager$VertexManagerEvent$1.run() line: 612	
	VertexManager$VertexManagerEvent$1.run() line: 607	
	AccessController.doPrivileged(PrivilegedExceptionAction<T>, AccessControlContext) line: not available [native method]	
	Subject.doAs(Subject, PrivilegedExceptionAction<T>) line: 415	
	UserGroupInformation.doAs(PrivilegedExceptionAction<T>) line: 1548	
	VertexManager$VertexManagerEventOnVertexStarted(VertexManager$VertexManagerEvent).call() line: 607	
	VertexManager$VertexManagerEventOnVertexStarted(VertexManager$VertexManagerEvent).call() line: 596	
	ListenableFutureTask<V>(FutureTask<V>).run() line: 262	
	ThreadPoolExecutor.runWorker(ThreadPoolExecutor$Worker) line: 1145	
	ThreadPoolExecutor$Worker.run() line: 615	
	Thread.run() line: 745	
{code}
What happens is thread #1 holding a writeLock (VertexImpl:1628) and enter into a synchronized block (ShuffleVertexManager.onVertexStateUpdated), in the mean time, thread #2 already in the synchronized block (ShuffleVertexManager.onVertexStarted) and try to get a readLock(VertexImpl:952). Holding a lock and then enter a synchronized block might be dangerous. 

I attach a patch which avoiding that and then deadlock goes away. Not sure if that is the right fix or if any other patterns like this.


---

* [TEZ-2308](https://issues.apache.org/jira/browse/TEZ-2308) | *Major* | **Add set/get of record counts in task/vertex statistics**

In addition to data size, getting record count would be useful. /cc [~rohini]


---

* [TEZ-2305](https://issues.apache.org/jira/browse/TEZ-2305) | *Critical* | **MR compatibility sleep job fails with IOException: Undefined job output-path**

Running MR sleep job has an IOException.

{code}
15/04/09 20:52:25 INFO mapreduce.Job: Job job\_1428612196442\_0002 failed with state FAILED due to: Vertex failed, vertexName=initialmap, vertexId=vertex\_1428612196442\_0002\_1\_00, diagnostics=[Task failed, taskId=task\_1428612196442\_0002\_1\_00\_000001, diagnostics=[TaskAttempt 0 failed, info=[Error: Failure while running task:java.io.IOException: Undefined job output-path
	at org.apache.hadoop.mapred.FileOutputFormat.getTaskOutputPath(FileOutputFormat.java:248)
	at org.apache.hadoop.mapred.TextOutputFormat.getRecordWriter(TextOutputFormat.java:121)
	at org.apache.tez.mapreduce.output.MROutput.initialize(MROutput.java:401)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:436)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:415)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
], TaskAttempt 1 failed, info=[Error: Failure while running task:java.io.IOException: Undefined job output-path
	at org.apache.hadoop.mapred.FileOutputFormat.getTaskOutputPath(FileOutputFormat.java:248)
	at org.apache.hadoop.mapred.TextOutputFormat.getRecordWriter(TextOutputFormat.java:121)
	at org.apache.tez.mapreduce.output.MROutput.initialize(MROutput.java:401)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:436)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:415)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
], TaskAttempt 2 failed, info=[Error: Failure while running task:java.io.IOException: Undefined job output-path
	at org.apache.hadoop.mapred.FileOutputFormat.getTaskOutputPath(FileOutputFormat.java:248)
	at org.apache.hadoop.mapred.TextOutputFormat.getRecordWriter(TextOutputFormat.java:121)
	at org.apache.tez.mapreduce.output.MROutput.initialize(MROutput.java:401)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:436)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:415)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
], TaskAttempt 3 failed, info=[Error: Failure while running task:java.io.IOException: Undefined job output-path
	at org.apache.hadoop.mapred.FileOutputFormat.getTaskOutputPath(FileOutputFormat.java:248)
	at org.apache.hadoop.mapred.TextOutputFormat.getRecordWriter(TextOutputFormat.java:121)
	at org.apache.tez.mapreduce.output.MROutput.initialize(MROutput.java:401)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:436)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.callInternal(LogicalIOProcessorRuntimeTask.java:415)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:471)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
]], Vertex failed as one or more tasks failed. failedTasks:1, Vertex vertex\_1428612196442\_0002\_1\_00 [initialmap] killed/failed due to:null]. DAG failed due to vertex failure. failedVertices:1 killedVertices:0
15/04/09 20:52:25 INFO mapreduce.Job: Counters: 0
{code}


---

* [TEZ-2299](https://issues.apache.org/jira/browse/TEZ-2299) | *Major* | **Invalid dag creation in MRRSleepJob post TEZ-2293**

When running: "mrrsleep -m 10 -mt 5000 -r 10 -irs 3 -ir 10 -irt 3000 -rt 5000"

java.lang.ArrayIndexOutOfBoundsException: 3
	at org.apache.tez.mapreduce.examples.MRRSleepJob.createDAG(MRRSleepJob.java:584)
	at org.apache.tez.mapreduce.examples.MRRSleepJob.run(MRRSleepJob.java:748)
	at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
	at org.apache.tez.mapreduce.examples.MRRSleepJob.main(MRRSleepJob.java:399)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:71)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:144)


---

* [TEZ-2298](https://issues.apache.org/jira/browse/TEZ-2298) | *Major* | **Ignore sending failure message, when TaskReporter$HeartbeatCallable is shutdown**

{noformat}

2015-04-09 03:18:37,002 INFO [TezChild] task.TezTaskRunner: Ignoring the following exception since a previous exception is already registered
java.lang.NullPointerException
        at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.access$300(TaskReporter.java:121)
        at org.apache.tez.runtime.task.TaskReporter.taskFailed(TaskReporter.java:383)
        at org.apache.tez.runtime.task.TezTaskRunner.sendFailure(TezTaskRunner.java:265)
        at org.apache.tez.runtime.task.TezTaskRunner.access$600(TezTaskRunner.java:51)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:227)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:171)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:422)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:171)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.callInternal(TezTaskRunner.java:167)
        at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
{noformat}

Lot of these messages are seen in logs.  Even though it is harmless, this can be very misleading when trying to debug the reason for some other exception.


---

* [TEZ-2293](https://issues.apache.org/jira/browse/TEZ-2293) | *Major* | **When running in "mr" mode, always use MR config settings**

Current implementation is a bit confusing. 

For example, MRRSleepJob uses all MR specific values. However, in some cases, when doing config conversions, if there is an existing value for the translated tez property, that value does not get overridden in favour of the MR specified value.


---

* [TEZ-2292](https://issues.apache.org/jira/browse/TEZ-2292) | *Blocker* | **Add e2e test for error reporting when vertex manager invokes plugin APIs**

If the Vertex Manager has an error or cannot apply a required reconfiguration then it should be allowed to fail the vertex.


---

* [TEZ-2290](https://issues.apache.org/jira/browse/TEZ-2290) | *Blocker* | **Scale memory for Default Sorter down to a max of 2047 MB if configured higher**

Given that Pipeline sorter is now the default, the memory configured may likely be more than 2 GB. If a user switches from pipeline to default, they will hit problems straight away. We should scale default sorter's memory config to a max of 2 GB and log a warning.


---

* [TEZ-2275](https://issues.apache.org/jira/browse/TEZ-2275) | *Major* | **Tez UI: enable faster loading and caching of data in tables**

Loading:
# Remove counter serialization for all entities to make loading faster.
# Ensure that counter tables works with unserialized data.
# Ensure display of counter data in entity tables.

Caching:
# Separate cache for each table: Refreshing vertex->tasks shouldn't partially update values displayed in All Tasks table.
# Refreshing an entity, shouldn't change the respective record in any tables.
# Ensure all data displayed in a table are from a single time frame. (No part of the table should be partially updated by actions elsewhere)
# Data cached would be limited to one DAG at a time. (To limit the values stores in the browser side)


---

* [TEZ-2274](https://issues.apache.org/jira/browse/TEZ-2274) | *Major* | **Tez UI: full data loading, client side search and sort for other pages**

1. Make all tables use ember-table component
2. Support loading of all rows with caching
3. Support searching & sorting


---

* [TEZ-2273](https://issues.apache.org/jira/browse/TEZ-2273) | *Major* | **Tez UI: Support client side searching & sorting for dag tasks page**

Support search and sorting in basic-ember-table component.


---

* [TEZ-2269](https://issues.apache.org/jira/browse/TEZ-2269) | *Major* | **DAGAppMaster becomes unresponsive**

Scenario:
- Run TPCH query20 @ 1 TB scale
- Tez master branch, Hive trunk
- auto-reduce parallelism is not an issue (happens with/without auto-reduce parallelism)

1 or 2 times in 10 runs, DAGAppMaster would freeze unexpectedly.  There is no pattern observed on which vertex it happens. But when this happens, only option is to kill the application.   I will attach the jstack soon, but that doesn't seem to reveal much.

Need to debug more; Creating this JIRA for tracking purposes.


---

* [TEZ-2265](https://issues.apache.org/jira/browse/TEZ-2265) | *Major* | **All inputs/outputs in a task share the same counter object**

This makes one input which reads the value of a counter to see updates that were made by some other input/output. Any decisions based on those counter values could be wrong and as of today, the output data size reported  in vertex manager event or by shuffle pipelining is potentially wrong.
Simple fix would be to have each IO have their own counters and merge them before reporting back up in the heartbeat.


---

* [TEZ-2261](https://issues.apache.org/jira/browse/TEZ-2261) | *Major* | **Should add diagnostics in DAGAppMaster when recovery error happens**

Should add diagnostics in DAGAppMaster when recovery error happens, otherwise AM is shutdown and the next dag submission will just throw SessionNotRunningException which would confuse users.

{code}
        if (this.historyEventHandler.hasRecoveryFailed()) {
          LOG.warn("Recovery had a fatal error, shutting down session after" +
              " DAG completion");
          sessionStopped.set(true);
        }
{code}


---

* [TEZ-2252](https://issues.apache.org/jira/browse/TEZ-2252) | *Major* | **Tez UI: in graphical view some of the sinks are hidden as they overlap**

  The information in the .dot file is correct and script runs fine. But the Tez UI Graphical view shows that output is being written from multiple vertices into one sink. Actually it is writing to multiple sinks (checking the html elements in Firebug), but the sink circles all overlap one another with exact coordinates and the tool tip only shows for the top one.


---

* [TEZ-2251](https://issues.apache.org/jira/browse/TEZ-2251) | *Major* | **Race condition in VertexImpl & Edge causes DAG to hang**

Scenario:
- Run TPCH query20 (https://github.com/cartershanklin/hive-testbench/blob/master/sample-queries-tpch/tpch\_query20.sql) at 1 TB scale (tez-master branch, hive trunk)
- Enable auto reduce parallelism
- DAG didn't complete and got stuck in "Reducer 6"

Vertex parallelism of "Reducer 5 & 6" happens within a span of 3 milliseconds, and tasks of "reducer 5" ends up producing wrong partition details as it sees the updated task numbers of reducer 6 when scheduled.  This causes, job to hang.


---

* [TEZ-2248](https://issues.apache.org/jira/browse/TEZ-2248) | *Major* | **VertexImpl/DAGImpl.checkForCompletion have too many termination cause checks**

There is an if check for each termination cause which makes code long and we need to handle each new termination cause with more code. This could be abstracted into a method that gets termination cause string based on the enum and make this method shorter and stable.


---

* [TEZ-2243](https://issues.apache.org/jira/browse/TEZ-2243) | *Minor* | **documentation should explicitly specify protobuf 2.5.0**

Install guide doc at 
http://tez.apache.org/install.html 
says:

> ... Protocol Buffers (protoc compiler) 2.5 or later

In fact, protobuf 2.5.0 is required. 

On a Mac, both the libraries and the protobuf-compiler can be installed with:

$ brew install protobuf250

The yum repos on my CentOS system included epel & epel-testing. 
Nevertheless, they were only at protobuf 2.3.0

I used rpm.pbone.net and found the following:
protobuf-2.5.0-16.1.x86\_64.rpm
protobuf-compiler-2.5.0-16.1.x86\_64.rpm

at

http://rpm.pbone.net/index.php3/stat/4/idpl/23552166/dir/centos\_6/com/protobuf-2.5.0-16.1.x86\_64.rpm.html
http://rpm.pbone.net/index.php3/stat/4/idpl/23552097/dir/centos\_6/com/protobuf-compiler-2.5.0-16.1.i686.rpm.html

Hitesh Shah wrote:
> Pretty much all of the Hadoop ecosystem components have standardized on protobuf-2.5.0. 

Hitesh Shah wrote:
> Could you file a jira and submit a patch for this issue 

Sorry, I don't know how to submit a patch.


---

* [TEZ-2237](https://issues.apache.org/jira/browse/TEZ-2237) | *Critical* | **Valid events should be sent out when an Output is not started**

On a specific DAG with many vertices (actually part of a larger meta-DAG), after about a hour of processing, several BufferTooSmallException are raised in UnorderedPartitionedKVWriter (about one every two or three spills).

Once these exceptions are raised, the DAG remains indefinitely "active", tying up memory and CPU resources as far as YARN is concerned, while little if any actual processing takes place. 

It seems two separate issues are at hand:
  1. BufferTooSmallException are raised even though, small as the actually allocated buffers seem to be (around a couple megabytes were allotted whereas 100MiB were requested), the actual keys and values are never bigger than 24 and 1024 bytes respectively.

  2. In the event BufferTooSmallExceptions are raised, the DAG fails to stop (stop requests appear to be sent 7 hours after the BTSE exceptions are raised, but 9 hours after these stop requests, the DAG was still lingering on with all containers present tying up memory and CPU allocations)

The emergence of the BTSE prevent the Cascade to complete, preventing from validating the results compared to traditional MR1-based results. The lack of conclusion renders the cluster queue unavailable.


---

* [TEZ-2236](https://issues.apache.org/jira/browse/TEZ-2236) | *Major* | **Tez UI: Support loading of all tasks in the dag tasks page**

1. ember-table component was replaced with basic-ember-table component. Its lightweight, easy to customize, uses pure css for layout and supports cell level lazy loading and Pagination of complete loaded data.
2. Load all rows in two phases - First load some rows for preview, then load all related records to be displayed.
3. Support caching of data across tabs.


---

* [TEZ-2234](https://issues.apache.org/jira/browse/TEZ-2234) | *Major* | **Add API for statistics information - allow vertex managers to get output size per source vertex**

Vertex managers may need per source vertex output stats to make reconfiguration decisions.


---

* [TEZ-2233](https://issues.apache.org/jira/browse/TEZ-2233) | *Major* | **Allow EdgeProperty of an edge to be changed by VertexManager**

Currently, all edge managers set during setParallelism end up becoming custom edges. However, just like during dag creation, it should be possible to specify standard edge types like scatter\_gather if that is what the final user decision is. More broadly, allowing the complete EdgeProperty to be specified at runtime would make that action at par with compile time.


---

* [TEZ-2232](https://issues.apache.org/jira/browse/TEZ-2232) | *Major* | **Allow setParallelism to be called multiple times before tasks get scheduled**

Currently, this is allowed only once currently. It is harder to support this after the vertex tasks have already started running. But allowing it before tasks start running is actually trivial. This just allows VertexManagers to change their minds multiple times before they start the vertex processing.


---

* [TEZ-2231](https://issues.apache.org/jira/browse/TEZ-2231) | *Major* | **Create project by-laws**

Define the Project by-laws.


---

* [TEZ-2224](https://issues.apache.org/jira/browse/TEZ-2224) | *Major* | **EventQueue empty doesn't mean events are consumed in RecoveryService**

If the event queue is empty, the event may still been processing. Should fix it like AsyncDispatcher


---

* [TEZ-2223](https://issues.apache.org/jira/browse/TEZ-2223) | *Major* | **TestMockDAGAppMaster fails due to TEZ-2210 on mac**

[~bikassaha] looks like TestMockDAGAppMaster fails due to TEZ-2210 
It would fail on mac due to cpuPlugin is null


---

* [TEZ-2221](https://issues.apache.org/jira/browse/TEZ-2221) | *Major* | **VertexGroup name should be unqiue**

VertexGroupCommitStartedEvent & VertexGroupCommitFinishedEvent use vertex group name to identify the vertex group commit, the same name of vertex group will conflict. While in the current equals & hashCode of VertexGroup, vertex group name and members name are used.


---

* [TEZ-2213](https://issues.apache.org/jira/browse/TEZ-2213) | *Major* | **For the ordered case, enabling pipelined shuffle should automatically disable final merge**

Currently, it ends up throwing an exception. Given the defaults - enabling pipelined shuffle requires two parameters to be set.


---

* [TEZ-2212](https://issues.apache.org/jira/browse/TEZ-2212) | *Major* | **Notify components on DAG completion**

Various components, especially the ones that are made pluggable by TEZ-2003, should be informed about DAG completion, so that they can perform required cleanup - ContainerLauncher, TaskAttemptListener, Scheduler (already informed). In addition ID caches etc should be cleaned up.


---

* [TEZ-2209](https://issues.apache.org/jira/browse/TEZ-2209) | *Major* | **Fix pipelined shuffle to fetch data from any one attempt**

- Currently, pipelined shuffle will fail-fast the moment it receives data from an attempt other than 0.  This was done as an add-on check to prevent data being copied from speculated attempts.
- However, in some scenarios (like LLAP), it could be possible that that task attempt gets killed even before generating any data.  In such cases, attempt #1 or later attempts, would generate the actual data.
- This jira is created to allow pipelined shuffle to download data from any one attempt.


---

* [TEZ-2204](https://issues.apache.org/jira/browse/TEZ-2204) | *Major* | **TestAMRecovery increasingly flaky on jenkins builds.**

In recent pre-commit builds and daily builds, there seem to have been some occurrences of TestAMRecovery failing or timing out.


---

* [TEZ-2203](https://issues.apache.org/jira/browse/TEZ-2203) | *Major* | **Intern strings in tez counters**

Getting per IO counters is possible today. This jira tracks work needed to enabled them by default. Internalizing strings to save memory is one item needed.


---

* [TEZ-2202](https://issues.apache.org/jira/browse/TEZ-2202) | *Major* | **Fix LocalTaskExecutionThread ID to the standard thread numbering**

LocalTasks do not appear in YARN swimlanes due to the thread-ids containing the same characters as the logging boundaries of [].

Fix the thread-id to have the #<n> numbering scheme instead.


---

* [TEZ-2196](https://issues.apache.org/jira/browse/TEZ-2196) | *Major* | **Consider reusing UnorderedPartitionedKVWriter with single output in UnorderedKVOutput**

Can possibly get rid of FileBasedKVWriter and reuse UnorderedPartitionedKVWriter with single partition in UnorderedKVOutput.  This can also benefit from pipelined shuffle changes done in UnorderedPartitionedKVWriter.


---

* [TEZ-2195](https://issues.apache.org/jira/browse/TEZ-2195) | *Major* | **TestTezJobs::testInvalidQueueSubmission/testInvalidQueueSubmissionToSession fail with hadoop branch-2**

org.apache.hadoop.yarn.exceptions.YarnException: Failed to submit application\_1426119654676\_0010 to YARN : Application application\_1426119654676\_0010 submitted by user jenkins to unknown queue: nonexistent
Stacktrace

org.apache.tez.dag.api.TezException: org.apache.hadoop.yarn.exceptions.YarnException: Failed to submit application\_1426119654676\_0010 to YARN : Application application\_1426119654676\_0010 submitted by user jenkins to unknown queue: nonexistent
	at org.apache.hadoop.yarn.client.api.impl.YarnClientImpl.submitApplication(YarnClientImpl.java:270)
	at org.apache.tez.client.TezYarnClient.submitApplication(TezYarnClient.java:70)
	at org.apache.tez.client.TezClient.submitDAGApplication(TezClient.java:734)
	at org.apache.tez.client.TezClient.submitDAGApplication(TezClient.java:703)
	at org.apache.tez.client.TezClient.submitDAG(TezClient.java:383)
	at org.apache.tez.examples.TezExampleBase.runDag(TezExampleBase.java:127)
	at org.apache.tez.examples.SimpleSessionExample.runJob(SimpleSessionExample.java:93)
	at org.apache.tez.examples.TezExampleBase.\_execute(TezExampleBase.java:179)
	at org.apache.tez.examples.TezExampleBase.run(TezExampleBase.java:112)
	at org.apache.tez.test.TestTezJobs.testInvalidQueueSubmission(TestTezJobs.java:698)


---

* [TEZ-2186](https://issues.apache.org/jira/browse/TEZ-2186) | *Major* | **OOM with a simple scatter gather job with re-use**

With a no-op scatter gather job, 20K x 2K, on a 20 node cluster with 20 2GB containers per node - reducers end up failing with OOM errors. Haven't been able to generate a heap dump yet. Will add details as they're found.


---

* [TEZ-2178](https://issues.apache.org/jira/browse/TEZ-2178) | *Major* | **YARN-3122 breaks tez compilation with hadoop 2.7.0**

>>>
/tez/tez-plugins/tez-mbeans-resource-calculator/src/main/java/org/apache/tez/util/TezMxBeanResourceCalculator.java:[30,8] org.apache.tez.util.TezMxBeanResourceCalculator is not abstract and does not override abstract method getCpuUsagePercent() in org.apache.hadoop.yarn.util.ResourceCalculatorProcessTree
>>>


---

* [TEZ-2176](https://issues.apache.org/jira/browse/TEZ-2176) | *Major* | **Move all logging to slf4j**

SLF4J supports a more comprehensive set of APIs - MDC, Formatted strings.
Also drop commons-logging from the dependency set.


---

* [TEZ-2174](https://issues.apache.org/jira/browse/TEZ-2174) | *Major* | **Make task priority available to TaskAttemptListener**

Useful for TEZ-2003, to allow the task communicator / external service to make use of the priority.


---

* [TEZ-2171](https://issues.apache.org/jira/browse/TEZ-2171) | *Major* | **Remove unused metrics code**

DefaultMetricsSystem.shutdown() is called in TezChild. IIUC, shutdown is meant to be called in daemon context (datanode/namenode). LLAP daemon initializes the metrics system, after running the first query TezChild shuts down the metrics system which results in closing of all metrics endpoints/sinks.


---

* [TEZ-2170](https://issues.apache.org/jira/browse/TEZ-2170) | *Critical* | **Incorrect its in README.md**

{noformat}At it's heart...{noformat}
should be 
{noformat}At its heart...{noformat}


---

* [TEZ-2159](https://issues.apache.org/jira/browse/TEZ-2159) | *Major* | **Tez UI: download timeline data for offline use.**

It is useful to have capability to download the timeline data for a dag for offline analysis. for ex. TEZ-2076 uses the timeline data to do offline analysis of a tez application run.


---

* [TEZ-2149](https://issues.apache.org/jira/browse/TEZ-2149) | *Major* | **Optimizations for the timed version of DAGClient.getStatus**

From https://issues.apache.org/jira/browse/TEZ-1967?focusedCommentId=14325037&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14325037

- The sleep within the AM can be improved via monitors.
- INITED state is returned when communicating with the AM, SUBMITTED state is returned when communicating with the RM. That could be used to optimize the flow.


---

* [TEZ-2133](https://issues.apache.org/jira/browse/TEZ-2133) | *Major* | **Secured Impersonation: Failed to delete tez scratch data dir**

Running Tez-0.5.2 with secure impersonation / kerberos. Importing data from secured hive.
Job is successful. But in the logs i find those warnings:

{noformat}
2015-01-14 17:05:49,150 INFO [Thread-1] org.apache.tez.dag.app.DAGAppMaster: DAGAppMasterShutdownHook invoked
2015-01-14 17:05:49,151 INFO [Thread-1] org.apache.tez.dag.app.DAGAppMaster: The shutdown handler is still running, waiting for it to complete
2015-01-14 17:05:49,153 WARN [AMShutdownThread] org.apache.hadoop.security.UserGroupInformation: PriviledgedActionException as:qa (auth:TOKEN) cause:org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]
2015-01-14 17:05:49,164 WARN [AMShutdownThread] org.apache.hadoop.ipc.Client: Exception encountered while connecting to the server : org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]
2015-01-14 17:05:49,165 WARN [AMShutdownThread] org.apache.hadoop.security.UserGroupInformation: PriviledgedActionException as:qa (auth:TOKEN) cause:java.io.IOException: org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]
2015-01-14 17:05:49,165 WARN [AMShutdownThread] org.apache.tez.dag.app.DAGAppMaster: Failed to delete tez scratch data dir
java.io.IOException: Failed on local exception: java.io.IOException: org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]; Host Details : local host is: "ip-10-108-195-141/10.108.195.141"; destination host is: "ip-10-71-51-148":8020; 
     at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:764)
     at org.apache.hadoop.ipc.Client.call(Client.java:1413)
     at org.apache.hadoop.ipc.Client.call(Client.java:1362)
     at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
     at com.sun.proxy.$Proxy7.delete(Unknown Source)
     at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
     at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
     at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
     at java.lang.reflect.Method.invoke(Method.java:606)
     at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:186)
     at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
     at com.sun.proxy.$Proxy7.delete(Unknown Source)
     at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.delete(ClientNamenodeProtocolTranslatorPB.java:484)
     at org.apache.hadoop.hdfs.DFSClient.delete(DFSClient.java:1699)
     at org.apache.hadoop.hdfs.DistributedFileSystem$11.doCall(DistributedFileSystem.java:595)
     at org.apache.hadoop.hdfs.DistributedFileSystem$11.doCall(DistributedFileSystem.java:591)
     at org.apache.hadoop.fs.FileSystemLinkResolver.resolve(FileSystemLinkResolver.java:81)
     at org.apache.hadoop.hdfs.DistributedFileSystem.delete(DistributedFileSystem.java:591)
     at org.apache.tez.dag.app.DAGAppMaster.serviceStop(DAGAppMaster.java:1578)
     at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
     at org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterShutdownHandler$AMShutdownRunnable.run(DAGAppMaster.java:632)
     at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.IOException: org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]
     at org.apache.hadoop.ipc.Client$Connection$1.run(Client.java:677)
     at java.security.AccessController.doPrivileged(Native Method)
     at javax.security.auth.Subject.doAs(Subject.java:415)
     at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1554)
     at org.apache.hadoop.ipc.Client$Connection.handleSaslConnectionFailure(Client.java:640)
     at org.apache.hadoop.ipc.Client$Connection.setupIOstreams(Client.java:724)
     at org.apache.hadoop.ipc.Client$Connection.access$2800(Client.java:367)
     at org.apache.hadoop.ipc.Client.getConnection(Client.java:1461)
     at org.apache.hadoop.ipc.Client.call(Client.java:1380)
     ... 20 more
Caused by: org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]
     at org.apache.hadoop.security.SaslRpcClient.selectSaslClient(SaslRpcClient.java:170)
     at org.apache.hadoop.security.SaslRpcClient.saslConnect(SaslRpcClient.java:393)
     at org.apache.hadoop.ipc.Client$Connection.setupSaslConnection(Client.java:550)
     at org.apache.hadoop.ipc.Client$Connection.access$1800(Client.java:367)
     at org.apache.hadoop.ipc.Client$Connection$2.run(Client.java:716)
     at org.apache.hadoop.ipc.Client$Connection$2.run(Client.java:712)
     at java.security.AccessController.doPrivileged(Native Method)
     at javax.security.auth.Subject.doAs(Subject.java:415)
     at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1554)
     at org.apache.hadoop.ipc.Client$Connection.setupIOstreams(Client.java:711)
     ... 23 more
2015-01-14 17:05:49,166 INFO [Thread-1] org.apache.tez.dag.app.DAGAppMaster: The shutdown handler has completed
2015-01-14 17:05:49,167 INFO [AMShutdownThread] org.apache.tez.dag.app.DAGAppMaster: Exiting DAGAppMaster..GoodBye!
{noformat}

Also i see this very often, not sure if related:
{noformat}
2015-01-14 17:16:08,793 WARN [AMShutdownThread] org.apache.tez.dag.history.recovery.RecoveryService: Error when closing summary stream
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.hdfs.server.namenode.LeaseExpiredException): No lease on /user/albert/temp/job-22/staging/.tez/application\_1421233109369\_0019/recovery/1/summary (inode 17605): File does not exist. Holder DFSClient\_NONMAPREDUCE\_813708729\_1 does not have any open files.
     at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:2991)
     at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFileInternal(FSNamesystem.java:3077)
     at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFile(FSNamesystem.java:3047)
     at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.complete(NameNodeRpcServer.java:628)
     at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.complete(ClientNamenodeProtocolServerSideTranslatorPB.java:484)
     at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
     at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)
     at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:1026)
     at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1986)
     at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1982)
     at java.security.AccessController.doPrivileged(Native Method)
     at javax.security.auth.Subject.doAs(Subject.java:415)
     at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1554)
     at org.apache.hadoop.ipc.Server$Handler.run(Server.java:1980)

     at org.apache.hadoop.ipc.Client.call(Client.java:1409)
     at org.apache.hadoop.ipc.Client.call(Client.java:1362)
     at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
     at com.sun.proxy.$Proxy7.complete(Unknown Source)
     at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
     at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
     at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
     at java.lang.reflect.Method.invoke(Method.java:606)
     at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:186)
     at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)
     at com.sun.proxy.$Proxy7.complete(Unknown Source)
     at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.complete(ClientNamenodeProtocolTranslatorPB.java:406)
     at org.apache.hadoop.hdfs.DFSOutputStream.completeFile(DFSOutputStream.java:2116)
     at org.apache.hadoop.hdfs.DFSOutputStream.close(DFSOutputStream.java:2100)
     at org.apache.hadoop.fs.FSDataOutputStream$PositionCache.close(FSDataOutputStream.java:70)
     at org.apache.hadoop.fs.FSDataOutputStream.close(FSDataOutputStream.java:103)
     at org.apache.tez.dag.history.recovery.RecoveryService.serviceStop(RecoveryService.java:201)
     at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
     at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
     at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
     at org.apache.hadoop.service.CompositeService.stop(CompositeService.java:158)
     at org.apache.hadoop.service.CompositeService.serviceStop(CompositeService.java:132)
     at org.apache.tez.dag.history.HistoryEventHandler.serviceStop(HistoryEventHandler.java:80)
     at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
     at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)
     at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)
     at org.apache.tez.dag.app.DAGAppMaster.stopServices(DAGAppMaster.java:1429)
     at org.apache.tez.dag.app.DAGAppMaster.serviceStop(DAGAppMaster.java:1561)
     at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)
     at org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterShutdownHandler$AMShutdownRunnable.run(DAGAppMaster.java:632)
     at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [TEZ-2130](https://issues.apache.org/jira/browse/TEZ-2130) | *Major* | **Send the sessionToken as part of the AM CLC**

In the case where we run tasks within the AM, and downstream tasks need to fetch data generated by this task - shuffle may not work.
The shuffleToken is currently available to auxServices running on the AM node manager only if other tasks also run on this. If that doesn't happen, shuffle from these nodes would fail.


---

* [TEZ-2095](https://issues.apache.org/jira/browse/TEZ-2095) | *Critical* | **master branch fails to compile against hadoop-2.4**

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.1:testCompile (default-testCompile) on project tez-dag: Compilation failure
[ERROR] /Users/hitesh/dev/apache/tez/tez-dag/src/test/java/org/apache/tez/dag/app/TestTaskAttemptListenerImplTezDag.java:[161,42] cannot find symbol
[ERROR] symbol:   method newContainerId(org.apache.hadoop.yarn.api.records.ApplicationAttemptId,long)
[ERROR] location: class org.apache.hadoop.yarn.api.records.ContainerId


---

* [TEZ-2085](https://issues.apache.org/jira/browse/TEZ-2085) | *Major* | **PipelinedSorter should bail out (on BufferOverflowException) instead of retrying continuously**

If we try to fit in a key/value pair which is great than the size that sort span can accommodate, PipelinedSorter would try to sort/spill indefinitely.  This is more of a corner case.  It should bail out gracefully and can throw back IOException instead.


---

* [TEZ-2082](https://issues.apache.org/jira/browse/TEZ-2082) | *Major* | **Race condition in TaskAttemptListenerImpTezDag.getTask()**

From https://builds.apache.org/job/Tez-Build/891/testReport/junit/org.apache.tez.dag.app/TestPreemption/testPreemptionWithSession/


Exception in thread "Thread-27" java.lang.NullPointerException
	at org.apache.tez.dag.app.TaskAttemptListenerImpTezDag.getTask(TaskAttemptListenerImpTezDag.java:222)
	at org.apache.tez.dag.app.MockDAGAppMaster$MockContainerLauncher.run(MockDAGAppMaster.java:230)
	at java.lang.Thread.run(Thread.java:662)


---

* [TEZ-2080](https://issues.apache.org/jira/browse/TEZ-2080) | *Major* | **Localclient should be using tezconf in init instead of yarnconf**

currently in the LocalClient the config used is yarnconf. this should be tezconf.

{code:title=LocalClient.java}
@Override
  public void init(TezConfiguration tezConf, YarnConfiguration yarnConf) {
    this.conf = yarnConf;
{code}


---

* [TEZ-2075](https://issues.apache.org/jira/browse/TEZ-2075) | *Critical* | **Incompatible issue caused by TEZ-1233 that TezConfiguration.TEZ\_SITE\_XML is made private**

* TezConfiguration.TEZ\_SITE\_XML is used in pig, but it is made private in TEZ-1233 which is an incompatible change.


---

* [TEZ-2059](https://issues.apache.org/jira/browse/TEZ-2059) | *Minor* | **Remove TaskEventHandler in TestDAGImpl**

There's one TaskEventHandler and TaskEventDispatcher in TestDAGImpl, and both of them are registered in Dispatcher as handler of TaskEvent. TaskEventHandler should not be used.


---

* [TEZ-2057](https://issues.apache.org/jira/browse/TEZ-2057) | *Major* | **tez-dag/pom.xml contains versions for dependencies**

Introduced accidentally as part of TEZ-2018. Versions should only be specified in the top-level pom.xml


---

* [TEZ-2045](https://issues.apache.org/jira/browse/TEZ-2045) | *Major* | **TaskAttemptListener should not pull Tasks from AMContainer**

The flow should be reversed where AMContainer registers with the TaskAttemptListener, like it's done for all other operations.


---

* [TEZ-2033](https://issues.apache.org/jira/browse/TEZ-2033) | *Minor* | **Update TestOrderedWordCount to add processor configs as history text and use MR configs correctly**

Example code to show processor configs are being uploaded to timeline.


---

* [TEZ-2023](https://issues.apache.org/jira/browse/TEZ-2023) | *Major* | **Refactor logIndividualFetchComplete() to be common for both shuffle-schedulers**

This would be useful for mining the task logs.


---

* [TEZ-2016](https://issues.apache.org/jira/browse/TEZ-2016) | *Major* | **Tez UI: Dag View Fit and Finish**

TEZ-1973 has added a major contribution to the Tez UI. The core of the functionality is there and is committed to community to reduce effort on keeping patch up-to-date and to allow community exposure to the contributions.

A few fit and finish items have been identified and need to be addressed.
 - Gaussian blur around circles is not a circle (see attachment)
 - Check in checkbox is not centered (see attachment)
 - Success icon is not flush (see attachment)
 - First item in customize vertex should not be selected by default (see attachment)
 - Edge Id name is not correct (see attachment)
 - Double click: was never able to see this working. If functionality is there please update the wording (no attachment)
 -Click and drag on graph should not route tez ui to another page (no attachment)-
 - Prefer to see dag view view height to extend to bottom of screen (no attachment)

# Make source and sink bubble apt for longer text
# Bring dag back into view if it go out of view port
# Add ellipsis for clipped text in tooltip
# Use grab & grabbing cursors to indicate that user can pan the diagram
# Put Edge Source Class before Edge Destination Class
# BUG-31616 - #3
# Make source/sink link tooltip better


---

* [TEZ-2008](https://issues.apache.org/jira/browse/TEZ-2008) | *Minor* | **Add methods to SecureShuffleUtils to verify a reply based on a provided Key**

These aren't used at the moment, but are useful for a custom ShuffleHandler.


---

* [TEZ-2000](https://issues.apache.org/jira/browse/TEZ-2000) | *Major* | **Source vertex exists error during DAG submission**

 Pig e2e tests - Cross\_5, Union\_4 and Union\_9 fail. This is due to some jira that went in after TEZ-1931, but from the titles I cannot easily associate one that could cause this failure.


---

* [TEZ-1999](https://issues.apache.org/jira/browse/TEZ-1999) | *Major* | **IndexOutOfBoundsException during merge**

This is most likely due to TEZ-1963

b2 hits IndexOutOfBoundsException in 

public int compare(byte[] b1, int s1, int l1, byte[] b2, int s2, int l2) {


---

* [TEZ-1997](https://issues.apache.org/jira/browse/TEZ-1997) | *Major* | **Remove synchronization DefaultSorter::isRLENeeded() (Causes sorter to hang indefinitely in large jobs)**

{code}

Thread 21822: (state = BLOCKED)
 - org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.isRLENeeded() @bci=0, line=724 (Interpreted frame)
 - org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.spill(int, int) @bci=99, line=754 (Compiled frame)
 - org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.sortAndSpill() @bci=29, line=732 (Interpreted frame)
 - org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter$SpillThread.run() @bci=69, line=660 (Interpreted frame)


Thread 19983: (state = BLOCKED)
 - sun.misc.Unsafe.park(boolean, long) @bci=0 (Compiled frame; information may be imprecise)
 - java.util.concurrent.locks.LockSupport.park(java.lang.Object) @bci=14, line=175 (Compiled frame)
 - java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await() @bci=42, line=2039 (Compiled frame)
 - org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter$Buffer.write(byte[], int, int) @bci=451, line=562 (Compiled frame)
 - java.io.DataOutputStream.write(byte[], int, int) @bci=7, line=107 (Compiled frame)
 - org.apache.tez.runtime.library.common.serializer.TezBytesWritableSerialization$TezBytesWritableSerializer.serialize(org.apache.hadoop.io.Writable) @bci=18, line=123 (Compiled frame)
 - org.apache.tez.runtime.library.common.serializer.TezBytesWritableSerialization$TezBytesWritableSerializer.serialize(java.lang.Object) @bci=5, line=110 (Compiled frame)
 - org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.collect(java.lang.Object, java.lang.Object, int) @bci=544, line=283 (Compiled frame)
 - org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.write(java.lang.Object, java.lang.Object) @bci=18, line=185 (Compiled frame)
 - org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput$1.write(java.lang.Object, java.lang.Object) @bci=9, line=126 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.tez.TezProcessor$TezKVOutputCollector.collect(java.lang.Object, java.lang.Object) @bci=6, line=211 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.ReduceSinkOperator.collect(org.apache.hadoop.io.BytesWritable, org.apache.hadoop.io.Writable) @bci=94, line=534 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.ReduceSinkOperator.processOp(java.lang.Object, int) @bci=662, line=380 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.vector.VectorReduceSinkOperator.processOp(java.lang.Object, int) @bci=30, line=77 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=815 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.vector.VectorSelectOperator.processOp(java.lang.Object, int) @bci=165, line=138 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=815 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.TableScanOperator.processOp(java.lang.Object, int) @bci=64, line=95 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.MapOperator$MapOpCtx.forward(java.lang.Object) @bci=18, line=157 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.vector.VectorMapOperator.process(org.apache.hadoop.io.Writable) @bci=53, line=45 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.tez.MapRecordSource.processRow(java.lang.Object) @bci=20, line=83 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.tez.MapRecordSource.pushRecord() @bci=40, line=68 (Compiled frame)
 - org.apache.hadoop.hive.ql.exec.tez.MapRecordProcessor.run() @bci=9, line=294 (Interpreted frame)
 - org.apache.hadoop.hive.ql.exec.tez.TezProcessor.initializeAndRunProcessor(java.util.Map, java.util.Map) @bci=224, line=163 (Interpreted frame)
 - org.apache.hadoop.hive.ql.exec.tez.TezProcessor.run(java.util.Map, java.util.Map) @bci=86, line=138 (Interpreted frame)
 - org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run() @bci=65, line=328 (Interpreted frame)
 - org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run() @bci=119, line=179 (Interpreted frame)
 - org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run() @bci=1, line=171 (Interpreted frame)
 - java.security.AccessController.doPrivileged(java.security.PrivilegedExceptionAction, java.security.AccessControlContext) @bci=0 (Compiled frame)
 - javax.security.auth.Subject.doAs(javax.security.auth.Subject, java.security.PrivilegedExceptionAction) @bci=42, line=422 (Interpreted frame)
 - org.apache.hadoop.security.UserGroupInformation.doAs(java.security.PrivilegedExceptionAction) @bci=14, line=1656 (Interpreted frame)
 - org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call() @bci=15, line=171 (Interpreted frame)
 - org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call() @bci=1, line=166 (Interpreted frame)
 - java.util.concurrent.FutureTask.run() @bci=42, line=266 (Compiled frame)
 - java.util.concurrent.ThreadPoolExecutor.runWorker(java.util.concurrent.ThreadPoolExecutor$Worker) @bci=95, line=1142 (Interpreted frame)
 - java.util.concurrent.ThreadPoolExecutor$Worker.run() @bci=5, line=617 (Interpreted frame)
 - java.lang.Thread.run() @bci=11, line=745 (Interpreted frame)
{code}

"Thread 19983" invokes "synchronized void collect(Object key, Object value, final int partition)" and gets into waiting state.

"Thread 21822" invokes "private synchronized boolean isRLENeeded()" and keeps waiting for the lock.

Note: This can easily be reproduced with hive on tez (with tpch dataset) "set tez.runtime.sort.threads=1; create testData as select * from lineitem distribute by l\_shipdate".


---

* [TEZ-1995](https://issues.apache.org/jira/browse/TEZ-1995) | *Major* | **Build failure against hadoop 2.2**

https://builds.apache.org/job/Tez-Build-Hadoop-2.2/17

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.1:testCompile (default-testCompile) on project tez-runtime-library: Compilation failure: Compilation failure:
[ERROR] /home/jenkins/jenkins-slave/workspace/Tez-Build-Hadoop-2.2/tez-runtime-library/src/test/java/org/apache/tez/runtime/library/common/sort/impl/TestPipelinedSorter.java:[4,39] package org.apache.commons.math3.random does not exist
[ERROR] /home/jenkins/jenkins-slave/workspace/Tez-Build-Hadoop-2.2/tez-runtime-library/src/test/java/org/apache/tez/runtime/library/common/sort/impl/TestPipelinedSorter.java:[150,5] cannot find symbol
[ERROR] symbol  : class RandomDataGenerator
[ERROR] location: class org.apache.tez.runtime.library.common.sort.impl.TestPipelinedSorter
[ERROR] /home/jenkins/jenkins-slave/workspace/Tez-Build-Hadoop-2.2/tez-runtime-library/src/test/java/org/apache/tez/runtime/library/common/sort/impl/TestPipelinedSorter.java:[150,41] cannot find symbol
[ERROR] symbol  : class RandomDataGenerator
[ERROR] location: class org.apache.tez.runtime.library.common.sort.impl.TestPipelinedSorter


---

* [TEZ-1993](https://issues.apache.org/jira/browse/TEZ-1993) | *Major* | **Implement a pluggable InputSizeEstimator for grouping fairly**

Split grouping is currently done using a file size measurement which is the exact size of the split as it stays at rest on HDFS.

This is not valid for columnar formats and especially suffers from highly compressible data skews.


---

* [TEZ-1988](https://issues.apache.org/jira/browse/TEZ-1988) | *Major* | **Tez UI: does not work when using file:// in a browser**

Docs mention that it defaults to using http://localhost for RM and Timeline server but it does not seem to be doing so. It uses file:///:8188 instead.


---

* [TEZ-1969](https://issues.apache.org/jira/browse/TEZ-1969) | *Major* | **Stop the DAGAppMaster when a local mode client is stopped**

https://issues.apache.org/jira/browse/TEZ-1661?focusedCommentId=14275366&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14275366

Running multiple local clients in a single JVM will leak DAGAppMaster and related threads.


---

* [TEZ-1967](https://issues.apache.org/jira/browse/TEZ-1967) | *Major* | **Add a monitoring API on DAGClient which returns after a time interval or on DAG state change**

To monitor a running DAG, clients end up using DAGClient.getDAGSstatus in a loop with a poll interval.
In the worst case, they find out about DAG completion, failure etc only after the poll interval.

Instead, an API can be added which waits on the AM for a specified interval, but can return earlier if the DAG state changes.

This will end up blocking RPC handlers - but that isn't a problem since we don't have many entities querying for DAG status.


---

* [TEZ-1949](https://issues.apache.org/jira/browse/TEZ-1949) | *Critical* | **Whitelist TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges**

Tez configuration whitelisting is missing TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges (UnorderedKVInput).


---

* [TEZ-1945](https://issues.apache.org/jira/browse/TEZ-1945) | *Major* | **Remove 2 GB memlimit restriction in MergeManager**

In certain situations (data coming in larger chunks, but yet to complete), fetchers might wait in MerManager.waitForShuffleToMergeMemory() for memory to become available.  

Removing the 2 GB resitrction on MergeManager.memlimit would help in such situations.


---

* [TEZ-1941](https://issues.apache.org/jira/browse/TEZ-1941) | *Major* | **Memory provided by *Context.getAvailableMemory needs to be setup explicitly**

*Contexts.getAvailableMemory rely on Runtime..getMaxMemory(). This doesn't work for memory scaling if multiple tasks are running within a JVM.

Container sizes (sent over RPC) can be used for setting up this value.


---

* [TEZ-1935](https://issues.apache.org/jira/browse/TEZ-1935) | *Major* | **Organization should be removed from http://tez.apache.org/team-list.html**

As per http://www.apache.org/foundation/marks/linking#whoweare, the page "Should not include corporate affiliations of actual contributors"


---

* [TEZ-1933](https://issues.apache.org/jira/browse/TEZ-1933) | *Major* | **Move TezChild and related classes into tez-runtime-internals**

It's currently in tez-dag - and does not belong there.


---

* [TEZ-1917](https://issues.apache.org/jira/browse/TEZ-1917) | *Major* | **Examples should extend TezExampleBase**

To get rid of a lot of boiler plate code from each example.


---

* [TEZ-1913](https://issues.apache.org/jira/browse/TEZ-1913) | *Major* | **Reduce deserialize cost in ValuesIterator**

When TezRawKeyValueIterator->isSameKey() is added, it should be possible to reduce the number of deserializations in ValuesIterator->readNextKey().

Creating this ticket to track the issue.


---

* [TEZ-1912](https://issues.apache.org/jira/browse/TEZ-1912) | *Major* | **Merge exceptions are thrown when enabling tez.runtime.shuffle.memory-to-memory.enable && tez.runtime.shuffle.memory-to-memory.segments**

Merge exceptions are thrown when running a hive query on tez with the following setting.  It works fine without mem-to-mem merge setting.

{code}
2015-01-04 20:04:01,371 ERROR [ShuffleAndMergeRunner [Map\_1]] orderedgrouped.Shuffle: ShuffleRunner failed with error
org.apache.tez.runtime.library.common.shuffle.orderedgrouped.Shuffle$ShuffleError: Error while doing final merge
        at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.Shuffle$RunShuffleCallable.call(Shuffle.java:364)
        at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.Shuffle$RunShuffleCallable.call(Shuffle.java:327)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
Caused by: java.io.IOException: Rec# 22630125: Negative value-length: -1
        at org.apache.tez.runtime.library.common.sort.impl.IFile$Reader.positionToNextRecord(IFile.java:720)
        at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.InMemoryReader.readRawKey(InMemoryReader.java:104)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger$Segment.readRawKey(TezMerger.java:329)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger$MergeQueue.adjustPriorityQueue(TezMerger.java:500)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger$MergeQueue.next(TezMerger.java:545)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger.writeFile(TezMerger.java:204)
        at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.MergeManager.finalMerge(MergeManager.java:862)
        at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.MergeManager.close(MergeManager.java:473)
        at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.Shuffle$RunShuffleCallable.call(Shuffle.java:362)
        ... 5 more
{code}

{code}
$HIVE\_HOME/bin/hive -hiveconf tez.runtime.io.sort.factor=200 --hiveconf tez.shuffle-vertex-manager.min-src-fraction=1.0 --hiveconf tez.shuffle-vertex-manager.max-src-fraction=1.0 --hiveconf hive.tez.auto.reducer.parallelism=false --hiveconf tez.am.heartbeat.interval-ms.max=20 --hiveconf tez.runtime.io.sort.mb=1200 --hiveconf tez.runtime.sort.threads=2 --hiveconf tez.history.logging.service.class=org.apache.tez.dag.history.logging.impl.SimpleHistoryLoggingService --hiveconf hive.tez.container.size=4096 --hiveconf tez.runtime.shuffle.memory-to-memory.enable=true --hiveconf tez.runtime.shuffle.memory-to-memory.segments=4

--10 TB dataset
use tpcds4\_bin\_partitioned\_orc\_10000;
drop table testData;
create table testData as select ss\_sold\_date\_sk,ss\_sold\_time\_sk,ss\_item\_sk,ss\_customer\_sk,ss\_quantity,ss\_sold\_date from store\_sales distribute by ss\_sold\_date;
{code}


---

* [TEZ-1906](https://issues.apache.org/jira/browse/TEZ-1906) | *Major* | **Fix findbugs warnings in tez-yarn-timeline-history-with-acls**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-yarn-timeline-history-with-acls.html


---

* [TEZ-1905](https://issues.apache.org/jira/browse/TEZ-1905) | *Major* | **Fix findbugs warnings in tez-tests**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-tests.html


---

* [TEZ-1904](https://issues.apache.org/jira/browse/TEZ-1904) | *Major* | **Fix findbugs warnings in tez-runtime-library**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-runtime-library.html


---

* [TEZ-1903](https://issues.apache.org/jira/browse/TEZ-1903) | *Major* | **Fix findbugs warnings in tez-runtime-internals**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-runtime-internals.html


---

* [TEZ-1902](https://issues.apache.org/jira/browse/TEZ-1902) | *Major* | **Fix findbugs warnings in tez-mapreduce**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-mapreduce.html


---

* [TEZ-1901](https://issues.apache.org/jira/browse/TEZ-1901) | *Major* | **Fix findbugs warnings in tez-examples**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-examples.html


---

* [TEZ-1899](https://issues.apache.org/jira/browse/TEZ-1899) | *Major* | **Fix findbugs warnings in tez-common**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-common.html


---

* [TEZ-1898](https://issues.apache.org/jira/browse/TEZ-1898) | *Major* | **Fix findbugs warnings in tez-api module**

https://builds.apache.org/job/PreCommit-Tez-Build/8/artifact/patchprocess/newPatchFindbugsWarningstez-api.html


---

* [TEZ-1897](https://issues.apache.org/jira/browse/TEZ-1897) | *Major* | **Create a concurrent version of AsyncDispatcher**

Currently, it processes events on a single thread. For events that can be executed in parallel, e.g. vertex manager events, allowing higher concurrency may be beneficial.


---

* [TEZ-1889](https://issues.apache.org/jira/browse/TEZ-1889) | *Critical* | **Fix test-patch to provide correct findbugs report**

The test patch script reports 400+ findbug warnings however the generated report is not correct.


---

* [TEZ-1879](https://issues.apache.org/jira/browse/TEZ-1879) | *Major* | **Create local UGI instances for each task and the AM, when running in LocalMode**

Modifying the client UGI can cause issues when the client tries to submit another job - or has tokens already populated in the UGI.


---

* [TEZ-1867](https://issues.apache.org/jira/browse/TEZ-1867) | *Major* | **Create new central dispatcher for Tez AM**

The dispatcher should be able to federate events across multiple event specific dispatchers for AM control plane scalability. Add dispatcher specific thread names for easier debugging.


---

* [TEZ-1856](https://issues.apache.org/jira/browse/TEZ-1856) | *Major* | **Remove LocalOnFileSortedOutput, LocalMergedInput, LocalTaskOutputFiles**

These are used to test Map/ReduceProcessor. Instead, Tez local mode can be used for that. These just create noise - and maintenance overheads.


---

* [TEZ-1855](https://issues.apache.org/jira/browse/TEZ-1855) | *Major* | **Avoid scanning for previously written files within Inputs / Outputs**

TezTaskOutput has a bunch of methods - getOutputFile, getOutputIndexFile, getSpillIndexFile - which are used within an  Output to scan for files written earlier by the same Output. This should be avoided in favour of keeping track of previously written files.


---

* [TEZ-1844](https://issues.apache.org/jira/browse/TEZ-1844) | *Major* | **Shouldn't invoke system.exit in local mode when AM is failed to start**

In local mode, TezClient and Tez-AM run in the same JVM, we don't need to call system.exit when AM is failed to start, throw exception should be more proper. 
{code}
          dagAppMaster = createDAGAppMaster(applicationAttemptId, cId, currentHost, nmPort, nmHttpPort,
                  new SystemClock(),
                  appSubmitTime, isSession, userDir.toUri().getPath());
          clientHandler = new DAGClientHandler(dagAppMaster);
          DAGAppMaster.initAndStartAppMaster(dagAppMaster, currentUser.getShortUserName());

          } catch (Throwable t) {
          LOG.fatal("Error starting DAGAppMaster", t);
          System.exit(1);
        }
{code}


---

* [TEZ-1837](https://issues.apache.org/jira/browse/TEZ-1837) | *Major* | **Restrict usage of Environment variables to main methods**

We should be able to set whatever is required directly - instead of having to update the environment.


---

* [TEZ-1827](https://issues.apache.org/jira/browse/TEZ-1827) | *Minor* | **MiniTezCluster takes 10 minutes to shut down**

Always reproducible


---

* [TEZ-1826](https://issues.apache.org/jira/browse/TEZ-1826) | *Minor* | **Add option to disable split grouping and local mode option for tez-examples**

In Wordcount for instance.


---

* [TEZ-1661](https://issues.apache.org/jira/browse/TEZ-1661) | *Major* | **LocalTaskScheduler hangs when shutdown**

LocalTaskScheduler hangs on 'take' from the 'taskRequestQueue ' when TezClient shuts down (e.g., TezClient.stop).
Below is jstack output observed when running in Tez local mode:
{code}
"Thread-53" prio=5 tid=0x00007fc876d8f800 nid=0xac07 runnable [0x000000011df90000]
   java.lang.Thread.State: RUNNABLE
        at java.lang.Throwable.fillInStackTrace(Native Method)
        at java.lang.Throwable.fillInStackTrace(Throwable.java:783)
        - locked <0x00000007b6ce60a0> (a java.lang.InterruptedException)
        at java.lang.Throwable.<init>(Throwable.java:250)
        at java.lang.Exception.<init>(Exception.java:54)
        at java.lang.InterruptedException.<init>(InterruptedException.java:57)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly(AbstractQueuedSynchronizer.java:1219)
        at java.util.concurrent.locks.ReentrantLock.lockInterruptibly(ReentrantLock.java:340)
        at java.util.concurrent.PriorityBlockingQueue.take(PriorityBlockingQueue.java:535)
        at org.apache.tez.dag.app.rm.LocalTaskSchedulerService$AsyncDelegateRequestHandler.processRequest(LocalTaskSchedulerService.java:310)
        at org.apache.tez.dag.app.rm.LocalTaskSchedulerService$AsyncDelegateRequestHandler.run(LocalTaskSchedulerService.java:304)
        at java.lang.Thread.run(Thread.java:745)
{code}


---

* [TEZ-1593](https://issues.apache.org/jira/browse/TEZ-1593) | *Major* | **Refactor PipelinedSorter to remove all MMAP based ByteBuffer references**

The current implementation of PipelinedSorter has a slow section which revolves around key comparisons - this was relevant when the implementation used direct byte buffers to back the kvbuffer.

{code}
      kvbuffer.position(istart);
      kvbuffer.get(ki, 0, ilen);
      kvbuffer.position(jstart);
      kvbuffer.get(kj, 0, jlen);
      // sort by key
      final int cmp = comparator.compare(ki, 0, ilen, kj, 0, jlen);
{code}

The kvbuffer.get into the arrays ki and kj are the slowest part of the comparator operation.


---

* [TEZ-1560](https://issues.apache.org/jira/browse/TEZ-1560) | *Critical* | **Invalid state machine handling for V\_SOURCE\_VERTEX\_RECOVERED in recovery**

{code}
2014-09-04 16:08:25,504 INFO [main] org.apache.tez.dag.app.dag.impl.DAGImpl: dag\_1409818083015\_0001\_1 transitioned from NEW to RUNNING
2014-09-04 16:08:25,504 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Recovered Vertex State, vertexId=vertex\_1409818083015\_0001\_1\_00 [v1], state=NEW, numInitedSourceVertices=0, numStartedSourceVertices=0, numRecoveredSourceVertices=0, recoveredEvents=0, tasksIsNull=false, numTasks=0
2014-09-04 16:08:25,505 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Root Inputs exist for Vertex: v1 : {Input={InputName=Input}, {Descriptor=ClassName=org.apache.tez.test.dag.MultiAttemptDAG$NoOpInput, hasPayload=false}, {ControllerDescriptor=ClassName=org.apache.tez.test.dag.MultiAttemptDAG$TestRootInputInitializer, hasPayload=false}}
2014-09-04 16:08:25,505 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Starting root input initializer for input: Input, with class: [org.apache.tez.test.dag.MultiAttemptDAG$TestRootInputInitializer]
2014-09-04 16:08:25,506 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Setting user vertex manager plugin: org.apache.tez.test.dag.MultiAttemptDAG$FailOnAttemptVertexManagerPlugin on vertex: v1
2014-09-04 16:08:25,508 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Creating 2 for vertex: vertex\_1409818083015\_0001\_1\_00 [v1]
2014-09-04 16:08:25,518 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Starting root input initializers: 1
2014-09-04 16:08:25,520 INFO [InputInitializer [v1] #0] org.apache.tez.dag.app.dag.RootInputInitializerManager: Starting InputInitializer for Input: Input on vertex vertex\_1409818083015\_0001\_1\_00 [v1]
2014-09-04 16:08:25,522 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.RootInputInitializerManager: Succeeded InputInitializer for Input: Input on vertex vertex\_1409818083015\_0001\_1\_00 [v1]
2014-09-04 16:08:25,523 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: vertex\_1409818083015\_0001\_1\_00 [v1] transitioned from NEW to INITIALIZING due to event V\_INIT
2014-09-04 16:08:25,523 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Recovered Vertex State, vertexId=vertex\_1409818083015\_0001\_1\_01 [v2], state=NEW, numInitedSourceVertices0, numStartedSourceVertices=0, numRecoveredSourceVertices=1, tasksIsNull=false, numTasks=0
2014-09-04 16:08:25,523 ERROR [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Can't handle Invalid event V\_SOURCE\_VERTEX\_RECOVERED on vertex v2 with vertexId vertex\_1409818083015\_0001\_1\_01 at current state NEW
org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_SOURCE\_VERTEX\_RECOVERED at NEW
	at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:388)
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1344)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1641)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1)
	at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:173)
	at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:106)
	at java.lang.Thread.run(Thread.java:745)
2014-09-04 16:08:25,524 FATAL [AsyncDispatcher event handler] org.apache.hadoop.yarn.event.AsyncDispatcher: Error in dispatcher thread
{code}


---

* [TEZ-1521](https://issues.apache.org/jira/browse/TEZ-1521) | *Critical* | **VertexDataMovementEventsGeneratedEvent may be logged twice in recovery log**

The TezEvents may be added to pendingTaskEvents and route again later when task is not scheduled. In this case, VertexDataMovementEventsGeneratedEvent will been logged twice.


---

* [TEZ-1274](https://issues.apache.org/jira/browse/TEZ-1274) | *Major* | **Remove Key/Value type checks in IFile**

We check key and value types for each record - this should be removed from the tight loop. Maybe an assertion.


---

* [TEZ-1233](https://issues.apache.org/jira/browse/TEZ-1233) | *Major* | **Allow configuration of framework parameters per vertex**

Currently, configuration properties specific in AMConfiguration are used to configure tasks - e.g. memory configs, process tree, etc. These should be configurable at a Vertex level.

Also, tasks end up reading these configs from the dist cache each time - would be simpler to send over the wire as part of the TaskSpec.


---

* [TEZ-776](https://issues.apache.org/jira/browse/TEZ-776) | *Blocker* | **Reduce AM mem usage caused by storing TezEvents**

This is open ended at the moment.
A fair chunk of the AM heap is taken up by TezEvents (specifically DataMovementEvents - 64 bytes per event).
Depending on the connection pattern - this puts limits on the number of tasks that can be processed.


---

* [TEZ-714](https://issues.apache.org/jira/browse/TEZ-714) | *Critical* | **OutputCommitters should not run in the main AM dispatcher thread**

Follow up jira from TEZ-41.
1) If there's multiple OutputCommitters on a Vertex, they can be run in parallel.
2) Running an OutputCommitter in the main thread blocks all other event handling, w.r.t the DAG, and causes the event queue to back up.
3) This should also cover shared commits that happen in the DAG.


---

* [TEZ-485](https://issues.apache.org/jira/browse/TEZ-485) | *Minor* | **Get rid of TezTaskStatus**

TezTaskStatus is used by the MR Reporter only. We should be able to get rid of this interface.



