# Hadoop Changelog

## Release 2.5.0 - 2014-08-11

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6168](https://issues.apache.org/jira/browse/HDFS-6168) | Remove deprecated methods in DistributedFileSystem |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6164](https://issues.apache.org/jira/browse/HDFS-6164) | Remove lsr in OfflineImageViewer |  Major | tools | Haohui Mai | Haohui Mai |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6435](https://issues.apache.org/jira/browse/HDFS-6435) | Add support for specifying a static uid/gid mapping for the NFS gateway |  Major | nfs | Aaron T. Myers | Aaron T. Myers |
| [HDFS-6406](https://issues.apache.org/jira/browse/HDFS-6406) | Add capability for NFS gateway to reject connections from unprivileged ports |  Major | nfs | Aaron T. Myers | Aaron T. Myers |
| [HDFS-6281](https://issues.apache.org/jira/browse/HDFS-6281) | Provide option to use the NFS Gateway without having to use the Hadoop portmapper |  Major | nfs | Aaron T. Myers | Aaron T. Myers |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6620](https://issues.apache.org/jira/browse/HDFS-6620) | Snapshot docs should specify about preserve options with cp command |  Major | namenode | Uma Maheswara Rao G | Stephen Chu |
| [HDFS-6603](https://issues.apache.org/jira/browse/HDFS-6603) | Add XAttr with ACL test |  Minor | test | Stephen Chu | Stephen Chu |
| [HDFS-6595](https://issues.apache.org/jira/browse/HDFS-6595) | Configure the maximum threads allowed for balancing on datanodes |  Minor | balancer & mover, datanode | Benoy Antony | Benoy Antony |
| [HDFS-6593](https://issues.apache.org/jira/browse/HDFS-6593) | Move SnapshotDiffInfo out of INodeDirectorySnapshottable |  Minor | namenode, snapshots | Jing Zhao | Jing Zhao |
| [HDFS-6580](https://issues.apache.org/jira/browse/HDFS-6580) | FSNamesystem.mkdirsInt should call the getAuditFileInfo() wrapper |  Major | namenode | Zhilei Xu | Zhilei Xu |
| [HDFS-6578](https://issues.apache.org/jira/browse/HDFS-6578) | add toString method to DatanodeStorage for easier debugging |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6558](https://issues.apache.org/jira/browse/HDFS-6558) | Missing '\n' in the description of dfsadmin -rollingUpgrade |  Trivial | . | Akira AJISAKA | Chen He |
| [HDFS-6545](https://issues.apache.org/jira/browse/HDFS-6545) | Finalizing rolling upgrade can make NN unavailable for a long duration |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6529](https://issues.apache.org/jira/browse/HDFS-6529) | Trace logging for RemoteBlockReader2 to identify remote datanode and file being read |  Minor | hdfs-client | Anubhav Dhoot | Anubhav Dhoot |
| [HDFS-6528](https://issues.apache.org/jira/browse/HDFS-6528) | Add XAttrs to TestOfflineImageViewer |  Minor | test | Stephen Chu | Stephen Chu |
| [HDFS-6507](https://issues.apache.org/jira/browse/HDFS-6507) | Improve DFSAdmin to support HA cluster better |  Major | tools | Zesheng Wu | Zesheng Wu |
| [HDFS-6503](https://issues.apache.org/jira/browse/HDFS-6503) | Fix typo of DFSAdmin restoreFailedStorage |  Minor | tools | Zesheng Wu | Zesheng Wu |
| [HDFS-6499](https://issues.apache.org/jira/browse/HDFS-6499) | Use NativeIO#renameTo instead of File#renameTo in FileJournalManager |  Major | namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6492](https://issues.apache.org/jira/browse/HDFS-6492) | Support create-time xattrs and atomically setting multiple xattrs |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-6463](https://issues.apache.org/jira/browse/HDFS-6463) | Clarify behavior of AclStorage#createFsPermissionForExtendedAcl in comments. |  Trivial | namenode | Aaron T. Myers | Chris Nauroth |
| [HDFS-6460](https://issues.apache.org/jira/browse/HDFS-6460) | Ignore stale and decommissioned nodes in NetworkTopology#sortByDistance |  Minor | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6453](https://issues.apache.org/jira/browse/HDFS-6453) | use Time#monotonicNow to avoid system clock reset |  Major | datanode, namenode | Liang Xie | Liang Xie |
| [HDFS-6448](https://issues.apache.org/jira/browse/HDFS-6448) | BlockReaderLocalLegacy should set socket timeout based on conf.socketTimeout |  Major | hdfs-client | Liang Xie | Liang Xie |
| [HDFS-6447](https://issues.apache.org/jira/browse/HDFS-6447) | balancer should timestamp the completion message |  Trivial | balancer & mover | Allen Wittenauer | Juan Yu |
| [HDFS-6442](https://issues.apache.org/jira/browse/HDFS-6442) | Fix TestEditLogAutoroll and TestStandbyCheckpoints failure caused by port conficts |  Minor | test | Zesheng Wu | Zesheng Wu |
| [HDFS-6433](https://issues.apache.org/jira/browse/HDFS-6433) | Replace BytesMoved class with AtomicLong |  Major | balancer & mover | Benoy Antony | Benoy Antony |
| [HDFS-6432](https://issues.apache.org/jira/browse/HDFS-6432) | Add snapshot related APIs to webhdfs |  Major | namenode, webhdfs | Suresh Srinivas | Jing Zhao |
| [HDFS-6416](https://issues.apache.org/jira/browse/HDFS-6416) | Use Time#monotonicNow in OpenFileCtx and OpenFileCtxCatch to avoid system clock bugs |  Minor | nfs | Brandon Li | Abhiraj Butala |
| [HDFS-6403](https://issues.apache.org/jira/browse/HDFS-6403) | Add metrics for log warnings reported by JVM pauses |  Major | datanode, namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6396](https://issues.apache.org/jira/browse/HDFS-6396) | Remove support for ACL feature from INodeSymlink |  Minor | . | Andrew Wang | Charles Lamb |
| [HDFS-6375](https://issues.apache.org/jira/browse/HDFS-6375) | Listing extended attributes with the search permission |  Major | namenode | Andrew Wang | Charles Lamb |
| [HDFS-6369](https://issues.apache.org/jira/browse/HDFS-6369) | Document that BlockReader#available() can return more bytes than are remaining in the block |  Trivial | . | Ted Yu | Ted Yu |
| [HDFS-6356](https://issues.apache.org/jira/browse/HDFS-6356) | Fix typo in DatanodeLayoutVersion |  Trivial | datanode | Tulasi G | Tulasi G |
| [HDFS-6334](https://issues.apache.org/jira/browse/HDFS-6334) | Client failover proxy provider for IP failover based NN HA |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6304](https://issues.apache.org/jira/browse/HDFS-6304) | Consolidate the logic of path resolution in FSDirectory |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-6297](https://issues.apache.org/jira/browse/HDFS-6297) | Add CLI testcases to reflect new features of dfs and dfsadmin |  Major | test | Dasha Boudnik | Dasha Boudnik |
| [HDFS-6295](https://issues.apache.org/jira/browse/HDFS-6295) | Add "decommissioning" state and node state filtering to dfsadmin |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-6282](https://issues.apache.org/jira/browse/HDFS-6282) | re-add testIncludeByRegistrationName |  Minor | test | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6279](https://issues.apache.org/jira/browse/HDFS-6279) | Create new index page for JN / DN |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6278](https://issues.apache.org/jira/browse/HDFS-6278) | Create HTML5-based UI for SNN |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6273](https://issues.apache.org/jira/browse/HDFS-6273) | Config options to allow wildcard endpoints for namenode HTTP and HTTPS servers |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6269](https://issues.apache.org/jira/browse/HDFS-6269) | NameNode Audit Log should differentiate between webHDFS open and HDFS open. |  Major | namenode, webhdfs | Eric Payne | Eric Payne |
| [HDFS-6268](https://issues.apache.org/jira/browse/HDFS-6268) | Better sorting in NetworkTopology#pseudoSortByDistance when no local node is found |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-6266](https://issues.apache.org/jira/browse/HDFS-6266) | Identify full path for a given INode |  Major | snapshots | Jing Zhao | Jing Zhao |
| [HDFS-6256](https://issues.apache.org/jira/browse/HDFS-6256) | Clean up ImageVisitor and SpotCheckImageVisitor |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6225](https://issues.apache.org/jira/browse/HDFS-6225) | Remove the o.a.h.hdfs.server.common.UpgradeStatusReport |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6191](https://issues.apache.org/jira/browse/HDFS-6191) | Disable quota checks when replaying edit log. |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-6167](https://issues.apache.org/jira/browse/HDFS-6167) | Relocate the non-public API classes in the hdfs.client package |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6158](https://issues.apache.org/jira/browse/HDFS-6158) | Clean up dead code for OfflineImageViewer |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6110](https://issues.apache.org/jira/browse/HDFS-6110) | adding more slow action log in critical write path |  Major | datanode | Liang Xie | Liang Xie |
| [HDFS-6109](https://issues.apache.org/jira/browse/HDFS-6109) | let sync\_file\_range() system call run in background |  Major | datanode | Liang Xie | Liang Xie |
| [HDFS-6007](https://issues.apache.org/jira/browse/HDFS-6007) | Update documentation about short-circuit local reads |  Minor | documentation | Masatake Iwasaki |  |
| [HDFS-5693](https://issues.apache.org/jira/browse/HDFS-5693) | Few NN metrics data points were collected via JMX when NN is under heavy load |  Major | namenode | Ming Ma | Ming Ma |
| [HDFS-5683](https://issues.apache.org/jira/browse/HDFS-5683) | Better audit log messages for caching operations |  Major | namenode | Andrew Wang | Abhiraj Butala |
| [HDFS-5381](https://issues.apache.org/jira/browse/HDFS-5381) | ExtendedBlock#hashCode should use both blockId and block pool ID |  Minor | federation | Colin Patrick McCabe | Benoy Antony |
| [HDFS-5196](https://issues.apache.org/jira/browse/HDFS-5196) | Provide more snapshot information in WebUI |  Minor | snapshots | Haohui Mai | Shinichi Yamashita |
| [HDFS-5168](https://issues.apache.org/jira/browse/HDFS-5168) | BlockPlacementPolicy does not work for cross node group dependencies |  Critical | namenode | Nikola Vujic | Nikola Vujic |
| [HDFS-2949](https://issues.apache.org/jira/browse/HDFS-2949) | HA: Add check to active state transition to prevent operator-induced split brain |  Major | ha, namenode | Todd Lipcon | Rushabh S Shah |
| [HDFS-2006](https://issues.apache.org/jira/browse/HDFS-2006) | ability to support storing extended attributes per file |  Major | namenode | dhruba borthakur | Yi Liu |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6793](https://issues.apache.org/jira/browse/HDFS-6793) | Missing changes in HftpFileSystem when Reintroduce dfs.http.port / dfs.https.port in branch-2 |  Blocker | . | Juan Yu | Juan Yu |
| [HDFS-6752](https://issues.apache.org/jira/browse/HDFS-6752) | Avoid Address bind errors in TestDatanodeConfig#testMemlockLimit |  Major | test | Vinayakumar B | Vinayakumar B |
| [HDFS-6723](https://issues.apache.org/jira/browse/HDFS-6723) | New NN webUI no longer displays decommissioned state for dead node |  Major | . | Ming Ma | Ming Ma |
| [HDFS-6712](https://issues.apache.org/jira/browse/HDFS-6712) | Document HDFS Multihoming Settings |  Major | documentation | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6703](https://issues.apache.org/jira/browse/HDFS-6703) | NFS: Files can be deleted from a read-only mount |  Major | nfs | Abhiraj Butala | Srikanth Upputuri |
| [HDFS-6696](https://issues.apache.org/jira/browse/HDFS-6696) | Name node cannot start if the path of a file under construction contains ".snapshot" |  Blocker | . | Kihwal Lee | Andrew Wang |
| [HDFS-6680](https://issues.apache.org/jira/browse/HDFS-6680) | BlockPlacementPolicyDefault does not choose favored nodes correctly |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6647](https://issues.apache.org/jira/browse/HDFS-6647) | Edit log corruption when pipeline recovery occurs for deleted file present in snapshot |  Blocker | namenode, snapshots | Aaron T. Myers | Kihwal Lee |
| [HDFS-6632](https://issues.apache.org/jira/browse/HDFS-6632) | Reintroduce dfs.http.port / dfs.https.port in branch-2 |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6631](https://issues.apache.org/jira/browse/HDFS-6631) | TestPread#testHedgedReadLoopTooManyTimes fails intermittently. |  Major | hdfs-client, test | Chris Nauroth | Liang Xie |
| [HDFS-6622](https://issues.apache.org/jira/browse/HDFS-6622) | Rename and AddBlock may race and produce invalid edits |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6618](https://issues.apache.org/jira/browse/HDFS-6618) | FSNamesystem#delete drops the FSN lock between removing INodes from the tree and deleting them from the inode map |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6612](https://issues.apache.org/jira/browse/HDFS-6612) | MiniDFSNNTopology#simpleFederatedTopology(int) always hardcode nameservice ID |  Minor | . | Juan Yu | Juan Yu |
| [HDFS-6610](https://issues.apache.org/jira/browse/HDFS-6610) | TestShortCircuitLocalRead tests sometimes timeout on slow machines |  Minor | test | Charles Lamb | Charles Lamb |
| [HDFS-6604](https://issues.apache.org/jira/browse/HDFS-6604) | The short-circuit cache doesn't correctly time out replicas that haven't been used in a while |  Critical | hdfs-client | Giuseppe Reina | Colin Patrick McCabe |
| [HDFS-6601](https://issues.apache.org/jira/browse/HDFS-6601) | Issues in finalizing rolling upgrade when there is a layout version change |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6599](https://issues.apache.org/jira/browse/HDFS-6599) | 2.4 addBlock is 10 to 20 times slower compared to 0.23 |  Blocker | . | Kihwal Lee | Daryn Sharp |
| [HDFS-6598](https://issues.apache.org/jira/browse/HDFS-6598) | Fix a typo in message issued from explorer.js |  Trivial | webhdfs | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6591](https://issues.apache.org/jira/browse/HDFS-6591) | while loop is executed tens of thousands of times  in Hedged  Read |  Major | hdfs-client | LiuLei | Liang Xie |
| [HDFS-6587](https://issues.apache.org/jira/browse/HDFS-6587) | Bug in TestBPOfferService can cause test failure |  Major | test | Zhilei Xu | Zhilei Xu |
| [HDFS-6583](https://issues.apache.org/jira/browse/HDFS-6583) | Remove clientNode in FileUnderConstructionFeature |  Minor | namenode | Haohui Mai | Haohui Mai |
| [HDFS-6572](https://issues.apache.org/jira/browse/HDFS-6572) | Add an option to the NameNode that prints the software and on-disk image versions |  Minor | namenode | Charles Lamb | Charles Lamb |
| [HDFS-6563](https://issues.apache.org/jira/browse/HDFS-6563) | NameNode cannot save fsimage in certain circumstances when snapshots are in use |  Critical | namenode, snapshots | Aaron T. Myers | Aaron T. Myers |
| [HDFS-6559](https://issues.apache.org/jira/browse/HDFS-6559) | Fix wrong option "dfsadmin -rollingUpgrade start" in the document |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6556](https://issues.apache.org/jira/browse/HDFS-6556) | Refine XAttr permissions |  Major | namenode | Yi Liu | Uma Maheswara Rao G |
| [HDFS-6553](https://issues.apache.org/jira/browse/HDFS-6553) | Add missing DeprecationDeltas for NFS Kerberos configurations |  Major | nfs | Stephen Chu | Stephen Chu |
| [HDFS-6552](https://issues.apache.org/jira/browse/HDFS-6552) | add DN storage to a BlockInfo will not replace the different storage from same DN |  Trivial | namenode | Amir Langer | Amir Langer |
| [HDFS-6551](https://issues.apache.org/jira/browse/HDFS-6551) | Rename with OVERWRITE option may throw NPE when the target file/directory is a reference INode |  Major | namenode, snapshots | Jing Zhao | Jing Zhao |
| [HDFS-6549](https://issues.apache.org/jira/browse/HDFS-6549) | Add support for accessing the NFS gateway from the AIX NFS client |  Major | nfs | Aaron T. Myers | Aaron T. Myers |
| [HDFS-6539](https://issues.apache.org/jira/browse/HDFS-6539) | test\_native\_mini\_dfs is skipped in hadoop-hdfs/pom.xml |  Major | . | Binglin Chang | Binglin Chang |
| [HDFS-6535](https://issues.apache.org/jira/browse/HDFS-6535) | HDFS quota update is wrong when file is appended |  Major | namenode | George Wong | George Wong |
| [HDFS-6530](https://issues.apache.org/jira/browse/HDFS-6530) | Fix Balancer documentation |  Minor | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6527](https://issues.apache.org/jira/browse/HDFS-6527) | Edit log corruption due to defered INode removal |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6518](https://issues.apache.org/jira/browse/HDFS-6518) | TestCacheDirectives#testExceedsCapacity should take FSN read lock when accessing pendingCached list |  Major | . | Yongjun Zhang | Andrew Wang |
| [HDFS-6500](https://issues.apache.org/jira/browse/HDFS-6500) | Snapshot shouldn't be removed silently after renaming to an existing snapshot |  Blocker | snapshots | Junping Du | Tsz Wo Nicholas Sze |
| [HDFS-6497](https://issues.apache.org/jira/browse/HDFS-6497) | Make TestAvailableSpaceVolumeChoosingPolicy deterministic |  Minor | test | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6493](https://issues.apache.org/jira/browse/HDFS-6493) | Change dfs.namenode.startup.delay.block.deletion to second instead of millisecond |  Trivial | . | Juan Yu | Juan Yu |
| [HDFS-6487](https://issues.apache.org/jira/browse/HDFS-6487) | TestStandbyCheckpoint#testSBNCheckpoints is racy |  Major | . | Mit Desai | Mit Desai |
| [HDFS-6475](https://issues.apache.org/jira/browse/HDFS-6475) | WebHdfs clients fail without retry because incorrect handling of StandbyException |  Major | ha, webhdfs | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6472](https://issues.apache.org/jira/browse/HDFS-6472) | fix typo in webapps/hdfs/explorer.js |  Trivial | . | Juan Yu | Juan Yu |
| [HDFS-6471](https://issues.apache.org/jira/browse/HDFS-6471) | Make moveFromLocal CLI testcases to be non-disruptive |  Major | test | Dasha Boudnik | Dasha Boudnik |
| [HDFS-6470](https://issues.apache.org/jira/browse/HDFS-6470) | TestBPOfferService.testBPInitErrorHandling is flaky |  Major | . | Andrew Wang | Ming Ma |
| [HDFS-6464](https://issues.apache.org/jira/browse/HDFS-6464) | Support multiple xattr.name parameters for WebHDFS getXAttrs. |  Major | webhdfs | Yi Liu | Yi Liu |
| [HDFS-6462](https://issues.apache.org/jira/browse/HDFS-6462) | NFS: fsstat request fails with the secure hdfs |  Major | nfs | Yesha Vora | Brandon Li |
| [HDFS-6461](https://issues.apache.org/jira/browse/HDFS-6461) | Use Time#monotonicNow to compute duration in DataNode#shutDown |  Trivial | datanode | James Thomas | James Thomas |
| [HDFS-6443](https://issues.apache.org/jira/browse/HDFS-6443) | Fix MiniQJMHACluster related test failures |  Minor | test | Zesheng Wu | Zesheng Wu |
| [HDFS-6439](https://issues.apache.org/jira/browse/HDFS-6439) | NFS should not reject NFS requests to the NULL procedure whether port monitoring is enabled or not |  Major | nfs | Brandon Li | Aaron T. Myers |
| [HDFS-6438](https://issues.apache.org/jira/browse/HDFS-6438) | DeleteSnapshot should be a DELETE request in WebHdfs |  Major | webhdfs | Jing Zhao | Jing Zhao |
| [HDFS-6424](https://issues.apache.org/jira/browse/HDFS-6424) | blockReport doesn't need to invalidate blocks on SBN |  Major | . | Ming Ma | Ming Ma |
| [HDFS-6423](https://issues.apache.org/jira/browse/HDFS-6423) | Diskspace quota usage should be updated when appending data to partial block |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-6422](https://issues.apache.org/jira/browse/HDFS-6422) | getfattr in CLI doesn't throw exception or return non-0 return code when xattr doesn't exist |  Blocker | . | Charles Lamb | Charles Lamb |
| [HDFS-6421](https://issues.apache.org/jira/browse/HDFS-6421) | Fix vecsum.c compile on BSD and some other systems |  Major | libhdfs | Jason Lowe | Mit Desai |
| [HDFS-6418](https://issues.apache.org/jira/browse/HDFS-6418) | Regression: DFS\_NAMENODE\_USER\_NAME\_KEY missing in trunk |  Blocker | hdfs-client | Steve Loughran | Tsz Wo Nicholas Sze |
| [HDFS-6409](https://issues.apache.org/jira/browse/HDFS-6409) | Fix typo in log message about NameNode layout version upgrade. |  Trivial | namenode | Chris Nauroth | Chen He |
| [HDFS-6404](https://issues.apache.org/jira/browse/HDFS-6404) | HttpFS should use a 000 umask for mkdir and create operations |  Major | . | Alejandro Abdelnur | Mike Yoder |
| [HDFS-6400](https://issues.apache.org/jira/browse/HDFS-6400) | Cannot execute "hdfs oiv\_legacy" |  Critical | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6399](https://issues.apache.org/jira/browse/HDFS-6399) | Add note about setfacl in HDFS permissions guide |  Minor | documentation, namenode | Charles Lamb | Chris Nauroth |
| [HDFS-6395](https://issues.apache.org/jira/browse/HDFS-6395) | Skip checking xattr limits for non-user-visible namespaces |  Major | namenode | Andrew Wang | Yi Liu |
| [HDFS-6381](https://issues.apache.org/jira/browse/HDFS-6381) | Fix a typo in INodeReference.java |  Trivial | documentation | Binglin Chang | Binglin Chang |
| [HDFS-6379](https://issues.apache.org/jira/browse/HDFS-6379) | HTTPFS - Implement ACLs support |  Major | . | Alejandro Abdelnur | Mike Yoder |
| [HDFS-6378](https://issues.apache.org/jira/browse/HDFS-6378) | NFS registration should timeout instead of hanging when portmap/rpcbind is not available |  Major | nfs | Brandon Li | Abhiraj Butala |
| [HDFS-6370](https://issues.apache.org/jira/browse/HDFS-6370) | Web UI fails to display in intranet under IE |  Major | datanode, journal-node, namenode | Haohui Mai | Haohui Mai |
| [HDFS-6367](https://issues.apache.org/jira/browse/HDFS-6367) | EnumSetParam$Domain#parse fails for parameter containing more than one enum. |  Major | webhdfs | Yi Liu | Yi Liu |
| [HDFS-6364](https://issues.apache.org/jira/browse/HDFS-6364) | Incorrect check for unknown datanode in Balancer |  Major | balancer & mover | Benoy Antony | Benoy Antony |
| [HDFS-6355](https://issues.apache.org/jira/browse/HDFS-6355) | Fix divide-by-zero, improper use of wall-clock time in BlockPoolSliceScanner |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6345](https://issues.apache.org/jira/browse/HDFS-6345) | DFS.listCacheDirectives() should allow filtering based on cache directive ID |  Major | caching | Lenni Kuff | Andrew Wang |
| [HDFS-6337](https://issues.apache.org/jira/browse/HDFS-6337) | Setfacl testcase is failing due to dash character in username in TestAclCLI |  Major | test | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-6312](https://issues.apache.org/jira/browse/HDFS-6312) | WebHdfs HA failover is broken on secure clusters |  Blocker | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6305](https://issues.apache.org/jira/browse/HDFS-6305) | WebHdfs response decoding may throw RuntimeExceptions |  Critical | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6294](https://issues.apache.org/jira/browse/HDFS-6294) | Use INode IDs to avoid conflicts when a file open for write is renamed |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6293](https://issues.apache.org/jira/browse/HDFS-6293) | Issues with OIV processing PB-based fsimages |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-6289](https://issues.apache.org/jira/browse/HDFS-6289) | HA failover can fail if there are pending DN messages for DNs which no longer exist |  Critical | ha | Aaron T. Myers | Aaron T. Myers |
| [HDFS-6288](https://issues.apache.org/jira/browse/HDFS-6288) | DFSInputStream Pread doesn't update ReadStatistics |  Minor | . | Juan Yu | Juan Yu |
| [HDFS-6270](https://issues.apache.org/jira/browse/HDFS-6270) | Secondary namenode status page shows transaction count in bytes |  Minor | . | Benoy Antony | Benoy Antony |
| [HDFS-6250](https://issues.apache.org/jira/browse/HDFS-6250) | TestBalancerWithNodeGroup.testBalancerWithRackLocality fails |  Major | . | Kihwal Lee | Binglin Chang |
| [HDFS-6243](https://issues.apache.org/jira/browse/HDFS-6243) | HA NameNode transition to active or shutdown may leave lingering image transfer thread. |  Major | ha, namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-6238](https://issues.apache.org/jira/browse/HDFS-6238) | TestDirectoryScanner leaks file descriptors. |  Minor | datanode, test | Chris Nauroth | Chris Nauroth |
| [HDFS-6230](https://issues.apache.org/jira/browse/HDFS-6230) | Expose upgrade status through NameNode web UI |  Major | namenode | Arpit Agarwal | Mit Desai |
| [HDFS-6227](https://issues.apache.org/jira/browse/HDFS-6227) | ShortCircuitCache#unref should purge ShortCircuitReplicas whose streams have been closed by java interrupts |  Major | . | Jing Zhao | Colin Patrick McCabe |
| [HDFS-6222](https://issues.apache.org/jira/browse/HDFS-6222) | Remove background token renewer from webhdfs |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6216](https://issues.apache.org/jira/browse/HDFS-6216) | Issues with webhdfs and http proxies |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6214](https://issues.apache.org/jira/browse/HDFS-6214) | Webhdfs has poor throughput for files \>2GB |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6213](https://issues.apache.org/jira/browse/HDFS-6213) | TestDataNodeConfig failing on Jenkins runs due to DN web port in use |  Minor | test | Steve Loughran | Andrew Wang |
| [HDFS-6194](https://issues.apache.org/jira/browse/HDFS-6194) | Create new tests for ByteRangeInputStream |  Major | . | Haohui Mai | Akira AJISAKA |
| [HDFS-6190](https://issues.apache.org/jira/browse/HDFS-6190) | minor textual fixes in DFSClient |  Trivial | tools | Charles Lamb | Charles Lamb |
| [HDFS-6181](https://issues.apache.org/jira/browse/HDFS-6181) | Fix the wrong property names in NFS user guide |  Trivial | documentation, nfs | Brandon Li | Brandon Li |
| [HDFS-6180](https://issues.apache.org/jira/browse/HDFS-6180) | dead node count / listing is very broken in JMX and old GUI |  Blocker | . | Travis Thompson | Haohui Mai |
| [HDFS-6178](https://issues.apache.org/jira/browse/HDFS-6178) | Decommission on standby NN couldn't finish |  Major | namenode | Ming Ma | Ming Ma |
| [HDFS-6160](https://issues.apache.org/jira/browse/HDFS-6160) | TestSafeMode occasionally fails |  Major | test | Ted Yu | Arpit Agarwal |
| [HDFS-6159](https://issues.apache.org/jira/browse/HDFS-6159) | TestBalancerWithNodeGroup.testBalancerWithNodeGroup fails if there is block missing after balancer success |  Major | test | Chen He | Chen He |
| [HDFS-6156](https://issues.apache.org/jira/browse/HDFS-6156) | Simplify the JMX API that provides snapshot information |  Major | . | Haohui Mai | Shinichi Yamashita |
| [HDFS-6153](https://issues.apache.org/jira/browse/HDFS-6153) | Document "fileId" and "childrenNum" fields in the FileStatus Json schema |  Minor | documentation, webhdfs | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6143](https://issues.apache.org/jira/browse/HDFS-6143) | WebHdfsFileSystem open should throw FileNotFoundException for non-existing paths |  Blocker | . | Gera Shegalov | Gera Shegalov |
| [HDFS-6112](https://issues.apache.org/jira/browse/HDFS-6112) | NFS Gateway docs are incorrect for allowed hosts configuration |  Minor | nfs | Aaron T. Myers | Aaron T. Myers |
| [HDFS-6056](https://issues.apache.org/jira/browse/HDFS-6056) | Clean up NFS config settings |  Major | nfs | Aaron T. Myers | Brandon Li |
| [HDFS-5669](https://issues.apache.org/jira/browse/HDFS-5669) | Storage#tryLock() should check for null before logging successfull message |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-5591](https://issues.apache.org/jira/browse/HDFS-5591) | Checkpointing should use monotonic time when calculating period |  Minor | namenode | Andrew Wang | Charles Lamb |
| [HDFS-5522](https://issues.apache.org/jira/browse/HDFS-5522) | Datanode disk error check may be incorrectly skipped |  Major | . | Kihwal Lee | Rushabh S Shah |
| [HDFS-4913](https://issues.apache.org/jira/browse/HDFS-4913) | Deleting file through fuse-dfs when using trash fails requiring root permissions |  Major | fuse-dfs | Stephen Chu | Colin Patrick McCabe |
| [HDFS-4909](https://issues.apache.org/jira/browse/HDFS-4909) | Avoid protocol buffer RPC namespace clashes |  Blocker | datanode, journal-node, namenode | Ralph Castain | Colin Patrick McCabe |
| [HDFS-3848](https://issues.apache.org/jira/browse/HDFS-3848) | A Bug in recoverLeaseInternal method of FSNameSystem class |  Major | namenode | Hooman Peiro Sajjad | Chen He |
| [HDFS-3828](https://issues.apache.org/jira/browse/HDFS-3828) | Block Scanner rescans blocks too frequently |  Major | . | Andy Isaacson | Andy Isaacson |
| [HDFS-3493](https://issues.apache.org/jira/browse/HDFS-3493) | Invalidate excess corrupted blocks as long as minimum replication is satisfied |  Major | . | J.Andreina | Juan Yu |
| [HDFS-3087](https://issues.apache.org/jira/browse/HDFS-3087) | Decomissioning on NN restart can complete without blocks being replicated |  Critical | namenode | Kihwal Lee | Rushabh S Shah |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6614](https://issues.apache.org/jira/browse/HDFS-6614) | shorten TestPread run time with a smaller retry timeout setting |  Minor | test | Liang Xie | Liang Xie |
| [HDFS-6419](https://issues.apache.org/jira/browse/HDFS-6419) | TestBookKeeperHACheckpoints#TestSBNCheckpoints fails on trunk |  Major | . | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6287](https://issues.apache.org/jira/browse/HDFS-6287) | Add vecsum test of libhdfs read access times |  Minor | libhdfs, test | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6265](https://issues.apache.org/jira/browse/HDFS-6265) | Prepare HDFS codebase for JUnit 4.11. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-6257](https://issues.apache.org/jira/browse/HDFS-6257) | TestCacheDirectives#testExceedsCapacity fails occasionally |  Minor | caching | Ted Yu | Colin Patrick McCabe |
| [HDFS-6224](https://issues.apache.org/jira/browse/HDFS-6224) | Add a unit test to TestAuditLogger for file permissions passed to logAuditEvent |  Minor | test | Charles Lamb | Charles Lamb |
| [HDFS-5892](https://issues.apache.org/jira/browse/HDFS-5892) | TestDeleteBlockPool fails in branch-2 |  Minor | . | Ted Yu | Ted Yu |
| [HDFS-5409](https://issues.apache.org/jira/browse/HDFS-5409) | TestOfflineEditsViewer#testStored fails on Windows due to CRLF line endings in editsStored.xml from git checkout |  Minor | test | Chris Nauroth | Chris Nauroth |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6562](https://issues.apache.org/jira/browse/HDFS-6562) | Refactor rename() in FSDirectory |  Minor | namenode | Haohui Mai | Haohui Mai |
| [HDFS-6557](https://issues.apache.org/jira/browse/HDFS-6557) | Move the reference of fsimage to FSNamesystem |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-6480](https://issues.apache.org/jira/browse/HDFS-6480) | Move waitForReady() from FSDirectory to FSNamesystem |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-6351](https://issues.apache.org/jira/browse/HDFS-6351) | Command "hdfs dfs -rm -r" can't remove empty directory |  Major | hdfs-client | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6330](https://issues.apache.org/jira/browse/HDFS-6330) | Move mkdirs() to FSNamesystem |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-6328](https://issues.apache.org/jira/browse/HDFS-6328) | Clean up dead code in FSDirectory |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-6315](https://issues.apache.org/jira/browse/HDFS-6315) | Decouple recording edit logs from FSDirectory |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6276](https://issues.apache.org/jira/browse/HDFS-6276) | Remove unnecessary conditions and null check |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6275](https://issues.apache.org/jira/browse/HDFS-6275) | Fix warnings - type arguments can be inferred and redudant local variable |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6274](https://issues.apache.org/jira/browse/HDFS-6274) | Cleanup javadoc warnings in HDFS code |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6240](https://issues.apache.org/jira/browse/HDFS-6240) | WebImageViewer returns 404 if LISTSTATUS to an empty directory |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6219](https://issues.apache.org/jira/browse/HDFS-6219) | Proxy superuser configuration should use true client IP for address checks |  Major | namenode, webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6218](https://issues.apache.org/jira/browse/HDFS-6218) | Audit log should use true client IP for proxied webhdfs operations |  Major | namenode, webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6217](https://issues.apache.org/jira/browse/HDFS-6217) | Webhdfs PUT operations may not work via a http proxy |  Major | webhdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-6210](https://issues.apache.org/jira/browse/HDFS-6210) | Support GETACLSTATUS operation in WebImageViewer |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6186](https://issues.apache.org/jira/browse/HDFS-6186) | Pause deletion of blocks when the namenode starts up |  Major | namenode | Suresh Srinivas | Jing Zhao |
| [HDFS-6173](https://issues.apache.org/jira/browse/HDFS-6173) | Move the default processor from Ls to Web in OfflineImageViewer |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6170](https://issues.apache.org/jira/browse/HDFS-6170) | Support GETFILESTATUS operation in WebImageViewer |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6169](https://issues.apache.org/jira/browse/HDFS-6169) | Move the address in WebImageViewer |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6162](https://issues.apache.org/jira/browse/HDFS-6162) | Format strings should use platform independent line separator |  Minor | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6155](https://issues.apache.org/jira/browse/HDFS-6155) | Fix Boxing/unboxing to parse a primitive findbugs warnings |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6125](https://issues.apache.org/jira/browse/HDFS-6125) | Cleanup unnecessary cast in HDFS code base |  Major | test | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6119](https://issues.apache.org/jira/browse/HDFS-6119) | FSNamesystem code cleanup |  Minor | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-5978](https://issues.apache.org/jira/browse/HDFS-5978) | Create a tool to take fsimage and expose read-only WebHDFS API |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5865](https://issues.apache.org/jira/browse/HDFS-5865) | Update OfflineImageViewer document |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5411](https://issues.apache.org/jira/browse/HDFS-5411) | Update Bookkeeper dependency to 4.2.3 |  Minor | . | Robert Rati | Rakesh R |
| [HDFS-4667](https://issues.apache.org/jira/browse/HDFS-4667) | Capture renamed files/directories in snapshot diff report |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4286](https://issues.apache.org/jira/browse/HDFS-4286) | Changes from BOOKKEEPER-203 broken capability of including bookkeeper-server jar in hidden package of BKJM |  Major | . | Vinayakumar B | Rakesh R |
| [HDFS-4221](https://issues.apache.org/jira/browse/HDFS-4221) | Remove the format limitation point from BKJM documentation as HDFS-3810 closed |  Major | ha | Uma Maheswara Rao G | Rakesh R |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6486](https://issues.apache.org/jira/browse/HDFS-6486) | Add user doc for XAttrs via WebHDFS. |  Minor | webhdfs | Yi Liu | Yi Liu |
| [HDFS-6430](https://issues.apache.org/jira/browse/HDFS-6430) | HTTPFS - Implement XAttr support |  Major | . | Yi Liu | Yi Liu |


