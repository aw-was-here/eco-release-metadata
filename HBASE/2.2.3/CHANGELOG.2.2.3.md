
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

## Release 2.2.3 - 2020-01-10



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22969](https://issues.apache.org/jira/browse/HBASE-22969) | A new binary component comparator(BinaryComponentComparator) to perform comparison of arbitrary length and position |  Minor | Filters | Udai Bhan Kashyap | Udai Bhan Kashyap |
| [HBASE-22280](https://issues.apache.org/jira/browse/HBASE-22280) | Separate read/write handler for priority request(especially for meta). |  Major | Scheduler | Lijin Bin | Lijin Bin |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23038](https://issues.apache.org/jira/browse/HBASE-23038) | Provide consistent and clear logging about disabling chores |  Minor | master, regionserver | Sean Busbey | Sanjeet Nishad |
| [HBASE-23170](https://issues.apache.org/jira/browse/HBASE-23170) | Admin#getRegionServers use ClusterMetrics.Option.SERVERS\_NAME |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | HBase Canary region success count metrics reflect column family successes, not region successes |  Minor | canary | Caroline | Caroline |
| [HBASE-23207](https://issues.apache.org/jira/browse/HBASE-23207) | Log a region open journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23191](https://issues.apache.org/jira/browse/HBASE-23191) | Log spams on Replication |  Trivial | Replication | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23221](https://issues.apache.org/jira/browse/HBASE-23221) | Polish the WAL interface after HBASE-23181 |  Major | regionserver, wal | Duo Zhang | Michael Stack |
| [HBASE-23082](https://issues.apache.org/jira/browse/HBASE-23082) | Backport low-latency snapshot tracking for space quotas to 2.x |  Major | Quotas | Josh Elser | Josh Elser |
| [HBASE-23228](https://issues.apache.org/jira/browse/HBASE-23228) | Allow for jdk8 specific modules on branch-1 in precommit/nightly testing |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-23245](https://issues.apache.org/jira/browse/HBASE-23245) | All MutableHistogram implementations should remove maxExpected |  Major | metrics | Viraj Jasani | Viraj Jasani |
| [HBASE-23283](https://issues.apache.org/jira/browse/HBASE-23283) | Provide clear and consistent logging about the period of enabled chores |  Minor | Operability | Sean Busbey | Mingliang Liu |
| [HBASE-19450](https://issues.apache.org/jira/browse/HBASE-19450) | Add log about average execution time for ScheduledChore |  Minor | Operability | Reid Chan | Reid Chan |
| [HBASE-23278](https://issues.apache.org/jira/browse/HBASE-23278) |  Add a table-level compaction progress display on the UI |  Minor | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23315](https://issues.apache.org/jira/browse/HBASE-23315) | Miscellaneous HBCK Report page cleanup |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-23321](https://issues.apache.org/jira/browse/HBASE-23321) | [hbck2] fixHoles of fixMeta doesn't update in-memory state |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23325](https://issues.apache.org/jira/browse/HBASE-23325) | [UI]rsgoup average load keep two decimals |  Minor | . | xuqinya | xuqinya |
| [HBASE-23334](https://issues.apache.org/jira/browse/HBASE-23334) | The table-lock node of zk is not needed since HBASE-16786 |  Minor | . | Zheng Wang | Zheng Wang |
| [HBASE-23293](https://issues.apache.org/jira/browse/HBASE-23293) | [REPLICATION] make ship edits timeout configurable |  Minor | Replication | chenxu | chenxu |
| [HBASE-23352](https://issues.apache.org/jira/browse/HBASE-23352) | Allow chaos monkeys to access cmd line params, and improve FillDiskCommandAction |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23362](https://issues.apache.org/jira/browse/HBASE-23362) | WalPrettyPrinter should include the table name |  Minor | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23365](https://issues.apache.org/jira/browse/HBASE-23365) | Minor change MemStoreFlusher's log |  Trivial | . | Lijin Bin | Lijin Bin |
| [HBASE-23361](https://issues.apache.org/jira/browse/HBASE-23361) | [UI] Limit two decimals even for total average load |  Minor | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23303](https://issues.apache.org/jira/browse/HBASE-23303) | Add security headers to REST server/info page |  Major | REST | Andor Molnar | Andor Molnar |
| [HBASE-23373](https://issues.apache.org/jira/browse/HBASE-23373) | Log \`RetriesExhaustedException\` context with full time precision |  Minor | asyncclient, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23377](https://issues.apache.org/jira/browse/HBASE-23377) | Balancer should skip disabled tables's regions |  Major | Balancer | Lijin Bin | Lijin Bin |
| [HBASE-23379](https://issues.apache.org/jira/browse/HBASE-23379) | Clean Up FSUtil getRegionLocalityMappingFromFS |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23380](https://issues.apache.org/jira/browse/HBASE-23380) | General Cleanup of FSUtil |  Minor | Filesystem Integration | David Mollitor | David Mollitor |
| [HBASE-23549](https://issues.apache.org/jira/browse/HBASE-23549) | Document steps to disable MOB for a column family |  Minor | documentation, mob | Sean Busbey | Sean Busbey |
| [HBASE-23239](https://issues.apache.org/jira/browse/HBASE-23239) | Reporting on status of backing MOB files from client-facing cells |  Major | mapreduce, mob, Operability | Sean Busbey | Sean Busbey |
| [HBASE-23613](https://issues.apache.org/jira/browse/HBASE-23613) | ProcedureExecutor check StuckWorkers blocked by DeadServerMetricRegionChore |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23238](https://issues.apache.org/jira/browse/HBASE-23238) | Additional test and checks for null references on ScannerCallableWithReplicas |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23615](https://issues.apache.org/jira/browse/HBASE-23615) | Use a dedicated thread for executing WorkerMonitor in ProcedureExecutor. |  Major | amv2 | Lijin Bin | Lijin Bin |
| [HBASE-23629](https://issues.apache.org/jira/browse/HBASE-23629) | Addition to Supporting projects page |  Minor | . | Manu Manjunath | Manu Manjunath |
| [HBASE-23333](https://issues.apache.org/jira/browse/HBASE-23333) | Include simple Call.toShortString() in sendCall exceptions |  Minor | Client, Operability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23651](https://issues.apache.org/jira/browse/HBASE-23651) | Region balance throttling can be disabled |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23654](https://issues.apache.org/jira/browse/HBASE-23654) | Please add Apache Trafodion and EsgynDB to "Powered by Apache HBase" page |  Major | documentation | Dave Birdsall | Beata Sudi |
| [HBASE-23619](https://issues.apache.org/jira/browse/HBASE-23619) | Use built-in formatting for logging in hbase-zookeeper |  Trivial | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-23635](https://issues.apache.org/jira/browse/HBASE-23635) | Reduce number of Checkstyle violations in hbase-mapreduce |  Minor | mapreduce | Jan Hentschel | Jan Hentschel |
| [HBASE-23626](https://issues.apache.org/jira/browse/HBASE-23626) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23622](https://issues.apache.org/jira/browse/HBASE-23622) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23645](https://issues.apache.org/jira/browse/HBASE-23645) | Fix remaining Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23623](https://issues.apache.org/jira/browse/HBASE-23623) | Reduce number of Checkstyle violations in hbase-rest |  Minor | REST | Jan Hentschel | Jan Hentschel |
| [HBASE-23627](https://issues.apache.org/jira/browse/HBASE-23627) | Resolve remaining Checkstyle violations in hbase-thrift |  Minor | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-23621](https://issues.apache.org/jira/browse/HBASE-23621) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23042](https://issues.apache.org/jira/browse/HBASE-23042) | Parameters are incorrect in procedures jsp |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | If fail to open reference because FNFE, make it plain it is a Reference |  Major | Operability | Michael Stack | Michael Stack |
| [HBASE-23193](https://issues.apache.org/jira/browse/HBASE-23193) | ConnectionImplementation.isTableAvailable can not deal with meta table on branch-2.x |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23181](https://issues.apache.org/jira/browse/HBASE-23181) | Blocked WAL archive: "LogRoller: Failed to schedule flush of XXXX, because it is not online on us" |  Major | regionserver, wal | Michael Stack | Duo Zhang |
| [HBASE-23222](https://issues.apache.org/jira/browse/HBASE-23222) | Better logging and mitigation for MOB compaction failures |  Critical | mob | Sean Busbey | Sean Busbey |
| [HBASE-23199](https://issues.apache.org/jira/browse/HBASE-23199) | Error populating Table-Attribute fields |  Major | master, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23187](https://issues.apache.org/jira/browse/HBASE-23187) | Update parent region state to SPLIT in meta |  Major | master | Lijin Bin | Lijin Bin |
| [HBASE-20827](https://issues.apache.org/jira/browse/HBASE-20827) | Add pause when retrying after CallQueueTooBigException for reportRegionStateTransition |  Major | Region Assignment | Ankit Singhal | Ankit Singhal |
| [HBASE-23192](https://issues.apache.org/jira/browse/HBASE-23192) | CatalogJanitor consistencyCheck does not log problematic row on exception |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-22739](https://issues.apache.org/jira/browse/HBASE-22739) | ArrayIndexOutOfBoundsException when balance |  Major | Balancer | casuallc | Lijin Bin |
| [HBASE-23231](https://issues.apache.org/jira/browse/HBASE-23231) | ReplicationSource do not update metrics after refresh |  Major | wal | Lijin Bin | Lijin Bin |
| [HBASE-23244](https://issues.apache.org/jira/browse/HBASE-23244) | NPEs running Canary |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-23241](https://issues.apache.org/jira/browse/HBASE-23241) | TestExecutorService sometimes fail |  Major | test | Lijin Bin | Lijin Bin |
| [HBASE-23247](https://issues.apache.org/jira/browse/HBASE-23247) | [hbck2] Schedule SCPs for 'Unknown Servers' |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23243](https://issues.apache.org/jira/browse/HBASE-23243) | [pv2] Filter out SUCCESS procedures; on decent-sized cluster, plethora overwhelms problems |  Major | proc-v2, UI | Michael Stack | Michael Stack |
| [HBASE-21458](https://issues.apache.org/jira/browse/HBASE-21458) | Error: Could not find or load main class org.apache.hadoop.hbase.util.GetJavaProperty |  Minor | build, Client | Michael Stack | Michael Stack |
| [HBASE-22980](https://issues.apache.org/jira/browse/HBASE-22980) | HRegionPartioner getPartition() method incorrectly partitions the regions of the table. |  Major | mapreduce | Shardul Singh | Shardul Singh |
| [HBASE-23263](https://issues.apache.org/jira/browse/HBASE-23263) | NPE in Quotas.jsp |  Major | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23262](https://issues.apache.org/jira/browse/HBASE-23262) | Cannot load Master UI |  Major | master, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-18439](https://issues.apache.org/jira/browse/HBASE-18439) | Subclasses of o.a.h.h.chaos.actions.Action all use the same logger |  Minor | integration tests | Mike Drob | Rabi Kumar K C |
| [HBASE-23290](https://issues.apache.org/jira/browse/HBASE-23290) | shell processlist command is broken |  Major | shell | Michael Stack | Mingliang Liu |
| [HBASE-23294](https://issues.apache.org/jira/browse/HBASE-23294) | ReplicationBarrierCleaner should delete all the barriers for a removed region which does not belong to any serial replication peer |  Major | master, Replication | Duo Zhang | Duo Zhang |
| [HBASE-23282](https://issues.apache.org/jira/browse/HBASE-23282) | HBCKServerCrashProcedure for 'Unknown Servers' |  Major | hbck2, proc-v2 | Michael Stack | Michael Stack |
| [HBASE-23318](https://issues.apache.org/jira/browse/HBASE-23318) | LoadTestTool doesn't start |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22607](https://issues.apache.org/jira/browse/HBASE-22607) | TestExportSnapshotNoCluster::testSnapshotWithRefsExportFileSystemState() fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [HBASE-23328](https://issues.apache.org/jira/browse/HBASE-23328) | info:regioninfo goes wrong when region replicas enabled |  Major | read replicas | Michael Stack | Michael Stack |
| [HBASE-23237](https://issues.apache.org/jira/browse/HBASE-23237) | Negative 'Requests per Second' counts in UI |  Major | UI | Michael Stack | Karthik Palanisamy |
| [HBASE-23336](https://issues.apache.org/jira/browse/HBASE-23336) | [CLI] Incorrect row(s) count  "clear\_deadservers" |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23197](https://issues.apache.org/jira/browse/HBASE-23197) | "IllegalArgumentException: Wrong FS" on edits replay when WALs on different file system and hbase.region.archive.recovered.edits is enabled. |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23312](https://issues.apache.org/jira/browse/HBASE-23312) | HBase Thrift SPNEGO configs (HBASE-19852) should be backwards compatible |  Major | Thrift | Kevin Risden | Kevin Risden |
| [HBASE-23117](https://issues.apache.org/jira/browse/HBASE-23117) | Bad enum in hbase:meta info:state column can fail loadMeta and stop startup |  Minor | . | Michael Stack | Sandeep Pal |
| [HBASE-23356](https://issues.apache.org/jira/browse/HBASE-23356) | When construct StoreScanner throw exceptions it is possible to left some KeyValueScanner not closed. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23345](https://issues.apache.org/jira/browse/HBASE-23345) | Table need to replication unless all of cfs are excluded |  Minor | Replication | Sun Xin | Sun Xin |
| [HBASE-23337](https://issues.apache.org/jira/browse/HBASE-23337) | Several modules missing in nexus for Apache HBase 2.2.2 |  Blocker | build, community, scripts | Chao | Sean Busbey |
| [HBASE-22529](https://issues.apache.org/jira/browse/HBASE-22529) | Sanity check for in-memory compaction policy |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-22096](https://issues.apache.org/jira/browse/HBASE-22096) | /storeFile.jsp shows CorruptHFileException when the storeFile is a reference file |  Major | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23360](https://issues.apache.org/jira/browse/HBASE-23360) | [CLI] Fix help command "set\_quota" to explain removing quota |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23566](https://issues.apache.org/jira/browse/HBASE-23566) | Fix package/packet terminology problem in chaos monkeys |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23582](https://issues.apache.org/jira/browse/HBASE-23582) | Unbalanced braces in string representation of table descriptor |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-23376](https://issues.apache.org/jira/browse/HBASE-23376) | NPE happens while replica region is moving |  Minor | read replicas | Sun Xin | Sun Xin |
| [HBASE-23594](https://issues.apache.org/jira/browse/HBASE-23594) | Procedure stuck due to region happen to recorded on two servers. |  Critical | amv2, Region Assignment | Lijin Bin | Duo Zhang |
| [HBASE-23564](https://issues.apache.org/jira/browse/HBASE-23564) | RegionStates may has some expired serverinfo and make regions do not balance. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23572](https://issues.apache.org/jira/browse/HBASE-23572) | In 'HBCK Report', distinguish between live, dead, and unknown servers |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23581](https://issues.apache.org/jira/browse/HBASE-23581) | Creating table gets stuck when specifying an invalid split policy as METADATA |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23589](https://issues.apache.org/jira/browse/HBASE-23589) | FlushDescriptor contains non-matching family/output combinations |  Critical | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23596](https://issues.apache.org/jira/browse/HBASE-23596) | HBCKServerCrashProcedure can double assign |  Major | proc-v2 | Michael Stack | Michael Stack |
| [HBASE-23587](https://issues.apache.org/jira/browse/HBASE-23587) | The FSYNC\_WAL flag does not work on branch-2.x |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-23175](https://issues.apache.org/jira/browse/HBASE-23175) | Yarn unable to acquire delegation token for HBase Spark jobs |  Major | security, spark | Ankit Singhal | Ankit Singhal |
| [HBASE-23636](https://issues.apache.org/jira/browse/HBASE-23636) | Disable table may hang when regionserver stop or abort. |  Major | amv2 | Lijin Bin | Lijin Bin |
| [HBASE-23666](https://issues.apache.org/jira/browse/HBASE-23666) | Backport "HBASE-23660 hbase:meta's table.jsp ref to wrong rs address" to branch-2 |  Major | master | Lijin Bin | Lijin Bin |
| [HBASE-23663](https://issues.apache.org/jira/browse/HBASE-23663) | Allow dot and hyphen in Profiler's URL |  Minor | profiler | Peter Somogyi | Peter Somogyi |
| [HBASE-23655](https://issues.apache.org/jira/browse/HBASE-23655) | Fix flaky TestRSGroupsKillRS: should wait the SCP to finish |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23659](https://issues.apache.org/jira/browse/HBASE-23659) | BaseLoadBalancer#wouldLowerAvailability should consider region replicas |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23658](https://issues.apache.org/jira/browse/HBASE-23658) | Fix flaky TestSnapshotFromMaster |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | Encoded regionname to regionname utility |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-23553](https://issues.apache.org/jira/browse/HBASE-23553) | Snapshot referenced data files are deleted in some case |  Major | snapshots | Yi Mei | Yi Mei |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22982](https://issues.apache.org/jira/browse/HBASE-22982) | Send SIGSTOP to hang or SIGCONT to resume rs and add graceful rolling restart |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23217](https://issues.apache.org/jira/browse/HBASE-23217) | Set version as 2.2.3-SNAPSHOT in branch-2.2 |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-23136](https://issues.apache.org/jira/browse/HBASE-23136) | PartionedMobFileCompactor bulkloaded files shouldn't get replicated (addressing buklload replication related issue raised in HBASE-22380) |  Critical | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22480](https://issues.apache.org/jira/browse/HBASE-22480) | Get block from BlockCache once and return this block to BlockCache twice make ref count error. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23322](https://issues.apache.org/jira/browse/HBASE-23322) | [hbck2] Simplification on HBCKSCP scheduling |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23307](https://issues.apache.org/jira/browse/HBASE-23307) | Add running of ReplicationBarrierCleaner to hbck2 fixMeta invocation |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23085](https://issues.apache.org/jira/browse/HBASE-23085) | Network and Data related Actions |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-20461](https://issues.apache.org/jira/browse/HBASE-20461) | Implement fsync for AsyncFSWAL |  Major | wal | Michael Stack | Duo Zhang |
| [HBASE-23320](https://issues.apache.org/jira/browse/HBASE-23320) | Upgrade surefire plugin to 3.0.0-M4 |  Major | dependencies, test | Peter Somogyi | Rabi Kumar K C |
| [HBASE-23637](https://issues.apache.org/jira/browse/HBASE-23637) | Generate CHANGES.md and RELEASENOTES.md for 2.2.3 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23638](https://issues.apache.org/jira/browse/HBASE-23638) | Set version to 2.2.3 in branch-2.2 for first RC of 2.2.3 |  Major | . | Guanghao Zhang | Guanghao Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs |  Blocker | dependencies, REST, security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | Log message about CleanerChore delegate initialization should be at INFO |  Minor | master, Operability | Sean Busbey | Rabi Kumar K C |
| [HBASE-23236](https://issues.apache.org/jira/browse/HBASE-23236) | Upgrade to yetus 0.11.1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-23575](https://issues.apache.org/jira/browse/HBASE-23575) | Remove dead code from AsyncRegistry interface |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23642](https://issues.apache.org/jira/browse/HBASE-23642) | Reintroduce ReplicationUtils.contains as deprecated |  Major | Replication | Peter Somogyi | Peter Somogyi |


