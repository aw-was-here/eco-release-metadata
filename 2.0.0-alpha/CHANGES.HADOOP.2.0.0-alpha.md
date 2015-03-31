# Hadoop Changelog

## Release 2.0.0-alpha - 2012-05-23

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8314](https://issues.apache.org/jira/browse/HADOOP-8314) | HttpServer#hasAdminAccess should return false if authorization is enabled but user is not authenticated |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8270](https://issues.apache.org/jira/browse/HADOOP-8270) | hadoop-daemon.sh stop action should return 0 for an already stopped service |  Minor | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HADOOP-8184](https://issues.apache.org/jira/browse/HADOOP-8184) | ProtoBuf RPC engine does not need it own reply packet - it can use the IPC layer reply packet. |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-8154](https://issues.apache.org/jira/browse/HADOOP-8154) | DNS#getIPs shouldn't silently return the local host IP for bogus interface names |  Major | conf | Eli Collins | Eli Collins |
| [HADOOP-8149](https://issues.apache.org/jira/browse/HADOOP-8149) | cap space usage of default log4j rolling policy |  Major | conf | Patrick Hunt | Patrick Hunt |
| [HADOOP-7524](https://issues.apache.org/jira/browse/HADOOP-7524) | Change RPC to allow multiple protocols including multiple versions of the same protocol |  Major | ipc | Sanjay Radia | Sanjay Radia |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8343](https://issues.apache.org/jira/browse/HADOOP-8343) | Allow configuration of authorization for JmxJsonServlet and MetricsServlet |  Major | util | Philip Zeyliger | Alejandro Abdelnur |
| [HADOOP-8206](https://issues.apache.org/jira/browse/HADOOP-8206) | Common portion of ZK-based failover controller |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HADOOP-8121](https://issues.apache.org/jira/browse/HADOOP-8121) | Active Directory Group Mapping Service |  Major | security | Jonathan Natkins | Jonathan Natkins |
| [HADOOP-7876](https://issues.apache.org/jira/browse/HADOOP-7876) | Allow access to BlockKey/DelegationKey encoded key for RPC over protobuf |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7806](https://issues.apache.org/jira/browse/HADOOP-7806) | Support binding to sub-interfaces |  Major | util | Harsh J | Harsh J |
| [HADOOP-7454](https://issues.apache.org/jira/browse/HADOOP-7454) | Common side of High Availability Framework (HDFS-1623) |  Major | . | Aaron T. Myers |  |
| [HADOOP-7030](https://issues.apache.org/jira/browse/HADOOP-7030) | Add TableMapping topology implementation to read host to rack mapping from a file |  Major | . | Patrick Angeles | Tom White |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8366](https://issues.apache.org/jira/browse/HADOOP-8366) | Use ProtoBuf for RpcResponseHeader |  Blocker | . | Sanjay Radia | Sanjay Radia |
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
| [HADOOP-8183](https://issues.apache.org/jira/browse/HADOOP-8183) | Stop using "mapred.used.genericoptionsparser" to avoid unnecessary warnings |  Minor | util | Harsh J | Harsh J |
| [HADOOP-8163](https://issues.apache.org/jira/browse/HADOOP-8163) | Improve ActiveStandbyElector to provide hooks for fencing old active |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HADOOP-8152](https://issues.apache.org/jira/browse/HADOOP-8152) | Expand public APIs for security library classes |  Major | security | Aaron T. Myers | Aaron T. Myers |
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
| [HADOOP-7957](https://issues.apache.org/jira/browse/HADOOP-7957) | Classes deriving GetGroupsBase should be able to override proxy creation. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-7899](https://issues.apache.org/jira/browse/HADOOP-7899) | Generate proto java files as part of the build |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-7875](https://issues.apache.org/jira/browse/HADOOP-7875) | Add helper class to unwrap RemoteException from ServiceException thrown on protobuf based RPC |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7729](https://issues.apache.org/jira/browse/HADOOP-7729) | Send back valid HTTP response if user hits IPC port with HTTP GET |  Major | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-7727](https://issues.apache.org/jira/browse/HADOOP-7727) | fix some typos and tabs in CHANGES.TXT |  Trivial | build | Steve Loughran | Steve Loughran |
| [HADOOP-7717](https://issues.apache.org/jira/browse/HADOOP-7717) | Move handling of concurrent client fail-overs to RetryInvocationHandler |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7716](https://issues.apache.org/jira/browse/HADOOP-7716) | RPC protocol registration on SS does not log the protocol name (only the class which may be different) |  Minor | . | Sanjay Radia | Sanjay Radia |
| [HADOOP-7693](https://issues.apache.org/jira/browse/HADOOP-7693) | fix RPC.Server#addProtocol to work in AvroRpcEngine |  Major | ipc | Doug Cutting | Doug Cutting |
| [HADOOP-7687](https://issues.apache.org/jira/browse/HADOOP-7687) | Make getProtocolSignature public |  Minor | . | Sanjay Radia | Sanjay Radia |
| [HADOOP-7635](https://issues.apache.org/jira/browse/HADOOP-7635) | RetryInvocationHandler should release underlying resources on close |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7607](https://issues.apache.org/jira/browse/HADOOP-7607) | Simplify the RPC proxy cleanup process |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7549](https://issues.apache.org/jira/browse/HADOOP-7549) | Use JDK ServiceLoader mechanism to find FileSystem implementations |  Major | fs | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-7350](https://issues.apache.org/jira/browse/HADOOP-7350) | Use ServiceLoader to discover compression codec classes |  Major | conf, io | Tom White | Tom White |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8355](https://issues.apache.org/jira/browse/HADOOP-8355) | SPNEGO filter throws/logs exception when authentication fails |  Minor | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8349](https://issues.apache.org/jira/browse/HADOOP-8349) | ViewFS doesn't work when the root of a file system is mounted |  Major | viewfs | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8347](https://issues.apache.org/jira/browse/HADOOP-8347) | Hadoop Common logs misspell 'successful' |  Major | security | Philip Zeyliger | Philip Zeyliger |
| [HADOOP-8310](https://issues.apache.org/jira/browse/HADOOP-8310) | FileContext#checkPath should handle URIs with no port |  Major | fs | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8309](https://issues.apache.org/jira/browse/HADOOP-8309) | Pseudo & Kerberos AuthenticationHandler should use getType() to create token |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8296](https://issues.apache.org/jira/browse/HADOOP-8296) | hadoop/yarn daemonlog usage wrong |  Minor | . | Thomas Graves | Devaraj K |
| [HADOOP-8282](https://issues.apache.org/jira/browse/HADOOP-8282) | start-all.sh refers incorrectly start-dfs.sh existence for starting start-yarn.sh |  Minor | scripts | Devaraj K | Devaraj K |
| [HADOOP-8275](https://issues.apache.org/jira/browse/HADOOP-8275) | Range check DelegationKey length |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8264](https://issues.apache.org/jira/browse/HADOOP-8264) | Remove irritating double double quotes in front of hostname |  Trivial | . | Bernd Fondermann | Bernd Fondermann |
| [HADOOP-8263](https://issues.apache.org/jira/browse/HADOOP-8263) | Stringification of IPC calls not useful |  Minor | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-8261](https://issues.apache.org/jira/browse/HADOOP-8261) | Har file system doesn't deal with FS URIs with a host but no port |  Major | fs | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8251](https://issues.apache.org/jira/browse/HADOOP-8251) | SecurityUtil.fetchServiceTicket broken after HADOOP-6941 |  Blocker | security | Todd Lipcon | Todd Lipcon |
| [HADOOP-8243](https://issues.apache.org/jira/browse/HADOOP-8243) | Security support broken in CLI (manual) failover controller |  Critical | ha, security | Todd Lipcon | Todd Lipcon |
| [HADOOP-8238](https://issues.apache.org/jira/browse/HADOOP-8238) | NetUtils#getHostNameOfIP blows up if given ip:port string w/o port |  Major | . | Eli Collins | Eli Collins |
| [HADOOP-8218](https://issues.apache.org/jira/browse/HADOOP-8218) | RPC.closeProxy shouldn't throw error when closing a mock |  Critical | ipc, test | Todd Lipcon | Todd Lipcon |
| [HADOOP-8204](https://issues.apache.org/jira/browse/HADOOP-8204) | TestHealthMonitor fails occasionally |  Major | . | Tom White | Todd Lipcon |
| [HADOOP-8202](https://issues.apache.org/jira/browse/HADOOP-8202) | stopproxy() is not closing the proxies correctly |  Minor | ipc | Hari Mankude | Hari Mankude |
| [HADOOP-8199](https://issues.apache.org/jira/browse/HADOOP-8199) | Fix issues in start-all.sh and stop-all.sh |  Major | . | Nishan Shetty | Devaraj K |
| [HADOOP-8191](https://issues.apache.org/jira/browse/HADOOP-8191) | SshFenceByTcpPort uses netcat incorrectly |  Major | ha | Philip Zeyliger | Todd Lipcon |
| [HADOOP-8189](https://issues.apache.org/jira/browse/HADOOP-8189) | LdapGroupsMapping shouldn't throw away IOException |  Major | security | Jonathan Natkins | Jonathan Natkins |
| [HADOOP-8169](https://issues.apache.org/jira/browse/HADOOP-8169) | javadoc generation fails with java.lang.OutOfMemoryError: Java heap space |  Critical | build | Thomas Graves | Thomas Graves |
| [HADOOP-8159](https://issues.apache.org/jira/browse/HADOOP-8159) | NetworkTopology: getLeaf should check for invalid topologies |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8119](https://issues.apache.org/jira/browse/HADOOP-8119) | Fix javac warnings in TestAuthenticationFilter |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-7988](https://issues.apache.org/jira/browse/HADOOP-7988) | Upper case in hostname part of the principals doesn't work with kerberos. |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-7968](https://issues.apache.org/jira/browse/HADOOP-7968) | Errant println left in RPC.getHighestSupportedProtocol |  Minor | ipc | Todd Lipcon | Sho Shimauchi |
| [HADOOP-7940](https://issues.apache.org/jira/browse/HADOOP-7940) | method clear() in org.apache.hadoop.io.Text does not work |  Major | io | Aaron, | Csaba Miklos |
| [HADOOP-7931](https://issues.apache.org/jira/browse/HADOOP-7931) | o.a.h.ipc.WritableRpcEngine should have a way to force initialization |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7920](https://issues.apache.org/jira/browse/HADOOP-7920) | Remove Avro RPC |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7900](https://issues.apache.org/jira/browse/HADOOP-7900) | LocalDirAllocator confChanged() accesses conf.get() twice |  Major | fs | Ravi Gummadi | Ravi Gummadi |
| [HADOOP-7897](https://issues.apache.org/jira/browse/HADOOP-7897) | ProtobufRPCEngine client side exception mechanism is not consistent with WritableRpcEngine |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7892](https://issues.apache.org/jira/browse/HADOOP-7892) | IPC logs too verbose after "RpcKind" introduction |  Trivial | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-7888](https://issues.apache.org/jira/browse/HADOOP-7888) | TestFailoverProxy fails intermittently on trunk |  Major | test | Jason Lowe | Jason Lowe |
| [HADOOP-7833](https://issues.apache.org/jira/browse/HADOOP-7833) | Inner classes of org.apache.hadoop.ipc.protobuf.HadoopRpcProtos generates findbugs warnings which results in -1 for findbugs |  Major | ipc | John Lee | John Lee |
| [HADOOP-7827](https://issues.apache.org/jira/browse/HADOOP-7827) | jsp pages missing DOCTYPE |  Trivial | . | Dave Vronay | Dave Vronay |
| [HADOOP-7704](https://issues.apache.org/jira/browse/HADOOP-7704) | JsonFactory can be created only once and used for every next request to create JsonGenerator inside JMXJsonServlet |  Minor | . | Devaraj K | Devaraj K |
| [HADOOP-7695](https://issues.apache.org/jira/browse/HADOOP-7695) | RPC.stopProxy can throw unintended exception while logging error |  Major | ipc | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-7669](https://issues.apache.org/jira/browse/HADOOP-7669) | Fix newly introduced release audit warning. |  Minor | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-6941](https://issues.apache.org/jira/browse/HADOOP-6941) | Support non-SUN JREs in UserGroupInformation |  Major | . | Stephen Watt | Devaraj Das |
| [HADOOP-6924](https://issues.apache.org/jira/browse/HADOOP-6924) | Build fails with non-Sun JREs due to different pathing to the operating system architecture shared libraries |  Major | . | Stephen Watt | Devaraj Das |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8157](https://issues.apache.org/jira/browse/HADOOP-8157) | TestRPCCallBenchmark#testBenchmarkWithWritable fails with RTE |  Major | . | Eli Collins | Todd Lipcon |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8211](https://issues.apache.org/jira/browse/HADOOP-8211) | Update commons-net version to 3.1 |  Major | io, performance | Eli Collins | Eli Collins |
| [HADOOP-8210](https://issues.apache.org/jira/browse/HADOOP-8210) | Common side of HDFS-3148 |  Major | io, performance | Eli Collins | Eli Collins |
| [HADOOP-7994](https://issues.apache.org/jira/browse/HADOOP-7994) | Remove getProtocolVersion and getProtocolSignature from the client side translator and server side implementation |  Major | . | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-7965](https://issues.apache.org/jira/browse/HADOOP-7965) | Support for protocol version and signature in PB |  Major | ipc | Jitendra Nath Pandey | Jitendra Nath Pandey |
| [HADOOP-7913](https://issues.apache.org/jira/browse/HADOOP-7913) | Fix bug in ProtoBufRpcEngine - |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-7862](https://issues.apache.org/jira/browse/HADOOP-7862) | Move the support for multiple protocols to lower layer so that Writable, PB and Avro can all use it |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-7776](https://issues.apache.org/jira/browse/HADOOP-7776) | Make the Ipc-Header in a RPC-Payload an explicit header |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-7773](https://issues.apache.org/jira/browse/HADOOP-7773) | Add support for protocol buffer based RPC engine |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7557](https://issues.apache.org/jira/browse/HADOOP-7557) | Make  IPC  header be extensible |  Major | . | Sanjay Radia | Sanjay Radia |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8359](https://issues.apache.org/jira/browse/HADOOP-8359) | Clear up javadoc warnings in hadoop-common-project |  Trivial | conf | Harsh J | Anupam Seth |
| [HADOOP-8142](https://issues.apache.org/jira/browse/HADOOP-8142) | Update versions from 0.23.2 to 0.23.3 |  Major | build | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |


