# Hadoop YARN 2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [YARN-2335](https://issues.apache.org/jira/browse/YARN-2335) | *Minor* | **Annotate all hadoop-sls APIs as @Private**
---

* [YARN-2319](https://issues.apache.org/jira/browse/YARN-2319) | *Major* | **Fix MiniKdc not close in TestRMWebServicesDelegationTokens.java**
---

* [YARN-2300](https://issues.apache.org/jira/browse/YARN-2300) | *Major* | **Document better sample requests for RM web services for submitting apps**
---

* [YARN-2270](https://issues.apache.org/jira/browse/YARN-2270) | *Minor* | **TestFSDownload#testDownloadPublicWithStatCache fails in trunk**
---

* [YARN-2250](https://issues.apache.org/jira/browse/YARN-2250) | *Major* | **FairScheduler.findLowestCommonAncestorQueue returns null when queues not identical**
---

* [YARN-2247](https://issues.apache.org/jira/browse/YARN-2247) | *Blocker* | **Allow RM web services users to authenticate using delegation tokens**
---

* [YARN-2241](https://issues.apache.org/jira/browse/YARN-2241) | *Minor* | **ZKRMStateStore: On startup, show nicer messages if znodes already exist**
---

* [YARN-2233](https://issues.apache.org/jira/browse/YARN-2233) | *Blocker* | **Implement web services to create, renew and cancel delegation tokens**
---

* [YARN-2232](https://issues.apache.org/jira/browse/YARN-2232) | *Major* | **ClientRMService doesn't allow delegation token owner to cancel their own token in secure mode**
---

* [YARN-2224](https://issues.apache.org/jira/browse/YARN-2224) | *Trivial* | **Explicitly enable vmem check in TestContainersMonitor#testContainerKillOnMemoryOverflow**
---

* [YARN-2216](https://issues.apache.org/jira/browse/YARN-2216) | *Minor* | **TestRMApplicationHistoryWriter sometimes fails in trunk**
---

* [YARN-2204](https://issues.apache.org/jira/browse/YARN-2204) | *Trivial* | **TestAMRestart#testAMRestartWithExistingContainers assumes CapacityScheduler**
---

* [YARN-2201](https://issues.apache.org/jira/browse/YARN-2201) | *Major* | **TestRMWebServicesAppsModification dependent on yarn-default.xml**
---

* [YARN-2195](https://issues.apache.org/jira/browse/YARN-2195) | *Trivial* | **Clean a piece of code in ResourceRequest**
---

* [YARN-2192](https://issues.apache.org/jira/browse/YARN-2192) | *Major* | **TestRMHA fails when run with a mix of Schedulers**
---

* [YARN-2191](https://issues.apache.org/jira/browse/YARN-2191) | *Major* | **Add a test to make sure NM will do application cleanup even if RM restarting happens before application completed**
---

* [YARN-2187](https://issues.apache.org/jira/browse/YARN-2187) | *Major* | **FairScheduler: Disable max-AM-share check by default**
---

* [YARN-2171](https://issues.apache.org/jira/browse/YARN-2171) | *Critical* | **AMs block on the CapacityScheduler lock during allocate()**
---

* [YARN-2167](https://issues.apache.org/jira/browse/YARN-2167) | *Major* | **LeveldbIterator should get closed in NMLeveldbStateStoreService#loadLocalizationState() within finally block**
---

* [YARN-2163](https://issues.apache.org/jira/browse/YARN-2163) | *Minor* | **WebUI: Order of AppId in apps table should be consistent with ApplicationId.compareTo().**
---

* [YARN-2159](https://issues.apache.org/jira/browse/YARN-2159) | *Trivial* | **Better logging in SchedulerNode#allocateContainer**
---

* [YARN-2155](https://issues.apache.org/jira/browse/YARN-2155) | *Major* | **FairScheduler: Incorrect threshold check for preemption**
---

* [YARN-2152](https://issues.apache.org/jira/browse/YARN-2152) | *Major* | **Recover missing container information**
---

* [YARN-2148](https://issues.apache.org/jira/browse/YARN-2148) | *Major* | **TestNMClient failed due more exit code values added and passed to AM**
---

* [YARN-2132](https://issues.apache.org/jira/browse/YARN-2132) | *Major* | **ZKRMStateStore.ZKAction#runWithRetries doesn't log the exception it encounters**
---

* [YARN-2128](https://issues.apache.org/jira/browse/YARN-2128) | *Major* | **FairScheduler: Incorrect calculation of amResource usage**
---

* [YARN-2125](https://issues.apache.org/jira/browse/YARN-2125) | *Minor* | **ProportionalCapacityPreemptionPolicy should only log CSV when debug enabled**
---

* [YARN-2124](https://issues.apache.org/jira/browse/YARN-2124) | *Critical* | **ProportionalCapacityPreemptionPolicy cannot work because it's initialized before scheduler initialized**
---

* [YARN-2122](https://issues.apache.org/jira/browse/YARN-2122) | *Major* | **In AllocationFileLoaderService, the reloadThread should be created in init() and started in start()**
---

* [YARN-2121](https://issues.apache.org/jira/browse/YARN-2121) | *Major* | **TimelineAuthenticator#hasDelegationToken may throw NPE**
---

* [YARN-2119](https://issues.apache.org/jira/browse/YARN-2119) | *Major* | **DEFAULT\_PROXY\_ADDRESS should use DEFAULT\_PROXY\_PORT**
---

* [YARN-2118](https://issues.apache.org/jira/browse/YARN-2118) | *Major* | **Type mismatch in contains() check of TimelineWebServices#injectOwnerInfo()**
---

* [YARN-2117](https://issues.apache.org/jira/browse/YARN-2117) | *Minor* | **Close of Reader in TimelineAuthenticationFilterInitializer#initFilter() should be enclosed in finally block**
---

* [YARN-2115](https://issues.apache.org/jira/browse/YARN-2115) | *Major* | **Replace RegisterNodeManagerRequest#ContainerStatus with a new NMContainerStatus**
---

* [YARN-2112](https://issues.apache.org/jira/browse/YARN-2112) | *Major* | **Hadoop-client is missing jackson libs due to inappropriate configs in pom.xml**
---

* [YARN-2111](https://issues.apache.org/jira/browse/YARN-2111) | *Major* | **In FairScheduler.attemptScheduling, we don't count containers as assigned if they have 0 memory but non-zero cores**
---

* [YARN-2109](https://issues.apache.org/jira/browse/YARN-2109) | *Major* | **Fix TestRM to work with both schedulers**
---

* [YARN-2107](https://issues.apache.org/jira/browse/YARN-2107) | *Major* | **Refactor timeline classes into server.timeline package**
---

* [YARN-2105](https://issues.apache.org/jira/browse/YARN-2105) | *Major* | **Fix TestFairScheduler after YARN-2012**
---

* [YARN-2104](https://issues.apache.org/jira/browse/YARN-2104) | *Major* | **Scheduler queue filter failed to work because index of queue column changed**
---

* [YARN-2103](https://issues.apache.org/jira/browse/YARN-2103) | *Major* | **Inconsistency between viaProto flag and initial value of SerializedExceptionProto.Builder**
---

* [YARN-2096](https://issues.apache.org/jira/browse/YARN-2096) | *Major* | **Race in TestRMRestart#testQueueMetricsOnRMRestart**
---

* [YARN-2091](https://issues.apache.org/jira/browse/YARN-2091) | *Major* | **Add more values to ContainerExitStatus and pass it from NM to RM and then to app masters**
---

* [YARN-2089](https://issues.apache.org/jira/browse/YARN-2089) | *Major* | **FairScheduler: QueuePlacementPolicy and QueuePlacementRule are missing audience annotations**
---

* [YARN-2075](https://issues.apache.org/jira/browse/YARN-2075) | *Major* | **TestRMAdminCLI consistently fail on trunk and branch-2**
---

* [YARN-2074](https://issues.apache.org/jira/browse/YARN-2074) | *Major* | **Preemption of AM containers shouldn't count towards AM failures**
---

* [YARN-2073](https://issues.apache.org/jira/browse/YARN-2073) | *Critical* | **Fair Scheduler: Add a utilization threshold to prevent preempting resources when cluster is free**
---

* [YARN-2072](https://issues.apache.org/jira/browse/YARN-2072) | *Major* | **RM/NM UIs and webservices are missing vcore information**
---

* [YARN-2071](https://issues.apache.org/jira/browse/YARN-2071) | *Major* | **Enforce more restricted permissions for the directory of Leveldb store**
---

* [YARN-2065](https://issues.apache.org/jira/browse/YARN-2065) | *Major* | **AM cannot create new containers after restart-NM token from previous attempt used**
---

* [YARN-2061](https://issues.apache.org/jira/browse/YARN-2061) | *Minor* | **Revisit logging levels in ZKRMStateStore**
---

* [YARN-2059](https://issues.apache.org/jira/browse/YARN-2059) | *Major* | **Extend access control for admin acls**
---

* [YARN-2054](https://issues.apache.org/jira/browse/YARN-2054) | *Major* | **Better defaults for YARN ZK configs for retries and retry-inteval when HA is enabled**
---

* [YARN-2052](https://issues.apache.org/jira/browse/YARN-2052) | *Major* | **ContainerId creation after work preserving restart is broken**
---

* [YARN-2050](https://issues.apache.org/jira/browse/YARN-2050) | *Major* | **Fix LogCLIHelpers to create the correct FileContext**
---

* [YARN-2049](https://issues.apache.org/jira/browse/YARN-2049) | *Major* | **Delegation token stuff for the timeline sever**
---

* [YARN-2036](https://issues.apache.org/jira/browse/YARN-2036) | *Minor* | **Document yarn.resourcemanager.hostname in ClusterSetup**
---

* [YARN-2030](https://issues.apache.org/jira/browse/YARN-2030) | *Major* | **Use StateMachine to simplify handleStoreEvent() in RMStateStore**
---

* [YARN-2022](https://issues.apache.org/jira/browse/YARN-2022) | *Major* | **Preempting an Application Master container can be kept as least priority when multiple applications are marked for preemption by ProportionalCapacityPreemptionPolicy**
---

* [YARN-2017](https://issues.apache.org/jira/browse/YARN-2017) | *Major* | **Merge some of the common lib code in schedulers**
---

* [YARN-2012](https://issues.apache.org/jira/browse/YARN-2012) | *Major* | **Fair Scheduler: allow default queue placement rule to take an arbitrary queue**
---

* [YARN-2011](https://issues.apache.org/jira/browse/YARN-2011) | *Trivial* | **Fix typo and warning in TestLeafQueue**
---

* [YARN-1987](https://issues.apache.org/jira/browse/YARN-1987) | *Major* | **Wrapper for leveldb DBIterator to aid in handling database exceptions**
---

* [YARN-1982](https://issues.apache.org/jira/browse/YARN-1982) | *Major* | **Rename the daemon name to timelineserver**
---

* [YARN-1981](https://issues.apache.org/jira/browse/YARN-1981) | *Major* | **Nodemanager version is not updated when a node reconnects**
---

* [YARN-1977](https://issues.apache.org/jira/browse/YARN-1977) | *Minor* | **Add tests on getApplicationRequest with filtering start time range**
---

* [YARN-1970](https://issues.apache.org/jira/browse/YARN-1970) | *Minor* | **Prepare YARN codebase for JUnit 4.11.**
---

* [YARN-1940](https://issues.apache.org/jira/browse/YARN-1940) | *Major* | **deleteAsUser() terminates early without deleting more files on error**
---

* [YARN-1938](https://issues.apache.org/jira/browse/YARN-1938) | *Major* | **Kerberos authentication for the timeline server**
---

* [YARN-1937](https://issues.apache.org/jira/browse/YARN-1937) | *Major* | **Add entity-level access control of the timeline data for owners only**
---

* [YARN-1936](https://issues.apache.org/jira/browse/YARN-1936) | *Major* | **Secured timeline client**
---

* [YARN-1923](https://issues.apache.org/jira/browse/YARN-1923) | *Major* | **Make FairScheduler resource ratio calculations terminate faster**
---

* [YARN-1913](https://issues.apache.org/jira/browse/YARN-1913) | *Major* | **With Fair Scheduler, cluster can logjam when all resources are consumed by AMs**
---

* [YARN-1889](https://issues.apache.org/jira/browse/YARN-1889) | *Minor* | **In Fair Scheduler, avoid creating objects on each call to AppSchedulable comparator**
---

* [YARN-1885](https://issues.apache.org/jira/browse/YARN-1885) | *Major* | **RM may not send the app-finished signal after RM restart to some nodes where the application ran before RM restarts**
---

* [YARN-1877](https://issues.apache.org/jira/browse/YARN-1877) | *Critical* | **Document yarn.resourcemanager.zk-auth and its scope**
---

* [YARN-1870](https://issues.apache.org/jira/browse/YARN-1870) | *Minor* | **FileInputStream is not closed in ProcfsBasedProcessTree#constructProcessSMAPInfo()**
---

* [YARN-1868](https://issues.apache.org/jira/browse/YARN-1868) | *Major* | **YARN status web ui does not show correctly in IE 11**
---

* [YARN-1865](https://issues.apache.org/jira/browse/YARN-1865) | *Minor* | **ShellScriptBuilder does not check for some error conditions**
---

* [YARN-1864](https://issues.apache.org/jira/browse/YARN-1864) | *Major* | **Fair Scheduler Dynamic Hierarchical User Queues**
---

* [YARN-1845](https://issues.apache.org/jira/browse/YARN-1845) | *Major* | ** Elapsed time for failed tasks that never started is  wrong**
---

* [YARN-1790](https://issues.apache.org/jira/browse/YARN-1790) | *Major* | **Fair Scheduler UI not showing apps table**
---

* [YARN-1784](https://issues.apache.org/jira/browse/YARN-1784) | *Minor* | **TestContainerAllocation assumes CapacityScheduler**
---

* [YARN-1757](https://issues.apache.org/jira/browse/YARN-1757) | *Major* | **NM Recovery. Auxiliary service support.**
---

* [YARN-1751](https://issues.apache.org/jira/browse/YARN-1751) | *Major* | **Improve MiniYarnCluster for log aggregation testing**
---

* [YARN-1736](https://issues.apache.org/jira/browse/YARN-1736) | *Minor* | **FS: AppSchedulable.assignContainer's priority argument is redundant**
---

* [YARN-1726](https://issues.apache.org/jira/browse/YARN-1726) | *Blocker* | **ResourceSchedulerWrapper broken due to AbstractYarnScheduler**
---

* [YARN-1718](https://issues.apache.org/jira/browse/YARN-1718) | *Major* | **Fix a couple isTerminals in Fair Scheduler queue placement rules**
---

* [YARN-1713](https://issues.apache.org/jira/browse/YARN-1713) | *Blocker* | **Implement getnewapplication and submitapp as part of RM web service**
---

* [YARN-1702](https://issues.apache.org/jira/browse/YARN-1702) | *Major* | **Expose kill app functionality as part of RM web services**
---

* [YARN-1678](https://issues.apache.org/jira/browse/YARN-1678) | *Major* | **Fair scheduler gabs incessantly about reservations**
---

* [YARN-1561](https://issues.apache.org/jira/browse/YARN-1561) | *Minor* | **Fix a generic type warning in FairScheduler**
---

* [YARN-1550](https://issues.apache.org/jira/browse/YARN-1550) | *Critical* | **NPE in FairSchedulerAppsBlock#render**
---

* [YARN-1520](https://issues.apache.org/jira/browse/YARN-1520) | *Major* | **update capacity scheduler docs to include necessary parameters**
---

* [YARN-1479](https://issues.apache.org/jira/browse/YARN-1479) | *Major* | **Invalid NaN values in Hadoop REST API JSON response**
---

* [YARN-1474](https://issues.apache.org/jira/browse/YARN-1474) | *Major* | **Make schedulers services**
---

* [YARN-1429](https://issues.apache.org/jira/browse/YARN-1429) | *Trivial* | ***nix: Allow a way for users to augment classpath of YARN daemons**
---

* [YARN-1424](https://issues.apache.org/jira/browse/YARN-1424) | *Minor* | **RMAppAttemptImpl should return the DummyApplicationResourceUsageReport for all invalid accesses**
---

* [YARN-1408](https://issues.apache.org/jira/browse/YARN-1408) | *Major* | **Preemption caused Invalid State Event: ACQUIRED at KILLED and caused a task timeout for 30mins**
---

* [YARN-1368](https://issues.apache.org/jira/browse/YARN-1368) | *Major* | **Common work to re-populate containers’ state into scheduler**
---

* [YARN-1366](https://issues.apache.org/jira/browse/YARN-1366) | *Major* | **AM should implement Resync with the ApplicationMasterService instead of shutting down**
---

* [YARN-1365](https://issues.apache.org/jira/browse/YARN-1365) | *Major* | **ApplicationMasterService to allow Register of an app that was running before restart**
---

* [YARN-1362](https://issues.apache.org/jira/browse/YARN-1362) | *Major* | **Distinguish between nodemanager shutdown for decommission vs shutdown for restart**
---

* [YARN-1339](https://issues.apache.org/jira/browse/YARN-1339) | *Major* | **Recover DeletionService state upon nodemanager restart**
---

* [YARN-1338](https://issues.apache.org/jira/browse/YARN-1338) | *Major* | **Recover localized resource cache state upon nodemanager restart**
---

* [YARN-1136](https://issues.apache.org/jira/browse/YARN-1136) | *Major* | **Replace junit.framework.Assert with org.junit.Assert**
---

* [YARN-738](https://issues.apache.org/jira/browse/YARN-738) | *Major* | **TestClientRMTokens is failing irregularly while running all yarn tests**
---

* [YARN-614](https://issues.apache.org/jira/browse/YARN-614) | *Major* | **Separate AM failures from hardware failure or YARN error and do not count them to AM retry count**
---

* [YARN-596](https://issues.apache.org/jira/browse/YARN-596) | *Major* | **Use scheduling policies throughout the queue hierarchy to decide which containers to preempt**
---

* [YARN-483](https://issues.apache.org/jira/browse/YARN-483) | *Major* | **Improve documentation on log aggregation in yarn-default.xml**


