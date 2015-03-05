# Hadoop Changelog

## Release 3.0.0 - 2015-03-04

### INCOMPATIBLE CHANGES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HDFS-7302 | namenode -rollingUpgrade downgrade may finalize a rolling upgrade | Kai Sasaki |
| HDFS-6246 | Remove 'dfs.support.append' flag from trunk code | Uma Maheswara Rao G |
| HDFS-5570 | Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs | Haohui Mai |
| HDFS-5079 | Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos. | Tao Luo |
| HDFS-3034 | Remove the deprecated Syncable.sync() method | Tsz Wo Nicholas Sze |
| HDFS-2538 | option to disable fsck dots  | Mohammad Kamrul Islam |
### NEW FEATURES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
### IMPROVEMENTS:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HDFS-7546 | Document, and set an accepting default for dfs.namenode.kerberos.principal.pattern | Harsh J |
| HDFS-7460 | Rewrite httpfs to use new shell framework | John Smith |
| HDFS-7322 | deprecate sbin/hadoop-daemon.sh | Allen Wittenauer |
| HDFS-6228 | comments typo fix for FsDatasetImpl.java | zhaoyunjiong |
| HDFS-5041 | Add the time of last heartbeat to dead server Web UI | Ted Yu |
| HDFS-4665 | Move TestNetworkTopologyWithNodeGroup to Common | Junping Du |
| HDFS-3995 | Use DFSTestUtil.createFile() for file creation and writing in test cases | Jing Zhao |
| HDFS-3834 | Unused Command.java fields NAME, DESCRIPTION and USAGE | Jing Zhao |
| HDFS-3768 | Exception in TestJettyHelper is incorrect | Eli Reisman |
| HDFS-3478 | Test quotas with Long.Max_Value | Sujay Rau |
| HDFS-3476 | Correct the default used in TestDFSClientRetries.busyTest() after HDFS-3462 | Harsh J |
| HDFS-3358 | Specify explicitly that the NN UI status total is talking of persistent objects on heap. | Harsh J |
| HDFS-3293 | Implement equals for journainfo class.  | Hari Mankude |
| HDFS-2580 | NameNode#main(...) can make use of GenericOptionsParser. | Harsh J |
### BUG FIXES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HDFS-7803 | Wrong command mentioned in HDFSHighAvailabilityWithQJM documentation | Arshad Mohammad |
| HDFS-7791 | dfs count -v should be added to quota documentation | Akira AJISAKA |
| HDFS-7755 | httpfs shell code has hardcoded path to bash | Dmitry Sivachenko |
| HDFS-7711 | Fix various typos in ClusterSetup.md | Brahma Reddy Battula |
| HDFS-7670 | HDFS Quota guide has typos, incomplete command lines | Brahma Reddy Battula |
| HDFS-7669 | HDFS Design Doc references commands that no longer exist. | Brahma Reddy Battula |
| HDFS-7667 | Various typos and improvements to HDFS Federation doc | Charles Lamb |
| HDFS-7581 | HDFS documentation needs updating post-shell rewrite | Allen Wittenauer |
| HDFS-7407 | Minor typo in privileged pid/out/log names | Allen Wittenauer |
| HDFS-7320 | The appearance of hadoop-hdfs-httpfs site docs is inconsistent  | Masatake Iwasaki |
| HDFS-7319 | Remove dead link to HFTP documentation from index.xml | Masatake Iwasaki |
| HDFS-7204 | balancer doesn't run as a daemon | Allen Wittenauer |
| HDFS-6893 | crypto subcommand is not sorted properly in hdfs's hadoop_usage | David Luo |
| HDFS-5794 | Fix the inconsistency of layout version number of ADD_DATANODE_AND_STORAGE_UUIDS between trunk and branch-2 | Jing Zhao |
| HDFS-4904 | Remove JournalService | Arpit Agarwal |
| HDFS-4761 | Refresh INodeMap in FSDirectory#reset() | Jing Zhao |
| HDFS-4757 | Update FSDirectory#inodeMap when replacing an INodeDirectory while setting quota | Jing Zhao |
| HDFS-4681 | TestBlocksWithNotEnoughRacks#testCorruptBlockRereplicatedAcrossRacks fails using IBM java | Ayappan |
| HDFS-4391 | TestDataTransferKeepalive fails when tests are executed in a certain order. | Andrew Wang |
| HDFS-4366 | Block Replication Policy Implementation May Skip Higher-Priority Blocks for Lower-Priority Blocks | Derek Dagit |
| HDFS-4338 | TestNameNodeMetrics#testCorruptBlock is flaky | Andrew Wang |
| HDFS-4310 | fix test org.apache.hadoop.hdfs.server.datanode.TestStartSecureDataNode | Ivan A. Veselovsky |
| HDFS-4275 | MiniDFSCluster-based tests fail on Windows due to failure to delete test namenode directory | Chris Nauroth |
| HDFS-4115 | TestHDFSCLI.testAll fails one test due to number format | Trevor Robinson |
| HDFS-4067 | TestUnderReplicatedBlocks may fail due to ReplicaAlreadyExistsException | Jing Zhao |
| HDFS-4003 | test-patch should build the common native libs before running hdfs tests  | Colin Patrick McCabe |
| HDFS-3750 | API docs don't include HDFS | Jolly Chen |
| HDFS-3735 | NameNode WebUI should allow sorting live datanode list by fields Block Pool Used, Block Pool Used(%) and Failed Volumes.  | Brahma Reddy Battula |
| HDFS-3614 | Revert unused MiniDFSCluster constructor from HDFS-3049 | Arun C Murthy |
| HDFS-3462 | TestDFSClientRetries.busyTest() should restore default xceiver count in the config. | madhukara phatak |
| HDFS-3197 | Incorrect class comments in a few tests | Andy Isaacson |
| HDFS-3116 | Typo in fetchdt error message | AOE Takashi |
| HDFS-2434 | TestNameNodeMetrics.testCorruptBlock fails intermittently | Jing Zhao |
| HDFS-2313 | Rat excludes has a typo for excluding editsStored files | Aaron T. Myers |
| HDFS-2312 | FSNamesystem header comment says it's for the DN | Harsh J |
| HDFS-2310 | TestBackupNode fails since HADOOP-7524 went in. | Ivan Kelly |
| HDFS-2299 | TestOfflineEditsViewer is failing on trunk | Uma Maheswara Rao G |
| HDFS-46 | The namespace quota of root directory should not be Integer.MAX_VALUE | Uma Maheswara Rao G |
### OTHER:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HDFS-2127 | Add a test that ensure AccessControlExceptions contain a full path | Stephen Chu |
| HDFS-2776 | Missing interface annotation on JournalSet | Brandon Li |


