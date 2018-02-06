
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

## Release 2.9.1 - Unreleased (as of 2018-02-06)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12883](https://issues.apache.org/jira/browse/HDFS-12883) | RBF: Document Router and State Store metrics |  Major | documentation | Yiqun Lin | Yiqun Lin |
| [HDFS-12895](https://issues.apache.org/jira/browse/HDFS-12895) | RBF: Add ACL support for mount table |  Major | . | Yiqun Lin | Yiqun Lin |
| [YARN-7190](https://issues.apache.org/jira/browse/YARN-7190) | Ensure only NM classpath in 2.x gets TSv2 related hbase jars, not the user classpath |  Major | timelineclient, timelinereader, timelineserver | Vrushali C | Varun Saxena |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13083](https://issues.apache.org/jira/browse/HDFS-13083) | RBF: Fix doc error setting up client |  Major | federation | tartarus | tartarus |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12756](https://issues.apache.org/jira/browse/HADOOP-12756) | Incorporate Aliyun OSS file system implementation |  Major | fs, fs/oss | shimingfei | mingfei.shi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14872](https://issues.apache.org/jira/browse/HADOOP-14872) | CryptoInputStream should implement unbuffer |  Major | fs, security | John Zhuge | John Zhuge |
| [HADOOP-14964](https://issues.apache.org/jira/browse/HADOOP-14964) | AliyunOSS: backport Aliyun OSS module to branch-2 |  Major | fs/oss | Genmao Yu | SammiChen |
| [YARN-6851](https://issues.apache.org/jira/browse/YARN-6851) | Capacity Scheduler: document configs for controlling # containers allowed to be allocated per node heartbeat |  Minor | . | Wei Yan | Wei Yan |
| [YARN-7495](https://issues.apache.org/jira/browse/YARN-7495) | Improve robustness of the AggregatedLogDeletionService |  Major | log-aggregation | Jonathan Eagles | Jonathan Eagles |
| [YARN-7611](https://issues.apache.org/jira/browse/YARN-7611) | Node manager web UI should display container type in containers page |  Major | nodemanager, webapp | Weiwei Yang | Weiwei Yang |
| [HADOOP-15056](https://issues.apache.org/jira/browse/HADOOP-15056) | Fix TestUnbuffer#testUnbufferException failure |  Minor | test | Jack Bearden | Jack Bearden |
| [HADOOP-15012](https://issues.apache.org/jira/browse/HADOOP-15012) | Add readahead, dropbehind, and unbuffer to StreamCapabilities |  Major | fs | John Zhuge | John Zhuge |
| [HADOOP-15104](https://issues.apache.org/jira/browse/HADOOP-15104) | AliyunOSS: change the default value of max error retry |  Major | fs/oss | wujinhu | wujinhu |
| [YARN-7642](https://issues.apache.org/jira/browse/YARN-7642) | Add test case to verify context update after container promotion or demotion with or without auto update |  Minor | nodemanager | Weiwei Yang | Weiwei Yang |
| [HADOOP-15111](https://issues.apache.org/jira/browse/HADOOP-15111) | AliyunOSS: backport HADOOP-14993 to branch-2 |  Major | fs/oss | Genmao Yu | Genmao Yu |
| [HDFS-9023](https://issues.apache.org/jira/browse/HDFS-9023) | When NN is not able to identify DN for replication, reason behind it can be logged |  Critical | hdfs-client, namenode | Surendra Singh Lilhore | Xiao Chen |
| [YARN-7678](https://issues.apache.org/jira/browse/YARN-7678) | Ability to enable logging of container memory stats |  Major | nodemanager | Jim Brennan | Jim Brennan |
| [HDFS-12945](https://issues.apache.org/jira/browse/HDFS-12945) | Switch to ClientProtocol instead of NamenodeProtocols in NamenodeWebHdfsMethods |  Minor | . | Wei Yan | Wei Yan |
| [YARN-7590](https://issues.apache.org/jira/browse/YARN-7590) | Improve container-executor validation check |  Major | security, yarn | Eric Yang | Eric Yang |
| [HADOOP-15189](https://issues.apache.org/jira/browse/HADOOP-15189) | backport HADOOP-15039 to branch-2 and branch-3 |  Blocker | . | Genmao Yu | Genmao Yu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-13723](https://issues.apache.org/jira/browse/HADOOP-13723) | AliyunOSSInputStream#read() should update read bytes stat correctly |  Major | tools | Mingliang Liu | Mingliang Liu |
| [HADOOP-14045](https://issues.apache.org/jira/browse/HADOOP-14045) | Aliyun OSS documentation missing from website |  Major | documentation, fs/oss | Andrew Wang | Yiqun Lin |
| [HADOOP-14458](https://issues.apache.org/jira/browse/HADOOP-14458) | Add missing imports to TestAliyunOSSFileSystemContract.java |  Trivial | fs/oss, test | Mingliang Liu | Mingliang Liu |
| [HADOOP-14466](https://issues.apache.org/jira/browse/HADOOP-14466) | Remove useless document from TestAliyunOSSFileSystemContract.java |  Minor | documentation | Akira Ajisaka | Chen Liang |
| [HDFS-12318](https://issues.apache.org/jira/browse/HDFS-12318) | Fix IOException condition for openInfo in DFSInputStream |  Major | . | legend | legend |
| [HDFS-12788](https://issues.apache.org/jira/browse/HDFS-12788) | Reset the upload button when file upload fails |  Critical | ui, webhdfs | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-7388](https://issues.apache.org/jira/browse/YARN-7388) | TestAMRestart should be scheduler agnostic |  Major | . | Haibo Chen | Haibo Chen |
| [HDFS-12705](https://issues.apache.org/jira/browse/HDFS-12705) | WebHdfsFileSystem exceptions should retain the caused by exception |  Major | hdfs | Daryn Sharp | Hanisha Koneru |
| [YARN-6078](https://issues.apache.org/jira/browse/YARN-6078) | Containers stuck in Localizing state |  Major | . | Jagadish | Billie Rinaldi |
| [YARN-7361](https://issues.apache.org/jira/browse/YARN-7361) | Improve the docker container runtime documentation |  Major | . | Shane Kumpf | Shane Kumpf |
| [YARN-7469](https://issues.apache.org/jira/browse/YARN-7469) | Capacity Scheduler Intra-queue preemption: User can starve if newest app is exactly at user limit |  Major | capacity scheduler, yarn | Eric Payne | Eric Payne |
| [YARN-7489](https://issues.apache.org/jira/browse/YARN-7489) | ConcurrentModificationException in RMAppImpl#getRMAppMetrics |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-7525](https://issues.apache.org/jira/browse/YARN-7525) | Incorrect query parameters in cluster nodes REST API document |  Minor | documentation | Tao Yang | Tao Yang |
| [HADOOP-15045](https://issues.apache.org/jira/browse/HADOOP-15045) | ISA-L build options are documented in branch-2 |  Major | build, documentation | Akira Ajisaka | Akira Ajisaka |
| [YARN-7390](https://issues.apache.org/jira/browse/YARN-7390) | All reservation related test cases failed when TestYarnClient runs against Fair Scheduler. |  Major | fairscheduler, reservation system | Yufei Gu | Yufei Gu |
| [HDFS-12754](https://issues.apache.org/jira/browse/HDFS-12754) | Lease renewal can hit a deadlock |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [HDFS-12832](https://issues.apache.org/jira/browse/HDFS-12832) | INode.getFullPathName may throw ArrayIndexOutOfBoundsException lead to NameNode exit |  Critical | namenode | DENG FEI | Konstantin Shvachko |
| [HDFS-11754](https://issues.apache.org/jira/browse/HDFS-11754) | Make FsServerDefaults cache configurable. |  Minor | . | Rushabh S Shah | Mikhail Erofeev |
| [YARN-7509](https://issues.apache.org/jira/browse/YARN-7509) | AsyncScheduleThread and ResourceCommitterService are still running after RM is transitioned to standby |  Critical | . | Tao Yang | Tao Yang |
| [YARN-7558](https://issues.apache.org/jira/browse/YARN-7558) | "yarn logs" command fails to get logs for running containers if UI authentication is enabled. |  Critical | . | Namit Maheshwari | Xuan Gong |
| [HDFS-12638](https://issues.apache.org/jira/browse/HDFS-12638) | Delete copy-on-truncate block along with the original block, when deleting a file being truncated |  Blocker | hdfs | Jiandan Yang | Konstantin Shvachko |
| [MAPREDUCE-5124](https://issues.apache.org/jira/browse/MAPREDUCE-5124) | AM lacks flow control for task events |  Major | mr-am | Jason Lowe | Peter Bacsko |
| [YARN-7455](https://issues.apache.org/jira/browse/YARN-7455) | quote\_and\_append\_arg can overflow buffer |  Major | nodemanager | Jason Lowe | Jim Brennan |
| [HADOOP-14985](https://issues.apache.org/jira/browse/HADOOP-14985) | Remove subversion related code from VersionInfoMojo.java |  Minor | build | Akira Ajisaka | Ajay Kumar |
| [HDFS-12889](https://issues.apache.org/jira/browse/HDFS-12889) | Router UI is missing robots.txt file |  Major | . | Bharat Viswanadham | Bharat Viswanadham |
| [HDFS-11576](https://issues.apache.org/jira/browse/HDFS-11576) | Block recovery will fail indefinitely if recovery time \> heartbeat interval |  Critical | datanode, hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [YARN-7607](https://issues.apache.org/jira/browse/YARN-7607) | Remove the trailing duplicated timestamp in container diagnostics message |  Minor | nodemanager | Weiwei Yang | Weiwei Yang |
| [HADOOP-15080](https://issues.apache.org/jira/browse/HADOOP-15080) | Aliyun OSS: update oss sdk from 2.8.1 to 2.8.3 to remove its dependency on Cat-x "json-lib" |  Blocker | fs/oss | Chris Douglas | SammiChen |
| [YARN-7591](https://issues.apache.org/jira/browse/YARN-7591) | NPE in async-scheduling mode of CapacityScheduler |  Critical | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-7608](https://issues.apache.org/jira/browse/YARN-7608) | Incorrect sTarget column causing DataTable warning on RM application and scheduler web page |  Major | resourcemanager, webapp | Weiwei Yang | Gergely Novák |
| [HDFS-12833](https://issues.apache.org/jira/browse/HDFS-12833) | Distcp : Update the usage of delete option for dependency with update and overwrite option |  Minor | distcp, hdfs | Harshakiran Reddy | usharani |
| [YARN-7647](https://issues.apache.org/jira/browse/YARN-7647) | NM print inappropriate error log when node-labels is enabled |  Minor | . | Yang Wang | Yang Wang |
| [HDFS-12907](https://issues.apache.org/jira/browse/HDFS-12907) | Allow read-only access to reserved raw for non-superusers |  Major | namenode | Daryn Sharp | Rushabh S Shah |
| [HDFS-12881](https://issues.apache.org/jira/browse/HDFS-12881) | Output streams closed with IOUtils suppressing write errors |  Major | . | Jason Lowe | Ajay Kumar |
| [YARN-7595](https://issues.apache.org/jira/browse/YARN-7595) | Container launching code suppresses close exceptions after writes |  Major | nodemanager | Jason Lowe | Jim Brennan |
| [HADOOP-15085](https://issues.apache.org/jira/browse/HADOOP-15085) | Output streams closed with IOUtils suppressing write errors |  Major | . | Jason Lowe | Jim Brennan |
| [YARN-7661](https://issues.apache.org/jira/browse/YARN-7661) | NodeManager metrics return wrong value after update node resource |  Major | . | Yang Wang | Yang Wang |
| [HDFS-12347](https://issues.apache.org/jira/browse/HDFS-12347) | TestBalancerRPCDelay#testBalancerRPCDelay fails very frequently |  Critical | test | Xiao Chen | Bharat Viswanadham |
| [YARN-7542](https://issues.apache.org/jira/browse/YARN-7542) | Fix issue that causes some Running Opportunistic Containers to be recovered as PAUSED |  Major | . | Arun Suresh | Sampada Dehankar |
| [HADOOP-15143](https://issues.apache.org/jira/browse/HADOOP-15143) | NPE due to Invalid KerberosTicket in UGI |  Major | . | Jitendra Nath Pandey | Mukul Kumar Singh |
| [YARN-7692](https://issues.apache.org/jira/browse/YARN-7692) | Skip validating priority acls while recovering applications |  Blocker | resourcemanager | Charan Hebri | Sunil G |
| [MAPREDUCE-7028](https://issues.apache.org/jira/browse/MAPREDUCE-7028) | Concurrent task progress updates causing NPE in Application Master |  Blocker | mr-am | Gergo Repas | Gergo Repas |
| [YARN-7619](https://issues.apache.org/jira/browse/YARN-7619) | Max AM Resource value in Capacity Scheduler UI has to be refreshed for every user |  Major | capacity scheduler, yarn | Eric Payne | Eric Payne |
| [YARN-7699](https://issues.apache.org/jira/browse/YARN-7699) | queueUsagePercentage is coming as INF for getApp REST api call |  Major | webapp | Sunil G | Sunil G |
| [YARN-7508](https://issues.apache.org/jira/browse/YARN-7508) | NPE in FiCaSchedulerApp when debug log enabled in async-scheduling mode |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-7663](https://issues.apache.org/jira/browse/YARN-7663) | RMAppImpl:Invalid event: START at KILLED |  Minor | resourcemanager | lujie | lujie |
| [YARN-6948](https://issues.apache.org/jira/browse/YARN-6948) | Invalid event: ATTEMPT\_ADDED at FINAL\_SAVING |  Minor | yarn | lujie | lujie |
| [YARN-7735](https://issues.apache.org/jira/browse/YARN-7735) | Fix typo in YARN documentation |  Minor | documentation | Takanobu Asanuma | Takanobu Asanuma |
| [YARN-7727](https://issues.apache.org/jira/browse/YARN-7727) | Incorrect log levels in few logs with QueuePriorityContainerCandidateSelector |  Minor | yarn | Prabhu Joseph | Prabhu Joseph |
| [HDFS-11915](https://issues.apache.org/jira/browse/HDFS-11915) | Sync rbw dir on the first hsync() to avoid file lost on power failure |  Critical | . | Kanaka Kumar Avvaru | Vinayakumar B |
| [HDFS-8693](https://issues.apache.org/jira/browse/HDFS-8693) | refreshNamenodes does not support adding a new standby to a running DN |  Critical | datanode, ha | Jian Fang | Ajith S |
| [HDFS-9049](https://issues.apache.org/jira/browse/HDFS-9049) | Make Datanode Netty reverse proxy port to be configurable |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HADOOP-15150](https://issues.apache.org/jira/browse/HADOOP-15150) | in FsShell, UGI params should be overidden through env vars(-D arg) |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-15181](https://issues.apache.org/jira/browse/HADOOP-15181) | Typo in SecureMode.md |  Trivial | documentation | Masahiro Tanaka | Masahiro Tanaka |
| [YARN-7737](https://issues.apache.org/jira/browse/YARN-7737) | prelaunch.err file not found exception on container failure |  Major | . | Jonathan Hung | Keqiu Hu |
| [HDFS-13063](https://issues.apache.org/jira/browse/HDFS-13063) | Fix the incorrect spelling in HDFSHighAvailabilityWithQJM.md |  Trivial | documentation | Jianfei Jiang | Jianfei Jiang |
| [YARN-7102](https://issues.apache.org/jira/browse/YARN-7102) | NM heartbeat stuck when responseId overflows MAX\_INT |  Critical | . | Botong Huang | Botong Huang |
| [HADOOP-15151](https://issues.apache.org/jira/browse/HADOOP-15151) | MapFile.fix creates a wrong index file in case of block-compressed data file. |  Major | common | Grigori Rybkine | Grigori Rybkine |
| [MAPREDUCE-7020](https://issues.apache.org/jira/browse/MAPREDUCE-7020) | Task timeout in uber mode can crash AM |  Major | mr-am | Akira Ajisaka | Peter Bacsko |
| [YARN-7698](https://issues.apache.org/jira/browse/YARN-7698) | A misleading variable's name in ApplicationAttemptEventDispatcher |  Minor | resourcemanager | Jinjiang Ling | Jinjiang Ling |
| [HDFS-13100](https://issues.apache.org/jira/browse/HDFS-13100) | Handle IllegalArgumentException when GETSERVERDEFAULTS is not implemented in webhdfs. |  Critical | hdfs, webhdfs | Yongjun Zhang | Yongjun Zhang |
| [YARN-6868](https://issues.apache.org/jira/browse/YARN-6868) | Add test scope to certain entries in hadoop-yarn-server-resourcemanager pom.xml |  Major | yarn | Ray Chiang | Ray Chiang |
| [YARN-7849](https://issues.apache.org/jira/browse/YARN-7849) | TestMiniYarnClusterNodeUtilization#testUpdateNodeUtilization fails due to heartbeat sync error |  Major | test | Jason Lowe | Botong Huang |
| [YARN-7801](https://issues.apache.org/jira/browse/YARN-7801) | AmFilterInitializer should addFilter after fill all parameters |  Critical | . | Sumana Sathish | Wangda Tan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-13481](https://issues.apache.org/jira/browse/HADOOP-13481) | User end documents for Aliyun OSS FileSystem |  Minor | fs, fs/oss | Genmao Yu | Genmao Yu |
| [HADOOP-13591](https://issues.apache.org/jira/browse/HADOOP-13591) | Unit test failure in TestOSSContractGetFileStatus and TestOSSContractRootDir |  Major | fs, fs/oss | Genmao Yu | Genmao Yu |
| [HADOOP-13624](https://issues.apache.org/jira/browse/HADOOP-13624) | Rename TestAliyunOSSContractDispCp |  Major | fs, fs/oss | Kai Zheng | Genmao Yu |
| [HADOOP-14065](https://issues.apache.org/jira/browse/HADOOP-14065) | AliyunOSS: oss directory filestatus should use meta time |  Major | fs/oss | Fei Hui | Fei Hui |
| [HADOOP-13768](https://issues.apache.org/jira/browse/HADOOP-13768) | AliyunOSS: handle the failure in the batch delete operation \`deleteDirs\`. |  Major | fs | Genmao Yu | Genmao Yu |
| [HADOOP-14069](https://issues.apache.org/jira/browse/HADOOP-14069) | AliyunOSS: listStatus returns wrong file info |  Major | fs/oss | Fei Hui | Fei Hui |
| [HADOOP-13769](https://issues.apache.org/jira/browse/HADOOP-13769) | AliyunOSS: update oss sdk version |  Major | fs, fs/oss | Genmao Yu | Genmao Yu |
| [HADOOP-14072](https://issues.apache.org/jira/browse/HADOOP-14072) | AliyunOSS: Failed to read from stream when seek beyond the download size |  Major | fs/oss | Genmao Yu | Genmao Yu |
| [HADOOP-14192](https://issues.apache.org/jira/browse/HADOOP-14192) | Aliyun OSS FileSystem contract test should implement getTestBaseDir() |  Major | fs/oss | Mingliang Liu | Mingliang Liu |
| [HADOOP-14194](https://issues.apache.org/jira/browse/HADOOP-14194) | Aliyun OSS should not use empty endpoint as default |  Major | fs/oss | Mingliang Liu | Genmao Yu |
| [HADOOP-14787](https://issues.apache.org/jira/browse/HADOOP-14787) | AliyunOSS: Implement the \`createNonRecursive\` operator |  Major | fs, fs/oss | Genmao Yu | Genmao Yu |
| [HADOOP-14649](https://issues.apache.org/jira/browse/HADOOP-14649) | Update aliyun-sdk-oss version to 2.8.1 |  Major | fs/oss | Ray Chiang | Genmao Yu |
| [HADOOP-14997](https://issues.apache.org/jira/browse/HADOOP-14997) |  Add hadoop-aliyun as dependency of hadoop-cloud-storage |  Minor | fs/oss | Genmao Yu | Genmao Yu |
| [HDFS-12801](https://issues.apache.org/jira/browse/HDFS-12801) | RBF: Set MountTableResolver as default file resolver |  Minor | . | Íñigo Goiri | Íñigo Goiri |
| [YARN-7430](https://issues.apache.org/jira/browse/YARN-7430) | Enable user re-mapping for Docker containers by default |  Blocker | security, yarn | Eric Yang | Eric Yang |
| [YARN-6128](https://issues.apache.org/jira/browse/YARN-6128) | Add support for AMRMProxy HA |  Major | amrmproxy, nodemanager | Subru Krishnan | Botong Huang |
| [HADOOP-15024](https://issues.apache.org/jira/browse/HADOOP-15024) | AliyunOSS: support user agent configuration and include that & Hadoop version information to oss server |  Major | fs, fs/oss | SammiChen | SammiChen |
| [HDFS-12858](https://issues.apache.org/jira/browse/HDFS-12858) | RBF: Add router admin commands usage in HDFS commands reference doc |  Minor | documentation | Yiqun Lin | Yiqun Lin |
| [HDFS-12835](https://issues.apache.org/jira/browse/HDFS-12835) | RBF: Fix Javadoc parameter errors |  Minor | . | Wei Yan | Wei Yan |
| [YARN-7587](https://issues.apache.org/jira/browse/YARN-7587) | Skip dispatching opportunistic containers to nodes whose queue is already full |  Major | . | Weiwei Yang | Weiwei Yang |
| [HDFS-12396](https://issues.apache.org/jira/browse/HDFS-12396) | Webhdfs file system should get delegation token from kms provider. |  Major | encryption, kms, webhdfs | Rushabh S Shah | Rushabh S Shah |
| [YARN-6704](https://issues.apache.org/jira/browse/YARN-6704) | Add support for work preserving NM restart when FederationInterceptor is enabled in AMRMProxyService |  Major | . | Botong Huang | Botong Huang |
| [HDFS-12875](https://issues.apache.org/jira/browse/HDFS-12875) | RBF: Complete logic for -readonly option of dfsrouteradmin add command |  Major | . | Yiqun Lin | Íñigo Goiri |
| [YARN-7630](https://issues.apache.org/jira/browse/YARN-7630) | Fix AMRMToken rollover handling in AMRMProxy |  Minor | . | Botong Huang | Botong Huang |
| [HDFS-12937](https://issues.apache.org/jira/browse/HDFS-12937) | RBF: Add more unit tests for router admin commands |  Major | test | Yiqun Lin | Yiqun Lin |
| [HDFS-12988](https://issues.apache.org/jira/browse/HDFS-12988) | RBF: Mount table entries not properly updated in the local cache |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HADOOP-15156](https://issues.apache.org/jira/browse/HADOOP-15156) | backport HADOOP-15086 rename fix to branch-2 |  Major | fs/azure | Thomas Marquardt | Thomas Marquardt |
| [YARN-7716](https://issues.apache.org/jira/browse/YARN-7716) | metricsTimeStart and metricsTimeEnd should be all lower case in the doc |  Major | timelinereader | Haibo Chen | Haibo Chen |
| [HDFS-12802](https://issues.apache.org/jira/browse/HDFS-12802) | RBF: Control MountTableResolver cache size |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HADOOP-15027](https://issues.apache.org/jira/browse/HADOOP-15027) | AliyunOSS: Support multi-thread pre-read to improve sequential read from Hadoop to Aliyun OSS performance |  Major | fs/oss | wujinhu | wujinhu |
| [HDFS-13028](https://issues.apache.org/jira/browse/HDFS-13028) | RBF: Fix spurious TestRouterRpc#testProxyGetStats |  Minor | . | Íñigo Goiri | Íñigo Goiri |
| [YARN-5094](https://issues.apache.org/jira/browse/YARN-5094) | some YARN container events have timestamp of -1 |  Critical | timelineserver | Sangjin Lee | Haibo Chen |
| [YARN-7782](https://issues.apache.org/jira/browse/YARN-7782) | Enable user re-mapping for Docker containers in yarn-default.xml |  Blocker | security, yarn | Eric Yang | Eric Yang |
| [HDFS-12772](https://issues.apache.org/jira/browse/HDFS-12772) | RBF: Federation Router State State Store internal API |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13042](https://issues.apache.org/jira/browse/HDFS-13042) | RBF: Heartbeat Router State |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13049](https://issues.apache.org/jira/browse/HDFS-13049) | RBF: Inconsistent Router OPTS config in branch-2 and branch-3 |  Minor | . | Wei Yan | Wei Yan |
| [HDFS-12574](https://issues.apache.org/jira/browse/HDFS-12574) | Add CryptoInputStream to WebHdfsFileSystem read call. |  Major | encryption, kms, webhdfs | Rushabh S Shah | Rushabh S Shah |
| [HDFS-13044](https://issues.apache.org/jira/browse/HDFS-13044) | RBF: Add a safe mode for the Router |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13043](https://issues.apache.org/jira/browse/HDFS-13043) | RBF: Expose the state of the Routers in the federation |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13068](https://issues.apache.org/jira/browse/HDFS-13068) | RBF: Add router admin option to manage safe mode |  Major | . | Íñigo Goiri | Yiqun Lin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15149](https://issues.apache.org/jira/browse/HADOOP-15149) | CryptoOutputStream should implement StreamCapabilities |  Major | fs | Mike Drob | Xiao Chen |
| [YARN-7691](https://issues.apache.org/jira/browse/YARN-7691) | Add Unit Tests for ContainersLauncher |  Major | . | Sampada Dehankar | Sampada Dehankar |
| [HADOOP-15177](https://issues.apache.org/jira/browse/HADOOP-15177) | Update the release year to 2018 |  Blocker | build | Akira Ajisaka | Bharat Viswanadham |


