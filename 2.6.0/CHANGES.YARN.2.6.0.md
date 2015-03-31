# Hadoop Changelog

## Release 2.6.0 - 2014-11-18

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2615](https://issues.apache.org/jira/browse/YARN-2615) | ClientToAMTokenIdentifier and DelegationTokenIdentifier should allow extended fields |  Blocker | . | Junping Du | Junping Du |
| [YARN-1051](https://issues.apache.org/jira/browse/YARN-1051) | YARN Admission Control/Planner: enhancing the resource allocation model with time. |  Major | capacityscheduler, resourcemanager, scheduler | Carlo Curino | Carlo Curino |
| [YARN-668](https://issues.apache.org/jira/browse/YARN-668) | TokenIdentifier serialization should consider Unknown fields |  Blocker | . | Siddharth Seth | Junping Du |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2395](https://issues.apache.org/jira/browse/YARN-2395) | FairScheduler: Preemption timeout should be configurable per queue |  Major | fairscheduler | Ashwin Shankar | Wei Yan |
| [YARN-2394](https://issues.apache.org/jira/browse/YARN-2394) | FairScheduler: Configure fairSharePreemptionThreshold per queue |  Major | fairscheduler | Ashwin Shankar | Wei Yan |
| [YARN-2393](https://issues.apache.org/jira/browse/YARN-2393) | FairScheduler: Add the notion of steady fair share |  Major | fairscheduler | Ashwin Shankar | Wei Yan |
| [YARN-2131](https://issues.apache.org/jira/browse/YARN-2131) | Add a way to format the RMStateStore |  Major | resourcemanager | Karthik Kambatla | Robert Kanter |
| [YARN-1964](https://issues.apache.org/jira/browse/YARN-1964) | Create Docker analog of the LinuxContainerExecutor in YARN |  Major | . | Arun C Murthy | Abin Shahab |
| [YARN-415](https://issues.apache.org/jira/browse/YARN-415) | Capture aggregate memory allocation at the app-level for chargeback |  Major | resourcemanager | Kendall Thrapp | Eric Payne |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2627](https://issues.apache.org/jira/browse/YARN-2627) | Add logs when attemptFailuresValidityInterval is enabled |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-2577](https://issues.apache.org/jira/browse/YARN-2577) | Clarify ACL delimiter and how to configure ACL groups only |  Trivial | documentation, fairscheduler | Miklos Christine | Miklos Christine |
| [YARN-2539](https://issues.apache.org/jira/browse/YARN-2539) | FairScheduler: Set the default value for maxAMShare to 0.5 |  Minor | . | Wei Yan | Wei Yan |
| [YARN-2531](https://issues.apache.org/jira/browse/YARN-2531) | CGroups - Admins should be allowed to enforce strict cpu limits |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2448](https://issues.apache.org/jira/browse/YARN-2448) | RM should expose the resource types considered during scheduling when AMs register |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2411](https://issues.apache.org/jira/browse/YARN-2411) | [Capacity Scheduler] support simple user and group mappings to queues |  Major | capacityscheduler | Ram Venkatesh | Ram Venkatesh |
| [YARN-2399](https://issues.apache.org/jira/browse/YARN-2399) | FairScheduler: Merge AppSchedulable and FSSchedulerApp into FSAppAttempt |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-2377](https://issues.apache.org/jira/browse/YARN-2377) | Localization exception stack traces are not passed as diagnostic info |  Major | nodemanager | Gera Shegalov | Gera Shegalov |
| [YARN-2372](https://issues.apache.org/jira/browse/YARN-2372) | There are Chinese Characters in the FairScheduler's document |  Minor | documentation | Fengdong Yu | Fengdong Yu |
| [YARN-2361](https://issues.apache.org/jira/browse/YARN-2361) | RMAppAttempt state machine entries for KILLED state has duplicate event entries |  Trivial | resourcemanager | zhihai xu | zhihai xu |
| [YARN-2352](https://issues.apache.org/jira/browse/YARN-2352) | FairScheduler: Collect metrics on duration of critical methods that affect performance |  Major | scheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-2343](https://issues.apache.org/jira/browse/YARN-2343) | Improve error message on token expire exception |  Trivial | . | Li Lu | Li Lu |
| [YARN-2337](https://issues.apache.org/jira/browse/YARN-2337) | ResourceManager sets ClientRMService in RMContext multiple times |  Trivial | resourcemanager | zhihai xu | zhihai xu |
| [YARN-2323](https://issues.apache.org/jira/browse/YARN-2323) | FairShareComparator creates too many Resource objects |  Minor | fairscheduler | Hong Zhiguo | Hong Zhiguo |
| [YARN-2274](https://issues.apache.org/jira/browse/YARN-2274) | FairScheduler: Add debug information about cluster capacity, availability and reservations |  Trivial | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [YARN-2214](https://issues.apache.org/jira/browse/YARN-2214) | FairScheduler: preemptContainerPreCheck() in FSParentQueue delays convergence towards fairness |  Major | scheduler | Ashwin Shankar | Ashwin Shankar |
| [YARN-2209](https://issues.apache.org/jira/browse/YARN-2209) | Replace AM resync/shutdown command with corresponding exceptions |  Major | . | Jian He | Jian He |
| [YARN-2198](https://issues.apache.org/jira/browse/YARN-2198) | Remove the need to run NodeManager as privileged account for Windows Secure Container Executor |  Major | . | Remus Rusanu | Remus Rusanu |
| [YARN-2197](https://issues.apache.org/jira/browse/YARN-2197) | Add a link to YARN CHANGES.txt in the left side of doc |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1994](https://issues.apache.org/jira/browse/YARN-1994) | Expose YARN/MR endpoints on multiple interfaces |  Major | nodemanager, resourcemanager, webapp | Arpit Agarwal | Craig Welch |
| [YARN-1954](https://issues.apache.org/jira/browse/YARN-1954) | Add waitFor to AMRMClient(Async) |  Major | client | Zhijie Shen | Tsuyoshi Ozawa |
| [YARN-1918](https://issues.apache.org/jira/browse/YARN-1918) | Typo in description and error message for 'yarn.resourcemanager.cluster-id' |  Trivial | . | Devaraj K | Anandha L Ranganathan |
| [YARN-1769](https://issues.apache.org/jira/browse/YARN-1769) | CapacityScheduler:  Improve reservations |  Major | capacityscheduler | Thomas Graves | Thomas Graves |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2853](https://issues.apache.org/jira/browse/YARN-2853) | Killing app may hang while AM is unregistering |  Major | . | Jian He | Jian He |
| [YARN-2846](https://issues.apache.org/jira/browse/YARN-2846) | Incorrect persist exit code for running containers in reacquireContainer() that interrupted by NodeManager restart. |  Blocker | nodemanager | Junping Du | Junping Du |
| [YARN-2834](https://issues.apache.org/jira/browse/YARN-2834) | Resource manager crashed with Null Pointer Exception |  Blocker | . | Yesha Vora | Jian He |
| [YARN-2830](https://issues.apache.org/jira/browse/YARN-2830) | Add backwords compatible ContainerId.newInstance constructor for use within Tez Local Mode |  Blocker | . | Jonathan Eagles | Jonathan Eagles |
| [YARN-2827](https://issues.apache.org/jira/browse/YARN-2827) | Fix bugs of yarn queue CLI |  Critical | client | Wangda Tan | Wangda Tan |
| [YARN-2826](https://issues.apache.org/jira/browse/YARN-2826) | User-Group mappings not updated by RM when a user is removed from a group. |  Critical | . | Sidharta Seethana | Wangda Tan |
| [YARN-2825](https://issues.apache.org/jira/browse/YARN-2825) | Container leak on NM |  Critical | . | Jian He | Jian He |
| [YARN-2823](https://issues.apache.org/jira/browse/YARN-2823) | NullPointerException in RM HA enabled 3-node cluster |  Critical | resourcemanager | Gour Saha | Jian He |
| [YARN-2819](https://issues.apache.org/jira/browse/YARN-2819) | NPE in ATS Timeline Domains when upgrading from 2.4 to 2.6 |  Critical | timelineserver | Gopal V | Zhijie Shen |
| [YARN-2818](https://issues.apache.org/jira/browse/YARN-2818) | Remove the logic to inject entity owner as the primary filter |  Critical | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2813](https://issues.apache.org/jira/browse/YARN-2813) | NPE from MemoryTimelineStore.getDomains |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2805](https://issues.apache.org/jira/browse/YARN-2805) | RM2 in HA setup tries to login using the RM1's kerberos principal |  Blocker | resourcemanager | Arpit Gupta | Wangda Tan |
| [YARN-2804](https://issues.apache.org/jira/browse/YARN-2804) | Timeline server .out log have JAXB binding exceptions and warnings. |  Critical | . | Zhijie Shen | Zhijie Shen |
| [YARN-2803](https://issues.apache.org/jira/browse/YARN-2803) | MR distributed cache not working correctly on Windows after NodeManager privileged account changes. |  Critical | nodemanager | Chris Nauroth | Craig Welch |
| [YARN-2798](https://issues.apache.org/jira/browse/YARN-2798) | YarnClient doesn't need to translate Kerberos name of timeline DT renewer |  Blocker | timelineserver | Arpit Gupta | Zhijie Shen |
| [YARN-2794](https://issues.apache.org/jira/browse/YARN-2794) | Fix log msgs about distributing system-credentials |  Major | . | Jian He | Jian He |
| [YARN-2790](https://issues.apache.org/jira/browse/YARN-2790) | NM can't aggregate logs past HDFS delegation token expiry. |  Critical | nodemanager | Tassapol Athiapinya | Jian He |
| [YARN-2788](https://issues.apache.org/jira/browse/YARN-2788) | yarn logs -applicationId on 2.6.0 should support logs written by 2.4.0 |  Blocker | log-aggregation | Gopal V | Xuan Gong |
| [YARN-2779](https://issues.apache.org/jira/browse/YARN-2779) | SystemMetricsPublisher can use Kerberos directly instead of timeline DT |  Critical | resourcemanager, timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2769](https://issues.apache.org/jira/browse/YARN-2769) | Timeline server domain not set correctly when using shell\_command on Windows |  Major | applications/distributed-shell | Varun Vasudev | Varun Vasudev |
| [YARN-2760](https://issues.apache.org/jira/browse/YARN-2760) | Completely remove word 'experimental' from FairScheduler docs |  Trivial | documentation | Harsh J | Harsh J |
| [YARN-2755](https://issues.apache.org/jira/browse/YARN-2755) | NM fails to clean up usercache\_DEL\_\<timestamp\> dirs after YARN-661 |  Critical | . | Siqi Li | Siqi Li |
| [YARN-2752](https://issues.apache.org/jira/browse/YARN-2752) | ContainerExecutor always append "nice -n" in command on branch-2 |  Critical | . | Xuan Gong | Xuan Gong |
| [YARN-2743](https://issues.apache.org/jira/browse/YARN-2743) | Yarn jobs via oozie fail with failed to renew token (secure) or digest mismatch (unsecure) errors when RM is being killed |  Blocker | resourcemanager | Arpit Gupta | Jian He |
| [YARN-2741](https://issues.apache.org/jira/browse/YARN-2741) | Windows: Node manager cannot serve up log files via the web user interface when yarn.nodemanager.log-dirs to any drive letter other than C: (or, the drive that nodemanager is running on) |  Major | nodemanager | Craig Welch | Craig Welch |
| [YARN-2734](https://issues.apache.org/jira/browse/YARN-2734) | If a sub-folder is encountered by log aggregator it results in invalid aggregated file |  Major | log-aggregation | Sumit Mohanty | Xuan Gong |
| [YARN-2732](https://issues.apache.org/jira/browse/YARN-2732) | Fix syntax error in SecureContainer.apt.vm |  Major | . | Jian He | Jian He |
| [YARN-2730](https://issues.apache.org/jira/browse/YARN-2730) | DefaultContainerExecutor runs only one localizer at a time |  Critical | . | Siqi Li | Siqi Li |
| [YARN-2724](https://issues.apache.org/jira/browse/YARN-2724) | If an unreadable file is encountered during log aggregation then aggregated file in HDFS badly formed |  Major | log-aggregation | Sumit Mohanty | Xuan Gong |
| [YARN-2721](https://issues.apache.org/jira/browse/YARN-2721) | Race condition: ZKRMStateStore retry logic may throw NodeExist exception |  Blocker | . | Jian He | Jian He |
| [YARN-2720](https://issues.apache.org/jira/browse/YARN-2720) | Windows: Wildcard classpath variables not expanded against resources contained in archives |  Major | nodemanager | Craig Welch | Craig Welch |
| [YARN-2715](https://issues.apache.org/jira/browse/YARN-2715) | Proxy user is problem for RPC interface if yarn.resourcemanager.webapp.proxyuser is not set. |  Blocker | resourcemanager | Zhijie Shen | Zhijie Shen |
| [YARN-2707](https://issues.apache.org/jira/browse/YARN-2707) | Potential null dereference in FSDownload |  Minor | . | Ted Yu | Gera Shegalov |
| [YARN-2701](https://issues.apache.org/jira/browse/YARN-2701) | Potential race condition in startLocalizer when using LinuxContainerExecutor |  Blocker | . | Xuan Gong | Xuan Gong |
| [YARN-2682](https://issues.apache.org/jira/browse/YARN-2682) | WindowsSecureContainerExecutor should not depend on DefaultContainerExecutor#getFirstApplicationDir. |  Minor | nodemanager | zhihai xu | zhihai xu |
| [YARN-2671](https://issues.apache.org/jira/browse/YARN-2671) | ApplicationSubmissionContext change breaks the existing app submission |  Blocker | resourcemanager | Zhijie Shen | Wangda Tan |
| [YARN-2667](https://issues.apache.org/jira/browse/YARN-2667) | Fix the release audit warning caused by hadoop-yarn-registry |  Minor | . | Yi Liu | Yi Liu |
| [YARN-2662](https://issues.apache.org/jira/browse/YARN-2662) | TestCgroupsLCEResourcesHandler leaks file descriptors. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [YARN-2656](https://issues.apache.org/jira/browse/YARN-2656) | RM web services authentication filter should add support for proxy user |  Major | resourcemanager | Varun Vasudev | Zhijie Shen |
| [YARN-2649](https://issues.apache.org/jira/browse/YARN-2649) | Flaky test TestAMRMRPCNodeUpdates |  Major | . | Ming Ma | Ming Ma |
| [YARN-2635](https://issues.apache.org/jira/browse/YARN-2635) | TestRM, TestRMRestart, TestClientToAMTokens should run with both CS and FS |  Major | . | Wei Yan | Wei Yan |
| [YARN-2630](https://issues.apache.org/jira/browse/YARN-2630) | TestDistributedShell#testDSRestartWithPreviousRunningContainers fails |  Major | . | Jian He | Jian He |
| [YARN-2628](https://issues.apache.org/jira/browse/YARN-2628) | Capacity scheduler with DominantResourceCalculator carries out reservation even though slots are free |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-2624](https://issues.apache.org/jira/browse/YARN-2624) | Resource Localization fails on a cluster due to existing cache directories |  Blocker | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2617](https://issues.apache.org/jira/browse/YARN-2617) | NM does not need to send finished container whose APP is not running to RM |  Major | nodemanager | Jun Gong | Jun Gong |
| [YARN-2610](https://issues.apache.org/jira/browse/YARN-2610) | Hamlet should close table tags |  Major | . | Ray Chiang | Ray Chiang |
| [YARN-2608](https://issues.apache.org/jira/browse/YARN-2608) | FairScheduler: Potential deadlocks in loading alloc files and clock access |  Major | . | Wei Yan | Wei Yan |
| [YARN-2606](https://issues.apache.org/jira/browse/YARN-2606) | Application History Server tries to access hdfs before doing secure login |  Major | timelineserver | Mit Desai | Mit Desai |
| [YARN-2602](https://issues.apache.org/jira/browse/YARN-2602) | Generic History Service of TimelineServer sometimes not able to handle NPE |  Major | timelineserver | Karam Singh | Zhijie Shen |
| [YARN-2594](https://issues.apache.org/jira/browse/YARN-2594) | Potential deadlock in RM when querying ApplicationResourceUsageReport |  Blocker | resourcemanager | Karam Singh | Wangda Tan |
| [YARN-2588](https://issues.apache.org/jira/browse/YARN-2588) | Standby RM does not transitionToActive if previous transitionToActive is failed with ZK exception. |  Major | resourcemanager | Rohith | Rohith |
| [YARN-2579](https://issues.apache.org/jira/browse/YARN-2579) | Deadlock when EmbeddedElectorService and FatalEventDispatcher try to transition RM to StandBy at the same time |  Blocker | resourcemanager | Rohith | Rohith |
| [YARN-2568](https://issues.apache.org/jira/browse/YARN-2568) | TestAMRMClientOnRMRestart test fails |  Major | . | Jian He | Jian He |
| [YARN-2565](https://issues.apache.org/jira/browse/YARN-2565) | RM shouldn't use the old RMApplicationHistoryWriter unless explicitly setting FileSystemApplicationHistoryStore |  Major | resourcemanager, timelineserver | Karam Singh | Zhijie Shen |
| [YARN-2563](https://issues.apache.org/jira/browse/YARN-2563) | On secure clusters call to timeline server fails with authentication errors when running a job via oozie |  Blocker | timelineserver | Arpit Gupta | Zhijie Shen |
| [YARN-2562](https://issues.apache.org/jira/browse/YARN-2562) | ContainerId@toString() is unreadable for epoch \>0 after YARN-2182 |  Critical | . | Vinod Kumar Vavilapalli | Tsuyoshi Ozawa |
| [YARN-2559](https://issues.apache.org/jira/browse/YARN-2559) | ResourceManager sometime become un-responsive due to NPE in SystemMetricsPublisher |  Major | resourcemanager, timelineserver | Karam Singh | Zhijie Shen |
| [YARN-2557](https://issues.apache.org/jira/browse/YARN-2557) | Add a parameter "attempt\_Failures\_Validity\_Interval" in DistributedShell |  Major | applications/distributed-shell | Xuan Gong | Xuan Gong |
| [YARN-2546](https://issues.apache.org/jira/browse/YARN-2546) | REST API for application creation/submission is using strings for numeric & boolean values |  Major | api | Doug Haigh | Varun Vasudev |
| [YARN-2541](https://issues.apache.org/jira/browse/YARN-2541) | Fix ResourceManagerRest.apt.vm syntax error |  Major | . | Jian He | Jian He |
| [YARN-2540](https://issues.apache.org/jira/browse/YARN-2540) | FairScheduler: Queue filters not working on scheduler page in RM UI |  Major | scheduler | Ashwin Shankar | Ashwin Shankar |
| [YARN-2534](https://issues.apache.org/jira/browse/YARN-2534) | FairScheduler: Potential integer overflow calculating totalMaxShare |  Major | scheduler | zhihai xu | zhihai xu |
| [YARN-2527](https://issues.apache.org/jira/browse/YARN-2527) | NPE in ApplicationACLsManager |  Major | resourcemanager | Benoy Antony | Benoy Antony |
| [YARN-2526](https://issues.apache.org/jira/browse/YARN-2526) | SLS can deadlock when all the threads are taken by AMSimulators |  Critical | scheduler-load-simulator | Wei Yan | Wei Yan |
| [YARN-2523](https://issues.apache.org/jira/browse/YARN-2523) | ResourceManager UI showing negative value for "Decommissioned Nodes" field |  Major | resourcemanager, webapp | Nishan Shetty | Rohith |
| [YARN-2484](https://issues.apache.org/jira/browse/YARN-2484) | FileSystemRMStateStore#readFile/writeFile should close FSData(In\|Out)putStream in final block |  Trivial | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2462](https://issues.apache.org/jira/browse/YARN-2462) | TestNodeManagerResync#testBlockNewContainerRequestsOnStartAndResync should have a test timeout |  Major | . | Jason Lowe | Eric Payne |
| [YARN-2460](https://issues.apache.org/jira/browse/YARN-2460) | Remove obsolete entries from yarn-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [YARN-2459](https://issues.apache.org/jira/browse/YARN-2459) | RM crashes if App gets rejected for any reason and HA is enabled |  Major | resourcemanager | Mayank Bansal | Mayank Bansal |
| [YARN-2453](https://issues.apache.org/jira/browse/YARN-2453) | TestProportionalCapacityPreemptionPolicy fails with FairScheduler |  Major | . | zhihai xu | zhihai xu |
| [YARN-2452](https://issues.apache.org/jira/browse/YARN-2452) | TestRMApplicationHistoryWriter fails with FairScheduler |  Major | . | zhihai xu | zhihai xu |
| [YARN-2450](https://issues.apache.org/jira/browse/YARN-2450) | Fix typos in log messages |  Trivial | . | Ray Chiang | Ray Chiang |
| [YARN-2449](https://issues.apache.org/jira/browse/YARN-2449) | Timelineserver returns invalid Delegation token in secure kerberos enabled cluster when hadoop.http.filter.initializers are not set |  Critical | timelineserver | Karam Singh | Varun Vasudev |
| [YARN-2447](https://issues.apache.org/jira/browse/YARN-2447) | RM web services app submission doesn't pass secrets correctly |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2440](https://issues.apache.org/jira/browse/YARN-2440) | Cgroups should allow YARN containers to be limited to allocated cores |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2426](https://issues.apache.org/jira/browse/YARN-2426) | ResourceManger is not able renew WebHDFS token when application submitted by Yarn WebService |  Major | nodemanager, resourcemanager, webapp | Karam Singh | Varun Vasudev |
| [YARN-2424](https://issues.apache.org/jira/browse/YARN-2424) | LCE should support non-cgroups, non-secure mode |  Blocker | nodemanager | Allen Wittenauer | Allen Wittenauer |
| [YARN-2409](https://issues.apache.org/jira/browse/YARN-2409) | Active to StandBy transition does not stop rmDispatcher that causes 1 AsyncDispatcher thread leak. |  Critical | resourcemanager | Nishan Shetty | Rohith |
| [YARN-2405](https://issues.apache.org/jira/browse/YARN-2405) | NPE in FairSchedulerAppsBlock |  Major | . | Maysam Yabandeh | Tsuyoshi Ozawa |
| [YARN-2400](https://issues.apache.org/jira/browse/YARN-2400) | TestAMRestart fails intermittently |  Major | . | Jian He | Jian He |
| [YARN-2397](https://issues.apache.org/jira/browse/YARN-2397) | RM and TS web interfaces sometimes return request is a replay error in secure mode |  Critical | . | Varun Vasudev | Varun Vasudev |
| [YARN-2387](https://issues.apache.org/jira/browse/YARN-2387) | Resource Manager crashes with NPE due to lack of synchronization |  Blocker | . | Mit Desai | Mit Desai |
| [YARN-2374](https://issues.apache.org/jira/browse/YARN-2374) | YARN trunk build failing TestDistributedShell.testDSShell |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2373](https://issues.apache.org/jira/browse/YARN-2373) | WebAppUtils Should Use configuration.getPassword for Accessing SSL Passwords |  Major | . | Larry McCay | Larry McCay |
| [YARN-2370](https://issues.apache.org/jira/browse/YARN-2370) | Fix comment in o.a.h.y.server.resourcemanager.schedulerAppSchedulingInfo |  Trivial | resourcemanager | Wenwu Peng | Wenwu Peng |
| [YARN-2363](https://issues.apache.org/jira/browse/YARN-2363) | Submitted applications occasionally lack a tracking URL |  Major | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-2359](https://issues.apache.org/jira/browse/YARN-2359) | Application hangs when it fails to launch AM container |  Critical | resourcemanager | zhihai xu | zhihai xu |
| [YARN-2321](https://issues.apache.org/jira/browse/YARN-2321) | NodeManager web UI can incorrectly report Pmem enforcement |  Major | nodemanager | Leitao Guo | Leitao Guo |
| [YARN-2314](https://issues.apache.org/jira/browse/YARN-2314) | ContainerManagementProtocolProxy can create thousands of threads for a large cluster |  Critical | client | Jason Lowe | Jason Lowe |
| [YARN-2313](https://issues.apache.org/jira/browse/YARN-2313) | Livelock can occur in FairScheduler when there are lots of running apps |  Major | fairscheduler | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2308](https://issues.apache.org/jira/browse/YARN-2308) | NPE happened when RM restart after CapacityScheduler queue configuration changed |  Critical | resourcemanager, scheduler | Wangda Tan | Chang Li |
| [YARN-2273](https://issues.apache.org/jira/browse/YARN-2273) | NPE in ContinuousScheduling thread when we lose a node |  Major | fairscheduler, resourcemanager | Andy Skelton | Wei Yan |
| [YARN-2269](https://issues.apache.org/jira/browse/YARN-2269) | External links need to be removed from YARN UI |  Major | . | Yesha Vora | Craig Welch |
| [YARN-2264](https://issues.apache.org/jira/browse/YARN-2264) | Race in DrainDispatcher can cause random test failures |  Major | . | Siddharth Seth | Li Lu |
| [YARN-2252](https://issues.apache.org/jira/browse/YARN-2252) | Intermittent failure of TestFairScheduler.testContinuousScheduling |  Major | scheduler | Ratandeep Ratti |  |
| [YARN-2251](https://issues.apache.org/jira/browse/YARN-2251) | Avoid negative elapsed time in JHS/MRAM web UI and services |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2244](https://issues.apache.org/jira/browse/YARN-2244) | FairScheduler missing handling of containers for unknown application attempts |  Critical | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-2219](https://issues.apache.org/jira/browse/YARN-2219) | AMs and NMs can get exceptions after recovery but before scheduler knowns apps and app-attempts |  Major | resourcemanager | Ashwin Shankar | Jian He |
| [YARN-2181](https://issues.apache.org/jira/browse/YARN-2181) | Add preemption info to RM Web UI and add logs when preemption occurs |  Major | resourcemanager, webapp | Wangda Tan | Wangda Tan |
| [YARN-2161](https://issues.apache.org/jira/browse/YARN-2161) | Fix build on macosx: YARN parts |  Major | . | Binglin Chang | Binglin Chang |
| [YARN-2147](https://issues.apache.org/jira/browse/YARN-2147) | client lacks delegation token exception details when application submit fails |  Minor | resourcemanager | Jason Lowe | Chen He |
| [YARN-2138](https://issues.apache.org/jira/browse/YARN-2138) | Cleanup notifyDone* methods in RMStateStore |  Major | . | Jian He | Varun Saxena |
| [YARN-2088](https://issues.apache.org/jira/browse/YARN-2088) | Fix code bug in GetApplicationsRequestPBImpl#mergeLocalToBuilder |  Major | . | Binglin Chang | Binglin Chang |
| [YARN-2034](https://issues.apache.org/jira/browse/YARN-2034) | Description for yarn.nodemanager.localizer.cache.target-size-mb is incorrect |  Minor | nodemanager | Jason Lowe | Chen He |
| [YARN-2026](https://issues.apache.org/jira/browse/YARN-2026) | Fair scheduler: Consider only active queues for computing fairshare |  Major | scheduler | Ashwin Shankar | Ashwin Shankar |
| [YARN-2010](https://issues.apache.org/jira/browse/YARN-2010) | Handle app-recovery failures gracefully |  Blocker | resourcemanager | bc Wong | Karthik Kambatla |
| [YARN-1959](https://issues.apache.org/jira/browse/YARN-1959) | Fix headroom calculation in FairScheduler |  Major | . | Sandy Ryza | Anubhav Dhoot |
| [YARN-1922](https://issues.apache.org/jira/browse/YARN-1922) | Process group remains alive after container process is killed externally |  Major | nodemanager | Billie Rinaldi | Billie Rinaldi |
| [YARN-1919](https://issues.apache.org/jira/browse/YARN-1919) | Potential NPE in EmbeddedElectorService#stop |  Minor | resourcemanager | Devaraj K | Tsuyoshi Ozawa |
| [YARN-1796](https://issues.apache.org/jira/browse/YARN-1796) | container-executor shouldn't require o-r permissions |  Minor | nodemanager | Aaron T. Myers | Aaron T. Myers |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2812](https://issues.apache.org/jira/browse/YARN-2812) | TestApplicationHistoryServer is likely to fail on less powerful machine |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2810](https://issues.apache.org/jira/browse/YARN-2810) | TestRMProxyUsersConf fails on Windows VMs |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-2785](https://issues.apache.org/jira/browse/YARN-2785) | TestContainerResourceUsage fails intermittently |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2767](https://issues.apache.org/jira/browse/YARN-2767) | RM web services - add test case to ensure the http static user cannot kill or submit apps in secure mode |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-2758](https://issues.apache.org/jira/browse/YARN-2758) | Update TestApplicationHistoryClientService to use the new generic history store |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2747](https://issues.apache.org/jira/browse/YARN-2747) | TestAggregatedLogFormat fails in trunk |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-2711](https://issues.apache.org/jira/browse/YARN-2711) | TestDefaultContainerExecutor#testContainerLaunchError fails on Windows |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-2607](https://issues.apache.org/jira/browse/YARN-2607) | TestDistributedShell fails in trunk |  Major | . | Ted Yu | Wangda Tan |
| [YARN-2596](https://issues.apache.org/jira/browse/YARN-2596) | TestWorkPreservingRMRestart fails with FairScheduler |  Major | . | Junping Du | Karthik Kambatla |
| [YARN-2584](https://issues.apache.org/jira/browse/YARN-2584) | TestContainerManagerSecurity fails on trunk |  Major | . | Zhijie Shen | Jian He |
| [YARN-2549](https://issues.apache.org/jira/browse/YARN-2549) | TestContainerLaunch fails due to classpath problem with hamcrest classes. |  Minor | nodemanager, test | Chris Nauroth | Chris Nauroth |
| [YARN-2519](https://issues.apache.org/jira/browse/YARN-2519) | Credential Provider related unit tests failed on Windows |  Major | webapp | Xiaoyu Yao | Xiaoyu Yao |
| [YARN-2388](https://issues.apache.org/jira/browse/YARN-2388) | TestTimelineWebServices fails on trunk after HADOOP-10791 |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2158](https://issues.apache.org/jira/browse/YARN-2158) | TestRMWebServicesAppsModification sometimes fails in trunk |  Minor | . | Ted Yu | Varun Vasudev |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2843](https://issues.apache.org/jira/browse/YARN-2843) | NodeLabels manager should trim all inputs for hosts and labels |  Major | resourcemanager | Sushmitha Sreenivasan | Wangda Tan |
| [YARN-2841](https://issues.apache.org/jira/browse/YARN-2841) | RMProxy should retry EOFException |  Critical | resourcemanager | Jian He | Jian He |
| [YARN-2824](https://issues.apache.org/jira/browse/YARN-2824) | Capacity of labels should be zero by default |  Critical | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2795](https://issues.apache.org/jira/browse/YARN-2795) | Resource Manager fails startup with HDFS label storage and secure cluster |  Major | resourcemanager | Phil D'Amore | Wangda Tan |
| [YARN-2778](https://issues.apache.org/jira/browse/YARN-2778) | YARN node CLI should display labels on returned node reports |  Major | client | Wangda Tan | Wangda Tan |
| [YARN-2770](https://issues.apache.org/jira/browse/YARN-2770) | Timeline delegation tokens need to be automatically renewed by the RM |  Critical | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2753](https://issues.apache.org/jira/browse/YARN-2753) | Fix potential issues and code clean up for *NodeLabelsManager |  Major | . | zhihai xu | zhihai xu |
| [YARN-2744](https://issues.apache.org/jira/browse/YARN-2744) | Under some scenario, it is possible to end up with capacity scheduler configuration that uses labels that no longer exist |  Critical | capacityscheduler | Sumit Mohanty | Wangda Tan |
| [YARN-2726](https://issues.apache.org/jira/browse/YARN-2726) | CapacityScheduler should explicitly log when an accessible label has no capacity |  Minor | capacityscheduler | Phil D'Amore | Wangda Tan |
| [YARN-2723](https://issues.apache.org/jira/browse/YARN-2723) | rmadmin -replaceLabelsOnNode does not correctly parse port |  Major | client | Phil D'Amore | Naganarasimha G R |
| [YARN-2717](https://issues.apache.org/jira/browse/YARN-2717) | containerLogNotFound log shows multiple time for the same container |  Major | log-aggregation | Xuan Gong | Xuan Gong |
| [YARN-2709](https://issues.apache.org/jira/browse/YARN-2709) | Add retry for timeline client getDelegationToken method |  Major | . | Li Lu | Li Lu |
| [YARN-2705](https://issues.apache.org/jira/browse/YARN-2705) | Changes of RM node label manager default configuration |  Critical | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2704](https://issues.apache.org/jira/browse/YARN-2704) |  Localization and log-aggregation will fail if hdfs delegation token expired after token-max-life-time |  Critical | . | Jian He | Jian He |
| [YARN-2703](https://issues.apache.org/jira/browse/YARN-2703) | Add logUploadedTime into LogValue for better display |  Major | nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2700](https://issues.apache.org/jira/browse/YARN-2700) | TestSecureRMRegistryOperations failing on windows: auth problems |  Major | api, resourcemanager | Steve Loughran | Steve Loughran |
| [YARN-2699](https://issues.apache.org/jira/browse/YARN-2699) | Fix test timeout in TestResourceTrackerOnHA#testResourceTrackerOnHA |  Blocker | client | Wangda Tan | Wangda Tan |
| [YARN-2698](https://issues.apache.org/jira/browse/YARN-2698) | Move getClusterNodeLabels and getNodeToLabels to YarnClient instead of AdminService |  Critical | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2692](https://issues.apache.org/jira/browse/YARN-2692) | ktutil test hanging on some machines/ktutil versions |  Major | . | Steve Loughran | Steve Loughran |
| [YARN-2689](https://issues.apache.org/jira/browse/YARN-2689) | TestSecureRMRegistryOperations failing on windows: secure ZK won't start |  Major | api, resourcemanager | Steve Loughran | Steve Loughran |
| [YARN-2685](https://issues.apache.org/jira/browse/YARN-2685) | Resource on each label not correct when multiple NMs in a same host and some has label some not |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2678](https://issues.apache.org/jira/browse/YARN-2678) | Improved Yarn Registry service record structure |  Major | api, resourcemanager | Gour Saha | Steve Loughran |
| [YARN-2677](https://issues.apache.org/jira/browse/YARN-2677) | registry punycoding of usernames doesn't fix all usernames to be DNS-valid |  Major | api, resourcemanager | Steve Loughran | Steve Loughran |
| [YARN-2676](https://issues.apache.org/jira/browse/YARN-2676) | Timeline authentication filter should add support for proxy user |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2673](https://issues.apache.org/jira/browse/YARN-2673) | Add retry for timeline client put APIs |  Major | . | Li Lu | Li Lu |
| [YARN-2668](https://issues.apache.org/jira/browse/YARN-2668) | yarn-registry JAR won't link against ZK 3.4.5 |  Major | client | Steve Loughran | Steve Loughran |
| [YARN-2652](https://issues.apache.org/jira/browse/YARN-2652) | add hadoop-yarn-registry package under hadoop-yarn |  Major | api | Steve Loughran | Steve Loughran |
| [YARN-2651](https://issues.apache.org/jira/browse/YARN-2651) | Spin off the LogRollingInterval from LogAggregationContext |  Major | nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2647](https://issues.apache.org/jira/browse/YARN-2647) | Add yarn queue CLI to get queue infos |  Major | client | Wangda Tan | Sunil G |
| [YARN-2644](https://issues.apache.org/jira/browse/YARN-2644) | Recalculate headroom more frequently to keep it accurate |  Major | . | Craig Welch | Craig Welch |
| [YARN-2632](https://issues.apache.org/jira/browse/YARN-2632) | Document NM Restart feature |  Blocker | nodemanager | Junping Du | Junping Du |
| [YARN-2629](https://issues.apache.org/jira/browse/YARN-2629) | Make distributed shell use the domain-based timeline ACLs |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2621](https://issues.apache.org/jira/browse/YARN-2621) | Simplify the output when the user doesn't have the access for getDomain(s) |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2611](https://issues.apache.org/jira/browse/YARN-2611) | Fix jenkins findbugs warning and test case failures for trunk merge patch |  Major | capacityscheduler, resourcemanager, scheduler | Subru Krishnan | Subru Krishnan |
| [YARN-2591](https://issues.apache.org/jira/browse/YARN-2591) | AHSWebServices should return FORBIDDEN(403) if the request user doesn't have access to the history data |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2583](https://issues.apache.org/jira/browse/YARN-2583) | Modify the LogDeletionService to support Log aggregation for LRS |  Major | nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2582](https://issues.apache.org/jira/browse/YARN-2582) | Log related CLI and Web UI changes for Aggregated Logs in LRS |  Major | nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2581](https://issues.apache.org/jira/browse/YARN-2581) | NMs need to find a way to get LogAggregationContext |  Major | nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2576](https://issues.apache.org/jira/browse/YARN-2576) | Prepare yarn-1051 branch for merging with trunk |  Major | capacityscheduler, resourcemanager, scheduler | Subru Krishnan | Subru Krishnan |
| [YARN-2569](https://issues.apache.org/jira/browse/YARN-2569) | API changes for handling logs of long-running services |  Major | nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2566](https://issues.apache.org/jira/browse/YARN-2566) | DefaultContainerExecutor should pick a working directory randomly |  Critical | nodemanager | zhihai xu | zhihai xu |
| [YARN-2561](https://issues.apache.org/jira/browse/YARN-2561) | MR job client cannot reconnect to AM after NM restart. |  Blocker | . | Tassapol Athiapinya | Junping Du |
| [YARN-2558](https://issues.apache.org/jira/browse/YARN-2558) | Updating ContainerTokenIdentifier#read/write to use ContainerId#getContainerId |  Blocker | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2547](https://issues.apache.org/jira/browse/YARN-2547) | Cross Origin Filter throws UnsupportedOperationException upon destroy |  Major | timelineserver | Jonathan Eagles | Mit Desai |
| [YARN-2544](https://issues.apache.org/jira/browse/YARN-2544) | Common server side PB changes (not include user API PB changes) |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2542](https://issues.apache.org/jira/browse/YARN-2542) | "yarn application -status \<appId\>" throws NPE when retrieving the app from the timelineserver |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2538](https://issues.apache.org/jira/browse/YARN-2538) | Add logs when RM send new AMRMToken to ApplicationMaster |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2529](https://issues.apache.org/jira/browse/YARN-2529) | Generic history service RPC interface doesn't work when service authorization is enabled |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2528](https://issues.apache.org/jira/browse/YARN-2528) | Cross Origin Filter Http response split vulnerability protection rejects valid origins |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-2515](https://issues.apache.org/jira/browse/YARN-2515) | Update ConverterUtils#toContainerId to parse epoch |  Major | resourcemanager | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2512](https://issues.apache.org/jira/browse/YARN-2512) | Allow for origin pattern matching in cross origin filter |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-2511](https://issues.apache.org/jira/browse/YARN-2511) | Allow All Origins by default when Cross Origin Filter is enabled |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-2509](https://issues.apache.org/jira/browse/YARN-2509) | Enable Cross Origin Filter for timeline server only and not all Yarn servers |  Major | timelineserver | Jonathan Eagles | Mit Desai |
| [YARN-2508](https://issues.apache.org/jira/browse/YARN-2508) | Cross Origin configuration parameters prefix are not honored |  Major | timelineserver | Jonathan Eagles | Mit Desai |
| [YARN-2507](https://issues.apache.org/jira/browse/YARN-2507) | Document Cross Origin Filter Configuration for ATS |  Major | documentation, timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-2505](https://issues.apache.org/jira/browse/YARN-2505) | Support get/add/remove/change labels in RM REST API |  Major | resourcemanager | Wangda Tan | Craig Welch |
| [YARN-2504](https://issues.apache.org/jira/browse/YARN-2504) | Support get/add/remove/change labels in RM admin CLI |  Critical | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2503](https://issues.apache.org/jira/browse/YARN-2503) | Changes in RM Web UI to better show labels to end users |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2502](https://issues.apache.org/jira/browse/YARN-2502) | Changes in distributed shell to support specify labels |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2501](https://issues.apache.org/jira/browse/YARN-2501) | Changes in AMRMClient to support labels |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2500](https://issues.apache.org/jira/browse/YARN-2500) | Miscellaneous changes in ResourceManager to support labels |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2496](https://issues.apache.org/jira/browse/YARN-2496) | Changes for capacity scheduler to support allocate resource respect labels |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2494](https://issues.apache.org/jira/browse/YARN-2494) | Node label manager API and storage implementations |  Major | resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2493](https://issues.apache.org/jira/browse/YARN-2493) | API changes for users |  Major | api | Wangda Tan | Wangda Tan |
| [YARN-2475](https://issues.apache.org/jira/browse/YARN-2475) | ReservationSystem: replan upon capacity reduction |  Major | resourcemanager | Carlo Curino | Carlo Curino |
| [YARN-2468](https://issues.apache.org/jira/browse/YARN-2468) | Log handling for LRS |  Major | log-aggregation, nodemanager, resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2456](https://issues.apache.org/jira/browse/YARN-2456) | Possible livelock in CapacityScheduler when RM is recovering apps |  Major | resourcemanager | Jian He | Jian He |
| [YARN-2446](https://issues.apache.org/jira/browse/YARN-2446) | Using TimelineNamespace to shield the entities of a user |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2434](https://issues.apache.org/jira/browse/YARN-2434) | RM should not recover containers from previously failed attempt when AM restart is not enabled |  Major | . | Jian He | Jian He |
| [YARN-2431](https://issues.apache.org/jira/browse/YARN-2431) | NM restart: cgroup is not removed for reacquired containers |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-2406](https://issues.apache.org/jira/browse/YARN-2406) | Move RM recovery related proto to yarn\_server\_resourcemanager\_recovery.proto |  Major | . | Jian He | Tsuyoshi Ozawa |
| [YARN-2389](https://issues.apache.org/jira/browse/YARN-2389) | Adding support for drainig a queue, ie killing all apps in the queue |  Major | capacityscheduler, fairscheduler | Subru Krishnan | Subru Krishnan |
| [YARN-2378](https://issues.apache.org/jira/browse/YARN-2378) | Adding support for moving apps between queues in Capacity Scheduler |  Major | capacityscheduler | Subru Krishnan | Subru Krishnan |
| [YARN-2354](https://issues.apache.org/jira/browse/YARN-2354) | DistributedShell may allocate more containers than client specified after it restarts |  Major | . | Jian He | Li Lu |
| [YARN-2347](https://issues.apache.org/jira/browse/YARN-2347) | Consolidate RMStateVersion and NMDBSchemaVersion into StateVersion in yarn-server-common |  Major | . | Junping Du | Junping Du |
| [YARN-2317](https://issues.apache.org/jira/browse/YARN-2317) | Update documentation about how to write YARN applications |  Major | documentation | Li Lu | Li Lu |
| [YARN-2312](https://issues.apache.org/jira/browse/YARN-2312) | Marking ContainerId#getId as deprecated |  Major | resourcemanager | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2302](https://issues.apache.org/jira/browse/YARN-2302) | Refactor TimelineWebServices |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2298](https://issues.apache.org/jira/browse/YARN-2298) | Move TimelineClient to yarn-common project |  Major | client | Zhijie Shen | Zhijie Shen |
| [YARN-2295](https://issues.apache.org/jira/browse/YARN-2295) | Refactor YARN distributed shell with existing public stable API |  Major | . | Li Lu | Li Lu |
| [YARN-2288](https://issues.apache.org/jira/browse/YARN-2288) | Data persistent in timelinestore should be versioned |  Major | timelineserver | Junping Du | Junping Du |
| [YARN-2279](https://issues.apache.org/jira/browse/YARN-2279) | Add UTs to cover timeline server authentication |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-2277](https://issues.apache.org/jira/browse/YARN-2277) | Add Cross-Origin support to the ATS REST API |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-2260](https://issues.apache.org/jira/browse/YARN-2260) | Add containers to launchedContainers list in RMNode on container recovery |  Major | resourcemanager | Jian He | Jian He |
| [YARN-2249](https://issues.apache.org/jira/browse/YARN-2249) | AM release request may be lost on RM restart |  Major | resourcemanager | Jian He | Jian He |
| [YARN-2248](https://issues.apache.org/jira/browse/YARN-2248) | Capacity Scheduler changes for moving apps between queues |  Major | capacityscheduler | Janos Matyas | Janos Matyas |
| [YARN-2242](https://issues.apache.org/jira/browse/YARN-2242) | Improve exception information on AM launch crashes |  Major | . | Li Lu | Li Lu |
| [YARN-2237](https://issues.apache.org/jira/browse/YARN-2237) | MRAppMaster changes for AMRMToken roll-up |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2229](https://issues.apache.org/jira/browse/YARN-2229) | ContainerId can overflow with RM restart |  Major | resourcemanager | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2228](https://issues.apache.org/jira/browse/YARN-2228) | TimelineServer should load pseudo authentication filter when authentication = simple |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2212](https://issues.apache.org/jira/browse/YARN-2212) | ApplicationMaster needs to find a way to update the AMRMToken periodically |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2211](https://issues.apache.org/jira/browse/YARN-2211) | RMStateStore needs to save AMRMToken master key for recovery when RM restart/failover happens |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2208](https://issues.apache.org/jira/browse/YARN-2208) | AMRMTokenManager need to have a way to roll over AMRMToken |  Major | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-2182](https://issues.apache.org/jira/browse/YARN-2182) | Update ContainerId#toString() to avoid conflicts before and after RM restart |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-2174](https://issues.apache.org/jira/browse/YARN-2174) | Enabling HTTPs for the writer REST API of TimelineServer |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2153](https://issues.apache.org/jira/browse/YARN-2153) | Ensure distributed shell work with RM work-preserving recovery |  Major | resourcemanager | Jian He | Jian He |
| [YARN-2102](https://issues.apache.org/jira/browse/YARN-2102) | More generalized timeline ACLs |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-2080](https://issues.apache.org/jira/browse/YARN-2080) | Admission Control: Integrate Reservation subsystem with ResourceManager |  Major | resourcemanager | Subru Krishnan | Subru Krishnan |
| [YARN-2070](https://issues.apache.org/jira/browse/YARN-2070) | DistributedShell publishes unfriendly user information to the timeline server |  Minor | . | Zhijie Shen | Robert Kanter |
| [YARN-2045](https://issues.apache.org/jira/browse/YARN-2045) | Data persisted in NM should be versioned |  Major | nodemanager | Junping Du | Junping Du |
| [YARN-2035](https://issues.apache.org/jira/browse/YARN-2035) | FileSystemApplicationHistoryStore blocks RM and AHS while NN is in safemode |  Major | . | Jonathan Eagles | Jonathan Eagles |
| [YARN-2033](https://issues.apache.org/jira/browse/YARN-2033) | Merging generic-history into the Timeline Store |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-2013](https://issues.apache.org/jira/browse/YARN-2013) | The diagnostics is always the ExitCodeException stack when the container crashes |  Major | nodemanager | Zhijie Shen | Tsuyoshi Ozawa |
| [YARN-2008](https://issues.apache.org/jira/browse/YARN-2008) | CapacityScheduler may report incorrect queueMaxCap if there is hierarchy queue structure |  Major | . | Chen He | Craig Welch |
| [YARN-2001](https://issues.apache.org/jira/browse/YARN-2001) | Threshold for RM to accept requests from AM after failover |  Major | resourcemanager | Jian He | Jian He |
| [YARN-1972](https://issues.apache.org/jira/browse/YARN-1972) | Implement secure Windows Container Executor |  Major | nodemanager | Remus Rusanu | Remus Rusanu |
| [YARN-1915](https://issues.apache.org/jira/browse/YARN-1915) | ClientToAMTokenMasterKey should be provided to AM at launch time |  Blocker | . | Hitesh Shah | Jason Lowe |
| [YARN-1879](https://issues.apache.org/jira/browse/YARN-1879) | Mark Idempotent/AtMostOnce annotations to ApplicationMasterProtocol for RM fail over |  Critical | resourcemanager | Jian He | Tsuyoshi Ozawa |
| [YARN-1857](https://issues.apache.org/jira/browse/YARN-1857) | CapacityScheduler headroom doesn't account for other AM's running |  Critical | capacityscheduler | Thomas Graves | Chen He |
| [YARN-1779](https://issues.apache.org/jira/browse/YARN-1779) | Handle AMRMTokens across RM failover |  Blocker | resourcemanager | Karthik Kambatla | Jian He |
| [YARN-1712](https://issues.apache.org/jira/browse/YARN-1712) | Admission Control: plan follower |  Major | capacityscheduler, resourcemanager | Carlo Curino | Carlo Curino |
| [YARN-1711](https://issues.apache.org/jira/browse/YARN-1711) | CapacityOverTimePolicy: a policy to enforce quotas over time for YARN-1709 |  Major | . | Carlo Curino | Carlo Curino |
| [YARN-1710](https://issues.apache.org/jira/browse/YARN-1710) | Admission Control: agents to allocate reservation |  Major | resourcemanager | Carlo Curino | Carlo Curino |
| [YARN-1709](https://issues.apache.org/jira/browse/YARN-1709) | Admission Control: Reservation subsystem |  Major | resourcemanager | Carlo Curino | Subru Krishnan |
| [YARN-1708](https://issues.apache.org/jira/browse/YARN-1708) | Add a public API to reserve resources (part of YARN-1051) |  Major | resourcemanager | Carlo Curino | Subru Krishnan |
| [YARN-1707](https://issues.apache.org/jira/browse/YARN-1707) | Making the CapacityScheduler more dynamic |  Major | capacityscheduler | Carlo Curino | Carlo Curino |
| [YARN-1372](https://issues.apache.org/jira/browse/YARN-1372) | Ensure all completed containers are reported to the AMs across RM restart |  Major | resourcemanager | Bikas Saha | Anubhav Dhoot |
| [YARN-1370](https://issues.apache.org/jira/browse/YARN-1370) | Fair scheduler to re-populate container allocation state |  Major | resourcemanager | Bikas Saha | Anubhav Dhoot |
| [YARN-1367](https://issues.apache.org/jira/browse/YARN-1367) | After restart NM should resync with the RM without killing containers |  Major | resourcemanager | Bikas Saha | Anubhav Dhoot |
| [YARN-1354](https://issues.apache.org/jira/browse/YARN-1354) | Recover applications upon nodemanager restart |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1342](https://issues.apache.org/jira/browse/YARN-1342) | Recover container tokens upon nodemanager restart |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1341](https://issues.apache.org/jira/browse/YARN-1341) | Recover NMTokens upon nodemanager restart |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1337](https://issues.apache.org/jira/browse/YARN-1337) | Recover containers upon nodemanager restart |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1326](https://issues.apache.org/jira/browse/YARN-1326) | RM should log using RMStore at startup time |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-1250](https://issues.apache.org/jira/browse/YARN-1250) | Generic history service should support application-acls |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-1063](https://issues.apache.org/jira/browse/YARN-1063) | Winutils needs ability to create task as domain user |  Major | nodemanager | Kyle Leckie | Remus Rusanu |
| [YARN-611](https://issues.apache.org/jira/browse/YARN-611) | Add an AM retry count reset window to YARN RM |  Major | resourcemanager | Chris Riccomini | Xuan Gong |
| [YARN-90](https://issues.apache.org/jira/browse/YARN-90) | NodeManager should identify failed disks becoming good again |  Major | nodemanager | Ravi Gummadi | Varun Vasudev |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2789](https://issues.apache.org/jira/browse/YARN-2789) | Re-instate the NodeReport.newInstance API modified in YARN-2698 |  Critical | . | Siddharth Seth | Wangda Tan |
| [YARN-2207](https://issues.apache.org/jira/browse/YARN-2207) | Add ability to roll over AMRMToken |  Major | resourcemanager | Xuan Gong | Xuan Gong |


