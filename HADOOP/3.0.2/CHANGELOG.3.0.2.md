
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

## Release 3.0.2 - Unreleased (as of 2018-03-22)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13099](https://issues.apache.org/jira/browse/HDFS-13099) | RBF: Use the ZooKeeper as the default State Store |  Minor | documentation | Yiqun Lin | Yiqun Lin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12455](https://issues.apache.org/jira/browse/HDFS-12455) | WebHDFS - Adding "snapshot enabled" status to ListStatus query result. |  Major | snapshots, webhdfs | Ajay Kumar | Ajay Kumar |
| [HDFS-12933](https://issues.apache.org/jira/browse/HDFS-12933) | Improve logging when DFSStripedOutputStream failed to write some blocks |  Minor | erasure-coding | Xiao Chen | chencan |
| [HADOOP-13972](https://issues.apache.org/jira/browse/HADOOP-13972) | ADLS to support per-store configuration |  Major | fs/adl | John Zhuge | Sharad Sonker |
| [YARN-7813](https://issues.apache.org/jira/browse/YARN-7813) | Capacity Scheduler Intra-queue Preemption should be configurable for each queue |  Major | capacity scheduler, scheduler preemption | Eric Payne | Eric Payne |
| [HDFS-13175](https://issues.apache.org/jira/browse/HDFS-13175) | Add more information for checking argument in DiskBalancerVolume |  Minor | diskbalancer | Lei (Eddy) Xu | Lei (Eddy) Xu |
| [HDFS-11187](https://issues.apache.org/jira/browse/HDFS-11187) | Optimize disk access for last partial chunk checksum of Finalized replica |  Major | datanode | Wei-Chiu Chuang | Gabor Bota |
| [HADOOP-15263](https://issues.apache.org/jira/browse/HADOOP-15263) | hadoop cloud-storage module to mark hadoop-common as provided; add azure-datalake |  Minor | build | Steve Loughran | Steve Loughran |
| [HADOOP-15279](https://issues.apache.org/jira/browse/HADOOP-15279) | increase maven heap size recommendations |  Minor | build, documentation, test | Allen Wittenauer | Allen Wittenauer |
| [HDFS-13170](https://issues.apache.org/jira/browse/HDFS-13170) | Port webhdfs unmaskedpermission parameter to HTTPFS |  Major | . | Stephen O'Donnell | Stephen O'Donnell |
| [HDFS-13225](https://issues.apache.org/jira/browse/HDFS-13225) | StripeReader#checkMissingBlocks() 's IOException info is incomplete |  Major | erasure-coding, hdfs-client | lufei | lufei |
| [HDFS-11394](https://issues.apache.org/jira/browse/HDFS-11394) | Support for getting erasure coding policy through WebHDFS#FileStatus |  Major | erasure-coding, namenode | Kai Sasaki | Kai Sasaki |
| [HADOOP-15311](https://issues.apache.org/jira/browse/HADOOP-15311) | HttpServer2 needs a way to configure the acceptor/selector count |  Major | common | Erik Krogen | Erik Krogen |
| [HDFS-11600](https://issues.apache.org/jira/browse/HDFS-11600) | Refactor TestDFSStripedOutputStreamWithFailure test classes |  Minor | test | Andrew Wang | SammiChen |
| [HDFS-12884](https://issues.apache.org/jira/browse/HDFS-12884) | BlockUnderConstructionFeature.truncateBlock should be of type BlockInfo |  Major | namenode | Konstantin Shvachko | chencan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-12935](https://issues.apache.org/jira/browse/HDFS-12935) | Get ambiguous result for DFSAdmin command in HA mode when only one namenode is up |  Major | tools | Jianfei Jiang | Jianfei Jiang |
| [MAPREDUCE-7053](https://issues.apache.org/jira/browse/MAPREDUCE-7053) | Timed out tasks can fail to produce thread dump |  Major | . | Jason Lowe | Jason Lowe |
| [HADOOP-15206](https://issues.apache.org/jira/browse/HADOOP-15206) | BZip2 drops and duplicates records when input split size is small |  Major | . | Aki Tanaka | Aki Tanaka |
| [YARN-7947](https://issues.apache.org/jira/browse/YARN-7947) | Capacity Scheduler intra-queue preemption can NPE for non-schedulable apps |  Major | capacity scheduler, scheduler preemption | Eric Payne | Eric Payne |
| [HDFS-12070](https://issues.apache.org/jira/browse/HDFS-12070) | Failed block recovery leaves files open indefinitely and at risk for data loss |  Major | . | Daryn Sharp | Kihwal Lee |
| [HDFS-13145](https://issues.apache.org/jira/browse/HDFS-13145) | SBN crash when transition to ANN with in-progress edit tailing enabled |  Major | ha, namenode | Chao Sun | Chao Sun |
| [HDFS-13114](https://issues.apache.org/jira/browse/HDFS-13114) | CryptoAdmin#ReencryptZoneCommand should resolve Namespace info from path |  Major | encryption, hdfs | Hanisha Koneru | Hanisha Koneru |
| [HDFS-13081](https://issues.apache.org/jira/browse/HDFS-13081) | Datanode#checkSecureConfig should allow SASL and privileged HTTP |  Major | datanode, security | Xiaoyu Yao | Ajay Kumar |
| [MAPREDUCE-7059](https://issues.apache.org/jira/browse/MAPREDUCE-7059) | Downward Compatibility issue: MR job fails because of unknown setErasureCodingPolicy method from 3.x client to HDFS 2.x cluster |  Critical | job submission | Jiandan Yang | Jiandan Yang |
| [HADOOP-15275](https://issues.apache.org/jira/browse/HADOOP-15275) | Incorrect javadoc for return type of RetryPolicy#shouldRetry |  Minor | documentation | Nanda kumar | Nanda kumar |
| [YARN-7511](https://issues.apache.org/jira/browse/YARN-7511) | NPE in ContainerLocalizer when localization failed for running container |  Major | nodemanager | Tao Yang | Tao Yang |
| [MAPREDUCE-7023](https://issues.apache.org/jira/browse/MAPREDUCE-7023) | TestHadoopArchiveLogs.testCheckFilesAndSeedApps fails on rerun |  Minor | test | Gergely Novák | Gergely Novák |
| [HDFS-13040](https://issues.apache.org/jira/browse/HDFS-13040) | Kerberized inotify client fails despite kinit properly |  Major | namenode | Wei-Chiu Chuang | Xiao Chen |
| [YARN-7736](https://issues.apache.org/jira/browse/YARN-7736) | Fix itemization in YARN federation document |  Minor | documentation | Akira Ajisaka | Sen Zhao |
| [HADOOP-15289](https://issues.apache.org/jira/browse/HADOOP-15289) | FileStatus.readFields() assertion incorrect |  Critical | . | Steve Loughran | Steve Loughran |
| [HDFS-13109](https://issues.apache.org/jira/browse/HDFS-13109) | Support fully qualified hdfs path in EZ commands |  Major | hdfs | Hanisha Koneru | Hanisha Koneru |
| [HADOOP-15296](https://issues.apache.org/jira/browse/HADOOP-15296) | Fix a wrong link for RBF in the top page |  Minor | documentation | Takanobu Asanuma | Takanobu Asanuma |
| [HADOOP-15273](https://issues.apache.org/jira/browse/HADOOP-15273) | distcp can't handle remote stores with different checksum algorithms |  Critical | tools/distcp | Steve Loughran | Steve Loughran |
| [MAPREDUCE-6930](https://issues.apache.org/jira/browse/MAPREDUCE-6930) | mapreduce.map.cpu.vcores and mapreduce.reduce.cpu.vcores are both present twice in mapred-default.xml |  Major | mrv2 | Daniel Templeton | Sen Zhao |
| [HDFS-13190](https://issues.apache.org/jira/browse/HDFS-13190) | Document WebHDFS support for snapshot diff |  Major | documentation, webhdfs | Xiaoyu Yao | Lokesh Jain |
| [HDFS-12156](https://issues.apache.org/jira/browse/HDFS-12156) | TestFSImage fails without -Pnative |  Major | test | Akira Ajisaka | Akira Ajisaka |
| [HDFS-13239](https://issues.apache.org/jira/browse/HDFS-13239) | Fix non-empty dir warning message when setting default EC policy |  Minor | . | Hanisha Koneru | Bharat Viswanadham |
| [HADOOP-15308](https://issues.apache.org/jira/browse/HADOOP-15308) | TestConfiguration fails on Windows because of paths |  Major | . | Íñigo Goiri | Xiao Liang |
| [MAPREDUCE-7064](https://issues.apache.org/jira/browse/MAPREDUCE-7064) | Flaky test TestTaskAttempt#testReducerCustomResourceTypes |  Major | client, test | Peter Bacsko | Peter Bacsko |
| [HDFS-12723](https://issues.apache.org/jira/browse/HDFS-12723) | TestReadStripedFileWithMissingBlocks#testReadFileWithMissingBlocks failing consistently. |  Major | . | Rushabh S Shah | Ajay Kumar |
| [YARN-7636](https://issues.apache.org/jira/browse/YARN-7636) | Re-reservation count may overflow when cluster resource exhausted for a long time |  Major | capacityscheduler | Tao Yang | Tao Yang |
| [HDFS-12886](https://issues.apache.org/jira/browse/HDFS-12886) | Ignore minReplication for block recovery |  Major | hdfs, namenode | Lukas Majercak | Lukas Majercak |
| [HDFS-13296](https://issues.apache.org/jira/browse/HDFS-13296) | GenericTestUtils generates paths with drive letter in Windows and fail webhdfs related test cases |  Major | . | Xiao Liang | Xiao Liang |
| [HDFS-13268](https://issues.apache.org/jira/browse/HDFS-13268) | TestWebHdfsFileContextMainOperations fails on Windows |  Major | . | Íñigo Goiri | Xiao Liang |
| [YARN-8054](https://issues.apache.org/jira/browse/YARN-8054) | Improve robustness of the LocalDirsHandlerService MonitoringTimerTask thread |  Major | . | Jonathan Eagles | Jonathan Eagles |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-15040](https://issues.apache.org/jira/browse/HADOOP-15040) | Upgrade AWS SDK to 1.11.271: NPE bug spams logs w/ Yarn Log Aggregation |  Blocker | fs/s3 | Aaron Fabbri | Aaron Fabbri |
| [HDFS-13119](https://issues.apache.org/jira/browse/HDFS-13119) | RBF: Manage unavailable clusters |  Major | . | Íñigo Goiri | Yiqun Lin |
| [HDFS-13187](https://issues.apache.org/jira/browse/HDFS-13187) | RBF: Fix Routers information shown in the web UI |  Minor | . | Wei Yan | Wei Yan |
| [HDFS-13184](https://issues.apache.org/jira/browse/HDFS-13184) | RBF: Improve the unit test TestRouterRPCClientRetries |  Minor | test | Yiqun Lin | Yiqun Lin |
| [HDFS-13199](https://issues.apache.org/jira/browse/HDFS-13199) | RBF: Fix the hdfs router page missing label icon issue |  Major | federation, hdfs | maobaolong | maobaolong |
| [HDFS-13214](https://issues.apache.org/jira/browse/HDFS-13214) | RBF: Complete document of Router configuration |  Major | . | Tao Jie | Yiqun Lin |
| [HADOOP-15267](https://issues.apache.org/jira/browse/HADOOP-15267) | S3A multipart upload fails when SSE-C encryption is enabled |  Critical | fs/s3 | Anis Elleuch | Anis Elleuch |
| [HDFS-13230](https://issues.apache.org/jira/browse/HDFS-13230) | RBF: ConnectionManager's cleanup task will compare each pool's own active conns with its total conns |  Minor | . | Wei Yan | Chao Sun |
| [HDFS-13233](https://issues.apache.org/jira/browse/HDFS-13233) | RBF: MountTableResolver doesn't return the correct mount point of the given path |  Major | hdfs | wangzhiyuan | wangzhiyuan |
| [HADOOP-15277](https://issues.apache.org/jira/browse/HADOOP-15277) | remove .FluentPropertyBeanIntrospector from CLI operation log output |  Minor | conf | Steve Loughran | Steve Loughran |
| [HDFS-13212](https://issues.apache.org/jira/browse/HDFS-13212) | RBF: Fix router location cache issue |  Major | federation, hdfs | Weiwei Wu | Weiwei Wu |
| [HDFS-13232](https://issues.apache.org/jira/browse/HDFS-13232) | RBF: ConnectionPool should return first usable connection |  Minor | . | Wei Yan | Ekanth S |
| [HDFS-13240](https://issues.apache.org/jira/browse/HDFS-13240) | RBF: Update some inaccurate document descriptions |  Minor | . | Yiqun Lin | Yiqun Lin |
| [HDFS-11399](https://issues.apache.org/jira/browse/HDFS-11399) | Many tests fails in Windows due to injecting disk failures |  Major | . | Yiqun Lin | Yiqun Lin |
| [HDFS-13241](https://issues.apache.org/jira/browse/HDFS-13241) | RBF: TestRouterSafemode failed if the port 8888 is in use |  Major | hdfs, test | maobaolong | maobaolong |
| [HDFS-13253](https://issues.apache.org/jira/browse/HDFS-13253) | RBF: Quota management incorrect parent-child relationship judgement |  Major | . | Yiqun Lin | Yiqun Lin |
| [HDFS-13226](https://issues.apache.org/jira/browse/HDFS-13226) | RBF: Throw the exception if mount table entry validated failed |  Major | hdfs | maobaolong | maobaolong |
| [HDFS-12505](https://issues.apache.org/jira/browse/HDFS-12505) | Extend TestFileStatusWithECPolicy with a random EC policy |  Major | erasure-coding, test | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-12587](https://issues.apache.org/jira/browse/HDFS-12587) | Use Parameterized tests in TestBlockInfoStriped and TestLowRedundancyBlockQueues to test all EC policies |  Major | erasure-coding, test | Takanobu Asanuma | Takanobu Asanuma |
| [HDFS-12773](https://issues.apache.org/jira/browse/HDFS-12773) | RBF: Improve State Store FS implementation |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13198](https://issues.apache.org/jira/browse/HDFS-13198) | RBF: RouterHeartbeatService throws out CachedStateStore related exceptions when starting router |  Minor | . | Wei Yan | Wei Yan |
| [HDFS-13224](https://issues.apache.org/jira/browse/HDFS-13224) | RBF: Resolvers to support mount points across multiple subclusters |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HADOOP-15262](https://issues.apache.org/jira/browse/HADOOP-15262) | AliyunOSS: move files under a directory in parallel when rename a directory |  Major | fs/oss | wujinhu | wujinhu |
| [HDFS-13215](https://issues.apache.org/jira/browse/HDFS-13215) | RBF: Move Router to its own module |  Major | . | Íñigo Goiri | Wei Yan |
| [HDFS-13250](https://issues.apache.org/jira/browse/HDFS-13250) | RBF: Router to manage requests across multiple subclusters |  Major | . | Íñigo Goiri | Íñigo Goiri |
| [HDFS-13318](https://issues.apache.org/jira/browse/HDFS-13318) | RBF: Fix FindBugs in hadoop-hdfs-rbf |  Minor | . | Íñigo Goiri | Ekanth S |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-13052](https://issues.apache.org/jira/browse/HDFS-13052) | WebHDFS: Add support for snasphot diff |  Major | . | Lokesh Jain | Lokesh Jain |
| [HADOOP-14742](https://issues.apache.org/jira/browse/HADOOP-14742) | Document multi-URI replication Inode for ViewFS |  Major | documentation, viewfs | Chris Douglas | Gera Shegalov |


