
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
# Apache Tez  0.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2370](https://issues.apache.org/jira/browse/TEZ-2370) | *Minor* | **Add stages information to RM UI for debugging / visibility on job progress**

Something that has been bugging me since last year is the difficulty of debugging Tez jobs compared to MapReduce jobs.

This is because Resource Manager / Application Master does not display the job stats and stages that we are used to seeing in MapReduce eg. Map and Reduce task counts and progress. I appreciate that Tez is a more flexible framework with a DAG but it would be nice if it could surface the information on the different stages, number of tasks running, completed, failed, killed, successful etc, similar to how Spark does, and the stage breakdown would be useful in understanding what the job is doing at different times, what stage is getting stuck/failing etc.

At the moment the only thing available is to trawl the logs or hope to have a console output where some of that information is available, both of which are non-ideal when debugging other's people's jobs after the fact.

Hari Sekhon
http://www.linkedin.com/in/harisekhon


---

* [TEZ-1968](https://issues.apache.org/jira/browse/TEZ-1968) | *Blocker* | **Tez UI - All vertices of DAG are not listed in vertices page**

DAG view and vertices view can be a little misleading at times.  I can see that "Reducer 9" is part of the DAG and is listed in DAG view.  However, it is not getting listed in Vertices page.  I will attach the screen shots soon.


---

* [TEZ-1938](https://issues.apache.org/jira/browse/TEZ-1938) | *Major* | **Build warning duplicate jersey-json definitions**

{code}
[WARNING] 'dependencyManagement.dependencies.dependency.(groupId:artifactId:type:classifier)' must be unique: com.sun.jersey:jersey-json:jar -> duplicate declaration of version 1.9 @ org.apache.tez:tez:0.7.0-SNAPSHOT
{code}


---

* [TEZ-1925](https://issues.apache.org/jira/browse/TEZ-1925) | *Critical* | **Remove npm WARN messages from the Tez UI build process.**

The Tez UI currently has these npm WARN messages.
[INFO] npm WARN package.json tez-ui@0.0.1 No description
[INFO] npm WARN package.json tez-ui@0.0.1 No repository field.
[INFO] npm WARN package.json tez-ui@0.0.1 No README data


---

* [TEZ-1910](https://issues.apache.org/jira/browse/TEZ-1910) | *Blocker* | **Build fails against hadoop-2.2.0**

https://builds.apache.org/job/Tez-Build-Hadoop-2.2/2/console


---

* [TEZ-1890](https://issues.apache.org/jira/browse/TEZ-1890) | *Blocker* | **tez-ui web.tar.gz also being uploaded to maven repository**

Not sure if we should be uploading the web tar.gz as part of maven deploy.


---

* [TEZ-1886](https://issues.apache.org/jira/browse/TEZ-1886) | *Major* | **remove deprecation warnings for tez-ui on the console**

after the update to bower.json ember-i18n has the following warnings
- CLDR.js has been deprecated; use Ember-I18n's i18n-plurals.js instead.
- Ember.I18n t helper called with unquoted key: common.applicationId. In the future, this will be treated as a bound property, not a string literal
- DEPRECATION: The {{t}} helper will no longer use a <span> tag in future versions of Ember.I18n. Set Ember.FEATURES.I18N\_TRANSLATE\_HELPER\_SPAN to false to quiet these warnings and maintain older behavior.

This pollutes the debug/info messages on the console.


---

* [TEZ-1882](https://issues.apache.org/jira/browse/TEZ-1882) | *Blocker* | **Tez UI build does not work on Windows**

It fails during Bower install because it cannot launch node/node. After working around that the bower script itself fails because its a bash script and will not run on windows. Specific the following command fails in node\_modules\.bin\bower
basedir=`dirname "$0"`


---

* [TEZ-1875](https://issues.apache.org/jira/browse/TEZ-1875) | *Blocker* | **dropdown filters do not work on vertices and task attempts page**

 The Status dropdown list in the tab of vertex & taskattempt tab always
been "ALL" even I change it. The actual list gets filtered however the dropdown is not updated


---

* [TEZ-1873](https://issues.apache.org/jira/browse/TEZ-1873) | *Major* | **TestTezAMRMClient fails due to host resolution timing out**

{code}
org.apache.tez.dag.app.rm.TestTezAMRMClient.testMatchingRequestsForTopPriority

Failing for the past 1 build (Since Failed#798 )
运行时间：10 秒
Error Message

test timed out after 10000 milliseconds
Stacktrace

java.lang.Exception: test timed out after 10000 milliseconds
	at java.net.Inet4AddressImpl.lookupAllHostAddr(Native Method)
	at java.net.InetAddress$1.lookupAllHostAddr(InetAddress.java:876)
	at java.net.InetAddress.getAddressFromNameService(InetAddress.java:1229)
	at java.net.InetAddress.getAllByName0(InetAddress.java:1180)
	at java.net.InetAddress.getAllByName(InetAddress.java:1110)
	at java.net.InetAddress.getAllByName(InetAddress.java:1046)
	at java.net.InetAddress.getByName(InetAddress.java:996)
	at org.apache.hadoop.net.NetUtils.normalizeHostName(NetUtils.java:562)
	at org.apache.hadoop.net.NetUtils.normalizeHostNames(NetUtils.java:579)
	at org.apache.hadoop.net.CachedDNSToSwitchMapping.resolve(CachedDNSToSwitchMapping.java:109)
	at org.apache.hadoop.yarn.util.RackResolver.coreResolve(RackResolver.java:101)
	at org.apache.hadoop.yarn.util.RackResolver.resolve(RackResolver.java:95)
	at org.apache.hadoop.yarn.client.api.impl.AMRMClientImpl.resolveRacks(AMRMClientImpl.java:549)
	at org.apache.hadoop.yarn.client.api.impl.AMRMClientImpl.addContainerRequest(AMRMClientImpl.java:411)
	at org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl.addContainerRequest(AMRMClientAsyncImpl.java:166)
	at org.apache.tez.dag.app.rm.TezAMRMClientAsync.addContainerRequest(TezAMRMClientAsync.java:97)
	at org.apache.tez.dag.app.rm.TestTezAMRMClient.testMatchingRequestsForTopPriority(TestTezAMRMClient.java:67)
{code}


---

* [TEZ-1870](https://issues.apache.org/jira/browse/TEZ-1870) | *Major* | **Time displayed in the UI is in GMT**

Should this be local time ?
Otherwise, mentioning the timezone on the UI will be useful.


---

* [TEZ-1866](https://issues.apache.org/jira/browse/TEZ-1866) | *Major* | **remove the "original" directory under tez-ui**

The "original" directory under tez-ui contains the first cut of the ui.


---

* [TEZ-1864](https://issues.apache.org/jira/browse/TEZ-1864) | *Critical* | **move initialization code dependent on config params to App.ready**

Initializer was added to control app init when not in stand alone mode. But turnout this part doesn't work as described in the documents (Initializer chaining cannot be paused by deferReadiness) hence removing.


---

* [TEZ-1860](https://issues.apache.org/jira/browse/TEZ-1860) | *Blocker* | **mvn apache-rat:check broken for tez-ui**

To reproduce the problem, run mvn apache-rat:check after doing a compile ( but ensuring that a mvn clean has not been run).


---

* [TEZ-1859](https://issues.apache.org/jira/browse/TEZ-1859) | *Minor* | **TestGroupedSplits has commented out test: testGzip**

Should be enabled and fixed if needed. If not, can this just be removed?


---

* [TEZ-1858](https://issues.apache.org/jira/browse/TEZ-1858) | *Blocker* | **Docs for deploying/using the Tez UI**

Making this a blocker for the 0.6.0 release. 

Docs should be added to http://tez.apache.org/user\_guides.html


---

* [TEZ-1854](https://issues.apache.org/jira/browse/TEZ-1854) | *Blocker* | **Failing tests due to host resolution timing out**

java.lang.Exception: test timed out after 5000 milliseconds
	at java.net.Inet4AddressImpl.lookupAllHostAddr(Native Method)
	at java.net.InetAddress$1.lookupAllHostAddr(InetAddress.java:876)
	at java.net.InetAddress.getAddressFromNameService(InetAddress.java:1229)
	at java.net.InetAddress.getAllByName0(InetAddress.java:1180)
	at java.net.InetAddress.getAllByName(InetAddress.java:1110)
	at java.net.InetAddress.getAllByName(InetAddress.java:1046)
	at java.net.InetAddress.getByName(InetAddress.java:996)
	at org.apache.hadoop.net.NetUtils.normalizeHostName(NetUtils.java:561)
	at org.apache.hadoop.net.NetUtils.normalizeHostNames(NetUtils.java:578)
	at org.apache.hadoop.net.CachedDNSToSwitchMapping.resolve(CachedDNSToSwitchMapping.java:109)
	at org.apache.hadoop.yarn.util.RackResolver.coreResolve(RackResolver.java:101)
	at org.apache.hadoop.yarn.util.RackResolver.resolve(RackResolver.java:95)
	at org.apache.tez.dag.app.dag.impl.TaskAttemptImpl$ScheduleTaskattemptTransition.transition(TaskAttemptImpl.java:1029)
	at org.apache.tez.dag.app.dag.impl.TestTaskAttempt.testHostResolveAttempt(TestTaskAttempt.java:236)


---

* [TEZ-1850](https://issues.apache.org/jira/browse/TEZ-1850) | *Blocker* | **Enable deploy for tez-ui war**

Enable deploy post TEZ-1849


---

* [TEZ-1848](https://issues.apache.org/jira/browse/TEZ-1848) | *Blocker* | **Apache jenkins builds failing**

There have been various failures due to different reasons. This jira will act as an umbrella for all discovered issues.


---

* [TEZ-1846](https://issues.apache.org/jira/browse/TEZ-1846) | *Blocker* | **Build fails with package org.apache.tez.dag.history.logging.ats does not exist**

Post TEZ-1696, build is failing

[ERROR] COMPILATION ERROR :
[INFO] -------------------------------------------------------------
[ERROR] /Users/jeagles/hadoop/tez/tez-plugins/tez-yarn-timeline-history-with-acls/src/test/java/org/apache/tez/dag/history/ats/acls/TestATSHistoryWithACLs.java:[53,46] package org.apache.tez.dag.history.logging.ats does not exist
[ERROR] /Users/jeagles/hadoop/tez/tez-plugins/tez-yarn-timeline-history-with-acls/src/test/java/org/apache/tez/dag/history/ats/acls/TestATSHistoryWithACLs.java:[57,27] cannot find symbol
  symbol:   class MiniTezClusterWithTimeline
  location: package org.apache.tez.test
[ERROR] /Users/jeagles/hadoop/tez/tez-plugins/tez-yarn-timeline-history-with-acls/src/test/java/org/apache/tez/dag/history/ats/acls/TestATSHistoryWithACLs.java:[71,20] cannot find symbol
  symbol:   class MiniTezClusterWithTimeline
  location: class org.apache.tez.dag.history.ats.acls.TestATSHistoryWithACLs
[ERROR] /Users/jeagles/hadoop/tez/tez-plugins/tez-yarn-timeline-history-with-acls/src/test/java/org/apache/tez/dag/history/ats/acls/TestATSHistoryWithACLs.java:[97,29] cannot find symbol
  symbol:   class MiniTezClusterWithTimeline
  location: class org.apache.tez.dag.history.ats.acls.TestATSHistoryWithACLs
[ERROR] /Users/jeagles/hadoop/tez/tez-plugins/tez-yarn-timeline-history-with-acls/src/test/java/org/apache/tez/dag/history/ats/acls/TestATSHistoryWithACLs.java:[201,11] cannot find symbol
  symbol:   class ATSHistoryLoggingService
  location: class org.apache.tez.dag.history.ats.acls.TestATSHistoryWithACLs
[ERROR] /Users/jeagles/hadoop/tez/tez-plugins/tez-yarn-timeline-history-with-acls/src/test/java/org/apache/tez/dag/history/ats/acls/TestATSHistoryWithACLs.java:[257,11] cannot find symbol
  symbol:   class ATSHistoryLoggingService
  location: class org.apache.tez.dag.history.ats.acls.TestATSHistoryWithACLs
[INFO] 6 errors


---

* [TEZ-1841](https://issues.apache.org/jira/browse/TEZ-1841) | *Blocker* | **Remove range versions for dependencies in tez-ui**

There are a few dependencies such as moment >= 2.7.0 , jquery-ui >= 1.11, etc. 

From a licensing point of view, this becomes tricky if a higher version changes its license. Stricter versions would help. 

Also, ember-json-mapper uses "master" and ember-data uses a beta version - these should be fixed too.


---

* [TEZ-1840](https://issues.apache.org/jira/browse/TEZ-1840) | *Major* | **Document TezTaskOutput**

Follow up from TEZ-1819.


---

* [TEZ-1838](https://issues.apache.org/jira/browse/TEZ-1838) | *Blocker* | **tez-ui/src/main/webapp/bower.json gets updated after compiling source code**

When building the UI locally on a mac laptop, the following edit is done by the build:

{noformat}
--- a/tez-ui/src/main/webapp/bower.json
+++ b/tez-ui/src/main/webapp/bower.json
@@ -24,7 +24,6 @@
   "resolutions": {
     "handlebars": "~1.3.0",
     "jquery-ui": ">=1.11",
-    "jquery-mousewheel": "~3.1.12",
     "antiscroll": "fa3f81d3c0",
     "ember": "1.7.0"
   }
{noformat}


---

* [TEZ-1835](https://issues.apache.org/jira/browse/TEZ-1835) | *Major* | **TestFaultTolerance#testRandomFailingTasks is timing out**

Surefire logs shows this test hovers dangerously close to the 60 second timeout.

<testcase name="testRandomFailingTasks" classname="org.apache.tez.test.TestFaultTolerance" time="69.538"/>


---

* [TEZ-1833](https://issues.apache.org/jira/browse/TEZ-1833) | *Critical* | **Update Tez\_DOAP file for 0.5.x releases**

DOAP file should be updated as part of each release. Please fix also how to release docs if needed.


---

* [TEZ-1832](https://issues.apache.org/jira/browse/TEZ-1832) | *Major* | **TestSecureShuffle fails with NoClassDefFoundError: org/bouncycastle/x509/X509V1CertificateGenerator**

mvn clean test -Dtest=TestSecureShuffle -Dhadoop.version=2.6.1-SNAPSHOT
-------------------------------------------------------------------------------
Test set: org.apache.tez.test.TestSecureShuffle
-------------------------------------------------------------------------------
Tests run: 2, Failures: 0, Errors: 1, Skipped: 0, Time elapsed: 63.35 sec <<< FAILURE!
testSecureShuffle[test[sslInCluster:true, resultWithTezSSL:0, resultWithoutTezSSL:1]](org.apache.tez.test.TestSecureShuffle)  Time elapsed: 0.106 sec  <<< ERROR!
java.lang.NoClassDefFoundError: org/bouncycastle/x509/X509V1CertificateGenerator
        at java.net.URLClassLoader$1.run(URLClassLoader.java:202)
        at java.security.AccessController.doPrivileged(Native Method)
        at java.net.URLClassLoader.findClass(URLClassLoader.java:190)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:306)
        at sun.misc.Launcher$AppClassLoader.loadClass(Launcher.java:301)
        at java.lang.ClassLoader.loadClass(ClassLoader.java:247)
        at org.apache.hadoop.security.ssl.KeyStoreTestUtil.generateCertificate(KeyStoreTestUtil.java:88)
        at org.apache.hadoop.security.ssl.KeyStoreTestUtil.setupSSLConfig(KeyStoreTestUtil.java:243)
        at org.apache.hadoop.security.ssl.KeyStoreTestUtil.setupSSLConfig(KeyStoreTestUtil.java:208)
        at org.apache.tez.test.TestSecureShuffle.setupKeyStores(TestSecureShuffle.java:193)
        at org.apache.tez.test.TestSecureShuffle.setupTezCluster(TestSecureShuffle.java:113)


---

* [TEZ-1820](https://issues.apache.org/jira/browse/TEZ-1820) | *Major* | **Fix wrong links**

1. Logs link in task attempt pill of dag and vertex are coming Not Available.
2. RM Link set from the configurations is not working after config change.
3. jquery-ui.css is missing from the minified css paths.
4. Some of the application links throw error on clicking.


---

* [TEZ-1816](https://issues.apache.org/jira/browse/TEZ-1816) | *Major* | **It is possible to receive START event when DAG is failed**

If DAG is failed in initialization, then it would goto failed. Then there will be a following START event from client.


---

* [TEZ-1810](https://issues.apache.org/jira/browse/TEZ-1810) | *Major* | **Do not deploy tez-ui war to maven repo**

This is needed until all licensing issues are sorted out.


---

* [TEZ-1805](https://issues.apache.org/jira/browse/TEZ-1805) | *Major* | **Tez client DAG cycle detection should detect self loops**

There's a test in the hive suite that gets stuck and I'm not sure what's causing it.

Repro:

(In hive tree: https://github.com/apache/hive)

mvn clean install -DskipTests -Phadoop-2 && cd itests && mvn clean install -DskipTests -Phadoop-2

then:

mvn test -Dtest=TestMiniTezCliDriver -Phadoop-2 -Dqfile=lvj\_mapjoin.q

I'll attach logs and stack traces. It seems application: pplication\_1417137410462\_0002 got stuck in that run. Only exception I saw is:

{noformat}
org.apache.hadoop.ipc.RemoteException(org.apache.hadoop.hdfs.server.namenode.LeaseExpiredException): No lease on /Users/ghagleitner/Projects/hive-trunk2/itests/qtest/target/tmp/scratchdir/ghagleitner/\_tez\_session\_dir/dc4fca20-4a39-4452-9\
75a-467bda4947ca/.tez/application\_1417137410462\_0001/recovery/1/summary (inode 16430): File does not exist. Holder DFSClient\_NONMAPREDUCE\_1900574341\_1 does not have any open files.                                                          
  at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.checkLease(FSNamesystem.java:3083)                                                                                                                                                   
  at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFileInternal(FSNamesystem.java:3170)                                                                                                                                         
  at org.apache.hadoop.hdfs.server.namenode.FSNamesystem.completeFile(FSNamesystem.java:3140)                                                                                                                                                 
  at org.apache.hadoop.hdfs.server.namenode.NameNodeRpcServer.complete(NameNodeRpcServer.java:665)                                                                                                                                            
  at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolServerSideTranslatorPB.complete(ClientNamenodeProtocolServerSideTranslatorPB.java:499)                                                                                           
  at org.apache.hadoop.hdfs.protocol.proto.ClientNamenodeProtocolProtos$ClientNamenodeProtocol$2.callBlockingMethod(ClientNamenodeProtocolProtos.java)                                                                                        
  at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:585)                                                                                                                                       
  at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:928)                                                                                                                                                                                      
  at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2013)                                                                                                                                                                             
  at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2009)                                                                                                                                                                             
  at java.security.AccessController.doPrivileged(Native Method)                                                                                                                                                                               
  at javax.security.auth.Subject.doAs(Subject.java:394)                                                                                                                                                                                       
  at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1614)                                                                                                                                                     
  at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2007)                                                                                                                                                                               
                                                                                                                                                                                                                                              
  at org.apache.hadoop.ipc.Client.call(Client.java:1411)                                                                                                                                                                                      
  at org.apache.hadoop.ipc.Client.call(Client.java:1364)                                                                                                                                                                                      
  at org.apache.hadoop.ipc.ProtobufRpcEngine$Invoker.invoke(ProtobufRpcEngine.java:206)                                                                                                                                                       
  at com.sun.proxy.$Proxy14.complete(Unknown Source)                                                                                                                                                                                          
  at sun.reflect.GeneratedMethodAccessor50.invoke(Unknown Source)                                                                                                                                                                             
  at sun.reflect.DelegatingMethodAccessorImpl.invoke(DelegatingMethodAccessorImpl.java:25)                                                                                                                                                    
  at java.lang.reflect.Method.invoke(Method.java:597)                                                                                                                                                                                         
  at org.apache.hadoop.io.retry.RetryInvocationHandler.invokeMethod(RetryInvocationHandler.java:187)                                                                                                                                          
  at org.apache.hadoop.io.retry.RetryInvocationHandler.invoke(RetryInvocationHandler.java:102)                                                                                                                                                
  at com.sun.proxy.$Proxy14.complete(Unknown Source)                                                                                                                                                                                          
  at org.apache.hadoop.hdfs.protocolPB.ClientNamenodeProtocolTranslatorPB.complete(ClientNamenodeProtocolTranslatorPB.java:412)                                                                                                               
  at org.apache.hadoop.hdfs.DFSOutputStream.completeFile(DFSOutputStream.java:2135)                                                                                                                                                           
  at org.apache.hadoop.hdfs.DFSOutputStream.close(DFSOutputStream.java:2119)                                                                                                                                                                  
  at org.apache.hadoop.fs.FSDataOutputStream$PositionCache.close(FSDataOutputStream.java:72)                                                                                                                                                  
  at org.apache.hadoop.fs.FSDataOutputStream.close(FSDataOutputStream.java:106)                                                                                                                                                               
  at org.apache.tez.dag.history.recovery.RecoveryService.serviceStop(RecoveryService.java:201)                                                                                                                                                
  at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)                                                                                                                                                                 
  at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)                                                                                                                                                              
  at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)                                                                                                                                                       
  at org.apache.hadoop.service.CompositeService.stop(CompositeService.java:157)                                                                                                                                                               
  at org.apache.hadoop.service.CompositeService.serviceStop(CompositeService.java:131)                                                                                                                                                        
  at org.apache.tez.dag.history.HistoryEventHandler.serviceStop(HistoryEventHandler.java:80)                                                                                                                                                  
  at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)                                                                                                                                                                 
  at org.apache.hadoop.service.ServiceOperations.stop(ServiceOperations.java:52)                                                                                                                                                              
  at org.apache.hadoop.service.ServiceOperations.stopQuietly(ServiceOperations.java:80)                                                                                                                                                       
  at org.apache.tez.dag.app.DAGAppMaster.stopServices(DAGAppMaster.java:1504)                                                                                                                                                                 
  at org.apache.tez.dag.app.DAGAppMaster.serviceStop(DAGAppMaster.java:1643)                                                                                                                                                                  
  at org.apache.hadoop.service.AbstractService.stop(AbstractService.java:221)                                                                                                                                                                 
  at org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterShutdownHandler$AMShutdownRunnable.run(DAGAppMaster.java:698)                                                                                                                            
  at java.lang.Thread.run(Thread.java:695)                                                       
{noformat}

It's quite likely that we're screwing something up in Hive, but I can't find from the logs what's happening. Any insights?


---

* [TEZ-1797](https://issues.apache.org/jira/browse/TEZ-1797) | *Major* | **Create necessary content for Tez DOAP file**

Need to add a top-level releases page as well as a PMC rdf


---

* [TEZ-1790](https://issues.apache.org/jira/browse/TEZ-1790) | *Major* | **DeallocationTaskRequest may been handled before corresponding AllocationTaskRequest in local mode**

In Tez Local mode, when dag is kiiled, DeallocationTaskRequest may been handled before corresponding AllocationTaskRequest handled. In that case, The TaskRequest is not really deallocated. The AllocationTaskRequest will been handled after DeallocationTaskRequest. When it is in local session mode, the dag is killed but its TaskRequest is still there, and will continue launch the task attempt. The task attempt will start the heartbeat with the AM, while the AM has started a new DAG. It would cause the following exception. ( The task attempt is heartbeating with a wrong DAG, because its DAG has been killed)

{code}
15:38:24,208 - Thread(TaskHeartbeatThread) - (TezTaskRunner.java:333) - TaskReporter reported error
java.lang.NullPointerException
	at org.apache.tez.dag.app.TaskAttemptListenerImpTezDag.heartbeat(TaskAttemptListenerImpTezDag.java:514)
	at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.heartbeat(TaskReporter.java:249)
	at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.call(TaskReporter.java:176)
	at org.apache.tez.runtime.task.TaskReporter$HeartbeatCallable.call(TaskReporter.java:118)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

This error will cause the TezChild interuppted

{code}
16:04:26,718 - Thread(TezChild) - (TezTaskRunner.java:221) - Encounted an error while executing task: attempt\_1416384252992\_0001\_2\_00\_000000\_0
java.lang.InterruptedException
	at java.util.concurrent.locks.AbstractQueuedSynchronizer.acquireInterruptibly(AbstractQueuedSynchronizer.java:1219)
	at java.util.concurrent.locks.ReentrantLock.lockInterruptibly(ReentrantLock.java:340)
	at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:439)
	at java.util.concurrent.ExecutorCompletionService.take(ExecutorCompletionService.java:193)
	at org.apache.tez.runtime.LogicalIOProcessorRuntimeTask.initialize(LogicalIOProcessorRuntimeTask.java:211)
	at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:173)
	at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable$1.run(TezTaskRunner.java:168)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1548)
	at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:168)
	at org.apache.tez.runtime.task.TezTaskRunner$TaskRunnerCallable.call(TezTaskRunner.java:163)
	at java.util.concurrent.FutureTask.run(FutureTask.java:262)
	at java.util.concurrent.ThreadPoolExecutor.runWorker(ThreadPoolExecutor.java:1145)
	at java.util.concurrent.ThreadPoolExecutor$Worker.run(ThreadPoolExecutor.java:615)
	at java.lang.Thread.run(Thread.java:745)
{code}

This issue cause TestExceptionPropagation timeout sometimes, especially on windows


---

* [TEZ-1789](https://issues.apache.org/jira/browse/TEZ-1789) | *Major* | **Move speculator processing off the central dispatcher**

There may be a large number of such events and speculators may have expensive logic while handling them. Moving off the central dispatcher will keep this off critical execution path.


---

* [TEZ-1785](https://issues.apache.org/jira/browse/TEZ-1785) | *Major* | **Remove unused snappy-java dependency**

There are some improvements - if we use snappy-java-1.0.5.4 or 1.1.1.6, we don't need to install glibc++. 

https://github.com/xerial/snappy-java/issues/93#issuecomment-63018051


---

* [TEZ-1784](https://issues.apache.org/jira/browse/TEZ-1784) | *Major* | **Attempt details in tasks table.**

- Modify tasks table to display task attempt information.
- A hierarchical table similar to http://addepar.github.io/ember-table/#/ember-table/overview can be used to represent tasks with multiple attempts.


---

* [TEZ-1783](https://issues.apache.org/jira/browse/TEZ-1783) | *Major* | **Wrapper in standalone mode.**

1. UI Fit and finish items.
2. Limited breadcrumbs to ease navigation 
3. Ambari headers and footers even in standalone mode for consistent look & feel
4. Configuration support for standalone UI


---

* [TEZ-1781](https://issues.apache.org/jira/browse/TEZ-1781) | *Major* | **Configurations view ~ New design**

1. Display all configurations without pagination.
2. Move configurations from dag to vertex.
3. Configurations of a vertex will be available inside the inputs tab.
4. Move configurations diaplay to a generic code.
5. Input/configuration link in vertices table: Like points to inputs table of the respective vertex  in case of multiple vertex inputs, and directly to the configurations view when the vertex have just one input.


---

* [TEZ-1773](https://issues.apache.org/jira/browse/TEZ-1773) | *Major* | **Add attempt failure cause enum to the attempt failed/killed history record**

Having an enum in it, will provide a programmatic means to present, analyse and debug unsuccessful attempts.


---

* [TEZ-1772](https://issues.apache.org/jira/browse/TEZ-1772) | *Blocker* | **Failing tests post TEZ-1737**

org.apache.tez.test.TestAMRecovery.testVertexCompletelyFinished\_One2One
org.apache.tez.test.TestAMRecovery.testVertexCompletelyFinished\_Broadcast
org.apache.tez.test.TestDAGRecovery.testBasicRecovery

{code}
2014-11-13 08:30:58,720 ERROR [AsyncDispatcher event handler] impl.VertexImpl: Exception in VertexManager, vertex=vertex\_1415838634393\_0001\_1\_01 [v2]
org.apache.tez.dag.app.dag.impl.AMUserCodeException: org.apache.tez.dag.api.TezUncheckedException: Managed task number must equal 1-1 source task number, oneToOneSrcTaskCount =0,numManagedTasks=2
	at org.apache.tez.dag.app.dag.impl.VertexManager.onVertexStarted(VertexManager.java:368)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.recoveryCodeSimulatingStart(VertexImpl.java:2417)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.access$9(VertexImpl.java:2416)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$RecoverTransition.transition(VertexImpl.java:2721)
	at org.apache.tez.dag.app.dag.impl.VertexImpl$RecoverTransition.transition(VertexImpl.java:1)
	at org.apache.hadoop.yarn.state.StateMachineFactory$MultipleInternalArc.doTransition(StateMachineFactory.java:385)
	at org.apache.hadoop.yarn.state.StateMachineFactory.doTransition(StateMachineFactory.java:302)
	at org.apache.hadoop.yarn.state.StateMachineFactory.access$300(StateMachineFactory.java:46)
	at org.apache.hadoop.yarn.state.StateMachineFactory$InternalStateMachine.doTransition(StateMachineFactory.java:448)
	at org.apache.tez.state.StateMachineTez.doTransition(StateMachineTez.java:57)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1526)
	at org.apache.tez.dag.app.dag.impl.VertexImpl.handle(VertexImpl.java:1)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1741)
	at org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher.handle(DAGAppMaster.java:1)
	at org.apache.hadoop.yarn.event.AsyncDispatcher.dispatch(AsyncDispatcher.java:173)
	at org.apache.hadoop.yarn.event.AsyncDispatcher$1.run(AsyncDispatcher.java:106)
	at java.lang.Thread.run(Thread.java:745)
Caused by: org.apache.tez.dag.api.TezUncheckedException: Vertex=v2Managed task number must equal 1-1 source task number, oneToOneSrcTaskCount =0,numManagedTasks=2
	at org.apache.tez.dag.library.vertexmanager.InputReadyVertexManager.onVertexStarted(InputReadyVertexManager.java:114)
	at org.apache.tez.test.TestAMRecovery$ControlledInputReadyVertexManager.onVertexStarted(TestAMRecovery.java:520)
	at org.apache.tez.dag.app.dag.impl.VertexManager.onVertexStarted(VertexManager.java:365)
	... 16 more
{code}


---

* [TEZ-1769](https://issues.apache.org/jira/browse/TEZ-1769) | *Major* | **ContainerCompletedWhileRunningTransition should inherit from TerminatedWhileRunningTransition**

Without this is misses unregistering from the task heartbeat handler and any other common code that must be executed when the task gets terminated while running (which happens when the container completes while running).


---

* [TEZ-1768](https://issues.apache.org/jira/browse/TEZ-1768) | *Major* | **follow up jira to address minor issues in Tez-ui**

adding a jira to track some minor comments in TEZ-8 subtasks. 
* address minor comments(related to unused variables, remove unnecessary logging) TEZ-1741


---

* [TEZ-1743](https://issues.apache.org/jira/browse/TEZ-1743) | *Major* | **Add versions-maven-plugins artifacts to gitignore**

after running set version command using versions-maven-plugin

{code}
mvn versions:set -DnewVersion=$VERSION
{code}

we are left with many untracked files

{quote}
Untracked files:
  (use "git add <file>..." to include in what will be committed)

	docs/pom.xml.versionsBackup
	pom.xml.versionsBackup
	tez-api/pom.xml.versionsBackup
	tez-common/pom.xml.versionsBackup
	tez-dag/pom.xml.versionsBackup
	tez-dist/pom.xml.versionsBackup
	tez-examples/pom.xml.versionsBackup
	tez-mapreduce/pom.xml.versionsBackup
	tez-plugins/pom.xml.versionsBackup
	tez-plugins/tez-mbeans-resource-calculator/pom.xml.versionsBackup
	tez-plugins/tez-yarn-timeline-history/pom.xml.versionsBackup
	tez-runtime-internals/pom.xml.versionsBackup
	tez-runtime-library/pom.xml.versionsBackup
	tez-tests/pom.xml.versionsBackup
{quote}


---

* [TEZ-1738](https://issues.apache.org/jira/browse/TEZ-1738) | *Major* | **tez tfile parser for log parsing**

It can be time consuming to download logs via "yarn logs -applicationId <appId> | grep something".  Also mining large volumes of logs can be time consuming on single node.
A simple pigloader would be useful to have in tez-tools which can parse TFiles and provide line by line format (tuple of (machine, key, line)) for distributed processing of logs.


---

* [TEZ-1737](https://issues.apache.org/jira/browse/TEZ-1737) | *Major* | **Should add taskNum in VertexFinishedEvent**

In the case of dag is completed, but recovery log is not completed, epecially when VertexInitliazedEvent is not written to hdfs. In that case vertex's task number may be -1 since we only recover the dag to desired state, the taskNum may not been recovered, and it would cause the getVertexStatus get the wrong task num.


---

* [TEZ-1736](https://issues.apache.org/jira/browse/TEZ-1736) | *Major* | **Add support for Inputs/Outputs in runtime-library to generate history text data**

The userpayload related setHistoryText has been available for some time but is not used by the Inputs/Outputs in the run-time library.


---

* [TEZ-1733](https://issues.apache.org/jira/browse/TEZ-1733) | *Critical* | **TezMerger should sort FileChunks on size when merging**

 MAPREDUCE-3685 fixed the Merger sort order for file chunks to use the decompressed size, to cut-down on CPU and IO costs.

TezMerger needs an equivalent sorted TreeSet which sorts by the data  by size.


---

* [TEZ-1720](https://issues.apache.org/jira/browse/TEZ-1720) | *Major* | **Allow filters in all tables and also to pass in filters using url params**

Need to make sure that all the tables in the ui can use filters and allow them to be set through url. this is needed for showing for ex the failed tasks for a dag/vertex etc and to bookmark searches.


---

* [TEZ-1709](https://issues.apache.org/jira/browse/TEZ-1709) | *Major* | **Bunch of files in tez-ui missing Apache license header**

To get list of files, run "mvn apache-rat:check"


---

* [TEZ-1708](https://issues.apache.org/jira/browse/TEZ-1708) | *Major* | **Make UI part of TEZ build process**

- Ensure that the code base follow maven standards.
- On build, a web tar and Ambari jar must be created in the target folder.


---

* [TEZ-1696](https://issues.apache.org/jira/browse/TEZ-1696) | *Major* | **Make Tez use the domain-based timeline ACLs**

With the introduction of YARN-2102 Timeline Server entries can have ACLs which will be needed for  Tez UI in a secure environment. YARN-2629 is an example of how to implement this. In Tez, however, we will want to perhaps allow users to set domain and read and write ACLs in a better way. Seems like leveraging the mapreduce's view ACLs may be one way of doing this.


---

* [TEZ-1690](https://issues.apache.org/jira/browse/TEZ-1690) | *Major* | **TestMultiMRInput tests fail because of user collisions**

If two users run "mvn test" on a machine, the paths in TestMultiMRInput collide & tests fail.

{code}
testSingleSplit(org.apache.tez.mapreduce.input.TestMultiMRInput)  Time elapsed: 0.037 sec  <<< ERROR!
java.io.FileNotFoundException: /tmp/TestMultiMRInput/testSingleSplit/file1 (Permission denied)
        at java.io.FileOutputStream.open(Native Method)
        at java.io.FileOutputStream.<init>(FileOutputStream.java:212)
        at org.apache.hadoop.fs.RawLocalFileSystem$LocalFSFileOutputStream.<init>(RawLocalFileSystem.java:206)
        at org.apache.hadoop.fs.RawLocalFileSystem$LocalFSFileOutputStream.<init>(RawLocalFileSystem.java:202)
        at org.apache.hadoop.fs.RawLocalFileSystem.create(RawLocalFileSystem.java:265)        at org.apache.hadoop.fs.RawLocalFileSystem.create(RawLocalFileSystem.java:252)
        at org.apache.hadoop.fs.ChecksumFileSystem$ChecksumFSOutputSummer.<init>(ChecksumFileSystem.java:384)        at org.apache.hadoop.fs.ChecksumFileSystem.create(ChecksumFileSystem.java:443)
        at org.apache.hadoop.fs.ChecksumFileSystem.create(ChecksumFileSystem.java:424)
        at org.apache.hadoop.fs.FileSystem.create(FileSystem.java:906)
        at org.apache.hadoop.io.SequenceFile$Writer.<init>(SequenceFile.java:1071)
        at org.apache.hadoop.io.SequenceFile$RecordCompressWriter.<init>(SequenceFile.java:1371)
        at org.apache.hadoop.io.SequenceFile.createWriter(SequenceFile.java:272)
        at org.apache.hadoop.io.SequenceFile.createWriter(SequenceFile.java:294)
        at org.apache.tez.mapreduce.input.TestMultiMRInput.createInputData(TestMultiMRInput.java:277)
        at org.apache.tez.mapreduce.input.TestMultiMRInput.testSingleSplit(TestMultiMRInput.java:106)
{code}


---

* [TEZ-1687](https://issues.apache.org/jira/browse/TEZ-1687) | *Major* | **Use logIdentifier of Vertex for logging**

Some places still use vertexId, logIdentifier is better for trouble troubleshooting because it combines vertexId with vertex name.


---

* [TEZ-1650](https://issues.apache.org/jira/browse/TEZ-1650) | *Major* | **Please create a DOAP file for your TLP**

Please can you set up a DOAP for your project and get it added to files.xml?

Please see http://projects.apache.org/create.html

Once you have created the DOAP and committed it to your source code repository, please submit it for inclusion in the Apache projects listing as per:

http://projects.apache.org/create.html#submit

Remember, if you ever move or rename the doap file in future, please
ensure that files.xml is updated to point to the new location.

Thanks!


---

* [TEZ-1634](https://issues.apache.org/jira/browse/TEZ-1634) | *Major* | **BlockCompressorStream.finish() is called twice in IFile.close leading to Shuffle errors**

When IFile.Writer is closed, it explicitly calls compressedOut.finish(); And as a part of FSDataOutputStream.close(), it again internally calls finish().  Please refer o.a.h.i.compress.BlockCompressorStream for more details on finish(). This leads to additional 4 bytes being written to IFile.  This causes issues randomly during shuffle.  Also, this prevents IFileInputStream to do the proper checksumming.  

This error happens only when we try to fetch multiple attempt outputs using the same URL.  And is easily reproducible with SnappCompressionCodec.  First attempt output would be downloaded by fetcher and due to the last 4 bytes in the stream, it wouldn't do the proper checksumming in IFileInputStream.  This causes the subsequent attempt download to fail with the following exception.

Example error in shuffle phase is attached below.

>>>>
2014-09-15 09:54:22,950 WARN [fetcher [scope\_41] #31] org.apache.tez.runtime.library.common.shuffle.impl.Fetcher: Invalid map id 
java.lang.IllegalArgumentException: Invalid header received:  partition: 0
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyMapOutput(Fetcher.java:352)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.copyFromHost(Fetcher.java:294)
	at org.apache.tez.runtime.library.common.shuffle.impl.Fetcher.run(Fetcher.java:160)
>>>>

I will attach the debug version of BlockCompressionStream with threaddump (which validates that finish() is called twice in IFile.close()).  This bug was present in earlier versions of Tez as well, and was able to consistently reproduce it now on local-vm itself.


---

* [TEZ-1627](https://issues.apache.org/jira/browse/TEZ-1627) | *Major* | **Remove OUTPUT\_CONSUMABLE and related Event in TaskAttemptImpl**

It is not used now.


---

* [TEZ-1610](https://issues.apache.org/jira/browse/TEZ-1610) | *Major* | **additional task counters for fetchers**

- ShuffleFinishTime (per source)
- Merge time (depending on broadcast/scatter-gather shuffle)

This would be helpful in determining when shuffle started/ended for different sources in a task.


---

* [TEZ-1591](https://issues.apache.org/jira/browse/TEZ-1591) | *Major* | **Add multiDAG session test and move TestLocalMode to tez-tests**

Move TestLocalMode to tez-tests. It enable TestLocalMode to use more examples from tez-examples without circular dependency. Also add multiDAG unit test for session mode


---

* [TEZ-1576](https://issues.apache.org/jira/browse/TEZ-1576) | *Trivial* | **Class level comment in {{MiniTezCluster}} ends abruptly**

The class level comment in {{MiniTezCluster}} ends abruptly:

{code}
/**
 * Configures and starts the Tez-specific components in the YARN cluster.
 *
 * When using this mini cluster, the user is expected to
 */
{code}


---

* [TEZ-1252](https://issues.apache.org/jira/browse/TEZ-1252) | *Critical* | **Change wording on http://tez.apache.org/team-list.html related to member confusion**

Members can be confused with ASF members. Should re-word the team list page.


---

* [TEZ-1060](https://issues.apache.org/jira/browse/TEZ-1060) | *Major* | **Add randomness to fault tolerance tests**


We do have TestFaultTolerance for unit tests that see whether AM can correctly handles a case when there are processor failures and input failures. TestFaultTolerance uses TestProcessor and TestInput to simulate controlled failure scenario for a DAG. In each test, on processor front, we do select which tasks fail (do-fail), which physical task indexes fail (failing-task-index) and upto which attempt these physical tasks fail (failing-upto-task-attempt). On input front, we do select which tasks have failed inputs (do-fail), which physical task indexes fail (failing-task-index), upto which attempt these physical tasks have failed input (failing-task-attempt), which physical inputs to fail (failing-input-index) and upto which version of physical inputs tasks do reject (failing-upto-input-attempt). In addition to task failure and input failures, we also check values of specific physical tasks to see if inputs of downstream vertices match outputs of upstream vertices (verify-value, verify-task-index). These tests were added during 0.3.0 and 0.4.0. We could find several issues in Tez AM, fixed them and enhanced stability of Tez AM. Though current unit tests are useful, they are limited by scenarios carefully chosen by individual contributors. When Tez is used in heavy load scenario, more issues are likely to arise. To bring fault tolerance tests to new level, we should add tests that generate randomized failure scenarios. When each contributor runs unit tests, new scenario will be generated. From there, it gives more opportunity for community to report and fix new issues.

There are few criteria for new tests:
- We want to keep time used to run unit tests minimal. Each contributor runs different hardware. It is inconvenient if people with slow machine needs to spend too much time to run tests for any patch.
- Random scenario needs to be controlled enough to know expected behavior. This means parameters have to be validated by test itself first.



