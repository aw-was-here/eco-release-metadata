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
| [HDFS-4052](https://issues.apache.org/jira/browse/HDFS-4052) | BlockManager#invalidateWork should print logs outside the lock |  Minor | . | Jing Zhao | Jing Zhao |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6411](https://issues.apache.org/jira/browse/HDFS-6411) | nfs-hdfs-gateway mount raises I/O error and hangs when a unauthorized user attempts to access it |  Major | nfs | Zhongyi Xie | Brandon Li |
| [HDFS-6402](https://issues.apache.org/jira/browse/HDFS-6402) | Suppress findbugs warning for failure to override equals and hashCode in FsAclPermission. |  Trivial | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-6397](https://issues.apache.org/jira/browse/HDFS-6397) | NN shows inconsistent value in deadnode count |  Critical | . | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [HDFS-6362](https://issues.apache.org/jira/browse/HDFS-6362) | InvalidateBlocks is inconsistent in usage of DatanodeUuid and StorageID |  Blocker | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6361](https://issues.apache.org/jira/browse/HDFS-6361) | TestIdUserGroup.testUserUpdateSetting failed due to out of range nfsnobody Id |  Major | nfs | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6340](https://issues.apache.org/jira/browse/HDFS-6340) | DN can't finalize upgrade |  Blocker | datanode | Rahul Singhal | Rahul Singhal |
| [HDFS-6329](https://issues.apache.org/jira/browse/HDFS-6329) | WebHdfs does not work if HA is enabled on NN but logical URI is not configured. |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6326](https://issues.apache.org/jira/browse/HDFS-6326) | WebHdfs ACL compatibility is broken |  Blocker | webhdfs | Daryn Sharp | Chris Nauroth |
| [HDFS-6325](https://issues.apache.org/jira/browse/HDFS-6325) | Append should fail if the last block has insufficient number of replicas |  Major | namenode | Konstantin Shvachko | Keith Pak |
| [HDFS-6313](https://issues.apache.org/jira/browse/HDFS-6313) | WebHdfs may use the wrong NN when configured for multiple HA NNs |  Blocker | webhdfs | Daryn Sharp | Kihwal Lee |
| [HDFS-6245](https://issues.apache.org/jira/browse/HDFS-6245) | datanode fails to start with a bad disk even when failed volumes is set |  Major | . | Arpit Gupta | Arpit Agarwal |
| [HDFS-6236](https://issues.apache.org/jira/browse/HDFS-6236) | ImageServlet should use Time#monotonicNow to measure latency. |  Minor | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-6235](https://issues.apache.org/jira/browse/HDFS-6235) | TestFileJournalManager can fail on Windows due to file locking if tests run out of order. |  Trivial | namenode, test | Chris Nauroth | Chris Nauroth |
| [HDFS-6234](https://issues.apache.org/jira/browse/HDFS-6234) | TestDatanodeConfig#testMemlockLimit fails on Windows due to invalid file path. |  Trivial | datanode, test | Chris Nauroth | Chris Nauroth |
| [HDFS-6232](https://issues.apache.org/jira/browse/HDFS-6232) | OfflineEditsViewer throws a NPE on edits containing ACL modifications |  Major | tools | Stephen Chu | Akira AJISAKA |
| [HDFS-6231](https://issues.apache.org/jira/browse/HDFS-6231) | DFSClient hangs infinitely if using hedged reads and all eligible datanodes die. |  Major | hdfs-client | Chris Nauroth | Chris Nauroth |
| [HDFS-6229](https://issues.apache.org/jira/browse/HDFS-6229) | Race condition in failover can cause RetryCache fail to work |  Major | ha | Jing Zhao | Jing Zhao |
| [HDFS-6215](https://issues.apache.org/jira/browse/HDFS-6215) | Wrong error message for upgrade |  Minor | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6209](https://issues.apache.org/jira/browse/HDFS-6209) | Fix flaky test TestValidateConfigurationSettings.testThatDifferentRPCandHttpPortsAreOK |  Minor | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6208](https://issues.apache.org/jira/browse/HDFS-6208) | DataNode caching can leak file descriptors. |  Major | datanode | Chris Nauroth | Chris Nauroth |
| [HDFS-6206](https://issues.apache.org/jira/browse/HDFS-6206) | DFSUtil.substituteForWildcardAddress may throw NPE |  Major | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6204](https://issues.apache.org/jira/browse/HDFS-6204) | TestRBWBlockInvalidation may fail |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6198](https://issues.apache.org/jira/browse/HDFS-6198) | DataNode rolling upgrade does not correctly identify current block pool directory and replace with trash on Windows. |  Major | datanode | Chris Nauroth | Chris Nauroth |
| [HDFS-6197](https://issues.apache.org/jira/browse/HDFS-6197) | Rolling upgrade rollback on Windows can fail attempting to rename edit log segment files to a destination that already exists. |  Minor | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-2882](https://issues.apache.org/jira/browse/HDFS-2882) | DN continues to start up, even if block pool fails to initialize |  Major | datanode | Todd Lipcon | Vinayakumar B |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6189](https://issues.apache.org/jira/browse/HDFS-6189) | Multiple HDFS tests fail on Windows attempting to use a test root path containing a colon. |  Major | test | Chris Nauroth | Chris Nauroth |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


