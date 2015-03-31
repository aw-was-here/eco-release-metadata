# Hadoop Changelog

## Release 2.1.1-beta - 2013-09-16

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1170](https://issues.apache.org/jira/browse/YARN-1170) | yarn proto definitions should specify package as 'hadoop.yarn' |  Blocker | . | Arun C Murthy | Binglin Chang |
| [YARN-707](https://issues.apache.org/jira/browse/YARN-707) | Add user info in the YARN ClientToken |  Blocker | . | Bikas Saha | Jason Lowe |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1137](https://issues.apache.org/jira/browse/YARN-1137) | Add support whitelist for system users to Yarn container-executor.c |  Major | nodemanager | Alejandro Abdelnur | Roman Shaposhnik |
| [YARN-1117](https://issues.apache.org/jira/browse/YARN-1117) | Improve help message for $ yarn applications and $yarn node |  Major | client | Tassapol Athiapinya | Xuan Gong |
| [YARN-1081](https://issues.apache.org/jira/browse/YARN-1081) | Minor improvement to output header for $ yarn node -list |  Minor | client | Tassapol Athiapinya | Akira AJISAKA |
| [YARN-1080](https://issues.apache.org/jira/browse/YARN-1080) | Improve help message for $ yarn logs |  Major | client | Tassapol Athiapinya | Xuan Gong |
| [YARN-1074](https://issues.apache.org/jira/browse/YARN-1074) | Clean up YARN CLI app list to show only running apps. |  Major | client | Tassapol Athiapinya | Xuan Gong |
| [YARN-910](https://issues.apache.org/jira/browse/YARN-910) | Allow auxiliary services to listen for container starts and completions |  Major | nodemanager | Sandy Ryza | Alejandro Abdelnur |
| [YARN-758](https://issues.apache.org/jira/browse/YARN-758) | Augment MockNM to use multiple cores |  Minor | . | Bikas Saha | Karthik Kambatla |
| [YARN-696](https://issues.apache.org/jira/browse/YARN-696) | Enable multiple states to to be specified in Resource Manager apps REST call |  Major | resourcemanager | Trevor Lorimer | Trevor Lorimer |
| [YARN-589](https://issues.apache.org/jira/browse/YARN-589) | Expose a REST API for monitoring the fair scheduler |  Major | scheduler | Sandy Ryza | Sandy Ryza |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1194](https://issues.apache.org/jira/browse/YARN-1194) | TestContainerLogsPage fails with native builds |  Minor | nodemanager | Roman Shaposhnik | Roman Shaposhnik |
| [YARN-1189](https://issues.apache.org/jira/browse/YARN-1189) | NMTokenSecretManagerInNM is not being told when applications have finished |  Blocker | . | Jason Lowe | Omkar Vinit Joshi |
| [YARN-1176](https://issues.apache.org/jira/browse/YARN-1176) | RM web services ClusterMetricsInfo total nodes doesn't include unhealthy nodes |  Critical | resourcemanager | Thomas Graves | Jonathan Eagles |
| [YARN-1152](https://issues.apache.org/jira/browse/YARN-1152) | Invalid key to HMAC computation error when getting application report for completed app attempt |  Blocker | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-1144](https://issues.apache.org/jira/browse/YARN-1144) | Unmanaged AMs registering a tracking URI should not be proxy-fied |  Critical | resourcemanager | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-1124](https://issues.apache.org/jira/browse/YARN-1124) | By default yarn application -list should display all the applications in a state other than FINISHED / FAILED |  Blocker | . | Omkar Vinit Joshi | Xuan Gong |
| [YARN-1120](https://issues.apache.org/jira/browse/YARN-1120) | Make ApplicationConstants.Environment.USER definition OS neutral |  Minor | . | Chuan Liu | Chuan Liu |
| [YARN-1107](https://issues.apache.org/jira/browse/YARN-1107) | Job submitted with Delegation token in secured environment causes RM to fail during RM restart |  Blocker | resourcemanager | Arpit Gupta | Omkar Vinit Joshi |
| [YARN-1101](https://issues.apache.org/jira/browse/YARN-1101) | Active nodes can be decremented below 0 |  Major | resourcemanager | Robert Parker | Robert Parker |
| [YARN-1094](https://issues.apache.org/jira/browse/YARN-1094) | RM restart throws Null pointer Exception in Secure Env |  Blocker | . | Yesha Vora | Vinod Kumar Vavilapalli |
| [YARN-1093](https://issues.apache.org/jira/browse/YARN-1093) | Corrections to Fair Scheduler documentation |  Major | documentation | Wing Yew Poon |  |
| [YARN-1083](https://issues.apache.org/jira/browse/YARN-1083) | ResourceManager should fail when yarn.nm.liveness-monitor.expiry-interval-ms is set less than heartbeat interval |  Major | resourcemanager | Yesha Vora | Zhijie Shen |
| [YARN-1082](https://issues.apache.org/jira/browse/YARN-1082) | Secure RM with recovery enabled and rm state store on hdfs fails with gss exception |  Blocker | resourcemanager | Arpit Gupta | Vinod Kumar Vavilapalli |
| [YARN-1078](https://issues.apache.org/jira/browse/YARN-1078) | TestNodeManagerResync, TestNodeManagerShutdown, and TestNodeStatusUpdater fail on Windows |  Minor | . | Chuan Liu | Chuan Liu |
| [YARN-1077](https://issues.apache.org/jira/browse/YARN-1077) | TestContainerLaunch fails on Windows |  Minor | . | Chuan Liu | Chuan Liu |
| [YARN-1025](https://issues.apache.org/jira/browse/YARN-1025) | ResourceManager and NodeManager do not load native libraries on Windows. |  Major | nodemanager, resourcemanager | Chris Nauroth | Chris Nauroth |
| [YARN-1008](https://issues.apache.org/jira/browse/YARN-1008) | MiniYARNCluster with multiple nodemanagers, all nodes have same key for allocations |  Major | nodemanager | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-1006](https://issues.apache.org/jira/browse/YARN-1006) | Nodes list web page on the RM web UI is broken |  Major | . | Jian He | Xuan Gong |
| [YARN-994](https://issues.apache.org/jira/browse/YARN-994) | HeartBeat thread in AMRMClientAsync does not handle runtime exception correctly |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-981](https://issues.apache.org/jira/browse/YARN-981) | YARN/MR2/Job-history /logs link does not have correct content |  Major | . | Xuan Gong | Jian He |
| [YARN-966](https://issues.apache.org/jira/browse/YARN-966) | The thread of ContainerLaunch#call will fail without any signal if getLocalizedResources() is called when the container is not at LOCALIZED |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-957](https://issues.apache.org/jira/browse/YARN-957) | Capacity Scheduler tries to reserve the memory more than what node manager reports. |  Blocker | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-948](https://issues.apache.org/jira/browse/YARN-948) | RM should validate the release container list before actually releasing them |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-942](https://issues.apache.org/jira/browse/YARN-942) | In Fair Scheduler documentation, inconsistency on which properties have prefix |  Major | scheduler | Sandy Ryza | Akira AJISAKA |
| [YARN-903](https://issues.apache.org/jira/browse/YARN-903) | DistributedShell throwing Errors in logs after successfull completion |  Major | applications/distributed-shell | Abhishek Kapoor | Omkar Vinit Joshi |
| [YARN-881](https://issues.apache.org/jira/browse/YARN-881) | Priority#compareTo method seems to be wrong. |  Major | . | Jian He | Jian He |
| [YARN-643](https://issues.apache.org/jira/browse/YARN-643) | WHY appToken is removed both in BaseFinalTransition and AMUnregisteredTransition AND clientToken is removed in FinalTransition and not BaseFinalTransition |  Major | . | Jian He | Xuan Gong |
| [YARN-602](https://issues.apache.org/jira/browse/YARN-602) | NodeManager should mandatorily set some Environment variables into every containers that it launches |  Major | . | Xuan Gong | Kenji Kikushima |
| [YARN-337](https://issues.apache.org/jira/browse/YARN-337) | RM handles killed application tracking URL poorly |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-107](https://issues.apache.org/jira/browse/YARN-107) | ClientRMService.forceKillApplication() should handle the non-RUNNING applications properly |  Major | resourcemanager | Devaraj K | Xuan Gong |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1184](https://issues.apache.org/jira/browse/YARN-1184) | ClassCastException is thrown during preemption When a huge job is submitted to a queue B whose resources is used by a job in queueA |  Major | capacityscheduler, resourcemanager | J.Andreina | Chris Douglas |
| [YARN-1116](https://issues.apache.org/jira/browse/YARN-1116) | Populate AMRMTokens back to AMRMTokenSecretManager after RM restarts |  Major | resourcemanager | Jian He | Jian He |
| [YARN-1085](https://issues.apache.org/jira/browse/YARN-1085) | Yarn and MRv2 should do HTTP client authentication in kerberos setup. |  Blocker | nodemanager, resourcemanager | Jaimin D Jetly | Omkar Vinit Joshi |
| [YARN-1049](https://issues.apache.org/jira/browse/YARN-1049) | ContainerExistStatus should define a status for preempted containers |  Blocker | api | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-906](https://issues.apache.org/jira/browse/YARN-906) | Cancelling ContainerLaunch#call at KILLING causes that the container cannot be completed |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-771](https://issues.apache.org/jira/browse/YARN-771) | AMRMClient  support for resource blacklisting |  Major | . | Bikas Saha | Junping Du |
| [YARN-573](https://issues.apache.org/jira/browse/YARN-573) | Shared data structures in Public Localizer and Private Localizer are not Thread safe. |  Critical | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-540](https://issues.apache.org/jira/browse/YARN-540) | Race condition causing RM to potentially relaunch already unregistered AMs on RM restart |  Major | resourcemanager | Jian He | Jian He |
| [YARN-502](https://issues.apache.org/jira/browse/YARN-502) | RM crash with NPE on NODE\_REMOVED event with FairScheduler |  Major | . | Lohit Vijayarenu | Mayank Bansal |
| [YARN-292](https://issues.apache.org/jira/browse/YARN-292) | ResourceManager throws ArrayIndexOutOfBoundsException while handling CONTAINER\_ALLOCATED for application attempt |  Major | resourcemanager | Devaraj K | Zhijie Shen |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1034](https://issues.apache.org/jira/browse/YARN-1034) | Remove "experimental" in the Fair Scheduler documentation |  Trivial | documentation, scheduler | Sandy Ryza | Karthik Kambatla |
| [YARN-1001](https://issues.apache.org/jira/browse/YARN-1001) | YARN should provide per application-type and state statistics |  Blocker | api | Srimanth Gunturi | Zhijie Shen |


