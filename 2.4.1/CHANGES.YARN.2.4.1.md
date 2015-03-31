# Hadoop Changelog

## Release 2.4.1 - 2014-06-30

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1892](https://issues.apache.org/jira/browse/YARN-1892) | Excessive logging in RM |  Minor | scheduler | Siddharth Seth | Jian He |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2081](https://issues.apache.org/jira/browse/YARN-2081) | TestDistributedShell fails after YARN-1962 |  Minor | applications/distributed-shell | Hong Zhiguo | Hong Zhiguo |
| [YARN-2066](https://issues.apache.org/jira/browse/YARN-2066) | Wrong field is referenced in GetApplicationsRequestPBImpl#mergeLocalToBuilder() |  Minor | . | Ted Yu | Hong Zhiguo |
| [YARN-2016](https://issues.apache.org/jira/browse/YARN-2016) | Yarn getApplicationRequest start time range is not honored |  Major | resourcemanager | Venkat Ranganathan | Junping Du |
| [YARN-1986](https://issues.apache.org/jira/browse/YARN-1986) | In Fifo Scheduler, node heartbeat in between creating app and attempt causes NPE |  Critical | . | Jon Bringhurst | Hong Zhiguo |
| [YARN-1976](https://issues.apache.org/jira/browse/YARN-1976) | Tracking url missing http protocol for FAILED application |  Major | . | Yesha Vora | Junping Du |
| [YARN-1975](https://issues.apache.org/jira/browse/YARN-1975) | Used resources shows escaped html in CapacityScheduler and FairScheduler page |  Major | resourcemanager | Nathan Roberts | Mit Desai |
| [YARN-1934](https://issues.apache.org/jira/browse/YARN-1934) | Potential NPE in ZKRMStateStore caused by handling Disconnected event from ZK. |  Blocker | resourcemanager | Rohith | Karthik Kambatla |
| [YARN-1933](https://issues.apache.org/jira/browse/YARN-1933) | TestAMRestart and TestNodeHealthService failing sometimes on Windows |  Major | . | Jian He | Jian He |
| [YARN-1932](https://issues.apache.org/jira/browse/YARN-1932) | Javascript injection on the job status page |  Blocker | . | Mit Desai | Mit Desai |
| [YARN-1931](https://issues.apache.org/jira/browse/YARN-1931) | Private API change in YARN-1824 in 2.4 broke compatibility with previous releases |  Blocker | applications | Thomas Graves | Sandy Ryza |
| [YARN-1929](https://issues.apache.org/jira/browse/YARN-1929) | DeadLock in RM when automatic failover is enabled. |  Blocker | resourcemanager | Rohith | Karthik Kambatla |
| [YARN-1928](https://issues.apache.org/jira/browse/YARN-1928) | TestAMRMRPCNodeUpdates fails ocassionally |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1926](https://issues.apache.org/jira/browse/YARN-1926) | DistributedShell unit tests fail on Windows |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-1924](https://issues.apache.org/jira/browse/YARN-1924) | STATE\_STORE\_OP\_FAILED happens when ZKRMStateStore tries to update app(attempt) before storing it |  Critical | . | Arpit Gupta | Jian He |
| [YARN-1920](https://issues.apache.org/jira/browse/YARN-1920) | TestFileSystemApplicationHistoryStore.testMissingApplicationAttemptHistoryData fails in windows |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [YARN-1914](https://issues.apache.org/jira/browse/YARN-1914) | Test TestFSDownload.testDownloadPublicWithStatCache fails on Windows |  Major | . | Varun Vasudev | Varun Vasudev |
| [YARN-1910](https://issues.apache.org/jira/browse/YARN-1910) | TestAMRMTokens fails on windows |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1908](https://issues.apache.org/jira/browse/YARN-1908) | Distributed shell with custom script has permission error. |  Major | applications/distributed-shell | Tassapol Athiapinya | Vinod Kumar Vavilapalli |
| [YARN-1907](https://issues.apache.org/jira/browse/YARN-1907) | TestRMApplicationHistoryWriter#testRMWritingMassiveHistory runs slow and intermittently fails |  Major | . | Mit Desai | Mit Desai |
| [YARN-1903](https://issues.apache.org/jira/browse/YARN-1903) | Killing Container on NEW and LOCALIZING will result in exitCode and diagnostics not set |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1883](https://issues.apache.org/jira/browse/YARN-1883) | TestRMAdminService fails due to inconsistent entries in UserGroups |  Major | . | Mit Desai | Mit Desai |
| [YARN-1837](https://issues.apache.org/jira/browse/YARN-1837) | TestMoveApplication.testMoveRejectedByScheduler randomly fails |  Major | . | Tsuyoshi Ozawa | Hong Zhiguo |
| [YARN-1201](https://issues.apache.org/jira/browse/YARN-1201) | TestAMAuthorization fails with local hostname cannot be resolved |  Minor | resourcemanager | Nemon Lou | Wangda Tan |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-1947](https://issues.apache.org/jira/browse/YARN-1947) | TestRMDelegationTokens#testRMDTMasterKeyStateOnRollingMasterKey is failing intermittently |  Major | . | Jian He | Jian He |
| [YARN-1905](https://issues.apache.org/jira/browse/YARN-1905) | TestProcfsBasedProcessTree must only run on Linux. |  Trivial | nodemanager | Chris Nauroth | Chris Nauroth |
| [YARN-1750](https://issues.apache.org/jira/browse/YARN-1750) | TestNodeStatusUpdater#testNMRegistration is incorrect in test case |  Major | nodemanager | Ming Ma | Wangda Tan |
| [YARN-1281](https://issues.apache.org/jira/browse/YARN-1281) | TestZKRMStateStoreZKClientConnections fails intermittently |  Major | resourcemanager | Karthik Kambatla | Tsuyoshi Ozawa |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-2053](https://issues.apache.org/jira/browse/YARN-2053) | Slider AM fails to restart: NPE in RegisterApplicationMasterResponseProto$Builder.addAllNmTokensFromPreviousAttempts |  Major | resourcemanager | Sumit Mohanty | Wangda Tan |
| [YARN-1962](https://issues.apache.org/jira/browse/YARN-1962) | Timeline server is enabled by default |  Major | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [YARN-1957](https://issues.apache.org/jira/browse/YARN-1957) | ProportionalCapacitPreemptionPolicy handling of corner cases... |  Major | resourcemanager | Carlo Curino | Carlo Curino |
| [YARN-1898](https://issues.apache.org/jira/browse/YARN-1898) | Standby RM's conf, stacks, logLevel, metrics, jmx and logs links are redirecting to Active RM |  Major | resourcemanager | Yesha Vora | Xuan Gong |
| [YARN-1861](https://issues.apache.org/jira/browse/YARN-1861) | Both RM stuck in standby mode when automatic failover is enabled |  Blocker | resourcemanager | Arpit Gupta | Karthik Kambatla |
| [YARN-1701](https://issues.apache.org/jira/browse/YARN-1701) | Improve default paths of timeline store and generic history store |  Major | . | Gera Shegalov | Tsuyoshi Ozawa |
| [YARN-1696](https://issues.apache.org/jira/browse/YARN-1696) | Document RM HA |  Blocker | resourcemanager | Karthik Kambatla | Tsuyoshi Ozawa |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


