# Hadoop HDFS 2.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-6237](https://issues.apache.org/jira/browse/HDFS-6237) | *Trivial* | **TestDFSShell#testGet fails on Windows due to invalid file system path.**
---

* [HDFS-6166](https://issues.apache.org/jira/browse/HDFS-6166) | *Blocker* | **revisit balancer so\_timeout**
---

* [HDFS-6163](https://issues.apache.org/jira/browse/HDFS-6163) | *Minor* | **Fix a minor bug in the HA upgrade document**
---

* [HDFS-6157](https://issues.apache.org/jira/browse/HDFS-6157) | *Major* | **Fix the entry point of OfflineImageViewer for hdfs.cmd**
---

* [HDFS-6150](https://issues.apache.org/jira/browse/HDFS-6150) | *Minor* | **Add inode id information in the logs to make debugging easier**
---

* [HDFS-6140](https://issues.apache.org/jira/browse/HDFS-6140) | *Major* | **WebHDFS cannot create a file with spaces in the name after HA failover changes.**
---

* [HDFS-6138](https://issues.apache.org/jira/browse/HDFS-6138) | *Minor* | **User Guide for how to use viewfs with federation**
---

* [HDFS-6135](https://issues.apache.org/jira/browse/HDFS-6135) | *Blocker* | **In HDFS upgrade with HA setup, JournalNode cannot handle layout version bump when rolling back**
---

* [HDFS-6131](https://issues.apache.org/jira/browse/HDFS-6131) | *Major* | **Move HDFSHighAvailabilityWithNFS.apt.vm and HDFSHighAvailabilityWithQJM.apt.vm from Yarn to HDFS**
---

* [HDFS-6130](https://issues.apache.org/jira/browse/HDFS-6130) | *Blocker* | **NPE when upgrading namenode from fsimages older than -32**
---

* [HDFS-6129](https://issues.apache.org/jira/browse/HDFS-6129) | *Minor* | **When a replica is not found for deletion, do not throw exception.**
---

* [HDFS-6127](https://issues.apache.org/jira/browse/HDFS-6127) | *Major* | **WebHDFS tokens cannot be renewed in HA setup**
---

* [HDFS-6124](https://issues.apache.org/jira/browse/HDFS-6124) | *Major* | **Add final modifier to class members**
---

* [HDFS-6123](https://issues.apache.org/jira/browse/HDFS-6123) | *Minor* | **Improve datanode error messages**
---

* [HDFS-6120](https://issues.apache.org/jira/browse/HDFS-6120) | *Major* | **Fix and improve safe mode log messages**
---

* [HDFS-6117](https://issues.apache.org/jira/browse/HDFS-6117) | *Minor* | **Print file path information in FileNotFoundException**
---

* [HDFS-6115](https://issues.apache.org/jira/browse/HDFS-6115) | *Minor* | **flush() should be called for every append on block scan verification log**
---

* [HDFS-6107](https://issues.apache.org/jira/browse/HDFS-6107) | *Major* | **When a block can't be cached due to limited space on the DataNode, that block becomes uncacheable**
---

* [HDFS-6106](https://issues.apache.org/jira/browse/HDFS-6106) | *Major* | **Reduce default for dfs.namenode.path.based.cache.refresh.interval.ms**
---

* [HDFS-6105](https://issues.apache.org/jira/browse/HDFS-6105) | *Major* | **NN web UI for DN list loads the same jmx page multiple times.**
---

* [HDFS-6102](https://issues.apache.org/jira/browse/HDFS-6102) | *Blocker* | **Lower the default maximum items per directory to fix PB fsimage loading**
---

* [HDFS-6100](https://issues.apache.org/jira/browse/HDFS-6100) | *Major* | **DataNodeWebHdfsMethods does not failover in HA mode**
---

* [HDFS-6099](https://issues.apache.org/jira/browse/HDFS-6099) | *Major* | **HDFS file system limits not enforced on renames.**
---

* [HDFS-6097](https://issues.apache.org/jira/browse/HDFS-6097) | *Major* | **zero-copy reads are incorrectly disabled on file offsets above 2GB**
---

* [HDFS-6096](https://issues.apache.org/jira/browse/HDFS-6096) | *Minor* | **TestWebHdfsTokens may timeout**
---

* [HDFS-6094](https://issues.apache.org/jira/browse/HDFS-6094) | *Major* | **The same block can be counted twice towards safe mode threshold**
---

* [HDFS-6090](https://issues.apache.org/jira/browse/HDFS-6090) | *Minor* | **Use MiniDFSCluster.Builder instead of deprecated constructors**
---

* [HDFS-6089](https://issues.apache.org/jira/browse/HDFS-6089) | *Major* | **Standby NN while transitioning to active throws a connection refused error when the prior active NN process is suspended**
---

* [HDFS-6086](https://issues.apache.org/jira/browse/HDFS-6086) | *Major* | **Fix a case where zero-copy or no-checksum reads were not allowed even when the block was cached**
---

* [HDFS-6085](https://issues.apache.org/jira/browse/HDFS-6085) | *Major* | **Improve CacheReplicationMonitor log messages a bit**
---

* [HDFS-6084](https://issues.apache.org/jira/browse/HDFS-6084) | *Minor* | **Namenode UI - "Hadoop" logo link shouldn't go to hadoop homepage**
---

* [HDFS-6080](https://issues.apache.org/jira/browse/HDFS-6080) | *Major* | **Improve NFS gateway performance by making rtmax and wtmax configurable**
---

* [HDFS-6079](https://issues.apache.org/jira/browse/HDFS-6079) | *Major* | **Timeout for getFileBlockStorageLocations does not work**
---

* [HDFS-6078](https://issues.apache.org/jira/browse/HDFS-6078) | *Minor* | **TestIncrementalBlockReports is flaky**
---

* [HDFS-6077](https://issues.apache.org/jira/browse/HDFS-6077) | *Major* | **running slive with webhdfs on secure HA cluster fails with unkown host exception**
---

* [HDFS-6076](https://issues.apache.org/jira/browse/HDFS-6076) | *Minor* | **SimulatedDataSet should not create DatanodeRegistration with namenode layout version and type**
---

* [HDFS-6072](https://issues.apache.org/jira/browse/HDFS-6072) | *Major* | **Clean up dead code of FSImage**
---

* [HDFS-6071](https://issues.apache.org/jira/browse/HDFS-6071) | *Major* | **BlockReaderLocal doesn't return -1 on EOF when doing a zero-length read on a short file**
---

* [HDFS-6070](https://issues.apache.org/jira/browse/HDFS-6070) | *Trivial* | **Cleanup use of ReadStatistics in DFSInputStream**
---

* [HDFS-6069](https://issues.apache.org/jira/browse/HDFS-6069) | *Trivial* | **Quash stack traces when ACLs are disabled**
---

* [HDFS-6068](https://issues.apache.org/jira/browse/HDFS-6068) | *Major* | **Disallow snapshot names that are also invalid directory names**
---

* [HDFS-6067](https://issues.apache.org/jira/browse/HDFS-6067) | *Major* | **TestPread.testMaxOutHedgedReadPool is flaky**
---

* [HDFS-6065](https://issues.apache.org/jira/browse/HDFS-6065) | *Major* | **HDFS zero-copy reads should return null on EOF when doing ZCR**
---

* [HDFS-6064](https://issues.apache.org/jira/browse/HDFS-6064) | *Minor* | **DFSConfigKeys.DFS\_BLOCKREPORT\_INTERVAL\_MSEC\_DEFAULT is not updated with latest block report interval of 6 hrs**
---

* [HDFS-6063](https://issues.apache.org/jira/browse/HDFS-6063) | *Minor* | **TestAclCLI fails intermittently when running test 24: copyFromLocal**
---

* [HDFS-6062](https://issues.apache.org/jira/browse/HDFS-6062) | *Minor* | **TestRetryCacheWithHA#testConcat is flaky**
---

* [HDFS-6061](https://issues.apache.org/jira/browse/HDFS-6061) | *Major* | **Allow dfs.datanode.shared.file.descriptor.path to contain multiple entries and fall back when needed**
---

* [HDFS-6060](https://issues.apache.org/jira/browse/HDFS-6060) | *Major* | **NameNode should not check DataNode layout version**
---

* [HDFS-6059](https://issues.apache.org/jira/browse/HDFS-6059) | *Major* | **TestBlockReaderLocal fails if native library is not available**
---

* [HDFS-6058](https://issues.apache.org/jira/browse/HDFS-6058) | *Major* | **Fix TestHDFSCLI failures after HADOOP-8691 change**
---

* [HDFS-6057](https://issues.apache.org/jira/browse/HDFS-6057) | *Blocker* | **DomainSocketWatcher.watcherThread should be marked as daemon thread**
---

* [HDFS-6055](https://issues.apache.org/jira/browse/HDFS-6055) | *Major* | **Change default configuration to limit file name length in HDFS**

The default configuration of HDFS now sets dfs.namenode.fs-limits.max-component-length to 255 for improved interoperability with other file system implementations.  This limits each component of a file system path to a maximum of 255 bytes in UTF-8 encoding.  Attempts to create new files that violate this rule will fail with an error.  Existing files that violate the rule are not effected.  Previously, dfs.namenode.fs-limits.max-component-length was set to 0 (ignored).  If necessary, it is possible to set the value back to 0 in the cluster's configuration to restore the old behavior.

---

* [HDFS-6053](https://issues.apache.org/jira/browse/HDFS-6053) | *Major* | **Fix TestDecommissioningStatus and TestDecommission in branch-2**
---

* [HDFS-6051](https://issues.apache.org/jira/browse/HDFS-6051) | *Blocker* | **HDFS cannot run on Windows since short-circuit shared memory segment changes.**
---

* [HDFS-6047](https://issues.apache.org/jira/browse/HDFS-6047) | *Major* | **TestPread NPE inside in DFSInputStream hedgedFetchBlockByteRange**
---

* [HDFS-6046](https://issues.apache.org/jira/browse/HDFS-6046) | *Major* | **add dfs.client.mmap.enabled**
---

* [HDFS-6044](https://issues.apache.org/jira/browse/HDFS-6044) | *Minor* | **Add property for setting the NFS look up time for users**
---

* [HDFS-6043](https://issues.apache.org/jira/browse/HDFS-6043) | *Major* | **Give HDFS daemons NFS3 and Portmap their own OPTS**
---

* [HDFS-6040](https://issues.apache.org/jira/browse/HDFS-6040) | *Blocker* | **fix DFSClient issue without libhadoop.so and some other ShortCircuitShm cleanups**
---

* [HDFS-6039](https://issues.apache.org/jira/browse/HDFS-6039) | *Major* | **Uploading a File under a Dir with default acls throws "Duplicated ACLFeature"**
---

* [HDFS-6038](https://issues.apache.org/jira/browse/HDFS-6038) | *Major* | **Allow JournalNode to handle editlog produced by new release with future layoutversion**
---

* [HDFS-6033](https://issues.apache.org/jira/browse/HDFS-6033) | *Major* | **PBImageXmlWriter incorrectly handles processing cache directives**
---

* [HDFS-6030](https://issues.apache.org/jira/browse/HDFS-6030) | *Trivial* | **Remove an unused constructor in INode.java**
---

* [HDFS-6028](https://issues.apache.org/jira/browse/HDFS-6028) | *Trivial* | **Print clearer error message when user attempts to delete required mask entry from ACL.**
---

* [HDFS-6025](https://issues.apache.org/jira/browse/HDFS-6025) | *Minor* | **Update findbugsExcludeFile.xml**
---

* [HDFS-6018](https://issues.apache.org/jira/browse/HDFS-6018) | *Trivial* | **Exception recorded in LOG when IPCLoggerChannel#close is called**
---

* [HDFS-6008](https://issues.apache.org/jira/browse/HDFS-6008) | *Minor* | **Namenode dead node link is giving HTTP error 500**
---

* [HDFS-6006](https://issues.apache.org/jira/browse/HDFS-6006) | *Trivial* | **Remove duplicate code in FSNameSystem#getFileInfo**
---

* [HDFS-5988](https://issues.apache.org/jira/browse/HDFS-5988) | *Blocker* | **Bad fsimage always generated after upgrade**
---

* [HDFS-5986](https://issues.apache.org/jira/browse/HDFS-5986) | *Major* | **Capture the number of blocks pending deletion on namenode webUI**
---

* [HDFS-5982](https://issues.apache.org/jira/browse/HDFS-5982) | *Critical* | **Need to update snapshot manager when applying editlog for deleting a snapshottable directory**
---

* [HDFS-5981](https://issues.apache.org/jira/browse/HDFS-5981) | *Minor* | **PBImageXmlWriter generates malformed XML**
---

* [HDFS-5979](https://issues.apache.org/jira/browse/HDFS-5979) | *Minor* | **Typo and logger fix for fsimage PB code**
---

* [HDFS-5973](https://issues.apache.org/jira/browse/HDFS-5973) | *Major* | **add DomainSocket#shutdown method**
---

* [HDFS-5962](https://issues.apache.org/jira/browse/HDFS-5962) | *Critical* | **Mtime and atime are not persisted for symbolic links**
---

* [HDFS-5961](https://issues.apache.org/jira/browse/HDFS-5961) | *Critical* | **OIV cannot load fsimages containing a symbolic link**
---

* [HDFS-5959](https://issues.apache.org/jira/browse/HDFS-5959) | *Minor* | **Fix typo at section name in FSImageFormatProtobuf.java**
---

* [HDFS-5956](https://issues.apache.org/jira/browse/HDFS-5956) | *Major* | **A file size is multiplied by the replication factor in 'hdfs oiv -p FileDistribution' option**
---

* [HDFS-5953](https://issues.apache.org/jira/browse/HDFS-5953) | *Major* | **TestBlockReaderFactory fails if libhadoop.so has not been built**
---

* [HDFS-5950](https://issues.apache.org/jira/browse/HDFS-5950) | *Major* | **The DFSClient and DataNode should use shared memory segments to communicate short-circuit information**
---

* [HDFS-5949](https://issues.apache.org/jira/browse/HDFS-5949) | *Minor* | **New Namenode UI when trying to download a file, the browser doesn't know the file name**
---

* [HDFS-5948](https://issues.apache.org/jira/browse/HDFS-5948) | *Major* | **TestBackupNode flakes with port in use error**
---

* [HDFS-5944](https://issues.apache.org/jira/browse/HDFS-5944) | *Major* | **LeaseManager:findLeaseWithPrefixPath can't handle path like /a/b/ right and cause SecondaryNameNode failed do checkpoint**
---

* [HDFS-5943](https://issues.apache.org/jira/browse/HDFS-5943) | *Major* | **'dfs.namenode.https-address.ns1' property is not used in federation setup**
---

* [HDFS-5942](https://issues.apache.org/jira/browse/HDFS-5942) | *Minor* | **Fix javadoc in OfflineImageViewer**
---

* [HDFS-5941](https://issues.apache.org/jira/browse/HDFS-5941) | *Major* | **add dfs.namenode.secondary.https-address and dfs.namenode.secondary.https-address in hdfs-default.xml**
---

* [HDFS-5940](https://issues.apache.org/jira/browse/HDFS-5940) | *Major* | **Minor cleanups to ShortCircuitReplica, FsDatasetCache, and DomainSocketWatcher**
---

* [HDFS-5939](https://issues.apache.org/jira/browse/HDFS-5939) | *Major* | **WebHdfs returns misleading error code and logs nothing if trying to create a file with no DNs in cluster**
---

* [HDFS-5938](https://issues.apache.org/jira/browse/HDFS-5938) | *Trivial* | **Make BlockReaderFactory#BlockReaderPeer a static class**
---

* [HDFS-5936](https://issues.apache.org/jira/browse/HDFS-5936) | *Major* | **MiniDFSCluster does not clean data left behind by SecondaryNameNode.**
---

* [HDFS-5935](https://issues.apache.org/jira/browse/HDFS-5935) | *Minor* | **New Namenode UI FS browser should throw smarter error messages**
---

* [HDFS-5934](https://issues.apache.org/jira/browse/HDFS-5934) | *Minor* | **New Namenode UI back button doesn't work as expected**
---

* [HDFS-5929](https://issues.apache.org/jira/browse/HDFS-5929) | *Major* | **Add Block pool % usage to HDFS federated nn page**
---

* [HDFS-5922](https://issues.apache.org/jira/browse/HDFS-5922) | *Major* | **DN heartbeat thread can get stuck in tight loop**
---

* [HDFS-5915](https://issues.apache.org/jira/browse/HDFS-5915) | *Major* | **Refactor FSImageFormatProtobuf to simplify cross section reads**
---

* [HDFS-5913](https://issues.apache.org/jira/browse/HDFS-5913) | *Minor* | **Nfs3Utils#getWccAttr() should check attr parameter against null**
---

* [HDFS-5910](https://issues.apache.org/jira/browse/HDFS-5910) | *Major* | **Enhance DataTransferProtocol to allow per-connection choice of encryption/plain-text**
---

* [HDFS-5908](https://issues.apache.org/jira/browse/HDFS-5908) | *Minor* | **Change AclFeature to capture list of ACL entries in an ImmutableList.**
---

* [HDFS-5904](https://issues.apache.org/jira/browse/HDFS-5904) | *Major* | **TestFileStatus fails intermittently on trunk and branch2**
---

* [HDFS-5901](https://issues.apache.org/jira/browse/HDFS-5901) | *Major* | **NameNode new UI doesn't support IE8 and IE9 on windows 7**
---

* [HDFS-5900](https://issues.apache.org/jira/browse/HDFS-5900) | *Major* | **Cannot set cache pool limit of "unlimited" via CacheAdmin**
---

* [HDFS-5898](https://issues.apache.org/jira/browse/HDFS-5898) | *Major* | **Allow NFS gateway to login/relogin from its kerberos keytab**
---

* [HDFS-5895](https://issues.apache.org/jira/browse/HDFS-5895) | *Major* | **HDFS cacheadmin -listPools has exit\_code of 1 when the command returns 0 result.**
---

* [HDFS-5893](https://issues.apache.org/jira/browse/HDFS-5893) | *Major* | **HftpFileSystem.RangeHeaderUrlOpener uses the default URLConnectionFactory which does not import SSL certificates**
---

* [HDFS-5891](https://issues.apache.org/jira/browse/HDFS-5891) | *Major* | **webhdfs should not try connecting the DN during redirection**
---

* [HDFS-5886](https://issues.apache.org/jira/browse/HDFS-5886) | *Major* | **Potential null pointer deference in RpcProgramNfs3#readlink()**
---

* [HDFS-5882](https://issues.apache.org/jira/browse/HDFS-5882) | *Minor* | **TestAuditLogs is flaky**
---

* [HDFS-5881](https://issues.apache.org/jira/browse/HDFS-5881) | *Critical* | **Fix skip() of the short-circuit local reader (legacy).**
---

* [HDFS-5879](https://issues.apache.org/jira/browse/HDFS-5879) | *Major* | **Some TestHftpFileSystem tests do not close streams**
---

* [HDFS-5868](https://issues.apache.org/jira/browse/HDFS-5868) | *Major* | **Make hsync implementation pluggable**
---

* [HDFS-5866](https://issues.apache.org/jira/browse/HDFS-5866) | *Major* | **'-maxSize' and '-step' option fail in OfflineImageViewer**
---

* [HDFS-5859](https://issues.apache.org/jira/browse/HDFS-5859) | *Major* | **DataNode#checkBlockToken should check block tokens even if security is not enabled**
---

* [HDFS-5857](https://issues.apache.org/jira/browse/HDFS-5857) | *Major* | **TestWebHDFS#testNamenodeRestart fails intermittently with NPE**
---

* [HDFS-5856](https://issues.apache.org/jira/browse/HDFS-5856) | *Minor* | **DataNode.checkDiskError might throw NPE**
---

* [HDFS-5847](https://issues.apache.org/jira/browse/HDFS-5847) | *Major* | **Consolidate INodeReference into a separate section**
---

* [HDFS-5846](https://issues.apache.org/jira/browse/HDFS-5846) | *Major* | **Assigning DEFAULT\_RACK in resolveNetworkLocation method can break data resiliency**
---

* [HDFS-5843](https://issues.apache.org/jira/browse/HDFS-5843) | *Major* | **DFSClient.getFileChecksum() throws IOException if checksum is disabled**
---

* [HDFS-5840](https://issues.apache.org/jira/browse/HDFS-5840) | *Blocker* | **Follow-up to HDFS-5138 to improve error handling during partial upgrade failures**
---

* [HDFS-5828](https://issues.apache.org/jira/browse/HDFS-5828) | *Major* | **BlockPlacementPolicyWithNodeGroup can place multiple replicas on the same node group when dfs.namenode.avoid.write.stale.datanode is true**
---

* [HDFS-5821](https://issues.apache.org/jira/browse/HDFS-5821) | *Major* | **TestHDFSCLI fails for user names with the dash character**
---

* [HDFS-5810](https://issues.apache.org/jira/browse/HDFS-5810) | *Major* | **Unify mmap cache and short-circuit file descriptor cache**
---

* [HDFS-5807](https://issues.apache.org/jira/browse/HDFS-5807) | *Major* | **TestBalancerWithNodeGroup.testBalancerWithNodeGroup fails intermittently on Branch-2**
---

* [HDFS-5804](https://issues.apache.org/jira/browse/HDFS-5804) | *Major* | **HDFS NFS Gateway fails to mount and proxy when using Kerberos**

Fixes NFS on Kerberized cluster.

---

* [HDFS-5803](https://issues.apache.org/jira/browse/HDFS-5803) | *Major* | **TestBalancer.testBalancer0 fails**
---

* [HDFS-5791](https://issues.apache.org/jira/browse/HDFS-5791) | *Major* | **TestHttpsFileSystem should use a random port to avoid binding error during testing**
---

* [HDFS-5790](https://issues.apache.org/jira/browse/HDFS-5790) | *Major* | **LeaseManager.findPath is very slow when many leases need recovery**

Committed to branch-2 and trunk.

---

* [HDFS-5781](https://issues.apache.org/jira/browse/HDFS-5781) | *Minor* | **Use an array to record the mapping between FSEditLogOpCode and the corresponding byte value**
---

* [HDFS-5780](https://issues.apache.org/jira/browse/HDFS-5780) | *Major* | **TestRBWBlockInvalidation times out intemittently on branch-2**
---

* [HDFS-5776](https://issues.apache.org/jira/browse/HDFS-5776) | *Major* | **Support 'hedged' reads in DFSClient**

If a read from a block is slow, start up another parallel, 'hedged' read against a different block replica.  We then take the result of which ever read returns first (the outstanding read is cancelled).  This 'hedged' read feature will help rein in the outliers, the odd read that takes a long time because it hit a bad patch on the disc, etc.

This feature is off by default.  To enable this feature, set <code>dfs.client.hedged.read.threadpool.size</code> to a positive number.  The threadpool size is how many threads to dedicate to the running of these 'hedged', concurrent reads in your client.

Then set <code>dfs.client.hedged.read.threshold.millis</code> to the number of milliseconds to wait before starting up a 'hedged' read.  For example, if you set this property to 10, then if a read has not returned within 10 milliseconds, we will start up a new read against a different block replica.

This feature emits new metrics:

+ hedgedReadOps
+ hedgeReadOpsWin -- how many times the hedged read 'beat' the original read
+ hedgedReadOpsInCurThread -- how many times we went to do a hedged read but we had to run it in the current thread because dfs.client.hedged.read.threadpool.size was at a maximum.

---

* [HDFS-5775](https://issues.apache.org/jira/browse/HDFS-5775) | *Major* | **Consolidate the code for serialization in CacheManager**
---

* [HDFS-5768](https://issues.apache.org/jira/browse/HDFS-5768) | *Major* | **Consolidate the serialization code in DelegationTokenSecretManager**
---

* [HDFS-5767](https://issues.apache.org/jira/browse/HDFS-5767) | *Blocker* | **NFS implementation assumes userName userId mapping to be unique, which is not true sometimes**
---

* [HDFS-5759](https://issues.apache.org/jira/browse/HDFS-5759) | *Major* | **Web UI does not show up during the period of loading FSImage**
---

* [HDFS-5746](https://issues.apache.org/jira/browse/HDFS-5746) | *Major* | **add ShortCircuitSharedMemorySegment**
---

* [HDFS-5742](https://issues.apache.org/jira/browse/HDFS-5742) | *Minor* | **DatanodeCluster (mini cluster of DNs) fails to start**
---

* [HDFS-5726](https://issues.apache.org/jira/browse/HDFS-5726) | *Minor* | **Fix compilation error in AbstractINodeDiff for JDK7**
---

* [HDFS-5716](https://issues.apache.org/jira/browse/HDFS-5716) | *Major* | **Allow WebHDFS to use pluggable authentication filter**
---

* [HDFS-5715](https://issues.apache.org/jira/browse/HDFS-5715) | *Major* | **Use Snapshot ID to indicate the corresponding Snapshot for a FileDiff/DirectoryDiff**
---

* [HDFS-5709](https://issues.apache.org/jira/browse/HDFS-5709) | *Major* | **Improve NameNode upgrade with existing reserved paths and path components**
---

* [HDFS-5705](https://issues.apache.org/jira/browse/HDFS-5705) | *Major* | **TestSecondaryNameNodeUpgrade#testChangeNsIDFails may fail due to ConcurrentModificationException**
---

* [HDFS-5698](https://issues.apache.org/jira/browse/HDFS-5698) | *Major* | **Use protobuf to serialize / deserialize FSImage**

Use protobuf to serialize/deserialize the FSImage.

---

* [HDFS-5672](https://issues.apache.org/jira/browse/HDFS-5672) | *Major* | **TestHASafeMode#testSafeBlockTracking fails in trunk**
---

* [HDFS-5647](https://issues.apache.org/jira/browse/HDFS-5647) | *Major* | **Merge INodeDirectory.Feature and INodeFile.Feature**
---

* [HDFS-5638](https://issues.apache.org/jira/browse/HDFS-5638) | *Major* | **HDFS implementation of FileContext API for ACLs.**
---

* [HDFS-5632](https://issues.apache.org/jira/browse/HDFS-5632) | *Major* | **Add Snapshot feature to INodeDirectory**
---

* [HDFS-5626](https://issues.apache.org/jira/browse/HDFS-5626) | *Major* | **dfsadmin -report shows incorrect cache values**
---

* [HDFS-5623](https://issues.apache.org/jira/browse/HDFS-5623) | *Major* | **NameNode: add tests for skipping ACL enforcement when permission checks are disabled, user is superuser or user is member of supergroup.**
---

* [HDFS-5554](https://issues.apache.org/jira/browse/HDFS-5554) | *Major* | **Add Snapshot Feature to INodeFile**
---

* [HDFS-5537](https://issues.apache.org/jira/browse/HDFS-5537) | *Major* | **Remove FileWithSnapshot interface**
---

* [HDFS-5535](https://issues.apache.org/jira/browse/HDFS-5535) | *Major* | **Umbrella jira for improved HDFS rolling upgrades**
---

* [HDFS-5531](https://issues.apache.org/jira/browse/HDFS-5531) | *Minor* | **Combine the getNsQuota() and getDsQuota() methods in INode**
---

* [HDFS-5516](https://issues.apache.org/jira/browse/HDFS-5516) | *Major* | **WebHDFS does not require user name when anonymous http requests are disallowed.**
---

* [HDFS-5492](https://issues.apache.org/jira/browse/HDFS-5492) | *Minor* | **Port HDFS-2069 (Incorrect default trash interval in the docs) to trunk**
---

* [HDFS-5483](https://issues.apache.org/jira/browse/HDFS-5483) | *Major* | **NN should gracefully handle multiple block replicas on same DN**
---

* [HDFS-5339](https://issues.apache.org/jira/browse/HDFS-5339) | *Major* | **WebHDFS URI does not accept logical nameservices when security is enabled**
---

* [HDFS-5321](https://issues.apache.org/jira/browse/HDFS-5321) | *Major* | **Clean up the HTTP-related configuration in HDFS**

dfs.http.port and dfs.https.port are removed. Filesystem clients, such as WebHdfsFileSystem, now have fixed instead of configurable default ports (i.e., 50070 for http and 50470 for https).

Users can explicitly specify the port in the URI to access the file system which runs on non-default ports.

---

* [HDFS-5318](https://issues.apache.org/jira/browse/HDFS-5318) | *Major* | **Support read-only and read-write paths to shared replicas**
---

* [HDFS-5286](https://issues.apache.org/jira/browse/HDFS-5286) | *Major* | **Flatten INodeDirectory hierarchy: add DirectoryWithQuotaFeature**
---

* [HDFS-5285](https://issues.apache.org/jira/browse/HDFS-5285) | *Major* | **Flatten INodeFile hierarchy: Add UnderContruction Feature**
---

* [HDFS-5244](https://issues.apache.org/jira/browse/HDFS-5244) | *Major* | **TestNNStorageRetentionManager#testPurgeMultipleDirs fails**
---

* [HDFS-5167](https://issues.apache.org/jira/browse/HDFS-5167) | *Minor* | **Add metrics about the NameNode retry cache**
---

* [HDFS-5153](https://issues.apache.org/jira/browse/HDFS-5153) | *Major* | **Datanode should send block reports for each storage in a separate message**
---

* [HDFS-5138](https://issues.apache.org/jira/browse/HDFS-5138) | *Blocker* | **Support HDFS upgrade in HA**
---

* [HDFS-5064](https://issues.apache.org/jira/browse/HDFS-5064) | *Major* | **Standby checkpoints should not block concurrent readers**
---

* [HDFS-4911](https://issues.apache.org/jira/browse/HDFS-4911) | *Minor* | **Reduce PeerCache timeout to be commensurate with dfs.datanode.socket.reuse.keepalive**
---

* [HDFS-4858](https://issues.apache.org/jira/browse/HDFS-4858) | *Minor* | **HDFS DataNode to NameNode RPC should timeout**
---

* [HDFS-4685](https://issues.apache.org/jira/browse/HDFS-4685) | *Major* | **Implementation of ACLs in HDFS**

HDFS now supports ACLs (Access Control Lists).  ACLs can specify fine-grained file permissions for specific named users or named groups.

---

* [HDFS-4564](https://issues.apache.org/jira/browse/HDFS-4564) | *Blocker* | **Webhdfs returns incorrect http response codes for denied operations**
---

* [HDFS-4370](https://issues.apache.org/jira/browse/HDFS-4370) | *Major* | **Fix typo Blanacer in DataNode**

I just committed this. Thank you Chu.

---

* [HDFS-4200](https://issues.apache.org/jira/browse/HDFS-4200) | *Major* | **Reduce the size of synchronized sections in PacketResponder**
---

* [HDFS-3969](https://issues.apache.org/jira/browse/HDFS-3969) | *Major* | **Small bug fixes and improvements for disk locations API**
---

* [HDFS-3405](https://issues.apache.org/jira/browse/HDFS-3405) | *Major* | **Checkpointing should use HTTP POST or PUT instead of GET-GET to send merged fsimages**
---

* [HDFS-3128](https://issues.apache.org/jira/browse/HDFS-3128) | *Minor* | **Unit tests should not use a test root in /tmp**


