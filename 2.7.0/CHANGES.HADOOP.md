# Hadoop Changelog

## Release 2.7.0 - 2015-03-04

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11498](https://issues.apache.org/jira/browse/HADOOP-11498) | Bump the version of HTrace to 3.1.0-incubating |  Major |  | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11385](https://issues.apache.org/jira/browse/HADOOP-11385) | Prevent cross site scripting attack on JMXJSONServlet |  Critical |  | Haohui Mai | Haohui Mai |
| [HADOOP-11311](https://issues.apache.org/jira/browse/HADOOP-11311) | Restrict uppercase key names from being created with JCEKS |  Major | (security) | Andrew Wang | Andrew Wang |
| [HADOOP-10530](https://issues.apache.org/jira/browse/HADOOP-10530) | Make hadoop trunk build on Java7+ only |  Blocker | (build) | Steve Loughran | Steve Loughran |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11510](https://issues.apache.org/jira/browse/HADOOP-11510) | Expose truncate API via FileContext |  Major |  | Yi Liu | Yi Liu |
| [HADOOP-11490](https://issues.apache.org/jira/browse/HADOOP-11490) | Expose truncate API via FileSystem and shell command |  Major | (fs) | Konstantin Shvachko | Milan Desai |
| [HADOOP-11341](https://issues.apache.org/jira/browse/HADOOP-11341) | KMS support for whitelist key ACLs |  Major | (kms , security) | Arun Suresh | Arun Suresh |
| [HADOOP-10728](https://issues.apache.org/jira/browse/HADOOP-10728) | Metrics system for Windows Azure Storage Filesystem |  Major | (tools) | Mike Liddell | Mike Liddell |
| [HADOOP-9629](https://issues.apache.org/jira/browse/HADOOP-9629) | Support Windows Azure Storage - Blob as a file system in Hadoop |  Major | (tools) | Mostafa Elhemali | Chris Nauroth |
| [HADOOP-8989](https://issues.apache.org/jira/browse/HADOOP-8989) | hadoop fs -find feature |  Major |  | Marco Nicosia | Jonathan Allen |
| [HADOOP-7984](https://issues.apache.org/jira/browse/HADOOP-7984) | Add hadoop --loglevel option to change log level |  Minor | (scripts) | Eli Collins | Akira AJISAKA |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11658](https://issues.apache.org/jira/browse/HADOOP-11658) | Externalize io.compression.codecs property |  Minor |  | Kai Zheng | Kai Zheng |
| [HADOOP-11632](https://issues.apache.org/jira/browse/HADOOP-11632) | Cleanup Find.java to remove SupressWarnings annotations |  Minor |  | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11620](https://issues.apache.org/jira/browse/HADOOP-11620) | Add support for load balancing across a group of KMS for HA |  Major | (kms) | Arun Suresh | Arun Suresh |
| [HADOOP-11607](https://issues.apache.org/jira/browse/HADOOP-11607) | Reduce log spew in S3AFileSystem |  Trivial | (fs/s3) | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-11599](https://issues.apache.org/jira/browse/HADOOP-11599) | Client#getTimeout should use IPC_CLIENT_PING_DEFAULT when IPC_CLIENT_PING_KEY is not configured. |  Minor | (ipc) | zhihai xu | zhihai xu |
| [HADOOP-11589](https://issues.apache.org/jira/browse/HADOOP-11589) | NetUtils.createSocketAddr should trim the input URI |  Minor |  | Akira AJISAKA | Rakesh R |
| [HADOOP-11586](https://issues.apache.org/jira/browse/HADOOP-11586) | Update use of Iterator to Iterable in AbstractMetricsContext.java |  Minor | (metrics) | Ray Chiang | Ray Chiang |
| [HADOOP-11579](https://issues.apache.org/jira/browse/HADOOP-11579) | Documentation for truncate |  Major | (documentation) | Steve Loughran | Konstantin Shvachko |
| [HADOOP-11569](https://issues.apache.org/jira/browse/HADOOP-11569) | Provide Merge API for MapFile to merge multiple similar MapFiles to one MapFile |  Major |  | Vinayakumar B | Vinayakumar B |
| [HADOOP-11544](https://issues.apache.org/jira/browse/HADOOP-11544) | Remove unused configuration keys for tracing |  Trivial |  | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11543](https://issues.apache.org/jira/browse/HADOOP-11543) | Improve help message for hadoop/yarn command |  Trivial | (scripts) | Jagadesh Kiran N | Brahma Reddy Battula |
| [HADOOP-11520](https://issues.apache.org/jira/browse/HADOOP-11520) | Clean incomplete multi-part uploads in S3A tests |  Minor | (fs/s3) | Thomas Demoor | Thomas Demoor |
| [HADOOP-11506](https://issues.apache.org/jira/browse/HADOOP-11506) | Configuration variable expansion regex expensive for long values |  Major | (conf) | Dmitriy V. Ryaboy | Gera Shegalov |
| [HADOOP-11495](https://issues.apache.org/jira/browse/HADOOP-11495) | Convert site documentation from apt to markdown |  Major | (documentation) | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11483](https://issues.apache.org/jira/browse/HADOOP-11483) | HardLink.java should use the jdk7 createLink method |  Major |  | Colin Patrick McCabe | Akira AJISAKA |
| [HADOOP-11481](https://issues.apache.org/jira/browse/HADOOP-11481) | ClassCastException while using a key created by keytool to create encryption zone.  |  Minor |  | Yi Yao | Charles Lamb |
| [HADOOP-11464](https://issues.apache.org/jira/browse/HADOOP-11464) | Reinstate support for launching Hadoop processes on Windows using Cygwin. |  Major | (bin) | Chris Nauroth | Chris Nauroth |
| [HADOOP-11455](https://issues.apache.org/jira/browse/HADOOP-11455) | KMS and Credential CLI should request confirmation for deletion by default |  Minor | (security) | Charles Lamb | Charles Lamb |
| [HADOOP-11448](https://issues.apache.org/jira/browse/HADOOP-11448) | Fix findbugs warnings in FileBasedIPList |  Minor |  | Akira AJISAKA | Tsuyoshi Ozawa |
| [HADOOP-11442](https://issues.apache.org/jira/browse/HADOOP-11442) | hadoop-azure: Create test jar |  Major | (tools) | shashank | shashank |
| [HADOOP-11441](https://issues.apache.org/jira/browse/HADOOP-11441) | Hadoop-azure: Change few methods scope to public |  Minor | (tools) | shashank | shashank |
| [HADOOP-11440](https://issues.apache.org/jira/browse/HADOOP-11440) | Use "test.build.data" instead of "build.test.dir" for testing in ClientBaseWithFixes |  Minor |  | Akira AJISAKA | Kengo Seki |
| [HADOOP-11430](https://issues.apache.org/jira/browse/HADOOP-11430) | Add GenericTestUtils#disableLog, GenericTestUtils#setLogLevel |  Major |  | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-11427](https://issues.apache.org/jira/browse/HADOOP-11427) | ChunkedArrayList: fix removal via iterator and implement get |  Major |  | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-11422](https://issues.apache.org/jira/browse/HADOOP-11422) | Check CryptoCodec is AES-CTR for Crypto input/output stream |  Minor |  | Yi Liu | Yi Liu |
| [HADOOP-11421](https://issues.apache.org/jira/browse/HADOOP-11421) | Add IOUtils#listDirectory |  Major |  | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-11419](https://issues.apache.org/jira/browse/HADOOP-11419) | improve hadoop-maven-plugins |  Minor | (build) | Herv&#233; Boutemy | Herv&#233; Boutemy |
| [HADOOP-11416](https://issues.apache.org/jira/browse/HADOOP-11416) | Move ChunkedArrayList into hadoop-common |  Major |  | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-11410](https://issues.apache.org/jira/browse/HADOOP-11410) | make the rpath of libhadoop.so configurable  |  Major |  | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-11399](https://issues.apache.org/jira/browse/HADOOP-11399) | Java Configuration file and .xml files should be automatically cross-compared |  Minor |  | Ray Chiang | Ray Chiang |
| [HADOOP-11396](https://issues.apache.org/jira/browse/HADOOP-11396) | Provide navigation in the site documentation linking to the Hadoop Compatible File Systems. |  Major | (documentation) | Chris Nauroth | Chris Nauroth |
| [HADOOP-11395](https://issues.apache.org/jira/browse/HADOOP-11395) | Add site documentation for Azure Storage FileSystem integration. |  Major | (documentation) | Chris Nauroth | Chris Nauroth |
| [HADOOP-11390](https://issues.apache.org/jira/browse/HADOOP-11390) | Metrics 2 ganglia provider to include hostname in unresolved address problems |  Minor | (metrics) | Steve Loughran | Varun Saxena |
| [HADOOP-11323](https://issues.apache.org/jira/browse/HADOOP-11323) | WritableComparator#compare keeps reference to byte array |  Major | (performance) | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [HADOOP-11313](https://issues.apache.org/jira/browse/HADOOP-11313) | Adding a document about NativeLibraryChecker |  Major | (documentation) | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-11301](https://issues.apache.org/jira/browse/HADOOP-11301) | [optionally] update jmx cache to drop old metrics |  Major |  | Maysam Yabandeh | Maysam Yabandeh |
| [HADOOP-11291](https://issues.apache.org/jira/browse/HADOOP-11291) | Log the cause of SASL connection failures |  Minor | (security) | Stephen Chu | Stephen Chu |
| [HADOOP-11261](https://issues.apache.org/jira/browse/HADOOP-11261) | Set custom endpoint for S3A |  Major | (fs/s3) | Thomas Demoor | Thomas Demoor |
| [HADOOP-11257](https://issues.apache.org/jira/browse/HADOOP-11257) | Update "hadoop jar" documentation to warn against using it for launching yarn jars |  Major |  | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11231](https://issues.apache.org/jira/browse/HADOOP-11231) | Remove dead code in ServletUtil |  Minor |  | Haohui Mai | Li Lu |
| [HADOOP-11188](https://issues.apache.org/jira/browse/HADOOP-11188) | hadoop-azure: automatically expand page blobs when they become full |  Major | (fs) | Eric Hanson | Eric Hanson |
| [HADOOP-11173](https://issues.apache.org/jira/browse/HADOOP-11173) | Improve error messages for some KeyShell commands |  Minor |  | Andrew Wang | Andrew Wang |
| [HADOOP-11172](https://issues.apache.org/jira/browse/HADOOP-11172) | Improve error message in Shell#runCommand on OutOfMemoryError |  Major |  | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11171](https://issues.apache.org/jira/browse/HADOOP-11171) | Enable using a proxy server to connect to S3a. |  Major | (fs/s3) | Thomas Demoor | Thomas Demoor |
| [HADOOP-11045](https://issues.apache.org/jira/browse/HADOOP-11045) | Introducing a tool to detect flaky tests of hadoop jenkins test job |  Major | (build , tools) | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11032](https://issues.apache.org/jira/browse/HADOOP-11032) | Replace use of Guava's Stopwatch with Hadoop's StopWatch |  Major |  | Gary Steelman | Tsuyoshi Ozawa |
| [HADOOP-10987](https://issues.apache.org/jira/browse/HADOOP-10987) | Provide an iterator-based listing API for FileSystem |  Major |  | Kihwal Lee | Kihwal Lee |
| [HADOOP-10976](https://issues.apache.org/jira/browse/HADOOP-10976) | moving the source code of hadoop-tools docs to the directory under hadoop-tools |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-10847](https://issues.apache.org/jira/browse/HADOOP-10847) | Remove the usage of sun.security.x509.* in testing code |  Minor | (security) | Kai Zheng | pascal oliva |
| [HADOOP-10809](https://issues.apache.org/jira/browse/HADOOP-10809) | hadoop-azure: page blob support |  Major | (tools) | Mike Liddell | Eric Hanson |
| [HADOOP-10786](https://issues.apache.org/jira/browse/HADOOP-10786) | Fix UGI#reloginFromKeytab on Java 8 |  Major | (security) | Tobi Vollebregt | Stephen Chu |
| [HADOOP-10626](https://issues.apache.org/jira/browse/HADOOP-10626) | Limit Returning Attributes for LDAP search |  Major | (security) | Jason Hubbard | Jason Hubbard |
| [HADOOP-10563](https://issues.apache.org/jira/browse/HADOOP-10563) | Remove the dependency of jsp in trunk |  Major |  | Haohui Mai | Haohui Mai |
| [HADOOP-10525](https://issues.apache.org/jira/browse/HADOOP-10525) | Remove DRFA.MaxBackupIndex config from log4j.properties |  Minor |  | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-10140](https://issues.apache.org/jira/browse/HADOOP-10140) | Specification of HADOOP_CONF_DIR via the environment in hadoop_config.cmd |  Minor | (scripts) | Ian Jackson | Kiran Kumar M R |
| [HADOOP-9992](https://issues.apache.org/jira/browse/HADOOP-9992) | Modify the NN loadGenerator to optionally run as a MapReduce job |  Major | (test) | Akshay Radia | Akshay Radia |
| [HADOOP-9869](https://issues.apache.org/jira/browse/HADOOP-9869) |  Configuration.getSocketAddr()/getEnum() should use getTrimmed() |  Minor | (conf) | Steve Loughran | Tsuyoshi Ozawa |
| [HADOOP-8757](https://issues.apache.org/jira/browse/HADOOP-8757) | Metrics should disallow names with invalid characters |  Minor | (metrics) | Todd Lipcon | Ray Chiang |
| [HADOOP-4297](https://issues.apache.org/jira/browse/HADOOP-4297) | Enable Java assertions when running tests |  Major | (build) | Yoram Kulbak | Tsz Wo Nicholas Sze |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11666](https://issues.apache.org/jira/browse/HADOOP-11666) | Revert the format change of du output introduced by HADOOP-6857 |  Major |  | Akira AJISAKA | Byron Wong |
| [HADOOP-11634](https://issues.apache.org/jira/browse/HADOOP-11634) | Description of webhdfs' principal/keytab should switch places each other |  Major | (documentation) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11629](https://issues.apache.org/jira/browse/HADOOP-11629) | WASB filesystem should not start BandwidthGaugeUpdater if fs.azure.skip.metrics set to true |  Major | (tools) | shanyu zhao | shanyu zhao |
| [HADOOP-11619](https://issues.apache.org/jira/browse/HADOOP-11619) | FTPFileSystem should override getDefaultPort |  Major | (fs) | Gera Shegalov | Brahma Reddy Battula |
| [HADOOP-11615](https://issues.apache.org/jira/browse/HADOOP-11615) | Update ServiceLevelAuth.md for YARN |  Minor | (documentation) | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11605](https://issues.apache.org/jira/browse/HADOOP-11605) | FilterFileSystem#create with ChecksumOpt should propagate it to wrapped FS |  Minor | (fs) | Gera Shegalov | Gera Shegalov |
| [HADOOP-11604](https://issues.apache.org/jira/browse/HADOOP-11604) | Prevent ConcurrentModificationException while closing domain sockets during shutdown of DomainSocketWatcher thread. |  Critical | (net) | Liang Xie | Chris Nauroth |
| [HADOOP-11595](https://issues.apache.org/jira/browse/HADOOP-11595) | Add default implementation for AbstractFileSystem#truncate |  Major | (fs) | Yi Liu | Yi Liu |
| [HADOOP-11587](https://issues.apache.org/jira/browse/HADOOP-11587) | TestMapFile#testMainMethodMapFile creates test files in hadoop-common project root |  Trivial | (test) | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-11549](https://issues.apache.org/jira/browse/HADOOP-11549) | flaky test detection tool failed to handle special control characters in test result |  Major | (tools) | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11548](https://issues.apache.org/jira/browse/HADOOP-11548) | checknative should display a nicer error message when openssl support is not compiled in |  Major | (build , native) | Colin Patrick McCabe | Anu Engineer |
| [HADOOP-11547](https://issues.apache.org/jira/browse/HADOOP-11547) | hadoop-common native compilation fails on Windows due to missing support for __attribute__ declaration. |  Major | (native) | Chris Nauroth | Chris Nauroth |
| [HADOOP-11546](https://issues.apache.org/jira/browse/HADOOP-11546) | Checkstyle failing: Unable to instantiate DoubleCheckedLockingCheck |  Major | (build) | Steve Loughran | Tsuyoshi Ozawa |
| [HADOOP-11545](https://issues.apache.org/jira/browse/HADOOP-11545) | ArrayIndexOutOfBoundsException is thrown with "hadoop credential list -provider" |  Minor | (security) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11529](https://issues.apache.org/jira/browse/HADOOP-11529) | Fix findbugs warnings in hadoop-archives |  Minor | (tools) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11526](https://issues.apache.org/jira/browse/HADOOP-11526) | Memory leak in Bzip2Compressor and Bzip2Decompressor |  Major | (io , native) | Ian Rogers | Anu Engineer |
| [HADOOP-11523](https://issues.apache.org/jira/browse/HADOOP-11523) | StorageException complaining " no lease ID" when updating FolderLastModifiedTime in WASB |  Major | (tools) | Duo Xu | Duo Xu |
| [HADOOP-11512](https://issues.apache.org/jira/browse/HADOOP-11512) | Use getTrimmedStrings when reading serialization keys |  Minor | (io) | Harsh J | Ryan P |
| [HADOOP-11509](https://issues.apache.org/jira/browse/HADOOP-11509) | change parsing sequence in GenericOptionsParser to parse -D parameters first |  Major |  | Xuan Gong | Xuan Gong |
| [HADOOP-11507](https://issues.apache.org/jira/browse/HADOOP-11507) | Hadoop RPC Authentication problem with different user locale |  Minor |  | Talat UYARER | Talat UYARER |
| [HADOOP-11500](https://issues.apache.org/jira/browse/HADOOP-11500) | InputStream is left unclosed in ApplicationClassLoader |  Major |  | Ted Yu | Ted Yu |
| [HADOOP-11499](https://issues.apache.org/jira/browse/HADOOP-11499) | Check of executorThreadsStarted in ValueQueue#submitRefillTask() evades lock acquisition |  Minor |  | Ted Yu | Ted Yu |
| [HADOOP-11497](https://issues.apache.org/jira/browse/HADOOP-11497) | Fix typo in ClusterSetup.html#Hadoop_Startup |  Major | (documentation) | Christian Winkler | Christian Winkler |
| [HADOOP-11494](https://issues.apache.org/jira/browse/HADOOP-11494) | Lock acquisition on WrappedInputStream#unwrappedRpcBuffer may race with another thread |  Minor |  | Ted Yu | Ted Yu |
| [HADOOP-11493](https://issues.apache.org/jira/browse/HADOOP-11493) | Fix some typos in kms-acls.xml description |  Trivial | (kms) | Charles Lamb | Charles Lamb |
| [HADOOP-11488](https://issues.apache.org/jira/browse/HADOOP-11488) | Difference in default connection timeout for S3A FS |  Minor | (fs/s3) | Harsh J | Daisuke Kobayashi |
| [HADOOP-11482](https://issues.apache.org/jira/browse/HADOOP-11482) | Use correct UGI when KMSClientProvider is called by a proxy user |  Major |  | Arun Suresh | Arun Suresh |
| [HADOOP-11480](https://issues.apache.org/jira/browse/HADOOP-11480) | Typo in hadoop-aws/index.md uses wrong scheme for test.fs.s3.name |  Minor | (documentation) | Ted Yu | Ted Yu |
| [HADOOP-11470](https://issues.apache.org/jira/browse/HADOOP-11470) | Remove some uses of obsolete guava APIs from the hadoop codebase |  Major |  | Sangjin Lee | Sangjin Lee |
| [HADOOP-11469](https://issues.apache.org/jira/browse/HADOOP-11469) | KMS should skip default.key.acl and whitelist.key.acl when loading key acl |  Minor | (kms) | Dian Fu | Dian Fu |
| [HADOOP-11467](https://issues.apache.org/jira/browse/HADOOP-11467) | KerberosAuthenticator can connect to a non-secure cluster |  Critical | (security) | Robert Kanter | Yongjun Zhang |
| [HADOOP-11462](https://issues.apache.org/jira/browse/HADOOP-11462) | TestSocketIOWithTimeout needs change for PowerPC platform |  Major | (test) | Ayappan | Ayappan |
| [HADOOP-11459](https://issues.apache.org/jira/browse/HADOOP-11459) | Fix recent findbugs in ActiveStandbyElector, NetUtils and ShellBasedIdMapping |  Minor |  | Vinayakumar B | Vinayakumar B |
| [HADOOP-11449](https://issues.apache.org/jira/browse/HADOOP-11449) | [JDK8] Cannot build on Windows: error: unexpected end tag: &lt;/ul&gt; |  Major | (build) | Alec Taylor | Chris Nauroth |
| [HADOOP-11446](https://issues.apache.org/jira/browse/HADOOP-11446) | S3AOutputStream should use shared thread pool to avoid OutOfMemoryError |  Major | (fs/s3) | Ted Yu | Ted Yu |
| [HADOOP-11445](https://issues.apache.org/jira/browse/HADOOP-11445) | Bzip2Codec: Data block is skipped when position of newly created stream is equal to start of split |  Critical |  | Ankit Kamboj | Ankit Kamboj |
| [HADOOP-11431](https://issues.apache.org/jira/browse/HADOOP-11431) | clean up redundant maven-site-plugin configuration |  Major |  | Herv&#233; Boutemy | Herv&#233; Boutemy |
| [HADOOP-11428](https://issues.apache.org/jira/browse/HADOOP-11428) | Remove obsolete reference to Cygwin in BUILDING.txt |  Major | (documentation) | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-11420](https://issues.apache.org/jira/browse/HADOOP-11420) | Use latest maven-site-plugin and replace link to svn with link to git |  Trivial | (site) | Herv&#233; Boutemy | Herv&#233; Boutemy |
| [HADOOP-11414](https://issues.apache.org/jira/browse/HADOOP-11414) | FileBasedIPList#readLines() can leak file descriptors |  Minor |  | Ted Yu | Tsuyoshi Ozawa |
| [HADOOP-11412](https://issues.apache.org/jira/browse/HADOOP-11412) | POMs mention "The Apache Software License" rather than "Apache License" |  Trivial |  | Herv&#233; Boutemy | Herv&#233; Boutemy |
| [HADOOP-11411](https://issues.apache.org/jira/browse/HADOOP-11411) | Hive build failure on hadoop-2.7 due to HADOOP-11356 |  Major |  | Jason Dere |  |
| [HADOOP-11409](https://issues.apache.org/jira/browse/HADOOP-11409) | FileContext.getFileContext can stack overflow if default fs misconfigured |  Major |  | Jason Lowe | Gera Shegalov |
| [HADOOP-11403](https://issues.apache.org/jira/browse/HADOOP-11403) | Avoid using sys_errlist on Solaris, which lacks support for it |  Major |  | Malcolm Kavalsky | Malcolm Kavalsky |
| [HADOOP-11402](https://issues.apache.org/jira/browse/HADOOP-11402) | Negative user-to-group cache entries are never cleared for never-again-accessed users |  Major |  | Colin Patrick McCabe | Varun Saxena |
| [HADOOP-11400](https://issues.apache.org/jira/browse/HADOOP-11400) | GraphiteSink does not reconnect to Graphite after 'broken pipe' |  Major | (metrics) | Kamil Gorlo | Kamil Gorlo |
| [HADOOP-11394](https://issues.apache.org/jira/browse/HADOOP-11394) | hadoop-aws documentation missing. |  Major | (documentation) | Chris Nauroth | Chris Nauroth |
| [HADOOP-11388](https://issues.apache.org/jira/browse/HADOOP-11388) | Remove deprecated o.a.h.metrics.file.FileContext |  Minor |  | Haohui Mai | Li Lu |
| [HADOOP-11386](https://issues.apache.org/jira/browse/HADOOP-11386) | Replace \n by %n in format hadoop-common format strings |  Major |  | Li Lu | Li Lu |
| [HADOOP-11368](https://issues.apache.org/jira/browse/HADOOP-11368) | Fix SSLFactory truststore reloader thread leak in KMSClientProvider |  Major | (kms) | Arun Suresh | Arun Suresh |
| [HADOOP-11363](https://issues.apache.org/jira/browse/HADOOP-11363) | Hadoop maven surefire-plugin uses must set heap size |  Major | (build) | Steve Loughran | Steve Loughran |
| [HADOOP-11355](https://issues.apache.org/jira/browse/HADOOP-11355) | When accessing data in HDFS and the key has been deleted, a Null Pointer Exception is shown. |  Minor |  | Arun Suresh | Arun Suresh |
| [HADOOP-11354](https://issues.apache.org/jira/browse/HADOOP-11354) | ThrottledInputStream doesn't perform effective throttling |  Major |  | Ted Yu | Ted Yu |
| [HADOOP-11350](https://issues.apache.org/jira/browse/HADOOP-11350) | The size of header buffer of HttpServer is too small when HTTPS is enabled |  Major | (security) | Benoy Antony | Benoy Antony |
| [HADOOP-11349](https://issues.apache.org/jira/browse/HADOOP-11349) | RawLocalFileSystem leaks file descriptor while creating a file if creat succeeds but chmod fails. |  Minor | (fs) | Chris Nauroth | Varun Saxena |
| [HADOOP-11348](https://issues.apache.org/jira/browse/HADOOP-11348) | Remove unused variable from CMake error message for finding openssl |  Minor |  | Dian Fu | Dian Fu |
| [HADOOP-11344](https://issues.apache.org/jira/browse/HADOOP-11344) | KMS kms-config.sh sets a default value for the keystore password even in non-ssl setup |  Major |  | Arun Suresh | Arun Suresh |
| [HADOOP-11343](https://issues.apache.org/jira/browse/HADOOP-11343) | Overflow is not properly handled in caclulating final iv for AES CTR |  Blocker | (security) | Jerry Chen | Jerry Chen |
| [HADOOP-11342](https://issues.apache.org/jira/browse/HADOOP-11342) | KMS key ACL should ignore ALL operation for default key ACL and whitelist key ACL |  Major | (kms , security) | Dian Fu | Dian Fu |
| [HADOOP-11337](https://issues.apache.org/jira/browse/HADOOP-11337) | KeyAuthorizationKeyProvider access checks need to be done atomically |  Major |  | Dian Fu | Dian Fu |
| [HADOOP-11333](https://issues.apache.org/jira/browse/HADOOP-11333) | Fix deadlock in DomainSocketWatcher when the notification pipe is full |  Major |  | zhaoyunjiong | zhaoyunjiong |
| [HADOOP-11332](https://issues.apache.org/jira/browse/HADOOP-11332) | KerberosAuthenticator#doSpnegoSequence should check if kerberos TGT is available in the subject  |  Major | (security) | Dian Fu | Dian Fu |
| [HADOOP-11329](https://issues.apache.org/jira/browse/HADOOP-11329) | Add JAVA_LIBRARY_PATH to KMS startup options |  Major | (kms , security) | Dian Fu | Arun Suresh |
| [HADOOP-11327](https://issues.apache.org/jira/browse/HADOOP-11327) | BloomFilter#not() omits the last bit, resulting in an incorrect filter |  Minor | (util) | Tim Luo | Eric Payne |
| [HADOOP-11322](https://issues.apache.org/jira/browse/HADOOP-11322) | key based ACL check in KMS always check KeyOpType.MANAGEMENT even actual KeyOpType is not MANAGEMENT  |  Major | (security) | Dian Fu | Dian Fu |
| [HADOOP-11321](https://issues.apache.org/jira/browse/HADOOP-11321) | copyToLocal cannot save a file to an SMB share unless the user has Full Control permissions. |  Major | (fs) | Chris Nauroth | Chris Nauroth |
| [HADOOP-11318](https://issues.apache.org/jira/browse/HADOOP-11318) | Update the document for hadoop fs -stat |  Major | (documentation) | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11316](https://issues.apache.org/jira/browse/HADOOP-11316) | "mvn package -Pdist,docs -DskipTests -Dtar" fails because of non-ascii characters |  Blocker |  | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-11312](https://issues.apache.org/jira/browse/HADOOP-11312) | Fix unit tests to not use uppercase key names |  Major | (security) | Andrew Wang | Andrew Wang |
| [HADOOP-11309](https://issues.apache.org/jira/browse/HADOOP-11309) | System class pattern package.Foo should match package.Foo$Bar, too |  Blocker |  | Gera Shegalov | Gera Shegalov |
| [HADOOP-11300](https://issues.apache.org/jira/browse/HADOOP-11300) | KMS startup scripts must not display the keystore / truststore passwords |  Major | (kms) | Arun Suresh | Arun Suresh |
| [HADOOP-11295](https://issues.apache.org/jira/browse/HADOOP-11295) | RPC Server Reader thread can't shutdown if RPCCallQueue is full |  Major |  | Ming Ma | Ming Ma |
| [HADOOP-11294](https://issues.apache.org/jira/browse/HADOOP-11294) | Nfs3FileAttributes should not change the values of rdev, nlink and size in the constructor  |  Minor | (nfs) | Brandon Li | Brandon Li |
| [HADOOP-11289](https://issues.apache.org/jira/browse/HADOOP-11289) | Fix typo in RpcUtil log message |  Trivial | (net) | Charles Lamb | Charles Lamb |
| [HADOOP-11287](https://issues.apache.org/jira/browse/HADOOP-11287) | Simplify UGI#reloginFromKeytab for Java 7+ |  Major |  | Haohui Mai | Li Lu |
| [HADOOP-11283](https://issues.apache.org/jira/browse/HADOOP-11283) | Potentially unclosed SequenceFile.Writer in DistCpV1#setup() |  Minor |  | Ted Yu | Varun Saxena |
| [HADOOP-11273](https://issues.apache.org/jira/browse/HADOOP-11273) | TestMiniKdc failure: login options not compatible with IBM JDK |  Major | (test) | Gao Zhong Liang | Gao Zhong Liang |
| [HADOOP-11272](https://issues.apache.org/jira/browse/HADOOP-11272) | Allow ZKSignerSecretProvider and ZKDelegationTokenSecretManager to use the same curator client |  Major |  | Arun Suresh | Arun Suresh |
| [HADOOP-11271](https://issues.apache.org/jira/browse/HADOOP-11271) | Use Time.monotonicNow() in Shell.java instead of Time.now() |  Minor |  | Vinayakumar B | Vinayakumar B |
| [HADOOP-11269](https://issues.apache.org/jira/browse/HADOOP-11269) | Add java 8 profile for hadoop-annotations |  Major |  | Haohui Mai | Li Lu |
| [HADOOP-11268](https://issues.apache.org/jira/browse/HADOOP-11268) | Update BUILDING.txt to remove the workaround for tools.jar |  Minor |  | Haohui Mai | Li Lu |
| [HADOOP-11267](https://issues.apache.org/jira/browse/HADOOP-11267) | TestSecurityUtil fails when run with JDK8 because of empty principal names |  Minor | (security , test) | Stephen Chu | Stephen Chu |
| [HADOOP-11266](https://issues.apache.org/jira/browse/HADOOP-11266) | Remove no longer supported activation properties for packaging from pom |  Trivial | (build) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11256](https://issues.apache.org/jira/browse/HADOOP-11256) | Some site docs have inconsistent appearance |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11248](https://issues.apache.org/jira/browse/HADOOP-11248) | Add hadoop configuration to disable Azure Filesystem metrics collection |  Major | (fs) | shanyu zhao | shanyu zhao |
| [HADOOP-11246](https://issues.apache.org/jira/browse/HADOOP-11246) | Move jenkins to Java 7 |  Major |  | Haohui Mai | Steve Loughran |
| [HADOOP-11236](https://issues.apache.org/jira/browse/HADOOP-11236) | NFS: Fix javadoc warning in RpcProgram.java |  Trivial | (documentation) | Abhiraj Butala | Abhiraj Butala |
| [HADOOP-11230](https://issues.apache.org/jira/browse/HADOOP-11230) | Add missing dependency of bouncycastle for kms, httpfs, hdfs, MR and YARN |  Major | (test) | Robert Kanter | Robert Kanter |
| [HADOOP-11213](https://issues.apache.org/jira/browse/HADOOP-11213) | Typos in html pages: SecureMode and EncryptedShuffle |  Minor |  | Wei Yan | Wei Yan |
| [HADOOP-11211](https://issues.apache.org/jira/browse/HADOOP-11211) | mapreduce.job.classloader.system.classes semantics should be order-independent |  Major |  | Yitong Zhou | Yitong Zhou |
| [HADOOP-11209](https://issues.apache.org/jira/browse/HADOOP-11209) | Configuration#updatingResource/finalParameters are not thread-safe |  Major | (conf) | Josh Rosen | Varun Saxena |
| [HADOOP-11201](https://issues.apache.org/jira/browse/HADOOP-11201) | Hadoop Archives should support globs resolving to files |  Blocker | (tools) | Gera Shegalov | Gera Shegalov |
| [HADOOP-11187](https://issues.apache.org/jira/browse/HADOOP-11187) | NameNode - KMS communication fails after a long period of inactivity |  Major |  | Arun Suresh | Arun Suresh |
| [HADOOP-11186](https://issues.apache.org/jira/browse/HADOOP-11186) | documentation should talk about hadoop.htrace.spanreceiver.classes, not hadoop.trace.spanreceiver.classes |  Minor |  | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-11166](https://issues.apache.org/jira/browse/HADOOP-11166) | Remove ulimit from test-patch.sh |  Major |  | Andrew Wang | Andrew Wang |
| [HADOOP-11157](https://issues.apache.org/jira/browse/HADOOP-11157) | ZKDelegationTokenSecretManager never shuts down listenerThreadPool |  Major | (security) | Gregory Chanan | Arun Suresh |
| [HADOOP-11156](https://issues.apache.org/jira/browse/HADOOP-11156) | DelegateToFileSystem should implement getFsStatus(final Path f). |  Major | (fs) | zhihai xu | zhihai xu |
| [HADOOP-11039](https://issues.apache.org/jira/browse/HADOOP-11039) | ByteBufferReadable API doc is inconsistent with the implementations. |  Minor | (documentation) | Yi Liu | Yi Liu |
| [HADOOP-11008](https://issues.apache.org/jira/browse/HADOOP-11008) | Remove duplicated description about proxy-user in site documents |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11000](https://issues.apache.org/jira/browse/HADOOP-11000) | HAServiceProtocol's health state is incorrectly transitioned to SERVICE_NOT_RESPONDING |  Major |  | Ming Ma | Ming Ma |
| [HADOOP-10953](https://issues.apache.org/jira/browse/HADOOP-10953) | NetworkTopology#add calls NetworkTopology#toString without holding the netlock |  Minor | (net) | Liang Xie | Liang Xie |
| [HADOOP-10852](https://issues.apache.org/jira/browse/HADOOP-10852) | NetgroupCache is not thread-safe |  Major | (security) | Benoy Antony | Benoy Antony |
| [HADOOP-10840](https://issues.apache.org/jira/browse/HADOOP-10840) | Fix OutOfMemoryError caused by metrics system in Azure File System |  Major | (metrics) | shanyu zhao | shanyu zhao |
| [HADOOP-10748](https://issues.apache.org/jira/browse/HADOOP-10748) | HttpServer2 should not load JspServlet |  Major |  | Haohui Mai | Haohui Mai |
| [HADOOP-10717](https://issues.apache.org/jira/browse/HADOOP-10717) | HttpServer2 should load jsp DTD from local jars instead of going remote |  Blocker |  | Dapeng Sun | Dapeng Sun |
| [HADOOP-10714](https://issues.apache.org/jira/browse/HADOOP-10714) | AmazonS3Client.deleteObjects() need to be limited to 1000 entries per call |  Critical | (fs/s3) | David S. Wang | Juan Yu |
| [HADOOP-10690](https://issues.apache.org/jira/browse/HADOOP-10690) | Lack of synchronization on access to InputStream in NativeAzureFileSystem#NativeAzureFsInputStream#close() |  Minor | (tools) | Ted Yu | Chen He |
| [HADOOP-10689](https://issues.apache.org/jira/browse/HADOOP-10689) | InputStream is not closed in AzureNativeFileSystemStore#retrieve() |  Minor | (tools) | Ted Yu | Chen He |
| [HADOOP-10181](https://issues.apache.org/jira/browse/HADOOP-10181) | GangliaContext does not work with multicast ganglia setup |  Minor | (metrics) | Andrew Otto | Andrew Johnson |
| [HADOOP-10134](https://issues.apache.org/jira/browse/HADOOP-10134) | [JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments  |  Minor |  | Andrew Purtell | Andrew Purtell |
| [HADOOP-10062](https://issues.apache.org/jira/browse/HADOOP-10062) | race condition in MetricsSystemImpl#publishMetricsNow that causes incorrect results |  Major | (metrics) | Shinichi Yamashita | Sangjin Lee |
| [HADOOP-9922](https://issues.apache.org/jira/browse/HADOOP-9922) | hadoop windows native build will fail in 32 bit machine |  Major | (build , native) | Vinayakumar B | Kiran Kumar M R |
| [HADOOP-9907](https://issues.apache.org/jira/browse/HADOOP-9907) | Webapp http://hostname:port/metrics  link is not working  |  Critical |  | Jian He | Akira AJISAKA |
| [HADOOP-9137](https://issues.apache.org/jira/browse/HADOOP-9137) | Support connection limiting in IPC server |  Major |  | Sanjay Radia | Kihwal Lee |
| [HADOOP-9087](https://issues.apache.org/jira/browse/HADOOP-9087) | Queue size metric for metric sinks isn't actually maintained |  Minor | (metrics) | Mostafa Elhemali | Akira AJISAKA |
| [HADOOP-8642](https://issues.apache.org/jira/browse/HADOOP-8642) | Document that io.native.lib.available only controls native bz2 and zlib compression codecs |  Major | (documentation , native) | Eli Collins | Akira AJISAKA |
| [HADOOP-6221](https://issues.apache.org/jira/browse/HADOOP-6221) | RPC Client operations cannot be interrupted |  Minor | (ipc) | Steve Loughran | Steve Loughran |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11432](https://issues.apache.org/jira/browse/HADOOP-11432) | Fix SymlinkBaseTest#testCreateLinkUsingPartQualPath2 |  Major | (fs) | Liang Xie | Liang Xie |
| [HADOOP-11358](https://issues.apache.org/jira/browse/HADOOP-11358) | Tests for encryption/decryption with IV calculation overflow |  Major | (security , test) | Yi Liu | Yi Liu |
| [HADOOP-11165](https://issues.apache.org/jira/browse/HADOOP-11165) | TestUTF8 fails when run against java 8 |  Minor | (test) | Ted Yu | Stephen Chu |
| [HADOOP-11125](https://issues.apache.org/jira/browse/HADOOP-11125) | Remove redundant tests in TestOsSecureRandom |  Major |  | Ted Yu | Masanori Oyama |
| [HADOOP-10668](https://issues.apache.org/jira/browse/HADOOP-10668) | TestZKFailoverControllerStress#testExpireBackAndForth occasionally fails |  Major | (test) | Ted Yu | Ming Ma |
| [HADOOP-11612](https://issues.apache.org/jira/browse/HADOOP-11612) | Workaround for Curator's ChildReaper requiring Guava 15+ |  Major |  | Robert Kanter | Robert Kanter |
| [HADOOP-11492](https://issues.apache.org/jira/browse/HADOOP-11492) | Bump up curator version to 2.7.1 |  Major |  | Karthik Kambatla | Arun Suresh |
| [HADOOP-11489](https://issues.apache.org/jira/browse/HADOOP-11489) | Dropping dependency on io.netty from hadoop-nfs' pom.xml |  Minor | (nfs) | Ted Yu | Ted Yu |
| [HADOOP-11463](https://issues.apache.org/jira/browse/HADOOP-11463) | Replace method-local TransferManager object with S3AFileSystem#transfers |  Major | (fs/s3) | Ted Yu | Ted Yu |

