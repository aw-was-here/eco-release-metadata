
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
# Apache Tez  0.6.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


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

* [TEZ-2397](https://issues.apache.org/jira/browse/TEZ-2397) | *Critical* | **Translation of LocalResources via Tez plan serialization can be lossy**

Happens when there's no port information. The way we serialize a YarnURL into a string causes the reconstructed path to include the port as -1, which is an invalid URL. Path/URL reconstruction from this causes the hostname to be lost.
This is problematic on clusters running HDFA HA - since there's no host:port information, only a service name. I'd imaging it'll be a problem for viewfs as well.


---

* [TEZ-2385](https://issues.apache.org/jira/browse/TEZ-2385) | *Critical* | **branch-0.6 compile failure caused by TEZ-2226**

due to TEZ-2226.  DAG/Vertex level configuration is not available in 0.6, may need to use the AM configuration or either back port TEZ-1233 to 0.6


---

* [TEZ-2380](https://issues.apache.org/jira/browse/TEZ-2380) | *Major* | **Disable fall back to reading from timeline if timeline disabled**

As part of TEZ-2226, timeline logging can get disabled in cases where domain creation fails. In this scenario, the dag client shoudl also not fall back to reading from timeline.


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

* [TEZ-2334](https://issues.apache.org/jira/browse/TEZ-2334) | *Major* | **ContainerManagementProtocolProxy modifies IPC timeout conf without making a copy**

yarn-client's ContainerManagementProtocolProxy is updating ipc.client.connection.maxidletime in the conf passed in without making a copy of it. That modification "leaks" into other systems using the same conf and can cause them to setup RPC connections with a timeout of zero as well. relate to YARN-3497. This is a work around for tez running on 2.6 and 2.7.0 grids.


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

* [TEZ-2289](https://issues.apache.org/jira/browse/TEZ-2289) | *Major* | **ATSHistoryLoggingService can generate ArrayOutOfBoundsException**

2015-04-07 23:11:20,459 INFO [main] app.DAGAppMaster: Running DAG: MRRSleepJob
2015-04-07 23:11:20,546 INFO [IPC Server handler 0 on 50500] ipc.Server: IPC Server handler 0 on 50500, call org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPB.getDAGStatus from 127.0.0.1:53151 Call#93 Retry#0
org.apache.tez.dag.api.TezException: No running dag at present
        at org.apache.tez.dag.api.client.DAGClientHandler.getDAG(DAGClientHandler.java:84)
        at org.apache.tez.dag.api.client.DAGClientHandler.getACLManager(DAGClientHandler.java:151)
        at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:94)
        at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
        at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:619)
        at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:962)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2086)
        at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2082)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1694)
        at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2080)
2015-04-07 23:11:20,875 INFO [main] history.HistoryEventHandler: [HISTORY][DAG:dag\_1427297554817\_0149\_1][Event:DAG\_SUBMITTED]: dagID=dag\_1427297554817\_0149\_1, submitTime=1428448280397
2015-04-07 23:11:20,905 WARN [HistoryEventHandlingThread] ats.ATSHistoryLoggingService: Could not post history event to ATS, atsPutError=6, entityId=dag\_1427297554817\_0149\_1, eventType=DAG\_SUBMITTED
2015-04-07 23:11:20,906 WARN [HistoryEventHandlingThread] ats.ATSHistoryLoggingService: Could not handle history events
java.lang.ArrayIndexOutOfBoundsException: 1
        at org.apache.tez.dag.history.logging.ats.ATSHistoryLoggingService.handleEvents(ATSHistoryLoggingService.java:312)
        at org.apache.tez.dag.history.logging.ats.ATSHistoryLoggingService.access$700(ATSHistoryLoggingService.java:50)
        at org.apache.tez.dag.history.logging.ats.ATSHistoryLoggingService$1.run(ATSHistoryLoggingService.java:159)
        at java.lang.Thread.run(Thread.java:722)


---

* [TEZ-2287](https://issues.apache.org/jira/browse/TEZ-2287) | *Blocker* | **Deprecate VertexManagerPluginContext.getTaskContainer()**

This allows TEZ-2048


---

* [TEZ-2282](https://issues.apache.org/jira/browse/TEZ-2282) | *Major* | **Delimit reused yarn container logs (stderr, stdout, syslog) with task attempt start/stop events**

This could help with debugging in some cases where logging is task specific. For example GC log is going to stdout, it will be nice to see task attempt start/stop times


---

* [TEZ-2259](https://issues.apache.org/jira/browse/TEZ-2259) | *Major* | **Push additional data to Timeline for Recovery for better consumption in UI**

Some things I can think of: 
 
   - applicationAttemptId in which the dag was submitted
   - appAttemptId in which the dag was completed 

Above provides implicit information on how many app attempts the dag spanned ( and therefore recovered how many times ).
  
   - Maybe an implicit event mentioning that the DAG was recovered and in which attempt it was recovered. Possibly add information on what state was recovered?


---

* [TEZ-2256](https://issues.apache.org/jira/browse/TEZ-2256) | *Critical* | **Avoid use of BufferTooSmallException to signal end of buffer in UnorderedPartitionedKVWriter**

UnorderedPartitionedKVWriter delegates serialization to the application, passing it a private ByteArrayOutputStream. In case the buffer is exhausted, ByteArrayOutputStream signals that with a private BufferTooSmallException, which can be seen but not dealt with by the application. As [~cwensel] pointed out, when the application is in fact a complex framework, there is no way to distinguish this exception from a real failure, which compels logging the full stack even for reasonable events such as "buffer complete".

Suggested approach: set a "complete" flag in ByteArrayOutputStream that disables any further output, and replace  BufferTooSmallException (BTSE) handling by checking that flag. 

[~sseth] suggested checking out SortedOutput as well, as the mechanisms there should be similar.

I'll give this a go this week.


---

* [TEZ-2240](https://issues.apache.org/jira/browse/TEZ-2240) | *Major* | **Fix toUpperCase/toLowerCase to use Locale.ENGLISH**

String#toLowerCase()/toUpperCase() without a locale argument can occur unexpected behavior based on the locale. It's written in Javadoc:

{quote}
For instance, "TITLE".toLowerCase() in a Turkish locale returns "t\u0131tle", where '\u0131' is the LATIN SMALL LETTER DOTLESS I character
{quote}

HADOOP-11602 is an issue to address this problem at the Hadoop side.


---

* [TEZ-2237](https://issues.apache.org/jira/browse/TEZ-2237) | *Critical* | **Valid events should be sent out when an Output is not started**

On a specific DAG with many vertices (actually part of a larger meta-DAG), after about a hour of processing, several BufferTooSmallException are raised in UnorderedPartitionedKVWriter (about one every two or three spills).

Once these exceptions are raised, the DAG remains indefinitely "active", tying up memory and CPU resources as far as YARN is concerned, while little if any actual processing takes place. 

It seems two separate issues are at hand:
  1. BufferTooSmallException are raised even though, small as the actually allocated buffers seem to be (around a couple megabytes were allotted whereas 100MiB were requested), the actual keys and values are never bigger than 24 and 1024 bytes respectively.

  2. In the event BufferTooSmallExceptions are raised, the DAG fails to stop (stop requests appear to be sent 7 hours after the BTSE exceptions are raised, but 9 hours after these stop requests, the DAG was still lingering on with all containers present tying up memory and CPU allocations)

The emergence of the BTSE prevent the Cascade to complete, preventing from validating the results compared to traditional MR1-based results. The lack of conclusion renders the cluster queue unavailable.


---

* [TEZ-2224](https://issues.apache.org/jira/browse/TEZ-2224) | *Major* | **EventQueue empty doesn't mean events are consumed in RecoveryService**

If the event queue is empty, the event may still been processing. Should fix it like AsyncDispatcher


---

* [TEZ-2221](https://issues.apache.org/jira/browse/TEZ-2221) | *Major* | **VertexGroup name should be unqiue**

VertexGroupCommitStartedEvent & VertexGroupCommitFinishedEvent use vertex group name to identify the vertex group commit, the same name of vertex group will conflict. While in the current equals & hashCode of VertexGroup, vertex group name and members name are used.


---

* [TEZ-2214](https://issues.apache.org/jira/browse/TEZ-2214) | *Major* | **FetcherOrderedGrouped can get stuck indefinitely when MergeManager misses memToDiskMerging**

Scenario:
- commitMemory & usedMemory are beyond their allowed threshold.
- InMemoryMerge kicks off and is in the process of flushing memory contents to disk
- As it progresses, it releases memory segments as well (but not yet over).
- Fetchers who need memory \< maxSingleShuffleLimit, get scheduled.
- If fetchers are fast, this quickly adds up to commitMemory & usedMemory. Since InMemoryMerge is already in progress, this wouldn't trigger another merge().
- Pretty soon all fetchers would be stalled and get into the following state.

{noformat}
Thread 9351: (state = BLOCKED)
 - java.lang.Object.wait(long) @bci=0 (Compiled frame; information may be imprecise)
 - java.lang.Object.wait() @bci=2, line=502 (Compiled frame)
 - org.apache.tez.runtime.library.common.shuffle.orderedgrouped.MergeManager.waitForShuffleToMergeMemory() @bci=17, line=337 (Interpreted frame)
 - org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.run() @bci=34, line=157 (Interpreted frame)
{noformat}

- Even if InMemoryMerger completes, "commitedMem & usedMem" are beyond their threshold and no other fetcher threads (all are in stalled state) are there to release memory. This causes fetchers to wait indefinitely.


---

* [TEZ-2205](https://issues.apache.org/jira/browse/TEZ-2205) | *Major* | **Tez still tries to post to ATS when yarn.timeline-service.enabled=false**

when set yarn.timeline-service.enabled=false, Tez still tries posting to ATS, but hits error as token is not found. Does not fail the job because of the fix to not fail job when there is error posting to ATS. But it should not be trying to post to ATS in the first place.


---

* [TEZ-2199](https://issues.apache.org/jira/browse/TEZ-2199) | *Major* | **updateLocalResourcesForInputSplits assumes wrongly that split data is on same FS as the default FS**

Seen in a Windows Azure scenario:

Caused by: java.io.FileNotFoundException: hdfs://namenode:9000/hive/scratch/\_tez\_scratch\_dir/split\_Map\_1/job.split: No such file or directory.
	at org.apache.hadoop.fs.azure.NativeAzureFileSystem.getFileStatus(NativeAzureFileSystem.java:1625)
	at org.apache.tez.mapreduce.hadoop.MRInputHelpers.updateLocalResourcesForInputSplits(MRInputHelpers.java:639)
	at org.apache.tez.mapreduce.hadoop.MRInputHelpers.configureMRInputWithLegacySplitGeneration(MRInputHelpers.java:115)


---

* [TEZ-2192](https://issues.apache.org/jira/browse/TEZ-2192) | *Blocker* | **Relocalization does not check for source**

 PIG-4443 spills the input splits to disk if serialized split size is greater than some threshold. It faces issues with relocalization when more than one vertex has job.split file. If a job.split file is already there on container reuse, it is reused causing wrong data to be read.

Either need a way to turn off relocalization or  check the source+timestamp and redownload the file during relocalization.


---

* [TEZ-2190](https://issues.apache.org/jira/browse/TEZ-2190) | *Major* | **TestOrderedWordCount fails when generateSplitsInClient set to true**

numTasks for the map stage is unset in this scenario leading to the following error:

{code}
java.lang.IllegalStateException: initialmap has -1 tasks but does not have input initializers, 1-1 uninited sources or custom vertex manager to set it at runtime
{code}


---

* [TEZ-2179](https://issues.apache.org/jira/browse/TEZ-2179) | *Major* | **Timeline relatedentries missing cause exaggerated warning**

Have run into an issue where TimelineClient has posted entities in the timeline event posted. The related entry is not found (i believe because I didn't have generic history turned on) and Yarn timeline server assumes the missing event belongs to the default domain. Regular users don't have permissions to the default domain and so the update to the related entity fails. The posting of the event succeeds, just that the cross-link related entity is not updated. However in the log I see the warning which is going to scare users
{code}
2015-02-24 20:01:24,526 WARN [HistoryEventHandlingThread] ats.ATSHistoryLoggingService: Could not post history event to ATS, atsPutError=6, entityId=tez\_application\_1423769157162\_273679, eventType=APP\_LAUNCHED
2015-02-24 20:01:24,526 WARN [HistoryEventHandlingThread] ats.ATSHistoryLoggingService: Could not post history event to ATS, atsPutError=6, entityId=tez\_appattempt\_1423769157162\_273679\_000001, eventType=AM\_LAUNCHED
{code}


---

* [TEZ-2168](https://issues.apache.org/jira/browse/TEZ-2168) | *Major* | **Fix application dependencies on mutually exclusive artifacts: tez-yarn-timeline-history and tez-yarn-timeline-history-with-acls**

Feedback from Chris Wensel on dev list related to simplifying the build file for an app dependent on Tez. 

Currently, based on hadoop versions, one needs to choose between mutually exclusive artifacts: tez-yarn-timeline-history and tez-yarn-timeline-history-with-acls.

Suggested options: 

create a single artifact tez-yarn-timeline-history compiled with a default dep of hadoop 2.6, that includes the Manager. update the TezClient code to gracefully fail if the Manager is not applicable (the runtime env is Hadoop 2.4).

or

offer tez-yarn-timeline-history-with-acls as an optional artifact for Hadoop 2.6 deployments, with the single Manager class in it, which in turn requires the tez-yarn-timeline-history artifact -- which is sufficient for a 2.4 runtime. if the user provides the additional -with-acls artifact, they are knowingly going to have problems on Hadoop 2.4.


---

* [TEZ-2165](https://issues.apache.org/jira/browse/TEZ-2165) | *Major* | **Tez UI: DAG shows running status if killed by RM in some cases.**

TEZ-2038 had fixed the issue of DAG showing running status if killed, if the info is available from AHS
due to a typo in javascript code, in some cases it still shows running. 
eg. yarnAppState is FINISHED but yarnAppFinalState is KILLED.


---

* [TEZ-2160](https://issues.apache.org/jira/browse/TEZ-2160) | *Major* | **Tez UI: App tracking URL should support navigation back**

If you click on the app tracking URL in the YARN applications page, it takes you to the Tez UI but from then on, clicking back in the browser does not take the user back to the YARN apps page.

The intermediate redirect page in the browser stack is likely the reason.


---

* [TEZ-2147](https://issues.apache.org/jira/browse/TEZ-2147) | *Major* | **Swimlanes: Improved tooltip**

The swimlane tooltip is not thematic as with the other tooltips provided in the Tez UI. This jira will bring swimlane tooltips in line with the rest of the UI.


---

* [TEZ-2142](https://issues.apache.org/jira/browse/TEZ-2142) | *Major* | **TEZ UI: Breadcrumb border color looks out of place in wrapped mode.**

Orange breadcrumb border added by TEZ-2136 is looking out of place in wrapped mode/ambari view. As we don't use orange color pallet in wrapped mode, its better to change it.


---

* [TEZ-2136](https://issues.apache.org/jira/browse/TEZ-2136) | *Major* | **Some enhancements to the new Tez UI**

Played with the UI for a couple of days. Got some UI enhancements to share.


---

* [TEZ-2135](https://issues.apache.org/jira/browse/TEZ-2135) | *Major* | **ACL checks handled incorrectly in AMWebController**

{code}
    if (callerUGI != null && appContext.getAMACLManager().checkDAGViewAccess(callerUGI)) {
      return false;
    }
{code}

Check returns false if user has access.


---

* [TEZ-2134](https://issues.apache.org/jira/browse/TEZ-2134) | *Major* | **TEZ UI: On request failure, display request URL and server name in error bar.**

Adding simple text such as "Could not retrieve data from Timeline Server x.y.z:8188" would be way more useful.


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

* [TEZ-2116](https://issues.apache.org/jira/browse/TEZ-2116) | *Major* | **Tez UI: dags page filter does not work if more than one filter is specified.**

if more than one filters are specified , sometimes the filtering wont work and return an empty data set.


---

* [TEZ-2114](https://issues.apache.org/jira/browse/TEZ-2114) | *Major* | **Tez UI: task/task attempt status is not available when its running**

\* The task/task attempt status is not available when the task/attempt is running.
\* the task/attempt status is not displayed when the application has been killed


---

* [TEZ-2112](https://issues.apache.org/jira/browse/TEZ-2112) | *Major* | **Tez UI: fix offset calculation, add home button to breadcrumbs**

Clear issue relating to offset calculation.
Add Home button in book mark


---

* [TEZ-2102](https://issues.apache.org/jira/browse/TEZ-2102) | *Major* | **Tez UI: DAG view has hidden edges, dragging DAG by holding vertex causes unintended click**

1. The treed width calculated is not correct causing the vertices to appear very near to each other in some of the dags.
2. Disables click even on drag.
3. Tooltips with large values wasn't appearing properly.
4. Added linkDelta to make inward links look better in both orientations.


---

* [TEZ-2101](https://issues.apache.org/jira/browse/TEZ-2101) | *Major* | **Tez UI: Issues on displaying a table**

1. getStatusClassForEntity was getting called with an undefined value.
2. The error "TypeError: undefined is not an object (evaluating 'container.offset().top')" is getting thrown on opening any page after dag view. Its because a window resize listener isn't relinquished.
3. Border as extending down on opening  a table without any rows.


---

* [TEZ-2098](https://issues.apache.org/jira/browse/TEZ-2098) | *Major* | **Tez UI: Dag details should be the default page for dag, fix invalid time entries for failed Vertices**

\* The default tab for a DAG should go to the details page where the exception is shown.
\* for failed dags the following time displays are incorrect
\*\* Task stats for average, max, min duration tasks show -1
\*\* First Task start time in vertices shows the epoch time.


---

* [TEZ-2092](https://issues.apache.org/jira/browse/TEZ-2092) | *Major* | **Tez UI history url handler injects spurious trailing slash**

When using the following: 

{code}
    conf.set(TezConfiguration.TEZ\_AM\_TEZ\_UI\_HISTORY\_URL\_TEMPLATE,
     "\_\_HISTORY\_URL\_BASE\_\_?viewPath=tezapp/\_\_APPLICATION\_ID\_\_");
    conf.set(TezConfiguration.TEZ\_HISTORY\_URL\_BASE, "http://localhost/ui/tez");
{code}

Final url is "http://localhost/ui/tez/?viewPath=tez-app/TEST\_APP\_ID" instead of "http://localhost/ui/tez?viewPath=tez-app/TEST\_APP\_ID"


---

* [TEZ-2091](https://issues.apache.org/jira/browse/TEZ-2091) | *Major* | **Add support for hosting TEZ\_UI with nodejs**

There are certain category of people who would like to host TEZ UI on nodejs, it will be a good feature to be added in


---

* [TEZ-2079](https://issues.apache.org/jira/browse/TEZ-2079) | *Major* | **Tez UI: trailing slash in timelineBaseUrl in ui should be handled**

trailing / in timelineBaseUrl is not handled properly.


---

* [TEZ-2078](https://issues.apache.org/jira/browse/TEZ-2078) | *Major* | **Tez UI: Task logs url use in-progress url causing various errors**

The download link when pointing to the in-progress URL will not work in most cases as the downloaded page is the link to the NM which internally redirects to the job history. This means that the downloaded file will not have any actual log contents. 

Possible solutions:
   - only show download button when an application has completed. Please note that this is for when a yarn app has completed. A completed DAG has no guarantee that its logs are available for download. 
   - download link should always only rely on completed log url and never on in-progress url
   - view logs link can always point to in-progress url as it will automatically redirect to the jobhistory logs url if the container has completed.


---

* [TEZ-2077](https://issues.apache.org/jira/browse/TEZ-2077) | *Major* | **Tez UI: No diagnostics on Task Attempt Details page if task attempt failed**

If the task attempt failed show diagnostics message in task attempts details view


---

* [TEZ-2073](https://issues.apache.org/jira/browse/TEZ-2073) | *Major* | **SimpleHistoryLoggingService cannot be read by log aggregation (umask)**

Nodemanager logs have the following log aggregation error.
In a system where default fs.permissions.umask-mode=077. All file can be aggregated except the Simple History file since it writes files using the system's default FileSystem umask.

{quote}
[LogAggregationService #278] ERROR logaggregation.AggregatedLogFormat: Error aggregating log file. Log file : /tmp/yarn-logs/application\_1423009000687\_15308/container\_e04\_1423009000687\_15308\_01\_000001/history.txt.appattempt\_1423009000687\_15308\_000001. /tmp/yarn-logs/application\_1423009000687\_15308/container\_e04\_1423009000687\_15308\_01\_000001/history.txt.appattempt\_1423009000687\_15308\_000001 (Permission denied)


---

* [TEZ-2069](https://issues.apache.org/jira/browse/TEZ-2069) | *Major* | **Tez UI: appId should link to application in dag details view**

the appid should link to application view if available.


---

* [TEZ-2068](https://issues.apache.org/jira/browse/TEZ-2068) | *Major* | **Tez UI: Dag view should use full window height, disable webuiservice in localmode**

Use available vertical space.


---

* [TEZ-2065](https://issues.apache.org/jira/browse/TEZ-2065) | *Major* | **Setting up tez.tez-ui.history-url.base with a trailing slash can result in failures to redirect correctly**

Given that the default value of tez.am.tez-ui.history-url.template is "\_\_HISTORY\_URL\_BASE\_\_/#/tez-app/\_\_APPLICATION\_ID\_\_", this can create problems at times due to the "//" if  tez.tez-ui.history-url.base is configured with a trailing slash.


---

* [TEZ-2064](https://issues.apache.org/jira/browse/TEZ-2064) | *Critical* | **SessionNotRunning Exception not thrown is all cases**

Hive handles SessionNotRunning during submitDAG() and restarts the tez-session
if it receives one. In YHIVE-15, we did not receive that and the query failed. In some scenarios the Application will fall out of the RM's knowledge and a ApplicationNotFound exception is received instead.

Here are my asks.

1. TezClient.submitDAG()/stop() should return SessionNotRunning exception if
application is expired. Basically any API which currently returns
SessionNotRunning should handle the app-not-found scenario.

2. It would help if TezClient.getAppMasterStatus() can return
TezAppMasterStatus.SHUTDOWN if tez-session-application does not exist in RM.
That way, as a precaution, applications could check before submitting DAG's.

3. I think it might be better if verifySessionStateForSubmission() checks the
app Status every time instead of checking sessionStarted. I am not sure about
side-effects, but will leave that to your decision.


If 3 takes time, we can pursue that later. It would really help to get 1 & 2 in
the next tez release, especially for busy grids.


---

* [TEZ-2063](https://issues.apache.org/jira/browse/TEZ-2063) | *Major* | **Tez UI: Flaky log url in tasks table**

Sometimes the log view and download links do not show up.
Looked at the json response for the call made and it correctly had both the in progress and completed logs url info.


---

* [TEZ-2062](https://issues.apache.org/jira/browse/TEZ-2062) | *Major* | **Tez UI: Showing 50 elements not working properly**

Some issue in height handling, element gets truncated.


---

* [TEZ-2061](https://issues.apache.org/jira/browse/TEZ-2061) | *Major* | **Tez UI: vertex id column and filter on tasks page should be changed to vertex name**

VertexId search box is not really useful unless one types in the whole vertex id. At some point later, vertex name might be a better option. May need backend changes or could be done on the UI with an additional call to convert name to id from the dag info.


---

* [TEZ-2057](https://issues.apache.org/jira/browse/TEZ-2057) | *Major* | **tez-dag/pom.xml contains versions for dependencies**

Introduced accidentally as part of TEZ-2018. Versions should only be specified in the top-level pom.xml


---

* [TEZ-2056](https://issues.apache.org/jira/browse/TEZ-2056) | *Major* | **Tez UI: fix VertexID filter,show only tez configs by default,fix appattemptid**

\* Searching by a vertexId is broken on dag tasks view.
\* Configuration shows all settings in alphabetical order instead of showing only tez.\* at the top
\* When status is not Finished, app attempt id shows up with a "-"


---

* [TEZ-2052](https://issues.apache.org/jira/browse/TEZ-2052) | *Major* | **Tez UI: log view fixes, show version from build, better handling of ats url config**

1. If the ATS URL ends in a trailing / the view will not come up. Given the user has to manually type in this information we should be tolerant of the trailing slash
2. RM view and log view is getting truncated.
3. Display correct version based on tez-ui build in use.


---

* [TEZ-2047](https://issues.apache.org/jira/browse/TEZ-2047) | *Blocker* | **Build fails against hadoop-2.2 post TEZ-2018**

Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.1:compile (default-compile) on project tez-dag: Compilation failure: Compilation failure:
[ERROR] /home/jenkins/jenkins-slave/workspace/Tez-Build-Hadoop-2.2/tez-dag/src/main/java/org/apache/tez/dag/app/web/WebUIService.java:[85,13] cannot find symbol
[ERROR] symbol  : method withHttpPolicy(org.apache.hadoop.conf.Configuration,org.apache.hadoop.http.HttpConfig.Policy)
[ERROR] location: class org.apache.hadoop.yarn.webapp.WebApps.Builder\<org.apache.tez.dag.app.web.WebUIService.TezAMWebApp\>
[ERROR] /home/jenkins/jenkins-slave/workspace/Tez-Build-Hadoop-2.2/tez-dag/src/main/java/org/apache/tez/dag/app/web/WebUIService.java:[87,45] cannot find symbol
[ERROR] symbol  : method getConnectorAddress(int)
[ERROR] location: class org.apache.hadoop.http.HttpServer


---

* [TEZ-2043](https://issues.apache.org/jira/browse/TEZ-2043) | *Major* | **Tez UI: add progress info from am webservice to dag and vertex views**

TEZ-2018 exposes progress info about dag, vertex etc. it would be useful if the ui could show progress info in the dag view


---

* [TEZ-2038](https://issues.apache.org/jira/browse/TEZ-2038) | *Major* | **TEZ-UI DAG is always running in tez-ui when the app is failed but no DAGFinishedEvent is logged**

If AM crashed before DAG is finished, there wouldn't be DAGFinishedEvent.  In this case, DAG is always shown as running in tez-ui, but the yarn application is actually finished.


---

* [TEZ-2035](https://issues.apache.org/jira/browse/TEZ-2035) | *Major* | **Make timeline server putDomain exceptions non-fatal - work-around**

Timeline server operations have been non-fatal. However, the put domain operation is fatal and will cause the job to fail to submit. This patch is a simple fix to make the exception non-fatal. There is likely another follow-on effort that could disable timeline server operations for the AM if putDomain fails.


---

* [TEZ-2031](https://issues.apache.org/jira/browse/TEZ-2031) | *Major* | **Tez UI: horizontal scrollbars do not appear in tables, causing them to look truncated**

Scrollbar not appearing for tables.
Also scrolling doesn't happens when mouse is over header cells.
~ Cause of default view has truncated columns issue


---

* [TEZ-2018](https://issues.apache.org/jira/browse/TEZ-2018) | *Critical* | **App Tracking and History URL should point to the Tez UI**

    We need to have the Job Tracking URL take users to the Tez UI if yarn.timeline-service.enabled=true


---

* [TEZ-2014](https://issues.apache.org/jira/browse/TEZ-2014) | *Critical* | **TezUI - Nits : All tables, Vertices Page UI**

1. Default row count should be set to 50, will cover most DAGs without paging
2. Missing Duration column
3. Make filter inputs use the available space.


---

* [TEZ-2013](https://issues.apache.org/jira/browse/TEZ-2013) | *Critical* | **TEZ UI - App Details Page UI Nits**

1. YARN RM Tracking URL should mention just the app Id without tez\_ prefix
2. Made tez-apps-\>dags table similar to dags (Without applications column).


---

* [TEZ-2012](https://issues.apache.org/jira/browse/TEZ-2012) | *Critical* | **TEZ UI - Show page number in all tables, and display more readable task/attempt ids**

- It would be great to show the current page number (which will change as buttons are clicked).
- TaskId & TaskAttemptId columns are cut off, the initial chars are common to all tasks so maybe just show the index instead of the full id.


---

* [TEZ-2010](https://issues.apache.org/jira/browse/TEZ-2010) | *Minor* | **History payload generated from conf has ${var} placeholders**

The current conf to json conversion utility ends up generating json which has  $var placeholders instead of the actual value in use.


---

* [TEZ-1988](https://issues.apache.org/jira/browse/TEZ-1988) | *Major* | **Tez UI: does not work when using file:// in a browser**

Docs mention that it defaults to using http://localhost for RM and Timeline server but it does not seem to be doing so. It uses file:///:8188 instead.


---

* [TEZ-1987](https://issues.apache.org/jira/browse/TEZ-1987) | *Trivial* | **non-standalone mode protocol correction + Row count selector in all tables + Format numbers displayed + Prettifications**

When Tez UI is used in non-standalone mode, it accesses "http//\<hostname\>:8188" instead of the correct protocol setting.

That is parsed as a relative URL than as an absolute host:port URI.


---

* [TEZ-1983](https://issues.apache.org/jira/browse/TEZ-1983) | *Major* | **Tez UI swimlane task attempt link is broken**

The tool tip mouse over link isn't being routed correctly.


---

* [TEZ-1973](https://issues.apache.org/jira/browse/TEZ-1973) | *Major* | **Dag View**

Dag View
1. Vertex node with name and status
 - Task bubble with count
 - Context sensitive sources/sinks bubble with count
 - Vertex group bubble.
 - Color coded links (Based on type) with support for backward links, to show possible issues in the DAG.

2. On click redirection for all items.
 - Vertex -\> Vertex details page
   - Tasks bubble -\> Task list
   - sources/sink bubble -\> Sources & sinks page
 - Input -\> Respective input's configuration page
 - Output -\> Respective output configurations page

3. Double click - Toggle display of sources & sinks.
4. Panning, zooming, fit button, full screen button.
5. Tooltips for all entities.
6. Toggling display of sources & sinks.
7. Orientation change
8. Vertex tooltip customization - Now counters can also be displayed on the tooltip.


---

* [TEZ-1969](https://issues.apache.org/jira/browse/TEZ-1969) | *Major* | **Stop the DAGAppMaster when a local mode client is stopped**

https://issues.apache.org/jira/browse/TEZ-1661?focusedCommentId=14275366&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14275366

Running multiple local clients in a single JVM will leak DAGAppMaster and related threads.


---

* [TEZ-1949](https://issues.apache.org/jira/browse/TEZ-1949) | *Critical* | **Whitelist TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges**

Tez configuration whitelisting is missing TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges (UnorderedKVInput).


---

* [TEZ-1929](https://issues.apache.org/jira/browse/TEZ-1929) | *Major* | **pre-empted tasks should be marked as killed instead of failed**

Observed this behavior 3 or 4 times

- Ran a hive query with tez (query\_17 at 10 TB scale)
- Occasionally, Map\_7 task will get into failed state in the middle of fetching data from other sources (only one task is available in Map\_7).  

{code}
2015-01-08 00:19:10,289 INFO [Fetcher [Map\_6] #0] impl.ShuffleManager: Completed fetch for attempt: InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=0], attemptNumber=0, pathComponent=attempt\_1420000126204\_0233\_1\_06\_000000\_0\_10003] to MEMORY, CompressedSize=6757, DecompressedSize=16490,EndTime=1420705150289, TimeTaken=5, Rate=1.29 MB/s
2015-01-08 00:19:10,290 INFO [Fetcher [Map\_6] #0] impl.ShuffleManager: All inputs fetched for input vertex : Map 6
2015-01-08 00:19:10,290 INFO [Fetcher [Map\_6] #0] impl.ShuffleManager: copy(0 of 1. Transfer rate (CumulativeDataFetched/TimeSinceInputStarted)) 0.01 MB/s)
2015-01-08 00:19:10,290 INFO [ShuffleRunner [Map\_6]] impl.ShuffleManager: Shutting down FetchScheduler, Was Interrupted: false
2015-01-08 00:19:10,290 INFO [ShuffleRunner [Map\_6]] impl.ShuffleManager: Scheduler thread completed
2015-01-08 00:19:41,986 INFO [TaskHeartbeatThread] task.TaskReporter: Received should die response from AM
2015-01-08 00:19:41,986 INFO [TaskHeartbeatThread] task.TaskReporter: Asked to die via task heartbeat
2015-01-08 00:19:41,987 INFO [main] task.TezTaskRunner: Interrupted while waiting for task to complete. Interrupting task
2015-01-08 00:19:41,987 INFO [main] task.TezTaskRunner: Shutdown requested... returning
2015-01-08 00:19:41,987 INFO [main] task.TezChild: Got a shouldDie notification via hearbeats. Shutting down
2015-01-08 00:19:41,990 ERROR [TezChild] tez.TezProcessor: java.lang.InterruptedException
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.reportInterruptAfterWait(AbstractQueuedSynchronizer.java:2014)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2048)
	at org.apache.tez.runtime.InputReadyTracker$InputReadyMonitor.awaitCondition(InputReadyTracker.java:120)
	at org.apache.tez.runtime.InputReadyTracker.waitForAnyInputReady(InputReadyTracker.java:83)
	at org.apache.tez.runtime.api.impl.TezProcessorContextImpl.waitForAnyInputReady(TezProcessorContextImpl.java:106)
	at org.apache.hadoop.hive.ql.exec.tez.TezProcessor.initializeAndRunProcessor(TezProcessor.java:153)
	at org.apache.hadoop.hive.ql.exec.tez.TezProcessor.run(TezProcessor.java:138)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:328)
	at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:179)
	at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:171)
{code}

From the initial look, it appears that TaskAttemptListenerImpTezDag.heartbeat is unable to identify the containerId from registeredContainers.  Need to verify this.

I will attach the sample task log and the tez-ui details.


---

* [TEZ-1923](https://issues.apache.org/jira/browse/TEZ-1923) | *Major* | **FetcherOrderedGrouped gets into infinite loop due to memory pressure**

- Ran a comparatively large job (temp table creation) at 10 TB scale.
- Turned on intermediate mem-to-mem (tez.runtime.shuffle.memory-to-memory.enable=true and tez.runtime.shuffle.memory-to-memory.segments=4)
- Some reducers get lots of data and quickly gets into infinite loop

{code}

2015-01-07 02:36:56,644 INFO [fetcher [Map\_1] #2] orderedgrouped.FetcherOrderedGrouped: fetcher#2 - MergerManager returned Status.WAIT ...
2015-01-07 02:36:56,644 INFO [fetcher [Map\_1] #2] orderedgrouped.ShuffleScheduler: m1:13562 freed by fetcher [Map\_1] #2 in 3ms
2015-01-07 02:36:56,644 INFO [fetcher [Map\_1] #2] shuffle.HttpConnection: for url=http://m1:13562/mapOutput?job=job\_1420000126204\_0201&reduce=34&map=attempt\_1420000126204\_0201\_1\_00\_000420\_0\_10027&keepAlive=true sent hash and receievd reply 0 ms
2015-01-07 02:36:56,645 INFO [fetcher [Map\_1] #2] orderedgrouped.FetcherOrderedGrouped: fetcher#2 - MergerManager returned Status.WAIT ...
2015-01-07 02:36:56,645 INFO [fetcher [Map\_1] #2] orderedgrouped.ShuffleScheduler: m1:13562 freed by fetcher [Map\_1] #2 in 1ms
2015-01-07 02:36:56,645 INFO [fetcher [Map\_1] #2] shuffle.HttpConnection: for url=http://m1:13562/mapOutput?job=job\_1420000126204\_0201&reduce=34&map=attempt\_1420000126204\_0201\_1\_00\_000420\_0\_10027&keepAlive=true sent hash and receievd reply 0 ms
2015-01-07 02:36:56,647 INFO [fetcher [Map\_1] #2] orderedgrouped.FetcherOrderedGrouped: fetcher#2 - MergerManager returned Status.WAIT ...
2015-01-07 02:36:56,647 INFO [fetcher [Map\_1] #2] orderedgrouped.ShuffleScheduler: m1:13562 freed by fetcher [Map\_1] #2 in 2ms
2015-01-07 02:36:56,653 INFO [fetcher [Map\_1] #2] shuffle.HttpConnection: for url=http://m1:13562/mapOutput?job=job\_1420000126204\_0201&reduce=34&map=attempt\_1420000126204\_0201\_1\_00\_000420\_0\_10027&keepAlive=true sent hash and receievd reply 0 ms
2015-01-07 02:36:56,653 INFO [fetcher [Map\_1] #2] orderedgrouped.FetcherOrderedGrouped: fetcher#2 - MergerManager returned Status.WAIT ...
2015-01-07 02:36:56,653 INFO [fetcher [Map\_1] #2] orderedgrouped.ShuffleScheduler: m1:13562 freed by fetcher [Map\_1] #2 in 5ms
2015-01-07 02:36:56,654 INFO [fetcher [Map\_1] #2] shuffle.HttpConnection: for url=http://m1:13562/mapOutput?job=job\_1420000126204\_0201&reduce=34&map=attempt\_1420000126204\_0201\_1\_00\_000420\_0\_10027&keepAlive=true sent hash and receievd reply 0 ms
2015-01-07 02:36:56,654 INFO [fetcher [Map\_1] #2] orderedgrouped.FetcherOrderedGrouped: fetcher#2 - MergerManager returned Status.WAIT ...
{code}

Additional debug/patch statements revealed that InMemoryMerge is not invoked appropriately and not releasing the memory back for fetchers to proceed. e.g debug/patch messages are given below

{code}

syslog\_attempt\_1420000126204\_0201\_1\_01\_000034\_0:2015-01-07 02:05:48,332 INFO [fetcher [Map\_1] #2] orderedgrouped.MergeManager: Patch..usedMemory=1551867234, memoryLimit=1073741824, commitMemory=883028388, mergeThreshold=708669632  \<\<=== InMemoryMerge would be started in this case as commitMemory \>= mergeThreshold

syslog\_attempt\_1420000126204\_0201\_1\_01\_000034\_0:2015-01-07 02:05:52,900 INFO [fetcher [Map\_1] #2] orderedgrouped.MergeManager: Patch..usedMemory=1273349784, memoryLimit=1073741824, commitMemory=347296632, mergeThreshold=708669632 \<\<=== InMemoryMerge would \*NOT\* be started in this case as commitMemory \< mergeThreshold.  But the usedMemory is higher than memoryLimit.  Fetchers would keep waiting indefinitely until memory is released. InMemoryMerge will not kick in and not release memory.

syslog\_attempt\_1420000126204\_0201\_1\_01\_000034\_0:2015-01-07 02:05:53,163 INFO [fetcher [Map\_1] #1] orderedgrouped.MergeManager: Patch..usedMemory=1191994052, memoryLimit=1073741824, commitMemory=523155206, mergeThreshold=708669632 \<\<=== InMemoryMerge would \*NOT\* be started in this case as commitMemory \< mergeThreshold.  But the usedMemory is higher than memoryLimit.  Fetchers would keep waiting indefinitely until memory is released.  InMemoryMerge will not kick in and not release memory.
{code}

In MergeManager, in memory merging is invoked under the following condition
{code}
if (!inMemoryMerger.isInProgress() && commitMemory \>= mergeThreshold)
{code}


Attaching the sample hive command just for reference
{code}
$HIVE\_HOME/bin/hive -hiveconf tez.runtime.io.sort.factor=200 --hiveconf hive.tez.auto.reducer.parallelism=false --hiveconf tez.am.heartbeat.interval-ms.max=20 --hiveconf tez.runtime.io.sort.mb=1200 --hiveconf tez.runtime.sort.threads=2 --hiveconf hive.tez.container.size=4096 --hiveconf tez.runtime.shuffle.memory-to-memory.enable=true --hiveconf tez.runtime.shuffle.memory-to-memory.segments=4

create table testData as select ss\_sold\_date\_sk,ss\_sold\_time\_sk,ss\_item\_sk,ss\_customer\_sk,ss\_quantity,ss\_sold\_date from store\_sales distribute by ss\_sold\_date;
{code}


---

* [TEZ-1917](https://issues.apache.org/jira/browse/TEZ-1917) | *Major* | **Examples should extend TezExampleBase**

To get rid of a lot of boiler plate code from each example.


---

* [TEZ-1909](https://issues.apache.org/jira/browse/TEZ-1909) | *Major* | **Remove need to copy over all events from attempt 1 to attempt 2 dir**

Use of file versions should prevent the need for copying over data into a second attempt dir. Care needs to be taken to handle "last corrupt record" handling.


---

* [TEZ-1661](https://issues.apache.org/jira/browse/TEZ-1661) | *Major* | **LocalTaskScheduler hangs when shutdown**

LocalTaskScheduler hangs on 'take' from the 'taskRequestQueue ' when TezClient shuts down (e.g., TezClient.stop).
Below is jstack output observed when running in Tez local mode:
{code}
"Thread-53" prio=5 tid=0x00007fc876d8f800 nid=0xac07 runnable [0x000000011df90000]
   java.lang.Thread.State: RUNNABLE
        at java.lang.Throwable.fillInStackTrace(Native Method)
        at java.lang.Throwable.fillInStackTrace(Throwable.java:783)
        - locked \<0x00000007b6ce60a0\> (a java.lang.InterruptedException)
        at java.lang.Throwable.\<init\>(Throwable.java:250)
        at java.lang.Exception.\<init\>(Exception.java:54)
        at java.lang.InterruptedException.\<init\>(InterruptedException.java:57)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly(AbstractQueuedSynchronizer.java:1219)
        at java.util.concurrent.locks.ReentrantLock.lockInterruptibly(ReentrantLock.java:340)
        at java.util.concurrent.PriorityBlockingQueue.take(PriorityBlockingQueue.java:535)
        at org.apache.tez.dag.app.rm.LocalTaskSchedulerService$AsyncDelegateRequestHandler.processRequest(LocalTaskSchedulerService.java:310)
        at org.apache.tez.dag.app.rm.LocalTaskSchedulerService$AsyncDelegateRequestHandler.run(LocalTaskSchedulerService.java:304)
        at java.lang.Thread.run(Thread.java:745)
{code}


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



