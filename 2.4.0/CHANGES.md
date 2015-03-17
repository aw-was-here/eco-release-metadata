# Hadoop Changelog

## Release 2.4.0 - 2015-03-17

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8691](https://issues.apache.org/jira/browse/HADOOP-8691) | FsShell can print "Found xxx items" unnecessarily often |  Minor | fs | Jason Lowe | Daryn Sharp |
| [HDFS-6102](https://issues.apache.org/jira/browse/HDFS-6102) | Lower the default maximum items per directory to fix PB fsimage loading |  Blocker | namenode | Andrew Wang | Andrew Wang |
| [HDFS-6055](https://issues.apache.org/jira/browse/HDFS-6055) | Change default configuration to limit file name length in HDFS |  Major | namenode | Suresh Srinivas | Chris Nauroth |
| [HDFS-5804](https://issues.apache.org/jira/browse/HDFS-5804) | HDFS NFS Gateway fails to mount and proxy when using Kerberos |  Major | nfs | Abin Shahab | Abin Shahab |
| [HDFS-5321](https://issues.apache.org/jira/browse/HDFS-5321) | Clean up the HTTP-related configuration in HDFS |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5138](https://issues.apache.org/jira/browse/HDFS-5138) | Support HDFS upgrade in HA |  Blocker | . | Kihwal Lee | Aaron T. Myers |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10184](https://issues.apache.org/jira/browse/HADOOP-10184) | Hadoop Common changes required to support HDFS ACLs. |  Major | fs, security | Chris Nauroth | Chris Nauroth |
| [HDFS-5535](https://issues.apache.org/jira/browse/HDFS-5535) | Umbrella jira for improved HDFS rolling upgrades |  Major | datanode, ha, hdfs-client, namenode | Nathan Roberts | Tsz Wo Nicholas Sze |
| [HDFS-4685](https://issues.apache.org/jira/browse/HDFS-4685) | Implementation of ACLs in HDFS |  Major | hdfs-client, namenode, security | Sachin Jose | Chris Nauroth |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10423](https://issues.apache.org/jira/browse/HADOOP-10423) | Clarify compatibility policy document for combination of new client and old server. |  Minor | documentation | Chris Nauroth | Chris Nauroth |
| [HADOOP-10386](https://issues.apache.org/jira/browse/HADOOP-10386) | Log proxy hostname in various exceptions being thrown in a HA setup |  Minor | ha | Arpit Gupta | Haohui Mai |
| [HADOOP-10383](https://issues.apache.org/jira/browse/HADOOP-10383) | InterfaceStability annotations should have RetentionPolicy.RUNTIME |  Major | . | Enis Soztutar | Enis Soztutar |
| [HADOOP-10379](https://issues.apache.org/jira/browse/HADOOP-10379) | Protect authentication cookies with the HttpOnly and Secure flags |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10374](https://issues.apache.org/jira/browse/HADOOP-10374) | InterfaceAudience annotations should have RetentionPolicy.RUNTIME |  Major | . | Enis Soztutar | Enis Soztutar |
| [HADOOP-10348](https://issues.apache.org/jira/browse/HADOOP-10348) | Deprecate hadoop.ssl.configuration in branch-2, and remove it in trunk |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10343](https://issues.apache.org/jira/browse/HADOOP-10343) | Change info to debug log in LossyRetryInvocationHandler |  Minor | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-10333](https://issues.apache.org/jira/browse/HADOOP-10333) | Fix grammatical error in overview.html document |  Trivial | . | René Nyffenegger | René Nyffenegger |
| [HADOOP-10295](https://issues.apache.org/jira/browse/HADOOP-10295) | Allow distcp to automatically identify the checksum type of source files and use it for the target |  Major | tools/distcp | Jing Zhao | Jing Zhao |
| [HADOOP-10221](https://issues.apache.org/jira/browse/HADOOP-10221) | Add a plugin to specify SaslProperties for RPC protocol based on connection properties |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10211](https://issues.apache.org/jira/browse/HADOOP-10211) | Enable RPC protocol to negotiate SASL-QOP values between clients and servers |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10139](https://issues.apache.org/jira/browse/HADOOP-10139) | Update and improve the Single Cluster Setup document |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-9454](https://issues.apache.org/jira/browse/HADOOP-9454) | Support multipart uploads for s3native |  Major | fs/s3 | Jordan Mendelson | Akira AJISAKA |
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
| [MAPREDUCE-5773](https://issues.apache.org/jira/browse/MAPREDUCE-5773) | Provide dedicated MRAppMaster syslog length limit |  Blocker | mr-am | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5761](https://issues.apache.org/jira/browse/MAPREDUCE-5761) | Add a log message like "encrypted shuffle is ON" in nodemanager logs |  Trivial | . | Yesha Vora | Jian He |
| [MAPREDUCE-5754](https://issues.apache.org/jira/browse/MAPREDUCE-5754) | Preserve Job diagnostics in history |  Major | jobhistoryserver, mr-am | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5732](https://issues.apache.org/jira/browse/MAPREDUCE-5732) | Report proper queue when job has been automatically placed |  Major | . | Sandy Ryza | Sandy Ryza |
| [MAPREDUCE-5553](https://issues.apache.org/jira/browse/MAPREDUCE-5553) | Add task state filters on Application/MRJob page for MR Application master |  Minor | applicationmaster | Paul Han | Paul Han |
| [MAPREDUCE-2349](https://issues.apache.org/jira/browse/MAPREDUCE-2349) | speed up list[located]status calls from input formats |  Major | task | Joydeep Sen Sarma | Siddharth Seth |
| [YARN-1789](https://issues.apache.org/jira/browse/YARN-1789) | ApplicationSummary does not escape newlines in the app name |  Minor | resourcemanager | Akira AJISAKA | Tsuyoshi Ozawa |
| [YARN-1771](https://issues.apache.org/jira/browse/YARN-1771) | many getFileStatus calls made from node manager for localizing a public distributed cache resource |  Critical | nodemanager | Sangjin Lee | Sangjin Lee |
| [YARN-1570](https://issues.apache.org/jira/browse/YARN-1570) | Formatting the lines within 80 chars in YarnCommands.apt.vm |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1536](https://issues.apache.org/jira/browse/YARN-1536) | Cleanup: Get rid of ResourceManager#get*SecretManager() methods and use the RMContext methods instead |  Minor | resourcemanager | Karthik Kambatla | Anubhav Dhoot |
| [YARN-1512](https://issues.apache.org/jira/browse/YARN-1512) | Enhance CS to decouple scheduling from node heartbeats |  Major | . | Arun C Murthy | Arun C Murthy |
| [YARN-1171](https://issues.apache.org/jira/browse/YARN-1171) | Add default queue properties to Fair Scheduler documentation |  Major | documentation, scheduler | Sandy Ryza | Naren Koneru |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10450](https://issues.apache.org/jira/browse/HADOOP-10450) | Build zlib native code bindings in hadoop.dll for Windows. |  Major | io, native | Chris Nauroth | Chris Nauroth |
| [HADOOP-10442](https://issues.apache.org/jira/browse/HADOOP-10442) | Group look-up can cause segmentation fault when certain JNI-based mapping module is used. |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-10441](https://issues.apache.org/jira/browse/HADOOP-10441) | Namenode metric "rpc.RetryCache/NameNodeRetryCache.CacheHit" can't be correctly processed by Ganglia |  Blocker | metrics | Jing Zhao | Jing Zhao |
| [HADOOP-10440](https://issues.apache.org/jira/browse/HADOOP-10440) | HarFsInputStream of HarFileSystem, when reading data, computing the position has bug |  Major | fs | guodongdong | guodongdong |
| [HADOOP-10425](https://issues.apache.org/jira/browse/HADOOP-10425) | Incompatible behavior of LocalFileSystem:getContentSummary |  Critical | fs | Brandon Li | Tsz Wo Nicholas Sze |
| [HADOOP-10422](https://issues.apache.org/jira/browse/HADOOP-10422) | Remove redundant logging of RPC retry attempts. |  Minor | ipc | Chris Nauroth | Chris Nauroth |
| [HADOOP-10395](https://issues.apache.org/jira/browse/HADOOP-10395) | TestCallQueueManager is flaky |  Minor | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10394](https://issues.apache.org/jira/browse/HADOOP-10394) | TestAuthenticationFilter is flaky |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10368](https://issues.apache.org/jira/browse/HADOOP-10368) | InputStream is not closed in VersionInfo ctor |  Minor | util | Ted Yu | Tsuyoshi Ozawa |
| [HADOOP-10361](https://issues.apache.org/jira/browse/HADOOP-10361) | Correct alignment in CLI output for ACLs. |  Minor | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-10355](https://issues.apache.org/jira/browse/HADOOP-10355) | TestLoadGenerator#testLoadGenerator fails |  Major | . | Akira AJISAKA | Haohui Mai |
| [HADOOP-10354](https://issues.apache.org/jira/browse/HADOOP-10354) | TestWebHDFS fails after merge of HDFS-4685 to trunk |  Major | fs | Yongjun Zhang | Chris Nauroth |
| [HADOOP-10353](https://issues.apache.org/jira/browse/HADOOP-10353) | FsUrlStreamHandlerFactory is not thread safe |  Major | fs | Tudor Scurtu | Tudor Scurtu |
| [HADOOP-10352](https://issues.apache.org/jira/browse/HADOOP-10352) | Recursive setfacl erroneously attempts to apply default ACL to files. |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-10346](https://issues.apache.org/jira/browse/HADOOP-10346) | Deadlock while logging tokens |  Blocker | security | Jason Lowe | Jason Lowe |
| [HADOOP-10338](https://issues.apache.org/jira/browse/HADOOP-10338) | Cannot get the FileStatus of the root inode from the new Globber |  Major | . | Andrew Wang | Colin Patrick McCabe |
| [HADOOP-10337](https://issues.apache.org/jira/browse/HADOOP-10337) | ConcurrentModificationException from MetricsDynamicMBeanBase.createMBeanInfo() |  Major | metrics | Liang Xie | Liang Xie |
| [HADOOP-10330](https://issues.apache.org/jira/browse/HADOOP-10330) | TestFrameDecoder fails if it cannot bind port 12345 |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10328](https://issues.apache.org/jira/browse/HADOOP-10328) | loadGenerator exit code is not reliable |  Major | tools | Arpit Gupta | Haohui Mai |
| [HADOOP-10327](https://issues.apache.org/jira/browse/HADOOP-10327) | Trunk windows build broken after HDFS-5746 |  Blocker | native | Vinayakumar B | Vinayakumar B |
| [HADOOP-10326](https://issues.apache.org/jira/browse/HADOOP-10326) | M/R jobs can not access S3 if Kerberos is enabled |  Major | security | Manuel DE FERRAN | bc Wong |
| [HADOOP-10320](https://issues.apache.org/jira/browse/HADOOP-10320) | Javadoc in InterfaceStability.java lacks final </ul> |  Trivial | documentation | René Nyffenegger | René Nyffenegger |
| [HADOOP-10314](https://issues.apache.org/jira/browse/HADOOP-10314) | The ls command help still shows outdated 0.16 format. |  Major | . | Kihwal Lee | Rushabh S Shah |
| [HADOOP-10301](https://issues.apache.org/jira/browse/HADOOP-10301) | AuthenticationFilter should return Forbidden for failed authentication |  Blocker | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-10249](https://issues.apache.org/jira/browse/HADOOP-10249) | LdapGroupsMapping should trim ldap password read from file |  Major | . | Dilli Arumugam | Dilli Arumugam |
| [HADOOP-10191](https://issues.apache.org/jira/browse/HADOOP-10191) | Missing executable permission on viewfs internal dirs |  Blocker | viewfs | Gera Shegalov | Gera Shegalov |
| [HADOOP-10085](https://issues.apache.org/jira/browse/HADOOP-10085) | CompositeService should allow adding services while being inited |  Blocker | . | Karthik Kambatla | Steve Loughran |
| [HADOOP-10070](https://issues.apache.org/jira/browse/HADOOP-10070) | RPC client doesn't use per-connection conf to determine server's expected Kerberos principal name |  Major | security | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-10015](https://issues.apache.org/jira/browse/HADOOP-10015) | UserGroupInformation prints out excessive ERROR warnings |  Minor | security | Haohui Mai | Nicolas Liochon |
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
| [MAPREDUCE-5813](https://issues.apache.org/jira/browse/MAPREDUCE-5813) | YarnChild does not load job.xml with mapreduce.job.classloader=true |  Blocker | mrv2, task | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5810](https://issues.apache.org/jira/browse/MAPREDUCE-5810) | TestStreamingTaskLog#testStreamingTaskLogWithHadoopCmd is failing |  Major | contrib/streaming | Mit Desai | Akira AJISAKA |
| [MAPREDUCE-5806](https://issues.apache.org/jira/browse/MAPREDUCE-5806) | Log4j settings in container-log4j.properties cannot be overridden |  Major | . | Eugene Koifman | Varun Vasudev |
| [MAPREDUCE-5805](https://issues.apache.org/jira/browse/MAPREDUCE-5805) | Unable to parse launch time from job history file |  Major | jobhistoryserver | Fengdong Yu | Akira AJISAKA |
| [MAPREDUCE-5795](https://issues.apache.org/jira/browse/MAPREDUCE-5795) | Job should be marked as Failed if it is recovered from commit. |  Major | . | Yesha Vora | Xuan Gong |
| [MAPREDUCE-5794](https://issues.apache.org/jira/browse/MAPREDUCE-5794) | SliveMapper always uses default FileSystem. |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-5791](https://issues.apache.org/jira/browse/MAPREDUCE-5791) | Shuffle phase is slow in Windows - FadviseFileRegion::transferTo does not read disks efficiently |  Major | client | Nikola Vujic | Nikola Vujic |
| [MAPREDUCE-5789](https://issues.apache.org/jira/browse/MAPREDUCE-5789) | Average Reduce time is incorrect on Job Overview page |  Major | jobhistoryserver, webapps | Rushabh S Shah | Rushabh S Shah |
| [MAPREDUCE-5780](https://issues.apache.org/jira/browse/MAPREDUCE-5780) | SliveTest always uses default FileSystem |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-5778](https://issues.apache.org/jira/browse/MAPREDUCE-5778) | JobSummary does not escape newlines in the job name |  Major | jobhistoryserver | Jason Lowe | Akira AJISAKA |
| [MAPREDUCE-5770](https://issues.apache.org/jira/browse/MAPREDUCE-5770) | Redirection from AM-URL is broken with HTTPS\_ONLY policy |  Major | . | Yesha Vora | Jian He |
| [MAPREDUCE-5769](https://issues.apache.org/jira/browse/MAPREDUCE-5769) | Unregistration to RM should not be called if AM is crashed before registering with RM |  Major | . | Rohith | Rohith |
| [MAPREDUCE-5768](https://issues.apache.org/jira/browse/MAPREDUCE-5768) | TestMRJobs.testContainerRollingLog fails on trunk |  Major | . | Zhijie Shen | Gera Shegalov |
| [MAPREDUCE-5766](https://issues.apache.org/jira/browse/MAPREDUCE-5766) | Ping messages from attempts should be moved to DEBUG |  Minor | applicationmaster | Ramya Sunil | Jian He |
| [MAPREDUCE-5757](https://issues.apache.org/jira/browse/MAPREDUCE-5757) | ConcurrentModificationException in JobControl.toList |  Major | client | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5751](https://issues.apache.org/jira/browse/MAPREDUCE-5751) | MR app master fails to start in some cases if mapreduce.job.classloader is true |  Major | . | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5746](https://issues.apache.org/jira/browse/MAPREDUCE-5746) | Job diagnostics can implicate wrong task for a failed job |  Major | jobhistoryserver | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5699](https://issues.apache.org/jira/browse/MAPREDUCE-5699) | Allow setting tags on MR jobs |  Major | applicationmaster | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-5688](https://issues.apache.org/jira/browse/MAPREDUCE-5688) | TestStagingCleanup fails intermittently with JDK7 |  Major | . | Mit Desai | Mit Desai |
| [MAPREDUCE-5670](https://issues.apache.org/jira/browse/MAPREDUCE-5670) | CombineFileRecordReader should report progress when moving to the next file |  Minor | mrv2 | Jason Lowe | Chen He |
| [MAPREDUCE-5570](https://issues.apache.org/jira/browse/MAPREDUCE-5570) | Map task attempt with fetch failure has incorrect attempt finish time |  Major | mr-am, mrv2 | Jason Lowe | Rushabh S Shah |
| [MAPREDUCE-5028](https://issues.apache.org/jira/browse/MAPREDUCE-5028) | Maps fail when io.sort.mb is set to high value |  Critical | . | Karthik Kambatla | Karthik Kambatla |
| [MAPREDUCE-4052](https://issues.apache.org/jira/browse/MAPREDUCE-4052) | Windows eclipse cannot submit job from Windows client to Linux/Unix Hadoop cluster. |  Major | job submission | xieguiming | Jian He |
| [YARN-1873](https://issues.apache.org/jira/browse/YARN-1873) | TestDistributedShell#testDSShell fails when the test cases are out of order |  Major | . | Mit Desai | Mit Desai |
| [YARN-1867](https://issues.apache.org/jira/browse/YARN-1867) | NPE while fetching apps via the REST API |  Blocker | resourcemanager | Karthik Kambatla | Vinod Kumar Vavilapalli |
| [YARN-1866](https://issues.apache.org/jira/browse/YARN-1866) | YARN RM fails to load state store with delegation token parsing error |  Blocker | . | Arpit Gupta | Jian He |
| [YARN-1859](https://issues.apache.org/jira/browse/YARN-1859) | WebAppProxyServlet will throw ApplicationNotFoundException if the app is no longer cached in RM |  Major | . | Zhijie Shen | Zhijie Shen |
| [YARN-1852](https://issues.apache.org/jira/browse/YARN-1852) | Application recovery throws InvalidStateTransitonException for FAILED and KILLED jobs |  Major | resourcemanager | Rohith | Rohith |
| [YARN-1849](https://issues.apache.org/jira/browse/YARN-1849) | NPE in ResourceTrackerService#registerNodeManager for UAM |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1846](https://issues.apache.org/jira/browse/YARN-1846) | TestRM#testNMTokenSentForNormalContainer assumes CapacityScheduler |  Major | . | Robert Kanter | Robert Kanter |
| [YARN-1839](https://issues.apache.org/jira/browse/YARN-1839) | Capacity scheduler preempts an AM out. AM attempt 2 fails to launch task container with SecretManager$InvalidToken: No NMToken sent |  Critical | applications, capacityscheduler | Tassapol Athiapinya | Jian He |
| [YARN-1833](https://issues.apache.org/jira/browse/YARN-1833) | TestRMAdminService Fails in trunk and branch-2 : Assert Fails due to different count of UserGroups for currentUser() |  Major | . | Mit Desai | Mit Desai |
| [YARN-1830](https://issues.apache.org/jira/browse/YARN-1830) | TestRMRestart.testQueueMetricsOnRMRestart failure |  Major | resourcemanager | Karthik Kambatla | Zhijie Shen |
| [YARN-1824](https://issues.apache.org/jira/browse/YARN-1824) | Make Windows client work with Linux/Unix cluster |  Major | . | Jian He | Jian He |
| [YARN-1793](https://issues.apache.org/jira/browse/YARN-1793) | yarn application -kill doesn't kill UnmanagedAMs |  Critical | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1788](https://issues.apache.org/jira/browse/YARN-1788) | AppsCompleted/AppsKilled metric is incorrect when MR job is killed with yarn application -kill |  Critical | resourcemanager | Tassapol Athiapinya | Varun Vasudev |
| [YARN-1785](https://issues.apache.org/jira/browse/YARN-1785) | FairScheduler treats app lookup failures as ERRORs |  Major | . | bc Wong | bc Wong |
| [YARN-1783](https://issues.apache.org/jira/browse/YARN-1783) | yarn application does not make any progress even when no other application is running when RM is being restarted in the background |  Critical | . | Arpit Gupta | Jian He |
| [YARN-1774](https://issues.apache.org/jira/browse/YARN-1774) | FS: Submitting to non-leaf queue throws NPE |  Blocker | resourcemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-1768](https://issues.apache.org/jira/browse/YARN-1768) | yarn kill non-existent application is too verbose |  Minor | client | Hitesh Shah | Tsuyoshi Ozawa |
| [YARN-1760](https://issues.apache.org/jira/browse/YARN-1760) | TestRMAdminService assumes CapacityScheduler |  Trivial | . | Karthik Kambatla | Karthik Kambatla |
| [YARN-1758](https://issues.apache.org/jira/browse/YARN-1758) | MiniYARNCluster broken post YARN-1666 |  Blocker | . | Hitesh Shah | Xuan Gong |
| [YARN-1752](https://issues.apache.org/jira/browse/YARN-1752) | Unexpected Unregistered event at Attempt Launched state |  Major | . | Jian He | Rohith |
| [YARN-1748](https://issues.apache.org/jira/browse/YARN-1748) | hadoop-yarn-server-tests packages core-site.xml breaking downstream tests |  Blocker | . | Sravya Tirukkovalur | Sravya Tirukkovalur |
| [YARN-1742](https://issues.apache.org/jira/browse/YARN-1742) | Fix javadoc of parameter DEFAULT\_NM\_MIN\_HEALTHY\_DISKS\_FRACTION |  Trivial | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1724](https://issues.apache.org/jira/browse/YARN-1724) | Race condition in Fair Scheduler when continuous scheduling is turned on |  Critical | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1721](https://issues.apache.org/jira/browse/YARN-1721) | When moving app between queues in Fair Scheduler, grab lock on FSSchedulerApp |  Critical | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1697](https://issues.apache.org/jira/browse/YARN-1697) | NodeManager reports negative running containers |  Major | nodemanager | Sandy Ryza | Sandy Ryza |
| [YARN-1692](https://issues.apache.org/jira/browse/YARN-1692) | ConcurrentModificationException in fair scheduler AppSchedulable |  Major | scheduler | Sangjin Lee | Sangjin Lee |
| [YARN-1689](https://issues.apache.org/jira/browse/YARN-1689) | RMAppAttempt is not killed when RMApp is at ACCEPTED |  Critical | resourcemanager | Deepesh Khandelwal | Vinod Kumar Vavilapalli |
| [YARN-1686](https://issues.apache.org/jira/browse/YARN-1686) | NodeManager.resyncWithRM() does not handle exception which cause NodeManger to Hang. |  Major | nodemanager | Rohith | Rohith |
| [YARN-1673](https://issues.apache.org/jira/browse/YARN-1673) | Valid yarn kill application prints out help message. |  Blocker | client | Tassapol Athiapinya | Mayank Bansal |
| [YARN-1672](https://issues.apache.org/jira/browse/YARN-1672) | YarnConfiguration is missing a default for yarn.nodemanager.log.retain-seconds |  Trivial | nodemanager | Karthik Kambatla | Naren Koneru |
| [YARN-1670](https://issues.apache.org/jira/browse/YARN-1670) | aggregated log writer can write more log data then it says is the log length |  Critical | . | Thomas Graves | Mit Desai |
| [YARN-1661](https://issues.apache.org/jira/browse/YARN-1661) | AppMaster logs says failing even if an application does succeed. |  Major | applications/distributed-shell | Tassapol Athiapinya | Vinod Kumar Vavilapalli |
| [YARN-1632](https://issues.apache.org/jira/browse/YARN-1632) | TestApplicationMasterServices should be under org.apache.hadoop.yarn.server.resourcemanager package |  Minor | . | Chen He | Chen He |
| [YARN-1617](https://issues.apache.org/jira/browse/YARN-1617) | Remove ancient comment and surround LOG.debug in AppSchedulingInfo.allocate |  Major | scheduler | Sandy Ryza | Sandy Ryza |
| [YARN-1591](https://issues.apache.org/jira/browse/YARN-1591) | TestResourceTrackerService fails randomly on trunk |  Major | . | Vinod Kumar Vavilapalli | Tsuyoshi Ozawa |
| [YARN-1590](https://issues.apache.org/jira/browse/YARN-1590) | \_HOST doesn't expand properly for RM, NM, ProxyServer and JHS |  Major | resourcemanager | Mohammad Kamrul Islam | Mohammad Kamrul Islam |
| [YARN-1553](https://issues.apache.org/jira/browse/YARN-1553) | Do not use HttpConfig.isSecure() in YARN |  Major | . | Haohui Mai | Haohui Mai |
| [YARN-1531](https://issues.apache.org/jira/browse/YARN-1531) | True up yarn command documentation |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [YARN-1528](https://issues.apache.org/jira/browse/YARN-1528) | Allow setting auth for ZK connections |  Blocker | resourcemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-1470](https://issues.apache.org/jira/browse/YARN-1470) | Add audience annotation to MiniYARNCluster |  Major | . | Sandy Ryza | Anubhav Dhoot |
| [YARN-1444](https://issues.apache.org/jira/browse/YARN-1444) | RM crashes when node resource request sent without corresponding off-switch request |  Blocker | client, resourcemanager | Robert Grandl | Wangda Tan |
| [YARN-1417](https://issues.apache.org/jira/browse/YARN-1417) | RM may issue expired container tokens to AM while issuing new containers. |  Blocker | . | Omkar Vinit Joshi | Jian He |
| [YARN-1398](https://issues.apache.org/jira/browse/YARN-1398) | Deadlock in capacity scheduler leaf queue and parent queue for getQueueInfo and completedContainer call |  Blocker | resourcemanager | Sunil G | Vinod Kumar Vavilapalli |
| [YARN-1301](https://issues.apache.org/jira/browse/YARN-1301) | Need to log the blacklist additions/removals when YarnSchedule#allocate |  Minor | . | Zhijie Shen | Tsuyoshi Ozawa |
| [YARN-1285](https://issues.apache.org/jira/browse/YARN-1285) | Inconsistency of default "yarn.acl.enable" value |  Major | . | Zhijie Shen | Kenji Kikushima |
| [YARN-1206](https://issues.apache.org/jira/browse/YARN-1206) | AM container log link broken on NM web page |  Blocker | . | Jian He | Rohith |
| [YARN-1166](https://issues.apache.org/jira/browse/YARN-1166) | YARN 'appsFailed' metric should be of type 'counter' |  Blocker | resourcemanager | Srimanth Gunturi | Zhijie Shen |
| [YARN-1071](https://issues.apache.org/jira/browse/YARN-1071) | ResourceManager's decommissioned and lost node count is 0 after restart |  Major | resourcemanager | Srimanth Gunturi | Jian He |
| [YARN-713](https://issues.apache.org/jira/browse/YARN-713) | ResourceManager can exit unexpectedly if DNS is unavailable |  Critical | resourcemanager | Jason Lowe | Jian He |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9525](https://issues.apache.org/jira/browse/HADOOP-9525) | Add tests that validate winutils chmod behavior on folders |  Major | test, util | Ivan Mitic | Ivan Mitic |
| [HDFS-5953](https://issues.apache.org/jira/browse/HDFS-5953) | TestBlockReaderFactory fails if libhadoop.so has not been built |  Major | . | Ted Yu | Akira AJISAKA |
| [HDFS-5936](https://issues.apache.org/jira/browse/HDFS-5936) | MiniDFSCluster does not clean data left behind by SecondaryNameNode. |  Major | namenode, test | Andrew Wang | Binglin Chang |
| [HDFS-5882](https://issues.apache.org/jira/browse/HDFS-5882) | TestAuditLogs is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HDFS-5672](https://issues.apache.org/jira/browse/HDFS-5672) | TestHASafeMode#testSafeBlockTracking fails in trunk |  Major | namenode | Ted Yu | Jing Zhao |
| [YARN-1863](https://issues.apache.org/jira/browse/YARN-1863) | TestRMFailover fails with 'AssertionError: null' |  Blocker | . | Ted Yu | Xuan Gong |
| [YARN-1855](https://issues.apache.org/jira/browse/YARN-1855) | TestRMFailover#testRMWebAppRedirect fails in trunk |  Critical | . | Ted Yu | Zhijie Shen |
| [YARN-1854](https://issues.apache.org/jira/browse/YARN-1854) | Race condition in TestRMHA#testStartAndTransitions |  Blocker | . | Mit Desai | Rohith |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6030](https://issues.apache.org/jira/browse/HDFS-6030) | Remove an unused constructor in INode.java |  Trivial | . | Yongjun Zhang | Yongjun Zhang |
| [HDFS-6025](https://issues.apache.org/jira/browse/HDFS-6025) | Update findbugsExcludeFile.xml |  Minor | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [YARN-1891](https://issues.apache.org/jira/browse/YARN-1891) | Document NodeManager health-monitoring |  Minor | . | Varun Vasudev | Varun Vasudev |
| [YARN-1452](https://issues.apache.org/jira/browse/YARN-1452) | Document the usage of the generic application history and the timeline data service |  Major | . | Zhijie Shen | Zhijie Shen |


