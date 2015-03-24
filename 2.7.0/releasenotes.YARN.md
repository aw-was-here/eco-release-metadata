# Hadoop YARN 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [YARN-3393](https://issues.apache.org/jira/browse/YARN-3393) | *Critical* | **Getting application(s) goes wrong when app finishes before starting the attempt**
---

* [YARN-3384](https://issues.apache.org/jira/browse/YARN-3384) | *Minor* | **TestLogAggregationService.verifyContainerLogs fails after YARN-2777**
---

* [YARN-3379](https://issues.apache.org/jira/browse/YARN-3379) | *Major* | **Missing data in localityTable and ResourceRequests table in RM WebUI**
---

* [YARN-3369](https://issues.apache.org/jira/browse/YARN-3369) | *Blocker* | **Missing NullPointer check in AppSchedulingInfo causes RM to die**
---

* [YARN-3349](https://issues.apache.org/jira/browse/YARN-3349) | *Minor* | **Treat all exceptions as failure in TestFSRMStateStore#testFSRMStateStoreClientRetry**
---

* [YARN-3338](https://issues.apache.org/jira/browse/YARN-3338) | *Blocker* | **Exclude jline dependency from YARN**
---

* [YARN-3336](https://issues.apache.org/jira/browse/YARN-3336) | *Critical* | **FileSystem memory leak in DelegationTokenRenewer**
---

* [YARN-3300](https://issues.apache.org/jira/browse/YARN-3300) | *Major* | **outstanding\_resource\_requests table should not be shown in AHS**
---

* [YARN-3296](https://issues.apache.org/jira/browse/YARN-3296) | *Major* | **yarn.nodemanager.container-monitor.process-tree.class is configurable but ResourceCalculatorProcessTree class is marked Private**
---

* [YARN-3295](https://issues.apache.org/jira/browse/YARN-3295) | *Trivial* | **Fix documentation nits found in markdown conversion**
---

* [YARN-3287](https://issues.apache.org/jira/browse/YARN-3287) | *Major* | **TimelineClient kerberos authentication failure uses wrong login context.**
---

* [YARN-3285](https://issues.apache.org/jira/browse/YARN-3285) | *Major* | **Convert branch-2 .apt.vm files of YARN to markdown**
---

* [YARN-3281](https://issues.apache.org/jira/browse/YARN-3281) | *Minor* | **Add RMStateStore to StateMachine visualization list**
---

* [YARN-3275](https://issues.apache.org/jira/browse/YARN-3275) | *Major* | **CapacityScheduler: Preemption happening on non-preemptable queues**
---

* [YARN-3272](https://issues.apache.org/jira/browse/YARN-3272) | *Major* | **Surface container locality info in RM web UI**
---

* [YARN-3270](https://issues.apache.org/jira/browse/YARN-3270) | *Minor* | **node label expression not getting set in ApplicationSubmissionContext**
---

* [YARN-3267](https://issues.apache.org/jira/browse/YARN-3267) | *Major* | **Timelineserver applies the ACL rules after applying the limit on the number of records**
---

* [YARN-3265](https://issues.apache.org/jira/browse/YARN-3265) | *Blocker* | **CapacityScheduler deadlock when computing absolute max avail capacity (fix for trunk/branch-2)**
---

* [YARN-3262](https://issues.apache.org/jira/browse/YARN-3262) | *Major* | ** Surface application outstanding resource requests table in RM web UI**
---

* [YARN-3256](https://issues.apache.org/jira/browse/YARN-3256) | *Major* | **TestClientToAMTokens#testClientTokenRace is not running against all Schedulers even when using ParameterizedSchedulerTestBase**
---

* [YARN-3255](https://issues.apache.org/jira/browse/YARN-3255) | *Major* | **RM, NM, JobHistoryServer, and WebAppProxyServer's main() should support generic options**
---

* [YARN-3249](https://issues.apache.org/jira/browse/YARN-3249) | *Minor* | **Add a "kill application" button to Resource Manager's Web UI**
---

* [YARN-3242](https://issues.apache.org/jira/browse/YARN-3242) | *Critical* | **Asynchrony in ZK-close can lead to ZKRMStateStore watcher receiving events for old client**
---

* [YARN-3239](https://issues.apache.org/jira/browse/YARN-3239) | *Major* | **WebAppProxy does not support a final tracking url which has query fragments and params**
---

* [YARN-3238](https://issues.apache.org/jira/browse/YARN-3238) | *Blocker* | **Connection timeouts to nodemanagers are retried at multiple levels**
---

* [YARN-3237](https://issues.apache.org/jira/browse/YARN-3237) | *Major* | **AppLogAggregatorImpl fails to log error cause**
---

* [YARN-3236](https://issues.apache.org/jira/browse/YARN-3236) | *Trivial* | **cleanup RMAuthenticationFilter#AUTH\_HANDLER\_PROPERTY.**
---

* [YARN-3231](https://issues.apache.org/jira/browse/YARN-3231) | *Critical* | **FairScheduler: Changing queueMaxRunningApps interferes with pending jobs**
---

* [YARN-3230](https://issues.apache.org/jira/browse/YARN-3230) | *Major* | **Clarify application states on the web UI**
---

* [YARN-3227](https://issues.apache.org/jira/browse/YARN-3227) | *Critical* | **Timeline renew delegation token fails when RM user's TGT is expired**
---

* [YARN-3222](https://issues.apache.org/jira/browse/YARN-3222) | *Critical* | **RMNodeImpl#ReconnectNodeTransition should send scheduler events in sequential order**
---

* [YARN-3217](https://issues.apache.org/jira/browse/YARN-3217) | *Major* | **Remove httpclient dependency from hadoop-yarn-server-web-proxy**
---

* [YARN-3207](https://issues.apache.org/jira/browse/YARN-3207) | *Major* | **secondary filter matches entites which do not have the key being filtered for.**
---

* [YARN-3203](https://issues.apache.org/jira/browse/YARN-3203) | *Minor* | **Correct a log message in AuxServices**
---

* [YARN-3195](https://issues.apache.org/jira/browse/YARN-3195) | *Minor* | **Add -help to yarn logs and nodes CLI command**
---

* [YARN-3194](https://issues.apache.org/jira/browse/YARN-3194) | *Blocker* | **RM should handle NMContainerStatuses sent by NM while registering if NM is Reconnected node**
---

* [YARN-3191](https://issues.apache.org/jira/browse/YARN-3191) | *Trivial* | **Log object should be initialized with its own class**
---

* [YARN-3187](https://issues.apache.org/jira/browse/YARN-3187) | *Major* | **Documentation of Capacity Scheduler Queue mapping based on user or group**
---

* [YARN-3182](https://issues.apache.org/jira/browse/YARN-3182) | *Minor* | **Cleanup switch statement in ApplicationMasterLauncher#handle()**
---

* [YARN-3179](https://issues.apache.org/jira/browse/YARN-3179) | *Minor* | **Update use of Iterator to Iterable**
---

* [YARN-3171](https://issues.apache.org/jira/browse/YARN-3171) | *Minor* | **Sort by Application id, AppAttempt & ContainerID doesn't work in ATS / RM web ui**
---

* [YARN-3164](https://issues.apache.org/jira/browse/YARN-3164) | *Minor* | **rmadmin command usage prints incorrect command name**
---

* [YARN-3160](https://issues.apache.org/jira/browse/YARN-3160) | *Major* | **Non-atomic operation on nodeUpdateQueue in RMNodeImpl**
---

* [YARN-3158](https://issues.apache.org/jira/browse/YARN-3158) | *Major* | **Correct log messages in ResourceTrackerService**
---

* [YARN-3157](https://issues.apache.org/jira/browse/YARN-3157) | *Minor* | **Refactor the exception handling in ConverterUtils#to*Id**
---

* [YARN-3155](https://issues.apache.org/jira/browse/YARN-3155) | *Minor* | **Refactor the exception handling code for TimelineClientImpl's retryOn method**
---

* [YARN-3154](https://issues.apache.org/jira/browse/YARN-3154) | *Blocker* | **Should not upload partial logs for MR jobs or other "short-running' applications**
---

* [YARN-3151](https://issues.apache.org/jira/browse/YARN-3151) | *Minor* | **On Failover tracking url wrong in application cli for KILLED application**
---

* [YARN-3149](https://issues.apache.org/jira/browse/YARN-3149) | *Trivial* | **Typo in message for invalid application id**
---

* [YARN-3147](https://issues.apache.org/jira/browse/YARN-3147) | *Major* | **Clean up RM web proxy code**
---

* [YARN-3145](https://issues.apache.org/jira/browse/YARN-3145) | *Major* | **ConcurrentModificationException on CapacityScheduler ParentQueue#getQueueUserAclInfo**
---

* [YARN-3144](https://issues.apache.org/jira/browse/YARN-3144) | *Major* | **Configuration for making delegation token failures to timeline server not-fatal**
---

* [YARN-3143](https://issues.apache.org/jira/browse/YARN-3143) | *Major* | **RM Apps REST API can return NPE or entries missing id and other fields**
---

* [YARN-3132](https://issues.apache.org/jira/browse/YARN-3132) | *Major* | **RMNodeLabelsManager should remove node from node-to-label mapping when node becomes deactivated**
---

* [YARN-3131](https://issues.apache.org/jira/browse/YARN-3131) | *Major* | **YarnClientImpl should check FAILED and KILLED state in submitApplication**
---

* [YARN-3124](https://issues.apache.org/jira/browse/YARN-3124) | *Major* | **Capacity Scheduler LeafQueue/ParentQueue should use QueueCapacities to track capacities-by-label**
---

* [YARN-3123](https://issues.apache.org/jira/browse/YARN-3123) | *Major* | **Make YARN CLI show a single completed container even if the app is running**
---

* [YARN-3122](https://issues.apache.org/jira/browse/YARN-3122) | *Major* | **Metrics for container's actual CPU usage**
---

* [YARN-3113](https://issues.apache.org/jira/browse/YARN-3113) | *Major* | **Release audit warning for "Sorting icons.psd"**
---

* [YARN-3108](https://issues.apache.org/jira/browse/YARN-3108) | *Major* | **ApplicationHistoryServer doesn't process -D arguments**
---

* [YARN-3104](https://issues.apache.org/jira/browse/YARN-3104) | *Major* | **RM generates new AMRM tokens every heartbeat between rolling and activation**
---

* [YARN-3103](https://issues.apache.org/jira/browse/YARN-3103) | *Blocker* | **AMRMClientImpl does not update AMRM token properly**
---

* [YARN-3101](https://issues.apache.org/jira/browse/YARN-3101) | *Major* | **In Fair Scheduler, fix canceling of reservations for exceeding max share**
---

* [YARN-3100](https://issues.apache.org/jira/browse/YARN-3100) | *Major* | **Make YARN authorization pluggable**
---

* [YARN-3099](https://issues.apache.org/jira/browse/YARN-3099) | *Major* | **Capacity Scheduler LeafQueue/ParentQueue should use ResourceUsage to track used-resources-by-label.**
---

* [YARN-3098](https://issues.apache.org/jira/browse/YARN-3098) | *Major* | **Create common QueueCapacities class in Capacity Scheduler to track capacities-by-labels of queues**
---

* [YARN-3094](https://issues.apache.org/jira/browse/YARN-3094) | *Major* | **reset timer for liveness monitors after RM recovery**
---

* [YARN-3092](https://issues.apache.org/jira/browse/YARN-3092) | *Major* | **Create common ResourceUsage class to track labeled resource usages in Capacity Scheduler**
---

* [YARN-3090](https://issues.apache.org/jira/browse/YARN-3090) | *Major* | **DeletionService can silently ignore deletion task failures**
---

* [YARN-3089](https://issues.apache.org/jira/browse/YARN-3089) | *Blocker* | **LinuxContainerExecutor does not handle file arguments to deleteAsUser**
---

* [YARN-3088](https://issues.apache.org/jira/browse/YARN-3088) | *Major* | **LinuxContainerExecutor.deleteAsUser can throw NPE if native executor returns an error**
---

* [YARN-3086](https://issues.apache.org/jira/browse/YARN-3086) | *Minor* | **Make NodeManager memory configurable in MiniYARNCluster**
---

* [YARN-3085](https://issues.apache.org/jira/browse/YARN-3085) | *Major* | **Application summary should include the application type**
---

* [YARN-3079](https://issues.apache.org/jira/browse/YARN-3079) | *Major* | **Scheduler should also update maximumAllocation when updateNodeResource.**
---

* [YARN-3078](https://issues.apache.org/jira/browse/YARN-3078) | *Minor* | **LogCLIHelpers lacks of a blank space before string 'does not exist'**
---

* [YARN-3077](https://issues.apache.org/jira/browse/YARN-3077) | *Major* | **RM should create yarn.resourcemanager.zk-state-store.parent-path recursively**
---

* [YARN-3076](https://issues.apache.org/jira/browse/YARN-3076) | *Major* | **Add API/Implementation to YarnClient to retrieve label-to-node mapping**
---

* [YARN-3075](https://issues.apache.org/jira/browse/YARN-3075) | *Major* | **NodeLabelsManager implementation to retrieve label to node mapping**
---

* [YARN-3074](https://issues.apache.org/jira/browse/YARN-3074) | *Major* | **Nodemanager dies when localizer runner tries to write to a full disk**
---

* [YARN-3071](https://issues.apache.org/jira/browse/YARN-3071) | *Trivial* | **Remove invalid char from sample conf in doc of FairScheduler**
---

* [YARN-3070](https://issues.apache.org/jira/browse/YARN-3070) | *Minor* | **TestRMAdminCLI#testHelp fails for transitionToActive command**
---

* [YARN-3064](https://issues.apache.org/jira/browse/YARN-3064) | *Critical* | **TestRMRestart/TestContainerResourceUsage/TestNodeManagerResync failure with allocation timeout**
---

* [YARN-3058](https://issues.apache.org/jira/browse/YARN-3058) | *Minor* | **Fix error message of tokens' activation delay configuration**
---

* [YARN-3056](https://issues.apache.org/jira/browse/YARN-3056) | *Trivial* | **add verification for containerLaunchDuration in TestNodeManagerMetrics.**
---

* [YARN-3028](https://issues.apache.org/jira/browse/YARN-3028) | *Major* | **Better syntax for replaceLabelsOnNode in RMAdmin CLI**
---

* [YARN-3027](https://issues.apache.org/jira/browse/YARN-3027) | *Major* | **Scheduler should use totalAvailable resource from node instead of availableResource for maxAllocation**
---

* [YARN-3024](https://issues.apache.org/jira/browse/YARN-3024) | *Major* | **LocalizerRunner should give DIE action when all resources are localized**
---

* [YARN-3022](https://issues.apache.org/jira/browse/YARN-3022) | *Major* | **Expose Container resource information from NodeManager for monitoring**
---

* [YARN-3015](https://issues.apache.org/jira/browse/YARN-3015) | *Minor* | **yarn classpath command should support same options as hadoop classpath.**
---

* [YARN-3014](https://issues.apache.org/jira/browse/YARN-3014) | *Major* | **Replaces labels on a host should update all NM's labels on that host**
---

* [YARN-3011](https://issues.apache.org/jira/browse/YARN-3011) | *Major* | **NM dies because of the failure of resource localization**
---

* [YARN-3010](https://issues.apache.org/jira/browse/YARN-3010) | *Minor* | **Fix recent findbug issue in AbstractYarnScheduler**
---

* [YARN-3005](https://issues.apache.org/jira/browse/YARN-3005) | *Trivial* | **[JDK7] Use switch statement for String instead of if-else statement in RegistrySecurity.java**
---

* [YARN-2998](https://issues.apache.org/jira/browse/YARN-2998) | *Major* | **Abstract out scheduler independent PlanFollower components**
---

* [YARN-2997](https://issues.apache.org/jira/browse/YARN-2997) | *Major* | **NM keeps sending already-sent completed containers to RM until containers are removed from context**
---

* [YARN-2996](https://issues.apache.org/jira/browse/YARN-2996) | *Major* | **Refine fs operations in FileSystemRMStateStore and few fixes**
---

* [YARN-2994](https://issues.apache.org/jira/browse/YARN-2994) | *Major* | **Document work-preserving RM restart**
---

* [YARN-2993](https://issues.apache.org/jira/browse/YARN-2993) | *Major* | **Several fixes (missing acl check, error log msg ...) and some refinement in AdminService**
---

* [YARN-2992](https://issues.apache.org/jira/browse/YARN-2992) | *Blocker* | **ZKRMStateStore crashes due to session expiry**
---

* [YARN-2991](https://issues.apache.org/jira/browse/YARN-2991) | *Blocker* | **TestRMRestart.testDecomissionedNMsMetricsOnRMRestart intermittently fails on trunk**
---

* [YARN-2990](https://issues.apache.org/jira/browse/YARN-2990) | *Major* | **FairScheduler's delay-scheduling always waits for node-local and rack-local delays, even for off-rack-only requests**
---

* [YARN-2988](https://issues.apache.org/jira/browse/YARN-2988) | *Minor* | **Graph#save() may leak file descriptors**
---

* [YARN-2987](https://issues.apache.org/jira/browse/YARN-2987) | *Major* | **ClientRMService#getQueueInfo doesn't check app ACLs**
---

* [YARN-2984](https://issues.apache.org/jira/browse/YARN-2984) | *Major* | **Metrics for container's actual memory usage**
---

* [YARN-2983](https://issues.apache.org/jira/browse/YARN-2983) | *Major* | **NPE possible in ClientRMService#getQueueInfo**
---

* [YARN-2978](https://issues.apache.org/jira/browse/YARN-2978) | *Critical* | **ResourceManager crashes with NPE while getting queue info**
---

* [YARN-2977](https://issues.apache.org/jira/browse/YARN-2977) | *Major* | **TestNMClient get failed intermittently**
---

* [YARN-2975](https://issues.apache.org/jira/browse/YARN-2975) | *Blocker* | **FSLeafQueue app lists are accessed without required locks**
---

* [YARN-2972](https://issues.apache.org/jira/browse/YARN-2972) | *Major* | **DelegationTokenRenewer thread pool never expands**
---

* [YARN-2971](https://issues.apache.org/jira/browse/YARN-2971) | *Major* | **RM uses conf instead of token service address to renew timeline delegation tokens**
---

* [YARN-2970](https://issues.apache.org/jira/browse/YARN-2970) | *Minor* | **NodeLabel operations in RMAdmin CLI get missing in help command.**
---

* [YARN-2964](https://issues.apache.org/jira/browse/YARN-2964) | *Blocker* | **RM prematurely cancels tokens for jobs that submit jobs (oozie)**
---

* [YARN-2958](https://issues.apache.org/jira/browse/YARN-2958) | *Blocker* | **RMStateStore seems to unnecessarily and wrongly store sequence number separately**
---

* [YARN-2957](https://issues.apache.org/jira/browse/YARN-2957) | *Minor* | **Create unit test to automatically compare YarnConfiguration and yarn-default.xml**
---

* [YARN-2956](https://issues.apache.org/jira/browse/YARN-2956) | *Minor* | **Some yarn-site index linked pages are difficult to discover because are not in the side bar**
---

* [YARN-2952](https://issues.apache.org/jira/browse/YARN-2952) | *Major* | **Incorrect version check in RMStateStore**
---

* [YARN-2950](https://issues.apache.org/jira/browse/YARN-2950) | *Minor* | **Change message to mandate, not suggest JS requirement on UI**
---

* [YARN-2949](https://issues.apache.org/jira/browse/YARN-2949) | *Major* | **Add documentation for CGroups**
---

* [YARN-2945](https://issues.apache.org/jira/browse/YARN-2945) | *Major* | **FSLeafQueue#assignContainer - document the reason for using both write and read locks**
---

* [YARN-2944](https://issues.apache.org/jira/browse/YARN-2944) | *Minor* | **InMemorySCMStore can not be instantiated with ReflectionUtils#newInstance**
---

* [YARN-2943](https://issues.apache.org/jira/browse/YARN-2943) | *Major* | **Add a node-labels page in RM web UI**
---

* [YARN-2940](https://issues.apache.org/jira/browse/YARN-2940) | *Major* | **Fix new findbugs warnings in rest of the hadoop-yarn components**
---

* [YARN-2939](https://issues.apache.org/jira/browse/YARN-2939) | *Major* | **Fix new findbugs warnings in hadoop-yarn-common**
---

* [YARN-2938](https://issues.apache.org/jira/browse/YARN-2938) | *Major* | **Fix new findbugs warnings in hadoop-yarn-resourcemanager and hadoop-yarn-applicationhistoryservice**
---

* [YARN-2937](https://issues.apache.org/jira/browse/YARN-2937) | *Major* | **Fix new findbugs warnings in hadoop-yarn-nodemanager**
---

* [YARN-2936](https://issues.apache.org/jira/browse/YARN-2936) | *Major* | **YARNDelegationTokenIdentifier doesn't set proto.builder now**
---

* [YARN-2933](https://issues.apache.org/jira/browse/YARN-2933) | *Major* | **Capacity Scheduler preemption policy should only consider capacity without labels temporarily**
---

* [YARN-2932](https://issues.apache.org/jira/browse/YARN-2932) | *Major* | **Add entry for "preemptable" status (enabled/disabled) to scheduler web UI and queue initialize/refresh logging**
---

* [YARN-2931](https://issues.apache.org/jira/browse/YARN-2931) | *Critical* | **PublicLocalizer may fail until directory is initialized by LocalizeRunner**
---

* [YARN-2930](https://issues.apache.org/jira/browse/YARN-2930) | *Minor* | **TestRMRestart#testRMRestartRecoveringNodeLabelManager sometimes fails against Java 7 & 8**
---

* [YARN-2927](https://issues.apache.org/jira/browse/YARN-2927) | *Major* | **InMemorySCMStore properties are inconsistent**
---

* [YARN-2924](https://issues.apache.org/jira/browse/YARN-2924) | *Major* | **Node to labels mapping should not transfer to lowercase when adding from RMAdminCLI**
---

* [YARN-2922](https://issues.apache.org/jira/browse/YARN-2922) | *Major* | **ConcurrentModificationException in CapacityScheduler's LeafQueue**
---

* [YARN-2920](https://issues.apache.org/jira/browse/YARN-2920) | *Major* | **CapacityScheduler should be notified when labels on nodes changed**
---

* [YARN-2917](https://issues.apache.org/jira/browse/YARN-2917) | *Critical* | **Potential deadlock in AsyncDispatcher when system.exit called in AsyncDispatcher#dispatch and AsyscDispatcher#serviceStop from shutdown hook**
---

* [YARN-2914](https://issues.apache.org/jira/browse/YARN-2914) | *Minor* | **Potential race condition in Singleton implementation of SharedCacheUploaderMetrics, CleanerMetrics, ClientSCMMetrics**
---

* [YARN-2912](https://issues.apache.org/jira/browse/YARN-2912) | *Major* | **Jersey Tests failing with port in use**
---

* [YARN-2910](https://issues.apache.org/jira/browse/YARN-2910) | *Major* | **FSLeafQueue can throw ConcurrentModificationException**
---

* [YARN-2907](https://issues.apache.org/jira/browse/YARN-2907) | *Trivial* | **SchedulerNode#toString should print all resource detail instead of only memory.**
---

* [YARN-2906](https://issues.apache.org/jira/browse/YARN-2906) | *Major* | **CapacitySchedulerPage shows HTML tags for a queue's Active Users**
---

* [YARN-2905](https://issues.apache.org/jira/browse/YARN-2905) | *Blocker* | **AggregatedLogsBlock page can infinitely loop if the aggregated log file is corrupted**
---

* [YARN-2899](https://issues.apache.org/jira/browse/YARN-2899) | *Minor* | **Run TestDockerContainerExecutorWithMocks on Linux only**
---

* [YARN-2897](https://issues.apache.org/jira/browse/YARN-2897) | *Major* | **CrossOriginFilter needs more log statements**
---

* [YARN-2894](https://issues.apache.org/jira/browse/YARN-2894) | *Major* | **When ACL's are enabled, if RM switches then application can not be viewed from web.**
---

* [YARN-2891](https://issues.apache.org/jira/browse/YARN-2891) | *Minor* | **Failed Container Executor does not provide a clear error message**
---

* [YARN-2881](https://issues.apache.org/jira/browse/YARN-2881) | *Major* | **Implement PlanFollower for FairScheduler**
---

* [YARN-2880](https://issues.apache.org/jira/browse/YARN-2880) | *Major* | **Add a test in TestRMRestart to make sure node labels will be recovered if it is enabled**
---

* [YARN-2878](https://issues.apache.org/jira/browse/YARN-2878) | *Major* | **Fix DockerContainerExecutor.apt.vm formatting**
---

* [YARN-2874](https://issues.apache.org/jira/browse/YARN-2874) | *Blocker* | **Dead lock in "DelegationTokenRenewer" which blocks RM to execute any further apps**
---

* [YARN-2870](https://issues.apache.org/jira/browse/YARN-2870) | *Trivial* | **Update examples in document of Timeline Server**
---

* [YARN-2869](https://issues.apache.org/jira/browse/YARN-2869) | *Major* | **CapacityScheduler should trim sub queue names when parse configuration**
---

* [YARN-2865](https://issues.apache.org/jira/browse/YARN-2865) | *Critical* | **Application recovery continuously fails with "Application with id already present. Cannot duplicate"**
---

* [YARN-2861](https://issues.apache.org/jira/browse/YARN-2861) | *Major* | **Timeline DT secret manager should not reuse the RM's configs.**
---

* [YARN-2857](https://issues.apache.org/jira/browse/YARN-2857) | *Critical* | **ConcurrentModificationException in ContainerLogAppender**
---

* [YARN-2856](https://issues.apache.org/jira/browse/YARN-2856) | *Critical* | **Application recovery throw InvalidStateTransitonException: Invalid event: ATTEMPT\_KILLED at ACCEPTED**
---

* [YARN-2854](https://issues.apache.org/jira/browse/YARN-2854) | *Critical* | **The document about timeline service and generic service needs to be updated**
---

* [YARN-2847](https://issues.apache.org/jira/browse/YARN-2847) | *Major* | **Linux native container executor segfaults if default banned user detected**
---

* [YARN-2837](https://issues.apache.org/jira/browse/YARN-2837) | *Blocker* | **Timeline server needs to recover the timeline DT when restarting**
---

* [YARN-2820](https://issues.apache.org/jira/browse/YARN-2820) | *Major* | ** Retry in FileSystemRMStateStore when FS's operations fail due to IOException.**
---

* [YARN-2816](https://issues.apache.org/jira/browse/YARN-2816) | *Major* | **NM fail to start with NPE during container recovery**
---

* [YARN-2815](https://issues.apache.org/jira/browse/YARN-2815) | *Major* | **Remove jline from hadoop-yarn-server-common**
---

* [YARN-2811](https://issues.apache.org/jira/browse/YARN-2811) | *Major* | **In Fair Scheduler, reservation fulfillments shouldn't ignore max share**
---

* [YARN-2809](https://issues.apache.org/jira/browse/YARN-2809) | *Major* | **Implement workaround for linux kernel panic when removing cgroup**
---

* [YARN-2808](https://issues.apache.org/jira/browse/YARN-2808) | *Major* | **yarn client tool can not list app\_attempt's container info correctly**
---

* [YARN-2807](https://issues.apache.org/jira/browse/YARN-2807) | *Minor* | **Option "--forceactive" not works as described in usage of "yarn rmadmin -transitionToActive"**
---

* [YARN-2802](https://issues.apache.org/jira/browse/YARN-2802) | *Major* | **ClusterMetrics to include AM launch and register delays**
---

* [YARN-2800](https://issues.apache.org/jira/browse/YARN-2800) | *Major* | **Remove MemoryNodeLabelsStore and add a way to enable/disable node labels feature**
---

* [YARN-2799](https://issues.apache.org/jira/browse/YARN-2799) | *Minor* | **cleanup TestLogAggregationService based on the change in YARN-90**
---

* [YARN-2797](https://issues.apache.org/jira/browse/YARN-2797) | *Minor* | **TestWorkPreservingRMRestart should use ParametrizedSchedulerTestBase**
---

* [YARN-2786](https://issues.apache.org/jira/browse/YARN-2786) | *Major* | **Create yarn cluster CLI to enable list node labels collection**
---

* [YARN-2780](https://issues.apache.org/jira/browse/YARN-2780) | *Minor* | **Log aggregated resource allocation in rm-appsummary.log**
---

* [YARN-2777](https://issues.apache.org/jira/browse/YARN-2777) | *Major* | **Mark the end of individual log in aggregated log**
---

* [YARN-2766](https://issues.apache.org/jira/browse/YARN-2766) | *Major* | ** ApplicationHistoryManager is expected to return a sorted list of apps/attempts/containers**
---

* [YARN-2765](https://issues.apache.org/jira/browse/YARN-2765) | *Major* | **Add leveldb-based implementation for RMStateStore**
---

* [YARN-2762](https://issues.apache.org/jira/browse/YARN-2762) | *Minor* | **RMAdminCLI node-labels-related args should be trimmed and checked before sending to RM**
---

* [YARN-2749](https://issues.apache.org/jira/browse/YARN-2749) | *Major* | **Some testcases from TestLogAggregationService fails in trunk**
---

* [YARN-2742](https://issues.apache.org/jira/browse/YARN-2742) | *Minor* | **FairSchedulerConfiguration should allow extra spaces between value and unit**
---

* [YARN-2738](https://issues.apache.org/jira/browse/YARN-2738) | *Major* | **Add FairReservationSystem for FairScheduler**
---

* [YARN-2735](https://issues.apache.org/jira/browse/YARN-2735) | *Trivial* | **diskUtilizationPercentageCutoff and diskUtilizationSpaceCutoff are initialized twice in DirectoryCollection**
---

* [YARN-2731](https://issues.apache.org/jira/browse/YARN-2731) | *Major* | **Fixed RegisterApplicationMasterResponsePBImpl to properly invoke maybeInitBuilder**
---

* [YARN-2713](https://issues.apache.org/jira/browse/YARN-2713) | *Major* | **"RM Home" link in NM should point to one of the RMs in an HA setup**
---

* [YARN-2712](https://issues.apache.org/jira/browse/YARN-2712) | *Major* | **TestWorkPreservingRMRestart: Augment FS tests with queue and headroom checks**
---

* [YARN-2697](https://issues.apache.org/jira/browse/YARN-2697) | *Major* | **RMAuthenticationHandler is no longer useful**
---

* [YARN-2694](https://issues.apache.org/jira/browse/YARN-2694) | *Major* | **Ensure only single node labels specified in resource request / host, and node label expression only specified when resourceName=ANY**
---

* [YARN-2690](https://issues.apache.org/jira/browse/YARN-2690) | *Major* | **Make ReservationSystem and its dependent classes independent of Scheduler type**
---

* [YARN-2683](https://issues.apache.org/jira/browse/YARN-2683) | *Major* | **registry config options: document and move to core-default**
---

* [YARN-2679](https://issues.apache.org/jira/browse/YARN-2679) | *Major* | **Add metric for container launch duration**
---

* [YARN-2675](https://issues.apache.org/jira/browse/YARN-2675) | *Major* | **containersKilled metrics is not updated when the container is killed during localization**
---

* [YARN-2669](https://issues.apache.org/jira/browse/YARN-2669) | *Major* | **FairScheduler: queue names shouldn't allow periods**
---

* [YARN-2643](https://issues.apache.org/jira/browse/YARN-2643) | *Trivial* | **Don't create a new DominantResourceCalculator on every FairScheduler.allocate call**
---

* [YARN-2641](https://issues.apache.org/jira/browse/YARN-2641) | *Major* | **Decommission nodes on -refreshNodes instead of next NM-RM heartbeat**
---

* [YARN-2637](https://issues.apache.org/jira/browse/YARN-2637) | *Critical* | **maximum-am-resource-percent could be respected for both LeafQueue/User when trying to activate applications.**
---

* [YARN-2616](https://issues.apache.org/jira/browse/YARN-2616) | *Major* | **Add CLI client to the registry to list, view and manipulate entries**
---

* [YARN-2604](https://issues.apache.org/jira/browse/YARN-2604) | *Major* | **Scheduler should consider max-allocation-* in conjunction with the largest node**
---

* [YARN-2574](https://issues.apache.org/jira/browse/YARN-2574) | *Major* | **Add support for FairScheduler to the ReservationSystem**
---

* [YARN-2543](https://issues.apache.org/jira/browse/YARN-2543) | *Major* | **Resource usage should be published to the timeline server as well**
---

* [YARN-2461](https://issues.apache.org/jira/browse/YARN-2461) | *Minor* | **Fix PROCFS\_USE\_SMAPS\_BASED\_RSS\_ENABLED property in YarnConfiguration**
---

* [YARN-2432](https://issues.apache.org/jira/browse/YARN-2432) | *Major* | **RMStateStore should process the pending events before close**
---

* [YARN-2427](https://issues.apache.org/jira/browse/YARN-2427) | *Major* | **Add support for moving apps between queues in RM web services**
---

* [YARN-2414](https://issues.apache.org/jira/browse/YARN-2414) | *Major* | **RM web UI: app page will crash if app is failed before any attempt has been created**
---

* [YARN-2404](https://issues.apache.org/jira/browse/YARN-2404) | *Major* | **Remove ApplicationAttemptState and ApplicationState class in RMStateStore class**
---

* [YARN-2375](https://issues.apache.org/jira/browse/YARN-2375) | *Major* | **Allow enabling/disabling timeline server per framework**
---

* [YARN-2360](https://issues.apache.org/jira/browse/YARN-2360) | *Major* | **Fair Scheduler: Display dynamic fair share for queues on the scheduler page**
---

* [YARN-2356](https://issues.apache.org/jira/browse/YARN-2356) | *Minor* | **yarn status command for non-existent application/application attempt/container is too verbose**
---

* [YARN-2340](https://issues.apache.org/jira/browse/YARN-2340) | *Critical* | **NPE thrown when RM restart after queue is STOPPED. There after RM can not recovery application's and remain in standby**
---

* [YARN-2315](https://issues.apache.org/jira/browse/YARN-2315) | *Major* | **FairScheduler: Set current capacity in addition to capacity**
---

* [YARN-2301](https://issues.apache.org/jira/browse/YARN-2301) | *Major* | **Improve yarn container command**
---

* [YARN-2254](https://issues.apache.org/jira/browse/YARN-2254) | *Minor* | **TestRMWebServicesAppsModification should run against both CS and FS**
---

* [YARN-2246](https://issues.apache.org/jira/browse/YARN-2246) | *Major* | **Job History Link in RM UI is redirecting to the URL which contains Job Id twice**
---

* [YARN-2236](https://issues.apache.org/jira/browse/YARN-2236) | *Major* | **Shared Cache uploader service on the Node Manager**
---

* [YARN-2230](https://issues.apache.org/jira/browse/YARN-2230) | *Minor* | **Fix description of yarn.scheduler.maximum-allocation-vcores in yarn-default.xml (or code)**

I have modified the description of the yarn.scheduler.maximum-allocation-vcores setting in yarn-default.xml to be reflective of the actual behavior (throw InvalidRequestException when the limit is crossed).

Since this is a documentation change, I have not added any test cases.

Please review the patch, thanks!

---

* [YARN-2217](https://issues.apache.org/jira/browse/YARN-2217) | *Major* | **Shared cache client side changes**
---

* [YARN-2203](https://issues.apache.org/jira/browse/YARN-2203) | *Major* | **Web UI for cache manager**
---

* [YARN-2190](https://issues.apache.org/jira/browse/YARN-2190) | *Major* | **Add CPU and memory limit options to the default container executor for Windows containers**
---

* [YARN-2189](https://issues.apache.org/jira/browse/YARN-2189) | *Major* | **Admin service for cache manager**
---

* [YARN-2188](https://issues.apache.org/jira/browse/YARN-2188) | *Major* | **Client service for cache manager**
---

* [YARN-2186](https://issues.apache.org/jira/browse/YARN-2186) | *Major* | **Node Manager uploader service for cache manager**
---

* [YARN-2183](https://issues.apache.org/jira/browse/YARN-2183) | *Major* | **Cleaner service for cache manager**
---

* [YARN-2180](https://issues.apache.org/jira/browse/YARN-2180) | *Major* | **In-memory backing store for cache manager**
---

* [YARN-2179](https://issues.apache.org/jira/browse/YARN-2179) | *Major* | **Initial cache manager structure and context**
---

* [YARN-2165](https://issues.apache.org/jira/browse/YARN-2165) | *Major* | **Timeline server should validate the numeric configuration values**
---

* [YARN-2157](https://issues.apache.org/jira/browse/YARN-2157) | *Major* | **Document YARN metrics**
---

* [YARN-2136](https://issues.apache.org/jira/browse/YARN-2136) | *Major* | **RMStateStore can explicitly handle store/update events when fenced**
---

* [YARN-2079](https://issues.apache.org/jira/browse/YARN-2079) | *Major* | **Recover NonAggregatingLogHandler state upon nodemanager restart**
---

* [YARN-2056](https://issues.apache.org/jira/browse/YARN-2056) | *Major* | **Disable preemption at Queue level**
---

* [YARN-1984](https://issues.apache.org/jira/browse/YARN-1984) | *Major* | **LeveldbTimelineStore does not handle db exceptions properly**
---

* [YARN-1979](https://issues.apache.org/jira/browse/YARN-1979) | *Major* | **TestDirectoryCollection fails when the umask is unusual**
---

* [YARN-1904](https://issues.apache.org/jira/browse/YARN-1904) | *Major* | **Uniform the XXXXNotFound messages from ClientRMService and ApplicationHistoryClientService**

I just committed this. Thanks Zhijie!

---

* [YARN-1884](https://issues.apache.org/jira/browse/YARN-1884) | *Major* | **ContainerReport should have nodeHttpAddress**
---

* [YARN-1809](https://issues.apache.org/jira/browse/YARN-1809) | *Major* | **Synchronize RM and Generic History Service Web-UIs**
---

* [YARN-1723](https://issues.apache.org/jira/browse/YARN-1723) | *Major* | **AMRMClientAsync missing blacklist addition and removal functionality**
---

* [YARN-1703](https://issues.apache.org/jira/browse/YARN-1703) | *Critical* | **Too many connections are opened for proxy server when applicationMaster UI is accessed.**
---

* [YARN-1615](https://issues.apache.org/jira/browse/YARN-1615) | *Trivial* | **Fix typos in description about delay scheduling**
---

* [YARN-1582](https://issues.apache.org/jira/browse/YARN-1582) | *Major* | **Capacity Scheduler: add a maximum-allocation-mb setting per queue**
---

* [YARN-1580](https://issues.apache.org/jira/browse/YARN-1580) | *Trivial* | **Documentation error regarding "container-allocation.expiry-interval-ms"**
---

* [YARN-1537](https://issues.apache.org/jira/browse/YARN-1537) | *Major* | **TestLocalResourcesTrackerImpl.testLocalResourceCache often failed**
---

* [YARN-1514](https://issues.apache.org/jira/browse/YARN-1514) | *Major* | **Utility to benchmark ZKRMStateStore#loadState for ResourceManager-HA**
---

* [YARN-1453](https://issues.apache.org/jira/browse/YARN-1453) | *Minor* | **[JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments**
---

* [YARN-1393](https://issues.apache.org/jira/browse/YARN-1393) | *Major* | **SLS: Add how-to-use instructions**
---

* [YARN-1299](https://issues.apache.org/jira/browse/YARN-1299) | *Major* | **Improve a log message in AppSchedulingInfo by adding application id**
---

* [YARN-1237](https://issues.apache.org/jira/browse/YARN-1237) | *Minor* | **Description for yarn.nodemanager.aux-services in yarn-default.xml is misleading**
---

* [YARN-1156](https://issues.apache.org/jira/browse/YARN-1156) | *Major* | **Enhance NodeManager AllocatedGB and AvailableGB metrics for aggregation of decimal values**
---

* [YARN-933](https://issues.apache.org/jira/browse/YARN-933) | *Major* | **Potential InvalidStateTransitonException: Invalid event: LAUNCHED at FINAL\_SAVING**
---

* [YARN-570](https://issues.apache.org/jira/browse/YARN-570) | *Major* | **Time strings are formated in different timezone**


