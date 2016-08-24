
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

## Release 3.0.0-alpha2 - Unreleased (as of 2016-08-24)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-13301](https://issues.apache.org/jira/browse/HADOOP-13301) | Millisecond timestamp for FsShell console log and MapReduce jobsummary log |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10650](https://issues.apache.org/jira/browse/HDFS-10650) | DFSClient#mkdirs and DFSClient#primitiveMkdir should use default directory permission |  Minor | . | John Zhuge | John Zhuge |
| [HDFS-10725](https://issues.apache.org/jira/browse/HDFS-10725) | Caller context should always be constructed by a builder |  Minor | ipc | Mingliang Liu | Mingliang Liu |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6729](https://issues.apache.org/jira/browse/MAPREDUCE-6729) | Accurately compute the test execute time in DFSIO |  Minor | benchmarks, performance, test | mingleizhang | mingleizhang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12747](https://issues.apache.org/jira/browse/HADOOP-12747) | support wildcard in libjars argument |  Major | util | Sangjin Lee | Sangjin Lee |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10425](https://issues.apache.org/jira/browse/HDFS-10425) | Clean up NNStorage and TestSaveNamespace |  Minor | . | Andras Bokor | Andras Bokor |
| [YARN-4883](https://issues.apache.org/jira/browse/YARN-4883) | Make consistent operation name in AdminService |  Minor | resourcemanager | Kai Sasaki | Kai Sasaki |
| [HDFS-10287](https://issues.apache.org/jira/browse/HDFS-10287) | MiniDFSCluster should implement AutoCloseable |  Minor | test | John Zhuge | Andras Bokor |
| [HDFS-10225](https://issues.apache.org/jira/browse/HDFS-10225) | DataNode hot swap drives should disallow storage type changes. |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-9937](https://issues.apache.org/jira/browse/HDFS-9937) | Update dfsadmin command line help and HdfsQuotaAdminGuide |  Minor | . | Wei-Chiu Chuang | Kai Sasaki |
| [MAPREDUCE-6746](https://issues.apache.org/jira/browse/MAPREDUCE-6746) | Replace org.apache.commons.io.Charsets with java.nio.charset.StandardCharsets |  Minor | . | Vincent Poon | Vincent Poon |
| [HADOOP-13444](https://issues.apache.org/jira/browse/HADOOP-13444) | Replace org.apache.commons.io.Charsets with java.nio.charset.StandardCharsets |  Minor | . | Vincent Poon | Vincent Poon |
| [YARN-5456](https://issues.apache.org/jira/browse/YARN-5456) | container-executor support for FreeBSD, NetBSD, and others if conf path is absolute |  Major | nodemanager, security | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13458](https://issues.apache.org/jira/browse/HADOOP-13458) | LoadBalancingKMSClientProvider#doOp should log IOException stacktrace |  Trivial | kms | Wei-Chiu Chuang | Chen Liang |
| [MAPREDUCE-6730](https://issues.apache.org/jira/browse/MAPREDUCE-6730) | Use StandardCharsets instead of String overload in TextOutputFormat |  Minor | . | Sahil Kang | Sahil Kang |
| [HDFS-10707](https://issues.apache.org/jira/browse/HDFS-10707) | Replace org.apache.commons.io.Charsets with java.nio.charset.StandardCharsets |  Minor | . | Vincent Poon | Vincent Poon |
| [HADOOP-13442](https://issues.apache.org/jira/browse/HADOOP-13442) | Optimize UGI group lookups |  Major | . | Daryn Sharp | Daryn Sharp |
| [HADOOP-13380](https://issues.apache.org/jira/browse/HADOOP-13380) | TestBasicDiskValidator should not write data to /tmp |  Minor | . | Lei (Eddy) Xu | Yufei Gu |
| [HDFS-10342](https://issues.apache.org/jira/browse/HDFS-10342) | BlockManager#createLocatedBlocks should not check corrupt replicas if none are corrupt |  Major | hdfs | Daryn Sharp | Kuhu Shukla |
| [HDFS-10645](https://issues.apache.org/jira/browse/HDFS-10645) | Make block report size as a metric and add this metric to datanode web ui |  Major | datanode, ui | Yuanbo Liu | Yuanbo Liu |
| [MAPREDUCE-6587](https://issues.apache.org/jira/browse/MAPREDUCE-6587) | Remove unused params in connection-related methods of Fetcher |  Minor | . | Yiqun Lin | Yiqun Lin |
| [YARN-4491](https://issues.apache.org/jira/browse/YARN-4491) | yarn list command to support filtering by tags |  Minor | client | Steve Loughran | Varun Saxena |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10639](https://issues.apache.org/jira/browse/HDFS-10639) | Fix typos in HDFSDiskbalancer.md |  Trivial | documentation | Akira Ajisaka | Yiqun Lin |
| [HADOOP-13073](https://issues.apache.org/jira/browse/HADOOP-13073) | RawLocalFileSystem does not react on changing umask |  Major | fs | Andras Bokor | Andras Bokor |
| [HADOOP-13202](https://issues.apache.org/jira/browse/HADOOP-13202) | Avoid possible overflow in org.apache.hadoop.util.bloom.BloomFilter#getNBytes |  Major | util | zhengbing li | Kai Sasaki |
| [HDFS-10603](https://issues.apache.org/jira/browse/HDFS-10603) | Fix flaky tests in org.apache.hadoop.hdfs.server.namenode.snapshot.TestOpenFilesWithSnapshot |  Major | hdfs, namenode | Yongjun Zhang | Yiqun Lin |
| [HADOOP-12991](https://issues.apache.org/jira/browse/HADOOP-12991) | Conflicting default ports in DelegateToFileSystem |  Major | fs | Kevin Hogeland | Kai Sasaki |
| [HDFS-10671](https://issues.apache.org/jira/browse/HDFS-10671) | Fix typo in HdfsRollingUpgrade.md |  Trivial | documentation | Yiqun Lin | Yiqun Lin |
| [HADOOP-9427](https://issues.apache.org/jira/browse/HADOOP-9427) | Use JUnit assumptions to skip platform-specific tests |  Major | test | Arpit Agarwal | Gergely Novák |
| [YARN-5431](https://issues.apache.org/jira/browse/YARN-5431) | TimeLineReader daemon start should allow to pass its own reader opts |  Major | scripts, timelinereader | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-10696](https://issues.apache.org/jira/browse/HDFS-10696) | TestHDFSCLI fails |  Major | test | Akira Ajisaka | Kai Sasaki |
| [YARN-5440](https://issues.apache.org/jira/browse/YARN-5440) | Use AHSClient in YarnClient when TimelineServer is running |  Major | . | Xuan Gong | Xuan Gong |
| [HDFS-9276](https://issues.apache.org/jira/browse/HDFS-9276) | Failed to Update HDFS Delegation Token for long running application in HA mode |  Major | fs, ha, security | Liangliang Gu | Liangliang Gu |
| [YARN-5436](https://issues.apache.org/jira/browse/YARN-5436) | Race in AsyncDispatcher can cause random test failures in Tez (probably YARN also) |  Major | . | Zhiyuan Yang | Zhiyuan Yang |
| [HADOOP-13381](https://issues.apache.org/jira/browse/HADOOP-13381) | KMS clients should use KMS Delegation Tokens from current UGI. |  Critical | kms | Xiao Chen | Xiao Chen |
| [HDFS-10691](https://issues.apache.org/jira/browse/HDFS-10691) | FileDistribution fails in hdfs oiv command due to ArrayIndexOutOfBoundsException |  Major | . | Yiqun Lin | Yiqun Lin |
| [YARN-5121](https://issues.apache.org/jira/browse/YARN-5121) | fix some container-executor portability issues |  Blocker | nodemanager, security | Allen Wittenauer | Allen Wittenauer |
| [HADOOP-13440](https://issues.apache.org/jira/browse/HADOOP-13440) | FileContext does not react on changing umask via configuration |  Major | . | Yufei Gu | Akira Ajisaka |
| [HDFS-5805](https://issues.apache.org/jira/browse/HDFS-5805) | TestCheckpoint.testCheckpoint fails intermittently on branch2 |  Major | . | Mit Desai | Eric Badger |
| [HDFS-742](https://issues.apache.org/jira/browse/HDFS-742) | A down DataNode makes Balancer to hang on repeatingly asking NameNode its partial block list |  Minor | balancer & mover | Hairong Kuang | Mit Desai |
| [HDFS-10569](https://issues.apache.org/jira/browse/HDFS-10569) | A bug causes OutOfIndex error in BlockListAsLongs |  Minor | . | Weiwei Yang | Weiwei Yang |
| [MAPREDUCE-6682](https://issues.apache.org/jira/browse/MAPREDUCE-6682) | TestMRCJCFileOutputCommitter fails intermittently |  Major | test | Brahma Reddy Battula | Akira Ajisaka |
| [HADOOP-13443](https://issues.apache.org/jira/browse/HADOOP-13443) | KMS should check the type of underlying keyprovider of KeyProviderExtension before falling back to default |  Minor | kms | Anthony Young-Garner | Anthony Young-Garner |
| [HDFS-10722](https://issues.apache.org/jira/browse/HDFS-10722) | Fix race condition in TestEditLog#testBatchedSyncWithClosedLogs |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-10343](https://issues.apache.org/jira/browse/HDFS-10343) | BlockManager#createLocatedBlocks may return blocks on failed storages |  Major | hdfs | Daryn Sharp | Kuhu Shukla |
| [HADOOP-13353](https://issues.apache.org/jira/browse/HADOOP-13353) | LdapGroupsMapping getPassward shouldn't return null when IOException throws |  Major | security | Zhaohao Liang | Wei-Chiu Chuang |
| [YARN-4624](https://issues.apache.org/jira/browse/YARN-4624) | NPE in PartitionQueueCapacitiesInfo while accessing Schduler UI |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-10457](https://issues.apache.org/jira/browse/HDFS-10457) | DataNode should not auto-format block pool directory if VERSION is missing |  Major | datanode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-4176](https://issues.apache.org/jira/browse/HDFS-4176) | EditLogTailer should call rollEdits with a timeout |  Major | ha, namenode | Todd Lipcon | Lei (Eddy) Xu |
| [HADOOP-13439](https://issues.apache.org/jira/browse/HADOOP-13439) | Fix race between TestMetricsSystemImpl and TestGangliaMetrics |  Minor | test | Masatake Iwasaki | Chen Liang |
| [HADOOP-13473](https://issues.apache.org/jira/browse/HADOOP-13473) | Tracing in IPC Server is broken |  Major | . | Wei-Chiu Chuang | Daryn Sharp |
| [HDFS-10738](https://issues.apache.org/jira/browse/HDFS-10738) | Fix TestRefreshUserMappings.testRefreshSuperUserGroupsConfiguration test failure |  Major | test | Rakesh R | Rakesh R |
| [HDFS-8224](https://issues.apache.org/jira/browse/HDFS-8224) | Schedule a block for scanning if its metadata file is corrupt |  Major | datanode | Rushabh S Shah | Rushabh S Shah |
| [HADOOP-13461](https://issues.apache.org/jira/browse/HADOOP-13461) | NPE in KeyProvider.rollNewVersion |  Minor | . | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [HDFS-8897](https://issues.apache.org/jira/browse/HDFS-8897) | Balancer should handle fs.defaultFS trailing slash in HA |  Major | balancer & mover | LINTE | John Zhuge |
| [HADOOP-13441](https://issues.apache.org/jira/browse/HADOOP-13441) | Document LdapGroupsMapping keystore password properties |  Minor | security | Wei-Chiu Chuang | Yuanbo Liu |
| [HADOOP-13410](https://issues.apache.org/jira/browse/HADOOP-13410) | RunJar adds the content of the jar twice to the classpath |  Major | util | Sangjin Lee | Yuanbo Liu |
| [HDFS-9696](https://issues.apache.org/jira/browse/HDFS-9696) | Garbage snapshot records lingering forever |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-13437](https://issues.apache.org/jira/browse/HADOOP-13437) | KMS should reload whitelist and default key ACLs when hot-reloading |  Major | kms | Xiao Chen | Xiao Chen |
| [HADOOP-13494](https://issues.apache.org/jira/browse/HADOOP-13494) | ReconfigurableBase can log sensitive information |  Major | security | Sean Mackrory | Sean Mackrory |
| [HDFS-10549](https://issues.apache.org/jira/browse/HDFS-10549) | Correctly revoke file leases when closing files |  Major | hdfs-client | Yiqun Lin | Yiqun Lin |
| [HDFS-10773](https://issues.apache.org/jira/browse/HDFS-10773) | BlockSender should not synchronize on the dataset object |  Major | datanode | Arpit Agarwal | Chen Liang |
| [HDFS-10763](https://issues.apache.org/jira/browse/HDFS-10763) | Open files can leak permanently due to inconsistent lease update |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HADOOP-13487](https://issues.apache.org/jira/browse/HADOOP-13487) | Hadoop KMS should load old delegation tokens from Zookeeper on startup |  Major | kms | Alex Ivanov | Xiao Chen |
| [HDFS-10783](https://issues.apache.org/jira/browse/HDFS-10783) | The option '-maxSize' and '-step' fail in OfflineImageViewer |  Major | tools | Yiqun Lin | Yiqun Lin |
| [HADOOP-13497](https://issues.apache.org/jira/browse/HADOOP-13497) | fix wrong command in CredentialProviderAPI.md |  Trivial | documentation | Yuanbo Liu | Yuanbo Liu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-6738](https://issues.apache.org/jira/browse/MAPREDUCE-6738) | TestJobListCache.testAddExisting failed intermittently in slow VM testbed |  Minor | . | Junping Du | Junping Du |
| [HADOOP-13395](https://issues.apache.org/jira/browse/HADOOP-13395) | Enhance TestKMSAudit |  Minor | kms | Xiao Chen | Xiao Chen |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-10598](https://issues.apache.org/jira/browse/HDFS-10598) | DiskBalancer does not execute multi-steps plan. |  Critical | diskbalancer | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-13429](https://issues.apache.org/jira/browse/HADOOP-13429) | Dispose of unnecessary SASL servers |  Major | ipc | Daryn Sharp | Daryn Sharp |
| [HADOOP-13426](https://issues.apache.org/jira/browse/HADOOP-13426) | More efficiently build IPC responses |  Major | . | Daryn Sharp | Daryn Sharp |
| [HDFS-10656](https://issues.apache.org/jira/browse/HDFS-10656) | Optimize conversion of byte arrays back to path string |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-10674](https://issues.apache.org/jira/browse/HDFS-10674) | Optimize creating a full path from an inode |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HADOOP-13438](https://issues.apache.org/jira/browse/HADOOP-13438) | Optimize IPC server protobuf decoding |  Major | . | Daryn Sharp | Daryn Sharp |
| [HDFS-10662](https://issues.apache.org/jira/browse/HDFS-10662) | Optimize UTF8 string/byte conversions |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-10673](https://issues.apache.org/jira/browse/HDFS-10673) | Optimize FSPermissionChecker's internal path usage |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-10588](https://issues.apache.org/jira/browse/HDFS-10588) | False alarm in datanode log - ERROR - Disk Balancer is not enabled |  Major | datanode, hdfs | Weiwei Yang | Weiwei Yang |
| [YARN-4091](https://issues.apache.org/jira/browse/YARN-4091) | Add REST API to retrieve scheduler activity |  Major | capacity scheduler, resourcemanager | Sunil G | Chen Ge |
| [HADOOP-13418](https://issues.apache.org/jira/browse/HADOOP-13418) | Fix javadoc warnings by JDK8 in hadoop-nfs package |  Major | . | Kai Sasaki | Kai Sasaki |
| [HDFS-10681](https://issues.apache.org/jira/browse/HDFS-10681) | DiskBalancer: query command should report Plan file path apart from PlanID |  Minor | diskbalancer | Manoj Govindassamy | Manoj Govindassamy |
| [HDFS-10744](https://issues.apache.org/jira/browse/HDFS-10744) | Internally optimize path component resolution |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-10745](https://issues.apache.org/jira/browse/HDFS-10745) | Directly resolve paths into INodesInPath |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-10711](https://issues.apache.org/jira/browse/HDFS-10711) | Optimize FSPermissionChecker group membership check |  Major | hdfs | Daryn Sharp | Daryn Sharp |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-5495](https://issues.apache.org/jira/browse/YARN-5495) | Remove import wildcard in CapacityScheduler |  Trivial | capacityscheduler | Ray Chiang | Ray Chiang |


