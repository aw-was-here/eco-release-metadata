# Hadoop HDFS 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-7962](https://issues.apache.org/jira/browse/HDFS-7962) | *Minor* | **Remove duplicated logs in BlockManager**
---

* [HDFS-7957](https://issues.apache.org/jira/browse/HDFS-7957) | *Critical* | **Truncate should verify quota before making changes**
---

* [HDFS-7953](https://issues.apache.org/jira/browse/HDFS-7953) | *Minor* | **NN Web UI fails to navigate to paths that contain #**
---

* [HDFS-7951](https://issues.apache.org/jira/browse/HDFS-7951) | *Major* | **Fix NPE for TestFsDatasetImpl#testAddVolumeFailureReleasesInUseLock on Linux**
---

* [HDFS-7950](https://issues.apache.org/jira/browse/HDFS-7950) | *Major* | **Fix TestFsDatasetImpl#testAddVolumes failure on Windows**
---

* [HDFS-7948](https://issues.apache.org/jira/browse/HDFS-7948) | *Major* | **TestDataNodeHotSwapVolumes#testAddVolumeFailures failed on Windows**
---

* [HDFS-7946](https://issues.apache.org/jira/browse/HDFS-7946) | *Major* | **TestDataNodeVolumeFailureReporting NPE on Windows**
---

* [HDFS-7945](https://issues.apache.org/jira/browse/HDFS-7945) | *Blocker* | **The WebHdfs system on DN does not honor the length parameter**
---

* [HDFS-7943](https://issues.apache.org/jira/browse/HDFS-7943) | *Blocker* | **Append cannot handle the last block with length greater than the preferred block size**
---

* [HDFS-7942](https://issues.apache.org/jira/browse/HDFS-7942) | *Major* | **NFS: support regexp grouping in nfs.exports.allowed.hosts**
---

* [HDFS-7940](https://issues.apache.org/jira/browse/HDFS-7940) | *Major* | **Add tracing to DFSClient#setQuotaByStorageType**
---

* [HDFS-7932](https://issues.apache.org/jira/browse/HDFS-7932) | *Major* | **Speed up the shutdown of datanode during rolling upgrade**
---

* [HDFS-7930](https://issues.apache.org/jira/browse/HDFS-7930) | *Blocker* | **commitBlockSynchronization() does not remove locations**
---

* [HDFS-7929](https://issues.apache.org/jira/browse/HDFS-7929) | *Major* | **inotify unable fetch pre-upgrade edit log segments once upgrade starts**
---

* [HDFS-7926](https://issues.apache.org/jira/browse/HDFS-7926) | *Major* | **NameNode implementation of ClientProtocol.truncate(..) is not idempotent**
---

* [HDFS-7917](https://issues.apache.org/jira/browse/HDFS-7917) | *Minor* | **Use file to replace data dirs in test to simulate a disk failure.**
---

* [HDFS-7915](https://issues.apache.org/jira/browse/HDFS-7915) | *Major* | **The DataNode can sometimes allocate a ShortCircuitShm slot and fail to tell the DFSClient about it because of a network error**
---

* [HDFS-7914](https://issues.apache.org/jira/browse/HDFS-7914) | *Major* | **TestJournalNode#testFailToStartWithBadConfig fails when the default dfs.journalnode.http-address port 8480 is in use**
---

* [HDFS-7903](https://issues.apache.org/jira/browse/HDFS-7903) | *Blocker* | **Cannot recover block after truncate and delete snapshot**
---

* [HDFS-7898](https://issues.apache.org/jira/browse/HDFS-7898) | *Minor* | **Change TestAppendSnapshotTruncate to fail-fast**
---

* [HDFS-7886](https://issues.apache.org/jira/browse/HDFS-7886) | *Minor* | **TestFileTruncate#testTruncateWithDataNodesRestart runs timeout sometimes**
---

* [HDFS-7885](https://issues.apache.org/jira/browse/HDFS-7885) | *Critical* | **Datanode should not trust the generation stamp provided by client**
---

* [HDFS-7881](https://issues.apache.org/jira/browse/HDFS-7881) | *Blocker* | **TestHftpFileSystem#testSeek fails in branch-2**
---

* [HDFS-7880](https://issues.apache.org/jira/browse/HDFS-7880) | *Blocker* | **Remove the tests for legacy Web UI in branch-2**
---

* [HDFS-7879](https://issues.apache.org/jira/browse/HDFS-7879) | *Major* | **hdfs.dll does not export functions of the public libhdfs API**
---

* [HDFS-7871](https://issues.apache.org/jira/browse/HDFS-7871) | *Critical* | **NameNodeEditLogRoller can keep printing "Swallowing exception" message**
---

* [HDFS-7869](https://issues.apache.org/jira/browse/HDFS-7869) | *Major* | **Inconsistency in the return information while performing rolling upgrade**
---

* [HDFS-7855](https://issues.apache.org/jira/browse/HDFS-7855) | *Major* | **Separate class Packet from DFSOutputStream**
---

* [HDFS-7849](https://issues.apache.org/jira/browse/HDFS-7849) | *Minor* | **Update documentation for enabling a new feature in rolling upgrade**
---

* [HDFS-7843](https://issues.apache.org/jira/browse/HDFS-7843) | *Blocker* | **A truncated file is corrupted after rollback from a rolling upgrade**
---

* [HDFS-7838](https://issues.apache.org/jira/browse/HDFS-7838) | *Major* | **Expose truncate API for libhdfs**
---

* [HDFS-7832](https://issues.apache.org/jira/browse/HDFS-7832) | *Major* | **Show 'Last Modified' in Namenode's 'Browse Filesystem'**
---

* [HDFS-7831](https://issues.apache.org/jira/browse/HDFS-7831) | *Major* | **Fix the starting index and end condition of the loop in FileDiffList.findEarlierSnapshotBlocks()**
---

* [HDFS-7830](https://issues.apache.org/jira/browse/HDFS-7830) | *Major* | **DataNode does not release the volume lock when adding a volume fails.**
---

* [HDFS-7819](https://issues.apache.org/jira/browse/HDFS-7819) | *Major* | **Log WARN message for the blocks which are not in Block ID based layout**
---

* [HDFS-7818](https://issues.apache.org/jira/browse/HDFS-7818) | *Blocker* | **OffsetParam should return the default value instead of throwing NPE when the value is unspecified**
---

* [HDFS-7816](https://issues.apache.org/jira/browse/HDFS-7816) | *Blocker* | **Unable to open webhdfs paths with "+"**
---

* [HDFS-7814](https://issues.apache.org/jira/browse/HDFS-7814) | *Minor* | **Fix usage string of storageType parameter for "dfsadmin -setSpaceQuota/clrSpaceQuota"**
---

* [HDFS-7813](https://issues.apache.org/jira/browse/HDFS-7813) | *Major* | **TestDFSHAAdminMiniCluster#testFencer testcase is failing frequently**
---

* [HDFS-7808](https://issues.apache.org/jira/browse/HDFS-7808) | *Minor* | **Remove obsolete -ns options in in DFSHAAdmin.java**
---

* [HDFS-7807](https://issues.apache.org/jira/browse/HDFS-7807) | *Major* | **libhdfs htable.c: fix htable resizing, add unit test**
---

* [HDFS-7806](https://issues.apache.org/jira/browse/HDFS-7806) | *Minor* | **Refactor: move StorageType from hadoop-hdfs to hadoop-common**

This fix moves the public class StorageType from the package org.apache.hadoop.hdfs to org.apache.hadoop.fs.

---

* [HDFS-7805](https://issues.apache.org/jira/browse/HDFS-7805) | *Major* | **NameNode recovery prompt should be printed on console**
---

* [HDFS-7798](https://issues.apache.org/jira/browse/HDFS-7798) | *Critical* | **Checkpointing failure caused by shared KerberosAuthenticator**
---

* [HDFS-7797](https://issues.apache.org/jira/browse/HDFS-7797) | *Major* | **Add audit log for setQuota operation**
---

* [HDFS-7795](https://issues.apache.org/jira/browse/HDFS-7795) | *Minor* | **Show warning if not all favored nodes were chosen by namenode**
---

* [HDFS-7790](https://issues.apache.org/jira/browse/HDFS-7790) | *Minor* | **Do not create optional fields in DFSInputStream unless they are needed**
---

* [HDFS-7789](https://issues.apache.org/jira/browse/HDFS-7789) | *Major* | **DFSck should resolve the path to support cross-FS symlinks**
---

* [HDFS-7788](https://issues.apache.org/jira/browse/HDFS-7788) | *Blocker* | **Post-2.6 namenode may not start up with an image containing inodes created with an old release.**
---

* [HDFS-7785](https://issues.apache.org/jira/browse/HDFS-7785) | *Major* | **Improve diagnostics information for HttpPutFailedException**
---

* [HDFS-7780](https://issues.apache.org/jira/browse/HDFS-7780) | *Minor* | **Update use of Iterator to Iterable in DataXceiverServer and SnapshotDiffInfo**
---

* [HDFS-7778](https://issues.apache.org/jira/browse/HDFS-7778) | *Major* | **Rename FsVolumeListTest to TestFsVolumeList and commit it to branch-2**
---

* [HDFS-7776](https://issues.apache.org/jira/browse/HDFS-7776) | *Major* | **Adding additional unit tests for Quota By Storage Type**
---

* [HDFS-7775](https://issues.apache.org/jira/browse/HDFS-7775) | *Minor* | **Use consistent naming for NN-internal quota related types and functions**
---

* [HDFS-7774](https://issues.apache.org/jira/browse/HDFS-7774) | *Critical* | **Unresolved symbols error while compiling HDFS on Windows 7/32 bit**

LibHDFS now supports 32-bit build targets on Windows.

---

* [HDFS-7773](https://issues.apache.org/jira/browse/HDFS-7773) | *Major* | **Additional metrics in HDFS to be accessed via jmx.**
---

* [HDFS-7772](https://issues.apache.org/jira/browse/HDFS-7772) | *Trivial* | **Document hdfs balancer -exclude/-include option in HDFSCommands.html**
---

* [HDFS-7771](https://issues.apache.org/jira/browse/HDFS-7771) | *Major* | **fuse\_dfs should permit FILE: on the front of KRB5CCNAME**
---

* [HDFS-7769](https://issues.apache.org/jira/browse/HDFS-7769) | *Trivial* | **TestHDFSCLI create files in hdfs project root dir**
---

* [HDFS-7763](https://issues.apache.org/jira/browse/HDFS-7763) | *Major* | **fix zkfc hung issue due to not catching exception in a corner case**
---

* [HDFS-7761](https://issues.apache.org/jira/browse/HDFS-7761) | *Minor* | **cleanup unnecssary code logic in LocatedBlock**
---

* [HDFS-7760](https://issues.apache.org/jira/browse/HDFS-7760) | *Minor* | **Document truncate for WebHDFS.**
---

* [HDFS-7757](https://issues.apache.org/jira/browse/HDFS-7757) | *Major* | **Misleading error messages in FSImage.java**
---

* [HDFS-7756](https://issues.apache.org/jira/browse/HDFS-7756) | *Major* | **Restore method signature for LocatedBlock#getLocations()**
---

* [HDFS-7753](https://issues.apache.org/jira/browse/HDFS-7753) | *Major* | **Fix Multithreaded correctness Warnings in BackupImage.java**
---

* [HDFS-7752](https://issues.apache.org/jira/browse/HDFS-7752) | *Minor* | **Improve description for "dfs.namenode.num.extra.edits.retained" and "dfs.namenode.num.checkpoints.retained" properties on hdfs-default.xml**
---

* [HDFS-7746](https://issues.apache.org/jira/browse/HDFS-7746) | *Minor* | **Add a test randomly mixing append, truncate and snapshot**
---

* [HDFS-7744](https://issues.apache.org/jira/browse/HDFS-7744) | *Major* | **Fix potential NPE in DFSInputStream after setDropBehind or setReadahead is called**
---

* [HDFS-7743](https://issues.apache.org/jira/browse/HDFS-7743) | *Minor* | **Code cleanup of BlockInfo and rename BlockInfo to BlockInfoContiguous**
---

* [HDFS-7741](https://issues.apache.org/jira/browse/HDFS-7741) | *Minor* | **Remove unnecessary synchronized in FSDataInputStream and HdfsDataInputStream**
---

* [HDFS-7740](https://issues.apache.org/jira/browse/HDFS-7740) | *Major* | **Test truncate with DataNodes restarting**
---

* [HDFS-7738](https://issues.apache.org/jira/browse/HDFS-7738) | *Minor* | **Add more tests for truncate**
---

* [HDFS-7734](https://issues.apache.org/jira/browse/HDFS-7734) | *Blocker* | **Class cast exception in NameNode#main**
---

* [HDFS-7732](https://issues.apache.org/jira/browse/HDFS-7732) | *Trivial* | **Fix the order of the parameters in DFSConfigKeys**
---

* [HDFS-7723](https://issues.apache.org/jira/browse/HDFS-7723) | *Major* | **Quota By Storage Type namenode implemenation**
---

* [HDFS-7722](https://issues.apache.org/jira/browse/HDFS-7722) | *Major* | **DataNode#checkDiskError should also remove Storage when error is found.**
---

* [HDFS-7721](https://issues.apache.org/jira/browse/HDFS-7721) | *Major* | **The HDFS BlockScanner may run fast during the first hour**
---

* [HDFS-7720](https://issues.apache.org/jira/browse/HDFS-7720) | *Major* | **Quota by Storage Type API, tools and ClientNameNode Protocol changes**
---

* [HDFS-7719](https://issues.apache.org/jira/browse/HDFS-7719) | *Major* | **BlockPoolSliceStorage#removeVolumes fails to remove some in-memory state associated with volumes**
---

* [HDFS-7718](https://issues.apache.org/jira/browse/HDFS-7718) | *Major* | **Store KeyProvider in ClientContext to avoid leaking key provider threads when using FileContext**
---

* [HDFS-7714](https://issues.apache.org/jira/browse/HDFS-7714) | *Major* | **Simultaneous restart of HA NameNodes and DataNode can cause DataNode to register successfully with only one NameNode.**
---

* [HDFS-7710](https://issues.apache.org/jira/browse/HDFS-7710) | *Minor* | **Remove dead code in BackupImage.java**
---

* [HDFS-7709](https://issues.apache.org/jira/browse/HDFS-7709) | *Major* | **Fix findbug warnings in httpfs**
---

* [HDFS-7707](https://issues.apache.org/jira/browse/HDFS-7707) | *Major* | **Edit log corruption due to delayed block removal again**
---

* [HDFS-7706](https://issues.apache.org/jira/browse/HDFS-7706) | *Minor* | **Switch BlockManager logging to use slf4j**
---

* [HDFS-7704](https://issues.apache.org/jira/browse/HDFS-7704) | *Major* | **DN heartbeat to Active NN may be blocked and expire if connection to Standby NN continues to time out.**
---

* [HDFS-7703](https://issues.apache.org/jira/browse/HDFS-7703) | *Major* | **Support favouredNodes for the append for new blocks**
---

* [HDFS-7698](https://issues.apache.org/jira/browse/HDFS-7698) | *Major* | **Fix locking on HDFS read statistics and add a method for clearing them.**
---

* [HDFS-7697](https://issues.apache.org/jira/browse/HDFS-7697) | *Major* | **Mark the PB OIV tool as experimental**
---

* [HDFS-7696](https://issues.apache.org/jira/browse/HDFS-7696) | *Minor* | **FsDatasetImpl.getTmpInputStreams(..) may leak file descriptors**
---

* [HDFS-7694](https://issues.apache.org/jira/browse/HDFS-7694) | *Major* | **FSDataInputStream should support "unbuffer"**
---

* [HDFS-7686](https://issues.apache.org/jira/browse/HDFS-7686) | *Blocker* | **Re-add rapid rescan of possibly corrupt block feature to the block scanner**
---

* [HDFS-7685](https://issues.apache.org/jira/browse/HDFS-7685) | *Minor* | **Document dfs.namenode.heartbeat.recheck-interval in hdfs-default.xml**
---

* [HDFS-7684](https://issues.apache.org/jira/browse/HDFS-7684) | *Major* | **The host:port settings of the daemons should be trimmed before use**
---

* [HDFS-7683](https://issues.apache.org/jira/browse/HDFS-7683) | *Minor* | **Combine usages and percent stats in NameNode UI**
---

* [HDFS-7682](https://issues.apache.org/jira/browse/HDFS-7682) | *Major* | **{{DistributedFileSystem#getFileChecksum}} of a snapshotted file includes non-snapshotted content**
---

* [HDFS-7681](https://issues.apache.org/jira/browse/HDFS-7681) | *Major* | **Fix ReplicaInputStream constructor to take InputStreams**
---

* [HDFS-7677](https://issues.apache.org/jira/browse/HDFS-7677) | *Major* | **DistributedFileSystem#truncate should resolve symlinks**
---

* [HDFS-7676](https://issues.apache.org/jira/browse/HDFS-7676) | *Major* | **Fix TestFileTruncate to avoid bug of HDFS-7611**
---

* [HDFS-7675](https://issues.apache.org/jira/browse/HDFS-7675) | *Trivial* | **Remove unused member DFSClient#spanReceiverHost**
---

* [HDFS-7668](https://issues.apache.org/jira/browse/HDFS-7668) | *Major* | **Convert site documentation from apt to markdown**
---

* [HDFS-7660](https://issues.apache.org/jira/browse/HDFS-7660) | *Minor* | **BlockReceiver#close() might be called multiple times, which causes the fsvolume reference being released incorrectly.**
---

* [HDFS-7659](https://issues.apache.org/jira/browse/HDFS-7659) | *Major* | **We should check the new length of truncate can't be a negative value.**
---

* [HDFS-7656](https://issues.apache.org/jira/browse/HDFS-7656) | *Major* | **Expose truncate API for HDFS httpfs**
---

* [HDFS-7655](https://issues.apache.org/jira/browse/HDFS-7655) | *Major* | **Expose truncate API for Web HDFS**
---

* [HDFS-7647](https://issues.apache.org/jira/browse/HDFS-7647) | *Major* | **DatanodeManager.sortLocatedBlocks sorts DatanodeInfos but not StorageIDs**
---

* [HDFS-7644](https://issues.apache.org/jira/browse/HDFS-7644) | *Trivial* | **minor typo in HttpFS doc**
---

* [HDFS-7643](https://issues.apache.org/jira/browse/HDFS-7643) | *Major* | **Test case to ensure lazy persist files cannot be truncated**
---

* [HDFS-7641](https://issues.apache.org/jira/browse/HDFS-7641) | *Minor* | **Update archival storage user doc for list/set/get block storage policies**
---

* [HDFS-7640](https://issues.apache.org/jira/browse/HDFS-7640) | *Trivial* | **print NFS Client in the NFS log**
---

* [HDFS-7638](https://issues.apache.org/jira/browse/HDFS-7638) | *Major* | **Small fix and few refinements for FSN#truncate**
---

* [HDFS-7637](https://issues.apache.org/jira/browse/HDFS-7637) | *Minor* | **Fix the check condition for reserved path**
---

* [HDFS-7635](https://issues.apache.org/jira/browse/HDFS-7635) | *Minor* | **Remove TestCorruptFilesJsp from branch-2.**
---

* [HDFS-7634](https://issues.apache.org/jira/browse/HDFS-7634) | *Major* | **Disallow truncation of Lazy persist files**
---

* [HDFS-7632](https://issues.apache.org/jira/browse/HDFS-7632) | *Major* | **MiniDFSCluster configures DataNode data directories incorrectly if using more than 1 DataNode and more than 2 storage locations per DataNode.**
---

* [HDFS-7623](https://issues.apache.org/jira/browse/HDFS-7623) | *Major* | **Add htrace configuration properties to core-default.xml and update user doc about how to enable htrace**
---

* [HDFS-7615](https://issues.apache.org/jira/browse/HDFS-7615) | *Major* | **Remove longReadLock**
---

* [HDFS-7611](https://issues.apache.org/jira/browse/HDFS-7611) | *Critical* | **deleteSnapshot and delete of a file can leave orphaned blocks in the blocksMap on NameNode restart.**
---

* [HDFS-7610](https://issues.apache.org/jira/browse/HDFS-7610) | *Major* | **Fix removal of dynamically added DN volumes**
---

* [HDFS-7606](https://issues.apache.org/jira/browse/HDFS-7606) | *Minor* | **Missing null check in INodeFile#getBlocks()**
---

* [HDFS-7604](https://issues.apache.org/jira/browse/HDFS-7604) | *Major* | **Track and display failed DataNode storage locations in NameNode.**
---

* [HDFS-7603](https://issues.apache.org/jira/browse/HDFS-7603) | *Critical* | **The background replication queue initialization may not let others run**
---

* [HDFS-7600](https://issues.apache.org/jira/browse/HDFS-7600) | *Major* | **Refine hdfs admin classes to reuse common code**
---

* [HDFS-7598](https://issues.apache.org/jira/browse/HDFS-7598) | *Minor* | **Remove dependency on old version of Guava in TestDFSClientCache#testEviction**
---

* [HDFS-7596](https://issues.apache.org/jira/browse/HDFS-7596) | *Major* | **NameNode should prune dead storages from storageMap**
---

* [HDFS-7591](https://issues.apache.org/jira/browse/HDFS-7591) | *Minor* | **hdfs classpath command should support same options as hadoop classpath.**
---

* [HDFS-7589](https://issues.apache.org/jira/browse/HDFS-7589) | *Major* | **Break the dependency between libnative\_mini\_dfs and libhdfs**
---

* [HDFS-7587](https://issues.apache.org/jira/browse/HDFS-7587) | *Blocker* | **Edit log corruption can happen if append fails with a quota violation**
---

* [HDFS-7585](https://issues.apache.org/jira/browse/HDFS-7585) | *Major* | **Get TestEnhancedByteBufferAccess working on CPU architectures with page sizes other than 4096**
---

* [HDFS-7584](https://issues.apache.org/jira/browse/HDFS-7584) | *Major* | **Enable Quota Support for Storage Types**

1. Introduced quota by storage type as a hard limit on the amount of space usage allowed for different storage types (SSD, DISK, ARCHIVE) under the target directory.
2. Added {{SetQuotaByStorageType}} API and {{-storagetype}} option for  {{hdfs dfsadmin -setSpaceQuota/-clrSpaceQuota}} commands to allow set/clear quota by storage type under the target directory.

---

* [HDFS-7583](https://issues.apache.org/jira/browse/HDFS-7583) | *Minor* | **Fix findbug in TransferFsImage.java**
---

* [HDFS-7579](https://issues.apache.org/jira/browse/HDFS-7579) | *Minor* | **Improve log reporting during block report rpc failure**
---

* [HDFS-7575](https://issues.apache.org/jira/browse/HDFS-7575) | *Critical* | **Upgrade should generate a unique storage ID for each volume**
---

* [HDFS-7573](https://issues.apache.org/jira/browse/HDFS-7573) | *Major* | **Consolidate the implementation of delete() into a single class**
---

* [HDFS-7572](https://issues.apache.org/jira/browse/HDFS-7572) | *Major* | **TestLazyPersistFiles#testDnRestartWithSavedReplicas is flaky on Windows**
---

* [HDFS-7566](https://issues.apache.org/jira/browse/HDFS-7566) | *Major* | **Remove obsolete entries from hdfs-default.xml**
---

* [HDFS-7564](https://issues.apache.org/jira/browse/HDFS-7564) | *Minor* | **NFS gateway dynamically reload UID/GID mapping file /etc/nfs.map**
---

* [HDFS-7563](https://issues.apache.org/jira/browse/HDFS-7563) | *Major* | **NFS gateway parseStaticMap NumberFormatException**
---

* [HDFS-7561](https://issues.apache.org/jira/browse/HDFS-7561) | *Major* | **TestFetchImage should write fetched-image-dir under target.**
---

* [HDFS-7560](https://issues.apache.org/jira/browse/HDFS-7560) | *Critical* | **ACLs removed by removeDefaultAcl() will be back after NameNode restart/failover**
---

* [HDFS-7557](https://issues.apache.org/jira/browse/HDFS-7557) | *Minor* | **Fix spacing for a few keys in DFSConfigKeys.java**
---

* [HDFS-7555](https://issues.apache.org/jira/browse/HDFS-7555) | *Major* | **Remove the support of unmanaged connectors in HttpServer2**
---

* [HDFS-7552](https://issues.apache.org/jira/browse/HDFS-7552) | *Major* | **change FsVolumeList toString() to fix TestDataNodeVolumeFailureToleration**
---

* [HDFS-7548](https://issues.apache.org/jira/browse/HDFS-7548) | *Major* | **Corrupt block reporting delayed until datablock scanner thread detects it**
---

* [HDFS-7543](https://issues.apache.org/jira/browse/HDFS-7543) | *Major* | **Avoid path resolution when getting FileStatus for audit logs**
---

* [HDFS-7537](https://issues.apache.org/jira/browse/HDFS-7537) | *Major* | **fsck is confusing when dfs.namenode.replication.min > 1 && missing replicas && NN restart**
---

* [HDFS-7536](https://issues.apache.org/jira/browse/HDFS-7536) | *Minor* | **Remove unused CryptoCodec in org.apache.hadoop.fs.Hdfs**
---

* [HDFS-7535](https://issues.apache.org/jira/browse/HDFS-7535) | *Major* | **Utilize Snapshot diff report for distcp**
---

* [HDFS-7533](https://issues.apache.org/jira/browse/HDFS-7533) | *Major* | **Datanode sometimes does not shutdown on receiving upgrade shutdown command**
---

* [HDFS-7531](https://issues.apache.org/jira/browse/HDFS-7531) | *Major* | **Improve the concurrent access on FsVolumeList**
---

* [HDFS-7530](https://issues.apache.org/jira/browse/HDFS-7530) | *Minor* | **Allow renaming of encryption zone roots**
---

* [HDFS-7528](https://issues.apache.org/jira/browse/HDFS-7528) | *Major* | **Consolidate symlink-related implementation into a single class**
---

* [HDFS-7517](https://issues.apache.org/jira/browse/HDFS-7517) | *Major* | **Remove redundant non-null checks in FSNamesystem#getBlockLocations**
---

* [HDFS-7516](https://issues.apache.org/jira/browse/HDFS-7516) | *Major* | **Fix findbugs warnings in hadoop-nfs project**
---

* [HDFS-7515](https://issues.apache.org/jira/browse/HDFS-7515) | *Major* | **Fix new findbugs warnings in hadoop-hdfs**
---

* [HDFS-7514](https://issues.apache.org/jira/browse/HDFS-7514) | *Major* | **TestTextCommand fails on Windows**
---

* [HDFS-7513](https://issues.apache.org/jira/browse/HDFS-7513) | *Major* | **HDFS inotify: add defaultBlockSize to CreateEvent**
---

* [HDFS-7509](https://issues.apache.org/jira/browse/HDFS-7509) | *Major* | **Avoid resolving path multiple times**
---

* [HDFS-7506](https://issues.apache.org/jira/browse/HDFS-7506) | *Major* | **Consolidate implementation of setting inode attributes into a single class**
---

* [HDFS-7502](https://issues.apache.org/jira/browse/HDFS-7502) | *Major* | **Fix findbugs warning in hdfs-nfs project**
---

* [HDFS-7498](https://issues.apache.org/jira/browse/HDFS-7498) | *Major* | **Simplify the logic in INodesInPath**
---

* [HDFS-7497](https://issues.apache.org/jira/browse/HDFS-7497) | *Major* | **Inconsistent report of decommissioning DataNodes between dfsadmin and NameNode webui**
---

* [HDFS-7496](https://issues.apache.org/jira/browse/HDFS-7496) | *Major* | **Fix FsVolume removal race conditions on the DataNode by reference-counting the volume instances**
---

* [HDFS-7495](https://issues.apache.org/jira/browse/HDFS-7495) | *Minor* | **Remove updatePosition argument from DFSInputStream#getBlockAt()**
---

* [HDFS-7494](https://issues.apache.org/jira/browse/HDFS-7494) | *Minor* | **Checking of closed in DFSInputStream#pread() should be protected by synchronization**
---

* [HDFS-7491](https://issues.apache.org/jira/browse/HDFS-7491) | *Minor* | **Add incremental blockreport latency to DN metrics**
---

* [HDFS-7490](https://issues.apache.org/jira/browse/HDFS-7490) | *Major* | **HDFS tests OOM on Java7+**
---

* [HDFS-7484](https://issues.apache.org/jira/browse/HDFS-7484) | *Major* | **Make FSDirectory#addINode take existing INodes as its parameter**
---

* [HDFS-7481](https://issues.apache.org/jira/browse/HDFS-7481) | *Minor* | **Add ACL indicator to the "Permission Denied" exception.**
---

* [HDFS-7478](https://issues.apache.org/jira/browse/HDFS-7478) | *Major* | **Move org.apache.hadoop.hdfs.server.namenode.NNConf to FSNamesystem**
---

* [HDFS-7476](https://issues.apache.org/jira/browse/HDFS-7476) | *Major* | **Consolidate ACL-related operations to a single class**
---

* [HDFS-7475](https://issues.apache.org/jira/browse/HDFS-7475) | *Major* | **Make TestLazyPersistFiles#testLazyPersistBlocksAreSaved deterministic**
---

* [HDFS-7474](https://issues.apache.org/jira/browse/HDFS-7474) | *Major* | **Avoid resolving path in FSPermissionChecker**
---

* [HDFS-7473](https://issues.apache.org/jira/browse/HDFS-7473) | *Major* | **Document setting dfs.namenode.fs-limits.max-directory-items to 0 is invalid**
---

* [HDFS-7472](https://issues.apache.org/jira/browse/HDFS-7472) | *Trivial* | **Fix typo in message of ReplicaNotFoundException**
---

* [HDFS-7470](https://issues.apache.org/jira/browse/HDFS-7470) | *Major* | **SecondaryNameNode need twice memory when calling reloadFromImageFile**
---

* [HDFS-7468](https://issues.apache.org/jira/browse/HDFS-7468) | *Major* | **Moving verify* functions to corresponding classes**
---

* [HDFS-7467](https://issues.apache.org/jira/browse/HDFS-7467) | *Major* | **Provide storage tier information for a directory via fsck**
---

* [HDFS-7463](https://issues.apache.org/jira/browse/HDFS-7463) | *Major* | **Simplify FSNamesystem#getBlockLocationsUpdateTimes**
---

* [HDFS-7462](https://issues.apache.org/jira/browse/HDFS-7462) | *Major* | **Consolidate implementation of mkdirs() into a single class**
---

* [HDFS-7459](https://issues.apache.org/jira/browse/HDFS-7459) | *Major* | **Consolidate cache-related implementation in FSNamesystem into a single class**
---

* [HDFS-7458](https://issues.apache.org/jira/browse/HDFS-7458) | *Minor* | **Add description to the nfs ports in core-site.xml used by nfs test to avoid confusion**
---

* [HDFS-7457](https://issues.apache.org/jira/browse/HDFS-7457) | *Major* | **DatanodeID generates excessive garbage**

Thanks for the reviews, gentlemen. I've committed this to trunk and branch-2. Thanks for identifying and working on the issue, Daryn.

---

* [HDFS-7456](https://issues.apache.org/jira/browse/HDFS-7456) | *Major* | **De-duplicate AclFeature instances with same AclEntries do reduce memory footprint of NameNode**
---

* [HDFS-7454](https://issues.apache.org/jira/browse/HDFS-7454) | *Major* | **Reduce memory footprint for AclEntries in NameNode**
---

* [HDFS-7450](https://issues.apache.org/jira/browse/HDFS-7450) | *Major* | **Consolidate the implementation of GetFileInfo(), GetListings() and GetContentSummary() into a single class**
---

* [HDFS-7449](https://issues.apache.org/jira/browse/HDFS-7449) | *Major* | **Add metrics to NFS gateway**
---

* [HDFS-7448](https://issues.apache.org/jira/browse/HDFS-7448) | *Minor* | **TestBookKeeperHACheckpoints fails in trunk build**
---

* [HDFS-7446](https://issues.apache.org/jira/browse/HDFS-7446) | *Major* | **HDFS inotify should have the ability to determine what txid it has read up to**
---

* [HDFS-7444](https://issues.apache.org/jira/browse/HDFS-7444) | *Major* | **convertToBlockUnderConstruction should preserve BlockCollection**
---

* [HDFS-7440](https://issues.apache.org/jira/browse/HDFS-7440) | *Major* | **Consolidate snapshot related operations in a single class**
---

* [HDFS-7439](https://issues.apache.org/jira/browse/HDFS-7439) | *Minor* | **Add BlockOpResponseProto's message to DFSClient's exception message**
---

* [HDFS-7438](https://issues.apache.org/jira/browse/HDFS-7438) | *Major* | **Consolidate the implementation of rename() into a single class**
---

* [HDFS-7435](https://issues.apache.org/jira/browse/HDFS-7435) | *Critical* | **PB encoding of block reports is very inefficient**
---

* [HDFS-7434](https://issues.apache.org/jira/browse/HDFS-7434) | *Major* | **DatanodeID hashCode should not be mutable**
---

* [HDFS-7431](https://issues.apache.org/jira/browse/HDFS-7431) | *Major* | **log message for InvalidMagicNumberException may be incorrect**
---

* [HDFS-7430](https://issues.apache.org/jira/browse/HDFS-7430) | *Major* | **Rewrite the BlockScanner to use O(1) memory and use multiple threads**
---

* [HDFS-7426](https://issues.apache.org/jira/browse/HDFS-7426) | *Major* | **Change nntop JMX format to be a JSON blob**
---

* [HDFS-7424](https://issues.apache.org/jira/browse/HDFS-7424) | *Major* | **Add web UI for NFS gateway**
---

* [HDFS-7423](https://issues.apache.org/jira/browse/HDFS-7423) | *Trivial* | **various typos and message formatting fixes in nfs daemon and doc**
---

* [HDFS-7420](https://issues.apache.org/jira/browse/HDFS-7420) | *Major* | **Delegate permission checks to FSDirectory**
---

* [HDFS-7419](https://issues.apache.org/jira/browse/HDFS-7419) | *Major* | **Improve error messages for DataNode hot swap drive feature**
---

* [HDFS-7415](https://issues.apache.org/jira/browse/HDFS-7415) | *Major* | **Move FSNameSystem.resolvePath() to FSDirectory**
---

* [HDFS-7413](https://issues.apache.org/jira/browse/HDFS-7413) | *Major* | **Some unit tests should use NameNodeProtocols instead of FSNameSystem**
---

* [HDFS-7412](https://issues.apache.org/jira/browse/HDFS-7412) | *Major* | **Move RetryCache to NameNodeRpcServer**
---

* [HDFS-7411](https://issues.apache.org/jira/browse/HDFS-7411) | *Major* | **Refactor and improve decommissioning logic into DecommissionManager**

This change introduces a new configuration key used to throttle decommissioning work, "dfs.namenode.decommission.blocks.per.interval". This new key overrides and deprecates the previous related configuration key "dfs.namenode.decommission.nodes.per.interval". The new key is intended to result in more predictable pause times while scanning decommissioning nodes.

---

* [HDFS-7409](https://issues.apache.org/jira/browse/HDFS-7409) | *Minor* | **Allow dead nodes to finish decommissioning if all files are fully replicated**
---

* [HDFS-7406](https://issues.apache.org/jira/browse/HDFS-7406) | *Major* | **SimpleHttpProxyHandler puts incorrect "Connection: Close" header**
---

* [HDFS-7404](https://issues.apache.org/jira/browse/HDFS-7404) | *Major* | **Remove o.a.h.hdfs.server.datanode.web.resources**
---

* [HDFS-7403](https://issues.apache.org/jira/browse/HDFS-7403) | *Trivial* | **Inaccurate javadoc of  BlockUCState#COMPLETE state**
---

* [HDFS-7399](https://issues.apache.org/jira/browse/HDFS-7399) | *Minor* | **Lack of synchronization in DFSOutputStream#Packet#getLastByteOffsetBlock()**
---

* [HDFS-7398](https://issues.apache.org/jira/browse/HDFS-7398) | *Major* | **Reset cached thread-local FSEditLogOp's on every FSEditLog#logEdit**
---

* [HDFS-7395](https://issues.apache.org/jira/browse/HDFS-7395) | *Major* | **BlockIdManager#clear() bails out when resetting the GenerationStampV1Limit**
---

* [HDFS-7394](https://issues.apache.org/jira/browse/HDFS-7394) | *Minor* | **Log at INFO level, not WARN level, when InvalidToken is seen in ShortCircuitCache**
---

* [HDFS-7389](https://issues.apache.org/jira/browse/HDFS-7389) | *Major* | **Named user ACL cannot stop the user from accessing the FS entity.**
---

* [HDFS-7386](https://issues.apache.org/jira/browse/HDFS-7386) | *Trivial* | **Replace check "port number < 1024" with shared isPrivilegedPort method**
---

* [HDFS-7384](https://issues.apache.org/jira/browse/HDFS-7384) | *Major* | **'getfacl' command and 'getAclStatus' output should be in sync**
---

* [HDFS-7381](https://issues.apache.org/jira/browse/HDFS-7381) | *Major* | **Decouple the management of block id and gen stamps from FSNamesystem**
---

* [HDFS-7375](https://issues.apache.org/jira/browse/HDFS-7375) | *Major* | **Move FSClusterStats to o.a.h.h.hdfs.server.blockmanagement**
---

* [HDFS-7374](https://issues.apache.org/jira/browse/HDFS-7374) | *Major* | **Allow decommissioning of dead DataNodes**
---

* [HDFS-7373](https://issues.apache.org/jira/browse/HDFS-7373) | *Major* | **Clean up temporary files after fsimage transfer failures**
---

* [HDFS-7366](https://issues.apache.org/jira/browse/HDFS-7366) | *Minor* | **BlockInfo should take replication as an short in the constructor**
---

* [HDFS-7365](https://issues.apache.org/jira/browse/HDFS-7365) | *Minor* | **Remove hdfs.server.blockmanagement.MutableBlockCollection**
---

* [HDFS-7361](https://issues.apache.org/jira/browse/HDFS-7361) | *Minor* | **TestCheckpoint#testStorageAlreadyLockedErrorMessage fails after change of log message related to locking violation.**
---

* [HDFS-7358](https://issues.apache.org/jira/browse/HDFS-7358) | *Major* | **Clients may get stuck waiting when using ByteArrayManager**
---

* [HDFS-7357](https://issues.apache.org/jira/browse/HDFS-7357) | *Minor* | **FSNamesystem.checkFileProgress should log file path**
---

* [HDFS-7356](https://issues.apache.org/jira/browse/HDFS-7356) | *Minor* | **Use DirectoryListing.hasMore() directly in nfs**
---

* [HDFS-7336](https://issues.apache.org/jira/browse/HDFS-7336) | *Major* | **Unused member DFSInputStream.buffersize**
---

* [HDFS-7335](https://issues.apache.org/jira/browse/HDFS-7335) | *Major* | **Redundant checkOperation() in FSN.analyzeFileState()**
---

* [HDFS-7333](https://issues.apache.org/jira/browse/HDFS-7333) | *Major* | **Improve log message in Storage.tryLock()**
---

* [HDFS-7331](https://issues.apache.org/jira/browse/HDFS-7331) | *Minor* | **Add Datanode network counts to datanode jmx page**
---

* [HDFS-7329](https://issues.apache.org/jira/browse/HDFS-7329) | *Major* | **MiniDFSCluster should log the exception when createNameNodesAndSetConf() fails.**
---

* [HDFS-7326](https://issues.apache.org/jira/browse/HDFS-7326) | *Minor* | **Add documentation for hdfs debug commands**

Added documentation for the hdfs debug commands to the following URL in the documentation website.

hadoop-project-dist/hadoop-hdfs/HDFSCommands.html

In order to view the new documentation, build the website in a staging area:
$ mvn clean site; mvn site:stage -DstagingDirectory=/tmp/hadoop-site

Point your browser to 
file:///tmp/hadoop-site/hadoop-project/hadoop-project-dist/hadoop-hdfs/HDFSCommands.html

---

* [HDFS-7324](https://issues.apache.org/jira/browse/HDFS-7324) | *Major* | **haadmin command usage prints incorrect command name**
---

* [HDFS-7323](https://issues.apache.org/jira/browse/HDFS-7323) | *Major* | **Move the get/setStoragePolicy commands out from dfsadmin**
---

* [HDFS-7315](https://issues.apache.org/jira/browse/HDFS-7315) | *Trivial* | **DFSTestUtil.readFileBuffer opens extra FSDataInputStream**
---

* [HDFS-7310](https://issues.apache.org/jira/browse/HDFS-7310) | *Major* | **Mover can give first priority to local DN if it has target storage type available in local DN**
---

* [HDFS-7308](https://issues.apache.org/jira/browse/HDFS-7308) | *Minor* | **DFSClient write packet size may > 64kB**
---

* [HDFS-7303](https://issues.apache.org/jira/browse/HDFS-7303) | *Minor* | **NN UI fails to distinguish datanodes on the same host**
---

* [HDFS-7301](https://issues.apache.org/jira/browse/HDFS-7301) | *Minor* | **TestMissingBlocksAlert should use MXBeans instead of old web UI**
---

* [HDFS-7283](https://issues.apache.org/jira/browse/HDFS-7283) | *Trivial* | **Bump DataNode OOM log from WARN to ERROR**
---

* [HDFS-7282](https://issues.apache.org/jira/browse/HDFS-7282) | *Major* | **Fix intermittent TestShortCircuitCache and TestBlockReaderFactory failures resulting from TemporarySocketDirectory GC**
---

* [HDFS-7280](https://issues.apache.org/jira/browse/HDFS-7280) | *Major* | **Use netty 4 in WebImageViewer**
---

* [HDFS-7279](https://issues.apache.org/jira/browse/HDFS-7279) | *Major* | **Use netty to implement DatanodeWebHdfsMethods**
---

* [HDFS-7278](https://issues.apache.org/jira/browse/HDFS-7278) | *Major* | **Add a command that allows sysadmins to manually trigger full block reports from a DN**
---

* [HDFS-7277](https://issues.apache.org/jira/browse/HDFS-7277) | *Minor* | **Remove explicit dependency on netty 3.2 in BKJournal**
---

* [HDFS-7270](https://issues.apache.org/jira/browse/HDFS-7270) | *Major* | **Add congestion signaling capability to DataNode write protocol**
---

* [HDFS-7266](https://issues.apache.org/jira/browse/HDFS-7266) | *Minor* | **HDFS Peercache enabled check should not lock on object**
---

* [HDFS-7263](https://issues.apache.org/jira/browse/HDFS-7263) | *Major* | **Snapshot read can reveal future bytes for appended files.**
---

* [HDFS-7258](https://issues.apache.org/jira/browse/HDFS-7258) | *Minor* | **CacheReplicationMonitor rescan schedule log should use DEBUG level instead of INFO level**
---

* [HDFS-7257](https://issues.apache.org/jira/browse/HDFS-7257) | *Minor* | **Add the time of last HA state transition to NN's /jmx page**
---

* [HDFS-7254](https://issues.apache.org/jira/browse/HDFS-7254) | *Major* | **Add documentation for hot swaping DataNode drives**
---

* [HDFS-7252](https://issues.apache.org/jira/browse/HDFS-7252) | *Trivial* | **small refinement to the use of isInAnEZ in FSNamesystem**
---

* [HDFS-7242](https://issues.apache.org/jira/browse/HDFS-7242) | *Minor* | **Code improvement for FSN#checkUnreadableBySuperuser**
---

* [HDFS-7235](https://issues.apache.org/jira/browse/HDFS-7235) | *Major* | **DataNode#transferBlock should report blocks that don't exist using reportBadBlock**
---

* [HDFS-7232](https://issues.apache.org/jira/browse/HDFS-7232) | *Trivial* | **Populate hostname in httpfs audit log**
---

* [HDFS-7227](https://issues.apache.org/jira/browse/HDFS-7227) | *Minor* | **Fix findbugs warning about NP\_DEREFERENCE\_OF\_READLINE\_VALUE in SpanReceiverHost**
---

* [HDFS-7225](https://issues.apache.org/jira/browse/HDFS-7225) | *Major* | **Remove stale block invalidation work when DN re-registers with different UUID**
---

* [HDFS-7224](https://issues.apache.org/jira/browse/HDFS-7224) | *Major* | **Allow reuse of NN connections via webhdfs**
---

* [HDFS-7223](https://issues.apache.org/jira/browse/HDFS-7223) | *Minor* | **Tracing span description of IPC client is too long**
---

* [HDFS-7222](https://issues.apache.org/jira/browse/HDFS-7222) | *Minor* | **Expose DataNode network errors as a metric**
---

* [HDFS-7213](https://issues.apache.org/jira/browse/HDFS-7213) | *Critical* | **processIncrementalBlockReport performance degradation**
---

* [HDFS-7210](https://issues.apache.org/jira/browse/HDFS-7210) | *Major* | **Avoid two separate RPC's namenode.append() and namenode.getFileInfo() for an append call from DFSClient**
---

* [HDFS-7209](https://issues.apache.org/jira/browse/HDFS-7209) | *Major* | **Populate EDEK cache when creating encryption zone**
---

* [HDFS-7202](https://issues.apache.org/jira/browse/HDFS-7202) | *Minor* | **Should be able to omit package name of SpanReceiver on "hadoop trace -add"**
---

* [HDFS-7201](https://issues.apache.org/jira/browse/HDFS-7201) | *Major* | **Fix typos in hdfs-default.xml**
---

* [HDFS-7198](https://issues.apache.org/jira/browse/HDFS-7198) | *Trivial* | **Fix findbugs "unchecked conversion" warning in DFSClient#getPathTraceScope**
---

* [HDFS-7194](https://issues.apache.org/jira/browse/HDFS-7194) | *Trivial* | **Fix findbugs "inefficient new String constructor" warning in DFSClient#PATH**
---

* [HDFS-7190](https://issues.apache.org/jira/browse/HDFS-7190) | *Major* | **Bad use of Preconditions in startFileInternal()**
---

* [HDFS-7189](https://issues.apache.org/jira/browse/HDFS-7189) | *Major* | **Add trace spans for DFSClient metadata operations**
---

* [HDFS-7186](https://issues.apache.org/jira/browse/HDFS-7186) | *Minor* | **Document the "hadoop trace" command.**
---

* [HDFS-7182](https://issues.apache.org/jira/browse/HDFS-7182) | *Major* | **JMX metrics aren't accessible when NN is busy**
---

* [HDFS-7165](https://issues.apache.org/jira/browse/HDFS-7165) | *Major* | **Separate block metrics for files with replication count 1**
---

* [HDFS-7146](https://issues.apache.org/jira/browse/HDFS-7146) | *Major* | **NFS ID/Group lookup requires SSSD enumeration on the server**
---

* [HDFS-7097](https://issues.apache.org/jira/browse/HDFS-7097) | *Critical* | **Allow block reports to be processed during checkpointing on standby name node**
---

* [HDFS-7058](https://issues.apache.org/jira/browse/HDFS-7058) | *Major* | **Tests for truncate CLI**
---

* [HDFS-7056](https://issues.apache.org/jira/browse/HDFS-7056) | *Major* | **Snapshot support for truncate**
---

* [HDFS-7055](https://issues.apache.org/jira/browse/HDFS-7055) | *Major* | **Add tracing to DFSInputStream**
---

* [HDFS-7054](https://issues.apache.org/jira/browse/HDFS-7054) | *Major* | **Make DFSOutputStream tracing more fine-grained**
---

* [HDFS-7035](https://issues.apache.org/jira/browse/HDFS-7035) | *Major* | **Make adding a new data directory to the DataNode an atomic operation and improve error handling**
---

* [HDFS-7026](https://issues.apache.org/jira/browse/HDFS-7026) | *Trivial* | **Introduce a string constant for "Failed to obtain user group info..."**
---

* [HDFS-7009](https://issues.apache.org/jira/browse/HDFS-7009) | *Major* | **Active NN and standby NN have different live nodes**
---

* [HDFS-7008](https://issues.apache.org/jira/browse/HDFS-7008) | *Minor* | **xlator should be closed upon exit from DFSAdmin#genericRefresh()**
---

* [HDFS-6982](https://issues.apache.org/jira/browse/HDFS-6982) | *Major* | **nntop: top­-like tool for name node users**
---

* [HDFS-6938](https://issues.apache.org/jira/browse/HDFS-6938) | *Trivial* | **Cleanup javac warnings in FSNamesystem**
---

* [HDFS-6917](https://issues.apache.org/jira/browse/HDFS-6917) | *Major* | **Add an hdfs debug command to validate blocks, call recoverlease, etc.**
---

* [HDFS-6877](https://issues.apache.org/jira/browse/HDFS-6877) | *Major* | **Avoid calling checkDisk when an HDFS volume is removed during a write.**
---

* [HDFS-6841](https://issues.apache.org/jira/browse/HDFS-6841) | *Major* | **Use Time.monotonicNow() wherever applicable instead of Time.now()**
---

* [HDFS-6833](https://issues.apache.org/jira/browse/HDFS-6833) | *Critical* | **DirectoryScanner should not register a deleting block with memory of DataNode**
---

* [HDFS-6824](https://issues.apache.org/jira/browse/HDFS-6824) | *Minor* | **Additional user documentation for HDFS encryption.**
---

* [HDFS-6806](https://issues.apache.org/jira/browse/HDFS-6806) | *Minor* | **HDFS Rolling upgrade document should mention the versions available**
---

* [HDFS-6803](https://issues.apache.org/jira/browse/HDFS-6803) | *Major* | **Documenting DFSClient#DFSInputStream expectations reading and preading in concurrent context**
---

* [HDFS-6753](https://issues.apache.org/jira/browse/HDFS-6753) | *Major* | **Initialize checkDisk when DirectoryScanner not able to get files list for scanning**
---

* [HDFS-6741](https://issues.apache.org/jira/browse/HDFS-6741) | *Trivial* | **Improve permission denied message when FSPermissionChecker#checkOwner fails**
---

* [HDFS-6735](https://issues.apache.org/jira/browse/HDFS-6735) | *Major* | **A minor optimization to avoid pread() be blocked by read() inside the same DFSInputStream**
---

* [HDFS-6673](https://issues.apache.org/jira/browse/HDFS-6673) | *Minor* | **Add delimited format support to PB OIV tool**
---

* [HDFS-6663](https://issues.apache.org/jira/browse/HDFS-6663) | *Major* | **Admin command to track file and locations from block id**
---

* [HDFS-6662](https://issues.apache.org/jira/browse/HDFS-6662) | *Critical* | **WebHDFS cannot open a file if its path contains "%"**
---

* [HDFS-6657](https://issues.apache.org/jira/browse/HDFS-6657) | *Minor* | **Remove link to 'Legacy UI' in Namenode UI**
---

* [HDFS-6651](https://issues.apache.org/jira/browse/HDFS-6651) | *Critical* | **Deletion failure can leak inodes permanently**
---

* [HDFS-6565](https://issues.apache.org/jira/browse/HDFS-6565) | *Major* | **Use jackson instead jetty json in hdfs-client**
---

* [HDFS-6538](https://issues.apache.org/jira/browse/HDFS-6538) | *Trivial* | **Comment format error in ShortCircuitRegistry javadoc**
---

* [HDFS-6488](https://issues.apache.org/jira/browse/HDFS-6488) | *Major* | **Support HDFS superuser in NFSv3 gateway**
---

* [HDFS-6425](https://issues.apache.org/jira/browse/HDFS-6425) | *Major* | **Large postponedMisreplicatedBlocks has impact on blockReport latency**
---

* [HDFS-6252](https://issues.apache.org/jira/browse/HDFS-6252) | *Minor* | **Phase out the old web UI in HDFS**
---

* [HDFS-6133](https://issues.apache.org/jira/browse/HDFS-6133) | *Major* | **Make Balancer support exclude specified path**

Add a feature for replica pinning so that when a replica is pinned in a datanode, it will not be moved by Balancer/Mover.  The replica pinning feature can be enabled/disabled by "dfs.datanode.block-pinning.enabled", where the default is false.

---

* [HDFS-5928](https://issues.apache.org/jira/browse/HDFS-5928) | *Major* | **show namespace and namenode ID on NN dfshealth page**
---

* [HDFS-5853](https://issues.apache.org/jira/browse/HDFS-5853) | *Minor* | **Add "hadoop.user.group.metrics.percentiles.intervals" to hdfs-default.xml**
---

* [HDFS-5782](https://issues.apache.org/jira/browse/HDFS-5782) | *Minor* | **BlockListAsLongs should take lists of Replicas rather than concrete classes**
---

* [HDFS-5631](https://issues.apache.org/jira/browse/HDFS-5631) | *Minor* | **Expose interfaces required by FsDatasetSpi implementations**
---

* [HDFS-5578](https://issues.apache.org/jira/browse/HDFS-5578) | *Minor* | **[JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments**
---

* [HDFS-5445](https://issues.apache.org/jira/browse/HDFS-5445) | *Minor* | **PacketReceiver populates the packetLen field in PacketHeader incorrectly**
---

* [HDFS-4266](https://issues.apache.org/jira/browse/HDFS-4266) | *Major* | **BKJM: Separate write and ack quorum**
---

* [HDFS-4265](https://issues.apache.org/jira/browse/HDFS-4265) | *Major* | **BKJM doesn't take advantage of speculative reads**
---

* [HDFS-3689](https://issues.apache.org/jira/browse/HDFS-3689) | *Major* | **Add support for variable length block**

1. HDFS now can choose to append data to a new block instead of end of the last partial block. Users can pass {{CreateFlag.APPEND}} and  {{CreateFlag.NEW\_BLOCK}} to the {{append}} API to indicate this requirement.
2. HDFS now allows users to pass {{SyncFlag.END\_BLOCK}} to the {{hsync}} API to finish the current block and write remaining data to a new block.

---

* [HDFS-3519](https://issues.apache.org/jira/browse/HDFS-3519) | *Critical* | **Checkpoint upload may interfere with a concurrent saveNamespace**
---

* [HDFS-3342](https://issues.apache.org/jira/browse/HDFS-3342) | *Minor* | **SocketTimeoutException in BlockSender.sendChunks could have a better error message**
---

* [HDFS-3107](https://issues.apache.org/jira/browse/HDFS-3107) | *Major* | **HDFS truncate**
---

* [HDFS-2605](https://issues.apache.org/jira/browse/HDFS-2605) | *Major* | **CHANGES.txt has two "Release 0.21.1" sections**
---

* [HDFS-2486](https://issues.apache.org/jira/browse/HDFS-2486) | *Minor* | **Review issues with UnderReplicatedBlocks**
---

* [HDFS-2219](https://issues.apache.org/jira/browse/HDFS-2219) | *Minor* | **Fsck should work with fully qualified file paths.**
---

* [HDFS-1522](https://issues.apache.org/jira/browse/HDFS-1522) | *Major* | **Merge Block.BLOCK\_FILE\_PREFIX and DataStorage.BLOCK\_FILE\_PREFIX into one constant**

This merges Block.BLOCK\_FILE\_PREFIX and DataStorage.BLOCK\_FILE\_PREFIX into one constant. Hard-coded
literals of "blk\_" in various files are also updated to use the same constant.

---

* [HDFS-1362](https://issues.apache.org/jira/browse/HDFS-1362) | *Major* | **Provide volume management functionality for DataNode**

Based on the reconfiguration framework provided by HADOOP-7001, enable reconfigure the dfs.datanode.data.dir and add new volumes into service.

---

* [HDFS-316](https://issues.apache.org/jira/browse/HDFS-316) | *Minor* | **Balancer should run for a configurable # of iterations**
---

* [HDFS-49](https://issues.apache.org/jira/browse/HDFS-49) | *Minor* | **MiniDFSCluster.stopDataNode will always shut down a node in the cluster if a matching name is not found**


