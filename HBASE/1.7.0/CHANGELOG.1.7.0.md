
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
# Apache HBase Changelog

## Release 1.7.0 - Unreleased (as of 2020-11-14)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18095](https://issues.apache.org/jira/browse/HBASE-18095) | Provide an option for clients to find the server hosting META that does not involve the ZooKeeper client |  Major | Client | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-24260](https://issues.apache.org/jira/browse/HBASE-24260) | Add a ClusterManager that issues commands via coprocessor |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24528](https://issues.apache.org/jira/browse/HBASE-24528) | Improve balancer decision observability |  Major | Admin, Balancer, Operability, shell, UI | Andrew Kyle Purtell | Viraj Jasani |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23967](https://issues.apache.org/jira/browse/HBASE-23967) | Improve the accuracy of the method sizeToString |  Minor | . | xuqinya | xuqinya |
| [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | [RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations |  Major | master, rsgroup | Reid Chan | Reid Chan |
| [HBASE-8868](https://issues.apache.org/jira/browse/HBASE-8868) | add metric to report client shortcircuit reads |  Minor | metrics, regionserver | Viral Bajaria | Wei-Chiu Chuang |
| [HBASE-23678](https://issues.apache.org/jira/browse/HBASE-23678) | Literate builder API for version management in schema |  Major | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24077](https://issues.apache.org/jira/browse/HBASE-24077) | When encounter RowTooBigException, log the row info. |  Minor | . | Lijin Bin | Lijin Bin |
| [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | Use a fair ReentrantReadWriteLock for the region close lock |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24112](https://issues.apache.org/jira/browse/HBASE-24112) | [RSGroup] Support renaming rsgroup |  Major | rsgroup | Reid Chan | Reid Chan |
| [HBASE-24193](https://issues.apache.org/jira/browse/HBASE-24193) | BackPort HBASE-18651 to branch-1 |  Minor | integration tests | Lokesh Khurana | Lokesh Khurana |
| [HBASE-24148](https://issues.apache.org/jira/browse/HBASE-24148) | Upgrade Thrift to 0.13.0: 0.12.0 has outstanding CVEs. |  Major | Thrift | Tamas Penzes | Tamas Penzes |
| [HBASE-24229](https://issues.apache.org/jira/browse/HBASE-24229) | [Build] Pin rubocop version \<= 0.81 |  Major | build | Reid Chan | Reid Chan |
| [HBASE-24196](https://issues.apache.org/jira/browse/HBASE-24196) | [Shell] Add rename rsgroup command in hbase shell |  Major | rsgroup, shell | Reid Chan | Reid Chan |
| [HBASE-24139](https://issues.apache.org/jira/browse/HBASE-24139) | Balancer should avoid leaving idle region servers |  Critical | Balancer, Operability | Sean Busbey | Beata Sudi |
| [HBASE-24024](https://issues.apache.org/jira/browse/HBASE-24024) | Optionally reject multi() requests with very high no of rows |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23264](https://issues.apache.org/jira/browse/HBASE-23264) | Resolve a TODO of BucketAllocator: "Why we add the extra 1024 bytes? Slop?" |  Minor | BucketCache | Zheng Wang | Zheng Wang |
| [HBASE-24311](https://issues.apache.org/jira/browse/HBASE-24311) | Add more details in MultiVersionConcurrencyControl STUCK log message |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-24345](https://issues.apache.org/jira/browse/HBASE-24345) | [ACL] renameRSGroup should require Admin level permission |  Major | acl, rsgroup | Reid Chan | Reid Chan |
| [HBASE-24355](https://issues.apache.org/jira/browse/HBASE-24355) | Fix typos in the HStore#compact annotation |  Minor | . | kangkang.guo | kangkang.guo |
| [HBASE-24351](https://issues.apache.org/jira/browse/HBASE-24351) | Backport HBASE-24302 to branch-1 |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24350](https://issues.apache.org/jira/browse/HBASE-24350) | HBase table level replication metrics for shippedBytes are always 0 |  Major | Replication | Sandeep Pal | Sandeep Pal |
| [HBASE-24386](https://issues.apache.org/jira/browse/HBASE-24386) | TableSnapshotScanner support scan limit |  Major | Scanners, snapshots | niuyulin | niuyulin |
| [HBASE-24423](https://issues.apache.org/jira/browse/HBASE-24423) | No need to get lock in canSplit because hasReferences will get lock too |  Minor | regionserver | Zheng Wang | Zheng Wang |
| [HBASE-24428](https://issues.apache.org/jira/browse/HBASE-24428) | Priority compaction for recently split daughter regions |  Major | Compaction | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24435](https://issues.apache.org/jira/browse/HBASE-24435) | Bring back hedged reads metrics to branch-1 |  Minor | metrics | Javier Akira Luca de Tena | Javier Akira Luca de Tena |
| [HBASE-24470](https://issues.apache.org/jira/browse/HBASE-24470) | Add store file info when log meessages in HStore. |  Minor | logging, regionserver | song XinCun | song XinCun |
| [HBASE-24455](https://issues.apache.org/jira/browse/HBASE-24455) | Correct the doc of "On the number of column families" |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-24501](https://issues.apache.org/jira/browse/HBASE-24501) | Backport to branch-1 HBASE-15785 Unnecessary lock in ByteBufferArray |  Minor | regionserver, Scanners | tianhang tang | tianhang tang |
| [HBASE-24485](https://issues.apache.org/jira/browse/HBASE-24485) | Backport to branch-1 HBASE-17738 BucketCache startup is slow |  Minor | BucketCache | tianhang tang | tianhang tang |
| [HBASE-24069](https://issues.apache.org/jira/browse/HBASE-24069) | Extend HBASE-16209 strategy (Provide an ExponentialBackOffPolicy sleep between failed region open requests) to region close and split requests |  Major | Region Assignment | Andrew Kyle Purtell | Sandeep Guggilam |
| [HBASE-24483](https://issues.apache.org/jira/browse/HBASE-24483) | Add repeated prefix logging for MultipleColumnPrefixFilter |  Minor | Filters | Zheng Wang | Zheng Wang |
| [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | Zookeeper sync() call is async |  Critical | master, regionserver | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | [WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count |  Major | wal | Reid Chan | wenfeiyi666 |
| [HBASE-24740](https://issues.apache.org/jira/browse/HBASE-24740) | Enable journal logging for HBase snapshot operation |  Minor | master | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24696](https://issues.apache.org/jira/browse/HBASE-24696) | Include JVM information on Web UI under "Software Attributes" |  Minor | UI | Nick Dimiduk | Mingliang Liu |
| [HBASE-24777](https://issues.apache.org/jira/browse/HBASE-24777) | InfoServer support ipv6 host and port |  Minor | UI | Yechao Chen | Yechao Chen |
| [HBASE-24757](https://issues.apache.org/jira/browse/HBASE-24757) | ReplicationSink should limit the batch rowcount for batch mutations based on hbase.rpc.rows.warning.threshold |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-20226](https://issues.apache.org/jira/browse/HBASE-20226) | Performance Improvement Taking Large Snapshots In Remote Filesystems |  Minor | snapshots | Saad Mufti | Bharath Vissapragada |
| [HBASE-24704](https://issues.apache.org/jira/browse/HBASE-24704) | Make the Table Schema easier to view even there are multiple families |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-21721](https://issues.apache.org/jira/browse/HBASE-21721) | FSHLog : reduce write#syncs() times |  Major | . | Bo Cui | Bo Cui |
| [HBASE-24709](https://issues.apache.org/jira/browse/HBASE-24709) | Support MoveCostFunction use a lower multiplier in offpeak hours |  Major | Balancer | Zheng Wang | Zheng Wang |
| [HBASE-24898](https://issues.apache.org/jira/browse/HBASE-24898) | Use EnvironmentEdge.currentTime() instead of System.currentTimeMillis() in CurrentHourProvider |  Major | tooling | Zheng Wang | Zheng Wang |
| [HBASE-24569](https://issues.apache.org/jira/browse/HBASE-24569) | Get hostAndWeights in addition using localhost if it is null in local mode |  Minor | regionserver | Zheng Wang | Zheng Wang |
| [HBASE-24970](https://issues.apache.org/jira/browse/HBASE-24970) | Backport HBASE-20985 to branch-1 |  Minor | . | Aman Poonia | Aman Poonia |
| [HBASE-24940](https://issues.apache.org/jira/browse/HBASE-24940) | runCatalogJanitor() API should return -1 to indicate already running status |  Major | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24994](https://issues.apache.org/jira/browse/HBASE-24994) | Add hedgedReadOpsInCurThread metric |  Minor | metrics | Javier Akira Luca de Tena | Javier Akira Luca de Tena |
| [HBASE-24974](https://issues.apache.org/jira/browse/HBASE-24974) | Provide a flexibility to print only row key and filter for multiple tables in the WALPrettyPrinter |  Minor | wal | Sandeep Pal | Sandeep Pal |
| [HBASE-25006](https://issues.apache.org/jira/browse/HBASE-25006) | Make the cost functions optional for StochastoicBalancer |  Major | . | Clara Xiong | Clara Xiong |
| [HBASE-24764](https://issues.apache.org/jira/browse/HBASE-24764) | Add support of adding base peer configs via hbase-site.xml for all replication peers. |  Minor | Replication | Ankit Jain | Ankit Jain |
| [HBASE-25079](https://issues.apache.org/jira/browse/HBASE-25079) | Upgrade Bootstrap to 3.3.7 |  Major | security, UI | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-25082](https://issues.apache.org/jira/browse/HBASE-25082) | Per table WAL metrics: appendCount and appendSize |  Major | metrics | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-25031](https://issues.apache.org/jira/browse/HBASE-25031) | [Flaky Test] TestReplicationDisableInactivePeer#testDisableInactivePeer |  Minor | test | Reid Chan | Reid Chan |
| [HBASE-25030](https://issues.apache.org/jira/browse/HBASE-25030) | [Flaky Test] TestRestartCluster#testClusterRestart |  Minor | test | Reid Chan | Reid Chan |
| [HBASE-25025](https://issues.apache.org/jira/browse/HBASE-25025) | [Flaky Test][branch-1] TestFromClientSide#testCheckAndDeleteWithCompareOp |  Minor | test | Reid Chan | Reid Chan |
| [HBASE-25114](https://issues.apache.org/jira/browse/HBASE-25114) | [Flake Test][branch-1] TestFromClientSide#testCacheOnWriteEvictOnClose |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-25119](https://issues.apache.org/jira/browse/HBASE-25119) | Fix property name added as part of HBASE-24764 in branch-1 |  Minor | Replication | Ankit Jain | Ankit Jain |
| [HBASE-25122](https://issues.apache.org/jira/browse/HBASE-25122) | [Flake Test][branch-1] TestExportSnapshotWithTemporaryDirectory |  Minor | test | Reid Chan | Reid Chan |
| [HBASE-25179](https://issues.apache.org/jira/browse/HBASE-25179) | Assert format is incorrect in HFilePerformanceEvaluation class. |  Minor | Performance, test | Rushabh Shah | Rushabh Shah |
| [HBASE-25195](https://issues.apache.org/jira/browse/HBASE-25195) | [branch-1] getNumOpenConnections is not effective |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-25193](https://issues.apache.org/jira/browse/HBASE-25193) | Add support for row prefix and type in the WAL Pretty Printer and some minor fixes |  Minor | wal | Sandeep Pal | Sandeep Pal |
| [HBASE-25189](https://issues.apache.org/jira/browse/HBASE-25189) | [Metrics] Add checkAndPut and checkAndDelete latency metrics at table level |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-24859](https://issues.apache.org/jira/browse/HBASE-24859) | Optimize in-memory representation of mapreduce TableSplit objects |  Major | mapreduce | Sandeep Pal | Sandeep Pal |
| [HBASE-25212](https://issues.apache.org/jira/browse/HBASE-25212) | Optionally abort requests in progress after deciding a region should close |  Major | regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-25240](https://issues.apache.org/jira/browse/HBASE-25240) | gson format of RpcServer.logResponse is abnormal |  Minor | . | wenfeiyi666 | wenfeiyi666 |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22870](https://issues.apache.org/jira/browse/HBASE-22870) | reflection fails to access a private nested class |  Major | master | ranpanfeng | ranpanfeng |
| [HBASE-23909](https://issues.apache.org/jira/browse/HBASE-23909) | list\_regions fails if table is under split |  Minor | shell | Peter Somogyi | Viraj Jasani |
| [HBASE-24040](https://issues.apache.org/jira/browse/HBASE-24040) | WALFactory.Providers.multiwal causes StackOverflowError |  Minor | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24130](https://issues.apache.org/jira/browse/HBASE-24130) | rat plugin complains about having an unlicensed file. |  Minor | . | Minwoo Kang | Minwoo Kang |
| [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | [Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be. |  Major | rpc, security | Reid Chan | Reid Chan |
| [HBASE-24191](https://issues.apache.org/jira/browse/HBASE-24191) | HRegion#processRowsWithLocks count memstore size wrong when sync failed |  Major | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-24174](https://issues.apache.org/jira/browse/HBASE-24174) | Fix findbugs warning on ServiceAuthorizationManager |  Major | . | Reid Chan | Reid Chan |
| [HBASE-24213](https://issues.apache.org/jira/browse/HBASE-24213) | Backport the pre commit changes for HBASE-24169 to all branches |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24282](https://issues.apache.org/jira/browse/HBASE-24282) | 'scandetail' log message is missing when responseTooSlow happens on the first scan rpc call |  Major | Operability | song XinCun | song XinCun |
| [HBASE-24322](https://issues.apache.org/jira/browse/HBASE-24322) | UnsafeAvailChecker should also check that required methods are available |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24336](https://issues.apache.org/jira/browse/HBASE-24336) | [Metrics] FSDataInputStream's localBytesRead is wrong |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-24211](https://issues.apache.org/jira/browse/HBASE-24211) | Create table is slow in large cluster when AccessController is enabled. |  Major | Performance | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24190](https://issues.apache.org/jira/browse/HBASE-24190) | Make kerberos value of hbase.security.authentication property case insensitive |  Major | . | Yuanliang Zhang | Rushabh Shah |
| [HBASE-24434](https://issues.apache.org/jira/browse/HBASE-24434) | fix building cpp-example DemoClient |  Major | Client | Alexander Myasnikov |  |
| [HBASE-24453](https://issues.apache.org/jira/browse/HBASE-24453) | BackPort HBASE-20220 to branch-1 |  Minor | rsgroup | wenbang | wenbang |
| [HBASE-24454](https://issues.apache.org/jira/browse/HBASE-24454) | BucketCache disabled instantly before error duration toleration is reached due to timing issue |  Major | BucketCache | Jacob LeBlanc | Jacob LeBlanc |
| [HBASE-24479](https://issues.apache.org/jira/browse/HBASE-24479) | Deflake TestCompaction#testStopStartCompaction |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24480](https://issues.apache.org/jira/browse/HBASE-24480) | Deflake TestRSGroupsBasics#testClearDeadServers |  Major | rsgroup | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24499](https://issues.apache.org/jira/browse/HBASE-24499) | Use a client property for SaslConnection MAX\_ATTEMPTS (currently hardcoded to 5) |  Minor | Client, security | Ravi Kishore Valeti | Ravi Kishore Valeti |
| [HBASE-24184](https://issues.apache.org/jira/browse/HBASE-24184) | Backport HBASE-23896 to branch-1: Snapshot owner cannot delete snapshot when ACL is enabled and Kerberos is not enabled |  Minor | snapshots | tianhang tang | tianhang tang |
| [HBASE-24189](https://issues.apache.org/jira/browse/HBASE-24189) | WALSplit recreates region dirs for deleted table with recovered edits data |  Major | regionserver, wal | Andrey Elenskiy | Anoop Sam John |
| [HBASE-24564](https://issues.apache.org/jira/browse/HBASE-24564) | Make RS abort call idempotent |  Major | regionserver | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-19365](https://issues.apache.org/jira/browse/HBASE-19365) | FSTableDescriptors#get() can return null reference, in some cases, it is not checked |  Minor | . | Hua Xiang | Josh Elser |
| [HBASE-24550](https://issues.apache.org/jira/browse/HBASE-24550) | Passing '-h' or '--help' to bin/hbase doesn't do as expected |  Trivial | Operability, shell | Michael Stack | wenfeiyi666 |
| [HBASE-24446](https://issues.apache.org/jira/browse/HBASE-24446) | Use EnvironmentEdgeManager to compute clock skew in Master |  Minor | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24618](https://issues.apache.org/jira/browse/HBASE-24618) | Backport HBASE-21204 (NPE when scan raw DELETE\_FAMILY\_VERSION and codec is not set) to branch-1 |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-24657](https://issues.apache.org/jira/browse/HBASE-24657) | JsonBean representation of metrics at /jmx endpoint now quotes all numbers |  Minor | metrics | David Manning | David Manning |
| [HBASE-23744](https://issues.apache.org/jira/browse/HBASE-23744) | FastPathBalancedQueueRpcExecutor should enforce queue length of 0 |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-24693](https://issues.apache.org/jira/browse/HBASE-24693) | regioninfo#isLast() has a logic error |  Minor | . | Bo Cui | Bo Cui |
| [HBASE-24615](https://issues.apache.org/jira/browse/HBASE-24615) | MutableRangeHistogram#updateSnapshotRangeMetrics doesn't calculate the distribution for last bucket. |  Major | metrics | Rushabh Shah | wenfeiyi666 |
| [HBASE-24721](https://issues.apache.org/jira/browse/HBASE-24721) | rename\_rsgroup overwriting the existing rsgroup. |  Major | . | chiranjeevi | Mohammad Arshad |
| [HBASE-24739](https://issues.apache.org/jira/browse/HBASE-24739) | [Build] branch-1's build seems broken because of pylint |  Blocker | build | Reid Chan | Reid Chan |
| [HBASE-24742](https://issues.apache.org/jira/browse/HBASE-24742) | Improve performance of SKIP vs SEEK logic |  Major | Performance, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-24675](https://issues.apache.org/jira/browse/HBASE-24675) | On Master restart all servers are assigned to default rsgroup. |  Major | rsgroup | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24775](https://issues.apache.org/jira/browse/HBASE-24775) | [hbtop] StoreFile size should be rounded off |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24794](https://issues.apache.org/jira/browse/HBASE-24794) | hbase.rowlock.wait.duration should not be \<= 0 |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-24805](https://issues.apache.org/jira/browse/HBASE-24805) | HBaseTestingUtility.getConnection should be threadsafe |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-24788](https://issues.apache.org/jira/browse/HBASE-24788) | Fix the connection leaks on getting hbase admin from unclosed connection |  Major | mapreduce | Sandeep Pal | Sandeep Pal |
| [HBASE-24844](https://issues.apache.org/jira/browse/HBASE-24844) | Exception on standalone (master) shutdown |  Minor | Zookeeper | Nick Dimiduk | wenfeiyi666 |
| [HBASE-24957](https://issues.apache.org/jira/browse/HBASE-24957) | ZKTableStateClientSideReader#isDisabledTable doesn't check if table exists or not. |  Major | Client | Rushabh Shah | Rushabh Shah |
| [HBASE-24971](https://issues.apache.org/jira/browse/HBASE-24971) | Upgrade JQuery to 3.5.1 |  Major | security, UI | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24988](https://issues.apache.org/jira/browse/HBASE-24988) | Donot merge regions if they are non adjacent in MergeNormalizationPlan.execute |  Minor | . | Aman Poonia | Aman Poonia |
| [HBASE-24481](https://issues.apache.org/jira/browse/HBASE-24481) | HBase Rest: Request for region detail of a table which doesn't exits is success(200 success code) instead of 404 |  Minor | . | Ajeet Rai | Kevin Wang |
| [HBASE-24956](https://issues.apache.org/jira/browse/HBASE-24956) | ConnectionManager#locateRegionInMeta waits for user region lock indefinitely. |  Major | Client | Rushabh Shah | Rushabh Shah |
| [HBASE-25096](https://issues.apache.org/jira/browse/HBASE-25096) | WAL size in RegionServer UI is wrong |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-25105](https://issues.apache.org/jira/browse/HBASE-25105) | Fix log line in SimpleRegionNormalizer |  Minor | . | Aman Poonia | Aman Poonia |
| [HBASE-24849](https://issues.apache.org/jira/browse/HBASE-24849) | Branch-1 Backport : HBASE-24665 MultiWAL :  Avoid rolling of ALL WALs when one of the WAL needs a roll |  Major | wal | Anoop Sam John | wenfeiyi666 |
| [HBASE-25204](https://issues.apache.org/jira/browse/HBASE-25204) | Nightly job failed as  the name of jdk and maven changed |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-25227](https://issues.apache.org/jira/browse/HBASE-25227) | [branch-1] Fix Java 11 runtime issue in UnsafeAccess |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24816](https://issues.apache.org/jira/browse/HBASE-24816) | Remove unused credential hbaseqa-at-asf-jira |  Major | build, tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-25090](https://issues.apache.org/jira/browse/HBASE-25090) | CompactionConfiguration logs unrealistic store file sizes |  Minor | Compaction | Nick Dimiduk | Zhuoyue Huang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23943](https://issues.apache.org/jira/browse/HBASE-23943) | Rubocop configuration needs updated |  Minor | build | Nick Dimiduk | Jan Hentschel |
| [HBASE-24360](https://issues.apache.org/jira/browse/HBASE-24360) | RollingBatchRestartRsAction loses track of dead servers |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23957](https://issues.apache.org/jira/browse/HBASE-23957) | [flakey test] client.TestMultiParallel fails to read hbase-site.xml |  Minor | test | Nick Dimiduk | Huaxiang Sun |
| [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | Relocate test-only REST "client" from src/ to test/ and mark Private |  Major | REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21905](https://issues.apache.org/jira/browse/HBASE-21905) | TestFIFOCompactionPolicy is flaky |  Major | test | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-24894](https://issues.apache.org/jira/browse/HBASE-24894) | [Flakey Test] TestStochasticLoadBalancer.testMoveCostMultiplier |  Major | Balancer, master, test | Nick Dimiduk | Zheng Wang |
| [HBASE-25156](https://issues.apache.org/jira/browse/HBASE-25156) | TestMasterFailover.testSimpleMasterFailover is flaky |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24015](https://issues.apache.org/jira/browse/HBASE-24015) | Coverage for Assign and Unassign of Regions on RegionServer on failure |  Major | amv2 | Michael Stack | Sandeep Pal |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | Get rid of ZKTable, and table enable/disable state in ZK |  Major | Zookeeper | Enis Soztutar | Andrey Stepachev |
| [HBASE-22982](https://issues.apache.org/jira/browse/HBASE-22982) | Send SIGSTOP to hang or SIGCONT to resume rs and add graceful rolling restart |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23631](https://issues.apache.org/jira/browse/HBASE-23631) | Backport CacheCompactedBlocksOnWrite: HBASE-23066, HBASE-23588, HBASE-23350 to branch-1 |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24009](https://issues.apache.org/jira/browse/HBASE-24009) | Backport the personality changes in HBASE-23989 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-24045](https://issues.apache.org/jira/browse/HBASE-24045) | Support setting \`-Dhadoop.profile\` in adhoc\_run\_tests.sh |  Minor | tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | Add hadoop 3.2.x in hadoop check |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-15550](https://issues.apache.org/jira/browse/HBASE-15550) | Backport HBASE-12220 hedgedRead metrics to 1.2+ |  Major | metrics | Michael Stack | Michael Stack |
| [HBASE-24597](https://issues.apache.org/jira/browse/HBASE-24597) | Port HBASE-24380 (Improve WAL splitting log lines to enable sessionization) to branch-1 |  Major | logging, Operability, wal | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24846](https://issues.apache.org/jira/browse/HBASE-24846) | Address compaction races in TestFIFOCompactionPolicy |  Major | Compaction, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24841](https://issues.apache.org/jira/browse/HBASE-24841) | Change the jenkins job urls in our jenkinsfile |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-24876](https://issues.apache.org/jira/browse/HBASE-24876) | Fix the flaky job url in hbase-personality.sh |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-25107](https://issues.apache.org/jira/browse/HBASE-25107) | Migrate flaky reporting jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25132](https://issues.apache.org/jira/browse/HBASE-25132) | Migrate flaky test jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25133](https://issues.apache.org/jira/browse/HBASE-25133) | Migrate HBase Nightly jenkins job from Hadoop to hbase |  Major | jenkins, scripts | Duo Zhang | Duo Zhang |
| [HBASE-25154](https://issues.apache.org/jira/browse/HBASE-25154) | Set java.io.tmpdir to project build directory to avoid writing std\*deferred files to /tmp |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-25163](https://issues.apache.org/jira/browse/HBASE-25163) | Increase the timeout value for nightly jobs |  Major | jenkins, scripts, test | Duo Zhang | Duo Zhang |
| [HBASE-25162](https://issues.apache.org/jira/browse/HBASE-25162) | Make flaky tests run more aggressively |  Major | jenkins, scripts, test | Duo Zhang | yuqi |
| [HBASE-23935](https://issues.apache.org/jira/browse/HBASE-23935) | Backport HBASE-22978(with sub-tasks), HBASE-24718, HBASE-24528 to branch-1 |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-25194](https://issues.apache.org/jira/browse/HBASE-25194) | Do not publish workspace in flaky find job |  Major | jenkins | Duo Zhang | Duo Zhang |
| [HBASE-25203](https://issues.apache.org/jira/browse/HBASE-25203) | Change the reference url to flaky list in our jenkins jobs |  Major | flakies, jenkins | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23862](https://issues.apache.org/jira/browse/HBASE-23862) | Fix flaky TestSnapshotFromMaster in 1.x versions |  Major | . | Sakthi | Sakthi |
| [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | Move Jira-attached file precommit definition from script in Jenkins config to dev-support |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23980](https://issues.apache.org/jira/browse/HBASE-23980) | Use enforcer plugin to print JVM info in maven output |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24138](https://issues.apache.org/jira/browse/HBASE-24138) | Ensure StochasticLoadBalancer can log details of decision to not run balancer |  Major | Balancer, Operability | Sean Busbey | Sean Busbey |
| [HBASE-24194](https://issues.apache.org/jira/browse/HBASE-24194) | Refactor BufferedEncodedSeeker anonymous classes to named inner class |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24301](https://issues.apache.org/jira/browse/HBASE-24301) | Update Apache POM to version 23 |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24271](https://issues.apache.org/jira/browse/HBASE-24271) | Set values in \`conf/hbase-site.xml\` that enable running on \`LocalFileSystem\` out of the box |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24477](https://issues.apache.org/jira/browse/HBASE-24477) | Move ConfigurationObserver and related classes to hbase-common |  Minor | conf | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24492](https://issues.apache.org/jira/browse/HBASE-24492) | ProtobufLogReader.readNext does not need looping |  Minor | Replication, wal | Viraj Jasani | Viraj Jasani |
| [HBASE-24658](https://issues.apache.org/jira/browse/HBASE-24658) | Update PolicyBasedChaosMonkey to handle uncaught exceptions |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24295](https://issues.apache.org/jira/browse/HBASE-24295) | [Chaos Monkey] abstract logging through the class hierarchy |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24662](https://issues.apache.org/jira/browse/HBASE-24662) | Update DumpClusterStatusAction to notice changes in region server count |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14847](https://issues.apache.org/jira/browse/HBASE-14847) | Add FIFO compaction section to HBase book |  Major | documentation | Vladimir Rodionov | ethan hur |
| [HBASE-25004](https://issues.apache.org/jira/browse/HBASE-25004) | Log RegionTooBusyException details |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24200](https://issues.apache.org/jira/browse/HBASE-24200) | Upgrade to Yetus 0.12.0 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-25228](https://issues.apache.org/jira/browse/HBASE-25228) | Delete dev-support/jenkins\_precommit\_jira\_yetus.sh |  Minor | build | Nick Dimiduk | Nick Dimiduk |


