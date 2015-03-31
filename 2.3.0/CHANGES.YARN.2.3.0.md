# Hadoop Changelog

## Release 2.3.0 - 2014-02-20

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1392](https://issues.apache.org/jira/browse/YARN-1392) | Allow sophisticated app-to-queue placement policies in the Fair Scheduler |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1253](https://issues.apache.org/jira/browse/YARN-1253) | Changes to LinuxContainerExecutor to run containers as a single dedicated user in non-secure mode |  Blocker | nodemanager | Alejandro Abdelnur | Roman Shaposhnik |
| [YARN-1021](https://issues.apache.org/jira/browse/YARN-1021) | Yarn Scheduler Load Simulator |  Major | scheduler | Wei Yan | Wei Yan |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1623](https://issues.apache.org/jira/browse/YARN-1623) | Include queue name in RegisterApplicationMasterResponse |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1616](https://issues.apache.org/jira/browse/YARN-1616) | RMFatalEventDispatcher should log the cause of the event |  Trivial | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1567](https://issues.apache.org/jira/browse/YARN-1567) | In Fair Scheduler, allow empty queues to change between leaf and parent on allocation file reload |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1423](https://issues.apache.org/jira/browse/YARN-1423) | Support queue placement by secondary group in the Fair Scheduler |  Major | scheduler | Sandy Ryza | Ted Malaska |
| [YARN-1403](https://issues.apache.org/jira/browse/YARN-1403) | Separate out configuration loading from QueueManager in the Fair Scheduler |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-1387](https://issues.apache.org/jira/browse/YARN-1387) | RMWebServices should use ClientRMService for filtering applications |  Major | api | Karthik Kambatla | Karthik Kambatla |
| [YARN-1335](https://issues.apache.org/jira/browse/YARN-1335) | Move duplicate code from FSSchedulerApp and FiCaSchedulerApp into SchedulerApplication |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1333](https://issues.apache.org/jira/browse/YARN-1333) | Support blacklisting in the Fair Scheduler |  Major | scheduler | Sandy Ryza | Tsuyoshi Ozawa |
| [YARN-1332](https://issues.apache.org/jira/browse/YARN-1332) | In TestAMRMClient, replace assertTrue with assertEquals where possible |  Minor | . | Sandy Ryza | Sebastian Wong |
| [YARN-1303](https://issues.apache.org/jira/browse/YARN-1303) | Allow multiple commands separating with ";" in distributed-shell |  Major | applications/distributed-shell | Tassapol Athiapinya | Xuan Gong |
| [YARN-1290](https://issues.apache.org/jira/browse/YARN-1290) | Let continuous scheduling achieve more balanced task assignment |  Major | . | Wei Yan | Wei Yan |
| [YARN-1258](https://issues.apache.org/jira/browse/YARN-1258) | Allow configuring the Fair Scheduler root queue |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1199](https://issues.apache.org/jira/browse/YARN-1199) | Make NM/RM Versions Available |  Major | . | Mit Desai | Mit Desai |
| [YARN-1109](https://issues.apache.org/jira/browse/YARN-1109) | Demote NodeManager "Sending out status for container" logs to debug |  Major | nodemanager | Sandy Ryza | haosdent |
| [YARN-1010](https://issues.apache.org/jira/browse/YARN-1010) | FairScheduler: decouple container scheduling from nodemanager heartbeats |  Critical | scheduler | Alejandro Abdelnur | Wei Yan |
| [YARN-985](https://issues.apache.org/jira/browse/YARN-985) | Nodemanager should log where a resource was localized |  Major | nodemanager | Ravi Prakash | Ravi Prakash |
| [YARN-905](https://issues.apache.org/jira/browse/YARN-905) | Add state filters to nodes CLI |  Major | . | Sandy Ryza | Wei Yan |
| [YARN-807](https://issues.apache.org/jira/browse/YARN-807) | When querying apps by queue, iterating over all apps is inefficient and limiting |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-786](https://issues.apache.org/jira/browse/YARN-786) | Expose application resource usage in RM REST API |  Major | . | Sandy Ryza | Sandy Ryza |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1630](https://issues.apache.org/jira/browse/YARN-1630) | Introduce timeout for async polling operations in YarnClientImpl |  Major | client | Aditya Acharya | Aditya Acharya |
| [YARN-1629](https://issues.apache.org/jira/browse/YARN-1629) | IndexOutOfBoundsException in Fair Scheduler MaxRunningAppsEnforcer |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1628](https://issues.apache.org/jira/browse/YARN-1628) | TestContainerManagerSecurity fails on trunk |  Major | . | Mit Desai | Vinod Kumar Vavilapalli |
| [YARN-1624](https://issues.apache.org/jira/browse/YARN-1624) | QueuePlacementPolicy format is not easily readable via a JAXB parser |  Major | scheduler | Aditya Acharya | Aditya Acharya |
| [YARN-1608](https://issues.apache.org/jira/browse/YARN-1608) | LinuxContainerExecutor has a few DEBUG messages at INFO level |  Trivial | nodemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1607](https://issues.apache.org/jira/browse/YARN-1607) | TestRM expects the capacity scheduler |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-1603](https://issues.apache.org/jira/browse/YARN-1603) | Remove two *.orig files which were unexpectedly committed |  Trivial | . | Zhijie Shen | Zhijie Shen |
| [YARN-1601](https://issues.apache.org/jira/browse/YARN-1601) | 3rd party JARs are missing from hadoop-dist output |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-1600](https://issues.apache.org/jira/browse/YARN-1600) | RM does not startup when security is enabled without spnego configured |  Blocker | resourcemanager | Jason Lowe | Haohui Mai |
| [YARN-1541](https://issues.apache.org/jira/browse/YARN-1541) | Invalidate AM Host/Port when app attempt is done so that in the mean-while client doesn’t get wrong information. |  Major | . | Jian He | Jian He |
| [YARN-1527](https://issues.apache.org/jira/browse/YARN-1527) | yarn rmadmin command prints wrong usage info: |  Trivial | . | Jian He | Akira AJISAKA |
| [YARN-1522](https://issues.apache.org/jira/browse/YARN-1522) | TestApplicationCleanup.testAppCleanup occasionally fails |  Major | . | Liyin Liang | Liyin Liang |
| [YARN-1505](https://issues.apache.org/jira/browse/YARN-1505) | WebAppProxyServer should not set localhost as YarnConfiguration.PROXY\_ADDRESS by itself |  Blocker | . | Xuan Gong | Xuan Gong |
| [YARN-1491](https://issues.apache.org/jira/browse/YARN-1491) | Upgrade JUnit3 TestCase to JUnit 4 |  Trivial | . | Jonathan Eagles | Chen He |
| [YARN-1454](https://issues.apache.org/jira/browse/YARN-1454) | TestRMRestart.testRMDelegationTokenRestoredOnRMRestart is failing intermittently |  Critical | . | Jian He | Karthik Kambatla |
| [YARN-1451](https://issues.apache.org/jira/browse/YARN-1451) | TestResourceManager relies on the scheduler assigning multiple containers in a single node update |  Minor | . | Sandy Ryza | Sandy Ryza |
| [YARN-1450](https://issues.apache.org/jira/browse/YARN-1450) | TestUnmanagedAMLauncher#testDSShell fails on trunk |  Major | applications/distributed-shell | Akira AJISAKA | Binglin Chang |
| [YARN-1435](https://issues.apache.org/jira/browse/YARN-1435) | Distributed Shell should not run other commands except "sh", and run the custom script at the same time. |  Major | applications/distributed-shell | Tassapol Athiapinya | Xuan Gong |
| [YARN-1425](https://issues.apache.org/jira/browse/YARN-1425) | TestRMRestart fails because MockRM.waitForState(AttemptId) uses current attempt instead of the attempt passed as argument |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-1419](https://issues.apache.org/jira/browse/YARN-1419) | TestFifoScheduler.testAppAttemptMetrics fails intermittently under jdk7 |  Minor | scheduler | Jonathan Eagles | Jonathan Eagles |
| [YARN-1416](https://issues.apache.org/jira/browse/YARN-1416) | InvalidStateTransitions getting reported in multiple test cases even though they pass |  Major | . | Omkar Vinit Joshi | Jian He |
| [YARN-1409](https://issues.apache.org/jira/browse/YARN-1409) | NonAggregatingLogHandler can throw RejectedExecutionException |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-1407](https://issues.apache.org/jira/browse/YARN-1407) | RM Web UI and REST APIs should uniformly use YarnApplicationState |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-1401](https://issues.apache.org/jira/browse/YARN-1401) | With zero sleep-delay-before-sigkill.ms, no signal is ever sent |  Major | nodemanager | Gera Shegalov | Gera Shegalov |
| [YARN-1400](https://issues.apache.org/jira/browse/YARN-1400) | yarn.cmd uses HADOOP\_RESOURCEMANAGER\_OPTS. Should be YARN\_RESOURCEMANAGER\_OPTS. |  Trivial | resourcemanager | Raja Aluri | Raja Aluri |
| [YARN-1395](https://issues.apache.org/jira/browse/YARN-1395) | Distributed shell application master launched with debug flag can hang waiting for external ls process. |  Major | applications/distributed-shell | Chris Nauroth | Chris Nauroth |
| [YARN-1388](https://issues.apache.org/jira/browse/YARN-1388) | Fair Scheduler page always displays blank fair share |  Trivial | resourcemanager | Liyin Liang | Liyin Liang |
| [YARN-1386](https://issues.apache.org/jira/browse/YARN-1386) | NodeManager mistakenly loses resources and relocalizes them |  Critical | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1381](https://issues.apache.org/jira/browse/YARN-1381) | Same relaxLocality appears twice in exception message of AMRMClientImpl#checkLocalityRelaxationConflict() |  Minor | . | Ted Yu | Ted Yu |
| [YARN-1374](https://issues.apache.org/jira/browse/YARN-1374) | Resource Manager fails to start due to ConcurrentModificationException |  Blocker | resourcemanager | Devaraj K | Karthik Kambatla |
| [YARN-1351](https://issues.apache.org/jira/browse/YARN-1351) | Invalid string format in Fair Scheduler log warn message |  Trivial | resourcemanager | Konstantin Weitz | Konstantin Weitz |
| [YARN-1349](https://issues.apache.org/jira/browse/YARN-1349) | yarn.cmd does not support passthrough to any arbitrary class. |  Major | client | Chris Nauroth | Chris Nauroth |
| [YARN-1343](https://issues.apache.org/jira/browse/YARN-1343) | NodeManagers additions/restarts are not reported as node updates in AllocateResponse responses to AMs |  Critical | resourcemanager | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-1331](https://issues.apache.org/jira/browse/YARN-1331) | yarn.cmd exits with NoClassDefFoundError trying to run rmadmin or logs |  Trivial | client | Chris Nauroth | Chris Nauroth |
| [YARN-1330](https://issues.apache.org/jira/browse/YARN-1330) | Fair Scheduler: defaultQueueSchedulingPolicy does not take effect |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1321](https://issues.apache.org/jira/browse/YARN-1321) | NMTokenCache is a singleton, prevents multiple AMs running in a single JVM to work correctly |  Blocker | client | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-1320](https://issues.apache.org/jira/browse/YARN-1320) | Custom log4j properties in Distributed shell does not work properly. |  Major | applications/distributed-shell | Tassapol Athiapinya | Xuan Gong |
| [YARN-1315](https://issues.apache.org/jira/browse/YARN-1315) | TestQueueACLs should also test FairScheduler |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1314](https://issues.apache.org/jira/browse/YARN-1314) | Cannot pass more than 1 argument to shell command |  Major | applications/distributed-shell | Tassapol Athiapinya | Xuan Gong |
| [YARN-1306](https://issues.apache.org/jira/browse/YARN-1306) | Clean up hadoop-sls sample-conf according to YARN-1228 |  Major | . | Wei Yan | Wei Yan |
| [YARN-1300](https://issues.apache.org/jira/browse/YARN-1300) | SLS tests fail because conf puts yarn properties in fair-scheduler.xml |  Major | . | Ted Yu | Ted Yu |
| [YARN-1295](https://issues.apache.org/jira/browse/YARN-1295) | In UnixLocalWrapperScriptBuilder, using bash -c can cause "Text file busy" errors |  Major | nodemanager | Sandy Ryza | Sandy Ryza |
| [YARN-1293](https://issues.apache.org/jira/browse/YARN-1293) | TestContainerLaunch.testInvalidEnvSyntaxDiagnostics fails on trunk |  Major | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-1288](https://issues.apache.org/jira/browse/YARN-1288) | Make Fair Scheduler ACLs more user friendly |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1284](https://issues.apache.org/jira/browse/YARN-1284) | LCE: Race condition leaves dangling cgroups entries for killed containers |  Blocker | nodemanager | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-1268](https://issues.apache.org/jira/browse/YARN-1268) | TestFairScheduler.testContinuousScheduling is flaky |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1265](https://issues.apache.org/jira/browse/YARN-1265) | Fair Scheduler chokes on unhealthy node reconnect |  Major | resourcemanager, scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1259](https://issues.apache.org/jira/browse/YARN-1259) | In Fair Scheduler web UI, queue num pending and num active apps switched |  Trivial | scheduler | Sandy Ryza | Robert Kanter |
| [YARN-1241](https://issues.apache.org/jira/browse/YARN-1241) | In Fair Scheduler, maxRunningApps does not work for non-leaf queues |  Major | . | Sandy Ryza | Sandy Ryza |
| [YARN-1188](https://issues.apache.org/jira/browse/YARN-1188) | The context of QueueMetrics becomes 'default' when using FairScheduler |  Trivial | . | Akira AJISAKA | Tsuyoshi Ozawa |
| [YARN-1183](https://issues.apache.org/jira/browse/YARN-1183) | MiniYARNCluster shutdown takes several minutes intermittently |  Major | . | Andrey Klochkov | Andrey Klochkov |
| [YARN-1182](https://issues.apache.org/jira/browse/YARN-1182) | MiniYARNCluster creates and inits the RM/NM only on start() |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-1180](https://issues.apache.org/jira/browse/YARN-1180) | Update capacity scheduler docs to include types on the configs |  Trivial | capacityscheduler | Thomas Graves | Chen He |
| [YARN-1145](https://issues.apache.org/jira/browse/YARN-1145) | Potential file handle leak in aggregated logs web ui |  Major | . | Rohith | Rohith |
| [YARN-1138](https://issues.apache.org/jira/browse/YARN-1138) | yarn.application.classpath is set to point to $HADOOP\_CONF\_DIR etc., which does not work on Windows |  Major | api | Yingda Chen | Chuan Liu |
| [YARN-1060](https://issues.apache.org/jira/browse/YARN-1060) | Two tests in TestFairScheduler are missing @Test annotation |  Major | scheduler | Sandy Ryza | Niranjan Singh |
| [YARN-1053](https://issues.apache.org/jira/browse/YARN-1053) | Diagnostic message from ContainerExitEvent is ignored in ContainerImpl |  Blocker | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [YARN-1044](https://issues.apache.org/jira/browse/YARN-1044) | used/min/max resources do not display info in the scheduler page |  Critical | resourcemanager, scheduler | Sangjin Lee | Sangjin Lee |
| [YARN-1022](https://issues.apache.org/jira/browse/YARN-1022) | Unnecessary INFO logs in AMRMClientAsync |  Trivial | . | Bikas Saha | haosdent |
| [YARN-888](https://issues.apache.org/jira/browse/YARN-888) | clean up POM dependencies |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [YARN-879](https://issues.apache.org/jira/browse/YARN-879) | Fix tests w.r.t o.a.h.y.server.resourcemanager.Application |  Major | . | Junping Du | Junping Du |
| [YARN-584](https://issues.apache.org/jira/browse/YARN-584) | In scheduler web UIs, queues unexpand on refresh |  Major | scheduler | Sandy Ryza | Harshit Daga |
| [YARN-546](https://issues.apache.org/jira/browse/YARN-546) | Allow disabling the Fair Scheduler event log |  Major | scheduler | Lohit Vijayarenu | Sandy Ryza |
| [YARN-461](https://issues.apache.org/jira/browse/YARN-461) | Fair scheduler should not accept apps with empty string queue name |  Major | resourcemanager | Sandy Ryza | Wei Yan |
| [YARN-408](https://issues.apache.org/jira/browse/YARN-408) | Capacity Scheduler delay scheduling should not be disabled by default |  Minor | scheduler | Mayank Bansal | Mayank Bansal |
| [YARN-305](https://issues.apache.org/jira/browse/YARN-305) | Fair scheduler logs too many "Node offered to app:..." messages |  Critical | resourcemanager | Lohit Vijayarenu | Lohit Vijayarenu |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1560](https://issues.apache.org/jira/browse/YARN-1560) | TestYarnClient#testAMMRTokens fails with null AMRM token |  Major | . | Ted Yu | Ted Yu |
| [YARN-1549](https://issues.apache.org/jira/browse/YARN-1549) | TestUnmanagedAMLauncher#testDSShell fails in trunk |  Major | . | Ted Yu | haosdent |
| [YARN-1463](https://issues.apache.org/jira/browse/YARN-1463) | Tests should avoid starting http-server where possible or creates spnego keytab/principals |  Major | . | Ted Yu | Vinod Kumar Vavilapalli |
| [YARN-1358](https://issues.apache.org/jira/browse/YARN-1358) | TestYarnCLI fails on Windows due to line endings |  Minor | client | Chuan Liu | Chuan Liu |
| [YARN-1357](https://issues.apache.org/jira/browse/YARN-1357) | TestContainerLaunch.testContainerEnvVariables fails on Windows |  Minor | nodemanager | Chuan Liu | Chuan Liu |
| [YARN-1119](https://issues.apache.org/jira/browse/YARN-1119) | Add ClusterMetrics checks to tho TestRMNodeTransitions tests |  Major | resourcemanager | Robert Parker | Mit Desai |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1642](https://issues.apache.org/jira/browse/YARN-1642) | RMDTRenewer#getRMClient should use ClientRMProxy |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1618](https://issues.apache.org/jira/browse/YARN-1618) | Fix invalid RMApp transition from NEW to FINAL\_SAVING |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1598](https://issues.apache.org/jira/browse/YARN-1598) | HA-related rmadmin commands don't work on a secure cluster |  Critical | client, resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1579](https://issues.apache.org/jira/browse/YARN-1579) | ActiveRMInfoProto fields should be optional |  Trivial | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1575](https://issues.apache.org/jira/browse/YARN-1575) | Public localizer crashes with "Localized unkown resource" |  Critical | nodemanager | Jason Lowe | Jason Lowe |
| [YARN-1574](https://issues.apache.org/jira/browse/YARN-1574) | RMDispatcher should be reset on transition to standby |  Blocker | . | Xuan Gong | Xuan Gong |
| [YARN-1573](https://issues.apache.org/jira/browse/YARN-1573) | ZK store should use a private password for root-node-acls |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1559](https://issues.apache.org/jira/browse/YARN-1559) | Race between ServerRMProxy and ClientRMProxy setting RMProxy#INSTANCE |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1523](https://issues.apache.org/jira/browse/YARN-1523) | Use StandbyException instead of RMNotYetReadyException |  Major | . | Bikas Saha | Karthik Kambatla |
| [YARN-1485](https://issues.apache.org/jira/browse/YARN-1485) | Enabling HA should verify the RM service addresses configurations have been set for every RM Ids defined in RM\_HA\_IDs |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1482](https://issues.apache.org/jira/browse/YARN-1482) | WebApplicationProxy should be always-on w.r.t HA even if it is embedded in the RM |  Major | . | Vinod Kumar Vavilapalli | Xuan Gong |
| [YARN-1481](https://issues.apache.org/jira/browse/YARN-1481) | Move internal services logic from AdminService to ResourceManager |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1448](https://issues.apache.org/jira/browse/YARN-1448) | AM-RM protocol changes to support container resizing |  Major | api, resourcemanager | Wangda Tan (No longer used) | Wangda Tan (No longer used) |
| [YARN-1447](https://issues.apache.org/jira/browse/YARN-1447) | Common PB type definitions for container resizing |  Major | api | Wangda Tan (No longer used) | Wangda Tan (No longer used) |
| [YARN-1446](https://issues.apache.org/jira/browse/YARN-1446) | Change killing application to wait until state store is done |  Major | resourcemanager | Jian He | Jian He |
| [YARN-1411](https://issues.apache.org/jira/browse/YARN-1411) | HA config shouldn't affect NodeManager RPC addresses |  Critical | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-1405](https://issues.apache.org/jira/browse/YARN-1405) | RM hangs on shutdown if calling system.exit in serviceInit or serviceStart |  Major | . | Yesha Vora | Jian He |
| [YARN-1378](https://issues.apache.org/jira/browse/YARN-1378) | Implement a RMStateStore cleaner for deleting application/attempt info |  Major | resourcemanager | Jian He | Jian He |
| [YARN-1325](https://issues.apache.org/jira/browse/YARN-1325) | Enabling HA should check Configuration contains multiple RMs |  Major | resourcemanager | Tsuyoshi Ozawa | Xuan Gong |
| [YARN-1323](https://issues.apache.org/jira/browse/YARN-1323) | Set HTTPS webapp address along with other RPC addresses in HAUtil |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-1318](https://issues.apache.org/jira/browse/YARN-1318) | Promote AdminService to an Always-On service and merge in RMHAProtocolService |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1311](https://issues.apache.org/jira/browse/YARN-1311) | Fix app specific scheduler-events' names to be app-attempt based |  Trivial | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1307](https://issues.apache.org/jira/browse/YARN-1307) | Rethink znode structure for RM HA |  Major | resourcemanager | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-1305](https://issues.apache.org/jira/browse/YARN-1305) | RMHAProtocolService#serviceInit should handle HAUtil's IllegalArgumentException |  Major | resourcemanager | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-1283](https://issues.apache.org/jira/browse/YARN-1283) | Invalid 'url of job' mentioned in Job output with yarn.http.policy=HTTPS\_ONLY |  Major | . | Yesha Vora | Omkar Vinit Joshi |
| [YARN-1239](https://issues.apache.org/jira/browse/YARN-1239) | Save version information in the state store |  Major | resourcemanager | Bikas Saha | Jian He |
| [YARN-1232](https://issues.apache.org/jira/browse/YARN-1232) | Configuration to support multiple RMs |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1222](https://issues.apache.org/jira/browse/YARN-1222) | Make improvements in ZKRMStateStore for fencing |  Major | . | Bikas Saha | Karthik Kambatla |
| [YARN-1210](https://issues.apache.org/jira/browse/YARN-1210) | During RM restart, RM should start a new attempt only when previous attempt exits for real |  Major | . | Vinod Kumar Vavilapalli | Omkar Vinit Joshi |
| [YARN-1185](https://issues.apache.org/jira/browse/YARN-1185) | FileSystemRMStateStore can leave partial files that prevent subsequent recovery |  Major | resourcemanager | Jason Lowe | Omkar Vinit Joshi |
| [YARN-1181](https://issues.apache.org/jira/browse/YARN-1181) | Augment MiniYARNCluster to support HA mode |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-1172](https://issues.apache.org/jira/browse/YARN-1172) | Convert *SecretManagers in the RM to services |  Major | resourcemanager | Karthik Kambatla | Tsuyoshi Ozawa |
| [YARN-1121](https://issues.apache.org/jira/browse/YARN-1121) | RMStateStore should flush all pending store events before closing |  Major | resourcemanager | Bikas Saha | Jian He |
| [YARN-1098](https://issues.apache.org/jira/browse/YARN-1098) | Separate out RM services into "Always On" and "Active" |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1068](https://issues.apache.org/jira/browse/YARN-1068) | Add admin support for HA operations |  Major | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1033](https://issues.apache.org/jira/browse/YARN-1033) | Expose RM active/standby state to Web UI and REST API |  Major | . | Nemon Lou | Karthik Kambatla |
| [YARN-1029](https://issues.apache.org/jira/browse/YARN-1029) | Allow embedding leader election into the RM |  Major | . | Bikas Saha | Karthik Kambatla |
| [YARN-1028](https://issues.apache.org/jira/browse/YARN-1028) | Add FailoverProxyProvider like capability to RMProxy |  Major | . | Bikas Saha | Karthik Kambatla |
| [YARN-1027](https://issues.apache.org/jira/browse/YARN-1027) | Implement RMHAProtocolService |  Major | . | Bikas Saha | Karthik Kambatla |
| [YARN-976](https://issues.apache.org/jira/browse/YARN-976) | Document the meaning of a virtual core |  Major | documentation | Sandy Ryza | Sandy Ryza |
| [YARN-895](https://issues.apache.org/jira/browse/YARN-895) | RM crashes if it restarts while the state-store is down |  Major | resourcemanager | Jian He | Jian He |
| [YARN-891](https://issues.apache.org/jira/browse/YARN-891) | Store completed application information in RM state store |  Major | resourcemanager | Bikas Saha | Jian He |
| [YARN-819](https://issues.apache.org/jira/browse/YARN-819) | ResourceManager and NodeManager should check for a minimum allowed version |  Major | nodemanager, resourcemanager | Robert Parker | Robert Parker |
| [YARN-709](https://issues.apache.org/jira/browse/YARN-709) | verify that new jobs submitted with old RM delegation tokens after RM restart are accepted |  Major | resourcemanager | Jian He | Jian He |
| [YARN-674](https://issues.apache.org/jira/browse/YARN-674) | Slow or failing DelegationToken renewals on submission itself make RM unavailable |  Major | resourcemanager | Vinod Kumar Vavilapalli | Omkar Vinit Joshi |
| [YARN-649](https://issues.apache.org/jira/browse/YARN-649) | Make container logs available over HTTP in plain text |  Major | nodemanager | Sandy Ryza | Sandy Ryza |
| [YARN-478](https://issues.apache.org/jira/browse/YARN-478) | fix coverage org.apache.hadoop.yarn.webapp.log |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [YARN-465](https://issues.apache.org/jira/browse/YARN-465) | fix coverage  org.apache.hadoop.yarn.server.webproxy |  Major | . | Aleksey Gorshkov | Andrey Klochkov |
| [YARN-427](https://issues.apache.org/jira/browse/YARN-427) | Coverage fix for org.apache.hadoop.yarn.server.api.* |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [YARN-425](https://issues.apache.org/jira/browse/YARN-425) | coverage fix for yarn api |  Major | . | Aleksey Gorshkov | Aleksey Gorshkov |
| [YARN-353](https://issues.apache.org/jira/browse/YARN-353) | Add Zookeeper-based store implementation for RMStateStore |  Major | resourcemanager | Hitesh Shah | Karthik Kambatla |
| [YARN-312](https://issues.apache.org/jira/browse/YARN-312) | Add updateNodeResource in ResourceManagerAdministrationProtocol |  Major | api | Junping Du | Junping Du |
| [YARN-311](https://issues.apache.org/jira/browse/YARN-311) | Dynamic node resource configuration: core scheduler changes |  Major | resourcemanager, scheduler | Junping Du | Junping Du |
| [YARN-7](https://issues.apache.org/jira/browse/YARN-7) | Add support for DistributedShell to ask for CPUs along with memory |  Major | . | Arun C Murthy | Junping Du |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1568](https://issues.apache.org/jira/browse/YARN-1568) | Rename clusterid to clusterId in ActiveRMInfoProto |  Trivial | resourcemanager | Karthik Kambatla | Karthik Kambatla |


