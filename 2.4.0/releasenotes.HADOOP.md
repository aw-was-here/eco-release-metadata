# Hadoop HADOOP 2.4.0 Release Notes

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



