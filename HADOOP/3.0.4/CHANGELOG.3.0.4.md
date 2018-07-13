
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

## Release 3.0.4 - Unreleased (as of 2018-07-13)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15252](https://issues.apache.org/jira/browse/HADOOP-15252) | Checkstyle version is not compatible with IDEA's checkstyle plugin |  Major | . | Andras Bokor | Andras Bokor |
| [HDFS-13602](https://issues.apache.org/jira/browse/HDFS-13602) | Add checkOperation(WRITE) checks in FSNamesystem |  Major | ha, namenode | Erik Krogen | Chao Sun |
| [HDFS-13155](https://issues.apache.org/jira/browse/HDFS-13155) | BlockPlacementPolicyDefault.chooseTargetInOrder Not Checking Return Value for NULL |  Minor | namenode | BELUGA BEHR | Zsolt Venczel |
| [HDFS-13659](https://issues.apache.org/jira/browse/HDFS-13659) | Add more test coverage for contentSummary for snapshottable path |  Major | namenode, test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-15499](https://issues.apache.org/jira/browse/HADOOP-15499) | Performance severe drop when running RawErasureCoderBenchmark with NativeRSRawErasureCoder |  Major | . | SammiChen | SammiChen |
| [HDFS-13653](https://issues.apache.org/jira/browse/HDFS-13653) | Make dfs.client.failover.random.order a per nameservice configuration |  Major | federation | Ekanth Sethuramalingam | Ekanth Sethuramalingam |
| [YARN-8394](https://issues.apache.org/jira/browse/YARN-8394) | Improve data locality documentation for Capacity Scheduler |  Major | . | Weiwei Yang | Weiwei Yang |
| [HDFS-13641](https://issues.apache.org/jira/browse/HDFS-13641) | Add metrics for edit log tailing |  Major | metrics | Chao Sun | Chao Sun |
| [HDFS-13686](https://issues.apache.org/jira/browse/HDFS-13686) | Add overall metrics for FSNamesystemLock |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [HDFS-13692](https://issues.apache.org/jira/browse/HDFS-13692) | StorageInfoDefragmenter floods log when compacting StorageInfo TreeSet |  Minor | . | Yiqun Lin | Bharat Viswanadham |
| [HDFS-13703](https://issues.apache.org/jira/browse/HDFS-13703) | Avoid allocation of CorruptedBlocks hashmap when no corrupted blocks are hit |  Major | performance | Todd Lipcon | Todd Lipcon |
| [HADOOP-15554](https://issues.apache.org/jira/browse/HADOOP-15554) | Improve JIT performance for Configuration parsing |  Minor | conf, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-13714](https://issues.apache.org/jira/browse/HDFS-13714) | Fix TestNameNodePrunesMissingStorages test failures on Windows |  Major | hdfs, namenode, test | Lukas Majercak | Lukas Majercak |
| [HDFS-13712](https://issues.apache.org/jira/browse/HDFS-13712) | BlockReaderRemote.read() logging improvement |  Minor | hdfs-client | Gergo Repas | Gergo Repas |
| [HDFS-13719](https://issues.apache.org/jira/browse/HDFS-13719) | Docs around dfs.image.transfer.timeout are misleading |  Major | . | Kitti Nanasi | Kitti Nanasi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12857](https://issues.apache.org/jira/browse/HDFS-12857) | StoragePolicyAdmin should support schema based path |  Major | namenode | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-13636](https://issues.apache.org/jira/browse/HDFS-13636) | Cross-Site Scripting vulnerability in HttpServer2 |  Major | . | Haibo Yan | Haibo Yan |
| [HDFS-13339](https://issues.apache.org/jira/browse/HDFS-13339) | Volume reference can't be released and may lead to deadlock when DataXceiver does a check volume |  Critical | datanode | liaoyuxiangqin | Zsolt Venczel |
| [HDFS-13545](https://issues.apache.org/jira/browse/HDFS-13545) |  "guarded" is misspelled as "gaurded" in FSPermissionChecker.java |  Trivial | documentation | Jianchao Jia | Jianchao Jia |
| [MAPREDUCE-7103](https://issues.apache.org/jira/browse/MAPREDUCE-7103) | Fix TestHistoryViewerPrinter on windows due to a mismatch line separator |  Minor | . | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [HADOOP-15217](https://issues.apache.org/jira/browse/HADOOP-15217) | FsUrlConnection does not handle paths with spaces |  Major | fs | Joseph Fourny | Zsolt Venczel |
| [HDFS-12950](https://issues.apache.org/jira/browse/HDFS-12950) | [oiv] ls will fail in  secure cluster |  Major | . | Brahma Reddy Battula | Wei-Chiu Chuang |
| [YARN-8359](https://issues.apache.org/jira/browse/YARN-8359) | Exclude containermanager.linux test classes on Windows |  Major | . | Giovanni Matteo Fumarola | Jason Lowe |
| [HDFS-13664](https://issues.apache.org/jira/browse/HDFS-13664) | Refactor ConfiguredFailoverProxyProvider to make inheritance easier |  Minor | hdfs-client | Chao Sun | Chao Sun |
| [HDFS-12670](https://issues.apache.org/jira/browse/HDFS-12670) | can't renew HDFS tokens with only the hdfs client jar |  Critical | . | Thomas Graves | Arpit Agarwal |
| [HDFS-13667](https://issues.apache.org/jira/browse/HDFS-13667) | Typo: Marking all "datandoes" as stale |  Trivial | namenode | Wei-Chiu Chuang | Nanda kumar |
| [YARN-8405](https://issues.apache.org/jira/browse/YARN-8405) | RM zk-state-store.parent-path ACLs has been changed since HADOOP-14773 |  Major | . | Rohith Sharma K S | Íñigo Goiri |
| [YARN-8404](https://issues.apache.org/jira/browse/YARN-8404) | Timeline event publish need to be async to avoid Dispatcher thread leak in case ATS is down |  Blocker | . | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-13673](https://issues.apache.org/jira/browse/HDFS-13673) | TestNameNodeMetrics fails on Windows |  Minor | test | Zuoming Zhang | Zuoming Zhang |
| [HDFS-13676](https://issues.apache.org/jira/browse/HDFS-13676) | TestEditLogRace fails on Windows |  Minor | test | Zuoming Zhang | Zuoming Zhang |
| [HDFS-13174](https://issues.apache.org/jira/browse/HDFS-13174) | hdfs mover -p /path times out after 20 min |  Major | balancer & mover | Istvan Fajth | Istvan Fajth |
| [HADOOP-15523](https://issues.apache.org/jira/browse/HADOOP-15523) | Shell command timeout given is in seconds whereas it is taken as millisec while scheduling |  Major | . | Bilwa S T | Bilwa S T |
| [HDFS-13682](https://issues.apache.org/jira/browse/HDFS-13682) | Cannot create encryption zone after KMS auth token expires |  Critical | encryption, kms, namenode | Xiao Chen | Xiao Chen |
| [YARN-8444](https://issues.apache.org/jira/browse/YARN-8444) | NodeResourceMonitor crashes on bad swapFree value |  Major | . | Jim Brennan | Jim Brennan |
| [YARN-8443](https://issues.apache.org/jira/browse/YARN-8443) | Total #VCores in cluster metrics is wrong when CapacityScheduler reserved some containers |  Major | webapp | Tao Yang | Tao Yang |
| [YARN-8457](https://issues.apache.org/jira/browse/YARN-8457) | Compilation is broken with -Pyarn-ui |  Major | webapp | Sunil Govindan | Sunil Govindan |
| [YARN-8401](https://issues.apache.org/jira/browse/YARN-8401) | [UI2] new ui is not accessible with out internet connection |  Blocker | . | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-8451](https://issues.apache.org/jira/browse/YARN-8451) | Multiple NM heartbeat thread created when a slow NM resync with RM |  Major | nodemanager | Botong Huang | Botong Huang |
| [HADOOP-15548](https://issues.apache.org/jira/browse/HADOOP-15548) | Randomize local dirs |  Minor | . | Jim Brennan | Jim Brennan |
| [HDFS-13702](https://issues.apache.org/jira/browse/HDFS-13702) | Remove HTrace hooks from DFSClient to reduce CPU usage |  Major | performance | Todd Lipcon | Todd Lipcon |
| [HDFS-13635](https://issues.apache.org/jira/browse/HDFS-13635) | Incorrect message when block is not found |  Major | datanode | Wei-Chiu Chuang | Gabor Bota |
| [HADOOP-15571](https://issues.apache.org/jira/browse/HADOOP-15571) | Multiple FileContexts created with the same configuration object should be allowed to have different umask |  Critical | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HDFS-13121](https://issues.apache.org/jira/browse/HDFS-13121) | NPE when request file descriptors when SC read |  Minor | hdfs-client | Gang Xie | Zsolt Venczel |
| [YARN-6265](https://issues.apache.org/jira/browse/YARN-6265) | yarn.resourcemanager.fail-fast is used inconsistently |  Major | resourcemanager | Daniel Templeton | Yuanbo Liu |
| [YARN-8473](https://issues.apache.org/jira/browse/YARN-8473) | Containers being launched as app tears down can leave containers in NEW state |  Major | nodemanager | Jason Lowe | Jason Lowe |
| [HDFS-13723](https://issues.apache.org/jira/browse/HDFS-13723) | Occasional "Should be different group" error in TestRefreshUserMappings#testGroupMappingRefresh |  Major | security, test | Siyao Meng | Siyao Meng |
| [HDFS-12837](https://issues.apache.org/jira/browse/HDFS-12837) | Intermittent failure in TestReencryptionWithKMS |  Major | encryption, test | Surendra Singh Lilhore | Xiao Chen |
| [HDFS-13729](https://issues.apache.org/jira/browse/HDFS-13729) | Fix broken links to RBF documentation |  Minor | documentation | jwhitter | Gabor Bota |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13632](https://issues.apache.org/jira/browse/HDFS-13632) | Randomize baseDir for MiniJournalCluster in MiniQJMHACluster for TestDFSAdminWithHA |  Minor | . | Anbang Hu | Anbang Hu |
| [HDFS-13651](https://issues.apache.org/jira/browse/HDFS-13651) | TestReencryptionHandler fails on Windows |  Minor | . | Anbang Hu | Anbang Hu |
| [MAPREDUCE-7102](https://issues.apache.org/jira/browse/MAPREDUCE-7102) | Fix TestJavaSerialization for Windows due a mismatch line separator |  Minor | . | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [MAPREDUCE-7105](https://issues.apache.org/jira/browse/MAPREDUCE-7105) | Fix TestNativeCollectorOnlyHandler.testOnCall on Windows because of the path format |  Minor | . | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [HDFS-13652](https://issues.apache.org/jira/browse/HDFS-13652) | Randomize baseDir for MiniDFSCluster in TestBlockScanner |  Minor | . | Anbang Hu | Anbang Hu |
| [HDFS-13649](https://issues.apache.org/jira/browse/HDFS-13649) | Randomize baseDir for MiniDFSCluster in TestReconstructStripedFile and TestReconstructStripedFileWithRandomECPolicy |  Minor | . | Anbang Hu | Anbang Hu |
| [HDFS-13650](https://issues.apache.org/jira/browse/HDFS-13650) | Randomize baseDir for MiniDFSCluster in TestDFSStripedInputStream and TestDFSStripedInputStreamWithRandomECPolicy |  Minor | . | Anbang Hu | Anbang Hu |
| [YARN-8370](https://issues.apache.org/jira/browse/YARN-8370) | Some Node Manager tests fail on Windows due to improper path/file separator |  Minor | . | Anbang Hu | Anbang Hu |
| [YARN-8422](https://issues.apache.org/jira/browse/YARN-8422) | TestAMSimulator failing with NPE |  Minor | . | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [HADOOP-15532](https://issues.apache.org/jira/browse/HADOOP-15532) | TestBasicDiskValidator fails with NoSuchFileException |  Minor | . | Íñigo Goiri | Giovanni Matteo Fumarola |
| [HDFS-13563](https://issues.apache.org/jira/browse/HDFS-13563) | TestDFSAdminWithHA times out on Windows |  Minor | . | Anbang Hu | Lukas Majercak |
| [HDFS-13681](https://issues.apache.org/jira/browse/HDFS-13681) | Fix TestStartup.testNNFailToStartOnReadOnlyNNDir test failure on Windows |  Major | test | Xiao Liang | Xiao Liang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12978](https://issues.apache.org/jira/browse/HDFS-12978) | Fine-grained locking while consuming journal stream. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-13637](https://issues.apache.org/jira/browse/HDFS-13637) | RBF: Router fails when threadIndex (in ConnectionPool) wraps around Integer.MIN\_VALUE |  Critical | federation | CR Hota | CR Hota |
| [HDFS-13281](https://issues.apache.org/jira/browse/HDFS-13281) | Namenode#createFile should be /.reserved/raw/ aware. |  Critical | encryption | Rushabh S Shah | Rushabh S Shah |
| [HADOOP-15506](https://issues.apache.org/jira/browse/HADOOP-15506) | Upgrade Azure Storage Sdk version to 7.0.0 and update corresponding code blocks |  Minor | fs/azure | Esfandiar Manii | Esfandiar Manii |
| [HADOOP-15529](https://issues.apache.org/jira/browse/HADOOP-15529) | ContainerLaunch#testInvalidEnvVariableSubstitutionType is not supported in Windows |  Minor | . | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [HADOOP-15533](https://issues.apache.org/jira/browse/HADOOP-15533) | Make WASB listStatus messages consistent |  Trivial | fs/azure | Esfandiar Manii | Esfandiar Manii |
| [HADOOP-15458](https://issues.apache.org/jira/browse/HADOOP-15458) | TestLocalFileSystem#testFSOutputStreamBuilder fails on Windows |  Minor | test | Xiao Liang | Xiao Liang |
| [HDFS-13726](https://issues.apache.org/jira/browse/HDFS-13726) | RBF: Fix RBF configuration links |  Minor | documentation | Takanobu Asanuma | Takanobu Asanuma |


