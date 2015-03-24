# Hadoop HDFS 2.6.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-7391](https://issues.apache.org/jira/browse/HDFS-7391) | *Blocker* | **Renable SSLv2Hello in HttpFS**
---

* [HDFS-7387](https://issues.apache.org/jira/browse/HDFS-7387) | *Critical* | **NFS may only do partial commit due to a race between COMMIT and write**
---

* [HDFS-7385](https://issues.apache.org/jira/browse/HDFS-7385) | *Blocker* | **ThreadLocal used in FSEditLog class causes FSImage permission mess up**
---

* [HDFS-7383](https://issues.apache.org/jira/browse/HDFS-7383) | *Major* | **DataNode.requestShortCircuitFdsForRead may throw NullPointerException**
---

* [HDFS-7382](https://issues.apache.org/jira/browse/HDFS-7382) | *Minor* | **DataNode in secure mode may throw NullPointerException if client connects before DataNode registers itself with NameNode.**
---

* [HDFS-7379](https://issues.apache.org/jira/browse/HDFS-7379) | *Minor* | **TestBalancer#testBalancerWithRamDisk creates test files incorrectly**
---

* [HDFS-7367](https://issues.apache.org/jira/browse/HDFS-7367) | *Major* | **HDFS short-circuit read cannot negotiate shared memory slot and file descriptors when SASL is enabled on DataTransferProtocol.**
---

* [HDFS-7364](https://issues.apache.org/jira/browse/HDFS-7364) | *Minor* | **Balancer always shows zero Bytes Already Moved**
---

* [HDFS-7359](https://issues.apache.org/jira/browse/HDFS-7359) | *Major* | **NameNode in secured HA cluster fails to start if dfs.namenode.secondary.http-address cannot be interpreted as a network address.**
---

* [HDFS-7355](https://issues.apache.org/jira/browse/HDFS-7355) | *Trivial* | **TestDataNodeVolumeFailure#testUnderReplicationAfterVolFailure fails on Windows, because we cannot deny access to the file owner.**
---

* [HDFS-7340](https://issues.apache.org/jira/browse/HDFS-7340) | *Major* | **make rollingUpgrade start/finalize idempotent**
---

* [HDFS-7334](https://issues.apache.org/jira/browse/HDFS-7334) | *Minor* | **Fix periodic failures of TestCheckpoint#testTooManyEditReplayFailures**
---

* [HDFS-7328](https://issues.apache.org/jira/browse/HDFS-7328) | *Trivial* | **TestTraceAdmin assumes Unix line endings.**
---

* [HDFS-7313](https://issues.apache.org/jira/browse/HDFS-7313) | *Major* | **Support optional configuration of AES cipher suite on DataTransferProtocol.**
---

* [HDFS-7309](https://issues.apache.org/jira/browse/HDFS-7309) | *Minor* | **XMLUtils.mangleXmlString doesn't seem to handle less than sign**
---

* [HDFS-7305](https://issues.apache.org/jira/browse/HDFS-7305) | *Minor* | **NPE seen in wbhdfs FS while running SLive**
---

* [HDFS-7300](https://issues.apache.org/jira/browse/HDFS-7300) | *Critical* | **The getMaxNodesPerRack() method in BlockPlacementPolicyDefault is flawed**
---

* [HDFS-7296](https://issues.apache.org/jira/browse/HDFS-7296) | *Minor* | **HdfsConstants#MEMORY\_STORAGE\_POLICY\_ID and HdfsConstants#MEMORY\_STORAGE\_POLICY\_ID are missing in branch-2**
---

* [HDFS-7291](https://issues.apache.org/jira/browse/HDFS-7291) | *Major* | **Persist in-memory replicas with appropriate unbuffered copy API on POSIX and Windows**
---

* [HDFS-7287](https://issues.apache.org/jira/browse/HDFS-7287) | *Major* | **The OfflineImageViewer (OIV) can output invalid XML depending on the filename**
---

* [HDFS-7276](https://issues.apache.org/jira/browse/HDFS-7276) | *Major* | **Limit the number of byte arrays used by DFSOutputStream**

The following configuration properties are added.

- dfs.client.write.byte-array-manager.enabled:
for enabling/disabling byte array manger.  Default is false.

- dfs.client.write.byte-array-manager.count-threshold:
The count threshold for each array length so that a manager is created only after the allocation count exceeds the threshold.  In other words, the particular array length is not managed until the allocation count exceeds the threshold.  Default is 128.

- dfs.client.write.byte-array-manager.count-limit:
The maximum number of arrays allowed for each array length.  Default is 2048.

- dfs.client.write.byte-array-manager.count-reset-time-period-ms:
The time period in milliseconds that the allocation count for each array length is reset to zero if there is no increment.  Default is 10,000ms, i.e. 10 seconds.

---

* [HDFS-7274](https://issues.apache.org/jira/browse/HDFS-7274) | *Blocker* | **Disable SSLv3 in HttpFS**
---

* [HDFS-7260](https://issues.apache.org/jira/browse/HDFS-7260) | *Minor* | **Make DFSOutputStream.MAX\_PACKETS configurable**
---

* [HDFS-7259](https://issues.apache.org/jira/browse/HDFS-7259) | *Major* | **Unresponseive NFS mount point due to deferred COMMIT response**
---

* [HDFS-7243](https://issues.apache.org/jira/browse/HDFS-7243) | *Major* | **HDFS concat operation should not be allowed in Encryption Zone**
---

* [HDFS-7237](https://issues.apache.org/jira/browse/HDFS-7237) | *Minor* | **namenode -rollingUpgrade throws ArrayIndexOutOfBoundsException**
---

* [HDFS-7236](https://issues.apache.org/jira/browse/HDFS-7236) | *Major* | **Fix TestOpenFilesWithSnapshot#testOpenFilesWithMultipleSnapshots**
---

* [HDFS-7233](https://issues.apache.org/jira/browse/HDFS-7233) | *Major* | **NN logs unnecessary org.apache.hadoop.hdfs.protocol.UnresolvedPathException**
---

* [HDFS-7230](https://issues.apache.org/jira/browse/HDFS-7230) | *Major* | **Add rolling downgrade documentation**
---

* [HDFS-7228](https://issues.apache.org/jira/browse/HDFS-7228) | *Major* | **Add an SSD policy into the default BlockStoragePolicySuite**
---

* [HDFS-7226](https://issues.apache.org/jira/browse/HDFS-7226) | *Major* | **TestDNFencing.testQueueingWithAppend failed often in latest test**
---

* [HDFS-7221](https://issues.apache.org/jira/browse/HDFS-7221) | *Minor* | **TestDNFencingWithReplication fails consistently**
---

* [HDFS-7218](https://issues.apache.org/jira/browse/HDFS-7218) | *Minor* | **FSNamesystem ACL operations should write to audit log on failure**
---

* [HDFS-7217](https://issues.apache.org/jira/browse/HDFS-7217) | *Major* | **Better batching of IBRs**
---

* [HDFS-7215](https://issues.apache.org/jira/browse/HDFS-7215) | *Minor* | **Add JvmPauseMonitor to NFS gateway**
---

* [HDFS-7208](https://issues.apache.org/jira/browse/HDFS-7208) | *Major* | **NN doesn't schedule replication when a DN storage fails**
---

* [HDFS-7199](https://issues.apache.org/jira/browse/HDFS-7199) | *Critical* | **DFSOutputStream should not silently drop data if DataStreamer crashes with an unchecked exception**
---

* [HDFS-7195](https://issues.apache.org/jira/browse/HDFS-7195) | *Major* | **Update user doc of secure mode about Datanodes don't require root or jsvc**
---

* [HDFS-7185](https://issues.apache.org/jira/browse/HDFS-7185) | *Major* | **The active NameNode will not accept an fsimage sent from the standby during rolling upgrade**
---

* [HDFS-7181](https://issues.apache.org/jira/browse/HDFS-7181) | *Critical* | **Remove incorrect precondition check on key length in FileEncryptionInfo**
---

* [HDFS-7180](https://issues.apache.org/jira/browse/HDFS-7180) | *Critical* | **NFSv3 gateway frequently gets stuck due to GC**
---

* [HDFS-7179](https://issues.apache.org/jira/browse/HDFS-7179) | *Critical* | **DFSClient should instantiate a KeyProvider, not a KeyProviderCryptoExtension**
---

* [HDFS-7178](https://issues.apache.org/jira/browse/HDFS-7178) | *Major* | **Additional unit test for replica write with full disk**
---

* [HDFS-7176](https://issues.apache.org/jira/browse/HDFS-7176) | *Minor* | **The namenode usage message doesn't include "-rollingupgrade started"**
---

* [HDFS-7172](https://issues.apache.org/jira/browse/HDFS-7172) | *Trivial* | **Test data files may be checked out of git with incorrect line endings, causing test failures in TestHDFSCLI.**
---

* [HDFS-7171](https://issues.apache.org/jira/browse/HDFS-7171) | *Major* | **Fix Jenkins failures in HDFS-6581 branch**
---

* [HDFS-7169](https://issues.apache.org/jira/browse/HDFS-7169) | *Minor* | **Fix a findbugs warning in ReplaceDatanodeOnFailure**
---

* [HDFS-7167](https://issues.apache.org/jira/browse/HDFS-7167) | *Major* | **NPE while running Mover if the given path is for a file**
---

* [HDFS-7162](https://issues.apache.org/jira/browse/HDFS-7162) | *Major* | **Wrong path when deleting through fuse-dfs a file which already exists in trash**
---

* [HDFS-7159](https://issues.apache.org/jira/browse/HDFS-7159) | *Major* | **Use block storage policy to set lazy persist preference**
---

* [HDFS-7158](https://issues.apache.org/jira/browse/HDFS-7158) | *Major* | **Reduce the memory usage of WebImageViewer**
---

* [HDFS-7157](https://issues.apache.org/jira/browse/HDFS-7157) | *Major* | **Using Time.now() for recording start/end time of reconfiguration tasks**
---

* [HDFS-7156](https://issues.apache.org/jira/browse/HDFS-7156) | *Major* | **Fsck documentation is outdated.**
---

* [HDFS-7155](https://issues.apache.org/jira/browse/HDFS-7155) | *Major* | **Bugfix in createLocatedFileStatus caused by bad merge**
---

* [HDFS-7154](https://issues.apache.org/jira/browse/HDFS-7154) | *Major* | **Fix returning value of starting reconfiguration task**
---

* [HDFS-7153](https://issues.apache.org/jira/browse/HDFS-7153) | *Major* | **Add storagePolicy to NN edit log during file creation**
---

* [HDFS-7148](https://issues.apache.org/jira/browse/HDFS-7148) | *Major* | **TestEncryptionZones#testIsEncryptedMethod fails on branch-2 after archival storage merge**
---

* [HDFS-7147](https://issues.apache.org/jira/browse/HDFS-7147) | *Blocker* | **Update archival storage user documentation**
---

* [HDFS-7144](https://issues.apache.org/jira/browse/HDFS-7144) | *Minor* | **Fix findbugs warnings in RamDiskReplicaTracker**
---

* [HDFS-7143](https://issues.apache.org/jira/browse/HDFS-7143) | *Major* | **Fix findbugs warnings in HDFS-6581 branch**
---

* [HDFS-7140](https://issues.apache.org/jira/browse/HDFS-7140) | *Minor* | **Add a tool to list all the existing block storage policies**
---

* [HDFS-7139](https://issues.apache.org/jira/browse/HDFS-7139) | *Minor* | **Unit test for creating encryption zone on root path**
---

* [HDFS-7138](https://issues.apache.org/jira/browse/HDFS-7138) | *Major* | **Fix hftp to work with encryption**
---

* [HDFS-7132](https://issues.apache.org/jira/browse/HDFS-7132) | *Minor* | **hdfs namenode -metadataVersion command does not honor configured name dirs**
---

* [HDFS-7131](https://issues.apache.org/jira/browse/HDFS-7131) | *Major* | **During HA upgrade, JournalNode should create a new committedTxnId file in the current directory**
---

* [HDFS-7130](https://issues.apache.org/jira/browse/HDFS-7130) | *Major* | **TestDataTransferKeepalive fails intermittently on Windows.**
---

* [HDFS-7129](https://issues.apache.org/jira/browse/HDFS-7129) | *Major* | **Metrics to track usage of memory for writes**
---

* [HDFS-7128](https://issues.apache.org/jira/browse/HDFS-7128) | *Major* | **Decommission slows way down when it gets towards the end**
---

* [HDFS-7127](https://issues.apache.org/jira/browse/HDFS-7127) | *Major* | **TestLeaseRecovery leaks MiniDFSCluster instances.**
---

* [HDFS-7126](https://issues.apache.org/jira/browse/HDFS-7126) | *Minor* | **TestEncryptionZonesWithHA assumes Unix path separator for KMS key store path**
---

* [HDFS-7124](https://issues.apache.org/jira/browse/HDFS-7124) | *Minor* | **Remove EncryptionZoneManager.NULL\_EZ**
---

* [HDFS-7122](https://issues.apache.org/jira/browse/HDFS-7122) | *Blocker* | **Use of ThreadLocal<Random> results in poor block placement**
---

* [HDFS-7119](https://issues.apache.org/jira/browse/HDFS-7119) | *Minor* | **Split error checks in AtomicFileOutputStream#close into separate conditions to improve diagnostics.**
---

* [HDFS-7118](https://issues.apache.org/jira/browse/HDFS-7118) | *Major* | **Improve diagnostics on storage directory rename operations by using NativeIO#renameTo in Storage#rename.**
---

* [HDFS-7115](https://issues.apache.org/jira/browse/HDFS-7115) | *Major* | **TestEncryptionZones assumes Unix path separator for KMS key store path**
---

* [HDFS-7112](https://issues.apache.org/jira/browse/HDFS-7112) | *Major* | **LazyWriter should use either async IO or one thread per physical disk**
---

* [HDFS-7111](https://issues.apache.org/jira/browse/HDFS-7111) | *Trivial* | **TestSafeMode assumes Unix line endings in safe mode tip.**
---

* [HDFS-7110](https://issues.apache.org/jira/browse/HDFS-7110) | *Minor* | **Skip tests related to short-circuit read on platforms that do not currently implement short-circuit read.**
---

* [HDFS-7109](https://issues.apache.org/jira/browse/HDFS-7109) | *Minor* | **TestDataStorage does not release file locks between tests.**
---

* [HDFS-7108](https://issues.apache.org/jira/browse/HDFS-7108) | *Major* | **Fix unit test failures in SimulatedFsDataset**
---

* [HDFS-7107](https://issues.apache.org/jira/browse/HDFS-7107) | *Trivial* | **Avoid Findbugs warning for synchronization on AbstractNNFailoverProxyProvider#fallbackToSimpleAuth.**
---

* [HDFS-7106](https://issues.apache.org/jira/browse/HDFS-7106) | *Major* | **Reconfiguring DataNode volumes does not release the lock files in removed volumes.**
---

* [HDFS-7105](https://issues.apache.org/jira/browse/HDFS-7105) | *Minor* | **Fix TestJournalNode#testFailToStartWithBadConfig to match log output change**
---

* [HDFS-7104](https://issues.apache.org/jira/browse/HDFS-7104) | *Minor* | **Fix and clarify INodeInPath getter functions**
---

* [HDFS-7100](https://issues.apache.org/jira/browse/HDFS-7100) | *Major* | **Make eviction scheme pluggable**
---

* [HDFS-7096](https://issues.apache.org/jira/browse/HDFS-7096) | *Minor* | **Fix TestRpcProgramNfs3 to use DFS\_ENCRYPTION\_KEY\_PROVIDER\_URI**
---

* [HDFS-7095](https://issues.apache.org/jira/browse/HDFS-7095) | *Minor* | **TestStorageMover often fails in Jenkins**
---

* [HDFS-7093](https://issues.apache.org/jira/browse/HDFS-7093) | *Major* | **Add config key to restrict setStoragePolicy**
---

* [HDFS-7091](https://issues.apache.org/jira/browse/HDFS-7091) | *Minor* | **Add forwarding constructor for INodeFile for existing callers**

Thanks Nicholas! Revised title and committed to the feature branch.

---

* [HDFS-7090](https://issues.apache.org/jira/browse/HDFS-7090) | *Major* | **Use unbuffered writes when persisting in-memory replicas**
---

* [HDFS-7084](https://issues.apache.org/jira/browse/HDFS-7084) | *Minor* | **FsDatasetImpl#copyBlockFiles debug log can be improved**
---

* [HDFS-7081](https://issues.apache.org/jira/browse/HDFS-7081) | *Major* | **Add new DistributedFileSystem API for getting all the existing storage policies**
---

* [HDFS-7080](https://issues.apache.org/jira/browse/HDFS-7080) | *Major* | **Fix finalize and upgrade unit test failures**
---

* [HDFS-7079](https://issues.apache.org/jira/browse/HDFS-7079) | *Major* | **Few more unit test fixes for HDFS-6581**
---

* [HDFS-7078](https://issues.apache.org/jira/browse/HDFS-7078) | *Major* | **Fix listEZs to work correctly with snapshots**
---

* [HDFS-7077](https://issues.apache.org/jira/browse/HDFS-7077) | *Major* | **Separate CipherSuite from crypto protocol version**
---

* [HDFS-7075](https://issues.apache.org/jira/browse/HDFS-7075) | *Major* | **hadoop-fuse-dfs fails because it cannot find JavaKeyStoreProvider$Factory**
---

* [HDFS-7073](https://issues.apache.org/jira/browse/HDFS-7073) | *Major* | **Allow falling back to a non-SASL connection on DataTransferProtocol in several edge cases.**
---

* [HDFS-7066](https://issues.apache.org/jira/browse/HDFS-7066) | *Minor* | **LazyWriter#evictBlocks misses a null check for replicaState**
---

* [HDFS-7065](https://issues.apache.org/jira/browse/HDFS-7065) | *Critical* | **Pipeline close recovery race can cause block corruption**
---

* [HDFS-7064](https://issues.apache.org/jira/browse/HDFS-7064) | *Major* | **Fix unit test failures in HDFS-6581 branch**
---

* [HDFS-7061](https://issues.apache.org/jira/browse/HDFS-7061) | *Minor* | **Add test to verify encryption zone creation after NameNode restart without saving namespace**
---

* [HDFS-7059](https://issues.apache.org/jira/browse/HDFS-7059) | *Minor* | **HAadmin transtionToActive with forceActive option can show confusing message.**
---

* [HDFS-7051](https://issues.apache.org/jira/browse/HDFS-7051) | *Minor* | **TestDataNodeRollingUpgrade#isBlockFileInPrevious assumes Unix file path separator.**
---

* [HDFS-7049](https://issues.apache.org/jira/browse/HDFS-7049) | *Minor* | **TestByteRangeInputStream.testPropagatedClose fails and throw NPE on branch-2**
---

* [HDFS-7047](https://issues.apache.org/jira/browse/HDFS-7047) | *Major* | **Expose FileStatus#isEncrypted in libhdfs**
---

* [HDFS-7046](https://issues.apache.org/jira/browse/HDFS-7046) | *Critical* | **HA NN can NPE upon transition to active**

Thanks for the reviews, gentlemen. It's been committed to trunk and branch-2.

---

* [HDFS-7045](https://issues.apache.org/jira/browse/HDFS-7045) | *Critical* | **Fix NameNode deadlock when opening file under /.reserved path**
---

* [HDFS-7042](https://issues.apache.org/jira/browse/HDFS-7042) | *Blocker* | **Upgrade fails for Windows HA cluster due to file locks held during rename in JournalNode.**
---

* [HDFS-7032](https://issues.apache.org/jira/browse/HDFS-7032) | *Major* | **Add WebHDFS support for reading and writing to encryption zones**
---

* [HDFS-7025](https://issues.apache.org/jira/browse/HDFS-7025) | *Major* | **HDFS Credential Provider related  Unit Test Failure**
---

* [HDFS-7006](https://issues.apache.org/jira/browse/HDFS-7006) | *Major* | **Test encryption zones with KMS**
---

* [HDFS-7005](https://issues.apache.org/jira/browse/HDFS-7005) | *Critical* | **DFS input streams do not timeout**
---

* [HDFS-7004](https://issues.apache.org/jira/browse/HDFS-7004) | *Major* | **Update KeyProvider instantiation to create by URI**
---

* [HDFS-7003](https://issues.apache.org/jira/browse/HDFS-7003) | *Major* | **Add NFS Gateway support for reading and writing to encryption zones**
---

* [HDFS-7001](https://issues.apache.org/jira/browse/HDFS-7001) | *Minor* | **Tests in TestTracing should not depend on the order of execution**
---

* [HDFS-6996](https://issues.apache.org/jira/browse/HDFS-6996) | *Major* | **SnapshotDiff report can hit IndexOutOfBoundsException when there are nested renamed directory/file**
---

* [HDFS-6995](https://issues.apache.org/jira/browse/HDFS-6995) | *Major* | **Block should be placed in the client's 'rack-local' node if 'client-local' node is not available**
---

* [HDFS-6991](https://issues.apache.org/jira/browse/HDFS-6991) | *Major* | **Notify NN of evicted block before deleting it from RAM disk**
---

* [HDFS-6990](https://issues.apache.org/jira/browse/HDFS-6990) | *Major* | **Add unit test for evict/delete RAM\_DISK block with open handle**
---

* [HDFS-6988](https://issues.apache.org/jira/browse/HDFS-6988) | *Major* | **Improve HDFS-6581 eviction configuration**
---

* [HDFS-6987](https://issues.apache.org/jira/browse/HDFS-6987) | *Major* | **Move CipherSuite xattr information up to the encryption zone root**
---

* [HDFS-6986](https://issues.apache.org/jira/browse/HDFS-6986) | *Major* | **DistributedFileSystem must get delegation tokens from configured KeyProvider**
---

* [HDFS-6981](https://issues.apache.org/jira/browse/HDFS-6981) | *Major* | **Fix DN upgrade with layout version change**
---

* [HDFS-6979](https://issues.apache.org/jira/browse/HDFS-6979) | *Minor* | **hdfs.dll does not produce .pdb files**
---

* [HDFS-6978](https://issues.apache.org/jira/browse/HDFS-6978) | *Major* | **Directory scanner should correctly reconcile blocks on RAM disk**
---

* [HDFS-6977](https://issues.apache.org/jira/browse/HDFS-6977) | *Major* | **Delete all copies when a block is deleted from the block space**
---

* [HDFS-6972](https://issues.apache.org/jira/browse/HDFS-6972) | *Major* | **TestRefreshUserMappings.testRefreshSuperUserGroupsConfiguration doesn't decode url correctly**
---

* [HDFS-6970](https://issues.apache.org/jira/browse/HDFS-6970) | *Major* | **Move startFile EDEK retries to the DFSClient**
---

* [HDFS-6966](https://issues.apache.org/jira/browse/HDFS-6966) | *Major* | **Add additional unit tests for encryption zones**
---

* [HDFS-6965](https://issues.apache.org/jira/browse/HDFS-6965) | *Major* | **NN continues to issue block locations for DNs with full disks**
---

* [HDFS-6960](https://issues.apache.org/jira/browse/HDFS-6960) | *Major* | **Bugfix in LazyWriter, fix test case and some refactoring**
---

* [HDFS-6959](https://issues.apache.org/jira/browse/HDFS-6959) | *Minor* | **Make the HDFS home directory location customizable.**
---

* [HDFS-6956](https://issues.apache.org/jira/browse/HDFS-6956) | *Major* | **Allow dynamically changing the tracing level in Hadoop servers**
---

* [HDFS-6954](https://issues.apache.org/jira/browse/HDFS-6954) | *Major* | **With crypto, no native lib systems are too verbose**
---

* [HDFS-6951](https://issues.apache.org/jira/browse/HDFS-6951) | *Major* | **Correctly persist raw namespace xattrs to edit log and fsimage**
---

* [HDFS-6950](https://issues.apache.org/jira/browse/HDFS-6950) | *Major* | **Add Additional unit tests for HDFS-6581**
---

* [HDFS-6948](https://issues.apache.org/jira/browse/HDFS-6948) | *Major* | **DN rejects blocks if it has older UC block**
---

* [HDFS-6943](https://issues.apache.org/jira/browse/HDFS-6943) | *Minor* | **Improve NN allocateBlock log to include replicas' datanode IPs**
---

* [HDFS-6942](https://issues.apache.org/jira/browse/HDFS-6942) | *Trivial* | **Fix typos in log messages**
---

* [HDFS-6934](https://issues.apache.org/jira/browse/HDFS-6934) | *Major* | **Move checksum computation off the hot path when writing to RAM disk**
---

* [HDFS-6932](https://issues.apache.org/jira/browse/HDFS-6932) | *Major* | **Balancer and Mover tools should ignore replicas on RAM\_DISK**
---

* [HDFS-6931](https://issues.apache.org/jira/browse/HDFS-6931) | *Major* | **Move lazily persisted replicas to finalized directory on DN startup**
---

* [HDFS-6930](https://issues.apache.org/jira/browse/HDFS-6930) | *Major* | **Improve replica eviction from RAM disk**
---

* [HDFS-6929](https://issues.apache.org/jira/browse/HDFS-6929) | *Major* | **NN periodically unlinks lazy persist files with missing replicas from namespace**
---

* [HDFS-6928](https://issues.apache.org/jira/browse/HDFS-6928) | *Major* | **'hdfs put' command should accept lazyPersist flag for testing**
---

* [HDFS-6927](https://issues.apache.org/jira/browse/HDFS-6927) | *Major* | **Add unit tests**
---

* [HDFS-6926](https://issues.apache.org/jira/browse/HDFS-6926) | *Major* | **DN support for saving replicas to persistent storage and evicting in-memory replicas**
---

* [HDFS-6925](https://issues.apache.org/jira/browse/HDFS-6925) | *Major* | **DataNode should attempt to place replicas on transient storage first if lazyPersist flag is received**
---

* [HDFS-6924](https://issues.apache.org/jira/browse/HDFS-6924) | *Major* | **Add new RAM\_DISK storage type**
---

* [HDFS-6923](https://issues.apache.org/jira/browse/HDFS-6923) | *Major* | **Propagate LazyPersist flag to DNs via DataTransferProtocol**
---

* [HDFS-6921](https://issues.apache.org/jira/browse/HDFS-6921) | *Major* | **Add LazyPersist flag to FileStatus**
---

* [HDFS-6912](https://issues.apache.org/jira/browse/HDFS-6912) | *Minor* | **SharedFileDescriptorFactory should not allocate sparse files**
---

* [HDFS-6908](https://issues.apache.org/jira/browse/HDFS-6908) | *Critical* | **incorrect snapshot directory diff generated by snapshot deletion**
---

* [HDFS-6905](https://issues.apache.org/jira/browse/HDFS-6905) | *Blocker* | **fs-encryption merge triggered release audit failures**
---

* [HDFS-6904](https://issues.apache.org/jira/browse/HDFS-6904) | *Critical* | **YARN unable to renew delegation token fetched via webhdfs due to incorrect service port**
---

* [HDFS-6902](https://issues.apache.org/jira/browse/HDFS-6902) | *Minor* | **FileWriter should be closed in finally block in BlockReceiver#receiveBlock()**
---

* [HDFS-6899](https://issues.apache.org/jira/browse/HDFS-6899) | *Major* | **Allow changing MiniDFSCluster volumes per DN and capacity per volume**
---

* [HDFS-6894](https://issues.apache.org/jira/browse/HDFS-6894) | *Major* | **Add XDR parser method for each NFS response**
---

* [HDFS-6892](https://issues.apache.org/jira/browse/HDFS-6892) | *Major* | **Add XDR packaging method for each NFS request**
---

* [HDFS-6890](https://issues.apache.org/jira/browse/HDFS-6890) | *Major* | **NFS readdirplus doesn't return dotdot attributes**
---

* [HDFS-6886](https://issues.apache.org/jira/browse/HDFS-6886) | *Critical* | **Use single editlog record for creating file + overwrite.**
---

* [HDFS-6880](https://issues.apache.org/jira/browse/HDFS-6880) | *Major* | **Adding tracing to DataNode data transfer protocol**
---

* [HDFS-6879](https://issues.apache.org/jira/browse/HDFS-6879) | *Major* | **Adding tracing to Hadoop RPC**
---

* [HDFS-6878](https://issues.apache.org/jira/browse/HDFS-6878) | *Minor* | **Change MiniDFSCluster to support StorageType configuration for individual directories**
---

* [HDFS-6870](https://issues.apache.org/jira/browse/HDFS-6870) | *Major* | **Blocks and INodes could leak for Rename with overwrite flag**
---

* [HDFS-6868](https://issues.apache.org/jira/browse/HDFS-6868) | *Major* | **portmap and nfs3 are documented as hadoop commands instead of hdfs**
---

* [HDFS-6865](https://issues.apache.org/jira/browse/HDFS-6865) | *Major* | **Byte array native checksumming on client side (HDFS changes)**
---

* [HDFS-6862](https://issues.apache.org/jira/browse/HDFS-6862) | *Major* | **Add missing timeout annotations to tests**
---

* [HDFS-6858](https://issues.apache.org/jira/browse/HDFS-6858) | *Minor* | **Allow dfs.data.transfer.saslproperties.resolver.class default to hadoop.security.saslproperties.resolver.class**
---

* [HDFS-6851](https://issues.apache.org/jira/browse/HDFS-6851) | *Major* | **Refactor EncryptionZoneWithId and EncryptionZone**
---

* [HDFS-6850](https://issues.apache.org/jira/browse/HDFS-6850) | *Minor* | **Move NFS out of order write unit tests into TestWrites class**
---

* [HDFS-6849](https://issues.apache.org/jira/browse/HDFS-6849) | *Major* | **Replace HttpFS custom proxyuser handling with common implementation**
---

* [HDFS-6848](https://issues.apache.org/jira/browse/HDFS-6848) | *Minor* | **Lack of synchronization on access to datanodeUuid in DataStorage#format()**
---

* [HDFS-6843](https://issues.apache.org/jira/browse/HDFS-6843) | *Major* | **Create FileStatus isEncrypted() method**
---

* [HDFS-6840](https://issues.apache.org/jira/browse/HDFS-6840) | *Critical* | **Clients are always sent to the same datanode when read is off rack**
---

* [HDFS-6838](https://issues.apache.org/jira/browse/HDFS-6838) | *Minor* | **Code cleanup for unnecessary INode replacement**
---

* [HDFS-6837](https://issues.apache.org/jira/browse/HDFS-6837) | *Minor* | **Code cleanup for Balancer and Dispatcher**
---

* [HDFS-6836](https://issues.apache.org/jira/browse/HDFS-6836) | *Major* | **HDFS INFO logging is verbose & uses file appenders**
---

* [HDFS-6831](https://issues.apache.org/jira/browse/HDFS-6831) | *Minor* | **Inconsistency between 'hdfs dfsadmin' and 'hdfs dfsadmin -help'**
---

* [HDFS-6830](https://issues.apache.org/jira/browse/HDFS-6830) | *Major* | **BlockInfo.addStorage fails when DN changes the storage for a block replica**
---

* [HDFS-6829](https://issues.apache.org/jira/browse/HDFS-6829) | *Minor* | **DFSAdmin refreshSuperUserGroupsConfiguration failed in security cluster**
---

* [HDFS-6828](https://issues.apache.org/jira/browse/HDFS-6828) | *Major* | **Separate block replica dispatching from Balancer**
---

* [HDFS-6825](https://issues.apache.org/jira/browse/HDFS-6825) | *Major* | **Edit log corruption due to delayed block removal**
---

* [HDFS-6823](https://issues.apache.org/jira/browse/HDFS-6823) | *Minor* | **dfs.web.authentication.kerberos.principal shows up in logs for insecure HDFS**
---

* [HDFS-6812](https://issues.apache.org/jira/browse/HDFS-6812) | *Minor* | **Remove addBlock and replaceBlock from DatanodeDescriptor**
---

* [HDFS-6810](https://issues.apache.org/jira/browse/HDFS-6810) | *Minor* | **StorageReport array is initialized with wrong size in DatanodeDescriptor#getStorageReports**
---

* [HDFS-6809](https://issues.apache.org/jira/browse/HDFS-6809) | *Minor* | **Move some Balancer's inner classes to standalone classes**
---

* [HDFS-6808](https://issues.apache.org/jira/browse/HDFS-6808) | *Major* | **Add command line option to ask DataNode reload configuration.**
---

* [HDFS-6802](https://issues.apache.org/jira/browse/HDFS-6802) | *Major* | **Some tests in TestDFSClientFailover are missing @Test annotation**
---

* [HDFS-6800](https://issues.apache.org/jira/browse/HDFS-6800) | *Major* | **Support Datanode layout changes with rolling upgrade**
---

* [HDFS-6799](https://issues.apache.org/jira/browse/HDFS-6799) | *Minor* | **The invalidate method in SimulatedFSDataset.java failed to remove (invalidate) blocks from the file system.**
---

* [HDFS-6798](https://issues.apache.org/jira/browse/HDFS-6798) | *Major* | **Add test case for incorrect data node condition during balancing**
---

* [HDFS-6797](https://issues.apache.org/jira/browse/HDFS-6797) | *Major* | **DataNode logs wrong layoutversion during upgrade**
---

* [HDFS-6796](https://issues.apache.org/jira/browse/HDFS-6796) | *Minor* | **Improving the argument check during balancer command line parsing**
---

* [HDFS-6794](https://issues.apache.org/jira/browse/HDFS-6794) | *Minor* | **Update BlockManager methods to use DatanodeStorageInfo where possible**
---

* [HDFS-6791](https://issues.apache.org/jira/browse/HDFS-6791) | *Major* | **A block could remain under replicated if all of its replicas are on decommissioned nodes**
---

* [HDFS-6790](https://issues.apache.org/jira/browse/HDFS-6790) | *Major* | **DFSUtil Should Use configuration.getPassword for SSL passwords**
---

* [HDFS-6789](https://issues.apache.org/jira/browse/HDFS-6789) | *Major* | **TestDFSClientFailover.testFileContextDoesntDnsResolveLogicalURI and TestDFSClientFailover.testDoesntDnsResolveLogicalURI failing on jdk7**
---

* [HDFS-6788](https://issues.apache.org/jira/browse/HDFS-6788) | *Major* | **Improve synchronization in BPOfferService with read write lock**
---

* [HDFS-6787](https://issues.apache.org/jira/browse/HDFS-6787) | *Major* | **Remove duplicate code in FSDirectory#unprotectedConcat**
---

* [HDFS-6783](https://issues.apache.org/jira/browse/HDFS-6783) | *Major* | **Fix HDFS CacheReplicationMonitor rescan logic**
---

* [HDFS-6781](https://issues.apache.org/jira/browse/HDFS-6781) | *Major* | **Separate HDFS commands from CommandsManual.apt.vm**
---

* [HDFS-6779](https://issues.apache.org/jira/browse/HDFS-6779) | *Minor* | **Add missing version subcommand for hdfs**
---

* [HDFS-6778](https://issues.apache.org/jira/browse/HDFS-6778) | *Major* | **The extended attributes javadoc should simply refer to the user docs**
---

* [HDFS-6777](https://issues.apache.org/jira/browse/HDFS-6777) | *Major* | **Supporting consistent edit log reads when in-progress edit log segments are included**
---

* [HDFS-6776](https://issues.apache.org/jira/browse/HDFS-6776) | *Major* | **Using distcp to copy data between insecure and secure cluster via webdhfs doesn't work**
---

* [HDFS-6774](https://issues.apache.org/jira/browse/HDFS-6774) | *Major* | **Make FsDataset and DataStore support removing volumes.**
---

* [HDFS-6773](https://issues.apache.org/jira/browse/HDFS-6773) | *Major* | **MiniDFSCluster should skip edit log fsync by default**
---

* [HDFS-6772](https://issues.apache.org/jira/browse/HDFS-6772) | *Major* | **Get DN storages out of blockContentsStale state faster after NN restarts**
---

* [HDFS-6768](https://issues.apache.org/jira/browse/HDFS-6768) | *Major* | **Fix a few unit tests that use hard-coded port numbers**
---

* [HDFS-6758](https://issues.apache.org/jira/browse/HDFS-6758) | *Major* | **block writer should pass the expected block size to DataXceiverServer**
---

* [HDFS-6755](https://issues.apache.org/jira/browse/HDFS-6755) | *Major* | **There is an unnecessary sleep in the code path where DFSOutputStream#close gives up its attempt to contact the namenode**
---

* [HDFS-6754](https://issues.apache.org/jira/browse/HDFS-6754) | *Major* | **TestNamenodeCapacityReport.testXceiverCount may sometimes fail due to lack of retry**
---

* [HDFS-6750](https://issues.apache.org/jira/browse/HDFS-6750) | *Major* | **The DataNode should use its shared memory segment to mark short-circuit replicas that have been unlinked as stale**
---

* [HDFS-6749](https://issues.apache.org/jira/browse/HDFS-6749) | *Major* | **FSNamesystem methods should call resolvePath**
---

* [HDFS-6740](https://issues.apache.org/jira/browse/HDFS-6740) | *Major* | **Make FSDataset support adding data volumes dynamically**
---

* [HDFS-6739](https://issues.apache.org/jira/browse/HDFS-6739) | *Major* | **Add getDatanodeStorageReport to ClientProtocol**
---

* [HDFS-6731](https://issues.apache.org/jira/browse/HDFS-6731) | *Major* | **Run "hdfs zkfc-formatZK" on a server in a non-namenode  will cause a null pointer exception.**
---

* [HDFS-6728](https://issues.apache.org/jira/browse/HDFS-6728) | *Major* | **Dynamically add new volumes to DataStorage, formatted if necessary.**
---

* [HDFS-6727](https://issues.apache.org/jira/browse/HDFS-6727) | *Major* | **Refresh data volumes on DataNode based on configuration changes**
---

* [HDFS-6722](https://issues.apache.org/jira/browse/HDFS-6722) | *Major* | **Display readable last contact time for dead nodes on NN webUI**
---

* [HDFS-6717](https://issues.apache.org/jira/browse/HDFS-6717) | *Minor* | **Jira HDFS-5804 breaks default nfs-gateway behavior for unsecured config**
---

* [HDFS-6715](https://issues.apache.org/jira/browse/HDFS-6715) | *Major* | **webhdfs wont fail over when it gets java.io.IOException: Namenode is in startup mode**
---

* [HDFS-6714](https://issues.apache.org/jira/browse/HDFS-6714) | *Minor* | **TestBlocksScheduledCounter#testBlocksScheduledCounter should shutdown cluster**
---

* [HDFS-6705](https://issues.apache.org/jira/browse/HDFS-6705) | *Major* | **Create an XAttr that disallows the HDFS admin from accessing a file**
---

* [HDFS-6704](https://issues.apache.org/jira/browse/HDFS-6704) | *Minor* | **Fix the command to launch JournalNode in HDFS-HA document**
---

* [HDFS-6702](https://issues.apache.org/jira/browse/HDFS-6702) | *Major* | **DFSClient should create blocks using StorageType**
---

* [HDFS-6701](https://issues.apache.org/jira/browse/HDFS-6701) | *Major* | **Make seed optional in NetworkTopology#sortByDistance**
---

* [HDFS-6700](https://issues.apache.org/jira/browse/HDFS-6700) | *Minor* | **BlockPlacementPolicy shoud choose storage but not datanode for deletion**
---

* [HDFS-6693](https://issues.apache.org/jira/browse/HDFS-6693) | *Major* | **TestDFSAdminWithHA fails on windows**
---

* [HDFS-6690](https://issues.apache.org/jira/browse/HDFS-6690) | *Major* | **Deduplicate xattr names in memory**
---

* [HDFS-6689](https://issues.apache.org/jira/browse/HDFS-6689) | *Major* | **NFS doesn't return correct lookup access for directories**
---

* [HDFS-6685](https://issues.apache.org/jira/browse/HDFS-6685) | *Major* | **Balancer should preserve storage type of replicas**
---

* [HDFS-6678](https://issues.apache.org/jira/browse/HDFS-6678) | *Minor* | **MiniDFSCluster may still be partially running after initialization fails.**
---

* [HDFS-6667](https://issues.apache.org/jira/browse/HDFS-6667) | *Major* | **In HDFS HA mode, Distcp/SLive with webhdfs on secure cluster fails with Client cannot authenticate via:[TOKEN, KERBEROS] error**
---

* [HDFS-6665](https://issues.apache.org/jira/browse/HDFS-6665) | *Major* | **Add tests for XAttrs in combination with viewfs**
---

* [HDFS-6664](https://issues.apache.org/jira/browse/HDFS-6664) | *Trivial* | **HDFS permissions guide documentation states incorrect default group mapping class.**
---

* [HDFS-6655](https://issues.apache.org/jira/browse/HDFS-6655) | *Major* | **Add 'header banner' to 'explorer.html' also in Namenode UI**
---

* [HDFS-6646](https://issues.apache.org/jira/browse/HDFS-6646) | *Major* | **[ HDFS Rolling Upgrade - Shell  ] shutdownDatanode and getDatanodeInfo usage is missed**
---

* [HDFS-6645](https://issues.apache.org/jira/browse/HDFS-6645) | *Minor* | **Add test for successive Snapshots between XAttr modifications**
---

* [HDFS-6643](https://issues.apache.org/jira/browse/HDFS-6643) | *Minor* | **Refactor INodeFile.HeaderFormat and INodeWithAdditionalFields.PermissionStatusFormat**
---

* [HDFS-6640](https://issues.apache.org/jira/browse/HDFS-6640) | *Major* | **[ Web HDFS ] Syntax for MKDIRS, CREATESYMLINK, and SETXATTR are given wrongly(missed webhdfs/v1).).**
---

* [HDFS-6638](https://issues.apache.org/jira/browse/HDFS-6638) | *Major* | **shorten test run time with a smaller retry timeout setting**
---

* [HDFS-6634](https://issues.apache.org/jira/browse/HDFS-6634) | *Major* | **inotify in HDFS**
---

* [HDFS-6630](https://issues.apache.org/jira/browse/HDFS-6630) | *Major* | **Unable to fetch the block information  by Browsing the file system on Namenode UI through IE9**
---

* [HDFS-6627](https://issues.apache.org/jira/browse/HDFS-6627) | *Major* | **Rename DataNode#checkWriteAccess to checkReadAccess.**
---

* [HDFS-6621](https://issues.apache.org/jira/browse/HDFS-6621) | *Major* | **Hadoop Balancer prematurely exits iterations**
---

* [HDFS-6617](https://issues.apache.org/jira/browse/HDFS-6617) | *Minor* | **Flake TestDFSZKFailoverController.testManualFailoverWithDFSHAAdmin due to a long edit log sync op**
---

* [HDFS-6616](https://issues.apache.org/jira/browse/HDFS-6616) | *Minor* | **bestNode shouldn't always return the first DataNode**
---

* [HDFS-6613](https://issues.apache.org/jira/browse/HDFS-6613) | *Minor* | **Improve logging in caching classes**
---

* [HDFS-6609](https://issues.apache.org/jira/browse/HDFS-6609) | *Major* | **Use DirectorySnapshottableFeature to represent a snapshottable directory**
---

* [HDFS-6606](https://issues.apache.org/jira/browse/HDFS-6606) | *Major* | **Optimize HDFS Encrypted Transport performance**

HDFS now supports the option to configure AES encryption for block data transfer.  AES offers improved cryptographic strength and performance over the prior options of 3DES and RC4.

---

* [HDFS-6597](https://issues.apache.org/jira/browse/HDFS-6597) | *Major* | **Add a new option to NN upgrade to terminate the process after upgrade on NN is completed**
---

* [HDFS-6584](https://issues.apache.org/jira/browse/HDFS-6584) | *Major* | **Support Archival Storage**
---

* [HDFS-6582](https://issues.apache.org/jira/browse/HDFS-6582) | *Minor* | **Missing null check in RpcProgramNfs3#read(XDR, SecurityHandler)**
---

* [HDFS-6581](https://issues.apache.org/jira/browse/HDFS-6581) | *Major* | **Write to single replica in memory**
---

* [HDFS-6570](https://issues.apache.org/jira/browse/HDFS-6570) | *Major* | **add api that enables checking if a user has certain permissions on a file**
---

* [HDFS-6569](https://issues.apache.org/jira/browse/HDFS-6569) | *Major* | **OOB message can't be sent to the client when DataNode shuts down for upgrade**
---

* [HDFS-6567](https://issues.apache.org/jira/browse/HDFS-6567) | *Major* | **Normalize the order of public final in HdfsFileStatus**
---

* [HDFS-6544](https://issues.apache.org/jira/browse/HDFS-6544) | *Minor* | **Broken Link for GFS in package.html**
---

* [HDFS-6534](https://issues.apache.org/jira/browse/HDFS-6534) | *Minor* | **Fix build on macosx: HDFS parts**
---

* [HDFS-6519](https://issues.apache.org/jira/browse/HDFS-6519) | *Major* | **Document oiv\_legacy command**
---

* [HDFS-6517](https://issues.apache.org/jira/browse/HDFS-6517) | *Major* | **Remove hadoop-metrics2.properties from hdfs project**
---

* [HDFS-6511](https://issues.apache.org/jira/browse/HDFS-6511) | *Minor* | **BlockManager#computeInvalidateWork() could do nothing**
---

* [HDFS-6506](https://issues.apache.org/jira/browse/HDFS-6506) | *Major* | **Newly moved block replica been invalidated and deleted in TestBalancer**
---

* [HDFS-6482](https://issues.apache.org/jira/browse/HDFS-6482) | *Major* | **Use block ID-based block layout on datanodes**

The directory structure for finalized replicas on DNs has been changed. Now, the directory that a finalized replica goes in is determined uniquely by its ID. Specifically, we use a two-level directory structure, with the 24th through 17th bits identifying the correct directory at the first level and the 16th through 8th bits identifying the correct directory at the second level.

---

* [HDFS-6478](https://issues.apache.org/jira/browse/HDFS-6478) | *Major* | **RemoteException can't be retried properly for non-HA scenario**
---

* [HDFS-6456](https://issues.apache.org/jira/browse/HDFS-6456) | *Major* | **NFS should throw error for invalid entry in dfs.nfs.exports.allowed.hosts**
---

* [HDFS-6455](https://issues.apache.org/jira/browse/HDFS-6455) | *Major* | **NFS: Exception should be added in NFS log for invalid separator in nfs.exports.allowed.hosts**
---

* [HDFS-6451](https://issues.apache.org/jira/browse/HDFS-6451) | *Major* | **NFS should not return NFS3ERR\_IO for AccessControlException**
---

* [HDFS-6441](https://issues.apache.org/jira/browse/HDFS-6441) | *Major* | **Add ability to exclude/include specific datanodes while balancing**
---

* [HDFS-6385](https://issues.apache.org/jira/browse/HDFS-6385) | *Major* | **Show when block deletion will start after NameNode startup in WebUI**
---

* [HDFS-6376](https://issues.apache.org/jira/browse/HDFS-6376) | *Major* | **Distcp data between two HA clusters requires another configuration**

Allow distcp to copy data between HA clusters. Users can use a new configuration property "dfs.internal.nameservices" to explicitly specify the name services belonging to the local cluster, while continue using the configuration property "dfs.nameservices" to specify all the name services in the local and remote clusters.

---

* [HDFS-6247](https://issues.apache.org/jira/browse/HDFS-6247) | *Major* | **Avoid timeouts for replaceBlock() call by sending intermediate responses to Balancer**
---

* [HDFS-6188](https://issues.apache.org/jira/browse/HDFS-6188) | *Major* | **An ip whitelist based implementation of TrustedChannelResolver**
---

* [HDFS-6134](https://issues.apache.org/jira/browse/HDFS-6134) | *Major* | **Transparent data at rest encryption**
---

* [HDFS-6114](https://issues.apache.org/jira/browse/HDFS-6114) | *Critical* | **Block Scan log rolling will never happen if blocks written continuously leading to huge size of dncp\_block\_verification.log.curr**
---

* [HDFS-6036](https://issues.apache.org/jira/browse/HDFS-6036) | *Major* | **Forcibly timeout misbehaving DFSClients that try to do no-checksum reads that extend too long**
---

* [HDFS-5919](https://issues.apache.org/jira/browse/HDFS-5919) | *Major* | **FileJournalManager doesn't purge empty and corrupt inprogress edits files**
---

* [HDFS-5809](https://issues.apache.org/jira/browse/HDFS-5809) | *Critical* | **BlockPoolSliceScanner and high speed hdfs appending make datanode to drop into infinite loop**
---

* [HDFS-5723](https://issues.apache.org/jira/browse/HDFS-5723) | *Major* | **Append failed FINALIZED replica should not be accepted as valid when that block is underconstruction**
---

* [HDFS-5624](https://issues.apache.org/jira/browse/HDFS-5624) | *Major* | **Add HDFS tests for ACLs in combination with viewfs.**
---

* [HDFS-5202](https://issues.apache.org/jira/browse/HDFS-5202) | *Major* | **Support Centralized Cache Management on Windows.**
---

* [HDFS-5185](https://issues.apache.org/jira/browse/HDFS-5185) | *Critical* | **DN fails to startup if one of the data dir is full**
---

* [HDFS-5182](https://issues.apache.org/jira/browse/HDFS-5182) | *Major* | **BlockReaderLocal must allow zero-copy  reads only when the DN believes it's valid**
---

* [HDFS-5089](https://issues.apache.org/jira/browse/HDFS-5089) | *Major* | **When a LayoutVersion support SNAPSHOT, it must support FSIMAGE\_NAME\_OPTIMIZATION.**
---

* [HDFS-4852](https://issues.apache.org/jira/browse/HDFS-4852) | *Minor* | **libhdfs documentation is out of date**
---

* [HDFS-4629](https://issues.apache.org/jira/browse/HDFS-4629) | *Major* | **Using com.sun.org.apache.xml.internal.serialize.* in XmlEditsVisitor.java is JVM vendor specific. Breaks IBM JAVA**
---

* [HDFS-4486](https://issues.apache.org/jira/browse/HDFS-4486) | *Minor* | **Add log category for long-running DFSClient notices**
---

* [HDFS-4257](https://issues.apache.org/jira/browse/HDFS-4257) | *Minor* | **The ReplaceDatanodeOnFailure policies could have a forgiving option**
---

* [HDFS-4227](https://issues.apache.org/jira/browse/HDFS-4227) | *Major* | **Document dfs.namenode.resource.***
---

* [HDFS-4165](https://issues.apache.org/jira/browse/HDFS-4165) | *Trivial* | **Faulty sanity check in FsDirectory.unprotectedSetQuota**
---

* [HDFS-4120](https://issues.apache.org/jira/browse/HDFS-4120) | *Minor* | **Add a new "-skipSharedEditsCheck" option for BootstrapStandby**
---

* [HDFS-3851](https://issues.apache.org/jira/browse/HDFS-3851) | *Trivial* | **Make DFSOuputSteram$Packet default constructor reuse the other constructor**
---

* [HDFS-3528](https://issues.apache.org/jira/browse/HDFS-3528) | *Major* | **Use native CRC32 in DFS write path**
---

* [HDFS-3482](https://issues.apache.org/jira/browse/HDFS-3482) | *Minor* | **hdfs balancer throws ArrayIndexOutOfBoundsException if option is specified without arguments**
---

* [HDFS-2976](https://issues.apache.org/jira/browse/HDFS-2976) | *Trivial* | **Remove unnecessary method (tokenRefetchNeeded) in DFSClient**
---

* [HDFS-2975](https://issues.apache.org/jira/browse/HDFS-2975) | *Major* | **Rename with overwrite flag true can make NameNode to stuck in safemode on NN (crash + restart).**
---

* [HDFS-2856](https://issues.apache.org/jira/browse/HDFS-2856) | *Major* | **Fix block protocol so that Datanodes don't require root or jsvc**

SASL now can be used to secure the DataTransferProtocol, which transfers file block content between HDFS clients and DataNodes.  In this configuration, it is no longer required for secured clusters to start the DataNode as root and bind to privileged ports.

---

* [HDFS-573](https://issues.apache.org/jira/browse/HDFS-573) | *Major* | **Porting libhdfs to Windows**

The libhdfs C API is now supported on Windows.



