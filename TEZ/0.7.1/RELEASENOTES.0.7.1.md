
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
#  0.7.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [TEZ-2483](https://issues.apache.org/jira/browse/TEZ-2483) | *Major* | **Tez should close task if processor fail**

The symptom is if PigProcessor fail, MRInput is not closed. On Windows, this creates a problem since Pig client cannot remove the input file.

In general, if a task fail, Tez shall close all input/output handles in cleanup. MROutput is closed in MROutput.abort() which Pig invokes explicitly right now. Attach a demo patch.


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

* [TEZ-2474](https://issues.apache.org/jira/browse/TEZ-2474) | *Minor* | **The old taskNum is logged incorrectly when parallelism is changed**

{noformat}
2015-05-21 15:04:33,103 INFO [App Shared Pool - #0] impl.VertexImpl: Vertex vertex\_1431910485566\_0017\_1\_02 [reduce] parallelism set to 1 from 1
{noformat}


---

* [TEZ-2460](https://issues.apache.org/jira/browse/TEZ-2460) | *Major* | **Temporary solution for issue due to YARN-2560**

Due to YARN-2560, DAGClient can't get the correct diagnostics, this jira is to make a temporary solution for it before YARN-2560 is resolved.  Here's one example that dag is failed due to version incompatible.
{noformat}
15/05/18 17:34:18 INFO client.TezClient: Tez Client Version: [ component=tez-api, version=0.7.0.2.3.0.0-1986, revision=7a048b526519e53de5d6464493697e92b15718fc, SCM-URL=scm:git:https://git-wip-us.apache.org/repos/asf/tez.git, buildTime=20150514-0857 ]
15/05/18 17:34:19 INFO impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
15/05/18 17:34:19 INFO client.RMProxy: Connecting to ResourceManager at c6402.ambari.apache.org/192.168.64.102:8050
15/05/18 17:34:19 INFO client.TezClient: Using org.apache.tez.dag.history.ats.acls.ATSHistoryACLPolicyManager to manage Timeline ACLs
15/05/18 17:34:19 INFO impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
15/05/18 17:34:21 INFO examples.OrderedWordCount: Running OrderedWordCount
15/05/18 17:34:21 INFO client.TezClient: Submitting DAG application with id: application\_1431967480765\_0017
15/05/18 17:34:21 INFO client.TezClientUtils: Using tez.lib.uris value from configuration: /hdp/apps/2.3.0.0-1986/tez/tez.tar.gz
15/05/18 17:34:21 INFO client.TezClient: Tez system stage directory hdfs://c1ha/tmp/ambari-qa/staging/.tez/application\_1431967480765\_0017 doesn't exist and is created
15/05/18 17:34:21 INFO acls.ATSHistoryACLPolicyManager: Created Timeline Domain for History ACLs, domainId=Tez\_ATS\_application\_1431967480765\_0017
15/05/18 17:34:22 INFO client.TezClient: Submitting DAG to YARN, applicationId=application\_1431967480765\_0017, dagName=OrderedWordCount
15/05/18 17:34:22 INFO impl.YarnClientImpl: Submitted application application\_1431967480765\_0017
15/05/18 17:34:22 INFO client.TezClient: The url to track the Tez AM: http://c6402.ambari.apache.org:8088/proxy/application\_1431967480765\_0017/
15/05/18 17:34:22 INFO impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
15/05/18 17:34:22 INFO client.RMProxy: Connecting to ResourceManager at c6402.ambari.apache.org/192.168.64.102:8050
15/05/18 17:34:22 INFO client.DAGClientImpl: Waiting for DAG to start running
15/05/18 17:34:34 INFO client.DAGClientImpl: DAG initialized: CurrentState=Running
15/05/18 17:34:38 INFO client.DAGClientImpl: DAG completed. FinalState=FAILED
15/05/18 17:34:38 INFO examples.OrderedWordCount: DAG diagnostics: []
{noformat}

{noformat}
2015-05-18 16:57:46,807 INFO [main] app.DAGAppMaster: Created DAGAppMaster for application appattempt\_1431967480765\_0008\_000001, versionInfo=[ component=tez-dag, version=0.5.2.2.2.3.0-2611, revision=2d3c6b639d5b1048bd20aad5736823a35edd2485, SCM-URL=scm:git:https://git-wip-us.apache.org/repos/asf/tez.git, buildTIme=20150314-1805 ]
2015-05-18 16:57:47,931 INFO [main] app.DAGAppMaster: Comparing client version with AM version, clientVersion=0.7.0.2.3.0.0-1986, AMVersion=0.5.2.2.2.3.0-2611
2015-05-18 16:57:47,932 FATAL [main] app.DAGAppMaster: Incompatible versions found, clientVersion=0.7.0.2.3.0.0-1986, AMVersion=0.5.2.2.2.3.0-2611
2015-05-18 16:57:49,348 INFO [main] app.DAGAppMaster: Adding session token to jobTokenSecretManager for application
2015-05-18 16:57:49,354 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.container.AMContainerEventType for class org.apache.tez.dag.app.rm.container.AMContainerMap
2015-05-18 16:57:49,355 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.node.AMNodeEventType for class org.apache.tez.dag.app.rm.node.AMNodeTracker
2015-05-18 16:57:49,356 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.DAGAppMasterEventType for class org.apache.tez.dag.app.DAGAppMaster$DAGAppMasterEventHandler
2015-05-18 16:57:49,356 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.DAGEventType for class org.apache.tez.dag.app.DAGAppMaster$DagEventDispatcher
2015-05-18 16:57:49,357 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.VertexEventType for class org.apache.tez.dag.app.DAGAppMaster$VertexEventDispatcher
2015-05-18 16:57:49,358 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.TaskEventType for class org.apache.tez.dag.app.DAGAppMaster$TaskEventDispatcher
2015-05-18 16:57:49,358 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.dag.event.TaskAttemptEventType for class org.apache.tez.dag.app.DAGAppMaster$TaskAttemptEventDispatcher
2015-05-18 16:57:49,391 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.AMSchedulerEventType for class org.apache.tez.dag.app.rm.TaskSchedulerEventHandler
2015-05-18 16:57:49,394 INFO [main] event.AsyncDispatcher: Registering class org.apache.tez.dag.app.rm.NMCommunicatorEventType for class org.apache.tez.dag.app.launcher.ContainerLauncherImpl
2015-05-18 16:57:49,397 INFO [main] node.AMNodeTracker: blacklistDisablePercent is 33, blacklistingEnabled: true, maxTaskFailuresPerNode: 10
2015-05-18 16:57:49,397 ERROR [main] web.WebUIService: Tez UI History URL is not set
2015-05-18 16:57:49,398 INFO [main] launcher.ContainerLauncherImpl: Upper limit on the thread pool size is 500
2015-05-18 16:57:49,398 INFO [main] history.HistoryEventHandler: Initializing HistoryEventHandler
2015-05-18 16:57:49,407 INFO [main] ats.ATSHistoryLoggingService: Initializing ATSService
2015-05-18 16:57:50,051 INFO [main] impl.TimelineClientImpl: Timeline service address: http://c6402.ambari.apache.org:8188/ws/v1/timeline/
2015-05-18 16:57:50,054 INFO [main] recovery.RecoveryService: Initializing RecoveryService
2015-05-18 16:57:50,089 INFO [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] history.HistoryEventHandler: Starting HistoryEventHandler
2015-05-18 16:57:50,089 INFO [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] ats.ATSHistoryLoggingService: Starting ATSService
2015-05-18 16:57:50,091 INFO [ServiceThread:org.apache.tez.dag.app.launcher.ContainerLauncherImpl] impl.ContainerManagementProtocolProxy: yarn.client.max-cached-nodemanagers-proxies : 0
2015-05-18 16:57:50,103 INFO [ServiceThread:org.apache.tez.dag.app.TaskAttemptListenerImpTezDag] ipc.CallQueueManager: Using callQueue class java.util.concurrent.LinkedBlockingQueue
2015-05-18 16:57:50,105 INFO [ServiceThread:org.apache.tez.dag.history.HistoryEventHandler] recovery.RecoveryService: Starting RecoveryService
2015-05-18 16:57:50,108 INFO [ServiceThread:DAGClientRPCServer] ipc.CallQueueManager: Using callQueue class java.util.concurrent.LinkedBlockingQueue
2015-05-18 16:57:50,123 INFO [Socket Reader #1 for port 53947] ipc.Server: Starting Socket Reader #1 for port 53947
2015-05-18 16:57:50,140 INFO [Socket Reader #1 for port 53906] ipc.Server: Starting Socket Reader #1 for port 53906
2015-05-18 16:57:50,178 INFO [IPC Server listener on 53906] ipc.Server: IPC Server listener on 53906: starting
2015-05-18 16:57:50,178 INFO [ServiceThread:DAGClientRPCServer] client.DAGClientServer: Instantiated DAGClientRPCServer at c6403.ambari.apache.org/192.168.64.103:53906
2015-05-18 16:57:50,178 INFO [IPC Server Responder] ipc.Server: IPC Server Responder: starting
2015-05-18 16:57:50,186 INFO [IPC Server Responder] ipc.Server: IPC Server Responder: starting
2015-05-18 16:57:50,186 INFO [IPC Server listener on 53947] ipc.Server: IPC Server listener on 53947: starting
2015-05-18 16:57:50,235 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: Logging to org.slf4j.impl.Log4jLoggerAdapter(org.mortbay.log) via org.mortbay.log.Slf4jLog
2015-05-18 16:57:50,239 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpRequestLog: Http request log for http.requests. is not defined
2015-05-18 16:57:50,249 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Added global filter 'safety' (class=org.apache.hadoop.http.HttpServer2$QuotingInputFilter)
2015-05-18 16:57:50,254 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Added filter AM\_PROXY\_FILTER (class=org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter) to context 
2015-05-18 16:57:50,254 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Added filter AM\_PROXY\_FILTER (class=org.apache.hadoop.yarn.server.webproxy.amfilter.AmIpFilter) to context static
2015-05-18 16:57:50,257 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: adding path spec: /*
2015-05-18 16:57:50,276 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] http.HttpServer2: Jetty bound to port 39924
2015-05-18 16:57:50,276 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: jetty-6.1.26.hwx
2015-05-18 16:57:50,325 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: Extract jar:file:/hadoop/yarn/local/filecache/15/tez.tar.gz/lib/hadoop-yarn-common-2.6.0.2.2.3.0-2611.jar!/webapps/ to /tmp/Jetty\_0\_0\_0\_0\_39924\_webapps\_\_\_\_jab5s/webapp
2015-05-18 16:57:50,468 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: NO JSP Support for /, did not find org.apache.jasper.servlet.JspServlet
2015-05-18 16:57:50,663 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] mortbay.log: Started HttpServer2$SelectChannelConnectorWithSafeStartup@0.0.0.0:39924
2015-05-18 16:57:50,669 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] webapp.WebApps: Web app / started at 39924
2015-05-18 16:57:51,023 INFO [ServiceThread:org.apache.tez.dag.app.web.WebUIService] webapp.WebApps: Registered webapp guice modules
2015-05-18 16:57:51,098 INFO [ServiceThread:org.apache.tez.dag.app.rm.TaskSchedulerEventHandler] rm.YarnTaskSchedulerService: TaskScheduler initialized with configuration: maxRMHeartbeatInterval: 250, containerReuseEnabled: true, reuseRackLocal: true, reuseNonLocal: false, localitySchedulingDelay: 250, preemptionPercentage: 10, numHeartbeatsBetweenPreemptions3, idleContainerMinTimeout=10000, idleContainerMaxTimeout=20000, sessionMinHeldContainers=0
2015-05-18 16:57:51,231 INFO [ServiceThread:org.apache.tez.dag.app.rm.TaskSchedulerEventHandler] client.RMProxy: Connecting to ResourceManager at c6402.ambari.apache.org/192.168.64.102:8030
2015-05-18 16:57:51,467 INFO [main] rm.TaskSchedulerEventHandler: TaskScheduler notified that it should unregister from RM
2015-05-18 16:57:51,467 INFO [main] app.DAGAppMaster: DAGAppMasterShutdownHandler invoked
2015-05-18 16:57:51,467 INFO [main] app.DAGAppMaster: Handling DAGAppMaster shutdown
2015-05-18 16:57:51,473 INFO [AMShutdownThread] app.DAGAppMaster: Sleeping for 5 seconds before shutting down
2015-05-18 16:57:51,553 INFO [AMRM Callback Handler Thread] rm.YarnTaskSchedulerService: App total resource memory: 682 cpu: 1 taskAllocations: 0
2015-05-18 16:57:51,556 INFO [AsyncDispatcher event handler] node.AMNodeTracker: Num cluster nodes = 1
2015-05-18 16:57:52,002 INFO [IPC Server handler 0 on 53906] ipc.Server: IPC Server handler 0 on 53906, call org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPB.getDAGStatus from 192.168.64.103:36267 Call#136 Retry#0
org.apache.tez.dag.api.TezException: No running dag at present
	at org.apache.tez.dag.api.client.DAGClientHandler.getDAG(DAGClientHandler.java:84)
	at org.apache.tez.dag.api.client.DAGClientHandler.getACLManager(DAGClientHandler.java:151)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:94)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:619)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:962)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2039)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2035)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1628)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2033)
...
...
2015-05-18 16:57:56,517 INFO [IPC Server handler 0 on 53906] ipc.Server: IPC Server handler 0 on 53906, call org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPB.getDAGStatus from 192.168.64.103:36885 Call#1936 Retry#0
org.apache.tez.dag.api.TezException: No running dag at present
	at org.apache.tez.dag.api.client.DAGClientHandler.getDAG(DAGClientHandler.java:84)
	at org.apache.tez.dag.api.client.DAGClientHandler.getACLManager(DAGClientHandler.java:151)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolBlockingPBServerImpl.getDAGStatus(DAGClientAMProtocolBlockingPBServerImpl.java:94)
	at org.apache.tez.dag.api.client.rpc.DAGClientAMProtocolRPC$DAGClientAMProtocol$2.callBlockingMethod(DAGClientAMProtocolRPC.java:7375)
	at org.apache.hadoop.ipc.ProtobufRpcEngine$Server$ProtoBufRpcInvoker.call(ProtobufRpcEngine.java:619)
	at org.apache.hadoop.ipc.RPC$Server.call(RPC.java:962)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2039)
	at org.apache.hadoop.ipc.Server$Handler$1.run(Server.java:2035)
	at java.security.AccessController.doPrivileged(Native Method)
	at javax.security.auth.Subject.doAs(Subject.java:415)
	at org.apache.hadoop.security.UserGroupInformation.doAs(UserGroupInformation.java:1628)
	at org.apache.hadoop.ipc.Server$Handler.run(Server.java:2033)
2015-05-18 16:57:56,616 INFO [AMShutdownThread] rm.YarnTaskSchedulerService: Successfully unregistered application from RM
2015-05-18 16:57:56,616 INFO [AMRM Callback Handler Thread] impl.AMRMClientAsyncImpl: Interrupted while waiting for queue
java.lang.InterruptedException
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.reportInterruptAfterWait(AbstractQueuedSynchronizer.java:2017)
	at java.util.concurrent.locks.AbstractQueuedSynchronizer$ConditionObject.await(AbstractQueuedSynchronizer.java:2052)
	at java.util.concurrent.LinkedBlockingQueue.take(LinkedBlockingQueue.java:442)
	at org.apache.hadoop.yarn.client.api.async.impl.AMRMClientAsyncImpl$CallbackHandlerThread.run(AMRMClientAsyncImpl.java:274)
2015-05-18 16:57:56,642 INFO [AMShutdownThread] mortbay.log: Stopped HttpServer2$SelectChannelConnectorWithSafeStartup@0.0.0.0:0
2015-05-18 16:57:56,644 INFO [AMShutdownThread] ipc.Server: Stopping server on 53947
2015-05-18 16:57:56,646 INFO [IPC Server listener on 53947] ipc.Server: Stopping IPC Server listener on 53947
2015-05-18 16:57:56,647 INFO [IPC Server Responder] ipc.Server: Stopping IPC Server Responder
2015-05-18 16:57:56,647 INFO [AMShutdownThread] ipc.Server: Stopping server on 53906
2015-05-18 16:57:56,647 INFO [IPC Server listener on 53906] ipc.Server: Stopping IPC Server listener on 53906
2015-05-18 16:57:56,665 INFO [IPC Server Responder] ipc.Server: Stopping IPC Server Responder
2015-05-18 16:57:56,676 INFO [AMShutdownThread] app.DAGAppMaster: Completed deletion of tez scratch data dir, path=hdfs://c1ha/tmp/ambari-qa/staging/.tez/application\_1431967480765\_0008
2015-05-18 16:57:56,676 INFO [AMShutdownThread] app.DAGAppMaster: Exiting DAGAppMaster..GoodBye!
2015-05-18 16:57:56,677 INFO [Thread-1] app.DAGAppMaster: DAGAppMasterShutdownHook invoked
{noformat}


---

* [TEZ-2455](https://issues.apache.org/jira/browse/TEZ-2455) | *Major* | **Tez UI: Dag view caching, error handling and minor layout changes**

# Enable caching in Dag View.
# View throws error when all vertex data are not loaded
# Display single outputs directly below the vertex
# Vetex & Input nodes at the same level slightly overlaps at times
# Entities under a DAG not loading in IE
# Prevent 'All DAGs' page from hitting ATS with a huge limit when rowCount is manually edited


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

* [TEZ-2447](https://issues.apache.org/jira/browse/TEZ-2447) | *Major* | **Tez UI: Generic changes based on feedbacks.**

1. Status icon in all DAGs table is not inline with the text always.
2. Downloaded zip file must have type application/zip
3. KILLED status must be removed from All Dags status dropdown.
4. Text color must be made darker.


---

* [TEZ-2409](https://issues.apache.org/jira/browse/TEZ-2409) | *Critical* | **Allow different edges to have different routing plugins**

It may be useful to allow different edge manager plugin types based on different requirements. In order to support this, we would need to support different plugins per edge for routing the events on that edge. A motivating scenario is when a custom plugin from an older release of a downstream project is using older API's while the latest release of that project has moved on to newer API's. This would allow both old and new releases to work with the latest Tez framework as optimally as possible.



