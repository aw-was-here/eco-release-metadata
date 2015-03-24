# Hadoop YARN 2.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [YARN-1893](https://issues.apache.org/jira/browse/YARN-1893) | *Blocker* | **Make ApplicationMasterProtocol#allocate AtMostOnce**
---

* [YARN-1891](https://issues.apache.org/jira/browse/YARN-1891) | *Minor* | **Document NodeManager health-monitoring**
---

* [YARN-1873](https://issues.apache.org/jira/browse/YARN-1873) | *Major* | **TestDistributedShell#testDSShell fails when the test cases are out of order**
---

* [YARN-1867](https://issues.apache.org/jira/browse/YARN-1867) | *Blocker* | **NPE while fetching apps via the REST API**
---

* [YARN-1866](https://issues.apache.org/jira/browse/YARN-1866) | *Blocker* | **YARN RM fails to load state store with delegation token parsing error**
---

* [YARN-1863](https://issues.apache.org/jira/browse/YARN-1863) | *Blocker* | **TestRMFailover fails with 'AssertionError: null'**
---

* [YARN-1859](https://issues.apache.org/jira/browse/YARN-1859) | *Major* | **WebAppProxyServlet will throw ApplicationNotFoundException if the app is no longer cached in RM**
---

* [YARN-1855](https://issues.apache.org/jira/browse/YARN-1855) | *Critical* | **TestRMFailover#testRMWebAppRedirect fails in trunk**
---

* [YARN-1854](https://issues.apache.org/jira/browse/YARN-1854) | *Blocker* | **Race condition in TestRMHA#testStartAndTransitions**
---

* [YARN-1852](https://issues.apache.org/jira/browse/YARN-1852) | *Major* | **Application recovery throws InvalidStateTransitonException for FAILED and KILLED jobs**
---

* [YARN-1850](https://issues.apache.org/jira/browse/YARN-1850) | *Major* | **Make enabling timeline service configurable**
---

* [YARN-1849](https://issues.apache.org/jira/browse/YARN-1849) | *Blocker* | **NPE in ResourceTrackerService#registerNodeManager for UAM**
---

* [YARN-1846](https://issues.apache.org/jira/browse/YARN-1846) | *Major* | **TestRM#testNMTokenSentForNormalContainer assumes CapacityScheduler**
---

* [YARN-1839](https://issues.apache.org/jira/browse/YARN-1839) | *Critical* | **Capacity scheduler preempts an AM out. AM attempt 2 fails to launch task container with SecretManager$InvalidToken: No NMToken sent**
---

* [YARN-1838](https://issues.apache.org/jira/browse/YARN-1838) | *Major* | **Timeline service getEntities API should provide ability to get entities from given id**
---

* [YARN-1833](https://issues.apache.org/jira/browse/YARN-1833) | *Major* | **TestRMAdminService Fails in trunk and branch-2 : Assert Fails due to different count of UserGroups for currentUser()**
---

* [YARN-1830](https://issues.apache.org/jira/browse/YARN-1830) | *Major* | **TestRMRestart.testQueueMetricsOnRMRestart failure**
---

* [YARN-1824](https://issues.apache.org/jira/browse/YARN-1824) | *Major* | **Make Windows client work with Linux/Unix cluster**
---

* [YARN-1821](https://issues.apache.org/jira/browse/YARN-1821) | *Blocker* | **NPE on registerNodeManager if the request has containers for UnmanagedAMs**
---

* [YARN-1816](https://issues.apache.org/jira/browse/YARN-1816) | *Major* | **Succeeded application remains in accepted after RM restart**
---

* [YARN-1812](https://issues.apache.org/jira/browse/YARN-1812) | *Major* | **Job stays in PREP state for long time after RM Restarts**
---

* [YARN-1811](https://issues.apache.org/jira/browse/YARN-1811) | *Major* | **RM HA: AM link broken if the AM is on nodes other than RM**
---

* [YARN-1800](https://issues.apache.org/jira/browse/YARN-1800) | *Critical* | **YARN NodeManager with java.util.concurrent.RejectedExecutionException**
---

* [YARN-1793](https://issues.apache.org/jira/browse/YARN-1793) | *Critical* | **yarn application -kill doesn't kill UnmanagedAMs**
---

* [YARN-1789](https://issues.apache.org/jira/browse/YARN-1789) | *Minor* | **ApplicationSummary does not escape newlines in the app name**
---

* [YARN-1788](https://issues.apache.org/jira/browse/YARN-1788) | *Critical* | **AppsCompleted/AppsKilled metric is incorrect when MR job is killed with yarn application -kill**
---

* [YARN-1787](https://issues.apache.org/jira/browse/YARN-1787) | *Major* | **yarn applicationattempt/container print wrong usage information**
---

* [YARN-1785](https://issues.apache.org/jira/browse/YARN-1785) | *Major* | **FairScheduler treats app lookup failures as ERRORs**
---

* [YARN-1783](https://issues.apache.org/jira/browse/YARN-1783) | *Critical* | **yarn application does not make any progress even when no other application is running when RM is being restarted in the background**
---

* [YARN-1781](https://issues.apache.org/jira/browse/YARN-1781) | *Major* | **NM should allow users to specify max disk utilization for local disks**
---

* [YARN-1780](https://issues.apache.org/jira/browse/YARN-1780) | *Major* | **Improve logging in timeline service**
---

* [YARN-1776](https://issues.apache.org/jira/browse/YARN-1776) | *Major* | **renewDelegationToken should survive RM failover**
---

* [YARN-1775](https://issues.apache.org/jira/browse/YARN-1775) | *Major* | **Create SMAPBasedProcessTree to get PSS information**
---

* [YARN-1774](https://issues.apache.org/jira/browse/YARN-1774) | *Blocker* | **FS: Submitting to non-leaf queue throws NPE**
---

* [YARN-1771](https://issues.apache.org/jira/browse/YARN-1771) | *Critical* | **many getFileStatus calls made from node manager for localizing a public distributed cache resource**
---

* [YARN-1768](https://issues.apache.org/jira/browse/YARN-1768) | *Minor* | **yarn kill non-existent application is too verbose**
---

* [YARN-1766](https://issues.apache.org/jira/browse/YARN-1766) | *Major* | **When RM does the initiation, it should use loaded Configuration instead of bootstrap configuration.**
---

* [YARN-1765](https://issues.apache.org/jira/browse/YARN-1765) | *Major* | **Write test cases to verify that killApplication API works in RM HA**
---

* [YARN-1764](https://issues.apache.org/jira/browse/YARN-1764) | *Major* | **Handle RM fail overs after the submitApplication call.**
---

* [YARN-1761](https://issues.apache.org/jira/browse/YARN-1761) | *Major* | **RMAdminCLI should check whether HA is enabled before executes transitionToActive/transitionToStandby**
---

* [YARN-1760](https://issues.apache.org/jira/browse/YARN-1760) | *Trivial* | **TestRMAdminService assumes CapacityScheduler**
---

* [YARN-1758](https://issues.apache.org/jira/browse/YARN-1758) | *Blocker* | **MiniYARNCluster broken post YARN-1666**
---

* [YARN-1752](https://issues.apache.org/jira/browse/YARN-1752) | *Major* | **Unexpected Unregistered event at Attempt Launched state**
---

* [YARN-1749](https://issues.apache.org/jira/browse/YARN-1749) | *Major* | **Review AHS configs and sync them up with the timeline-service configs**
---

* [YARN-1748](https://issues.apache.org/jira/browse/YARN-1748) | *Blocker* | **hadoop-yarn-server-tests packages core-site.xml breaking downstream tests**
---

* [YARN-1742](https://issues.apache.org/jira/browse/YARN-1742) | *Trivial* | **Fix javadoc of parameter DEFAULT\_NM\_MIN\_HEALTHY\_DISKS\_FRACTION**
---

* [YARN-1734](https://issues.apache.org/jira/browse/YARN-1734) | *Critical* | **RM should get the updated Configurations when it transits from Standby to Active**
---

* [YARN-1732](https://issues.apache.org/jira/browse/YARN-1732) | *Major* | **Change types of related entities and primary filters in ATSEntity**
---

* [YARN-1730](https://issues.apache.org/jira/browse/YARN-1730) | *Major* | **Leveldb timeline store needs simple write locking**
---

* [YARN-1729](https://issues.apache.org/jira/browse/YARN-1729) | *Major* | **TimelineWebServices always passes primary and secondary filters as strings**
---

* [YARN-1724](https://issues.apache.org/jira/browse/YARN-1724) | *Critical* | **Race condition in Fair Scheduler when continuous scheduling is turned on**
---

* [YARN-1721](https://issues.apache.org/jira/browse/YARN-1721) | *Critical* | **When moving app between queues in Fair Scheduler, grab lock on FSSchedulerApp**
---

* [YARN-1719](https://issues.apache.org/jira/browse/YARN-1719) | *Major* | **ATSWebServices produces jersey warnings**
---

* [YARN-1717](https://issues.apache.org/jira/browse/YARN-1717) | *Major* | **Enable offline deletion of entries in leveldb timeline store**
---

* [YARN-1706](https://issues.apache.org/jira/browse/YARN-1706) | *Major* | **Create an utility function to dump timeline records to json**
---

* [YARN-1704](https://issues.apache.org/jira/browse/YARN-1704) | *Blocker* | **Review LICENSE and NOTICE to reflect new levelDB releated libraries being used**
---

* [YARN-1698](https://issues.apache.org/jira/browse/YARN-1698) | *Major* | **Replace MemoryApplicationTimelineStore with LeveldbApplicationTimelineStore as default**
---

* [YARN-1697](https://issues.apache.org/jira/browse/YARN-1697) | *Major* | **NodeManager reports negative running containers**
---

* [YARN-1692](https://issues.apache.org/jira/browse/YARN-1692) | *Major* | **ConcurrentModificationException in fair scheduler AppSchedulable**
---

* [YARN-1690](https://issues.apache.org/jira/browse/YARN-1690) | *Major* | **Sending timeline entities+events from Distributed shell**
---

* [YARN-1689](https://issues.apache.org/jira/browse/YARN-1689) | *Critical* | **RMAppAttempt is not killed when RMApp is at ACCEPTED**
---

* [YARN-1687](https://issues.apache.org/jira/browse/YARN-1687) | *Major* | **Refactoring timeline classes to remove "app" related words**
---

* [YARN-1686](https://issues.apache.org/jira/browse/YARN-1686) | *Major* | **NodeManager.resyncWithRM() does not handle exception which cause NodeManger to Hang.**
---

* [YARN-1685](https://issues.apache.org/jira/browse/YARN-1685) | *Major* | **Bugs around log URL**
---

* [YARN-1684](https://issues.apache.org/jira/browse/YARN-1684) | *Major* | **Fix history server heap size in yarn script**
---

* [YARN-1676](https://issues.apache.org/jira/browse/YARN-1676) | *Major* | **Make admin refreshUserToGroupsMappings of configuration work across RM failover**
---

* [YARN-1673](https://issues.apache.org/jira/browse/YARN-1673) | *Blocker* | **Valid yarn kill application prints out help message.**
---

* [YARN-1672](https://issues.apache.org/jira/browse/YARN-1672) | *Trivial* | **YarnConfiguration is missing a default for yarn.nodemanager.log.retain-seconds**
---

* [YARN-1670](https://issues.apache.org/jira/browse/YARN-1670) | *Critical* | **aggregated log writer can write more log data then it says is the log length**
---

* [YARN-1669](https://issues.apache.org/jira/browse/YARN-1669) | *Major* | **Make admin refreshServiceAcls work across RM failover**
---

* [YARN-1668](https://issues.apache.org/jira/browse/YARN-1668) | *Major* | **Make admin refreshAdminAcls work across RM failover**
---

* [YARN-1667](https://issues.apache.org/jira/browse/YARN-1667) | *Major* | **Make admin refreshSuperUserGroupsConfiguration work across RM failover**
---

* [YARN-1666](https://issues.apache.org/jira/browse/YARN-1666) | *Major* | **Make admin refreshNodes work across RM failover**
---

* [YARN-1665](https://issues.apache.org/jira/browse/YARN-1665) | *Major* | **Set better defaults for HA configs for automatic failover**
---

* [YARN-1661](https://issues.apache.org/jira/browse/YARN-1661) | *Major* | **AppMaster logs says failing even if an application does succeed.**
---

* [YARN-1660](https://issues.apache.org/jira/browse/YARN-1660) | *Major* | **add the ability to set yarn.resourcemanager.hostname.rm-id instead of setting all the various host:port properties for RM**
---

* [YARN-1659](https://issues.apache.org/jira/browse/YARN-1659) | *Major* | **Define the ApplicationTimelineStore store as an abstraction for implementing different storage impls for storing timeline information**
---

* [YARN-1658](https://issues.apache.org/jira/browse/YARN-1658) | *Major* | **Webservice should redirect to active RM when HA is enabled.**
---

* [YARN-1641](https://issues.apache.org/jira/browse/YARN-1641) | *Major* | **ZK store should attempt a write periodically to ensure it is still Active**
---

* [YARN-1640](https://issues.apache.org/jira/browse/YARN-1640) | *Blocker* | **Manual Failover does not work in secure clusters**
---

* [YARN-1639](https://issues.apache.org/jira/browse/YARN-1639) | *Major* | **YARM RM HA requires different configs on different RM hosts**
---

* [YARN-1637](https://issues.apache.org/jira/browse/YARN-1637) | *Major* | **Implement a client library for java users to post entities+events**
---

* [YARN-1636](https://issues.apache.org/jira/browse/YARN-1636) | *Major* | **Implement timeline related web-services inside AHS for storing and retrieving entities+events**
---

* [YARN-1635](https://issues.apache.org/jira/browse/YARN-1635) | *Major* | **Implement a Leveldb based ApplicationTimelineStore**
---

* [YARN-1634](https://issues.apache.org/jira/browse/YARN-1634) | *Major* | **Define an in-memory implementation of ApplicationTimelineStore**
---

* [YARN-1633](https://issues.apache.org/jira/browse/YARN-1633) | *Major* | **Define user-faced entity, entity-info and event objects**
---

* [YARN-1632](https://issues.apache.org/jira/browse/YARN-1632) | *Minor* | **TestApplicationMasterServices should be under org.apache.hadoop.yarn.server.resourcemanager package**
---

* [YARN-1625](https://issues.apache.org/jira/browse/YARN-1625) | *Trivial* | **mvn apache-rat:check outputs warning message in YARN-321 branch**
---

* [YARN-1617](https://issues.apache.org/jira/browse/YARN-1617) | *Major* | **Remove ancient comment and surround LOG.debug in AppSchedulingInfo.allocate**
---

* [YARN-1613](https://issues.apache.org/jira/browse/YARN-1613) | *Major* | **Fix config name YARN\_HISTORY\_SERVICE\_ENABLED**
---

* [YARN-1611](https://issues.apache.org/jira/browse/YARN-1611) | *Major* | **Make admin refresh of capacity scheduler configuration work across RM failover**
---

* [YARN-1605](https://issues.apache.org/jira/browse/YARN-1605) | *Major* | **Fix formatting issues with new module in YARN-321 branch**
---

* [YARN-1597](https://issues.apache.org/jira/browse/YARN-1597) | *Major* | **FindBugs warnings on YARN-321 branch**
---

* [YARN-1596](https://issues.apache.org/jira/browse/YARN-1596) | *Major* | **Javadoc failures on YARN-321 branch**
---

* [YARN-1595](https://issues.apache.org/jira/browse/YARN-1595) | *Major* | **Test failures on YARN-321 branch**
---

* [YARN-1594](https://issues.apache.org/jira/browse/YARN-1594) | *Major* | **YARN-321 branch needs to be updated after YARN-888 pom changes**
---

* [YARN-1591](https://issues.apache.org/jira/browse/YARN-1591) | *Major* | **TestResourceTrackerService fails randomly on trunk**
---

* [YARN-1590](https://issues.apache.org/jira/browse/YARN-1590) | *Major* | **\_HOST doesn't expand properly for RM, NM, ProxyServer and JHS**
---

* [YARN-1588](https://issues.apache.org/jira/browse/YARN-1588) | *Major* | **Rebind NM tokens for previous attempt's running containers to the new attempt**
---

* [YARN-1587](https://issues.apache.org/jira/browse/YARN-1587) | *Major* | **[YARN-321] Merge Patch for YARN-321**
---

* [YARN-1578](https://issues.apache.org/jira/browse/YARN-1578) | *Major* | **Fix how to read history file in FileSystemApplicationHistoryStore**
---

* [YARN-1577](https://issues.apache.org/jira/browse/YARN-1577) | *Blocker* | **Unmanaged AM is broken because of YARN-1493**
---

* [YARN-1570](https://issues.apache.org/jira/browse/YARN-1570) | *Minor* | **Formatting the lines within 80 chars in YarnCommands.apt.vm**
---

* [YARN-1566](https://issues.apache.org/jira/browse/YARN-1566) | *Major* | **Change distributed-shell to retain containers from previous AppAttempt**
---

* [YARN-1555](https://issues.apache.org/jira/browse/YARN-1555) | *Major* | **[YARN-321] Failing tests in org.apache.hadoop.yarn.server.applicationhistoryservice.***
---

* [YARN-1553](https://issues.apache.org/jira/browse/YARN-1553) | *Major* | **Do not use HttpConfig.isSecure() in YARN**
---

* [YARN-1536](https://issues.apache.org/jira/browse/YARN-1536) | *Minor* | **Cleanup: Get rid of ResourceManager#get*SecretManager() methods and use the RMContext methods instead**
---

* [YARN-1534](https://issues.apache.org/jira/browse/YARN-1534) | *Major* | **TestAHSWebApp failed in YARN-321 branch**
---

* [YARN-1531](https://issues.apache.org/jira/browse/YARN-1531) | *Major* | **True up yarn command documentation**
---

* [YARN-1528](https://issues.apache.org/jira/browse/YARN-1528) | *Blocker* | **Allow setting auth for ZK connections**
---

* [YARN-1525](https://issues.apache.org/jira/browse/YARN-1525) | *Major* | **Web UI should redirect to active RM when HA is enabled.**
---

* [YARN-1521](https://issues.apache.org/jira/browse/YARN-1521) | *Blocker* | **Mark appropriate protocol methods with the idempotent annotation or AtMostOnce annotation**
---

* [YARN-1512](https://issues.apache.org/jira/browse/YARN-1512) | *Major* | **Enhance CS to decouple scheduling from node heartbeats**
---

* [YARN-1504](https://issues.apache.org/jira/browse/YARN-1504) | *Major* | **RM changes for moving apps between queues**
---

* [YARN-1499](https://issues.apache.org/jira/browse/YARN-1499) | *Major* | **Fair Scheduler changes for moving apps between queues**
---

* [YARN-1498](https://issues.apache.org/jira/browse/YARN-1498) | *Major* | **Common scheduler changes for moving apps between queues**
---

* [YARN-1497](https://issues.apache.org/jira/browse/YARN-1497) | *Major* | **Expose moving apps between queues on the command line**
---

* [YARN-1496](https://issues.apache.org/jira/browse/YARN-1496) | *Major* | **Protocol additions to allow moving apps between queues**
---

* [YARN-1493](https://issues.apache.org/jira/browse/YARN-1493) | *Major* | **Schedulers don't recognize apps separately from app-attempts**
---

* [YARN-1490](https://issues.apache.org/jira/browse/YARN-1490) | *Major* | **RM should optionally not kill all containers when an ApplicationMaster exits**
---

* [YARN-1470](https://issues.apache.org/jira/browse/YARN-1470) | *Major* | **Add audience annotation to MiniYARNCluster**
---

* [YARN-1461](https://issues.apache.org/jira/browse/YARN-1461) | *Major* | **RM API and RM changes to handle tags for running jobs**
---

* [YARN-1459](https://issues.apache.org/jira/browse/YARN-1459) | *Major* | **RM services should depend on ConfigurationProvider during startup too**
---

* [YARN-1452](https://issues.apache.org/jira/browse/YARN-1452) | *Major* | **Document the usage of the generic application history and the timeline data service**
---

* [YARN-1444](https://issues.apache.org/jira/browse/YARN-1444) | *Blocker* | **RM crashes when node resource request sent without corresponding off-switch request**
---

* [YARN-1428](https://issues.apache.org/jira/browse/YARN-1428) | *Major* | **RM cannot write the final state of RMApp/RMAppAttempt to the application history store in the transition to the final state**
---

* [YARN-1417](https://issues.apache.org/jira/browse/YARN-1417) | *Blocker* | **RM may issue expired container tokens to AM while issuing new containers.**
---

* [YARN-1410](https://issues.apache.org/jira/browse/YARN-1410) | *Major* | **Handle RM fails over after getApplicationID() and before submitApplication().**
---

* [YARN-1398](https://issues.apache.org/jira/browse/YARN-1398) | *Blocker* | **Deadlock in capacity scheduler leaf queue and parent queue for getQueueInfo and completedContainer call**
---

* [YARN-1389](https://issues.apache.org/jira/browse/YARN-1389) | *Major* | **ApplicationClientProtocol and ApplicationHistoryProtocol should expose analogous APIs**
---

* [YARN-1379](https://issues.apache.org/jira/browse/YARN-1379) | *Major* | **[YARN-321] AHS protocols need to be in yarn proto package name after YARN-1170**
---

* [YARN-1345](https://issues.apache.org/jira/browse/YARN-1345) | *Major* | **Removing FINAL\_SAVING from YarnApplicationAttemptState**
---

* [YARN-1301](https://issues.apache.org/jira/browse/YARN-1301) | *Minor* | **Need to log the blacklist additions/removals when YarnSchedule#allocate**
---

* [YARN-1285](https://issues.apache.org/jira/browse/YARN-1285) | *Major* | **Inconsistency of default "yarn.acl.enable" value**
---

* [YARN-1266](https://issues.apache.org/jira/browse/YARN-1266) | *Major* | **Implement PB service and client wrappers for ApplicationHistoryProtocol**
---

* [YARN-1242](https://issues.apache.org/jira/browse/YARN-1242) | *Major* | **Script changes to start AHS as an individual process**
---

* [YARN-1206](https://issues.apache.org/jira/browse/YARN-1206) | *Blocker* | **AM container log link broken on NM web page**
---

* [YARN-1191](https://issues.apache.org/jira/browse/YARN-1191) | *Major* | **[YARN-321] Update artifact versions for application history service**
---

* [YARN-1171](https://issues.apache.org/jira/browse/YARN-1171) | *Major* | **Add default queue properties to Fair Scheduler documentation**
---

* [YARN-1166](https://issues.apache.org/jira/browse/YARN-1166) | *Blocker* | **YARN 'appsFailed' metric should be of type 'counter'**
---

* [YARN-1123](https://issues.apache.org/jira/browse/YARN-1123) | *Major* | **[YARN-321] Adding ContainerReport and Protobuf implementation**
---

* [YARN-1071](https://issues.apache.org/jira/browse/YARN-1071) | *Major* | **ResourceManager's decommissioned and lost node count is 0 after restart**
---

* [YARN-1041](https://issues.apache.org/jira/browse/YARN-1041) | *Major* | **Protocol changes for RM to bind and notify a restarted AM of existing containers**
---

* [YARN-1023](https://issues.apache.org/jira/browse/YARN-1023) | *Major* | **[YARN-321] Webservices REST API's support for Application History**
---

* [YARN-1017](https://issues.apache.org/jira/browse/YARN-1017) | *Blocker* | **Document RM Restart feature**
---

* [YARN-1007](https://issues.apache.org/jira/browse/YARN-1007) | *Major* | **[YARN-321] Enhance History Reader interface for Containers**
---

* [YARN-987](https://issues.apache.org/jira/browse/YARN-987) | *Major* | **Adding ApplicationHistoryManager responsible for exposing reports to all clients**
---

* [YARN-986](https://issues.apache.org/jira/browse/YARN-986) | *Blocker* | **RM DT token service should have service addresses of both RMs**
---

* [YARN-984](https://issues.apache.org/jira/browse/YARN-984) | *Major* | **[YARN-321] Move classes from applicationhistoryservice.records.pb.impl package to applicationhistoryservice.records.impl.pb**
---

* [YARN-979](https://issues.apache.org/jira/browse/YARN-979) | *Major* | **[YARN-321] Add more APIs related to ApplicationAttempt and Container in ApplicationHistoryProtocol**
---

* [YARN-978](https://issues.apache.org/jira/browse/YARN-978) | *Major* | **[YARN-321] Adding ApplicationAttemptReport and Protobuf implementation**
---

* [YARN-975](https://issues.apache.org/jira/browse/YARN-975) | *Major* | **Add a file-system implementation for history-storage**
---

* [YARN-974](https://issues.apache.org/jira/browse/YARN-974) | *Major* | **RMContainer should collect more useful information to be recorded in Application-History**
---

* [YARN-967](https://issues.apache.org/jira/browse/YARN-967) | *Major* | **[YARN-321] Command Line Interface(CLI) for Reading Application History Storage Data**
---

* [YARN-962](https://issues.apache.org/jira/browse/YARN-962) | *Major* | **Update application\_history\_service.proto**
---

* [YARN-956](https://issues.apache.org/jira/browse/YARN-956) | *Major* | **[YARN-321] Add a testable in-memory HistoryStorage**
---

* [YARN-955](https://issues.apache.org/jira/browse/YARN-955) | *Major* | **[YARN-321] Implementation of ApplicationHistoryProtocol**
---

* [YARN-954](https://issues.apache.org/jira/browse/YARN-954) | *Major* | **[YARN-321] History Service should create the webUI and wire it to HistoryStorage**
---

* [YARN-953](https://issues.apache.org/jira/browse/YARN-953) | *Major* | **[YARN-321] Enable ResourceManager to write history data**
---

* [YARN-947](https://issues.apache.org/jira/browse/YARN-947) | *Major* | **Defining the history data classes for the implementation of the reading/writing interface**
---

* [YARN-935](https://issues.apache.org/jira/browse/YARN-935) | *Major* | **YARN-321 branch is broken due to applicationhistoryserver module's pom.xml**
---

* [YARN-934](https://issues.apache.org/jira/browse/YARN-934) | *Major* | **HistoryStorage writer interface for Application History Server**
---

* [YARN-930](https://issues.apache.org/jira/browse/YARN-930) | *Major* | **Bootstrap ApplicationHistoryService module**
---

* [YARN-925](https://issues.apache.org/jira/browse/YARN-925) | *Major* | **HistoryStorage Reader Interface for Application History Server**
---

* [YARN-713](https://issues.apache.org/jira/browse/YARN-713) | *Critical* | **ResourceManager can exit unexpectedly if DNS is unavailable**


