
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

## Release 3.1.5 - Unreleased (as of 2020-11-14)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-7069](https://issues.apache.org/jira/browse/MAPREDUCE-7069) | Add ability to specify user environment variables individually |  Major | . | Jim Brennan | Jim Brennan |
| [HADOOP-16753](https://issues.apache.org/jira/browse/HADOOP-16753) | Refactor HAAdmin |  Major | ha | Akira Ajisaka | Xieming Li |
| [HADOOP-16886](https://issues.apache.org/jira/browse/HADOOP-16886) | Add hadoop.http.idle\_timeout.ms to core-default.xml |  Major | . | Wei-Chiu Chuang | Lisheng Sun |
| [YARN-10260](https://issues.apache.org/jira/browse/YARN-10260) | Allow transitioning queue from DRAINING to RUNNING state |  Major | . | Jonathan Hung | Bilwa S T |
| [HADOOP-17042](https://issues.apache.org/jira/browse/HADOOP-17042) | Hadoop distcp throws "ERROR: Tools helper ///usr/lib/hadoop/libexec/tools/hadoop-distcp.sh was not found" |  Minor | tools/distcp | Aki Tanaka | Aki Tanaka |
| [HADOOP-14698](https://issues.apache.org/jira/browse/HADOOP-14698) | Make copyFromLocal's -t option available for put as well |  Major | . | Andras Bokor | Andras Bokor |
| [YARN-6492](https://issues.apache.org/jira/browse/YARN-6492) | Generate queue metrics for each partition |  Major | capacity scheduler | Jonathan Hung | Manikandan R |
| [HADOOP-17047](https://issues.apache.org/jira/browse/HADOOP-17047) | TODO comments exist in trunk while the related issues are already fixed. |  Trivial | . | Rungroj Maipradit | Rungroj Maipradit |
| [HDFS-15406](https://issues.apache.org/jira/browse/HDFS-15406) | Improve the speed of Datanode Block Scan |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-17090](https://issues.apache.org/jira/browse/HADOOP-17090) | Increase precommit job timeout from 5 hours to 20 hours |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10297](https://issues.apache.org/jira/browse/YARN-10297) | TestContinuousScheduling#testFairSchedulerContinuousSchedulingInitTime fails intermittently |  Major | . | Jonathan Hung | Jim Brennan |
| [HDFS-15404](https://issues.apache.org/jira/browse/HDFS-15404) | ShellCommandFencer should expose info about source |  Major | . | Chen Liang | Chen Liang |
| [HADOOP-17147](https://issues.apache.org/jira/browse/HADOOP-17147) | Dead link in hadoop-kms/index.md.vm |  Minor | documentation, kms | Akira Ajisaka | Xieming Li |
| [YARN-10343](https://issues.apache.org/jira/browse/YARN-10343) | Legacy RM UI should include labeled metrics for allocated, total, and reserved resources. |  Major | . | Eric Payne | Eric Payne |
| [YARN-1529](https://issues.apache.org/jira/browse/YARN-1529) | Add Localization overhead metrics to NM |  Major | nodemanager | Gera Shegalov | Jim Brennan |
| [YARN-10251](https://issues.apache.org/jira/browse/YARN-10251) | Show extended resources on legacy RM UI. |  Major | . | Eric Payne | Eric Payne |
| [HADOOP-17159](https://issues.apache.org/jira/browse/HADOOP-17159) | Make UGI support forceful relogin from keytab ignoring the last login time |  Major | security | Sandeep Guggilam | Sandeep Guggilam |
| [YARN-10353](https://issues.apache.org/jira/browse/YARN-10353) | Log vcores used and cumulative cpu in containers monitor |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10369](https://issues.apache.org/jira/browse/YARN-10369) | Make NMTokenSecretManagerInRM sending NMToken for nodeId DEBUG |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10390](https://issues.apache.org/jira/browse/YARN-10390) | LeafQueue: retain user limits cache across assignContainers() calls |  Major | capacity scheduler, capacityscheduler | Muhammad Samir Khan | Muhammad Samir Khan |
| [HDFS-15574](https://issues.apache.org/jira/browse/HDFS-15574) | Remove unnecessary sort of block list in DirectoryScanner |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-15583](https://issues.apache.org/jira/browse/HDFS-15583) | Backport DirectoryScanner improvements HDFS-14476, HDFS-14751 and HDFS-15048 to branch 3.2 and 3.1 |  Major | datanode | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-15415](https://issues.apache.org/jira/browse/HDFS-15415) | Reduce locking in Datanode DirectoryScanner |  Major | datanode | Stephen O'Donnell | Stephen O'Donnell |
| [YARN-10451](https://issues.apache.org/jira/browse/YARN-10451) | RM (v1) UI NodesPage can NPE when yarn.io/gpu resource type is defined. |  Major | . | Eric Payne | Eric Payne |
| [YARN-9667](https://issues.apache.org/jira/browse/YARN-9667) | Container-executor.c duplicates messages to stdout |  Major | nodemanager, yarn | Adam Antal | Peter Bacsko |
| [MAPREDUCE-7301](https://issues.apache.org/jira/browse/MAPREDUCE-7301) | Expose Mini MR Cluster attribute for testing |  Minor | test | Swaroopa Kadam | Swaroopa Kadam |
| [HDFS-15567](https://issues.apache.org/jira/browse/HDFS-15567) | [SBN Read] HDFS should expose msync() API to allow downstream applications call it explicitly. |  Major | ha, hdfs-client | Konstantin Shvachko | Konstantin Shvachko |
| [YARN-10450](https://issues.apache.org/jira/browse/YARN-10450) | Add cpu and memory utilization per node and cluster-wide metrics |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10475](https://issues.apache.org/jira/browse/YARN-10475) | Scale RM-NM heartbeat interval based on node utilization |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15665](https://issues.apache.org/jira/browse/HDFS-15665) | Balancer logging improvement |  Major | balancer & mover | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-17342](https://issues.apache.org/jira/browse/HADOOP-17342) | Creating a token identifier should not do kerberos name resolution |  Major | common | Jim Brennan | Jim Brennan |
| [YARN-10479](https://issues.apache.org/jira/browse/YARN-10479) | RMProxy should retry on SocketTimeout Exceptions |  Major | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15623](https://issues.apache.org/jira/browse/HDFS-15623) | Respect configured values of rpc.engine |  Major | hdfs | Hector Sandoval Chaverri | Hector Sandoval Chaverri |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15814](https://issues.apache.org/jira/browse/HADOOP-15814) | Maven 3.3.3 unable to parse pom file |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-14599](https://issues.apache.org/jira/browse/HDFS-14599) | HDFS-12487 breaks test TestDiskBalancer.testDiskBalancerWithFedClusterWithOneNameServiceEmpty |  Major | diskbalancer | Wei-Chiu Chuang | Xiaoqiao He |
| [HADOOP-16255](https://issues.apache.org/jira/browse/HADOOP-16255) | ChecksumFS.Make FileSystem.rename(path, path, options) doesn't rename checksum |  Major | fs | Steve Loughran | Jungtaek Lim |
| [HDFS-14941](https://issues.apache.org/jira/browse/HDFS-14941) | Potential editlog race condition can cause corrupted file |  Major | namenode | Chen Liang | Chen Liang |
| [YARN-10256](https://issues.apache.org/jira/browse/YARN-10256) | Refactor TestContainerSchedulerQueuing.testContainerUpdateExecTypeGuaranteedToOpportunistic |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15270](https://issues.apache.org/jira/browse/HDFS-15270) | Account for \*env == NULL in hdfsThreadDestructor |  Major | . | Babneet Singh | Babneet Singh |
| [HDFS-15272](https://issues.apache.org/jira/browse/HDFS-15272) | Backport HDFS-12862 to branch-3.1 |  Major | . | Xiaoqiao He | Xiaoqiao He |
| [YARN-8959](https://issues.apache.org/jira/browse/YARN-8959) | TestContainerResizing fails randomly |  Minor | . | Bibin Chundatt | Ahmed Hussein |
| [HDFS-15323](https://issues.apache.org/jira/browse/HDFS-15323) | StandbyNode fails transition to active due to insufficient transaction tailing |  Major | namenode, qjm | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-15339](https://issues.apache.org/jira/browse/HDFS-15339) | TestHDFSCLI fails for user names with the dot/dash character |  Major | test | Yan Xiaole | Yan Xiaole |
| [HDFS-15250](https://issues.apache.org/jira/browse/HDFS-15250) | Setting \`dfs.client.use.datanode.hostname\` to true can crash the system because of unhandled UnresolvedAddressException |  Major | . | Ctest | Ctest |
| [HDFS-14367](https://issues.apache.org/jira/browse/HDFS-14367) | EC: Parameter maxPoolSize in striped reconstruct thread pool isn't affecting number of threads |  Major | ec | Guo Lei | Guo Lei |
| [YARN-9444](https://issues.apache.org/jira/browse/YARN-9444) | YARN API ResourceUtils's getRequestedResourcesFromConfig doesn't recognize yarn.io/gpu as a valid resource |  Minor | api | Gergely Pollak | Gergely Pollak |
| [HADOOP-17044](https://issues.apache.org/jira/browse/HADOOP-17044) | Revert "HADOOP-8143. Change distcp to have -pb on by default" |  Major | tools/distcp | Steve Loughran | Steve Loughran |
| [HDFS-15293](https://issues.apache.org/jira/browse/HDFS-15293) | Relax the condition for accepting a fsimage when receiving a checkpoint |  Critical | namenode | Chen Liang | Chen Liang |
| [HADOOP-17024](https://issues.apache.org/jira/browse/HADOOP-17024) | ListStatus on ViewFS root (ls "/") should list the linkFallBack root (configured target root). |  Major | fs, viewfs | Uma Maheswara Rao G | Abhishek Das |
| [HDFS-15363](https://issues.apache.org/jira/browse/HDFS-15363) | BlockPlacementPolicyWithNodeGroup should validate if it is initialized by NetworkTopologyWithNodeGroup |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [MAPREDUCE-7278](https://issues.apache.org/jira/browse/MAPREDUCE-7278) | Speculative execution behavior is observed even when mapreduce.map.speculative and mapreduce.reduce.speculative are false |  Major | task | Tarun Parimi | Tarun Parimi |
| [HADOOP-7002](https://issues.apache.org/jira/browse/HADOOP-7002) | Wrong description of copyFromLocal and copyToLocal in documentation |  Minor | . | Jingguo Yao | Andras Bokor |
| [HADOOP-17062](https://issues.apache.org/jira/browse/HADOOP-17062) | Fix shelldocs path in Jenkinsfile |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17056](https://issues.apache.org/jira/browse/HADOOP-17056) | shelldoc fails in hadoop-common |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15396](https://issues.apache.org/jira/browse/HDFS-15396) | Fix TestViewFileSystemOverloadSchemeHdfsFileSystemContract#testListStatusRootDir |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15386](https://issues.apache.org/jira/browse/HDFS-15386) | ReplicaNotFoundException keeps happening in DN after removing multiple DN's data directories |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [YARN-10300](https://issues.apache.org/jira/browse/YARN-10300) | appMasterHost not set in RM ApplicationSummary when AM fails before first heartbeat |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-17059](https://issues.apache.org/jira/browse/HADOOP-17059) | ArrayIndexOfboundsException in ViewFileSystem#listStatus |  Major | viewfs | Hemanth Boyina | Hemanth Boyina |
| [YARN-10296](https://issues.apache.org/jira/browse/YARN-10296) | Make ContainerPBImpl#getId/setId synchronized |  Minor | . | Benjamin Teke | Benjamin Teke |
| [YARN-10295](https://issues.apache.org/jira/browse/YARN-10295) | CapacityScheduler NPE can cause apps to get stuck without resources |  Major | capacityscheduler | Benjamin Teke | Benjamin Teke |
| [HADOOP-17060](https://issues.apache.org/jira/browse/HADOOP-17060) | listStatus and getFileStatus behave inconsistent in the case of ViewFs implementation for isDirectory |  Major | viewfs | Srinivasu Majeti | Uma Maheswara Rao G |
| [YARN-10312](https://issues.apache.org/jira/browse/YARN-10312) | Add support for yarn logs -logFile to retain backward compatibility |  Major | client | Jim Brennan | Jim Brennan |
| [HDFS-15403](https://issues.apache.org/jira/browse/HDFS-15403) | NPE in FileIoProvider#transferToSocketFully |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-17029](https://issues.apache.org/jira/browse/HADOOP-17029) | ViewFS does not return correct user/group and ACL |  Major | fs, viewfs | Abhishek Das | Abhishek Das |
| [HDFS-15421](https://issues.apache.org/jira/browse/HDFS-15421) | IBR leak causes standby NN to be stuck in safe mode |  Blocker | namenode | Kihwal Lee | Akira Ajisaka |
| [YARN-9903](https://issues.apache.org/jira/browse/YARN-9903) | Support reservations continue looking for Node Labels |  Major | . | Tarun Parimi | Jim Brennan |
| [HADOOP-17097](https://issues.apache.org/jira/browse/HADOOP-17097) | start-build-env.sh fails in branch-3.1 |  Critical | build | Akira Ajisaka | Masatake Iwasaki |
| [HADOOP-17032](https://issues.apache.org/jira/browse/HADOOP-17032) | Handle an internal dir in viewfs having multiple children mount points pointing to different filesystems |  Major | fs, viewfs | Abhishek Das | Abhishek Das |
| [HDFS-15446](https://issues.apache.org/jira/browse/HDFS-15446) | CreateSnapshotOp fails during edit log loading for /.reserved/raw/path with error java.io.FileNotFoundException: Directory does not exist: /.reserved/raw/path |  Major | hdfs | Srinivasu Majeti | Stephen O'Donnell |
| [HDFS-15451](https://issues.apache.org/jira/browse/HDFS-15451) | Restarting name node stuck in safe mode when using provided storage |  Major | namenode | shanyu zhao | shanyu zhao |
| [HADOOP-17120](https://issues.apache.org/jira/browse/HADOOP-17120) | Fix failure of docker image creation due to pip2 install error |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-10348](https://issues.apache.org/jira/browse/YARN-10348) | Allow RM to always cancel tokens after app completes |  Major | yarn | Jim Brennan | Jim Brennan |
| [HDFS-14498](https://issues.apache.org/jira/browse/HDFS-14498) | LeaseManager can loop forever on the file for which create has failed |  Major | namenode | Sergey Shelukhin | Stephen O'Donnell |
| [HADOOP-17130](https://issues.apache.org/jira/browse/HADOOP-17130) | Configuration.getValByRegex() shouldn't update the results while fetching. |  Major | common | Mukund Thakur | Mukund Thakur |
| [HADOOP-17119](https://issues.apache.org/jira/browse/HADOOP-17119) | Jetty upgrade to 9.4.x causes MR app fail with IOException |  Major | . | Bilwa S T | Bilwa S T |
| [MAPREDUCE-7051](https://issues.apache.org/jira/browse/MAPREDUCE-7051) | Fix typo in MultipleOutputFormat |  Trivial | . | ywheel | ywheel |
| [HDFS-15313](https://issues.apache.org/jira/browse/HDFS-15313) | Ensure inodes in active filesystem are not deleted during snapshot delete |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HADOOP-17184](https://issues.apache.org/jira/browse/HADOOP-17184) | Add --mvn-custom-repos parameter to yetus calls |  Major | build | Mingliang Liu | Mingliang Liu |
| [HADOOP-17204](https://issues.apache.org/jira/browse/HADOOP-17204) | Fix typo in Hadoop KMS document |  Trivial | documentation, kms | Akira Ajisaka | Xieming Li |
| [HADOOP-17209](https://issues.apache.org/jira/browse/HADOOP-17209) | Erasure Coding: Native library memory leak |  Major | native | Sean Chow | Sean Chow |
| [HDFS-14852](https://issues.apache.org/jira/browse/HDFS-14852) | Removing from LowRedundancyBlocks does not remove the block from all queues |  Major | namenode | Hui Fei | Hui Fei |
| [YARN-10430](https://issues.apache.org/jira/browse/YARN-10430) | Log improvements in NodeStatusUpdaterImpl |  Minor | nodemanager | Bilwa S T | Bilwa S T |
| [MAPREDUCE-7294](https://issues.apache.org/jira/browse/MAPREDUCE-7294) | Only application master should upload resource to Yarn Shared Cache |  Major | mrv2 | zhenzhao wang | zhenzhao wang |
| [MAPREDUCE-7289](https://issues.apache.org/jira/browse/MAPREDUCE-7289) | Fix wrong comment in LongLong.java |  Trivial | documentation, examples | Akira Ajisaka | Wanqiang Ji |
| [YARN-10393](https://issues.apache.org/jira/browse/YARN-10393) | MR job live lock caused by completed state container leak in heartbeat between node manager and RM |  Major | nodemanager, yarn | zhenzhao wang | Jim Brennan |
| [HDFS-15628](https://issues.apache.org/jira/browse/HDFS-15628) | HttpFS server throws NPE if a file is a symlink |  Major | fs, httpfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15627](https://issues.apache.org/jira/browse/HDFS-15627) | Audit log deletes before collecting blocks |  Major | logging, namenode | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17309](https://issues.apache.org/jira/browse/HADOOP-17309) | Javadoc warnings and errors are ignored in the precommit jobs |  Major | build, documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15639](https://issues.apache.org/jira/browse/HDFS-15639) | [JDK 11] Fix Javadoc errors in hadoop-hdfs-client |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-15618](https://issues.apache.org/jira/browse/HDFS-15618) | Improve datanode shutdown latency |  Major | datanode | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15622](https://issues.apache.org/jira/browse/HDFS-15622) | Deleted blocks linger in the replications queue |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15641](https://issues.apache.org/jira/browse/HDFS-15641) | DataNode could meet deadlock if invoke refreshNameNode |  Critical | . | Hongbing Wang | Hongbing Wang |
| [HDFS-15644](https://issues.apache.org/jira/browse/HDFS-15644) | Failed volumes can cause DNs to stop block reporting |  Major | block placement, datanode | Ahmed Hussein | Ahmed Hussein |
| [YARN-10467](https://issues.apache.org/jira/browse/YARN-10467) | ContainerIdPBImpl objects can be leaked in RMNodeImpl.completedContainers |  Major | resourcemanager | Haibo Chen | Haibo Chen |
| [HADOOP-17340](https://issues.apache.org/jira/browse/HADOOP-17340) | TestLdapGroupsMapping failing -string mismatch in exception validation |  Major | test | Steve Loughran | Steve Loughran |
| [HADOOP-17352](https://issues.apache.org/jira/browse/HADOOP-17352) | Update PATCH\_NAMING\_RULE in the personality file |  Minor | build | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15485](https://issues.apache.org/jira/browse/HDFS-15485) | Fix outdated properties of JournalNode when performing rollback |  Minor | . | Deegue | Deegue |
| [HADOOP-17096](https://issues.apache.org/jira/browse/HADOOP-17096) | ZStandardCompressor throws java.lang.InternalError: Error (generic) |  Major | io | Stephen Jung (Stripe) | Stephen Jung (Stripe) |
| [HADOOP-17358](https://issues.apache.org/jira/browse/HADOOP-17358) | Improve excessive reloading of Configurations |  Major | conf | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15538](https://issues.apache.org/jira/browse/HDFS-15538) | Fix the documentation for dfs.namenode.replication.max-streams in hdfs-default.xml |  Major | . | Xieming Li | Xieming Li |
| [YARN-10485](https://issues.apache.org/jira/browse/YARN-10485) | TimelineConnector swallows InterruptedException |  Major | . | Ahmed Hussein | Ahmed Hussein |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-7288](https://issues.apache.org/jira/browse/MAPREDUCE-7288) | Fix TestLongLong#testRightShift |  Minor | . | Wanqiang Ji | Wanqiang Ji |
| [HDFS-15514](https://issues.apache.org/jira/browse/HDFS-15514) | Remove useless dfs.webhdfs.enabled |  Minor | test | Hui Fei | Hui Fei |
| [HADOOP-17205](https://issues.apache.org/jira/browse/HADOOP-17205) | Move personality file from Yetus to Hadoop repository |  Major | test, yetus | Chao Sun | Chao Sun |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15741](https://issues.apache.org/jira/browse/HADOOP-15741) | [JDK10] Upgrade Maven Javadoc Plugin from 3.0.0-M1 to 3.0.1 |  Minor | build | Akira Ajisaka | Takanobu Asanuma |
| [HDFS-14353](https://issues.apache.org/jira/browse/HDFS-14353) | Erasure Coding: metrics xmitsInProgress become to negative. |  Major | datanode, erasure-coding | Baolong Mao | Baolong Mao |
| [HDFS-15306](https://issues.apache.org/jira/browse/HDFS-15306) | Make mount-table to read from central place ( Let's say from HDFS) |  Major | configuration, hadoop-client | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-16756](https://issues.apache.org/jira/browse/HADOOP-16756) | distcp -update to S3A; abfs, etc always overwrites due to block size mismatch |  Major | fs/s3, tools/distcp | Daisuke Kobayashi | Steve Loughran |
| [HDFS-15322](https://issues.apache.org/jira/browse/HDFS-15322) | Make NflyFS to work when ViewFsOverloadScheme's scheme and target uris schemes are same. |  Major | fs, nflyFs, viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15321](https://issues.apache.org/jira/browse/HDFS-15321) | Make DFSAdmin tool to work with ViewFSOverloadScheme |  Major | dfsadmin, fs, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15330](https://issues.apache.org/jira/browse/HDFS-15330) | Document the ViewFSOverloadScheme details in ViewFS guide |  Major | viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15389](https://issues.apache.org/jira/browse/HDFS-15389) | DFSAdmin should close filesystem and dfsadmin -setBalancerBandwidth should work with ViewFSOverloadScheme |  Major | dfsadmin, viewfsOverloadScheme | Ayush Saxena | Ayush Saxena |
| [HDFS-15394](https://issues.apache.org/jira/browse/HDFS-15394) | Add all available fs.viewfs.overload.scheme.target.\<scheme\>.impl classes in core-default.xml bydefault. |  Major | configuration, viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15387](https://issues.apache.org/jira/browse/HDFS-15387) | FSUsage$DF should consider ViewFSOverloadScheme in processPath |  Minor | viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15418](https://issues.apache.org/jira/browse/HDFS-15418) | ViewFileSystemOverloadScheme should represent mount links as non symlinks |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15427](https://issues.apache.org/jira/browse/HDFS-15427) | Merged ListStatus with Fallback target filesystem and InternalDirViewFS. |  Major | viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15429](https://issues.apache.org/jira/browse/HDFS-15429) | mkdirs should work when parent dir is internalDir and fallback configured. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15436](https://issues.apache.org/jira/browse/HDFS-15436) | Default mount table name used by ViewFileSystem should be configurable |  Major | viewfs, viewfsOverloadScheme | Virajith Jalaparti | Virajith Jalaparti |
| [HDFS-15462](https://issues.apache.org/jira/browse/HDFS-15462) | Add fs.viewfs.overload.scheme.target.ofs.impl to core-default.xml |  Major | configuration, viewfs, viewfsOverloadScheme | Siyao Meng | Siyao Meng |
| [HADOOP-17101](https://issues.apache.org/jira/browse/HADOOP-17101) | Replace Guava Function with Java8+ Function |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17099](https://issues.apache.org/jira/browse/HADOOP-17099) | Replace Guava Predicate with Java8+ Predicate |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17100](https://issues.apache.org/jira/browse/HADOOP-17100) | Replace Guava Supplier with Java8+ Supplier in Hadoop |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15515](https://issues.apache.org/jira/browse/HDFS-15515) | mkdirs on fallback should throw IOE out instead of suppressing and returning false |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17199](https://issues.apache.org/jira/browse/HADOOP-17199) | Backport HADOOP-13230 list/getFileStatus changes for preserved directory markers |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-17228](https://issues.apache.org/jira/browse/HADOOP-17228) | Backport HADOOP-13230 listing changes for preserved directory markers to 3.1.x |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HDFS-15459](https://issues.apache.org/jira/browse/HDFS-15459) | TestBlockTokenWithDFSStriped fails intermittently |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-9776](https://issues.apache.org/jira/browse/HDFS-9776) | TestHAAppend#testMultipleAppendsDuringCatchupTailing is flaky |  Major | . | Vinayakumar B | Ahmed Hussein |
| [HDFS-15643](https://issues.apache.org/jira/browse/HDFS-15643) | EC: Fix checksum computation in case of native encoders |  Blocker | . | Ahmed Hussein | Ayush Saxena |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16990](https://issues.apache.org/jira/browse/HADOOP-16990) | Update Mockserver |  Major | . | Wei-Chiu Chuang | Attila Doroszlai |


