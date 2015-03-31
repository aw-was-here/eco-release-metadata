# Hadoop Changelog

## Release 2.4.0 - 2014-04-07

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1789](https://issues.apache.org/jira/browse/YARN-1789) | ApplicationSummary does not escape newlines in the app name |  Minor | resourcemanager | Akira AJISAKA | Tsuyoshi Ozawa |
| [YARN-1771](https://issues.apache.org/jira/browse/YARN-1771) | many getFileStatus calls made from node manager for localizing a public distributed cache resource |  Critical | nodemanager | Sangjin Lee | Sangjin Lee |
| [YARN-1570](https://issues.apache.org/jira/browse/YARN-1570) | Formatting the lines within 80 chars in YarnCommands.apt.vm |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1536](https://issues.apache.org/jira/browse/YARN-1536) | Cleanup: Get rid of ResourceManager#get*SecretManager() methods and use the RMContext methods instead |  Minor | resourcemanager | Karthik Kambatla | Anubhav Dhoot |
| [YARN-1512](https://issues.apache.org/jira/browse/YARN-1512) | Enhance CS to decouple scheduling from node heartbeats |  Major | . | Arun C Murthy | Arun C Murthy |
| [YARN-1171](https://issues.apache.org/jira/browse/YARN-1171) | Add default queue properties to Fair Scheduler documentation |  Major | documentation, scheduler | Sandy Ryza | Naren Koneru |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1873](https://issues.apache.org/jira/browse/YARN-1873) | TestDistributedShell#testDSShell fails when the test cases are out of order |  Major | . | Mit Desai | Mit Desai |
| [YARN-1867](https://issues.apache.org/jira/browse/YARN-1867) | NPE while fetching apps via the REST API |  Blocker | resourcemanager | Karthik Kambatla | Vinod Kumar Vavilapalli |
| [YARN-1866](https://issues.apache.org/jira/browse/YARN-1866) | YARN RM fails to load state store with delegation token parsing error |  Blocker | . | Arpit Gupta | Jian He |
| [YARN-1859](https://issues.apache.org/jira/browse/YARN-1859) | WebAppProxyServlet will throw ApplicationNotFoundException if the app is no longer cached in RM |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1852](https://issues.apache.org/jira/browse/YARN-1852) | Application recovery throws InvalidStateTransitonException for FAILED and KILLED jobs |  Major | resourcemanager | Rohith | Rohith |
| [YARN-1849](https://issues.apache.org/jira/browse/YARN-1849) | NPE in ResourceTrackerService#registerNodeManager for UAM |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1846](https://issues.apache.org/jira/browse/YARN-1846) | TestRM#testNMTokenSentForNormalContainer assumes CapacityScheduler |  Major | . | Robert Kanter | Robert Kanter |
| [YARN-1839](https://issues.apache.org/jira/browse/YARN-1839) | Capacity scheduler preempts an AM out. AM attempt 2 fails to launch task container with SecretManager$InvalidToken: No NMToken sent |  Critical | applications, capacityscheduler | Tassapol Athiapinya | Jian He |
| [YARN-1833](https://issues.apache.org/jira/browse/YARN-1833) | TestRMAdminService Fails in trunk and branch-2 : Assert Fails due to different count of UserGroups for currentUser() |  Major | . | Mit Desai | Mit Desai |
| [YARN-1830](https://issues.apache.org/jira/browse/YARN-1830) | TestRMRestart.testQueueMetricsOnRMRestart failure |  Major | resourcemanager | Karthik Kambatla | Zhijie Shen |
| [YARN-1824](https://issues.apache.org/jira/browse/YARN-1824) | Make Windows client work with Linux/Unix cluster |  Major | . | Jian He | Jian He |
| [YARN-1793](https://issues.apache.org/jira/browse/YARN-1793) | yarn application -kill doesn't kill UnmanagedAMs |  Critical | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1788](https://issues.apache.org/jira/browse/YARN-1788) | AppsCompleted/AppsKilled metric is incorrect when MR job is killed with yarn application -kill |  Critical | resourcemanager | Tassapol Athiapinya | Varun Vasudev |
| [YARN-1785](https://issues.apache.org/jira/browse/YARN-1785) | FairScheduler treats app lookup failures as ERRORs |  Major | . | bc Wong | bc Wong |
| [YARN-1783](https://issues.apache.org/jira/browse/YARN-1783) | yarn application does not make any progress even when no other application is running when RM is being restarted in the background |  Critical | . | Arpit Gupta | Jian He |
| [YARN-1774](https://issues.apache.org/jira/browse/YARN-1774) | FS: Submitting to non-leaf queue throws NPE |  Blocker | resourcemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-1768](https://issues.apache.org/jira/browse/YARN-1768) | yarn kill non-existent application is too verbose |  Minor | client | Hitesh Shah | Tsuyoshi Ozawa |
| [YARN-1760](https://issues.apache.org/jira/browse/YARN-1760) | TestRMAdminService assumes CapacityScheduler |  Trivial | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-1758](https://issues.apache.org/jira/browse/YARN-1758) | MiniYARNCluster broken post YARN-1666 |  Blocker | . | Hitesh Shah | Xuan Gong |
| [YARN-1752](https://issues.apache.org/jira/browse/YARN-1752) | Unexpected Unregistered event at Attempt Launched state |  Major | . | Jian He | Rohith |
| [YARN-1748](https://issues.apache.org/jira/browse/YARN-1748) | hadoop-yarn-server-tests packages core-site.xml breaking downstream tests |  Blocker | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [YARN-1742](https://issues.apache.org/jira/browse/YARN-1742) | Fix javadoc of parameter DEFAULT\_NM\_MIN\_HEALTHY\_DISKS\_FRACTION |  Trivial | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1724](https://issues.apache.org/jira/browse/YARN-1724) | Race condition in Fair Scheduler when continuous scheduling is turned on |  Critical | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1721](https://issues.apache.org/jira/browse/YARN-1721) | When moving app between queues in Fair Scheduler, grab lock on FSSchedulerApp |  Critical | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1697](https://issues.apache.org/jira/browse/YARN-1697) | NodeManager reports negative running containers |  Major | nodemanager | Sandy Ryza | Sandy Ryza |
| [YARN-1692](https://issues.apache.org/jira/browse/YARN-1692) | ConcurrentModificationException in fair scheduler AppSchedulable |  Major | scheduler | Sangjin Lee | Sangjin Lee |
| [YARN-1689](https://issues.apache.org/jira/browse/YARN-1689) | RMAppAttempt is not killed when RMApp is at ACCEPTED |  Critical | resourcemanager | Deepesh Khandelwal | Vinod Kumar Vavilapalli |
| [YARN-1686](https://issues.apache.org/jira/browse/YARN-1686) | NodeManager.resyncWithRM() does not handle exception which cause NodeManger to Hang. |  Major | nodemanager | Rohith | Rohith |
| [YARN-1673](https://issues.apache.org/jira/browse/YARN-1673) | Valid yarn kill application prints out help message. |  Blocker | client | Tassapol Athiapinya | Mayank Bansal |
| [YARN-1672](https://issues.apache.org/jira/browse/YARN-1672) | YarnConfiguration is missing a default for yarn.nodemanager.log.retain-seconds |  Trivial | nodemanager | Karthik Kambatla | Naren Koneru |
| [YARN-1670](https://issues.apache.org/jira/browse/YARN-1670) | aggregated log writer can write more log data then it says is the log length |  Critical | . | Thomas Graves | Mit Desai |
| [YARN-1661](https://issues.apache.org/jira/browse/YARN-1661) | AppMaster logs says failing even if an application does succeed. |  Major | applications/distributed-shell | Tassapol Athiapinya | Vinod Kumar Vavilapalli |
| [YARN-1632](https://issues.apache.org/jira/browse/YARN-1632) | TestApplicationMasterServices should be under org.apache.hadoop.yarn.server.resourcemanager package |  Minor | . | Chen He | Chen He |
| [YARN-1617](https://issues.apache.org/jira/browse/YARN-1617) | Remove ancient comment and surround LOG.debug in AppSchedulingInfo.allocate |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1591](https://issues.apache.org/jira/browse/YARN-1591) | TestResourceTrackerService fails randomly on trunk |  Major | . | Vinod Kumar Vavilapalli | Tsuyoshi Ozawa |
| [YARN-1590](https://issues.apache.org/jira/browse/YARN-1590) | \_HOST doesn't expand properly for RM, NM, ProxyServer and JHS |  Major | resourcemanager | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [YARN-1553](https://issues.apache.org/jira/browse/YARN-1553) | Do not use HttpConfig.isSecure() in YARN |  Major | . | Haohui Mai | Haohui Mai |
| [YARN-1531](https://issues.apache.org/jira/browse/YARN-1531) | True up yarn command documentation |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1528](https://issues.apache.org/jira/browse/YARN-1528) | Allow setting auth for ZK connections |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1470](https://issues.apache.org/jira/browse/YARN-1470) | Add audience annotation to MiniYARNCluster |  Major | . | Sandy Ryza | Anubhav Dhoot |
| [YARN-1444](https://issues.apache.org/jira/browse/YARN-1444) | RM crashes when node resource request sent without corresponding off-switch request |  Blocker | client, resourcemanager | Robert Grandl | Wangda Tan |
| [YARN-1417](https://issues.apache.org/jira/browse/YARN-1417) | RM may issue expired container tokens to AM while issuing new containers. |  Blocker | . | Omkar Vinit Joshi | Jian He |
| [YARN-1398](https://issues.apache.org/jira/browse/YARN-1398) | Deadlock in capacity scheduler leaf queue and parent queue for getQueueInfo and completedContainer call |  Blocker | resourcemanager | Sunil G | Vinod Kumar Vavilapalli |
| [YARN-1301](https://issues.apache.org/jira/browse/YARN-1301) | Need to log the blacklist additions/removals when YarnSchedule#allocate |  Minor | . | Zhijie Shen | Tsuyoshi Ozawa |
| [YARN-1285](https://issues.apache.org/jira/browse/YARN-1285) | Inconsistency of default "yarn.acl.enable" value |  Major | . | Zhijie Shen | Kenji Kikushima |
| [YARN-1206](https://issues.apache.org/jira/browse/YARN-1206) | AM container log link broken on NM web page |  Blocker | . | Jian He | Rohith |
| [YARN-1166](https://issues.apache.org/jira/browse/YARN-1166) | YARN 'appsFailed' metric should be of type 'counter' |  Blocker | resourcemanager | Srimanth Gunturi | Zhijie Shen |
| [YARN-1071](https://issues.apache.org/jira/browse/YARN-1071) | ResourceManager's decommissioned and lost node count is 0 after restart |  Major | resourcemanager | Srimanth Gunturi | Jian He |
| [YARN-713](https://issues.apache.org/jira/browse/YARN-713) | ResourceManager can exit unexpectedly if DNS is unavailable |  Critical | resourcemanager | Jason Lowe | Jian He |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1863](https://issues.apache.org/jira/browse/YARN-1863) | TestRMFailover fails with 'AssertionError: null' |  Blocker | . | Ted Yu | Xuan Gong |
| [YARN-1855](https://issues.apache.org/jira/browse/YARN-1855) | TestRMFailover#testRMWebAppRedirect fails in trunk |  Critical | . | Ted Yu | Zhijie Shen |
| [YARN-1854](https://issues.apache.org/jira/browse/YARN-1854) | Race condition in TestRMHA#testStartAndTransitions |  Blocker | . | Mit Desai | Rohith |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1893](https://issues.apache.org/jira/browse/YARN-1893) | Make ApplicationMasterProtocol#allocate AtMostOnce |  Blocker | resourcemanager | Xuan Gong | Xuan Gong |
| [YARN-1850](https://issues.apache.org/jira/browse/YARN-1850) | Make enabling timeline service configurable |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1838](https://issues.apache.org/jira/browse/YARN-1838) | Timeline service getEntities API should provide ability to get entities from given id |  Major | . | Srimanth Gunturi | Billie Rinaldi |
| [YARN-1821](https://issues.apache.org/jira/browse/YARN-1821) | NPE on registerNodeManager if the request has containers for UnmanagedAMs |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1816](https://issues.apache.org/jira/browse/YARN-1816) | Succeeded application remains in accepted after RM restart |  Major | . | Arpit Gupta | Jian He |
| [YARN-1812](https://issues.apache.org/jira/browse/YARN-1812) | Job stays in PREP state for long time after RM Restarts |  Major | . | Yesha Vora | Jian He |
| [YARN-1811](https://issues.apache.org/jira/browse/YARN-1811) | RM HA: AM link broken if the AM is on nodes other than RM |  Major | resourcemanager | Robert Kanter | Robert Kanter |
| [YARN-1800](https://issues.apache.org/jira/browse/YARN-1800) | YARN NodeManager with java.util.concurrent.RejectedExecutionException |  Critical | nodemanager | Paul Isaychuk | Varun Vasudev |
| [YARN-1787](https://issues.apache.org/jira/browse/YARN-1787) | yarn applicationattempt/container print wrong usage information |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1781](https://issues.apache.org/jira/browse/YARN-1781) | NM should allow users to specify max disk utilization for local disks |  Major | nodemanager | Varun Vasudev | Varun Vasudev |
| [YARN-1780](https://issues.apache.org/jira/browse/YARN-1780) | Improve logging in timeline service |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1776](https://issues.apache.org/jira/browse/YARN-1776) | renewDelegationToken should survive RM failover |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1775](https://issues.apache.org/jira/browse/YARN-1775) | Create SMAPBasedProcessTree to get PSS information |  Major | nodemanager | Rajesh Balamohan | Rajesh Balamohan |
| [YARN-1766](https://issues.apache.org/jira/browse/YARN-1766) | When RM does the initiation, it should use loaded Configuration instead of bootstrap configuration. |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1765](https://issues.apache.org/jira/browse/YARN-1765) | Write test cases to verify that killApplication API works in RM HA |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1764](https://issues.apache.org/jira/browse/YARN-1764) | Handle RM fail overs after the submitApplication call. |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1761](https://issues.apache.org/jira/browse/YARN-1761) | RMAdminCLI should check whether HA is enabled before executes transitionToActive/transitionToStandby |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1749](https://issues.apache.org/jira/browse/YARN-1749) | Review AHS configs and sync them up with the timeline-service configs |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1734](https://issues.apache.org/jira/browse/YARN-1734) | RM should get the updated Configurations when it transits from Standby to Active |  Critical | . | Xuan Gong | Xuan Gong |
| [YARN-1732](https://issues.apache.org/jira/browse/YARN-1732) | Change types of related entities and primary filters in ATSEntity |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1730](https://issues.apache.org/jira/browse/YARN-1730) | Leveldb timeline store needs simple write locking |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1729](https://issues.apache.org/jira/browse/YARN-1729) | TimelineWebServices always passes primary and secondary filters as strings |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1719](https://issues.apache.org/jira/browse/YARN-1719) | ATSWebServices produces jersey warnings |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1717](https://issues.apache.org/jira/browse/YARN-1717) | Enable offline deletion of entries in leveldb timeline store |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1706](https://issues.apache.org/jira/browse/YARN-1706) | Create an utility function to dump timeline records to json |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1704](https://issues.apache.org/jira/browse/YARN-1704) | Review LICENSE and NOTICE to reflect new levelDB releated libraries being used |  Blocker | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1698](https://issues.apache.org/jira/browse/YARN-1698) | Replace MemoryApplicationTimelineStore with LeveldbApplicationTimelineStore as default |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1690](https://issues.apache.org/jira/browse/YARN-1690) | Sending timeline entities+events from Distributed shell |  Major | . | Mayank Bansal | Mayank Bansal |
| [YARN-1687](https://issues.apache.org/jira/browse/YARN-1687) | Refactoring timeline classes to remove "app" related words |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1685](https://issues.apache.org/jira/browse/YARN-1685) | Bugs around log URL |  Major | . | Mayank Bansal | Zhijie Shen |
| [YARN-1684](https://issues.apache.org/jira/browse/YARN-1684) | Fix history server heap size in yarn script |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1676](https://issues.apache.org/jira/browse/YARN-1676) | Make admin refreshUserToGroupsMappings of configuration work across RM failover |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1669](https://issues.apache.org/jira/browse/YARN-1669) | Make admin refreshServiceAcls work across RM failover |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1668](https://issues.apache.org/jira/browse/YARN-1668) | Make admin refreshAdminAcls work across RM failover |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1667](https://issues.apache.org/jira/browse/YARN-1667) | Make admin refreshSuperUserGroupsConfiguration work across RM failover |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1666](https://issues.apache.org/jira/browse/YARN-1666) | Make admin refreshNodes work across RM failover |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1665](https://issues.apache.org/jira/browse/YARN-1665) | Set better defaults for HA configs for automatic failover |  Major | resourcemanager | Arpit Gupta | Xuan Gong |
| [YARN-1660](https://issues.apache.org/jira/browse/YARN-1660) | add the ability to set yarn.resourcemanager.hostname.rm-id instead of setting all the various host:port properties for RM |  Major | resourcemanager | Arpit Gupta | Xuan Gong |
| [YARN-1659](https://issues.apache.org/jira/browse/YARN-1659) | Define the ApplicationTimelineStore store as an abstraction for implementing different storage impls for storing timeline information |  Major | . | Billie Rinaldi | Billie Rinaldi |
| [YARN-1658](https://issues.apache.org/jira/browse/YARN-1658) | Webservice should redirect to active RM when HA is enabled. |  Major | . | Cindy Li | Cindy Li |
| [YARN-1641](https://issues.apache.org/jira/browse/YARN-1641) | ZK store should attempt a write periodically to ensure it is still Active |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1640](https://issues.apache.org/jira/browse/YARN-1640) | Manual Failover does not work in secure clusters |  Blocker | . | Xuan Gong | Xuan Gong |
| [YARN-1639](https://issues.apache.org/jira/browse/YARN-1639) | YARM RM HA requires different configs on different RM hosts |  Major | resourcemanager | Arpit Gupta | Xuan Gong |
| [YARN-1637](https://issues.apache.org/jira/browse/YARN-1637) | Implement a client library for java users to post entities+events |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-1636](https://issues.apache.org/jira/browse/YARN-1636) | Implement timeline related web-services inside AHS for storing and retrieving entities+events |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-1635](https://issues.apache.org/jira/browse/YARN-1635) | Implement a Leveldb based ApplicationTimelineStore |  Major | . | Vinod Kumar Vavilapalli | Billie Rinaldi |
| [YARN-1634](https://issues.apache.org/jira/browse/YARN-1634) | Define an in-memory implementation of ApplicationTimelineStore |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-1633](https://issues.apache.org/jira/browse/YARN-1633) | Define user-faced entity, entity-info and event objects |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-1625](https://issues.apache.org/jira/browse/YARN-1625) | mvn apache-rat:check outputs warning message in YARN-321 branch |  Trivial | . | Shinichi Yamashita | Shinichi Yamashita |
| [YARN-1613](https://issues.apache.org/jira/browse/YARN-1613) | Fix config name YARN\_HISTORY\_SERVICE\_ENABLED |  Major | . | Zhijie Shen | Akira AJISAKA |
| [YARN-1611](https://issues.apache.org/jira/browse/YARN-1611) | Make admin refresh of capacity scheduler configuration work across RM failover |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1605](https://issues.apache.org/jira/browse/YARN-1605) | Fix formatting issues with new module in YARN-321 branch |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1597](https://issues.apache.org/jira/browse/YARN-1597) | FindBugs warnings on YARN-321 branch |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1596](https://issues.apache.org/jira/browse/YARN-1596) | Javadoc failures on YARN-321 branch |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1595](https://issues.apache.org/jira/browse/YARN-1595) | Test failures on YARN-321 branch |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1594](https://issues.apache.org/jira/browse/YARN-1594) | YARN-321 branch needs to be updated after YARN-888 pom changes |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1588](https://issues.apache.org/jira/browse/YARN-1588) | Rebind NM tokens for previous attempt's running containers to the new attempt |  Major | . | Jian He | Jian He |
| [YARN-1587](https://issues.apache.org/jira/browse/YARN-1587) | [YARN-321] Merge Patch for YARN-321 |  Major | . | Mayank Bansal | Vinod Kumar Vavilapalli |
| [YARN-1578](https://issues.apache.org/jira/browse/YARN-1578) | Fix how to read history file in FileSystemApplicationHistoryStore |  Major | . | Shinichi Yamashita | Shinichi Yamashita |
| [YARN-1577](https://issues.apache.org/jira/browse/YARN-1577) | Unmanaged AM is broken because of YARN-1493 |  Blocker | . | Jian He | Jian He |
| [YARN-1566](https://issues.apache.org/jira/browse/YARN-1566) | Change distributed-shell to retain containers from previous AppAttempt |  Major | . | Jian He | Jian He |
| [YARN-1555](https://issues.apache.org/jira/browse/YARN-1555) | [YARN-321] Failing tests in org.apache.hadoop.yarn.server.applicationhistoryservice.* |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1534](https://issues.apache.org/jira/browse/YARN-1534) | TestAHSWebApp failed in YARN-321 branch |  Major | . | Shinichi Yamashita | Shinichi Yamashita |
| [YARN-1525](https://issues.apache.org/jira/browse/YARN-1525) | Web UI should redirect to active RM when HA is enabled. |  Major | . | Xuan Gong | Cindy Li |
| [YARN-1521](https://issues.apache.org/jira/browse/YARN-1521) | Mark appropriate protocol methods with the idempotent annotation or AtMostOnce annotation |  Blocker | . | Xuan Gong | Xuan Gong |
| [YARN-1504](https://issues.apache.org/jira/browse/YARN-1504) | RM changes for moving apps between queues |  Major | resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-1499](https://issues.apache.org/jira/browse/YARN-1499) | Fair Scheduler changes for moving apps between queues |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1498](https://issues.apache.org/jira/browse/YARN-1498) | Common scheduler changes for moving apps between queues |  Major | resourcemanager | Sandy Ryza | Sandy Ryza |
| [YARN-1497](https://issues.apache.org/jira/browse/YARN-1497) | Expose moving apps between queues on the command line |  Major | client | Sandy Ryza | Sandy Ryza |
| [YARN-1496](https://issues.apache.org/jira/browse/YARN-1496) | Protocol additions to allow moving apps between queues |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1493](https://issues.apache.org/jira/browse/YARN-1493) | Schedulers don't recognize apps separately from app-attempts |  Major | . | Jian He | Jian He |
| [YARN-1490](https://issues.apache.org/jira/browse/YARN-1490) | RM should optionally not kill all containers when an ApplicationMaster exits |  Major | . | Vinod Kumar Vavilapalli | Jian He |
| [YARN-1461](https://issues.apache.org/jira/browse/YARN-1461) | RM API and RM changes to handle tags for running jobs |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1459](https://issues.apache.org/jira/browse/YARN-1459) | RM services should depend on ConfigurationProvider during startup too |  Major | resourcemanager | Karthik Kambatla | Xuan Gong |
| [YARN-1428](https://issues.apache.org/jira/browse/YARN-1428) | RM cannot write the final state of RMApp/RMAppAttempt to the application history store in the transition to the final state |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1410](https://issues.apache.org/jira/browse/YARN-1410) | Handle RM fails over after getApplicationID() and before submitApplication(). |  Major | . | Bikas Saha | Xuan Gong |
| [YARN-1389](https://issues.apache.org/jira/browse/YARN-1389) | ApplicationClientProtocol and ApplicationHistoryProtocol should expose analogous APIs |  Major | . | Mayank Bansal | Mayank Bansal |
| [YARN-1379](https://issues.apache.org/jira/browse/YARN-1379) | [YARN-321] AHS protocols need to be in yarn proto package name after YARN-1170 |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1345](https://issues.apache.org/jira/browse/YARN-1345) | Removing FINAL\_SAVING from YarnApplicationAttemptState |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1266](https://issues.apache.org/jira/browse/YARN-1266) | Implement PB service and client wrappers for ApplicationHistoryProtocol |  Major | . | Mayank Bansal | Mayank Bansal |
| [YARN-1242](https://issues.apache.org/jira/browse/YARN-1242) | Script changes to start AHS as an individual process |  Major | . | Zhijie Shen | Mayank Bansal |
| [YARN-1191](https://issues.apache.org/jira/browse/YARN-1191) | [YARN-321] Update artifact versions for application history service |  Major | . | Mayank Bansal | Mayank Bansal |
| [YARN-1123](https://issues.apache.org/jira/browse/YARN-1123) | [YARN-321] Adding ContainerReport and Protobuf implementation |  Major | . | Zhijie Shen | Mayank Bansal |
| [YARN-1041](https://issues.apache.org/jira/browse/YARN-1041) | Protocol changes for RM to bind and notify a restarted AM of existing containers |  Major | resourcemanager | Steve Loughran | Jian He |
| [YARN-1023](https://issues.apache.org/jira/browse/YARN-1023) | [YARN-321] Webservices REST API's support for Application History |  Major | . | Devaraj K | Zhijie Shen |
| [YARN-1017](https://issues.apache.org/jira/browse/YARN-1017) | Document RM Restart feature |  Blocker | resourcemanager | Jian He | Jian He |
| [YARN-1007](https://issues.apache.org/jira/browse/YARN-1007) | [YARN-321] Enhance History Reader interface for Containers |  Major | . | Devaraj K | Mayank Bansal |
| [YARN-987](https://issues.apache.org/jira/browse/YARN-987) | Adding ApplicationHistoryManager responsible for exposing reports to all clients |  Major | . | Mayank Bansal | Mayank Bansal |
| [YARN-986](https://issues.apache.org/jira/browse/YARN-986) | RM DT token service should have service addresses of both RMs |  Blocker | . | Vinod Kumar Vavilapalli | Karthik Kambatla |
| [YARN-984](https://issues.apache.org/jira/browse/YARN-984) | [YARN-321] Move classes from applicationhistoryservice.records.pb.impl package to applicationhistoryservice.records.impl.pb |  Major | . | Devaraj K | Devaraj K |
| [YARN-979](https://issues.apache.org/jira/browse/YARN-979) | [YARN-321] Add more APIs related to ApplicationAttempt and Container in ApplicationHistoryProtocol |  Major | . | Mayank Bansal | Mayank Bansal |
| [YARN-978](https://issues.apache.org/jira/browse/YARN-978) | [YARN-321] Adding ApplicationAttemptReport and Protobuf implementation |  Major | . | Mayank Bansal | Mayank Bansal |
| [YARN-975](https://issues.apache.org/jira/browse/YARN-975) | Add a file-system implementation for history-storage |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-974](https://issues.apache.org/jira/browse/YARN-974) | RMContainer should collect more useful information to be recorded in Application-History |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-967](https://issues.apache.org/jira/browse/YARN-967) | [YARN-321] Command Line Interface(CLI) for Reading Application History Storage Data |  Major | . | Devaraj K | Mayank Bansal |
| [YARN-962](https://issues.apache.org/jira/browse/YARN-962) | Update application\_history\_service.proto |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-956](https://issues.apache.org/jira/browse/YARN-956) | [YARN-321] Add a testable in-memory HistoryStorage |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-955](https://issues.apache.org/jira/browse/YARN-955) | [YARN-321] Implementation of ApplicationHistoryProtocol |  Major | . | Vinod Kumar Vavilapalli | Mayank Bansal |
| [YARN-954](https://issues.apache.org/jira/browse/YARN-954) | [YARN-321] History Service should create the webUI and wire it to HistoryStorage |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-953](https://issues.apache.org/jira/browse/YARN-953) | [YARN-321] Enable ResourceManager to write history data |  Major | . | Vinod Kumar Vavilapalli | Zhijie Shen |
| [YARN-947](https://issues.apache.org/jira/browse/YARN-947) | Defining the history data classes for the implementation of the reading/writing interface |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-935](https://issues.apache.org/jira/browse/YARN-935) | YARN-321 branch is broken due to applicationhistoryserver module's pom.xml |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-934](https://issues.apache.org/jira/browse/YARN-934) | HistoryStorage writer interface for Application History Server |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-930](https://issues.apache.org/jira/browse/YARN-930) | Bootstrap ApplicationHistoryService module |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-925](https://issues.apache.org/jira/browse/YARN-925) | HistoryStorage Reader Interface for Application History Server |  Major | . | Mayank Bansal | Mayank Bansal |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1891](https://issues.apache.org/jira/browse/YARN-1891) | Document NodeManager health-monitoring |  Minor | . | Varun Vasudev | Varun Vasudev |
| [YARN-1452](https://issues.apache.org/jira/browse/YARN-1452) | Document the usage of the generic application history and the timeline data service |  Major | . | Zhijie Shen | Zhijie Shen |


