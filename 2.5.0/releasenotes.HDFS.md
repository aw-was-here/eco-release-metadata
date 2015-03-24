# Hadoop HDFS 2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-6793](https://issues.apache.org/jira/browse/HDFS-6793) | *Blocker* | **Missing changes in HftpFileSystem when Reintroduce dfs.http.port / dfs.https.port in branch-2**
---

* [HDFS-6752](https://issues.apache.org/jira/browse/HDFS-6752) | *Major* | **Avoid Address bind errors in TestDatanodeConfig#testMemlockLimit**
---

* [HDFS-6723](https://issues.apache.org/jira/browse/HDFS-6723) | *Major* | **New NN webUI no longer displays decommissioned state for dead node**
---

* [HDFS-6712](https://issues.apache.org/jira/browse/HDFS-6712) | *Major* | **Document HDFS Multihoming Settings**
---

* [HDFS-6703](https://issues.apache.org/jira/browse/HDFS-6703) | *Major* | **NFS: Files can be deleted from a read-only mount**
---

* [HDFS-6696](https://issues.apache.org/jira/browse/HDFS-6696) | *Blocker* | **Name node cannot start if the path of a file under construction contains ".snapshot"**
---

* [HDFS-6680](https://issues.apache.org/jira/browse/HDFS-6680) | *Major* | **BlockPlacementPolicyDefault does not choose favored nodes correctly**
---

* [HDFS-6647](https://issues.apache.org/jira/browse/HDFS-6647) | *Blocker* | **Edit log corruption when pipeline recovery occurs for deleted file present in snapshot**
---

* [HDFS-6632](https://issues.apache.org/jira/browse/HDFS-6632) | *Major* | **Reintroduce dfs.http.port / dfs.https.port in branch-2**
---

* [HDFS-6631](https://issues.apache.org/jira/browse/HDFS-6631) | *Major* | **TestPread#testHedgedReadLoopTooManyTimes fails intermittently.**
---

* [HDFS-6622](https://issues.apache.org/jira/browse/HDFS-6622) | *Blocker* | **Rename and AddBlock may race and produce invalid edits**
---

* [HDFS-6620](https://issues.apache.org/jira/browse/HDFS-6620) | *Major* | **Snapshot docs should specify about preserve options with cp command**
---

* [HDFS-6618](https://issues.apache.org/jira/browse/HDFS-6618) | *Blocker* | **FSNamesystem#delete drops the FSN lock between removing INodes from the tree and deleting them from the inode map**
---

* [HDFS-6614](https://issues.apache.org/jira/browse/HDFS-6614) | *Minor* | **shorten TestPread run time with a smaller retry timeout setting**
---

* [HDFS-6612](https://issues.apache.org/jira/browse/HDFS-6612) | *Minor* | **MiniDFSNNTopology#simpleFederatedTopology(int) always hardcode nameservice ID**
---

* [HDFS-6610](https://issues.apache.org/jira/browse/HDFS-6610) | *Minor* | **TestShortCircuitLocalRead tests sometimes timeout on slow machines**
---

* [HDFS-6604](https://issues.apache.org/jira/browse/HDFS-6604) | *Critical* | **The short-circuit cache doesn't correctly time out replicas that haven't been used in a while**
---

* [HDFS-6603](https://issues.apache.org/jira/browse/HDFS-6603) | *Minor* | **Add XAttr with ACL test**
---

* [HDFS-6601](https://issues.apache.org/jira/browse/HDFS-6601) | *Blocker* | **Issues in finalizing rolling upgrade when there is a layout version change**
---

* [HDFS-6599](https://issues.apache.org/jira/browse/HDFS-6599) | *Blocker* | **2.4 addBlock is 10 to 20 times slower compared to 0.23**
---

* [HDFS-6598](https://issues.apache.org/jira/browse/HDFS-6598) | *Trivial* | **Fix a typo in message issued from explorer.js**
---

* [HDFS-6595](https://issues.apache.org/jira/browse/HDFS-6595) | *Minor* | **Configure the maximum threads allowed for balancing on datanodes**
---

* [HDFS-6593](https://issues.apache.org/jira/browse/HDFS-6593) | *Minor* | **Move SnapshotDiffInfo out of INodeDirectorySnapshottable**
---

* [HDFS-6591](https://issues.apache.org/jira/browse/HDFS-6591) | *Major* | **while loop is executed tens of thousands of times  in Hedged  Read**
---

* [HDFS-6587](https://issues.apache.org/jira/browse/HDFS-6587) | *Major* | **Bug in TestBPOfferService can cause test failure**
---

* [HDFS-6583](https://issues.apache.org/jira/browse/HDFS-6583) | *Minor* | **Remove clientNode in FileUnderConstructionFeature**
---

* [HDFS-6580](https://issues.apache.org/jira/browse/HDFS-6580) | *Major* | **FSNamesystem.mkdirsInt should call the getAuditFileInfo() wrapper**
---

* [HDFS-6578](https://issues.apache.org/jira/browse/HDFS-6578) | *Major* | **add toString method to DatanodeStorage for easier debugging**
---

* [HDFS-6572](https://issues.apache.org/jira/browse/HDFS-6572) | *Minor* | **Add an option to the NameNode that prints the software and on-disk image versions**
---

* [HDFS-6563](https://issues.apache.org/jira/browse/HDFS-6563) | *Critical* | **NameNode cannot save fsimage in certain circumstances when snapshots are in use**
---

* [HDFS-6562](https://issues.apache.org/jira/browse/HDFS-6562) | *Minor* | **Refactor rename() in FSDirectory**
---

* [HDFS-6559](https://issues.apache.org/jira/browse/HDFS-6559) | *Minor* | **Fix wrong option "dfsadmin -rollingUpgrade start" in the document**
---

* [HDFS-6558](https://issues.apache.org/jira/browse/HDFS-6558) | *Trivial* | **Missing '\n' in the description of dfsadmin -rollingUpgrade**
---

* [HDFS-6557](https://issues.apache.org/jira/browse/HDFS-6557) | *Major* | **Move the reference of fsimage to FSNamesystem**
---

* [HDFS-6556](https://issues.apache.org/jira/browse/HDFS-6556) | *Major* | **Refine XAttr permissions**
---

* [HDFS-6553](https://issues.apache.org/jira/browse/HDFS-6553) | *Major* | **Add missing DeprecationDeltas for NFS Kerberos configurations**
---

* [HDFS-6552](https://issues.apache.org/jira/browse/HDFS-6552) | *Trivial* | **add DN storage to a BlockInfo will not replace the different storage from same DN**
---

* [HDFS-6551](https://issues.apache.org/jira/browse/HDFS-6551) | *Major* | **Rename with OVERWRITE option may throw NPE when the target file/directory is a reference INode**
---

* [HDFS-6549](https://issues.apache.org/jira/browse/HDFS-6549) | *Major* | **Add support for accessing the NFS gateway from the AIX NFS client**
---

* [HDFS-6545](https://issues.apache.org/jira/browse/HDFS-6545) | *Critical* | **Finalizing rolling upgrade can make NN unavailable for a long duration**
---

* [HDFS-6539](https://issues.apache.org/jira/browse/HDFS-6539) | *Major* | **test\_native\_mini\_dfs is skipped in hadoop-hdfs/pom.xml**
---

* [HDFS-6535](https://issues.apache.org/jira/browse/HDFS-6535) | *Major* | **HDFS quota update is wrong when file is appended**
---

* [HDFS-6530](https://issues.apache.org/jira/browse/HDFS-6530) | *Minor* | **Fix Balancer documentation**
---

* [HDFS-6529](https://issues.apache.org/jira/browse/HDFS-6529) | *Minor* | **Trace logging for RemoteBlockReader2 to identify remote datanode and file being read**
---

* [HDFS-6528](https://issues.apache.org/jira/browse/HDFS-6528) | *Minor* | **Add XAttrs to TestOfflineImageViewer**
---

* [HDFS-6527](https://issues.apache.org/jira/browse/HDFS-6527) | *Blocker* | **Edit log corruption due to defered INode removal**
---

* [HDFS-6518](https://issues.apache.org/jira/browse/HDFS-6518) | *Major* | **TestCacheDirectives#testExceedsCapacity should take FSN read lock when accessing pendingCached list**
---

* [HDFS-6507](https://issues.apache.org/jira/browse/HDFS-6507) | *Major* | **Improve DFSAdmin to support HA cluster better**
---

* [HDFS-6503](https://issues.apache.org/jira/browse/HDFS-6503) | *Minor* | **Fix typo of DFSAdmin restoreFailedStorage**
---

* [HDFS-6500](https://issues.apache.org/jira/browse/HDFS-6500) | *Blocker* | **Snapshot shouldn't be removed silently after renaming to an existing snapshot**
---

* [HDFS-6499](https://issues.apache.org/jira/browse/HDFS-6499) | *Major* | **Use NativeIO#renameTo instead of File#renameTo in FileJournalManager**
---

* [HDFS-6497](https://issues.apache.org/jira/browse/HDFS-6497) | *Minor* | **Make TestAvailableSpaceVolumeChoosingPolicy deterministic**
---

* [HDFS-6493](https://issues.apache.org/jira/browse/HDFS-6493) | *Trivial* | **Change dfs.namenode.startup.delay.block.deletion to second instead of millisecond**
---

* [HDFS-6492](https://issues.apache.org/jira/browse/HDFS-6492) | *Major* | **Support create-time xattrs and atomically setting multiple xattrs**
---

* [HDFS-6487](https://issues.apache.org/jira/browse/HDFS-6487) | *Major* | **TestStandbyCheckpoint#testSBNCheckpoints is racy**
---

* [HDFS-6486](https://issues.apache.org/jira/browse/HDFS-6486) | *Minor* | **Add user doc for XAttrs via WebHDFS.**
---

* [HDFS-6480](https://issues.apache.org/jira/browse/HDFS-6480) | *Major* | **Move waitForReady() from FSDirectory to FSNamesystem**
---

* [HDFS-6475](https://issues.apache.org/jira/browse/HDFS-6475) | *Major* | **WebHdfs clients fail without retry because incorrect handling of StandbyException**
---

* [HDFS-6472](https://issues.apache.org/jira/browse/HDFS-6472) | *Trivial* | **fix typo in webapps/hdfs/explorer.js**
---

* [HDFS-6471](https://issues.apache.org/jira/browse/HDFS-6471) | *Major* | **Make moveFromLocal CLI testcases to be non-disruptive**

Committed to trunk and merged into branch-2. Thanks Dasha!

---

* [HDFS-6470](https://issues.apache.org/jira/browse/HDFS-6470) | *Major* | **TestBPOfferService.testBPInitErrorHandling is flaky**
---

* [HDFS-6464](https://issues.apache.org/jira/browse/HDFS-6464) | *Major* | **Support multiple xattr.name parameters for WebHDFS getXAttrs.**
---

* [HDFS-6463](https://issues.apache.org/jira/browse/HDFS-6463) | *Trivial* | **Clarify behavior of AclStorage#createFsPermissionForExtendedAcl in comments.**
---

* [HDFS-6462](https://issues.apache.org/jira/browse/HDFS-6462) | *Major* | **NFS: fsstat request fails with the secure hdfs**
---

* [HDFS-6461](https://issues.apache.org/jira/browse/HDFS-6461) | *Trivial* | **Use Time#monotonicNow to compute duration in DataNode#shutDown**
---

* [HDFS-6460](https://issues.apache.org/jira/browse/HDFS-6460) | *Minor* | **Ignore stale and decommissioned nodes in NetworkTopology#sortByDistance**
---

* [HDFS-6453](https://issues.apache.org/jira/browse/HDFS-6453) | *Major* | **use Time#monotonicNow to avoid system clock reset**
---

* [HDFS-6448](https://issues.apache.org/jira/browse/HDFS-6448) | *Major* | **BlockReaderLocalLegacy should set socket timeout based on conf.socketTimeout**
---

* [HDFS-6447](https://issues.apache.org/jira/browse/HDFS-6447) | *Trivial* | **balancer should timestamp the completion message**
---

* [HDFS-6443](https://issues.apache.org/jira/browse/HDFS-6443) | *Minor* | **Fix MiniQJMHACluster related test failures**
---

* [HDFS-6442](https://issues.apache.org/jira/browse/HDFS-6442) | *Minor* | **Fix TestEditLogAutoroll and TestStandbyCheckpoints failure caused by port conficts**
---

* [HDFS-6439](https://issues.apache.org/jira/browse/HDFS-6439) | *Major* | **NFS should not reject NFS requests to the NULL procedure whether port monitoring is enabled or not**
---

* [HDFS-6438](https://issues.apache.org/jira/browse/HDFS-6438) | *Major* | **DeleteSnapshot should be a DELETE request in WebHdfs**
---

* [HDFS-6435](https://issues.apache.org/jira/browse/HDFS-6435) | *Major* | **Add support for specifying a static uid/gid mapping for the NFS gateway**
---

* [HDFS-6433](https://issues.apache.org/jira/browse/HDFS-6433) | *Major* | **Replace BytesMoved class with AtomicLong**
---

* [HDFS-6432](https://issues.apache.org/jira/browse/HDFS-6432) | *Major* | **Add snapshot related APIs to webhdfs**
---

* [HDFS-6430](https://issues.apache.org/jira/browse/HDFS-6430) | *Major* | **HTTPFS - Implement XAttr support**
---

* [HDFS-6424](https://issues.apache.org/jira/browse/HDFS-6424) | *Major* | **blockReport doesn't need to invalidate blocks on SBN**
---

* [HDFS-6423](https://issues.apache.org/jira/browse/HDFS-6423) | *Major* | **Diskspace quota usage should be updated when appending data to partial block**
---

* [HDFS-6422](https://issues.apache.org/jira/browse/HDFS-6422) | *Blocker* | **getfattr in CLI doesn't throw exception or return non-0 return code when xattr doesn't exist**
---

* [HDFS-6421](https://issues.apache.org/jira/browse/HDFS-6421) | *Major* | **Fix vecsum.c compile on BSD and some other systems**
---

* [HDFS-6419](https://issues.apache.org/jira/browse/HDFS-6419) | *Major* | **TestBookKeeperHACheckpoints#TestSBNCheckpoints fails on trunk**
---

* [HDFS-6418](https://issues.apache.org/jira/browse/HDFS-6418) | *Blocker* | **Regression: DFS\_NAMENODE\_USER\_NAME\_KEY missing in trunk**
---

* [HDFS-6416](https://issues.apache.org/jira/browse/HDFS-6416) | *Minor* | **Use Time#monotonicNow in OpenFileCtx and OpenFileCtxCatch to avoid system clock bugs**
---

* [HDFS-6409](https://issues.apache.org/jira/browse/HDFS-6409) | *Trivial* | **Fix typo in log message about NameNode layout version upgrade.**
---

* [HDFS-6406](https://issues.apache.org/jira/browse/HDFS-6406) | *Major* | **Add capability for NFS gateway to reject connections from unprivileged ports**
---

* [HDFS-6404](https://issues.apache.org/jira/browse/HDFS-6404) | *Major* | **HttpFS should use a 000 umask for mkdir and create operations**
---

* [HDFS-6403](https://issues.apache.org/jira/browse/HDFS-6403) | *Major* | **Add metrics for log warnings reported by JVM pauses**
---

* [HDFS-6400](https://issues.apache.org/jira/browse/HDFS-6400) | *Critical* | **Cannot execute "hdfs oiv\_legacy"**
---

* [HDFS-6399](https://issues.apache.org/jira/browse/HDFS-6399) | *Minor* | **Add note about setfacl in HDFS permissions guide**
---

* [HDFS-6396](https://issues.apache.org/jira/browse/HDFS-6396) | *Minor* | **Remove support for ACL feature from INodeSymlink**
---

* [HDFS-6395](https://issues.apache.org/jira/browse/HDFS-6395) | *Major* | **Skip checking xattr limits for non-user-visible namespaces**
---

* [HDFS-6381](https://issues.apache.org/jira/browse/HDFS-6381) | *Trivial* | **Fix a typo in INodeReference.java**
---

* [HDFS-6379](https://issues.apache.org/jira/browse/HDFS-6379) | *Major* | **HTTPFS - Implement ACLs support**
---

* [HDFS-6378](https://issues.apache.org/jira/browse/HDFS-6378) | *Major* | **NFS registration should timeout instead of hanging when portmap/rpcbind is not available**
---

* [HDFS-6375](https://issues.apache.org/jira/browse/HDFS-6375) | *Major* | **Listing extended attributes with the search permission**
---

* [HDFS-6370](https://issues.apache.org/jira/browse/HDFS-6370) | *Major* | **Web UI fails to display in intranet under IE**
---

* [HDFS-6369](https://issues.apache.org/jira/browse/HDFS-6369) | *Trivial* | **Document that BlockReader#available() can return more bytes than are remaining in the block**
---

* [HDFS-6367](https://issues.apache.org/jira/browse/HDFS-6367) | *Major* | **EnumSetParam$Domain#parse fails for parameter containing more than one enum.**
---

* [HDFS-6364](https://issues.apache.org/jira/browse/HDFS-6364) | *Major* | **Incorrect check for unknown datanode in Balancer**
---

* [HDFS-6356](https://issues.apache.org/jira/browse/HDFS-6356) | *Trivial* | **Fix typo in DatanodeLayoutVersion**
---

* [HDFS-6355](https://issues.apache.org/jira/browse/HDFS-6355) | *Major* | **Fix divide-by-zero, improper use of wall-clock time in BlockPoolSliceScanner**
---

* [HDFS-6351](https://issues.apache.org/jira/browse/HDFS-6351) | *Major* | **Command "hdfs dfs -rm -r" can't remove empty directory**
---

* [HDFS-6345](https://issues.apache.org/jira/browse/HDFS-6345) | *Major* | **DFS.listCacheDirectives() should allow filtering based on cache directive ID**
---

* [HDFS-6337](https://issues.apache.org/jira/browse/HDFS-6337) | *Major* | **Setfacl testcase is failing due to dash character in username in TestAclCLI**
---

* [HDFS-6334](https://issues.apache.org/jira/browse/HDFS-6334) | *Major* | **Client failover proxy provider for IP failover based NN HA**
---

* [HDFS-6330](https://issues.apache.org/jira/browse/HDFS-6330) | *Major* | **Move mkdirs() to FSNamesystem**
---

* [HDFS-6328](https://issues.apache.org/jira/browse/HDFS-6328) | *Major* | **Clean up dead code in FSDirectory**
---

* [HDFS-6315](https://issues.apache.org/jira/browse/HDFS-6315) | *Major* | **Decouple recording edit logs from FSDirectory**
---

* [HDFS-6312](https://issues.apache.org/jira/browse/HDFS-6312) | *Blocker* | **WebHdfs HA failover is broken on secure clusters**
---

* [HDFS-6305](https://issues.apache.org/jira/browse/HDFS-6305) | *Critical* | **WebHdfs response decoding may throw RuntimeExceptions**
---

* [HDFS-6304](https://issues.apache.org/jira/browse/HDFS-6304) | *Major* | **Consolidate the logic of path resolution in FSDirectory**
---

* [HDFS-6297](https://issues.apache.org/jira/browse/HDFS-6297) | *Major* | **Add CLI testcases to reflect new features of dfs and dfsadmin**

Committed to the trunk and branch-2. Thanks Dasha!

---

* [HDFS-6295](https://issues.apache.org/jira/browse/HDFS-6295) | *Major* | **Add "decommissioning" state and node state filtering to dfsadmin**
---

* [HDFS-6294](https://issues.apache.org/jira/browse/HDFS-6294) | *Major* | **Use INode IDs to avoid conflicts when a file open for write is renamed**
---

* [HDFS-6293](https://issues.apache.org/jira/browse/HDFS-6293) | *Blocker* | **Issues with OIV processing PB-based fsimages**

Set "dfs.namenode.legacy-oiv-image.dir" to an appropriate directory to make standby name node or secondary name node save its file system state in the old fsimage format during checkpointing. This image can be used for offline analysis using the OfflineImageViewer.  Use the "hdfs oiv\_legacy" command to process the old fsimage format.

---

* [HDFS-6289](https://issues.apache.org/jira/browse/HDFS-6289) | *Critical* | **HA failover can fail if there are pending DN messages for DNs which no longer exist**
---

* [HDFS-6288](https://issues.apache.org/jira/browse/HDFS-6288) | *Minor* | **DFSInputStream Pread doesn't update ReadStatistics**
---

* [HDFS-6287](https://issues.apache.org/jira/browse/HDFS-6287) | *Minor* | **Add vecsum test of libhdfs read access times**
---

* [HDFS-6282](https://issues.apache.org/jira/browse/HDFS-6282) | *Minor* | **re-add testIncludeByRegistrationName**
---

* [HDFS-6281](https://issues.apache.org/jira/browse/HDFS-6281) | *Major* | **Provide option to use the NFS Gateway without having to use the Hadoop portmapper**
---

* [HDFS-6279](https://issues.apache.org/jira/browse/HDFS-6279) | *Major* | **Create new index page for JN / DN**
---

* [HDFS-6278](https://issues.apache.org/jira/browse/HDFS-6278) | *Major* | **Create HTML5-based UI for SNN**
---

* [HDFS-6276](https://issues.apache.org/jira/browse/HDFS-6276) | *Major* | **Remove unnecessary conditions and null check**
---

* [HDFS-6275](https://issues.apache.org/jira/browse/HDFS-6275) | *Major* | **Fix warnings - type arguments can be inferred and redudant local variable**
---

* [HDFS-6274](https://issues.apache.org/jira/browse/HDFS-6274) | *Major* | **Cleanup javadoc warnings in HDFS code**
---

* [HDFS-6273](https://issues.apache.org/jira/browse/HDFS-6273) | *Major* | **Config options to allow wildcard endpoints for namenode HTTP and HTTPS servers**

HDFS-6273 introduces two new HDFS configuration keys: 
- dfs.namenode.http-bind-host
- dfs.namenode.https-bind-host

The most common use case for these keys is to have the NameNode HTTP (or HTTPS) endpoints listen on all interfaces on multi-homed systems by setting the keys to 0.0.0.0 i.e. INADDR\_ANY.

For the systems background on this usage of INADDR\_ANY please refer to ip(7) in the Linux Programmer's Manual (web link: http://man7.org/linux/man-pages/man7/ip.7.html).

These keys complement the existing NameNode options:
- dfs.namenode.rpc-bind-host
- dfs.namenode.servicerpc-bind-host

---

* [HDFS-6270](https://issues.apache.org/jira/browse/HDFS-6270) | *Minor* | **Secondary namenode status page shows transaction count in bytes**
---

* [HDFS-6269](https://issues.apache.org/jira/browse/HDFS-6269) | *Major* | **NameNode Audit Log should differentiate between webHDFS open and HDFS open.**
---

* [HDFS-6268](https://issues.apache.org/jira/browse/HDFS-6268) | *Minor* | **Better sorting in NetworkTopology#pseudoSortByDistance when no local node is found**
---

* [HDFS-6266](https://issues.apache.org/jira/browse/HDFS-6266) | *Major* | **Identify full path for a given INode**
---

* [HDFS-6265](https://issues.apache.org/jira/browse/HDFS-6265) | *Minor* | **Prepare HDFS codebase for JUnit 4.11.**
---

* [HDFS-6257](https://issues.apache.org/jira/browse/HDFS-6257) | *Minor* | **TestCacheDirectives#testExceedsCapacity fails occasionally**
---

* [HDFS-6256](https://issues.apache.org/jira/browse/HDFS-6256) | *Major* | **Clean up ImageVisitor and SpotCheckImageVisitor**
---

* [HDFS-6250](https://issues.apache.org/jira/browse/HDFS-6250) | *Major* | **TestBalancerWithNodeGroup.testBalancerWithRackLocality fails**
---

* [HDFS-6243](https://issues.apache.org/jira/browse/HDFS-6243) | *Major* | **HA NameNode transition to active or shutdown may leave lingering image transfer thread.**
---

* [HDFS-6240](https://issues.apache.org/jira/browse/HDFS-6240) | *Major* | **WebImageViewer returns 404 if LISTSTATUS to an empty directory**
---

* [HDFS-6238](https://issues.apache.org/jira/browse/HDFS-6238) | *Minor* | **TestDirectoryScanner leaks file descriptors.**
---

* [HDFS-6230](https://issues.apache.org/jira/browse/HDFS-6230) | *Major* | **Expose upgrade status through NameNode web UI**
---

* [HDFS-6227](https://issues.apache.org/jira/browse/HDFS-6227) | *Major* | **ShortCircuitCache#unref should purge ShortCircuitReplicas whose streams have been closed by java interrupts**
---

* [HDFS-6225](https://issues.apache.org/jira/browse/HDFS-6225) | *Major* | **Remove the o.a.h.hdfs.server.common.UpgradeStatusReport**
---

* [HDFS-6224](https://issues.apache.org/jira/browse/HDFS-6224) | *Minor* | **Add a unit test to TestAuditLogger for file permissions passed to logAuditEvent**
---

* [HDFS-6222](https://issues.apache.org/jira/browse/HDFS-6222) | *Major* | **Remove background token renewer from webhdfs**
---

* [HDFS-6219](https://issues.apache.org/jira/browse/HDFS-6219) | *Major* | **Proxy superuser configuration should use true client IP for address checks**
---

* [HDFS-6218](https://issues.apache.org/jira/browse/HDFS-6218) | *Major* | **Audit log should use true client IP for proxied webhdfs operations**
---

* [HDFS-6217](https://issues.apache.org/jira/browse/HDFS-6217) | *Major* | **Webhdfs PUT operations may not work via a http proxy**
---

* [HDFS-6216](https://issues.apache.org/jira/browse/HDFS-6216) | *Major* | **Issues with webhdfs and http proxies**
---

* [HDFS-6214](https://issues.apache.org/jira/browse/HDFS-6214) | *Major* | **Webhdfs has poor throughput for files >2GB**
---

* [HDFS-6213](https://issues.apache.org/jira/browse/HDFS-6213) | *Minor* | **TestDataNodeConfig failing on Jenkins runs due to DN web port in use**
---

* [HDFS-6210](https://issues.apache.org/jira/browse/HDFS-6210) | *Major* | **Support GETACLSTATUS operation in WebImageViewer**
---

* [HDFS-6194](https://issues.apache.org/jira/browse/HDFS-6194) | *Major* | **Create new tests for ByteRangeInputStream**
---

* [HDFS-6191](https://issues.apache.org/jira/browse/HDFS-6191) | *Major* | **Disable quota checks when replaying edit log.**
---

* [HDFS-6190](https://issues.apache.org/jira/browse/HDFS-6190) | *Trivial* | **minor textual fixes in DFSClient**
---

* [HDFS-6186](https://issues.apache.org/jira/browse/HDFS-6186) | *Major* | **Pause deletion of blocks when the namenode starts up**
---

* [HDFS-6181](https://issues.apache.org/jira/browse/HDFS-6181) | *Trivial* | **Fix the wrong property names in NFS user guide**
---

* [HDFS-6180](https://issues.apache.org/jira/browse/HDFS-6180) | *Blocker* | **dead node count / listing is very broken in JMX and old GUI**
---

* [HDFS-6178](https://issues.apache.org/jira/browse/HDFS-6178) | *Major* | **Decommission on standby NN couldn't finish**
---

* [HDFS-6173](https://issues.apache.org/jira/browse/HDFS-6173) | *Major* | **Move the default processor from Ls to Web in OfflineImageViewer**
---

* [HDFS-6170](https://issues.apache.org/jira/browse/HDFS-6170) | *Major* | **Support GETFILESTATUS operation in WebImageViewer**
---

* [HDFS-6169](https://issues.apache.org/jira/browse/HDFS-6169) | *Major* | **Move the address in WebImageViewer**
---

* [HDFS-6168](https://issues.apache.org/jira/browse/HDFS-6168) | *Major* | **Remove deprecated methods in DistributedFileSystem**
---

* [HDFS-6167](https://issues.apache.org/jira/browse/HDFS-6167) | *Major* | **Relocate the non-public API classes in the hdfs.client package**
---

* [HDFS-6164](https://issues.apache.org/jira/browse/HDFS-6164) | *Major* | **Remove lsr in OfflineImageViewer**

The offlineimageviewer no longer generates lsr-style outputs. The functionality has been superseded by a tool that takes the fsimage and exposes WebHDFS-like API for user queries.

---

* [HDFS-6162](https://issues.apache.org/jira/browse/HDFS-6162) | *Minor* | **Format strings should use platform independent line separator**
---

* [HDFS-6160](https://issues.apache.org/jira/browse/HDFS-6160) | *Major* | **TestSafeMode occasionally fails**
---

* [HDFS-6159](https://issues.apache.org/jira/browse/HDFS-6159) | *Major* | **TestBalancerWithNodeGroup.testBalancerWithNodeGroup fails if there is block missing after balancer success**
---

* [HDFS-6158](https://issues.apache.org/jira/browse/HDFS-6158) | *Major* | **Clean up dead code for OfflineImageViewer**
---

* [HDFS-6156](https://issues.apache.org/jira/browse/HDFS-6156) | *Major* | **Simplify the JMX API that provides snapshot information**
---

* [HDFS-6155](https://issues.apache.org/jira/browse/HDFS-6155) | *Major* | **Fix Boxing/unboxing to parse a primitive findbugs warnings**
---

* [HDFS-6153](https://issues.apache.org/jira/browse/HDFS-6153) | *Minor* | **Document "fileId" and "childrenNum" fields in the FileStatus Json schema**
---

* [HDFS-6143](https://issues.apache.org/jira/browse/HDFS-6143) | *Blocker* | **WebHdfsFileSystem open should throw FileNotFoundException for non-existing paths**
---

* [HDFS-6125](https://issues.apache.org/jira/browse/HDFS-6125) | *Major* | **Cleanup unnecessary cast in HDFS code base**
---

* [HDFS-6119](https://issues.apache.org/jira/browse/HDFS-6119) | *Minor* | **FSNamesystem code cleanup**
---

* [HDFS-6112](https://issues.apache.org/jira/browse/HDFS-6112) | *Minor* | **NFS Gateway docs are incorrect for allowed hosts configuration**
---

* [HDFS-6110](https://issues.apache.org/jira/browse/HDFS-6110) | *Major* | **adding more slow action log in critical write path**

Log slow i/o.  Set log thresholds in dfsclient and datanode via the below  new configs:

dfs.client.slow.io.warning.threshold.ms (Default 30 seconds)
dfs.datanode.slow.io.warning.threshold.ms (Default 300ms)

---

* [HDFS-6109](https://issues.apache.org/jira/browse/HDFS-6109) | *Major* | **let sync\_file\_range() system call run in background**
---

* [HDFS-6056](https://issues.apache.org/jira/browse/HDFS-6056) | *Major* | **Clean up NFS config settings**
---

* [HDFS-6007](https://issues.apache.org/jira/browse/HDFS-6007) | *Minor* | **Update documentation about short-circuit local reads**
---

* [HDFS-5978](https://issues.apache.org/jira/browse/HDFS-5978) | *Major* | **Create a tool to take fsimage and expose read-only WebHDFS API**
---

* [HDFS-5892](https://issues.apache.org/jira/browse/HDFS-5892) | *Minor* | **TestDeleteBlockPool fails in branch-2**
---

* [HDFS-5865](https://issues.apache.org/jira/browse/HDFS-5865) | *Minor* | **Update OfflineImageViewer document**
---

* [HDFS-5693](https://issues.apache.org/jira/browse/HDFS-5693) | *Major* | **Few NN metrics data points were collected via JMX when NN is under heavy load**
---

* [HDFS-5683](https://issues.apache.org/jira/browse/HDFS-5683) | *Major* | **Better audit log messages for caching operations**
---

* [HDFS-5669](https://issues.apache.org/jira/browse/HDFS-5669) | *Major* | **Storage#tryLock() should check for null before logging successfull message**
---

* [HDFS-5591](https://issues.apache.org/jira/browse/HDFS-5591) | *Minor* | **Checkpointing should use monotonic time when calculating period**
---

* [HDFS-5522](https://issues.apache.org/jira/browse/HDFS-5522) | *Major* | **Datanode disk error check may be incorrectly skipped**
---

* [HDFS-5411](https://issues.apache.org/jira/browse/HDFS-5411) | *Minor* | **Update Bookkeeper dependency to 4.2.3**
---

* [HDFS-5409](https://issues.apache.org/jira/browse/HDFS-5409) | *Minor* | **TestOfflineEditsViewer#testStored fails on Windows due to CRLF line endings in editsStored.xml from git checkout**
---

* [HDFS-5381](https://issues.apache.org/jira/browse/HDFS-5381) | *Minor* | **ExtendedBlock#hashCode should use both blockId and block pool ID**
---

* [HDFS-5196](https://issues.apache.org/jira/browse/HDFS-5196) | *Minor* | **Provide more snapshot information in WebUI**
---

* [HDFS-5168](https://issues.apache.org/jira/browse/HDFS-5168) | *Critical* | **BlockPlacementPolicy does not work for cross node group dependencies**
---

* [HDFS-4913](https://issues.apache.org/jira/browse/HDFS-4913) | *Major* | **Deleting file through fuse-dfs when using trash fails requiring root permissions**
---

* [HDFS-4909](https://issues.apache.org/jira/browse/HDFS-4909) | *Blocker* | **Avoid protocol buffer RPC namespace clashes**
---

* [HDFS-4667](https://issues.apache.org/jira/browse/HDFS-4667) | *Major* | **Capture renamed files/directories in snapshot diff report**
---

* [HDFS-4286](https://issues.apache.org/jira/browse/HDFS-4286) | *Major* | **Changes from BOOKKEEPER-203 broken capability of including bookkeeper-server jar in hidden package of BKJM**
---

* [HDFS-4221](https://issues.apache.org/jira/browse/HDFS-4221) | *Major* | **Remove the format limitation point from BKJM documentation as HDFS-3810 closed**
---

* [HDFS-3848](https://issues.apache.org/jira/browse/HDFS-3848) | *Major* | **A Bug in recoverLeaseInternal method of FSNameSystem class**
---

* [HDFS-3828](https://issues.apache.org/jira/browse/HDFS-3828) | *Major* | **Block Scanner rescans blocks too frequently**
---

* [HDFS-3493](https://issues.apache.org/jira/browse/HDFS-3493) | *Major* | **Invalidate excess corrupted blocks as long as minimum replication is satisfied**
---

* [HDFS-3087](https://issues.apache.org/jira/browse/HDFS-3087) | *Critical* | **Decomissioning on NN restart can complete without blocks being replicated**
---

* [HDFS-2949](https://issues.apache.org/jira/browse/HDFS-2949) | *Major* | **HA: Add check to active state transition to prevent operator-induced split brain**
---

* [HDFS-2006](https://issues.apache.org/jira/browse/HDFS-2006) | *Major* | **ability to support storing extended attributes per file**


