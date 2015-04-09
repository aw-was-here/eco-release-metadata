
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
#  0.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-1001](https://issues.apache.org/jira/browse/TEZ-1001) | *Major* | **Remove jar file added by TEZ-989**

TEZ-989 added a jar file to the repo for a unit test. Don't think that is valid when trying to create a release.


---

* [TEZ-1000](https://issues.apache.org/jira/browse/TEZ-1000) | *Major* | **Add a placeholder partitioned unsorted output**

This is primarily to add a functional class which can be used by consumers when TEZ-661 functionality is required. 
For now, the plan is to extend OnFileSortedOutput. TEZ-661 will add a proper implementation for this.


---

* [TEZ-983](https://issues.apache.org/jira/browse/TEZ-983) | *Major* | **Support a helper function to extract required additional tokens from a file**

Oozie, etc that use Hive/Pig indirectly provide tokens to downstream applications by writing them into a file and expect the downstream application to read and use them.

Support a helper function for the above.


---

* [TEZ-976](https://issues.apache.org/jira/browse/TEZ-976) | *Major* | **WordCount example does not handle -D\<param\> args**

/usr/lib/hadoop/bin/hadoop jar /usr/lib/tez/tez-mapreduce-examples-*.jar wordcount "-Dmapreduce.framework.name=yarn"   /mydir1/RTW /mydir2
Usage:  wordcount <in1> <out1>

The reason is its code does not ignore hadoop/MR argument.
{code}
public static void main(String[] args) throws Exception {
    if ((args.length%2) != 0) {
      printUsage();
      System.exit(2);
    }
    WordCount job = new WordCount();
    job.run(args[0], args[1], null);
  }
{code}


---

* [TEZ-972](https://issues.apache.org/jira/browse/TEZ-972) | *Major* | **Shuffle Phase - optimize memory usage of empty partition data in DataMovementEvent**

Empty partition details are stored in byte[] in compressed format and sent via DataMovementEvent in shuffle phase.  Quick standalone tests reveals that BitSet would be more efficient than compressing the byte[].  

PartitionSize=1 , BitSetSize=1 , CompressedBitSetSize=9 , NormalByteArrayCompressed=9
PartitionSize=101 , BitSetSize=13 , CompressedBitSetSize=22 , NormalByteArrayCompressed=42
PartitionSize=201 , BitSetSize=26 , CompressedBitSetSize=37 , NormalByteArrayCompressed=62
PartitionSize=301 , BitSetSize=38 , CompressedBitSetSize=49 , NormalByteArrayCompressed=76
..
PartitionSize=1001 , BitSetSize=126 , CompressedBitSetSize=137 , NormalByteArrayCompressed=197
..
PartitionSize=2001 , BitSetSize=251 , CompressedBitSetSize=262 , NormalByteArrayCompressed=374
PartitionSize=4001 , BitSetSize=501 , CompressedBitSetSize=512 , NormalByteArrayCompressed=686
PartitionSize=8001 , BitSetSize=1001 , CompressedBitSetSize=1012 , NormalByteArrayCompressed=1330
PartitionSize=16001 , BitSetSize=2001 , CompressedBitSetSize=1979 , NormalByteArrayCompressed=2569
PartitionSize=32001 , BitSetSize=4001 , CompressedBitSetSize=3885 , NormalByteArrayCompressed=5000
-This is based on considering random bit positions as empty partitions.

It is not possible to directly use JDK 1.6's BitSet directly as it does not support valueOf, toByteArray() functions.  Suggestion is to have Tez specific BitSet (until Tez moves to JDK 1.7) and make the compression as a job configuration.


---

* [TEZ-971](https://issues.apache.org/jira/browse/TEZ-971) | *Critical* | **Shuffle should report errors early**

Currently, shuffle requires a getNext / isAvailable method to be called before it reports exceptions. This needs to be done early.
Related TEZ-919, but planning on fixing this first.


---

* [TEZ-969](https://issues.apache.org/jira/browse/TEZ-969) | *Critical* | **Hive on Tez job gets stuck as reducers makes no progress**

In our nightlies we saw that hive queries can some times get stuck and make no progress.


---

* [TEZ-966](https://issues.apache.org/jira/browse/TEZ-966) | *Major* | **Tez AM has invalid state transition error when datanode is bad.**

I found AM has an invalid event error when AM complains datanode is bad.

{code}
java.net.SocketTimeoutException: 65000 millis timeout while waiting for channel to be ready for read. ch : java.nio.channels.SocketChannel[connected local=/172.18.145.215:35766 remote=/172.18.145.215:50010]
	at org.apache.hadoop.net.SocketIOWithTimeout.doIO(SocketIOWithTimeout.java:164)
	at org.apache.hadoop.net.SocketInputStream.read(SocketInputStream.java:161)
	at org.apache.hadoop.net.SocketInputStream.read(SocketInputStream.java:131)
	at org.apache.hadoop.net.SocketInputStream.read(SocketInputStream.java:118)
	at java.io.FilterInputStream.read(FilterInputStream.java:83)
	at java.io.FilterInputStream.read(FilterInputStream.java:83)
	at org.apache.hadoop.hdfs.protocolPB.PBHelper.vintPrefixed(PBHelper.java:1985)
	at org.apache.hadoop.hdfs.protocol.datatransfer.PipelineAck.readFields(PipelineAck.java:176)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer$ResponseProcessor.run(DFSOutputStream.java:796)
2014-03-20 08:27:09,529 WARN [AsyncDispatcher event handler] org.apache.hadoop.hdfs.DFSClient: Error while syncing
java.io.IOException: All datanodes 172.18.145.215:50010 are bad. Aborting...
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.setupPipelineForAppendOrRecovery(DFSOutputStream.java:1127)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.processDatanodeError(DFSOutputStream.java:924)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.run(DFSOutputStream.java:486)
2014-03-20 08:27:09,530 WARN [AsyncDispatcher event handler] org.apache.tez.dag.history.recovery.RecoveryService: Error handling summary event, eventType=VERTEX\_FINISHED
java.io.IOException: All datanodes 172.18.145.215:50010 are bad. Aborting...
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.setupPipelineForAppendOrRecovery(DFSOutputStream.java:1127)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.processDatanodeError(DFSOutputStream.java:924)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.run(DFSOutputStream.java:486)
2014-03-20 08:27:09,530 ERROR [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Failed to send vertex finished event to recovery
java.io.IOException: All datanodes 172.18.145.215:50010 are bad. Aborting...
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.setupPipelineForAppendOrRecovery(DFSOutputStream.java:1127)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.processDatanodeError(DFSOutputStream.java:924)
	at org.apache.hadoop.hdfs.DFSOutputStream$DataStreamer.run(DFSOutputStream.java:486)
2014-03-20 08:27:09,531 ERROR [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Can't handle Invalid event V\_TASK\_COMPLETED on vertex initialmap with vertexId vertex\_1395294589125\_0141\_1\_00 at current state RUNNING
org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_TASK\_COMPLETED at RUNNING
	at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:388)
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1202)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:155)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1549)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1535)
	at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:173)
	at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:106)
	at java.lang.Thread.run(Thread.java:722)
{code}


---

* [TEZ-964](https://issues.apache.org/jira/browse/TEZ-964) | *Critical* | **Flaky test: TestAMNodeMap.testNodeSelfBlacklist**

expected:<N\_IGNORE\_BLACKLISTING\_DISABLED> but was:<S\_NODE\_BLACKLISTED>
Stacktrace

java.lang.AssertionError: expected:<N\_IGNORE\_BLACKLISTING\_DISABLED> but was:<S\_NODE\_BLACKLISTED>
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.failNotEquals(Assert.java:743)
	at org.junit.Assert.assertEquals(Assert.java:118)
	at org.junit.Assert.assertEquals(Assert.java:144)
	at org.apache.tez.dag.app.rm.node.TestAMNodeMap.testNodeSelfBlacklist(TestAMNodeMap.java:223)


---

* [TEZ-958](https://issues.apache.org/jira/browse/TEZ-958) | *Minor* | **Increase sleeps in TestContainerReuse to fix flaky tests**

Stop-gap fix to investigate whether the failures are timing related.


---

* [TEZ-955](https://issues.apache.org/jira/browse/TEZ-955) | *Major* | **Tez should close inputs after calling processor's close**

Hive flushes the processor pipeline in the close method. That might require reading additional input. Apparently the inputs are already closed in that case - which leads to a race condition where sometimes the reducer just hangs (there should also be an exception when read is called on a closed input).

This is the stack trace you'll see when that happens:

Thread 30938: (state = BLOCKED)
sun.misc.Unsafe.park(boolean, long) @bci=0 (Interpreted frame)
java.util.concurrent.locks.LockSupport.park(java.lang.Object) @bci=14, line=186 (Interpreted frame)
java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await() @bci=42, line=2043 (Interpreted frame)
java.util.concurrent.LinkedBlockingQueue.take() @bci=29, line=442 (Interpreted frame)
org.apache.tez.runtime.library.shuffle.common.impl.ShuffleManager.getNextInput() @bci=67, line=608 (Interpreted frame)
org.apache.tez.runtime.library.common.readers.ShuffledUnorderedKVReader.moveToNextInput() @bci=26, line=172 (Interpreted frame)
org.apache.tez.runtime.library.common.readers.ShuffledUnorderedKVReader.next() @bci=30, line=113 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.tez.HashTableLoader.load(org.apache.hadoop.hive.ql.exec.persistence.MapJoinTableContainer[], org.apache.hadoop.hive.ql.exec.persistence.MapJoinTableContainerSerDe[]) @bci=158, line=99 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.MapJoinOperator.loadHashTable() @bci=78, line=150 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.MapJoinOperator.processOp(java.lang.Object, int) @bci=12, line=197 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=791 (Compiled frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.internalForward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=3, line=638 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.genAllOneUniqueJoinObject() @bci=109, line=670 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.checkAndGenObject() @bci=455, line=754 (Compiled frame)
org.apache.hadoop.hive.ql.exec.MapJoinOperator.processOp(java.lang.Object, int) @bci=251, line=229 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=791 (Compiled frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.internalForward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=3, line=638 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.genAllOneUniqueJoinObject() @bci=109, line=670 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.checkAndGenObject() @bci=455, line=754 (Compiled frame)
org.apache.hadoop.hive.ql.exec.MapJoinOperator.processOp(java.lang.Object, int) @bci=251, line=229 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=791 (Compiled frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.internalForward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=3, line=638 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.genAllOneUniqueJoinObject() @bci=109, line=670 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.checkAndGenObject() @bci=455, line=754 (Compiled frame)
org.apache.hadoop.hive.ql.exec.MapJoinOperator.processOp(java.lang.Object, int) @bci=251, line=229 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=791 (Compiled frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.internalForward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=3, line=638 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.genAllOneUniqueJoinObject() @bci=109, line=670 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.checkAndGenObject() @bci=455, line=754 (Compiled frame)
org.apache.hadoop.hive.ql.exec.MapJoinOperator.processOp(java.lang.Object, int) @bci=251, line=229 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=791 (Compiled frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.internalForward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=3, line=638 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.genAllOneUniqueJoinObject() @bci=109, line=670 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.CommonJoinOperator.checkAndGenObject() @bci=455, line=754 (Compiled frame)
org.apache.hadoop.hive.ql.exec.MapJoinOperator.processOp(java.lang.Object, int) @bci=251, line=229 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=791 (Compiled frame)
org.apache.hadoop.hive.ql.exec.SelectOperator.processOp(java.lang.Object, int) @bci=121, line=87 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.forward(java.lang.Object, org.apache.hadoop.hive.serde2.objectinspector.ObjectInspector) @bci=63, line=791 (Compiled frame)
org.apache.hadoop.hive.ql.exec.GroupByOperator.forward(java.lang.Object[], org.apache.hadoop.hive.ql.udf.generic.GenericUDAFEvaluator$AggregationBuffer[]) @bci=97, line=1064 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.GroupByOperator.flush() @bci=143, line=1089 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.GroupByOperator.closeOp(boolean) @bci=125, line=1138 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.Operator.close(boolean) @bci=60, line=575 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.tez.ReduceRecordProcessor.close() @bci=65, line=348 (Interpreted frame)
org.apache.hadoop.hive.ql.exec.tez.TezProcessor.close() @bci=11, line=74 (Interpreted frame)
org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.close() @bci=130, line=325 (Interpreted frame)
org.apache.hadoop.mapred.YarnTezDagChild$4.run() @bci=112, line=529 (Interpreted frame)
java.security.AccessController.doPrivileged(java.security.PrivilegedExceptionAction, java.security.AccessControlContext) @bci=0 (Interpreted frame)
javax.security.auth.Subject.doAs(javax.security.auth.Subject, java.security.PrivilegedExceptionAction) @bci=42, line=415 (Interpreted frame)
org.apache.hadoop.security.UserGroupInformation.doAs(java.security.PrivilegedExceptionAction) @bci=14, line=1548 (Interpreted frame)
org.apache.hadoop.mapred.YarnTezDagChild.main(java.lang.String[]) @bci=1139, line=515 (Interpreted frame)


---

* [TEZ-949](https://issues.apache.org/jira/browse/TEZ-949) | *Major* | **Handle Session Tokens for Recovery**

The tokens used by Fetchers to connect to the ShuffleHandler are generated in the AM. Once an AM is restarted, the token will be regenerated - and new Reduces will not be able to fetch output from previous Mappers.
Similar to MAPREDUCE-5042.


---

* [TEZ-948](https://issues.apache.org/jira/browse/TEZ-948) | *Major* | **Log counters at the end of Task execution**

Useful to have counters for the specific task in the task logs itself while debugging.


---

* [TEZ-944](https://issues.apache.org/jira/browse/TEZ-944) | *Major* | **Tez Job gets "Could not load native gpl library" Error**

Tez jobs with session are getting 'Could not load native gpl library' Error.

{noformat}
2014-03-18 00:59:28,746 ERROR [InputInitializer [initialmap] #0] com.hadoop.compression.lzo.GPLNativeCodeLoader: Could not load native gpl library
java.lang.UnsatisfiedLinkError: no gplcompression in java.library.path
        at java.lang.ClassLoader.loadLibrary(ClassLoader.java:1738)
        at java.lang.Runtime.loadLibrary0(Runtime.java:823)
        at java.lang.System.loadLibrary(System.java:1028)
        at com.hadoop.compression.lzo.GPLNativeCodeLoader.<clinit>(GPLNativeCodeLoader.java:32)
        at com.hadoop.compression.lzo.LzoCodec.<clinit>(LzoCodec.java:71)
        at java.lang.Class.forName0(Native Method)
        at java.lang.Class.forName(Class.java:247)
        at org.apache.hadoop.conf.Configuration.getClassByNameOrNull(Configuration.java:1834)
        at org.apache.hadoop.conf.Configuration.getClassByName(Configuration.java:1799)
        at org.apache.hadoop.io.compress.CompressionCodecFactory.getCodecClasses(CompressionCodecFactory.java:128)
        at org.apache.hadoop.io.compress.CompressionCodecFactory.<init>(CompressionCodecFactory.java:175)
        at org.apache.hadoop.mapreduce.lib.input.TextInputFormat.isSplitable(TextInputFormat.java:58)
        at org.apache.hadoop.mapreduce.lib.input.FileInputFormat.getSplits(FileInputFormat.java:352)
        at org.apache.hadoop.mapreduce.split.TezGroupedSplitsInputFormat.getSplits(TezGroupedSplitsInputFormat.java:102)
        at org.apache.tez.mapreduce.hadoop.MRHelpers.generateNewSplits(MRHelpers.java:184)
        at org.apache.tez.mapreduce.common.MRInputAMSplitGenerator.initialize(MRInputAMSplitGenerator.java:115)
        at org.apache.tez.dag.app.dag.RootInputInitializerRunner$InputInitializerCallable$1.run(RootInputInitializerRunner.java:145)
        at org.apache.tez.dag.app.dag.RootInputInitializerRunner$InputInitializerCallable$1.run(RootInputInitializerRunner.java:138)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:396)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
        at org.apache.tez.dag.app.dag.RootInputInitializerRunner$InputInitializerCallable.call(RootInputInitializerRunner.java:138)
        at org.apache.tez.dag.app.dag.RootInputInitializerRunner$InputInitializerCallable.call(RootInputInitializerRunner.java:109)
        at java.util.concurrent.FutureTask$Sync.innerRun(FutureTask.java:303)
        at java.util.concurrent.FutureTask.run(FutureTask.java:138)
        at java.util.concurrent.ThreadPoolExecutor$Worker.runTask(ThreadPoolExecutor.java:886)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:908)
        at java.lang.Thread.run(Thread.java:662)
2014-03-18 00:59:28,750 ERROR [InputInitializer [initialmap] #0] com.hadoop.compression.lzo.LzoCodec: Cannot load native-lzo without native-hadoop
{noformat}

Mapreduce has mapreduce.admin.user.env property set in mapred-site.xml 
{noformat}
<property>
    <name>mapreduce.admin.user.env</name>
    <value>LD\_LIBRARY\_PATH=$HADOOP\_COMMON\_HOME/lib/native:$HADOOP\_COMMON\_HOME/lib/native/`$JAVA\_HOME/bin/java -d32 -version &amp;&gt; /dev/null;if [ $? -eq 0 ]; then echo Linux-i386-32; else echo Linux-amd64-64;fi`</value>
  </property>
{noformat}

Tez do not have any property to manage this.


---

* [TEZ-942](https://issues.apache.org/jira/browse/TEZ-942) | *Trivial* | **Mrrsleep job with only maps fails with 'Illegal output to map'**

Mrr sleep job with only maps is failing with 'Illegal output to map'.

{noformat}
-bash-4.1$ hadoop jar tez-mapreduce-examples.jar mrrsleep -m 10 -ir 0 -r 0 
14/03/16 05:52:08 INFO client.RMProxy: Connecting to ResourceManager at hostname/0.0.0.0:8032
14/03/16 05:52:09 INFO examples.MRRSleepJob: Creating in-mem splits
14/03/16 05:52:09 INFO hadoop.MRHelpers: Generating mapreduce api input splits
14/03/16 05:52:09 INFO hadoop.MRHelpers: NumSplits: 10, SerializedSize: 620
14/03/16 05:52:09 INFO client.TezClient: Submitting DAG to YARN, applicationId=application\_1394838695668\_0023
14/03/16 05:52:09 INFO impl.YarnClientImpl: Submitted application application\_1394838695668\_0023
14/03/16 05:52:09 INFO client.RMProxy: Connecting to ResourceManager at hostname/0.0.0.0:8032
14/03/16 05:52:09 INFO examples.MRRSleepJob: DAG Status: status=SUBMITTED, progress=null, diagnostics=, counters=null
14/03/16 05:52:10 INFO examples.MRRSleepJob: DAG Status: status=SUBMITTED, progress=null, diagnostics=, counters=null
14/03/16 05:52:11 INFO examples.MRRSleepJob: DAG Status: status=SUBMITTED, progress=null, diagnostics=, counters=null
14/03/16 05:52:12 INFO examples.MRRSleepJob: DAG Status: status=SUBMITTED, progress=null, diagnostics=, counters=null
14/03/16 05:52:14 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 0 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:15 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 0 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:16 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 0 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:17 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 1 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:18 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 2 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:19 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:20 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:21 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:22 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:23 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:24 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:25 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:26 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:27 INFO examples.MRRSleepJob: DAG Status: status=RUNNING, progress=TotalTasks: 10 Succeeded: 0 Running: 3 Failed: 0 Killed: 0, diagnostics=, counters=null
14/03/16 05:52:28 INFO examples.MRRSleepJob: DAG Status: status=FAILED, progress=TotalTasks: 10 Succeeded: 0 Running: 0 Failed: 1 Killed: 9, diagnostics=Vertex failed, vertexName=map, vertexId=vertex\_1394838695668\_0023\_1\_00, diagnostics=[Task failed, taskId=task\_1394838695668\_0023\_1\_00\_000001, diagnostics=[AttemptID:attempt\_1394838695668\_0023\_1\_00\_000001\_0 Info:Error: java.io.IOException: Illegal output to map: class org.apache.tez.mapreduce.input.MRInputLegacy
	at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:129)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:306)
	at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:526)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)

Container released by application, AttemptID:attempt\_1394838695668\_0023\_1\_00\_000001\_1 Info:Error: java.io.IOException: Illegal output to map: class org.apache.tez.mapreduce.input.MRInputLegacy
	at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:129)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:306)
	at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:526)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)

Container released by application, AttemptID:attempt\_1394838695668\_0023\_1\_00\_000001\_2 Info:Error: java.io.IOException: Illegal output to map: class org.apache.tez.mapreduce.input.MRInputLegacy
	at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:129)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:306)
	at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:526)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)

Container released by application, AttemptID:attempt\_1394838695668\_0023\_1\_00\_000001\_3 Info:Error: java.io.IOException: Illegal output to map: class org.apache.tez.mapreduce.input.MRInputLegacy
	at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:129)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:306)
	at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:526)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)
], Vertex failed as one or more tasks failed. failedTasks:1]
DAG failed due to vertex failure. failedVertices:1 killedVertices:0, counters=null
{noformat}


---

* [TEZ-940](https://issues.apache.org/jira/browse/TEZ-940) | *Major* | **TaskSchedulerAppCallbackWrapper leaks memory via a CompletionService**

The ExecutorService in TaskSchedulerAppCallbackWrapper uses an ExecutorCompletionService to keep track of submitted tasks and their results.

The difference between the Executor and Completion services is that without calling a take()/poll(), the latter leaks FutureTask objects which are held in memory until shutdown.

This results in a leak, from TaskAllocatedCallable -> TezVertexImpl -> TezDagImpl -> Configuration.

!TaskAllocatedLeak.png!


---

* [TEZ-939](https://issues.apache.org/jira/browse/TEZ-939) | *Critical* | **Fix build break caused by changes in YARN-1824**

YARN-1824 changes the APIs in Apps, which causes the Tez build to break if built against a version other than 2.2 / 2.3.


---

* [TEZ-938](https://issues.apache.org/jira/browse/TEZ-938) | *Major* | **Shuffle Phase - Reduce number of http connections where there is large number of empty partitions**

Lots of TPC queries make thousands of 2 byte reads.  This is due large number of empty partitions.  We need to reduce the number of http calls made in such scenarios.


---

* [TEZ-934](https://issues.apache.org/jira/browse/TEZ-934) | *Major* | **Tez Configuration changes for TezLocalRunner**

To decouple the configuration changes from Tez-684.


---

* [TEZ-933](https://issues.apache.org/jira/browse/TEZ-933) | *Major* | **Race in getting source / destination numTasks on an Edge**

Edges rely on getting properties (specifically numTasks in this case) from the source or destination vertex.

This can end up with an incorrect value being used depending on the state of the vertex - whether the vertex has been initialized, whether the parallelism has been changed etc.

As an example
{code}
edgeManager.getNumSourceTaskPhysicalOutputs(destinationVertex.getTotalTasks(), sourceTaskIndex))
{code}
destinationVertex.getTotalTasks() may be incorrect if the destinationVertex hasn't yet been initialized. Alternately, this value can change based on setParallelism calls.


---

* [TEZ-932](https://issues.apache.org/jira/browse/TEZ-932) | *Major* | **Add a type aware Initial memory distributor**

The current memory scaler has not idea about the requirements of the underlying components (broadcast, shfufle etc). This jira is to add a scaler which can take the types into consideration.


---

* [TEZ-931](https://issues.apache.org/jira/browse/TEZ-931) | *Major* | **DAGHistoryEvent should not be allowed to be sent to Dispatcher/EventHandlers**

With recovery in place, history events are now sent directly to the history event handling layer which in turn can queue them as needed. 

To avoid confusion, these events should not be valid if tried to be passed to to an event handler or dispatcher.


---

* [TEZ-928](https://issues.apache.org/jira/browse/TEZ-928) | *Critical* | **NPE in last app attempt caused by registering for an RM unregister**

{code}
2014-03-12 14:43:11,407 INFO [main] org.apache.hadoop.service.AbstractService: Service org.apache.tez.dag.app.DAGAppMaster failed in state INITED; cause: java.lang.NullPointerException
java.lang.NullPointerException
        at org.apache.tez.dag.app.rm.TaskSchedulerEventHandler.setShouldUnregisterFlag(TaskSchedulerEventHandler.java:555)
        at org.apache.tez.dag.app.DAGAppMaster.serviceInit(DAGAppMaster.java:338)
        at org.apache.hadoop.service.AbstractService.init(AbstractService.java:163)
        at org.apache.tez.dag.app.DAGAppMaster$2.run(DAGAppMaster.java:1737)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:415)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
        at org.apache.tez.dag.app.DAGAppMaster.initAndStartAppMaster(DAGAppMaster.java:1734)
        at org.apache.tez.dag.app.DAGAppMaster.main(DAGAppMaster.java:1602)
{code}


---

* [TEZ-918](https://issues.apache.org/jira/browse/TEZ-918) | *Critical* | **Shuffle can hang if there are intermittent fetch failures**

Post TEZ-902 - if there's a fetch failure, the task could end up hanging - waiting for the specific Input.

Had spoken to [~bikassaha] about this offline while looking at TEZ-902 - another similar issue already exists under the fault tollerance jira, but that occurs rarely and under specific circumstances. 

Will try fixing this tomorrow, otherwise may revert TEZ-902.


---

* [TEZ-915](https://issues.apache.org/jira/browse/TEZ-915) | *Major* | **TaskScheduler can get hung when all headroom is used and it cannot utilize existing new containers**

If there are pending unmatched requests and reused containers then those containers are released to create space for new allocations that may match.

However, if there are pending unmatched requests and new containers then those dont end up being released and the scheduler may hang.

One scenario where this could happen is when we get a pri4 container for a pri4 request. Before we match that, we also get a pri1 request (lets say for failed re-execution). Now the pri1 tasks is the highest pri and we always scheduled that first. However, it may not match the container. If there is no headroom, the RM will not give us a new pr1 container and we will hang.

The above case needs to be handled in the preemption logic. When we release the pri4 container we need to make a new request for that resource in order to ensure that the RM will give it back to us again after it has allocated the pri1 container because currently the RM thinks it has satisfied our initial pri4 request.


---

* [TEZ-911](https://issues.apache.org/jira/browse/TEZ-911) | *Major* | **Re-factor BroadcastShuffle related code to be more generic**

BroadcastShuffleManager should not be linked to Broadcast - it's really just responsible for moving data between the hosts. After that it's up to Broadcast components / others on how this is to be used.


---

* [TEZ-910](https://issues.apache.org/jira/browse/TEZ-910) | *Major* | **Allow ShuffledUnorderedKVInput to work for cases other than broadcast**

This should not be linked to Broadcast in any manner. The current one (linked to Braodcast) restricts srcIndices as a form of error checking.
Required by Hive Bucketed Map Joins.


---

* [TEZ-904](https://issues.apache.org/jira/browse/TEZ-904) | *Major* | **Committer recovery events should be out-of-band**

For now, committer events are part of the same event flow as others. Should be handled out of band to ensure a non-flushed event does not cause problems.


---

* [TEZ-903](https://issues.apache.org/jira/browse/TEZ-903) | *Minor* | **Make MAX\_MAPS\_AT\_ONCE configurable in ShuffleScheduler**

MAX\_MAPS\_AT\_ONCE is set to 20.  Make it as a configurable parameter for tuning and benchmarking.


---

* [TEZ-898](https://issues.apache.org/jira/browse/TEZ-898) | *Major* | **Inner/outer join with 0 maps fail with 'All inputs are expected to ask for memory'**

Inner and outer job operation  with 0 maps fail with 'All inputs are expected to ask for memory' 

Example: 
hadoop  jar /usr/lib/tez/tez-mapreduce-examples.jar join -r 11 -joinOp inner /tmp/Input /tmp/Output

hadoop  jar /usr/lib/tez/tez-mapreduce-examples.jar join -r 11 -joinOp outer /tmp/Input /tmp/Output

===========================================
hadoop  jar /usr/lib/tez/tez-mapreduce-examples.jar join -r 11 -joinOp inner /tmp/input /tmp/output
14/02/26 09:38:15 INFO client.RMProxy: Connecting to ResourceManager at host/10.1.1.1:8032
14/02/26 09:38:15 INFO client.RMProxy: Connecting to ResourceManager at host/10.1.1.1:8032
Job started: Wed Feb 26 09:38:16 UTC 2014
 INFO client.RMProxy: Connecting to ResourceManager at host/10.1.1.1:8032
14/02/26 09:38:16 INFO client.RMProxy: Connecting to ResourceManager at host/10.1.1.1:8032
14/02/26 09:38:16 INFO input.FileInputFormat: Total input paths to process : 0
14/02/26 09:38:17 INFO mapreduce.JobSubmitter: number of splits:0
14/02/26 09:38:17 INFO mapreduce.JobSubmitter: Submitting tokens for job: job\_1393401746744\_0132
14/02/26 09:38:17 INFO client.YARNRunner: Number of stages: 2
14/02/26 09:38:17 INFO client.TezClient: Submitting DAG to YARN, applicationId=application\_1393401746744\_0132
14/02/26 09:38:17 INFO impl.YarnClientImpl: Submitted application application\_1393401746744\_0132
14/02/26 09:38:17 INFO client.RMProxy: Connecting to ResourceManager at host/10.1.1.1:8032
14/02/26 09:38:17 INFO client.RMProxy: Connecting to ResourceManager at host/10.1.1.1:8032
14/02/26 09:38:17 INFO mapreduce.Job: The url to track the job: http://host:8088/proxy/application\_1393401746744\_0132/
14/02/26 09:38:17 INFO mapreduce.Job: Running job: job\_1393401746744\_0132
14/02/26 09:38:22 INFO mapreduce.Job: Job job\_1393401746744\_0132 running in uber mode : false
14/02/26 09:38:22 INFO mapreduce.Job:  map 0% reduce 0%
14/02/26 09:38:33 INFO mapreduce.Job: Job job\_1393401746744\_0132 failed with state FAILED due to: Vertex failed, vertexName=finalreduce, vertexId=vertex\_1393401746744\_0132\_1\_01, diagnostics=[Task failed, taskId=task\_1393401746744\_0132\_1\_01\_000000, diagnostics=[AttemptID:attempt\_1393401746744\_0132\_1\_01\_000000\_0 Info:Error: java.lang.IllegalStateException: All inputs are expected to ask for memory
at com.google.common.base.Preconditions.checkState(Preconditions.java:145)
at org.apache.tez.runtime.common.resources.MemoryDistributor.makeInitialAllocations(MemoryDistributor.java:124)
at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.initialize(LogicalIOProcessorRuntimeTask.java:224)
at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:522)
at java.security.AccessController.doPrivileged(Native Method)
at javax.security.auth.Subject.doAs(Subject.java:396)
at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)

Container released by application, AttemptID:attempt\_1393401746744\_0132\_1\_01\_000000\_1 Info:Error: java.lang.IllegalStateException: All inputs are expected to ask for memory
at com.google.common.base.Preconditions.checkState(Preconditions.java:145)
at org.apache.tez.runtime.common.resources.MemoryDistributor.makeInitialAllocations(MemoryDistributor.java:124)
at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.initialize(LogicalIOProcessorRuntimeTask.java:224)
at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:522)
at java.security.AccessController.doPrivileged(Native Method)
at javax.security.auth.Subject.doAs(Subject.java:396)
at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)

Container released by application, AttemptID:attempt\_1393401746744\_0132\_1\_01\_000000\_2 Info:Error: java.lang.IllegalStateException: All inputs are expected to ask for memory
at com.google.common.base.Preconditions.checkState(Preconditions.java:145)
at org.apache.tez.runtime.common.resources.MemoryDistributor.makeInitialAllocations(MemoryDistributor.java:124)
at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.initialize(LogicalIOProcessorRuntimeTask.java:224)
at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:522)
at java.security.AccessController.doPrivileged(Native Method)
at javax.security.auth.Subject.doAs(Subject.java:396)
at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)

Container released by application, AttemptID:attempt\_1393401746744\_0132\_1\_01\_000000\_3 Info:Error: java.lang.IllegalStateException: All inputs are expected to ask for memory
at com.google.common.base.Preconditions.checkState(Preconditions.java:145)
at org.apache.tez.runtime.common.resources.MemoryDistributor.makeInitialAllocations(MemoryDistributor.java:124)
at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.initialize(LogicalIOProcessorRuntimeTask.java:224)
at org.apache.hadoop.mapred.YarnTezDagChild$4.run(YarnTezDagChild.java:522)
at java.security.AccessController.doPrivileged(Native Method)
at javax.security.auth.Subject.doAs(Subject.java:396)
at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:515)
], Vertex failed as one or more tasks failed. failedTasks:1]. DAG failed due to vertex failure. failedVertices:1 killedVertices:0
14/02/26 09:38:33 INFO mapreduce.Job: Counters: 0
Job ended: Wed Feb 26 09:38:33 UTC 2014
The job took 16 seconds.

===========================================


---

* [TEZ-896](https://issues.apache.org/jira/browse/TEZ-896) | *Major* | **AM Split generation broken on secure clusters when using mapred API**

On secure Hive on Tez, running a simple query fails with the following error:
{noformat}
hive> select count(*) from studenttab10k;
Total jobs = 1
Launching Job 1 out of 1


Status: Running (application id: application\_1393316649566\_0156)

Map 1: -/-	Reducer 2: 0/1
Status: Failed
Vertex failed, vertexName=Map 1, vertexId=vertex\_1393316649566\_0156\_1\_01, diagnostics=[Vertex Input: studenttab10k initializer failed., Delegation Token can be issued only with kerberos or web authentication
	at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.getDelegationToken(FSNamesystem.java:6194)
	at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.getDelegationToken(NameNodeRpcServer.java:457)
	at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.getDelegationToken(ClientNamenodeProtocolServerSideTranslatorPB.java:886)
	at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:928)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1973)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:1969)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:1967)
]
Vertex killed, vertexName=Reducer 2, vertexId=vertex\_1393316649566\_0156\_1\_00, diagnostics=[Vertex received Kill in INITED state.]
DAG failed due to vertex failure. failedVertices:1 killedVertices:1
FAILED: Execution Error, return code 2 from org.apache.hadoop.hive.ql.exec.tez.TezTask
{noformat}


---

* [TEZ-894](https://issues.apache.org/jira/browse/TEZ-894) | *Major* | **Tez should have a way to know build manifest**

Tez jars should have build manifest information.


---

* [TEZ-893](https://issues.apache.org/jira/browse/TEZ-893) | *Minor* | **Terasort gives ArrayIndexOutOfBound Exception for 'hadoop jar \<jar\> terasort'**

The below command expects the syntax of a job .
hadoop jar <jarname> <jobname>

such as
/usr/lib/hadoop/bin/hadoop jar /usr/lib/tez/tez-mapreduce-examples.jar teragen
teragen <num rows> <output dir>

Terasort jobs gives ArrayIndexOutOfBound Exception. 
/usr/lib/hadoop/bin/hadoop jar /usr/lib/tez/tez-mapreduce-examples.jar terasort
14/02/26 19:39:17 INFO terasort.TeraSort: starting
java.lang.ArrayIndexOutOfBoundsException: 0
	at org.apache.tez.mapreduce.examples.terasort.TeraSort.run(TeraSort.java:283)
	at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
	at org.apache.tez.mapreduce.examples.terasort.TeraSort.main(TeraSort.java:325)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:144)
	at org.apache.tez.mapreduce.examples.ExampleDriver.main(ExampleDriver.java:88)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:39)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)
	at java.lang.reflect.Method.invoke(Method.java:597)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:212)


---

* [TEZ-885](https://issues.apache.org/jira/browse/TEZ-885) | *Major* | **TestTaskScheduler intermittent failures**

org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$TaskAllocatedCallable.call(TaskSchedulerAppCallbackWrapper.java:165) " type="org.mockito.exceptions.verification.WantedButNotInvoked">
org.mockito.exceptions.verification.WantedButNotInvoked: Wanted but not invoked: taskSchedulerAppCallback.containerBeingReleased( Mock for ContainerId, hashCode: 1617829356 ); -> at org.apache.tez.dag.app.rm.TestTaskScheduler.testTaskSchedulerWithReuse(TestTaskScheduler.java:712) However, there were other interactions with this mock: -> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$SetApplicationRegistrationDataCallable.call(TaskSchedulerAppCallbackWrapper.java:257) -> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$TaskAllocatedCallable.call(TaskSchedulerAppCallbackWrapper.java:165) -> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$TaskAllocatedCallable.call(TaskSchedulerAppCallbackWrapper.java:165) -> at org.apache.tez.dag.app.rm.TaskSchedulerAppCallbackWrapper$TaskAllocatedCallable.call(TaskSchedulerAppCallbackWrapper.java:165) at org.apache.tez.dag.app.rm.TestTaskScheduler.testTaskSchedulerWithReuse(TestTaskScheduler.java:712)


---

* [TEZ-884](https://issues.apache.org/jira/browse/TEZ-884) | *Major* | **Add parameter checking for context related user API's**

I'm taking TEZ-865, and struggling with NPE. It's very effective to avoid NPE by adding @Nullable annotation and assert arguments by Preconditions.checkNotNull at API level.


---

* [TEZ-883](https://issues.apache.org/jira/browse/TEZ-883) | *Major* | **Fix unit tests to use comma separated values in tests having output verification at more than 1 tasks.**

TEZ-842 added output verification. Many tests use verify outputs of more than 1 task in single vertex. The parameter use at TEZ\_FAILING\_PROCESSOR\_VERIFY\_TASK\_INDEX is incorrect. When verifying 2 task indexes, code should set the parameter only once with comma separated values indicating task indexes.


---

* [TEZ-879](https://issues.apache.org/jira/browse/TEZ-879) | *Major* | **Investigate synchronization in Inputs/Outputs .initialize() etc**

Initialization, start etc happens in separate threads. Some synchronization - primarily for visibility - may be required.


---

* [TEZ-876](https://issues.apache.org/jira/browse/TEZ-876) | *Major* | **Fix graphviz dag generation for Hive**

Hive uses ":" and "-" in the dag name which are special chars for dot. Need to be escaped or replaced. 

Also, would be useful to log a message in the AM logs with the dot file location. 

May also be good to support a client-side utility to generate the graphviz output given a DAG plan.


---

* [TEZ-865](https://issues.apache.org/jira/browse/TEZ-865) | *Major* | **TezTaskContext.getDAGName() does not return DAG name**

The user can specifies a dag name during dag creation. The task context should return this value. Currently it returns the string of the internal dag identifier.


---

* [TEZ-864](https://issues.apache.org/jira/browse/TEZ-864) | *Major* | **PipelinedSorter throws BufferOverflow exception**

When running the following query, BufferOverflowException is thrown at times.

>>
SELECT SUBSTR(sourceIP, 1, 10), SUM(adRevenue) FROM uservisits GROUP BY SUBSTR(sourceIP, 1, 10)
>>

Caused by: org.apache.hadoop.hive.ql.metadata.HiveException: java.nio.BufferOverflowException
        at org.apache.hadoop.hive.ql.exec.ReduceSinkOperator.processOp(ReduceSinkOperator.java:287)
        at org.apache.hadoop.hive.ql.exec.Operator.forward(Operator.java:790)
        at org.apache.hadoop.hive.ql.exec.vector.VectorGroupByOperator.flush(VectorGroupByOperator.java:320)
        at org.apache.hadoop.hive.ql.exec.vector.VectorGroupByOperator.processOp(VectorGroupByOperator.java:249)
        at org.apache.hadoop.hive.ql.exec.Operator.forward(Operator.java:790)
        at org.apache.hadoop.hive.ql.exec.vector.VectorSelectOperator.processOp(VectorSelectOperator.java:129)
        at org.apache.hadoop.hive.ql.exec.Operator.forward(Operator.java:790)
        at org.apache.hadoop.hive.ql.exec.TableScanOperator.processOp(TableScanOperator.java:92)
        at org.apache.hadoop.hive.ql.exec.Operator.forward(Operator.java:790)
        at org.apache.hadoop.hive.ql.exec.vector.VectorMapOperator.process(VectorMapOperator.java:43)
        ... 9 more
Caused by: java.nio.BufferOverflowException
        at java.nio.Buffer.nextPutIndex(Buffer.java:513)
        at java.nio.ByteBufferAsIntBufferL.put(ByteBufferAsIntBufferL.java:122)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.collect(PipelinedSorter.java:237)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.write(PipelinedSorter.java:183)
        at org.apache.tez.runtime.library.output.OnFileSortedOutput$1.write(OnFileSortedOutput.java:96)
        at org.apache.hadoop.hive.ql.exec.tez.TezProcessor$KVOutputCollector.collect(TezProcessor.java:170)
        at org.apache.hadoop.hive.ql.exec.ReduceSinkOperator.collect(ReduceSinkOperator.java:364)
        at org.apache.hadoop.hive.ql.exec.ReduceSinkOperator.processOp(ReduceSinkOperator.java:270)


---

* [TEZ-813](https://issues.apache.org/jira/browse/TEZ-813) | *Major* | **Remove unused imports across project**

Noticed a few unused imports. pmd scan shows 63 imports like this. Fixing them all at one

modified pom plugin management to add pmd configuration (for detection purposes)
{code:xml}
         <plugin>
         <groupId>org.apache.maven.plugins</groupId>
         <artifactId>maven-pmd-plugin</artifactId>
         <version>3.0.1</version>
         <configuration>
           <rulesets>
             <ruleset>/rulesets/java/imports.xml</ruleset>
           </rulesets>
         </configuration>
       </plugin>
{code}
mvn pmd:pmd
tar cvzf imports.tar.gz $(find ./ -name pmd.xml)


---

* [TEZ-715](https://issues.apache.org/jira/browse/TEZ-715) | *Major* | **Auto Reduce Parallelism can rarely trigger NPE in AM at DAGAppMaster$TaskEventDispatcher.handle(DAGAppMaster.java:1268)**

We run sort job with auto reduce parallelism turned on. Rarely a job could fail with NullPointerException in AM logs at DAGAppMaster$TaskEventDispatcher.handle(DAGAppMaster.java:1268).

{code}
2013-12-13 20:52:53,270 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.ShuffleVertexManager: Reduce auto parallelism for vertex: vertex\_1386966464792\_0007\_1\_00 to 5 from 10 . Expected output: 1049448740 based on actual output: 419779496 from 4 vertex manager events.  desiredTaskInputSize: 230686720
2013-12-13 20:52:53,271 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Vertex vertex\_1386966464792\_0007\_1\_00 parallelism set to 5 from 10
2013-12-13 20:52:53,271 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1386966464792\_0007\_1\_00\_000005
2013-12-13 20:52:53,272 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1386966464792\_0007\_1\_00\_000006
2013-12-13 20:52:53,272 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1386966464792\_0007\_1\_00\_000007
2013-12-13 20:52:53,272 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1386966464792\_0007\_1\_00\_000008
2013-12-13 20:52:53,272 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1386966464792\_0007\_1\_00\_000009
2013-12-13 20:52:53,272 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Replacing edge manager for source:vertex\_1386966464792\_0007\_1\_01 destination: vertex\_1386966464792\_0007\_1\_00
2013-12-13 20:52:53,273 INFO [ContainerLauncher #8] org.apache.tez.dag.app.launcher.ContainerLauncherImpl: Processing the event EventType: CONTAINER\_STOP\_REQUEST
2013-12-13 20:52:53,273 INFO [ContainerLauncher #8] org.apache.tez.dag.app.launcher.ContainerLauncherImpl: Sending a stop request to the NM for ContainerId: container\_1386966464792\_0007\_01\_000011
2013-12-13 20:52:53,273 FATAL [AsyncDispatcher event handler] org.apache.hadoop.yarn.event.AsyncDispatcher: Error in dispatcher thread
java.lang.NullPointerException
	at org.apache.tez.dag.app.DAGAppMaster$TaskEventDispatcher.handle(DAGAppMaster.java:1268)
	at org.apache.tez.dag.app.DAGAppMaster$TaskEventDispatcher.handle(DAGAppMaster.java:1261)
	at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:134)
	at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:81)
	at java.lang.Thread.run(Thread.java:662)
2013-12-13 20:52:53,275 INFO [AsyncDispatcher event handler] org.apache.hadoop.yarn.event.AsyncDispatcher: Exiting, bbye..
{code}


---

* [TEZ-676](https://issues.apache.org/jira/browse/TEZ-676) | *Major* | **Tez job fails on client side if nodemanager running AM is lost**

Scenario:

1) Run a long running Teragen Job
2) Find out the node where AM has started.
3) Kill nodemanager on AM host  using kill -9 command

Expected:
2nd AM should be started and Job should be resumed. Job should also keep running on client side

Actual:
Here, the 1st am was started and then NM running AM was killed. The job wait for around 10 min to start 2nd AM. After that, 2nd AM attempt was started. Just at the same time, job output says that "job failed" and it exited.
Though RM has already started 2nd AM. Gradually 2nd AM runs are job finishes successfully.



