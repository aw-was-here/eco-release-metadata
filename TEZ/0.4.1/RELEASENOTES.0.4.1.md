
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
#  0.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-1162](https://issues.apache.org/jira/browse/TEZ-1162) | *Major* | **Tez leaks CodecPool buffers**

Tez Fetcher currently leaks a codec pool (~32kb) for each partition fetched

This causes task failures due to the direct buffers allocated by the codec, which are not freed until a full GC (but whose allocation does not trigger GC).

It is possible to perform the entire shuffle operations without ever triggering a full GC, the following case 

{code}
Container exited with a non-zero exit code 143
], AttemptID:attempt\_1399351577718\_2330\_1\_05\_000020\_3 Info:Container container\_1399351577718\_2330\_01\_000310 COMPLETED with diagnostics set to [Container [pid=1734,containerID=container\_1399351577718\_2330\_01\_000310] is running beyond physical memory limits. Current usage: 4.1 GB of 4 GB physical memory used; 5.4 GB of 40 GB virtual memory used. Killing container.

container\_1399351577718\_2330\_01\_000365/ $ grep -ri "CodecPool.*brand-new" syslog* | wc -l

6988
{code}

That is approx ~436Mb leak on a JVM spun up with -Xmx3500m & 4096m container.


---

* [TEZ-1135](https://issues.apache.org/jira/browse/TEZ-1135) | *Critical* | **ShuffledUnorderedKVInput handles empty partitions incorrectly**

If the source data has empty partitions, the ShuffledInput which does need to fetch data (i.e. other partition is empty), ends up doing nothing.


---

* [TEZ-1097](https://issues.apache.org/jira/browse/TEZ-1097) | *Major* | **Tez assumes that the scratch directory has to be same as the default filesystem**

In HDInsight Azure, we have hive scratch directory set to using HDFS. However the default filesystem is WASB.

Due to this configuration, Tez seems to fail. 

The relevant error logs are as follows.
{noformat}
2014-05-01 04:09:15,007 INFO  tez.TezSessionState (TezSessionState.java:open(142)) - User of session id 41905b13-36e7-4755-af34-265768778443 is chuan
2014-05-01 04:09:15,054 INFO  tez.DagUtils (DagUtils.java:getHiveJarDirectory(760)) - Jar dir is null/directory doesn't exist. Choosing HIVE\_INSTALL\_DIR - wasb://hdi31-chuanliu@clhdistorage.blob.core.windows.net/user/chuan/.hiveJars
2014-05-01 04:09:15,382 INFO  tez.DagUtils (DagUtils.java:localizeResource(839)) - Localizing resource because it does not exist: file:/C:/apps/dist/hive-0.13.0.2.1.2.0-1660/lib/hive-exec-0.13.0.2.1.2.0-1660.jar to dest: wasb://hdi31-chuanliu@clhdistorage.blob.core.windows.net/user/chuan/.hiveJars/hive-exec-0.13.0.2.1.2.0-1660-3abc67a6088fef5988020d9608d28d3025115d4201be785434c57c8a90d4cb5f.jar
2014-05-01 04:09:15,413 INFO  tez.DagUtils (DagUtils.java:localizeResource(843)) - Looks like another thread is writing the same file will wait.
2014-05-01 04:09:15,413 INFO  tez.DagUtils (DagUtils.java:localizeResource(850)) - Number of wait attempts: 5. Wait interval: 5000
2014-05-01 04:09:15,444 INFO  tez.DagUtils (DagUtils.java:createLocalResource(603)) - Resource modification time: 1398916679000
2014-05-01 04:09:15,444 ERROR exec.Task (TezTask.java:execute(192)) - Failed to execute tez graph.
java.lang.IllegalArgumentException: Wrong FS: hdfs://headnodehost:9000/hive/scratch/\_tez\_session\_dir/41905b13-36e7-4755-af34-265768778443, expected: wasb://hdi31-chuanliu@clhdistorage.blob.core.windows.net
	at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:643)
	at org.apache.hadoop.fs.azurenative.NativeAzureFileSystem.checkPath(NativeAzureFileSystem.java:436)
	at org.apache.hadoop.fs.FileSystem.resolvePath(FileSystem.java:747)
	at org.apache.tez.client.AMConfiguration.<init>(AMConfiguration.java:81)
	at org.apache.hadoop.hive.ql.exec.tez.TezSessionState.open(TezSessionState.java:174)
	at org.apache.hadoop.hive.ql.exec.tez.TezTask.execute(TezTask.java:154)
	at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:153)
	at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:85)
	at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1504)
	at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1271)
	at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1089)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:912)
	at org.apache.hadoop.hive.ql.Driver.run(Driver.java:902)
	at org.apache.hadoop.hive.cli.CliDriver.processLocalCmd(CliDriver.java:268)
	at org.apache.hadoop.hive.cli.CliDriver.processCmd(CliDriver.java:220)
	at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:423)
	at org.apache.hadoop.hive.cli.CliDriver.executeDriver(CliDriver.java:793)
	at org.apache.hadoop.hive.cli.CliDriver.run(CliDriver.java:686)
	at org.apache.hadoop.hive.cli.CliDriver.main(CliDriver.java:625)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:601)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:212)
2014-05-01 04:09:15,444 ERROR ql.Driver (SessionState.java:printError(546)) - FAILED: Execution Error, return code 1 from org.apache.hadoop.hive.ql.exec.tez.TezTask
{noformat}


---

* [TEZ-1048](https://issues.apache.org/jira/browse/TEZ-1048) | *Major* | **NPE when previous task attempts fail without generating any data**

We NPE when the previous task fails without generating data.


---

* [TEZ-1040](https://issues.apache.org/jira/browse/TEZ-1040) | *Blocker* | **TezMerger hangs when io.sort.mb value is 1**

TestCombiner.testMultiCombinerUse() in pig test suite sets io.sort.mb to 1 for testing purposes. Tez is stuck at a loop while running the task with 0.4.0-incubating and 0.5.0-incubating-SNAPSHOT in org.apache.tez.runtime.library.common.sort.impl.TezMerger$MergeQueue.computeBytesInMerges. It runs fine with 0.3.0-incubating.

{code}
at java.lang.Long.valueOf(Long.java:557)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger$MergeQueue.computeBytesInMerges(TezMerger.java:814)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger$MergeQueue.merge(TezMerger.java:571)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger$MergeQueue.merge(TezMerger.java:541)
        at org.apache.tez.runtime.library.common.sort.impl.TezMerger.merge(TezMerger.java:164)
        at org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.mergeParts(DefaultSorter.java:1078)
        at org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.flush(DefaultSorter.java:633)
        at org.apache.tez.runtime.library.output.OnFileSortedOutput.close(OnFileSortedOutput.java:134)
        - locked <7f03a5b90> (a org.apache.tez.runtime.library.output.OnFileSortedOutput)
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.close(LogicalIOProcessorRuntimeTask.java:331)
        at org.apache.hadoop.mapred.YarnTezDagChild$5.run(YarnTezDagChild.java:567)
        at java.security.AccessController.doPrivileged(Native Method)
        at javax.security.auth.Subject.doAs(Subject.java:394)
        at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
        at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:553)
{code}

To reproduce:
ant clean test -Dtestcase=TestCombiner -Dexectype=tez -Dhadoopversion=23 -Dtest.output=true -logfile /tmp/log


---

* [TEZ-1033](https://issues.apache.org/jira/browse/TEZ-1033) | *Major* | **AM hangs during recovery with Tasks awaiting init event**

Here is the trace we saw 
{code}
2014-04-09 09:13:43,758 INFO [main] org.apache.tez.runtime.LogicalIOProcessorRuntimeTask: AutoStartComplete
2014-04-09 09:13:43,759 INFO [main] org.apache.hadoop.mapred.YarnTezDagChild: Running task, taskAttemptId=attempt\_1397032861365\_0001\_1\_09\_000011\_0
2014-04-09 09:13:43,759 INFO [main] org.apache.hadoop.hive.ql.log.PerfLogger: <PERFLOG method=TezRunProcessor from=org.apache.hadoop.hive.ql.exec.tez.TezProcessor>
2014-04-09 09:13:43,759 INFO [main] org.apache.hadoop.hive.ql.exec.tez.TezProcessor: Running task: attempt\_1397032861365\_0001\_1\_09\_000011\_0\_10001
2014-04-09 09:13:43,780 INFO [main] org.apache.tez.mapreduce.input.MRInput: Initialzed MRInput: store\_sales
2014-04-09 09:13:43,780 INFO [main] org.apache.tez.mapreduce.input.MRInputLegacy: Awaiting init event before initializing record reader
{code}


---

* [TEZ-1029](https://issues.apache.org/jira/browse/TEZ-1029) | *Major* | **Fetcher can fail to report input failed event upon connection error**

When there is a connection error then the fetcher fails all the maps but does not report input read error to the AM. So the AM does not get any information to rerun the source (if many fetchers report read errors). A connection failed also results in the shuffle-scheduler deciding that too many different map sources have failed and so it should fail itself. Multiple attempts of the reducer fail and the job fails. Looking at MR Fetcher code, a connection issue is also reported as a read error to the MR AM. Planning on making the same fix in the Tez Fetcher as was made in MAPREDUCE-4772.


---

* [TEZ-1021](https://issues.apache.org/jira/browse/TEZ-1021) | *Major* | **TezClient cannot connect to AM in a secure cluster when launched via Oozie**

Caused by: com.google.protobuf.ServiceException: java.io.IOException: Failed on local exception: java.io.IOException: org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]; Host Details : local host is: "hor11n39.gq1.ygridcore.net/68.142.247.186"; destination host is: "hor11n39.gq1.ygridcore.net":37741;
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:216)
	at $Proxy26.submitDAG(Unknown Source)
	at org.apache.tez.client.TezSession.submitDAG(TezSession.java:235)
	... 36 more
Caused by: java.io.IOException: Failed on local exception: java.io.IOException: org.apache.hadoop.security.AccessControlException: Client cannot authenticate via:[TOKEN, KERBEROS]; Host Details : local host is: "hor11n39.gq1.ygridcore.net/68.142.247.186"; destination host is: "hor11n39.gq1.ygridcore.net":37741;
	at org.apache.hadoop.net.NetUtils.wrapException(NetUtils.java:764)
	at org.apache.hadoop.ipc.Client.call(Client.java:1414)
	at org.apache.hadoop.ipc.Client.call(Client.java:1363)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
	... 38 more


---

* [TEZ-1015](https://issues.apache.org/jira/browse/TEZ-1015) | *Major* | **Dag failed with Invalid event: V\_ROUTE\_EVENT at RECOVERING**

During HA tests hive job was run where NN was killed in the background and RM was also killed once. The job failed with 

{code}
2014-04-03 08:59:03,253 ERROR [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Can't handle Invalid event V\_ROUTE\_EVENT on vertex Reducer 8 with vertexId vertex\_1396515360091\_0001\_1\_03 at current state RECOVERING
org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_ROUTE\_EVENT at RECOVERING
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:305)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1210)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:156)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1659)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1645)
	at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:173)
	at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:106)
	at java.lang.Thread.run(Thread.java:662)
{code}


---

* [TEZ-1010](https://issues.apache.org/jira/browse/TEZ-1010) | *Major* | **TestAMNodeMap.testSelfBlacklist fails intermittently**

The node map is a hashmap and the ordering of events depends on the order of the nodes in the hashmap. This leads to flaky tests.


---

* [TEZ-1009](https://issues.apache.org/jira/browse/TEZ-1009) | *Major* | **Fixes in log file roll-over**

1) Close the previous file when transferring to a new file
2) In YARNTezDAGChild use \_post for new files to maintain chronological continuity. Currently syslog/stdout/stderr have the contexts in between consecutive tasks.


---

* [TEZ-1005](https://issues.apache.org/jira/browse/TEZ-1005) | *Major* | **AM relocalization adds resources to the wrong classloader**

If one works around TEZ-1004 by removing hand-picked jars from additional jar list (same will happen after it's fixed to compare and remove jars correctly), these jars are not usable in initializer, so you get something like, for example:
{noformat}
Mon Mar 31 20:45:17 UTC 2014, org.apache.hadoop.hbase.client.RpcRetryingCaller@343d511e, java.lang.IllegalAccessError: class com.google.protobuf.HBaseZeroCopyByteString cannot access its superclass com.google.protobuf.LiteralByteString
{noformat}

We have a small fix that seems to fix it, by adding to system classloader


---

* [TEZ-1004](https://issues.apache.org/jira/browse/TEZ-1004) | *Major* | **AM relocalization doesn't handle conflicting resources correctly**

If you add a jar that tez already has, it throws despite having the same jar, probably due to ts. Might need to compare SHA-s.

{noformat}
org.apache.hadoop.ipc.RemoteException(org.apache.tez.dag.api.TezUncheckedException): Cannot add different additional resources with the same name : protobuf-java-2.5.0.jar, Existing: [resource { scheme: "hdfs" host: "hor18n31.gq1.ygridcore.net" port: 8020 file: "/apps/tez/lib/protobuf-java-2.5.0.jar" } size: 533455 timestamp: 1395764131176 type: FILE visibility: PUBLIC], New: [resource { scheme: "hdfs" port: -1 file: "/user/hrt\_qa/.hiveJars/protobuf-java-2.5.0.jar" } size: 533455 timestamp: 1395961799302 type: FILE visibility: APPLICATION]
   at org.apache.tez.dag.app.DAGAppMaster.getAdditionalLocalResourceDiff(DAGAppMaster.java:1108)
   at org.apache.tez.dag.app.DAGAppMaster.startDAG(DAGAppMaster.java:1821)
   at org.apache.tez.dag.app.DAGAppMaster.submitDAGToAppMaster(DAGAppMaster.java:955)
   at org.apache.tez.dag.app.DAGAppMaster$DAGClientHandler.submitDAG(DAGAppMaster.java:1058)
   at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.submitDAG(DAGClientAMProtocolBlockingPBServerImpl.java:131)
   at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:8292)
   at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)
   at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:928)
   at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2007)
   at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2003)
   at java.security.AccessController.doPrivileged(Native Method)
   at javax.security.auth.Subject.doAs(Subject.java:396)
   at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
   at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2001)
   at org.apache.hadoop.ipc.Client.call(Client.java:1410)
   at org.apache.hadoop.ipc.Client.call(Client.java:1363)
   at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)
{noformat}


---

* [TEZ-998](https://issues.apache.org/jira/browse/TEZ-998) | *Major* | **InvalidStateTransitonException: Invalid event: V\_INIT at INITED**

While running HA tests where AM was being killed while the hive query was running we saw that the application failed with exception

org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_INIT at INITED


---

* [TEZ-997](https://issues.apache.org/jira/browse/TEZ-997) | *Major* | **Internal Errror in am logs during dag shutdown**

During a hive on tez job which failed we saw an exception trace during dag shutdown.



