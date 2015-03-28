# Hadoop YARN 2.1.0-beta Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.


---

* [YARN-1056](https://issues.apache.org/jira/browse/YARN-1056) | *Trivial* | **Fix configs yarn.resourcemanager.resourcemanager.connect.{max.wait.secs\|retry\_interval.secs}**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-926](https://issues.apache.org/jira/browse/YARN-926) | *Blocker* | **ContainerManagerProtcol APIs should take in requests for multiple containers**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-918](https://issues.apache.org/jira/browse/YARN-918) | *Blocker* | **ApplicationMasterProtocol doesn't need ApplicationAttemptId in the payload after YARN-701**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-869](https://issues.apache.org/jira/browse/YARN-869) | *Blocker* | **ResourceManagerAdministrationProtocol should neither be public(yet) nor in yarn.api**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-851](https://issues.apache.org/jira/browse/YARN-851) | *Major* | **Share NMTokens using NMTokenCache (api-based) instead of memory based approach which is used currently.**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-841](https://issues.apache.org/jira/browse/YARN-841) | *Major* | **Annotate and document AuxService APIs**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-840](https://issues.apache.org/jira/browse/YARN-840) | *Major* | **Move ProtoUtils to  yarn.api.records.pb.impl**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-837](https://issues.apache.org/jira/browse/YARN-837) | *Major* | **ClusterInfo.java doesn't seem to belong to org.apache.hadoop.yarn**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-834](https://issues.apache.org/jira/browse/YARN-834) | *Blocker* | **Review/fix annotations for yarn-client module and clearly differentiate *Async apis**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-831](https://issues.apache.org/jira/browse/YARN-831) | *Blocker* | **Remove resource min from GetNewApplicationResponse**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-829](https://issues.apache.org/jira/browse/YARN-829) | *Major* | **Rename RMTokenSelector to be RMDelegationTokenSelector**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-828](https://issues.apache.org/jira/browse/YARN-828) | *Major* | **Remove YarnVersionAnnotation**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-826](https://issues.apache.org/jira/browse/YARN-826) | *Major* | **Move Clock/SystemClock to util package**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-824](https://issues.apache.org/jira/browse/YARN-824) | *Major* | **Add  static factory to yarn client lib interface and change it to abstract class**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-823](https://issues.apache.org/jira/browse/YARN-823) | *Major* | **Move RMAdmin from yarn.client to yarn.client.cli and rename as RMAdminCLI**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-822](https://issues.apache.org/jira/browse/YARN-822) | *Major* | **Rename ApplicationToken to AMRMToken**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-821](https://issues.apache.org/jira/browse/YARN-821) | *Major* | **Rename FinishApplicationMasterRequest.setFinishApplicationStatus to setFinalApplicationStatus to be consistent with getter**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-806](https://issues.apache.org/jira/browse/YARN-806) | *Major* | **Move ContainerExitStatus from yarn.api to yarn.api.records**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-792](https://issues.apache.org/jira/browse/YARN-792) | *Major* | **Move NodeHealthStatus from yarn.api.record to yarn.server.api.record**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-791](https://issues.apache.org/jira/browse/YARN-791) | *Blocker* | **Ensure that RM RPC APIs that return nodes are consistent with /nodes REST API**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-787](https://issues.apache.org/jira/browse/YARN-787) | *Blocker* | **Remove resource min from Yarn client API**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-777](https://issues.apache.org/jira/browse/YARN-777) | *Major* | **Remove unreferenced objects from proto**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-756](https://issues.apache.org/jira/browse/YARN-756) | *Major* | **Move PreemptionContainer/PremptionContract/PreemptionMessage/StrictPreemptionContract/PreemptionResourceRequest to api.records**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-755](https://issues.apache.org/jira/browse/YARN-755) | *Major* | **Rename AllocateResponse.reboot to AllocateResponse.resync**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-753](https://issues.apache.org/jira/browse/YARN-753) | *Major* | **Add individual factory method for api protocol records**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-749](https://issues.apache.org/jira/browse/YARN-749) | *Major* | **Rename ResourceRequest (get,set)HostName to (get,set)ResourceName**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-748](https://issues.apache.org/jira/browse/YARN-748) | *Major* | **Move BuilderUtils from yarn-common to yarn-server-common**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-746](https://issues.apache.org/jira/browse/YARN-746) | *Major* | **rename Service.register() and Service.unregister() to registerServiceListener() & unregisterServiceListener() respectively**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-735](https://issues.apache.org/jira/browse/YARN-735) | *Major* | **Make ApplicationAttemptID, ContainerID, NodeID immutable**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-724](https://issues.apache.org/jira/browse/YARN-724) | *Major* | **Move ProtoBase from api.records to api.records.impl.pb**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-720](https://issues.apache.org/jira/browse/YARN-720) | *Major* | **container-log4j.properties should not refer to mapreduce properties**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-716](https://issues.apache.org/jira/browse/YARN-716) | *Major* | **Make ApplicationID immutable**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-701](https://issues.apache.org/jira/browse/YARN-701) | *Blocker* | **ApplicationTokens should be used irrespective of kerberos**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-694](https://issues.apache.org/jira/browse/YARN-694) | *Major* | **Start using NMTokens to authenticate all communication with NM**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-684](https://issues.apache.org/jira/browse/YARN-684) | *Major* | **ContainerManager.startContainer needs to only have ContainerTokenIdentifier instead of the whole Container**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-642](https://issues.apache.org/jira/browse/YARN-642) | *Major* | **Fix up /nodes REST API to have 1 param and be consistent with the Java API**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-635](https://issues.apache.org/jira/browse/YARN-635) | *Major* | **Rename YarnRemoteException to YarnException**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-633](https://issues.apache.org/jira/browse/YARN-633) | *Major* | **Change RMAdminProtocol api to throw IOException and YarnRemoteException**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-632](https://issues.apache.org/jira/browse/YARN-632) | *Major* | **Change ContainerManager api to throw IOException and YarnRemoteException**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-631](https://issues.apache.org/jira/browse/YARN-631) | *Major* | **Change ClientRMProtocol api to throw IOException and YarnRemoteException**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-630](https://issues.apache.org/jira/browse/YARN-630) | *Major* | **Change AMRMProtocol api to throw IOException and YarnRemoteException**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-629](https://issues.apache.org/jira/browse/YARN-629) | *Major* | **Make YarnRemoteException not be rooted at IOException**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-615](https://issues.apache.org/jira/browse/YARN-615) | *Major* | **ContainerLaunchContext.containerTokens should simply be called tokens**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-610](https://issues.apache.org/jira/browse/YARN-610) | *Blocker* | **ClientToken (ClientToAMToken) should not be set in the environment**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-579](https://issues.apache.org/jira/browse/YARN-579) | *Major* | **Make ApplicationToken part of Container's token list to help RM-restart**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-571](https://issues.apache.org/jira/browse/YARN-571) | *Major* | **User should not be part of ContainerLaunchContext**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-561](https://issues.apache.org/jira/browse/YARN-561) | *Major* | **Nodemanager should set some key information into the environment of every container that it launches.**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-553](https://issues.apache.org/jira/browse/YARN-553) | *Minor* | **Have YarnClient generate a directly usable ApplicationSubmissionContext**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-536](https://issues.apache.org/jira/browse/YARN-536) | *Major* | **Remove ContainerStatus, ContainerState from Container api interface as they will not be called by the container object**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-530](https://issues.apache.org/jira/browse/YARN-530) | *Major* | **Define Service model strictly, implement AbstractService for robust subclassing, migrate yarn-common services**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-440](https://issues.apache.org/jira/browse/YARN-440) | *Major* | **Flatten RegisterNodeManagerResponse**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-439](https://issues.apache.org/jira/browse/YARN-439) | *Major* | **Flatten NodeHeartbeatResponse**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-396](https://issues.apache.org/jira/browse/YARN-396) | *Major* | **Rationalize AllocateResponse in RM scheduler API**

**WARNING: No release note provided for this incompatible change.**


---

* [YARN-387](https://issues.apache.org/jira/browse/YARN-387) | *Blocker* | **Fix inconsistent protocol naming**

**WARNING: No release note provided for this incompatible change.**



