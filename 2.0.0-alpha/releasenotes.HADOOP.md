# Hadoop HADOOP 2.0.0-alpha Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-8366](https://issues.apache.org/jira/browse/HADOOP-8366) | *Blocker* | **Use ProtoBuf for RpcResponseHeader**
---

* [HADOOP-8359](https://issues.apache.org/jira/browse/HADOOP-8359) | *Trivial* | **Clear up javadoc warnings in hadoop-common-project**
---

* [HADOOP-8356](https://issues.apache.org/jira/browse/HADOOP-8356) | *Major* | **FileSystem service loading mechanism should print the FileSystem impl it is failing to load**
---

* [HADOOP-8355](https://issues.apache.org/jira/browse/HADOOP-8355) | *Minor* | **SPNEGO filter throws/logs exception when authentication fails**
---

* [HADOOP-8353](https://issues.apache.org/jira/browse/HADOOP-8353) | *Major* | **hadoop-daemon.sh and yarn-daemon.sh can be misleading on stop**
---

* [HADOOP-8350](https://issues.apache.org/jira/browse/HADOOP-8350) | *Major* | **Improve NetUtils.getInputStream to return a stream which has a tunable timeout**
---

* [HADOOP-8349](https://issues.apache.org/jira/browse/HADOOP-8349) | *Major* | **ViewFS doesn't work when the root of a file system is mounted**
---

* [HADOOP-8347](https://issues.apache.org/jira/browse/HADOOP-8347) | *Major* | **Hadoop Common logs misspell 'successful'**
---

* [HADOOP-8343](https://issues.apache.org/jira/browse/HADOOP-8343) | *Major* | **Allow configuration of authorization for JmxJsonServlet and MetricsServlet**
---

* [HADOOP-8314](https://issues.apache.org/jira/browse/HADOOP-8314) | *Major* | **HttpServer#hasAdminAccess should return false if authorization is enabled but user is not authenticated**
---

* [HADOOP-8310](https://issues.apache.org/jira/browse/HADOOP-8310) | *Major* | **FileContext#checkPath should handle URIs with no port**
---

* [HADOOP-8309](https://issues.apache.org/jira/browse/HADOOP-8309) | *Major* | **Pseudo & Kerberos AuthenticationHandler should use getType() to create token**
---

* [HADOOP-8296](https://issues.apache.org/jira/browse/HADOOP-8296) | *Minor* | **hadoop/yarn daemonlog usage wrong**
---

* [HADOOP-8285](https://issues.apache.org/jira/browse/HADOOP-8285) | *Major* | **Use ProtoBuf for RpcPayLoadHeader**
---

* [HADOOP-8282](https://issues.apache.org/jira/browse/HADOOP-8282) | *Minor* | **start-all.sh refers incorrectly start-dfs.sh existence for starting start-yarn.sh**
---

* [HADOOP-8280](https://issues.apache.org/jira/browse/HADOOP-8280) | *Major* | ** Move VersionUtil/TestVersionUtil and GenericTestUtils from HDFS into Common.**
---

* [HADOOP-8275](https://issues.apache.org/jira/browse/HADOOP-8275) | *Minor* | **Range check DelegationKey length**
---

* [HADOOP-8270](https://issues.apache.org/jira/browse/HADOOP-8270) | *Minor* | **hadoop-daemon.sh stop action should return 0 for an already stopped service**

The daemon stop action no longer returns failure when stopping an already stopped service.

---

* [HADOOP-8264](https://issues.apache.org/jira/browse/HADOOP-8264) | *Trivial* | **Remove irritating double double quotes in front of hostname**
---

* [HADOOP-8263](https://issues.apache.org/jira/browse/HADOOP-8263) | *Minor* | **Stringification of IPC calls not useful**
---

* [HADOOP-8261](https://issues.apache.org/jira/browse/HADOOP-8261) | *Major* | **Har file system doesn't deal with FS URIs with a host but no port**
---

* [HADOOP-8251](https://issues.apache.org/jira/browse/HADOOP-8251) | *Blocker* | **SecurityUtil.fetchServiceTicket broken after HADOOP-6941**
---

* [HADOOP-8243](https://issues.apache.org/jira/browse/HADOOP-8243) | *Critical* | **Security support broken in CLI (manual) failover controller**
---

* [HADOOP-8238](https://issues.apache.org/jira/browse/HADOOP-8238) | *Major* | **NetUtils#getHostNameOfIP blows up if given ip:port string w/o port**
---

* [HADOOP-8236](https://issues.apache.org/jira/browse/HADOOP-8236) | *Major* | **haadmin should have configurable timeouts for failover commands**
---

* [HADOOP-8218](https://issues.apache.org/jira/browse/HADOOP-8218) | *Critical* | **RPC.closeProxy shouldn't throw error when closing a mock**
---

* [HADOOP-8214](https://issues.apache.org/jira/browse/HADOOP-8214) | *Major* | **make hadoop script recognize a full set of deprecated commands**
---

* [HADOOP-8211](https://issues.apache.org/jira/browse/HADOOP-8211) | *Major* | **Update commons-net version to 3.1**
---

* [HADOOP-8210](https://issues.apache.org/jira/browse/HADOOP-8210) | *Major* | **Common side of HDFS-3148**
---

* [HADOOP-8206](https://issues.apache.org/jira/browse/HADOOP-8206) | *Major* | **Common portion of ZK-based failover controller**
---

* [HADOOP-8204](https://issues.apache.org/jira/browse/HADOOP-8204) | *Major* | **TestHealthMonitor fails occasionally**
---

* [HADOOP-8202](https://issues.apache.org/jira/browse/HADOOP-8202) | *Minor* | **stopproxy() is not closing the proxies correctly**
---

* [HADOOP-8200](https://issues.apache.org/jira/browse/HADOOP-8200) | *Minor* | **Remove HADOOP\_[JOBTRACKER\|TASKTRACKER]\_OPTS**
---

* [HADOOP-8199](https://issues.apache.org/jira/browse/HADOOP-8199) | *Major* | **Fix issues in start-all.sh and stop-all.sh**
---

* [HADOOP-8193](https://issues.apache.org/jira/browse/HADOOP-8193) | *Major* | **Refactor FailoverController/HAAdmin code to add an abstract class for "target" services**
---

* [HADOOP-8191](https://issues.apache.org/jira/browse/HADOOP-8191) | *Major* | **SshFenceByTcpPort uses netcat incorrectly**
---

* [HADOOP-8189](https://issues.apache.org/jira/browse/HADOOP-8189) | *Major* | **LdapGroupsMapping shouldn't throw away IOException**
---

* [HADOOP-8185](https://issues.apache.org/jira/browse/HADOOP-8185) | *Major* | **Update namenode -format documentation and add -nonInteractive and -force**
---

* [HADOOP-8184](https://issues.apache.org/jira/browse/HADOOP-8184) | *Major* | **ProtoBuf RPC engine does not need it own reply packet - it can use the IPC layer reply packet.**

This change will affect the output of errors for some Hadoop CLI commands. Specifically, the name of the exception class will no longer appear, and instead only the text of the exception message will appear.

---

* [HADOOP-8183](https://issues.apache.org/jira/browse/HADOOP-8183) | *Minor* | **Stop using "mapred.used.genericoptionsparser" to avoid unnecessary warnings**
---

* [HADOOP-8169](https://issues.apache.org/jira/browse/HADOOP-8169) | *Critical* | **javadoc generation fails with java.lang.OutOfMemoryError: Java heap space**
---

* [HADOOP-8163](https://issues.apache.org/jira/browse/HADOOP-8163) | *Major* | **Improve ActiveStandbyElector to provide hooks for fencing old active**
---

* [HADOOP-8159](https://issues.apache.org/jira/browse/HADOOP-8159) | *Major* | **NetworkTopology: getLeaf should check for invalid topologies**
---

* [HADOOP-8157](https://issues.apache.org/jira/browse/HADOOP-8157) | *Major* | **TestRPCCallBenchmark#testBenchmarkWithWritable fails with RTE**
---

* [HADOOP-8154](https://issues.apache.org/jira/browse/HADOOP-8154) | *Major* | **DNS#getIPs shouldn't silently return the local host IP for bogus interface names**
---

* [HADOOP-8152](https://issues.apache.org/jira/browse/HADOOP-8152) | *Major* | **Expand public APIs for security library classes**
---

* [HADOOP-8149](https://issues.apache.org/jira/browse/HADOOP-8149) | *Major* | **cap space usage of default log4j rolling policy**

Hadoop log files are now rolled by size instead of date (daily) by default. Tools that depend on the log file name format will need to be updated. Users who would like to maintain the previous settings of hadoop.root.logger and hadoop.security.logger can use their current log4j.properties files and update the HADOOP\_ROOT\_LOGGER and HADOOP\_SECURITY\_LOGGER environment variables to use DRFA and DRFAS respectively.

---

* [HADOOP-8142](https://issues.apache.org/jira/browse/HADOOP-8142) | *Major* | **Update versions from 0.23.2 to 0.23.3**
---

* [HADOOP-8121](https://issues.apache.org/jira/browse/HADOOP-8121) | *Major* | **Active Directory Group Mapping Service**
---

* [HADOOP-8119](https://issues.apache.org/jira/browse/HADOOP-8119) | *Minor* | **Fix javac warnings in TestAuthenticationFilter**
---

* [HADOOP-8118](https://issues.apache.org/jira/browse/HADOOP-8118) | *Minor* | **Print the stack trace of InstanceAlreadyExistsException in trace level**
---

* [HADOOP-8117](https://issues.apache.org/jira/browse/HADOOP-8117) | *Trivial* | **Upgrade test build to Surefire 2.12**
---

* [HADOOP-8113](https://issues.apache.org/jira/browse/HADOOP-8113) | *Trivial* | **Correction to BUILDING.txt: HDFS needs ProtocolBuffer, too (not just MapReduce)**
---

* [HADOOP-8098](https://issues.apache.org/jira/browse/HADOOP-8098) | *Major* | **KerberosAuthenticatorHandler should use \_HOST replacement to resolve principal name**
---

* [HADOOP-8086](https://issues.apache.org/jira/browse/HADOOP-8086) | *Minor* | **KerberosName silently sets defaultRealm to "" if the Kerberos config is not found, it should log a WARN**
---

* [HADOOP-8085](https://issues.apache.org/jira/browse/HADOOP-8085) | *Major* | **Add RPC metrics to ProtobufRpcEngine**
---

* [HADOOP-8084](https://issues.apache.org/jira/browse/HADOOP-8084) | *Major* | **Protobuf RPC engine can be optimized to not do copying for the RPC request/response**
---

* [HADOOP-8077](https://issues.apache.org/jira/browse/HADOOP-8077) | *Major* | **HA: fencing method should be able to be configured on a per-NN or per-NS basis**
---

* [HADOOP-8070](https://issues.apache.org/jira/browse/HADOOP-8070) | *Major* | **Add standalone benchmark of protobuf IPC**
---

* [HADOOP-8007](https://issues.apache.org/jira/browse/HADOOP-8007) | *Major* | **HA: use substitution token for fencing argument**
---

* [HADOOP-7994](https://issues.apache.org/jira/browse/HADOOP-7994) | *Major* | **Remove getProtocolVersion and getProtocolSignature from the client side translator and server side implementation**
---

* [HADOOP-7988](https://issues.apache.org/jira/browse/HADOOP-7988) | *Major* | **Upper case in hostname part of the principals doesn't work with kerberos.**
---

* [HADOOP-7987](https://issues.apache.org/jira/browse/HADOOP-7987) | *Major* | **Support setting the run-as user in unsecure mode**
---

* [HADOOP-7968](https://issues.apache.org/jira/browse/HADOOP-7968) | *Minor* | **Errant println left in RPC.getHighestSupportedProtocol**
---

* [HADOOP-7965](https://issues.apache.org/jira/browse/HADOOP-7965) | *Major* | **Support for protocol version and signature in PB**
---

* [HADOOP-7957](https://issues.apache.org/jira/browse/HADOOP-7957) | *Major* | **Classes deriving GetGroupsBase should be able to override proxy creation.**
---

* [HADOOP-7940](https://issues.apache.org/jira/browse/HADOOP-7940) | *Major* | **method clear() in org.apache.hadoop.io.Text does not work**
---

* [HADOOP-7931](https://issues.apache.org/jira/browse/HADOOP-7931) | *Major* | **o.a.h.ipc.WritableRpcEngine should have a way to force initialization**
---

* [HADOOP-7920](https://issues.apache.org/jira/browse/HADOOP-7920) | *Major* | **Remove Avro RPC**
---

* [HADOOP-7913](https://issues.apache.org/jira/browse/HADOOP-7913) | *Major* | **Fix bug in ProtoBufRpcEngine -**
---

* [HADOOP-7900](https://issues.apache.org/jira/browse/HADOOP-7900) | *Major* | **LocalDirAllocator confChanged() accesses conf.get() twice**
---

* [HADOOP-7899](https://issues.apache.org/jira/browse/HADOOP-7899) | *Major* | **Generate proto java files as part of the build**
---

* [HADOOP-7897](https://issues.apache.org/jira/browse/HADOOP-7897) | *Major* | **ProtobufRPCEngine client side exception mechanism is not consistent with WritableRpcEngine**
---

* [HADOOP-7892](https://issues.apache.org/jira/browse/HADOOP-7892) | *Trivial* | **IPC logs too verbose after "RpcKind" introduction**
---

* [HADOOP-7888](https://issues.apache.org/jira/browse/HADOOP-7888) | *Major* | **TestFailoverProxy fails intermittently on trunk**
---

* [HADOOP-7876](https://issues.apache.org/jira/browse/HADOOP-7876) | *Major* | **Allow access to BlockKey/DelegationKey encoded key for RPC over protobuf**
---

* [HADOOP-7875](https://issues.apache.org/jira/browse/HADOOP-7875) | *Major* | **Add helper class to unwrap RemoteException from ServiceException thrown on protobuf based RPC**
---

* [HADOOP-7862](https://issues.apache.org/jira/browse/HADOOP-7862) | *Major* | **Move the support for multiple protocols to lower layer so that Writable, PB and Avro can all use it**
---

* [HADOOP-7833](https://issues.apache.org/jira/browse/HADOOP-7833) | *Major* | **Inner classes of org.apache.hadoop.ipc.protobuf.HadoopRpcProtos generates findbugs warnings which results in -1 for findbugs**
---

* [HADOOP-7827](https://issues.apache.org/jira/browse/HADOOP-7827) | *Trivial* | **jsp pages missing DOCTYPE**
---

* [HADOOP-7806](https://issues.apache.org/jira/browse/HADOOP-7806) | *Major* | **Support binding to sub-interfaces**
---

* [HADOOP-7776](https://issues.apache.org/jira/browse/HADOOP-7776) | *Major* | **Make the Ipc-Header in a RPC-Payload an explicit header**
---

* [HADOOP-7773](https://issues.apache.org/jira/browse/HADOOP-7773) | *Major* | **Add support for protocol buffer based RPC engine**
---

* [HADOOP-7729](https://issues.apache.org/jira/browse/HADOOP-7729) | *Major* | **Send back valid HTTP response if user hits IPC port with HTTP GET**
---

* [HADOOP-7727](https://issues.apache.org/jira/browse/HADOOP-7727) | *Trivial* | **fix some typos and tabs in CHANGES.TXT**
---

* [HADOOP-7717](https://issues.apache.org/jira/browse/HADOOP-7717) | *Major* | **Move handling of concurrent client fail-overs to RetryInvocationHandler**
---

* [HADOOP-7716](https://issues.apache.org/jira/browse/HADOOP-7716) | *Minor* | **RPC protocol registration on SS does not log the protocol name (only the class which may be different)**
---

* [HADOOP-7704](https://issues.apache.org/jira/browse/HADOOP-7704) | *Minor* | **JsonFactory can be created only once and used for every next request to create JsonGenerator inside JMXJsonServlet**

Reduce number of object created by JMXJsonServlet. (Devaraj K via Eric Yang)

---

* [HADOOP-7695](https://issues.apache.org/jira/browse/HADOOP-7695) | *Major* | **RPC.stopProxy can throw unintended exception while logging error**
---

* [HADOOP-7693](https://issues.apache.org/jira/browse/HADOOP-7693) | *Major* | **fix RPC.Server#addProtocol to work in AvroRpcEngine**
---

* [HADOOP-7687](https://issues.apache.org/jira/browse/HADOOP-7687) | *Minor* | **Make getProtocolSignature public**
---

* [HADOOP-7669](https://issues.apache.org/jira/browse/HADOOP-7669) | *Minor* | **Fix newly introduced release audit warning.**
---

* [HADOOP-7635](https://issues.apache.org/jira/browse/HADOOP-7635) | *Major* | **RetryInvocationHandler should release underlying resources on close**
---

* [HADOOP-7607](https://issues.apache.org/jira/browse/HADOOP-7607) | *Major* | **Simplify the RPC proxy cleanup process**
---

* [HADOOP-7557](https://issues.apache.org/jira/browse/HADOOP-7557) | *Major* | **Make  IPC  header be extensible**
---

* [HADOOP-7549](https://issues.apache.org/jira/browse/HADOOP-7549) | *Major* | **Use JDK ServiceLoader mechanism to find FileSystem implementations**
---

* [HADOOP-7524](https://issues.apache.org/jira/browse/HADOOP-7524) | *Major* | **Change RPC to allow multiple protocols including multiple versions of the same protocol**
---

* [HADOOP-7454](https://issues.apache.org/jira/browse/HADOOP-7454) | *Major* | **Common side of High Availability Framework (HDFS-1623)**
---

* [HADOOP-7350](https://issues.apache.org/jira/browse/HADOOP-7350) | *Major* | **Use ServiceLoader to discover compression codec classes**
---

* [HADOOP-7030](https://issues.apache.org/jira/browse/HADOOP-7030) | *Major* | **Add TableMapping topology implementation to read host to rack mapping from a file**
---

* [HADOOP-6941](https://issues.apache.org/jira/browse/HADOOP-6941) | *Major* | **Support non-SUN JREs in UserGroupInformation**
---

* [HADOOP-6924](https://issues.apache.org/jira/browse/HADOOP-6924) | *Major* | **Build fails with non-Sun JREs due to different pathing to the operating system architecture shared libraries**


