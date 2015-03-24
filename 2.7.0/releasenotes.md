# Hadoop  2.7.0 Release Notes

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
---

* [HDFS-7962](https://issues.apache.org/jira/browse/HDFS-7962) | *Minor* | **Remove duplicated logs in BlockManager**
---

* [HDFS-7957](https://issues.apache.org/jira/browse/HDFS-7957) | *Critical* | **Truncate should verify quota before making changes**
---

* [HDFS-7953](https://issues.apache.org/jira/browse/HDFS-7953) | *Minor* | **NN Web UI fails to navigate to paths that contain #**
---

* [HDFS-7951](https://issues.apache.org/jira/browse/HDFS-7951) | *Major* | **Fix NPE for TestFsDatasetImpl#testAddVolumeFailureReleasesInUseLock on Linux**
---

* [HDFS-7950](https://issues.apache.org/jira/browse/HDFS-7950) | *Major* | **Fix TestFsDatasetImpl#testAddVolumes failure on Windows**
---

* [HDFS-7948](https://issues.apache.org/jira/browse/HDFS-7948) | *Major* | **TestDataNodeHotSwapVolumes#testAddVolumeFailures failed on Windows**
---

* [HDFS-7946](https://issues.apache.org/jira/browse/HDFS-7946) | *Major* | **TestDataNodeVolumeFailureReporting NPE on Windows**
---

* [HDFS-7945](https://issues.apache.org/jira/browse/HDFS-7945) | *Blocker* | **The WebHdfs system on DN does not honor the length parameter**
---

* [HDFS-7943](https://issues.apache.org/jira/browse/HDFS-7943) | *Blocker* | **Append cannot handle the last block with length greater than the preferred block size**
---

* [HDFS-7942](https://issues.apache.org/jira/browse/HDFS-7942) | *Major* | **NFS: support regexp grouping in nfs.exports.allowed.hosts**
---

* [HDFS-7940](https://issues.apache.org/jira/browse/HDFS-7940) | *Major* | **Add tracing to DFSClient#setQuotaByStorageType**
---

* [HDFS-7932](https://issues.apache.org/jira/browse/HDFS-7932) | *Major* | **Speed up the shutdown of datanode during rolling upgrade**
---

* [HDFS-7930](https://issues.apache.org/jira/browse/HDFS-7930) | *Blocker* | **commitBlockSynchronization() does not remove locations**
---

* [HDFS-7929](https://issues.apache.org/jira/browse/HDFS-7929) | *Major* | **inotify unable fetch pre-upgrade edit log segments once upgrade starts**
---

* [HDFS-7926](https://issues.apache.org/jira/browse/HDFS-7926) | *Major* | **NameNode implementation of ClientProtocol.truncate(..) is not idempotent**
---

* [HDFS-7917](https://issues.apache.org/jira/browse/HDFS-7917) | *Minor* | **Use file to replace data dirs in test to simulate a disk failure.**
---

* [HDFS-7915](https://issues.apache.org/jira/browse/HDFS-7915) | *Major* | **The DataNode can sometimes allocate a ShortCircuitShm slot and fail to tell the DFSClient about it because of a network error**
---

* [HDFS-7914](https://issues.apache.org/jira/browse/HDFS-7914) | *Major* | **TestJournalNode#testFailToStartWithBadConfig fails when the default dfs.journalnode.http-address port 8480 is in use**
---

* [HDFS-7903](https://issues.apache.org/jira/browse/HDFS-7903) | *Blocker* | **Cannot recover block after truncate and delete snapshot**
---

* [HDFS-7898](https://issues.apache.org/jira/browse/HDFS-7898) | *Minor* | **Change TestAppendSnapshotTruncate to fail-fast**
---

* [HDFS-7886](https://issues.apache.org/jira/browse/HDFS-7886) | *Minor* | **TestFileTruncate#testTruncateWithDataNodesRestart runs timeout sometimes**
---

* [HDFS-7885](https://issues.apache.org/jira/browse/HDFS-7885) | *Critical* | **Datanode should not trust the generation stamp provided by client**
---

* [HDFS-7881](https://issues.apache.org/jira/browse/HDFS-7881) | *Blocker* | **TestHftpFileSystem#testSeek fails in branch-2**
---

* [HDFS-7880](https://issues.apache.org/jira/browse/HDFS-7880) | *Blocker* | **Remove the tests for legacy Web UI in branch-2**
---

* [HDFS-7879](https://issues.apache.org/jira/browse/HDFS-7879) | *Major* | **hdfs.dll does not export functions of the public libhdfs API**
---

* [HDFS-7871](https://issues.apache.org/jira/browse/HDFS-7871) | *Critical* | **NameNodeEditLogRoller can keep printing "Swallowing exception" message**
---

* [HDFS-7869](https://issues.apache.org/jira/browse/HDFS-7869) | *Major* | **Inconsistency in the return information while performing rolling upgrade**
---

* [HDFS-7855](https://issues.apache.org/jira/browse/HDFS-7855) | *Major* | **Separate class Packet from DFSOutputStream**
---

* [HDFS-7849](https://issues.apache.org/jira/browse/HDFS-7849) | *Minor* | **Update documentation for enabling a new feature in rolling upgrade**
---

* [HDFS-7843](https://issues.apache.org/jira/browse/HDFS-7843) | *Blocker* | **A truncated file is corrupted after rollback from a rolling upgrade**
---

* [HDFS-7838](https://issues.apache.org/jira/browse/HDFS-7838) | *Major* | **Expose truncate API for libhdfs**
---

* [HDFS-7832](https://issues.apache.org/jira/browse/HDFS-7832) | *Major* | **Show 'Last Modified' in Namenode's 'Browse Filesystem'**
---

* [HDFS-7831](https://issues.apache.org/jira/browse/HDFS-7831) | *Major* | **Fix the starting index and end condition of the loop in FileDiffList.findEarlierSnapshotBlocks()**
---

* [HDFS-7830](https://issues.apache.org/jira/browse/HDFS-7830) | *Major* | **DataNode does not release the volume lock when adding a volume fails.**
---

* [HDFS-7819](https://issues.apache.org/jira/browse/HDFS-7819) | *Major* | **Log WARN message for the blocks which are not in Block ID based layout**
---

* [HDFS-7818](https://issues.apache.org/jira/browse/HDFS-7818) | *Blocker* | **OffsetParam should return the default value instead of throwing NPE when the value is unspecified**
---

* [HDFS-7816](https://issues.apache.org/jira/browse/HDFS-7816) | *Blocker* | **Unable to open webhdfs paths with "+"**
---

* [HDFS-7814](https://issues.apache.org/jira/browse/HDFS-7814) | *Minor* | **Fix usage string of storageType parameter for "dfsadmin -setSpaceQuota/clrSpaceQuota"**
---

* [HDFS-7813](https://issues.apache.org/jira/browse/HDFS-7813) | *Major* | **TestDFSHAAdminMiniCluster#testFencer testcase is failing frequently**
---

* [HDFS-7808](https://issues.apache.org/jira/browse/HDFS-7808) | *Minor* | **Remove obsolete -ns options in in DFSHAAdmin.java**
---

* [HDFS-7807](https://issues.apache.org/jira/browse/HDFS-7807) | *Major* | **libhdfs htable.c: fix htable resizing, add unit test**
---

* [HDFS-7806](https://issues.apache.org/jira/browse/HDFS-7806) | *Minor* | **Refactor: move StorageType from hadoop-hdfs to hadoop-common**

This fix moves the public class StorageType from the package org.apache.hadoop.hdfs to org.apache.hadoop.fs.

---

* [HDFS-7805](https://issues.apache.org/jira/browse/HDFS-7805) | *Major* | **NameNode recovery prompt should be printed on console**
---

* [HDFS-7798](https://issues.apache.org/jira/browse/HDFS-7798) | *Critical* | **Checkpointing failure caused by shared KerberosAuthenticator**
---

* [HDFS-7797](https://issues.apache.org/jira/browse/HDFS-7797) | *Major* | **Add audit log for setQuota operation**
---

* [HDFS-7795](https://issues.apache.org/jira/browse/HDFS-7795) | *Minor* | **Show warning if not all favored nodes were chosen by namenode**
---

* [HDFS-7790](https://issues.apache.org/jira/browse/HDFS-7790) | *Minor* | **Do not create optional fields in DFSInputStream unless they are needed**
---

* [HDFS-7789](https://issues.apache.org/jira/browse/HDFS-7789) | *Major* | **DFSck should resolve the path to support cross-FS symlinks**
---

* [HDFS-7788](https://issues.apache.org/jira/browse/HDFS-7788) | *Blocker* | **Post-2.6 namenode may not start up with an image containing inodes created with an old release.**
---

* [HDFS-7785](https://issues.apache.org/jira/browse/HDFS-7785) | *Major* | **Improve diagnostics information for HttpPutFailedException**
---

* [HDFS-7780](https://issues.apache.org/jira/browse/HDFS-7780) | *Minor* | **Update use of Iterator to Iterable in DataXceiverServer and SnapshotDiffInfo**
---

* [HDFS-7778](https://issues.apache.org/jira/browse/HDFS-7778) | *Major* | **Rename FsVolumeListTest to TestFsVolumeList and commit it to branch-2**
---

* [HDFS-7776](https://issues.apache.org/jira/browse/HDFS-7776) | *Major* | **Adding additional unit tests for Quota By Storage Type**
---

* [HDFS-7775](https://issues.apache.org/jira/browse/HDFS-7775) | *Minor* | **Use consistent naming for NN-internal quota related types and functions**
---

* [HDFS-7774](https://issues.apache.org/jira/browse/HDFS-7774) | *Critical* | **Unresolved symbols error while compiling HDFS on Windows 7/32 bit**

LibHDFS now supports 32-bit build targets on Windows.

---

* [HDFS-7773](https://issues.apache.org/jira/browse/HDFS-7773) | *Major* | **Additional metrics in HDFS to be accessed via jmx.**
---

* [HDFS-7772](https://issues.apache.org/jira/browse/HDFS-7772) | *Trivial* | **Document hdfs balancer -exclude/-include option in HDFSCommands.html**
---

* [HDFS-7771](https://issues.apache.org/jira/browse/HDFS-7771) | *Major* | **fuse\_dfs should permit FILE: on the front of KRB5CCNAME**
---

* [HDFS-7769](https://issues.apache.org/jira/browse/HDFS-7769) | *Trivial* | **TestHDFSCLI create files in hdfs project root dir**
---

* [HDFS-7763](https://issues.apache.org/jira/browse/HDFS-7763) | *Major* | **fix zkfc hung issue due to not catching exception in a corner case**
---

* [HDFS-7761](https://issues.apache.org/jira/browse/HDFS-7761) | *Minor* | **cleanup unnecssary code logic in LocatedBlock**
---

* [HDFS-7760](https://issues.apache.org/jira/browse/HDFS-7760) | *Minor* | **Document truncate for WebHDFS.**
---

* [HDFS-7757](https://issues.apache.org/jira/browse/HDFS-7757) | *Major* | **Misleading error messages in FSImage.java**
---

* [HDFS-7756](https://issues.apache.org/jira/browse/HDFS-7756) | *Major* | **Restore method signature for LocatedBlock#getLocations()**
---

* [HDFS-7753](https://issues.apache.org/jira/browse/HDFS-7753) | *Major* | **Fix Multithreaded correctness Warnings in BackupImage.java**
---

* [HDFS-7752](https://issues.apache.org/jira/browse/HDFS-7752) | *Minor* | **Improve description for "dfs.namenode.num.extra.edits.retained" and "dfs.namenode.num.checkpoints.retained" properties on hdfs-default.xml**
---

* [HDFS-7746](https://issues.apache.org/jira/browse/HDFS-7746) | *Minor* | **Add a test randomly mixing append, truncate and snapshot**
---

* [HDFS-7744](https://issues.apache.org/jira/browse/HDFS-7744) | *Major* | **Fix potential NPE in DFSInputStream after setDropBehind or setReadahead is called**
---

* [HDFS-7743](https://issues.apache.org/jira/browse/HDFS-7743) | *Minor* | **Code cleanup of BlockInfo and rename BlockInfo to BlockInfoContiguous**
---

* [HDFS-7741](https://issues.apache.org/jira/browse/HDFS-7741) | *Minor* | **Remove unnecessary synchronized in FSDataInputStream and HdfsDataInputStream**
---

* [HDFS-7740](https://issues.apache.org/jira/browse/HDFS-7740) | *Major* | **Test truncate with DataNodes restarting**
---

* [HDFS-7738](https://issues.apache.org/jira/browse/HDFS-7738) | *Minor* | **Add more tests for truncate**
---

* [HDFS-7734](https://issues.apache.org/jira/browse/HDFS-7734) | *Blocker* | **Class cast exception in NameNode#main**
---

* [HDFS-7732](https://issues.apache.org/jira/browse/HDFS-7732) | *Trivial* | **Fix the order of the parameters in DFSConfigKeys**
---

* [HDFS-7723](https://issues.apache.org/jira/browse/HDFS-7723) | *Major* | **Quota By Storage Type namenode implemenation**
---

* [HDFS-7722](https://issues.apache.org/jira/browse/HDFS-7722) | *Major* | **DataNode#checkDiskError should also remove Storage when error is found.**
---

* [HDFS-7721](https://issues.apache.org/jira/browse/HDFS-7721) | *Major* | **The HDFS BlockScanner may run fast during the first hour**
---

* [HDFS-7720](https://issues.apache.org/jira/browse/HDFS-7720) | *Major* | **Quota by Storage Type API, tools and ClientNameNode Protocol changes**
---

* [HDFS-7719](https://issues.apache.org/jira/browse/HDFS-7719) | *Major* | **BlockPoolSliceStorage#removeVolumes fails to remove some in-memory state associated with volumes**
---

* [HDFS-7718](https://issues.apache.org/jira/browse/HDFS-7718) | *Major* | **Store KeyProvider in ClientContext to avoid leaking key provider threads when using FileContext**
---

* [HDFS-7714](https://issues.apache.org/jira/browse/HDFS-7714) | *Major* | **Simultaneous restart of HA NameNodes and DataNode can cause DataNode to register successfully with only one NameNode.**
---

* [HDFS-7710](https://issues.apache.org/jira/browse/HDFS-7710) | *Minor* | **Remove dead code in BackupImage.java**
---

* [HDFS-7709](https://issues.apache.org/jira/browse/HDFS-7709) | *Major* | **Fix findbug warnings in httpfs**
---

* [HDFS-7707](https://issues.apache.org/jira/browse/HDFS-7707) | *Major* | **Edit log corruption due to delayed block removal again**
---

* [HDFS-7706](https://issues.apache.org/jira/browse/HDFS-7706) | *Minor* | **Switch BlockManager logging to use slf4j**
---

* [HDFS-7704](https://issues.apache.org/jira/browse/HDFS-7704) | *Major* | **DN heartbeat to Active NN may be blocked and expire if connection to Standby NN continues to time out.**
---

* [HDFS-7703](https://issues.apache.org/jira/browse/HDFS-7703) | *Major* | **Support favouredNodes for the append for new blocks**
---

* [HDFS-7698](https://issues.apache.org/jira/browse/HDFS-7698) | *Major* | **Fix locking on HDFS read statistics and add a method for clearing them.**
---

* [HDFS-7697](https://issues.apache.org/jira/browse/HDFS-7697) | *Major* | **Mark the PB OIV tool as experimental**
---

* [HDFS-7696](https://issues.apache.org/jira/browse/HDFS-7696) | *Minor* | **FsDatasetImpl.getTmpInputStreams(..) may leak file descriptors**
---

* [HDFS-7694](https://issues.apache.org/jira/browse/HDFS-7694) | *Major* | **FSDataInputStream should support "unbuffer"**
---

* [HDFS-7686](https://issues.apache.org/jira/browse/HDFS-7686) | *Blocker* | **Re-add rapid rescan of possibly corrupt block feature to the block scanner**
---

* [HDFS-7685](https://issues.apache.org/jira/browse/HDFS-7685) | *Minor* | **Document dfs.namenode.heartbeat.recheck-interval in hdfs-default.xml**
---

* [HDFS-7684](https://issues.apache.org/jira/browse/HDFS-7684) | *Major* | **The host:port settings of the daemons should be trimmed before use**
---

* [HDFS-7683](https://issues.apache.org/jira/browse/HDFS-7683) | *Minor* | **Combine usages and percent stats in NameNode UI**
---

* [HDFS-7682](https://issues.apache.org/jira/browse/HDFS-7682) | *Major* | **{{DistributedFileSystem#getFileChecksum}} of a snapshotted file includes non-snapshotted content**
---

* [HDFS-7681](https://issues.apache.org/jira/browse/HDFS-7681) | *Major* | **Fix ReplicaInputStream constructor to take InputStreams**
---

* [HDFS-7677](https://issues.apache.org/jira/browse/HDFS-7677) | *Major* | **DistributedFileSystem#truncate should resolve symlinks**
---

* [HDFS-7676](https://issues.apache.org/jira/browse/HDFS-7676) | *Major* | **Fix TestFileTruncate to avoid bug of HDFS-7611**
---

* [HDFS-7675](https://issues.apache.org/jira/browse/HDFS-7675) | *Trivial* | **Remove unused member DFSClient#spanReceiverHost**
---

* [HDFS-7668](https://issues.apache.org/jira/browse/HDFS-7668) | *Major* | **Convert site documentation from apt to markdown**
---

* [HDFS-7660](https://issues.apache.org/jira/browse/HDFS-7660) | *Minor* | **BlockReceiver#close() might be called multiple times, which causes the fsvolume reference being released incorrectly.**
---

* [HDFS-7659](https://issues.apache.org/jira/browse/HDFS-7659) | *Major* | **We should check the new length of truncate can't be a negative value.**
---

* [HDFS-7656](https://issues.apache.org/jira/browse/HDFS-7656) | *Major* | **Expose truncate API for HDFS httpfs**
---

* [HDFS-7655](https://issues.apache.org/jira/browse/HDFS-7655) | *Major* | **Expose truncate API for Web HDFS**
---

* [HDFS-7647](https://issues.apache.org/jira/browse/HDFS-7647) | *Major* | **DatanodeManager.sortLocatedBlocks sorts DatanodeInfos but not StorageIDs**
---

* [HDFS-7644](https://issues.apache.org/jira/browse/HDFS-7644) | *Trivial* | **minor typo in HttpFS doc**
---

* [HDFS-7643](https://issues.apache.org/jira/browse/HDFS-7643) | *Major* | **Test case to ensure lazy persist files cannot be truncated**
---

* [HDFS-7641](https://issues.apache.org/jira/browse/HDFS-7641) | *Minor* | **Update archival storage user doc for list/set/get block storage policies**
---

* [HDFS-7640](https://issues.apache.org/jira/browse/HDFS-7640) | *Trivial* | **print NFS Client in the NFS log**
---

* [HDFS-7638](https://issues.apache.org/jira/browse/HDFS-7638) | *Major* | **Small fix and few refinements for FSN#truncate**
---

* [HDFS-7637](https://issues.apache.org/jira/browse/HDFS-7637) | *Minor* | **Fix the check condition for reserved path**
---

* [HDFS-7635](https://issues.apache.org/jira/browse/HDFS-7635) | *Minor* | **Remove TestCorruptFilesJsp from branch-2.**
---

* [HDFS-7634](https://issues.apache.org/jira/browse/HDFS-7634) | *Major* | **Disallow truncation of Lazy persist files**
---

* [HDFS-7632](https://issues.apache.org/jira/browse/HDFS-7632) | *Major* | **MiniDFSCluster configures DataNode data directories incorrectly if using more than 1 DataNode and more than 2 storage locations per DataNode.**
---

* [HDFS-7623](https://issues.apache.org/jira/browse/HDFS-7623) | *Major* | **Add htrace configuration properties to core-default.xml and update user doc about how to enable htrace**
---

* [HDFS-7615](https://issues.apache.org/jira/browse/HDFS-7615) | *Major* | **Remove longReadLock**
---

* [HDFS-7611](https://issues.apache.org/jira/browse/HDFS-7611) | *Critical* | **deleteSnapshot and delete of a file can leave orphaned blocks in the blocksMap on NameNode restart.**
---

* [HDFS-7610](https://issues.apache.org/jira/browse/HDFS-7610) | *Major* | **Fix removal of dynamically added DN volumes**
---

* [HDFS-7606](https://issues.apache.org/jira/browse/HDFS-7606) | *Minor* | **Missing null check in INodeFile#getBlocks()**
---

* [HDFS-7604](https://issues.apache.org/jira/browse/HDFS-7604) | *Major* | **Track and display failed DataNode storage locations in NameNode.**
---

* [HDFS-7603](https://issues.apache.org/jira/browse/HDFS-7603) | *Critical* | **The background replication queue initialization may not let others run**
---

* [HDFS-7600](https://issues.apache.org/jira/browse/HDFS-7600) | *Major* | **Refine hdfs admin classes to reuse common code**
---

* [HDFS-7598](https://issues.apache.org/jira/browse/HDFS-7598) | *Minor* | **Remove dependency on old version of Guava in TestDFSClientCache#testEviction**
---

* [HDFS-7596](https://issues.apache.org/jira/browse/HDFS-7596) | *Major* | **NameNode should prune dead storages from storageMap**
---

* [HDFS-7591](https://issues.apache.org/jira/browse/HDFS-7591) | *Minor* | **hdfs classpath command should support same options as hadoop classpath.**
---

* [HDFS-7589](https://issues.apache.org/jira/browse/HDFS-7589) | *Major* | **Break the dependency between libnative\_mini\_dfs and libhdfs**
---

* [HDFS-7587](https://issues.apache.org/jira/browse/HDFS-7587) | *Blocker* | **Edit log corruption can happen if append fails with a quota violation**
---

* [HDFS-7585](https://issues.apache.org/jira/browse/HDFS-7585) | *Major* | **Get TestEnhancedByteBufferAccess working on CPU architectures with page sizes other than 4096**
---

* [HDFS-7584](https://issues.apache.org/jira/browse/HDFS-7584) | *Major* | **Enable Quota Support for Storage Types**

1. Introduced quota by storage type as a hard limit on the amount of space usage allowed for different storage types (SSD, DISK, ARCHIVE) under the target directory.
2. Added {{SetQuotaByStorageType}} API and {{-storagetype}} option for  {{hdfs dfsadmin -setSpaceQuota/-clrSpaceQuota}} commands to allow set/clear quota by storage type under the target directory.

---

* [HDFS-7583](https://issues.apache.org/jira/browse/HDFS-7583) | *Minor* | **Fix findbug in TransferFsImage.java**
---

* [HDFS-7579](https://issues.apache.org/jira/browse/HDFS-7579) | *Minor* | **Improve log reporting during block report rpc failure**
---

* [HDFS-7575](https://issues.apache.org/jira/browse/HDFS-7575) | *Critical* | **Upgrade should generate a unique storage ID for each volume**
---

* [HDFS-7573](https://issues.apache.org/jira/browse/HDFS-7573) | *Major* | **Consolidate the implementation of delete() into a single class**
---

* [HDFS-7572](https://issues.apache.org/jira/browse/HDFS-7572) | *Major* | **TestLazyPersistFiles#testDnRestartWithSavedReplicas is flaky on Windows**
---

* [HDFS-7566](https://issues.apache.org/jira/browse/HDFS-7566) | *Major* | **Remove obsolete entries from hdfs-default.xml**
---

* [HDFS-7564](https://issues.apache.org/jira/browse/HDFS-7564) | *Minor* | **NFS gateway dynamically reload UID/GID mapping file /etc/nfs.map**
---

* [HDFS-7563](https://issues.apache.org/jira/browse/HDFS-7563) | *Major* | **NFS gateway parseStaticMap NumberFormatException**
---

* [HDFS-7561](https://issues.apache.org/jira/browse/HDFS-7561) | *Major* | **TestFetchImage should write fetched-image-dir under target.**
---

* [HDFS-7560](https://issues.apache.org/jira/browse/HDFS-7560) | *Critical* | **ACLs removed by removeDefaultAcl() will be back after NameNode restart/failover**
---

* [HDFS-7557](https://issues.apache.org/jira/browse/HDFS-7557) | *Minor* | **Fix spacing for a few keys in DFSConfigKeys.java**
---

* [HDFS-7555](https://issues.apache.org/jira/browse/HDFS-7555) | *Major* | **Remove the support of unmanaged connectors in HttpServer2**
---

* [HDFS-7552](https://issues.apache.org/jira/browse/HDFS-7552) | *Major* | **change FsVolumeList toString() to fix TestDataNodeVolumeFailureToleration**
---

* [HDFS-7548](https://issues.apache.org/jira/browse/HDFS-7548) | *Major* | **Corrupt block reporting delayed until datablock scanner thread detects it**
---

* [HDFS-7543](https://issues.apache.org/jira/browse/HDFS-7543) | *Major* | **Avoid path resolution when getting FileStatus for audit logs**
---

* [HDFS-7537](https://issues.apache.org/jira/browse/HDFS-7537) | *Major* | **fsck is confusing when dfs.namenode.replication.min > 1 && missing replicas && NN restart**
---

* [HDFS-7536](https://issues.apache.org/jira/browse/HDFS-7536) | *Minor* | **Remove unused CryptoCodec in org.apache.hadoop.fs.Hdfs**
---

* [HDFS-7535](https://issues.apache.org/jira/browse/HDFS-7535) | *Major* | **Utilize Snapshot diff report for distcp**
---

* [HDFS-7533](https://issues.apache.org/jira/browse/HDFS-7533) | *Major* | **Datanode sometimes does not shutdown on receiving upgrade shutdown command**
---

* [HDFS-7531](https://issues.apache.org/jira/browse/HDFS-7531) | *Major* | **Improve the concurrent access on FsVolumeList**
---

* [HDFS-7530](https://issues.apache.org/jira/browse/HDFS-7530) | *Minor* | **Allow renaming of encryption zone roots**
---

* [HDFS-7528](https://issues.apache.org/jira/browse/HDFS-7528) | *Major* | **Consolidate symlink-related implementation into a single class**
---

* [HDFS-7517](https://issues.apache.org/jira/browse/HDFS-7517) | *Major* | **Remove redundant non-null checks in FSNamesystem#getBlockLocations**
---

* [HDFS-7516](https://issues.apache.org/jira/browse/HDFS-7516) | *Major* | **Fix findbugs warnings in hadoop-nfs project**
---

* [HDFS-7515](https://issues.apache.org/jira/browse/HDFS-7515) | *Major* | **Fix new findbugs warnings in hadoop-hdfs**
---

* [HDFS-7514](https://issues.apache.org/jira/browse/HDFS-7514) | *Major* | **TestTextCommand fails on Windows**
---

* [HDFS-7513](https://issues.apache.org/jira/browse/HDFS-7513) | *Major* | **HDFS inotify: add defaultBlockSize to CreateEvent**
---

* [HDFS-7509](https://issues.apache.org/jira/browse/HDFS-7509) | *Major* | **Avoid resolving path multiple times**
---

* [HDFS-7506](https://issues.apache.org/jira/browse/HDFS-7506) | *Major* | **Consolidate implementation of setting inode attributes into a single class**
---

* [HDFS-7502](https://issues.apache.org/jira/browse/HDFS-7502) | *Major* | **Fix findbugs warning in hdfs-nfs project**
---

* [HDFS-7498](https://issues.apache.org/jira/browse/HDFS-7498) | *Major* | **Simplify the logic in INodesInPath**
---

* [HDFS-7497](https://issues.apache.org/jira/browse/HDFS-7497) | *Major* | **Inconsistent report of decommissioning DataNodes between dfsadmin and NameNode webui**
---

* [HDFS-7496](https://issues.apache.org/jira/browse/HDFS-7496) | *Major* | **Fix FsVolume removal race conditions on the DataNode by reference-counting the volume instances**
---

* [HDFS-7495](https://issues.apache.org/jira/browse/HDFS-7495) | *Minor* | **Remove updatePosition argument from DFSInputStream#getBlockAt()**
---

* [HDFS-7494](https://issues.apache.org/jira/browse/HDFS-7494) | *Minor* | **Checking of closed in DFSInputStream#pread() should be protected by synchronization**
---

* [HDFS-7491](https://issues.apache.org/jira/browse/HDFS-7491) | *Minor* | **Add incremental blockreport latency to DN metrics**
---

* [HDFS-7490](https://issues.apache.org/jira/browse/HDFS-7490) | *Major* | **HDFS tests OOM on Java7+**
---

* [HDFS-7484](https://issues.apache.org/jira/browse/HDFS-7484) | *Major* | **Make FSDirectory#addINode take existing INodes as its parameter**
---

* [HDFS-7481](https://issues.apache.org/jira/browse/HDFS-7481) | *Minor* | **Add ACL indicator to the "Permission Denied" exception.**
---

* [HDFS-7478](https://issues.apache.org/jira/browse/HDFS-7478) | *Major* | **Move org.apache.hadoop.hdfs.server.namenode.NNConf to FSNamesystem**
---

* [HDFS-7476](https://issues.apache.org/jira/browse/HDFS-7476) | *Major* | **Consolidate ACL-related operations to a single class**
---

* [HDFS-7475](https://issues.apache.org/jira/browse/HDFS-7475) | *Major* | **Make TestLazyPersistFiles#testLazyPersistBlocksAreSaved deterministic**
---

* [HDFS-7474](https://issues.apache.org/jira/browse/HDFS-7474) | *Major* | **Avoid resolving path in FSPermissionChecker**
---

* [HDFS-7473](https://issues.apache.org/jira/browse/HDFS-7473) | *Major* | **Document setting dfs.namenode.fs-limits.max-directory-items to 0 is invalid**
---

* [HDFS-7472](https://issues.apache.org/jira/browse/HDFS-7472) | *Trivial* | **Fix typo in message of ReplicaNotFoundException**
---

* [HDFS-7470](https://issues.apache.org/jira/browse/HDFS-7470) | *Major* | **SecondaryNameNode need twice memory when calling reloadFromImageFile**
---

* [HDFS-7468](https://issues.apache.org/jira/browse/HDFS-7468) | *Major* | **Moving verify* functions to corresponding classes**
---

* [HDFS-7467](https://issues.apache.org/jira/browse/HDFS-7467) | *Major* | **Provide storage tier information for a directory via fsck**
---

* [HDFS-7463](https://issues.apache.org/jira/browse/HDFS-7463) | *Major* | **Simplify FSNamesystem#getBlockLocationsUpdateTimes**
---

* [HDFS-7462](https://issues.apache.org/jira/browse/HDFS-7462) | *Major* | **Consolidate implementation of mkdirs() into a single class**
---

* [HDFS-7459](https://issues.apache.org/jira/browse/HDFS-7459) | *Major* | **Consolidate cache-related implementation in FSNamesystem into a single class**
---

* [HDFS-7458](https://issues.apache.org/jira/browse/HDFS-7458) | *Minor* | **Add description to the nfs ports in core-site.xml used by nfs test to avoid confusion**
---

* [HDFS-7457](https://issues.apache.org/jira/browse/HDFS-7457) | *Major* | **DatanodeID generates excessive garbage**

Thanks for the reviews, gentlemen. I've committed this to trunk and branch-2. Thanks for identifying and working on the issue, Daryn.

---

* [HDFS-7456](https://issues.apache.org/jira/browse/HDFS-7456) | *Major* | **De-duplicate AclFeature instances with same AclEntries do reduce memory footprint of NameNode**
---

* [HDFS-7454](https://issues.apache.org/jira/browse/HDFS-7454) | *Major* | **Reduce memory footprint for AclEntries in NameNode**
---

* [HDFS-7450](https://issues.apache.org/jira/browse/HDFS-7450) | *Major* | **Consolidate the implementation of GetFileInfo(), GetListings() and GetContentSummary() into a single class**
---

* [HDFS-7449](https://issues.apache.org/jira/browse/HDFS-7449) | *Major* | **Add metrics to NFS gateway**
---

* [HDFS-7448](https://issues.apache.org/jira/browse/HDFS-7448) | *Minor* | **TestBookKeeperHACheckpoints fails in trunk build**
---

* [HDFS-7446](https://issues.apache.org/jira/browse/HDFS-7446) | *Major* | **HDFS inotify should have the ability to determine what txid it has read up to**
---

* [HDFS-7444](https://issues.apache.org/jira/browse/HDFS-7444) | *Major* | **convertToBlockUnderConstruction should preserve BlockCollection**
---

* [HDFS-7440](https://issues.apache.org/jira/browse/HDFS-7440) | *Major* | **Consolidate snapshot related operations in a single class**
---

* [HDFS-7439](https://issues.apache.org/jira/browse/HDFS-7439) | *Minor* | **Add BlockOpResponseProto's message to DFSClient's exception message**
---

* [HDFS-7438](https://issues.apache.org/jira/browse/HDFS-7438) | *Major* | **Consolidate the implementation of rename() into a single class**
---

* [HDFS-7435](https://issues.apache.org/jira/browse/HDFS-7435) | *Critical* | **PB encoding of block reports is very inefficient**
---

* [HDFS-7434](https://issues.apache.org/jira/browse/HDFS-7434) | *Major* | **DatanodeID hashCode should not be mutable**
---

* [HDFS-7431](https://issues.apache.org/jira/browse/HDFS-7431) | *Major* | **log message for InvalidMagicNumberException may be incorrect**
---

* [HDFS-7430](https://issues.apache.org/jira/browse/HDFS-7430) | *Major* | **Rewrite the BlockScanner to use O(1) memory and use multiple threads**
---

* [HDFS-7426](https://issues.apache.org/jira/browse/HDFS-7426) | *Major* | **Change nntop JMX format to be a JSON blob**
---

* [HDFS-7424](https://issues.apache.org/jira/browse/HDFS-7424) | *Major* | **Add web UI for NFS gateway**
---

* [HDFS-7423](https://issues.apache.org/jira/browse/HDFS-7423) | *Trivial* | **various typos and message formatting fixes in nfs daemon and doc**
---

* [HDFS-7420](https://issues.apache.org/jira/browse/HDFS-7420) | *Major* | **Delegate permission checks to FSDirectory**
---

* [HDFS-7419](https://issues.apache.org/jira/browse/HDFS-7419) | *Major* | **Improve error messages for DataNode hot swap drive feature**
---

* [HDFS-7415](https://issues.apache.org/jira/browse/HDFS-7415) | *Major* | **Move FSNameSystem.resolvePath() to FSDirectory**
---

* [HDFS-7413](https://issues.apache.org/jira/browse/HDFS-7413) | *Major* | **Some unit tests should use NameNodeProtocols instead of FSNameSystem**
---

* [HDFS-7412](https://issues.apache.org/jira/browse/HDFS-7412) | *Major* | **Move RetryCache to NameNodeRpcServer**
---

* [HDFS-7411](https://issues.apache.org/jira/browse/HDFS-7411) | *Major* | **Refactor and improve decommissioning logic into DecommissionManager**

This change introduces a new configuration key used to throttle decommissioning work, "dfs.namenode.decommission.blocks.per.interval". This new key overrides and deprecates the previous related configuration key "dfs.namenode.decommission.nodes.per.interval". The new key is intended to result in more predictable pause times while scanning decommissioning nodes.

---

* [HDFS-7409](https://issues.apache.org/jira/browse/HDFS-7409) | *Minor* | **Allow dead nodes to finish decommissioning if all files are fully replicated**
---

* [HDFS-7406](https://issues.apache.org/jira/browse/HDFS-7406) | *Major* | **SimpleHttpProxyHandler puts incorrect "Connection: Close" header**
---

* [HDFS-7404](https://issues.apache.org/jira/browse/HDFS-7404) | *Major* | **Remove o.a.h.hdfs.server.datanode.web.resources**
---

* [HDFS-7403](https://issues.apache.org/jira/browse/HDFS-7403) | *Trivial* | **Inaccurate javadoc of  BlockUCState#COMPLETE state**
---

* [HDFS-7399](https://issues.apache.org/jira/browse/HDFS-7399) | *Minor* | **Lack of synchronization in DFSOutputStream#Packet#getLastByteOffsetBlock()**
---

* [HDFS-7398](https://issues.apache.org/jira/browse/HDFS-7398) | *Major* | **Reset cached thread-local FSEditLogOp's on every FSEditLog#logEdit**
---

* [HDFS-7395](https://issues.apache.org/jira/browse/HDFS-7395) | *Major* | **BlockIdManager#clear() bails out when resetting the GenerationStampV1Limit**
---

* [HDFS-7394](https://issues.apache.org/jira/browse/HDFS-7394) | *Minor* | **Log at INFO level, not WARN level, when InvalidToken is seen in ShortCircuitCache**
---

* [HDFS-7389](https://issues.apache.org/jira/browse/HDFS-7389) | *Major* | **Named user ACL cannot stop the user from accessing the FS entity.**
---

* [HDFS-7386](https://issues.apache.org/jira/browse/HDFS-7386) | *Trivial* | **Replace check "port number < 1024" with shared isPrivilegedPort method**
---

* [HDFS-7384](https://issues.apache.org/jira/browse/HDFS-7384) | *Major* | **'getfacl' command and 'getAclStatus' output should be in sync**
---

* [HDFS-7381](https://issues.apache.org/jira/browse/HDFS-7381) | *Major* | **Decouple the management of block id and gen stamps from FSNamesystem**
---

* [HDFS-7375](https://issues.apache.org/jira/browse/HDFS-7375) | *Major* | **Move FSClusterStats to o.a.h.h.hdfs.server.blockmanagement**
---

* [HDFS-7374](https://issues.apache.org/jira/browse/HDFS-7374) | *Major* | **Allow decommissioning of dead DataNodes**
---

* [HDFS-7373](https://issues.apache.org/jira/browse/HDFS-7373) | *Major* | **Clean up temporary files after fsimage transfer failures**
---

* [HDFS-7366](https://issues.apache.org/jira/browse/HDFS-7366) | *Minor* | **BlockInfo should take replication as an short in the constructor**
---

* [HDFS-7365](https://issues.apache.org/jira/browse/HDFS-7365) | *Minor* | **Remove hdfs.server.blockmanagement.MutableBlockCollection**
---

* [HDFS-7361](https://issues.apache.org/jira/browse/HDFS-7361) | *Minor* | **TestCheckpoint#testStorageAlreadyLockedErrorMessage fails after change of log message related to locking violation.**
---

* [HDFS-7358](https://issues.apache.org/jira/browse/HDFS-7358) | *Major* | **Clients may get stuck waiting when using ByteArrayManager**
---

* [HDFS-7357](https://issues.apache.org/jira/browse/HDFS-7357) | *Minor* | **FSNamesystem.checkFileProgress should log file path**
---

* [HDFS-7356](https://issues.apache.org/jira/browse/HDFS-7356) | *Minor* | **Use DirectoryListing.hasMore() directly in nfs**
---

* [HDFS-7336](https://issues.apache.org/jira/browse/HDFS-7336) | *Major* | **Unused member DFSInputStream.buffersize**
---

* [HDFS-7335](https://issues.apache.org/jira/browse/HDFS-7335) | *Major* | **Redundant checkOperation() in FSN.analyzeFileState()**
---

* [HDFS-7333](https://issues.apache.org/jira/browse/HDFS-7333) | *Major* | **Improve log message in Storage.tryLock()**
---

* [HDFS-7331](https://issues.apache.org/jira/browse/HDFS-7331) | *Minor* | **Add Datanode network counts to datanode jmx page**
---

* [HDFS-7329](https://issues.apache.org/jira/browse/HDFS-7329) | *Major* | **MiniDFSCluster should log the exception when createNameNodesAndSetConf() fails.**
---

* [HDFS-7326](https://issues.apache.org/jira/browse/HDFS-7326) | *Minor* | **Add documentation for hdfs debug commands**

Added documentation for the hdfs debug commands to the following URL in the documentation website.

hadoop-project-dist/hadoop-hdfs/HDFSCommands.html

In order to view the new documentation, build the website in a staging area:
$ mvn clean site; mvn site:stage -DstagingDirectory=/tmp/hadoop-site

Point your browser to 
file:///tmp/hadoop-site/hadoop-project/hadoop-project-dist/hadoop-hdfs/HDFSCommands.html

---

* [HDFS-7324](https://issues.apache.org/jira/browse/HDFS-7324) | *Major* | **haadmin command usage prints incorrect command name**
---

* [HDFS-7323](https://issues.apache.org/jira/browse/HDFS-7323) | *Major* | **Move the get/setStoragePolicy commands out from dfsadmin**
---

* [HDFS-7315](https://issues.apache.org/jira/browse/HDFS-7315) | *Trivial* | **DFSTestUtil.readFileBuffer opens extra FSDataInputStream**
---

* [HDFS-7310](https://issues.apache.org/jira/browse/HDFS-7310) | *Major* | **Mover can give first priority to local DN if it has target storage type available in local DN**
---

* [HDFS-7308](https://issues.apache.org/jira/browse/HDFS-7308) | *Minor* | **DFSClient write packet size may > 64kB**
---

* [HDFS-7303](https://issues.apache.org/jira/browse/HDFS-7303) | *Minor* | **NN UI fails to distinguish datanodes on the same host**
---

* [HDFS-7301](https://issues.apache.org/jira/browse/HDFS-7301) | *Minor* | **TestMissingBlocksAlert should use MXBeans instead of old web UI**
---

* [HDFS-7283](https://issues.apache.org/jira/browse/HDFS-7283) | *Trivial* | **Bump DataNode OOM log from WARN to ERROR**
---

* [HDFS-7282](https://issues.apache.org/jira/browse/HDFS-7282) | *Major* | **Fix intermittent TestShortCircuitCache and TestBlockReaderFactory failures resulting from TemporarySocketDirectory GC**
---

* [HDFS-7280](https://issues.apache.org/jira/browse/HDFS-7280) | *Major* | **Use netty 4 in WebImageViewer**
---

* [HDFS-7279](https://issues.apache.org/jira/browse/HDFS-7279) | *Major* | **Use netty to implement DatanodeWebHdfsMethods**
---

* [HDFS-7278](https://issues.apache.org/jira/browse/HDFS-7278) | *Major* | **Add a command that allows sysadmins to manually trigger full block reports from a DN**
---

* [HDFS-7277](https://issues.apache.org/jira/browse/HDFS-7277) | *Minor* | **Remove explicit dependency on netty 3.2 in BKJournal**
---

* [HDFS-7270](https://issues.apache.org/jira/browse/HDFS-7270) | *Major* | **Add congestion signaling capability to DataNode write protocol**
---

* [HDFS-7266](https://issues.apache.org/jira/browse/HDFS-7266) | *Minor* | **HDFS Peercache enabled check should not lock on object**
---

* [HDFS-7263](https://issues.apache.org/jira/browse/HDFS-7263) | *Major* | **Snapshot read can reveal future bytes for appended files.**
---

* [HDFS-7258](https://issues.apache.org/jira/browse/HDFS-7258) | *Minor* | **CacheReplicationMonitor rescan schedule log should use DEBUG level instead of INFO level**
---

* [HDFS-7257](https://issues.apache.org/jira/browse/HDFS-7257) | *Minor* | **Add the time of last HA state transition to NN's /jmx page**
---

* [HDFS-7254](https://issues.apache.org/jira/browse/HDFS-7254) | *Major* | **Add documentation for hot swaping DataNode drives**
---

* [HDFS-7252](https://issues.apache.org/jira/browse/HDFS-7252) | *Trivial* | **small refinement to the use of isInAnEZ in FSNamesystem**
---

* [HDFS-7242](https://issues.apache.org/jira/browse/HDFS-7242) | *Minor* | **Code improvement for FSN#checkUnreadableBySuperuser**
---

* [HDFS-7235](https://issues.apache.org/jira/browse/HDFS-7235) | *Major* | **DataNode#transferBlock should report blocks that don't exist using reportBadBlock**
---

* [HDFS-7232](https://issues.apache.org/jira/browse/HDFS-7232) | *Trivial* | **Populate hostname in httpfs audit log**
---

* [HDFS-7227](https://issues.apache.org/jira/browse/HDFS-7227) | *Minor* | **Fix findbugs warning about NP\_DEREFERENCE\_OF\_READLINE\_VALUE in SpanReceiverHost**
---

* [HDFS-7225](https://issues.apache.org/jira/browse/HDFS-7225) | *Major* | **Remove stale block invalidation work when DN re-registers with different UUID**
---

* [HDFS-7224](https://issues.apache.org/jira/browse/HDFS-7224) | *Major* | **Allow reuse of NN connections via webhdfs**
---

* [HDFS-7223](https://issues.apache.org/jira/browse/HDFS-7223) | *Minor* | **Tracing span description of IPC client is too long**
---

* [HDFS-7222](https://issues.apache.org/jira/browse/HDFS-7222) | *Minor* | **Expose DataNode network errors as a metric**
---

* [HDFS-7213](https://issues.apache.org/jira/browse/HDFS-7213) | *Critical* | **processIncrementalBlockReport performance degradation**
---

* [HDFS-7210](https://issues.apache.org/jira/browse/HDFS-7210) | *Major* | **Avoid two separate RPC's namenode.append() and namenode.getFileInfo() for an append call from DFSClient**
---

* [HDFS-7209](https://issues.apache.org/jira/browse/HDFS-7209) | *Major* | **Populate EDEK cache when creating encryption zone**
---

* [HDFS-7202](https://issues.apache.org/jira/browse/HDFS-7202) | *Minor* | **Should be able to omit package name of SpanReceiver on "hadoop trace -add"**
---

* [HDFS-7201](https://issues.apache.org/jira/browse/HDFS-7201) | *Major* | **Fix typos in hdfs-default.xml**
---

* [HDFS-7198](https://issues.apache.org/jira/browse/HDFS-7198) | *Trivial* | **Fix findbugs "unchecked conversion" warning in DFSClient#getPathTraceScope**
---

* [HDFS-7194](https://issues.apache.org/jira/browse/HDFS-7194) | *Trivial* | **Fix findbugs "inefficient new String constructor" warning in DFSClient#PATH**
---

* [HDFS-7190](https://issues.apache.org/jira/browse/HDFS-7190) | *Major* | **Bad use of Preconditions in startFileInternal()**
---

* [HDFS-7189](https://issues.apache.org/jira/browse/HDFS-7189) | *Major* | **Add trace spans for DFSClient metadata operations**
---

* [HDFS-7186](https://issues.apache.org/jira/browse/HDFS-7186) | *Minor* | **Document the "hadoop trace" command.**
---

* [HDFS-7182](https://issues.apache.org/jira/browse/HDFS-7182) | *Major* | **JMX metrics aren't accessible when NN is busy**
---

* [HDFS-7165](https://issues.apache.org/jira/browse/HDFS-7165) | *Major* | **Separate block metrics for files with replication count 1**
---

* [HDFS-7146](https://issues.apache.org/jira/browse/HDFS-7146) | *Major* | **NFS ID/Group lookup requires SSSD enumeration on the server**
---

* [HDFS-7097](https://issues.apache.org/jira/browse/HDFS-7097) | *Critical* | **Allow block reports to be processed during checkpointing on standby name node**
---

* [HDFS-7058](https://issues.apache.org/jira/browse/HDFS-7058) | *Major* | **Tests for truncate CLI**
---

* [HDFS-7056](https://issues.apache.org/jira/browse/HDFS-7056) | *Major* | **Snapshot support for truncate**
---

* [HDFS-7055](https://issues.apache.org/jira/browse/HDFS-7055) | *Major* | **Add tracing to DFSInputStream**
---

* [HDFS-7054](https://issues.apache.org/jira/browse/HDFS-7054) | *Major* | **Make DFSOutputStream tracing more fine-grained**
---

* [HDFS-7035](https://issues.apache.org/jira/browse/HDFS-7035) | *Major* | **Make adding a new data directory to the DataNode an atomic operation and improve error handling**
---

* [HDFS-7026](https://issues.apache.org/jira/browse/HDFS-7026) | *Trivial* | **Introduce a string constant for "Failed to obtain user group info..."**
---

* [HDFS-7009](https://issues.apache.org/jira/browse/HDFS-7009) | *Major* | **Active NN and standby NN have different live nodes**
---

* [HDFS-7008](https://issues.apache.org/jira/browse/HDFS-7008) | *Minor* | **xlator should be closed upon exit from DFSAdmin#genericRefresh()**
---

* [HDFS-6982](https://issues.apache.org/jira/browse/HDFS-6982) | *Major* | **nntop: top­-like tool for name node users**
---

* [HDFS-6938](https://issues.apache.org/jira/browse/HDFS-6938) | *Trivial* | **Cleanup javac warnings in FSNamesystem**
---

* [HDFS-6917](https://issues.apache.org/jira/browse/HDFS-6917) | *Major* | **Add an hdfs debug command to validate blocks, call recoverlease, etc.**
---

* [HDFS-6877](https://issues.apache.org/jira/browse/HDFS-6877) | *Major* | **Avoid calling checkDisk when an HDFS volume is removed during a write.**
---

* [HDFS-6841](https://issues.apache.org/jira/browse/HDFS-6841) | *Major* | **Use Time.monotonicNow() wherever applicable instead of Time.now()**
---

* [HDFS-6833](https://issues.apache.org/jira/browse/HDFS-6833) | *Critical* | **DirectoryScanner should not register a deleting block with memory of DataNode**
---

* [HDFS-6824](https://issues.apache.org/jira/browse/HDFS-6824) | *Minor* | **Additional user documentation for HDFS encryption.**
---

* [HDFS-6806](https://issues.apache.org/jira/browse/HDFS-6806) | *Minor* | **HDFS Rolling upgrade document should mention the versions available**
---

* [HDFS-6803](https://issues.apache.org/jira/browse/HDFS-6803) | *Major* | **Documenting DFSClient#DFSInputStream expectations reading and preading in concurrent context**
---

* [HDFS-6753](https://issues.apache.org/jira/browse/HDFS-6753) | *Major* | **Initialize checkDisk when DirectoryScanner not able to get files list for scanning**
---

* [HDFS-6741](https://issues.apache.org/jira/browse/HDFS-6741) | *Trivial* | **Improve permission denied message when FSPermissionChecker#checkOwner fails**
---

* [HDFS-6735](https://issues.apache.org/jira/browse/HDFS-6735) | *Major* | **A minor optimization to avoid pread() be blocked by read() inside the same DFSInputStream**
---

* [HDFS-6673](https://issues.apache.org/jira/browse/HDFS-6673) | *Minor* | **Add delimited format support to PB OIV tool**
---

* [HDFS-6663](https://issues.apache.org/jira/browse/HDFS-6663) | *Major* | **Admin command to track file and locations from block id**
---

* [HDFS-6662](https://issues.apache.org/jira/browse/HDFS-6662) | *Critical* | **WebHDFS cannot open a file if its path contains "%"**
---

* [HDFS-6657](https://issues.apache.org/jira/browse/HDFS-6657) | *Minor* | **Remove link to 'Legacy UI' in Namenode UI**
---

* [HDFS-6651](https://issues.apache.org/jira/browse/HDFS-6651) | *Critical* | **Deletion failure can leak inodes permanently**
---

* [HDFS-6565](https://issues.apache.org/jira/browse/HDFS-6565) | *Major* | **Use jackson instead jetty json in hdfs-client**
---

* [HDFS-6538](https://issues.apache.org/jira/browse/HDFS-6538) | *Trivial* | **Comment format error in ShortCircuitRegistry javadoc**
---

* [HDFS-6488](https://issues.apache.org/jira/browse/HDFS-6488) | *Major* | **Support HDFS superuser in NFSv3 gateway**
---

* [HDFS-6425](https://issues.apache.org/jira/browse/HDFS-6425) | *Major* | **Large postponedMisreplicatedBlocks has impact on blockReport latency**
---

* [HDFS-6252](https://issues.apache.org/jira/browse/HDFS-6252) | *Minor* | **Phase out the old web UI in HDFS**
---

* [HDFS-6133](https://issues.apache.org/jira/browse/HDFS-6133) | *Major* | **Make Balancer support exclude specified path**

Add a feature for replica pinning so that when a replica is pinned in a datanode, it will not be moved by Balancer/Mover.  The replica pinning feature can be enabled/disabled by "dfs.datanode.block-pinning.enabled", where the default is false.

---

* [HDFS-5928](https://issues.apache.org/jira/browse/HDFS-5928) | *Major* | **show namespace and namenode ID on NN dfshealth page**
---

* [HDFS-5853](https://issues.apache.org/jira/browse/HDFS-5853) | *Minor* | **Add "hadoop.user.group.metrics.percentiles.intervals" to hdfs-default.xml**
---

* [HDFS-5782](https://issues.apache.org/jira/browse/HDFS-5782) | *Minor* | **BlockListAsLongs should take lists of Replicas rather than concrete classes**
---

* [HDFS-5631](https://issues.apache.org/jira/browse/HDFS-5631) | *Minor* | **Expose interfaces required by FsDatasetSpi implementations**
---

* [HDFS-5578](https://issues.apache.org/jira/browse/HDFS-5578) | *Minor* | **[JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments**
---

* [HDFS-5445](https://issues.apache.org/jira/browse/HDFS-5445) | *Minor* | **PacketReceiver populates the packetLen field in PacketHeader incorrectly**
---

* [HDFS-4266](https://issues.apache.org/jira/browse/HDFS-4266) | *Major* | **BKJM: Separate write and ack quorum**
---

* [HDFS-4265](https://issues.apache.org/jira/browse/HDFS-4265) | *Major* | **BKJM doesn't take advantage of speculative reads**
---

* [HDFS-3689](https://issues.apache.org/jira/browse/HDFS-3689) | *Major* | **Add support for variable length block**

1. HDFS now can choose to append data to a new block instead of end of the last partial block. Users can pass {{CreateFlag.APPEND}} and  {{CreateFlag.NEW\_BLOCK}} to the {{append}} API to indicate this requirement.
2. HDFS now allows users to pass {{SyncFlag.END\_BLOCK}} to the {{hsync}} API to finish the current block and write remaining data to a new block.

---

* [HDFS-3519](https://issues.apache.org/jira/browse/HDFS-3519) | *Critical* | **Checkpoint upload may interfere with a concurrent saveNamespace**
---

* [HDFS-3342](https://issues.apache.org/jira/browse/HDFS-3342) | *Minor* | **SocketTimeoutException in BlockSender.sendChunks could have a better error message**
---

* [HDFS-3107](https://issues.apache.org/jira/browse/HDFS-3107) | *Major* | **HDFS truncate**
---

* [HDFS-2605](https://issues.apache.org/jira/browse/HDFS-2605) | *Major* | **CHANGES.txt has two "Release 0.21.1" sections**
---

* [HDFS-2486](https://issues.apache.org/jira/browse/HDFS-2486) | *Minor* | **Review issues with UnderReplicatedBlocks**
---

* [HDFS-2219](https://issues.apache.org/jira/browse/HDFS-2219) | *Minor* | **Fsck should work with fully qualified file paths.**
---

* [HDFS-1522](https://issues.apache.org/jira/browse/HDFS-1522) | *Major* | **Merge Block.BLOCK\_FILE\_PREFIX and DataStorage.BLOCK\_FILE\_PREFIX into one constant**

This merges Block.BLOCK\_FILE\_PREFIX and DataStorage.BLOCK\_FILE\_PREFIX into one constant. Hard-coded
literals of "blk\_" in various files are also updated to use the same constant.

---

* [HDFS-1362](https://issues.apache.org/jira/browse/HDFS-1362) | *Major* | **Provide volume management functionality for DataNode**

Based on the reconfiguration framework provided by HADOOP-7001, enable reconfigure the dfs.datanode.data.dir and add new volumes into service.

---

* [HDFS-316](https://issues.apache.org/jira/browse/HDFS-316) | *Minor* | **Balancer should run for a configurable # of iterations**
---

* [HDFS-49](https://issues.apache.org/jira/browse/HDFS-49) | *Minor* | **MiniDFSCluster.stopDataNode will always shut down a node in the cluster if a matching name is not found**
---

* [MAPREDUCE-6286](https://issues.apache.org/jira/browse/MAPREDUCE-6286) | *Major* | **A typo in HistoryViewer makes some code useless, which causes counter limits are not reset correctly.**
---

* [MAPREDUCE-6277](https://issues.apache.org/jira/browse/MAPREDUCE-6277) | *Major* | **Job can post multiple history files if attempt loses connection to the RM**
---

* [MAPREDUCE-6275](https://issues.apache.org/jira/browse/MAPREDUCE-6275) | *Critical* | **Race condition in FileOutputCommitter v2 for user-specified task output subdirs**
---

* [MAPREDUCE-6268](https://issues.apache.org/jira/browse/MAPREDUCE-6268) | *Minor* | **Fix typo in Task Attempt API's URL**
---

* [MAPREDUCE-6267](https://issues.apache.org/jira/browse/MAPREDUCE-6267) | *Minor* | **Refactor JobSubmitter#copyAndConfigureFiles into it's own class**
---

* [MAPREDUCE-6265](https://issues.apache.org/jira/browse/MAPREDUCE-6265) | *Major* | **Make ContainerLauncherImpl.INITIAL\_POOL\_SIZE configurable to better control to launch/kill containers**
---

* [MAPREDUCE-6264](https://issues.apache.org/jira/browse/MAPREDUCE-6264) | *Major* | **Remove httpclient dependency from hadoop-mapreduce-client**
---

* [MAPREDUCE-6261](https://issues.apache.org/jira/browse/MAPREDUCE-6261) | *Major* | **NullPointerException if MapOutputBuffer.flush invoked twice**
---

* [MAPREDUCE-6256](https://issues.apache.org/jira/browse/MAPREDUCE-6256) | *Minor* | **Removed unused private methods in o.a.h.mapreduce.Job.java**
---

* [MAPREDUCE-6255](https://issues.apache.org/jira/browse/MAPREDUCE-6255) | *Minor* | **Fix JobCounter's format to use grouping separator**
---

* [MAPREDUCE-6253](https://issues.apache.org/jira/browse/MAPREDUCE-6253) | *Minor* | **Update use of Iterator to Iterable**
---

* [MAPREDUCE-6248](https://issues.apache.org/jira/browse/MAPREDUCE-6248) | *Major* | **Allow users to get the MR job information for distcp**
---

* [MAPREDUCE-6243](https://issues.apache.org/jira/browse/MAPREDUCE-6243) | *Minor* | **Fix findbugs warnings in hadoop-rumen**
---

* [MAPREDUCE-6233](https://issues.apache.org/jira/browse/MAPREDUCE-6233) | *Major* | **org.apache.hadoop.mapreduce.TestLargeSort.testLargeSort failed in trunk**
---

* [MAPREDUCE-6231](https://issues.apache.org/jira/browse/MAPREDUCE-6231) | *Major* | **Grep example job is not working on a fully-distributed cluster**
---

* [MAPREDUCE-6230](https://issues.apache.org/jira/browse/MAPREDUCE-6230) | *Blocker* | **MR AM does not survive RM restart if RM activated a new AMRM secret key**
---

* [MAPREDUCE-6228](https://issues.apache.org/jira/browse/MAPREDUCE-6228) | *Major* | **Add truncate operation to SLive**
---

* [MAPREDUCE-6227](https://issues.apache.org/jira/browse/MAPREDUCE-6227) | *Major* | **DFSIO for truncate**
---

* [MAPREDUCE-6225](https://issues.apache.org/jira/browse/MAPREDUCE-6225) | *Major* | **Fix new findbug warnings in hadoop-mapreduce-client-core**
---

* [MAPREDUCE-6221](https://issues.apache.org/jira/browse/MAPREDUCE-6221) | *Minor* | **Stringifier is left unclosed in Chain#getChainElementConf()**
---

* [MAPREDUCE-6210](https://issues.apache.org/jira/browse/MAPREDUCE-6210) | *Minor* | **Use getApplicationAttemptId() instead of getApplicationID() for logging AttemptId in RMContainerAllocator.java**
---

* [MAPREDUCE-6206](https://issues.apache.org/jira/browse/MAPREDUCE-6206) | *Critical* | **TestAggregatedTransferRate fails on non-US systems**
---

* [MAPREDUCE-6199](https://issues.apache.org/jira/browse/MAPREDUCE-6199) | *Major* | **AbstractCounters are not reset completely on deserialization**
---

* [MAPREDUCE-6194](https://issues.apache.org/jira/browse/MAPREDUCE-6194) | *Minor* | **Bubble up final exception in failures during creation of output collectors**
---

* [MAPREDUCE-6186](https://issues.apache.org/jira/browse/MAPREDUCE-6186) | *Minor* | **Redundant call to requireJob() while displaying the conf page**
---

* [MAPREDUCE-6177](https://issues.apache.org/jira/browse/MAPREDUCE-6177) | *Trivial* | **Minor typo in the EncryptedShuffle document about ssl-client.xml**
---

* [MAPREDUCE-6173](https://issues.apache.org/jira/browse/MAPREDUCE-6173) | *Major* | **Document the configuration of deploying MR over distributed cache with enabling wired encryption at the same time**
---

* [MAPREDUCE-6172](https://issues.apache.org/jira/browse/MAPREDUCE-6172) | *Minor* | **TestDbClasses timeouts are too aggressive**
---

* [MAPREDUCE-6169](https://issues.apache.org/jira/browse/MAPREDUCE-6169) | *Major* | **MergeQueue should release reference to the current item from key and value at the end of the iteration to save memory.**
---

* [MAPREDUCE-6166](https://issues.apache.org/jira/browse/MAPREDUCE-6166) | *Major* | **Reducers do not validate checksum of map outputs when fetching directly to disk**
---

* [MAPREDUCE-6162](https://issues.apache.org/jira/browse/MAPREDUCE-6162) | *Blocker* | **mapred hsadmin fails on a secure cluster**
---

* [MAPREDUCE-6160](https://issues.apache.org/jira/browse/MAPREDUCE-6160) | *Major* | **Potential NullPointerException in MRClientProtocol interface implementation.**
---

* [MAPREDUCE-6151](https://issues.apache.org/jira/browse/MAPREDUCE-6151) | *Minor* | **Update document of GridMix**
---

* [MAPREDUCE-6150](https://issues.apache.org/jira/browse/MAPREDUCE-6150) | *Minor* | **Update document of Rumen**
---

* [MAPREDUCE-6149](https://issues.apache.org/jira/browse/MAPREDUCE-6149) | *Major* | **Document override log4j.properties in MR job**
---

* [MAPREDUCE-6143](https://issues.apache.org/jira/browse/MAPREDUCE-6143) | *Major* | **add configuration for  mapreduce speculative execution in MR2**
---

* [MAPREDUCE-6141](https://issues.apache.org/jira/browse/MAPREDUCE-6141) | *Major* | **History server leveldb recovery store**
---

* [MAPREDUCE-6136](https://issues.apache.org/jira/browse/MAPREDUCE-6136) | *Major* | **MRAppMaster doesn't shutdown file systems**
---

* [MAPREDUCE-6059](https://issues.apache.org/jira/browse/MAPREDUCE-6059) | *Major* | **Speed up history server startup time**
---

* [MAPREDUCE-6049](https://issues.apache.org/jira/browse/MAPREDUCE-6049) | *Major* | **AM JVM does not exit if MRClientService gracefull shutdown fails**
---

* [MAPREDUCE-6046](https://issues.apache.org/jira/browse/MAPREDUCE-6046) | *Minor* | **Change the class name for logs in RMCommunicator.java**
---

* [MAPREDUCE-6045](https://issues.apache.org/jira/browse/MAPREDUCE-6045) | *Minor* | **need close the DataInputStream after open it in TestMapReduce.java**
---

* [MAPREDUCE-5988](https://issues.apache.org/jira/browse/MAPREDUCE-5988) | *Minor* | **Fix dead links to the javadocs in mapreduce project**
---

* [MAPREDUCE-5932](https://issues.apache.org/jira/browse/MAPREDUCE-5932) | *Major* | **Provide an option to use a dedicated reduce-side shuffle log**
---

* [MAPREDUCE-5918](https://issues.apache.org/jira/browse/MAPREDUCE-5918) | *Major* | **LineRecordReader can return the same decompressor to CodecPool multiple times**
---

* [MAPREDUCE-5875](https://issues.apache.org/jira/browse/MAPREDUCE-5875) | *Major* | **Make Counter limits consistent across JobClient, MRAppMaster, and YarnChild**
---

* [MAPREDUCE-5800](https://issues.apache.org/jira/browse/MAPREDUCE-5800) | *Minor* | **Use Job#getInstance instead of deprecated constructors**
---

* [MAPREDUCE-5657](https://issues.apache.org/jira/browse/MAPREDUCE-5657) | *Minor* | **[JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments**
---

* [MAPREDUCE-5612](https://issues.apache.org/jira/browse/MAPREDUCE-5612) | *Minor* | **Add javadoc for TaskCompletionEvent.Status**
---

* [MAPREDUCE-5583](https://issues.apache.org/jira/browse/MAPREDUCE-5583) | *Major* | **Ability to limit running map and reduce tasks**
---

* [MAPREDUCE-5568](https://issues.apache.org/jira/browse/MAPREDUCE-5568) | *Major* | **JHS returns invalid string for reducer completion percentage if AM restarts with 0 reducer.**
---

* [MAPREDUCE-5420](https://issues.apache.org/jira/browse/MAPREDUCE-5420) | *Major* | **Remove mapreduce.task.tmp.dir from mapred-default.xml**
---

* [MAPREDUCE-5335](https://issues.apache.org/jira/browse/MAPREDUCE-5335) | *Major* | **Rename Job Tracker terminology in ShuffleSchedulerImpl**
---

* [MAPREDUCE-4879](https://issues.apache.org/jira/browse/MAPREDUCE-4879) | *Major* | **TeraOutputFormat may overwrite an existing output directory**
---

* [MAPREDUCE-4815](https://issues.apache.org/jira/browse/MAPREDUCE-4815) | *Major* | **Speed up FileOutputCommitter#commitJob for many output files**
---

* [MAPREDUCE-4742](https://issues.apache.org/jira/browse/MAPREDUCE-4742) | *Trivial* | **Fix typo in nnbench#displayUsage**
---

* [MAPREDUCE-4431](https://issues.apache.org/jira/browse/MAPREDUCE-4431) | *Minor* | **mapred command should print the reason on killing already completed jobs**
---

* [MAPREDUCE-4286](https://issues.apache.org/jira/browse/MAPREDUCE-4286) | *Major* | **TestClientProtocolProviderImpls passes on failure conditions**
---

* [MAPREDUCE-3283](https://issues.apache.org/jira/browse/MAPREDUCE-3283) | *Minor* | **mapred classpath CLI does not display the complete classpath**
---

* [MAPREDUCE-2815](https://issues.apache.org/jira/browse/MAPREDUCE-2815) | *Minor* | **JavaDoc does not generate correctly for MultithreadedMapRunner**
---

* [YARN-3393](https://issues.apache.org/jira/browse/YARN-3393) | *Critical* | **Getting application(s) goes wrong when app finishes before starting the attempt**
---

* [YARN-3384](https://issues.apache.org/jira/browse/YARN-3384) | *Minor* | **TestLogAggregationService.verifyContainerLogs fails after YARN-2777**
---

* [YARN-3379](https://issues.apache.org/jira/browse/YARN-3379) | *Major* | **Missing data in localityTable and ResourceRequests table in RM WebUI**
---

* [YARN-3369](https://issues.apache.org/jira/browse/YARN-3369) | *Blocker* | **Missing NullPointer check in AppSchedulingInfo causes RM to die**
---

* [YARN-3349](https://issues.apache.org/jira/browse/YARN-3349) | *Minor* | **Treat all exceptions as failure in TestFSRMStateStore#testFSRMStateStoreClientRetry**
---

* [YARN-3338](https://issues.apache.org/jira/browse/YARN-3338) | *Blocker* | **Exclude jline dependency from YARN**
---

* [YARN-3336](https://issues.apache.org/jira/browse/YARN-3336) | *Critical* | **FileSystem memory leak in DelegationTokenRenewer**
---

* [YARN-3300](https://issues.apache.org/jira/browse/YARN-3300) | *Major* | **outstanding\_resource\_requests table should not be shown in AHS**
---

* [YARN-3296](https://issues.apache.org/jira/browse/YARN-3296) | *Major* | **yarn.nodemanager.container-monitor.process-tree.class is configurable but ResourceCalculatorProcessTree class is marked Private**
---

* [YARN-3295](https://issues.apache.org/jira/browse/YARN-3295) | *Trivial* | **Fix documentation nits found in markdown conversion**
---

* [YARN-3287](https://issues.apache.org/jira/browse/YARN-3287) | *Major* | **TimelineClient kerberos authentication failure uses wrong login context.**
---

* [YARN-3285](https://issues.apache.org/jira/browse/YARN-3285) | *Major* | **Convert branch-2 .apt.vm files of YARN to markdown**
---

* [YARN-3281](https://issues.apache.org/jira/browse/YARN-3281) | *Minor* | **Add RMStateStore to StateMachine visualization list**
---

* [YARN-3275](https://issues.apache.org/jira/browse/YARN-3275) | *Major* | **CapacityScheduler: Preemption happening on non-preemptable queues**
---

* [YARN-3272](https://issues.apache.org/jira/browse/YARN-3272) | *Major* | **Surface container locality info in RM web UI**
---

* [YARN-3270](https://issues.apache.org/jira/browse/YARN-3270) | *Minor* | **node label expression not getting set in ApplicationSubmissionContext**
---

* [YARN-3267](https://issues.apache.org/jira/browse/YARN-3267) | *Major* | **Timelineserver applies the ACL rules after applying the limit on the number of records**
---

* [YARN-3265](https://issues.apache.org/jira/browse/YARN-3265) | *Blocker* | **CapacityScheduler deadlock when computing absolute max avail capacity (fix for trunk/branch-2)**
---

* [YARN-3262](https://issues.apache.org/jira/browse/YARN-3262) | *Major* | ** Surface application outstanding resource requests table in RM web UI**
---

* [YARN-3256](https://issues.apache.org/jira/browse/YARN-3256) | *Major* | **TestClientToAMTokens#testClientTokenRace is not running against all Schedulers even when using ParameterizedSchedulerTestBase**
---

* [YARN-3255](https://issues.apache.org/jira/browse/YARN-3255) | *Major* | **RM, NM, JobHistoryServer, and WebAppProxyServer's main() should support generic options**
---

* [YARN-3249](https://issues.apache.org/jira/browse/YARN-3249) | *Minor* | **Add a "kill application" button to Resource Manager's Web UI**
---

* [YARN-3242](https://issues.apache.org/jira/browse/YARN-3242) | *Critical* | **Asynchrony in ZK-close can lead to ZKRMStateStore watcher receiving events for old client**
---

* [YARN-3239](https://issues.apache.org/jira/browse/YARN-3239) | *Major* | **WebAppProxy does not support a final tracking url which has query fragments and params**
---

* [YARN-3238](https://issues.apache.org/jira/browse/YARN-3238) | *Blocker* | **Connection timeouts to nodemanagers are retried at multiple levels**
---

* [YARN-3237](https://issues.apache.org/jira/browse/YARN-3237) | *Major* | **AppLogAggregatorImpl fails to log error cause**
---

* [YARN-3236](https://issues.apache.org/jira/browse/YARN-3236) | *Trivial* | **cleanup RMAuthenticationFilter#AUTH\_HANDLER\_PROPERTY.**
---

* [YARN-3231](https://issues.apache.org/jira/browse/YARN-3231) | *Critical* | **FairScheduler: Changing queueMaxRunningApps interferes with pending jobs**
---

* [YARN-3230](https://issues.apache.org/jira/browse/YARN-3230) | *Major* | **Clarify application states on the web UI**
---

* [YARN-3227](https://issues.apache.org/jira/browse/YARN-3227) | *Critical* | **Timeline renew delegation token fails when RM user's TGT is expired**
---

* [YARN-3222](https://issues.apache.org/jira/browse/YARN-3222) | *Critical* | **RMNodeImpl#ReconnectNodeTransition should send scheduler events in sequential order**
---

* [YARN-3217](https://issues.apache.org/jira/browse/YARN-3217) | *Major* | **Remove httpclient dependency from hadoop-yarn-server-web-proxy**
---

* [YARN-3207](https://issues.apache.org/jira/browse/YARN-3207) | *Major* | **secondary filter matches entites which do not have the key being filtered for.**
---

* [YARN-3203](https://issues.apache.org/jira/browse/YARN-3203) | *Minor* | **Correct a log message in AuxServices**
---

* [YARN-3195](https://issues.apache.org/jira/browse/YARN-3195) | *Minor* | **Add -help to yarn logs and nodes CLI command**
---

* [YARN-3194](https://issues.apache.org/jira/browse/YARN-3194) | *Blocker* | **RM should handle NMContainerStatuses sent by NM while registering if NM is Reconnected node**
---

* [YARN-3191](https://issues.apache.org/jira/browse/YARN-3191) | *Trivial* | **Log object should be initialized with its own class**
---

* [YARN-3187](https://issues.apache.org/jira/browse/YARN-3187) | *Major* | **Documentation of Capacity Scheduler Queue mapping based on user or group**
---

* [YARN-3182](https://issues.apache.org/jira/browse/YARN-3182) | *Minor* | **Cleanup switch statement in ApplicationMasterLauncher#handle()**
---

* [YARN-3179](https://issues.apache.org/jira/browse/YARN-3179) | *Minor* | **Update use of Iterator to Iterable**
---

* [YARN-3171](https://issues.apache.org/jira/browse/YARN-3171) | *Minor* | **Sort by Application id, AppAttempt & ContainerID doesn't work in ATS / RM web ui**
---

* [YARN-3164](https://issues.apache.org/jira/browse/YARN-3164) | *Minor* | **rmadmin command usage prints incorrect command name**
---

* [YARN-3160](https://issues.apache.org/jira/browse/YARN-3160) | *Major* | **Non-atomic operation on nodeUpdateQueue in RMNodeImpl**
---

* [YARN-3158](https://issues.apache.org/jira/browse/YARN-3158) | *Major* | **Correct log messages in ResourceTrackerService**
---

* [YARN-3157](https://issues.apache.org/jira/browse/YARN-3157) | *Minor* | **Refactor the exception handling in ConverterUtils#to*Id**
---

* [YARN-3155](https://issues.apache.org/jira/browse/YARN-3155) | *Minor* | **Refactor the exception handling code for TimelineClientImpl's retryOn method**
---

* [YARN-3154](https://issues.apache.org/jira/browse/YARN-3154) | *Blocker* | **Should not upload partial logs for MR jobs or other "short-running' applications**
---

* [YARN-3151](https://issues.apache.org/jira/browse/YARN-3151) | *Minor* | **On Failover tracking url wrong in application cli for KILLED application**
---

* [YARN-3149](https://issues.apache.org/jira/browse/YARN-3149) | *Trivial* | **Typo in message for invalid application id**
---

* [YARN-3147](https://issues.apache.org/jira/browse/YARN-3147) | *Major* | **Clean up RM web proxy code**
---

* [YARN-3145](https://issues.apache.org/jira/browse/YARN-3145) | *Major* | **ConcurrentModificationException on CapacityScheduler ParentQueue#getQueueUserAclInfo**
---

* [YARN-3144](https://issues.apache.org/jira/browse/YARN-3144) | *Major* | **Configuration for making delegation token failures to timeline server not-fatal**
---

* [YARN-3143](https://issues.apache.org/jira/browse/YARN-3143) | *Major* | **RM Apps REST API can return NPE or entries missing id and other fields**
---

* [YARN-3132](https://issues.apache.org/jira/browse/YARN-3132) | *Major* | **RMNodeLabelsManager should remove node from node-to-label mapping when node becomes deactivated**
---

* [YARN-3131](https://issues.apache.org/jira/browse/YARN-3131) | *Major* | **YarnClientImpl should check FAILED and KILLED state in submitApplication**
---

* [YARN-3124](https://issues.apache.org/jira/browse/YARN-3124) | *Major* | **Capacity Scheduler LeafQueue/ParentQueue should use QueueCapacities to track capacities-by-label**
---

* [YARN-3123](https://issues.apache.org/jira/browse/YARN-3123) | *Major* | **Make YARN CLI show a single completed container even if the app is running**
---

* [YARN-3122](https://issues.apache.org/jira/browse/YARN-3122) | *Major* | **Metrics for container's actual CPU usage**
---

* [YARN-3113](https://issues.apache.org/jira/browse/YARN-3113) | *Major* | **Release audit warning for "Sorting icons.psd"**
---

* [YARN-3108](https://issues.apache.org/jira/browse/YARN-3108) | *Major* | **ApplicationHistoryServer doesn't process -D arguments**
---

* [YARN-3104](https://issues.apache.org/jira/browse/YARN-3104) | *Major* | **RM generates new AMRM tokens every heartbeat between rolling and activation**
---

* [YARN-3103](https://issues.apache.org/jira/browse/YARN-3103) | *Blocker* | **AMRMClientImpl does not update AMRM token properly**
---

* [YARN-3101](https://issues.apache.org/jira/browse/YARN-3101) | *Major* | **In Fair Scheduler, fix canceling of reservations for exceeding max share**
---

* [YARN-3100](https://issues.apache.org/jira/browse/YARN-3100) | *Major* | **Make YARN authorization pluggable**
---

* [YARN-3099](https://issues.apache.org/jira/browse/YARN-3099) | *Major* | **Capacity Scheduler LeafQueue/ParentQueue should use ResourceUsage to track used-resources-by-label.**
---

* [YARN-3098](https://issues.apache.org/jira/browse/YARN-3098) | *Major* | **Create common QueueCapacities class in Capacity Scheduler to track capacities-by-labels of queues**
---

* [YARN-3094](https://issues.apache.org/jira/browse/YARN-3094) | *Major* | **reset timer for liveness monitors after RM recovery**
---

* [YARN-3092](https://issues.apache.org/jira/browse/YARN-3092) | *Major* | **Create common ResourceUsage class to track labeled resource usages in Capacity Scheduler**
---

* [YARN-3090](https://issues.apache.org/jira/browse/YARN-3090) | *Major* | **DeletionService can silently ignore deletion task failures**
---

* [YARN-3089](https://issues.apache.org/jira/browse/YARN-3089) | *Blocker* | **LinuxContainerExecutor does not handle file arguments to deleteAsUser**
---

* [YARN-3088](https://issues.apache.org/jira/browse/YARN-3088) | *Major* | **LinuxContainerExecutor.deleteAsUser can throw NPE if native executor returns an error**
---

* [YARN-3086](https://issues.apache.org/jira/browse/YARN-3086) | *Minor* | **Make NodeManager memory configurable in MiniYARNCluster**
---

* [YARN-3085](https://issues.apache.org/jira/browse/YARN-3085) | *Major* | **Application summary should include the application type**
---

* [YARN-3079](https://issues.apache.org/jira/browse/YARN-3079) | *Major* | **Scheduler should also update maximumAllocation when updateNodeResource.**
---

* [YARN-3078](https://issues.apache.org/jira/browse/YARN-3078) | *Minor* | **LogCLIHelpers lacks of a blank space before string 'does not exist'**
---

* [YARN-3077](https://issues.apache.org/jira/browse/YARN-3077) | *Major* | **RM should create yarn.resourcemanager.zk-state-store.parent-path recursively**
---

* [YARN-3076](https://issues.apache.org/jira/browse/YARN-3076) | *Major* | **Add API/Implementation to YarnClient to retrieve label-to-node mapping**
---

* [YARN-3075](https://issues.apache.org/jira/browse/YARN-3075) | *Major* | **NodeLabelsManager implementation to retrieve label to node mapping**
---

* [YARN-3074](https://issues.apache.org/jira/browse/YARN-3074) | *Major* | **Nodemanager dies when localizer runner tries to write to a full disk**
---

* [YARN-3071](https://issues.apache.org/jira/browse/YARN-3071) | *Trivial* | **Remove invalid char from sample conf in doc of FairScheduler**
---

* [YARN-3070](https://issues.apache.org/jira/browse/YARN-3070) | *Minor* | **TestRMAdminCLI#testHelp fails for transitionToActive command**
---

* [YARN-3064](https://issues.apache.org/jira/browse/YARN-3064) | *Critical* | **TestRMRestart/TestContainerResourceUsage/TestNodeManagerResync failure with allocation timeout**
---

* [YARN-3058](https://issues.apache.org/jira/browse/YARN-3058) | *Minor* | **Fix error message of tokens' activation delay configuration**
---

* [YARN-3056](https://issues.apache.org/jira/browse/YARN-3056) | *Trivial* | **add verification for containerLaunchDuration in TestNodeManagerMetrics.**
---

* [YARN-3028](https://issues.apache.org/jira/browse/YARN-3028) | *Major* | **Better syntax for replaceLabelsOnNode in RMAdmin CLI**
---

* [YARN-3027](https://issues.apache.org/jira/browse/YARN-3027) | *Major* | **Scheduler should use totalAvailable resource from node instead of availableResource for maxAllocation**
---

* [YARN-3024](https://issues.apache.org/jira/browse/YARN-3024) | *Major* | **LocalizerRunner should give DIE action when all resources are localized**
---

* [YARN-3022](https://issues.apache.org/jira/browse/YARN-3022) | *Major* | **Expose Container resource information from NodeManager for monitoring**
---

* [YARN-3015](https://issues.apache.org/jira/browse/YARN-3015) | *Minor* | **yarn classpath command should support same options as hadoop classpath.**
---

* [YARN-3014](https://issues.apache.org/jira/browse/YARN-3014) | *Major* | **Replaces labels on a host should update all NM's labels on that host**
---

* [YARN-3011](https://issues.apache.org/jira/browse/YARN-3011) | *Major* | **NM dies because of the failure of resource localization**
---

* [YARN-3010](https://issues.apache.org/jira/browse/YARN-3010) | *Minor* | **Fix recent findbug issue in AbstractYarnScheduler**
---

* [YARN-3005](https://issues.apache.org/jira/browse/YARN-3005) | *Trivial* | **[JDK7] Use switch statement for String instead of if-else statement in RegistrySecurity.java**
---

* [YARN-2998](https://issues.apache.org/jira/browse/YARN-2998) | *Major* | **Abstract out scheduler independent PlanFollower components**
---

* [YARN-2997](https://issues.apache.org/jira/browse/YARN-2997) | *Major* | **NM keeps sending already-sent completed containers to RM until containers are removed from context**
---

* [YARN-2996](https://issues.apache.org/jira/browse/YARN-2996) | *Major* | **Refine fs operations in FileSystemRMStateStore and few fixes**
---

* [YARN-2994](https://issues.apache.org/jira/browse/YARN-2994) | *Major* | **Document work-preserving RM restart**
---

* [YARN-2993](https://issues.apache.org/jira/browse/YARN-2993) | *Major* | **Several fixes (missing acl check, error log msg ...) and some refinement in AdminService**
---

* [YARN-2992](https://issues.apache.org/jira/browse/YARN-2992) | *Blocker* | **ZKRMStateStore crashes due to session expiry**
---

* [YARN-2991](https://issues.apache.org/jira/browse/YARN-2991) | *Blocker* | **TestRMRestart.testDecomissionedNMsMetricsOnRMRestart intermittently fails on trunk**
---

* [YARN-2990](https://issues.apache.org/jira/browse/YARN-2990) | *Major* | **FairScheduler's delay-scheduling always waits for node-local and rack-local delays, even for off-rack-only requests**
---

* [YARN-2988](https://issues.apache.org/jira/browse/YARN-2988) | *Minor* | **Graph#save() may leak file descriptors**
---

* [YARN-2987](https://issues.apache.org/jira/browse/YARN-2987) | *Major* | **ClientRMService#getQueueInfo doesn't check app ACLs**
---

* [YARN-2984](https://issues.apache.org/jira/browse/YARN-2984) | *Major* | **Metrics for container's actual memory usage**
---

* [YARN-2983](https://issues.apache.org/jira/browse/YARN-2983) | *Major* | **NPE possible in ClientRMService#getQueueInfo**
---

* [YARN-2978](https://issues.apache.org/jira/browse/YARN-2978) | *Critical* | **ResourceManager crashes with NPE while getting queue info**
---

* [YARN-2977](https://issues.apache.org/jira/browse/YARN-2977) | *Major* | **TestNMClient get failed intermittently**
---

* [YARN-2975](https://issues.apache.org/jira/browse/YARN-2975) | *Blocker* | **FSLeafQueue app lists are accessed without required locks**
---

* [YARN-2972](https://issues.apache.org/jira/browse/YARN-2972) | *Major* | **DelegationTokenRenewer thread pool never expands**
---

* [YARN-2971](https://issues.apache.org/jira/browse/YARN-2971) | *Major* | **RM uses conf instead of token service address to renew timeline delegation tokens**
---

* [YARN-2970](https://issues.apache.org/jira/browse/YARN-2970) | *Minor* | **NodeLabel operations in RMAdmin CLI get missing in help command.**
---

* [YARN-2964](https://issues.apache.org/jira/browse/YARN-2964) | *Blocker* | **RM prematurely cancels tokens for jobs that submit jobs (oozie)**
---

* [YARN-2958](https://issues.apache.org/jira/browse/YARN-2958) | *Blocker* | **RMStateStore seems to unnecessarily and wrongly store sequence number separately**
---

* [YARN-2957](https://issues.apache.org/jira/browse/YARN-2957) | *Minor* | **Create unit test to automatically compare YarnConfiguration and yarn-default.xml**
---

* [YARN-2956](https://issues.apache.org/jira/browse/YARN-2956) | *Minor* | **Some yarn-site index linked pages are difficult to discover because are not in the side bar**
---

* [YARN-2952](https://issues.apache.org/jira/browse/YARN-2952) | *Major* | **Incorrect version check in RMStateStore**
---

* [YARN-2950](https://issues.apache.org/jira/browse/YARN-2950) | *Minor* | **Change message to mandate, not suggest JS requirement on UI**
---

* [YARN-2949](https://issues.apache.org/jira/browse/YARN-2949) | *Major* | **Add documentation for CGroups**
---

* [YARN-2945](https://issues.apache.org/jira/browse/YARN-2945) | *Major* | **FSLeafQueue#assignContainer - document the reason for using both write and read locks**
---

* [YARN-2944](https://issues.apache.org/jira/browse/YARN-2944) | *Minor* | **InMemorySCMStore can not be instantiated with ReflectionUtils#newInstance**
---

* [YARN-2943](https://issues.apache.org/jira/browse/YARN-2943) | *Major* | **Add a node-labels page in RM web UI**
---

* [YARN-2940](https://issues.apache.org/jira/browse/YARN-2940) | *Major* | **Fix new findbugs warnings in rest of the hadoop-yarn components**
---

* [YARN-2939](https://issues.apache.org/jira/browse/YARN-2939) | *Major* | **Fix new findbugs warnings in hadoop-yarn-common**
---

* [YARN-2938](https://issues.apache.org/jira/browse/YARN-2938) | *Major* | **Fix new findbugs warnings in hadoop-yarn-resourcemanager and hadoop-yarn-applicationhistoryservice**
---

* [YARN-2937](https://issues.apache.org/jira/browse/YARN-2937) | *Major* | **Fix new findbugs warnings in hadoop-yarn-nodemanager**
---

* [YARN-2936](https://issues.apache.org/jira/browse/YARN-2936) | *Major* | **YARNDelegationTokenIdentifier doesn't set proto.builder now**
---

* [YARN-2933](https://issues.apache.org/jira/browse/YARN-2933) | *Major* | **Capacity Scheduler preemption policy should only consider capacity without labels temporarily**
---

* [YARN-2932](https://issues.apache.org/jira/browse/YARN-2932) | *Major* | **Add entry for "preemptable" status (enabled/disabled) to scheduler web UI and queue initialize/refresh logging**
---

* [YARN-2931](https://issues.apache.org/jira/browse/YARN-2931) | *Critical* | **PublicLocalizer may fail until directory is initialized by LocalizeRunner**
---

* [YARN-2930](https://issues.apache.org/jira/browse/YARN-2930) | *Minor* | **TestRMRestart#testRMRestartRecoveringNodeLabelManager sometimes fails against Java 7 & 8**
---

* [YARN-2927](https://issues.apache.org/jira/browse/YARN-2927) | *Major* | **InMemorySCMStore properties are inconsistent**
---

* [YARN-2924](https://issues.apache.org/jira/browse/YARN-2924) | *Major* | **Node to labels mapping should not transfer to lowercase when adding from RMAdminCLI**
---

* [YARN-2922](https://issues.apache.org/jira/browse/YARN-2922) | *Major* | **ConcurrentModificationException in CapacityScheduler's LeafQueue**
---

* [YARN-2920](https://issues.apache.org/jira/browse/YARN-2920) | *Major* | **CapacityScheduler should be notified when labels on nodes changed**
---

* [YARN-2917](https://issues.apache.org/jira/browse/YARN-2917) | *Critical* | **Potential deadlock in AsyncDispatcher when system.exit called in AsyncDispatcher#dispatch and AsyscDispatcher#serviceStop from shutdown hook**
---

* [YARN-2914](https://issues.apache.org/jira/browse/YARN-2914) | *Minor* | **Potential race condition in Singleton implementation of SharedCacheUploaderMetrics, CleanerMetrics, ClientSCMMetrics**
---

* [YARN-2912](https://issues.apache.org/jira/browse/YARN-2912) | *Major* | **Jersey Tests failing with port in use**
---

* [YARN-2910](https://issues.apache.org/jira/browse/YARN-2910) | *Major* | **FSLeafQueue can throw ConcurrentModificationException**
---

* [YARN-2907](https://issues.apache.org/jira/browse/YARN-2907) | *Trivial* | **SchedulerNode#toString should print all resource detail instead of only memory.**
---

* [YARN-2906](https://issues.apache.org/jira/browse/YARN-2906) | *Major* | **CapacitySchedulerPage shows HTML tags for a queue's Active Users**
---

* [YARN-2905](https://issues.apache.org/jira/browse/YARN-2905) | *Blocker* | **AggregatedLogsBlock page can infinitely loop if the aggregated log file is corrupted**
---

* [YARN-2899](https://issues.apache.org/jira/browse/YARN-2899) | *Minor* | **Run TestDockerContainerExecutorWithMocks on Linux only**
---

* [YARN-2897](https://issues.apache.org/jira/browse/YARN-2897) | *Major* | **CrossOriginFilter needs more log statements**
---

* [YARN-2894](https://issues.apache.org/jira/browse/YARN-2894) | *Major* | **When ACL's are enabled, if RM switches then application can not be viewed from web.**
---

* [YARN-2891](https://issues.apache.org/jira/browse/YARN-2891) | *Minor* | **Failed Container Executor does not provide a clear error message**
---

* [YARN-2881](https://issues.apache.org/jira/browse/YARN-2881) | *Major* | **Implement PlanFollower for FairScheduler**
---

* [YARN-2880](https://issues.apache.org/jira/browse/YARN-2880) | *Major* | **Add a test in TestRMRestart to make sure node labels will be recovered if it is enabled**
---

* [YARN-2878](https://issues.apache.org/jira/browse/YARN-2878) | *Major* | **Fix DockerContainerExecutor.apt.vm formatting**
---

* [YARN-2874](https://issues.apache.org/jira/browse/YARN-2874) | *Blocker* | **Dead lock in "DelegationTokenRenewer" which blocks RM to execute any further apps**
---

* [YARN-2870](https://issues.apache.org/jira/browse/YARN-2870) | *Trivial* | **Update examples in document of Timeline Server**
---

* [YARN-2869](https://issues.apache.org/jira/browse/YARN-2869) | *Major* | **CapacityScheduler should trim sub queue names when parse configuration**
---

* [YARN-2865](https://issues.apache.org/jira/browse/YARN-2865) | *Critical* | **Application recovery continuously fails with "Application with id already present. Cannot duplicate"**
---

* [YARN-2861](https://issues.apache.org/jira/browse/YARN-2861) | *Major* | **Timeline DT secret manager should not reuse the RM's configs.**
---

* [YARN-2857](https://issues.apache.org/jira/browse/YARN-2857) | *Critical* | **ConcurrentModificationException in ContainerLogAppender**
---

* [YARN-2856](https://issues.apache.org/jira/browse/YARN-2856) | *Critical* | **Application recovery throw InvalidStateTransitonException: Invalid event: ATTEMPT\_KILLED at ACCEPTED**
---

* [YARN-2854](https://issues.apache.org/jira/browse/YARN-2854) | *Critical* | **The document about timeline service and generic service needs to be updated**
---

* [YARN-2847](https://issues.apache.org/jira/browse/YARN-2847) | *Major* | **Linux native container executor segfaults if default banned user detected**
---

* [YARN-2837](https://issues.apache.org/jira/browse/YARN-2837) | *Blocker* | **Timeline server needs to recover the timeline DT when restarting**
---

* [YARN-2820](https://issues.apache.org/jira/browse/YARN-2820) | *Major* | ** Retry in FileSystemRMStateStore when FS's operations fail due to IOException.**
---

* [YARN-2816](https://issues.apache.org/jira/browse/YARN-2816) | *Major* | **NM fail to start with NPE during container recovery**
---

* [YARN-2815](https://issues.apache.org/jira/browse/YARN-2815) | *Major* | **Remove jline from hadoop-yarn-server-common**
---

* [YARN-2811](https://issues.apache.org/jira/browse/YARN-2811) | *Major* | **In Fair Scheduler, reservation fulfillments shouldn't ignore max share**
---

* [YARN-2809](https://issues.apache.org/jira/browse/YARN-2809) | *Major* | **Implement workaround for linux kernel panic when removing cgroup**
---

* [YARN-2808](https://issues.apache.org/jira/browse/YARN-2808) | *Major* | **yarn client tool can not list app\_attempt's container info correctly**
---

* [YARN-2807](https://issues.apache.org/jira/browse/YARN-2807) | *Minor* | **Option "--forceactive" not works as described in usage of "yarn rmadmin -transitionToActive"**
---

* [YARN-2802](https://issues.apache.org/jira/browse/YARN-2802) | *Major* | **ClusterMetrics to include AM launch and register delays**
---

* [YARN-2800](https://issues.apache.org/jira/browse/YARN-2800) | *Major* | **Remove MemoryNodeLabelsStore and add a way to enable/disable node labels feature**
---

* [YARN-2799](https://issues.apache.org/jira/browse/YARN-2799) | *Minor* | **cleanup TestLogAggregationService based on the change in YARN-90**
---

* [YARN-2797](https://issues.apache.org/jira/browse/YARN-2797) | *Minor* | **TestWorkPreservingRMRestart should use ParametrizedSchedulerTestBase**
---

* [YARN-2786](https://issues.apache.org/jira/browse/YARN-2786) | *Major* | **Create yarn cluster CLI to enable list node labels collection**
---

* [YARN-2780](https://issues.apache.org/jira/browse/YARN-2780) | *Minor* | **Log aggregated resource allocation in rm-appsummary.log**
---

* [YARN-2777](https://issues.apache.org/jira/browse/YARN-2777) | *Major* | **Mark the end of individual log in aggregated log**
---

* [YARN-2766](https://issues.apache.org/jira/browse/YARN-2766) | *Major* | ** ApplicationHistoryManager is expected to return a sorted list of apps/attempts/containers**
---

* [YARN-2765](https://issues.apache.org/jira/browse/YARN-2765) | *Major* | **Add leveldb-based implementation for RMStateStore**
---

* [YARN-2762](https://issues.apache.org/jira/browse/YARN-2762) | *Minor* | **RMAdminCLI node-labels-related args should be trimmed and checked before sending to RM**
---

* [YARN-2749](https://issues.apache.org/jira/browse/YARN-2749) | *Major* | **Some testcases from TestLogAggregationService fails in trunk**
---

* [YARN-2742](https://issues.apache.org/jira/browse/YARN-2742) | *Minor* | **FairSchedulerConfiguration should allow extra spaces between value and unit**
---

* [YARN-2738](https://issues.apache.org/jira/browse/YARN-2738) | *Major* | **Add FairReservationSystem for FairScheduler**
---

* [YARN-2735](https://issues.apache.org/jira/browse/YARN-2735) | *Trivial* | **diskUtilizationPercentageCutoff and diskUtilizationSpaceCutoff are initialized twice in DirectoryCollection**
---

* [YARN-2731](https://issues.apache.org/jira/browse/YARN-2731) | *Major* | **Fixed RegisterApplicationMasterResponsePBImpl to properly invoke maybeInitBuilder**
---

* [YARN-2713](https://issues.apache.org/jira/browse/YARN-2713) | *Major* | **"RM Home" link in NM should point to one of the RMs in an HA setup**
---

* [YARN-2712](https://issues.apache.org/jira/browse/YARN-2712) | *Major* | **TestWorkPreservingRMRestart: Augment FS tests with queue and headroom checks**
---

* [YARN-2697](https://issues.apache.org/jira/browse/YARN-2697) | *Major* | **RMAuthenticationHandler is no longer useful**
---

* [YARN-2694](https://issues.apache.org/jira/browse/YARN-2694) | *Major* | **Ensure only single node labels specified in resource request / host, and node label expression only specified when resourceName=ANY**
---

* [YARN-2690](https://issues.apache.org/jira/browse/YARN-2690) | *Major* | **Make ReservationSystem and its dependent classes independent of Scheduler type**
---

* [YARN-2683](https://issues.apache.org/jira/browse/YARN-2683) | *Major* | **registry config options: document and move to core-default**
---

* [YARN-2679](https://issues.apache.org/jira/browse/YARN-2679) | *Major* | **Add metric for container launch duration**
---

* [YARN-2675](https://issues.apache.org/jira/browse/YARN-2675) | *Major* | **containersKilled metrics is not updated when the container is killed during localization**
---

* [YARN-2669](https://issues.apache.org/jira/browse/YARN-2669) | *Major* | **FairScheduler: queue names shouldn't allow periods**
---

* [YARN-2643](https://issues.apache.org/jira/browse/YARN-2643) | *Trivial* | **Don't create a new DominantResourceCalculator on every FairScheduler.allocate call**
---

* [YARN-2641](https://issues.apache.org/jira/browse/YARN-2641) | *Major* | **Decommission nodes on -refreshNodes instead of next NM-RM heartbeat**
---

* [YARN-2637](https://issues.apache.org/jira/browse/YARN-2637) | *Critical* | **maximum-am-resource-percent could be respected for both LeafQueue/User when trying to activate applications.**
---

* [YARN-2616](https://issues.apache.org/jira/browse/YARN-2616) | *Major* | **Add CLI client to the registry to list, view and manipulate entries**
---

* [YARN-2604](https://issues.apache.org/jira/browse/YARN-2604) | *Major* | **Scheduler should consider max-allocation-* in conjunction with the largest node**
---

* [YARN-2574](https://issues.apache.org/jira/browse/YARN-2574) | *Major* | **Add support for FairScheduler to the ReservationSystem**
---

* [YARN-2543](https://issues.apache.org/jira/browse/YARN-2543) | *Major* | **Resource usage should be published to the timeline server as well**
---

* [YARN-2461](https://issues.apache.org/jira/browse/YARN-2461) | *Minor* | **Fix PROCFS\_USE\_SMAPS\_BASED\_RSS\_ENABLED property in YarnConfiguration**
---

* [YARN-2432](https://issues.apache.org/jira/browse/YARN-2432) | *Major* | **RMStateStore should process the pending events before close**
---

* [YARN-2427](https://issues.apache.org/jira/browse/YARN-2427) | *Major* | **Add support for moving apps between queues in RM web services**
---

* [YARN-2414](https://issues.apache.org/jira/browse/YARN-2414) | *Major* | **RM web UI: app page will crash if app is failed before any attempt has been created**
---

* [YARN-2404](https://issues.apache.org/jira/browse/YARN-2404) | *Major* | **Remove ApplicationAttemptState and ApplicationState class in RMStateStore class**
---

* [YARN-2375](https://issues.apache.org/jira/browse/YARN-2375) | *Major* | **Allow enabling/disabling timeline server per framework**
---

* [YARN-2360](https://issues.apache.org/jira/browse/YARN-2360) | *Major* | **Fair Scheduler: Display dynamic fair share for queues on the scheduler page**
---

* [YARN-2356](https://issues.apache.org/jira/browse/YARN-2356) | *Minor* | **yarn status command for non-existent application/application attempt/container is too verbose**
---

* [YARN-2340](https://issues.apache.org/jira/browse/YARN-2340) | *Critical* | **NPE thrown when RM restart after queue is STOPPED. There after RM can not recovery application's and remain in standby**
---

* [YARN-2315](https://issues.apache.org/jira/browse/YARN-2315) | *Major* | **FairScheduler: Set current capacity in addition to capacity**
---

* [YARN-2301](https://issues.apache.org/jira/browse/YARN-2301) | *Major* | **Improve yarn container command**
---

* [YARN-2254](https://issues.apache.org/jira/browse/YARN-2254) | *Minor* | **TestRMWebServicesAppsModification should run against both CS and FS**
---

* [YARN-2246](https://issues.apache.org/jira/browse/YARN-2246) | *Major* | **Job History Link in RM UI is redirecting to the URL which contains Job Id twice**
---

* [YARN-2236](https://issues.apache.org/jira/browse/YARN-2236) | *Major* | **Shared Cache uploader service on the Node Manager**
---

* [YARN-2230](https://issues.apache.org/jira/browse/YARN-2230) | *Minor* | **Fix description of yarn.scheduler.maximum-allocation-vcores in yarn-default.xml (or code)**

I have modified the description of the yarn.scheduler.maximum-allocation-vcores setting in yarn-default.xml to be reflective of the actual behavior (throw InvalidRequestException when the limit is crossed).

Since this is a documentation change, I have not added any test cases.

Please review the patch, thanks!

---

* [YARN-2217](https://issues.apache.org/jira/browse/YARN-2217) | *Major* | **Shared cache client side changes**
---

* [YARN-2203](https://issues.apache.org/jira/browse/YARN-2203) | *Major* | **Web UI for cache manager**
---

* [YARN-2190](https://issues.apache.org/jira/browse/YARN-2190) | *Major* | **Add CPU and memory limit options to the default container executor for Windows containers**
---

* [YARN-2189](https://issues.apache.org/jira/browse/YARN-2189) | *Major* | **Admin service for cache manager**
---

* [YARN-2188](https://issues.apache.org/jira/browse/YARN-2188) | *Major* | **Client service for cache manager**
---

* [YARN-2186](https://issues.apache.org/jira/browse/YARN-2186) | *Major* | **Node Manager uploader service for cache manager**
---

* [YARN-2183](https://issues.apache.org/jira/browse/YARN-2183) | *Major* | **Cleaner service for cache manager**
---

* [YARN-2180](https://issues.apache.org/jira/browse/YARN-2180) | *Major* | **In-memory backing store for cache manager**
---

* [YARN-2179](https://issues.apache.org/jira/browse/YARN-2179) | *Major* | **Initial cache manager structure and context**
---

* [YARN-2165](https://issues.apache.org/jira/browse/YARN-2165) | *Major* | **Timeline server should validate the numeric configuration values**
---

* [YARN-2157](https://issues.apache.org/jira/browse/YARN-2157) | *Major* | **Document YARN metrics**
---

* [YARN-2136](https://issues.apache.org/jira/browse/YARN-2136) | *Major* | **RMStateStore can explicitly handle store/update events when fenced**
---

* [YARN-2079](https://issues.apache.org/jira/browse/YARN-2079) | *Major* | **Recover NonAggregatingLogHandler state upon nodemanager restart**
---

* [YARN-2056](https://issues.apache.org/jira/browse/YARN-2056) | *Major* | **Disable preemption at Queue level**
---

* [YARN-1984](https://issues.apache.org/jira/browse/YARN-1984) | *Major* | **LeveldbTimelineStore does not handle db exceptions properly**
---

* [YARN-1979](https://issues.apache.org/jira/browse/YARN-1979) | *Major* | **TestDirectoryCollection fails when the umask is unusual**
---

* [YARN-1904](https://issues.apache.org/jira/browse/YARN-1904) | *Major* | **Uniform the XXXXNotFound messages from ClientRMService and ApplicationHistoryClientService**

I just committed this. Thanks Zhijie!

---

* [YARN-1884](https://issues.apache.org/jira/browse/YARN-1884) | *Major* | **ContainerReport should have nodeHttpAddress**
---

* [YARN-1809](https://issues.apache.org/jira/browse/YARN-1809) | *Major* | **Synchronize RM and Generic History Service Web-UIs**
---

* [YARN-1723](https://issues.apache.org/jira/browse/YARN-1723) | *Major* | **AMRMClientAsync missing blacklist addition and removal functionality**
---

* [YARN-1703](https://issues.apache.org/jira/browse/YARN-1703) | *Critical* | **Too many connections are opened for proxy server when applicationMaster UI is accessed.**
---

* [YARN-1615](https://issues.apache.org/jira/browse/YARN-1615) | *Trivial* | **Fix typos in description about delay scheduling**
---

* [YARN-1582](https://issues.apache.org/jira/browse/YARN-1582) | *Major* | **Capacity Scheduler: add a maximum-allocation-mb setting per queue**
---

* [YARN-1580](https://issues.apache.org/jira/browse/YARN-1580) | *Trivial* | **Documentation error regarding "container-allocation.expiry-interval-ms"**
---

* [YARN-1537](https://issues.apache.org/jira/browse/YARN-1537) | *Major* | **TestLocalResourcesTrackerImpl.testLocalResourceCache often failed**
---

* [YARN-1514](https://issues.apache.org/jira/browse/YARN-1514) | *Major* | **Utility to benchmark ZKRMStateStore#loadState for ResourceManager-HA**
---

* [YARN-1453](https://issues.apache.org/jira/browse/YARN-1453) | *Minor* | **[JDK8] Fix Javadoc errors caused by incorrect or illegal tags in doc comments**
---

* [YARN-1393](https://issues.apache.org/jira/browse/YARN-1393) | *Major* | **SLS: Add how-to-use instructions**
---

* [YARN-1299](https://issues.apache.org/jira/browse/YARN-1299) | *Major* | **Improve a log message in AppSchedulingInfo by adding application id**
---

* [YARN-1237](https://issues.apache.org/jira/browse/YARN-1237) | *Minor* | **Description for yarn.nodemanager.aux-services in yarn-default.xml is misleading**
---

* [YARN-1156](https://issues.apache.org/jira/browse/YARN-1156) | *Major* | **Enhance NodeManager AllocatedGB and AvailableGB metrics for aggregation of decimal values**
---

* [YARN-933](https://issues.apache.org/jira/browse/YARN-933) | *Major* | **Potential InvalidStateTransitonException: Invalid event: LAUNCHED at FINAL\_SAVING**
---

* [YARN-570](https://issues.apache.org/jira/browse/YARN-570) | *Major* | **Time strings are formated in different timezone**


