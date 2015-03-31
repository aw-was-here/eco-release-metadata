# Hadoop Changelog

## Release 2.5.0 - 2014-08-11

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10514](https://issues.apache.org/jira/browse/HADOOP-10514) | Common side changes to support  HDFS extended attributes (HDFS-2006) |  Major | fs | Uma Maheswara Rao G | Yi Liu |
| [HADOOP-10498](https://issues.apache.org/jira/browse/HADOOP-10498) | Add support for proxy server |  Major | util | Daryn Sharp | Daryn Sharp |
| [HADOOP-9704](https://issues.apache.org/jira/browse/HADOOP-9704) | Write metrics sink plugin for Hadoop/Graphite |  Major | . | Chu Tong |  |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10896](https://issues.apache.org/jira/browse/HADOOP-10896) | Update compatibility doc to capture visibility of un-annotated classes/ methods |  Blocker | documentation | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-10782](https://issues.apache.org/jira/browse/HADOOP-10782) | Typo in DataChecksum classs |  Trivial | . | Jingguo Yao | Jingguo Yao |
| [HADOOP-10767](https://issues.apache.org/jira/browse/HADOOP-10767) | Clean up unused code in Ls shell command. |  Trivial | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-10747](https://issues.apache.org/jira/browse/HADOOP-10747) | Support configurable retries on SASL connection failures in RPC client. |  Minor | ipc | Chris Nauroth | Chris Nauroth |
| [HADOOP-10691](https://issues.apache.org/jira/browse/HADOOP-10691) | Improve the readability of 'hadoop fs -help' |  Minor | tools | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-10688](https://issues.apache.org/jira/browse/HADOOP-10688) | Expose thread-level FileSystem StatisticsData |  Major | fs | Sandy Ryza | Sandy Ryza |
| [HADOOP-10674](https://issues.apache.org/jira/browse/HADOOP-10674) | Rewrite the PureJavaCrc32 loop for performance improvement |  Major | performance, util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-10666](https://issues.apache.org/jira/browse/HADOOP-10666) | Remove Copyright /d/d/d/d Apache Software Foundation from the source files license header |  Minor | documentation | Henry Saputra | Henry Saputra |
| [HADOOP-10665](https://issues.apache.org/jira/browse/HADOOP-10665) | Make Hadoop Authentication Handler loads case in-sensitive |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10618](https://issues.apache.org/jira/browse/HADOOP-10618) | Remove SingleNodeSetup.apt.vm |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10614](https://issues.apache.org/jira/browse/HADOOP-10614) | CBZip2InputStream is not threadsafe |  Major | . | Xiangrui Meng | Xiangrui Meng |
| [HADOOP-10572](https://issues.apache.org/jira/browse/HADOOP-10572) | Example NFS mount command must pass noacl as it isn't supported by the server yet |  Trivial | nfs | Harsh J | Harsh J |
| [HADOOP-10561](https://issues.apache.org/jira/browse/HADOOP-10561) | Copy command with preserve option should handle Xattrs |  Major | fs | Uma Maheswara Rao G | Yi Liu |
| [HADOOP-10557](https://issues.apache.org/jira/browse/HADOOP-10557) | FsShell -cp -pa option for preserving extended ACLs |  Major | fs | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10556](https://issues.apache.org/jira/browse/HADOOP-10556) | Add toLowerCase support to auth\_to\_local rules for service name |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10549](https://issues.apache.org/jira/browse/HADOOP-10549) | MAX\_SUBST and varPat should be final in Configuration.java |  Major | conf | Gera Shegalov | Gera Shegalov |
| [HADOOP-10539](https://issues.apache.org/jira/browse/HADOOP-10539) | Provide backward compatibility for ProxyUsers.authorize() call |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10535](https://issues.apache.org/jira/browse/HADOOP-10535) | Make the retry numbers in ActiveStandbyElector configurable |  Minor | . | Jing Zhao | Jing Zhao |
| [HADOOP-10458](https://issues.apache.org/jira/browse/HADOOP-10458) | swifts should throw FileAlreadyExistsException on attempt to overwrite file |  Minor | fs | Steve Loughran | Steve Loughran |
| [HADOOP-10454](https://issues.apache.org/jira/browse/HADOOP-10454) | Provide FileContext version of har file system |  Major | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-10451](https://issues.apache.org/jira/browse/HADOOP-10451) | Remove unused field and imports from SaslRpcServer |  Trivial | security | Benoy Antony | Benoy Antony |
| [HADOOP-10376](https://issues.apache.org/jira/browse/HADOOP-10376) | Refactor refresh*Protocols into a single generic refreshConfigProtocol |  Minor | . | Chris Li | Chris Li |
| [HADOOP-10345](https://issues.apache.org/jira/browse/HADOOP-10345) | Sanitize the the inputs (groups and hosts) for the proxyuser configuration |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10322](https://issues.apache.org/jira/browse/HADOOP-10322) | Add ability to read principal names from a keytab |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-9968](https://issues.apache.org/jira/browse/HADOOP-9968) | ProxyUsers does not work with NetGroups |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-9495](https://issues.apache.org/jira/browse/HADOOP-9495) | Define behaviour of Seekable.seek(), write tests, fix all hadoop implementations for compliance |  Major | fs | Steve Loughran | Steve Loughran |
| [HADOOP-9361](https://issues.apache.org/jira/browse/HADOOP-9361) | Strictly define the expected behavior of filesystem APIs and write tests to verify compliance |  Blocker | fs, test | Steve Loughran | Steve Loughran |
| [HADOOP-8943](https://issues.apache.org/jira/browse/HADOOP-8943) | Support multiple group mapping providers |  Major | security | Kai Zheng | Kai Zheng |
| [HADOOP-6350](https://issues.apache.org/jira/browse/HADOOP-6350) | Documenting Hadoop metrics |  Major | documentation, metrics | Hong Tang | Akira AJISAKA |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10910](https://issues.apache.org/jira/browse/HADOOP-10910) | Increase findbugs maxHeap size |  Blocker | . | Andrew Wang | Andrew Wang |
| [HADOOP-10890](https://issues.apache.org/jira/browse/HADOOP-10890) | TestDFVariations.testMount fails intermittently |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-10872](https://issues.apache.org/jira/browse/HADOOP-10872) | TestPathData fails intermittently with "Mkdirs failed to create d1" |  Major | fs | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-10801](https://issues.apache.org/jira/browse/HADOOP-10801) | Fix dead link in site.xml |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10746](https://issues.apache.org/jira/browse/HADOOP-10746) | TestSocketIOWithTimeout#testSocketIOWithTimeout fails on Power PC |  Major | test | Jinghui Wang | Jinghui Wang |
| [HADOOP-10739](https://issues.apache.org/jira/browse/HADOOP-10739) | Renaming a file into a directory containing the same filename results in a confusing I/O error |  Major | fs | Jason Lowe | Chang Li |
| [HADOOP-10737](https://issues.apache.org/jira/browse/HADOOP-10737) | S3n silent failure on copy, data loss on rename |  Major | fs/s3 | Gian Merlino | Steve Loughran |
| [HADOOP-10716](https://issues.apache.org/jira/browse/HADOOP-10716) | Cannot use more than 1 har filesystem |  Critical | conf, fs | Daryn Sharp | Rushabh S Shah |
| [HADOOP-10711](https://issues.apache.org/jira/browse/HADOOP-10711) | Cleanup some extra dependencies from hadoop-auth |  Major | security | Robert Kanter | Robert Kanter |
| [HADOOP-10710](https://issues.apache.org/jira/browse/HADOOP-10710) | hadoop.auth cookie is not properly constructed according to RFC2109 |  Major | security | Alejandro Abdelnur | Juan Yu |
| [HADOOP-10702](https://issues.apache.org/jira/browse/HADOOP-10702) | KerberosAuthenticationHandler does not log the principal names correctly |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10701](https://issues.apache.org/jira/browse/HADOOP-10701) | NFS should not validate the access premission only based on the user's primary group |  Major | nfs | Premchandra Preetham Kukillaya | Harsh J |
| [HADOOP-10699](https://issues.apache.org/jira/browse/HADOOP-10699) | Fix build native library on mac osx |  Major | . | Kirill A. Korinskiy | Binglin Chang |
| [HADOOP-10686](https://issues.apache.org/jira/browse/HADOOP-10686) | Writables are not always configured |  Major | . | Abraham Elmahrek | Abraham Elmahrek |
| [HADOOP-10683](https://issues.apache.org/jira/browse/HADOOP-10683) | Users authenticated with KERBEROS are recorded as being authenticated with SIMPLE |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10678](https://issues.apache.org/jira/browse/HADOOP-10678) | SecurityUtil has unnecessary synchronization on collection used for only tests |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10664](https://issues.apache.org/jira/browse/HADOOP-10664) | TestNetUtils.testNormalizeHostName fails |  Major | . | Chen He | Aaron T. Myers |
| [HADOOP-10660](https://issues.apache.org/jira/browse/HADOOP-10660) | GraphiteSink should implement Closeable |  Major | . | Ted Yu | Chen He |
| [HADOOP-10658](https://issues.apache.org/jira/browse/HADOOP-10658) | SSLFactory expects truststores being configured |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10657](https://issues.apache.org/jira/browse/HADOOP-10657) | Have RetryInvocationHandler log failover attempt at INFO level |  Major | . | Ming Ma | Ming Ma |
| [HADOOP-10656](https://issues.apache.org/jira/browse/HADOOP-10656) | The password keystore file is not picked by LDAP group mapping |  Major | security | Brandon Li | Brandon Li |
| [HADOOP-10647](https://issues.apache.org/jira/browse/HADOOP-10647) | String Format Exception in SwiftNativeFileSystemStore.java |  Minor | fs/swift | Gene Kim | Gene Kim |
| [HADOOP-10639](https://issues.apache.org/jira/browse/HADOOP-10639) | FileBasedKeyStoresFactory initialization is not using default for SSL\_REQUIRE\_CLIENT\_CERT\_KEY |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-10638](https://issues.apache.org/jira/browse/HADOOP-10638) | Updating hadoop-daemon.sh to work as expected when nfs is started as a privileged user. |  Major | nfs | Manikandan Narayanaswamy | Manikandan Narayanaswamy |
| [HADOOP-10630](https://issues.apache.org/jira/browse/HADOOP-10630) | Possible race condition in RetryInvocationHandler |  Major | . | Jing Zhao | Jing Zhao |
| [HADOOP-10625](https://issues.apache.org/jira/browse/HADOOP-10625) | Configuration: names should be trimmed when putting/getting to properties |  Major | conf | Wangda Tan | Wangda Tan |
| [HADOOP-10622](https://issues.apache.org/jira/browse/HADOOP-10622) | Shell.runCommand can deadlock |  Critical | . | Jason Lowe | Gera Shegalov |
| [HADOOP-10609](https://issues.apache.org/jira/browse/HADOOP-10609) | .gitignore should ignore .orig and .rej files |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-10602](https://issues.apache.org/jira/browse/HADOOP-10602) | Documentation has broken "Go Back" hyperlinks. |  Trivial | documentation | Chris Nauroth | Akira AJISAKA |
| [HADOOP-10590](https://issues.apache.org/jira/browse/HADOOP-10590) | ServiceAuthorizationManager  is not threadsafe |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10589](https://issues.apache.org/jira/browse/HADOOP-10589) | NativeS3FileSystem throw NullPointerException when the file is empty |  Major | fs/s3 | shuisheng wei | Steve Loughran |
| [HADOOP-10588](https://issues.apache.org/jira/browse/HADOOP-10588) | Workaround for jetty6 acceptor startup issue |  Major | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-10585](https://issues.apache.org/jira/browse/HADOOP-10585) | Retry polices ignore interrupted exceptions |  Critical | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-10581](https://issues.apache.org/jira/browse/HADOOP-10581) | TestUserGroupInformation#testGetServerSideGroups fails because groups stored in Set and ArrayList are compared |  Major | . | Mit Desai | Mit Desai |
| [HADOOP-10568](https://issues.apache.org/jira/browse/HADOOP-10568) | Add s3 server-side encryption |  Major | fs/s3 | David S. Wang | David S. Wang |
| [HADOOP-10547](https://issues.apache.org/jira/browse/HADOOP-10547) | Give SaslPropertiesResolver.getDefaultProperties() public scope |  Major | security | Jason Dere | Benoy Antony |
| [HADOOP-10543](https://issues.apache.org/jira/browse/HADOOP-10543) | RemoteException's unwrapRemoteException method failed for PathIOException |  Major | . | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-10541](https://issues.apache.org/jira/browse/HADOOP-10541) | InputStream in MiniKdc#initKDCServer for minikdc.ldiff is not closed |  Minor | test | Ted Yu | Swarnim Kulkarni |
| [HADOOP-10540](https://issues.apache.org/jira/browse/HADOOP-10540) | Datanode upgrade in Windows fails with hardlink error. |  Major | tools | Huan Huang | Arpit Agarwal |
| [HADOOP-10533](https://issues.apache.org/jira/browse/HADOOP-10533) | S3 input stream NPEs in MapReduce job |  Minor | fs/s3 | Benjamin Kim | Steve Loughran |
| [HADOOP-10531](https://issues.apache.org/jira/browse/HADOOP-10531) | hadoop-config.sh - bug in --hosts argument |  Major | . | Sebastien Barrier | Sebastien Barrier |
| [HADOOP-10526](https://issues.apache.org/jira/browse/HADOOP-10526) | Chance for Stream leakage in CompressorStream |  Minor | . | SreeHari | Rushabh S Shah |
| [HADOOP-10517](https://issues.apache.org/jira/browse/HADOOP-10517) | InputStream is not closed in two methods of JarFinder |  Minor | test, util | Ted Yu | Ted Yu |
| [HADOOP-10508](https://issues.apache.org/jira/browse/HADOOP-10508) | RefreshCallQueue fails when authorization is enabled |  Major | ipc | Chris Li | Chris Li |
| [HADOOP-10500](https://issues.apache.org/jira/browse/HADOOP-10500) | TestDoAsEffectiveUser fails on JDK7 due to failure to reset proxy user configuration. |  Trivial | security, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-10496](https://issues.apache.org/jira/browse/HADOOP-10496) | Metrics system FileSink can leak file descriptor. |  Major | metrics | Chris Nauroth | Chris Nauroth |
| [HADOOP-10495](https://issues.apache.org/jira/browse/HADOOP-10495) | TestFileUtil fails on Windows due to bad permission assertions. |  Trivial | fs, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-10489](https://issues.apache.org/jira/browse/HADOOP-10489) | UserGroupInformation#getTokens and UserGroupInformation#addToken can lead to ConcurrentModificationException |  Major | . | Jing Zhao | Robert Kanter |
| [HADOOP-10475](https://issues.apache.org/jira/browse/HADOOP-10475) | ConcurrentModificationException in AbstractDelegationTokenSelector.selectToken() |  Major | security | Arpit Gupta | Jing Zhao |
| [HADOOP-10468](https://issues.apache.org/jira/browse/HADOOP-10468) | TestMetricsSystemImpl.testMultiThreadedPublish fails intermediately |  Blocker | . | Haohui Mai | Akira AJISAKA |
| [HADOOP-10462](https://issues.apache.org/jira/browse/HADOOP-10462) | DF#getFilesystem is not parsing the command output |  Major | . | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10459](https://issues.apache.org/jira/browse/HADOOP-10459) | distcp V2 doesn't preserve root dir's attributes when -p is specified |  Major | tools/distcp | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-10419](https://issues.apache.org/jira/browse/HADOOP-10419) | BufferedFSInputStream NPEs on getPos() on a closed stream |  Minor | fs | Steve Loughran | Steve Loughran |
| [HADOOP-10418](https://issues.apache.org/jira/browse/HADOOP-10418) | SaslRpcClient should not assume that remote principals are in the default\_realm |  Major | security | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-10414](https://issues.apache.org/jira/browse/HADOOP-10414) | Incorrect property name for RefreshUserMappingProtocol in hadoop-policy.xml |  Major | conf | Joey Echeverria | Joey Echeverria |
| [HADOOP-10401](https://issues.apache.org/jira/browse/HADOOP-10401) | ShellBasedUnixGroupsMapping#getGroups does not always return primary group first |  Major | util | Colin Patrick McCabe | Akira AJISAKA |
| [HADOOP-10378](https://issues.apache.org/jira/browse/HADOOP-10378) | Typo in help printed by hdfs dfs -help |  Major | . | Mit Desai | Mit Desai |
| [HADOOP-10350](https://issues.apache.org/jira/browse/HADOOP-10350) | BUILDING.txt should mention openssl dependency required for hadoop-pipes |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-10342](https://issues.apache.org/jira/browse/HADOOP-10342) | Extend UserGroupInformation to return a UGI given a preauthenticated kerberos Subject |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-10332](https://issues.apache.org/jira/browse/HADOOP-10332) | HttpServer's jetty audit log always logs 200 OK |  Major | . | Daryn Sharp | Jonathan Eagles |
| [HADOOP-10312](https://issues.apache.org/jira/browse/HADOOP-10312) | Shell.ExitCodeException to have more useful toString |  Minor | util | Steve Loughran | Steve Loughran |
| [HADOOP-10251](https://issues.apache.org/jira/browse/HADOOP-10251) | Both NameNodes could be in STANDBY State if SNN network is unstable |  Critical | ha | Vinayakumar B | Vinayakumar B |
| [HADOOP-10158](https://issues.apache.org/jira/browse/HADOOP-10158) | SPNEGO should work with multiple interfaces/SPNs. |  Critical | . | Kihwal Lee | Daryn Sharp |
| [HADOOP-9919](https://issues.apache.org/jira/browse/HADOOP-9919) | Update hadoop-metrics2.properties examples to Yarn |  Major | conf | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-9705](https://issues.apache.org/jira/browse/HADOOP-9705) | FsShell cp -p does not preserve directory attibutes |  Major | fs | Stephen Chu | Akira AJISAKA |
| [HADOOP-9559](https://issues.apache.org/jira/browse/HADOOP-9559) | When metrics system is restarted MBean names get incorrectly flagged as dupes |  Major | metrics | Mostafa Elhemali | Mike Liddell |
| [HADOOP-9555](https://issues.apache.org/jira/browse/HADOOP-9555) | HA functionality that uses ZooKeeper may experience inadvertent TCP RST and miss session expiration event due to bug in client connection management |  Major | ha | Chris Nauroth | Chris Nauroth |
| [HADOOP-9099](https://issues.apache.org/jira/browse/HADOOP-9099) | NetUtils.normalizeHostName fails on domains where UnknownHost resolves to an IP address |  Minor | test | Ivan Mitic | Ivan Mitic |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10754](https://issues.apache.org/jira/browse/HADOOP-10754) | Reenable several HA ZooKeeper-related tests on Windows. |  Trivial | ha, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-3679](https://issues.apache.org/jira/browse/HADOOP-3679) | calls to junit Assert::assertEquals invert arguments, causing misleading error messages, other minor improvements. |  Minor | test | Chris Douglas | jay vyas |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10894](https://issues.apache.org/jira/browse/HADOOP-10894) | Fix dead link in ToolRunner documentation |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10864](https://issues.apache.org/jira/browse/HADOOP-10864) | Tool documentenation is broken |  Minor | documentation | Allen Wittenauer | Akira AJISAKA |
| [HADOOP-10659](https://issues.apache.org/jira/browse/HADOOP-10659) | Refactor AccessControlList to reuse utility functions and to improve performance |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10652](https://issues.apache.org/jira/browse/HADOOP-10652) | Refactor Proxyusers to use AccessControlList |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10649](https://issues.apache.org/jira/browse/HADOOP-10649) | Allow overriding the default ACL for service authorization |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10566](https://issues.apache.org/jira/browse/HADOOP-10566) | Refactor proxyservers out of ProxyUsers |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10565](https://issues.apache.org/jira/browse/HADOOP-10565) | Support IP ranges (CIDR) in  proxyuser.hosts |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10503](https://issues.apache.org/jira/browse/HADOOP-10503) | Move junit up to v 4.11 |  Minor | build | Steve Loughran | Chris Nauroth |
| [HADOOP-10499](https://issues.apache.org/jira/browse/HADOOP-10499) | Remove unused parameter from ProxyUsers.authorize() |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10479](https://issues.apache.org/jira/browse/HADOOP-10479) | Fix new findbugs warnings in hadoop-minikdc |  Major | . | Haohui Mai | Swarnim Kulkarni |
| [HADOOP-10471](https://issues.apache.org/jira/browse/HADOOP-10471) | Reduce the visibility of constants in ProxyUsers |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10467](https://issues.apache.org/jira/browse/HADOOP-10467) | Enable proxyuser specification to support list of users in addition to list of groups. |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10448](https://issues.apache.org/jira/browse/HADOOP-10448) | Support pluggable mechanism to specify proxy user settings |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10439](https://issues.apache.org/jira/browse/HADOOP-10439) | Fix compilation error in branch-2 after HADOOP-10426 |  Major | build | Haohui Mai | Haohui Mai |
| [HADOOP-10426](https://issues.apache.org/jira/browse/HADOOP-10426) | CreateOpts.getOpt(..) should declare with generic type argument |  Minor | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-10279](https://issues.apache.org/jira/browse/HADOOP-10279) | Create multiplexer, a requirement for the fair queue |  Major | . | Chris Li | Chris Li |
| [HADOOP-10104](https://issues.apache.org/jira/browse/HADOOP-10104) | Update jackson to 1.9.13 |  Minor | build | Steve Loughran | Akira AJISAKA |
| [HADOOP-9712](https://issues.apache.org/jira/browse/HADOOP-9712) | Write contract tests for FTP filesystem, fix places where it breaks |  Minor | fs/s3 | Steve Loughran |  |
| [HADOOP-9711](https://issues.apache.org/jira/browse/HADOOP-9711) | Write contract tests for S3Native; fix places where it breaks |  Minor | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-9371](https://issues.apache.org/jira/browse/HADOOP-9371) | Define Semantics of FileSystem more rigorously |  Major | fs | Steve Loughran | Steve Loughran |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-10821](https://issues.apache.org/jira/browse/HADOOP-10821) | Prepare the release notes for Hadoop 2.5.0 |  Blocker | . | Akira AJISAKA | Andrew Wang |
| [HADOOP-10715](https://issues.apache.org/jira/browse/HADOOP-10715) | Remove public GraphiteSink#setWriter() |  Minor | . | Ted Yu |  |


