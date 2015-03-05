# Hadoop Changelog

## Release 3.0.0 - 2015-03-04

### INCOMPATIBLE CHANGES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11657 | Align the output of `hadoop fs -du` to be more Unix-like | Akira AJISAKA |
| HADOOP-11356 | Removed deprecated o.a.h.fs.permission.AccessControlException | Li Lu |
| HADOOP-11041 | VersionInfo output specifies subversion | Tsuyoshi Ozawa |
| HADOOP-10950 | rework  heap management  vars | John Smith |
| HADOOP-10474 | Move o.a.h.record to hadoop-streaming | Haohui Mai |
| HADOOP-9902 | Shell script rewrite | Allen Wittenauer |
| HADOOP-8124 | Remove the deprecated Syncable.sync() method | Tsz Wo Nicholas Sze |
| HADOOP-6857 | FsShell should report raw disk usage including replication factor | Byron Wong |
| HDFS-7302 | namenode -rollingUpgrade downgrade may finalize a rolling upgrade | Kai Sasaki |
| HDFS-6246 | Remove 'dfs.support.append' flag from trunk code | Uma Maheswara Rao G |
| HDFS-5570 | Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs | Haohui Mai |
| HDFS-5079 | Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos. | Tao Luo |
| HDFS-3034 | Remove the deprecated Syncable.sync() method | Tsz Wo Nicholas Sze |
| HDFS-2538 | option to disable fsck dots  | Mohammad Kamrul Islam |
| MAPREDUCE-6234 | TestHighRamJob fails due to the change in MAPREDUCE-5785 | Masatake Iwasaki |
| MAPREDUCE-6223 | TestJobConf#testNegativeValueForTaskVmem failures | Varun Saxena |
| MAPREDUCE-5972 | Fix typo 'programatically' in job.xml (and a few other places) | Akira AJISAKA |
| MAPREDUCE-5785 | Derive heap size or mapreduce.*.memory.mb automatically | Gera Shegalov |
| MAPREDUCE-5653 | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb | Ratandeep Ratti |
| YARN-2428 | LCE default banned user list should have yarn | Varun Saxena |
### NEW FEATURES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11565 | Add --slaves shell option | Allen Wittenauer |
| HADOOP-11554 | Expose HadoopKerberosName as a hadoop subcommand | Allen Wittenauer |
| HADOOP-11485 | Pluggable shell integration | Allen Wittenauer |
| HADOOP-11353 | Add support for .hadooprc | Allen Wittenauer |
| HADOOP-11084 | jenkins patchprocess links are broken | Arpit Agarwal |
| HADOOP-11013 | CLASSPATH handling should be consolidated, debuggable | Allen Wittenauer |
| HADOOP-9044 | add FindClass main class to provide classpath checking of installations | Steve Loughran |
| HADOOP-8934 | Shell command ls should include sort options | Jonathan Allen |
| HADOOP-6590 | Add a username check for hadoop sub-commands | John Smith |
| MAPREDUCE-4887 | Rehashing partitioner for better distribution | Radim Kolar |
### IMPROVEMENTS:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11596 | Allow smart-apply-patch.sh to add new files in binary git patches | Ravi Prakash |
| HADOOP-11593 | Convert site documentation from apt to markdown (stragglers) | Masatake Iwasaki |
| HADOOP-11575 | Daemon log documentation is misleading | Naganarasimha G R |
| HADOOP-11460 | Deprecate shell vars | John Smith |
| HADOOP-11352 | Clean up test-patch.sh to disable "+1 contrib tests" | Akira AJISAKA |
| HADOOP-11346 | Rewrite sls/rumen to use new shell framework | John Smith |
| HADOOP-11208 | Replace "daemon" with better name in script subcommands | Allen Wittenauer |
| HADOOP-11150 | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME | Masatake Iwasaki |
| HADOOP-11092 | hadoop shell commands should print usage if not given a class | Allen Wittenauer |
| HADOOP-11081 | Document hadoop properties expected to be set by the shell code in *-env.sh | Allen Wittenauer |
| HADOOP-11058 | Missing HADOOP_CONF_DIR generates strange results | Masatake Iwasaki |
| HADOOP-11025 | hadoop-daemons.sh should just call hdfs directly | Masatake Iwasaki |
| HADOOP-10926 | Improve smart-apply-patch.sh to apply binary diffs | Colin Patrick McCabe |
| HADOOP-10834 | Typo in CredentialShell usage | Benoy Antony |
| HADOOP-10485 | Remove dead classes in hadoop-streaming | Haohui Mai |
| HADOOP-9394 | Port findHangingTest.sh from HBase to Hadoop | Andrew Wang |
| HADOOP-9277 | Improve javadoc for FileContext | Andrew Wang |
| HADOOP-9121 | InodeTree.java has redundant check for vName while throwing exception | Arup Malakar |
| HADOOP-9075 | FileContext#FSLinkResolver should be made static | Arpit Agarwal |
| HADOOP-8920 | Add more javadoc to metrics2 related classes | Suresh Srinivas |
| HADOOP-8864 | Addendum to HADOOP-8840: Add a coloring case for +0 results too. | Harsh J |
| HADOOP-8838 | Colorize the test-patch output sent to JIRA | Harsh J |
| HADOOP-8813 | RPC Server and Client classes need InterfaceAudience and InterfaceStability annotations | Brandon Li |
| HADOOP-8776 | Provide an option in test-patch that can enable / disable compiling native code | Chris Nauroth |
| HADOOP-8719 | Workaround for kerberos-related log errors upon running any hadoop command on OSX | Jianbin Wei |
| HADOOP-8593 | add  the missed @Override to methods in Metric/Metric2 package | Brandon Li |
| HADOOP-8588 | SerializationFactory shouldn't throw a NullPointerException if the serializations list is empty | Sho Shimauchi |
| HADOOP-8523 | test-patch.sh doesn't validate patches before building | Jack Dintruff |
| HADOOP-8521 | Port StreamInputFormat to new Map Reduce API | madhukara phatak |
| HADOOP-8375 | test-patch should stop immediately once it has found compilation errors | Robert Joseph Evans |
| HADOOP-8312 | testpatch.sh should provide a simpler way to see which warnings changed | Robert Joseph Evans |
| HADOOP-8297 | Writable javadocs don't carry default constructor | Harsh J |
| HADOOP-8290 | Remove two remaining references to "hadoop.native.lib" oldprop | Harsh J |
| HADOOP-8147 | test-patch should run tests with -fn to avoid masking test failures | Robert Joseph Evans |
| HADOOP-8078 | Add capability to turn on security in unit tests. | Jaimin D Jetly |
| HADOOP-8059 | Add javadoc to InterfaceAudience and InterfaceStability | Brandon Li |
| HADOOP-8017 | Configure hadoop-main pom to get rid of M2E plugin execution not covered | Eric Charles |
| HADOOP-7930 | Kerberos relogin interval in UserGroupInformation should be configurable | Robert Kanter |
| HADOOP-7713 | dfs -count -q should label output column | Jonathan Allen |
| HADOOP-7659 | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems | Harsh J |
| HADOOP-6964 | Allow compact property description in xml | Kengo Seki |
| HADOOP-6616 | Improve documentation for rack awareness | Adam Faris |
| HDFS-7546 | Document, and set an accepting default for dfs.namenode.kerberos.principal.pattern | Harsh J |
| HDFS-7460 | Rewrite httpfs to use new shell framework | John Smith |
| HDFS-7322 | deprecate sbin/hadoop-daemon.sh | Allen Wittenauer |
| HDFS-6228 | comments typo fix for FsDatasetImpl.java | zhaoyunjiong |
| HDFS-5041 | Add the time of last heartbeat to dead server Web UI | Ted Yu |
| HDFS-4665 | Move TestNetworkTopologyWithNodeGroup to Common | Junping Du |
| HDFS-3995 | Use DFSTestUtil.createFile() for file creation and writing in test cases | Jing Zhao |
| HDFS-3834 | Unused Command.java fields NAME, DESCRIPTION and USAGE | Jing Zhao |
| HDFS-3768 | Exception in TestJettyHelper is incorrect | Eli Reisman |
| HDFS-3478 | Test quotas with Long.Max_Value | Sujay Rau |
| HDFS-3476 | Correct the default used in TestDFSClientRetries.busyTest() after HDFS-3462 | Harsh J |
| HDFS-3358 | Specify explicitly that the NN UI status total is talking of persistent objects on heap. | Harsh J |
| HDFS-3293 | Implement equals for journainfo class.  | Hari Mankude |
| HDFS-2580 | NameNode#main(...) can make use of GenericOptionsParser. | Harsh J |
| MAPREDUCE-6260 | Convert site documentation to markdown | Masatake Iwasaki |
| MAPREDUCE-6250 | deprecate sbin/mr-jobhistory-daemon.sh | Allen Wittenauer |
| MAPREDUCE-6013 | mapred version is missing | Akira AJISAKA |
| MAPREDUCE-5232 | log classpath and other key properties on child JVM start | Sangjin Lee |
| MAPREDUCE-5197 | Checkpoint Service: a library component to facilitate checkpoint of task state | Carlo Curino |
| MAPREDUCE-5196 | CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing  | Carlo Curino |
| MAPREDUCE-4735 | Make arguments in TestDFSIO case insensitive | Brandon Li |
| MAPREDUCE-4686 | hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes | Chris Nauroth |
| MAPREDUCE-4371 | Check for cyclic dependencies in Jobcontrol job DAG | madhukara phatak |
| MAPREDUCE-3956 | Remove the use of the deprecated Syncable.sync() method | Tsz Wo Nicholas Sze |
| MAPREDUCE-3302 | Remove the last dependency call from org.apache.hadoop.record package in MR. | Harsh J |
| MAPREDUCE-2944 | Improve checking of input for Api displayTasks()  | XieXianshan |
| MAPREDUCE-2841 | Task level native optimization | Sean Zhong |
| MAPREDUCE-2384 | The job submitter should make sure to validate jobs before creation of necessary files | Harsh J |
| YARN-3199 | Fair Scheduler documentation improvements | Rohit Agarwal |
| YARN-3168 | Convert site documentation from apt to markdown | Gururaj Shetty |
| YARN-2980 | Move health check script related functionality to hadoop-common | Varun Saxena |
| YARN-2796 | deprecate sbin/yarn-daemon.sh | Allen Wittenauer |
| YARN-2472 | yarn-daemons.sh should just call yarn directly | Masatake Iwasaki |
| YARN-2438 | yarn-env.sh cleanup | Allen Wittenauer |
| YARN-2437 | start-yarn.sh/stop-yarn should give info | Varun Saxena |
### BUG FIXES:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-11637 | bash location hard-coded in shell scripts | Allen Wittenauer |
| HADOOP-11625 | Minor fixes to command manual &amp; SLA doc | Allen Wittenauer |
| HADOOP-11585 | Fix formatting in Tracing.md | Masatake Iwasaki |
| HADOOP-11583 | Fix syntax error in SecureMode.md | Masatake Iwasaki |
| HADOOP-11581 | Fix Multithreaded correctness Warnings #org.apache.hadoop.fs.shell.Ls | Brahma Reddy Battula |
| HADOOP-11580 | Remove SingleNodeSetup.md from trunk | Akira AJISAKA |
| HADOOP-11559 | Add links to RackAwareness and InterfaceClassification to site index | Masatake Iwasaki |
| HADOOP-11484 | hadoop-mapreduce-client-nativetask fails to build on ARM AARCH64 due to x86 asm statements | Edward Nevill |
| HADOOP-11473 | test-patch says "-1 overall" even when all checks are +1 | Jason Lowe |
| HADOOP-11437 | Remove the version and author information from distcp's README file | Brahma Reddy Battula |
| HADOOP-11397 | Can't override HADOOP_IDENT_STRING | Kengo Seki |
| HADOOP-11380 | Restore Rack Awareness documentation | Allen Wittenauer |
| HADOOP-11298 | slaves.sh and stop-all.sh are missing slashes  | Allen Wittenauer |
| HADOOP-11296 | hadoop-daemons.sh throws 'host1: bash: host3: command not found...' | Vinayakumar B |
| HADOOP-11284 | Fix variable name mismatches in hadoop-functions.sh | Masatake Iwasaki |
| HADOOP-11240 | Jenkins build seems to be broken by changes in test-patch.sh | Steve Loughran |
| HADOOP-11055 | non-daemon pid files are missing | Allen Wittenauer |
| HADOOP-11052 | hadoop_verify_secure_prereq's results aren't checked in bin/hdfs | Allen Wittenauer |
| HADOOP-11033 | shell scripts ignore JAVA_HOME on OS X | Allen Wittenauer |
| HADOOP-11022 | User replaced functions get lost 2-3 levels deep (e.g., sbin) | Allen Wittenauer |
| HADOOP-11002 | shell escapes are incompatible with previous releases | Allen Wittenauer |
| HADOOP-10996 | Stop violence in the *_HOME | Allen Wittenauer |
| HADOOP-10908 | Common needs updates for shell rewrite | Allen Wittenauer |
| HADOOP-10831 | UserProvider is not thread safe | Benoy Antony |
| HADOOP-10774 | Update KerberosTestUtils for hadoop-auth tests when using IBM Java | sangamesh |
| HADOOP-10325 | improve jenkins javadoc warnings from test-patch.sh | Colin Patrick McCabe |
| HADOOP-9583 | test-patch gives +1 despite build failure when running tests | Jason Lowe |
| HADOOP-9433 | TestLocalFileSystem#testHasFileDescriptor leaks file handle | Chris Nauroth |
| HADOOP-9431 | TestSecurityUtil#testLocalHostNameForNullOrWild on systems where hostname contains capital letters | Chris Nauroth |
| HADOOP-9393 | TestRPC fails with JDK7 | Andrew Wang |
| HADOOP-9265 | S3 blockstore filesystem breaks part of the Filesystem contract | Steve Loughran |
| HADOOP-9261 | S3n filesystem can move a directory under itself -and so lose data | Steve Loughran |
| HADOOP-9249 | hadoop-maven-plugins version-info goal causes build failure when running with Clover | Chris Nauroth |
| HADOOP-9202 | test-patch.sh fails during mvn eclipse:eclipse if patch adds a new module to the build | Chris Nauroth |
| HADOOP-9186 | test-patch.sh should report build failure to JIRA | Binglin Chang |
| HADOOP-9139 | improve script hadoop-common-project/hadoop-common/src/test/resources/kdc/killKdc.sh | Ivan A. Veselovsky |
| HADOOP-9037 | Bug in test-patch.sh and precommit build process | Kihwal Lee |
| HADOOP-8974 | TestDFVariations fails on Windows | Chris Nauroth |
| HADOOP-8918 | dev-support/test-patch.sh is parsing modified files wrong | Raja Aluri |
| HADOOP-8910 | Add examples to GlobExpander#expand method | Suresh Srinivas |
| HADOOP-8840 | Fix the test-patch colorizer to cover all sorts of +1 lines. | Harsh J |
| HADOOP-8839 | test-patch's -1 on @author tag presence doesn't cause a -1 to the overall result | Harsh J |
| HADOOP-8821 | Findbugs warning Configuration.dumpDeprecatedKeys() concatenates strings using + in a loop | Suresh Srinivas |
| HADOOP-8818 | Should use equals() rather than == to compare String or Text in MD5MD5CRC32FileChecksum and TFileDumper | Brandon Li |
| HADOOP-8584 | test-patch.sh should not immediately exit when no tests are added or modified | Colin Patrick McCabe |
| HADOOP-8548 | test-patch.sh shows an incorrect link in Jekins builds | Kihwal Lee |
| HADOOP-8436 | NPE In getLocalPathForWrite ( path, conf ) when the required context item is not configured | Brahma Reddy Battula |
| HADOOP-8413 | test-patch.sh gives out the wrong links for newPatchFindbugsWarnings | Colin Patrick McCabe |
| HADOOP-8395 | Text shell command unnecessarily demands that a SequenceFile's key class be WritableComparable | Harsh J |
| HADOOP-8360 | empty-configuration.xml fails xml validation | Radim Kolar |
| HADOOP-8354 | test-patch findbugs may fail if a dependent module is changed | Robert Joseph Evans |
| HADOOP-8339 | jenkins complaining about 16 javadoc warnings  | Robert Joseph Evans |
| HADOOP-8177 | MBeans shouldn't try to register when it fails to create MBeanName | Devaraj K |
| HADOOP-8151 | Error handling in snappy decompressor throws invalid exceptions | Matt Foley |
| HADOOP-7769 | TestJMXJsonServlet is failing | Tom White |
| HADOOP-7757 | Test file reference count is at least 3x actual value | Jonathan Eagles |
| HADOOP-7704 | JsonFactory can be created only once and used for every next request to create JsonGenerator inside JMXJsonServlet  | Devaraj K |
| HADOOP-7256 | Resource leak during failure scenario of closing of resources.  | ramkrishna.s.vasudevan |
| HADOOP-6871 | When the value of a configuration key is set to its unresolved form, it causes the IllegalStateException in Configuration.get() stating that substitution depth is too large. | Arvind Prabhakar |
| HADOOP-6220 | HttpServer wraps InterruptedExceptions by IOExceptions if interrupted in startup | Steve Loughran |
| HDFS-7803 | Wrong command mentioned in HDFSHighAvailabilityWithQJM documentation | Arshad Mohammad |
| HDFS-7791 | dfs count -v should be added to quota documentation | Akira AJISAKA |
| HDFS-7755 | httpfs shell code has hardcoded path to bash | Dmitry Sivachenko |
| HDFS-7711 | Fix various typos in ClusterSetup.md | Brahma Reddy Battula |
| HDFS-7670 | HDFS Quota guide has typos, incomplete command lines | Brahma Reddy Battula |
| HDFS-7669 | HDFS Design Doc references commands that no longer exist. | Brahma Reddy Battula |
| HDFS-7667 | Various typos and improvements to HDFS Federation doc | Charles Lamb |
| HDFS-7581 | HDFS documentation needs updating post-shell rewrite | Allen Wittenauer |
| HDFS-7407 | Minor typo in privileged pid/out/log names | Allen Wittenauer |
| HDFS-7320 | The appearance of hadoop-hdfs-httpfs site docs is inconsistent  | Masatake Iwasaki |
| HDFS-7319 | Remove dead link to HFTP documentation from index.xml | Masatake Iwasaki |
| HDFS-7204 | balancer doesn't run as a daemon | Allen Wittenauer |
| HDFS-6893 | crypto subcommand is not sorted properly in hdfs's hadoop_usage | David Luo |
| HDFS-5794 | Fix the inconsistency of layout version number of ADD_DATANODE_AND_STORAGE_UUIDS between trunk and branch-2 | Jing Zhao |
| HDFS-4904 | Remove JournalService | Arpit Agarwal |
| HDFS-4761 | Refresh INodeMap in FSDirectory#reset() | Jing Zhao |
| HDFS-4757 | Update FSDirectory#inodeMap when replacing an INodeDirectory while setting quota | Jing Zhao |
| HDFS-4681 | TestBlocksWithNotEnoughRacks#testCorruptBlockRereplicatedAcrossRacks fails using IBM java | Ayappan |
| HDFS-4391 | TestDataTransferKeepalive fails when tests are executed in a certain order. | Andrew Wang |
| HDFS-4366 | Block Replication Policy Implementation May Skip Higher-Priority Blocks for Lower-Priority Blocks | Derek Dagit |
| HDFS-4338 | TestNameNodeMetrics#testCorruptBlock is flaky | Andrew Wang |
| HDFS-4310 | fix test org.apache.hadoop.hdfs.server.datanode.TestStartSecureDataNode | Ivan A. Veselovsky |
| HDFS-4275 | MiniDFSCluster-based tests fail on Windows due to failure to delete test namenode directory | Chris Nauroth |
| HDFS-4115 | TestHDFSCLI.testAll fails one test due to number format | Trevor Robinson |
| HDFS-4067 | TestUnderReplicatedBlocks may fail due to ReplicaAlreadyExistsException | Jing Zhao |
| HDFS-4003 | test-patch should build the common native libs before running hdfs tests  | Colin Patrick McCabe |
| HDFS-3750 | API docs don't include HDFS | Jolly Chen |
| HDFS-3735 | NameNode WebUI should allow sorting live datanode list by fields Block Pool Used, Block Pool Used(%) and Failed Volumes.  | Brahma Reddy Battula |
| HDFS-3614 | Revert unused MiniDFSCluster constructor from HDFS-3049 | Arun C Murthy |
| HDFS-3462 | TestDFSClientRetries.busyTest() should restore default xceiver count in the config. | madhukara phatak |
| HDFS-3197 | Incorrect class comments in a few tests | Andy Isaacson |
| HDFS-3116 | Typo in fetchdt error message | AOE Takashi |
| HDFS-2434 | TestNameNodeMetrics.testCorruptBlock fails intermittently | Jing Zhao |
| HDFS-2313 | Rat excludes has a typo for excluding editsStored files | Aaron T. Myers |
| HDFS-2312 | FSNamesystem header comment says it's for the DN | Harsh J |
| HDFS-2310 | TestBackupNode fails since HADOOP-7524 went in. | Ivan Kelly |
| HDFS-2299 | TestOfflineEditsViewer is failing on trunk | Uma Maheswara Rao G |
| HDFS-46 | The namespace quota of root directory should not be Integer.MAX_VALUE | Uma Maheswara Rao G |
| MAPREDUCE-6161 | mapred hsadmin command missing from trunk | Allen Wittenauer |
| MAPREDUCE-5912 | Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196 | Remus Rusanu |
| MAPREDUCE-5717 | Task pings are interpreted as task progress | Jason Lowe |
| MAPREDUCE-5012 | Typo in javadoc for IdentityMapper class | Adam Monsen |
| MAPREDUCE-4695 | Fix LocalRunner on trunk after MAPREDUCE-3223 broke it | Harsh J |
| MAPREDUCE-4685 | DBCount should not use ACCESS  | Viji |
| MAPREDUCE-4574 | Fix TotalOrderParitioner to work with non-WritableComparable key types | Harsh J |
| MAPREDUCE-4413 | MR lib dir contains jdiff (which is gpl) | Nemon Lou |
| MAPREDUCE-3990 | MRBench allows Long-sized input-lines value but parses CLI argument as an Integer | Harsh J |
| MAPREDUCE-3223 | Remove MR1 configs from mapred-default.xml | Todd Lipcon |
| MAPREDUCE-3149 | add a test to verify that buildDTAuthority works for cases with no authority. | John George |
| MAPREDUCE-2978 | hudson findbugs not reporting properly | Tom White |
| YARN-3002 | YARN documentation needs updating post-shell rewrite | Allen Wittenauer |
| YARN-2525 | yarn logs command gives error on trunk | Akira AJISAKA |
| YARN-2436 | yarn application help doesn't work | Allen Wittenauer |
| YARN-1471 | The SLS simulator is not running the preemption policy for CapacityScheduler | Carlo Curino |
| YARN-524 | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL | Steve Loughran |
### OTHER:

| JIRA | Description | Contributor |
|:---- |:---- | :--- |
| HADOOP-8844 | Add a plaintext fs -text test-case | Akira AJISAKA |
| HADOOP-8434 | TestConfiguration currently has no tests for direct setter methods | madhukara phatak |
| HDFS-2127 | Add a test that ensure AccessControlExceptions contain a full path | Stephen Chu |
| MAPREDUCE-2669 | Some new examples and test cases for them. | Plamen Jeliazkov |
| HADOOP-8308 | Support cross-project Jenkins builds | Tom White |
| HDFS-2776 | Missing interface annotation on JournalSet | Brandon Li |


