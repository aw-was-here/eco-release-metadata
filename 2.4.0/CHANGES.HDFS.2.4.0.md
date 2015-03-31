# Hadoop Changelog

## Release 2.4.0 - 2014-04-07

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6102](https://issues.apache.org/jira/browse/HDFS-6102) | Lower the default maximum items per directory to fix PB fsimage loading |  Blocker | namenode | Andrew Wang | Andrew Wang |
| [HDFS-6055](https://issues.apache.org/jira/browse/HDFS-6055) | Change default configuration to limit file name length in HDFS |  Major | namenode | Suresh Srinivas | Chris Nauroth |
| [HDFS-5804](https://issues.apache.org/jira/browse/HDFS-5804) | HDFS NFS Gateway fails to mount and proxy when using Kerberos |  Major | nfs | Abin Shahab | Abin Shahab |
| [HDFS-5321](https://issues.apache.org/jira/browse/HDFS-5321) | Clean up the HTTP-related configuration in HDFS |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5138](https://issues.apache.org/jira/browse/HDFS-5138) | Support HDFS upgrade in HA |  Blocker | . | Kihwal Lee | Aaron T. Myers |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5535](https://issues.apache.org/jira/browse/HDFS-5535) | Umbrella jira for improved HDFS rolling upgrades |  Major | datanode, ha, hdfs-client, namenode | Nathan Roberts | Tsz Wo Nicholas Sze |
| [HDFS-4685](https://issues.apache.org/jira/browse/HDFS-4685) | Implementation of ACLs in HDFS |  Major | hdfs-client, namenode, security | Sachin Jose | Chris Nauroth |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6150](https://issues.apache.org/jira/browse/HDFS-6150) | Add inode id information in the logs to make debugging easier |  Minor | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6138](https://issues.apache.org/jira/browse/HDFS-6138) | User Guide for how to use viewfs with federation |  Minor | documentation | Sanjay Radia | Sanjay Radia |
| [HDFS-6123](https://issues.apache.org/jira/browse/HDFS-6123) | Improve datanode error messages |  Minor | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6120](https://issues.apache.org/jira/browse/HDFS-6120) | Fix and improve safe mode log messages |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6090](https://issues.apache.org/jira/browse/HDFS-6090) | Use MiniDFSCluster.Builder instead of deprecated constructors |  Minor | test | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6085](https://issues.apache.org/jira/browse/HDFS-6085) | Improve CacheReplicationMonitor log messages a bit |  Major | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6084](https://issues.apache.org/jira/browse/HDFS-6084) | Namenode UI - "Hadoop" logo link shouldn't go to hadoop homepage |  Minor | namenode | Travis Thompson | Travis Thompson |
| [HDFS-6080](https://issues.apache.org/jira/browse/HDFS-6080) | Improve NFS gateway performance by making rtmax and wtmax configurable |  Major | nfs, performance | Abin Shahab | Abin Shahab |
| [HDFS-6072](https://issues.apache.org/jira/browse/HDFS-6072) | Clean up dead code of FSImage |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6070](https://issues.apache.org/jira/browse/HDFS-6070) | Cleanup use of ReadStatistics in DFSInputStream |  Trivial | . | Andrew Wang | Andrew Wang |
| [HDFS-6069](https://issues.apache.org/jira/browse/HDFS-6069) | Quash stack traces when ACLs are disabled |  Trivial | namenode | Andrew Wang | Chris Nauroth |
| [HDFS-6044](https://issues.apache.org/jira/browse/HDFS-6044) | Add property for setting the NFS look up time for users |  Minor | nfs | Brandon Li | Brandon Li |
| [HDFS-6043](https://issues.apache.org/jira/browse/HDFS-6043) | Give HDFS daemons NFS3 and Portmap their own OPTS |  Major | nfs | Brandon Li | Brandon Li |
| [HDFS-6018](https://issues.apache.org/jira/browse/HDFS-6018) | Exception recorded in LOG when IPCLoggerChannel#close is called |  Trivial | . | Jing Zhao | Jing Zhao |
| [HDFS-6006](https://issues.apache.org/jira/browse/HDFS-6006) | Remove duplicate code in FSNameSystem#getFileInfo |  Trivial | namenode | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5979](https://issues.apache.org/jira/browse/HDFS-5979) | Typo and logger fix for fsimage PB code |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-5939](https://issues.apache.org/jira/browse/HDFS-5939) | WebHdfs returns misleading error code and logs nothing if trying to create a file with no DNs in cluster |  Major | hdfs-client | Yongjun Zhang | Yongjun Zhang |
| [HDFS-5935](https://issues.apache.org/jira/browse/HDFS-5935) | New Namenode UI FS browser should throw smarter error messages |  Minor | namenode | Travis Thompson | Travis Thompson |
| [HDFS-5929](https://issues.apache.org/jira/browse/HDFS-5929) | Add Block pool % usage to HDFS federated nn page |  Major | federation | Siqi Li | Siqi Li |
| [HDFS-5910](https://issues.apache.org/jira/browse/HDFS-5910) | Enhance DataTransferProtocol to allow per-connection choice of encryption/plain-text |  Major | security | Benoy Antony | Benoy Antony |
| [HDFS-5908](https://issues.apache.org/jira/browse/HDFS-5908) | Change AclFeature to capture list of ACL entries in an ImmutableList. |  Minor | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-5781](https://issues.apache.org/jira/browse/HDFS-5781) | Use an array to record the mapping between FSEditLogOpCode and the corresponding byte value |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-5776](https://issues.apache.org/jira/browse/HDFS-5776) | Support 'hedged' reads in DFSClient |  Major | hdfs-client | Liang Xie | Liang Xie |
| [HDFS-5775](https://issues.apache.org/jira/browse/HDFS-5775) | Consolidate the code for serialization in CacheManager |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-5768](https://issues.apache.org/jira/browse/HDFS-5768) | Consolidate the serialization code in DelegationTokenSecretManager |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-5709](https://issues.apache.org/jira/browse/HDFS-5709) | Improve NameNode upgrade with existing reserved paths and path components |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-5698](https://issues.apache.org/jira/browse/HDFS-5698) | Use protobuf to serialize / deserialize FSImage |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-5318](https://issues.apache.org/jira/browse/HDFS-5318) | Support read-only and read-write paths to shared replicas |  Major | namenode | Eric Sirianni |  |
| [HDFS-5153](https://issues.apache.org/jira/browse/HDFS-5153) | Datanode should send block reports for each storage in a separate message |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-4911](https://issues.apache.org/jira/browse/HDFS-4911) | Reduce PeerCache timeout to be commensurate with dfs.datanode.socket.reuse.keepalive |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-4370](https://issues.apache.org/jira/browse/HDFS-4370) | Fix typo Blanacer in DataNode |  Major | datanode | Konstantin Shvachko | Chu Tong |
| [HDFS-4200](https://issues.apache.org/jira/browse/HDFS-4200) | Reduce the size of synchronized sections in PacketResponder |  Major | datanode | Suresh Srinivas | Andrew Wang |
| [HDFS-3405](https://issues.apache.org/jira/browse/HDFS-3405) | Checkpointing should use HTTP POST or PUT instead of GET-GET to send merged fsimages |  Major | . | Aaron T. Myers | Vinayakumar B |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6237](https://issues.apache.org/jira/browse/HDFS-6237) | TestDFSShell#testGet fails on Windows due to invalid file system path. |  Trivial | hdfs-client, test | Chris Nauroth | Chris Nauroth |
| [HDFS-6166](https://issues.apache.org/jira/browse/HDFS-6166) | revisit balancer so\_timeout |  Blocker | balancer & mover | Nathan Roberts | Nathan Roberts |
| [HDFS-6163](https://issues.apache.org/jira/browse/HDFS-6163) | Fix a minor bug in the HA upgrade document |  Minor | documentation | Fengdong Yu | Fengdong Yu |
| [HDFS-6157](https://issues.apache.org/jira/browse/HDFS-6157) | Fix the entry point of OfflineImageViewer for hdfs.cmd |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6140](https://issues.apache.org/jira/browse/HDFS-6140) | WebHDFS cannot create a file with spaces in the name after HA failover changes. |  Major | webhdfs | Chris Nauroth | Chris Nauroth |
| [HDFS-6135](https://issues.apache.org/jira/browse/HDFS-6135) | In HDFS upgrade with HA setup, JournalNode cannot handle layout version bump when rolling back |  Blocker | journal-node | Jing Zhao | Jing Zhao |
| [HDFS-6131](https://issues.apache.org/jira/browse/HDFS-6131) | Move HDFSHighAvailabilityWithNFS.apt.vm and HDFSHighAvailabilityWithQJM.apt.vm from Yarn to HDFS |  Major | documentation | Jing Zhao | Jing Zhao |
| [HDFS-6130](https://issues.apache.org/jira/browse/HDFS-6130) | NPE when upgrading namenode from fsimages older than -32 |  Blocker | namenode | Fengdong Yu | Haohui Mai |
| [HDFS-6129](https://issues.apache.org/jira/browse/HDFS-6129) | When a replica is not found for deletion, do not throw exception. |  Minor | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6127](https://issues.apache.org/jira/browse/HDFS-6127) | WebHDFS tokens cannot be renewed in HA setup |  Major | ha | Arpit Gupta | Haohui Mai |
| [HDFS-6117](https://issues.apache.org/jira/browse/HDFS-6117) | Print file path information in FileNotFoundException |  Minor | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6115](https://issues.apache.org/jira/browse/HDFS-6115) | flush() should be called for every append on block scan verification log |  Minor | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-6107](https://issues.apache.org/jira/browse/HDFS-6107) | When a block can't be cached due to limited space on the DataNode, that block becomes uncacheable |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6106](https://issues.apache.org/jira/browse/HDFS-6106) | Reduce default for dfs.namenode.path.based.cache.refresh.interval.ms |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6105](https://issues.apache.org/jira/browse/HDFS-6105) | NN web UI for DN list loads the same jmx page multiple times. |  Major | . | Kihwal Lee | Haohui Mai |
| [HDFS-6100](https://issues.apache.org/jira/browse/HDFS-6100) | DataNodeWebHdfsMethods does not failover in HA mode |  Major | ha | Arpit Gupta | Haohui Mai |
| [HDFS-6099](https://issues.apache.org/jira/browse/HDFS-6099) | HDFS file system limits not enforced on renames. |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-6097](https://issues.apache.org/jira/browse/HDFS-6097) | zero-copy reads are incorrectly disabled on file offsets above 2GB |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6096](https://issues.apache.org/jira/browse/HDFS-6096) | TestWebHdfsTokens may timeout |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6094](https://issues.apache.org/jira/browse/HDFS-6094) | The same block can be counted twice towards safe mode threshold |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6089](https://issues.apache.org/jira/browse/HDFS-6089) | Standby NN while transitioning to active throws a connection refused error when the prior active NN process is suspended |  Major | ha | Arpit Gupta | Jing Zhao |
| [HDFS-6079](https://issues.apache.org/jira/browse/HDFS-6079) | Timeout for getFileBlockStorageLocations does not work |  Major | hdfs-client | Andrew Wang | Andrew Wang |
| [HDFS-6078](https://issues.apache.org/jira/browse/HDFS-6078) | TestIncrementalBlockReports is flaky |  Minor | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-6077](https://issues.apache.org/jira/browse/HDFS-6077) | running slive with webhdfs on secure HA cluster fails with unkown host exception |  Major | . | Arpit Gupta | Jing Zhao |
| [HDFS-6071](https://issues.apache.org/jira/browse/HDFS-6071) | BlockReaderLocal doesn't return -1 on EOF when doing a zero-length read on a short file |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6068](https://issues.apache.org/jira/browse/HDFS-6068) | Disallow snapshot names that are also invalid directory names |  Major | snapshots | Andrew Wang | sathish |
| [HDFS-6067](https://issues.apache.org/jira/browse/HDFS-6067) | TestPread.testMaxOutHedgedReadPool is flaky |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6065](https://issues.apache.org/jira/browse/HDFS-6065) | HDFS zero-copy reads should return null on EOF when doing ZCR |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6064](https://issues.apache.org/jira/browse/HDFS-6064) | DFSConfigKeys.DFS\_BLOCKREPORT\_INTERVAL\_MSEC\_DEFAULT is not updated with latest block report interval of 6 hrs |  Minor | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-6063](https://issues.apache.org/jira/browse/HDFS-6063) | TestAclCLI fails intermittently when running test 24: copyFromLocal |  Minor | test, tools | Colin Patrick McCabe | Chris Nauroth |
| [HDFS-6062](https://issues.apache.org/jira/browse/HDFS-6062) | TestRetryCacheWithHA#testConcat is flaky |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-6059](https://issues.apache.org/jira/browse/HDFS-6059) | TestBlockReaderLocal fails if native library is not available |  Major | . | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6058](https://issues.apache.org/jira/browse/HDFS-6058) | Fix TestHDFSCLI failures after HADOOP-8691 change |  Major | . | Vinayakumar B | Haohui Mai |
| [HDFS-6057](https://issues.apache.org/jira/browse/HDFS-6057) | DomainSocketWatcher.watcherThread should be marked as daemon thread |  Blocker | hdfs-client | Eric Sirianni | Colin Patrick McCabe |
| [HDFS-6053](https://issues.apache.org/jira/browse/HDFS-6053) | Fix TestDecommissioningStatus and TestDecommission in branch-2 |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-6051](https://issues.apache.org/jira/browse/HDFS-6051) | HDFS cannot run on Windows since short-circuit shared memory segment changes. |  Blocker | hdfs-client | Chris Nauroth | Colin Patrick McCabe |
| [HDFS-6047](https://issues.apache.org/jira/browse/HDFS-6047) | TestPread NPE inside in DFSInputStream hedgedFetchBlockByteRange |  Major | . | stack | stack |
| [HDFS-6039](https://issues.apache.org/jira/browse/HDFS-6039) | Uploading a File under a Dir with default acls throws "Duplicated ACLFeature" |  Major | namenode | Yesha Vora | Chris Nauroth |
| [HDFS-6033](https://issues.apache.org/jira/browse/HDFS-6033) | PBImageXmlWriter incorrectly handles processing cache directives |  Major | caching | Aaron T. Myers | Aaron T. Myers |
| [HDFS-6028](https://issues.apache.org/jira/browse/HDFS-6028) | Print clearer error message when user attempts to delete required mask entry from ACL. |  Trivial | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-6008](https://issues.apache.org/jira/browse/HDFS-6008) | Namenode dead node link is giving HTTP error 500 |  Minor | namenode | Benoy Antony | Benoy Antony |
| [HDFS-5988](https://issues.apache.org/jira/browse/HDFS-5988) | Bad fsimage always generated after upgrade |  Blocker | namenode | Andrew Wang | Andrew Wang |
| [HDFS-5982](https://issues.apache.org/jira/browse/HDFS-5982) | Need to update snapshot manager when applying editlog for deleting a snapshottable directory |  Critical | namenode | Tassapol Athiapinya | Jing Zhao |
| [HDFS-5981](https://issues.apache.org/jira/browse/HDFS-5981) | PBImageXmlWriter generates malformed XML |  Minor | tools | Haohui Mai | Haohui Mai |
| [HDFS-5962](https://issues.apache.org/jira/browse/HDFS-5962) | Mtime and atime are not persisted for symbolic links |  Critical | . | Kihwal Lee | Akira AJISAKA |
| [HDFS-5961](https://issues.apache.org/jira/browse/HDFS-5961) | OIV cannot load fsimages containing a symbolic link |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-5959](https://issues.apache.org/jira/browse/HDFS-5959) | Fix typo at section name in FSImageFormatProtobuf.java |  Minor | . | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5949](https://issues.apache.org/jira/browse/HDFS-5949) | New Namenode UI when trying to download a file, the browser doesn't know the file name |  Minor | namenode | Travis Thompson | Travis Thompson |
| [HDFS-5948](https://issues.apache.org/jira/browse/HDFS-5948) | TestBackupNode flakes with port in use error |  Major | . | Andrew Wang | Haohui Mai |
| [HDFS-5944](https://issues.apache.org/jira/browse/HDFS-5944) | LeaseManager:findLeaseWithPrefixPath can't handle path like /a/b/ right and cause SecondaryNameNode failed do checkpoint |  Major | namenode | zhaoyunjiong | zhaoyunjiong |
| [HDFS-5943](https://issues.apache.org/jira/browse/HDFS-5943) | 'dfs.namenode.https-address.ns1' property is not used in federation setup |  Major | . | Yesha Vora | Suresh Srinivas |
| [HDFS-5941](https://issues.apache.org/jira/browse/HDFS-5941) | add dfs.namenode.secondary.https-address and dfs.namenode.secondary.https-address in hdfs-default.xml |  Major | documentation, namenode | Haohui Mai | Haohui Mai |
| [HDFS-5934](https://issues.apache.org/jira/browse/HDFS-5934) | New Namenode UI back button doesn't work as expected |  Minor | namenode | Travis Thompson | Travis Thompson |
| [HDFS-5922](https://issues.apache.org/jira/browse/HDFS-5922) | DN heartbeat thread can get stuck in tight loop |  Major | datanode | Aaron T. Myers | Arpit Agarwal |
| [HDFS-5915](https://issues.apache.org/jira/browse/HDFS-5915) | Refactor FSImageFormatProtobuf to simplify cross section reads |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-5913](https://issues.apache.org/jira/browse/HDFS-5913) | Nfs3Utils#getWccAttr() should check attr parameter against null |  Minor | nfs | Ted Yu | Brandon Li |
| [HDFS-5904](https://issues.apache.org/jira/browse/HDFS-5904) | TestFileStatus fails intermittently on trunk and branch2 |  Major | . | Mit Desai | Mit Desai |
| [HDFS-5901](https://issues.apache.org/jira/browse/HDFS-5901) | NameNode new UI doesn't support IE8 and IE9 on windows 7 |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [HDFS-5900](https://issues.apache.org/jira/browse/HDFS-5900) | Cannot set cache pool limit of "unlimited" via CacheAdmin |  Major | caching | Tassapol Athiapinya | Andrew Wang |
| [HDFS-5895](https://issues.apache.org/jira/browse/HDFS-5895) | HDFS cacheadmin -listPools has exit\_code of 1 when the command returns 0 result. |  Major | tools | Tassapol Athiapinya | Tassapol Athiapinya |
| [HDFS-5893](https://issues.apache.org/jira/browse/HDFS-5893) | HftpFileSystem.RangeHeaderUrlOpener uses the default URLConnectionFactory which does not import SSL certificates |  Major | . | Yesha Vora | Haohui Mai |
| [HDFS-5891](https://issues.apache.org/jira/browse/HDFS-5891) | webhdfs should not try connecting the DN during redirection |  Major | namenode, webhdfs | Haohui Mai | Haohui Mai |
| [HDFS-5886](https://issues.apache.org/jira/browse/HDFS-5886) | Potential null pointer deference in RpcProgramNfs3#readlink() |  Major | nfs | Ted Yu | Brandon Li |
| [HDFS-5881](https://issues.apache.org/jira/browse/HDFS-5881) | Fix skip() of the short-circuit local reader (legacy). |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-5879](https://issues.apache.org/jira/browse/HDFS-5879) | Some TestHftpFileSystem tests do not close streams |  Major | test | Gera Shegalov | Gera Shegalov |
| [HDFS-5859](https://issues.apache.org/jira/browse/HDFS-5859) | DataNode#checkBlockToken should check block tokens even if security is not enabled |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5857](https://issues.apache.org/jira/browse/HDFS-5857) | TestWebHDFS#testNamenodeRestart fails intermittently with NPE |  Major | . | Mit Desai | Mit Desai |
| [HDFS-5856](https://issues.apache.org/jira/browse/HDFS-5856) | DataNode.checkDiskError might throw NPE |  Minor | datanode | Josh Elser | Josh Elser |
| [HDFS-5846](https://issues.apache.org/jira/browse/HDFS-5846) | Assigning DEFAULT\_RACK in resolveNetworkLocation method can break data resiliency |  Major | namenode | Nikola Vujic | Nikola Vujic |
| [HDFS-5843](https://issues.apache.org/jira/browse/HDFS-5843) | DFSClient.getFileChecksum() throws IOException if checksum is disabled |  Major | datanode | Laurent Goujon | Laurent Goujon |
| [HDFS-5840](https://issues.apache.org/jira/browse/HDFS-5840) | Follow-up to HDFS-5138 to improve error handling during partial upgrade failures |  Blocker | ha, journal-node, namenode | Aaron T. Myers | Jing Zhao |
| [HDFS-5828](https://issues.apache.org/jira/browse/HDFS-5828) | BlockPlacementPolicyWithNodeGroup can place multiple replicas on the same node group when dfs.namenode.avoid.write.stale.datanode is true |  Major | namenode | Taylor, Buddy | Taylor, Buddy |
| [HDFS-5821](https://issues.apache.org/jira/browse/HDFS-5821) | TestHDFSCLI fails for user names with the dash character |  Major | test | Gera Shegalov | Gera Shegalov |
| [HDFS-5807](https://issues.apache.org/jira/browse/HDFS-5807) | TestBalancerWithNodeGroup.testBalancerWithNodeGroup fails intermittently on Branch-2 |  Major | test | Mit Desai | Chen He |
| [HDFS-5803](https://issues.apache.org/jira/browse/HDFS-5803) | TestBalancer.testBalancer0 fails |  Major | . | Mit Desai | Chen He |
| [HDFS-5791](https://issues.apache.org/jira/browse/HDFS-5791) | TestHttpsFileSystem should use a random port to avoid binding error during testing |  Major | test | Brandon Li | Haohui Mai |
| [HDFS-5790](https://issues.apache.org/jira/browse/HDFS-5790) | LeaseManager.findPath is very slow when many leases need recovery |  Major | namenode, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-5780](https://issues.apache.org/jira/browse/HDFS-5780) | TestRBWBlockInvalidation times out intemittently on branch-2 |  Major | . | Mit Desai | Mit Desai |
| [HDFS-5767](https://issues.apache.org/jira/browse/HDFS-5767) | NFS implementation assumes userName userId mapping to be unique, which is not true sometimes |  Blocker | nfs | Yongjun Zhang | Yongjun Zhang |
| [HDFS-5759](https://issues.apache.org/jira/browse/HDFS-5759) | Web UI does not show up during the period of loading FSImage |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5742](https://issues.apache.org/jira/browse/HDFS-5742) | DatanodeCluster (mini cluster of DNs) fails to start |  Minor | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-5716](https://issues.apache.org/jira/browse/HDFS-5716) | Allow WebHDFS to use pluggable authentication filter |  Major | webhdfs | Haohui Mai | Haohui Mai |
| [HDFS-5705](https://issues.apache.org/jira/browse/HDFS-5705) | TestSecondaryNameNodeUpgrade#testChangeNsIDFails may fail due to ConcurrentModificationException |  Major | datanode | Ted Yu | Ted Yu |
| [HDFS-5626](https://issues.apache.org/jira/browse/HDFS-5626) | dfsadmin -report shows incorrect cache values |  Major | caching | Stephen Chu | Colin Patrick McCabe |
| [HDFS-5516](https://issues.apache.org/jira/browse/HDFS-5516) | WebHDFS does not require user name when anonymous http requests are disallowed. |  Major | webhdfs | Chris Nauroth | Miodrag Radulovic |
| [HDFS-5492](https://issues.apache.org/jira/browse/HDFS-5492) | Port HDFS-2069 (Incorrect default trash interval in the docs) to trunk |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5339](https://issues.apache.org/jira/browse/HDFS-5339) | WebHDFS URI does not accept logical nameservices when security is enabled |  Major | webhdfs | Stephen Chu | Haohui Mai |
| [HDFS-5244](https://issues.apache.org/jira/browse/HDFS-5244) | TestNNStorageRetentionManager#testPurgeMultipleDirs fails |  Major | test | Jinghui Wang | Jinghui Wang |
| [HDFS-5064](https://issues.apache.org/jira/browse/HDFS-5064) | Standby checkpoints should not block concurrent readers |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-4858](https://issues.apache.org/jira/browse/HDFS-4858) | HDFS DataNode to NameNode RPC should timeout |  Minor | datanode | Jagane Sundar | Henry Wang |
| [HDFS-3969](https://issues.apache.org/jira/browse/HDFS-3969) | Small bug fixes and improvements for disk locations API |  Major | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-3128](https://issues.apache.org/jira/browse/HDFS-3128) | Unit tests should not use a test root in /tmp |  Minor | test | Eli Collins | Andrew Wang |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-5953](https://issues.apache.org/jira/browse/HDFS-5953) | TestBlockReaderFactory fails if libhadoop.so has not been built |  Major | . | Ted Yu | Akira AJISAKA |
| [HDFS-5936](https://issues.apache.org/jira/browse/HDFS-5936) | MiniDFSCluster does not clean data left behind by SecondaryNameNode. |  Major | namenode, test | Andrew Wang | Binglin Chang |
| [HDFS-5882](https://issues.apache.org/jira/browse/HDFS-5882) | TestAuditLogs is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HDFS-5672](https://issues.apache.org/jira/browse/HDFS-5672) | TestHASafeMode#testSafeBlockTracking fails in trunk |  Major | namenode | Ted Yu | Jing Zhao |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6124](https://issues.apache.org/jira/browse/HDFS-6124) | Add final modifier to class members |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HDFS-6086](https://issues.apache.org/jira/browse/HDFS-6086) | Fix a case where zero-copy or no-checksum reads were not allowed even when the block was cached |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6076](https://issues.apache.org/jira/browse/HDFS-6076) | SimulatedDataSet should not create DatanodeRegistration with namenode layout version and type |  Minor | datanode, test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-6061](https://issues.apache.org/jira/browse/HDFS-6061) | Allow dfs.datanode.shared.file.descriptor.path to contain multiple entries and fall back when needed |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6060](https://issues.apache.org/jira/browse/HDFS-6060) | NameNode should not check DataNode layout version |  Major | namenode | Brandon Li | Brandon Li |
| [HDFS-6046](https://issues.apache.org/jira/browse/HDFS-6046) | add dfs.client.mmap.enabled |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6040](https://issues.apache.org/jira/browse/HDFS-6040) | fix DFSClient issue without libhadoop.so and some other ShortCircuitShm cleanups |  Blocker | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-6038](https://issues.apache.org/jira/browse/HDFS-6038) | Allow JournalNode to handle editlog produced by new release with future layoutversion |  Major | journal-node, namenode | Haohui Mai | Jing Zhao |
| [HDFS-5986](https://issues.apache.org/jira/browse/HDFS-5986) | Capture the number of blocks pending deletion on namenode webUI |  Major | namenode | Suresh Srinivas | Chris Nauroth |
| [HDFS-5973](https://issues.apache.org/jira/browse/HDFS-5973) | add DomainSocket#shutdown method |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5956](https://issues.apache.org/jira/browse/HDFS-5956) | A file size is multiplied by the replication factor in 'hdfs oiv -p FileDistribution' option |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5950](https://issues.apache.org/jira/browse/HDFS-5950) | The DFSClient and DataNode should use shared memory segments to communicate short-circuit information |  Major | datanode, hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5942](https://issues.apache.org/jira/browse/HDFS-5942) | Fix javadoc in OfflineImageViewer |  Minor | documentation, tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5940](https://issues.apache.org/jira/browse/HDFS-5940) | Minor cleanups to ShortCircuitReplica, FsDatasetCache, and DomainSocketWatcher |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5938](https://issues.apache.org/jira/browse/HDFS-5938) | Make BlockReaderFactory#BlockReaderPeer a static class |  Trivial | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5898](https://issues.apache.org/jira/browse/HDFS-5898) | Allow NFS gateway to login/relogin from its kerberos keytab |  Major | nfs | Jing Zhao | Abin Shahab |
| [HDFS-5868](https://issues.apache.org/jira/browse/HDFS-5868) | Make hsync implementation pluggable |  Major | datanode | Taylor, Buddy | Taylor, Buddy |
| [HDFS-5866](https://issues.apache.org/jira/browse/HDFS-5866) | '-maxSize' and '-step' option fail in OfflineImageViewer |  Major | tools | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5847](https://issues.apache.org/jira/browse/HDFS-5847) | Consolidate INodeReference into a separate section |  Major | . | Haohui Mai | Jing Zhao |
| [HDFS-5810](https://issues.apache.org/jira/browse/HDFS-5810) | Unify mmap cache and short-circuit file descriptor cache |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5746](https://issues.apache.org/jira/browse/HDFS-5746) | add ShortCircuitSharedMemorySegment |  Major | datanode, hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-5726](https://issues.apache.org/jira/browse/HDFS-5726) | Fix compilation error in AbstractINodeDiff for JDK7 |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-5715](https://issues.apache.org/jira/browse/HDFS-5715) | Use Snapshot ID to indicate the corresponding Snapshot for a FileDiff/DirectoryDiff |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-5647](https://issues.apache.org/jira/browse/HDFS-5647) | Merge INodeDirectory.Feature and INodeFile.Feature |  Major | namenode | Haohui Mai | Haohui Mai |
| [HDFS-5638](https://issues.apache.org/jira/browse/HDFS-5638) | HDFS implementation of FileContext API for ACLs. |  Major | hdfs-client | Chris Nauroth | Vinayakumar B |
| [HDFS-5632](https://issues.apache.org/jira/browse/HDFS-5632) | Add Snapshot feature to INodeDirectory |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-5623](https://issues.apache.org/jira/browse/HDFS-5623) | NameNode: add tests for skipping ACL enforcement when permission checks are disabled, user is superuser or user is member of supergroup. |  Major | namenode | Chris Nauroth | Chris Nauroth |
| [HDFS-5554](https://issues.apache.org/jira/browse/HDFS-5554) | Add Snapshot Feature to INodeFile |  Major | namenode | Jing Zhao | Jing Zhao |
| [HDFS-5537](https://issues.apache.org/jira/browse/HDFS-5537) | Remove FileWithSnapshot interface |  Major | namenode, snapshots | Jing Zhao | Jing Zhao |
| [HDFS-5531](https://issues.apache.org/jira/browse/HDFS-5531) | Combine the getNsQuota() and getDsQuota() methods in INode |  Minor | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5483](https://issues.apache.org/jira/browse/HDFS-5483) | NN should gracefully handle multiple block replicas on same DN |  Major | namenode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-5286](https://issues.apache.org/jira/browse/HDFS-5286) | Flatten INodeDirectory hierarchy: add DirectoryWithQuotaFeature |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5285](https://issues.apache.org/jira/browse/HDFS-5285) | Flatten INodeFile hierarchy: Add UnderContruction Feature |  Major | namenode | Tsz Wo Nicholas Sze | Jing Zhao |
| [HDFS-5167](https://issues.apache.org/jira/browse/HDFS-5167) | Add metrics about the NameNode retry cache |  Minor | ha, namenode | Jing Zhao | Tsuyoshi Ozawa |
| [HDFS-4564](https://issues.apache.org/jira/browse/HDFS-4564) | Webhdfs returns incorrect http response codes for denied operations |  Blocker | webhdfs | Daryn Sharp | Daryn Sharp |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6030](https://issues.apache.org/jira/browse/HDFS-6030) | Remove an unused constructor in INode.java |  Trivial | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6025](https://issues.apache.org/jira/browse/HDFS-6025) | Update findbugsExcludeFile.xml |  Minor | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |


