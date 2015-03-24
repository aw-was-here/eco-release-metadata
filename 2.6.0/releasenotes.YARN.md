# Hadoop YARN 2.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [YARN-2853](https://issues.apache.org/jira/browse/YARN-2853) | *Major* | **Killing app may hang while AM is unregistering**
---

* [YARN-2846](https://issues.apache.org/jira/browse/YARN-2846) | *Blocker* | **Incorrect persist exit code for running containers in reacquireContainer() that interrupted by NodeManager restart.**
---

* [YARN-2843](https://issues.apache.org/jira/browse/YARN-2843) | *Major* | **NodeLabels manager should trim all inputs for hosts and labels**
---

* [YARN-2841](https://issues.apache.org/jira/browse/YARN-2841) | *Critical* | **RMProxy should retry EOFException**
---

* [YARN-2834](https://issues.apache.org/jira/browse/YARN-2834) | *Blocker* | **Resource manager crashed with Null Pointer Exception**
---

* [YARN-2830](https://issues.apache.org/jira/browse/YARN-2830) | *Blocker* | **Add backwords compatible ContainerId.newInstance constructor for use within Tez Local Mode**

I just committed this. Thanks [~jeagles] for the patch and [~ozawa] for the reviews!

---

* [YARN-2827](https://issues.apache.org/jira/browse/YARN-2827) | *Critical* | **Fix bugs of yarn queue CLI**
---

* [YARN-2826](https://issues.apache.org/jira/browse/YARN-2826) | *Critical* | **User-Group mappings not updated by RM when a user is removed from a group.**
---

* [YARN-2825](https://issues.apache.org/jira/browse/YARN-2825) | *Critical* | **Container leak on NM**
---

* [YARN-2824](https://issues.apache.org/jira/browse/YARN-2824) | *Critical* | **Capacity of labels should be zero by default**
---

* [YARN-2823](https://issues.apache.org/jira/browse/YARN-2823) | *Critical* | **NullPointerException in RM HA enabled 3-node cluster**
---

* [YARN-2819](https://issues.apache.org/jira/browse/YARN-2819) | *Critical* | **NPE in ATS Timeline Domains when upgrading from 2.4 to 2.6**
---

* [YARN-2818](https://issues.apache.org/jira/browse/YARN-2818) | *Critical* | **Remove the logic to inject entity owner as the primary filter**
---

* [YARN-2813](https://issues.apache.org/jira/browse/YARN-2813) | *Major* | **NPE from MemoryTimelineStore.getDomains**
---

* [YARN-2812](https://issues.apache.org/jira/browse/YARN-2812) | *Major* | **TestApplicationHistoryServer is likely to fail on less powerful machine**
---

* [YARN-2810](https://issues.apache.org/jira/browse/YARN-2810) | *Major* | **TestRMProxyUsersConf fails on Windows VMs**
---

* [YARN-2805](https://issues.apache.org/jira/browse/YARN-2805) | *Blocker* | **RM2 in HA setup tries to login using the RM1's kerberos principal**
---

* [YARN-2804](https://issues.apache.org/jira/browse/YARN-2804) | *Critical* | **Timeline server .out log have JAXB binding exceptions and warnings.**
---

* [YARN-2803](https://issues.apache.org/jira/browse/YARN-2803) | *Critical* | **MR distributed cache not working correctly on Windows after NodeManager privileged account changes.**
---

* [YARN-2798](https://issues.apache.org/jira/browse/YARN-2798) | *Blocker* | **YarnClient doesn't need to translate Kerberos name of timeline DT renewer**
---

* [YARN-2795](https://issues.apache.org/jira/browse/YARN-2795) | *Major* | **Resource Manager fails startup with HDFS label storage and secure cluster**
---

* [YARN-2794](https://issues.apache.org/jira/browse/YARN-2794) | *Major* | **Fix log msgs about distributing system-credentials**
---

* [YARN-2790](https://issues.apache.org/jira/browse/YARN-2790) | *Critical* | **NM can't aggregate logs past HDFS delegation token expiry.**
---

* [YARN-2789](https://issues.apache.org/jira/browse/YARN-2789) | *Critical* | **Re-instate the NodeReport.newInstance API modified in YARN-2698**
---

* [YARN-2788](https://issues.apache.org/jira/browse/YARN-2788) | *Blocker* | **yarn logs -applicationId on 2.6.0 should support logs written by 2.4.0**
---

* [YARN-2785](https://issues.apache.org/jira/browse/YARN-2785) | *Major* | **TestContainerResourceUsage fails intermittently**
---

* [YARN-2779](https://issues.apache.org/jira/browse/YARN-2779) | *Critical* | **SystemMetricsPublisher can use Kerberos directly instead of timeline DT**
---

* [YARN-2778](https://issues.apache.org/jira/browse/YARN-2778) | *Major* | **YARN node CLI should display labels on returned node reports**
---

* [YARN-2770](https://issues.apache.org/jira/browse/YARN-2770) | *Critical* | **Timeline delegation tokens need to be automatically renewed by the RM**
---

* [YARN-2769](https://issues.apache.org/jira/browse/YARN-2769) | *Major* | **Timeline server domain not set correctly when using shell\_command on Windows**
---

* [YARN-2767](https://issues.apache.org/jira/browse/YARN-2767) | *Major* | **RM web services - add test case to ensure the http static user cannot kill or submit apps in secure mode**
---

* [YARN-2760](https://issues.apache.org/jira/browse/YARN-2760) | *Trivial* | **Completely remove word 'experimental' from FairScheduler docs**
---

* [YARN-2758](https://issues.apache.org/jira/browse/YARN-2758) | *Major* | **Update TestApplicationHistoryClientService to use the new generic history store**
---

* [YARN-2755](https://issues.apache.org/jira/browse/YARN-2755) | *Critical* | **NM fails to clean up usercache\_DEL\_<timestamp> dirs after YARN-661**
---

* [YARN-2753](https://issues.apache.org/jira/browse/YARN-2753) | *Major* | **Fix potential issues and code clean up for *NodeLabelsManager**
---

* [YARN-2752](https://issues.apache.org/jira/browse/YARN-2752) | *Critical* | **ContainerExecutor always append "nice -n" in command on branch-2**
---

* [YARN-2747](https://issues.apache.org/jira/browse/YARN-2747) | *Major* | **TestAggregatedLogFormat fails in trunk**
---

* [YARN-2744](https://issues.apache.org/jira/browse/YARN-2744) | *Critical* | **Under some scenario, it is possible to end up with capacity scheduler configuration that uses labels that no longer exist**
---

* [YARN-2743](https://issues.apache.org/jira/browse/YARN-2743) | *Blocker* | **Yarn jobs via oozie fail with failed to renew token (secure) or digest mismatch (unsecure) errors when RM is being killed**
---

* [YARN-2741](https://issues.apache.org/jira/browse/YARN-2741) | *Major* | **Windows: Node manager cannot serve up log files via the web user interface when yarn.nodemanager.log-dirs to any drive letter other than C: (or, the drive that nodemanager is running on)**
---

* [YARN-2734](https://issues.apache.org/jira/browse/YARN-2734) | *Major* | **If a sub-folder is encountered by log aggregator it results in invalid aggregated file**
---

* [YARN-2732](https://issues.apache.org/jira/browse/YARN-2732) | *Major* | **Fix syntax error in SecureContainer.apt.vm**
---

* [YARN-2730](https://issues.apache.org/jira/browse/YARN-2730) | *Critical* | **DefaultContainerExecutor runs only one localizer at a time**
---

* [YARN-2726](https://issues.apache.org/jira/browse/YARN-2726) | *Minor* | **CapacityScheduler should explicitly log when an accessible label has no capacity**
---

* [YARN-2724](https://issues.apache.org/jira/browse/YARN-2724) | *Major* | **If an unreadable file is encountered during log aggregation then aggregated file in HDFS badly formed**
---

* [YARN-2723](https://issues.apache.org/jira/browse/YARN-2723) | *Major* | **rmadmin -replaceLabelsOnNode does not correctly parse port**
---

* [YARN-2721](https://issues.apache.org/jira/browse/YARN-2721) | *Blocker* | **Race condition: ZKRMStateStore retry logic may throw NodeExist exception**
---

* [YARN-2720](https://issues.apache.org/jira/browse/YARN-2720) | *Major* | **Windows: Wildcard classpath variables not expanded against resources contained in archives**
---

* [YARN-2717](https://issues.apache.org/jira/browse/YARN-2717) | *Major* | **containerLogNotFound log shows multiple time for the same container**
---

* [YARN-2715](https://issues.apache.org/jira/browse/YARN-2715) | *Blocker* | **Proxy user is problem for RPC interface if yarn.resourcemanager.webapp.proxyuser is not set.**
---

* [YARN-2711](https://issues.apache.org/jira/browse/YARN-2711) | *Major* | **TestDefaultContainerExecutor#testContainerLaunchError fails on Windows**
---

* [YARN-2709](https://issues.apache.org/jira/browse/YARN-2709) | *Major* | **Add retry for timeline client getDelegationToken method**
---

* [YARN-2707](https://issues.apache.org/jira/browse/YARN-2707) | *Minor* | **Potential null dereference in FSDownload**
---

* [YARN-2705](https://issues.apache.org/jira/browse/YARN-2705) | *Critical* | **Changes of RM node label manager default configuration**
---

* [YARN-2704](https://issues.apache.org/jira/browse/YARN-2704) | *Critical* | ** Localization and log-aggregation will fail if hdfs delegation token expired after token-max-life-time**
---

* [YARN-2703](https://issues.apache.org/jira/browse/YARN-2703) | *Major* | **Add logUploadedTime into LogValue for better display**
---

* [YARN-2701](https://issues.apache.org/jira/browse/YARN-2701) | *Blocker* | **Potential race condition in startLocalizer when using LinuxContainerExecutor**
---

* [YARN-2700](https://issues.apache.org/jira/browse/YARN-2700) | *Major* | **TestSecureRMRegistryOperations failing on windows: auth problems**
---

* [YARN-2699](https://issues.apache.org/jira/browse/YARN-2699) | *Blocker* | **Fix test timeout in TestResourceTrackerOnHA#testResourceTrackerOnHA**
---

* [YARN-2698](https://issues.apache.org/jira/browse/YARN-2698) | *Critical* | **Move getClusterNodeLabels and getNodeToLabels to YarnClient instead of AdminService**
---

* [YARN-2692](https://issues.apache.org/jira/browse/YARN-2692) | *Major* | **ktutil test hanging on some machines/ktutil versions**
---

* [YARN-2689](https://issues.apache.org/jira/browse/YARN-2689) | *Major* | **TestSecureRMRegistryOperations failing on windows: secure ZK won't start**
---

* [YARN-2685](https://issues.apache.org/jira/browse/YARN-2685) | *Major* | **Resource on each label not correct when multiple NMs in a same host and some has label some not**
---

* [YARN-2682](https://issues.apache.org/jira/browse/YARN-2682) | *Minor* | **WindowsSecureContainerExecutor should not depend on DefaultContainerExecutor#getFirstApplicationDir.**
---

* [YARN-2678](https://issues.apache.org/jira/browse/YARN-2678) | *Major* | **Improved Yarn Registry service record structure**
---

* [YARN-2677](https://issues.apache.org/jira/browse/YARN-2677) | *Major* | **registry punycoding of usernames doesn't fix all usernames to be DNS-valid**
---

* [YARN-2676](https://issues.apache.org/jira/browse/YARN-2676) | *Major* | **Timeline authentication filter should add support for proxy user**
---

* [YARN-2673](https://issues.apache.org/jira/browse/YARN-2673) | *Major* | **Add retry for timeline client put APIs**
---

* [YARN-2671](https://issues.apache.org/jira/browse/YARN-2671) | *Blocker* | **ApplicationSubmissionContext change breaks the existing app submission**
---

* [YARN-2668](https://issues.apache.org/jira/browse/YARN-2668) | *Major* | **yarn-registry JAR won't link against ZK 3.4.5**
---

* [YARN-2667](https://issues.apache.org/jira/browse/YARN-2667) | *Minor* | **Fix the release audit warning caused by hadoop-yarn-registry**
---

* [YARN-2662](https://issues.apache.org/jira/browse/YARN-2662) | *Minor* | **TestCgroupsLCEResourcesHandler leaks file descriptors.**
---

* [YARN-2656](https://issues.apache.org/jira/browse/YARN-2656) | *Major* | **RM web services authentication filter should add support for proxy user**
---

* [YARN-2652](https://issues.apache.org/jira/browse/YARN-2652) | *Major* | **add hadoop-yarn-registry package under hadoop-yarn**
---

* [YARN-2651](https://issues.apache.org/jira/browse/YARN-2651) | *Major* | **Spin off the LogRollingInterval from LogAggregationContext**
---

* [YARN-2649](https://issues.apache.org/jira/browse/YARN-2649) | *Major* | **Flaky test TestAMRMRPCNodeUpdates**
---

* [YARN-2647](https://issues.apache.org/jira/browse/YARN-2647) | *Major* | **Add yarn queue CLI to get queue infos**
---

* [YARN-2644](https://issues.apache.org/jira/browse/YARN-2644) | *Major* | **Recalculate headroom more frequently to keep it accurate**
---

* [YARN-2635](https://issues.apache.org/jira/browse/YARN-2635) | *Major* | **TestRM, TestRMRestart, TestClientToAMTokens should run with both CS and FS**
---

* [YARN-2632](https://issues.apache.org/jira/browse/YARN-2632) | *Blocker* | **Document NM Restart feature**
---

* [YARN-2630](https://issues.apache.org/jira/browse/YARN-2630) | *Major* | **TestDistributedShell#testDSRestartWithPreviousRunningContainers fails**
---

* [YARN-2629](https://issues.apache.org/jira/browse/YARN-2629) | *Major* | **Make distributed shell use the domain-based timeline ACLs**
---

* [YARN-2628](https://issues.apache.org/jira/browse/YARN-2628) | *Major* | **Capacity scheduler with DominantResourceCalculator carries out reservation even though slots are free**
---

* [YARN-2627](https://issues.apache.org/jira/browse/YARN-2627) | *Major* | **Add logs when attemptFailuresValidityInterval is enabled**
---

* [YARN-2624](https://issues.apache.org/jira/browse/YARN-2624) | *Blocker* | **Resource Localization fails on a cluster due to existing cache directories**
---

* [YARN-2621](https://issues.apache.org/jira/browse/YARN-2621) | *Major* | **Simplify the output when the user doesn't have the access for getDomain(s)**
---

* [YARN-2617](https://issues.apache.org/jira/browse/YARN-2617) | *Major* | **NM does not need to send finished container whose APP is not running to RM**
---

* [YARN-2615](https://issues.apache.org/jira/browse/YARN-2615) | *Blocker* | **ClientToAMTokenIdentifier and DelegationTokenIdentifier should allow extended fields**
---

* [YARN-2611](https://issues.apache.org/jira/browse/YARN-2611) | *Major* | **Fix jenkins findbugs warning and test case failures for trunk merge patch**
---

* [YARN-2610](https://issues.apache.org/jira/browse/YARN-2610) | *Major* | **Hamlet should close table tags**
---

* [YARN-2608](https://issues.apache.org/jira/browse/YARN-2608) | *Major* | **FairScheduler: Potential deadlocks in loading alloc files and clock access**
---

* [YARN-2607](https://issues.apache.org/jira/browse/YARN-2607) | *Major* | **TestDistributedShell fails in trunk**
---

* [YARN-2606](https://issues.apache.org/jira/browse/YARN-2606) | *Major* | **Application History Server tries to access hdfs before doing secure login**
---

* [YARN-2602](https://issues.apache.org/jira/browse/YARN-2602) | *Major* | **Generic History Service of TimelineServer sometimes not able to handle NPE**
---

* [YARN-2596](https://issues.apache.org/jira/browse/YARN-2596) | *Major* | **TestWorkPreservingRMRestart fails with FairScheduler**
---

* [YARN-2594](https://issues.apache.org/jira/browse/YARN-2594) | *Blocker* | **Potential deadlock in RM when querying ApplicationResourceUsageReport**
---

* [YARN-2591](https://issues.apache.org/jira/browse/YARN-2591) | *Major* | **AHSWebServices should return FORBIDDEN(403) if the request user doesn't have access to the history data**
---

* [YARN-2588](https://issues.apache.org/jira/browse/YARN-2588) | *Major* | **Standby RM does not transitionToActive if previous transitionToActive is failed with ZK exception.**
---

* [YARN-2584](https://issues.apache.org/jira/browse/YARN-2584) | *Major* | **TestContainerManagerSecurity fails on trunk**
---

* [YARN-2583](https://issues.apache.org/jira/browse/YARN-2583) | *Major* | **Modify the LogDeletionService to support Log aggregation for LRS**
---

* [YARN-2582](https://issues.apache.org/jira/browse/YARN-2582) | *Major* | **Log related CLI and Web UI changes for Aggregated Logs in LRS**
---

* [YARN-2581](https://issues.apache.org/jira/browse/YARN-2581) | *Major* | **NMs need to find a way to get LogAggregationContext**
---

* [YARN-2579](https://issues.apache.org/jira/browse/YARN-2579) | *Blocker* | **Deadlock when EmbeddedElectorService and FatalEventDispatcher try to transition RM to StandBy at the same time**
---

* [YARN-2577](https://issues.apache.org/jira/browse/YARN-2577) | *Trivial* | **Clarify ACL delimiter and how to configure ACL groups only**
---

* [YARN-2576](https://issues.apache.org/jira/browse/YARN-2576) | *Major* | **Prepare yarn-1051 branch for merging with trunk**
---

* [YARN-2569](https://issues.apache.org/jira/browse/YARN-2569) | *Major* | **API changes for handling logs of long-running services**
---

* [YARN-2568](https://issues.apache.org/jira/browse/YARN-2568) | *Major* | **TestAMRMClientOnRMRestart test fails**
---

* [YARN-2566](https://issues.apache.org/jira/browse/YARN-2566) | *Critical* | **DefaultContainerExecutor should pick a working directory randomly**
---

* [YARN-2565](https://issues.apache.org/jira/browse/YARN-2565) | *Major* | **RM shouldn't use the old RMApplicationHistoryWriter unless explicitly setting FileSystemApplicationHistoryStore**
---

* [YARN-2563](https://issues.apache.org/jira/browse/YARN-2563) | *Blocker* | **On secure clusters call to timeline server fails with authentication errors when running a job via oozie**
---

* [YARN-2562](https://issues.apache.org/jira/browse/YARN-2562) | *Critical* | **ContainerId@toString() is unreadable for epoch >0 after YARN-2182**
---

* [YARN-2561](https://issues.apache.org/jira/browse/YARN-2561) | *Blocker* | **MR job client cannot reconnect to AM after NM restart.**
---

* [YARN-2559](https://issues.apache.org/jira/browse/YARN-2559) | *Major* | **ResourceManager sometime become un-responsive due to NPE in SystemMetricsPublisher**
---

* [YARN-2558](https://issues.apache.org/jira/browse/YARN-2558) | *Blocker* | **Updating ContainerTokenIdentifier#read/write to use ContainerId#getContainerId**
---

* [YARN-2557](https://issues.apache.org/jira/browse/YARN-2557) | *Major* | **Add a parameter "attempt\_Failures\_Validity\_Interval" in DistributedShell**
---

* [YARN-2549](https://issues.apache.org/jira/browse/YARN-2549) | *Minor* | **TestContainerLaunch fails due to classpath problem with hamcrest classes.**
---

* [YARN-2547](https://issues.apache.org/jira/browse/YARN-2547) | *Major* | **Cross Origin Filter throws UnsupportedOperationException upon destroy**
---

* [YARN-2546](https://issues.apache.org/jira/browse/YARN-2546) | *Major* | **REST API for application creation/submission is using strings for numeric & boolean values**
---

* [YARN-2544](https://issues.apache.org/jira/browse/YARN-2544) | *Major* | **Common server side PB changes (not include user API PB changes)**
---

* [YARN-2542](https://issues.apache.org/jira/browse/YARN-2542) | *Major* | **"yarn application -status <appId>" throws NPE when retrieving the app from the timelineserver**
---

* [YARN-2541](https://issues.apache.org/jira/browse/YARN-2541) | *Major* | **Fix ResourceManagerRest.apt.vm syntax error**
---

* [YARN-2540](https://issues.apache.org/jira/browse/YARN-2540) | *Major* | **FairScheduler: Queue filters not working on scheduler page in RM UI**
---

* [YARN-2539](https://issues.apache.org/jira/browse/YARN-2539) | *Minor* | **FairScheduler: Set the default value for maxAMShare to 0.5**
---

* [YARN-2538](https://issues.apache.org/jira/browse/YARN-2538) | *Major* | **Add logs when RM send new AMRMToken to ApplicationMaster**
---

* [YARN-2534](https://issues.apache.org/jira/browse/YARN-2534) | *Major* | **FairScheduler: Potential integer overflow calculating totalMaxShare**
---

* [YARN-2531](https://issues.apache.org/jira/browse/YARN-2531) | *Major* | **CGroups - Admins should be allowed to enforce strict cpu limits**
---

* [YARN-2529](https://issues.apache.org/jira/browse/YARN-2529) | *Major* | **Generic history service RPC interface doesn't work when service authorization is enabled**
---

* [YARN-2528](https://issues.apache.org/jira/browse/YARN-2528) | *Major* | **Cross Origin Filter Http response split vulnerability protection rejects valid origins**
---

* [YARN-2527](https://issues.apache.org/jira/browse/YARN-2527) | *Major* | **NPE in ApplicationACLsManager**
---

* [YARN-2526](https://issues.apache.org/jira/browse/YARN-2526) | *Critical* | **SLS can deadlock when all the threads are taken by AMSimulators**
---

* [YARN-2523](https://issues.apache.org/jira/browse/YARN-2523) | *Major* | **ResourceManager UI showing negative value for "Decommissioned Nodes" field**
---

* [YARN-2519](https://issues.apache.org/jira/browse/YARN-2519) | *Major* | **Credential Provider related unit tests failed on Windows**
---

* [YARN-2515](https://issues.apache.org/jira/browse/YARN-2515) | *Major* | **Update ConverterUtils#toContainerId to parse epoch**
---

* [YARN-2512](https://issues.apache.org/jira/browse/YARN-2512) | *Major* | **Allow for origin pattern matching in cross origin filter**
---

* [YARN-2511](https://issues.apache.org/jira/browse/YARN-2511) | *Major* | **Allow All Origins by default when Cross Origin Filter is enabled**
---

* [YARN-2509](https://issues.apache.org/jira/browse/YARN-2509) | *Major* | **Enable Cross Origin Filter for timeline server only and not all Yarn servers**
---

* [YARN-2508](https://issues.apache.org/jira/browse/YARN-2508) | *Major* | **Cross Origin configuration parameters prefix are not honored**
---

* [YARN-2507](https://issues.apache.org/jira/browse/YARN-2507) | *Major* | **Document Cross Origin Filter Configuration for ATS**
---

* [YARN-2505](https://issues.apache.org/jira/browse/YARN-2505) | *Major* | **Support get/add/remove/change labels in RM REST API**
---

* [YARN-2504](https://issues.apache.org/jira/browse/YARN-2504) | *Critical* | **Support get/add/remove/change labels in RM admin CLI**
---

* [YARN-2503](https://issues.apache.org/jira/browse/YARN-2503) | *Major* | **Changes in RM Web UI to better show labels to end users**
---

* [YARN-2502](https://issues.apache.org/jira/browse/YARN-2502) | *Major* | **Changes in distributed shell to support specify labels**
---

* [YARN-2501](https://issues.apache.org/jira/browse/YARN-2501) | *Major* | **Changes in AMRMClient to support labels**
---

* [YARN-2500](https://issues.apache.org/jira/browse/YARN-2500) | *Major* | **Miscellaneous changes in ResourceManager to support labels**
---

* [YARN-2496](https://issues.apache.org/jira/browse/YARN-2496) | *Major* | **Changes for capacity scheduler to support allocate resource respect labels**
---

* [YARN-2494](https://issues.apache.org/jira/browse/YARN-2494) | *Major* | **Node label manager API and storage implementations**
---

* [YARN-2493](https://issues.apache.org/jira/browse/YARN-2493) | *Major* | **API changes for users**
---

* [YARN-2484](https://issues.apache.org/jira/browse/YARN-2484) | *Trivial* | **FileSystemRMStateStore#readFile/writeFile should close FSData(In\|Out)putStream in final block**
---

* [YARN-2475](https://issues.apache.org/jira/browse/YARN-2475) | *Major* | **ReservationSystem: replan upon capacity reduction**
---

* [YARN-2468](https://issues.apache.org/jira/browse/YARN-2468) | *Major* | **Log handling for LRS**
---

* [YARN-2462](https://issues.apache.org/jira/browse/YARN-2462) | *Major* | **TestNodeManagerResync#testBlockNewContainerRequestsOnStartAndResync should have a test timeout**
---

* [YARN-2460](https://issues.apache.org/jira/browse/YARN-2460) | *Minor* | **Remove obsolete entries from yarn-default.xml**
---

* [YARN-2459](https://issues.apache.org/jira/browse/YARN-2459) | *Major* | **RM crashes if App gets rejected for any reason and HA is enabled**
---

* [YARN-2456](https://issues.apache.org/jira/browse/YARN-2456) | *Major* | **Possible livelock in CapacityScheduler when RM is recovering apps**
---

* [YARN-2453](https://issues.apache.org/jira/browse/YARN-2453) | *Major* | **TestProportionalCapacityPreemptionPolicy fails with FairScheduler**
---

* [YARN-2452](https://issues.apache.org/jira/browse/YARN-2452) | *Major* | **TestRMApplicationHistoryWriter fails with FairScheduler**
---

* [YARN-2450](https://issues.apache.org/jira/browse/YARN-2450) | *Trivial* | **Fix typos in log messages**
---

* [YARN-2449](https://issues.apache.org/jira/browse/YARN-2449) | *Critical* | **Timelineserver returns invalid Delegation token in secure kerberos enabled cluster when hadoop.http.filter.initializers are not set**
---

* [YARN-2448](https://issues.apache.org/jira/browse/YARN-2448) | *Major* | **RM should expose the resource types considered during scheduling when AMs register**
---

* [YARN-2447](https://issues.apache.org/jira/browse/YARN-2447) | *Major* | **RM web services app submission doesn't pass secrets correctly**
---

* [YARN-2446](https://issues.apache.org/jira/browse/YARN-2446) | *Major* | **Using TimelineNamespace to shield the entities of a user**
---

* [YARN-2440](https://issues.apache.org/jira/browse/YARN-2440) | *Major* | **Cgroups should allow YARN containers to be limited to allocated cores**
---

* [YARN-2434](https://issues.apache.org/jira/browse/YARN-2434) | *Major* | **RM should not recover containers from previously failed attempt when AM restart is not enabled**
---

* [YARN-2431](https://issues.apache.org/jira/browse/YARN-2431) | *Major* | **NM restart: cgroup is not removed for reacquired containers**
---

* [YARN-2426](https://issues.apache.org/jira/browse/YARN-2426) | *Major* | **ResourceManger is not able renew WebHDFS token when application submitted by Yarn WebService**
---

* [YARN-2424](https://issues.apache.org/jira/browse/YARN-2424) | *Blocker* | **LCE should support non-cgroups, non-secure mode**
---

* [YARN-2411](https://issues.apache.org/jira/browse/YARN-2411) | *Major* | **[Capacity Scheduler] support simple user and group mappings to queues**
---

* [YARN-2409](https://issues.apache.org/jira/browse/YARN-2409) | *Critical* | **Active to StandBy transition does not stop rmDispatcher that causes 1 AsyncDispatcher thread leak.**
---

* [YARN-2406](https://issues.apache.org/jira/browse/YARN-2406) | *Major* | **Move RM recovery related proto to yarn\_server\_resourcemanager\_recovery.proto**
---

* [YARN-2405](https://issues.apache.org/jira/browse/YARN-2405) | *Major* | **NPE in FairSchedulerAppsBlock**
---

* [YARN-2400](https://issues.apache.org/jira/browse/YARN-2400) | *Major* | **TestAMRestart fails intermittently**
---

* [YARN-2399](https://issues.apache.org/jira/browse/YARN-2399) | *Major* | **FairScheduler: Merge AppSchedulable and FSSchedulerApp into FSAppAttempt**
---

* [YARN-2397](https://issues.apache.org/jira/browse/YARN-2397) | *Critical* | **RM and TS web interfaces sometimes return request is a replay error in secure mode**
---

* [YARN-2395](https://issues.apache.org/jira/browse/YARN-2395) | *Major* | **FairScheduler: Preemption timeout should be configurable per queue**
---

* [YARN-2394](https://issues.apache.org/jira/browse/YARN-2394) | *Major* | **FairScheduler: Configure fairSharePreemptionThreshold per queue**
---

* [YARN-2393](https://issues.apache.org/jira/browse/YARN-2393) | *Major* | **FairScheduler: Add the notion of steady fair share**
---

* [YARN-2389](https://issues.apache.org/jira/browse/YARN-2389) | *Major* | **Adding support for drainig a queue, ie killing all apps in the queue**
---

* [YARN-2388](https://issues.apache.org/jira/browse/YARN-2388) | *Major* | **TestTimelineWebServices fails on trunk after HADOOP-10791**
---

* [YARN-2387](https://issues.apache.org/jira/browse/YARN-2387) | *Blocker* | **Resource Manager crashes with NPE due to lack of synchronization**
---

* [YARN-2378](https://issues.apache.org/jira/browse/YARN-2378) | *Major* | **Adding support for moving apps between queues in Capacity Scheduler**
---

* [YARN-2377](https://issues.apache.org/jira/browse/YARN-2377) | *Major* | **Localization exception stack traces are not passed as diagnostic info**
---

* [YARN-2374](https://issues.apache.org/jira/browse/YARN-2374) | *Major* | **YARN trunk build failing TestDistributedShell.testDSShell**
---

* [YARN-2373](https://issues.apache.org/jira/browse/YARN-2373) | *Major* | **WebAppUtils Should Use configuration.getPassword for Accessing SSL Passwords**
---

* [YARN-2372](https://issues.apache.org/jira/browse/YARN-2372) | *Minor* | **There are Chinese Characters in the FairScheduler's document**
---

* [YARN-2370](https://issues.apache.org/jira/browse/YARN-2370) | *Trivial* | **Fix comment in o.a.h.y.server.resourcemanager.schedulerAppSchedulingInfo**
---

* [YARN-2363](https://issues.apache.org/jira/browse/YARN-2363) | *Major* | **Submitted applications occasionally lack a tracking URL**
---

* [YARN-2361](https://issues.apache.org/jira/browse/YARN-2361) | *Trivial* | **RMAppAttempt state machine entries for KILLED state has duplicate event entries**
---

* [YARN-2359](https://issues.apache.org/jira/browse/YARN-2359) | *Critical* | **Application hangs when it fails to launch AM container**
---

* [YARN-2354](https://issues.apache.org/jira/browse/YARN-2354) | *Major* | **DistributedShell may allocate more containers than client specified after it restarts**
---

* [YARN-2352](https://issues.apache.org/jira/browse/YARN-2352) | *Major* | **FairScheduler: Collect metrics on duration of critical methods that affect performance**
---

* [YARN-2347](https://issues.apache.org/jira/browse/YARN-2347) | *Major* | **Consolidate RMStateVersion and NMDBSchemaVersion into StateVersion in yarn-server-common**
---

* [YARN-2343](https://issues.apache.org/jira/browse/YARN-2343) | *Trivial* | **Improve error message on token expire exception**
---

* [YARN-2337](https://issues.apache.org/jira/browse/YARN-2337) | *Trivial* | **ResourceManager sets ClientRMService in RMContext multiple times**
---

* [YARN-2323](https://issues.apache.org/jira/browse/YARN-2323) | *Minor* | **FairShareComparator creates too many Resource objects**
---

* [YARN-2321](https://issues.apache.org/jira/browse/YARN-2321) | *Major* | **NodeManager web UI can incorrectly report Pmem enforcement**
---

* [YARN-2317](https://issues.apache.org/jira/browse/YARN-2317) | *Major* | **Update documentation about how to write YARN applications**
---

* [YARN-2314](https://issues.apache.org/jira/browse/YARN-2314) | *Critical* | **ContainerManagementProtocolProxy can create thousands of threads for a large cluster**
---

* [YARN-2313](https://issues.apache.org/jira/browse/YARN-2313) | *Major* | **Livelock can occur in FairScheduler when there are lots of running apps**
---

* [YARN-2312](https://issues.apache.org/jira/browse/YARN-2312) | *Major* | **Marking ContainerId#getId as deprecated**
---

* [YARN-2308](https://issues.apache.org/jira/browse/YARN-2308) | *Critical* | **NPE happened when RM restart after CapacityScheduler queue configuration changed**
---

* [YARN-2302](https://issues.apache.org/jira/browse/YARN-2302) | *Major* | **Refactor TimelineWebServices**
---

* [YARN-2298](https://issues.apache.org/jira/browse/YARN-2298) | *Major* | **Move TimelineClient to yarn-common project**
---

* [YARN-2295](https://issues.apache.org/jira/browse/YARN-2295) | *Major* | **Refactor YARN distributed shell with existing public stable API**
---

* [YARN-2288](https://issues.apache.org/jira/browse/YARN-2288) | *Major* | **Data persistent in timelinestore should be versioned**
---

* [YARN-2279](https://issues.apache.org/jira/browse/YARN-2279) | *Major* | **Add UTs to cover timeline server authentication**
---

* [YARN-2277](https://issues.apache.org/jira/browse/YARN-2277) | *Major* | **Add Cross-Origin support to the ATS REST API**
---

* [YARN-2274](https://issues.apache.org/jira/browse/YARN-2274) | *Trivial* | **FairScheduler: Add debug information about cluster capacity, availability and reservations**
---

* [YARN-2273](https://issues.apache.org/jira/browse/YARN-2273) | *Major* | **NPE in ContinuousScheduling thread when we lose a node**
---

* [YARN-2269](https://issues.apache.org/jira/browse/YARN-2269) | *Major* | **External links need to be removed from YARN UI**
---

* [YARN-2264](https://issues.apache.org/jira/browse/YARN-2264) | *Major* | **Race in DrainDispatcher can cause random test failures**
---

* [YARN-2260](https://issues.apache.org/jira/browse/YARN-2260) | *Major* | **Add containers to launchedContainers list in RMNode on container recovery**
---

* [YARN-2252](https://issues.apache.org/jira/browse/YARN-2252) | *Major* | **Intermittent failure of TestFairScheduler.testContinuousScheduling**
---

* [YARN-2251](https://issues.apache.org/jira/browse/YARN-2251) | *Major* | **Avoid negative elapsed time in JHS/MRAM web UI and services**
---

* [YARN-2249](https://issues.apache.org/jira/browse/YARN-2249) | *Major* | **AM release request may be lost on RM restart**
---

* [YARN-2248](https://issues.apache.org/jira/browse/YARN-2248) | *Major* | **Capacity Scheduler changes for moving apps between queues**
---

* [YARN-2244](https://issues.apache.org/jira/browse/YARN-2244) | *Critical* | **FairScheduler missing handling of containers for unknown application attempts**
---

* [YARN-2242](https://issues.apache.org/jira/browse/YARN-2242) | *Major* | **Improve exception information on AM launch crashes**
---

* [YARN-2237](https://issues.apache.org/jira/browse/YARN-2237) | *Major* | **MRAppMaster changes for AMRMToken roll-up**
---

* [YARN-2229](https://issues.apache.org/jira/browse/YARN-2229) | *Major* | **ContainerId can overflow with RM restart**
---

* [YARN-2228](https://issues.apache.org/jira/browse/YARN-2228) | *Major* | **TimelineServer should load pseudo authentication filter when authentication = simple**
---

* [YARN-2219](https://issues.apache.org/jira/browse/YARN-2219) | *Major* | **AMs and NMs can get exceptions after recovery but before scheduler knowns apps and app-attempts**
---

* [YARN-2214](https://issues.apache.org/jira/browse/YARN-2214) | *Major* | **FairScheduler: preemptContainerPreCheck() in FSParentQueue delays convergence towards fairness**
---

* [YARN-2212](https://issues.apache.org/jira/browse/YARN-2212) | *Major* | **ApplicationMaster needs to find a way to update the AMRMToken periodically**
---

* [YARN-2211](https://issues.apache.org/jira/browse/YARN-2211) | *Major* | **RMStateStore needs to save AMRMToken master key for recovery when RM restart/failover happens**
---

* [YARN-2209](https://issues.apache.org/jira/browse/YARN-2209) | *Major* | **Replace AM resync/shutdown command with corresponding exceptions**
---

* [YARN-2208](https://issues.apache.org/jira/browse/YARN-2208) | *Major* | **AMRMTokenManager need to have a way to roll over AMRMToken**
---

* [YARN-2207](https://issues.apache.org/jira/browse/YARN-2207) | *Major* | **Add ability to roll over AMRMToken**
---

* [YARN-2198](https://issues.apache.org/jira/browse/YARN-2198) | *Major* | **Remove the need to run NodeManager as privileged account for Windows Secure Container Executor**
---

* [YARN-2197](https://issues.apache.org/jira/browse/YARN-2197) | *Minor* | **Add a link to YARN CHANGES.txt in the left side of doc**
---

* [YARN-2182](https://issues.apache.org/jira/browse/YARN-2182) | *Major* | **Update ContainerId#toString() to avoid conflicts before and after RM restart**
---

* [YARN-2181](https://issues.apache.org/jira/browse/YARN-2181) | *Major* | **Add preemption info to RM Web UI and add logs when preemption occurs**
---

* [YARN-2174](https://issues.apache.org/jira/browse/YARN-2174) | *Major* | **Enabling HTTPs for the writer REST API of TimelineServer**
---

* [YARN-2161](https://issues.apache.org/jira/browse/YARN-2161) | *Major* | **Fix build on macosx: YARN parts**
---

* [YARN-2158](https://issues.apache.org/jira/browse/YARN-2158) | *Minor* | **TestRMWebServicesAppsModification sometimes fails in trunk**
---

* [YARN-2153](https://issues.apache.org/jira/browse/YARN-2153) | *Major* | **Ensure distributed shell work with RM work-preserving recovery**
---

* [YARN-2147](https://issues.apache.org/jira/browse/YARN-2147) | *Minor* | **client lacks delegation token exception details when application submit fails**
---

* [YARN-2138](https://issues.apache.org/jira/browse/YARN-2138) | *Major* | **Cleanup notifyDone* methods in RMStateStore**
---

* [YARN-2131](https://issues.apache.org/jira/browse/YARN-2131) | *Major* | **Add a way to format the RMStateStore**
---

* [YARN-2102](https://issues.apache.org/jira/browse/YARN-2102) | *Major* | **More generalized timeline ACLs**
---

* [YARN-2088](https://issues.apache.org/jira/browse/YARN-2088) | *Major* | **Fix code bug in GetApplicationsRequestPBImpl#mergeLocalToBuilder**
---

* [YARN-2080](https://issues.apache.org/jira/browse/YARN-2080) | *Major* | **Admission Control: Integrate Reservation subsystem with ResourceManager**
---

* [YARN-2070](https://issues.apache.org/jira/browse/YARN-2070) | *Minor* | **DistributedShell publishes unfriendly user information to the timeline server**
---

* [YARN-2045](https://issues.apache.org/jira/browse/YARN-2045) | *Major* | **Data persisted in NM should be versioned**
---

* [YARN-2035](https://issues.apache.org/jira/browse/YARN-2035) | *Major* | **FileSystemApplicationHistoryStore blocks RM and AHS while NN is in safemode**
---

* [YARN-2034](https://issues.apache.org/jira/browse/YARN-2034) | *Minor* | **Description for yarn.nodemanager.localizer.cache.target-size-mb is incorrect**
---

* [YARN-2033](https://issues.apache.org/jira/browse/YARN-2033) | *Major* | **Merging generic-history into the Timeline Store**
---

* [YARN-2026](https://issues.apache.org/jira/browse/YARN-2026) | *Major* | **Fair scheduler: Consider only active queues for computing fairshare**
---

* [YARN-2013](https://issues.apache.org/jira/browse/YARN-2013) | *Major* | **The diagnostics is always the ExitCodeException stack when the container crashes**
---

* [YARN-2010](https://issues.apache.org/jira/browse/YARN-2010) | *Blocker* | **Handle app-recovery failures gracefully**
---

* [YARN-2008](https://issues.apache.org/jira/browse/YARN-2008) | *Major* | **CapacityScheduler may report incorrect queueMaxCap if there is hierarchy queue structure**
---

* [YARN-2001](https://issues.apache.org/jira/browse/YARN-2001) | *Major* | **Threshold for RM to accept requests from AM after failover**
---

* [YARN-1994](https://issues.apache.org/jira/browse/YARN-1994) | *Major* | **Expose YARN/MR endpoints on multiple interfaces**
---

* [YARN-1972](https://issues.apache.org/jira/browse/YARN-1972) | *Major* | **Implement secure Windows Container Executor**
---

* [YARN-1964](https://issues.apache.org/jira/browse/YARN-1964) | *Major* | **Create Docker analog of the LinuxContainerExecutor in YARN**
---

* [YARN-1959](https://issues.apache.org/jira/browse/YARN-1959) | *Major* | **Fix headroom calculation in FairScheduler**
---

* [YARN-1954](https://issues.apache.org/jira/browse/YARN-1954) | *Major* | **Add waitFor to AMRMClient(Async)**
---

* [YARN-1922](https://issues.apache.org/jira/browse/YARN-1922) | *Major* | **Process group remains alive after container process is killed externally**
---

* [YARN-1919](https://issues.apache.org/jira/browse/YARN-1919) | *Minor* | **Potential NPE in EmbeddedElectorService#stop**
---

* [YARN-1918](https://issues.apache.org/jira/browse/YARN-1918) | *Trivial* | **Typo in description and error message for 'yarn.resourcemanager.cluster-id'**
---

* [YARN-1915](https://issues.apache.org/jira/browse/YARN-1915) | *Blocker* | **ClientToAMTokenMasterKey should be provided to AM at launch time**
---

* [YARN-1879](https://issues.apache.org/jira/browse/YARN-1879) | *Critical* | **Mark Idempotent/AtMostOnce annotations to ApplicationMasterProtocol for RM fail over**
---

* [YARN-1857](https://issues.apache.org/jira/browse/YARN-1857) | *Critical* | **CapacityScheduler headroom doesn't account for other AM's running**
---

* [YARN-1796](https://issues.apache.org/jira/browse/YARN-1796) | *Minor* | **container-executor shouldn't require o-r permissions**
---

* [YARN-1779](https://issues.apache.org/jira/browse/YARN-1779) | *Blocker* | **Handle AMRMTokens across RM failover**
---

* [YARN-1769](https://issues.apache.org/jira/browse/YARN-1769) | *Major* | **CapacityScheduler:  Improve reservations**
---

* [YARN-1712](https://issues.apache.org/jira/browse/YARN-1712) | *Major* | **Admission Control: plan follower**
---

* [YARN-1711](https://issues.apache.org/jira/browse/YARN-1711) | *Major* | **CapacityOverTimePolicy: a policy to enforce quotas over time for YARN-1709**
---

* [YARN-1710](https://issues.apache.org/jira/browse/YARN-1710) | *Major* | **Admission Control: agents to allocate reservation**
---

* [YARN-1709](https://issues.apache.org/jira/browse/YARN-1709) | *Major* | **Admission Control: Reservation subsystem**
---

* [YARN-1708](https://issues.apache.org/jira/browse/YARN-1708) | *Major* | **Add a public API to reserve resources (part of YARN-1051)**
---

* [YARN-1707](https://issues.apache.org/jira/browse/YARN-1707) | *Major* | **Making the CapacityScheduler more dynamic**
---

* [YARN-1372](https://issues.apache.org/jira/browse/YARN-1372) | *Major* | **Ensure all completed containers are reported to the AMs across RM restart**
---

* [YARN-1370](https://issues.apache.org/jira/browse/YARN-1370) | *Major* | **Fair scheduler to re-populate container allocation state**
---

* [YARN-1367](https://issues.apache.org/jira/browse/YARN-1367) | *Major* | **After restart NM should resync with the RM without killing containers**
---

* [YARN-1354](https://issues.apache.org/jira/browse/YARN-1354) | *Major* | **Recover applications upon nodemanager restart**
---

* [YARN-1342](https://issues.apache.org/jira/browse/YARN-1342) | *Major* | **Recover container tokens upon nodemanager restart**
---

* [YARN-1341](https://issues.apache.org/jira/browse/YARN-1341) | *Major* | **Recover NMTokens upon nodemanager restart**
---

* [YARN-1337](https://issues.apache.org/jira/browse/YARN-1337) | *Major* | **Recover containers upon nodemanager restart**
---

* [YARN-1326](https://issues.apache.org/jira/browse/YARN-1326) | *Major* | **RM should log using RMStore at startup time**
---

* [YARN-1250](https://issues.apache.org/jira/browse/YARN-1250) | *Major* | **Generic history service should support application-acls**
---

* [YARN-1063](https://issues.apache.org/jira/browse/YARN-1063) | *Major* | **Winutils needs ability to create task as domain user**
---

* [YARN-1051](https://issues.apache.org/jira/browse/YARN-1051) | *Major* | **YARN Admission Control/Planner: enhancing the resource allocation model with time.**
---

* [YARN-668](https://issues.apache.org/jira/browse/YARN-668) | *Blocker* | **TokenIdentifier serialization should consider Unknown fields**
---

* [YARN-611](https://issues.apache.org/jira/browse/YARN-611) | *Major* | **Add an AM retry count reset window to YARN RM**
---

* [YARN-415](https://issues.apache.org/jira/browse/YARN-415) | *Major* | **Capture aggregate memory allocation at the app-level for chargeback**
---

* [YARN-90](https://issues.apache.org/jira/browse/YARN-90) | *Major* | **NodeManager should identify failed disks becoming good again**


