
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
# Apache Tez  0.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, important issues, features, and major improvements.


---

* [TEZ-1631](https://issues.apache.org/jira/browse/TEZ-1631) | *Major* | **Session dag submission timeout can result in duplicate DAG submissions**

In TezSession.submitDAG() we could first check if the session is ready and throw a SessionNotRunning exception if that is not the case. This should be done before processing the DAG and thus will prevent unnecessary modification of the DAG.
If the session is ready then we can submit the DAG as usual. Higher level components already handle SessionNotRunning exception.


---

* [TEZ-1517](https://issues.apache.org/jira/browse/TEZ-1517) | *Critical* | **Avoid sending routed events via the AsyncDispatcher**

Sending them via the queue ends up creating lots of unnecesaary objects (millions for a large job), as well as blocking the queue.

Eventually, event routing should be handed over to a separate thread - so that the asyncdispatcher is unblocked to continue operations like launching tasks, etc.


---

* [TEZ-1512](https://issues.apache.org/jira/browse/TEZ-1512) | *Major* | **VertexImpl.getTask(int) can be CPU intensive when lots of tasks are present in the vertex**

 I tried a synthetic benchmark (without much input data) with the tez app.  This was tried to understand the bare minimum time taken by Tez for container launch / reuse / scheduling etc.

Profiling DAGAppMaster showed that lots of CPU time was spent on VertexImpl.getTask(int) which gets accessed as a part of event handling and transitions.  

This problem would more prevalent in large jobs which has got lots of small tasks.

I will attach the perf SVG output of the DAG soon.


---

* [TEZ-1511](https://issues.apache.org/jira/browse/TEZ-1511) | *Blocker* | **MROutputConfigBuilder sets OutputFormat as String class if OutputFormat is not provided**

Code uses: 

{code}
          this.outputFormat = ReflectionUtils.getClass(conf.get(MRJobConfig.OUTPUT\_FORMAT\_CLASS\_ATTR));
        } else {
          this.outputFormat = ReflectionUtils.getClass(conf.get("mapred.output.format.class"));
{code}

where ReflectionUtils has :

{code}
\<T\> Class\<T\> getClass(T o)
{code}


---

* [TEZ-1510](https://issues.apache.org/jira/browse/TEZ-1510) | *Blocker* | **TezConfiguration should not add tez-site.xml as a default resource.**

Currently on the first construction of a TezConfiguration, tez-site.xml gets added a static resource for all future Configuration objects.


---

* [TEZ-1509](https://issues.apache.org/jira/browse/TEZ-1509) | *Major* | **Set a useful default value for java opts**

A subset of the following should be considered for the defaults:

-server -XX:+UseCompressedStrings -Djava.net.preferIPv4Stack=true -XX:+PrintGCDetails -verbose:gc -XX:+PrintGCTimeStamps -XX:+UseNUMA -XX:+UseParallelGC


---

* [TEZ-1500](https://issues.apache.org/jira/browse/TEZ-1500) | *Blocker* | **DAG should be created via a create method**

TEZ-1246 seems to have missed DAG.


---

* [TEZ-1498](https://issues.apache.org/jira/browse/TEZ-1498) | *Major* | **Usage info is not printed when wrong number of arguments is provided for JoinExample**

If no arguments is provided, it should print the usage info rather than throw exception as following
{code}
14/08/26 12:36:23 INFO examples.JoinExample: Running JoinExample
java.lang.ArrayIndexOutOfBoundsException: 0
	at org.apache.tez.examples.JoinExample.execute(JoinExample.java:165)
	at org.apache.tez.examples.JoinExample.execute(JoinExample.java:138)
	at org.apache.tez.examples.JoinExample.run(JoinExample.java:112)
	at org.apache.hadoop.util.ToolRunner.run(ToolRunner.java:70)
	at org.apache.tez.examples.JoinExample.main(JoinExample.java:94)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.ProgramDriver$ProgramDescription.invoke(ProgramDriver.java:72)
	at org.apache.hadoop.util.ProgramDriver.run(ProgramDriver.java:145)
	at org.apache.tez.examples.ExampleDriver.main(ExampleDriver.java:59)
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at org.apache.hadoop.util.RunJar.main(RunJar.java:212)
{code}


---

* [TEZ-1496](https://issues.apache.org/jira/browse/TEZ-1496) | *Blocker* | **Multi MR inputs can not be configured without accessing internal proto structures**

With all the new API changes, the multi-mr input can no longer be configured cleanly without accessing internal structures in tez.


---

* [TEZ-1493](https://issues.apache.org/jira/browse/TEZ-1493) | *Blocker* | **Tez examples sometimes fail in cases where AM recovery kicks in**

{code}
14/08/25 17:37:03 INFO client.TezClient: Submitting DAG to YARN, applicationId=application\_1408499461970\_0053, dagName=WordCount
14/08/25 17:37:03 INFO impl.YarnClientImpl: Submitted application application\_1408499461970\_0053
14/08/25 17:37:03 INFO client.TezClient: The url to track the Tez AM: http://jzhangMBPr.local:8088/proxy/application\_1408499461970\_0053/
14/08/25 17:37:03 INFO client.RMProxy: Connecting to ResourceManager at /0.0.0.0:8032
14/08/25 17:37:03 INFO client.AHSProxy: Connecting to Application History server at /0.0.0.0:10200
14/08/25 17:37:03 INFO rpc.DAGClientRPCImpl: Waiting for DAG to start running
14/08/25 17:37:07 INFO rpc.DAGClientRPCImpl: DAG: State: RUNNING Progress: 0% TotalTasks: 2 Succeeded: 0 Running: 0 Failed: 0 Killed: 0
14/08/25 17:37:15 INFO rpc.DAGClientRPCImpl: DAG: State: RUNNING Progress: 50% TotalTasks: 2 Succeeded: 1 Running: 0 Failed: 0 Killed: 0
14/08/25 17:37:17 INFO rpc.DAGClientRPCImpl: DAG completed. FinalState=SUBMITTED
WordCount failed with diagnostics: []
{code}

The client side shows that the job is failed, but checking the logs found that the recovery works in server side, and eventually finish the job successfully.


---

* [TEZ-1490](https://issues.apache.org/jira/browse/TEZ-1490) | *Major* | **dagid reported is incorrect in TezClient.java**

The format used to get the dagid and appid in TezClient.java does not match the one used in TezDagId.java.
ex. 
TezClient.java reports dagid as  dag\_1408740248751\_3\_000001
The dagid as reported in logs is dag\_1408740248751\_0003\_1


---

* [TEZ-1486](https://issues.apache.org/jira/browse/TEZ-1486) | *Major* | **TezUncheckedException when using dynamic partition pruning**

I'm working on using the AM event mechanism to dynamically prune partitions at DAG runtime for certain queries. The query is:

select count(\*) from srcpart join srcpart\_double\_hour on (srcpart.hr\*2 = srcpart\_double\_hour.hr) where srcpart\_double\_hour.hour = 11;

This will result in two vertices connected through a broadcast edge. The vertex prepares two things: The list of partition keys (hr) that are being sent to the AM for dynamic pruning and the records to be used in the hash join.

The second vertex will block until all events are received (initializer) then it will load and process the hash join.

It's possible for queries like this to result in zero splits on the second vertex (i.e.: no matching rows for the join)

The exception I get when this is run is:

org.apache.tez.dag.api.TezUncheckedException: Event must be routed. sourceVertex=vertex\_1408686217936\_0003\_3\_00 srcIndex = 0 destAttemptId=vertex\_1408686217936\_0003\_3\_01 edgeManager=org.apache.tez.dag.app.dag.impl.BroadcastEdgeManager Ev\
ent type=DATA\_MOVEMENT\_EVENT
  at org.apache.tez.dag.app.dag.impl.Edge.sendTezEventToDestinationTasks(Edge.java:371)
  at org.apache.tez.dag.app.dag.impl.VertexImpl$RouteEventTransition.transition(VertexImpl.java:3372)
  at org.apache.tez.dag.app.dag.impl.VertexImpl.scheduleTasks(VertexImpl.java:1088)
  at org.apache.tez.dag.app.dag.impl.VertexManager$VertexManagerPluginContextImpl.scheduleVertexTasks(VertexManager.java:111)
  at org.apache.tez.dag.app.dag.impl.ImmediateStartVertexManager.onVertexStarted(ImmediateStartVertexManager.java:49)
  at org.apache.tez.dag.app.dag.impl.VertexManager.onVertexStarted(VertexManager.java:244)
  at org.apache.tez.dag.app.dag.impl.VertexImpl.startVertex(VertexImpl.java:2923)
  at org.apache.tez.dag.app.dag.impl.VertexImpl.access$5900(VertexImpl.java:169)
  at org.apache.tez.dag.app.dag.impl.VertexImpl$StartTransition.transition(VertexImpl.java:2914)
  at org.apache.tez.dag.app.dag.impl.VertexImpl$StartTransition.transition(VertexImpl.java:2906)
  at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:385)
  at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
  at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
  at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1355)
  at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:168)
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1650)
  at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1636)
  at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:173)
  at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:106)
  at java.lang.Thread.run(Thread.java:695)


---

* [TEZ-1481](https://issues.apache.org/jira/browse/TEZ-1481) | *Major* | **Flaky test : org.apache.tez.dag.api.client.TestDAGClientHandler.testDAGClientHandler**

Tests run: 1, Failures: 0, Errors: 1, Skipped: 0, Time elapsed: 1.146 sec \<\<\< FAILURE!
testDAGClientHandler(org.apache.tez.dag.api.client.TestDAGClientHandler)  Time elapsed: 1.022 sec  \<\<\< ERROR!
java.lang.Exception: test timed out after 1000 milliseconds
	at java.lang.ClassLoader.findBootstrapClass(Native Method)
	at java.lang.ClassLoader.findBootstrapClassOrNull(ClassLoader.java:1070)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:414)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:412)
	at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:308)
	at java.lang.ClassLoader.loadClass(ClassLoader.java:358)
	at org.mockito.internal.invocation.ArgumentsProcessor.argumentsToMatchers(ArgumentsProcessor.java:47)
	at org.mockito.internal.invocation.InvocationMatcher.\<init\>(InvocationMatcher.java:31)
	at org.mockito.internal.invocation.MatchersBinder.bindMatchers(MatchersBinder.java:26)
	at org.mockito.internal.handler.MockHandlerImpl.handle(MockHandlerImpl.java:58)
	at org.mockito.internal.handler.NullResultGuardian.handle(NullResultGuardian.java:29)
	at org.mockito.internal.handler.InvocationNotifierHandler.handle(InvocationNotifierHandler.java:38)
	at org.mockito.internal.creation.MethodInterceptorFilter.intercept(MethodInterceptorFilter.java:51)
	at org.apache.tez.dag.app.dag.DAG$$EnhancerByMockitoWithCGLIB$$f69fe3f9.getDAGStatus(\<generated\>)
	at org.apache.tez.dag.api.client.DAGClientHandler.getDAGStatus(DAGClientHandler.java:57)
	at org.apache.tez.dag.api.client.TestDAGClientHandler.testDAGClientHandler(TestDAGClientHandler.java:78)

Mostly related to timeout value of 1000ms.


---

* [TEZ-1476](https://issues.apache.org/jira/browse/TEZ-1476) | *Critical* | **DAGClient waitForCompletion output is confusing**

When a DAG is submitted - "2014-08-21 16:38:06,153 INFO  [main] rpc.DAGClientRPCImpl (DAGClientRPCImpl.java:log(428)) - Waiting for DAG to start running" is logged.

After this, nothing seems to get logged till the first task completes.

It would be useful to log when the state changes to RUNNING - as well as at least one line stating the number of tasks, etc (0% progress line). Also, progress could be logged every few seconds irrespective of whether it has changed or not to give the impression that the job has not just gotten stuck.


---

* [TEZ-1475](https://issues.apache.org/jira/browse/TEZ-1475) | *Major* | **Fix HDFS commands in INSTALL.txt**

1. wiki should be fixed to match INSTALL.txt from git 
wiki - http://tez.apache.org/install\_0\_5\_0.html
git - https://github.com/apache/tez/blob/master/INSTALL.txt
e.g. wiki still has -archive tar.gz in item #iii hadoop dfs -copyFromLocal tez-dist/target/tez-0.5.0-SNAPSHOT-archive.tar.gz /apps/tez-0.5.0-SNAPSHOT/

2. we should use "hadoop fs" or "hdfs dfs" but not "hadoop dfs" because it's deprecated.

3. "put" is shorter than "copyFromLocal"


---

* [TEZ-1474](https://issues.apache.org/jira/browse/TEZ-1474) | *Major* | **detect missing native libraries for compression at the beginning of a task rather than at the end.**

when compression is enabled if native libraries are missing, the error is thrown in task::close instead of task::init causing the task to process all of its data and then fail at the end when the first spill happened.


---

* [TEZ-1472](https://issues.apache.org/jira/browse/TEZ-1472) | *Major* | **Separate method calls for creating InputDataInformationEvent with serialized/unserialized payloads**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1471](https://issues.apache.org/jira/browse/TEZ-1471) | *Major* | **Additional supplement for TEZ local mode document**

some supplements for Local mode document


---

* [TEZ-1469](https://issues.apache.org/jira/browse/TEZ-1469) | *Blocker* | **AM/Session LRs are not shipped to vertices in new API use-case**

Previously in the tez codebase, the session LRs were part of each vertex's LRs, automatically.

During 0.5.0 API changes, the following no longer provides local LRs to the vertices, even if it is part of the session LR.


---

* [TEZ-1466](https://issues.apache.org/jira/browse/TEZ-1466) | *Trivial* | **Fix JDK8 builds of tez**

Tez fails to build on JDK8 due to stricter generics checks on a unit test

{code}
sortedDataMap = TreeMultimap.create(this.correctComparator, Ordering.natural());
{code}


---

* [TEZ-1465](https://issues.apache.org/jira/browse/TEZ-1465) | *Blocker* | **Update and document IntersectExample. Change name to JoinExample**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1463](https://issues.apache.org/jira/browse/TEZ-1463) | *Major* | **Remove dependency on private class org.apache.hadoop.util.StringUtils**

This is a private and unstable class in hadoop. We should not depend on it.


---

* [TEZ-1458](https://issues.apache.org/jira/browse/TEZ-1458) | *Blocker* | **org.apache.tez.common.security.Groups does not compile against hadoop-2.2.0 anymore**

With checkin of TEZ-671 org.apache.tez.common.security.Groups stopped compiling against hadoop-2.2.0. Groups is now using StringUtils.getStringCollection(str, delim) which has been introduced as part of HADOOP-10142 in hadoop-2.3. Also some CommonConfigurationKeys do not exists in that version!


---

* [TEZ-1456](https://issues.apache.org/jira/browse/TEZ-1456) | *Trivial* | **Fix typo in TestIFile.testWithRLEMarker**

unsortedData var defined on line 178 is never used
Most probably it should be used on lines 179 and 180 instead of variable sortedData


---

* [TEZ-1455](https://issues.apache.org/jira/browse/TEZ-1455) | *Trivial* | **Replace deprecated junit.framework.Assert with org.junit.Assert**

junit.framework.Assert is still used in TestOnFileSortedOutput


---

* [TEZ-1452](https://issues.apache.org/jira/browse/TEZ-1452) | *Blocker* | **Add license and notice to jars**

Brings in 762c9cef8863eb48 and 145c730c8d1 from 0.4.0 incubating release and updates them with the new directory structure.


---

* [TEZ-1450](https://issues.apache.org/jira/browse/TEZ-1450) | *Blocker* | **Documentation of TezConfiguration**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1449](https://issues.apache.org/jira/browse/TEZ-1449) | *Blocker* | **Change user payloads to work with a byte buffer**

From discussions with [~bikassaha] and [~gopalv] - we should move the events to use bytebuffers as well.
- This is where excessive copying can be avoided once we move to PB based RPC (or to other libraries which rely on nio)
- Future proofing the API


---

* [TEZ-1448](https://issues.apache.org/jira/browse/TEZ-1448) | *Major* | **Make WeightedScalingMemoryDistributor as the default memory distributor**

Currently Tez uses ScalingAllocator; WeightedScalingMemoryDistributor provides better control over ScalingAllocator.  

In certain DAG executions, response time improvements of over 6% have been observed at 10 TB scale and ~26% runtime improvement in memory intensive reducers.


---

* [TEZ-1446](https://issues.apache.org/jira/browse/TEZ-1446) | *Major* | **Move the fetch code for local disk fetch from data movement event handlers to fetcher**

doing the fetch in the EventHandler has the drawback of tying up the EventHandling thread, in case it takes time to read the Index file. Even, for a healthy disk - we can do without any delays on this thread, so that the fetcher have some work to do.  
Also Need to add Unit test cases for the local fetch.


---

* [TEZ-1442](https://issues.apache.org/jira/browse/TEZ-1442) | *Major* | **Publish release notes for 0.5.0**

This should have instructions on how to migrate a deployment from 0.4.x to 0.5.x in addition to any configuration changes needed.


---

* [TEZ-1441](https://issues.apache.org/jira/browse/TEZ-1441) | *Major* | **Update website to have a set of pages for 0.5.0 release**

This will involve creating a common template that can be leveraged for each subsequent release


---

* [TEZ-1438](https://issues.apache.org/jira/browse/TEZ-1438) | *Blocker* | **Annotate add java doc for tez-runtime-library and tez-mapreduce**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1432](https://issues.apache.org/jira/browse/TEZ-1432) | *Blocker* | **TEZ\_AM\_CANCEL\_DELEGATION\_TOKEN is named inorrectly**

TEZ\_AM\_CANCEL\_DELEGATION\_TOKEN is currently tez.am.am.complete.cancel.delegation.tokens


---

* [TEZ-1430](https://issues.apache.org/jira/browse/TEZ-1430) | *Major* | **Javadoc generation should not generate docs for classes annotated as private**

mvn javadoc:javadoc generates javadoc for everything. Haven't tried mvn site though.


---

* [TEZ-1429](https://issues.apache.org/jira/browse/TEZ-1429) | *Blocker* | **Avoid sysexit in the DAGAM in case of local mode**

This jira is to investigate if there's a simple way where the sysexit in the DAGAM can be avoided in case of local mode. This is critical to actually making use of localmode.

TEZ-1191 will be the proper fix for this.


---

* [TEZ-1427](https://issues.apache.org/jira/browse/TEZ-1427) | *Blocker* | **Change remaining classes that are using byte[] to UserPayload**

EdgeManagerPluginContext is the most important.
SleepProcessor configuration
All the Configurers.


---

* [TEZ-1426](https://issues.apache.org/jira/browse/TEZ-1426) | *Blocker* | **Create configuration helpers for ShuffleVertexManager and TezGrouping code**

This allows moving their configuration out of TezConfiguration.


---

* [TEZ-1425](https://issues.apache.org/jira/browse/TEZ-1425) | *Blocker* | **Move constants to TezConstants**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1423](https://issues.apache.org/jira/browse/TEZ-1423) | *Major* | **Ability to pass custom properties to keySerializer for OnFileUnorderedPartitionedKVOutput**

Using OnFileUnorderedPartitionedKVOutput there is no way of passing custom properties to its keySerializer class given that this class implements Configurable. 

For OnFileSortedOutput this is possible because comparatorConf and partitionerConf touching both sides, the input and the output.

Possible solutions could be either passing a map to keySerializer configuration as well or have custom properties for the input and the output of an edge.


---

* [TEZ-1422](https://issues.apache.org/jira/browse/TEZ-1422) | *Major* | **Provide a way to hook in static address resolution when talking to AM from client**

h6. Usecase
Client sits outside of the YARN subnet. YARN/TEZ passes out internal host addresses which are not resolvable by the client. Example: test-environment where YARN sits in ec2 and the test/client sits outside.

h6. Solution
Use NetUtils.createSocketAddrForHost() instead of new InetSocketAddress() in TezClientUtils#getAMProxy().
This would allow to use NetUtils.addStaticResolution() which can be used to have a static private -\> public mapping!


---

* [TEZ-1419](https://issues.apache.org/jira/browse/TEZ-1419) | *Blocker* | **Release link broken on website for 0.4.1 release**

http://www.apache.org/dyn/closer.cgi/incubator/tez/tez-0.4.1-incubating/
There's no artifacts there. Do incubator artifacts get deleted after graduation ?
[~hitesh] - any idaes ?


---

* [TEZ-1418](https://issues.apache.org/jira/browse/TEZ-1418) | *Blocker* | **Provide Default value for TEZ\_AM\_LAUNCH\_ENV and TEZ\_TASK\_LAUNCH**

As part of the fix for the issue TEZ-1127 two new configurations have  been introduced:
# \_TEZ\_AM\_LAUNCH\_ENV\_
# \_TEZ\_TASK\_LAUNCH\_

Ideally these properties should be configured with default value of:
"LD\_LIBRARY\_PATH=$HADOOP\_COMMON\_HOME/lib/native"

as in the case for \_mapreduce.admin.user.env\_

The default value for these properties are set to "" (empty string).
Now user has to explicitly set these values from the application code to use the native libs (like for compression).

From Hitesh:
{quote}As commented on TEZ-1127, it is a question as to what the default should be - whether HADOOP\_COMMON\_HOME or HADOOP\_PREFIX and to some extent, it needs to handle Windows deployments too.{quote}


---

* [TEZ-1417](https://issues.apache.org/jira/browse/TEZ-1417) | *Blocker* | **Rename \*Configurer**

From offline feedback from [~bikassaha], [~acmurthy] and [~hagleitn] - this needs to be renamed.
Something like Configurator as Bikas had earlier suggested, or ConfigBuilder which I like more.

This can be done as a last refactor before 0.5 since it's very disruptive to patches in progress.


---

* [TEZ-1416](https://issues.apache.org/jira/browse/TEZ-1416) | *Blocker* | **tez-api project javadoc/annotations review and clean up.**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1415](https://issues.apache.org/jira/browse/TEZ-1415) | *Major* | **Merge various Util classes in Tez**

TezCommonUtils, LogUtils.


---

* [TEZ-1414](https://issues.apache.org/jira/browse/TEZ-1414) | *Major* | **Disable TestTezClientUtils.testLocalResourceVisibility to make builds pass.**

The test passes locally but for some reason is fails on Jenkins. Disabling temporarily until the issue get worked out.


---

* [TEZ-1413](https://issues.apache.org/jira/browse/TEZ-1413) | *Major* | **Fix build for TestTezClientUtils.testLocalResourceVisibility**

Build failed in Jenkins: Tez-Build #565
org.apache.tez.client.TestTezClientUtils
Tests run: 9, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 1.131 sec \<\<\< FAILURE!
testLocalResourceVisibility(org.apache.tez.client.TestTezClientUtils)  Time elapsed: 0.093 sec  \<\<\< FAILURE!
java.lang.AssertionError: null
	at org.junit.Assert.fail(Assert.java:86)
	at org.junit.Assert.assertTrue(Assert.java:41)
	at org.junit.Assert.assertTrue(Assert.java:52)
	at org.apache.tez.client.TestTezClientUtils.testLocalResourceVisibility(TestTezClientUtils.java:258)

Running org.apache.tez.common.security.TestTokenCache
Tests run: 1, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.944 sec Running org.apache.tez.common.TestTezCommonUtils
Tests run: 11, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 3.949 sec Running org.apache.tez.common.TestReflectionUtils
Tests run: 2, Failures: 0, Errors: 0, Skipped: 0, Time elapsed: 0.69 sec

Results :

Failed tests: 
  TestTezClientUtils.testLocalResourceVisibility:258 null


---

* [TEZ-1411](https://issues.apache.org/jira/browse/TEZ-1411) | *Blocker* | **Address initial feedback on swimlanes**

Few other good to have things
1) A wrapper script that takes care of the command chaining with a single appId as input from the user.
2) Legend in the README or in the svg itself about what is what.


---

* [TEZ-1410](https://issues.apache.org/jira/browse/TEZ-1410) | *Blocker* | **DAGClient#waitForCompletion() methods should not swallow interrupts**

Based on TEZ-1331 i found that the 3 waitForCompletion() methods of DAGClient swallowing interrupts as well. That way you never can stop the wait call since all interrupts are caught and the wait logic just happily proceeds (same as TEZ-1278).


---

* [TEZ-1409](https://issues.apache.org/jira/browse/TEZ-1409) | *Blocker* | **Change MRInputConfigurer, MROutputConfigurer to accept complete configurations**

Separate methods to accept either mapred or mapreduce InputFormat. Similarly for the Output. 
This generates compile time errors while using these methods.
Ran into this on the first iteration of TEZ-1407, where I had set the wrong class (a committer instead of an OF).

Also, ideally these should be @Nullable - in case the user has already set them up correctly in the Configuration.


---

* [TEZ-1407](https://issues.apache.org/jira/browse/TEZ-1407) | *Blocker* | **Move MRInput related methods out of MRHelpers and consolidate**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1403](https://issues.apache.org/jira/browse/TEZ-1403) | *Major* | **oah.mapred.Partitioner is not configured by JobConf**

TotalOrderPartitioner is not initialized by JobConf, throwing NPE in runtime.
{noformat}
Caused by: java.lang.NullPointerException
	at org.apache.hadoop.mapreduce.lib.partition.TotalOrderPartitioner.getPartition(TotalOrderPartitioner.java:127)
	at org.apache.hadoop.mapreduce.lib.partition.TotalOrderPartitioner.getPartition(TotalOrderPartitioner.java:48)
	at org.apache.hadoop.hive.ql.exec.HiveTotalOrderPartitioner.getPartition(HiveTotalOrderPartitioner.java:41)
	at org.apache.hadoop.hive.ql.exec.HiveTotalOrderPartitioner.getPartition(HiveTotalOrderPartitioner.java:29)
	at org.apache.tez.mapreduce.partition.MRPartitioner.getPartition(MRPartitioner.java:85)
	at org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.write(DefaultSorter.java:185)
	at org.apache.tez.runtime.library.output.OnFileSortedOutput$1.write(OnFileSortedOutput.java:116)
	at org.apache.tez.mapreduce.processor.map.MapProcessor$OldOutputCollector.collect(MapProcessor.java:359)
	at org.apache.hadoop.hive.ql.exec.ReduceSinkOperator.collect(ReduceSinkOperator.java:444)
	at org.apache.hadoop.hive.ql.exec.ReduceSinkOperator.processOp(ReduceSinkOperator.java:319)
	... 16 more
{noformat}


---

* [TEZ-1401](https://issues.apache.org/jira/browse/TEZ-1401) | *Major* | **Create DAG.addTaskLocalFiles() to add common local files for all vertices.**

Typically users will have a common jar for all their code that is going to be used in every vertex.


---

* [TEZ-1400](https://issues.apache.org/jira/browse/TEZ-1400) | *Major* | **Reducers stuck when enabling auto-reduce parallelism (MRR case)**

In M -\> R1 -\> R2 case, if R1 is optimized by auto-parallelism R2 gets stuck waiting for events.

e.g

Map 1: 0/1      Map 2: -/-      Map 5: 0/1      Map 6: 0/1      Map 7: 0/1      Reducer 3: 0/23 Reducer 4: 0/1
...
...
Map 1: 1/1      Map 2: 148(+13)/161     Map 5: 1/1      Map 6: 1/1      Map 7: 1/1      Reducer 3: 0(+3)/3      Reducer 4: 0(+1)/1  \<== Auto reduce parallelism kicks in
..
Map 1: 1/1      Map 2: 161/161  Map 5: 1/1      Map 6: 1/1      Map 7: 1/1      Reducer 3: 3/3  Reducer 4: 0(+1)/1

Job is stuck waiting for events in Reducer 4.

 [fetcher [Reducer\_3] #23] org.apache.tez.runtime.library.common.shuffle.impl.ShuffleScheduler: copy(3 of 23 at 0.02 MB/s) \<=== \*Waiting for 20 more partitions, even though Reducer3 has been optimized to use 3 reducers


---

* [TEZ-1395](https://issues.apache.org/jira/browse/TEZ-1395) | *Major* | **Fix failure in IFile handling of compressed data**

{quote}
Running org.apache.tez.test.TestSecureShuffle
Tests run: 4, Failures: 1, Errors: 0, Skipped: 0, Time elapsed: 262.405 sec \<\<\< FAILURE!
testSecureShuffle[test[sslInCluster:true, sslInTez:true, expectedResult:0]](org.apache.tez.test.TestSecureShuffle)  Time elapsed: 75.061 sec  \<\<\< FAILURE!
java.lang.AssertionError: expected:\<0\> but was:\<1\>
        at org.junit.Assert.fail(Assert.java:88)
        at org.junit.Assert.failNotEquals(Assert.java:743)
        at org.junit.Assert.assertEquals(Assert.java:118)
        at org.junit.Assert.assertEquals(Assert.java:555)
        at org.junit.Assert.assertEquals(Assert.java:542)
        at org.apache.tez.test.TestSecureShuffle.testSecureShuffle(TestSecureShuffle.java:148)
{quote}


---

* [TEZ-1394](https://issues.apache.org/jira/browse/TEZ-1394) | *Major* | **Create example code for OrderedWordCount**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1393](https://issues.apache.org/jira/browse/TEZ-1393) | *Blocker* | **user.dir should not be reset in LocalMode**

Setting user.dir to the staging-dir has the implication of changing the root of the filesystem to the staging directory, which is application specific.

If using multiple instance of LocalClient within a single JVM - this can get problematic, between multiple jobs since the CWD will change in the middle of execution - which ends up disallowing usage of relative paths.


---

* [TEZ-1392](https://issues.apache.org/jira/browse/TEZ-1392) | *Major* | **MRRSleepJob fails**

{code}
14/08/08 16:02:34 INFO examples.MRRSleepJob: DAG Status: status=FAILED, progress=TotalTasks: 2 Succeeded: 0 Running: 0 Failed: 1 Killed: 1, diagnostics=Vertex failed, vertexName=map, vertexId=vertex\_1407484058863\_0002\_1\_00, diagnostics=[Task failed, taskId=task\_1407484058863\_0002\_1\_00\_000000, diagnostics=[TaskAttempt 0 failed, info=[Error: Failure while running task:java.io.IOException: org.apache.tez.dag.api.TezException: Only MRInputLegacy supported. Input: class org.apache.tez.mapreduce.input.MRInput
	at org.apache.tez.mapreduce.processor.map.MapProcessor.run(MapProcessor.java:99)
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
Caused by: org.apache.tez.dag.api.TezException: Only MRInputLegacy supported. Input: class org.apache.tez.mapreduce.input.MRInput
	... 13 more
{code}


---

* [TEZ-1391](https://issues.apache.org/jira/browse/TEZ-1391) | *Major* | **IGNORE\_LIB\_URIS is not taking affect in local mode**

IGNORE\_LIB\_URIS is being set on the wrong configuration instance, and ends up not taking affect. Reported by Chris Wensel.


---

* [TEZ-1390](https://issues.apache.org/jira/browse/TEZ-1390) | *Blocker* | **Replace byte[] with ByteBuffer as the type of user payload in the API**

This is just and API change. Internally we can continue to use byte[] since thats a much bigger change.
The translation from ByteBuffer to byte[] in the API layer should not have perf impact.


---

* [TEZ-1388](https://issues.apache.org/jira/browse/TEZ-1388) | *Major* | **mvn site is slow and generates errors**

Many errors along the lines of the message below
[ERROR] Unable to determine if resource ... exists ...


---

* [TEZ-1386](https://issues.apache.org/jira/browse/TEZ-1386) | *Major* | **Users should not need to setup TezGroupedInputFormat to enable grouping**

To enable grouping via Tez, users should not need to change the underlying InputFormat. A simple enable / disable option should be sufficient.
MRInputConfigurer does this.
Many of the methods in MRHelpers, however, require an InputFormat to be specified. The main objective of this JIRA is to get rid of this requirement in favor of a simple enableGrouping flag.
Marking this as a blocker for TEZ-1347, since it should simplify the set of APIs required. Also, making all the changes in TEZ-1347 would just lead to a very large patch.


---

* [TEZ-1385](https://issues.apache.org/jira/browse/TEZ-1385) | *Critical* | **Disk Direct fails for MapOutput when trying to use OnDiskMerger**

Stack Trace

2014-08-06 20:08:52,869 [DiskToDiskMerger [scope\_75]] INFO  org.apache.tez.runtime.library.common.shuffle.impl.MergeManager - attempt\_1407373728912\_0001\_1\_02\_000000\_0\_1000     8 Finished merging 10 map output files on disk of total-size 24291. Local output file is /tmp/temp751138072/.tez/application\_1407373728912\_0001/localmode-local-dir/tmp/tem     p751138072/.tez/application\_1407373728912\_0001/localmode-local-dir/output/attempt\_1407373728912\_0001\_1\_01\_000000\_0\_10006/file.out.merged of size 24001

2014-08-06 20:08:52,870 [TezTaskEventRouter[attempt\_1407373728912\_0001\_1\_02\_000000\_0]] WARN  org.apache.tez.runtime.LogicalIOProcessorRuntimeTask - Failed to handle event
java.lang.ClassCastException: org.apache.hadoop.fs.Path cannot be cast to org.apache.hadoop.io.FileChunkPath
  at org.apache.hadoop.io.FileChunkPath.compareTo(FileChunkPath.java:72)
  at java.util.TreeMap.put(TreeMap.java:545)
  at java.util.TreeSet.add(TreeSet.java:238)
  at org.apache.tez.runtime.library.common.shuffle.impl.MergeManager.closeOnDiskFile(MergeManager.java:428)
  at org.apache.tez.runtime.library.common.shuffle.impl.MapOutput.commit(MapOutput.java:221)
  at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleScheduler.copySucceeded(ShuffleScheduler.java:171)
  at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleInputEventHandler.processDataMovementEvent(ShuffleInputEventHandler.java:135)
  at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleInputEventHandler.handleEvent(ShuffleInputEventHandler.java:84)
  at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleInputEventHandler.handleEvents(ShuffleInputEventHandler.java:77)
  at org.apache.tez.runtime.library.common.shuffle.impl.Shuffle.handleEvents(Shuffle.java:229)
  at org.apache.tez.runtime.library.input.ShuffledMergedInput.handleEvents(ShuffledMergedInput.java:252)
  at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.handleEvent(LogicalIOProcessorRuntimeTask.java:605)
  at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.access$1100(LogicalIOProcessorRuntimeTask.java:90)
  at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask$1.run(LogicalIOProcessorRuntimeTask.java:668)
  at java.lang.Thread.run(Thread.java:695)


---

* [TEZ-1382](https://issues.apache.org/jira/browse/TEZ-1382) | *Blocker* | **Change ObjectRegistry API to allow for future extensions**

Per comments on https://issues.apache.org/jira/browse/TEZ-1153


---

* [TEZ-1372](https://issues.apache.org/jira/browse/TEZ-1372) | *Blocker* | **Fix preWarm to work after recent API changes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1368](https://issues.apache.org/jira/browse/TEZ-1368) | *Blocker* | **TestSecureShuffle failing**

The test is timing out.


---

* [TEZ-1360](https://issues.apache.org/jira/browse/TEZ-1360) | *Major* | **Provide vertex parallelism to each vertex task**

It would be good for a task to get a info about the total task count of its vertex.
With this there would be an equivalent for map-reduce' {{mapred.map.tasks}} and {{mapred.reduce.tasks}} and mr-applications using this could be ported to Tez more easily.


---

* [TEZ-1354](https://issues.apache.org/jira/browse/TEZ-1354) | *Major* | **FilterByWordOutputProcessor always throws NPE**

hadoop jar $TEZ\_HOME/tez-mapreduce-examples-0.5.0-SNAPSHOT.jar filterLinesByWord in/ out/ filter always has an NPE


---

* [TEZ-1352](https://issues.apache.org/jira/browse/TEZ-1352) | *Blocker* | **HADOOP\_CONF\_DIR should be in the classpath for containers**

TEZ-1300 ended up removing HADOOP\_CONF\_DIR from the classpath. This caused tasks running on the cluster to work with default configs instead of cluster specific configs.


---

* [TEZ-1351](https://issues.apache.org/jira/browse/TEZ-1351) | *Major* | **MROutput needs a flush method to ensure data is materialized for FileOutputCommitter**

In MROutput.commit, we need to check isCommitRequired before invoking commitTask.

Currently we did this check inside Pig:
{code}
                if (fileOutput.isCommitRequired()) {
                    fileOutput.commit();
                }
{code}
However, in some loader, output file is generated only after fileOutput.close, which is part of fileOutput.commit. The isCommitRequired check is too early. A walk around is to invoke fileOutput.close before isCommitRequired:
{code}
                fileOutput.close();
                if (fileOutput.isCommitRequired()) {
                    fileOutput.commit();
                }
{code}
But we are told there is a plan to make MROutput.close private.


---

* [TEZ-1347](https://issues.apache.org/jira/browse/TEZ-1347) | *Blocker* | **Consolidate MRHelpers**

- Remove methods which don't belong in MRHelpers and potentially move them to TezHelpers.
- Get rid of methods which we don't expect/want users to use.
- Get rid of multiple variants of the same method, if these exist.
- Investigate other cleanup in MRHelpers.


---

* [TEZ-1346](https://issues.apache.org/jira/browse/TEZ-1346) | *Blocker* | **Change Processor construction to make use of contexts**

TEZ-1303 made changes for Inputs, Outputs etc but missed the Processor. This is a follow up to change the Processor interface.


---

* [TEZ-1343](https://issues.apache.org/jira/browse/TEZ-1343) | *Major* | **Bypass the Fetcher and read directly from the local filesystem if source vertex ran on the same host**

In the case of the source and current vertex are on the same host bypass the Fetcher and read it directly from the local filesystem


---

* [TEZ-1342](https://issues.apache.org/jira/browse/TEZ-1342) | *Major* | **tez.am.client.am.port-range not taking effect**

Controlling the ports of Tez' Application Master via 'tez.am.client.am.port-range' does not seem to work.

When setting this on the client side, i can see its properly picked up by the DAGClientServer, but then port used is still not within that range!


---

* [TEZ-1338](https://issues.apache.org/jira/browse/TEZ-1338) | *Blocker* | **Support submission of multiple applications with LocalRunner from within the same JVM**

A single DAGAM is currently setup, which is used for all clients. In non-session mode this AM would end up in a final state and will not accept another submission.


---

* [TEZ-1334](https://issues.apache.org/jira/browse/TEZ-1334) | *Blocker* | **Annotate all non public classes in tez-runtime-library with @private**

This prevents javadoc from being generated.
Alternative would be to mark classes explicitly public using annotation.


---

* [TEZ-1333](https://issues.apache.org/jira/browse/TEZ-1333) | *Major* | **Flaky test: TestOnFileSortedOutput fails in jenkins server with OOM**

Works on local machine, but fails on Jenkins machine (low mem machine?)

Running org.apache.tez.runtime.library.output.TestOnFileSortedOutput
java.lang.OutOfMemoryError: Java heap space
Dumping heap to java\_pid31888.hprof ...
Heap dump file created [740277112 bytes in 0.802 secs]
Tests run: 24, Failures: 0, Errors: 2, Skipped: 0, Time elapsed: 4.776 sec \<\<\< FAILURE!
testAllEmptyPartition[test[true, 1, -1]](org.apache.tez.runtime.library.output.TestOnFileSortedOutput)  Time elapsed: 1.07 sec  \<\<\< ERROR!
java.lang.OutOfMemoryError: Java heap space
	at org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.\<init\>(DefaultSorter.java:137)
	at org.apache.tez.runtime.library.output.OnFileSortedOutput.start(OnFileSortedOutput.java:105)
	at org.apache.tez.runtime.library.output.TestOnFileSortedOutput.startSortedOutput(TestOnFileSortedOutput.java:153)
	at org.apache.tez.runtime.library.output.TestOnFileSortedOutput.testAllEmptyPartition(TestOnFileSortedOutput.java:213)

baseTest[test[false, 2, 0]](org.apache.tez.runtime.library.output.TestOnFileSortedOutput)  Time elapsed: 0.385 sec  \<\<\< ERROR!
java.lang.OutOfMemoryError: Java heap space
	at java.nio.HeapByteBuffer.\<init\>(HeapByteBuffer.java:39)
	at java.nio.ByteBuffer.allocate(ByteBuffer.java:312)
	at org.apache.tez.runtime.library.common.sort.impl.PipelinedSorter.\<init\>(PipelinedSorter.java:122)
	at org.apache.tez.runtime.library.output.OnFileSortedOutput.start(OnFileSortedOutput.java:102)
	at org.apache.tez.runtime.library.output.TestOnFileSortedOutput.startSortedOutput(TestOnFileSortedOutput.java:153)
	at org.apache.tez.runtime.library.output.TestOnFileSortedOutput.baseTest(TestOnFileSortedOutput.java:159)


---

* [TEZ-1332](https://issues.apache.org/jira/browse/TEZ-1332) | *Blocker* | **tez swimlanes UI tool**

Import https://github.com/t3rmin4t0r/tez-swimlanes into trunk.

Also move from using the AM INFO logs to using SimpleHistoryLogging/ATS data to draw the diagrams.

The goal is to be able to draw diagrams like, for a developer to debug performance issues - http://people.apache.org/~gopalv/query27.svg


---

* [TEZ-1330](https://issues.apache.org/jira/browse/TEZ-1330) | *Blocker* | **Create a dist target which contains required jars**

Comment from [~rohini] on TEZ-1300
bq. The tez-dist now only contains tez-0.5.0-SNAPSHOT.tar.gz. Can you retain the retain the directory structure also with the individual jars. The pig client needs the individual jars in the classpath. It is convenient to compile tez and point to the tez-dist directory for e2e testing. Without that we will have to do extra step of untarring it and is a inconvenience during development.


---

* [TEZ-1326](https://issues.apache.org/jira/browse/TEZ-1326) | *Major* | **AMStartedEvent should not be recovery event**

AMStartedEvent is not used for recovery, it is only for ATS


---

* [TEZ-1322](https://issues.apache.org/jira/browse/TEZ-1322) | *Major* | **OrderedWordCount broken in master branch**

java.io.IOException: Type mismatch in key from map: expected org.apache.hadoop.io.IntWritable, received org.apache.hadoop.io.Text
        at org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.collect(DefaultSorter.java:198)
        at org.apache.tez.runtime.library.common.sort.impl.dflt.DefaultSorter.write(DefaultSorter.java:185)
        at org.apache.tez.runtime.library.output.OnFileSortedOutput$1.write(OnFileSortedOutput.java:118)
        at org.apache.tez.mapreduce.processor.map.MapProcessor$NewOutputCollector.write(MapProcessor.java:373)
        at org.apache.tez.mapreduce.hadoop.mapreduce.TaskInputOutputContextImpl.write(TaskInputOutputContextImpl.java:90)
        at org.apache.hadoop.mapreduce.lib.map.WrappedMapper$Context.write(WrappedMapper.java:112)
        at org.apache.tez.mapreduce.examples.OrderedWordCount$TokenizerMapper.map(OrderedWordCount.java:108)
        at org.apache.tez.mapreduce.examples.OrderedWordCount$TokenizerMapper.map(OrderedWordCount.java:97)
        at org.apache.hadoop.mapreduce.Mapper.run(Mapper.java:145)


---

* [TEZ-1320](https://issues.apache.org/jira/browse/TEZ-1320) | *Blocker* | **Remove getApplicationId from DAGClient**

We should either get rid of this, or convert it to a String. Not sure why this API needs to be exposed.


---

* [TEZ-1319](https://issues.apache.org/jira/browse/TEZ-1319) | *Blocker* | **Remove methods annotated as @Private from TezClient**

Both contain methods which are annotated as Private for YARNrunner usage. On important client facing APIs like TezClient and DAGClient, these should ideally not exist. Should be possible to create a custom client for YARNRunner.


---

* [TEZ-1318](https://issues.apache.org/jira/browse/TEZ-1318) | *Blocker* | **Simplify Vertex constructor**

In favor of picking a default specified in tez-site, with a potential fallback to the minimum allocation in YARN.

Typically, this value is cluster specific at least for simple jobs. If more advanced users need to change this - it can be done via setters.


---

* [TEZ-1317](https://issues.apache.org/jira/browse/TEZ-1317) | *Blocker* | **Simplify MRinput/MROutput configuration**

Should at least be possible to generate the correct Descriptors.

Potentially change the addInput / addOutput APIs to accept a single entity which encapsulates InputDescriptor and InputInitializerDescriptor. Similarly for Outputs.


---

* [TEZ-1312](https://issues.apache.org/jira/browse/TEZ-1312) | *Blocker* | **rename vertex.addInput/Output() to vertex.addDataSource/Sink()**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1311](https://issues.apache.org/jira/browse/TEZ-1311) | *Blocker* | **get sharedobjectregistry from the context instead of a static**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1306](https://issues.apache.org/jira/browse/TEZ-1306) | *Major* | **Remove unused ValuesIterator**

tez-runtime-library/src/main/java/org/apache/tez/runtime/library/common/task/impl/ValuesIterator.java


---

* [TEZ-1305](https://issues.apache.org/jira/browse/TEZ-1305) | *Major* | **Log job tracking url**

Mapreduce Job.java logs the application tracking url which is very much needed to go to the UI. Need the same in TezClient.


---

* [TEZ-1304](https://issues.apache.org/jira/browse/TEZ-1304) | *Blocker* | **Create execution underlying framework abstraction layer**

Continuing in the direction of hiding the internals of the execution framework, this patch aims at abstracting it away from the tez client implementation. This will further ease the addition of other execution frameworks such as Tez Local Mode.


---

* [TEZ-1300](https://issues.apache.org/jira/browse/TEZ-1300) | *Major* | **Change default tez classpath to not include hadoop jars from the cluster**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1296](https://issues.apache.org/jira/browse/TEZ-1296) | *Major* | **commons-math3 dependency**

TEZ-1269 adds a dependency on commons-math3 with the use of RandomDataGenerator.  We should either get rid of it and use something like https://commons.apache.org/proper/commons-math/javadocs/api-2.2/org/apache/commons/math/random/RandomDataImpl.html#nextSecureLong(long, long) from commons-math which is already part of hadoop dependency or make commons-math3 explicitly part of pom.xml and tez-dist.


---

* [TEZ-1290](https://issues.apache.org/jira/browse/TEZ-1290) | *Major* | **Make graduation related changes**

Remove disclaimer.
Remove incubating from version.
Update website and other relevant docs.


---

* [TEZ-1288](https://issues.apache.org/jira/browse/TEZ-1288) | *Major* | **Create FastTezSerialization as an optional feature**

Tez inherits the writable framework from map-reduce. 

This is very flexible, but not particularly memory efficient for the small data types.

When deserializing, each value and key has to be allocated afresh for each small chunk of data (new IntWritable instead of .set()).

The bytes writable serialization operation always has to write a 4 byte prefix for  all values and keys, because of requirements around streamed .readFields() instead of a customer setter/getter impl.

Implement a faster serialization mechanism for the inner loop of sort, spill, merge, which doesn't trigger the GC and avoids adding simplistic overheads to the IFile format.


---

* [TEZ-1285](https://issues.apache.org/jira/browse/TEZ-1285) | *Major* | **Add Utility for Modifying Environment Variables**

As part of TEZ-1206, a change was proposed to modify environment variables with the jvm. There is a well known hack to get this to work, and this jira's purpose is to implement this hack.


---

* [TEZ-1279](https://issues.apache.org/jira/browse/TEZ-1279) | *Major* | **Rename \*EdgeConfiguration to \*EdgeConfigurer**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1278](https://issues.apache.org/jira/browse/TEZ-1278) | *Blocker* | **TezClient#waitTillReady() should not swallow interrupts**

Current code is:
{code}
  while (true) {
      TezAppMasterStatus status = getAppMasterStatus();
      if (status.equals(TezAppMasterStatus.SHUTDOWN)) {
        throw new SessionNotRunning("TezSession has already shutdown");
      }
      if (status.equals(TezAppMasterStatus.READY)) {
        return;
      }
      try {
        Thread.sleep(SLEEP\_FOR\_READY);
      } catch (InterruptedException e) {
        LOG.info("Sleep interrupted", e);
        continue;
      }
    }
{code}
That way you never can stop the wait call since all interrupts are caught and the wait logic just happily proceeds.

\*Suggestion\*: InterruptedException could be part of the method signature so the caller can handle this in a way which is adequate to the context.

Nice read on handling interrupts: http://www.ibm.com/developerworks/library/j-jtp05236/


---

* [TEZ-1276](https://issues.apache.org/jira/browse/TEZ-1276) | *Major* | **Remove unnecessary TaskAttemptEventType TA\_FAIL\_REQUEST**

The TaskAttemptEventType TA\_FAIL\_REQUEST is never used, it looks like it has been replace with TA\_KILL\_REQUEST


---

* [TEZ-1272](https://issues.apache.org/jira/browse/TEZ-1272) | *Major* | **Change YARNRunner to make use of EdgeConfigurations**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1269](https://issues.apache.org/jira/browse/TEZ-1269) | *Major* | **TaskScheduler prematurely releases containers**

It checks for session mode and if not true, and if there are no outstanding requests, then it releases the containers before the container timeout has expired. If the state machine is on its way to scheduling new tasks during this time then they will not be able to reuse these containers.


---

* [TEZ-1266](https://issues.apache.org/jira/browse/TEZ-1266) | *Major* | **Create \*EdgeConfigurer.createDefaultCustomEdge() and force setting partitioners**

Reference https://issues.apache.org/jira/browse/TEZ-1080?focusedCommentId=14054194&page=com.atlassian.jira.plugin.system.issuetabpanels:comment-tabpanel#comment-14054194 from TEZ-1080

cc [~sseth]


---

* [TEZ-1261](https://issues.apache.org/jira/browse/TEZ-1261) | *Major* | **ShuffleVertexManager auto parallelism is broken after TEZ-1131**

A plain 3 vertex join hang forever when turn on auto-parallelism. AM log attached.


---

* [TEZ-1260](https://issues.apache.org/jira/browse/TEZ-1260) | *Major* | **Allow KeyValueWriter to support writing list of values also**

TEZ-1228 adds support to IFile for storing K,L\<V\>.  Currently KeyValueWriter allows write of K,V

public void write(Object key, Object value) throws IOException;

We should add support for 

public void write(Object key, Iterable\<Object\> values) throws IOException;

taking advantage of TEZ-1228. In few cases, pig unwraps key, list\<values\> and writes them as separate K,V pairs. This can avoid that overhead. That may enable us to even add something similar to hash based partial aggregation for join like what we do for groupby.


---

* [TEZ-1258](https://issues.apache.org/jira/browse/TEZ-1258) | *Major* | **Remove JobStateInternal**

Looks like it has been replace with DAGState


---

* [TEZ-1257](https://issues.apache.org/jira/browse/TEZ-1257) | *Blocker* | **Error on empty partition when using OnFileUnorderedKVOutput and ShuffledMergedInput**

Encountering exception

{code}
org.apache.tez.dag.api.TezUncheckedException: Path component must start with: attempt InputAttemptIdentifier [inputIdentifier=InputIdentifier [inputIndex=0], attemptNumber=0, pathComponent=]
        at org.apache.tez.runtime.library.common.InputAttemptIdentifier.\<init\>(InputAttemptIdentifier.java:45)
        at org.apache.tez.runtime.library.common.InputAttemptIdentifier.\<init\>(InputAttemptIdentifier.java:51)
        at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleInputEventHandler.processDataMovementEvent(ShuffleInputEventHandler.java:81)
        at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleInputEventHandler.handleEvent(ShuffleInputEventHandler.java:66)
        at org.apache.tez.runtime.library.common.shuffle.impl.ShuffleInputEventHandler.handleEvents(ShuffleInputEventHandler.java:59)
{code}

This is because the pathComponent is not set by UnorderedPartitionedKVWriter for empty partition

{code}
if (emptyPartitions.cardinality() != numPartitions) {
      // Populate payload only if at least 1 partition has data
      payloadBuidler.setHost(host);
      payloadBuidler.setPort(shufflePort);
      payloadBuidler.setPathComponent(outputContext.getUniqueIdentifier());
    }
{code}

The combination of OnFileUnorderedKVOutput and ShuffledMergedInput works fine otherwise if there are no empty partitions.


---

* [TEZ-1246](https://issues.apache.org/jira/browse/TEZ-1246) | *Blocker* | **Replace constructors with create() methods for DAG, Vertex, Edge etc in the API**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1242](https://issues.apache.org/jira/browse/TEZ-1242) | *Minor* | **Logos for Tez**

Please keep the following in mind when contributing to this jira.
http://storm.incubator.apache.org/2014/04/10/storm-logo-contest.html


---

* [TEZ-1238](https://issues.apache.org/jira/browse/TEZ-1238) | *Major* | **Display more clear diagnostics info on client side on task failures**

I have a tez job which is failed due to that I didn't put my jar to the local resources. But on the client side, the exception is not clear for me to figure what's wrong with it. The real reason is that It couldn't load the Processor class. I have to run command "yarn logs" to find the real exception in the container logs.  
I also have another case that has exception in the my Processor, the message on the client side is still not clear to me. I think that should we pass the real exception to the diagnostics and display it in client side, this should help user to find out what's wrong with their program.


\*Exception on client side\*
{code}
14/06/26 14:57:15 INFO rpc.DAGClientRPCImpl: VertexStatus: VertexName:
summer Progress: 0% TotalTasks: 1 Succeeded: 0 Running: 0 Failed: 0 Killed:
114/06/26 14:57:15 INFO rpc.DAGClientRPCImpl: VertexStatus: VertexName:
tokenizer Progress: 0% TotalTasks: 1 Succeeded: 0 Running: 0 Failed: 1
Killed: 014/06/26 14:57:15 INFO rpc.DAGClientRPCImpl: DAG completed.
FinalState=FAILEDDAG diagnostics:[Vertex failed, vertexName=tokenizer,
vertexId=vertex\_1403765612557\_0004\_1\_00, diagnostics=[Task failed,
taskId=task\_1403765612557\_0004\_1\_00\_000000, diagnostics=[TaskAttempt 0
failed, info=[Container container\_1403765612557\_0004\_01\_000002 COMPLETED
with diagnostics set to [Exception from container-launch:
org.apache.hadoop.util.Shell$ExitCodeException:
org.apache.hadoop.util.Shell$ExitCodeException: at
org.apache.hadoop.util.Shell.runCommand(Shell.java:505)

at org.apache.hadoop.util.Shell.run(Shell.java:418)

at org.apache.hadoop.util.Shell$ShellCommandExecutor.execute(Shell.java:650)

at
org.apache.hadoop.yarn.server.nodemanager.DefaultContainerExecutor.launchContainer(
DefaultContainerExecutor.java:195)

at
org.apache.hadoop.yarn.server.nodemanager.containermanager.launcher.ContainerLaunch.call(
ContainerLaunch.java:300)

at
org.apache.hadoop.yarn.server.nodemanager.containermanager.launcher.ContainerLaunch.call(
ContainerLaunch.java:81)

at java.util.concurrent.FutureTask.run(FutureTask.java:262)

at java.util.concurrent.ThreadPoolExecutor.runWorker(
ThreadPoolExecutor.java:1145)

at java.util.concurrent.ThreadPoolExecutor$Worker.run(
ThreadPoolExecutor.java:615)

at java.lang.Thread.run(Thread.java:745)

Container exited with a non-zero exit code 1
{code}

\*The real exception in container log:\*

{code}
2014-06-26 14:57:02,146 ERROR [main]
org.apache.hadoop.yarn.YarnUncaughtExceptionHandler: Thread
Thread[main,5,main] threw an Exception.
org.apache.tez.dag.api.TezUncheckedException: Unable to load class:
com.zjffdu.tutorial.tez.WordCount$TokenProcessor
    at org.apache.tez.common.RuntimeUtils.getClazz(RuntimeUtils.java:44)
    at
org.apache.tez.common.RuntimeUtils.createClazzInstance(RuntimeUtils.java:66)
    at
org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.createProcessor(LogicalIOProcessorRuntimeTask.java:533)
    at
org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.\<init\>(LogicalIOProcessorRuntimeTask.java:146)
    at
org.apache.tez.runtime.task.TezTaskRunner.\<init\>(TezTaskRunner.java:78)
    at org.apache.tez.runtime.task.TezChild.run(TezChild.java:208)
    at org.apache.tez.runtime.task.TezChild.main(TezChild.java:363)
{code}


---

* [TEZ-1237](https://issues.apache.org/jira/browse/TEZ-1237) | *Blocker* | **Consolidate naming of API classes**

The user component for Vertex is called 'VertexManagerPlugin', for the edge it's just called 'EdgeManager'. This jira is to use a similar naming convention.


---

* [TEZ-1234](https://issues.apache.org/jira/browse/TEZ-1234) | *Major* | **Replace Interfaces with Abstract classes for VertexManagerPlugin and EdgeManager**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1231](https://issues.apache.org/jira/browse/TEZ-1231) | *Blocker* | **Clean up TezRuntimeConfiguration**

Separate configs used by runtime Inputs/Outputs and framework specific configs As an example - task memory configs are not related to any Input / Output. Similarly for Credentials.

Other possible config changes
- Rename TEZ\_RUNTIME\_INPUT\_BUFFER\_PERCENT, which is a fairly confusing name
- Get rid of the separation between INPUT/OUTPU in config names (e.g. INPUT\_KEY, OUTPUT\_KEY replaced with just KEY)
- Move TEZ\_RUNTIME\_INTERMEDIATE\_INPUT\_KEY\_SECONDARY\_COMPARATOR\_CLASS to MapReduce


---

* [TEZ-1229](https://issues.apache.org/jira/browse/TEZ-1229) | *Major* | **Inconsistent setup of vertex lib resource between session and non-session**

In non-session, its set up by adding the lib resources before submitting the dag.
In session, its set up on the AM via session resources.

The solution may be to universally set it in the client and remove session resources.


---

* [TEZ-1228](https://issues.apache.org/jira/browse/TEZ-1228) | *Major* | **Prototype IFile : Define a memory & merge optimized vertex-intermediate file format for Tez**

The current vertex-intermediate format used all across Tez is a flat file of variable length k,v pairs. For a significant number of use-cases, in particular the sorted output phase, a large number of consecutive  identical keys are found within the same stream. The IFile format ends up writing each key out fully into the stream to generate (K,V) pairs instead of ordering it into a more efficient K, {V1, .. Vn} list.

This duplication of key data needs larger buffers to hold in memory and requires comparison between keys known to be identical while doing a merge sort.

This bug tracks the building of a prototype IFile format which is optimized for lower uncompressed sizes within memory buffers and less compute intensive to perform merge sorts during the reducer phase.


---

* [TEZ-1218](https://issues.apache.org/jira/browse/TEZ-1218) | *Major* | **Make TaskScheduler as AbstractService rather than just an interface**

Currently, the TaskSchedulerInterface is just a interface. And in TaskSchedulerEventHandler we explicitly convert it to AbstractService to init and start it. This is not necessary, we could just make it as Service which is a very common pattern that EventHandler depends on Service just as we did in HistoryEventHandler that it depends on HistoryLoggingService.


---

* [TEZ-1216](https://issues.apache.org/jira/browse/TEZ-1216) | *Critical* | **Clean up the staging directory when the application completes**

This JIRA is a part of TEZ-693. It includes the removal of stage directory when application's last attempt is done. In addition, it will check a config to determine whether to auto clean it or not.


---

* [TEZ-1214](https://issues.apache.org/jira/browse/TEZ-1214) | *Minor* | **Diagnostics of Vertex is missing when constructing TimelineEntity**

Diagnostics of Vertex is not included in the json result because it is missing when constructing the TimelineEntity


---

* [TEZ-1213](https://issues.apache.org/jira/browse/TEZ-1213) | *Major* | **Fix parameter naming in TezJobConfig**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1208](https://issues.apache.org/jira/browse/TEZ-1208) | *Major* | **Log time taken to connect/getInputStream to a http source in fetcher**

Currently, there is no easy way to analyze connection establishment time from tez logs. Connection timings could vary based on different parameters (OS settings, job size etc). 

Additional log (e.g warn log if connection establishment takes more than a second) to record connection establishment time would be helpful.


---

* [TEZ-1205](https://issues.apache.org/jira/browse/TEZ-1205) | *Blocker* | **Remove "profiling" keyword from APIs/configs**

Given that the current functionality to support profiling actually just implies augmenting of command line options for a specified set of tasks, we can word the APIs and configs to be more general purpose.


---

* [TEZ-1199](https://issues.apache.org/jira/browse/TEZ-1199) | *Major* | **EdgeVertexName in EventMetaData can be null**

Possible in cases where a processor generates an event.


---

* [TEZ-1196](https://issues.apache.org/jira/browse/TEZ-1196) | *Major* | **FaultToleranceTestRunner should allow passing generic options from cli**

FaultToleranceTestRunner should allow passing generic options from cli 
Currently FaultToleranceTestRunner does uses GenericOptionParser and does not allows pass generic options using -D


---

* [TEZ-1194](https://issues.apache.org/jira/browse/TEZ-1194) | *Blocker* | **Make TezUserPayload user facing for payload specification**

Now that we have TezUserPayload being used internally to represent user payload it may be useful to make it user facing on the API for specifying payloads. Advantages
1) Clear code for the user instead of having untyped byte[] everywhere
2) Lets us internally evolve the representation of user payload and make it more efficient without having to break APIs. We can start with TezUserPayload(byte[]) and then move on to TezUserPayload(ByteBuffer) and so on while maintaining backwards compatibility without needing to add new methods. Old code can be translated within TezUserPayload while user migrates the code.


---

* [TEZ-1193](https://issues.apache.org/jira/browse/TEZ-1193) | *Minor* | **Allow 'tez.lib.uris' to be overridden**

Hadoop/YARN provides a mechanism to setup a runtime classpath of Tez/YARN job through LocalResources. Tez exposes setting of LocalResources through AMConfiguration and Vertex thuis allowing AM and ACs have its independent classpath which can include Tez (depending on how Tez job is written). This means that setting \_tez.lib.uris\_ and installing Tez all together should be optional since its libraries could be easily propagated during job submission.

It also ensures that the Tez libraries that were used during build are the same that are used during the runtime.


---

* [TEZ-1192](https://issues.apache.org/jira/browse/TEZ-1192) | *Major* | **RejectedExecutionException during TezChild invocation**

Execution of TezChild often ends with RejectedExecutionException (see below)
{code}
java.lang.reflect.InvocationTargetException
	at sun.reflect.NativeMethodAccessorImpl.invoke0(Native Method)
	at sun.reflect.NativeMethodAccessorImpl.invoke(NativeMethodAccessorImpl.java:57)
	at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:43)
	at java.lang.reflect.Method.invoke(Method.java:606)
	at com.hortonworks.tez.minicluster.InJvmContainerExecutor.doLaunch(InJvmContainerExecutor.java:178)
	at com.hortonworks.tez.minicluster.InJvmContainerExecutor.launchContainer(InJvmContainerExecutor.java:82)
	at org.apache.hadoop.yarn.server.nodemanager.containermanager.launcher.ContainerLaunch.call(ContainerLaunch.java:300)
	at org.apache.hadoop.yarn.server.nodemanager.containermanager.launcher.ContainerLaunch.call(ContainerLaunch.java:81)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
Caused by: java.util.concurrent.RejectedExecutionException: Task com.google.common.util.concurrent.ListenableFutureTask@20c5f562 rejected from java.util.concurrent.ThreadPoolExecutor@247105bd[Terminated, pool size = 0, active threads = 0, queued tasks = 0, completed tasks = 3]
	at java.util.concurrent.ThreadPoolExecutor$AbortPolicy.rejectedExecution(ThreadPoolExecutor.java:2048)
	at java.util.concurrent.ThreadPoolExecutor.reject(ThreadPoolExecutor.java:821)
	at java.util.concurrent.ThreadPoolExecutor.execute(ThreadPoolExecutor.java:1372)
	at com.google.common.util.concurrent.MoreExecutors$ListeningDecorator.execute(MoreExecutors.java:440)
	at com.google.common.util.concurrent.AbstractListeningExecutorService.submit(AbstractListeningExecutorService.java:56)
	at org.apache.tez.runtime.task.TezChild.run(TezChild.java:177)
	at org.apache.tez.runtime.task.TezChild.main(TezChild.java:359)
	... 12 more
{code}

This results in exit code 143 from the child process which seems to be OK and the overall Tez job completes successfully. That said, I think managing the lifecycle of the process through random exception is not appropriate especially when problem is easy to avoid.

I'll provide a patch shortly


---

* [TEZ-1178](https://issues.apache.org/jira/browse/TEZ-1178) | *Critical* | **Duplicate ObjectRegistryImpls found in one TezChild**

Hive on Tez is currently erroring out with "Operator initialization failed" errors during container re-use.

This became clearer when HIVE-7112 exposed the actual error messages being thrown.

{code}
  ... 14 more
Caused by: org.apache.hadoop.hive.ql.metadata.HiveException: Configuration and input path are inconsistent
    at org.apache.hadoop.hive.ql.exec.MapOperator.setChildren(MapOperator.java:409)
{code}

This turns out to be because we are trying to feed an "orders" table into a table-scan which uses "customer" tables.

With more logging, it became clear that the object cache wasn't being flushed and we were getting the previous operator pipeline for the next vertex.

With extra logging for the actual object id

{code}
2014-06-05 20:36:17,240 INFO [main] org.apache.tez.runtime.task.TezChild: Object registry is org.apache.tez.runtime.common.objectregistry.ObjectRegistryImpl@53e6692b

2014-06-05 20:36:17,549 INFO [TezChild] org.apache.hadoop.hive.ql.exec.tez.ObjectCache: Object registry is org.apache.tez.runtime.common.objectregistry.ObjectRegistryImpl@4307dfbd get(CACHED\_INPUTS)

2014-06-05 20:36:17,635 INFO [TezChild] org.apache.hadoop.hive.ql.exec.tez.ObjectCache: Object registry is org.apache.tez.runtime.common.objectregistry.ObjectRegistryImpl@4307dfbd get(\_\_MAP\_PLAN\_\_)

2014-06-05 20:36:17,635 INFO [TezChild] org.apache.tez.runtime.common.objectregistry.ObjectLifeCycle: Getting org.apache.hadoop.hive.ql.plan.MapWork@588722d6 from cache VERTEX
{code}

At least 2 instances of ObjectRegistry are present in this particular JVM instance of TezChild


---

* [TEZ-1172](https://issues.apache.org/jira/browse/TEZ-1172) | *Major* | **Allow multiple Root Inputs to be specified per Vertex**

The default VertexManager in Tez for this handles only 1 RootInput - since it doesn't know how to combine multiple different Inputs. However, if a custom vertex manager plugin is specified by users - it should be possible to specify multiple RootInputs.


---

* [TEZ-1170](https://issues.apache.org/jira/browse/TEZ-1170) | *Major* | **Simplify Vertex Initializing transition**

After TEZ-1145 and 1151, a vertex should only need to stay in INITIALZING state when it has an uninitialized edge, or when the parallelism is at -1 (not set yet). Waiting for all RootInputInitializers to complete should not be required - as long as one of them sets parallelism (via a VertexManager).


---

* [TEZ-1169](https://issues.apache.org/jira/browse/TEZ-1169) | *Major* | **Allow numPhysicalInputs to be specified for RootInputs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1168](https://issues.apache.org/jira/browse/TEZ-1168) | *Major* | **Add a MultiMRInput**

A logical Input which can process multiple splits, and gives back a reader for each of them.
Used by SMB joins in Hive - which have multiple sorted files, which need to be merged together.


---

* [TEZ-1164](https://issues.apache.org/jira/browse/TEZ-1164) | *Major* | **Only events for tasks should be buffered in Initializing state**

Other events like eg VertexManagerEvent should be routed as they be needed in getting the vertex out of that state.


---

* [TEZ-1163](https://issues.apache.org/jira/browse/TEZ-1163) | *Minor* | **Tez Auto Reducer-parallelism throws Divide-by-Zero**

When the per-reducer estimate is set to 256Mb and over-all data output is ~200Mb, gets a divide-by-zero.

{code}
2014-05-31 16:17:29,125 FATAL [AsyncDispatcher event handler] org.apache.hadoop.yarn.event.AsyncDispatcher: Error in dispatcher thread
java.lang.ArithmeticException: / by zero
	at org.apache.tez.dag.library.vertexmanager.ShuffleVertexManager.determineParallelismAndApply(ShuffleVertexManager.java:392)
	at org.apache.tez.dag.library.vertexmanager.ShuffleVertexManager.schedulePendingTasks(ShuffleVertexManager.java:446)
{code}

Because of incorrect value set for minTasks

{code}
vertexmanager.ShuffleVertexManager: Shuffle Vertex Manager: settings minFrac:0.25 maxFrac:0.75 auto:true desiredTaskIput:256000000 minTasks:0
{code}


---

* [TEZ-1162](https://issues.apache.org/jira/browse/TEZ-1162) | *Major* | **Tez leaks CodecPool buffers**

Tez Fetcher currently leaks a codec pool (~32kb) for each partition fetched

This causes task failures due to the direct buffers allocated by the codec, which are not freed until a full GC (but whose allocation does not trigger GC).

It is possible to perform the entire shuffle operations without ever triggering a full GC, the following case 

{code}
Container exited with a non-zero exit code 143
], AttemptID:attempt\_1399351577718\_2330\_1\_05\_000020\_3 Info:Container container\_1399351577718\_2330\_01\_000310 COMPLETED with diagnostics set to [Container [pid=1734,containerID=container\_1399351577718\_2330\_01\_000310] is running beyond physical memory limits. Current usage: 4.1 GB of 4 GB physical memory used; 5.4 GB of 40 GB virtual memory used. Killing container.

container\_1399351577718\_2330\_01\_000365/ $ grep -ri "CodecPool.\*brand-new" syslog\* \| wc -l

6988
{code}

That is approx ~436Mb leak on a JVM spun up with -Xmx3500m & 4096m container.


---

* [TEZ-1161](https://issues.apache.org/jira/browse/TEZ-1161) | *Trivial* | **Minor fix to Simple History Logs, to allow mining by MR tasks**

The current raw history logging uses "\n"+^A separated blocks which results in only one row without a ^A - the first one.

This makes processing splits generated from this data complicated and requires an extra pre-processor step before processing.

This patch changes "\n^A" into "^A\n" (or "\r\n" as it may be on windows).


---

* [TEZ-1154](https://issues.apache.org/jira/browse/TEZ-1154) | *Trivial* | **tez-mapreduce-examples should depend on yarn-api**

UnionExample uses classes from yarn-api


---

* [TEZ-1151](https://issues.apache.org/jira/browse/TEZ-1151) | *Major* | **Vertex should stay in initializing state until custom vertex manager sets the parallelism**

In TEZ-1145, application is allowed to set -1 parallelism on a non 1-1 input vertex, and expect VertexManager to set the actual parallelism dynamically. However, when I does that, I hit the following exception:
{code}
org.apache.tez.dag.api.TezUncheckedException: vertex\_1400869346120\_0005\_1\_04 has -1 tasks but neither input initializers nor 1-1 uninited sources
        at org.apache.tez.dag.app.dag.impl.VertexImpl$InitTransition.handleInitEvent(VertexImpl.java:2485)
        at org.apache.tez.dag.app.dag.impl.VertexImpl$InitTransition.transition(VertexImpl.java:2431)
        at org.apache.tez.dag.app.dag.impl.VertexImpl$InitTransition.transition(VertexImpl.java:2412)
        at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:385)
        at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
        at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
        at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1267)
        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:158)
        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1716)
        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1702)
        at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:134)
        at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:81)
        at java.lang.Thread.run(Thread.java:695)
{code}


---

* [TEZ-1145](https://issues.apache.org/jira/browse/TEZ-1145) | *Major* | **Vertices should not start if they have uninitialized custom edges**

If the vertex is connected to a custom edge and the edge manager has not been set yet, then that vertex should not start. If it does then it will end up starting tasks that dont have all their specifications identified.


---

* [TEZ-1143](https://issues.apache.org/jira/browse/TEZ-1143) | *Major* | **1-1 source split event should be handled in Vertex.RUNNING and Vertex.INITED state**

One-one edge fail when the parallelism of source vertex changes dynamically (through a ShuffleVertexManager). Here is the stack:
{code}
2014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Vertex vertex\_1400646157236\_0012\_1\_03 parallelism set to 1 from 202014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_0000012014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_0000022014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_0000032014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_0000042014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_0000052014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000006
2014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_0000072014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000008
2014-05-21 00:05:55,284 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000009
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000010
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000011
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000012
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000013
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000014
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000015
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000016
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000017
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000018
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Removing task: task\_1400646157236\_0012\_1\_03\_000019
2014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Replacing edge manager for source:scope-41 destination: vertex\_1400646157236\_0012\_1\_032014-05-21 00:05:55,285 INFO [AsyncDispatcher event handler] org.apache.tez.dag.history.HistoryEventHandler: [HISTORY][DAG:dag\_1400646157236\_0012\_1][Event:VERTEX\_PARALLELISM\_UPDATED]: vertexId=vertex\_1400646157236\_0012\_1\_03, numTasks=1, vertexLocationHint=null, edgeManagersCount=12014-05-21 00:05:55,286 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.DAGImpl: Vertex vertex\_1400646157236\_0012\_1\_02 completed., numCompletedVertices=3, numSuccessfulVertices=3, numFailedVertices=0, numKilledVertices=0, numVertices=72014-05-21 00:05:55,287 ERROR [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.VertexImpl: Can't handle Invalid event V\_ONE\_TO\_ONE\_SOURCE\_SPLIT on vertex scope-61 with vertexId vertex\_1400646157236\_0012\_1\_05 at current state RUNNINGorg.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_ONE\_TO\_ONE\_SOURCE\_SPLIT at RUNNING
        at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:305)
        at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
        at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1263)
        at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:158)
        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1716)        at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1702)
        at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:134)
        at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:81)        at java.lang.Thread.run(Thread.java:695)
{code}

Attached complete AM log. scope-42 is the source vertex and scope-61 is the destination vertex.

The issue is that the code assumed that the split event will come before the vertex starts. This may not be valid in all cases. E.g. if the event comes from 2 different paths in the DAG then the vertex can start after 1 path sets the parallelism and then the second path sends the event. Also if the previous vertex was a shuffle/reduce then its parallelism can change while its running, resulting in changing the current vertex parallelism while its running.


---

* [TEZ-1140](https://issues.apache.org/jira/browse/TEZ-1140) | *Major* | **TestSecureShuffle leaves behind test data dirs**

MiniDFSCluster is not setup properly and ends up creating test data outside of the target dir.


---

* [TEZ-1137](https://issues.apache.org/jira/browse/TEZ-1137) | *Major* | **Move TezJobConfig to runtime-library and rename to TezRuntimeConfiguration**

Its currently sitting in the API project. Some values from here may need to move to TezConfiguration.


---

* [TEZ-1135](https://issues.apache.org/jira/browse/TEZ-1135) | *Critical* | **ShuffledUnorderedKVInput handles empty partitions incorrectly**

If the source data has empty partitions, the ShuffledInput which does need to fetch data (i.e. other partition is empty), ends up doing nothing.


---

* [TEZ-1134](https://issues.apache.org/jira/browse/TEZ-1134) | *Major* | **InputInitializer and OutputCommitter implicitly use payloads of the input and output**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1133](https://issues.apache.org/jira/browse/TEZ-1133) | *Blocker* | **Remove unnecessary MRHelpers methods or make them private**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1132](https://issues.apache.org/jira/browse/TEZ-1132) | *Blocker* | **Consistent naming of Input and Outputs**

Some places we should Sorted Partitioned. In others we should Shuffled. We should use a consistent naming scheme based on Sorted, Grouped, Partitioned sub-terms so that the function is clear from the name.


---

* [TEZ-1131](https://issues.apache.org/jira/browse/TEZ-1131) | *Major* | **Simplify EdgeManager APIs**

2 pieces of feedback from [~daijy] 
1) Its not clear the event.sourceIndex needs to be accessed. Solution - Make it part of the method parameters
2) the Map\<InputIndex, List\<TaskIndex\>\> is convoluted. Solution - Replace with Map\<TaskIndex, InputIndex\>. Amazing why we did not do this in the first place.


---

* [TEZ-1130](https://issues.apache.org/jira/browse/TEZ-1130) | *Major* | **Replace confusing names on Vertex API**

Make it language agnostic.


---

* [TEZ-1128](https://issues.apache.org/jira/browse/TEZ-1128) | *Major* | **OnFileUnorderedPartitionedKVOutput does not handle partitioning correctly with the MRPartitioner**

Two issues:
   1) It does not set value of TezJobConfig.TEZ\_RUNTIME\_NUM\_EXPECTED\_PARTITIONS. So MRPartitioner assumes the number of partitions is 1 and goes with a default partitioner that writes only to last partition. 
  2) If one of the partitions has empty output (due to issue 1) it gets stuck without fetching input.


---

* [TEZ-1127](https://issues.apache.org/jira/browse/TEZ-1127) | *Major* | **Add TEZ\_TASK\_JAVA\_OPTS and TEZ\_ENV configs to specify values from config**

There is no global setting available to specify JVM parameters for tez tasks (e.g: specifying native library location with java.library.path). Yarn allows specifying application.classpath, but not java opts. The only option right now is to set mapreduce.map.java.opts in the tez job config (or hive.tez.java.opts for Hive on Tez).

Suggestion from Bikas, while discussing this in tez-user group, is tez should have "TEZ\_TASK\_JAVA\_OPTS so that you don’t have to specify this via mapreduce configuration parameters"


---

* [TEZ-1121](https://issues.apache.org/jira/browse/TEZ-1121) | *Major* | **Clean up avro dependencies**

Avro is no longer used for any history/recovery data.


---

* [TEZ-1119](https://issues.apache.org/jira/browse/TEZ-1119) | *Major* | **Support display of user payloads in Tez UI**

Applications like Pig rely heavily on configurations bundled in as part of the user payload for debugging. This requires each Input/Output/Processor's user payload to be converted into something that easily consumable by the UI layer to be displayed back to the user as meaningful data.


---

* [TEZ-1118](https://issues.apache.org/jira/browse/TEZ-1118) | *Major* | **Tez with container reuse reports negative CPU usage**

2014-05-13 12:47:37,243 INFO [AsyncDispatcher event handler] org.apache.tez.dag.history.HistoryEventHandler: [HISTORY][DAG:dag\_1399351577718\_0764\_8][Event:TASK\_ATTEMPT\_FINISHED]: vertexName=Map 2, taskAttemptId=attempt\_1399351577718\_0764\_8\_01\_000321\_0, startTime=1400010446382, finishTime=1400010457242, timeTaken=10860, status=SUCCEEDED, diagnostics=, counters=Counters: 30, org.apache.tez.common.counters.DAGCounter, RACK\_LOCAL\_TASKS=1, File System Counters, FILE: BYTES\_READ=32, FILE: BYTES\_WRITTEN=103495, FILE: READ\_OPS=0, FILE: LARGE\_READ\_OPS=0, FILE: WRITE\_OPS=0, HDFS: BYTES\_READ=158991064, HDFS: BYTES\_WRITTEN=0, HDFS: READ\_OPS=2, HDFS: LARGE\_READ\_OPS=0, HDFS: WRITE\_OPS=0, org.apache.tez.common.counters.TaskCounter, GC\_TIME\_MILLIS=72, CPU\_MILLISECONDS=-455600

This seems to get worse as new tasks are scheduled on the container, CPU is obvious column in this csv (attempts are in execution order):

{noformat}
Map 2,attempt\_1399351577718\_0764\_1\_01\_000063\_0,22678,269235481,27830,17536,11967
Map 2,attempt\_1399351577718\_0764\_1\_01\_000167\_0,16472,265337919,-19970,17044,11854
Map 2,attempt\_1399351577718\_0764\_1\_01\_000301\_0,10197,173878898,-46140,11427,6899
Map 2,attempt\_1399351577718\_0764\_2\_01\_000059\_0,18545,269736723,-51050,17590,12271
Map 2,attempt\_1399351577718\_0764\_2\_01\_000107\_0,14677,269520373,-84270,17673,11095
Map 2,attempt\_1399351577718\_0764\_2\_01\_000228\_0,14910,261276556,-104380,16937,11470
Map 2,attempt\_1399351577718\_0764\_3\_01\_000008\_0,16164,269641107,-124260,17013,11306
Map 2,attempt\_1399351577718\_0764\_3\_01\_000136\_0,15105,267827690,-140730,17834,10370
Map 2,attempt\_1399351577718\_0764\_3\_01\_000240\_0,17380,235117784,-165260,15303,10948
Map 2,attempt\_1399351577718\_0764\_4\_01\_000056\_0,19848,269790867,-167870,17487,11510
Map 2,attempt\_1399351577718\_0764\_4\_01\_000146\_0,15303,267603313,-204130,17029,11672
Map 2,attempt\_1399351577718\_0764\_4\_01\_000264\_0,9518,188372846,-231590,12273,8495
Map 2,attempt\_1399351577718\_0764\_5\_01\_000024\_0,15836,270431273,-229970,17688,11045
Map 2,attempt\_1399351577718\_0764\_5\_01\_000150\_0,15368,266500919,-258690,17012,11385
Map 2,attempt\_1399351577718\_0764\_5\_01\_000266\_0,11882,183276660,-286700,11893,8350
Map 2,attempt\_1399351577718\_0764\_6\_01\_000017\_0,17037,270252275,-293420,17517,12030
Map 2,attempt\_1399351577718\_0764\_6\_01\_000156\_0,12759,266500919,-313380,17012,11385
Map 2,attempt\_1399351577718\_0764\_6\_01\_000266\_0,10078,188372846,-338580,12273,8495
Map 2,attempt\_1399351577718\_0764\_7\_01\_000021\_0,15984,270757527,-343980,17972,11519
Map 2,attempt\_1399351577718\_0764\_7\_01\_000102\_0,14149,269589224,-355560,17698,10871
Map 2,attempt\_1399351577718\_0764\_7\_01\_000243\_0,11578,235644691,-395730,15244,10508
Map 2,attempt\_1399351577718\_0764\_8\_01\_000026\_0,16377,270431273,-402260,17688,11045
Map 2,attempt\_1399351577718\_0764\_8\_01\_000127\_0,15517,268903941,-422380,17591,11681
Map 2,attempt\_1399351577718\_0764\_8\_01\_000321\_0,10860,158991064,-455600,10658,6764
{noformat}


---

* [TEZ-1116](https://issues.apache.org/jira/browse/TEZ-1116) | *Major* | **Refactor YarnTezDAGChild**

To be more testable, and usable elsewhere - example Local mode.


---

* [TEZ-1114](https://issues.apache.org/jira/browse/TEZ-1114) | *Major* | **Fix encrypted shuffle**

The failure should be detected early by the fetcher and a better error message generated denoting that ssl is not supported for now.


---

* [TEZ-1111](https://issues.apache.org/jira/browse/TEZ-1111) | *Major* | **TestMRHelpers fails if HADOOP\_COMMON\_HOME is defined in the shell env**

If HADOOP\_COMMON\_HOME is defined in the shell, the test case fails.
If I unset HADOOP\_COMMON\_HOME, it succeeds.
The test case should be predictable with this common env settings.

The following interaction shows the error message.

{noformat}
$ echo $HADOOP\_COMMON\_HOME
/Users/mislam/softwares/hadoop/current
$ mvn clean package -Dtest=TestMRHelpers
…
….
testMREnvSetupForMap(org.apache.tez.mapreduce.hadoop.TestMRHelpers)  Time elapsed: 0.016 sec  \<\<\< FAILURE!
org.junit.ComparisonFailure: expected:\<$PWD:[$HADOOP\_COMMON\_HOME]/lib/native\> but was:\<$PWD:[/Users/mislam/softwares/hadoop/current]/lib/native\>
	at org.junit.Assert.assertEquals(Assert.java:115)
	at org.junit.Assert.assertEquals(Assert.java:144)
	at org.apache.tez.mapreduce.hadoop.TestMRHelpers.testCommonEnvSettingsForMRTasks(TestMRHelpers.java:339)
	at org.apache.tez.mapreduce.hadoop.TestMRHelpers.testMREnvSetupForMap(TestMRHelpers.java:355)

...

{noformat}


---

* [TEZ-1106](https://issues.apache.org/jira/browse/TEZ-1106) | *Major* | **Tez framework should use a unique subdir for staging data**

Currently the files are created in different sub-directories. It is hard to manage and cleanup at the end.

The proposal is to create a new subdir  : $STAGE\_DIR/\<APP\_ID\>/

All recovery files will go under  : $STAGE\_DIR/\<APP\_ID\>/recovery/\<attemp\_num\>/

All confs will go under:  $STAGE\_DIR/\<APP\_ID\>/conf/

All dagplans will go:  $STAGE\_DIR/\<APP\_ID\>/dag\_id/plan/


---

* [TEZ-1102](https://issues.apache.org/jira/browse/TEZ-1102) | *Major* | **Abstract out connection management logic in shuffle code**

Unordered / ordered shuffle manage their own connections.  Currently enhancements / bug fixes on connection management has to be done in both places.  

Purpose of this JIRA is abstract out the connection management in unordered/ordered shuffle code.


---

* [TEZ-1099](https://issues.apache.org/jira/browse/TEZ-1099) | *Minor* | **Minor documentation improvement and Eclipse friendlyness**

This patch:
\* makes the build pre-requisites for Tez explicit, and
\* makes the Maven project importable into Eclipse IDE.


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
	at org.apache.tez.client.AMConfiguration.\<init\>(AMConfiguration.java:81)
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

* [TEZ-1091](https://issues.apache.org/jira/browse/TEZ-1091) | *Major* | **Respect keepAlive parameter when cleaning up Fetcher connections**

Query:  Query\_17 (shuffle intensive query)

1. Certain fetchers are making too many calls in tight loop fashion to shufflehandler.  This happens only when MapOutput.Type == WAIT.  This would created pressure on ShuffleHandler on large scale cluster.

Please refer to "fetcher #24" as an example in the attachment.

2. If keepalive is enabled, CleanupConnection() should disconnect the connection only in exception path.


---

* [TEZ-1090](https://issues.apache.org/jira/browse/TEZ-1090) | *Major* | **Micro optimization - Remove duplicate updateProcessTree() in TaskCounterUpdater**

In TaskCounterUpdater, updateProcessTree() is invoked from initResourceCalculatorPlugin & recordInitialCpuStats.  With ResourceCalculatorProcessTree, close to 300-500 ms is wasted in every task launch.


---

* [TEZ-1089](https://issues.apache.org/jira/browse/TEZ-1089) | *Major* | **CompositeDataMovementEvent srcIndexEnd is not an index**

CompositeDataMovemntEvent accepts indices for start / end. End happens to be a count instead of an index - which can get confusing, especially given the name (srcIndexEnd).


---

* [TEZ-1088](https://issues.apache.org/jira/browse/TEZ-1088) | *Major* | **Flaky Test: TestFaultTolerance.testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess**

2014-04-28 20:14:19,100 INFO [AsyncDispatcher event handler] org.apache.tez.dag.history.recovery.RecoveryService: DAG completed, dagId=dag\_1398715972246\_0001\_9, queueSize=0
2014-04-28 20:14:19,147 INFO [AsyncDispatcher event handler] org.apache.tez.dag.history.HistoryEventHandler: [HISTORY][DAG:dag\_1398715972246\_0001\_9][Event:DAG\_FINISHED]: dagId=dag\_1398715972246\_0001\_9, startTime=1398716046982, finishTime=1398716059090, timeTaken=12108, status=FAILED, diagnostics=Vertex re-running, vertexName=v1, vertexId=vertex\_1398715972246\_0001\_9\_00
Vertex failed, vertexName=v2, vertexId=vertex\_1398715972246\_0001\_9\_01, diagnostics=[Task failed, taskId=task\_1398715972246\_0001\_9\_01\_000001, diagnostics=[AttemptID:attempt\_1398715972246\_0001\_9\_01\_000001\_0 Info:Error: exceptionThrown=java.lang.RuntimeException: Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_0\_10001 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 0
Expected output: 4 got: 5
	at org.apache.tez.test.TestProcessor.throwException(TestProcessor.java:98)
	at org.apache.tez.test.TestProcessor.run(TestProcessor.java:250)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:307)
	at org.apache.hadoop.mapred.YarnTezDagChild$5.run(YarnTezDagChild.java:581)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1491)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:570)
, errorMessage=Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_0\_10001 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 0
Expected output: 4 got: 5
Container killed by the ApplicationMaster.
Container killed on request. Exit code is 143
, AttemptID:attempt\_1398715972246\_0001\_9\_01\_000001\_1 Info:Error: exceptionThrown=java.lang.RuntimeException: Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_1\_10011 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 1
Expected output: 4 got: 5
	at org.apache.tez.test.TestProcessor.throwException(TestProcessor.java:98)
	at org.apache.tez.test.TestProcessor.run(TestProcessor.java:250)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:307)
	at org.apache.hadoop.mapred.YarnTezDagChild$5.run(YarnTezDagChild.java:581)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1491)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:570)
, errorMessage=Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_1\_10011 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 1
Expected output: 4 got: 5
Container released by application, AttemptID:attempt\_1398715972246\_0001\_9\_01\_000001\_2 Info:Error: exceptionThrown=java.lang.RuntimeException: Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_2\_10003 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 2
Expected output: 4 got: 6
	at org.apache.tez.test.TestProcessor.throwException(TestProcessor.java:98)
	at org.apache.tez.test.TestProcessor.run(TestProcessor.java:250)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:307)
	at org.apache.hadoop.mapred.YarnTezDagChild$5.run(YarnTezDagChild.java:581)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1491)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:570)
, errorMessage=Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_2\_10003 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 2
Expected output: 4 got: 6
Container released by application, AttemptID:attempt\_1398715972246\_0001\_9\_01\_000001\_3 Info:Error: exceptionThrown=java.lang.RuntimeException: Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_3\_10001 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 3
Expected output: 4 got: 8
	at org.apache.tez.test.TestProcessor.throwException(TestProcessor.java:98)
	at org.apache.tez.test.TestProcessor.run(TestProcessor.java:250)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.run(LogicalIOProcessorRuntimeTask.java:307)
	at org.apache.hadoop.mapred.YarnTezDagChild$5.run(YarnTezDagChild.java:581)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:396)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1491)
	at org.apache.hadoop.mapred.YarnTezDagChild.main(YarnTezDagChild.java:570)
, errorMessage=Expected output mismatch of current FailingProcessor: attempt\_1398715972246\_0001\_9\_01\_000001\_3\_10001 dag: testInputFailureCausesRerunAttemptWithinMaxAttemptSuccess vertex: v2 taskIndex: 1 taskAttempt: 3
Expected output: 4 got: 8], Vertex failed as one or more tasks failed. failedTasks:1]
DAG failed due to vertex failure. failedVertices:1 killedVertices:0, counters=Counters: 12, org.apache.tez.common.counters.DAGCounter, NUM\_FAILED\_TASKS=6, TOTAL\_LAUNCHED\_TASKS=9, File System Counters, HDFS: BYTES\_READ=0, HDFS: BYTES\_WRITTEN=0, HDFS: READ\_OPS=0, HDFS: LARGE\_READ\_OPS=0, HDFS: WRITE\_OPS=0, org.apache.tez.common.counters.TaskCounter, GC\_TIME\_MILLIS=21, CPU\_MILLISECONDS=-12330, PHYSICAL\_MEMORY\_BYTES=548294656, VIRTUAL\_MEMORY\_BYTES=4034506752, COMMITTED\_HEAP\_BYTES=310968320
2014-04-28 20:14:19,147 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.DAGImpl: DAG: dag\_1398715972246\_0001\_9 finished with state: FAILED
2014-04-28 20:14:19,148 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.dag.impl.DAGImpl: dag\_1398715972246\_0001\_9 transitioned from RUNNING to FAILED
2014-04-28 20:14:19,148 INFO [AsyncDispatcher event handler] org.apache.tez.dag.app.DAGAppMaster: DAG completed, dagId=dag\_1398715972246\_0001\_9, dagState=FAILED
2014-04-28 20:14:19,148 INFO [AsyncDispatcher event handler] org.apache.tez.common.TezUtils: Redirecting log files based on addend: dag\_1398715972246\_0001\_9\_post
2014-04-28 20:14:19,148 INFO [ContainerLauncher #4] org.apache.tez.dag.app.launcher.ContainerLauncherImpl: Processing the event EventType: CONTAINER\_STOP\_REQUEST


---

* [TEZ-1087](https://issues.apache.org/jira/browse/TEZ-1087) | *Major* | **ShuffleManager fails with IllegalStateException**

While running a Pig-on-Tez job, I ran into this error-
{code}
at java.util.ArrayList$Itr.remove(ArrayList.java:844)
 at org.apache.tez.runtime.library.shuffle.common.impl.ShuffleManager.constructFetcherForHost(ShuffleManager.java:314)
 at org.apache.tez.runtime.library.shuffle.common.impl.ShuffleManager.access$1200(ShuffleManager.java:80)
 at org.apache.tez.runtime.library.shuffle.common.impl.ShuffleManager$RunShuffleCallable.call(ShuffleManager.java:260)
 at org.apache.tez.runtime.library.shuffle.common.impl.ShuffleManager$RunShuffleCallable.call(ShuffleManager.java:213)
 at java.util.concurrent.FutureTask.run(FutureTask.java:262)
 at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
 at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
 at java.lang.Thread.run(Thread.java:744)
{code}


---

* [TEZ-1085](https://issues.apache.org/jira/browse/TEZ-1085) | *Major* | **Tez job gets "Could not load native gpl library or native-lzo library" error**

Even when mapreduce.admin.user.env property is set to LD\_LIBRARY\_PATH=$HADOOP\_COMMON\_HOME/lib/native and MRHelpers.updateEnvironmentForMRTasks(conf, taskEnv, isMap); is called it does not work if HADOOP\_COMMON\_HOME is not set on the client. TezYARNUtils.setEnvFromInputString sets an env variable to "" if not found. But HADOOP\_COMMON\_HOME will be set by the ContainerLaunch.java in YARN as part of YarnConfiguration.DEFAULT\_NM\_ENV\_WHITELIST. So it is not necessary that the clients have HADOOP\_COMMON\_HOME set.


---

* [TEZ-1082](https://issues.apache.org/jira/browse/TEZ-1082) | *Major* | **reading errorstream in Fetcher throws NPE (when fetcher timesout to establish a connection)**

In case of connection timeout, fetcher throws NPE in reading the error stream.  
\>\>
Caused by: java.lang.NullPointerException
	at org.apache.hadoop.io.IOUtils.copyBytes(IOUtils.java:78)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.readErrorStream(Fetcher.java:436)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyFromHost(Fetcher.java:364)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.run(Fetcher.java:203)
\>\>

It should be checking for "connectSucceeded" flag instead of "connection != null"


---

* [TEZ-1080](https://issues.apache.org/jira/browse/TEZ-1080) | *Major* | **Configuration for non MR based Inputs/Outputs**

De-link configuration from MRHelpers (except for the YARNRunner case), and allow for these to be configured easily - exposing necessary setters / getters without having to rely on config keys.


---

* [TEZ-1079](https://issues.apache.org/jira/browse/TEZ-1079) | *Major* | **Make tez example jobs use the ToolRunner framework**

If they use the hadoop tool runner framework then they get some benefits like handling -D options. More compatibility with hadoop jar command format.


---

* [TEZ-1076](https://issues.apache.org/jira/browse/TEZ-1076) | *Major* | **Allow events to be sent to InputInitializers**

Events from tasks / vertices to InputInitializers.


---

* [TEZ-1074](https://issues.apache.org/jira/browse/TEZ-1074) | *Major* | **DAGAppMaster takes lots of CPU when running a reasonably large job in the cluster**

- Ran a job which used 200 containers.
- DAGAppMaster was running at 70% CPU most of the time during the job.
- Profiling revealed that lots of time was spent on TezEvent.readFields --\> ... --\> TaskStatusUpdateEvent.readFields().
- Default "tez.task.am.heartbeat.interval-ms.max=100" ms.  With 200 containers, potentially 2000 events (these events have TezCounters) per second would be processed by DAGAppMaster.

With large job, cpu usage of DAGAppMaster can bloat up significantly.  

One option to reduce CPU usage could be to send modified TezCounters in TezStatusUpdateEvent.


---

* [TEZ-1073](https://issues.apache.org/jira/browse/TEZ-1073) | *Minor* | **RLE IFile merge() fastpath**

IFile iterators actually consist of a tri-state - NEW\_KEY, SAME\_KEY and NO\_KEY.

This can be used to avoid rebalancing the priority queue when the same reader is returning SAME\_KEY in its reader during the initial merge operation in the reducer.


---

* [TEZ-1065](https://issues.apache.org/jira/browse/TEZ-1065) | *Major* | **DAGStatus.getVertexStatus and other vertex related API's should maintain vertex order**

They should maintain the incoming vertex order. In VertexProgress e.g. lets use LinkedHashMap instead of HashMap.


---

* [TEZ-1062](https://issues.apache.org/jira/browse/TEZ-1062) | *Major* | **Create SimpleProcessor for processors that only need to implement the run method**

The SimpleProcessor could take care of all things like starting input, committing outputs. It would handle no events, since simple processors dont need to handle inputs. Thus the user would only need to implement their custom task logic in a new execute() method.


---

* [TEZ-1058](https://issues.apache.org/jira/browse/TEZ-1058) | *Blocker* | **Replace user land interfaces with abstract classes**

Similar to Input/Processor/Output, there are other interfaces that users may implement. These should move to abstract classes for better compatibility management and sharing common basic functionality in the base abstract class.


---

* [TEZ-1057](https://issues.apache.org/jira/browse/TEZ-1057) | *Blocker* | **Replace interfaces with abstract classes for Processor/Input/Output classes**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-1055](https://issues.apache.org/jira/browse/TEZ-1055) | *Blocker* | **Rename tez-mapreduce-examples to tez-examples**

And also the internal classes where applicable to remove MR references.


---

* [TEZ-1053](https://issues.apache.org/jira/browse/TEZ-1053) | *Major* | **Refactor: Pass TaskLocationHint directly to the Scheduling logic**

Currently, the location hint is resolved and translated to hosts and relaxed to racks directly in the TaskAttemptImpl code. The AMRMClient already does that and so we are duplicating the name resolution and relaxation of host-\>rack. Also, as the information in TaskLocationHint evolves further, eg. support for container locality, then its better to leave the bindings as late as possible.


---

* [TEZ-1049](https://issues.apache.org/jira/browse/TEZ-1049) | *Major* | **Refactor - LocationHint need not be passed into TaskAttemptImpl's constructor**

It should be able to simply look it up from the Vertex. That way there is one location as the source of truth instead of multiple copies of the same object spread all over the place. It allows changes to be made in 1 places instead of having to track and update all references.


---

* [TEZ-1048](https://issues.apache.org/jira/browse/TEZ-1048) | *Major* | **NPE when previous task attempts fail without generating any data**

We NPE when the previous task fails without generating data.


---

* [TEZ-1042](https://issues.apache.org/jira/browse/TEZ-1042) | *Major* | **Stop re-routing stdout, stderr for tasks and AM**

Re-routing stdout and stderr based on dagId or taskAttemptId isn't very useful - since recommended usage is an actual Logger. Typically rerouting stdout, stderr just ends up creating a bunch of 0 byte files. GC etc ends up in the first log file anyway. 
Planning on changing things to add a log to stdout/stderr each time a task or dag changes - but write to the initial files for the container.


---

* [TEZ-1041](https://issues.apache.org/jira/browse/TEZ-1041) | *Blocker* | **Use VertexLocationHint consistently everywhere in the API**

VertexLocationHint is used internally and not by end users.


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
        - locked \<7f03a5b90\> (a org.apache.tez.runtime.library.output.OnFileSortedOutput)
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

* [TEZ-1039](https://issues.apache.org/jira/browse/TEZ-1039) | *Major* | **Add Container locality to TaskScheduler**

Currently, the task scheduler support node and rack locality. Proposal is to add another level - container locality (given a container) which means first try to assign to the container, then fall back to the container's node, rack and so on.


---

* [TEZ-1038](https://issues.apache.org/jira/browse/TEZ-1038) | *Major* | **Move TaskLocationHint outside of VertexLocationHint**

We could also use this to rename TaskLocation.getDataLocalHosts() to just TaskLocation.getHosts(). Data locality, while relevant, is not necessary.


---

* [TEZ-1032](https://issues.apache.org/jira/browse/TEZ-1032) | *Major* | **Allow specifying tasks/vertices to be profiled**

Specifying container numbers (via tez.profile.container.list) is not very useful... it would be nice to be able to specify particular stage (e.g. "Map 6") to profile.


---

* [TEZ-1029](https://issues.apache.org/jira/browse/TEZ-1029) | *Major* | **Fetcher can fail to report input failed event upon connection error**

When there is a connection error then the fetcher fails all the maps but does not report input read error to the AM. So the AM does not get any information to rerun the source (if many fetchers report read errors). A connection failed also results in the shuffle-scheduler deciding that too many different map sources have failed and so it should fail itself. Multiple attempts of the reducer fail and the job fails. Looking at MR Fetcher code, a connection issue is also reported as a read error to the MR AM. Planning on making the same fix in the Tez Fetcher as was made in MAPREDUCE-4772.


---

* [TEZ-1027](https://issues.apache.org/jira/browse/TEZ-1027) | *Trivial* | **orderedwordcount needs to respect tez.staging-dir property**

Currently orderedwordcount job is not respecting tez.staging-dir property. When AM recovery is enabled, the job recover data is being stored at /user/\<username\>/.staging/\<app id\> location instead the path defined by tez.staging-dir .


---

* [TEZ-1025](https://issues.apache.org/jira/browse/TEZ-1025) | *Major* | **Rename tez.am.max.task.attempts to tez.am.task.max.failed.attempts**

The usage of the value is to determine the number of failed attempts that will be tolerated before failing the job. A rename to add failed in the config string will help clear the confusion. This will be an incompatible change.


---

* [TEZ-1024](https://issues.apache.org/jira/browse/TEZ-1024) | *Major* | **Fix determination of failed attempts in recovery**

Current code looks at task max.attempts to determine if we have already run too many attempts in the previous attempt. However, this would miscount killed attempts (due to preemptione etc) as failed attempts. We should probably be looking at the attempt status to determine the number of failed attempts.


---

* [TEZ-1023](https://issues.apache.org/jira/browse/TEZ-1023) | *Major* | **Tez runtime configuration changes by users are not propagated to the jobs**

Currently if a tezsession starts, all tez runtime settings are applicable across the session.  Any changes to tez runtime configs like ("tez.runtime.io.sort.mb", "tez.runtime.shuffle.connect.timeout", "tez.runtime.shuffle.merge.percent" etc) are not propagated to the jobs.  

Users should be allowed to change tez-runtime configs. (e.g from hive-cli user should be modify to set tez.runtime.io.sort.mb).


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

* [TEZ-1018](https://issues.apache.org/jira/browse/TEZ-1018) | *Major* | **VertexManagerPluginContext should enable assigning locality to scheduled tasks**

This may be used by VertexManager to decide the location of their tasks depending on the location of source tasks.


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

* [TEZ-1007](https://issues.apache.org/jira/browse/TEZ-1007) | *Major* | **MRHelpers.addLog4jSystemProperties() duplicates code from TezClientUtils.addLog4jSystemProperties()**

MRHelpers should call the TezClientUtils method. There may be other such methods too.


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

* [TEZ-1003](https://issues.apache.org/jira/browse/TEZ-1003) | *Major* | **Need a input that merges multiple ShuffleMergedInput from VertexGroup**

In PIG-3835, was trying to do use vertex groups for unions. Union followed by store works fine. But when trying to do groupby, 
 
{code}
A = LOAD '/tmp/data' AS (f1:int,f2:int);
B = LOAD '/tmp/data2' AS (f1:int,f2:int);
C = UNION onschema A,B;
D = GROUP C by f1;
E = FOREACH D GENERATE group, SUM(C.f2);
store E into '/tmp/tezout' using PigStorage();
{code}

ConcatenatedMergedKeyValuesInput on the reduce, had only grouped records within each input and not across all inputs.

i.e If A had records
a 1
b 1
b 2
and B
a 2
a 3
b 3

The records from ConcatenatedMergedKeyValuesInput of A and B were
a {1}, b {1,2}, a {2,3}, b {3} while I am expecting a {1,2,3}, b {1,2,3}


---

* [TEZ-1002](https://issues.apache.org/jira/browse/TEZ-1002) | *Trivial* | **No HISTORY event for CONTAINER\_STOP\_REQUEST**

Tez AM logs have history events for launched containers, but no history events for stopped containers.

This makes it hard to verify the number of containers alive from history events.


---

* [TEZ-998](https://issues.apache.org/jira/browse/TEZ-998) | *Major* | **InvalidStateTransitonException: Invalid event: V\_INIT at INITED**

While running HA tests where AM was being killed while the hive query was running we saw that the application failed with exception

org.apache.hadoop.yarn.state.InvalidStateTransitonException: Invalid event: V\_INIT at INITED


---

* [TEZ-997](https://issues.apache.org/jira/browse/TEZ-997) | *Major* | **Internal Errror in am logs during dag shutdown**

During a hive on tez job which failed we saw an exception trace during dag shutdown.


---

* [TEZ-988](https://issues.apache.org/jira/browse/TEZ-988) | *Major* | **Enable KeepAlive in Tez Fetcher**

1. Currently http.maxConnections is set to 5 (default).  Make this configurable in Fetcher.java.  This will help in running larger queries

2. ErrorStream has to be read completely in order to make the connection reusable (when keepAlive is enabled).  Currently, we do not read error stream.


---

* [TEZ-960](https://issues.apache.org/jira/browse/TEZ-960) | *Minor* | **Typos in MRJobConfig**

{code}
MR\_TEZ\_INPUT\_INITIALIZER\_SERIALIZE\_EVENT\_PAYLAOD,
MR\_TEZ\_INPUT\_INITIALIZER\_SERIALIZE\_EVENT\_PAYLAOD\_DEFAULT

VertexManagerPluginContext getTotalAVailableResource
{code}


---

* [TEZ-919](https://issues.apache.org/jira/browse/TEZ-919) | *Major* | **Fix shutdown handling for Shuffle (regular and broadcast)**

Split from TEZ-711. Shutting down ShuffledInput and ShuffledUnsortedInput needs some work.


---

* [TEZ-886](https://issues.apache.org/jira/browse/TEZ-886) | *Major* | **Add @Nullable annotation at API level**

It's effective to avoid NPE by adding @Nullable annotation. This JIRA will be done after TEZ-884.


---

* [TEZ-873](https://issues.apache.org/jira/browse/TEZ-873) | *Major* | **Allow MRInputLegacy to expose the individual input split**

Currently there is no way of getting InputSplit from TezProcessor. In current MR framework, there is  a way to find out the filename through FileSplit.  For example, one common uses is to get the filename in map
String fileName = ((FileSplit) context.getInputSplit()).getPath().getName();

There are other meta-data in Inputsplit that could be used by existing MR user.


This JIRA is to add APIs to expose the InputSplit by adding these   TezGroupedSplit.getWrapperSplit() and MRInput.getInputSplit().

Although MRInputLegacy provide an API to get the InputSplit, it has few issues:
 \* Without TezGroupedSplit.getWrapperSplit() it is unusable.
 \* Since it is used in various use cases, I propose to move it from MRInputLegacy to MRInput.
\* Currently the APIs are named as getNewInputSplit() and getOldInputSplit().  These should be merged into one : getInputSplit(). The new/old API should be handled internally.

Please give your feedback.


---

* [TEZ-870](https://issues.apache.org/jira/browse/TEZ-870) | *Blocker* | **LocalContainerLauncher improvement - error handling, multiple tasks, Tez events**

LocalContainerLauncher  should just be responsible for queuing up requests, and starting threads based on the number of configured tasks.


---

* [TEZ-866](https://issues.apache.org/jira/browse/TEZ-866) | *Major* | **Add a TezMergedInputContext for MergedInputs**

**WARNING: No release note provided for this incompatible change.**


---

* [TEZ-857](https://issues.apache.org/jira/browse/TEZ-857) | *Major* | **Split Input/Output interfaces into Framework / User components**

Inputs / Outputs have several methods which are not meant for user interaction - initialize(Tez\*Context), close(), TEZ-844 is adding another.

There has been confusion in the past on whether the framework will call close, or whether it's the user's responsibility.

The framework specific methods and the Processor usable methods can be split into a separate interface. Input/Output writers would need to implement both, Processor writers would only see the Input part of the interface.

TEZ-782, TEZ-827 introduced some requirements on Inputs which are not enforced at compile time (must request mem). These could potentially be added to the framework part of the interface to force Inputs/Outputs to be aware of them at compile time, while not polluting the Processor interface.


---

* [TEZ-817](https://issues.apache.org/jira/browse/TEZ-817) | *Critical* | **TEZ\_LIB\_URI are always uploaded as public Local Resource**

They can point to any remote location that may be specific to a user (if the user is playing with a private build). In that case, job submission will fail since YARN will complain that the public LR is not public on the remote FS.


---

* [TEZ-811](https://issues.apache.org/jira/browse/TEZ-811) | *Major* | **Update docs on how to contribute to Tez.**

https://cwiki.apache.org/confluence/display/TEZ/How+to+contribute+to+Tez


---

* [TEZ-802](https://issues.apache.org/jira/browse/TEZ-802) | *Major* | **Determination of Task Placement for 1-1 Edges**

Currently, task placement is determined by TaskLocationHints that are specified by the user in the API or during runtime. Everything else runs as without placement constraints. While this works for broadcase and scatter-gather edges, it does not work for 1-1 edges.


---

* [TEZ-800](https://issues.apache.org/jira/browse/TEZ-800) | *Major* | **One-one edge with parallelism -1 fails if source vertex parallelism is not -1 as well**

// no input initializers. At this moment, only other case is 1-1 edge
          // with uninitialized sources
          boolean hasOneToOneUninitedSource = false;
          for (Map.Entry\<Vertex, Edge\> entry : vertex.sourceVertices.entrySet()) {
            if (entry.getValue().getEdgeProperty().getDataMovementType() == 
                DataMovementType.ONE\_TO\_ONE) {
              if (entry.getKey().getTotalTasks() == -1) {
                hasOneToOneUninitedSource = true;
                break;
              }
            }
          }

This checks for the source vertex which has the 1-1 edge to also have -1 parallelism.


---

* [TEZ-737](https://issues.apache.org/jira/browse/TEZ-737) | *Major* | **DAG name should be unique within a Tez Session**

The name is the only identifier provided by the user and when querying a session's history, this can lead to confusion if multiple DAGs are present with the same name.


---

* [TEZ-708](https://issues.apache.org/jira/browse/TEZ-708) | *Major* | **Avoid asking for new containers in uber-local mode**

Once we finish this task, the TaskSchedulerEventHandler should not ask for new container in the Uber-mode.


---

* [TEZ-707](https://issues.apache.org/jira/browse/TEZ-707) | *Blocker* | **Create LocalContainerLauncher**

Create LocalContainerLauncher and make it work for a single stage DAG. The TaskSchedulerEventHandler still asks RM for new container but LocalContainerLauncher will run TezTask in form of thread instead of using this container from yarn.


---

* [TEZ-700](https://issues.apache.org/jira/browse/TEZ-700) | *Major* | **Helper API's to monitor a DAG to completion**

There is a lot of boiler plate code to monitor a dag progress to completion. A simple API to monitor the job to completion will be reduce this burden.


---

* [TEZ-699](https://issues.apache.org/jira/browse/TEZ-699) | *Major* | **Have sensible defaults for java opts**

Its a burden to have to specify them all the time. API's already exist if users want to set special values. Also, for vertex memory would be good to have a TezUtils.getDefaultVertexResource() with a sensible resource size.


---

* [TEZ-698](https://issues.apache.org/jira/browse/TEZ-698) | *Major* | **Make it easy to create and configure MRInput/MROutput and other inputs/outputs**

We have moved away from MR and its not necessary for anyone to write mappers and reducers or to configure them. But MR input and output and Shuffle related inputs/outputs. Currently we have to invoke a host of methods to configure them. If we can have a single API to make these configs then it would really help. Secondly for IO pairs like ShuffleInput/SortedOutput, their configs are related (KV types e.g.) So it maybe useful to have a combined API that generates configs for both in a single API.


---

* [TEZ-696](https://issues.apache.org/jira/browse/TEZ-696) | *Major* | **Remove implicit copying of processor payload to input and output**

In the task, the processor payload is implicitly copied to the input and output if they dont have one. While this may have been convenient in some cases, its very confusing when things dont work or when they surprisingly work. Also, its probably clearer to specify payload where appropriate so that its clear which one is for which. While writing the word count example I had to spend a lot of time debugging why my outputs had stopped working when I removed the map reduce confs from my non-MR processors.


---

* [TEZ-695](https://issues.apache.org/jira/browse/TEZ-695) | *Major* | **Create Abstract class for Input/Processor/Output**

Currently, the context is passed to IPO objects in the initialize method and its their burden to save a copy for future use. Having an abstract class for them would allow common things like this to be done in the abstract class and reduce the burden on the IPO developer.


---

* [TEZ-692](https://issues.apache.org/jira/browse/TEZ-692) | *Major* | **Unify job submission in either TezClient or TezSession**

Its confusing to have 2 ways to create and submit a tez job. The developer has to spend time thinking about and deciding which method to use.


---

* [TEZ-690](https://issues.apache.org/jira/browse/TEZ-690) | *Major* | **Tez API Ease of Use**

Recently we wrote the wordcount example from scratch using Tez API's in TEZ-689. The code shows some room for improvement in making the Tez API's more concise and less error prone. This jira tracks some of those changes. The improvements in this jira will be reflected in the cleanliness and conciseness of the word count example job.


---

* [TEZ-684](https://issues.apache.org/jira/browse/TEZ-684) | *Major* | **Uber/Local modes for Tez**

Similarly to MapReduce Uber-mode in Yarn, we plan to create the Uber-mode for Tez. It runs all tasks in local in one process.

Our target is to start DAGAppMaster in local JVM and let it run all tasks in one process. 

Here is my design: 

Once user submits a DAG, Tez starts a instance of DAGAppMaster. This DAGAppMaster will check TezConfiguration before instantiate ContainerLauncher. If "is\_Uber" is true, DAGAppMaster creates a LocalContainerLauncher. LocalTaskScheduler and LocalTaskSchedulerEventHandler will call LocalContainerLauncher to run all tasks one by one in a single JVM. Communications between ResourceManager and local classes (DAGAppMaster, LocalContainerLauncher, LocalTaskScheduler, and LocalTaskSchedulerEventHandler) are muted.


---

* [TEZ-661](https://issues.apache.org/jira/browse/TEZ-661) | *Major* | **Implement a non-sorted partitioned output**

When implementing Pig union, we need to gather data from two or more upstream vertexes without sorting. The vertex itself might consists of several tasks. Ideally, it should use OnFileUnorderedKVOutput with DataMovementType.SCATTER\_GATHER. However, this combination does not work according to [~hitesh]. We need to implement that. Also, key is meaningless in this scenario, we just want to evenly distribute the output records to tasks.


---

* [TEZ-657](https://issues.apache.org/jira/browse/TEZ-657) | *Major* | **Tez should process the Container exit status - specifically when the RM preempts a container**

Containers preempted by the RM will currently register as task failures - these tasks should be considered to be KILLED instead.

Handling the entire preemption hint logic would be a separate jira.


---

* [TEZ-480](https://issues.apache.org/jira/browse/TEZ-480) | *Major* | **Create InputReady VertexManager**

It will look at edge type and scheduler tasks when their input is ready.


---

* [TEZ-387](https://issues.apache.org/jira/browse/TEZ-387) | *Major* | **Move DAGClientHandler into its own class**

DAGClientHandler code lies inside the DAGAppMaster. Moving it into its own class will help unit testing it.


---

* [TEZ-373](https://issues.apache.org/jira/browse/TEZ-373) | *Major* | **Create UserPayload class for internal code**

Currently Tez allows user payload to be passed as byte[]. Within Tez code is hard to understand where byte[] is userPayload and where is not user payload. If we create a TezUserPayload class that contains byte[] as a member then its much easier to search and identify in code.


---

* [TEZ-37](https://issues.apache.org/jira/browse/TEZ-37) | *Major* | **TaskScheduler.addTaskRequest() should handle duplicate tasks**

Options
1) reject duplicates
2) replace old with new



