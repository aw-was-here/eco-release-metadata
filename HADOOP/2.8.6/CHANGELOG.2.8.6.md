
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

## Release 2.8.6 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14524](https://issues.apache.org/jira/browse/HADOOP-14524) | Make CryptoCodec Closeable so it can be cleaned up proactively |  Major | . | Xiao Chen | Xiao Chen |
| [HADOOP-15804](https://issues.apache.org/jira/browse/HADOOP-15804) | upgrade to commons-compress 1.18 |  Major | . | PJ Fanning | Akira Ajisaka |
| [YARN-7225](https://issues.apache.org/jira/browse/YARN-7225) | Add queue and partition info to RM audit log |  Major | resourcemanager | Jonathan Hung | Eric Payne |
| [HADOOP-15959](https://issues.apache.org/jira/browse/HADOOP-15959) | revert HADOOP-12751 |  Minor | security | Steve Loughran | Steve Loughran |
| [YARN-7171](https://issues.apache.org/jira/browse/YARN-7171) | RM UI should sort memory / cores numerically |  Major | . | Eric Maynard | Ahmed Hussein |
| [HADOOP-16126](https://issues.apache.org/jira/browse/HADOOP-16126) | ipc.Client.stop() may sleep too long to wait for all connections |  Major | ipc | Tsz-wo Sze | Tsz-wo Sze |
| [HDFS-14247](https://issues.apache.org/jira/browse/HDFS-14247) | Repeat adding node description into network topology |  Minor | datanode | HuangTao | HuangTao |
| [HADOOP-16323](https://issues.apache.org/jira/browse/HADOOP-16323) | https everywhere in Maven settings |  Minor | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-9563](https://issues.apache.org/jira/browse/YARN-9563) | Resource report REST API could return NaN or Inf |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-16053](https://issues.apache.org/jira/browse/HADOOP-16053) | Backport HADOOP-14816 to branch-2 |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-16350](https://issues.apache.org/jira/browse/HADOOP-16350) | Ability to tell HDFS client not to request KMS Information from NameNode |  Major | common, kms | Greg Senia |  |
| [YARN-8045](https://issues.apache.org/jira/browse/YARN-8045) | Reduce log output from container status calls |  Major | . | Shane Kumpf | Craig Condit |
| [YARN-9442](https://issues.apache.org/jira/browse/YARN-9442) | container working directory has group read permissions |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-14723](https://issues.apache.org/jira/browse/HDFS-14723) | Add helper method FSNamesystem#setBlockManagerForTesting() in branch-2 |  Blocker | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-9756](https://issues.apache.org/jira/browse/YARN-9756) | Create metric that sums total memory/vcores preempted per round |  Major | capacity scheduler | Eric Payne | Manikandan R |
| [HDFS-14633](https://issues.apache.org/jira/browse/HDFS-14633) | The StorageType quota and consume in QuotaFeature is not handled for rename |  Major | . | Jinglun | Jinglun |
| [YARN-9914](https://issues.apache.org/jira/browse/YARN-9914) | Use separate configs for free disk space checking for full and not-full disks |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-14758](https://issues.apache.org/jira/browse/HDFS-14758) | Decrease lease hard limit |  Minor | . | Eric Payne | Hemanth Boyina |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14170](https://issues.apache.org/jira/browse/HADOOP-14170) | FileSystemContractBaseTest is not cleaning up test directory clearly |  Major | fs | Mingliang Liu | Mingliang Liu |
| [YARN-6510](https://issues.apache.org/jira/browse/YARN-6510) | Fix profs stat file warning caused by process names that includes parenthesis |  Major | . | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-7007](https://issues.apache.org/jira/browse/YARN-7007) | NPE in RM while using YarnClient.getApplications() |  Major | . | Lingfeng Su | Lingfeng Su |
| [HADOOP-15644](https://issues.apache.org/jira/browse/HADOOP-15644) | Hadoop Docker Image Pip Install Fails on branch-2 |  Critical | build | Haibo Chen | Haibo Chen |
| [HDFS-13051](https://issues.apache.org/jira/browse/HDFS-13051) | Fix dead lock during async editlog rolling if edit queue is full |  Major | namenode | zhangwei | Daryn Sharp |
| [YARN-8664](https://issues.apache.org/jira/browse/YARN-8664) | ApplicationMasterProtocolPBServiceImpl#allocate throws NPE when NM is lost |  Major | resourcemanager | Jiandan Yang | Jiandan Yang |
| [YARN-8729](https://issues.apache.org/jira/browse/YARN-8729) | Node status updater thread could be lost after it is restarted |  Critical | nodemanager | Tao Yang | Tao Yang |
| [MAPREDUCE-7133](https://issues.apache.org/jira/browse/MAPREDUCE-7133) | History Server task attempts REST API returns invalid data |  Major | jobhistoryserver | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [YARN-8720](https://issues.apache.org/jira/browse/YARN-8720) | CapacityScheduler does not enforce max resource allocation check at queue level |  Major | capacity scheduler, capacityscheduler, resourcemanager | Tarun Parimi | Tarun Parimi |
| [MAPREDUCE-3801](https://issues.apache.org/jira/browse/MAPREDUCE-3801) | org.apache.hadoop.mapreduce.v2.app.TestRuntimeEstimators.testExponentialEstimator fails intermittently |  Major | mrv2 | Robert Joseph Evans | Jason Darrell Lowe |
| [MAPREDUCE-7137](https://issues.apache.org/jira/browse/MAPREDUCE-7137) | MRAppBenchmark.benchmark1() fails with NullPointerException |  Minor | test | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [MAPREDUCE-7138](https://issues.apache.org/jira/browse/MAPREDUCE-7138) | ThrottledContainerAllocator in MRAppBenchmark should implement RMHeartbeatHandler |  Minor | test | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [YARN-8804](https://issues.apache.org/jira/browse/YARN-8804) | resourceLimits may be wrongly calculated when leaf-queue is blocked in cluster with 3+ level queues |  Critical | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-8774](https://issues.apache.org/jira/browse/YARN-8774) | Memory leak when CapacityScheduler allocates from reserved container with non-default label |  Critical | capacityscheduler | Tao Yang | Tao Yang |
| [HADOOP-15817](https://issues.apache.org/jira/browse/HADOOP-15817) | Reuse Object Mapper in KMSJSONReader |  Major | kms | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [HADOOP-15835](https://issues.apache.org/jira/browse/HADOOP-15835) | Reuse Object Mapper in KMSJSONWriter |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [HADOOP-15679](https://issues.apache.org/jira/browse/HADOOP-15679) | ShutdownHookManager shutdown time needs to be configurable & extended |  Major | util | Steve Loughran | Steve Loughran |
| [HADOOP-15900](https://issues.apache.org/jira/browse/HADOOP-15900) | Update JSch versions in LICENSE.txt |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [YARN-8858](https://issues.apache.org/jira/browse/YARN-8858) | CapacityScheduler should respect maximum node resource when per-queue maximum-allocation is being used. |  Major | . | Sumana Sathish | Wangda Tan |
| [MAPREDUCE-7156](https://issues.apache.org/jira/browse/MAPREDUCE-7156) | NullPointerException when reaching max shuffle connections |  Major | mrv2 | Peter Bacsko | Peter Bacsko |
| [HADOOP-15923](https://issues.apache.org/jira/browse/HADOOP-15923) | create-release script should set max-cache-ttl as well as default-cache-ttl for gpg-agent |  Blocker | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15930](https://issues.apache.org/jira/browse/HADOOP-15930) | Exclude MD5 checksum files from release artifact |  Critical | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15925](https://issues.apache.org/jira/browse/HADOOP-15925) | The config and log of gpg-agent are removed in create-release script |  Major | build | Akira Ajisaka | Dinesh Chitlangia |
| [YARN-9040](https://issues.apache.org/jira/browse/YARN-9040) | LevelDBCacheTimelineStore in ATS 1.5 leaks native memory |  Major | timelineserver | Tarun Parimi | Tarun Parimi |
| [HADOOP-16016](https://issues.apache.org/jira/browse/HADOOP-16016) | TestSSLFactory#testServerWeakCiphers sporadically fails in precommit builds |  Major | security, test | Jason Darrell Lowe | Akira Ajisaka |
| [YARN-6616](https://issues.apache.org/jira/browse/YARN-6616) | YARN AHS shows submitTime for jobs same as startTime |  Minor | . | Prabhu Joseph | Prabhu Joseph |
| [MAPREDUCE-7177](https://issues.apache.org/jira/browse/MAPREDUCE-7177) | Disable speculative execution in TestDFSIO |  Major | . | Kihwal Lee | Zhaohui Xin |
| [YARN-9206](https://issues.apache.org/jira/browse/YARN-9206) | RMServerUtils does not count SHUTDOWN as an accepted state |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [HADOOP-15813](https://issues.apache.org/jira/browse/HADOOP-15813) | Enable more reliable SSL connection reuse |  Major | common | Daryn Sharp | Daryn Sharp |
| [HADOOP-16151](https://issues.apache.org/jira/browse/HADOOP-16151) | pip install pylint fails in branch-2.8 and branch-2.9 |  Blocker | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-7266](https://issues.apache.org/jira/browse/YARN-7266) | Timeline Server event handler threads locked |  Major | ATSv2, timelineserver | Venkata Puneet Ravuri | Prabhu Joseph |
| [YARN-5714](https://issues.apache.org/jira/browse/YARN-5714) | ContainerExecutor does not order environment map |  Trivial | nodemanager | Remi Catherinot | Remi Catherinot |
| [HADOOP-16055](https://issues.apache.org/jira/browse/HADOOP-16055) | Upgrade AWS SDK to 1.11.271 in branch-2 |  Blocker | fs/s3 | Akira Ajisaka | Akira Ajisaka |
| [HDFS-14414](https://issues.apache.org/jira/browse/HDFS-14414) | Clean up findbugs warning in branch-2 |  Major | . | Wei-Chiu Chuang | Dinesh Chitlangia |
| [HDFS-10477](https://issues.apache.org/jira/browse/HDFS-10477) | Stop decommission a rack of DataNodes caused NameNode fail over to standby |  Major | namenode | yunjiong zhao | yunjiong zhao |
| [HDFS-13677](https://issues.apache.org/jira/browse/HDFS-13677) | Dynamic refresh Disk configuration results in overwriting VolumeMap |  Blocker | . | xuzq | xuzq |
| [YARN-9285](https://issues.apache.org/jira/browse/YARN-9285) | RM UI progress column is of wrong type |  Minor | yarn | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-16331](https://issues.apache.org/jira/browse/HADOOP-16331) | Fix ASF License check in pom.xml |  Major | . | Wanqiang Ji | Akira Ajisaka |
| [HDFS-14512](https://issues.apache.org/jira/browse/HDFS-14512) | ONE\_SSD policy will be violated while write data with DistributedFileSystem.create(....favoredNodes) |  Major | . | Shen Yinjie | Ayush Saxena |
| [HDFS-14521](https://issues.apache.org/jira/browse/HDFS-14521) | Suppress setReplication logging. |  Major | . | Kihwal Lee | Kihwal Lee |
| [YARN-8625](https://issues.apache.org/jira/browse/YARN-8625) | Aggregate Resource Allocation for each job is not present in ATS |  Major | ATSv2 | Prabhu Joseph | Prabhu Joseph |
| [HDFS-14535](https://issues.apache.org/jira/browse/HDFS-14535) | The default 8KB buffer in requestFileDescriptors#BufferedOutputStream is causing lots of heap allocation in HBase when using short-circut read |  Major | hdfs-client | Zheng Hu | Zheng Hu |
| [HDFS-13730](https://issues.apache.org/jira/browse/HDFS-13730) | BlockReaderRemote.sendReadResult throws NPE |  Major | hdfs-client | Wei-Chiu Chuang | Yuanbo Liu |
| [HDFS-13770](https://issues.apache.org/jira/browse/HDFS-13770) | dfsadmin -report does not always decrease "missing blocks (with replication factor 1)" metrics when file is deleted |  Major | hdfs | Kitti Nanasi | Kitti Nanasi |
| [HDFS-14101](https://issues.apache.org/jira/browse/HDFS-14101) | Random failure of testListCorruptFilesCorruptedBlock |  Major | test | Kihwal Lee | Zsolt Venczel |
| [HDFS-12748](https://issues.apache.org/jira/browse/HDFS-12748) | NameNode memory leak when accessing webhdfs GETHOMEDIRECTORY |  Major | hdfs | Jiandan Yang | Weiwei Yang |
| [YARN-9702](https://issues.apache.org/jira/browse/YARN-9702) | Backport YARN-5788 to branch-2.8 |  Major | capacity scheduler | Muhammad Samir Khan | Muhammad Samir Khan |
| [HADOOP-16435](https://issues.apache.org/jira/browse/HADOOP-16435) | RpcMetrics should not be retained forever |  Critical | rpc-server | Zoltan Haindrich | Zoltan Haindrich |
| [YARN-9596](https://issues.apache.org/jira/browse/YARN-9596) | QueueMetrics has incorrect metrics when labelled partitions are involved |  Major | capacity scheduler | Muhammad Samir Khan | Muhammad Samir Khan |
| [HDFS-13101](https://issues.apache.org/jira/browse/HDFS-13101) | Yet another fsimage corruption related to snapshot |  Critical | snapshots | Yongjun Zhang | Shashikant Banerjee |
| [HDFS-14311](https://issues.apache.org/jira/browse/HDFS-14311) | Multi-threading conflict at layoutVersion when loading block pool storage |  Major | rolling upgrades | Yicong Cai | Yicong Cai |
| [HADOOP-16494](https://issues.apache.org/jira/browse/HADOOP-16494) | Add SHA-256 or SHA-512 checksum to release artifacts to comply with the release distribution policy |  Blocker | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-16255](https://issues.apache.org/jira/browse/HADOOP-16255) | ChecksumFS.Make FileSystem.rename(path, path, options) doesn't rename checksum |  Major | fs | Steve Loughran | Jungtaek Lim |
| [HDFS-14303](https://issues.apache.org/jira/browse/HDFS-14303) | check block directory logic not correct when there is only meta file, print no meaning warn log |  Minor | datanode, hdfs | qiang Liu | qiang Liu |
| [HADOOP-16582](https://issues.apache.org/jira/browse/HADOOP-16582) | LocalFileSystem's mkdirs() does not work as expected under viewfs. |  Major | . | Kihwal Lee | Kihwal Lee |
| [YARN-9855](https://issues.apache.org/jira/browse/YARN-9855) | Fix ApplicationReportProto submitTime id in branch-2.8/branch-2.7 |  Major | . | Jonathan Hung | Jonathan Hung |
| [HADOOP-16662](https://issues.apache.org/jira/browse/HADOOP-16662) | Remove unnecessary InnerNode check in NetworkTopology#add() |  Minor | . | Lisheng Sun | Lisheng Sun |
| [HDFS-12749](https://issues.apache.org/jira/browse/HDFS-12749) | DN may not send block report to NN after NN restart |  Major | datanode | TanYuxin | Xiaoqiao He |
| [HDFS-13901](https://issues.apache.org/jira/browse/HDFS-13901) | INode access time is ignored because of race between open and rename |  Major | . | Jinglun | Jinglun |
| [HADOOP-16754](https://issues.apache.org/jira/browse/HADOOP-16754) | Fix docker failed to build yetus/hadoop |  Blocker | build | Kevin Su | Kevin Su |
| [HADOOP-16808](https://issues.apache.org/jira/browse/HADOOP-16808) | Use forkCount and reuseForks parameters instead of forkMode in the config of maven surefire plugin |  Minor | build | Akira Ajisaka | Xieming Li |
| [MAPREDUCE-7272](https://issues.apache.org/jira/browse/MAPREDUCE-7272) | TaskAttemptListenerImpl excessive log messages |  Major | . | Ahmed Hussein | Ahmed Hussein |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11950](https://issues.apache.org/jira/browse/HDFS-11950) | Disable libhdfs zerocopy test on Mac |  Minor | libhdfs | John Zhuge | Akira Ajisaka |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11572](https://issues.apache.org/jira/browse/HADOOP-11572) | s3a delete() operation fails during a concurrent delete of child entries |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-16009](https://issues.apache.org/jira/browse/HADOOP-16009) | Replace the url of the repository in Apache Hadoop source code |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15787](https://issues.apache.org/jira/browse/HADOOP-15787) | [JDK11] TestIPC.testRTEDuringConnectionSetup fails |  Major | . | Akira Ajisaka | Zsolt Venczel |
| [HADOOP-16109](https://issues.apache.org/jira/browse/HADOOP-16109) | Parquet reading S3AFileSystem causes EOF |  Blocker | fs/s3 | Dave Christianson | Steve Loughran |
| [HADOOP-16610](https://issues.apache.org/jira/browse/HADOOP-16610) | Upgrade to yetus 0.11.1 and use emoji vote on github pre commit |  Major | build | Duo Zhang | Duo Zhang |
| [HADOOP-16609](https://issues.apache.org/jira/browse/HADOOP-16609) | Add Jenkinsfile for all active branches |  Major | build | Duo Zhang | Akira Ajisaka |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16025](https://issues.apache.org/jira/browse/HADOOP-16025) | Update the year to 2019 |  Major | build | Ayush Saxena | Ayush Saxena |
| [HDFS-12729](https://issues.apache.org/jira/browse/HDFS-12729) | Document special paths in HDFS |  Major | documentation | Christopher Douglas | Masatake Iwasaki |
| [HADOOP-15711](https://issues.apache.org/jira/browse/HADOOP-15711) | Move branch-2 precommit/nightly test builds to java 8 |  Critical | . | Jonathan Hung | Jonathan Hung |
| [HDFS-14510](https://issues.apache.org/jira/browse/HDFS-14510) | Backport HDFS-13087 to branch-2 (Snapshotted encryption zone information should be immutable) |  Major | encryption, snapshots | Wei-Chiu Chuang | Siyao Meng |
| [HDFS-14725](https://issues.apache.org/jira/browse/HDFS-14725) | Backport HDFS-12914 to branch-2 (Block report leases cause missing blocks until next report) |  Major | namenode | Wei-Chiu Chuang | Xiaoqiao He |
| [HADOOP-16555](https://issues.apache.org/jira/browse/HADOOP-16555) | Update commons-compress to 1.19 |  Major | . | Wei-Chiu Chuang | YiSheng Lien |
| [HADOOP-16784](https://issues.apache.org/jira/browse/HADOOP-16784) | Update the year to 2020 |  Major | . | Ayush Saxena | Ayush Saxena |


