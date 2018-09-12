
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

## Release 2.1.1 - Unreleased (as of 2018-09-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | Validate HFiles do not have PREFIX\_TREE DataBlockEncoding |  Minor | Operability, tooling | Peter Somogyi | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20873](https://issues.apache.org/jira/browse/HBASE-20873) | Update doc for Endpoint-based Export |  Minor | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | PITA having to set WAL provider in two places |  Minor | Operability, wal | stack | Tak Lon (Stephen) Wu |
| [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | Separate the config of block size when we do log splitting and write Hlog |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | Separate region server report requests to new handlers |  Major | Performance | Yi Mei | Yi Mei |
| [HBASE-20985](https://issues.apache.org/jira/browse/HBASE-20985) | add two attributes when we do normalization |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20979](https://issues.apache.org/jira/browse/HBASE-20979) | Flaky test reporting should specify what JSON it needs and handle HTTP errors |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-20469](https://issues.apache.org/jira/browse/HBASE-20469) | Directory used for sidelining old recovered edits files should be made configurable |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-20387](https://issues.apache.org/jira/browse/HBASE-20387) | flaky infrastructure should work for all branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20749](https://issues.apache.org/jira/browse/HBASE-20749) | Upgrade our use of checkstyle to 8.6+ |  Minor | build, community | Sean Busbey | Mike Drob |
| [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | Shaded client jars should always build in relevant phase to avoid confusion |  Major | build | stack | Sean Busbey |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21155](https://issues.apache.org/jira/browse/HBASE-21155) | Save on a few log strings and some churn in wal splitter by skipping out early if no logs in dir |  Trivial | . | stack | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-19572](https://issues.apache.org/jira/browse/HBASE-19572) | RegionMover should use the configured default port number and not the one from HConstants |  Major | . | Esteban Gutierrez | Toshihiro Suzuki |
| [HBASE-20865](https://issues.apache.org/jira/browse/HBASE-20865) | CreateTableProcedure is stuck in retry loop in CREATE\_TABLE\_WRITE\_FS\_LAYOUT state |  Major | amv2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20869](https://issues.apache.org/jira/browse/HBASE-20869) | Endpoint-based Export use incorrect user to write to destination |  Major | Coprocessors | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | Upgrade our hadoop versions to 2.7.7 and 3.0.3 |  Critical | java, security | stack | Duo Zhang |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |
| [HBASE-21018](https://issues.apache.org/jira/browse/HBASE-21018) | RS crashed because AsyncFS was unable to update HDFS data encryption key |  Critical | wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20981](https://issues.apache.org/jira/browse/HBASE-20981) | Rollback stateCount accounting thrown-off when exception out of rollbackState |  Major | amv2 | stack | Jack Bearden |
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
| [HBASE-21113](https://issues.apache.org/jira/browse/HBASE-21113) | Apply the branch-2 version of HBASE-21095, The timeout retry logic for several procedures are broken after master restarts |  Major | amv2 | stack | Allan Yang |
| [HBASE-21078](https://issues.apache.org/jira/browse/HBASE-21078) | [amv2] CODE-BUG NPE in RTP doing Unassign |  Major | amv2 | stack | stack |
| [HBASE-20978](https://issues.apache.org/jira/browse/HBASE-20978) | [amv2] Worker terminating UNNATURALLY during MoveRegionProcedure |  Critical | amv2 | stack | Allan Yang |
| [HBASE-20772](https://issues.apache.org/jira/browse/HBASE-20772) | Controlled shutdown fills Master log with the disturbing message "No matching procedure found for rit=OPEN, location=ZZZZ, table=YYYYY, region=XXXX transition to CLOSED |  Major | logging | stack | stack |
| [HBASE-21120](https://issues.apache.org/jira/browse/HBASE-21120) | MoveRegionProcedure makes no progress; goes to STUCK |  Major | amv2 | stack | stack |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-20968](https://issues.apache.org/jira/browse/HBASE-20968) | list\_procedures\_test fails due to no matching regex |  Major | shell, test | Ted Yu | Duo Zhang |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20741](https://issues.apache.org/jira/browse/HBASE-20741) | Split of a region with replicas creates all daughter regions and its replica in same server |  Major | read replicas | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Major | tooling | Mike Drob | Colin Garcia |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | [amv2] Tool to parse a directory of MasterProcWALs standalone |  Major | amv2, test | stack | stack |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell is always returned when using QualifierFilter |  Major | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20838](https://issues.apache.org/jira/browse/HBASE-20838) | Include hbase-server in precommit test if CommonFSUtils is changed |  Major | . | Yu Li | Yu Li |
| [HBASE-20907](https://issues.apache.org/jira/browse/HBASE-20907) | Fix Intermittent failure on TestProcedurePriority |  Major | . | Yu Li | Yu Li |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |
| [HBASE-21161](https://issues.apache.org/jira/browse/HBASE-21161) | Enable the test added in HBASE-20741 that was removed accidentally |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20847](https://issues.apache.org/jira/browse/HBASE-20847) | The parent procedure of RegionTransitionProcedure may not have the table lock |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20860](https://issues.apache.org/jira/browse/HBASE-20860) | Merged region's RIT state may not be cleaned after master restart |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20875](https://issues.apache.org/jira/browse/HBASE-20875) | MemStoreLABImp::copyIntoCell uses 7% CPU when writing |  Major | Performance | stack | stack |
| [HBASE-20853](https://issues.apache.org/jira/browse/HBASE-20853) | Polish "Add defaults to Table Interface so Implementors don't have to" |  Major | API | stack | Balazs Meszaros |
| [HBASE-20914](https://issues.apache.org/jira/browse/HBASE-20914) | Trim Master memory usage |  Major | master | stack | stack |
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
| [HBASE-21044](https://issues.apache.org/jira/browse/HBASE-21044) | Disable flakey TestShell list\_procedures |  Major | test | stack | stack |
| [HBASE-21050](https://issues.apache.org/jira/browse/HBASE-21050) | Exclusive lock may be held by a SUCCESS state procedure forever |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21094](https://issues.apache.org/jira/browse/HBASE-21094) | Remove the explicit timeout config for TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21093](https://issues.apache.org/jira/browse/HBASE-21093) | Move TestCreateTableProcedure.testMRegions to a separated file |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | Block out HBCK1 in hbase2 |  Major | hbck | stack | stack |
| [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | Create and implement HbckService in master |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-21083](https://issues.apache.org/jira/browse/HBASE-21083) | Introduce a mechanism to bypass the execution of a stuck procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |
| [HBASE-21125](https://issues.apache.org/jira/browse/HBASE-21125) | Backport 'HBASE-20942 Improve RpcServer TRACE logging' to branch-2.1 |  Major | Operability | Esteban Gutierrez | Duo Zhang |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Minor | . | Mike Drob | Mike Drob |


