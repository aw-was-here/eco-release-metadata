# Hadoop  2.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-11273](https://issues.apache.org/jira/browse/HADOOP-11273) | *Major* | **TestMiniKdc failure: login options not compatible with IBM JDK**
---

* [HADOOP-10612](https://issues.apache.org/jira/browse/HADOOP-10612) | *Major* | **NFS failed to refresh the user group id mapping table**
---

* [HADOOP-10562](https://issues.apache.org/jira/browse/HADOOP-10562) | *Critical* | **Namenode exits on exception without printing stack trace in AbstractDelegationTokenSecretManager**
---

* [HADOOP-10527](https://issues.apache.org/jira/browse/HADOOP-10527) | *Major* | **Fix incorrect return code and allow more retries on EINTR**
---

* [HADOOP-10522](https://issues.apache.org/jira/browse/HADOOP-10522) | *Critical* | **JniBasedUnixGroupMapping mishandles errors**
---

* [HADOOP-10490](https://issues.apache.org/jira/browse/HADOOP-10490) | *Minor* | **TestMapFile and TestBloomMapFile leak file descriptors.**
---

* [HADOOP-10473](https://issues.apache.org/jira/browse/HADOOP-10473) | *Minor* | **TestCallQueueManager is still flaky**
---

* [HADOOP-10466](https://issues.apache.org/jira/browse/HADOOP-10466) | *Minor* | **Lower the log level in UserGroupInformation**
---

* [HADOOP-10456](https://issues.apache.org/jira/browse/HADOOP-10456) | *Major* | **Bug in Configuration.java exposed by Spark (ConcurrentModificationException)**
---

* [HADOOP-10455](https://issues.apache.org/jira/browse/HADOOP-10455) | *Major* | **When there is an exception, ipc.Server should first check whether it is an terse exception**
---

* [HADOOP-8826](https://issues.apache.org/jira/browse/HADOOP-8826) | *Minor* | **Docs still refer to 0.20.205 as stable line**
---

* [HDFS-6411](https://issues.apache.org/jira/browse/HDFS-6411) | *Major* | **nfs-hdfs-gateway mount raises I/O error and hangs when a unauthorized user attempts to access it**
---

* [HDFS-6402](https://issues.apache.org/jira/browse/HDFS-6402) | *Trivial* | **Suppress findbugs warning for failure to override equals and hashCode in FsAclPermission.**
---

* [HDFS-6397](https://issues.apache.org/jira/browse/HDFS-6397) | *Critical* | **NN shows inconsistent value in deadnode count**
---

* [HDFS-6362](https://issues.apache.org/jira/browse/HDFS-6362) | *Blocker* | **InvalidateBlocks is inconsistent in usage of DatanodeUuid and StorageID**
---

* [HDFS-6361](https://issues.apache.org/jira/browse/HDFS-6361) | *Major* | **TestIdUserGroup.testUserUpdateSetting failed due to out of range nfsnobody Id**
---

* [HDFS-6340](https://issues.apache.org/jira/browse/HDFS-6340) | *Blocker* | **DN can't finalize upgrade**
---

* [HDFS-6329](https://issues.apache.org/jira/browse/HDFS-6329) | *Blocker* | **WebHdfs does not work if HA is enabled on NN but logical URI is not configured.**
---

* [HDFS-6326](https://issues.apache.org/jira/browse/HDFS-6326) | *Blocker* | **WebHdfs ACL compatibility is broken**
---

* [HDFS-6325](https://issues.apache.org/jira/browse/HDFS-6325) | *Major* | **Append should fail if the last block has insufficient number of replicas**

I have committed the fix to the trunk, branch-2, and branch-2.4 respectively. Thanks Keith!

---

* [HDFS-6313](https://issues.apache.org/jira/browse/HDFS-6313) | *Blocker* | **WebHdfs may use the wrong NN when configured for multiple HA NNs**
---

* [HDFS-6245](https://issues.apache.org/jira/browse/HDFS-6245) | *Major* | **datanode fails to start with a bad disk even when failed volumes is set**
---

* [HDFS-6236](https://issues.apache.org/jira/browse/HDFS-6236) | *Minor* | **ImageServlet should use Time#monotonicNow to measure latency.**
---

* [HDFS-6235](https://issues.apache.org/jira/browse/HDFS-6235) | *Trivial* | **TestFileJournalManager can fail on Windows due to file locking if tests run out of order.**
---

* [HDFS-6234](https://issues.apache.org/jira/browse/HDFS-6234) | *Trivial* | **TestDatanodeConfig#testMemlockLimit fails on Windows due to invalid file path.**
---

* [HDFS-6232](https://issues.apache.org/jira/browse/HDFS-6232) | *Major* | **OfflineEditsViewer throws a NPE on edits containing ACL modifications**
---

* [HDFS-6231](https://issues.apache.org/jira/browse/HDFS-6231) | *Major* | **DFSClient hangs infinitely if using hedged reads and all eligible datanodes die.**
---

* [HDFS-6229](https://issues.apache.org/jira/browse/HDFS-6229) | *Major* | **Race condition in failover can cause RetryCache fail to work**
---

* [HDFS-6215](https://issues.apache.org/jira/browse/HDFS-6215) | *Minor* | **Wrong error message for upgrade**
---

* [HDFS-6209](https://issues.apache.org/jira/browse/HDFS-6209) | *Minor* | **Fix flaky test TestValidateConfigurationSettings.testThatDifferentRPCandHttpPortsAreOK**
---

* [HDFS-6208](https://issues.apache.org/jira/browse/HDFS-6208) | *Major* | **DataNode caching can leak file descriptors.**
---

* [HDFS-6206](https://issues.apache.org/jira/browse/HDFS-6206) | *Major* | **DFSUtil.substituteForWildcardAddress may throw NPE**
---

* [HDFS-6204](https://issues.apache.org/jira/browse/HDFS-6204) | *Minor* | **TestRBWBlockInvalidation may fail**
---

* [HDFS-6198](https://issues.apache.org/jira/browse/HDFS-6198) | *Major* | **DataNode rolling upgrade does not correctly identify current block pool directory and replace with trash on Windows.**
---

* [HDFS-6197](https://issues.apache.org/jira/browse/HDFS-6197) | *Minor* | **Rolling upgrade rollback on Windows can fail attempting to rename edit log segment files to a destination that already exists.**
---

* [HDFS-6189](https://issues.apache.org/jira/browse/HDFS-6189) | *Major* | **Multiple HDFS tests fail on Windows attempting to use a test root path containing a colon.**
---

* [HDFS-4052](https://issues.apache.org/jira/browse/HDFS-4052) | *Minor* | **BlockManager#invalidateWork should print logs outside the lock**
---

* [HDFS-2882](https://issues.apache.org/jira/browse/HDFS-2882) | *Major* | **DN continues to start up, even if block pool fails to initialize**
---

* [MAPREDUCE-5843](https://issues.apache.org/jira/browse/MAPREDUCE-5843) | *Major* | **TestMRKeyValueTextInputFormat failing on Windows**
---

* [MAPREDUCE-5841](https://issues.apache.org/jira/browse/MAPREDUCE-5841) | *Major* | **uber job doesn't terminate on getting mapred job kill**
---

* [MAPREDUCE-5835](https://issues.apache.org/jira/browse/MAPREDUCE-5835) | *Critical* | **Killing Task might cause the job to go to ERROR state**
---

* [MAPREDUCE-5833](https://issues.apache.org/jira/browse/MAPREDUCE-5833) | *Major* | **TestRMContainerAllocator fails ocassionally**
---

* [MAPREDUCE-5832](https://issues.apache.org/jira/browse/MAPREDUCE-5832) | *Major* | **Few tests in TestJobClient fail on Windows**
---

* [MAPREDUCE-5830](https://issues.apache.org/jira/browse/MAPREDUCE-5830) | *Blocker* | **HostUtil.getTaskLogUrl is not backwards binary compatible with 2.3**
---

* [MAPREDUCE-5828](https://issues.apache.org/jira/browse/MAPREDUCE-5828) | *Major* | **TestMapReduceJobControl fails on JDK 7 + Windows**
---

* [MAPREDUCE-5827](https://issues.apache.org/jira/browse/MAPREDUCE-5827) | *Major* | **TestSpeculativeExecutionWithMRApp fails**
---

* [MAPREDUCE-5826](https://issues.apache.org/jira/browse/MAPREDUCE-5826) | *Major* | **TestHistoryServerFileSystemStateStoreService.testTokenStore fails in windows**
---

* [MAPREDUCE-5824](https://issues.apache.org/jira/browse/MAPREDUCE-5824) | *Major* | **TestPipesNonJavaInputFormat.testFormat fails in windows**
---

* [MAPREDUCE-5821](https://issues.apache.org/jira/browse/MAPREDUCE-5821) | *Major* | **IFile merge allocates new byte array for every value**
---

* [MAPREDUCE-5818](https://issues.apache.org/jira/browse/MAPREDUCE-5818) | *Major* | **hsadmin cmd is missing in mapred.cmd**
---

* [MAPREDUCE-5815](https://issues.apache.org/jira/browse/MAPREDUCE-5815) | *Blocker* | **Fix NPE in TestMRAppMaster**
---

* [MAPREDUCE-5714](https://issues.apache.org/jira/browse/MAPREDUCE-5714) | *Major* | **TestMRAppComponentDependencies causes surefire to exit without saying proper goodbye**
---

* [MAPREDUCE-3191](https://issues.apache.org/jira/browse/MAPREDUCE-3191) | *Trivial* | **docs for map output compression incorrectly reference SequenceFile**
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


