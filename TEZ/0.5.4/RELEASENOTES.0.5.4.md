
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
#  0.5.4 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2397](https://issues.apache.org/jira/browse/TEZ-2397) | *Critical* | **Translation of LocalResources via Tez plan serialization can be lossy**

Happens when there's no port information. The way we serialize a YarnURL into a string causes the reconstructed path to include the port as -1, which is an invalid URL. Path/URL reconstruction from this causes the hostname to be lost.
This is problematic on clusters running HDFA HA - since there's no host:port information, only a service name. I'd imaging it'll be a problem for viewfs as well.


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

* [TEZ-2348](https://issues.apache.org/jira/browse/TEZ-2348) | *Major* | **EOF exception during UnorderedKVReader.next()**

{noformat}
Caused by: java.lang.RuntimeException: java.io.IOException: Reached EOF. Completed reading 516605
	at org.apache.hadoop.hive.ql.exec.tez.ReduceRecordSource.pushRecord(ReduceRecordSource.java:278)
	at org.apache.hadoop.hive.ql.exec.tez.ReduceRecordProcessor.run(ReduceRecordProcessor.java:184)
	at org.apache.hadoop.hive.ql.exec.tez.TezProcessor.initializeAndRunProcessor(TezProcessor.java:148)
	... 13 more
Caused by: java.io.IOException: Reached EOF. Completed reading 516605
	at org.apache.tez.runtime.library.common.sort.impl.IFile.checkState(IFile.java:817)
	at org.apache.tez.runtime.library.common.sort.impl.IFile$Reader.positionToNextRecord(IFile.java:698)
	at org.apache.tez.runtime.library.common.sort.impl.IFile$Reader.readRawKey(IFile.java:731)
	at org.apache.tez.runtime.library.common.sort.impl.IFile$Reader.nextRawKey(IFile.java:727)
	at org.apache.tez.runtime.library.common.readers.UnorderedKVReader.readNextFromCurrentReader(UnorderedKVReader.java:151)
	at org.apache.tez.runtime.library.common.readers.UnorderedKVReader.next(UnorderedKVReader.java:112)
	at org.apache.hadoop.hive.ql.exec.tez.ReduceRecordSource$KeyValuesFromKeyValue.next(ReduceRecordSource.java:439)
	at org.apache.hadoop.hive.ql.exec.tez.ReduceRecordSource.pushRecord(ReduceRecordSource.java:232)
	... 15 more
{noformat}


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

* [TEZ-2303](https://issues.apache.org/jira/browse/TEZ-2303) | *Major* | **ConcurrentModificationException while processing recovery**

Saw a Tez AM log a few ConcurrentModificationException messages while trying to recover from a previous attempt that crashed.  Exception details to follow.


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

* [TEZ-2257](https://issues.apache.org/jira/browse/TEZ-2257) | *Major* | **NPEs in TaskReporter**

The task reported can end up throwing NPEs when adding events, reporting exceptions or marking as task as complete.
currentCallable causes this.

{code}
15/02/23 15:31:28 [TezChild] INFO task.TezTaskRunner : Encounted an error while executing task: attempt\_1424727586401\_0019\_1\_00\_000000\_0
java.lang.RuntimeException: org.apache.hadoop.hive.ql.metadata.HiveException: java.io.IOException: java.io.IOException: java.lang.InterruptedException
  at org.apache.hadoop.hive.ql.exec.tez.TezProcessor.initializeAndRunProcessor(TezProcessor.java:186)
  at org.apache.hadoop.hive.ql.exec.tez.TezProcessor.run(TezProcessor.java:138)
  at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:328)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:179)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:171)
  at java.security.AccessController.doPrivileged(Native Method)
  at javax.security.auth.Subject.doAs(Subject.java:415)
  at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:171)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:166)
  at java.util.concurrent.FutureTask.run(FutureTask.java:262)
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
  at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
  at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.hadoop.hive.ql.metadata.HiveException: java.io.IOException: java.io.IOException: java.lang.InterruptedException
  at org.apache.hadoop.hive.ql.exec.tez.MapRecordSource.pushRecord(MapRecordSource.java:71)
  at org.apache.hadoop.hive.ql.exec.tez.MapRecordProcessor.run(MapRecordProcessor.java:292)
  at org.apache.hadoop.hive.ql.exec.tez.TezProcessor.initializeAndRunProcessor(TezProcessor.java:163)
  ... 13 more
Caused by: java.io.IOException: java.io.IOException: java.lang.InterruptedException
  at org.apache.hadoop.hive.io.HiveIOExceptionHandlerChain.handleRecordReaderNextException(HiveIOExceptionHandlerChain.java:121)
  at org.apache.hadoop.hive.io.HiveIOExceptionHandlerUtil.handleRecordReaderNextException(HiveIOExceptionHandlerUtil.java:77)
  at org.apache.hadoop.hive.ql.io.HiveContextAwareRecordReader.doNext(HiveContextAwareRecordReader.java:355)
  at org.apache.hadoop.hive.ql.io.HiveRecordReader.doNext(HiveRecordReader.java:79)
  at org.apache.hadoop.hive.ql.io.HiveRecordReader.doNext(HiveRecordReader.java:33)
  at org.apache.hadoop.hive.ql.io.HiveContextAwareRecordReader.next(HiveContextAwareRecordReader.java:116)
  at org.apache.hadoop.mapred.split.TezGroupedSplitsInputFormat$TezGroupedSplitsRecordReader.next(TezGroupedSplitsInputFormat.java:126)
  at org.apache.tez.mapreduce.lib.MRReaderMapred.next(MRReaderMapred.java:113)
  at org.apache.hadoop.hive.ql.exec.tez.MapRecordSource.pushRecord(MapRecordSource.java:61)
  ... 15 more
Caused by: java.io.IOException: java.lang.InterruptedException
  at org.apache.hadoop.hive.llap.io.api.impl.LlapInputFormat$LlapRecordReader.next(LlapInputFormat.java:146)
  at org.apache.hadoop.hive.llap.io.api.impl.LlapInputFormat$LlapRecordReader.next(LlapInputFormat.java:87)
  at org.apache.hadoop.hive.ql.io.HiveContextAwareRecordReader.doNext(HiveContextAwareRecordReader.java:350)
  ... 21 more
Caused by: java.lang.InterruptedException
  at java.lang.Object.wait(Native Method)
  at org.apache.hadoop.hive.llap.io.api.impl.LlapInputFormat$LlapRecordReader.nextCvb(LlapInputFormat.java:163)
  at org.apache.hadoop.hive.llap.io.api.impl.LlapInputFormat$LlapRecordReader.next(LlapInputFormat.java:132)
  ... 23 more
15/02/23 15:31:28 [TezChild] INFO task.TezTaskRunner : Ignoring the following exception since a previous exception is already registered
java.lang.NullPointerException
  at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.access$300(TaskReporter.java:120)
  at org.apache.tez.runtime.task.TaskReporter.taskFailed(TaskReporter.java:382)
  at org.apache.tez.runtime.task.TezTaskRunner.sendFailure(TezTaskRunner.java:260)
  at org.apache.tez.runtime.task.TezTaskRunner.access$600(TezTaskRunner.java:51)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:227)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:171)
  at java.security.AccessController.doPrivileged(Native Method)
  at javax.security.auth.Subject.doAs(Subject.java:415)
  at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:171)
  at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:166)
  at java.util.concurrent.FutureTask.run(FutureTask.java:262)
  at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
  at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
  at java.lang.Thread.run(Thread.java:745)
{code}

HIVE-10157 is worse, where an NPE is encountered without a previous error when just trying to add events.


---

* [TEZ-2240](https://issues.apache.org/jira/browse/TEZ-2240) | *Major* | **Fix toUpperCase/toLowerCase to use Locale.ENGLISH**

String#toLowerCase()/toUpperCase() without a locale argument can occur unexpected behavior based on the locale. It's written in Javadoc:

{quote}
For instance, "TITLE".toLowerCase() in a Turkish locale returns "t\u0131tle", where '\u0131' is the LATIN SMALL LETTER DOTLESS I character
{quote}

HADOOP-11602 is an issue to address this problem at the Hadoop side.


---

* [TEZ-2238](https://issues.apache.org/jira/browse/TEZ-2238) | *Major* | **TestContainerReuse flaky**

It depends on containers being released predictably but that is not guaranteed by the code.
 org.apache.tez.dag.app.rm.TestContainerReuse.testSimpleReuse
 org.apache.tez.dag.app.rm.TestContainerReuse.testDelayedReuseContainerBecomesAvailable


---

* [TEZ-2224](https://issues.apache.org/jira/browse/TEZ-2224) | *Major* | **EventQueue empty doesn't mean events are consumed in RecoveryService**

If the event queue is empty, the event may still been processing. Should fix it like AsyncDispatcher


---

* [TEZ-2221](https://issues.apache.org/jira/browse/TEZ-2221) | *Major* | **VertexGroup name should be unqiue**

VertexGroupCommitStartedEvent & VertexGroupCommitFinishedEvent use vertex group name to identify the vertex group commit, the same name of vertex group will conflict. While in the current equals & hashCode of VertexGroup, vertex group name and members name are used.


---

* [TEZ-2220](https://issues.apache.org/jira/browse/TEZ-2220) | *Major* | **TestTezJobs compile failure in branch 0.5**

{noformat}

[ERROR] Failed to execute goal org.apache.maven.plugins:maven-compiler-plugin:3.1:testCompile (default-testCompile) on project tez-tests: Compilation failure: Compilation failure:
[ERROR] ./tez/tez-tests/src/test/java/org/apache/tez/test/TestTezJobs.java:[542,52] cannot find symbol
[ERROR] symbol:   variable StringUtils
[ERROR] location: class org.apache.tez.test.TestTezJobs
[ERROR] ./tez/tez-tests/src/test/java/org/apache/tez/test/TestTezJobs.java:[543,11] cannot find symbol
[ERROR] symbol:   variable StringUtils
[ERROR] location: class org.apache.tez.test.TestTezJobs
[ERROR] ./tez/tez-tests/src/test/java/org/apache/tez/test/TestTezJobs.java:[542,23] no suitable method found for run(org.apache.tez.dag.api.TezConfiguration,java.lang.String[],<nulltype>)
[ERROR] method org.apache.tez.examples.SimpleSessionExample.run(java.lang.String[]) is not applicable
[ERROR] (actual and formal argument lists differ in length)
[ERROR] method org.apache.tez.examples.SimpleSessionExample.run(java.lang.String[],java.lang.String[],org.apache.hadoop.conf.Configuration,int) is not applicable
[ERROR] (actual and formal argument lists differ in length)
[ERROR] ./tez/tez-tests/src/test/java/org/apache/tez/test/TestTezJobs.java:[576,39] cannot find symbol
[ERROR] symbol:   variable StringUtils
[ERROR] location: class org.apache.tez.test.TestTezJobs
[ERROR] ./tez/tez-tests/src/test/java/org/apache/tez/test/TestTezJobs.java:[577,11] cannot find symbol
[ERROR] symbol:   variable StringUtils
[ERROR] location: class org.apache.tez.test.TestTezJobs
[ERROR] ./tez/tez-tests/src/test/java/org/apache/tez/test/TestTezJobs.java:[576,10] no suitable method found for run(org.apache.tez.dag.api.TezConfiguration,java.lang.String[],<nulltype>)
[ERROR] method org.apache.tez.examples.SimpleSessionExample.run(java.lang.String[]) is not applicable
[ERROR] (actual and formal argument lists differ in length)
[ERROR] method org.apache.tez.examples.SimpleSessionExample.run(java.lang.String[],java.lang.String[],org.apache.hadoop.conf.Configuration,int) is not applicable
[ERROR] (actual and formal argument lists differ in length)
[ERROR] -> [Help 1]
{noformat}


---

* [TEZ-2219](https://issues.apache.org/jira/browse/TEZ-2219) | *Major* | **Should verify the input\_name/output\_name to be unique per vertex**

RuntimeTask try to get the Input/Output using the input\_name/output\_name, so input\_name/output\_name should be unique per vertex


---

* [TEZ-2217](https://issues.apache.org/jira/browse/TEZ-2217) | *Major* | **The min-held-containers being released prematurely**

The min-held containers constraint is respected during query idle times, but is not respected when a query is actually in motion.

The AM releases unused containers during dag execution without checking for min-held containers.

{code}
2015-03-20 15:41:53,475 INFO [DelayedContainerManager] rm.YarnTaskSchedulerService: Container's idle timeout expired. Releasing container, containerId=container\_1424502260528\_1348\_01\_000013, containerExpiryTime=1426891313264, idleTimeoutMin=5000
2015-03-20 15:41:53,475 INFO [DelayedContainerManager] rm.YarnTaskSchedulerService: Releasing unused container: container\_1424502260528\_1348\_01\_000013
{code}

This is actually useful only after the AM has received a soft pre-emption message, doing it on an idle cluster slows down one of the most common query patterns in BI systems.

{code}
create temporary table smalltable as ...; 
select ... bigtable JOIN smalltable ON ...;
{code}

The smaller query in the beginning throws away the pre-warmed capacity.


---

* [TEZ-2214](https://issues.apache.org/jira/browse/TEZ-2214) | *Major* | **FetcherOrderedGrouped can get stuck indefinitely when MergeManager misses memToDiskMerging**

Scenario:
- commitMemory & usedMemory are beyond their allowed threshold.
- InMemoryMerge kicks off and is in the process of flushing memory contents to disk
- As it progresses, it releases memory segments as well (but not yet over).
- Fetchers who need memory < maxSingleShuffleLimit, get scheduled.
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

* [TEZ-2199](https://issues.apache.org/jira/browse/TEZ-2199) | *Major* | **updateLocalResourcesForInputSplits assumes wrongly that split data is on same FS as the default FS**

Seen in a Windows Azure scenario:

Caused by: java.io.FileNotFoundException: hdfs://namenode:9000/hive/scratch/\_tez\_scratch\_dir/split\_Map\_1/job.split: No such file or directory.
	at org.apache.hadoop.fs.azure.NativeAzureFileSystem.getFileStatus(NativeAzureFileSystem.java:1625)
	at org.apache.tez.mapreduce.hadoop.MRInputHelpers.updateLocalResourcesForInputSplits(MRInputHelpers.java:639)
	at org.apache.tez.mapreduce.hadoop.MRInputHelpers.configureMRInputWithLegacySplitGeneration(MRInputHelpers.java:115)


---

* [TEZ-2193](https://issues.apache.org/jira/browse/TEZ-2193) | *Major* | **Check returned value from EdgeManagerPlugin before using it**

e.g. dag has vertices v1, v2 and shuffle edge between them, and v2 has custom vertex manager and -1 parallelism. In this case v1's output spec may be has -1 physical edge which will cause task hangs in TezChild.


---

* [TEZ-2192](https://issues.apache.org/jira/browse/TEZ-2192) | *Blocker* | **Relocalization does not check for source**

 PIG-4443 spills the input splits to disk if serialized split size is greater than some threshold. It faces issues with relocalization when more than one vertex has job.split file. If a job.split file is already there on container reuse, it is reused causing wrong data to be read.

Either need a way to turn off relocalization or  check the source+timestamp and redownload the file during relocalization.


---

* [TEZ-2162](https://issues.apache.org/jira/browse/TEZ-2162) | *Critical* | **org.apache.hadoop.mapreduce.lib.output.SequenceFileOutputFormat is not recognized**

{code}
DataSinkDescriptor dataSink = MROutput.createConfigBuilder(dsConfig, outputFormatClass, outputPath).build();
{code}
if output format class is \_org.apache.hadoop.mapreduce.lib.output.SequenceFileOutputFormat\_ I end up with \_TextOutputFormat\_, however if it is \_org.apache.hadoop.mapred.SequenceFileOutputFormat\_, then all good.
For now that can be a workaround to deal with SequenceFiles but I think that is the old API and it seems like Tez is having some issue.


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

* [TEZ-2071](https://issues.apache.org/jira/browse/TEZ-2071) | *Major* | **TestAMRecovery should set test names for test DAGs**

Without names, its difficult to trace the test case failure to its test dag in the logs of the session.


---

* [TEZ-2058](https://issues.apache.org/jira/browse/TEZ-2058) | *Blocker* | **Flaky test: TestTezJobs::testInvalidQueueSubmission**

Looks like there is a timing dependency introduced when running on a MiniCluster. Might have similar problems in real clusters.


---

* [TEZ-2037](https://issues.apache.org/jira/browse/TEZ-2037) | *Major* | **Should log TaskAttemptFinishedEvent if taskattempt is recovered to KILLED**

In the tez-ui, there's no available information about taskattempt that is recovered to KILLED , it it because of there' s no TaskAttemptFinsihedEvent in this case.


---

* [TEZ-2020](https://issues.apache.org/jira/browse/TEZ-2020) | *Major* | **For 1-1 edge vertex configured event may be sent incorrectly**

For a fully configured 1-1 vertex configured event will be sent after init because the vertex manager does not signal intent to reconfigure. However a change in parallelism upstream on the 1-1 edge can cause this vertex's parallelism to be updated accordingly. This breaks the guarantee that configured should be sent after vertex is fully configured. This is because update of parallelism on 1-1 edge has until now been hard-coded in the Vertex code. This can be removed now with the InputReadyVertexManager handling the 1-1 edge and the addition of vertex state updates. Not only will this fix the issue but also remove the special handling for 1-1 edges in the AM which should not be there for cleanliness.


---

* [TEZ-2015](https://issues.apache.org/jira/browse/TEZ-2015) | *Major* | **VertexImpl.doneReconfiguringVertex() should check other criteria before sending notification**

The vertex manager may have done what it wanted e.g. set parallelism but other items like input edge may still not be defined. So state change might be sent incorrectly.


---

* [TEZ-2011](https://issues.apache.org/jira/browse/TEZ-2011) | *Major* | **InputReadyVertexManager not resilient to updates in parallelism**

It sets up its internal book-keeping upon onVertexStarted() but that book-keeping can be wrong if its parallelism changes after that. It needs to subscribe to Vertex configured event for its source vertices to make sure that all changes have been made before initializing its internal state.


---

* [TEZ-1962](https://issues.apache.org/jira/browse/TEZ-1962) | *Critical* | **Running out of threads in tez local mode**

I've been trying to port the hive ut to tez local mode. However, local mode seems to leak threads which causes tests to crash after a while (oom). See attached stack trace - there are a lot of "TezChild" threads still hanging around.

([~sseth] as discussed offline)


---

* [TEZ-1949](https://issues.apache.org/jira/browse/TEZ-1949) | *Critical* | **Whitelist TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges**

Tez configuration whitelisting is missing TEZ\_RUNTIME\_OPTIMIZE\_SHARED\_FETCH for broadcast edges (UnorderedKVInput).


---

* [TEZ-1942](https://issues.apache.org/jira/browse/TEZ-1942) | *Blocker* | **Number of tasks show in Tez UI with auto-reduce parallelism is misleading**

Ran a simple hive query (with tez) and "--hiveconf hive.tez.auto.reducer.parallelism=true" .  This internally turns on tez's auto reduce parallelism.  

- Job started off with 1009 reduce tasks
- Tez reduces the number of reducers to 253
- Job completes successfully, but TEZ UI shows 1009 as the number of reducers (and 253 tasks as successful tasks).  This can be a little misleading.

I will attach the screenshots soon.


---

* [TEZ-1934](https://issues.apache.org/jira/browse/TEZ-1934) | *Major* | **TestAMRecovery may fail due to the execution order is not determined**

task\_1 is not guaranteed to been scheduled before task\_0, so task\_1 may finished before task\_0. While in the current TestAMRecovery, the finish of task\_1 is treated as the finished signal of vertex ( only 2 tasks in this vertex)


---

* [TEZ-1931](https://issues.apache.org/jira/browse/TEZ-1931) | *Critical* | **Publish tez version info to Timeline**

We are not publishing any version info to Timeline. This will be useful to compare different dags/apps over time and also to catch issues if needed.


---

* [TEZ-1928](https://issues.apache.org/jira/browse/TEZ-1928) | *Major* | **Tez local mode hang in Pig tez local mode**

Pig tez local mode tests hang under some scenario. I attached several stack trace of hanging tests.

By setting "tez.am.inline.task.execution.max-tasks", the test does not hang. However, we cannot make it general since Pig backend code is not designed to be multithread-safe.


---

* [TEZ-1924](https://issues.apache.org/jira/browse/TEZ-1924) | *Major* | **Tez AM does not register with AM with full FQDN causing jobs to fail in some environments**

Issue originally reported by [~Karam Singh].

All OrderWordCount, WordCount and Tez tests faultTolerance system tests failed due to java.net.UnknownHostException
Interesting other tez examples such as mrrsleep, randomwriter, randomtextwriter, sort, join\_inner, join\_outer, terasort, groupbyorderbymrrtest ran fine
one such example is following
{code}
RUNNING: /usr/lib/hadoop/bin/hadoop jar /usr/lib/tez/tez-mapreduce-examples-0.4.0.2.1.7.0-784.jar orderedwordcount "-DUSE\_TEZ\_SESSION=true" "-Dmapreduce.map.memory.mb=2048" "-Dtez.am.shuffle-vertex-manager.max-src-fraction=0" "-Dmapreduce.reduce.memory.mb=2048" "-Dmapreduce.framework.name=yarn-tez" "-Dtez.am.container.reuse.enabled=false" "-Dtez.am.log.level=DEBUG" "-Dmapreduce.map.java.opts=-Xmx1024m" "-Dtez.am.shuffle-vertex-manager.min-src-fraction=0" "-Dmapreduce.job.reduce.slowstart.completedmaps=0.01" "-Dmapreduce.reduce.java.opts=-Xmx1024m" "-Dtez.am.container.session.delay-allocation-millis=120000" /user/hrt\_qa/Tez\_CR\_1/TestContainerReuse1 /user/hrt\_qa/Tez\_CROutput\_1 /user/hrt\_qa/Tez\_CR\_2/TestContainerReuse2 /user/hrt\_qa/Tez\_CROutput\_2 -generateSplitsInClient true
14/12/19 09:20:05 INFO impl.TimelineClientImpl: Timeline service address: http://0.0.0.0:8188/ws/v1/timeline/
14/12/19 09:20:05 INFO client.RMProxy: Connecting to ResourceManager at headnode0.humb-tez1-ssh.d5.internal.cloudapp.net/10.0.0.87:8050
14/12/19 09:20:05 INFO client.AHSProxy: Connecting to Application History server at /0.0.0.0:10200
14/12/19 09:20:06 INFO impl.MetricsConfig: loaded properties from hadoop-metrics2.properties
14/12/19 09:20:06 INFO impl.MetricsSystemImpl: Scheduled snapshot period at 60 second(s).
14/12/19 09:20:06 INFO impl.MetricsSystemImpl: azure-file-system metrics system started
14/12/19 09:20:07 INFO client.TezClientUtils: Permissions on staging directory wasb://humb-tez1@humboldttesting.blob.core.windows.net/user/hrt\_qa/.staging/application\_1418977790315\_0016 are incorrect: rwxr-xr-x. Fixing permissions to correct value rwx------
14/12/19 09:20:07 INFO examples.OrderedWordCount: Creating Tez Session
14/12/19 09:20:07 INFO impl.TimelineClientImpl: Timeline service address: http://0.0.0.0:8188/ws/v1/timeline/
14/12/19 09:20:07 INFO client.RMProxy: Connecting to ResourceManager at headnode0.humb-tez1-ssh.d5.internal.cloudapp.net/10.0.0.87:8050
14/12/19 09:20:07 INFO client.AHSProxy: Connecting to Application History server at /0.0.0.0:10200
14/12/19 09:20:09 INFO impl.YarnClientImpl: Submitted application application\_1418977790315\_0016
14/12/19 09:20:09 INFO examples.OrderedWordCount: Created Tez Session
14/12/19 09:20:09 INFO examples.OrderedWordCount: Running OrderedWordCount DAG, dagIndex=1, inputPath=/user/hrt\_qa/Tez\_CR\_1/TestContainerReuse1, outputPath=/user/hrt\_qa/Tez\_CROutput\_1
14/12/19 09:20:09 INFO hadoop.MRHelpers: Generating new input splits, splitsDir=wasb://humb-tez1@humboldttesting.blob.core.windows.net/user/hrt\_qa/.staging/application\_1418977790315\_0016
14/12/19 09:20:09 INFO input.FileInputFormat: Total input paths to process : 20
14/12/19 09:20:09 INFO examples.OrderedWordCount: Waiting for TezSession to get into ready state
14/12/19 09:20:14 INFO client.TezSession: Failed to retrieve AM Status via proxy
org.apache.tez.dag.api.TezException: com.google.protobuf.ServiceException: java.net.UnknownHostException: Invalid host name: local host is: (unknown); destination host is: "workernode1":59575; java.net.UnknownHostException; For more details see:  http://wiki.apache.org/hadoop/UnknownHost
	at org.apache.tez.client.TezSession.getSessionStatus(TezSession.java:351)
	at org.apache.tez.mapreduce.examples.OrderedWordCount.waitForTezSessionReady(OrderedWordCount.java:538)
	at org.apache.tez.mapreduce.examples.OrderedWordCount.main(OrderedWordCount.java:461)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:145)
	at org.apache.tez.mapreduce.examples.ExampleDriver.main(ExampleDriver.java:88)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:212)
Caused by: com.google.protobuf.ServiceException: java.net.UnknownHostException: Invalid host name: local host is: (unknown); destination host is: "workernode1":59575; java.net.UnknownHostException; For more details see:  http://wiki.apache.org/hadoop/UnknownHost
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:216)
	at com.sun.proxy.$Proxy24.getAMStatus(Unknown Source)
	at org.apache.tez.client.TezSession.getSessionStatus(TezSession.java:337)
	... 14 more
Caused by: java.net.UnknownHostException: Invalid host name: local host is: (unknown); destination host is: "workernode1":59575; java.net.UnknownHostException; For more details see:  http://wiki.apache.org/hadoop/UnknownHost
	at sun.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)
	at sun.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:57)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
	at org.apache.hadoop.net.NetUtils.wrapWithMessage(NetUtils.java:783)
	at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:742)
	at org.apache.hadoop.ipc.Client$Connection.<init>(Client.java:400)
	at org.apache.hadoop.ipc.Client.getConnection(Client.java:1452)
	at org.apache.hadoop.ipc.Client.call(Client.java:1381)
	at org.apache.hadoop.ipc.Client.call(Client.java:1363)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
	... 16 more
Caused by: java.net.UnknownHostException
	... 21 more

....................
....................

Caused by: java.net.UnknownHostException: Invalid host name: local host is: (unknown); destination host is: "workernode1":59575; java.net.UnknownHostException; For more details see:  http://wiki.apache.org/hadoop/UnknownHost
	at sun.reflect.GeneratedConstructorAccessor22.newInstance(Unknown Source)
	at sun.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)
	at java.lang.reflect.Constructor.newInstance(Constructor.java:526)
	at org.apache.hadoop.net.NetUtils.wrapWithMessage(NetUtils.java:783)
	at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:742)
	at org.apache.hadoop.ipc.Client$Connection.<init>(Client.java:400)
	at org.apache.hadoop.ipc.Client.getConnection(Client.java:1452)
	at org.apache.hadoop.ipc.Client.call(Client.java:1381)
	at org.apache.hadoop.ipc.Client.call(Client.java:1363)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
	... 16 more
Caused by: java.net.UnknownHostException
	... 21 more
14/12/19 09:25:19 ERROR examples.OrderedWordCount: Error occurred when submitting/running DAGs
java.lang.RuntimeException: TezSession has already shutdown
	at org.apache.tez.mapreduce.examples.OrderedWordCount.waitForTezSessionReady(OrderedWordCount.java:540)
	at org.apache.tez.mapreduce.examples.OrderedWordCount.main(OrderedWordCount.java:461)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:145)
	at org.apache.tez.mapreduce.examples.ExampleDriver.main(ExampleDriver.java:88)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:212)
14/12/19 09:25:19 INFO examples.OrderedWordCount: Shutting down session
14/12/19 09:25:19 INFO client.TezSession: Shutting down Tez Session, sessionName=OrderedWordCountSession, applicationId=application\_1418977790315\_0016
14/12/19 09:25:19 INFO client.TezSession: Failed to shutdown Tez Session via proxy
org.apache.tez.dag.api.SessionNotRunning: Application not running, applicationId=application\_1418977790315\_0016, yarnApplicationState=FINISHED, finalApplicationStatus=SUCCEEDED, trackingUrl=http://headnode0.humb-tez1-ssh.d5.internal.cloudapp.net:8088/proxy/application\_1418977790315\_0016/A
	at org.apache.tez.client.TezClientUtils.getSessionAMProxy(TezClientUtils.java:733)
	at org.apache.tez.client.TezSession.stop(TezSession.java:281)
	at org.apache.tez.mapreduce.examples.OrderedWordCount.main(OrderedWordCount.java:524)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:145)
	at org.apache.tez.mapreduce.examples.ExampleDriver.main(ExampleDriver.java:88)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:212)
14/12/19 09:25:19 INFO client.TezSession: Could not connect to AM, killing session via YARN, sessionName=OrderedWordCountSession, applicationId=application\_1418977790315\_0016
14/12/19 09:25:19 INFO impl.YarnClientImpl: Killed application application\_1418977790315\_0016
java.lang.RuntimeException: TezSession has already shutdown
	at org.apache.tez.mapreduce.examples.OrderedWordCount.waitForTezSessionReady(OrderedWordCount.java:540)
	at org.apache.tez.mapreduce.examples.OrderedWordCount.main(OrderedWordCount.java:461)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:145)
	at org.apache.tez.mapreduce.examples.ExampleDriver.main(ExampleDriver.java:88)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:212)

{code} 

Contents of /etc/hosts are:
{code}
127.0.0.1 localhost

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
{code}

and contents of resolv.conf are:
{code}
# Dynamic resolv.conf(5) file for glibc resolver(3) generated by resolvconf(8)
#     DO NOT EDIT THIS FILE BY HAND -- YOUR CHANGES WILL BE OVERWRITTEN
nameserver 168.63.129.16
search humb-tez1-ssh.d5.internal.cloudapp.net
{code}


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

syslog\_attempt\_1420000126204\_0201\_1\_01\_000034\_0:2015-01-07 02:05:48,332 INFO [fetcher [Map\_1] #2] orderedgrouped.MergeManager: Patch..usedMemory=1551867234, memoryLimit=1073741824, commitMemory=883028388, mergeThreshold=708669632  <<=== InMemoryMerge would be started in this case as commitMemory >= mergeThreshold

syslog\_attempt\_1420000126204\_0201\_1\_01\_000034\_0:2015-01-07 02:05:52,900 INFO [fetcher [Map\_1] #2] orderedgrouped.MergeManager: Patch..usedMemory=1273349784, memoryLimit=1073741824, commitMemory=347296632, mergeThreshold=708669632 <<=== InMemoryMerge would *NOT* be started in this case as commitMemory < mergeThreshold.  But the usedMemory is higher than memoryLimit.  Fetchers would keep waiting indefinitely until memory is released. InMemoryMerge will not kick in and not release memory.

syslog\_attempt\_1420000126204\_0201\_1\_01\_000034\_0:2015-01-07 02:05:53,163 INFO [fetcher [Map\_1] #1] orderedgrouped.MergeManager: Patch..usedMemory=1191994052, memoryLimit=1073741824, commitMemory=523155206, mergeThreshold=708669632 <<=== InMemoryMerge would *NOT* be started in this case as commitMemory < mergeThreshold.  But the usedMemory is higher than memoryLimit.  Fetchers would keep waiting indefinitely until memory is released.  InMemoryMerge will not kick in and not release memory.
{code}

In MergeManager, in memory merging is invoked under the following condition
{code}
if (!inMemoryMerger.isInProgress() && commitMemory >= mergeThreshold)
{code}


Attaching the sample hive command just for reference
{code}
$HIVE\_HOME/bin/hive -hiveconf tez.runtime.io.sort.factor=200 --hiveconf hive.tez.auto.reducer.parallelism=false --hiveconf tez.am.heartbeat.interval-ms.max=20 --hiveconf tez.runtime.io.sort.mb=1200 --hiveconf tez.runtime.sort.threads=2 --hiveconf hive.tez.container.size=4096 --hiveconf tez.runtime.shuffle.memory-to-memory.enable=true --hiveconf tez.runtime.shuffle.memory-to-memory.segments=4

create table testData as select ss\_sold\_date\_sk,ss\_sold\_time\_sk,ss\_item\_sk,ss\_customer\_sk,ss\_quantity,ss\_sold\_date from store\_sales distribute by ss\_sold\_date;
{code}


---

* [TEZ-1895](https://issues.apache.org/jira/browse/TEZ-1895) | *Major* | **Vertex reRunning should decrease successfulMembers of VertexGroupInfo**

Vertex reRunning should decrease successfulMembers of VertexGroupInfo, otherwise commit may happen when vertex is still in rerunning.


---

* [TEZ-1893](https://issues.apache.org/jira/browse/TEZ-1893) | *Major* | **Verify invalid -1 parallelism in DAG.verify()**

{code}
          throw new TezUncheckedException(vertex.getLogIdentifier() +
          " has -1 tasks but does not have input initializers, " +
          "1-1 uninited sources or custom vertex manager to set it at runtime");
{code}


IMO, for this kind of verification we could do it in client side (DAG.verify)

The following are the message on the client side, the reason that Client could not get the real status of DAG is that Tez AM is killed due to this vertex init error
{code}
19:25:33,716 - Thread( main) - (RMProxy.java:98) - Connecting to ResourceManager at /0.0.0.0:8032
19:25:33,717 - Thread( main) - (AHSProxy.java:42) - Connecting to Application History server at /0.0.0.0:10200
19:25:34,724 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 0 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:35,725 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 1 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:36,726 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 2 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:36,846 - Thread( main) - (DAGClientImpl.java:463) - DAG initialized: CurrentState=Running
19:25:38,351 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 0 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:39,352 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 1 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:40,354 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 2 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:41,356 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 3 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:42,357 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 4 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:43,358 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 5 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:44,359 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 6 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:45,360 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 7 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:46,361 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 8 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:47,362 - Thread( main) - (Client.java:858) - Retrying connect to server: localhost/127.0.0.1:6000. Already tried 9 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=10, sleepTime=1000 MILLISECONDS)
19:25:47,369 - Thread( main) - (DAGClientImpl.java:463) - DAG completed. FinalState=FAILED
19:25:47,369 - Thread( main) - (TezWordCount.java:203) - status=FAILED, progress=null, diagnostics=Session stats:submittedDAGs=0, successfulDAGs=0, failedDAGs=0, killedDAGs=0
, counters=null
19:25:47,372 - Thread( main) - (TezClient.java:470) - Shutting down Tez Session, sessionName=commonName, applicationId=application\_1420335690331\_0007
19:25:47,374 - Thread( main) - (TezClientUtils.java:838) - Application not running, applicationId=application\_1420335690331\_0007, yarnApplicationState=FINISHED, finalApplicationStatus=FAILED, trackingUrl=http://localhost:8088/proxy/application\_1420335690331\_0007/A, diagnostics=Session stats:submittedDAGs=0, successfulDAGs=0, failedDAGs=0, killedDAGs=0

19:25:47,375 - Thread( main) - (TezClient.java:484) - Failed to shutdown Tez Session via proxy
org.apache.tez.dag.api.SessionNotRunning: Application not running, applicationId=application\_1420335690331\_0007, yarnApplicationState=FINISHED, finalApplicationStatus=FAILED, trackingUrl=http://localhost:8088/proxy/application\_1420335690331\_0007/A, diagnostics=Session stats:submittedDAGs=0, successfulDAGs=0, failedDAGs=0, killedDAGs=0

	at org.apache.tez.client.TezClientUtils.getSessionAMProxy(TezClientUtils.java:839)
	at org.apache.tez.client.TezClient.getSessionAMProxy(TezClient.java:669)
	at org.apache.tez.client.TezClient.stop(TezClient.java:476)
	at com.zjffdu.tez.tutorial.TezWordCount.main(TezWordCount.java:204)
19:25:47,377 - Thread( main) - (TezClient.java:489) - Could not connect to AM, killing session via YARN, sessionName=commonName, applicationId=application\_1420335690331\_0007
19:25:47,381 - Thread( main) - (YarnClientImpl.java:364) - Killed application application\_1420335690331\_0007
{code}


---

* [TEZ-1878](https://issues.apache.org/jira/browse/TEZ-1878) | *Major* | **Task-specific log level override not working in certain conditions**

When trying to use the feature from TEZ-1775: 

tez.task.log.level is set to "DEBUG;org.apache.hadoop.ipc=INFO;org.apache.hadoop.security=INFO;"

Running a job with overrides:

${HADOOP\_COMMON\_HOME}/bin/hadoop jar tez/tez-tests-0.6.0-SNAPSHOT.jar testorderedwordcount -DUSE\_MR\_CONFIGS=false -DINTER\_JOB\_SLEEP\_INTERVAL=10  -Dtez.task-specific.launch.cmd-opts.list="finalreduce[]" -Dtez.task-specific.log.level="INFO"   /tmp/in1 /tmp/out1

In the above case, I see TEZ\_CONTAINER\_LOG\_PARAMS setup incorrectly for the container in which the final reducer tasks were run.


---

* [TEZ-1852](https://issues.apache.org/jira/browse/TEZ-1852) | *Critical* | **WordCount in local mode hangs in shuffle phase**

WordCount hangs at the progress of 50%, it looks like something wrong in the shuffle phase. [~pramachandran], could you take at look at this ? I remember you had fixed this issue before. But now it comes out again, I verify that it works in 0.5.1, but it doesn't work starting from 0.5.2.

here's the log in when I run wordcount
{code}
2014-12-15 12:19:33,874 INFO  [Initializer 1] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:call(434)) - Initialized Output with dest edge: Output
2014-12-15 12:19:33,874 INFO  [TezChild] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:initialize(223)) - All initializers finished
2014-12-15 12:19:33,874 INFO  [TezChild] resources.MemoryDistributor (MemoryDistributor.java:makeInitialAllocations(124)) - Using Allocator class: org.apache.tez.runtime.library.resources.WeightedScalingMemoryDistributor
2014-12-15 12:19:33,874 INFO  [TezChild] resources.WeightedScalingMemoryDistributor (WeightedScalingMemoryDistributor.java:getRequestTypeForClass(197)) - Falling back to RequestType.OTHER for class: org.apache.tez.mapreduce.output.MROutput
2014-12-15 12:19:33,874 INFO  [TezChild] resources.WeightedScalingMemoryDistributor (WeightedScalingMemoryDistributor.java:initialProcessMemoryRequestContext(171)) - ScaleFactor: 1, for type: OTHER
2014-12-15 12:19:33,874 INFO  [TezChild] resources.WeightedScalingMemoryDistributor (WeightedScalingMemoryDistributor.java:initialProcessMemoryRequestContext(171)) - ScaleFactor: 12, for type: SORTED\_MERGED\_INPUT
2014-12-15 12:19:33,875 INFO  [TezChild] resources.WeightedScalingMemoryDistributor (WeightedScalingMemoryDistributor.java:computeReservedFraction(262)) - InitialReservationFraction=0.3, AdditionalReservationFractionForIOs=0.03, finalReserveFractionUsed=0.32999999999999996
2014-12-15 12:19:33,875 INFO  [TezChild] resources.WeightedScalingMemoryDistributor (WeightedScalingMemoryDistributor.java:assignMemory(126)) - Scaling Requests. NumRequests: 2, numScaledRequests: 13, TotalRequested: 859255552, TotalRequestedScaled: 7.931589710769231E8, TotalJVMHeap: 954728448, TotalAvailable: 639668060, TotalRequested/TotalJVMHeap:0.90
2014-12-15 12:19:33,875 INFO  [TezChild] resources.MemoryDistributor (MemoryDistributor.java:makeInitialAllocations(138)) - Informing: OUTPUT, Output, org.apache.tez.mapreduce.output.MROutput: requested=0, allocated=0
2014-12-15 12:19:33,875 INFO  [TezChild] resources.MemoryDistributor (MemoryDistributor.java:makeInitialAllocations(138)) - Informing: INPUT, Tokenizer, org.apache.tez.runtime.library.input.OrderedGroupedKVInput: requested=859255552, allocated=639668060
2014-12-15 12:19:33,875 INFO  [TezChild] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:initialize(245)) - Starting Inputs/Outputs
2014-12-15 12:19:33,875 INFO  [TezChild] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:initialize(258)) - Input: Tokenizer being auto started by the framework. Subsequent instances will not be auto-started
2014-12-15 12:19:33,875 INFO  [Initializer 0] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:call(402)) - Starting Input with src edge: Tokenizer
2014-12-15 12:19:33,875 INFO  [TezChild] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:initialize(279)) - Num IOs determined for AutoStart: 1
2014-12-15 12:19:33,875 INFO  [TezChild] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:initialize(281)) - Waiting for 1 IOs to start
2014-12-15 12:19:33,882 INFO  [Initializer 0] common.TezRuntimeUtils (TezRuntimeUtils.java:instantiateCombiner(65)) - No combiner specified via tez.runtime.combiner.class. Combiner will not be used
2014-12-15 12:19:33,883 INFO  [Initializer 0] orderedgrouped.Shuffle (Shuffle.java:<init>(179)) - Shuffle assigned with 1 inputs, codec: NoneifileReadAhead: true
2014-12-15 12:19:33,886 INFO  [Initializer 0] orderedgrouped.ShuffleScheduler (ShuffleScheduler.java:<init>(150)) - ShuffleScheduler running for sourceVertex: Tokenizer with configuration: maxFetchFailuresBeforeReporting=5, reportReadErrorImmediately=true, maxFailedUniqueFetches=1, abortFailureLimit=30, maxMapRuntime=0
2014-12-15 12:19:33,887 INFO  [Initializer 0] orderedgrouped.MergeManager (MergeManager.java:<init>(221)) - InitialRequest: ShuffleMem=859255552, postMergeMem=0, RuntimeTotalAvailable=639668060. Updated to: ShuffleMem=639668060, postMergeMem: 0
2014-12-15 12:19:33,887 INFO  [Initializer 0] orderedgrouped.MergeManager (MergeManager.java:<init>(252)) - MergerManager: memoryLimit=639668060, maxSingleShuffleLimit=159917008, mergeThreshold=575701184, ioSortFactor=100, memToMemMergeOutputsThreshold=100
2014-12-15 12:19:33,890 INFO  [Initializer 0] orderedgrouped.Shuffle (Shuffle.java:<init>(226)) - Num fetchers being started: 1
2014-12-15 12:19:33,891 INFO  [Initializer 0] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:call(404)) - Started Input with src edge: Tokenizer
2014-12-15 12:19:33,891 INFO  [TezChild] runtime.LogicalIOProcessorRuntimeTask (LogicalIOProcessorRuntimeTask.java:initialize(294)) - AutoStartComplete
2014-12-15 12:19:33,891 INFO  [TezChild] task.TezTaskRunner (TezTaskRunner.java:run(175)) - Running task, taskAttemptId=attempt\_1418617172198\_0001\_1\_01\_000000\_0
2014-12-15 12:19:33,891 INFO  [TezTaskEventRouter[attempt\_1418617172198\_0001\_1\_01\_000000\_0]] orderedgrouped.ShuffleInputEventHandlerOrderedGrouped (ShuffleInputEventHandlerOrderedGrouped.java:processDataMovementEvent(83)) - DME srcIdx: 0, targetIdx: 0, attemptNum: 0, payload: [host: jzhangMBPr.local, port: 0, pathComponent: attempt\_1418617172198\_0001\_1\_00\_000000\_0\_10003, runDuration: 327458, ]
2014-12-15 12:19:34,311 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - DAG: State: RUNNING Progress: 50% TotalTasks: 2 Succeeded: 1 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:34,312 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Tokenizer Progress: 100% TotalTasks: 1 Succeeded: 1 Running: 0 Failed: 0 Killed: 0
2014-12-15 12:19:34,313 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Summation Progress: 0% TotalTasks: 1 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:39,330 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - DAG: State: RUNNING Progress: 50% TotalTasks: 2 Succeeded: 1 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:39,331 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Tokenizer Progress: 100% TotalTasks: 1 Succeeded: 1 Running: 0 Failed: 0 Killed: 0
2014-12-15 12:19:39,331 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Summation Progress: 0% TotalTasks: 1 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:44,348 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - DAG: State: RUNNING Progress: 50% TotalTasks: 2 Succeeded: 1 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:44,349 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Tokenizer Progress: 100% TotalTasks: 1 Succeeded: 1 Running: 0 Failed: 0 Killed: 0
2014-12-15 12:19:44,350 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Summation Progress: 0% TotalTasks: 1 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:49,365 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - DAG: State: RUNNING Progress: 50% TotalTasks: 2 Succeeded: 1 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:49,367 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Tokenizer Progress: 100% TotalTasks: 1 Succeeded: 1 Running: 0 Failed: 0 Killed: 0
2014-12-15 12:19:49,369 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Summation Progress: 0% TotalTasks: 1 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:54,388 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - DAG: State: RUNNING Progress: 50% TotalTasks: 2 Succeeded: 1 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:54,390 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Tokenizer Progress: 100% TotalTasks: 1 Succeeded: 1 Running: 0 Failed: 0 Killed: 0
2014-12-15 12:19:54,392 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - 	VertexStatus: VertexName: Summation Progress: 0% TotalTasks: 1 Succeeded: 0 Running: 1 Failed: 0 Killed: 0
2014-12-15 12:19:59,406 INFO  [main] client.DAGClientImpl (DAGClientImpl.java:log(463)) - DAG: State: RUNNING Progress: 50% TotalTasks: 2 Succeeded: 1 Running: 1 Failed: 0 Killed: 0
{code}



You can reproduce this by adding these 3 lines of code in WordCount
{code}
    tezConf.setBoolean(TezConfiguration.TEZ\_LOCAL\_MODE, true);
    tezConf.set("fs.defaultFS", "file:///");
    tezConf.setBoolean(TezRuntimeConfiguration.TEZ\_RUNTIME\_OPTIMIZE\_LOCAL\_FETCH, true);
{code}


---

* [TEZ-1851](https://issues.apache.org/jira/browse/TEZ-1851) | *Critical* | **FileSystem counters do not differentiate between different FileSystems**

I checked hadoop counters after running a hive query on tez. The logs show two counters for BYTES\_READ but does not differentiate between them. Here is the log line for counters
{code}
2014-12-12 15:17:10,102 INFO [AsyncDispatcher event handler] history.HistoryEventHandler: [HISTORY][DAG:dag\_1418425019273\_0003\_1][Event:DAG\_FINISHED]: dagId=dag\_1418425019273\_0003\_1, startTime=1418426223988, finishTime=1418426230084, timeTaken=6096, status=SUCCEEDED, diagnostics=, counters=Counters: 49, org.apache.tez.common.counters.DAGCounter, NUM\_SUCCEEDED\_TASKS=7, TOTAL\_LAUNCHED\_TASKS=7, DATA\_LOCAL\_TASKS=6, File System Counters, BYTES\_READ=250, BYTES\_WRITTEN=358, READ\_OPS=0, LARGE\_READ\_OPS=0, WRITE\_OPS=0, BYTES\_READ=7918626, BYTES\_WRITTEN=8, READ\_OPS=38, LARGE\_READ\_OPS=0, WRITE\_OPS=2, 
{code}


---

* [TEZ-1836](https://issues.apache.org/jira/browse/TEZ-1836) | *Major* | **Provide better error messages when tez.runtime.io.sort.mb is wrongly configured**

For tez.runtime.io.sort.mb=3000, following error message is thrown
>>>
info=[Error: Failure while running task:java.lang.RuntimeException: java.io.IOException: Invalid "tez.runtime.io.sort.mb": 3000
>>>

This should mention the range of valid configuration for "tez.runtime.io.sort.mb" (1 to 2047)


For tez.runtime.io.sort.mb=0, following error message is thrown
>>>>
info=[Error: Failure while running task:java.lang.IllegalArgumentException: io.sort.mb should be larger than 0
        at com.google.common.base.Preconditions.checkArgument(Preconditions.java:88)
        at org.apache.tez.runtime.library.common.sort.impl.ExternalSorter.getInitialMemoryRequirement(ExternalSorter.java:289)
>>>>

This should mention "tez.runtime.io.sort.mb" and not "io.sort.mb".


---

* [TEZ-1800](https://issues.apache.org/jira/browse/TEZ-1800) | *Major* | **Integer overflow in ExternalSorter.getInitialMemoryRequirement()**

When trying to implement support for tez.runtime.io.sort.mb > 2 GB in pipelinedsorter, I encountered integer overflow exception in ExternalSorter.

Exception thrown is given below.

{code}
], TaskAttempt 3 failed, info=[Error: Failure while running task:java.lang.IllegalArgumentException
        at com.google.common.base.Preconditions.checkArgument(Preconditions.java:72)
        at org.apache.tez.runtime.common.resources.MemoryDistributor.registerRequest(MemoryDistributor.java:158)
        at org.apache.tez.runtime.common.resources.MemoryDistributor.requestMemory(MemoryDistributor.java:97)
        at org.apache.tez.runtime.api.impl.TezTaskContextImpl.requestInitialMemory(TezTaskContextImpl.java:192)
        at org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput.initialize(OrderedPartitionedKVOutput.java:95)
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.call(LogicalIOProcessorRuntimeTask.java:430)
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$InitializeOutputCallable.call(LogicalIOProcessorRuntimeTask.java:409)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.Executors$RunnableAdapter.call(Executors.java:511)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)

{code}

Actual place where the integer overflow happens is in ExternalSorter.getInitialMemoryRequirement()
{code}
int initialMemRequestMb = 
        conf.getInt(
            TezRuntimeConfiguration.TEZ\_RUNTIME\_IO\_SORT\_MB, 
            TezRuntimeConfiguration.TEZ\_RUNTIME\_IO\_SORT\_MB\_DEFAULT);
long reqBytes = initialMemRequestMb << 20;
{code}


---

* [TEZ-1775](https://issues.apache.org/jira/browse/TEZ-1775) | *Major* | **Allow setting log level per logger**

Currently, it's fairly difficult to configure logging beyond a generic log level. It'll be useful to have some control over which components need to be logged at a level / should be avoided. The IPC layer, for example, generates a lot of (multi-line) noise - which isn't useful when looking for Tez logs only.


---

* [TEZ-1642](https://issues.apache.org/jira/browse/TEZ-1642) | *Major* | **TestAMRecovery sometimes fail**

TestAMRecovery fails sometimes on testVertexPartiallyFinished\_XXX.  
The scenario is that we'd like kill AM when vertex is partially finished ( with 2 tasks, task\_0 is finished and task\_1 is running). When in recovery, task\_0 should not rerun and task\_1 should rerun. ( We use the recovery log(TaskAttemptFinishedEvent) to judge whether task is rerun)
Currently, using VertexManager.onSourceTaskCompleted to control when to kill AM, but it is not perfect.  VertexManager.onSourceTaskCompleted is not invoked at the moment task attempt is finished ( TaskAttempt send event to Task to tell TaskAttempt is finsihed, and then Task send event to Vertex to trigger VM.onSourceTaskCompleted) 
The following case is possible: task\_0 finished -> task\_1 finished -> VM.onSourceTaskCompleted -> VM.onSourceTaskCompleted
In this case, we will take it as partially completed in the first VM.onSourceTaskCompleted, but actually the vertex is fully completed.


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

* [TEZ-900](https://issues.apache.org/jira/browse/TEZ-900) | *Major* | **Confusing message for incorrect queue for some tez examples**

The error message of at least orderedwordcount with non-existent queue is very difficult as compared to mrrsleep which is very intuitive.



