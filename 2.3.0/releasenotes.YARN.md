# Hadoop YARN 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [YARN-1642](https://issues.apache.org/jira/browse/YARN-1642) | *Blocker* | **RMDTRenewer#getRMClient should use ClientRMProxy**
---

* [YARN-1630](https://issues.apache.org/jira/browse/YARN-1630) | *Major* | **Introduce timeout for async polling operations in YarnClientImpl**
---

* [YARN-1629](https://issues.apache.org/jira/browse/YARN-1629) | *Major* | **IndexOutOfBoundsException in Fair Scheduler MaxRunningAppsEnforcer**
---

* [YARN-1628](https://issues.apache.org/jira/browse/YARN-1628) | *Major* | **TestContainerManagerSecurity fails on trunk**
---

* [YARN-1624](https://issues.apache.org/jira/browse/YARN-1624) | *Major* | **QueuePlacementPolicy format is not easily readable via a JAXB parser**
---

* [YARN-1623](https://issues.apache.org/jira/browse/YARN-1623) | *Major* | **Include queue name in RegisterApplicationMasterResponse**
---

* [YARN-1618](https://issues.apache.org/jira/browse/YARN-1618) | *Blocker* | **Fix invalid RMApp transition from NEW to FINAL\_SAVING**
---

* [YARN-1616](https://issues.apache.org/jira/browse/YARN-1616) | *Trivial* | **RMFatalEventDispatcher should log the cause of the event**
---

* [YARN-1608](https://issues.apache.org/jira/browse/YARN-1608) | *Trivial* | **LinuxContainerExecutor has a few DEBUG messages at INFO level**
---

* [YARN-1607](https://issues.apache.org/jira/browse/YARN-1607) | *Major* | **TestRM expects the capacity scheduler**
---

* [YARN-1603](https://issues.apache.org/jira/browse/YARN-1603) | *Trivial* | **Remove two *.orig files which were unexpectedly committed**
---

* [YARN-1601](https://issues.apache.org/jira/browse/YARN-1601) | *Major* | **3rd party JARs are missing from hadoop-dist output**
---

* [YARN-1600](https://issues.apache.org/jira/browse/YARN-1600) | *Blocker* | **RM does not startup when security is enabled without spnego configured**
---

* [YARN-1598](https://issues.apache.org/jira/browse/YARN-1598) | *Critical* | **HA-related rmadmin commands don't work on a secure cluster**
---

* [YARN-1579](https://issues.apache.org/jira/browse/YARN-1579) | *Trivial* | **ActiveRMInfoProto fields should be optional**
---

* [YARN-1575](https://issues.apache.org/jira/browse/YARN-1575) | *Critical* | **Public localizer crashes with "Localized unkown resource"**
---

* [YARN-1574](https://issues.apache.org/jira/browse/YARN-1574) | *Blocker* | **RMDispatcher should be reset on transition to standby**
---

* [YARN-1573](https://issues.apache.org/jira/browse/YARN-1573) | *Major* | **ZK store should use a private password for root-node-acls**
---

* [YARN-1568](https://issues.apache.org/jira/browse/YARN-1568) | *Trivial* | **Rename clusterid to clusterId in ActiveRMInfoProto**
---

* [YARN-1567](https://issues.apache.org/jira/browse/YARN-1567) | *Major* | **In Fair Scheduler, allow empty queues to change between leaf and parent on allocation file reload**
---

* [YARN-1560](https://issues.apache.org/jira/browse/YARN-1560) | *Major* | **TestYarnClient#testAMMRTokens fails with null AMRM token**
---

* [YARN-1559](https://issues.apache.org/jira/browse/YARN-1559) | *Blocker* | **Race between ServerRMProxy and ClientRMProxy setting RMProxy#INSTANCE**
---

* [YARN-1549](https://issues.apache.org/jira/browse/YARN-1549) | *Major* | **TestUnmanagedAMLauncher#testDSShell fails in trunk**
---

* [YARN-1541](https://issues.apache.org/jira/browse/YARN-1541) | *Major* | **Invalidate AM Host/Port when app attempt is done so that in the mean-while client doesn’t get wrong information.**
---

* [YARN-1527](https://issues.apache.org/jira/browse/YARN-1527) | *Trivial* | **yarn rmadmin command prints wrong usage info:**
---

* [YARN-1523](https://issues.apache.org/jira/browse/YARN-1523) | *Major* | **Use StandbyException instead of RMNotYetReadyException**
---

* [YARN-1522](https://issues.apache.org/jira/browse/YARN-1522) | *Major* | **TestApplicationCleanup.testAppCleanup occasionally fails**
---

* [YARN-1505](https://issues.apache.org/jira/browse/YARN-1505) | *Blocker* | **WebAppProxyServer should not set localhost as YarnConfiguration.PROXY\_ADDRESS by itself**
---

* [YARN-1491](https://issues.apache.org/jira/browse/YARN-1491) | *Trivial* | **Upgrade JUnit3 TestCase to JUnit 4**
---

* [YARN-1485](https://issues.apache.org/jira/browse/YARN-1485) | *Major* | **Enabling HA should verify the RM service addresses configurations have been set for every RM Ids defined in RM\_HA\_IDs**
---

* [YARN-1482](https://issues.apache.org/jira/browse/YARN-1482) | *Major* | **WebApplicationProxy should be always-on w.r.t HA even if it is embedded in the RM**
---

* [YARN-1481](https://issues.apache.org/jira/browse/YARN-1481) | *Major* | **Move internal services logic from AdminService to ResourceManager**
---

* [YARN-1463](https://issues.apache.org/jira/browse/YARN-1463) | *Major* | **Tests should avoid starting http-server where possible or creates spnego keytab/principals**
---

* [YARN-1454](https://issues.apache.org/jira/browse/YARN-1454) | *Critical* | **TestRMRestart.testRMDelegationTokenRestoredOnRMRestart is failing intermittently**
---

* [YARN-1451](https://issues.apache.org/jira/browse/YARN-1451) | *Minor* | **TestResourceManager relies on the scheduler assigning multiple containers in a single node update**
---

* [YARN-1450](https://issues.apache.org/jira/browse/YARN-1450) | *Major* | **TestUnmanagedAMLauncher#testDSShell fails on trunk**
---

* [YARN-1448](https://issues.apache.org/jira/browse/YARN-1448) | *Major* | **AM-RM protocol changes to support container resizing**
---

* [YARN-1447](https://issues.apache.org/jira/browse/YARN-1447) | *Major* | **Common PB type definitions for container resizing**
---

* [YARN-1446](https://issues.apache.org/jira/browse/YARN-1446) | *Major* | **Change killing application to wait until state store is done**
---

* [YARN-1435](https://issues.apache.org/jira/browse/YARN-1435) | *Major* | **Distributed Shell should not run other commands except "sh", and run the custom script at the same time.**
---

* [YARN-1425](https://issues.apache.org/jira/browse/YARN-1425) | *Major* | **TestRMRestart fails because MockRM.waitForState(AttemptId) uses current attempt instead of the attempt passed as argument**
---

* [YARN-1423](https://issues.apache.org/jira/browse/YARN-1423) | *Major* | **Support queue placement by secondary group in the Fair Scheduler**
---

* [YARN-1419](https://issues.apache.org/jira/browse/YARN-1419) | *Minor* | **TestFifoScheduler.testAppAttemptMetrics fails intermittently under jdk7**
---

* [YARN-1416](https://issues.apache.org/jira/browse/YARN-1416) | *Major* | **InvalidStateTransitions getting reported in multiple test cases even though they pass**
---

* [YARN-1411](https://issues.apache.org/jira/browse/YARN-1411) | *Critical* | **HA config shouldn't affect NodeManager RPC addresses**
---

* [YARN-1409](https://issues.apache.org/jira/browse/YARN-1409) | *Major* | **NonAggregatingLogHandler can throw RejectedExecutionException**
---

* [YARN-1407](https://issues.apache.org/jira/browse/YARN-1407) | *Major* | **RM Web UI and REST APIs should uniformly use YarnApplicationState**
---

* [YARN-1405](https://issues.apache.org/jira/browse/YARN-1405) | *Major* | **RM hangs on shutdown if calling system.exit in serviceInit or serviceStart**
---

* [YARN-1403](https://issues.apache.org/jira/browse/YARN-1403) | *Major* | **Separate out configuration loading from QueueManager in the Fair Scheduler**
---

* [YARN-1401](https://issues.apache.org/jira/browse/YARN-1401) | *Major* | **With zero sleep-delay-before-sigkill.ms, no signal is ever sent**
---

* [YARN-1400](https://issues.apache.org/jira/browse/YARN-1400) | *Trivial* | **yarn.cmd uses HADOOP\_RESOURCEMANAGER\_OPTS. Should be YARN\_RESOURCEMANAGER\_OPTS.**
---

* [YARN-1395](https://issues.apache.org/jira/browse/YARN-1395) | *Major* | **Distributed shell application master launched with debug flag can hang waiting for external ls process.**
---

* [YARN-1392](https://issues.apache.org/jira/browse/YARN-1392) | *Major* | **Allow sophisticated app-to-queue placement policies in the Fair Scheduler**
---

* [YARN-1388](https://issues.apache.org/jira/browse/YARN-1388) | *Trivial* | **Fair Scheduler page always displays blank fair share**
---

* [YARN-1387](https://issues.apache.org/jira/browse/YARN-1387) | *Major* | **RMWebServices should use ClientRMService for filtering applications**
---

* [YARN-1386](https://issues.apache.org/jira/browse/YARN-1386) | *Critical* | **NodeManager mistakenly loses resources and relocalizes them**
---

* [YARN-1381](https://issues.apache.org/jira/browse/YARN-1381) | *Minor* | **Same relaxLocality appears twice in exception message of AMRMClientImpl#checkLocalityRelaxationConflict()**
---

* [YARN-1378](https://issues.apache.org/jira/browse/YARN-1378) | *Major* | **Implement a RMStateStore cleaner for deleting application/attempt info**
---

* [YARN-1374](https://issues.apache.org/jira/browse/YARN-1374) | *Blocker* | **Resource Manager fails to start due to ConcurrentModificationException**
---

* [YARN-1358](https://issues.apache.org/jira/browse/YARN-1358) | *Minor* | **TestYarnCLI fails on Windows due to line endings**
---

* [YARN-1357](https://issues.apache.org/jira/browse/YARN-1357) | *Minor* | **TestContainerLaunch.testContainerEnvVariables fails on Windows**
---

* [YARN-1351](https://issues.apache.org/jira/browse/YARN-1351) | *Trivial* | **Invalid string format in Fair Scheduler log warn message**
---

* [YARN-1349](https://issues.apache.org/jira/browse/YARN-1349) | *Major* | **yarn.cmd does not support passthrough to any arbitrary class.**
---

* [YARN-1343](https://issues.apache.org/jira/browse/YARN-1343) | *Critical* | **NodeManagers additions/restarts are not reported as node updates in AllocateResponse responses to AMs**
---

* [YARN-1335](https://issues.apache.org/jira/browse/YARN-1335) | *Major* | **Move duplicate code from FSSchedulerApp and FiCaSchedulerApp into SchedulerApplication**
---

* [YARN-1333](https://issues.apache.org/jira/browse/YARN-1333) | *Major* | **Support blacklisting in the Fair Scheduler**
---

* [YARN-1332](https://issues.apache.org/jira/browse/YARN-1332) | *Minor* | **In TestAMRMClient, replace assertTrue with assertEquals where possible**
---

* [YARN-1331](https://issues.apache.org/jira/browse/YARN-1331) | *Trivial* | **yarn.cmd exits with NoClassDefFoundError trying to run rmadmin or logs**
---

* [YARN-1330](https://issues.apache.org/jira/browse/YARN-1330) | *Major* | **Fair Scheduler: defaultQueueSchedulingPolicy does not take effect**
---

* [YARN-1325](https://issues.apache.org/jira/browse/YARN-1325) | *Major* | **Enabling HA should check Configuration contains multiple RMs**
---

* [YARN-1323](https://issues.apache.org/jira/browse/YARN-1323) | *Major* | **Set HTTPS webapp address along with other RPC addresses in HAUtil**
---

* [YARN-1321](https://issues.apache.org/jira/browse/YARN-1321) | *Blocker* | **NMTokenCache is a singleton, prevents multiple AMs running in a single JVM to work correctly**
---

* [YARN-1320](https://issues.apache.org/jira/browse/YARN-1320) | *Major* | **Custom log4j properties in Distributed shell does not work properly.**
---

* [YARN-1318](https://issues.apache.org/jira/browse/YARN-1318) | *Blocker* | **Promote AdminService to an Always-On service and merge in RMHAProtocolService**
---

* [YARN-1315](https://issues.apache.org/jira/browse/YARN-1315) | *Major* | **TestQueueACLs should also test FairScheduler**
---

* [YARN-1314](https://issues.apache.org/jira/browse/YARN-1314) | *Major* | **Cannot pass more than 1 argument to shell command**
---

* [YARN-1311](https://issues.apache.org/jira/browse/YARN-1311) | *Trivial* | **Fix app specific scheduler-events' names to be app-attempt based**
---

* [YARN-1307](https://issues.apache.org/jira/browse/YARN-1307) | *Major* | **Rethink znode structure for RM HA**
---

* [YARN-1306](https://issues.apache.org/jira/browse/YARN-1306) | *Major* | **Clean up hadoop-sls sample-conf according to YARN-1228**
---

* [YARN-1305](https://issues.apache.org/jira/browse/YARN-1305) | *Major* | **RMHAProtocolService#serviceInit should handle HAUtil's IllegalArgumentException**
---

* [YARN-1303](https://issues.apache.org/jira/browse/YARN-1303) | *Major* | **Allow multiple commands separating with ";" in distributed-shell**
---

* [YARN-1300](https://issues.apache.org/jira/browse/YARN-1300) | *Major* | **SLS tests fail because conf puts yarn properties in fair-scheduler.xml**
---

* [YARN-1295](https://issues.apache.org/jira/browse/YARN-1295) | *Major* | **In UnixLocalWrapperScriptBuilder, using bash -c can cause "Text file busy" errors**
---

* [YARN-1293](https://issues.apache.org/jira/browse/YARN-1293) | *Major* | **TestContainerLaunch.testInvalidEnvSyntaxDiagnostics fails on trunk**
---

* [YARN-1290](https://issues.apache.org/jira/browse/YARN-1290) | *Major* | **Let continuous scheduling achieve more balanced task assignment**
---

* [YARN-1288](https://issues.apache.org/jira/browse/YARN-1288) | *Major* | **Make Fair Scheduler ACLs more user friendly**
---

* [YARN-1284](https://issues.apache.org/jira/browse/YARN-1284) | *Blocker* | **LCE: Race condition leaves dangling cgroups entries for killed containers**
---

* [YARN-1283](https://issues.apache.org/jira/browse/YARN-1283) | *Major* | **Invalid 'url of job' mentioned in Job output with yarn.http.policy=HTTPS\_ONLY**
---

* [YARN-1268](https://issues.apache.org/jira/browse/YARN-1268) | *Major* | **TestFairScheduler.testContinuousScheduling is flaky**
---

* [YARN-1265](https://issues.apache.org/jira/browse/YARN-1265) | *Major* | **Fair Scheduler chokes on unhealthy node reconnect**
---

* [YARN-1259](https://issues.apache.org/jira/browse/YARN-1259) | *Trivial* | **In Fair Scheduler web UI, queue num pending and num active apps switched**
---

* [YARN-1258](https://issues.apache.org/jira/browse/YARN-1258) | *Major* | **Allow configuring the Fair Scheduler root queue**
---

* [YARN-1253](https://issues.apache.org/jira/browse/YARN-1253) | *Blocker* | **Changes to LinuxContainerExecutor to run containers as a single dedicated user in non-secure mode**
---

* [YARN-1241](https://issues.apache.org/jira/browse/YARN-1241) | *Major* | **In Fair Scheduler, maxRunningApps does not work for non-leaf queues**
---

* [YARN-1239](https://issues.apache.org/jira/browse/YARN-1239) | *Major* | **Save version information in the state store**
---

* [YARN-1232](https://issues.apache.org/jira/browse/YARN-1232) | *Major* | **Configuration to support multiple RMs**
---

* [YARN-1222](https://issues.apache.org/jira/browse/YARN-1222) | *Major* | **Make improvements in ZKRMStateStore for fencing**
---

* [YARN-1210](https://issues.apache.org/jira/browse/YARN-1210) | *Major* | **During RM restart, RM should start a new attempt only when previous attempt exits for real**
---

* [YARN-1199](https://issues.apache.org/jira/browse/YARN-1199) | *Major* | **Make NM/RM Versions Available**
---

* [YARN-1188](https://issues.apache.org/jira/browse/YARN-1188) | *Trivial* | **The context of QueueMetrics becomes 'default' when using FairScheduler**
---

* [YARN-1185](https://issues.apache.org/jira/browse/YARN-1185) | *Major* | **FileSystemRMStateStore can leave partial files that prevent subsequent recovery**
---

* [YARN-1183](https://issues.apache.org/jira/browse/YARN-1183) | *Major* | **MiniYARNCluster shutdown takes several minutes intermittently**
---

* [YARN-1182](https://issues.apache.org/jira/browse/YARN-1182) | *Major* | **MiniYARNCluster creates and inits the RM/NM only on start()**
---

* [YARN-1181](https://issues.apache.org/jira/browse/YARN-1181) | *Major* | **Augment MiniYARNCluster to support HA mode**
---

* [YARN-1180](https://issues.apache.org/jira/browse/YARN-1180) | *Trivial* | **Update capacity scheduler docs to include types on the configs**
---

* [YARN-1172](https://issues.apache.org/jira/browse/YARN-1172) | *Major* | **Convert *SecretManagers in the RM to services**
---

* [YARN-1145](https://issues.apache.org/jira/browse/YARN-1145) | *Major* | **Potential file handle leak in aggregated logs web ui**
---

* [YARN-1138](https://issues.apache.org/jira/browse/YARN-1138) | *Major* | **yarn.application.classpath is set to point to $HADOOP\_CONF\_DIR etc., which does not work on Windows**
---

* [YARN-1121](https://issues.apache.org/jira/browse/YARN-1121) | *Major* | **RMStateStore should flush all pending store events before closing**
---

* [YARN-1119](https://issues.apache.org/jira/browse/YARN-1119) | *Major* | **Add ClusterMetrics checks to tho TestRMNodeTransitions tests**
---

* [YARN-1109](https://issues.apache.org/jira/browse/YARN-1109) | *Major* | **Demote NodeManager "Sending out status for container" logs to debug**
---

* [YARN-1098](https://issues.apache.org/jira/browse/YARN-1098) | *Major* | **Separate out RM services into "Always On" and "Active"**
---

* [YARN-1068](https://issues.apache.org/jira/browse/YARN-1068) | *Major* | **Add admin support for HA operations**
---

* [YARN-1060](https://issues.apache.org/jira/browse/YARN-1060) | *Major* | **Two tests in TestFairScheduler are missing @Test annotation**
---

* [YARN-1053](https://issues.apache.org/jira/browse/YARN-1053) | *Blocker* | **Diagnostic message from ContainerExitEvent is ignored in ContainerImpl**
---

* [YARN-1044](https://issues.apache.org/jira/browse/YARN-1044) | *Critical* | **used/min/max resources do not display info in the scheduler page**
---

* [YARN-1033](https://issues.apache.org/jira/browse/YARN-1033) | *Major* | **Expose RM active/standby state to Web UI and REST API**
---

* [YARN-1029](https://issues.apache.org/jira/browse/YARN-1029) | *Major* | **Allow embedding leader election into the RM**
---

* [YARN-1028](https://issues.apache.org/jira/browse/YARN-1028) | *Major* | **Add FailoverProxyProvider like capability to RMProxy**
---

* [YARN-1027](https://issues.apache.org/jira/browse/YARN-1027) | *Major* | **Implement RMHAProtocolService**
---

* [YARN-1022](https://issues.apache.org/jira/browse/YARN-1022) | *Trivial* | **Unnecessary INFO logs in AMRMClientAsync**
---

* [YARN-1021](https://issues.apache.org/jira/browse/YARN-1021) | *Major* | **Yarn Scheduler Load Simulator**
---

* [YARN-1010](https://issues.apache.org/jira/browse/YARN-1010) | *Critical* | **FairScheduler: decouple container scheduling from nodemanager heartbeats**
---

* [YARN-985](https://issues.apache.org/jira/browse/YARN-985) | *Major* | **Nodemanager should log where a resource was localized**
---

* [YARN-976](https://issues.apache.org/jira/browse/YARN-976) | *Major* | **Document the meaning of a virtual core**
---

* [YARN-905](https://issues.apache.org/jira/browse/YARN-905) | *Major* | **Add state filters to nodes CLI**
---

* [YARN-895](https://issues.apache.org/jira/browse/YARN-895) | *Major* | **RM crashes if it restarts while the state-store is down**
---

* [YARN-891](https://issues.apache.org/jira/browse/YARN-891) | *Major* | **Store completed application information in RM state store**
---

* [YARN-888](https://issues.apache.org/jira/browse/YARN-888) | *Major* | **clean up POM dependencies**
---

* [YARN-879](https://issues.apache.org/jira/browse/YARN-879) | *Major* | **Fix tests w.r.t o.a.h.y.server.resourcemanager.Application**
---

* [YARN-819](https://issues.apache.org/jira/browse/YARN-819) | *Major* | **ResourceManager and NodeManager should check for a minimum allowed version**
---

* [YARN-807](https://issues.apache.org/jira/browse/YARN-807) | *Major* | **When querying apps by queue, iterating over all apps is inefficient and limiting**
---

* [YARN-786](https://issues.apache.org/jira/browse/YARN-786) | *Major* | **Expose application resource usage in RM REST API**
---

* [YARN-709](https://issues.apache.org/jira/browse/YARN-709) | *Major* | **verify that new jobs submitted with old RM delegation tokens after RM restart are accepted**
---

* [YARN-674](https://issues.apache.org/jira/browse/YARN-674) | *Major* | **Slow or failing DelegationToken renewals on submission itself make RM unavailable**
---

* [YARN-649](https://issues.apache.org/jira/browse/YARN-649) | *Major* | **Make container logs available over HTTP in plain text**
---

* [YARN-584](https://issues.apache.org/jira/browse/YARN-584) | *Major* | **In scheduler web UIs, queues unexpand on refresh**
---

* [YARN-546](https://issues.apache.org/jira/browse/YARN-546) | *Major* | **Allow disabling the Fair Scheduler event log**
---

* [YARN-478](https://issues.apache.org/jira/browse/YARN-478) | *Major* | **fix coverage org.apache.hadoop.yarn.webapp.log**
---

* [YARN-465](https://issues.apache.org/jira/browse/YARN-465) | *Major* | **fix coverage  org.apache.hadoop.yarn.server.webproxy**
---

* [YARN-461](https://issues.apache.org/jira/browse/YARN-461) | *Major* | **Fair scheduler should not accept apps with empty string queue name**
---

* [YARN-427](https://issues.apache.org/jira/browse/YARN-427) | *Major* | **Coverage fix for org.apache.hadoop.yarn.server.api.***
---

* [YARN-425](https://issues.apache.org/jira/browse/YARN-425) | *Major* | **coverage fix for yarn api**
---

* [YARN-408](https://issues.apache.org/jira/browse/YARN-408) | *Minor* | **Capacity Scheduler delay scheduling should not be disabled by default**
---

* [YARN-353](https://issues.apache.org/jira/browse/YARN-353) | *Major* | **Add Zookeeper-based store implementation for RMStateStore**
---

* [YARN-312](https://issues.apache.org/jira/browse/YARN-312) | *Major* | **Add updateNodeResource in ResourceManagerAdministrationProtocol**
---

* [YARN-311](https://issues.apache.org/jira/browse/YARN-311) | *Major* | **Dynamic node resource configuration: core scheduler changes**
---

* [YARN-305](https://issues.apache.org/jira/browse/YARN-305) | *Critical* | **Fair scheduler logs too many "Node offered to app:..." messages**
---

* [YARN-7](https://issues.apache.org/jira/browse/YARN-7) | *Major* | **Add support for DistributedShell to ask for CPUs along with memory**


