# Hadoop Changelog

## Release 2.5.0 - 2014-08-11

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2107](https://issues.apache.org/jira/browse/YARN-2107) | Refactor timeline classes into server.timeline package |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1864](https://issues.apache.org/jira/browse/YARN-1864) | Fair Scheduler Dynamic Hierarchical User Queues |  Major | scheduler | Ashwin Shankar | Ashwin Shankar |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2335](https://issues.apache.org/jira/browse/YARN-2335) | Annotate all hadoop-sls APIs as @Private |  Minor | . | Wei Yan | Wei Yan |
| [YARN-2300](https://issues.apache.org/jira/browse/YARN-2300) | Document better sample requests for RM web services for submitting apps |  Major | documentation | Varun Vasudev | Varun Vasudev |
| [YARN-2195](https://issues.apache.org/jira/browse/YARN-2195) | Clean a piece of code in ResourceRequest |  Trivial | . | Wei Yan | Wei Yan |
| [YARN-2159](https://issues.apache.org/jira/browse/YARN-2159) | Better logging in SchedulerNode#allocateContainer |  Trivial | resourcemanager | Ray Chiang | Ray Chiang |
| [YARN-2089](https://issues.apache.org/jira/browse/YARN-2089) | FairScheduler: QueuePlacementPolicy and QueuePlacementRule are missing audience annotations |  Major | scheduler | Anubhav Dhoot | zhihai xu |
| [YARN-2072](https://issues.apache.org/jira/browse/YARN-2072) | RM/NM UIs and webservices are missing vcore information |  Major | nodemanager, resourcemanager, webapp | Nathan Roberts | Nathan Roberts |
| [YARN-2061](https://issues.apache.org/jira/browse/YARN-2061) | Revisit logging levels in ZKRMStateStore |  Minor | resourcemanager | Karthik Kambatla | Ray Chiang |
| [YARN-2030](https://issues.apache.org/jira/browse/YARN-2030) | Use StateMachine to simplify handleStoreEvent() in RMStateStore |  Major | . | Junping Du | Binglin Chang |
| [YARN-2012](https://issues.apache.org/jira/browse/YARN-2012) | Fair Scheduler: allow default queue placement rule to take an arbitrary queue |  Major | scheduler | Ashwin Shankar | Ashwin Shankar |
| [YARN-1987](https://issues.apache.org/jira/browse/YARN-1987) | Wrapper for leveldb DBIterator to aid in handling database exceptions |  Major | . | Jason Lowe | Jason Lowe |
| [YARN-1923](https://issues.apache.org/jira/browse/YARN-1923) | Make FairScheduler resource ratio calculations terminate faster |  Major | scheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-1889](https://issues.apache.org/jira/browse/YARN-1889) | In Fair Scheduler, avoid creating objects on each call to AppSchedulable comparator |  Minor | scheduler | Hong Zhiguo | Hong Zhiguo |
| [YARN-1870](https://issues.apache.org/jira/browse/YARN-1870) | FileInputStream is not closed in ProcfsBasedProcessTree#constructProcessSMAPInfo() |  Minor | resourcemanager | Ted Yu | Fengdong Yu |
| [YARN-1845](https://issues.apache.org/jira/browse/YARN-1845) |  Elapsed time for failed tasks that never started is  wrong |  Major | . | Rushabh S Shah | Rushabh S Shah |
| [YARN-1751](https://issues.apache.org/jira/browse/YARN-1751) | Improve MiniYarnCluster for log aggregation testing |  Major | nodemanager | Ming Ma | Ming Ma |
| [YARN-1561](https://issues.apache.org/jira/browse/YARN-1561) | Fix a generic type warning in FairScheduler |  Minor | scheduler | Junping Du | Chen He |
| [YARN-1479](https://issues.apache.org/jira/browse/YARN-1479) | Invalid NaN values in Hadoop REST API JSON response |  Major | . | Kendall Thrapp | Chen He |
| [YARN-1424](https://issues.apache.org/jira/browse/YARN-1424) | RMAppAttemptImpl should return the DummyApplicationResourceUsageReport for all invalid accesses |  Minor | resourcemanager | Sandy Ryza | Ray Chiang |
| [YARN-614](https://issues.apache.org/jira/browse/YARN-614) | Separate AM failures from hardware failure or YARN error and do not count them to AM retry count |  Major | resourcemanager | Bikas Saha | Xuan Gong |
| [YARN-483](https://issues.apache.org/jira/browse/YARN-483) | Improve documentation on log aggregation in yarn-default.xml |  Major | documentation | Sandy Ryza | Akira AJISAKA |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2250](https://issues.apache.org/jira/browse/YARN-2250) | FairScheduler.findLowestCommonAncestorQueue returns null when queues not identical |  Major | scheduler | Krisztian Horvath | Krisztian Horvath |
| [YARN-2241](https://issues.apache.org/jira/browse/YARN-2241) | ZKRMStateStore: On startup, show nicer messages if znodes already exist |  Minor | resourcemanager | Robert Kanter | Robert Kanter |
| [YARN-2232](https://issues.apache.org/jira/browse/YARN-2232) | ClientRMService doesn't allow delegation token owner to cancel their own token in secure mode |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2204](https://issues.apache.org/jira/browse/YARN-2204) | TestAMRestart#testAMRestartWithExistingContainers assumes CapacityScheduler |  Trivial | resourcemanager | Robert Kanter | Robert Kanter |
| [YARN-2201](https://issues.apache.org/jira/browse/YARN-2201) | TestRMWebServicesAppsModification dependent on yarn-default.xml |  Major | . | Ray Chiang | Varun Vasudev |
| [YARN-2192](https://issues.apache.org/jira/browse/YARN-2192) | TestRMHA fails when run with a mix of Schedulers |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2191](https://issues.apache.org/jira/browse/YARN-2191) | Add a test to make sure NM will do application cleanup even if RM restarting happens before application completed |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2187](https://issues.apache.org/jira/browse/YARN-2187) | FairScheduler: Disable max-AM-share check by default |  Major | fairscheduler | Robert Kanter | Robert Kanter |
| [YARN-2171](https://issues.apache.org/jira/browse/YARN-2171) | AMs block on the CapacityScheduler lock during allocate() |  Critical | capacityscheduler | Jason Lowe | Jason Lowe |
| [YARN-2167](https://issues.apache.org/jira/browse/YARN-2167) | LeveldbIterator should get closed in NMLeveldbStateStoreService#loadLocalizationState() within finally block |  Major | nodemanager | Junping Du | Junping Du |
| [YARN-2163](https://issues.apache.org/jira/browse/YARN-2163) | WebUI: Order of AppId in apps table should be consistent with ApplicationId.compareTo(). |  Minor | resourcemanager, webapp | Wangda Tan | Wangda Tan |
| [YARN-2155](https://issues.apache.org/jira/browse/YARN-2155) | FairScheduler: Incorrect threshold check for preemption |  Major | . | Wei Yan | Wei Yan |
| [YARN-2148](https://issues.apache.org/jira/browse/YARN-2148) | TestNMClient failed due more exit code values added and passed to AM |  Major | client | Wangda Tan | Wangda Tan |
| [YARN-2132](https://issues.apache.org/jira/browse/YARN-2132) | ZKRMStateStore.ZKAction#runWithRetries doesn't log the exception it encounters |  Major | resourcemanager | Karthik Kambatla | Vamsee Yarlagadda |
| [YARN-2128](https://issues.apache.org/jira/browse/YARN-2128) | FairScheduler: Incorrect calculation of amResource usage |  Major | . | Wei Yan | Wei Yan |
| [YARN-2124](https://issues.apache.org/jira/browse/YARN-2124) | ProportionalCapacityPreemptionPolicy cannot work because it's initialized before scheduler initialized |  Critical | resourcemanager, scheduler | Wangda Tan | Wangda Tan |
| [YARN-2122](https://issues.apache.org/jira/browse/YARN-2122) | In AllocationFileLoaderService, the reloadThread should be created in init() and started in start() |  Major | scheduler | Karthik Kambatla | Robert Kanter |
| [YARN-2119](https://issues.apache.org/jira/browse/YARN-2119) | DEFAULT\_PROXY\_ADDRESS should use DEFAULT\_PROXY\_PORT |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2112](https://issues.apache.org/jira/browse/YARN-2112) | Hadoop-client is missing jackson libs due to inappropriate configs in pom.xml |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2111](https://issues.apache.org/jira/browse/YARN-2111) | In FairScheduler.attemptScheduling, we don't count containers as assigned if they have 0 memory but non-zero cores |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-2109](https://issues.apache.org/jira/browse/YARN-2109) | Fix TestRM to work with both schedulers |  Major | scheduler | Anubhav Dhoot | Karthik Kambatla |
| [YARN-2104](https://issues.apache.org/jira/browse/YARN-2104) | Scheduler queue filter failed to work because index of queue column changed |  Major | resourcemanager, webapp | Wangda Tan | Wangda Tan |
| [YARN-2103](https://issues.apache.org/jira/browse/YARN-2103) | Inconsistency between viaProto flag and initial value of SerializedExceptionProto.Builder |  Major | . | Binglin Chang | Binglin Chang |
| [YARN-2096](https://issues.apache.org/jira/browse/YARN-2096) | Race in TestRMRestart#testQueueMetricsOnRMRestart |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2075](https://issues.apache.org/jira/browse/YARN-2075) | TestRMAdminCLI consistently fail on trunk and branch-2 |  Major | . | Zhijie Shen | Kenji Kikushima |
| [YARN-2073](https://issues.apache.org/jira/browse/YARN-2073) | Fair Scheduler: Add a utilization threshold to prevent preempting resources when cluster is free |  Critical | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-2065](https://issues.apache.org/jira/browse/YARN-2065) | AM cannot create new containers after restart-NM token from previous attempt used |  Major | . | Steve Loughran | Jian He |
| [YARN-2054](https://issues.apache.org/jira/browse/YARN-2054) | Better defaults for YARN ZK configs for retries and retry-inteval when HA is enabled |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-2050](https://issues.apache.org/jira/browse/YARN-2050) | Fix LogCLIHelpers to create the correct FileContext |  Major | . | Ming Ma | Ming Ma |
| [YARN-2036](https://issues.apache.org/jira/browse/YARN-2036) | Document yarn.resourcemanager.hostname in ClusterSetup |  Minor | documentation | Karthik Kambatla | Ray Chiang |
| [YARN-1981](https://issues.apache.org/jira/browse/YARN-1981) | Nodemanager version is not updated when a node reconnects |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-1940](https://issues.apache.org/jira/browse/YARN-1940) | deleteAsUser() terminates early without deleting more files on error |  Major | . | Kihwal Lee | Rushabh S Shah |
| [YARN-1913](https://issues.apache.org/jira/browse/YARN-1913) | With Fair Scheduler, cluster can logjam when all resources are consumed by AMs |  Major | scheduler | bc Wong | Wei Yan |
| [YARN-1885](https://issues.apache.org/jira/browse/YARN-1885) | RM may not send the app-finished signal after RM restart to some nodes where the application ran before RM restarts |  Major | . | Arpit Gupta | Wangda Tan |
| [YARN-1868](https://issues.apache.org/jira/browse/YARN-1868) | YARN status web ui does not show correctly in IE 11 |  Major | webapp | Chuan Liu | Chuan Liu |
| [YARN-1865](https://issues.apache.org/jira/browse/YARN-1865) | ShellScriptBuilder does not check for some error conditions |  Minor | nodemanager | Remus Rusanu | Remus Rusanu |
| [YARN-1790](https://issues.apache.org/jira/browse/YARN-1790) | Fair Scheduler UI not showing apps table |  Major | . | bc Wong | bc Wong |
| [YARN-1784](https://issues.apache.org/jira/browse/YARN-1784) | TestContainerAllocation assumes CapacityScheduler |  Minor | resourcemanager | Karthik Kambatla | Robert Kanter |
| [YARN-1736](https://issues.apache.org/jira/browse/YARN-1736) | FS: AppSchedulable.assignContainer's priority argument is redundant |  Minor | scheduler | Sandy Ryza | Naren Koneru |
| [YARN-1726](https://issues.apache.org/jira/browse/YARN-1726) | ResourceSchedulerWrapper broken due to AbstractYarnScheduler |  Blocker | . | Wei Yan | Wei Yan |
| [YARN-1718](https://issues.apache.org/jira/browse/YARN-1718) | Fix a couple isTerminals in Fair Scheduler queue placement rules |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1678](https://issues.apache.org/jira/browse/YARN-1678) | Fair scheduler gabs incessantly about reservations |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1550](https://issues.apache.org/jira/browse/YARN-1550) | NPE in FairSchedulerAppsBlock#render |  Critical | scheduler | caolong | Anubhav Dhoot |
| [YARN-1520](https://issues.apache.org/jira/browse/YARN-1520) | update capacity scheduler docs to include necessary parameters |  Major | . | Chen He | Chen He |
| [YARN-1429](https://issues.apache.org/jira/browse/YARN-1429) | *nix: Allow a way for users to augment classpath of YARN daemons |  Trivial | client | Sandy Ryza | Jarek Jarcec Cecho |
| [YARN-1136](https://issues.apache.org/jira/browse/YARN-1136) | Replace junit.framework.Assert with org.junit.Assert |  Major | . | Karthik Kambatla | Chen He |
| [YARN-738](https://issues.apache.org/jira/browse/YARN-738) | TestClientRMTokens is failing irregularly while running all yarn tests |  Major | . | Omkar Vinit Joshi | Ming Ma |
| [YARN-596](https://issues.apache.org/jira/browse/YARN-596) | Use scheduling policies throughout the queue hierarchy to decide which containers to preempt |  Major | scheduler | Sandy Ryza | Wei Yan |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2319](https://issues.apache.org/jira/browse/YARN-2319) | Fix MiniKdc not close in TestRMWebServicesDelegationTokens.java |  Major | resourcemanager | Wenwu Peng | Wenwu Peng |
| [YARN-2270](https://issues.apache.org/jira/browse/YARN-2270) | TestFSDownload#testDownloadPublicWithStatCache fails in trunk |  Minor | . | Ted Yu | Akira AJISAKA |
| [YARN-2224](https://issues.apache.org/jira/browse/YARN-2224) | Explicitly enable vmem check in TestContainersMonitor#testContainerKillOnMemoryOverflow |  Trivial | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2216](https://issues.apache.org/jira/browse/YARN-2216) | TestRMApplicationHistoryWriter sometimes fails in trunk |  Minor | . | Ted Yu | Zhijie Shen |
| [YARN-2105](https://issues.apache.org/jira/browse/YARN-2105) | Fix TestFairScheduler after YARN-2012 |  Major | . | Ted Yu | Ashwin Shankar |
| [YARN-2011](https://issues.apache.org/jira/browse/YARN-2011) | Fix typo and warning in TestLeafQueue |  Trivial | . | Chen He | Chen He |
| [YARN-1977](https://issues.apache.org/jira/browse/YARN-1977) | Add tests on getApplicationRequest with filtering start time range |  Minor | . | Junping Du | Junping Du |
| [YARN-1970](https://issues.apache.org/jira/browse/YARN-1970) | Prepare YARN codebase for JUnit 4.11. |  Minor | . | Chris Nauroth | Chris Nauroth |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2247](https://issues.apache.org/jira/browse/YARN-2247) | Allow RM web services users to authenticate using delegation tokens |  Blocker | . | Varun Vasudev | Varun Vasudev |
| [YARN-2233](https://issues.apache.org/jira/browse/YARN-2233) | Implement web services to create, renew and cancel delegation tokens |  Blocker | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-2152](https://issues.apache.org/jira/browse/YARN-2152) | Recover missing container information |  Major | resourcemanager | Jian He | Jian He |
| [YARN-2121](https://issues.apache.org/jira/browse/YARN-2121) | TimelineAuthenticator#hasDelegationToken may throw NPE |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2118](https://issues.apache.org/jira/browse/YARN-2118) | Type mismatch in contains() check of TimelineWebServices#injectOwnerInfo() |  Major | . | Ted Yu | Ted Yu |
| [YARN-2117](https://issues.apache.org/jira/browse/YARN-2117) | Close of Reader in TimelineAuthenticationFilterInitializer#initFilter() should be enclosed in finally block |  Minor | . | Ted Yu | Chen He |
| [YARN-2115](https://issues.apache.org/jira/browse/YARN-2115) | Replace RegisterNodeManagerRequest#ContainerStatus with a new NMContainerStatus |  Major | . | Jian He | Jian He |
| [YARN-2074](https://issues.apache.org/jira/browse/YARN-2074) | Preemption of AM containers shouldn't count towards AM failures |  Major | resourcemanager | Vinod Kumar Vavilapalli | Jian He |
| [YARN-2071](https://issues.apache.org/jira/browse/YARN-2071) | Enforce more restricted permissions for the directory of Leveldb store |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2059](https://issues.apache.org/jira/browse/YARN-2059) | Extend access control for admin acls |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2052](https://issues.apache.org/jira/browse/YARN-2052) | ContainerId creation after work preserving restart is broken |  Major | resourcemanager | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2049](https://issues.apache.org/jira/browse/YARN-2049) | Delegation token stuff for the timeline sever |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2022](https://issues.apache.org/jira/browse/YARN-2022) | Preempting an Application Master container can be kept as least priority when multiple applications are marked for preemption by ProportionalCapacityPreemptionPolicy |  Major | resourcemanager | Sunil G | Sunil G |
| [YARN-2017](https://issues.apache.org/jira/browse/YARN-2017) | Merge some of the common lib code in schedulers |  Major | resourcemanager | Jian He | Jian He |
| [YARN-1982](https://issues.apache.org/jira/browse/YARN-1982) | Rename the daemon name to timelineserver |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1938](https://issues.apache.org/jira/browse/YARN-1938) | Kerberos authentication for the timeline server |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1937](https://issues.apache.org/jira/browse/YARN-1937) | Add entity-level access control of the timeline data for owners only |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1936](https://issues.apache.org/jira/browse/YARN-1936) | Secured timeline client |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1877](https://issues.apache.org/jira/browse/YARN-1877) | Document yarn.resourcemanager.zk-auth and its scope |  Critical | resourcemanager | Karthik Kambatla | Robert Kanter |
| [YARN-1757](https://issues.apache.org/jira/browse/YARN-1757) | NM Recovery. Auxiliary service support. |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1713](https://issues.apache.org/jira/browse/YARN-1713) | Implement getnewapplication and submitapp as part of RM web service |  Blocker | . | Varun Vasudev | Varun Vasudev |
| [YARN-1702](https://issues.apache.org/jira/browse/YARN-1702) | Expose kill app functionality as part of RM web services |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-1474](https://issues.apache.org/jira/browse/YARN-1474) | Make schedulers services |  Major | scheduler | Sandy Ryza | Tsuyoshi Ozawa |
| [YARN-1408](https://issues.apache.org/jira/browse/YARN-1408) | Preemption caused Invalid State Event: ACQUIRED at KILLED and caused a task timeout for 30mins |  Major | resourcemanager | Sunil G | Sunil G |
| [YARN-1368](https://issues.apache.org/jira/browse/YARN-1368) | Common work to re-populate containers’ state into scheduler |  Major | . | Bikas Saha | Jian He |
| [YARN-1366](https://issues.apache.org/jira/browse/YARN-1366) | AM should implement Resync with the ApplicationMasterService instead of shutting down |  Major | resourcemanager | Bikas Saha | Rohith |
| [YARN-1365](https://issues.apache.org/jira/browse/YARN-1365) | ApplicationMasterService to allow Register of an app that was running before restart |  Major | resourcemanager | Bikas Saha | Anubhav Dhoot |
| [YARN-1362](https://issues.apache.org/jira/browse/YARN-1362) | Distinguish between nodemanager shutdown for decommission vs shutdown for restart |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1339](https://issues.apache.org/jira/browse/YARN-1339) | Recover DeletionService state upon nodemanager restart |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1338](https://issues.apache.org/jira/browse/YARN-1338) | Recover localized resource cache state upon nodemanager restart |  Major | nodemanager | Jason Lowe | Jason Lowe |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2125](https://issues.apache.org/jira/browse/YARN-2125) | ProportionalCapacityPreemptionPolicy should only log CSV when debug enabled |  Minor | resourcemanager, scheduler | Wangda Tan | Wangda Tan |
| [YARN-2091](https://issues.apache.org/jira/browse/YARN-2091) | Add more values to ContainerExitStatus and pass it from NM to RM and then to app masters |  Major | . | Bikas Saha | Tsuyoshi Ozawa |


