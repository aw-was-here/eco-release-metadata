
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
# Hadoop Changelog

## Release 2.8.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7933](https://issues.apache.org/jira/browse/HDFS-7933) | fsck should also report decommissioning replicas. |  Major | namenode | Jitendra Nath Pandey | Xiaoyu Yao |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8009](https://issues.apache.org/jira/browse/HDFS-8009) | Signal congestion on the DataNode |  Major | datanode | Haohui Mai | Haohui Mai |
| [HDFS-8008](https://issues.apache.org/jira/browse/HDFS-8008) | Support client-side back off when the datanodes are congested |  Major | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-7891](https://issues.apache.org/jira/browse/HDFS-7891) | A block placement policy with best rack failure tolerance |  Minor | namenode | Walter Su | Walter Su |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8490](https://issues.apache.org/jira/browse/HDFS-8490) | Typo in trace enabled log in ExceptionHandler of WebHDFS |  Trivial | webhdfs | Jakob Homan | Archana T |
| [HDFS-8443](https://issues.apache.org/jira/browse/HDFS-8443) | Document dfs.namenode.service.handler.count in hdfs-site.xml |  Major | documentation | Akira AJISAKA | J.Andreina |
| [HDFS-8397](https://issues.apache.org/jira/browse/HDFS-8397) | Refactor the error handling code in DataStreamer |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8394](https://issues.apache.org/jira/browse/HDFS-8394) | Move getAdditionalBlock() and related functionalities into a separate class |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8357](https://issues.apache.org/jira/browse/HDFS-8357) | Consolidate parameters of INode.CleanSubtree() into a parameter objects. |  Major | . | Haohui Mai | Li Lu |
| [HDFS-8350](https://issues.apache.org/jira/browse/HDFS-8350) | Remove old webhdfs.xml and other outdated documentation stuff |  Major | documentation | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-8327](https://issues.apache.org/jira/browse/HDFS-8327) | Simplify quota calculations for snapshots and truncate |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8284](https://issues.apache.org/jira/browse/HDFS-8284) | Update documentation about how to use HTrace with HDFS |  Major | documentation | Masatake Iwasaki | Masatake Iwasaki |
| [HDFS-8283](https://issues.apache.org/jira/browse/HDFS-8283) | DataStreamer cleanup and some minor improvement |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8280](https://issues.apache.org/jira/browse/HDFS-8280) | Code Cleanup in DFSInputStream |  Minor | . | Jing Zhao | Jing Zhao |
| [HDFS-8255](https://issues.apache.org/jira/browse/HDFS-8255) | Rename getBlockReplication to getPreferredBlockReplication |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8215](https://issues.apache.org/jira/browse/HDFS-8215) | Refactor NamenodeFsck#check method |  Minor | namenode | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-8209](https://issues.apache.org/jira/browse/HDFS-8209) | Support different number of datanode directories in MiniDFSCluster. |  Minor | test | surendra singh lilhore | surendra singh lilhore |
| [HDFS-8207](https://issues.apache.org/jira/browse/HDFS-8207) | Improper log message when blockreport interval compared with initial delay |  Minor | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8200](https://issues.apache.org/jira/browse/HDFS-8200) | Refactor FSDirStatAndListingOp |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8176](https://issues.apache.org/jira/browse/HDFS-8176) | Record from/to snapshots in audit log for snapshot diff report |  Minor | snapshots | J.Andreina | J.Andreina |
| [HDFS-8152](https://issues.apache.org/jira/browse/HDFS-8152) | Refactoring of lazy persist storage cases |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8144](https://issues.apache.org/jira/browse/HDFS-8144) | Split TestLazyPersistFiles into multiple tests |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8133](https://issues.apache.org/jira/browse/HDFS-8133) | Improve readability of deleted block check |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-8131](https://issues.apache.org/jira/browse/HDFS-8131) | Implement a space balanced block placement policy |  Minor | namenode | Liu Shaohui | Liu Shaohui |
| [HDFS-8117](https://issues.apache.org/jira/browse/HDFS-8117) | More accurate verification in SimulatedFSDataset: replace DEFAULT\_DATABYTE with patterned data |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8108](https://issues.apache.org/jira/browse/HDFS-8108) | Fsck should provide the info on mandatory option to be used along with "-blocks , -locations and -racks" |  Trivial | . | J.Andreina | J.Andreina |
| [HDFS-8101](https://issues.apache.org/jira/browse/HDFS-8101) | DFSClient use of non-constant DFSConfigKeys pulls in WebHDFS classes at runtime |  Minor | hdfs-client | Sean Busbey | Sean Busbey |
| [HDFS-8076](https://issues.apache.org/jira/browse/HDFS-8076) | Code cleanup for DFSInputStream: use offset instead of LocatedBlock when possible |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8073](https://issues.apache.org/jira/browse/HDFS-8073) | Split BlockPlacementPolicyDefault.chooseTarget(..) so it can be easily overrided. |  Trivial | namenode | Walter Su | Walter Su |
| [HDFS-8035](https://issues.apache.org/jira/browse/HDFS-8035) | Move checkBlocksProperlyReplicated() in FSNamesystem to BlockManager |  Minor | namenode | Haohui Mai | Haohui Mai |
| [HDFS-8004](https://issues.apache.org/jira/browse/HDFS-8004) | Use KeyProviderCryptoExtension#warmUpEncryptedKeys when creating an encryption zone |  Trivial | encryption | Andrew Wang | Andrew Wang |
| [HDFS-7979](https://issues.apache.org/jira/browse/HDFS-7979) | Initialize block report IDs with a random number |  Minor | datanode | Andrew Wang | Andrew Wang |
| [HDFS-7978](https://issues.apache.org/jira/browse/HDFS-7978) | Add LOG.isDebugEnabled() guard for some LOG.debug(..) |  Major | . | Walter Su | Walter Su |
| [HDFS-7944](https://issues.apache.org/jira/browse/HDFS-7944) | Minor cleanup of BlockPoolManager#getAllNamenodeThreads |  Minor | . | Arpit Agarwal | Arpit Agarwal |
| [HDFS-7928](https://issues.apache.org/jira/browse/HDFS-7928) | Scanning blocks from disk during rolling upgrade startup takes a lot of time if disks are busy |  Major | datanode | Rushabh S Shah | Rushabh S Shah |
| [HDFS-7890](https://issues.apache.org/jira/browse/HDFS-7890) | Improve information on Top users for metrics in RollingWindowsManager and lower log level |  Major | . | J.Andreina | J.Andreina |
| [HDFS-7888](https://issues.apache.org/jira/browse/HDFS-7888) | Change DataStreamer/DFSOutputStream/DFSPacket for convenience of subclassing |  Minor | hdfs-client | Li Bo | Li Bo |
| [HDFS-7875](https://issues.apache.org/jira/browse/HDFS-7875) | Improve log message when wrong value configured for dfs.datanode.failed.volumes.tolerated |  Trivial | datanode | nijel | nijel |
| [HDFS-7863](https://issues.apache.org/jira/browse/HDFS-7863) | Missing description of some methods and parameters in javadoc of FSDirDeleteOp |  Minor | . | Yongjun Zhang | Brahma Reddy Battula |
| [HDFS-7835](https://issues.apache.org/jira/browse/HDFS-7835) | make initial sleeptime in locateFollowingBlock configurable for DFSClient. |  Major | hdfs-client | zhihai xu | zhihai xu |
| [HDFS-7829](https://issues.apache.org/jira/browse/HDFS-7829) | Code clean up for LocatedBlock |  Minor | . | Jing Zhao | Takanobu Asanuma |
| [HDFS-7793](https://issues.apache.org/jira/browse/HDFS-7793) | Refactor DFSOutputStream separating DataStreamer out |  Major | hdfs-client | Kai Zheng | Li Bo |
| [HDFS-7770](https://issues.apache.org/jira/browse/HDFS-7770) | Need document for storage type label of data node storage locations under dfs.datanode.data.dir |  Major | documentation | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7758](https://issues.apache.org/jira/browse/HDFS-7758) | Retire FsDatasetSpi#getVolumes() and use FsDatasetSpi#getVolumeRefs() instead |  Major | datanode | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-7671](https://issues.apache.org/jira/browse/HDFS-7671) | hdfs user guide should point to the common rack awareness doc |  Major | documentation | Allen Wittenauer | Kai Sasaki |
| [HDFS-7645](https://issues.apache.org/jira/browse/HDFS-7645) | Rolling upgrade is restoring blocks from trash multiple times |  Major | datanode | Nathan Roberts | Keisuke Ogiwara |
| [HDFS-7433](https://issues.apache.org/jira/browse/HDFS-7433) | Optimize performance of DatanodeManager's node map |  Critical | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7397](https://issues.apache.org/jira/browse/HDFS-7397) | Add more detail to the documentation for the conf key "dfs.client.read.shortcircuit.streams.cache.size" |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Brahma Reddy Battula |
| [HDFS-6888](https://issues.apache.org/jira/browse/HDFS-6888) | Allow selectively audit logging ops |  Major | . | Kihwal Lee | Chen He |
| [HDFS-6757](https://issues.apache.org/jira/browse/HDFS-6757) | Simplify lease manager with INodeID |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-6184](https://issues.apache.org/jira/browse/HDFS-6184) | Capture NN's thread dump when it fails over |  Major | namenode | Ming Ma | Ming Ma |
| [HDFS-5640](https://issues.apache.org/jira/browse/HDFS-5640) | Add snapshot methods to FileContext. |  Major | hdfs-client, snapshots | Chris Nauroth | Rakesh R |
| [HDFS-5574](https://issues.apache.org/jira/browse/HDFS-5574) | Remove buffer copy in BlockReader.skip |  Trivial | . | Binglin Chang | Binglin Chang |
| [HDFS-4396](https://issues.apache.org/jira/browse/HDFS-4396) | Add START\_MSG/SHUTDOWN\_MSG for ZKFC |  Major | auto-failover, ha, tools | Liang Xie | Liang Xie |
| [HDFS-4383](https://issues.apache.org/jira/browse/HDFS-4383) | Document the lease limits |  Minor | . | Eli Collins | Arshad Mohammad |
| [HDFS-4185](https://issues.apache.org/jira/browse/HDFS-4185) | Add a metric for number of active leases |  Major | namenode | Kihwal Lee | Rakesh R |
| [HDFS-3918](https://issues.apache.org/jira/browse/HDFS-3918) | EditLogTailer shouldn't log WARN when other node is in standby mode |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HDFS-2360](https://issues.apache.org/jira/browse/HDFS-2360) | Ugly stacktrace when quota exceeds |  Minor | hdfs-client | Rajit Saha | Harsh J |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8431](https://issues.apache.org/jira/browse/HDFS-8431) | hdfs crypto class not found in Windows |  Critical | HDFS | Sumana Sathish | Anu Engineer |
| [HDFS-8429](https://issues.apache.org/jira/browse/HDFS-8429) | Avoid stuck threads if there is an error in DomainSocketWatcher that stops the thread |  Major | . | zhouyingchao | zhouyingchao |
| [HDFS-8421](https://issues.apache.org/jira/browse/HDFS-8421) | Move startFile() and related operations into FSDirWriteFileOp |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8407](https://issues.apache.org/jira/browse/HDFS-8407) | hdfsListDirectory must set errno to 0 on success |  Major | HDFS | Juan Yu | Masatake Iwasaki |
| [HDFS-8380](https://issues.apache.org/jira/browse/HDFS-8380) | Always call addStoredBlock on blocks which have been shifted from one storage to another |  Major | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8371](https://issues.apache.org/jira/browse/HDFS-8371) | Fix test failure in TestHdfsConfigFields for spanreceiver properties |  Major | . | Ray Chiang | Ray Chiang |
| [HDFS-8362](https://issues.apache.org/jira/browse/HDFS-8362) | Java Compilation Error in TestHdfsConfigFields.java |  Major | . | Arshad Mohammad | Arshad Mohammad |
| [HDFS-8358](https://issues.apache.org/jira/browse/HDFS-8358) | TestTraceAdmin fails |  Major | . | Kihwal Lee | Masatake Iwasaki |
| [HDFS-8351](https://issues.apache.org/jira/browse/HDFS-8351) | Remove namenode -finalize option from document |  Major | documentation | Akira AJISAKA | Akira AJISAKA |
| [HDFS-8346](https://issues.apache.org/jira/browse/HDFS-8346) | libwebhdfs build fails during link due to unresolved external symbols. |  Major | native | Chris Nauroth | Chris Nauroth |
| [HDFS-8345](https://issues.apache.org/jira/browse/HDFS-8345) | Storage policy APIs must be exposed via the FileSystem interface |  Major | hdfs-client | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8340](https://issues.apache.org/jira/browse/HDFS-8340) | Fix NFS documentation of nfs.wtmax |  Minor | documentation, nfs | Ajith S | Ajith S |
| [HDFS-8326](https://issues.apache.org/jira/browse/HDFS-8326) | Documentation about when checkpoints are run is out of date |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HDFS-8325](https://issues.apache.org/jira/browse/HDFS-8325) | Misspelling of threshold in log4j.properties for tests |  Minor | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8321](https://issues.apache.org/jira/browse/HDFS-8321) | CacheDirectives and CachePool operations should throw RetriableException in safemode |  Major | . | Haohui Mai | Haohui Mai |
| [HDFS-8311](https://issues.apache.org/jira/browse/HDFS-8311) | DataStreamer.transfer() should timeout the socket InputStream. |  Major | hdfs-client | Esteban Gutierrez | Esteban Gutierrez |
| [HDFS-8300](https://issues.apache.org/jira/browse/HDFS-8300) | Fix unit test failures and findbugs warning caused by HDFS-8283 |  Major | . | Jing Zhao | Jing Zhao |
| [HDFS-8292](https://issues.apache.org/jira/browse/HDFS-8292) | Move conditional in fmt\_time from dfs-dust.js to status.html |  Minor | HDFS | Charles Lamb | Charles Lamb |
| [HDFS-8290](https://issues.apache.org/jira/browse/HDFS-8290) | WebHDFS calls before namesystem initialization can cause NullPointerException. |  Minor | webhdfs | Chris Nauroth | Chris Nauroth |
| [HDFS-8276](https://issues.apache.org/jira/browse/HDFS-8276) | LazyPersistFileScrubber should be disabled if scrubber interval configured zero |  Major | namenode | surendra singh lilhore | surendra singh lilhore |
| [HDFS-8274](https://issues.apache.org/jira/browse/HDFS-8274) | NFS configuration nfs.dump.dir not working |  Major | nfs | Ajith S | Ajith S |
| [HDFS-8268](https://issues.apache.org/jira/browse/HDFS-8268) | Port conflict log for data node server is not sufficient |  Minor | datanode | Mohammad Shahid Khan | Mohammad Shahid Khan |
| [HDFS-8257](https://issues.apache.org/jira/browse/HDFS-8257) | Namenode rollingUpgrade option is incorrect in document |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8232](https://issues.apache.org/jira/browse/HDFS-8232) | Missing datanode counters when using Metrics2 sink interface |  Major | datanode | Anu Engineer | Anu Engineer |
| [HDFS-8231](https://issues.apache.org/jira/browse/HDFS-8231) | StackTrace displayed at client while QuotaByStorageType exceeds |  Major | hdfs-client | J.Andreina | J.Andreina |
| [HDFS-8229](https://issues.apache.org/jira/browse/HDFS-8229) | LAZY\_PERSIST file gets deleted after NameNode restart. |  Major | HDFS | surendra singh lilhore | surendra singh lilhore |
| [HDFS-8222](https://issues.apache.org/jira/browse/HDFS-8222) | Remove usage of "dfsadmin -upgradeProgress " from document which  is no longer supported |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8219](https://issues.apache.org/jira/browse/HDFS-8219) | setStoragePolicy with folder behavior is different after cluster restart |  Major | . | Peter Shi | surendra singh lilhore |
| [HDFS-8217](https://issues.apache.org/jira/browse/HDFS-8217) | During block recovery for truncate Log new Block Id in case of copy-on-truncate is true. |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-8214](https://issues.apache.org/jira/browse/HDFS-8214) | Secondary NN Web UI shows wrong date for Last Checkpoint |  Major | HDFS, namenode | Charles Lamb | Charles Lamb |
| [HDFS-8211](https://issues.apache.org/jira/browse/HDFS-8211) | DataNode UUID is always null in the JMX counter |  Minor | HDFS | Anu Engineer | Anu Engineer |
| [HDFS-8206](https://issues.apache.org/jira/browse/HDFS-8206) | Fix the typos in hadoop-hdfs-httpfs |  Major | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-8205](https://issues.apache.org/jira/browse/HDFS-8205) | CommandFormat#parse() should not parse option as value of option |  Blocker | . | Peter Shi | Peter Shi |
| [HDFS-8191](https://issues.apache.org/jira/browse/HDFS-8191) | Fix byte to integer casting in SimulatedFSDataset#simulatedByte |  Minor | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8187](https://issues.apache.org/jira/browse/HDFS-8187) | Remove usage of "-setStoragePolicy" and "-getStoragePolicy" using dfsadmin cmd (as it is not been supported) |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8175](https://issues.apache.org/jira/browse/HDFS-8175) | Provide information on snapshotDiff for supporting the comparison between snapshot and current status |  Major | documentation | J.Andreina | J.Andreina |
| [HDFS-8174](https://issues.apache.org/jira/browse/HDFS-8174) | Update replication count to live rep count in fsck report |  Minor | . | J.Andreina | J.Andreina |
| [HDFS-8173](https://issues.apache.org/jira/browse/HDFS-8173) | NPE thrown at DataNode shutdown when HTTP server was not able to create |  Minor | datanode | Archana T | surendra singh lilhore |
| [HDFS-8150](https://issues.apache.org/jira/browse/HDFS-8150) | Make getFileChecksum fail for blocks under construction |  Critical | . | Kihwal Lee | J.Andreina |
| [HDFS-8149](https://issues.apache.org/jira/browse/HDFS-8149) | The footer of the Web UI "Hadoop, 2014" is old |  Major | . | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-8148](https://issues.apache.org/jira/browse/HDFS-8148) |  NPE thrown at Namenode startup,. |  Minor | namenode | Archana T | surendra singh lilhore |
| [HDFS-8142](https://issues.apache.org/jira/browse/HDFS-8142) | DistributedFileSystem encryption zone commands should resolve relative paths |  Major | . | Rakesh R | Rakesh R |
| [HDFS-8113](https://issues.apache.org/jira/browse/HDFS-8113) | Add check for null BlockCollection pointers in BlockInfoContiguous structures |  Major | namenode | Chengbing Liu | Chengbing Liu |
| [HDFS-8111](https://issues.apache.org/jira/browse/HDFS-8111) | NPE thrown when invalid FSImage filename given for "hdfs oiv\_legacy" cmd |  Minor | tools | Archana T | surendra singh lilhore |
| [HDFS-8099](https://issues.apache.org/jira/browse/HDFS-8099) | Change "DFSInputStream has been closed already" message to debug log level |  Minor | hdfs-client | Charles Lamb | Charles Lamb |
| [HDFS-8097](https://issues.apache.org/jira/browse/HDFS-8097) | TestFileTruncate is failing intermittently |  Major | test | Rakesh R | Rakesh R |
| [HDFS-8096](https://issues.apache.org/jira/browse/HDFS-8096) | DatanodeMetrics#blocksReplicated will get incremented early and even for failed transfers |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-8067](https://issues.apache.org/jira/browse/HDFS-8067) | haadmin prints out stale help messages |  Minor | hdfs-client | Ajith S | Ajith S |
| [HDFS-8055](https://issues.apache.org/jira/browse/HDFS-8055) | NullPointerException when topology script is missing. |  Major | namenode | Anu Engineer | Anu Engineer |
| [HDFS-8046](https://issues.apache.org/jira/browse/HDFS-8046) | Allow better control of getContentSummary |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8043](https://issues.apache.org/jira/browse/HDFS-8043) | NPE in MiniDFSCluster teardown |  Major | test | Steve Loughran | Brahma Reddy Battula |
| [HDFS-8037](https://issues.apache.org/jira/browse/HDFS-8037) | CheckAccess in WebHDFS silently accepts malformed FsActions parameters |  Minor | webhdfs | Jake Low | Walter Su |
| [HDFS-8026](https://issues.apache.org/jira/browse/HDFS-8026) | Trace FSOutputSummer#writeChecksumChunks rather than DFSOutputStream#writeChunk |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8002](https://issues.apache.org/jira/browse/HDFS-8002) | Website refers to /trash directory |  Major | documentation | Mike Drob | Brahma Reddy Battula |
| [HDFS-7998](https://issues.apache.org/jira/browse/HDFS-7998) | HDFS Federation : Command mentioned to add a NN to existing federated cluster is wrong |  Minor | documentation | Ajith S | Ajith S |
| [HDFS-7997](https://issues.apache.org/jira/browse/HDFS-7997) | The first non-existing xattr should also throw IOException |  Minor | . | zhouyingchao | zhouyingchao |
| [HDFS-7993](https://issues.apache.org/jira/browse/HDFS-7993) | Provide each Replica details in fsck |  Major | . | Ming Ma | J.Andreina |
| [HDFS-7990](https://issues.apache.org/jira/browse/HDFS-7990) | IBR delete ack should not be delayed |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7939](https://issues.apache.org/jira/browse/HDFS-7939) | Two fsimage\_rollback\_\* files are created which are not deleted after rollback. |  Critical | . | J.Andreina | J.Andreina |
| [HDFS-7922](https://issues.apache.org/jira/browse/HDFS-7922) | ShortCircuitCache#close is not releasing ScheduledThreadPoolExecutors |  Major | . | Rakesh R | Rakesh R |
| [HDFS-7867](https://issues.apache.org/jira/browse/HDFS-7867) | Update action param from "start" to "prepare" in rolling upgrade javadoc |  Trivial | . | J.Andreina | J.Andreina |
| [HDFS-7847](https://issues.apache.org/jira/browse/HDFS-7847) | Modify NNThroughputBenchmark to be able to operate on a remote NameNode |  Major | . | Colin Patrick McCabe | Charles Lamb |
| [HDFS-7833](https://issues.apache.org/jira/browse/HDFS-7833) | DataNode reconfiguration does not recalculate valid volumes required, based on configured failed volumes tolerated. |  Major | datanode | Chris Nauroth | Lei (Eddy) Xu |
| [HDFS-7725](https://issues.apache.org/jira/browse/HDFS-7725) | Incorrect "nodes in service" metrics caused all writes to fail |  Major | . | Ming Ma | Ming Ma |
| [HDFS-7609](https://issues.apache.org/jira/browse/HDFS-7609) | Avoid retry cache collision when Standby NameNode loading edits |  Critical | namenode | Carrey Zhan | Ming Ma |
| [HDFS-7501](https://issues.apache.org/jira/browse/HDFS-7501) | TransactionsSinceLastCheckpoint can be negative on SBNs |  Major | namenode | Harsh J | Gautam Gopalakrishnan |
| [HDFS-7401](https://issues.apache.org/jira/browse/HDFS-7401) | Add block info to DFSInputStream' WARN message when it adds node to deadNodes |  Minor | . | Ming Ma | Arshad Mohammad |
| [HDFS-7261](https://issues.apache.org/jira/browse/HDFS-7261) | storageMap is accessed without synchronization in DatanodeDescriptor#updateHeartbeatState() |  Major | . | Ted Yu | Brahma Reddy Battula |
| [HDFS-6945](https://issues.apache.org/jira/browse/HDFS-6945) | BlockManager should remove a block from excessReplicateMap and decrement ExcessBlocks metric when the block is removed |  Critical | namenode | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6666](https://issues.apache.org/jira/browse/HDFS-6666) | Abort NameNode and DataNode startup if security is enabled but block access token is not enabled. |  Minor | datanode, namenode, security | Chris Nauroth | Vijay Bhat |
| [HDFS-6576](https://issues.apache.org/jira/browse/HDFS-6576) | Datanode log is generating at root directory in security mode |  Minor | datanode, scripts | surendra singh lilhore | surendra singh lilhore |
| [HDFS-6348](https://issues.apache.org/jira/browse/HDFS-6348) | SecondaryNameNode not terminating properly on runtime exceptions |  Major | namenode | Rakesh R | Rakesh R |
| [HDFS-6291](https://issues.apache.org/jira/browse/HDFS-6291) | FSImage may be left unclosed in BootstrapStandby#doRun() |  Minor | ha | Ted Yu | Sanghyun Yun |
| [HDFS-5356](https://issues.apache.org/jira/browse/HDFS-5356) | MiniDFSCluster shoud close all open FileSystems when shutdown() |  Critical | test | haosdent | Rakesh R |
| [HDFS-5215](https://issues.apache.org/jira/browse/HDFS-5215) | dfs.datanode.du.reserved is not considered while computing available space |  Major | datanode | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-4448](https://issues.apache.org/jira/browse/HDFS-4448) | Allow HA NN to start in secure mode with wildcard address configured |  Major | ha, namenode, security | Aaron T. Myers | Aaron T. Myers |
| [HDFS-3384](https://issues.apache.org/jira/browse/HDFS-3384) | DataStreamer thread should be closed immediatly when failed to setup a PipelineForAppendOrRecovery |  Major | hdfs-client | Brahma Reddy Battula | Uma Maheswara Rao G |
| [HDFS-3325](https://issues.apache.org/jira/browse/HDFS-3325) | When configuring "dfs.namenode.safemode.threshold-pct" to a value greater or equal to 1 there is mismatch in the UI report |  Minor | . | J.Andreina | J.Andreina |
| [HDFS-2484](https://issues.apache.org/jira/browse/HDFS-2484) | checkLease should throw FileNotFoundException when file does not exist |  Major | namenode | Konstantin Shvachko | Rakesh R |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8247](https://issues.apache.org/jira/browse/HDFS-8247) | TestDiskspaceQuotaUpdate#testAppendOverTypeQuota is failing |  Major | HDFS | Anu Engineer | Xiaoyu Yao |
| [HDFS-8243](https://issues.apache.org/jira/browse/HDFS-8243) | Files written by TestHostsFiles and TestNameNodeMXBean are causing Release Audit Warnings. |  Minor | test | Ruth Wisniewski | Ruth Wisniewski |
| [HDFS-7559](https://issues.apache.org/jira/browse/HDFS-7559) | Create unit test to automatically compare HDFS related classes and hdfs-default.xml |  Minor | . | Ray Chiang | Ray Chiang |
| [HDFS-6408](https://issues.apache.org/jira/browse/HDFS-6408) | Remove redundant definitions in log4j.properties |  Minor | test | Abhiraj Butala | Abhiraj Butala |
| [HDFS-6263](https://issues.apache.org/jira/browse/HDFS-6263) | Remove DRFA.MaxBackupIndex config from log4j.properties |  Minor | . | Akira AJISAKA | Abhiraj Butala |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8489](https://issues.apache.org/jira/browse/HDFS-8489) | Subclass BlockInfo to represent contiguous blocks |  Major | namenode | Zhe Zhang | Zhe Zhang |
| [HDFS-8482](https://issues.apache.org/jira/browse/HDFS-8482) | Rename BlockInfoContiguous to BlockInfo |  Major | . | Zhe Zhang | Zhe Zhang |
| [HDFS-8454](https://issues.apache.org/jira/browse/HDFS-8454) | Remove unnecessary throttling in TestDatanodeDeath |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8403](https://issues.apache.org/jira/browse/HDFS-8403) | Eliminate retries in TestFileCreation#testOverwriteOpenForWrite |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8377](https://issues.apache.org/jira/browse/HDFS-8377) | Support HTTP/2 in datanode |  Major | . | Duo Zhang | Duo Zhang |
| [HDFS-8314](https://issues.apache.org/jira/browse/HDFS-8314) | Move HdfsServerConstants#IO\_FILE\_BUFFER\_SIZE and SMALL\_BUFFER\_SIZE to the users |  Major | . | Haohui Mai | Li Lu |
| [HDFS-8310](https://issues.apache.org/jira/browse/HDFS-8310) | Fix TestCLI.testAll 'help: help for find' on Windows |  Minor | test | Xiaoyu Yao | Kiran Kumar M R |
| [HDFS-8309](https://issues.apache.org/jira/browse/HDFS-8309) | Skip unit test using DataNodeTestUtils#injectDataDirFailure() on Windows |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-8249](https://issues.apache.org/jira/browse/HDFS-8249) | Separate HdfsConstants into the client and the server side class |  Major | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8237](https://issues.apache.org/jira/browse/HDFS-8237) | Move all protocol classes used by ClientProtocol to hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8218](https://issues.apache.org/jira/browse/HDFS-8218) | Move classes that used by ClientProtocol into hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8185](https://issues.apache.org/jira/browse/HDFS-8185) | Separate client related routines in HAUtil into a new class |  Major | build, hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8169](https://issues.apache.org/jira/browse/HDFS-8169) | Move LocatedBlocks and related classes to hdfs-client |  Major | build, hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8165](https://issues.apache.org/jira/browse/HDFS-8165) | Move GRANDFATHER\_GENERATION\_STAMP and GRANDFATER\_INODE\_ID to hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8157](https://issues.apache.org/jira/browse/HDFS-8157) | Writes to RAM DISK reserve locked memory for block files |  Major | datanode | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8103](https://issues.apache.org/jira/browse/HDFS-8103) | Move BlockTokenSecretManager.AccessMode into BlockTokenIdentifier |  Minor | security | Haohui Mai | Haohui Mai |
| [HDFS-8102](https://issues.apache.org/jira/browse/HDFS-8102) | Separate webhdfs retry configuration keys from DFSConfigKeys |  Minor | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8100](https://issues.apache.org/jira/browse/HDFS-8100) | Refactor DFSClient.Conf to a standalone class |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8089](https://issues.apache.org/jira/browse/HDFS-8089) | Move o.a.h.hdfs.web.resources.\* to the client jars |  Minor | build | Haohui Mai | Haohui Mai |
| [HDFS-8086](https://issues.apache.org/jira/browse/HDFS-8086) | Move LeaseRenewer to the hdfs.client.impl package |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Takanobu Asanuma |
| [HDFS-8085](https://issues.apache.org/jira/browse/HDFS-8085) | Move CorruptFileBlockIterator to the hdfs.client.impl package |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8084](https://issues.apache.org/jira/browse/HDFS-8084) | Separate the client failover conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8083](https://issues.apache.org/jira/browse/HDFS-8083) | Separate the client write conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8082](https://issues.apache.org/jira/browse/HDFS-8082) | Separate the client read conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8080](https://issues.apache.org/jira/browse/HDFS-8080) | Separate JSON related routines used by WebHdfsFileSystem to a package local class |  Minor | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8079](https://issues.apache.org/jira/browse/HDFS-8079) | Separate the client retry conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8052](https://issues.apache.org/jira/browse/HDFS-8052) | Move WebHdfsFileSystem into hadoop-hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8049](https://issues.apache.org/jira/browse/HDFS-8049) | Annotation client implementation as private |  Major | hdfs-client | Tsz Wo Nicholas Sze | Takuya Fukudome |
| [HDFS-8034](https://issues.apache.org/jira/browse/HDFS-8034) | Fix TestDFSClientRetries#testDFSClientConfigurationLocateFollowingBlockInitialDelay for Windows |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7893](https://issues.apache.org/jira/browse/HDFS-7893) | Update the POM to create a separate hdfs-client jar |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-7854](https://issues.apache.org/jira/browse/HDFS-7854) | Separate class DataStreamer out of DFSOutputStream |  Major | hdfs-client | Li Bo | Li Bo |
| [HDFS-7713](https://issues.apache.org/jira/browse/HDFS-7713) | Implement mkdirs in the HDFS Web UI |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-7701](https://issues.apache.org/jira/browse/HDFS-7701) | Support reporting per storage type quota and usage with hadoop/hdfs shell |  Major | datanode, namenode | Xiaoyu Yao | Peter Shi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


