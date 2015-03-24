# Hadoop HADOOP 2.3.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-10317](https://issues.apache.org/jira/browse/HADOOP-10317) | *Major* | **Rename branch-2.3 release version from 2.4.0-SNAPSHOT to 2.3.0-SNAPSHOT**
---

* [HADOOP-10313](https://issues.apache.org/jira/browse/HADOOP-10313) | *Major* | **Script and jenkins job to produce Hadoop release artifacts**
---

* [HADOOP-10311](https://issues.apache.org/jira/browse/HADOOP-10311) | *Blocker* | **Cleanup vendor names from the code base**
---

* [HADOOP-10310](https://issues.apache.org/jira/browse/HADOOP-10310) | *Blocker* | **SaslRpcServer should be initialized even when no secret manager present**
---

* [HADOOP-10305](https://issues.apache.org/jira/browse/HADOOP-10305) | *Major* | **Add "rpc.metrics.quantile.enable" and "rpc.metrics.percentiles.intervals" to core-default.xml**
---

* [HADOOP-10292](https://issues.apache.org/jira/browse/HADOOP-10292) | *Major* | **Restore HttpServer from branch-2.2 in branch-2**
---

* [HADOOP-10291](https://issues.apache.org/jira/browse/HADOOP-10291) | *Major* | **TestSecurityUtil#testSocketAddrWithIP fails**
---

* [HADOOP-10288](https://issues.apache.org/jira/browse/HADOOP-10288) | *Major* | **Explicit reference to Log4JLogger breaks non-log4j users**
---

* [HADOOP-10274](https://issues.apache.org/jira/browse/HADOOP-10274) | *Minor* | **Lower the logging level from ERROR to WARN for UGI.doAs method**
---

* [HADOOP-10273](https://issues.apache.org/jira/browse/HADOOP-10273) | *Major* | **Fix 'mvn site'**
---

* [HADOOP-10255](https://issues.apache.org/jira/browse/HADOOP-10255) | *Blocker* | **Rename HttpServer to HttpServer2 to retain older HttpServer in branch-2 for compatibility**
---

* [HADOOP-10252](https://issues.apache.org/jira/browse/HADOOP-10252) | *Major* | **HttpServer can't start if hostname is not specified**
---

* [HADOOP-10250](https://issues.apache.org/jira/browse/HADOOP-10250) | *Major* | **VersionUtil returns wrong value when comparing two versions**
---

* [HADOOP-10248](https://issues.apache.org/jira/browse/HADOOP-10248) | *Major* | **Property name should be included in the exception where property value is null**
---

* [HADOOP-10240](https://issues.apache.org/jira/browse/HADOOP-10240) | *Trivial* | **Windows build instructions incorrectly state requirement of protoc 2.4.1 instead of 2.5.0**
---

* [HADOOP-10236](https://issues.apache.org/jira/browse/HADOOP-10236) | *Trivial* | **Fix typo in o.a.h.ipc.Client#checkResponse**
---

* [HADOOP-10235](https://issues.apache.org/jira/browse/HADOOP-10235) | *Major* | **Hadoop tarball has 2 versions of stax-api JARs**
---

* [HADOOP-10234](https://issues.apache.org/jira/browse/HADOOP-10234) | *Major* | **"hadoop.cmd jar" does not propagate exit code.**
---

* [HADOOP-10228](https://issues.apache.org/jira/browse/HADOOP-10228) | *Minor* | **FsPermission#fromShort() should cache FsAction.values()**
---

* [HADOOP-10223](https://issues.apache.org/jira/browse/HADOOP-10223) | *Minor* | **MiniKdc#main() should close the FileReader it creates**
---

* [HADOOP-10214](https://issues.apache.org/jira/browse/HADOOP-10214) | *Major* | **Fix multithreaded correctness warnings in ActiveStandbyElector**
---

* [HADOOP-10212](https://issues.apache.org/jira/browse/HADOOP-10212) | *Major* | **Incorrect compile command in Native Library document**
---

* [HADOOP-10208](https://issues.apache.org/jira/browse/HADOOP-10208) | *Trivial* | **Remove duplicate initialization in StringUtils.getStringCollection**
---

* [HADOOP-10207](https://issues.apache.org/jira/browse/HADOOP-10207) | *Minor* | **TestUserGroupInformation#testLogin is flaky**
---

* [HADOOP-10203](https://issues.apache.org/jira/browse/HADOOP-10203) | *Major* | **Connection leak in Jets3tNativeFileSystemStore#retrieveMetadata**
---

* [HADOOP-10198](https://issues.apache.org/jira/browse/HADOOP-10198) | *Minor* | **DomainSocket: add support for socketpair**
---

* [HADOOP-10193](https://issues.apache.org/jira/browse/HADOOP-10193) | *Minor* | **hadoop-auth's PseudoAuthenticationHandler can consume getInputStream**
---

* [HADOOP-10178](https://issues.apache.org/jira/browse/HADOOP-10178) | *Major* | **Configuration deprecation always emit "deprecated" warnings when a new key is used**
---

* [HADOOP-10175](https://issues.apache.org/jira/browse/HADOOP-10175) | *Major* | **Har files system authority should preserve userinfo**
---

* [HADOOP-10173](https://issues.apache.org/jira/browse/HADOOP-10173) | *Critical* | **Remove UGI from DIGEST-MD5 SASL server creation**
---

* [HADOOP-10172](https://issues.apache.org/jira/browse/HADOOP-10172) | *Critical* | **Cache SASL server factories**
---

* [HADOOP-10171](https://issues.apache.org/jira/browse/HADOOP-10171) | *Major* | **TestRPC fails intermittently on jkd7**
---

* [HADOOP-10169](https://issues.apache.org/jira/browse/HADOOP-10169) | *Minor* | **remove the unnecessary  synchronized in JvmMetrics class**
---

* [HADOOP-10168](https://issues.apache.org/jira/browse/HADOOP-10168) | *Major* | **fix javadoc of ReflectionUtils.copy**
---

* [HADOOP-10167](https://issues.apache.org/jira/browse/HADOOP-10167) | *Major* | **Mark hadoop-common source as UTF-8 in Maven pom files / refactoring**
---

* [HADOOP-10164](https://issues.apache.org/jira/browse/HADOOP-10164) | *Major* | **Allow UGI to login with a known Subject**
---

* [HADOOP-10162](https://issues.apache.org/jira/browse/HADOOP-10162) | *Major* | **Fix symlink-related test failures in TestFileContextResolveAfs and TestStat in branch-2**
---

* [HADOOP-10147](https://issues.apache.org/jira/browse/HADOOP-10147) | *Minor* | **Upgrade to commons-logging 1.1.3 to avoid potential deadlock in MiniDFSCluster**
---

* [HADOOP-10146](https://issues.apache.org/jira/browse/HADOOP-10146) | *Critical* | **Workaround JDK7 Process fd close bug**
---

* [HADOOP-10143](https://issues.apache.org/jira/browse/HADOOP-10143) | *Major* | **replace WritableFactories's hashmap with ConcurrentHashMap**
---

* [HADOOP-10142](https://issues.apache.org/jira/browse/HADOOP-10142) | *Major* | **Avoid groups lookup for unprivileged users such as "dr.who"**
---

* [HADOOP-10135](https://issues.apache.org/jira/browse/HADOOP-10135) | *Major* | **writes to swift fs over partition size leave temp files and empty output file**
---

* [HADOOP-10132](https://issues.apache.org/jira/browse/HADOOP-10132) | *Minor* | **RPC#stopProxy() should log the class of proxy when IllegalArgumentException is encountered**
---

* [HADOOP-10130](https://issues.apache.org/jira/browse/HADOOP-10130) | *Minor* | **RawLocalFS::LocalFSFileInputStream.pread does not track FS::Statistics**
---

* [HADOOP-10129](https://issues.apache.org/jira/browse/HADOOP-10129) | *Critical* | **Distcp may succeed when it fails**
---

* [HADOOP-10127](https://issues.apache.org/jira/browse/HADOOP-10127) | *Major* | **Add ipc.client.connect.retry.interval to control the frequency of connection retries**
---

* [HADOOP-10126](https://issues.apache.org/jira/browse/HADOOP-10126) | *Minor* | **LightWeightGSet log message is confusing : "2.0% max memory = 2.0 GB"**
---

* [HADOOP-10125](https://issues.apache.org/jira/browse/HADOOP-10125) | *Major* | **no need to process RPC request if the client connection has been dropped**
---

* [HADOOP-10112](https://issues.apache.org/jira/browse/HADOOP-10112) | *Major* | **har file listing  doesn't work with wild card**
---

* [HADOOP-10111](https://issues.apache.org/jira/browse/HADOOP-10111) | *Major* | **Allow DU to be initialized with an initial value**
---

* [HADOOP-10110](https://issues.apache.org/jira/browse/HADOOP-10110) | *Blocker* | **hadoop-auth has a build break due to missing dependency**
---

* [HADOOP-10109](https://issues.apache.org/jira/browse/HADOOP-10109) | *Major* | **Fix test failure in TestOfflineEditsViewer introduced by HADOOP-10052**
---

* [HADOOP-10107](https://issues.apache.org/jira/browse/HADOOP-10107) | *Major* | **Server.getNumOpenConnections may throw NPE**
---

* [HADOOP-10106](https://issues.apache.org/jira/browse/HADOOP-10106) | *Minor* | **Incorrect thread name in RPC log messages**
---

* [HADOOP-10103](https://issues.apache.org/jira/browse/HADOOP-10103) | *Minor* | **update commons-lang to 2.6**
---

* [HADOOP-10102](https://issues.apache.org/jira/browse/HADOOP-10102) | *Minor* | **update commons IO from 2.1 to 2.4**
---

* [HADOOP-10100](https://issues.apache.org/jira/browse/HADOOP-10100) | *Major* | **MiniKDC shouldn't use apacheds-all artifact**
---

* [HADOOP-10095](https://issues.apache.org/jira/browse/HADOOP-10095) | *Minor* | **Performance improvement in CodecPool**
---

* [HADOOP-10094](https://issues.apache.org/jira/browse/HADOOP-10094) | *Trivial* | **NPE in GenericOptionsParser#preProcessForWindows()**
---

* [HADOOP-10093](https://issues.apache.org/jira/browse/HADOOP-10093) | *Major* | **hadoop-env.cmd sets HADOOP\_CLIENT\_OPTS with a max heap size that is too small.**
---

* [HADOOP-10090](https://issues.apache.org/jira/browse/HADOOP-10090) | *Major* | **Jobtracker metrics not updated properly after execution of a mapreduce job**
---

* [HADOOP-10088](https://issues.apache.org/jira/browse/HADOOP-10088) | *Major* | **copy-nativedistlibs.sh needs to quote snappy lib dir**
---

* [HADOOP-10087](https://issues.apache.org/jira/browse/HADOOP-10087) | *Major* | **UserGroupInformation.getGroupNames() fails to return primary group first when JniBasedUnixGroupsMappingWithFallback is used**
---

* [HADOOP-10086](https://issues.apache.org/jira/browse/HADOOP-10086) | *Minor* | **User document for authentication in secure cluster**
---

* [HADOOP-10081](https://issues.apache.org/jira/browse/HADOOP-10081) | *Critical* | **Client.setupIOStreams can leak socket resources on exception or error**
---

* [HADOOP-10079](https://issues.apache.org/jira/browse/HADOOP-10079) | *Major* | **log a warning message if group resolution takes too long.**
---

* [HADOOP-10078](https://issues.apache.org/jira/browse/HADOOP-10078) | *Minor* | **KerberosAuthenticator always does SPNEGO**
---

* [HADOOP-10072](https://issues.apache.org/jira/browse/HADOOP-10072) | *Trivial* | **TestNfsExports#testMultiMatchers fails due to non-deterministic timing around cache expiry check.**
---

* [HADOOP-10067](https://issues.apache.org/jira/browse/HADOOP-10067) | *Minor* | **Missing POM dependency on jsr305**
---

* [HADOOP-10064](https://issues.apache.org/jira/browse/HADOOP-10064) | *Major* | **Upgrade to maven antrun plugin version 1.7**
---

* [HADOOP-10058](https://issues.apache.org/jira/browse/HADOOP-10058) | *Minor* | **TestMetricsSystemImpl#testInitFirstVerifyStopInvokedImmediately fails on trunk**
---

* [HADOOP-10055](https://issues.apache.org/jira/browse/HADOOP-10055) | *Trivial* | **FileSystemShell.apt.vm doc has typo "numRepicas"**
---

* [HADOOP-10052](https://issues.apache.org/jira/browse/HADOOP-10052) | *Major* | **Temporarily disable client-side symlink resolution**
---

* [HADOOP-10047](https://issues.apache.org/jira/browse/HADOOP-10047) | *Major* | **Add a directbuffer Decompressor API to hadoop**

Direct Bytebuffer decompressors for Zlib (Deflate & Gzip) and Snappy

---

* [HADOOP-10046](https://issues.apache.org/jira/browse/HADOOP-10046) | *Trivial* | **Print a log message when SSL is enabled**
---

* [HADOOP-10040](https://issues.apache.org/jira/browse/HADOOP-10040) | *Major* | **hadoop.cmd in UNIX format and would not run by default on Windows**
---

* [HADOOP-10039](https://issues.apache.org/jira/browse/HADOOP-10039) | *Major* | **Add Hive to the list of projects using AbstractDelegationTokenSecretManager**
---

* [HADOOP-10031](https://issues.apache.org/jira/browse/HADOOP-10031) | *Major* | **FsShell -get/copyToLocal/moveFromLocal should support Windows local path**
---

* [HADOOP-10030](https://issues.apache.org/jira/browse/HADOOP-10030) | *Major* | **FsShell -put/copyFromLocal should support Windows local path**
---

* [HADOOP-10029](https://issues.apache.org/jira/browse/HADOOP-10029) | *Major* | **Specifying har file to MR job fails in secure cluster**
---

* [HADOOP-10028](https://issues.apache.org/jira/browse/HADOOP-10028) | *Minor* | **Malformed ssl-server.xml.example**
---

* [HADOOP-10006](https://issues.apache.org/jira/browse/HADOOP-10006) | *Blocker* | **Compilation failure in trunk for o.a.h.fs.swift.util.JSONUtil**
---

* [HADOOP-10005](https://issues.apache.org/jira/browse/HADOOP-10005) | *Trivial* | **No need to check INFO severity level is enabled or not**
---

* [HADOOP-9998](https://issues.apache.org/jira/browse/HADOOP-9998) | *Major* | **Provide methods to clear only part of the DNSToSwitchMapping**
---

* [HADOOP-9982](https://issues.apache.org/jira/browse/HADOOP-9982) | *Major* | **Fix dead links in hadoop site docs**
---

* [HADOOP-9981](https://issues.apache.org/jira/browse/HADOOP-9981) | *Critical* | **globStatus should minimize its listStatus and getFileStatus calls**
---

* [HADOOP-9964](https://issues.apache.org/jira/browse/HADOOP-9964) | *Major* | **O.A.H.U.ReflectionUtils.printThreadInfo() is not thread-safe which cause TestHttpServer pending 10 minutes or longer.**
---

* [HADOOP-9956](https://issues.apache.org/jira/browse/HADOOP-9956) | *Major* | **RPC listener inefficiently assigns connections to readers**
---

* [HADOOP-9955](https://issues.apache.org/jira/browse/HADOOP-9955) | *Major* | **RPC idle connection closing is extremely inefficient**
---

* [HADOOP-9929](https://issues.apache.org/jira/browse/HADOOP-9929) | *Major* | **Insufficient permissions for a path reported as file not found**
---

* [HADOOP-9915](https://issues.apache.org/jira/browse/HADOOP-9915) | *Trivial* | **o.a.h.fs.Stat support on Macosx**
---

* [HADOOP-9909](https://issues.apache.org/jira/browse/HADOOP-9909) | *Major* | **org.apache.hadoop.fs.Stat should permit other LANG**
---

* [HADOOP-9908](https://issues.apache.org/jira/browse/HADOOP-9908) | *Major* | **Fix NPE when versioninfo properties file is missing**
---

* [HADOOP-9898](https://issues.apache.org/jira/browse/HADOOP-9898) | *Minor* | **Set SO\_KEEPALIVE on all our sockets**
---

* [HADOOP-9897](https://issues.apache.org/jira/browse/HADOOP-9897) | *Trivial* | **Add method to get path start position without drive specifier in o.a.h.fs.Path**
---

* [HADOOP-9889](https://issues.apache.org/jira/browse/HADOOP-9889) | *Major* | **Refresh the Krb5 configuration when creating a new kdc in Hadoop-MiniKDC**
---

* [HADOOP-9887](https://issues.apache.org/jira/browse/HADOOP-9887) | *Major* | **globStatus does not correctly handle paths starting with a drive spec on Windows**
---

* [HADOOP-9875](https://issues.apache.org/jira/browse/HADOOP-9875) | *Minor* | **TestDoAsEffectiveUser can fail on JDK 7**
---

* [HADOOP-9871](https://issues.apache.org/jira/browse/HADOOP-9871) | *Minor* | **Fix intermittent findbug warnings in DefaultMetricsSystem**
---

* [HADOOP-9866](https://issues.apache.org/jira/browse/HADOOP-9866) | *Major* | **convert hadoop-auth testcases requiring kerberos to use minikdc**
---

* [HADOOP-9865](https://issues.apache.org/jira/browse/HADOOP-9865) | *Major* | **FileContext.globStatus() has a regression with respect to relative path**
---

* [HADOOP-9860](https://issues.apache.org/jira/browse/HADOOP-9860) | *Major* | **Remove class HackedKeytab and HackedKeytabEncoder from hadoop-minikdc once jira DIRSERVER-1882 solved**
---

* [HADOOP-9848](https://issues.apache.org/jira/browse/HADOOP-9848) | *Major* | **Create a MiniKDC for use with security testing**
---

* [HADOOP-9847](https://issues.apache.org/jira/browse/HADOOP-9847) | *Minor* | **TestGlobPath symlink tests fail to cleanup properly**
---

* [HADOOP-9830](https://issues.apache.org/jira/browse/HADOOP-9830) | *Trivial* | **Typo at http://hadoop.apache.org/docs/current/**
---

* [HADOOP-9817](https://issues.apache.org/jira/browse/HADOOP-9817) | *Major* | **FileSystem#globStatus and FileContext#globStatus need to work with symlinks**
---

* [HADOOP-9791](https://issues.apache.org/jira/browse/HADOOP-9791) | *Major* | **Add a test case covering long paths for new FileUtil access check methods**
---

* [HADOOP-9787](https://issues.apache.org/jira/browse/HADOOP-9787) | *Major* | **ShutdownHelper util to shutdown threads and threadpools**
---

* [HADOOP-9784](https://issues.apache.org/jira/browse/HADOOP-9784) | *Major* | **Add a builder for HttpServer**
---

* [HADOOP-9748](https://issues.apache.org/jira/browse/HADOOP-9748) | *Critical* | **Reduce blocking on UGI.ensureInitialized**
---

* [HADOOP-9703](https://issues.apache.org/jira/browse/HADOOP-9703) | *Minor* | **org.apache.hadoop.ipc.Client leaks threads on stop.**
---

* [HADOOP-9693](https://issues.apache.org/jira/browse/HADOOP-9693) | *Trivial* | **Shell should add a probe for OSX**
---

* [HADOOP-9660](https://issues.apache.org/jira/browse/HADOOP-9660) | *Major* | **[WINDOWS] Powershell / cmd parses -Dkey=value from command line as [-Dkey, value] which breaks GenericsOptionParser**
---

* [HADOOP-9652](https://issues.apache.org/jira/browse/HADOOP-9652) | *Major* | **Allow RawLocalFs#getFileLinkStatus to fill in the link owner and mode if requested**
---

* [HADOOP-9635](https://issues.apache.org/jira/browse/HADOOP-9635) | *Major* | **Fix Potential Stack Overflow in DomainSocket.c**
---

* [HADOOP-9623](https://issues.apache.org/jira/browse/HADOOP-9623) | *Major* | **Update jets3t dependency to  0.9.0**
---

* [HADOOP-9618](https://issues.apache.org/jira/browse/HADOOP-9618) | *Major* | **Add thread which detects JVM pauses**
---

* [HADOOP-9611](https://issues.apache.org/jira/browse/HADOOP-9611) | *Major* | **mvn-rpmbuild against google-guice > 3.0 yields missing cglib dependency**
---

* [HADOOP-9598](https://issues.apache.org/jira/browse/HADOOP-9598) | *Major* | **Improve code coverage of RMAdminCLI**
---

* [HADOOP-9594](https://issues.apache.org/jira/browse/HADOOP-9594) | *Major* | **Update apache commons math dependency**
---

* [HADOOP-9582](https://issues.apache.org/jira/browse/HADOOP-9582) | *Major* | **Non-existent file to "hadoop fs -conf" doesn't throw error**
---

* [HADOOP-9494](https://issues.apache.org/jira/browse/HADOOP-9494) | *Major* | **Excluded auto-generated and examples code from clover reports**
---

* [HADOOP-9487](https://issues.apache.org/jira/browse/HADOOP-9487) | *Major* | **Deprecation warnings in Configuration should go to their own log or otherwise be suppressible**
---

* [HADOOP-9478](https://issues.apache.org/jira/browse/HADOOP-9478) | *Major* | **Fix race conditions during the initialization of Configuration related to deprecatedKeyMap**
---

* [HADOOP-9470](https://issues.apache.org/jira/browse/HADOOP-9470) | *Major* | **eliminate duplicate FQN tests in different Hadoop modules**
---

* [HADOOP-9432](https://issues.apache.org/jira/browse/HADOOP-9432) | *Minor* | **Add support for markdown .md files in site documentation**
---

* [HADOOP-9420](https://issues.apache.org/jira/browse/HADOOP-9420) | *Major* | **Add percentile or max metric for rpcQueueTime, processing time**
---

* [HADOOP-9417](https://issues.apache.org/jira/browse/HADOOP-9417) | *Major* | **Support for symlink resolution in LocalFileSystem / RawLocalFileSystem**
---

* [HADOOP-9350](https://issues.apache.org/jira/browse/HADOOP-9350) | *Minor* | **Hadoop not building against Java7 on OSX**
---

* [HADOOP-9319](https://issues.apache.org/jira/browse/HADOOP-9319) | *Major* | **Update bundled lz4 source to latest version**
---

* [HADOOP-9291](https://issues.apache.org/jira/browse/HADOOP-9291) | *Major* | **enhance unit-test coverage of package o.a.h.metrics2**
---

* [HADOOP-9254](https://issues.apache.org/jira/browse/HADOOP-9254) | *Major* | **Cover packages org.apache.hadoop.util.bloom, org.apache.hadoop.util.hash**
---

* [HADOOP-9241](https://issues.apache.org/jira/browse/HADOOP-9241) | *Trivial* | **DU refresh interval is not configurable**

The 'du' (disk usage command from Unix) script refresh monitor is now configurable in the same way as its 'df' counterpart, via the property 'fs.du.interval', the default of which is 10 minute (in ms).

---

* [HADOOP-9225](https://issues.apache.org/jira/browse/HADOOP-9225) | *Major* | **Cover package org.apache.hadoop.compress.Snappy**
---

* [HADOOP-9199](https://issues.apache.org/jira/browse/HADOOP-9199) | *Major* | **Cover package org.apache.hadoop.io with unit tests**
---

* [HADOOP-9114](https://issues.apache.org/jira/browse/HADOOP-9114) | *Minor* | **After defined the dfs.checksum.type as the NULL, write file and hflush will through java.lang.ArrayIndexOutOfBoundsException**
---

* [HADOOP-9078](https://issues.apache.org/jira/browse/HADOOP-9078) | *Major* | **enhance unit-test coverage of class org.apache.hadoop.fs.FileContext**
---

* [HADOOP-9063](https://issues.apache.org/jira/browse/HADOOP-9063) | *Minor* | **enhance unit-test coverage of class org.apache.hadoop.fs.FileUtil**
---

* [HADOOP-9016](https://issues.apache.org/jira/browse/HADOOP-9016) | *Minor* | **org.apache.hadoop.fs.HarFileSystem.HarFSDataInputStream.HarFsInputStream.skip(long) must never return negative value.**
---

* [HADOOP-8753](https://issues.apache.org/jira/browse/HADOOP-8753) | *Minor* | **LocalDirAllocator throws "ArithmeticException: / by zero" when there is no available space on configured local dir**
---

* [HADOOP-8704](https://issues.apache.org/jira/browse/HADOOP-8704) | *Major* | **add request logging to jetty/httpserver**
---

* [HADOOP-8545](https://issues.apache.org/jira/browse/HADOOP-8545) | *Major* | **Filesystem Implementation for OpenStack Swift**

Added file system implementation for OpenStack Swift.
There are two implementation: block and native (similar to Amazon S3 integration).
Data locality issue solved by patch in Swift, commit procedure to OpenStack is in progress.

To use implementation add to core-site.xml following:
...
	<property>
	        <name>fs.swift.impl</name>
	    	<value>com.mirantis.fs.SwiftFileSystem</value>
	</property>
	<property>
	    	<name>fs.swift.block.impl</name>
	         <value>com.mirantis.fs.block.SwiftBlockFileSystem</value>
        </property>
...

In MapReduce job specify following configs for OpenStack Keystone authentication:
conf.set("swift.auth.url", "http://172.18.66.117:5000/v2.0/tokens");
conf.set("swift.tenant", "superuser");
conf.set("swift.username", "admin1");
conf.set("swift.password", "password");
conf.setInt("swift.http.port", 8080);
conf.setInt("swift.https.port", 443);

Additional information specified on github: https://github.com/DmitryMezhensky/Hadoop-and-Swift-integration

---

* [HADOOP-7344](https://issues.apache.org/jira/browse/HADOOP-7344) | *Major* | **globStatus doesn't grok groupings with a slash**


