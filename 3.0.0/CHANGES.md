# Hadoop Changelog

## Release 3.0.0 - 2015-03-15

### INCOMPATIBLE CHANGES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | Align the output of `hadoop fs -du` to be more Unix-like |  Minor | (N/A) | Nick Dimiduk | Akira AJISAKA |
| [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | Removed deprecated o.a.h.fs.permission.AccessControlException |  Major | (N/A) | Haohui Mai | Li Lu |
| [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | VersionInfo output specifies subversion |  Minor | (build) | Guo Ruijing | Tsuyoshi Ozawa |
| [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | rework  heap management  vars |  Major | (scripts) | Allen Wittenauer | John Smith |
| [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | Move o.a.h.record to hadoop-streaming |  Major | (N/A) | Haohui Mai | Haohui Mai |
| [HADOOP-10115](https://issues.apache.org/jira/browse/HADOOP-10115) | Exclude duplicate jars in hadoop package under different component's lib |  Major | (build) | Vinayakumar B | Vinayakumar B |
| [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | Shell script rewrite |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | Remove the deprecated Syncable.sync() method |  Major | (fs) | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | FsShell should report raw disk usage including replication factor |  Major | (fs) | Alex Kozlov | Byron Wong |
| [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | namenode -rollingUpgrade downgrade may finalize a rolling upgrade |  Major | (namenode) | Tsz Wo Nicholas Sze | Kai Sasaki |
| [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | Remove 'dfs.support.append' flag from trunk code |  Minor | (N/A) | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs |  Major | (N/A) | Haohui Mai | Haohui Mai |
| [HDFS-5079](https://issues.apache.org/jira/browse/HDFS-5079) | Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos. |  Major | (datanode, namenode) | Konstantin Shvachko | Tao Luo |
| [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | Remove the deprecated Syncable.sync() method |  Major | (hdfs-client) | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | option to disable fsck dots |  Minor | (N/A) | Allen Wittenauer | Mohammad Kamrul Islam |
| [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | TestHighRamJob fails due to the change in MAPREDUCE-5785 |  Major | (contrib/gridmix, mrv2) | Masatake Iwasaki | Masatake Iwasaki |
| [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | TestJobConf#testNegativeValueForTaskVmem failures |  Major | (test) | Gera Shegalov | Varun Saxena |
| [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | Fix typo 'programatically' in job.xml (and a few other places) |  Trivial | (N/A) | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | Derive heap size or mapreduce.*.memory.mb automatically |  Major | (mr-am, task) | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb |  Major | (distcp) | Mithun Radhakrishnan | Ratandeep Ratti |
| [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | LCE default banned user list should have yarn |  Trivial | (nodemanager) | Allen Wittenauer | Varun Saxena |


### NEW FEATURES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11565](https://issues.apache.org/jira/browse/HADOOP-11565) | Add --slaves shell option |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | Expose HadoopKerberosName as a hadoop subcommand |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11485](https://issues.apache.org/jira/browse/HADOOP-11485) | Pluggable shell integration |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | Add support for .hadooprc |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11084](https://issues.apache.org/jira/browse/HADOOP-11084) | jenkins patchprocess links are broken |  Major | (scripts) | Colin Patrick McCabe | Arpit Agarwal |
| [HADOOP-11013](https://issues.apache.org/jira/browse/HADOOP-11013) | CLASSPATH handling should be consolidated, debuggable |  Major | (N/A) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-9044](https://issues.apache.org/jira/browse/HADOOP-9044) | add FindClass main class to provide classpath checking of installations |  Minor | (util) | Steve Loughran | Steve Loughran |
| [HADOOP-8934](https://issues.apache.org/jira/browse/HADOOP-8934) | Shell command ls should include sort options |  Minor | (fs) | Jonathan Allen | Jonathan Allen |
| [HADOOP-6590](https://issues.apache.org/jira/browse/HADOOP-6590) | Add a username check for hadoop sub-commands |  Minor | (scripts) | Scott Chen | John Smith |
| [MAPREDUCE-4887](https://issues.apache.org/jira/browse/MAPREDUCE-4887) | Rehashing partitioner for better distribution |  Major | (N/A) | Radim Kolar | Radim Kolar |


### IMPROVEMENTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11673](https://issues.apache.org/jira/browse/HADOOP-11673) | Use org.junit.Assume to skip tests instead of return |  Minor | (test) | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11596](https://issues.apache.org/jira/browse/HADOOP-11596) | Allow smart-apply-patch.sh to add new files in binary git patches |  Major | (N/A) | Ravi Prakash | Ravi Prakash |
| [HADOOP-11593](https://issues.apache.org/jira/browse/HADOOP-11593) | Convert site documentation from apt to markdown (stragglers) |  Major | (documentation) | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11575](https://issues.apache.org/jira/browse/HADOOP-11575) | Daemon log documentation is misleading |  Major | (documentation) | Jagadesh Kiran N | Naganarasimha G R |
| [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | Deprecate shell vars |  Major | (scripts) | Allen Wittenauer | John Smith |
| [HADOOP-11352](https://issues.apache.org/jira/browse/HADOOP-11352) | Clean up test-patch.sh to disable "+1 contrib tests" |  Major | (build) | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11346](https://issues.apache.org/jira/browse/HADOOP-11346) | Rewrite sls/rumen to use new shell framework |  Major | (scripts, tools) | Allen Wittenauer | John Smith |
| [HADOOP-11208](https://issues.apache.org/jira/browse/HADOOP-11208) | Replace "daemon" with better name in script subcommands |  Major | (scripts) | Yongjun Zhang | Allen Wittenauer |
| [HADOOP-11150](https://issues.apache.org/jira/browse/HADOOP-11150) | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME |  Minor | (scripts) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11092](https://issues.apache.org/jira/browse/HADOOP-11092) | hadoop shell commands should print usage if not given a class |  Major | (scripts) | Bruno Mahé | Allen Wittenauer |
| [HADOOP-11081](https://issues.apache.org/jira/browse/HADOOP-11081) | Document hadoop properties expected to be set by the shell code in *-env.sh |  Major | (documentation, scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11058](https://issues.apache.org/jira/browse/HADOOP-11058) | Missing HADOOP\_CONF\_DIR generates strange results |  Major | (scripts) | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11025](https://issues.apache.org/jira/browse/HADOOP-11025) | hadoop-daemons.sh should just call hdfs directly |  Major | (scripts) | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-10926](https://issues.apache.org/jira/browse/HADOOP-10926) | Improve smart-apply-patch.sh to apply binary diffs |  Major | (N/A) | Andrew Wang | Colin Patrick McCabe |
| [HADOOP-10834](https://issues.apache.org/jira/browse/HADOOP-10834) | Typo in CredentialShell usage |  Minor | (security) | Benoy Antony | Benoy Antony |
| [HADOOP-10485](https://issues.apache.org/jira/browse/HADOOP-10485) | Remove dead classes in hadoop-streaming |  Major | (tools) | Haohui Mai | Haohui Mai |
| [HADOOP-10044](https://issues.apache.org/jira/browse/HADOOP-10044) | Improve the javadoc of rpc code |  Minor | (N/A) | Sanjay Radia | Sanjay Radia |
| [HADOOP-9394](https://issues.apache.org/jira/browse/HADOOP-9394) | Port findHangingTest.sh from HBase to Hadoop |  Minor | (N/A) | Andrew Wang | Andrew Wang |
| [HADOOP-9277](https://issues.apache.org/jira/browse/HADOOP-9277) | Improve javadoc for FileContext |  Minor | (N/A) | Andrew Wang | Andrew Wang |
| [HADOOP-9121](https://issues.apache.org/jira/browse/HADOOP-9121) | InodeTree.java has redundant check for vName while throwing exception |  Trivial | (fs) | Arup Malakar | Arup Malakar |
| [HADOOP-9075](https://issues.apache.org/jira/browse/HADOOP-9075) | FileContext#FSLinkResolver should be made static |  Minor | (N/A) | Suresh Srinivas | Arpit Agarwal |
| [HADOOP-8920](https://issues.apache.org/jira/browse/HADOOP-8920) | Add more javadoc to metrics2 related classes |  Minor | (metrics) | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8864](https://issues.apache.org/jira/browse/HADOOP-8864) | Addendum to HADOOP-8840: Add a coloring case for +0 results too. |  Trivial | (N/A) | Harsh J | Harsh J |
| [HADOOP-8838](https://issues.apache.org/jira/browse/HADOOP-8838) | Colorize the test-patch output sent to JIRA |  Trivial | (build) | Harsh J | Harsh J |
| [HADOOP-8813](https://issues.apache.org/jira/browse/HADOOP-8813) | RPC Server and Client classes need InterfaceAudience and InterfaceStability annotations |  Trivial | (ipc) | Brandon Li | Brandon Li |
| [HADOOP-8776](https://issues.apache.org/jira/browse/HADOOP-8776) | Provide an option in test-patch that can enable / disable compiling native code |  Minor | (build) | Hemanth Yamijala | Chris Nauroth |
| [HADOOP-8719](https://issues.apache.org/jira/browse/HADOOP-8719) | Workaround for kerberos-related log errors upon running any hadoop command on OSX |  Trivial | (scripts) | Jianbin Wei | Jianbin Wei |
| [HADOOP-8593](https://issues.apache.org/jira/browse/HADOOP-8593) | add  the missed @Override to methods in Metric/Metric2 package |  Minor | (metrics) | Brandon Li | Brandon Li |
| [HADOOP-8588](https://issues.apache.org/jira/browse/HADOOP-8588) | SerializationFactory shouldn't throw a NullPointerException if the serializations list is empty |  Minor | (io) | Harsh J | Sho Shimauchi |
| [HADOOP-8523](https://issues.apache.org/jira/browse/HADOOP-8523) | test-patch.sh doesn't validate patches before building |  Minor | (build) | Jack Dintruff | Jack Dintruff |
| [HADOOP-8521](https://issues.apache.org/jira/browse/HADOOP-8521) | Port StreamInputFormat to new Map Reduce API |  Major | (N/A) | madhukara phatak | madhukara phatak |
| [HADOOP-8375](https://issues.apache.org/jira/browse/HADOOP-8375) | test-patch should stop immediately once it has found compilation errors |  Major | (build) | Tsz Wo Nicholas Sze | Robert Joseph Evans |
| [HADOOP-8312](https://issues.apache.org/jira/browse/HADOOP-8312) | testpatch.sh should provide a simpler way to see which warnings changed |  Major | (scripts) | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8297](https://issues.apache.org/jira/browse/HADOOP-8297) | Writable javadocs don't carry default constructor |  Trivial | (documentation) | Harsh J | Harsh J |
| [HADOOP-8290](https://issues.apache.org/jira/browse/HADOOP-8290) | Remove two remaining references to "hadoop.native.lib" oldprop |  Trivial | (test) | Harsh J | Harsh J |
| [HADOOP-8147](https://issues.apache.org/jira/browse/HADOOP-8147) | test-patch should run tests with -fn to avoid masking test failures |  Major | (test) | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8078](https://issues.apache.org/jira/browse/HADOOP-8078) | Add capability to turn on security in unit tests. |  Major | (test) | Jitendra Nath Pandey | Jaimin D Jetly |
| [HADOOP-8059](https://issues.apache.org/jira/browse/HADOOP-8059) | Add javadoc to InterfaceAudience and InterfaceStability |  Major | (documentation) | Suresh Srinivas | Brandon Li |
| [HADOOP-8017](https://issues.apache.org/jira/browse/HADOOP-8017) | Configure hadoop-main pom to get rid of M2E plugin execution not covered |  Major | (build) | Eric Charles | Eric Charles |
| [HADOOP-7930](https://issues.apache.org/jira/browse/HADOOP-7930) | Kerberos relogin interval in UserGroupInformation should be configurable |  Major | (security) | Alejandro Abdelnur | Robert Kanter |
| [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | dfs -count -q should label output column |  Trivial | (N/A) | Nigel Daley | Jonathan Allen |
| [HADOOP-7659](https://issues.apache.org/jira/browse/HADOOP-7659) | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems |  Minor | (fs) | Harsh J | Harsh J |
| [HADOOP-6964](https://issues.apache.org/jira/browse/HADOOP-6964) | Allow compact property description in xml |  Major | (conf) | Owen O'Malley | Kengo Seki |
| [HADOOP-6616](https://issues.apache.org/jira/browse/HADOOP-6616) | Improve documentation for rack awareness |  Major | (documentation) | Jeff Hammerbacher | Adam Faris |
| [HDFS-7546](https://issues.apache.org/jira/browse/HDFS-7546) | Document, and set an accepting default for dfs.namenode.kerberos.principal.pattern |  Minor | (security) | Harsh J | Harsh J |
| [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | Rewrite httpfs to use new shell framework |  Major | (scripts) | Allen Wittenauer | John Smith |
| [HDFS-7322](https://issues.apache.org/jira/browse/HDFS-7322) | deprecate sbin/hadoop-daemon.sh |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HDFS-6228](https://issues.apache.org/jira/browse/HDFS-6228) | comments typo fix for FsDatasetImpl.java |  Trivial | (N/A) | zhaoyunjiong | zhaoyunjiong |
| [HDFS-5041](https://issues.apache.org/jira/browse/HDFS-5041) | Add the time of last heartbeat to dead server Web UI |  Minor | (N/A) | Ted Yu | Ted Yu |
| [HDFS-4665](https://issues.apache.org/jira/browse/HDFS-4665) | Move TestNetworkTopologyWithNodeGroup to Common |  Minor | (test) | Luke Lu | Junping Du |
| [HDFS-3995](https://issues.apache.org/jira/browse/HDFS-3995) | Use DFSTestUtil.createFile() for file creation and writing in test cases |  Minor | (N/A) | Jing Zhao | Jing Zhao |
| [HDFS-3834](https://issues.apache.org/jira/browse/HDFS-3834) | Unused Command.java fields NAME, DESCRIPTION and USAGE |  Minor | (N/A) | Jing Zhao | Jing Zhao |
| [HDFS-3768](https://issues.apache.org/jira/browse/HDFS-3768) | Exception in TestJettyHelper is incorrect |  Minor | (N/A) | Jakob Homan | Eli Reisman |
| [HDFS-3478](https://issues.apache.org/jira/browse/HDFS-3478) | Test quotas with Long.Max\_Value |  Minor | (namenode) | Sujay Rau | Sujay Rau |
| [HDFS-3476](https://issues.apache.org/jira/browse/HDFS-3476) | Correct the default used in TestDFSClientRetries.busyTest() after HDFS-3462 |  Minor | (test) | Harsh J | Harsh J |
| [HDFS-3358](https://issues.apache.org/jira/browse/HDFS-3358) | Specify explicitly that the NN UI status total is talking of persistent objects on heap. |  Trivial | (namenode) | Harsh J | Harsh J |
| [HDFS-3293](https://issues.apache.org/jira/browse/HDFS-3293) | Implement equals for journainfo class. |  Minor | (namenode) | Hari Mankude | Hari Mankude |
| [HDFS-2580](https://issues.apache.org/jira/browse/HDFS-2580) | NameNode#main(...) can make use of GenericOptionsParser. |  Minor | (namenode) | Harsh J | Harsh J |
| [MAPREDUCE-6260](https://issues.apache.org/jira/browse/MAPREDUCE-6260) | Convert site documentation to markdown |  Major | (documentation) | Allen Wittenauer | Masatake Iwasaki |
| [MAPREDUCE-6250](https://issues.apache.org/jira/browse/MAPREDUCE-6250) | deprecate sbin/mr-jobhistory-daemon.sh |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [MAPREDUCE-6013](https://issues.apache.org/jira/browse/MAPREDUCE-6013) | mapred version is missing |  Major | (scripts) | Allen Wittenauer | Akira AJISAKA |
| [MAPREDUCE-5232](https://issues.apache.org/jira/browse/MAPREDUCE-5232) | log classpath and other key properties on child JVM start |  Major | (mrv1, mrv2) | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-5197](https://issues.apache.org/jira/browse/MAPREDUCE-5197) | Checkpoint Service: a library component to facilitate checkpoint of task state |  Major | (mrv2) | Carlo Curino | Carlo Curino |
| [MAPREDUCE-5196](https://issues.apache.org/jira/browse/MAPREDUCE-5196) | CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing |  Major | (mr-am, mrv2) | Carlo Curino | Carlo Curino |
| [MAPREDUCE-4735](https://issues.apache.org/jira/browse/MAPREDUCE-4735) | Make arguments in TestDFSIO case insensitive |  Trivial | (test) | Robert Kanter | Brandon Li |
| [MAPREDUCE-4686](https://issues.apache.org/jira/browse/MAPREDUCE-4686) | hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes |  Major | (build) | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-4371](https://issues.apache.org/jira/browse/MAPREDUCE-4371) | Check for cyclic dependencies in Jobcontrol job DAG |  Major | (mrv1) | madhukara phatak | madhukara phatak |
| [MAPREDUCE-3956](https://issues.apache.org/jira/browse/MAPREDUCE-3956) | Remove the use of the deprecated Syncable.sync() method |  Minor | (examples) | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-3302](https://issues.apache.org/jira/browse/MAPREDUCE-3302) | Remove the last dependency call from org.apache.hadoop.record package in MR. |  Minor | (client) | Harsh J | Harsh J |
| [MAPREDUCE-2944](https://issues.apache.org/jira/browse/MAPREDUCE-2944) | Improve checking of input for Api displayTasks() |  Trivial | (client) | XieXianshan | XieXianshan |
| [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | Task level native optimization |  Major | (task) | Binglin Chang | Sean Zhong |
| [MAPREDUCE-2384](https://issues.apache.org/jira/browse/MAPREDUCE-2384) | The job submitter should make sure to validate jobs before creation of necessary files |  Major | (job submission, test) | Denny Ye | Harsh J |
| [YARN-3199](https://issues.apache.org/jira/browse/YARN-3199) | Fair Scheduler documentation improvements |  Minor | (fairscheduler) | Rohit Agarwal | Rohit Agarwal |
| [YARN-3168](https://issues.apache.org/jira/browse/YARN-3168) | Convert site documentation from apt to markdown |  Major | (documentation) | Allen Wittenauer | Gururaj Shetty |
| [YARN-2980](https://issues.apache.org/jira/browse/YARN-2980) | Move health check script related functionality to hadoop-common |  Major | (N/A) | Ming Ma | Varun Saxena |
| [YARN-2796](https://issues.apache.org/jira/browse/YARN-2796) | deprecate sbin/yarn-daemon.sh |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [YARN-2472](https://issues.apache.org/jira/browse/YARN-2472) | yarn-daemons.sh should just call yarn directly |  Major | (scripts) | Allen Wittenauer | Masatake Iwasaki |
| [YARN-2438](https://issues.apache.org/jira/browse/YARN-2438) | yarn-env.sh cleanup |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [YARN-2437](https://issues.apache.org/jira/browse/YARN-2437) | start-yarn.sh/stop-yarn should give info |  Major | (scripts) | Allen Wittenauer | Varun Saxena |
| [YARN-2280](https://issues.apache.org/jira/browse/YARN-2280) | Resource manager web service fields are not accessible |  Trivial | (resourcemanager) | Krisztian Horvath | Krisztian Horvath |


### BUG FIXES:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11703](https://issues.apache.org/jira/browse/HADOOP-11703) | git should ignore .DS\_Store files on Mac OS X |  Major | (N/A) | Abin Shahab | Abin Shahab |
| [HADOOP-11668](https://issues.apache.org/jira/browse/HADOOP-11668) | hadoop-daemons.sh bw compat broke with --slaves change |  Major | (scripts) | Vinayakumar B | Vinayakumar B |
| [HADOOP-11653](https://issues.apache.org/jira/browse/HADOOP-11653) | shellprofiles should require .sh extension |  Major | (scripts) | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11637](https://issues.apache.org/jira/browse/HADOOP-11637) | bash location hard-coded in shell scripts |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11625](https://issues.apache.org/jira/browse/HADOOP-11625) | Minor fixes to command manual & SLA doc |  Major | (documentation) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11585](https://issues.apache.org/jira/browse/HADOOP-11585) | Fix formatting in Tracing.md |  Trivial | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11583](https://issues.apache.org/jira/browse/HADOOP-11583) | Fix syntax error in SecureMode.md |  Trivial | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11581](https://issues.apache.org/jira/browse/HADOOP-11581) | Fix Multithreaded correctness Warnings #org.apache.hadoop.fs.shell.Ls |  Major | (N/A) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11580](https://issues.apache.org/jira/browse/HADOOP-11580) | Remove SingleNodeSetup.md from trunk |  Major | (documentation) | Allen Wittenauer | Akira AJISAKA |
| [HADOOP-11559](https://issues.apache.org/jira/browse/HADOOP-11559) | Add links to RackAwareness and InterfaceClassification to site index |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11484](https://issues.apache.org/jira/browse/HADOOP-11484) | hadoop-mapreduce-client-nativetask fails to build on ARM AARCH64 due to x86 asm statements |  Minor | (native) | Edward Nevill | Edward Nevill |
| [HADOOP-11473](https://issues.apache.org/jira/browse/HADOOP-11473) | test-patch says "-1 overall" even when all checks are +1 |  Major | (build) | Jason Lowe | Jason Lowe |
| [HADOOP-11437](https://issues.apache.org/jira/browse/HADOOP-11437) | Remove the version and author information from distcp's README file |  Major | (documentation) | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11397](https://issues.apache.org/jira/browse/HADOOP-11397) | Can't override HADOOP\_IDENT\_STRING |  Trivial | (N/A) | Allen Wittenauer | Kengo Seki |
| [HADOOP-11380](https://issues.apache.org/jira/browse/HADOOP-11380) | Restore Rack Awareness documentation |  Major | (N/A) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11298](https://issues.apache.org/jira/browse/HADOOP-11298) | slaves.sh and stop-all.sh are missing slashes |  Trivial | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11296](https://issues.apache.org/jira/browse/HADOOP-11296) | hadoop-daemons.sh throws 'host1: bash: host3: command not found...' |  Major | (scripts) | Vinayakumar B | Vinayakumar B |
| [HADOOP-11284](https://issues.apache.org/jira/browse/HADOOP-11284) | Fix variable name mismatches in hadoop-functions.sh |  Minor | (scripts) | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11240](https://issues.apache.org/jira/browse/HADOOP-11240) | Jenkins build seems to be broken by changes in test-patch.sh |  Blocker | (N/A) | Zhijie Shen | Steve Loughran |
| [HADOOP-11055](https://issues.apache.org/jira/browse/HADOOP-11055) | non-daemon pid files are missing |  Blocker | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11052](https://issues.apache.org/jira/browse/HADOOP-11052) | hadoop\_verify\_secure\_prereq's results aren't checked in bin/hdfs |  Critical | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11033](https://issues.apache.org/jira/browse/HADOOP-11033) | shell scripts ignore JAVA\_HOME on OS X |  Major | (scripts) | Lei (Eddy) Xu | Allen Wittenauer |
| [HADOOP-11022](https://issues.apache.org/jira/browse/HADOOP-11022) | User replaced functions get lost 2-3 levels deep (e.g., sbin) |  Critical | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11002](https://issues.apache.org/jira/browse/HADOOP-11002) | shell escapes are incompatible with previous releases |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10996](https://issues.apache.org/jira/browse/HADOOP-10996) | Stop violence in the *\_HOME |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10908](https://issues.apache.org/jira/browse/HADOOP-10908) | Common needs updates for shell rewrite |  Major | (documentation) | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10831](https://issues.apache.org/jira/browse/HADOOP-10831) | UserProvider is not thread safe |  Major | (security) | Benoy Antony | Benoy Antony |
| [HADOOP-10774](https://issues.apache.org/jira/browse/HADOOP-10774) | Update KerberosTestUtils for hadoop-auth tests when using IBM Java |  Major | (security) | sangamesh | sangamesh |
| [HADOOP-10325](https://issues.apache.org/jira/browse/HADOOP-10325) | improve jenkins javadoc warnings from test-patch.sh |  Major | (N/A) | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9583](https://issues.apache.org/jira/browse/HADOOP-9583) | test-patch gives +1 despite build failure when running tests |  Critical | (N/A) | Jason Lowe | Jason Lowe |
| [HADOOP-9433](https://issues.apache.org/jira/browse/HADOOP-9433) | TestLocalFileSystem#testHasFileDescriptor leaks file handle |  Major | (fs, test) | Chris Nauroth | Chris Nauroth |
| [HADOOP-9431](https://issues.apache.org/jira/browse/HADOOP-9431) | TestSecurityUtil#testLocalHostNameForNullOrWild on systems where hostname contains capital letters |  Trivial | (security, test) | Chris Nauroth | Chris Nauroth |
| [HADOOP-9393](https://issues.apache.org/jira/browse/HADOOP-9393) | TestRPC fails with JDK7 |  Major | (N/A) | Andrew Wang | Andrew Wang |
| [HADOOP-9265](https://issues.apache.org/jira/browse/HADOOP-9265) | S3 blockstore filesystem breaks part of the Filesystem contract |  Major | (fs/s3) | Steve Loughran | Steve Loughran |
| [HADOOP-9261](https://issues.apache.org/jira/browse/HADOOP-9261) | S3n filesystem can move a directory under itself -and so lose data |  Major | (fs/s3) | Steve Loughran | Steve Loughran |
| [HADOOP-9249](https://issues.apache.org/jira/browse/HADOOP-9249) | hadoop-maven-plugins version-info goal causes build failure when running with Clover |  Major | (build) | Chris Nauroth | Chris Nauroth |
| [HADOOP-9202](https://issues.apache.org/jira/browse/HADOOP-9202) | test-patch.sh fails during mvn eclipse:eclipse if patch adds a new module to the build |  Major | (build) | Chris Nauroth | Chris Nauroth |
| [HADOOP-9186](https://issues.apache.org/jira/browse/HADOOP-9186) | test-patch.sh should report build failure to JIRA |  Major | (N/A) | Binglin Chang | Binglin Chang |
| [HADOOP-9139](https://issues.apache.org/jira/browse/HADOOP-9139) | improve script hadoop-common-project/hadoop-common/src/test/resources/kdc/killKdc.sh |  Minor | (N/A) | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9037](https://issues.apache.org/jira/browse/HADOOP-9037) | Bug in test-patch.sh and precommit build process |  Critical | (build) | Kihwal Lee | Kihwal Lee |
| [HADOOP-8974](https://issues.apache.org/jira/browse/HADOOP-8974) | TestDFVariations fails on Windows |  Major | (fs) | Chris Nauroth | Chris Nauroth |
| [HADOOP-8918](https://issues.apache.org/jira/browse/HADOOP-8918) | dev-support/test-patch.sh is parsing modified files wrong |  Major | (build) | Raja Aluri | Raja Aluri |
| [HADOOP-8910](https://issues.apache.org/jira/browse/HADOOP-8910) | Add examples to GlobExpander#expand method |  Minor | (fs) | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8840](https://issues.apache.org/jira/browse/HADOOP-8840) | Fix the test-patch colorizer to cover all sorts of +1 lines. |  Major | (build) | Harsh J | Harsh J |
| [HADOOP-8839](https://issues.apache.org/jira/browse/HADOOP-8839) | test-patch's -1 on @author tag presence doesn't cause a -1 to the overall result |  Trivial | (build) | Harsh J | Harsh J |
| [HADOOP-8821](https://issues.apache.org/jira/browse/HADOOP-8821) | Findbugs warning Configuration.dumpDeprecatedKeys() concatenates strings using + in a loop |  Trivial | (N/A) | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8818](https://issues.apache.org/jira/browse/HADOOP-8818) | Should use equals() rather than == to compare String or Text in MD5MD5CRC32FileChecksum and TFileDumper |  Minor | (fs, io) | Brandon Li | Brandon Li |
| [HADOOP-8584](https://issues.apache.org/jira/browse/HADOOP-8584) | test-patch.sh should not immediately exit when no tests are added or modified |  Major | (N/A) | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8548](https://issues.apache.org/jira/browse/HADOOP-8548) | test-patch.sh shows an incorrect link in Jekins builds |  Major | (build) | Kihwal Lee | Kihwal Lee |
| [HADOOP-8436](https://issues.apache.org/jira/browse/HADOOP-8436) | NPE In getLocalPathForWrite ( path, conf ) when the required context item is not configured |  Major | (fs) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-8413](https://issues.apache.org/jira/browse/HADOOP-8413) | test-patch.sh gives out the wrong links for newPatchFindbugsWarnings |  Minor | (N/A) | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8395](https://issues.apache.org/jira/browse/HADOOP-8395) | Text shell command unnecessarily demands that a SequenceFile's key class be WritableComparable |  Trivial | (util) | Harsh J | Harsh J |
| [HADOOP-8360](https://issues.apache.org/jira/browse/HADOOP-8360) | empty-configuration.xml fails xml validation |  Minor | (test) | Radim Kolar | Radim Kolar |
| [HADOOP-8354](https://issues.apache.org/jira/browse/HADOOP-8354) | test-patch findbugs may fail if a dependent module is changed |  Major | (build) | Tom White | Robert Joseph Evans |
| [HADOOP-8339](https://issues.apache.org/jira/browse/HADOOP-8339) | jenkins complaining about 16 javadoc warnings |  Major | (build) | Thomas Graves | Robert Joseph Evans |
| [HADOOP-8177](https://issues.apache.org/jira/browse/HADOOP-8177) | MBeans shouldn't try to register when it fails to create MBeanName |  Minor | (metrics) | Devaraj K | Devaraj K |
| [HADOOP-8151](https://issues.apache.org/jira/browse/HADOOP-8151) | Error handling in snappy decompressor throws invalid exceptions |  Major | (io, native) | Todd Lipcon | Matt Foley |
| [HADOOP-7769](https://issues.apache.org/jira/browse/HADOOP-7769) | TestJMXJsonServlet is failing |  Major | (N/A) | Tom White | Tom White |
| [HADOOP-7757](https://issues.apache.org/jira/browse/HADOOP-7757) | Test file reference count is at least 3x actual value |  Major | (build) | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-7704](https://issues.apache.org/jira/browse/HADOOP-7704) | JsonFactory can be created only once and used for every next request to create JsonGenerator inside JMXJsonServlet |  Minor | (N/A) | Devaraj K | Devaraj K |
| [HADOOP-7256](https://issues.apache.org/jira/browse/HADOOP-7256) | Resource leak during failure scenario of closing of resources. |  Minor | (N/A) | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HADOOP-6871](https://issues.apache.org/jira/browse/HADOOP-6871) | When the value of a configuration key is set to its unresolved form, it causes the IllegalStateException in Configuration.get() stating that substitution depth is too large. |  Major | (conf) | Arvind Prabhakar | Arvind Prabhakar |
| [HADOOP-6220](https://issues.apache.org/jira/browse/HADOOP-6220) | HttpServer wraps InterruptedExceptions by IOExceptions if interrupted in startup |  Minor | (util) | Steve Loughran | Steve Loughran |
| [HDFS-7803](https://issues.apache.org/jira/browse/HDFS-7803) | Wrong command mentioned in HDFSHighAvailabilityWithQJM documentation |  Minor | (documentation) | Arshad Mohammad | Arshad Mohammad |
| [HDFS-7791](https://issues.apache.org/jira/browse/HDFS-7791) | dfs count -v should be added to quota documentation |  Major | (documentation) | Allen Wittenauer | Akira AJISAKA |
| [HDFS-7755](https://issues.apache.org/jira/browse/HDFS-7755) | httpfs shell code has hardcoded path to bash |  Major | (scripts) | Dmitry Sivachenko | Dmitry Sivachenko |
| [HDFS-7711](https://issues.apache.org/jira/browse/HDFS-7711) | Fix various typos in ClusterSetup.md |  Major | (documentation) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-7670](https://issues.apache.org/jira/browse/HDFS-7670) | HDFS Quota guide has typos, incomplete command lines |  Major | (documentation) | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7669](https://issues.apache.org/jira/browse/HDFS-7669) | HDFS Design Doc references commands that no longer exist. |  Major | (documentation) | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7667](https://issues.apache.org/jira/browse/HDFS-7667) | Various typos and improvements to HDFS Federation doc |  Minor | (documentation) | Charles Lamb | Charles Lamb |
| [HDFS-7581](https://issues.apache.org/jira/browse/HDFS-7581) | HDFS documentation needs updating post-shell rewrite |  Major | (documentation) | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7407](https://issues.apache.org/jira/browse/HDFS-7407) | Minor typo in privileged pid/out/log names |  Minor | (N/A) | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7320](https://issues.apache.org/jira/browse/HDFS-7320) | The appearance of hadoop-hdfs-httpfs site docs is inconsistent |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7319](https://issues.apache.org/jira/browse/HDFS-7319) | Remove dead link to HFTP documentation from index.xml |  Minor | (documentation) | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7204](https://issues.apache.org/jira/browse/HDFS-7204) | balancer doesn't run as a daemon |  Blocker | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [HDFS-6893](https://issues.apache.org/jira/browse/HDFS-6893) | crypto subcommand is not sorted properly in hdfs's hadoop\_usage |  Trivial | (scripts) | Allen Wittenauer | David Luo |
| [HDFS-5794](https://issues.apache.org/jira/browse/HDFS-5794) | Fix the inconsistency of layout version number of ADD\_DATANODE\_AND\_STORAGE\_UUIDS between trunk and branch-2 |  Minor | (namenode) | Jing Zhao | Jing Zhao |
| [HDFS-4904](https://issues.apache.org/jira/browse/HDFS-4904) | Remove JournalService |  Major | (namenode) | Suresh Srinivas | Arpit Agarwal |
| [HDFS-4761](https://issues.apache.org/jira/browse/HDFS-4761) | Refresh INodeMap in FSDirectory#reset() |  Minor | (namenode) | Jing Zhao | Jing Zhao |
| [HDFS-4757](https://issues.apache.org/jira/browse/HDFS-4757) | Update FSDirectory#inodeMap when replacing an INodeDirectory while setting quota |  Minor | (namenode) | Jing Zhao | Jing Zhao |
| [HDFS-4681](https://issues.apache.org/jira/browse/HDFS-4681) | TestBlocksWithNotEnoughRacks#testCorruptBlockRereplicatedAcrossRacks fails using IBM java |  Major | (test) | Tian Hong Wang | Ayappan |
| [HDFS-4391](https://issues.apache.org/jira/browse/HDFS-4391) | TestDataTransferKeepalive fails when tests are executed in a certain order. |  Major | (test) | Konstantin Shvachko | Andrew Wang |
| [HDFS-4366](https://issues.apache.org/jira/browse/HDFS-4366) | Block Replication Policy Implementation May Skip Higher-Priority Blocks for Lower-Priority Blocks |  Major | (N/A) | Derek Dagit | Derek Dagit |
| [HDFS-4338](https://issues.apache.org/jira/browse/HDFS-4338) | TestNameNodeMetrics#testCorruptBlock is flaky |  Major | (namenode) | Andrew Wang | Andrew Wang |
| [HDFS-4310](https://issues.apache.org/jira/browse/HDFS-4310) | fix test org.apache.hadoop.hdfs.server.datanode.TestStartSecureDataNode |  Major | (N/A) | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HDFS-4275](https://issues.apache.org/jira/browse/HDFS-4275) | MiniDFSCluster-based tests fail on Windows due to failure to delete test namenode directory |  Major | (test) | Chris Nauroth | Chris Nauroth |
| [HDFS-4115](https://issues.apache.org/jira/browse/HDFS-4115) | TestHDFSCLI.testAll fails one test due to number format |  Minor | (test) | Trevor Robinson | Trevor Robinson |
| [HDFS-4067](https://issues.apache.org/jira/browse/HDFS-4067) | TestUnderReplicatedBlocks may fail due to ReplicaAlreadyExistsException |  Major | (N/A) | Eli Collins | Jing Zhao |
| [HDFS-4003](https://issues.apache.org/jira/browse/HDFS-4003) | test-patch should build the common native libs before running hdfs tests |  Major | (build) | Eli Collins | Colin Patrick McCabe |
| [HDFS-3750](https://issues.apache.org/jira/browse/HDFS-3750) | API docs don't include HDFS |  Critical | (documentation) | Eli Collins | Jolly Chen |
| [HDFS-3735](https://issues.apache.org/jira/browse/HDFS-3735) | NameNode WebUI should allow sorting live datanode list by fields Block Pool Used, Block Pool Used(%) and Failed Volumes. |  Major | (namenode) | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-3614](https://issues.apache.org/jira/browse/HDFS-3614) | Revert unused MiniDFSCluster constructor from HDFS-3049 |  Blocker | (N/A) | Arun C Murthy | Arun C Murthy |
| [HDFS-3462](https://issues.apache.org/jira/browse/HDFS-3462) | TestDFSClientRetries.busyTest() should restore default xceiver count in the config. |  Major | (test) | Konstantin Shvachko | madhukara phatak |
| [HDFS-3197](https://issues.apache.org/jira/browse/HDFS-3197) | Incorrect class comments in a few tests |  Trivial | (test) | Aaron T. Myers | Andy Isaacson |
| [HDFS-3116](https://issues.apache.org/jira/browse/HDFS-3116) | Typo in fetchdt error message |  Trivial | (hdfs-client) | Aaron T. Myers | AOE Takashi |
| [HDFS-2434](https://issues.apache.org/jira/browse/HDFS-2434) | TestNameNodeMetrics.testCorruptBlock fails intermittently |  Major | (test) | Uma Maheswara Rao G | Jing Zhao |
| [HDFS-2313](https://issues.apache.org/jira/browse/HDFS-2313) | Rat excludes has a typo for excluding editsStored files |  Major | (test) | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2312](https://issues.apache.org/jira/browse/HDFS-2312) | FSNamesystem header comment says it's for the DN |  Trivial | (namenode) | Aaron T. Myers | Harsh J |
| [HDFS-2310](https://issues.apache.org/jira/browse/HDFS-2310) | TestBackupNode fails since HADOOP-7524 went in. |  Major | (N/A) | Ivan Kelly | Ivan Kelly |
| [HDFS-2299](https://issues.apache.org/jira/browse/HDFS-2299) | TestOfflineEditsViewer is failing on trunk |  Major | (test) | Aaron T. Myers | Uma Maheswara Rao G |
| [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | The namespace quota of root directory should not be Integer.MAX\_VALUE |  Major | (namenode) | Tsz Wo Nicholas Sze | Uma Maheswara Rao G |
| [MAPREDUCE-6161](https://issues.apache.org/jira/browse/MAPREDUCE-6161) | mapred hsadmin command missing from trunk |  Major | (scripts) | Jason Lowe | Allen Wittenauer |
| [MAPREDUCE-5912](https://issues.apache.org/jira/browse/MAPREDUCE-5912) | Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196 |  Major | (client) | Remus Rusanu | Remus Rusanu |
| [MAPREDUCE-5717](https://issues.apache.org/jira/browse/MAPREDUCE-5717) | Task pings are interpreted as task progress |  Major | (N/A) | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5012](https://issues.apache.org/jira/browse/MAPREDUCE-5012) | Typo in javadoc for IdentityMapper class |  Trivial | (documentation) | Adam Monsen | Adam Monsen |
| [MAPREDUCE-4695](https://issues.apache.org/jira/browse/MAPREDUCE-4695) | Fix LocalRunner on trunk after MAPREDUCE-3223 broke it |  Blocker | (N/A) | Harsh J | Harsh J |
| [MAPREDUCE-4685](https://issues.apache.org/jira/browse/MAPREDUCE-4685) | DBCount should not use ACCESS |  Major | (examples) | Viji | Viji |
| [MAPREDUCE-4574](https://issues.apache.org/jira/browse/MAPREDUCE-4574) | Fix TotalOrderParitioner to work with non-WritableComparable key types |  Trivial | (client) | Harsh J | Harsh J |
| [MAPREDUCE-4413](https://issues.apache.org/jira/browse/MAPREDUCE-4413) | MR lib dir contains jdiff (which is gpl) |  Critical | (build) | Eli Collins | Nemon Lou |
| [MAPREDUCE-3990](https://issues.apache.org/jira/browse/MAPREDUCE-3990) | MRBench allows Long-sized input-lines value but parses CLI argument as an Integer |  Trivial | (benchmarks) | Harsh J | Harsh J |
| [MAPREDUCE-3223](https://issues.apache.org/jira/browse/MAPREDUCE-3223) | Remove MR1 configs from mapred-default.xml |  Major | (documentation, mrv2) | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-3149](https://issues.apache.org/jira/browse/MAPREDUCE-3149) | add a test to verify that buildDTAuthority works for cases with no authority. |  Major | (N/A) | John George | John George |
| [MAPREDUCE-2978](https://issues.apache.org/jira/browse/MAPREDUCE-2978) | hudson findbugs not reporting properly |  Major | (mrv2) | Thomas Graves | Tom White |
| [YARN-3002](https://issues.apache.org/jira/browse/YARN-3002) | YARN documentation needs updating post-shell rewrite |  Major | (documentation) | Allen Wittenauer | Allen Wittenauer |
| [YARN-2525](https://issues.apache.org/jira/browse/YARN-2525) | yarn logs command gives error on trunk |  Minor | (scripts) | Prakash Ramachandran | Akira AJISAKA |
| [YARN-2436](https://issues.apache.org/jira/browse/YARN-2436) | yarn application help doesn't work |  Major | (scripts) | Allen Wittenauer | Allen Wittenauer |
| [YARN-1471](https://issues.apache.org/jira/browse/YARN-1471) | The SLS simulator is not running the preemption policy for CapacityScheduler |  Minor | (N/A) | Carlo Curino | Carlo Curino |
| [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL |  Minor | (api) | Steve Loughran | Steve Loughran |


### TESTS:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8844](https://issues.apache.org/jira/browse/HADOOP-8844) | Add a plaintext fs -text test-case |  Major | (fs) | Harsh J | Akira AJISAKA |
| [HADOOP-8434](https://issues.apache.org/jira/browse/HADOOP-8434) | TestConfiguration currently has no tests for direct setter methods |  Major | (N/A) | Harsh J | madhukara phatak |
| [HDFS-2127](https://issues.apache.org/jira/browse/HDFS-2127) | Add a test that ensure AccessControlExceptions contain a full path |  Major | (namenode) | Eli Collins | Stephen Chu |
| [MAPREDUCE-2669](https://issues.apache.org/jira/browse/MAPREDUCE-2669) | Some new examples and test cases for them. |  Minor | (examples) | Plamen Jeliazkov | Plamen Jeliazkov |


### OTHER:

| JIRA | Description | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8308](https://issues.apache.org/jira/browse/HADOOP-8308) | Support cross-project Jenkins builds |  Major | (build) | Tom White | Tom White |
| [HDFS-2776](https://issues.apache.org/jira/browse/HDFS-2776) | Missing interface annotation on JournalSet |  Trivial | (namenode) | Todd Lipcon | Brandon Li |


