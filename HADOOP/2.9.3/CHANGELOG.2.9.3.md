
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

## Release 2.9.3 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15950](https://issues.apache.org/jira/browse/HADOOP-15950) | Failover for LdapGroupsMapping |  Major | common, security | Lukas Majercak | Lukas Majercak |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13511](https://issues.apache.org/jira/browse/HDFS-13511) | Provide specialized exception when block length cannot be obtained |  Major | . | Ted Yu | Gabor Bota |
| [HADOOP-15804](https://issues.apache.org/jira/browse/HADOOP-15804) | upgrade to commons-compress 1.18 |  Major | . | PJ Fanning | Akira Ajisaka |
| [YARN-7225](https://issues.apache.org/jira/browse/YARN-7225) | Add queue and partition info to RM audit log |  Major | resourcemanager | Jonathan Hung | Eric Payne |
| [YARN-8969](https://issues.apache.org/jira/browse/YARN-8969) | AbstractYarnScheduler#getNodeTracker should return generic type to avoid type casting |  Major | . | Wanqiang Ji | Wanqiang Ji |
| [HADOOP-15919](https://issues.apache.org/jira/browse/HADOOP-15919) | AliyunOSS: Enable Yarn to use OSS |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-15943](https://issues.apache.org/jira/browse/HADOOP-15943) | AliyunOSS: add missing owner & group attributes for oss FileStatus |  Major | fs/oss | wujinhu | wujinhu |
| [YARN-9036](https://issues.apache.org/jira/browse/YARN-9036) | Escape newlines in health report in YARN UI |  Major | . | Jonathan Hung | Keqiu Hu |
| [YARN-9085](https://issues.apache.org/jira/browse/YARN-9085) | Add Guaranteed and MaxCapacity to CSQueueMetrics |  Major | . | Jonathan Hung | Jonathan Hung |
| [HDFS-14171](https://issues.apache.org/jira/browse/HDFS-14171) | Performance improvement in Tailing EditLog |  Major | namenode | Kenneth Yang | Kenneth Yang |
| [HADOOP-15959](https://issues.apache.org/jira/browse/HADOOP-15959) | revert HADOOP-12751 |  Minor | security | Steve Loughran | Steve Loughran |
| [HADOOP-15617](https://issues.apache.org/jira/browse/HADOOP-15617) | Node.js and npm package loading in the Dockerfile failing on branch-2 |  Major | build | Allen Wittenauer | Akhil PB |
| [HADOOP-16089](https://issues.apache.org/jira/browse/HADOOP-16089) | AliyunOSS: update oss-sdk version to 3.4.1 |  Major | fs/oss | wujinhu | wujinhu |
| [YARN-7171](https://issues.apache.org/jira/browse/YARN-7171) | RM UI should sort memory / cores numerically |  Major | . | Eric Maynard | Ahmed Hussein |
| [YARN-9282](https://issues.apache.org/jira/browse/YARN-9282) | Typo in javadoc of class LinuxContainerExecutor: hadoop.security.authetication should be 'authentication' |  Trivial | . | Szilard Nemeth | Charan Hebri |
| [HADOOP-16126](https://issues.apache.org/jira/browse/HADOOP-16126) | ipc.Client.stop() may sleep too long to wait for all connections |  Major | ipc | Tsz-wo Sze | Tsz-wo Sze |
| [HDFS-14247](https://issues.apache.org/jira/browse/HDFS-14247) | Repeat adding node description into network topology |  Minor | datanode | HuangTao | HuangTao |
| [YARN-9150](https://issues.apache.org/jira/browse/YARN-9150) | Making TimelineSchemaCreator support different backends for Timeline Schema Creation in ATSv2 |  Major | ATSv2 | Sushil Ks | Sushil Ks |
| [HDFS-14366](https://issues.apache.org/jira/browse/HDFS-14366) | Improve HDFS append performance |  Major | hdfs | Chao Sun | Chao Sun |
| [HADOOP-16323](https://issues.apache.org/jira/browse/HADOOP-16323) | https everywhere in Maven settings |  Minor | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-9563](https://issues.apache.org/jira/browse/YARN-9563) | Resource report REST API could return NaN or Inf |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-10659](https://issues.apache.org/jira/browse/HDFS-10659) | Namenode crashes after Journalnode re-installation in an HA cluster due to missing paxos directory |  Major | ha, journal-node | Amit Anand | star |
| [HADOOP-16369](https://issues.apache.org/jira/browse/HADOOP-16369) | Fix zstandard shortname misspelled as zts |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [HADOOP-16359](https://issues.apache.org/jira/browse/HADOOP-16359) | Bundle ZSTD native in branch-2 |  Major | native | Chao Sun | Chao Sun |
| [HADOOP-16053](https://issues.apache.org/jira/browse/HADOOP-16053) | Backport HADOOP-14816 to branch-2 |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-13694](https://issues.apache.org/jira/browse/HDFS-13694) | Making md5 computing being in parallel with image loading |  Major | . | zhouyingchao | Lisheng Sun |
| [HDFS-14547](https://issues.apache.org/jira/browse/HDFS-14547) | DirectoryWithQuotaFeature.quota costs additional memory even the storage type quota is not set. |  Major | . | Jinglun | Jinglun |
| [YARN-8045](https://issues.apache.org/jira/browse/YARN-8045) | Reduce log output from container status calls |  Major | . | Shane Kumpf | Craig Condit |
| [YARN-9442](https://issues.apache.org/jira/browse/YARN-9442) | container working directory has group read permissions |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-14723](https://issues.apache.org/jira/browse/HDFS-14723) | Add helper method FSNamesystem#setBlockManagerForTesting() in branch-2 |  Blocker | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-9756](https://issues.apache.org/jira/browse/YARN-9756) | Create metric that sums total memory/vcores preempted per round |  Major | capacity scheduler | Eric Payne | Manikandan R |
| [HDFS-14633](https://issues.apache.org/jira/browse/HDFS-14633) | The StorageType quota and consume in QuotaFeature is not handled for rename |  Major | . | Jinglun | Jinglun |
| [YARN-9914](https://issues.apache.org/jira/browse/YARN-9914) | Use separate configs for free disk space checking for full and not-full disks |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15050](https://issues.apache.org/jira/browse/HDFS-15050) | Optimize log information when DFSInputStream meet CannotObtainBlockLengthException |  Major | dfsclient | Xiaoqiao He | Xiaoqiao He |
| [HDFS-14758](https://issues.apache.org/jira/browse/HDFS-14758) | Decrease lease hard limit |  Minor | . | Eric Payne | Hemanth Boyina |
| [HADOOP-16882](https://issues.apache.org/jira/browse/HADOOP-16882) | Update jackson-databind to 2.9.10.2 in branch-3.1, branch-2.10 |  Blocker | . | Wei-Chiu Chuang | Lisheng Sun |
| [HADOOP-16952](https://issues.apache.org/jira/browse/HADOOP-16952) | Add .diff to gitignore |  Minor | . | Ayush Saxena | Ayush Saxena |
| [YARN-6492](https://issues.apache.org/jira/browse/YARN-6492) | Generate queue metrics for each partition |  Major | capacity scheduler | Jonathan Hung | Manikandan R |
| [HADOOP-17047](https://issues.apache.org/jira/browse/HADOOP-17047) | TODO comments exist in trunk while the related issues are already fixed. |  Trivial | . | Rungroj Maipradit | Rungroj Maipradit |
| [HADOOP-17090](https://issues.apache.org/jira/browse/HADOOP-17090) | Increase precommit job timeout from 5 hours to 20 hours |  Major | build | Akira Ajisaka | Akira Ajisaka |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-14043](https://issues.apache.org/jira/browse/HDFS-14043) | Tolerate corrupted seen\_txid file |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [HDFS-14048](https://issues.apache.org/jira/browse/HDFS-14048) | DFSOutputStream close() throws exception on subsequent call after DataNode restart |  Major | hdfs-client | Erik Krogen | Erik Krogen |
| [MAPREDUCE-7156](https://issues.apache.org/jira/browse/MAPREDUCE-7156) | NullPointerException when reaching max shuffle connections |  Major | mrv2 | Peter Bacsko | Peter Bacsko |
| [HADOOP-15930](https://issues.apache.org/jira/browse/HADOOP-15930) | Exclude MD5 checksum files from release artifact |  Critical | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15925](https://issues.apache.org/jira/browse/HADOOP-15925) | The config and log of gpg-agent are removed in create-release script |  Major | build | Akira Ajisaka | Dinesh Chitlangia |
| [YARN-7794](https://issues.apache.org/jira/browse/YARN-7794) | SLSRunner is not loading timeline service jars causing failure |  Blocker | scheduler-load-simulator | Sunil G | Yufei Gu |
| [YARN-9040](https://issues.apache.org/jira/browse/YARN-9040) | LevelDBCacheTimelineStore in ATS 1.5 leaks native memory |  Major | timelineserver | Tarun Parimi | Tarun Parimi |
| [HADOOP-16008](https://issues.apache.org/jira/browse/HADOOP-16008) | Fix typo in CommandsManual.md |  Minor | . | Akira Ajisaka | Shweta |
| [HADOOP-15973](https://issues.apache.org/jira/browse/HADOOP-15973) | Configuration: Included properties are not cached if resource is a stream |  Critical | . | Eric Payne | Eric Payne |
| [HADOOP-15992](https://issues.apache.org/jira/browse/HADOOP-15992) | JSON License is included in the transitive dependency of aliyun-sdk-oss 3.0.0 |  Blocker | . | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-16030](https://issues.apache.org/jira/browse/HADOOP-16030) | AliyunOSS: bring fixes back from HADOOP-15671 |  Blocker | fs/oss | wujinhu | wujinhu |
| [YARN-8833](https://issues.apache.org/jira/browse/YARN-8833) | Avoid potential integer overflow when computing fair shares |  Major | fairscheduler | liyakun | liyakun |
| [HADOOP-16016](https://issues.apache.org/jira/browse/HADOOP-16016) | TestSSLFactory#testServerWeakCiphers sporadically fails in precommit builds |  Major | security, test | Jason Darrell Lowe | Akira Ajisaka |
| [YARN-8747](https://issues.apache.org/jira/browse/YARN-8747) | [UI2] YARN UI2 page loading failed due to js error under some time zone configuration |  Critical | webapp | collinma | collinma |
| [YARN-9210](https://issues.apache.org/jira/browse/YARN-9210) | RM nodes web page can not display node info |  Blocker | yarn | Jiandan Yang | Jiandan Yang |
| [YARN-7088](https://issues.apache.org/jira/browse/YARN-7088) | Add application launch time to Resource Manager REST API |  Major | . | Abdullah Yousufi | Kanwaljeet Sachdev |
| [YARN-9222](https://issues.apache.org/jira/browse/YARN-9222) | Print launchTime in ApplicationSummary |  Major | . | Jonathan Hung | Jonathan Hung |
| [HADOOP-16049](https://issues.apache.org/jira/browse/HADOOP-16049) | DistCp result has data and checksum mismatch when blocks per chunk \> 0 |  Major | tools/distcp | Kai Xie | Kai Xie |
| [YARN-6616](https://issues.apache.org/jira/browse/YARN-6616) | YARN AHS shows submitTime for jobs same as startTime |  Minor | . | Prabhu Joseph | Prabhu Joseph |
| [MAPREDUCE-7177](https://issues.apache.org/jira/browse/MAPREDUCE-7177) | Disable speculative execution in TestDFSIO |  Major | . | Kihwal Lee | Zhaohui Xin |
| [YARN-9206](https://issues.apache.org/jira/browse/YARN-9206) | RMServerUtils does not count SHUTDOWN as an accepted state |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [YARN-9283](https://issues.apache.org/jira/browse/YARN-9283) | Javadoc of LinuxContainerExecutor#addSchedPriorityCommand has a wrong property name as reference |  Minor | documentation | Szilard Nemeth | Adam Antal |
| [HADOOP-15813](https://issues.apache.org/jira/browse/HADOOP-15813) | Enable more reliable SSL connection reuse |  Major | common | Daryn Sharp | Daryn Sharp |
| [HADOOP-16018](https://issues.apache.org/jira/browse/HADOOP-16018) | DistCp won't reassemble chunks when blocks per chunk \> 0 |  Major | tools/distcp | Kai Xie | Kai Xie |
| [HADOOP-16151](https://issues.apache.org/jira/browse/HADOOP-16151) | pip install pylint fails in branch-2.8 and branch-2.9 |  Blocker | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-14314](https://issues.apache.org/jira/browse/HDFS-14314) | fullBlockReportLeaseId should be reset after registering to NN |  Critical | datanode | star | star |
| [YARN-7266](https://issues.apache.org/jira/browse/YARN-7266) | Timeline Server event handler threads locked |  Major | ATSv2, timelineserver | Venkata Puneet Ravuri | Prabhu Joseph |
| [YARN-5714](https://issues.apache.org/jira/browse/YARN-5714) | ContainerExecutor does not order environment map |  Trivial | nodemanager | Remi Catherinot | Remi Catherinot |
| [HADOOP-16055](https://issues.apache.org/jira/browse/HADOOP-16055) | Upgrade AWS SDK to 1.11.271 in branch-2 |  Blocker | fs/s3 | Akira Ajisaka | Akira Ajisaka |
| [HDFS-14407](https://issues.apache.org/jira/browse/HDFS-14407) | Fix misuse of SLF4j logging API in DatasetVolumeChecker#checkAllVolumes |  Minor | . | Wanqiang Ji | Wanqiang Ji |
| [HDFS-14414](https://issues.apache.org/jira/browse/HDFS-14414) | Clean up findbugs warning in branch-2 |  Major | . | Wei-Chiu Chuang | Dinesh Chitlangia |
| [HDFS-10477](https://issues.apache.org/jira/browse/HDFS-10477) | Stop decommission a rack of DataNodes caused NameNode fail over to standby |  Major | namenode | yunjiong zhao | yunjiong zhao |
| [HDFS-13677](https://issues.apache.org/jira/browse/HDFS-13677) | Dynamic refresh Disk configuration results in overwriting VolumeMap |  Blocker | . | xuzq | xuzq |
| [YARN-9285](https://issues.apache.org/jira/browse/YARN-9285) | RM UI progress column is of wrong type |  Minor | yarn | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-16248](https://issues.apache.org/jira/browse/HADOOP-16248) | MutableQuantiles leak memory under heavy load |  Major | metrics | Alexis Daboville | Alexis Daboville |
| [HADOOP-16331](https://issues.apache.org/jira/browse/HADOOP-16331) | Fix ASF License check in pom.xml |  Major | . | Wanqiang Ji | Akira Ajisaka |
| [HDFS-14514](https://issues.apache.org/jira/browse/HDFS-14514) | Actual read size of open file in encryption zone still larger than listing size even after enabling HDFS-11402 in Hadoop 2 |  Major | encryption, hdfs, snapshots | Siyao Meng | Siyao Meng |
| [HDFS-14512](https://issues.apache.org/jira/browse/HDFS-14512) | ONE\_SSD policy will be violated while write data with DistributedFileSystem.create(....favoredNodes) |  Major | . | Shen Yinjie | Ayush Saxena |
| [HDFS-14521](https://issues.apache.org/jira/browse/HDFS-14521) | Suppress setReplication logging. |  Major | . | Kihwal Lee | Kihwal Lee |
| [YARN-8625](https://issues.apache.org/jira/browse/YARN-8625) | Aggregate Resource Allocation for each job is not present in ATS |  Major | ATSv2 | Prabhu Joseph | Prabhu Joseph |
| [HDFS-14535](https://issues.apache.org/jira/browse/HDFS-14535) | The default 8KB buffer in requestFileDescriptors#BufferedOutputStream is causing lots of heap allocation in HBase when using short-circut read |  Major | hdfs-client | Zheng Hu | Zheng Hu |
| [HDFS-13730](https://issues.apache.org/jira/browse/HDFS-13730) | BlockReaderRemote.sendReadResult throws NPE |  Major | hdfs-client | Wei-Chiu Chuang | Yuanbo Liu |
| [HDFS-13770](https://issues.apache.org/jira/browse/HDFS-13770) | dfsadmin -report does not always decrease "missing blocks (with replication factor 1)" metrics when file is deleted |  Major | hdfs | Kitti Nanasi | Kitti Nanasi |
| [HDFS-14101](https://issues.apache.org/jira/browse/HDFS-14101) | Random failure of testListCorruptFilesCorruptedBlock |  Major | test | Kihwal Lee | Zsolt Venczel |
| [HDFS-14465](https://issues.apache.org/jira/browse/HDFS-14465) | When the Block expected replications is larger than the number of DataNodes, entering maintenance will never exit. |  Major | . | Yicong Cai | Yicong Cai |
| [HDFS-14541](https://issues.apache.org/jira/browse/HDFS-14541) |  When evictableMmapped or evictable size is zero, do not throw NoSuchElementException |  Major | hdfs-client, performance | Zheng Hu | Lisheng Sun |
| [YARN-9655](https://issues.apache.org/jira/browse/YARN-9655) | AllocateResponse in FederationInterceptor lost  applicationPriority |  Major | federation | hunshenshi | hunshenshi |
| [HDFS-12748](https://issues.apache.org/jira/browse/HDFS-12748) | NameNode memory leak when accessing webhdfs GETHOMEDIRECTORY |  Major | hdfs | Jiandan Yang | Weiwei Yang |
| [HADOOP-16386](https://issues.apache.org/jira/browse/HADOOP-16386) | FindBugs warning in branch-2: GlobalStorageStatistics defines non-transient non-serializable instance field map |  Major | fs | Wei-Chiu Chuang | Masatake Iwasaki |
| [HADOOP-9844](https://issues.apache.org/jira/browse/HADOOP-9844) | NPE when trying to create an error message response of SASL RPC |  Major | ipc | Steve Loughran | Steve Loughran |
| [HDFS-14429](https://issues.apache.org/jira/browse/HDFS-14429) | Block remain in COMMITTED but not COMPLETE caused by Decommission |  Major | . | Yicong Cai | Yicong Cai |
| [HADOOP-16435](https://issues.apache.org/jira/browse/HADOOP-16435) | RpcMetrics should not be retained forever |  Critical | rpc-server | Zoltan Haindrich | Zoltan Haindrich |
| [HDFS-14464](https://issues.apache.org/jira/browse/HDFS-14464) | Remove unnecessary log message from DFSInputStream |  Trivial | . | Kihwal Lee | Chao Sun |
| [YARN-9596](https://issues.apache.org/jira/browse/YARN-9596) | QueueMetrics has incorrect metrics when labelled partitions are involved |  Major | capacity scheduler | Muhammad Samir Khan | Muhammad Samir Khan |
| [HDFS-14631](https://issues.apache.org/jira/browse/HDFS-14631) | The DirectoryScanner doesn't fix the wrongly placed replica. |  Major | . | Jinglun | Jinglun |
| [HDFS-13101](https://issues.apache.org/jira/browse/HDFS-13101) | Yet another fsimage corruption related to snapshot |  Critical | snapshots | Yongjun Zhang | Shashikant Banerjee |
| [HDFS-14311](https://issues.apache.org/jira/browse/HDFS-14311) | Multi-threading conflict at layoutVersion when loading block pool storage |  Major | rolling upgrades | Yicong Cai | Yicong Cai |
| [HADOOP-16494](https://issues.apache.org/jira/browse/HADOOP-16494) | Add SHA-256 or SHA-512 checksum to release artifacts to comply with the release distribution policy |  Blocker | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-16255](https://issues.apache.org/jira/browse/HADOOP-16255) | ChecksumFS.Make FileSystem.rename(path, path, options) doesn't rename checksum |  Major | fs | Steve Loughran | Jungtaek Lim |
| [HDFS-14303](https://issues.apache.org/jira/browse/HDFS-14303) | check block directory logic not correct when there is only meta file, print no meaning warn log |  Minor | datanode, hdfs | qiang Liu | qiang Liu |
| [HADOOP-16582](https://issues.apache.org/jira/browse/HADOOP-16582) | LocalFileSystem's mkdirs() does not work as expected under viewfs. |  Major | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-16662](https://issues.apache.org/jira/browse/HADOOP-16662) | Remove unnecessary InnerNode check in NetworkTopology#add() |  Minor | . | Lisheng Sun | Lisheng Sun |
| [HDFS-12749](https://issues.apache.org/jira/browse/HDFS-12749) | DN may not send block report to NN after NN restart |  Major | datanode | TanYuxin | Xiaoqiao He |
| [HDFS-13901](https://issues.apache.org/jira/browse/HDFS-13901) | INode access time is ignored because of race between open and rename |  Major | . | Jinglun | Jinglun |
| [YARN-9838](https://issues.apache.org/jira/browse/YARN-9838) | Fix resource inconsistency for queues when moving app with reserved container to another queue |  Critical | capacity scheduler | jiulongzhu | jiulongzhu |
| [HADOOP-16754](https://issues.apache.org/jira/browse/HADOOP-16754) | Fix docker failed to build yetus/hadoop |  Blocker | build | Kevin Su | Kevin Su |
| [HADOOP-16749](https://issues.apache.org/jira/browse/HADOOP-16749) | Configuration parsing of CDATA values are blank |  Major | conf | Jonathan Turner Eagles | Daryn Sharp |
| [HDFS-13339](https://issues.apache.org/jira/browse/HDFS-13339) | Volume reference can't be released and may lead to deadlock when DataXceiver does a check volume |  Critical | datanode | liaoyuxiangqin | Zsolt Venczel |
| [HADOOP-16808](https://issues.apache.org/jira/browse/HADOOP-16808) | Use forkCount and reuseForks parameters instead of forkMode in the config of maven surefire plugin |  Minor | build | Akira Ajisaka | Xieming Li |
| [HDFS-15161](https://issues.apache.org/jira/browse/HDFS-15161) | When evictableMmapped or evictable size is zero, do not throw NoSuchElementException in ShortCircuitCache#close() |  Major | . | Lisheng Sun | Lisheng Sun |
| [HADOOP-16869](https://issues.apache.org/jira/browse/HADOOP-16869) |  Upgrade findbugs-maven-plugin to 3.0.5 to fix mvn findbugs:findbugs failure |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10156](https://issues.apache.org/jira/browse/YARN-10156) | Fix typo 'complaint' which means quite different in Federation.md |  Minor | documentation, federation | Sungpeo Kook | Sungpeo Kook |
| [HADOOP-16891](https://issues.apache.org/jira/browse/HADOOP-16891) | Upgrade jackson-databind to 2.9.10.3 |  Blocker | . | Siyao Meng | Siyao Meng |
| [HADOOP-16840](https://issues.apache.org/jira/browse/HADOOP-16840) | AliyunOSS: getFileStatus throws FileNotFoundException in versioning bucket |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-16949](https://issues.apache.org/jira/browse/HADOOP-16949) | pylint fails in the build environment |  Critical | build | Akira Ajisaka | Akira Ajisaka |
| [MAPREDUCE-7272](https://issues.apache.org/jira/browse/MAPREDUCE-7272) | TaskAttemptListenerImpl excessive log messages |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-16944](https://issues.apache.org/jira/browse/HADOOP-16944) | Use Yetus 0.12.0 in GitHub PR |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15281](https://issues.apache.org/jira/browse/HDFS-15281) | ZKFC ignores dfs.namenode.rpc-bind-host and uses dfs.namenode.rpc-address to bind to host address |  Major | ha, namenode | Dhiraj Hegde | Dhiraj Hegde |
| [HDFS-15297](https://issues.apache.org/jira/browse/HDFS-15297) | TestNNHandlesBlockReportPerStorage::blockReport\_02 fails intermittently in trunk |  Major | datanode, test | Mingliang Liu | Ayush Saxena |
| [HDFS-15302](https://issues.apache.org/jira/browse/HDFS-15302) | Backport HDFS-15286 to branch-2.x |  Blocker | . | Akira Ajisaka | Hemanth Boyina |
| [HADOOP-17045](https://issues.apache.org/jira/browse/HADOOP-17045) | \`Configuration\` javadoc describes supporting environment variables, but the feature is not available |  Minor | . | Nick Dimiduk | Masatake Iwasaki |
| [HADOOP-17052](https://issues.apache.org/jira/browse/HADOOP-17052) | NetUtils.connect() throws unchecked exception (UnresolvedAddressException) causing clients to abort |  Major | net | Dhiraj Hegde | Dhiraj Hegde |
| [HADOOP-17062](https://issues.apache.org/jira/browse/HADOOP-17062) | Fix shelldocs path in Jenkinsfile |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17059](https://issues.apache.org/jira/browse/HADOOP-17059) | ArrayIndexOfboundsException in ViewFileSystem#listStatus |  Major | viewfs | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-17184](https://issues.apache.org/jira/browse/HADOOP-17184) | Add --mvn-custom-repos parameter to yetus calls |  Major | build | Mingliang Liu | Mingliang Liu |
| [HADOOP-17185](https://issues.apache.org/jira/browse/HADOOP-17185) | Set MAVEN\_OPTS in Jenkinsfile |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17204](https://issues.apache.org/jira/browse/HADOOP-17204) | Fix typo in Hadoop KMS document |  Trivial | documentation, kms | Akira Ajisaka | Xieming Li |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11950](https://issues.apache.org/jira/browse/HDFS-11950) | Disable libhdfs zerocopy test on Mac |  Minor | libhdfs | John Zhuge | Akira Ajisaka |
| [HADOOP-14206](https://issues.apache.org/jira/browse/HADOOP-14206) | TestSFTPFileSystem#testFileExists failure: Invalid encoding for signature |  Major | fs, test | John Zhuge | Jim Brennan |
| [HADOOP-17205](https://issues.apache.org/jira/browse/HADOOP-17205) | Move personality file from Yetus to Hadoop repository |  Major | test, yetus | Chao Sun | Chao Sun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15917](https://issues.apache.org/jira/browse/HADOOP-15917) | AliyunOSS: fix incorrect ReadOps and WriteOps in statistics |  Major | fs/oss | wujinhu | wujinhu |
| [YARN-9125](https://issues.apache.org/jira/browse/YARN-9125) | Carriage Return character in launch command cause node manager to become unhealthy |  Major | . | Eric Yang | Billie Rinaldi |
| [HADOOP-16009](https://issues.apache.org/jira/browse/HADOOP-16009) | Replace the url of the repository in Apache Hadoop source code |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15323](https://issues.apache.org/jira/browse/HADOOP-15323) | AliyunOSS: Improve copy file performance for AliyunOSSFileSystemStore |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-15787](https://issues.apache.org/jira/browse/HADOOP-15787) | [JDK11] TestIPC.testRTEDuringConnectionSetup fails |  Major | . | Akira Ajisaka | Zsolt Venczel |
| [YARN-8549](https://issues.apache.org/jira/browse/YARN-8549) | Adding a NoOp timeline writer and reader plugin classes for ATSv2 |  Minor | ATSv2, timelineclient, timelineserver | Prabha Manepalli | Prabha Manepalli |
| [HADOOP-16109](https://issues.apache.org/jira/browse/HADOOP-16109) | Parquet reading S3AFileSystem causes EOF |  Blocker | fs/s3 | Dave Christianson | Steve Loughran |
| [HADOOP-16191](https://issues.apache.org/jira/browse/HADOOP-16191) | AliyunOSS: improvements for copyFile/copyDirectory and logging |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-16306](https://issues.apache.org/jira/browse/HADOOP-16306) | AliyunOSS: Remove temporary files when upload small files to OSS |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-16598](https://issues.apache.org/jira/browse/HADOOP-16598) | Backport "HADOOP-16558 [COMMON+HDFS] use protobuf-maven-plugin to generate protobuf classes" to all active branches |  Major | common | Duo Zhang | Duo Zhang |
| [HADOOP-16610](https://issues.apache.org/jira/browse/HADOOP-16610) | Upgrade to yetus 0.11.1 and use emoji vote on github pre commit |  Major | build | Duo Zhang | Duo Zhang |
| [HADOOP-16609](https://issues.apache.org/jira/browse/HADOOP-16609) | Add Jenkinsfile for all active branches |  Major | build | Duo Zhang | Akira Ajisaka |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16025](https://issues.apache.org/jira/browse/HADOOP-16025) | Update the year to 2019 |  Major | build | Ayush Saxena | Ayush Saxena |
| [HDFS-12729](https://issues.apache.org/jira/browse/HDFS-12729) | Document special paths in HDFS |  Major | documentation | Christopher Douglas | Masatake Iwasaki |
| [HADOOP-15711](https://issues.apache.org/jira/browse/HADOOP-15711) | Move branch-2 precommit/nightly test builds to java 8 |  Critical | . | Jonathan Hung | Jonathan Hung |
| [HDFS-14510](https://issues.apache.org/jira/browse/HDFS-14510) | Backport HDFS-13087 to branch-2 (Snapshotted encryption zone information should be immutable) |  Major | encryption, snapshots | Wei-Chiu Chuang | Siyao Meng |
| [HDFS-14585](https://issues.apache.org/jira/browse/HDFS-14585) | Backport HDFS-8901 Use ByteBuffer in DFSInputStream#read to branch2.9 |  Major | . | Lisheng Sun | Lisheng Sun |
| [HDFS-14483](https://issues.apache.org/jira/browse/HDFS-14483) | Backport HDFS-14111,HDFS-3246 ByteBuffer pread interface to branch-2.9 |  Major | . | Zheng Hu | Lisheng Sun |
| [HDFS-14725](https://issues.apache.org/jira/browse/HDFS-14725) | Backport HDFS-12914 to branch-2 (Block report leases cause missing blocks until next report) |  Major | namenode | Wei-Chiu Chuang | Xiaoqiao He |
| [HADOOP-16555](https://issues.apache.org/jira/browse/HADOOP-16555) | Update commons-compress to 1.19 |  Major | . | Wei-Chiu Chuang | YiSheng Lien |
| [HADOOP-16784](https://issues.apache.org/jira/browse/HADOOP-16784) | Update the year to 2020 |  Major | . | Ayush Saxena | Ayush Saxena |


