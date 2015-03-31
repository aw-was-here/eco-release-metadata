# Hadoop Changelog

## Release 2.1.0-beta - 2013-08-22

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1056](https://issues.apache.org/jira/browse/YARN-1056) | Fix configs yarn.resourcemanager.resourcemanager.connect.{max.wait.secs\|retry\_interval.secs} |  Trivial | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-926](https://issues.apache.org/jira/browse/YARN-926) | ContainerManagerProtcol APIs should take in requests for multiple containers |  Blocker | . | Vinod Kumar Vavilapalli | Jian He |
| [YARN-918](https://issues.apache.org/jira/browse/YARN-918) | ApplicationMasterProtocol doesn't need ApplicationAttemptId in the payload after YARN-701 |  Blocker | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-869](https://issues.apache.org/jira/browse/YARN-869) | ResourceManagerAdministrationProtocol should neither be public(yet) nor in yarn.api |  Blocker | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-851](https://issues.apache.org/jira/browse/YARN-851) | Share NMTokens using NMTokenCache (api-based) instead of memory based approach which is used currently. |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-841](https://issues.apache.org/jira/browse/YARN-841) | Annotate and document AuxService APIs |  Major | . | Siddharth Seth | Vinod Kumar Vavilapalli |
| [YARN-840](https://issues.apache.org/jira/browse/YARN-840) | Move ProtoUtils to  yarn.api.records.pb.impl |  Major | . | Jian He | Jian He |
| [YARN-837](https://issues.apache.org/jira/browse/YARN-837) | ClusterInfo.java doesn't seem to belong to org.apache.hadoop.yarn |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-834](https://issues.apache.org/jira/browse/YARN-834) | Review/fix annotations for yarn-client module and clearly differentiate *Async apis |  Blocker | . | Arun C Murthy | Zhijie Shen |
| [YARN-831](https://issues.apache.org/jira/browse/YARN-831) | Remove resource min from GetNewApplicationResponse |  Blocker | . | Jian He | Jian He |
| [YARN-829](https://issues.apache.org/jira/browse/YARN-829) | Rename RMTokenSelector to be RMDelegationTokenSelector |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-828](https://issues.apache.org/jira/browse/YARN-828) | Remove YarnVersionAnnotation |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-826](https://issues.apache.org/jira/browse/YARN-826) | Move Clock/SystemClock to util package |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-824](https://issues.apache.org/jira/browse/YARN-824) | Add  static factory to yarn client lib interface and change it to abstract class |  Major | . | Jian He | Jian He |
| [YARN-823](https://issues.apache.org/jira/browse/YARN-823) | Move RMAdmin from yarn.client to yarn.client.cli and rename as RMAdminCLI |  Major | . | Jian He | Jian He |
| [YARN-822](https://issues.apache.org/jira/browse/YARN-822) | Rename ApplicationToken to AMRMToken |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-821](https://issues.apache.org/jira/browse/YARN-821) | Rename FinishApplicationMasterRequest.setFinishApplicationStatus to setFinalApplicationStatus to be consistent with getter |  Major | . | Jian He | Jian He |
| [YARN-806](https://issues.apache.org/jira/browse/YARN-806) | Move ContainerExitStatus from yarn.api to yarn.api.records |  Major | . | Jian He | Jian He |
| [YARN-792](https://issues.apache.org/jira/browse/YARN-792) | Move NodeHealthStatus from yarn.api.record to yarn.server.api.record |  Major | . | Jian He | Jian He |
| [YARN-791](https://issues.apache.org/jira/browse/YARN-791) | Ensure that RM RPC APIs that return nodes are consistent with /nodes REST API |  Blocker | api, resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-787](https://issues.apache.org/jira/browse/YARN-787) | Remove resource min from Yarn client API |  Blocker | api | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-777](https://issues.apache.org/jira/browse/YARN-777) | Remove unreferenced objects from proto |  Major | . | Jian He | Jian He |
| [YARN-756](https://issues.apache.org/jira/browse/YARN-756) | Move PreemptionContainer/PremptionContract/PreemptionMessage/StrictPreemptionContract/PreemptionResourceRequest to api.records |  Major | . | Jian He | Jian He |
| [YARN-755](https://issues.apache.org/jira/browse/YARN-755) | Rename AllocateResponse.reboot to AllocateResponse.resync |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-753](https://issues.apache.org/jira/browse/YARN-753) | Add individual factory method for api protocol records |  Major | . | Jian He | Jian He |
| [YARN-749](https://issues.apache.org/jira/browse/YARN-749) | Rename ResourceRequest (get,set)HostName to (get,set)ResourceName |  Major | . | Arun C Murthy | Arun C Murthy |
| [YARN-748](https://issues.apache.org/jira/browse/YARN-748) | Move BuilderUtils from yarn-common to yarn-server-common |  Major | . | Jian He | Jian He |
| [YARN-746](https://issues.apache.org/jira/browse/YARN-746) | rename Service.register() and Service.unregister() to registerServiceListener() & unregisterServiceListener() respectively |  Major | . | Steve Loughran | Steve Loughran |
| [YARN-735](https://issues.apache.org/jira/browse/YARN-735) | Make ApplicationAttemptID, ContainerID, NodeID immutable |  Major | . | Jian He | Jian He |
| [YARN-724](https://issues.apache.org/jira/browse/YARN-724) | Move ProtoBase from api.records to api.records.impl.pb |  Major | . | Jian He | Jian He |
| [YARN-720](https://issues.apache.org/jira/browse/YARN-720) | container-log4j.properties should not refer to mapreduce properties |  Major | . | Siddharth Seth | Zhijie Shen |
| [YARN-716](https://issues.apache.org/jira/browse/YARN-716) | Make ApplicationID immutable |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-701](https://issues.apache.org/jira/browse/YARN-701) | ApplicationTokens should be used irrespective of kerberos |  Blocker | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-694](https://issues.apache.org/jira/browse/YARN-694) | Start using NMTokens to authenticate all communication with NM |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-684](https://issues.apache.org/jira/browse/YARN-684) | ContainerManager.startContainer needs to only have ContainerTokenIdentifier instead of the whole Container |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-642](https://issues.apache.org/jira/browse/YARN-642) | Fix up /nodes REST API to have 1 param and be consistent with the Java API |  Major | api, resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-635](https://issues.apache.org/jira/browse/YARN-635) | Rename YarnRemoteException to YarnException |  Major | . | Xuan Gong | Siddharth Seth |
| [YARN-633](https://issues.apache.org/jira/browse/YARN-633) | Change RMAdminProtocol api to throw IOException and YarnRemoteException |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-632](https://issues.apache.org/jira/browse/YARN-632) | Change ContainerManager api to throw IOException and YarnRemoteException |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-631](https://issues.apache.org/jira/browse/YARN-631) | Change ClientRMProtocol api to throw IOException and YarnRemoteException |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-630](https://issues.apache.org/jira/browse/YARN-630) | Change AMRMProtocol api to throw IOException and YarnRemoteException |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-629](https://issues.apache.org/jira/browse/YARN-629) | Make YarnRemoteException not be rooted at IOException |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-615](https://issues.apache.org/jira/browse/YARN-615) | ContainerLaunchContext.containerTokens should simply be called tokens |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-610](https://issues.apache.org/jira/browse/YARN-610) | ClientToken (ClientToAMToken) should not be set in the environment |  Blocker | . | Siddharth Seth | Omkar Vinit Joshi |
| [YARN-579](https://issues.apache.org/jira/browse/YARN-579) | Make ApplicationToken part of Container's token list to help RM-restart |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-571](https://issues.apache.org/jira/browse/YARN-571) | User should not be part of ContainerLaunchContext |  Major | . | Hitesh Shah | Omkar Vinit Joshi |
| [YARN-561](https://issues.apache.org/jira/browse/YARN-561) | Nodemanager should set some key information into the environment of every container that it launches. |  Major | . | Hitesh Shah | Xuan Gong |
| [YARN-553](https://issues.apache.org/jira/browse/YARN-553) | Have YarnClient generate a directly usable ApplicationSubmissionContext |  Minor | client | Harsh J | Karthik Kambatla |
| [YARN-536](https://issues.apache.org/jira/browse/YARN-536) | Remove ContainerStatus, ContainerState from Container api interface as they will not be called by the container object |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-530](https://issues.apache.org/jira/browse/YARN-530) | Define Service model strictly, implement AbstractService for robust subclassing, migrate yarn-common services |  Major | . | Steve Loughran | Steve Loughran |
| [YARN-440](https://issues.apache.org/jira/browse/YARN-440) | Flatten RegisterNodeManagerResponse |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-439](https://issues.apache.org/jira/browse/YARN-439) | Flatten NodeHeartbeatResponse |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-396](https://issues.apache.org/jira/browse/YARN-396) | Rationalize AllocateResponse in RM scheduler API |  Major | . | Bikas Saha | Zhijie Shen |
| [YARN-387](https://issues.apache.org/jira/browse/YARN-387) | Fix inconsistent protocol naming |  Blocker | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-326](https://issues.apache.org/jira/browse/YARN-326) | Add multi-resource scheduling to the fair scheduler |  Major | scheduler | Sandy Ryza | Sandy Ryza |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1045](https://issues.apache.org/jira/browse/YARN-1045) | Improve toString implementation for PBImpls |  Major | . | Siddharth Seth | Jian He |
| [YARN-883](https://issues.apache.org/jira/browse/YARN-883) | Expose Fair Scheduler-specific queue metrics |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-865](https://issues.apache.org/jira/browse/YARN-865) | RM webservices can't query based on application Types |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-803](https://issues.apache.org/jira/browse/YARN-803) | factor out scheduler config validation from the ResourceManager to each scheduler implementation |  Major | resourcemanager, scheduler | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-789](https://issues.apache.org/jira/browse/YARN-789) | Enable zero capabilities resource requests in fair scheduler |  Major | scheduler | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-782](https://issues.apache.org/jira/browse/YARN-782) | vcores-pcores ratio functions differently from vmem-pmem ratio in misleading way |  Critical | nodemanager | Sandy Ryza | Sandy Ryza |
| [YARN-752](https://issues.apache.org/jira/browse/YARN-752) | In AMRMClient, automatically add corresponding rack requests for requested nodes |  Major | api, applications | Sandy Ryza | Sandy Ryza |
| [YARN-736](https://issues.apache.org/jira/browse/YARN-736) | Add a multi-resource fair sharing metric |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-600](https://issues.apache.org/jira/browse/YARN-600) | Hook up cgroups CPU settings to the number of virtual cores allocated |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-598](https://issues.apache.org/jira/browse/YARN-598) | Add virtual cores to queue metrics |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-590](https://issues.apache.org/jira/browse/YARN-590) | Add an optional mesage to RegisterNodeManagerResponse as to why NM is being asked to resync or shutdown |  Major | . | Vinod Kumar Vavilapalli | Mayank Bansal |
| [YARN-538](https://issues.apache.org/jira/browse/YARN-538) | RM address DNS lookup can cause unnecessary slowness on every JHS page load |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-525](https://issues.apache.org/jira/browse/YARN-525) | make CS node-locality-delay refreshable |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-518](https://issues.apache.org/jira/browse/YARN-518) | Fair Scheduler's document link could be added to the hadoop 2.x main doc page |  Major | documentation | Dapeng Sun | Sandy Ryza |
| [YARN-447](https://issues.apache.org/jira/browse/YARN-447) | applicationComparator improvement for CS |  Minor | scheduler | Nemon Lou | Nemon Lou |
| [YARN-406](https://issues.apache.org/jira/browse/YARN-406) | TestRackResolver fails when local network resolves "host1" to a valid host |  Minor | . | Hitesh Shah | Hitesh Shah |
| [YARN-391](https://issues.apache.org/jira/browse/YARN-391) | detabify LCEResourcesHandler classes |  Trivial | nodemanager | Steve Loughran | Steve Loughran |
| [YARN-385](https://issues.apache.org/jira/browse/YARN-385) | ResourceRequestPBImpl's toString() is missing location and # containers |  Major | api | Sandy Ryza | Sandy Ryza |
| [YARN-382](https://issues.apache.org/jira/browse/YARN-382) | SchedulerUtils improve way normalizeRequest sets the resource capabilities |  Major | scheduler | Thomas Graves | Zhijie Shen |
| [YARN-381](https://issues.apache.org/jira/browse/YARN-381) | Improve FS docs |  Minor | documentation | Eli Collins | Sandy Ryza |
| [YARN-347](https://issues.apache.org/jira/browse/YARN-347) | YARN CLI should show CPU info besides memory info in node status |  Major | client | Junping Du | Junping Du |
| [YARN-297](https://issues.apache.org/jira/browse/YARN-297) | Improve hashCode implementations for PB records |  Major | . | Arun C Murthy | Xuan Gong |
| [YARN-249](https://issues.apache.org/jira/browse/YARN-249) | Capacity Scheduler web page should show list of active users per queue like it used to (in 1.x) |  Major | capacityscheduler | Ravi Prakash | Ravi Prakash |
| [YARN-237](https://issues.apache.org/jira/browse/YARN-237) | Refreshing the RM page forgets how many rows I had in my Datatables |  Major | resourcemanager | Ravi Prakash | Jian He |
| [YARN-198](https://issues.apache.org/jira/browse/YARN-198) | If we are navigating to Nodemanager UI from Resourcemanager,then there is not link to navigate back to Resource manager |  Minor | nodemanager | Ramgopal N | Jian He |
| [YARN-117](https://issues.apache.org/jira/browse/YARN-117) | Enhance YARN service model |  Major | . | Steve Loughran | Steve Loughran |
| [YARN-84](https://issues.apache.org/jira/browse/YARN-84) | Use Builder to get RPC server in YARN |  Minor | . | Brandon Li | Brandon Li |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1046](https://issues.apache.org/jira/browse/YARN-1046) | Disable mem monitoring by default in MiniYARNCluster |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-1043](https://issues.apache.org/jira/browse/YARN-1043) | YARN Queue metrics are getting pushed to neither file nor Ganglia |  Major | . | Yusaku Sako | Jian He |
| [YARN-968](https://issues.apache.org/jira/browse/YARN-968) | RM admin commands don't work |  Blocker | . | Kihwal Lee | Vinod Kumar Vavilapalli |
| [YARN-960](https://issues.apache.org/jira/browse/YARN-960) | TestMRCredentials and  TestBinaryTokenFile are failing on trunk |  Blocker | . | Alejandro Abdelnur | Daryn Sharp |
| [YARN-945](https://issues.apache.org/jira/browse/YARN-945) | AM register failing after AMRMToken |  Blocker | . | Bikas Saha | Vinod Kumar Vavilapalli |
| [YARN-937](https://issues.apache.org/jira/browse/YARN-937) | Fix unmanaged AM in non-secure/secure setup post YARN-701 |  Blocker | . | Arun C Murthy | Alejandro Abdelnur |
| [YARN-932](https://issues.apache.org/jira/browse/YARN-932) | TestResourceLocalizationService.testLocalizationInit can fail on JDK7 |  Major | . | Sandy Ryza | Karthik Kambatla |
| [YARN-919](https://issues.apache.org/jira/browse/YARN-919) | Document setting default heap sizes in yarn env |  Minor | . | Mayank Bansal | Mayank Bansal |
| [YARN-912](https://issues.apache.org/jira/browse/YARN-912) | Create exceptions package in common/api for yarn and move client facing exceptions to them |  Major | . | Bikas Saha | Mayank Bansal |
| [YARN-909](https://issues.apache.org/jira/browse/YARN-909) | Disable TestLinuxContainerExecutorWithMocks on Windows |  Minor | nodemanager | Chuan Liu | Chuan Liu |
| [YARN-897](https://issues.apache.org/jira/browse/YARN-897) | CapacityScheduler wrongly sorted queues |  Blocker | capacityscheduler | Djellel Eddine Difallah | Djellel Eddine Difallah |
| [YARN-894](https://issues.apache.org/jira/browse/YARN-894) | NodeHealthScriptRunner timeout checking is inaccurate on Windows |  Minor | nodemanager | Chuan Liu | Chuan Liu |
| [YARN-875](https://issues.apache.org/jira/browse/YARN-875) | Application can hang if AMRMClientAsync callback thread has exception |  Major | . | Bikas Saha | Xuan Gong |
| [YARN-874](https://issues.apache.org/jira/browse/YARN-874) | Tracking YARN/MR test failures after HADOOP-9421 and YARN-827 |  Blocker | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-861](https://issues.apache.org/jira/browse/YARN-861) | TestContainerManager is failing |  Critical | nodemanager | Devaraj K | Vinod Kumar Vavilapalli |
| [YARN-854](https://issues.apache.org/jira/browse/YARN-854) | App submission fails on secure deploy |  Blocker | . | Ramya Sunil | Omkar Vinit Joshi |
| [YARN-853](https://issues.apache.org/jira/browse/YARN-853) | maximum-am-resource-percent doesn't work after refreshQueues command |  Major | capacityscheduler | Devaraj K | Devaraj K |
| [YARN-852](https://issues.apache.org/jira/browse/YARN-852) | TestAggregatedLogFormat.testContainerLogsFileAccess fails on Windows |  Minor | . | Chuan Liu | Chuan Liu |
| [YARN-848](https://issues.apache.org/jira/browse/YARN-848) | Nodemanager does not register with RM using the fully qualified hostname |  Major | . | Hitesh Shah | Hitesh Shah |
| [YARN-839](https://issues.apache.org/jira/browse/YARN-839) | TestContainerLaunch.testContainerEnvVariables fails on Windows |  Minor | . | Chuan Liu | Chuan Liu |
| [YARN-833](https://issues.apache.org/jira/browse/YARN-833) | Move Graph and VisualizeStateMachine into yarn.state package |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-812](https://issues.apache.org/jira/browse/YARN-812) | Enabling app summary logs causes 'FileNotFound' errors |  Major | . | Ramya Sunil | Siddharth Seth |
| [YARN-799](https://issues.apache.org/jira/browse/YARN-799) | CgroupsLCEResourcesHandler tries to write to cgroup.procs |  Major | nodemanager | Chris Riccomini | Chris Riccomini |
| [YARN-795](https://issues.apache.org/jira/browse/YARN-795) | Fair scheduler queue metrics should subtract allocated vCores from available vCores |  Major | scheduler | Wei Yan | Wei Yan |
| [YARN-767](https://issues.apache.org/jira/browse/YARN-767) | Initialize Application status metrics  when QueueMetrics is initialized |  Major | . | Jian He | Jian He |
| [YARN-764](https://issues.apache.org/jira/browse/YARN-764) | blank Used Resources on Capacity Scheduler page |  Major | resourcemanager | Nemon Lou | Nemon Lou |
| [YARN-763](https://issues.apache.org/jira/browse/YARN-763) | AMRMClientAsync should stop heartbeating after receiving shutdown from RM |  Major | . | Bikas Saha | Xuan Gong |
| [YARN-761](https://issues.apache.org/jira/browse/YARN-761) | TestNMClientAsync fails sometimes |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-760](https://issues.apache.org/jira/browse/YARN-760) | NodeManager throws AvroRuntimeException on failed start |  Major | nodemanager | Sandy Ryza | Niranjan Singh |
| [YARN-757](https://issues.apache.org/jira/browse/YARN-757) | TestRMRestart failing/stuck on trunk |  Blocker | . | Bikas Saha | Bikas Saha |
| [YARN-742](https://issues.apache.org/jira/browse/YARN-742) | Log aggregation causes a lot of redundant setPermission calls |  Major | nodemanager | Kihwal Lee | Jason Lowe |
| [YARN-733](https://issues.apache.org/jira/browse/YARN-733) | TestNMClient fails occasionally |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-726](https://issues.apache.org/jira/browse/YARN-726) | Queue, FinishTime fields broken on RM UI |  Critical | . | Siddharth Seth | Mayank Bansal |
| [YARN-715](https://issues.apache.org/jira/browse/YARN-715) | TestDistributedShell and TestUnmanagedAMLauncher are failing |  Major | . | Siddharth Seth | Vinod Kumar Vavilapalli |
| [YARN-706](https://issues.apache.org/jira/browse/YARN-706) | Race Condition in TestFSDownload |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-700](https://issues.apache.org/jira/browse/YARN-700) | TestInfoBlock fails on Windows because of line ending missmatch |  Major | . | Ivan Mitic | Ivan Mitic |
| [YARN-690](https://issues.apache.org/jira/browse/YARN-690) | RM exits on token cancel/renew problems |  Blocker | resourcemanager | Daryn Sharp | Daryn Sharp |
| [YARN-688](https://issues.apache.org/jira/browse/YARN-688) | Containers not cleaned up when NM received SHUTDOWN event from NodeStatusUpdater |  Major | . | Jian He | Jian He |
| [YARN-661](https://issues.apache.org/jira/browse/YARN-661) | NM fails to cleanup local directories for users |  Major | nodemanager | Jason Lowe | Omkar Vinit Joshi |
| [YARN-656](https://issues.apache.org/jira/browse/YARN-656) | In scheduler UI, including reserved memory in "Memory Total" can make it exceed cluster capacity. |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-655](https://issues.apache.org/jira/browse/YARN-655) | Fair scheduler metrics should subtract allocated memory from available memory |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-654](https://issues.apache.org/jira/browse/YARN-654) | AMRMClient: Perform sanity checks for parameters of public methods |  Major | . | Bikas Saha | Xuan Gong |
| [YARN-648](https://issues.apache.org/jira/browse/YARN-648) | FS: Add documentation for pluggable policy |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-646](https://issues.apache.org/jira/browse/YARN-646) | Some issues in Fair Scheduler's document |  Major | documentation | Dapeng Sun | Dapeng Sun |
| [YARN-645](https://issues.apache.org/jira/browse/YARN-645) | Move RMDelegationTokenSecretManager from yarn-server-common to yarn-server-resourcemanager |  Major | . | Jian He | Jian He |
| [YARN-639](https://issues.apache.org/jira/browse/YARN-639) | Make AM of Distributed Shell Use NMClient |  Major | applications/distributed-shell | Zhijie Shen | Zhijie Shen |
| [YARN-637](https://issues.apache.org/jira/browse/YARN-637) | FS: maxAssign is not honored |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-618](https://issues.apache.org/jira/browse/YARN-618) | Modify RM\_INVALID\_IDENTIFIER to  a -ve number |  Major | . | Jian He | Jian He |
| [YARN-605](https://issues.apache.org/jira/browse/YARN-605) | Failing unit test in TestNMWebServices when using git for source control |  Major | . | Hitesh Shah | Hitesh Shah |
| [YARN-599](https://issues.apache.org/jira/browse/YARN-599) | Refactoring submitApplication in ClientRMService and RMAppManager |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-597](https://issues.apache.org/jira/browse/YARN-597) | TestFSDownload fails on Windows because of dependencies on tar/gzip/jar tools |  Major | . | Ivan Mitic | Ivan Mitic |
| [YARN-594](https://issues.apache.org/jira/browse/YARN-594) | Update test and add comments in YARN-534 |  Major | . | Jian He | Jian He |
| [YARN-593](https://issues.apache.org/jira/browse/YARN-593) | container launch on Windows does not correctly populate classpath with new process's environment variables and localized resources |  Major | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-586](https://issues.apache.org/jira/browse/YARN-586) | Typo in ApplicationSubmissionContext#setApplicationId |  Trivial | . | Zhijie Shen | Zhijie Shen |
| [YARN-585](https://issues.apache.org/jira/browse/YARN-585) | TestFairScheduler#testNotAllowSubmitApplication is broken due to YARN-514 |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-576](https://issues.apache.org/jira/browse/YARN-576) | RM should not allow registrations from NMs that do not satisfy minimum scheduler allocations |  Major | . | Hitesh Shah | Kenji Kikushima |
| [YARN-557](https://issues.apache.org/jira/browse/YARN-557) | TestUnmanagedAMLauncher fails on Windows |  Major | applications | Chris Nauroth | Chris Nauroth |
| [YARN-542](https://issues.apache.org/jira/browse/YARN-542) | Change the default global AM max-attempts value to be not one |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-541](https://issues.apache.org/jira/browse/YARN-541) | getAllocatedContainers() is not returning all the allocated containers |  Blocker | resourcemanager | Krishna Kishore Bonagiri | Bikas Saha |
| [YARN-532](https://issues.apache.org/jira/browse/YARN-532) | RMAdminProtocolPBClientImpl should implement Closeable |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-515](https://issues.apache.org/jira/browse/YARN-515) | Node Manager not getting the master key |  Blocker | . | Robert Joseph Evans | Robert Joseph Evans |
| [YARN-512](https://issues.apache.org/jira/browse/YARN-512) | Log aggregation root directory check is more expensive than it needs to be |  Minor | nodemanager | Jason Lowe | Maysam Yabandeh |
| [YARN-507](https://issues.apache.org/jira/browse/YARN-507) | Add interface visibility and stability annotations to FS interfaces/classes |  Minor | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-506](https://issues.apache.org/jira/browse/YARN-506) | Move to common utils FileUtil#setReadable/Writable/Executable and FileUtil#canRead/Write/Execute |  Major | . | Ivan Mitic | Ivan Mitic |
| [YARN-500](https://issues.apache.org/jira/browse/YARN-500) | ResourceManager webapp is using next port if configured port is already in use |  Major | resourcemanager | Nishan Shetty | Kenji Kikushima |
| [YARN-496](https://issues.apache.org/jira/browse/YARN-496) | Fair scheduler configs are refreshed inconsistently in reinitialize |  Minor | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-495](https://issues.apache.org/jira/browse/YARN-495) | Change NM behavior of reboot to resync |  Major | . | Jian He | Jian He |
| [YARN-493](https://issues.apache.org/jira/browse/YARN-493) | NodeManager job control logic flaws on Windows |  Major | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-491](https://issues.apache.org/jira/browse/YARN-491) | TestContainerLogsPage fails on Windows |  Major | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-490](https://issues.apache.org/jira/browse/YARN-490) | TestDistributedShell fails on Windows |  Major | applications/distributed-shell | Chris Nauroth | Chris Nauroth |
| [YARN-488](https://issues.apache.org/jira/browse/YARN-488) | TestContainerManagerSecurity fails on Windows |  Major | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-487](https://issues.apache.org/jira/browse/YARN-487) | TestDiskFailures fails on Windows due to path mishandling |  Major | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-485](https://issues.apache.org/jira/browse/YARN-485) | TestProcfsProcessTree#testProcessTree() doesn't wait long enough for the process to die |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-481](https://issues.apache.org/jira/browse/YARN-481) | Add AM Host and RPC Port to ApplicationCLI Status Output |  Major | client | Chris Riccomini | Chris Riccomini |
| [YARN-479](https://issues.apache.org/jira/browse/YARN-479) | NM retry behavior for connection to RM should be similar for lost heartbeats |  Major | . | Hitesh Shah | Jian He |
| [YARN-476](https://issues.apache.org/jira/browse/YARN-476) | ProcfsBasedProcessTree info message confuses users |  Minor | . | Jason Lowe | Sandy Ryza |
| [YARN-474](https://issues.apache.org/jira/browse/YARN-474) | CapacityScheduler does not activate applications when maximum-am-resource-percent configuration is refreshed |  Major | capacityscheduler | Hitesh Shah | Zhijie Shen |
| [YARN-460](https://issues.apache.org/jira/browse/YARN-460) | CS user left in list of active users for the queue even when application finished |  Blocker | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-458](https://issues.apache.org/jira/browse/YARN-458) | YARN daemon addresses must be placed in many different configs |  Major | nodemanager, resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-448](https://issues.apache.org/jira/browse/YARN-448) | Remove unnecessary hflush from log aggregation |  Major | nodemanager | Kihwal Lee | Kihwal Lee |
| [YARN-426](https://issues.apache.org/jira/browse/YARN-426) | Failure to download a public resource on a node prevents further downloads of the resource from that node |  Critical | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-412](https://issues.apache.org/jira/browse/YARN-412) | FifoScheduler incorrectly checking for node locality |  Minor | scheduler | Roger Hoover | Roger Hoover |
| [YARN-410](https://issues.apache.org/jira/browse/YARN-410) | New lines in diagnostics for a failed app on the per-application page make it hard to read |  Major | . | Vinod Kumar Vavilapalli | Omkar Vinit Joshi |
| [YARN-400](https://issues.apache.org/jira/browse/YARN-400) | RM can return null application resource usage report leading to NPE in client |  Critical | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-390](https://issues.apache.org/jira/browse/YARN-390) | ApplicationCLI and NodeCLI use hard-coded platform-specific line separator, which causes test failures on Windows |  Major | client | Chris Nauroth | Chris Nauroth |
| [YARN-383](https://issues.apache.org/jira/browse/YARN-383) | AMRMClientImpl should handle null rmClient in stop() |  Minor | . | Hitesh Shah | Hitesh Shah |
| [YARN-380](https://issues.apache.org/jira/browse/YARN-380) | yarn node -status prints Last-Last-Health-Update |  Major | client | Thomas Graves | Omkar Vinit Joshi |
| [YARN-377](https://issues.apache.org/jira/browse/YARN-377) | Fix TestContainersMonitor for HADOOP-9252 |  Minor | . | Tsz Wo Nicholas Sze | Chris Nauroth |
| [YARN-376](https://issues.apache.org/jira/browse/YARN-376) | Apps that have completed can appear as RUNNING on the NM UI |  Blocker | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-368](https://issues.apache.org/jira/browse/YARN-368) | Fix typo "defiend" should be "defined" in error output |  Trivial | . | Albert Chu | Albert Chu |
| [YARN-363](https://issues.apache.org/jira/browse/YARN-363) | yarn proxyserver fails to find webapps/proxy directory on startup |  Major | . | Jason Lowe | Kenji Kikushima |
| [YARN-362](https://issues.apache.org/jira/browse/YARN-362) | Unexpected extra results when using webUI table search |  Minor | . | Jason Lowe | Ravi Prakash |
| [YARN-345](https://issues.apache.org/jira/browse/YARN-345) | Many InvalidStateTransitonException errors for ApplicationImpl in Node Manager |  Critical | nodemanager | Devaraj K | Robert Parker |
| [YARN-333](https://issues.apache.org/jira/browse/YARN-333) | Schedulers cannot control the queue-name of an application |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-319](https://issues.apache.org/jira/browse/YARN-319) | Submit a job to a queue that not allowed in fairScheduler, client will hold forever. |  Major | resourcemanager, scheduler | Hong Shen | Hong Shen |
| [YARN-289](https://issues.apache.org/jira/browse/YARN-289) | Fair scheduler allows reservations that won't fit on node |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-269](https://issues.apache.org/jira/browse/YARN-269) | Resource Manager not logging the health\_check\_script result when taking it out |  Major | resourcemanager | Thomas Graves | Jason Lowe |
| [YARN-236](https://issues.apache.org/jira/browse/YARN-236) | RM should point tracking URL to RM web page when app fails to start |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-227](https://issues.apache.org/jira/browse/YARN-227) | Application expiration difficult to debug for end-users |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-209](https://issues.apache.org/jira/browse/YARN-209) | Capacity scheduler doesn't trigger app-activation after adding nodes |  Major | capacityscheduler | Bikas Saha | Zhijie Shen |
| [YARN-196](https://issues.apache.org/jira/browse/YARN-196) | Nodemanager should be more robust in handling connection failure  to ResourceManager when a cluster is started |  Major | nodemanager | Ramgopal N | Xuan Gong |
| [YARN-193](https://issues.apache.org/jira/browse/YARN-193) | Scheduler.normalizeRequest does not account for allocation requests that exceed maximumAllocation limits |  Major | resourcemanager | Hitesh Shah | Zhijie Shen |
| [YARN-109](https://issues.apache.org/jira/browse/YARN-109) | .tmp file is not deleted for localized archives |  Major | nodemanager | Jason Lowe | Mayank Bansal |
| [YARN-101](https://issues.apache.org/jira/browse/YARN-101) | If  the heartbeat message loss, the nodestatus info of complete container will loss too. |  Minor | nodemanager | xieguiming | Xuan Gong |
| [YARN-71](https://issues.apache.org/jira/browse/YARN-71) | Ensure/confirm that the NodeManager cleans up local-dirs on restart |  Critical | nodemanager | Vinod Kumar Vavilapalli | Xuan Gong |
| [YARN-45](https://issues.apache.org/jira/browse/YARN-45) | [Preemption] Scheduler feedback to AM to release containers |  Major | resourcemanager | Chris Douglas | Carlo Curino |
| [YARN-24](https://issues.apache.org/jira/browse/YARN-24) | Nodemanager fails to start if log aggregation enabled and namenode unavailable |  Major | nodemanager | Jason Lowe | Sandy Ryza |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-866](https://issues.apache.org/jira/browse/YARN-866) | Add test for class ResourceWeights |  Major | . | Wei Yan | Wei Yan |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-961](https://issues.apache.org/jira/browse/YARN-961) | ContainerManagerImpl should enforce token on server. Today it is [TOKEN, SIMPLE] |  Blocker | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-922](https://issues.apache.org/jira/browse/YARN-922) | Change FileSystemRMStateStore to use directories |  Major | resourcemanager | Jian He | Jian He |
| [YARN-877](https://issues.apache.org/jira/browse/YARN-877) | Allow for black-listing resources in FifoScheduler |  Major | scheduler | Junping Du | Junping Du |
| [YARN-873](https://issues.apache.org/jira/browse/YARN-873) | YARNClient.getApplicationReport(unknownAppId) returns a null report |  Major | . | Bikas Saha | Xuan Gong |
| [YARN-850](https://issues.apache.org/jira/browse/YARN-850) | Rename getClusterAvailableResources to getAvailableResources in AMRMClients |  Major | . | Jian He | Jian He |
| [YARN-846](https://issues.apache.org/jira/browse/YARN-846) | Move pb Impl from yarn-api to yarn-common |  Major | . | Jian He | Jian He |
| [YARN-845](https://issues.apache.org/jira/browse/YARN-845) | RM crash with NPE on NODE\_UPDATE |  Major | resourcemanager | Arpit Gupta | Mayank Bansal |
| [YARN-827](https://issues.apache.org/jira/browse/YARN-827) | Need to make Resource arithmetic methods accessible |  Critical | . | Bikas Saha | Jian He |
| [YARN-825](https://issues.apache.org/jira/browse/YARN-825) | Fix yarn-common javadoc annotations |  Blocker | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-820](https://issues.apache.org/jira/browse/YARN-820) | NodeManager has invalid state transition after error in resource localization |  Major | . | Bikas Saha | Mayank Bansal |
| [YARN-814](https://issues.apache.org/jira/browse/YARN-814) | Difficult to diagnose a failed container launch when error due to invalid environment variable |  Major | . | Hitesh Shah | Jian He |
| [YARN-805](https://issues.apache.org/jira/browse/YARN-805) | Fix yarn-api javadoc annotations |  Blocker | . | Jian He | Jian He |
| [YARN-781](https://issues.apache.org/jira/browse/YARN-781) | Expose LOGDIR that containers should use for logging |  Major | . | Devaraj Das | Jian He |
| [YARN-773](https://issues.apache.org/jira/browse/YARN-773) | Move YarnRuntimeException from package api.yarn to api.yarn.exceptions |  Major | . | Jian He | Jian He |
| [YARN-759](https://issues.apache.org/jira/browse/YARN-759) | Create Command enum in AllocateResponse |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-750](https://issues.apache.org/jira/browse/YARN-750) | Allow for black-listing resources in YARN API and Impl in CS |  Major | . | Arun C Murthy | Arun C Murthy |
| [YARN-739](https://issues.apache.org/jira/browse/YARN-739) | NM startContainer should validate the NodeId |  Major | . | Siddharth Seth | Omkar Vinit Joshi |
| [YARN-737](https://issues.apache.org/jira/browse/YARN-737) | Some Exceptions no longer need to be wrapped by YarnException and can be directly thrown out after YARN-142 |  Major | . | Jian He | Jian He |
| [YARN-731](https://issues.apache.org/jira/browse/YARN-731) | RPCUtil.unwrapAndThrowException should unwrap remote RuntimeExceptions |  Major | . | Siddharth Seth | Zhijie Shen |
| [YARN-727](https://issues.apache.org/jira/browse/YARN-727) | ClientRMProtocol.getAllApplications should accept ApplicationType as a parameter |  Blocker | . | Siddharth Seth | Xuan Gong |
| [YARN-719](https://issues.apache.org/jira/browse/YARN-719) | Move RMIdentifier from Container to ContainerTokenIdentifier |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-717](https://issues.apache.org/jira/browse/YARN-717) | Copy BuilderUtil methods into token-related records |  Major | . | Jian He | Jian He |
| [YARN-714](https://issues.apache.org/jira/browse/YARN-714) | AMRM protocol changes for sending NMToken list |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-711](https://issues.apache.org/jira/browse/YARN-711) | Copy BuilderUtil methods into individual records |  Major | . | Vinod Kumar Vavilapalli | Jian He |
| [YARN-695](https://issues.apache.org/jira/browse/YARN-695) | masterContainer and status are in ApplicationReportProto but not in ApplicationReport |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-693](https://issues.apache.org/jira/browse/YARN-693) | Sending NMToken to AM on allocate call |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-692](https://issues.apache.org/jira/browse/YARN-692) | Creating NMToken master key on RM and sharing it with NM as a part of RM-NM heartbeat. |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-686](https://issues.apache.org/jira/browse/YARN-686) | Flatten NodeReport |  Major | api | Sandy Ryza | Sandy Ryza |
| [YARN-663](https://issues.apache.org/jira/browse/YARN-663) | Change ResourceTracker API and LocalizationProtocol API to throw YarnRemoteException and IOException |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-660](https://issues.apache.org/jira/browse/YARN-660) | Improve AMRMClient with matching requests |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-651](https://issues.apache.org/jira/browse/YARN-651) | Change ContainerManagerPBClientImpl and RMAdminProtocolPBClientImpl to throw IOException and YarnRemoteException |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-638](https://issues.apache.org/jira/browse/YARN-638) | Restore RMDelegationTokens after RM Restart |  Major | resourcemanager | Jian He | Jian He |
| [YARN-634](https://issues.apache.org/jira/browse/YARN-634) | Make YarnRemoteException not backed by PB and introduce a SerializedException |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-628](https://issues.apache.org/jira/browse/YARN-628) | Fix YarnException unwrapping |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-625](https://issues.apache.org/jira/browse/YARN-625) | Move unwrapAndThrowException from YarnRemoteExceptionPBImpl to RPCUtil |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-617](https://issues.apache.org/jira/browse/YARN-617) | In unsercure mode, AM can fake resource requirements |  Minor | . | Vinod Kumar Vavilapalli | Omkar Vinit Joshi |
| [YARN-613](https://issues.apache.org/jira/browse/YARN-613) | Create NM proxy per NM instead of per container |  Major | . | Bikas Saha | Omkar Vinit Joshi |
| [YARN-595](https://issues.apache.org/jira/browse/YARN-595) | Refactor fair scheduler to use common Resources |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-591](https://issues.apache.org/jira/browse/YARN-591) | RM recovery related records do not belong to the API |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-583](https://issues.apache.org/jira/browse/YARN-583) | Application cache files should be localized under local-dir/usercache/userid/appcache/appid/filecache |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-582](https://issues.apache.org/jira/browse/YARN-582) | Restore appToken and clientToken for app attempt after RM restart |  Major | resourcemanager | Bikas Saha | Jian He |
| [YARN-581](https://issues.apache.org/jira/browse/YARN-581) | Test and verify that app delegation tokens are added to tokenRenewer after RM restart |  Major | resourcemanager | Bikas Saha | Jian He |
| [YARN-578](https://issues.apache.org/jira/browse/YARN-578) | NodeManager should use SecureIOUtils for serving and aggregating logs |  Major | nodemanager | Vinod Kumar Vavilapalli | Omkar Vinit Joshi |
| [YARN-577](https://issues.apache.org/jira/browse/YARN-577) | ApplicationReport does not provide progress value of application |  Major | . | Hitesh Shah | Hitesh Shah |
| [YARN-569](https://issues.apache.org/jira/browse/YARN-569) | CapacityScheduler: support for preemption (using a capacity monitor) |  Major | capacityscheduler | Carlo Curino | Carlo Curino |
| [YARN-568](https://issues.apache.org/jira/browse/YARN-568) | FairScheduler: support for work-preserving preemption |  Major | scheduler | Carlo Curino | Carlo Curino |
| [YARN-567](https://issues.apache.org/jira/browse/YARN-567) | RM changes to support preemption for FairScheduler and CapacityScheduler |  Major | resourcemanager | Carlo Curino | Carlo Curino |
| [YARN-563](https://issues.apache.org/jira/browse/YARN-563) | Add application type to ApplicationReport |  Major | . | Thomas Weise | Mayank Bansal |
| [YARN-562](https://issues.apache.org/jira/browse/YARN-562) | NM should reject containers allocated by previous RM |  Major | resourcemanager | Jian He | Jian He |
| [YARN-549](https://issues.apache.org/jira/browse/YARN-549) | YarnClient.submitApplication should wait for application to be accepted by the RM |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-548](https://issues.apache.org/jira/browse/YARN-548) | Add tests for YarnUncaughtExceptionHandler |  Major | . | Vadim Bondarev | Vadim Bondarev |
| [YARN-547](https://issues.apache.org/jira/browse/YARN-547) | Race condition in Public / Private Localizer may result into resource getting downloaded again |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-539](https://issues.apache.org/jira/browse/YARN-539) | LocalizedResources are leaked in memory in case resource localization fails |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-534](https://issues.apache.org/jira/browse/YARN-534) | AM max attempts is not checked when RM restart and try to recover attempts |  Major | resourcemanager | Jian He | Jian He |
| [YARN-523](https://issues.apache.org/jira/browse/YARN-523) | Container localization failures aren't reported from NM to RM |  Major | . | Vinod Kumar Vavilapalli | Jian He |
| [YARN-521](https://issues.apache.org/jira/browse/YARN-521) | Augment AM - RM client module to be able to request containers only at specific locations |  Major | api | Sandy Ryza | Sandy Ryza |
| [YARN-514](https://issues.apache.org/jira/browse/YARN-514) | Delayed store operations should not result in RM unavailability for app submission |  Major | resourcemanager | Bikas Saha | Zhijie Shen |
| [YARN-513](https://issues.apache.org/jira/browse/YARN-513) | Create common proxy client for communicating with RM |  Major | resourcemanager | Bikas Saha | Jian He |
| [YARN-486](https://issues.apache.org/jira/browse/YARN-486) | Change startContainer NM API to accept Container as a parameter and make ContainerLaunchContext user land |  Major | . | Bikas Saha | Xuan Gong |
| [YARN-482](https://issues.apache.org/jira/browse/YARN-482) | FS: Extend SchedulingMode to intermediate queues |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-475](https://issues.apache.org/jira/browse/YARN-475) | Remove ApplicationConstants.AM\_APP\_ATTEMPT\_ID\_ENV as it is no longer set in an AM's environment |  Major | . | Hitesh Shah | Hitesh Shah |
| [YARN-469](https://issues.apache.org/jira/browse/YARN-469) | Make scheduling mode in FS pluggable |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-468](https://issues.apache.org/jira/browse/YARN-468) | coverage fix for org.apache.hadoop.yarn.server.webproxy.amfilter |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [YARN-467](https://issues.apache.org/jira/browse/YARN-467) | Jobs fail during resource localization when public distributed-cache hits unix directory limits |  Major | nodemanager | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-450](https://issues.apache.org/jira/browse/YARN-450) | Define value for * in the scheduling protocol |  Major | . | Bikas Saha | Zhijie Shen |
| [YARN-444](https://issues.apache.org/jira/browse/YARN-444) | Move special container exit codes from YarnConfiguration to API |  Major | api, applications/distributed-shell | Sandy Ryza | Sandy Ryza |
| [YARN-441](https://issues.apache.org/jira/browse/YARN-441) | Clean up unused collection methods in various APIs |  Major | . | Siddharth Seth | Xuan Gong |
| [YARN-422](https://issues.apache.org/jira/browse/YARN-422) | Add NM client library |  Major | . | Bikas Saha | Zhijie Shen |
| [YARN-417](https://issues.apache.org/jira/browse/YARN-417) | Create AMRMClient wrapper that provides asynchronous callbacks |  Major | api, applications | Sandy Ryza | Sandy Ryza |
| [YARN-398](https://issues.apache.org/jira/browse/YARN-398) | Enhance CS to allow for white-list of resources |  Major | . | Arun C Murthy | Arun C Murthy |
| [YARN-392](https://issues.apache.org/jira/browse/YARN-392) | Make it possible to specify hard locality constraints in resource requests |  Major | resourcemanager | Bikas Saha | Sandy Ryza |
| [YARN-378](https://issues.apache.org/jira/browse/YARN-378) | ApplicationMaster retry times should be set by Client |  Major | client, resourcemanager | xieguiming | Zhijie Shen |
| [YARN-369](https://issues.apache.org/jira/browse/YARN-369) | Handle ( or throw a proper error when receiving) status updates from application masters that have not registered |  Major | resourcemanager | Hitesh Shah | Mayank Bansal |
| [YARN-365](https://issues.apache.org/jira/browse/YARN-365) | Each NM heartbeat should not generate an event for the Scheduler |  Major | resourcemanager, scheduler | Siddharth Seth | Xuan Gong |
| [YARN-309](https://issues.apache.org/jira/browse/YARN-309) | Make RM provide heartbeat interval to NM |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-295](https://issues.apache.org/jira/browse/YARN-295) | Resource Manager throws InvalidStateTransitonException: Invalid event: CONTAINER\_FINISHED at ALLOCATED for RMAppAttemptImpl |  Major | resourcemanager | Devaraj K | Mayank Bansal |
| [YARN-200](https://issues.apache.org/jira/browse/YARN-200) | yarn log does not output all needed information, and is in a binary format |  Major | . | Robert Joseph Evans | Ravi Prakash |
| [YARN-125](https://issues.apache.org/jira/browse/YARN-125) | Make Yarn Client service shutdown operations robust |  Minor | . | Steve Loughran | Steve Loughran |
| [YARN-124](https://issues.apache.org/jira/browse/YARN-124) | Make Yarn Node Manager services robust against shutdown |  Minor | . | Steve Loughran | Steve Loughran |
| [YARN-123](https://issues.apache.org/jira/browse/YARN-123) | Make yarn Resource Manager services robust against shutdown |  Minor | . | Steve Loughran | Steve Loughran |
| [YARN-112](https://issues.apache.org/jira/browse/YARN-112) | Race in localization can cause containers to fail |  Major | nodemanager | Jason Lowe | Omkar Vinit Joshi |
| [YARN-99](https://issues.apache.org/jira/browse/YARN-99) | Jobs fail during resource localization when private distributed-cache hits unix directory limits |  Major | nodemanager | Devaraj K | Omkar Vinit Joshi |
| [YARN-62](https://issues.apache.org/jira/browse/YARN-62) | AM should not be able to abuse container tokens for repetitive container launches |  Major | . | Vinod Kumar Vavilapalli | Omkar Vinit Joshi |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-927](https://issues.apache.org/jira/browse/YARN-927) | Change ContainerRequest to not have more than 1 container count and remove StoreContainerRequest |  Major | . | Bikas Saha | Bikas Saha |
| [YARN-708](https://issues.apache.org/jira/browse/YARN-708) | Move RecordFactory classes to hadoop-yarn-api, miscellaneous fixes to the interfaces |  Major | . | Siddharth Seth | Siddharth Seth |
| [YARN-142](https://issues.apache.org/jira/browse/YARN-142) | [Umbrella] Cleanup YARN APIs w.r.t exceptions |  Blocker | . | Siddharth Seth |  |


