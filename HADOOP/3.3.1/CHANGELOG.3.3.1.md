
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

## Release 3.3.1 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16730](https://issues.apache.org/jira/browse/HADOOP-16730) | ABFS: Support for Shared Access Signatures (SAS) |  Major | fs/azure | Thomas Marqardt | Sneha Vijayarajan |
| [HADOOP-16916](https://issues.apache.org/jira/browse/HADOOP-16916) | ABFS: Delegation SAS generator for integration with Ranger |  Minor | fs/azure | Thomas Marqardt | Thomas Marqardt |
| [HDFS-13183](https://issues.apache.org/jira/browse/HDFS-13183) | Standby NameNode process getBlocks request to reduce Active load |  Major | balancer & mover, namenode | Xiaoqiao He | Xiaoqiao He |
| [HADOOP-17076](https://issues.apache.org/jira/browse/HADOOP-17076) | ABFS: Delegation SAS Generator Updates |  Minor | fs/azure | Thomas Marqardt | Thomas Marqardt |
| [HADOOP-15891](https://issues.apache.org/jira/browse/HADOOP-15891) | Provide Regex Based Mount Point In Inode Tree |  Major | viewfs | zhenzhao wang | zhenzhao wang |
| [HADOOP-17125](https://issues.apache.org/jira/browse/HADOOP-17125) | Using snappy-java in SnappyCodec |  Major | common | DB Tsai | L. C. Hsieh |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16952](https://issues.apache.org/jira/browse/HADOOP-16952) | Add .diff to gitignore |  Minor | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15295](https://issues.apache.org/jira/browse/HDFS-15295) | AvailableSpaceBlockPlacementPolicy should use chooseRandomWithStorageTypeTwoTrial() for better performance. |  Minor | . | Jinglun | Jinglun |
| [HADOOP-16886](https://issues.apache.org/jira/browse/HADOOP-16886) | Add hadoop.http.idle\_timeout.ms to core-default.xml |  Major | . | Wei-Chiu Chuang | Lisheng Sun |
| [HDFS-14283](https://issues.apache.org/jira/browse/HDFS-14283) | DFSInputStream to prefer cached replica |  Major | . | Wei-Chiu Chuang | Lisheng Sun |
| [HDFS-15338](https://issues.apache.org/jira/browse/HDFS-15338) | listOpenFiles() should throw InvalidPathException in case of invalid paths |  Minor | . | Jinglun | Jinglun |
| [YARN-10160](https://issues.apache.org/jira/browse/YARN-10160) | Add auto queue creation related configs to RMWebService#CapacitySchedulerQueueInfo |  Major | . | Prabhu Joseph | Prabhu Joseph |
| [HDFS-15255](https://issues.apache.org/jira/browse/HDFS-15255) | Consider StorageType when DatanodeManager#sortLocatedBlock() |  Major | . | Lisheng Sun | Lisheng Sun |
| [YARN-10260](https://issues.apache.org/jira/browse/YARN-10260) | Allow transitioning queue from DRAINING to RUNNING state |  Major | . | Jonathan Hung | Bilwa S T |
| [HDFS-15356](https://issues.apache.org/jira/browse/HDFS-15356) | Unify configuration \`dfs.ha.allow.stale.reads\` to DFSConfigKeys |  Major | hdfs | Xiaoqiao He | Xiaoqiao He |
| [HADOOP-17042](https://issues.apache.org/jira/browse/HADOOP-17042) | Hadoop distcp throws "ERROR: Tools helper ///usr/lib/hadoop/libexec/tools/hadoop-distcp.sh was not found" |  Minor | tools/distcp | Aki Tanaka | Aki Tanaka |
| [HDFS-15202](https://issues.apache.org/jira/browse/HDFS-15202) | HDFS-client: boost ShortCircuit Cache |  Minor | dfsclient | Danil Lipovoy | Danil Lipovoy |
| [HDFS-15207](https://issues.apache.org/jira/browse/HDFS-15207) | VolumeScanner skip to scan blocks accessed during recent scan peroid |  Minor | datanode | Yang Yun | Yang Yun |
| [HDFS-15369](https://issues.apache.org/jira/browse/HDFS-15369) | Refactor method VolumeScanner#runLoop() |  Minor | datanode | Yang Yun | Yang Yun |
| [HADOOP-14698](https://issues.apache.org/jira/browse/HADOOP-14698) | Make copyFromLocal's -t option available for put as well |  Major | . | Andras Bokor | Andras Bokor |
| [YARN-6492](https://issues.apache.org/jira/browse/YARN-6492) | Generate queue metrics for each partition |  Major | capacity scheduler | Jonathan Hung | Manikandan R |
| [HADOOP-17016](https://issues.apache.org/jira/browse/HADOOP-17016) | Adding Common Counters in ABFS |  Major | fs/azure | Mehakmeet Singh | Mehakmeet Singh |
| [HADOOP-14566](https://issues.apache.org/jira/browse/HADOOP-14566) | Add seek support for SFTP FileSystem |  Minor | fs | Azhagu Selvan SP | Mikhail Pryakhin |
| [HADOOP-17047](https://issues.apache.org/jira/browse/HADOOP-17047) | TODO comments exist in trunk while the related issues are already fixed. |  Trivial | . | Rungroj Maipradit | Rungroj Maipradit |
| [HADOOP-17020](https://issues.apache.org/jira/browse/HADOOP-17020) | Improve RawFileSystem Performance |  Minor | fs | Rajesh Balamohan | Mehakmeet Singh |
| [HDFS-15406](https://issues.apache.org/jira/browse/HDFS-15406) | Improve the speed of Datanode Block Scan |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-17090](https://issues.apache.org/jira/browse/HADOOP-17090) | Increase precommit job timeout from 5 hours to 20 hours |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10297](https://issues.apache.org/jira/browse/YARN-10297) | TestContinuousScheduling#testFairSchedulerContinuousSchedulingInitTime fails intermittently |  Major | . | Jonathan Hung | Jim Brennan |
| [HADOOP-17127](https://issues.apache.org/jira/browse/HADOOP-17127) | Use RpcMetrics.TIMEUNIT to initialize rpc queueTime and processingTime |  Minor | common | Jim Brennan | Jim Brennan |
| [HDFS-15404](https://issues.apache.org/jira/browse/HDFS-15404) | ShellCommandFencer should expose info about source |  Major | . | Chen Liang | Chen Liang |
| [HADOOP-17147](https://issues.apache.org/jira/browse/HADOOP-17147) | Dead link in hadoop-kms/index.md.vm |  Minor | documentation, kms | Akira Ajisaka | Xieming Li |
| [YARN-10343](https://issues.apache.org/jira/browse/YARN-10343) | Legacy RM UI should include labeled metrics for allocated, total, and reserved resources. |  Major | . | Eric Payne | Eric Payne |
| [YARN-1529](https://issues.apache.org/jira/browse/YARN-1529) | Add Localization overhead metrics to NM |  Major | nodemanager | Gera Shegalov | Jim Brennan |
| [YARN-10251](https://issues.apache.org/jira/browse/YARN-10251) | Show extended resources on legacy RM UI. |  Major | . | Eric Payne | Eric Payne |
| [HDFS-15493](https://issues.apache.org/jira/browse/HDFS-15493) | Update block map and name cache in parallel while loading fsimage. |  Major | namenode | Chengwei Wang | Chengwei Wang |
| [HADOOP-17057](https://issues.apache.org/jira/browse/HADOOP-17057) | ABFS driver enhancement - Allow customizable translation from AAD SPNs and security groups to Linux user and group |  Major | fs/azure | Karthik Amarnath | Karthik Amarnath |
| [HADOOP-17194](https://issues.apache.org/jira/browse/HADOOP-17194) | Adding Context class for AbfsClient to pass AbfsConfigurations to limit number of parameters |  Major | fs/azure | Mehakmeet Singh | Mehakmeet Singh |
| [HADOOP-17065](https://issues.apache.org/jira/browse/HADOOP-17065) | Adding Network Counters in ABFS |  Major | fs/azure | Mehakmeet Singh | Mehakmeet Singh |
| [HADOOP-17159](https://issues.apache.org/jira/browse/HADOOP-17159) | Make UGI support forceful relogin from keytab ignoring the last login time |  Major | security | Sandeep Guggilam | Sandeep Guggilam |
| [YARN-10353](https://issues.apache.org/jira/browse/YARN-10353) | Log vcores used and cumulative cpu in containers monitor |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10369](https://issues.apache.org/jira/browse/YARN-10369) | Make NMTokenSecretManagerInRM sending NMToken for nodeId DEBUG |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10390](https://issues.apache.org/jira/browse/YARN-10390) | LeafQueue: retain user limits cache across assignContainers() calls |  Major | capacity scheduler, capacityscheduler | Muhammad Samir Khan | Muhammad Samir Khan |
| [HDFS-15574](https://issues.apache.org/jira/browse/HDFS-15574) | Remove unnecessary sort of block list in DirectoryScanner |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-15581](https://issues.apache.org/jira/browse/HDFS-15581) | Access Controlled HTTPFS Proxy |  Minor | httpfs | Richard | Richard |
| [HADOOP-17267](https://issues.apache.org/jira/browse/HADOOP-17267) | Add debug-level logs in Filesystem#close |  Minor | fs | Karen Coppage | Karen Coppage |
| [HDFS-15415](https://issues.apache.org/jira/browse/HDFS-15415) | Reduce locking in Datanode DirectoryScanner |  Major | datanode | Stephen O'Donnell | Stephen O'Donnell |
| [YARN-10451](https://issues.apache.org/jira/browse/YARN-10451) | RM (v1) UI NodesPage can NPE when yarn.io/gpu resource type is defined. |  Major | . | Eric Payne | Eric Payne |
| [HADOOP-17021](https://issues.apache.org/jira/browse/HADOOP-17021) | Add concat fs command |  Minor | fs | Jinglun | Jinglun |
| [MAPREDUCE-7301](https://issues.apache.org/jira/browse/MAPREDUCE-7301) | Expose Mini MR Cluster attribute for testing |  Minor | test | Swaroopa Kadam | Swaroopa Kadam |
| [HDFS-15567](https://issues.apache.org/jira/browse/HDFS-15567) | [SBN Read] HDFS should expose msync() API to allow downstream applications call it explicitly. |  Major | ha, hdfs-client | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-16878](https://issues.apache.org/jira/browse/HADOOP-16878) | FileUtil.copy() to throw IOException if the source and destination are the same |  Major | . | Gabor Bota | Gabor Bota |
| [YARN-10450](https://issues.apache.org/jira/browse/YARN-10450) | Add cpu and memory utilization per node and cluster-wide metrics |  Minor | yarn | Jim Brennan | Jim Brennan |
| [YARN-10475](https://issues.apache.org/jira/browse/YARN-10475) | Scale RM-NM heartbeat interval based on node utilization |  Minor | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15665](https://issues.apache.org/jira/browse/HDFS-15665) | Balancer logging improvement |  Major | balancer & mover | Konstantin Shvachko | Konstantin Shvachko |
| [HADOOP-17342](https://issues.apache.org/jira/browse/HADOOP-17342) | Creating a token identifier should not do kerberos name resolution |  Major | common | Jim Brennan | Jim Brennan |
| [YARN-10479](https://issues.apache.org/jira/browse/YARN-10479) | RMProxy should retry on SocketTimeout Exceptions |  Major | yarn | Jim Brennan | Jim Brennan |
| [HDFS-15623](https://issues.apache.org/jira/browse/HDFS-15623) | Respect configured values of rpc.engine |  Major | hdfs | Hector Sandoval Chaverri | Hector Sandoval Chaverri |
| [YARN-10480](https://issues.apache.org/jira/browse/YARN-10480) | replace href tags with ng-href |  Trivial | . | Gabriel Medeiros Coelho | Gabriel Medeiros Coelho |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-15146](https://issues.apache.org/jira/browse/HDFS-15146) | TestBalancerRPCDelay.testBalancerRPCDelay fails intermittently |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15148](https://issues.apache.org/jira/browse/HDFS-15148) | dfs.namenode.send.qop.enabled should not apply to primary NN port |  Major | . | Chen Liang | Chen Liang |
| [HDFS-15281](https://issues.apache.org/jira/browse/HDFS-15281) | ZKFC ignores dfs.namenode.rpc-bind-host and uses dfs.namenode.rpc-address to bind to host address |  Major | ha, namenode | Dhiraj Hegde | Dhiraj Hegde |
| [HDFS-15297](https://issues.apache.org/jira/browse/HDFS-15297) | TestNNHandlesBlockReportPerStorage::blockReport\_02 fails intermittently in trunk |  Major | datanode, test | Mingliang Liu | Ayush Saxena |
| [HDFS-15285](https://issues.apache.org/jira/browse/HDFS-15285) | The same distance and load nodes don't shuffle when consider DataNode load |  Major | . | Lisheng Sun | Lisheng Sun |
| [HDFS-15320](https://issues.apache.org/jira/browse/HDFS-15320) | StringIndexOutOfBoundsException in HostRestrictingAuthorizationFilter |  Major | webhdfs | Akira Ajisaka | Akira Ajisaka |
| [YARN-10256](https://issues.apache.org/jira/browse/YARN-10256) | Refactor TestContainerSchedulerQueuing.testContainerUpdateExecTypeGuaranteedToOpportunistic |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15270](https://issues.apache.org/jira/browse/HDFS-15270) | Account for \*env == NULL in hdfsThreadDestructor |  Major | . | Babneet Singh | Babneet Singh |
| [YARN-8959](https://issues.apache.org/jira/browse/YARN-8959) | TestContainerResizing fails randomly |  Minor | . | Bibin Chundatt | Ahmed Hussein |
| [HADOOP-17025](https://issues.apache.org/jira/browse/HADOOP-17025) | Fix invalid metastore configuration in S3GuardTool tests |  Minor | fs/s3, test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-15339](https://issues.apache.org/jira/browse/HDFS-15339) | TestHDFSCLI fails for user names with the dot/dash character |  Major | test | Yan Xiaole | Yan Xiaole |
| [HDFS-15250](https://issues.apache.org/jira/browse/HDFS-15250) | Setting \`dfs.client.use.datanode.hostname\` to true can crash the system because of unhandled UnresolvedAddressException |  Major | . | Ctest | Ctest |
| [HADOOP-16768](https://issues.apache.org/jira/browse/HADOOP-16768) | SnappyCompressor test cases wrongly assume that the compressed data is always smaller than the input data |  Major | io, test | zhao bo | Akira Ajisaka |
| [HDFS-1820](https://issues.apache.org/jira/browse/HDFS-1820) | FTPFileSystem attempts to close the outputstream even when it is not initialised |  Major | hdfs-client | Sudharsan Sampath | Mikhail Pryakhin |
| [HDFS-14367](https://issues.apache.org/jira/browse/HDFS-14367) | EC: Parameter maxPoolSize in striped reconstruct thread pool isn't affecting number of threads |  Major | ec | Guo Lei | Guo Lei |
| [YARN-10265](https://issues.apache.org/jira/browse/YARN-10265) | Upgrade Netty-all dependency to latest version 4.1.50 to fix ARM support issue |  Major | . | liusheng | liusheng |
| [HADOOP-17044](https://issues.apache.org/jira/browse/HADOOP-17044) | Revert "HADOOP-8143. Change distcp to have -pb on by default" |  Major | tools/distcp | Steve Loughran | Steve Loughran |
| [HADOOP-17024](https://issues.apache.org/jira/browse/HADOOP-17024) | ListStatus on ViewFS root (ls "/") should list the linkFallBack root (configured target root). |  Major | fs, viewfs | Uma Maheswara Rao G | Abhishek Das |
| [YARN-10228](https://issues.apache.org/jira/browse/YARN-10228) | Yarn Service fails if am java opts contains ZK authentication file path |  Major | . | Bilwa S T | Bilwa S T |
| [HADOOP-17049](https://issues.apache.org/jira/browse/HADOOP-17049) | javax.activation-api and jakarta.activation-api define overlapping classes |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17040](https://issues.apache.org/jira/browse/HADOOP-17040) | Fix intermittent failure of ITestBlockingThreadPoolExecutorService |  Minor | fs/s3, test | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-15363](https://issues.apache.org/jira/browse/HDFS-15363) | BlockPlacementPolicyWithNodeGroup should validate if it is initialized by NetworkTopologyWithNodeGroup |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-7002](https://issues.apache.org/jira/browse/HADOOP-7002) | Wrong description of copyFromLocal and copyToLocal in documentation |  Minor | . | Jingguo Yao | Andras Bokor |
| [HADOOP-17052](https://issues.apache.org/jira/browse/HADOOP-17052) | NetUtils.connect() throws unchecked exception (UnresolvedAddressException) causing clients to abort |  Major | net | Dhiraj Hegde | Dhiraj Hegde |
| [HADOOP-17018](https://issues.apache.org/jira/browse/HADOOP-17018) | Intermittent failing of ITestAbfsStreamStatistics in ABFS |  Minor | fs/azure, test | Mehakmeet Singh | Mehakmeet Singh |
| [YARN-10254](https://issues.apache.org/jira/browse/YARN-10254) | CapacityScheduler incorrect User Group Mapping after leaf queue change |  Major | . | Gergely Pollak | Gergely Pollak |
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
| [YARN-10312](https://issues.apache.org/jira/browse/YARN-10312) | Add support for yarn logs -logFile to retain backward compatibility |  Major | client | Jim Brennan | Jim Brennan |
| [HDFS-15403](https://issues.apache.org/jira/browse/HDFS-15403) | NPE in FileIoProvider#transferToSocketFully |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15372](https://issues.apache.org/jira/browse/HDFS-15372) | Files in snapshots no longer see attribute provider permissions |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [MAPREDUCE-7281](https://issues.apache.org/jira/browse/MAPREDUCE-7281) | Fix NoClassDefFoundError on 'mapred minicluster' |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [HADOOP-17029](https://issues.apache.org/jira/browse/HADOOP-17029) | ViewFS does not return correct user/group and ACL |  Major | fs, viewfs | Abhishek Das | Abhishek Das |
| [HADOOP-17089](https://issues.apache.org/jira/browse/HADOOP-17089) | WASB: Update azure-storage-java SDK |  Critical | fs/azure | Thomas Marqardt | Thomas Marqardt |
| [YARN-9903](https://issues.apache.org/jira/browse/YARN-9903) | Support reservations continue looking for Node Labels |  Major | . | Tarun Parimi | Jim Brennan |
| [YARN-10331](https://issues.apache.org/jira/browse/YARN-10331) | Upgrade node.js to 10.21.0 |  Critical | build, yarn-ui-v2 | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17032](https://issues.apache.org/jira/browse/HADOOP-17032) | Handle an internal dir in viewfs having multiple children mount points pointing to different filesystems |  Major | fs, viewfs | Abhishek Das | Abhishek Das |
| [YARN-10318](https://issues.apache.org/jira/browse/YARN-10318) | ApplicationHistory Web UI incorrect column indexing |  Minor | yarn | Andras Gyori | Andras Gyori |
| [YARN-10330](https://issues.apache.org/jira/browse/YARN-10330) | Add missing test scenarios to TestUserGroupMappingPlacementRule and TestAppNameMappingPlacementRule |  Major | capacity scheduler, capacityscheduler, test | Peter Bacsko | Peter Bacsko |
| [HDFS-15446](https://issues.apache.org/jira/browse/HDFS-15446) | CreateSnapshotOp fails during edit log loading for /.reserved/raw/path with error java.io.FileNotFoundException: Directory does not exist: /.reserved/raw/path |  Major | hdfs | Srinivasu Majeti | Stephen O'Donnell |
| [HADOOP-17081](https://issues.apache.org/jira/browse/HADOOP-17081) | MetricsSystem doesn't start the sink adapters on restart |  Minor | metrics | Madhusoodan | Madhusoodan |
| [HDFS-15451](https://issues.apache.org/jira/browse/HDFS-15451) | Restarting name node stuck in safe mode when using provided storage |  Major | namenode | shanyu zhao | shanyu zhao |
| [HADOOP-17117](https://issues.apache.org/jira/browse/HADOOP-17117) | Fix typos in hadoop-aws documentation |  Trivial | documentation, fs/s3 | Sebastian Nagel | Sebastian Nagel |
| [HADOOP-17120](https://issues.apache.org/jira/browse/HADOOP-17120) | Fix failure of docker image creation due to pip2 install error |  Major | . | Masatake Iwasaki | Masatake Iwasaki |
| [YARN-10344](https://issues.apache.org/jira/browse/YARN-10344) | Sync netty versions in hadoop-yarn-csi |  Major | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10341](https://issues.apache.org/jira/browse/YARN-10341) | Yarn Service Container Completed event doesn't get processed |  Critical | . | Bilwa S T | Bilwa S T |
| [HADOOP-17105](https://issues.apache.org/jira/browse/HADOOP-17105) | S3AFS globStatus attempts to resolve symlinks |  Minor | fs/s3 | Jimmy Zuber | Jimmy Zuber |
| [HADOOP-16998](https://issues.apache.org/jira/browse/HADOOP-16998) | WASB : NativeAzureFsOutputStream#close() throwing IllegalArgumentException |  Major | fs/azure | Anoop Sam John | Anoop Sam John |
| [YARN-10348](https://issues.apache.org/jira/browse/YARN-10348) | Allow RM to always cancel tokens after app completes |  Major | yarn | Jim Brennan | Jim Brennan |
| [HDFS-14498](https://issues.apache.org/jira/browse/HDFS-14498) | LeaseManager can loop forever on the file for which create has failed |  Major | namenode | Sergey Shelukhin | Stephen O'Donnell |
| [HADOOP-17130](https://issues.apache.org/jira/browse/HADOOP-17130) | Configuration.getValByRegex() shouldn't update the results while fetching. |  Major | common | Mukund Thakur | Mukund Thakur |
| [HADOOP-17119](https://issues.apache.org/jira/browse/HADOOP-17119) | Jetty upgrade to 9.4.x causes MR app fail with IOException |  Major | . | Bilwa S T | Bilwa S T |
| [YARN-4771](https://issues.apache.org/jira/browse/YARN-4771) | Some containers can be skipped during log aggregation after NM restart |  Major | nodemanager | Jason Darrell Lowe | Jim Brennan |
| [YARN-10367](https://issues.apache.org/jira/browse/YARN-10367) | Failed to get nodejs 10.21.0 when building docker image |  Blocker | build, webapp | Akira Ajisaka | Akira Ajisaka |
| [MAPREDUCE-7051](https://issues.apache.org/jira/browse/MAPREDUCE-7051) | Fix typo in MultipleOutputFormat |  Trivial | . | ywheel | ywheel |
| [HDFS-15313](https://issues.apache.org/jira/browse/HDFS-15313) | Ensure inodes in active filesystem are not deleted during snapshot delete |  Major | snapshots | Shashikant Banerjee | Shashikant Banerjee |
| [HDFS-14950](https://issues.apache.org/jira/browse/HDFS-14950) | missing libhdfspp libs in dist-package |  Major | build, libhdfs++ | Yuan Zhou | Yuan Zhou |
| [YARN-10229](https://issues.apache.org/jira/browse/YARN-10229) | [Federation] Client should be able to submit application to RM directly using normal client conf |  Major | amrmproxy, federation | JohnsonGuo | Bilwa S T |
| [HDFS-15503](https://issues.apache.org/jira/browse/HDFS-15503) | File and directory permissions are not able to be modified from WebUI |  Major | . | Hemanth Boyina | Hemanth Boyina |
| [HADOOP-17184](https://issues.apache.org/jira/browse/HADOOP-17184) | Add --mvn-custom-repos parameter to yetus calls |  Major | build | Mingliang Liu | Mingliang Liu |
| [HDFS-15499](https://issues.apache.org/jira/browse/HDFS-15499) | Clean up httpfs/pom.xml to remove aws-java-sdk-s3 exclusion |  Major | httpfs | Mingliang Liu | Mingliang Liu |
| [HADOOP-17164](https://issues.apache.org/jira/browse/HADOOP-17164) | UGI loginUserFromKeytab doesn't set the last login time |  Major | security | Sandeep Guggilam | Sandeep Guggilam |
| [YARN-4575](https://issues.apache.org/jira/browse/YARN-4575) | ApplicationResourceUsageReport should return ALL  reserved resource |  Major | . | Bibin Chundatt | Bibin Chundatt |
| [YARN-10388](https://issues.apache.org/jira/browse/YARN-10388) | RMNode updatedCapability flag not set while RecommissionNodeTransition |  Major | resourcemanager | Pranjal Protim Borah | Pranjal Protim Borah |
| [HADOOP-17196](https://issues.apache.org/jira/browse/HADOOP-17196) | Fix C/C++ standard warnings |  Major | build | Gautham Banasandra | Gautham Banasandra |
| [HADOOP-17204](https://issues.apache.org/jira/browse/HADOOP-17204) | Fix typo in Hadoop KMS document |  Trivial | documentation, kms | Akira Ajisaka | Xieming Li |
| [HADOOP-17192](https://issues.apache.org/jira/browse/HADOOP-17192) | ITestS3AHugeFilesSSECDiskBlock failing because of bucket overrides |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [YARN-10336](https://issues.apache.org/jira/browse/YARN-10336) | RM page should throw exception when command injected in RM REST API to get applications |  Major | . | Rajshree Mishra | Bilwa S T |
| [YARN-10391](https://issues.apache.org/jira/browse/YARN-10391) | --module-gpu functionality is broken in container-executor |  Major | nodemanager | Eric Badger | Eric Badger |
| [HADOOP-17122](https://issues.apache.org/jira/browse/HADOOP-17122) | Bug in preserving Directory Attributes in DistCp with Atomic Copy |  Major | tools/distcp | Swaminathan Balachandran |  |
| [HDFS-14504](https://issues.apache.org/jira/browse/HDFS-14504) | Rename with Snapshots does not honor quota limit |  Major | . | Shashikant Banerjee | Hemanth Boyina |
| [HADOOP-17209](https://issues.apache.org/jira/browse/HADOOP-17209) | Erasure Coding: Native library memory leak |  Major | native | Sean Chow | Sean Chow |
| [HADOOP-16925](https://issues.apache.org/jira/browse/HADOOP-16925) | MetricsConfig incorrectly loads the configuration whose value is String list in the properties file |  Major | metrics | Jiayi Liu | Jiayi Liu |
| [HADOOP-17220](https://issues.apache.org/jira/browse/HADOOP-17220) | Upgrade slf4j to 1.7.30 ( To Address: CVE-2018-8088) |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-14852](https://issues.apache.org/jira/browse/HDFS-14852) | Removing from LowRedundancyBlocks does not remove the block from all queues |  Major | namenode | Hui Fei | Hui Fei |
| [HDFS-15536](https://issues.apache.org/jira/browse/HDFS-15536) | RBF:  Clear Quota in Router was not consistent |  Critical | . | Hemanth Boyina | Hemanth Boyina |
| [HDFS-15540](https://issues.apache.org/jira/browse/HDFS-15540) | Directories protected from delete can still be moved to the trash |  Major | namenode | Stephen O'Donnell | Stephen O'Donnell |
| [HADOOP-17129](https://issues.apache.org/jira/browse/HADOOP-17129) | Validating storage keys in ABFS correctly |  Major | fs/azure | Mehakmeet Singh | Mehakmeet Singh |
| [HDFS-15471](https://issues.apache.org/jira/browse/HDFS-15471) | TestHDFSContractMultipartUploader fails on trunk |  Major | test | Ahmed Hussein | Steve Loughran |
| [HDFS-15290](https://issues.apache.org/jira/browse/HDFS-15290) | NPE in HttpServer during NameNode startup |  Major | namenode | Konstantin Shvachko | Simbarashe Dzinamarira |
| [HADOOP-17229](https://issues.apache.org/jira/browse/HADOOP-17229) | Test failure as failed request body counted in byte received metric - ITestAbfsNetworkStatistics#testAbfsHttpResponseStatistics |  Major | fs/azure, test | Sneha Vijayarajan | Mehakmeet Singh |
| [YARN-10397](https://issues.apache.org/jira/browse/YARN-10397) | SchedulerRequest should be forwarded to scheduler if custom scheduler supports placement constraints |  Minor | . | Bilwa S T | Bilwa S T |
| [HDFS-15573](https://issues.apache.org/jira/browse/HDFS-15573) | Only log warning if considerLoad and considerStorageType are both true |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [YARN-10430](https://issues.apache.org/jira/browse/YARN-10430) | Log improvements in NodeStatusUpdaterImpl |  Minor | nodemanager | Bilwa S T | Bilwa S T |
| [HADOOP-17246](https://issues.apache.org/jira/browse/HADOOP-17246) | Fix build the hadoop-build Docker image failed |  Major | build | Wanqiang Ji | Wanqiang Ji |
| [HADOOP-15136](https://issues.apache.org/jira/browse/HADOOP-15136) | Typo in rename spec pseudocode |  Major | documentation | Rae Marks |  |
| [HADOOP-17088](https://issues.apache.org/jira/browse/HADOOP-17088) | Failed to load XInclude files with relative path. |  Minor | conf | Yushi Hayasaka | Yushi Hayasaka |
| [MAPREDUCE-7294](https://issues.apache.org/jira/browse/MAPREDUCE-7294) | Only application master should upload resource to Yarn Shared Cache |  Major | mrv2 | zhenzhao wang | zhenzhao wang |
| [HADOOP-17277](https://issues.apache.org/jira/browse/HADOOP-17277) | Correct spelling errors for separator |  Trivial | common | Hui Fei | Hui Fei |
| [MAPREDUCE-7289](https://issues.apache.org/jira/browse/MAPREDUCE-7289) | Fix wrong comment in LongLong.java |  Trivial | documentation, examples | Akira Ajisaka | Wanqiang Ji |
| [YARN-9809](https://issues.apache.org/jira/browse/YARN-9809) | NMs should supply a health status when registering with RM |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-17300](https://issues.apache.org/jira/browse/HADOOP-17300) | FileSystem.DirListingIterator.next() call should return NoSuchElementException |  Major | common, fs | Mukund Thakur | Mukund Thakur |
| [YARN-10393](https://issues.apache.org/jira/browse/YARN-10393) | MR job live lock caused by completed state container leak in heartbeat between node manager and RM |  Major | nodemanager, yarn | zhenzhao wang | Jim Brennan |
| [YARN-10455](https://issues.apache.org/jira/browse/YARN-10455) | TestNMProxy.testNMProxyRPCRetry is not consistent |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17223](https://issues.apache.org/jira/browse/HADOOP-17223) | update  org.apache.httpcomponents:httpclient to 4.5.13 and httpcore to 4.4.13 |  Blocker | . | Pranav Bheda | Pranav Bheda |
| [HDFS-15628](https://issues.apache.org/jira/browse/HDFS-15628) | HttpFS server throws NPE if a file is a symlink |  Major | fs, httpfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15627](https://issues.apache.org/jira/browse/HDFS-15627) | Audit log deletes before collecting blocks |  Major | logging, namenode | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17309](https://issues.apache.org/jira/browse/HADOOP-17309) | Javadoc warnings and errors are ignored in the precommit jobs |  Major | build, documentation | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15626](https://issues.apache.org/jira/browse/HDFS-15626) | TestWebHDFS.testLargeDirectory failing |  Major | test, webhdfs | Mukund Thakur | Mukund Thakur |
| [HADOOP-17298](https://issues.apache.org/jira/browse/HADOOP-17298) | Backslash in username causes build failure in the environment started by start-build-env.sh. |  Minor | build | Takeru Kuramoto | Takeru Kuramoto |
| [HDFS-15639](https://issues.apache.org/jira/browse/HDFS-15639) | [JDK 11] Fix Javadoc errors in hadoop-hdfs-client |  Major | . | Takanobu Asanuma | Takanobu Asanuma |
| [MAPREDUCE-7303](https://issues.apache.org/jira/browse/MAPREDUCE-7303) | Fix TestJobResourceUploader failures after HADOOP-16878 |  Major | test | Peter Bacsko | Peter Bacsko |
| [HDFS-15618](https://issues.apache.org/jira/browse/HDFS-15618) | Improve datanode shutdown latency |  Major | datanode | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15622](https://issues.apache.org/jira/browse/HDFS-15622) | Deleted blocks linger in the replications queue |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17308](https://issues.apache.org/jira/browse/HADOOP-17308) | WASB : PageBlobOutputStream succeeding hflush even when underlying flush to storage failed |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HDFS-15641](https://issues.apache.org/jira/browse/HDFS-15641) | DataNode could meet deadlock if invoke refreshNameNode |  Critical | . | Hongbing Wang | Hongbing Wang |
| [HADOOP-17328](https://issues.apache.org/jira/browse/HADOOP-17328) | LazyPersist Overwrite fails in direct write mode |  Major | . | Ayush Saxena | Ayush Saxena |
| [HDFS-15644](https://issues.apache.org/jira/browse/HDFS-15644) | Failed volumes can cause DNs to stop block reporting |  Major | block placement, datanode | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17236](https://issues.apache.org/jira/browse/HADOOP-17236) | Bump up snakeyaml to 1.26 to mitigate CVE-2017-18640 |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-10467](https://issues.apache.org/jira/browse/YARN-10467) | ContainerIdPBImpl objects can be leaked in RMNodeImpl.completedContainers |  Major | resourcemanager | Haibo Chen | Haibo Chen |
| [HADOOP-17329](https://issues.apache.org/jira/browse/HADOOP-17329) | mvn site commands fails due to MetricsSystemImpl changes |  Major | . | Xiaoqiao He | Xiaoqiao He |
| [HADOOP-17340](https://issues.apache.org/jira/browse/HADOOP-17340) | TestLdapGroupsMapping failing -string mismatch in exception validation |  Major | test | Steve Loughran | Steve Loughran |
| [HADOOP-17352](https://issues.apache.org/jira/browse/HADOOP-17352) | Update PATCH\_NAMING\_RULE in the personality file |  Minor | build | Akira Ajisaka | Akira Ajisaka |
| [YARN-10458](https://issues.apache.org/jira/browse/YARN-10458) | Hive On Tez queries fails upon submission to dynamically created pools |  Major | resourcemanager | Anand Srinivasan | Peter Bacsko |
| [HDFS-15485](https://issues.apache.org/jira/browse/HDFS-15485) | Fix outdated properties of JournalNode when performing rollback |  Minor | . | Deegue | Deegue |
| [HADOOP-17096](https://issues.apache.org/jira/browse/HADOOP-17096) | ZStandardCompressor throws java.lang.InternalError: Error (generic) |  Major | io | Stephen Jung (Stripe) | Stephen Jung (Stripe) |
| [HADOOP-17327](https://issues.apache.org/jira/browse/HADOOP-17327) | NPE when starting MiniYARNCluster from hadoop-client-minicluster |  Critical | . | Chao Sun |  |
| [HADOOP-17324](https://issues.apache.org/jira/browse/HADOOP-17324) | Don't relocate org.bouncycastle in shaded client jars |  Critical | . | Chao Sun | Chao Sun |
| [HADOOP-17373](https://issues.apache.org/jira/browse/HADOOP-17373) | hadoop-client-integration-tests doesn't work when building with skipShade |  Major | . | Chao Sun | Chao Sun |
| [HADOOP-17365](https://issues.apache.org/jira/browse/HADOOP-17365) | Contract test for renaming over existing file is too lenient |  Minor | test | Attila Doroszlai | Attila Doroszlai |
| [HADOOP-17358](https://issues.apache.org/jira/browse/HADOOP-17358) | Improve excessive reloading of Configurations |  Major | conf | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15538](https://issues.apache.org/jira/browse/HDFS-15538) | Fix the documentation for dfs.namenode.replication.max-streams in hdfs-default.xml |  Major | . | Xieming Li | Xieming Li |
| [YARN-10485](https://issues.apache.org/jira/browse/YARN-10485) | TimelineConnector swallows InterruptedException |  Major | . | Ahmed Hussein | Ahmed Hussein |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [MAPREDUCE-7288](https://issues.apache.org/jira/browse/MAPREDUCE-7288) | Fix TestLongLong#testRightShift |  Minor | . | Wanqiang Ji | Wanqiang Ji |
| [HDFS-15514](https://issues.apache.org/jira/browse/HDFS-15514) | Remove useless dfs.webhdfs.enabled |  Minor | test | Hui Fei | Hui Fei |
| [HADOOP-17205](https://issues.apache.org/jira/browse/HADOOP-17205) | Move personality file from Yetus to Hadoop repository |  Major | test, yetus | Chao Sun | Chao Sun |
| [HDFS-15564](https://issues.apache.org/jira/browse/HDFS-15564) | Add Test annotation for TestPersistBlocks#testRestartDfsWithSync |  Minor | hdfs | Hui Fei | Hui Fei |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-16319](https://issues.apache.org/jira/browse/HADOOP-16319) | S3A Etag tests fail with default encryption enabled on bucket |  Minor | fs/s3, test | Ben Roling | Ben Roling |
| [HADOOP-16858](https://issues.apache.org/jira/browse/HADOOP-16858) | S3Guard fsck: Add option to remove orphaned entries |  Major | fs/s3 | Gabor Bota | Gabor Bota |
| [HADOOP-16941](https://issues.apache.org/jira/browse/HADOOP-16941) | ITestS3GuardOutOfBandOperations.testListingDelete failing on versioned bucket |  Minor | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-16855](https://issues.apache.org/jira/browse/HADOOP-16855) | ABFS: hadoop-dist fails to add wildfly in class path for hadoop-azure |  Major | build, fs/azure | Sneha Vijayarajan | Bilahari T H |
| [HADOOP-16857](https://issues.apache.org/jira/browse/HADOOP-16857) | ABFS: Optimize HttpRequest retry triggers |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HADOOP-17002](https://issues.apache.org/jira/browse/HADOOP-17002) | ABFS: Avoid storage calls to check if the account is HNS enabled or not |  Minor | fs/azure | Bilahari T H | Bilahari T H |
| [HDFS-15305](https://issues.apache.org/jira/browse/HDFS-15305) | Extend ViewFS and provide ViewFSOverloadScheme implementation with scheme configurable. |  Major | fs, hadoop-client, hdfs-client, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10257](https://issues.apache.org/jira/browse/YARN-10257) | FS-CS converter: skip increment properties for mem/vcores and fix DRF check |  Major | . | Peter Bacsko | Peter Bacsko |
| [YARN-10259](https://issues.apache.org/jira/browse/YARN-10259) | Reserved Containers not allocated from available space of other nodes in CandidateNodeSet in MultiNodePlacement |  Major | capacityscheduler | Prabhu Joseph | Prabhu Joseph |
| [HDFS-15306](https://issues.apache.org/jira/browse/HDFS-15306) | Make mount-table to read from central place ( Let's say from HDFS) |  Major | configuration, hadoop-client | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-16756](https://issues.apache.org/jira/browse/HADOOP-16756) | distcp -update to S3A; abfs, etc always overwrites due to block size mismatch |  Major | fs/s3, tools/distcp | Daisuke Kobayashi | Steve Loughran |
| [HDFS-15322](https://issues.apache.org/jira/browse/HDFS-15322) | Make NflyFS to work when ViewFsOverloadScheme's scheme and target uris schemes are same. |  Major | fs, nflyFs, viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10108](https://issues.apache.org/jira/browse/YARN-10108) | FS-CS converter: nestedUserQueue with default rule results in invalid queue mapping |  Major | . | Prabhu Joseph | Gergely Pollak |
| [HADOOP-16852](https://issues.apache.org/jira/browse/HADOOP-16852) | ABFS: Send error back to client for Read Ahead request failure |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HADOOP-17053](https://issues.apache.org/jira/browse/HADOOP-17053) | ABFS: FS initialize fails for incompatible account-agnostic Token Provider setting |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-15321](https://issues.apache.org/jira/browse/HDFS-15321) | Make DFSAdmin tool to work with ViewFSOverloadScheme |  Major | dfsadmin, fs, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-16568](https://issues.apache.org/jira/browse/HADOOP-16568) | S3A FullCredentialsTokenBinding fails if local credentials are unset |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [YARN-10284](https://issues.apache.org/jira/browse/YARN-10284) | Add lazy initialization of LogAggregationFileControllerFactory in LogServlet |  Major | log-aggregation, yarn | Adam Antal | Adam Antal |
| [HDFS-15330](https://issues.apache.org/jira/browse/HDFS-15330) | Document the ViewFSOverloadScheme details in ViewFS guide |  Major | viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15389](https://issues.apache.org/jira/browse/HDFS-15389) | DFSAdmin should close filesystem and dfsadmin -setBalancerBandwidth should work with ViewFSOverloadScheme |  Major | dfsadmin, viewfsOverloadScheme | Ayush Saxena | Ayush Saxena |
| [HDFS-15394](https://issues.apache.org/jira/browse/HDFS-15394) | Add all available fs.viewfs.overload.scheme.target.\<scheme\>.impl classes in core-default.xml bydefault. |  Major | configuration, viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15387](https://issues.apache.org/jira/browse/HDFS-15387) | FSUsage$DF should consider ViewFSOverloadScheme in processPath |  Minor | viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10292](https://issues.apache.org/jira/browse/YARN-10292) | FS-CS converter: add an option to enable asynchronous scheduling in CapacityScheduler |  Major | fairscheduler | Benjamin Teke | Benjamin Teke |
| [HADOOP-17004](https://issues.apache.org/jira/browse/HADOOP-17004) | ABFS: Improve the ABFS driver documentation |  Minor | fs/azure | Bilahari T H | Bilahari T H |
| [HDFS-15418](https://issues.apache.org/jira/browse/HDFS-15418) | ViewFileSystemOverloadScheme should represent mount links as non symlinks |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-9930](https://issues.apache.org/jira/browse/YARN-9930) | Support max running app logic for CapacityScheduler |  Major | capacity scheduler, capacityscheduler | zhoukang | Peter Bacsko |
| [HDFS-15427](https://issues.apache.org/jira/browse/HDFS-15427) | Merged ListStatus with Fallback target filesystem and InternalDirViewFS. |  Major | viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [YARN-10316](https://issues.apache.org/jira/browse/YARN-10316) | FS-CS converter: convert maxAppsDefault, maxRunningApps settings |  Major | . | Peter Bacsko | Peter Bacsko |
| [HADOOP-17054](https://issues.apache.org/jira/browse/HADOOP-17054) | ABFS: Fix idempotency test failures when SharedKey is set as AuthType |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HADOOP-17050](https://issues.apache.org/jira/browse/HADOOP-17050) | S3A to support additional token issuers |  Minor | fs/s3 | Gabor Bota | Steve Loughran |
| [HADOOP-17015](https://issues.apache.org/jira/browse/HADOOP-17015) | ABFS: Make PUT and POST operations idempotent |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-15429](https://issues.apache.org/jira/browse/HDFS-15429) | mkdirs should work when parent dir is internalDir and fallback configured. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15436](https://issues.apache.org/jira/browse/HDFS-15436) | Default mount table name used by ViewFileSystem should be configurable |  Major | viewfs, viewfsOverloadScheme | Virajith Jalaparti | Virajith Jalaparti |
| [HADOOP-16798](https://issues.apache.org/jira/browse/HADOOP-16798) | job commit failure in S3A MR magic committer test |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [YARN-10325](https://issues.apache.org/jira/browse/YARN-10325) | Document max-parallel-apps for Capacity Scheduler |  Major | capacity scheduler, capacityscheduler | Peter Bacsko | Peter Bacsko |
| [HADOOP-16961](https://issues.apache.org/jira/browse/HADOOP-16961) | ABFS: Adding metrics to AbfsInputStream (AbfsInputStreamStatistics) |  Major | fs/azure | Gabor Bota | Mehakmeet Singh |
| [HADOOP-17086](https://issues.apache.org/jira/browse/HADOOP-17086) | ABFS: Fix the parsing errors in ABFS Driver with creation Time (being returned in ListPath) |  Major | fs/azure | Ishani | Bilahari T H |
| [HADOOP-17111](https://issues.apache.org/jira/browse/HADOOP-17111) | Replace Guava Optional with Java8+ Optional |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17058](https://issues.apache.org/jira/browse/HADOOP-17058) | Support for Appendblob in abfs driver |  Major | . | Ishani | Ishani |
| [HDFS-15462](https://issues.apache.org/jira/browse/HDFS-15462) | Add fs.viewfs.overload.scheme.target.ofs.impl to core-default.xml |  Major | configuration, viewfs, viewfsOverloadScheme | Siyao Meng | Siyao Meng |
| [HADOOP-17022](https://issues.apache.org/jira/browse/HADOOP-17022) | Tune S3A listFiles() api. |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [HADOOP-17101](https://issues.apache.org/jira/browse/HADOOP-17101) | Replace Guava Function with Java8+ Function |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17099](https://issues.apache.org/jira/browse/HADOOP-17099) | Replace Guava Predicate with Java8+ Predicate |  Minor | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-16682](https://issues.apache.org/jira/browse/HADOOP-16682) | Remove unnecessary ABFS toString() invocations |  Minor | fs/azure | Jeetesh Mangwani | Bilahari T H |
| [HDFS-15478](https://issues.apache.org/jira/browse/HDFS-15478) | When Empty mount points, we are assigning fallback link to self. But it should not use full URI for target fs. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17100](https://issues.apache.org/jira/browse/HADOOP-17100) | Replace Guava Supplier with Java8+ Supplier in Hadoop |  Major | . | Ahmed Hussein | Ahmed Hussein |
| [HADOOP-17132](https://issues.apache.org/jira/browse/HADOOP-17132) | ABFS: Fix For Idempotency code |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HADOOP-17092](https://issues.apache.org/jira/browse/HADOOP-17092) | ABFS: Long waits and unintended retries when multiple threads try to fetch token using ClientCreds |  Major | fs/azure | Sneha Vijayarajan | Bilahari T H |
| [HADOOP-17131](https://issues.apache.org/jira/browse/HADOOP-17131) | Refactor S3A Listing code for better isolation |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [HADOOP-17137](https://issues.apache.org/jira/browse/HADOOP-17137) | ABFS: Tests ITestAbfsNetworkStatistics need to be config setting agnostic |  Minor | fs/azure, test | Sneha Vijayarajan | Bilahari T H |
| [HADOOP-17149](https://issues.apache.org/jira/browse/HADOOP-17149) | ABFS: Test failure: testFailedRequestWhenCredentialsNotCorrect fails when run with SharedKey |  Minor | fs/azure | Sneha Vijayarajan | Bilahari T H |
| [HADOOP-17163](https://issues.apache.org/jira/browse/HADOOP-17163) | ABFS: Add debug log for rename failures |  Major | fs/azure | Bilahari T H | Bilahari T H |
| [HDFS-15515](https://issues.apache.org/jira/browse/HDFS-15515) | mkdirs on fallback should throw IOE out instead of suppressing and returning false |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-13230](https://issues.apache.org/jira/browse/HADOOP-13230) | S3A to optionally retain directory markers |  Major | fs/s3 | Aaron Fabbri | Steve Loughran |
| [HADOOP-14124](https://issues.apache.org/jira/browse/HADOOP-14124) | S3AFileSystem silently deletes "fake" directories when writing a file. |  Minor | fs, fs/s3 | Joel Baranick |  |
| [HADOOP-16966](https://issues.apache.org/jira/browse/HADOOP-16966) | ABFS: Upgrade Store REST API Version to 2019-12-12 |  Major | fs/azure | Ishani | Sneha Vijayarajan |
| [HDFS-15533](https://issues.apache.org/jira/browse/HDFS-15533) | Provide DFS API compatible class(ViewDistributedFileSystem), but use ViewFileSystemOverloadScheme inside |  Major | dfs, viewfs | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17074](https://issues.apache.org/jira/browse/HADOOP-17074) | Optimise s3a Listing to be fully asynchronous. |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [HDFS-15529](https://issues.apache.org/jira/browse/HDFS-15529) | getChildFilesystems should include fallback fs as well |  Critical | viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17167](https://issues.apache.org/jira/browse/HADOOP-17167) | ITestS3AEncryptionWithDefaultS3Settings fails if default bucket encryption != KMS |  Minor | fs/s3 | Steve Loughran | Mukund Thakur |
| [HADOOP-17227](https://issues.apache.org/jira/browse/HADOOP-17227) | improve s3guard markers command line tool |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [YARN-10332](https://issues.apache.org/jira/browse/YARN-10332) | RESOURCE\_UPDATE event was repeatedly registered in DECOMMISSIONING state |  Minor | resourcemanager | yehuanhuan | yehuanhuan |
| [HDFS-15558](https://issues.apache.org/jira/browse/HDFS-15558) | ViewDistributedFileSystem#recoverLease should call super.recoverLease when there are no mounts configured |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17181](https://issues.apache.org/jira/browse/HADOOP-17181) | Handle transient stream read failures in FileSystem contract tests |  Minor | fs/s3 | Steve Loughran |  |
| [HDFS-15555](https://issues.apache.org/jira/browse/HDFS-15555) | RBF: Refresh cacheNS when SocketException occurs |  Major | rbf | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15532](https://issues.apache.org/jira/browse/HDFS-15532) | listFiles on root/InternalDir will fail if fallback root has file |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15578](https://issues.apache.org/jira/browse/HDFS-15578) | Fix the rename issues with fallback fs enabled |  Major | viewfs, viewfsOverloadScheme | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-15585](https://issues.apache.org/jira/browse/HDFS-15585) | ViewDFS#getDelegationToken should not throw UnsupportedOperationException. |  Major | . | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HADOOP-17215](https://issues.apache.org/jira/browse/HADOOP-17215) | ABFS: Support for conditional overwrite |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-14811](https://issues.apache.org/jira/browse/HDFS-14811) | RBF: TestRouterRpc#testErasureCoding is flaky |  Major | rbf | Chen Zhang | Chen Zhang |
| [HADOOP-17023](https://issues.apache.org/jira/browse/HADOOP-17023) | Tune listStatus() api of s3a. |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [HADOOP-17279](https://issues.apache.org/jira/browse/HADOOP-17279) | ABFS: Test testNegativeScenariosForCreateOverwriteDisabled fails for non-HNS account |  Major | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HADOOP-17183](https://issues.apache.org/jira/browse/HADOOP-17183) | ABFS: Enable checkaccess API |  Major | fs/azure | Bilahari T H | Bilahari T H |
| [HDFS-15613](https://issues.apache.org/jira/browse/HDFS-15613) | RBF: Router FSCK fails after HDFS-14442 |  Major | rbf | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17293](https://issues.apache.org/jira/browse/HADOOP-17293) |  S3A to always probe S3 in S3A getFileStatus on non-auth paths |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HDFS-15620](https://issues.apache.org/jira/browse/HDFS-15620) | RBF: Fix test failures after HADOOP-17281 |  Major | rbf, test | Akira Ajisaka | Akira Ajisaka |
| [HADOOP-17261](https://issues.apache.org/jira/browse/HADOOP-17261) | s3a rename() now requires s3:deleteObjectVersion permission |  Major | fs/s3 | Steve Loughran | Steve Loughran |
| [HADOOP-16915](https://issues.apache.org/jira/browse/HADOOP-16915) | ABFS: Test failure ITestAzureBlobFileSystemRandomRead.testRandomReadPerformance |  Major | . | Bilahari T H | Bilahari T H |
| [HADOOP-17166](https://issues.apache.org/jira/browse/HADOOP-17166) | ABFS: configure output stream thread pool |  Minor | fs/azure | Bilahari T H | Bilahari T H |
| [HADOOP-17301](https://issues.apache.org/jira/browse/HADOOP-17301) | ABFS: read-ahead error reporting breaks buffer management |  Critical | fs/azure | Sneha Vijayarajan | Sneha Vijayarajan |
| [HDFS-15459](https://issues.apache.org/jira/browse/HDFS-15459) | TestBlockTokenWithDFSStriped fails intermittently |  Major | hdfs | Ahmed Hussein | Ahmed Hussein |
| [HDFS-15461](https://issues.apache.org/jira/browse/HDFS-15461) | TestDFSClientRetries#testGetFileChecksum fails intermittently |  Major | dfsclient, test | Ahmed Hussein | Ahmed Hussein |
| [HDFS-9776](https://issues.apache.org/jira/browse/HDFS-9776) | TestHAAppend#testMultipleAppendsDuringCatchupTailing is flaky |  Major | . | Vinayakumar B | Ahmed Hussein |
| [HDFS-15657](https://issues.apache.org/jira/browse/HDFS-15657) | RBF: TestRouter#testNamenodeHeartBeatEnableDefault fails by BindException |  Major | rbf, test | Akira Ajisaka | Akira Ajisaka |
| [HDFS-15643](https://issues.apache.org/jira/browse/HDFS-15643) | EC: Fix checksum computation in case of native encoders |  Blocker | . | Ahmed Hussein | Ayush Saxena |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-17055](https://issues.apache.org/jira/browse/HADOOP-17055) | Remove residual code of Ozone |  Major | . | Wanqiang Ji | Wanqiang Ji |
| [YARN-10274](https://issues.apache.org/jira/browse/YARN-10274) | Merge QueueMapping and QueueMappingEntity |  Major | yarn | Gergely Pollak | Gergely Pollak |
| [YARN-10281](https://issues.apache.org/jira/browse/YARN-10281) | Redundant QueuePath usage in UserGroupMappingPlacementRule and AppNameMappingPlacementRule |  Major | . | Gergely Pollak | Gergely Pollak |
| [YARN-10279](https://issues.apache.org/jira/browse/YARN-10279) | Avoid unnecessary QueueMappingEntity creations |  Minor | . | Gergely Pollak | Hudáky Márton Gyula |
| [YARN-10277](https://issues.apache.org/jira/browse/YARN-10277) | CapacityScheduler test TestUserGroupMappingPlacementRule should build proper hierarchy |  Major | . | Gergely Pollak | Szilard Nemeth |
| [HADOOP-17281](https://issues.apache.org/jira/browse/HADOOP-17281) | Implement FileSystem.listStatusIterator() in S3AFileSystem |  Major | fs/s3 | Mukund Thakur | Mukund Thakur |
| [HADOOP-16990](https://issues.apache.org/jira/browse/HADOOP-16990) | Update Mockserver |  Major | . | Wei-Chiu Chuang | Attila Doroszlai |


