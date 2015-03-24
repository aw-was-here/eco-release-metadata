# Hadoop  2.3.0 Release Notes

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
---

* [HDFS-5921](https://issues.apache.org/jira/browse/HDFS-5921) | *Critical* | **Cannot browse file system via NN web UI if any directory has the sticky bit set**
---

* [HDFS-5876](https://issues.apache.org/jira/browse/HDFS-5876) | *Major* | **SecureDataNodeStarter does not pick up configuration in hdfs-site.xml**
---

* [HDFS-5873](https://issues.apache.org/jira/browse/HDFS-5873) | *Major* | **dfs.http.policy should have higher precedence over dfs.https.enable**
---

* [HDFS-5845](https://issues.apache.org/jira/browse/HDFS-5845) | *Blocker* | **SecondaryNameNode dies when checkpointing with cache pools**
---

* [HDFS-5844](https://issues.apache.org/jira/browse/HDFS-5844) | *Minor* | **Fix broken link in WebHDFS.apt.vm**
---

* [HDFS-5842](https://issues.apache.org/jira/browse/HDFS-5842) | *Major* | **Cannot create hftp filesystem when using a proxy user ugi and a doAs on a secure cluster**
---

* [HDFS-5841](https://issues.apache.org/jira/browse/HDFS-5841) | *Major* | **Update HDFS caching documentation with new changes**
---

* [HDFS-5837](https://issues.apache.org/jira/browse/HDFS-5837) | *Major* | **dfs.namenode.replication.considerLoad does not consider decommissioned nodes**
---

* [HDFS-5833](https://issues.apache.org/jira/browse/HDFS-5833) | *Trivial* | **SecondaryNameNode have an incorrect java doc**
---

* [HDFS-5830](https://issues.apache.org/jira/browse/HDFS-5830) | *Blocker* | **WebHdfsFileSystem.getFileBlockLocations throws IllegalArgumentException when accessing another cluster.**
---

* [HDFS-5825](https://issues.apache.org/jira/browse/HDFS-5825) | *Minor* | **Use FileUtils.copyFile() to implement DFSTestUtils.copyFile()**
---

* [HDFS-5806](https://issues.apache.org/jira/browse/HDFS-5806) | *Major* | **balancer should set SoTimeout to avoid indefinite hangs**
---

* [HDFS-5800](https://issues.apache.org/jira/browse/HDFS-5800) | *Trivial* | **Typo: soft-limit for hard-limit in DFSClient**
---

* [HDFS-5789](https://issues.apache.org/jira/browse/HDFS-5789) | *Major* | **Some of snapshot APIs missing checkOperation double check in fsn**
---

* [HDFS-5788](https://issues.apache.org/jira/browse/HDFS-5788) | *Major* | **listLocatedStatus response can be very large**
---

* [HDFS-5784](https://issues.apache.org/jira/browse/HDFS-5784) | *Major* | **reserve space in edit log header and fsimage header for feature flag section**
---

* [HDFS-5777](https://issues.apache.org/jira/browse/HDFS-5777) | *Major* | **Update LayoutVersion for the new editlog op OP\_ADD\_BLOCK**
---

* [HDFS-5766](https://issues.apache.org/jira/browse/HDFS-5766) | *Major* | **In DFSInputStream, do not add datanode to deadNodes after InvalidEncryptionKeyException in fetchBlockByteRange**
---

* [HDFS-5762](https://issues.apache.org/jira/browse/HDFS-5762) | *Major* | **BlockReaderLocal doesn't return -1 on EOF when doing zero-length reads**
---

* [HDFS-5756](https://issues.apache.org/jira/browse/HDFS-5756) | *Major* | **hadoopRzOptionsSetByteBufferPool does not accept NULL argument, contrary to docs**
---

* [HDFS-5748](https://issues.apache.org/jira/browse/HDFS-5748) | *Major* | **Too much information shown in the dfs health page.**
---

* [HDFS-5747](https://issues.apache.org/jira/browse/HDFS-5747) | *Minor* | **BlocksMap.getStoredBlock(..) and BlockInfoUnderConstruction.addReplicaIfNotPresent(..) may throw NullPointerException**
---

* [HDFS-5728](https://issues.apache.org/jira/browse/HDFS-5728) | *Critical* | **[Diskfull] Block recovery will fail if the metafile does not have crc for all chunks of the block**
---

* [HDFS-5721](https://issues.apache.org/jira/browse/HDFS-5721) | *Minor* | **sharedEditsImage in Namenode#initializeSharedEdits() should be closed before method returns**
---

* [HDFS-5719](https://issues.apache.org/jira/browse/HDFS-5719) | *Minor* | **FSImage#doRollback() should close prevState before return**
---

* [HDFS-5710](https://issues.apache.org/jira/browse/HDFS-5710) | *Major* | **FSDirectory#getFullPathName should check inodes against null**
---

* [HDFS-5708](https://issues.apache.org/jira/browse/HDFS-5708) | *Major* | **The CacheManager throws a NPE in the DataNode logs when processing cache reports that refer to a block not known to the BlockManager**
---

* [HDFS-5704](https://issues.apache.org/jira/browse/HDFS-5704) | *Major* | **Change OP\_UPDATE\_BLOCKS  with a new OP\_ADD\_BLOCK**

Add a new editlog record (OP\_ADD\_BLOCK) that only records allocation of the new block instead of the entire block list, on every block allocation.

---

* [HDFS-5703](https://issues.apache.org/jira/browse/HDFS-5703) | *Major* | **Add support for HTTPS and swebhdfs to HttpFS**
---

* [HDFS-5701](https://issues.apache.org/jira/browse/HDFS-5701) | *Minor* | **Fix the CacheAdmin -addPool -maxTtl option name**
---

* [HDFS-5695](https://issues.apache.org/jira/browse/HDFS-5695) | *Major* | **Clean up TestOfflineEditsViewer and OfflineEditsViewerHelper**
---

* [HDFS-5691](https://issues.apache.org/jira/browse/HDFS-5691) | *Minor* | **Fix typo in ShortCircuitLocalRead document**
---

* [HDFS-5690](https://issues.apache.org/jira/browse/HDFS-5690) | *Blocker* | **DataNode fails to start in secure mode when dfs.http.policy equals to HTTP\_ONLY**
---

* [HDFS-5681](https://issues.apache.org/jira/browse/HDFS-5681) | *Major* | **renewLease should not hold fsn write lock**
---

* [HDFS-5679](https://issues.apache.org/jira/browse/HDFS-5679) | *Major* | **TestCacheDirectives should handle the case where native code is not available**
---

* [HDFS-5677](https://issues.apache.org/jira/browse/HDFS-5677) | *Minor* | **Need error checking for HA cluster configuration**
---

* [HDFS-5676](https://issues.apache.org/jira/browse/HDFS-5676) | *Minor* | **fix inconsistent synchronization of CachingStrategy**
---

* [HDFS-5675](https://issues.apache.org/jira/browse/HDFS-5675) | *Minor* | **Add Mkdirs operation to NNThroughputBenchmark**
---

* [HDFS-5674](https://issues.apache.org/jira/browse/HDFS-5674) | *Minor* | **Editlog code cleanup**
---

* [HDFS-5671](https://issues.apache.org/jira/browse/HDFS-5671) | *Critical* | **Fix socket leak in DFSInputStream#getBlockReader**
---

* [HDFS-5667](https://issues.apache.org/jira/browse/HDFS-5667) | *Major* | **Include DatanodeStorage in StorageReport**
---

* [HDFS-5666](https://issues.apache.org/jira/browse/HDFS-5666) | *Minor* | **Fix inconsistent synchronization in BPOfferService**
---

* [HDFS-5665](https://issues.apache.org/jira/browse/HDFS-5665) | *Major* | **Remove the unnecessary writeLock while initializing CacheManager in FsNameSystem Ctor**
---

* [HDFS-5663](https://issues.apache.org/jira/browse/HDFS-5663) | *Major* | **make the retry time and interval value configurable in openInfo()**

Makes the retries and time between retries getting the length of the last block on file configurable.  Below are the new configurations.

dfs.client.retry.times.get-last-block-length
dfs.client.retry.interval-ms.get-last-block-length

They are set to the 3 and 4000 respectively, these being what was previously hardcoded.

---

* [HDFS-5662](https://issues.apache.org/jira/browse/HDFS-5662) | *Major* | **Can't decommission a DataNode due to file's replication factor larger than the rest of the cluster size**
---

* [HDFS-5661](https://issues.apache.org/jira/browse/HDFS-5661) | *Major* | **Browsing FileSystem via web ui, should use datanode's fqdn instead of ip address**
---

* [HDFS-5659](https://issues.apache.org/jira/browse/HDFS-5659) | *Major* | **dfsadmin -report doesn't output cache information properly**
---

* [HDFS-5657](https://issues.apache.org/jira/browse/HDFS-5657) | *Major* | **race condition causes writeback state error in NFS gateway**
---

* [HDFS-5652](https://issues.apache.org/jira/browse/HDFS-5652) | *Minor* | **refactoring/uniforming invalid block token exception handling in DFSInputStream**
---

* [HDFS-5651](https://issues.apache.org/jira/browse/HDFS-5651) | *Major* | **Remove dfs.namenode.caching.enabled and improve CRM locking**
---

* [HDFS-5649](https://issues.apache.org/jira/browse/HDFS-5649) | *Major* | **Unregister NFS and Mount service when NFS gateway is shutting down**
---

* [HDFS-5637](https://issues.apache.org/jira/browse/HDFS-5637) | *Major* | **try to refeatchToken while local read InvalidToken occurred**
---

* [HDFS-5636](https://issues.apache.org/jira/browse/HDFS-5636) | *Major* | **Enforce a max TTL per cache pool**
---

* [HDFS-5634](https://issues.apache.org/jira/browse/HDFS-5634) | *Major* | **allow BlockReaderLocal to switch between checksumming and not**
---

* [HDFS-5633](https://issues.apache.org/jira/browse/HDFS-5633) | *Minor* | **Improve OfflineImageViewer to use less memory**
---

* [HDFS-5630](https://issues.apache.org/jira/browse/HDFS-5630) | *Major* | **Hook up cache directive and pool usage statistics**
---

* [HDFS-5629](https://issues.apache.org/jira/browse/HDFS-5629) | *Major* | **Support HTTPS in JournalNode and SecondaryNameNode**
---

* [HDFS-5592](https://issues.apache.org/jira/browse/HDFS-5592) | *Major* | **"DIR* completeFile: /file is closed by DFSClient\_" should be logged only for successful closure of the file.**
---

* [HDFS-5590](https://issues.apache.org/jira/browse/HDFS-5590) | *Major* | **Block ID and generation stamp may be reused when persistBlocks is set to false**
---

* [HDFS-5589](https://issues.apache.org/jira/browse/HDFS-5589) | *Major* | **Namenode loops caching and uncaching when data should be uncached**
---

* [HDFS-5587](https://issues.apache.org/jira/browse/HDFS-5587) | *Minor* | **add debug information when NFS fails to start with duplicate user or group names**
---

* [HDFS-5582](https://issues.apache.org/jira/browse/HDFS-5582) | *Minor* | **hdfs getconf -excludeFile or -includeFile always failed**
---

* [HDFS-5581](https://issues.apache.org/jira/browse/HDFS-5581) | *Major* | **NameNodeFsck should use only one instance of BlockPlacementPolicy**
---

* [HDFS-5580](https://issues.apache.org/jira/browse/HDFS-5580) | *Major* | **Infinite loop in Balancer.waitForMoveCompletion**
---

* [HDFS-5579](https://issues.apache.org/jira/browse/HDFS-5579) | *Major* | **Under construction files make DataNode decommission take very long hours**
---

* [HDFS-5577](https://issues.apache.org/jira/browse/HDFS-5577) | *Trivial* | **NFS user guide update**
---

* [HDFS-5568](https://issues.apache.org/jira/browse/HDFS-5568) | *Major* | **Support inclusion of snapshot paths in Namenode fsck**
---

* [HDFS-5565](https://issues.apache.org/jira/browse/HDFS-5565) | *Minor* | **CacheAdmin help should match against non-dashed commands**
---

* [HDFS-5563](https://issues.apache.org/jira/browse/HDFS-5563) | *Major* | **NFS gateway should commit the buffered data when read request comes after write to the same file**
---

* [HDFS-5562](https://issues.apache.org/jira/browse/HDFS-5562) | *Major* | **TestCacheDirectives and TestFsDatasetCache should stub out native mlock**
---

* [HDFS-5561](https://issues.apache.org/jira/browse/HDFS-5561) | *Minor* | **FSNameSystem#getNameJournalStatus() in JMX should return plain text instead of HTML**
---

* [HDFS-5560](https://issues.apache.org/jira/browse/HDFS-5560) | *Major* | **Trash configuration log statements prints incorrect units**
---

* [HDFS-5558](https://issues.apache.org/jira/browse/HDFS-5558) | *Major* | **LeaseManager monitor thread can crash if the last block is complete but another block is not.**
---

* [HDFS-5557](https://issues.apache.org/jira/browse/HDFS-5557) | *Critical* | **Write pipeline recovery for the last packet in the block may cause rejection of valid replicas**
---

* [HDFS-5556](https://issues.apache.org/jira/browse/HDFS-5556) | *Major* | **add some more NameNode cache statistics, cache pool stats**
---

* [HDFS-5555](https://issues.apache.org/jira/browse/HDFS-5555) | *Major* | **CacheAdmin commands fail when first listed NameNode is in Standby**
---

* [HDFS-5552](https://issues.apache.org/jira/browse/HDFS-5552) | *Major* | **Fix wrong information of "Cluster summay" in dfshealth.html**
---

* [HDFS-5548](https://issues.apache.org/jira/browse/HDFS-5548) | *Major* | **Use ConcurrentHashMap in portmap**
---

* [HDFS-5545](https://issues.apache.org/jira/browse/HDFS-5545) | *Major* | **Allow specifying endpoints for listeners in HttpServer**
---

* [HDFS-5544](https://issues.apache.org/jira/browse/HDFS-5544) | *Minor* | **Adding Test case For Checking dfs.checksum type as NULL value**
---

* [HDFS-5543](https://issues.apache.org/jira/browse/HDFS-5543) | *Major* | **fix narrow race condition in TestPathBasedCacheRequests**
---

* [HDFS-5540](https://issues.apache.org/jira/browse/HDFS-5540) | *Minor* | **Fix intermittent failure in TestBlocksWithNotEnoughRacks**
---

* [HDFS-5538](https://issues.apache.org/jira/browse/HDFS-5538) | *Major* | **URLConnectionFactory should pick up the SSL related configuration by default**
---

* [HDFS-5536](https://issues.apache.org/jira/browse/HDFS-5536) | *Major* | **Implement HTTP policy for Namenode and DataNode**

Add new HTTP policy configuration. Users can use "dfs.http.policy" to control the HTTP endpoints for NameNode and DataNode. Specifically, The following values are supported:
- HTTP\_ONLY : Service is provided only on http
- HTTPS\_ONLY : Service is provided only on https
- HTTP\_AND\_HTTPS : Service is provided both on http and https

hadoop.ssl.enabled and dfs.https.enabled are deprecated. When the deprecated configuration properties are still configured, currently http policy is decided based on the following rules:
1. If dfs.http.policy is set to HTTPS\_ONLY or HTTP\_AND\_HTTPS. It picks the specified policy, otherwise it proceeds to 2~4.
2. It picks HTTPS\_ONLY if hadoop.ssl.enabled equals to true.
3. It picks HTTP\_AND\_HTTPS if dfs.https.enable equals to true.
4. It picks HTTP\_ONLY for other configurations.

---

* [HDFS-5533](https://issues.apache.org/jira/browse/HDFS-5533) | *Minor* | **Symlink delete/create should be treated as DELETE/CREATE in snapshot diff report**
---

* [HDFS-5532](https://issues.apache.org/jira/browse/HDFS-5532) | *Major* | **Enable the webhdfs by default to support new HDFS web UI**
---

* [HDFS-5526](https://issues.apache.org/jira/browse/HDFS-5526) | *Blocker* | **Datanode cannot roll back to previous layout version**
---

* [HDFS-5525](https://issues.apache.org/jira/browse/HDFS-5525) | *Major* | **Inline dust templates**
---

* [HDFS-5520](https://issues.apache.org/jira/browse/HDFS-5520) | *Major* | **loading cache path directives from edit log doesn't update nextEntryId**
---

* [HDFS-5519](https://issues.apache.org/jira/browse/HDFS-5519) | *Minor* | **COMMIT handler should update the commit status after sync**
---

* [HDFS-5514](https://issues.apache.org/jira/browse/HDFS-5514) | *Major* | **FSNamesystem's fsLock should allow custom implementation**
---

* [HDFS-5513](https://issues.apache.org/jira/browse/HDFS-5513) | *Minor* | **CacheAdmin commands fail when using . as the path**
---

* [HDFS-5512](https://issues.apache.org/jira/browse/HDFS-5512) | *Major* | **CacheAdmin -listPools fails with NPE when user lacks permissions to view all pools**
---

* [HDFS-5511](https://issues.apache.org/jira/browse/HDFS-5511) | *Major* | **improve CacheManipulator interface to allow better unit testing**
---

* [HDFS-5509](https://issues.apache.org/jira/browse/HDFS-5509) | *Major* | **TestPathBasedCacheRequests#testReplicationFactor is flaky**
---

* [HDFS-5506](https://issues.apache.org/jira/browse/HDFS-5506) | *Major* | **Use URLConnectionFactory in DelegationTokenFetcher**
---

* [HDFS-5504](https://issues.apache.org/jira/browse/HDFS-5504) | *Major* | **In HA mode, OP\_DELETE\_SNAPSHOT is not decrementing the safemode threshold, leads to NN safemode.**
---

* [HDFS-5502](https://issues.apache.org/jira/browse/HDFS-5502) | *Major* | **Fix HTTPS support in HsftpFileSystem**

Fix the https support in HsftpFileSystem. With the change the client now verifies the server certificate. In particular, client side will verify the Common Name of the certificate using a strategy specified by the configuration property "hadoop.ssl.hostname.verifier".

---

* [HDFS-5495](https://issues.apache.org/jira/browse/HDFS-5495) | *Major* | **Remove further JUnit3 usages from HDFS**
---

* [HDFS-5489](https://issues.apache.org/jira/browse/HDFS-5489) | *Major* | **Use TokenAspect in WebHDFSFileSystem**
---

* [HDFS-5488](https://issues.apache.org/jira/browse/HDFS-5488) | *Major* | **Clean up TestHftpURLTimeout**
---

* [HDFS-5487](https://issues.apache.org/jira/browse/HDFS-5487) | *Major* | **Introduce unit test for TokenAspect**
---

* [HDFS-5482](https://issues.apache.org/jira/browse/HDFS-5482) | *Major* | **DistributedFileSystem#listPathBasedCacheDirectives must support relative paths**
---

* [HDFS-5476](https://issues.apache.org/jira/browse/HDFS-5476) | *Major* | **Snapshot: clean the blocks/files/directories under a renamed file/directory while deletion**
---

* [HDFS-5474](https://issues.apache.org/jira/browse/HDFS-5474) | *Major* | **Deletesnapshot can make Namenode in safemode on NN restarts.**
---

* [HDFS-5473](https://issues.apache.org/jira/browse/HDFS-5473) | *Major* | **Consistent naming of user-visible caching classes and methods**
---

* [HDFS-5471](https://issues.apache.org/jira/browse/HDFS-5471) | *Major* | **CacheAdmin -listPools fails when user lacks permissions to view all pools**
---

* [HDFS-5469](https://issues.apache.org/jira/browse/HDFS-5469) | *Major* | **Add configuration property for the sub-directroy export path**
---

* [HDFS-5468](https://issues.apache.org/jira/browse/HDFS-5468) | *Minor* | **CacheAdmin help command does not recognize commands**
---

* [HDFS-5467](https://issues.apache.org/jira/browse/HDFS-5467) | *Trivial* | **Remove tab characters in hdfs-default.xml**
---

* [HDFS-5458](https://issues.apache.org/jira/browse/HDFS-5458) | *Major* | **Datanode failed volume threshold ignored if exception is thrown in getDataDirsFromURIs**
---

* [HDFS-5456](https://issues.apache.org/jira/browse/HDFS-5456) | *Critical* | **NameNode startup progress creates new steps if caller attempts to create a counter for a step that doesn't already exist.**
---

* [HDFS-5454](https://issues.apache.org/jira/browse/HDFS-5454) | *Minor* | **DataNode UUID should be assigned prior to FsDataset initialization**
---

* [HDFS-5451](https://issues.apache.org/jira/browse/HDFS-5451) | *Major* | **Add byte and file statistics to PathBasedCacheEntry**
---

* [HDFS-5450](https://issues.apache.org/jira/browse/HDFS-5450) | *Minor* | **better API for getting the cached blocks locations**
---

* [HDFS-5449](https://issues.apache.org/jira/browse/HDFS-5449) | *Blocker* | **WebHdfs compatibility broken between 2.2 and 1.x / 23.x**
---

* [HDFS-5444](https://issues.apache.org/jira/browse/HDFS-5444) | *Major* | **Choose default web UI based on browser capabilities**
---

* [HDFS-5443](https://issues.apache.org/jira/browse/HDFS-5443) | *Major* | **Delete 0-sized block when deleting an under-construction file that is included in snapshot**
---

* [HDFS-5440](https://issues.apache.org/jira/browse/HDFS-5440) | *Major* | **Extract the logic of handling delegation tokens in HftpFileSystem to the TokenAspect class**
---

* [HDFS-5438](https://issues.apache.org/jira/browse/HDFS-5438) | *Critical* | **Flaws in block report processing can cause data loss**
---

* [HDFS-5436](https://issues.apache.org/jira/browse/HDFS-5436) | *Major* | **Move HsFtpFileSystem and HFtpFileSystem into org.apache.hdfs.web**
---

* [HDFS-5434](https://issues.apache.org/jira/browse/HDFS-5434) | *Minor* | **Write resiliency for replica count 1**
---

* [HDFS-5433](https://issues.apache.org/jira/browse/HDFS-5433) | *Critical* | **When reloading fsimage during checkpointing, we should clear existing snapshottable directories**
---

* [HDFS-5432](https://issues.apache.org/jira/browse/HDFS-5432) | *Trivial* | **TestDatanodeJsp fails on Windows due to assumption that loopback address resolves to host name localhost.**
---

* [HDFS-5431](https://issues.apache.org/jira/browse/HDFS-5431) | *Major* | **support cachepool-based limit management in path-based caching**
---

* [HDFS-5430](https://issues.apache.org/jira/browse/HDFS-5430) | *Minor* | **Support TTL on CacheDirectives**
---

* [HDFS-5428](https://issues.apache.org/jira/browse/HDFS-5428) | *Major* | **under construction files deletion after snapshot+checkpoint+nn restart leads nn safemode**
---

* [HDFS-5427](https://issues.apache.org/jira/browse/HDFS-5427) | *Major* | **not able to read deleted files from snapshot directly under snapshottable dir after checkpoint and NN restart**
---

* [HDFS-5425](https://issues.apache.org/jira/browse/HDFS-5425) | *Major* | **Renaming underconstruction file with snapshots can make NN failure on restart**
---

* [HDFS-5413](https://issues.apache.org/jira/browse/HDFS-5413) | *Major* | **hdfs.cmd does not support passthrough to any arbitrary class.**
---

* [HDFS-5407](https://issues.apache.org/jira/browse/HDFS-5407) | *Trivial* | **Fix typos in DFSClientCache**
---

* [HDFS-5406](https://issues.apache.org/jira/browse/HDFS-5406) | *Major* | **Send incremental block reports for all storages in a single call**
---

* [HDFS-5403](https://issues.apache.org/jira/browse/HDFS-5403) | *Major* | **WebHdfs client cannot communicate with older WebHdfs servers post HDFS-5306**
---

* [HDFS-5400](https://issues.apache.org/jira/browse/HDFS-5400) | *Major* | **DFS\_CLIENT\_MMAP\_CACHE\_THREAD\_RUNS\_PER\_TIMEOUT constant is set to the wrong value**
---

* [HDFS-5399](https://issues.apache.org/jira/browse/HDFS-5399) | *Major* | **Revisit SafeModeException and corresponding retry policies**
---

* [HDFS-5394](https://issues.apache.org/jira/browse/HDFS-5394) | *Major* | **fix race conditions in DN caching and uncaching**
---

* [HDFS-5393](https://issues.apache.org/jira/browse/HDFS-5393) | *Minor* | **Serve bootstrap and jQuery locally**
---

* [HDFS-5386](https://issues.apache.org/jira/browse/HDFS-5386) | *Major* | **Add feature documentation for datanode caching.**
---

* [HDFS-5382](https://issues.apache.org/jira/browse/HDFS-5382) | *Major* | **Implement the UI of browsing filesystems in HTML 5 page**
---

* [HDFS-5379](https://issues.apache.org/jira/browse/HDFS-5379) | *Major* | **Update links to datanode information in dfshealth.html**
---

* [HDFS-5375](https://issues.apache.org/jira/browse/HDFS-5375) | *Minor* | **hdfs.cmd does not expose several snapshot commands.**
---

* [HDFS-5374](https://issues.apache.org/jira/browse/HDFS-5374) | *Trivial* | **Remove deadcode in DFSOutputStream**
---

* [HDFS-5372](https://issues.apache.org/jira/browse/HDFS-5372) | *Major* | **In FSNamesystem, hasReadLock() returns false if the current thread holds the write lock**
---

* [HDFS-5371](https://issues.apache.org/jira/browse/HDFS-5371) | *Minor* | **Let client retry the same NN when "dfs.client.test.drop.namenode.response.number" is enabled**
---

* [HDFS-5370](https://issues.apache.org/jira/browse/HDFS-5370) | *Trivial* | **Typo in Error Message:  different between range in condition and range in error message**
---

* [HDFS-5366](https://issues.apache.org/jira/browse/HDFS-5366) | *Major* | **recaching improvements**
---

* [HDFS-5365](https://issues.apache.org/jira/browse/HDFS-5365) | *Major* | **Fix libhdfs compile error on FreeBSD9**
---

* [HDFS-5364](https://issues.apache.org/jira/browse/HDFS-5364) | *Major* | **Add OpenFileCtx cache**
---

* [HDFS-5363](https://issues.apache.org/jira/browse/HDFS-5363) | *Major* | **Refactor WebHdfsFileSystem: move SPENGO-authenticated connection creation to URLConnectionFactory**
---

* [HDFS-5360](https://issues.apache.org/jira/browse/HDFS-5360) | *Minor* | **Improvement of usage message of renameSnapshot and deleteSnapshot**
---

* [HDFS-5353](https://issues.apache.org/jira/browse/HDFS-5353) | *Blocker* | **Short circuit reads fail when dfs.encrypt.data.transfer is enabled**
---

* [HDFS-5352](https://issues.apache.org/jira/browse/HDFS-5352) | *Minor* | **Server#initLog() doesn't close InputStream in httpfs**
---

* [HDFS-5350](https://issues.apache.org/jira/browse/HDFS-5350) | *Minor* | **Name Node should report fsimage transfer time as a metric**
---

* [HDFS-5347](https://issues.apache.org/jira/browse/HDFS-5347) | *Major* | **add HDFS NFS user guide**
---

* [HDFS-5346](https://issues.apache.org/jira/browse/HDFS-5346) | *Major* | **Avoid unnecessary call to getNumLiveDataNodes() for each block during IBR processing**
---

* [HDFS-5344](https://issues.apache.org/jira/browse/HDFS-5344) | *Minor* | **Make LsSnapshottableDir as Tool interface implementation**
---

* [HDFS-5343](https://issues.apache.org/jira/browse/HDFS-5343) | *Major* | **When cat command is issued on snapshot files getting unexpected result**
---

* [HDFS-5342](https://issues.apache.org/jira/browse/HDFS-5342) | *Major* | **Provide more information in the FSNamesystem JMX interfaces**
---

* [HDFS-5341](https://issues.apache.org/jira/browse/HDFS-5341) | *Major* | **Reduce fsdataset lock duration during directory scanning.**
---

* [HDFS-5338](https://issues.apache.org/jira/browse/HDFS-5338) | *Major* | **Add a conf to disable hostname check in DN registration**
---

* [HDFS-5337](https://issues.apache.org/jira/browse/HDFS-5337) | *Major* | **should do hsync for a commit request even there is no pending writes**
---

* [HDFS-5336](https://issues.apache.org/jira/browse/HDFS-5336) | *Minor* | **DataNode should not output 'StartupProgress' metrics**
---

* [HDFS-5335](https://issues.apache.org/jira/browse/HDFS-5335) | *Major* | **DFSOutputStream#close() keeps throwing exceptions when it is called multiple times**
---

* [HDFS-5334](https://issues.apache.org/jira/browse/HDFS-5334) | *Major* | **Implement dfshealth.jsp in HTML pages**
---

* [HDFS-5333](https://issues.apache.org/jira/browse/HDFS-5333) | *Major* | **Improvement of current HDFS Web UI**
---

* [HDFS-5331](https://issues.apache.org/jira/browse/HDFS-5331) | *Major* | **make SnapshotDiff.java to a o.a.h.util.Tool interface implementation**
---

* [HDFS-5330](https://issues.apache.org/jira/browse/HDFS-5330) | *Major* | **fix readdir and readdirplus for large directories**
---

* [HDFS-5329](https://issues.apache.org/jira/browse/HDFS-5329) | *Major* | **Update FSNamesystem#getListing() to handle inode path in startAfter token**
---

* [HDFS-5325](https://issues.apache.org/jira/browse/HDFS-5325) | *Major* | **Remove WebHdfsFileSystem#ConnRunner**
---

* [HDFS-5323](https://issues.apache.org/jira/browse/HDFS-5323) | *Minor* | **Remove some deadcode in BlockManager**
---

* [HDFS-5322](https://issues.apache.org/jira/browse/HDFS-5322) | *Major* | **HDFS delegation token not found in cache errors seen on secure HA clusters**
---

* [HDFS-5320](https://issues.apache.org/jira/browse/HDFS-5320) | *Minor* | **Add datanode caching metrics**
---

* [HDFS-5317](https://issues.apache.org/jira/browse/HDFS-5317) | *Critical* | **Go back to DFS Home link does not work on datanode webUI**
---

* [HDFS-5316](https://issues.apache.org/jira/browse/HDFS-5316) | *Critical* | **Namenode ignores the default https port**
---

* [HDFS-5312](https://issues.apache.org/jira/browse/HDFS-5312) | *Major* | **Generate HTTP / HTTPS URL in DFSUtil#getInfoServer() based on the configured http policy**
---

* [HDFS-5307](https://issues.apache.org/jira/browse/HDFS-5307) | *Major* | **Support both HTTP and HTTPS in jsp pages**
---

* [HDFS-5305](https://issues.apache.org/jira/browse/HDFS-5305) | *Major* | **Add https support in HDFS**
---

* [HDFS-5297](https://issues.apache.org/jira/browse/HDFS-5297) | *Major* | **Fix dead links in HDFS site documents**
---

* [HDFS-5291](https://issues.apache.org/jira/browse/HDFS-5291) | *Critical* | **Clients need to retry when Active NN is in SafeMode**
---

* [HDFS-5288](https://issues.apache.org/jira/browse/HDFS-5288) | *Major* | **Close idle connections in portmap**
---

* [HDFS-5283](https://issues.apache.org/jira/browse/HDFS-5283) | *Critical* | **NN not coming out of startup safemode due to under construction blocks only inside snapshots also counted in safemode threshhold**
---

* [HDFS-5281](https://issues.apache.org/jira/browse/HDFS-5281) | *Major* | **COMMIT request should not block**
---

* [HDFS-5276](https://issues.apache.org/jira/browse/HDFS-5276) | *Major* | **FileSystem.Statistics got performance issue on multi-thread read/write.**
---

* [HDFS-5267](https://issues.apache.org/jira/browse/HDFS-5267) | *Minor* | **Remove volatile from LightWeightHashSet**
---

* [HDFS-5260](https://issues.apache.org/jira/browse/HDFS-5260) | *Major* | **Merge zero-copy memory-mapped HDFS client reads to trunk and branch-2.**
---

* [HDFS-5257](https://issues.apache.org/jira/browse/HDFS-5257) | *Major* | **addBlock() retry should return LocatedBlock with locations else client will get AIOBE**
---

* [HDFS-5252](https://issues.apache.org/jira/browse/HDFS-5252) | *Major* | **Stable write is not handled correctly in someplace**
---

* [HDFS-5241](https://issues.apache.org/jira/browse/HDFS-5241) | *Major* | **Provide alternate queuing audit logger to reduce logging contention**
---

* [HDFS-5240](https://issues.apache.org/jira/browse/HDFS-5240) | *Major* | **Separate formatting from logging in the audit logger API**
---

* [HDFS-5239](https://issues.apache.org/jira/browse/HDFS-5239) | *Major* | **Allow FSNamesystem lock fairness to be configurable**
---

* [HDFS-5220](https://issues.apache.org/jira/browse/HDFS-5220) | *Major* | **Expose group resolution time as metric**
---

* [HDFS-5207](https://issues.apache.org/jira/browse/HDFS-5207) | *Major* | **In BlockPlacementPolicy, update 2 parameters of chooseTarget()**
---

* [HDFS-5188](https://issues.apache.org/jira/browse/HDFS-5188) | *Major* | **Clean up BlockPlacementPolicy and its implementations**
---

* [HDFS-5171](https://issues.apache.org/jira/browse/HDFS-5171) | *Major* | **NFS should create input stream for a file and try to share it with multiple read requests**
---

* [HDFS-5170](https://issues.apache.org/jira/browse/HDFS-5170) | *Trivial* | **BlockPlacementPolicyDefault uses the wrong classname when alerting to enable debug logging**
---

* [HDFS-5164](https://issues.apache.org/jira/browse/HDFS-5164) | *Minor* | **deleteSnapshot should check if OperationCategory.WRITE is possible before taking write lock**
---

* [HDFS-5144](https://issues.apache.org/jira/browse/HDFS-5144) | *Minor* | **Document time unit to NameNodeMetrics.java**
---

* [HDFS-5130](https://issues.apache.org/jira/browse/HDFS-5130) | *Minor* | **Add test for snapshot related FsShell and DFSAdmin commands**
---

* [HDFS-5122](https://issues.apache.org/jira/browse/HDFS-5122) | *Major* | **Support failover and retry in WebHdfsFileSystem for NN HA**
---

* [HDFS-5093](https://issues.apache.org/jira/browse/HDFS-5093) | *Minor* | **TestGlobPaths should re-use the MiniDFSCluster to avoid failure on Windows**
---

* [HDFS-5075](https://issues.apache.org/jira/browse/HDFS-5075) | *Major* | **httpfs-config.sh calls out incorrect env script name**
---

* [HDFS-5074](https://issues.apache.org/jira/browse/HDFS-5074) | *Major* | **Allow starting up from an fsimage checkpoint in the middle of a segment**
---

* [HDFS-5073](https://issues.apache.org/jira/browse/HDFS-5073) | *Minor* | **TestListCorruptFileBlocks fails intermittently**
---

* [HDFS-5068](https://issues.apache.org/jira/browse/HDFS-5068) | *Major* | **Convert NNThroughputBenchmark to a Tool to allow generic options.**
---

* [HDFS-5065](https://issues.apache.org/jira/browse/HDFS-5065) | *Major* | **TestSymlinkHdfsDisable fails on Windows**
---

* [HDFS-5037](https://issues.apache.org/jira/browse/HDFS-5037) | *Critical* | **Active NN should trigger its own edit log rolls**
---

* [HDFS-5035](https://issues.apache.org/jira/browse/HDFS-5035) | *Major* | **getFileLinkStatus and rename do not correctly check permissions of symlinks**
---

* [HDFS-5034](https://issues.apache.org/jira/browse/HDFS-5034) | *Trivial* | **Remove debug prints from getFileLinkInfo**
---

* [HDFS-5023](https://issues.apache.org/jira/browse/HDFS-5023) | *Major* | **TestSnapshotPathINodes.testAllowSnapshot is failing with jdk7**
---

* [HDFS-5014](https://issues.apache.org/jira/browse/HDFS-5014) | *Major* | **BPOfferService#processCommandFromActor() synchronization on namenode RPC call delays IBR to Active NN, if Stanby NN is unstable**
---

* [HDFS-5004](https://issues.apache.org/jira/browse/HDFS-5004) | *Major* | **Add additional JMX bean for NameNode status data**
---

* [HDFS-4997](https://issues.apache.org/jira/browse/HDFS-4997) | *Major* | **libhdfs doesn't return correct error codes in most cases**

libhdfs now returns correct codes in errno. Previously, due to a bug, many functions set errno to 255 instead of the more specific error code.

---

* [HDFS-4995](https://issues.apache.org/jira/browse/HDFS-4995) | *Major* | **Make getContentSummary() less expensive**
---

* [HDFS-4994](https://issues.apache.org/jira/browse/HDFS-4994) | *Minor* | **Audit log getContentSummary() calls**
---

* [HDFS-4983](https://issues.apache.org/jira/browse/HDFS-4983) | *Major* | **Numeric usernames do not work with WebHDFS FS**

Add a new configuration property "dfs.webhdfs.user.provider.user.pattern" for specifying user name filters for WebHDFS.

---

* [HDFS-4949](https://issues.apache.org/jira/browse/HDFS-4949) | *Major* | **Centralized cache management in HDFS**
---

* [HDFS-4885](https://issues.apache.org/jira/browse/HDFS-4885) | *Major* | **Update verifyBlockPlacement() API in BlockPlacementPolicy**
---

* [HDFS-4879](https://issues.apache.org/jira/browse/HDFS-4879) | *Major* | **Add "blocked ArrayList" collection to avoid CMS full GCs**
---

* [HDFS-4860](https://issues.apache.org/jira/browse/HDFS-4860) | *Major* | **Add additional attributes to JMX beans**
---

* [HDFS-4816](https://issues.apache.org/jira/browse/HDFS-4816) | *Major* | **transitionToActive blocks if the SBN is doing checkpoint image transfer**
---

* [HDFS-4657](https://issues.apache.org/jira/browse/HDFS-4657) | *Major* | **Limit the number of blocks logged by the NN after a block report to a configurable value.**
---

* [HDFS-4633](https://issues.apache.org/jira/browse/HDFS-4633) | *Major* | **TestDFSClientExcludedNodes fails sporadically if excluded nodes cache expires too quickly**
---

* [HDFS-4517](https://issues.apache.org/jira/browse/HDFS-4517) | *Major* | **Cover class RemoteBlockReader with unit tests**
---

* [HDFS-4516](https://issues.apache.org/jira/browse/HDFS-4516) | *Critical* | **Client crash after block allocation and NN switch before lease recovery for the same file can cause readers to fail forever**
---

* [HDFS-4512](https://issues.apache.org/jira/browse/HDFS-4512) | *Major* | **Cover package org.apache.hadoop.hdfs.server.common with tests**
---

* [HDFS-4511](https://issues.apache.org/jira/browse/HDFS-4511) | *Major* | **Cover package org.apache.hadoop.hdfs.tools with unit test**
---

* [HDFS-4510](https://issues.apache.org/jira/browse/HDFS-4510) | *Major* | **Cover classes ClusterJspHelper/NamenodeJspHelper with unit tests**
---

* [HDFS-4491](https://issues.apache.org/jira/browse/HDFS-4491) | *Major* | **Parallel testing HDFS**
---

* [HDFS-4376](https://issues.apache.org/jira/browse/HDFS-4376) | *Major* | ** Fix several race conditions in Balancer and resolve intermittent timeout of TestBalancerWithNodeGroup**
---

* [HDFS-4329](https://issues.apache.org/jira/browse/HDFS-4329) | *Major* | **DFSShell issues with directories with spaces in name**
---

* [HDFS-4278](https://issues.apache.org/jira/browse/HDFS-4278) | *Major* | **Log an ERROR when DFS\_BLOCK\_ACCESS\_TOKEN\_ENABLE config  is disabled but security is turned on.**
---

* [HDFS-4201](https://issues.apache.org/jira/browse/HDFS-4201) | *Critical* | **NPE in BPServiceActor#sendHeartBeat**
---

* [HDFS-4096](https://issues.apache.org/jira/browse/HDFS-4096) | *Major* | **Add snapshot information to namenode WebUI**
---

* [HDFS-3987](https://issues.apache.org/jira/browse/HDFS-3987) | *Major* | **Support webhdfs over HTTPS**
---

* [HDFS-3981](https://issues.apache.org/jira/browse/HDFS-3981) | *Major* | **access time is set without holding FSNamesystem write lock**
---

* [HDFS-2933](https://issues.apache.org/jira/browse/HDFS-2933) | *Major* | **Improve DataNode Web UI Index Page**
---

* [HDFS-2832](https://issues.apache.org/jira/browse/HDFS-2832) | *Major* | **Enable support for heterogeneous storages in HDFS - DN as a collection of storages**
---

* [MAPREDUCE-5744](https://issues.apache.org/jira/browse/MAPREDUCE-5744) | *Blocker* | **Job hangs because RMContainerAllocator$AssignedRequests.preemptReduce() violates the comparator contract**
---

* [MAPREDUCE-5743](https://issues.apache.org/jira/browse/MAPREDUCE-5743) | *Major* | **TestRMContainerAllocator is failing**
---

* [MAPREDUCE-5729](https://issues.apache.org/jira/browse/MAPREDUCE-5729) | *Critical* | **mapred job -list throws NPE**
---

* [MAPREDUCE-5725](https://issues.apache.org/jira/browse/MAPREDUCE-5725) | *Major* | **TestNetworkedJob relies on the Capacity Scheduler**
---

* [MAPREDUCE-5724](https://issues.apache.org/jira/browse/MAPREDUCE-5724) | *Critical* | **JobHistoryServer does not start if HDFS is not running**
---

* [MAPREDUCE-5723](https://issues.apache.org/jira/browse/MAPREDUCE-5723) | *Blocker* | **MR AM container log can be truncated or empty**
---

* [MAPREDUCE-5694](https://issues.apache.org/jira/browse/MAPREDUCE-5694) | *Major* | **MR AM container syslog is empty**
---

* [MAPREDUCE-5693](https://issues.apache.org/jira/browse/MAPREDUCE-5693) | *Major* | **Restore MRv1 behavior for log flush**
---

* [MAPREDUCE-5692](https://issues.apache.org/jira/browse/MAPREDUCE-5692) | *Major* | **Add explicit diagnostics when a task attempt is killed due to speculative execution**
---

* [MAPREDUCE-5689](https://issues.apache.org/jira/browse/MAPREDUCE-5689) | *Critical* | **MRAppMaster does not preempt reducers when scheduled maps cannot be fulfilled**
---

* [MAPREDUCE-5687](https://issues.apache.org/jira/browse/MAPREDUCE-5687) | *Major* | **TestYARNRunner#testResourceMgrDelegate fails with NPE after YARN-1446**
---

* [MAPREDUCE-5685](https://issues.apache.org/jira/browse/MAPREDUCE-5685) | *Blocker* | **getCacheFiles()  api doesn't work in WrappedReducer.java due to typo**
---

* [MAPREDUCE-5679](https://issues.apache.org/jira/browse/MAPREDUCE-5679) | *Major* | **TestJobHistoryParsing has race condition**
---

* [MAPREDUCE-5674](https://issues.apache.org/jira/browse/MAPREDUCE-5674) | *Major* | **Missing start and finish time in mapred.JobStatus**
---

* [MAPREDUCE-5672](https://issues.apache.org/jira/browse/MAPREDUCE-5672) | *Major* | **Provide optional RollingFileAppender for container log4j (syslog)**
---

* [MAPREDUCE-5656](https://issues.apache.org/jira/browse/MAPREDUCE-5656) | *Critical* | **bzip2 codec can drop records when reading data in splits**
---

* [MAPREDUCE-5650](https://issues.apache.org/jira/browse/MAPREDUCE-5650) | *Major* | **Job fails when hprof mapreduce.task.profile.map/reduce.params is specified**
---

* [MAPREDUCE-5645](https://issues.apache.org/jira/browse/MAPREDUCE-5645) | *Major* | **TestFixedLengthInputFormat fails with native libs**
---

* [MAPREDUCE-5640](https://issues.apache.org/jira/browse/MAPREDUCE-5640) | *Trivial* | **Rename TestLineRecordReader in jobclient module**
---

* [MAPREDUCE-5632](https://issues.apache.org/jira/browse/MAPREDUCE-5632) | *Major* | **TestRMContainerAllocator#testUpdatedNodes fails**
---

* [MAPREDUCE-5631](https://issues.apache.org/jira/browse/MAPREDUCE-5631) | *Major* | **TestJobEndNotifier.testNotifyRetries fails with Should have taken more than 5 seconds in jdk7**
---

* [MAPREDUCE-5625](https://issues.apache.org/jira/browse/MAPREDUCE-5625) | *Major* | **TestFixedLengthInputFormat fails in jdk7 environment**
---

* [MAPREDUCE-5623](https://issues.apache.org/jira/browse/MAPREDUCE-5623) | *Major* | **TestJobCleanup fails because of RejectedExecutionException and NPE.**
---

* [MAPREDUCE-5616](https://issues.apache.org/jira/browse/MAPREDUCE-5616) | *Major* | **MR Client-AppMaster RPC max retries on socket timeout is too high.**
---

* [MAPREDUCE-5613](https://issues.apache.org/jira/browse/MAPREDUCE-5613) | *Major* | **DefaultSpeculator holds and checks hashmap that is always empty**
---

* [MAPREDUCE-5610](https://issues.apache.org/jira/browse/MAPREDUCE-5610) | *Major* | **TestSleepJob fails in jdk7**
---

* [MAPREDUCE-5604](https://issues.apache.org/jira/browse/MAPREDUCE-5604) | *Minor* | **TestMRAMWithNonNormalizedCapabilities fails on Windows due to exceeding max path length**
---

* [MAPREDUCE-5601](https://issues.apache.org/jira/browse/MAPREDUCE-5601) | *Major* | **ShuffleHandler fadvises file regions as DONTNEED even when fetch fails**
---

* [MAPREDUCE-5598](https://issues.apache.org/jira/browse/MAPREDUCE-5598) | *Major* | **TestUserDefinedCounters.testMapReduceJob is flakey**
---

* [MAPREDUCE-5596](https://issues.apache.org/jira/browse/MAPREDUCE-5596) | *Major* | **Allow configuring the number of threads used to serve shuffle connections**
---

* [MAPREDUCE-5587](https://issues.apache.org/jira/browse/MAPREDUCE-5587) | *Major* | **TestTextOutputFormat fails on JDK7**
---

* [MAPREDUCE-5586](https://issues.apache.org/jira/browse/MAPREDUCE-5586) | *Major* | **TestCopyMapper#testCopyFailOnBlockSizeDifference fails when run from hadoop-tools/hadoop-distcp directory**
---

* [MAPREDUCE-5585](https://issues.apache.org/jira/browse/MAPREDUCE-5585) | *Major* | **TestCopyCommitter#testNoCommitAction Fails on JDK7**
---

* [MAPREDUCE-5569](https://issues.apache.org/jira/browse/MAPREDUCE-5569) | *Major* | **FloatSplitter is not generating correct splits**
---

* [MAPREDUCE-5561](https://issues.apache.org/jira/browse/MAPREDUCE-5561) | *Critical* | **org.apache.hadoop.mapreduce.v2.app.job.impl.TestJobImpl testcase failing on trunk**
---

* [MAPREDUCE-5550](https://issues.apache.org/jira/browse/MAPREDUCE-5550) | *Major* | **Task Status message (reporter.setStatus) not shown in UI with Hadoop 2.0**
---

* [MAPREDUCE-5546](https://issues.apache.org/jira/browse/MAPREDUCE-5546) | *Major* | **mapred.cmd on Windows set HADOOP\_OPTS incorrectly**
---

* [MAPREDUCE-5522](https://issues.apache.org/jira/browse/MAPREDUCE-5522) | *Minor* | **Incorrectly expect the array of JobQueueInfo returned by o.a.h.mapred.QueueManager#getJobQueueInfos to have a specific order.**
---

* [MAPREDUCE-5518](https://issues.apache.org/jira/browse/MAPREDUCE-5518) | *Trivial* | **Fix typo "can't read paritions file"**
---

* [MAPREDUCE-5514](https://issues.apache.org/jira/browse/MAPREDUCE-5514) | *Blocker* | **TestRMContainerAllocator fails on trunk**
---

* [MAPREDUCE-5504](https://issues.apache.org/jira/browse/MAPREDUCE-5504) | *Major* | **mapred queue -info inconsistent with types**
---

* [MAPREDUCE-5487](https://issues.apache.org/jira/browse/MAPREDUCE-5487) | *Major* | **In task processes, JobConf is unnecessarily loaded again in Limits**
---

* [MAPREDUCE-5484](https://issues.apache.org/jira/browse/MAPREDUCE-5484) | *Major* | **YarnChild unnecessarily loads job conf twice**
---

* [MAPREDUCE-5481](https://issues.apache.org/jira/browse/MAPREDUCE-5481) | *Blocker* | **Enable uber jobs to have multiple reducers**
---

* [MAPREDUCE-5464](https://issues.apache.org/jira/browse/MAPREDUCE-5464) | *Major* | **Add analogs of the SLOTS\_MILLIS counters that jive with the YARN resource model**
---

* [MAPREDUCE-5463](https://issues.apache.org/jira/browse/MAPREDUCE-5463) | *Major* | **Deprecate SLOTS\_MILLIS counters**
---

* [MAPREDUCE-5457](https://issues.apache.org/jira/browse/MAPREDUCE-5457) | *Major* | **Add a KeyOnlyTextOutputReader to enable streaming to write out text files without separators**
---

* [MAPREDUCE-5451](https://issues.apache.org/jira/browse/MAPREDUCE-5451) | *Major* | **MR uses LD\_LIBRARY\_PATH which doesn't mean anything in Windows**
---

* [MAPREDUCE-5431](https://issues.apache.org/jira/browse/MAPREDUCE-5431) | *Major* | **Missing pom dependency in MR-client**
---

* [MAPREDUCE-5411](https://issues.apache.org/jira/browse/MAPREDUCE-5411) | *Major* | **Refresh size of loaded job cache on history server**
---

* [MAPREDUCE-5409](https://issues.apache.org/jira/browse/MAPREDUCE-5409) | *Major* | **MRAppMaster throws InvalidStateTransitonException: Invalid event: TA\_TOO\_MANY\_FETCH\_FAILURE at KILLED for TaskAttemptImpl**
---

* [MAPREDUCE-5404](https://issues.apache.org/jira/browse/MAPREDUCE-5404) | *Major* | **HSAdminServer does not use ephemeral ports in minicluster mode**
---

* [MAPREDUCE-5386](https://issues.apache.org/jira/browse/MAPREDUCE-5386) | *Major* | **Ability to refresh history server job retention and job cleaner settings**
---

* [MAPREDUCE-5380](https://issues.apache.org/jira/browse/MAPREDUCE-5380) | *Major* | **Invalid mapred command should return non-zero exit code**
---

* [MAPREDUCE-5373](https://issues.apache.org/jira/browse/MAPREDUCE-5373) | *Major* | **TestFetchFailure.testFetchFailureMultipleReduces could fail intermittently**
---

* [MAPREDUCE-5356](https://issues.apache.org/jira/browse/MAPREDUCE-5356) | *Major* | **Ability to refresh aggregated log retention period and check interval**
---

* [MAPREDUCE-5332](https://issues.apache.org/jira/browse/MAPREDUCE-5332) | *Major* | **Support token-preserving restart of history server**
---

* [MAPREDUCE-5329](https://issues.apache.org/jira/browse/MAPREDUCE-5329) | *Major* | **APPLICATION\_INIT is never sent to AuxServices other than the builtin ShuffleHandler**
---

* [MAPREDUCE-5316](https://issues.apache.org/jira/browse/MAPREDUCE-5316) | *Major* | **job -list-attempt-ids command does not handle illegal task-state**
---

* [MAPREDUCE-5266](https://issues.apache.org/jira/browse/MAPREDUCE-5266) | *Major* | **Ability to refresh retention settings on history server**
---

* [MAPREDUCE-5265](https://issues.apache.org/jira/browse/MAPREDUCE-5265) | *Major* | **History server admin service to refresh user and superuser group mappings**
---

* [MAPREDUCE-5186](https://issues.apache.org/jira/browse/MAPREDUCE-5186) | *Critical* | **mapreduce.job.max.split.locations causes some splits created by CombineFileInputFormat to fail**
---

* [MAPREDUCE-5102](https://issues.apache.org/jira/browse/MAPREDUCE-5102) | *Major* | **fix coverage  org.apache.hadoop.mapreduce.lib.db and org.apache.hadoop.mapred.lib.db**
---

* [MAPREDUCE-5084](https://issues.apache.org/jira/browse/MAPREDUCE-5084) | *Major* | **fix coverage  org.apache.hadoop.mapreduce.v2.app.webapp and org.apache.hadoop.mapreduce.v2.hs.webapp**
---

* [MAPREDUCE-5052](https://issues.apache.org/jira/browse/MAPREDUCE-5052) | *Critical* | **Job History UI and web services confusing job start time and job submit time**
---

* [MAPREDUCE-4680](https://issues.apache.org/jira/browse/MAPREDUCE-4680) | *Major* | **Job history cleaner should only check timestamps of files in old enough directories**
---

* [MAPREDUCE-4421](https://issues.apache.org/jira/browse/MAPREDUCE-4421) | *Major* | **Run MapReduce framework via the distributed cache**
---

* [MAPREDUCE-3310](https://issues.apache.org/jira/browse/MAPREDUCE-3310) | *Major* | **Custom grouping comparator cannot be set for Combiners**
---

* [MAPREDUCE-2734](https://issues.apache.org/jira/browse/MAPREDUCE-2734) | *Trivial* | **DistCp with FairScheduler assign all map tasks in one TT**
---

* [MAPREDUCE-1176](https://issues.apache.org/jira/browse/MAPREDUCE-1176) | *Major* | **FixedLengthInputFormat and FixedLengthRecordReader**

Addition of FixedLengthInputFormat and FixedLengthRecordReader in the org.apache.hadoop.mapreduce.lib.input package. These two classes can be used when you need to read data from files containing fixed length (fixed width) records. Such files have no CR/LF (or any combination thereof), no delimiters etc, but each record is a fixed length, and extra data is padded with spaces. The data is one gigantic line within a file. When creating a job that specifies this input format, the job must have the "mapreduce.input.fixedlengthinputformat.record.length" property set as follows myJobConf.setInt("mapreduce.input.fixedlengthinputformat.record.length",[myFixedRecordLength]); 

Please see javadoc for more details.

---

* [MAPREDUCE-434](https://issues.apache.org/jira/browse/MAPREDUCE-434) | *Minor* | **LocalJobRunner limited to single reducer**
---

* [YARN-1642](https://issues.apache.org/jira/browse/YARN-1642) | *Blocker* | **RMDTRenewer#getRMClient should use ClientRMProxy**
---

* [YARN-1630](https://issues.apache.org/jira/browse/YARN-1630) | *Major* | **Introduce timeout for async polling operations in YarnClientImpl**
---

* [YARN-1629](https://issues.apache.org/jira/browse/YARN-1629) | *Major* | **IndexOutOfBoundsException in Fair Scheduler MaxRunningAppsEnforcer**
---

* [YARN-1628](https://issues.apache.org/jira/browse/YARN-1628) | *Major* | **TestContainerManagerSecurity fails on trunk**
---

* [YARN-1624](https://issues.apache.org/jira/browse/YARN-1624) | *Major* | **QueuePlacementPolicy format is not easily readable via a JAXB parser**
---

* [YARN-1623](https://issues.apache.org/jira/browse/YARN-1623) | *Major* | **Include queue name in RegisterApplicationMasterResponse**
---

* [YARN-1618](https://issues.apache.org/jira/browse/YARN-1618) | *Blocker* | **Fix invalid RMApp transition from NEW to FINAL\_SAVING**
---

* [YARN-1616](https://issues.apache.org/jira/browse/YARN-1616) | *Trivial* | **RMFatalEventDispatcher should log the cause of the event**
---

* [YARN-1608](https://issues.apache.org/jira/browse/YARN-1608) | *Trivial* | **LinuxContainerExecutor has a few DEBUG messages at INFO level**
---

* [YARN-1607](https://issues.apache.org/jira/browse/YARN-1607) | *Major* | **TestRM expects the capacity scheduler**
---

* [YARN-1603](https://issues.apache.org/jira/browse/YARN-1603) | *Trivial* | **Remove two *.orig files which were unexpectedly committed**
---

* [YARN-1601](https://issues.apache.org/jira/browse/YARN-1601) | *Major* | **3rd party JARs are missing from hadoop-dist output**
---

* [YARN-1600](https://issues.apache.org/jira/browse/YARN-1600) | *Blocker* | **RM does not startup when security is enabled without spnego configured**
---

* [YARN-1598](https://issues.apache.org/jira/browse/YARN-1598) | *Critical* | **HA-related rmadmin commands don't work on a secure cluster**
---

* [YARN-1579](https://issues.apache.org/jira/browse/YARN-1579) | *Trivial* | **ActiveRMInfoProto fields should be optional**
---

* [YARN-1575](https://issues.apache.org/jira/browse/YARN-1575) | *Critical* | **Public localizer crashes with "Localized unkown resource"**
---

* [YARN-1574](https://issues.apache.org/jira/browse/YARN-1574) | *Blocker* | **RMDispatcher should be reset on transition to standby**
---

* [YARN-1573](https://issues.apache.org/jira/browse/YARN-1573) | *Major* | **ZK store should use a private password for root-node-acls**
---

* [YARN-1568](https://issues.apache.org/jira/browse/YARN-1568) | *Trivial* | **Rename clusterid to clusterId in ActiveRMInfoProto**
---

* [YARN-1567](https://issues.apache.org/jira/browse/YARN-1567) | *Major* | **In Fair Scheduler, allow empty queues to change between leaf and parent on allocation file reload**
---

* [YARN-1560](https://issues.apache.org/jira/browse/YARN-1560) | *Major* | **TestYarnClient#testAMMRTokens fails with null AMRM token**
---

* [YARN-1559](https://issues.apache.org/jira/browse/YARN-1559) | *Blocker* | **Race between ServerRMProxy and ClientRMProxy setting RMProxy#INSTANCE**
---

* [YARN-1549](https://issues.apache.org/jira/browse/YARN-1549) | *Major* | **TestUnmanagedAMLauncher#testDSShell fails in trunk**
---

* [YARN-1541](https://issues.apache.org/jira/browse/YARN-1541) | *Major* | **Invalidate AM Host/Port when app attempt is done so that in the mean-while client doesn’t get wrong information.**
---

* [YARN-1527](https://issues.apache.org/jira/browse/YARN-1527) | *Trivial* | **yarn rmadmin command prints wrong usage info:**
---

* [YARN-1523](https://issues.apache.org/jira/browse/YARN-1523) | *Major* | **Use StandbyException instead of RMNotYetReadyException**
---

* [YARN-1522](https://issues.apache.org/jira/browse/YARN-1522) | *Major* | **TestApplicationCleanup.testAppCleanup occasionally fails**
---

* [YARN-1505](https://issues.apache.org/jira/browse/YARN-1505) | *Blocker* | **WebAppProxyServer should not set localhost as YarnConfiguration.PROXY\_ADDRESS by itself**
---

* [YARN-1491](https://issues.apache.org/jira/browse/YARN-1491) | *Trivial* | **Upgrade JUnit3 TestCase to JUnit 4**
---

* [YARN-1485](https://issues.apache.org/jira/browse/YARN-1485) | *Major* | **Enabling HA should verify the RM service addresses configurations have been set for every RM Ids defined in RM\_HA\_IDs**
---

* [YARN-1482](https://issues.apache.org/jira/browse/YARN-1482) | *Major* | **WebApplicationProxy should be always-on w.r.t HA even if it is embedded in the RM**
---

* [YARN-1481](https://issues.apache.org/jira/browse/YARN-1481) | *Major* | **Move internal services logic from AdminService to ResourceManager**
---

* [YARN-1463](https://issues.apache.org/jira/browse/YARN-1463) | *Major* | **Tests should avoid starting http-server where possible or creates spnego keytab/principals**
---

* [YARN-1454](https://issues.apache.org/jira/browse/YARN-1454) | *Critical* | **TestRMRestart.testRMDelegationTokenRestoredOnRMRestart is failing intermittently**
---

* [YARN-1451](https://issues.apache.org/jira/browse/YARN-1451) | *Minor* | **TestResourceManager relies on the scheduler assigning multiple containers in a single node update**
---

* [YARN-1450](https://issues.apache.org/jira/browse/YARN-1450) | *Major* | **TestUnmanagedAMLauncher#testDSShell fails on trunk**
---

* [YARN-1448](https://issues.apache.org/jira/browse/YARN-1448) | *Major* | **AM-RM protocol changes to support container resizing**
---

* [YARN-1447](https://issues.apache.org/jira/browse/YARN-1447) | *Major* | **Common PB type definitions for container resizing**
---

* [YARN-1446](https://issues.apache.org/jira/browse/YARN-1446) | *Major* | **Change killing application to wait until state store is done**
---

* [YARN-1435](https://issues.apache.org/jira/browse/YARN-1435) | *Major* | **Distributed Shell should not run other commands except "sh", and run the custom script at the same time.**
---

* [YARN-1425](https://issues.apache.org/jira/browse/YARN-1425) | *Major* | **TestRMRestart fails because MockRM.waitForState(AttemptId) uses current attempt instead of the attempt passed as argument**
---

* [YARN-1423](https://issues.apache.org/jira/browse/YARN-1423) | *Major* | **Support queue placement by secondary group in the Fair Scheduler**
---

* [YARN-1419](https://issues.apache.org/jira/browse/YARN-1419) | *Minor* | **TestFifoScheduler.testAppAttemptMetrics fails intermittently under jdk7**
---

* [YARN-1416](https://issues.apache.org/jira/browse/YARN-1416) | *Major* | **InvalidStateTransitions getting reported in multiple test cases even though they pass**
---

* [YARN-1411](https://issues.apache.org/jira/browse/YARN-1411) | *Critical* | **HA config shouldn't affect NodeManager RPC addresses**
---

* [YARN-1409](https://issues.apache.org/jira/browse/YARN-1409) | *Major* | **NonAggregatingLogHandler can throw RejectedExecutionException**
---

* [YARN-1407](https://issues.apache.org/jira/browse/YARN-1407) | *Major* | **RM Web UI and REST APIs should uniformly use YarnApplicationState**
---

* [YARN-1405](https://issues.apache.org/jira/browse/YARN-1405) | *Major* | **RM hangs on shutdown if calling system.exit in serviceInit or serviceStart**
---

* [YARN-1403](https://issues.apache.org/jira/browse/YARN-1403) | *Major* | **Separate out configuration loading from QueueManager in the Fair Scheduler**
---

* [YARN-1401](https://issues.apache.org/jira/browse/YARN-1401) | *Major* | **With zero sleep-delay-before-sigkill.ms, no signal is ever sent**
---

* [YARN-1400](https://issues.apache.org/jira/browse/YARN-1400) | *Trivial* | **yarn.cmd uses HADOOP\_RESOURCEMANAGER\_OPTS. Should be YARN\_RESOURCEMANAGER\_OPTS.**
---

* [YARN-1395](https://issues.apache.org/jira/browse/YARN-1395) | *Major* | **Distributed shell application master launched with debug flag can hang waiting for external ls process.**
---

* [YARN-1392](https://issues.apache.org/jira/browse/YARN-1392) | *Major* | **Allow sophisticated app-to-queue placement policies in the Fair Scheduler**
---

* [YARN-1388](https://issues.apache.org/jira/browse/YARN-1388) | *Trivial* | **Fair Scheduler page always displays blank fair share**
---

* [YARN-1387](https://issues.apache.org/jira/browse/YARN-1387) | *Major* | **RMWebServices should use ClientRMService for filtering applications**
---

* [YARN-1386](https://issues.apache.org/jira/browse/YARN-1386) | *Critical* | **NodeManager mistakenly loses resources and relocalizes them**
---

* [YARN-1381](https://issues.apache.org/jira/browse/YARN-1381) | *Minor* | **Same relaxLocality appears twice in exception message of AMRMClientImpl#checkLocalityRelaxationConflict()**
---

* [YARN-1378](https://issues.apache.org/jira/browse/YARN-1378) | *Major* | **Implement a RMStateStore cleaner for deleting application/attempt info**
---

* [YARN-1374](https://issues.apache.org/jira/browse/YARN-1374) | *Blocker* | **Resource Manager fails to start due to ConcurrentModificationException**
---

* [YARN-1358](https://issues.apache.org/jira/browse/YARN-1358) | *Minor* | **TestYarnCLI fails on Windows due to line endings**
---

* [YARN-1357](https://issues.apache.org/jira/browse/YARN-1357) | *Minor* | **TestContainerLaunch.testContainerEnvVariables fails on Windows**
---

* [YARN-1351](https://issues.apache.org/jira/browse/YARN-1351) | *Trivial* | **Invalid string format in Fair Scheduler log warn message**
---

* [YARN-1349](https://issues.apache.org/jira/browse/YARN-1349) | *Major* | **yarn.cmd does not support passthrough to any arbitrary class.**
---

* [YARN-1343](https://issues.apache.org/jira/browse/YARN-1343) | *Critical* | **NodeManagers additions/restarts are not reported as node updates in AllocateResponse responses to AMs**
---

* [YARN-1335](https://issues.apache.org/jira/browse/YARN-1335) | *Major* | **Move duplicate code from FSSchedulerApp and FiCaSchedulerApp into SchedulerApplication**
---

* [YARN-1333](https://issues.apache.org/jira/browse/YARN-1333) | *Major* | **Support blacklisting in the Fair Scheduler**
---

* [YARN-1332](https://issues.apache.org/jira/browse/YARN-1332) | *Minor* | **In TestAMRMClient, replace assertTrue with assertEquals where possible**
---

* [YARN-1331](https://issues.apache.org/jira/browse/YARN-1331) | *Trivial* | **yarn.cmd exits with NoClassDefFoundError trying to run rmadmin or logs**
---

* [YARN-1330](https://issues.apache.org/jira/browse/YARN-1330) | *Major* | **Fair Scheduler: defaultQueueSchedulingPolicy does not take effect**
---

* [YARN-1325](https://issues.apache.org/jira/browse/YARN-1325) | *Major* | **Enabling HA should check Configuration contains multiple RMs**
---

* [YARN-1323](https://issues.apache.org/jira/browse/YARN-1323) | *Major* | **Set HTTPS webapp address along with other RPC addresses in HAUtil**
---

* [YARN-1321](https://issues.apache.org/jira/browse/YARN-1321) | *Blocker* | **NMTokenCache is a singleton, prevents multiple AMs running in a single JVM to work correctly**
---

* [YARN-1320](https://issues.apache.org/jira/browse/YARN-1320) | *Major* | **Custom log4j properties in Distributed shell does not work properly.**
---

* [YARN-1318](https://issues.apache.org/jira/browse/YARN-1318) | *Blocker* | **Promote AdminService to an Always-On service and merge in RMHAProtocolService**
---

* [YARN-1315](https://issues.apache.org/jira/browse/YARN-1315) | *Major* | **TestQueueACLs should also test FairScheduler**
---

* [YARN-1314](https://issues.apache.org/jira/browse/YARN-1314) | *Major* | **Cannot pass more than 1 argument to shell command**
---

* [YARN-1311](https://issues.apache.org/jira/browse/YARN-1311) | *Trivial* | **Fix app specific scheduler-events' names to be app-attempt based**
---

* [YARN-1307](https://issues.apache.org/jira/browse/YARN-1307) | *Major* | **Rethink znode structure for RM HA**
---

* [YARN-1306](https://issues.apache.org/jira/browse/YARN-1306) | *Major* | **Clean up hadoop-sls sample-conf according to YARN-1228**
---

* [YARN-1305](https://issues.apache.org/jira/browse/YARN-1305) | *Major* | **RMHAProtocolService#serviceInit should handle HAUtil's IllegalArgumentException**
---

* [YARN-1303](https://issues.apache.org/jira/browse/YARN-1303) | *Major* | **Allow multiple commands separating with ";" in distributed-shell**
---

* [YARN-1300](https://issues.apache.org/jira/browse/YARN-1300) | *Major* | **SLS tests fail because conf puts yarn properties in fair-scheduler.xml**
---

* [YARN-1295](https://issues.apache.org/jira/browse/YARN-1295) | *Major* | **In UnixLocalWrapperScriptBuilder, using bash -c can cause "Text file busy" errors**
---

* [YARN-1293](https://issues.apache.org/jira/browse/YARN-1293) | *Major* | **TestContainerLaunch.testInvalidEnvSyntaxDiagnostics fails on trunk**
---

* [YARN-1290](https://issues.apache.org/jira/browse/YARN-1290) | *Major* | **Let continuous scheduling achieve more balanced task assignment**
---

* [YARN-1288](https://issues.apache.org/jira/browse/YARN-1288) | *Major* | **Make Fair Scheduler ACLs more user friendly**
---

* [YARN-1284](https://issues.apache.org/jira/browse/YARN-1284) | *Blocker* | **LCE: Race condition leaves dangling cgroups entries for killed containers**
---

* [YARN-1283](https://issues.apache.org/jira/browse/YARN-1283) | *Major* | **Invalid 'url of job' mentioned in Job output with yarn.http.policy=HTTPS\_ONLY**
---

* [YARN-1268](https://issues.apache.org/jira/browse/YARN-1268) | *Major* | **TestFairScheduler.testContinuousScheduling is flaky**
---

* [YARN-1265](https://issues.apache.org/jira/browse/YARN-1265) | *Major* | **Fair Scheduler chokes on unhealthy node reconnect**
---

* [YARN-1259](https://issues.apache.org/jira/browse/YARN-1259) | *Trivial* | **In Fair Scheduler web UI, queue num pending and num active apps switched**
---

* [YARN-1258](https://issues.apache.org/jira/browse/YARN-1258) | *Major* | **Allow configuring the Fair Scheduler root queue**
---

* [YARN-1253](https://issues.apache.org/jira/browse/YARN-1253) | *Blocker* | **Changes to LinuxContainerExecutor to run containers as a single dedicated user in non-secure mode**
---

* [YARN-1241](https://issues.apache.org/jira/browse/YARN-1241) | *Major* | **In Fair Scheduler, maxRunningApps does not work for non-leaf queues**
---

* [YARN-1239](https://issues.apache.org/jira/browse/YARN-1239) | *Major* | **Save version information in the state store**
---

* [YARN-1232](https://issues.apache.org/jira/browse/YARN-1232) | *Major* | **Configuration to support multiple RMs**
---

* [YARN-1222](https://issues.apache.org/jira/browse/YARN-1222) | *Major* | **Make improvements in ZKRMStateStore for fencing**
---

* [YARN-1210](https://issues.apache.org/jira/browse/YARN-1210) | *Major* | **During RM restart, RM should start a new attempt only when previous attempt exits for real**
---

* [YARN-1199](https://issues.apache.org/jira/browse/YARN-1199) | *Major* | **Make NM/RM Versions Available**
---

* [YARN-1188](https://issues.apache.org/jira/browse/YARN-1188) | *Trivial* | **The context of QueueMetrics becomes 'default' when using FairScheduler**
---

* [YARN-1185](https://issues.apache.org/jira/browse/YARN-1185) | *Major* | **FileSystemRMStateStore can leave partial files that prevent subsequent recovery**
---

* [YARN-1183](https://issues.apache.org/jira/browse/YARN-1183) | *Major* | **MiniYARNCluster shutdown takes several minutes intermittently**
---

* [YARN-1182](https://issues.apache.org/jira/browse/YARN-1182) | *Major* | **MiniYARNCluster creates and inits the RM/NM only on start()**
---

* [YARN-1181](https://issues.apache.org/jira/browse/YARN-1181) | *Major* | **Augment MiniYARNCluster to support HA mode**
---

* [YARN-1180](https://issues.apache.org/jira/browse/YARN-1180) | *Trivial* | **Update capacity scheduler docs to include types on the configs**
---

* [YARN-1172](https://issues.apache.org/jira/browse/YARN-1172) | *Major* | **Convert *SecretManagers in the RM to services**
---

* [YARN-1145](https://issues.apache.org/jira/browse/YARN-1145) | *Major* | **Potential file handle leak in aggregated logs web ui**
---

* [YARN-1138](https://issues.apache.org/jira/browse/YARN-1138) | *Major* | **yarn.application.classpath is set to point to $HADOOP\_CONF\_DIR etc., which does not work on Windows**
---

* [YARN-1121](https://issues.apache.org/jira/browse/YARN-1121) | *Major* | **RMStateStore should flush all pending store events before closing**
---

* [YARN-1119](https://issues.apache.org/jira/browse/YARN-1119) | *Major* | **Add ClusterMetrics checks to tho TestRMNodeTransitions tests**
---

* [YARN-1109](https://issues.apache.org/jira/browse/YARN-1109) | *Major* | **Demote NodeManager "Sending out status for container" logs to debug**
---

* [YARN-1098](https://issues.apache.org/jira/browse/YARN-1098) | *Major* | **Separate out RM services into "Always On" and "Active"**
---

* [YARN-1068](https://issues.apache.org/jira/browse/YARN-1068) | *Major* | **Add admin support for HA operations**
---

* [YARN-1060](https://issues.apache.org/jira/browse/YARN-1060) | *Major* | **Two tests in TestFairScheduler are missing @Test annotation**
---

* [YARN-1053](https://issues.apache.org/jira/browse/YARN-1053) | *Blocker* | **Diagnostic message from ContainerExitEvent is ignored in ContainerImpl**
---

* [YARN-1044](https://issues.apache.org/jira/browse/YARN-1044) | *Critical* | **used/min/max resources do not display info in the scheduler page**
---

* [YARN-1033](https://issues.apache.org/jira/browse/YARN-1033) | *Major* | **Expose RM active/standby state to Web UI and REST API**
---

* [YARN-1029](https://issues.apache.org/jira/browse/YARN-1029) | *Major* | **Allow embedding leader election into the RM**
---

* [YARN-1028](https://issues.apache.org/jira/browse/YARN-1028) | *Major* | **Add FailoverProxyProvider like capability to RMProxy**
---

* [YARN-1027](https://issues.apache.org/jira/browse/YARN-1027) | *Major* | **Implement RMHAProtocolService**
---

* [YARN-1022](https://issues.apache.org/jira/browse/YARN-1022) | *Trivial* | **Unnecessary INFO logs in AMRMClientAsync**
---

* [YARN-1021](https://issues.apache.org/jira/browse/YARN-1021) | *Major* | **Yarn Scheduler Load Simulator**
---

* [YARN-1010](https://issues.apache.org/jira/browse/YARN-1010) | *Critical* | **FairScheduler: decouple container scheduling from nodemanager heartbeats**
---

* [YARN-985](https://issues.apache.org/jira/browse/YARN-985) | *Major* | **Nodemanager should log where a resource was localized**
---

* [YARN-976](https://issues.apache.org/jira/browse/YARN-976) | *Major* | **Document the meaning of a virtual core**
---

* [YARN-905](https://issues.apache.org/jira/browse/YARN-905) | *Major* | **Add state filters to nodes CLI**
---

* [YARN-895](https://issues.apache.org/jira/browse/YARN-895) | *Major* | **RM crashes if it restarts while the state-store is down**
---

* [YARN-891](https://issues.apache.org/jira/browse/YARN-891) | *Major* | **Store completed application information in RM state store**
---

* [YARN-888](https://issues.apache.org/jira/browse/YARN-888) | *Major* | **clean up POM dependencies**
---

* [YARN-879](https://issues.apache.org/jira/browse/YARN-879) | *Major* | **Fix tests w.r.t o.a.h.y.server.resourcemanager.Application**
---

* [YARN-819](https://issues.apache.org/jira/browse/YARN-819) | *Major* | **ResourceManager and NodeManager should check for a minimum allowed version**
---

* [YARN-807](https://issues.apache.org/jira/browse/YARN-807) | *Major* | **When querying apps by queue, iterating over all apps is inefficient and limiting**
---

* [YARN-786](https://issues.apache.org/jira/browse/YARN-786) | *Major* | **Expose application resource usage in RM REST API**
---

* [YARN-709](https://issues.apache.org/jira/browse/YARN-709) | *Major* | **verify that new jobs submitted with old RM delegation tokens after RM restart are accepted**
---

* [YARN-674](https://issues.apache.org/jira/browse/YARN-674) | *Major* | **Slow or failing DelegationToken renewals on submission itself make RM unavailable**
---

* [YARN-649](https://issues.apache.org/jira/browse/YARN-649) | *Major* | **Make container logs available over HTTP in plain text**
---

* [YARN-584](https://issues.apache.org/jira/browse/YARN-584) | *Major* | **In scheduler web UIs, queues unexpand on refresh**
---

* [YARN-546](https://issues.apache.org/jira/browse/YARN-546) | *Major* | **Allow disabling the Fair Scheduler event log**
---

* [YARN-478](https://issues.apache.org/jira/browse/YARN-478) | *Major* | **fix coverage org.apache.hadoop.yarn.webapp.log**
---

* [YARN-465](https://issues.apache.org/jira/browse/YARN-465) | *Major* | **fix coverage  org.apache.hadoop.yarn.server.webproxy**
---

* [YARN-461](https://issues.apache.org/jira/browse/YARN-461) | *Major* | **Fair scheduler should not accept apps with empty string queue name**
---

* [YARN-427](https://issues.apache.org/jira/browse/YARN-427) | *Major* | **Coverage fix for org.apache.hadoop.yarn.server.api.***
---

* [YARN-425](https://issues.apache.org/jira/browse/YARN-425) | *Major* | **coverage fix for yarn api**
---

* [YARN-408](https://issues.apache.org/jira/browse/YARN-408) | *Minor* | **Capacity Scheduler delay scheduling should not be disabled by default**
---

* [YARN-353](https://issues.apache.org/jira/browse/YARN-353) | *Major* | **Add Zookeeper-based store implementation for RMStateStore**
---

* [YARN-312](https://issues.apache.org/jira/browse/YARN-312) | *Major* | **Add updateNodeResource in ResourceManagerAdministrationProtocol**
---

* [YARN-311](https://issues.apache.org/jira/browse/YARN-311) | *Major* | **Dynamic node resource configuration: core scheduler changes**
---

* [YARN-305](https://issues.apache.org/jira/browse/YARN-305) | *Critical* | **Fair scheduler logs too many "Node offered to app:..." messages**
---

* [YARN-7](https://issues.apache.org/jira/browse/YARN-7) | *Major* | **Add support for DistributedShell to ask for CPUs along with memory**


