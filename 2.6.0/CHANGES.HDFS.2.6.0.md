# Hadoop Changelog

## Release 2.6.0 - 2014-11-18

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6959](https://issues.apache.org/jira/browse/HDFS-6959) | Make the HDFS home directory location customizable. |  Minor | . | Kevin Odell | Yongjun Zhang |
| [HDFS-6634](https://issues.apache.org/jira/browse/HDFS-6634) | inotify in HDFS |  Major | hdfs-client, namenode, qjm | James Thomas | James Thomas |
| [HDFS-6584](https://issues.apache.org/jira/browse/HDFS-6584) | Support Archival Storage |  Major | balancer & mover, namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6581](https://issues.apache.org/jira/browse/HDFS-6581) | Write to single replica in memory |  Major | datanode, hdfs-client, namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6134](https://issues.apache.org/jira/browse/HDFS-6134) | Transparent data at rest encryption |  Major | security | Alejandro Abdelnur | Charles Lamb |
| [HDFS-4257](https://issues.apache.org/jira/browse/HDFS-4257) | The ReplaceDatanodeOnFailure policies could have a forgiving option |  Minor | hdfs-client | Harsh J | Tsz Wo Nicholas Sze |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7313](https://issues.apache.org/jira/browse/HDFS-7313) | Support optional configuration of AES cipher suite on DataTransferProtocol. |  Major | datanode, hdfs-client, security | Chris Nauroth | Chris Nauroth |
| [HDFS-7276](https://issues.apache.org/jira/browse/HDFS-7276) | Limit the number of byte arrays used by DFSOutputStream |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7260](https://issues.apache.org/jira/browse/HDFS-7260) | Make DFSOutputStream.MAX\_PACKETS configurable |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7233](https://issues.apache.org/jira/browse/HDFS-7233) | NN logs unnecessary org.apache.hadoop.hdfs.protocol.UnresolvedPathException |  Major | namenode | Rushabh S Shah | Rushabh S Shah |
| [HDFS-7230](https://issues.apache.org/jira/browse/HDFS-7230) | Add rolling downgrade documentation |  Major | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7228](https://issues.apache.org/jira/browse/HDFS-7228) | Add an SSD policy into the default BlockStoragePolicySuite |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-7217](https://issues.apache.org/jira/browse/HDFS-7217) | Better batching of IBRs |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7215](https://issues.apache.org/jira/browse/HDFS-7215) | Add JvmPauseMonitor to NFS gateway |  Minor | nfs | Brandon Li | Brandon Li |
| [HDFS-7195](https://issues.apache.org/jira/browse/HDFS-7195) | Update user doc of secure mode about Datanodes don't require root or jsvc |  Major | documentation, security | Yi Liu | Chris Nauroth |
| [HDFS-7158](https://issues.apache.org/jira/browse/HDFS-7158) | Reduce the memory usage of WebImageViewer |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-7153](https://issues.apache.org/jira/browse/HDFS-7153) | Add storagePolicy to NN edit log during file creation |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7128](https://issues.apache.org/jira/browse/HDFS-7128) | Decommission slows way down when it gets towards the end |  Major | namenode | Ming Ma | Ming Ma |
| [HDFS-7093](https://issues.apache.org/jira/browse/HDFS-7093) | Add config key to restrict setStoragePolicy |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7059](https://issues.apache.org/jira/browse/HDFS-7059) | HAadmin transtionToActive with forceActive option can show confusing message. |  Minor | . | Rushabh S Shah | Rushabh S Shah |
| [HDFS-6943](https://issues.apache.org/jira/browse/HDFS-6943) | Improve NN allocateBlock log to include replicas' datanode IPs |  Minor | namenode | Ming Ma | Ming Ma |
| [HDFS-6899](https://issues.apache.org/jira/browse/HDFS-6899) | Allow changing MiniDFSCluster volumes per DN and capacity per volume |  Major | datanode, test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6886](https://issues.apache.org/jira/browse/HDFS-6886) | Use single editlog record for creating file + overwrite. |  Critical | namenode | Yi Liu | Yi Liu |
| [HDFS-6858](https://issues.apache.org/jira/browse/HDFS-6858) | Allow dfs.data.transfer.saslproperties.resolver.class default to hadoop.security.saslproperties.resolver.class |  Minor | security | Benoy Antony | Benoy Antony |
| [HDFS-6850](https://issues.apache.org/jira/browse/HDFS-6850) | Move NFS out of order write unit tests into TestWrites class |  Minor | nfs | Zhe Zhang | Zhe Zhang |
| [HDFS-6849](https://issues.apache.org/jira/browse/HDFS-6849) | Replace HttpFS custom proxyuser handling with common implementation |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-6837](https://issues.apache.org/jira/browse/HDFS-6837) | Code cleanup for Balancer and Dispatcher |  Minor | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6836](https://issues.apache.org/jira/browse/HDFS-6836) | HDFS INFO logging is verbose & uses file appenders |  Major | datanode | Gopal V | Nathan Yao |
| [HDFS-6828](https://issues.apache.org/jira/browse/HDFS-6828) | Separate block replica dispatching from Balancer |  Major | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6812](https://issues.apache.org/jira/browse/HDFS-6812) | Remove addBlock and replaceBlock from DatanodeDescriptor |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6809](https://issues.apache.org/jira/browse/HDFS-6809) | Move some Balancer's inner classes to standalone classes |  Minor | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6800](https://issues.apache.org/jira/browse/HDFS-6800) | Support Datanode layout changes with rolling upgrade |  Major | datanode | Colin Patrick McCabe | James Thomas |
| [HDFS-6798](https://issues.apache.org/jira/browse/HDFS-6798) | Add test case for incorrect data node condition during balancing |  Major | balancer & mover | Benoy Antony | Benoy Antony |
| [HDFS-6796](https://issues.apache.org/jira/browse/HDFS-6796) | Improving the argument check during balancer command line parsing |  Minor | balancer & mover | Benoy Antony | Benoy Antony |
| [HDFS-6794](https://issues.apache.org/jira/browse/HDFS-6794) | Update BlockManager methods to use DatanodeStorageInfo where possible |  Minor | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6781](https://issues.apache.org/jira/browse/HDFS-6781) | Separate HDFS commands from CommandsManual.apt.vm |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6779](https://issues.apache.org/jira/browse/HDFS-6779) | Add missing version subcommand for hdfs |  Minor | scripts | Allen Wittenauer | Sasaki Toru |
| [HDFS-6773](https://issues.apache.org/jira/browse/HDFS-6773) | MiniDFSCluster should skip edit log fsync by default |  Major | namenode | Daryn Sharp | Stephen Chu |
| [HDFS-6772](https://issues.apache.org/jira/browse/HDFS-6772) | Get DN storages out of blockContentsStale state faster after NN restarts |  Major | . | Ming Ma | Ming Ma |
| [HDFS-6758](https://issues.apache.org/jira/browse/HDFS-6758) | block writer should pass the expected block size to DataXceiverServer |  Major | datanode, hdfs-client | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6755](https://issues.apache.org/jira/browse/HDFS-6755) | There is an unnecessary sleep in the code path where DFSOutputStream#close gives up its attempt to contact the namenode |  Major | . | Mit Desai | Mit Desai |
| [HDFS-6739](https://issues.apache.org/jira/browse/HDFS-6739) | Add getDatanodeStorageReport to ClientProtocol |  Major | hdfs-client, namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6701](https://issues.apache.org/jira/browse/HDFS-6701) | Make seed optional in NetworkTopology#sortByDistance |  Major | namenode | Ashwin Shankar | Ashwin Shankar |
| [HDFS-6700](https://issues.apache.org/jira/browse/HDFS-6700) | BlockPlacementPolicy shoud choose storage but not datanode for deletion |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6690](https://issues.apache.org/jira/browse/HDFS-6690) | Deduplicate xattr names in memory |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-6685](https://issues.apache.org/jira/browse/HDFS-6685) | Balancer should preserve storage type of replicas |  Major | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6655](https://issues.apache.org/jira/browse/HDFS-6655) | Add 'header banner' to 'explorer.html' also in Namenode UI |  Major | . | Vinayakumar B | Vinayakumar B |
| [HDFS-6643](https://issues.apache.org/jira/browse/HDFS-6643) | Refactor INodeFile.HeaderFormat and INodeWithAdditionalFields.PermissionStatusFormat |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6627](https://issues.apache.org/jira/browse/HDFS-6627) | Rename DataNode#checkWriteAccess to checkReadAccess. |  Major | datanode | Liang Xie | Liang Xie |
| [HDFS-6613](https://issues.apache.org/jira/browse/HDFS-6613) | Improve logging in caching classes |  Minor | caching | Andrew Wang | Andrew Wang |
| [HDFS-6606](https://issues.apache.org/jira/browse/HDFS-6606) | Optimize HDFS Encrypted Transport performance |  Major | datanode, hdfs-client, security | Yi Liu | Yi Liu |
| [HDFS-6597](https://issues.apache.org/jira/browse/HDFS-6597) | Add a new option to NN upgrade to terminate the process after upgrade on NN is completed |  Major | namenode | Danilo Vunjak | Danilo Vunjak |
| [HDFS-6570](https://issues.apache.org/jira/browse/HDFS-6570) | add api that enables checking if a user has certain permissions on a file |  Major | hdfs-client, namenode, webhdfs | Thejas M Nair | Jitendra Nath Pandey |
| [HDFS-6519](https://issues.apache.org/jira/browse/HDFS-6519) | Document oiv\_legacy command |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6511](https://issues.apache.org/jira/browse/HDFS-6511) | BlockManager#computeInvalidateWork() could do nothing |  Minor | . | Juan Yu | Juan Yu |
| [HDFS-6482](https://issues.apache.org/jira/browse/HDFS-6482) | Use block ID-based block layout on datanodes |  Major | datanode | James Thomas | James Thomas |
| [HDFS-6441](https://issues.apache.org/jira/browse/HDFS-6441) | Add ability to exclude/include specific datanodes while balancing |  Major | balancer & mover | Benoy Antony | Benoy Antony |
| [HDFS-6188](https://issues.apache.org/jira/browse/HDFS-6188) | An ip whitelist based implementation of TrustedChannelResolver |  Major | security | Benoy Antony | Benoy Antony |
| [HDFS-5202](https://issues.apache.org/jira/browse/HDFS-5202) | Support Centralized Cache Management on Windows. |  Major | datanode | Colin Patrick McCabe | Chris Nauroth |
| [HDFS-5182](https://issues.apache.org/jira/browse/HDFS-5182) | BlockReaderLocal must allow zero-copy  reads only when the DN believes it's valid |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4486](https://issues.apache.org/jira/browse/HDFS-4486) | Add log category for long-running DFSClient notices |  Minor | . | Todd Lipcon | Zhe Zhang |
| [HDFS-4120](https://issues.apache.org/jira/browse/HDFS-4120) | Add a new "-skipSharedEditsCheck" option for BootstrapStandby |  Minor | ha, namenode | Liang Xie | Rakesh R |
| [HDFS-3851](https://issues.apache.org/jira/browse/HDFS-3851) | Make DFSOuputSteram$Packet default constructor reuse the other constructor |  Trivial | hdfs-client | Jing Zhao | Jing Zhao |
| [HDFS-3528](https://issues.apache.org/jira/browse/HDFS-3528) | Use native CRC32 in DFS write path |  Major | datanode, hdfs-client, performance | Todd Lipcon | James Thomas |
| [HDFS-2856](https://issues.apache.org/jira/browse/HDFS-2856) | Fix block protocol so that Datanodes don't require root or jsvc |  Major | datanode, security | Owen O'Malley | Chris Nauroth |
| [HDFS-573](https://issues.apache.org/jira/browse/HDFS-573) | Porting libhdfs to Windows |  Major | libhdfs | Ziliang Guo | Chris Nauroth |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7391](https://issues.apache.org/jira/browse/HDFS-7391) | Renable SSLv2Hello in HttpFS |  Blocker | webhdfs | Robert Kanter | Robert Kanter |
| [HDFS-7387](https://issues.apache.org/jira/browse/HDFS-7387) | NFS may only do partial commit due to a race between COMMIT and write |  Critical | nfs | Brandon Li | Brandon Li |
| [HDFS-7385](https://issues.apache.org/jira/browse/HDFS-7385) | ThreadLocal used in FSEditLog class causes FSImage permission mess up |  Blocker | namenode | jiangyu | jiangyu |
| [HDFS-7383](https://issues.apache.org/jira/browse/HDFS-7383) | DataNode.requestShortCircuitFdsForRead may throw NullPointerException |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7382](https://issues.apache.org/jira/browse/HDFS-7382) | DataNode in secure mode may throw NullPointerException if client connects before DataNode registers itself with NameNode. |  Minor | datanode, security | Chris Nauroth | Chris Nauroth |
| [HDFS-7379](https://issues.apache.org/jira/browse/HDFS-7379) | TestBalancer#testBalancerWithRamDisk creates test files incorrectly |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7367](https://issues.apache.org/jira/browse/HDFS-7367) | HDFS short-circuit read cannot negotiate shared memory slot and file descriptors when SASL is enabled on DataTransferProtocol. |  Major | hdfs-client | Chris Nauroth | Chris Nauroth |
| [HDFS-7364](https://issues.apache.org/jira/browse/HDFS-7364) | Balancer always shows zero Bytes Already Moved |  Minor | balancer & mover | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7359](https://issues.apache.org/jira/browse/HDFS-7359) | NameNode in secured HA cluster fails to start if dfs.namenode.secondary.http-address cannot be interpreted as a network address. |  Major | journal-node, namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-7340](https://issues.apache.org/jira/browse/HDFS-7340) | make rollingUpgrade start/finalize idempotent |  Major | ha | Arpit Gupta | Jing Zhao |
| [HDFS-7334](https://issues.apache.org/jira/browse/HDFS-7334) | Fix periodic failures of TestCheckpoint#testTooManyEditReplayFailures |  Minor | test | Charles Lamb | Charles Lamb |
| [HDFS-7328](https://issues.apache.org/jira/browse/HDFS-7328) | TestTraceAdmin assumes Unix line endings. |  Trivial | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7309](https://issues.apache.org/jira/browse/HDFS-7309) | XMLUtils.mangleXmlString doesn't seem to handle less than sign |  Minor | . | Ravi Prakash | Colin Patrick McCabe |
| [HDFS-7305](https://issues.apache.org/jira/browse/HDFS-7305) | NPE seen in wbhdfs FS while running SLive |  Minor | webhdfs | Arpit Gupta | Jing Zhao |
| [HDFS-7300](https://issues.apache.org/jira/browse/HDFS-7300) | The getMaxNodesPerRack() method in BlockPlacementPolicyDefault is flawed |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7296](https://issues.apache.org/jira/browse/HDFS-7296) | HdfsConstants#MEMORY\_STORAGE\_POLICY\_ID and HdfsConstants#MEMORY\_STORAGE\_POLICY\_ID are missing in branch-2 |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-7287](https://issues.apache.org/jira/browse/HDFS-7287) | The OfflineImageViewer (OIV) can output invalid XML depending on the filename |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-7274](https://issues.apache.org/jira/browse/HDFS-7274) | Disable SSLv3 in HttpFS |  Blocker | webhdfs | Robert Kanter | Robert Kanter |
| [HDFS-7259](https://issues.apache.org/jira/browse/HDFS-7259) | Unresponseive NFS mount point due to deferred COMMIT response |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-7243](https://issues.apache.org/jira/browse/HDFS-7243) | HDFS concat operation should not be allowed in Encryption Zone |  Major | encryption, namenode | Yi Liu | Charles Lamb |
| [HDFS-7237](https://issues.apache.org/jira/browse/HDFS-7237) | namenode -rollingUpgrade throws ArrayIndexOutOfBoundsException |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7236](https://issues.apache.org/jira/browse/HDFS-7236) | Fix TestOpenFilesWithSnapshot#testOpenFilesWithMultipleSnapshots |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7226](https://issues.apache.org/jira/browse/HDFS-7226) | TestDNFencing.testQueueingWithAppend failed often in latest test |  Major | ha | Yongjun Zhang | Yongjun Zhang |
| [HDFS-7221](https://issues.apache.org/jira/browse/HDFS-7221) | TestDNFencingWithReplication fails consistently |  Minor | test | Charles Lamb | Charles Lamb |
| [HDFS-7218](https://issues.apache.org/jira/browse/HDFS-7218) | FSNamesystem ACL operations should write to audit log on failure |  Minor | namenode | Charles Lamb | Charles Lamb |
| [HDFS-7208](https://issues.apache.org/jira/browse/HDFS-7208) | NN doesn't schedule replication when a DN storage fails |  Major | namenode | Ming Ma | Ming Ma |
| [HDFS-7199](https://issues.apache.org/jira/browse/HDFS-7199) | DFSOutputStream should not silently drop data if DataStreamer crashes with an unchecked exception |  Critical | hdfs-client | Jason Lowe | Rushabh S Shah |
| [HDFS-7185](https://issues.apache.org/jira/browse/HDFS-7185) | The active NameNode will not accept an fsimage sent from the standby during rolling upgrade |  Major | namenode | Colin Patrick McCabe | Jing Zhao |
| [HDFS-7180](https://issues.apache.org/jira/browse/HDFS-7180) | NFSv3 gateway frequently gets stuck due to GC |  Critical | nfs | Eric Zhiqiang Ma | Brandon Li |
| [HDFS-7178](https://issues.apache.org/jira/browse/HDFS-7178) | Additional unit test for replica write with full disk |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7176](https://issues.apache.org/jira/browse/HDFS-7176) | The namenode usage message doesn't include "-rollingupgrade started" |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7172](https://issues.apache.org/jira/browse/HDFS-7172) | Test data files may be checked out of git with incorrect line endings, causing test failures in TestHDFSCLI. |  Trivial | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7169](https://issues.apache.org/jira/browse/HDFS-7169) | Fix a findbugs warning in ReplaceDatanodeOnFailure |  Minor | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7167](https://issues.apache.org/jira/browse/HDFS-7167) | NPE while running Mover if the given path is for a file |  Major | balancer & mover | Prabushankar Chinnasamy | Jing Zhao |
| [HDFS-7162](https://issues.apache.org/jira/browse/HDFS-7162) | Wrong path when deleting through fuse-dfs a file which already exists in trash |  Major | fuse-dfs | Chengbing Liu | Chengbing Liu |
| [HDFS-7156](https://issues.apache.org/jira/browse/HDFS-7156) | Fsck documentation is outdated. |  Major | documentation | Konstantin Shvachko | Masahiro Yamaguchi |
| [HDFS-7148](https://issues.apache.org/jira/browse/HDFS-7148) | TestEncryptionZones#testIsEncryptedMethod fails on branch-2 after archival storage merge |  Major | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7147](https://issues.apache.org/jira/browse/HDFS-7147) | Update archival storage user documentation |  Blocker | documentation | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7132](https://issues.apache.org/jira/browse/HDFS-7132) | hdfs namenode -metadataVersion command does not honor configured name dirs |  Minor | namenode | Charles Lamb | Charles Lamb |
| [HDFS-7131](https://issues.apache.org/jira/browse/HDFS-7131) | During HA upgrade, JournalNode should create a new committedTxnId file in the current directory |  Major | qjm | Jing Zhao | Jing Zhao |
| [HDFS-7130](https://issues.apache.org/jira/browse/HDFS-7130) | TestDataTransferKeepalive fails intermittently on Windows. |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7127](https://issues.apache.org/jira/browse/HDFS-7127) | TestLeaseRecovery leaks MiniDFSCluster instances. |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7122](https://issues.apache.org/jira/browse/HDFS-7122) | Use of ThreadLocal\<Random\> results in poor block placement |  Blocker | namenode | Jeff Buell | Andrew Wang |
| [HDFS-7111](https://issues.apache.org/jira/browse/HDFS-7111) | TestSafeMode assumes Unix line endings in safe mode tip. |  Trivial | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7110](https://issues.apache.org/jira/browse/HDFS-7110) | Skip tests related to short-circuit read on platforms that do not currently implement short-circuit read. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7109](https://issues.apache.org/jira/browse/HDFS-7109) | TestDataStorage does not release file locks between tests. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7107](https://issues.apache.org/jira/browse/HDFS-7107) | Avoid Findbugs warning for synchronization on AbstractNNFailoverProxyProvider#fallbackToSimpleAuth. |  Trivial | ha | Chris Nauroth | Chris Nauroth |
| [HDFS-7106](https://issues.apache.org/jira/browse/HDFS-7106) | Reconfiguring DataNode volumes does not release the lock files in removed volumes. |  Major | datanode | Chris Nauroth | Chris Nauroth |
| [HDFS-7105](https://issues.apache.org/jira/browse/HDFS-7105) | Fix TestJournalNode#testFailToStartWithBadConfig to match log output change |  Minor | test | Ray Chiang | Ray Chiang |
| [HDFS-7104](https://issues.apache.org/jira/browse/HDFS-7104) | Fix and clarify INodeInPath getter functions |  Minor | . | Zhe Zhang | Zhe Zhang |
| [HDFS-7096](https://issues.apache.org/jira/browse/HDFS-7096) | Fix TestRpcProgramNfs3 to use DFS\_ENCRYPTION\_KEY\_PROVIDER\_URI |  Minor | test | Charles Lamb | Charles Lamb |
| [HDFS-7075](https://issues.apache.org/jira/browse/HDFS-7075) | hadoop-fuse-dfs fails because it cannot find JavaKeyStoreProvider$Factory |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-7073](https://issues.apache.org/jira/browse/HDFS-7073) | Allow falling back to a non-SASL connection on DataTransferProtocol in several edge cases. |  Major | datanode, hdfs-client, security | Chris Nauroth | Chris Nauroth |
| [HDFS-7065](https://issues.apache.org/jira/browse/HDFS-7065) | Pipeline close recovery race can cause block corruption |  Critical | datanode | Kihwal Lee | Kihwal Lee |
| [HDFS-7049](https://issues.apache.org/jira/browse/HDFS-7049) | TestByteRangeInputStream.testPropagatedClose fails and throw NPE on branch-2 |  Minor | test | Juan Yu | Juan Yu |
| [HDFS-7046](https://issues.apache.org/jira/browse/HDFS-7046) | HA NN can NPE upon transition to active |  Critical | namenode | Daryn Sharp | Kihwal Lee |
| [HDFS-7045](https://issues.apache.org/jira/browse/HDFS-7045) | Fix NameNode deadlock when opening file under /.reserved path |  Critical | namenode | Yi Liu | Yi Liu |
| [HDFS-7042](https://issues.apache.org/jira/browse/HDFS-7042) | Upgrade fails for Windows HA cluster due to file locks held during rename in JournalNode. |  Blocker | journal-node | Chris Nauroth | Chris Nauroth |
| [HDFS-7005](https://issues.apache.org/jira/browse/HDFS-7005) | DFS input streams do not timeout |  Critical | hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-7001](https://issues.apache.org/jira/browse/HDFS-7001) | Tests in TestTracing should not depend on the order of execution |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-6996](https://issues.apache.org/jira/browse/HDFS-6996) | SnapshotDiff report can hit IndexOutOfBoundsException when there are nested renamed directory/file |  Major | snapshots | Jing Zhao | Jing Zhao |
| [HDFS-6995](https://issues.apache.org/jira/browse/HDFS-6995) | Block should be placed in the client's 'rack-local' node if 'client-local' node is not available |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-6981](https://issues.apache.org/jira/browse/HDFS-6981) | Fix DN upgrade with layout version change |  Major | datanode | James Thomas | Arpit Agarwal |
| [HDFS-6979](https://issues.apache.org/jira/browse/HDFS-6979) | hdfs.dll does not produce .pdb files |  Minor | hdfs-client | Remus Rusanu | Chris Nauroth |
| [HDFS-6972](https://issues.apache.org/jira/browse/HDFS-6972) | TestRefreshUserMappings.testRefreshSuperUserGroupsConfiguration doesn't decode url correctly |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6965](https://issues.apache.org/jira/browse/HDFS-6965) | NN continues to issue block locations for DNs with full disks |  Major | namenode | Daryn Sharp | Rushabh S Shah |
| [HDFS-6954](https://issues.apache.org/jira/browse/HDFS-6954) | With crypto, no native lib systems are too verbose |  Major | encryption | Allen Wittenauer | Charles Lamb |
| [HDFS-6948](https://issues.apache.org/jira/browse/HDFS-6948) | DN rejects blocks if it has older UC block |  Major | . | Daryn Sharp | Eric Payne |
| [HDFS-6942](https://issues.apache.org/jira/browse/HDFS-6942) | Fix typos in log messages |  Trivial | . | Ray Chiang | Ray Chiang |
| [HDFS-6912](https://issues.apache.org/jira/browse/HDFS-6912) | SharedFileDescriptorFactory should not allocate sparse files |  Minor | caching | Gopal V | Colin Patrick McCabe |
| [HDFS-6908](https://issues.apache.org/jira/browse/HDFS-6908) | incorrect snapshot directory diff generated by snapshot deletion |  Critical | snapshots | Juan Yu | Juan Yu |
| [HDFS-6905](https://issues.apache.org/jira/browse/HDFS-6905) | fs-encryption merge triggered release audit failures |  Blocker | . | Allen Wittenauer | Charles Lamb |
| [HDFS-6904](https://issues.apache.org/jira/browse/HDFS-6904) | YARN unable to renew delegation token fetched via webhdfs due to incorrect service port |  Critical | webhdfs | Varun Vasudev | Jitendra Nath Pandey |
| [HDFS-6902](https://issues.apache.org/jira/browse/HDFS-6902) | FileWriter should be closed in finally block in BlockReceiver#receiveBlock() |  Minor | . | Ted Yu | Tsuyoshi Ozawa |
| [HDFS-6890](https://issues.apache.org/jira/browse/HDFS-6890) | NFS readdirplus doesn't return dotdot attributes |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-6870](https://issues.apache.org/jira/browse/HDFS-6870) | Blocks and INodes could leak for Rename with overwrite flag |  Major | namenode | Yi Liu | Yi Liu |
| [HDFS-6868](https://issues.apache.org/jira/browse/HDFS-6868) | portmap and nfs3 are documented as hadoop commands instead of hdfs |  Major | documentation, nfs | Allen Wittenauer | Brandon Li |
| [HDFS-6862](https://issues.apache.org/jira/browse/HDFS-6862) | Add missing timeout annotations to tests |  Major | test | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-6848](https://issues.apache.org/jira/browse/HDFS-6848) | Lack of synchronization on access to datanodeUuid in DataStorage#format() |  Minor | . | Ted Yu | Xiaoyu Yao |
| [HDFS-6840](https://issues.apache.org/jira/browse/HDFS-6840) | Clients are always sent to the same datanode when read is off rack |  Critical | . | Jason Lowe | Andrew Wang |
| [HDFS-6838](https://issues.apache.org/jira/browse/HDFS-6838) | Code cleanup for unnecessary INode replacement |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-6831](https://issues.apache.org/jira/browse/HDFS-6831) | Inconsistency between 'hdfs dfsadmin' and 'hdfs dfsadmin -help' |  Minor | . | Akira AJISAKA | Xiaoyu Yao |
| [HDFS-6830](https://issues.apache.org/jira/browse/HDFS-6830) | BlockInfo.addStorage fails when DN changes the storage for a block replica |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6829](https://issues.apache.org/jira/browse/HDFS-6829) | DFSAdmin refreshSuperUserGroupsConfiguration failed in security cluster |  Minor | tools | zhaoyunjiong | zhaoyunjiong |
| [HDFS-6825](https://issues.apache.org/jira/browse/HDFS-6825) | Edit log corruption due to delayed block removal |  Major | namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6823](https://issues.apache.org/jira/browse/HDFS-6823) | dfs.web.authentication.kerberos.principal shows up in logs for insecure HDFS |  Minor | namenode | Allen Wittenauer | Allen Wittenauer |
| [HDFS-6810](https://issues.apache.org/jira/browse/HDFS-6810) | StorageReport array is initialized with wrong size in DatanodeDescriptor#getStorageReports |  Minor | namenode | Ted Yu | Tsz Wo Nicholas Sze |
| [HDFS-6802](https://issues.apache.org/jira/browse/HDFS-6802) | Some tests in TestDFSClientFailover are missing @Test annotation |  Major | test | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6799](https://issues.apache.org/jira/browse/HDFS-6799) | The invalidate method in SimulatedFSDataset.java failed to remove (invalidate) blocks from the file system. |  Minor | datanode, test | Megasthenis Asteris | Megasthenis Asteris |
| [HDFS-6797](https://issues.apache.org/jira/browse/HDFS-6797) | DataNode logs wrong layoutversion during upgrade |  Major | datanode | Benoy Antony | Benoy Antony |
| [HDFS-6791](https://issues.apache.org/jira/browse/HDFS-6791) | A block could remain under replicated if all of its replicas are on decommissioned nodes |  Major | . | Ming Ma | Ming Ma |
| [HDFS-6790](https://issues.apache.org/jira/browse/HDFS-6790) | DFSUtil Should Use configuration.getPassword for SSL passwords |  Major | . | Larry McCay | Larry McCay |
| [HDFS-6789](https://issues.apache.org/jira/browse/HDFS-6789) | TestDFSClientFailover.testFileContextDoesntDnsResolveLogicalURI and TestDFSClientFailover.testDoesntDnsResolveLogicalURI failing on jdk7 |  Major | test | Rushabh S Shah | Akira AJISAKA |
| [HDFS-6788](https://issues.apache.org/jira/browse/HDFS-6788) | Improve synchronization in BPOfferService with read write lock |  Major | datanode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6787](https://issues.apache.org/jira/browse/HDFS-6787) | Remove duplicate code in FSDirectory#unprotectedConcat |  Major | namenode | Yi Liu | Yi Liu |
| [HDFS-6783](https://issues.apache.org/jira/browse/HDFS-6783) | Fix HDFS CacheReplicationMonitor rescan logic |  Major | caching | Yi Liu | Yi Liu |
| [HDFS-6778](https://issues.apache.org/jira/browse/HDFS-6778) | The extended attributes javadoc should simply refer to the user docs |  Major | . | Charles Lamb | Charles Lamb |
| [HDFS-6776](https://issues.apache.org/jira/browse/HDFS-6776) | Using distcp to copy data between insecure and secure cluster via webdhfs doesn't work |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6768](https://issues.apache.org/jira/browse/HDFS-6768) | Fix a few unit tests that use hard-coded port numbers |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6754](https://issues.apache.org/jira/browse/HDFS-6754) | TestNamenodeCapacityReport.testXceiverCount may sometimes fail due to lack of retry |  Major | . | Mit Desai | Mit Desai |
| [HDFS-6749](https://issues.apache.org/jira/browse/HDFS-6749) | FSNamesystem methods should call resolvePath |  Major | namenode | Charles Lamb | Charles Lamb |
| [HDFS-6731](https://issues.apache.org/jira/browse/HDFS-6731) | Run "hdfs zkfc-formatZK" on a server in a non-namenode  will cause a null pointer exception. |  Major | auto-failover, ha | WenJin Ma | Masatake Iwasaki |
| [HDFS-6715](https://issues.apache.org/jira/browse/HDFS-6715) | webhdfs wont fail over when it gets java.io.IOException: Namenode is in startup mode |  Major | ha, webhdfs | Arpit Gupta | Jing Zhao |
| [HDFS-6714](https://issues.apache.org/jira/browse/HDFS-6714) | TestBlocksScheduledCounter#testBlocksScheduledCounter should shutdown cluster |  Minor | test | Vinayakumar B | Vinayakumar B |
| [HDFS-6704](https://issues.apache.org/jira/browse/HDFS-6704) | Fix the command to launch JournalNode in HDFS-HA document |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6702](https://issues.apache.org/jira/browse/HDFS-6702) | DFSClient should create blocks using StorageType |  Major | datanode, hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6693](https://issues.apache.org/jira/browse/HDFS-6693) | TestDFSAdminWithHA fails on windows |  Major | test, tools | Vinayakumar B | Vinayakumar B |
| [HDFS-6689](https://issues.apache.org/jira/browse/HDFS-6689) | NFS doesn't return correct lookup access for directories |  Major | nfs | Yesha Vora | Brandon Li |
| [HDFS-6678](https://issues.apache.org/jira/browse/HDFS-6678) | MiniDFSCluster may still be partially running after initialization fails. |  Minor | test | Chris Nauroth | Chris Nauroth |
| [HDFS-6667](https://issues.apache.org/jira/browse/HDFS-6667) | In HDFS HA mode, Distcp/SLive with webhdfs on secure cluster fails with Client cannot authenticate via:[TOKEN, KERBEROS] error |  Major | security | Jian He | Jing Zhao |
| [HDFS-6664](https://issues.apache.org/jira/browse/HDFS-6664) | HDFS permissions guide documentation states incorrect default group mapping class. |  Trivial | documentation | Chris Nauroth | Ray Chiang |
| [HDFS-6646](https://issues.apache.org/jira/browse/HDFS-6646) | [ HDFS Rolling Upgrade - Shell  ] shutdownDatanode and getDatanodeInfo usage is missed |  Major | tools | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-6640](https://issues.apache.org/jira/browse/HDFS-6640) | [ Web HDFS ] Syntax for MKDIRS, CREATESYMLINK, and SETXATTR are given wrongly(missed webhdfs/v1).). |  Major | documentation, webhdfs | Brahma Reddy Battula | Stephen Chu |
| [HDFS-6630](https://issues.apache.org/jira/browse/HDFS-6630) | Unable to fetch the block information  by Browsing the file system on Namenode UI through IE9 |  Major | namenode | J.Andreina | Haohui Mai |
| [HDFS-6621](https://issues.apache.org/jira/browse/HDFS-6621) | Hadoop Balancer prematurely exits iterations |  Major | balancer & mover | Benjamin Bowman | Rafal Wojdyla |
| [HDFS-6616](https://issues.apache.org/jira/browse/HDFS-6616) | bestNode shouldn't always return the first DataNode |  Minor | webhdfs | zhaoyunjiong | zhaoyunjiong |
| [HDFS-6582](https://issues.apache.org/jira/browse/HDFS-6582) | Missing null check in RpcProgramNfs3#read(XDR, SecurityHandler) |  Minor | nfs | Ted Yu | Abhiraj Butala |
| [HDFS-6569](https://issues.apache.org/jira/browse/HDFS-6569) | OOB message can't be sent to the client when DataNode shuts down for upgrade |  Major | datanode | Brandon Li | Brandon Li |
| [HDFS-6567](https://issues.apache.org/jira/browse/HDFS-6567) | Normalize the order of public final in HdfsFileStatus |  Major | . | Haohui Mai | Tassapol Athiapinya |
| [HDFS-6544](https://issues.apache.org/jira/browse/HDFS-6544) | Broken Link for GFS in package.html |  Minor | . | Suraj Nayak M | Suraj Nayak M |
| [HDFS-6534](https://issues.apache.org/jira/browse/HDFS-6534) | Fix build on macosx: HDFS parts |  Minor | . | Binglin Chang | Binglin Chang |
| [HDFS-6517](https://issues.apache.org/jira/browse/HDFS-6517) | Remove hadoop-metrics2.properties from hdfs project |  Major | . | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6506](https://issues.apache.org/jira/browse/HDFS-6506) | Newly moved block replica been invalidated and deleted in TestBalancer |  Major | balancer & mover, test | Binglin Chang | Binglin Chang |
| [HDFS-6478](https://issues.apache.org/jira/browse/HDFS-6478) | RemoteException can't be retried properly for non-HA scenario |  Major | . | Ming Ma | Ming Ma |
| [HDFS-6456](https://issues.apache.org/jira/browse/HDFS-6456) | NFS should throw error for invalid entry in dfs.nfs.exports.allowed.hosts |  Major | nfs | Yesha Vora | Abhiraj Butala |
| [HDFS-6455](https://issues.apache.org/jira/browse/HDFS-6455) | NFS: Exception should be added in NFS log for invalid separator in nfs.exports.allowed.hosts |  Major | nfs | Yesha Vora | Abhiraj Butala |
| [HDFS-6451](https://issues.apache.org/jira/browse/HDFS-6451) | NFS should not return NFS3ERR\_IO for AccessControlException |  Major | nfs | Brandon Li | Abhiraj Butala |
| [HDFS-6376](https://issues.apache.org/jira/browse/HDFS-6376) | Distcp data between two HA clusters requires another configuration |  Major | datanode, federation, hdfs-client | Dave Marion | Dave Marion |
| [HDFS-6247](https://issues.apache.org/jira/browse/HDFS-6247) | Avoid timeouts for replaceBlock() call by sending intermediate responses to Balancer |  Major | balancer & mover, datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-6114](https://issues.apache.org/jira/browse/HDFS-6114) | Block Scan log rolling will never happen if blocks written continuously leading to huge size of dncp\_block\_verification.log.curr |  Critical | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-5919](https://issues.apache.org/jira/browse/HDFS-5919) | FileJournalManager doesn't purge empty and corrupt inprogress edits files |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-5809](https://issues.apache.org/jira/browse/HDFS-5809) | BlockPoolSliceScanner and high speed hdfs appending make datanode to drop into infinite loop |  Critical | datanode | ikweesung | Colin Patrick McCabe |
| [HDFS-5723](https://issues.apache.org/jira/browse/HDFS-5723) | Append failed FINALIZED replica should not be accepted as valid when that block is underconstruction |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-5185](https://issues.apache.org/jira/browse/HDFS-5185) | DN fails to startup if one of the data dir is full |  Critical | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-5089](https://issues.apache.org/jira/browse/HDFS-5089) | When a LayoutVersion support SNAPSHOT, it must support FSIMAGE\_NAME\_OPTIMIZATION. |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-4852](https://issues.apache.org/jira/browse/HDFS-4852) | libhdfs documentation is out of date |  Minor | . | Andrew Wang | Chris Nauroth |
| [HDFS-4629](https://issues.apache.org/jira/browse/HDFS-4629) | Using com.sun.org.apache.xml.internal.serialize.* in XmlEditsVisitor.java is JVM vendor specific. Breaks IBM JAVA |  Major | tools | Amir Sanjar |  |
| [HDFS-4227](https://issues.apache.org/jira/browse/HDFS-4227) | Document dfs.namenode.resource.* |  Major | documentation | Eli Collins | Daisuke Kobayashi |
| [HDFS-4165](https://issues.apache.org/jira/browse/HDFS-4165) | Faulty sanity check in FsDirectory.unprotectedSetQuota |  Trivial | namenode | Binglin Chang | Binglin Chang |
| [HDFS-3482](https://issues.apache.org/jira/browse/HDFS-3482) | hdfs balancer throws ArrayIndexOutOfBoundsException if option is specified without arguments |  Minor | balancer & mover | Stephen Chu | madhukara phatak |
| [HDFS-2976](https://issues.apache.org/jira/browse/HDFS-2976) | Remove unnecessary method (tokenRefetchNeeded) in DFSClient |  Trivial | hdfs-client | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-2975](https://issues.apache.org/jira/browse/HDFS-2975) | Rename with overwrite flag true can make NameNode to stuck in safemode on NN (crash + restart). |  Major | namenode | Uma Maheswara Rao G | Yi Liu |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7355](https://issues.apache.org/jira/browse/HDFS-7355) | TestDataNodeVolumeFailure#testUnderReplicationAfterVolFailure fails on Windows, because we cannot deny access to the file owner. |  Trivial | test | Chris Nauroth | Chris Nauroth |
| [HDFS-7126](https://issues.apache.org/jira/browse/HDFS-7126) | TestEncryptionZonesWithHA assumes Unix path separator for KMS key store path |  Minor | security, test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7115](https://issues.apache.org/jira/browse/HDFS-7115) | TestEncryptionZones assumes Unix path separator for KMS key store path |  Major | encryption | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7051](https://issues.apache.org/jira/browse/HDFS-7051) | TestDataNodeRollingUpgrade#isBlockFileInPrevious assumes Unix file path separator. |  Minor | datanode, test | Chris Nauroth | Chris Nauroth |
| [HDFS-7025](https://issues.apache.org/jira/browse/HDFS-7025) | HDFS Credential Provider related  Unit Test Failure |  Major | encryption | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7006](https://issues.apache.org/jira/browse/HDFS-7006) | Test encryption zones with KMS |  Major | security, test | Alejandro Abdelnur | Alejandro Abdelnur |
| [HDFS-6878](https://issues.apache.org/jira/browse/HDFS-6878) | Change MiniDFSCluster to support StorageType configuration for individual directories |  Minor | test | Tsz Wo Nicholas Sze | Arpit Agarwal |
| [HDFS-6665](https://issues.apache.org/jira/browse/HDFS-6665) | Add tests for XAttrs in combination with viewfs |  Major | hdfs-client | Stephen Chu | Stephen Chu |
| [HDFS-6645](https://issues.apache.org/jira/browse/HDFS-6645) | Add test for successive Snapshots between XAttr modifications |  Minor | snapshots, test | Stephen Chu | Stephen Chu |
| [HDFS-6638](https://issues.apache.org/jira/browse/HDFS-6638) | shorten test run time with a smaller retry timeout setting |  Major | test | Liang Xie | Liang Xie |
| [HDFS-6617](https://issues.apache.org/jira/browse/HDFS-6617) | Flake TestDFSZKFailoverController.testManualFailoverWithDFSHAAdmin due to a long edit log sync op |  Minor | auto-failover, test | Liang Xie | Liang Xie |
| [HDFS-5624](https://issues.apache.org/jira/browse/HDFS-5624) | Add HDFS tests for ACLs in combination with viewfs. |  Major | hdfs-client, test | Chris Nauroth | Stephen Chu |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7291](https://issues.apache.org/jira/browse/HDFS-7291) | Persist in-memory replicas with appropriate unbuffered copy API on POSIX and Windows |  Major | datanode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7181](https://issues.apache.org/jira/browse/HDFS-7181) | Remove incorrect precondition check on key length in FileEncryptionInfo |  Critical | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7179](https://issues.apache.org/jira/browse/HDFS-7179) | DFSClient should instantiate a KeyProvider, not a KeyProviderCryptoExtension |  Critical | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7171](https://issues.apache.org/jira/browse/HDFS-7171) | Fix Jenkins failures in HDFS-6581 branch |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7159](https://issues.apache.org/jira/browse/HDFS-7159) | Use block storage policy to set lazy persist preference |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7157](https://issues.apache.org/jira/browse/HDFS-7157) | Using Time.now() for recording start/end time of reconfiguration tasks |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7155](https://issues.apache.org/jira/browse/HDFS-7155) | Bugfix in createLocatedFileStatus caused by bad merge |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7154](https://issues.apache.org/jira/browse/HDFS-7154) | Fix returning value of starting reconfiguration task |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7144](https://issues.apache.org/jira/browse/HDFS-7144) | Fix findbugs warnings in RamDiskReplicaTracker |  Minor | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7143](https://issues.apache.org/jira/browse/HDFS-7143) | Fix findbugs warnings in HDFS-6581 branch |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-7140](https://issues.apache.org/jira/browse/HDFS-7140) | Add a tool to list all the existing block storage policies |  Minor | hdfs-client, namenode | Jing Zhao | Jing Zhao |
| [HDFS-7139](https://issues.apache.org/jira/browse/HDFS-7139) | Unit test for creating encryption zone on root path |  Minor | . | Zhe Zhang | Zhe Zhang |
| [HDFS-7138](https://issues.apache.org/jira/browse/HDFS-7138) | Fix hftp to work with encryption |  Major | namenode | Charles Lamb | Charles Lamb |
| [HDFS-7129](https://issues.apache.org/jira/browse/HDFS-7129) | Metrics to track usage of memory for writes |  Major | datanode | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-7124](https://issues.apache.org/jira/browse/HDFS-7124) | Remove EncryptionZoneManager.NULL\_EZ |  Minor | namenode | Charles Lamb | Charles Lamb |
| [HDFS-7119](https://issues.apache.org/jira/browse/HDFS-7119) | Split error checks in AtomicFileOutputStream#close into separate conditions to improve diagnostics. |  Minor | journal-node | Chris Nauroth | Chris Nauroth |
| [HDFS-7118](https://issues.apache.org/jira/browse/HDFS-7118) | Improve diagnostics on storage directory rename operations by using NativeIO#renameTo in Storage#rename. |  Major | journal-node, namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-7112](https://issues.apache.org/jira/browse/HDFS-7112) | LazyWriter should use either async IO or one thread per physical disk |  Major | datanode | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-7108](https://issues.apache.org/jira/browse/HDFS-7108) | Fix unit test failures in SimulatedFsDataset |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7100](https://issues.apache.org/jira/browse/HDFS-7100) | Make eviction scheme pluggable |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7095](https://issues.apache.org/jira/browse/HDFS-7095) | TestStorageMover often fails in Jenkins |  Minor | test | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-7091](https://issues.apache.org/jira/browse/HDFS-7091) | Add forwarding constructor for INodeFile for existing callers |  Minor | namenode, test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7090](https://issues.apache.org/jira/browse/HDFS-7090) | Use unbuffered writes when persisting in-memory replicas |  Major | datanode | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-7084](https://issues.apache.org/jira/browse/HDFS-7084) | FsDatasetImpl#copyBlockFiles debug log can be improved |  Minor | datanode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7081](https://issues.apache.org/jira/browse/HDFS-7081) | Add new DistributedFileSystem API for getting all the existing storage policies |  Major | balancer & mover, namenode | Jing Zhao | Jing Zhao |
| [HDFS-7080](https://issues.apache.org/jira/browse/HDFS-7080) | Fix finalize and upgrade unit test failures |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7079](https://issues.apache.org/jira/browse/HDFS-7079) | Few more unit test fixes for HDFS-6581 |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7078](https://issues.apache.org/jira/browse/HDFS-7078) | Fix listEZs to work correctly with snapshots |  Major | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7077](https://issues.apache.org/jira/browse/HDFS-7077) | Separate CipherSuite from crypto protocol version |  Major | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7066](https://issues.apache.org/jira/browse/HDFS-7066) | LazyWriter#evictBlocks misses a null check for replicaState |  Minor | datanode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7064](https://issues.apache.org/jira/browse/HDFS-7064) | Fix unit test failures in HDFS-6581 branch |  Major | test | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-7061](https://issues.apache.org/jira/browse/HDFS-7061) | Add test to verify encryption zone creation after NameNode restart without saving namespace |  Minor | encryption, test | Stephen Chu | Stephen Chu |
| [HDFS-7047](https://issues.apache.org/jira/browse/HDFS-7047) | Expose FileStatus#isEncrypted in libhdfs |  Major | encryption | Andrew Wang | Colin Patrick McCabe |
| [HDFS-7032](https://issues.apache.org/jira/browse/HDFS-7032) | Add WebHDFS support for reading and writing to encryption zones |  Major | encryption, webhdfs | Stephen Chu | Charles Lamb |
| [HDFS-7004](https://issues.apache.org/jira/browse/HDFS-7004) | Update KeyProvider instantiation to create by URI |  Major | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7003](https://issues.apache.org/jira/browse/HDFS-7003) | Add NFS Gateway support for reading and writing to encryption zones |  Major | encryption, nfs | Stephen Chu | Charles Lamb |
| [HDFS-6991](https://issues.apache.org/jira/browse/HDFS-6991) | Notify NN of evicted block before deleting it from RAM disk |  Major | datanode, namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6990](https://issues.apache.org/jira/browse/HDFS-6990) | Add unit test for evict/delete RAM\_DISK block with open handle |  Major | datanode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-6988](https://issues.apache.org/jira/browse/HDFS-6988) | Improve HDFS-6581 eviction configuration |  Major | datanode | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-6987](https://issues.apache.org/jira/browse/HDFS-6987) | Move CipherSuite xattr information up to the encryption zone root |  Major | encryption | Andrew Wang | Zhe Zhang |
| [HDFS-6986](https://issues.apache.org/jira/browse/HDFS-6986) | DistributedFileSystem must get delegation tokens from configured KeyProvider |  Major | security | Alejandro Abdelnur | Zhe Zhang |
| [HDFS-6978](https://issues.apache.org/jira/browse/HDFS-6978) | Directory scanner should correctly reconcile blocks on RAM disk |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6977](https://issues.apache.org/jira/browse/HDFS-6977) | Delete all copies when a block is deleted from the block space |  Major | datanode | Nathan Yao | Arpit Agarwal |
| [HDFS-6970](https://issues.apache.org/jira/browse/HDFS-6970) | Move startFile EDEK retries to the DFSClient |  Major | encryption | Andrew Wang | Andrew Wang |
| [HDFS-6966](https://issues.apache.org/jira/browse/HDFS-6966) | Add additional unit tests for encryption zones |  Major | encryption | Stephen Chu | Stephen Chu |
| [HDFS-6960](https://issues.apache.org/jira/browse/HDFS-6960) | Bugfix in LazyWriter, fix test case and some refactoring |  Major | datanode, test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6956](https://issues.apache.org/jira/browse/HDFS-6956) | Allow dynamically changing the tracing level in Hadoop servers |  Major | datanode, namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6951](https://issues.apache.org/jira/browse/HDFS-6951) | Correctly persist raw namespace xattrs to edit log and fsimage |  Major | encryption | Stephen Chu | Charles Lamb |
| [HDFS-6950](https://issues.apache.org/jira/browse/HDFS-6950) | Add Additional unit tests for HDFS-6581 |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-6934](https://issues.apache.org/jira/browse/HDFS-6934) | Move checksum computation off the hot path when writing to RAM disk |  Major | datanode, hdfs-client | Arpit Agarwal | Chris Nauroth |
| [HDFS-6932](https://issues.apache.org/jira/browse/HDFS-6932) | Balancer and Mover tools should ignore replicas on RAM\_DISK |  Major | datanode | Arpit Agarwal | Xiaoyu Yao |
| [HDFS-6931](https://issues.apache.org/jira/browse/HDFS-6931) | Move lazily persisted replicas to finalized directory on DN startup |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6930](https://issues.apache.org/jira/browse/HDFS-6930) | Improve replica eviction from RAM disk |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6929](https://issues.apache.org/jira/browse/HDFS-6929) | NN periodically unlinks lazy persist files with missing replicas from namespace |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6928](https://issues.apache.org/jira/browse/HDFS-6928) | 'hdfs put' command should accept lazyPersist flag for testing |  Major | datanode | Tassapol Athiapinya | Arpit Agarwal |
| [HDFS-6927](https://issues.apache.org/jira/browse/HDFS-6927) | Add unit tests |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6926](https://issues.apache.org/jira/browse/HDFS-6926) | DN support for saving replicas to persistent storage and evicting in-memory replicas |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6925](https://issues.apache.org/jira/browse/HDFS-6925) | DataNode should attempt to place replicas on transient storage first if lazyPersist flag is received |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6924](https://issues.apache.org/jira/browse/HDFS-6924) | Add new RAM\_DISK storage type |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6923](https://issues.apache.org/jira/browse/HDFS-6923) | Propagate LazyPersist flag to DNs via DataTransferProtocol |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6921](https://issues.apache.org/jira/browse/HDFS-6921) | Add LazyPersist flag to FileStatus |  Major | . | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6894](https://issues.apache.org/jira/browse/HDFS-6894) | Add XDR parser method for each NFS response |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-6892](https://issues.apache.org/jira/browse/HDFS-6892) | Add XDR packaging method for each NFS request |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-6880](https://issues.apache.org/jira/browse/HDFS-6880) | Adding tracing to DataNode data transfer protocol |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-6879](https://issues.apache.org/jira/browse/HDFS-6879) | Adding tracing to Hadoop RPC |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-6865](https://issues.apache.org/jira/browse/HDFS-6865) | Byte array native checksumming on client side (HDFS changes) |  Major | hdfs-client, performance | James Thomas | James Thomas |
| [HDFS-6851](https://issues.apache.org/jira/browse/HDFS-6851) | Refactor EncryptionZoneWithId and EncryptionZone |  Major | namenode, security | Charles Lamb | Charles Lamb |
| [HDFS-6843](https://issues.apache.org/jira/browse/HDFS-6843) | Create FileStatus isEncrypted() method |  Major | namenode, security | Charles Lamb | Charles Lamb |
| [HDFS-6808](https://issues.apache.org/jira/browse/HDFS-6808) | Add command line option to ask DataNode reload configuration. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-6777](https://issues.apache.org/jira/browse/HDFS-6777) | Supporting consistent edit log reads when in-progress edit log segments are included |  Major | qjm | James Thomas | James Thomas |
| [HDFS-6774](https://issues.apache.org/jira/browse/HDFS-6774) | Make FsDataset and DataStore support removing volumes. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-6750](https://issues.apache.org/jira/browse/HDFS-6750) | The DataNode should use its shared memory segment to mark short-circuit replicas that have been unlinked as stale |  Major | datanode, hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6740](https://issues.apache.org/jira/browse/HDFS-6740) | Make FSDataset support adding data volumes dynamically |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-6728](https://issues.apache.org/jira/browse/HDFS-6728) | Dynamically add new volumes to DataStorage, formatted if necessary. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-6727](https://issues.apache.org/jira/browse/HDFS-6727) | Refresh data volumes on DataNode based on configuration changes |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-6722](https://issues.apache.org/jira/browse/HDFS-6722) | Display readable last contact time for dead nodes on NN webUI |  Major | . | Ming Ma | Ming Ma |
| [HDFS-6717](https://issues.apache.org/jira/browse/HDFS-6717) | Jira HDFS-5804 breaks default nfs-gateway behavior for unsecured config |  Minor | nfs | Jeff Hansen | Brandon Li |
| [HDFS-6705](https://issues.apache.org/jira/browse/HDFS-6705) | Create an XAttr that disallows the HDFS admin from accessing a file |  Major | namenode, security | Charles Lamb | Charles Lamb |
| [HDFS-6609](https://issues.apache.org/jira/browse/HDFS-6609) | Use DirectorySnapshottableFeature to represent a snapshottable directory |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-6385](https://issues.apache.org/jira/browse/HDFS-6385) | Show when block deletion will start after NameNode startup in WebUI |  Major | . | Jing Zhao | Chris Nauroth |
| [HDFS-6036](https://issues.apache.org/jira/browse/HDFS-6036) | Forcibly timeout misbehaving DFSClients that try to do no-checksum reads that extend too long |  Major | caching, datanode | Colin Patrick McCabe | Colin Patrick McCabe |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


