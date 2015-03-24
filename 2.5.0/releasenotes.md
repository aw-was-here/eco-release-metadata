# Hadoop  2.5.0 Release Notes

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
---

* [HDFS-6793](https://issues.apache.org/jira/browse/HDFS-6793) | *Blocker* | **Missing changes in HftpFileSystem when Reintroduce dfs.http.port / dfs.https.port in branch-2**
---

* [HDFS-6752](https://issues.apache.org/jira/browse/HDFS-6752) | *Major* | **Avoid Address bind errors in TestDatanodeConfig#testMemlockLimit**
---

* [HDFS-6723](https://issues.apache.org/jira/browse/HDFS-6723) | *Major* | **New NN webUI no longer displays decommissioned state for dead node**
---

* [HDFS-6712](https://issues.apache.org/jira/browse/HDFS-6712) | *Major* | **Document HDFS Multihoming Settings**
---

* [HDFS-6703](https://issues.apache.org/jira/browse/HDFS-6703) | *Major* | **NFS: Files can be deleted from a read-only mount**
---

* [HDFS-6696](https://issues.apache.org/jira/browse/HDFS-6696) | *Blocker* | **Name node cannot start if the path of a file under construction contains ".snapshot"**
---

* [HDFS-6680](https://issues.apache.org/jira/browse/HDFS-6680) | *Major* | **BlockPlacementPolicyDefault does not choose favored nodes correctly**
---

* [HDFS-6647](https://issues.apache.org/jira/browse/HDFS-6647) | *Blocker* | **Edit log corruption when pipeline recovery occurs for deleted file present in snapshot**
---

* [HDFS-6632](https://issues.apache.org/jira/browse/HDFS-6632) | *Major* | **Reintroduce dfs.http.port / dfs.https.port in branch-2**
---

* [HDFS-6631](https://issues.apache.org/jira/browse/HDFS-6631) | *Major* | **TestPread#testHedgedReadLoopTooManyTimes fails intermittently.**
---

* [HDFS-6622](https://issues.apache.org/jira/browse/HDFS-6622) | *Blocker* | **Rename and AddBlock may race and produce invalid edits**
---

* [HDFS-6620](https://issues.apache.org/jira/browse/HDFS-6620) | *Major* | **Snapshot docs should specify about preserve options with cp command**
---

* [HDFS-6618](https://issues.apache.org/jira/browse/HDFS-6618) | *Blocker* | **FSNamesystem#delete drops the FSN lock between removing INodes from the tree and deleting them from the inode map**
---

* [HDFS-6614](https://issues.apache.org/jira/browse/HDFS-6614) | *Minor* | **shorten TestPread run time with a smaller retry timeout setting**
---

* [HDFS-6612](https://issues.apache.org/jira/browse/HDFS-6612) | *Minor* | **MiniDFSNNTopology#simpleFederatedTopology(int) always hardcode nameservice ID**
---

* [HDFS-6610](https://issues.apache.org/jira/browse/HDFS-6610) | *Minor* | **TestShortCircuitLocalRead tests sometimes timeout on slow machines**
---

* [HDFS-6604](https://issues.apache.org/jira/browse/HDFS-6604) | *Critical* | **The short-circuit cache doesn't correctly time out replicas that haven't been used in a while**
---

* [HDFS-6603](https://issues.apache.org/jira/browse/HDFS-6603) | *Minor* | **Add XAttr with ACL test**
---

* [HDFS-6601](https://issues.apache.org/jira/browse/HDFS-6601) | *Blocker* | **Issues in finalizing rolling upgrade when there is a layout version change**
---

* [HDFS-6599](https://issues.apache.org/jira/browse/HDFS-6599) | *Blocker* | **2.4 addBlock is 10 to 20 times slower compared to 0.23**
---

* [HDFS-6598](https://issues.apache.org/jira/browse/HDFS-6598) | *Trivial* | **Fix a typo in message issued from explorer.js**
---

* [HDFS-6595](https://issues.apache.org/jira/browse/HDFS-6595) | *Minor* | **Configure the maximum threads allowed for balancing on datanodes**
---

* [HDFS-6593](https://issues.apache.org/jira/browse/HDFS-6593) | *Minor* | **Move SnapshotDiffInfo out of INodeDirectorySnapshottable**
---

* [HDFS-6591](https://issues.apache.org/jira/browse/HDFS-6591) | *Major* | **while loop is executed tens of thousands of times  in Hedged  Read**
---

* [HDFS-6587](https://issues.apache.org/jira/browse/HDFS-6587) | *Major* | **Bug in TestBPOfferService can cause test failure**
---

* [HDFS-6583](https://issues.apache.org/jira/browse/HDFS-6583) | *Minor* | **Remove clientNode in FileUnderConstructionFeature**
---

* [HDFS-6580](https://issues.apache.org/jira/browse/HDFS-6580) | *Major* | **FSNamesystem.mkdirsInt should call the getAuditFileInfo() wrapper**
---

* [HDFS-6578](https://issues.apache.org/jira/browse/HDFS-6578) | *Major* | **add toString method to DatanodeStorage for easier debugging**
---

* [HDFS-6572](https://issues.apache.org/jira/browse/HDFS-6572) | *Minor* | **Add an option to the NameNode that prints the software and on-disk image versions**
---

* [HDFS-6563](https://issues.apache.org/jira/browse/HDFS-6563) | *Critical* | **NameNode cannot save fsimage in certain circumstances when snapshots are in use**
---

* [HDFS-6562](https://issues.apache.org/jira/browse/HDFS-6562) | *Minor* | **Refactor rename() in FSDirectory**
---

* [HDFS-6559](https://issues.apache.org/jira/browse/HDFS-6559) | *Minor* | **Fix wrong option "dfsadmin -rollingUpgrade start" in the document**
---

* [HDFS-6558](https://issues.apache.org/jira/browse/HDFS-6558) | *Trivial* | **Missing '\n' in the description of dfsadmin -rollingUpgrade**
---

* [HDFS-6557](https://issues.apache.org/jira/browse/HDFS-6557) | *Major* | **Move the reference of fsimage to FSNamesystem**
---

* [HDFS-6556](https://issues.apache.org/jira/browse/HDFS-6556) | *Major* | **Refine XAttr permissions**
---

* [HDFS-6553](https://issues.apache.org/jira/browse/HDFS-6553) | *Major* | **Add missing DeprecationDeltas for NFS Kerberos configurations**
---

* [HDFS-6552](https://issues.apache.org/jira/browse/HDFS-6552) | *Trivial* | **add DN storage to a BlockInfo will not replace the different storage from same DN**
---

* [HDFS-6551](https://issues.apache.org/jira/browse/HDFS-6551) | *Major* | **Rename with OVERWRITE option may throw NPE when the target file/directory is a reference INode**
---

* [HDFS-6549](https://issues.apache.org/jira/browse/HDFS-6549) | *Major* | **Add support for accessing the NFS gateway from the AIX NFS client**
---

* [HDFS-6545](https://issues.apache.org/jira/browse/HDFS-6545) | *Critical* | **Finalizing rolling upgrade can make NN unavailable for a long duration**
---

* [HDFS-6539](https://issues.apache.org/jira/browse/HDFS-6539) | *Major* | **test\_native\_mini\_dfs is skipped in hadoop-hdfs/pom.xml**
---

* [HDFS-6535](https://issues.apache.org/jira/browse/HDFS-6535) | *Major* | **HDFS quota update is wrong when file is appended**
---

* [HDFS-6530](https://issues.apache.org/jira/browse/HDFS-6530) | *Minor* | **Fix Balancer documentation**
---

* [HDFS-6529](https://issues.apache.org/jira/browse/HDFS-6529) | *Minor* | **Trace logging for RemoteBlockReader2 to identify remote datanode and file being read**
---

* [HDFS-6528](https://issues.apache.org/jira/browse/HDFS-6528) | *Minor* | **Add XAttrs to TestOfflineImageViewer**
---

* [HDFS-6527](https://issues.apache.org/jira/browse/HDFS-6527) | *Blocker* | **Edit log corruption due to defered INode removal**
---

* [HDFS-6518](https://issues.apache.org/jira/browse/HDFS-6518) | *Major* | **TestCacheDirectives#testExceedsCapacity should take FSN read lock when accessing pendingCached list**
---

* [HDFS-6507](https://issues.apache.org/jira/browse/HDFS-6507) | *Major* | **Improve DFSAdmin to support HA cluster better**
---

* [HDFS-6503](https://issues.apache.org/jira/browse/HDFS-6503) | *Minor* | **Fix typo of DFSAdmin restoreFailedStorage**
---

* [HDFS-6500](https://issues.apache.org/jira/browse/HDFS-6500) | *Blocker* | **Snapshot shouldn't be removed silently after renaming to an existing snapshot**
---

* [HDFS-6499](https://issues.apache.org/jira/browse/HDFS-6499) | *Major* | **Use NativeIO#renameTo instead of File#renameTo in FileJournalManager**
---

* [HDFS-6497](https://issues.apache.org/jira/browse/HDFS-6497) | *Minor* | **Make TestAvailableSpaceVolumeChoosingPolicy deterministic**
---

* [HDFS-6493](https://issues.apache.org/jira/browse/HDFS-6493) | *Trivial* | **Change dfs.namenode.startup.delay.block.deletion to second instead of millisecond**
---

* [HDFS-6492](https://issues.apache.org/jira/browse/HDFS-6492) | *Major* | **Support create-time xattrs and atomically setting multiple xattrs**
---

* [HDFS-6487](https://issues.apache.org/jira/browse/HDFS-6487) | *Major* | **TestStandbyCheckpoint#testSBNCheckpoints is racy**
---

* [HDFS-6486](https://issues.apache.org/jira/browse/HDFS-6486) | *Minor* | **Add user doc for XAttrs via WebHDFS.**
---

* [HDFS-6480](https://issues.apache.org/jira/browse/HDFS-6480) | *Major* | **Move waitForReady() from FSDirectory to FSNamesystem**
---

* [HDFS-6475](https://issues.apache.org/jira/browse/HDFS-6475) | *Major* | **WebHdfs clients fail without retry because incorrect handling of StandbyException**
---

* [HDFS-6472](https://issues.apache.org/jira/browse/HDFS-6472) | *Trivial* | **fix typo in webapps/hdfs/explorer.js**
---

* [HDFS-6471](https://issues.apache.org/jira/browse/HDFS-6471) | *Major* | **Make moveFromLocal CLI testcases to be non-disruptive**

Committed to trunk and merged into branch-2. Thanks Dasha!

---

* [HDFS-6470](https://issues.apache.org/jira/browse/HDFS-6470) | *Major* | **TestBPOfferService.testBPInitErrorHandling is flaky**
---

* [HDFS-6464](https://issues.apache.org/jira/browse/HDFS-6464) | *Major* | **Support multiple xattr.name parameters for WebHDFS getXAttrs.**
---

* [HDFS-6463](https://issues.apache.org/jira/browse/HDFS-6463) | *Trivial* | **Clarify behavior of AclStorage#createFsPermissionForExtendedAcl in comments.**
---

* [HDFS-6462](https://issues.apache.org/jira/browse/HDFS-6462) | *Major* | **NFS: fsstat request fails with the secure hdfs**
---

* [HDFS-6461](https://issues.apache.org/jira/browse/HDFS-6461) | *Trivial* | **Use Time#monotonicNow to compute duration in DataNode#shutDown**
---

* [HDFS-6460](https://issues.apache.org/jira/browse/HDFS-6460) | *Minor* | **Ignore stale and decommissioned nodes in NetworkTopology#sortByDistance**
---

* [HDFS-6453](https://issues.apache.org/jira/browse/HDFS-6453) | *Major* | **use Time#monotonicNow to avoid system clock reset**
---

* [HDFS-6448](https://issues.apache.org/jira/browse/HDFS-6448) | *Major* | **BlockReaderLocalLegacy should set socket timeout based on conf.socketTimeout**
---

* [HDFS-6447](https://issues.apache.org/jira/browse/HDFS-6447) | *Trivial* | **balancer should timestamp the completion message**
---

* [HDFS-6443](https://issues.apache.org/jira/browse/HDFS-6443) | *Minor* | **Fix MiniQJMHACluster related test failures**
---

* [HDFS-6442](https://issues.apache.org/jira/browse/HDFS-6442) | *Minor* | **Fix TestEditLogAutoroll and TestStandbyCheckpoints failure caused by port conficts**
---

* [HDFS-6439](https://issues.apache.org/jira/browse/HDFS-6439) | *Major* | **NFS should not reject NFS requests to the NULL procedure whether port monitoring is enabled or not**
---

* [HDFS-6438](https://issues.apache.org/jira/browse/HDFS-6438) | *Major* | **DeleteSnapshot should be a DELETE request in WebHdfs**
---

* [HDFS-6435](https://issues.apache.org/jira/browse/HDFS-6435) | *Major* | **Add support for specifying a static uid/gid mapping for the NFS gateway**
---

* [HDFS-6433](https://issues.apache.org/jira/browse/HDFS-6433) | *Major* | **Replace BytesMoved class with AtomicLong**
---

* [HDFS-6432](https://issues.apache.org/jira/browse/HDFS-6432) | *Major* | **Add snapshot related APIs to webhdfs**
---

* [HDFS-6430](https://issues.apache.org/jira/browse/HDFS-6430) | *Major* | **HTTPFS - Implement XAttr support**
---

* [HDFS-6424](https://issues.apache.org/jira/browse/HDFS-6424) | *Major* | **blockReport doesn't need to invalidate blocks on SBN**
---

* [HDFS-6423](https://issues.apache.org/jira/browse/HDFS-6423) | *Major* | **Diskspace quota usage should be updated when appending data to partial block**
---

* [HDFS-6422](https://issues.apache.org/jira/browse/HDFS-6422) | *Blocker* | **getfattr in CLI doesn't throw exception or return non-0 return code when xattr doesn't exist**
---

* [HDFS-6421](https://issues.apache.org/jira/browse/HDFS-6421) | *Major* | **Fix vecsum.c compile on BSD and some other systems**
---

* [HDFS-6419](https://issues.apache.org/jira/browse/HDFS-6419) | *Major* | **TestBookKeeperHACheckpoints#TestSBNCheckpoints fails on trunk**
---

* [HDFS-6418](https://issues.apache.org/jira/browse/HDFS-6418) | *Blocker* | **Regression: DFS\_NAMENODE\_USER\_NAME\_KEY missing in trunk**
---

* [HDFS-6416](https://issues.apache.org/jira/browse/HDFS-6416) | *Minor* | **Use Time#monotonicNow in OpenFileCtx and OpenFileCtxCatch to avoid system clock bugs**
---

* [HDFS-6409](https://issues.apache.org/jira/browse/HDFS-6409) | *Trivial* | **Fix typo in log message about NameNode layout version upgrade.**
---

* [HDFS-6406](https://issues.apache.org/jira/browse/HDFS-6406) | *Major* | **Add capability for NFS gateway to reject connections from unprivileged ports**
---

* [HDFS-6404](https://issues.apache.org/jira/browse/HDFS-6404) | *Major* | **HttpFS should use a 000 umask for mkdir and create operations**
---

* [HDFS-6403](https://issues.apache.org/jira/browse/HDFS-6403) | *Major* | **Add metrics for log warnings reported by JVM pauses**
---

* [HDFS-6400](https://issues.apache.org/jira/browse/HDFS-6400) | *Critical* | **Cannot execute "hdfs oiv\_legacy"**
---

* [HDFS-6399](https://issues.apache.org/jira/browse/HDFS-6399) | *Minor* | **Add note about setfacl in HDFS permissions guide**
---

* [HDFS-6396](https://issues.apache.org/jira/browse/HDFS-6396) | *Minor* | **Remove support for ACL feature from INodeSymlink**
---

* [HDFS-6395](https://issues.apache.org/jira/browse/HDFS-6395) | *Major* | **Skip checking xattr limits for non-user-visible namespaces**
---

* [HDFS-6381](https://issues.apache.org/jira/browse/HDFS-6381) | *Trivial* | **Fix a typo in INodeReference.java**
---

* [HDFS-6379](https://issues.apache.org/jira/browse/HDFS-6379) | *Major* | **HTTPFS - Implement ACLs support**
---

* [HDFS-6378](https://issues.apache.org/jira/browse/HDFS-6378) | *Major* | **NFS registration should timeout instead of hanging when portmap/rpcbind is not available**
---

* [HDFS-6375](https://issues.apache.org/jira/browse/HDFS-6375) | *Major* | **Listing extended attributes with the search permission**
---

* [HDFS-6370](https://issues.apache.org/jira/browse/HDFS-6370) | *Major* | **Web UI fails to display in intranet under IE**
---

* [HDFS-6369](https://issues.apache.org/jira/browse/HDFS-6369) | *Trivial* | **Document that BlockReader#available() can return more bytes than are remaining in the block**
---

* [HDFS-6367](https://issues.apache.org/jira/browse/HDFS-6367) | *Major* | **EnumSetParam$Domain#parse fails for parameter containing more than one enum.**
---

* [HDFS-6364](https://issues.apache.org/jira/browse/HDFS-6364) | *Major* | **Incorrect check for unknown datanode in Balancer**
---

* [HDFS-6356](https://issues.apache.org/jira/browse/HDFS-6356) | *Trivial* | **Fix typo in DatanodeLayoutVersion**
---

* [HDFS-6355](https://issues.apache.org/jira/browse/HDFS-6355) | *Major* | **Fix divide-by-zero, improper use of wall-clock time in BlockPoolSliceScanner**
---

* [HDFS-6351](https://issues.apache.org/jira/browse/HDFS-6351) | *Major* | **Command "hdfs dfs -rm -r" can't remove empty directory**
---

* [HDFS-6345](https://issues.apache.org/jira/browse/HDFS-6345) | *Major* | **DFS.listCacheDirectives() should allow filtering based on cache directive ID**
---

* [HDFS-6337](https://issues.apache.org/jira/browse/HDFS-6337) | *Major* | **Setfacl testcase is failing due to dash character in username in TestAclCLI**
---

* [HDFS-6334](https://issues.apache.org/jira/browse/HDFS-6334) | *Major* | **Client failover proxy provider for IP failover based NN HA**
---

* [HDFS-6330](https://issues.apache.org/jira/browse/HDFS-6330) | *Major* | **Move mkdirs() to FSNamesystem**
---

* [HDFS-6328](https://issues.apache.org/jira/browse/HDFS-6328) | *Major* | **Clean up dead code in FSDirectory**
---

* [HDFS-6315](https://issues.apache.org/jira/browse/HDFS-6315) | *Major* | **Decouple recording edit logs from FSDirectory**
---

* [HDFS-6312](https://issues.apache.org/jira/browse/HDFS-6312) | *Blocker* | **WebHdfs HA failover is broken on secure clusters**
---

* [HDFS-6305](https://issues.apache.org/jira/browse/HDFS-6305) | *Critical* | **WebHdfs response decoding may throw RuntimeExceptions**
---

* [HDFS-6304](https://issues.apache.org/jira/browse/HDFS-6304) | *Major* | **Consolidate the logic of path resolution in FSDirectory**
---

* [HDFS-6297](https://issues.apache.org/jira/browse/HDFS-6297) | *Major* | **Add CLI testcases to reflect new features of dfs and dfsadmin**

Committed to the trunk and branch-2. Thanks Dasha!

---

* [HDFS-6295](https://issues.apache.org/jira/browse/HDFS-6295) | *Major* | **Add "decommissioning" state and node state filtering to dfsadmin**
---

* [HDFS-6294](https://issues.apache.org/jira/browse/HDFS-6294) | *Major* | **Use INode IDs to avoid conflicts when a file open for write is renamed**
---

* [HDFS-6293](https://issues.apache.org/jira/browse/HDFS-6293) | *Blocker* | **Issues with OIV processing PB-based fsimages**

Set "dfs.namenode.legacy-oiv-image.dir" to an appropriate directory to make standby name node or secondary name node save its file system state in the old fsimage format during checkpointing. This image can be used for offline analysis using the OfflineImageViewer.  Use the "hdfs oiv\_legacy" command to process the old fsimage format.

---

* [HDFS-6289](https://issues.apache.org/jira/browse/HDFS-6289) | *Critical* | **HA failover can fail if there are pending DN messages for DNs which no longer exist**
---

* [HDFS-6288](https://issues.apache.org/jira/browse/HDFS-6288) | *Minor* | **DFSInputStream Pread doesn't update ReadStatistics**
---

* [HDFS-6287](https://issues.apache.org/jira/browse/HDFS-6287) | *Minor* | **Add vecsum test of libhdfs read access times**
---

* [HDFS-6282](https://issues.apache.org/jira/browse/HDFS-6282) | *Minor* | **re-add testIncludeByRegistrationName**
---

* [HDFS-6281](https://issues.apache.org/jira/browse/HDFS-6281) | *Major* | **Provide option to use the NFS Gateway without having to use the Hadoop portmapper**
---

* [HDFS-6279](https://issues.apache.org/jira/browse/HDFS-6279) | *Major* | **Create new index page for JN / DN**
---

* [HDFS-6278](https://issues.apache.org/jira/browse/HDFS-6278) | *Major* | **Create HTML5-based UI for SNN**
---

* [HDFS-6276](https://issues.apache.org/jira/browse/HDFS-6276) | *Major* | **Remove unnecessary conditions and null check**
---

* [HDFS-6275](https://issues.apache.org/jira/browse/HDFS-6275) | *Major* | **Fix warnings - type arguments can be inferred and redudant local variable**
---

* [HDFS-6274](https://issues.apache.org/jira/browse/HDFS-6274) | *Major* | **Cleanup javadoc warnings in HDFS code**
---

* [HDFS-6273](https://issues.apache.org/jira/browse/HDFS-6273) | *Major* | **Config options to allow wildcard endpoints for namenode HTTP and HTTPS servers**

HDFS-6273 introduces two new HDFS configuration keys: 
- dfs.namenode.http-bind-host
- dfs.namenode.https-bind-host

The most common use case for these keys is to have the NameNode HTTP (or HTTPS) endpoints listen on all interfaces on multi-homed systems by setting the keys to 0.0.0.0 i.e. INADDR\_ANY.

For the systems background on this usage of INADDR\_ANY please refer to ip(7) in the Linux Programmer's Manual (web link: http://man7.org/linux/man-pages/man7/ip.7.html).

These keys complement the existing NameNode options:
- dfs.namenode.rpc-bind-host
- dfs.namenode.servicerpc-bind-host

---

* [HDFS-6270](https://issues.apache.org/jira/browse/HDFS-6270) | *Minor* | **Secondary namenode status page shows transaction count in bytes**
---

* [HDFS-6269](https://issues.apache.org/jira/browse/HDFS-6269) | *Major* | **NameNode Audit Log should differentiate between webHDFS open and HDFS open.**
---

* [HDFS-6268](https://issues.apache.org/jira/browse/HDFS-6268) | *Minor* | **Better sorting in NetworkTopology#pseudoSortByDistance when no local node is found**
---

* [HDFS-6266](https://issues.apache.org/jira/browse/HDFS-6266) | *Major* | **Identify full path for a given INode**
---

* [HDFS-6265](https://issues.apache.org/jira/browse/HDFS-6265) | *Minor* | **Prepare HDFS codebase for JUnit 4.11.**
---

* [HDFS-6257](https://issues.apache.org/jira/browse/HDFS-6257) | *Minor* | **TestCacheDirectives#testExceedsCapacity fails occasionally**
---

* [HDFS-6256](https://issues.apache.org/jira/browse/HDFS-6256) | *Major* | **Clean up ImageVisitor and SpotCheckImageVisitor**
---

* [HDFS-6250](https://issues.apache.org/jira/browse/HDFS-6250) | *Major* | **TestBalancerWithNodeGroup.testBalancerWithRackLocality fails**
---

* [HDFS-6243](https://issues.apache.org/jira/browse/HDFS-6243) | *Major* | **HA NameNode transition to active or shutdown may leave lingering image transfer thread.**
---

* [HDFS-6240](https://issues.apache.org/jira/browse/HDFS-6240) | *Major* | **WebImageViewer returns 404 if LISTSTATUS to an empty directory**
---

* [HDFS-6238](https://issues.apache.org/jira/browse/HDFS-6238) | *Minor* | **TestDirectoryScanner leaks file descriptors.**
---

* [HDFS-6230](https://issues.apache.org/jira/browse/HDFS-6230) | *Major* | **Expose upgrade status through NameNode web UI**
---

* [HDFS-6227](https://issues.apache.org/jira/browse/HDFS-6227) | *Major* | **ShortCircuitCache#unref should purge ShortCircuitReplicas whose streams have been closed by java interrupts**
---

* [HDFS-6225](https://issues.apache.org/jira/browse/HDFS-6225) | *Major* | **Remove the o.a.h.hdfs.server.common.UpgradeStatusReport**
---

* [HDFS-6224](https://issues.apache.org/jira/browse/HDFS-6224) | *Minor* | **Add a unit test to TestAuditLogger for file permissions passed to logAuditEvent**
---

* [HDFS-6222](https://issues.apache.org/jira/browse/HDFS-6222) | *Major* | **Remove background token renewer from webhdfs**
---

* [HDFS-6219](https://issues.apache.org/jira/browse/HDFS-6219) | *Major* | **Proxy superuser configuration should use true client IP for address checks**
---

* [HDFS-6218](https://issues.apache.org/jira/browse/HDFS-6218) | *Major* | **Audit log should use true client IP for proxied webhdfs operations**
---

* [HDFS-6217](https://issues.apache.org/jira/browse/HDFS-6217) | *Major* | **Webhdfs PUT operations may not work via a http proxy**
---

* [HDFS-6216](https://issues.apache.org/jira/browse/HDFS-6216) | *Major* | **Issues with webhdfs and http proxies**
---

* [HDFS-6214](https://issues.apache.org/jira/browse/HDFS-6214) | *Major* | **Webhdfs has poor throughput for files >2GB**
---

* [HDFS-6213](https://issues.apache.org/jira/browse/HDFS-6213) | *Minor* | **TestDataNodeConfig failing on Jenkins runs due to DN web port in use**
---

* [HDFS-6210](https://issues.apache.org/jira/browse/HDFS-6210) | *Major* | **Support GETACLSTATUS operation in WebImageViewer**
---

* [HDFS-6194](https://issues.apache.org/jira/browse/HDFS-6194) | *Major* | **Create new tests for ByteRangeInputStream**
---

* [HDFS-6191](https://issues.apache.org/jira/browse/HDFS-6191) | *Major* | **Disable quota checks when replaying edit log.**
---

* [HDFS-6190](https://issues.apache.org/jira/browse/HDFS-6190) | *Trivial* | **minor textual fixes in DFSClient**
---

* [HDFS-6186](https://issues.apache.org/jira/browse/HDFS-6186) | *Major* | **Pause deletion of blocks when the namenode starts up**
---

* [HDFS-6181](https://issues.apache.org/jira/browse/HDFS-6181) | *Trivial* | **Fix the wrong property names in NFS user guide**
---

* [HDFS-6180](https://issues.apache.org/jira/browse/HDFS-6180) | *Blocker* | **dead node count / listing is very broken in JMX and old GUI**
---

* [HDFS-6178](https://issues.apache.org/jira/browse/HDFS-6178) | *Major* | **Decommission on standby NN couldn't finish**
---

* [HDFS-6173](https://issues.apache.org/jira/browse/HDFS-6173) | *Major* | **Move the default processor from Ls to Web in OfflineImageViewer**
---

* [HDFS-6170](https://issues.apache.org/jira/browse/HDFS-6170) | *Major* | **Support GETFILESTATUS operation in WebImageViewer**
---

* [HDFS-6169](https://issues.apache.org/jira/browse/HDFS-6169) | *Major* | **Move the address in WebImageViewer**
---

* [HDFS-6168](https://issues.apache.org/jira/browse/HDFS-6168) | *Major* | **Remove deprecated methods in DistributedFileSystem**
---

* [HDFS-6167](https://issues.apache.org/jira/browse/HDFS-6167) | *Major* | **Relocate the non-public API classes in the hdfs.client package**
---

* [HDFS-6164](https://issues.apache.org/jira/browse/HDFS-6164) | *Major* | **Remove lsr in OfflineImageViewer**

The offlineimageviewer no longer generates lsr-style outputs. The functionality has been superseded by a tool that takes the fsimage and exposes WebHDFS-like API for user queries.

---

* [HDFS-6162](https://issues.apache.org/jira/browse/HDFS-6162) | *Minor* | **Format strings should use platform independent line separator**
---

* [HDFS-6160](https://issues.apache.org/jira/browse/HDFS-6160) | *Major* | **TestSafeMode occasionally fails**
---

* [HDFS-6159](https://issues.apache.org/jira/browse/HDFS-6159) | *Major* | **TestBalancerWithNodeGroup.testBalancerWithNodeGroup fails if there is block missing after balancer success**
---

* [HDFS-6158](https://issues.apache.org/jira/browse/HDFS-6158) | *Major* | **Clean up dead code for OfflineImageViewer**
---

* [HDFS-6156](https://issues.apache.org/jira/browse/HDFS-6156) | *Major* | **Simplify the JMX API that provides snapshot information**
---

* [HDFS-6155](https://issues.apache.org/jira/browse/HDFS-6155) | *Major* | **Fix Boxing/unboxing to parse a primitive findbugs warnings**
---

* [HDFS-6153](https://issues.apache.org/jira/browse/HDFS-6153) | *Minor* | **Document "fileId" and "childrenNum" fields in the FileStatus Json schema**
---

* [HDFS-6143](https://issues.apache.org/jira/browse/HDFS-6143) | *Blocker* | **WebHdfsFileSystem open should throw FileNotFoundException for non-existing paths**
---

* [HDFS-6125](https://issues.apache.org/jira/browse/HDFS-6125) | *Major* | **Cleanup unnecessary cast in HDFS code base**
---

* [HDFS-6119](https://issues.apache.org/jira/browse/HDFS-6119) | *Minor* | **FSNamesystem code cleanup**
---

* [HDFS-6112](https://issues.apache.org/jira/browse/HDFS-6112) | *Minor* | **NFS Gateway docs are incorrect for allowed hosts configuration**
---

* [HDFS-6110](https://issues.apache.org/jira/browse/HDFS-6110) | *Major* | **adding more slow action log in critical write path**

Log slow i/o.  Set log thresholds in dfsclient and datanode via the below  new configs:

dfs.client.slow.io.warning.threshold.ms (Default 30 seconds)
dfs.datanode.slow.io.warning.threshold.ms (Default 300ms)

---

* [HDFS-6109](https://issues.apache.org/jira/browse/HDFS-6109) | *Major* | **let sync\_file\_range() system call run in background**
---

* [HDFS-6056](https://issues.apache.org/jira/browse/HDFS-6056) | *Major* | **Clean up NFS config settings**
---

* [HDFS-6007](https://issues.apache.org/jira/browse/HDFS-6007) | *Minor* | **Update documentation about short-circuit local reads**
---

* [HDFS-5978](https://issues.apache.org/jira/browse/HDFS-5978) | *Major* | **Create a tool to take fsimage and expose read-only WebHDFS API**
---

* [HDFS-5892](https://issues.apache.org/jira/browse/HDFS-5892) | *Minor* | **TestDeleteBlockPool fails in branch-2**
---

* [HDFS-5865](https://issues.apache.org/jira/browse/HDFS-5865) | *Minor* | **Update OfflineImageViewer document**
---

* [HDFS-5693](https://issues.apache.org/jira/browse/HDFS-5693) | *Major* | **Few NN metrics data points were collected via JMX when NN is under heavy load**
---

* [HDFS-5683](https://issues.apache.org/jira/browse/HDFS-5683) | *Major* | **Better audit log messages for caching operations**
---

* [HDFS-5669](https://issues.apache.org/jira/browse/HDFS-5669) | *Major* | **Storage#tryLock() should check for null before logging successfull message**
---

* [HDFS-5591](https://issues.apache.org/jira/browse/HDFS-5591) | *Minor* | **Checkpointing should use monotonic time when calculating period**
---

* [HDFS-5522](https://issues.apache.org/jira/browse/HDFS-5522) | *Major* | **Datanode disk error check may be incorrectly skipped**
---

* [HDFS-5411](https://issues.apache.org/jira/browse/HDFS-5411) | *Minor* | **Update Bookkeeper dependency to 4.2.3**
---

* [HDFS-5409](https://issues.apache.org/jira/browse/HDFS-5409) | *Minor* | **TestOfflineEditsViewer#testStored fails on Windows due to CRLF line endings in editsStored.xml from git checkout**
---

* [HDFS-5381](https://issues.apache.org/jira/browse/HDFS-5381) | *Minor* | **ExtendedBlock#hashCode should use both blockId and block pool ID**
---

* [HDFS-5196](https://issues.apache.org/jira/browse/HDFS-5196) | *Minor* | **Provide more snapshot information in WebUI**
---

* [HDFS-5168](https://issues.apache.org/jira/browse/HDFS-5168) | *Critical* | **BlockPlacementPolicy does not work for cross node group dependencies**
---

* [HDFS-4913](https://issues.apache.org/jira/browse/HDFS-4913) | *Major* | **Deleting file through fuse-dfs when using trash fails requiring root permissions**
---

* [HDFS-4909](https://issues.apache.org/jira/browse/HDFS-4909) | *Blocker* | **Avoid protocol buffer RPC namespace clashes**
---

* [HDFS-4667](https://issues.apache.org/jira/browse/HDFS-4667) | *Major* | **Capture renamed files/directories in snapshot diff report**
---

* [HDFS-4286](https://issues.apache.org/jira/browse/HDFS-4286) | *Major* | **Changes from BOOKKEEPER-203 broken capability of including bookkeeper-server jar in hidden package of BKJM**
---

* [HDFS-4221](https://issues.apache.org/jira/browse/HDFS-4221) | *Major* | **Remove the format limitation point from BKJM documentation as HDFS-3810 closed**
---

* [HDFS-3848](https://issues.apache.org/jira/browse/HDFS-3848) | *Major* | **A Bug in recoverLeaseInternal method of FSNameSystem class**
---

* [HDFS-3828](https://issues.apache.org/jira/browse/HDFS-3828) | *Major* | **Block Scanner rescans blocks too frequently**
---

* [HDFS-3493](https://issues.apache.org/jira/browse/HDFS-3493) | *Major* | **Invalidate excess corrupted blocks as long as minimum replication is satisfied**
---

* [HDFS-3087](https://issues.apache.org/jira/browse/HDFS-3087) | *Critical* | **Decomissioning on NN restart can complete without blocks being replicated**
---

* [HDFS-2949](https://issues.apache.org/jira/browse/HDFS-2949) | *Major* | **HA: Add check to active state transition to prevent operator-induced split brain**
---

* [HDFS-2006](https://issues.apache.org/jira/browse/HDFS-2006) | *Major* | **ability to support storing extended attributes per file**
---

* [MAPREDUCE-6002](https://issues.apache.org/jira/browse/MAPREDUCE-6002) | *Major* | **MR task should prevent report error to AM when process is shutting down**
---

* [MAPREDUCE-5952](https://issues.apache.org/jira/browse/MAPREDUCE-5952) | *Blocker* | **LocalContainerLauncher#renameMapOutputForReduce incorrectly assumes a single dir for mapOutIndex**
---

* [MAPREDUCE-5939](https://issues.apache.org/jira/browse/MAPREDUCE-5939) | *Major* | **StartTime showing up as the epoch time in JHS UI after upgrade**
---

* [MAPREDUCE-5924](https://issues.apache.org/jira/browse/MAPREDUCE-5924) | *Major* | **Windows: Sort Job failed due to 'Invalid event: TA\_COMMIT\_PENDING at COMMIT\_PENDING'**
---

* [MAPREDUCE-5920](https://issues.apache.org/jira/browse/MAPREDUCE-5920) | *Minor* | **Add Xattr option in DistCp docs**
---

* [MAPREDUCE-5900](https://issues.apache.org/jira/browse/MAPREDUCE-5900) | *Major* | **Container preemption interpreted as task failures and eventually job failures**
---

* [MAPREDUCE-5899](https://issues.apache.org/jira/browse/MAPREDUCE-5899) | *Major* | **Support incremental data copy in DistCp**
---

* [MAPREDUCE-5898](https://issues.apache.org/jira/browse/MAPREDUCE-5898) | *Major* | **distcp to support preserving HDFS extended attributes(XAttrs)**
---

* [MAPREDUCE-5896](https://issues.apache.org/jira/browse/MAPREDUCE-5896) | *Major* | **InputSplits should indicate which locations have the block cached in memory**
---

* [MAPREDUCE-5895](https://issues.apache.org/jira/browse/MAPREDUCE-5895) | *Major* | **FileAlreadyExistsException was thrown : Temporary Index File can not be cleaned up because OutputStream doesn't close properly**
---

* [MAPREDUCE-5888](https://issues.apache.org/jira/browse/MAPREDUCE-5888) | *Major* | **Failed job leaves hung AM after it unregisters**
---

* [MAPREDUCE-5886](https://issues.apache.org/jira/browse/MAPREDUCE-5886) | *Minor* | **Allow wordcount example job to accept multiple input paths.**
---

* [MAPREDUCE-5884](https://issues.apache.org/jira/browse/MAPREDUCE-5884) | *Major* | **History server uses short user name when canceling tokens**
---

* [MAPREDUCE-5874](https://issues.apache.org/jira/browse/MAPREDUCE-5874) | *Major* | **Creating MapReduce REST API section**
---

* [MAPREDUCE-5868](https://issues.apache.org/jira/browse/MAPREDUCE-5868) | *Major* | **TestPipeApplication causing nightly build to fail**
---

* [MAPREDUCE-5862](https://issues.apache.org/jira/browse/MAPREDUCE-5862) | *Critical* | **Line records longer than 2x split size aren't handled correctly**
---

* [MAPREDUCE-5861](https://issues.apache.org/jira/browse/MAPREDUCE-5861) | *Minor* | **finishedSubMaps field in LocalContainerLauncher does not need to be volatile**
---

* [MAPREDUCE-5852](https://issues.apache.org/jira/browse/MAPREDUCE-5852) | *Minor* | **Prepare MapReduce codebase for JUnit 4.11.**
---

* [MAPREDUCE-5846](https://issues.apache.org/jira/browse/MAPREDUCE-5846) | *Major* | **Rumen doesn't understand JobQueueChangedEvent**
---

* [MAPREDUCE-5844](https://issues.apache.org/jira/browse/MAPREDUCE-5844) | *Major* | **Add a configurable delay to reducer-preemption**
---

* [MAPREDUCE-5837](https://issues.apache.org/jira/browse/MAPREDUCE-5837) | *Critical* | **MRAppMaster fails when checking on uber mode**
---

* [MAPREDUCE-5836](https://issues.apache.org/jira/browse/MAPREDUCE-5836) | *Trivial* | **Fix typo in RandomTextWriter**
---

* [MAPREDUCE-5834](https://issues.apache.org/jira/browse/MAPREDUCE-5834) | *Major* | **TestGridMixClasses tests timesout on branch-2**
---

* [MAPREDUCE-5825](https://issues.apache.org/jira/browse/MAPREDUCE-5825) | *Major* | **Provide diagnostics for reducers killed during ramp down**
---

* [MAPREDUCE-5814](https://issues.apache.org/jira/browse/MAPREDUCE-5814) | *Major* | **fat jar with *-default.xml may fail when mapreduce.job.classloader=true.**
---

* [MAPREDUCE-5812](https://issues.apache.org/jira/browse/MAPREDUCE-5812) | *Major* | ** Make job context available to OutputCommitter.isRecoverySupported()**
---

* [MAPREDUCE-5809](https://issues.apache.org/jira/browse/MAPREDUCE-5809) | *Major* | **Enhance distcp to support preserving HDFS ACLs.**
---

* [MAPREDUCE-5804](https://issues.apache.org/jira/browse/MAPREDUCE-5804) | *Major* | **TestMRJobsWithProfiler#testProfiler timesout**
---

* [MAPREDUCE-5790](https://issues.apache.org/jira/browse/MAPREDUCE-5790) | *Blocker* | **Default map hprof profile options do not work**
---

* [MAPREDUCE-5777](https://issues.apache.org/jira/browse/MAPREDUCE-5777) | *Major* | **Support utf-8 text with BOM (byte order marker)**
---

* [MAPREDUCE-5775](https://issues.apache.org/jira/browse/MAPREDUCE-5775) | *Minor* | **Remove unnecessary job.setNumReduceTasks in SleepJob.createJob**
---

* [MAPREDUCE-5774](https://issues.apache.org/jira/browse/MAPREDUCE-5774) | *Trivial* | **Job overview in History UI should list reducer phases in chronological order**
---

* [MAPREDUCE-5765](https://issues.apache.org/jira/browse/MAPREDUCE-5765) | *Minor* | **Update hadoop-pipes examples README**
---

* [MAPREDUCE-5759](https://issues.apache.org/jira/browse/MAPREDUCE-5759) | *Major* | **Remove unnecessary conf load in Limits**
---

* [MAPREDUCE-5749](https://issues.apache.org/jira/browse/MAPREDUCE-5749) | *Major* | **TestRMContainerAllocator#testReportedAppProgress Failed**
---

* [MAPREDUCE-5713](https://issues.apache.org/jira/browse/MAPREDUCE-5713) | *Trivial* | **InputFormat and JobConf JavaDoc Fixes**
---

* [MAPREDUCE-5671](https://issues.apache.org/jira/browse/MAPREDUCE-5671) | *Major* | **NaN can be created by client and assign to Progress**
---

* [MAPREDUCE-5665](https://issues.apache.org/jira/browse/MAPREDUCE-5665) | *Major* | **Add audience annotations to MiniMRYarnCluster and MiniMRCluster**
---

* [MAPREDUCE-5652](https://issues.apache.org/jira/browse/MAPREDUCE-5652) | *Major* | **NM Recovery. ShuffleHandler should handle NM restarts**
---

* [MAPREDUCE-5642](https://issues.apache.org/jira/browse/MAPREDUCE-5642) | *Minor* | **TestMiniMRChildTask fails on Windows**
---

* [MAPREDUCE-5639](https://issues.apache.org/jira/browse/MAPREDUCE-5639) | *Major* | **Port DistCp2 document to trunk**
---

* [MAPREDUCE-5638](https://issues.apache.org/jira/browse/MAPREDUCE-5638) | *Major* | **Port Hadoop Archives document to trunk**
---

* [MAPREDUCE-5637](https://issues.apache.org/jira/browse/MAPREDUCE-5637) | *Major* | **Convert Hadoop Streaming document to APT**
---

* [MAPREDUCE-5636](https://issues.apache.org/jira/browse/MAPREDUCE-5636) | *Major* | **Convert MapReduce Tutorial document to APT**
---

* [MAPREDUCE-5517](https://issues.apache.org/jira/browse/MAPREDUCE-5517) | *Minor* | **enabling uber mode with 0 reducer still requires mapreduce.reduce.memory.mb to be less than yarn.app.mapreduce.am.resource.mb**
---

* [MAPREDUCE-5456](https://issues.apache.org/jira/browse/MAPREDUCE-5456) | *Minor* | **TestFetcher.testCopyFromHostExtraBytes is missing**
---

* [MAPREDUCE-5402](https://issues.apache.org/jira/browse/MAPREDUCE-5402) | *Major* | **DynamicInputFormat should allow overriding of MAX\_CHUNKS\_TOLERABLE**
---

* [MAPREDUCE-5309](https://issues.apache.org/jira/browse/MAPREDUCE-5309) | *Major* | **2.0.4 JobHistoryParser can't parse certain failed job history files generated by 2.0.3 history server**
---

* [MAPREDUCE-5014](https://issues.apache.org/jira/browse/MAPREDUCE-5014) | *Major* | **Extending DistCp through a custom CopyListing is not possible**
---

* [MAPREDUCE-4937](https://issues.apache.org/jira/browse/MAPREDUCE-4937) | *Major* | **MR AM handles an oversized split metainfo file poorly**
---

* [MAPREDUCE-4282](https://issues.apache.org/jira/browse/MAPREDUCE-4282) | *Major* | **Convert Forrest docs to APT**
---

* [YARN-2335](https://issues.apache.org/jira/browse/YARN-2335) | *Minor* | **Annotate all hadoop-sls APIs as @Private**
---

* [YARN-2319](https://issues.apache.org/jira/browse/YARN-2319) | *Major* | **Fix MiniKdc not close in TestRMWebServicesDelegationTokens.java**
---

* [YARN-2300](https://issues.apache.org/jira/browse/YARN-2300) | *Major* | **Document better sample requests for RM web services for submitting apps**
---

* [YARN-2270](https://issues.apache.org/jira/browse/YARN-2270) | *Minor* | **TestFSDownload#testDownloadPublicWithStatCache fails in trunk**
---

* [YARN-2250](https://issues.apache.org/jira/browse/YARN-2250) | *Major* | **FairScheduler.findLowestCommonAncestorQueue returns null when queues not identical**
---

* [YARN-2247](https://issues.apache.org/jira/browse/YARN-2247) | *Blocker* | **Allow RM web services users to authenticate using delegation tokens**
---

* [YARN-2241](https://issues.apache.org/jira/browse/YARN-2241) | *Minor* | **ZKRMStateStore: On startup, show nicer messages if znodes already exist**
---

* [YARN-2233](https://issues.apache.org/jira/browse/YARN-2233) | *Blocker* | **Implement web services to create, renew and cancel delegation tokens**
---

* [YARN-2232](https://issues.apache.org/jira/browse/YARN-2232) | *Major* | **ClientRMService doesn't allow delegation token owner to cancel their own token in secure mode**
---

* [YARN-2224](https://issues.apache.org/jira/browse/YARN-2224) | *Trivial* | **Explicitly enable vmem check in TestContainersMonitor#testContainerKillOnMemoryOverflow**
---

* [YARN-2216](https://issues.apache.org/jira/browse/YARN-2216) | *Minor* | **TestRMApplicationHistoryWriter sometimes fails in trunk**
---

* [YARN-2204](https://issues.apache.org/jira/browse/YARN-2204) | *Trivial* | **TestAMRestart#testAMRestartWithExistingContainers assumes CapacityScheduler**
---

* [YARN-2201](https://issues.apache.org/jira/browse/YARN-2201) | *Major* | **TestRMWebServicesAppsModification dependent on yarn-default.xml**
---

* [YARN-2195](https://issues.apache.org/jira/browse/YARN-2195) | *Trivial* | **Clean a piece of code in ResourceRequest**
---

* [YARN-2192](https://issues.apache.org/jira/browse/YARN-2192) | *Major* | **TestRMHA fails when run with a mix of Schedulers**
---

* [YARN-2191](https://issues.apache.org/jira/browse/YARN-2191) | *Major* | **Add a test to make sure NM will do application cleanup even if RM restarting happens before application completed**
---

* [YARN-2187](https://issues.apache.org/jira/browse/YARN-2187) | *Major* | **FairScheduler: Disable max-AM-share check by default**
---

* [YARN-2171](https://issues.apache.org/jira/browse/YARN-2171) | *Critical* | **AMs block on the CapacityScheduler lock during allocate()**
---

* [YARN-2167](https://issues.apache.org/jira/browse/YARN-2167) | *Major* | **LeveldbIterator should get closed in NMLeveldbStateStoreService#loadLocalizationState() within finally block**
---

* [YARN-2163](https://issues.apache.org/jira/browse/YARN-2163) | *Minor* | **WebUI: Order of AppId in apps table should be consistent with ApplicationId.compareTo().**
---

* [YARN-2159](https://issues.apache.org/jira/browse/YARN-2159) | *Trivial* | **Better logging in SchedulerNode#allocateContainer**
---

* [YARN-2155](https://issues.apache.org/jira/browse/YARN-2155) | *Major* | **FairScheduler: Incorrect threshold check for preemption**
---

* [YARN-2152](https://issues.apache.org/jira/browse/YARN-2152) | *Major* | **Recover missing container information**
---

* [YARN-2148](https://issues.apache.org/jira/browse/YARN-2148) | *Major* | **TestNMClient failed due more exit code values added and passed to AM**
---

* [YARN-2132](https://issues.apache.org/jira/browse/YARN-2132) | *Major* | **ZKRMStateStore.ZKAction#runWithRetries doesn't log the exception it encounters**
---

* [YARN-2128](https://issues.apache.org/jira/browse/YARN-2128) | *Major* | **FairScheduler: Incorrect calculation of amResource usage**
---

* [YARN-2125](https://issues.apache.org/jira/browse/YARN-2125) | *Minor* | **ProportionalCapacityPreemptionPolicy should only log CSV when debug enabled**
---

* [YARN-2124](https://issues.apache.org/jira/browse/YARN-2124) | *Critical* | **ProportionalCapacityPreemptionPolicy cannot work because it's initialized before scheduler initialized**
---

* [YARN-2122](https://issues.apache.org/jira/browse/YARN-2122) | *Major* | **In AllocationFileLoaderService, the reloadThread should be created in init() and started in start()**
---

* [YARN-2121](https://issues.apache.org/jira/browse/YARN-2121) | *Major* | **TimelineAuthenticator#hasDelegationToken may throw NPE**
---

* [YARN-2119](https://issues.apache.org/jira/browse/YARN-2119) | *Major* | **DEFAULT\_PROXY\_ADDRESS should use DEFAULT\_PROXY\_PORT**
---

* [YARN-2118](https://issues.apache.org/jira/browse/YARN-2118) | *Major* | **Type mismatch in contains() check of TimelineWebServices#injectOwnerInfo()**
---

* [YARN-2117](https://issues.apache.org/jira/browse/YARN-2117) | *Minor* | **Close of Reader in TimelineAuthenticationFilterInitializer#initFilter() should be enclosed in finally block**
---

* [YARN-2115](https://issues.apache.org/jira/browse/YARN-2115) | *Major* | **Replace RegisterNodeManagerRequest#ContainerStatus with a new NMContainerStatus**
---

* [YARN-2112](https://issues.apache.org/jira/browse/YARN-2112) | *Major* | **Hadoop-client is missing jackson libs due to inappropriate configs in pom.xml**
---

* [YARN-2111](https://issues.apache.org/jira/browse/YARN-2111) | *Major* | **In FairScheduler.attemptScheduling, we don't count containers as assigned if they have 0 memory but non-zero cores**
---

* [YARN-2109](https://issues.apache.org/jira/browse/YARN-2109) | *Major* | **Fix TestRM to work with both schedulers**
---

* [YARN-2107](https://issues.apache.org/jira/browse/YARN-2107) | *Major* | **Refactor timeline classes into server.timeline package**
---

* [YARN-2105](https://issues.apache.org/jira/browse/YARN-2105) | *Major* | **Fix TestFairScheduler after YARN-2012**
---

* [YARN-2104](https://issues.apache.org/jira/browse/YARN-2104) | *Major* | **Scheduler queue filter failed to work because index of queue column changed**
---

* [YARN-2103](https://issues.apache.org/jira/browse/YARN-2103) | *Major* | **Inconsistency between viaProto flag and initial value of SerializedExceptionProto.Builder**
---

* [YARN-2096](https://issues.apache.org/jira/browse/YARN-2096) | *Major* | **Race in TestRMRestart#testQueueMetricsOnRMRestart**
---

* [YARN-2091](https://issues.apache.org/jira/browse/YARN-2091) | *Major* | **Add more values to ContainerExitStatus and pass it from NM to RM and then to app masters**
---

* [YARN-2089](https://issues.apache.org/jira/browse/YARN-2089) | *Major* | **FairScheduler: QueuePlacementPolicy and QueuePlacementRule are missing audience annotations**
---

* [YARN-2075](https://issues.apache.org/jira/browse/YARN-2075) | *Major* | **TestRMAdminCLI consistently fail on trunk and branch-2**
---

* [YARN-2074](https://issues.apache.org/jira/browse/YARN-2074) | *Major* | **Preemption of AM containers shouldn't count towards AM failures**
---

* [YARN-2073](https://issues.apache.org/jira/browse/YARN-2073) | *Critical* | **Fair Scheduler: Add a utilization threshold to prevent preempting resources when cluster is free**
---

* [YARN-2072](https://issues.apache.org/jira/browse/YARN-2072) | *Major* | **RM/NM UIs and webservices are missing vcore information**
---

* [YARN-2071](https://issues.apache.org/jira/browse/YARN-2071) | *Major* | **Enforce more restricted permissions for the directory of Leveldb store**
---

* [YARN-2065](https://issues.apache.org/jira/browse/YARN-2065) | *Major* | **AM cannot create new containers after restart-NM token from previous attempt used**
---

* [YARN-2061](https://issues.apache.org/jira/browse/YARN-2061) | *Minor* | **Revisit logging levels in ZKRMStateStore**
---

* [YARN-2059](https://issues.apache.org/jira/browse/YARN-2059) | *Major* | **Extend access control for admin acls**
---

* [YARN-2054](https://issues.apache.org/jira/browse/YARN-2054) | *Major* | **Better defaults for YARN ZK configs for retries and retry-inteval when HA is enabled**
---

* [YARN-2052](https://issues.apache.org/jira/browse/YARN-2052) | *Major* | **ContainerId creation after work preserving restart is broken**
---

* [YARN-2050](https://issues.apache.org/jira/browse/YARN-2050) | *Major* | **Fix LogCLIHelpers to create the correct FileContext**
---

* [YARN-2049](https://issues.apache.org/jira/browse/YARN-2049) | *Major* | **Delegation token stuff for the timeline sever**
---

* [YARN-2036](https://issues.apache.org/jira/browse/YARN-2036) | *Minor* | **Document yarn.resourcemanager.hostname in ClusterSetup**
---

* [YARN-2030](https://issues.apache.org/jira/browse/YARN-2030) | *Major* | **Use StateMachine to simplify handleStoreEvent() in RMStateStore**
---

* [YARN-2022](https://issues.apache.org/jira/browse/YARN-2022) | *Major* | **Preempting an Application Master container can be kept as least priority when multiple applications are marked for preemption by ProportionalCapacityPreemptionPolicy**
---

* [YARN-2017](https://issues.apache.org/jira/browse/YARN-2017) | *Major* | **Merge some of the common lib code in schedulers**
---

* [YARN-2012](https://issues.apache.org/jira/browse/YARN-2012) | *Major* | **Fair Scheduler: allow default queue placement rule to take an arbitrary queue**
---

* [YARN-2011](https://issues.apache.org/jira/browse/YARN-2011) | *Trivial* | **Fix typo and warning in TestLeafQueue**
---

* [YARN-1987](https://issues.apache.org/jira/browse/YARN-1987) | *Major* | **Wrapper for leveldb DBIterator to aid in handling database exceptions**
---

* [YARN-1982](https://issues.apache.org/jira/browse/YARN-1982) | *Major* | **Rename the daemon name to timelineserver**
---

* [YARN-1981](https://issues.apache.org/jira/browse/YARN-1981) | *Major* | **Nodemanager version is not updated when a node reconnects**
---

* [YARN-1977](https://issues.apache.org/jira/browse/YARN-1977) | *Minor* | **Add tests on getApplicationRequest with filtering start time range**
---

* [YARN-1970](https://issues.apache.org/jira/browse/YARN-1970) | *Minor* | **Prepare YARN codebase for JUnit 4.11.**
---

* [YARN-1940](https://issues.apache.org/jira/browse/YARN-1940) | *Major* | **deleteAsUser() terminates early without deleting more files on error**
---

* [YARN-1938](https://issues.apache.org/jira/browse/YARN-1938) | *Major* | **Kerberos authentication for the timeline server**
---

* [YARN-1937](https://issues.apache.org/jira/browse/YARN-1937) | *Major* | **Add entity-level access control of the timeline data for owners only**
---

* [YARN-1936](https://issues.apache.org/jira/browse/YARN-1936) | *Major* | **Secured timeline client**
---

* [YARN-1923](https://issues.apache.org/jira/browse/YARN-1923) | *Major* | **Make FairScheduler resource ratio calculations terminate faster**
---

* [YARN-1913](https://issues.apache.org/jira/browse/YARN-1913) | *Major* | **With Fair Scheduler, cluster can logjam when all resources are consumed by AMs**
---

* [YARN-1889](https://issues.apache.org/jira/browse/YARN-1889) | *Minor* | **In Fair Scheduler, avoid creating objects on each call to AppSchedulable comparator**
---

* [YARN-1885](https://issues.apache.org/jira/browse/YARN-1885) | *Major* | **RM may not send the app-finished signal after RM restart to some nodes where the application ran before RM restarts**
---

* [YARN-1877](https://issues.apache.org/jira/browse/YARN-1877) | *Critical* | **Document yarn.resourcemanager.zk-auth and its scope**
---

* [YARN-1870](https://issues.apache.org/jira/browse/YARN-1870) | *Minor* | **FileInputStream is not closed in ProcfsBasedProcessTree#constructProcessSMAPInfo()**
---

* [YARN-1868](https://issues.apache.org/jira/browse/YARN-1868) | *Major* | **YARN status web ui does not show correctly in IE 11**
---

* [YARN-1865](https://issues.apache.org/jira/browse/YARN-1865) | *Minor* | **ShellScriptBuilder does not check for some error conditions**
---

* [YARN-1864](https://issues.apache.org/jira/browse/YARN-1864) | *Major* | **Fair Scheduler Dynamic Hierarchical User Queues**
---

* [YARN-1845](https://issues.apache.org/jira/browse/YARN-1845) | *Major* | ** Elapsed time for failed tasks that never started is  wrong**
---

* [YARN-1790](https://issues.apache.org/jira/browse/YARN-1790) | *Major* | **Fair Scheduler UI not showing apps table**
---

* [YARN-1784](https://issues.apache.org/jira/browse/YARN-1784) | *Minor* | **TestContainerAllocation assumes CapacityScheduler**
---

* [YARN-1757](https://issues.apache.org/jira/browse/YARN-1757) | *Major* | **NM Recovery. Auxiliary service support.**
---

* [YARN-1751](https://issues.apache.org/jira/browse/YARN-1751) | *Major* | **Improve MiniYarnCluster for log aggregation testing**
---

* [YARN-1736](https://issues.apache.org/jira/browse/YARN-1736) | *Minor* | **FS: AppSchedulable.assignContainer's priority argument is redundant**
---

* [YARN-1726](https://issues.apache.org/jira/browse/YARN-1726) | *Blocker* | **ResourceSchedulerWrapper broken due to AbstractYarnScheduler**
---

* [YARN-1718](https://issues.apache.org/jira/browse/YARN-1718) | *Major* | **Fix a couple isTerminals in Fair Scheduler queue placement rules**
---

* [YARN-1713](https://issues.apache.org/jira/browse/YARN-1713) | *Blocker* | **Implement getnewapplication and submitapp as part of RM web service**
---

* [YARN-1702](https://issues.apache.org/jira/browse/YARN-1702) | *Major* | **Expose kill app functionality as part of RM web services**
---

* [YARN-1678](https://issues.apache.org/jira/browse/YARN-1678) | *Major* | **Fair scheduler gabs incessantly about reservations**
---

* [YARN-1561](https://issues.apache.org/jira/browse/YARN-1561) | *Minor* | **Fix a generic type warning in FairScheduler**
---

* [YARN-1550](https://issues.apache.org/jira/browse/YARN-1550) | *Critical* | **NPE in FairSchedulerAppsBlock#render**
---

* [YARN-1520](https://issues.apache.org/jira/browse/YARN-1520) | *Major* | **update capacity scheduler docs to include necessary parameters**
---

* [YARN-1479](https://issues.apache.org/jira/browse/YARN-1479) | *Major* | **Invalid NaN values in Hadoop REST API JSON response**
---

* [YARN-1474](https://issues.apache.org/jira/browse/YARN-1474) | *Major* | **Make schedulers services**
---

* [YARN-1429](https://issues.apache.org/jira/browse/YARN-1429) | *Trivial* | ***nix: Allow a way for users to augment classpath of YARN daemons**
---

* [YARN-1424](https://issues.apache.org/jira/browse/YARN-1424) | *Minor* | **RMAppAttemptImpl should return the DummyApplicationResourceUsageReport for all invalid accesses**
---

* [YARN-1408](https://issues.apache.org/jira/browse/YARN-1408) | *Major* | **Preemption caused Invalid State Event: ACQUIRED at KILLED and caused a task timeout for 30mins**
---

* [YARN-1368](https://issues.apache.org/jira/browse/YARN-1368) | *Major* | **Common work to re-populate containers’ state into scheduler**
---

* [YARN-1366](https://issues.apache.org/jira/browse/YARN-1366) | *Major* | **AM should implement Resync with the ApplicationMasterService instead of shutting down**
---

* [YARN-1365](https://issues.apache.org/jira/browse/YARN-1365) | *Major* | **ApplicationMasterService to allow Register of an app that was running before restart**
---

* [YARN-1362](https://issues.apache.org/jira/browse/YARN-1362) | *Major* | **Distinguish between nodemanager shutdown for decommission vs shutdown for restart**
---

* [YARN-1339](https://issues.apache.org/jira/browse/YARN-1339) | *Major* | **Recover DeletionService state upon nodemanager restart**
---

* [YARN-1338](https://issues.apache.org/jira/browse/YARN-1338) | *Major* | **Recover localized resource cache state upon nodemanager restart**
---

* [YARN-1136](https://issues.apache.org/jira/browse/YARN-1136) | *Major* | **Replace junit.framework.Assert with org.junit.Assert**
---

* [YARN-738](https://issues.apache.org/jira/browse/YARN-738) | *Major* | **TestClientRMTokens is failing irregularly while running all yarn tests**
---

* [YARN-614](https://issues.apache.org/jira/browse/YARN-614) | *Major* | **Separate AM failures from hardware failure or YARN error and do not count them to AM retry count**
---

* [YARN-596](https://issues.apache.org/jira/browse/YARN-596) | *Major* | **Use scheduling policies throughout the queue hierarchy to decide which containers to preempt**
---

* [YARN-483](https://issues.apache.org/jira/browse/YARN-483) | *Major* | **Improve documentation on log aggregation in yarn-default.xml**


