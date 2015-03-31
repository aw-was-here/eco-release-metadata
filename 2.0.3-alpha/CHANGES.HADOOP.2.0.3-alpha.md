# Hadoop Changelog

## Release 2.0.3-alpha - 2013-02-14

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9070](https://issues.apache.org/jira/browse/HADOOP-9070) | Kerberos SASL server cannot find kerberos key |  Blocker | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-8999](https://issues.apache.org/jira/browse/HADOOP-8999) | SASL negotiation is flawed |  Major | ipc | Daryn Sharp | Daryn Sharp |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9090](https://issues.apache.org/jira/browse/HADOOP-9090) | Support on-demand publish of metrics |  Minor | metrics | Mostafa Elhemali | Mostafa Elhemali |
| [HADOOP-9054](https://issues.apache.org/jira/browse/HADOOP-9054) | Add AuthenticationHandler that uses Kerberos but allows for an alternate form of authentication for browsers |  Major | security | Robert Kanter | Robert Kanter |
| [HADOOP-8597](https://issues.apache.org/jira/browse/HADOOP-8597) | FsShell's Text command should be able to read avro data files |  Major | fs | Harsh J | Ivan Vladimirov Ivanov |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9276](https://issues.apache.org/jira/browse/HADOOP-9276) | Allow BoundedByteArrayOutputStream to be resettable |  Minor | . | Arun C Murthy | Arun C Murthy |
| [HADOOP-9247](https://issues.apache.org/jira/browse/HADOOP-9247) | parametrize Clover "generateXxx" properties to make them re-definable via -D in mvn calls |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9216](https://issues.apache.org/jira/browse/HADOOP-9216) | CompressionCodecFactory#getCodecClasses should trim the result of parsing by Configuration. |  Major | io | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-9192](https://issues.apache.org/jira/browse/HADOOP-9192) | Move token related request/response messages to common |  Major | security | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9162](https://issues.apache.org/jira/browse/HADOOP-9162) | Add utility to check native library availability |  Minor | native | Binglin Chang | Binglin Chang |
| [HADOOP-9153](https://issues.apache.org/jira/browse/HADOOP-9153) | Support createNonRecursive in ViewFileSystem |  Major | viewfs | Sandy Ryza | Sandy Ryza |
| [HADOOP-9147](https://issues.apache.org/jira/browse/HADOOP-9147) | Add missing fields to FIleStatus.toString |  Trivial | . | Jonathan Allen | Jonathan Allen |
| [HADOOP-9127](https://issues.apache.org/jira/browse/HADOOP-9127) | Update documentation for ZooKeeper Failover Controller |  Major | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HADOOP-9118](https://issues.apache.org/jira/browse/HADOOP-9118) | FileSystemContractBaseTest test data for read/write isn't rigorous enough |  Trivial | test | Steve Loughran |  |
| [HADOOP-9106](https://issues.apache.org/jira/browse/HADOOP-9106) | Allow configuration of IPC connect timeout |  Major | ipc | Todd Lipcon | Robert Parker |
| [HADOOP-9093](https://issues.apache.org/jira/browse/HADOOP-9093) | Move all the Exception in PathExceptions to o.a.h.fs package |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9004](https://issues.apache.org/jira/browse/HADOOP-9004) | Allow security unit tests to use external KDC |  Major | security, test | Stephen Chu | Stephen Chu |
| [HADOOP-8998](https://issues.apache.org/jira/browse/HADOOP-8998) | set Cache-Control no-cache header on all dynamic content |  Minor | . | Andy Isaacson | Alejandro Abdelnur |
| [HADOOP-8992](https://issues.apache.org/jira/browse/HADOOP-8992) | Enhance unit-test coverage of class HarFileSystem |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-8985](https://issues.apache.org/jira/browse/HADOOP-8985) | Add namespace declarations in .proto files for languages other than java |  Minor | ha, ipc | Binglin Chang | Binglin Chang |
| [HADOOP-8951](https://issues.apache.org/jira/browse/HADOOP-8951) | RunJar to fail with user-comprehensible error message if jar missing |  Minor | util | Steve Loughran | Steve Loughran |
| [HADOOP-8932](https://issues.apache.org/jira/browse/HADOOP-8932) | JNI-based user-group mapping modules can be too chatty on lookup failures |  Major | security | Kihwal Lee | Kihwal Lee |
| [HADOOP-8931](https://issues.apache.org/jira/browse/HADOOP-8931) | Add Java version to startup message |  Trivial | . | Eli Collins | Eli Collins |
| [HADOOP-8930](https://issues.apache.org/jira/browse/HADOOP-8930) | Cumulative code coverage calculation |  Major | test | Andrey Klochkov | Andrey Klochkov |
| [HADOOP-8929](https://issues.apache.org/jira/browse/HADOOP-8929) | Add toString, other improvements for SampleQuantiles |  Major | metrics | Todd Lipcon | Todd Lipcon |
| [HADOOP-8926](https://issues.apache.org/jira/browse/HADOOP-8926) | hadoop.util.PureJavaCrc32 cache hit-ratio is low for static data |  Major | util | Gopal V | Gopal V |
| [HADOOP-8925](https://issues.apache.org/jira/browse/HADOOP-8925) | Remove the packaging |  Minor | build | Eli Collins | Eli Collins |
| [HADOOP-8922](https://issues.apache.org/jira/browse/HADOOP-8922) | Provide alternate JSONP output for JMXJsonServlet to allow javascript in browser dashboard |  Trivial | metrics | Damien Hardy | Damien Hardy |
| [HADOOP-8909](https://issues.apache.org/jira/browse/HADOOP-8909) | Hadoop Common Maven protoc calls must not depend on external sh script |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-8894](https://issues.apache.org/jira/browse/HADOOP-8894) | GenericTestUtils.waitFor should dump thread stacks on timeout |  Major | . | Todd Lipcon | Todd Lipcon |
| [HADOOP-8889](https://issues.apache.org/jira/browse/HADOOP-8889) | Upgrade to Surefire 2.12.3 |  Major | build, test | Todd Lipcon | Todd Lipcon |
| [HADOOP-8866](https://issues.apache.org/jira/browse/HADOOP-8866) | SampleQuantiles#query is O(N^2) instead of O(N) |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-8851](https://issues.apache.org/jira/browse/HADOOP-8851) | Use -XX:+HeapDumpOnOutOfMemoryError JVM option in the forked tests |  Minor | test | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-8849](https://issues.apache.org/jira/browse/HADOOP-8849) | FileUtil#fullyDelete should grant the target directories +rwx permissions before trying to delete them |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-8812](https://issues.apache.org/jira/browse/HADOOP-8812) | ExitUtil#terminate should print Exception#toString |  Minor | . | Eli Collins | Eli Collins |
| [HADOOP-8806](https://issues.apache.org/jira/browse/HADOOP-8806) | libhadoop.so: dlopen should be better at locating libsnappy.so, etc. |  Minor | build | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8804](https://issues.apache.org/jira/browse/HADOOP-8804) | Improve Web UIs when the wildcard address is used |  Minor | . | Eli Collins | Senthil V Kumar |
| [HADOOP-8789](https://issues.apache.org/jira/browse/HADOOP-8789) | Tests setLevel(Level.OFF) should be Level.ERROR |  Minor | test | Andy Isaacson | Andy Isaacson |
| [HADOOP-8755](https://issues.apache.org/jira/browse/HADOOP-8755) | Print thread dump when tests fail due to timeout |  Major | test | Andrey Klochkov | Andrey Klochkov |
| [HADOOP-8736](https://issues.apache.org/jira/browse/HADOOP-8736) | Add Builder for building an RPC server |  Major | ipc | Brandon Li | Brandon Li |
| [HADOOP-8712](https://issues.apache.org/jira/browse/HADOOP-8712) | Change default hadoop.security.group.mapping |  Minor | security | Robert Parker | Robert Parker |
| [HADOOP-8561](https://issues.apache.org/jira/browse/HADOOP-8561) | Introduce HADOOP\_PROXY\_USER for secure impersonation in child hadoop client processes |  Major | security | Luke Lu | Yu Gao |
| [HADOOP-7886](https://issues.apache.org/jira/browse/HADOOP-7886) | Add toString to FileStatus |  Minor | . | Jakob Homan | SreeHari |
| [HADOOP-7688](https://issues.apache.org/jira/browse/HADOOP-7688) | When a servlet filter throws an exception in init(..), the Jetty server failed silently. |  Major | . | Tsz Wo Nicholas Sze | Uma Maheswara Rao G |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9289](https://issues.apache.org/jira/browse/HADOOP-9289) | FsShell rm -f fails for non-matching globs |  Blocker | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-9278](https://issues.apache.org/jira/browse/HADOOP-9278) | HarFileSystem may leak file handle |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9260](https://issues.apache.org/jira/browse/HADOOP-9260) | Hadoop version may be not correct when starting name node or data node |  Critical | . | Jerry Chen | Chris Nauroth |
| [HADOOP-9255](https://issues.apache.org/jira/browse/HADOOP-9255) | relnotes.py missing last jira |  Critical | scripts | Thomas Graves | Thomas Graves |
| [HADOOP-9252](https://issues.apache.org/jira/browse/HADOOP-9252) | StringUtils.humanReadableInt(..) has a race condition |  Minor | util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-9231](https://issues.apache.org/jira/browse/HADOOP-9231) | Parametrize staging URL for the uniformity of distributionManagement |  Major | build | Konstantin Boudnik | Konstantin Boudnik |
| [HADOOP-9221](https://issues.apache.org/jira/browse/HADOOP-9221) | Convert remaining xdocs to APT |  Major | . | Andy Isaacson | Andy Isaacson |
| [HADOOP-9215](https://issues.apache.org/jira/browse/HADOOP-9215) | when using cmake-2.6, libhadoop.so doesn't get created (only libhadoop.so.1.0.0) |  Blocker | . | Thomas Graves | Colin Patrick McCabe |
| [HADOOP-9212](https://issues.apache.org/jira/browse/HADOOP-9212) | Potential deadlock in FileSystem.Cache/IPC/UGI |  Major | fs | Tom White | Tom White |
| [HADOOP-9203](https://issues.apache.org/jira/browse/HADOOP-9203) | RPCCallBenchmark should find a random available port |  Trivial | ipc, test | Andrew Purtell | Andrew Purtell |
| [HADOOP-9193](https://issues.apache.org/jira/browse/HADOOP-9193) | hadoop script can inadvertently expand wildcard arguments when delegating to hdfs script |  Minor | scripts | Jason Lowe | Andy Isaacson |
| [HADOOP-9190](https://issues.apache.org/jira/browse/HADOOP-9190) | packaging docs is broken |  Major | documentation | Thomas Graves | Andy Isaacson |
| [HADOOP-9183](https://issues.apache.org/jira/browse/HADOOP-9183) | Potential deadlock in ActiveStandbyElector |  Major | ha | Tom White | Tom White |
| [HADOOP-9181](https://issues.apache.org/jira/browse/HADOOP-9181) | Set daemon flag for HttpServer's QueuedThreadPool |  Major | . | Liang Xie | Liang Xie |
| [HADOOP-9178](https://issues.apache.org/jira/browse/HADOOP-9178) | src/main/conf is missing hadoop-policy.xml |  Minor | . | Sandy Ryza | Sandy Ryza |
| [HADOOP-9173](https://issues.apache.org/jira/browse/HADOOP-9173) | Add security token protobuf definition to common and use it in hdfs |  Major | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9155](https://issues.apache.org/jira/browse/HADOOP-9155) | FsPermission should have different default value, 777 for directory and 666 for file |  Minor | . | Binglin Chang | Binglin Chang |
| [HADOOP-9152](https://issues.apache.org/jira/browse/HADOOP-9152) | HDFS can report negative DFS Used on clusters with very small amounts of data |  Minor | fs | Brock Noland | Brock Noland |
| [HADOOP-9135](https://issues.apache.org/jira/browse/HADOOP-9135) | JniBasedUnixGroupsMappingWithFallback should log at debug rather than info during fallback |  Trivial | security | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9124](https://issues.apache.org/jira/browse/HADOOP-9124) | SortedMapWritable violates contract of Map interface for equals() and hashCode() |  Minor | io | Patrick Hunt | Surenkumar Nihalani |
| [HADOOP-9113](https://issues.apache.org/jira/browse/HADOOP-9113) | o.a.h.fs.TestDelegationTokenRenewer is failing intermittently |  Major | security, test | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9105](https://issues.apache.org/jira/browse/HADOOP-9105) | FsShell -moveFromLocal erroneously fails |  Major | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-9103](https://issues.apache.org/jira/browse/HADOOP-9103) | UTF8 class does not properly decode Unicode characters outside the basic multilingual plane |  Major | io | yixiaohua | Todd Lipcon |
| [HADOOP-9097](https://issues.apache.org/jira/browse/HADOOP-9097) | Maven RAT plugin is not checking all source files |  Critical | build | Tom White | Thomas Graves |
| [HADOOP-9072](https://issues.apache.org/jira/browse/HADOOP-9072) | Hadoop-Common-0.23-Build Fails to build in Jenkins |  Major | . | Robert Parker | Robert Parker |
| [HADOOP-9064](https://issues.apache.org/jira/browse/HADOOP-9064) | Augment DelegationTokenRenewer API to cancel the tokens on calls to removeRenewAction |  Major | security | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9049](https://issues.apache.org/jira/browse/HADOOP-9049) | DelegationTokenRenewer needs to be Singleton and FileSystems should register/deregister to/from. |  Major | security | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9041](https://issues.apache.org/jira/browse/HADOOP-9041) | FileSystem initialization can go into infinite loop |  Critical | fs | Radim Kolar | Radim Kolar |
| [HADOOP-9025](https://issues.apache.org/jira/browse/HADOOP-9025) | org.apache.hadoop.tools.TestCopyListing failing |  Major | . | Robert Joseph Evans | Jonathan Eagles |
| [HADOOP-9022](https://issues.apache.org/jira/browse/HADOOP-9022) | Hadoop distcp tool fails to copy file if -m 0 specified |  Major | . | Haiyang Jiang | Jonathan Eagles |
| [HADOOP-8994](https://issues.apache.org/jira/browse/HADOOP-8994) | TestDFSShell creates file named "noFileHere", making further tests hard to understand |  Minor | test | Andy Isaacson | Andy Isaacson |
| [HADOOP-8986](https://issues.apache.org/jira/browse/HADOOP-8986) | Server$Call object is never released after it is sent |  Critical | ipc | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8981](https://issues.apache.org/jira/browse/HADOOP-8981) | TestMetricsSystemImpl fails on Windows |  Major | metrics | Chris Nauroth | Xuan Gong |
| [HADOOP-8962](https://issues.apache.org/jira/browse/HADOOP-8962) | RawLocalFileSystem.listStatus fails when a child filename contains a colon |  Critical | fs | Jason Lowe | Jason Lowe |
| [HADOOP-8948](https://issues.apache.org/jira/browse/HADOOP-8948) | TestFileUtil.testGetDU fails on Windows due to incorrect assumption of line separator |  Major | test | Chris Nauroth | Chris Nauroth |
| [HADOOP-8913](https://issues.apache.org/jira/browse/HADOOP-8913) | hadoop-metrics2.properties should give units in comment for sampling period |  Minor | metrics | Sandy Ryza | Sandy Ryza |
| [HADOOP-8912](https://issues.apache.org/jira/browse/HADOOP-8912) | adding .gitattributes file to prevent CRLF and LF mismatches for source and text files |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8911](https://issues.apache.org/jira/browse/HADOOP-8911) | CRLF characters in source and text files |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8906](https://issues.apache.org/jira/browse/HADOOP-8906) | paths with multiple globs are unreliable |  Critical | fs | Daryn Sharp | Daryn Sharp |
| [HADOOP-8901](https://issues.apache.org/jira/browse/HADOOP-8901) | GZip and Snappy support may not work without unversioned libraries |  Minor | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8900](https://issues.apache.org/jira/browse/HADOOP-8900) | BuiltInGzipDecompressor throws IOException - stored gzip size doesn't match decompressed size |  Major | . | Slavik Krassovsky | Andy Isaacson |
| [HADOOP-8883](https://issues.apache.org/jira/browse/HADOOP-8883) | Anonymous fallback in KerberosAuthenticator is broken |  Major | . | Robert Kanter | Robert Kanter |
| [HADOOP-8881](https://issues.apache.org/jira/browse/HADOOP-8881) | FileBasedKeyStoresFactory initialization logging should be debug not info |  Major | security | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8878](https://issues.apache.org/jira/browse/HADOOP-8878) | uppercase namenode hostname causes hadoop dfs calls with webhdfs filesystem and fsck to fail when security is on |  Major | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-8855](https://issues.apache.org/jira/browse/HADOOP-8855) | SSL-based image transfer does not work when Kerberos is disabled |  Minor | security | Todd Lipcon | Todd Lipcon |
| [HADOOP-8843](https://issues.apache.org/jira/browse/HADOOP-8843) | Old trash directories are never deleted on upgrade from 1.x |  Critical | . | Robert Joseph Evans | Jason Lowe |
| [HADOOP-8833](https://issues.apache.org/jira/browse/HADOOP-8833) | fs -text should make sure to call inputstream.seek(0) before using input stream |  Major | fs | Harsh J | Harsh J |
| [HADOOP-8822](https://issues.apache.org/jira/browse/HADOOP-8822) | relnotes.py was deleted post mavenization |  Major | . | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8819](https://issues.apache.org/jira/browse/HADOOP-8819) | Should use && instead of  & in a few places in FTPFileSystem,FTPInputStream,S3InputStream,ViewFileSystem,ViewFs |  Major | fs | Brandon Li | Brandon Li |
| [HADOOP-8816](https://issues.apache.org/jira/browse/HADOOP-8816) | HTTP Error 413 full HEAD if using kerberos authentication |  Major | net | Moritz Moeller | Moritz Moeller |
| [HADOOP-8811](https://issues.apache.org/jira/browse/HADOOP-8811) | Compile hadoop native library in FreeBSD |  Critical | native | Radim Kolar | Radim Kolar |
| [HADOOP-8795](https://issues.apache.org/jira/browse/HADOOP-8795) | BASH tab completion doesn't look in PATH, assumes path to executable is specified |  Minor | scripts | Sean Mackrory | Sean Mackrory |
| [HADOOP-8791](https://issues.apache.org/jira/browse/HADOOP-8791) | rm "Only deletes non empty directory and files." |  Major | documentation | Bertrand Dechoux | Jing Zhao |
| [HADOOP-8786](https://issues.apache.org/jira/browse/HADOOP-8786) | HttpServer continues to start even if AuthenticationFilter fails to init |  Major | . | Todd Lipcon | Todd Lipcon |
| [HADOOP-8780](https://issues.apache.org/jira/browse/HADOOP-8780) | Update DeprecatedProperties apt file |  Major | . | Ahmed Radwan | Ahmed Radwan |
| [HADOOP-8756](https://issues.apache.org/jira/browse/HADOOP-8756) | Fix SEGV when libsnappy is in java.library.path but not LD\_LIBRARY\_PATH |  Minor | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8713](https://issues.apache.org/jira/browse/HADOOP-8713) | TestRPCCompatibility fails intermittently with JDK7 |  Major | test | Trevor Robinson | Trevor Robinson |
| [HADOOP-8684](https://issues.apache.org/jira/browse/HADOOP-8684) | Deadlock between WritableComparator and WritableComparable |  Minor | io | Hiroshi Ikeda | Jing Zhao |
| [HADOOP-8616](https://issues.apache.org/jira/browse/HADOOP-8616) | ViewFS configuration requires a trailing slash |  Major | viewfs | Eli Collins | Sandy Ryza |
| [HADOOP-8589](https://issues.apache.org/jira/browse/HADOOP-8589) | ViewFs tests fail when tests and home dirs are nested |  Major | fs, test | Andrey Klochkov | Sanjay Radia |
| [HADOOP-8418](https://issues.apache.org/jira/browse/HADOOP-8418) | Fix UGI for IBM JDK running on Windows |  Major | security | Luke Lu | Yu Gao |
| [HADOOP-7115](https://issues.apache.org/jira/browse/HADOOP-7115) | Add a cache for getpwuid\_r and getpwgid\_r calls |  Major | . | Arun C Murthy | Alejandro Abdelnur |
| [HADOOP-6762](https://issues.apache.org/jira/browse/HADOOP-6762) | exception while doing RPC I/O closes channel |  Critical | . | sam rash | sam rash |
| [HADOOP-6607](https://issues.apache.org/jira/browse/HADOOP-6607) | Add different variants of non caching HTTP headers |  Minor | io | Steve Loughran | Alejandro Abdelnur |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9217](https://issues.apache.org/jira/browse/HADOOP-9217) | Print thread dumps when hadoop-common tests fail |  Major | test | Andrey Klochkov | Andrey Klochkov |
| [HADOOP-9119](https://issues.apache.org/jira/browse/HADOOP-9119) | Add test to FileSystemContractBaseTest to verify integrity of overwritten files |  Minor | fs, test | Steve Loughran | Steve Loughran |
| [HADOOP-9067](https://issues.apache.org/jira/browse/HADOOP-9067) | provide test for method org.apache.hadoop.fs.LocalFileSystem.reportChecksumFailure(Path, FSDataInputStream, long, FSDataInputStream, long) |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9042](https://issues.apache.org/jira/browse/HADOOP-9042) | Add a test for umask in FileSystemContractBaseTest |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9038](https://issues.apache.org/jira/browse/HADOOP-9038) | provide unit-test coverage of class org.apache.hadoop.fs.LocalDirAllocator.AllocatorPerContext.PathIterator |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9035](https://issues.apache.org/jira/browse/HADOOP-9035) | Generalize setup of LoginContext |  Major | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9021](https://issues.apache.org/jira/browse/HADOOP-9021) | Enforce configured SASL method on the server |  Major | ipc, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9020](https://issues.apache.org/jira/browse/HADOOP-9020) | Add a SASL PLAIN server |  Major | ipc, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9015](https://issues.apache.org/jira/browse/HADOOP-9015) | Standardize creation of SaslRpcServers |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9014](https://issues.apache.org/jira/browse/HADOOP-9014) | Standardize creation of SaslRpcClients |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9013](https://issues.apache.org/jira/browse/HADOOP-9013) | UGI should not hardcode loginUser's authenticationType |  Major | fs, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9012](https://issues.apache.org/jira/browse/HADOOP-9012) | IPC Client sends wrong connection context |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9010](https://issues.apache.org/jira/browse/HADOOP-9010) | Map UGI authenticationMethod to RPC authMethod |  Major | fs, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9009](https://issues.apache.org/jira/browse/HADOOP-9009) | Add SecurityUtil methods to get/set authentication method |  Major | fs, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-8784](https://issues.apache.org/jira/browse/HADOOP-8784) | Improve IPC.Client's token use |  Major | ipc, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-8783](https://issues.apache.org/jira/browse/HADOOP-8783) | Improve RPC.Server's digest auth |  Major | ipc, security | Daryn Sharp | Daryn Sharp |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8860](https://issues.apache.org/jira/browse/HADOOP-8860) | Split MapReduce and YARN sections in documentation navigation |  Major | documentation | Tom White | Tom White |
| [HADOOP-8427](https://issues.apache.org/jira/browse/HADOOP-8427) | Convert Forrest docs to APT, incremental |  Major | documentation | Eli Collins | Andy Isaacson |


