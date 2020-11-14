
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

## Release 2.0.3 - 2018-12-02



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Minor | tooling | Mike Drob | Colin Garcia |
| [HBASE-21103](https://issues.apache.org/jira/browse/HBASE-21103) | nightly test cache of yetus install needs to be more thorough in verification |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes |  Minor | Operability | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21289](https://issues.apache.org/jira/browse/HBASE-21289) | Remove the log "'hbase.regionserver.maxlogs' was deprecated." in AbstractFSWAL |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21303](https://issues.apache.org/jira/browse/HBASE-21303) | [shell] clear\_deadservers with no args fails |  Major | . | Stack | Michael Stack |
| [HBASE-21251](https://issues.apache.org/jira/browse/HBASE-21251) | Refactor RegionMover |  Major | Operability | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21290](https://issues.apache.org/jira/browse/HBASE-21290) | No need to instantiate BlockCache for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21263](https://issues.apache.org/jira/browse/HBASE-21263) | Mention compression algorithm along with other storefile details |  Minor | . | Andrew Kyle Purtell | Subrat Mishra |
| [HBASE-21385](https://issues.apache.org/jira/browse/HBASE-21385) | HTable.delete request use rpc call directly instead of AsyncProcess |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21388](https://issues.apache.org/jira/browse/HBASE-21388) | No need to instantiate MemStoreLAB for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21480](https://issues.apache.org/jira/browse/HBASE-21480) | Taking snapshot when RS crashes prevent we bring the regions online |  Major | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-21527](https://issues.apache.org/jira/browse/HBASE-21527) | [2.0] Unnecessary DEBUG log in ConnectionImplementation#isTableEnabled |  Major | Client | Josh Elser | Josh Elser |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20506](https://issues.apache.org/jira/browse/HBASE-20506) | Add doc and test for unused RetryCounter, useful-looking utility |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21179](https://issues.apache.org/jira/browse/HBASE-21179) | Fix the number of actions in responseTooSlow log |  Major | logging, rpc | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21206](https://issues.apache.org/jira/browse/HBASE-21206) | Scan with batch size may return incomplete cells |  Critical | Scanners | Zheng Hu | Zheng Hu |
| [HBASE-21203](https://issues.apache.org/jira/browse/HBASE-21203) | TestZKMainServer#testCommandLineWorks won't pass with default 4lw whitelist |  Minor | test, Zookeeper | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20704](https://issues.apache.org/jira/browse/HBASE-20704) | Sometimes some compacted storefiles are not archived on region close |  Critical | Compaction | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-21208](https://issues.apache.org/jira/browse/HBASE-21208) | Bytes#toShort doesn't work without unsafe |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-21223](https://issues.apache.org/jira/browse/HBASE-21223) | [amv2] Remove abort\_procedure from shell |  Critical | amv2, hbck2, shell | Michael Stack | Michael Stack |
| [HBASE-21212](https://issues.apache.org/jira/browse/HBASE-21212) | Wrong flush time when update flush metric |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-21228](https://issues.apache.org/jira/browse/HBASE-21228) | Memory leak since AbstractFSWAL caches Thread object and never clean later |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-21196](https://issues.apache.org/jira/browse/HBASE-21196) | HTableMultiplexer clears the meta cache after every put operation |  Critical | Performance | Nihal Jain | Nihal Jain |
| [HBASE-20764](https://issues.apache.org/jira/browse/HBASE-20764) | build broken when latest commit is gpg signed |  Critical | build | Mike Drob | Mike Drob |
| [HBASE-21280](https://issues.apache.org/jira/browse/HBASE-21280) | Add anchors for each heading in UI |  Trivial | UI, Usability | Michael Stack | Michael Stack |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell should not be returned if it does not match QualifierFilter |  Critical | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21259](https://issues.apache.org/jira/browse/HBASE-21259) | [amv2] Revived deadservers; recreated serverstatenode |  Critical | amv2 | Michael Stack | Michael Stack |
| [HBASE-21271](https://issues.apache.org/jira/browse/HBASE-21271) | [amv2] Don't throw UnsupportedOperationException when rollback called on Assign/Unassign; spiral of death |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21260](https://issues.apache.org/jira/browse/HBASE-21260) | The whole balancer plans might be aborted if there are more than one plans to move a same region |  Major | Balancer, master | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21266](https://issues.apache.org/jira/browse/HBASE-21266) | Not running balancer because processing dead regionservers, but empty dead rs list |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21320](https://issues.apache.org/jira/browse/HBASE-21320) | [canary] Cleanup of usage and add commentary |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-21327](https://issues.apache.org/jira/browse/HBASE-21327) | Fix minor logging issue where we don't report servername if no associated SCP |  Trivial | amv2 | Michael Stack | Michael Stack |
| [HBASE-21055](https://issues.apache.org/jira/browse/HBASE-21055) | NullPointerException when balanceOverall() but server balance info is null |  Major | Balancer | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21291](https://issues.apache.org/jira/browse/HBASE-21291) | Add a test for bypassing stuck state-machine procedures |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21335](https://issues.apache.org/jira/browse/HBASE-21335) | Change the default wait time of HBCK2 tool |  Critical | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21292](https://issues.apache.org/jira/browse/HBASE-21292) | IdLock.getLockEntry() may hang if interrupted |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21200](https://issues.apache.org/jira/browse/HBASE-21200) | Memstore flush doesn't finish because of seekToPreviousRow() in memstore scanner. |  Critical | Scanners | dongjin2193.jeon | Toshihiro Suzuki |
| [HBASE-21345](https://issues.apache.org/jira/browse/HBASE-21345) | [hbck2] Allow version check to proceed even though master is 'initializing'. |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-21348](https://issues.apache.org/jira/browse/HBASE-21348) | Fix failing TestRegionBypass, broke by HBASE-21291 |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-21242](https://issues.apache.org/jira/browse/HBASE-21242) | [amv2] Miscellaneous minor log and assign procedure create improvements |  Minor | amv2, Operability | Michael Stack | Michael Stack |
| [HBASE-21178](https://issues.apache.org/jira/browse/HBASE-21178) | [BC break] : Get and Scan operation with a custom converter\_class not working |  Critical | shell | Subrat Mishra | Subrat Mishra |
| [HBASE-21334](https://issues.apache.org/jira/browse/HBASE-21334) | TestMergeTableRegionsProcedure is flakey |  Major | amv2, proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-21355](https://issues.apache.org/jira/browse/HBASE-21355) | HStore's storeSize is calculated repeatedly which causing the confusing region split |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21356](https://issues.apache.org/jira/browse/HBASE-21356) | bulkLoadHFile API should ensure that rs has the source hfile's write permission |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21349](https://issues.apache.org/jira/browse/HBASE-21349) | Cluster is going down but CatalogJanitor and Normalizer try to run and fail noisely |  Minor | . | Michael Stack | Xu Cang |
| [HBASE-21342](https://issues.apache.org/jira/browse/HBASE-21342) | FileSystem in use may get closed by other bulk load call  in secure bulkLoad |  Major | . | mazhenlin | mazhenlin |
| [HBASE-21344](https://issues.apache.org/jira/browse/HBASE-21344) | hbase:meta location in ZooKeeper set to OPENING by the procedure which eventually failed but precludes Master from assigning it forever |  Major | proc-v2 | Ankit Singhal | Ankit Singhal |
| [HBASE-21371](https://issues.apache.org/jira/browse/HBASE-21371) | Hbase unable to compile against Hadoop trunk (3.3.0-SNAPSHOT) due to license error |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | Pre commit build is broken due to surefire plugin crashes |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-21424](https://issues.apache.org/jira/browse/HBASE-21424) | Change flakies and nightlies so scheduled less often |  Major | build | Michael Stack | Michael Stack |
| [HBASE-21407](https://issues.apache.org/jira/browse/HBASE-21407) | Resolve NPE in backup Master UI |  Minor | UI | Jingyun Tian | Jingyun Tian |
| [HBASE-21425](https://issues.apache.org/jira/browse/HBASE-21425) | 2.1.1 fails to start over 1.x data; namespace not assigned |  Critical | amv2 | Michael Stack | Michael Stack |
| [HBASE-21438](https://issues.apache.org/jira/browse/HBASE-21438) | TestAdmin2#testGetProcedures fails due to FailedProcedure inaccessible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20604](https://issues.apache.org/jira/browse/HBASE-20604) | ProtobufLogReader#readNext can incorrectly loop to the same position in the stream until the the WAL is rolled |  Critical | Replication, wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-21439](https://issues.apache.org/jira/browse/HBASE-21439) | StochasticLoadBalancer RegionLoads aren’t being used in RegionLoad cost functions |  Major | Balancer | Ben Lau | Ben Lau |
| [HBASE-21437](https://issues.apache.org/jira/browse/HBASE-21437) | Bypassed procedure throw IllegalArgumentException when its state is WAITING\_TIMEOUT |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21445](https://issues.apache.org/jira/browse/HBASE-21445) | CopyTable by bulkload will write hfile into yarn's HDFS |  Major | mapreduce | Zheng Hu | Zheng Hu |
| [HBASE-21468](https://issues.apache.org/jira/browse/HBASE-21468) | separate workers for meta table is not working |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21440](https://issues.apache.org/jira/browse/HBASE-21440) | Assign procedure on the crashed server is not properly interrupted |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-21503](https://issues.apache.org/jira/browse/HBASE-21503) | Replication normal source can get stuck due potential race conditions between source wal reader and wal provider initialization threads. |  Blocker | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-21300](https://issues.apache.org/jira/browse/HBASE-21300) | Fix the wrong reference file path when restoring snapshots for tables with MOB columns |  Major | . | Yi Mei | Yi Mei |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21097](https://issues.apache.org/jira/browse/HBASE-21097) | Flush pressure assertion may fail in testFlushThroughputTuning |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-21261](https://issues.apache.org/jira/browse/HBASE-21261) | Add log4j.properties for hbase-rsgroup tests |  Trivial | . | Ted Yu | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21189](https://issues.apache.org/jira/browse/HBASE-21189) | flaky job should gather machine stats |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-21172](https://issues.apache.org/jira/browse/HBASE-21172) | Reimplement the retry backoff logic for ReopenTableRegionsProcedure |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21233](https://issues.apache.org/jira/browse/HBASE-21233) | Allow the procedure implementation to skip persistence of the state after a execution |  Major | Performance, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21249](https://issues.apache.org/jira/browse/HBASE-21249) | Add jitter for ProcedureUtil.getBackoffTimeMs |  Major | proc-v2 | Duo Zhang | Yi Mei |
| [HBASE-19275](https://issues.apache.org/jira/browse/HBASE-19275) | TestSnapshotFileCache never worked properly |  Major | . | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21250](https://issues.apache.org/jira/browse/HBASE-21250) | Refactor WALProcedureStore and add more comments for better understanding the implementation |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21268](https://issues.apache.org/jira/browse/HBASE-21268) | Backport to branch-2.0 " HBASE-21213 [hbck2] bypass leaves behind state in RegionStates when assign/unassign" |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21254](https://issues.apache.org/jira/browse/HBASE-21254) | Need to find a way to limit the number of proc wal files |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21309](https://issues.apache.org/jira/browse/HBASE-21309) | Increase the waiting timeout for TestProcedurePriority |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21315](https://issues.apache.org/jira/browse/HBASE-21315) | The getActiveMinProcId and getActiveMaxProcId of BitSetNode are incorrect if there are no active procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21311](https://issues.apache.org/jira/browse/HBASE-21311) | Split TestRestoreSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21310](https://issues.apache.org/jira/browse/HBASE-21310) | Split TestCloneSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21288](https://issues.apache.org/jira/browse/HBASE-21288) | HostingServer in UnassignProcedure is not accurate |  Major | amv2, Balancer | Allan Yang | Allan Yang |
| [HBASE-21075](https://issues.apache.org/jira/browse/HBASE-21075) | Confirm that we can (rolling) upgrade from 2.0.x and 2.1.x to 2.2.x after HBASE-20881 |  Blocker | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21323](https://issues.apache.org/jira/browse/HBASE-21323) | Should not skip force updating for a sub procedure even if it has been finished |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21336](https://issues.apache.org/jira/browse/HBASE-21336) | Simplify the implementation of WALProcedureMap |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21321](https://issues.apache.org/jira/browse/HBASE-21321) | Backport HBASE-21278 to branch-2.1 and branch-2.0 |  Critical | . | Duo Zhang | Michael Stack |
| [HBASE-21354](https://issues.apache.org/jira/browse/HBASE-21354) | Procedure may be deleted improperly during master restarts resulting in 'Corrupt' |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21073](https://issues.apache.org/jira/browse/HBASE-21073) | "Maintenance mode" master |  Major | amv2, hbck2, master | Michael Stack | Mike Drob |
| [HBASE-21192](https://issues.apache.org/jira/browse/HBASE-21192) | Add HOW-TO repair damaged AMv2. |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21338](https://issues.apache.org/jira/browse/HBASE-21338) | [balancer] If balancer is an ill-fit for cluster size, it gives little indication |  Major | Balancer, Operability | Michael Stack | Xu Cang |
| [HBASE-21363](https://issues.apache.org/jira/browse/HBASE-21363) | Rewrite the buildingHoldCleanupTracker method in WALProcedureStore |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21372](https://issues.apache.org/jira/browse/HBASE-21372) | Set hbase.assignment.maximum.attempts to Long.MAX |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21215](https://issues.apache.org/jira/browse/HBASE-21215) | Figure how to invoke hbck2; make it easy to find |  Major | amv2, hbck2 | Michael Stack | Michael Stack |
| [HBASE-21364](https://issues.apache.org/jira/browse/HBASE-21364) | Procedure holds the lock should put to front of the queue after restart |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-21384](https://issues.apache.org/jira/browse/HBASE-21384) | Procedure with holdlock=false should not be restored lock when restarts |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-20973](https://issues.apache.org/jira/browse/HBASE-20973) | ArrayIndexOutOfBoundsException when rolling back procedure |  Critical | amv2 | Allan Yang | Duo Zhang |
| [HBASE-21375](https://issues.apache.org/jira/browse/HBASE-21375) | Revisit the lock and queue implementation in MasterProcedureScheduler |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21322](https://issues.apache.org/jira/browse/HBASE-21322) | Add a scheduleServerCrashProcedure() API to HbckService |  Critical | hbck2 | Jingyun Tian | Jingyun Tian |
| [HBASE-21237](https://issues.apache.org/jira/browse/HBASE-21237) | Use CompatRemoteProcedureResolver to dispatch open/close region requests to RS |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-21191](https://issues.apache.org/jira/browse/HBASE-21191) | Add a holding-pattern if no assign for meta or namespace (Can happen if masterprocwals have been cleared). |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21351](https://issues.apache.org/jira/browse/HBASE-21351) | The force update thread may have race with PE worker when the procedure is rolling back |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21395](https://issues.apache.org/jira/browse/HBASE-21395) | Abort split/merge procedure if there is a table procedure of the same table going on |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21314](https://issues.apache.org/jira/browse/HBASE-21314) | The implementation of BitSetNode is not efficient |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21421](https://issues.apache.org/jira/browse/HBASE-21421) | Do not kill RS if reportOnlineRegions fails |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21376](https://issues.apache.org/jira/browse/HBASE-21376) | Add some verbose log to MasterProcedureScheduler |  Major | logging, proc-v2 | Allan Yang | Duo Zhang |
| [HBASE-21423](https://issues.apache.org/jira/browse/HBASE-21423) | Procedures for meta table/region should be able to execute in separate workers |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21473](https://issues.apache.org/jira/browse/HBASE-21473) | RowIndexSeekerV1 may return cell with extra two \\x00\\x00 bytes which has no tags |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21496](https://issues.apache.org/jira/browse/HBASE-21496) | Set version to 2.0.3 on branch-2.0 in prep for first RC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21497](https://issues.apache.org/jira/browse/HBASE-21497) | Copy down docs for 2.0.3 release |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-21377](https://issues.apache.org/jira/browse/HBASE-21377) | Add debug log for procedure stack id related operations |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21490](https://issues.apache.org/jira/browse/HBASE-21490) | WALProcedure may remove proc wal files still with active procedures |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21499](https://issues.apache.org/jira/browse/HBASE-21499) | Release notes and changes for 2.0.3RC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21543](https://issues.apache.org/jira/browse/HBASE-21543) | Add 2.0.3. release to downloads page. |  Major | . | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20540](https://issues.apache.org/jira/browse/HBASE-20540) | [umbrella] Hadoop 3 compatibility |  Major | . | Duo Zhang |  |
| [HBASE-20152](https://issues.apache.org/jira/browse/HBASE-20152) | [AMv2] DisableTableProcedure versus ServerCrashProcedure |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-18735](https://issues.apache.org/jira/browse/HBASE-18735) | Provide a fast mechanism for shutting down mini cluster |  Major | . | Samarth Jain | Artem Ervits |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |
| [HBASE-21287](https://issues.apache.org/jira/browse/HBASE-21287) | JVMClusterUtil Master initialization wait time not configurable |  Major | test | Mike Drob | Mike Drob |
| [HBASE-21293](https://issues.apache.org/jira/browse/HBASE-21293) | [2.0] Update bouncycastle dependency. |  Major | dependencies, test | Josh Elser | Josh Elser |
| [HBASE-21198](https://issues.apache.org/jira/browse/HBASE-21198) | Exclude dependency on net.minidev:json-smart |  Major | . | Ted Yu | Artem Ervits |


