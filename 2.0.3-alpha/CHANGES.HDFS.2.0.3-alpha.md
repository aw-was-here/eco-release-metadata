# Hadoop Changelog

## Release 2.0.3-alpha - 2013-02-14

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4451](https://issues.apache.org/jira/browse/HDFS-4451) | hdfs balancer command returns exit code 1 on success instead of 0 |  Major | balancer & mover | Joshua Blatt |  |
| [HDFS-4369](https://issues.apache.org/jira/browse/HDFS-4369) | GetBlockKeysResponseProto does not handle null response |  Blocker | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4367](https://issues.apache.org/jira/browse/HDFS-4367) | GetDataEncryptionKeyResponseProto  does not handle null response |  Blocker | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4364](https://issues.apache.org/jira/browse/HDFS-4364) | GetLinkTargetResponseProto does not handle null path |  Blocker | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4362](https://issues.apache.org/jira/browse/HDFS-4362) | GetDelegationTokenResponseProto does not handle null token |  Critical | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4350](https://issues.apache.org/jira/browse/HDFS-4350) | Make enabling of stale marking on read and write paths independent |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-4122](https://issues.apache.org/jira/browse/HDFS-4122) | Cleanup HDFS logs and reduce the size of logged messages |  Major | datanode, hdfs-client, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4080](https://issues.apache.org/jira/browse/HDFS-4080) | Add a separate logger for block state change logs to enable turning off those logs |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-1331](https://issues.apache.org/jira/browse/HDFS-1331) | dfs -test should work like /bin/test |  Minor | tools | Allen Wittenauer | Andy Isaacson |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4456](https://issues.apache.org/jira/browse/HDFS-4456) | Add concat to HttpFS and WebHDFS REST API docs |  Major | webhdfs | Tsz Wo Nicholas Sze | Plamen Jeliazkov |
| [HDFS-4213](https://issues.apache.org/jira/browse/HDFS-4213) | When the client calls hsync, allows the client to update the file length in the NameNode |  Major | hdfs-client, namenode | Jing Zhao | Jing Zhao |
| [HDFS-3598](https://issues.apache.org/jira/browse/HDFS-3598) | WebHDFS: support file concat |  Major | webhdfs | Tsz Wo Nicholas Sze | Plamen Jeliazkov |
| [HDFS-3077](https://issues.apache.org/jira/browse/HDFS-3077) | Quorum-based protocol for reading and writing edit logs |  Major | ha, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3049](https://issues.apache.org/jira/browse/HDFS-3049) | During the normal loading NN startup process, fall back on a different EditLog if we see one that is corrupt |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-1245](https://issues.apache.org/jira/browse/HDFS-1245) | Plugable block id generation |  Major | namenode | Dmytro Molkov | Konstantin Shvachko |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4393](https://issues.apache.org/jira/browse/HDFS-4393) | Empty request and responses in protocol translators can be static final members |  Minor | . | Brandon Li | Brandon Li |
| [HDFS-4392](https://issues.apache.org/jira/browse/HDFS-4392) | Use NetUtils#getFreeSocketPort in MiniDFSCluster |  Trivial | test | Andrew Purtell | Andrew Purtell |
| [HDFS-4381](https://issues.apache.org/jira/browse/HDFS-4381) |  Document fsimage format details in FSImageFormat class javadoc |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4375](https://issues.apache.org/jira/browse/HDFS-4375) | Use token request messages defined in hadoop common |  Major | namenode, security | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4259](https://issues.apache.org/jira/browse/HDFS-4259) | Improve pipeline DN replacement failure message |  Minor | hdfs-client | Harsh J | Harsh J |
| [HDFS-4231](https://issues.apache.org/jira/browse/HDFS-4231) | Introduce HAState for BackupNode |  Major | ha, namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-4214](https://issues.apache.org/jira/browse/HDFS-4214) | OfflineEditsViewer should print out the offset at which it encountered an error |  Trivial | tools | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4155](https://issues.apache.org/jira/browse/HDFS-4155) | libhdfs implementation of hsync API |  Major | libhdfs | Liang Xie | Liang Xie |
| [HDFS-4153](https://issues.apache.org/jira/browse/HDFS-4153) | Add START\_MSG/SHUTDOWN\_MSG for JournalNode |  Major | journal-node | Liang Xie | Liang Xie |
| [HDFS-4143](https://issues.apache.org/jira/browse/HDFS-4143) | Change INodeFile.blocks to private |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4121](https://issues.apache.org/jira/browse/HDFS-4121) | Add namespace declarations in hdfs .proto files for languages other than java |  Minor | . | Binglin Chang | Binglin Chang |
| [HDFS-4110](https://issues.apache.org/jira/browse/HDFS-4110) | Refine JNStorage log |  Trivial | journal-node | Liang Xie | Liang Xie |
| [HDFS-4088](https://issues.apache.org/jira/browse/HDFS-4088) | Remove "throws QuotaExceededException" from an INodeDirectoryWithQuota constructor |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4074](https://issues.apache.org/jira/browse/HDFS-4074) | Remove empty constructors for INode |  Trivial | namenode | Brandon Li | Brandon Li |
| [HDFS-4073](https://issues.apache.org/jira/browse/HDFS-4073) | Two minor improvements to FSDirectory |  Minor | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-4068](https://issues.apache.org/jira/browse/HDFS-4068) | DatanodeID and DatanodeInfo member should be private |  Minor | datanode | Eli Collins | Eli Collins |
| [HDFS-4058](https://issues.apache.org/jira/browse/HDFS-4058) | DirectoryScanner may fail with IOOB if the directory scanning threads return out of volume order |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-4048](https://issues.apache.org/jira/browse/HDFS-4048) | Use ERROR instead of INFO for volume failure logs |  Major | . | Stephen Chu | Stephen Chu |
| [HDFS-4041](https://issues.apache.org/jira/browse/HDFS-4041) | Hadoop HDFS Maven protoc calls must not depend on external sh script |  Major | build | Chris Nauroth | Chris Nauroth |
| [HDFS-4037](https://issues.apache.org/jira/browse/HDFS-4037) | Rename the getReplication() method in BlockCollection to getBlockReplication() |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4014](https://issues.apache.org/jira/browse/HDFS-4014) | Fix warnings found by findbugs2 |  Major | . | Eli Collins | Eli Collins |
| [HDFS-4008](https://issues.apache.org/jira/browse/HDFS-4008) | TestBalancerWithEncryptedTransfer needs a timeout |  Minor | test | Eli Collins | Eli Collins |
| [HDFS-4000](https://issues.apache.org/jira/browse/HDFS-4000) | TestParallelLocalRead fails with "input ByteBuffers must be direct buffers" |  Major | . | Eli Collins | Colin Patrick McCabe |
| [HDFS-3957](https://issues.apache.org/jira/browse/HDFS-3957) | Change MutableQuantiles to use a shared thread for rolling over metrics |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-3939](https://issues.apache.org/jira/browse/HDFS-3939) | NN RPC address cleanup |  Minor | namenode | Eli Collins | Eli Collins |
| [HDFS-3925](https://issues.apache.org/jira/browse/HDFS-3925) | Prettify PipelineAck#toString() for printing to a log |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-3910](https://issues.apache.org/jira/browse/HDFS-3910) | DFSTestUtil#waitReplication should timeout |  Minor | test | Eli Collins | Eli Collins |
| [HDFS-3896](https://issues.apache.org/jira/browse/HDFS-3896) | Add descriptions for dfs.namenode.rpc-address and dfs.namenode.servicerpc-address to hdfs-default.xml |  Minor | . | Jeff Lord | Jeff Lord |
| [HDFS-3813](https://issues.apache.org/jira/browse/HDFS-3813) | Log error message if security and WebHDFS are enabled but principal/keytab are not configured |  Major | security, webhdfs | Stephen Chu | Stephen Chu |
| [HDFS-3703](https://issues.apache.org/jira/browse/HDFS-3703) | Decrease the datanode failure detection time |  Major | datanode, namenode | Nicolas Liochon | Jing Zhao |
| [HDFS-3682](https://issues.apache.org/jira/browse/HDFS-3682) | MiniDFSCluster#init should provide more info when it fails |  Minor | test | Eli Collins | Todd Lipcon |
| [HDFS-3680](https://issues.apache.org/jira/browse/HDFS-3680) | Allow customized audit logging in HDFS FSNamesystem |  Minor | namenode | Marcelo Vanzin | Marcelo Vanzin |
| [HDFS-3483](https://issues.apache.org/jira/browse/HDFS-3483) | Better error message when hdfs fsck is run against a ViewFS config |  Major | . | Stephen Chu | Stephen Fritz |
| [HDFS-2946](https://issues.apache.org/jira/browse/HDFS-2946) | HA: Put a cap on the number of completed edits files retained by the NN |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2656](https://issues.apache.org/jira/browse/HDFS-2656) | Implement a pure c client based on webhdfs |  Major | webhdfs | Zhanwei Wang | Jing Zhao |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4468](https://issues.apache.org/jira/browse/HDFS-4468) | Fix TestHDFSCLI and TestQuota for HADOOP-9252 |  Minor | . | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4462](https://issues.apache.org/jira/browse/HDFS-4462) | 2NN will fail to checkpoint after an HDFS upgrade from a pre-federation version of HDFS |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4458](https://issues.apache.org/jira/browse/HDFS-4458) | start balancer failed with "Failed to create file [/system/balancer.id]"  if configure IP on fs.defaultFS |  Major | balancer & mover | Wenwu Peng | Binglin Chang |
| [HDFS-4452](https://issues.apache.org/jira/browse/HDFS-4452) | getAdditionalBlock() can create multiple blocks if the client times out and retries. |  Critical | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-4444](https://issues.apache.org/jira/browse/HDFS-4444) | Add space between total transaction time and number of transactions in FSEditLog#printStatistics |  Trivial | . | Stephen Chu | Stephen Chu |
| [HDFS-4443](https://issues.apache.org/jira/browse/HDFS-4443) | Remove trailing '`' character from HDFS nodelist jsp |  Trivial | namenode | Christian Rohling | Christian Rohling |
| [HDFS-4428](https://issues.apache.org/jira/browse/HDFS-4428) | FsDatasetImpl should disclose what the error is when a rename fails |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4426](https://issues.apache.org/jira/browse/HDFS-4426) | Secondary namenode shuts down immediately after startup |  Blocker | namenode | Jason Lowe | Arpit Agarwal |
| [HDFS-4415](https://issues.apache.org/jira/browse/HDFS-4415) | HostnameFilter should handle hostname resolution failures and continue processing |  Major | . | Robert Kanter | Robert Kanter |
| [HDFS-4404](https://issues.apache.org/jira/browse/HDFS-4404) | Create file failure when the machine of first attempted NameNode is down |  Critical | ha, hdfs-client | liaowenrui | Todd Lipcon |
| [HDFS-4403](https://issues.apache.org/jira/browse/HDFS-4403) | DFSClient can infer checksum type when not provided by reading first byte |  Minor | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-4385](https://issues.apache.org/jira/browse/HDFS-4385) | Maven RAT plugin is not checking all source files |  Critical | build | Thomas Graves | Thomas Graves |
| [HDFS-4384](https://issues.apache.org/jira/browse/HDFS-4384) | test\_libhdfs\_threaded gets SEGV if JNIEnv cannot be initialized |  Minor | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4377](https://issues.apache.org/jira/browse/HDFS-4377) | Some trivial DN comment cleanup |  Trivial | . | Eli Collins | Eli Collins |
| [HDFS-4363](https://issues.apache.org/jira/browse/HDFS-4363) | Combine PBHelper and HdfsProtoUtil and remove redundant methods |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4359](https://issues.apache.org/jira/browse/HDFS-4359) | remove an unnecessary synchronized keyword in BPOfferService.java |  Major | datanode | Liang Xie | Liang Xie |
| [HDFS-4351](https://issues.apache.org/jira/browse/HDFS-4351) | Fix BlockPlacementPolicyDefault#chooseTarget when avoiding stale nodes |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-4347](https://issues.apache.org/jira/browse/HDFS-4347) | TestBackupNode can go into infinite loop "Waiting checkpoint to complete." |  Major | namenode, test | Konstantin Shvachko | Plamen Jeliazkov |
| [HDFS-4344](https://issues.apache.org/jira/browse/HDFS-4344) | dfshealth.jsp throws NumberFormatException when dfs.hosts/dfs.hosts.exclude includes port number |  Major | namenode | tamtam180 | Andy Isaacson |
| [HDFS-4315](https://issues.apache.org/jira/browse/HDFS-4315) | DNs with multiple BPs can have BPOfferServices fail to start due to unsynchronized map access |  Major | datanode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4308](https://issues.apache.org/jira/browse/HDFS-4308) | addBlock() should persist file blocks once |  Major | namenode | Konstantin Shvachko | Plamen Jeliazkov |
| [HDFS-4307](https://issues.apache.org/jira/browse/HDFS-4307) | SocketCache should use monotonic time |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4306](https://issues.apache.org/jira/browse/HDFS-4306) | PBHelper.convertLocatedBlock miss convert BlockToken |  Major | . | Binglin Chang | Binglin Chang |
| [HDFS-4302](https://issues.apache.org/jira/browse/HDFS-4302) | Precondition in EditLogFileInputStream's length() method is checked too early in NameNode startup, causing fatal exception |  Major | ha, namenode | Eugene Koontz | Eugene Koontz |
| [HDFS-4295](https://issues.apache.org/jira/browse/HDFS-4295) | Using port 1023 should be valid when starting Secure DataNode |  Major | security | Stephen Chu | Stephen Chu |
| [HDFS-4294](https://issues.apache.org/jira/browse/HDFS-4294) | Backwards compatibility is not maintained for TestVolumeId |  Major | . | Robert Parker | Robert Parker |
| [HDFS-4292](https://issues.apache.org/jira/browse/HDFS-4292) | Sanity check not correct in RemoteBlockReader2.newBlockReader |  Minor | . | Binglin Chang | Binglin Chang |
| [HDFS-4291](https://issues.apache.org/jira/browse/HDFS-4291) | edit log unit tests leave stray test\_edit\_log\_file around |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4288](https://issues.apache.org/jira/browse/HDFS-4288) | NN accepts incremental BR as IBR in safemode |  Critical | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-4282](https://issues.apache.org/jira/browse/HDFS-4282) | TestEditLog.testFuzzSequences FAILED in all pre-commit test |  Major | namenode, test | Junping Du | Todd Lipcon |
| [HDFS-4279](https://issues.apache.org/jira/browse/HDFS-4279) | NameNode does not initialize generic conf keys when started with -recover |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4274](https://issues.apache.org/jira/browse/HDFS-4274) | BlockPoolSliceScanner does not close verification log during shutdown |  Minor | datanode | Chris Nauroth | Chris Nauroth |
| [HDFS-4270](https://issues.apache.org/jira/browse/HDFS-4270) | Replications of the highest priority should be allowed to choose a source datanode that has reached its max replication limit |  Minor | namenode | Derek Dagit | Derek Dagit |
| [HDFS-4268](https://issues.apache.org/jira/browse/HDFS-4268) | Remove redundant enum NNHAStatusHeartbeat.State |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-4242](https://issues.apache.org/jira/browse/HDFS-4242) | Map.Entry is incorrectly used in LeaseManager |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4238](https://issues.apache.org/jira/browse/HDFS-4238) | [HA] Standby namenode should not do purging of shared storage edits. |  Major | ha | Vinayakumar B | Todd Lipcon |
| [HDFS-4236](https://issues.apache.org/jira/browse/HDFS-4236) | Regression: HDFS-4171 puts artificial limit on username length |  Blocker | . | Allen Wittenauer | Alejandro Abdelnur |
| [HDFS-4232](https://issues.apache.org/jira/browse/HDFS-4232) | NN fails to write a fsimage with stale leases |  Blocker | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-4216](https://issues.apache.org/jira/browse/HDFS-4216) | Adding symlink should not ignore QuotaExceededException |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4186](https://issues.apache.org/jira/browse/HDFS-4186) | logSync() is called with the write lock held while releasing lease |  Critical | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4182](https://issues.apache.org/jira/browse/HDFS-4182) | SecondaryNameNode leaks NameCache entries |  Critical | namenode | Todd Lipcon | Robert Joseph Evans |
| [HDFS-4181](https://issues.apache.org/jira/browse/HDFS-4181) | LeaseManager tries to double remove and prints extra messages |  Critical | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4179](https://issues.apache.org/jira/browse/HDFS-4179) | BackupNode: allow reads, fix checkpointing, safeMode |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-4178](https://issues.apache.org/jira/browse/HDFS-4178) | shell scripts should not close stderr |  Major | scripts | Andy Isaacson | Andy Isaacson |
| [HDFS-4172](https://issues.apache.org/jira/browse/HDFS-4172) | namenode does not URI-encode parameters when building URI for datanode request |  Minor | namenode | Derek Dagit | Derek Dagit |
| [HDFS-4171](https://issues.apache.org/jira/browse/HDFS-4171) | WebHDFS and HttpFs should accept only valid Unix user names |  Major | . | Harsh J | Alejandro Abdelnur |
| [HDFS-4164](https://issues.apache.org/jira/browse/HDFS-4164) | fuse\_dfs: add -lrt to the compiler command line on Linux |  Minor | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4162](https://issues.apache.org/jira/browse/HDFS-4162) | Some malformed and unquoted HTML strings are returned from datanode web ui |  Minor | datanode | Derek Dagit | Derek Dagit |
| [HDFS-4156](https://issues.apache.org/jira/browse/HDFS-4156) | Seeking to a negative position should throw an IOE |  Major | . | Eli Collins | Eli Reisman |
| [HDFS-4140](https://issues.apache.org/jira/browse/HDFS-4140) | fuse-dfs handles open(O\_TRUNC) poorly |  Major | fuse-dfs | Andy Isaacson | Colin Patrick McCabe |
| [HDFS-4139](https://issues.apache.org/jira/browse/HDFS-4139) | fuse-dfs RO mode still allows file truncation |  Major | fuse-dfs | Andy Isaacson | Colin Patrick McCabe |
| [HDFS-4132](https://issues.apache.org/jira/browse/HDFS-4132) | when libwebhdfs is not enabled, nativeMiniDfsClient frees uninitialized memory |  Major | libhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4127](https://issues.apache.org/jira/browse/HDFS-4127) | Log message is not correct in case of short of replica |  Minor | namenode | Junping Du | Junping Du |
| [HDFS-4112](https://issues.apache.org/jira/browse/HDFS-4112) | A few improvements on INodeDirectory |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4107](https://issues.apache.org/jira/browse/HDFS-4107) | Add utility methods to cast INode to INodeFile and INodeFileUnderConstruction |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4106](https://issues.apache.org/jira/browse/HDFS-4106) | BPServiceActor#lastHeartbeat, lastBlockReport and lastDeletedReport should be declared as volatile |  Minor | namenode, test | Jing Zhao | Jing Zhao |
| [HDFS-4105](https://issues.apache.org/jira/browse/HDFS-4105) | the SPNEGO user for secondary namenode should use the web keytab |  Major | . | Arpit Gupta | Arpit Gupta |
| [HDFS-4104](https://issues.apache.org/jira/browse/HDFS-4104) | dfs -test -d prints inappropriate error on nonexistent directory |  Minor | . | Andy Isaacson | Andy Isaacson |
| [HDFS-4099](https://issues.apache.org/jira/browse/HDFS-4099) | Clean up replication code and add more javadoc |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4090](https://issues.apache.org/jira/browse/HDFS-4090) | getFileChecksum() result incompatible when called against zero-byte files. |  Critical | hdfs-client | Kihwal Lee | Kihwal Lee |
| [HDFS-4075](https://issues.apache.org/jira/browse/HDFS-4075) | Reduce recommissioning overhead |  Critical | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4072](https://issues.apache.org/jira/browse/HDFS-4072) | On file deletion remove corresponding blocks pending replication |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4061](https://issues.apache.org/jira/browse/HDFS-4061) | TestBalancer and TestUnderReplicatedBlocks need timeouts |  Major | . | Eli Collins | Eli Collins |
| [HDFS-4055](https://issues.apache.org/jira/browse/HDFS-4055) | TestAuditLogs is flaky |  Major | . | Binglin Chang | Binglin Chang |
| [HDFS-4049](https://issues.apache.org/jira/browse/HDFS-4049) | hflush performance regression due to nagling delays |  Critical | datanode, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-4046](https://issues.apache.org/jira/browse/HDFS-4046) | ChecksumTypeProto use NULL as enum value which is illegal in C/C++ |  Minor | datanode, namenode | Binglin Chang | Binglin Chang |
| [HDFS-4044](https://issues.apache.org/jira/browse/HDFS-4044) | Duplicate ChecksumType definition in HDFS .proto files |  Major | datanode | Binglin Chang | Binglin Chang |
| [HDFS-4036](https://issues.apache.org/jira/browse/HDFS-4036) | FSDirectory.unprotectedAddFile(..) should not throw UnresolvedLinkException |  Major | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-4022](https://issues.apache.org/jira/browse/HDFS-4022) | Replication not happening for appended block |  Blocker | . | suja s | Vinayakumar B |
| [HDFS-4021](https://issues.apache.org/jira/browse/HDFS-4021) | Misleading error message when resources are low on the NameNode |  Minor | namenode | Colin Patrick McCabe | Christopher Conner |
| [HDFS-4020](https://issues.apache.org/jira/browse/HDFS-4020) | TestRBWBlockInvalidation may time out |  Major | . | Eli Collins | Eli Collins |
| [HDFS-4018](https://issues.apache.org/jira/browse/HDFS-4018) | TestDataNodeMultipleRegistrations#testMiniDFSClusterWithMultipleNN is missing some cluster cleanup |  Minor | . | Eli Collins | Eli Collins |
| [HDFS-4006](https://issues.apache.org/jira/browse/HDFS-4006) | TestCheckpoint#testSecondaryHasVeryOutOfDateImage occasionally fails due to unexpected exit |  Major | namenode | Eli Collins | Todd Lipcon |
| [HDFS-3999](https://issues.apache.org/jira/browse/HDFS-3999) | HttpFS OPEN operation expects len parameter, it should be length |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3997](https://issues.apache.org/jira/browse/HDFS-3997) | OfflineImageViewer incorrectly passes value of imageVersion when visiting IS\_COMPRESSED element |  Trivial | namenode | Mithun Radhakrishnan | Mithun Radhakrishnan |
| [HDFS-3996](https://issues.apache.org/jira/browse/HDFS-3996) | Add debug log removed in HDFS-3873 back |  Minor | . | Eli Collins | Eli Collins |
| [HDFS-3992](https://issues.apache.org/jira/browse/HDFS-3992) | Method org.apache.hadoop.hdfs.TestHftpFileSystem.tearDown() sometimes throws NPEs |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HDFS-3990](https://issues.apache.org/jira/browse/HDFS-3990) | NN's health report has severe performance problems |  Critical | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-3985](https://issues.apache.org/jira/browse/HDFS-3985) | Add timeouts to TestMulitipleNNDataBlockScanner |  Major | test | Eli Collins |  |
| [HDFS-3979](https://issues.apache.org/jira/browse/HDFS-3979) | Fix hsync semantics |  Major | datanode | Lars Hofhansl | Lars Hofhansl |
| [HDFS-3970](https://issues.apache.org/jira/browse/HDFS-3970) | BlockPoolSliceStorage#doRollback(..) should use BlockPoolSliceStorage instead of DataStorage to read prev version file. |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-3964](https://issues.apache.org/jira/browse/HDFS-3964) | Make NN log of fs.defaultFS debug rather than info |  Minor | namenode | Eli Collins | Eli Collins |
| [HDFS-3951](https://issues.apache.org/jira/browse/HDFS-3951) | datanode web ui does not work over HTTPS when datanode is started in secure mode |  Major | datanode, security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3949](https://issues.apache.org/jira/browse/HDFS-3949) | NameNodeRpcServer#join should join on both client and server RPC servers |  Minor | namenode | Eli Collins | Eli Collins |
| [HDFS-3948](https://issues.apache.org/jira/browse/HDFS-3948) | TestWebHDFS#testNamenodeRestart occasionally fails |  Minor | test | Eli Collins | Jing Zhao |
| [HDFS-3938](https://issues.apache.org/jira/browse/HDFS-3938) | remove current limitations from HttpFS docs |  Major | documentation | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3936](https://issues.apache.org/jira/browse/HDFS-3936) | MiniDFSCluster shutdown races with BlocksMap usage |  Major | . | Eli Collins | Eli Collins |
| [HDFS-3932](https://issues.apache.org/jira/browse/HDFS-3932) | NameNode Web UI broken if the rpc-address is set to the wildcard |  Major | . | Eli Collins | Eli Collins |
| [HDFS-3931](https://issues.apache.org/jira/browse/HDFS-3931) | TestDatanodeBlockScanner#testBlockCorruptionPolicy2 is broken |  Minor | test | Eli Collins | Andy Isaacson |
| [HDFS-3924](https://issues.apache.org/jira/browse/HDFS-3924) | Multi-byte id in HdfsVolumeId |  Major | hdfs-client | Andrew Wang | Andrew Wang |
| [HDFS-3921](https://issues.apache.org/jira/browse/HDFS-3921) | NN will prematurely consider blocks missing when entering active state while still in safe mode |  Major | . | Stephen Chu | Aaron T. Myers |
| [HDFS-3919](https://issues.apache.org/jira/browse/HDFS-3919) | MiniDFSCluster:waitClusterUp can hang forever |  Minor | test | Andy Isaacson | Andy Isaacson |
| [HDFS-3916](https://issues.apache.org/jira/browse/HDFS-3916) | libwebhdfs (C client) code cleanups |  Major | webhdfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3831](https://issues.apache.org/jira/browse/HDFS-3831) | Failure to renew tokens due to test-sources left in classpath |  Critical | security | Jason Lowe | Jason Lowe |
| [HDFS-3829](https://issues.apache.org/jira/browse/HDFS-3829) | TestHftpURLTimeouts fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HDFS-3824](https://issues.apache.org/jira/browse/HDFS-3824) | TestHftpDelegationToken fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HDFS-3804](https://issues.apache.org/jira/browse/HDFS-3804) | TestHftpFileSystem fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HDFS-3753](https://issues.apache.org/jira/browse/HDFS-3753) | Tests don't run with native libraries |  Major | build, test | Eli Collins | Colin Patrick McCabe |
| [HDFS-3678](https://issues.apache.org/jira/browse/HDFS-3678) | Edit log files are never being purged from 2NN |  Critical | namenode | Todd Lipcon | Aaron T. Myers |
| [HDFS-3626](https://issues.apache.org/jira/browse/HDFS-3626) | Creating file with invalid path can corrupt edit log |  Blocker | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3625](https://issues.apache.org/jira/browse/HDFS-3625) | Fix TestBackupNode by properly initializing edit log |  Blocker | ha | Eli Collins | Junping Du |
| [HDFS-3616](https://issues.apache.org/jira/browse/HDFS-3616) | TestWebHdfsWithMultipleNameNodes fails with ConcurrentModificationException in DN shutdown |  Major | datanode | Uma Maheswara Rao G | Jing Zhao |
| [HDFS-3553](https://issues.apache.org/jira/browse/HDFS-3553) | Hftp proxy tokens are broken |  Blocker | . | Daryn Sharp | Daryn Sharp |
| [HDFS-3510](https://issues.apache.org/jira/browse/HDFS-3510) | Improve FSEditLog pre-allocation |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3507](https://issues.apache.org/jira/browse/HDFS-3507) | DFS#isInSafeMode needs to execute only on Active NameNode |  Critical | ha | Vinayakumar B | Vinayakumar B |
| [HDFS-3429](https://issues.apache.org/jira/browse/HDFS-3429) | DataNode reads checksums even if client does not need them |  Major | datanode, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-3373](https://issues.apache.org/jira/browse/HDFS-3373) | FileContext HDFS implementation can leak socket caches |  Major | hdfs-client | Todd Lipcon | John George |
| [HDFS-3224](https://issues.apache.org/jira/browse/HDFS-3224) | Bug in check for DN re-registration with different storage ID |  Minor | . | Eli Collins | Jason Lowe |
| [HDFS-2264](https://issues.apache.org/jira/browse/HDFS-2264) | NamenodeProtocol has the wrong value for clientPrincipal in KerberosInfo annotation |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-1322](https://issues.apache.org/jira/browse/HDFS-1322) | Document umask in DistributedFileSystem#mkdirs javadocs |  Major | . | Ravi Gummadi | Colin Patrick McCabe |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4349](https://issues.apache.org/jira/browse/HDFS-4349) | Test reading files from BackupNode |  Major | namenode, test | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-4199](https://issues.apache.org/jira/browse/HDFS-4199) | Provide test for HdfsVolumeId |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HDFS-4007](https://issues.apache.org/jira/browse/HDFS-4007) | Rehabilitate bit-rotted unit tests under hadoop-hdfs-project/hadoop-hdfs/src/test/unit/ |  Minor | test | Colin Patrick McCabe | Colin Patrick McCabe |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4445](https://issues.apache.org/jira/browse/HDFS-4445) | All BKJM ledgers are not checked while tailing, So failover will fail. |  Blocker | . | Vinayakumar B | Vinayakumar B |
| [HDFS-4248](https://issues.apache.org/jira/browse/HDFS-4248) | Renames may remove file leases |  Blocker | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-4247](https://issues.apache.org/jira/browse/HDFS-4247) | saveNamespace should be tolerant of dangling lease |  Blocker | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-4130](https://issues.apache.org/jira/browse/HDFS-4130) | BKJM: The reading for editlog at NN starting using bkjm  is not efficient |  Major | ha, performance | Han Xiao | Han Xiao |
| [HDFS-4100](https://issues.apache.org/jira/browse/HDFS-4100) | Fix all findbug security warings |  Major | datanode, journal-node, security | Liang Xie | Liang Xie |
| [HDFS-4059](https://issues.apache.org/jira/browse/HDFS-4059) | Add number of stale DataNodes to metrics |  Minor | datanode, namenode | Jing Zhao | Jing Zhao |
| [HDFS-4038](https://issues.apache.org/jira/browse/HDFS-4038) | Override toString() for BookKeeperEditLogInputStream |  Minor | ha | Vinayakumar B | Vinayakumar B |
| [HDFS-4035](https://issues.apache.org/jira/browse/HDFS-4035) | LightWeightGSet and LightWeightHashSet increment a volatile without synchronization |  Major | . | Eli Collins | Eli Collins |
| [HDFS-4034](https://issues.apache.org/jira/browse/HDFS-4034) | Remove redundant null checks |  Major | . | Eli Collins | Eli Collins |
| [HDFS-4033](https://issues.apache.org/jira/browse/HDFS-4033) | Miscellaneous findbugs 2 fixes |  Major | . | Eli Collins | Eli Collins |
| [HDFS-4032](https://issues.apache.org/jira/browse/HDFS-4032) | Specify the charset explicitly rather than rely on the default |  Major | . | Eli Collins | Eli Collins |
| [HDFS-4031](https://issues.apache.org/jira/browse/HDFS-4031) | Update findbugsExcludeFile.xml to include findbugs 2 exclusions |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-4030](https://issues.apache.org/jira/browse/HDFS-4030) | BlockManager excessBlocksCount and postponedMisreplicatedBlocksCount should be AtomicLongs |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-4029](https://issues.apache.org/jira/browse/HDFS-4029) | GenerationStamp should use an AtomicLong |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-3935](https://issues.apache.org/jira/browse/HDFS-3935) | QJM: Add JournalNode to the start / stop scripts |  Major | . | Eli Collins | Andy Isaacson |
| [HDFS-3923](https://issues.apache.org/jira/browse/HDFS-3923) | libwebhdfs testing code cleanup |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-3920](https://issues.apache.org/jira/browse/HDFS-3920) | libwebdhfs code cleanup: string processing and using strerror consistently to handle all errors |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-3912](https://issues.apache.org/jira/browse/HDFS-3912) | Detecting and avoiding stale datanodes for writing |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-3810](https://issues.apache.org/jira/browse/HDFS-3810) | Implement format() for BKJM |  Major | . | Ivan Kelly | Ivan Kelly |
| [HDFS-3809](https://issues.apache.org/jira/browse/HDFS-3809) | Make BKJM use protobufs for all serialization with ZK |  Major | namenode | Ivan Kelly | Ivan Kelly |
| [HDFS-3789](https://issues.apache.org/jira/browse/HDFS-3789) | JournalManager#format() should be able to throw IOException |  Major | ha, namenode | Ivan Kelly | Ivan Kelly |
| [HDFS-3695](https://issues.apache.org/jira/browse/HDFS-3695) | Genericize format() to non-file JournalManagers |  Major | ha, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3623](https://issues.apache.org/jira/browse/HDFS-3623) | BKJM: zkLatchWaitTimeout hard coded to 6000. Make use of ZKSessionTimeout instead. |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-3573](https://issues.apache.org/jira/browse/HDFS-3573) | Supply NamespaceInfo when instantiating JournalManagers |  Minor | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3571](https://issues.apache.org/jira/browse/HDFS-3571) | Allow EditLogFileInputStream to read from a remote URL |  Major | ha, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-2908](https://issues.apache.org/jira/browse/HDFS-2908) | Add apache license header for StorageReport.java |  Minor | . | Suresh Srinivas | Brandon Li |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4326](https://issues.apache.org/jira/browse/HDFS-4326) | bump up Tomcat version for HttpFS to 6.0.36 |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-3944](https://issues.apache.org/jira/browse/HDFS-3944) | Httpfs resolveAuthority() is not resolving host correctly |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |


