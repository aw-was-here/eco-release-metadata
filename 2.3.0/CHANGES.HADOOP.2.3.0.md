# Hadoop Changelog

## Release 2.3.0 - 2014-02-20

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10047](https://issues.apache.org/jira/browse/HADOOP-10047) | Add a directbuffer Decompressor API to hadoop |  Major | io | Gopal V | Gopal V |
| [HADOOP-9848](https://issues.apache.org/jira/browse/HADOOP-9848) | Create a MiniKDC for use with security testing |  Major | security, test | Wei Yan | Wei Yan |
| [HADOOP-9618](https://issues.apache.org/jira/browse/HADOOP-9618) | Add thread which detects JVM pauses |  Major | util | Todd Lipcon | Todd Lipcon |
| [HADOOP-9432](https://issues.apache.org/jira/browse/HADOOP-9432) | Add support for markdown .md files in site documentation |  Minor | build, documentation | Steve Loughran |  |
| [HADOOP-8545](https://issues.apache.org/jira/browse/HADOOP-8545) | Filesystem Implementation for OpenStack Swift |  Major | fs | Tim Miller | Dmitry Mezhensky |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10274](https://issues.apache.org/jira/browse/HADOOP-10274) | Lower the logging level from ERROR to WARN for UGI.doAs method |  Minor | security | takeshi.miao | takeshi.miao |
| [HADOOP-10248](https://issues.apache.org/jira/browse/HADOOP-10248) | Property name should be included in the exception where property value is null |  Major | . | Ted Yu | Akira AJISAKA |
| [HADOOP-10228](https://issues.apache.org/jira/browse/HADOOP-10228) | FsPermission#fromShort() should cache FsAction.values() |  Minor | fs | Haohui Mai | Haohui Mai |
| [HADOOP-10208](https://issues.apache.org/jira/browse/HADOOP-10208) | Remove duplicate initialization in StringUtils.getStringCollection |  Trivial | . | Benoy Antony | Benoy Antony |
| [HADOOP-10198](https://issues.apache.org/jira/browse/HADOOP-10198) | DomainSocket: add support for socketpair |  Minor | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-10173](https://issues.apache.org/jira/browse/HADOOP-10173) | Remove UGI from DIGEST-MD5 SASL server creation |  Critical | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-10172](https://issues.apache.org/jira/browse/HADOOP-10172) | Cache SASL server factories |  Critical | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-10169](https://issues.apache.org/jira/browse/HADOOP-10169) | remove the unnecessary  synchronized in JvmMetrics class |  Minor | metrics | Liang Xie | Liang Xie |
| [HADOOP-10167](https://issues.apache.org/jira/browse/HADOOP-10167) | Mark hadoop-common source as UTF-8 in Maven pom files / refactoring |  Major | build | Mikhail Antonov | Mikhail Antonov |
| [HADOOP-10164](https://issues.apache.org/jira/browse/HADOOP-10164) | Allow UGI to login with a known Subject |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-10143](https://issues.apache.org/jira/browse/HADOOP-10143) | replace WritableFactories's hashmap with ConcurrentHashMap |  Major | io | Liang Xie | Liang Xie |
| [HADOOP-10132](https://issues.apache.org/jira/browse/HADOOP-10132) | RPC#stopProxy() should log the class of proxy when IllegalArgumentException is encountered |  Minor | . | Ted Yu | Ted Yu |
| [HADOOP-10111](https://issues.apache.org/jira/browse/HADOOP-10111) | Allow DU to be initialized with an initial value |  Major | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-10095](https://issues.apache.org/jira/browse/HADOOP-10095) | Performance improvement in CodecPool |  Minor | io | Nicolas Liochon | Nicolas Liochon |
| [HADOOP-10086](https://issues.apache.org/jira/browse/HADOOP-10086) | User document for authentication in secure cluster |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-10079](https://issues.apache.org/jira/browse/HADOOP-10079) | log a warning message if group resolution takes too long. |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-10067](https://issues.apache.org/jira/browse/HADOOP-10067) | Missing POM dependency on jsr305 |  Minor | . | Robert Rati | Robert Rati |
| [HADOOP-10064](https://issues.apache.org/jira/browse/HADOOP-10064) | Upgrade to maven antrun plugin version 1.7 |  Major | build | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10046](https://issues.apache.org/jira/browse/HADOOP-10046) | Print a log message when SSL is enabled |  Trivial | . | David S. Wang | David S. Wang |
| [HADOOP-10005](https://issues.apache.org/jira/browse/HADOOP-10005) | No need to check INFO severity level is enabled or not |  Trivial | . | Jackie Chang | Jackie Chang |
| [HADOOP-9998](https://issues.apache.org/jira/browse/HADOOP-9998) | Provide methods to clear only part of the DNSToSwitchMapping |  Major | net | Junping Du | Junping Du |
| [HADOOP-9915](https://issues.apache.org/jira/browse/HADOOP-9915) | o.a.h.fs.Stat support on Macosx |  Trivial | . | Binglin Chang | Binglin Chang |
| [HADOOP-9909](https://issues.apache.org/jira/browse/HADOOP-9909) | org.apache.hadoop.fs.Stat should permit other LANG |  Major | fs | Shinichi Yamashita |  |
| [HADOOP-9897](https://issues.apache.org/jira/browse/HADOOP-9897) | Add method to get path start position without drive specifier in o.a.h.fs.Path |  Trivial | fs | Binglin Chang | Binglin Chang |
| [HADOOP-9860](https://issues.apache.org/jira/browse/HADOOP-9860) | Remove class HackedKeytab and HackedKeytabEncoder from hadoop-minikdc once jira DIRSERVER-1882 solved |  Major | . | Wei Yan | Wei Yan |
| [HADOOP-9784](https://issues.apache.org/jira/browse/HADOOP-9784) | Add a builder for HttpServer |  Major | . | Junping Du | Junping Du |
| [HADOOP-9693](https://issues.apache.org/jira/browse/HADOOP-9693) | Shell should add a probe for OSX |  Trivial | . | Steve Loughran |  |
| [HADOOP-9652](https://issues.apache.org/jira/browse/HADOOP-9652) | Allow RawLocalFs#getFileLinkStatus to fill in the link owner and mode if requested |  Major | . | Colin Patrick McCabe | Andrew Wang |
| [HADOOP-9623](https://issues.apache.org/jira/browse/HADOOP-9623) | Update jets3t dependency to  0.9.0 |  Major | fs/s3 | Timothy St. Clair | Amandeep Khurana |
| [HADOOP-9611](https://issues.apache.org/jira/browse/HADOOP-9611) | mvn-rpmbuild against google-guice \> 3.0 yields missing cglib dependency |  Major | build | Timothy St. Clair | Timothy St. Clair |
| [HADOOP-9594](https://issues.apache.org/jira/browse/HADOOP-9594) | Update apache commons math dependency |  Major | build | Timothy St. Clair | Timothy St. Clair |
| [HADOOP-9494](https://issues.apache.org/jira/browse/HADOOP-9494) | Excluded auto-generated and examples code from clover reports |  Major | . | Dennis Y | Andrey Klochkov |
| [HADOOP-9487](https://issues.apache.org/jira/browse/HADOOP-9487) | Deprecation warnings in Configuration should go to their own log or otherwise be suppressible |  Major | conf | Steve Loughran |  |
| [HADOOP-9470](https://issues.apache.org/jira/browse/HADOOP-9470) | eliminate duplicate FQN tests in different Hadoop modules |  Major | test | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9319](https://issues.apache.org/jira/browse/HADOOP-9319) | Update bundled lz4 source to latest version |  Major | . | Arpit Agarwal | Binglin Chang |
| [HADOOP-9241](https://issues.apache.org/jira/browse/HADOOP-9241) | DU refresh interval is not configurable |  Trivial | . | Harsh J | Harsh J |
| [HADOOP-8704](https://issues.apache.org/jira/browse/HADOOP-8704) | add request logging to jetty/httpserver |  Major | . | Thomas Graves | Jonathan Eagles |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10317](https://issues.apache.org/jira/browse/HADOOP-10317) | Rename branch-2.3 release version from 2.4.0-SNAPSHOT to 2.3.0-SNAPSHOT |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-10313](https://issues.apache.org/jira/browse/HADOOP-10313) | Script and jenkins job to produce Hadoop release artifacts |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10311](https://issues.apache.org/jira/browse/HADOOP-10311) | Cleanup vendor names from the code base |  Blocker | . | Suresh Srinivas | Alejandro Abdelnur |
| [HADOOP-10310](https://issues.apache.org/jira/browse/HADOOP-10310) | SaslRpcServer should be initialized even when no secret manager present |  Blocker | security | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-10305](https://issues.apache.org/jira/browse/HADOOP-10305) | Add "rpc.metrics.quantile.enable" and "rpc.metrics.percentiles.intervals" to core-default.xml |  Major | metrics | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10292](https://issues.apache.org/jira/browse/HADOOP-10292) | Restore HttpServer from branch-2.2 in branch-2 |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10291](https://issues.apache.org/jira/browse/HADOOP-10291) | TestSecurityUtil#testSocketAddrWithIP fails |  Major | . | Mit Desai | Mit Desai |
| [HADOOP-10288](https://issues.apache.org/jira/browse/HADOOP-10288) | Explicit reference to Log4JLogger breaks non-log4j users |  Major | util | Todd Lipcon | Todd Lipcon |
| [HADOOP-10273](https://issues.apache.org/jira/browse/HADOOP-10273) | Fix 'mvn site' |  Major | build | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-10255](https://issues.apache.org/jira/browse/HADOOP-10255) | Rename HttpServer to HttpServer2 to retain older HttpServer in branch-2 for compatibility |  Blocker | . | Haohui Mai | Haohui Mai |
| [HADOOP-10252](https://issues.apache.org/jira/browse/HADOOP-10252) | HttpServer can't start if hostname is not specified |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HADOOP-10250](https://issues.apache.org/jira/browse/HADOOP-10250) | VersionUtil returns wrong value when comparing two versions |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-10240](https://issues.apache.org/jira/browse/HADOOP-10240) | Windows build instructions incorrectly state requirement of protoc 2.4.1 instead of 2.5.0 |  Trivial | documentation | Chris Nauroth | Chris Nauroth |
| [HADOOP-10236](https://issues.apache.org/jira/browse/HADOOP-10236) | Fix typo in o.a.h.ipc.Client#checkResponse |  Trivial | . | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10235](https://issues.apache.org/jira/browse/HADOOP-10235) | Hadoop tarball has 2 versions of stax-api JARs |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10234](https://issues.apache.org/jira/browse/HADOOP-10234) | "hadoop.cmd jar" does not propagate exit code. |  Major | scripts | Chris Nauroth | Chris Nauroth |
| [HADOOP-10223](https://issues.apache.org/jira/browse/HADOOP-10223) | MiniKdc#main() should close the FileReader it creates |  Minor | . | Ted Yu | Ted Yu |
| [HADOOP-10214](https://issues.apache.org/jira/browse/HADOOP-10214) | Fix multithreaded correctness warnings in ActiveStandbyElector |  Major | ha | Liang Xie | Liang Xie |
| [HADOOP-10212](https://issues.apache.org/jira/browse/HADOOP-10212) | Incorrect compile command in Native Library document |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10203](https://issues.apache.org/jira/browse/HADOOP-10203) | Connection leak in Jets3tNativeFileSystemStore#retrieveMetadata |  Major | fs/s3 | Andrei Savu | Andrei Savu |
| [HADOOP-10193](https://issues.apache.org/jira/browse/HADOOP-10193) | hadoop-auth's PseudoAuthenticationHandler can consume getInputStream |  Minor | security | Gregory Chanan | Gregory Chanan |
| [HADOOP-10178](https://issues.apache.org/jira/browse/HADOOP-10178) | Configuration deprecation always emit "deprecated" warnings when a new key is used |  Major | conf | shanyu zhao | shanyu zhao |
| [HADOOP-10175](https://issues.apache.org/jira/browse/HADOOP-10175) | Har files system authority should preserve userinfo |  Major | fs | Chuan Liu | Chuan Liu |
| [HADOOP-10171](https://issues.apache.org/jira/browse/HADOOP-10171) | TestRPC fails intermittently on jkd7 |  Major | . | Mit Desai | Mit Desai |
| [HADOOP-10168](https://issues.apache.org/jira/browse/HADOOP-10168) | fix javadoc of ReflectionUtils.copy |  Major | . | Thejas M Nair | Thejas M Nair |
| [HADOOP-10162](https://issues.apache.org/jira/browse/HADOOP-10162) | Fix symlink-related test failures in TestFileContextResolveAfs and TestStat in branch-2 |  Major | . | Mit Desai | Mit Desai |
| [HADOOP-10147](https://issues.apache.org/jira/browse/HADOOP-10147) | Upgrade to commons-logging 1.1.3 to avoid potential deadlock in MiniDFSCluster |  Minor | build | Eric Sirianni | Steve Loughran |
| [HADOOP-10146](https://issues.apache.org/jira/browse/HADOOP-10146) | Workaround JDK7 Process fd close bug |  Critical | util | Daryn Sharp | Daryn Sharp |
| [HADOOP-10142](https://issues.apache.org/jira/browse/HADOOP-10142) | Avoid groups lookup for unprivileged users such as "dr.who" |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-10135](https://issues.apache.org/jira/browse/HADOOP-10135) | writes to swift fs over partition size leave temp files and empty output file |  Major | fs | David Dobbins | David Dobbins |
| [HADOOP-10130](https://issues.apache.org/jira/browse/HADOOP-10130) | RawLocalFS::LocalFSFileInputStream.pread does not track FS::Statistics |  Minor | . | Binglin Chang | Binglin Chang |
| [HADOOP-10129](https://issues.apache.org/jira/browse/HADOOP-10129) | Distcp may succeed when it fails |  Critical | tools/distcp | Daryn Sharp | Daryn Sharp |
| [HADOOP-10127](https://issues.apache.org/jira/browse/HADOOP-10127) | Add ipc.client.connect.retry.interval to control the frequency of connection retries |  Major | ipc | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-10126](https://issues.apache.org/jira/browse/HADOOP-10126) | LightWeightGSet log message is confusing : "2.0% max memory = 2.0 GB" |  Minor | util | Vinayakumar B | Vinayakumar B |
| [HADOOP-10125](https://issues.apache.org/jira/browse/HADOOP-10125) | no need to process RPC request if the client connection has been dropped |  Major | ipc | Ming Ma | Ming Ma |
| [HADOOP-10112](https://issues.apache.org/jira/browse/HADOOP-10112) | har file listing  doesn't work with wild card |  Major | tools | Brandon Li | Brandon Li |
| [HADOOP-10110](https://issues.apache.org/jira/browse/HADOOP-10110) | hadoop-auth has a build break due to missing dependency |  Blocker | build | Chuan Liu | Chuan Liu |
| [HADOOP-10106](https://issues.apache.org/jira/browse/HADOOP-10106) | Incorrect thread name in RPC log messages |  Minor | . | Ming Ma | Ming Ma |
| [HADOOP-10100](https://issues.apache.org/jira/browse/HADOOP-10100) | MiniKDC shouldn't use apacheds-all artifact |  Major | . | Robert Kanter | Robert Kanter |
| [HADOOP-10094](https://issues.apache.org/jira/browse/HADOOP-10094) | NPE in GenericOptionsParser#preProcessForWindows() |  Trivial | util | Enis Soztutar | Enis Soztutar |
| [HADOOP-10093](https://issues.apache.org/jira/browse/HADOOP-10093) | hadoop-env.cmd sets HADOOP\_CLIENT\_OPTS with a max heap size that is too small. |  Major | conf | shanyu zhao | shanyu zhao |
| [HADOOP-10090](https://issues.apache.org/jira/browse/HADOOP-10090) | Jobtracker metrics not updated properly after execution of a mapreduce job |  Major | metrics | Ivan Mitic | Ivan Mitic |
| [HADOOP-10088](https://issues.apache.org/jira/browse/HADOOP-10088) | copy-nativedistlibs.sh needs to quote snappy lib dir |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-10087](https://issues.apache.org/jira/browse/HADOOP-10087) | UserGroupInformation.getGroupNames() fails to return primary group first when JniBasedUnixGroupsMappingWithFallback is used |  Major | security | Yu Gao | Colin Patrick McCabe |
| [HADOOP-10081](https://issues.apache.org/jira/browse/HADOOP-10081) | Client.setupIOStreams can leak socket resources on exception or error |  Critical | ipc | Jason Lowe | Tsuyoshi Ozawa |
| [HADOOP-10078](https://issues.apache.org/jira/browse/HADOOP-10078) | KerberosAuthenticator always does SPNEGO |  Minor | security | Robert Kanter | Robert Kanter |
| [HADOOP-10072](https://issues.apache.org/jira/browse/HADOOP-10072) | TestNfsExports#testMultiMatchers fails due to non-deterministic timing around cache expiry check. |  Trivial | nfs, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-10058](https://issues.apache.org/jira/browse/HADOOP-10058) | TestMetricsSystemImpl#testInitFirstVerifyStopInvokedImmediately fails on trunk |  Minor | metrics | Akira AJISAKA | Chen He |
| [HADOOP-10055](https://issues.apache.org/jira/browse/HADOOP-10055) | FileSystemShell.apt.vm doc has typo "numRepicas" |  Trivial | documentation | Eli Collins | Akira AJISAKA |
| [HADOOP-10040](https://issues.apache.org/jira/browse/HADOOP-10040) | hadoop.cmd in UNIX format and would not run by default on Windows |  Major | . | Yingda Chen | Chris Nauroth |
| [HADOOP-10039](https://issues.apache.org/jira/browse/HADOOP-10039) | Add Hive to the list of projects using AbstractDelegationTokenSecretManager |  Major | security | Suresh Srinivas | Haohui Mai |
| [HADOOP-10031](https://issues.apache.org/jira/browse/HADOOP-10031) | FsShell -get/copyToLocal/moveFromLocal should support Windows local path |  Major | fs | Chuan Liu | Chuan Liu |
| [HADOOP-10030](https://issues.apache.org/jira/browse/HADOOP-10030) | FsShell -put/copyFromLocal should support Windows local path |  Major | . | Chuan Liu | Chuan Liu |
| [HADOOP-10029](https://issues.apache.org/jira/browse/HADOOP-10029) | Specifying har file to MR job fails in secure cluster |  Major | fs | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-10028](https://issues.apache.org/jira/browse/HADOOP-10028) | Malformed ssl-server.xml.example |  Minor | . | Jing Zhao | Haohui Mai |
| [HADOOP-10006](https://issues.apache.org/jira/browse/HADOOP-10006) | Compilation failure in trunk for o.a.h.fs.swift.util.JSONUtil |  Blocker | fs, util | Junping Du | Junping Du |
| [HADOOP-9982](https://issues.apache.org/jira/browse/HADOOP-9982) | Fix dead links in hadoop site docs |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-9981](https://issues.apache.org/jira/browse/HADOOP-9981) | globStatus should minimize its listStatus and getFileStatus calls |  Critical | . | Kihwal Lee | Colin Patrick McCabe |
| [HADOOP-9964](https://issues.apache.org/jira/browse/HADOOP-9964) | O.A.H.U.ReflectionUtils.printThreadInfo() is not thread-safe which cause TestHttpServer pending 10 minutes or longer. |  Major | util | Junping Du | Junping Du |
| [HADOOP-9929](https://issues.apache.org/jira/browse/HADOOP-9929) | Insufficient permissions for a path reported as file not found |  Major | fs | Jason Lowe | Colin Patrick McCabe |
| [HADOOP-9908](https://issues.apache.org/jira/browse/HADOOP-9908) | Fix NPE when versioninfo properties file is missing |  Major | util | Todd Lipcon | Todd Lipcon |
| [HADOOP-9898](https://issues.apache.org/jira/browse/HADOOP-9898) | Set SO\_KEEPALIVE on all our sockets |  Minor | ipc, net | Todd Lipcon | Todd Lipcon |
| [HADOOP-9889](https://issues.apache.org/jira/browse/HADOOP-9889) | Refresh the Krb5 configuration when creating a new kdc in Hadoop-MiniKDC |  Major | . | Wei Yan | Wei Yan |
| [HADOOP-9887](https://issues.apache.org/jira/browse/HADOOP-9887) | globStatus does not correctly handle paths starting with a drive spec on Windows |  Major | fs | Chris Nauroth | Chuan Liu |
| [HADOOP-9875](https://issues.apache.org/jira/browse/HADOOP-9875) | TestDoAsEffectiveUser can fail on JDK 7 |  Minor | test | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-9871](https://issues.apache.org/jira/browse/HADOOP-9871) | Fix intermittent findbug warnings in DefaultMetricsSystem |  Minor | . | Luke Lu | Junping Du |
| [HADOOP-9865](https://issues.apache.org/jira/browse/HADOOP-9865) | FileContext.globStatus() has a regression with respect to relative path |  Major | . | Chuan Liu | Chuan Liu |
| [HADOOP-9847](https://issues.apache.org/jira/browse/HADOOP-9847) | TestGlobPath symlink tests fail to cleanup properly |  Minor | . | Andrew Wang | Colin Patrick McCabe |
| [HADOOP-9830](https://issues.apache.org/jira/browse/HADOOP-9830) | Typo at http://hadoop.apache.org/docs/current/ |  Trivial | documentation | Dmitry Lysnichenko | Kousuke Saruta |
| [HADOOP-9817](https://issues.apache.org/jira/browse/HADOOP-9817) | FileSystem#globStatus and FileContext#globStatus need to work with symlinks |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9791](https://issues.apache.org/jira/browse/HADOOP-9791) | Add a test case covering long paths for new FileUtil access check methods |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9787](https://issues.apache.org/jira/browse/HADOOP-9787) | ShutdownHelper util to shutdown threads and threadpools |  Major | util | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9703](https://issues.apache.org/jira/browse/HADOOP-9703) | org.apache.hadoop.ipc.Client leaks threads on stop. |  Minor | . | Mark Miller | Tsuyoshi Ozawa |
| [HADOOP-9660](https://issues.apache.org/jira/browse/HADOOP-9660) | [WINDOWS] Powershell / cmd parses -Dkey=value from command line as [-Dkey, value] which breaks GenericsOptionParser |  Major | scripts, util | Enis Soztutar | Enis Soztutar |
| [HADOOP-9635](https://issues.apache.org/jira/browse/HADOOP-9635) | Fix Potential Stack Overflow in DomainSocket.c |  Major | native | V. Karthik Kumar |  |
| [HADOOP-9582](https://issues.apache.org/jira/browse/HADOOP-9582) | Non-existent file to "hadoop fs -conf" doesn't throw error |  Major | conf | Ashwin Shankar | Ashwin Shankar |
| [HADOOP-9478](https://issues.apache.org/jira/browse/HADOOP-9478) | Fix race conditions during the initialization of Configuration related to deprecatedKeyMap |  Major | conf | Dongyong Wang | Colin Patrick McCabe |
| [HADOOP-9420](https://issues.apache.org/jira/browse/HADOOP-9420) | Add percentile or max metric for rpcQueueTime, processing time |  Major | ipc, metrics | Todd Lipcon | Liang Xie |
| [HADOOP-9350](https://issues.apache.org/jira/browse/HADOOP-9350) | Hadoop not building against Java7 on OSX |  Minor | build | Steve Loughran | Robert Kanter |
| [HADOOP-9114](https://issues.apache.org/jira/browse/HADOOP-9114) | After defined the dfs.checksum.type as the NULL, write file and hflush will through java.lang.ArrayIndexOutOfBoundsException |  Minor | . | liuyang | sathish |
| [HADOOP-9016](https://issues.apache.org/jira/browse/HADOOP-9016) | org.apache.hadoop.fs.HarFileSystem.HarFSDataInputStream.HarFsInputStream.skip(long) must never return negative value. |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-8753](https://issues.apache.org/jira/browse/HADOOP-8753) | LocalDirAllocator throws "ArithmeticException: / by zero" when there is no available space on configured local dir |  Minor | . | Nishan Shetty | Benoy Antony |
| [HADOOP-7344](https://issues.apache.org/jira/browse/HADOOP-7344) | globStatus doesn't grok groupings with a slash |  Major | fs | Daryn Sharp | Colin Patrick McCabe |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10207](https://issues.apache.org/jira/browse/HADOOP-10207) | TestUserGroupInformation#testLogin is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HADOOP-9866](https://issues.apache.org/jira/browse/HADOOP-9866) | convert hadoop-auth testcases requiring kerberos to use minikdc |  Major | test | Alejandro Abdelnur | Wei Yan |
| [HADOOP-9598](https://issues.apache.org/jira/browse/HADOOP-9598) | Improve code coverage of RMAdminCLI |  Major | . | Aleksey Gorshkov | Andrey Klochkov |
| [HADOOP-9291](https://issues.apache.org/jira/browse/HADOOP-9291) | enhance unit-test coverage of package o.a.h.metrics2 |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9254](https://issues.apache.org/jira/browse/HADOOP-9254) | Cover packages org.apache.hadoop.util.bloom, org.apache.hadoop.util.hash |  Major | . | Vadim Bondarev | Vadim Bondarev |
| [HADOOP-9225](https://issues.apache.org/jira/browse/HADOOP-9225) | Cover package org.apache.hadoop.compress.Snappy |  Major | . | Vadim Bondarev | Andrey Klochkov |
| [HADOOP-9199](https://issues.apache.org/jira/browse/HADOOP-9199) | Cover package org.apache.hadoop.io with unit tests |  Major | . | Vadim Bondarev | Andrey Klochkov |
| [HADOOP-9078](https://issues.apache.org/jira/browse/HADOOP-9078) | enhance unit-test coverage of class org.apache.hadoop.fs.FileContext |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9063](https://issues.apache.org/jira/browse/HADOOP-9063) | enhance unit-test coverage of class org.apache.hadoop.fs.FileUtil |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10109](https://issues.apache.org/jira/browse/HADOOP-10109) | Fix test failure in TestOfflineEditsViewer introduced by HADOOP-10052 |  Major | test | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-10107](https://issues.apache.org/jira/browse/HADOOP-10107) | Server.getNumOpenConnections may throw NPE |  Major | ipc | Tsz Wo Nicholas Sze | Kihwal Lee |
| [HADOOP-10103](https://issues.apache.org/jira/browse/HADOOP-10103) | update commons-lang to 2.6 |  Minor | build | Steve Loughran | Akira AJISAKA |
| [HADOOP-10102](https://issues.apache.org/jira/browse/HADOOP-10102) | update commons IO from 2.1 to 2.4 |  Minor | build | Steve Loughran | Akira AJISAKA |
| [HADOOP-10052](https://issues.apache.org/jira/browse/HADOOP-10052) | Temporarily disable client-side symlink resolution |  Major | fs | Andrew Wang | Andrew Wang |
| [HADOOP-9956](https://issues.apache.org/jira/browse/HADOOP-9956) | RPC listener inefficiently assigns connections to readers |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9955](https://issues.apache.org/jira/browse/HADOOP-9955) | RPC idle connection closing is extremely inefficient |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9748](https://issues.apache.org/jira/browse/HADOOP-9748) | Reduce blocking on UGI.ensureInitialized |  Critical | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9417](https://issues.apache.org/jira/browse/HADOOP-9417) | Support for symlink resolution in LocalFileSystem / RawLocalFileSystem |  Major | fs | Andrew Wang | Andrew Wang |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


