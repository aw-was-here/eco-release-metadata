# Hadoop Changelog

## Release 3.0.0 - 2015-03-08

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | namenode -rollingUpgrade downgrade may finalize a rolling upgrade |  Major | (namenode) | Tsz Wo Nicholas Sze | Kai Sasaki |
| [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | Remove 'dfs.support.append' flag from trunk code |  Minor |  | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs |  Major |  | Haohui Mai | Haohui Mai |
| [HDFS-5079](https://issues.apache.org/jira/browse/HDFS-5079) | Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos. |  Major | (datanode , namenode) | Konstantin Shvachko | Tao Luo |
| [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | Remove the deprecated Syncable.sync() method |  Major | (hdfs-client) | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | option to disable fsck dots  |  Minor |  | Allen Wittenauer | Mohammad Kamrul Islam |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7546](https://issues.apache.org/jira/browse/HDFS-7546) | Document, and set an accepting default for dfs.namenode.kerberos.principal.pattern |  Minor | (security) | Harsh J | Harsh J |
| [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | Rewrite httpfs to use new shell framework |  Major | (scripts) | Allen Wittenauer | John Smith |
| [HDFS-7322](https://issues.apache.org/jira/browse/HDFS-7322) | deprecate sbin/hadoop-daemon.sh |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HDFS-6228](https://issues.apache.org/jira/browse/HDFS-6228) | comments typo fix for FsDatasetImpl.java |  Trivial |  | zhaoyunjiong | zhaoyunjiong |
| [HDFS-5041](https://issues.apache.org/jira/browse/HDFS-5041) | Add the time of last heartbeat to dead server Web UI |  Minor |  | Ted Yu | Ted Yu |
| [HDFS-4665](https://issues.apache.org/jira/browse/HDFS-4665) | Move TestNetworkTopologyWithNodeGroup to Common |  Minor | (test) | Luke Lu | Junping Du |
| [HDFS-3995](https://issues.apache.org/jira/browse/HDFS-3995) | Use DFSTestUtil.createFile() for file creation and writing in test cases |  Minor |  | Jing Zhao | Jing Zhao |
| [HDFS-3834](https://issues.apache.org/jira/browse/HDFS-3834) | Unused Command.java fields NAME, DESCRIPTION and USAGE |  Minor |  | Jing Zhao | Jing Zhao |
| [HDFS-3768](https://issues.apache.org/jira/browse/HDFS-3768) | Exception in TestJettyHelper is incorrect |  Minor |  | Jakob Homan | Eli Reisman |
| [HDFS-3478](https://issues.apache.org/jira/browse/HDFS-3478) | Test quotas with Long.Max_Value |  Minor | (namenode) | Sujay Rau | Sujay Rau |
| [HDFS-3476](https://issues.apache.org/jira/browse/HDFS-3476) | Correct the default used in TestDFSClientRetries.busyTest() after HDFS-3462 |  Minor | (test) | Harsh J | Harsh J |
| [HDFS-3358](https://issues.apache.org/jira/browse/HDFS-3358) | Specify explicitly that the NN UI status total is talking of persistent objects on heap. |  Trivial | (namenode) | Harsh J | Harsh J |
| [HDFS-3293](https://issues.apache.org/jira/browse/HDFS-3293) | Implement equals for journainfo class.  |  Minor | (namenode) | Hari Mankude | Hari Mankude |
| [HDFS-2580](https://issues.apache.org/jira/browse/HDFS-2580) | NameNode#main(...) can make use of GenericOptionsParser. |  Minor | (namenode) | Harsh J | Harsh J |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7803](https://issues.apache.org/jira/browse/HDFS-7803) | Wrong command mentioned in HDFSHighAvailabilityWithQJM documentation |  Minor | (documentation) | Arshad Mohammad | Arshad Mohammad |
| [HDFS-7791](https://issues.apache.org/jira/browse/HDFS-7791) | dfs count -v should be added to quota documentation |  Major | (documentation) | Allen Wittenauer | Akira AJISAKA |
| [HDFS-7755](https://issues.apache.org/jira/browse/HDFS-7755) | httpfs shell code has hardcoded path to bash |  Major | (scripts) | Dmitry Sivachenko | Dmitry Sivachenko |
| [HDFS-7711](https://issues.apache.org/jira/browse/HDFS-7711) | Fix various typos in ClusterSetup.md |  Major | (documentation) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-7670](https://issues.apache.org/jira/browse/HDFS-7670) | HDFS Quota guide has typos, incomplete command lines |  Major | (documentation) | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7669](https://issues.apache.org/jira/browse/HDFS-7669) | HDFS Design Doc references commands that no longer exist. |  Major | (documentation) | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7667](https://issues.apache.org/jira/browse/HDFS-7667) | Various typos and improvements to HDFS Federation doc |  Minor | (documentation) | Charles Lamb | Charles Lamb |
| [HDFS-7581](https://issues.apache.org/jira/browse/HDFS-7581) | HDFS documentation needs updating post-shell rewrite |  Major | (documentation) | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7407](https://issues.apache.org/jira/browse/HDFS-7407) | Minor typo in privileged pid/out/log names |  Minor |  | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7320](https://issues.apache.org/jira/browse/HDFS-7320) | The appearance of hadoop-hdfs-httpfs site docs is inconsistent  |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7319](https://issues.apache.org/jira/browse/HDFS-7319) | Remove dead link to HFTP documentation from index.xml |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7204](https://issues.apache.org/jira/browse/HDFS-7204) | balancer doesn't run as a daemon |  Blocker | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HDFS-6893](https://issues.apache.org/jira/browse/HDFS-6893) | crypto subcommand is not sorted properly in hdfs's hadoop_usage |  Trivial | (scripts) | Allen Wittenauer | David Luo |
| [HDFS-5794](https://issues.apache.org/jira/browse/HDFS-5794) | Fix the inconsistency of layout version number of ADD_DATANODE_AND_STORAGE_UUIDS between trunk and branch-2 |  Minor | (namenode) | Jing Zhao | Jing Zhao |
| [HDFS-4904](https://issues.apache.org/jira/browse/HDFS-4904) | Remove JournalService |  Major | (namenode) | Suresh Srinivas | Arpit Agarwal |
| [HDFS-4761](https://issues.apache.org/jira/browse/HDFS-4761) | Refresh INodeMap in FSDirectory#reset() |  Minor | (namenode) | Jing Zhao | Jing Zhao |
| [HDFS-4757](https://issues.apache.org/jira/browse/HDFS-4757) | Update FSDirectory#inodeMap when replacing an INodeDirectory while setting quota |  Minor | (namenode) | Jing Zhao | Jing Zhao |
| [HDFS-4681](https://issues.apache.org/jira/browse/HDFS-4681) | TestBlocksWithNotEnoughRacks#testCorruptBlockRereplicatedAcrossRacks fails using IBM java |  Major | (test) | Tian Hong Wang | Ayappan |
| [HDFS-4391](https://issues.apache.org/jira/browse/HDFS-4391) | TestDataTransferKeepalive fails when tests are executed in a certain order. |  Major | (test) | Konstantin Shvachko | Andrew Wang |
| [HDFS-4366](https://issues.apache.org/jira/browse/HDFS-4366) | Block Replication Policy Implementation May Skip Higher-Priority Blocks for Lower-Priority Blocks |  Major |  | Derek Dagit | Derek Dagit |
| [HDFS-4338](https://issues.apache.org/jira/browse/HDFS-4338) | TestNameNodeMetrics#testCorruptBlock is flaky |  Major | (namenode) | Andrew Wang | Andrew Wang |
| [HDFS-4310](https://issues.apache.org/jira/browse/HDFS-4310) | fix test org.apache.hadoop.hdfs.server.datanode.TestStartSecureDataNode |  Major |  | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HDFS-4275](https://issues.apache.org/jira/browse/HDFS-4275) | MiniDFSCluster-based tests fail on Windows due to failure to delete test namenode directory |  Major | (test) | Chris Nauroth | Chris Nauroth |
| [HDFS-4115](https://issues.apache.org/jira/browse/HDFS-4115) | TestHDFSCLI.testAll fails one test due to number format |  Minor | (test) | Trevor Robinson | Trevor Robinson |
| [HDFS-4067](https://issues.apache.org/jira/browse/HDFS-4067) | TestUnderReplicatedBlocks may fail due to ReplicaAlreadyExistsException |  Major |  | Eli Collins | Jing Zhao |
| [HDFS-4003](https://issues.apache.org/jira/browse/HDFS-4003) | test-patch should build the common native libs before running hdfs tests  |  Major | (build) | Eli Collins | Colin Patrick McCabe |
| [HDFS-3750](https://issues.apache.org/jira/browse/HDFS-3750) | API docs don't include HDFS |  Critical | (documentation) | Eli Collins | Jolly Chen |
| [HDFS-3735](https://issues.apache.org/jira/browse/HDFS-3735) | NameNode WebUI should allow sorting live datanode list by fields Block Pool Used, Block Pool Used(%) and Failed Volumes.  |  Major | (namenode) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-3614](https://issues.apache.org/jira/browse/HDFS-3614) | Revert unused MiniDFSCluster constructor from HDFS-3049 |  Blocker |  | Arun C Murthy | Arun C Murthy |
| [HDFS-3462](https://issues.apache.org/jira/browse/HDFS-3462) | TestDFSClientRetries.busyTest() should restore default xceiver count in the config. |  Major | (test) | Konstantin Shvachko | madhukara phatak |
| [HDFS-3197](https://issues.apache.org/jira/browse/HDFS-3197) | Incorrect class comments in a few tests |  Trivial | (test) | Aaron T. Myers | Andy Isaacson |
| [HDFS-3116](https://issues.apache.org/jira/browse/HDFS-3116) | Typo in fetchdt error message |  Trivial | (hdfs-client) | Aaron T. Myers | AOE Takashi |
| [HDFS-2434](https://issues.apache.org/jira/browse/HDFS-2434) | TestNameNodeMetrics.testCorruptBlock fails intermittently |  Major | (test) | Uma Maheswara Rao G | Jing Zhao |
| [HDFS-2313](https://issues.apache.org/jira/browse/HDFS-2313) | Rat excludes has a typo for excluding editsStored files |  Major | (test) | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2312](https://issues.apache.org/jira/browse/HDFS-2312) | FSNamesystem header comment says it's for the DN |  Trivial | (namenode) | Aaron T. Myers | Harsh J |
| [HDFS-2310](https://issues.apache.org/jira/browse/HDFS-2310) | TestBackupNode fails since HADOOP-7524 went in. |  Major |  | Ivan Kelly | Ivan Kelly |
| [HDFS-2299](https://issues.apache.org/jira/browse/HDFS-2299) | TestOfflineEditsViewer is failing on trunk |  Major | (test) | Aaron T. Myers | Uma Maheswara Rao G |
| [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | The namespace quota of root directory should not be Integer.MAX_VALUE |  Major | (namenode) | Tsz Wo Nicholas Sze | Uma Maheswara Rao G |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2127](https://issues.apache.org/jira/browse/HDFS-2127) | Add a test that ensure AccessControlExceptions contain a full path |  Major | (namenode) | Eli Collins | Stephen Chu |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2776](https://issues.apache.org/jira/browse/HDFS-2776) | Missing interface annotation on JournalSet |  Trivial | (namenode) | Todd Lipcon | Brandon Li |


