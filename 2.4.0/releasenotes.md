# Hadoop  2.4.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-10450](https://issues.apache.org/jira/browse/HADOOP-10450) | *Major* | **Build zlib native code bindings in hadoop.dll for Windows.**
---

* [HADOOP-10449](https://issues.apache.org/jira/browse/HADOOP-10449) | *Minor* | **Fix the javac warnings in the security packages.**
---

* [HADOOP-10442](https://issues.apache.org/jira/browse/HADOOP-10442) | *Blocker* | **Group look-up can cause segmentation fault when certain JNI-based mapping module is used.**
---

* [HADOOP-10441](https://issues.apache.org/jira/browse/HADOOP-10441) | *Blocker* | **Namenode metric "rpc.RetryCache/NameNodeRetryCache.CacheHit" can't be correctly processed by Ganglia**
---

* [HADOOP-10440](https://issues.apache.org/jira/browse/HADOOP-10440) | *Major* | **HarFsInputStream of HarFileSystem, when reading data, computing the position has bug**
---

* [HADOOP-10437](https://issues.apache.org/jira/browse/HADOOP-10437) | *Minor* | **Fix the javac warnings in the conf and the util package**
---

* [HADOOP-10425](https://issues.apache.org/jira/browse/HADOOP-10425) | *Critical* | **Incompatible behavior of LocalFileSystem:getContentSummary**
---

* [HADOOP-10423](https://issues.apache.org/jira/browse/HADOOP-10423) | *Minor* | **Clarify compatibility policy document for combination of new client and old server.**
---

* [HADOOP-10422](https://issues.apache.org/jira/browse/HADOOP-10422) | *Minor* | **Remove redundant logging of RPC retry attempts.**
---

* [HADOOP-10407](https://issues.apache.org/jira/browse/HADOOP-10407) | *Minor* | **Fix the javac warnings in the ipc package.**
---

* [HADOOP-10399](https://issues.apache.org/jira/browse/HADOOP-10399) | *Major* | **FileContext API for ACLs.**
---

* [HADOOP-10395](https://issues.apache.org/jira/browse/HADOOP-10395) | *Minor* | **TestCallQueueManager is flaky**
---

* [HADOOP-10394](https://issues.apache.org/jira/browse/HADOOP-10394) | *Major* | **TestAuthenticationFilter is flaky**
---

* [HADOOP-10393](https://issues.apache.org/jira/browse/HADOOP-10393) | *Minor* | **Fix hadoop-auth javac warnings**
---

* [HADOOP-10386](https://issues.apache.org/jira/browse/HADOOP-10386) | *Minor* | **Log proxy hostname in various exceptions being thrown in a HA setup**
---

* [HADOOP-10383](https://issues.apache.org/jira/browse/HADOOP-10383) | *Major* | **InterfaceStability annotations should have RetentionPolicy.RUNTIME**
---

* [HADOOP-10379](https://issues.apache.org/jira/browse/HADOOP-10379) | *Major* | **Protect authentication cookies with the HttpOnly and Secure flags**
---

* [HADOOP-10374](https://issues.apache.org/jira/browse/HADOOP-10374) | *Major* | **InterfaceAudience annotations should have RetentionPolicy.RUNTIME**
---

* [HADOOP-10368](https://issues.apache.org/jira/browse/HADOOP-10368) | *Minor* | **InputStream is not closed in VersionInfo ctor**
---

* [HADOOP-10361](https://issues.apache.org/jira/browse/HADOOP-10361) | *Minor* | **Correct alignment in CLI output for ACLs.**
---

* [HADOOP-10355](https://issues.apache.org/jira/browse/HADOOP-10355) | *Major* | **TestLoadGenerator#testLoadGenerator fails**
---

* [HADOOP-10354](https://issues.apache.org/jira/browse/HADOOP-10354) | *Major* | **TestWebHDFS fails after merge of HDFS-4685 to trunk**
---

* [HADOOP-10353](https://issues.apache.org/jira/browse/HADOOP-10353) | *Major* | **FsUrlStreamHandlerFactory is not thread safe**
---

* [HADOOP-10352](https://issues.apache.org/jira/browse/HADOOP-10352) | *Major* | **Recursive setfacl erroneously attempts to apply default ACL to files.**
---

* [HADOOP-10348](https://issues.apache.org/jira/browse/HADOOP-10348) | *Major* | **Deprecate hadoop.ssl.configuration in branch-2, and remove it in trunk**
---

* [HADOOP-10346](https://issues.apache.org/jira/browse/HADOOP-10346) | *Blocker* | **Deadlock while logging tokens**
---

* [HADOOP-10343](https://issues.apache.org/jira/browse/HADOOP-10343) | *Minor* | **Change info to debug log in LossyRetryInvocationHandler**
---

* [HADOOP-10338](https://issues.apache.org/jira/browse/HADOOP-10338) | *Major* | **Cannot get the FileStatus of the root inode from the new Globber**
---

* [HADOOP-10337](https://issues.apache.org/jira/browse/HADOOP-10337) | *Major* | **ConcurrentModificationException from MetricsDynamicMBeanBase.createMBeanInfo()**
---

* [HADOOP-10333](https://issues.apache.org/jira/browse/HADOOP-10333) | *Trivial* | **Fix grammatical error in overview.html document**
---

* [HADOOP-10330](https://issues.apache.org/jira/browse/HADOOP-10330) | *Major* | **TestFrameDecoder fails if it cannot bind port 12345**
---

* [HADOOP-10328](https://issues.apache.org/jira/browse/HADOOP-10328) | *Major* | **loadGenerator exit code is not reliable**
---

* [HADOOP-10327](https://issues.apache.org/jira/browse/HADOOP-10327) | *Blocker* | **Trunk windows build broken after HDFS-5746**
---

* [HADOOP-10326](https://issues.apache.org/jira/browse/HADOOP-10326) | *Major* | **M/R jobs can not access S3 if Kerberos is enabled**
---

* [HADOOP-10320](https://issues.apache.org/jira/browse/HADOOP-10320) | *Trivial* | **Javadoc in InterfaceStability.java lacks final </ul>**
---

* [HADOOP-10314](https://issues.apache.org/jira/browse/HADOOP-10314) | *Major* | **The ls command help still shows outdated 0.16 format.**
---

* [HADOOP-10301](https://issues.apache.org/jira/browse/HADOOP-10301) | *Blocker* | **AuthenticationFilter should return Forbidden for failed authentication**
---

* [HADOOP-10295](https://issues.apache.org/jira/browse/HADOOP-10295) | *Major* | **Allow distcp to automatically identify the checksum type of source files and use it for the target**

Add option for distcp to preserve the checksum type of the source files. Users can use "-pc" as distcp command option to preserve the checksum type.

---

* [HADOOP-10285](https://issues.apache.org/jira/browse/HADOOP-10285) | *Major* | **Admin interface to swap callqueue at runtime**
---

* [HADOOP-10280](https://issues.apache.org/jira/browse/HADOOP-10280) | *Major* | **Make Schedulables return a configurable identity of user or group**
---

* [HADOOP-10278](https://issues.apache.org/jira/browse/HADOOP-10278) | *Major* | **Refactor to make CallQueue pluggable**
---

* [HADOOP-10249](https://issues.apache.org/jira/browse/HADOOP-10249) | *Major* | **LdapGroupsMapping should trim ldap password read from file**
---

* [HADOOP-10221](https://issues.apache.org/jira/browse/HADOOP-10221) | *Major* | **Add a plugin to specify SaslProperties for RPC protocol based on connection properties**

SaslPropertiesResolver  or its subclass is used to resolve the QOP used for a connection. The subclass can be specified via "hadoop.security.saslproperties.resolver.class" configuration property. If not specified, the full set of values specified in hadoop.rpc.protection is used while determining the QOP used for the  connection. If a class is specified, then the QOP values returned by the class will be used while determining the QOP used for the connection.

Note that this change, effectively removes SaslRpcServer.SASL\_PROPS which was a public field. Any use of this variable  should be replaced with the following code:
SaslPropertiesResolver saslPropsResolver = SaslPropertiesResolver.getInstance(conf);
Map<String, String> sasl\_props = saslPropsResolver.getDefaultProperties();

---

* [HADOOP-10211](https://issues.apache.org/jira/browse/HADOOP-10211) | *Major* | **Enable RPC protocol to negotiate SASL-QOP values between clients and servers**

The hadoop.rpc.protection configuration property previously supported specifying a single value: one of authentication, integrity or privacy.  An unrecognized value was silently assumed to mean authentication.  This configuration property now accepts a comma-separated list of any of the 3 values, and unrecognized values are rejected with an error. Existing configurations containing an invalid value must be corrected. If the property is empty or not specified, authentication is assumed.

---

* [HADOOP-10191](https://issues.apache.org/jira/browse/HADOOP-10191) | *Blocker* | **Missing executable permission on viewfs internal dirs**
---

* [HADOOP-10184](https://issues.apache.org/jira/browse/HADOOP-10184) | *Major* | **Hadoop Common changes required to support HDFS ACLs.**
---

* [HADOOP-10139](https://issues.apache.org/jira/browse/HADOOP-10139) | *Major* | **Update and improve the Single Cluster Setup document**
---

* [HADOOP-10085](https://issues.apache.org/jira/browse/HADOOP-10085) | *Blocker* | **CompositeService should allow adding services while being inited**
---

* [HADOOP-10070](https://issues.apache.org/jira/browse/HADOOP-10070) | *Major* | **RPC client doesn't use per-connection conf to determine server's expected Kerberos principal name**
---

* [HADOOP-10015](https://issues.apache.org/jira/browse/HADOOP-10015) | *Minor* | **UserGroupInformation prints out excessive ERROR warnings**
---

* [HADOOP-9525](https://issues.apache.org/jira/browse/HADOOP-9525) | *Major* | **Add tests that validate winutils chmod behavior on folders**
---

* [HADOOP-9454](https://issues.apache.org/jira/browse/HADOOP-9454) | *Major* | **Support multipart uploads for s3native**
---

* [HADOOP-8691](https://issues.apache.org/jira/browse/HADOOP-8691) | *Minor* | **FsShell can print "Found xxx items" unnecessarily often**

The `ls` command only prints "Found foo items" once when listing the directories recursively.

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
---

* [MAPREDUCE-5813](https://issues.apache.org/jira/browse/MAPREDUCE-5813) | *Blocker* | **YarnChild does not load job.xml with mapreduce.job.classloader=true**
---

* [MAPREDUCE-5810](https://issues.apache.org/jira/browse/MAPREDUCE-5810) | *Major* | **TestStreamingTaskLog#testStreamingTaskLogWithHadoopCmd is failing**
---

* [MAPREDUCE-5806](https://issues.apache.org/jira/browse/MAPREDUCE-5806) | *Major* | **Log4j settings in container-log4j.properties cannot be overridden**
---

* [MAPREDUCE-5805](https://issues.apache.org/jira/browse/MAPREDUCE-5805) | *Major* | **Unable to parse launch time from job history file**
---

* [MAPREDUCE-5795](https://issues.apache.org/jira/browse/MAPREDUCE-5795) | *Major* | **Job should be marked as Failed if it is recovered from commit.**
---

* [MAPREDUCE-5794](https://issues.apache.org/jira/browse/MAPREDUCE-5794) | *Minor* | **SliveMapper always uses default FileSystem.**
---

* [MAPREDUCE-5791](https://issues.apache.org/jira/browse/MAPREDUCE-5791) | *Major* | **Shuffle phase is slow in Windows - FadviseFileRegion::transferTo does not read disks efficiently**
---

* [MAPREDUCE-5789](https://issues.apache.org/jira/browse/MAPREDUCE-5789) | *Major* | **Average Reduce time is incorrect on Job Overview page**
---

* [MAPREDUCE-5787](https://issues.apache.org/jira/browse/MAPREDUCE-5787) | *Critical* | **Modify ShuffleHandler to support Keep-Alive**
---

* [MAPREDUCE-5780](https://issues.apache.org/jira/browse/MAPREDUCE-5780) | *Minor* | **SliveTest always uses default FileSystem**
---

* [MAPREDUCE-5778](https://issues.apache.org/jira/browse/MAPREDUCE-5778) | *Major* | **JobSummary does not escape newlines in the job name**
---

* [MAPREDUCE-5773](https://issues.apache.org/jira/browse/MAPREDUCE-5773) | *Blocker* | **Provide dedicated MRAppMaster syslog length limit**
---

* [MAPREDUCE-5770](https://issues.apache.org/jira/browse/MAPREDUCE-5770) | *Major* | **Redirection from AM-URL is broken with HTTPS\_ONLY policy**
---

* [MAPREDUCE-5769](https://issues.apache.org/jira/browse/MAPREDUCE-5769) | *Major* | **Unregistration to RM should not be called if AM is crashed before registering with RM**
---

* [MAPREDUCE-5768](https://issues.apache.org/jira/browse/MAPREDUCE-5768) | *Major* | **TestMRJobs.testContainerRollingLog fails on trunk**
---

* [MAPREDUCE-5766](https://issues.apache.org/jira/browse/MAPREDUCE-5766) | *Minor* | **Ping messages from attempts should be moved to DEBUG**
---

* [MAPREDUCE-5761](https://issues.apache.org/jira/browse/MAPREDUCE-5761) | *Trivial* | **Add a log message like "encrypted shuffle is ON" in nodemanager logs**
---

* [MAPREDUCE-5757](https://issues.apache.org/jira/browse/MAPREDUCE-5757) | *Major* | **ConcurrentModificationException in JobControl.toList**
---

* [MAPREDUCE-5754](https://issues.apache.org/jira/browse/MAPREDUCE-5754) | *Major* | **Preserve Job diagnostics in history**
---

* [MAPREDUCE-5751](https://issues.apache.org/jira/browse/MAPREDUCE-5751) | *Major* | **MR app master fails to start in some cases if mapreduce.job.classloader is true**
---

* [MAPREDUCE-5746](https://issues.apache.org/jira/browse/MAPREDUCE-5746) | *Major* | **Job diagnostics can implicate wrong task for a failed job**
---

* [MAPREDUCE-5732](https://issues.apache.org/jira/browse/MAPREDUCE-5732) | *Major* | **Report proper queue when job has been automatically placed**
---

* [MAPREDUCE-5699](https://issues.apache.org/jira/browse/MAPREDUCE-5699) | *Major* | **Allow setting tags on MR jobs**
---

* [MAPREDUCE-5688](https://issues.apache.org/jira/browse/MAPREDUCE-5688) | *Major* | **TestStagingCleanup fails intermittently with JDK7**
---

* [MAPREDUCE-5670](https://issues.apache.org/jira/browse/MAPREDUCE-5670) | *Minor* | **CombineFileRecordReader should report progress when moving to the next file**
---

* [MAPREDUCE-5570](https://issues.apache.org/jira/browse/MAPREDUCE-5570) | *Major* | **Map task attempt with fetch failure has incorrect attempt finish time**
---

* [MAPREDUCE-5553](https://issues.apache.org/jira/browse/MAPREDUCE-5553) | *Minor* | **Add task state filters on Application/MRJob page for MR Application master**
---

* [MAPREDUCE-5028](https://issues.apache.org/jira/browse/MAPREDUCE-5028) | *Critical* | **Maps fail when io.sort.mb is set to high value**
---

* [MAPREDUCE-4052](https://issues.apache.org/jira/browse/MAPREDUCE-4052) | *Major* | **Windows eclipse cannot submit job from Windows client to Linux/Unix Hadoop cluster.**
---

* [MAPREDUCE-2349](https://issues.apache.org/jira/browse/MAPREDUCE-2349) | *Major* | **speed up list[located]status calls from input formats**
---

* [YARN-1893](https://issues.apache.org/jira/browse/YARN-1893) | *Blocker* | **Make ApplicationMasterProtocol#allocate AtMostOnce**
---

* [YARN-1891](https://issues.apache.org/jira/browse/YARN-1891) | *Minor* | **Document NodeManager health-monitoring**
---

* [YARN-1873](https://issues.apache.org/jira/browse/YARN-1873) | *Major* | **TestDistributedShell#testDSShell fails when the test cases are out of order**
---

* [YARN-1867](https://issues.apache.org/jira/browse/YARN-1867) | *Blocker* | **NPE while fetching apps via the REST API**
---

* [YARN-1866](https://issues.apache.org/jira/browse/YARN-1866) | *Blocker* | **YARN RM fails to load state store with delegation token parsing error**
---

* [YARN-1863](https://issues.apache.org/jira/browse/YARN-1863) | *Blocker* | **TestRMFailover fails with 'AssertionError: null'**
---

* [YARN-1859](https://issues.apache.org/jira/browse/YARN-1859) | *Major* | **WebAppProxyServlet will throw ApplicationNotFoundException if the app is no longer cached in RM**
---

* [YARN-1855](https://issues.apache.org/jira/browse/YARN-1855) | *Critical* | **TestRMFailover#testRMWebAppRedirect fails in trunk**
---

* [YARN-1854](https://issues.apache.org/jira/browse/YARN-1854) | *Blocker* | **Race condition in TestRMHA#testStartAndTransitions**
---

* [YARN-1852](https://issues.apache.org/jira/browse/YARN-1852) | *Major* | **Application recovery throws InvalidStateTransitonException for FAILED and KILLED jobs**
---

* [YARN-1850](https://issues.apache.org/jira/browse/YARN-1850) | *Major* | **Make enabling timeline service configurable**
---

* [YARN-1849](https://issues.apache.org/jira/browse/YARN-1849) | *Blocker* | **NPE in ResourceTrackerService#registerNodeManager for UAM**
---

* [YARN-1846](https://issues.apache.org/jira/browse/YARN-1846) | *Major* | **TestRM#testNMTokenSentForNormalContainer assumes CapacityScheduler**
---

* [YARN-1839](https://issues.apache.org/jira/browse/YARN-1839) | *Critical* | **Capacity scheduler preempts an AM out. AM attempt 2 fails to launch task container with SecretManager$InvalidToken: No NMToken sent**
---

* [YARN-1838](https://issues.apache.org/jira/browse/YARN-1838) | *Major* | **Timeline service getEntities API should provide ability to get entities from given id**
---

* [YARN-1833](https://issues.apache.org/jira/browse/YARN-1833) | *Major* | **TestRMAdminService Fails in trunk and branch-2 : Assert Fails due to different count of UserGroups for currentUser()**
---

* [YARN-1830](https://issues.apache.org/jira/browse/YARN-1830) | *Major* | **TestRMRestart.testQueueMetricsOnRMRestart failure**
---

* [YARN-1824](https://issues.apache.org/jira/browse/YARN-1824) | *Major* | **Make Windows client work with Linux/Unix cluster**
---

* [YARN-1821](https://issues.apache.org/jira/browse/YARN-1821) | *Blocker* | **NPE on registerNodeManager if the request has containers for UnmanagedAMs**
---

* [YARN-1816](https://issues.apache.org/jira/browse/YARN-1816) | *Major* | **Succeeded application remains in accepted after RM restart**
---

* [YARN-1812](https://issues.apache.org/jira/browse/YARN-1812) | *Major* | **Job stays in PREP state for long time after RM Restarts**
---

* [YARN-1811](https://issues.apache.org/jira/browse/YARN-1811) | *Major* | **RM HA: AM link broken if the AM is on nodes other than RM**
---

* [YARN-1800](https://issues.apache.org/jira/browse/YARN-1800) | *Critical* | **YARN NodeManager with java.util.concurrent.RejectedExecutionException**
---

* [YARN-1793](https://issues.apache.org/jira/browse/YARN-1793) | *Critical* | **yarn application -kill doesn't kill UnmanagedAMs**
---

* [YARN-1789](https://issues.apache.org/jira/browse/YARN-1789) | *Minor* | **ApplicationSummary does not escape newlines in the app name**
---

* [YARN-1788](https://issues.apache.org/jira/browse/YARN-1788) | *Critical* | **AppsCompleted/AppsKilled metric is incorrect when MR job is killed with yarn application -kill**
---

* [YARN-1787](https://issues.apache.org/jira/browse/YARN-1787) | *Major* | **yarn applicationattempt/container print wrong usage information**
---

* [YARN-1785](https://issues.apache.org/jira/browse/YARN-1785) | *Major* | **FairScheduler treats app lookup failures as ERRORs**
---

* [YARN-1783](https://issues.apache.org/jira/browse/YARN-1783) | *Critical* | **yarn application does not make any progress even when no other application is running when RM is being restarted in the background**
---

* [YARN-1781](https://issues.apache.org/jira/browse/YARN-1781) | *Major* | **NM should allow users to specify max disk utilization for local disks**
---

* [YARN-1780](https://issues.apache.org/jira/browse/YARN-1780) | *Major* | **Improve logging in timeline service**
---

* [YARN-1776](https://issues.apache.org/jira/browse/YARN-1776) | *Major* | **renewDelegationToken should survive RM failover**
---

* [YARN-1775](https://issues.apache.org/jira/browse/YARN-1775) | *Major* | **Create SMAPBasedProcessTree to get PSS information**
---

* [YARN-1774](https://issues.apache.org/jira/browse/YARN-1774) | *Blocker* | **FS: Submitting to non-leaf queue throws NPE**
---

* [YARN-1771](https://issues.apache.org/jira/browse/YARN-1771) | *Critical* | **many getFileStatus calls made from node manager for localizing a public distributed cache resource**
---

* [YARN-1768](https://issues.apache.org/jira/browse/YARN-1768) | *Minor* | **yarn kill non-existent application is too verbose**
---

* [YARN-1766](https://issues.apache.org/jira/browse/YARN-1766) | *Major* | **When RM does the initiation, it should use loaded Configuration instead of bootstrap configuration.**
---

* [YARN-1765](https://issues.apache.org/jira/browse/YARN-1765) | *Major* | **Write test cases to verify that killApplication API works in RM HA**
---

* [YARN-1764](https://issues.apache.org/jira/browse/YARN-1764) | *Major* | **Handle RM fail overs after the submitApplication call.**
---

* [YARN-1761](https://issues.apache.org/jira/browse/YARN-1761) | *Major* | **RMAdminCLI should check whether HA is enabled before executes transitionToActive/transitionToStandby**
---

* [YARN-1760](https://issues.apache.org/jira/browse/YARN-1760) | *Trivial* | **TestRMAdminService assumes CapacityScheduler**
---

* [YARN-1758](https://issues.apache.org/jira/browse/YARN-1758) | *Blocker* | **MiniYARNCluster broken post YARN-1666**
---

* [YARN-1752](https://issues.apache.org/jira/browse/YARN-1752) | *Major* | **Unexpected Unregistered event at Attempt Launched state**
---

* [YARN-1749](https://issues.apache.org/jira/browse/YARN-1749) | *Major* | **Review AHS configs and sync them up with the timeline-service configs**
---

* [YARN-1748](https://issues.apache.org/jira/browse/YARN-1748) | *Blocker* | **hadoop-yarn-server-tests packages core-site.xml breaking downstream tests**
---

* [YARN-1742](https://issues.apache.org/jira/browse/YARN-1742) | *Trivial* | **Fix javadoc of parameter DEFAULT\_NM\_MIN\_HEALTHY\_DISKS\_FRACTION**
---

* [YARN-1734](https://issues.apache.org/jira/browse/YARN-1734) | *Critical* | **RM should get the updated Configurations when it transits from Standby to Active**
---

* [YARN-1732](https://issues.apache.org/jira/browse/YARN-1732) | *Major* | **Change types of related entities and primary filters in ATSEntity**
---

* [YARN-1730](https://issues.apache.org/jira/browse/YARN-1730) | *Major* | **Leveldb timeline store needs simple write locking**
---

* [YARN-1729](https://issues.apache.org/jira/browse/YARN-1729) | *Major* | **TimelineWebServices always passes primary and secondary filters as strings**
---

* [YARN-1724](https://issues.apache.org/jira/browse/YARN-1724) | *Critical* | **Race condition in Fair Scheduler when continuous scheduling is turned on**
---

* [YARN-1721](https://issues.apache.org/jira/browse/YARN-1721) | *Critical* | **When moving app between queues in Fair Scheduler, grab lock on FSSchedulerApp**
---

* [YARN-1719](https://issues.apache.org/jira/browse/YARN-1719) | *Major* | **ATSWebServices produces jersey warnings**
---

* [YARN-1717](https://issues.apache.org/jira/browse/YARN-1717) | *Major* | **Enable offline deletion of entries in leveldb timeline store**
---

* [YARN-1706](https://issues.apache.org/jira/browse/YARN-1706) | *Major* | **Create an utility function to dump timeline records to json**
---

* [YARN-1704](https://issues.apache.org/jira/browse/YARN-1704) | *Blocker* | **Review LICENSE and NOTICE to reflect new levelDB releated libraries being used**
---

* [YARN-1698](https://issues.apache.org/jira/browse/YARN-1698) | *Major* | **Replace MemoryApplicationTimelineStore with LeveldbApplicationTimelineStore as default**
---

* [YARN-1697](https://issues.apache.org/jira/browse/YARN-1697) | *Major* | **NodeManager reports negative running containers**
---

* [YARN-1692](https://issues.apache.org/jira/browse/YARN-1692) | *Major* | **ConcurrentModificationException in fair scheduler AppSchedulable**
---

* [YARN-1690](https://issues.apache.org/jira/browse/YARN-1690) | *Major* | **Sending timeline entities+events from Distributed shell**
---

* [YARN-1689](https://issues.apache.org/jira/browse/YARN-1689) | *Critical* | **RMAppAttempt is not killed when RMApp is at ACCEPTED**
---

* [YARN-1687](https://issues.apache.org/jira/browse/YARN-1687) | *Major* | **Refactoring timeline classes to remove "app" related words**
---

* [YARN-1686](https://issues.apache.org/jira/browse/YARN-1686) | *Major* | **NodeManager.resyncWithRM() does not handle exception which cause NodeManger to Hang.**
---

* [YARN-1685](https://issues.apache.org/jira/browse/YARN-1685) | *Major* | **Bugs around log URL**
---

* [YARN-1684](https://issues.apache.org/jira/browse/YARN-1684) | *Major* | **Fix history server heap size in yarn script**
---

* [YARN-1676](https://issues.apache.org/jira/browse/YARN-1676) | *Major* | **Make admin refreshUserToGroupsMappings of configuration work across RM failover**
---

* [YARN-1673](https://issues.apache.org/jira/browse/YARN-1673) | *Blocker* | **Valid yarn kill application prints out help message.**
---

* [YARN-1672](https://issues.apache.org/jira/browse/YARN-1672) | *Trivial* | **YarnConfiguration is missing a default for yarn.nodemanager.log.retain-seconds**
---

* [YARN-1670](https://issues.apache.org/jira/browse/YARN-1670) | *Critical* | **aggregated log writer can write more log data then it says is the log length**
---

* [YARN-1669](https://issues.apache.org/jira/browse/YARN-1669) | *Major* | **Make admin refreshServiceAcls work across RM failover**
---

* [YARN-1668](https://issues.apache.org/jira/browse/YARN-1668) | *Major* | **Make admin refreshAdminAcls work across RM failover**
---

* [YARN-1667](https://issues.apache.org/jira/browse/YARN-1667) | *Major* | **Make admin refreshSuperUserGroupsConfiguration work across RM failover**
---

* [YARN-1666](https://issues.apache.org/jira/browse/YARN-1666) | *Major* | **Make admin refreshNodes work across RM failover**
---

* [YARN-1665](https://issues.apache.org/jira/browse/YARN-1665) | *Major* | **Set better defaults for HA configs for automatic failover**
---

* [YARN-1661](https://issues.apache.org/jira/browse/YARN-1661) | *Major* | **AppMaster logs says failing even if an application does succeed.**
---

* [YARN-1660](https://issues.apache.org/jira/browse/YARN-1660) | *Major* | **add the ability to set yarn.resourcemanager.hostname.rm-id instead of setting all the various host:port properties for RM**
---

* [YARN-1659](https://issues.apache.org/jira/browse/YARN-1659) | *Major* | **Define the ApplicationTimelineStore store as an abstraction for implementing different storage impls for storing timeline information**
---

* [YARN-1658](https://issues.apache.org/jira/browse/YARN-1658) | *Major* | **Webservice should redirect to active RM when HA is enabled.**
---

* [YARN-1641](https://issues.apache.org/jira/browse/YARN-1641) | *Major* | **ZK store should attempt a write periodically to ensure it is still Active**
---

* [YARN-1640](https://issues.apache.org/jira/browse/YARN-1640) | *Blocker* | **Manual Failover does not work in secure clusters**
---

* [YARN-1639](https://issues.apache.org/jira/browse/YARN-1639) | *Major* | **YARM RM HA requires different configs on different RM hosts**
---

* [YARN-1637](https://issues.apache.org/jira/browse/YARN-1637) | *Major* | **Implement a client library for java users to post entities+events**
---

* [YARN-1636](https://issues.apache.org/jira/browse/YARN-1636) | *Major* | **Implement timeline related web-services inside AHS for storing and retrieving entities+events**
---

* [YARN-1635](https://issues.apache.org/jira/browse/YARN-1635) | *Major* | **Implement a Leveldb based ApplicationTimelineStore**
---

* [YARN-1634](https://issues.apache.org/jira/browse/YARN-1634) | *Major* | **Define an in-memory implementation of ApplicationTimelineStore**
---

* [YARN-1633](https://issues.apache.org/jira/browse/YARN-1633) | *Major* | **Define user-faced entity, entity-info and event objects**
---

* [YARN-1632](https://issues.apache.org/jira/browse/YARN-1632) | *Minor* | **TestApplicationMasterServices should be under org.apache.hadoop.yarn.server.resourcemanager package**
---

* [YARN-1625](https://issues.apache.org/jira/browse/YARN-1625) | *Trivial* | **mvn apache-rat:check outputs warning message in YARN-321 branch**
---

* [YARN-1617](https://issues.apache.org/jira/browse/YARN-1617) | *Major* | **Remove ancient comment and surround LOG.debug in AppSchedulingInfo.allocate**
---

* [YARN-1613](https://issues.apache.org/jira/browse/YARN-1613) | *Major* | **Fix config name YARN\_HISTORY\_SERVICE\_ENABLED**
---

* [YARN-1611](https://issues.apache.org/jira/browse/YARN-1611) | *Major* | **Make admin refresh of capacity scheduler configuration work across RM failover**
---

* [YARN-1605](https://issues.apache.org/jira/browse/YARN-1605) | *Major* | **Fix formatting issues with new module in YARN-321 branch**
---

* [YARN-1597](https://issues.apache.org/jira/browse/YARN-1597) | *Major* | **FindBugs warnings on YARN-321 branch**
---

* [YARN-1596](https://issues.apache.org/jira/browse/YARN-1596) | *Major* | **Javadoc failures on YARN-321 branch**
---

* [YARN-1595](https://issues.apache.org/jira/browse/YARN-1595) | *Major* | **Test failures on YARN-321 branch**
---

* [YARN-1594](https://issues.apache.org/jira/browse/YARN-1594) | *Major* | **YARN-321 branch needs to be updated after YARN-888 pom changes**
---

* [YARN-1591](https://issues.apache.org/jira/browse/YARN-1591) | *Major* | **TestResourceTrackerService fails randomly on trunk**
---

* [YARN-1590](https://issues.apache.org/jira/browse/YARN-1590) | *Major* | **\_HOST doesn't expand properly for RM, NM, ProxyServer and JHS**
---

* [YARN-1588](https://issues.apache.org/jira/browse/YARN-1588) | *Major* | **Rebind NM tokens for previous attempt's running containers to the new attempt**
---

* [YARN-1587](https://issues.apache.org/jira/browse/YARN-1587) | *Major* | **[YARN-321] Merge Patch for YARN-321**
---

* [YARN-1578](https://issues.apache.org/jira/browse/YARN-1578) | *Major* | **Fix how to read history file in FileSystemApplicationHistoryStore**
---

* [YARN-1577](https://issues.apache.org/jira/browse/YARN-1577) | *Blocker* | **Unmanaged AM is broken because of YARN-1493**
---

* [YARN-1570](https://issues.apache.org/jira/browse/YARN-1570) | *Minor* | **Formatting the lines within 80 chars in YarnCommands.apt.vm**
---

* [YARN-1566](https://issues.apache.org/jira/browse/YARN-1566) | *Major* | **Change distributed-shell to retain containers from previous AppAttempt**
---

* [YARN-1555](https://issues.apache.org/jira/browse/YARN-1555) | *Major* | **[YARN-321] Failing tests in org.apache.hadoop.yarn.server.applicationhistoryservice.***
---

* [YARN-1553](https://issues.apache.org/jira/browse/YARN-1553) | *Major* | **Do not use HttpConfig.isSecure() in YARN**
---

* [YARN-1536](https://issues.apache.org/jira/browse/YARN-1536) | *Minor* | **Cleanup: Get rid of ResourceManager#get*SecretManager() methods and use the RMContext methods instead**
---

* [YARN-1534](https://issues.apache.org/jira/browse/YARN-1534) | *Major* | **TestAHSWebApp failed in YARN-321 branch**
---

* [YARN-1531](https://issues.apache.org/jira/browse/YARN-1531) | *Major* | **True up yarn command documentation**
---

* [YARN-1528](https://issues.apache.org/jira/browse/YARN-1528) | *Blocker* | **Allow setting auth for ZK connections**
---

* [YARN-1525](https://issues.apache.org/jira/browse/YARN-1525) | *Major* | **Web UI should redirect to active RM when HA is enabled.**
---

* [YARN-1521](https://issues.apache.org/jira/browse/YARN-1521) | *Blocker* | **Mark appropriate protocol methods with the idempotent annotation or AtMostOnce annotation**
---

* [YARN-1512](https://issues.apache.org/jira/browse/YARN-1512) | *Major* | **Enhance CS to decouple scheduling from node heartbeats**
---

* [YARN-1504](https://issues.apache.org/jira/browse/YARN-1504) | *Major* | **RM changes for moving apps between queues**
---

* [YARN-1499](https://issues.apache.org/jira/browse/YARN-1499) | *Major* | **Fair Scheduler changes for moving apps between queues**
---

* [YARN-1498](https://issues.apache.org/jira/browse/YARN-1498) | *Major* | **Common scheduler changes for moving apps between queues**
---

* [YARN-1497](https://issues.apache.org/jira/browse/YARN-1497) | *Major* | **Expose moving apps between queues on the command line**
---

* [YARN-1496](https://issues.apache.org/jira/browse/YARN-1496) | *Major* | **Protocol additions to allow moving apps between queues**
---

* [YARN-1493](https://issues.apache.org/jira/browse/YARN-1493) | *Major* | **Schedulers don't recognize apps separately from app-attempts**
---

* [YARN-1490](https://issues.apache.org/jira/browse/YARN-1490) | *Major* | **RM should optionally not kill all containers when an ApplicationMaster exits**
---

* [YARN-1470](https://issues.apache.org/jira/browse/YARN-1470) | *Major* | **Add audience annotation to MiniYARNCluster**
---

* [YARN-1461](https://issues.apache.org/jira/browse/YARN-1461) | *Major* | **RM API and RM changes to handle tags for running jobs**
---

* [YARN-1459](https://issues.apache.org/jira/browse/YARN-1459) | *Major* | **RM services should depend on ConfigurationProvider during startup too**
---

* [YARN-1452](https://issues.apache.org/jira/browse/YARN-1452) | *Major* | **Document the usage of the generic application history and the timeline data service**
---

* [YARN-1444](https://issues.apache.org/jira/browse/YARN-1444) | *Blocker* | **RM crashes when node resource request sent without corresponding off-switch request**
---

* [YARN-1428](https://issues.apache.org/jira/browse/YARN-1428) | *Major* | **RM cannot write the final state of RMApp/RMAppAttempt to the application history store in the transition to the final state**
---

* [YARN-1417](https://issues.apache.org/jira/browse/YARN-1417) | *Blocker* | **RM may issue expired container tokens to AM while issuing new containers.**
---

* [YARN-1410](https://issues.apache.org/jira/browse/YARN-1410) | *Major* | **Handle RM fails over after getApplicationID() and before submitApplication().**
---

* [YARN-1398](https://issues.apache.org/jira/browse/YARN-1398) | *Blocker* | **Deadlock in capacity scheduler leaf queue and parent queue for getQueueInfo and completedContainer call**
---

* [YARN-1389](https://issues.apache.org/jira/browse/YARN-1389) | *Major* | **ApplicationClientProtocol and ApplicationHistoryProtocol should expose analogous APIs**
---

* [YARN-1379](https://issues.apache.org/jira/browse/YARN-1379) | *Major* | **[YARN-321] AHS protocols need to be in yarn proto package name after YARN-1170**
---

* [YARN-1345](https://issues.apache.org/jira/browse/YARN-1345) | *Major* | **Removing FINAL\_SAVING from YarnApplicationAttemptState**
---

* [YARN-1301](https://issues.apache.org/jira/browse/YARN-1301) | *Minor* | **Need to log the blacklist additions/removals when YarnSchedule#allocate**
---

* [YARN-1285](https://issues.apache.org/jira/browse/YARN-1285) | *Major* | **Inconsistency of default "yarn.acl.enable" value**
---

* [YARN-1266](https://issues.apache.org/jira/browse/YARN-1266) | *Major* | **Implement PB service and client wrappers for ApplicationHistoryProtocol**
---

* [YARN-1242](https://issues.apache.org/jira/browse/YARN-1242) | *Major* | **Script changes to start AHS as an individual process**
---

* [YARN-1206](https://issues.apache.org/jira/browse/YARN-1206) | *Blocker* | **AM container log link broken on NM web page**
---

* [YARN-1191](https://issues.apache.org/jira/browse/YARN-1191) | *Major* | **[YARN-321] Update artifact versions for application history service**
---

* [YARN-1171](https://issues.apache.org/jira/browse/YARN-1171) | *Major* | **Add default queue properties to Fair Scheduler documentation**
---

* [YARN-1166](https://issues.apache.org/jira/browse/YARN-1166) | *Blocker* | **YARN 'appsFailed' metric should be of type 'counter'**
---

* [YARN-1123](https://issues.apache.org/jira/browse/YARN-1123) | *Major* | **[YARN-321] Adding ContainerReport and Protobuf implementation**
---

* [YARN-1071](https://issues.apache.org/jira/browse/YARN-1071) | *Major* | **ResourceManager's decommissioned and lost node count is 0 after restart**
---

* [YARN-1041](https://issues.apache.org/jira/browse/YARN-1041) | *Major* | **Protocol changes for RM to bind and notify a restarted AM of existing containers**
---

* [YARN-1023](https://issues.apache.org/jira/browse/YARN-1023) | *Major* | **[YARN-321] Webservices REST API's support for Application History**
---

* [YARN-1017](https://issues.apache.org/jira/browse/YARN-1017) | *Blocker* | **Document RM Restart feature**
---

* [YARN-1007](https://issues.apache.org/jira/browse/YARN-1007) | *Major* | **[YARN-321] Enhance History Reader interface for Containers**
---

* [YARN-987](https://issues.apache.org/jira/browse/YARN-987) | *Major* | **Adding ApplicationHistoryManager responsible for exposing reports to all clients**
---

* [YARN-986](https://issues.apache.org/jira/browse/YARN-986) | *Blocker* | **RM DT token service should have service addresses of both RMs**
---

* [YARN-984](https://issues.apache.org/jira/browse/YARN-984) | *Major* | **[YARN-321] Move classes from applicationhistoryservice.records.pb.impl package to applicationhistoryservice.records.impl.pb**
---

* [YARN-979](https://issues.apache.org/jira/browse/YARN-979) | *Major* | **[YARN-321] Add more APIs related to ApplicationAttempt and Container in ApplicationHistoryProtocol**
---

* [YARN-978](https://issues.apache.org/jira/browse/YARN-978) | *Major* | **[YARN-321] Adding ApplicationAttemptReport and Protobuf implementation**
---

* [YARN-975](https://issues.apache.org/jira/browse/YARN-975) | *Major* | **Add a file-system implementation for history-storage**
---

* [YARN-974](https://issues.apache.org/jira/browse/YARN-974) | *Major* | **RMContainer should collect more useful information to be recorded in Application-History**
---

* [YARN-967](https://issues.apache.org/jira/browse/YARN-967) | *Major* | **[YARN-321] Command Line Interface(CLI) for Reading Application History Storage Data**
---

* [YARN-962](https://issues.apache.org/jira/browse/YARN-962) | *Major* | **Update application\_history\_service.proto**
---

* [YARN-956](https://issues.apache.org/jira/browse/YARN-956) | *Major* | **[YARN-321] Add a testable in-memory HistoryStorage**
---

* [YARN-955](https://issues.apache.org/jira/browse/YARN-955) | *Major* | **[YARN-321] Implementation of ApplicationHistoryProtocol**
---

* [YARN-954](https://issues.apache.org/jira/browse/YARN-954) | *Major* | **[YARN-321] History Service should create the webUI and wire it to HistoryStorage**
---

* [YARN-953](https://issues.apache.org/jira/browse/YARN-953) | *Major* | **[YARN-321] Enable ResourceManager to write history data**
---

* [YARN-947](https://issues.apache.org/jira/browse/YARN-947) | *Major* | **Defining the history data classes for the implementation of the reading/writing interface**
---

* [YARN-935](https://issues.apache.org/jira/browse/YARN-935) | *Major* | **YARN-321 branch is broken due to applicationhistoryserver module's pom.xml**
---

* [YARN-934](https://issues.apache.org/jira/browse/YARN-934) | *Major* | **HistoryStorage writer interface for Application History Server**
---

* [YARN-930](https://issues.apache.org/jira/browse/YARN-930) | *Major* | **Bootstrap ApplicationHistoryService module**
---

* [YARN-925](https://issues.apache.org/jira/browse/YARN-925) | *Major* | **HistoryStorage Reader Interface for Application History Server**
---

* [YARN-713](https://issues.apache.org/jira/browse/YARN-713) | *Critical* | **ResourceManager can exit unexpectedly if DNS is unavailable**


