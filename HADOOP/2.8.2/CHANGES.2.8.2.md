
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

## Release 2.8.2 - Unreleased (as of 2017-06-03)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-7541](https://issues.apache.org/jira/browse/HDFS-7541) | Upgrade Domains in HDFS |  Major | . | Ming Ma | Ming Ma |
| [HDFS-11634](https://issues.apache.org/jira/browse/HDFS-11634) | Optimize BlockIterator when iterating starts in the middle. |  Major | . | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-11384](https://issues.apache.org/jira/browse/HDFS-11384) | Add option for balancer to disperse getBlocks calls to avoid NameNode's rpc.CallQueueLength spike |  Major | balancer & mover | yunjiong zhao | Konstantin Shvachko |
| [HDFS-11641](https://issues.apache.org/jira/browse/HDFS-11641) | Reduce cost of audit logging by using FileStatus instead of HdfsFileStatus |  Major | hdfs | Daryn Sharp | Daryn Sharp |
| [HDFS-11891](https://issues.apache.org/jira/browse/HDFS-11891) | DU#refresh should print the path of the directory when an exception is caught |  Minor | . | Chen Liang | Chen Liang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-524](https://issues.apache.org/jira/browse/YARN-524) | TestYarnVersionInfo failing if generated properties doesn't include an SVN URL |  Minor | api | Steve Loughran | Steve Loughran |
| [HADOOP-11703](https://issues.apache.org/jira/browse/HADOOP-11703) | git should ignore .DS\_Store files on Mac OS X |  Major | . | Abin Shahab | Abin Shahab |
| [YARN-4612](https://issues.apache.org/jira/browse/YARN-4612) | Fix rumen and scheduler load simulator handle killed tasks properly |  Major | . | Ming Ma | Ming Ma |
| [YARN-4812](https://issues.apache.org/jira/browse/YARN-4812) | TestFairScheduler#testContinuousScheduling fails intermittently |  Major | fairscheduler | Karthik Kambatla | Karthik Kambatla |
| [HADOOP-13437](https://issues.apache.org/jira/browse/HADOOP-13437) | KMS should reload whitelist and default key ACLs when hot-reloading |  Major | kms | Xiao Chen | Xiao Chen |
| [HDFS-11377](https://issues.apache.org/jira/browse/HDFS-11377) | Balancer hung due to no available mover threads |  Major | balancer & mover | yunjiong zhao | yunjiong zhao |
| [HADOOP-14320](https://issues.apache.org/jira/browse/HADOOP-14320) | TestIPC.testIpcWithReaderQueuing fails intermittently |  Major | . | Eric Badger | Eric Badger |
| [YARN-6536](https://issues.apache.org/jira/browse/YARN-6536) | TestAMRMClient.testAMRMClientWithSaslEncryption fails intermittently |  Major | . | Eric Badger | Jason Lowe |
| [HADOOP-14369](https://issues.apache.org/jira/browse/HADOOP-14369) | NetworkTopology calls expensive toString() when logging |  Major | . | Inigo Goiri | Inigo Goiri |
| [HADOOP-14306](https://issues.apache.org/jira/browse/HADOOP-14306) | TestLocalFileSystem tests have very low timeouts |  Major | . | Eric Badger | Eric Badger |
| [HADOOP-14372](https://issues.apache.org/jira/browse/HADOOP-14372) | TestSymlinkLocalFS timeouts are too low |  Major | . | Eric Badger | Eric Badger |
| [HDFS-11702](https://issues.apache.org/jira/browse/HDFS-11702) | Remove indefinite caching of key provider uri in DFSClient |  Major | hdfs-client | Rushabh S Shah | Rushabh S Shah |
| [HADOOP-14377](https://issues.apache.org/jira/browse/HADOOP-14377) | Increase Common test timeouts from 1 second to 10 seconds |  Major | . | Eric Badger | Eric Badger |
| [YARN-6552](https://issues.apache.org/jira/browse/YARN-6552) | Increase YARN test timeouts from 1 second to 10 seconds |  Major | . | Eric Badger | Eric Badger |
| [MAPREDUCE-6882](https://issues.apache.org/jira/browse/MAPREDUCE-6882) | Increase MapReduce test timeouts from 1 second to 10 seconds |  Major | . | Eric Badger | Eric Badger |
| [HDFS-11745](https://issues.apache.org/jira/browse/HDFS-11745) | Increase HDFS test timeouts from 1 second to 10 seconds |  Major | . | Eric Badger | Eric Badger |
| [HDFS-11755](https://issues.apache.org/jira/browse/HDFS-11755) | Underconstruction blocks can be considered missing |  Major | . | Nathan Roberts | Nathan Roberts |
| [YARN-5543](https://issues.apache.org/jira/browse/YARN-5543) | ResourceManager SchedulingMonitor could potentially terminate the preemption checker thread |  Major | capacityscheduler, resourcemanager | Min Shen | Min Shen |
| [HADOOP-14376](https://issues.apache.org/jira/browse/HADOOP-14376) | Memory leak when reading a compressed file using the native library |  Major | common, io | Eli Acherkan | Eli Acherkan |
| [HDFS-11818](https://issues.apache.org/jira/browse/HDFS-11818) | TestBlockManager.testSufficientlyReplBlocksUsesNewRack fails intermittently |  Major | . | Eric Badger | Nathan Roberts |
| [HDFS-11833](https://issues.apache.org/jira/browse/HDFS-11833) | HDFS architecture documentation describes outdated placement policy |  Minor | . | dud | Chen Liang |
| [HADOOP-14412](https://issues.apache.org/jira/browse/HADOOP-14412) | HostsFileReader#getHostDetails is very expensive on large clusters |  Major | util | Jason Lowe | Jason Lowe |
| [YARN-6618](https://issues.apache.org/jira/browse/YARN-6618) | TestNMLeveldbStateStoreService#testCompactionCycle can fail if compaction occurs more than once |  Minor | test | Jason Lowe | Jason Lowe |
| [HDFS-11849](https://issues.apache.org/jira/browse/HDFS-11849) | JournalNode startup failure exception should be logged in log file |  Major | journal-node | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-11864](https://issues.apache.org/jira/browse/HDFS-11864) | Document  Metrics to track usage of memory for writes |  Major | documentation | Brahma Reddy Battula | Yiqun Lin |
| [HADOOP-14449](https://issues.apache.org/jira/browse/HADOOP-14449) | The ASF Header in ComparableVersion.java and SSLHostnameVerifier.java is not correct |  Minor | common, documentation | ZhangBing Lin | ZhangBing Lin |
| [HADOOP-14166](https://issues.apache.org/jira/browse/HADOOP-14166) | Reset the DecayRpcScheduler AvgResponseTime metric to zero when queue is not used |  Major | common | Surendra Singh Lilhore | Surendra Singh Lilhore |
| [HDFS-11445](https://issues.apache.org/jira/browse/HDFS-11445) | FSCK shows overall health stauts as corrupt even one replica is corrupt |  Critical | . | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-6643](https://issues.apache.org/jira/browse/YARN-6643) | TestRMFailover fails rarely due to port conflict |  Major | test | Robert Kanter | Robert Kanter |
| [HDFS-11817](https://issues.apache.org/jira/browse/HDFS-11817) | A faulty node can cause a lease leak and NPE on accessing data |  Critical | . | Kihwal Lee | Kihwal Lee |
| [HDFS-11078](https://issues.apache.org/jira/browse/HDFS-11078) | NPE in LazyPersistFileScrubber |  Major | . | Inigo Goiri | Inigo Goiri |
| [HADOOP-14464](https://issues.apache.org/jira/browse/HADOOP-14464) | hadoop-aws doc header warning #5 line wrapped |  Trivial | documentation, fs/s3 | John Zhuge | John Zhuge |
| [HDFS-5042](https://issues.apache.org/jira/browse/HDFS-5042) | Completed files lost after power failure |  Critical | . | Dave Latham | Vinayakumar B |
| [YARN-6649](https://issues.apache.org/jira/browse/YARN-6649) | RollingLevelDBTimelineServer throws RuntimeException if object decoding ever fails runtime exception |  Critical | . | Jonathan Eagles | Jonathan Eagles |
| [HDFS-11741](https://issues.apache.org/jira/browse/HDFS-11741) | Long running balancer may fail due to expired DataEncryptionKey |  Major | balancer & mover | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-11856](https://issues.apache.org/jira/browse/HDFS-11856) | Ability to re-add Upgrading Nodes (remote) to pipeline for future pipeline updates |  Major | hdfs-client, rolling upgrades | Vinayakumar B | Vinayakumar B |
| [HADOOP-14474](https://issues.apache.org/jira/browse/HADOOP-14474) | Use OpenJDK 7 instead of Oracle JDK 7 to avoid oracle-java7-installer failures |  Major | build | Akira Ajisaka | Akira Ajisaka |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-5343](https://issues.apache.org/jira/browse/YARN-5343) | TestContinuousScheduling#testSortedNodes fails intermittently |  Minor | . | sandflee | Yufei Gu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-14349](https://issues.apache.org/jira/browse/HADOOP-14349) | Rename ADLS CONTRACT\_ENABLE\_KEY |  Minor | fs/adl | Mingliang Liu | Mingliang Liu |
| [HDFS-9005](https://issues.apache.org/jira/browse/HDFS-9005) | Provide configuration support for upgrade domain |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9016](https://issues.apache.org/jira/browse/HDFS-9016) | Display upgrade domain information in fsck |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9922](https://issues.apache.org/jira/browse/HDFS-9922) | Upgrade Domain placement policy status marks a good block in violation when there are decommissioned nodes |  Minor | . | Chris Trezzo | Chris Trezzo |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-11717](https://issues.apache.org/jira/browse/HDFS-11717) | Add unit test for HDFS-11709 StandbyCheckpointer should handle non-existing legacyOivImageDir gracefully |  Minor | ha, namenode | Erik Krogen | Erik Krogen |


