# Hadoop YARN 2.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [YARN-2081](https://issues.apache.org/jira/browse/YARN-2081) | *Minor* | **TestDistributedShell fails after YARN-1962**
---

* [YARN-2066](https://issues.apache.org/jira/browse/YARN-2066) | *Minor* | **Wrong field is referenced in GetApplicationsRequestPBImpl#mergeLocalToBuilder()**
---

* [YARN-2053](https://issues.apache.org/jira/browse/YARN-2053) | *Major* | **Slider AM fails to restart: NPE in RegisterApplicationMasterResponseProto$Builder.addAllNmTokensFromPreviousAttempts**
---

* [YARN-2016](https://issues.apache.org/jira/browse/YARN-2016) | *Major* | **Yarn getApplicationRequest start time range is not honored**
---

* [YARN-1986](https://issues.apache.org/jira/browse/YARN-1986) | *Critical* | **In Fifo Scheduler, node heartbeat in between creating app and attempt causes NPE**
---

* [YARN-1976](https://issues.apache.org/jira/browse/YARN-1976) | *Major* | **Tracking url missing http protocol for FAILED application**
---

* [YARN-1975](https://issues.apache.org/jira/browse/YARN-1975) | *Major* | **Used resources shows escaped html in CapacityScheduler and FairScheduler page**
---

* [YARN-1962](https://issues.apache.org/jira/browse/YARN-1962) | *Major* | **Timeline server is enabled by default**
---

* [YARN-1957](https://issues.apache.org/jira/browse/YARN-1957) | *Major* | **ProportionalCapacitPreemptionPolicy handling of corner cases...**
---

* [YARN-1947](https://issues.apache.org/jira/browse/YARN-1947) | *Major* | **TestRMDelegationTokens#testRMDTMasterKeyStateOnRollingMasterKey is failing intermittently**
---

* [YARN-1934](https://issues.apache.org/jira/browse/YARN-1934) | *Blocker* | **Potential NPE in ZKRMStateStore caused by handling Disconnected event from ZK.**
---

* [YARN-1933](https://issues.apache.org/jira/browse/YARN-1933) | *Major* | **TestAMRestart and TestNodeHealthService failing sometimes on Windows**
---

* [YARN-1932](https://issues.apache.org/jira/browse/YARN-1932) | *Blocker* | **Javascript injection on the job status page**
---

* [YARN-1931](https://issues.apache.org/jira/browse/YARN-1931) | *Blocker* | **Private API change in YARN-1824 in 2.4 broke compatibility with previous releases**
---

* [YARN-1929](https://issues.apache.org/jira/browse/YARN-1929) | *Blocker* | **DeadLock in RM when automatic failover is enabled.**
---

* [YARN-1928](https://issues.apache.org/jira/browse/YARN-1928) | *Major* | **TestAMRMRPCNodeUpdates fails ocassionally**
---

* [YARN-1926](https://issues.apache.org/jira/browse/YARN-1926) | *Major* | **DistributedShell unit tests fail on Windows**
---

* [YARN-1924](https://issues.apache.org/jira/browse/YARN-1924) | *Critical* | **STATE\_STORE\_OP\_FAILED happens when ZKRMStateStore tries to update app(attempt) before storing it**
---

* [YARN-1920](https://issues.apache.org/jira/browse/YARN-1920) | *Major* | **TestFileSystemApplicationHistoryStore.testMissingApplicationAttemptHistoryData fails in windows**
---

* [YARN-1914](https://issues.apache.org/jira/browse/YARN-1914) | *Major* | **Test TestFSDownload.testDownloadPublicWithStatCache fails on Windows**
---

* [YARN-1910](https://issues.apache.org/jira/browse/YARN-1910) | *Major* | **TestAMRMTokens fails on windows**
---

* [YARN-1908](https://issues.apache.org/jira/browse/YARN-1908) | *Major* | **Distributed shell with custom script has permission error.**
---

* [YARN-1907](https://issues.apache.org/jira/browse/YARN-1907) | *Major* | **TestRMApplicationHistoryWriter#testRMWritingMassiveHistory runs slow and intermittently fails**
---

* [YARN-1905](https://issues.apache.org/jira/browse/YARN-1905) | *Trivial* | **TestProcfsBasedProcessTree must only run on Linux.**
---

* [YARN-1903](https://issues.apache.org/jira/browse/YARN-1903) | *Major* | **Killing Container on NEW and LOCALIZING will result in exitCode and diagnostics not set**
---

* [YARN-1898](https://issues.apache.org/jira/browse/YARN-1898) | *Major* | **Standby RM's conf, stacks, logLevel, metrics, jmx and logs links are redirecting to Active RM**
---

* [YARN-1892](https://issues.apache.org/jira/browse/YARN-1892) | *Minor* | **Excessive logging in RM**
---

* [YARN-1883](https://issues.apache.org/jira/browse/YARN-1883) | *Major* | **TestRMAdminService fails due to inconsistent entries in UserGroups**
---

* [YARN-1861](https://issues.apache.org/jira/browse/YARN-1861) | *Blocker* | **Both RM stuck in standby mode when automatic failover is enabled**
---

* [YARN-1837](https://issues.apache.org/jira/browse/YARN-1837) | *Major* | **TestMoveApplication.testMoveRejectedByScheduler randomly fails**
---

* [YARN-1750](https://issues.apache.org/jira/browse/YARN-1750) | *Major* | **TestNodeStatusUpdater#testNMRegistration is incorrect in test case**
---

* [YARN-1701](https://issues.apache.org/jira/browse/YARN-1701) | *Major* | **Improve default paths of timeline store and generic history store**
---

* [YARN-1696](https://issues.apache.org/jira/browse/YARN-1696) | *Blocker* | **Document RM HA**
---

* [YARN-1281](https://issues.apache.org/jira/browse/YARN-1281) | *Major* | **TestZKRMStateStoreZKClientConnections fails intermittently**
---

* [YARN-1201](https://issues.apache.org/jira/browse/YARN-1201) | *Minor* | **TestAMAuthorization fails with local hostname cannot be resolved**


