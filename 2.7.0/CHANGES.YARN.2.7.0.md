# Hadoop Changelog

## Release 2.7.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2837](https://issues.apache.org/jira/browse/YARN-2837) | Timeline server needs to recover the timeline DT when restarting |  Blocker | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2574](https://issues.apache.org/jira/browse/YARN-2574) | Add support for FairScheduler to the ReservationSystem |  Major | fairscheduler | Subru Krishnan | Anubhav Dhoot |
| [YARN-2427](https://issues.apache.org/jira/browse/YARN-2427) | Add support for moving apps between queues in RM web services |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-2360](https://issues.apache.org/jira/browse/YARN-2360) | Fair Scheduler: Display dynamic fair share for queues on the scheduler page |  Major | fairscheduler | Ashwin Shankar | Ashwin Shankar |
| [YARN-2190](https://issues.apache.org/jira/browse/YARN-2190) | Add CPU and memory limit options to the default container executor for Windows containers |  Major | nodemanager | Chuan Liu | Chuan Liu |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3349](https://issues.apache.org/jira/browse/YARN-3349) | Treat all exceptions as failure in TestFSRMStateStore#testFSRMStateStoreClientRetry |  Minor | test | zhihai xu | zhihai xu |
| [YARN-3285](https://issues.apache.org/jira/browse/YARN-3285) | Convert branch-2 .apt.vm files of YARN to markdown |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3272](https://issues.apache.org/jira/browse/YARN-3272) | Surface container locality info in RM web UI |  Major | . | Jian He | Jian He |
| [YARN-3262](https://issues.apache.org/jira/browse/YARN-3262) |  Surface application outstanding resource requests table in RM web UI |  Major | yarn | Jian He | Jian He |
| [YARN-3249](https://issues.apache.org/jira/browse/YARN-3249) | Add a "kill application" button to Resource Manager's Web UI |  Minor | resourcemanager | Ryu Kobayashi | Ryu Kobayashi |
| [YARN-3236](https://issues.apache.org/jira/browse/YARN-3236) | cleanup RMAuthenticationFilter#AUTH\_HANDLER\_PROPERTY. |  Trivial | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3230](https://issues.apache.org/jira/browse/YARN-3230) | Clarify application states on the web UI |  Major | . | Jian He | Jian He |
| [YARN-3203](https://issues.apache.org/jira/browse/YARN-3203) | Correct a log message in AuxServices |  Minor | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-3195](https://issues.apache.org/jira/browse/YARN-3195) | Add -help to yarn logs and nodes CLI command |  Minor | client | Jagadesh Kiran N | Jagadesh Kiran N |
| [YARN-3187](https://issues.apache.org/jira/browse/YARN-3187) | Documentation of Capacity Scheduler Queue mapping based on user or group |  Major | capacityscheduler, documentation | Naganarasimha G R | Gururaj Shetty |
| [YARN-3182](https://issues.apache.org/jira/browse/YARN-3182) | Cleanup switch statement in ApplicationMasterLauncher#handle() |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-3179](https://issues.apache.org/jira/browse/YARN-3179) | Update use of Iterator to Iterable |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-3158](https://issues.apache.org/jira/browse/YARN-3158) | Correct log messages in ResourceTrackerService |  Major | . | Devaraj K | Varun Saxena |
| [YARN-3157](https://issues.apache.org/jira/browse/YARN-3157) | Refactor the exception handling in ConverterUtils#to*Id |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3147](https://issues.apache.org/jira/browse/YARN-3147) | Clean up RM web proxy code |  Major | webapp | Steve Loughran | Steve Loughran |
| [YARN-3144](https://issues.apache.org/jira/browse/YARN-3144) | Configuration for making delegation token failures to timeline server not-fatal |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [YARN-3123](https://issues.apache.org/jira/browse/YARN-3123) | Make YARN CLI show a single completed container even if the app is running |  Major | client | Zhijie Shen | Naganarasimha G R |
| [YARN-3108](https://issues.apache.org/jira/browse/YARN-3108) | ApplicationHistoryServer doesn't process -D arguments |  Major | . | Chang Li | Chang Li |
| [YARN-3100](https://issues.apache.org/jira/browse/YARN-3100) | Make YARN authorization pluggable |  Major | . | Jian He | Jian He |
| [YARN-3086](https://issues.apache.org/jira/browse/YARN-3086) | Make NodeManager memory configurable in MiniYARNCluster |  Minor | test | Robert Metzger | Robert Metzger |
| [YARN-3085](https://issues.apache.org/jira/browse/YARN-3085) | Application summary should include the application type |  Major | resourcemanager | Jason Lowe | Rohith |
| [YARN-3077](https://issues.apache.org/jira/browse/YARN-3077) | RM should create yarn.resourcemanager.zk-state-store.parent-path recursively |  Major | resourcemanager | Chun Chen | Chun Chen |
| [YARN-3056](https://issues.apache.org/jira/browse/YARN-3056) | add verification for containerLaunchDuration in TestNodeManagerMetrics. |  Trivial | test | zhihai xu | zhihai xu |
| [YARN-3022](https://issues.apache.org/jira/browse/YARN-3022) | Expose Container resource information from NodeManager for monitoring |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3005](https://issues.apache.org/jira/browse/YARN-3005) | [JDK7] Use switch statement for String instead of if-else statement in RegistrySecurity.java |  Trivial | . | Akira AJISAKA |  |
| [YARN-2996](https://issues.apache.org/jira/browse/YARN-2996) | Refine fs operations in FileSystemRMStateStore and few fixes |  Major | resourcemanager | Yi Liu | Yi Liu |
| [YARN-2957](https://issues.apache.org/jira/browse/YARN-2957) | Create unit test to automatically compare YarnConfiguration and yarn-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-2950](https://issues.apache.org/jira/browse/YARN-2950) | Change message to mandate, not suggest JS requirement on UI |  Minor | webapp | Harsh J | Dustin Cote |
| [YARN-2940](https://issues.apache.org/jira/browse/YARN-2940) | Fix new findbugs warnings in rest of the hadoop-yarn components |  Major | . | Varun Saxena | Li Lu |
| [YARN-2939](https://issues.apache.org/jira/browse/YARN-2939) | Fix new findbugs warnings in hadoop-yarn-common |  Major | . | Varun Saxena | Li Lu |
| [YARN-2938](https://issues.apache.org/jira/browse/YARN-2938) | Fix new findbugs warnings in hadoop-yarn-resourcemanager and hadoop-yarn-applicationhistoryservice |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-2937](https://issues.apache.org/jira/browse/YARN-2937) | Fix new findbugs warnings in hadoop-yarn-nodemanager |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-2891](https://issues.apache.org/jira/browse/YARN-2891) | Failed Container Executor does not provide a clear error message |  Minor | nodemanager | Dustin Cote | Dustin Cote |
| [YARN-2878](https://issues.apache.org/jira/browse/YARN-2878) | Fix DockerContainerExecutor.apt.vm formatting |  Major | documentation | Abin Shahab | Abin Shahab |
| [YARN-2854](https://issues.apache.org/jira/browse/YARN-2854) | The document about timeline service and generic service needs to be updated |  Critical | timelineserver | Zhijie Shen | Naganarasimha G R |
| [YARN-2820](https://issues.apache.org/jira/browse/YARN-2820) |  Retry in FileSystemRMStateStore when FS's operations fail due to IOException. |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-2802](https://issues.apache.org/jira/browse/YARN-2802) | ClusterMetrics to include AM launch and register delays |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-2799](https://issues.apache.org/jira/browse/YARN-2799) | cleanup TestLogAggregationService based on the change in YARN-90 |  Minor | test | zhihai xu | zhihai xu |
| [YARN-2797](https://issues.apache.org/jira/browse/YARN-2797) | TestWorkPreservingRMRestart should use ParametrizedSchedulerTestBase |  Minor | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-2780](https://issues.apache.org/jira/browse/YARN-2780) | Log aggregated resource allocation in rm-appsummary.log |  Minor | resourcemanager | Koji Noguchi | Eric Payne |
| [YARN-2777](https://issues.apache.org/jira/browse/YARN-2777) | Mark the end of individual log in aggregated log |  Major | . | Ted Yu | Varun Saxena |
| [YARN-2679](https://issues.apache.org/jira/browse/YARN-2679) | Add metric for container launch duration |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-2669](https://issues.apache.org/jira/browse/YARN-2669) | FairScheduler: queue names shouldn't allow periods |  Major | . | Wei Yan | Wei Yan |
| [YARN-2643](https://issues.apache.org/jira/browse/YARN-2643) | Don't create a new DominantResourceCalculator on every FairScheduler.allocate call |  Trivial | . | Sandy Ryza | Karthik Kambatla |
| [YARN-2641](https://issues.apache.org/jira/browse/YARN-2641) | Decommission nodes on -refreshNodes instead of next NM-RM heartbeat |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-2604](https://issues.apache.org/jira/browse/YARN-2604) | Scheduler should consider max-allocation-* in conjunction with the largest node |  Major | scheduler | Karthik Kambatla | Robert Kanter |
| [YARN-2301](https://issues.apache.org/jira/browse/YARN-2301) | Improve yarn container command |  Major | . | Jian He | Naganarasimha G R |
| [YARN-2254](https://issues.apache.org/jira/browse/YARN-2254) | TestRMWebServicesAppsModification should run against both CS and FS |  Minor | . | zhihai xu | zhihai xu |
| [YARN-2157](https://issues.apache.org/jira/browse/YARN-2157) | Document YARN metrics |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1582](https://issues.apache.org/jira/browse/YARN-1582) | Capacity Scheduler: add a maximum-allocation-mb setting per queue |  Major | capacityscheduler | Thomas Graves | Thomas Graves |
| [YARN-1393](https://issues.apache.org/jira/browse/YARN-1393) | SLS: Add how-to-use instructions |  Major | . | Wei Yan | Wei Yan |
| [YARN-1299](https://issues.apache.org/jira/browse/YARN-1299) | Improve a log message in AppSchedulingInfo by adding application id |  Major | resourcemanager | Devaraj K |  |
| [YARN-1156](https://issues.apache.org/jira/browse/YARN-1156) | Enhance NodeManager AllocatedGB and AvailableGB metrics for aggregation of decimal values |  Major | . | Akira AJISAKA | Tsuyoshi Ozawa |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3393](https://issues.apache.org/jira/browse/YARN-3393) | Getting application(s) goes wrong when app finishes before starting the attempt |  Critical | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3384](https://issues.apache.org/jira/browse/YARN-3384) | TestLogAggregationService.verifyContainerLogs fails after YARN-2777 |  Minor | . | Naganarasimha G R | Naganarasimha G R |
| [YARN-3369](https://issues.apache.org/jira/browse/YARN-3369) | Missing NullPointer check in AppSchedulingInfo causes RM to die |  Blocker | resourcemanager | Giovanni Matteo Fumarola | Brahma Reddy Battula |
| [YARN-3338](https://issues.apache.org/jira/browse/YARN-3338) | Exclude jline dependency from YARN |  Blocker | build | Zhijie Shen | Zhijie Shen |
| [YARN-3336](https://issues.apache.org/jira/browse/YARN-3336) | FileSystem memory leak in DelegationTokenRenewer |  Critical | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3304](https://issues.apache.org/jira/browse/YARN-3304) | ResourceCalculatorProcessTree#getCpuUsagePercent default return value is inconsistent with other getters |  Blocker | nodemanager | Junping Du | Junping Du |
| [YARN-3296](https://issues.apache.org/jira/browse/YARN-3296) | yarn.nodemanager.container-monitor.process-tree.class is configurable but ResourceCalculatorProcessTree class is marked Private |  Major | . | Hitesh Shah | Hitesh Shah |
| [YARN-3295](https://issues.apache.org/jira/browse/YARN-3295) | Fix documentation nits found in markdown conversion |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3287](https://issues.apache.org/jira/browse/YARN-3287) | TimelineClient kerberos authentication failure uses wrong login context. |  Major | . | Jonathan Eagles | Daryn Sharp |
| [YARN-3281](https://issues.apache.org/jira/browse/YARN-3281) | Add RMStateStore to StateMachine visualization list |  Minor | scripts | Chengbing Liu | Chengbing Liu |
| [YARN-3275](https://issues.apache.org/jira/browse/YARN-3275) | CapacityScheduler: Preemption happening on non-preemptable queues |  Major | . | Eric Payne | Eric Payne |
| [YARN-3270](https://issues.apache.org/jira/browse/YARN-3270) | node label expression not getting set in ApplicationSubmissionContext |  Minor | . | Rohit Agarwal | Rohit Agarwal |
| [YARN-3267](https://issues.apache.org/jira/browse/YARN-3267) | Timelineserver applies the ACL rules after applying the limit on the number of records |  Major | . | Prakash Ramachandran | Chang Li |
| [YARN-3256](https://issues.apache.org/jira/browse/YARN-3256) | TestClientToAMTokens#testClientTokenRace is not running against all Schedulers even when using ParameterizedSchedulerTestBase |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3255](https://issues.apache.org/jira/browse/YARN-3255) | RM, NM, JobHistoryServer, and WebAppProxyServer's main() should support generic options |  Major | nodemanager, resourcemanager | Konstantin Shvachko | Konstantin Shvachko |
| [YARN-3242](https://issues.apache.org/jira/browse/YARN-3242) | Asynchrony in ZK-close can lead to ZKRMStateStore watcher receiving events for old client |  Critical | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3239](https://issues.apache.org/jira/browse/YARN-3239) | WebAppProxy does not support a final tracking url which has query fragments and params |  Major | . | Hitesh Shah | Jian He |
| [YARN-3238](https://issues.apache.org/jira/browse/YARN-3238) | Connection timeouts to nodemanagers are retried at multiple levels |  Blocker | . | Jason Lowe | Jason Lowe |
| [YARN-3237](https://issues.apache.org/jira/browse/YARN-3237) | AppLogAggregatorImpl fails to log error cause |  Major | . | Rushabh S Shah | Rushabh S Shah |
| [YARN-3231](https://issues.apache.org/jira/browse/YARN-3231) | FairScheduler: Changing queueMaxRunningApps interferes with pending jobs |  Critical | . | Siqi Li | Siqi Li |
| [YARN-3227](https://issues.apache.org/jira/browse/YARN-3227) | Timeline renew delegation token fails when RM user's TGT is expired |  Critical | . | Jonathan Eagles | Zhijie Shen |
| [YARN-3222](https://issues.apache.org/jira/browse/YARN-3222) | RMNodeImpl#ReconnectNodeTransition should send scheduler events in sequential order |  Critical | resourcemanager | Rohith | Rohith |
| [YARN-3207](https://issues.apache.org/jira/browse/YARN-3207) | secondary filter matches entites which do not have the key being filtered for. |  Major | timelineserver | Prakash Ramachandran | Zhijie Shen |
| [YARN-3194](https://issues.apache.org/jira/browse/YARN-3194) | RM should handle NMContainerStatuses sent by NM while registering if NM is Reconnected node |  Blocker | resourcemanager | Rohith | Rohith |
| [YARN-3191](https://issues.apache.org/jira/browse/YARN-3191) | Log object should be initialized with its own class |  Trivial | nodemanager | Rohith | Rohith |
| [YARN-3164](https://issues.apache.org/jira/browse/YARN-3164) | rmadmin command usage prints incorrect command name |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3160](https://issues.apache.org/jira/browse/YARN-3160) | Non-atomic operation on nodeUpdateQueue in RMNodeImpl |  Major | resourcemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3155](https://issues.apache.org/jira/browse/YARN-3155) | Refactor the exception handling code for TimelineClientImpl's retryOn method |  Minor | . | Li Lu | Li Lu |
| [YARN-3151](https://issues.apache.org/jira/browse/YARN-3151) | On Failover tracking url wrong in application cli for KILLED application |  Minor | client, resourcemanager | Bibin A Chundatt | Rohith |
| [YARN-3149](https://issues.apache.org/jira/browse/YARN-3149) | Typo in message for invalid application id |  Trivial | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3145](https://issues.apache.org/jira/browse/YARN-3145) | ConcurrentModificationException on CapacityScheduler ParentQueue#getQueueUserAclInfo |  Major | . | Jian He | Tsuyoshi Ozawa |
| [YARN-3143](https://issues.apache.org/jira/browse/YARN-3143) | RM Apps REST API can return NPE or entries missing id and other fields |  Major | webapp | Kendall Thrapp | Jason Lowe |
| [YARN-3131](https://issues.apache.org/jira/browse/YARN-3131) | YarnClientImpl should check FAILED and KILLED state in submitApplication |  Major | . | Chang Li | Chang Li |
| [YARN-3113](https://issues.apache.org/jira/browse/YARN-3113) | Release audit warning for "Sorting icons.psd" |  Major | . | Chang Li | Steve Loughran |
| [YARN-3104](https://issues.apache.org/jira/browse/YARN-3104) | RM generates new AMRM tokens every heartbeat between rolling and activation |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-3103](https://issues.apache.org/jira/browse/YARN-3103) | AMRMClientImpl does not update AMRM token properly |  Blocker | client | Jason Lowe | Jason Lowe |
| [YARN-3101](https://issues.apache.org/jira/browse/YARN-3101) | In Fair Scheduler, fix canceling of reservations for exceeding max share |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3094](https://issues.apache.org/jira/browse/YARN-3094) | reset timer for liveness monitors after RM recovery |  Major | resourcemanager | Jun Gong | Jun Gong |
| [YARN-3090](https://issues.apache.org/jira/browse/YARN-3090) | DeletionService can silently ignore deletion task failures |  Major | nodemanager | Jason Lowe | Varun Saxena |
| [YARN-3089](https://issues.apache.org/jira/browse/YARN-3089) | LinuxContainerExecutor does not handle file arguments to deleteAsUser |  Blocker | . | Jason Lowe | Eric Payne |
| [YARN-3088](https://issues.apache.org/jira/browse/YARN-3088) | LinuxContainerExecutor.deleteAsUser can throw NPE if native executor returns an error |  Major | nodemanager | Jason Lowe | Eric Payne |
| [YARN-3082](https://issues.apache.org/jira/browse/YARN-3082) | Non thread safe access to systemCredentials in NodeHeartbeatResponse processing |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3079](https://issues.apache.org/jira/browse/YARN-3079) | Scheduler should also update maximumAllocation when updateNodeResource. |  Major | . | zhihai xu | zhihai xu |
| [YARN-3078](https://issues.apache.org/jira/browse/YARN-3078) | LogCLIHelpers lacks of a blank space before string 'does not exist' |  Minor | log-aggregation | sam liu |  |
| [YARN-3074](https://issues.apache.org/jira/browse/YARN-3074) | Nodemanager dies when localizer runner tries to write to a full disk |  Major | nodemanager | Jason Lowe | Varun Saxena |
| [YARN-3071](https://issues.apache.org/jira/browse/YARN-3071) | Remove invalid char from sample conf in doc of FairScheduler |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-3064](https://issues.apache.org/jira/browse/YARN-3064) | TestRMRestart/TestContainerResourceUsage/TestNodeManagerResync failure with allocation timeout |  Critical | scheduler | Wangda Tan | Jian He |
| [YARN-3058](https://issues.apache.org/jira/browse/YARN-3058) | Fix error message of tokens' activation delay configuration |  Minor | . | Yi Liu | Yi Liu |
| [YARN-3029](https://issues.apache.org/jira/browse/YARN-3029) | FSDownload.unpack() uses local locale for FS case conversion, may not work everywhere |  Major | nodemanager | Steve Loughran | Varun Saxena |
| [YARN-3027](https://issues.apache.org/jira/browse/YARN-3027) | Scheduler should use totalAvailable resource from node instead of availableResource for maxAllocation |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3024](https://issues.apache.org/jira/browse/YARN-3024) | LocalizerRunner should give DIE action when all resources are localized |  Major | nodemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3015](https://issues.apache.org/jira/browse/YARN-3015) | yarn classpath command should support same options as hadoop classpath. |  Minor | scripts | Chris Nauroth | Varun Saxena |
| [YARN-3010](https://issues.apache.org/jira/browse/YARN-3010) | Fix recent findbug issue in AbstractYarnScheduler |  Minor | . | Yi Liu | Yi Liu |
| [YARN-2997](https://issues.apache.org/jira/browse/YARN-2997) | NM keeps sending already-sent completed containers to RM until containers are removed from context |  Major | nodemanager | Chengbing Liu | Chengbing Liu |
| [YARN-2993](https://issues.apache.org/jira/browse/YARN-2993) | Several fixes (missing acl check, error log msg ...) and some refinement in AdminService |  Major | resourcemanager | Yi Liu | Yi Liu |
| [YARN-2992](https://issues.apache.org/jira/browse/YARN-2992) | ZKRMStateStore crashes due to session expiry |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-2991](https://issues.apache.org/jira/browse/YARN-2991) | TestRMRestart.testDecomissionedNMsMetricsOnRMRestart intermittently fails on trunk |  Blocker | . | Zhijie Shen | Rohith |
| [YARN-2990](https://issues.apache.org/jira/browse/YARN-2990) | FairScheduler's delay-scheduling always waits for node-local and rack-local delays, even for off-rack-only requests |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-2988](https://issues.apache.org/jira/browse/YARN-2988) | Graph#save() may leak file descriptors |  Minor | . | Ted Yu | Ted Yu |
| [YARN-2987](https://issues.apache.org/jira/browse/YARN-2987) | ClientRMService#getQueueInfo doesn't check app ACLs |  Major | . | Jian He | Varun Saxena |
| [YARN-2983](https://issues.apache.org/jira/browse/YARN-2983) | NPE possible in ClientRMService#getQueueInfo |  Major | resourcemanager | Varun Saxena | Varun Saxena |
| [YARN-2978](https://issues.apache.org/jira/browse/YARN-2978) | ResourceManager crashes with NPE while getting queue info |  Critical | . | Jason Tufo | Varun Saxena |
| [YARN-2977](https://issues.apache.org/jira/browse/YARN-2977) | TestNMClient get failed intermittently |  Major | . | Junping Du | Junping Du |
| [YARN-2975](https://issues.apache.org/jira/browse/YARN-2975) | FSLeafQueue app lists are accessed without required locks |  Blocker | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-2972](https://issues.apache.org/jira/browse/YARN-2972) | DelegationTokenRenewer thread pool never expands |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-2964](https://issues.apache.org/jira/browse/YARN-2964) | RM prematurely cancels tokens for jobs that submit jobs (oozie) |  Blocker | resourcemanager | Daryn Sharp | Jian He |
| [YARN-2958](https://issues.apache.org/jira/browse/YARN-2958) | RMStateStore seems to unnecessarily and wrongly store sequence number separately |  Blocker | resourcemanager | Zhijie Shen | Varun Saxena |
| [YARN-2956](https://issues.apache.org/jira/browse/YARN-2956) | Some yarn-site index linked pages are difficult to discover because are not in the side bar |  Minor | documentation | Remus Rusanu | Masatake Iwasaki |
| [YARN-2952](https://issues.apache.org/jira/browse/YARN-2952) | Incorrect version check in RMStateStore |  Major | . | Jian He | Rohith |
| [YARN-2945](https://issues.apache.org/jira/browse/YARN-2945) | FSLeafQueue#assignContainer - document the reason for using both write and read locks |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2936](https://issues.apache.org/jira/browse/YARN-2936) | YARNDelegationTokenIdentifier doesn't set proto.builder now |  Major | . | Zhijie Shen | Varun Saxena |
| [YARN-2932](https://issues.apache.org/jira/browse/YARN-2932) | Add entry for "preemptable" status (enabled/disabled) to scheduler web UI and queue initialize/refresh logging |  Major | . | Eric Payne | Eric Payne |
| [YARN-2931](https://issues.apache.org/jira/browse/YARN-2931) | PublicLocalizer may fail until directory is initialized by LocalizeRunner |  Critical | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2922](https://issues.apache.org/jira/browse/YARN-2922) | ConcurrentModificationException in CapacityScheduler's LeafQueue |  Major | capacityscheduler, resourcemanager, scheduler | Jason Tufo | Rohith |
| [YARN-2917](https://issues.apache.org/jira/browse/YARN-2917) | Potential deadlock in AsyncDispatcher when system.exit called in AsyncDispatcher#dispatch and AsyscDispatcher#serviceStop from shutdown hook |  Critical | resourcemanager | Rohith | Rohith |
| [YARN-2912](https://issues.apache.org/jira/browse/YARN-2912) | Jersey Tests failing with port in use |  Major | test | Steve Loughran | Varun Saxena |
| [YARN-2910](https://issues.apache.org/jira/browse/YARN-2910) | FSLeafQueue can throw ConcurrentModificationException |  Major | fairscheduler | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-2907](https://issues.apache.org/jira/browse/YARN-2907) | SchedulerNode#toString should print all resource detail instead of only memory. |  Trivial | resourcemanager | Rohith | Rohith |
| [YARN-2906](https://issues.apache.org/jira/browse/YARN-2906) | CapacitySchedulerPage shows HTML tags for a queue's Active Users |  Major | capacityscheduler | Jason Lowe | Jason Lowe |
| [YARN-2905](https://issues.apache.org/jira/browse/YARN-2905) | AggregatedLogsBlock page can infinitely loop if the aggregated log file is corrupted |  Blocker | . | Jason Lowe | Varun Saxena |
| [YARN-2899](https://issues.apache.org/jira/browse/YARN-2899) | Run TestDockerContainerExecutorWithMocks on Linux only |  Minor | nodemanager, test | Ming Ma | Ming Ma |
| [YARN-2897](https://issues.apache.org/jira/browse/YARN-2897) | CrossOriginFilter needs more log statements |  Major | . | Mit Desai | Mit Desai |
| [YARN-2894](https://issues.apache.org/jira/browse/YARN-2894) | When ACL's are enabled, if RM switches then application can not be viewed from web. |  Major | resourcemanager | Rohith | Rohith |
| [YARN-2874](https://issues.apache.org/jira/browse/YARN-2874) | Dead lock in "DelegationTokenRenewer" which blocks RM to execute any further apps |  Blocker | resourcemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-2870](https://issues.apache.org/jira/browse/YARN-2870) | Update examples in document of Timeline Server |  Trivial | documentation, timelineserver | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-2869](https://issues.apache.org/jira/browse/YARN-2869) | CapacityScheduler should trim sub queue names when parse configuration |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2865](https://issues.apache.org/jira/browse/YARN-2865) | Application recovery continuously fails with "Application with id already present. Cannot duplicate" |  Critical | resourcemanager | Rohith | Rohith |
| [YARN-2861](https://issues.apache.org/jira/browse/YARN-2861) | Timeline DT secret manager should not reuse the RM's configs. |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2857](https://issues.apache.org/jira/browse/YARN-2857) | ConcurrentModificationException in ContainerLogAppender |  Critical | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [YARN-2856](https://issues.apache.org/jira/browse/YARN-2856) | Application recovery throw InvalidStateTransitonException: Invalid event: ATTEMPT\_KILLED at ACCEPTED |  Critical | resourcemanager | Rohith | Rohith |
| [YARN-2847](https://issues.apache.org/jira/browse/YARN-2847) | Linux native container executor segfaults if default banned user detected |  Major | nodemanager | Jason Lowe | Olaf Flebbe |
| [YARN-2816](https://issues.apache.org/jira/browse/YARN-2816) | NM fail to start with NPE during container recovery |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-2815](https://issues.apache.org/jira/browse/YARN-2815) | Remove jline from hadoop-yarn-server-common |  Major | . | Ferdinand Xu | Ferdinand Xu |
| [YARN-2811](https://issues.apache.org/jira/browse/YARN-2811) | In Fair Scheduler, reservation fulfillments shouldn't ignore max share |  Major | . | Siqi Li | Siqi Li |
| [YARN-2809](https://issues.apache.org/jira/browse/YARN-2809) | Implement workaround for linux kernel panic when removing cgroup |  Major | nodemanager | Nathan Roberts | Nathan Roberts |
| [YARN-2808](https://issues.apache.org/jira/browse/YARN-2808) | yarn client tool can not list app\_attempt's container info correctly |  Major | client | Gordon Wang | Naganarasimha G R |
| [YARN-2749](https://issues.apache.org/jira/browse/YARN-2749) | Some testcases from TestLogAggregationService fails in trunk |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-2742](https://issues.apache.org/jira/browse/YARN-2742) | FairSchedulerConfiguration should allow extra spaces between value and unit |  Minor | fairscheduler | Sangjin Lee | Wei Yan |
| [YARN-2735](https://issues.apache.org/jira/browse/YARN-2735) | diskUtilizationPercentageCutoff and diskUtilizationSpaceCutoff are initialized twice in DirectoryCollection |  Trivial | nodemanager | zhihai xu | zhihai xu |
| [YARN-2731](https://issues.apache.org/jira/browse/YARN-2731) | Fixed RegisterApplicationMasterResponsePBImpl to properly invoke maybeInitBuilder |  Major | . | Carlo Curino | Carlo Curino |
| [YARN-2713](https://issues.apache.org/jira/browse/YARN-2713) | "RM Home" link in NM should point to one of the RMs in an HA setup |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-2697](https://issues.apache.org/jira/browse/YARN-2697) | RMAuthenticationHandler is no longer useful |  Major | resourcemanager | Zhijie Shen | haosdent |
| [YARN-2675](https://issues.apache.org/jira/browse/YARN-2675) | containersKilled metrics is not updated when the container is killed during localization |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-2637](https://issues.apache.org/jira/browse/YARN-2637) | maximum-am-resource-percent could be respected for both LeafQueue/User when trying to activate applications. |  Critical | resourcemanager | Wangda Tan | Craig Welch |
| [YARN-2461](https://issues.apache.org/jira/browse/YARN-2461) | Fix PROCFS\_USE\_SMAPS\_BASED\_RSS\_ENABLED property in YarnConfiguration |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-2432](https://issues.apache.org/jira/browse/YARN-2432) | RMStateStore should process the pending events before close |  Major | resourcemanager | Varun Saxena | Varun Saxena |
| [YARN-2414](https://issues.apache.org/jira/browse/YARN-2414) | RM web UI: app page will crash if app is failed before any attempt has been created |  Major | webapp | Zhijie Shen | Wangda Tan |
| [YARN-2356](https://issues.apache.org/jira/browse/YARN-2356) | yarn status command for non-existent application/application attempt/container is too verbose |  Minor | client | Sunil G | Sunil G |
| [YARN-2340](https://issues.apache.org/jira/browse/YARN-2340) | NPE thrown when RM restart after queue is STOPPED. There after RM can not recovery application's and remain in standby |  Critical | resourcemanager, scheduler | Nishan Shetty | Rohith |
| [YARN-2315](https://issues.apache.org/jira/browse/YARN-2315) | FairScheduler: Set current capacity in addition to capacity |  Major | . | zhihai xu | zhihai xu |
| [YARN-2246](https://issues.apache.org/jira/browse/YARN-2246) | Job History Link in RM UI is redirecting to the URL which contains Job Id twice |  Major | webapp | Devaraj K | Devaraj K |
| [YARN-2243](https://issues.apache.org/jira/browse/YARN-2243) | Order of arguments for Preconditions.checkNotNull() is wrong in SchedulerApplicationAttempt ctor |  Minor | . | Ted Yu | Devaraj K |
| [YARN-2230](https://issues.apache.org/jira/browse/YARN-2230) | Fix description of yarn.scheduler.maximum-allocation-vcores in yarn-default.xml (or code) |  Minor | client, documentation, scheduler | Adam Kawa | Vijay Bhat |
| [YARN-2136](https://issues.apache.org/jira/browse/YARN-2136) | RMStateStore can explicitly handle store/update events when fenced |  Major | . | Jian He | Varun Saxena |
| [YARN-1703](https://issues.apache.org/jira/browse/YARN-1703) | Too many connections are opened for proxy server when applicationMaster UI is accessed. |  Critical | . | Rohith | Rohith |
| [YARN-1615](https://issues.apache.org/jira/browse/YARN-1615) | Fix typos in description about delay scheduling |  Trivial | documentation, scheduler | Akira AJISAKA | Akira AJISAKA |
| [YARN-1580](https://issues.apache.org/jira/browse/YARN-1580) | Documentation error regarding "container-allocation.expiry-interval-ms" |  Trivial | documentation | German Florez-Larrahondo | Brahma Reddy Battula |
| [YARN-1453](https://issues.apache.org/jira/browse/YARN-1453) | [JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments |  Minor | . | Andrew Purtell | Akira AJISAKA |
| [YARN-1237](https://issues.apache.org/jira/browse/YARN-1237) | Description for yarn.nodemanager.aux-services in yarn-default.xml is misleading |  Minor | documentation | Hitesh Shah | Brahma Reddy Battula |
| [YARN-933](https://issues.apache.org/jira/browse/YARN-933) | Potential InvalidStateTransitonException: Invalid event: LAUNCHED at FINAL\_SAVING |  Major | resourcemanager | J.Andreina | Rohith |
| [YARN-570](https://issues.apache.org/jira/browse/YARN-570) | Time strings are formated in different timezone |  Major | webapp | Peng Zhang | Akira AJISAKA |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3070](https://issues.apache.org/jira/browse/YARN-3070) | TestRMAdminCLI#testHelp fails for transitionToActive command |  Minor | . | Ted Yu | Junping Du |
| [YARN-2930](https://issues.apache.org/jira/browse/YARN-2930) | TestRMRestart#testRMRestartRecoveringNodeLabelManager sometimes fails against Java 7 & 8 |  Minor | . | Ted Yu | Wangda Tan |
| [YARN-1979](https://issues.apache.org/jira/browse/YARN-1979) | TestDirectoryCollection fails when the umask is unusual |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1537](https://issues.apache.org/jira/browse/YARN-1537) | TestLocalResourcesTrackerImpl.testLocalResourceCache often failed |  Major | nodemanager | Hong Shen | Xuan Gong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3379](https://issues.apache.org/jira/browse/YARN-3379) | Missing data in localityTable and ResourceRequests table in RM WebUI |  Major | resourcemanager, webapp, yarn | Xuan Gong | Xuan Gong |
| [YARN-3300](https://issues.apache.org/jira/browse/YARN-3300) | outstanding\_resource\_requests table should not be shown in AHS |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-3265](https://issues.apache.org/jira/browse/YARN-3265) | CapacityScheduler deadlock when computing absolute max avail capacity (fix for trunk/branch-2) |  Blocker | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3171](https://issues.apache.org/jira/browse/YARN-3171) | Sort by Application id, AppAttempt & ContainerID doesn't work in ATS / RM web ui |  Minor | timelineserver | Jeff Zhang | Naganarasimha G R |
| [YARN-3154](https://issues.apache.org/jira/browse/YARN-3154) | Should not upload partial logs for MR jobs or other "short-running' applications |  Blocker | nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-3132](https://issues.apache.org/jira/browse/YARN-3132) | RMNodeLabelsManager should remove node from node-to-label mapping when node becomes deactivated |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3124](https://issues.apache.org/jira/browse/YARN-3124) | Capacity Scheduler LeafQueue/ParentQueue should use QueueCapacities to track capacities-by-label |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3122](https://issues.apache.org/jira/browse/YARN-3122) | Metrics for container's actual CPU usage |  Major | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3099](https://issues.apache.org/jira/browse/YARN-3099) | Capacity Scheduler LeafQueue/ParentQueue should use ResourceUsage to track used-resources-by-label. |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3098](https://issues.apache.org/jira/browse/YARN-3098) | Create common QueueCapacities class in Capacity Scheduler to track capacities-by-labels of queues |  Major | capacityscheduler | Wangda Tan | Wangda Tan |
| [YARN-3092](https://issues.apache.org/jira/browse/YARN-3092) | Create common ResourceUsage class to track labeled resource usages in Capacity Scheduler |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3076](https://issues.apache.org/jira/browse/YARN-3076) | Add API/Implementation to YarnClient to retrieve label-to-node mapping |  Major | client | Varun Saxena | Varun Saxena |
| [YARN-3075](https://issues.apache.org/jira/browse/YARN-3075) | NodeLabelsManager implementation to retrieve label to node mapping |  Major | resourcemanager | Varun Saxena | Varun Saxena |
| [YARN-3028](https://issues.apache.org/jira/browse/YARN-3028) | Better syntax for replaceLabelsOnNode in RMAdmin CLI |  Major | api, client, resourcemanager | Jian He | Rohith |
| [YARN-3019](https://issues.apache.org/jira/browse/YARN-3019) | Make work-preserving-recovery the default mechanism for RM recovery |  Major | resourcemanager | Jian He | Jian He |
| [YARN-3014](https://issues.apache.org/jira/browse/YARN-3014) | Replaces labels on a host should update all NM's labels on that host |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-3011](https://issues.apache.org/jira/browse/YARN-3011) | NM dies because of the failure of resource localization |  Major | nodemanager | Wang Hao | Varun Saxena |
| [YARN-2998](https://issues.apache.org/jira/browse/YARN-2998) | Abstract out scheduler independent PlanFollower components |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2994](https://issues.apache.org/jira/browse/YARN-2994) | Document work-preserving RM restart |  Major | resourcemanager | Jian He | Jian He |
| [YARN-2984](https://issues.apache.org/jira/browse/YARN-2984) | Metrics for container's actual memory usage |  Major | nodemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-2971](https://issues.apache.org/jira/browse/YARN-2971) | RM uses conf instead of token service address to renew timeline delegation tokens |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-2970](https://issues.apache.org/jira/browse/YARN-2970) | NodeLabel operations in RMAdmin CLI get missing in help command. |  Minor | api, client, resourcemanager | Junping Du | Varun Saxena |
| [YARN-2944](https://issues.apache.org/jira/browse/YARN-2944) | InMemorySCMStore can not be instantiated with ReflectionUtils#newInstance |  Minor | . | Chris Trezzo | Chris Trezzo |
| [YARN-2943](https://issues.apache.org/jira/browse/YARN-2943) | Add a node-labels page in RM web UI |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2933](https://issues.apache.org/jira/browse/YARN-2933) | Capacity Scheduler preemption policy should only consider capacity without labels temporarily |  Major | capacityscheduler | Wangda Tan | Mayank Bansal |
| [YARN-2927](https://issues.apache.org/jira/browse/YARN-2927) | InMemorySCMStore properties are inconsistent |  Major | . | Ray Chiang | Ray Chiang |
| [YARN-2924](https://issues.apache.org/jira/browse/YARN-2924) | Node to labels mapping should not transfer to lowercase when adding from RMAdminCLI |  Major | client | Wangda Tan | Wangda Tan |
| [YARN-2920](https://issues.apache.org/jira/browse/YARN-2920) | CapacityScheduler should be notified when labels on nodes changed |  Major | . | Wangda Tan | Wangda Tan |
| [YARN-2914](https://issues.apache.org/jira/browse/YARN-2914) | Potential race condition in Singleton implementation of SharedCacheUploaderMetrics, CleanerMetrics, ClientSCMMetrics |  Minor | . | Ted Yu | Varun Saxena |
| [YARN-2881](https://issues.apache.org/jira/browse/YARN-2881) | Implement PlanFollower for FairScheduler |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2880](https://issues.apache.org/jira/browse/YARN-2880) | Add a test in TestRMRestart to make sure node labels will be recovered if it is enabled |  Major | resourcemanager | Wangda Tan | Rohith |
| [YARN-2807](https://issues.apache.org/jira/browse/YARN-2807) | Option "--forceactive" not works as described in usage of "yarn rmadmin -transitionToActive" |  Minor | documentation, resourcemanager | Wangda Tan | Masatake Iwasaki |
| [YARN-2800](https://issues.apache.org/jira/browse/YARN-2800) | Remove MemoryNodeLabelsStore and add a way to enable/disable node labels feature |  Major | client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2786](https://issues.apache.org/jira/browse/YARN-2786) | Create yarn cluster CLI to enable list node labels collection |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2766](https://issues.apache.org/jira/browse/YARN-2766) |  ApplicationHistoryManager is expected to return a sorted list of apps/attempts/containers |  Major | timelineserver | Robert Kanter | Robert Kanter |
| [YARN-2765](https://issues.apache.org/jira/browse/YARN-2765) | Add leveldb-based implementation for RMStateStore |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-2762](https://issues.apache.org/jira/browse/YARN-2762) | RMAdminCLI node-labels-related args should be trimmed and checked before sending to RM |  Minor | resourcemanager | Rohith | Rohith |
| [YARN-2738](https://issues.apache.org/jira/browse/YARN-2738) | Add FairReservationSystem for FairScheduler |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2712](https://issues.apache.org/jira/browse/YARN-2712) | TestWorkPreservingRMRestart: Augment FS tests with queue and headroom checks |  Major | resourcemanager | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2694](https://issues.apache.org/jira/browse/YARN-2694) | Ensure only single node labels specified in resource request / host, and node label expression only specified when resourceName=ANY |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2690](https://issues.apache.org/jira/browse/YARN-2690) | Make ReservationSystem and its dependent classes independent of Scheduler type |  Major | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2683](https://issues.apache.org/jira/browse/YARN-2683) | registry config options: document and move to core-default |  Major | api, resourcemanager | Steve Loughran | Steve Loughran |
| [YARN-2616](https://issues.apache.org/jira/browse/YARN-2616) | Add CLI client to the registry to list, view and manipulate entries |  Major | client | Steve Loughran | Akshay Radia |
| [YARN-2543](https://issues.apache.org/jira/browse/YARN-2543) | Resource usage should be published to the timeline server as well |  Major | timelineserver | Zhijie Shen | Naganarasimha G R |
| [YARN-2404](https://issues.apache.org/jira/browse/YARN-2404) | Remove ApplicationAttemptState and ApplicationState class in RMStateStore class |  Major | . | Jian He | Tsuyoshi Ozawa |
| [YARN-2375](https://issues.apache.org/jira/browse/YARN-2375) | Allow enabling/disabling timeline server per framework |  Major | . | Jonathan Eagles | Mit Desai |
| [YARN-2236](https://issues.apache.org/jira/browse/YARN-2236) | Shared Cache uploader service on the Node Manager |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2217](https://issues.apache.org/jira/browse/YARN-2217) | Shared cache client side changes |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2203](https://issues.apache.org/jira/browse/YARN-2203) | Web UI for cache manager |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2189](https://issues.apache.org/jira/browse/YARN-2189) | Admin service for cache manager |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2188](https://issues.apache.org/jira/browse/YARN-2188) | Client service for cache manager |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2186](https://issues.apache.org/jira/browse/YARN-2186) | Node Manager uploader service for cache manager |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2183](https://issues.apache.org/jira/browse/YARN-2183) | Cleaner service for cache manager |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2180](https://issues.apache.org/jira/browse/YARN-2180) | In-memory backing store for cache manager |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2179](https://issues.apache.org/jira/browse/YARN-2179) | Initial cache manager structure and context |  Major | . | Chris Trezzo | Chris Trezzo |
| [YARN-2165](https://issues.apache.org/jira/browse/YARN-2165) | Timeline server should validate the numeric configuration values |  Major | timelineserver | Karam Singh | Vasanth kumar RJ |
| [YARN-2079](https://issues.apache.org/jira/browse/YARN-2079) | Recover NonAggregatingLogHandler state upon nodemanager restart |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-2056](https://issues.apache.org/jira/browse/YARN-2056) | Disable preemption at Queue level |  Major | resourcemanager | Mayank Bansal | Eric Payne |
| [YARN-1984](https://issues.apache.org/jira/browse/YARN-1984) | LeveldbTimelineStore does not handle db exceptions properly |  Major | . | Jason Lowe | Varun Saxena |
| [YARN-1904](https://issues.apache.org/jira/browse/YARN-1904) | Uniform the XXXXNotFound messages from ClientRMService and ApplicationHistoryClientService |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1884](https://issues.apache.org/jira/browse/YARN-1884) | ContainerReport should have nodeHttpAddress |  Major | . | Zhijie Shen | Xuan Gong |
| [YARN-1809](https://issues.apache.org/jira/browse/YARN-1809) | Synchronize RM and Generic History Service Web-UIs |  Major | . | Zhijie Shen | Xuan Gong |
| [YARN-1723](https://issues.apache.org/jira/browse/YARN-1723) | AMRMClientAsync missing blacklist addition and removal functionality |  Major | . | Bikas Saha | Bartosz Ługowski |
| [YARN-1514](https://issues.apache.org/jira/browse/YARN-1514) | Utility to benchmark ZKRMStateStore#loadState for ResourceManager-HA |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-3217](https://issues.apache.org/jira/browse/YARN-3217) | Remove httpclient dependency from hadoop-yarn-server-web-proxy |  Major | . | Akira AJISAKA | Brahma Reddy Battula |
| [YARN-2949](https://issues.apache.org/jira/browse/YARN-2949) | Add documentation for CGroups |  Major | documentation, nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-2213](https://issues.apache.org/jira/browse/YARN-2213) | Change proxy-user cookie log in AmIpFilter to DEBUG |  Minor | . | Ted Yu | Varun Saxena |


