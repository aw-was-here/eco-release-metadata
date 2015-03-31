# Hadoop Changelog

## Release 2.1.0-beta - 2013-08-22

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5083](https://issues.apache.org/jira/browse/HDFS-5083) | Update the HDFS compatibility version range |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-4866](https://issues.apache.org/jira/browse/HDFS-4866) | Protocol buffer support cannot compile under C |  Blocker | namenode | Ralph Castain | Arpit Agarwal |
| [HDFS-4659](https://issues.apache.org/jira/browse/HDFS-4659) | Support setting execution bit for regular files |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-4434](https://issues.apache.org/jira/browse/HDFS-4434) | Provide a mapping from INodeId to INode |  Major | namenode | Brandon Li | Suresh Srinivas |
| [HDFS-4305](https://issues.apache.org/jira/browse/HDFS-4305) | Add a configurable limit on number of blocks per file, and min block size |  Minor | namenode | Todd Lipcon | Andrew Wang |
| [HDFS-2802](https://issues.apache.org/jira/browse/HDFS-2802) | Support for RW/RO snapshots in HDFS |  Major | namenode | Hari Mankude | Tsz Wo Nicholas Sze |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4249](https://issues.apache.org/jira/browse/HDFS-4249) | Add status NameNode startup to webUI |  Major | namenode | Suresh Srinivas | Chris Nauroth |
| [HDFS-4124](https://issues.apache.org/jira/browse/HDFS-4124) | Refactor INodeDirectory#getExistingPathINodes() to enable returning more than INode array |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-3601](https://issues.apache.org/jira/browse/HDFS-3601) | Implementation of ReplicaPlacementPolicyNodeGroup to support 4-layer network topology |  Major | namenode | Junping Du | Junping Du |
| [HDFS-3495](https://issues.apache.org/jira/browse/HDFS-3495) | Update Balancer to support new NetworkTopology with NodeGroup |  Major | balancer & mover | Junping Du | Junping Du |
| [HDFS-3278](https://issues.apache.org/jira/browse/HDFS-3278) | Umbrella Jira for HDFS-HA Phase 2 |  Major | . | Sanjay Radia | Todd Lipcon |
| [HDFS-2576](https://issues.apache.org/jira/browse/HDFS-2576) | Namenode should have a favored nodes hint to enable clients to have control over block placement. |  Major | hdfs-client, namenode | Pritam Damania | Devaraj Das |
| [HDFS-1804](https://issues.apache.org/jira/browse/HDFS-1804) | Add a new block-volume device choosing policy that looks at free space |  Minor | datanode | Harsh J | Aaron T. Myers |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5027](https://issues.apache.org/jira/browse/HDFS-5027) | On startup, DN should scan volumes in parallel |  Major | datanode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-5020](https://issues.apache.org/jira/browse/HDFS-5020) | Make DatanodeProtocol#blockReceivedAndDeleted idempotent |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-5010](https://issues.apache.org/jira/browse/HDFS-5010) | Reduce the frequency of getCurrentUser() calls from namenode |  Major | namenode, performance | Kihwal Lee | Kihwal Lee |
| [HDFS-5008](https://issues.apache.org/jira/browse/HDFS-5008) | Make ClientProtocol#abandonBlock() idempotent |  Major | namenode | Suresh Srinivas | Jing Zhao |
| [HDFS-5007](https://issues.apache.org/jira/browse/HDFS-5007) | Replace hard-coded property keys with DFSConfigKeys fields |  Minor | . | Kousuke Saruta | Kousuke Saruta |
| [HDFS-4996](https://issues.apache.org/jira/browse/HDFS-4996) | ClientProtocol#metaSave can be made idempotent by overwriting the output file instead of appending to it |  Minor | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-4992](https://issues.apache.org/jira/browse/HDFS-4992) | Make balancer's thread count configurable |  Major | balancer & mover | Max Lapan | Max Lapan |
| [HDFS-4978](https://issues.apache.org/jira/browse/HDFS-4978) | Make disallowSnapshot idempotent |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-4932](https://issues.apache.org/jira/browse/HDFS-4932) | Avoid a wide line on the name node webUI if we have more Journal nodes |  Minor | ha, namenode | Fengdong Yu | Fengdong Yu |
| [HDFS-4914](https://issues.apache.org/jira/browse/HDFS-4914) | When possible, Use DFSClient.Conf instead of Configuration |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4912](https://issues.apache.org/jira/browse/HDFS-4912) | Cleanup FSNamesystem#startFileInternal |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4903](https://issues.apache.org/jira/browse/HDFS-4903) | Print trash configuration and trash emptier state in namenode log |  Minor | namenode | Suresh Srinivas | Arpit Agarwal |
| [HDFS-4848](https://issues.apache.org/jira/browse/HDFS-4848) | copyFromLocal and renaming a file to ".snapshot" should output that ".snapshot" is a reserved name |  Minor | snapshots | Stephen Chu | Jing Zhao |
| [HDFS-4804](https://issues.apache.org/jira/browse/HDFS-4804) | WARN when users set the block balanced preference percent below 0.5 or above 1.0 |  Minor | . | Stephen Chu | Stephen Chu |
| [HDFS-4787](https://issues.apache.org/jira/browse/HDFS-4787) | Create a new HdfsConfiguration before each TestDFSClientRetries testcases |  Major | . | Tian Hong Wang | Tian Hong Wang |
| [HDFS-4772](https://issues.apache.org/jira/browse/HDFS-4772) | Add number of children in HdfsFileStatus |  Minor | namenode | Brandon Li | Brandon Li |
| [HDFS-4721](https://issues.apache.org/jira/browse/HDFS-4721) | Speed up lease/block recovery when DN fails and a block goes into recovery |  Major | namenode | Varun Sharma | Varun Sharma |
| [HDFS-4698](https://issues.apache.org/jira/browse/HDFS-4698) | provide client-side metrics for remote reads, local reads, and short-circuit reads |  Minor | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4679](https://issues.apache.org/jira/browse/HDFS-4679) | Namenode operation checks should be done in a consistent manner |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4645](https://issues.apache.org/jira/browse/HDFS-4645) | Move from randomly generated block ID to sequentially generated block ID |  Major | namenode | Suresh Srinivas | Arpit Agarwal |
| [HDFS-4635](https://issues.apache.org/jira/browse/HDFS-4635) | Move BlockManager#computeCapacity to LightWeightGSet |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4569](https://issues.apache.org/jira/browse/HDFS-4569) | Small image transfer related cleanups. |  Trivial | . | Andrew Wang | Andrew Wang |
| [HDFS-4565](https://issues.apache.org/jira/browse/HDFS-4565) | use DFSUtil.getSpnegoKeytabKey() to get the spnego keytab key in secondary namenode and namenode http server |  Minor | security | Arpit Gupta | Arpit Gupta |
| [HDFS-4521](https://issues.apache.org/jira/browse/HDFS-4521) | invalid network topologies should not be cached |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4465](https://issues.apache.org/jira/browse/HDFS-4465) | Optimize datanode ReplicasMap and ReplicaInfo |  Major | datanode | Suresh Srinivas | Aaron T. Myers |
| [HDFS-4461](https://issues.apache.org/jira/browse/HDFS-4461) | DirectoryScanner: volume path prefix takes up memory for every block that is scanned |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4304](https://issues.apache.org/jira/browse/HDFS-4304) | Make FSEditLogOp.MAX\_OP\_SIZE configurable |  Major | namenode | Todd Lipcon | Colin Patrick McCabe |
| [HDFS-4246](https://issues.apache.org/jira/browse/HDFS-4246) | The exclude node list should be more forgiving, for each output stream |  Minor | hdfs-client | Harsh J | Harsh J |
| [HDFS-4234](https://issues.apache.org/jira/browse/HDFS-4234) | Use the generic code for choosing datanode in Balancer |  Minor | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4215](https://issues.apache.org/jira/browse/HDFS-4215) | Improvements on INode and image loading |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4206](https://issues.apache.org/jira/browse/HDFS-4206) | Change the fields in INode and its subclasses to private |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4152](https://issues.apache.org/jira/browse/HDFS-4152) | Add a new class for the parameter in INode.collectSubtreeBlocksAndClear(..) |  Minor | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-4151](https://issues.apache.org/jira/browse/HDFS-4151) | Passing INodesInPath instead of INode[] in FSDirectory |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4053](https://issues.apache.org/jira/browse/HDFS-4053) | Increase the default block size |  Major | . | Eli Collins | Eli Collins |
| [HDFS-3940](https://issues.apache.org/jira/browse/HDFS-3940) | Add Gset#clear method and clear the block map when namenode is shutdown |  Minor | . | Eli Collins | Suresh Srinivas |
| [HDFS-3880](https://issues.apache.org/jira/browse/HDFS-3880) | Use Builder to get RPC server in HDFS |  Minor | datanode, ha, namenode, security | Brandon Li | Brandon Li |
| [HDFS-3817](https://issues.apache.org/jira/browse/HDFS-3817) | avoid printing stack information for SafeModeException |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-3498](https://issues.apache.org/jira/browse/HDFS-3498) | Make Replica Removal Policy pluggable and ReplicaPlacementPolicyDefault extensible for reusing code in subclass |  Major | namenode | Junping Du | Junping Du |
| [HDFS-3163](https://issues.apache.org/jira/browse/HDFS-3163) | TestHDFSCLI.testAll fails if the user name is not all lowercase |  Trivial | test | Brandon Li | Brandon Li |
| [HDFS-2857](https://issues.apache.org/jira/browse/HDFS-2857) | Cleanup BlockInfo class |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2572](https://issues.apache.org/jira/browse/HDFS-2572) | Unnecessary double-check in DN#getHostName |  Trivial | datanode | Harsh J | Harsh J |
| [HDFS-2042](https://issues.apache.org/jira/browse/HDFS-2042) | Require c99 when building libhdfs |  Minor | libhdfs | Eli Collins |  |
| [HDFS-347](https://issues.apache.org/jira/browse/HDFS-347) | DFS read performance suboptimal when client co-located on nodes with data |  Major | datanode, hdfs-client, performance | George Porter | Colin Patrick McCabe |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5024](https://issues.apache.org/jira/browse/HDFS-5024) | Make DatanodeProtocol#commitBlockSynchronization idempotent |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-5018](https://issues.apache.org/jira/browse/HDFS-5018) | Misspelled DFSConfigKeys#DFS\_NAMENODE\_STALE\_DATANODE\_INTERVAL\_DEFAULT in javadoc of DatanodeInfo#isStale() |  Minor | . | Ted Yu | Ted Yu |
| [HDFS-5016](https://issues.apache.org/jira/browse/HDFS-5016) | Deadlock in pipeline recovery causes Datanode to be marked dead |  Blocker | . | Devaraj Das | Suresh Srinivas |
| [HDFS-5005](https://issues.apache.org/jira/browse/HDFS-5005) | Move SnapshotException and SnapshotAccessControlException to o.a.h.hdfs.protocol |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-5003](https://issues.apache.org/jira/browse/HDFS-5003) | TestNNThroughputBenchmark failed caused by existing directories |  Minor | test | Xi Fang | Xi Fang |
| [HDFS-4999](https://issues.apache.org/jira/browse/HDFS-4999) | fix TestShortCircuitLocalRead on branch-2 |  Major | . | Kihwal Lee | Colin Patrick McCabe |
| [HDFS-4998](https://issues.apache.org/jira/browse/HDFS-4998) | TestUnderReplicatedBlocks fails intermittently |  Major | test | Kihwal Lee | Kihwal Lee |
| [HDFS-4982](https://issues.apache.org/jira/browse/HDFS-4982) | JournalNode should relogin from keytab before fetching logs from other JNs |  Major | journal-node, security | Todd Lipcon | Todd Lipcon |
| [HDFS-4980](https://issues.apache.org/jira/browse/HDFS-4980) | Incorrect logging.properties file for hadoop-httpfs |  Major | build | Mark Grover | Mark Grover |
| [HDFS-4969](https://issues.apache.org/jira/browse/HDFS-4969) | WebhdfsFileSystem expects non-standard WEBHDFS Json element |  Blocker | test, webhdfs | Robert Kanter | Robert Kanter |
| [HDFS-4954](https://issues.apache.org/jira/browse/HDFS-4954) | compile failure in branch-2: getFlushedOffset should catch or rethrow IOException |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-4951](https://issues.apache.org/jira/browse/HDFS-4951) | FsShell commands using secure httpfs throw exceptions due to missing TokenRenewer |  Major | security | Robert Kanter | Robert Kanter |
| [HDFS-4948](https://issues.apache.org/jira/browse/HDFS-4948) | mvn site for hadoop-hdfs-nfs fails |  Major | . | Robert Joseph Evans | Brandon Li |
| [HDFS-4944](https://issues.apache.org/jira/browse/HDFS-4944) | WebHDFS cannot create a file path containing characters that must be URI-encoded, such as space. |  Major | webhdfs | Chris Nauroth | Chris Nauroth |
| [HDFS-4943](https://issues.apache.org/jira/browse/HDFS-4943) | WebHdfsFileSystem does not work when original file path has encoded chars |  Minor | webhdfs | Jerry He | Jerry He |
| [HDFS-4927](https://issues.apache.org/jira/browse/HDFS-4927) | CreateEditsLog creates inodes with an invalid inode ID, which then cannot be loaded by a namenode. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4917](https://issues.apache.org/jira/browse/HDFS-4917) | Start-dfs.sh cannot pass the parameters correctly |  Major | datanode, namenode | Fengdong Yu | Fengdong Yu |
| [HDFS-4910](https://issues.apache.org/jira/browse/HDFS-4910) | TestPermission failed in branch-2 |  Major | . | Chuan Liu | Chuan Liu |
| [HDFS-4906](https://issues.apache.org/jira/browse/HDFS-4906) | HDFS Output streams should not accept writes after being closed |  Major | hdfs-client | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4902](https://issues.apache.org/jira/browse/HDFS-4902) | DFSClient.getSnapshotDiffReport should use string path rather than o.a.h.fs.Path |  Major | snapshots | Binglin Chang | Binglin Chang |
| [HDFS-4888](https://issues.apache.org/jira/browse/HDFS-4888) | Refactor and fix FSNamesystem.getTurnOffTip to sanity |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-4887](https://issues.apache.org/jira/browse/HDFS-4887) | TestNNThroughputBenchmark exits abruptly |  Blocker | benchmarks, test | Kihwal Lee | Kihwal Lee |
| [HDFS-4883](https://issues.apache.org/jira/browse/HDFS-4883) | complete() should verify fileId |  Major | namenode | Konstantin Shvachko | Tao Luo |
| [HDFS-4880](https://issues.apache.org/jira/browse/HDFS-4880) | Diagnostic logging while loading name/edits files |  Major | namenode | Arpit Agarwal | Suresh Srinivas |
| [HDFS-4878](https://issues.apache.org/jira/browse/HDFS-4878) | On Remove Block, Block is not Removed from neededReplications queue |  Major | namenode | Tao Luo | Tao Luo |
| [HDFS-4877](https://issues.apache.org/jira/browse/HDFS-4877) | Snapshot: fix the scenario where a directory is renamed under its prior descendant |  Blocker | snapshots | Jing Zhao | Jing Zhao |
| [HDFS-4873](https://issues.apache.org/jira/browse/HDFS-4873) | callGetBlockLocations returns incorrect number of blocks for snapshotted files |  Major | snapshots | Hari Mankude | Jing Zhao |
| [HDFS-4867](https://issues.apache.org/jira/browse/HDFS-4867) | metaSave NPEs when there are invalid blocks in repl queue. |  Major | namenode | Kihwal Lee | Plamen Jeliazkov |
| [HDFS-4865](https://issues.apache.org/jira/browse/HDFS-4865) | Remove sub resource warning from httpfs log at startup time |  Major | . | Wei Yan | Wei Yan |
| [HDFS-4863](https://issues.apache.org/jira/browse/HDFS-4863) | The root directory should be added to the snapshottable directory list while loading fsimage |  Major | snapshots | Jing Zhao | Jing Zhao |
| [HDFS-4862](https://issues.apache.org/jira/browse/HDFS-4862) | SafeModeInfo.isManual() returns true when resources are low even if it wasn't entered into manually |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-4857](https://issues.apache.org/jira/browse/HDFS-4857) | Snapshot.Root and AbstractINodeDiff#snapshotINode should not be put into INodeMap when loading FSImage |  Major | snapshots | Jing Zhao | Jing Zhao |
| [HDFS-4850](https://issues.apache.org/jira/browse/HDFS-4850) | fix OfflineImageViewer to work on fsimages with empty files or snapshots |  Major | tools | Stephen Chu | Jing Zhao |
| [HDFS-4846](https://issues.apache.org/jira/browse/HDFS-4846) | Clean up snapshot CLI commands output stacktrace for invalid arguments |  Minor | snapshots | Stephen Chu | Jing Zhao |
| [HDFS-4845](https://issues.apache.org/jira/browse/HDFS-4845) | FSEditLogLoader gets NPE while accessing INodeMap in TestEditLogRace |  Critical | namenode | Kihwal Lee | Arpit Agarwal |
| [HDFS-4841](https://issues.apache.org/jira/browse/HDFS-4841) | FsShell commands using secure webhfds fail ClientFinalizer shutdown hook |  Major | security, webhdfs | Stephen Chu | Robert Kanter |
| [HDFS-4840](https://issues.apache.org/jira/browse/HDFS-4840) | ReplicationMonitor gets NPE during shutdown |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4832](https://issues.apache.org/jira/browse/HDFS-4832) | Namenode doesn't change the number of missing blocks in safemode when DNs rejoin or leave |  Critical | . | Ravi Prakash | Ravi Prakash |
| [HDFS-4830](https://issues.apache.org/jira/browse/HDFS-4830) | Typo in config settings for AvailableSpaceVolumeChoosingPolicy in hdfs-default.xml |  Minor | . | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4827](https://issues.apache.org/jira/browse/HDFS-4827) | Slight update to the implementation of API for handling favored nodes in DFSClient |  Major | . | Devaraj Das | Devaraj Das |
| [HDFS-4826](https://issues.apache.org/jira/browse/HDFS-4826) | TestNestedSnapshots times out due to repeated slow edit log flushes when running on virtualized disk |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4825](https://issues.apache.org/jira/browse/HDFS-4825) | webhdfs / httpfs tests broken because of min block size change |  Major | webhdfs | Andrew Wang | Andrew Wang |
| [HDFS-4824](https://issues.apache.org/jira/browse/HDFS-4824) | FileInputStreamCache.close leaves dangling reference to FileInputStreamCache.cacheCleaner |  Major | hdfs-client | Henry Robinson | Colin Patrick McCabe |
| [HDFS-4818](https://issues.apache.org/jira/browse/HDFS-4818) | several HDFS tests that attempt to make directories unusable do not work correctly on Windows |  Minor | namenode, test | Chris Nauroth | Chris Nauroth |
| [HDFS-4815](https://issues.apache.org/jira/browse/HDFS-4815) | TestRBWBlockInvalidation#testBlockInvalidationWhenRBWReplicaMissedInDN: Double call countReplicas() to fetch corruptReplicas and liveReplicas is not needed |  Major | datanode, test | Tian Hong Wang | Tian Hong Wang |
| [HDFS-4813](https://issues.apache.org/jira/browse/HDFS-4813) | BlocksMap may throw NullPointerException during shutdown |  Minor | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-4810](https://issues.apache.org/jira/browse/HDFS-4810) | several HDFS HA tests have timeouts that are too short |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4807](https://issues.apache.org/jira/browse/HDFS-4807) | DFSOutputStream.createSocketForPipeline() should not include timeout extension on connect |  Major | . | Kihwal Lee | Cristina L. Abad |
| [HDFS-4805](https://issues.apache.org/jira/browse/HDFS-4805) | Webhdfs client is fragile to token renewal errors |  Critical | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4799](https://issues.apache.org/jira/browse/HDFS-4799) | Corrupt replica can be prematurely removed from corruptReplicas map |  Blocker | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-4797](https://issues.apache.org/jira/browse/HDFS-4797) | BlockScanInfo does not override equals(..) and hashCode() consistently |  Minor | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4783](https://issues.apache.org/jira/browse/HDFS-4783) | TestDelegationTokensWithHA#testHAUtilClonesDelegationTokens fails on Windows |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4780](https://issues.apache.org/jira/browse/HDFS-4780) | Use the correct relogin method for services |  Minor | namenode | Kihwal Lee | Robert Parker |
| [HDFS-4778](https://issues.apache.org/jira/browse/HDFS-4778) | Invoke getPipeline in the chooseTarget implementation that has favoredNodes |  Major | namenode | Devaraj Das | Devaraj Das |
| [HDFS-4768](https://issues.apache.org/jira/browse/HDFS-4768) | File handle leak in datanode when a block pool is removed |  Major | datanode | Chris Nauroth | Chris Nauroth |
| [HDFS-4765](https://issues.apache.org/jira/browse/HDFS-4765) | Permission check of symlink deletion incorrectly throws UnresolvedLinkException |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-4751](https://issues.apache.org/jira/browse/HDFS-4751) | TestLeaseRenewer#testThreadName flakes |  Minor | test | Andrew Wang | Andrew Wang |
| [HDFS-4748](https://issues.apache.org/jira/browse/HDFS-4748) | MiniJournalCluster#restartJournalNode leaks resources, which causes sporadic test failures |  Major | qjm, test | Chris Nauroth | Chris Nauroth |
| [HDFS-4745](https://issues.apache.org/jira/browse/HDFS-4745) | TestDataTransferKeepalive#testSlowReader has race condition that causes sporadic failure |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4743](https://issues.apache.org/jira/browse/HDFS-4743) | TestNNStorageRetentionManager fails on Windows |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4741](https://issues.apache.org/jira/browse/HDFS-4741) | TestStorageRestore#testStorageRestoreFailure fails on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4740](https://issues.apache.org/jira/browse/HDFS-4740) | Fixes for a few test failures on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4739](https://issues.apache.org/jira/browse/HDFS-4739) | NN can miscalculate the number of extra edit log segments to retain |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4737](https://issues.apache.org/jira/browse/HDFS-4737) | JVM path embedded in fuse binaries |  Major | . | Sean Mackrory | Sean Mackrory |
| [HDFS-4734](https://issues.apache.org/jira/browse/HDFS-4734) | HDFS Tests that use ShellCommandFencer are broken on Windows |  Major | . | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4733](https://issues.apache.org/jira/browse/HDFS-4733) | Make HttpFS username pattern configurable |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-4732](https://issues.apache.org/jira/browse/HDFS-4732) | TestDFSUpgradeFromImage fails on Windows due to failure to unpack old image tarball that contains hard links |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4725](https://issues.apache.org/jira/browse/HDFS-4725) | fix HDFS file handle leaks |  Major | namenode, test, tools | Chris Nauroth | Chris Nauroth |
| [HDFS-4722](https://issues.apache.org/jira/browse/HDFS-4722) | TestGetConf#testFederation times out on Windows |  Major | test | Ivan Mitic | Ivan Mitic |
| [HDFS-4714](https://issues.apache.org/jira/browse/HDFS-4714) | Log short messages in Namenode RPC server for exceptions meant for clients |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4705](https://issues.apache.org/jira/browse/HDFS-4705) | Address HDFS test failures on Windows because of invalid dfs.namenode.name.dir |  Minor | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4699](https://issues.apache.org/jira/browse/HDFS-4699) | TestPipelinesFailover#testPipelineRecoveryStress fails sporadically |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4695](https://issues.apache.org/jira/browse/HDFS-4695) | TestEditLog leaks open file handles between tests |  Major | test | Ivan Mitic | Ivan Mitic |
| [HDFS-4693](https://issues.apache.org/jira/browse/HDFS-4693) | Some test cases in TestCheckpoint do not clean up after themselves |  Minor | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4687](https://issues.apache.org/jira/browse/HDFS-4687) | TestDelegationTokenForProxyUser#testWebHdfsDoAs is flaky with JDK7 |  Minor | test | Andrew Wang | Andrew Wang |
| [HDFS-4677](https://issues.apache.org/jira/browse/HDFS-4677) | Editlog should support synchronous writes |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4676](https://issues.apache.org/jira/browse/HDFS-4676) | TestHDFSFileSystemContract should set MiniDFSCluster variable to null to free up memory |  Minor | test | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4674](https://issues.apache.org/jira/browse/HDFS-4674) | TestBPOfferService fails on Windows due to failure parsing datanode data directory as URI |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4669](https://issues.apache.org/jira/browse/HDFS-4669) | TestBlockPoolManager fails using IBM java |  Major | test | Tian Hong Wang | Tian Hong Wang |
| [HDFS-4658](https://issues.apache.org/jira/browse/HDFS-4658) | Standby NN will log that it has received a block report "after becoming active" |  Trivial | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4655](https://issues.apache.org/jira/browse/HDFS-4655) | DNA\_FINALIZE is logged as being an unknown command by the DN when received from the standby NN |  Minor | datanode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4643](https://issues.apache.org/jira/browse/HDFS-4643) | Fix flakiness in TestQuorumJournalManager |  Trivial | qjm, test | Todd Lipcon | Todd Lipcon |
| [HDFS-4639](https://issues.apache.org/jira/browse/HDFS-4639) | startFileInternal() should not increment generation stamp |  Major | namenode | Konstantin Shvachko | Plamen Jeliazkov |
| [HDFS-4625](https://issues.apache.org/jira/browse/HDFS-4625) | Make TestNNWithQJM#testNewNamenodeTakesOverWriter work on Windows |  Minor | test | Arpit Agarwal | Ivan Mitic |
| [HDFS-4621](https://issues.apache.org/jira/browse/HDFS-4621) | additional logging to help diagnose slow QJM logSync |  Minor | ha, qjm | Todd Lipcon | Todd Lipcon |
| [HDFS-4620](https://issues.apache.org/jira/browse/HDFS-4620) | Documentation for dfs.namenode.rpc-address specifies wrong format |  Major | documentation | Sandy Ryza | Sandy Ryza |
| [HDFS-4618](https://issues.apache.org/jira/browse/HDFS-4618) | default for checkpoint txn interval is too low |  Major | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-4615](https://issues.apache.org/jira/browse/HDFS-4615) | Fix TestDFSShell failures on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4614](https://issues.apache.org/jira/browse/HDFS-4614) | FSNamesystem#getContentSummary should use getPermissionChecker helper method |  Trivial | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4610](https://issues.apache.org/jira/browse/HDFS-4610) | Move to using common utils FileUtil#setReadable/Writable/Executable and FileUtil#canRead/Write/Execute |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4609](https://issues.apache.org/jira/browse/HDFS-4609) | TestAuditLogs should release log handles between tests |  Minor | test | Ivan Mitic | Ivan Mitic |
| [HDFS-4607](https://issues.apache.org/jira/browse/HDFS-4607) | TestGetConf#testGetSpecificKey fails on Windows |  Minor | test | Ivan Mitic | Ivan Mitic |
| [HDFS-4604](https://issues.apache.org/jira/browse/HDFS-4604) | TestJournalNode fails on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4603](https://issues.apache.org/jira/browse/HDFS-4603) | TestMiniDFSCluster fails on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4598](https://issues.apache.org/jira/browse/HDFS-4598) | WebHDFS concat: the default value of sources in the code does not match the doc |  Minor | webhdfs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4596](https://issues.apache.org/jira/browse/HDFS-4596) | Shutting down namenode during checkpointing can lead to md5sum error |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-4595](https://issues.apache.org/jira/browse/HDFS-4595) | When short circuit read is fails, DFSClient does not fallback to regular reads |  Major | hdfs-client | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4593](https://issues.apache.org/jira/browse/HDFS-4593) | TestSaveNamespace fails on Windows |  Major | . | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4592](https://issues.apache.org/jira/browse/HDFS-4592) | Default values for access time precision are out of sync between hdfs-default.xml and the code |  Minor | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4591](https://issues.apache.org/jira/browse/HDFS-4591) | HA clients can fail to fail over while Standby NN is performing long checkpoint |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4586](https://issues.apache.org/jira/browse/HDFS-4586) | TestDataDirs.testGetDataDirsFromURIs fails with all directories in dfs.datanode.data.dir are invalid |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4584](https://issues.apache.org/jira/browse/HDFS-4584) | Fix TestNNWithQJM failures on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4583](https://issues.apache.org/jira/browse/HDFS-4583) | TestNodeCount fails |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4582](https://issues.apache.org/jira/browse/HDFS-4582) | TestHostsFiles fails on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HDFS-4573](https://issues.apache.org/jira/browse/HDFS-4573) | Fix TestINodeFile on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4572](https://issues.apache.org/jira/browse/HDFS-4572) | Fix TestJournal failures on Windows |  Major | namenode, test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4544](https://issues.apache.org/jira/browse/HDFS-4544) | Error in deleting blocks should not do check disk, for all types of errors |  Major | . | Amareshwari Sriramadasu | Arpit Agarwal |
| [HDFS-4541](https://issues.apache.org/jira/browse/HDFS-4541) | set hadoop.log.dir and hadoop.id.str when starting secure datanode so it writes the logs to the correct dir by default |  Major | datanode, security | Arpit Gupta | Arpit Gupta |
| [HDFS-4540](https://issues.apache.org/jira/browse/HDFS-4540) | namenode http server should use the web authentication keytab for spnego principal |  Major | security | Arpit Gupta | Arpit Gupta |
| [HDFS-4533](https://issues.apache.org/jira/browse/HDFS-4533) | start-dfs.sh ignored additional parameters besides -upgrade |  Major | datanode, namenode | Fengdong Yu | Fengdong Yu |
| [HDFS-4532](https://issues.apache.org/jira/browse/HDFS-4532) | RPC call queue may fill due to current user lookup |  Critical | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-4522](https://issues.apache.org/jira/browse/HDFS-4522) | LightWeightGSet expects incrementing a volatile to be atomic |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4519](https://issues.apache.org/jira/browse/HDFS-4519) | Support override of jsvc binary and log file locations when launching secure datanode. |  Major | datanode, scripts | Chris Nauroth | Chris Nauroth |
| [HDFS-4518](https://issues.apache.org/jira/browse/HDFS-4518) | Finer grained metrics for HDFS capacity |  Major | . | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4495](https://issues.apache.org/jira/browse/HDFS-4495) | Allow client-side lease renewal to be retried beyond soft-limit |  Major | hdfs-client | Kihwal Lee | Kihwal Lee |
| [HDFS-4489](https://issues.apache.org/jira/browse/HDFS-4489) | Use InodeID as as an identifier of a file in HDFS protocols and APIs |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-4484](https://issues.apache.org/jira/browse/HDFS-4484) | libwebhdfs compilation broken with gcc 4.6.2 |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4477](https://issues.apache.org/jira/browse/HDFS-4477) | Secondary namenode may retain old tokens |  Critical | security | Kihwal Lee | Daryn Sharp |
| [HDFS-4471](https://issues.apache.org/jira/browse/HDFS-4471) | Namenode WebUI file browsing does not work with wildcard addresses configured |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-4470](https://issues.apache.org/jira/browse/HDFS-4470) | several HDFS tests attempt file operations on invalid HDFS paths when running on Windows |  Major | . | Chris Nauroth | Chris Nauroth |
| [HDFS-4382](https://issues.apache.org/jira/browse/HDFS-4382) | Fix typo MAX\_NOT\_CHANGED\_INTERATIONS |  Major | . | Ted Yu | Ted Yu |
| [HDFS-4342](https://issues.apache.org/jira/browse/HDFS-4342) | Edits dir in dfs.namenode.edits.dir.required will be silently ignored if it is not in dfs.namenode.edits.dir |  Major | namenode | Mark Yang | Arpit Agarwal |
| [HDFS-4300](https://issues.apache.org/jira/browse/HDFS-4300) | TransferFsImage.downloadEditsToStorage should use a tmp file for destination |  Critical | . | Todd Lipcon | Andrew Wang |
| [HDFS-4298](https://issues.apache.org/jira/browse/HDFS-4298) | StorageRetentionManager spews warnings when used with QJM |  Major | namenode | Todd Lipcon | Aaron T. Myers |
| [HDFS-4296](https://issues.apache.org/jira/browse/HDFS-4296) | Add layout version for HDFS-4256 for release 1.2.0 |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4287](https://issues.apache.org/jira/browse/HDFS-4287) | HTTPFS tests fail on Windows |  Major | webhdfs | Chris Nauroth | Chris Nauroth |
| [HDFS-4269](https://issues.apache.org/jira/browse/HDFS-4269) | DatanodeManager#registerDatanode rejects all datanode registrations from localhost in single-node developer setup |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-4261](https://issues.apache.org/jira/browse/HDFS-4261) | TestBalancerWithNodeGroup times out |  Major | balancer & mover | Tsz Wo Nicholas Sze | Junping Du |
| [HDFS-4243](https://issues.apache.org/jira/browse/HDFS-4243) | INodeDirectory.replaceChild(..) does not update parent |  Major | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-4240](https://issues.apache.org/jira/browse/HDFS-4240) | In nodegroup-aware case, make sure nodes are avoided to place replica if some replica are already under the same nodegroup |  Major | namenode | Junping Du | Junping Du |
| [HDFS-4235](https://issues.apache.org/jira/browse/HDFS-4235) | when outputting XML, OfflineEditsViewer can't handle some edits containing non-ASCII strings |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4222](https://issues.apache.org/jira/browse/HDFS-4222) | NN is unresponsive and loses heartbeats of DNs when Hadoop is configured to use LDAP and LDAP has issues |  Minor | namenode | Xiaobo Peng | Xiaobo Peng |
| [HDFS-4209](https://issues.apache.org/jira/browse/HDFS-4209) | Clean up the addNode/addChild/addChildNoQuotaCheck methods in FSDirectory |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4205](https://issues.apache.org/jira/browse/HDFS-4205) | fsck fails with symlinks |  Major | hdfs-client | Andy Isaacson | Jason Lowe |
| [HDFS-4128](https://issues.apache.org/jira/browse/HDFS-4128) | 2NN gets stuck in inconsistent state if edit log replay fails in the middle |  Major | namenode | Todd Lipcon | Kihwal Lee |
| [HDFS-4013](https://issues.apache.org/jira/browse/HDFS-4013) | TestHftpURLTimeouts throws NPE |  Trivial | hdfs-client | Chao Shi | Chao Shi |
| [HDFS-3934](https://issues.apache.org/jira/browse/HDFS-3934) | duplicative dfs\_hosts entries handled wrong |  Minor | . | Andy Isaacson | Colin Patrick McCabe |
| [HDFS-3875](https://issues.apache.org/jira/browse/HDFS-3875) | Issue handling checksum errors in write pipeline |  Critical | datanode, hdfs-client | Todd Lipcon | Kihwal Lee |
| [HDFS-3792](https://issues.apache.org/jira/browse/HDFS-3792) | Fix two findbugs introduced by HDFS-3695 |  Trivial | build, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3499](https://issues.apache.org/jira/browse/HDFS-3499) | Make NetworkTopology support user specified topology class |  Major | datanode | Junping Du | Junping Du |
| [HDFS-3277](https://issues.apache.org/jira/browse/HDFS-3277) | fail over to loading a different FSImage if the first one we try to load is corrupt |  Major | . | Colin Patrick McCabe | Andrew Wang |
| [HDFS-3180](https://issues.apache.org/jira/browse/HDFS-3180) | Add socket timeouts to webhdfs |  Major | webhdfs | Daryn Sharp | Chris Nauroth |
| [HDFS-3009](https://issues.apache.org/jira/browse/HDFS-3009) | DFSClient islocaladdress() can use similar routine in netutils |  Trivial | hdfs-client | Hari Mankude | Hari Mankude |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-4129](https://issues.apache.org/jira/browse/HDFS-4129) | Add utility methods to dump NameNode in memory tree for testing |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5025](https://issues.apache.org/jira/browse/HDFS-5025) | Record ClientId and CallId in EditLog to enable rebuilding retry cache in case of HA failover |  Major | ha, namenode | Jing Zhao | Jing Zhao |
| [HDFS-4979](https://issues.apache.org/jira/browse/HDFS-4979) | Implement retry cache on the namenode |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4974](https://issues.apache.org/jira/browse/HDFS-4974) | Analyze and add annotations to Namenode protocol methods and enable retry |  Major | ha, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4908](https://issues.apache.org/jira/browse/HDFS-4908) | Reduce snapshot inode memory usage |  Major | namenode, snapshots | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4876](https://issues.apache.org/jira/browse/HDFS-4876) | The javadoc of FileWithSnapshot is incorrect |  Minor | snapshots | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4875](https://issues.apache.org/jira/browse/HDFS-4875) | Add a test for testing snapshot file length |  Minor | snapshots, test | Tsz Wo Nicholas Sze | Arpit Agarwal |
| [HDFS-4842](https://issues.apache.org/jira/browse/HDFS-4842) | Snapshot: identify the correct prior snapshot when deleting a snapshot under a renamed subtree |  Major | snapshots | Jing Zhao | Jing Zhao |
| [HDFS-4819](https://issues.apache.org/jira/browse/HDFS-4819) | Update Snapshot doc for HDFS-4758 |  Minor | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4785](https://issues.apache.org/jira/browse/HDFS-4785) | Concat operation does not remove concatenated files from InodeMap |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-4784](https://issues.apache.org/jira/browse/HDFS-4784) | NPE in FSDirectory.resolvePath() |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-4762](https://issues.apache.org/jira/browse/HDFS-4762) | Provide HDFS based NFSv3 and Mountd implementation |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-4661](https://issues.apache.org/jira/browse/HDFS-4661) | fix various bugs in short circuit read |  Major | datanode, hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4602](https://issues.apache.org/jira/browse/HDFS-4602) | TestBookKeeperHACheckpoints fails |  Major | . | Suresh Srinivas | Uma Maheswara Rao G |
| [HDFS-4542](https://issues.apache.org/jira/browse/HDFS-4542) | Webhdfs doesn't support secure proxy users |  Blocker | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-4525](https://issues.apache.org/jira/browse/HDFS-4525) | Provide an API for knowing that whether file is closed or not. |  Major | namenode | Uma Maheswara Rao G | SreeHari |
| [HDFS-4502](https://issues.apache.org/jira/browse/HDFS-4502) | WebHdfsFileSystem handling of fileld breaks compatibility |  Blocker | webhdfs | Alejandro Abdelnur | Brandon Li |
| [HDFS-4485](https://issues.apache.org/jira/browse/HDFS-4485) | HDFS-347: DN should chmod socket path a+w |  Critical | datanode | Todd Lipcon | Colin Patrick McCabe |
| [HDFS-4374](https://issues.apache.org/jira/browse/HDFS-4374) | Display NameNode startup progress in UI |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-4373](https://issues.apache.org/jira/browse/HDFS-4373) | Add HTTP API for querying NameNode startup progress |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-4372](https://issues.apache.org/jira/browse/HDFS-4372) | Track NameNode startup progress |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-4346](https://issues.apache.org/jira/browse/HDFS-4346) | Refactor INodeId and GenerationStamp |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4340](https://issues.apache.org/jira/browse/HDFS-4340) | Update addBlock() to inculde inode id as additional argument |  Major | hdfs-client, namenode | Brandon Li | Brandon Li |
| [HDFS-4339](https://issues.apache.org/jira/browse/HDFS-4339) | Persist inode id in fsimage and editlog |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-4334](https://issues.apache.org/jira/browse/HDFS-4334) | Add a unique id to each INode |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-3769](https://issues.apache.org/jira/browse/HDFS-3769) | standby namenode become active fails because starting log segment fail on shared storage |  Critical | ha | liaowenrui |  |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


