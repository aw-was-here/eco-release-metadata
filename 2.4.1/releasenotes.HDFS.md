# Hadoop HDFS 2.4.1 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

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


