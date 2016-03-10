
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

## Release 2.7.3 - Unreleased (as of 2016-03-10)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-9395](https://issues.apache.org/jira/browse/HDFS-9395) | Make HDFS audit logging consistant |  Major | . | Kihwal Lee | Kuhu Shukla |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12805](https://issues.apache.org/jira/browse/HADOOP-12805) | Annotate CanUnbuffer with @InterfaceAudience.Public |  Major | . | Ted Yu | Ted Yu |
| [HADOOP-12800](https://issues.apache.org/jira/browse/HADOOP-12800) | Copy docker directory from 2.8 to 2.7/2.6 repos to enable pre-commit Jenkins runs |  Major | build, yetus | Zhe Zhang | Zhe Zhang |
| [HADOOP-12794](https://issues.apache.org/jira/browse/HADOOP-12794) | Support additional compression levels for GzipCodec |  Major | io | Ravi Mutyala | Ravi Mutyala |
| [HADOOP-12789](https://issues.apache.org/jira/browse/HADOOP-12789) | log classpath of ApplicationClassLoader at INFO level |  Minor | util | Sangjin Lee | Sangjin Lee |
| [HADOOP-12772](https://issues.apache.org/jira/browse/HADOOP-12772) | NetworkTopologyWithNodeGroup.getNodeGroup() can loop infinitely for invalid 'loc' values |  Minor | . | Kuhu Shukla | Kuhu Shukla |
| [HDFS-9669](https://issues.apache.org/jira/browse/HDFS-9669) | TcpPeerServer should respect ipc.server.listen.queue.size |  Major | . | Elliott Clark | Elliott Clark |
| [HDFS-9654](https://issues.apache.org/jira/browse/HDFS-9654) | Code refactoring for HDFS-8578 |  Minor | datanode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-9629](https://issues.apache.org/jira/browse/HDFS-9629) | Update the footer of Web UI to show year 2016 |  Major | . | Xiao Chen | Xiao Chen |
| [HDFS-9569](https://issues.apache.org/jira/browse/HDFS-9569) | Log the name of the fsimage being loaded for better supportability |  Trivial | namenode | Yongjun Zhang | Yongjun Zhang |
| [HDFS-9415](https://issues.apache.org/jira/browse/HDFS-9415) | Document dfs.cluster.administrators and dfs.permissions.superusergroup |  Major | documentation | Arpit Agarwal | Xiaobing Zhou |
| [HDFS-9314](https://issues.apache.org/jira/browse/HDFS-9314) | Improve BlockPlacementPolicyDefault's picking of excess replicas |  Major | . | Ming Ma | Xiao Chen |
| [HDFS-9198](https://issues.apache.org/jira/browse/HDFS-9198) | Coalesce IBR processing in the NN |  Major | namenode | Daryn Sharp | Daryn Sharp |
| [HDFS-8647](https://issues.apache.org/jira/browse/HDFS-8647) | Abstract BlockManager's rack policy into BlockPlacementPolicy |  Major | . | Ming Ma | Brahma Reddy Battula |
| [HDFS-8578](https://issues.apache.org/jira/browse/HDFS-8578) | On upgrade, Datanode should process all storage/data dirs in parallel |  Critical | datanode | Raju Bairishetti | Vinayakumar B |
| [HDFS-4946](https://issues.apache.org/jira/browse/HDFS-4946) | Allow preferLocalNode in BlockPlacementPolicyDefault to be configurable |  Major | namenode | James Kinley | Nathan Roberts |
| [MAPREDUCE-6622](https://issues.apache.org/jira/browse/MAPREDUCE-6622) | Add capability to set JHS job cache to a task-based limit |  Critical | jobhistoryserver | Ray Chiang | Ray Chiang |
| [MAPREDUCE-6436](https://issues.apache.org/jira/browse/MAPREDUCE-6436) | JobHistory cache issue |  Blocker | . | Ryu Kobayashi | Kai Sasaki |
| [MAPREDUCE-5485](https://issues.apache.org/jira/browse/MAPREDUCE-5485) | Allow repeating job commit by extending OutputCommitter API |  Critical | . | Nemon Lou | Junping Du |
| [YARN-4690](https://issues.apache.org/jira/browse/YARN-4690) | Skip object allocation in FSAppAttempt#getResourceUsage when possible |  Major | . | Ming Ma | Ming Ma |
| [YARN-4492](https://issues.apache.org/jira/browse/YARN-4492) | Add documentation for preemption supported in Capacity scheduler |  Minor | capacity scheduler | Naganarasimha G R | Naganarasimha G R |
| [YARN-3404](https://issues.apache.org/jira/browse/YARN-3404) | View the queue name to YARN Application page |  Minor | . | Ryu Kobayashi | Ryu Kobayashi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12872](https://issues.apache.org/jira/browse/HADOOP-12872) | Fix formatting in ServiceLevelAuth.md |  Trivial | documentation | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-12871](https://issues.apache.org/jira/browse/HADOOP-12871) | Fix dead link to NativeLibraries.html in CommandsManual.md |  Minor | documentation | Akira AJISAKA | Brahma Reddy Battula |
| [HADOOP-12870](https://issues.apache.org/jira/browse/HADOOP-12870) | Fix typo admininistration in CommandsManual.md |  Minor | documentation | Akira AJISAKA | John Zhuge |
| [HADOOP-12810](https://issues.apache.org/jira/browse/HADOOP-12810) | FileSystem#listLocatedStatus causes unnecessary RPC calls |  Major | fs, fs/s3 | Ryan Blue | Ryan Blue |
| [HADOOP-12792](https://issues.apache.org/jira/browse/HADOOP-12792) | TestUserGroupInformation#testGetServerSideGroups fails in chroot |  Minor | security, test | Eric Badger | Eric Badger |
| [HADOOP-12786](https://issues.apache.org/jira/browse/HADOOP-12786) | "hadoop key" command usage is not documented |  Major | documentation | Akira AJISAKA | Xiao Chen |
| [HADOOP-12773](https://issues.apache.org/jira/browse/HADOOP-12773) | HBase classes fail to load with client/job classloader enabled |  Major | util | Sangjin Lee | Sangjin Lee |
| [HADOOP-12761](https://issues.apache.org/jira/browse/HADOOP-12761) | incremental maven build is not really incremental |  Minor | build | Sangjin Lee | Sangjin Lee |
| [HADOOP-12706](https://issues.apache.org/jira/browse/HADOOP-12706) | TestLocalFsFCStatistics#testStatisticsThreadLocalDataCleanUp times out occasionally |  Major | test | Jason Lowe | Sangjin Lee |
| [HADOOP-12688](https://issues.apache.org/jira/browse/HADOOP-12688) | Fix deadlinks in Compatibility.md |  Major | documentation | Akira AJISAKA | Gabor Liptak |
| [HADOOP-12602](https://issues.apache.org/jira/browse/HADOOP-12602) | TestMetricsSystemImpl#testQSize occasionally fail |  Major | test | Wei-Chiu Chuang | Masatake Iwasaki |
| [HADOOP-12589](https://issues.apache.org/jira/browse/HADOOP-12589) | Fix intermittent test failure of TestCopyPreserveFlag |  Major | test | Tsuyoshi Ozawa | Masatake Iwasaki |
| [HADOOP-12565](https://issues.apache.org/jira/browse/HADOOP-12565) | Replace DSA with RSA for SSH key type in SingleCluster.md |  Minor | documentation | Alexander Veit | Mingliang Liu |
| [HADOOP-12545](https://issues.apache.org/jira/browse/HADOOP-12545) | Hadoop javadoc has broken links for AccessControlList, ImpersonationProvider, DefaultImpersonationProvider, and DistCp |  Major | documentation | Arshad Mohammad | Arshad Mohammad |
| [HADOOP-12482](https://issues.apache.org/jira/browse/HADOOP-12482) | Race condition in JMX cache update |  Major | . | Tony Wu | Tony Wu |
| [HADOOP-12374](https://issues.apache.org/jira/browse/HADOOP-12374) | Description of hdfs expunge command is confusing |  Major | documentation, trash | Weiwei Yang | Weiwei Yang |
| [HADOOP-12348](https://issues.apache.org/jira/browse/HADOOP-12348) | MetricsSystemImpl creates MetricsSourceAdapter with wrong time unit parameter. |  Major | metrics | zhihai xu | zhihai xu |
| [HADOOP-12296](https://issues.apache.org/jira/browse/HADOOP-12296) | when setnetgrent returns 0 in linux, exception should be thrown |  Major | . | Chang Li | Chang Li |
| [HADOOP-12107](https://issues.apache.org/jira/browse/HADOOP-12107) | long running apps may have a huge number of StatisticsData instances under FileSystem |  Critical | fs | Sangjin Lee | Sangjin Lee |
| [HADOOP-11252](https://issues.apache.org/jira/browse/HADOOP-11252) | RPC client does not time out by default |  Critical | ipc | Wilfred Spiegelenburg | Masatake Iwasaki |
| [HADOOP-9121](https://issues.apache.org/jira/browse/HADOOP-9121) | InodeTree.java has redundant check for vName while throwing exception |  Major | fs | Arup Malakar | Arup Malakar |
| [HADOOP-8818](https://issues.apache.org/jira/browse/HADOOP-8818) | Should use equals() rather than == to compare String or Text in MD5MD5CRC32FileChecksum and TFileDumper |  Minor | fs, io | Brandon Li | Brandon Li |
| [HDFS-9880](https://issues.apache.org/jira/browse/HDFS-9880) | TestDatanodeRegistration fails occasionally |  Major | test | Kihwal Lee | Kihwal Lee |
| [HDFS-9865](https://issues.apache.org/jira/browse/HDFS-9865) | TestBlockReplacement fails intermittently in trunk |  Major | test | Lin Yiqun | Lin Yiqun |
| [HDFS-9864](https://issues.apache.org/jira/browse/HDFS-9864) | Correct reference for RENEWDELEGATIONTOKEN and CANCELDELEGATIONTOKEN in webhdfs doc |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [HDFS-9851](https://issues.apache.org/jira/browse/HDFS-9851) | Name node throws NPE when setPermission is called on a path that does not exist |  Critical | namenode | David Yan | Brahma Reddy Battula |
| [HDFS-9812](https://issues.apache.org/jira/browse/HDFS-9812) | Streamer threads leak if failure happens when closing DFSOutputStream |  Major | hdfs-client | Lin Yiqun | Lin Yiqun |
| [HDFS-9784](https://issues.apache.org/jira/browse/HDFS-9784) | Example usage is not correct in Transparent Encryption document |  Major | documentation | Takashi Ohnishi | Takashi Ohnishi |
| [HDFS-9779](https://issues.apache.org/jira/browse/HDFS-9779) | TestReplicationPolicyWithNodeGroup NODE variable picks wrong rack value |  Minor | test | Kuhu Shukla | Kuhu Shukla |
| [HDFS-9766](https://issues.apache.org/jira/browse/HDFS-9766) | TestDataNodeMetrics#testDataNodeTimeSpend fails intermittently |  Major | test | Mingliang Liu | Xiao Chen |
| [HDFS-9765](https://issues.apache.org/jira/browse/HDFS-9765) | TestBlockScanner#testVolumeIteratorWithCaching fails intermittently |  Major | test | Mingliang Liu | Akira AJISAKA |
| [HDFS-9752](https://issues.apache.org/jira/browse/HDFS-9752) | Permanent write failures may happen to slow writers during datanode rolling upgrades |  Critical | . | Kihwal Lee | Walter Su |
| [HDFS-9743](https://issues.apache.org/jira/browse/HDFS-9743) | Fix TestLazyPersistFiles#testFallbackToDiskFull in branch-2.7 |  Major | . | Kihwal Lee | Kihwal Lee |
| [HDFS-9740](https://issues.apache.org/jira/browse/HDFS-9740) | Use a reasonable limit in DFSTestUtil.waitForMetric() |  Major | test | Kihwal Lee | Chang Li |
| [HDFS-9730](https://issues.apache.org/jira/browse/HDFS-9730) | Storage ID update does not happen when there is a layout change |  Major | datanode | Kihwal Lee | Tsz Wo Nicholas Sze |
| [HDFS-9724](https://issues.apache.org/jira/browse/HDFS-9724) | Degraded performance in WebHDFS listing as it does not reuse ObjectMapper |  Critical | performance | Akira AJISAKA | Akira AJISAKA |
| [HDFS-9690](https://issues.apache.org/jira/browse/HDFS-9690) | ClientProtocol.addBlock is not idempotent after HDFS-8071 |  Major | namenode | Tsz Wo Nicholas Sze | Tsz Wo Nicholas Sze |
| [HDFS-9661](https://issues.apache.org/jira/browse/HDFS-9661) | Deadlock in DN.FsDatasetImpl between moveBlockAcrossStorage and createRbw |  Major | datanode | ade | ade |
| [HDFS-9648](https://issues.apache.org/jira/browse/HDFS-9648) | TestStartup.testImageChecksum is broken by HDFS-9569's message change |  Trivial | namenode | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9634](https://issues.apache.org/jira/browse/HDFS-9634) | webhdfs client side exceptions don't provide enough details |  Major | webhdfs | Eric Payne | Eric Payne |
| [HDFS-9625](https://issues.apache.org/jira/browse/HDFS-9625) | set replication for empty file  failed when set storage policy |  Major | namenode | DENG FEI | DENG FEI |
| [HDFS-9600](https://issues.apache.org/jira/browse/HDFS-9600) | do not check replication if the block is under construction |  Critical | . | Phil Yang | Phil Yang |
| [HDFS-9533](https://issues.apache.org/jira/browse/HDFS-9533) | seen\_txid in the shared edits directory is modified during bootstrapping |  Major | ha, namenode | Kihwal Lee | Kihwal Lee |
| [HDFS-9516](https://issues.apache.org/jira/browse/HDFS-9516) | truncate file fails with data dirs on multiple disks |  Major | datanode | Bogdan Raducanu | Plamen Jeliazkov |
| [HDFS-9505](https://issues.apache.org/jira/browse/HDFS-9505) | HDFS Architecture documentation needs to be refreshed. |  Major | documentation | Chris Nauroth | Masatake Iwasaki |
| [HDFS-9406](https://issues.apache.org/jira/browse/HDFS-9406) | FSImage may get corrupted after deleting snapshot |  Major | namenode | Stanislav Antic | Yongjun Zhang |
| [HDFS-9383](https://issues.apache.org/jira/browse/HDFS-9383) | TestByteArrayManager#testByteArrayManager fails |  Major | . | Kihwal Lee | Tsz Wo Nicholas Sze |
| [HDFS-9347](https://issues.apache.org/jira/browse/HDFS-9347) | Invariant assumption in TestQuorumJournalManager.shutdown() is wrong |  Major | test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HDFS-9313](https://issues.apache.org/jira/browse/HDFS-9313) | Possible NullPointerException in BlockManager if no excess replica can be chosen |  Major | . | Ming Ma | Ming Ma |
| [HDFS-9072](https://issues.apache.org/jira/browse/HDFS-9072) | Fix random failures in TestJMXGet |  Critical | test | J.Andreina | J.Andreina |
| [HDFS-9048](https://issues.apache.org/jira/browse/HDFS-9048) | DistCp documentation is out-of-dated |  Major | . | Haohui Mai | Daisuke Kobayashi |
| [HDFS-8914](https://issues.apache.org/jira/browse/HDFS-8914) | Document HA support in the HDFS HdfsDesign.md |  Major | documentation | Ravindra Babu | Lars Francke |
| [HDFS-8845](https://issues.apache.org/jira/browse/HDFS-8845) | DiskChecker should not traverse the entire tree |  Major | . | Chang Li | Chang Li |
| [HDFS-8791](https://issues.apache.org/jira/browse/HDFS-8791) | block ID-based DN storage layout can be very slow for datanode on ext4 |  Blocker | datanode | Nathan Roberts | Chris Trezzo |
| [HDFS-7163](https://issues.apache.org/jira/browse/HDFS-7163) | WebHdfsFileSystem should retry reads according to the configured retry policy. |  Major | webhdfs | Eric Payne | Eric Payne |
| [HDFS-6481](https://issues.apache.org/jira/browse/HDFS-6481) | DatanodeManager#getDatanodeStorageInfos() should check the length of storageIDs |  Minor | namenode | Ted Yu | Tsz Wo Nicholas Sze |
| [HDFS-4937](https://issues.apache.org/jira/browse/HDFS-4937) | ReplicationMonitor can infinite-loop in BlockPlacementPolicyDefault#chooseRandom() |  Major | namenode | Kihwal Lee | Kihwal Lee |
| [MAPREDUCE-6637](https://issues.apache.org/jira/browse/MAPREDUCE-6637) | Testcase Failure : TestFileInputFormat.testSplitLocationInfo |  Major | test | Brahma Reddy Battula | Brahma Reddy Battula |
| [MAPREDUCE-6635](https://issues.apache.org/jira/browse/MAPREDUCE-6635) | Unsafe long to int conversion in UncompressedSplitLineReader and IndexOutOfBoundsException |  Critical | . | Sergey Shelukhin | Junping Du |
| [MAPREDUCE-6621](https://issues.apache.org/jira/browse/MAPREDUCE-6621) | Memory Leak in JobClient#submitJobInternal() |  Major | . | Xuan Gong | Xuan Gong |
| [MAPREDUCE-6619](https://issues.apache.org/jira/browse/MAPREDUCE-6619) | HADOOP\_CLASSPATH is overwritten in MR container |  Major | mrv2 | shanyu zhao | Junping Du |
| [MAPREDUCE-6618](https://issues.apache.org/jira/browse/MAPREDUCE-6618) | YarnClientProtocolProvider leaking the YarnClient thread. |  Major | . | Xuan Gong | Xuan Gong |
| [MAPREDUCE-6583](https://issues.apache.org/jira/browse/MAPREDUCE-6583) | Clarify confusing sentence in MapReduce tutorial document |  Minor | documentation | chris snow | Kai Sasaki |
| [MAPREDUCE-6577](https://issues.apache.org/jira/browse/MAPREDUCE-6577) | MR AM unable to load native library without MR\_AM\_ADMIN\_USER\_ENV set |  Critical | mr-am | Sangjin Lee | Sangjin Lee |
| [MAPREDUCE-6554](https://issues.apache.org/jira/browse/MAPREDUCE-6554) | MRAppMaster servicestart failing  with NPE in MRAppMaster#parsePreviousJobHistory |  Critical | . | Bibin A Chundatt | Bibin A Chundatt |
| [MAPREDUCE-6460](https://issues.apache.org/jira/browse/MAPREDUCE-6460) | TestRMContainerAllocator.testAttemptNotFoundCausesRMCommunicatorException fails |  Major | test | zhihai xu | zhihai xu |
| [MAPREDUCE-6413](https://issues.apache.org/jira/browse/MAPREDUCE-6413) | TestLocalJobSubmission is failing with unknown host |  Major | test | Jason Lowe | zhihai xu |
| [MAPREDUCE-6363](https://issues.apache.org/jira/browse/MAPREDUCE-6363) | [NNBench] Lease mismatch error when running with multiple mappers |  Critical | benchmarks | Brahma Reddy Battula | Bibin A Chundatt |
| [YARN-4761](https://issues.apache.org/jira/browse/YARN-4761) | NMs reconnecting with changed capabilities can lead to wrong cluster resource calculations on fair scheduler |  Major | fairscheduler | Sangjin Lee | Sangjin Lee |
| [YARN-4760](https://issues.apache.org/jira/browse/YARN-4760) | proxy redirect to history server uses wrong URL |  Major | webapp | Jason Lowe | Eric Badger |
| [YARN-4723](https://issues.apache.org/jira/browse/YARN-4723) | NodesListManager$UnknownNodeId ClassCastException |  Critical | resourcemanager | Jason Lowe | Kuhu Shukla |
| [YARN-4722](https://issues.apache.org/jira/browse/YARN-4722) | AsyncDispatcher logs redundant event queue sizes |  Major | . | Jason Lowe | Jason Lowe |
| [YARN-4707](https://issues.apache.org/jira/browse/YARN-4707) | Remove the extra char (\>) from SecureContainer.md |  Major | documentation | Brahma Reddy Battula | Brahma Reddy Battula |
| [YARN-4610](https://issues.apache.org/jira/browse/YARN-4610) | Reservations continue looking for one app causes other apps to starve |  Blocker | capacityscheduler | Jason Lowe | Jason Lowe |
| [YARN-4598](https://issues.apache.org/jira/browse/YARN-4598) | Invalid event: RESOURCE\_FAILED at CONTAINER\_CLEANEDUP\_AFTER\_KILL |  Major | nodemanager | tangshangwen | tangshangwen |
| [YARN-4581](https://issues.apache.org/jira/browse/YARN-4581) | AHS writer thread leak makes RM crash while RM is recovering |  Major | resourcemanager | sandflee | sandflee |
| [YARN-4546](https://issues.apache.org/jira/browse/YARN-4546) | ResourceManager crash due to scheduling opportunity overflow |  Critical | resourcemanager | Jason Lowe | Jason Lowe |
| [YARN-4452](https://issues.apache.org/jira/browse/YARN-4452) | NPE when submit Unmanaged application |  Critical | . | Naganarasimha G R | Naganarasimha G R |
| [YARN-4439](https://issues.apache.org/jira/browse/YARN-4439) | Clarify NMContainerStatus#toString method. |  Major | . | Jian He | Jian He |
| [YARN-4428](https://issues.apache.org/jira/browse/YARN-4428) | Redirect RM page to AHS page when AHS turned on and RM page is not available |  Major | . | Chang Li | Chang Li |
| [YARN-4422](https://issues.apache.org/jira/browse/YARN-4422) | Generic AHS sometimes doesn't show started, node, or logs on App page |  Major | . | Eric Payne | Eric Payne |
| [YARN-4414](https://issues.apache.org/jira/browse/YARN-4414) | Nodemanager connection errors are retried at multiple levels |  Major | nodemanager | Jason Lowe | Chang Li |
| [YARN-4398](https://issues.apache.org/jira/browse/YARN-4398) | Yarn recover functionality causes the cluster running slowly and the cluster usage rate is far below 100 |  Major | resourcemanager | NING DING | NING DING |
| [YARN-4380](https://issues.apache.org/jira/browse/YARN-4380) | TestResourceLocalizationService.testDownloadingResourcesOnContainerKill fails intermittently |  Major | test | Tsuyoshi Ozawa | Varun Saxena |
| [YARN-4374](https://issues.apache.org/jira/browse/YARN-4374) | RM capacity scheduler UI rounds user limit factor |  Major | capacityscheduler | Chang Li | Chang Li |
| [YARN-4347](https://issues.apache.org/jira/browse/YARN-4347) | Resource manager fails with Null pointer exception |  Major | yarn | Yesha Vora | Jian He |
| [YARN-4121](https://issues.apache.org/jira/browse/YARN-4121) | Typos in capacity scheduler documentation. |  Trivial | documentation | Kai Sasaki | Kai Sasaki |
| [YARN-3849](https://issues.apache.org/jira/browse/YARN-3849) | Too much of preemption activity causing continuos killing of containers across queues |  Critical | capacityscheduler | Sunil G | Sunil G |
| [YARN-3840](https://issues.apache.org/jira/browse/YARN-3840) | Resource Manager web ui issue when sorting application by id (with application having id \> 9999) |  Major | resourcemanager | LINTE | Varun Saxena |
| [YARN-3769](https://issues.apache.org/jira/browse/YARN-3769) | Consider user limit when calculating total pending resource for preemption policy in Capacity Scheduler |  Major | capacityscheduler | Eric Payne | Eric Payne |
| [YARN-3695](https://issues.apache.org/jira/browse/YARN-3695) | ServerProxy (NMProxy, etc.) shouldn't retry forever for non network exception. |  Major | . | Junping Du | Raju Bairishetti |
| [YARN-3602](https://issues.apache.org/jira/browse/YARN-3602) | TestResourceLocalizationService.testPublicResourceInitializesLocalDir fails Intermittently due to IOException from cleanup |  Minor | test | zhihai xu | zhihai xu |
| [YARN-3102](https://issues.apache.org/jira/browse/YARN-3102) | Decommisioned Nodes not listed in Web UI |  Minor | resourcemanager | Bibin A Chundatt | Kuhu Shukla |
| [YARN-2046](https://issues.apache.org/jira/browse/YARN-2046) | Out of band heartbeats are sent only on container kill and possibly too early |  Major | nodemanager | Jason Lowe | Ming Ma |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HADOOP-12736](https://issues.apache.org/jira/browse/HADOOP-12736) | TestTimedOutTestsListener#testThreadDumpAndDeadlocks sometimes times out |  Major | . | Xiao Chen | Xiao Chen |
| [HADOOP-12715](https://issues.apache.org/jira/browse/HADOOP-12715) | TestValueQueue#testgetAtMostPolicyALL fails intermittently |  Major | . | Xiao Chen | Xiao Chen |
| [HDFS-9688](https://issues.apache.org/jira/browse/HDFS-9688) | Test the effect of nested encryption zones in HDFS downgrade |  Major | encryption, test | Zhe Zhang | Zhe Zhang |
| [MAPREDUCE-6191](https://issues.apache.org/jira/browse/MAPREDUCE-6191) | TestJavaSerialization fails with getting incorrect MR job result |  Minor | test | sam liu | sam liu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4623](https://issues.apache.org/jira/browse/YARN-4623) | TestSystemMetricsPublisher#testPublishAppAttemptMetricsForUnmanagedAM fails with NPE |  Major | yarn | Jason Lowe | Naganarasimha G R |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [YARN-4653](https://issues.apache.org/jira/browse/YARN-4653) | Document YARN security model from the perspective of Application Developers |  Major | site | Steve Loughran | Steve Loughran |


