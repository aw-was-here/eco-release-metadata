
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

## Release 2.0.2 - 2018-09-02

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20691](https://issues.apache.org/jira/browse/HBASE-20691) | Storage policy should allow deferring to HDFS |  Blocker | Filesystem Integration, wal | Sean Busbey | Yu Li |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20833](https://issues.apache.org/jira/browse/HBASE-20833) | Modify pre-upgrade coprocessor validator to support table level coprocessors |  Major | Coprocessors | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | Validate HFiles do not have PREFIX\_TREE DataBlockEncoding |  Minor | Operability, tooling | Peter Somogyi | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20810](https://issues.apache.org/jira/browse/HBASE-20810) | Include the procedure id in the exception message in HBaseAdmin for better debugging |  Major | Admin, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20474](https://issues.apache.org/jira/browse/HBASE-20474) | Show non-RPC tasks on master/regionserver Web UI  by default |  Major | UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20873](https://issues.apache.org/jira/browse/HBASE-20873) | Update doc for Endpoint-based Export |  Minor | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | PITA having to set WAL provider in two places |  Minor | Operability, wal | stack | Tak Lon (Stephen) Wu |
| [HBASE-20979](https://issues.apache.org/jira/browse/HBASE-20979) | Flaky test reporting should specify what JSON it needs and handle HTTP errors |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-20387](https://issues.apache.org/jira/browse/HBASE-20387) | flaky infrastructure should work for all branches |  Critical | test | Sean Busbey | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20681](https://issues.apache.org/jira/browse/HBASE-20681) | IntegrationTestDriver fails after HADOOP-15406 due to missing hamcrest-core |  Major | integration tests | Romil Choksi | Josh Elser |
| [HBASE-20765](https://issues.apache.org/jira/browse/HBASE-20765) | Move branch-2.0 version to 2.0.2-SNAPSHOT from 2.0.1 |  Trivial | . | stack | stack |
| [HBASE-20642](https://issues.apache.org/jira/browse/HBASE-20642) | IntegrationTestDDLMasterFailover throws 'InvalidFamilyOperationException |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20767](https://issues.apache.org/jira/browse/HBASE-20767) | Always close hbaseAdmin along with connection in HBTU |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-18622](https://issues.apache.org/jira/browse/HBASE-18622) | Mitigate API compatibility concerns between branch-1 and branch-2 |  Blocker | API | stack | stack |
| [HBASE-20752](https://issues.apache.org/jira/browse/HBASE-20752) | Make sure the regions are truly reopened after ReopenTableRegionsProcedure |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20778](https://issues.apache.org/jira/browse/HBASE-20778) | Make it so WALPE runs on DFS |  Major | test | stack | stack |
| [HBASE-20770](https://issues.apache.org/jira/browse/HBASE-20770) | WAL cleaner logs way too much; gets clogged when lots of work to do |  Critical | logging | stack | stack |
| [HBASE-20403](https://issues.apache.org/jira/browse/HBASE-20403) | Prefetch sometimes doesn't work with encrypted file system |  Major | . | Umesh Agashe | Todd Lipcon |
| [HBASE-20777](https://issues.apache.org/jira/browse/HBASE-20777) | RpcConnection could still remain opened after we shutdown the NettyRpcServer |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-20795](https://issues.apache.org/jira/browse/HBASE-20795) | Allow option in BBKVComparator.compare to do comparison without sequence id |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | stack | stack |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20817](https://issues.apache.org/jira/browse/HBASE-20817) | Infinite loop when executing ReopenTableRegionsProcedure |  Blocker | Region Assignment | Duo Zhang | Ankit Singhal |
| [HBASE-20812](https://issues.apache.org/jira/browse/HBASE-20812) | Add defaults to Table Interface so implementors don't have to |  Major | . | stack | stack |
| [HBASE-20825](https://issues.apache.org/jira/browse/HBASE-20825) | Fix pre and post hooks of CloneSnapshot and RestoreSnapshot for Access checks |  Major | security | Romil Choksi | Ankit Singhal |
| [HBASE-20789](https://issues.apache.org/jira/browse/HBASE-20789) | TestBucketCache#testCacheBlockNextBlockMetadataMissing is flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20822](https://issues.apache.org/jira/browse/HBASE-20822) | TestAsyncNonMetaRegionLocator is flakey |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-20854](https://issues.apache.org/jira/browse/HBASE-20854) | Wrong retries number in RpcRetryingCaller's log message |  Minor | Client, logging | Allan Yang | Allan Yang |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-19572](https://issues.apache.org/jira/browse/HBASE-19572) | RegionMover should use the configured default port number and not the one from HConstants |  Major | . | Esteban Gutierrez | Toshihiro Suzuki |
| [HBASE-20869](https://issues.apache.org/jira/browse/HBASE-20869) | Endpoint-based Export use incorrect user to write to destination |  Major | Coprocessors | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20903](https://issues.apache.org/jira/browse/HBASE-20903) | backport HBASE-20792 "info:servername and info:sn inconsistent for OPEN region" to branch-2.0 |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | Upgrade our hadoop versions to 2.7.7 and 3.0.3 |  Critical | java, security | stack | Duo Zhang |
| [HBASE-20794](https://issues.apache.org/jira/browse/HBASE-20794) | CreateTable operation does not log its landing at the master nor the initiator at INFO level |  Major | logging | stack | Xu Cang |
| [HBASE-20996](https://issues.apache.org/jira/browse/HBASE-20996) | Backport to branch-2.0 HBASE-20722 "Make RegionServerTracker only depend on children changed event" |  Major | . | stack | stack |
| [HBASE-20829](https://issues.apache.org/jira/browse/HBASE-20829) | Remove the addFront assertion in MasterProcedureScheduler.doAdd |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20871](https://issues.apache.org/jira/browse/HBASE-20871) | Backport HBASE-20847 to branch-2.0: "The parent procedure of RegionTransitionProcedure may not have the table lock" |  Critical | amv2 | stack | stack |
| [HBASE-20924](https://issues.apache.org/jira/browse/HBASE-20924) | Backport "HBASE-20846 Restore procedure locks when master restarts" |  Major | amv2 | stack | stack |
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
| [HBASE-21031](https://issues.apache.org/jira/browse/HBASE-21031) | Memory leak if replay edits failed during region opening |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21041](https://issues.apache.org/jira/browse/HBASE-21041) | Memstore's heap size will be decreased to minus zero after flush |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20648](https://issues.apache.org/jira/browse/HBASE-20648) | HBASE-19364 "Truncate\_preserve fails with table when replica region \> 1" for master branch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20614](https://issues.apache.org/jira/browse/HBASE-20614) | REST scan API with incorrect filter text file throws HTTP 503 Service Unavailable error |  Minor | REST | Nihal Jain | Nihal Jain |
| [HBASE-21101](https://issues.apache.org/jira/browse/HBASE-21101) | Remove the waitUntilAllRegionsAssigned call after split in TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21113](https://issues.apache.org/jira/browse/HBASE-21113) | Apply the branch-2 version of HBASE-21095, The timeout retry logic for several procedures are broken after master restarts |  Major | amv2 | stack | Allan Yang |
| [HBASE-21078](https://issues.apache.org/jira/browse/HBASE-21078) | [amv2] CODE-BUG NPE in RTP doing Unassign |  Major | amv2 | stack | stack |
| [HBASE-20978](https://issues.apache.org/jira/browse/HBASE-20978) | [amv2] Worker terminating UNNATURALLY during MoveRegionProcedure |  Critical | amv2 | stack | Allan Yang |
| [HBASE-20772](https://issues.apache.org/jira/browse/HBASE-20772) | Controlled shutdown fills Master log with the disturbing message "No matching procedure found for rit=OPEN, location=ZZZZ, table=YYYYY, region=XXXX transition to CLOSED |  Major | logging | stack | stack |
| [HBASE-21120](https://issues.apache.org/jira/browse/HBASE-21120) | MoveRegionProcedure makes no progress; goes to STUCK |  Major | amv2 | stack | stack |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20968](https://issues.apache.org/jira/browse/HBASE-20968) | list\_procedures\_test fails due to no matching regex |  Major | shell, test | Ted Yu | Duo Zhang |
| [HBASE-21045](https://issues.apache.org/jira/browse/HBASE-21045) | Make a 2.0.2 release |  Major | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20907](https://issues.apache.org/jira/browse/HBASE-20907) | Fix Intermittent failure on TestProcedurePriority |  Major | . | Yu Li | Yu Li |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20745](https://issues.apache.org/jira/browse/HBASE-20745) | Log when master proc wal rolls |  Major | debugging | stack | stack |
| [HBASE-20706](https://issues.apache.org/jira/browse/HBASE-20706) | [hack] Don't add known not-OPEN regions in reopen phase of MTP |  Critical | amv2 | Josh Elser | Josh Elser |
| [HBASE-20710](https://issues.apache.org/jira/browse/HBASE-20710) | extra cloneFamily() in Mutation.add(Cell) |  Minor | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-19764](https://issues.apache.org/jira/browse/HBASE-19764) | Fix Checkstyle errors in hbase-endpoint |  Minor | . | Jan Hentschel | Guangxu Cheng |
| [HBASE-20780](https://issues.apache.org/jira/browse/HBASE-20780) | ServerRpcConnection logging cleanup |  Major | logging, Performance | stack | stack |
| [HBASE-20781](https://issues.apache.org/jira/browse/HBASE-20781) | Save recalculating families in a WALEdit batch of Cells |  Major | Performance | stack | stack |
| [HBASE-19722](https://issues.apache.org/jira/browse/HBASE-19722) | Meta query statistics metrics source |  Major | . | Andrew Purtell | Xu Cang |
| [HBASE-20244](https://issues.apache.org/jira/browse/HBASE-20244) | NoSuchMethodException when retrieving private method decryptEncryptedDataEncryptionKey from DFSClient |  Blocker | wal | Ted Yu | Ted Yu |
| [HBASE-20839](https://issues.apache.org/jira/browse/HBASE-20839) | Fallback to FSHLog if we can not instantiated AsyncFSWAL when user does not specify AsyncFSWAL explicitly |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-20847](https://issues.apache.org/jira/browse/HBASE-20847) | The parent procedure of RegionTransitionProcedure may not have the table lock |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20887](https://issues.apache.org/jira/browse/HBASE-20887) | Backport HBASE-20865 "CreateTableProcedure is stuck in retry loop in CREATE\_TABLE\_WRITE\_FS\_LAYOUT state" |  Major | backport | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20860](https://issues.apache.org/jira/browse/HBASE-20860) | Merged region's RIT state may not be cleaned after master restart |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20875](https://issues.apache.org/jira/browse/HBASE-20875) | MemStoreLABImp::copyIntoCell uses 7% CPU when writing |  Major | Performance | stack | stack |
| [HBASE-20853](https://issues.apache.org/jira/browse/HBASE-20853) | Polish "Add defaults to Table Interface so Implementors don't have to" |  Major | API | stack | Balazs Meszaros |
| [HBASE-20914](https://issues.apache.org/jira/browse/HBASE-20914) | Trim Master memory usage |  Major | master | stack | stack |
| [HBASE-20878](https://issues.apache.org/jira/browse/HBASE-20878) | Data loss if merging regions while ServerCrashProcedure executing |  Critical | amv2 | Allan Yang | Allan Yang |
| [HBASE-20867](https://issues.apache.org/jira/browse/HBASE-20867) | RS may get killed while master restarts |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20921](https://issues.apache.org/jira/browse/HBASE-20921) | Possible NPE in ReopenTableRegionsProcedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-19369](https://issues.apache.org/jira/browse/HBASE-19369) | HBase Should use Builder Pattern to Create Log Files while using WAL on Erasure Coding |  Major | . | Alex Leblang | Mike Drob |
| [HBASE-20893](https://issues.apache.org/jira/browse/HBASE-20893) | Data loss if splitting region while ServerCrashProcedure executing |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20885](https://issues.apache.org/jira/browse/HBASE-20885) | Remove entry for RPC quota from hbase:quota when RPC quota is removed. |  Minor | . | Sakthi | Sakthi |
| [HBASE-21004](https://issues.apache.org/jira/browse/HBASE-21004) | Backport to branch-2.0 HBASE-20708 "Remove the usage of RecoverMetaProcedure" |  Major | amv2 | stack | stack |
| [HBASE-21009](https://issues.apache.org/jira/browse/HBASE-21009) | Backport to branch-2.0 HBASE-20739 "Add priority for SCP" |  Major | amv2 | stack | stack |
| [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | Remove RPC quotas when the associated table/Namespace is dropped off |  Minor | . | Sakthi | Sakthi |
| [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | Revert the change of serializing TimeRangeTracker |  Critical | . | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21025](https://issues.apache.org/jira/browse/HBASE-21025) | Add cache for TableStateManager |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20975](https://issues.apache.org/jira/browse/HBASE-20975) | Lock may not be taken or released while rolling back procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21044](https://issues.apache.org/jira/browse/HBASE-21044) | Disable flakey TestShell list\_procedures |  Major | test | stack | stack |
| [HBASE-21046](https://issues.apache.org/jira/browse/HBASE-21046) | Set version to 2.0.2 on branch-2.0 in prep for first RC |  Major | . | stack | stack |
| [HBASE-21050](https://issues.apache.org/jira/browse/HBASE-21050) | Exclusive lock may be held by a SUCCESS state procedure forever |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21094](https://issues.apache.org/jira/browse/HBASE-21094) | Remove the explicit timeout config for TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21093](https://issues.apache.org/jira/browse/HBASE-21093) | Move TestCreateTableProcedure.testMRegions to a separated file |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | Block out HBCK1 in hbase2 |  Major | hbck | stack | stack |
| [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | Create and implement HbckService in master |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-21083](https://issues.apache.org/jira/browse/HBASE-21083) | Introduce a mechanism to bypass the execution of a stuck procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21054](https://issues.apache.org/jira/browse/HBASE-21054) | Copy down docs, amend to suite branch-2.0, and then commit |  Major | documentation | stack | stack |
| [HBASE-21123](https://issues.apache.org/jira/browse/HBASE-21123) | Commit 2.0.2 RELEASENOTES and CHANGES |  Major | . | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20989](https://issues.apache.org/jira/browse/HBASE-20989) | Minor, miscellaneous logging fixes |  Trivial | logging | stack | stack |
| [HBASE-20512](https://issues.apache.org/jira/browse/HBASE-20512) | document change to running tests on secure clusters |  Critical | documentation, integration tests, Usability | Sean Busbey | stack |
| [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | Improve RpcServer TRACE logging |  Major | Operability | Esteban Gutierrez | Krish Dey |


