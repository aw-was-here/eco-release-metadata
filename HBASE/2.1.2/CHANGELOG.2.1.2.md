
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

## Release 2.1.2 - 2019-01-08



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21388](https://issues.apache.org/jira/browse/HBASE-21388) | No need to instantiate MemStoreLAB for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21485](https://issues.apache.org/jira/browse/HBASE-21485) | Add more debug logs for remote procedure execution |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21480](https://issues.apache.org/jira/browse/HBASE-21480) | Taking snapshot when RS crashes prevent we bring the regions online |  Major | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-21511](https://issues.apache.org/jira/browse/HBASE-21511) | Remove in progress snapshot check in SnapshotFileCache#getUnreferencedFiles |  Minor | snapshots | Ted Yu | Ted Yu |
| [HBASE-21524](https://issues.apache.org/jira/browse/HBASE-21524) | Unnecessary DEBUG log in ConnectionImplementation#isTableEnabled |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-21413](https://issues.apache.org/jira/browse/HBASE-21413) | Empty meta log doesn't get split when restart whole cluster |  Major | . | Jingyun Tian | Allan Yang |
| [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | Allow overriding configs starting up the shell |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-21549](https://issues.apache.org/jira/browse/HBASE-21549) | Add shell command for serial replication peer |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21554](https://issues.apache.org/jira/browse/HBASE-21554) | Show replication endpoint classname for replication peer on master web UI |  Minor | UI | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21520](https://issues.apache.org/jira/browse/HBASE-21520) | TestMultiColumnScanner cost long time when using ROWCOL bloom type |  Major | test | Zheng Hu | Zheng Hu |
| [HBASE-21635](https://issues.apache.org/jira/browse/HBASE-21635) | Use maven enforcer to ban imports from illegal packages |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-21631](https://issues.apache.org/jira/browse/HBASE-21631) | list\_quotas should print human readable values for LIMIT |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21640](https://issues.apache.org/jira/browse/HBASE-21640) | Remove the TODO when increment zero |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21410](https://issues.apache.org/jira/browse/HBASE-21410) | A helper page that help find all problematic regions and procedures |  Major | . | Jingyun Tian | Jingyun Tian |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21055](https://issues.apache.org/jira/browse/HBASE-21055) | NullPointerException when balanceOverall() but server balance info is null |  Major | Balancer | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21356](https://issues.apache.org/jira/browse/HBASE-21356) | bulkLoadHFile API should ensure that rs has the source hfile's write permission |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21371](https://issues.apache.org/jira/browse/HBASE-21371) | Hbase unable to compile against Hadoop trunk (3.3.0-SNAPSHOT) due to license error |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | Pre commit build is broken due to surefire plugin crashes |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-21424](https://issues.apache.org/jira/browse/HBASE-21424) | Change flakies and nightlies so scheduled less often |  Major | build | Michael Stack | Michael Stack |
| [HBASE-21407](https://issues.apache.org/jira/browse/HBASE-21407) | Resolve NPE in backup Master UI |  Minor | UI | Jingyun Tian | Jingyun Tian |
| [HBASE-21425](https://issues.apache.org/jira/browse/HBASE-21425) | 2.1.1 fails to start over 1.x data; namespace not assigned |  Critical | amv2 | Michael Stack | Michael Stack |
| [HBASE-21438](https://issues.apache.org/jira/browse/HBASE-21438) | TestAdmin2#testGetProcedures fails due to FailedProcedure inaccessible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21247](https://issues.apache.org/jira/browse/HBASE-21247) | Custom Meta WAL Provider doesn't default to custom WAL Provider whose configuration value is outside the enums in Providers |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-20604](https://issues.apache.org/jira/browse/HBASE-20604) | ProtobufLogReader#readNext can incorrectly loop to the same position in the stream until the the WAL is rolled |  Critical | Replication, wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-21439](https://issues.apache.org/jira/browse/HBASE-21439) | StochasticLoadBalancer RegionLoads aren’t being used in RegionLoad cost functions |  Major | Balancer | Ben Lau | Ben Lau |
| [HBASE-21437](https://issues.apache.org/jira/browse/HBASE-21437) | Bypassed procedure throw IllegalArgumentException when its state is WAITING\_TIMEOUT |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21445](https://issues.apache.org/jira/browse/HBASE-21445) | CopyTable by bulkload will write hfile into yarn's HDFS |  Major | mapreduce | Zheng Hu | Zheng Hu |
| [HBASE-21468](https://issues.apache.org/jira/browse/HBASE-21468) | separate workers for meta table is not working |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21440](https://issues.apache.org/jira/browse/HBASE-21440) | Assign procedure on the crashed server is not properly interrupted |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-21503](https://issues.apache.org/jira/browse/HBASE-21503) | Replication normal source can get stuck due potential race conditions between source wal reader and wal provider initialization threads. |  Blocker | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-21507](https://issues.apache.org/jira/browse/HBASE-21507) | Compaction failed when execute AbstractMultiFileWriter.beforeShipped() method |  Critical | Compaction, regionserver | lixiaobao | lixiaobao |
| [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | CellCodec Written To WAL Before It's Verified |  Critical | wal | David Mollitor | David Mollitor |
| [HBASE-21300](https://issues.apache.org/jira/browse/HBASE-21300) | Fix the wrong reference file path when restoring snapshots for tables with MOB columns |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21504](https://issues.apache.org/jira/browse/HBASE-21504) | If enable FIFOCompactionPolicy, a compaction may write a "empty" hfile whose maxTimeStamp is long max. This kind of hfile will never be archived. |  Critical | Compaction | xuming | Zheng Hu |
| [HBASE-21518](https://issues.apache.org/jira/browse/HBASE-21518) | TestMasterFailoverWithProcedures is flaky |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21479](https://issues.apache.org/jira/browse/HBASE-21479) | Individual tests in TestHRegionReplayEvents class are failing |  Major | . | Ted Yu | Peter Somogyi |
| [HBASE-21551](https://issues.apache.org/jira/browse/HBASE-21551) | Memory leak when use scan with STREAM at server side |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21559](https://issues.apache.org/jira/browse/HBASE-21559) | The RestoreSnapshotFromClientTestBase related UT are flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21453](https://issues.apache.org/jira/browse/HBASE-21453) | Convert ReadOnlyZKClient to DEBUG instead of INFO |  Major | logging, Zookeeper | Michael Stack | Sakthi |
| [HBASE-21568](https://issues.apache.org/jira/browse/HBASE-21568) | Disable use of BlockCache for LoadIncrementalHFiles |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-21582](https://issues.apache.org/jira/browse/HBASE-21582) | If call HBaseAdmin#snapshotAsync but forget call isSnapshotFinished, then SnapshotHFileCleaner will skip to run every time |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21589](https://issues.apache.org/jira/browse/HBASE-21589) | TestCleanupMetaWAL fails |  Blocker | test, wal | Michael Stack | Michael Stack |
| [HBASE-21592](https://issues.apache.org/jira/browse/HBASE-21592) | quota.addGetResult(r)  throw  NPE |  Major | . | xuqinya | xuqinya |
| [HBASE-21498](https://issues.apache.org/jira/browse/HBASE-21498) | Master OOM when SplitTableRegionProcedure new CacheConfig and instantiate a new BlockCache |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21610](https://issues.apache.org/jira/browse/HBASE-21610) | numOpenConnections metric is set to -1 when zero server channel exist |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21620](https://issues.apache.org/jira/browse/HBASE-21620) | Problem in scan query when using more than one column prefix filter in some cases. |  Major | Scanners | Mohamed Mohideen Meeran | Zheng Hu |
| [HBASE-21621](https://issues.apache.org/jira/browse/HBASE-21621) | Reversed scan does not return expected  number of rows |  Critical | Scanners | Nihal Jain | Guanghao Zhang |
| [HBASE-21629](https://issues.apache.org/jira/browse/HBASE-21629) | draining\_servers.rb is broken |  Major | scripts | Nihal Jain | Nihal Jain |
| [HBASE-21545](https://issues.apache.org/jira/browse/HBASE-21545) | NEW\_VERSION\_BEHAVIOR breaks Get/Scan with specified columns |  Major | API | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-21646](https://issues.apache.org/jira/browse/HBASE-21646) | Flakey TestTableSnapshotInputFormat; DisableTable not completing... |  Major | test | Michael Stack | Michael Stack |
| [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result |  Critical | Client | Jermy Li | Guanghao Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20136](https://issues.apache.org/jira/browse/HBASE-20136) | TestKeyValue misses ClassRule and Category annotations |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21375](https://issues.apache.org/jira/browse/HBASE-21375) | Revisit the lock and queue implementation in MasterProcedureScheduler |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21322](https://issues.apache.org/jira/browse/HBASE-21322) | Add a scheduleServerCrashProcedure() API to HbckService |  Critical | hbck2 | Jingyun Tian | Jingyun Tian |
| [HBASE-21237](https://issues.apache.org/jira/browse/HBASE-21237) | Use CompatRemoteProcedureResolver to dispatch open/close region requests to RS |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-21351](https://issues.apache.org/jira/browse/HBASE-21351) | The force update thread may have race with PE worker when the procedure is rolling back |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21395](https://issues.apache.org/jira/browse/HBASE-21395) | Abort split/merge procedure if there is a table procedure of the same table going on |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21314](https://issues.apache.org/jira/browse/HBASE-21314) | The implementation of BitSetNode is not efficient |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21421](https://issues.apache.org/jira/browse/HBASE-21421) | Do not kill RS if reportOnlineRegions fails |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21442](https://issues.apache.org/jira/browse/HBASE-21442) | Update branch-2.1 for next development cycle |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-21376](https://issues.apache.org/jira/browse/HBASE-21376) | Add some verbose log to MasterProcedureScheduler |  Major | logging, proc-v2 | Allan Yang | Duo Zhang |
| [HBASE-21423](https://issues.apache.org/jira/browse/HBASE-21423) | Procedures for meta table/region should be able to execute in separate workers |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21473](https://issues.apache.org/jira/browse/HBASE-21473) | RowIndexSeekerV1 may return cell with extra two \\x00\\x00 bytes which has no tags |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21377](https://issues.apache.org/jira/browse/HBASE-21377) | Add debug log for procedure stack id related operations |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21490](https://issues.apache.org/jira/browse/HBASE-21490) | WALProcedure may remove proc wal files still with active procedures |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21566](https://issues.apache.org/jira/browse/HBASE-21566) | Release notes and changes for 2.0.4RC0 and 2.1.2RC0 |  Major | community | Michael Stack | Michael Stack |
| [HBASE-21570](https://issues.apache.org/jira/browse/HBASE-21570) | Add write buffer periodic flush support for AsyncBufferedMutator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21401](https://issues.apache.org/jira/browse/HBASE-21401) | Sanity check when constructing the KeyValue |  Critical | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21697](https://issues.apache.org/jira/browse/HBASE-21697) | Add 2.1.2 to the download page |  Major | community | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18735](https://issues.apache.org/jira/browse/HBASE-18735) | Provide a fast mechanism for shutting down mini cluster |  Major | . | Samarth Jain | Artem Ervits |
| [HBASE-21517](https://issues.apache.org/jira/browse/HBASE-21517) | Move the getTableRegionForRow method from HMaster to TestMaster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21556](https://issues.apache.org/jira/browse/HBASE-21556) | Create 2.1.2 release |  Major | . | Michael Stack | Duo Zhang |


