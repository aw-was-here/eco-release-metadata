# Hadoop Changelog

## Release 2.1.1-beta - 2013-09-16

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5118](https://issues.apache.org/jira/browse/HDFS-5118) | Provide testing support for DFSClient to drop RPC responses |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-5076](https://issues.apache.org/jira/browse/HDFS-5076) | Add MXBean methods to query NN's transaction information and JournalNode's journal status |  Minor | . | Jing Zhao | Jing Zhao |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5128](https://issues.apache.org/jira/browse/HDFS-5128) | Allow multiple net interfaces to be used with HA namenode RPC server |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-5061](https://issues.apache.org/jira/browse/HDFS-5061) | Make FSNameSystem#auditLoggers an unmodifiable list |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-5045](https://issues.apache.org/jira/browse/HDFS-5045) | Add more unit tests for retry cache to cover all AtMostOnce methods |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-4926](https://issues.apache.org/jira/browse/HDFS-4926) | namenode webserver's page has a tooltip that is inconsistent with the datanode HTML link |  Trivial | namenode | Joseph Lorenzini | Vivek Ganesan |
| [HDFS-4905](https://issues.apache.org/jira/browse/HDFS-4905) | Add appendToFile command to "hdfs dfs" |  Minor | tools | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4513](https://issues.apache.org/jira/browse/HDFS-4513) | Clarify WebHDFS REST API that all JSON respsonses may contain additional properties |  Minor | documentation, webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3245](https://issues.apache.org/jira/browse/HDFS-3245) | Add metrics and web UI for cluster version summary |  Major | namenode | Todd Lipcon | Ravi Prakash |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5231](https://issues.apache.org/jira/browse/HDFS-5231) | Fix broken links in the document of HDFS Federation |  Minor | . | Haohui Mai | Haohui Mai |
| [HDFS-5219](https://issues.apache.org/jira/browse/HDFS-5219) | Add configuration keys for retry policy in WebHDFSFileSystem |  Major | webhdfs | Haohui Mai | Haohui Mai |
| [HDFS-5192](https://issues.apache.org/jira/browse/HDFS-5192) | NameNode may fail to start when dfs.client.test.drop.namenode.response.number is set |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-5159](https://issues.apache.org/jira/browse/HDFS-5159) | Secondary NameNode fails to checkpoint if error occurs downloading edits on first checkpoint |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-5150](https://issues.apache.org/jira/browse/HDFS-5150) | Allow per NN SPN for internal SPNEGO. |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-5140](https://issues.apache.org/jira/browse/HDFS-5140) | Too many safemode monitor threads being created in the standby namenode causing it to fail with out of memory error |  Blocker | ha | Arpit Gupta | Jing Zhao |
| [HDFS-5132](https://issues.apache.org/jira/browse/HDFS-5132) | Deadlock in NameNode between SafeModeMonitor#run and DatanodeManager#handleHeartbeat |  Blocker | namenode | Arpit Gupta | Kihwal Lee |
| [HDFS-5124](https://issues.apache.org/jira/browse/HDFS-5124) | DelegationTokenSecretManager#retrievePassword can cause deadlock in NameNode |  Blocker | namenode | Deepesh Khandelwal | Daryn Sharp |
| [HDFS-5111](https://issues.apache.org/jira/browse/HDFS-5111) | Remove duplicated error message for snapshot commands when processing invalid arguments |  Minor | snapshots | Jing Zhao | Jing Zhao |
| [HDFS-5106](https://issues.apache.org/jira/browse/HDFS-5106) | TestDatanodeBlockScanner fails on Windows due to incorrect path format |  Minor | test | Chuan Liu | Chuan Liu |
| [HDFS-5105](https://issues.apache.org/jira/browse/HDFS-5105) | TestFsck fails on Windows |  Minor | . | Chuan Liu | Chuan Liu |
| [HDFS-5103](https://issues.apache.org/jira/browse/HDFS-5103) | TestDirectoryScanner fails on Windows |  Minor | test | Chuan Liu | Chuan Liu |
| [HDFS-5102](https://issues.apache.org/jira/browse/HDFS-5102) | Snapshot names should not be allowed to contain slash characters |  Major | snapshots | Aaron T. Myers | Jing Zhao |
| [HDFS-5100](https://issues.apache.org/jira/browse/HDFS-5100) | TestNamenodeRetryCache fails on Windows due to incorrect cleanup |  Minor | test | Chuan Liu | Chuan Liu |
| [HDFS-5099](https://issues.apache.org/jira/browse/HDFS-5099) | Namenode#copyEditLogSegmentsToSharedDir should close EditLogInputStreams upon finishing |  Major | namenode | Chuan Liu | Chuan Liu |
| [HDFS-5091](https://issues.apache.org/jira/browse/HDFS-5091) | Support for spnego keytab separate from the JournalNode keytab for secure HA |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-5080](https://issues.apache.org/jira/browse/HDFS-5080) | BootstrapStandby not working with QJM when the existing NN is active |  Major | ha, qjm | Jing Zhao | Jing Zhao |
| [HDFS-5077](https://issues.apache.org/jira/browse/HDFS-5077) | NPE in FSNamesystem.commitBlockSynchronization() |  Major | namenode | Konstantin Shvachko | Plamen Jeliazkov |
| [HDFS-5055](https://issues.apache.org/jira/browse/HDFS-5055) | nn fails to download checkpointed image from snn in some setups |  Blocker | namenode | Allen Wittenauer | Vinayakumar B |
| [HDFS-5047](https://issues.apache.org/jira/browse/HDFS-5047) | Supress logging of full stack trace of quota and lease exceptions |  Major | namenode | Kihwal Lee | Robert Parker |
| [HDFS-5043](https://issues.apache.org/jira/browse/HDFS-5043) | For HdfsFileStatus, set default value of childrenNum to -1 instead of 0 to avoid confusing applications |  Major | . | Brandon Li | Brandon Li |
| [HDFS-5028](https://issues.apache.org/jira/browse/HDFS-5028) | LeaseRenewer throw java.util.ConcurrentModificationException when timeout |  Major | . | zhaoyunjiong | zhaoyunjiong |
| [HDFS-4993](https://issues.apache.org/jira/browse/HDFS-4993) | fsck can fail if a file is renamed or deleted |  Major | . | Kihwal Lee | Robert Parker |
| [HDFS-4898](https://issues.apache.org/jira/browse/HDFS-4898) | BlockPlacementPolicyWithNodeGroup.chooseRemoteRack() fails to properly fallback to local rack |  Minor | namenode | Eric Sirianni | Tsz Wo Nicholas Sze |
| [HDFS-4680](https://issues.apache.org/jira/browse/HDFS-4680) | Audit logging of delegation tokens for MR tracing |  Major | namenode, security | Andrew Wang | Andrew Wang |
| [HDFS-4632](https://issues.apache.org/jira/browse/HDFS-4632) | globStatus using backslash for escaping does not work on Windows |  Major | test | Chris Nauroth | Chuan Liu |
| [HDFS-4594](https://issues.apache.org/jira/browse/HDFS-4594) | WebHDFS open sets Content-Length header to what is specified by length parameter rather than how much data is actually returned. |  Minor | webhdfs | Arpit Gupta | Chris Nauroth |
| [HDFS-2994](https://issues.apache.org/jira/browse/HDFS-2994) | If lease soft limit is recovered successfully the append can fail |  Major | . | Todd Lipcon | Tao Luo |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5249](https://issues.apache.org/jira/browse/HDFS-5249) | Fix dumper thread which may die silently |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5234](https://issues.apache.org/jira/browse/HDFS-5234) | Move RpcFrameDecoder out of the public API |  Minor | nfs | Haohui Mai | Haohui Mai |
| [HDFS-5212](https://issues.apache.org/jira/browse/HDFS-5212) | Refactor RpcMessage and NFS3Response to support different types of authentication information |  Major | nfs | Jing Zhao | Jing Zhao |
| [HDFS-5199](https://issues.apache.org/jira/browse/HDFS-5199) | Add more debug trace for NFS READ and WRITE |  Trivial | nfs | Brandon Li | Brandon Li |
| [HDFS-5136](https://issues.apache.org/jira/browse/HDFS-5136) | MNT EXPORT should give the full group list which can mount the exports |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5110](https://issues.apache.org/jira/browse/HDFS-5110) | Change FSDataOutputStream to HdfsDataOutputStream for opened streams to fix type cast error |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5107](https://issues.apache.org/jira/browse/HDFS-5107) | Fix array copy error in Readdir and Readdirplus responses |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5104](https://issues.apache.org/jira/browse/HDFS-5104) | Support dotdot name in NFS LOOKUP operation |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5085](https://issues.apache.org/jira/browse/HDFS-5085) | Refactor o.a.h.nfs to support different types of authentications |  Major | nfs | Brandon Li | Jing Zhao |
| [HDFS-5078](https://issues.apache.org/jira/browse/HDFS-5078) | Support file append in NFSv3 gateway to enable data streaming to HDFS |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5071](https://issues.apache.org/jira/browse/HDFS-5071) | Change hdfs-nfs parent project to hadoop-project |  Major | nfs | Kihwal Lee | Brandon Li |
| [HDFS-5069](https://issues.apache.org/jira/browse/HDFS-5069) | Include hadoop-nfs and hadoop-hdfs-nfs into hadoop dist for NFS deployment |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-5067](https://issues.apache.org/jira/browse/HDFS-5067) | Support symlink operations |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-4971](https://issues.apache.org/jira/browse/HDFS-4971) | Move IO operations out of locking in OpenFileCtx |  Major | nfs | Jing Zhao | Jing Zhao |
| [HDFS-4962](https://issues.apache.org/jira/browse/HDFS-4962) | Use enum for nfs constants |  Minor | nfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4947](https://issues.apache.org/jira/browse/HDFS-4947) | Add NFS server export table to control export by hostname or IP range |  Major | nfs | Brandon Li | Jing Zhao |
| [HDFS-4763](https://issues.apache.org/jira/browse/HDFS-4763) | Add script changes/utility for starting NFS gateway |  Major | nfs | Brandon Li | Brandon Li |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


