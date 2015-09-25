
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
# Apache Tez  0.6.3 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2834](https://issues.apache.org/jira/browse/TEZ-2834) | *Major* | **Make Tez preemption resilient to incorrect free resource reported by YARN**

Will attach the DAG.

Repro for reference: TPC-DS q\_70 @ 30 TB scale.

"Map 7" completes in 2 waves. Output is very tiny, so reducer 8 gets launched slightly late.  But before "Reducer 9" can get scheduled, slots are taken up by "Map 1", which is not preempted for running "Reducer 9".

This is with 0.7.1 codebase.


---

* [TEZ-2816](https://issues.apache.org/jira/browse/TEZ-2816) | *Major* | **Preemption sometimes does not respect heartbeats between preemptions**

https://builds.apache.org/job/Tez-Build-Hadoop-2.4/170/console

{noformat}
Running org.apache.tez.analyzer.TestAnalyzer
Tests run: 13, Failures: 2, Errors: 0, Skipped: 0, Time elapsed: 99.595 sec \<\<\< FAILURE!
testBasicInputFailureWithoutExit(org.apache.tez.analyzer.TestAnalyzer)  Time elapsed: 6.276 sec  \<\<\< FAILURE!
java.lang.AssertionError: v2 : 000000\_0
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.apache.tez.analyzer.TestAnalyzer.verifyCriticalPath(TestAnalyzer.java:273)
	at org.apache.tez.analyzer.TestAnalyzer.runDAGAndVerify(TestAnalyzer.java:220)
	at org.apache.tez.analyzer.TestAnalyzer.testBasicInputFailureWithoutExit(TestAnalyzer.java:399)

testCascadingInputFailureWithExitSuccess(org.apache.tez.analyzer.TestAnalyzer)  Time elapsed: 5.986 sec  \<\<\< FAILURE!
java.lang.AssertionError: v3 : 000000\_1
	at org.junit.Assert.fail(Assert.java:88)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.apache.tez.analyzer.TestAnalyzer.verifyCriticalPath(TestAnalyzer.java:273)
	at org.apache.tez.analyzer.TestAnalyzer.runDAGAndVerify(TestAnalyzer.java:220)
	at org.apache.tez.analyzer.TestAnalyzer.testCascadingInputFailureWithExitSuccess(TestAnalyzer.java:561)


Results :

Failed tests: 
  TestAnalyzer.testBasicInputFailureWithoutExit:399-\>runDAGAndVerify:220-\>verifyCriticalPath:273 v2 : 000000\_0
  TestAnalyzer.testCascadingInputFailureWithExitSuccess:561-\>runDAGAndVerify:220-\>verifyCriticalPath:273 v3 : 000000\_1
{noformat}


---

* [TEZ-2808](https://issues.apache.org/jira/browse/TEZ-2808) | *Major* | **Race condition between preemption and container assignment**

New container allocated. Put in delayed container manager queue. Triggers assignment run on delayed container manager thread. 
On AMRMClient thread callback, preemption is called. This is to ensure preemption logic is guaranteed to be invoked at regular intervals even though nothing else may be happening because there are no containers allocated/to-match. Preemption logic checks if containers are available to assign by looking at delayed container manager queue. If by this time, the assignment thread has polled the queue to remove the container for assignment checking, then the preemption code will see no containers available to assign. So it proceeds to preempt containers.


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

* [TEZ-2752](https://issues.apache.org/jira/browse/TEZ-2752) | *Major* | **logUnsuccessful completion in Attempt should write original finish time to ATS**

Currently it overwrites with the current time and that results in wrong information since in reality the attempt might have finished earlier if the failure was output failure. Other failures also set the finish time in the terminate transition and thus even in non output failed cases the value of finishtime can be used instead of using current time.


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

* [TEZ-2734](https://issues.apache.org/jira/browse/TEZ-2734) | *Major* | **Add a test to verify the filename generated by OnDiskMerge**

Follow up to TEZ-1808


---

* [TEZ-2719](https://issues.apache.org/jira/browse/TEZ-2719) | *Major* | **Consider reducing logs in unordered fetcher with shared-fetch option**

For large broadcast, this can be a problem
e.g 
In one of the jobs (query\_17 @ 10 TB scale), Map 7 generates around 1.1 GB of data which is given to 330 tasks in downstream Map 1.

Map 1 uses all slots in cluster (~ 224 per wave). Until data is downloaded, shared fetch would end up re-queuing fetches.  As a part of it, it would end up printing 3 logs per attempt. E.g

{noformat}
2015-08-14 02:09:11,761 INFO [Fetcher [Map\_7] #0] shuffle.Fetcher: Requeuing machine1:13562 downloads because we didn't get a lock
2015-08-14 02:09:11,761 INFO [Fetcher [Map\_7] #0] shuffle.Fetcher: Shared fetch failed to return 1 inputs on this try
2015-08-14 02:09:11,761 INFO [ShuffleRunner [Map\_7]] impl.ShuffleManager: Scheduling fetch for inputHost: machine1:13562
2015-08-14 02:09:11,761 INFO [ShuffleRunner [Map\_7]] impl.ShuffleManager: Created Fetcher for host: machine1 with inputs: [InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=0], attemptNumber=0, pathComponent=attempt\_1439264591968\_0058\_1\_04\_000000\_0\_10029, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1]]
{noformat}

Based on disk / network, it  might take time for fetcher to finish downloading and release the lock.  Since there was only one task in Map-1, it ended up in a sort of tight loop generating relatively larger logs.

Looks like 260-290 MB task log files are created in this case per attempt.  That would be around 2.3 GB to 3 GB (depending on number of slots waiting) in machine with 8-10 slots.


---

* [TEZ-2687](https://issues.apache.org/jira/browse/TEZ-2687) | *Major* | **ATS History shutdown happens before the min-held containers are released**

When ATS goes into a GC pause under heavy loads and while it recovers, each Tez AM holds onto a few containers even though it is shutting down and will never accept any more DAGs.


---

* [TEZ-2630](https://issues.apache.org/jira/browse/TEZ-2630) | *Critical* | **TezChild receives IP address instead of FQDN**

I am running a yarn cluster on AWS. The slave nodes (NMs) are all configured to listen on private DNS. For example, a sample node manager listens on ip-10-16-141-168.ec2.internal:8042.

When I'm trying to run a Tez job (even simple ones like select count(\*) from nation) - they fail because child tasks are unable to connect to the AM. The issue is they are trying to connect to the IP instead of the private DNS. Here's a sample log line (couple of them added by me for debugging):

{code}
2015-07-21 17:08:21,919 INFO [main] task.TezChild: TezChild starting
2015-07-21 17:08:22,310 INFO [main] task.TezChild: Using socket factory class: org.apache.hadoop.net.StandardSocketFactory
2015-07-21 17:08:22,336 INFO [main] task.TezChild: PID, containerIdentifier:  3699, container\_1437498369268\_0001\_01\_000002
2015-07-21 17:08:22,418 INFO [main] Configuration.deprecation: fs.default.name is deprecated. Instead, use fs.defaultFS
2015-07-21 17:08:23,025 INFO [main] task.TezChild: Got host:port: 10.16.141.168:37949
2015-07-21 17:08:23,035 INFO [main] task.TezChild: address variables: 10.16.141.168:37949
2015-07-21 17:08:23,143 INFO [TezChild] task.ContainerReporter: Attempting to fetch new task
2015-07-21 17:08:24,201 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 0 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:25,202 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 1 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:26,757 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 2 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
2015-07-21 17:08:27,758 INFO [TezChild] ipc.Client: Retrying connect to server: 10.16.141.168/10.16.141.168:37949. Already tried 3 time(s); retry policy is RetryUpToMaximumCountWithFixedSleep(maxRetries=50, sleepTime=1000 MILLISECONDS)
{code}

AM is listening at the right address. But TezChild is receiving the IP address instead of the private DNS. 

AM logs:
{code}
2015-07-21 18:09:27,906 INFO [ServiceThread:org.apache.tez.dag.app.TaskAttemptListenerImpTezDag] app.TaskAttemptListenerImpTezDag: Listening at address: ip-10-234-2-80.ec2.internal:49967
{code}

TezChild logs:
{code}
2015-07-21 18:09:35,353 INFO [main] task.TezChild: TezChild starting
2015-07-21 18:09:35,379 INFO [main] task.TezChild: Args: 10.234.2.80,49967,container\_1437501941642\_0001\_01\_000002,application\_1437501941642\_0001,1
2015-07-21 18:09:35,770 INFO [main] task.TezChild: Using socket factory class: org.apache.hadoop.net.StandardSocketFactory
2015-07-21 18:09:35,785 INFO [main] task.TezChild: PID, containerIdentifier:  8670, container\_1437501941642\_0001\_01\_000002
2015-07-21 18:09:35,864 INFO [main] Configuration.deprecation: fs.default.name is deprecated. Instead, use fs.defaultFS
2015-07-21 18:09:36,403 INFO [main] task.TezChild: Got host:port: 10.234.2.80:49967
2015-07-21 18:09:36,413 INFO [main] task.TezChild: address variables: 10.234.2.80:49967
{code}


---

* [TEZ-2629](https://issues.apache.org/jira/browse/TEZ-2629) | *Major* | **LimitExceededException in Tez client when DAG has exceeds the default max counters**

Original issue was HIVE-11303, seeing LimitExceededException when the client tries to get the counters for a completed job:

{noformat}
2015-07-17 18:18:11,830 INFO  [main]: counters.Limits (Limits.java:ensureInitialized(59)) - Counter limits initialized with parameters:  GROUP\_NAME\_MAX=256, MAX\_GROUPS=500, COUNTER\_NAME\_MAX=64, MAX\_COUNTERS=1200
2015-07-17 18:18:11,841 ERROR [main]: exec.Task (TezTask.java:execute(189)) - Failed to execute tez graph.
org.apache.tez.common.counters.LimitExceededException: Too many counters: 1201 max=1200
        at org.apache.tez.common.counters.Limits.checkCounters(Limits.java:87)
        at org.apache.tez.common.counters.Limits.incrCounters(Limits.java:94)
        at org.apache.tez.common.counters.AbstractCounterGroup.addCounter(AbstractCounterGroup.java:76)
        at org.apache.tez.common.counters.AbstractCounterGroup.addCounterImpl(AbstractCounterGroup.java:93)
        at org.apache.tez.common.counters.AbstractCounterGroup.findCounter(AbstractCounterGroup.java:104)
        at org.apache.tez.dag.api.DagTypeConverters.convertTezCountersFromProto(DagTypeConverters.java:567)
        at org.apache.tez.dag.api.client.DAGStatus.getDAGCounters(DAGStatus.java:148)
        at org.apache.hadoop.hive.ql.exec.tez.TezTask.execute(TezTask.java:175)
        at org.apache.hadoop.hive.ql.exec.Task.executeTask(Task.java:160)
        at org.apache.hadoop.hive.ql.exec.TaskRunner.runSequential(TaskRunner.java:89)
        at org.apache.hadoop.hive.ql.Driver.launchTask(Driver.java:1673)
        at org.apache.hadoop.hive.ql.Driver.execute(Driver.java:1432)
        at org.apache.hadoop.hive.ql.Driver.runInternal(Driver.java:1213)
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:1064)
        at org.apache.hadoop.hive.ql.Driver.run(Driver.java:1054)
        at org.apache.hadoop.hive.cli.CliDriver.processLocalCmd(CliDriver.java:213)
        at org.apache.hadoop.hive.cli.CliDriver.processCmd(CliDriver.java:165)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:376)
        at org.apache.hadoop.hive.cli.CliDriver.processLine(CliDriver.java:311)
        at org.apache.hadoop.hive.cli.CliDriver.processReader(CliDriver.java:409)
        at org.apache.hadoop.hive.cli.CliDriver.processFile(CliDriver.java:425)
        at org.apache.hadoop.hive.cli.CliDriver.executeDriver(CliDriver.java:714)
        at org.apache.hadoop.hive.cli.CliDriver.run(CliDriver.java:681)
        at org.apache.hadoop.hive.cli.CliDriver.main(CliDriver.java:621)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:62)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:497)
        at org.apache.hadoop.util.RunJar.run(RunJar.java:221)
        at org.apache.hadoop.util.RunJar.main(RunJar.java:136)
{noformat}

It looks like Limits.ensureInitialized() is defaulting to an empty configuration, resulting in COUNTERS\_MAX being set to the default of 1200 (even though Hive's configuration specified tez.counters.max=16000).

Per [~sseth]:
{quote}
I think the Tez client does need to make this call to setup the Configuration correctly. We do this for the AM and the executing task - which is why it works. Could you please open a Tez jira for this ?
Also, Limits is making use of Configuration instead of TezConfiguration for default initialization, which implies changes to tez-site on the local node won't be picked up.
{quote}


---

* [TEZ-2290](https://issues.apache.org/jira/browse/TEZ-2290) | *Blocker* | **Scale memory for Default Sorter down to a max of 2047 MB if configured higher**

Given that Pipeline sorter is now the default, the memory configured may likely be more than 2 GB. If a user switches from pipeline to default, they will hit problems straight away. We should scale default sorter's memory config to a max of 2 GB and log a warning.


---

* [TEZ-2203](https://issues.apache.org/jira/browse/TEZ-2203) | *Major* | **Intern strings in tez counters**

Getting per IO counters is possible today. This jira tracks work needed to enabled them by default. Internalizing strings to save memory is one item needed.


---

* [TEZ-2097](https://issues.apache.org/jira/browse/TEZ-2097) | *Critical* | **TEZ-UI Add dag logs backend support**

If dag fails due to AM error, there's no way to check the dag logs on tez-ui. Users have to grab the app logs.


---

* [TEZ-814](https://issues.apache.org/jira/browse/TEZ-814) | *Major* | **Improve heuristic for determining a task has failed outputs**

Currently 25% of consumers need to report failure. However we may not always have those many error reports. Eg. this is the last consumer and it the source is lost. Or some consumers are cut off from the source. The job may hang on those consumers waiting for a re-run.



