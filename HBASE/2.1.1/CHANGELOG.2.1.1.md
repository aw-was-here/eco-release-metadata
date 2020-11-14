
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

## Release 2.1.1 - 2018-10-31



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | Validate HFiles do not have PREFIX\_TREE DataBlockEncoding |  Minor | Operability, tooling | Peter Somogyi | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20873](https://issues.apache.org/jira/browse/HBASE-20873) | Update doc for Endpoint-based Export |  Minor | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | PITA having to set WAL provider in two places |  Minor | Operability, wal | Michael Stack | Tak-Lon (Stephen) Wu |
| [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | Separate the config of block size when we do log splitting and write Hlog |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | Separate region server report requests to new handlers |  Major | Performance | Yi Mei | Yi Mei |
| [HBASE-20985](https://issues.apache.org/jira/browse/HBASE-20985) | add two attributes when we do normalization |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20979](https://issues.apache.org/jira/browse/HBASE-20979) | Flaky test reporting should specify what JSON it needs and handle HTTP errors |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-20469](https://issues.apache.org/jira/browse/HBASE-20469) | Directory used for sidelining old recovered edits files should be made configurable |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-20387](https://issues.apache.org/jira/browse/HBASE-20387) | flaky infrastructure should work for all branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20749](https://issues.apache.org/jira/browse/HBASE-20749) | Upgrade our use of checkstyle to 8.6+ |  Minor | build, community | Sean Busbey | Mike Drob |
| [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | Shaded client jars should always build in relevant phase to avoid confusion |  Major | build | Michael Stack | Sean Busbey |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21155](https://issues.apache.org/jira/browse/HBASE-21155) | Save on a few log strings and some churn in wal splitter by skipping out early if no logs in dir |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Minor | tooling | Mike Drob | Colin Garcia |
| [HBASE-21164](https://issues.apache.org/jira/browse/HBASE-21164) | reportForDuty to spew less log if master is initializing |  Minor | regionserver | Michael Stack | Mingliang Liu |
| [HBASE-20857](https://issues.apache.org/jira/browse/HBASE-20857) | JMX - add Balancer status = enabled / disabled |  Major | API, master, metrics, REST, tooling, Usability | Hari Sekhon | Kiran Kumar Maturi |
| [HBASE-21103](https://issues.apache.org/jira/browse/HBASE-21103) | nightly test cache of yetus install needs to be more thorough in verification |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes |  Minor | Operability | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21289](https://issues.apache.org/jira/browse/HBASE-21289) | Remove the log "'hbase.regionserver.maxlogs' was deprecated." in AbstractFSWAL |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21299](https://issues.apache.org/jira/browse/HBASE-21299) | List counts of actual region states in master UI tables section |  Major | UI | Michael Stack | Michael Stack |
| [HBASE-21303](https://issues.apache.org/jira/browse/HBASE-21303) | [shell] clear\_deadservers with no args fails |  Major | . | Stack | Michael Stack |
| [HBASE-21251](https://issues.apache.org/jira/browse/HBASE-21251) | Refactor RegionMover |  Major | Operability | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21290](https://issues.apache.org/jira/browse/HBASE-21290) | No need to instantiate BlockCache for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21263](https://issues.apache.org/jira/browse/HBASE-21263) | Mention compression algorithm along with other storefile details |  Minor | . | Andrew Kyle Purtell | Subrat Mishra |
| [HBASE-21145](https://issues.apache.org/jira/browse/HBASE-21145) | Backport "HBASE-21126 Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes" to branch-2.1 |  Minor | canary, Zookeeper | David Manning | Duo Zhang |
| [HBASE-21385](https://issues.apache.org/jira/browse/HBASE-21385) | HTable.delete request use rpc call directly instead of AsyncProcess |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable |  Minor | master | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | Colocate recovered edits directory with hbase.wal.dir |  Major | MTTR, Recovery, wal | Ted Yu | Zach York |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-19572](https://issues.apache.org/jira/browse/HBASE-19572) | RegionMover should use the configured default port number and not the one from HConstants |  Major | . | Esteban Gutierrez | Toshihiro Suzuki |
| [HBASE-20865](https://issues.apache.org/jira/browse/HBASE-20865) | CreateTableProcedure is stuck in retry loop in CREATE\_TABLE\_WRITE\_FS\_LAYOUT state |  Major | amv2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20869](https://issues.apache.org/jira/browse/HBASE-20869) | Endpoint-based Export use incorrect user to write to destination |  Major | Coprocessors | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | Upgrade our hadoop versions to 2.7.7 and 3.0.3 |  Critical | java, security | Michael Stack | Duo Zhang |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |
| [HBASE-21018](https://issues.apache.org/jira/browse/HBASE-21018) | RS crashed because AsyncFS was unable to update HDFS data encryption key |  Critical | wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20981](https://issues.apache.org/jira/browse/HBASE-20981) | Rollback stateCount accounting thrown-off when exception out of rollbackState |  Major | amv2 | Michael Stack | Jack Bearden |
| [HBASE-21029](https://issues.apache.org/jira/browse/HBASE-21029) | Miscount of memstore's heap/offheap size if same cell was put |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21005](https://issues.apache.org/jira/browse/HBASE-21005) | Maven site configuration causes downstream projects to get a directory named ${project.basedir} |  Minor | build | Matt Burgess | Josh Elser |
| [HBASE-21047](https://issues.apache.org/jira/browse/HBASE-21047) | Object creation of StoreFileScanner thru constructor and close may leave refCount to -1 |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21062](https://issues.apache.org/jira/browse/HBASE-21062) | WALFactory has misleading notion of "default" |  Major | wal | Josh Elser | Josh Elser |
| [HBASE-21074](https://issues.apache.org/jira/browse/HBASE-21074) | JDK7 branches need to pass "-Dhttps.protocols=TLSv1.2" to maven when building |  Major | build, community, test | Sean Busbey | Sean Busbey |
| [HBASE-21058](https://issues.apache.org/jira/browse/HBASE-21058) | Nightly tests for branches 1 fail to build ref guide |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20705](https://issues.apache.org/jira/browse/HBASE-20705) | Having RPC Quota on a table prevents Space quota to be recreated/removed |  Major | . | Biju Nair | Sakthi |
| [HBASE-21032](https://issues.apache.org/jira/browse/HBASE-21032) | ScanResponses contain only one cell each |  Major | Performance, Scanners | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-21031](https://issues.apache.org/jira/browse/HBASE-21031) | Memory leak if replay edits failed during region opening |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21041](https://issues.apache.org/jira/browse/HBASE-21041) | Memstore's heap size will be decreased to minus zero after flush |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20614](https://issues.apache.org/jira/browse/HBASE-20614) | REST scan API with incorrect filter text file throws HTTP 503 Service Unavailable error |  Minor | REST | Nihal Jain | Nihal Jain |
| [HBASE-21101](https://issues.apache.org/jira/browse/HBASE-21101) | Remove the waitUntilAllRegionsAssigned call after split in TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21113](https://issues.apache.org/jira/browse/HBASE-21113) | Apply the branch-2 version of HBASE-21095, The timeout retry logic for several procedures are broken after master restarts |  Major | amv2 | Michael Stack | Allan Yang |
| [HBASE-21078](https://issues.apache.org/jira/browse/HBASE-21078) | [amv2] CODE-BUG NPE in RTP doing Unassign |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-20978](https://issues.apache.org/jira/browse/HBASE-20978) | [amv2] Worker terminating UNNATURALLY during MoveRegionProcedure |  Critical | amv2 | Michael Stack | Allan Yang |
| [HBASE-20772](https://issues.apache.org/jira/browse/HBASE-20772) | Controlled shutdown fills Master log with the disturbing message "No matching procedure found for rit=OPEN, location=ZZZZ, table=YYYYY, region=XXXX transition to CLOSED |  Major | logging | Michael Stack | Michael Stack |
| [HBASE-21120](https://issues.apache.org/jira/browse/HBASE-21120) | MoveRegionProcedure makes no progress; goes to STUCK |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-20968](https://issues.apache.org/jira/browse/HBASE-20968) | list\_procedures\_test fails due to no matching regex |  Major | shell, test | Ted Yu | Duo Zhang |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20741](https://issues.apache.org/jira/browse/HBASE-20741) | Split of a region with replicas creates all daughter regions and its replica in same server |  Major | read replicas | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | [amv2] Tool to parse a directory of MasterProcWALs standalone |  Major | amv2, test | Michael Stack | Michael Stack |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21179](https://issues.apache.org/jira/browse/HBASE-21179) | Fix the number of actions in responseTooSlow log |  Major | logging, rpc | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21182](https://issues.apache.org/jira/browse/HBASE-21182) | Failed to execute start-hbase.sh |  Major | . | Subrat Mishra | Toshihiro Suzuki |
| [HBASE-21206](https://issues.apache.org/jira/browse/HBASE-21206) | Scan with batch size may return incomplete cells |  Critical | Scanners | Zheng Hu | Zheng Hu |
| [HBASE-21203](https://issues.apache.org/jira/browse/HBASE-21203) | TestZKMainServer#testCommandLineWorks won't pass with default 4lw whitelist |  Minor | test, Zookeeper | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20704](https://issues.apache.org/jira/browse/HBASE-20704) | Sometimes some compacted storefiles are not archived on region close |  Critical | Compaction | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-21208](https://issues.apache.org/jira/browse/HBASE-21208) | Bytes#toShort doesn't work without unsafe |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-21223](https://issues.apache.org/jira/browse/HBASE-21223) | [amv2] Remove abort\_procedure from shell |  Critical | amv2, hbck2, shell | Michael Stack | Michael Stack |
| [HBASE-21212](https://issues.apache.org/jira/browse/HBASE-21212) | Wrong flush time when update flush metric |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-21232](https://issues.apache.org/jira/browse/HBASE-21232) | Show table state in Tables view on Master home page |  Major | Operability, UI | Michael Stack | Michael Stack |
| [HBASE-21228](https://issues.apache.org/jira/browse/HBASE-21228) | Memory leak since AbstractFSWAL caches Thread object and never clean later |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-18451](https://issues.apache.org/jira/browse/HBASE-18451) | PeriodicMemstoreFlusher should inspect the queue before adding a delayed flush request |  Major | regionserver | Jean-Marc Spaggiari | Xu Cang |
| [HBASE-19418](https://issues.apache.org/jira/browse/HBASE-19418) | RANGE\_OF\_DELAY in PeriodicMemstoreFlusher should be configurable. |  Minor | . | Jean-Marc Spaggiari | Ramie Raufdeen |
| [HBASE-21196](https://issues.apache.org/jira/browse/HBASE-21196) | HTableMultiplexer clears the meta cache after every put operation |  Critical | Performance | Nihal Jain | Nihal Jain |
| [HBASE-21248](https://issues.apache.org/jira/browse/HBASE-21248) | Implement exponential backoff when retrying for ModifyPeerProcedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-18549](https://issues.apache.org/jira/browse/HBASE-18549) | Unclaimed replication queues can go undetected |  Critical | Replication | Ashu Pachauri | Xu Cang |
| [HBASE-21213](https://issues.apache.org/jira/browse/HBASE-21213) | [hbck2] bypass leaves behind state in RegionStates when assign/unassign |  Major | amv2, hbck2 | Michael Stack | Michael Stack |
| [HBASE-20764](https://issues.apache.org/jira/browse/HBASE-20764) | build broken when latest commit is gpg signed |  Critical | build | Mike Drob | Mike Drob |
| [HBASE-21280](https://issues.apache.org/jira/browse/HBASE-21280) | Add anchors for each heading in UI |  Trivial | UI, Usability | Michael Stack | Michael Stack |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell should not be returned if it does not match QualifierFilter |  Critical | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21259](https://issues.apache.org/jira/browse/HBASE-21259) | [amv2] Revived deadservers; recreated serverstatenode |  Critical | amv2 | Michael Stack | Michael Stack |
| [HBASE-21271](https://issues.apache.org/jira/browse/HBASE-21271) | [amv2] Don't throw UnsupportedOperationException when rollback called on Assign/Unassign; spiral of death |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21260](https://issues.apache.org/jira/browse/HBASE-21260) | The whole balancer plans might be aborted if there are more than one plans to move a same region |  Major | Balancer, master | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21266](https://issues.apache.org/jira/browse/HBASE-21266) | Not running balancer because processing dead regionservers, but empty dead rs list |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21320](https://issues.apache.org/jira/browse/HBASE-21320) | [canary] Cleanup of usage and add commentary |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-21327](https://issues.apache.org/jira/browse/HBASE-21327) | Fix minor logging issue where we don't report servername if no associated SCP |  Trivial | amv2 | Michael Stack | Michael Stack |
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
| [HBASE-21349](https://issues.apache.org/jira/browse/HBASE-21349) | Cluster is going down but CatalogJanitor and Normalizer try to run and fail noisely |  Minor | . | Michael Stack | Xu Cang |
| [HBASE-21342](https://issues.apache.org/jira/browse/HBASE-21342) | FileSystem in use may get closed by other bulk load call  in secure bulkLoad |  Major | . | mazhenlin | mazhenlin |
| [HBASE-21391](https://issues.apache.org/jira/browse/HBASE-21391) | RefreshPeerProcedure should also wait master initialized before executing |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21380](https://issues.apache.org/jira/browse/HBASE-21380) | TestRSGroups failing |  Major | . | Sean Busbey | Mike Drob |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20838](https://issues.apache.org/jira/browse/HBASE-20838) | Include hbase-server in precommit test if CommonFSUtils is changed |  Major | . | Yu Li | Yu Li |
| [HBASE-20907](https://issues.apache.org/jira/browse/HBASE-20907) | Fix Intermittent failure on TestProcedurePriority |  Major | . | Yu Li | Yu Li |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |
| [HBASE-21161](https://issues.apache.org/jira/browse/HBASE-21161) | Enable the test added in HBASE-20741 that was removed accidentally |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21097](https://issues.apache.org/jira/browse/HBASE-21097) | Flush pressure assertion may fail in testFlushThroughputTuning |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-21261](https://issues.apache.org/jira/browse/HBASE-21261) | Add log4j.properties for hbase-rsgroup tests |  Trivial | . | Ted Yu | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20847](https://issues.apache.org/jira/browse/HBASE-20847) | The parent procedure of RegionTransitionProcedure may not have the table lock |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20860](https://issues.apache.org/jira/browse/HBASE-20860) | Merged region's RIT state may not be cleaned after master restart |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20875](https://issues.apache.org/jira/browse/HBASE-20875) | MemStoreLABImp::copyIntoCell uses 7% CPU when writing |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20853](https://issues.apache.org/jira/browse/HBASE-20853) | Polish "Add defaults to Table Interface so Implementors don't have to" |  Major | API | Michael Stack | Balazs Meszaros |
| [HBASE-20914](https://issues.apache.org/jira/browse/HBASE-20914) | Trim Master memory usage |  Major | Balancer, master | Michael Stack | Michael Stack |
| [HBASE-20846](https://issues.apache.org/jira/browse/HBASE-20846) | Restore procedure locks when master restarts |  Major | . | Allan Yang | Duo Zhang |
| [HBASE-20878](https://issues.apache.org/jira/browse/HBASE-20878) | Data loss if merging regions while ServerCrashProcedure executing |  Critical | amv2 | Allan Yang | Allan Yang |
| [HBASE-20867](https://issues.apache.org/jira/browse/HBASE-20867) | RS may get killed while master restarts |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20938](https://issues.apache.org/jira/browse/HBASE-20938) | Set version to 2.1.1-SNAPSHOT for branch-2.1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-20921](https://issues.apache.org/jira/browse/HBASE-20921) | Possible NPE in ReopenTableRegionsProcedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-20939](https://issues.apache.org/jira/browse/HBASE-20939) | There will be race when we call suspendIfNotReady and then throw ProcedureSuspendedException |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-19369](https://issues.apache.org/jira/browse/HBASE-19369) | HBase Should use Builder Pattern to Create Log Files while using WAL on Erasure Coding |  Major | . | Alex Leblang | Mike Drob |
| [HBASE-20893](https://issues.apache.org/jira/browse/HBASE-20893) | Data loss if splitting region while ServerCrashProcedure executing |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20885](https://issues.apache.org/jira/browse/HBASE-20885) | Remove entry for RPC quota from hbase:quota when RPC quota is removed. |  Minor | . | Sakthi | Sakthi |
| [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | Remove RPC quotas when the associated table/Namespace is dropped off |  Minor | . | Sakthi | Sakthi |
| [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | Revert the change of serializing TimeRangeTracker |  Critical | . | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21025](https://issues.apache.org/jira/browse/HBASE-21025) | Add cache for TableStateManager |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20975](https://issues.apache.org/jira/browse/HBASE-20975) | Lock may not be taken or released while rolling back procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21044](https://issues.apache.org/jira/browse/HBASE-21044) | Disable flakey TestShell list\_procedures |  Major | test | Michael Stack | Michael Stack |
| [HBASE-21050](https://issues.apache.org/jira/browse/HBASE-21050) | Exclusive lock may be held by a SUCCESS state procedure forever |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | Block out HBCK1 in hbase2 |  Major | hbck | Michael Stack | Michael Stack |
| [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | Create and implement HbckService in master |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-21083](https://issues.apache.org/jira/browse/HBASE-21083) | Introduce a mechanism to bypass the execution of a stuck procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21189](https://issues.apache.org/jira/browse/HBASE-21189) | flaky job should gather machine stats |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-21172](https://issues.apache.org/jira/browse/HBASE-21172) | Reimplement the retry backoff logic for ReopenTableRegionsProcedure |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21169](https://issues.apache.org/jira/browse/HBASE-21169) | Initiate hbck2 tool in hbase-operator-tools repo |  Major | hbck2 | Umesh Agashe | Michael Stack |
| [HBASE-21156](https://issues.apache.org/jira/browse/HBASE-21156) | [hbck2] Queue an assign of hbase:meta and bulk assign/unassign |  Critical | hbck2 | Michael Stack | Michael Stack |
| [HBASE-21023](https://issues.apache.org/jira/browse/HBASE-21023) | Add bypassProcedureToCompletion() API to HbckService |  Major | hbck2 | Umesh Agashe | Umesh Agashe |
| [HBASE-21214](https://issues.apache.org/jira/browse/HBASE-21214) | [hbck2] setTableState just sets hbase:meta state, not in-memory state |  Major | amv2, hbck2 | Michael Stack | Michael Stack |
| [HBASE-21233](https://issues.apache.org/jira/browse/HBASE-21233) | Allow the procedure implementation to skip persistence of the state after a execution |  Major | Performance, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21249](https://issues.apache.org/jira/browse/HBASE-21249) | Add jitter for ProcedureUtil.getBackoffTimeMs |  Major | proc-v2 | Duo Zhang | Yi Mei |
| [HBASE-19275](https://issues.apache.org/jira/browse/HBASE-19275) | TestSnapshotFileCache never worked properly |  Major | . | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21250](https://issues.apache.org/jira/browse/HBASE-21250) | Refactor WALProcedureStore and add more comments for better understanding the implementation |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21254](https://issues.apache.org/jira/browse/HBASE-21254) | Need to find a way to limit the number of proc wal files |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21309](https://issues.apache.org/jira/browse/HBASE-21309) | Increase the waiting timeout for TestProcedurePriority |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21315](https://issues.apache.org/jira/browse/HBASE-21315) | The getActiveMinProcId and getActiveMaxProcId of BitSetNode are incorrect if there are no active procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21311](https://issues.apache.org/jira/browse/HBASE-21311) | Split TestRestoreSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21310](https://issues.apache.org/jira/browse/HBASE-21310) | Split TestCloneSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-20716](https://issues.apache.org/jira/browse/HBASE-20716) | Unsafe access cleanup |  Critical | Performance | Michael Stack | Sahil Aggarwal |
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
| [HBASE-21397](https://issues.apache.org/jira/browse/HBASE-21397) | Set version to 2.1.1 on branch-2.1 in prep for first RC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21398](https://issues.apache.org/jira/browse/HBASE-21398) | Copy down docs, amend to suite branch-2.1, and then commit |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21191](https://issues.apache.org/jira/browse/HBASE-21191) | Add a holding-pattern if no assign for meta or namespace (Can happen if masterprocwals have been cleared). |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21399](https://issues.apache.org/jira/browse/HBASE-21399) | Generate and commit 2.1.1 RELEASENOTES.md and CHANGES.md |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18201](https://issues.apache.org/jira/browse/HBASE-18201) | add UT and docs for DataBlockEncodingTool |  Minor | tooling | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21093](https://issues.apache.org/jira/browse/HBASE-21093) | Move TestCreateTableProcedure.testMRegions to a separated file |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21094](https://issues.apache.org/jira/browse/HBASE-21094) | Remove the explicit timeout config for TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20540](https://issues.apache.org/jira/browse/HBASE-20540) | [umbrella] Hadoop 3 compatibility |  Major | . | Duo Zhang |  |
| [HBASE-20152](https://issues.apache.org/jira/browse/HBASE-20152) | [AMv2] DisableTableProcedure versus ServerCrashProcedure |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |
| [HBASE-21125](https://issues.apache.org/jira/browse/HBASE-21125) | Backport 'HBASE-20942 Improve RpcServer TRACE logging' to branch-2.1 |  Major | Operability | Esteban Gutierrez | Duo Zhang |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-21287](https://issues.apache.org/jira/browse/HBASE-21287) | JVMClusterUtil Master initialization wait time not configurable |  Major | test | Mike Drob | Mike Drob |
| [HBASE-21114](https://issues.apache.org/jira/browse/HBASE-21114) | website should have a copy of 2.1 release docs |  Major | community, documentation | Sean Busbey | Mike Drob |
| [HBASE-21198](https://issues.apache.org/jira/browse/HBASE-21198) | Exclude dependency on net.minidev:json-smart |  Major | . | Ted Yu | Artem Ervits |
| [HBASE-21294](https://issues.apache.org/jira/browse/HBASE-21294) | [2.1] Update bouncycastle dependency. |  Major | dependencies, test | Josh Elser | Josh Elser |
| [HBASE-21396](https://issues.apache.org/jira/browse/HBASE-21396) | Create 2.1.1 release |  Major | community | Michael Stack | Michael Stack |


