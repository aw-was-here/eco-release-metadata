# Hadoop Changelog

## Release 2.4.0 - 2015-03-15

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


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1891](https://issues.apache.org/jira/browse/YARN-1891) | Document NodeManager health-monitoring |  Minor | . | Varun Vasudev | Varun Vasudev |
| [YARN-1452](https://issues.apache.org/jira/browse/YARN-1452) | Document the usage of the generic application history and the timeline data service |  Major | . | Zhijie Shen | Zhijie Shen |


