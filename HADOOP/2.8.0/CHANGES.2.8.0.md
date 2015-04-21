
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
| [YARN-3241](https://issues.apache.org/jira/browse/YARN-3241) | FairScheduler handles "invalid" queue names inconsistently |  Major | fairscheduler | zhihai xu | zhihai xu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-9477](https://issues.apache.org/jira/browse/HADOOP-9477) | Add posixGroups support for LDAP groups mapping service |  Major | . | Kai Zheng | Dapeng Sun |
| [HDFS-8009](https://issues.apache.org/jira/browse/HDFS-8009) | Signal congestion on the DataNode |  Major | datanode | Haohui Mai | Haohui Mai |
| [HDFS-8008](https://issues.apache.org/jira/browse/HDFS-8008) | Support client-side back off when the datanodes are congested |  Major | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-7891](https://issues.apache.org/jira/browse/HDFS-7891) | A block placement policy with best rack failure tolerance |  Minor | namenode | Walter Su | Walter Su |
| [YARN-2901](https://issues.apache.org/jira/browse/YARN-2901) | Add errors and warning metrics page to RM, NM web UI |  Major | nodemanager, resourcemanager | Varun Vasudev | Varun Vasudev |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11785](https://issues.apache.org/jira/browse/HADOOP-11785) | Reduce number of listStatus operation in distcp buildListing() |  Minor | tools/distcp | Zoran Dimitrijevic | Zoran Dimitrijevic |
| [HADOOP-11741](https://issues.apache.org/jira/browse/HADOOP-11741) | Add LOG.isDebugEnabled() guard for some LOG.debug() |  Major | . | Walter Su | Walter Su |
| [HADOOP-11737](https://issues.apache.org/jira/browse/HADOOP-11737) | mockito's version in hadoop-nfs’ pom.xml shouldn't be specified |  Minor | nfs | Kengo Seki | Kengo Seki |
| [HADOOP-11719](https://issues.apache.org/jira/browse/HADOOP-11719) | [Fsshell] Remove bin/hadoop reference from GenericOptionsParser default help text |  Minor | scripts | Brahma Reddy Battula | Brahma Reddy Battula |
| [HADOOP-11717](https://issues.apache.org/jira/browse/HADOOP-11717) | Add Redirecting WebSSO behavior with JWT Token in Hadoop Auth |  Major | security | Larry McCay | Larry McCay |
| [HADOOP-11711](https://issues.apache.org/jira/browse/HADOOP-11711) | Provide a default value for AES/CTR/NoPadding CryptoCodec classes |  Minor | . | Andrew Wang | Andrew Wang |
| [HADOOP-11709](https://issues.apache.org/jira/browse/HADOOP-11709) | Time.NANOSECONDS\_PER\_MILLISECOND - use class-level final constant instead of method variable |  Trivial | . | Ajith S | Ajith S |
| [HADOOP-11692](https://issues.apache.org/jira/browse/HADOOP-11692) | Improve authentication failure WARN message to avoid user confusion |  Major | ipc | Yongjun Zhang | Yongjun Zhang |
| [HADOOP-11660](https://issues.apache.org/jira/browse/HADOOP-11660) | Add support for hardware crc of HDFS checksums on ARM aarch64 architecture |  Minor | native | Edward Nevill | Edward Nevill |
| [HADOOP-11659](https://issues.apache.org/jira/browse/HADOOP-11659) | o.a.h.fs.FileSystem.Cache#remove should use a single hash map lookup |  Minor | fs | Gera Shegalov | Brahma Reddy Battula |
| [HADOOP-11447](https://issues.apache.org/jira/browse/HADOOP-11447) | Add a more meaningful toString method to SampleStat and MutableStat |  Minor | metrics | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-11226](https://issues.apache.org/jira/browse/HADOOP-11226) | Add a configuration to set ipc.Client's traffic class with IPTOS\_LOWDELAY\|IPTOS\_RELIABILITY |  Major | ipc | Gopal V | Gopal V |
| [HADOOP-9805](https://issues.apache.org/jira/browse/HADOOP-9805) | Refactor RawLocalFileSystem#rename for improved testability. |  Minor | fs, test | Chris Nauroth | Jean-Pierre Matsumoto |
| [HADOOP-7713](https://issues.apache.org/jira/browse/HADOOP-7713) | dfs -count -q should label output column |  Trivial | . | Nigel Daley | Jonathan Allen |
| [HDFS-8152](https://issues.apache.org/jira/browse/HDFS-8152) | Refactoring of lazy persist storage cases |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8144](https://issues.apache.org/jira/browse/HDFS-8144) | Split TestLazyPersistFiles into multiple tests |  Major | test | Arpit Agarwal | Arpit Agarwal |
| [HDFS-8117](https://issues.apache.org/jira/browse/HDFS-8117) | More accurate verification in SimulatedFSDataset: replace DEFAULT\_DATABYTE with patterned data |  Major | . | Zhe Zhang | Zhe Zhang |
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
| [HDFS-7671](https://issues.apache.org/jira/browse/HDFS-7671) | hdfs user guide should point to the common rack awareness doc |  Major | documentation | Allen Wittenauer | Kai Sasaki |
| [HDFS-7645](https://issues.apache.org/jira/browse/HDFS-7645) | Rolling upgrade is restoring blocks from trash multiple times |  Major | datanode | Nathan Roberts | Keisuke Ogiwara |
| [HDFS-4396](https://issues.apache.org/jira/browse/HDFS-4396) | Add START\_MSG/SHUTDOWN\_MSG for ZKFC |  Major | auto-failover, ha, tools | Liang Xie | Liang Xie |
| [HDFS-3918](https://issues.apache.org/jira/browse/HDFS-3918) | EditLogTailer shouldn't log WARN when other node is in standby mode |  Major | ha | Todd Lipcon | Todd Lipcon |
| [HDFS-2360](https://issues.apache.org/jira/browse/HDFS-2360) | Ugly stacktrace when quota exceeds |  Minor | hdfs-client | Rajit Saha | Harsh J |
| [MAPREDUCE-6307](https://issues.apache.org/jira/browse/MAPREDUCE-6307) | Remove property mapreduce.tasktracker.taskmemorymanager.monitoringinterval |  Minor | . | Akira AJISAKA | J.Andreina |
| [MAPREDUCE-6291](https://issues.apache.org/jira/browse/MAPREDUCE-6291) | Correct mapred queue usage command |  Minor | client | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6287](https://issues.apache.org/jira/browse/MAPREDUCE-6287) | Deprecated methods in org.apache.hadoop.examples.Sort |  Minor | examples | Chao Zhang | Chao Zhang |
| [MAPREDUCE-6282](https://issues.apache.org/jira/browse/MAPREDUCE-6282) | Reuse historyFileAbsolute.getFileSystem in CompletedJob#loadFullHistoryData for code optimization. |  Trivial | jobhistoryserver | zhihai xu | zhihai xu |
| [MAPREDUCE-6239](https://issues.apache.org/jira/browse/MAPREDUCE-6239) | Consolidate TestJobConf classes in hadoop-mapreduce-client-jobclient and hadoop-mapreduce-client-core |  Minor | client | Varun Saxena | Varun Saxena |
| [MAPREDUCE-6105](https://issues.apache.org/jira/browse/MAPREDUCE-6105) | Inconsistent configuration in property mapreduce.reduce.shuffle.merge.percent |  Trivial | . | Dongwook Kwon | Ray Chiang |
| [MAPREDUCE-6100](https://issues.apache.org/jira/browse/MAPREDUCE-6100) | replace "mapreduce.job.credentials.binary" with MRJobConfig.MAPREDUCE\_JOB\_CREDENTIALS\_BINARY for better readability. |  Trivial | mrv2 | zhihai xu | zhihai xu |
| [MAPREDUCE-5762](https://issues.apache.org/jira/browse/MAPREDUCE-5762) | Port MAPREDUCE-3223 (Remove MRv1 config from mapred-default.xml) to branch-2 |  Minor | documentation | Akira AJISAKA | Akira AJISAKA |
| [MAPREDUCE-5755](https://issues.apache.org/jira/browse/MAPREDUCE-5755) | MapTask.MapOutputBuffer#compare/swap should have @Override annotation |  Trivial | . | Tsuyoshi Ozawa | Tsuyoshi Ozawa |
| [MAPREDUCE-5190](https://issues.apache.org/jira/browse/MAPREDUCE-5190) | Unnecessary condition test in RandomSampler |  Minor | mrv2 | Jingguo Yao | Jingguo Yao |
| [MAPREDUCE-4653](https://issues.apache.org/jira/browse/MAPREDUCE-4653) | TestRandomAlgorithm has an unused "import" statement |  Trivial | contrib/gridmix | Amir Sanjar | Amir Sanjar |
| [MAPREDUCE-4414](https://issues.apache.org/jira/browse/MAPREDUCE-4414) | Add main methods to JobConf and YarnConfiguration, for debug purposes |  Major | client | Harsh J | Plamen Jeliazkov |
| [MAPREDUCE-579](https://issues.apache.org/jira/browse/MAPREDUCE-579) | Streaming "slowmatch" documentation |  Trivial | contrib/streaming | Bo Adler | Harsh J |
| [YARN-3469](https://issues.apache.org/jira/browse/YARN-3469) | ZKRMStateStore: Avoid setting watches that are not required |  Minor | . | Jun Gong | Jun Gong |
| [YARN-3451](https://issues.apache.org/jira/browse/YARN-3451) | Add start time and Elapsed in ApplicationAttemptReport and display the same in RMAttemptBlock WebUI |  Major | api, webapp | Rohith | Rohith |
| [YARN-3428](https://issues.apache.org/jira/browse/YARN-3428) | Debug log resources to be localized for a container |  Trivial | nodemanager | Karthik Kambatla | Karthik Kambatla |
| [YARN-3424](https://issues.apache.org/jira/browse/YARN-3424) | Change logs for ContainerMonitorImpl's resourse monitoring from info to debug |  Major | nodemanager | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3412](https://issues.apache.org/jira/browse/YARN-3412) | RM tests should use MockRM where possible |  Major | resourcemanager, test | Karthik Kambatla | Karthik Kambatla |
| [YARN-3404](https://issues.apache.org/jira/browse/YARN-3404) | View the queue name to YARN Application page |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |
| [YARN-3350](https://issues.apache.org/jira/browse/YARN-3350) | YARN RackResolver spams logs with messages at info level |  Major | . | Wilfred Spiegelenburg | Wilfred Spiegelenburg |
| [YARN-3348](https://issues.apache.org/jira/browse/YARN-3348) | Add a 'yarn top' tool to help understand cluster usage |  Major | resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-3294](https://issues.apache.org/jira/browse/YARN-3294) | Allow dumping of Capacity Scheduler debug logs via web UI for a fixed time period |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3293](https://issues.apache.org/jira/browse/YARN-3293) | Track and display capacity scheduler health metrics in web UI |  Major | capacityscheduler | Varun Vasudev | Varun Vasudev |
| [YARN-3258](https://issues.apache.org/jira/browse/YARN-3258) | FairScheduler: Need to add more logging to investigate allocations |  Minor | fairscheduler | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3248](https://issues.apache.org/jira/browse/YARN-3248) | Display count of nodes blacklisted by apps in the web UI |  Major | capacityscheduler, resourcemanager | Varun Vasudev | Varun Vasudev |
| [YARN-2868](https://issues.apache.org/jira/browse/YARN-2868) | FairScheduler: Metric for latency to allocate first container for an application |  Major | . | Ray Chiang | Ray Chiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11819](https://issues.apache.org/jira/browse/HADOOP-11819) | HttpServerFunctionalTest#prepareTestWebapp should create web app directory if it does not exist. |  Minor | . | Rohith | Rohith |
| [HADOOP-11811](https://issues.apache.org/jira/browse/HADOOP-11811) | Fix typos in hadoop-project/pom.xml and TestAccessControlList |  Minor | . | Chen He | Brahma Reddy Battula |
| [HADOOP-11800](https://issues.apache.org/jira/browse/HADOOP-11800) | Clean up some test methods in TestCodec.java |  Major | test | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-11760](https://issues.apache.org/jira/browse/HADOOP-11760) | Fix typo of javadoc in DistCp |  Trivial | . | Chen He | Brahma Reddy Battula |
| [HADOOP-11724](https://issues.apache.org/jira/browse/HADOOP-11724) | DistCp throws NPE when the target directory is root. |  Minor | . | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HADOOP-11568](https://issues.apache.org/jira/browse/HADOOP-11568) | Description on usage of classpath in hadoop command is incomplete. |  Trivial | tools | Archana T | Archana T |
| [HADOOP-10027](https://issues.apache.org/jira/browse/HADOOP-10027) | *Compressor\_deflateBytesDirect passes instance instead of jclass to GetStaticObjectField |  Minor | native | Eric Abbott | Hui Zheng |
| [HDFS-8173](https://issues.apache.org/jira/browse/HDFS-8173) | NPE thrown at DataNode shutdown when HTTP server was not able to create |  Minor | datanode | Archana T | surendra singh lilhore |
| [HDFS-8149](https://issues.apache.org/jira/browse/HDFS-8149) | The footer of the Web UI "Hadoop, 2014" is old |  Major | . | Akira AJISAKA | Brahma Reddy Battula |
| [HDFS-8148](https://issues.apache.org/jira/browse/HDFS-8148) |  NPE thrown at Namenode startup,. |  Minor | namenode | Archana T | surendra singh lilhore |
| [HDFS-8142](https://issues.apache.org/jira/browse/HDFS-8142) | DistributedFileSystem encryption zone commands should resolve relative paths |  Major | . | Rakesh R | Rakesh R |
| [HDFS-8135](https://issues.apache.org/jira/browse/HDFS-8135) | Remove the deprecated FSConstants class |  Major | . | Haohui Mai | Li Lu |
| [HDFS-8111](https://issues.apache.org/jira/browse/HDFS-8111) | NPE thrown when invalid FSImage filename given for "hdfs oiv\_legacy" cmd |  Minor | tools | Archana T | surendra singh lilhore |
| [HDFS-8099](https://issues.apache.org/jira/browse/HDFS-8099) | Change "DFSInputStream has been closed already" message to debug log level |  Minor | hdfs-client | Charles Lamb | Charles Lamb |
| [HDFS-8096](https://issues.apache.org/jira/browse/HDFS-8096) | DatanodeMetrics#blocksReplicated will get incremented early and even for failed transfers |  Major | datanode | Vinayakumar B | Vinayakumar B |
| [HDFS-8091](https://issues.apache.org/jira/browse/HDFS-8091) | ACLStatus and XAttributes not properly presented to INodeAttributesProvider before returning to client |  Major | HDFS | Arun Suresh | Arun Suresh |
| [HDFS-8055](https://issues.apache.org/jira/browse/HDFS-8055) | NullPointerException when topology script is missing. |  Major | namenode | Anu Engineer | Anu Engineer |
| [HDFS-8046](https://issues.apache.org/jira/browse/HDFS-8046) | Allow better control of getContentSummary |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-8043](https://issues.apache.org/jira/browse/HDFS-8043) | NPE in MiniDFSCluster teardown |  Major | test | Steve Loughran | Brahma Reddy Battula |
| [HDFS-8026](https://issues.apache.org/jira/browse/HDFS-8026) | Trace FSOutputSummer#writeChecksumChunks rather than DFSOutputStream#writeChunk |  Minor | . | Colin Patrick McCabe | Colin Patrick McCabe |
| [HDFS-8002](https://issues.apache.org/jira/browse/HDFS-8002) | Website refers to /trash directory |  Major | documentation | Mike Drob | Brahma Reddy Battula |
| [HDFS-7997](https://issues.apache.org/jira/browse/HDFS-7997) | The first non-existing xattr should also throw IOException |  Minor | . | zhouyingchao | zhouyingchao |
| [HDFS-7990](https://issues.apache.org/jira/browse/HDFS-7990) | IBR delete ack should not be delayed |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-7939](https://issues.apache.org/jira/browse/HDFS-7939) | Two fsimage\_rollback\_* files are created which are not deleted after rollback. |  Critical | . | J.Andreina | J.Andreina |
| [HDFS-7922](https://issues.apache.org/jira/browse/HDFS-7922) | ShortCircuitCache#close is not releasing ScheduledThreadPoolExecutors |  Major | . | Rakesh R | Rakesh R |
| [HDFS-7867](https://issues.apache.org/jira/browse/HDFS-7867) | Update action param from "start" to "prepare" in rolling upgrade javadoc |  Trivial | . | J.Andreina | J.Andreina |
| [HDFS-7725](https://issues.apache.org/jira/browse/HDFS-7725) | Incorrect "nodes in service" metrics caused all writes to fail |  Major | . | Ming Ma | Ming Ma |
| [HDFS-7501](https://issues.apache.org/jira/browse/HDFS-7501) | TransactionsSinceLastCheckpoint can be negative on SBNs |  Major | namenode | Harsh J | Gautam Gopalakrishnan |
| [HDFS-7261](https://issues.apache.org/jira/browse/HDFS-7261) | storageMap is accessed without synchronization in DatanodeDescriptor#updateHeartbeatState() |  Major | . | Ted Yu | Brahma Reddy Battula |
| [HDFS-6945](https://issues.apache.org/jira/browse/HDFS-6945) | BlockManager should remove a block from excessReplicateMap and decrement ExcessBlocks metric when the block is removed |  Critical | namenode | Akira AJISAKA | Akira AJISAKA |
| [HDFS-6666](https://issues.apache.org/jira/browse/HDFS-6666) | Abort NameNode and DataNode startup if security is enabled but block access token is not enabled. |  Minor | datanode, namenode, security | Chris Nauroth | Vijay Bhat |
| [HDFS-5356](https://issues.apache.org/jira/browse/HDFS-5356) | MiniDFSCluster shoud close all open FileSystems when shutdown() |  Critical | test | haosdent | Rakesh R |
| [HDFS-5215](https://issues.apache.org/jira/browse/HDFS-5215) | dfs.datanode.du.reserved is not considered while computing available space |  Major | datanode | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-3325](https://issues.apache.org/jira/browse/HDFS-3325) | When configuring "dfs.namenode.safemode.threshold-pct" to a value greater or equal to 1 there is mismatch in the UI report |  Minor | . | J.Andreina | J.Andreina |
| [MAPREDUCE-6314](https://issues.apache.org/jira/browse/MAPREDUCE-6314) | TestPipeApplication fails on trunk |  Major | test | Varun Vasudev | Varun Vasudev |
| [MAPREDUCE-6300](https://issues.apache.org/jira/browse/MAPREDUCE-6300) | Task list sort by task id broken |  Minor | . | Siqi Li | Siqi Li |
| [MAPREDUCE-6294](https://issues.apache.org/jira/browse/MAPREDUCE-6294) | Remove an extra parameter described in Javadoc of TockenCache |  Trivial | . | Chen He | Brahma Reddy Battula |
| [MAPREDUCE-6286](https://issues.apache.org/jira/browse/MAPREDUCE-6286) | A typo in HistoryViewer makes some code useless, which causes counter limits are not reset correctly. |  Major | client | zhihai xu | zhihai xu |
| [MAPREDUCE-6281](https://issues.apache.org/jira/browse/MAPREDUCE-6281) | Fix javadoc in Terasort |  Trivial | . | Albert Chu | Albert Chu |
| [MAPREDUCE-6266](https://issues.apache.org/jira/browse/MAPREDUCE-6266) | Job#getTrackingURL should consistently return a proper URL |  Minor | . | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6242](https://issues.apache.org/jira/browse/MAPREDUCE-6242) | Progress report log is incredibly excessive in application master |  Major | applicationmaster | Jian Fang | Varun Saxena |
| [MAPREDUCE-6238](https://issues.apache.org/jira/browse/MAPREDUCE-6238) | MR2 can't run local jobs with -libjars command options which is a regression from MR1 |  Critical | mrv2 | zhihai xu | zhihai xu |
| [MAPREDUCE-6213](https://issues.apache.org/jira/browse/MAPREDUCE-6213) | NullPointerException caused by job history server addr not resolvable |  Minor | applicationmaster | Peng Zhang | Peng Zhang |
| [MAPREDUCE-6199](https://issues.apache.org/jira/browse/MAPREDUCE-6199) | AbstractCounters are not reset completely on deserialization |  Major | . | Anubhav Dhoot | Anubhav Dhoot |
| [MAPREDUCE-5875](https://issues.apache.org/jira/browse/MAPREDUCE-5875) | Make Counter limits consistent across JobClient, MRAppMaster, and YarnChild |  Major | applicationmaster, client, task | Gera Shegalov | Gera Shegalov |
| [MAPREDUCE-5807](https://issues.apache.org/jira/browse/MAPREDUCE-5807) | Print usage for TeraSort job. |  Trivial | examples | Rohith | Rohith |
| [MAPREDUCE-5448](https://issues.apache.org/jira/browse/MAPREDUCE-5448) | MapFileOutputFormat#getReaders bug with invisible files/folders |  Minor | mrv2 | Maysam Yabandeh | Maysam Yabandeh |
| [MAPREDUCE-4844](https://issues.apache.org/jira/browse/MAPREDUCE-4844) | Counters / AbstractCounters have constant references not declared final |  Major | . | Gera Shegalov | Brahma Reddy Battula |
| [YARN-3493](https://issues.apache.org/jira/browse/YARN-3493) | RM fails to come up with error "Failed to load/recover state" when  mem settings are changed |  Critical | yarn | Sumana Sathish | Jian He |
| [YARN-3472](https://issues.apache.org/jira/browse/YARN-3472) | Possible leak in DelegationTokenRenewer#allTokens |  Major | . | Jian He | Rohith |
| [YARN-3465](https://issues.apache.org/jira/browse/YARN-3465) | Use LinkedHashMap to preserve order of resource requests |  Major | nodemanager | zhihai xu | zhihai xu |
| [YARN-3459](https://issues.apache.org/jira/browse/YARN-3459) | Fix failiure of TestLog4jWarningErrorMetricsAppender |  Blocker | . | Li Lu | Varun Vasudev |
| [YARN-3457](https://issues.apache.org/jira/browse/YARN-3457) | NPE when NodeManager.serviceInit fails and stopRecoveryStore called |  Minor | nodemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3436](https://issues.apache.org/jira/browse/YARN-3436) | Fix URIs in documention of YARN web service REST APIs |  Minor | documentation, resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3435](https://issues.apache.org/jira/browse/YARN-3435) | AM container to be allocated Appattempt AM container shown as null |  Trivial | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3429](https://issues.apache.org/jira/browse/YARN-3429) | TestAMRMTokens.testTokenExpiry fails Intermittently with error message:Invalid AMRMToken |  Major | test | zhihai xu | zhihai xu |
| [YARN-3425](https://issues.apache.org/jira/browse/YARN-3425) | NPE from RMNodeLabelsManager.serviceStop when NodeLabelsManager.serviceInit failed |  Minor | resourcemanager | Bibin A Chundatt | Bibin A Chundatt |
| [YARN-3415](https://issues.apache.org/jira/browse/YARN-3415) | Non-AM containers can be counted towards amResourceUsage of a Fair Scheduler queue |  Critical | fairscheduler | Rohit Agarwal | zhihai xu |
| [YARN-3400](https://issues.apache.org/jira/browse/YARN-3400) | [JDK 8] Build Failure due to unreported exceptions in RPCUtil |  Major | . | Robert Kanter | Robert Kanter |
| [YARN-3397](https://issues.apache.org/jira/browse/YARN-3397) | yarn rmadmin should skip -failover |  Minor | resourcemanager | J.Andreina | J.Andreina |
| [YARN-3394](https://issues.apache.org/jira/browse/YARN-3394) | WebApplication  proxy documentation is incomplete |  Minor | resourcemanager | Bibin A Chundatt | Naganarasimha G R |
| [YARN-3383](https://issues.apache.org/jira/browse/YARN-3383) | AdminService should use "warn" instead of "info" to log exception when operation fails |  Major | resourcemanager | Wangda Tan | Li Lu |
| [YARN-3382](https://issues.apache.org/jira/browse/YARN-3382) | Some of UserMetricsInfo metrics are incorrectly set to root queue metrics |  Major | webapp | Rohit Agarwal | Rohit Agarwal |
| [YARN-3351](https://issues.apache.org/jira/browse/YARN-3351) | AppMaster tracking URL is broken in HA |  Major | webapp | Anubhav Dhoot | Anubhav Dhoot |
| [YARN-3305](https://issues.apache.org/jira/browse/YARN-3305) | AM-Used Resource for leafqueue is wrongly populated if AM ResourceRequest is less than minimumAllocation |  Major | scheduler | Rohith | Rohith |
| [YARN-3269](https://issues.apache.org/jira/browse/YARN-3269) | Yarn.nodemanager.remote-app-log-dir could not be configured to fully qualified path |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-3266](https://issues.apache.org/jira/browse/YARN-3266) | RMContext inactiveNodes should have NodeId as map key |  Major | resourcemanager | Chengbing Liu | Chengbing Liu |
| [YARN-3243](https://issues.apache.org/jira/browse/YARN-3243) | CapacityScheduler should pass headroom from parent to children to make sure ParentQueue obey its capacity limits. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3205](https://issues.apache.org/jira/browse/YARN-3205) | FileSystemRMStateStore should disable FileSystem Cache to avoid get a Filesystem with an old configuration. |  Major | resourcemanager | zhihai xu | zhihai xu |
| [YARN-3197](https://issues.apache.org/jira/browse/YARN-3197) | Confusing log generated by CapacityScheduler |  Minor | capacityscheduler | Hitesh Shah | Varun Saxena |
| [YARN-3021](https://issues.apache.org/jira/browse/YARN-3021) | YARN's delegation-token handling disallows certain trust setups to operate properly over DistCp |  Major | security | Harsh J | Yongjun Zhang |
| [YARN-2890](https://issues.apache.org/jira/browse/YARN-2890) | MiniYarnCluster should turn on timeline service if configured to do so |  Major | . | Mit Desai | Mit Desai |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-6408](https://issues.apache.org/jira/browse/HDFS-6408) | Remove redundant definitions in log4j.properties |  Minor | test | Abhiraj Butala | Abhiraj Butala |
| [HDFS-6263](https://issues.apache.org/jira/browse/HDFS-6263) | Remove DRFA.MaxBackupIndex config from log4j.properties |  Minor | . | Akira AJISAKA | Abhiraj Butala |
| [YARN-3339](https://issues.apache.org/jira/browse/YARN-3339) | TestDockerContainerExecutor should pull a single image and not the entire centos repository |  Minor | test | Ravindra Kumar Naik |  |
| [YARN-2666](https://issues.apache.org/jira/browse/YARN-2666) | TestFairScheduler.testContinuousScheduling fails Intermittently |  Major | scheduler | Tsuyoshi Ozawa | zhihai xu |
| [YARN-1880](https://issues.apache.org/jira/browse/YARN-1880) | Cleanup TestApplicationClientProtocolOnHA |  Trivial | test | Tsuyoshi Ozawa | Tsuyoshi Ozawa |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-8169](https://issues.apache.org/jira/browse/HDFS-8169) | Move LocatedBlocks and related classes to hdfs-client |  Major | build, hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8165](https://issues.apache.org/jira/browse/HDFS-8165) | Move GRANDFATHER\_GENERATION\_STAMP and GRANDFATER\_INODE\_ID to hdfs-client |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-8103](https://issues.apache.org/jira/browse/HDFS-8103) | Move BlockTokenSecretManager.AccessMode into BlockTokenIdentifier |  Minor | security | Haohui Mai | Haohui Mai |
| [HDFS-8102](https://issues.apache.org/jira/browse/HDFS-8102) | Separate webhdfs retry configuration keys from DFSConfigKeys |  Minor | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8100](https://issues.apache.org/jira/browse/HDFS-8100) | Refactor DFSClient.Conf to a standalone class |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8089](https://issues.apache.org/jira/browse/HDFS-8089) | Move o.a.h.hdfs.web.resources.* to the client jars |  Minor | build | Haohui Mai | Haohui Mai |
| [HDFS-8085](https://issues.apache.org/jira/browse/HDFS-8085) | Move CorruptFileBlockIterator to the hdfs.client.impl package |  Minor | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8084](https://issues.apache.org/jira/browse/HDFS-8084) | Separate the client failover conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8083](https://issues.apache.org/jira/browse/HDFS-8083) | Separate the client write conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8082](https://issues.apache.org/jira/browse/HDFS-8082) | Separate the client read conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8080](https://issues.apache.org/jira/browse/HDFS-8080) | Separate JSON related routines used by WebHdfsFileSystem to a package local class |  Minor | hdfs-client | Haohui Mai | Haohui Mai |
| [HDFS-8079](https://issues.apache.org/jira/browse/HDFS-8079) | Separate the client retry conf from DFSConfigKeys |  Major | hdfs-client | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-8049](https://issues.apache.org/jira/browse/HDFS-8049) | Annotation client implementation as private |  Major | hdfs-client | Tsz Wo Nicholas Sze | Takuya Fukudome |
| [HDFS-8034](https://issues.apache.org/jira/browse/HDFS-8034) | Fix TestDFSClientRetries#testDFSClientConfigurationLocateFollowingBlockInitialDelay for Windows |  Minor | test | Xiaoyu Yao | Xiaoyu Yao |
| [HDFS-7893](https://issues.apache.org/jira/browse/HDFS-7893) | Update the POM to create a separate hdfs-client jar |  Major | build | Haohui Mai | Haohui Mai |
| [HDFS-7854](https://issues.apache.org/jira/browse/HDFS-7854) | Separate class DataStreamer out of DFSOutputStream |  Major | hdfs-client | Li Bo | Li Bo |
| [HDFS-7713](https://issues.apache.org/jira/browse/HDFS-7713) | Implement mkdirs in the HDFS Web UI |  Major | . | Ravi Prakash | Ravi Prakash |
| [HDFS-7701](https://issues.apache.org/jira/browse/HDFS-7701) | Support reporting per storage type quota and usage with hadoop/hdfs shell |  Major | datanode, namenode | Xiaoyu Yao | Peter Shi |
| [YARN-3463](https://issues.apache.org/jira/browse/YARN-3463) | Integrate OrderingPolicy Framework with CapacityScheduler |  Major | capacityscheduler | Craig Welch | Craig Welch |
| [YARN-3443](https://issues.apache.org/jira/browse/YARN-3443) | Create a 'ResourceHandler' subsystem to ease addition of support for new resource types on the NM |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3365](https://issues.apache.org/jira/browse/YARN-3365) | Add support for using the 'tc' tool via container-executor |  Major | nodemanager | Sidharta Seethana | Sidharta Seethana |
| [YARN-3361](https://issues.apache.org/jira/browse/YARN-3361) | CapacityScheduler side changes to support non-exclusive node labels |  Major | capacityscheduler | Wangda Tan | Wangda Tan |
| [YARN-3356](https://issues.apache.org/jira/browse/YARN-3356) | Capacity Scheduler FiCaSchedulerApp should use ResourceUsage to track used-resources-by-label. |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3354](https://issues.apache.org/jira/browse/YARN-3354) | Container should contains node-labels asked by original ResourceRequests |  Major | api, capacityscheduler, nodemanager, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3347](https://issues.apache.org/jira/browse/YARN-3347) | Improve YARN log command to get AMContainer logs as well as running containers logs |  Major | log-aggregation | Xuan Gong | Xuan Gong |
| [YARN-3345](https://issues.apache.org/jira/browse/YARN-3345) | Add non-exclusive node label API to RMAdmin protocol and NodeLabelsManager |  Major | api, client, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-3326](https://issues.apache.org/jira/browse/YARN-3326) | Support RESTful API for getLabelsToNodes |  Minor | resourcemanager | Naganarasimha G R | Naganarasimha G R |
| [YARN-3318](https://issues.apache.org/jira/browse/YARN-3318) | Create Initial OrderingPolicy Framework and FifoOrderingPolicy |  Major | scheduler | Craig Welch | Craig Welch |
| [YARN-3136](https://issues.apache.org/jira/browse/YARN-3136) | getTransferredContainers can be a bottleneck during AM registration |  Major | scheduler | Jason Lowe | Sunil G |
| [YARN-3110](https://issues.apache.org/jira/browse/YARN-3110) | Few issues in ApplicationHistory web ui |  Minor | applications, timelineserver | Bibin A Chundatt | Naganarasimha G R |
| [YARN-2696](https://issues.apache.org/jira/browse/YARN-2696) | Queue sorting in CapacityScheduler should consider node label |  Major | capacityscheduler, resourcemanager | Wangda Tan | Wangda Tan |
| [YARN-2495](https://issues.apache.org/jira/browse/YARN-2495) | Allow admin specify labels from each NM (Distributed configuration) |  Major | resourcemanager | Wangda Tan | Naganarasimha G R |
| [YARN-1402](https://issues.apache.org/jira/browse/YARN-1402) | Related Web UI, CLI changes on exposing client API to check log aggregation status |  Major | . | Xuan Gong | Xuan Gong |
| [YARN-1376](https://issues.apache.org/jira/browse/YARN-1376) | NM need to notify the log aggregation status to RM through Node heartbeat |  Major | . | Xuan Gong | Xuan Gong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-11814](https://issues.apache.org/jira/browse/HADOOP-11814) | Reformat hadoop-annotations, o.a.h.classification.tools |  Minor | . | Li Lu | Li Lu |


