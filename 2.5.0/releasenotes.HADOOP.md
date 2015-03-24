# Hadoop HADOOP 2.5.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-10910](https://issues.apache.org/jira/browse/HADOOP-10910) | *Blocker* | **Increase findbugs maxHeap size**
---

* [HADOOP-10896](https://issues.apache.org/jira/browse/HADOOP-10896) | *Blocker* | **Update compatibility doc to capture visibility of un-annotated classes/ methods**
---

* [HADOOP-10894](https://issues.apache.org/jira/browse/HADOOP-10894) | *Minor* | **Fix dead link in ToolRunner documentation**
---

* [HADOOP-10890](https://issues.apache.org/jira/browse/HADOOP-10890) | *Major* | **TestDFVariations.testMount fails intermittently**
---

* [HADOOP-10872](https://issues.apache.org/jira/browse/HADOOP-10872) | *Major* | **TestPathData fails intermittently with "Mkdirs failed to create d1"**
---

* [HADOOP-10864](https://issues.apache.org/jira/browse/HADOOP-10864) | *Minor* | **Tool documentenation is broken**
---

* [HADOOP-10821](https://issues.apache.org/jira/browse/HADOOP-10821) | *Blocker* | **Prepare the release notes for Hadoop 2.5.0**
---

* [HADOOP-10801](https://issues.apache.org/jira/browse/HADOOP-10801) | *Major* | **Fix dead link in site.xml**
---

* [HADOOP-10782](https://issues.apache.org/jira/browse/HADOOP-10782) | *Trivial* | **Typo in DataChecksum classs**
---

* [HADOOP-10767](https://issues.apache.org/jira/browse/HADOOP-10767) | *Trivial* | **Clean up unused code in Ls shell command.**
---

* [HADOOP-10754](https://issues.apache.org/jira/browse/HADOOP-10754) | *Trivial* | **Reenable several HA ZooKeeper-related tests on Windows.**
---

* [HADOOP-10747](https://issues.apache.org/jira/browse/HADOOP-10747) | *Minor* | **Support configurable retries on SASL connection failures in RPC client.**
---

* [HADOOP-10746](https://issues.apache.org/jira/browse/HADOOP-10746) | *Major* | **TestSocketIOWithTimeout#testSocketIOWithTimeout fails on Power PC**
---

* [HADOOP-10739](https://issues.apache.org/jira/browse/HADOOP-10739) | *Major* | **Renaming a file into a directory containing the same filename results in a confusing I/O error**
---

* [HADOOP-10737](https://issues.apache.org/jira/browse/HADOOP-10737) | *Major* | **S3n silent failure on copy, data loss on rename**
---

* [HADOOP-10716](https://issues.apache.org/jira/browse/HADOOP-10716) | *Critical* | **Cannot use more than 1 har filesystem**
---

* [HADOOP-10715](https://issues.apache.org/jira/browse/HADOOP-10715) | *Minor* | **Remove public GraphiteSink#setWriter()**
---

* [HADOOP-10711](https://issues.apache.org/jira/browse/HADOOP-10711) | *Major* | **Cleanup some extra dependencies from hadoop-auth**
---

* [HADOOP-10710](https://issues.apache.org/jira/browse/HADOOP-10710) | *Major* | **hadoop.auth cookie is not properly constructed according to RFC2109**
---

* [HADOOP-10702](https://issues.apache.org/jira/browse/HADOOP-10702) | *Minor* | **KerberosAuthenticationHandler does not log the principal names correctly**
---

* [HADOOP-10701](https://issues.apache.org/jira/browse/HADOOP-10701) | *Major* | **NFS should not validate the access premission only based on the user's primary group**
---

* [HADOOP-10699](https://issues.apache.org/jira/browse/HADOOP-10699) | *Major* | **Fix build native library on mac osx**
---

* [HADOOP-10691](https://issues.apache.org/jira/browse/HADOOP-10691) | *Minor* | **Improve the readability of 'hadoop fs -help'**
---

* [HADOOP-10688](https://issues.apache.org/jira/browse/HADOOP-10688) | *Major* | **Expose thread-level FileSystem StatisticsData**
---

* [HADOOP-10686](https://issues.apache.org/jira/browse/HADOOP-10686) | *Major* | **Writables are not always configured**
---

* [HADOOP-10683](https://issues.apache.org/jira/browse/HADOOP-10683) | *Major* | **Users authenticated with KERBEROS are recorded as being authenticated with SIMPLE**
---

* [HADOOP-10678](https://issues.apache.org/jira/browse/HADOOP-10678) | *Minor* | **SecurityUtil has unnecessary synchronization on collection used for only tests**
---

* [HADOOP-10674](https://issues.apache.org/jira/browse/HADOOP-10674) | *Major* | **Rewrite the PureJavaCrc32 loop for performance improvement**
---

* [HADOOP-10666](https://issues.apache.org/jira/browse/HADOOP-10666) | *Minor* | **Remove Copyright /d/d/d/d Apache Software Foundation from the source files license header**
---

* [HADOOP-10665](https://issues.apache.org/jira/browse/HADOOP-10665) | *Minor* | **Make Hadoop Authentication Handler loads case in-sensitive**
---

* [HADOOP-10664](https://issues.apache.org/jira/browse/HADOOP-10664) | *Major* | **TestNetUtils.testNormalizeHostName fails**
---

* [HADOOP-10660](https://issues.apache.org/jira/browse/HADOOP-10660) | *Major* | **GraphiteSink should implement Closeable**
---

* [HADOOP-10659](https://issues.apache.org/jira/browse/HADOOP-10659) | *Minor* | **Refactor AccessControlList to reuse utility functions and to improve performance**
---

* [HADOOP-10658](https://issues.apache.org/jira/browse/HADOOP-10658) | *Major* | **SSLFactory expects truststores being configured**
---

* [HADOOP-10657](https://issues.apache.org/jira/browse/HADOOP-10657) | *Major* | **Have RetryInvocationHandler log failover attempt at INFO level**
---

* [HADOOP-10656](https://issues.apache.org/jira/browse/HADOOP-10656) | *Major* | **The password keystore file is not picked by LDAP group mapping**
---

* [HADOOP-10652](https://issues.apache.org/jira/browse/HADOOP-10652) | *Major* | **Refactor Proxyusers to use AccessControlList**
---

* [HADOOP-10649](https://issues.apache.org/jira/browse/HADOOP-10649) | *Major* | **Allow overriding the default ACL for service authorization**
---

* [HADOOP-10647](https://issues.apache.org/jira/browse/HADOOP-10647) | *Minor* | **String Format Exception in SwiftNativeFileSystemStore.java**
---

* [HADOOP-10639](https://issues.apache.org/jira/browse/HADOOP-10639) | *Major* | **FileBasedKeyStoresFactory initialization is not using default for SSL\_REQUIRE\_CLIENT\_CERT\_KEY**
---

* [HADOOP-10638](https://issues.apache.org/jira/browse/HADOOP-10638) | *Major* | **Updating hadoop-daemon.sh to work as expected when nfs is started as a privileged user.**
---

* [HADOOP-10630](https://issues.apache.org/jira/browse/HADOOP-10630) | *Major* | **Possible race condition in RetryInvocationHandler**
---

* [HADOOP-10625](https://issues.apache.org/jira/browse/HADOOP-10625) | *Major* | **Configuration: names should be trimmed when putting/getting to properties**
---

* [HADOOP-10622](https://issues.apache.org/jira/browse/HADOOP-10622) | *Critical* | **Shell.runCommand can deadlock**
---

* [HADOOP-10618](https://issues.apache.org/jira/browse/HADOOP-10618) | *Minor* | **Remove SingleNodeSetup.apt.vm**
---

* [HADOOP-10614](https://issues.apache.org/jira/browse/HADOOP-10614) | *Major* | **CBZip2InputStream is not threadsafe**
---

* [HADOOP-10609](https://issues.apache.org/jira/browse/HADOOP-10609) | *Major* | **.gitignore should ignore .orig and .rej files**
---

* [HADOOP-10602](https://issues.apache.org/jira/browse/HADOOP-10602) | *Trivial* | **Documentation has broken "Go Back" hyperlinks.**
---

* [HADOOP-10590](https://issues.apache.org/jira/browse/HADOOP-10590) | *Major* | **ServiceAuthorizationManager  is not threadsafe**
---

* [HADOOP-10589](https://issues.apache.org/jira/browse/HADOOP-10589) | *Major* | **NativeS3FileSystem throw NullPointerException when the file is empty**
---

* [HADOOP-10588](https://issues.apache.org/jira/browse/HADOOP-10588) | *Major* | **Workaround for jetty6 acceptor startup issue**
---

* [HADOOP-10585](https://issues.apache.org/jira/browse/HADOOP-10585) | *Critical* | **Retry polices ignore interrupted exceptions**
---

* [HADOOP-10581](https://issues.apache.org/jira/browse/HADOOP-10581) | *Major* | **TestUserGroupInformation#testGetServerSideGroups fails because groups stored in Set and ArrayList are compared**
---

* [HADOOP-10572](https://issues.apache.org/jira/browse/HADOOP-10572) | *Trivial* | **Example NFS mount command must pass noacl as it isn't supported by the server yet**
---

* [HADOOP-10568](https://issues.apache.org/jira/browse/HADOOP-10568) | *Major* | **Add s3 server-side encryption**

s3 server-side encryption is now supported.

To enable this feature, specify the following in your client-side configuration:

name: fs.s3n.server-side-encryption-algorithm
value: AES256

---

* [HADOOP-10566](https://issues.apache.org/jira/browse/HADOOP-10566) | *Major* | **Refactor proxyservers out of ProxyUsers**
---

* [HADOOP-10565](https://issues.apache.org/jira/browse/HADOOP-10565) | *Major* | **Support IP ranges (CIDR) in  proxyuser.hosts**
---

* [HADOOP-10561](https://issues.apache.org/jira/browse/HADOOP-10561) | *Major* | **Copy command with preserve option should handle Xattrs**
---

* [HADOOP-10557](https://issues.apache.org/jira/browse/HADOOP-10557) | *Major* | **FsShell -cp -pa option for preserving extended ACLs**
---

* [HADOOP-10556](https://issues.apache.org/jira/browse/HADOOP-10556) | *Major* | **Add toLowerCase support to auth\_to\_local rules for service name**
---

* [HADOOP-10549](https://issues.apache.org/jira/browse/HADOOP-10549) | *Major* | **MAX\_SUBST and varPat should be final in Configuration.java**
---

* [HADOOP-10547](https://issues.apache.org/jira/browse/HADOOP-10547) | *Major* | **Give SaslPropertiesResolver.getDefaultProperties() public scope**
---

* [HADOOP-10543](https://issues.apache.org/jira/browse/HADOOP-10543) | *Major* | **RemoteException's unwrapRemoteException method failed for PathIOException**
---

* [HADOOP-10541](https://issues.apache.org/jira/browse/HADOOP-10541) | *Minor* | **InputStream in MiniKdc#initKDCServer for minikdc.ldiff is not closed**
---

* [HADOOP-10540](https://issues.apache.org/jira/browse/HADOOP-10540) | *Major* | **Datanode upgrade in Windows fails with hardlink error.**
---

* [HADOOP-10539](https://issues.apache.org/jira/browse/HADOOP-10539) | *Minor* | **Provide backward compatibility for ProxyUsers.authorize() call**
---

* [HADOOP-10535](https://issues.apache.org/jira/browse/HADOOP-10535) | *Minor* | **Make the retry numbers in ActiveStandbyElector configurable**
---

* [HADOOP-10533](https://issues.apache.org/jira/browse/HADOOP-10533) | *Minor* | **S3 input stream NPEs in MapReduce job**
---

* [HADOOP-10531](https://issues.apache.org/jira/browse/HADOOP-10531) | *Major* | **hadoop-config.sh - bug in --hosts argument**
---

* [HADOOP-10526](https://issues.apache.org/jira/browse/HADOOP-10526) | *Minor* | **Chance for Stream leakage in CompressorStream**
---

* [HADOOP-10517](https://issues.apache.org/jira/browse/HADOOP-10517) | *Minor* | **InputStream is not closed in two methods of JarFinder**
---

* [HADOOP-10514](https://issues.apache.org/jira/browse/HADOOP-10514) | *Major* | **Common side changes to support  HDFS extended attributes (HDFS-2006)**
---

* [HADOOP-10508](https://issues.apache.org/jira/browse/HADOOP-10508) | *Major* | **RefreshCallQueue fails when authorization is enabled**
---

* [HADOOP-10503](https://issues.apache.org/jira/browse/HADOOP-10503) | *Minor* | **Move junit up to v 4.11**
---

* [HADOOP-10500](https://issues.apache.org/jira/browse/HADOOP-10500) | *Trivial* | **TestDoAsEffectiveUser fails on JDK7 due to failure to reset proxy user configuration.**
---

* [HADOOP-10499](https://issues.apache.org/jira/browse/HADOOP-10499) | *Minor* | **Remove unused parameter from ProxyUsers.authorize()**
---

* [HADOOP-10498](https://issues.apache.org/jira/browse/HADOOP-10498) | *Major* | **Add support for proxy server**
---

* [HADOOP-10496](https://issues.apache.org/jira/browse/HADOOP-10496) | *Major* | **Metrics system FileSink can leak file descriptor.**
---

* [HADOOP-10495](https://issues.apache.org/jira/browse/HADOOP-10495) | *Trivial* | **TestFileUtil fails on Windows due to bad permission assertions.**
---

* [HADOOP-10489](https://issues.apache.org/jira/browse/HADOOP-10489) | *Major* | **UserGroupInformation#getTokens and UserGroupInformation#addToken can lead to ConcurrentModificationException**
---

* [HADOOP-10479](https://issues.apache.org/jira/browse/HADOOP-10479) | *Major* | **Fix new findbugs warnings in hadoop-minikdc**
---

* [HADOOP-10475](https://issues.apache.org/jira/browse/HADOOP-10475) | *Major* | **ConcurrentModificationException in AbstractDelegationTokenSelector.selectToken()**
---

* [HADOOP-10471](https://issues.apache.org/jira/browse/HADOOP-10471) | *Major* | **Reduce the visibility of constants in ProxyUsers**
---

* [HADOOP-10468](https://issues.apache.org/jira/browse/HADOOP-10468) | *Blocker* | **TestMetricsSystemImpl.testMultiThreadedPublish fails intermediately**
---

* [HADOOP-10467](https://issues.apache.org/jira/browse/HADOOP-10467) | *Major* | **Enable proxyuser specification to support list of users in addition to list of groups.**
---

* [HADOOP-10462](https://issues.apache.org/jira/browse/HADOOP-10462) | *Major* | **DF#getFilesystem is not parsing the command output**
---

* [HADOOP-10459](https://issues.apache.org/jira/browse/HADOOP-10459) | *Major* | **distcp V2 doesn't preserve root dir's attributes when -p is specified**
---

* [HADOOP-10458](https://issues.apache.org/jira/browse/HADOOP-10458) | *Minor* | **swifts should throw FileAlreadyExistsException on attempt to overwrite file**
---

* [HADOOP-10454](https://issues.apache.org/jira/browse/HADOOP-10454) | *Major* | **Provide FileContext version of har file system**
---

* [HADOOP-10451](https://issues.apache.org/jira/browse/HADOOP-10451) | *Trivial* | **Remove unused field and imports from SaslRpcServer**

SaslRpcServer.SASL\_PROPS is removed.
Any use of this variable  should be replaced with the following code: 
SaslPropertiesResolver saslPropsResolver = SaslPropertiesResolver.getInstance(conf); 
Map<String, String> sasl\_props = saslPropsResolver.getDefaultProperties();

---

* [HADOOP-10448](https://issues.apache.org/jira/browse/HADOOP-10448) | *Major* | **Support pluggable mechanism to specify proxy user settings**
---

* [HADOOP-10439](https://issues.apache.org/jira/browse/HADOOP-10439) | *Major* | **Fix compilation error in branch-2 after HADOOP-10426**
---

* [HADOOP-10426](https://issues.apache.org/jira/browse/HADOOP-10426) | *Minor* | **CreateOpts.getOpt(..) should declare with generic type argument**
---

* [HADOOP-10419](https://issues.apache.org/jira/browse/HADOOP-10419) | *Minor* | **BufferedFSInputStream NPEs on getPos() on a closed stream**
---

* [HADOOP-10418](https://issues.apache.org/jira/browse/HADOOP-10418) | *Major* | **SaslRpcClient should not assume that remote principals are in the default\_realm**
---

* [HADOOP-10414](https://issues.apache.org/jira/browse/HADOOP-10414) | *Major* | **Incorrect property name for RefreshUserMappingProtocol in hadoop-policy.xml**
---

* [HADOOP-10401](https://issues.apache.org/jira/browse/HADOOP-10401) | *Major* | **ShellBasedUnixGroupsMapping#getGroups does not always return primary group first**
---

* [HADOOP-10378](https://issues.apache.org/jira/browse/HADOOP-10378) | *Major* | **Typo in help printed by hdfs dfs -help**
---

* [HADOOP-10376](https://issues.apache.org/jira/browse/HADOOP-10376) | *Minor* | **Refactor refresh*Protocols into a single generic refreshConfigProtocol**
---

* [HADOOP-10350](https://issues.apache.org/jira/browse/HADOOP-10350) | *Major* | **BUILDING.txt should mention openssl dependency required for hadoop-pipes**
---

* [HADOOP-10345](https://issues.apache.org/jira/browse/HADOOP-10345) | *Minor* | **Sanitize the the inputs (groups and hosts) for the proxyuser configuration**
---

* [HADOOP-10342](https://issues.apache.org/jira/browse/HADOOP-10342) | *Major* | **Extend UserGroupInformation to return a UGI given a preauthenticated kerberos Subject**

Add getUGIFromSubject to leverage an external kerberos authentication

---

* [HADOOP-10332](https://issues.apache.org/jira/browse/HADOOP-10332) | *Major* | **HttpServer's jetty audit log always logs 200 OK**
---

* [HADOOP-10322](https://issues.apache.org/jira/browse/HADOOP-10322) | *Major* | **Add ability to read principal names from a keytab**
---

* [HADOOP-10312](https://issues.apache.org/jira/browse/HADOOP-10312) | *Minor* | **Shell.ExitCodeException to have more useful toString**
---

* [HADOOP-10279](https://issues.apache.org/jira/browse/HADOOP-10279) | *Major* | **Create multiplexer, a requirement for the fair queue**
---

* [HADOOP-10251](https://issues.apache.org/jira/browse/HADOOP-10251) | *Critical* | **Both NameNodes could be in STANDBY State if SNN network is unstable**
---

* [HADOOP-10158](https://issues.apache.org/jira/browse/HADOOP-10158) | *Critical* | **SPNEGO should work with multiple interfaces/SPNs.**
---

* [HADOOP-10104](https://issues.apache.org/jira/browse/HADOOP-10104) | *Minor* | **Update jackson to 1.9.13**
---

* [HADOOP-9968](https://issues.apache.org/jira/browse/HADOOP-9968) | *Major* | **ProxyUsers does not work with NetGroups**
---

* [HADOOP-9919](https://issues.apache.org/jira/browse/HADOOP-9919) | *Major* | **Update hadoop-metrics2.properties examples to Yarn**

Remove MRv1 settings from hadoop-metrics2.properties, add YARN settings instead.

---

* [HADOOP-9712](https://issues.apache.org/jira/browse/HADOOP-9712) | *Minor* | **Write contract tests for FTP filesystem, fix places where it breaks**
---

* [HADOOP-9711](https://issues.apache.org/jira/browse/HADOOP-9711) | *Minor* | **Write contract tests for S3Native; fix places where it breaks**
---

* [HADOOP-9705](https://issues.apache.org/jira/browse/HADOOP-9705) | *Major* | **FsShell cp -p does not preserve directory attibutes**
---

* [HADOOP-9704](https://issues.apache.org/jira/browse/HADOOP-9704) | *Major* | **Write metrics sink plugin for Hadoop/Graphite**
---

* [HADOOP-9559](https://issues.apache.org/jira/browse/HADOOP-9559) | *Major* | **When metrics system is restarted MBean names get incorrectly flagged as dupes**
---

* [HADOOP-9555](https://issues.apache.org/jira/browse/HADOOP-9555) | *Major* | **HA functionality that uses ZooKeeper may experience inadvertent TCP RST and miss session expiration event due to bug in client connection management**
---

* [HADOOP-9495](https://issues.apache.org/jira/browse/HADOOP-9495) | *Major* | **Define behaviour of Seekable.seek(), write tests, fix all hadoop implementations for compliance**
---

* [HADOOP-9371](https://issues.apache.org/jira/browse/HADOOP-9371) | *Major* | **Define Semantics of FileSystem more rigorously**
---

* [HADOOP-9361](https://issues.apache.org/jira/browse/HADOOP-9361) | *Blocker* | **Strictly define the expected behavior of filesystem APIs and write tests to verify compliance**
---

* [HADOOP-9099](https://issues.apache.org/jira/browse/HADOOP-9099) | *Minor* | **NetUtils.normalizeHostName fails on domains where UnknownHost resolves to an IP address**
---

* [HADOOP-8943](https://issues.apache.org/jira/browse/HADOOP-8943) | *Major* | **Support multiple group mapping providers**
---

* [HADOOP-6350](https://issues.apache.org/jira/browse/HADOOP-6350) | *Major* | **Documenting Hadoop metrics**
---

* [HADOOP-3679](https://issues.apache.org/jira/browse/HADOOP-3679) | *Minor* | **calls to junit Assert::assertEquals invert arguments, causing misleading error messages, other minor improvements.**


