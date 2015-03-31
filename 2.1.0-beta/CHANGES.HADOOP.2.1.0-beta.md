# Hadoop Changelog

## Release 2.1.0-beta - 2013-08-22

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9832](https://issues.apache.org/jira/browse/HADOOP-9832) | Add RPC header to client ping |  Blocker | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9820](https://issues.apache.org/jira/browse/HADOOP-9820) | RPCv9 wire protocol is insufficient to support multiplexing |  Blocker | ipc, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9698](https://issues.apache.org/jira/browse/HADOOP-9698) | RPCv9 client must honor server's SASL negotiate response |  Blocker | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9683](https://issues.apache.org/jira/browse/HADOOP-9683) | Wrap IpcConnectionContext in RPC headers |  Blocker | ipc | Luke Lu | Daryn Sharp |
| [HADOOP-9649](https://issues.apache.org/jira/browse/HADOOP-9649) | Promote YARN service life-cycle libraries into Hadoop Common |  Blocker | . | Zhijie Shen | Zhijie Shen |
| [HADOOP-9630](https://issues.apache.org/jira/browse/HADOOP-9630) | Remove IpcSerializationType |  Major | ipc | Luke Lu | Junping Du |
| [HADOOP-9425](https://issues.apache.org/jira/browse/HADOOP-9425) | Add error codes to rpc-response |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-9421](https://issues.apache.org/jira/browse/HADOOP-9421) | Convert SASL to use ProtoBuf and provide negotiation capabilities |  Blocker | . | Sanjay Radia | Daryn Sharp |
| [HADOOP-9380](https://issues.apache.org/jira/browse/HADOOP-9380) | Add totalLength to rpc response |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-9194](https://issues.apache.org/jira/browse/HADOOP-9194) | RPC Support for QoS |  Major | ipc | Luke Lu | Junping Du |
| [HADOOP-9163](https://issues.apache.org/jira/browse/HADOOP-9163) | The rpc msg in  ProtobufRpcEngine.proto should be moved out to avoid an extra copy |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-9151](https://issues.apache.org/jira/browse/HADOOP-9151) | Include RPC error info in RpcResponseHeader instead of sending it separately |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-8886](https://issues.apache.org/jira/browse/HADOOP-8886) | Remove KFS support |  Major | fs | Eli Collins | Eli Collins |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9763](https://issues.apache.org/jira/browse/HADOOP-9763) | Extends LightWeightGSet to support eviction of expired elements |  Major | util | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-9515](https://issues.apache.org/jira/browse/HADOOP-9515) | Add general interface for NFS and Mount |  Major | . | Brandon Li | Brandon Li |
| [HADOOP-9509](https://issues.apache.org/jira/browse/HADOOP-9509) | Implement ONCRPC and XDR |  Major | . | Brandon Li | Brandon Li |
| [HADOOP-9283](https://issues.apache.org/jira/browse/HADOOP-9283) | Add support for running the Hadoop client on AIX |  Major | security | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-9209](https://issues.apache.org/jira/browse/HADOOP-9209) | Add shell command to dump file checksums |  Major | fs, tools | Todd Lipcon | Todd Lipcon |
| [HADOOP-8562](https://issues.apache.org/jira/browse/HADOOP-8562) | Enhancements to support Hadoop on Windows Server and Windows Azure environments |  Major | . | Bikas Saha | Bikas Saha |
| [HADOOP-8040](https://issues.apache.org/jira/browse/HADOOP-8040) | Add symlink support to FileSystem |  Major | fs | Eli Collins | Andrew Wang |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9845](https://issues.apache.org/jira/browse/HADOOP-9845) | Update protobuf to 2.5 from 2.4.x |  Blocker | performance | stack | Alejandro Abdelnur |
| [HADOOP-9792](https://issues.apache.org/jira/browse/HADOOP-9792) | Retry the methods that are tagged @AtMostOnce along with @Idempotent |  Major | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9770](https://issues.apache.org/jira/browse/HADOOP-9770) | Make RetryCache#state non volatile |  Minor | util | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9762](https://issues.apache.org/jira/browse/HADOOP-9762) | RetryCache utility for implementing RPC retries |  Major | util | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9760](https://issues.apache.org/jira/browse/HADOOP-9760) | Move GSet and LightWeightGSet to hadoop-common |  Major | util | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9756](https://issues.apache.org/jira/browse/HADOOP-9756) | Additional cleanup RPC code |  Minor | ipc | Junping Du | Junping Du |
| [HADOOP-9754](https://issues.apache.org/jira/browse/HADOOP-9754) | Clean up RPC code |  Minor | ipc | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-9751](https://issues.apache.org/jira/browse/HADOOP-9751) | Add clientId and retryCount to RpcResponseHeaderProto |  Major | ipc | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-9734](https://issues.apache.org/jira/browse/HADOOP-9734) | Common protobuf definitions for GetUserMappingsProtocol, RefreshAuthorizationPolicyProtocol and RefreshUserMappingsProtocol |  Minor | ipc | Jason Lowe | Jason Lowe |
| [HADOOP-9717](https://issues.apache.org/jira/browse/HADOOP-9717) | Add retry attempt count to the RPC requests |  Major | ipc | Suresh Srinivas | Jing Zhao |
| [HADOOP-9716](https://issues.apache.org/jira/browse/HADOOP-9716) | Move the Rpc request call ID generation to client side InvocationHandler |  Major | ipc | Suresh Srinivas | Tsz Wo Nicholas Sze |
| [HADOOP-9691](https://issues.apache.org/jira/browse/HADOOP-9691) | RPC clients can generate call ID using AtomicInteger instead of synchronizing on the Client instance. |  Minor | ipc | Chris Nauroth | Chris Nauroth |
| [HADOOP-9688](https://issues.apache.org/jira/browse/HADOOP-9688) | Add globally unique Client ID to RPC requests |  Blocker | ipc | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9676](https://issues.apache.org/jira/browse/HADOOP-9676) | make maximum RPC buffer size configurable |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9673](https://issues.apache.org/jira/browse/HADOOP-9673) | NetworkTopology: when a node can't be added, print out its location for diagnostic purposes |  Trivial | net | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9661](https://issues.apache.org/jira/browse/HADOOP-9661) | Allow metrics sources to be extended |  Major | metrics | Sandy Ryza | Sandy Ryza |
| [HADOOP-9625](https://issues.apache.org/jira/browse/HADOOP-9625) | HADOOP\_OPTS not picked up by hadoop command |  Minor | bin, conf | Paul Han | Paul Han |
| [HADOOP-9605](https://issues.apache.org/jira/browse/HADOOP-9605) | Update junit dependency |  Major | build | Timothy St. Clair |  |
| [HADOOP-9604](https://issues.apache.org/jira/browse/HADOOP-9604) | Wrong Javadoc of FSDataOutputStream |  Minor | fs | Jingguo Yao | Jingguo Yao |
| [HADOOP-9560](https://issues.apache.org/jira/browse/HADOOP-9560) | metrics2#JvmMetrics should have max memory size of JVM |  Minor | metrics | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-9523](https://issues.apache.org/jira/browse/HADOOP-9523) | Provide a generic IBM java vendor flag in PlatformName.java to support non-Sun JREs |  Major | . | Tian Hong Wang | Tian Hong Wang |
| [HADOOP-9511](https://issues.apache.org/jira/browse/HADOOP-9511) | Adding support for additional input streams (FSDataInputStream and RandomAccessFile) in SecureIOUtils. |  Major | . | Omkar Vinit Joshi | Omkar Vinit Joshi |
| [HADOOP-9503](https://issues.apache.org/jira/browse/HADOOP-9503) | Remove sleep between IPC client connect timeouts |  Minor | ipc | Varun Sharma | Varun Sharma |
| [HADOOP-9483](https://issues.apache.org/jira/browse/HADOOP-9483) | winutils support for readlink command |  Major | util | Chris Nauroth | Arpit Agarwal |
| [HADOOP-9450](https://issues.apache.org/jira/browse/HADOOP-9450) | HADOOP\_USER\_CLASSPATH\_FIRST is not honored; CLASSPATH is PREpended instead of APpended |  Major | scripts | Mitch Wyle | Harsh J |
| [HADOOP-9401](https://issues.apache.org/jira/browse/HADOOP-9401) | CodecPool: Add counters for number of (de)compressors leased out |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9379](https://issues.apache.org/jira/browse/HADOOP-9379) | capture the ulimit info after printing the log to the console |  Trivial | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-9352](https://issues.apache.org/jira/browse/HADOOP-9352) | Expose UGI.setLoginUser for tests |  Major | security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9343](https://issues.apache.org/jira/browse/HADOOP-9343) | Allow additional exceptions through the RPC layer |  Major | . | Siddharth Seth | Siddharth Seth |
| [HADOOP-9338](https://issues.apache.org/jira/browse/HADOOP-9338) | FsShell Copy Commands Should Optionally Preserve File Attributes |  Major | fs | Nick White | Nick White |
| [HADOOP-9336](https://issues.apache.org/jira/browse/HADOOP-9336) | Allow UGI of current connection to be queried |  Critical | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9334](https://issues.apache.org/jira/browse/HADOOP-9334) | Update netty version |  Minor | build | Nicolas Liochon | Nicolas Liochon |
| [HADOOP-9322](https://issues.apache.org/jira/browse/HADOOP-9322) | LdapGroupsMapping doesn't seem to set a timeout for its directory search |  Minor | security | Harsh J | Harsh J |
| [HADOOP-9318](https://issues.apache.org/jira/browse/HADOOP-9318) | when exiting on a signal, print the signal name first |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9279](https://issues.apache.org/jira/browse/HADOOP-9279) | Document the need to build hadoop-maven-plugins for eclipse and separate project builds |  Major | build, documentation | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HADOOP-9253](https://issues.apache.org/jira/browse/HADOOP-9253) | Capture ulimit info in the logs at service start time |  Major | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-9227](https://issues.apache.org/jira/browse/HADOOP-9227) | FileSystemContractBaseTest doesn't test filesystem's mkdir/isDirectory() logic rigorously enough |  Trivial | fs | Steve Loughran | Steve Loughran |
| [HADOOP-9164](https://issues.apache.org/jira/browse/HADOOP-9164) | Print paths of loaded native libraries in NativeLibraryChecker |  Minor | native | Binglin Chang | Binglin Chang |
| [HADOOP-9117](https://issues.apache.org/jira/browse/HADOOP-9117) | replace protoc ant plugin exec with a maven plugin |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-8924](https://issues.apache.org/jira/browse/HADOOP-8924) | Add maven plugin alternative to shell script to save package-info.java |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-8711](https://issues.apache.org/jira/browse/HADOOP-8711) | provide an option for IPC server users to avoid printing stack information for certain exceptions |  Major | ipc | Brandon Li | Brandon Li |
| [HADOOP-8608](https://issues.apache.org/jira/browse/HADOOP-8608) | Add Configuration API for parsing time durations |  Minor | conf | Todd Lipcon | Chris Douglas |
| [HADOOP-8462](https://issues.apache.org/jira/browse/HADOOP-8462) | Native-code implementation of bzip2 codec |  Major | io | Govind Kamat | Govind Kamat |
| [HADOOP-8415](https://issues.apache.org/jira/browse/HADOOP-8415) | getDouble() and setDouble() in org.apache.hadoop.conf.Configuration |  Minor | conf | Jan van der Lugt | Jan van der Lugt |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9872](https://issues.apache.org/jira/browse/HADOOP-9872) | Improve protoc version handling and detection |  Blocker | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-9850](https://issues.apache.org/jira/browse/HADOOP-9850) | RPC kerberos errors don't trigger relogin |  Blocker | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9816](https://issues.apache.org/jira/browse/HADOOP-9816) | RPC Sasl QOP is broken |  Blocker | ipc, security | Daryn Sharp | Daryn Sharp |
| [HADOOP-9787](https://issues.apache.org/jira/browse/HADOOP-9787) | ShutdownHelper util to shutdown threads and threadpools |  Major | util | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9786](https://issues.apache.org/jira/browse/HADOOP-9786) | RetryInvocationHandler#isRpcInvocation should support ProtocolTranslator |  Major | . | Jing Zhao | Jing Zhao |
| [HADOOP-9773](https://issues.apache.org/jira/browse/HADOOP-9773) | TestLightWeightCache fails |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-9759](https://issues.apache.org/jira/browse/HADOOP-9759) | Add support for NativeCodeLoader#getLibraryName on Windows |  Critical | . | Chuan Liu | Chuan Liu |
| [HADOOP-9738](https://issues.apache.org/jira/browse/HADOOP-9738) | TestDistCh fails |  Major | tools | Kihwal Lee | Jing Zhao |
| [HADOOP-9707](https://issues.apache.org/jira/browse/HADOOP-9707) | Fix register lists for crc32c inline assembly |  Minor | util | Todd Lipcon | Todd Lipcon |
| [HADOOP-9701](https://issues.apache.org/jira/browse/HADOOP-9701) | mvn site ambiguous links in hadoop-common |  Minor | documentation | Steve Loughran | Karthik Kambatla |
| [HADOOP-9681](https://issues.apache.org/jira/browse/HADOOP-9681) | FileUtil.unTarUsingJava() should close the InputStream upon finishing |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-9678](https://issues.apache.org/jira/browse/HADOOP-9678) | TestRPC#testStopsAllThreads intermittently fails on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9665](https://issues.apache.org/jira/browse/HADOOP-9665) | BlockDecompressorStream#decompress will throw EOFException instead of return -1 when EOF |  Critical | . | Zhijie Shen | Zhijie Shen |
| [HADOOP-9656](https://issues.apache.org/jira/browse/HADOOP-9656) | Gridmix unit tests fail on Windows and Linux |  Minor | test, tools | Chuan Liu | Chuan Liu |
| [HADOOP-9643](https://issues.apache.org/jira/browse/HADOOP-9643) | org.apache.hadoop.security.SecurityUtil calls toUpperCase(Locale.getDefault()) as well as toLowerCase(Locale.getDefault()) on hadoop.security.authentication value. |  Minor | security | Mark Miller | Mark Miller |
| [HADOOP-9638](https://issues.apache.org/jira/browse/HADOOP-9638) | parallel test changes caused invalid test path for several HDFS tests on Windows |  Major | test | Chris Nauroth | Andrey Klochkov |
| [HADOOP-9637](https://issues.apache.org/jira/browse/HADOOP-9637) | Adding Native Fstat for Windows as needed by YARN |  Major | . | Chuan Liu | Chuan Liu |
| [HADOOP-9632](https://issues.apache.org/jira/browse/HADOOP-9632) | TestShellCommandFencer will fail if there is a 'host' machine in the network |  Minor | . | Chuan Liu | Chuan Liu |
| [HADOOP-9607](https://issues.apache.org/jira/browse/HADOOP-9607) | Fixes in Javadoc build |  Minor | documentation | Timothy St. Clair |  |
| [HADOOP-9599](https://issues.apache.org/jira/browse/HADOOP-9599) | hadoop-config.cmd doesn't set JAVA\_LIBRARY\_PATH correctly |  Major | . | Mostafa Elhemali | Mostafa Elhemali |
| [HADOOP-9593](https://issues.apache.org/jira/browse/HADOOP-9593) | stack trace printed at ERROR for all yarn clients without hadoop.home set |  Major | util | Steve Loughran | Steve Loughran |
| [HADOOP-9581](https://issues.apache.org/jira/browse/HADOOP-9581) | hadoop --config non-existent directory should result in error |  Major | scripts | Ashwin Shankar | Ashwin Shankar |
| [HADOOP-9574](https://issues.apache.org/jira/browse/HADOOP-9574) | Add new methods in AbstractDelegationTokenSecretManager for restoring RMDelegationTokens on RMRestart |  Major | . | Jian He | Jian He |
| [HADOOP-9566](https://issues.apache.org/jira/browse/HADOOP-9566) | Performing direct read using libhdfs sometimes raises SIGPIPE (which in turn throws SIGABRT) causing client crashes |  Major | native | Lenni Kuff | Colin Patrick McCabe |
| [HADOOP-9563](https://issues.apache.org/jira/browse/HADOOP-9563) | Fix incompatibility introduced by HADOOP-9523 |  Major | util | Kihwal Lee | Tian Hong Wang |
| [HADOOP-9556](https://issues.apache.org/jira/browse/HADOOP-9556) | disable HA tests on Windows that fail due to ZooKeeper client connection management bug |  Major | ha, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9553](https://issues.apache.org/jira/browse/HADOOP-9553) | TestAuthenticationToken fails on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-9550](https://issues.apache.org/jira/browse/HADOOP-9550) | Remove aspectj dependency |  Major | . | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9549](https://issues.apache.org/jira/browse/HADOOP-9549) | WebHdfsFileSystem hangs on close() |  Blocker | security | Kihwal Lee | Daryn Sharp |
| [HADOOP-9532](https://issues.apache.org/jira/browse/HADOOP-9532) | HADOOP\_CLIENT\_OPTS is appended twice by Windows cmd scripts |  Minor | bin | Chris Nauroth | Chris Nauroth |
| [HADOOP-9527](https://issues.apache.org/jira/browse/HADOOP-9527) | Add symlink support to LocalFileSystem on Windows |  Major | fs, test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-9526](https://issues.apache.org/jira/browse/HADOOP-9526) | TestShellCommandFencer and TestShell fail on Windows |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-9524](https://issues.apache.org/jira/browse/HADOOP-9524) | Fix ShellCommandFencer to work on Windows |  Major | ha | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-9517](https://issues.apache.org/jira/browse/HADOOP-9517) | Document Hadoop Compatibility |  Blocker | documentation | Arun C Murthy | Karthik Kambatla |
| [HADOOP-9507](https://issues.apache.org/jira/browse/HADOOP-9507) | LocalFileSystem rename() is broken in some cases when destination exists |  Minor | fs | Mostafa Elhemali | Chris Nauroth |
| [HADOOP-9504](https://issues.apache.org/jira/browse/HADOOP-9504) | MetricsDynamicMBeanBase has concurrency issues in createMBeanInfo |  Critical | metrics | Liang Xie | Liang Xie |
| [HADOOP-9500](https://issues.apache.org/jira/browse/HADOOP-9500) | TestUserGroupInformation#testGetServerSideGroups fails on Windows due to failure to find winutils.exe |  Major | test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9496](https://issues.apache.org/jira/browse/HADOOP-9496) | Bad merge of HADOOP-9450 on branch-2 breaks all bin/hadoop calls that need HADOOP\_CLASSPATH |  Critical | bin | Gopal V | Harsh J |
| [HADOOP-9490](https://issues.apache.org/jira/browse/HADOOP-9490) | LocalFileSystem#reportChecksumFailure not closing the checksum file handle before rename |  Major | fs | Ivan Mitic | Ivan Mitic |
| [HADOOP-9488](https://issues.apache.org/jira/browse/HADOOP-9488) | FileUtil#createJarWithClassPath only substitutes environment variables from current process environment/does not support overriding when launching new process |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9486](https://issues.apache.org/jira/browse/HADOOP-9486) | Promote Windows and Shell related utils from YARN to Hadoop Common |  Major | . | Vinod Kumar Vavilapalli | Chris Nauroth |
| [HADOOP-9485](https://issues.apache.org/jira/browse/HADOOP-9485) | No default value in the code for hadoop.rpc.socket.factory.class.default |  Minor | net | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9481](https://issues.apache.org/jira/browse/HADOOP-9481) | Broken conditional logic with HADOOP\_SNAPPY\_LIBRARY |  Minor | . | Vadim Bondarev | Vadim Bondarev |
| [HADOOP-9473](https://issues.apache.org/jira/browse/HADOOP-9473) | typo in FileUtil copy() method |  Trivial | fs | Glen Mazza |  |
| [HADOOP-9469](https://issues.apache.org/jira/browse/HADOOP-9469) | mapreduce/yarn source jars not included in dist tarball |  Major | . | Thomas Graves | Robert Parker |
| [HADOOP-9459](https://issues.apache.org/jira/browse/HADOOP-9459) | ActiveStandbyElector can join election even before Service HEALTHY, and results in null data at ActiveBreadCrumb |  Critical | ha | Vinayakumar B | Vinayakumar B |
| [HADOOP-9455](https://issues.apache.org/jira/browse/HADOOP-9455) | HADOOP\_CLIENT\_OPTS appended twice causes JVM failures |  Minor | bin | Sangjin Lee | Chris Nauroth |
| [HADOOP-9451](https://issues.apache.org/jira/browse/HADOOP-9451) | Node with one topology layer should be handled as fault topology when NodeGroup layer is enabled |  Major | net | Junping Du | Junping Du |
| [HADOOP-9443](https://issues.apache.org/jira/browse/HADOOP-9443) | Port winutils static code analysis change to trunk |  Major | . | Chuan Liu | Chuan Liu |
| [HADOOP-9439](https://issues.apache.org/jira/browse/HADOOP-9439) | JniBasedUnixGroupsMapping: fix some crash bugs |  Minor | native | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9437](https://issues.apache.org/jira/browse/HADOOP-9437) | TestNativeIO#testRenameTo fails on Windows due to assumption that POSIX errno is embedded in NativeIOException |  Major | test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9430](https://issues.apache.org/jira/browse/HADOOP-9430) | TestSSLFactory fails on IBM JVM |  Major | security | Amir Sanjar |  |
| [HADOOP-9429](https://issues.apache.org/jira/browse/HADOOP-9429) | TestConfiguration fails with IBM JAVA |  Major | test | Amir Sanjar |  |
| [HADOOP-9413](https://issues.apache.org/jira/browse/HADOOP-9413) | Introduce common utils for File#setReadable/Writable/Executable and File#canRead/Write/Execute that work cross-platform |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9408](https://issues.apache.org/jira/browse/HADOOP-9408) | misleading description for net.topology.table.file.name property in core-default.xml |  Minor | conf | rajeshbabu | rajeshbabu |
| [HADOOP-9407](https://issues.apache.org/jira/browse/HADOOP-9407) | commons-daemon 1.0.3 dependency has bad group id causing build issues |  Major | build | Sangjin Lee | Sangjin Lee |
| [HADOOP-9397](https://issues.apache.org/jira/browse/HADOOP-9397) | Incremental dist tar build fails |  Major | build | Jason Lowe | Chris Nauroth |
| [HADOOP-9388](https://issues.apache.org/jira/browse/HADOOP-9388) | TestFsShellCopy fails on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9387](https://issues.apache.org/jira/browse/HADOOP-9387) | TestDFVariations fails on Windows after the merge |  Minor | fs | Ivan Mitic | Ivan Mitic |
| [HADOOP-9376](https://issues.apache.org/jira/browse/HADOOP-9376) | TestProxyUserFromEnv fails on a Windows domain joined machine |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9373](https://issues.apache.org/jira/browse/HADOOP-9373) | Merge CHANGES.branch-trunk-win.txt to CHANGES.txt |  Minor | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-9372](https://issues.apache.org/jira/browse/HADOOP-9372) | Fix bad timeout annotations on tests |  Major | . | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-9369](https://issues.apache.org/jira/browse/HADOOP-9369) | DNS#reverseDns() can return hostname with . appended at the end |  Major | net | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9365](https://issues.apache.org/jira/browse/HADOOP-9365) | TestHAZKUtil fails on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9364](https://issues.apache.org/jira/browse/HADOOP-9364) | PathData#expandAsGlob does not return correct results for absolute paths on Windows |  Major | . | Ivan Mitic | Ivan Mitic |
| [HADOOP-9358](https://issues.apache.org/jira/browse/HADOOP-9358) | "Auth failed" log should include exception string |  Major | ipc, security | Todd Lipcon | Todd Lipcon |
| [HADOOP-9353](https://issues.apache.org/jira/browse/HADOOP-9353) | Activate native-win profile by default on Windows |  Major | build | Arpit Agarwal | Arpit Agarwal |
| [HADOOP-9349](https://issues.apache.org/jira/browse/HADOOP-9349) | Confusing output when running hadoop version from one hadoop installation when HADOOP\_HOME points to another |  Major | tools | Sandy Ryza | Sandy Ryza |
| [HADOOP-9342](https://issues.apache.org/jira/browse/HADOOP-9342) | Remove jline from distribution |  Major | build | Thomas Weise | Thomas Weise |
| [HADOOP-9339](https://issues.apache.org/jira/browse/HADOOP-9339) | IPC.Server incorrectly sets UGI auth type |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-9337](https://issues.apache.org/jira/browse/HADOOP-9337) | org.apache.hadoop.fs.DF.getMount() does not work on Mac OS |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9323](https://issues.apache.org/jira/browse/HADOOP-9323) | Typos in API documentation |  Minor | documentation, fs, io, record | Hao Zhong | Suresh Srinivas |
| [HADOOP-9307](https://issues.apache.org/jira/browse/HADOOP-9307) | BufferedFSInputStream.read returns wrong results after certain seeks |  Major | fs | Todd Lipcon | Todd Lipcon |
| [HADOOP-9305](https://issues.apache.org/jira/browse/HADOOP-9305) | Add support for running the Hadoop client on 64-bit AIX |  Major | security | Aaron T. Myers | Aaron T. Myers |
| [HADOOP-9304](https://issues.apache.org/jira/browse/HADOOP-9304) | remove addition of avro genreated-sources dirs to build |  Major | build | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-9303](https://issues.apache.org/jira/browse/HADOOP-9303) | command manual dfsadmin missing entry for restoreFailedStorage option |  Major | . | Thomas Graves | Andy Isaacson |
| [HADOOP-9302](https://issues.apache.org/jira/browse/HADOOP-9302) | HDFS docs not linked from top level |  Major | documentation | Thomas Graves | Andy Isaacson |
| [HADOOP-9297](https://issues.apache.org/jira/browse/HADOOP-9297) | remove old record IO generation and tests |  Major | . | Alejandro Abdelnur | Alejandro Abdelnur |
| [HADOOP-9294](https://issues.apache.org/jira/browse/HADOOP-9294) | GetGroupsTestBase fails on Windows |  Major | test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9290](https://issues.apache.org/jira/browse/HADOOP-9290) | Some tests cannot load native library |  Major | build, native | Arpit Agarwal | Chris Nauroth |
| [HADOOP-9267](https://issues.apache.org/jira/browse/HADOOP-9267) | hadoop -help, -h, --help should show usage instructions |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-9264](https://issues.apache.org/jira/browse/HADOOP-9264) | port change to use Java untar API on Windows from branch-1-win to trunk |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9246](https://issues.apache.org/jira/browse/HADOOP-9246) | Execution phase for hadoop-maven-plugin should be process-resources |  Major | build | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9245](https://issues.apache.org/jira/browse/HADOOP-9245) | mvn clean without running mvn install before fails |  Major | build | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9230](https://issues.apache.org/jira/browse/HADOOP-9230) | TestUniformSizeInputFormat fails intermittently |  Major | test | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9228](https://issues.apache.org/jira/browse/HADOOP-9228) | FileSystemContractTestBase never verifies that files are files |  Minor | fs | Steve Loughran | Steve Loughran |
| [HADOOP-9220](https://issues.apache.org/jira/browse/HADOOP-9220) | Unnecessary transition to standby in ActiveStandbyElector |  Critical | ha | Tom White | Tom White |
| [HADOOP-9211](https://issues.apache.org/jira/browse/HADOOP-9211) | HADOOP\_CLIENT\_OPTS default setting fixes max heap size at 128m, disregards HADOOP\_HEAPSIZE |  Major | conf | Sarah Weissman | Plamen Jeliazkov |
| [HADOOP-9154](https://issues.apache.org/jira/browse/HADOOP-9154) | SortedMapWritable#putAll() doesn't add key/value classes to the map |  Major | io | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-9150](https://issues.apache.org/jira/browse/HADOOP-9150) | Unnecessary DNS resolution attempts for logical URIs |  Critical | fs/s3, ha, performance, viewfs | Todd Lipcon | Todd Lipcon |
| [HADOOP-9131](https://issues.apache.org/jira/browse/HADOOP-9131) | TestLocalFileSystem#testListStatusWithColons cannot run on Windows |  Major | test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9125](https://issues.apache.org/jira/browse/HADOOP-9125) | LdapGroupsMapping threw CommunicationException after some idle time |  Major | security | Kai Zheng | Kai Zheng |
| [HADOOP-9043](https://issues.apache.org/jira/browse/HADOOP-9043) | disallow in winutils creating symlinks with forwards slashes |  Major | util | Chris Nauroth | Chris Nauroth |
| [HADOOP-8982](https://issues.apache.org/jira/browse/HADOOP-8982) | TestSocketIOWithTimeout fails on Windows |  Major | net | Chris Nauroth | Chris Nauroth |
| [HADOOP-8973](https://issues.apache.org/jira/browse/HADOOP-8973) | DiskChecker cannot reliably detect an inaccessible disk on Windows with NTFS ACLs |  Major | util | Chris Nauroth | Chris Nauroth |
| [HADOOP-8958](https://issues.apache.org/jira/browse/HADOOP-8958) | ViewFs:Non absolute mount name failures when running multiple tests on Windows |  Major | viewfs | Chris Nauroth | Chris Nauroth |
| [HADOOP-8957](https://issues.apache.org/jira/browse/HADOOP-8957) | AbstractFileSystem#IsValidName should be overridden for embedded file systems like ViewFs |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-8917](https://issues.apache.org/jira/browse/HADOOP-8917) | add LOCALE.US to toLowerCase in SecurityUtil.replacePattern |  Major | . | Arpit Gupta | Arpit Gupta |
| [HADOOP-8569](https://issues.apache.org/jira/browse/HADOOP-8569) | CMakeLists.txt: define \_GNU\_SOURCE and \_LARGEFILE\_SOURCE |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8440](https://issues.apache.org/jira/browse/HADOOP-8440) | HarFileSystem.decodeHarURI fails for URIs whose host contains numbers |  Minor | fs | Ivan Mitic | Ivan Mitic |
| [HADOOP-7487](https://issues.apache.org/jira/browse/HADOOP-7487) | DF should throw a more reasonable exception when mount cannot be determined |  Major | fs | Todd Lipcon | Andrew Wang |
| [HADOOP-7391](https://issues.apache.org/jira/browse/HADOOP-7391) | Document Interface Classification from HADOOP-5073 |  Major | . | Sanjay Radia | Sanjay Radia |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9624](https://issues.apache.org/jira/browse/HADOOP-9624) | TestFSMainOperationsLocalFileSystem failed when the Hadoop test root path has "X" in its name |  Minor | test | Xi Fang | Xi Fang |
| [HADOOP-9287](https://issues.apache.org/jira/browse/HADOOP-9287) | Parallel testing hadoop-common |  Major | test | Tsuyoshi Ozawa | Andrey Klochkov |
| [HADOOP-9233](https://issues.apache.org/jira/browse/HADOOP-9233) | Cover package org.apache.hadoop.io.compress.zlib with unit tests |  Major | . | Vadim Bondarev | Vadim Bondarev |
| [HADOOP-9222](https://issues.apache.org/jira/browse/HADOOP-9222) | Cover package with org.apache.hadoop.io.lz4 unit tests |  Major | . | Vadim Bondarev | Vadim Bondarev |


### SUB-TASKS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9720](https://issues.apache.org/jira/browse/HADOOP-9720) | Rename Client#uuid to Client#clientId |  Major | . | Suresh Srinivas | Arpit Agarwal |
| [HADOOP-9619](https://issues.apache.org/jira/browse/HADOOP-9619) | Mark stability of .proto files |  Major | documentation | Sanjay Radia | Sanjay Radia |
| [HADOOP-9418](https://issues.apache.org/jira/browse/HADOOP-9418) | Add symlink resolution support to DistributedFileSystem |  Major | fs | Andrew Wang | Andrew Wang |
| [HADOOP-9416](https://issues.apache.org/jira/browse/HADOOP-9416) | Add new symlink resolution methods in FileSystem and FileSystemLinkResolver |  Major | fs | Andrew Wang | Andrew Wang |
| [HADOOP-9414](https://issues.apache.org/jira/browse/HADOOP-9414) | Refactor out FSLinkResolver and relevant helper methods |  Major | fs | Andrew Wang | Andrew Wang |
| [HADOOP-9355](https://issues.apache.org/jira/browse/HADOOP-9355) | Abstract symlink tests to use either FileContext or FileSystem |  Major | fs | Andrew Wang | Andrew Wang |
| [HADOOP-9258](https://issues.apache.org/jira/browse/HADOOP-9258) | Add stricter tests to FileSystemContractTestBase |  Major | test | Steve Loughran | Steve Loughran |
| [HADOOP-9218](https://issues.apache.org/jira/browse/HADOOP-9218) | Document the Rpc-wrappers used internally |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-9140](https://issues.apache.org/jira/browse/HADOOP-9140) | Cleanup rpc PB protos |  Major | ipc | Sanjay Radia | Sanjay Radia |
| [HADOOP-8470](https://issues.apache.org/jira/browse/HADOOP-8470) | Implementation of 4-layer subclass of NetworkTopology (NetworkTopologyWithNodeGroup) |  Major | . | Junping Du | Junping Du |
| [HADOOP-8469](https://issues.apache.org/jira/browse/HADOOP-8469) | Make NetworkTopology class pluggable |  Major | . | Junping Du | Junping Du |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


