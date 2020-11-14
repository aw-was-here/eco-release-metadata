
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

## Release 3.0.4 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13448](https://issues.apache.org/jira/browse/HDFS-13448) | HDFS Block Placement - Ignore Locality for First Block Replica |  Minor | block placement, hdfs-client | David Mollitor | David Mollitor |
| [HADOOP-15950](https://issues.apache.org/jira/browse/HADOOP-15950) | Failover for LdapGroupsMapping |  Major | common, security | Lukas Majercak | Lukas Majercak |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-6851](https://issues.apache.org/jira/browse/YARN-6851) | Capacity Scheduler: document configs for controlling # containers allowed to be allocated per node heartbeat |  Minor | . | Wei Yan | Wei Yan |
| [YARN-7274](https://issues.apache.org/jira/browse/YARN-7274) | Ability to disable elasticity at leaf queue level |  Major | capacityscheduler | Scott Brokaw | Zian Chen |
| [HADOOP-15252](https://issues.apache.org/jira/browse/HADOOP-15252) | Checkstyle version is not compatible with IDEA's checkstyle plugin |  Major | . | Andras Bokor | Andras Bokor |
| [HDFS-13602](https://issues.apache.org/jira/browse/HDFS-13602) | Add checkOperation(WRITE) checks in FSNamesystem |  Major | ha, namenode | Erik Krogen | Chao Sun |
| [HDFS-13155](https://issues.apache.org/jira/browse/HDFS-13155) | BlockPlacementPolicyDefault.chooseTargetInOrder Not Checking Return Value for NULL |  Minor | namenode | David Mollitor | Zsolt Venczel |
| [HDFS-13659](https://issues.apache.org/jira/browse/HDFS-13659) | Add more test coverage for contentSummary for snapshottable path |  Major | namenode, test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-15499](https://issues.apache.org/jira/browse/HADOOP-15499) | Performance severe drop when running RawErasureCoderBenchmark with NativeRSRawErasureCoder |  Major | . | Sammi Chen | Sammi Chen |
| [HDFS-13653](https://issues.apache.org/jira/browse/HDFS-13653) | Make dfs.client.failover.random.order a per nameservice configuration |  Major | federation | Ekanth Sethuramalingam | Ekanth Sethuramalingam |
| [YARN-8394](https://issues.apache.org/jira/browse/YARN-8394) | Improve data locality documentation for Capacity Scheduler |  Major | . | Weiwei Yang | Weiwei Yang |
| [HDFS-13641](https://issues.apache.org/jira/browse/HDFS-13641) | Add metrics for edit log tailing |  Major | metrics | Chao Sun | Chao Sun |
| [HDFS-13686](https://issues.apache.org/jira/browse/HDFS-13686) | Add overall metrics for FSNamesystemLock |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [HDFS-13692](https://issues.apache.org/jira/browse/HDFS-13692) | StorageInfoDefragmenter floods log when compacting StorageInfo TreeSet |  Minor | . | Yiqun Lin | Bharat Viswanadham |
| [HDFS-13703](https://issues.apache.org/jira/browse/HDFS-13703) | Avoid allocation of CorruptedBlocks hashmap when no corrupted blocks are hit |  Major | performance | Todd Lipcon | Todd Lipcon |
| [HADOOP-15554](https://issues.apache.org/jira/browse/HADOOP-15554) | Improve JIT performance for Configuration parsing |  Minor | conf, performance | Todd Lipcon | Todd Lipcon |
| [HDFS-13714](https://issues.apache.org/jira/browse/HDFS-13714) | Fix TestNameNodePrunesMissingStorages test failures on Windows |  Major | hdfs, namenode, test | Lukas Majercak | Lukas Majercak |
| [HDFS-13712](https://issues.apache.org/jira/browse/HDFS-13712) | BlockReaderRemote.read() logging improvement |  Minor | hdfs-client | Gergo Repas | Gergo Repas |
| [HDFS-13719](https://issues.apache.org/jira/browse/HDFS-13719) | Docs around dfs.image.transfer.timeout are misleading |  Major | documentation | Kitti Nanasi | Kitti Nanasi |
| [HADOOP-15598](https://issues.apache.org/jira/browse/HADOOP-15598) | DataChecksum calculate checksum is contented on hashtable synchronization |  Major | common | Prasanth Jayachandran | Prasanth Jayachandran |
| [HADOOP-15609](https://issues.apache.org/jira/browse/HADOOP-15609) | Retry KMS calls when SSLHandshakeException occurs |  Major | common, kms | Kitti Nanasi | Kitti Nanasi |
| [HADOOP-15612](https://issues.apache.org/jira/browse/HADOOP-15612) | Improve exception when tfile fails to load LzoCodec |  Major | . | Gera Shegalov | Gera Shegalov |
| [HDFS-11060](https://issues.apache.org/jira/browse/HDFS-11060) | make DEFAULT\_MAX\_CORRUPT\_FILEBLOCKS\_RETURNED configurable |  Minor | hdfs | Lantao Jin | Lantao Jin |
| [HDFS-13727](https://issues.apache.org/jira/browse/HDFS-13727) | Log full stack trace if DiskBalancer exits with an unhandled exception |  Minor | diskbalancer | Stephen O'Donnell | Gabor Bota |
| [YARN-8155](https://issues.apache.org/jira/browse/YARN-8155) | Improve ATSv2 client logging in RM and NM publisher |  Major | . | Rohith Sharma K S | Abhishek Modi |
| [HDFS-13728](https://issues.apache.org/jira/browse/HDFS-13728) | Disk Balancer should not fail if volume usage is greater than capacity |  Minor | diskbalancer | Stephen O'Donnell | Stephen O'Donnell |
| [YARN-8568](https://issues.apache.org/jira/browse/YARN-8568) | Replace the deprecated zk-address property in the HA config example in ResourceManagerHA.md |  Minor | yarn | Antal Bálint Steinbach | Antal Bálint Steinbach |
| [HDFS-13814](https://issues.apache.org/jira/browse/HDFS-13814) | Remove super user privilege requirement for NameNode.getServiceStatus |  Minor | namenode | Chao Sun | Chao Sun |
| [YARN-8559](https://issues.apache.org/jira/browse/YARN-8559) | Expose mutable-conf scheduler's configuration in RM /scheduler-conf endpoint |  Major | resourcemanager | Anna Savarin | Weiwei Yang |
| [HDFS-13813](https://issues.apache.org/jira/browse/HDFS-13813) | Exit NameNode if dangling child inode is detected when saving FsImage |  Major | hdfs, namenode | Siyao Meng | Siyao Meng |
| [HDFS-13821](https://issues.apache.org/jira/browse/HDFS-13821) | RBF: Add dfs.federation.router.mount-table.cache.enable so that users can disable cache |  Major | hdfs | Hui Fei | Hui Fei |
| [HDFS-13831](https://issues.apache.org/jira/browse/HDFS-13831) | Make block increment deletion number configurable |  Major | . | Yiqun Lin | Ryan Wu |
| [YARN-8051](https://issues.apache.org/jira/browse/YARN-8051) | TestRMEmbeddedElector#testCallbackSynchronization is flakey |  Major | test | Robert Kanter | Robert Kanter |
| [HDFS-13857](https://issues.apache.org/jira/browse/HDFS-13857) | RBF: Choose to enable the default nameservice to read/write files |  Major | federation, hdfs | yanghuafeng | yanghuafeng |
| [HDFS-13812](https://issues.apache.org/jira/browse/HDFS-13812) | Fix the inconsistent default refresh interval on Caching documentation |  Trivial | documentation | David Mollitor | Hrishikesh Gadre |
| [HDFS-13902](https://issues.apache.org/jira/browse/HDFS-13902) |  Add JMX, conf and stacks menus to the datanode page |  Minor | datanode | fengchuang | fengchuang |
| [HADOOP-15726](https://issues.apache.org/jira/browse/HADOOP-15726) | Create utility to limit frequency of log statements |  Major | common, util | Erik Krogen | Erik Krogen |
| [HDFS-13830](https://issues.apache.org/jira/browse/HDFS-13830) | Backport HDFS-13141 to branch-3.0: WebHDFS: Add support for getting snasphottable directory list |  Major | webhdfs | Siyao Meng | Siyao Meng |
| [YARN-7974](https://issues.apache.org/jira/browse/YARN-7974) | Allow updating application tracking url after registration |  Major | . | Jonathan Hung | Jonathan Hung |
| [YARN-8896](https://issues.apache.org/jira/browse/YARN-8896) | Limit the maximum number of container assignments per heartbeat |  Major | . | Weiwei Yang | Zhankun Tang |
| [HADOOP-15804](https://issues.apache.org/jira/browse/HADOOP-15804) | upgrade to commons-compress 1.18 |  Major | . | PJ Fanning | Akira Ajisaka |
| [HDFS-13941](https://issues.apache.org/jira/browse/HDFS-13941) | make storageId in BlockPoolTokenSecretManager.checkAccess optional |  Major | . | Ajay Kumar | Ajay Kumar |
| [HDFS-14029](https://issues.apache.org/jira/browse/HDFS-14029) | Sleep in TestLazyPersistFiles should be put into a loop |  Trivial | hdfs | Adam Antal | Adam Antal |
| [YARN-8915](https://issues.apache.org/jira/browse/YARN-8915) | Update the doc about the default value of "maximum-container-assignments" for capacity scheduler |  Minor | . | Zhankun Tang | Zhankun Tang |
| [YARN-7225](https://issues.apache.org/jira/browse/YARN-7225) | Add queue and partition info to RM audit log |  Major | resourcemanager | Jonathan Hung | Eric Payne |
| [YARN-8969](https://issues.apache.org/jira/browse/YARN-8969) | AbstractYarnScheduler#getNodeTracker should return generic type to avoid type casting |  Major | . | Wanqiang Ji | Wanqiang Ji |
| [YARN-8977](https://issues.apache.org/jira/browse/YARN-8977) | Remove unnecessary type casting when calling AbstractYarnScheduler#getSchedulerNode |  Trivial | . | Wanqiang Ji | Wanqiang Ji |
| [HDFS-14070](https://issues.apache.org/jira/browse/HDFS-14070) | Refactor NameNodeWebHdfsMethods to allow better extensibility |  Major | . | CR Hota | CR Hota |
| [HADOOP-15919](https://issues.apache.org/jira/browse/HADOOP-15919) | AliyunOSS: Enable Yarn to use OSS |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-15943](https://issues.apache.org/jira/browse/HADOOP-15943) | AliyunOSS: add missing owner & group attributes for oss FileStatus |  Major | fs/oss | wujinhu | wujinhu |
| [MAPREDUCE-7164](https://issues.apache.org/jira/browse/MAPREDUCE-7164) | FileOutputCommitter does not report progress while merging paths. |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [YARN-9069](https://issues.apache.org/jira/browse/YARN-9069) | Fix SchedulerInfo#getSchedulerType for custom schedulers |  Minor | . | Bilwa S T | Bilwa S T |
| [HDFS-14095](https://issues.apache.org/jira/browse/HDFS-14095) | EC: Track Erasure Coding commands in DFS statistics |  Major | erasure-coding | Ayush Saxena | Ayush Saxena |
| [YARN-9036](https://issues.apache.org/jira/browse/YARN-9036) | Escape newlines in health report in YARN UI |  Major | . | Jonathan Hung | Keqiu Hu |
| [YARN-9085](https://issues.apache.org/jira/browse/YARN-9085) | Add Guaranteed and MaxCapacity to CSQueueMetrics |  Major | . | Jonathan Hung | Jonathan Hung |
| [HDFS-14171](https://issues.apache.org/jira/browse/HDFS-14171) | Performance improvement in Tailing EditLog |  Major | namenode | Kenneth Yang | Kenneth Yang |
| [HADOOP-15959](https://issues.apache.org/jira/browse/HADOOP-15959) | revert HADOOP-12751 |  Minor | security | Steve Loughran | Steve Loughran |
| [HADOOP-15481](https://issues.apache.org/jira/browse/HADOOP-15481) | Emit FairCallQueue stats as metrics |  Major | metrics, rpc-server | Erik Krogen | Christopher Gregorian |
| [HDFS-14213](https://issues.apache.org/jira/browse/HDFS-14213) | Remove Jansson from BUILDING.txt |  Minor | documentation | Akira Ajisaka | Dinesh Chitlangia |
| [HADOOP-16089](https://issues.apache.org/jira/browse/HADOOP-16089) | AliyunOSS: update oss-sdk version to 3.4.1 |  Major | fs/oss | wujinhu | wujinhu |
| [HDFS-14231](https://issues.apache.org/jira/browse/HDFS-14231) | DataXceiver#run() should not log exceptions caused by InvalidToken exception as an error |  Major | hdfs | Kitti Nanasi | Kitti Nanasi |
| [YARN-7171](https://issues.apache.org/jira/browse/YARN-7171) | RM UI should sort memory / cores numerically |  Major | . | Eric Maynard | Ahmed Hussein |
| [YARN-9282](https://issues.apache.org/jira/browse/YARN-9282) | Typo in javadoc of class LinuxContainerExecutor: hadoop.security.authetication should be 'authentication' |  Trivial | . | Szilard Nemeth | Charan Hebri |
| [YARN-9168](https://issues.apache.org/jira/browse/YARN-9168) | DistributedShell client timeout should be -1 by default |  Minor | . | Zhankun Tang | Zhankun Tang |
| [HDFS-14247](https://issues.apache.org/jira/browse/HDFS-14247) | Repeat adding node description into network topology |  Minor | datanode | HuangTao | HuangTao |
| [MAPREDUCE-7191](https://issues.apache.org/jira/browse/MAPREDUCE-7191) | JobHistoryServer should log exception when loading/parsing history file failed |  Minor | mrv2 | Jiandan Yang | Jiandan Yang |
| [HDFS-14346](https://issues.apache.org/jira/browse/HDFS-14346) | Better time precision in getTimeDuration |  Minor | namenode | Chao Sun | Chao Sun |
| [HDFS-14366](https://issues.apache.org/jira/browse/HDFS-14366) | Improve HDFS append performance |  Major | hdfs | Chao Sun | Chao Sun |
| [YARN-9463](https://issues.apache.org/jira/browse/YARN-9463) | Add queueName info when failing with queue capacity sanity check |  Trivial | capacity scheduler | Aihua Xu | Aihua Xu |
| [HADOOP-16227](https://issues.apache.org/jira/browse/HADOOP-16227) | Upgrade checkstyle to 8.19 |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-14432](https://issues.apache.org/jira/browse/HDFS-14432) | dfs.datanode.shared.file.descriptor.paths duplicated in hdfs-default.xml |  Minor | hdfs | puleya7 | puleya7 |
| [YARN-9529](https://issues.apache.org/jira/browse/YARN-9529) | Log correct cpu controller path on error while initializing CGroups. |  Major | nodemanager | Jonathan Hung | Jonathan Hung |
| [HDFS-14502](https://issues.apache.org/jira/browse/HDFS-14502) | keepResults option in NNThroughputBenchmark should call saveNamespace() |  Major | benchmarks, hdfs | Konstantin Shvachko | Konstantin Shvachko |
| [YARN-9563](https://issues.apache.org/jira/browse/YARN-9563) | Resource report REST API could return NaN or Inf |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-14513](https://issues.apache.org/jira/browse/HDFS-14513) | FSImage which is saving should be clean while NameNode shutdown |  Major | namenode | Xiaoqiao He | Xiaoqiao He |
| [HADOOP-16369](https://issues.apache.org/jira/browse/HADOOP-16369) | Fix zstandard shortname misspelled as zts |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [HDFS-14403](https://issues.apache.org/jira/browse/HDFS-14403) | Cost-Based RPC FairCallQueue |  Major | ipc, namenode | Erik Krogen | Christopher Gregorian |
| [HADOOP-16266](https://issues.apache.org/jira/browse/HADOOP-16266) | Add more fine-grained processing time metrics to the RPC layer |  Minor | ipc | Christopher Gregorian | Erik Krogen |
| [HDFS-13694](https://issues.apache.org/jira/browse/HDFS-13694) | Making md5 computing being in parallel with image loading |  Major | . | zhouyingchao | Lisheng Sun |
| [HDFS-14547](https://issues.apache.org/jira/browse/HDFS-14547) | DirectoryWithQuotaFeature.quota costs additional memory even the storage type quota is not set. |  Major | . | Jinglun | Jinglun |
| [HDFS-14697](https://issues.apache.org/jira/browse/HDFS-14697) | Backport HDFS-14513 to branch-2 |  Minor | namenode | Xiaoqiao He | Xiaoqiao He |
| [YARN-8045](https://issues.apache.org/jira/browse/YARN-8045) | Reduce log output from container status calls |  Major | . | Shane Kumpf | Craig Condit |
| [HDFS-14313](https://issues.apache.org/jira/browse/HDFS-14313) | Get hdfs used space from FsDatasetImpl#volumeMap#ReplicaInfo in memory  instead of df/du |  Major | datanode, performance | Lisheng Sun | Lisheng Sun |
| [HDFS-14370](https://issues.apache.org/jira/browse/HDFS-14370) | Edit log tailing fast-path should allow for backoff |  Major | namenode, qjm | Erik Krogen | Erik Krogen |
| [YARN-9442](https://issues.apache.org/jira/browse/YARN-9442) | container working directory has group read permissions |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HADOOP-16459](https://issues.apache.org/jira/browse/HADOOP-16459) | Backport [HADOOP-16266] "Add more fine-grained processing time metrics to the RPC layer" to branch-2 |  Major | . | Erik Krogen | Erik Krogen |
| [YARN-9756](https://issues.apache.org/jira/browse/YARN-9756) | Create metric that sums total memory/vcores preempted per round |  Major | capacity scheduler | Eric Payne | Manikandan R |
| [HDFS-14633](https://issues.apache.org/jira/browse/HDFS-14633) | The StorageType quota and consume in QuotaFeature is not handled for rename |  Major | . | Jinglun | Jinglun |
| [YARN-9914](https://issues.apache.org/jira/browse/YARN-9914) | Use separate configs for free disk space checking for full and not-full disks |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HADOOP-16705](https://issues.apache.org/jira/browse/HADOOP-16705) | MBeanInfoBuilder puts unnecessary memory pressure on the system with a debug log |  Major | metrics | Lukas Majercak | Lukas Majercak |
| [HADOOP-16735](https://issues.apache.org/jira/browse/HADOOP-16735) | Make it clearer in config default that EnvironmentVariableCredentialsProvider supports AWS\_SESSION\_TOKEN |  Minor | documentation, fs/s3 | Mingliang Liu | Mingliang Liu |
| [HADOOP-14698](https://issues.apache.org/jira/browse/HADOOP-14698) | Make copyFromLocal's -t option available for put as well |  Major | . | Andras Bokor | Andras Bokor |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12857](https://issues.apache.org/jira/browse/HDFS-12857) | StoragePolicyAdmin should support schema based path |  Major | namenode | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [YARN-7835](https://issues.apache.org/jira/browse/YARN-7835) | [Atsv2] Race condition in NM while publishing events if second attempt is launched on the same node |  Critical | . | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-7773](https://issues.apache.org/jira/browse/YARN-7773) | YARN Federation used Mysql as state store throw exception, Unknown column 'homeSubCluster' in 'field list' |  Blocker | federation | Yiran Wu | Yiran Wu |
| [HDFS-13636](https://issues.apache.org/jira/browse/HDFS-13636) | Cross-Site Scripting vulnerability in HttpServer2 |  Major | . | Haibo Yan | Haibo Yan |
| [YARN-8382](https://issues.apache.org/jira/browse/YARN-8382) | cgroup file leak in NM |  Major | nodemanager | Hu Ziqian | Hu Ziqian |
| [HDFS-13545](https://issues.apache.org/jira/browse/HDFS-13545) |  "guarded" is misspelled as "gaurded" in FSPermissionChecker.java |  Trivial | documentation | Jianchao Jia | Jianchao Jia |
| [MAPREDUCE-7103](https://issues.apache.org/jira/browse/MAPREDUCE-7103) | Fix TestHistoryViewerPrinter on windows due to a mismatch line separator |  Minor | . | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [HADOOP-15217](https://issues.apache.org/jira/browse/HADOOP-15217) | FsUrlConnection does not handle paths with spaces |  Major | fs | Joseph Fourny | Zsolt Venczel |
| [HDFS-12950](https://issues.apache.org/jira/browse/HDFS-12950) | [oiv] ls will fail in  secure cluster |  Major | . | Brahma Reddy Battula | Wei-Chiu Chuang |
| [YARN-8359](https://issues.apache.org/jira/browse/YARN-8359) | Exclude containermanager.linux test classes on Windows |  Major | . | Giovanni Matteo Fumarola | Jason Darrell Lowe |
| [HDFS-13664](https://issues.apache.org/jira/browse/HDFS-13664) | Refactor ConfiguredFailoverProxyProvider to make inheritance easier |  Minor | hdfs-client | Chao Sun | Chao Sun |
| [HDFS-12670](https://issues.apache.org/jira/browse/HDFS-12670) | can't renew HDFS tokens with only the hdfs client jar |  Critical | . | Thomas Graves | Arpit Agarwal |
| [HDFS-13667](https://issues.apache.org/jira/browse/HDFS-13667) | Typo: Marking all "datandoes" as stale |  Trivial | namenode | Wei-Chiu Chuang | Nanda kumar |
| [YARN-8405](https://issues.apache.org/jira/browse/YARN-8405) | RM zk-state-store.parent-path ACLs has been changed since HADOOP-14773 |  Major | . | Rohith Sharma K S | Íñigo Goiri |
| [YARN-8404](https://issues.apache.org/jira/browse/YARN-8404) | Timeline event publish need to be async to avoid Dispatcher thread leak in case ATS is down |  Blocker | . | Rohith Sharma K S | Rohith Sharma K S |
| [HDFS-13673](https://issues.apache.org/jira/browse/HDFS-13673) | TestNameNodeMetrics fails on Windows |  Minor | test | Zuoming Zhang | Zuoming Zhang |
| [HDFS-13676](https://issues.apache.org/jira/browse/HDFS-13676) | TestEditLogRace fails on Windows |  Minor | test | Zuoming Zhang | Zuoming Zhang |
| [HDFS-13174](https://issues.apache.org/jira/browse/HDFS-13174) | hdfs mover -p /path times out after 20 min |  Major | balancer & mover | István Fajth | István Fajth |
| [HADOOP-15523](https://issues.apache.org/jira/browse/HADOOP-15523) | Shell command timeout given is in seconds whereas it is taken as millisec while scheduling |  Major | . | Bilwa S T | Bilwa S T |
| [HDFS-13682](https://issues.apache.org/jira/browse/HDFS-13682) | Cannot create encryption zone after KMS auth token expires |  Critical | encryption, kms, namenode | Xiao Chen | Xiao Chen |
| [YARN-8444](https://issues.apache.org/jira/browse/YARN-8444) | NodeResourceMonitor crashes on bad swapFree value |  Major | . | Jim Brennan | Jim Brennan |
| [YARN-8443](https://issues.apache.org/jira/browse/YARN-8443) | Total #VCores in cluster metrics is wrong when CapacityScheduler reserved some containers |  Major | webapp | Tao Yang | Tao Yang |
| [YARN-8457](https://issues.apache.org/jira/browse/YARN-8457) | Compilation is broken with -Pyarn-ui |  Major | webapp | Sunil G | Sunil G |
| [YARN-8401](https://issues.apache.org/jira/browse/YARN-8401) | [UI2] new ui is not accessible with out internet connection |  Blocker | . | Bibin Chundatt | Bibin Chundatt |
| [YARN-8451](https://issues.apache.org/jira/browse/YARN-8451) | Multiple NM heartbeat thread created when a slow NM resync with RM |  Major | nodemanager | Botong Huang | Botong Huang |
| [HADOOP-15548](https://issues.apache.org/jira/browse/HADOOP-15548) | Randomize local dirs |  Minor | . | Jim Brennan | Jim Brennan |
| [HDFS-13702](https://issues.apache.org/jira/browse/HDFS-13702) | Remove HTrace hooks from DFSClient to reduce CPU usage |  Major | performance | Todd Lipcon | Todd Lipcon |
| [HDFS-13635](https://issues.apache.org/jira/browse/HDFS-13635) | Incorrect message when block is not found |  Major | datanode | Wei-Chiu Chuang | Gabor Bota |
| [HADOOP-15571](https://issues.apache.org/jira/browse/HADOOP-15571) | Multiple FileContexts created with the same configuration object should be allowed to have different umask |  Critical | . | Vinod Kumar Vavilapalli | Vinod Kumar Vavilapalli |
| [HDFS-13121](https://issues.apache.org/jira/browse/HDFS-13121) | NPE when request file descriptors when SC read |  Minor | hdfs-client | Gang Xie | Zsolt Venczel |
| [YARN-6265](https://issues.apache.org/jira/browse/YARN-6265) | yarn.resourcemanager.fail-fast is used inconsistently |  Major | resourcemanager | Daniel Templeton | Yuanbo Liu |
| [YARN-8473](https://issues.apache.org/jira/browse/YARN-8473) | Containers being launched as app tears down can leave containers in NEW state |  Major | nodemanager | Jason Darrell Lowe | Jason Darrell Lowe |
| [HDFS-13723](https://issues.apache.org/jira/browse/HDFS-13723) | Occasional "Should be different group" error in TestRefreshUserMappings#testGroupMappingRefresh |  Major | security, test | Siyao Meng | Siyao Meng |
| [HDFS-12837](https://issues.apache.org/jira/browse/HDFS-12837) | Intermittent failure in TestReencryptionWithKMS |  Major | encryption, test | Surendra Singh Lilhore | Xiao Chen |
| [HDFS-13729](https://issues.apache.org/jira/browse/HDFS-13729) | Fix broken links to RBF documentation |  Minor | documentation | jwhitter | Gabor Bota |
| [YARN-8515](https://issues.apache.org/jira/browse/YARN-8515) | container-executor can crash with SIGPIPE after nodemanager restart |  Major | . | Jim Brennan | Jim Brennan |
| [YARN-8421](https://issues.apache.org/jira/browse/YARN-8421) | when moving app, activeUsers is increased, even though app does not have outstanding request |  Major | . | kyungwan nam |  |
| [HDFS-13524](https://issues.apache.org/jira/browse/HDFS-13524) | Occasional "All datanodes are bad" error in TestLargeBlock#testLargeBlockSize |  Major | . | Wei-Chiu Chuang | Siyao Meng |
| [HADOOP-15610](https://issues.apache.org/jira/browse/HADOOP-15610) | Hadoop Docker Image Pip Install Fails |  Critical | . | Jack Bearden | Jack Bearden |
| [HADOOP-15614](https://issues.apache.org/jira/browse/HADOOP-15614) | TestGroupsCaching.testExceptionOnBackgroundRefreshHandled reliably fails |  Major | . | Kihwal Lee | Weiwei Yang |
| [YARN-8548](https://issues.apache.org/jira/browse/YARN-8548) | AllocationRespose proto setNMToken initBuilder not done |  Major | . | Bibin Chundatt | Bilwa S T |
| [YARN-7748](https://issues.apache.org/jira/browse/YARN-7748) | TestContainerResizing.testIncreaseContainerUnreservedWhenApplicationCompleted fails due to multiple container fail events |  Major | capacityscheduler | Haibo Chen | Weiwei Yang |
| [YARN-8577](https://issues.apache.org/jira/browse/YARN-8577) | Fix the broken anchor in SLS site-doc |  Minor | documentation | Weiwei Yang | Weiwei Yang |
| [YARN-4606](https://issues.apache.org/jira/browse/YARN-4606) | CapacityScheduler: applications could get starved because computation of #activeUsers considers pending apps |  Critical | capacity scheduler, capacityscheduler | Karam Singh | Manikandan R |
| [HDFS-13765](https://issues.apache.org/jira/browse/HDFS-13765) | Fix javadoc for FSDirMkdirOp#createParentDirectories |  Minor | documentation | Lokesh Jain | Lokesh Jain |
| [YARN-8434](https://issues.apache.org/jira/browse/YARN-8434) | Update federation documentation of Nodemanager configurations |  Minor | . | Bibin Chundatt | Bibin Chundatt |
| [YARN-8558](https://issues.apache.org/jira/browse/YARN-8558) | NM recovery level db not cleaned up properly on container finish |  Critical | . | Bibin Chundatt | Bibin Chundatt |
| [HADOOP-15637](https://issues.apache.org/jira/browse/HADOOP-15637) | LocalFs#listLocatedStatus does not filter out hidden .crc files |  Minor | fs | Erik Krogen | Erik Krogen |
| [YARN-8397](https://issues.apache.org/jira/browse/YARN-8397) | Potential thread leak in ActivitiesManager |  Major | . | Rohith Sharma K S | Rohith Sharma K S |
| [YARN-6966](https://issues.apache.org/jira/browse/YARN-6966) | NodeManager metrics may return wrong negative values when NM restart |  Major | . | Yang Wang | Szilard Nemeth |
| [HDFS-13786](https://issues.apache.org/jira/browse/HDFS-13786) | EC: Display erasure coding policy for sub-directories is not working |  Major | erasure-coding | Souryakanta Dwivedy | Ayush Saxena |
| [YARN-8331](https://issues.apache.org/jira/browse/YARN-8331) | Race condition in NM container launched after done |  Major | . | Yang Wang | Pradeep Ambati |
| [HDFS-13668](https://issues.apache.org/jira/browse/HDFS-13668) | FSPermissionChecker may throws AIOOE when check inode permission |  Major | namenode | Xiaoqiao He | Xiaoqiao He |
| [HADOOP-15638](https://issues.apache.org/jira/browse/HADOOP-15638) | KMS Accept Queue Size default changed from 500 to 128 in Hadoop 3.x |  Major | kms | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-13738](https://issues.apache.org/jira/browse/HDFS-13738) | fsck -list-corruptfileblocks has infinite loop if user is not privileged. |  Major | tools | Wei-Chiu Chuang | Yuen-Kuei Hsueh |
| [HDFS-13758](https://issues.apache.org/jira/browse/HDFS-13758) | DatanodeManager should throw exception if it has BlockRecoveryCommand but the block is not under construction |  Major | namenode | Wei-Chiu Chuang | chencan |
| [YARN-8614](https://issues.apache.org/jira/browse/YARN-8614) | Fix few annotation typos in YarnConfiguration |  Trivial | . | Sen Zhao | Sen Zhao |
| [HDFS-13746](https://issues.apache.org/jira/browse/HDFS-13746) | Still occasional "Should be different group" failure in TestRefreshUserMappings#testGroupMappingRefresh |  Major | . | Siyao Meng | Siyao Meng |
| [HDFS-10240](https://issues.apache.org/jira/browse/HDFS-10240) | Race between close/recoverLease leads to missing block |  Major | . | zhouyingchao | Jinglun |
| [YARN-8612](https://issues.apache.org/jira/browse/YARN-8612) | Fix NM Collector Service Port issue in YarnConfiguration |  Major | ATSv2 | Prabha Manepalli | Prabha Manepalli |
| [HDFS-13747](https://issues.apache.org/jira/browse/HDFS-13747) | Statistic for list\_located\_status is incremented incorrectly by listStatusIterator |  Minor | hdfs-client | Todd Lipcon | Antal Mihalyi |
| [HADOOP-15674](https://issues.apache.org/jira/browse/HADOOP-15674) | Test failure TestSSLHttpServer.testExcludedCiphers with TLS\_ECDHE\_RSA\_WITH\_AES\_128\_CBC\_SHA256 cipher suite |  Major | common | Gabor Bota | Szilard Nemeth |
| [YARN-8640](https://issues.apache.org/jira/browse/YARN-8640) | Restore previous state in container-executor after failure |  Major | . | Jim Brennan | Jim Brennan |
| [YARN-8679](https://issues.apache.org/jira/browse/YARN-8679) | [ATSv2] If HBase cluster is down for long time, high chances that NM ContainerManager dispatcher get blocked |  Major | . | Rohith Sharma K S | Wangda Tan |
| [HDFS-13772](https://issues.apache.org/jira/browse/HDFS-13772) | Erasure coding: Unnecessary NameNode Logs displaying for Enabling/Disabling Erasure coding policies which are already enabled/disabled |  Trivial | erasure-coding | Souryakanta Dwivedy | Ayush Saxena |
| [HADOOP-14314](https://issues.apache.org/jira/browse/HADOOP-14314) | The OpenSolaris taxonomy link is dead in InterfaceClassification.md |  Major | documentation | Daniel Templeton | Rui Gao |
| [YARN-8649](https://issues.apache.org/jira/browse/YARN-8649) | NPE in localizer hearbeat processing if a container is killed while localizing |  Major | . | lujie | lujie |
| [YARN-8719](https://issues.apache.org/jira/browse/YARN-8719) | Typo correction for yarn configuration in OpportunisticContainers(federation) docs |  Major | documentation, federation | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HDFS-13731](https://issues.apache.org/jira/browse/HDFS-13731) | ReencryptionUpdater fails with ConcurrentModificationException during processCheckpoints |  Major | encryption | Xiao Chen | Zsolt Venczel |
| [HADOOP-15705](https://issues.apache.org/jira/browse/HADOOP-15705) | Typo in the definition of "stable" in the interface classification |  Minor | . | Daniel Templeton | Daniel Templeton |
| [HDFS-13863](https://issues.apache.org/jira/browse/HDFS-13863) | FsDatasetImpl should log DiskOutOfSpaceException |  Major | hdfs | Hui Fei | Hui Fei |
| [HADOOP-15698](https://issues.apache.org/jira/browse/HADOOP-15698) | KMS log4j is not initialized properly at startup |  Major | kms | Kitti Nanasi | Kitti Nanasi |
| [HADOOP-15706](https://issues.apache.org/jira/browse/HADOOP-15706) | Typo in compatibility doc: SHOUD -\> SHOULD |  Trivial | . | Daniel Templeton | Laszlo Kollar |
| [HDFS-13027](https://issues.apache.org/jira/browse/HDFS-13027) | Handle possible NPEs due to deleted blocks in race condition |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [YARN-8535](https://issues.apache.org/jira/browse/YARN-8535) | Fix DistributedShell unit tests |  Major | distributed-shell, timelineservice | Eric Yang | Abhishek Modi |
| [HADOOP-10219](https://issues.apache.org/jira/browse/HADOOP-10219) | ipc.Client.setupIOstreams() needs to check for ClientCache.stopClient requested shutdowns |  Major | ipc | Steve Loughran | Kihwal Lee |
| [HADOOP-15696](https://issues.apache.org/jira/browse/HADOOP-15696) | KMS performance regression due to too many open file descriptors after Jetty migration |  Blocker | kms | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [MAPREDUCE-7131](https://issues.apache.org/jira/browse/MAPREDUCE-7131) | Job History Server has race condition where it moves files from intermediate to finished but thinks file is in intermediate |  Major | . | Anthony Hsu | Anthony Hsu |
| [HDFS-13836](https://issues.apache.org/jira/browse/HDFS-13836) | RBF: Handle mount table znode with null value |  Major | federation, hdfs | yanghuafeng | yanghuafeng |
| [HDFS-12716](https://issues.apache.org/jira/browse/HDFS-12716) |  'dfs.datanode.failed.volumes.tolerated' to support minimum number of volumes to be available |  Major | datanode | usharani | Ranith Sardar |
| [YARN-8709](https://issues.apache.org/jira/browse/YARN-8709) | CS preemption monitor always fails since one under-served queue was deleted |  Major | capacityscheduler, scheduler preemption | Tao Yang | Tao Yang |
| [HDFS-13051](https://issues.apache.org/jira/browse/HDFS-13051) | Fix dead lock during async editlog rolling if edit queue is full |  Major | namenode | zhangwei | Daryn Sharp |
| [YARN-8729](https://issues.apache.org/jira/browse/YARN-8729) | Node status updater thread could be lost after it is restarted |  Critical | nodemanager | Tao Yang | Tao Yang |
| [HDFS-13914](https://issues.apache.org/jira/browse/HDFS-13914) | Fix DN UI logs link broken when https is enabled after HDFS-13902 |  Minor | datanode | Jianfei Jiang | Jianfei Jiang |
| [MAPREDUCE-7133](https://issues.apache.org/jira/browse/MAPREDUCE-7133) | History Server task attempts REST API returns invalid data |  Major | jobhistoryserver | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [HDFS-13838](https://issues.apache.org/jira/browse/HDFS-13838) | WebHdfsFileSystem.getFileStatus() won't return correct "snapshot enabled" status |  Major | hdfs, webhdfs | Siyao Meng | Siyao Meng |
| [YARN-8720](https://issues.apache.org/jira/browse/YARN-8720) | CapacityScheduler does not enforce max resource allocation check at queue level |  Major | capacity scheduler, capacityscheduler, resourcemanager | Tarun Parimi | Tarun Parimi |
| [YARN-8782](https://issues.apache.org/jira/browse/YARN-8782) | Fix exception message in Resource.throwExceptionWhenArrayOutOfBound |  Minor | . | Szilard Nemeth | Gergely Pollak |
| [HDFS-13844](https://issues.apache.org/jira/browse/HDFS-13844) | Fix the fmt\_bytes function in the dfs-dust.js |  Minor | hdfs, ui | yanghuafeng | yanghuafeng |
| [HADOOP-15755](https://issues.apache.org/jira/browse/HADOOP-15755) | StringUtils#createStartupShutdownMessage throws NPE when args is null |  Major | . | Lokesh Jain | Dinesh Chitlangia |
| [MAPREDUCE-3801](https://issues.apache.org/jira/browse/MAPREDUCE-3801) | org.apache.hadoop.mapreduce.v2.app.TestRuntimeEstimators.testExponentialEstimator fails intermittently |  Major | mrv2 | Robert Joseph Evans | Jason Darrell Lowe |
| [MAPREDUCE-7137](https://issues.apache.org/jira/browse/MAPREDUCE-7137) | MRAppBenchmark.benchmark1() fails with NullPointerException |  Minor | test | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [MAPREDUCE-7138](https://issues.apache.org/jira/browse/MAPREDUCE-7138) | ThrottledContainerAllocator in MRAppBenchmark should implement RMHeartbeatHandler |  Minor | test | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [HDFS-13886](https://issues.apache.org/jira/browse/HDFS-13886) | HttpFSFileSystem.getFileStatus() doesn't return "snapshot enabled" bit |  Major | httpfs | Siyao Meng | Siyao Meng |
| [HDFS-13868](https://issues.apache.org/jira/browse/HDFS-13868) | WebHDFS: GETSNAPSHOTDIFF API NPE when param "snapshotname" is given but "oldsnapshotname" is not. |  Major | hdfs, webhdfs | Siyao Meng | Pranay Singh |
| [HDFS-13908](https://issues.apache.org/jira/browse/HDFS-13908) | TestDataNodeMultipleRegistrations is flaky |  Major | . | Íñigo Goiri | Ayush Saxena |
| [HADOOP-15684](https://issues.apache.org/jira/browse/HADOOP-15684) | triggerActiveLogRoll stuck on dead name node, when ConnectTimeoutException happens. |  Critical | ha | Rong Tang | Rong Tang |
| [HADOOP-15772](https://issues.apache.org/jira/browse/HADOOP-15772) | Remove the 'Path ... should be specified as a URI' warnings on startup |  Major | conf | Arpit Agarwal | Ayush Saxena |
| [HADOOP-15736](https://issues.apache.org/jira/browse/HADOOP-15736) | Trash : Negative Value For Deletion Interval Leads To Abnormal Behaviour. |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-13840](https://issues.apache.org/jira/browse/HDFS-13840) | RBW Blocks which are having less GS should be added to Corrupt |  Minor | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-8804](https://issues.apache.org/jira/browse/YARN-8804) | resourceLimits may be wrongly calculated when leaf-queue is blocked in cluster with 3+ level queues |  Critical | capacityscheduler | Tao Yang | Tao Yang |
| [YARN-8774](https://issues.apache.org/jira/browse/YARN-8774) | Memory leak when CapacityScheduler allocates from reserved container with non-default label |  Critical | capacityscheduler | Tao Yang | Tao Yang |
| [HADOOP-15817](https://issues.apache.org/jira/browse/HADOOP-15817) | Reuse Object Mapper in KMSJSONReader |  Major | kms | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [YARN-7957](https://issues.apache.org/jira/browse/YARN-7957) | [UI2] YARN service delete option disappears after stopping application |  Critical | yarn-ui-v2 | Yesha Vora | Akhil PB |
| [YARN-8797](https://issues.apache.org/jira/browse/YARN-8797) | [UI2] Improve error pages in new YARN UI |  Major | yarn-ui-v2 | Akhil PB | Akhil PB |
| [HADOOP-15820](https://issues.apache.org/jira/browse/HADOOP-15820) | ZStandardDecompressor native code sets an integer field as a long |  Blocker | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [HDFS-13964](https://issues.apache.org/jira/browse/HDFS-13964) | RBF: TestRouterWebHDFSContractAppend fails with No Active Namenode under nameservice |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-13926](https://issues.apache.org/jira/browse/HDFS-13926) | ThreadLocal aggregations for FileSystem.Statistics are incorrect with striped reads |  Major | erasure-coding | Xiao Chen | Hrishikesh Gadre |
| [HADOOP-15835](https://issues.apache.org/jira/browse/HADOOP-15835) | Reuse Object Mapper in KMSJSONWriter |  Major | . | Jonathan Turner Eagles | Jonathan Turner Eagles |
| [HADOOP-15679](https://issues.apache.org/jira/browse/HADOOP-15679) | ShutdownHookManager shutdown time needs to be configurable & extended |  Major | util | Steve Loughran | Steve Loughran |
| [MAPREDUCE-7132](https://issues.apache.org/jira/browse/MAPREDUCE-7132) | JobSplitWriter prints unnecessary warnings if EC(RS10,4) is used |  Major | client, mrv2 | Peter Bacsko | Peter Bacsko |
| [HADOOP-15861](https://issues.apache.org/jira/browse/HADOOP-15861) | Move DelegationTokenIssuer to the right path |  Blocker | security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-15859](https://issues.apache.org/jira/browse/HADOOP-15859) | ZStandardDecompressor.c mistakes a class for an instance |  Blocker | . | Ben Lau | Jason Darrell Lowe |
| [HDFS-14000](https://issues.apache.org/jira/browse/HDFS-14000) | RBF: Documentation should reflect right scripts for v3.0 and above |  Major | . | CR Hota | CR Hota |
| [HDFS-14003](https://issues.apache.org/jira/browse/HDFS-14003) | Fix findbugs warning in trunk for FSImageFormatPBINode |  Major | . | Yiqun Lin | Yiqun Lin |
| [HDFS-14009](https://issues.apache.org/jira/browse/HDFS-14009) | HttpFS: FileStatus#setSnapShotEnabledFlag throws InvocationTargetException when attribute set is emptySet |  Major | hdfs, httpfs | Siyao Meng | Siyao Meng |
| [HADOOP-15850](https://issues.apache.org/jira/browse/HADOOP-15850) | CopyCommitter#concatFileChunks should check that the blocks per chunk is not 0 |  Critical | tools/distcp | Ted Yu | Ted Yu |
| [YARN-7502](https://issues.apache.org/jira/browse/YARN-7502) | Nodemanager restart docs should describe nodemanager supervised property |  Major | documentation | Jason Darrell Lowe | Suma Shivaprasad |
| [HADOOP-15866](https://issues.apache.org/jira/browse/HADOOP-15866) | Renamed HADOOP\_SECURITY\_GROUP\_SHELL\_COMMAND\_TIMEOUT keys break compatibility |  Blocker | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-8826](https://issues.apache.org/jira/browse/YARN-8826) | Fix lingering timeline collector after serviceStop in TimelineCollectorManager |  Trivial | ATSv2 | Prabha Manepalli | Prabha Manepalli |
| [HADOOP-15822](https://issues.apache.org/jira/browse/HADOOP-15822) | zstd compressor can fail with a small output buffer |  Major | . | Jason Darrell Lowe | Jason Darrell Lowe |
| [HDFS-14021](https://issues.apache.org/jira/browse/HDFS-14021) | TestReconstructStripedBlocksWithRackAwareness#testReconstructForNotEnoughRacks fails intermittently |  Major | erasure-coding, test | Xiao Chen | Xiao Chen |
| [HADOOP-14445](https://issues.apache.org/jira/browse/HADOOP-14445) | Use DelegationTokenIssuer to create KMS delegation tokens that can authenticate to all KMS instances |  Major | kms | Wei-Chiu Chuang | Xiao Chen |
| [HDFS-14028](https://issues.apache.org/jira/browse/HDFS-14028) | HDFS OIV temporary dir deletes folder |  Major | hdfs | Adam Antal | Adam Antal |
| [HDFS-14027](https://issues.apache.org/jira/browse/HDFS-14027) | DFSStripedOutputStream should implement both hsync methods |  Critical | erasure-coding | Xiao Chen | Xiao Chen |
| [HADOOP-15899](https://issues.apache.org/jira/browse/HADOOP-15899) | Update AWS Java SDK versions in NOTICE.txt |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15900](https://issues.apache.org/jira/browse/HADOOP-15900) | Update JSch versions in LICENSE.txt |  Major | . | Akira Ajisaka | Akira Ajisaka |
| [HDFS-14043](https://issues.apache.org/jira/browse/HDFS-14043) | Tolerate corrupted seen\_txid file |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [YARN-8858](https://issues.apache.org/jira/browse/YARN-8858) | CapacityScheduler should respect maximum node resource when per-queue maximum-allocation is being used. |  Major | . | Sumana Sathish | Wangda Tan |
| [YARN-8970](https://issues.apache.org/jira/browse/YARN-8970) | Improve the debug message in CS#allocateContainerOnSingleNode |  Trivial | . | Weiwei Yang | Zhankun Tang |
| [YARN-8865](https://issues.apache.org/jira/browse/YARN-8865) | RMStateStore contains large number of expired RMDelegationToken |  Major | resourcemanager | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [HDFS-14048](https://issues.apache.org/jira/browse/HDFS-14048) | DFSOutputStream close() throws exception on subsequent call after DataNode restart |  Major | hdfs-client | Erik Krogen | Erik Krogen |
| [MAPREDUCE-7156](https://issues.apache.org/jira/browse/MAPREDUCE-7156) | NullPointerException when reaching max shuffle connections |  Major | mrv2 | Peter Bacsko | Peter Bacsko |
| [YARN-8866](https://issues.apache.org/jira/browse/YARN-8866) | Fix a parsing error for crossdomain.xml |  Major | build, yarn-ui-v2 | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-14039](https://issues.apache.org/jira/browse/HDFS-14039) | ec -listPolicies doesn't show correct state for the default policy when the default is not RS(6,3) |  Major | erasure-coding | Xiao Chen | Kitti Nanasi |
| [HADOOP-15916](https://issues.apache.org/jira/browse/HADOOP-15916) | Upgrade Maven Surefire plugin to 3.0.0-M1 |  Blocker | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-8233](https://issues.apache.org/jira/browse/YARN-8233) | NPE in CapacityScheduler#tryCommit when handling allocate/reserve proposal whose allocatedOrReservedContainer is null |  Critical | capacityscheduler | Tao Yang | Tao Yang |
| [HDFS-14065](https://issues.apache.org/jira/browse/HDFS-14065) | Failed Storage Locations shows nothing in the Datanode Volume Failures |  Major | . | Ayush Saxena | Ayush Saxena |
| [HADOOP-15923](https://issues.apache.org/jira/browse/HADOOP-15923) | create-release script should set max-cache-ttl as well as default-cache-ttl for gpg-agent |  Blocker | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15930](https://issues.apache.org/jira/browse/HADOOP-15930) | Exclude MD5 checksum files from release artifact |  Critical | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15925](https://issues.apache.org/jira/browse/HADOOP-15925) | The config and log of gpg-agent are removed in create-release script |  Major | build | Akira Ajisaka | Dinesh Chitlangia |
| [HDFS-13963](https://issues.apache.org/jira/browse/HDFS-13963) | NN UI is broken with IE11 |  Minor | namenode, ui | Daisuke Kobayashi | Ayush Saxena |
| [HDFS-14056](https://issues.apache.org/jira/browse/HDFS-14056) | Fix error messages in HDFS-12716 |  Minor | hdfs | Adam Antal | Ayush Saxena |
| [HADOOP-15948](https://issues.apache.org/jira/browse/HADOOP-15948) | Inconsistency in get and put syntax if filename/dirname contains space |  Minor | fs | vivek kumar | Ayush Saxena |
| [HDFS-13816](https://issues.apache.org/jira/browse/HDFS-13816) | dfs.getQuotaUsage() throws NPE on non-existent dir instead of FileNotFoundException |  Major | namenode | Vinayakumar B | Vinayakumar B |
| [YARN-8812](https://issues.apache.org/jira/browse/YARN-8812) | Containers fail during creating a symlink which started with hyphen for a resource file |  Minor | . | Oleksandr Shevchenko | Oleksandr Shevchenko |
| [MAPREDUCE-7165](https://issues.apache.org/jira/browse/MAPREDUCE-7165) | mapred-site.xml is misformatted in single node setup document |  Major | documentation | Akira Ajisaka | Zhaohui Xin |
| [YARN-7794](https://issues.apache.org/jira/browse/YARN-7794) | SLSRunner is not loading timeline service jars causing failure |  Blocker | scheduler-load-simulator | Sunil G | Yufei Gu |
| [HADOOP-15970](https://issues.apache.org/jira/browse/HADOOP-15970) | Upgrade plexus-utils from 2.0.5 to 3.1.0 |  Major | security | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15966](https://issues.apache.org/jira/browse/HADOOP-15966) | Hadoop Kerberos broken on macos as java.security.krb5.realm is reset: Null realm name (601) |  Major | scripts | Steve Loughran | Steve Loughran |
| [HADOOP-15974](https://issues.apache.org/jira/browse/HADOOP-15974) | Upgrade Curator version to 2.13.0 to fix ZK tests |  Major | . | Jason Darrell Lowe | Akira Ajisaka |
| [YARN-9009](https://issues.apache.org/jira/browse/YARN-9009) | Fix flaky test TestEntityGroupFSTimelineStore.testCleanLogs |  Minor | . | OrDTesters | OrDTesters |
| [YARN-9040](https://issues.apache.org/jira/browse/YARN-9040) | LevelDBCacheTimelineStore in ATS 1.5 leaks native memory |  Major | timelineserver | Tarun Parimi | Tarun Parimi |
| [HDFS-13661](https://issues.apache.org/jira/browse/HDFS-13661) | Ls command with e option fails when the filesystem is not HDFS |  Major | erasure-coding, tools | Takanobu Asanuma | Takanobu Asanuma |
| [HADOOP-15973](https://issues.apache.org/jira/browse/HADOOP-15973) | Configuration: Included properties are not cached if resource is a stream |  Critical | . | Eric Payne | Eric Payne |
| [MAPREDUCE-7174](https://issues.apache.org/jira/browse/MAPREDUCE-7174) | MapReduce example wordmedian should handle generic options |  Major | . | Hui Fei | Hui Fei |
| [YARN-9164](https://issues.apache.org/jira/browse/YARN-9164) | Shutdown NM may cause NPE when opportunistic container scheduling is enabled |  Critical | . | lujie | lujie |
| [YARN-9175](https://issues.apache.org/jira/browse/YARN-9175) | Null resources check in ResourceInfo for branch-3.0 |  Major | . | Jonathan Hung | Jonathan Hung |
| [HADOOP-15992](https://issues.apache.org/jira/browse/HADOOP-15992) | JSON License is included in the transitive dependency of aliyun-sdk-oss 3.0.0 |  Blocker | . | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-16030](https://issues.apache.org/jira/browse/HADOOP-16030) | AliyunOSS: bring fixes back from HADOOP-15671 |  Blocker | fs/oss | wujinhu | wujinhu |
| [YARN-9173](https://issues.apache.org/jira/browse/YARN-9173) | FairShare calculation broken for large values after YARN-8833 |  Major | fairscheduler | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-8833](https://issues.apache.org/jira/browse/YARN-8833) | Avoid potential integer overflow when computing fair shares |  Major | fairscheduler | liyakun | liyakun |
| [YARN-8747](https://issues.apache.org/jira/browse/YARN-8747) | [UI2] YARN UI2 page loading failed due to js error under some time zone configuration |  Critical | webapp | collinma | collinma |
| [HDFS-14218](https://issues.apache.org/jira/browse/HDFS-14218) | EC: Ls -e throw NPE when directory ec policy is disabled |  Major | . | Surendra Singh Lilhore | Ayush Saxena |
| [YARN-9210](https://issues.apache.org/jira/browse/YARN-9210) | RM nodes web page can not display node info |  Blocker | yarn | Jiandan Yang | Jiandan Yang |
| [YARN-8961](https://issues.apache.org/jira/browse/YARN-8961) | [UI2] Flow Run End Time shows 'Invalid date' |  Major | . | Charan Hebri | Akhil PB |
| [YARN-7088](https://issues.apache.org/jira/browse/YARN-7088) | Add application launch time to Resource Manager REST API |  Major | . | Abdullah Yousufi | Kanwaljeet Sachdev |
| [HDFS-14228](https://issues.apache.org/jira/browse/HDFS-14228) | Incorrect getSnapshottableDirListing() javadoc |  Major | snapshots | Wei-Chiu Chuang | Dinesh Chitlangia |
| [YARN-9222](https://issues.apache.org/jira/browse/YARN-9222) | Print launchTime in ApplicationSummary |  Major | . | Jonathan Hung | Jonathan Hung |
| [YARN-9237](https://issues.apache.org/jira/browse/YARN-9237) | NM should ignore sending finished apps to RM during RM fail-over |  Major | yarn | Jiandan Yang | Jiandan Yang |
| [YARN-6616](https://issues.apache.org/jira/browse/YARN-6616) | YARN AHS shows submitTime for jobs same as startTime |  Minor | . | Prabhu Joseph | Prabhu Joseph |
| [YARN-9206](https://issues.apache.org/jira/browse/YARN-9206) | RMServerUtils does not count SHUTDOWN as an accepted state |  Major | . | Kuhu Shukla | Kuhu Shukla |
| [YARN-9283](https://issues.apache.org/jira/browse/YARN-9283) | Javadoc of LinuxContainerExecutor#addSchedPriorityCommand has a wrong property name as reference |  Minor | documentation | Szilard Nemeth | Adam Antal |
| [HADOOP-15813](https://issues.apache.org/jira/browse/HADOOP-15813) | Enable more reliable SSL connection reuse |  Major | common | Daryn Sharp | Daryn Sharp |
| [HADOOP-16018](https://issues.apache.org/jira/browse/HADOOP-16018) | DistCp won't reassemble chunks when blocks per chunk \> 0 |  Major | tools/distcp | Kai Xie | Kai Xie |
| [HDFS-14314](https://issues.apache.org/jira/browse/HDFS-14314) | fullBlockReportLeaseId should be reset after registering to NN |  Critical | datanode | star | star |
| [YARN-5714](https://issues.apache.org/jira/browse/YARN-5714) | ContainerExecutor does not order environment map |  Trivial | nodemanager | Remi Catherinot | Remi Catherinot |
| [HDFS-14317](https://issues.apache.org/jira/browse/HDFS-14317) | Standby does not trigger edit log rolling when in-progress edit log tailing is enabled |  Critical | . | Ekanth Sethuramalingam | Ekanth Sethuramalingam |
| [HADOOP-16192](https://issues.apache.org/jira/browse/HADOOP-16192) | CallQueue backoff bug fixes: doesn't perform backoff when add() is used, and doesn't update backoff when refreshed |  Major | ipc | Erik Krogen | Erik Krogen |
| [HDFS-14037](https://issues.apache.org/jira/browse/HDFS-14037) | Fix SSLFactory truststore reloader thread leak in URLConnectionFactory |  Major | hdfs-client, webhdfs | Takanobu Asanuma | Takanobu Asanuma |
| [HADOOP-16232](https://issues.apache.org/jira/browse/HADOOP-16232) | Fix errors in the checkstyle configration xmls |  Major | build | Akira Ajisaka | Wanqiang Ji |
| [HDFS-14389](https://issues.apache.org/jira/browse/HDFS-14389) | getAclStatus returns incorrect permissions and owner when an iNodeAttributeProvider is configured |  Major | namenode | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-14407](https://issues.apache.org/jira/browse/HDFS-14407) | Fix misuse of SLF4j logging API in DatasetVolumeChecker#checkAllVolumes |  Minor | . | Wanqiang Ji | Wanqiang Ji |
| [YARN-9413](https://issues.apache.org/jira/browse/YARN-9413) | Queue resource leak after app fail for CapacityScheduler |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [HADOOP-14544](https://issues.apache.org/jira/browse/HADOOP-14544) | DistCp documentation for command line options is misaligned. |  Minor | documentation | Chris Nauroth | Masatake Iwasaki |
| [HDFS-10477](https://issues.apache.org/jira/browse/HDFS-10477) | Stop decommission a rack of DataNodes caused NameNode fail over to standby |  Major | namenode | yunjiong zhao | yunjiong zhao |
| [HADOOP-16265](https://issues.apache.org/jira/browse/HADOOP-16265) | Configuration#getTimeDuration is not consistent between default value and manual settings. |  Major | . | star | star |
| [YARN-9285](https://issues.apache.org/jira/browse/YARN-9285) | RM UI progress column is of wrong type |  Minor | yarn | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-16248](https://issues.apache.org/jira/browse/HADOOP-16248) | MutableQuantiles leak memory under heavy load |  Major | metrics | Alexis Daboville | Alexis Daboville |
| [HDFS-14500](https://issues.apache.org/jira/browse/HDFS-14500) | NameNode StartupProgress continues to report edit log segments after the LOADING\_EDITS phase is finished |  Major | namenode | Erik Krogen | Erik Krogen |
| [HDFS-14512](https://issues.apache.org/jira/browse/HDFS-14512) | ONE\_SSD policy will be violated while write data with DistributedFileSystem.create(....favoredNodes) |  Major | . | Shen Yinjie | Ayush Saxena |
| [YARN-8625](https://issues.apache.org/jira/browse/YARN-8625) | Aggregate Resource Allocation for each job is not present in ATS |  Major | ATSv2 | Prabhu Joseph | Prabhu Joseph |
| [HADOOP-16345](https://issues.apache.org/jira/browse/HADOOP-16345) | Potential NPE when instantiating FairCallQueue metrics |  Major | ipc | Erik Krogen | Erik Krogen |
| [HDFS-14535](https://issues.apache.org/jira/browse/HDFS-14535) | The default 8KB buffer in requestFileDescriptors#BufferedOutputStream is causing lots of heap allocation in HBase when using short-circut read |  Major | hdfs-client | Zheng Hu | Zheng Hu |
| [HDFS-13730](https://issues.apache.org/jira/browse/HDFS-13730) | BlockReaderRemote.sendReadResult throws NPE |  Major | hdfs-client | Wei-Chiu Chuang | Yuanbo Liu |
| [HDFS-14101](https://issues.apache.org/jira/browse/HDFS-14101) | Random failure of testListCorruptFilesCorruptedBlock |  Major | test | Kihwal Lee | Zsolt Venczel |
| [HDFS-14465](https://issues.apache.org/jira/browse/HDFS-14465) | When the Block expected replications is larger than the number of DataNodes, entering maintenance will never exit. |  Major | . | Yicong Cai | Yicong Cai |
| [HDFS-14541](https://issues.apache.org/jira/browse/HDFS-14541) |  When evictableMmapped or evictable size is zero, do not throw NoSuchElementException |  Major | hdfs-client, performance | Zheng Hu | Lisheng Sun |
| [YARN-9655](https://issues.apache.org/jira/browse/YARN-9655) | AllocateResponse in FederationInterceptor lost  applicationPriority |  Major | federation | hunshenshi | hunshenshi |
| [HDFS-12703](https://issues.apache.org/jira/browse/HDFS-12703) | Exceptions are fatal to decommissioning monitor |  Critical | namenode | Daryn Sharp | Xiaoqiao He |
| [HDFS-12748](https://issues.apache.org/jira/browse/HDFS-12748) | NameNode memory leak when accessing webhdfs GETHOMEDIRECTORY |  Major | hdfs | Jiandan Yang | Weiwei Yang |
| [YARN-9668](https://issues.apache.org/jira/browse/YARN-9668) | UGI conf doesn't read user overridden configurations on RM and NM startup |  Major | . | Jonathan Hung | Jonathan Hung |
| [HADOOP-16245](https://issues.apache.org/jira/browse/HADOOP-16245) | Enabling SSL within LdapGroupsMapping can break system SSL configs |  Major | common, security | Erik Krogen | Erik Krogen |
| [YARN-9596](https://issues.apache.org/jira/browse/YARN-9596) | QueueMetrics has incorrect metrics when labelled partitions are involved |  Major | capacity scheduler | Muhammad Samir Khan | Muhammad Samir Khan |
| [HDFS-14462](https://issues.apache.org/jira/browse/HDFS-14462) | WebHDFS throws "Error writing request body to server" instead of DSQuotaExceededException |  Major | webhdfs | Erik Krogen | Simbarashe Dzinamarira |
| [HDFS-12914](https://issues.apache.org/jira/browse/HDFS-12914) | Block report leases cause missing blocks until next report |  Critical | namenode | Daryn Sharp | Santosh Marella |
| [HDFS-14687](https://issues.apache.org/jira/browse/HDFS-14687) | Standby Namenode never come out of safemode when EC files are being written. |  Critical | ec, namenode | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-13101](https://issues.apache.org/jira/browse/HDFS-13101) | Yet another fsimage corruption related to snapshot |  Critical | snapshots | Yongjun Zhang | Shashikant Banerjee |
| [HDFS-14303](https://issues.apache.org/jira/browse/HDFS-14303) | check block directory logic not correct when there is only meta file, print no meaning warn log |  Minor | datanode, hdfs | qiang Liu | qiang Liu |
| [HDFS-14931](https://issues.apache.org/jira/browse/HDFS-14931) | hdfs crypto commands limit column width |  Major | . | Eric Badger | Eric Badger |
| [HDFS-13339](https://issues.apache.org/jira/browse/HDFS-13339) | Volume reference can't be released and may lead to deadlock when DataXceiver does a check volume |  Critical | datanode | liaoyuxiangqin | Zsolt Venczel |
| [HDFS-13179](https://issues.apache.org/jira/browse/HDFS-13179) | TestLazyPersistReplicaRecovery#testDnRestartWithSavedReplicas fails intermittently |  Critical | fs | Gabor Bota | Ahmed Hussein |
| [HADOOP-16840](https://issues.apache.org/jira/browse/HADOOP-16840) | AliyunOSS: getFileStatus throws FileNotFoundException in versioning bucket |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-17044](https://issues.apache.org/jira/browse/HADOOP-17044) | Revert "HADOOP-8143. Change distcp to have -pb on by default" |  Major | tools/distcp | Steve Loughran | Steve Loughran |
| [HDFS-15386](https://issues.apache.org/jira/browse/HDFS-15386) | ReplicaNotFoundException keeps happening in DN after removing multiple DN's data directories |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HDFS-15319](https://issues.apache.org/jira/browse/HDFS-15319) | Fix INode#isInLatestSnapshot() API |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HDFS-15470](https://issues.apache.org/jira/browse/HDFS-15470) | Added more unit tests to validate rename behaviour across snapshots |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [YARN-10393](https://issues.apache.org/jira/browse/YARN-10393) | MR job live lock caused by completed state container leak in heartbeat between node manager and RM |  Major | nodemanager, yarn | zhenzhao wang | Jim Brennan |


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
| [YARN-8907](https://issues.apache.org/jira/browse/YARN-8907) | Modify a logging message in TestCapacityScheduler |  Trivial | . | Zhankun Tang | Zhankun Tang |
| [YARN-8904](https://issues.apache.org/jira/browse/YARN-8904) | TestRMDelegationTokens can fail in testRMDTMasterKeyStateOnRollingMasterKey |  Minor | test | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-8944](https://issues.apache.org/jira/browse/YARN-8944) | TestContainerAllocation.testUserLimitAllocationMultipleContainers failure after YARN-8896 |  Minor | capacity scheduler | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [HDFS-11950](https://issues.apache.org/jira/browse/HDFS-11950) | Disable libhdfs zerocopy test on Mac |  Minor | libhdfs | John Zhuge | Akira Ajisaka |
| [YARN-10161](https://issues.apache.org/jira/browse/YARN-10161) | TestRouterWebServicesREST is corrupting STDOUT |  Minor | yarn | Jim Brennan | Jim Brennan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12978](https://issues.apache.org/jira/browse/HDFS-12978) | Fine-grained locking while consuming journal stream. |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-13637](https://issues.apache.org/jira/browse/HDFS-13637) | RBF: Router fails when threadIndex (in ConnectionPool) wraps around Integer.MIN\_VALUE |  Critical | federation | CR Hota | CR Hota |
| [HDFS-13281](https://issues.apache.org/jira/browse/HDFS-13281) | Namenode#createFile should be /.reserved/raw/ aware. |  Critical | encryption | Rushabh Shah | Rushabh Shah |
| [YARN-4677](https://issues.apache.org/jira/browse/YARN-4677) | RMNodeResourceUpdateEvent update from scheduler can lead to race condition |  Major | graceful, resourcemanager, scheduler | Brook Zhou | Wilfred Spiegelenburg |
| [HADOOP-15506](https://issues.apache.org/jira/browse/HADOOP-15506) | Upgrade Azure Storage Sdk version to 7.0.0 and update corresponding code blocks |  Minor | fs/azure | Esfandiar Manii | Esfandiar Manii |
| [HADOOP-15529](https://issues.apache.org/jira/browse/HADOOP-15529) | ContainerLaunch#testInvalidEnvVariableSubstitutionType is not supported in Windows |  Minor | . | Giovanni Matteo Fumarola | Giovanni Matteo Fumarola |
| [HADOOP-15533](https://issues.apache.org/jira/browse/HADOOP-15533) | Make WASB listStatus messages consistent |  Trivial | fs/azure | Esfandiar Manii | Esfandiar Manii |
| [HADOOP-15458](https://issues.apache.org/jira/browse/HADOOP-15458) | TestLocalFileSystem#testFSOutputStreamBuilder fails on Windows |  Minor | test | Xiao Liang | Xiao Liang |
| [HDFS-13726](https://issues.apache.org/jira/browse/HDFS-13726) | RBF: Fix RBF configuration links |  Minor | documentation | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-13475](https://issues.apache.org/jira/browse/HDFS-13475) | RBF: Admin cannot enforce Router enter SafeMode |  Major | . | Wei Yan | Chao Sun |
| [HDFS-13733](https://issues.apache.org/jira/browse/HDFS-13733) | RBF: Add Web UI configurations and descriptions to RBF document |  Minor | documentation | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-13743](https://issues.apache.org/jira/browse/HDFS-13743) | RBF: Router throws NullPointerException due to the invalid initialization of MountTableResolver |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-13750](https://issues.apache.org/jira/browse/HDFS-13750) | RBF: Router ID in RouterRpcClient is always null |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [YARN-8129](https://issues.apache.org/jira/browse/YARN-8129) | Improve error message for invalid value in fields attribute |  Minor | ATSv2 | Charan Hebri | Abhishek Modi |
| [HDFS-13848](https://issues.apache.org/jira/browse/HDFS-13848) | Refactor NameNode failover proxy providers |  Major | ha, hdfs-client | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-15731](https://issues.apache.org/jira/browse/HADOOP-15731) | TestDistributedShell fails on Windows |  Major | . | Botong Huang | Botong Huang |
| [HADOOP-15759](https://issues.apache.org/jira/browse/HADOOP-15759) | AliyunOSS: update oss-sdk version to 3.0.0 |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-15748](https://issues.apache.org/jira/browse/HADOOP-15748) | S3 listing inconsistency can raise NPE in globber |  Major | fs | Steve Loughran | Steve Loughran |
| [HADOOP-15671](https://issues.apache.org/jira/browse/HADOOP-15671) | AliyunOSS: Support Assume Roles in AliyunOSS |  Major | fs/oss | wujinhu | wujinhu |
| [YARN-6989](https://issues.apache.org/jira/browse/YARN-6989) | Ensure timeline service v2 codebase gets UGI from HttpServletRequest in a consistent way |  Major | timelineserver | Vrushali C | Abhishek Modi |
| [HADOOP-15837](https://issues.apache.org/jira/browse/HADOOP-15837) | DynamoDB table Update can fail S3A FS init |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HDFS-13802](https://issues.apache.org/jira/browse/HDFS-13802) | RBF: Remove FSCK from Router Web UI |  Major | . | Hui Fei | Hui Fei |
| [HADOOP-15607](https://issues.apache.org/jira/browse/HADOOP-15607) | AliyunOSS: fix duplicated partNumber issue in AliyunOSSBlockOutputStream |  Critical | . | wujinhu | wujinhu |
| [HADOOP-15868](https://issues.apache.org/jira/browse/HADOOP-15868) | AliyunOSS: update document for properties of multiple part download, multiple part upload and directory copy |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-15917](https://issues.apache.org/jira/browse/HADOOP-15917) | AliyunOSS: fix incorrect ReadOps and WriteOps in statistics |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-15932](https://issues.apache.org/jira/browse/HADOOP-15932) | Oozie unable to create sharelib in s3a filesystem |  Critical | fs, fs/s3 | Soumitra Sulav | Steve Loughran |
| [HADOOP-16009](https://issues.apache.org/jira/browse/HADOOP-16009) | Replace the url of the repository in Apache Hadoop source code |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-15323](https://issues.apache.org/jira/browse/HADOOP-15323) | AliyunOSS: Improve copy file performance for AliyunOSSFileSystemStore |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-16045](https://issues.apache.org/jira/browse/HADOOP-16045) | Don't run TestDU on Windows |  Trivial | common, test | Lukas Majercak | Lukas Majercak |
| [HADOOP-16109](https://issues.apache.org/jira/browse/HADOOP-16109) | Parquet reading S3AFileSystem causes EOF |  Blocker | fs/s3 | Dave Christianson | Steve Loughran |
| [HADOOP-16191](https://issues.apache.org/jira/browse/HADOOP-16191) | AliyunOSS: improvements for copyFile/copyDirectory and logging |  Major | fs/oss | wujinhu | wujinhu |
| [HADOOP-16220](https://issues.apache.org/jira/browse/HADOOP-16220) | Add findbugs ignores for unjustified issues during update to guava to 27.0-jre in hadoop-project |  Major | . | Gabor Bota | Gabor Bota |
| [HADOOP-16233](https://issues.apache.org/jira/browse/HADOOP-16233) | S3AFileStatus to declare that isEncrypted() is always true |  Minor | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-16306](https://issues.apache.org/jira/browse/HADOOP-16306) | AliyunOSS: Remove temporary files when upload small files to OSS |  Major | fs/oss | wujinhu | wujinhu |
| [HDFS-14034](https://issues.apache.org/jira/browse/HDFS-14034) | Support getQuotaUsage API in WebHDFS |  Major | fs, webhdfs | Erik Krogen | Chao Sun |
| [YARN-9775](https://issues.apache.org/jira/browse/YARN-9775) | RMWebServices /scheduler-conf GET returns all hadoop configurations for ZKConfigurationStore |  Major | restapi | Prabhu Joseph | Prabhu Joseph |
| [HADOOP-16598](https://issues.apache.org/jira/browse/HADOOP-16598) | Backport "HADOOP-16558 [COMMON+HDFS] use protobuf-maven-plugin to generate protobuf classes" to all active branches |  Major | common | Duo Zhang | Duo Zhang |
| [HADOOP-16758](https://issues.apache.org/jira/browse/HADOOP-16758) | Refine testing.md to tell user better how to use auth-keys.xml |  Minor | fs/s3 | Mingliang Liu | Mingliang Liu |
| [HADOOP-16756](https://issues.apache.org/jira/browse/HADOOP-16756) | distcp -update to S3A; abfs, etc always overwrites due to block size mismatch |  Major | fs/s3, tools/distcp | Daisuke Kobayashi | Steve Loughran |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13788](https://issues.apache.org/jira/browse/HDFS-13788) | Update EC documentation about rack fault tolerance |  Major | documentation, erasure-coding | Xiao Chen | Kitti Nanasi |
| [HADOOP-15816](https://issues.apache.org/jira/browse/HADOOP-15816) | Upgrade Apache Zookeeper version due to security concerns |  Major | . | Boris Vulikh | Akira Ajisaka |
| [HADOOP-15882](https://issues.apache.org/jira/browse/HADOOP-15882) | Upgrade maven-shade-plugin from 2.4.3 to 3.2.0 |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HADOOP-15815](https://issues.apache.org/jira/browse/HADOOP-15815) | Upgrade Eclipse Jetty version to 9.3.24 |  Major | . | Boris Vulikh | Boris Vulikh |
| [HADOOP-16025](https://issues.apache.org/jira/browse/HADOOP-16025) | Update the year to 2019 |  Major | build | Ayush Saxena | Ayush Saxena |
| [HDFS-12729](https://issues.apache.org/jira/browse/HDFS-12729) | Document special paths in HDFS |  Major | documentation | Christopher Douglas | Masatake Iwasaki |
| [YARN-9559](https://issues.apache.org/jira/browse/YARN-9559) | Create AbstractContainersLauncher for pluggable ContainersLauncher logic |  Major | . | Jonathan Hung | Jonathan Hung |


