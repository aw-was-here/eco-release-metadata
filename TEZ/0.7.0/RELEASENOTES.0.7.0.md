
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
# Hadoop  0.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2293](https://issues.apache.org/jira/browse/TEZ-2293) | *Major* | **When running in "mr" mode, always use MR config settings**

Current implementation is a bit confusing. 

For example, MRRSleepJob uses all MR specific values. However, in some cases, when doing config conversions, if there is an existing value for the translated tez property, that value does not get overridden in favour of the MR specified value.


---

* [TEZ-2290](https://issues.apache.org/jira/browse/TEZ-2290) | *Blocker* | **Scale memory for Default Sorter down to a max of 2047 MB if configured higher**

Given that Pipeline sorter is now the default, the memory configured may likely be more than 2 GB. If a user switches from pipeline to default, they will hit problems straight away. We should scale default sorter's memory config to a max of 2 GB and log a warning.


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

* [TEZ-2251](https://issues.apache.org/jira/browse/TEZ-2251) | *Major* | **Race condition in VertexImpl & Edge causes DAG to hang**

Scenario:
- Run TPCH query20 (https://github.com/cartershanklin/hive-testbench/blob/master/sample-queries-tpch/tpch\_query20.sql) at 1 TB scale (tez-master branch, hive trunk)
- Enable auto reduce parallelism
- DAG didn't complete and got stuck in "Reducer 6"

Vertex parallelism of "Reducer 5 & 6" happens within a span of 3 milliseconds, and tasks of "reducer 5" ends up producing wrong partition details as it sees the updated task numbers of reducer 6 when scheduled.  This causes, job to hang.


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

* [TEZ-2236](https://issues.apache.org/jira/browse/TEZ-2236) | *Major* | **Tez UI: Support loading of all tasks in the dag tasks page**

1. ember-table component was replaced with basic-ember-table component. Its lightweight, easy to customize, uses pure css for layout and supports cell level lazy loading and Pagination of complete loaded data.
2. Load all rows in two phases - First load some rows for preview, then load all related records to be displayed.
3. Support caching of data across tabs.


---

* [TEZ-2233](https://issues.apache.org/jira/browse/TEZ-2233) | *Major* | **Allow EdgeProperty of an edge to be changed by VertexManager**

Currently, all edge managers set during setParallelism end up becoming custom edges. However, just like during dag creation, it should be possible to specify standard edge types like scatter\_gather if that is what the final user decision is. More broadly, allowing the complete EdgeProperty to be specified at runtime would make that action at par with compile time.


---

* [TEZ-2232](https://issues.apache.org/jira/browse/TEZ-2232) | *Major* | **Allow setParallelism to be called multiple times before tasks get scheduled**

Currently, this is allowed only once currently. It is harder to support this after the vertex tasks have already started running. But allowing it before tasks start running is actually trivial. This just allows VertexManagers to change their minds multiple times before they start the vertex processing.


---

* [TEZ-2223](https://issues.apache.org/jira/browse/TEZ-2223) | *Major* | **TestMockDAGAppMaster fails due to TEZ-2210 on mac**

[~bikassaha] looks like TestMockDAGAppMaster fails due to TEZ-2210 
It would fail on mac due to cpuPlugin is null


---

* [TEZ-2213](https://issues.apache.org/jira/browse/TEZ-2213) | *Major* | **For the ordered case, enabling pipelined shuffle should automatically disable final merge**

Currently, it ends up throwing an exception. Given the defaults - enabling pipelined shuffle requires two parameters to be set.


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

* [TEZ-2045](https://issues.apache.org/jira/browse/TEZ-2045) | *Major* | **TaskAttemptListener should not pull Tasks from AMContainer**

The flow should be reversed where AMContainer registers with the TaskAttemptListener, like it's done for all other operations.


---

* [TEZ-2023](https://issues.apache.org/jira/browse/TEZ-2023) | *Major* | **Refactor logIndividualFetchComplete() to be common for both shuffle-schedulers**

This would be useful for mining the task logs.


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

* [TEZ-1909](https://issues.apache.org/jira/browse/TEZ-1909) | *Major* | **Remove need to copy over all events from attempt 1 to attempt 2 dir**

Use of file versions should prevent the need for copying over data into a second attempt dir. Care needs to be taken to handle "last corrupt record" handling.


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

* [TEZ-1274](https://issues.apache.org/jira/browse/TEZ-1274) | *Major* | **Remove Key/Value type checks in IFile**

We check key and value types for each record - this should be removed from the tight loop. Maybe an assertion.


---

* [TEZ-1233](https://issues.apache.org/jira/browse/TEZ-1233) | *Major* | **Allow configuration of framework parameters per vertex**

Currently, configuration properties specific in AMConfiguration are used to configure tasks - e.g. memory configs, process tree, etc. These should be configurable at a Vertex level.

Also, tasks end up reading these configs from the dist cache each time - would be simpler to send over the wire as part of the TaskSpec.


---

* [TEZ-485](https://issues.apache.org/jira/browse/TEZ-485) | *Minor* | **Get rid of TezTaskStatus**

TezTaskStatus is used by the MR Reporter only. We should be able to get rid of this interface.



