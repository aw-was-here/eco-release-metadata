
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
# Apache Tez  0.8.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2632](https://issues.apache.org/jira/browse/TEZ-2632) | *Major* | **A -Paws and -Pazure build profiles for hadoop-{aws,azure} inclusion**

A number of S3a workloads which work with MRv2 (after HADOOP-10400) is failing to work with Tez.

That compatibility issue can be bypassed with a trivial build profile switch (same for azure after HADOOP-9629)


---

* [TEZ-2616](https://issues.apache.org/jira/browse/TEZ-2616) | *Major* | **Fix build warning by undefined version of maven-findbugs-plugin**

{quote}
[WARNING] Some problems were encountered while building the effective model for org.apache.tez:tez-api:jar:0.8.0-SNAPSHOT
[WARNING] 'reporting.plugins.plugin.version' for org.codehaus.mojo:findbugs-maven-plugin is missing. @ org.apache.tez:tez:0.8.0-SNAPSHOT, /home/ubuntu/tezdev/pom.xml, line 1148, column 15
{quote}

This problem is caused since the plugin is used not only in build section, but also reporting section. The usage is same as maven-javadoc-plugin, so similar issue can happen for maven-javadoc-plugin. This JIRA suggests we add new properties findbugs-maven-plugin.version and javadoc-maven-plugin.version for avoiding similar issues.


---

* [TEZ-2610](https://issues.apache.org/jira/browse/TEZ-2610) | *Major* | **Swimlane for DAGs that use containers from previous DAGs**

PROBELM:

Swimlane can not draw for DAGs that uses containers from previous DAGs.


---

* [TEZ-2602](https://issues.apache.org/jira/browse/TEZ-2602) | *Major* | **Throwing EOFException when launching MR job**

{quote}
$hadoop jar share/hadoop/mapreduce/hadoop-mapreduce-examples-2.7.1.jar wordcount   -Dmapreduce.framework.name=yarn-tez -Dmapr
ed.reduce.tasks=15 -Dtez.runtime.sort.threads=1 wc10g tezwc10g5 
15/07/07 13:24:30 INFO client.RMProxy: Connecting to ResourceManager at /127.0.0.1:8081                                                                                                                                                                       
15/07/07 13:24:30 INFO client.AHSProxy: Connecting to Application History server at /0.0.0.0:10200
15/07/07 13:24:30 INFO mapreduce.Job: The url to track the job: http://ip-172-31-4-8.ap-northeast-1.compute.internal:8088/proxy/application\_1435943097882\_0019/                                                                                               
15/07/07 13:24:30 INFO mapreduce.Job: Running job: job\_1435943097882\_0019
15/07/07 13:24:31 INFO mapreduce.Job: Job job\_1435943097882\_0019 running in uber mode : false                                                                                                                                                                 
15/07/07 13:24:31 INFO mapreduce.Job:  map 0% reduce 0%
15/07/07 13:24:59 INFO mapreduce.Job: Job job\_1435943097882\_0019 failed with state FAILED due to: Vertex failed, vertexName=initialmap, vertexId=vertex\_1435943097882\_0019\_1\_00, diagnostics=[Task failed, taskId=task\_1435943097882\_0019\_1\_00\_000005, diagnostics=[TaskAttempt 0 failed, info=[Error: Failure while running task:java.io.EOFException
        at java.io.DataInputStream.readFully(DataInputStream.java:197)                                                                                                                                                                                        
        at org.apache.hadoop.io.Text.readWithKnownLength(Text.java:319)
        at org.apache.hadoop.io.Text.readFields(Text.java:291)                                                                                                                                                                                                
        at org.apache.hadoop.io.serializer.WritableSerialization$WritableDeserializer.deserialize(WritableSerialization.java:71)
        at org.apache.hadoop.io.serializer.WritableSerialization$WritableDeserializer.deserialize(WritableSerialization.java:42)                                                                                                                              
        at org.apache.hadoop.mapreduce.task.ReduceContextImpl.nextKeyValue(ReduceContextImpl.java:142)
        at org.apache.hadoop.mapreduce.task.ReduceContextImpl.nextKey(ReduceContextImpl.java:121)                                                                                                                                                             
        at org.apache.hadoop.mapreduce.lib.reduce.WrappedReducer$Context.nextKey(WrappedReducer.java:302)
        at org.apache.hadoop.mapreduce.Reducer.run(Reducer.java:170)                                                                                                                                                                                          
        at org.apache.tez.mapreduce.combine.MRCombiner.runNewCombiner(MRCombiner.java:191)
        at org.apache.tez.mapreduce.combine.MRCombiner.combine(MRCombiner.java:115)                                                                                                                                                                           
        at org.apache.tez.runtime.library.common.sort.impl.ExternalSorter.runCombineProcessor(ExternalSorter.java:285)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.spill(PipelinedSorter.java:463)                                                                                                                                                    
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.sort(PipelinedSorter.java:219)
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.collect(PipelinedSorter.java:311)                                                                                                                                                  
        at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.write(PipelinedSorter.java:267)
        at org.apache.tez.runtime.library.output.OrderedPartitionedKVOutput$1.write(OrderedPartitionedKVOutput.java:164)                                                                                                                                      
        at org.apache.tez.mapreduce.processor.map.MapProcessor$NewOutputCollector.write(MapProcessor.java:363)
        at org.apache.tez.mapreduce.hadoop.mapreduce.TaskInputOutputContextImpl.write(TaskInputOutputContextImpl.java:90)                                                                                                                                     
        at org.apache.hadoop.mapreduce.lib.map.WrappedMapper$Context.write(WrappedMapper.java:112)
        at org.apache.hadoop.examples.WordCount$TokenizerMapper.map(WordCount.java:47)                                                                                                                                                                        
        at org.apache.hadoop.examples.WordCount$TokenizerMapper.map(WordCount.java:36)
        at org.apache.hadoop.mapreduce.Mapper.run(Mapper.java:146)                                                                                                                                                                                            
        at org.apache.tez.mapreduce.processor.map.MapProcessor.runNewMapper(MapProcessor.java:237)
        at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:124)                                                                                                                                                                     
        at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:345)
        at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:179)                                                                                                                                                         
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
]], Vertex did not succeed due to OWN\_TASK\_FAILURE, failedTasks:1 killedTasks:89, Vertex vertex\_1435943097882\_0019\_1\_00 [initialmap] killed/failed due to:null]. Vertex killed, vertexName=finalreduce, vertexId=vertex\_1435943097882\_0019\_1\_01, diagnostics=[Vertex received Kill while in RUNNING state., Vertex did not succeed due to OTHER\_VERTEX\_FAILURE, failedTasks:0 killedTasks:15, Vertex vertex\_1435943097882\_0019\_1\_01 [finalreduce] killed/failed due to:null]. DAG did not succeed due to VERTEX\_FAILURE. failedVertices:1 killedVertices:1                                                                                                                                                                                                                                
15/07/07 13:24:59 INFO mapreduce.Job: Counters: 0
{quote}


---

* [TEZ-2600](https://issues.apache.org/jira/browse/TEZ-2600) | *Major* | **When used with HDFS federation(viewfs) ,tez will throw a error**

When I execute the exapmle of tez,orderedwordcount ,Tez throw a error
{code}
java.lang.IllegalArgumentException: Wrong FS: hdfs://SunshineNameNode2/user/wang/tez-0.6.0.tar.gz, expected: viewfs://nsX/
        at org.apache.hadoop.fs.FileSystem.checkPath(FileSystem.java:645)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getUriPath(ViewFileSystem.java:117)
        at org.apache.hadoop.fs.viewfs.ViewFileSystem.getFileStatus(ViewFileSystem.java:346)
        at org.apache.hadoop.fs.FileSystem.isDirectory(FileSystem.java:1413)
        at org.apache.tez.client.TezClientUtils.getLRFileStatus(TezClientUtils.java:130)
        at org.apache.tez.client.TezClientUtils.setupTezJarsLocalResources(TezClientUtils.java:179)
        at org.apache.tez.client.TezClient.getTezJarResources(TezClient.java:757)
        at org.apache.tez.client.TezClient.submitDAGApplication(TezClient.java:725)
        at org.apache.tez.client.TezClient.submitDAGApplication(TezClient.java:703)
        at org.apache.tez.client.TezClient.submitDAG(TezClient.java:383)
        at org.apache.tez.examples.OrderedWordCount.run(OrderedWordCount.java:208)
        at org.apache.tez.examples.OrderedWordCount.run(OrderedWordCount.java:232)
        at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
        at org.apache.tez.examples.OrderedWordCount.main(OrderedWordCount.java:240)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
        at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:145)
        at org.apache.tez.examples.ExampleDriver.main(ExampleDriver.java:61)
        at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
        at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
        at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
        at java.lang.reflect.Method.invoke(Method.java:606)
        at org.apache.hadoop.util.RunJar.main(RunJar.java:212)

{code}


---

* [TEZ-2599](https://issues.apache.org/jira/browse/TEZ-2599) | *Major* | **Dont send obsoleted data movement events to tasks**

Since events are sent in bulk and in sequential order to tasks they can end up getting a bunch of data movement events in round 1 and then an input failed event in round 2. The task may end up scheduling fetches for these obsoleted events before round 2, leading to wastage. 
Given that an input failed event and data movement event can be matched via their source task attempt ids, the AM can use this match to obsolete the data movements events ahead of time and not send them to the tasks in the first place.
The input failed events still need to be sent to the tasks, so that they can obsolete any data movements events that they may have received much earlier from the failed task attempt.


---

* [TEZ-2588](https://issues.apache.org/jira/browse/TEZ-2588) | *Trivial* | **Improper argument name**

TezVertexID.java
{code}
public static TezVertexID fromString(String taskIdStr) {  // should be vertexIdStr
{code}


---

* [TEZ-2579](https://issues.apache.org/jira/browse/TEZ-2579) | *Major* | **Incorrect comparison of TaskAttemptId**

TaskImpl#AttemptSucceededTransition
{code}
      // issue kill to all other attempts
      for (TaskAttempt attempt : task.attempts.values()) {
        if (attempt.getID() != task.successfulAttempt &&  // should use !equals 
        !attempt.isFinished()) {           // but it won't affect the state machine transition, because the successful task attempt should already complete. 
{code}


---

* [TEZ-2575](https://issues.apache.org/jira/browse/TEZ-2575) | *Major* | **Handle KeyValue pairs size which do not fit in a single block**

In the present implementation, the available buffer is divided into blocks (specified in the constructor for pipeline sort). and a linked list of these block byte buffers is maintained. 
A span is created out of the buffers. 
The present logic, doesnot handle scenario where a single key-value pair size doesnot fit into any of the blocks.
example if 1mb total memory is divided into 4 blocks, (256 kb each),
if a single KV pair is greater than the blocksize(~ignoring meta data size), 
then it fails with buffer exceptions.


---

* [TEZ-2568](https://issues.apache.org/jira/browse/TEZ-2568) | *Blocker* | **V\_INPUT\_DATA\_INFORMATION may happen after vertex is initialized**

{code}
2015-06-19 15:57:28,462 ERROR [Dispatcher thread: Central] impl.VertexImpl: Can't handle Invalid event V\_INPUT\_DATA\_INFORMATION on vertex Map 2 with vertexId vertex\_1434754502979\_0002\_2\_00 at current state INITED
org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_INPUT\_DATA\_INFORMATION at INITED
        at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:305)
        at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
        at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
        at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1799)
        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:198)
        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1963)
        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1949)
        at org.apache.tez.common.AsyncDispatcher.dispatch(AsyncDispatcher.java:183)
        at org.apache.tez.common.AsyncDispatcher$1.run(AsyncDispatcher.java:114)
        at java.lang.Thread.run(Thread.java:722)
{code}

Vertex move to INITED as long as its parallelism is determined, no null edges and root inputs are initialized. RootInputDataInformation handling is not a precondition of vertex move to INITED.   We can't wait for all the V\_INPUT\_DATA\_INFORMATION events available in INITIALIZING state, because it is not know how many V\_INPUT\_DATA\_INFORMATION we may receive, it is determined by VM.  So will allow V\_INPUT\_DATA\_INFORMATION happens when vertex is initialized.


---

* [TEZ-2567](https://issues.apache.org/jira/browse/TEZ-2567) | *Major* | **Tez UI: download dag data does not work within ambari**

downloading of dag data from the ui while using a ambari fails. 
This is due to the fact that $.ajax call does not know how to parse the data as the content-type headers are removed by the ambari proxy (this was a getJSON call later changed to ajax call as we needed to pass the credentials).


---

* [TEZ-2566](https://issues.apache.org/jira/browse/TEZ-2566) | *Major* | **Allow TaskAttemptFinishedEvent without TaskAttemptStartedEvent when it is KILLED/FAILED**

TEZ-2304 allow logging TaskAttempFinishedEvent even without TaskAttemptStartedEvent but don't change the logic in Task#restoreFromEvent.
Task attempt is possible to be KILLED/FAILED before it is started, but not possible to be SUCCEEDED without started.


---

* [TEZ-2565](https://issues.apache.org/jira/browse/TEZ-2565) | *Major* | **Consider scanning unfinished tasks in VertexImpl::constructStatistics to reduce merge overhead**

constructStatistics() can be an overhead (scanning all tasks and merging stats) depending on the number of invocations to Vertex::getStatistics().  Consider scanning only unfinished tasks.


---

* [TEZ-2561](https://issues.apache.org/jira/browse/TEZ-2561) | *Major* | **Port for TaskAttemptListenerImpTezDag should be configurable**

Noticed sporadic DAG failures in our ec2 test environment.
Tasks failing with that:
{noformat}
2015-06-17 11:19:51,064 INFO [main] impl.MetricsSystemImpl: Scheduled snapshot period at 10 second(s).
2015-06-17 11:19:51,064 INFO [main] impl.MetricsSystemImpl: TezTask metrics system started
2015-06-17 11:19:51,259 INFO [TezChild] task.ContainerReporter: Attempting to fetch new task
2015-06-17 11:20:11,311 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 0 time(s); maxRetries=5
2015-06-17 11:20:31,312 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 1 time(s); maxRetries=5
2015-06-17 11:20:51,313 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 2 time(s); maxRetries=5
2015-06-17 11:21:11,314 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 3 time(s); maxRetries=5
2015-06-17 11:21:31,315 INFO [TezChild] ipc.Client: Retrying connect to server: ip-10-149-102-100.ec2.internal/10.149.102.100:60630. Already tried 4 time(s); maxRetries=5
2015-06-17 11:21:51,317 INFO [main] impl.MetricsSystemImpl: Stopping TezTask metrics system...
2015-06-17 11:21:51,318 INFO [main] impl.MetricsSystemImpl: TezTask metrics system stopped.
2015-06-17 11:21:51,318 INFO [main] impl.MetricsSystemImpl: TezTask metrics system shutdown complete.
{noformat}

From the AppMaster:
{noformat}
Created DAGAppMaster for application appattempt\_1434553606315\_0022\_000001
2015-06-17 11:19:43,655 INFO [Socket Reader #1 for port 60630] ipc.Server: Starting Socket Reader #1 for port 60630
2015-06-17 11:19:43,656 INFO [Socket Reader #1 for port 31001] ipc.Server: Starting Socket Reader #1 for port 31001
2015-06-17 11:19:43,713 WARN [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] conf.Configuration: mapred-site.xml:an attempt to override final parameter: mapreduce.cluster.local.dir;  Ignoring.
{noformat}

[~hitesh] mentioned its likely to be the TaskAttemptListenerImpTezDag which starts on that port. Would be nice if the port(-range) can be configured!!!


---

* [TEZ-2559](https://issues.apache.org/jira/browse/TEZ-2559) | *Major* | **tez-ui fails compilation due to version dependency of frontend-maven-plugin**

{noformat}
[INFO] --- build-helper-maven-plugin:1.8:maven-version (maven-version) @ tez-ui ---
[INFO] ------------------------------------------------------------------------
[INFO] Reactor Summary:
[INFO]
[INFO] tez ............................................... SUCCESS [0.941s]
[INFO] tez-api ........................................... SUCCESS [5.069s]
[INFO] tez-common ........................................ SUCCESS [0.389s]
[INFO] tez-runtime-internals ............................. SUCCESS [0.694s]
[INFO] tez-runtime-library ............................... SUCCESS [1.701s]
[INFO] tez-mapreduce ..................................... SUCCESS [0.910s]
[INFO] tez-examples ...................................... SUCCESS [0.190s]
[INFO] tez-dag ........................................... SUCCESS [3.808s]
[INFO] tez-tests ......................................... SUCCESS [0.643s]
[INFO] tez-ui ............................................ FAILURE [0.044s]
[INFO] tez-plugins ....................................... SKIPPED
[INFO] tez-yarn-timeline-history ......................... SKIPPED
[INFO] tez-yarn-timeline-history-with-acls ............... SKIPPED
[INFO] tez-history-parser ................................ SKIPPED
[INFO] tez-mbeans-resource-calculator .................... SKIPPED
[INFO] tez-tools ......................................... SKIPPED
[INFO] tez-dist .......................................... SKIPPED
[INFO] Tez ............................................... SKIPPED
[INFO] ------------------------------------------------------------------------
[INFO] BUILD FAILURE
[INFO] ------------------------------------------------------------------------
[INFO] Total time: 14.665s
[INFO] Finished at: Wed Jun 17 12:17:04 IST 2015
[INFO] Final Memory: 56M/356M
[INFO] ------------------------------------------------------------------------
[ERROR] Failed to execute goal com.github.eirslett:frontend-maven-plugin:0.0.23:install-node-and-npm (install node and npm) on project tez-ui: The plugin com.github.eirslett:frontend-maven-plugin:0.0.23 requires Maven version 3.1.0 -> [Help 1]
[ERROR]
[ERROR] To see the full stack trace of the errors, re-run Maven with the -e switch.
[ERROR] Re-run Maven using the -X switch to enable full debug logging.
[ERROR]
[ERROR] For more information about the errors and possible solutions, please read the following articles:
[ERROR] [Help 1] http://cwiki.apache.org/confluence/display/MAVEN/PluginIncompatibleException
{noformat}


build fails on mac and linux.

\cc [~pramachandran]


---

* [TEZ-2558](https://issues.apache.org/jira/browse/TEZ-2558) | *Major* | **Upload additional Tez images**

Converted current to eps format. 
Additional powered by images provided by Sally Khudairi.


---

* [TEZ-2554](https://issues.apache.org/jira/browse/TEZ-2554) | *Major* | **Tez UI: View log link does not correctly propagate login crendential to read log from yarn web.**

Append "user.name=<am user>" to the view/download logs url as a query param.

Sample url:
http://address:19888/jobhistory/logs/address:45454/container\_e18\_1434089649193\_0001\_01\_000002/container\_e18\_1434089649193\_0001\_01\_000002/hrt\_qa?user.name=hrt\_qa

Reported by [~tassapola] offline.


---

* [TEZ-2552](https://issues.apache.org/jira/browse/TEZ-2552) | *Major* | **CRC errors can cause job to run for very long time in large jobs**

Ran a fairly large job at 10 TB scale which had 1009 reducers.

One of the machine had bad disk and NM did not delist that disk.  Machine hosting NM has disk issues (sdf & sde holds shuffle data).  exceptions.

{noformat}
Info fld=0x8960894
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 96 08 90 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144050320
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x895a2b9
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 95 a2 b8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144024248
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x895a2b9
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 95 a2 b8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 144024248
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x8849edb
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 84 9e d8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 142909144
sd 6:0:5:0: [sdf]  Result: hostbyte=DID\_OK driverbyte=DRIVER\_SENSE
sd 6:0:5:0: [sdf]  Sense Key : Medium Error [current]
Info fld=0x8849edb
sd 6:0:5:0: [sdf]  Add. Sense: Unrecovered read error
sd 6:0:5:0: [sdf] CDB: Read(10): 28 00 08 84 9e d8 00 00 08 00
end\_request: critical medium error, dev sdf, sector 142909144
{noformat}

In-memory fetches start throwing CRC as follows.  

{noformat}
2015-06-11 01:01:03,728 INFO [ShuffleAndMergeRunner [Map\_11]] orderedgrouped.ShuffleScheduler: PendingHosts=[]
2015-06-11 01:01:03,730 INFO [Fetcher [Map\_11] #0] http.HttpConnection: for url=http://cn056-10.l42scl.hortonworks.com:13562/mapOutput?job=job\_1433813751839\_0124&reduce=3&map=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027&keepAlive=true sent hash and receievd reply 0 ms
2015-06-11 01:01:03,730 INFO [Fetcher [Map\_11] #0] orderedgrouped.FetcherOrderedGrouped: fetcher#439 about to shuffle output of map InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=446], attemptNumber=0, pathComponent=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] decomp: 45475 len: 23974 to MEMORY
2015-06-11 01:01:07,206 INFO [Fetcher [Map\_11] #0] impl.IFileInputStream:  CurrentOffset=2510, offset=2510, off=2502, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
2015-06-11 01:01:07,207 INFO [Fetcher [Map\_11] #0] impl.IFileInputStream:  CurrentOffset=2510, offset=2510, off=0, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
2015-06-11 01:01:07,207 WARN [Fetcher [Map\_11] #0] orderedgrouped.FetcherOrderedGrouped: Failed to shuffle output of InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=446], attemptNumber=0, pathComponent=attempt\_1433813751839\_0124\_1\_04\_000446\_0\_10027, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] from cn056-10.l42scl.hortonworks.com:13562
org.apache.hadoop.fs.ChecksumException: Checksum Error:  CurrentOffset=2510, offset=2510, off=2502, dataLength=23966, origLen=21456, len=21456, length=23970, checksumSize=4
	at org.apache.tez.runtime.library.common.sort.impl.IFileInputStream.doRead(IFileInputStream.java:255)
	at org.apache.tez.runtime.library.common.sort.impl.IFileInputStream.read(IFileInputStream.java:185)
	at org.apache.hadoop.io.compress.BlockDecompressorStream.getCompressedData(BlockDecompressorStream.java:127)
	at org.apache.hadoop.io.compress.BlockDecompressorStream.decompress(BlockDecompressorStream.java:98)
	at org.apache.hadoop.io.compress.DecompressorStream.read(DecompressorStream.java:85)
	at org.apache.hadoop.io.IOUtils.readFully(IOUtils.java:192)
	at org.apache.tez.runtime.library.common.sort.impl.IFile$Reader.readToMemory(IFile.java:619)
	at org.apache.tez.runtime.library.common.shuffle.ShuffleUtils.shuffleToMemory(ShuffleUtils.java:113)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.copyMapOutput(FetcherOrderedGrouped.java:471)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.copyFromHost(FetcherOrderedGrouped.java:267)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.fetchNext(FetcherOrderedGrouped.java:164)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.callInternal(FetcherOrderedGrouped.java:177)
	at org.apache.tez.runtime.library.common.shuffle.orderedgrouped.FetcherOrderedGrouped.callInternal(FetcherOrderedGrouped.java:52)
	at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
	at java.util.concurrent.FutureTask.run(FutureTask.java:266)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
	at java.lang.Thread.run(Thread.java:745)
{noformat}

TaskAttemptImpl didn't fail it due to the following code

{noformat}
float failureFraction = ((float) attempt.uniquefailedOutputReports.size())
          / outputFailedEvent.getConsumerTaskNumber();
{noformat}

In this case, reducer ran in 180 slot waves.  So even if all 180 tasks report the error, it would be around 180/1009 = 0.17 (which is less than 0.25 MAX\_ALLOWED\_OUTPUT\_FAILURES\_FRACTION) and the job runs for ever (killed the job after 2 hours; normally run in couple of minutes)

In fetcher side, reducer state would be healthy and it would continue to wait.

Env: Tez master & Hive master
Ref: Query\_88 @ 10 TB scale.


---

* [TEZ-2548](https://issues.apache.org/jira/browse/TEZ-2548) | *Major* | **TezClient submitDAG can hang if the AM is in the process of shutting down**

submitDAG and serviceStop are both synchronized causing submitDAG to be locked out during the shutdown process. 

Seen by [~gopalv]


---

* [TEZ-2546](https://issues.apache.org/jira/browse/TEZ-2546) | *Major* | **Tez UI: Fetch hive query text from timeline if dagInfo is not set**

Followup to TEZ-2453, to make UI backward compatible and display hive queries in order versions.


---

* [TEZ-2545](https://issues.apache.org/jira/browse/TEZ-2545) | *Major* | **It is not necessary to start the vertex group commit when DAG is in TERMINATING**

{noformat}
Failed

org.apache.tez.dag.app.dag.impl.TestCommit.testDAGKilledWhileRunning\_OnVertexSuccess

Failing for the past 2 builds (Since Unstable#3372 )
运行时间：5 秒
Error Message

test timed out after 5000 milliseconds
Stacktrace

java.lang.Exception: test timed out after 5000 milliseconds
	at java.lang.Thread.sleep(Native Method)
	at org.apache.tez.dag.app.dag.impl.TestCommit.waitUntil(TestCommit.java:355)
	at org.apache.tez.dag.app.dag.impl.TestCommit.testDAGKilledWhileRunning\_OnVertexSuccess(TestCommit.java:1652)

Standard Output

2015-06-09 04:12:25,778 INFO  [Thread-43] impl.TestCommit (TestCommit.java:createDAGPlan(401)) - Setting up group dag plan
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.CallableEventType for class org.apache.tez.dag.app.dag.impl.CallableEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.TaskEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$TaskEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.TaskAttemptEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$TaskAttemptEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.VertexEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$VertexEventDispatcher
2015-06-09 04:12:25,782 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.DAGEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$DagEventDispatcher
2015-06-09 04:12:25,783 INFO  [Thread-43] event.AsyncDispatcher (AsyncDispatcher.java:register(200)) - Registering class org.apache.tez.dag.app.dag.event.DAGAppMasterEventType for class org.apache.tez.dag.app.dag.impl.TestCommit$DAGFinishEventHandler
2015-06-09 04:12:25,784 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:setAdditionalOutputs(4497)) - setting additional outputs for vertex vertex2
2015-06-09 04:12:25,784 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:setAdditionalOutputs(4497)) - setting additional outputs for vertex vertex1
2015-06-09 04:12:25,786 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:setAdditionalOutputs(4497)) - setting additional outputs for vertex vertex3
2015-06-09 04:12:25,787 INFO  [Thread-43] impl.DAGImpl (DAGImpl.java:assignDAGScheduler(1488)) - Using DAG Scheduler: org.apache.tez.dag.app.dag.impl.DAGSchedulerNaturalOrder
2015-06-09 04:12:25,788 INFO  [Thread-43] impl.DAGImpl (DAGImpl.java:handle(1100)) - dag\_100\_0001\_1 transitioned from NEW to INITED
2015-06-09 04:12:25,789 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:handle(1100)) - dag\_100\_0001\_1 transitioned from INITED to RUNNING
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:assignVertexManager(2469)) - Setting vertexManager to ImmediateStartVertexManager for vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3246)) - Creating 1 tasks for vertex: vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3258)) - Directly initializing vertex: vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2131)) - Invoking committer inits for vertex, vertexId=vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,790 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2143)) - Instantiating committer for output=v12Out, vertexId=vertex\_100\_0001\_1\_01 [vertex1], committerClass=org.apache.tez.dag.app.dag.impl.TestCommit$CountingOutputCommitter
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2161)) - Invoking committer init for output=v12Out, vertexId=vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2165)) - Invoking committer setup for output=v12Out, vertexId=vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_01 [vertex1] transitioned from NEW to INITED due to event V\_INIT
2015-06-09 04:12:25,791 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:assignVertexManager(2469)) - Setting vertexManager to ImmediateStartVertexManager for vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3246)) - Creating 1 tasks for vertex: vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3258)) - Directly initializing vertex: vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2131)) - Invoking committer inits for vertex, vertexId=vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,792 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2143)) - Instantiating committer for output=v12Out, vertexId=vertex\_100\_0001\_1\_00 [vertex2], committerClass=org.apache.tez.dag.app.dag.impl.TestCommit$CountingOutputCommitter
2015-06-09 04:12:25,793 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2161)) - Invoking committer init for output=v12Out, vertexId=vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2165)) - Invoking committer setup for output=v12Out, vertexId=vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_00 [vertex2] transitioned from NEW to INITED due to event V\_INIT
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_01 [vertex1] transitioned from INITED to RUNNING due to event V\_START
2015-06-09 04:12:25,794 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_00 [vertex2] transitioned from INITED to RUNNING due to event V\_START
2015-06-09 04:12:25,795 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:assignVertexManager(2462)) - Setting vertexManager to ShuffleVertexManager for vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,823 INFO  [AsyncDispatcher event handler] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:initialize(813)) - Shuffle Vertex Manager: settings minFrac:0.25 maxFrac:0.75 auto:false desiredTaskIput:104857600 minTasks:1
2015-06-09 04:12:25,823 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3246)) - Creating 1 tasks for vertex: vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,826 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handleInitEvent(3258)) - Directly initializing vertex: vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,826 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2131)) - Invoking committer inits for vertex, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,826 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:initializeCommitters(2143)) - Instantiating committer for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3], committerClass=org.apache.tez.dag.app.dag.impl.TestCommit$CountingOutputCommitter
2015-06-09 04:12:25,827 INFO  [App Shared Pool - #0] impl.ImmediateStartVertexManager (ImmediateStartVertexManager.java:scheduleTasks(99)) - Starting 1 in vertex1
2015-06-09 04:12:25,827 INFO  [App Shared Pool - #1] impl.ImmediateStartVertexManager (ImmediateStartVertexManager.java:scheduleTasks(99)) - Starting 1 in vertex2
2015-06-09 04:12:25,827 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2161)) - Invoking committer init for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,827 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(2165)) - Invoking committer setup for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,828 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from NEW to INITED due to event V\_INIT
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3407)) - Source vertex started: vertex\_100\_0001\_1\_01 for vertex: vertex\_100\_0001\_1\_02 [vertex3] numStartedSources: 1 numSources: 2
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3412)) - Cannot start vertex: vertex\_100\_0001\_1\_02 [vertex3] numStartedSources: 1 numSources: 2
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3407)) - Source vertex started: vertex\_100\_0001\_1\_00 for vertex: vertex\_100\_0001\_1\_02 [vertex3] numStartedSources: 2 numSources: 2
2015-06-09 04:12:25,829 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:startIfPossible(3293)) - Triggering start event for vertex: vertex\_100\_0001\_1\_02 [vertex3] with distanceFromRoot: 1
2015-06-09 04:12:25,830 INFO  [AsyncDispatcher event handler] impl.TaskImpl (TaskImpl.java:handle(899)) - task\_100\_0001\_1\_01\_000000 Task Transitioned from NEW to SCHEDULED due to event T\_SCHEDULE
2015-06-09 04:12:25,830 INFO  [AsyncDispatcher event handler] impl.TaskImpl (TaskImpl.java:handle(899)) - task\_100\_0001\_1\_00\_000000 Task Transitioned from NEW to SCHEDULED due to event T\_SCHEDULE
2015-06-09 04:12:25,830 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from INITED to RUNNING due to event V\_START
2015-06-09 04:12:25,831 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:transition(3817)) - Num completed Tasks for vertex\_100\_0001\_1\_01 [vertex1] : 1
2015-06-09 04:12:25,831 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1955)) - Checking tasks for vertex completion for vertex\_100\_0001\_1\_01 [vertex1], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,832 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1983)) - All tasks are succeeded, vertex:vertex\_100\_0001\_1\_01 [vertex1]
2015-06-09 04:12:25,832 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_01 [vertex1] transitioned from RUNNING to SUCCEEDED due to event V\_TASK\_COMPLETED
2015-06-09 04:12:25,832 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:transition(1883)) - Vertex vertex\_100\_0001\_1\_01 [vertex1] completed., numCompletedVertices=1, numSuccessfulVertices=1, numFailedVertices=0, numKilledVertices=0, numVertices=3
2015-06-09 04:12:25,834 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:checkVerticesForCompletion(1178)) - Checking vertices for DAG completion, numCompletedVertices=1, numSuccessfulVertices=1, numFailedVertices=0, numKilledVertices=0, numVertices=3, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,833 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:transition(3817)) - Num completed Tasks for vertex\_100\_0001\_1\_00 [vertex2] : 1
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1955)) - Checking tasks for vertex completion for vertex\_100\_0001\_1\_00 [vertex2], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1983)) - All tasks are succeeded, vertex:vertex\_100\_0001\_1\_00 [vertex2]
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_00 [vertex2] transitioned from RUNNING to SUCCEEDED due to event V\_TASK\_COMPLETED
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:transition(3817)) - Num completed Tasks for vertex\_100\_0001\_1\_02 [vertex3] : 1
2015-06-09 04:12:25,834 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1955)) - Checking tasks for vertex completion for vertex\_100\_0001\_1\_02 [vertex3], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=null
2015-06-09 04:12:25,835 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:checkTasksForCompletion(1983)) - All tasks are succeeded, vertex:vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:commitOrFinish(1907)) - Invoking committer commit for vertex, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from RUNNING to COMMITTING due to event V\_TASK\_COMPLETED
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.DAGImpl (DAGImpl.java:handle(1100)) - dag\_100\_0001\_1 transitioned from RUNNING to TERMINATING
2015-06-09 04:12:25,836 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:25,834 INFO  [App Shared Pool - #1] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:onVertexStarted(467)) - OnVertexStarted vertex: vertex3 with 2 source tasks and 1 pending tasks
2015-06-09 04:12:25,836 INFO  [App Shared Pool - #0] impl.VertexImpl (VertexImpl.java:run(1930)) - Invoking committer commit for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:vertexSucceeded(1943)) - All members of group: uv12 are succeeded. Commiting outputs
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:transition(1883)) - Vertex vertex\_100\_0001\_1\_00 [vertex2] completed., numCompletedVertices=2, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=0, numVertices=3
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:checkVerticesForCompletion(1178)) - Checking vertices for DAG completion, numCompletedVertices=2, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=0, numVertices=3, commitInProgress=1, terminationCause=DAG\_KILL
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:transition(3710)) - Vertex received Kill while in COMMITTING state, terminationCause=DAG\_KILL, vertex=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:cancelCommits(3979)) - Canceling commit of output:v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,838 INFO  [App Shared Pool - #2] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:handleVertexStateUpdate(837)) - Received configured notification : CONFIGURED for vertex: vertex1 in vertex: vertex3
2015-06-09 04:12:25,838 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from COMMITTING to TERMINATING due to event V\_TERMINATE
2015-06-09 04:12:25,839 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:commitCompleted(3959)) - Commit failed for output:v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3], java.util.concurrent.CancellationException
	at java.util.concurrent.FutureTask$Sync.innerGet(FutureTask.java:250)
	at java.util.concurrent.FutureTask.get(FutureTask.java:111)
	at com.google.common.util.concurrent.Uninterruptibles.getUninterruptibly(Uninterruptibles.java:132)
	at com.google.common.util.concurrent.Futures$6.run(Futures.java:974)
	at com.google.common.util.concurrent.MoreExecutors$SameThreadExecutorService.execute(MoreExecutors.java:253)
	at com.google.common.util.concurrent.ExecutionList$RunnableExecutorPair.execute(ExecutionList.java:149)
	at com.google.common.util.concurrent.ExecutionList.execute(ExecutionList.java:134)
	at com.google.common.util.concurrent.ListenableFutureTask.done(ListenableFutureTask.java:86)
	at java.util.concurrent.FutureTask$Sync.innerCancel(FutureTask.java:322)
	at java.util.concurrent.FutureTask.cancel(FutureTask.java:104)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.cancelCommits(VertexImpl.java:3980)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.access$5600(VertexImpl.java:199)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$VertexKilledWhileCommittingTransition.transition(VertexImpl.java:3713)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$VertexKilledWhileCommittingTransition.transition(VertexImpl.java:3701)
	at org.apache.hadoop.yarn.state.StateMachineFactory$SingleInternalArc.doTransition(StateMachineFactory.java:362)
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1799)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:198)
	at org.apache.tez.dag.app.dag.impl.TestCommit$VertexEventDispatcher.handle(TestCommit.java:168)
	at org.apache.tez.dag.app.dag.impl.TestCommit$VertexEventDispatcher.handle(TestCommit.java:162)
	at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:175)
	at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:108)
	at java.lang.Thread.run(Thread.java:722)

2015-06-09 04:12:25,839 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:checkCommitsForCompletion(2001)) - Checking commits for vertex completion for vertex\_100\_0001\_1\_02 [vertex3], numTasks=1, failedTaskCount=0, killedTaskCount=0, successfulTaskCount=1, completedTaskCount=1, commitInProgress=0, terminationCause=DAG\_KILL
2015-06-09 04:12:25,840 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:finishWithTerminationCause(2038)) - Vertex did not succeed due to DAG\_KILL, failedTasks:0 killedTasks:0
2015-06-09 04:12:25,840 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:abortVertex(3556)) - Invoking committer abort for vertex, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,840 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:run(3563)) - Invoking committer abort for output=v3Out, vertexId=vertex\_100\_0001\_1\_02 [vertex3]
2015-06-09 04:12:25,841 INFO  [AsyncDispatcher event handler] impl.VertexImpl (VertexImpl.java:handle(1812)) - vertex\_100\_0001\_1\_02 [vertex3] transitioned from TERMINATING to KILLED due to event V\_COMMIT\_COMPLETED
2015-06-09 04:12:25,842 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:transition(1883)) - Vertex vertex\_100\_0001\_1\_02 [vertex3] completed., numCompletedVertices=3, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=1, numVertices=3
2015-06-09 04:12:25,842 INFO  [AsyncDispatcher event handler] impl.DAGImpl (DAGImpl.java:checkVerticesForCompletion(1178)) - Checking vertices for DAG completion, numCompletedVertices=3, numSuccessfulVertices=2, numFailedVertices=0, numKilledVertices=1, numVertices=3, commitInProgress=1, terminationCause=DAG\_KILL
2015-06-09 04:12:25,838 INFO  [App Shared Pool - #3] impl.DAGImpl (DAGImpl.java:call(1971)) - Committing output: v12Out
2015-06-09 04:12:25,840 INFO  [App Shared Pool - #0] vertexmanager.ShuffleVertexManager (ShuffleVertexManager.java:handleVertexStateUpdate(837)) - Received configured notification : CONFIGURED for vertex: vertex2 in vertex: vertex3
2015-06-09 04:12:25,936 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:25,943 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,039 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,044 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,141 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,144 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,242 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,245 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,342 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,345 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,443 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,446 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,544 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,547 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,644 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,647 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,745 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,749 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,846 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,849 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:26,947 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:26,950 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,048 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,050 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,148 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,151 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,249 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,252 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,349 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,353 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,450 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,454 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,550 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,555 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,651 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,656 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,752 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,757 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,852 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,857 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:27,953 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:27,958 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,053 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,058 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,155 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,159 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,256 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,259 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,356 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,360 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,457 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,462 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,557 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,562 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,658 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,663 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,759 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,763 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,859 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,864 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:28,960 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:28,966 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,061 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,067 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,162 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,168 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,262 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,268 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,363 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,369 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,464 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,469 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,565 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,570 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,666 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,671 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,766 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,771 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,869 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,872 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:29,970 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:29,972 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,072 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,073 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,173 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,174 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,274 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,275 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,376 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,376 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,476 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,476 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,577 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,577 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,678 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,679 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,786 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
2015-06-09 04:12:30,808 INFO  [App Shared Pool - #3] impl.TestCommit (TestCommit.java:commitOutput(234)) - committing output:v12Out
2015-06-09 04:12:30,815 INFO  [Thread-43] impl.TestCommit (TestCommit.java:waitUntil(353)) - Wait for dag go to state:KILLED
Standard Error

java.lang.InterruptedException: sleep interrupted
	at java.lang.Thread.sleep(Native Method)
	at org.apache.tez.dag.app.dag.impl.TestCommit.waitUntil(TestCommit.java:355)
	at org.apache.tez.dag.app.dag.impl.TestCommit.testDAGKilledWhileRunning\_OnVertexSuccess(TestCommit.java:1652)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:601)
	at org.junit.runners.model.FrameworkMethod$1.runReflectiveCall(FrameworkMethod.java:47)
	at org.junit.internal.runners.model.ReflectiveCallable.run(ReflectiveCallable.java:12)
	at org.junit.runners.model.FrameworkMethod.invokeExplosively(FrameworkMethod.java:44)
	at org.junit.internal.runners.statements.InvokeMethod.evaluate(InvokeMethod.java:17)
	at org.junit.internal.runners.statements.FailOnTimeout$StatementThread.run(FailOnTimeout.java:74)
{noformat}


---

* [TEZ-2542](https://issues.apache.org/jira/browse/TEZ-2542) | *Minor* | **TezDAGID fromString array length check**

When invalid DAG Id passed

>java -cp tez-history-parser-0.8.0-SNAPSHOT-jar-with-dependencies.jar org.apache.tez.history.ATSImportTool --dagId dag\_1433663662240\_0001 --downloadDir /tmp/history/
java.lang.ArrayIndexOutOfBoundsException: 3
	at org.apache.tez.dag.records.TezDAGID.fromString(TezDAGID.java:185)
	at org.apache.tez.history.ATSImportTool.<init>(ATSImportTool.java:133)
	at org.apache.tez.history.ATSImportTool.process(ATSImportTool.java:452)
	at org.apache.tez.history.ATSImportTool.main(ATSImportTool.java:476)


---

* [TEZ-2534](https://issues.apache.org/jira/browse/TEZ-2534) | *Major* | **Error handling summary event when shutting down AM**

When AM is shutting down, it will close the summary stream, but there may be still some events in the queue which will cause exception when handling summary event. And this would cause the next AM fail to recover the running dag. 
One way to resolve this issue is to always drain the events in the queue before closing the summary stream (set drainEventsFlag as true), but this flag may be useful in unit test. 
{noformat}
2015-06-03 16:37:15,761 INFO [Thread-1] app.DAGAppMaster: DAGAppMasterShutdownHook invoked
2015-06-03 16:37:15,761 INFO [Thread-1] app.DAGAppMaster: DAGAppMaster received a signal. Signaling TaskScheduler
2015-06-03 16:37:15,761 INFO [Thread-1] rm.TaskSchedulerEventHandler: TaskScheduler notified that iSignalled was : true
2015-06-03 16:37:15,762 INFO [Thread-1] history.HistoryEventHandler: Stopping HistoryEventHandler
2015-06-03 16:37:15,762 INFO [Thread-1] recovery.RecoveryService: Stopping RecoveryService
2015-06-03 16:37:15,762 INFO [Thread-1] recovery.RecoveryService: Closing Summary Stream
2015-06-03 16:37:15,772 INFO [Thread-1] recovery.RecoveryService: Closing Output Stream for DAG dag\_1433320263267\_0019\_1
2015-06-03 16:37:15,773 ERROR [Dispatcher thread: Central] recovery.RecoveryService: Error handling summary event, eventType=VERTEX\_FINISHED
java.nio.channels.ClosedChannelException
	at org.apache.hadoop.hdfs.DFSOutputStream.checkClosed(DFSOutputStream.java:1622)
	at org.apache.hadoop.fs.FSOutputSummer.write(FSOutputSummer.java:104)
	at org.apache.hadoop.fs.FSDataOutputStream$PositionCache.write(FSDataOutputStream.java:58)
	at java.io.DataOutputStream.write(DataOutputStream.java:107)
	at com.google.protobuf.CodedOutputStream.refreshBuffer(CodedOutputStream.java:833)
	at com.google.protobuf.CodedOutputStream.flush(CodedOutputStream.java:843)
	at com.google.protobuf.AbstractMessageLite.writeDelimitedTo(AbstractMessageLite.java:91)
	at org.apache.tez.dag.history.events.VertexFinishedEvent.toSummaryProtoStream(VertexFinishedEvent.java:207)
	at org.apache.tez.dag.history.recovery.RecoveryService.handleSummaryEvent(RecoveryService.java:373)
	at org.apache.tez.dag.history.recovery.RecoveryService.handle(RecoveryService.java:285)
	at org.apache.tez.dag.history.HistoryEventHandler.handleCriticalEvent(HistoryEventHandler.java:105)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.logJobHistoryVertexCompletedHelper(VertexImpl.java:1890)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.logJobHistoryVertexFinishedEvent(VertexImpl.java:1869)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.finished(VertexImpl.java:2107)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.finished(VertexImpl.java:2125)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.checkTasksForCompletion(VertexImpl.java:1989)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$TaskCompletedTransition.transition(VertexImpl.java:3833)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$TaskCompletedTransition.transition(VertexImpl.java:1)
	at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:385)
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1799)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1954)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1)
	at org.apache.tez.common.AsyncDispatcher.dispatch(AsyncDispatcher.java:183)
	at org.apache.tez.common.AsyncDispatcher$1.run(AsyncDispatcher.java:114)
	at java.lang.Thread.run(Thread.java:745)
2015-06-03 16:37:15,775 ERROR [Dispatcher thread: Central] recovery.RecoveryService: Adding a flag to ensure next AM attempt does not start up, flagFile=hdfs://localhost:58857/tmp/owc-staging-dir/.tez/application\_1433320263267\_0019/recovery/1/RecoveryFatalErrorOccurred
2015-06-03 16:37:15,781 ERROR [Dispatcher thread: Central] recovery.RecoveryService: Recovery failure occurred. Skipping all events
2015-06-03 16:37:15,781 INFO [HistoryEventHandlingThread] impl.SimpleHistoryLoggingService: Writing event VERTEX\_FINISHED to history file
{noformat}


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

* [TEZ-2513](https://issues.apache.org/jira/browse/TEZ-2513) | *Major* | **Tez UI: Allow filtering by DAG ID on All dags table**

On using the filter display the record with the specific id, if not available display a No Records found message.


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

* [TEZ-2496](https://issues.apache.org/jira/browse/TEZ-2496) | *Major* | **Consider scheduling tasks in ShuffleVertexManager based on the partition sizes from the source**

Consider scheduling tasks in ShuffleVertexManager based on the partition sizes from the source.  This would be helpful in scenarios, where there is limited resources (or concurrent jobs running or multiple waves) with dataskew and the task which gets large amount of data gets sceheduled much later.

e.g Consider the following hive query running in a queue with limited capacity (42 slots in total) @ 200 GB scale

{noformat}
CREATE TEMPORARY TABLE sampleData AS
  SELECT CASE
           WHEN ss\_sold\_time\_sk IS NULL THEN 70429
           ELSE ss\_sold\_time\_sk
       END AS ss\_sold\_time\_sk,
       ss\_item\_sk,
       ss\_customer\_sk,
       ss\_cdemo\_sk,
       ss\_hdemo\_sk,
       ss\_addr\_sk,
       ss\_store\_sk,
       ss\_promo\_sk,
       ss\_ticket\_number,
       ss\_quantity,
       ss\_wholesale\_cost,
       ss\_list\_price,
       ss\_sales\_price,
       ss\_ext\_discount\_amt,
       ss\_ext\_sales\_price,
       ss\_ext\_wholesale\_cost,
       ss\_ext\_list\_price,
       ss\_ext\_tax,
       ss\_coupon\_amt,
       ss\_net\_paid,
       ss\_net\_paid\_inc\_tax,
       ss\_net\_profit,
       ss\_sold\_date\_sk
  FROM store\_sales distribute by ss\_sold\_time\_sk;
{noformat}

This generated 39 maps and 134 reduce slots (3 reduce waves). When lots of nulls are there for ss\_sold\_time\_sk, it would tend to have data skew towards 70429.  If the reducer which gets this data gets scheduled much earlier (i.e in first wave itself), entire job would finish fast.


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

* [TEZ-2475](https://issues.apache.org/jira/browse/TEZ-2475) | *Major* | **Tez local mode hanging in big testsuite**

we have a big test suite for lingual, our SQL layer for cascading. We are trying very hard to make it work correctly on Tez, but I am stuck:

The setup is a huge suite of SQL based tests (6000+), which are being executed in order in local mode. At certain moments the whole process just stops. Nothing gets executed any longer. This is not all the time, but quite often. Note that it is not happening at the same line of code, more at random, which makes it quite complex to debug.

What I am seeing, is these kind of stacktraces in the middle of the run:

2015-05-21 16:07:42,413 ERROR [TaskHeartbeatThread] task.TezTaskRunner (TezTaskRunner.java:reportError(333)) - TaskReporter reported error
    java.lang.InterruptedException
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.reportInterruptAfterWait(AbstractQueuedSynchronizer.java:2017)
        at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2188)
        at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.call(TaskReporter.java:187)
        at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.call(TaskReporter.java:118)
        at java.util.concurrent.FutureTask.run(FutureTask.java:262)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
        at java.lang.Thread.run(Thread.java:745)

This looks like it could be related to the hang, but the hang is not happening immediately afterwards, but some time later.

I have gone through quite a few JIRAs and saw that there were problems with locks and hanging threads before, which should be fixed, but it still happens.

I have tried 0.6.1 and 0.7.0. Both show the same behaviour.

This gist contains a thread dump of a hanging build: https://gist.github.com/fs111/1ee44469bf5cc31e5a52


---

* [TEZ-2473](https://issues.apache.org/jira/browse/TEZ-2473) | *Major* | **Consider using RawLocalFileSystem in MapOutput.createDiskMapOutput**

Currently it makes use of LocalFileSystem which would go through checksumming. This can save some CPU cycles in tasks involving disk merges.


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

* [TEZ-2378](https://issues.apache.org/jira/browse/TEZ-2378) | *Major* | **In case Fetcher (unordered) fails to do local fetch, log in debug mode to reduce log size**

Following can be logged as debug mode as opposed to WARN level. May be counters can be added later to track the number of times it failed to do local-fetch.

{noformat}
2015-04-28 05:41:45,487 WARN [Fetcher [Map\_5] #15] shuffle.Fetcher: Failed to shuffle output of InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=81], attemptNumber=0, pathComponent=attempt\_1429683757595\_0485\_1\_03\_000081\_0\_10003, fetchTypeInfo=FINAL\_MERGE\_ENABLED, spillEventId=-1] from cn047-10.l42scl.hortonworks.com(local fetch)
org.apache.hadoop.util.DiskChecker$DiskErrorException: Could not find output/attempt\_1429683757595\_0485\_1\_03\_000081\_0\_10003/file.out.index in any of the configured local directories
        at org.apache.hadoop.fs.LocalDirAllocator$AllocatorPerContext.getLocalPathToRead(LocalDirAllocator.java:449)
        at org.apache.hadoop.fs.LocalDirAllocator.getLocalPathToRead(LocalDirAllocator.java:164)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.getShuffleInputFileName(Fetcher.java:612)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.getTezIndexRecord(Fetcher.java:592)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.doLocalDiskFetch(Fetcher.java:537)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.doSharedFetch(Fetcher.java:353)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:192)
        at org.apache.tez.runtime.library.common.shuffle.Fetcher.callInternal(Fetcher.java:72)
        at org.apache.tez.common.CallableWithNdc.call(CallableWithNdc.java:36)
        at java.util.concurrent.FutureTask.run(FutureTask.java:266)
        at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1142)
        at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:617)
        at java.lang.Thread.run(Thread.java:745)
{noformat}


---

* [TEZ-2376](https://issues.apache.org/jira/browse/TEZ-2376) | *Major* | **Remove TaskAttemptEventType.TA\_DIAGNOSTICS\_UPDATE**

It is never used.


---

* [TEZ-2291](https://issues.apache.org/jira/browse/TEZ-2291) | *Major* | **TEZ UI: Improper vertex name in tables.**

-1. Counters values are not getting displayed in tables.-
2. There is probably a race condition where the vertex name does not get displayed - reproduction - go to all tasks page of one dag, go back to all dags, go to another dag all tasks, check if the vertex name is getting displayed. at times i was seeing vertex id instead. a refresh would show the vertex name.


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

* [TEZ-2048](https://issues.apache.org/jira/browse/TEZ-2048) | *Blocker* | **Remove VertexManagerPluginContext.getTaskContainer()**

This should have been removed earlier. It exposes internal execution details that may not be safe to provide to user code.


---

* [TEZ-1970](https://issues.apache.org/jira/browse/TEZ-1970) | *Major* | **Fix javadoc warnings in SortMergeJoinExample**

test-patch reports 3 existing javadoc warnings.


---

* [TEZ-1961](https://issues.apache.org/jira/browse/TEZ-1961) | *Critical* | **Remove misleading exception "No running dag" from AM logs**

{code}
15/01/14 16:45:06 INFO ipc.Server: IPC Server handler 0 on 51000, call org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPB.getDAGStatus from  Call#0 Retry#0
org.apache.tez.dag.api.TezException: No running dag at present
	at org.apache.tez.dag.api.client.DAGClientHandler.getDAG(DAGClientHandler.java:84)
	at org.apache.tez.dag.api.client.DAGClientHandler.getACLManager(DAGClientHandler.java:151)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:94)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:617)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:962)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2041)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2037)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1657)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2035)
15/01/14 16:45:06 INFO client.DAGClientImpl: DAG initialized: CurrentState=Running
{code}

This exception shows up fairly often and isn't very relevant - queries before a DAG is submitted to the AM.
This is very misleading, especially for folks new to Tez, and should be removed.


---

* [TEZ-1752](https://issues.apache.org/jira/browse/TEZ-1752) | *Major* | **Inputs / Outputs in the Runtime library should be interruptable**

Not possible to preempt tasks without killing containers without this.

There's still the problem of Processors not supporting interrupts. We may need API enhancements to either query IPOs on whether they are interrupbtible.


---

* [TEZ-1529](https://issues.apache.org/jira/browse/TEZ-1529) | *Blocker* | **ATS and TezClient integration  in secure kerberos enabled cluster**

This is a follow up for TEZ-1495 which address ATS - TezClient integration. however it does not enable it  in secure kerberos enabled cluster.



