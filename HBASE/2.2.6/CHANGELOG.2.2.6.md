
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

## Release 2.2.6 - 2020-09-04



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24387](https://issues.apache.org/jira/browse/HBASE-24387) | TableSnapshotInputFormatImpl support row limit on each InputSplit |  Major | mapreduce | niuyulin | niuyulin |
| [HBASE-24427](https://issues.apache.org/jira/browse/HBASE-24427) | HStore.add log format error |  Minor | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24371](https://issues.apache.org/jira/browse/HBASE-24371) | Add more details when print CompactionConfiguration info |  Minor | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-24428](https://issues.apache.org/jira/browse/HBASE-24428) | Priority compaction for recently split daughter regions |  Major | Compaction | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24416](https://issues.apache.org/jira/browse/HBASE-24416) | RegionNormalizer spliting region should not be limited by hbase.normalizer.min.region.count |  Major | . | Sun Xin | Sun Xin |
| [HBASE-24470](https://issues.apache.org/jira/browse/HBASE-24470) | Add store file info when log meessages in HStore. |  Minor | logging, regionserver | song XinCun | song XinCun |
| [HBASE-24455](https://issues.apache.org/jira/browse/HBASE-24455) | Correct the doc of "On the number of column families" |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-24412](https://issues.apache.org/jira/browse/HBASE-24412) | Canary support check only one column family per RegionTask |  Major | canary | niuyulin | niuyulin |
| [HBASE-24504](https://issues.apache.org/jira/browse/HBASE-24504) | refactor call setupCluster/tearDownCluster in TestTableSnapshotInputFormat |  Minor | mapreduce, test | niuyulin | niuyulin |
| [HBASE-24483](https://issues.apache.org/jira/browse/HBASE-24483) | Add repeated prefix logging for MultipleColumnPrefixFilter |  Minor | Filters | Zheng Wang | Zheng Wang |
| [HBASE-24524](https://issues.apache.org/jira/browse/HBASE-24524) | SyncTable logging improvements |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24478](https://issues.apache.org/jira/browse/HBASE-24478) | The regionInfo parameter for MasterProcedureScheduler#waitRegions and MasterProcedureScheduler#wakeRegions should be plural |  Minor | proc-v2 | song XinCun | song XinCun |
| [HBASE-24592](https://issues.apache.org/jira/browse/HBASE-24592) | [brnach-2.2] Upgrade junit to 4.13 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24102](https://issues.apache.org/jira/browse/HBASE-24102) | RegionMover should exclude draining/decommissioning nodes from target RSs |  Major | . | Anoop Sam John | Viraj Jasani |
| [HBASE-24605](https://issues.apache.org/jira/browse/HBASE-24605) | Break long region names in the web UI |  Minor | UI | song XinCun | song XinCun |
| [HBASE-24205](https://issues.apache.org/jira/browse/HBASE-24205) | Create metric to know the number of reads that happens from memstore |  Major | metrics | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | Zookeeper sync() call is async |  Critical | master, regionserver | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24562](https://issues.apache.org/jira/browse/HBASE-24562) | Stabilize master startup with meta replicas enabled |  Major | meta, read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24467](https://issues.apache.org/jira/browse/HBASE-24467) | Backport HBASE-23963: Split TestFromClientSide; it takes too long to complete timing out |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24578](https://issues.apache.org/jira/browse/HBASE-24578) | [WAL] Add a parameter to config RingBufferEventHandler's SyncFuture count |  Major | wal | Reid Chan | wenfeiyi666 |
| [HBASE-24740](https://issues.apache.org/jira/browse/HBASE-24740) | Enable journal logging for HBase snapshot operation |  Minor | master | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24696](https://issues.apache.org/jira/browse/HBASE-24696) | Include JVM information on Web UI under "Software Attributes" |  Minor | UI | Nick Dimiduk | Mingliang Liu |
| [HBASE-24777](https://issues.apache.org/jira/browse/HBASE-24777) | InfoServer support ipv6 host and port |  Minor | UI | Yechao Chen | Yechao Chen |
| [HBASE-24757](https://issues.apache.org/jira/browse/HBASE-24757) | ReplicationSink should limit the batch rowcount for batch mutations based on hbase.rpc.rows.warning.threshold |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-20226](https://issues.apache.org/jira/browse/HBASE-20226) | Performance Improvement Taking Large Snapshots In Remote Filesystems |  Minor | snapshots | Saad Mufti | Bharath Vissapragada |
| [HBASE-24821](https://issues.apache.org/jira/browse/HBASE-24821) | Simplify the logic of getRegionInfo in TestFlushFromClient to reduce redundancy code |  Minor | test | Zheng Wang | Zheng Wang |
| [HBASE-21721](https://issues.apache.org/jira/browse/HBASE-21721) | FSHLog : reduce write#syncs() times |  Major | . | Bo Cui | Bo Cui |
| [HBASE-24854](https://issues.apache.org/jira/browse/HBASE-24854) | Correct the help content of assign and unassign commands in hbase shell |  Minor | shell | Zheng Wang | Zheng Wang |
| [HBASE-24912](https://issues.apache.org/jira/browse/HBASE-24912) | Enlarge MemstoreFlusherChore/CompactionChecker period for unit test |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24686](https://issues.apache.org/jira/browse/HBASE-24686) | [LOG] Log improvement in Connection#close |  Major | Client, logging | mokai | mokai |
| [HBASE-24928](https://issues.apache.org/jira/browse/HBASE-24928) | balanceRSGroup should skip generating balance plan for disabled table and splitParent region |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-24898](https://issues.apache.org/jira/browse/HBASE-24898) | Use EnvironmentEdge.currentTime() instead of System.currentTimeMillis() in CurrentHourProvider |  Major | tooling | Zheng Wang | Zheng Wang |
| [HBASE-24913](https://issues.apache.org/jira/browse/HBASE-24913) | Refactor TestJMXConnectorServer |  Major | test | Sun Xin | Sun Xin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24401](https://issues.apache.org/jira/browse/HBASE-24401) | Cell size limit check on append should consider 0 or less value to disable the check |  Major | . | wenbang | wenbang |
| [HBASE-24426](https://issues.apache.org/jira/browse/HBASE-24426) | Missing regionName while logging warning in HBCKServerCrashProcedure |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24379](https://issues.apache.org/jira/browse/HBASE-24379) | CatalogJanitor misreports region holes when there are actually over laps. |  Major | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24454](https://issues.apache.org/jira/browse/HBASE-24454) | BucketCache disabled instantly before error duration toleration is reached due to timing issue |  Major | BucketCache | Jacob LeBlanc | Jacob LeBlanc |
| [HBASE-24280](https://issues.apache.org/jira/browse/HBASE-24280) | Hadoop2 and Hadoop3 profiles being activated simultaneously causing test failures |  Major | . | Josh Elser | Istvan Toth |
| [HBASE-24499](https://issues.apache.org/jira/browse/HBASE-24499) | Use a client property for SaslConnection MAX\_ATTEMPTS (currently hardcoded to 5) |  Minor | Client, security | Ravi Kishore Valeti | Ravi Kishore Valeti |
| [HBASE-24513](https://issues.apache.org/jira/browse/HBASE-24513) | The default readRpcTimeout and writeRpcTimeout is incorrectly calculated in AsyncConnectionConfiguration |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-24506](https://issues.apache.org/jira/browse/HBASE-24506) | async client deadlock |  Blocker | asyncclient | Whitney Jackson | Duo Zhang |
| [HBASE-24515](https://issues.apache.org/jira/browse/HBASE-24515) | batch Increment/Append fails when retrying the RPC |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24444](https://issues.apache.org/jira/browse/HBASE-24444) | Should shutdown mini cluster after class in TestMetaAssignmentWithStopMaster |  Minor | test | Duo Zhang | wenfeiyi666 |
| [HBASE-24511](https://issues.apache.org/jira/browse/HBASE-24511) | Ability to configure timeout between RPC retry to RS from master |  Major | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24532](https://issues.apache.org/jira/browse/HBASE-24532) | Execute region plans with throttle should return succeeded plans |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24529](https://issues.apache.org/jira/browse/HBASE-24529) | hbase.rs.evictblocksonclose is not honored when removing compacted files and closing the storefiles |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23195](https://issues.apache.org/jira/browse/HBASE-23195) | FSDataInputStreamWrapper unbuffer can NOT invoke the classes that NOT implements CanUnbuffer but its parents class implements CanUnbuffer |  Critical | io | Zhao Yi Ming | Zhao Yi Ming |
| [HBASE-24189](https://issues.apache.org/jira/browse/HBASE-24189) | WALSplit recreates region dirs for deleted table with recovered edits data |  Major | regionserver, wal | Andrey Elenskiy | Anoop Sam John |
| [HBASE-24517](https://issues.apache.org/jira/browse/HBASE-24517) | AssignmentManager.start should add meta region to ServerStateNode |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-24516](https://issues.apache.org/jira/browse/HBASE-24516) | Parameter copyFiles should be passed in SecureBulkLoadClient |  Minor | Replication | Qilin Cao | Qilin Cao |
| [HBASE-24550](https://issues.apache.org/jira/browse/HBASE-24550) | Passing '-h' or '--help' to bin/hbase doesn't do as expected |  Trivial | Operability, shell | Michael Stack | wenfeiyi666 |
| [HBASE-24579](https://issues.apache.org/jira/browse/HBASE-24579) | Failed SASL authentication does not result in an exception on client side |  Major | rpc | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24446](https://issues.apache.org/jira/browse/HBASE-24446) | Use EnvironmentEdgeManager to compute clock skew in Master |  Minor | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24600](https://issues.apache.org/jira/browse/HBASE-24600) | Empty RegionAction added to MultiRequest in case of RowMutations/CheckAndMutate batch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24117](https://issues.apache.org/jira/browse/HBASE-24117) | Shutdown AssignmentManager before ProcedureExecutor may cause SCP to accidentally skip assigning a region |  Critical | proc-v2 | Michael Stack | Duo Zhang |
| [HBASE-24657](https://issues.apache.org/jira/browse/HBASE-24657) | JsonBean representation of metrics at /jmx endpoint now quotes all numbers |  Minor | metrics | David Manning | David Manning |
| [HBASE-24546](https://issues.apache.org/jira/browse/HBASE-24546) | CloneSnapshotProcedure unlimited retry |  Major | snapshots | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24593](https://issues.apache.org/jira/browse/HBASE-24593) | [branch-2.2] Fix the maven compilation failure for nightly build |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24693](https://issues.apache.org/jira/browse/HBASE-24693) | regioninfo#isLast() has a logic error |  Minor | . | Bo Cui | Bo Cui |
| [HBASE-24720](https://issues.apache.org/jira/browse/HBASE-24720) | Meta replicas not cleaned when disabled |  Minor | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24615](https://issues.apache.org/jira/browse/HBASE-24615) | MutableRangeHistogram#updateSnapshotRangeMetrics doesn't calculate the distribution for last bucket. |  Major | metrics | Rushabh Shah | wenfeiyi666 |
| [HBASE-24721](https://issues.apache.org/jira/browse/HBASE-24721) | rename\_rsgroup overwriting the existing rsgroup. |  Major | . | chiranjeevi | Mohammad Arshad |
| [HBASE-24742](https://issues.apache.org/jira/browse/HBASE-24742) | Improve performance of SKIP vs SEEK logic |  Major | Performance, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-22146](https://issues.apache.org/jira/browse/HBASE-22146) | SpaceQuotaViolationPolicy Disable is not working in Namespace level |  Major | . | Uma Maheswari | Surbhi Kochhar |
| [HBASE-24675](https://issues.apache.org/jira/browse/HBASE-24675) | On Master restart all servers are assigned to default rsgroup. |  Major | rsgroup | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24775](https://issues.apache.org/jira/browse/HBASE-24775) | [hbtop] StoreFile size should be rounded off |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24752](https://issues.apache.org/jira/browse/HBASE-24752) | NPE/500 accessing webui on master startup |  Minor | master | Nick Dimiduk | wenfeiyi666 |
| [HBASE-24794](https://issues.apache.org/jira/browse/HBASE-24794) | hbase.rowlock.wait.duration should not be \<= 0 |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-24713](https://issues.apache.org/jira/browse/HBASE-24713) | RS startup with FSHLog throws NPE after HBASE-21751 |  Minor | wal | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24812](https://issues.apache.org/jira/browse/HBASE-24812) | Fix the precommit error for branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24788](https://issues.apache.org/jira/browse/HBASE-24788) | Fix the connection leaks on getting hbase admin from unclosed connection |  Major | mapreduce | Sandeep Pal | Sandeep Pal |
| [HBASE-24625](https://issues.apache.org/jira/browse/HBASE-24625) | AsyncFSWAL.getLogFileSizeIfBeingWritten does not return the expected synced file length. |  Critical | Replication, wal | chenglei | chenglei |
| [HBASE-23157](https://issues.apache.org/jira/browse/HBASE-23157) | WAL unflushed seqId tracking may wrong when Durability.ASYNC\_WAL is used |  Major | regionserver, wal | Lijin Bin | Duo Zhang |
| [HBASE-24844](https://issues.apache.org/jira/browse/HBASE-24844) | Exception on standalone (master) shutdown |  Minor | Zookeeper | Nick Dimiduk | wenfeiyi666 |
| [HBASE-24884](https://issues.apache.org/jira/browse/HBASE-24884) | BulkLoadHFilesTool/LoadIncrementalHFiles should accept -D options from command line parameters |  Minor | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24926](https://issues.apache.org/jira/browse/HBASE-24926) | Should call setFailure in MergeTableRegionsProcedure when isMergeable returns false |  Major | master, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-24871](https://issues.apache.org/jira/browse/HBASE-24871) | Replication may loss data when refresh recovered replication sources |  Major | Replication | Guanghao Zhang | Sun Xin |
| [HBASE-23987](https://issues.apache.org/jira/browse/HBASE-23987) | NettyRpcClientConfigHelper will not share event loop by default which is incorrect |  Major | Client, rpc | Duo Zhang | Duo Zhang |
| [HBASE-24897](https://issues.apache.org/jira/browse/HBASE-24897) | RegionReplicaFlushHandler should handle NoServerForRegionException to avoid aborting RegionServer |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24892](https://issues.apache.org/jira/browse/HBASE-24892) | config 'hbase.hregion.memstore.mslab.indexchunksize' not be used |  Major | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24971](https://issues.apache.org/jira/browse/HBASE-24971) | Upgrade JQuery to 3.5.1 |  Major | security, UI | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19352](https://issues.apache.org/jira/browse/HBASE-19352) | Port HADOOP-10379: Protect authentication cookies with the HttpOnly and Secure flags |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-24656](https://issues.apache.org/jira/browse/HBASE-24656) | [Flakey Tests] branch-2 TestMasterNoCluster.testStopDuringStart |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24665](https://issues.apache.org/jira/browse/HBASE-24665) | MultiWAL :  Avoid rolling of ALL WALs when one of the WAL needs a roll |  Major | wal | wenfeiyi666 | wenfeiyi666 |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24035](https://issues.apache.org/jira/browse/HBASE-24035) | [Flakey Tests] Disable TestClusterScopeQuotaThrottle#testUserNamespaceClusterScopeQuota |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23974](https://issues.apache.org/jira/browse/HBASE-23974) | [Flakey Tests] Allow that server may not yet be cleared from DeadServers in TestHBCKSCP |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21905](https://issues.apache.org/jira/browse/HBASE-21905) | TestFIFOCompactionPolicy is flaky |  Major | test | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-22524](https://issues.apache.org/jira/browse/HBASE-22524) | Refactor TestReplicationSyncUpTool |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22548](https://issues.apache.org/jira/browse/HBASE-22548) | Split TestAdmin1 |  Major | Admin, test | Duo Zhang | Duo Zhang |
| [HBASE-23814](https://issues.apache.org/jira/browse/HBASE-23814) | Add null checks and logging to misc set of tests |  Trivial | . | Michael Stack | Michael Stack |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24022](https://issues.apache.org/jira/browse/HBASE-24022) | Set version as 2.2.5-SNAPSHOT in branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23771](https://issues.apache.org/jira/browse/HBASE-23771) | [Flakey Tests] Test TestSplitTransactionOnCluster Again |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24432](https://issues.apache.org/jira/browse/HBASE-24432) | Set version as 2.2.6-SNAPSHOT in branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24347](https://issues.apache.org/jira/browse/HBASE-24347) | Hadoop2&Hadoop3 profiles are both active when pre-commit PR builds run |  Major | build | Michael Stack | Josh Elser |
| [HBASE-24598](https://issues.apache.org/jira/browse/HBASE-24598) | Port HBASE-24380 (Improve WAL splitting log lines to enable sessionization) to branch-2.2 |  Major | logging, Operability, wal | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24630](https://issues.apache.org/jira/browse/HBASE-24630) | Purge dev javadoc from client bin tarball |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24690](https://issues.apache.org/jira/browse/HBASE-24690) | Set version to 2.2.6 in branch-2.2 for first RC of 2.2.6 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24756](https://issues.apache.org/jira/browse/HBASE-24756) | Backport HBASE-24336 to branch-2.2 |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-24819](https://issues.apache.org/jira/browse/HBASE-24819) | Fix flaky test TestRaceBetweenSCPAndDTP and TestRaceBetweenSCPAndTRSP for branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24846](https://issues.apache.org/jira/browse/HBASE-24846) | Address compaction races in TestFIFOCompactionPolicy |  Major | Compaction, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24841](https://issues.apache.org/jira/browse/HBASE-24841) | Change the jenkins job urls in our jenkinsfile |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-23851](https://issues.apache.org/jira/browse/HBASE-23851) | Log networks and bind addresses when multicast publisher/listener enabled |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24876](https://issues.apache.org/jira/browse/HBASE-24876) | Fix the flaky job url in hbase-personality.sh |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24126](https://issues.apache.org/jira/browse/HBASE-24126) | Up the container nproc uplimit from 10000 to 12500 |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24150](https://issues.apache.org/jira/browse/HBASE-24150) | Allow module tests run in parallel |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24879](https://issues.apache.org/jira/browse/HBASE-24879) | Fix the shellcheck download url |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24878](https://issues.apache.org/jira/browse/HBASE-24878) | Backport part of HBASE-24079 and HBASE-24034 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24847](https://issues.apache.org/jira/browse/HBASE-24847) | Backport HBASE-23956: Use less resources running tests to branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24907](https://issues.apache.org/jira/browse/HBASE-24907) | Turn off the balancer when test region admin api |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24895](https://issues.apache.org/jira/browse/HBASE-24895) | Speed up TestFromClientSide3 by reduce the table regions number |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24904](https://issues.apache.org/jira/browse/HBASE-24904) | Speed up some unit tests |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24906](https://issues.apache.org/jira/browse/HBASE-24906) | Enlarge the wait time in TestReplicationEndpoint/TestMetaWithReplicasBasic |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24052](https://issues.apache.org/jira/browse/HBASE-24052) | Add debug+fix to TestMasterShutdown |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24948](https://issues.apache.org/jira/browse/HBASE-24948) | Reduce the resource of  TestReplicationBase |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24946](https://issues.apache.org/jira/browse/HBASE-24946) | Remove the metrics assert in TestClusterRestartFailover |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24870](https://issues.apache.org/jira/browse/HBASE-24870) | Ignore TestAsyncTableRSCrashPublish |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24881](https://issues.apache.org/jira/browse/HBASE-24881) | Fix flaky TestMasterAbortAndRSGotKilled for branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24689](https://issues.apache.org/jira/browse/HBASE-24689) | Generate CHANGES.md and RELEASENOTES.md for 2.2.6 |  Major | . | Guanghao Zhang | Guanghao Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-24500](https://issues.apache.org/jira/browse/HBASE-24500) | The behavior of RegionInfoBuilder.newBuilder(RegionInfo) is strange |  Blocker | Client, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-24367](https://issues.apache.org/jira/browse/HBASE-24367) | ScheduledChore log elapsed timespan in a human-friendly format |  Minor | master, regionserver | Nick Dimiduk | Andrew Kyle Purtell |
| [HBASE-24635](https://issues.apache.org/jira/browse/HBASE-24635) | Split TestMetaWithReplicas |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24658](https://issues.apache.org/jira/browse/HBASE-24658) | Update PolicyBasedChaosMonkey to handle uncaught exceptions |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23866](https://issues.apache.org/jira/browse/HBASE-23866) | More test classifications |  Trivial | test | Michael Stack | Michael Stack |
| [HBASE-14847](https://issues.apache.org/jira/browse/HBASE-14847) | Add FIFO compaction section to HBase book |  Major | documentation | Vladimir Rodionov | ethan hur |


