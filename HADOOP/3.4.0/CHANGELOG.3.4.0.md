
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

## Release 3.4.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-17010](https://issues.apache.org/jira/browse/HADOOP-17010) | Add queue capacity weights support in FairCallQueue |  Major | ipc | Fengnan Li | Fengnan Li |
| [HDFS-15288](https://issues.apache.org/jira/browse/HDFS-15288) | Add Available Space Rack Fault Tolerant BPP |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-13183](https://issues.apache.org/jira/browse/HDFS-13183) | Standby NameNode process getBlocks request to reduce Active load |  Major | balancer & mover, namenode | Xiaoqiao He | Xiaoqiao He |
| [HDFS-15463](https://issues.apache.org/jira/browse/HDFS-15463) | Add a tool to validate FsImage |  Major | namenode | Tsz-wo Sze | Tsz-wo Sze |
| [HADOOP-17165](https://issues.apache.org/jira/browse/HADOOP-17165) | Implement service-user feature in DecayRPCScheduler |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HADOOP-15891](https://issues.apache.org/jira/browse/HADOOP-15891) | Provide Regex Based Mount Point In Inode Tree |  Major | viewfs | zhenzhao wang | zhenzhao wang |
| [HDFS-15025](https://issues.apache.org/jira/browse/HDFS-15025) | Applying NVDIMM storage media to HDFS |  Major | datanode, hdfs | YaYun Wang | YaYun Wang |
| [HDFS-15098](https://issues.apache.org/jira/browse/HDFS-15098) | Add SM4 encryption method for HDFS |  Major | . | liusheng | liusheng |
| [HADOOP-17125](https://issues.apache.org/jira/browse/HADOOP-17125) | Using snappy-java in SnappyCodec |  Major | common | DB Tsai | L. C. Hsieh |
| [HDFS-15294](https://issues.apache.org/jira/browse/HDFS-15294) | Federation balance tool |  Major | . | Jinglun | Jinglun |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-15245](https://issues.apache.org/jira/browse/HDFS-15245) | Improve JournalNode web UI |  Major | journal-node, ui | Jianfei Jiang | Jianfei Jiang |
| [MAPREDUCE-7241](https://issues.apache.org/jira/browse/MAPREDUCE-7241) | FileInputFormat listStatus with less memory footprint |  Major | job submission | Zhihua Deng | Zhihua Deng |
| [HDFS-15242](https://issues.apache.org/jira/browse/HDFS-15242) | Add metrics for operations hold lock times of FsDatasetImpl |  Major | datanode | Xiaoqiao He | Xiaoqiao He |
| [HADOOP-16952](https://issues.apache.org/jira/browse/HADOOP-16952) | Add .diff to gitignore |  Minor | . | Ayush Saxena | Ayush Saxena |
| [HADOOP-16954](https://issues.apache.org/jira/browse/HADOOP-16954) | Add -S option in "Count" command to show only Snapshot Counts |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [YARN-10063](https://issues.apache.org/jira/browse/YARN-10063) | Usage output of container-executor binary needs to include --http/--https argument |  Minor | . | Siddharth Ahuja | Siddharth Ahuja |
| [YARN-10212](https://issues.apache.org/jira/browse/YARN-10212) | Create separate configuration for max global AM attempts |  Major | . | Jonathan Hung | Bilwa S T |
| [HDFS-15261](https://issues.apache.org/jira/browse/HDFS-15261) | RBF: Add Block Related Metrics |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15247](https://issues.apache.org/jira/browse/HDFS-15247) | RBF: Provide Non DFS Used per DataNode in DataNode UI |  Major | . | Ayush Saxena | Lisheng Sun |
| [YARN-5277](https://issues.apache.org/jira/browse/YARN-5277) | When localizers fail due to resource timestamps being out, provide more diagnostics |  Major | nodemanager | Steve Loughran | Siddharth Ahuja |
| [YARN-9995](https://issues.apache.org/jira/browse/YARN-9995) | Code cleanup in TestSchedConfCLI |  Minor | . | Szilard Nemeth | Bilwa S T |
| [YARN-9354](https://issues.apache.org/jira/browse/YARN-9354) | Resources should be created with ResourceTypesTestHelper instead of TestUtils |  Trivial | . | Szilard Nemeth | Andras Gyori |
| [YARN-10002](https://issues.apache.org/jira/browse/YARN-10002) | Code cleanup and improvements in ConfigurationStoreBaseTest |  Minor | . | Szilard Nemeth | Benjamin Teke |
| [HDFS-15277](https://issues.apache.org/jira/browse/HDFS-15277) | Parent directory in the explorer does not support all path formats |  Minor | . | Jianfei Jiang | Jianfei Jiang |
| [HADOOP-16951](https://issues.apache.org/jira/browse/HADOOP-16951) | Tidy Up Text and ByteWritables Classes |  Minor | common | David Mollitor | David Mollitor |
| [YARN-9954](https://issues.apache.org/jira/browse/YARN-9954) | Configurable max application tags and max tag length |  Major | . | Jonathan Hung | Bilwa S T |
| [YARN-10001](https://issues.apache.org/jira/browse/YARN-10001) | Add explanation of unimplemented methods in InMemoryConfigurationStore |  Major | . | Szilard Nemeth | Siddharth Ahuja |
| [MAPREDUCE-7199](https://issues.apache.org/jira/browse/MAPREDUCE-7199) | HsJobsBlock reuse JobACLsManager for checkAccess |  Minor | . | Bibin Chundatt | Bilwa S T |
| [HDFS-15217](https://issues.apache.org/jira/browse/HDFS-15217) | Add more information to longest write/read lock held log |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HADOOP-17001](https://issues.apache.org/jira/browse/HADOOP-17001) | The suffix name of the unified compression class |  Major | io | bianqi | bianqi |
| [YARN-9997](https://issues.apache.org/jira/browse/YARN-9997) | Code cleanup in ZKConfigurationStore |  Minor | . | Szilard Nemeth | Andras Gyori |
| [YARN-9996](https://issues.apache.org/jira/browse/YARN-9996) | Code cleanup in QueueAdminConfigurationMutationACLPolicy |  Major | . | Szilard Nemeth | Siddharth Ahuja |
| [YARN-9998](https://issues.apache.org/jira/browse/YARN-9998) | Code cleanup in LeveldbConfigurationStore |  Minor | . | Szilard Nemeth | Benjamin Teke |
| [YARN-9999](https://issues.apache.org/jira/browse/YARN-9999) | TestFSSchedulerConfigurationStore: Extend from ConfigurationStoreBaseTest, general code cleanup |  Minor | . | Szilard Nemeth | Benjamin Teke |
| [HDFS-15295](https://issues.apache.org/jira/browse/HDFS-15295) | AvailableSpaceBlockPlacementPolicy should use chooseRandomWithStorageTypeTwoTrial() for better performance. |  Minor | . | Jinglun | Jinglun |
| [HADOOP-16054](https://issues.apache.org/jira/browse/HADOOP-16054) | Update Dockerfile to use Bionic |  Major | build, test | Akira Ajisaka | Akira Ajisaka |
| [YARN-10189](https://issues.apache.org/jira/browse/YARN-10189) | Code cleanup in LeveldbRMStateStore |  Minor | . | Benjamin Teke | Benjamin Teke |
| [YARN-10237](https://issues.apache.org/jira/browse/YARN-10237) | Add isAbsoluteResource config for queue in scheduler response |  Minor | scheduler | Prabhu Joseph | Prabhu Joseph |
| [HADOOP-16886](https://issues.apache.org/jira/browse/HADOOP-16886) | Add hadoop.http.idle\_timeout.ms to core-default.xml |  Major | . | Wei-Chiu Chuang | Lisheng Sun |
| [HDFS-15328](https://issues.apache.org/jira/browse/HDFS-15328) | Use DFSConfigKeys  MONITOR\_CLASS\_DEFAULT  constant |  Minor | hdfs | bianqi | bianqi |
| [HDFS-14283](https://issues.apache.org/jira/browse/HDFS-14283) | DFSInputStream to prefer cached replica |  Major | . | Wei-Chiu Chuang | Lisheng Sun |
| [HDFS-15347](https://issues.apache.org/jira/browse/HDFS-15347) | Replace the deprecated method shaHex |  Minor | balancer & mover | bianqi | bianqi |
| [HDFS-15338](https://issues.apache.org/jira/browse/HDFS-15338) | listOpenFiles() should throw InvalidPathException in case of invalid paths |  Minor | . | Jinglun | Jinglun |
| [YARN-10160](https://issues.apache.org/jira/browse/YARN-10160) | Add auto queue creation related configs to RMWebService#CapacitySchedulerQueueInfo |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [HDFS-15350](https://issues.apache.org/jira/browse/HDFS-15350) | Set dfs.client.failover.random.order to true as default |  Major | hdfs-client | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-15255](https://issues.apache.org/jira/browse/HDFS-15255) | Consider StorageType when DatanodeManager#sortLocatedBlock() |  Major | . | Lisheng Sun | Lisheng Sun |
| [HDFS-15345](https://issues.apache.org/jira/browse/HDFS-15345) | RBF: RouterPermissionChecker#checkSuperuserPrivilege should use UGI#getGroups after HADOOP-13442 |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [YARN-10260](https://issues.apache.org/jira/browse/YARN-10260) | Allow transitioning queue from DRAINING to RUNNING state |  Major | . | Jonathan Hung | Bilwa S T |
| [HDFS-15344](https://issues.apache.org/jira/browse/HDFS-15344) | DataNode#checkSuperuserPrivilege should use UGI#getGroups after HADOOP-13442 |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-14254](https://issues.apache.org/jira/browse/HADOOP-14254) | Add a Distcp option to preserve Erasure Coding attributes |  Major | tools/distcp | Wei-Chiu Chuang | Ayush Saxena |
| [HADOOP-17036](https://issues.apache.org/jira/browse/HADOOP-17036) | TestFTPFileSystem failing as ftp server dir already exists |  Minor | fs, test | Steve Loughran | Mikhail Pryakhin |
| [HDFS-15356](https://issues.apache.org/jira/browse/HDFS-15356) | Unify configuration \`dfs.ha.allow.stale.reads\` to DFSConfigKeys |  Major | hdfs | Xiaoqiao He | Xiaoqiao He |
| [HDFS-15358](https://issues.apache.org/jira/browse/HDFS-15358) | RBF: Unify router datanode UI with namenode datanode UI |  Major | . | Ayush Saxena | Ayush Saxena |
| [HADOOP-17042](https://issues.apache.org/jira/browse/HADOOP-17042) | Hadoop distcp throws "ERROR: Tools helper ///usr/lib/hadoop/libexec/tools/hadoop-distcp.sh was not found" |  Minor | tools/distcp | Aki Tanaka | Aki Tanaka |
| [HDFS-15202](https://issues.apache.org/jira/browse/HDFS-15202) | HDFS-client: boost ShortCircuit Cache |  Minor | dfsclient | Danil Lipovoy | Danil Lipovoy |
| [HDFS-15207](https://issues.apache.org/jira/browse/HDFS-15207) | VolumeScanner skip to scan blocks accessed during recent scan peroid |  Minor | datanode | Yang Yun | Yang Yun |
| [HDFS-14999](https://issues.apache.org/jira/browse/HDFS-14999) | Avoid Potential Infinite Loop in DFSNetworkTopology |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15353](https://issues.apache.org/jira/browse/HDFS-15353) | Use sudo instead of su to allow nologin user for secure DataNode |  Major | datanode, security | Akira Ajisaka | Kei Kori |
| [HDFS-13639](https://issues.apache.org/jira/browse/HDFS-13639) | SlotReleaser is not fast enough |  Major | hdfs-client | Gang Xie | Lisheng Sun |
| [HDFS-15369](https://issues.apache.org/jira/browse/HDFS-15369) | Refactor method VolumeScanner#runLoop() |  Minor | datanode | Yang Yun | Yang Yun |
| [HDFS-15355](https://issues.apache.org/jira/browse/HDFS-15355) | Make the default block storage policy ID configurable |  Minor | block placement, namenode | Yang Yun | Yang Yun |
| [HDFS-15368](https://issues.apache.org/jira/browse/HDFS-15368) | TestBalancerWithHANameNodes#testBalancerWithObserver failed occasionally |  Major | . | Xiaoqiao He | Xiaoqiao He |
| [HADOOP-14698](https://issues.apache.org/jira/browse/HADOOP-14698) | Make copyFromLocal's -t option available for put as well |  Major | . | Andras Bokor | Andras Bokor |
| [HDFS-10792](https://issues.apache.org/jira/browse/HDFS-10792) | RedundantEditLogInputStream should log caught exceptions |  Minor | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [YARN-6492](https://issues.apache.org/jira/browse/YARN-6492) | Generate queue metrics for each partition |  Major | capacity scheduler | Jonathan Hung | Manikandan R |
| [HADOOP-16828](https://issues.apache.org/jira/browse/HADOOP-16828) | Zookeeper Delegation Token Manager fetch sequence number by batch |  Major | . | Fengnan Li | Fengnan Li |
| [HDFS-14960](https://issues.apache.org/jira/browse/HDFS-14960) | TestBalancerWithNodeGroup should not succeed with DFSNetworkTopology |  Minor | hdfs | Jim Brennan | Jim Brennan |
| [HDFS-15359](https://issues.apache.org/jira/browse/HDFS-15359) | EC: Allow closing a file with committed blocks |  Major | erasure-coding | Ayush Saxena | Ayush Saxena |
| [HADOOP-17047](https://issues.apache.org/jira/browse/HADOOP-17047) | TODO comments exist in trunk while the related issues are already fixed. |  Trivial | . | Rungroj Maipradit | Rungroj Maipradit |
| [HDFS-15376](https://issues.apache.org/jira/browse/HDFS-15376) | Update the error about command line POST in httpfs documentation |  Major | httpfs | bianqi | bianqi |
| [HDFS-15406](https://issues.apache.org/jira/browse/HDFS-15406) | Improve the speed of Datanode Block Scan |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-17009](https://issues.apache.org/jira/browse/HADOOP-17009) | Embrace Immutability of Java Collections |  Minor | common | David Mollitor | David Mollitor |
| [YARN-9460](https://issues.apache.org/jira/browse/YARN-9460) | QueueACLsManager and ReservationsACLManager should not use instanceof checks |  Major | resourcemanager | Szilard Nemeth | Bilwa S T |
| [YARN-10321](https://issues.apache.org/jira/browse/YARN-10321) | Break down TestUserGroupMappingPlacementRule#testMapping into test scenarios |  Minor | . | Szilard Nemeth | Szilard Nemeth |
| [HDFS-15383](https://issues.apache.org/jira/browse/HDFS-15383) | RBF: Disable watch in ZKDelegationSecretManager for performance |  Major | . | Fengnan Li | Fengnan Li |
| [HDFS-15160](https://issues.apache.org/jira/browse/HDFS-15160) | ReplicaMap, Disk Balancer, Directory Scanner and various FsDatasetImpl methods should use datanode readlock |  Major | datanode | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-15416](https://issues.apache.org/jira/browse/HDFS-15416) | Improve DataStorage#addStorageLocations() for empty locations |  Major | datanode | JiangHua Zhu | JiangHua Zhu |
| [HADOOP-17090](https://issues.apache.org/jira/browse/HADOOP-17090) | Increase precommit job timeout from 5 hours to 20 hours |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17084](https://issues.apache.org/jira/browse/HADOOP-17084) | Update Dockerfile\_aarch64 to use Bionic |  Major | build, test | RuiChen | zhaorenhai |
| [HDFS-15312](https://issues.apache.org/jira/browse/HDFS-15312) | Apply umask when creating directory by WebHDFS |  Minor | webhdfs | Ye Ni | Ye Ni |
| [HDFS-15425](https://issues.apache.org/jira/browse/HDFS-15425) | Review Logging of DFSClient |  Minor | dfsclient | Hongbing Wang | Hongbing Wang |
| [YARN-8047](https://issues.apache.org/jira/browse/YARN-8047) | RMWebApp make external class pluggable |  Minor | . | Bibin Chundatt | Bilwa S T |
| [YARN-10333](https://issues.apache.org/jira/browse/YARN-10333) | YarnClient obtain Delegation Token for Log Aggregation Path |  Major | log-aggregation | Prabhu Joseph | Prabhu Joseph |
| [HADOOP-17079](https://issues.apache.org/jira/browse/HADOOP-17079) | Optimize UGI#getGroups by adding UGI#getGroupsSet |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [YARN-10297](https://issues.apache.org/jira/browse/YARN-10297) | TestContinuousScheduling#testFairSchedulerContinuousSchedulingInitTime fails intermittently |  Major | . | Jonathan Hung | Jim Brennan |
| [HDFS-15371](https://issues.apache.org/jira/browse/HDFS-15371) | Nonstandard characters exist in NameNode.java |  Minor | . | JiangHua Zhu | Zhao Yi Ming |
| [HADOOP-17127](https://issues.apache.org/jira/browse/HADOOP-17127) | Use RpcMetrics.TIMEUNIT to initialize rpc queueTime and processingTime |  Minor | common | Jim Brennan | Jim Brennan |
| [HDFS-15385](https://issues.apache.org/jira/browse/HDFS-15385) | Upgrade boost library to 1.72 |  Critical | build, libhdfs++ | Gautham Banasandra | Gautham Banasandra |
| [HADOOP-16930](https://issues.apache.org/jira/browse/HADOOP-16930) | Add com.amazonaws.auth.profile.ProfileCredentialsProvider to hadoop-aws docs |  Minor | documentation, fs/s3 | Nicholas Chammas |  |
| [HDFS-15476](https://issues.apache.org/jira/browse/HDFS-15476) | Make AsyncStream class' executor\_ member private |  Minor | build, libhdfs++ | Suraj Naik | Suraj Naik |
| [HDFS-15381](https://issues.apache.org/jira/browse/HDFS-15381) | Fix typo corrputBlocksFiles to corruptBlocksFiles |  Trivial | hdfs | bianqi | bianqi |
| [HDFS-15404](https://issues.apache.org/jira/browse/HDFS-15404) | ShellCommandFencer should expose info about source |  Major | . | Chen Liang | Chen Liang |
| [HADOOP-17147](https://issues.apache.org/jira/browse/HADOOP-17147) | Dead link in hadoop-kms/index.md.vm |  Minor | documentation, kms | Akira Ajisaka | Xieming Li |
| [HADOOP-17113](https://issues.apache.org/jira/browse/HADOOP-17113) | Adding ReadAhead Counters in ABFS |  Major | fs/azure | Mehakmeet Singh | Mehakmeet Singh |
| [YARN-10319](https://issues.apache.org/jira/browse/YARN-10319) | Record Last N Scheduler Activities from ActivitiesManager |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [HADOOP-17141](https://issues.apache.org/jira/browse/HADOOP-17141) | Add Capability To Get Text Length |  Minor | common | David Mollitor | David Mollitor |
| [YARN-10208](https://issues.apache.org/jira/browse/YARN-10208) | Add capacityScheduler metric for NODE\_UPDATE interval |  Minor | . | Pranjal Protim Borah | Pranjal Protim Borah |
| [YARN-10343](https://issues.apache.org/jira/browse/YARN-10343) | Legacy RM UI should include labeled metrics for allocated, total, and reserved resources. |  Major | . | Eric Payne | Eric Payne |
| [YARN-1529](https://issues.apache.org/jira/browse/YARN-1529) | Add Localization overhead metrics to NM |  Major | nodemanager | Gera Shegalov | Jim Brennan |
| [YARN-10381](https://issues.apache.org/jira/browse/YARN-10381) | Send out application attempt state along with other elements in the application attempt object returned from appattempts REST API call |  Minor | yarn-ui-v2 | Siddharth Ahuja | Siddharth Ahuja |
| [YARN-10361](https://issues.apache.org/jira/browse/YARN-10361) | Make custom DAO classes configurable into RMWebApp#JAXBContextResolver |  Major | . | Prabhu Joseph | Bilwa S T |
| [HDFS-15512](https://issues.apache.org/jira/browse/HDFS-15512) | Remove smallBufferSize in DFSClient |  Minor | . | Takanobu Asanuma | Takanobu Asanuma |
| [YARN-10251](https://issues.apache.org/jira/browse/YARN-10251) | Show extended resources on legacy RM UI. |  Major | . | Eric Payne | Eric Payne |
| [HDFS-15520](https://issues.apache.org/jira/browse/HDFS-15520) | Use visitor pattern to visit namespace tree |  Major | namenode | Tsz-wo Sze | Tsz-wo Sze |
| [YARN-10389](https://issues.apache.org/jira/browse/YARN-10389) | Option to override RMWebServices with custom WebService class |  Major | . | Prabhu Joseph | Tanu Ajmera |
| [HDFS-15493](https://issues.apache.org/jira/browse/HDFS-15493) | Update block map and name cache in parallel while loading fsimage. |  Major | namenode | Chengwei Wang | Chengwei Wang |
| [HADOOP-17206](https://issues.apache.org/jira/browse/HADOOP-17206) | Add python2 to required package on CentOS 8 for building documentation |  Minor | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-15519](https://issues.apache.org/jira/browse/HDFS-15519) | Check inaccessible INodes in FsImageValidation |  Major | tools | Tsz-wo Sze | Tsz-wo Sze |
| [YARN-10399](https://issues.apache.org/jira/browse/YARN-10399) | Refactor NodeQueueLoadMonitor class to make it extendable |  Minor | resourcemanager | Zhengbo Li | Zhengbo Li |
| [HDFS-15448](https://issues.apache.org/jira/browse/HDFS-15448) | Remove duplicate BlockPoolManager starting when run DataNode |  Major | . | JiangHua Zhu | JiangHua Zhu |
| [HADOOP-17159](https://issues.apache.org/jira/browse/HADOOP-17159) | Make UGI support forceful relogin from keytab ignoring the last login time |  Major | security | Sandeep Guggilam | Sandeep Guggilam |
| [HADOOP-17232](https://issues.apache.org/jira/browse/HADOOP-17232) | Erasure Coding: Typo in document |  Trivial | documentation | Hui Fei | Hui Fei |
| [HDFS-15550](https://issues.apache.org/jira/browse/HDFS-15550) | Remove unused imports from TestFileTruncate.java |  Minor | . | Ravuri Sushma sree | Ravuri Sushma sree |
| [YARN-10342](https://issues.apache.org/jira/browse/YARN-10342) | [UI1] Provide a way to hide Tools section in Web UIv1 |  Minor | . | Andras Gyori | Andras Gyori |
| [HADOOP-17235](https://issues.apache.org/jira/browse/HADOOP-17235) | Erasure Coding: Remove dead code from common side |  Minor | . | Hui Fei | Hui Fei |
| [YARN-9136](https://issues.apache.org/jira/browse/YARN-9136) | getNMResourceInfo NodeManager REST API method is not documented |  Major | . | Szilard Nemeth | Hudáky Márton Gyula |
| [YARN-10353](https://issues.apache.org/jira/browse/YARN-10353) | Log vcores used and cumulative cpu in containers monitor |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10369](https://issues.apache.org/jira/browse/YARN-10369) | Make NMTokenSecretManagerInRM sending NMToken for nodeId DEBUG |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-14694](https://issues.apache.org/jira/browse/HDFS-14694) | Call recoverLease on DFSOutputStream close exception |  Major | hdfs-client | Chen Zhang | Lisheng Sun |
| [HADOOP-17222](https://issues.apache.org/jira/browse/HADOOP-17222) |  Create socket address leveraging URI cache |  Major | common, hdfs-client | fanrui | fanrui |
| [YARN-10390](https://issues.apache.org/jira/browse/YARN-10390) | LeafQueue: retain user limits cache across assignContainers() calls |  Major | capacity scheduler, capacityscheduler | Muhammad Samir Khan | Muhammad Samir Khan |
| [HDFS-15574](https://issues.apache.org/jira/browse/HDFS-15574) | Remove unnecessary sort of block list in DirectoryScanner |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HADOOP-17208](https://issues.apache.org/jira/browse/HADOOP-17208) | LoadBalanceKMSClientProvider#deleteKey should invalidateCache via all KMSClientProvider instances |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-17270](https://issues.apache.org/jira/browse/HADOOP-17270) | Fix testCompressorDecompressorWithExeedBufferLimit to cover the intended scenario |  Minor | test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-15579](https://issues.apache.org/jira/browse/HDFS-15579) | RBF: The constructor of PathLocation may got some misunderstanding |  Minor | rbf | Janus Chow | Janus Chow |
| [HDFS-15554](https://issues.apache.org/jira/browse/HDFS-15554) | RBF: force router check file existence in destinations before adding/updating mount points |  Minor | . | Fengnan Li | Fengnan Li |
| [HADOOP-17259](https://issues.apache.org/jira/browse/HADOOP-17259) | Allow SSLFactory fallback to input config if ssl-\*.xml fail to load from classpath |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-15581](https://issues.apache.org/jira/browse/HDFS-15581) | Access Controlled HTTPFS Proxy |  Minor | httpfs | Richard | Richard |
| [HDFS-15557](https://issues.apache.org/jira/browse/HDFS-15557) | Log the reason why a storage log file can't be deleted |  Minor | . | Ye Ni | Ye Ni |
| [YARN-6754](https://issues.apache.org/jira/browse/YARN-6754) | Fair scheduler docs should explain meaning of weight=0 for a queue |  Major | docs | Daniel Templeton | Takeru Kuramoto |
| [HADOOP-17283](https://issues.apache.org/jira/browse/HADOOP-17283) | Hadoop - Upgrade to JQuery 3.5.1 |  Major | . | Aryan Gupta | Aryan Gupta |
| [HADOOP-17282](https://issues.apache.org/jira/browse/HADOOP-17282) | libzstd-dev should be used instead of libzstd1-dev on Ubuntu 18.04 or higher |  Minor | . | Takeru Kuramoto | Takeru Kuramoto |
| [HDFS-15594](https://issues.apache.org/jira/browse/HDFS-15594) | Lazy calculate live datanodes in safe mode tip |  Minor | namenode | Ye Ni | Ye Ni |
| [HDFS-15577](https://issues.apache.org/jira/browse/HDFS-15577) | Refactor TestTracing |  Major | test | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-15530](https://issues.apache.org/jira/browse/HDFS-15530) | RBF: Fix typo in DFS\_ROUTER\_QUOTA\_CACHE\_UPDATE\_INTERVAL var definition |  Minor | . | Sha Fanghao | Sha Fanghao |
| [HDFS-15604](https://issues.apache.org/jira/browse/HDFS-15604) | Fix Typo for HdfsDataNodeAdminGuide doc |  Trivial | documentation | Hui Fei | Hui Fei |
| [HDFS-15603](https://issues.apache.org/jira/browse/HDFS-15603) | RBF: Fix getLocationsForPath twice in create operation |  Major | . | wangzhaohui | wangzhaohui |
| [HADOOP-17284](https://issues.apache.org/jira/browse/HADOOP-17284) | Support BCFKS keystores for Hadoop Credential Provider |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [HADOOP-17280](https://issues.apache.org/jira/browse/HADOOP-17280) | Service-user cost shouldn't be accumulated to totalDecayedCallCost and totalRawCallCost. |  Major | . | Jinglun | Jinglun |
| [HDFS-15415](https://issues.apache.org/jira/browse/HDFS-15415) | Reduce locking in Datanode DirectoryScanner |  Major | datanode | Stephen O'Donnell | Stephen O'Donnell |
| [HADOOP-17287](https://issues.apache.org/jira/browse/HADOOP-17287) | Support new Instance by non default constructor by ReflectionUtils |  Major | . | Baolong Mao | Baolong Mao |
| [HADOOP-17276](https://issues.apache.org/jira/browse/HADOOP-17276) | Extend CallerContext to make it include many items |  Major | . | Hui Fei | Hui Fei |
| [YARN-10451](https://issues.apache.org/jira/browse/YARN-10451) | RM (v1) UI NodesPage can NPE when yarn.io/gpu resource type is defined. |  Major | . | Eric Payne | Eric Payne |
| [MAPREDUCE-7301](https://issues.apache.org/jira/browse/MAPREDUCE-7301) | Expose Mini MR Cluster attribute for testing |  Minor | test | Swaroopa Kadam | Swaroopa Kadam |
| [HDFS-15567](https://issues.apache.org/jira/browse/HDFS-15567) | [SBN Read] HDFS should expose msync() API to allow downstream applications call it explicitly. |  Major | ha, hdfs-client | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-16878](https://issues.apache.org/jira/browse/HADOOP-16878) | FileUtil.copy() to throw IOException if the source and destination are the same |  Major | . | Gabor Bota | Gabor Bota |
| [HADOOP-17304](https://issues.apache.org/jira/browse/HADOOP-17304) | KMS ACL: Allow DeleteKey Operation to Invalidate Cache |  Major | . | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-15633](https://issues.apache.org/jira/browse/HDFS-15633) | Avoid redundant RPC calls for getDiskStatus |  Major | dfsclient | Ayush Saxena | Ayush Saxena |
| [YARN-10450](https://issues.apache.org/jira/browse/YARN-10450) | Add cpu and memory utilization per node and cluster-wide metrics |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HADOOP-17144](https://issues.apache.org/jira/browse/HADOOP-17144) | Update Hadoop's lz4 to v1.9.2 |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15629](https://issues.apache.org/jira/browse/HDFS-15629) | Add seqno when warning slow mirror/disk in BlockReceiver |  Major | . | Haibin Huang | Haibin Huang |
| [HDFS-15652](https://issues.apache.org/jira/browse/HDFS-15652) | Make block size from NNThroughputBenchmark configurable |  Minor | benchmarks | Hui Fei | Hui Fei |
| [YARN-10475](https://issues.apache.org/jira/browse/YARN-10475) | Scale RM-NM heartbeat interval based on node utilization |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15665](https://issues.apache.org/jira/browse/HDFS-15665) | Balancer logging improvement |  Major | balancer & mover | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-17342](https://issues.apache.org/jira/browse/HADOOP-17342) | Creating a token identifier should not do kerberos name resolution |  Major | common | Jim Brennan | Jim Brennan |
| [YARN-10479](https://issues.apache.org/jira/browse/YARN-10479) | RMProxy should retry on SocketTimeout Exceptions |  Major | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15623](https://issues.apache.org/jira/browse/HDFS-15623) | Respect configured values of rpc.engine |  Major | hdfs | Hector Sandoval Chaverri | Hector Sandoval Chaverri |
| [HDFS-15668](https://issues.apache.org/jira/browse/HDFS-15668) | RBF: Fix RouterRPCMetrics annocation and document misplaced error |  Minor | documentation | Hongbing Wang | Hongbing Wang |
| [HADOOP-17369](https://issues.apache.org/jira/browse/HADOOP-17369) | Bump up snappy-java to 1.1.8.1 |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-10480](https://issues.apache.org/jira/browse/YARN-10480) | replace href tags with ng-href |  Trivial | . | Gabriel Medeiros Coelho | Gabriel Medeiros Coelho |
| [HDFS-15608](https://issues.apache.org/jira/browse/HDFS-15608) | Rename variable DistCp#CLEANUP |  Trivial | distcp | JiangHua Zhu | JiangHua Zhu |
| [HDFS-15469](https://issues.apache.org/jira/browse/HDFS-15469) | Dynamically configure the size of PacketReceiver#MAX\_PACKET\_SIZE |  Major | . | JiangHua Zhu | JiangHua Zhu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-15146](https://issues.apache.org/jira/browse/HDFS-15146) | TestBalancerRPCDelay.testBalancerRPCDelay fails intermittently |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15196](https://issues.apache.org/jira/browse/HDFS-15196) | RBF: RouterRpcServer getListing cannot list large dirs correctly |  Critical | . | Fengnan Li | Fengnan Li |
| [HDFS-15252](https://issues.apache.org/jira/browse/HDFS-15252) | HttpFS: setWorkingDirectory should not accept invalid paths |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15256](https://issues.apache.org/jira/browse/HDFS-15256) | Fix typo in DataXceiverServer#run() |  Trivial | . | Lisheng Sun | Lisheng Sun |
| [HDFS-15249](https://issues.apache.org/jira/browse/HDFS-15249) | ThrottledAsyncChecker is not thread-safe. |  Major | federation | Toshihiro Suzuki | Toshihiro Suzuki |
| [HDFS-15263](https://issues.apache.org/jira/browse/HDFS-15263) | Fix the logic of scope and excluded scope in Network Topology |  Major | . | Ayush Saxena | Ayush Saxena |
| [YARN-10207](https://issues.apache.org/jira/browse/YARN-10207) | CLOSE\_WAIT socket connection leaks during rendering of (corrupted) aggregated logs on the JobHistoryServer Web UI |  Major | yarn | Siddharth Ahuja | Siddharth Ahuja |
| [YARN-10226](https://issues.apache.org/jira/browse/YARN-10226) | NPE in Capacity Scheduler while using %primary\_group queue mapping |  Critical | capacity scheduler | Peter Bacsko | Peter Bacsko |
| [HDFS-15269](https://issues.apache.org/jira/browse/HDFS-15269) | NameNode should check the authorization API version only once during initialization |  Blocker | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-16962](https://issues.apache.org/jira/browse/HADOOP-16962) | Making \`getBoolean\` log warning message for unrecognized value |  Major | conf | Ctest | Ctest |
| [HADOOP-16967](https://issues.apache.org/jira/browse/HADOOP-16967) | TestSequenceFile#testRecursiveSeqFileCreate fails in subsequent run |  Minor | common, test | Ctest | Ctest |
| [MAPREDUCE-7272](https://issues.apache.org/jira/browse/MAPREDUCE-7272) | TaskAttemptListenerImpl excessive log messages |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-16958](https://issues.apache.org/jira/browse/HADOOP-16958) | NPE when hadoop.security.authorization is enabled but the input PolicyProvider for ZKFCRpcServer is NULL |  Critical | common, ha | Ctest | Ctest |
| [YARN-10219](https://issues.apache.org/jira/browse/YARN-10219) | YARN service placement constraints is broken |  Blocker | . | Eric Yang | Eric Yang |
| [YARN-10233](https://issues.apache.org/jira/browse/YARN-10233) | [YARN UI2] No Logs were found in "YARN Daemon Logs" page |  Blocker | yarn-ui-v2 | Akhil PB | Akhil PB |
| [MAPREDUCE-7273](https://issues.apache.org/jira/browse/MAPREDUCE-7273) | JHS: make sure that Kerberos relogin is performed when KDC becomes offline then online again |  Major | jobhistoryserver | Peter Bacsko | Peter Bacsko |
| [HDFS-15266](https://issues.apache.org/jira/browse/HDFS-15266) | Add missing DFSOps Statistics in WebHDFS |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15218](https://issues.apache.org/jira/browse/HDFS-15218) | RBF: MountTableRefresherService failed to refresh other router MountTableEntries in secure mode. |  Major | rbf | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HADOOP-16971](https://issues.apache.org/jira/browse/HADOOP-16971) | TestFileContextResolveAfs#testFileContextResolveAfs creates dangling link and fails for subsequent runs |  Minor | common, fs, test | Ctest | Ctest |
| [HDFS-15275](https://issues.apache.org/jira/browse/HDFS-15275) | HttpFS: Response of Create was not correct with noredirect and data are true |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15276](https://issues.apache.org/jira/browse/HDFS-15276) | Concat on INodeRefernce fails with illegal state exception |  Critical | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15281](https://issues.apache.org/jira/browse/HDFS-15281) | ZKFC ignores dfs.namenode.rpc-bind-host and uses dfs.namenode.rpc-address to bind to host address |  Major | ha, namenode | Dhiraj Hegde | Dhiraj Hegde |
| [HDFS-15297](https://issues.apache.org/jira/browse/HDFS-15297) | TestNNHandlesBlockReportPerStorage::blockReport\_02 fails intermittently in trunk |  Major | datanode, test | Mingliang Liu | Ayush Saxena |
| [HDFS-15298](https://issues.apache.org/jira/browse/HDFS-15298) | Fix the findbugs warnings introduced in HDFS-15217 |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HDFS-15301](https://issues.apache.org/jira/browse/HDFS-15301) | statfs function in hdfs-fuse is not working |  Major | fuse-dfs, libhdfs | Aryan Gupta | Aryan Gupta |
| [HDFS-15210](https://issues.apache.org/jira/browse/HDFS-15210) | EC : File write hanged when DN is shutdown by admin command. |  Major | ec | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-15285](https://issues.apache.org/jira/browse/HDFS-15285) | The same distance and load nodes don't shuffle when consider DataNode load |  Major | . | Lisheng Sun | Lisheng Sun |
| [HDFS-15265](https://issues.apache.org/jira/browse/HDFS-15265) | HttpFS: validate content-type in HttpFSUtils |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15309](https://issues.apache.org/jira/browse/HDFS-15309) | Remove redundant String.valueOf method on ExtendedBlockId.java |  Trivial | hdfs-client | bianqi | bianqi |
| [HADOOP-16957](https://issues.apache.org/jira/browse/HADOOP-16957) | NodeBase.normalize doesn't removing all trailing slashes. |  Major | . | Ayush Saxena | Ayush Saxena |
| [HADOOP-17011](https://issues.apache.org/jira/browse/HADOOP-17011) | Tolerate leading and trailing spaces in fs.defaultFS |  Major | common | Ctest | Ctest |
| [HDFS-15320](https://issues.apache.org/jira/browse/HDFS-15320) | StringIndexOutOfBoundsException in HostRestrictingAuthorizationFilter |  Major | webhdfs | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15325](https://issues.apache.org/jira/browse/HDFS-15325) | TestRefreshCallQueue is failing due to changed CallQueue constructor |  Major | test | Konstantin Shvachko | Fengnan Li |
| [YARN-10256](https://issues.apache.org/jira/browse/YARN-10256) | Refactor TestContainerSchedulerQueuing.testContainerUpdateExecTypeGuaranteedToOpportunistic |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15270](https://issues.apache.org/jira/browse/HDFS-15270) | Account for \*env == NULL in hdfsThreadDestructor |  Major | . | Babneet Singh | Babneet Singh |
| [HDFS-15331](https://issues.apache.org/jira/browse/HDFS-15331) | Remove invalid exclusions that minicluster dependency on HDFS |  Major | . | Wanqiang Ji | Wanqiang Ji |
| [YARN-8959](https://issues.apache.org/jira/browse/YARN-8959) | TestContainerResizing fails randomly |  Minor | . | Bibin Chundatt | Ahmed Hussein |
| [HDFS-15332](https://issues.apache.org/jira/browse/HDFS-15332) | Quota Space consumed was wrong in truncate with Snapshots |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [YARN-9017](https://issues.apache.org/jira/browse/YARN-9017) | PlacementRule order is not maintained in CS |  Major | . | Bibin Chundatt | Bilwa S T |
| [HDFS-15323](https://issues.apache.org/jira/browse/HDFS-15323) | StandbyNode fails transition to active due to insufficient transaction tailing |  Major | namenode, qjm | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-17025](https://issues.apache.org/jira/browse/HADOOP-17025) | Fix invalid metastore configuration in S3GuardTool tests |  Minor | fs/s3, test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-15339](https://issues.apache.org/jira/browse/HDFS-15339) | TestHDFSCLI fails for user names with the dot/dash character |  Major | test | Yan Xiaole | Yan Xiaole |
| [HDFS-15250](https://issues.apache.org/jira/browse/HDFS-15250) | Setting \`dfs.client.use.datanode.hostname\` to true can crash the system because of unhandled UnresolvedAddressException |  Major | . | Ctest | Ctest |
| [HADOOP-16768](https://issues.apache.org/jira/browse/HADOOP-16768) | SnappyCompressor test cases wrongly assume that the compressed data is always smaller than the input data |  Major | io, test | zhao bo | Akira Ajisaka |
| [HDFS-15243](https://issues.apache.org/jira/browse/HDFS-15243) | Add an option to prevent sub-directories of protected directories from deletion |  Major | 3.1.1 | liuyanyu | liuyanyu |
| [HDFS-14367](https://issues.apache.org/jira/browse/HDFS-14367) | EC: Parameter maxPoolSize in striped reconstruct thread pool isn't affecting number of threads |  Major | ec | Guo Lei | Guo Lei |
| [YARN-9301](https://issues.apache.org/jira/browse/YARN-9301) | Too many InvalidStateTransitionException with SLS |  Major | . | Bibin Chundatt | Bilwa S T |
| [HADOOP-17035](https://issues.apache.org/jira/browse/HADOOP-17035) | Trivial typo(s) which are 'timout', 'interruped' in comment, LOG and documents |  Trivial | . | Sungpeo Kook | Sungpeo Kook |
| [HDFS-15300](https://issues.apache.org/jira/browse/HDFS-15300) | RBF: updateActiveNamenode() is invalid when RPC address is IP |  Major | . | xuzq | xuzq |
| [HADOOP-15524](https://issues.apache.org/jira/browse/HADOOP-15524) | BytesWritable causes OOME when array size reaches Integer.MAX\_VALUE |  Major | io | Joseph Smith | Joseph Smith |
| [YARN-10154](https://issues.apache.org/jira/browse/YARN-10154) | CS Dynamic Queues cannot be configured with absolute resources |  Major | . | Sunil G | Manikandan R |
| [HDFS-15316](https://issues.apache.org/jira/browse/HDFS-15316) | Deletion failure should not remove directory from snapshottables |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [YARN-8942](https://issues.apache.org/jira/browse/YARN-8942) | PriorityBasedRouterPolicy throws exception if all sub-cluster weights have negative value |  Minor | . | Akshay Agarwal | Bilwa S T |
| [YARN-9898](https://issues.apache.org/jira/browse/YARN-9898) | Dependency netty-all-4.1.27.Final doesn't support ARM platform |  Major | . | liusheng | liusheng |
| [YARN-10265](https://issues.apache.org/jira/browse/YARN-10265) | Upgrade Netty-all dependency to latest version 4.1.50 to fix ARM support issue |  Major | . | liusheng | liusheng |
| [YARN-9444](https://issues.apache.org/jira/browse/YARN-9444) | YARN API ResourceUtils's getRequestedResourcesFromConfig doesn't recognize yarn.io/gpu as a valid resource |  Minor | api | Gergely Pollak | Gergely Pollak |
| [HDFS-15293](https://issues.apache.org/jira/browse/HDFS-15293) | Relax the condition for accepting a fsimage when receiving a checkpoint |  Critical | namenode | Chen Liang | Chen Liang |
| [HADOOP-17024](https://issues.apache.org/jira/browse/HADOOP-17024) | ListStatus on ViewFS root (ls "/") should list the linkFallBack root (configured target root). |  Major | fs, viewfs | Uma Maheswara Rao G | Abhishek Das |
| [MAPREDUCE-6826](https://issues.apache.org/jira/browse/MAPREDUCE-6826) | Job fails with InvalidStateTransitonException: Invalid event: JOB\_TASK\_COMPLETED at SUCCEEDED/COMMITTING |  Major | . | Varun Saxena | Bilwa S T |
| [HADOOP-16586](https://issues.apache.org/jira/browse/HADOOP-16586) | ITestS3GuardFsck, others fails when run using a local metastore |  Major | fs/s3 | Siddharth Seth | Masatake Iwasaki |
| [YARN-9606](https://issues.apache.org/jira/browse/YARN-9606) | Set sslfactory for AuthenticatedURL() while creating LogsCLI#webServiceClient |  Major | . | Bilwa S T | Bilwa S T |
| [HADOOP-16900](https://issues.apache.org/jira/browse/HADOOP-16900) | Very large files can be truncated when written through S3AFileSystem |  Major | fs/s3 | Andrew Olson | Mukund Thakur |
| [YARN-10228](https://issues.apache.org/jira/browse/YARN-10228) | Yarn Service fails if am java opts contains ZK authentication file path |  Major | . | Bilwa S T | Bilwa S T |
| [HADOOP-17049](https://issues.apache.org/jira/browse/HADOOP-17049) | javax.activation-api and jakarta.activation-api define overlapping classes |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17040](https://issues.apache.org/jira/browse/HADOOP-17040) | Fix intermittent failure of ITestBlockingThreadPoolExecutorService |  Minor | fs/s3, test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-15363](https://issues.apache.org/jira/browse/HDFS-15363) | BlockPlacementPolicyWithNodeGroup should validate if it is initialized by NetworkTopologyWithNodeGroup |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15093](https://issues.apache.org/jira/browse/HDFS-15093) | RENAME.TO\_TRASH is ignored When RENAME.OVERWRITE is specified |  Major | . | Harshakiran Reddy | Ayush Saxena |
| [HDFS-12288](https://issues.apache.org/jira/browse/HDFS-12288) | Fix DataNode's xceiver count calculation |  Major | datanode, hdfs | Lukas Majercak | Lisheng Sun |
| [HDFS-15373](https://issues.apache.org/jira/browse/HDFS-15373) | Fix number of threads in IPCLoggerChannel#createParallelExecutor |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15362](https://issues.apache.org/jira/browse/HDFS-15362) | FileWithSnapshotFeature#updateQuotaAndCollectBlocks should collect all distinct blocks |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [MAPREDUCE-7278](https://issues.apache.org/jira/browse/MAPREDUCE-7278) | Speculative execution behavior is observed even when mapreduce.map.speculative and mapreduce.reduce.speculative are false |  Major | task | Tarun Parimi | Tarun Parimi |
| [HADOOP-7002](https://issues.apache.org/jira/browse/HADOOP-7002) | Wrong description of copyFromLocal and copyToLocal in documentation |  Minor | . | Jingguo Yao | Andras Bokor |
| [HADOOP-17052](https://issues.apache.org/jira/browse/HADOOP-17052) | NetUtils.connect() throws unchecked exception (UnresolvedAddressException) causing clients to abort |  Major | net | Dhiraj Hegde | Dhiraj Hegde |
| [YARN-10254](https://issues.apache.org/jira/browse/YARN-10254) | CapacityScheduler incorrect User Group Mapping after leaf queue change |  Major | . | Gergely Pollak | Gergely Pollak |
| [HDFS-11041](https://issues.apache.org/jira/browse/HDFS-11041) | Unable to unregister FsDatasetState MBean if DataNode is shutdown twice |  Trivial | datanode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-17062](https://issues.apache.org/jira/browse/HADOOP-17062) | Fix shelldocs path in Jenkinsfile |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17056](https://issues.apache.org/jira/browse/HADOOP-17056) | shelldoc fails in hadoop-common |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10286](https://issues.apache.org/jira/browse/YARN-10286) | PendingContainers bugs in the scheduler outputs |  Critical | . | Adam Antal | Andras Gyori |
| [HDFS-15396](https://issues.apache.org/jira/browse/HDFS-15396) | Fix TestViewFileSystemOverloadSchemeHdfsFileSystemContract#testListStatusRootDir |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15386](https://issues.apache.org/jira/browse/HDFS-15386) | ReplicaNotFoundException keeps happening in DN after removing multiple DN's data directories |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HDFS-15398](https://issues.apache.org/jira/browse/HDFS-15398) | EC: hdfs client hangs due to exception during addBlock |  Critical | ec, hdfs-client | Hongbing Wang | Hongbing Wang |
| [YARN-10300](https://issues.apache.org/jira/browse/YARN-10300) | appMasterHost not set in RM ApplicationSummary when AM fails before first heartbeat |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-17059](https://issues.apache.org/jira/browse/HADOOP-17059) | ArrayIndexOfboundsException in ViewFileSystem#listStatus |  Major | viewfs | Hemanth Boyina | Hemanth Boyina |
| [YARN-10296](https://issues.apache.org/jira/browse/YARN-10296) | Make ContainerPBImpl#getId/setId synchronized |  Minor | . | Benjamin Teke | Benjamin Teke |
| [HADOOP-17060](https://issues.apache.org/jira/browse/HADOOP-17060) | listStatus and getFileStatus behave inconsistent in the case of ViewFs implementation for isDirectory |  Major | viewfs | Srinivasu Majeti | Uma Maheswara Rao G |
| [HDFS-15351](https://issues.apache.org/jira/browse/HDFS-15351) | Blocks scheduled count was wrong on truncate |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15403](https://issues.apache.org/jira/browse/HDFS-15403) | NPE in FileIoProvider#transferToSocketFully |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15372](https://issues.apache.org/jira/browse/HDFS-15372) | Files in snapshots no longer see attribute provider permissions |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HADOOP-9851](https://issues.apache.org/jira/browse/HADOOP-9851) | dfs -chown does not like "+" plus sign in user name |  Minor | fs | Marc Villacorta | Andras Bokor |
| [YARN-10308](https://issues.apache.org/jira/browse/YARN-10308) | Update javadoc and variable names for keytab in yarn services as it supports filesystems other than hdfs and local file system |  Minor | . | Bilwa S T | Bilwa S T |
| [MAPREDUCE-7281](https://issues.apache.org/jira/browse/MAPREDUCE-7281) | Fix NoClassDefFoundError on 'mapred minicluster' |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-17029](https://issues.apache.org/jira/browse/HADOOP-17029) | ViewFS does not return correct user/group and ACL |  Major | fs, viewfs | Abhishek Das | Abhishek Das |
| [HDFS-14546](https://issues.apache.org/jira/browse/HDFS-14546) | Document block placement policies |  Major | . | Íñigo Goiri | Amithsha |
| [HADOOP-17068](https://issues.apache.org/jira/browse/HADOOP-17068) | client fails forever when namenode ipaddr changed |  Major | hdfs-client | Sean Chow | Sean Chow |
| [HDFS-15378](https://issues.apache.org/jira/browse/HDFS-15378) | TestReconstructStripedFile#testErasureCodingWorkerXmitsWeight is failing on trunk |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [YARN-10328](https://issues.apache.org/jira/browse/YARN-10328) | Too many ZK Curator NodeExists exception logs in YARN Service AM logs |  Major | . | Bilwa S T | Bilwa S T |
| [YARN-9903](https://issues.apache.org/jira/browse/YARN-9903) | Support reservations continue looking for Node Labels |  Major | . | Tarun Parimi | Jim Brennan |
| [YARN-10331](https://issues.apache.org/jira/browse/YARN-10331) | Upgrade node.js to 10.21.0 |  Critical | build, yarn-ui-v2 | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17032](https://issues.apache.org/jira/browse/HADOOP-17032) | Handle an internal dir in viewfs having multiple children mount points pointing to different filesystems |  Major | fs, viewfs | Abhishek Das | Abhishek Das |
| [YARN-10318](https://issues.apache.org/jira/browse/YARN-10318) | ApplicationHistory Web UI incorrect column indexing |  Minor | yarn | Andras Gyori | Andras Gyori |
| [YARN-10330](https://issues.apache.org/jira/browse/YARN-10330) | Add missing test scenarios to TestUserGroupMappingPlacementRule and TestAppNameMappingPlacementRule |  Major | capacity scheduler, capacityscheduler, test | Peter Bacsko | Peter Bacsko |
| [HDFS-15446](https://issues.apache.org/jira/browse/HDFS-15446) | CreateSnapshotOp fails during edit log loading for /.reserved/raw/path with error java.io.FileNotFoundException: Directory does not exist: /.reserved/raw/path |  Major | hdfs | Srinivasu Majeti | Stephen O'Donnell |
| [HDFS-15451](https://issues.apache.org/jira/browse/HDFS-15451) | Restarting name node stuck in safe mode when using provided storage |  Major | namenode | shanyu zhao | shanyu zhao |
| [HADOOP-17117](https://issues.apache.org/jira/browse/HADOOP-17117) | Fix typos in hadoop-aws documentation |  Trivial | documentation, fs/s3 | Sebastian Nagel | Sebastian Nagel |
| [YARN-10344](https://issues.apache.org/jira/browse/YARN-10344) | Sync netty versions in hadoop-yarn-csi |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10341](https://issues.apache.org/jira/browse/YARN-10341) | Yarn Service Container Completed event doesn't get processed |  Critical | . | Bilwa S T | Bilwa S T |
| [HADOOP-17116](https://issues.apache.org/jira/browse/HADOOP-17116) | Skip Retry INFO logging on first failover from a proxy |  Major | ha | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-16998](https://issues.apache.org/jira/browse/HADOOP-16998) | WASB : NativeAzureFsOutputStream#close() throwing IllegalArgumentException |  Major | fs/azure | Anoop Sam John | Anoop Sam John |
| [YARN-10348](https://issues.apache.org/jira/browse/YARN-10348) | Allow RM to always cancel tokens after app completes |  Major | yarn | Jim Brennan | Jim Brennan |
| [MAPREDUCE-7284](https://issues.apache.org/jira/browse/MAPREDUCE-7284) | TestCombineFileInputFormat#testMissingBlocks fails |  Major | test | Akira Ajisaka | Akira Ajisaka |
| [YARN-10350](https://issues.apache.org/jira/browse/YARN-10350) | TestUserGroupMappingPlacementRule fails |  Major | test | Akira Ajisaka | Bilwa S T |
| [MAPREDUCE-7285](https://issues.apache.org/jira/browse/MAPREDUCE-7285) | Junit class missing from hadoop-mapreduce-client-jobclient-\*-tests jar |  Major | . | Eric Badger | Masatake Iwasaki |
| [HDFS-14498](https://issues.apache.org/jira/browse/HDFS-14498) | LeaseManager can loop forever on the file for which create has failed |  Major | namenode | Sergey Shelukhin | Stephen O'Donnell |
| [YARN-10339](https://issues.apache.org/jira/browse/YARN-10339) | Timeline Client in Nodemanager gets 403 errors when simple auth is used in kerberos environments |  Major | timelineclient | Tarun Parimi | Tarun Parimi |
| [HDFS-15198](https://issues.apache.org/jira/browse/HDFS-15198) | RBF: Add test for MountTableRefresherService failed to refresh other router MountTableEntries in secure mode |  Major | rbf | zhengchenyu | zhengchenyu |
| [HADOOP-17119](https://issues.apache.org/jira/browse/HADOOP-17119) | Jetty upgrade to 9.4.x causes MR app fail with IOException |  Major | . | Bilwa S T | Bilwa S T |
| [HDFS-15246](https://issues.apache.org/jira/browse/HDFS-15246) | ArrayIndexOfboundsException in BlockManager CreateLocatedBlock |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-17138](https://issues.apache.org/jira/browse/HADOOP-17138) | Fix spotbugs warnings surfaced after upgrade to 4.0.6 |  Minor | . | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-4771](https://issues.apache.org/jira/browse/YARN-4771) | Some containers can be skipped during log aggregation after NM restart |  Major | nodemanager | Jason Darrell Lowe | Jim Brennan |
| [HADOOP-17153](https://issues.apache.org/jira/browse/HADOOP-17153) | Add boost installation steps to build instruction on CentOS 8 |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-10367](https://issues.apache.org/jira/browse/YARN-10367) | Failed to get nodejs 10.21.0 when building docker image |  Blocker | build, webapp | Akira Ajisaka | Akira Ajisaka |
| [YARN-10362](https://issues.apache.org/jira/browse/YARN-10362) | Javadoc for TimelineReaderAuthenticationFilterInitializer is broken |  Minor | documentation | Xieming Li | Xieming Li |
| [YARN-10366](https://issues.apache.org/jira/browse/YARN-10366) | Yarn rmadmin help message shows two labels for one node for --replaceLabelsOnNode |  Major | yarn | Tanu Ajmera | Tanu Ajmera |
| [MAPREDUCE-7051](https://issues.apache.org/jira/browse/MAPREDUCE-7051) | Fix typo in MultipleOutputFormat |  Trivial | . | ywheel | ywheel |
| [HDFS-15313](https://issues.apache.org/jira/browse/HDFS-15313) | Ensure inodes in active filesystem are not deleted during snapshot delete |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HDFS-14950](https://issues.apache.org/jira/browse/HDFS-14950) | missing libhdfspp libs in dist-package |  Major | build, libhdfs++ | Yuan Zhou | Yuan Zhou |
| [YARN-10359](https://issues.apache.org/jira/browse/YARN-10359) | Log container report only if list is not empty |  Minor | . | Bilwa S T | Bilwa S T |
| [HDFS-15229](https://issues.apache.org/jira/browse/HDFS-15229) |  Truncate info should be logged at INFO level |  Major | . | Ravuri Sushma sree | Ravuri Sushma sree |
| [YARN-10229](https://issues.apache.org/jira/browse/YARN-10229) | [Federation] Client should be able to submit application to RM directly using normal client conf |  Major | amrmproxy, federation | JohnsonGuo | Bilwa S T |
| [HDFS-15503](https://issues.apache.org/jira/browse/HDFS-15503) | File and directory permissions are not able to be modified from WebUI |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [YARN-10383](https://issues.apache.org/jira/browse/YARN-10383) | YarnCommands.md is inconsistent with the source code |  Minor | documentation | zhaoshengjie | zhaoshengjie |
| [YARN-10377](https://issues.apache.org/jira/browse/YARN-10377) | Clicking on queue in Capacity Scheduler legacy ui does not show any applications |  Major | . | Tarun Parimi | Tarun Parimi |
| [HADOOP-17184](https://issues.apache.org/jira/browse/HADOOP-17184) | Add --mvn-custom-repos parameter to yetus calls |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-15499](https://issues.apache.org/jira/browse/HDFS-15499) | Clean up httpfs/pom.xml to remove aws-java-sdk-s3 exclusion |  Major | httpfs | Mingliang Liu | Mingliang Liu |
| [HADOOP-17186](https://issues.apache.org/jira/browse/HADOOP-17186) | Fixing javadoc in ListingOperationCallbacks |  Major | build, documentation | Akira Ajisaka | Mukund Thakur |
| [HADOOP-17164](https://issues.apache.org/jira/browse/HADOOP-17164) | UGI loginUserFromKeytab doesn't set the last login time |  Major | security | Sandeep Guggilam | Sandeep Guggilam |
| [YARN-4575](https://issues.apache.org/jira/browse/YARN-4575) | ApplicationResourceUsageReport should return ALL  reserved resource |  Major | . | Bibin Chundatt | Bibin Chundatt |
| [YARN-10388](https://issues.apache.org/jira/browse/YARN-10388) | RMNode updatedCapability flag not set while RecommissionNodeTransition |  Major | resourcemanager | Pranjal Protim Borah | Pranjal Protim Borah |
| [HADOOP-17182](https://issues.apache.org/jira/browse/HADOOP-17182) | Dead links in breadcrumbs |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15443](https://issues.apache.org/jira/browse/HDFS-15443) | Setting dfs.datanode.max.transfer.threads to a very small value can cause strange failure. |  Major | datanode | AMC-team | AMC-team |
| [YARN-10364](https://issues.apache.org/jira/browse/YARN-10364) | Absolute Resource [memory=0] is considered as Percentage config type |  Major | . | Prabhu Joseph | Bilwa S T |
| [HDFS-15508](https://issues.apache.org/jira/browse/HDFS-15508) | [JDK 11] Fix javadoc errors in hadoop-hdfs-rbf module |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15506](https://issues.apache.org/jira/browse/HDFS-15506) | [JDK 11] Fix javadoc errors in hadoop-hdfs module |  Major | documentation | Akira Ajisaka | Xieming Li |
| [HDFS-15507](https://issues.apache.org/jira/browse/HDFS-15507) | [JDK 11] Fix javadoc errors in hadoop-hdfs-client module |  Major | documentation | Akira Ajisaka | Xieming Li |
| [HADOOP-17196](https://issues.apache.org/jira/browse/HADOOP-17196) | Fix C/C++ standard warnings |  Major | build | Gautham Banasandra | Gautham Banasandra |
| [HDFS-15523](https://issues.apache.org/jira/browse/HDFS-15523) | Fix the findbugs warnings from HDFS-15520 |  Major | namenode | Tsz-wo Sze | Tsz-wo Sze |
| [HADOOP-17204](https://issues.apache.org/jira/browse/HADOOP-17204) | Fix typo in Hadoop KMS document |  Trivial | documentation, kms | Akira Ajisaka | Xieming Li |
| [YARN-10336](https://issues.apache.org/jira/browse/YARN-10336) | RM page should throw exception when command injected in RM REST API to get applications |  Major | . | Rajshree Mishra | Bilwa S T |
| [HDFS-15439](https://issues.apache.org/jira/browse/HDFS-15439) | Setting dfs.mover.retry.max.attempts to negative value will retry forever. |  Major | balancer & mover | AMC-team | AMC-team |
| [YARN-10391](https://issues.apache.org/jira/browse/YARN-10391) | --module-gpu functionality is broken in container-executor |  Major | nodemanager | Eric Badger | Eric Badger |
| [HDFS-15535](https://issues.apache.org/jira/browse/HDFS-15535) | RBF: Fix Namespace path to snapshot path resolution for snapshot API |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-14504](https://issues.apache.org/jira/browse/HDFS-14504) | Rename with Snapshots does not honor quota limit |  Major | . | Shashikant Banerjee | Hemanth Boyina |
| [HADOOP-17209](https://issues.apache.org/jira/browse/HADOOP-17209) | Erasure Coding: Native library memory leak |  Major | native | Sean Chow | Sean Chow |
| [HADOOP-17220](https://issues.apache.org/jira/browse/HADOOP-17220) | Upgrade slf4j to 1.7.30 ( To Address: CVE-2018-8088) |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-14852](https://issues.apache.org/jira/browse/HDFS-14852) | Removing from LowRedundancyBlocks does not remove the block from all queues |  Major | namenode | Hui Fei | Hui Fei |
| [HDFS-15536](https://issues.apache.org/jira/browse/HDFS-15536) | RBF:  Clear Quota in Router was not consistent |  Critical | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15510](https://issues.apache.org/jira/browse/HDFS-15510) | RBF: Quota and Content Summary was not correct in Multiple Destinations |  Critical | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15540](https://issues.apache.org/jira/browse/HDFS-15540) | Directories protected from delete can still be moved to the trash |  Major | namenode | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-15471](https://issues.apache.org/jira/browse/HDFS-15471) | TestHDFSContractMultipartUploader fails on trunk |  Major | test | Ahmed Hussein | Steve Loughran |
| [HDFS-15290](https://issues.apache.org/jira/browse/HDFS-15290) | NPE in HttpServer during NameNode startup |  Major | namenode | Konstantin Shvachko | Simbarashe Dzinamarira |
| [HADOOP-17240](https://issues.apache.org/jira/browse/HADOOP-17240) | Fix wrong command line for setting up CentOS 8 |  Minor | documentation | Masatake Iwasaki | Takeru Kuramoto |
| [YARN-10419](https://issues.apache.org/jira/browse/YARN-10419) | Javadoc error in hadoop-yarn-server-common module |  Major | build, documentation | Akira Ajisaka | Masatake Iwasaki |
| [YARN-10416](https://issues.apache.org/jira/browse/YARN-10416) | Typos in YarnScheduler#allocate method's doc comment |  Minor | docs | Wanqiang Ji | Siddharth Ahuja |
| [HADOOP-17245](https://issues.apache.org/jira/browse/HADOOP-17245) | Add RootedOzFS AbstractFileSystem to core-default.xml |  Major | . | Bharat Viswanadham | Bharat Viswanadham |
| [HADOOP-17158](https://issues.apache.org/jira/browse/HADOOP-17158) | Test timeout for ITestAbfsInputStreamStatistics#testReadAheadCounters |  Major | fs/azure | Mehakmeet Singh | Mehakmeet Singh |
| [YARN-10397](https://issues.apache.org/jira/browse/YARN-10397) | SchedulerRequest should be forwarded to scheduler if custom scheduler supports placement constraints |  Minor | . | Bilwa S T | Bilwa S T |
| [HDFS-15573](https://issues.apache.org/jira/browse/HDFS-15573) | Only log warning if considerLoad and considerStorageType are both true |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HADOOP-17262](https://issues.apache.org/jira/browse/HADOOP-17262) | Switch to Yetus main branch |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17246](https://issues.apache.org/jira/browse/HADOOP-17246) | Fix build the hadoop-build Docker image failed |  Major | build | Wanqiang Ji | Wanqiang Ji |
| [HDFS-15438](https://issues.apache.org/jira/browse/HDFS-15438) | Setting dfs.disk.balancer.max.disk.errors = 0 will fail the block copy |  Major | balancer & mover | AMC-team | AMC-team |
| [HADOOP-17203](https://issues.apache.org/jira/browse/HADOOP-17203) | Test failures in ITestAzureBlobFileSystemCheckAccess in ABFS |  Major | fs/azure | Mehakmeet Singh | Thomas Marqardt |
| [MAPREDUCE-7294](https://issues.apache.org/jira/browse/MAPREDUCE-7294) | Only application master should upload resource to Yarn Shared Cache |  Major | mrv2 | zhenzhao wang | zhenzhao wang |
| [HADOOP-17277](https://issues.apache.org/jira/browse/HADOOP-17277) | Correct spelling errors for separator |  Trivial | common | Hui Fei | Hui Fei |
| [YARN-10443](https://issues.apache.org/jira/browse/YARN-10443) | Document options of logs CLI |  Major | yarn | Adam Antal | Ankit Kumar |
| [YARN-10438](https://issues.apache.org/jira/browse/YARN-10438) | Handle null containerId in ClientRMService#getContainerReport() |  Major | resourcemanager | Raghvendra Singh | Shubham Gupta |
| [HADOOP-17286](https://issues.apache.org/jira/browse/HADOOP-17286) | Upgrade to jQuery 3.5.1 in hadoop-yarn-common |  Major | . | Wei-Chiu Chuang | Aryan Gupta |
| [HDFS-15591](https://issues.apache.org/jira/browse/HDFS-15591) | RBF: Fix webHdfs file display error |  Major | . | wangzhaohui | wangzhaohui |
| [MAPREDUCE-7289](https://issues.apache.org/jira/browse/MAPREDUCE-7289) | Fix wrong comment in LongLong.java |  Trivial | documentation, examples | Akira Ajisaka | Wanqiang Ji |
| [HDFS-15600](https://issues.apache.org/jira/browse/HDFS-15600) | TestRouterQuota fails in trunk |  Major | rbf | Ayush Saxena | huangtianhua |
| [YARN-9809](https://issues.apache.org/jira/browse/YARN-9809) | NMs should supply a health status when registering with RM |  Major | . | Eric Badger | Eric Badger |
| [YARN-10447](https://issues.apache.org/jira/browse/YARN-10447) | TestLeafQueue: ActivitiesManager thread might interfere with ongoing stubbing |  Major | test | Peter Bacsko | Peter Bacsko |
| [HADOOP-17297](https://issues.apache.org/jira/browse/HADOOP-17297) | Use Yetus before YETUS-994 to enable adding comments to GitHub |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15458](https://issues.apache.org/jira/browse/HDFS-15458) | TestNameNodeRetryCacheMetrics fails intermittently |  Major | hdfs, namenode | Ahmed Hussein | Hui Fei |
| [HADOOP-17294](https://issues.apache.org/jira/browse/HADOOP-17294) | Fix typos existance to existence |  Trivial | . | Ikko Ashimine | Ikko Ashimine |
| [HDFS-15543](https://issues.apache.org/jira/browse/HDFS-15543) | RBF: Write Should allow, when a subcluster is unavailable for RANDOM mount points with fault Tolerance enabled. |  Major | rbf | Harshakiran Reddy | Hemanth Boyina |
| [YARN-10393](https://issues.apache.org/jira/browse/YARN-10393) | MR job live lock caused by completed state container leak in heartbeat between node manager and RM |  Major | nodemanager, yarn | zhenzhao wang | Jim Brennan |
| [HDFS-15253](https://issues.apache.org/jira/browse/HDFS-15253) | Set default throttle value on dfs.image.transfer.bandwidthPerSec |  Major | namenode | Karthik Palanisamy | Karthik Palanisamy |
| [HDFS-15610](https://issues.apache.org/jira/browse/HDFS-15610) | Reduce datanode upgrade/hardlink thread |  Major | datanode | Karthik Palanisamy | Karthik Palanisamy |
| [YARN-10455](https://issues.apache.org/jira/browse/YARN-10455) | TestNMProxy.testNMProxyRPCRetry is not consistent |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15456](https://issues.apache.org/jira/browse/HDFS-15456) | TestExternalStoragePolicySatisfier fails intermittently |  Major | . | Ahmed Hussein | Leon Gao |
| [HADOOP-17223](https://issues.apache.org/jira/browse/HADOOP-17223) | update  org.apache.httpcomponents:httpclient to 4.5.13 and httpcore to 4.4.13 |  Blocker | . | Pranav Bheda | Pranav Bheda |
| [YARN-10448](https://issues.apache.org/jira/browse/YARN-10448) | SLS should set default user to handle SYNTH format |  Major | scheduler-load-simulator | zhuqi | zhuqi |
| [HDFS-15628](https://issues.apache.org/jira/browse/HDFS-15628) | HttpFS server throws NPE if a file is a symlink |  Major | fs, httpfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15627](https://issues.apache.org/jira/browse/HDFS-15627) | Audit log deletes before collecting blocks |  Major | logging, namenode | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17309](https://issues.apache.org/jira/browse/HADOOP-17309) | Javadoc warnings and errors are ignored in the precommit jobs |  Major | build, documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-14383](https://issues.apache.org/jira/browse/HDFS-14383) | Compute datanode load based on StoragePolicy |  Major | hdfs, namenode | Karthik Palanisamy | Ayush Saxena |
| [HADOOP-17310](https://issues.apache.org/jira/browse/HADOOP-17310) | Touch command with -c  option is broken |  Major | . | Ayush Saxena | Ayush Saxena |
| [YARN-10460](https://issues.apache.org/jira/browse/YARN-10460) | Upgrading to JUnit 4.13 causes tests in TestNodeStatusUpdater to fail |  Major | nodemanager, test | Peter Bacsko | Peter Bacsko |
| [HADOOP-17298](https://issues.apache.org/jira/browse/HADOOP-17298) | Backslash in username causes build failure in the environment started by start-build-env.sh. |  Minor | build | Takeru Kuramoto | Takeru Kuramoto |
| [HDFS-15639](https://issues.apache.org/jira/browse/HDFS-15639) | [JDK 11] Fix Javadoc errors in hadoop-hdfs-client |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HADOOP-17315](https://issues.apache.org/jira/browse/HADOOP-17315) | Use shaded guava in ClientCache.java |  Minor | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10453](https://issues.apache.org/jira/browse/YARN-10453) | Add partition resource info to get-node-labels and label-mappings api responses |  Major | yarn | Akhil PB | Akhil PB |
| [MAPREDUCE-7303](https://issues.apache.org/jira/browse/MAPREDUCE-7303) | Fix TestJobResourceUploader failures after HADOOP-16878 |  Major | test | Peter Bacsko | Peter Bacsko |
| [HDFS-15618](https://issues.apache.org/jira/browse/HDFS-15618) | Improve datanode shutdown latency |  Major | datanode | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15622](https://issues.apache.org/jira/browse/HDFS-15622) | Deleted blocks linger in the replications queue |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15641](https://issues.apache.org/jira/browse/HDFS-15641) | DataNode could meet deadlock if invoke refreshNameNode |  Critical | . | Hongbing Wang | Hongbing Wang |
| [HADOOP-17328](https://issues.apache.org/jira/browse/HADOOP-17328) | LazyPersist Overwrite fails in direct write mode |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15580](https://issues.apache.org/jira/browse/HDFS-15580) | [JDK 12] DFSTestUtil#addDataNodeLayoutVersion fails |  Major | test | Akira Ajisaka | Akira Ajisaka |
| [MAPREDUCE-7302](https://issues.apache.org/jira/browse/MAPREDUCE-7302) | Upgrading to JUnit 4.13 causes testcase TestFetcher.testCorruptedIFile() to fail |  Major | test | Peter Bacsko | Peter Bacsko |
| [HDFS-15644](https://issues.apache.org/jira/browse/HDFS-15644) | Failed volumes can cause DNs to stop block reporting |  Major | block placement, datanode | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17236](https://issues.apache.org/jira/browse/HADOOP-17236) | Bump up snakeyaml to 1.26 to mitigate CVE-2017-18640 |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-10467](https://issues.apache.org/jira/browse/YARN-10467) | ContainerIdPBImpl objects can be leaked in RMNodeImpl.completedContainers |  Major | resourcemanager | Haibo Chen | Haibo Chen |
| [HADOOP-17329](https://issues.apache.org/jira/browse/HADOOP-17329) | mvn site commands fails due to MetricsSystemImpl changes |  Major | . | Xiaoqiao He | Xiaoqiao He |
| [YARN-10442](https://issues.apache.org/jira/browse/YARN-10442) | RM should make sure node label file highly available |  Major | resourcemanager | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-15651](https://issues.apache.org/jira/browse/HDFS-15651) | Client could not obtain block when DN CommandProcessingThread exit |  Major | . | Yiqun Lin | Aiphago |
| [HADOOP-17341](https://issues.apache.org/jira/browse/HADOOP-17341) | Upgrade commons-codec to 1.15 |  Minor | . | Dongjoon Hyun | Dongjoon Hyun |
| [HADOOP-17340](https://issues.apache.org/jira/browse/HADOOP-17340) | TestLdapGroupsMapping failing -string mismatch in exception validation |  Major | test | Steve Loughran | Steve Loughran |
| [HDFS-15667](https://issues.apache.org/jira/browse/HDFS-15667) | Audit log record the unexpected allowed result when delete called |  Major | hdfs | Baolong Mao | Baolong Mao |
| [HADOOP-17352](https://issues.apache.org/jira/browse/HADOOP-17352) | Update PATCH\_NAMING\_RULE in the personality file |  Minor | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10458](https://issues.apache.org/jira/browse/YARN-10458) | Hive On Tez queries fails upon submission to dynamically created pools |  Major | resourcemanager | Anand Srinivasan | Peter Bacsko |
| [HDFS-15485](https://issues.apache.org/jira/browse/HDFS-15485) | Fix outdated properties of JournalNode when performing rollback |  Minor | . | Deegue | Deegue |
| [HADOOP-17096](https://issues.apache.org/jira/browse/HADOOP-17096) | ZStandardCompressor throws java.lang.InternalError: Error (generic) |  Major | io | Stephen Jung (Stripe) | Stephen Jung (Stripe) |
| [HADOOP-17327](https://issues.apache.org/jira/browse/HADOOP-17327) | NPE when starting MiniYARNCluster from hadoop-client-minicluster |  Critical | . | Chao Sun |  |
| [HADOOP-17324](https://issues.apache.org/jira/browse/HADOOP-17324) | Don't relocate org.bouncycastle in shaded client jars |  Critical | . | Chao Sun | Chao Sun |
| [HADOOP-17373](https://issues.apache.org/jira/browse/HADOOP-17373) | hadoop-client-integration-tests doesn't work when building with skipShade |  Major | . | Chao Sun | Chao Sun |
| [HADOOP-17358](https://issues.apache.org/jira/browse/HADOOP-17358) | Improve excessive reloading of Configurations |  Major | conf | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15545](https://issues.apache.org/jira/browse/HDFS-15545) | (S)Webhdfs will not use updated delegation tokens available in the ugi after the old ones expire |  Major | . | Issac Buenrostro | Issac Buenrostro |
| [HDFS-15538](https://issues.apache.org/jira/browse/HDFS-15538) | Fix the documentation for dfs.namenode.replication.max-streams in hdfs-default.xml |  Major | . | Xieming Li | Xieming Li |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-10327](https://issues.apache.org/jira/browse/YARN-10327) | Remove duplication of checking for invalid application ID in TestLogsCLI |  Trivial | . | Hudáky Márton Gyula | Hudáky Márton Gyula |
| [MAPREDUCE-7280](https://issues.apache.org/jira/browse/MAPREDUCE-7280) | MiniMRYarnCluster has hard-coded timeout waiting to start history server, with no way to disable |  Major | test | Nick Dimiduk | Masatake Iwasaki |
| [MAPREDUCE-7288](https://issues.apache.org/jira/browse/MAPREDUCE-7288) | Fix TestLongLong#testRightShift |  Minor | . | Wanqiang Ji | Wanqiang Ji |
| [HDFS-15514](https://issues.apache.org/jira/browse/HDFS-15514) | Remove useless dfs.webhdfs.enabled |  Minor | test | Hui Fei | Hui Fei |
| [HADOOP-17205](https://issues.apache.org/jira/browse/HADOOP-17205) | Move personality file from Yetus to Hadoop repository |  Major | test, yetus | Chao Sun | Chao Sun |
| [HDFS-15564](https://issues.apache.org/jira/browse/HDFS-15564) | Add Test annotation for TestPersistBlocks#testRestartDfsWithSync |  Minor | hdfs | Hui Fei | Hui Fei |
| [HDFS-15559](https://issues.apache.org/jira/browse/HDFS-15559) | Complement initialize member variables in TestHdfsConfigFields#initializeMemberVariables |  Minor | . | Lisheng Sun | Lisheng Sun |
| [HDFS-15576](https://issues.apache.org/jira/browse/HDFS-15576) | Erasure Coding: Add rs and rs-legacy codec test for addPolicies |  Minor | . | Hui Fei | Hui Fei |
| [YARN-9333](https://issues.apache.org/jira/browse/YARN-9333) | TestFairSchedulerPreemption.testRelaxLocalityPreemptionWithNoLessAMInRemainingNodes fails intermittently |  Major | yarn | Prabhu Joseph | Peter Bacsko |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-15051](https://issues.apache.org/jira/browse/HDFS-15051) | RBF: Impose directory level permissions for Mount entries |  Major | rbf | Xiaoqiao He | Xiaoqiao He |
| [YARN-10120](https://issues.apache.org/jira/browse/YARN-10120) | In Federation Router Nodes/Applications/About pages throws 500 exception when https is enabled |  Critical | federation | Sushanta Sen | Bilwa S T |
| [YARN-10234](https://issues.apache.org/jira/browse/YARN-10234) | FS-CS converter: don't enable auto-create queue property for root |  Critical | . | Peter Bacsko | Peter Bacsko |
| [YARN-10240](https://issues.apache.org/jira/browse/YARN-10240) | Prevent Fatal CancelledException in TimelineV2Client when stopping |  Major | ATSv2 | Tarun Parimi | Tarun Parimi |
| [HADOOP-17002](https://issues.apache.org/jira/browse/HADOOP-17002) | ABFS: Avoid storage calls to check if the account is HNS enabled or not |  Minor | fs/azure | Bilahari T H | Bilahari T H |
| [YARN-10159](https://issues.apache.org/jira/browse/YARN-10159) | TimelineConnector does not destroy the jersey client |  Major | ATSv2 | Prabhu Joseph | Tanu Ajmera |
| [YARN-10194](https://issues.apache.org/jira/browse/YARN-10194) | YARN RMWebServices /scheduler-conf/validate leaks ZK Connections |  Blocker | capacityscheduler | Akhil PB | Prabhu Joseph |
| [YARN-10215](https://issues.apache.org/jira/browse/YARN-10215) | Endpoint for obtaining direct URL for the logs |  Major | yarn | Adam Antal | Andras Gyori |
| [YARN-6973](https://issues.apache.org/jira/browse/YARN-6973) | Adding RM Cluster Id in ApplicationReport |  Major | . | Giovanni Matteo Fumarola | Bilwa S T |
| [YARN-6553](https://issues.apache.org/jira/browse/YARN-6553) | Replace MockResourceManagerFacade with MockRM for AMRMProxy/Router tests |  Major | . | Giovanni Matteo Fumarola | Bilwa S T |
| [HDFS-14353](https://issues.apache.org/jira/browse/HDFS-14353) | Erasure Coding: metrics xmitsInProgress become to negative. |  Major | datanode, erasure-coding | Baolong Mao | Baolong Mao |
| [HDFS-15305](https://issues.apache.org/jira/browse/HDFS-15305) | Extend ViewFS and provide ViewFSOverloadScheme implementation with scheme configurable. |  Major | fs, hadoop-client, hdfs-client, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10257](https://issues.apache.org/jira/browse/YARN-10257) | FS-CS converter: skip increment properties for mem/vcores and fix DRF check |  Major | . | Peter Bacsko | Peter Bacsko |
| [HADOOP-17027](https://issues.apache.org/jira/browse/HADOOP-17027) | Add tests for reading fair call queue capacity weight configs |  Major | ipc | Fengnan Li | Fengnan Li |
| [YARN-10259](https://issues.apache.org/jira/browse/YARN-10259) | Reserved Containers not allocated from available space of other nodes in CandidateNodeSet in MultiNodePlacement |  Major | capacityscheduler | Prabhu Joseph | Prabhu Joseph |
| [HDFS-15306](https://issues.apache.org/jira/browse/HDFS-15306) | Make mount-table to read from central place ( Let's say from HDFS) |  Major | configuration, hadoop-client | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15082](https://issues.apache.org/jira/browse/HDFS-15082) | RBF: Check each component length of destination path when add/update mount entry |  Major | rbf | Xiaoqiao He | Xiaoqiao He |
| [HDFS-15340](https://issues.apache.org/jira/browse/HDFS-15340) | RBF: Implement BalanceProcedureScheduler basic framework |  Major | . | Jinglun | Jinglun |
| [HDFS-15322](https://issues.apache.org/jira/browse/HDFS-15322) | Make NflyFS to work when ViewFsOverloadScheme's scheme and target uris schemes are same. |  Major | fs, nflyFs, viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10108](https://issues.apache.org/jira/browse/YARN-10108) | FS-CS converter: nestedUserQueue with default rule results in invalid queue mapping |  Major | . | Prabhu Joseph | Gergely Pollak |
| [HADOOP-17053](https://issues.apache.org/jira/browse/HADOOP-17053) | ABFS: FS initialize fails for incompatible account-agnostic Token Provider setting |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-15321](https://issues.apache.org/jira/browse/HDFS-15321) | Make DFSAdmin tool to work with ViewFSOverloadScheme |  Major | dfsadmin, fs, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10284](https://issues.apache.org/jira/browse/YARN-10284) | Add lazy initialization of LogAggregationFileControllerFactory in LogServlet |  Major | log-aggregation, yarn | Adam Antal | Adam Antal |
| [HDFS-15330](https://issues.apache.org/jira/browse/HDFS-15330) | Document the ViewFSOverloadScheme details in ViewFS guide |  Major | viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15389](https://issues.apache.org/jira/browse/HDFS-15389) | DFSAdmin should close filesystem and dfsadmin -setBalancerBandwidth should work with ViewFSOverloadScheme |  Major | dfsadmin, viewfsOverloadScheme | Ayush Saxena | Ayush Saxena |
| [HDFS-15394](https://issues.apache.org/jira/browse/HDFS-15394) | Add all available fs.viewfs.overload.scheme.target.\<scheme\>.impl classes in core-default.xml bydefault. |  Major | configuration, viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10293](https://issues.apache.org/jira/browse/YARN-10293) | Reserved Containers not allocated from available space of other nodes in CandidateNodeSet in MultiNodePlacement (YARN-10259) |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [HDFS-15387](https://issues.apache.org/jira/browse/HDFS-15387) | FSUsage$DF should consider ViewFSOverloadScheme in processPath |  Minor | viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10292](https://issues.apache.org/jira/browse/YARN-10292) | FS-CS converter: add an option to enable asynchronous scheduling in CapacityScheduler |  Major | fairscheduler | Benjamin Teke | Benjamin Teke |
| [HDFS-15346](https://issues.apache.org/jira/browse/HDFS-15346) | FedBalance tool implementation |  Major | . | Jinglun | Jinglun |
| [HADOOP-16888](https://issues.apache.org/jira/browse/HADOOP-16888) | [JDK11] Support JDK11 in the precommit job |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17004](https://issues.apache.org/jira/browse/HADOOP-17004) | ABFS: Improve the ABFS driver documentation |  Minor | fs/azure | Bilahari T H | Bilahari T H |
| [HDFS-15418](https://issues.apache.org/jira/browse/HDFS-15418) | ViewFileSystemOverloadScheme should represent mount links as non symlinks |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-16922](https://issues.apache.org/jira/browse/HADOOP-16922) | ABFS: Change in User-Agent header |  Minor | fs/azure | Bilahari T H | Bilahari T H |
| [YARN-9930](https://issues.apache.org/jira/browse/YARN-9930) | Support max running app logic for CapacityScheduler |  Major | capacity scheduler, capacityscheduler | zhoukang | Peter Bacsko |
| [HDFS-15428](https://issues.apache.org/jira/browse/HDFS-15428) | Javadocs fails for hadoop-federation-balance |  Minor | documentation | Xieming Li | Xieming Li |
| [HDFS-15427](https://issues.apache.org/jira/browse/HDFS-15427) | Merged ListStatus with Fallback target filesystem and InternalDirViewFS. |  Major | viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10316](https://issues.apache.org/jira/browse/YARN-10316) | FS-CS converter: convert maxAppsDefault, maxRunningApps settings |  Major | . | Peter Bacsko | Peter Bacsko |
| [HADOOP-17054](https://issues.apache.org/jira/browse/HADOOP-17054) | ABFS: Fix idempotency test failures when SharedKey is set as AuthType |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HADOOP-17015](https://issues.apache.org/jira/browse/HADOOP-17015) | ABFS: Make PUT and POST operations idempotent |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-15429](https://issues.apache.org/jira/browse/HDFS-15429) | mkdirs should work when parent dir is internalDir and fallback configured. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-6526](https://issues.apache.org/jira/browse/YARN-6526) | Refactoring SQLFederationStateStore by avoiding to recreate a connection at every call |  Major | federation | Giovanni Matteo Fumarola | Bilwa S T |
| [HDFS-15436](https://issues.apache.org/jira/browse/HDFS-15436) | Default mount table name used by ViewFileSystem should be configurable |  Major | viewfs, viewfsOverloadScheme | Virajith Jalaparti | Virajith Jalaparti |
| [HDFS-15410](https://issues.apache.org/jira/browse/HDFS-15410) | Add separated config file hdfs-fedbalance-default.xml for fedbalance tool |  Major | . | Jinglun | Jinglun |
| [HDFS-15374](https://issues.apache.org/jira/browse/HDFS-15374) | Add documentation for fedbalance tool |  Major | . | Jinglun | Jinglun |
| [YARN-10325](https://issues.apache.org/jira/browse/YARN-10325) | Document max-parallel-apps for Capacity Scheduler |  Major | capacity scheduler, capacityscheduler | Peter Bacsko | Peter Bacsko |
| [HADOOP-16961](https://issues.apache.org/jira/browse/HADOOP-16961) | ABFS: Adding metrics to AbfsInputStream (AbfsInputStreamStatistics) |  Major | fs/azure | Gabor Bota | Mehakmeet Singh |
| [HDFS-15430](https://issues.apache.org/jira/browse/HDFS-15430) | create should work when parent dir is internalDir and fallback configured. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15450](https://issues.apache.org/jira/browse/HDFS-15450) | Fix NN trash emptier to work if ViewFSOveroadScheme enabled |  Major | namenode, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17111](https://issues.apache.org/jira/browse/HADOOP-17111) | Replace Guava Optional with Java8+ Optional |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15417](https://issues.apache.org/jira/browse/HDFS-15417) | RBF: Get the datanode report from cache for federation WebHDFS operations |  Major | federation, rbf, webhdfs | Ye Ni | Ye Ni |
| [HDFS-15449](https://issues.apache.org/jira/browse/HDFS-15449) | Optionally ignore port number in mount-table name when picking from initialized uri |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10337](https://issues.apache.org/jira/browse/YARN-10337) | TestRMHATimelineCollectors fails on hadoop trunk |  Major | test, yarn | Ahmed Hussein | Bilwa S T |
| [HDFS-15462](https://issues.apache.org/jira/browse/HDFS-15462) | Add fs.viewfs.overload.scheme.target.ofs.impl to core-default.xml |  Major | configuration, viewfs, viewfsOverloadScheme | Siyao Meng | Siyao Meng |
| [HDFS-15464](https://issues.apache.org/jira/browse/HDFS-15464) | ViewFsOverloadScheme should work when -fs option pointing to remote cluster without mount links |  Major | viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17101](https://issues.apache.org/jira/browse/HADOOP-17101) | Replace Guava Function with Java8+ Function |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17099](https://issues.apache.org/jira/browse/HADOOP-17099) | Replace Guava Predicate with Java8+ Predicate |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17136](https://issues.apache.org/jira/browse/HADOOP-17136) | ITestS3ADirectoryPerformance.testListOperations failing |  Minor | fs/s3, test | Mukund Thakur | Mukund Thakur |
| [HDFS-15479](https://issues.apache.org/jira/browse/HDFS-15479) | Ordered snapshot deletion: make it a configurable feature |  Major | snapshots | Tsz-wo Sze | Tsz-wo Sze |
| [HDFS-15478](https://issues.apache.org/jira/browse/HDFS-15478) | When Empty mount points, we are assigning fallback link to self. But it should not use full URI for target fs. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17100](https://issues.apache.org/jira/browse/HADOOP-17100) | Replace Guava Supplier with Java8+ Supplier in Hadoop |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17132](https://issues.apache.org/jira/browse/HADOOP-17132) | ABFS: Fix For Idempotency code |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [YARN-10315](https://issues.apache.org/jira/browse/YARN-10315) | Avoid sending RMNodeResourceupdate event if resource is same |  Major | . | Bibin Chundatt | Sushil Ks |
| [HADOOP-13221](https://issues.apache.org/jira/browse/HADOOP-13221) | s3a create() doesn't check for an ancestor path being a file |  Major | fs/s3 | Steve Loughran | Sean Mackrory |
| [HDFS-15488](https://issues.apache.org/jira/browse/HDFS-15488) | Add a command to list all snapshots for a snaphottable root with snapshot Ids |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HDFS-15481](https://issues.apache.org/jira/browse/HDFS-15481) | Ordered snapshot deletion: garbage collect deleted snapshots |  Major | snapshots | Tsz-wo Sze | Tsz-wo Sze |
| [HDFS-15498](https://issues.apache.org/jira/browse/HDFS-15498) | Show snapshots deletion status in snapList cmd |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HADOOP-17091](https://issues.apache.org/jira/browse/HADOOP-17091) | [JDK11] Fix Javadoc errors |  Major | build | Uma Maheswara Rao G | Akira Ajisaka |
| [HDFS-15497](https://issues.apache.org/jira/browse/HDFS-15497) | Make snapshot limit on global as well per snapshot root directory configurable |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HADOOP-17131](https://issues.apache.org/jira/browse/HADOOP-17131) | Refactor S3A Listing code for better isolation |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [HADOOP-17179](https://issues.apache.org/jira/browse/HADOOP-17179) | [JDK 11] Fix javadoc error  in Java API link detection |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17137](https://issues.apache.org/jira/browse/HADOOP-17137) | ABFS: Tests ITestAbfsNetworkStatistics need to be config setting agnostic |  Minor | fs/azure, test | Sneha Vijayarajan | Bilahari T H |
| [HADOOP-17149](https://issues.apache.org/jira/browse/HADOOP-17149) | ABFS: Test failure: testFailedRequestWhenCredentialsNotCorrect fails when run with SharedKey |  Minor | fs/azure | Sneha Vijayarajan | Bilahari T H |
| [HADOOP-17163](https://issues.apache.org/jira/browse/HADOOP-17163) | ABFS: Add debug log for rename failures |  Major | fs/azure | Bilahari T H | Bilahari T H |
| [HDFS-15492](https://issues.apache.org/jira/browse/HDFS-15492) | Make trash root inside each snapshottable directory |  Major | hdfs, hdfs-client | Siyao Meng | Siyao Meng |
| [HDFS-15518](https://issues.apache.org/jira/browse/HDFS-15518) | Wrong operation name in FsNamesystem for listSnapshots |  Major | . | Mukul Kumar Singh | Aryan Gupta |
| [HDFS-15496](https://issues.apache.org/jira/browse/HDFS-15496) | Add UI for deleted snapshots |  Major | . | Mukul Kumar Singh | Vivek Ratnavel Subramanian |
| [HDFS-15524](https://issues.apache.org/jira/browse/HDFS-15524) | Add edit log entry for Snapshot deletion GC thread snapshot deletion |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HDFS-15483](https://issues.apache.org/jira/browse/HDFS-15483) | Ordered snapshot deletion: Disallow rename between two snapshottable directories |  Major | snapshots | Tsz-wo Sze | Shashikant Banerjee |
| [HDFS-15525](https://issues.apache.org/jira/browse/HDFS-15525) | Make trash root inside each snapshottable directory for WebHDFS |  Major | webhdfs | Siyao Meng | Siyao Meng |
| [HDFS-15533](https://issues.apache.org/jira/browse/HDFS-15533) | Provide DFS API compatible class(ViewDistributedFileSystem), but use ViewFileSystemOverloadScheme inside |  Major | dfs, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10360](https://issues.apache.org/jira/browse/YARN-10360) | Support Multi Node Placement in SingleConstraintAppPlacementAllocator |  Major | capacityscheduler, multi-node-placement | Prabhu Joseph | Prabhu Joseph |
| [YARN-10106](https://issues.apache.org/jira/browse/YARN-10106) | Yarn logs CLI filtering by application attempt |  Trivial | yarn | Adam Antal | Hudáky Márton Gyula |
| [YARN-10304](https://issues.apache.org/jira/browse/YARN-10304) | Create an endpoint for remote application log directory path query |  Minor | . | Andras Gyori | Andras Gyori |
| [YARN-1806](https://issues.apache.org/jira/browse/YARN-1806) | webUI update to allow end users to request thread dump |  Major | nodemanager | Ming Ma | Siddharth Ahuja |
| [HDFS-15500](https://issues.apache.org/jira/browse/HDFS-15500) | In-order deletion of snapshots: Diff lists must be update only in the last snapshot |  Major | snapshots | Mukul Kumar Singh | Tsz-wo Sze |
| [YARN-10408](https://issues.apache.org/jira/browse/YARN-10408) | Extract MockQueueHierarchyBuilder to a separate class |  Major | . | Gergely Pollak | Gergely Pollak |
| [YARN-10409](https://issues.apache.org/jira/browse/YARN-10409) | Improve MockQueueHierarchyBuilder to detect queue ambiguity |  Major | . | Gergely Pollak | Gergely Pollak |
| [YARN-10371](https://issues.apache.org/jira/browse/YARN-10371) | Create variable context class for CS queue mapping rules |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [YARN-10373](https://issues.apache.org/jira/browse/YARN-10373) | Create Matchers for CS mapping rules |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [HDFS-15542](https://issues.apache.org/jira/browse/HDFS-15542) | Add identified snapshot corruption tests for ordered snapshot deletion |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [YARN-10386](https://issues.apache.org/jira/browse/YARN-10386) | Create new JSON schema for Placement Rules |  Major | capacity scheduler, capacityscheduler | Peter Bacsko | Peter Bacsko |
| [YARN-10374](https://issues.apache.org/jira/browse/YARN-10374) | Create Actions for CS mapping rules |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [YARN-10372](https://issues.apache.org/jira/browse/YARN-10372) | Create MappingRule class to represent each CS mapping rule |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [YARN-10375](https://issues.apache.org/jira/browse/YARN-10375) | CS Mapping rule config parser should return MappingRule objects |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [HDFS-15529](https://issues.apache.org/jira/browse/HDFS-15529) | getChildFilesystems should include fallback fs as well |  Critical | viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10376](https://issues.apache.org/jira/browse/YARN-10376) | Create a class that covers the functionality of UserGroupMappingPlacementRule and AppNameMappingPlacementRule using the new mapping rules |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [YARN-10332](https://issues.apache.org/jira/browse/YARN-10332) | RESOURCE\_UPDATE event was repeatedly registered in DECOMMISSIONING state |  Minor | resourcemanager | yehuanhuan | yehuanhuan |
| [YARN-10411](https://issues.apache.org/jira/browse/YARN-10411) | Create an allowCreate flag for MappingRuleAction |  Major | . | Gergely Pollak | Gergely Pollak |
| [HDFS-15558](https://issues.apache.org/jira/browse/HDFS-15558) | ViewDistributedFileSystem#recoverLease should call super.recoverLease when there are no mounts configured |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10415](https://issues.apache.org/jira/browse/YARN-10415) | Create a group matcher which checks ALL groups of the user |  Major | . | Gergely Pollak | Gergely Pollak |
| [HADOOP-17181](https://issues.apache.org/jira/browse/HADOOP-17181) | Handle transient stream read failures in FileSystem contract tests |  Minor | fs/s3 | Steve Loughran |  |
| [YARN-10387](https://issues.apache.org/jira/browse/YARN-10387) | Implement logic which returns MappingRule objects based on mapping rules |  Major | . | Peter Bacsko | Peter Bacsko |
| [HDFS-15563](https://issues.apache.org/jira/browse/HDFS-15563) | Incorrect getTrashRoot return value when a non-snapshottable dir prefix matches the path of a snapshottable dir |  Major | snapshots | Nilotpal Nandi | Siyao Meng |
| [HDFS-15551](https://issues.apache.org/jira/browse/HDFS-15551) | Tiny Improve for DeadNode detector |  Minor | hdfs-client | dark\_num | imbajin |
| [HDFS-15555](https://issues.apache.org/jira/browse/HDFS-15555) | RBF: Refresh cacheNS when SocketException occurs |  Major | rbf | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15532](https://issues.apache.org/jira/browse/HDFS-15532) | listFiles on root/InternalDir will fail if fallback root has file |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15539](https://issues.apache.org/jira/browse/HDFS-15539) | When disallowing snapshot on a dir, throw exception if its trash root is not empty |  Major | hdfs | Siyao Meng | Siyao Meng |
| [HDFS-15568](https://issues.apache.org/jira/browse/HDFS-15568) | namenode start failed to start when dfs.namenode.snapshot.max.limit set |  Major | snapshots | Nilotpal Nandi | Shashikant Banerjee |
| [HDFS-15578](https://issues.apache.org/jira/browse/HDFS-15578) | Fix the rename issues with fallback fs enabled |  Major | viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15585](https://issues.apache.org/jira/browse/HDFS-15585) | ViewDFS#getDelegationToken should not throw UnsupportedOperationException. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10424](https://issues.apache.org/jira/browse/YARN-10424) | Adapt existing AppName and UserGroupMapping unittests to ensure backwards compatibility |  Major | . | Benjamin Teke | Benjamin Teke |
| [HADOOP-17215](https://issues.apache.org/jira/browse/HADOOP-17215) | ABFS: Support for conditional overwrite |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-14811](https://issues.apache.org/jira/browse/HDFS-14811) | RBF: TestRouterRpc#testErasureCoding is flaky |  Major | rbf | Chen Zhang | Chen Zhang |
| [HADOOP-17279](https://issues.apache.org/jira/browse/HADOOP-17279) | ABFS: Test testNegativeScenariosForCreateOverwriteDisabled fails for non-HNS account |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-15590](https://issues.apache.org/jira/browse/HDFS-15590) | namenode fails to start when ordered snapshot deletion feature is disabled |  Major | snapshots | Nilotpal Nandi | Shashikant Banerjee |
| [HDFS-15596](https://issues.apache.org/jira/browse/HDFS-15596) | ViewHDFS#create(f, permission, cflags, bufferSize, replication, blockSize, progress, checksumOpt) should not be restricted to DFS only. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15598](https://issues.apache.org/jira/browse/HDFS-15598) | ViewHDFS#canonicalizeUri should not be restricted to DFS only API. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10413](https://issues.apache.org/jira/browse/YARN-10413) | Change fs2cs to generate mapping rules in the new format |  Major | . | Peter Bacsko | Peter Bacsko |
| [HDFS-15607](https://issues.apache.org/jira/browse/HDFS-15607) | Create trash dir when allowing snapshottable dir |  Major | hdfs | Siyao Meng | Siyao Meng |
| [HDFS-15613](https://issues.apache.org/jira/browse/HDFS-15613) | RBF: Router FSCK fails after HDFS-14442 |  Major | rbf | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15611](https://issues.apache.org/jira/browse/HDFS-15611) | Add list Snapshot command in WebHDFS |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HDFS-13293](https://issues.apache.org/jira/browse/HDFS-13293) | RBF: The RouterRPCServer should transfer client IP via CallerContext to NamenodeRpcServer |  Major | rbf | Baolong Mao | Hui Fei |
| [HDFS-15625](https://issues.apache.org/jira/browse/HDFS-15625) | Namenode trashEmptier should not init ViewFs on startup |  Major | namenode, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10454](https://issues.apache.org/jira/browse/YARN-10454) | Add applicationName policy |  Major | . | Peter Bacsko | Peter Bacsko |
| [HDFS-15620](https://issues.apache.org/jira/browse/HDFS-15620) | RBF: Fix test failures after HADOOP-17281 |  Major | rbf, test | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15614](https://issues.apache.org/jira/browse/HDFS-15614) | Initialize snapshot trash root during NameNode startup if enabled |  Major | . | Siyao Meng | Siyao Meng |
| [HADOOP-16915](https://issues.apache.org/jira/browse/HADOOP-16915) | ABFS: Test failure ITestAzureBlobFileSystemRandomRead.testRandomReadPerformance |  Major | . | Bilahari T H | Bilahari T H |
| [HADOOP-17166](https://issues.apache.org/jira/browse/HADOOP-17166) | ABFS: configure output stream thread pool |  Minor | fs/azure | Bilahari T H | Bilahari T H |
| [HADOOP-17301](https://issues.apache.org/jira/browse/HADOOP-17301) | ABFS: read-ahead error reporting breaks buffer management |  Critical | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HADOOP-17288](https://issues.apache.org/jira/browse/HADOOP-17288) | Use shaded guava from thirdparty |  Major | . | Ayush Saxena | Ayush Saxena |
| [HADOOP-17175](https://issues.apache.org/jira/browse/HADOOP-17175) | [JDK11] Fix javadoc errors in hadoop-common module |  Major | documentation | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17319](https://issues.apache.org/jira/browse/HADOOP-17319) | Update the checkstyle config to ban some guava functions |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15630](https://issues.apache.org/jira/browse/HDFS-15630) | RBF: Fix wrong client IP info in CallerContext when requests mount points with multi-destinations. |  Major | rbf | Chengwei Wang | Chengwei Wang |
| [HDFS-15459](https://issues.apache.org/jira/browse/HDFS-15459) | TestBlockTokenWithDFSStriped fails intermittently |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15640](https://issues.apache.org/jira/browse/HDFS-15640) | Add diff threshold to FedBalance |  Major | . | Jinglun | Jinglun |
| [HDFS-15461](https://issues.apache.org/jira/browse/HDFS-15461) | TestDFSClientRetries#testGetFileChecksum fails intermittently |  Major | dfsclient, test | Ahmed Hussein | Ahmed Hussein |
| [HDFS-9776](https://issues.apache.org/jira/browse/HDFS-9776) | TestHAAppend#testMultipleAppendsDuringCatchupTailing is flaky |  Major | . | Vinayakumar B | Ahmed Hussein |
| [HDFS-15457](https://issues.apache.org/jira/browse/HDFS-15457) | TestFsDatasetImpl fails intermittently |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15460](https://issues.apache.org/jira/browse/HDFS-15460) | TestFileCreation#testServerDefaultsWithMinimalCaching fails intermittently |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15657](https://issues.apache.org/jira/browse/HDFS-15657) | RBF: TestRouter#testNamenodeHeartBeatEnableDefault fails by BindException |  Major | rbf, test | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15654](https://issues.apache.org/jira/browse/HDFS-15654) | TestBPOfferService#testMissBlocksWhenReregister fails intermittently |  Major | datanode | Ahmed Hussein | Ahmed Hussein |
| [YARN-10420](https://issues.apache.org/jira/browse/YARN-10420) | Update CS MappingRule documentation with the new format and features |  Major | . | Gergely Pollak | Peter Bacsko |
| [HDFS-15643](https://issues.apache.org/jira/browse/HDFS-15643) | EC: Fix checksum computation in case of native encoders |  Blocker | . | Ahmed Hussein | Ayush Saxena |
| [HDFS-15548](https://issues.apache.org/jira/browse/HDFS-15548) | Allow configuring DISK/ARCHIVE storage types on same device mount |  Major | datanode | Leon Gao | Leon Gao |
| [YARN-10425](https://issues.apache.org/jira/browse/YARN-10425) | Replace the legacy placement engine in CS with the new one |  Major | . | Gergely Pollak | Gergely Pollak |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-15465](https://issues.apache.org/jira/browse/HDFS-15465) | Support WebHDFS accesses to the data stored in secure Datanode through insecure Namenode |  Minor | federation, webhdfs | Toshihiko Uchida | Toshihiko Uchida |
| [YARN-10247](https://issues.apache.org/jira/browse/YARN-10247) | Application priority queue ACLs are not respected |  Blocker | capacity scheduler | Sunil G | Sunil G |
| [HADOOP-17033](https://issues.apache.org/jira/browse/HADOOP-17033) | Update commons-codec from 1.11 to 1.14 |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HADOOP-17055](https://issues.apache.org/jira/browse/HADOOP-17055) | Remove residual code of Ozone |  Major | . | Wanqiang Ji | Wanqiang Ji |
| [YARN-10274](https://issues.apache.org/jira/browse/YARN-10274) | Merge QueueMapping and QueueMappingEntity |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [YARN-10281](https://issues.apache.org/jira/browse/YARN-10281) | Redundant QueuePath usage in UserGroupMappingPlacementRule and AppNameMappingPlacementRule |  Major | . | Gergely Pollak | Gergely Pollak |
| [YARN-10279](https://issues.apache.org/jira/browse/YARN-10279) | Avoid unnecessary QueueMappingEntity creations |  Minor | . | Gergely Pollak | Hudáky Márton Gyula |
| [YARN-10277](https://issues.apache.org/jira/browse/YARN-10277) | CapacityScheduler test TestUserGroupMappingPlacementRule should build proper hierarchy |  Major | . | Gergely Pollak | Szilard Nemeth |
| [HADOOP-16866](https://issues.apache.org/jira/browse/HADOOP-16866) | Upgrade spotbugs to 4.0.6 |  Minor | . | Tsuyoshi Ozawa | Masatake Iwasaki |
| [HADOOP-17234](https://issues.apache.org/jira/browse/HADOOP-17234) | Add .asf.yaml to allow github and jira integration |  Major | . | Ayush Saxena | Ayush Saxena |
| [MAPREDUCE-7298](https://issues.apache.org/jira/browse/MAPREDUCE-7298) | Distcp doesn't close the job after the job is completed |  Major | distcp | Aasha Medhi | Aasha Medhi |
| [HADOOP-17281](https://issues.apache.org/jira/browse/HADOOP-17281) | Implement FileSystem.listStatusIterator() in S3AFileSystem |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [HADOOP-16990](https://issues.apache.org/jira/browse/HADOOP-16990) | Update Mockserver |  Major | . | Wei-Chiu Chuang | Attila Doroszlai |
| [HADOOP-17030](https://issues.apache.org/jira/browse/HADOOP-17030) | Remove unused joda-time |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |


