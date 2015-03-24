# Hadoop HDFS 2.0.0-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HDFS-3418](https://issues.apache.org/jira/browse/HDFS-3418) | *Minor* | **Rename BlockWithLocationsProto datanodeIDs field to storageIDs**
---

* [HDFS-3396](https://issues.apache.org/jira/browse/HDFS-3396) | *Minor* | **FUSE build fails on Ubuntu 12.04**
---

* [HDFS-3395](https://issues.apache.org/jira/browse/HDFS-3395) | *Major* | **NN doesn't start with HA+security enabled and HTTP address set to 0.0.0.0**
---

* [HDFS-3378](https://issues.apache.org/jira/browse/HDFS-3378) | *Trivial* | **Remove DFS\_NAMENODE\_SECONDARY\_HTTPS\_PORT\_KEY and DEFAULT**
---

* [HDFS-3376](https://issues.apache.org/jira/browse/HDFS-3376) | *Critical* | **DFSClient fails to make connection to DN if there are many unusable cached sockets**
---

* [HDFS-3375](https://issues.apache.org/jira/browse/HDFS-3375) | *Trivial* | **Put client name in DataXceiver thread name for readBlock and keepalive**
---

* [HDFS-3365](https://issues.apache.org/jira/browse/HDFS-3365) | *Minor* | **Enable users to disable socket caching in DFS client configuration**
---

* [HDFS-3363](https://issues.apache.org/jira/browse/HDFS-3363) | *Minor* | **blockmanagement should stop using INodeFile & INodeFileUC**
---

* [HDFS-3357](https://issues.apache.org/jira/browse/HDFS-3357) | *Critical* | **DataXceiver reads from client socket with incorrect/no timeout**
---

* [HDFS-3351](https://issues.apache.org/jira/browse/HDFS-3351) | *Major* | **NameNode#initializeGenericKeys should always set fs.defaultFS regardless of whether HA or Federation is enabled**
---

* [HDFS-3350](https://issues.apache.org/jira/browse/HDFS-3350) | *Major* | **findbugs warning: INodeFileUnderConstruction doesn't override INodeFile.equals(Object)**
---

* [HDFS-3339](https://issues.apache.org/jira/browse/HDFS-3339) | *Minor* | **change INode to package private**
---

* [HDFS-3336](https://issues.apache.org/jira/browse/HDFS-3336) | *Minor* | **hdfs launcher script will be better off not special casing namenode command with regards to hadoop.security.logger**
---

* [HDFS-3332](https://issues.apache.org/jira/browse/HDFS-3332) | *Major* | **NullPointerException in DN when directoryscanner is trying to report bad blocks**
---

* [HDFS-3330](https://issues.apache.org/jira/browse/HDFS-3330) | *Critical* | **If GetImageServlet throws an Error or RTE, response has HTTP "OK" status**
---

* [HDFS-3328](https://issues.apache.org/jira/browse/HDFS-3328) | *Minor* | **NPE in DataNode.getIpcPort**
---

* [HDFS-3326](https://issues.apache.org/jira/browse/HDFS-3326) | *Trivial* | **Append enabled log message uses the wrong variable**
---

* [HDFS-3322](https://issues.apache.org/jira/browse/HDFS-3322) | *Major* | **Update file context to use HdfsDataInputStream and HdfsDataOutputStream**
---

* [HDFS-3319](https://issues.apache.org/jira/browse/HDFS-3319) | *Minor* | **DFSOutputStream should not start a thread in constructors**
---

* [HDFS-3314](https://issues.apache.org/jira/browse/HDFS-3314) | *Major* | **HttpFS operation for getHomeDirectory is incorrect**
---

* [HDFS-3309](https://issues.apache.org/jira/browse/HDFS-3309) | *Major* | **HttpFS (Hoop) chmod not supporting octal and sticky bit permissions**
---

* [HDFS-3305](https://issues.apache.org/jira/browse/HDFS-3305) | *Major* | **GetImageServlet should consider SBN a valid requestor in a secure HA setup**
---

* [HDFS-3303](https://issues.apache.org/jira/browse/HDFS-3303) | *Minor* | **RemoteEditLogManifest doesn't need to implements Writable**
---

* [HDFS-3298](https://issues.apache.org/jira/browse/HDFS-3298) | *Major* | **Add HdfsDataOutputStream as a public API**
---

* [HDFS-3294](https://issues.apache.org/jira/browse/HDFS-3294) | *Trivial* | **Fix indentation in NamenodeWebHdfsMethods and DatanodeWebHdfsMethods**
---

* [HDFS-3286](https://issues.apache.org/jira/browse/HDFS-3286) | *Major* | **When the threshold value for balancer is 0(zero) ,unexpected output is displayed**
---

* [HDFS-3284](https://issues.apache.org/jira/browse/HDFS-3284) | *Minor* | **bootstrapStandby fails in secure cluster**
---

* [HDFS-3282](https://issues.apache.org/jira/browse/HDFS-3282) | *Major* | **Add HdfsDataInputStream as a public API**
---

* [HDFS-3280](https://issues.apache.org/jira/browse/HDFS-3280) | *Critical* | **DFSOutputStream.sync should not be synchronized**
---

* [HDFS-3279](https://issues.apache.org/jira/browse/HDFS-3279) | *Minor* | **One of the FSEditLog constructors should be moved to TestEditLog**
---

* [HDFS-3268](https://issues.apache.org/jira/browse/HDFS-3268) | *Critical* | **Hdfs mishandles token service & incompatible with HA**
---

* [HDFS-3263](https://issues.apache.org/jira/browse/HDFS-3263) | *Major* | **HttpFS should read HDFS config from Hadoop site.xml files**
---

* [HDFS-3260](https://issues.apache.org/jira/browse/HDFS-3260) | *Major* | **TestDatanodeRegistration should set minimum DN version in addition to minimum NN version**
---

* [HDFS-3259](https://issues.apache.org/jira/browse/HDFS-3259) | *Major* | **NameNode#initializeSharedEdits should populate shared edits dir with edit log segments**
---

* [HDFS-3256](https://issues.apache.org/jira/browse/HDFS-3256) | *Major* | **HDFS considers blocks under-replicated if topology script is configured with only 1 rack**
---

* [HDFS-3255](https://issues.apache.org/jira/browse/HDFS-3255) | *Critical* | **HA DFS returns wrong token service**
---

* [HDFS-3254](https://issues.apache.org/jira/browse/HDFS-3254) | *Major* | **Branch-2 build broken due to wrong version number in fuse-dfs' pom.xml**
---

* [HDFS-3249](https://issues.apache.org/jira/browse/HDFS-3249) | *Trivial* | **Use ToolRunner.confirmPrompt in NameNode**
---

* [HDFS-3248](https://issues.apache.org/jira/browse/HDFS-3248) | *Minor* | **bootstrapstanby repeated twice in hdfs namenode usage message**
---

* [HDFS-3247](https://issues.apache.org/jira/browse/HDFS-3247) | *Minor* | **Improve bootstrapStandby behavior when original NN is not active**
---

* [HDFS-3244](https://issues.apache.org/jira/browse/HDFS-3244) | *Major* | **Remove dead writable code from hdfs/protocol**
---

* [HDFS-3240](https://issues.apache.org/jira/browse/HDFS-3240) | *Trivial* | **Drop log level of "heartbeat: ..." in BPServiceActor to DEBUG**
---

* [HDFS-3238](https://issues.apache.org/jira/browse/HDFS-3238) | *Major* | **ServerCommand and friends don't need to be writables**
---

* [HDFS-3236](https://issues.apache.org/jira/browse/HDFS-3236) | *Minor* | **NameNode does not initialize generic conf keys when started with -initializeSharedEditsDir**
---

* [HDFS-3234](https://issues.apache.org/jira/browse/HDFS-3234) | *Trivial* | **Accidentally left log message in GetConf after HDFS-3226**
---

* [HDFS-3226](https://issues.apache.org/jira/browse/HDFS-3226) | *Major* | **Allow GetConf tool to print arbitrary keys**
---

* [HDFS-3222](https://issues.apache.org/jira/browse/HDFS-3222) | *Major* | **DFSInputStream#openInfo should not silently get the length as 0 when locations length is zero for last partial block.**
---

* [HDFS-3214](https://issues.apache.org/jira/browse/HDFS-3214) | *Blocker* | **InterDatanodeProtocolServerSideTranslatorPB doesn't handle null response from initReplicaRecovery**
---

* [HDFS-3211](https://issues.apache.org/jira/browse/HDFS-3211) | *Major* | **JournalProtocol changes required for introducing epoch and fencing**
---

* [HDFS-3210](https://issues.apache.org/jira/browse/HDFS-3210) | *Major* | **JsonUtil#toJsonMap for for a DatanodeInfo should use "ipAddr" instead of "name"**
---

* [HDFS-3208](https://issues.apache.org/jira/browse/HDFS-3208) | *Major* | **Bogus entries in hosts files are incorrectly displayed in the report**
---

* [HDFS-3206](https://issues.apache.org/jira/browse/HDFS-3206) | *Minor* | **Miscellaneous xml cleanups for OEV**
---

* [HDFS-3204](https://issues.apache.org/jira/browse/HDFS-3204) | *Major* | **Minor modification to JournalProtocol.proto to make it generic**
---

* [HDFS-3202](https://issues.apache.org/jira/browse/HDFS-3202) | *Major* | **NamespaceInfo PB translation drops build version**
---

* [HDFS-3199](https://issues.apache.org/jira/browse/HDFS-3199) | *Major* | **TestValidateConfigurationSettings is failing**
---

* [HDFS-3187](https://issues.apache.org/jira/browse/HDFS-3187) | *Minor* | **Upgrade guava to 11.0.2**
---

* [HDFS-3181](https://issues.apache.org/jira/browse/HDFS-3181) | *Minor* | **testHardLeaseRecoveryAfterNameNodeRestart fails when length before restart is 1 byte less than CRC chunk size**
---

* [HDFS-3179](https://issues.apache.org/jira/browse/HDFS-3179) | *Major* | **Improve the error message: DataStreamer throw an exception, "nodes.length != original.length + 1" on single datanode cluster**
---

* [HDFS-3172](https://issues.apache.org/jira/browse/HDFS-3172) | *Trivial* | **dfs.upgrade.permission is dead code**
---

* [HDFS-3171](https://issues.apache.org/jira/browse/HDFS-3171) | *Major* | **The DatanodeID "name" field is overloaded**
---

* [HDFS-3169](https://issues.apache.org/jira/browse/HDFS-3169) | *Minor* | **TestFsck should test multiple -move operations in a row**
---

* [HDFS-3167](https://issues.apache.org/jira/browse/HDFS-3167) | *Minor* | **CLI-based driver for MiniDFSCluster**
---

* [HDFS-3164](https://issues.apache.org/jira/browse/HDFS-3164) | *Major* | **Move DatanodeInfo#hostName to DatanodeID**

This change modifies DatanodeID, which is part of the client to server protocol, therefore clients must be upgraded with servers.

---

* [HDFS-3158](https://issues.apache.org/jira/browse/HDFS-3158) | *Major* | **LiveNodes member of NameNodeMXBean should list non-DFS used space and capacity per DN**
---

* [HDFS-3156](https://issues.apache.org/jira/browse/HDFS-3156) | *Major* | **TestDFSHAAdmin is failing post HADOOP-8202**
---

* [HDFS-3155](https://issues.apache.org/jira/browse/HDFS-3155) | *Major* | **Clean up FSDataset implemenation related code.**
---

* [HDFS-3148](https://issues.apache.org/jira/browse/HDFS-3148) | *Major* | **The client should be able to use multiple local interfaces for data transfer**
---

* [HDFS-3144](https://issues.apache.org/jira/browse/HDFS-3144) | *Major* | **Refactor DatanodeID#getName by use**

This change modifies DatanodeID, which is part of the client to server protocol, therefore clients must be upgraded with servers.

---

* [HDFS-3143](https://issues.apache.org/jira/browse/HDFS-3143) | *Major* | **TestGetBlocks.testGetBlocks is failing**
---

* [HDFS-3142](https://issues.apache.org/jira/browse/HDFS-3142) | *Blocker* | **TestHDFSCLI.testAll is failing**
---

* [HDFS-3138](https://issues.apache.org/jira/browse/HDFS-3138) | *Major* | **Move DatanodeInfo#ipcPort to DatanodeID**

This change modifies DatanodeID, which is part of the client to server protocol, therefore clients must be upgraded with servers.

---

* [HDFS-3137](https://issues.apache.org/jira/browse/HDFS-3137) | *Major* | **Bump LAST\_UPGRADABLE\_LAYOUT\_VERSION to -16**

Upgrade from Hadoop versions earlier than 0.18 is not supported as of 2.0. To upgrade from an earlier release, first upgrade to 0.18, and then upgrade again from there.

---

* [HDFS-3132](https://issues.apache.org/jira/browse/HDFS-3132) | *Minor* | **Findbugs warning on HDFS trunk**
---

* [HDFS-3130](https://issues.apache.org/jira/browse/HDFS-3130) | *Major* | **Move FSDataset implemenation to a package**
---

* [HDFS-3129](https://issues.apache.org/jira/browse/HDFS-3129) | *Minor* | **NetworkTopology: add test that getLeaf should check for invalid topologies**
---

* [HDFS-3126](https://issues.apache.org/jira/browse/HDFS-3126) | *Major* | **Journal stream from the namenode to backup needs to have a timeout**
---

* [HDFS-3120](https://issues.apache.org/jira/browse/HDFS-3120) | *Major* | **Enable hsync and hflush by default**
---

* [HDFS-3119](https://issues.apache.org/jira/browse/HDFS-3119) | *Minor* | **Overreplicated block is not deleted even after the replication factor is reduced after sync follwed by closing that file**
---

* [HDFS-3111](https://issues.apache.org/jira/browse/HDFS-3111) | *Trivial* | **Missing license headers in trunk**
---

* [HDFS-3109](https://issues.apache.org/jira/browse/HDFS-3109) | *Major* | **Remove hsqldb exclusions from pom.xml**
---

* [HDFS-3105](https://issues.apache.org/jira/browse/HDFS-3105) | *Major* | **Add DatanodeStorage information to block recovery**
---

* [HDFS-3102](https://issues.apache.org/jira/browse/HDFS-3102) | *Major* | **Add CLI tool to initialize the shared-edits dir**
---

* [HDFS-3100](https://issues.apache.org/jira/browse/HDFS-3100) | *Major* | **failed to append data**
---

* [HDFS-3099](https://issues.apache.org/jira/browse/HDFS-3099) | *Major* | **SecondaryNameNode does not properly initialize metrics system**
---

* [HDFS-3094](https://issues.apache.org/jira/browse/HDFS-3094) | *Major* | **add -nonInteractive and -force option to namenode -format command**

The 'namenode -format' command now supports the flags '-nonInteractive' and '-force' to improve usefulness without user input.

---

* [HDFS-3093](https://issues.apache.org/jira/browse/HDFS-3093) | *Critical* | **TestAllowFormat is trying to be interactive**
---

* [HDFS-3091](https://issues.apache.org/jira/browse/HDFS-3091) | *Major* | **Update the usage limitations of ReplaceDatanodeOnFailure policy in the config description for the smaller clusters.**
---

* [HDFS-3089](https://issues.apache.org/jira/browse/HDFS-3089) | *Major* | **Move FSDatasetInterface and other related classes/interfaces to a package**
---

* [HDFS-3088](https://issues.apache.org/jira/browse/HDFS-3088) | *Major* | **Move FSDatasetInterface inner classes to a package**
---

* [HDFS-3086](https://issues.apache.org/jira/browse/HDFS-3086) | *Major* | **Change Datanode not to send storage list in registration - it will be sent in block report**
---

* [HDFS-3084](https://issues.apache.org/jira/browse/HDFS-3084) | *Major* | **FenceMethod.tryFence() and ShellCommandFencer should pass namenodeId as well as host:port**
---

* [HDFS-3083](https://issues.apache.org/jira/browse/HDFS-3083) | *Critical* | **Cannot run an MR job with HA and security enabled when second-listed NN active**
---

* [HDFS-3082](https://issues.apache.org/jira/browse/HDFS-3082) | *Major* | **Clean up FSDatasetInterface**
---

* [HDFS-3071](https://issues.apache.org/jira/browse/HDFS-3071) | *Major* | **haadmin failover command does not provide enough detail for when target NN is not ready to be active**
---

* [HDFS-3070](https://issues.apache.org/jira/browse/HDFS-3070) | *Major* | **HDFS balancer doesn't ensure that hdfs-site.xml is loaded**
---

* [HDFS-3062](https://issues.apache.org/jira/browse/HDFS-3062) | *Critical* | **Fail to submit mapred job on a secured-HA-HDFS: logic URI cannot be picked up by job submission.**
---

* [HDFS-3057](https://issues.apache.org/jira/browse/HDFS-3057) | *Major* | **httpfs and hdfs launcher scripts should honor CATALINA\_HOME and HADOOP\_LIBEXEC\_DIR**
---

* [HDFS-3056](https://issues.apache.org/jira/browse/HDFS-3056) | *Major* | **Add an interface for DataBlockScanner logging**
---

* [HDFS-3050](https://issues.apache.org/jira/browse/HDFS-3050) | *Minor* | **rework OEV to share more code with the NameNode**
---

* [HDFS-3044](https://issues.apache.org/jira/browse/HDFS-3044) | *Major* | **fsck move should be non-destructive by default**

The fsck "move" option is no longer destructive. It copies the accessible blocks of corrupt files to lost and found as before, but no longer deletes the corrupt files after copying the blocks. The original, destructive behavior can be enabled by specifying both the "move" and "delete" options.

---

* [HDFS-3038](https://issues.apache.org/jira/browse/HDFS-3038) | *Trivial* | **Add FSEditLog.metrics to findbugs exclude list**
---

* [HDFS-3036](https://issues.apache.org/jira/browse/HDFS-3036) | *Trivial* | **Remove unused method DFSUtil#isDefaultNamenodeAddress**
---

* [HDFS-3030](https://issues.apache.org/jira/browse/HDFS-3030) | *Major* | **Remove getProtocolVersion and getProtocolSignature from translators**
---

* [HDFS-3026](https://issues.apache.org/jira/browse/HDFS-3026) | *Major* | **HA: Handle failure during HA state transition**
---

* [HDFS-3021](https://issues.apache.org/jira/browse/HDFS-3021) | *Major* | **Use generic type to declare FSDatasetInterface**
---

* [HDFS-3020](https://issues.apache.org/jira/browse/HDFS-3020) | *Critical* | **Auto-logSync based on edit log buffer size broken**
---

* [HDFS-3014](https://issues.apache.org/jira/browse/HDFS-3014) | *Major* | **FSEditLogOp and its subclasses should have toString() method**
---

* [HDFS-3005](https://issues.apache.org/jira/browse/HDFS-3005) | *Major* | **ConcurrentModificationException in FSDataset$FSVolume.getDfsUsed(..)**
---

* [HDFS-3004](https://issues.apache.org/jira/browse/HDFS-3004) | *Major* | **Implement Recovery Mode**

This is a new feature.  It is documented in hdfs\_user\_guide.xml.

---

* [HDFS-3003](https://issues.apache.org/jira/browse/HDFS-3003) | *Trivial* | **Remove getHostPortString() from NameNode, replace it with NetUtils.getHostPortString()**
---

* [HDFS-3000](https://issues.apache.org/jira/browse/HDFS-3000) | *Major* | **Add a public API for setting quotas**
---

* [HDFS-2995](https://issues.apache.org/jira/browse/HDFS-2995) | *Major* | **start-dfs.sh should only start the 2NN for namenodes with dfs.namenode.secondary.http-address configured**
---

* [HDFS-2983](https://issues.apache.org/jira/browse/HDFS-2983) | *Major* | **Relax the build version check to permit rolling upgrades within a release**
---

* [HDFS-2968](https://issues.apache.org/jira/browse/HDFS-2968) | *Blocker* | **Protocol translator for BlockRecoveryCommand broken when multiple blocks need recovery**
---

* [HDFS-2941](https://issues.apache.org/jira/browse/HDFS-2941) | *Major* | **Add an administrative command to download a copy of the fsimage from the NN**
---

* [HDFS-2899](https://issues.apache.org/jira/browse/HDFS-2899) | *Major* | **Service protocol change to support multiple storages added in HDFS-2880**
---

* [HDFS-2895](https://issues.apache.org/jira/browse/HDFS-2895) | *Major* | **Remove Writable wire protocol related code that is no longer necessary**
---

* [HDFS-2880](https://issues.apache.org/jira/browse/HDFS-2880) | *Major* | **Protocol buffer changes to add support multiple storages**
---

* [HDFS-2878](https://issues.apache.org/jira/browse/HDFS-2878) | *Blocker* | **TestBlockRecovery does not compile**
---

* [HDFS-2801](https://issues.apache.org/jira/browse/HDFS-2801) | *Major* | **Provide a method in client side translators to check for a methods supported in underlying protocol.**
---

* [HDFS-2799](https://issues.apache.org/jira/browse/HDFS-2799) | *Major* | **Trim fs.checkpoint.dir values**
---

* [HDFS-2768](https://issues.apache.org/jira/browse/HDFS-2768) | *Major* | **BackupNode stop can not close proxy connections because it is not a proxy instance.**
---

* [HDFS-2765](https://issues.apache.org/jira/browse/HDFS-2765) | *Major* | **TestNameEditsConfigs is incorrectly swallowing IOE**
---

* [HDFS-2739](https://issues.apache.org/jira/browse/HDFS-2739) | *Critical* | **SecondaryNameNode doesn't start up**
---

* [HDFS-2731](https://issues.apache.org/jira/browse/HDFS-2731) | *Major* | **HA: Autopopulate standby name dirs if they're empty**

The HA NameNode may now be started with the "-bootstrapStandby" flag. This causes it to copy the namespace information and most recent checkpoint from its HA pair, and save it to local storage, allowing an HA setup to be bootstrapped without use of rsync or external tools.

---

* [HDFS-2708](https://issues.apache.org/jira/browse/HDFS-2708) | *Minor* | **Stats for the # of blocks per DN**
---

* [HDFS-2700](https://issues.apache.org/jira/browse/HDFS-2700) | *Major* | **TestDataNodeMultipleRegistrations is failing in trunk**
---

* [HDFS-2697](https://issues.apache.org/jira/browse/HDFS-2697) | *Major* | **Move RefreshAuthPolicy, RefreshUserMappings, GetUserMappings protocol to protocol buffers**
---

* [HDFS-2696](https://issues.apache.org/jira/browse/HDFS-2696) | *Major* | **Fix the fuse-fds build**
---

* [HDFS-2694](https://issues.apache.org/jira/browse/HDFS-2694) | *Major* | **Removal of Avro broke non-PB NN services**
---

* [HDFS-2687](https://issues.apache.org/jira/browse/HDFS-2687) | *Major* | **Tests are failing with ClassCastException, due to new protocol changes**
---

* [HDFS-2676](https://issues.apache.org/jira/browse/HDFS-2676) | *Major* | **Remove Avro RPC**
---

* [HDFS-2669](https://issues.apache.org/jira/browse/HDFS-2669) | *Major* | **Enable protobuf rpc for ClientNamenodeProtocol**
---

* [HDFS-2666](https://issues.apache.org/jira/browse/HDFS-2666) | *Major* | **TestBackupNode fails**
---

* [HDFS-2663](https://issues.apache.org/jira/browse/HDFS-2663) | *Major* | **Optional parameters are not handled correctly**
---

* [HDFS-2661](https://issues.apache.org/jira/browse/HDFS-2661) | *Major* | **Enable protobuf RPC for DatanodeProtocol**
---

* [HDFS-2651](https://issues.apache.org/jira/browse/HDFS-2651) | *Major* | **ClientNameNodeProtocol Translators for Protocol Buffers**
---

* [HDFS-2650](https://issues.apache.org/jira/browse/HDFS-2650) | *Minor* | **Replace @inheritDoc with @Override**
---

* [HDFS-2647](https://issues.apache.org/jira/browse/HDFS-2647) | *Major* | **Enable protobuf RPC for InterDatanodeProtocol, ClientDatanodeProtocol, JournalProtocol and NamenodeProtocol**
---

* [HDFS-2642](https://issues.apache.org/jira/browse/HDFS-2642) | *Major* | **Protobuf translators for DatanodeProtocol**
---

* [HDFS-2636](https://issues.apache.org/jira/browse/HDFS-2636) | *Major* | **Implement protobuf service for ClientDatanodeProtocol**
---

* [HDFS-2629](https://issues.apache.org/jira/browse/HDFS-2629) | *Major* | **Implement protobuf service for InterDatanodeProtocol**
---

* [HDFS-2618](https://issues.apache.org/jira/browse/HDFS-2618) | *Major* | **Implement protobuf service for NamenodeProtocol**
---

* [HDFS-2597](https://issues.apache.org/jira/browse/HDFS-2597) | *Major* | ** ClientNameNodeProtocol in Protocol Buffers**
---

* [HDFS-2581](https://issues.apache.org/jira/browse/HDFS-2581) | *Major* | **Implement protobuf service for JournalProtocol**
---

* [HDFS-2564](https://issues.apache.org/jira/browse/HDFS-2564) | *Minor* | **Cleanup unnecessary exceptions thrown and unnecessary casts**
---

* [HDFS-2532](https://issues.apache.org/jira/browse/HDFS-2532) | *Critical* | **TestDfsOverAvroRpc timing out in trunk**
---

* [HDFS-2526](https://issues.apache.org/jira/browse/HDFS-2526) | *Major* | **(Client)NamenodeProtocolTranslatorR23 do not need to keep a reference to rpcProxyWithoutRetry**
---

* [HDFS-2520](https://issues.apache.org/jira/browse/HDFS-2520) | *Major* | **Protobuf - Add protobuf service for InterDatanodeProtocol**
---

* [HDFS-2519](https://issues.apache.org/jira/browse/HDFS-2519) | *Major* | **Protobuf - Add protobuf service for DatanodeProtocol**
---

* [HDFS-2518](https://issues.apache.org/jira/browse/HDFS-2518) | *Major* | **Protobuf - Add protobuf service for NamenodeProtocol**
---

* [HDFS-2517](https://issues.apache.org/jira/browse/HDFS-2517) | *Major* | **Protobuf - Add protocol service for JournalProtocol**
---

* [HDFS-2499](https://issues.apache.org/jira/browse/HDFS-2499) | *Major* | **Fix RPC client creation bug from HDFS-2459**
---

* [HDFS-2497](https://issues.apache.org/jira/browse/HDFS-2497) | *Major* | **Fix TestBackupNode failure**
---

* [HDFS-2496](https://issues.apache.org/jira/browse/HDFS-2496) | *Major* | **Separate datatypes for DatanodeProtocol**
---

* [HDFS-2495](https://issues.apache.org/jira/browse/HDFS-2495) | *Major* | **Increase granularity of write operations in ReplicationMonitor thus reducing contention for write lock**
---

* [HDFS-2489](https://issues.apache.org/jira/browse/HDFS-2489) | *Major* | **Move commands Finalize and Register out of DatanodeCommand class.**
---

* [HDFS-2488](https://issues.apache.org/jira/browse/HDFS-2488) | *Major* | **Separate datatypes for InterDatanodeProtocol**
---

* [HDFS-2481](https://issues.apache.org/jira/browse/HDFS-2481) | *Major* | **Unknown protocol: org.apache.hadoop.hdfs.protocol.ClientProtocol**
---

* [HDFS-2480](https://issues.apache.org/jira/browse/HDFS-2480) | *Major* | **Separate datatypes for NamenodeProtocol**
---

* [HDFS-2479](https://issues.apache.org/jira/browse/HDFS-2479) | *Major* | **HDFS Client Data Types in Protocol Buffers**
---

* [HDFS-2477](https://issues.apache.org/jira/browse/HDFS-2477) | *Major* | **Optimize computing the diff between a block report and the namenode state.**
---

* [HDFS-2476](https://issues.apache.org/jira/browse/HDFS-2476) | *Major* | **More CPU efficient data structure for under-replicated/over-replicated/invalidate blocks**
---

* [HDFS-2459](https://issues.apache.org/jira/browse/HDFS-2459) | *Major* | **Separate datatypes for Journal protocol**
---

* [HDFS-2430](https://issues.apache.org/jira/browse/HDFS-2430) | *Major* | **The number of failed or low-resource volumes the NN can tolerate should be configurable**
---

* [HDFS-2413](https://issues.apache.org/jira/browse/HDFS-2413) | *Major* | **Add public APIs for safemode**
---

* [HDFS-2410](https://issues.apache.org/jira/browse/HDFS-2410) | *Minor* | **Further clean up hard-coded configuration keys**
---

* [HDFS-2405](https://issues.apache.org/jira/browse/HDFS-2405) | *Critical* | **hadoop dfs command with webhdfs fails on secure hadoop**
---

* [HDFS-2351](https://issues.apache.org/jira/browse/HDFS-2351) | *Major* | **Change Namenode and Datanode to register each of their protocols seperately**
---

* [HDFS-2337](https://issues.apache.org/jira/browse/HDFS-2337) | *Major* | **DFSClient shouldn't keep multiple RPC proxy references**
---

* [HDFS-2334](https://issues.apache.org/jira/browse/HDFS-2334) | *Major* | **Add Closeable to JournalManager**
---

* [HDFS-2303](https://issues.apache.org/jira/browse/HDFS-2303) | *Major* | **Unbundle jsvc**

To run secure Datanodes users must install jsvc for their platform and set JSVC\_HOME to point to the location of jsvc in their environment.

---

* [HDFS-2223](https://issues.apache.org/jira/browse/HDFS-2223) | *Major* | **Untangle depencencies between NN components**
---

* [HDFS-2188](https://issues.apache.org/jira/browse/HDFS-2188) | *Major* | **HDFS-1580: Make FSEditLog create its journals from a list of URIs rather than NNStorage**
---

* [HDFS-2181](https://issues.apache.org/jira/browse/HDFS-2181) | *Major* | **Separate HDFS Client wire protocol data types**
---

* [HDFS-2158](https://issues.apache.org/jira/browse/HDFS-2158) | *Major* | **Add JournalSet to manage the set of journals.**
---

* [HDFS-2018](https://issues.apache.org/jira/browse/HDFS-2018) | *Major* | **1073: Move all journal stream management code into one place**
---

* [HDFS-1765](https://issues.apache.org/jira/browse/HDFS-1765) | *Major* | **Block Replication should respect under-replication block priority**
---

* [HDFS-1623](https://issues.apache.org/jira/browse/HDFS-1623) | *Major* | **High Availability Framework for HDFS NN**
---

* [HDFS-1580](https://issues.apache.org/jira/browse/HDFS-1580) | *Major* | **Add interface for generic Write Ahead Logging mechanisms**
---

* [HDFS-891](https://issues.apache.org/jira/browse/HDFS-891) | *Minor* | **DataNode no longer needs to check for dfs.network.script**
---

* [HDFS-860](https://issues.apache.org/jira/browse/HDFS-860) | *Minor* | **fuse-dfs truncate behavior causes issues with scp**
---

* [HDFS-395](https://issues.apache.org/jira/browse/HDFS-395) | *Major* | **DFS Scalability: Incremental block reports**
---

* [HDFS-309](https://issues.apache.org/jira/browse/HDFS-309) | *Major* | **FSEditLog should log progress during replay**
---

* [HDFS-234](https://issues.apache.org/jira/browse/HDFS-234) | *Major* | **Integration with BookKeeper logging system**


