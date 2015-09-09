
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
# Apache Tez  0.8.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2784](https://issues.apache.org/jira/browse/TEZ-2784) | *Major* | **optimize TaskImpl.isFinished()**

getInternalState() gets called multiple times within the same method within read lock. This shows up in the AM profiler when executing large jobs.


---

* [TEZ-2783](https://issues.apache.org/jira/browse/TEZ-2783) | *Major* | **Refactor analyzers to extend TezAnalyzerBase**

Refactoring other analyzers to extend from TezAnalyzerBase allows it be to run in standalone cmdline mode.


---

* [TEZ-2782](https://issues.apache.org/jira/browse/TEZ-2782) | *Major* | **VertexInfo.getAvgExecutionTimeInterval throws NPE when task does not have any valid attempts info**

{noformat}
java.lang.NullPointerException
        at org.apache.tez.history.parser.datamodel.VertexInfo.getAvgExecutionTimeInterval(VertexInfo.java:204)
        at org.apache.tez.analyzer.plugins.CriticalPathAnalyzer.analyzeCriticalPath(CriticalPathAnalyzer.java:165)
        at org.apache.tez.analyzer.plugins.CriticalPathAnalyzer.analyze(CriticalPathAnalyzer.java:134)
        at org.apache.tez.analyzer.plugins.TezAnalyzerBase.run(TezAnalyzerBase.java:113)
        at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
        at org.apache.tez.analyzer.plugins.CriticalPathAnalyzer.main(CriticalPathAnalyzer.java:428)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:71)
        at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:144)
        at org.apache.tez.analyzer.plugins.AnalyzerDriver.main(AnalyzerDriver.java:31)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.apache.hadoop.util.RunJar.run(RunJar.java:222)
        at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
{noformat}


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

* [TEZ-2750](https://issues.apache.org/jira/browse/TEZ-2750) | *Major* | **Shuffle may not shutdown in case of a fetch failure, causing it to hang**

When running the Cascading tests with 0.8-alpha, they hang forever.

{code}
git clone https://github.com/cascading/cascading
cd cascading
{code}

update cascading-hadoop2-tez/build.gradle:

- update ext.tezVersion to  '0.8.0-alpha'
- add the staging repos to the repositories block.

{code}
 maven {url = 'https://repository.apache.org/content/repositories/orgapachetez-1040/'}
 maven {url = 'https://repository.apache.org/content/repositories/orgapachetez-1041/'}
{code}

then run this:

{code}
gradle cascading-hadoop2-tez:build -i
{code}

It will hang after a while. You will have to have gradle 2.x installed on your machine. 1.x wont work.


---

* [TEZ-2747](https://issues.apache.org/jira/browse/TEZ-2747) | *Major* | **Update master to reflect 0.8.0-alpha release**

Update CHANGES.txt, version in pom.xml


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

* [TEZ-2662](https://issues.apache.org/jira/browse/TEZ-2662) | *Major* | **Provide a way to check whether AM or task opts are valid and error if not**

Current impl appends cmd-opts specified in config to programmatic opts provided. This creates potential conflicts when using UseParallelGC v/s UseG1GC 

Tez should support a way to do checks for invalid java opts and error out as needed.


---

* [TEZ-2294](https://issues.apache.org/jira/browse/TEZ-2294) | *Major* | **Add tez-site-template.xml with description of config properties**

Document all tez configs with descriptions and default values. 
Also, document MR configs that can be easily translated to Tez configs via Tez helpers.



