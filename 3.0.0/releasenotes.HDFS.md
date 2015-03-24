# Hadoop HDFS 3.0.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-7803](https://issues.apache.org/jira/browse/HDFS-7803) | *Minor* | **Wrong command mentioned in HDFSHighAvailabilityWithQJM documentation**
---

* [HDFS-7791](https://issues.apache.org/jira/browse/HDFS-7791) | *Major* | **dfs count -v should be added to quota documentation**
---

* [HDFS-7755](https://issues.apache.org/jira/browse/HDFS-7755) | *Major* | **httpfs shell code has hardcoded path to bash**
---

* [HDFS-7751](https://issues.apache.org/jira/browse/HDFS-7751) | *Minor* | **Fix TestHDFSCLI for quota with storage type**
---

* [HDFS-7711](https://issues.apache.org/jira/browse/HDFS-7711) | *Major* | **Fix various typos in ClusterSetup.md**
---

* [HDFS-7670](https://issues.apache.org/jira/browse/HDFS-7670) | *Major* | **HDFS Quota guide has typos, incomplete command lines**
---

* [HDFS-7669](https://issues.apache.org/jira/browse/HDFS-7669) | *Major* | **HDFS Design Doc references commands that no longer exist.**
---

* [HDFS-7667](https://issues.apache.org/jira/browse/HDFS-7667) | *Minor* | **Various typos and improvements to HDFS Federation doc**
---

* [HDFS-7581](https://issues.apache.org/jira/browse/HDFS-7581) | *Major* | **HDFS documentation needs updating post-shell rewrite**
---

* [HDFS-7546](https://issues.apache.org/jira/browse/HDFS-7546) | *Minor* | **Document, and set an accepting default for dfs.namenode.kerberos.principal.pattern**
---

* [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | *Major* | **Rewrite httpfs to use new shell framework**

This deprecates the following environment variables:

| Old | New |
|:---- |:---- |
| HTTPFS\_LOG | HADOOP\_LOG\_DIR|
| HTTPFS\_CONFG | HADOOP\_CONF\_DIR |

---

* [HDFS-7407](https://issues.apache.org/jira/browse/HDFS-7407) | *Minor* | **Minor typo in privileged pid/out/log names**
---

* [HDFS-7322](https://issues.apache.org/jira/browse/HDFS-7322) | *Major* | **deprecate sbin/hadoop-daemon.sh**
---

* [HDFS-7320](https://issues.apache.org/jira/browse/HDFS-7320) | *Minor* | **The appearance of hadoop-hdfs-httpfs site docs is inconsistent**
---

* [HDFS-7319](https://issues.apache.org/jira/browse/HDFS-7319) | *Minor* | **Remove dead link to HFTP documentation from index.xml**
---

* [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | *Major* | **namenode -rollingUpgrade downgrade may finalize a rolling upgrade**

Remove "downgrade" from "namenode -rollingUpgrade" startup option since it may incorrectly finalize an ongoing rolling upgrade.

---

* [HDFS-7204](https://issues.apache.org/jira/browse/HDFS-7204) | *Blocker* | **balancer doesn't run as a daemon**
---

* [HDFS-7184](https://issues.apache.org/jira/browse/HDFS-7184) | *Minor* | **Allow data migration tool to run as a daemon**
---

* [HDFS-7071](https://issues.apache.org/jira/browse/HDFS-7071) | *Major* | **Updated editsStored and editsStored.xml to bump layout version and add LazyPersist flag**
---

* [HDFS-6922](https://issues.apache.org/jira/browse/HDFS-6922) | *Major* | **Add LazyPersist flag to INodeFile, save it in FsImage and edit logs**
---

* [HDFS-6893](https://issues.apache.org/jira/browse/HDFS-6893) | *Trivial* | **crypto subcommand is not sorted properly in hdfs's hadoop\_usage**
---

* [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | *Minor* | **Remove 'dfs.support.append' flag from trunk code**

Appends in HDFS can no longer be disabled.

---

* [HDFS-6228](https://issues.apache.org/jira/browse/HDFS-6228) | *Trivial* | **comments typo fix for FsDatasetImpl.java**
---

* [HDFS-5794](https://issues.apache.org/jira/browse/HDFS-5794) | *Minor* | **Fix the inconsistency of layout version number of ADD\_DATANODE\_AND\_STORAGE\_UUIDS between trunk and branch-2**
---

* [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | *Major* | **Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs**

Support for hftp and hsftp has been removed.  They have superseded by webhdfs  and swebhdfs.

---

* [HDFS-5079](https://issues.apache.org/jira/browse/HDFS-5079) | *Major* | **Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos.**
---

* [HDFS-5041](https://issues.apache.org/jira/browse/HDFS-5041) | *Minor* | **Add the time of last heartbeat to dead server Web UI**
---

* [HDFS-4904](https://issues.apache.org/jira/browse/HDFS-4904) | *Major* | **Remove JournalService**
---

* [HDFS-4761](https://issues.apache.org/jira/browse/HDFS-4761) | *Minor* | **Refresh INodeMap in FSDirectory#reset()**
---

* [HDFS-4757](https://issues.apache.org/jira/browse/HDFS-4757) | *Minor* | **Update FSDirectory#inodeMap when replacing an INodeDirectory while setting quota**
---

* [HDFS-4681](https://issues.apache.org/jira/browse/HDFS-4681) | *Major* | **TestBlocksWithNotEnoughRacks#testCorruptBlockRereplicatedAcrossRacks fails using IBM java**
---

* [HDFS-4665](https://issues.apache.org/jira/browse/HDFS-4665) | *Minor* | **Move TestNetworkTopologyWithNodeGroup to Common**
---

* [HDFS-4391](https://issues.apache.org/jira/browse/HDFS-4391) | *Major* | **TestDataTransferKeepalive fails when tests are executed in a certain order.**
---

* [HDFS-4366](https://issues.apache.org/jira/browse/HDFS-4366) | *Major* | **Block Replication Policy Implementation May Skip Higher-Priority Blocks for Lower-Priority Blocks**
---

* [HDFS-4338](https://issues.apache.org/jira/browse/HDFS-4338) | *Major* | **TestNameNodeMetrics#testCorruptBlock is flaky**
---

* [HDFS-4310](https://issues.apache.org/jira/browse/HDFS-4310) | *Major* | **fix test org.apache.hadoop.hdfs.server.datanode.TestStartSecureDataNode**
---

* [HDFS-4275](https://issues.apache.org/jira/browse/HDFS-4275) | *Major* | **MiniDFSCluster-based tests fail on Windows due to failure to delete test namenode directory**
---

* [HDFS-4115](https://issues.apache.org/jira/browse/HDFS-4115) | *Minor* | **TestHDFSCLI.testAll fails one test due to number format**
---

* [HDFS-4067](https://issues.apache.org/jira/browse/HDFS-4067) | *Major* | **TestUnderReplicatedBlocks may fail due to ReplicaAlreadyExistsException**
---

* [HDFS-4003](https://issues.apache.org/jira/browse/HDFS-4003) | *Major* | **test-patch should build the common native libs before running hdfs tests**
---

* [HDFS-3995](https://issues.apache.org/jira/browse/HDFS-3995) | *Minor* | **Use DFSTestUtil.createFile() for file creation and writing in test cases**
---

* [HDFS-3834](https://issues.apache.org/jira/browse/HDFS-3834) | *Minor* | **Unused Command.java fields NAME, DESCRIPTION and USAGE**
---

* [HDFS-3768](https://issues.apache.org/jira/browse/HDFS-3768) | *Minor* | **Exception in TestJettyHelper is incorrect**
---

* [HDFS-3750](https://issues.apache.org/jira/browse/HDFS-3750) | *Critical* | **API docs don't include HDFS**
---

* [HDFS-3735](https://issues.apache.org/jira/browse/HDFS-3735) | *Major* | **NameNode WebUI should allow sorting live datanode list by fields Block Pool Used, Block Pool Used(%) and Failed Volumes.**
---

* [HDFS-3614](https://issues.apache.org/jira/browse/HDFS-3614) | *Blocker* | **Revert unused MiniDFSCluster constructor from HDFS-3049**
---

* [HDFS-3550](https://issues.apache.org/jira/browse/HDFS-3550) | *Minor* | **raid added javadoc warnings**
---

* [HDFS-3549](https://issues.apache.org/jira/browse/HDFS-3549) | *Critical* | **dist tar build fails in hadoop-hdfs-raid project**
---

* [HDFS-3478](https://issues.apache.org/jira/browse/HDFS-3478) | *Minor* | **Test quotas with Long.Max\_Value**
---

* [HDFS-3476](https://issues.apache.org/jira/browse/HDFS-3476) | *Minor* | **Correct the default used in TestDFSClientRetries.busyTest() after HDFS-3462**
---

* [HDFS-3462](https://issues.apache.org/jira/browse/HDFS-3462) | *Major* | **TestDFSClientRetries.busyTest() should restore default xceiver count in the config.**
---

* [HDFS-3358](https://issues.apache.org/jira/browse/HDFS-3358) | *Trivial* | **Specify explicitly that the NN UI status total is talking of persistent objects on heap.**
---

* [HDFS-3293](https://issues.apache.org/jira/browse/HDFS-3293) | *Minor* | **Implement equals for journainfo class.**
---

* [HDFS-3292](https://issues.apache.org/jira/browse/HDFS-3292) | *Major* | **Remove the deprecated DistributedFileSystem.DiskStatus and the related methods**
---

* [HDFS-3273](https://issues.apache.org/jira/browse/HDFS-3273) | *Major* | **Refactor BackupImage and FSEditLog**
---

* [HDFS-3265](https://issues.apache.org/jira/browse/HDFS-3265) | *Major* | **PowerPc Build error.**
---

* [HDFS-3197](https://issues.apache.org/jira/browse/HDFS-3197) | *Trivial* | **Incorrect class comments in a few tests**
---

* [HDFS-3178](https://issues.apache.org/jira/browse/HDFS-3178) | *Major* | **Add states for journal synchronization in journal daemon**
---

* [HDFS-3121](https://issues.apache.org/jira/browse/HDFS-3121) | *Major* | **hdfs tests for HADOOP-8014**
---

* [HDFS-3116](https://issues.apache.org/jira/browse/HDFS-3116) | *Trivial* | **Typo in fetchdt error message**
---

* [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | *Major* | **Remove the deprecated Syncable.sync() method**

Remove the deprecated DFSOutputStream.sync() method.

---

* [HDFS-2776](https://issues.apache.org/jira/browse/HDFS-2776) | *Trivial* | **Missing interface annotation on JournalSet**
---

* [HDFS-2743](https://issues.apache.org/jira/browse/HDFS-2743) | *Major* | **Streamline usage of bookkeeper journal manager**
---

* [HDFS-2580](https://issues.apache.org/jira/browse/HDFS-2580) | *Minor* | **NameNode#main(...) can make use of GenericOptionsParser.**
---

* [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | *Minor* | **option to disable fsck dots**

fsck does not print out dots for progress reporting by default. To print out dots, you should specify '-showprogress' option.

---

* [HDFS-2434](https://issues.apache.org/jira/browse/HDFS-2434) | *Major* | **TestNameNodeMetrics.testCorruptBlock fails intermittently**
---

* [HDFS-2373](https://issues.apache.org/jira/browse/HDFS-2373) | *Major* | **Commands using webhdfs and hftp print unnecessary debug information on the console with security enabled**
---

* [HDFS-2313](https://issues.apache.org/jira/browse/HDFS-2313) | *Major* | **Rat excludes has a typo for excluding editsStored files**
---

* [HDFS-2312](https://issues.apache.org/jira/browse/HDFS-2312) | *Trivial* | **FSNamesystem header comment says it's for the DN**
---

* [HDFS-2310](https://issues.apache.org/jira/browse/HDFS-2310) | *Major* | **TestBackupNode fails since HADOOP-7524 went in.**
---

* [HDFS-2299](https://issues.apache.org/jira/browse/HDFS-2299) | *Major* | **TestOfflineEditsViewer is failing on trunk**
---

* [HDFS-2127](https://issues.apache.org/jira/browse/HDFS-2127) | *Major* | **Add a test that ensure AccessControlExceptions contain a full path**
---

* [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | *Major* | **The namespace quota of root directory should not be Integer.MAX\_VALUE**

Change default namespace quota of root directory from Integer.MAX\_VALUE to Long.MAX\_VALUE.



