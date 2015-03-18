# Hadoop Changelog

## Release 2.3.0 - 2015-03-18

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


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1568](https://issues.apache.org/jira/browse/YARN-1568) | Rename clusterid to clusterId in ActiveRMInfoProto |  Trivial | resourcemanager | Karthik Kambatla | Karthik Kambatla |


