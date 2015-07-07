# Apache Hadoop Changelog

## Release 2.0.0-alpha - 2012-05-23

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8314](https://issues.apache.org/jira/browse/HADOOP-8314) | HttpServer#hasAdminAccess should return false if authorization is enabled but user is not authenticated |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8270](https://issues.apache.org/jira/browse/HADOOP-8270) | hadoop-daemon.sh stop action should return 0 for an already stopped service |  Minor | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-8184](https://issues.apache.org/jira/browse/HADOOP-8184) | ProtoBuf RPC engine does not need it own reply packet - it can use the IPC layer reply packet. |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-8154](https://issues.apache.org/jira/browse/HADOOP-8154) | DNS#getIPs shouldn't silently return the local host IP for bogus interface names |  Major | conf | Eli Collins | Eli Collins |
| [HADOOP-8149](https://issues.apache.org/jira/browse/HADOOP-8149) | cap space usage of default log4j rolling policy |  Major | conf | Patrick Hunt | Patrick Hunt |
| [HADOOP-7524](https://issues.apache.org/jira/browse/HADOOP-7524) | Change RPC to allow multiple protocols including multiple versions of the same protocol |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HDFS-3286](https://issues.apache.org/jira/browse/HDFS-3286) | When the threshold value for balancer is 0(zero) ,unexpected output is displayed |  Major | balancer & mover | J.Andreina | Ashish Singhi |
| [HDFS-3164](https://issues.apache.org/jira/browse/HDFS-3164) | Move DatanodeInfo#hostName to DatanodeID |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3144](https://issues.apache.org/jira/browse/HDFS-3144) | Refactor DatanodeID#getName by use |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3138](https://issues.apache.org/jira/browse/HDFS-3138) | Move DatanodeInfo#ipcPort to DatanodeID |  Major | . | Eli Collins | Eli Collins |
| [HDFS-3137](https://issues.apache.org/jira/browse/HDFS-3137) | Bump LAST\_UPGRADABLE\_LAYOUT\_VERSION to -16 |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-3044](https://issues.apache.org/jira/browse/HDFS-3044) | fsck move should be non-destructive by default |  Major | namenode | Eli Collins | Colin Patrick McCabe |
| [HDFS-2303](https://issues.apache.org/jira/browse/HDFS-2303) | Unbundle jsvc |  Major | build, scripts | Roman Shaposhnik | Mingjie Lai |
| [HDFS-395](https://issues.apache.org/jira/browse/HDFS-395) | DFS Scalability: Incremental block reports |  Major | datanode, namenode | dhruba borthakur | Tomasz Nykiel |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8343](https://issues.apache.org/jira/browse/HADOOP-8343) | Allow configuration of authorization for JmxJsonServlet and MetricsServlet |  Major | util | Philip Zeyliger | Alejandro Abdelnur |
| [HADOOP-8206](https://issues.apache.org/jira/browse/HADOOP-8206) | Common portion of ZK-based failover controller |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HADOOP-8121](https://issues.apache.org/jira/browse/HADOOP-8121) | Active Directory Group Mapping Service |  Major | security | Jonathan Natkins | Jonathan Natkins |
| [HADOOP-7876](https://issues.apache.org/jira/browse/HADOOP-7876) | Allow access to BlockKey/DelegationKey encoded key for RPC over protobuf |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7806](https://issues.apache.org/jira/browse/HADOOP-7806) | Support binding to sub-interfaces |  Major | util | Harsh J | Harsh J |
| [HDFS-3167](https://issues.apache.org/jira/browse/HDFS-3167) | CLI-based driver for MiniDFSCluster |  Minor | test | Henry Robinson | Henry Robinson |
| [HDFS-3148](https://issues.apache.org/jira/browse/HDFS-3148) | The client should be able to use multiple local interfaces for data transfer |  Major | hdfs-client, performance | Eli Collins | Eli Collins |
| [HDFS-3102](https://issues.apache.org/jira/browse/HDFS-3102) | Add CLI tool to initialize the shared-edits dir |  Major | ha, namenode | Todd Lipcon | Aaron T. Myers |
| [HDFS-3004](https://issues.apache.org/jira/browse/HDFS-3004) | Implement Recovery Mode |  Major | tools | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3000](https://issues.apache.org/jira/browse/HDFS-3000) | Add a public API for setting quotas |  Major | hdfs-client | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2941](https://issues.apache.org/jira/browse/HDFS-2941) | Add an administrative command to download a copy of the fsimage from the NN |  Major | hdfs-client, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2731](https://issues.apache.org/jira/browse/HDFS-2731) | HA: Autopopulate standby name dirs if they're empty |  Major | ha | Aaron T. Myers | Todd Lipcon |
| [HDFS-2430](https://issues.apache.org/jira/browse/HDFS-2430) | The number of failed or low-resource volumes the NN can tolerate should be configurable |  Major | namenode | Aaron T. Myers | Aaron T. Myers |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8356](https://issues.apache.org/jira/browse/HADOOP-8356) | FileSystem service loading mechanism should print the FileSystem impl it is failing to load |  Major | fs | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8353](https://issues.apache.org/jira/browse/HADOOP-8353) | hadoop-daemon.sh and yarn-daemon.sh can be misleading on stop |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-8350](https://issues.apache.org/jira/browse/HADOOP-8350) | Improve NetUtils.getInputStream to return a stream which has a tunable timeout |  Major | util | Todd Lipcon | Todd Lipcon |
| [HADOOP-8285](https://issues.apache.org/jira/browse/HADOOP-8285) | Use ProtoBuf for RpcPayLoadHeader |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-8280](https://issues.apache.org/jira/browse/HADOOP-8280) |  Move VersionUtil/TestVersionUtil and GenericTestUtils from HDFS into Common. |  Major | test, util | Ahmed Radwan | Ahmed Radwan |
| [HADOOP-8236](https://issues.apache.org/jira/browse/HADOOP-8236) | haadmin should have configurable timeouts for failover commands |  Major | ha | Philip Zeyliger | Todd Lipcon |
| [HADOOP-8214](https://issues.apache.org/jira/browse/HADOOP-8214) | make hadoop script recognize a full set of deprecated commands |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-8200](https://issues.apache.org/jira/browse/HADOOP-8200) | Remove HADOOP\_[JOBTRACKER\|TASKTRACKER]\_OPTS |  Minor | conf | Eli Collins | Eli Collins |
| [HADOOP-8193](https://issues.apache.org/jira/browse/HADOOP-8193) | Refactor FailoverController/HAAdmin code to add an abstract class for "target" services |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HADOOP-8185](https://issues.apache.org/jira/browse/HADOOP-8185) | Update namenode -format documentation and add -nonInteractive and -force |  Major | documentation | Arpit Gupta | Arpit Gupta |
| [HADOOP-8184](https://issues.apache.org/jira/browse/HADOOP-8184) | ProtoBuf RPC engine does not need it own reply packet - it can use the IPC layer reply packet. |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-8183](https://issues.apache.org/jira/browse/HADOOP-8183) | Stop using "mapred.used.genericoptionsparser" to avoid unnecessary warnings |  Minor | util | Harsh J | Harsh J |
| [HADOOP-8163](https://issues.apache.org/jira/browse/HADOOP-8163) | Improve ActiveStandbyElector to provide hooks for fencing old active |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HADOOP-8152](https://issues.apache.org/jira/browse/HADOOP-8152) | Expand public APIs for security library classes |  Major | security | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8149](https://issues.apache.org/jira/browse/HADOOP-8149) | cap space usage of default log4j rolling policy |  Major | conf | Patrick Hunt | Patrick Hunt |
| [HADOOP-8118](https://issues.apache.org/jira/browse/HADOOP-8118) | Print the stack trace of InstanceAlreadyExistsException in trace level |  Minor | metrics | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-8117](https://issues.apache.org/jira/browse/HADOOP-8117) | Upgrade test build to Surefire 2.12 |  Trivial | build, test | Todd Lipcon | Todd Lipcon |
| [HADOOP-8113](https://issues.apache.org/jira/browse/HADOOP-8113) | Correction to BUILDING.txt: HDFS needs ProtocolBuffer, too (not just MapReduce) |  Trivial | documentation | Eugene Koontz | Eugene Koontz |
| [HADOOP-8098](https://issues.apache.org/jira/browse/HADOOP-8098) | KerberosAuthenticatorHandler should use \_HOST replacement to resolve principal name |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8086](https://issues.apache.org/jira/browse/HADOOP-8086) | KerberosName silently sets defaultRealm to "" if the Kerberos config is not found, it should log a WARN |  Minor | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8085](https://issues.apache.org/jira/browse/HADOOP-8085) | Add RPC metrics to ProtobufRpcEngine |  Major | ipc, metrics | Suresh Srinivas | Hari Mankude |
| [HADOOP-8084](https://issues.apache.org/jira/browse/HADOOP-8084) | Protobuf RPC engine can be optimized to not do copying for the RPC request/response |  Major | ipc | Devaraj Das | Devaraj Das |
| [HADOOP-8077](https://issues.apache.org/jira/browse/HADOOP-8077) | HA: fencing method should be able to be configured on a per-NN or per-NS basis |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HADOOP-8070](https://issues.apache.org/jira/browse/HADOOP-8070) | Add standalone benchmark of protobuf IPC |  Major | benchmarks, ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-8007](https://issues.apache.org/jira/browse/HADOOP-8007) | HA: use substitution token for fencing argument |  Major | ha | Aaron T. Myers | Todd Lipcon |
| [HADOOP-7987](https://issues.apache.org/jira/browse/HADOOP-7987) | Support setting the run-as user in unsecure mode |  Major | security | Devaraj Das | Jitendra Nath Pandey |
| [HADOOP-7899](https://issues.apache.org/jira/browse/HADOOP-7899) | Generate proto java files as part of the build |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-7875](https://issues.apache.org/jira/browse/HADOOP-7875) | Add helper class to unwrap RemoteException from ServiceException thrown on protobuf based RPC |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7729](https://issues.apache.org/jira/browse/HADOOP-7729) | Send back valid HTTP response if user hits IPC port with HTTP GET |  Major | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-7727](https://issues.apache.org/jira/browse/HADOOP-7727) | fix some typos and tabs in CHANGES.TXT |  Trivial | build | Steve Loughran | Steve Loughran |
| [HADOOP-7717](https://issues.apache.org/jira/browse/HADOOP-7717) | Move handling of concurrent client fail-overs to RetryInvocationHandler |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7693](https://issues.apache.org/jira/browse/HADOOP-7693) | fix RPC.Server#addProtocol to work in AvroRpcEngine |  Major | ipc | Doug Cutting | Doug Cutting |
| [HADOOP-7635](https://issues.apache.org/jira/browse/HADOOP-7635) | RetryInvocationHandler should release underlying resources on close |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7607](https://issues.apache.org/jira/browse/HADOOP-7607) | Simplify the RPC proxy cleanup process |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7549](https://issues.apache.org/jira/browse/HADOOP-7549) | Use JDK ServiceLoader mechanism to find FileSystem implementations |  Major | fs | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-7350](https://issues.apache.org/jira/browse/HADOOP-7350) | Use ServiceLoader to discover compression codec classes |  Major | conf, io | Tom White | Tom White |
| [HDFS-3375](https://issues.apache.org/jira/browse/HDFS-3375) | Put client name in DataXceiver thread name for readBlock and keepalive |  Trivial | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-3365](https://issues.apache.org/jira/browse/HDFS-3365) | Enable users to disable socket caching in DFS client configuration |  Minor | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-3319](https://issues.apache.org/jira/browse/HDFS-3319) | DFSOutputStream should not start a thread in constructors |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3294](https://issues.apache.org/jira/browse/HDFS-3294) | Fix indentation in NamenodeWebHdfsMethods and DatanodeWebHdfsMethods |  Trivial | datanode, namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3279](https://issues.apache.org/jira/browse/HDFS-3279) | One of the FSEditLog constructors should be moved to TestEditLog |  Minor | namenode | Tsz Wo Nicholas Sze | Arpit Gupta |
| [HDFS-3259](https://issues.apache.org/jira/browse/HDFS-3259) | NameNode#initializeSharedEdits should populate shared edits dir with edit log segments |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3249](https://issues.apache.org/jira/browse/HDFS-3249) | Use ToolRunner.confirmPrompt in NameNode |  Trivial | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3247](https://issues.apache.org/jira/browse/HDFS-3247) | Improve bootstrapStandby behavior when original NN is not active |  Minor | ha | Todd Lipcon | Todd Lipcon |
| [HDFS-3240](https://issues.apache.org/jira/browse/HDFS-3240) | Drop log level of "heartbeat: ..." in BPServiceActor to DEBUG |  Trivial | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-3226](https://issues.apache.org/jira/browse/HDFS-3226) | Allow GetConf tool to print arbitrary keys |  Major | tools | Todd Lipcon | Todd Lipcon |
| [HDFS-3206](https://issues.apache.org/jira/browse/HDFS-3206) | Miscellaneous xml cleanups for OEV |  Minor | tools | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3204](https://issues.apache.org/jira/browse/HDFS-3204) | Minor modification to JournalProtocol.proto to make it generic |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-3179](https://issues.apache.org/jira/browse/HDFS-3179) | Improve the error message: DataStreamer throw an exception, "nodes.length != original.length + 1" on single datanode cluster |  Major | hdfs-client | Zhanwei Wang | Tsz Wo Nicholas Sze |
| [HDFS-3172](https://issues.apache.org/jira/browse/HDFS-3172) | dfs.upgrade.permission is dead code |  Trivial | namenode | Eli Collins | Eli Collins |
| [HDFS-3171](https://issues.apache.org/jira/browse/HDFS-3171) | The DatanodeID "name" field is overloaded |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3169](https://issues.apache.org/jira/browse/HDFS-3169) | TestFsck should test multiple -move operations in a row |  Minor | test | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3164](https://issues.apache.org/jira/browse/HDFS-3164) | Move DatanodeInfo#hostName to DatanodeID |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3158](https://issues.apache.org/jira/browse/HDFS-3158) | LiveNodes member of NameNodeMXBean should list non-DFS used space and capacity per DN |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3144](https://issues.apache.org/jira/browse/HDFS-3144) | Refactor DatanodeID#getName by use |  Major | datanode | Eli Collins | Eli Collins |
| [HDFS-3137](https://issues.apache.org/jira/browse/HDFS-3137) | Bump LAST\_UPGRADABLE\_LAYOUT\_VERSION to -16 |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-3091](https://issues.apache.org/jira/browse/HDFS-3091) | Update the usage limitations of ReplaceDatanodeOnFailure policy in the config description for the smaller clusters. |  Major | datanode, hdfs-client, namenode | Uma Maheswara Rao G | Tsz Wo Nicholas Sze |
| [HDFS-3084](https://issues.apache.org/jira/browse/HDFS-3084) | FenceMethod.tryFence() and ShellCommandFencer should pass namenodeId as well as host:port |  Major | ha | Philip Zeyliger | Todd Lipcon |
| [HDFS-3071](https://issues.apache.org/jira/browse/HDFS-3071) | haadmin failover command does not provide enough detail for when target NN is not ready to be active |  Major | ha | Philip Zeyliger | Todd Lipcon |
| [HDFS-3056](https://issues.apache.org/jira/browse/HDFS-3056) | Add an interface for DataBlockScanner logging |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3050](https://issues.apache.org/jira/browse/HDFS-3050) | rework OEV to share more code with the NameNode |  Minor | namenode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3044](https://issues.apache.org/jira/browse/HDFS-3044) | fsck move should be non-destructive by default |  Major | namenode | Eli Collins | Colin Patrick McCabe |
| [HDFS-3036](https://issues.apache.org/jira/browse/HDFS-3036) | Remove unused method DFSUtil#isDefaultNamenodeAddress |  Trivial | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3021](https://issues.apache.org/jira/browse/HDFS-3021) | Use generic type to declare FSDatasetInterface |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3014](https://issues.apache.org/jira/browse/HDFS-3014) | FSEditLogOp and its subclasses should have toString() method |  Major | namenode | Sho Shimauchi | Sho Shimauchi |
| [HDFS-3003](https://issues.apache.org/jira/browse/HDFS-3003) | Remove getHostPortString() from NameNode, replace it with NetUtils.getHostPortString() |  Trivial | namenode | Brandon Li | Brandon Li |
| [HDFS-2895](https://issues.apache.org/jira/browse/HDFS-2895) | Remove Writable wire protocol related code that is no longer necessary |  Major | datanode, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2708](https://issues.apache.org/jira/browse/HDFS-2708) | Stats for the # of blocks per DN |  Minor | datanode, namenode | Eli Collins | Aaron T. Myers |
| [HDFS-2564](https://issues.apache.org/jira/browse/HDFS-2564) | Cleanup unnecessary exceptions thrown and unnecessary casts |  Minor | datanode, hdfs-client, namenode | Hari Mankude | Hari Mankude |
| [HDFS-2413](https://issues.apache.org/jira/browse/HDFS-2413) | Add public APIs for safemode |  Major | hdfs-client | Todd Lipcon | Harsh J |
| [HDFS-2410](https://issues.apache.org/jira/browse/HDFS-2410) | Further clean up hard-coded configuration keys |  Minor | datanode, namenode, test | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2337](https://issues.apache.org/jira/browse/HDFS-2337) | DFSClient shouldn't keep multiple RPC proxy references |  Major | hdfs-client | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2303](https://issues.apache.org/jira/browse/HDFS-2303) | Unbundle jsvc |  Major | build, scripts | Roman Shaposhnik | Mingjie Lai |
| [HDFS-2223](https://issues.apache.org/jira/browse/HDFS-2223) | Untangle depencencies between NN components |  Major | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-1580](https://issues.apache.org/jira/browse/HDFS-1580) | Add interface for generic Write Ahead Logging mechanisms |  Major | namenode | Ivan Kelly | Jitendra Nath Pandey |
| [MAPREDUCE-4219](https://issues.apache.org/jira/browse/MAPREDUCE-4219) | make default container-executor.conf.dir be a path relative to the container-executor binary |  Major | security | Roman Shaposhnik | Roman Shaposhnik |
| [MAPREDUCE-4103](https://issues.apache.org/jira/browse/MAPREDUCE-4103) | Fix HA docs for changes to shell command fencer args |  Major | documentation | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-4093](https://issues.apache.org/jira/browse/MAPREDUCE-4093) | Improve RM WebApp start up when proxy address is not set |  Major | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-3991](https://issues.apache.org/jira/browse/MAPREDUCE-3991) | Streaming FAQ has some wrong instructions about input files splitting |  Trivial | documentation | Harsh J | Harsh J |
| [MAPREDUCE-3955](https://issues.apache.org/jira/browse/MAPREDUCE-3955) | Replace ProtoOverHadoopRpcEngine with ProtobufRpcEngine. |  Blocker | mrv2 | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [MAPREDUCE-3909](https://issues.apache.org/jira/browse/MAPREDUCE-3909) | javadoc the Service interfaces |  Trivial | mrv2 | Steve Loughran | Steve Loughran |
| [MAPREDUCE-3885](https://issues.apache.org/jira/browse/MAPREDUCE-3885) | Apply the fix similar to HADOOP-8084 |  Major | mrv2 | Devaraj Das | Devaraj Das |
| [MAPREDUCE-3883](https://issues.apache.org/jira/browse/MAPREDUCE-3883) | Document yarn.nodemanager.delete.debug-delay-sec configuration property |  Minor | documentation, mrv2 | Eugene Koontz | Eugene Koontz |
| [MAPREDUCE-2934](https://issues.apache.org/jira/browse/MAPREDUCE-2934) | MR portion of HADOOP-7607 - Simplify the RPC proxy cleanup process |  Major | mrv2 | Aaron T. Myers | Aaron T. Myers |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8355](https://issues.apache.org/jira/browse/HADOOP-8355) | SPNEGO filter throws/logs exception when authentication fails |  Minor | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8349](https://issues.apache.org/jira/browse/HADOOP-8349) | ViewFS doesn't work when the root of a file system is mounted |  Major | viewfs | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8347](https://issues.apache.org/jira/browse/HADOOP-8347) | Hadoop Common logs misspell 'successful' |  Major | security | Philip Zeyliger | Philip Zeyliger |
| [HADOOP-8314](https://issues.apache.org/jira/browse/HADOOP-8314) | HttpServer#hasAdminAccess should return false if authorization is enabled but user is not authenticated |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8310](https://issues.apache.org/jira/browse/HADOOP-8310) | FileContext#checkPath should handle URIs with no port |  Major | fs | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8309](https://issues.apache.org/jira/browse/HADOOP-8309) | Pseudo & Kerberos AuthenticationHandler should use getType() to create token |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8282](https://issues.apache.org/jira/browse/HADOOP-8282) | start-all.sh refers incorrectly start-dfs.sh existence for starting start-yarn.sh |  Minor | scripts | Devaraj K | Devaraj K |
| [HADOOP-8270](https://issues.apache.org/jira/browse/HADOOP-8270) | hadoop-daemon.sh stop action should return 0 for an already stopped service |  Minor | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-8263](https://issues.apache.org/jira/browse/HADOOP-8263) | Stringification of IPC calls not useful |  Minor | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-8261](https://issues.apache.org/jira/browse/HADOOP-8261) | Har file system doesn't deal with FS URIs with a host but no port |  Major | fs | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8251](https://issues.apache.org/jira/browse/HADOOP-8251) | SecurityUtil.fetchServiceTicket broken after HADOOP-6941 |  Blocker | security | Todd Lipcon | Todd Lipcon |
| [HADOOP-8243](https://issues.apache.org/jira/browse/HADOOP-8243) | Security support broken in CLI (manual) failover controller |  Critical | ha, security | Todd Lipcon | Todd Lipcon |
| [HADOOP-8218](https://issues.apache.org/jira/browse/HADOOP-8218) | RPC.closeProxy shouldn't throw error when closing a mock |  Critical | ipc, test | Todd Lipcon | Todd Lipcon |
| [HADOOP-8202](https://issues.apache.org/jira/browse/HADOOP-8202) | stopproxy() is not closing the proxies correctly |  Minor | ipc | Hari Mankude | Hari Mankude |
| [HADOOP-8191](https://issues.apache.org/jira/browse/HADOOP-8191) | SshFenceByTcpPort uses netcat incorrectly |  Major | ha | Philip Zeyliger | Todd Lipcon |
| [HADOOP-8189](https://issues.apache.org/jira/browse/HADOOP-8189) | LdapGroupsMapping shouldn't throw away IOException |  Major | security | Jonathan Natkins | Jonathan Natkins |
| [HADOOP-8169](https://issues.apache.org/jira/browse/HADOOP-8169) | javadoc generation fails with java.lang.OutOfMemoryError: Java heap space |  Critical | build | Thomas Graves | Thomas Graves |
| [HADOOP-8154](https://issues.apache.org/jira/browse/HADOOP-8154) | DNS#getIPs shouldn't silently return the local host IP for bogus interface names |  Major | conf | Eli Collins | Eli Collins |
| [HADOOP-8119](https://issues.apache.org/jira/browse/HADOOP-8119) | Fix javac warnings in TestAuthenticationFilter |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-7968](https://issues.apache.org/jira/browse/HADOOP-7968) | Errant println left in RPC.getHighestSupportedProtocol |  Minor | ipc | Todd Lipcon | Sho Shimauchi |
| [HADOOP-7940](https://issues.apache.org/jira/browse/HADOOP-7940) | method clear() in org.apache.hadoop.io.Text does not work |  Major | io | Aaron, | Csaba Miklos |
| [HADOOP-7931](https://issues.apache.org/jira/browse/HADOOP-7931) | o.a.h.ipc.WritableRpcEngine should have a way to force initialization |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7920](https://issues.apache.org/jira/browse/HADOOP-7920) | Remove Avro RPC |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7900](https://issues.apache.org/jira/browse/HADOOP-7900) | LocalDirAllocator confChanged() accesses conf.get() twice |  Major | fs | Ravi Gummadi | Ravi Gummadi |
| [HADOOP-7897](https://issues.apache.org/jira/browse/HADOOP-7897) | ProtobufRPCEngine client side exception mechanism is not consistent with WritableRpcEngine |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7892](https://issues.apache.org/jira/browse/HADOOP-7892) | IPC logs too verbose after "RpcKind" introduction |  Trivial | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-7888](https://issues.apache.org/jira/browse/HADOOP-7888) | TestFailoverProxy fails intermittently on trunk |  Major | test | Jason Lowe | Jason Lowe |
| [HADOOP-7833](https://issues.apache.org/jira/browse/HADOOP-7833) | Inner classes of org.apache.hadoop.ipc.protobuf.HadoopRpcProtos generates findbugs warnings which results in -1 for findbugs |  Major | ipc | John Lee | John Lee |
| [HADOOP-7695](https://issues.apache.org/jira/browse/HADOOP-7695) | RPC.stopProxy can throw unintended exception while logging error |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3396](https://issues.apache.org/jira/browse/HDFS-3396) | FUSE build fails on Ubuntu 12.04 |  Minor | fuse-dfs | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-3395](https://issues.apache.org/jira/browse/HDFS-3395) | NN doesn't start with HA+security enabled and HTTP address set to 0.0.0.0 |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3376](https://issues.apache.org/jira/browse/HDFS-3376) | DFSClient fails to make connection to DN if there are many unusable cached sockets |  Critical | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-3357](https://issues.apache.org/jira/browse/HDFS-3357) | DataXceiver reads from client socket with incorrect/no timeout |  Critical | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-3351](https://issues.apache.org/jira/browse/HDFS-3351) | NameNode#initializeGenericKeys should always set fs.defaultFS regardless of whether HA or Federation is enabled |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3350](https://issues.apache.org/jira/browse/HDFS-3350) | findbugs warning: INodeFileUnderConstruction doesn't override INodeFile.equals(Object) |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3336](https://issues.apache.org/jira/browse/HDFS-3336) | hdfs launcher script will be better off not special casing namenode command with regards to hadoop.security.logger |  Minor | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HDFS-3332](https://issues.apache.org/jira/browse/HDFS-3332) | NullPointerException in DN when directoryscanner is trying to report bad blocks |  Major | datanode | amith | amith |
| [HDFS-3330](https://issues.apache.org/jira/browse/HDFS-3330) | If GetImageServlet throws an Error or RTE, response has HTTP "OK" status |  Critical | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3328](https://issues.apache.org/jira/browse/HDFS-3328) | NPE in DataNode.getIpcPort |  Minor | datanode | Uma Maheswara Rao G | Eli Collins |
| [HDFS-3326](https://issues.apache.org/jira/browse/HDFS-3326) | Append enabled log message uses the wrong variable |  Trivial | namenode | J.Andreina | Matthew Jacobs |
| [HDFS-3305](https://issues.apache.org/jira/browse/HDFS-3305) | GetImageServlet should consider SBN a valid requestor in a secure HA setup |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3303](https://issues.apache.org/jira/browse/HDFS-3303) | RemoteEditLogManifest doesn't need to implements Writable |  Minor | namenode | Brandon Li | Brandon Li |
| [HDFS-3286](https://issues.apache.org/jira/browse/HDFS-3286) | When the threshold value for balancer is 0(zero) ,unexpected output is displayed |  Major | balancer & mover | J.Andreina | Ashish Singhi |
| [HDFS-3284](https://issues.apache.org/jira/browse/HDFS-3284) | bootstrapStandby fails in secure cluster |  Minor | ha, security | Todd Lipcon | Todd Lipcon |
| [HDFS-3280](https://issues.apache.org/jira/browse/HDFS-3280) | DFSOutputStream.sync should not be synchronized |  Critical | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-3268](https://issues.apache.org/jira/browse/HDFS-3268) | Hdfs mishandles token service & incompatible with HA |  Critical | ha, hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-3255](https://issues.apache.org/jira/browse/HDFS-3255) | HA DFS returns wrong token service |  Critical | ha, hdfs-client | Daryn Sharp | Daryn Sharp |
| [HDFS-3254](https://issues.apache.org/jira/browse/HDFS-3254) | Branch-2 build broken due to wrong version number in fuse-dfs' pom.xml |  Major | fuse-dfs | Anupam Seth | Anupam Seth |
| [HDFS-3236](https://issues.apache.org/jira/browse/HDFS-3236) | NameNode does not initialize generic conf keys when started with -initializeSharedEditsDir |  Minor | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3234](https://issues.apache.org/jira/browse/HDFS-3234) | Accidentally left log message in GetConf after HDFS-3226 |  Trivial | tools | Todd Lipcon | Todd Lipcon |
| [HDFS-3222](https://issues.apache.org/jira/browse/HDFS-3222) | DFSInputStream#openInfo should not silently get the length as 0 when locations length is zero for last partial block. |  Major | hdfs-client | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-3214](https://issues.apache.org/jira/browse/HDFS-3214) | InterDatanodeProtocolServerSideTranslatorPB doesn't handle null response from initReplicaRecovery |  Blocker | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-3208](https://issues.apache.org/jira/browse/HDFS-3208) | Bogus entries in hosts files are incorrectly displayed in the report |  Major | namenode | Eli Collins | Eli Collins |
| [HDFS-3202](https://issues.apache.org/jira/browse/HDFS-3202) | NamespaceInfo PB translation drops build version |  Major | datanode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3181](https://issues.apache.org/jira/browse/HDFS-3181) | testHardLeaseRecoveryAfterNameNodeRestart fails when length before restart is 1 byte less than CRC chunk size |  Minor | test | Colin Patrick McCabe | Tsz Wo Nicholas Sze |
| [HDFS-3156](https://issues.apache.org/jira/browse/HDFS-3156) | TestDFSHAAdmin is failing post HADOOP-8202 |  Major | test | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3143](https://issues.apache.org/jira/browse/HDFS-3143) | TestGetBlocks.testGetBlocks is failing |  Major | test | Eli Collins | Arpit Gupta |
| [HDFS-3142](https://issues.apache.org/jira/browse/HDFS-3142) | TestHDFSCLI.testAll is failing |  Blocker | test | Eli Collins | Brandon Li |
| [HDFS-3132](https://issues.apache.org/jira/browse/HDFS-3132) | Findbugs warning on HDFS trunk |  Minor | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3119](https://issues.apache.org/jira/browse/HDFS-3119) | Overreplicated block is not deleted even after the replication factor is reduced after sync follwed by closing that file |  Minor | namenode | J.Andreina | Ashish Singhi |
| [HDFS-3100](https://issues.apache.org/jira/browse/HDFS-3100) | failed to append data |  Major | datanode | Zhanwei Wang | Brandon Li |
| [HDFS-3099](https://issues.apache.org/jira/browse/HDFS-3099) | SecondaryNameNode does not properly initialize metrics system |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3083](https://issues.apache.org/jira/browse/HDFS-3083) | Cannot run an MR job with HA and security enabled when second-listed NN active |  Critical | ha, security | Mingjie Lai | Aaron T. Myers |
| [HDFS-3070](https://issues.apache.org/jira/browse/HDFS-3070) | HDFS balancer doesn't ensure that hdfs-site.xml is loaded |  Major | balancer & mover | Stephen Chu | Aaron T. Myers |
| [HDFS-3062](https://issues.apache.org/jira/browse/HDFS-3062) | Fail to submit mapred job on a secured-HA-HDFS: logic URI cannot be picked up by job submission. |  Critical | ha, security | Mingjie Lai | Mingjie Lai |
| [HDFS-3057](https://issues.apache.org/jira/browse/HDFS-3057) | httpfs and hdfs launcher scripts should honor CATALINA\_HOME and HADOOP\_LIBEXEC\_DIR |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HDFS-3026](https://issues.apache.org/jira/browse/HDFS-3026) | HA: Handle failure during HA state transition |  Major | ha, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3020](https://issues.apache.org/jira/browse/HDFS-3020) | Auto-logSync based on edit log buffer size broken |  Critical | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-3005](https://issues.apache.org/jira/browse/HDFS-3005) | ConcurrentModificationException in FSDataset$FSVolume.getDfsUsed(..) |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2995](https://issues.apache.org/jira/browse/HDFS-2995) | start-dfs.sh should only start the 2NN for namenodes with dfs.namenode.secondary.http-address configured |  Major | scripts | Todd Lipcon | Eli Collins |
| [HDFS-2968](https://issues.apache.org/jira/browse/HDFS-2968) | Protocol translator for BlockRecoveryCommand broken when multiple blocks need recovery |  Blocker | datanode, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-2878](https://issues.apache.org/jira/browse/HDFS-2878) | TestBlockRecovery does not compile |  Blocker | test | Eli Collins | Todd Lipcon |
| [HDFS-2799](https://issues.apache.org/jira/browse/HDFS-2799) | Trim fs.checkpoint.dir values |  Major | namenode | Eli Collins | amith |
| [HDFS-2768](https://issues.apache.org/jira/browse/HDFS-2768) | BackupNode stop can not close proxy connections because it is not a proxy instance. |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-2765](https://issues.apache.org/jira/browse/HDFS-2765) | TestNameEditsConfigs is incorrectly swallowing IOE |  Major | test | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2696](https://issues.apache.org/jira/browse/HDFS-2696) | Fix the fuse-fds build |  Major | build, fuse-dfs | Petru Dimulescu | Bruno Mahé |
| [HDFS-2694](https://issues.apache.org/jira/browse/HDFS-2694) | Removal of Avro broke non-PB NN services |  Major | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2532](https://issues.apache.org/jira/browse/HDFS-2532) | TestDfsOverAvroRpc timing out in trunk |  Critical | test | Todd Lipcon | Uma Maheswara Rao G |
| [HDFS-2526](https://issues.apache.org/jira/browse/HDFS-2526) | (Client)NamenodeProtocolTranslatorR23 do not need to keep a reference to rpcProxyWithoutRetry |  Major | hdfs-client, namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2405](https://issues.apache.org/jira/browse/HDFS-2405) | hadoop dfs command with webhdfs fails on secure hadoop |  Critical | webhdfs | Arpit Gupta | Jitendra Nath Pandey |
| [HDFS-1765](https://issues.apache.org/jira/browse/HDFS-1765) | Block Replication should respect under-replication block priority |  Major | namenode | Hairong Kuang | Uma Maheswara Rao G |
| [HDFS-891](https://issues.apache.org/jira/browse/HDFS-891) | DataNode no longer needs to check for dfs.network.script |  Minor | datanode | Steve Loughran | Harsh J |
| [MAPREDUCE-4231](https://issues.apache.org/jira/browse/MAPREDUCE-4231) | Update RAID to not to use FSInodeInfo |  Major | contrib/raid | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-4202](https://issues.apache.org/jira/browse/MAPREDUCE-4202) | TestYarnClientProtocolProvider is broken |  Major | test | Daryn Sharp | Daryn Sharp |
| [MAPREDUCE-4193](https://issues.apache.org/jira/browse/MAPREDUCE-4193) | broken doc link for yarn-default.xml in site.xml |  Major | documentation | Patrick Hunt | Patrick Hunt |
| [MAPREDUCE-4105](https://issues.apache.org/jira/browse/MAPREDUCE-4105) | Yarn RackResolver ignores rack configurations |  Major | mrv2 | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-4098](https://issues.apache.org/jira/browse/MAPREDUCE-4098) | TestMRApps testSetClasspath fails |  Major | test | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-4081](https://issues.apache.org/jira/browse/MAPREDUCE-4081) | TestMROutputFormat.java does not compile |  Blocker | build, mrv2 | Jason Lowe | Jason Lowe |
| [MAPREDUCE-4076](https://issues.apache.org/jira/browse/MAPREDUCE-4076) | Stream job fails with ZipException when use yarn jar command |  Blocker | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-4066](https://issues.apache.org/jira/browse/MAPREDUCE-4066) | To get "yarn.app.mapreduce.am.staging-dir" value, should set the default value |  Minor | job submission, mrv2 | xieguiming | xieguiming |
| [MAPREDUCE-4057](https://issues.apache.org/jira/browse/MAPREDUCE-4057) | Compilation error in RAID |  Major | contrib/raid | Tsz Wo Nicholas Sze | Devaraj K |
| [MAPREDUCE-4008](https://issues.apache.org/jira/browse/MAPREDUCE-4008) | ResourceManager throws MetricsException on start up saying QueueMetrics MBean already exists |  Major | mrv2, scheduler | Devaraj K | Devaraj K |
| [MAPREDUCE-4007](https://issues.apache.org/jira/browse/MAPREDUCE-4007) | JobClient getJob(JobID) should return NULL if the job does not exist (for backwards compatibility) |  Major | mrv2 | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-3958](https://issues.apache.org/jira/browse/MAPREDUCE-3958) | RM: Remove RMNodeState and replace it with NodeState |  Major | mrv2 | Bikas Saha | Bikas Saha |
| [MAPREDUCE-3952](https://issues.apache.org/jira/browse/MAPREDUCE-3952) | In MR2, when Total input paths to process == 1, CombinefileInputFormat.getSplits() returns 0 split. |  Major | mrv2 | Zhenxiao Luo | Bhallamudi Venkata Siva Kamesh |
| [MAPREDUCE-3933](https://issues.apache.org/jira/browse/MAPREDUCE-3933) | Failures because MALLOC\_ARENA\_MAX is not set |  Major | mrv2, test | Ahmed Radwan | Ahmed Radwan |
| [MAPREDUCE-3916](https://issues.apache.org/jira/browse/MAPREDUCE-3916) | various issues with running yarn proxyserver |  Critical | mrv2, resourcemanager, webapps | Roman Shaposhnik | Devaraj K |
| [MAPREDUCE-3869](https://issues.apache.org/jira/browse/MAPREDUCE-3869) | Distributed shell application fails with NoClassDefFoundError |  Blocker | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-3867](https://issues.apache.org/jira/browse/MAPREDUCE-3867) | MiniMRYarn/MiniYarn uses fixed ports |  Major | test | Alejandro Abdelnur | Alejandro Abdelnur |
| [MAPREDUCE-3818](https://issues.apache.org/jira/browse/MAPREDUCE-3818) | Trunk MRV1 compilation is broken. |  Blocker | build, test | Vinod Kumar Vavilapalli | Suresh Srinivas |
| [MAPREDUCE-3740](https://issues.apache.org/jira/browse/MAPREDUCE-3740) | Mapreduce Trunk compilation fails |  Blocker | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-3578](https://issues.apache.org/jira/browse/MAPREDUCE-3578) | starting nodemanager as 'root' gives "Unknown -jvm option" |  Major | nodemanager | Gilad Wolff | Tom White |
| [MAPREDUCE-3431](https://issues.apache.org/jira/browse/MAPREDUCE-3431) | NPE in Resource Manager shutdown |  Minor | resourcemanager | Steve Loughran | Steve Loughran |
| [MAPREDUCE-3353](https://issues.apache.org/jira/browse/MAPREDUCE-3353) | Need a RM-\>AM channel to inform AMs about faulty/unhealthy/lost nodes |  Major | applicationmaster, mrv2, resourcemanager | Vinod Kumar Vavilapalli | Bikas Saha |
| [MAPREDUCE-3173](https://issues.apache.org/jira/browse/MAPREDUCE-3173) | MRV2 UI doesn't work properly without internet |  Critical | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-1740](https://issues.apache.org/jira/browse/MAPREDUCE-1740) | NPE in getMatchingLevelForNodes when node locations are variable depth |  Major | jobtracker | Todd Lipcon | Ahmed Radwan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8211](https://issues.apache.org/jira/browse/HADOOP-8211) | Update commons-net version to 3.1 |  Major | io, performance | Eli Collins | Eli Collins |
| [HADOOP-8210](https://issues.apache.org/jira/browse/HADOOP-8210) | Common side of HDFS-3148 |  Major | io, performance | Eli Collins | Eli Collins |
| [HADOOP-7965](https://issues.apache.org/jira/browse/HADOOP-7965) | Support for protocol version and signature in PB |  Major | ipc | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-7913](https://issues.apache.org/jira/browse/HADOOP-7913) | Fix bug in ProtoBufRpcEngine - |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-7862](https://issues.apache.org/jira/browse/HADOOP-7862) | Move the support for multiple protocols to lower layer so that Writable, PB and Avro can all use it |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-7776](https://issues.apache.org/jira/browse/HADOOP-7776) | Make the Ipc-Header in a RPC-Payload an explicit header |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-7773](https://issues.apache.org/jira/browse/HADOOP-7773) | Add support for protocol buffer based RPC engine |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7524](https://issues.apache.org/jira/browse/HADOOP-7524) | Change RPC to allow multiple protocols including multiple versions of the same protocol |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HDFS-3363](https://issues.apache.org/jira/browse/HDFS-3363) | blockmanagement should stop using INodeFile & INodeFileUC |  Minor | namenode | John George | John George |
| [HDFS-3339](https://issues.apache.org/jira/browse/HDFS-3339) | change INode to package private |  Minor | namenode | John George | John George |
| [HDFS-3322](https://issues.apache.org/jira/browse/HDFS-3322) | Update file context to use HdfsDataInputStream and HdfsDataOutputStream |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3298](https://issues.apache.org/jira/browse/HDFS-3298) | Add HdfsDataOutputStream as a public API |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3282](https://issues.apache.org/jira/browse/HDFS-3282) | Add HdfsDataInputStream as a public API |  Major | hdfs-client | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-3211](https://issues.apache.org/jira/browse/HDFS-3211) | JournalProtocol changes required for introducing epoch and fencing |  Major | ha, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-3187](https://issues.apache.org/jira/browse/HDFS-3187) | Upgrade guava to 11.0.2 |  Minor | build | Todd Lipcon | Todd Lipcon |
| [HDFS-3155](https://issues.apache.org/jira/browse/HDFS-3155) | Clean up FSDataset implemenation related code. |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3130](https://issues.apache.org/jira/browse/HDFS-3130) | Move FSDataset implemenation to a package |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3126](https://issues.apache.org/jira/browse/HDFS-3126) | Journal stream from the namenode to backup needs to have a timeout |  Major | ha, namenode | Hari Mankude | Hari Mankude |
| [HDFS-3105](https://issues.apache.org/jira/browse/HDFS-3105) | Add DatanodeStorage information to block recovery |  Major | datanode, hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3089](https://issues.apache.org/jira/browse/HDFS-3089) | Move FSDatasetInterface and other related classes/interfaces to a package |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3088](https://issues.apache.org/jira/browse/HDFS-3088) | Move FSDatasetInterface inner classes to a package |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3086](https://issues.apache.org/jira/browse/HDFS-3086) | Change Datanode not to send storage list in registration - it will be sent in block report |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3082](https://issues.apache.org/jira/browse/HDFS-3082) | Clean up FSDatasetInterface |  Major | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2880](https://issues.apache.org/jira/browse/HDFS-2880) | Protocol buffer changes to add support multiple storages |  Major | datanode, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2687](https://issues.apache.org/jira/browse/HDFS-2687) | Tests are failing with ClassCastException, due to new protocol changes |  Major | test | Uma Maheswara Rao G | Suresh Srinivas |
| [HDFS-2666](https://issues.apache.org/jira/browse/HDFS-2666) | TestBackupNode fails |  Major | test | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2647](https://issues.apache.org/jira/browse/HDFS-2647) | Enable protobuf RPC for InterDatanodeProtocol, ClientDatanodeProtocol, JournalProtocol and NamenodeProtocol |  Major | balancer & mover, datanode, hdfs-client, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2629](https://issues.apache.org/jira/browse/HDFS-2629) | Implement protobuf service for InterDatanodeProtocol |  Major | datanode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2618](https://issues.apache.org/jira/browse/HDFS-2618) | Implement protobuf service for NamenodeProtocol |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2581](https://issues.apache.org/jira/browse/HDFS-2581) | Implement protobuf service for JournalProtocol |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2520](https://issues.apache.org/jira/browse/HDFS-2520) | Protobuf - Add protobuf service for InterDatanodeProtocol |  Major | datanode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2519](https://issues.apache.org/jira/browse/HDFS-2519) | Protobuf - Add protobuf service for DatanodeProtocol |  Major | datanode, namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2518](https://issues.apache.org/jira/browse/HDFS-2518) | Protobuf - Add protobuf service for NamenodeProtocol |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2517](https://issues.apache.org/jira/browse/HDFS-2517) | Protobuf - Add protocol service for JournalProtocol |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2499](https://issues.apache.org/jira/browse/HDFS-2499) | Fix RPC client creation bug from HDFS-2459 |  Major | namenode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2495](https://issues.apache.org/jira/browse/HDFS-2495) | Increase granularity of write operations in ReplicationMonitor thus reducing contention for write lock |  Major | namenode | Tomasz Nykiel | Tomasz Nykiel |
| [HDFS-2488](https://issues.apache.org/jira/browse/HDFS-2488) | Separate datatypes for InterDatanodeProtocol |  Major | datanode | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2477](https://issues.apache.org/jira/browse/HDFS-2477) | Optimize computing the diff between a block report and the namenode state. |  Major | namenode | Tomasz Nykiel | Tomasz Nykiel |
| [HDFS-2476](https://issues.apache.org/jira/browse/HDFS-2476) | More CPU efficient data structure for under-replicated/over-replicated/invalidate blocks |  Major | namenode | Tomasz Nykiel | Tomasz Nykiel |
| [HDFS-2334](https://issues.apache.org/jira/browse/HDFS-2334) | Add Closeable to JournalManager |  Major | namenode | Ivan Kelly | Ivan Kelly |
| [HDFS-395](https://issues.apache.org/jira/browse/HDFS-395) | DFS Scalability: Incremental block reports |  Major | datanode, namenode | dhruba borthakur | Tomasz Nykiel |
| [MAPREDUCE-4113](https://issues.apache.org/jira/browse/MAPREDUCE-4113) | Fix tests org.apache.hadoop.mapred.TestClusterMRNotification |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4112](https://issues.apache.org/jira/browse/MAPREDUCE-4112) | Fix tests org.apache.hadoop.mapred.TestClusterMapReduceTestCase |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4111](https://issues.apache.org/jira/browse/MAPREDUCE-4111) | Fix tests in org.apache.hadoop.mapred.TestJobName |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4110](https://issues.apache.org/jira/browse/MAPREDUCE-4110) | Fix tests in org.apache.hadoop.mapred.TestMiniMRClasspath & org.apache.hadoop.mapred.TestMiniMRWithDFSWithDistinctUsers |  Major | mrv2, test | Devaraj K | Devaraj K |
| [MAPREDUCE-4108](https://issues.apache.org/jira/browse/MAPREDUCE-4108) | Fix tests in org.apache.hadoop.util.TestRunJar |  Major | mrv2 | Devaraj K | Devaraj K |
| [MAPREDUCE-4107](https://issues.apache.org/jira/browse/MAPREDUCE-4107) | Fix tests in org.apache.hadoop.ipc.TestSocketFactory |  Major | mrv2 | Devaraj K | Devaraj K |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-860](https://issues.apache.org/jira/browse/HDFS-860) | fuse-dfs truncate behavior causes issues with scp |  Minor | fuse-dfs | Brian Bockelman | Brian Bockelman |
| [HADOOP-8359](https://issues.apache.org/jira/browse/HADOOP-8359) | Clear up javadoc warnings in hadoop-common-project |  Trivial | conf | Harsh J | Anupam Seth |
| [HADOOP-8142](https://issues.apache.org/jira/browse/HADOOP-8142) | Update versions from 0.23.2 to 0.23.3 |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |


