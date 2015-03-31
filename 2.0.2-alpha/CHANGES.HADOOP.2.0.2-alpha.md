# Hadoop Changelog

## Release 2.0.2-alpha - 2012-10-09

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8794](https://issues.apache.org/jira/browse/HADOOP-8794) | Modifiy bin/hadoop to point to HADOOP\_YARN\_HOME |  Major | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HADOOP-8710](https://issues.apache.org/jira/browse/HADOOP-8710) | Remove ability for users to easily run the trash emptier |  Major | fs | Eli Collins | Eli Collins |
| [HADOOP-8689](https://issues.apache.org/jira/browse/HADOOP-8689) | Make trash a server side configuration option |  Major | fs | Eli Collins | Eli Collins |
| [HADOOP-8551](https://issues.apache.org/jira/browse/HADOOP-8551) | fs -mkdir creates parent directories without the -p option |  Major | fs | Robert Joseph Evans | John George |
| [HADOOP-8458](https://issues.apache.org/jira/browse/HADOOP-8458) | Add management hook to AuthenticationHandler to enable delegation token operations support |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8388](https://issues.apache.org/jira/browse/HADOOP-8388) | Remove unused BlockLocation serialization |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8368](https://issues.apache.org/jira/browse/HADOOP-8368) | Use CMake rather than autotools to build native code |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8644](https://issues.apache.org/jira/browse/HADOOP-8644) | AuthenticatedURL should be able to use SSLFactory |  Critical | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8581](https://issues.apache.org/jira/browse/HADOOP-8581) | add support for HTTPS to the web UIs |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8465](https://issues.apache.org/jira/browse/HADOOP-8465) | hadoop-auth should support ephemeral authentication |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8135](https://issues.apache.org/jira/browse/HADOOP-8135) | Add ByteBufferReadable interface to FSDataInputStream |  Major | fs | Henry Robinson | Henry Robinson |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8754](https://issues.apache.org/jira/browse/HADOOP-8754) | Deprecate all the RPC.getServer() variants |  Minor | ipc | Brandon Li | Brandon Li |
| [HADOOP-8748](https://issues.apache.org/jira/browse/HADOOP-8748) | Move dfsclient retry to a util class |  Minor | io | Arun C Murthy | Arun C Murthy |
| [HADOOP-8700](https://issues.apache.org/jira/browse/HADOOP-8700) | Move the checksum type constants to an enum |  Minor | util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-8687](https://issues.apache.org/jira/browse/HADOOP-8687) | Upgrade log4j to 1.2.17 |  Minor | . | Eli Collins | Eli Collins |
| [HADOOP-8635](https://issues.apache.org/jira/browse/HADOOP-8635) | Cannot cancel paths registered deleteOnExit |  Critical | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-8624](https://issues.apache.org/jira/browse/HADOOP-8624) | ProtobufRpcEngine should log all RPCs if TRACE logging is enabled |  Minor | ipc | Todd Lipcon | Todd Lipcon |
| [HADOOP-8623](https://issues.apache.org/jira/browse/HADOOP-8623) | hadoop jar command should respect HADOOP\_OPTS |  Minor | scripts | Steven Willis | Steven Willis |
| [HADOOP-8620](https://issues.apache.org/jira/browse/HADOOP-8620) | Add -Drequire.fuse and -Drequire.snappy |  Minor | build | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8609](https://issues.apache.org/jira/browse/HADOOP-8609) | IPC server logs a useless message when shutting down socket |  Major | . | Todd Lipcon | Jon Zuanich |
| [HADOOP-8541](https://issues.apache.org/jira/browse/HADOOP-8541) | Better high-percentile latency metrics |  Major | metrics | Andrew Wang | Andrew Wang |
| [HADOOP-8535](https://issues.apache.org/jira/browse/HADOOP-8535) | Cut hadoop build times in half (upgrade maven-compiler-plugin to 2.5.1) |  Major | build | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-8533](https://issues.apache.org/jira/browse/HADOOP-8533) | Remove Parallel Call in IPC |  Major | ipc | Suresh Srinivas | Brandon Li |
| [HADOOP-8531](https://issues.apache.org/jira/browse/HADOOP-8531) | SequenceFile Writer can throw out a better error if a serializer or deserializer isn't available |  Trivial | io | Harsh J | madhukara phatak |
| [HADOOP-8525](https://issues.apache.org/jira/browse/HADOOP-8525) | Provide Improved Traceability for Configuration |  Trivial | . | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8524](https://issues.apache.org/jira/browse/HADOOP-8524) | Allow users to get source of a Configuration parameter |  Trivial | conf | Harsh J | Harsh J |
| [HADOOP-8463](https://issues.apache.org/jira/browse/HADOOP-8463) | hadoop.security.auth\_to\_local needs a key definition and doc |  Major | security | Eli Collins | madhukara phatak |
| [HADOOP-8398](https://issues.apache.org/jira/browse/HADOOP-8398) | Cleanup BlockLocation |  Minor | . | Eli Collins | Eli Collins |
| [HADOOP-8373](https://issues.apache.org/jira/browse/HADOOP-8373) | Port RPC.getServerAddress to 0.23 |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-8367](https://issues.apache.org/jira/browse/HADOOP-8367) | Improve documentation of declaringClassProtocolName in rpc headers |  Major | . | Sanjay Radia | Sanjay Radia |
| [HADOOP-8362](https://issues.apache.org/jira/browse/HADOOP-8362) | Improve exception message when Configuration.set() is called with a null key or value |  Trivial | conf | Todd Lipcon | madhukara phatak |
| [HADOOP-8361](https://issues.apache.org/jira/browse/HADOOP-8361) | Avoid out-of-memory problems when deserializing strings |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8358](https://issues.apache.org/jira/browse/HADOOP-8358) | Config-related WARN for dfs.web.ugi can be avoided. |  Trivial | conf | Harsh J | Harsh J |
| [HADOOP-8340](https://issues.apache.org/jira/browse/HADOOP-8340) | SNAPSHOT build versions should compare as less than their eventual final release |  Minor | util | Todd Lipcon | Todd Lipcon |
| [HADOOP-8335](https://issues.apache.org/jira/browse/HADOOP-8335) | Improve Configuration's address handling |  Major | util | Daryn Sharp | Daryn Sharp |
| [HADOOP-8323](https://issues.apache.org/jira/browse/HADOOP-8323) | Revert HADOOP-7940 and improve javadocs and test for Text.clear() |  Critical | io | Harsh J | Harsh J |
| [HADOOP-8286](https://issues.apache.org/jira/browse/HADOOP-8286) | Simplify getting a socket address from conf |  Major | conf | Daryn Sharp | Daryn Sharp |
| [HADOOP-8278](https://issues.apache.org/jira/browse/HADOOP-8278) | Make sure components declare correct set of dependencies |  Major | build | Tom White | Tom White |
| [HADOOP-8244](https://issues.apache.org/jira/browse/HADOOP-8244) | Improve comments on ByteBufferReadable.read |  Major | . | Henry Robinson | Henry Robinson |
| [HADOOP-8242](https://issues.apache.org/jira/browse/HADOOP-8242) | AbstractDelegationTokenIdentifier: add getter methods for owner and realuser |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8240](https://issues.apache.org/jira/browse/HADOOP-8240) | Allow users to specify a checksum type on create() |  Major | fs | Kihwal Lee | Kihwal Lee |
| [HADOOP-8239](https://issues.apache.org/jira/browse/HADOOP-8239) | Extend MD5MD5CRC32FileChecksum to show the actual checksum type being used |  Major | fs | Kihwal Lee | Kihwal Lee |
| [HADOOP-8227](https://issues.apache.org/jira/browse/HADOOP-8227) | Allow RPC to limit ephemeral port range. |  Blocker | . | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8224](https://issues.apache.org/jira/browse/HADOOP-8224) | Don't hardcode hdfs.audit.logger in the scripts |  Major | conf | Eli Collins | Tomohiko Kinebuchi |
| [HADOOP-8075](https://issues.apache.org/jira/browse/HADOOP-8075) | Lower native-hadoop library log from info to debug |  Major | native | Eli Collins | Hızır Sefa İrken |
| [HADOOP-7510](https://issues.apache.org/jira/browse/HADOOP-7510) | Tokens should use original hostname provided instead of ip |  Major | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-6802](https://issues.apache.org/jira/browse/HADOOP-6802) | Remove FS\_CLIENT\_BUFFER\_DIR\_KEY = "fs.client.buffer.dir" from CommonConfigurationKeys.java (not used, deprecated) |  Major | conf, fs | Erik Steffl | Sho Shimauchi |
| [HADOOP-3450](https://issues.apache.org/jira/browse/HADOOP-3450) | Add tests to Local Directory Allocator for asserting their URI-returning capability |  Minor | fs | Ari Rabkin | Sho Shimauchi |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8801](https://issues.apache.org/jira/browse/HADOOP-8801) | ExitUtil#terminate should capture the exception stack trace |  Major | . | Eli Collins | Eli Collins |
| [HADOOP-8781](https://issues.apache.org/jira/browse/HADOOP-8781) | hadoop-config.sh should add JAVA\_LIBRARY\_PATH to LD\_LIBRARY\_PATH |  Major | scripts | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8775](https://issues.apache.org/jira/browse/HADOOP-8775) | MR2 distcp permits non-positive value to -bandwidth option which causes job never to complete |  Major | . | Sandy Ryza | Sandy Ryza |
| [HADOOP-8770](https://issues.apache.org/jira/browse/HADOOP-8770) | NN should not RPC to self to find trash defaults (causes deadlock) |  Blocker | trash | Todd Lipcon | Eli Collins |
| [HADOOP-8766](https://issues.apache.org/jira/browse/HADOOP-8766) | FileContextMainOperationsBaseTest should randomize the root dir |  Major | test | Eli Collins | Colin Patrick McCabe |
| [HADOOP-8764](https://issues.apache.org/jira/browse/HADOOP-8764) | CMake: HADOOP-8737 broke ARM build |  Major | build | Trevor Robinson | Trevor Robinson |
| [HADOOP-8749](https://issues.apache.org/jira/browse/HADOOP-8749) | HADOOP-8031 changed the way in which relative xincludes are handled in Configuration. |  Major | conf | Ahmed Radwan | Ahmed Radwan |
| [HADOOP-8747](https://issues.apache.org/jira/browse/HADOOP-8747) | Syntax error on cmake version 2.6 patch 2 in JNIFlags.cmake |  Major | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8737](https://issues.apache.org/jira/browse/HADOOP-8737) | cmake: always use JAVA\_HOME to find libjvm.so, jni.h, jni\_md.h |  Minor | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8727](https://issues.apache.org/jira/browse/HADOOP-8727) | Gracefully deprecate dfs.umaskmode in 2.x onwards |  Major | conf | Harsh J | Harsh J |
| [HADOOP-8726](https://issues.apache.org/jira/browse/HADOOP-8726) | The Secrets in Credentials are not available to MR tasks |  Major | security | Benoy Antony | Daryn Sharp |
| [HADOOP-8725](https://issues.apache.org/jira/browse/HADOOP-8725) | MR is broken when security is off |  Blocker | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-8722](https://issues.apache.org/jira/browse/HADOOP-8722) | Update BUILDING.txt with latest snappy info |  Minor | documentation | Eli Collins | Colin Patrick McCabe |
| [HADOOP-8721](https://issues.apache.org/jira/browse/HADOOP-8721) | ZKFC should not retry 45 times when attempting a graceful fence during a failover |  Critical | auto-failover, ha | suja s | Vinayakumar B |
| [HADOOP-8720](https://issues.apache.org/jira/browse/HADOOP-8720) | TestLocalFileSystem should use test root subdirectory |  Trivial | test | Vlad Rozov | Vlad Rozov |
| [HADOOP-8709](https://issues.apache.org/jira/browse/HADOOP-8709) | globStatus changed behavior from 0.20/1.x |  Critical | fs | Jason Lowe | Jason Lowe |
| [HADOOP-8703](https://issues.apache.org/jira/browse/HADOOP-8703) | distcpV2: turn CRC checking off for 0 byte size |  Major | . | Dave Thompson | Dave Thompson |
| [HADOOP-8699](https://issues.apache.org/jira/browse/HADOOP-8699) | some common testcases create core-site.xml in test-classes making other testcases to fail |  Critical | test | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8697](https://issues.apache.org/jira/browse/HADOOP-8697) | TestWritableName fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HADOOP-8695](https://issues.apache.org/jira/browse/HADOOP-8695) | TestPathData fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HADOOP-8693](https://issues.apache.org/jira/browse/HADOOP-8693) | TestSecurityUtil fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HADOOP-8692](https://issues.apache.org/jira/browse/HADOOP-8692) | TestLocalDirAllocator fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HADOOP-8686](https://issues.apache.org/jira/browse/HADOOP-8686) | Fix warnings in native code |  Minor | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8660](https://issues.apache.org/jira/browse/HADOOP-8660) | TestPseudoAuthenticator failing with NPE |  Major | . | Eli Collins | Alejandro Abdelnur |
| [HADOOP-8659](https://issues.apache.org/jira/browse/HADOOP-8659) | Native libraries must build with soft-float ABI for Oracle JVM on ARM |  Major | native | Trevor Robinson | Colin Patrick McCabe |
| [HADOOP-8655](https://issues.apache.org/jira/browse/HADOOP-8655) | In TextInputFormat, while specifying textinputformat.record.delimiter the character/character sequences in data file similar to starting character/starting character sequence in delimiter were found missing in certain cases in the Map Output |  Major | util | Arun A K |  |
| [HADOOP-8654](https://issues.apache.org/jira/browse/HADOOP-8654) | TextInputFormat delimiter  bug:- Input Text portion ends with & Delimiter starts with same char/char sequence |  Major | util | Gelesh |  |
| [HADOOP-8648](https://issues.apache.org/jira/browse/HADOOP-8648) | libhadoop:  native CRC32 validation crashes when io.bytes.per.checksum=1 |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8637](https://issues.apache.org/jira/browse/HADOOP-8637) | FilterFileSystem#setWriteChecksum is broken |  Critical | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-8634](https://issues.apache.org/jira/browse/HADOOP-8634) | Ensure FileSystem#close doesn't squawk for deleteOnExit paths |  Critical | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-8633](https://issues.apache.org/jira/browse/HADOOP-8633) | Interrupted FsShell copies may leave tmp files |  Critical | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-8632](https://issues.apache.org/jira/browse/HADOOP-8632) | Configuration leaking class-loaders |  Major | conf | Costin Leau | Costin Leau |
| [HADOOP-8627](https://issues.apache.org/jira/browse/HADOOP-8627) | FS deleteOnExit may delete the wrong path |  Critical | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-8626](https://issues.apache.org/jira/browse/HADOOP-8626) | Typo in default setting for hadoop.security.group.mapping.ldap.search.filter.user |  Major | security | Jonathan Natkins | Jonathan Natkins |
| [HADOOP-8614](https://issues.apache.org/jira/browse/HADOOP-8614) | IOUtils#skipFully hangs forever on EOF |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8613](https://issues.apache.org/jira/browse/HADOOP-8613) | AbstractDelegationTokenIdentifier#getUser() should set token auth type |  Critical | . | Daryn Sharp | Daryn Sharp |
| [HADOOP-8611](https://issues.apache.org/jira/browse/HADOOP-8611) | Allow fall-back to the shell-based implementation when JNI-based users-group mapping fails |  Major | security | Kihwal Lee | Robert Parker |
| [HADOOP-8606](https://issues.apache.org/jira/browse/HADOOP-8606) | FileSystem.get may return the wrong filesystem |  Major | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-8599](https://issues.apache.org/jira/browse/HADOOP-8599) | Non empty response from FileSystem.getFileBlockLocations when asking for data beyond the end of file |  Major | fs | Andrey Klochkov | Andrey Klochkov |
| [HADOOP-8587](https://issues.apache.org/jira/browse/HADOOP-8587) | HarFileSystem access of harMetaCache isn't threadsafe |  Minor | fs | Eli Collins | Eli Collins |
| [HADOOP-8586](https://issues.apache.org/jira/browse/HADOOP-8586) | Fixup a bunch of SPNEGO misspellings |  Major | . | Eli Collins | Eli Collins |
| [HADOOP-8585](https://issues.apache.org/jira/browse/HADOOP-8585) | Fix initialization circularity between UserGroupInformation and HadoopConfiguration |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8573](https://issues.apache.org/jira/browse/HADOOP-8573) | Configuration tries to read from an inputstream resource multiple times. |  Major | conf | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8566](https://issues.apache.org/jira/browse/HADOOP-8566) | AvroReflectSerializer.accept(Class) throws a NPE if the class has no package (primitive types and arrays) |  Major | io | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8563](https://issues.apache.org/jira/browse/HADOOP-8563) | don't package hadoop-pipes examples/bin |  Minor | build | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8550](https://issues.apache.org/jira/browse/HADOOP-8550) | hadoop fs -touchz automatically created parent directories |  Major | fs | Robert Joseph Evans | John George |
| [HADOOP-8547](https://issues.apache.org/jira/browse/HADOOP-8547) | Package hadoop-pipes examples/bin directory (again) |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8543](https://issues.apache.org/jira/browse/HADOOP-8543) | Invalid pom.xml files on 0.23 branch |  Major | build | Radim Kolar | Radim Kolar |
| [HADOOP-8538](https://issues.apache.org/jira/browse/HADOOP-8538) | CMake builds fail on ARM |  Major | native | Trevor Robinson | Trevor Robinson |
| [HADOOP-8537](https://issues.apache.org/jira/browse/HADOOP-8537) | Two TFile tests failing recently |  Major | io | Todd Lipcon | Todd Lipcon |
| [HADOOP-8512](https://issues.apache.org/jira/browse/HADOOP-8512) | AuthenticatedURL should reset the Token when the server returns other than OK on authentication |  Minor | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8509](https://issues.apache.org/jira/browse/HADOOP-8509) | JarFinder duplicate entry: META-INF/MANIFEST.MF exception |  Minor | util | Matteo Bertozzi | Alejandro Abdelnur |
| [HADOOP-8507](https://issues.apache.org/jira/browse/HADOOP-8507) | Avoid OOM while deserializing DelegationTokenIdentifer |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8501](https://issues.apache.org/jira/browse/HADOOP-8501) | Gridmix fails to compile on OpenJDK7u4 |  Major | benchmarks | Radim Kolar | Radim Kolar |
| [HADOOP-8499](https://issues.apache.org/jira/browse/HADOOP-8499) | Lower min.user.id to 500 for the tests |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8495](https://issues.apache.org/jira/browse/HADOOP-8495) | Update Netty to avoid leaking file descriptors during shuffle |  Critical | build | Jason Lowe | Jason Lowe |
| [HADOOP-8488](https://issues.apache.org/jira/browse/HADOOP-8488) | test-patch.sh gives +1 even if the native build fails. |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8485](https://issues.apache.org/jira/browse/HADOOP-8485) | Don't hardcode "Apache Hadoop 0.23" in the docs |  Minor | documentation | Eli Collins | Eli Collins |
| [HADOOP-8481](https://issues.apache.org/jira/browse/HADOOP-8481) | update BUILDING.txt to talk about cmake rather than autotools |  Trivial | documentation | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8480](https://issues.apache.org/jira/browse/HADOOP-8480) | The native build should honor -DskipTests |  Trivial | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8466](https://issues.apache.org/jira/browse/HADOOP-8466) | hadoop-client POM incorrectly excludes avro |  Major | build | Bruno Mahé | Bruno Mahé |
| [HADOOP-8460](https://issues.apache.org/jira/browse/HADOOP-8460) | Document proper setting of HADOOP\_PID\_DIR and HADOOP\_SECURE\_DN\_PID\_DIR |  Major | documentation | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8452](https://issues.apache.org/jira/browse/HADOOP-8452) | DN logs backtrace when running under jsvc and /jmx is loaded |  Minor | . | Andy Isaacson | Andy Isaacson |
| [HADOOP-8450](https://issues.apache.org/jira/browse/HADOOP-8450) | Remove src/test/system |  Trivial | test | Colin Patrick McCabe | Eli Collins |
| [HADOOP-8449](https://issues.apache.org/jira/browse/HADOOP-8449) | hadoop fs -text fails with compressed sequence files with the codec file extension |  Minor | . | Joey Echeverria | Harsh J |
| [HADOOP-8444](https://issues.apache.org/jira/browse/HADOOP-8444) | Fix the tests FSMainOperationsBaseTest.java and F ileContextMainOperationsBaseTest.java to avoid potential test failure |  Major | fs, test | Mariappan Asokan | madhukara phatak |
| [HADOOP-8438](https://issues.apache.org/jira/browse/HADOOP-8438) | hadoop-validate-setup.sh refers to examples jar file which doesn't exist |  Major | . | Devaraj K | Devaraj K |
| [HADOOP-8433](https://issues.apache.org/jira/browse/HADOOP-8433) | Don't set HADOOP\_LOG\_DIR in hadoop-env.sh |  Major | scripts | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-8431](https://issues.apache.org/jira/browse/HADOOP-8431) | Running distcp wo args throws IllegalArgumentException |  Major | . | Eli Collins | Sandy Ryza |
| [HADOOP-8423](https://issues.apache.org/jira/browse/HADOOP-8423) | MapFile.Reader.get() crashes jvm or throws EOFException on Snappy or LZO block-compressed data |  Major | io | Jason B | Todd Lipcon |
| [HADOOP-8422](https://issues.apache.org/jira/browse/HADOOP-8422) | Deprecate FileSystem#getDefault* and getServerDefault methods that don't take a Path argument |  Minor | fs | Eli Collins | Eli Collins |
| [HADOOP-8408](https://issues.apache.org/jira/browse/HADOOP-8408) | MR doesn't work with a non-default ViewFS mount table and security enabled |  Major | viewfs | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-8406](https://issues.apache.org/jira/browse/HADOOP-8406) | CompressionCodecFactory.CODEC\_PROVIDERS iteration is thread-unsafe |  Major | io | Todd Lipcon | Todd Lipcon |
| [HADOOP-8400](https://issues.apache.org/jira/browse/HADOOP-8400) | All commands warn "Kerberos krb5 configuration not found" when security is not enabled |  Major | security | Eli Collins | Alejandro Abdelnur |
| [HADOOP-8393](https://issues.apache.org/jira/browse/HADOOP-8393) | hadoop-config.sh missing variable exports, causes Yarn jobs to fail with ClassNotFoundException MRAppMaster |  Major | scripts | Patrick Hunt | Patrick Hunt |
| [HADOOP-8390](https://issues.apache.org/jira/browse/HADOOP-8390) | TestFileSystemCanonicalization fails with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HADOOP-8372](https://issues.apache.org/jira/browse/HADOOP-8372) | normalizeHostName() in NetUtils is not working properly in resolving a hostname start with numeric character |  Major | io, util | Junping Du | Junping Du |
| [HADOOP-8370](https://issues.apache.org/jira/browse/HADOOP-8370) | Native build failure: javah: class file for org.apache.hadoop.classification.InterfaceAudience not found |  Major | native | Trevor Robinson | Trevor Robinson |
| [HADOOP-8342](https://issues.apache.org/jira/browse/HADOOP-8342) | HDFS command fails with exception following merge of HADOOP-8325 |  Major | fs | Randy Clayton | Alejandro Abdelnur |
| [HADOOP-8341](https://issues.apache.org/jira/browse/HADOOP-8341) | Fix or filter findbugs issues in hadoop-tools |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8334](https://issues.apache.org/jira/browse/HADOOP-8334) | HttpServer sometimes returns incorrect port |  Major | . | Daryn Sharp | Daryn Sharp |
| [HADOOP-8330](https://issues.apache.org/jira/browse/HADOOP-8330) | TestSequenceFile.testCreateUsesFsArg() is broken |  Minor | test | John George | John George |
| [HADOOP-8329](https://issues.apache.org/jira/browse/HADOOP-8329) | Build fails with Java 7 |  Major | build | Kumar Ravi | Eli Collins |
| [HADOOP-8328](https://issues.apache.org/jira/browse/HADOOP-8328) | Duplicate FileSystem Statistics object for 'file' scheme |  Major | fs | Tom White | Tom White |
| [HADOOP-8327](https://issues.apache.org/jira/browse/HADOOP-8327) | distcpv2 and distcpv1 jars should not coexist |  Major | . | Dave Thompson | Dave Thompson |
| [HADOOP-8325](https://issues.apache.org/jira/browse/HADOOP-8325) | Add a ShutdownHookManager to be used by different components instead of the JVM shutdownhook |  Critical | fs | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8317](https://issues.apache.org/jira/browse/HADOOP-8317) | Update maven-assembly-plugin to 2.3 - fix build on FreeBSD |  Major | build | Radim Kolar |  |
| [HADOOP-8316](https://issues.apache.org/jira/browse/HADOOP-8316) | Audit logging should be disabled by default |  Major | conf | Eli Collins | Eli Collins |
| [HADOOP-8305](https://issues.apache.org/jira/browse/HADOOP-8305) | distcp over viewfs is broken |  Major | viewfs | John George | John George |
| [HADOOP-8288](https://issues.apache.org/jira/browse/HADOOP-8288) | Remove references of mapred.child.ulimit etc. since they are not being used any more |  Major | . | Ravi Prakash | Ravi Prakash |
| [HADOOP-8287](https://issues.apache.org/jira/browse/HADOOP-8287) | etc/hadoop is missing hadoop-env.sh |  Major | conf | Eli Collins | Eli Collins |
| [HADOOP-8268](https://issues.apache.org/jira/browse/HADOOP-8268) | A few pom.xml across Hadoop project may fail XML validation |  Major | build | Radim Kolar | Radim Kolar |
| [HADOOP-8249](https://issues.apache.org/jira/browse/HADOOP-8249) | invalid hadoop-auth cookies should trigger authentication if info is avail before returning HTTP 401 |  Major | security | bc Wong | Alejandro Abdelnur |
| [HADOOP-8225](https://issues.apache.org/jira/browse/HADOOP-8225) | DistCp fails when invoked by Oozie |  Blocker | security | Mithun Radhakrishnan | Daryn Sharp |
| [HADOOP-8197](https://issues.apache.org/jira/browse/HADOOP-8197) | Configuration logs WARNs on every use of a deprecated key |  Critical | conf | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8180](https://issues.apache.org/jira/browse/HADOOP-8180) | Remove hsqldb since its not needed from pom.xml |  Major | . | Ravi Prakash | Ravi Prakash |
| [HADOOP-8179](https://issues.apache.org/jira/browse/HADOOP-8179) | risk of NPE in CopyCommands processArguments() |  Minor | fs | Steve Loughran | Daryn Sharp |
| [HADOOP-8172](https://issues.apache.org/jira/browse/HADOOP-8172) | Configuration no longer sets all keys in a deprecated key list. |  Critical | conf | Robert Joseph Evans | Anupam Seth |
| [HADOOP-8168](https://issues.apache.org/jira/browse/HADOOP-8168) | empty-string owners or groups causes {{MissingFormatWidthException}} in o.a.h.fs.shell.Ls.ProcessPath() |  Major | fs | Eugene Koontz | Eugene Koontz |
| [HADOOP-8167](https://issues.apache.org/jira/browse/HADOOP-8167) | Configuration deprecation logic breaks backwards compatibility |  Blocker | conf | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8144](https://issues.apache.org/jira/browse/HADOOP-8144) | pseudoSortByDistance in NetworkTopology doesn't work properly if no local node and first node is local rack node |  Minor | io | Junping Du | Junping Du |
| [HADOOP-8129](https://issues.apache.org/jira/browse/HADOOP-8129) | ViewFileSystemTestSetup setupForViewFileSystem is erring when the user's home directory is somewhere other than /home (eg. /User) etc. |  Major | fs, test | Ravi Prakash | Ahmed Radwan |
| [HADOOP-8110](https://issues.apache.org/jira/browse/HADOOP-8110) | TestViewFsTrash occasionally fails |  Major | fs | Tsz Wo Nicholas Sze | Jason Lowe |
| [HADOOP-8104](https://issues.apache.org/jira/browse/HADOOP-8104) | Inconsistent Jackson versions |  Major | . | Colin Patrick McCabe | Alejandro Abdelnur |
| [HADOOP-8088](https://issues.apache.org/jira/browse/HADOOP-8088) | User-group mapping cache incorrectly does negative caching on transient failures |  Major | security | Kihwal Lee | Kihwal Lee |
| [HADOOP-8060](https://issues.apache.org/jira/browse/HADOOP-8060) | Add a capability to discover and set checksum types per file. |  Major | fs, util | Kihwal Lee | Kihwal Lee |
| [HADOOP-8031](https://issues.apache.org/jira/browse/HADOOP-8031) | Configuration class fails to find embedded .jar resources; should use URL.openStream() |  Major | conf | Elias Ross | Elias Ross |
| [HADOOP-8014](https://issues.apache.org/jira/browse/HADOOP-8014) | ViewFileSystem does not correctly implement getDefaultBlockSize, getDefaultReplication, getContentSummary |  Major | fs | Daryn Sharp | John George |
| [HADOOP-8005](https://issues.apache.org/jira/browse/HADOOP-8005) | Multiple SLF4J binding message in .out file for all daemons |  Major | scripts | Joe Crobak | Jason Lowe |
| [HADOOP-7967](https://issues.apache.org/jira/browse/HADOOP-7967) | Need generalized multi-token filesystem support |  Critical | fs, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-7868](https://issues.apache.org/jira/browse/HADOOP-7868) | Hadoop native fails to compile when default linker option is -Wl,--as-needed |  Major | native | James Page | Trevor Robinson |
| [HADOOP-7818](https://issues.apache.org/jira/browse/HADOOP-7818) | DiskChecker#checkDir should fail if the directory is not executable |  Minor | util | Eli Collins | madhukara phatak |
| [HADOOP-7703](https://issues.apache.org/jira/browse/HADOOP-7703) | WebAppContext should also be stopped and cleared |  Major | . | Devaraj K | Devaraj K |
| [HADOOP-6963](https://issues.apache.org/jira/browse/HADOOP-6963) | Fix FileUtil.getDU. It should not include the size of the directory or follow symbolic links |  Critical | fs | Owen O'Malley | Ravi Prakash |
| [HADOOP-3886](https://issues.apache.org/jira/browse/HADOOP-3886) | Error in javadoc of Reporter, Mapper and Progressable |  Minor | documentation | brien colwell | Jingguo Yao |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8283](https://issues.apache.org/jira/browse/HADOOP-8283) | Allow tests to control token service value |  Major | test | Daryn Sharp | Daryn Sharp |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-7754](https://issues.apache.org/jira/browse/HADOOP-7754) | Expose file descriptors from Hadoop-wrapped local FileSystems |  Major | native, performance | Todd Lipcon | Todd Lipcon |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8403](https://issues.apache.org/jira/browse/HADOOP-8403) | bump up POMs version to 2.0.1-SNAPSHOT |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |


