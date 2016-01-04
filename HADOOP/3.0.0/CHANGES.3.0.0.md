
<!---
# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
-->
# Apache Hadoop Changelog

## Release 3.0.0 - Unreleased (as of 2016-01-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12495](https://issues.apache.org/jira/browse/HADOOP-12495) | Fix posix\_spawn error on OS X |  Major | util | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12294](https://issues.apache.org/jira/browse/HADOOP-12294) | Throw an Exception when fs.permissions.umask-mode is misconfigured |  Major | conf | Chang Li | Chang Li |
| [HADOOP-11698](https://issues.apache.org/jira/browse/HADOOP-11698) | Remove DistCpV1 and Logalyzer |  Major | tools/distcp | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | Align the output of `hadoop fs -du` to be more Unix-like |  Minor | . | Nick Dimiduk | Akira AJISAKA |
| [HADOOP-11627](https://issues.apache.org/jira/browse/HADOOP-11627) | Remove io.native.lib.available |  Major | native | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11553](https://issues.apache.org/jira/browse/HADOOP-11553) | Formalize the shell API |  Blocker | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | Removed deprecated o.a.h.fs.permission.AccessControlException |  Major | . | Haohui Mai | Li Lu |
| [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | VersionInfo output specifies subversion |  Minor | build | Guo Ruijing | Tsuyoshi Ozawa |
| [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | rework  heap management  vars |  Major | scripts | Allen Wittenauer | John Smith |
| [HADOOP-10787](https://issues.apache.org/jira/browse/HADOOP-10787) | Rename/remove non-HADOOP\_\*, etc from the shell scripts |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | Move o.a.h.record to hadoop-streaming |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10115](https://issues.apache.org/jira/browse/HADOOP-10115) | Exclude duplicate jars in hadoop package under different component's lib |  Major | build | Vinayakumar B | Vinayakumar B |
| [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | Shell script rewrite |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | Remove the deprecated Syncable.sync() method |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | FsShell should report raw disk usage including replication factor |  Major | fs | Alex Kozlov | Byron Wong |
| [HDFS-9278](https://issues.apache.org/jira/browse/HDFS-9278) | Fix preferredBlockSize typo in OIV XML output |  Trivial | tools | Nicole Pazmany | Nicole Pazmany |
| [HDFS-9085](https://issues.apache.org/jira/browse/HDFS-9085) | Show renewer information in DelegationTokenIdentifier#toString |  Trivial | security | zhihai xu | zhihai xu |
| [HDFS-9070](https://issues.apache.org/jira/browse/HDFS-9070) | Allow fsck display pending replica location information for being-written blocks |  Major | . | GAO Rui | GAO Rui |
| [HDFS-8981](https://issues.apache.org/jira/browse/HDFS-8981) | Adding revision to data node jmx getVersion() method |  Minor | . | Siqi Li | Siqi Li |
| [HDFS-8895](https://issues.apache.org/jira/browse/HDFS-8895) | Remove deprecated BlockStorageLocation APIs |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-8591](https://issues.apache.org/jira/browse/HDFS-8591) | Remove support for deprecated configuration key dfs.namenode.decommission.nodes.per.interval |  Minor | namenode | Andrew Wang | Andrew Wang |
| [HDFS-8349](https://issues.apache.org/jira/browse/HDFS-8349) | Remove .xml and documentation references to dfs.webhdfs.enabled |  Minor | . | Ray Chiang | Ray Chiang |
| [HDFS-8332](https://issues.apache.org/jira/browse/HDFS-8332) | DFS client API calls should check filesystem closed |  Major | . | Rakesh R | Rakesh R |
| [HDFS-8241](https://issues.apache.org/jira/browse/HDFS-8241) | Remove unused NameNode startup option -finalize |  Minor | namenode | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8135](https://issues.apache.org/jira/browse/HDFS-8135) | Remove the deprecated FSConstants class |  Major | . | Haohui Mai | Li Lu |
| [HDFS-7985](https://issues.apache.org/jira/browse/HDFS-7985) | WebHDFS should be always enabled |  Major | . | Haohui Mai | Li Lu |
| [HDFS-7645](https://issues.apache.org/jira/browse/HDFS-7645) | Rolling upgrade is restoring blocks from trash multiple times |  Major | datanode | Nathan Roberts | Keisuke Ogiwara |
| [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | namenode -rollingUpgrade downgrade may finalize a rolling upgrade |  Major | namenode | Tsz Wo Nicholas Sze | Kai Sasaki |
| [HDFS-7281](https://issues.apache.org/jira/browse/HDFS-7281) | Missing block is marked as corrupted block |  Major | namenode | Ming Ma | Ming Ma |
| [HDFS-6353](https://issues.apache.org/jira/browse/HDFS-6353) | Check and make checkpoint before stopping the NameNode |  Major | namenode | Suresh Srinivas | Jing Zhao |
| [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | Remove 'dfs.support.append' flag from trunk code |  Minor | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-5165](https://issues.apache.org/jira/browse/HDFS-5165) | Remove the TotalFiles metrics |  Minor | . | Akira AJISAKA | Akira AJISAKA |
| [HDFS-5079](https://issues.apache.org/jira/browse/HDFS-5079) | Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos. |  Major | datanode, namenode | Konstantin Shvachko | Tao Luo |
| [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | Remove the deprecated Syncable.sync() method |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | option to disable fsck dots |  Minor | . | Allen Wittenauer | Mohammad Kamrul Islam |
| [MAPREDUCE-6336](https://issues.apache.org/jira/browse/MAPREDUCE-6336) | Enable v2 FileOutputCommitter by default |  Major | mrv2 | Gera Shegalov | Siqi Li |
| [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | TestHighRamJob fails due to the change in MAPREDUCE-5785 |  Major | contrib/gridmix, mrv2 | Masatake Iwasaki | Masatake Iwasaki |
| [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | TestJobConf#testNegativeValueForTaskVmem failures |  Major | test | Gera Shegalov | Varun Saxena |
| [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | Fix typo 'programatically' in job.xml (and a few other places) |  Trivial | . | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | Derive heap size or mapreduce.\*.memory.mb automatically |  Major | mr-am, task | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb |  Major | distcp | Mithun Radhakrishnan | Ratandeep Ratti |
| [MAPREDUCE-4424](https://issues.apache.org/jira/browse/MAPREDUCE-4424) | 'mapred job -list' command should show the job name as well |  Minor | mrv2 | Harsh J | Avinash Kujur |
| [MAPREDUCE-2632](https://issues.apache.org/jira/browse/MAPREDUCE-2632) | Avoid calling the partitioner when the numReduceTasks is 1. |  Major | . | Ravi Teja Ch N V | Sunil G |
| [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | LCE default banned user list should have yarn |  Trivial | nodemanager | Allen Wittenauer | Varun Saxena |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11565](https://issues.apache.org/jira/browse/HADOOP-11565) | Add --slaves shell option |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | Expose HadoopKerberosName as a hadoop subcommand |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11485](https://issues.apache.org/jira/browse/HADOOP-11485) | Pluggable shell integration |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | Add support for .hadooprc |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11013](https://issues.apache.org/jira/browse/HADOOP-11013) | CLASSPATH handling should be consolidated, debuggable |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10949](https://issues.apache.org/jira/browse/HADOOP-10949) | metrics2 sink plugin for Apache Kafka |  Major | metrics | Babak Behzad | Babak Behzad |
| [HADOOP-9642](https://issues.apache.org/jira/browse/HADOOP-9642) | Configuration to resolve environment variables via ${env.VARIABLE} references |  Minor | conf, scripts | Steve Loughran | Kengo Seki |
| [HADOOP-9044](https://issues.apache.org/jira/browse/HADOOP-9044) | add FindClass main class to provide classpath checking of installations |  Minor | util | Steve Loughran | Steve Loughran |
| [HADOOP-7947](https://issues.apache.org/jira/browse/HADOOP-7947) | Validate XMLs if a relevant tool is available, when using scripts |  Major | scripts | Harsh J | Kengo Seki |
| [HADOOP-6590](https://issues.apache.org/jira/browse/HADOOP-6590) | Add a username check for hadoop sub-commands |  Minor | scripts | Scott Chen | John Smith |
| [HDFS-9057](https://issues.apache.org/jira/browse/HDFS-9057) | allow/disallow snapshots via webhdfs |  Major | webhdfs | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7285](https://issues.apache.org/jira/browse/HDFS-7285) | Erasure Coding Support inside HDFS |  Major | . | Weihua Jiang | Zhe Zhang |
| [HDFS-6440](https://issues.apache.org/jira/browse/HDFS-6440) | Support more than 2 NameNodes |  Major | auto-failover, ha, namenode | Jesse Yates | Jesse Yates |
| [MAPREDUCE-4887](https://issues.apache.org/jira/browse/MAPREDUCE-4887) | Rehashing partitioner for better distribution |  Major | . | Radim Kolar | Radim Kolar |
| [YARN-2882](https://issues.apache.org/jira/browse/YARN-2882) | Add an OPPORTUNISTIC ExecutionType |  Major | nodemanager | Konstantinos Karanasos | Konstantinos Karanasos |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12541](https://issues.apache.org/jira/browse/HADOOP-12541) | make re2j dependency consistent |  Major | build | Allen Wittenauer | Matthew Paduano |
| [HADOOP-12436](https://issues.apache.org/jira/browse/HADOOP-12436) | GlobPattern regex library has performance issues with wildcard characters |  Major | fs | Matthew Paduano | Matthew Paduano |
| [HADOOP-12385](https://issues.apache.org/jira/browse/HADOOP-12385) | include nested stack trace in SaslRpcClient.getServerToken() |  Minor | security | Steve Loughran | Steve Loughran |
| [HADOOP-12249](https://issues.apache.org/jira/browse/HADOOP-12249) | pull argument parsing into a function |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12149](https://issues.apache.org/jira/browse/HADOOP-12149) | copy all of test-patch BINDIR prior to re-exec |  Blocker | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12133](https://issues.apache.org/jira/browse/HADOOP-12133) | Add schemas to Maven Assembly XMLs |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HADOOP-12050](https://issues.apache.org/jira/browse/HADOOP-12050) | Enable MaxInactiveInterval for hadoop http auth token |  Major | security | Benoy Antony | hzlu |
| [HADOOP-12049](https://issues.apache.org/jira/browse/HADOOP-12049) | Control http authentication cookie persistence via configuration |  Major | security | Benoy Antony | hzlu |
| [HADOOP-12009](https://issues.apache.org/jira/browse/HADOOP-12009) | Clarify FileSystem.listStatus() sorting order & fix FileSystemContractBaseTest:testListStatus |  Minor | test | Jakob Homan | J.Andreina |
| [HADOOP-11857](https://issues.apache.org/jira/browse/HADOOP-11857) | Fix CommandFormat#commandFormat java doc annotation |  Trivial | . | Xiaoyu Yao | J.Andreina |
| [HADOOP-11673](https://issues.apache.org/jira/browse/HADOOP-11673) | Use org.junit.Assume to skip tests instead of return |  Minor | test | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11596](https://issues.apache.org/jira/browse/HADOOP-11596) | Allow smart-apply-patch.sh to add new files in binary git patches |  Major | . | Ravi Prakash | Ravi Prakash |
| [HADOOP-11593](https://issues.apache.org/jira/browse/HADOOP-11593) | Convert site documentation from apt to markdown (stragglers) |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11590](https://issues.apache.org/jira/browse/HADOOP-11590) | Update sbin commands and documentation to use new --slaves option |  Blocker | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11575](https://issues.apache.org/jira/browse/HADOOP-11575) | Daemon log documentation is misleading |  Major | documentation | Jagadesh Kiran N | Naganarasimha G R |
| [HADOOP-11524](https://issues.apache.org/jira/browse/HADOOP-11524) | hadoop\_do\_classpath\_subcommand throws a shellcheck warning |  Minor | scripts | Allen Wittenauer | Chris Nauroth |
| [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | Deprecate shell vars |  Major | scripts | Allen Wittenauer | John Smith |
| [HADOOP-11352](https://issues.apache.org/jira/browse/HADOOP-11352) | Clean up test-patch.sh to disable "+1 contrib tests" |  Major | build | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-11346](https://issues.apache.org/jira/browse/HADOOP-11346) | Rewrite sls/rumen to use new shell framework |  Major | scripts, tools | Allen Wittenauer | John Smith |
| [HADOOP-11208](https://issues.apache.org/jira/browse/HADOOP-11208) | Replace "daemon" with better name in script subcommands |  Major | scripts | Yongjun Zhang | Allen Wittenauer |
| [HADOOP-11203](https://issues.apache.org/jira/browse/HADOOP-11203) | Allow ditscp to accept bandwitdh in fraction MegaBytes |  Major | tools/distcp | Raju Bairishetti | Raju Bairishetti |
| [HADOOP-11150](https://issues.apache.org/jira/browse/HADOOP-11150) | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME |  Minor | scripts | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11142](https://issues.apache.org/jira/browse/HADOOP-11142) | Remove hdfs dfs reference from file system shell documentation |  Minor | documentation | Jonathan Allen | Kengo Seki |
| [HADOOP-11092](https://issues.apache.org/jira/browse/HADOOP-11092) | hadoop shell commands should print usage if not given a class |  Major | scripts | Bruno Mahé | Allen Wittenauer |
| [HADOOP-11081](https://issues.apache.org/jira/browse/HADOOP-11081) | Document hadoop properties expected to be set by the shell code in \*-env.sh |  Major | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11058](https://issues.apache.org/jira/browse/HADOOP-11058) | Missing HADOOP\_CONF\_DIR generates strange results |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11025](https://issues.apache.org/jira/browse/HADOOP-11025) | hadoop-daemons.sh should just call hdfs directly |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-10993](https://issues.apache.org/jira/browse/HADOOP-10993) | Dump java command line to \*.out file |  Minor | . | Allen Wittenauer | Kengo Seki |
| [HADOOP-10979](https://issues.apache.org/jira/browse/HADOOP-10979) | Auto-entries in hadoop\_usage |  Minor | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10926](https://issues.apache.org/jira/browse/HADOOP-10926) | Improve smart-apply-patch.sh to apply binary diffs |  Major | . | Andrew Wang | Colin Patrick McCabe |
| [HADOOP-10834](https://issues.apache.org/jira/browse/HADOOP-10834) | Typo in CredentialShell usage |  Minor | security | Benoy Antony | Benoy Antony |
| [HADOOP-10485](https://issues.apache.org/jira/browse/HADOOP-10485) | Remove dead classes in hadoop-streaming |  Major | tools | Haohui Mai | Haohui Mai |
| [HADOOP-10044](https://issues.apache.org/jira/browse/HADOOP-10044) | Improve the javadoc of rpc code |  Minor | . | Sanjay Radia | Sanjay Radia |
| [HADOOP-9394](https://issues.apache.org/jira/browse/HADOOP-9394) | Port findHangingTest.sh from HBase to Hadoop |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-9277](https://issues.apache.org/jira/browse/HADOOP-9277) | Improve javadoc for FileContext |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-9121](https://issues.apache.org/jira/browse/HADOOP-9121) | InodeTree.java has redundant check for vName while throwing exception |  Trivial | fs | Arup Malakar | Arup Malakar |
| [HADOOP-9075](https://issues.apache.org/jira/browse/HADOOP-9075) | FileContext#FSLinkResolver should be made static |  Minor | . | Suresh Srinivas | Arpit Agarwal |
| [HADOOP-8920](https://issues.apache.org/jira/browse/HADOOP-8920) | Add more javadoc to metrics2 related classes |  Minor | metrics | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8864](https://issues.apache.org/jira/browse/HADOOP-8864) | Addendum to HADOOP-8840: Add a coloring case for +0 results too. |  Trivial | . | Harsh J | Harsh J |
| [HADOOP-8838](https://issues.apache.org/jira/browse/HADOOP-8838) | Colorize the test-patch output sent to JIRA |  Trivial | build | Harsh J | Harsh J |
| [HADOOP-8813](https://issues.apache.org/jira/browse/HADOOP-8813) | RPC Server and Client classes need InterfaceAudience and InterfaceStability annotations |  Trivial | ipc | Brandon Li | Brandon Li |
| [HADOOP-8776](https://issues.apache.org/jira/browse/HADOOP-8776) | Provide an option in test-patch that can enable / disable compiling native code |  Minor | build | Hemanth Yamijala | Chris Nauroth |
| [HADOOP-8719](https://issues.apache.org/jira/browse/HADOOP-8719) | Workaround for kerberos-related log errors upon running any hadoop command on OSX |  Trivial | scripts | Jianbin Wei | Jianbin Wei |
| [HADOOP-8593](https://issues.apache.org/jira/browse/HADOOP-8593) | add  the missed @Override to methods in Metric/Metric2 package |  Minor | metrics | Brandon Li | Brandon Li |
| [HADOOP-8588](https://issues.apache.org/jira/browse/HADOOP-8588) | SerializationFactory shouldn't throw a NullPointerException if the serializations list is empty |  Minor | io | Harsh J | Sho Shimauchi |
| [HADOOP-8523](https://issues.apache.org/jira/browse/HADOOP-8523) | test-patch.sh doesn't validate patches before building |  Minor | build | Jack Dintruff | Jack Dintruff |
| [HADOOP-8521](https://issues.apache.org/jira/browse/HADOOP-8521) | Port StreamInputFormat to new Map Reduce API |  Major | . | madhukara phatak | madhukara phatak |
| [HADOOP-8375](https://issues.apache.org/jira/browse/HADOOP-8375) | test-patch should stop immediately once it has found compilation errors |  Major | build | Tsz Wo Nicholas Sze | Robert Joseph Evans |
| [HADOOP-8312](https://issues.apache.org/jira/browse/HADOOP-8312) | testpatch.sh should provide a simpler way to see which warnings changed |  Major | scripts | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8297](https://issues.apache.org/jira/browse/HADOOP-8297) | Writable javadocs don't carry default constructor |  Trivial | documentation | Harsh J | Harsh J |
| [HADOOP-8290](https://issues.apache.org/jira/browse/HADOOP-8290) | Remove two remaining references to "hadoop.native.lib" oldprop |  Trivial | test | Harsh J | Harsh J |
| [HADOOP-8147](https://issues.apache.org/jira/browse/HADOOP-8147) | test-patch should run tests with -fn to avoid masking test failures |  Major | test | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8078](https://issues.apache.org/jira/browse/HADOOP-8078) | Add capability to turn on security in unit tests. |  Major | test | Jitendra Nath Pandey | Jaimin D Jetly |
| [HADOOP-8017](https://issues.apache.org/jira/browse/HADOOP-8017) | Configure hadoop-main pom to get rid of M2E plugin execution not covered |  Major | build | Eric Charles | Eric Charles |
| [HADOOP-7930](https://issues.apache.org/jira/browse/HADOOP-7930) | Kerberos relogin interval in UserGroupInformation should be configurable |  Major | security | Alejandro Abdelnur | Robert Kanter |
| [HADOOP-7659](https://issues.apache.org/jira/browse/HADOOP-7659) | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems |  Minor | fs | Harsh J | Harsh J |
| [HADOOP-6964](https://issues.apache.org/jira/browse/HADOOP-6964) | Allow compact property description in xml |  Major | conf | Owen O'Malley | Kengo Seki |
| [HADOOP-6616](https://issues.apache.org/jira/browse/HADOOP-6616) | Improve documentation for rack awareness |  Major | documentation | Jeff Hammerbacher | Adam Faris |
| [HADOOP-5323](https://issues.apache.org/jira/browse/HADOOP-5323) | Trash documentation should describe its directory structure and configurations |  Minor | documentation | Suman Sehgal | Weiwei Yang |
| [HDFS-9582](https://issues.apache.org/jira/browse/HDFS-9582) | TestLeaseRecoveryStriped file missing Apache License header and not well formatted |  Minor | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-9491](https://issues.apache.org/jira/browse/HDFS-9491) | Tests should get the number of pending async delets via FsDatasetTestUtils |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9490](https://issues.apache.org/jira/browse/HDFS-9490) | MiniDFSCluster should change block generation stamp via FsDatasetTestUtils |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9363](https://issues.apache.org/jira/browse/HDFS-9363) | Add fetchReplica() to FsDatasetTestUtils to return FsDataset-agnostic Replica. |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9331](https://issues.apache.org/jira/browse/HDFS-9331) | Modify TestNameNodeMXBean#testNameNodeMXBeanInfo() to account for filesystem entirely allocated for DFS use |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9323](https://issues.apache.org/jira/browse/HDFS-9323) | Randomize the DFSStripedOutputStreamWithFailure tests |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-9312](https://issues.apache.org/jira/browse/HDFS-9312) | Fix TestReplication to be FsDataset-agnostic. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9308](https://issues.apache.org/jira/browse/HDFS-9308) | Add truncateMeta() and deleteMeta() to MiniDFSCluster |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9297](https://issues.apache.org/jira/browse/HDFS-9297) | Update TestBlockMissingException to use corruptBlockOnDataNodesByDeletingBlockFile() |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9292](https://issues.apache.org/jira/browse/HDFS-9292) | Make TestFileConcorruption independent to underlying FsDataset Implementation. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9291](https://issues.apache.org/jira/browse/HDFS-9291) | Fix TestInterDatanodeProtocol to be FsDataset-agnostic. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9282](https://issues.apache.org/jira/browse/HDFS-9282) | Make data directory count and storage raw capacity related tests FsDataset-agnostic |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9281](https://issues.apache.org/jira/browse/HDFS-9281) | Change TestDeleteBlockPool to not explicitly use File to check block pool existence. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9264](https://issues.apache.org/jira/browse/HDFS-9264) | Minor cleanup of operations on FsVolumeList#volumes |  Minor | . | Walter Su | Walter Su |
| [HDFS-9251](https://issues.apache.org/jira/browse/HDFS-9251) | Refactor TestWriteToReplica and TestFsDatasetImpl to avoid explicitly creating Files in tests code. |  Major | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9238](https://issues.apache.org/jira/browse/HDFS-9238) | Update TestFileCreation#testLeaseExpireHardLimit() to avoid using DataNodeTestUtils#getFile() |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9221](https://issues.apache.org/jira/browse/HDFS-9221) | HdfsServerConstants#ReplicaState#getState should avoid calling values() since it creates a temporary array |  Major | performance | Staffan Friberg | Staffan Friberg |
| [HDFS-9188](https://issues.apache.org/jira/browse/HDFS-9188) | Make block corruption related tests FsDataset-agnostic. |  Major | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9148](https://issues.apache.org/jira/browse/HDFS-9148) | Incorrect assert message in TestWriteToReplica#testWriteToTemporary |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9132](https://issues.apache.org/jira/browse/HDFS-9132) | Pass genstamp to ReplicaAccessorBuilder |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8924](https://issues.apache.org/jira/browse/HDFS-8924) | Add pluggable interface for reading replicas in DFSClient |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8865](https://issues.apache.org/jira/browse/HDFS-8865) | Improve quota initialization performance |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | Rewrite httpfs to use new shell framework |  Major | scripts | Allen Wittenauer | John Smith |
| [HDFS-7322](https://issues.apache.org/jira/browse/HDFS-7322) | deprecate sbin/hadoop-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HDFS-6228](https://issues.apache.org/jira/browse/HDFS-6228) | comments typo fix for FsDatasetImpl.java |  Trivial | . | zhaoyunjiong | zhaoyunjiong |
| [HDFS-5041](https://issues.apache.org/jira/browse/HDFS-5041) | Add the time of last heartbeat to dead server Web UI |  Minor | . | Ted Yu | Ted Yu |
| [HDFS-5033](https://issues.apache.org/jira/browse/HDFS-5033) | Bad error message for fs -put/copyFromLocal if user doesn't have permissions to read the source |  Minor | . | Karthik Kambatla | Darrell Taylor |
| [HDFS-4665](https://issues.apache.org/jira/browse/HDFS-4665) | Move TestNetworkTopologyWithNodeGroup to Common |  Minor | test | Luke Lu | Junping Du |
| [HDFS-3995](https://issues.apache.org/jira/browse/HDFS-3995) | Use DFSTestUtil.createFile() for file creation and writing in test cases |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-3834](https://issues.apache.org/jira/browse/HDFS-3834) | Unused Command.java fields NAME, DESCRIPTION and USAGE |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-3768](https://issues.apache.org/jira/browse/HDFS-3768) | Exception in TestJettyHelper is incorrect |  Minor | . | Jakob Homan | Eli Reisman |
| [HDFS-3478](https://issues.apache.org/jira/browse/HDFS-3478) | Test quotas with Long.Max\_Value |  Minor | namenode | Sujay Rau | Sujay Rau |
| [HDFS-3476](https://issues.apache.org/jira/browse/HDFS-3476) | Correct the default used in TestDFSClientRetries.busyTest() after HDFS-3462 |  Minor | test | Harsh J | Harsh J |
| [HDFS-3358](https://issues.apache.org/jira/browse/HDFS-3358) | Specify explicitly that the NN UI status total is talking of persistent objects on heap. |  Trivial | namenode | Harsh J | Harsh J |
| [HDFS-3293](https://issues.apache.org/jira/browse/HDFS-3293) | Implement equals for journainfo class. |  Minor | namenode | Hari Mankude | Hari Mankude |
| [HDFS-2743](https://issues.apache.org/jira/browse/HDFS-2743) | Streamline usage of bookkeeper journal manager |  Major | . | Ivan Kelly | Ivan Kelly |
| [HDFS-2580](https://issues.apache.org/jira/browse/HDFS-2580) | NameNode#main(...) can make use of GenericOptionsParser. |  Minor | namenode | Harsh J | Harsh J |
| [MAPREDUCE-6260](https://issues.apache.org/jira/browse/MAPREDUCE-6260) | Convert site documentation to markdown |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [MAPREDUCE-6250](https://issues.apache.org/jira/browse/MAPREDUCE-6250) | deprecate sbin/mr-jobhistory-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [MAPREDUCE-6057](https://issues.apache.org/jira/browse/MAPREDUCE-6057) | Remove obsolete entries from mapred-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6013](https://issues.apache.org/jira/browse/MAPREDUCE-6013) | mapred version is missing |  Major | scripts | Allen Wittenauer | Akira AJISAKA |
| [MAPREDUCE-5197](https://issues.apache.org/jira/browse/MAPREDUCE-5197) | Checkpoint Service: a library component to facilitate checkpoint of task state |  Major | mrv2 | Carlo Curino | Carlo Curino |
| [MAPREDUCE-5196](https://issues.apache.org/jira/browse/MAPREDUCE-5196) | CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing |  Major | mr-am, mrv2 | Carlo Curino | Carlo Curino |
| [MAPREDUCE-4735](https://issues.apache.org/jira/browse/MAPREDUCE-4735) | Make arguments in TestDFSIO case insensitive |  Trivial | test | Robert Kanter | Brandon Li |
| [MAPREDUCE-4686](https://issues.apache.org/jira/browse/MAPREDUCE-4686) | hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes |  Major | build | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-4371](https://issues.apache.org/jira/browse/MAPREDUCE-4371) | Check for cyclic dependencies in Jobcontrol job DAG |  Major | mrv1 | madhukara phatak | madhukara phatak |
| [MAPREDUCE-3956](https://issues.apache.org/jira/browse/MAPREDUCE-3956) | Remove the use of the deprecated Syncable.sync() method |  Minor | examples | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-3302](https://issues.apache.org/jira/browse/MAPREDUCE-3302) | Remove the last dependency call from org.apache.hadoop.record package in MR. |  Minor | client | Harsh J | Harsh J |
| [MAPREDUCE-2944](https://issues.apache.org/jira/browse/MAPREDUCE-2944) | Improve checking of input for Api displayTasks() |  Trivial | client | XieXianshan | XieXianshan |
| [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | Task level native optimization |  Major | task | Binglin Chang | Sean Zhong |
| [MAPREDUCE-2384](https://issues.apache.org/jira/browse/MAPREDUCE-2384) | The job submitter should make sure to validate jobs before creation of necessary files |  Major | job submission, test | Denny Ye | Harsh J |
| [YARN-3978](https://issues.apache.org/jira/browse/YARN-3978) | Configurably turn off the saving of container info in Generic AHS |  Major | timelineserver, yarn | Eric Payne | Eric Payne |
| [YARN-3360](https://issues.apache.org/jira/browse/YARN-3360) | Add JMX metrics to TimelineDataManager |  Major | timelineserver | Jason Lowe | Jason Lowe |
| [YARN-3261](https://issues.apache.org/jira/browse/YARN-3261) | rewrite resourcemanager restart doc to remove roadmap bits |  Major | documentation | Allen Wittenauer | Gururaj Shetty |
| [YARN-3199](https://issues.apache.org/jira/browse/YARN-3199) | Fair Scheduler documentation improvements |  Minor | fairscheduler | Rohit Agarwal | Rohit Agarwal |
| [YARN-3168](https://issues.apache.org/jira/browse/YARN-3168) | Convert site documentation from apt to markdown |  Major | documentation | Allen Wittenauer | Gururaj Shetty |
| [YARN-2796](https://issues.apache.org/jira/browse/YARN-2796) | deprecate sbin/yarn-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2472](https://issues.apache.org/jira/browse/YARN-2472) | yarn-daemons.sh should just call yarn directly |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [YARN-2438](https://issues.apache.org/jira/browse/YARN-2438) | yarn-env.sh cleanup |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2437](https://issues.apache.org/jira/browse/YARN-2437) | start-yarn.sh/stop-yarn should give info |  Major | scripts | Allen Wittenauer | Varun Saxena |
| [YARN-2280](https://issues.apache.org/jira/browse/YARN-2280) | Resource manager web service fields are not accessible |  Trivial | resourcemanager | Krisztian Horvath | Krisztian Horvath |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12647](https://issues.apache.org/jira/browse/HADOOP-12647) | Add /usr/lib default for ISAL library and fix missing .c file in CMakeLists |  Major | . | Kai Zheng | Kai Zheng |
| [HADOOP-12638](https://issues.apache.org/jira/browse/HADOOP-12638) | UnsatisfiedLinkError while checking ISA-L in checknative command. |  Minor | native | Kai Sasaki | Kai Sasaki |
| [HADOOP-12618](https://issues.apache.org/jira/browse/HADOOP-12618) | NPE in TestSequenceFile |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-12615](https://issues.apache.org/jira/browse/HADOOP-12615) | Fix NPE in MiniKMS.start() |  Minor | kms, test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-12553](https://issues.apache.org/jira/browse/HADOOP-12553) | [JDK8] Fix javadoc error caused by illegal tag |  Blocker | build, documentation | Akira AJISAKA | Akira AJISAKA |
| [HADOOP-12515](https://issues.apache.org/jira/browse/HADOOP-12515) | Mockito dependency is missing in hadoop-kafka module |  Major | test | Kai Zheng | Kai Zheng |
| [HADOOP-12494](https://issues.apache.org/jira/browse/HADOOP-12494) | fetchdt stores the token based on token kind instead of token service |  Major | . | HeeSoo Kim | HeeSoo Kim |
| [HADOOP-12493](https://issues.apache.org/jira/browse/HADOOP-12493) | bash unit tests are failing |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12482](https://issues.apache.org/jira/browse/HADOOP-12482) | Race condition in JMX cache update |  Major | . | Tony Wu | Tony Wu |
| [HADOOP-12464](https://issues.apache.org/jira/browse/HADOOP-12464) | Interrupted client may try to fail-over and retry |  Major | ipc | Kihwal Lee | Kihwal Lee |
| [HADOOP-12418](https://issues.apache.org/jira/browse/HADOOP-12418) | TestRPC.testRPCInterruptedSimple fails intermittently |  Major | test | Steve Loughran | Kihwal Lee |
| [HADOOP-12364](https://issues.apache.org/jira/browse/HADOOP-12364) | Deleting pid file after stop is causing the daemons to keep restarting |  Minor | . | Siqi Li | Siqi Li |
| [HADOOP-12346](https://issues.apache.org/jira/browse/HADOOP-12346) | Increase some default timeouts / retries for S3a connector |  Major | fs/s3 | Sean Mackrory | Sean Mackrory |
| [HADOOP-12192](https://issues.apache.org/jira/browse/HADOOP-12192) | update releasedocmaker commands |  Blocker | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12164](https://issues.apache.org/jira/browse/HADOOP-12164) | Fix TestMove and TestFsShellReturnCode failed to get command name using reflection. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-12022](https://issues.apache.org/jira/browse/HADOOP-12022) | fix site -Pdocs -Pdist in hadoop-project-dist; cleanout remaining forrest bits |  Blocker | build | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12016](https://issues.apache.org/jira/browse/HADOOP-12016) | Typo in FileSystem:: listStatusIterator |  Trivial | fs | Jakob Homan | Arthur Vigil |
| [HADOOP-11983](https://issues.apache.org/jira/browse/HADOOP-11983) | HADOOP\_USER\_CLASSPATH\_FIRST works the opposite of what it is supposed to do |  Major | scripts | Sangjin Lee | Sangjin Lee |
| [HADOOP-11958](https://issues.apache.org/jira/browse/HADOOP-11958) | MetricsSystemImpl fails to show backtrace when an error occurs |  Major | . | Jason Lowe | Jason Lowe |
| [HADOOP-11865](https://issues.apache.org/jira/browse/HADOOP-11865) | Incorrect path mentioned in document for accessing script files |  Major | documentation | J.Andreina | J.Andreina |
| [HADOOP-11775](https://issues.apache.org/jira/browse/HADOOP-11775) | Fix Javadoc typos in hadoop-openstack module |  Trivial | documentation | Chen He | Yanjun Wang |
| [HADOOP-11762](https://issues.apache.org/jira/browse/HADOOP-11762) | Enable swift distcp to secure HDFS |  Major | fs/swift | Chen He | Chen He |
| [HADOOP-11703](https://issues.apache.org/jira/browse/HADOOP-11703) | git should ignore .DS\_Store files on Mac OS X |  Major | . | Abin Shahab | Abin Shahab |
| [HADOOP-11668](https://issues.apache.org/jira/browse/HADOOP-11668) | hadoop-daemons.sh bw compat broke with --slaves change |  Major | scripts | Vinayakumar B | Vinayakumar B |
| [HADOOP-11653](https://issues.apache.org/jira/browse/HADOOP-11653) | shellprofiles should require .sh extension |  Major | scripts | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11637](https://issues.apache.org/jira/browse/HADOOP-11637) | bash location hard-coded in shell scripts |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11625](https://issues.apache.org/jira/browse/HADOOP-11625) | Minor fixes to command manual & SLA doc |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11585](https://issues.apache.org/jira/browse/HADOOP-11585) | Fix formatting in Tracing.md |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11583](https://issues.apache.org/jira/browse/HADOOP-11583) | Fix syntax error in SecureMode.md |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11580](https://issues.apache.org/jira/browse/HADOOP-11580) | Remove SingleNodeSetup.md from trunk |  Major | documentation | Allen Wittenauer | Akira AJISAKA |
| [HADOOP-11559](https://issues.apache.org/jira/browse/HADOOP-11559) | Add links to RackAwareness and InterfaceClassification to site index |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11484](https://issues.apache.org/jira/browse/HADOOP-11484) | hadoop-mapreduce-client-nativetask fails to build on ARM AARCH64 due to x86 asm statements |  Minor | native | Edward Nevill | Edward Nevill |
| [HADOOP-11473](https://issues.apache.org/jira/browse/HADOOP-11473) | test-patch says "-1 overall" even when all checks are +1 |  Major | build | Jason Lowe | Jason Lowe |
| [HADOOP-11437](https://issues.apache.org/jira/browse/HADOOP-11437) | Remove the version and author information from distcp's README file |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11406](https://issues.apache.org/jira/browse/HADOOP-11406) | xargs -P is not portable |  Critical | scripts | Allen Wittenauer | Kengo Seki |
| [HADOOP-11397](https://issues.apache.org/jira/browse/HADOOP-11397) | Can't override HADOOP\_IDENT\_STRING |  Trivial | . | Allen Wittenauer | Kengo Seki |
| [HADOOP-11380](https://issues.apache.org/jira/browse/HADOOP-11380) | Restore Rack Awareness documentation |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11347](https://issues.apache.org/jira/browse/HADOOP-11347) | RawLocalFileSystem#mkdir and create should honor umask |  Major | fs | Chris Nauroth | Varun Saxena |
| [HADOOP-11298](https://issues.apache.org/jira/browse/HADOOP-11298) | slaves.sh and stop-all.sh are missing slashes |  Trivial | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11296](https://issues.apache.org/jira/browse/HADOOP-11296) | hadoop-daemons.sh throws 'host1: bash: host3: command not found...' |  Major | scripts | Vinayakumar B | Vinayakumar B |
| [HADOOP-11284](https://issues.apache.org/jira/browse/HADOOP-11284) | Fix variable name mismatches in hadoop-functions.sh |  Minor | scripts | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11240](https://issues.apache.org/jira/browse/HADOOP-11240) | Jenkins build seems to be broken by changes in test-patch.sh |  Blocker | . | Zhijie Shen | Steve Loughran |
| [HADOOP-11055](https://issues.apache.org/jira/browse/HADOOP-11055) | non-daemon pid files are missing |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11052](https://issues.apache.org/jira/browse/HADOOP-11052) | hadoop\_verify\_secure\_prereq's results aren't checked in bin/hdfs |  Critical | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11033](https://issues.apache.org/jira/browse/HADOOP-11033) | shell scripts ignore JAVA\_HOME on OS X |  Major | scripts | Lei (Eddy) Xu | Allen Wittenauer |
| [HADOOP-11022](https://issues.apache.org/jira/browse/HADOOP-11022) | User replaced functions get lost 2-3 levels deep (e.g., sbin) |  Critical | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11002](https://issues.apache.org/jira/browse/HADOOP-11002) | shell escapes are incompatible with previous releases |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10996](https://issues.apache.org/jira/browse/HADOOP-10996) | Stop violence in the \*\_HOME |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10908](https://issues.apache.org/jira/browse/HADOOP-10908) | Common needs updates for shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10831](https://issues.apache.org/jira/browse/HADOOP-10831) | UserProvider is not thread safe |  Major | security | Benoy Antony | Benoy Antony |
| [HADOOP-10774](https://issues.apache.org/jira/browse/HADOOP-10774) | Update KerberosTestUtils for hadoop-auth tests when using IBM Java |  Major | security | sangamesh | sangamesh |
| [HADOOP-10365](https://issues.apache.org/jira/browse/HADOOP-10365) | BufferedOutputStream in FileUtil#unpackEntries() should be closed in finally block |  Minor | util | Ted Yu | Kiran Kumar M R |
| [HADOOP-10325](https://issues.apache.org/jira/browse/HADOOP-10325) | improve jenkins javadoc warnings from test-patch.sh |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-9905](https://issues.apache.org/jira/browse/HADOOP-9905) | remove dependency of zookeeper for hadoop-client |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-9692](https://issues.apache.org/jira/browse/HADOOP-9692) | Improving log message when SequenceFile reader throws EOFException on zero-length file |  Major | . | Chu Tong | Zhe Zhang |
| [HADOOP-9583](https://issues.apache.org/jira/browse/HADOOP-9583) | test-patch gives +1 despite build failure when running tests |  Critical | . | Jason Lowe | Jason Lowe |
| [HADOOP-9433](https://issues.apache.org/jira/browse/HADOOP-9433) | TestLocalFileSystem#testHasFileDescriptor leaks file handle |  Major | fs, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9431](https://issues.apache.org/jira/browse/HADOOP-9431) | TestSecurityUtil#testLocalHostNameForNullOrWild on systems where hostname contains capital letters |  Trivial | security, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9393](https://issues.apache.org/jira/browse/HADOOP-9393) | TestRPC fails with JDK7 |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-9265](https://issues.apache.org/jira/browse/HADOOP-9265) | S3 blockstore filesystem breaks part of the Filesystem contract |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-9261](https://issues.apache.org/jira/browse/HADOOP-9261) | S3n filesystem can move a directory under itself -and so lose data |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-9249](https://issues.apache.org/jira/browse/HADOOP-9249) | hadoop-maven-plugins version-info goal causes build failure when running with Clover |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-9202](https://issues.apache.org/jira/browse/HADOOP-9202) | test-patch.sh fails during mvn eclipse:eclipse if patch adds a new module to the build |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-9186](https://issues.apache.org/jira/browse/HADOOP-9186) | test-patch.sh should report build failure to JIRA |  Major | . | Binglin Chang | Binglin Chang |
| [HADOOP-9139](https://issues.apache.org/jira/browse/HADOOP-9139) | improve script hadoop-common-project/hadoop-common/src/test/resources/kdc/killKdc.sh |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9037](https://issues.apache.org/jira/browse/HADOOP-9037) | Bug in test-patch.sh and precommit build process |  Critical | build | Kihwal Lee | Kihwal Lee |
| [HADOOP-8974](https://issues.apache.org/jira/browse/HADOOP-8974) | TestDFVariations fails on Windows |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-8918](https://issues.apache.org/jira/browse/HADOOP-8918) | dev-support/test-patch.sh is parsing modified files wrong |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8910](https://issues.apache.org/jira/browse/HADOOP-8910) | Add examples to GlobExpander#expand method |  Minor | fs | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8840](https://issues.apache.org/jira/browse/HADOOP-8840) | Fix the test-patch colorizer to cover all sorts of +1 lines. |  Major | build | Harsh J | Harsh J |
| [HADOOP-8839](https://issues.apache.org/jira/browse/HADOOP-8839) | test-patch's -1 on @author tag presence doesn't cause a -1 to the overall result |  Trivial | build | Harsh J | Harsh J |
| [HADOOP-8821](https://issues.apache.org/jira/browse/HADOOP-8821) | Findbugs warning Configuration.dumpDeprecatedKeys() concatenates strings using + in a loop |  Trivial | . | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8818](https://issues.apache.org/jira/browse/HADOOP-8818) | Should use equals() rather than == to compare String or Text in MD5MD5CRC32FileChecksum and TFileDumper |  Minor | fs, io | Brandon Li | Brandon Li |
| [HADOOP-8584](https://issues.apache.org/jira/browse/HADOOP-8584) | test-patch.sh should not immediately exit when no tests are added or modified |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8548](https://issues.apache.org/jira/browse/HADOOP-8548) | test-patch.sh shows an incorrect link in Jekins builds |  Major | build | Kihwal Lee | Kihwal Lee |
| [HADOOP-8413](https://issues.apache.org/jira/browse/HADOOP-8413) | test-patch.sh gives out the wrong links for newPatchFindbugsWarnings |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HADOOP-8395](https://issues.apache.org/jira/browse/HADOOP-8395) | Text shell command unnecessarily demands that a SequenceFile's key class be WritableComparable |  Trivial | util | Harsh J | Harsh J |
| [HADOOP-8360](https://issues.apache.org/jira/browse/HADOOP-8360) | empty-configuration.xml fails xml validation |  Minor | test | Radim Kolar | Radim Kolar |
| [HADOOP-8354](https://issues.apache.org/jira/browse/HADOOP-8354) | test-patch findbugs may fail if a dependent module is changed |  Major | build | Tom White | Robert Joseph Evans |
| [HADOOP-8339](https://issues.apache.org/jira/browse/HADOOP-8339) | jenkins complaining about 16 javadoc warnings |  Major | build | Thomas Graves | Robert Joseph Evans |
| [HADOOP-8177](https://issues.apache.org/jira/browse/HADOOP-8177) | MBeans shouldn't try to register when it fails to create MBeanName |  Minor | metrics | Devaraj K | Devaraj K |
| [HADOOP-8151](https://issues.apache.org/jira/browse/HADOOP-8151) | Error handling in snappy decompressor throws invalid exceptions |  Major | io, native | Todd Lipcon | Matt Foley |
| [HADOOP-7769](https://issues.apache.org/jira/browse/HADOOP-7769) | TestJMXJsonServlet is failing |  Major | . | Tom White | Tom White |
| [HADOOP-7757](https://issues.apache.org/jira/browse/HADOOP-7757) | Test file reference count is at least 3x actual value |  Major | build | Jonathan Eagles | Jonathan Eagles |
| [HADOOP-7256](https://issues.apache.org/jira/browse/HADOOP-7256) | Resource leak during failure scenario of closing of resources. |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HADOOP-6871](https://issues.apache.org/jira/browse/HADOOP-6871) | When the value of a configuration key is set to its unresolved form, it causes the IllegalStateException in Configuration.get() stating that substitution depth is too large. |  Major | conf | Arvind Prabhakar | Arvind Prabhakar |
| [HADOOP-6220](https://issues.apache.org/jira/browse/HADOOP-6220) | HttpServer wraps InterruptedExceptions by IOExceptions if interrupted in startup |  Minor | util | Steve Loughran | Steve Loughran |
| [HDFS-9580](https://issues.apache.org/jira/browse/HDFS-9580) | TestComputeInvalidateWork#testDatanodeReRegistration failed due to unexpected number of invalidate blocks. |  Major | datanode, namenode, test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9570](https://issues.apache.org/jira/browse/HDFS-9570) | Minor typos, grammar, and case sensitivity cleanup in HdfsPermissionsGuide.md's |  Trivial | documentation | Travis Campbell | Travis Campbell |
| [HDFS-9533](https://issues.apache.org/jira/browse/HDFS-9533) | seen\_txid in the shared edits directory is modified during bootstrapping |  Major | ha, namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-9451](https://issues.apache.org/jira/browse/HDFS-9451) | Clean up depreated umasks and related unit tests |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9445](https://issues.apache.org/jira/browse/HDFS-9445) | Datanode may deadlock while handling a bad volume |  Blocker | . | Kihwal Lee | Walter Su |
| [HDFS-9423](https://issues.apache.org/jira/browse/HDFS-9423) | Fix intermittent failure of TestEditLogTailer |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-9396](https://issues.apache.org/jira/browse/HDFS-9396) | Total files and directories on jmx and web UI on standby is uninitialized |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-9383](https://issues.apache.org/jira/browse/HDFS-9383) | TestByteArrayManager#testByteArrayManager fails |  Major | . | Kihwal Lee | Tsz Wo Nicholas Sze |
| [HDFS-9376](https://issues.apache.org/jira/browse/HDFS-9376) | TestSeveralNameNodes fails occasionally |  Major | test | Kihwal Lee | Masatake Iwasaki |
| [HDFS-9318](https://issues.apache.org/jira/browse/HDFS-9318) | considerLoad factor can be improved |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [HDFS-9290](https://issues.apache.org/jira/browse/HDFS-9290) | DFSClient#callAppend() is not backward compatible for slightly older NameNodes |  Blocker | . | Tony Wu | Tony Wu |
| [HDFS-9289](https://issues.apache.org/jira/browse/HDFS-9289) | Make DataStreamer#block thread safe and verify genStamp in commitBlock |  Critical | . | Chang Li | Chang Li |
| [HDFS-9279](https://issues.apache.org/jira/browse/HDFS-9279) | Decomissioned capacity should not be considered for configured/used capacity |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [HDFS-9237](https://issues.apache.org/jira/browse/HDFS-9237) | NPE at TestDataNodeVolumeFailureToleration#tearDown |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-9220](https://issues.apache.org/jira/browse/HDFS-9220) | Reading small file (\< 512 bytes) that is open for append fails due to incorrect checksum |  Blocker | . | Bogdan Raducanu | Jing Zhao |
| [HDFS-9217](https://issues.apache.org/jira/browse/HDFS-9217) | Fix broken findbugsExcludeFile.xml for hadoop-hdfs-client module |  Critical | build | Mingliang Liu | Mingliang Liu |
| [HDFS-9204](https://issues.apache.org/jira/browse/HDFS-9204) | DatanodeDescriptor#PendingReplicationWithoutTargets is wrongly calculated |  Major | . | Jing Zhao | Mingliang Liu |
| [HDFS-9191](https://issues.apache.org/jira/browse/HDFS-9191) | Typo in  Hdfs.java.  NoSuchElementException is misspelled |  Trivial | documentation | Catherine Palmer | Catherine Palmer |
| [HDFS-9185](https://issues.apache.org/jira/browse/HDFS-9185) | Fix null tracer in ErasureCodingWorker |  Critical | erasure-coding | Rakesh R | Rakesh R |
| [HDFS-9182](https://issues.apache.org/jira/browse/HDFS-9182) | Cleanup the findbugs and other issues after HDFS EC merged to trunk. |  Critical | erasure-coding | Yi Liu | Uma Maheswara Rao G |
| [HDFS-9178](https://issues.apache.org/jira/browse/HDFS-9178) | Slow datanode I/O can cause a wrong node to be marked bad |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-9176](https://issues.apache.org/jira/browse/HDFS-9176) | TestDirectoryScanner#testThrottling often fails. |  Minor | test | Yi Liu | Daniel Templeton |
| [HDFS-9147](https://issues.apache.org/jira/browse/HDFS-9147) | Fix the setting of visibleLength in ExternalBlockReader |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-9133](https://issues.apache.org/jira/browse/HDFS-9133) | ExternalBlockReader and ReplicaAccessor need to return -1 on read when at EOF |  Major | hdfs-client | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8950](https://issues.apache.org/jira/browse/HDFS-8950) | NameNode refresh doesn't remove DataNodes that are no longer in the allowed list |  Major | datanode, namenode | Daniel Templeton | Daniel Templeton |
| [HDFS-8879](https://issues.apache.org/jira/browse/HDFS-8879) | Quota by storage type usage incorrectly initialized upon namenode restart |  Major | namenode | Kihwal Lee | Xiaoyu Yao |
| [HDFS-8850](https://issues.apache.org/jira/browse/HDFS-8850) | VolumeScanner thread exits with exception if there is no block pool to be scanned but there are suspicious blocks |  Major | datanode | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8800](https://issues.apache.org/jira/browse/HDFS-8800) | hdfs --daemon stop namenode corrupts logs |  Major | scripts | John Smith | John Smith |
| [HDFS-8716](https://issues.apache.org/jira/browse/HDFS-8716) | introduce a new config specifically for safe mode block count |  Major | . | Chang Li | Chang Li |
| [HDFS-8676](https://issues.apache.org/jira/browse/HDFS-8676) | Delayed rolling upgrade finalization can cause heartbeat expiration and write failures |  Critical | . | Kihwal Lee | Walter Su |
| [HDFS-8657](https://issues.apache.org/jira/browse/HDFS-8657) | Update docs for mSNN |  Minor | . | Jesse Yates | Jesse Yates |
| [HDFS-8656](https://issues.apache.org/jira/browse/HDFS-8656) | Preserve compatibility of ClientProtocol#rollingUpgrade after finalization |  Critical | rolling upgrades | Andrew Wang | Andrew Wang |
| [HDFS-8627](https://issues.apache.org/jira/browse/HDFS-8627) | NPE thrown if unable to fetch token from Namenode |  Major | . | J.Andreina | J.Andreina |
| [HDFS-8412](https://issues.apache.org/jira/browse/HDFS-8412) | Fix the test failures in HTTPFS: In some tests setReplication called after fs close. |  Major | fs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-8110](https://issues.apache.org/jira/browse/HDFS-8110) | Remove unsupported 'hdfs namenode -rollingUpgrade downgrade' from document |  Minor | documentation | J.Andreina | J.Andreina |
| [HDFS-7804](https://issues.apache.org/jira/browse/HDFS-7804) | haadmin command usage #HDFSHighAvailabilityWithQJM.html |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-7803](https://issues.apache.org/jira/browse/HDFS-7803) | Wrong command mentioned in HDFSHighAvailabilityWithQJM documentation |  Minor | documentation | Arshad Mohammad | Arshad Mohammad |
| [HDFS-7791](https://issues.apache.org/jira/browse/HDFS-7791) | dfs count -v should be added to quota documentation |  Major | documentation | Allen Wittenauer | Akira AJISAKA |
| [HDFS-7755](https://issues.apache.org/jira/browse/HDFS-7755) | httpfs shell code has hardcoded path to bash |  Major | scripts | Dmitry Sivachenko | Dmitry Sivachenko |
| [HDFS-7711](https://issues.apache.org/jira/browse/HDFS-7711) | Fix various typos in ClusterSetup.md |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-7673](https://issues.apache.org/jira/browse/HDFS-7673) | synthetic load generator docs give incorrect/incomplete commands |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7670](https://issues.apache.org/jira/browse/HDFS-7670) | HDFS Quota guide has typos, incomplete command lines |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7669](https://issues.apache.org/jira/browse/HDFS-7669) | HDFS Design Doc references commands that no longer exist. |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7667](https://issues.apache.org/jira/browse/HDFS-7667) | Various typos and improvements to HDFS Federation doc |  Minor | documentation | Charles Lamb | Charles Lamb |
| [HDFS-7581](https://issues.apache.org/jira/browse/HDFS-7581) | HDFS documentation needs updating post-shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7407](https://issues.apache.org/jira/browse/HDFS-7407) | Minor typo in privileged pid/out/log names |  Minor | . | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7320](https://issues.apache.org/jira/browse/HDFS-7320) | The appearance of hadoop-hdfs-httpfs site docs is inconsistent |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7319](https://issues.apache.org/jira/browse/HDFS-7319) | Remove dead link to HFTP documentation from index.xml |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7204](https://issues.apache.org/jira/browse/HDFS-7204) | balancer doesn't run as a daemon |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7163](https://issues.apache.org/jira/browse/HDFS-7163) | WebHdfsFileSystem should retry reads according to the configured retry policy. |  Major | webhdfs | Eric Payne | Eric Payne |
| [HDFS-6893](https://issues.apache.org/jira/browse/HDFS-6893) | crypto subcommand is not sorted properly in hdfs's hadoop\_usage |  Trivial | scripts | Allen Wittenauer | David Luo |
| [HDFS-6763](https://issues.apache.org/jira/browse/HDFS-6763) | Initialize file system-wide quota once on transitioning to active |  Major | ha, namenode | Daryn Sharp | Kihwal Lee |
| [HDFS-5794](https://issues.apache.org/jira/browse/HDFS-5794) | Fix the inconsistency of layout version number of ADD\_DATANODE\_AND\_STORAGE\_UUIDS between trunk and branch-2 |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4937](https://issues.apache.org/jira/browse/HDFS-4937) | ReplicationMonitor can infinite-loop in BlockPlacementPolicyDefault#chooseRandom() |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-4904](https://issues.apache.org/jira/browse/HDFS-4904) | Remove JournalService |  Major | namenode | Suresh Srinivas | Arpit Agarwal |
| [HDFS-4761](https://issues.apache.org/jira/browse/HDFS-4761) | Refresh INodeMap in FSDirectory#reset() |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4757](https://issues.apache.org/jira/browse/HDFS-4757) | Update FSDirectory#inodeMap when replacing an INodeDirectory while setting quota |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4681](https://issues.apache.org/jira/browse/HDFS-4681) | TestBlocksWithNotEnoughRacks#testCorruptBlockRereplicatedAcrossRacks fails using IBM java |  Major | test | Tian Hong Wang | Ayappan |
| [HDFS-4391](https://issues.apache.org/jira/browse/HDFS-4391) | TestDataTransferKeepalive fails when tests are executed in a certain order. |  Major | test | Konstantin Shvachko | Andrew Wang |
| [HDFS-4338](https://issues.apache.org/jira/browse/HDFS-4338) | TestNameNodeMetrics#testCorruptBlock is flaky |  Major | namenode | Andrew Wang | Andrew Wang |
| [HDFS-4310](https://issues.apache.org/jira/browse/HDFS-4310) | fix test org.apache.hadoop.hdfs.server.datanode.TestStartSecureDataNode |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HDFS-4275](https://issues.apache.org/jira/browse/HDFS-4275) | MiniDFSCluster-based tests fail on Windows due to failure to delete test namenode directory |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4115](https://issues.apache.org/jira/browse/HDFS-4115) | TestHDFSCLI.testAll fails one test due to number format |  Minor | test | Trevor Robinson | Trevor Robinson |
| [HDFS-4067](https://issues.apache.org/jira/browse/HDFS-4067) | TestUnderReplicatedBlocks may fail due to ReplicaAlreadyExistsException |  Major | . | Eli Collins | Jing Zhao |
| [HDFS-4003](https://issues.apache.org/jira/browse/HDFS-4003) | test-patch should build the common native libs before running hdfs tests |  Major | build | Eli Collins | Colin Patrick McCabe |
| [HDFS-3750](https://issues.apache.org/jira/browse/HDFS-3750) | API docs don't include HDFS |  Critical | documentation | Eli Collins | Jolly Chen |
| [HDFS-3735](https://issues.apache.org/jira/browse/HDFS-3735) | NameNode WebUI should allow sorting live datanode list by fields Block Pool Used, Block Pool Used(%) and Failed Volumes. |  Major | namenode | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-3614](https://issues.apache.org/jira/browse/HDFS-3614) | Revert unused MiniDFSCluster constructor from HDFS-3049 |  Blocker | . | Arun C Murthy | Arun C Murthy |
| [HDFS-3550](https://issues.apache.org/jira/browse/HDFS-3550) | raid added javadoc warnings |  Minor | build | Thomas Graves | Jason Lowe |
| [HDFS-3549](https://issues.apache.org/jira/browse/HDFS-3549) | dist tar build fails in hadoop-hdfs-raid project |  Critical | build | Jason Lowe | Jason Lowe |
| [HDFS-3462](https://issues.apache.org/jira/browse/HDFS-3462) | TestDFSClientRetries.busyTest() should restore default xceiver count in the config. |  Major | test | Konstantin Shvachko | madhukara phatak |
| [HDFS-3265](https://issues.apache.org/jira/browse/HDFS-3265) | PowerPc Build error. |  Major | build | Kumar Ravi | Kumar Ravi |
| [HDFS-3197](https://issues.apache.org/jira/browse/HDFS-3197) | Incorrect class comments in a few tests |  Trivial | test | Aaron T. Myers | Andy Isaacson |
| [HDFS-3116](https://issues.apache.org/jira/browse/HDFS-3116) | Typo in fetchdt error message |  Trivial | hdfs-client | Aaron T. Myers | AOE Takashi |
| [HDFS-2434](https://issues.apache.org/jira/browse/HDFS-2434) | TestNameNodeMetrics.testCorruptBlock fails intermittently |  Major | test | Uma Maheswara Rao G | Jing Zhao |
| [HDFS-2373](https://issues.apache.org/jira/browse/HDFS-2373) | Commands using webhdfs and hftp print unnecessary debug information on the console with security enabled |  Major | webhdfs | Arpit Gupta | Arpit Gupta |
| [HDFS-2313](https://issues.apache.org/jira/browse/HDFS-2313) | Rat excludes has a typo for excluding editsStored files |  Major | test | Aaron T. Myers | Aaron T. Myers |
| [HDFS-2312](https://issues.apache.org/jira/browse/HDFS-2312) | FSNamesystem header comment says it's for the DN |  Trivial | namenode | Aaron T. Myers | Harsh J |
| [HDFS-2310](https://issues.apache.org/jira/browse/HDFS-2310) | TestBackupNode fails since HADOOP-7524 went in. |  Major | . | Ivan Kelly | Ivan Kelly |
| [HDFS-2299](https://issues.apache.org/jira/browse/HDFS-2299) | TestOfflineEditsViewer is failing on trunk |  Major | test | Aaron T. Myers | Uma Maheswara Rao G |
| [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | The namespace quota of root directory should not be Integer.MAX\_VALUE |  Major | namenode | Tsz Wo Nicholas Sze | Uma Maheswara Rao G |
| [MAPREDUCE-6555](https://issues.apache.org/jira/browse/MAPREDUCE-6555) | TestMRAppMaster fails on trunk |  Major | . | Varun Saxena | Junping Du |
| [MAPREDUCE-6525](https://issues.apache.org/jira/browse/MAPREDUCE-6525) | Fix test failure of TestMiniMRClientCluster.testRestart |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [MAPREDUCE-6451](https://issues.apache.org/jira/browse/MAPREDUCE-6451) | DistCp has incorrect chunkFilePath for multiple jobs when strategy is dynamic |  Major | distcp | Kuhu Shukla | Kuhu Shukla |
| [MAPREDUCE-6406](https://issues.apache.org/jira/browse/MAPREDUCE-6406) | Update FileOutputCommitter.FILEOUTPUTCOMMITTER\_ALGORITHM\_VERSION\_DEFAULT to match mapred-default.xml |  Minor | mrv2 | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6396](https://issues.apache.org/jira/browse/MAPREDUCE-6396) | TestPipeApplication fails by NullPointerException |  Major | test | Akira AJISAKA | Brahma Reddy Battula |
| [MAPREDUCE-6343](https://issues.apache.org/jira/browse/MAPREDUCE-6343) | JobConf.parseMaximumHeapSizeMB() fails to parse value greater than 2GB expressed in bytes |  Major | . | Hao Xia | Hao Xia |
| [MAPREDUCE-6257](https://issues.apache.org/jira/browse/MAPREDUCE-6257) | Document encrypted spills |  Major | security | Allen Wittenauer | Bibin A Chundatt |
| [MAPREDUCE-6161](https://issues.apache.org/jira/browse/MAPREDUCE-6161) | mapred hsadmin command missing from trunk |  Major | scripts | Jason Lowe | Allen Wittenauer |
| [MAPREDUCE-5912](https://issues.apache.org/jira/browse/MAPREDUCE-5912) | Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196 |  Major | client | Remus Rusanu | Remus Rusanu |
| [MAPREDUCE-5801](https://issues.apache.org/jira/browse/MAPREDUCE-5801) | Uber mode's log message is missing a vcore reason |  Minor | . | Steven Wong | Steven Wong |
| [MAPREDUCE-5763](https://issues.apache.org/jira/browse/MAPREDUCE-5763) | Warn message about httpshuffle in NM logs |  Major | . | Sandy Ryza | Akira AJISAKA |
| [MAPREDUCE-5717](https://issues.apache.org/jira/browse/MAPREDUCE-5717) | Task pings are interpreted as task progress |  Major | . | Jason Lowe | Jason Lowe |
| [MAPREDUCE-5012](https://issues.apache.org/jira/browse/MAPREDUCE-5012) | Typo in javadoc for IdentityMapper class |  Trivial | documentation | Adam Monsen | Adam Monsen |
| [MAPREDUCE-4695](https://issues.apache.org/jira/browse/MAPREDUCE-4695) | Fix LocalRunner on trunk after MAPREDUCE-3223 broke it |  Blocker | . | Harsh J | Harsh J |
| [MAPREDUCE-4685](https://issues.apache.org/jira/browse/MAPREDUCE-4685) | DBCount should not use ACCESS |  Major | examples | Viji | Viji |
| [MAPREDUCE-4574](https://issues.apache.org/jira/browse/MAPREDUCE-4574) | Fix TotalOrderParitioner to work with non-WritableComparable key types |  Trivial | client | Harsh J | Harsh J |
| [MAPREDUCE-4413](https://issues.apache.org/jira/browse/MAPREDUCE-4413) | MR lib dir contains jdiff (which is gpl) |  Critical | build | Eli Collins | Nemon Lou |
| [MAPREDUCE-3990](https://issues.apache.org/jira/browse/MAPREDUCE-3990) | MRBench allows Long-sized input-lines value but parses CLI argument as an Integer |  Trivial | benchmarks | Harsh J | Harsh J |
| [MAPREDUCE-3914](https://issues.apache.org/jira/browse/MAPREDUCE-3914) | Mismatched free() / delete / delete [] in HadoopPipes |  Major | pipes | Charles Earl | Joe Mudd |
| [MAPREDUCE-3223](https://issues.apache.org/jira/browse/MAPREDUCE-3223) | Remove MR1 configs from mapred-default.xml |  Major | documentation, mrv2 | Todd Lipcon | Todd Lipcon |
| [MAPREDUCE-3149](https://issues.apache.org/jira/browse/MAPREDUCE-3149) | add a test to verify that buildDTAuthority works for cases with no authority. |  Major | . | John George | John George |
| [MAPREDUCE-2978](https://issues.apache.org/jira/browse/MAPREDUCE-2978) | hudson findbugs not reporting properly |  Major | mrv2 | Thomas Graves | Tom White |
| [MAPREDUCE-1125](https://issues.apache.org/jira/browse/MAPREDUCE-1125) | SerialUtils.cc: deserializeFloat is out of sync with SerialUtils.hh |  Major | pipes | Simone Leo | Simone Leo |
| [YARN-4422](https://issues.apache.org/jira/browse/YARN-4422) | Generic AHS sometimes doesn't show started, node, or logs on App page |  Major | . | Eric Payne | Eric Payne |
| [YARN-4320](https://issues.apache.org/jira/browse/YARN-4320) | TestJobHistoryEventHandler fails as AHS in MiniYarnCluster no longer binds to default port 8188 |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-4009](https://issues.apache.org/jira/browse/YARN-4009) | CORS support for ResourceManager REST API |  Major | . | Prakash Ramachandran | Varun Vasudev |
| [YARN-3915](https://issues.apache.org/jira/browse/YARN-3915) | scmadmin help message correction |  Minor | yarn | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3905](https://issues.apache.org/jira/browse/YARN-3905) | Application History Server UI NPEs when accessing apps run after RM restart |  Major | timelineserver | Eric Payne | Eric Payne |
| [YARN-3002](https://issues.apache.org/jira/browse/YARN-3002) | YARN documentation needs updating post-shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [YARN-2525](https://issues.apache.org/jira/browse/YARN-2525) | yarn logs command gives error on trunk |  Minor | scripts | Prakash Ramachandran | Akira AJISAKA |
| [YARN-2436](https://issues.apache.org/jira/browse/YARN-2436) | yarn application help doesn't work |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2355](https://issues.apache.org/jira/browse/YARN-2355) | MAX\_APP\_ATTEMPTS\_ENV may no longer be a useful env var for a container |  Major | . | Zhijie Shen | Darrell Taylor |
| [YARN-1471](https://issues.apache.org/jira/browse/YARN-1471) | The SLS simulator is not running the preemption policy for CapacityScheduler |  Minor | . | Carlo Curino | Carlo Curino |
| [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL |  Minor | api | Steve Loughran | Steve Loughran |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12564](https://issues.apache.org/jira/browse/HADOOP-12564) |  Upgrade JUnit3 TestCase to JUnit 4 in org.apache.hadoop.io package |  Trivial | test | Dustin Cote | Dustin Cote |
| [HADOOP-11781](https://issues.apache.org/jira/browse/HADOOP-11781) | fix race conditions and add URL support to smart-apply-patch.sh |  Major | test | Allen Wittenauer | Raymie Stata |
| [HADOOP-11084](https://issues.apache.org/jira/browse/HADOOP-11084) | jenkins patchprocess links are broken |  Major | scripts | Colin Patrick McCabe | Arpit Agarwal |
| [HADOOP-10854](https://issues.apache.org/jira/browse/HADOOP-10854) | unit tests for the shell scripts |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-8844](https://issues.apache.org/jira/browse/HADOOP-8844) | Add a plaintext fs -text test-case |  Major | fs | Harsh J | Akira AJISAKA |
| [HADOOP-8434](https://issues.apache.org/jira/browse/HADOOP-8434) | TestConfiguration currently has no tests for direct setter methods |  Major | . | Harsh J | madhukara phatak |
| [HDFS-8834](https://issues.apache.org/jira/browse/HDFS-8834) | TestReplication#testReplicationWhenBlockCorruption is not valid after HDFS-6482 |  Minor | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-3121](https://issues.apache.org/jira/browse/HDFS-3121) | hdfs tests for HADOOP-8014 |  Major | . | John George | John George |
| [HDFS-2127](https://issues.apache.org/jira/browse/HDFS-2127) | Add a test that ensure AccessControlExceptions contain a full path |  Major | namenode | Eli Collins | Stephen Chu |
| [MAPREDUCE-2669](https://issues.apache.org/jira/browse/MAPREDUCE-2669) | Some new examples and test cases for them. |  Minor | examples | Plamen Jeliazkov | Plamen Jeliazkov |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12582](https://issues.apache.org/jira/browse/HADOOP-12582) | Using BytesWritable's getLength() and getBytes() instead of get() and getSize() |  Major | . | Tsuyoshi Ozawa | Akira AJISAKA |
| [HADOOP-12544](https://issues.apache.org/jira/browse/HADOOP-12544) | Erasure Coding: create dummy raw coder to isolate performance issues in testing |  Major | . | Rui Li | Rui Li |
| [HADOOP-12327](https://issues.apache.org/jira/browse/HADOOP-12327) | Initialize output buffers with ZERO bytes in erasure coder |  Major | . | Kai Zheng | Kai Zheng |
| [HADOOP-12269](https://issues.apache.org/jira/browse/HADOOP-12269) | Update aws-sdk dependency to 1.10.6 |  Major | fs/s3 | Thomas Demoor | Thomas Demoor |
| [HADOOP-12244](https://issues.apache.org/jira/browse/HADOOP-12244) | recover broken rebase during precommit |  Critical | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12047](https://issues.apache.org/jira/browse/HADOOP-12047) | Indicate preference not to affect input buffers during coding in erasure coder |  Major | . | Kai Zheng | Kai Zheng |
| [HADOOP-11887](https://issues.apache.org/jira/browse/HADOOP-11887) | Introduce Intel ISA-L erasure coding library for native erasure encoding support |  Major | io | Kai Zheng | Kai Zheng |
| [HADOOP-11852](https://issues.apache.org/jira/browse/HADOOP-11852) | Disable symlinks in trunk |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-11850](https://issues.apache.org/jira/browse/HADOOP-11850) | Typos in hadoop-common java docs |  Minor | . | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HADOOP-11684](https://issues.apache.org/jira/browse/HADOOP-11684) | S3a to use thread pool that blocks clients |  Major | fs/s3 | Thomas Demoor | Thomas Demoor |
| [HDFS-9575](https://issues.apache.org/jira/browse/HDFS-9575) | Use byte array for internal block indices in a striped block |  Major | erasure-coding | Jing Zhao | Jing Zhao |
| [HDFS-9373](https://issues.apache.org/jira/browse/HDFS-9373) | Erasure coding: friendly log information for write operations with some failed streamers |  Major | erasure-coding | Li Bo | Li Bo |
| [HDFS-9348](https://issues.apache.org/jira/browse/HDFS-9348) | Erasure Coding: DFS GetErasureCodingPolicy API on a non-existent file should be handled properly |  Minor | erasure-coding | Rakesh R | Rakesh R |
| [HDFS-9275](https://issues.apache.org/jira/browse/HDFS-9275) | Wait previous ErasureCodingWork to finish before schedule another one |  Major | . | Walter Su | Walter Su |
| [HDFS-9261](https://issues.apache.org/jira/browse/HDFS-9261) | Erasure Coding: Skip encoding the data cells if all the parity data streamers are failed for the current block group |  Minor | . | Rakesh R | Rakesh R |
| [HDFS-9209](https://issues.apache.org/jira/browse/HDFS-9209) | Erasure coding: Add apache license header in TestFileStatusWithECPolicy.java |  Major | . | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-9206](https://issues.apache.org/jira/browse/HDFS-9206) | Inconsistent default value of dfs.datanode.stripedread.buffer.size |  Minor | erasure-coding | Walter Su | Walter Su |
| [HDFS-9180](https://issues.apache.org/jira/browse/HDFS-9180) | Update excluded DataNodes in DFSStripedOutputStream based on failures in data streamers |  Major | erasure-coding | Jing Zhao | Jing Zhao |
| [HDFS-9173](https://issues.apache.org/jira/browse/HDFS-9173) | Erasure Coding: Lease recovery for striped file |  Major | erasure-coding | Walter Su | Walter Su |
| [HDFS-9015](https://issues.apache.org/jira/browse/HDFS-9015) | Refactor TestReplicationPolicy to test different block placement policies |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9007](https://issues.apache.org/jira/browse/HDFS-9007) | Fix HDFS Balancer to honor upgrade domain policy |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9006](https://issues.apache.org/jira/browse/HDFS-9006) | Provide BlockPlacementPolicy that supports upgrade domain |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9004](https://issues.apache.org/jira/browse/HDFS-9004) | Add upgrade domain to DatanodeInfo |  Major | . | Ming Ma | Ming Ma |
| [HDFS-8968](https://issues.apache.org/jira/browse/HDFS-8968) | Erasure coding: a comprehensive I/O throughput benchmark tool |  Major | erasure-coding, test | Kai Zheng | Rui Li |
| [HDFS-8777](https://issues.apache.org/jira/browse/HDFS-8777) | Erasure Coding: add tests for taking snapshots on EC files |  Major | erasure-coding | Jing Zhao | Rakesh R |
| [HDFS-8632](https://issues.apache.org/jira/browse/HDFS-8632) | Add InterfaceAudience annotation to the erasure coding classes |  Major | . | Rakesh R | Rakesh R |
| [HDFS-8438](https://issues.apache.org/jira/browse/HDFS-8438) | Erasure Coding: Allow concat striped files if they have the same ErasureCodingPolicy |  Major | . | Walter Su | Walter Su |
| [HDFS-7751](https://issues.apache.org/jira/browse/HDFS-7751) | Fix TestHDFSCLI for quota with storage type |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7184](https://issues.apache.org/jira/browse/HDFS-7184) | Allow data migration tool to run as a daemon |  Minor | balancer & mover, scripts | Benoy Antony | Benoy Antony |
| [HDFS-7071](https://issues.apache.org/jira/browse/HDFS-7071) | Updated editsStored and editsStored.xml to bump layout version and add LazyPersist flag |  Major | namenode | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-6922](https://issues.apache.org/jira/browse/HDFS-6922) | Add LazyPersist flag to INodeFile, save it in FsImage and edit logs |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-3292](https://issues.apache.org/jira/browse/HDFS-3292) | Remove the deprecated DistributedFileSystem.DiskStatus and the related methods |  Major | hdfs-client | Tsz Wo Nicholas Sze | Arpit Gupta |
| [HDFS-3273](https://issues.apache.org/jira/browse/HDFS-3273) | Refactor BackupImage and FSEditLog |  Major | ha, namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3178](https://issues.apache.org/jira/browse/HDFS-3178) | Add states for journal synchronization in journal daemon |  Major | ha, namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [MAPREDUCE-6435](https://issues.apache.org/jira/browse/MAPREDUCE-6435) | MapReduce client assumes the world is x86 |  Major | client | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6416](https://issues.apache.org/jira/browse/MAPREDUCE-6416) | Not all platforms have d\_type in struct dirent |  Major | build | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6412](https://issues.apache.org/jira/browse/MAPREDUCE-6412) | Make hadoop-mapreduce-client Native code -Wall-clean |  Major | build | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6407](https://issues.apache.org/jira/browse/MAPREDUCE-6407) | Migrate MAPREDUCE nativetask build to new CMake framework |  Major | build | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6391](https://issues.apache.org/jira/browse/MAPREDUCE-6391) | util/Timer.cc completely misunderstands \_POSIX\_CPUTIME |  Major | build | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6078](https://issues.apache.org/jira/browse/MAPREDUCE-6078) | native-task: fix gtest build on macosx |  Trivial | task | Binglin Chang | Binglin Chang |
| [MAPREDUCE-5867](https://issues.apache.org/jira/browse/MAPREDUCE-5867) | Possible NPE in KillAMPreemptionPolicy related to ProportionalCapacityPreemptionPolicy |  Major | resourcemanager | Sunil G | Sunil G |
| [MAPREDUCE-5189](https://issues.apache.org/jira/browse/MAPREDUCE-5189) | Basic AM changes to support preemption requests (per YARN-45) |  Major | mr-am, mrv2 | Carlo Curino | Carlo Curino |
| [YARN-2801](https://issues.apache.org/jira/browse/YARN-2801) | Add documentation for node labels feature |  Major | documentation | Gururaj Shetty | Wangda Tan |
| [YARN-2513](https://issues.apache.org/jira/browse/YARN-2513) | Host framework UIs in YARN for use with the ATS |  Major | timelineserver | Jonathan Eagles | Jonathan Eagles |
| [YARN-644](https://issues.apache.org/jira/browse/YARN-644) | Basic null check is not performed on passed in arguments before using them in ContainerManagerImpl.startContainer |  Minor | nodemanager | Omkar Vinit Joshi | Varun Saxena |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8308](https://issues.apache.org/jira/browse/HADOOP-8308) | Support cross-project Jenkins builds |  Major | build | Tom White | Tom White |
| [HDFS-2776](https://issues.apache.org/jira/browse/HDFS-2776) | Missing interface annotation on JournalSet |  Trivial | namenode | Todd Lipcon | Brandon Li |


