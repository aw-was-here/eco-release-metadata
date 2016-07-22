
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

## Release 3.0.0-alpha1 - Unreleased (as of 2016-07-22)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-8124](https://issues.apache.org/jira/browse/HADOOP-8124) | Remove the deprecated Syncable.sync() method |  Major | fs | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3034](https://issues.apache.org/jira/browse/HDFS-3034) | Remove the deprecated Syncable.sync() method |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-5079](https://issues.apache.org/jira/browse/HDFS-5079) | Cleaning up NNHAStatusHeartbeat.State DatanodeProtocolProtos. |  Major | datanode, namenode | Konstantin Shvachko | Tao Luo |
| [HDFS-5570](https://issues.apache.org/jira/browse/HDFS-5570) | Deprecate hftp / hsftp and replace them with webhdfs / swebhdfs |  Major | . | Haohui Mai | Haohui Mai |
| [HADOOP-10485](https://issues.apache.org/jira/browse/HADOOP-10485) | Remove dead classes in hadoop-streaming |  Major | tools | Haohui Mai | Haohui Mai |
| [HDFS-6246](https://issues.apache.org/jira/browse/HDFS-6246) | Remove 'dfs.support.append' flag from trunk code |  Minor | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-10474](https://issues.apache.org/jira/browse/HADOOP-10474) | Move o.a.h.record to hadoop-streaming |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-2538](https://issues.apache.org/jira/browse/HDFS-2538) | option to disable fsck dots |  Minor | . | Allen Wittenauer | Mohammad Kamrul Islam |
| [HADOOP-9902](https://issues.apache.org/jira/browse/HADOOP-9902) | Shell script rewrite |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11041](https://issues.apache.org/jira/browse/HADOOP-11041) | VersionInfo output specifies subversion |  Minor | build | Guo Ruijing | Tsuyoshi Ozawa |
| [MAPREDUCE-5972](https://issues.apache.org/jira/browse/MAPREDUCE-5972) | Fix typo 'programatically' in job.xml (and a few other places) |  Trivial | . | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-11356](https://issues.apache.org/jira/browse/HADOOP-11356) | Removed deprecated o.a.h.fs.permission.AccessControlException |  Major | . | Haohui Mai | Li Lu |
| [HADOOP-10950](https://issues.apache.org/jira/browse/HADOOP-10950) | rework  heap management  vars |  Major | scripts | Allen Wittenauer | John Smith |
| [MAPREDUCE-5785](https://issues.apache.org/jira/browse/MAPREDUCE-5785) | Derive heap size or mapreduce.\*.memory.mb automatically |  Major | mr-am, task | Gera Shegalov | Gera Shegalov |
| [YARN-2428](https://issues.apache.org/jira/browse/YARN-2428) | LCE default banned user list should have yarn |  Trivial | nodemanager | Allen Wittenauer | Varun Saxena |
| [MAPREDUCE-5653](https://issues.apache.org/jira/browse/MAPREDUCE-5653) | DistCp does not honour config-overrides for mapreduce.[map,reduce].memory.mb |  Major | distcp | Mithun Radhakrishnan | Ratandeep Ratti |
| [HADOOP-11657](https://issues.apache.org/jira/browse/HADOOP-11657) | Align the output of `hadoop fs -du` to be more Unix-like |  Minor | . | Nick Dimiduk | Akira Ajisaka |
| [HDFS-7302](https://issues.apache.org/jira/browse/HDFS-7302) | namenode -rollingUpgrade downgrade may finalize a rolling upgrade |  Major | namenode | Tsz Wo Nicholas Sze | Kai Sasaki |
| [HADOOP-6857](https://issues.apache.org/jira/browse/HADOOP-6857) | FsShell should report raw disk usage including replication factor |  Major | fs | Alex Kozlov | Byron Wong |
| [HADOOP-10115](https://issues.apache.org/jira/browse/HADOOP-10115) | Exclude duplicate jars in hadoop package under different component's lib |  Major | build | Vinayakumar B | Vinayakumar B |
| [MAPREDUCE-4424](https://issues.apache.org/jira/browse/MAPREDUCE-4424) | 'mapred job -list' command should show the job name as well |  Minor | mrv2 | Harsh J | Avinash Kujur |
| [HDFS-7985](https://issues.apache.org/jira/browse/HDFS-7985) | WebHDFS should be always enabled |  Major | . | Haohui Mai | Li Lu |
| [HDFS-6353](https://issues.apache.org/jira/browse/HDFS-6353) | Check and make checkpoint before stopping the NameNode |  Major | namenode | Suresh Srinivas | Jing Zhao |
| [HADOOP-11553](https://issues.apache.org/jira/browse/HADOOP-11553) | Formalize the shell API |  Blocker | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11627](https://issues.apache.org/jira/browse/HADOOP-11627) | Remove io.native.lib.available |  Major | native | Akira Ajisaka | Brahma Reddy Battula |
| [HDFS-7281](https://issues.apache.org/jira/browse/HDFS-7281) | Missing block is marked as corrupted block |  Major | namenode | Ming Ma | Ming Ma |
| [MAPREDUCE-2632](https://issues.apache.org/jira/browse/MAPREDUCE-2632) | Avoid calling the partitioner when the numReduceTasks is 1. |  Major | . | Ravi Teja Ch N V | Sunil G |
| [HDFS-8241](https://issues.apache.org/jira/browse/HDFS-8241) | Remove unused NameNode startup option -finalize |  Minor | namenode | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8332](https://issues.apache.org/jira/browse/HDFS-8332) | DFS client API calls should check filesystem closed |  Major | . | Rakesh R | Rakesh R |
| [HADOOP-11698](https://issues.apache.org/jira/browse/HADOOP-11698) | Remove DistCpV1 and Logalyzer |  Major | tools/distcp | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-8135](https://issues.apache.org/jira/browse/HDFS-8135) | Remove the deprecated FSConstants class |  Major | . | Haohui Mai | Li Lu |
| [MAPREDUCE-6336](https://issues.apache.org/jira/browse/MAPREDUCE-6336) | Enable v2 FileOutputCommitter by default |  Major | mrv2 | Gera Shegalov | Siqi Li |
| [HDFS-8591](https://issues.apache.org/jira/browse/HDFS-8591) | Remove support for deprecated configuration key dfs.namenode.decommission.nodes.per.interval |  Minor | namenode | Andrew Wang | Andrew Wang |
| [HADOOP-12269](https://issues.apache.org/jira/browse/HADOOP-12269) | Update aws-sdk dependency to 1.10.6; move to aws-sdk-s3 |  Major | fs/s3 | Thomas Demoor | Thomas Demoor |
| [HDFS-8895](https://issues.apache.org/jira/browse/HDFS-8895) | Remove deprecated BlockStorageLocation APIs |  Major | . | Andrew Wang | Andrew Wang |
| [HDFS-8981](https://issues.apache.org/jira/browse/HDFS-8981) | Adding revision to data node jmx getVersion() method |  Minor | . | Siqi Li | Siqi Li |
| [HDFS-9085](https://issues.apache.org/jira/browse/HDFS-9085) | Show renewer information in DelegationTokenIdentifier#toString |  Trivial | security | zhihai xu | zhihai xu |
| [HADOOP-12495](https://issues.apache.org/jira/browse/HADOOP-12495) | Fix posix\_spawn error on OS X |  Major | util | Allen Wittenauer | Allen Wittenauer |
| [HDFS-9070](https://issues.apache.org/jira/browse/HDFS-9070) | Allow fsck display pending replica location information for being-written blocks |  Major | . | GAO Rui | GAO Rui |
| [HDFS-9278](https://issues.apache.org/jira/browse/HDFS-9278) | Fix preferredBlockSize typo in OIV XML output |  Trivial | tools | Nicole Pazmany | Nicole Pazmany |
| [HADOOP-10787](https://issues.apache.org/jira/browse/HADOOP-10787) | Rename/remove non-HADOOP\_\*, etc from the shell scripts |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12294](https://issues.apache.org/jira/browse/HADOOP-12294) | Throw an Exception when fs.permissions.umask-mode is misconfigured |  Major | conf | Chang Li | Chang Li |
| [HADOOP-10465](https://issues.apache.org/jira/browse/HADOOP-10465) | Fix use of generics within SortedMapWritable |  Minor | . | Bertrand Dechoux | Bertrand Dechoux |
| [HDFS-5165](https://issues.apache.org/jira/browse/HDFS-5165) | Remove the TotalFiles metrics |  Minor | . | Akira Ajisaka | Akira Ajisaka |
| [MAPREDUCE-6613](https://issues.apache.org/jira/browse/MAPREDUCE-6613) | Change mapreduce.jobhistory.jhist.format default from json to binary |  Minor | . | Ray Chiang | Ray Chiang |
| [HADOOP-12850](https://issues.apache.org/jira/browse/HADOOP-12850) | pull shell code out of hadoop-dist |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12857](https://issues.apache.org/jira/browse/HADOOP-12857) | Rework hadoop-tools |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12967](https://issues.apache.org/jira/browse/HADOOP-12967) | Remove FileUtil#copyMerge |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-12811](https://issues.apache.org/jira/browse/HADOOP-12811) | Change kms server port number which conflicts with HMaster port number |  Critical | kms | Yufeng Jiang | Xiao Chen |
| [HDFS-9427](https://issues.apache.org/jira/browse/HDFS-9427) | HDFS should not default to ephemeral ports |  Critical | datanode, hdfs-client, namenode | Arpit Agarwal | Xiaobing Zhou |
| [HADOOP-12563](https://issues.apache.org/jira/browse/HADOOP-12563) | Updated utility to create/modify token files |  Major | . | Allen Wittenauer | Matthew Paduano |
| [HADOOP-13045](https://issues.apache.org/jira/browse/HADOOP-13045) | hadoop\_add\_classpath is not working in .hadooprc |  Major | . | Akira Ajisaka | Allen Wittenauer |
| [MAPREDUCE-6526](https://issues.apache.org/jira/browse/MAPREDUCE-6526) | Remove usage of metrics v1 from hadoop-mapreduce |  Blocker | . | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-12504](https://issues.apache.org/jira/browse/HADOOP-12504) | Remove metrics v1 |  Blocker | metrics | Akira Ajisaka | Akira Ajisaka |
| [HDFS-10337](https://issues.apache.org/jira/browse/HDFS-10337) | OfflineEditsViewer stats option should print 0 instead of null for the count of operations |  Minor | . | Akira Ajisaka | Yiqun Lin |
| [HADOOP-11858](https://issues.apache.org/jira/browse/HADOOP-11858) | [JDK8] Set minimum version of Hadoop 3 to JDK 8 |  Blocker | build | Robert Kanter | Robert Kanter |
| [HADOOP-13175](https://issues.apache.org/jira/browse/HADOOP-13175) | Remove hadoop-ant from hadoop-tools |  Major | . | Chris Douglas | Chris Douglas |
| [HADOOP-9613](https://issues.apache.org/jira/browse/HADOOP-9613) | [JDK8] Update jersey version to latest 1.x release |  Major | build | Timothy St. Clair | Tsuyoshi Ozawa |
| [HADOOP-13209](https://issues.apache.org/jira/browse/HADOOP-13209) | replace slaves with workers |  Major | scripts | John Smith | John Smith |
| [HDFS-6434](https://issues.apache.org/jira/browse/HDFS-6434) | Default permission for creating file should be 644 for WebHdfs/HttpFS |  Minor | webhdfs | Juan Yu | Wellington Chevreuil |
| [HADOOP-12864](https://issues.apache.org/jira/browse/HADOOP-12864) | Remove bin/rcc script |  Blocker | tools | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12709](https://issues.apache.org/jira/browse/HADOOP-12709) | Cut s3:// from trunk |  Major | fs/s3 | Steve Loughran | Mingliang Liu |
| [HADOOP-12064](https://issues.apache.org/jira/browse/HADOOP-12064) | [JDK8] Update guice version to 4.0 |  Blocker | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HDFS-10548](https://issues.apache.org/jira/browse/HDFS-10548) | Remove the long deprecated BlockReaderRemote |  Major | hdfs | Kai Zheng | Kai Zheng |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11393](https://issues.apache.org/jira/browse/HADOOP-11393) | Revert HADOOP\_PREFIX, go back to HADOOP\_HOME |  Major | scripts, tracing | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12930](https://issues.apache.org/jira/browse/HADOOP-12930) | [Umbrella] Dynamic subcommands for hadoop shell scripts |  Critical | scripts | Allen Wittenauer | Allen Wittenauer |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-4887](https://issues.apache.org/jira/browse/MAPREDUCE-4887) | Rehashing partitioner for better distribution |  Major | . | Radim Kolar | Radim Kolar |
| [HADOOP-11013](https://issues.apache.org/jira/browse/HADOOP-11013) | CLASSPATH handling should be consolidated, debuggable |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-6590](https://issues.apache.org/jira/browse/HADOOP-6590) | Add a username check for hadoop sub-commands |  Minor | scripts | Scott Chen | John Smith |
| [HADOOP-11353](https://issues.apache.org/jira/browse/HADOOP-11353) | Add support for .hadooprc |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-9044](https://issues.apache.org/jira/browse/HADOOP-9044) | add FindClass main class to provide classpath checking of installations |  Minor | util | Steve Loughran | Steve Loughran |
| [HADOOP-11485](https://issues.apache.org/jira/browse/HADOOP-11485) | Pluggable shell integration |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11554](https://issues.apache.org/jira/browse/HADOOP-11554) | Expose HadoopKerberosName as a hadoop subcommand |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11565](https://issues.apache.org/jira/browse/HADOOP-11565) | Add --slaves shell option |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-9642](https://issues.apache.org/jira/browse/HADOOP-9642) | Configuration to resolve environment variables via ${env.VARIABLE} references |  Minor | conf, scripts | Steve Loughran | Kengo Seki |
| [HADOOP-7947](https://issues.apache.org/jira/browse/HADOOP-7947) | Validate XMLs if a relevant tool is available, when using scripts |  Major | scripts | Harsh J | Kengo Seki |
| [HDFS-6440](https://issues.apache.org/jira/browse/HDFS-6440) | Support more than 2 NameNodes |  Major | auto-failover, ha, namenode | Jesse Yates | Jesse Yates |
| [HDFS-7285](https://issues.apache.org/jira/browse/HDFS-7285) | Erasure Coding Support inside HDFS |  Major | . | Weihua Jiang | Zhe Zhang |
| [HADOOP-10949](https://issues.apache.org/jira/browse/HADOOP-10949) | metrics2 sink plugin for Apache Kafka |  Major | metrics | Babak Behzad | Babak Behzad |
| [HDFS-9057](https://issues.apache.org/jira/browse/HDFS-9057) | allow/disallow snapshots via webhdfs |  Major | webhdfs | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-12366](https://issues.apache.org/jira/browse/HADOOP-12366) | expose calculated paths |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HDFS-9525](https://issues.apache.org/jira/browse/HDFS-9525) | hadoop utilities need to support provided delegation tokens |  Blocker | security | Allen Wittenauer | HeeSoo Kim |
| [HDFS-9804](https://issues.apache.org/jira/browse/HDFS-9804) | Allow long-running Balancer to login with keytab |  Major | balancer & mover, security | Xiao Chen | Xiao Chen |
| [HADOOP-12666](https://issues.apache.org/jira/browse/HADOOP-12666) | Support Microsoft Azure Data Lake - as a file system in Hadoop |  Major | fs, fs/azure, tools | Vishwajeet Dusane | Vishwajeet Dusane |
| [HDFS-1312](https://issues.apache.org/jira/browse/HDFS-1312) | Re-balance disks within a Datanode |  Major | datanode | Travis Crawford | Anu Engineer |
| [YARN-2928](https://issues.apache.org/jira/browse/YARN-2928) | YARN Timeline Service v.2: alpha 1 |  Critical | timelineserver | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6331](https://issues.apache.org/jira/browse/MAPREDUCE-6331) | [Umbrella] Make MapReduce work with Timeline Service Nextgen (YARN-2928) |  Major | . | Vinod Kumar Vavilapalli | Sangjin Lee |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-2944](https://issues.apache.org/jira/browse/MAPREDUCE-2944) | Improve checking of input for Api displayTasks() |  Trivial | client | XieXianshan | XieXianshan |
| [HADOOP-8017](https://issues.apache.org/jira/browse/HADOOP-8017) | Configure hadoop-main pom to get rid of M2E plugin execution not covered |  Major | build | Eric Charles | Eric Charles |
| [HADOOP-8078](https://issues.apache.org/jira/browse/HADOOP-8078) | Add capability to turn on security in unit tests. |  Major | test | Jitendra Nath Pandey | Jaimin D Jetly |
| [MAPREDUCE-3956](https://issues.apache.org/jira/browse/MAPREDUCE-3956) | Remove the use of the deprecated Syncable.sync() method |  Minor | examples | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-8147](https://issues.apache.org/jira/browse/HADOOP-8147) | test-patch should run tests with -fn to avoid masking test failures |  Major | test | Robert Joseph Evans | Robert Joseph Evans |
| [HADOOP-8290](https://issues.apache.org/jira/browse/HADOOP-8290) | Remove two remaining references to "hadoop.native.lib" oldprop |  Trivial | test | Harsh J | Harsh J |
| [HDFS-2743](https://issues.apache.org/jira/browse/HDFS-2743) | Streamline usage of bookkeeper journal manager |  Major | ha | Ivan Kelly | Ivan Kelly |
| [HADOOP-8312](https://issues.apache.org/jira/browse/HADOOP-8312) | testpatch.sh should provide a simpler way to see which warnings changed |  Major | scripts | Robert Joseph Evans | Robert Joseph Evans |
| [HDFS-3293](https://issues.apache.org/jira/browse/HDFS-3293) | Implement equals for journainfo class. |  Minor | namenode | Hari Mankude | Hari Mankude |
| [HADOOP-8375](https://issues.apache.org/jira/browse/HADOOP-8375) | test-patch should stop immediately once it has found compilation errors |  Major | build | Tsz Wo Nicholas Sze | Robert Joseph Evans |
| [HADOOP-8297](https://issues.apache.org/jira/browse/HADOOP-8297) | Writable javadocs don't carry default constructor |  Trivial | documentation | Harsh J | Harsh J |
| [HADOOP-7659](https://issues.apache.org/jira/browse/HADOOP-7659) | fs -getmerge isn't guaranteed to work well over non-HDFS filesystems |  Minor | fs | Harsh J | Harsh J |
| [MAPREDUCE-3302](https://issues.apache.org/jira/browse/MAPREDUCE-3302) | Remove the last dependency call from org.apache.hadoop.record package in MR. |  Minor | client | Harsh J | Harsh J |
| [MAPREDUCE-2384](https://issues.apache.org/jira/browse/MAPREDUCE-2384) | The job submitter should make sure to validate jobs before creation of necessary files |  Major | job submission, test | Denny Ye | Harsh J |
| [HDFS-3476](https://issues.apache.org/jira/browse/HDFS-3476) | Correct the default used in TestDFSClientRetries.busyTest() after HDFS-3462 |  Minor | test | Harsh J | Harsh J |
| [HDFS-3478](https://issues.apache.org/jira/browse/HDFS-3478) | Test quotas with Long.Max\_Value |  Minor | namenode | Sujay Rau | Sujay Rau |
| [MAPREDUCE-4371](https://issues.apache.org/jira/browse/MAPREDUCE-4371) | Check for cyclic dependencies in Jobcontrol job DAG |  Major | mrv1 | madhukara phatak | madhukara phatak |
| [HADOOP-8523](https://issues.apache.org/jira/browse/HADOOP-8523) | test-patch.sh doesn't validate patches before building |  Minor | build | Jack Dintruff | Jack Dintruff |
| [HADOOP-8521](https://issues.apache.org/jira/browse/HADOOP-8521) | Port StreamInputFormat to new Map Reduce API |  Major | streaming | madhukara phatak | madhukara phatak |
| [HADOOP-8593](https://issues.apache.org/jira/browse/HADOOP-8593) | add  the missed @Override to methods in Metric/Metric2 package |  Minor | metrics | Brandon Li | Brandon Li |
| [HDFS-3768](https://issues.apache.org/jira/browse/HDFS-3768) | Exception in TestJettyHelper is incorrect |  Minor | test | Jakob Homan | Eli Reisman |
| [HDFS-3834](https://issues.apache.org/jira/browse/HDFS-3834) | Unused Command.java fields NAME, DESCRIPTION and USAGE |  Minor | shell | Jing Zhao | Jing Zhao |
| [HADOOP-8588](https://issues.apache.org/jira/browse/HADOOP-8588) | SerializationFactory shouldn't throw a NullPointerException if the serializations list is empty |  Minor | io | Harsh J | Sho Shimauchi |
| [HADOOP-7930](https://issues.apache.org/jira/browse/HADOOP-7930) | Kerberos relogin interval in UserGroupInformation should be configurable |  Major | security | Alejandro Abdelnur | Robert Kanter |
| [HADOOP-8838](https://issues.apache.org/jira/browse/HADOOP-8838) | Colorize the test-patch output sent to JIRA |  Trivial | build | Harsh J | Harsh J |
| [MAPREDUCE-4686](https://issues.apache.org/jira/browse/MAPREDUCE-4686) | hadoop-mapreduce-client-core fails compilation in Eclipse due to missing Avro-generated classes |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-8864](https://issues.apache.org/jira/browse/HADOOP-8864) | Addendum to HADOOP-8840: Add a coloring case for +0 results too. |  Trivial | precommit | Harsh J | Harsh J |
| [HDFS-3995](https://issues.apache.org/jira/browse/HDFS-3995) | Use DFSTestUtil.createFile() for file creation and writing in test cases |  Minor | test | Jing Zhao | Jing Zhao |
| [HADOOP-8920](https://issues.apache.org/jira/browse/HADOOP-8920) | Add more javadoc to metrics2 related classes |  Minor | metrics | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-8776](https://issues.apache.org/jira/browse/HADOOP-8776) | Provide an option in test-patch that can enable / disable compiling native code |  Minor | build | Hemanth Yamijala | Chris Nauroth |
| [MAPREDUCE-4735](https://issues.apache.org/jira/browse/MAPREDUCE-4735) | Make arguments in TestDFSIO case insensitive |  Trivial | test | Robert Kanter | Brandon Li |
| [HADOOP-6616](https://issues.apache.org/jira/browse/HADOOP-6616) | Improve documentation for rack awareness |  Major | documentation | Jeff Hammerbacher | Adam Faris |
| [HADOOP-9075](https://issues.apache.org/jira/browse/HADOOP-9075) | FileContext#FSLinkResolver should be made static |  Minor | . | Suresh Srinivas | Arpit Agarwal |
| [HDFS-3358](https://issues.apache.org/jira/browse/HDFS-3358) | Specify explicitly that the NN UI status total is talking of persistent objects on heap. |  Trivial | namenode | Harsh J | Harsh J |
| [HADOOP-9277](https://issues.apache.org/jira/browse/HADOOP-9277) | Improve javadoc for FileContext |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-9394](https://issues.apache.org/jira/browse/HADOOP-9394) | Port findHangingTest.sh from HBase to Hadoop |  Minor | . | Andrew Wang | Andrew Wang |
| [HDFS-4665](https://issues.apache.org/jira/browse/HDFS-4665) | Move TestNetworkTopologyWithNodeGroup to Common |  Minor | test | Luke Lu | Junping Du |
| [HDFS-5041](https://issues.apache.org/jira/browse/HDFS-5041) | Add the time of last heartbeat to dead server Web UI |  Minor | . | Ted Yu | Ted Yu |
| [HADOOP-10044](https://issues.apache.org/jira/browse/HADOOP-10044) | Improve the javadoc of rpc code |  Minor | . | Sanjay Radia | Sanjay Radia |
| [MAPREDUCE-5197](https://issues.apache.org/jira/browse/MAPREDUCE-5197) | Checkpoint Service: a library component to facilitate checkpoint of task state |  Major | mrv2 | Carlo Curino | Carlo Curino |
| [MAPREDUCE-5196](https://issues.apache.org/jira/browse/MAPREDUCE-5196) | CheckpointAMPreemptionPolicy implements preemption in MR AM via checkpointing |  Major | mr-am, mrv2 | Carlo Curino | Carlo Curino |
| [HDFS-6228](https://issues.apache.org/jira/browse/HDFS-6228) | comments typo fix for FsDatasetImpl.java |  Trivial | . | yunjiong zhao | yunjiong zhao |
| [HADOOP-8719](https://issues.apache.org/jira/browse/HADOOP-8719) | Workaround for kerberos-related log errors upon running any hadoop command on OSX |  Trivial | scripts | Jianbin Wei | Jianbin Wei |
| [HADOOP-10834](https://issues.apache.org/jira/browse/HADOOP-10834) | Typo in CredentialShell usage |  Minor | security | Benoy Antony | Benoy Antony |
| [MAPREDUCE-6013](https://issues.apache.org/jira/browse/MAPREDUCE-6013) | mapred version is missing |  Major | scripts | Allen Wittenauer | Akira Ajisaka |
| [MAPREDUCE-2841](https://issues.apache.org/jira/browse/MAPREDUCE-2841) | Task level native optimization |  Major | task | Binglin Chang | Sean Zhong |
| [YARN-2438](https://issues.apache.org/jira/browse/YARN-2438) | yarn-env.sh cleanup |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11092](https://issues.apache.org/jira/browse/HADOOP-11092) | hadoop shell commands should print usage if not given a class |  Major | scripts | Bruno Mahé | Allen Wittenauer |
| [HADOOP-11025](https://issues.apache.org/jira/browse/HADOOP-11025) | hadoop-daemons.sh should just call hdfs directly |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11150](https://issues.apache.org/jira/browse/HADOOP-11150) | hadoop command should show the reason on failure by invalid COMMAND or CLASSNAME |  Minor | scripts | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11208](https://issues.apache.org/jira/browse/HADOOP-11208) | Replace "daemon" with better name in script subcommands |  Major | scripts | Yongjun Zhang | Allen Wittenauer |
| [HADOOP-10926](https://issues.apache.org/jira/browse/HADOOP-10926) | Improve smart-apply-patch.sh to apply binary diffs |  Major | . | Andrew Wang | Colin P. McCabe |
| [HADOOP-11081](https://issues.apache.org/jira/browse/HADOOP-11081) | Document hadoop properties expected to be set by the shell code in \*-env.sh |  Major | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2472](https://issues.apache.org/jira/browse/YARN-2472) | yarn-daemons.sh should just call yarn directly |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11352](https://issues.apache.org/jira/browse/HADOOP-11352) | Clean up test-patch.sh to disable "+1 contrib tests" |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-2437](https://issues.apache.org/jira/browse/YARN-2437) | start-yarn.sh/stop-yarn should give info |  Major | scripts | Allen Wittenauer | Varun Saxena |
| [HADOOP-11058](https://issues.apache.org/jira/browse/HADOOP-11058) | Missing HADOOP\_CONF\_DIR generates strange results |  Major | scripts | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11460](https://issues.apache.org/jira/browse/HADOOP-11460) | Deprecate shell vars |  Major | scripts | Allen Wittenauer | John Smith |
| [HADOOP-11346](https://issues.apache.org/jira/browse/HADOOP-11346) | Rewrite sls/rumen to use new shell framework |  Major | scripts, tools | Allen Wittenauer | John Smith |
| [HADOOP-6964](https://issues.apache.org/jira/browse/HADOOP-6964) | Allow compact property description in xml |  Major | conf | Owen O'Malley | Kengo Seki |
| [HDFS-7322](https://issues.apache.org/jira/browse/HDFS-7322) | deprecate sbin/hadoop-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-2796](https://issues.apache.org/jira/browse/YARN-2796) | deprecate sbin/yarn-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [MAPREDUCE-6250](https://issues.apache.org/jira/browse/MAPREDUCE-6250) | deprecate sbin/mr-jobhistory-daemon.sh |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [MAPREDUCE-6260](https://issues.apache.org/jira/browse/MAPREDUCE-6260) | Convert site documentation to markdown |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [HADOOP-11575](https://issues.apache.org/jira/browse/HADOOP-11575) | Daemon log documentation is misleading |  Major | documentation | Jagadesh Kiran N | Naganarasimha G R |
| [HADOOP-11596](https://issues.apache.org/jira/browse/HADOOP-11596) | Allow smart-apply-patch.sh to add new files in binary git patches |  Major | . | Ravi Prakash | Ravi Prakash |
| [HADOOP-11593](https://issues.apache.org/jira/browse/HADOOP-11593) | Convert site documentation from apt to markdown (stragglers) |  Major | documentation | Allen Wittenauer | Masatake Iwasaki |
| [HDFS-7460](https://issues.apache.org/jira/browse/HDFS-7460) | Rewrite httpfs to use new shell framework |  Major | scripts | Allen Wittenauer | John Smith |
| [YARN-3168](https://issues.apache.org/jira/browse/YARN-3168) | Convert site documentation from apt to markdown |  Major | documentation | Allen Wittenauer | Gururaj Shetty |
| [YARN-3199](https://issues.apache.org/jira/browse/YARN-3199) | Fair Scheduler documentation improvements |  Minor | fairscheduler | Rohit Agarwal | Rohit Agarwal |
| [HADOOP-11673](https://issues.apache.org/jira/browse/HADOOP-11673) | Use org.junit.Assume to skip tests instead of return |  Minor | test | Akira Ajisaka | Brahma Reddy Battula |
| [YARN-2280](https://issues.apache.org/jira/browse/YARN-2280) | Resource manager web service fields are not accessible |  Trivial | resourcemanager | Krisztian Horvath | Krisztian Horvath |
| [HADOOP-11524](https://issues.apache.org/jira/browse/HADOOP-11524) | hadoop\_do\_classpath\_subcommand throws a shellcheck warning |  Minor | scripts | Allen Wittenauer | Chris Nauroth |
| [HADOOP-11857](https://issues.apache.org/jira/browse/HADOOP-11857) | Fix CommandFormat#commandFormat java doc annotation |  Trivial | . | Xiaoyu Yao | J.Andreina |
| [MAPREDUCE-6057](https://issues.apache.org/jira/browse/MAPREDUCE-6057) | Remove obsolete entries from mapred-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [HADOOP-11590](https://issues.apache.org/jira/browse/HADOOP-11590) | Update sbin commands and documentation to use new --slaves option |  Blocker | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10993](https://issues.apache.org/jira/browse/HADOOP-10993) | Dump java command line to \*.out file |  Minor | . | Allen Wittenauer | Kengo Seki |
| [HDFS-5033](https://issues.apache.org/jira/browse/HDFS-5033) | Bad error message for fs -put/copyFromLocal if user doesn't have permissions to read the source |  Minor | . | Karthik Kambatla | Darrell Taylor |
| [HADOOP-11142](https://issues.apache.org/jira/browse/HADOOP-11142) | Remove hdfs dfs reference from file system shell documentation |  Minor | documentation | Jonathan Allen | Kengo Seki |
| [YARN-3360](https://issues.apache.org/jira/browse/YARN-3360) | Add JMX metrics to TimelineDataManager |  Major | timelineserver | Jason Lowe | Jason Lowe |
| [HADOOP-12049](https://issues.apache.org/jira/browse/HADOOP-12049) | Control http authentication cookie persistence via configuration |  Major | security | Benoy Antony | Huizhi Lu |
| [HADOOP-11203](https://issues.apache.org/jira/browse/HADOOP-11203) | Allow ditscp to accept bandwitdh in fraction MegaBytes |  Major | tools/distcp | Raju Bairishetti | Raju Bairishetti |
| [HADOOP-12149](https://issues.apache.org/jira/browse/HADOOP-12149) | copy all of test-patch BINDIR prior to re-exec |  Blocker | yetus | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10979](https://issues.apache.org/jira/browse/HADOOP-10979) | Auto-entries in hadoop\_usage |  Minor | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-3261](https://issues.apache.org/jira/browse/YARN-3261) | rewrite resourcemanager restart doc to remove roadmap bits |  Major | documentation | Allen Wittenauer | Gururaj Shetty |
| [HADOOP-12009](https://issues.apache.org/jira/browse/HADOOP-12009) | Clarify FileSystem.listStatus() sorting order & fix FileSystemContractBaseTest:testListStatus |  Minor | documentation, fs, test | Jakob Homan | J.Andreina |
| [HADOOP-12249](https://issues.apache.org/jira/browse/HADOOP-12249) | pull argument parsing into a function |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12050](https://issues.apache.org/jira/browse/HADOOP-12050) | Enable MaxInactiveInterval for hadoop http auth token |  Major | security | Benoy Antony | Huizhi Lu |
| [HDFS-8924](https://issues.apache.org/jira/browse/HDFS-8924) | Add pluggable interface for reading replicas in DFSClient |  Major | hdfs-client | Colin P. McCabe | Colin P. McCabe |
| [HDFS-8865](https://issues.apache.org/jira/browse/HDFS-8865) | Improve quota initialization performance |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-9132](https://issues.apache.org/jira/browse/HDFS-9132) | Pass genstamp to ReplicaAccessorBuilder |  Major | hdfs-client | Colin P. McCabe | Colin P. McCabe |
| [HDFS-9148](https://issues.apache.org/jira/browse/HDFS-9148) | Incorrect assert message in TestWriteToReplica#testWriteToTemporary |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9238](https://issues.apache.org/jira/browse/HDFS-9238) | Update TestFileCreation#testLeaseExpireHardLimit() to avoid using DataNodeTestUtils#getFile() |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9188](https://issues.apache.org/jira/browse/HDFS-9188) | Make block corruption related tests FsDataset-agnostic. |  Major | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9251](https://issues.apache.org/jira/browse/HDFS-9251) | Refactor TestWriteToReplica and TestFsDatasetImpl to avoid explicitly creating Files in tests code. |  Major | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-12436](https://issues.apache.org/jira/browse/HADOOP-12436) | GlobPattern regex library has performance issues with wildcard characters |  Major | fs | Matthew Paduano | Matthew Paduano |
| [HDFS-9264](https://issues.apache.org/jira/browse/HDFS-9264) | Minor cleanup of operations on FsVolumeList#volumes |  Minor | . | Walter Su | Walter Su |
| [HDFS-9297](https://issues.apache.org/jira/browse/HDFS-9297) | Update TestBlockMissingException to use corruptBlockOnDataNodesByDeletingBlockFile() |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9291](https://issues.apache.org/jira/browse/HDFS-9291) | Fix TestInterDatanodeProtocol to be FsDataset-agnostic. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9292](https://issues.apache.org/jira/browse/HDFS-9292) | Make TestFileConcorruption independent to underlying FsDataset Implementation. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-12385](https://issues.apache.org/jira/browse/HADOOP-12385) | include nested stack trace in SaslRpcClient.getServerToken() |  Minor | security | Steve Loughran | Steve Loughran |
| [HDFS-9323](https://issues.apache.org/jira/browse/HDFS-9323) | Randomize the DFSStripedOutputStreamWithFailure tests |  Minor | test | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HADOOP-12133](https://issues.apache.org/jira/browse/HADOOP-12133) | Add schemas to Maven Assembly XMLs |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HDFS-9312](https://issues.apache.org/jira/browse/HDFS-9312) | Fix TestReplication to be FsDataset-agnostic. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9308](https://issues.apache.org/jira/browse/HDFS-9308) | Add truncateMeta() and deleteMeta() to MiniDFSCluster |  Minor | test | Tony Wu | Tony Wu |
| [HADOOP-12541](https://issues.apache.org/jira/browse/HADOOP-12541) | make re2j dependency consistent |  Major | build | Allen Wittenauer | Matthew Paduano |
| [HDFS-9331](https://issues.apache.org/jira/browse/HDFS-9331) | Modify TestNameNodeMXBean#testNameNodeMXBeanInfo() to account for filesystem entirely allocated for DFS use |  Trivial | test | Tony Wu | Tony Wu |
| [HDFS-9363](https://issues.apache.org/jira/browse/HDFS-9363) | Add fetchReplica() to FsDatasetTestUtils to return FsDataset-agnostic Replica. |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9282](https://issues.apache.org/jira/browse/HDFS-9282) | Make data directory count and storage raw capacity related tests FsDataset-agnostic |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9490](https://issues.apache.org/jira/browse/HDFS-9490) | MiniDFSCluster should change block generation stamp via FsDatasetTestUtils |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9491](https://issues.apache.org/jira/browse/HDFS-9491) | Tests should get the number of pending async delets via FsDatasetTestUtils |  Minor | test | Tony Wu | Tony Wu |
| [HDFS-9281](https://issues.apache.org/jira/browse/HDFS-9281) | Change TestDeleteBlockPool to not explicitly use File to check block pool existence. |  Minor | test | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9582](https://issues.apache.org/jira/browse/HDFS-9582) | TestLeaseRecoveryStriped file missing Apache License header and not well formatted |  Minor | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-9721](https://issues.apache.org/jira/browse/HDFS-9721) | Allow Delimited PB OIV tool to run upon fsimage that contains INodeReference |  Major | . | Xiao Chen | Xiao Chen |
| [HDFS-9260](https://issues.apache.org/jira/browse/HDFS-9260) | Improve the performance and GC friendliness of NameNode startup and full block reports |  Major | datanode, namenode, performance | Staffan Friberg | Staffan Friberg |
| [HDFS-9795](https://issues.apache.org/jira/browse/HDFS-9795) | OIV Delimited should show which files are ACL-enabled. |  Trivial | tools | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9838](https://issues.apache.org/jira/browse/HDFS-9838) | Refactor the excessReplicateMap to a class |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-9734](https://issues.apache.org/jira/browse/HDFS-9734) | Refactoring of checksum failure report related codes |  Major | . | Kai Zheng | Kai Zheng |
| [HADOOP-12841](https://issues.apache.org/jira/browse/HADOOP-12841) | Update s3-related properties in core-default.xml |  Minor | fs/s3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9733](https://issues.apache.org/jira/browse/HDFS-9733) | Refactor DFSClient#getFileChecksum and DataXceiver#blockChecksum |  Major | . | Kai Zheng | Kai Zheng |
| [HDFS-9579](https://issues.apache.org/jira/browse/HDFS-9579) | Provide bytes-read-by-network-distance metrics at FileSystem.Statistics level |  Major | . | Ming Ma | Ming Ma |
| [HDFS-10266](https://issues.apache.org/jira/browse/HDFS-10266) | Remove unused properties dfs.client.file-block-storage-locations.num-threads and dfs.client.file-block-storage-locations.timeout.millis |  Minor | . | Ray Chiang | Ray Chiang |
| [HDFS-3702](https://issues.apache.org/jira/browse/HDFS-3702) | Add an option for NOT writing the blocks locally if there is a datanode on the same box as the client |  Minor | hdfs-client | Nicolas Liochon | Lei (Eddy) Xu |
| [HADOOP-12866](https://issues.apache.org/jira/browse/HADOOP-12866) | add a subcommand for gridmix |  Major | tools | Allen Wittenauer | Kai Sasaki |
| [HDFS-10172](https://issues.apache.org/jira/browse/HDFS-10172) | hdfs erasurecode command should remove the redundant -usage option |  Minor | erasure-coding | Wei-Chiu Chuang | Yuanbo Liu |
| [HADOOP-13142](https://issues.apache.org/jira/browse/HADOOP-13142) | Change project version from 3.0.0 to 3.0.0-alpha1 |  Blocker | . | Andrew Wang | Andrew Wang |
| [HADOOP-13161](https://issues.apache.org/jira/browse/HADOOP-13161) | remove JDK7 from Dockerfile |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [HDFS-9732](https://issues.apache.org/jira/browse/HDFS-9732) | Improve DelegationTokenIdentifier.toString() for better logging |  Major | . | Steve Loughran | Yongjun Zhang |
| [HADOOP-13112](https://issues.apache.org/jira/browse/HADOOP-13112) | Change CredentialShell to use CommandShell base class |  Minor | . | Matthew Paduano | Matthew Paduano |
| [HADOOP-12911](https://issues.apache.org/jira/browse/HADOOP-12911) | Upgrade Hadoop MiniKDC with Kerby |  Major | test | Jiajia Li | Jiajia Li |
| [HADOOP-13109](https://issues.apache.org/jira/browse/HADOOP-13109) | Add ability to edit existing token file via dtutil -alias flag |  Minor | security | Matthew Paduano | Matthew Paduano |
| [HADOOP-13220](https://issues.apache.org/jira/browse/HADOOP-13220) | Follow on fixups after upgraded mini-kdc using Kerby |  Major | test | Jiajia Li | Jiajia Li |
| [YARN-5278](https://issues.apache.org/jira/browse/YARN-5278) | Remove unused argument in TestRMWebServicesForCSWithPartitions#setupQueueConfiguration |  Minor | test | Akira Ajisaka | Tao Jie |
| [HADOOP-13034](https://issues.apache.org/jira/browse/HADOOP-13034) | Log message about input options in distcp lacks some items |  Minor | tools/distcp | Takashi Ohnishi | Takashi Ohnishi |
| [HADOOP-13235](https://issues.apache.org/jira/browse/HADOOP-13235) | Use Date and Time API in KafkaSink |  Minor | . | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-13337](https://issues.apache.org/jira/browse/HADOOP-13337) | Update maven-enforcer-plugin version to 1.4.1 |  Major | build | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [HDFS-9805](https://issues.apache.org/jira/browse/HDFS-9805) | TCP\_NODELAY not set before SASL handshake in data transfer pipeline |  Major | datanode | Gary Helmling | Gary Helmling |
| [HDFS-10488](https://issues.apache.org/jira/browse/HDFS-10488) | Update WebHDFS documentation regarding CREATE and MKDIR default permissions |  Minor | documentation, webhdfs | Wellington Chevreuil | Wellington Chevreuil |
| [HDFS-10387](https://issues.apache.org/jira/browse/HDFS-10387) | DataTransferProtocol#writeBlock missing some javadocs |  Minor | datanode, hdfs | Yongjun Zhang | John Zhuge |
| [HADOOP-13290](https://issues.apache.org/jira/browse/HADOOP-13290) | Appropriate use of generics in FairCallQueue |  Major | ipc | Konstantin Shvachko | Jonathan Hung |
| [YARN-5380](https://issues.apache.org/jira/browse/YARN-5380) | NMTimelinePublisher should use getMemorySize instead of getMemory |  Major | timelineserver | Karthik Kambatla | Vrushali C |
| [HADOOP-13298](https://issues.apache.org/jira/browse/HADOOP-13298) | Fix the leftover L&N files in hadoop-build-tools/src/main/resources/META-INF/ |  Minor | . | Xiao Chen | Tsuyoshi Ozawa |
| [HDFS-10647](https://issues.apache.org/jira/browse/HDFS-10647) | Add a link to HDFS disk balancer document in site.xml |  Major | documentation | Akira Ajisaka | Yiqun Lin |
| [HADOOP-13383](https://issues.apache.org/jira/browse/HADOOP-13383) | Update release notes for 3.0.0-alpha1 |  Blocker | documentation | Andrew Wang | Andrew Wang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2299](https://issues.apache.org/jira/browse/HDFS-2299) | TestOfflineEditsViewer is failing on trunk |  Major | test | Aaron T. Myers | Uma Maheswara Rao G |
| [HDFS-2310](https://issues.apache.org/jira/browse/HDFS-2310) | TestBackupNode fails since HADOOP-7524 went in. |  Major | test | Ivan Kelly | Ivan Kelly |
| [HDFS-2313](https://issues.apache.org/jira/browse/HDFS-2313) | Rat excludes has a typo for excluding editsStored files |  Major | test | Aaron T. Myers | Aaron T. Myers |
| [MAPREDUCE-2978](https://issues.apache.org/jira/browse/MAPREDUCE-2978) | hudson findbugs not reporting properly |  Major | mrv2 | Thomas Graves | Tom White |
| [HDFS-46](https://issues.apache.org/jira/browse/HDFS-46) | The namespace quota of root directory should not be Integer.MAX\_VALUE |  Major | namenode | Tsz Wo Nicholas Sze | Uma Maheswara Rao G |
| [HDFS-2373](https://issues.apache.org/jira/browse/HDFS-2373) | Commands using webhdfs and hftp print unnecessary debug information on the console with security enabled |  Major | webhdfs | Arpit Gupta | Arpit Gupta |
| [HADOOP-6220](https://issues.apache.org/jira/browse/HADOOP-6220) | HttpServer wraps InterruptedExceptions by IOExceptions if interrupted in startup |  Minor | util | Steve Loughran | Steve Loughran |
| [MAPREDUCE-3149](https://issues.apache.org/jira/browse/MAPREDUCE-3149) | add a test to verify that buildDTAuthority works for cases with no authority. |  Major | test | John George | John George |
| [HADOOP-7769](https://issues.apache.org/jira/browse/HADOOP-7769) | TestJMXJsonServlet is failing |  Major | test | Tom White | Tom White |
| [HADOOP-8177](https://issues.apache.org/jira/browse/HADOOP-8177) | MBeans shouldn't try to register when it fails to create MBeanName |  Minor | metrics | Devaraj K | Devaraj K |
| [HDFS-3116](https://issues.apache.org/jira/browse/HDFS-3116) | Typo in fetchdt error message |  Trivial | hdfs-client | Aaron T. Myers | AOE Takashi |
| [HADOOP-7757](https://issues.apache.org/jira/browse/HADOOP-7757) | Test file reference count is at least 3x actual value |  Major | build | Jonathan Eagles | Jonathan Eagles |
| [HDFS-3265](https://issues.apache.org/jira/browse/HDFS-3265) | PowerPc Build error. |  Major | build | Kumar Ravi | Kumar Ravi |
| [HADOOP-8339](https://issues.apache.org/jira/browse/HADOOP-8339) | jenkins complaining about 16 javadoc warnings |  Major | build | Thomas Graves | Robert Joseph Evans |
| [HADOOP-8354](https://issues.apache.org/jira/browse/HADOOP-8354) | test-patch findbugs may fail if a dependent module is changed |  Major | build | Tom White | Robert Joseph Evans |
| [HADOOP-8395](https://issues.apache.org/jira/browse/HADOOP-8395) | Text shell command unnecessarily demands that a SequenceFile's key class be WritableComparable |  Trivial | util | Harsh J | Harsh J |
| [HDFS-2312](https://issues.apache.org/jira/browse/HDFS-2312) | FSNamesystem header comment says it's for the DN |  Trivial | namenode | Aaron T. Myers | Harsh J |
| [HDFS-3197](https://issues.apache.org/jira/browse/HDFS-3197) | Incorrect class comments in a few tests |  Trivial | test | Aaron T. Myers | Andy Isaacson |
| [HADOOP-8360](https://issues.apache.org/jira/browse/HADOOP-8360) | empty-configuration.xml fails xml validation |  Minor | test | Radim Kolar | Radim Kolar |
| [HADOOP-8413](https://issues.apache.org/jira/browse/HADOOP-8413) | test-patch.sh gives out the wrong links for newPatchFindbugsWarnings |  Minor | precommit | Colin P. McCabe | Colin P. McCabe |
| [HADOOP-6871](https://issues.apache.org/jira/browse/HADOOP-6871) | When the value of a configuration key is set to its unresolved form, it causes the IllegalStateException in Configuration.get() stating that substitution depth is too large. |  Major | conf | Arvind Prabhakar | Arvind Prabhakar |
| [MAPREDUCE-3990](https://issues.apache.org/jira/browse/MAPREDUCE-3990) | MRBench allows Long-sized input-lines value but parses CLI argument as an Integer |  Trivial | benchmarks | Harsh J | Harsh J |
| [HDFS-3462](https://issues.apache.org/jira/browse/HDFS-3462) | TestDFSClientRetries.busyTest() should restore default xceiver count in the config. |  Major | test | Konstantin Shvachko | madhukara phatak |
| [HDFS-3550](https://issues.apache.org/jira/browse/HDFS-3550) | raid added javadoc warnings |  Minor | build | Thomas Graves | Jason Lowe |
| [HDFS-3549](https://issues.apache.org/jira/browse/HDFS-3549) | dist tar build fails in hadoop-hdfs-raid project |  Critical | build | Jason Lowe | Jason Lowe |
| [HADOOP-8548](https://issues.apache.org/jira/browse/HADOOP-8548) | test-patch.sh shows an incorrect link in Jekins builds |  Major | build | Kihwal Lee | Kihwal Lee |
| [HDFS-3614](https://issues.apache.org/jira/browse/HDFS-3614) | Revert unused MiniDFSCluster constructor from HDFS-3049 |  Blocker | . | Arun C Murthy | Arun C Murthy |
| [HADOOP-8584](https://issues.apache.org/jira/browse/HADOOP-8584) | test-patch.sh should not immediately exit when no tests are added or modified |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [HADOOP-8821](https://issues.apache.org/jira/browse/HADOOP-8821) | Findbugs warning Configuration.dumpDeprecatedKeys() concatenates strings using + in a loop |  Trivial | conf | Suresh Srinivas | Suresh Srinivas |
| [HADOOP-7256](https://issues.apache.org/jira/browse/HADOOP-7256) | Resource leak during failure scenario of closing of resources. |  Minor | util | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HADOOP-8840](https://issues.apache.org/jira/browse/HADOOP-8840) | Fix the test-patch colorizer to cover all sorts of +1 lines. |  Major | build | Harsh J | Harsh J |
| [MAPREDUCE-4685](https://issues.apache.org/jira/browse/MAPREDUCE-4685) | DBCount should not use ACCESS |  Major | examples | Viji | Viji |
| [MAPREDUCE-3223](https://issues.apache.org/jira/browse/MAPREDUCE-3223) | Remove MR1 configs from mapred-default.xml |  Major | documentation, mrv2 | Todd Lipcon | Todd Lipcon |
| [HADOOP-8839](https://issues.apache.org/jira/browse/HADOOP-8839) | test-patch's -1 on @author tag presence doesn't cause a -1 to the overall result |  Trivial | build | Harsh J | Harsh J |
| [MAPREDUCE-4695](https://issues.apache.org/jira/browse/MAPREDUCE-4695) | Fix LocalRunner on trunk after MAPREDUCE-3223 broke it |  Blocker | test | Harsh J | Harsh J |
| [HDFS-3735](https://issues.apache.org/jira/browse/HDFS-3735) | NameNode WebUI should allow sorting live datanode list by fields Block Pool Used, Block Pool Used(%) and Failed Volumes. |  Major | namenode | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-4003](https://issues.apache.org/jira/browse/HDFS-4003) | test-patch should build the common native libs before running hdfs tests |  Major | build | Eli Collins | Colin P. McCabe |
| [MAPREDUCE-4574](https://issues.apache.org/jira/browse/MAPREDUCE-4574) | Fix TotalOrderParitioner to work with non-WritableComparable key types |  Trivial | client | Harsh J | Harsh J |
| [HADOOP-8918](https://issues.apache.org/jira/browse/HADOOP-8918) | dev-support/test-patch.sh is parsing modified files wrong |  Major | build | Raja Aluri | Raja Aluri |
| [HADOOP-8910](https://issues.apache.org/jira/browse/HADOOP-8910) | Add examples to GlobExpander#expand method |  Minor | fs | Suresh Srinivas | Suresh Srinivas |
| [HDFS-2434](https://issues.apache.org/jira/browse/HDFS-2434) | TestNameNodeMetrics.testCorruptBlock fails intermittently |  Major | test | Uma Maheswara Rao G | Jing Zhao |
| [HDFS-4067](https://issues.apache.org/jira/browse/HDFS-4067) | TestUnderReplicatedBlocks may fail due to ReplicaAlreadyExistsException |  Major | test | Eli Collins | Jing Zhao |
| [HDFS-4115](https://issues.apache.org/jira/browse/HDFS-4115) | TestHDFSCLI.testAll fails one test due to number format |  Minor | test | Trevor Robinson | Trevor Robinson |
| [HADOOP-8974](https://issues.apache.org/jira/browse/HADOOP-8974) | TestDFVariations fails on Windows |  Major | fs | Chris Nauroth | Chris Nauroth |
| [HADOOP-9037](https://issues.apache.org/jira/browse/HADOOP-9037) | Bug in test-patch.sh and precommit build process |  Critical | build | Kihwal Lee | Kihwal Lee |
| [HDFS-4310](https://issues.apache.org/jira/browse/HDFS-4310) | fix test org.apache.hadoop.hdfs.server.datanode.TestStartSecureDataNode |  Major | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HDFS-4275](https://issues.apache.org/jira/browse/HDFS-4275) | MiniDFSCluster-based tests fail on Windows due to failure to delete test namenode directory |  Major | test | Chris Nauroth | Chris Nauroth |
| [HDFS-4338](https://issues.apache.org/jira/browse/HDFS-4338) | TestNameNodeMetrics#testCorruptBlock is flaky |  Major | namenode | Andrew Wang | Andrew Wang |
| [HADOOP-9139](https://issues.apache.org/jira/browse/HADOOP-9139) | improve script hadoop-common-project/hadoop-common/src/test/resources/kdc/killKdc.sh |  Minor | . | Ivan A. Veselovsky | Ivan A. Veselovsky |
| [HADOOP-9202](https://issues.apache.org/jira/browse/HADOOP-9202) | test-patch.sh fails during mvn eclipse:eclipse if patch adds a new module to the build |  Major | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-9249](https://issues.apache.org/jira/browse/HADOOP-9249) | hadoop-maven-plugins version-info goal causes build failure when running with Clover |  Major | build | Chris Nauroth | Chris Nauroth |
| [MAPREDUCE-5012](https://issues.apache.org/jira/browse/MAPREDUCE-5012) | Typo in javadoc for IdentityMapper class |  Trivial | documentation | Adam Monsen | Adam Monsen |
| [HDFS-4391](https://issues.apache.org/jira/browse/HDFS-4391) | TestDataTransferKeepalive fails when tests are executed in a certain order. |  Major | test | Konstantin Shvachko | Andrew Wang |
| [HADOOP-9393](https://issues.apache.org/jira/browse/HADOOP-9393) | TestRPC fails with JDK7 |  Major | . | Andrew Wang | Andrew Wang |
| [HADOOP-9431](https://issues.apache.org/jira/browse/HADOOP-9431) | TestSecurityUtil#testLocalHostNameForNullOrWild on systems where hostname contains capital letters |  Trivial | security, test | Chris Nauroth | Chris Nauroth |
| [HADOOP-9261](https://issues.apache.org/jira/browse/HADOOP-9261) | S3n filesystem can move a directory under itself -and so lose data |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-9265](https://issues.apache.org/jira/browse/HADOOP-9265) | S3 blockstore filesystem breaks part of the Filesystem contract |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-9433](https://issues.apache.org/jira/browse/HADOOP-9433) | TestLocalFileSystem#testHasFileDescriptor leaks file handle |  Major | fs, test | Chris Nauroth | Chris Nauroth |
| [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL |  Minor | api | Steve Loughran | Steve Loughran |
| [HDFS-4757](https://issues.apache.org/jira/browse/HDFS-4757) | Update FSDirectory#inodeMap when replacing an INodeDirectory while setting quota |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4761](https://issues.apache.org/jira/browse/HDFS-4761) | Refresh INodeMap in FSDirectory#reset() |  Minor | namenode | Jing Zhao | Jing Zhao |
| [HDFS-4904](https://issues.apache.org/jira/browse/HDFS-4904) | Remove JournalService |  Major | namenode | Suresh Srinivas | Arpit Agarwal |
| [HADOOP-9186](https://issues.apache.org/jira/browse/HADOOP-9186) | test-patch.sh should report build failure to JIRA |  Major | . | Binglin Chang | Binglin Chang |
| [HADOOP-9583](https://issues.apache.org/jira/browse/HADOOP-9583) | test-patch gives +1 despite build failure when running tests |  Critical | . | Jason Lowe | Jason Lowe |
| [YARN-1471](https://issues.apache.org/jira/browse/YARN-1471) | The SLS simulator is not running the preemption policy for CapacityScheduler |  Minor | . | Carlo Curino | Carlo Curino |
| [HDFS-5794](https://issues.apache.org/jira/browse/HDFS-5794) | Fix the inconsistency of layout version number of ADD\_DATANODE\_AND\_STORAGE\_UUIDS between trunk and branch-2 |  Minor | namenode | Jing Zhao | Jing Zhao |
| [MAPREDUCE-5717](https://issues.apache.org/jira/browse/MAPREDUCE-5717) | Task pings are interpreted as task progress |  Major | . | Jason Lowe | Jason Lowe |
| [HADOOP-10325](https://issues.apache.org/jira/browse/HADOOP-10325) | improve jenkins javadoc warnings from test-patch.sh |  Major | . | Colin P. McCabe | Colin P. McCabe |
| [MAPREDUCE-5912](https://issues.apache.org/jira/browse/MAPREDUCE-5912) | Task.calculateOutputSize does not handle Windows files after MAPREDUCE-5196 |  Major | client | Remus Rusanu | Remus Rusanu |
| [HADOOP-10831](https://issues.apache.org/jira/browse/HADOOP-10831) | UserProvider is not thread safe |  Major | security | Benoy Antony | Benoy Antony |
| [YARN-2436](https://issues.apache.org/jira/browse/YARN-2436) | yarn application help doesn't work |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11002](https://issues.apache.org/jira/browse/HADOOP-11002) | shell escapes are incompatible with previous releases |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-10996](https://issues.apache.org/jira/browse/HADOOP-10996) | Stop violence in the \*\_HOME |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11033](https://issues.apache.org/jira/browse/HADOOP-11033) | shell scripts ignore JAVA\_HOME on OS X |  Major | scripts | Lei (Eddy) Xu | Allen Wittenauer |
| [HADOOP-11052](https://issues.apache.org/jira/browse/HADOOP-11052) | hadoop\_verify\_secure\_prereq's results aren't checked in bin/hdfs |  Critical | scripts | Allen Wittenauer | Allen Wittenauer |
| [HDFS-6893](https://issues.apache.org/jira/browse/HDFS-6893) | crypto subcommand is not sorted properly in hdfs's hadoop\_usage |  Trivial | scripts | Allen Wittenauer | David Luo |
| [YARN-2525](https://issues.apache.org/jira/browse/YARN-2525) | yarn logs command gives error on trunk |  Minor | scripts | Prakash Ramachandran | Akira Ajisaka |
| [HADOOP-11055](https://issues.apache.org/jira/browse/HADOOP-11055) | non-daemon pid files are missing |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11022](https://issues.apache.org/jira/browse/HADOOP-11022) | User replaced functions get lost 2-3 levels deep (e.g., sbin) |  Critical | scripts | Allen Wittenauer | Allen Wittenauer |
| [HDFS-7204](https://issues.apache.org/jira/browse/HDFS-7204) | balancer doesn't run as a daemon |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11240](https://issues.apache.org/jira/browse/HADOOP-11240) | Jenkins build seems to be broken by changes in test-patch.sh |  Blocker | . | Zhijie Shen | Steve Loughran |
| [HDFS-7319](https://issues.apache.org/jira/browse/HDFS-7319) | Remove dead link to HFTP documentation from index.xml |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11284](https://issues.apache.org/jira/browse/HADOOP-11284) | Fix variable name mismatches in hadoop-functions.sh |  Minor | scripts | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11298](https://issues.apache.org/jira/browse/HADOOP-11298) | slaves.sh and stop-all.sh are missing slashes |  Trivial | scripts | Allen Wittenauer | Allen Wittenauer |
| [MAPREDUCE-6161](https://issues.apache.org/jira/browse/MAPREDUCE-6161) | mapred hsadmin command missing from trunk |  Major | scripts | Jason Lowe | Allen Wittenauer |
| [HDFS-7407](https://issues.apache.org/jira/browse/HDFS-7407) | Minor typo in privileged pid/out/log names |  Minor | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11296](https://issues.apache.org/jira/browse/HADOOP-11296) | hadoop-daemons.sh throws 'host1: bash: host3: command not found...' |  Major | scripts | Vinayakumar B | Vinayakumar B |
| [HADOOP-11380](https://issues.apache.org/jira/browse/HADOOP-11380) | Restore Rack Awareness documentation |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11397](https://issues.apache.org/jira/browse/HADOOP-11397) | Can't override HADOOP\_IDENT\_STRING |  Trivial | . | Allen Wittenauer | Kengo Seki |
| [HADOOP-10908](https://issues.apache.org/jira/browse/HADOOP-10908) | Common needs updates for shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [YARN-3002](https://issues.apache.org/jira/browse/YARN-3002) | YARN documentation needs updating post-shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11473](https://issues.apache.org/jira/browse/HADOOP-11473) | test-patch says "-1 overall" even when all checks are +1 |  Major | build | Jason Lowe | Jason Lowe |
| [HDFS-7581](https://issues.apache.org/jira/browse/HDFS-7581) | HDFS documentation needs updating post-shell rewrite |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11484](https://issues.apache.org/jira/browse/HADOOP-11484) | hadoop-mapreduce-client-nativetask fails to build on ARM AARCH64 due to x86 asm statements |  Minor | native | Edward Nevill | Edward Nevill |
| [HDFS-7667](https://issues.apache.org/jira/browse/HDFS-7667) | Various typos and improvements to HDFS Federation doc |  Minor | documentation | Charles Lamb | Charles Lamb |
| [HDFS-3750](https://issues.apache.org/jira/browse/HDFS-3750) | API docs don't include HDFS |  Critical | documentation | Eli Collins | Jolly Chen |
| [HDFS-7320](https://issues.apache.org/jira/browse/HDFS-7320) | The appearance of hadoop-hdfs-httpfs site docs is inconsistent |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7670](https://issues.apache.org/jira/browse/HDFS-7670) | HDFS Quota guide has typos, incomplete command lines |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7669](https://issues.apache.org/jira/browse/HDFS-7669) | HDFS Design Doc references commands that no longer exist. |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HDFS-7755](https://issues.apache.org/jira/browse/HDFS-7755) | httpfs shell code has hardcoded path to bash |  Major | scripts | Dmitry Sivachenko | Dmitry Sivachenko |
| [MAPREDUCE-4413](https://issues.apache.org/jira/browse/MAPREDUCE-4413) | MR lib dir contains jdiff (which is gpl) |  Critical | build | Eli Collins | Nemon Lou |
| [HADOOP-11559](https://issues.apache.org/jira/browse/HADOOP-11559) | Add links to RackAwareness and InterfaceClassification to site index |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11580](https://issues.apache.org/jira/browse/HADOOP-11580) | Remove SingleNodeSetup.md from trunk |  Major | documentation | Allen Wittenauer | Akira Ajisaka |
| [HADOOP-11583](https://issues.apache.org/jira/browse/HADOOP-11583) | Fix syntax error in SecureMode.md |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11437](https://issues.apache.org/jira/browse/HADOOP-11437) | Remove the version and author information from distcp's README file |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11585](https://issues.apache.org/jira/browse/HADOOP-11585) | Fix formatting in Tracing.md |  Trivial | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-7711](https://issues.apache.org/jira/browse/HDFS-7711) | Fix various typos in ClusterSetup.md |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-7791](https://issues.apache.org/jira/browse/HDFS-7791) | dfs count -v should be added to quota documentation |  Major | documentation | Allen Wittenauer | Akira Ajisaka |
| [HDFS-7803](https://issues.apache.org/jira/browse/HDFS-7803) | Wrong command mentioned in HDFSHighAvailabilityWithQJM documentation |  Minor | documentation | Arshad Mohammad | Arshad Mohammad |
| [MAPREDUCE-6234](https://issues.apache.org/jira/browse/MAPREDUCE-6234) | TestHighRamJob fails due to the change in MAPREDUCE-5785 |  Major | contrib/gridmix, mrv2 | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-11625](https://issues.apache.org/jira/browse/HADOOP-11625) | Minor fixes to command manual & SLA doc |  Major | documentation | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-11637](https://issues.apache.org/jira/browse/HADOOP-11637) | bash location hard-coded in shell scripts |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [MAPREDUCE-6223](https://issues.apache.org/jira/browse/MAPREDUCE-6223) | TestJobConf#testNegativeValueForTaskVmem failures |  Major | test | Gera Shegalov | Varun Saxena |
| [HADOOP-10774](https://issues.apache.org/jira/browse/HADOOP-10774) | Update KerberosTestUtils for hadoop-auth tests when using IBM Java |  Major | security | sangamesh | sangamesh |
| [HDFS-4681](https://issues.apache.org/jira/browse/HDFS-4681) | TestBlocksWithNotEnoughRacks#testCorruptBlockRereplicatedAcrossRacks fails using IBM java |  Major | test | Tian Hong Wang | Ayappan |
| [HADOOP-11653](https://issues.apache.org/jira/browse/HADOOP-11653) | shellprofiles should require .sh extension |  Major | scripts | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11668](https://issues.apache.org/jira/browse/HADOOP-11668) | hadoop-daemons.sh bw compat broke with --slaves change |  Major | scripts | Vinayakumar B | Vinayakumar B |
| [HADOOP-11703](https://issues.apache.org/jira/browse/HADOOP-11703) | git should ignore .DS\_Store files on Mac OS X |  Major | . | Abin Shahab | Abin Shahab |
| [HDFS-7804](https://issues.apache.org/jira/browse/HDFS-7804) | haadmin command usage #HDFSHighAvailabilityWithQJM.html |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8110](https://issues.apache.org/jira/browse/HDFS-8110) | Remove unsupported 'hdfs namenode -rollingUpgrade downgrade' from document |  Minor | documentation | J.Andreina | J.Andreina |
| [HDFS-7673](https://issues.apache.org/jira/browse/HDFS-7673) | synthetic load generator docs give incorrect/incomplete commands |  Major | documentation | Allen Wittenauer | Brahma Reddy Battula |
| [HADOOP-11865](https://issues.apache.org/jira/browse/HADOOP-11865) | Incorrect path mentioned in document for accessing script files |  Major | documentation | J.Andreina | J.Andreina |
| [MAPREDUCE-6343](https://issues.apache.org/jira/browse/MAPREDUCE-6343) | JobConf.parseMaximumHeapSizeMB() fails to parse value greater than 2GB expressed in bytes |  Major | . | Hao Xia | Hao Xia |
| [HDFS-8349](https://issues.apache.org/jira/browse/HDFS-8349) | Remove .xml and documentation references to dfs.webhdfs.enabled |  Minor | . | Ray Chiang | Ray Chiang |
| [HADOOP-11775](https://issues.apache.org/jira/browse/HADOOP-11775) | Fix Javadoc typos in hadoop-openstack module |  Trivial | documentation | Chen He | Yanjun Wang |
| [HDFS-8412](https://issues.apache.org/jira/browse/HDFS-8412) | Fix the test failures in HTTPFS: In some tests setReplication called after fs close. |  Major | fs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-12016](https://issues.apache.org/jira/browse/HADOOP-12016) | Typo in FileSystem:: listStatusIterator |  Trivial | fs | Jakob Homan | Arthur Vigil |
| [YARN-2355](https://issues.apache.org/jira/browse/YARN-2355) | MAX\_APP\_ATTEMPTS\_ENV may no longer be a useful env var for a container |  Major | . | Zhijie Shen | Darrell Taylor |
| [HADOOP-11406](https://issues.apache.org/jira/browse/HADOOP-11406) | xargs -P is not portable |  Critical | scripts | Allen Wittenauer | Kengo Seki |
| [HADOOP-11983](https://issues.apache.org/jira/browse/HADOOP-11983) | HADOOP\_USER\_CLASSPATH\_FIRST works the opposite of what it is supposed to do |  Major | scripts | Sangjin Lee | Sangjin Lee |
| [HADOOP-9905](https://issues.apache.org/jira/browse/HADOOP-9905) | remove dependency of zookeeper for hadoop-client |  Major | . | Vinayakumar B | Vinayakumar B |
| [HADOOP-11347](https://issues.apache.org/jira/browse/HADOOP-11347) | RawLocalFileSystem#mkdir and create should honor umask |  Major | fs | Chris Nauroth | Varun Saxena |
| [MAPREDUCE-6396](https://issues.apache.org/jira/browse/MAPREDUCE-6396) | TestPipeApplication fails by NullPointerException |  Major | test | Akira Ajisaka | Brahma Reddy Battula |
| [MAPREDUCE-6406](https://issues.apache.org/jira/browse/MAPREDUCE-6406) | Update FileOutputCommitter.FILEOUTPUTCOMMITTER\_ALGORITHM\_VERSION\_DEFAULT to match mapred-default.xml |  Minor | mrv2 | Ray Chiang | Ray Chiang |
| [HADOOP-11958](https://issues.apache.org/jira/browse/HADOOP-11958) | MetricsSystemImpl fails to show backtrace when an error occurs |  Major | . | Jason Lowe | Jason Lowe |
| [HDFS-8627](https://issues.apache.org/jira/browse/HDFS-8627) | NPE thrown if unable to fetch token from Namenode |  Major | . | J.Andreina | J.Andreina |
| [HADOOP-12164](https://issues.apache.org/jira/browse/HADOOP-12164) | Fix TestMove and TestFsShellReturnCode failed to get command name using reflection. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-8657](https://issues.apache.org/jira/browse/HDFS-8657) | Update docs for mSNN |  Minor | . | Jesse Yates | Jesse Yates |
| [HDFS-8800](https://issues.apache.org/jira/browse/HDFS-8800) | hdfs --daemon stop namenode corrupts logs |  Major | scripts | John Smith | John Smith |
| [YARN-3915](https://issues.apache.org/jira/browse/YARN-3915) | scmadmin help message correction |  Minor | yarn | Bibin A Chundatt | Bibin A Chundatt |
| [MAPREDUCE-5801](https://issues.apache.org/jira/browse/MAPREDUCE-5801) | Uber mode's log message is missing a vcore reason |  Minor | . | Steven K. Wong | Steven K. Wong |
| [HADOOP-11762](https://issues.apache.org/jira/browse/HADOOP-11762) | Enable swift distcp to secure HDFS |  Major | fs/swift | Chen He | Chen He |
| [MAPREDUCE-6257](https://issues.apache.org/jira/browse/MAPREDUCE-6257) | Document encrypted spills |  Major | security | Allen Wittenauer | Bibin A Chundatt |
| [HADOOP-12346](https://issues.apache.org/jira/browse/HADOOP-12346) | Increase some default timeouts / retries for S3a connector |  Major | fs/s3 | Sean Mackrory | Sean Mackrory |
| [HDFS-8716](https://issues.apache.org/jira/browse/HDFS-8716) | introduce a new config specifically for safe mode block count |  Major | . | Chang Li | Chang Li |
| [HDFS-6763](https://issues.apache.org/jira/browse/HDFS-6763) | Initialize file system-wide quota once on transitioning to active |  Major | ha, namenode | Daryn Sharp | Kihwal Lee |
| [HDFS-9133](https://issues.apache.org/jira/browse/HDFS-9133) | ExternalBlockReader and ReplicaAccessor need to return -1 on read when at EOF |  Major | hdfs-client | Colin P. McCabe | Colin P. McCabe |
| [HDFS-9147](https://issues.apache.org/jira/browse/HDFS-9147) | Fix the setting of visibleLength in ExternalBlockReader |  Major | hdfs-client | Colin P. McCabe | Colin P. McCabe |
| [HDFS-9185](https://issues.apache.org/jira/browse/HDFS-9185) | Fix null tracer in ErasureCodingWorker |  Critical | erasure-coding | Rakesh R | Rakesh R |
| [HDFS-9191](https://issues.apache.org/jira/browse/HDFS-9191) | Typo in  Hdfs.java.  NoSuchElementException is misspelled |  Trivial | documentation | Catherine Palmer | Catherine Palmer |
| [HDFS-9182](https://issues.apache.org/jira/browse/HDFS-9182) | Cleanup the findbugs and other issues after HDFS EC merged to trunk. |  Critical | erasure-coding | Yi Liu | Uma Maheswara Rao G |
| [HDFS-9176](https://issues.apache.org/jira/browse/HDFS-9176) | TestDirectoryScanner#testThrottling often fails. |  Minor | test | Yi Liu | Daniel Templeton |
| [HDFS-9204](https://issues.apache.org/jira/browse/HDFS-9204) | DatanodeDescriptor#PendingReplicationWithoutTargets is wrongly calculated |  Major | . | Jing Zhao | Mingliang Liu |
| [HDFS-9217](https://issues.apache.org/jira/browse/HDFS-9217) | Fix broken findbugsExcludeFile.xml for hadoop-hdfs-client module |  Critical | build | Mingliang Liu | Mingliang Liu |
| [HADOOP-12364](https://issues.apache.org/jira/browse/HADOOP-12364) | Deleting pid file after stop is causing the daemons to keep restarting |  Minor | . | Siqi Li | Siqi Li |
| [HDFS-9237](https://issues.apache.org/jira/browse/HDFS-9237) | NPE at TestDataNodeVolumeFailureToleration#tearDown |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-12493](https://issues.apache.org/jira/browse/HADOOP-12493) | bash unit tests are failing |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12418](https://issues.apache.org/jira/browse/HADOOP-12418) | TestRPC.testRPCInterruptedSimple fails intermittently |  Major | test | Steve Loughran | Kihwal Lee |
| [HADOOP-9692](https://issues.apache.org/jira/browse/HADOOP-9692) | Improving log message when SequenceFile reader throws EOFException on zero-length file |  Major | . | Chu Tong | Zhe Zhang |
| [HADOOP-12515](https://issues.apache.org/jira/browse/HADOOP-12515) | Mockito dependency is missing in hadoop-kafka module |  Major | test | Kai Zheng | Kai Zheng |
| [HADOOP-12494](https://issues.apache.org/jira/browse/HADOOP-12494) | fetchdt stores the token based on token kind instead of token service |  Major | . | HeeSoo Kim | HeeSoo Kim |
| [HDFS-9279](https://issues.apache.org/jira/browse/HDFS-9279) | Decomissioned capacity should not be considered for configured/used capacity |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [MAPREDUCE-6525](https://issues.apache.org/jira/browse/MAPREDUCE-6525) | Fix test failure of TestMiniMRClientCluster.testRestart |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-4937](https://issues.apache.org/jira/browse/HDFS-4937) | ReplicationMonitor can infinite-loop in BlockPlacementPolicyDefault#chooseRandom() |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [MAPREDUCE-3914](https://issues.apache.org/jira/browse/MAPREDUCE-3914) | Mismatched free() / delete / delete [] in HadoopPipes |  Major | pipes | Charles Earl | Joe Mudd |
| [MAPREDUCE-1125](https://issues.apache.org/jira/browse/MAPREDUCE-1125) | SerialUtils.cc: deserializeFloat is out of sync with SerialUtils.hh |  Major | pipes | Simone Leo | Simone Leo |
| [HDFS-9318](https://issues.apache.org/jira/browse/HDFS-9318) | considerLoad factor can be improved |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [HADOOP-12553](https://issues.apache.org/jira/browse/HADOOP-12553) | [JDK8] Fix javadoc error caused by illegal tag |  Blocker | build, documentation | Akira Ajisaka | Akira Ajisaka |
| [MAPREDUCE-5763](https://issues.apache.org/jira/browse/MAPREDUCE-5763) | Warn message about httpshuffle in NM logs |  Major | . | Sandy Ryza | Akira Ajisaka |
| [HDFS-9383](https://issues.apache.org/jira/browse/HDFS-9383) | TestByteArrayManager#testByteArrayManager fails |  Major | . | Kihwal Lee | Tsz Wo Nicholas Sze |
| [HADOOP-12482](https://issues.apache.org/jira/browse/HADOOP-12482) | Race condition in JMX cache update |  Major | . | Tony Wu | Tony Wu |
| [HDFS-9396](https://issues.apache.org/jira/browse/HDFS-9396) | Total files and directories on jmx and web UI on standby is uninitialized |  Blocker | . | Kihwal Lee | Kihwal Lee |
| [HDFS-9423](https://issues.apache.org/jira/browse/HDFS-9423) | Fix intermittent failure of TestEditLogTailer |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [MAPREDUCE-6555](https://issues.apache.org/jira/browse/MAPREDUCE-6555) | TestMRAppMaster fails on trunk |  Major | . | Varun Saxena | Junping Du |
| [HDFS-9451](https://issues.apache.org/jira/browse/HDFS-9451) | Clean up depreated umasks and related unit tests |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-4422](https://issues.apache.org/jira/browse/YARN-4422) | Generic AHS sometimes doesn't show started, node, or logs on App page |  Major | . | Eric Payne | Eric Payne |
| [HADOOP-12618](https://issues.apache.org/jira/browse/HADOOP-12618) | NPE in TestSequenceFile |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-12638](https://issues.apache.org/jira/browse/HADOOP-12638) | UnsatisfiedLinkError while checking ISA-L in checknative command. |  Minor | native | Kai Sasaki | Kai Sasaki |
| [HADOOP-12192](https://issues.apache.org/jira/browse/HADOOP-12192) | update releasedocmaker commands |  Blocker | . | Allen Wittenauer | Allen Wittenauer |
| [HDFS-9570](https://issues.apache.org/jira/browse/HDFS-9570) | Minor typos, grammar, and case sensitivity cleanup in HdfsPermissionsGuide.md's |  Trivial | documentation | Travis Campbell | Travis Campbell |
| [HADOOP-12615](https://issues.apache.org/jira/browse/HADOOP-12615) | Fix NPE in MiniKMS.start() |  Minor | kms, test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9533](https://issues.apache.org/jira/browse/HDFS-9533) | seen\_txid in the shared edits directory is modified during bootstrapping |  Major | ha, namenode | Kihwal Lee | Kihwal Lee |
| [HADOOP-12647](https://issues.apache.org/jira/browse/HADOOP-12647) | Add /usr/lib default for ISAL library and fix missing .c file in CMakeLists |  Major | . | Kai Zheng | Kai Zheng |
| [HDFS-7163](https://issues.apache.org/jira/browse/HDFS-7163) | WebHdfsFileSystem should retry reads according to the configured retry policy. |  Major | webhdfs | Eric Payne | Eric Payne |
| [HDFS-9376](https://issues.apache.org/jira/browse/HDFS-9376) | TestSeveralNameNodes fails occasionally |  Major | test | Kihwal Lee | Masatake Iwasaki |
| [HDFS-9615](https://issues.apache.org/jira/browse/HDFS-9615) | Fix variable name typo in DFSConfigKeys |  Trivial | . | Ray Chiang | Ray Chiang |
| [HADOOP-12714](https://issues.apache.org/jira/browse/HADOOP-12714) | Fix hadoop-mapreduce-client-nativetask unit test which fails because it is not able to open the "glibc bug spill" file. |  Major | native | Colin P. McCabe | Colin P. McCabe |
| [HADOOP-12492](https://issues.apache.org/jira/browse/HADOOP-12492) | maven install triggers bats test |  Major | build | Allen Wittenauer | Allen Wittenauer |
| [HDFS-9659](https://issues.apache.org/jira/browse/HDFS-9659) | EditLogTailerThread to Active Namenode RPC should timeout |  Critical | ha, namenode | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-9701](https://issues.apache.org/jira/browse/HDFS-9701) | DN may deadlock when hot-swapping under load |  Major | . | Xiao Chen | Xiao Chen |
| [HADOOP-12757](https://issues.apache.org/jira/browse/HADOOP-12757) | Findbug compilation fails for 'Kafka Library support' |  Major | . | Rohith Sharma K S | Akira Ajisaka |
| [HDFS-9713](https://issues.apache.org/jira/browse/HDFS-9713) | DataXceiver#copyBlock should return if block is pinned |  Major | datanode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-9777](https://issues.apache.org/jira/browse/HDFS-9777) | Fix typos in DFSAdmin command line and documentation |  Trivial | hdfs-client | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9787](https://issues.apache.org/jira/browse/HDFS-9787) | SNNs stop uploading FSImage to ANN once isPrimaryCheckPointer changed to false. |  Major | ha | Guocui Mi | Guocui Mi |
| [HADOOP-12070](https://issues.apache.org/jira/browse/HADOOP-12070) | Some of the bin/hadoop subcommands are not available on Windows |  Major | scripts | Kengo Seki | Kengo Seki |
| [HDFS-9919](https://issues.apache.org/jira/browse/HDFS-9919) | TestStandbyCheckpoints#testNonPrimarySBNUploadFSImage waitForCheckpoint incorrectly |  Minor | test | Yiqun Lin | Yiqun Lin |
| [HADOOP-12899](https://issues.apache.org/jira/browse/HADOOP-12899) | External distribution stitching scripts do not work correctly on Windows. |  Blocker | build | Chris Nauroth | Chris Nauroth |
| [HADOOP-12626](https://issues.apache.org/jira/browse/HADOOP-12626) | Intel ISA-L libraries should be added to the Dockerfile |  Blocker | io | Allen Wittenauer | Kai Zheng |
| [HADOOP-12955](https://issues.apache.org/jira/browse/HADOOP-12955) | Fix bugs in the initialization of the ISA-L library JNI bindings |  Major | native | Kai Zheng | Kai Zheng |
| [YARN-4706](https://issues.apache.org/jira/browse/YARN-4706) | UI Hosting Configuration in TimelineServer doc is broken |  Critical | documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-10325](https://issues.apache.org/jira/browse/HDFS-10325) | TestDFSShell#testMoveWithTargetPortEmpty fails |  Major | test | Takanobu Asanuma | Takanobu Asanuma |
| [HADOOP-13077](https://issues.apache.org/jira/browse/HADOOP-13077) | Handle special characters in passwords in httpfs.sh |  Major | . | Xiao Chen | Xiao Chen |
| [HDFS-10374](https://issues.apache.org/jira/browse/HDFS-10374) | typo in HDFSHighAvailabilityWithQJM doc. |  Minor | documentation | Takashi Ohnishi | Takashi Ohnishi |
| [HADOOP-10694](https://issues.apache.org/jira/browse/HADOOP-10694) | Remove synchronized input streams from Writable deserialization |  Major | io | Gopal V | Gopal V |
| [HADOOP-13083](https://issues.apache.org/jira/browse/HADOOP-13083) | The number of javadocs warnings is limited to 100 |  Critical | . | Li Lu | Gergely Novák |
| [HDFS-10410](https://issues.apache.org/jira/browse/HDFS-10410) | RedundantEditLogInputStream#LOG is set to wrong class |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10208](https://issues.apache.org/jira/browse/HDFS-10208) | Addendum for HDFS-9579: to handle the case when client machine can't resolve network path |  Major | . | Ming Ma | Ming Ma |
| [HDFS-10360](https://issues.apache.org/jira/browse/HDFS-10360) | DataNode may format directory and lose blocks if current/VERSION is missing |  Major | datanode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-5107](https://issues.apache.org/jira/browse/YARN-5107) | TestContainerMetrics fails |  Major | test | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-13224](https://issues.apache.org/jira/browse/HADOOP-13224) | Grep job in Single Cluster document fails |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-10458](https://issues.apache.org/jira/browse/HDFS-10458) | getFileEncryptionInfo should return quickly for non-encrypted cluster |  Major | encryption, namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-10220](https://issues.apache.org/jira/browse/HDFS-10220) | A large number of expired leases can make namenode unresponsive and cause failover |  Major | namenode | Nicolas Fraison | Nicolas Fraison |
| [HADOOP-13255](https://issues.apache.org/jira/browse/HADOOP-13255) | KMSClientProvider should check and renew tgt when doing delegation token operations. |  Major | kms | Xiao Chen | Xiao Chen |
| [HADOOP-13242](https://issues.apache.org/jira/browse/HADOOP-13242) | Authenticate to Azure Data Lake using client ID and keys |  Major | fs/azure | Atul Sikaria | Atul Sikaria |
| [HDFS-10423](https://issues.apache.org/jira/browse/HDFS-10423) | Increase default value of httpfs maxHttpHeaderSize |  Minor | hdfs | Nicolae Popa | Nicolae Popa |
| [MAPREDUCE-6641](https://issues.apache.org/jira/browse/MAPREDUCE-6641) | TestTaskAttempt fails in trunk |  Major | test | Tsuyoshi Ozawa | Haibo Chen |
| [HDFS-10536](https://issues.apache.org/jira/browse/HDFS-10536) | Standby NN can not trigger log roll after EditLogTailer thread failed 3 times in EditLogTailer.triggerActiveLogRoll method. |  Critical | auto-failover | XingFeng Shen | XingFeng Shen |
| [HADOOP-9888](https://issues.apache.org/jira/browse/HADOOP-9888) | KerberosName static initialization gets default realm, which is unneeded in non-secure deployment. |  Major | security | Chris Nauroth | Dmytro Kabakchei |
| [HADOOP-13342](https://issues.apache.org/jira/browse/HADOOP-13342) | ISAL download is breaking the Dockerfile |  Blocker | build | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13349](https://issues.apache.org/jira/browse/HADOOP-13349) | HADOOP\_CLASSPATH vs HADOOP\_USER\_CLASSPATH |  Blocker | scripts | Allen Wittenauer | Allen Wittenauer |
| [HDFS-10336](https://issues.apache.org/jira/browse/HDFS-10336) | TestBalancer failing intermittently because of not reseting UserGroupInformation completely |  Major | test | Yiqun Lin | Yiqun Lin |
| [YARN-5354](https://issues.apache.org/jira/browse/YARN-5354) | TestDistributedShell.checkTimelineV2() may fail for concurrent tests |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6731](https://issues.apache.org/jira/browse/MAPREDUCE-6731) | TestMRTimelineEventHandling.testMRNewTimelineServiceEventHandling() may fail for concurrent tests |  Major | test | Sangjin Lee | Sangjin Lee |
| [HADOOP-13315](https://issues.apache.org/jira/browse/HADOOP-13315) | FileContext#umask is not initialized properly |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10590](https://issues.apache.org/jira/browse/HDFS-10590) | Fix TestReconstructStripedBlocks.testCountLiveReplicas test failures |  Major | . | Rakesh R | Rakesh R |
| [HADOOP-11361](https://issues.apache.org/jira/browse/HADOOP-11361) | Fix a race condition in MetricsSourceAdapter.updateJmxCache |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-5359](https://issues.apache.org/jira/browse/YARN-5359) | FileSystemTimelineReader/Writer uses unix-specific default storage path |  Minor | . | Sangjin Lee | Sangjin Lee |
| [YARN-5364](https://issues.apache.org/jira/browse/YARN-5364) | timelineservice modules have indirect dependencies on mapreduce artifacts |  Minor | timelineserver | Sangjin Lee | Sangjin Lee |
| [HDFS-10544](https://issues.apache.org/jira/browse/HDFS-10544) | Balancer doesn't work with IPFailoverProxyProvider |  Major | balancer & mover, ha | Zhe Zhang | Zhe Zhang |
| [YARN-5379](https://issues.apache.org/jira/browse/YARN-5379) | TestHBaseTimelineStorage. testWriteApplicationToHBase() fails intermittently |  Minor | test, timelineserver | Sangjin Lee | Vrushali C |
| [HADOOP-13393](https://issues.apache.org/jira/browse/HADOOP-13393) | [Azure Data Lake] Correction needed in fs.defaultFS support in documentation |  Major | fs/azure | Vishwajeet Dusane | Vishwajeet Dusane |
| [HADOOP-13392](https://issues.apache.org/jira/browse/HADOOP-13392) | [Azure Data Lake] OAuth2 configuration should be default set to true when AdlFileSystem is configured. |  Major | fs/azure | Vishwajeet Dusane | Vishwajeet Dusane |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-2669](https://issues.apache.org/jira/browse/MAPREDUCE-2669) | Some new examples and test cases for them. |  Minor | examples | Plamen Jeliazkov | Plamen Jeliazkov |
| [HDFS-3121](https://issues.apache.org/jira/browse/HDFS-3121) | hdfs tests for HADOOP-8014 |  Major | test | John George | John George |
| [HADOOP-8434](https://issues.apache.org/jira/browse/HADOOP-8434) | TestConfiguration currently has no tests for direct setter methods |  Major | test | Harsh J | madhukara phatak |
| [HDFS-2127](https://issues.apache.org/jira/browse/HDFS-2127) | Add a test that ensure AccessControlExceptions contain a full path |  Major | namenode | Eli Collins | Stephen Chu |
| [HADOOP-8844](https://issues.apache.org/jira/browse/HADOOP-8844) | Add a plaintext fs -text test-case |  Major | fs | Harsh J | Akira Ajisaka |
| [HADOOP-11084](https://issues.apache.org/jira/browse/HADOOP-11084) | jenkins patchprocess links are broken |  Major | scripts | Colin P. McCabe | Arpit Agarwal |
| [HADOOP-11781](https://issues.apache.org/jira/browse/HADOOP-11781) | fix race conditions and add URL support to smart-apply-patch.sh |  Major | test | Allen Wittenauer | Raymie Stata |
| [HDFS-8834](https://issues.apache.org/jira/browse/HDFS-8834) | TestReplication#testReplicationWhenBlockCorruption is not valid after HDFS-6482 |  Minor | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-10854](https://issues.apache.org/jira/browse/HADOOP-10854) | unit tests for the shell scripts |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HDFS-9888](https://issues.apache.org/jira/browse/HDFS-9888) | Allow reseting KerberosName in unit tests |  Minor | . | Xiao Chen | Xiao Chen |
| [HADOOP-13051](https://issues.apache.org/jira/browse/HADOOP-13051) | Add Glob unit test for special characters |  Minor | fs | Harsh J | Harsh J |
| [HADOOP-13178](https://issues.apache.org/jira/browse/HADOOP-13178) | TestShellBasedIdMapping.testStaticMapUpdate doesn't work on OS X |  Major | test | Allen Wittenauer | Kai Sasaki |
| [HADOOP-12875](https://issues.apache.org/jira/browse/HADOOP-12875) | [Azure Data Lake] Support for contract test and unit test cases |  Major | fs, fs/azure, tools | Vishwajeet Dusane | Vishwajeet Dusane |
| [HADOOP-9321](https://issues.apache.org/jira/browse/HADOOP-9321) | fix coverage  org.apache.hadoop.net |  Major | . | Aleksey Gorshkov | Ivan A. Veselovsky |
| [HADOOP-9330](https://issues.apache.org/jira/browse/HADOOP-9330) | Add custom JUnit4 test runner with configurable timeout |  Major | test | Steve Loughran | Steve Loughran |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-3178](https://issues.apache.org/jira/browse/HDFS-3178) | Add states for journal synchronization in journal daemon |  Major | ha, namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3273](https://issues.apache.org/jira/browse/HDFS-3273) | Refactor BackupImage and FSEditLog |  Major | ha, namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-3292](https://issues.apache.org/jira/browse/HDFS-3292) | Remove the deprecated DistributedFileSystem.DiskStatus and the related methods |  Major | hdfs-client | Tsz Wo Nicholas Sze | Arpit Gupta |
| [MAPREDUCE-5189](https://issues.apache.org/jira/browse/MAPREDUCE-5189) | Basic AM changes to support preemption requests (per YARN-45) |  Major | mr-am, mrv2 | Carlo Curino | Carlo Curino |
| [MAPREDUCE-5867](https://issues.apache.org/jira/browse/MAPREDUCE-5867) | Possible NPE in KillAMPreemptionPolicy related to ProportionalCapacityPreemptionPolicy |  Major | resourcemanager | Sunil G | Sunil G |
| [HDFS-6922](https://issues.apache.org/jira/browse/HDFS-6922) | Add LazyPersist flag to INodeFile, save it in FsImage and edit logs |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7071](https://issues.apache.org/jira/browse/HDFS-7071) | Updated editsStored and editsStored.xml to bump layout version and add LazyPersist flag |  Major | namenode | Xiaoyu Yao | Xiaoyu Yao |
| [MAPREDUCE-6078](https://issues.apache.org/jira/browse/MAPREDUCE-6078) | native-task: fix gtest build on macosx |  Trivial | task | Binglin Chang | Binglin Chang |
| [HDFS-7184](https://issues.apache.org/jira/browse/HDFS-7184) | Allow data migration tool to run as a daemon |  Minor | balancer & mover, scripts | Benoy Antony | Benoy Antony |
| [YARN-3063](https://issues.apache.org/jira/browse/YARN-3063) | Bootstrap TimelineServer Next Gen Module |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3030](https://issues.apache.org/jira/browse/YARN-3030) | [Collector wireup] Set up timeline collector with basic request serving structure and lifecycle |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [HDFS-7751](https://issues.apache.org/jira/browse/HDFS-7751) | Fix TestHDFSCLI for quota with storage type |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [YARN-3041](https://issues.apache.org/jira/browse/YARN-3041) | [Data Model] create overall data objects of TS next gen |  Major | timelineserver | Sangjin Lee | Zhijie Shen |
| [YARN-3240](https://issues.apache.org/jira/browse/YARN-3240) | [Data Mode] Implement client API to put generic entities |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3087](https://issues.apache.org/jira/browse/YARN-3087) | [Collector implementation] the REST server (web server) for per-node collector does not work if it runs inside node manager |  Major | timelineserver | Sangjin Lee | Li Lu |
| [YARN-3125](https://issues.apache.org/jira/browse/YARN-3125) | [Event producers] Change distributed shell to use new timeline service |  Major | timelineserver | Zhijie Shen | Junping Du |
| [YARN-3210](https://issues.apache.org/jira/browse/YARN-3210) | [Source organization] Refactor timeline collector according to new code organization |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-3264](https://issues.apache.org/jira/browse/YARN-3264) | [Storage implementation] Create backing storage write interface and  a POC only file based storage implementation |  Major | timelineserver | Vrushali C | Vrushali C |
| [YARN-3039](https://issues.apache.org/jira/browse/YARN-3039) | [Collector wireup] Implement timeline app-level collector service discovery |  Major | timelineserver | Sangjin Lee | Junping Du |
| [YARN-3377](https://issues.apache.org/jira/browse/YARN-3377) | TestTimelineServiceClientIntegration fails |  Minor | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-3034](https://issues.apache.org/jira/browse/YARN-3034) | [Collector wireup] Implement RM starting its timeline collector |  Major | timelineserver | Sangjin Lee | Naganarasimha G R |
| [YARN-3040](https://issues.apache.org/jira/browse/YARN-3040) | [Data Model] Make putEntities operation be aware of the app's context |  Major | timelineserver | Sangjin Lee | Zhijie Shen |
| [YARN-3374](https://issues.apache.org/jira/browse/YARN-3374) | Collector's web server should randomly bind an available port |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3334](https://issues.apache.org/jira/browse/YARN-3334) | [Event Producers] NM TimelineClient container metrics posting to new timeline service. |  Major | nodemanager | Junping Du | Junping Du |
| [YARN-3391](https://issues.apache.org/jira/browse/YARN-3391) | Clearly define flow ID/ flow run / flow version in API and storage |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-6327](https://issues.apache.org/jira/browse/MAPREDUCE-6327) | [Event producers] Implement MapReduce AM writing MR events/counters to v2 ATS |  Major | . | Sangjin Lee | Junping Du |
| [HADOOP-11850](https://issues.apache.org/jira/browse/HADOOP-11850) | Typos in hadoop-common java docs |  Minor | . | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HADOOP-11852](https://issues.apache.org/jira/browse/HADOOP-11852) | Disable symlinks in trunk |  Major | . | Andrew Wang | Andrew Wang |
| [YARN-3390](https://issues.apache.org/jira/browse/YARN-3390) | Reuse TimelineCollectorManager for RM |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3431](https://issues.apache.org/jira/browse/YARN-3431) | Sub resources of timeline entity needs to be passed to a separate endpoint. |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [MAPREDUCE-6335](https://issues.apache.org/jira/browse/MAPREDUCE-6335) | convert load test driver to timeline service v.2 |  Major | . | Sangjin Lee | Sangjin Lee |
| [YARN-3551](https://issues.apache.org/jira/browse/YARN-3551) | Consolidate data model change according to the backend implementation |  Major | timelineserver | Zhijie Shen | Zhijie Shen |
| [YARN-3562](https://issues.apache.org/jira/browse/YARN-3562) | unit tests failures and issues found from findbug from earlier ATS checkins |  Minor | timelineserver | Sangjin Lee | Naganarasimha G R |
| [YARN-644](https://issues.apache.org/jira/browse/YARN-644) | Basic null check is not performed on passed in arguments before using them in ContainerManagerImpl.startContainer |  Minor | nodemanager | Omkar Vinit Joshi | Varun Saxena |
| [YARN-3134](https://issues.apache.org/jira/browse/YARN-3134) | [Storage implementation] Exploiting the option of using Phoenix to access HBase backend |  Major | timelineserver | Zhijie Shen | Li Lu |
| [YARN-3529](https://issues.apache.org/jira/browse/YARN-3529) | Add miniHBase cluster and Phoenix support to ATS v2 unit tests |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-3634](https://issues.apache.org/jira/browse/YARN-3634) | TestMRTimelineEventHandling and TestApplication are broken |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6337](https://issues.apache.org/jira/browse/MAPREDUCE-6337) | add a mode to replay MR job history files to the timeline service |  Major | . | Sangjin Lee | Sangjin Lee |
| [YARN-3411](https://issues.apache.org/jira/browse/YARN-3411) | [Storage implementation] explore the native HBase write schema for storage |  Critical | timelineserver | Sangjin Lee | Vrushali C |
| [MAPREDUCE-6370](https://issues.apache.org/jira/browse/MAPREDUCE-6370) | Timeline service v2 load generator needs to write event id |  Major | . | Li Lu | Li Lu |
| [YARN-3726](https://issues.apache.org/jira/browse/YARN-3726) | Fix TestHBaseTimelineWriterImpl unit test failure by fixing it's test data |  Major | timelineserver | Vrushali C | Vrushali C |
| [YARN-3721](https://issues.apache.org/jira/browse/YARN-3721) | build is broken on YARN-2928 branch due to possible dependency cycle |  Blocker | timelineserver | Sangjin Lee | Li Lu |
| [YARN-3276](https://issues.apache.org/jira/browse/YARN-3276) | Refactor and fix null casting in some map cast for TimelineEntity (old and new) and fix findbug warnings |  Major | timelineserver | Junping Du | Junping Du |
| [YARN-3044](https://issues.apache.org/jira/browse/YARN-3044) | [Event producers] Implement RM writing app lifecycle events to ATS |  Major | timelineserver | Sangjin Lee | Naganarasimha G R |
| [YARN-3801](https://issues.apache.org/jira/browse/YARN-3801) | [JDK-8][YARN-2928] Exclude jdk.tools from hbase-client and hbase-testing-util |  Major | timelineserver | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [YARN-3706](https://issues.apache.org/jira/browse/YARN-3706) | Generalize native HBase writer for additional tables |  Minor | timelineserver | Joep Rottinghuis | Joep Rottinghuis |
| [YARN-3792](https://issues.apache.org/jira/browse/YARN-3792) | Test case failures in TestDistributedShell and some issue fixes related to ATSV2 |  Major | timelineserver | Naganarasimha G R | Naganarasimha G R |
| [MAPREDUCE-6407](https://issues.apache.org/jira/browse/MAPREDUCE-6407) | Migrate MAPREDUCE nativetask build to new CMake framework |  Major | build | Alan Burlison | Alan Burlison |
| [YARN-3051](https://issues.apache.org/jira/browse/YARN-3051) | [Storage abstraction] Create backing storage read interface for ATS readers |  Major | timelineserver | Sangjin Lee | Varun Saxena |
| [YARN-3047](https://issues.apache.org/jira/browse/YARN-3047) | [Data Serving] Set up ATS reader with basic request serving structure and lifecycle |  Major | timelineserver | Sangjin Lee | Varun Saxena |
| [YARN-3836](https://issues.apache.org/jira/browse/YARN-3836) | add equals and hashCode to TimelineEntity and other classes in the data model |  Major | timelineserver | Sangjin Lee | Li Lu |
| [YARN-3949](https://issues.apache.org/jira/browse/YARN-3949) | ensure timely flush of timeline writes |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-3908](https://issues.apache.org/jira/browse/YARN-3908) | Bugs in HBaseTimelineWriterImpl |  Major | timelineserver | Zhijie Shen | Vrushali C |
| [YARN-3993](https://issues.apache.org/jira/browse/YARN-3993) | Change to use the AM flag in ContainerContext determine AM container |  Major | timelineserver | Zhijie Shen | Sunil G |
| [YARN-3984](https://issues.apache.org/jira/browse/YARN-3984) | Rethink event column key issue |  Major | timelineserver | Zhijie Shen | Vrushali C |
| [YARN-3049](https://issues.apache.org/jira/browse/YARN-3049) | [Storage Implementation] Implement storage reader interface to fetch raw data from HBase backend |  Major | timelineserver | Sangjin Lee | Zhijie Shen |
| [YARN-3906](https://issues.apache.org/jira/browse/YARN-3906) | split the application table from the entity table |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-3904](https://issues.apache.org/jira/browse/YARN-3904) | Refactor timelineservice.storage to add support to online and offline aggregation writers |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-3045](https://issues.apache.org/jira/browse/YARN-3045) | [Event producers] Implement NM writing container lifecycle events to ATS |  Major | timelineserver | Sangjin Lee | Naganarasimha G R |
| [YARN-4025](https://issues.apache.org/jira/browse/YARN-4025) | Deal with byte representations of Longs in writer code |  Major | timelineserver | Vrushali C | Sangjin Lee |
| [YARN-4064](https://issues.apache.org/jira/browse/YARN-4064) | build is broken at TestHBaseTimelineWriterImpl.java |  Blocker | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-3814](https://issues.apache.org/jira/browse/YARN-3814) | REST API implementation for getting raw entities in TimelineReader |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-4058](https://issues.apache.org/jira/browse/YARN-4058) | Miscellaneous issues in NodeManager project |  Minor | timelineserver | Naganarasimha G R | Naganarasimha G R |
| [YARN-4102](https://issues.apache.org/jira/browse/YARN-4102) | Add a "skip existing table" mode for timeline schema creator |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-3901](https://issues.apache.org/jira/browse/YARN-3901) | Populate flow run data in the flow\_run & flow activity tables |  Major | timelineserver | Vrushali C | Vrushali C |
| [HDFS-9004](https://issues.apache.org/jira/browse/HDFS-9004) | Add upgrade domain to DatanodeInfo |  Major | . | Ming Ma | Ming Ma |
| [HADOOP-12244](https://issues.apache.org/jira/browse/HADOOP-12244) | recover broken rebase during precommit |  Critical | yetus | Allen Wittenauer | Allen Wittenauer |
| [YARN-4075](https://issues.apache.org/jira/browse/YARN-4075) | [reader REST API] implement support for querying for flows and flow runs |  Major | timelineserver | Sangjin Lee | Varun Saxena |
| [YARN-4203](https://issues.apache.org/jira/browse/YARN-4203) | Add request/response logging & timing for each REST endpoint call |  Minor | timelineserver | Vrushali C | Varun Saxena |
| [YARN-4210](https://issues.apache.org/jira/browse/YARN-4210) | HBase reader throws NPE if Get returns no rows |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [HDFS-9015](https://issues.apache.org/jira/browse/HDFS-9015) | Refactor TestReplicationPolicy to test different block placement policies |  Major | . | Ming Ma | Ming Ma |
| [YARN-3864](https://issues.apache.org/jira/browse/YARN-3864) | Implement support for querying single app and all apps for a flow run |  Blocker | timelineserver | Varun Saxena | Varun Saxena |
| [HDFS-9180](https://issues.apache.org/jira/browse/HDFS-9180) | Update excluded DataNodes in DFSStripedOutputStream based on failures in data streamers |  Major | erasure-coding | Jing Zhao | Jing Zhao |
| [YARN-4178](https://issues.apache.org/jira/browse/YARN-4178) | [storage implementation] app id as string in row keys can cause incorrect ordering |  Major | timelineserver | Sangjin Lee | Varun Saxena |
| [HDFS-9206](https://issues.apache.org/jira/browse/HDFS-9206) | Inconsistent default value of dfs.datanode.stripedread.buffer.size |  Minor | erasure-coding | Walter Su | Walter Su |
| [HDFS-9209](https://issues.apache.org/jira/browse/HDFS-9209) | Erasure coding: Add apache license header in TestFileStatusWithECPolicy.java |  Major | . | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-8632](https://issues.apache.org/jira/browse/HDFS-8632) | Add InterfaceAudience annotation to the erasure coding classes |  Major | . | Rakesh R | Rakesh R |
| [HDFS-9006](https://issues.apache.org/jira/browse/HDFS-9006) | Provide BlockPlacementPolicy that supports upgrade domain |  Major | . | Ming Ma | Ming Ma |
| [HDFS-8438](https://issues.apache.org/jira/browse/HDFS-8438) | Erasure Coding: Allow concat striped files if they have the same ErasureCodingPolicy |  Major | . | Walter Su | Walter Su |
| [YARN-4237](https://issues.apache.org/jira/browse/YARN-4237) | Support additional queries for ATSv2 Web UI |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-4179](https://issues.apache.org/jira/browse/YARN-4179) | [reader implementation] support flow activity queries based on time |  Minor | timelineserver | Sangjin Lee | Varun Saxena |
| [YARN-4129](https://issues.apache.org/jira/browse/YARN-4129) | Refactor the SystemMetricPublisher in RM to better support newer events |  Major | resourcemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-4221](https://issues.apache.org/jira/browse/YARN-4221) | Store user in app to flow table |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6391](https://issues.apache.org/jira/browse/MAPREDUCE-6391) | util/Timer.cc completely misunderstands \_POSIX\_CPUTIME |  Major | build | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6412](https://issues.apache.org/jira/browse/MAPREDUCE-6412) | Make hadoop-mapreduce-client Native code -Wall-clean |  Major | build | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6416](https://issues.apache.org/jira/browse/MAPREDUCE-6416) | Not all platforms have d\_type in struct dirent |  Major | build | Alan Burlison | Alan Burlison |
| [MAPREDUCE-6435](https://issues.apache.org/jira/browse/MAPREDUCE-6435) | MapReduce client assumes the world is x86 |  Major | client | Alan Burlison | Alan Burlison |
| [HADOOP-12327](https://issues.apache.org/jira/browse/HADOOP-12327) | Initialize output buffers with ZERO bytes in erasure coder |  Major | . | Kai Zheng | Kai Zheng |
| [HDFS-9261](https://issues.apache.org/jira/browse/HDFS-9261) | Erasure Coding: Skip encoding the data cells if all the parity data streamers are failed for the current block group |  Minor | . | Rakesh R | Rakesh R |
| [HADOOP-12047](https://issues.apache.org/jira/browse/HADOOP-12047) | Indicate preference not to affect input buffers during coding in erasure coder |  Major | . | Kai Zheng | Kai Zheng |
| [HDFS-8777](https://issues.apache.org/jira/browse/HDFS-8777) | Erasure Coding: add tests for taking snapshots on EC files |  Major | erasure-coding | Jing Zhao | Rakesh R |
| [HDFS-9275](https://issues.apache.org/jira/browse/HDFS-9275) | Wait previous ErasureCodingWork to finish before schedule another one |  Major | . | Walter Su | Walter Su |
| [HADOOP-12544](https://issues.apache.org/jira/browse/HADOOP-12544) | Erasure Coding: create dummy raw coder to isolate performance issues in testing |  Major | . | Rui Li | Rui Li |
| [HDFS-9007](https://issues.apache.org/jira/browse/HDFS-9007) | Fix HDFS Balancer to honor upgrade domain policy |  Major | . | Ming Ma | Ming Ma |
| [HADOOP-11887](https://issues.apache.org/jira/browse/HADOOP-11887) | Introduce Intel ISA-L erasure coding library for native erasure encoding support |  Major | io | Kai Zheng | Kai Zheng |
| [HADOOP-11684](https://issues.apache.org/jira/browse/HADOOP-11684) | S3a to use thread pool that blocks clients |  Major | fs/s3 | Thomas Demoor | Thomas Demoor |
| [HDFS-8968](https://issues.apache.org/jira/browse/HDFS-8968) | Erasure coding: a comprehensive I/O throughput benchmark tool |  Major | erasure-coding, test | Kai Zheng | Rui Li |
| [HADOOP-12582](https://issues.apache.org/jira/browse/HADOOP-12582) | Using BytesWritable's getLength() and getBytes() instead of get() and getSize() |  Major | . | Tsuyoshi Ozawa | Akira Ajisaka |
| [YARN-4053](https://issues.apache.org/jira/browse/YARN-4053) | Change the way metric values are stored in HBase Storage |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [HDFS-9348](https://issues.apache.org/jira/browse/HDFS-9348) | Erasure Coding: DFS GetErasureCodingPolicy API on a non-existent file should be handled properly |  Minor | erasure-coding | Rakesh R | Rakesh R |
| [YARN-4297](https://issues.apache.org/jira/browse/YARN-4297) | TestJobHistoryEventHandler and TestRMContainerAllocator failing on YARN-2928 branch |  Major | . | Varun Saxena | Varun Saxena |
| [YARN-3862](https://issues.apache.org/jira/browse/YARN-3862) | Support for fetching specific configs and metrics based on prefixes |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-4356](https://issues.apache.org/jira/browse/YARN-4356) | ensure the timeline service v.2 is disabled cleanly and has no impact when it's turned off |  Critical | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-4450](https://issues.apache.org/jira/browse/YARN-4450) | TestTimelineAuthenticationFilter and TestYarnConfigurationFields fail |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-4460](https://issues.apache.org/jira/browse/YARN-4460) | [Bug fix] RM fails to start when SMP is enabled |  Major | timelineserver | Li Lu | Li Lu |
| [YARN-4445](https://issues.apache.org/jira/browse/YARN-4445) | Unify the term flowId and flowName in timeline v2 codebase |  Major | timelineserver | Li Lu | Zhan Zhang |
| [HDFS-9373](https://issues.apache.org/jira/browse/HDFS-9373) | Erasure coding: friendly log information for write operations with some failed streamers |  Major | erasure-coding | Li Bo | Li Bo |
| [YARN-4350](https://issues.apache.org/jira/browse/YARN-4350) | TestDistributedShell fails for V2 scenarios |  Major | timelineserver | Sangjin Lee | Naganarasimha G R |
| [HDFS-9173](https://issues.apache.org/jira/browse/HDFS-9173) | Erasure Coding: Lease recovery for striped file |  Major | erasure-coding | Walter Su | Walter Su |
| [HDFS-9575](https://issues.apache.org/jira/browse/HDFS-9575) | Use byte array for internal block indices in a striped block |  Major | erasure-coding | Jing Zhao | Jing Zhao |
| [YARN-3586](https://issues.apache.org/jira/browse/YARN-3586) | RM only get back addresses of Collectors that NM needs to know. |  Critical | resourcemanager, timelineserver | Junping Du | Junping Du |
| [HADOOP-12685](https://issues.apache.org/jira/browse/HADOOP-12685) | Input buffer position after encode/decode not consistent between different kinds of buffers |  Minor | . | Rui Li | Rui Li |
| [YARN-3995](https://issues.apache.org/jira/browse/YARN-3995) | Some of the NM events are not getting published due race condition when AM container finishes in NM |  Major | nodemanager, timelineserver | Naganarasimha G R | Naganarasimha G R |
| [HADOOP-11828](https://issues.apache.org/jira/browse/HADOOP-11828) | Implement the Hitchhiker erasure coding algorithm |  Major | . | Zhe Zhang | jack liuquan |
| [YARN-4622](https://issues.apache.org/jira/browse/YARN-4622) | TestDistributedShell fails for v2 test cases after modifications for 1.5 |  Major | timelineserver | Naganarasimha G R | Naganarasimha G R |
| [HDFS-9646](https://issues.apache.org/jira/browse/HDFS-9646) | ErasureCodingWorker may fail when recovering data blocks with length less than the first internal block |  Critical | erasure-coding | Takuya Fukudome | Jing Zhao |
| [YARN-4238](https://issues.apache.org/jira/browse/YARN-4238) | correctly set createdTime and remove modifiedTime when publishing entities |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-4224](https://issues.apache.org/jira/browse/YARN-4224) | Support fetching entities by UID and change the REST interface to conform to current REST APIs' in YARN |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-4644](https://issues.apache.org/jira/browse/YARN-4644) | TestRMRestart fails and findbugs issue in YARN-2928 branch |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [HDFS-9494](https://issues.apache.org/jira/browse/HDFS-9494) | Parallel optimization of DFSStripedOutputStream#flushAllInternals( ) |  Minor | hdfs-client | GAO Rui | GAO Rui |
| [HDFS-9731](https://issues.apache.org/jira/browse/HDFS-9731) | Erasure Coding: Rename BlockECRecoveryCommand to BlockECReconstructionCommand |  Major | erasure-coding | Rakesh R | Rakesh R |
| [HDFS-9403](https://issues.apache.org/jira/browse/HDFS-9403) | Erasure coding: some EC tests are missing timeout |  Minor | erasure-coding, test | Zhe Zhang | GAO Rui |
| [HDFS-9658](https://issues.apache.org/jira/browse/HDFS-9658) | Erasure Coding: allow to use multiple EC policies in striping related tests |  Major | . | Rui Li | Rui Li |
| [HADOOP-12041](https://issues.apache.org/jira/browse/HADOOP-12041) | Implement another Reed-Solomon coder in pure Java |  Major | . | Kai Zheng | Kai Zheng |
| [YARN-4446](https://issues.apache.org/jira/browse/YARN-4446) | Refactor reader API for better extensibility |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-4409](https://issues.apache.org/jira/browse/YARN-4409) | Fix javadoc and checkstyle issues in timelineservice code |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-3367](https://issues.apache.org/jira/browse/YARN-3367) | Replace starting a separate thread for post entity with event loop in TimelineClient |  Major | timelineserver | Junping Du | Naganarasimha G R |
| [HDFS-9775](https://issues.apache.org/jira/browse/HDFS-9775) | Erasure Coding : Rename BlockRecoveryWork to BlockReconstructionWork |  Major | namenode | Rakesh R | Rakesh R |
| [HDFS-9789](https://issues.apache.org/jira/browse/HDFS-9789) | Correctly update DataNode's scheduled block size when writing small EC file |  Major | namenode | Namit Maheshwari | Jing Zhao |
| [HDFS-9755](https://issues.apache.org/jira/browse/HDFS-9755) | Erasure Coding: allow to use multiple EC policies in striping related tests [Part 2] |  Major | erasure-coding, test | Rui Li | Rui Li |
| [HDFS-9794](https://issues.apache.org/jira/browse/HDFS-9794) | Streamer threads may leak if failure happens when closing the striped outputstream |  Critical | hdfs-client | Namit Maheshwari | Jing Zhao |
| [HDFS-9830](https://issues.apache.org/jira/browse/HDFS-9830) | Remove references to hftp in ViewFs documentation in trunk |  Minor | documentation, fs | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9829](https://issues.apache.org/jira/browse/HDFS-9829) | Erasure Coding: Improve few exception handling logic of ErasureCodingWorker |  Minor | erasure-coding | Rakesh R | Rakesh R |
| [HDFS-9818](https://issues.apache.org/jira/browse/HDFS-9818) | Correctly handle EC reconstruction work caused by not enough racks |  Major | datanode, namenode | Takuya Fukudome | Jing Zhao |
| [HDFS-9816](https://issues.apache.org/jira/browse/HDFS-9816) | Erasure Coding: allow to use multiple EC policies in striping related tests [Part 3] |  Major | erasure-coding, test | Rui Li | Rui Li |
| [HADOOP-12808](https://issues.apache.org/jira/browse/HADOOP-12808) | Rename the RS coder from HDFS-RAID as legacy |  Major | . | Rui Li | Rui Li |
| [HDFS-9837](https://issues.apache.org/jira/browse/HDFS-9837) | BlockManager#countNodes should be able to detect duplicated internal blocks |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-9866](https://issues.apache.org/jira/browse/HDFS-9866) | BlockManager#chooseExcessReplicasStriped may weaken rack fault tolerance |  Major | namenode | Takuya Fukudome | Jing Zhao |
| [HDFS-9867](https://issues.apache.org/jira/browse/HDFS-9867) | Missing block exception should carry locatedBlocks information |  Minor | erasure-coding, hdfs-client | Mingliang Liu | Mingliang Liu |
| [HDFS-9876](https://issues.apache.org/jira/browse/HDFS-9876) | shouldProcessOverReplicated should not count number of pending replicas |  Major | erasure-coding, namenode | Takuya Fukudome | Jing Zhao |
| [YARN-4700](https://issues.apache.org/jira/browse/YARN-4700) | ATS storage has one extra record each time the RM got restarted |  Major | timelineserver | Li Lu | Naganarasimha G R |
| [HDFS-8786](https://issues.apache.org/jira/browse/HDFS-8786) | Erasure coding: use simple replication for internal blocks on decommissioning datanodes |  Major | . | Zhe Zhang | Rakesh R |
| [MAPREDUCE-6546](https://issues.apache.org/jira/browse/MAPREDUCE-6546) | reconcile the two versions of the timeline service performance tests |  Minor | . | Sangjin Lee | Sangjin Lee |
| [HDFS-7866](https://issues.apache.org/jira/browse/HDFS-7866) | Erasure coding: NameNode manages multiple erasure coding policies |  Major | . | Kai Zheng | Rui Li |
| [HADOOP-11996](https://issues.apache.org/jira/browse/HADOOP-11996) | Improve and restructure native ISAL support |  Major | io | Kai Zheng | Kai Zheng |
| [HADOOP-12826](https://issues.apache.org/jira/browse/HADOOP-12826) | Rename the new Java coder and make it default |  Major | . | Rui Li | Rui Li |
| [HDFS-9857](https://issues.apache.org/jira/browse/HDFS-9857) | Erasure Coding: Rename replication-based names in BlockManager to more generic [part-1] |  Major | erasure-coding | Rakesh R | Rakesh R |
| [YARN-4062](https://issues.apache.org/jira/browse/YARN-4062) | Add the flush and compaction functionality via coprocessors and scanners for flow run table |  Major | timelineserver | Vrushali C | Vrushali C |
| [YARN-4712](https://issues.apache.org/jira/browse/YARN-4712) | CPU Usage Metric is not captured properly in YARN-2928 |  Major | timelineserver | Naganarasimha G R | Naganarasimha G R |
| [HDFS-9005](https://issues.apache.org/jira/browse/HDFS-9005) | Provide configuration support for upgrade domain |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9694](https://issues.apache.org/jira/browse/HDFS-9694) | Make existing DFSClient#getFileChecksum() work for striped blocks |  Major | . | Kai Zheng | Kai Zheng |
| [HDFS-9640](https://issues.apache.org/jira/browse/HDFS-9640) | Remove hsftp from DistCp in trunk |  Major | distcp | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-4711](https://issues.apache.org/jira/browse/YARN-4711) | NM is going down with NPE's due to single thread processing of events by Timeline client |  Critical | timelineserver | Naganarasimha G R | Naganarasimha G R |
| [HADOOP-12959](https://issues.apache.org/jira/browse/HADOOP-12959) | Add additional github web site for ISA-L library |  Major | . | Li Bo | Li Bo |
| [HDFS-9719](https://issues.apache.org/jira/browse/HDFS-9719) | Refactoring ErasureCodingWorker into smaller reusable constructs |  Major | . | Kai Zheng | Kai Zheng |
| [YARN-3461](https://issues.apache.org/jira/browse/YARN-3461) | Consolidate flow name/version/run defaults |  Major | timelineserver | Zhijie Shen | Sangjin Lee |
| [YARN-3863](https://issues.apache.org/jira/browse/YARN-3863) | Support complex filters in TimelineReader |  Major | . | Varun Saxena | Varun Saxena |
| [HDFS-9918](https://issues.apache.org/jira/browse/HDFS-9918) | Erasure Coding: Sort located striped blocks based on decommissioned states |  Major | . | Rakesh R | Rakesh R |
| [HDFS-10293](https://issues.apache.org/jira/browse/HDFS-10293) | StripedFileTestUtil#readAll flaky |  Major | erasure-coding, test | Mingliang Liu | Mingliang Liu |
| [HADOOP-12924](https://issues.apache.org/jira/browse/HADOOP-12924) | Configure raw erasure coders for supported codecs |  Minor | . | Rui Li | Rui Li |
| [YARN-3816](https://issues.apache.org/jira/browse/YARN-3816) | [Aggregation] App-level aggregation and accumulation for YARN system metrics |  Major | timelineserver | Junping Du | Li Lu |
| [HADOOP-12935](https://issues.apache.org/jira/browse/HADOOP-12935) | API documentation for dynamic subcommands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HDFS-9869](https://issues.apache.org/jira/browse/HDFS-9869) | Erasure Coding: Rename replication-based names in BlockManager to more generic [part-2] |  Major | erasure-coding | Rakesh R | Rakesh R |
| [YARN-4991](https://issues.apache.org/jira/browse/YARN-4991) | Fix ContainerRequest Constructor to set nodelabelExpression correctly |  Major | test | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-4986](https://issues.apache.org/jira/browse/YARN-4986) | Add a check in the coprocessor for table to operated on |  Major | timelineserver | Vrushali C | Vrushali C |
| [YARN-5014](https://issues.apache.org/jira/browse/YARN-5014) | Ensure non-metric values are returned as is for flow run table from the coprocessor |  Major | timelineserver | Vrushali C | Vrushali C |
| [YARN-3150](https://issues.apache.org/jira/browse/YARN-3150) | [Documentation] Documenting the timeline service v2 |  Major | . | Zhijie Shen | Sangjin Lee |
| [MAPREDUCE-6424](https://issues.apache.org/jira/browse/MAPREDUCE-6424) | Store MR counters as timeline metrics instead of event |  Major | . | Junping Du | Naganarasimha G R |
| [YARN-4447](https://issues.apache.org/jira/browse/YARN-4447) | Provide a mechanism to represent complex filters and parse them at the REST layer |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6688](https://issues.apache.org/jira/browse/MAPREDUCE-6688) | Store job configurations in Timeline Service v2 |  Major | applicationmaster | Junping Du | Varun Saxena |
| [HADOOP-12931](https://issues.apache.org/jira/browse/HADOOP-12931) | bin/hadoop work for dynamic subcommands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12934](https://issues.apache.org/jira/browse/HADOOP-12934) | bin/mapred work for dynamic subcommands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12933](https://issues.apache.org/jira/browse/HADOOP-12933) | bin/hdfs work for dynamic subcommands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12932](https://issues.apache.org/jira/browse/HADOOP-12932) | bin/yarn work for dynamic subcommands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12936](https://issues.apache.org/jira/browse/HADOOP-12936) | modify hadoop-tools to take advantage of dynamic subcommands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13086](https://issues.apache.org/jira/browse/HADOOP-13086) | enable daemonization of dynamic commands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13089](https://issues.apache.org/jira/browse/HADOOP-13089) | hadoop distcp adds client opts twice when dynamic |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13087](https://issues.apache.org/jira/browse/HADOOP-13087) | env var doc update for dynamic commands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13088](https://issues.apache.org/jira/browse/HADOOP-13088) | fix shellprofiles in hadoop-tools to allow replacement |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13094](https://issues.apache.org/jira/browse/HADOOP-13094) | hadoop-common unit tests for dynamic commands |  Major | scripts, test | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13095](https://issues.apache.org/jira/browse/HADOOP-13095) | hadoop-hdfs unit tests for dynamic commands |  Major | scripts, test | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13107](https://issues.apache.org/jira/browse/HADOOP-13107) | clean up how rumen is executed |  Major | scripts, tools | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13108](https://issues.apache.org/jira/browse/HADOOP-13108) | dynamic subcommands need a way to manipulate arguments |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13110](https://issues.apache.org/jira/browse/HADOOP-13110) | add a streaming subcommand to mapred |  Major | . | Allen Wittenauer | Allen Wittenauer |
| [YARN-5045](https://issues.apache.org/jira/browse/YARN-5045) | hbase unit tests fail due to dependency issues |  Blocker | timelineserver | Sangjin Lee | Sangjin Lee |
| [HADOOP-13111](https://issues.apache.org/jira/browse/HADOOP-13111) | convert hadoop gridmix to be dynamic |  Major | scripts, tools | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13115](https://issues.apache.org/jira/browse/HADOOP-13115) | dynamic subcommand docs should talk about exit vs. continue program flow |  Major | documentation, scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13117](https://issues.apache.org/jira/browse/HADOOP-13117) | clarify daemonization and security vars for dynamic commands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13121](https://issues.apache.org/jira/browse/HADOOP-13121) | rename sub-project shellprofiles to match the rest of Hadoop |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13120](https://issues.apache.org/jira/browse/HADOOP-13120) | add a --debug message when dynamic commands have been used |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-12581](https://issues.apache.org/jira/browse/HADOOP-12581) | ShellBasedIdMapping needs suport for Solaris |  Major | security | Alan Burlison | Alan Burlison |
| [HADOOP-13129](https://issues.apache.org/jira/browse/HADOOP-13129) | fix typo in dynamic subcommand docs |  Trivial | scripts | Sean Busbey | Allen Wittenauer |
| [HADOOP-13151](https://issues.apache.org/jira/browse/HADOOP-13151) | Underscores should be escaped in dynamic subcommands document |  Minor | documentation | Akira Ajisaka | Allen Wittenauer |
| [HADOOP-13153](https://issues.apache.org/jira/browse/HADOOP-13153) | fix typo in debug statement for dynamic subcommands |  Major | scripts | Allen Wittenauer | Allen Wittenauer |
| [YARN-5102](https://issues.apache.org/jira/browse/YARN-5102) | timeline service build fails with java 8 |  Blocker | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-5096](https://issues.apache.org/jira/browse/YARN-5096) | timelinereader has a lot of logging that's not useful |  Minor | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-5050](https://issues.apache.org/jira/browse/YARN-5050) | Code cleanup for TestDistributedShell |  Major | timelineserver | Li Lu | Li Lu |
| [HDFS-7766](https://issues.apache.org/jira/browse/HDFS-7766) | Add a flag to WebHDFS op=CREATE to not respond with a 307 redirect |  Major | ui, webhdfs | Ravi Prakash | Ravi Prakash |
| [YARN-5093](https://issues.apache.org/jira/browse/YARN-5093) | created time shows 0 in most REST output |  Critical | timelineserver | Sangjin Lee | Varun Saxena |
| [YARN-5018](https://issues.apache.org/jira/browse/YARN-5018) | Online aggregation logic should not run immediately after collectors got started |  Major | timelineserver | Li Lu | Li Lu |
| [HDFS-10434](https://issues.apache.org/jira/browse/HDFS-10434) | Fix intermittent test failure of TestDataNodeErasureCodingMetrics |  Major | . | Rakesh R | Rakesh R |
| [HADOOP-12925](https://issues.apache.org/jira/browse/HADOOP-12925) | Checks for SPARC architecture need to include 64-bit SPARC |  Major | conf | Alan Burlison | Alan Burlison |
| [YARN-5097](https://issues.apache.org/jira/browse/YARN-5097) | NPE in Separator.joinEncoded() |  Critical | timelineserver | Sangjin Lee | Vrushali C |
| [YARN-5095](https://issues.apache.org/jira/browse/YARN-5095) | flow activities and flow runs are populated with wrong timestamp when RM restarts w/ recovery enabled |  Critical | timelineserver | Sangjin Lee | Varun Saxena |
| [HADOOP-13010](https://issues.apache.org/jira/browse/HADOOP-13010) | Refactor raw erasure coders |  Major | . | Kai Zheng | Kai Zheng |
| [HADOOP-12727](https://issues.apache.org/jira/browse/HADOOP-12727) | Minor cleanups needed for CMake 3.X |  Minor | native | Alan Burlison | Alan Burlison |
| [YARN-5138](https://issues.apache.org/jira/browse/YARN-5138) | fix "no findbugs output file" error for hadoop-yarn-server-timelineservice-hbase-tests |  Major | timelineserver | Vrushali C | Vrushali C |
| [HDFS-10236](https://issues.apache.org/jira/browse/HDFS-10236) | Erasure Coding: Rename replication-based names in BlockManager to more generic [part-3] |  Major | erasure-coding | Rakesh R | Rakesh R |
| [YARN-5109](https://issues.apache.org/jira/browse/YARN-5109) | timestamps are stored unencoded causing parse errors |  Blocker | timelineserver | Sangjin Lee | Varun Saxena |
| [YARN-5111](https://issues.apache.org/jira/browse/YARN-5111) | YARN container system metrics are not aggregated to application |  Critical | timelineserver | Sangjin Lee | Naganarasimha G R |
| [YARN-5105](https://issues.apache.org/jira/browse/YARN-5105) | entire time series is returned for YARN container system metrics (CPU and memory) |  Major | timelineserver | Sangjin Lee | Varun Saxena |
| [HDFS-9833](https://issues.apache.org/jira/browse/HDFS-9833) | Erasure coding: recomputing block checksum on the fly by reconstructing the missed/corrupt block data |  Major | . | Kai Zheng | Rakesh R |
| [YARN-5189](https://issues.apache.org/jira/browse/YARN-5189) | Make HBaseTimeline[Reader\|Writer]Impl default and move FileSystemTimeline\*Impl |  Major | timelineserver | Joep Rottinghuis | Joep Rottinghuis |
| [HDFS-9877](https://issues.apache.org/jira/browse/HDFS-9877) | HDFS Namenode UI: Fix browsing directories that need to be encoded |  Major | ui | Ravi Prakash | Ravi Prakash |
| [HDFS-7767](https://issues.apache.org/jira/browse/HDFS-7767) | Use the noredirect flag in WebHDFS to allow web browsers to upload files via the NN UI |  Major | ui, webhdfs | Ravi Prakash | Ravi Prakash |
| [YARN-5142](https://issues.apache.org/jira/browse/YARN-5142) | fix findbugs warnings/errors for hadoop-yarn-server-timelineservice-hbase-tests |  Major | timelineserver | Vrushali C | Vrushali C |
| [YARN-5167](https://issues.apache.org/jira/browse/YARN-5167) | Escaping occurences of encodedValues |  Critical | timelineserver | Joep Rottinghuis | Sangjin Lee |
| [YARN-5210](https://issues.apache.org/jira/browse/YARN-5210) | NPE in Distributed Shell while publishing DS\_CONTAINER\_START event and other miscellaneous issues |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-5170](https://issues.apache.org/jira/browse/YARN-5170) | Eliminate singleton converters and static method access |  Major | timelineserver | Joep Rottinghuis | Joep Rottinghuis |
| [HDFS-7987](https://issues.apache.org/jira/browse/HDFS-7987) | Allow files / directories to be moved |  Major | ui | Ravi Prakash | Ravi Prakash |
| [YARN-5052](https://issues.apache.org/jira/browse/YARN-5052) | [Documentation] Update timeline service v2 documentation to capture information about filters |  Major | timelineserver | Varun Saxena | Varun Saxena |
| [YARN-5243](https://issues.apache.org/jira/browse/YARN-5243) | fix several rebase and other miscellaneous issues before merge |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-5070](https://issues.apache.org/jira/browse/YARN-5070) | upgrade HBase version for first merge |  Critical | timelineserver | Sangjin Lee | Vrushali C |
| [HDFS-10473](https://issues.apache.org/jira/browse/HDFS-10473) | Allow only suitable storage policies to be set on striped files |  Major | namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [MAPREDUCE-6720](https://issues.apache.org/jira/browse/MAPREDUCE-6720) | Inconsistent values of counters across tasks and job reported to timeline service. |  Major | applicationmaster | Varun Saxena | Varun Saxena |
| [HDFS-10460](https://issues.apache.org/jira/browse/HDFS-10460) | Erasure Coding: Recompute block checksum for a particular range less than file size on the fly by reconstructing missed block |  Major | datanode | Rakesh R | Rakesh R |
| [HADOOP-13019](https://issues.apache.org/jira/browse/HADOOP-13019) | Implement ErasureCodec for HitchHiker XOR coding |  Major | io | Kai Sasaki | Kai Sasaki |
| [YARN-5174](https://issues.apache.org/jira/browse/YARN-5174) | [documentation] several updates/corrections to timeline service documentation |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [YARN-5316](https://issues.apache.org/jira/browse/YARN-5316) | fix hadoop-aws pom not to do the exclusion |  Major | timelineserver | Sangjin Lee | Sangjin Lee |
| [HADOOP-11993](https://issues.apache.org/jira/browse/HADOOP-11993) | maven enforcer plugin to ban java 8 incompatible dependencies |  Minor | . | Steve Loughran | Tsuyoshi Ozawa |
| [HDFS-10600](https://issues.apache.org/jira/browse/HDFS-10600) | PlanCommand#getThrsholdPercentage should not use throughput value. |  Major | diskbalancer | Lei (Eddy) Xu | Yiqun Lin |
| [HDFS-10565](https://issues.apache.org/jira/browse/HDFS-10565) | Erasure Coding: Document about the current allowed storage policies for EC Striped mode files |  Major | documentation | Uma Maheswara Rao G | Uma Maheswara Rao G |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-2776](https://issues.apache.org/jira/browse/HDFS-2776) | Missing interface annotation on JournalSet |  Trivial | namenode | Todd Lipcon | Brandon Li |
| [HADOOP-8308](https://issues.apache.org/jira/browse/HADOOP-8308) | Support cross-project Jenkins builds |  Major | build | Tom White | Tom White |


