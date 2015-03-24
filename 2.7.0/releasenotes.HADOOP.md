# Hadoop HADOOP 2.7.0 Release Notes

These release notes cover new developer and user-facing incompatibilities, features, and major improvements.

---

* [HADOOP-11729](https://issues.apache.org/jira/browse/HADOOP-11729) | *Minor* | **Fix link to cgroups doc in site.xml**

Committed this to trunk, branch-2, and branch-2.7. Thanks Masatake for your contribution!

---

* [HADOOP-11722](https://issues.apache.org/jira/browse/HADOOP-11722) | *Major* | **Some Instances of Services using ZKDelegationTokenSecretManager go down when old token cannot be deleted**
---

* [HADOOP-11720](https://issues.apache.org/jira/browse/HADOOP-11720) | *Major* | **[JDK8] Fix javadoc errors caused by incorrect or illegal tags in hadoop-tools**
---

* [HADOOP-11714](https://issues.apache.org/jira/browse/HADOOP-11714) | *Minor* | **Add more trace log4j messages to SpanReceiverHost**
---

* [HADOOP-11710](https://issues.apache.org/jira/browse/HADOOP-11710) | *Critical* | **Make CryptoOutputStream behave like DFSOutputStream wrt synchronization**
---

* [HADOOP-11693](https://issues.apache.org/jira/browse/HADOOP-11693) | *Major* | **Azure Storage FileSystem rename operations are throttled too aggressively to complete HBase WAL archiving.**
---

* [HADOOP-11686](https://issues.apache.org/jira/browse/HADOOP-11686) | *Major* | **MiniKDC cannot change ORG\_NAME or ORG\_DOMAIN**
---

* [HADOOP-11674](https://issues.apache.org/jira/browse/HADOOP-11674) | *Critical* | **oneByteBuf in CryptoInputStream and CryptoOutputStream should be non static**
---

* [HADOOP-11670](https://issues.apache.org/jira/browse/HADOOP-11670) | *Blocker* | **Regression: s3a auth setup broken**
---

* [HADOOP-11666](https://issues.apache.org/jira/browse/HADOOP-11666) | *Major* | **Revert the format change of du output introduced by HADOOP-6857**
---

* [HADOOP-11658](https://issues.apache.org/jira/browse/HADOOP-11658) | *Minor* | **Externalize io.compression.codecs property**
---

* [HADOOP-11648](https://issues.apache.org/jira/browse/HADOOP-11648) | *Major* | **Set DomainSocketWatcher thread name explicitly**
---

* [HADOOP-11642](https://issues.apache.org/jira/browse/HADOOP-11642) | *Major* | **Upgrade azure sdk version from 0.6.0 to 2.0.0**
---

* [HADOOP-11638](https://issues.apache.org/jira/browse/HADOOP-11638) | *Major* | **OpensslSecureRandom.c pthreads\_thread\_id should support FreeBSD and Solaris in addition to Linux**
---

* [HADOOP-11634](https://issues.apache.org/jira/browse/HADOOP-11634) | *Major* | **Description of webhdfs' principal/keytab should switch places each other**
---

* [HADOOP-11632](https://issues.apache.org/jira/browse/HADOOP-11632) | *Minor* | **Cleanup Find.java to remove SupressWarnings annotations**
---

* [HADOOP-11629](https://issues.apache.org/jira/browse/HADOOP-11629) | *Major* | **WASB filesystem should not start BandwidthGaugeUpdater if fs.azure.skip.metrics set to true**
---

* [HADOOP-11620](https://issues.apache.org/jira/browse/HADOOP-11620) | *Major* | **Add support for load balancing across a group of KMS for HA**
---

* [HADOOP-11619](https://issues.apache.org/jira/browse/HADOOP-11619) | *Major* | **FTPFileSystem should override getDefaultPort**
---

* [HADOOP-11618](https://issues.apache.org/jira/browse/HADOOP-11618) | *Major* | **DelegateToFileSystem erroneously uses default FS's port in constructor**
---

* [HADOOP-11615](https://issues.apache.org/jira/browse/HADOOP-11615) | *Minor* | **Update ServiceLevelAuth.md for YARN**
---

* [HADOOP-11612](https://issues.apache.org/jira/browse/HADOOP-11612) | *Major* | **Workaround for Curator's ChildReaper requiring Guava 15+**
---

* [HADOOP-11607](https://issues.apache.org/jira/browse/HADOOP-11607) | *Trivial* | **Reduce log spew in S3AFileSystem**
---

* [HADOOP-11605](https://issues.apache.org/jira/browse/HADOOP-11605) | *Minor* | **FilterFileSystem#create with ChecksumOpt should propagate it to wrapped FS**
---

* [HADOOP-11604](https://issues.apache.org/jira/browse/HADOOP-11604) | *Critical* | **Prevent ConcurrentModificationException while closing domain sockets during shutdown of DomainSocketWatcher thread.**
---

* [HADOOP-11602](https://issues.apache.org/jira/browse/HADOOP-11602) | *Blocker* | **Fix toUpperCase/toLowerCase to use Locale.ENGLISH**
---

* [HADOOP-11600](https://issues.apache.org/jira/browse/HADOOP-11600) | *Major* | **Fix up source codes to be compiled with Guava 17.0**
---

* [HADOOP-11599](https://issues.apache.org/jira/browse/HADOOP-11599) | *Minor* | **Client#getTimeout should use IPC\_CLIENT\_PING\_DEFAULT when IPC\_CLIENT\_PING\_KEY is not configured.**
---

* [HADOOP-11595](https://issues.apache.org/jira/browse/HADOOP-11595) | *Major* | **Add default implementation for AbstractFileSystem#truncate**
---

* [HADOOP-11589](https://issues.apache.org/jira/browse/HADOOP-11589) | *Minor* | **NetUtils.createSocketAddr should trim the input URI**
---

* [HADOOP-11587](https://issues.apache.org/jira/browse/HADOOP-11587) | *Trivial* | **TestMapFile#testMainMethodMapFile creates test files in hadoop-common project root**
---

* [HADOOP-11586](https://issues.apache.org/jira/browse/HADOOP-11586) | *Minor* | **Update use of Iterator to Iterable in AbstractMetricsContext.java**
---

* [HADOOP-11584](https://issues.apache.org/jira/browse/HADOOP-11584) | *Blocker* | **s3a file block size set to 0 in getFileStatus**
---

* [HADOOP-11579](https://issues.apache.org/jira/browse/HADOOP-11579) | *Major* | **Documentation for truncate**
---

* [HADOOP-11571](https://issues.apache.org/jira/browse/HADOOP-11571) | *Blocker* | **Über-jira: S3a stabilisation phase I**
---

* [HADOOP-11570](https://issues.apache.org/jira/browse/HADOOP-11570) | *Major* | **S3AInputStream.close() downloads the remaining bytes of the object from S3**
---

* [HADOOP-11569](https://issues.apache.org/jira/browse/HADOOP-11569) | *Major* | **Provide Merge API for MapFile to merge multiple similar MapFiles to one MapFile**
---

* [HADOOP-11558](https://issues.apache.org/jira/browse/HADOOP-11558) | *Minor* | **Fix dead links to doc of hadoop-tools**
---

* [HADOOP-11549](https://issues.apache.org/jira/browse/HADOOP-11549) | *Major* | **flaky test detection tool failed to handle special control characters in test result**
---

* [HADOOP-11548](https://issues.apache.org/jira/browse/HADOOP-11548) | *Major* | **checknative should display a nicer error message when openssl support is not compiled in**
---

* [HADOOP-11547](https://issues.apache.org/jira/browse/HADOOP-11547) | *Major* | **hadoop-common native compilation fails on Windows due to missing support for \_\_attribute\_\_ declaration.**
---

* [HADOOP-11546](https://issues.apache.org/jira/browse/HADOOP-11546) | *Major* | **Checkstyle failing: Unable to instantiate DoubleCheckedLockingCheck**
---

* [HADOOP-11545](https://issues.apache.org/jira/browse/HADOOP-11545) | *Minor* | **ArrayIndexOutOfBoundsException is thrown with "hadoop credential list -provider"**
---

* [HADOOP-11544](https://issues.apache.org/jira/browse/HADOOP-11544) | *Trivial* | **Remove unused configuration keys for tracing**
---

* [HADOOP-11543](https://issues.apache.org/jira/browse/HADOOP-11543) | *Trivial* | **Improve help message for hadoop/yarn command**
---

* [HADOOP-11529](https://issues.apache.org/jira/browse/HADOOP-11529) | *Minor* | **Fix findbugs warnings in hadoop-archives**
---

* [HADOOP-11526](https://issues.apache.org/jira/browse/HADOOP-11526) | *Major* | **Memory leak in Bzip2Compressor and Bzip2Decompressor**
---

* [HADOOP-11523](https://issues.apache.org/jira/browse/HADOOP-11523) | *Major* | **StorageException complaining " no lease ID" when updating FolderLastModifiedTime in WASB**
---

* [HADOOP-11522](https://issues.apache.org/jira/browse/HADOOP-11522) | *Major* | **Update S3A Documentation**
---

* [HADOOP-11521](https://issues.apache.org/jira/browse/HADOOP-11521) | *Minor* | **Make connection timeout configurable in s3a**
---

* [HADOOP-11520](https://issues.apache.org/jira/browse/HADOOP-11520) | *Minor* | **Clean incomplete multi-part uploads in S3A tests**
---

* [HADOOP-11512](https://issues.apache.org/jira/browse/HADOOP-11512) | *Minor* | **Use getTrimmedStrings when reading serialization keys**
---

* [HADOOP-11510](https://issues.apache.org/jira/browse/HADOOP-11510) | *Major* | **Expose truncate API via FileContext**
---

* [HADOOP-11509](https://issues.apache.org/jira/browse/HADOOP-11509) | *Major* | **change parsing sequence in GenericOptionsParser to parse -D parameters first**
---

* [HADOOP-11507](https://issues.apache.org/jira/browse/HADOOP-11507) | *Minor* | **Hadoop RPC Authentication problem with different user locale**
---

* [HADOOP-11506](https://issues.apache.org/jira/browse/HADOOP-11506) | *Major* | **Configuration variable expansion regex expensive for long values**
---

* [HADOOP-11500](https://issues.apache.org/jira/browse/HADOOP-11500) | *Major* | **InputStream is left unclosed in ApplicationClassLoader**
---

* [HADOOP-11499](https://issues.apache.org/jira/browse/HADOOP-11499) | *Minor* | **Check of executorThreadsStarted in ValueQueue#submitRefillTask() evades lock acquisition**
---

* [HADOOP-11498](https://issues.apache.org/jira/browse/HADOOP-11498) | *Major* | **Bump the version of HTrace to 3.1.0-incubating**
---

* [HADOOP-11497](https://issues.apache.org/jira/browse/HADOOP-11497) | *Major* | **Fix typo in ClusterSetup.html#Hadoop\_Startup**

Correct startup command for cluster data nodes

---

* [HADOOP-11495](https://issues.apache.org/jira/browse/HADOOP-11495) | *Major* | **Convert site documentation from apt to markdown**
---

* [HADOOP-11494](https://issues.apache.org/jira/browse/HADOOP-11494) | *Minor* | **Lock acquisition on WrappedInputStream#unwrappedRpcBuffer may race with another thread**
---

* [HADOOP-11493](https://issues.apache.org/jira/browse/HADOOP-11493) | *Trivial* | **Fix some typos in kms-acls.xml description**
---

* [HADOOP-11492](https://issues.apache.org/jira/browse/HADOOP-11492) | *Major* | **Bump up curator version to 2.7.1**

Apache Curator version change: Apache Hadoop has updated the version of Apache Curator used from 2.6.0 to 2.7.1. This change should be binary and source compatible for the majority of downstream users. Notable exceptions:
# Binary incompatible change: org.apache.curator.utils.PathUtils.validatePath(String) changed return types. Downstream users of this method will need to recompile.
# Source incompatible change: org.apache.curator.framework.recipes.shared.SharedCountReader added a method to its interface definition. Downstream users with custom implementations of this interface can continue without binary compatibility problems but will need to modify their source code to recompile.
# Source incompatible change: org.apache.curator.framework.recipes.shared.SharedValueReader added a method to its interface definition. Downstream users with custom implementations of this interface can continue without binary compatibility problems but will need to modify their source code to recompile.

Downstream users are reminded that while the Hadoop community will attempt to avoid egregious incompatible dependency changes, there is currently no policy around when Hadoop's exposed dependencies will change across versions (ref http://hadoop.apache.org/docs/current/hadoop-project-dist/hadoop-common/Compatibility.html#Java\_Classpath).

---

* [HADOOP-11490](https://issues.apache.org/jira/browse/HADOOP-11490) | *Major* | **Expose truncate API via FileSystem and shell command**
---

* [HADOOP-11489](https://issues.apache.org/jira/browse/HADOOP-11489) | *Minor* | **Dropping dependency on io.netty from hadoop-nfs' pom.xml**
---

* [HADOOP-11488](https://issues.apache.org/jira/browse/HADOOP-11488) | *Minor* | **Difference in default connection timeout for S3A FS**
---

* [HADOOP-11483](https://issues.apache.org/jira/browse/HADOOP-11483) | *Major* | **HardLink.java should use the jdk7 createLink method**
---

* [HADOOP-11482](https://issues.apache.org/jira/browse/HADOOP-11482) | *Major* | **Use correct UGI when KMSClientProvider is called by a proxy user**
---

* [HADOOP-11481](https://issues.apache.org/jira/browse/HADOOP-11481) | *Minor* | **ClassCastException while using a key created by keytool to create encryption zone.**
---

* [HADOOP-11480](https://issues.apache.org/jira/browse/HADOOP-11480) | *Minor* | **Typo in hadoop-aws/index.md uses wrong scheme for test.fs.s3.name**
---

* [HADOOP-11470](https://issues.apache.org/jira/browse/HADOOP-11470) | *Major* | **Remove some uses of obsolete guava APIs from the hadoop codebase**
---

* [HADOOP-11469](https://issues.apache.org/jira/browse/HADOOP-11469) | *Minor* | **KMS should skip default.key.acl and whitelist.key.acl when loading key acl**
---

* [HADOOP-11467](https://issues.apache.org/jira/browse/HADOOP-11467) | *Critical* | **KerberosAuthenticator can connect to a non-secure cluster**
---

* [HADOOP-11465](https://issues.apache.org/jira/browse/HADOOP-11465) | *Major* | **Fix findbugs warnings in hadoop-gridmix**
---

* [HADOOP-11464](https://issues.apache.org/jira/browse/HADOOP-11464) | *Major* | **Reinstate support for launching Hadoop processes on Windows using Cygwin.**

We have reinstated support for launching Hadoop processes on Windows by using Cygwin to run the shell scripts.  All processes still must have access to the native components: hadoop.dll and winutils.exe.

---

* [HADOOP-11463](https://issues.apache.org/jira/browse/HADOOP-11463) | *Major* | **Replace method-local TransferManager object with S3AFileSystem#transfers**
---

* [HADOOP-11462](https://issues.apache.org/jira/browse/HADOOP-11462) | *Major* | **TestSocketIOWithTimeout needs change for PowerPC platform**
---

* [HADOOP-11459](https://issues.apache.org/jira/browse/HADOOP-11459) | *Minor* | **Fix recent findbugs in ActiveStandbyElector, NetUtils and ShellBasedIdMapping**
---

* [HADOOP-11455](https://issues.apache.org/jira/browse/HADOOP-11455) | *Minor* | **KMS and Credential CLI should request confirmation for deletion by default**
---

* [HADOOP-11449](https://issues.apache.org/jira/browse/HADOOP-11449) | *Major* | **[JDK8] Cannot build on Windows: error: unexpected end tag: </ul>**
---

* [HADOOP-11448](https://issues.apache.org/jira/browse/HADOOP-11448) | *Minor* | **Fix findbugs warnings in FileBasedIPList**
---

* [HADOOP-11446](https://issues.apache.org/jira/browse/HADOOP-11446) | *Major* | **S3AOutputStream should use shared thread pool to avoid OutOfMemoryError**

The following parameters are introduced in this JIRA:
fs.s3a.threads.max:    the maximum number of threads to allow in the pool used by TransferManager
fs.s3a.threads.core:    the number of threads to keep in the pool used by TransferManager
fs.s3a.threads.keepalivetime:  when the number of threads is greater than the core, this is the maximum time that excess idle threads will wait for new tasks before terminating
fs.s3a.max.total.tasks:    the maximum number of tasks that the LinkedBlockingQueue can hold

---

* [HADOOP-11445](https://issues.apache.org/jira/browse/HADOOP-11445) | *Critical* | **Bzip2Codec: Data block is skipped when position of newly created stream is equal to start of split**
---

* [HADOOP-11442](https://issues.apache.org/jira/browse/HADOOP-11442) | *Major* | **hadoop-azure: Create test jar**
---

* [HADOOP-11441](https://issues.apache.org/jira/browse/HADOOP-11441) | *Minor* | **Hadoop-azure: Change few methods scope to public**
---

* [HADOOP-11440](https://issues.apache.org/jira/browse/HADOOP-11440) | *Minor* | **Use "test.build.data" instead of "build.test.dir" for testing in ClientBaseWithFixes**
---

* [HADOOP-11432](https://issues.apache.org/jira/browse/HADOOP-11432) | *Major* | **Fix SymlinkBaseTest#testCreateLinkUsingPartQualPath2**
---

* [HADOOP-11431](https://issues.apache.org/jira/browse/HADOOP-11431) | *Major* | **clean up redundant maven-site-plugin configuration**
---

* [HADOOP-11430](https://issues.apache.org/jira/browse/HADOOP-11430) | *Major* | **Add GenericTestUtils#disableLog, GenericTestUtils#setLogLevel**
---

* [HADOOP-11429](https://issues.apache.org/jira/browse/HADOOP-11429) | *Major* | **Findbugs warnings in hadoop extras**
---

* [HADOOP-11428](https://issues.apache.org/jira/browse/HADOOP-11428) | *Major* | **Remove obsolete reference to Cygwin in BUILDING.txt**
---

* [HADOOP-11427](https://issues.apache.org/jira/browse/HADOOP-11427) | *Major* | **ChunkedArrayList: fix removal via iterator and implement get**
---

* [HADOOP-11422](https://issues.apache.org/jira/browse/HADOOP-11422) | *Minor* | **Check CryptoCodec is AES-CTR for Crypto input/output stream**
---

* [HADOOP-11421](https://issues.apache.org/jira/browse/HADOOP-11421) | *Major* | **Add IOUtils#listDirectory**
---

* [HADOOP-11420](https://issues.apache.org/jira/browse/HADOOP-11420) | *Trivial* | **Use latest maven-site-plugin and replace link to svn with link to git**
---

* [HADOOP-11419](https://issues.apache.org/jira/browse/HADOOP-11419) | *Minor* | **improve hadoop-maven-plugins**
---

* [HADOOP-11416](https://issues.apache.org/jira/browse/HADOOP-11416) | *Major* | **Move ChunkedArrayList into hadoop-common**
---

* [HADOOP-11414](https://issues.apache.org/jira/browse/HADOOP-11414) | *Minor* | **FileBasedIPList#readLines() can leak file descriptors**
---

* [HADOOP-11412](https://issues.apache.org/jira/browse/HADOOP-11412) | *Trivial* | **POMs mention "The Apache Software License" rather than "Apache License"**
---

* [HADOOP-11411](https://issues.apache.org/jira/browse/HADOOP-11411) | *Major* | **Hive build failure on hadoop-2.7 due to HADOOP-11356**
---

* [HADOOP-11410](https://issues.apache.org/jira/browse/HADOOP-11410) | *Major* | **make the rpath of libhadoop.so configurable**
---

* [HADOOP-11409](https://issues.apache.org/jira/browse/HADOOP-11409) | *Major* | **FileContext.getFileContext can stack overflow if default fs misconfigured**
---

* [HADOOP-11403](https://issues.apache.org/jira/browse/HADOOP-11403) | *Major* | **Avoid using sys\_errlist on Solaris, which lacks support for it**
---

* [HADOOP-11402](https://issues.apache.org/jira/browse/HADOOP-11402) | *Major* | **Negative user-to-group cache entries are never cleared for never-again-accessed users**
---

* [HADOOP-11400](https://issues.apache.org/jira/browse/HADOOP-11400) | *Major* | **GraphiteSink does not reconnect to Graphite after 'broken pipe'**
---

* [HADOOP-11399](https://issues.apache.org/jira/browse/HADOOP-11399) | *Minor* | **Java Configuration file and .xml files should be automatically cross-compared**
---

* [HADOOP-11396](https://issues.apache.org/jira/browse/HADOOP-11396) | *Major* | **Provide navigation in the site documentation linking to the Hadoop Compatible File Systems.**
---

* [HADOOP-11395](https://issues.apache.org/jira/browse/HADOOP-11395) | *Major* | **Add site documentation for Azure Storage FileSystem integration.**
---

* [HADOOP-11394](https://issues.apache.org/jira/browse/HADOOP-11394) | *Major* | **hadoop-aws documentation missing.**
---

* [HADOOP-11390](https://issues.apache.org/jira/browse/HADOOP-11390) | *Minor* | **Metrics 2 ganglia provider to include hostname in unresolved address problems**
---

* [HADOOP-11389](https://issues.apache.org/jira/browse/HADOOP-11389) | *Major* | **Clean up byte to string encoding issues in hadoop-common**
---

* [HADOOP-11388](https://issues.apache.org/jira/browse/HADOOP-11388) | *Minor* | **Remove deprecated o.a.h.metrics.file.FileContext**
---

* [HADOOP-11386](https://issues.apache.org/jira/browse/HADOOP-11386) | *Major* | **Replace \n by %n in format hadoop-common format strings**
---

* [HADOOP-11385](https://issues.apache.org/jira/browse/HADOOP-11385) | *Critical* | **Prevent cross site scripting attack on JMXJSONServlet**
---

* [HADOOP-11381](https://issues.apache.org/jira/browse/HADOOP-11381) | *Major* | **Fix findbugs warnings in hadoop-distcp, hadoop-aws, hadoop-azure, and hadoop-openstack**
---

* [HADOOP-11379](https://issues.apache.org/jira/browse/HADOOP-11379) | *Major* | **Fix new findbugs warnings in hadoop-auth***
---

* [HADOOP-11378](https://issues.apache.org/jira/browse/HADOOP-11378) | *Major* | **Fix new findbugs warnings in hadoop-kms**
---

* [HADOOP-11372](https://issues.apache.org/jira/browse/HADOOP-11372) | *Major* | **Fix new findbugs warnings in mapreduce-examples**
---

* [HADOOP-11370](https://issues.apache.org/jira/browse/HADOOP-11370) | *Major* | **Fix new findbug warnings hadoop-yarn**
---

* [HADOOP-11369](https://issues.apache.org/jira/browse/HADOOP-11369) | *Major* | **Fix new findbugs warnings in hadoop-mapreduce-client, non-core directories**
---

* [HADOOP-11368](https://issues.apache.org/jira/browse/HADOOP-11368) | *Major* | **Fix SSLFactory truststore reloader thread leak in KMSClientProvider**
---

* [HADOOP-11367](https://issues.apache.org/jira/browse/HADOOP-11367) | *Major* | **Fix warnings from findbugs 3.0 in hadoop-streaming**
---

* [HADOOP-11363](https://issues.apache.org/jira/browse/HADOOP-11363) | *Major* | **Hadoop maven surefire-plugin uses must set heap size**
---

* [HADOOP-11358](https://issues.apache.org/jira/browse/HADOOP-11358) | *Major* | **Tests for encryption/decryption with IV calculation overflow**
---

* [HADOOP-11355](https://issues.apache.org/jira/browse/HADOOP-11355) | *Minor* | **When accessing data in HDFS and the key has been deleted, a Null Pointer Exception is shown.**
---

* [HADOOP-11354](https://issues.apache.org/jira/browse/HADOOP-11354) | *Major* | **ThrottledInputStream doesn't perform effective throttling**
---

* [HADOOP-11350](https://issues.apache.org/jira/browse/HADOOP-11350) | *Major* | **The size of header buffer of HttpServer is too small when HTTPS is enabled**
---

* [HADOOP-11349](https://issues.apache.org/jira/browse/HADOOP-11349) | *Minor* | **RawLocalFileSystem leaks file descriptor while creating a file if creat succeeds but chmod fails.**
---

* [HADOOP-11348](https://issues.apache.org/jira/browse/HADOOP-11348) | *Minor* | **Remove unused variable from CMake error message for finding openssl**

Test failure is unrelated.  Committed to 2.7.  Thanks, Dian.

---

* [HADOOP-11344](https://issues.apache.org/jira/browse/HADOOP-11344) | *Major* | **KMS kms-config.sh sets a default value for the keystore password even in non-ssl setup**
---

* [HADOOP-11343](https://issues.apache.org/jira/browse/HADOOP-11343) | *Blocker* | **Overflow is not properly handled in caclulating final iv for AES CTR**
---

* [HADOOP-11342](https://issues.apache.org/jira/browse/HADOOP-11342) | *Major* | **KMS key ACL should ignore ALL operation for default key ACL and whitelist key ACL**
---

* [HADOOP-11341](https://issues.apache.org/jira/browse/HADOOP-11341) | *Major* | **KMS support for whitelist key ACLs**
---

* [HADOOP-11337](https://issues.apache.org/jira/browse/HADOOP-11337) | *Major* | **KeyAuthorizationKeyProvider access checks need to be done atomically**
---

* [HADOOP-11333](https://issues.apache.org/jira/browse/HADOOP-11333) | *Major* | **Fix deadlock in DomainSocketWatcher when the notification pipe is full**
---

* [HADOOP-11332](https://issues.apache.org/jira/browse/HADOOP-11332) | *Major* | **KerberosAuthenticator#doSpnegoSequence should check if kerberos TGT is available in the subject**
---

* [HADOOP-11329](https://issues.apache.org/jira/browse/HADOOP-11329) | *Major* | **Add JAVA\_LIBRARY\_PATH to KMS startup options**
---

* [HADOOP-11327](https://issues.apache.org/jira/browse/HADOOP-11327) | *Minor* | **BloomFilter#not() omits the last bit, resulting in an incorrect filter**
---

* [HADOOP-11323](https://issues.apache.org/jira/browse/HADOOP-11323) | *Major* | **WritableComparator#compare keeps reference to byte array**
---

* [HADOOP-11322](https://issues.apache.org/jira/browse/HADOOP-11322) | *Major* | **key based ACL check in KMS always check KeyOpType.MANAGEMENT even actual KeyOpType is not MANAGEMENT**
---

* [HADOOP-11321](https://issues.apache.org/jira/browse/HADOOP-11321) | *Major* | **copyToLocal cannot save a file to an SMB share unless the user has Full Control permissions.**
---

* [HADOOP-11318](https://issues.apache.org/jira/browse/HADOOP-11318) | *Major* | **Update the document for hadoop fs -stat**
---

* [HADOOP-11316](https://issues.apache.org/jira/browse/HADOOP-11316) | *Blocker* | **"mvn package -Pdist,docs -DskipTests -Dtar" fails because of non-ascii characters**
---

* [HADOOP-11313](https://issues.apache.org/jira/browse/HADOOP-11313) | *Major* | **Adding a document about NativeLibraryChecker**
---

* [HADOOP-11312](https://issues.apache.org/jira/browse/HADOOP-11312) | *Major* | **Fix unit tests to not use uppercase key names**
---

* [HADOOP-11311](https://issues.apache.org/jira/browse/HADOOP-11311) | *Major* | **Restrict uppercase key names from being created with JCEKS**

Keys with uppercase names can no longer be created when using the JavaKeyStoreProvider to resolve ambiguity about case-sensitivity in the KeyStore spec.

---

* [HADOOP-11309](https://issues.apache.org/jira/browse/HADOOP-11309) | *Blocker* | **System class pattern package.Foo should match package.Foo$Bar, too**
---

* [HADOOP-11301](https://issues.apache.org/jira/browse/HADOOP-11301) | *Major* | **[optionally] update jmx cache to drop old metrics**
---

* [HADOOP-11300](https://issues.apache.org/jira/browse/HADOOP-11300) | *Major* | **KMS startup scripts must not display the keystore / truststore passwords**
---

* [HADOOP-11295](https://issues.apache.org/jira/browse/HADOOP-11295) | *Major* | **RPC Server Reader thread can't shutdown if RPCCallQueue is full**
---

* [HADOOP-11294](https://issues.apache.org/jira/browse/HADOOP-11294) | *Minor* | **Nfs3FileAttributes should not change the values of rdev, nlink and size in the constructor**
---

* [HADOOP-11291](https://issues.apache.org/jira/browse/HADOOP-11291) | *Minor* | **Log the cause of SASL connection failures**
---

* [HADOOP-11289](https://issues.apache.org/jira/browse/HADOOP-11289) | *Trivial* | **Fix typo in RpcUtil log message**
---

* [HADOOP-11287](https://issues.apache.org/jira/browse/HADOOP-11287) | *Major* | **Simplify UGI#reloginFromKeytab for Java 7+**
---

* [HADOOP-11283](https://issues.apache.org/jira/browse/HADOOP-11283) | *Minor* | **Potentially unclosed SequenceFile.Writer in DistCpV1#setup()**
---

* [HADOOP-11273](https://issues.apache.org/jira/browse/HADOOP-11273) | *Major* | **TestMiniKdc failure: login options not compatible with IBM JDK**
---

* [HADOOP-11272](https://issues.apache.org/jira/browse/HADOOP-11272) | *Major* | **Allow ZKSignerSecretProvider and ZKDelegationTokenSecretManager to use the same curator client**
---

* [HADOOP-11271](https://issues.apache.org/jira/browse/HADOOP-11271) | *Minor* | **Use Time.monotonicNow() in Shell.java instead of Time.now()**
---

* [HADOOP-11269](https://issues.apache.org/jira/browse/HADOOP-11269) | *Major* | **Add java 8 profile for hadoop-annotations**
---

* [HADOOP-11268](https://issues.apache.org/jira/browse/HADOOP-11268) | *Minor* | **Update BUILDING.txt to remove the workaround for tools.jar**
---

* [HADOOP-11267](https://issues.apache.org/jira/browse/HADOOP-11267) | *Minor* | **TestSecurityUtil fails when run with JDK8 because of empty principal names**
---

* [HADOOP-11266](https://issues.apache.org/jira/browse/HADOOP-11266) | *Trivial* | **Remove no longer supported activation properties for packaging from pom**
---

* [HADOOP-11261](https://issues.apache.org/jira/browse/HADOOP-11261) | *Major* | **Set custom endpoint for S3A**
---

* [HADOOP-11257](https://issues.apache.org/jira/browse/HADOOP-11257) | *Major* | **Update "hadoop jar" documentation to warn against using it for launching yarn jars**
---

* [HADOOP-11256](https://issues.apache.org/jira/browse/HADOOP-11256) | *Minor* | **Some site docs have inconsistent appearance**
---

* [HADOOP-11248](https://issues.apache.org/jira/browse/HADOOP-11248) | *Major* | **Add hadoop configuration to disable Azure Filesystem metrics collection**
---

* [HADOOP-11246](https://issues.apache.org/jira/browse/HADOOP-11246) | *Major* | **Move jenkins to Java 7**
---

* [HADOOP-11236](https://issues.apache.org/jira/browse/HADOOP-11236) | *Trivial* | **NFS: Fix javadoc warning in RpcProgram.java**
---

* [HADOOP-11231](https://issues.apache.org/jira/browse/HADOOP-11231) | *Minor* | **Remove dead code in ServletUtil**
---

* [HADOOP-11230](https://issues.apache.org/jira/browse/HADOOP-11230) | *Major* | **Add missing dependency of bouncycastle for kms, httpfs, hdfs, MR and YARN**
---

* [HADOOP-11213](https://issues.apache.org/jira/browse/HADOOP-11213) | *Minor* | **Typos in html pages: SecureMode and EncryptedShuffle**
---

* [HADOOP-11211](https://issues.apache.org/jira/browse/HADOOP-11211) | *Major* | **mapreduce.job.classloader.system.classes semantics should be order-independent**
---

* [HADOOP-11209](https://issues.apache.org/jira/browse/HADOOP-11209) | *Major* | **Configuration#updatingResource/finalParameters are not thread-safe**
---

* [HADOOP-11201](https://issues.apache.org/jira/browse/HADOOP-11201) | *Blocker* | **Hadoop Archives should support globs resolving to files**
---

* [HADOOP-11188](https://issues.apache.org/jira/browse/HADOOP-11188) | *Major* | **hadoop-azure: automatically expand page blobs when they become full**
---

* [HADOOP-11187](https://issues.apache.org/jira/browse/HADOOP-11187) | *Major* | **NameNode - KMS communication fails after a long period of inactivity**
---

* [HADOOP-11186](https://issues.apache.org/jira/browse/HADOOP-11186) | *Minor* | **documentation should talk about hadoop.htrace.spanreceiver.classes, not hadoop.trace.spanreceiver.classes**
---

* [HADOOP-11183](https://issues.apache.org/jira/browse/HADOOP-11183) | *Major* | **Memory-based S3AOutputstream**
---

* [HADOOP-11173](https://issues.apache.org/jira/browse/HADOOP-11173) | *Minor* | **Improve error messages for some KeyShell commands**
---

* [HADOOP-11172](https://issues.apache.org/jira/browse/HADOOP-11172) | *Major* | **Improve error message in Shell#runCommand on OutOfMemoryError**
---

* [HADOOP-11171](https://issues.apache.org/jira/browse/HADOOP-11171) | *Major* | **Enable using a proxy server to connect to S3a.**
---

* [HADOOP-11166](https://issues.apache.org/jira/browse/HADOOP-11166) | *Major* | **Remove ulimit from test-patch.sh**
---

* [HADOOP-11165](https://issues.apache.org/jira/browse/HADOOP-11165) | *Minor* | **TestUTF8 fails when run against java 8**
---

* [HADOOP-11157](https://issues.apache.org/jira/browse/HADOOP-11157) | *Major* | **ZKDelegationTokenSecretManager never shuts down listenerThreadPool**
---

* [HADOOP-11156](https://issues.apache.org/jira/browse/HADOOP-11156) | *Major* | **DelegateToFileSystem should implement getFsStatus(final Path f).**
---

* [HADOOP-11125](https://issues.apache.org/jira/browse/HADOOP-11125) | *Major* | **Remove redundant tests in TestOsSecureRandom**
---

* [HADOOP-11045](https://issues.apache.org/jira/browse/HADOOP-11045) | *Major* | **Introducing a tool to detect flaky tests of hadoop jenkins test job**
---

* [HADOOP-11039](https://issues.apache.org/jira/browse/HADOOP-11039) | *Minor* | **ByteBufferReadable API doc is inconsistent with the implementations.**
---

* [HADOOP-11032](https://issues.apache.org/jira/browse/HADOOP-11032) | *Major* | **Replace use of Guava's Stopwatch with Hadoop's StopWatch**
---

* [HADOOP-11008](https://issues.apache.org/jira/browse/HADOOP-11008) | *Minor* | **Remove duplicated description about proxy-user in site documents**
---

* [HADOOP-11000](https://issues.apache.org/jira/browse/HADOOP-11000) | *Major* | **HAServiceProtocol's health state is incorrectly transitioned to SERVICE\_NOT\_RESPONDING**
---

* [HADOOP-10987](https://issues.apache.org/jira/browse/HADOOP-10987) | *Major* | **Provide an iterator-based listing API for FileSystem**
---

* [HADOOP-10976](https://issues.apache.org/jira/browse/HADOOP-10976) | *Minor* | **moving the source code of hadoop-tools docs to the directory under hadoop-tools**
---

* [HADOOP-10953](https://issues.apache.org/jira/browse/HADOOP-10953) | *Minor* | **NetworkTopology#add calls NetworkTopology#toString without holding the netlock**
---

* [HADOOP-10852](https://issues.apache.org/jira/browse/HADOOP-10852) | *Major* | **NetgroupCache is not thread-safe**
---

* [HADOOP-10847](https://issues.apache.org/jira/browse/HADOOP-10847) | *Minor* | **Remove the usage of sun.security.x509.* in testing code**
---

* [HADOOP-10840](https://issues.apache.org/jira/browse/HADOOP-10840) | *Major* | **Fix OutOfMemoryError caused by metrics system in Azure File System**
---

* [HADOOP-10809](https://issues.apache.org/jira/browse/HADOOP-10809) | *Major* | **hadoop-azure: page blob support**
---

* [HADOOP-10786](https://issues.apache.org/jira/browse/HADOOP-10786) | *Major* | **Fix UGI#reloginFromKeytab on Java 8**
---

* [HADOOP-10748](https://issues.apache.org/jira/browse/HADOOP-10748) | *Major* | **HttpServer2 should not load JspServlet**
---

* [HADOOP-10728](https://issues.apache.org/jira/browse/HADOOP-10728) | *Major* | **Metrics system for Windows Azure Storage Filesystem**
---

* [HADOOP-10717](https://issues.apache.org/jira/browse/HADOOP-10717) | *Blocker* | **HttpServer2 should load jsp DTD from local jars instead of going remote**
---

* [HADOOP-10714](https://issues.apache.org/jira/browse/HADOOP-10714) | *Critical* | **AmazonS3Client.deleteObjects() need to be limited to 1000 entries per call**
---

* [HADOOP-10703](https://issues.apache.org/jira/browse/HADOOP-10703) | *Major* | **HttpServer2 creates multiple authentication filters**
---

* [HADOOP-10690](https://issues.apache.org/jira/browse/HADOOP-10690) | *Minor* | **Lack of synchronization on access to InputStream in NativeAzureFileSystem#NativeAzureFsInputStream#close()**
---

* [HADOOP-10689](https://issues.apache.org/jira/browse/HADOOP-10689) | *Minor* | **InputStream is not closed in AzureNativeFileSystemStore#retrieve()**
---

* [HADOOP-10668](https://issues.apache.org/jira/browse/HADOOP-10668) | *Major* | **TestZKFailoverControllerStress#testExpireBackAndForth occasionally fails**
---

* [HADOOP-10651](https://issues.apache.org/jira/browse/HADOOP-10651) | *Major* | **Add ability to restrict service access using IP addresses and hostnames**
---

* [HADOOP-10626](https://issues.apache.org/jira/browse/HADOOP-10626) | *Major* | **Limit Returning Attributes for LDAP search**
---

* [HADOOP-10574](https://issues.apache.org/jira/browse/HADOOP-10574) | *Major* | **Bump the maven plugin versions too -moving the numbers into properties**
---

* [HADOOP-10563](https://issues.apache.org/jira/browse/HADOOP-10563) | *Major* | **Remove the dependency of jsp in trunk**
---

* [HADOOP-10530](https://issues.apache.org/jira/browse/HADOOP-10530) | *Blocker* | **Make hadoop trunk build on Java7+ only**
---

* [HADOOP-10525](https://issues.apache.org/jira/browse/HADOOP-10525) | *Minor* | **Remove DRFA.MaxBackupIndex config from log4j.properties**
---

* [HADOOP-10482](https://issues.apache.org/jira/browse/HADOOP-10482) | *Major* | **Fix various findbugs warnings in hadoop-common**
---

* [HADOOP-10478](https://issues.apache.org/jira/browse/HADOOP-10478) | *Major* | **Fix new findbugs warnings in hadoop-maven-plugins**
---

* [HADOOP-10476](https://issues.apache.org/jira/browse/HADOOP-10476) | *Major* | **Bumping the findbugs version to 3.0.0**
---

* [HADOOP-10181](https://issues.apache.org/jira/browse/HADOOP-10181) | *Minor* | **GangliaContext does not work with multicast ganglia setup**

Hadoop metrics sent to Ganglia over multicast now support optional configuration of socket TTL.  The default TTL is 1, which preserves the behavior of prior Hadoop versions.  Clusters that span multiple subnets/VLANs will likely want to increase this.

---

* [HADOOP-10140](https://issues.apache.org/jira/browse/HADOOP-10140) | *Minor* | **Specification of HADOOP\_CONF\_DIR via the environment in hadoop\_config.cmd**
---

* [HADOOP-10134](https://issues.apache.org/jira/browse/HADOOP-10134) | *Minor* | **[JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments**
---

* [HADOOP-10062](https://issues.apache.org/jira/browse/HADOOP-10062) | *Major* | **race condition in MetricsSystemImpl#publishMetricsNow that causes incorrect results**
---

* [HADOOP-9992](https://issues.apache.org/jira/browse/HADOOP-9992) | *Major* | **Modify the NN loadGenerator to optionally run as a MapReduce job**
---

* [HADOOP-9922](https://issues.apache.org/jira/browse/HADOOP-9922) | *Major* | **hadoop windows native build will fail in 32 bit machine**

The Hadoop Common native components now support 32-bit build targets on Windows.

---

* [HADOOP-9907](https://issues.apache.org/jira/browse/HADOOP-9907) | *Critical* | **Webapp http://hostname:port/metrics  link is not working**
---

* [HADOOP-9869](https://issues.apache.org/jira/browse/HADOOP-9869) | *Minor* | ** Configuration.getSocketAddr()/getEnum() should use getTrimmed()**
---

* [HADOOP-9629](https://issues.apache.org/jira/browse/HADOOP-9629) | *Major* | **Support Windows Azure Storage - Blob as a file system in Hadoop**

Hadoop now supports integration with Azure Storage as an alternative Hadoop Compatible File System.

---

* [HADOOP-9329](https://issues.apache.org/jira/browse/HADOOP-9329) | *Trivial* | **document native build dependencies in BUILDING.txt**

Added a section to BUILDING.txt on how to install required / optional packages on a clean install of Ubuntu 14.04 LTS Desktop.

Went through the CMakeLists.txt files in the repo and added the following optional library dependencies - Snappy, Bzip2, Linux FUSE and Jansson.

Updated the required packages / version numbers from the trunk branch version of BUILDING.txt.

---

* [HADOOP-9137](https://issues.apache.org/jira/browse/HADOOP-9137) | *Major* | **Support connection limiting in IPC server**
---

* [HADOOP-9087](https://issues.apache.org/jira/browse/HADOOP-9087) | *Minor* | **Queue size metric for metric sinks isn't actually maintained**
---

* [HADOOP-8989](https://issues.apache.org/jira/browse/HADOOP-8989) | *Major* | **hadoop fs -find feature**

New fs -find command

---

* [HADOOP-8757](https://issues.apache.org/jira/browse/HADOOP-8757) | *Minor* | **Metrics should disallow names with invalid characters**
---

* [HADOOP-8642](https://issues.apache.org/jira/browse/HADOOP-8642) | *Major* | **Document that io.native.lib.available only controls native bz2 and zlib compression codecs**
---

* [HADOOP-8059](https://issues.apache.org/jira/browse/HADOOP-8059) | *Major* | **Add javadoc to InterfaceAudience and InterfaceStability**
---

* [HADOOP-7984](https://issues.apache.org/jira/browse/HADOOP-7984) | *Minor* | **Add hadoop --loglevel option to change log level**
---

* [HADOOP-6221](https://issues.apache.org/jira/browse/HADOOP-6221) | *Minor* | **RPC Client operations cannot be interrupted**
---

* [HADOOP-4297](https://issues.apache.org/jira/browse/HADOOP-4297) | *Major* | **Enable Java assertions when running tests**


