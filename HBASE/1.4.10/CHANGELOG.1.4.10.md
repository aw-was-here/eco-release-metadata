
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

## Release 1.4.10 - 2019-06-10



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21926](https://issues.apache.org/jira/browse/HBASE-21926) | Profiler servlet |  Major | master, Operability, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21815](https://issues.apache.org/jira/browse/HBASE-21815) | Make isTrackingMetrics and getMetrics of ScannerContext public |  Minor | . | Chen Feng | Chen Feng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20047](https://issues.apache.org/jira/browse/HBASE-20047) | AuthenticationTokenIdentifier should provide a toString |  Minor | Usability | Sean Busbey | maoling |
| [HBASE-20858](https://issues.apache.org/jira/browse/HBASE-20858) | port HBASE-20695 to branch-1 |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | New metrics ReadRequestRate and WriteRequestRate |  Minor | metrics | Ankit Jain | Ankit Jain |
| [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | Allow overriding configs starting up the shell |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-21520](https://issues.apache.org/jira/browse/HBASE-21520) | TestMultiColumnScanner cost long time when using ROWCOL bloom type |  Major | test | Zheng Hu | Zheng Hu |
| [HBASE-21645](https://issues.apache.org/jira/browse/HBASE-21645) | Perform sanity check and disallow table creation/modification with region replication \< 1 |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21590](https://issues.apache.org/jira/browse/HBASE-21590) | Optimize trySkipToNextColumn in StoreScanner a bit |  Critical | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21818](https://issues.apache.org/jira/browse/HBASE-21818) | Incorrect list item in javadoc |  Trivial | documentation, master | qiang Liu | qiang Liu |
| [HBASE-22219](https://issues.apache.org/jira/browse/HBASE-22219) | Backport HBASE-19049 to branch-1 to prevent DIRKRB-613 |  Major | test | Yu Li | Yu Li |
| [HBASE-20586](https://issues.apache.org/jira/browse/HBASE-20586) | SyncTable tool: Add support for cross-realm remote clusters |  Major | mapreduce, Operability, Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22291](https://issues.apache.org/jira/browse/HBASE-22291) | Fix recovery of recovered.edits files under root dir |  Major | . | Zach York | Zach York |
| [HBASE-22225](https://issues.apache.org/jira/browse/HBASE-22225) | Profiler tab on Master/RS UI not working w/o comprehensive message |  Minor | UI | Yu Li | Andrew Kyle Purtell |
| [HBASE-22341](https://issues.apache.org/jira/browse/HBASE-22341) | Add explicit guidelines for removing deprecations in book |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | Fix Markdown for "Voting on Release Candidates" in book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | Change rubocop configuration for method length |  Minor | community, shell | Jan Hentschel | Murtaza Hassan |
| [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | Remove extra/useless + |  Trivial | . | puleya7 | puleya7 |
| [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | Formatting issues in administration section of book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | Dump replication queue should show list of wal files ordered chronologically |  Major | Replication, tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-20305](https://issues.apache.org/jira/browse/HBASE-20305) | Add option to SyncTable that skip deletes on target cluster |  Minor | mapreduce | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22474](https://issues.apache.org/jira/browse/HBASE-22474) | Add --mvn-custom-repo parameter to yetus calls |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22496](https://issues.apache.org/jira/browse/HBASE-22496) | UnsafeAccess.unsafeCopy should not copy more than UNSAFE\_COPY\_THRESHOLD on each iteration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22540](https://issues.apache.org/jira/browse/HBASE-22540) | [Memstore] Correct counters in MemStoreChunkPool |  Minor | . | Reid Chan | Reid Chan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21196](https://issues.apache.org/jira/browse/HBASE-21196) | HTableMultiplexer clears the meta cache after every put operation |  Critical | Performance | Nihal Jain | Nihal Jain |
| [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | CellCodec Written To WAL Before It's Verified |  Critical | wal | David Mollitor | David Mollitor |
| [HBASE-21553](https://issues.apache.org/jira/browse/HBASE-21553) | schedLock not released in MasterProcedureScheduler |  Critical | proc-v2 | Xu Cang | Xu Cang |
| [HBASE-21582](https://issues.apache.org/jira/browse/HBASE-21582) | If call HBaseAdmin#snapshotAsync but forget call isSnapshotFinished, then SnapshotHFileCleaner will skip to run every time |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21592](https://issues.apache.org/jira/browse/HBASE-21592) | quota.addGetResult(r)  throw  NPE |  Major | . | xuqinya | xuqinya |
| [HBASE-21547](https://issues.apache.org/jira/browse/HBASE-21547) | Precommit uses master flaky list for other branches |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result |  Critical | Client | Jermy Li | Guanghao Zhang |
| [HBASE-21766](https://issues.apache.org/jira/browse/HBASE-21766) | TestSimpleRpcScheduler is flaky (branch-1) |  Trivial | rpc, test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21475](https://issues.apache.org/jira/browse/HBASE-21475) | Put mutation (having TTL set) added via co-processor is retrieved even after TTL expires |  Major | Coprocessors | Nihal Jain | Nihal Jain |
| [HBASE-21915](https://issues.apache.org/jira/browse/HBASE-21915) | FileLink$FileLinkInputStream doesn't implement CanUnbuffer |  Major | Filesystem Integration | Josh Elser | Josh Elser |
| [HBASE-22045](https://issues.apache.org/jira/browse/HBASE-22045) | Mutable range histogram reports incorrect outliers |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-22062](https://issues.apache.org/jira/browse/HBASE-22062) | Backport HBASE-20917 addendum to branch-1 & branch-1.4 |  Minor | . | Sakthi | Sakthi |
| [HBASE-22058](https://issues.apache.org/jira/browse/HBASE-22058) | upgrade thrift dependency to 0.9.3.1 on  branches 1.4, 1.3 and 1.2 |  Critical | Thrift | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-22067](https://issues.apache.org/jira/browse/HBASE-22067) | Fix log line in StochasticLoadBalancer when balancer is an ill-fit for cluster size |  Major | Balancer | Xu Cang | Xu Cang |
| [HBASE-21781](https://issues.apache.org/jira/browse/HBASE-21781) | list\_deadservers elapsed time is incorrect |  Major | shell | xuqinya | xuqinya |
| [HBASE-21135](https://issues.apache.org/jira/browse/HBASE-21135) | Build fails on windows as it fails to parse windows path during license check |  Major | build | Nihal Jain | Nihal Jain |
| [HBASE-22125](https://issues.apache.org/jira/browse/HBASE-22125) | Fix more instances in make\_rc.sh where we need -Dhttps.protocols=TLSv1.2 |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20911](https://issues.apache.org/jira/browse/HBASE-20911) | correct Swtich/case indentation in formatter template for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20912](https://issues.apache.org/jira/browse/HBASE-20912) | Add import order config in dev support for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22070](https://issues.apache.org/jira/browse/HBASE-22070) | Checking restoreDir in RestoreSnapshotHelper |  Minor | snapshots | Vincent Choi | Vincent Choi |
| [HBASE-22106](https://issues.apache.org/jira/browse/HBASE-22106) | Log cause of the failure when coprocessor specification parsing fails. |  Minor | logging | Ankit Singhal | Ankit Singhal |
| [HBASE-22212](https://issues.apache.org/jira/browse/HBASE-22212) | [1.x] Backport missing filter improvements |  Major | Filters | Josh Elser | Josh Elser |
| [HBASE-22235](https://issues.apache.org/jira/browse/HBASE-22235) | OperationStatus.{SUCCESS\|FAILURE\|NOT\_RUN} are not visible to 3rd party coprocessors |  Major | Coprocessors | Lars Hofhansl | Andrew Kyle Purtell |
| [HBASE-21959](https://issues.apache.org/jira/browse/HBASE-21959) | CompactionTool should close the store it uses for compacting files, in order to properly archive compacted files. |  Major | tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22270](https://issues.apache.org/jira/browse/HBASE-22270) | master's jmx.clusterRequests could be negative in branch-1 |  Major | master, regionserver | puleya7 | puleya7 |
| [HBASE-22310](https://issues.apache.org/jira/browse/HBASE-22310) | checkAndMutate used an incorrect row to check the condition |  Major | API | Adonis Ling | Adonis Ling |
| [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | Change rubocop config for max line length of 100 |  Minor | community, shell | Umesh Agashe | Murtaza Hassan |
| [HBASE-22390](https://issues.apache.org/jira/browse/HBASE-22390) | backport HBASE-22190 to branch-1 |  Major | snapshots | Zach York | Zach York |
| [HBASE-22389](https://issues.apache.org/jira/browse/HBASE-22389) | Revert HBASE-19275 TestSnapshotFileCache never worked properly on branch-1 |  Major | . | Zach York | Zach York |
| [HBASE-22274](https://issues.apache.org/jira/browse/HBASE-22274) | Cell size limit check on append should consider cell's previous size. |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-22378](https://issues.apache.org/jira/browse/HBASE-22378) | HBase Canary fails with TableNotFoundException when table deleted during Canary run |  Minor | canary | Caroline | Caroline |
| [HBASE-21048](https://issues.apache.org/jira/browse/HBASE-21048) | Get LogLevel is not working from console in secure environment |  Major | . | Chandra Sekhar | Wei-Chiu Chuang |
| [HBASE-22391](https://issues.apache.org/jira/browse/HBASE-22391) | Fix flaky tests from TestFromClientSide |  Minor | test | Xu Cang | Xu Cang |
| [HBASE-22421](https://issues.apache.org/jira/browse/HBASE-22421) | branch-1 docker mode for yetus fails |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-22462](https://issues.apache.org/jira/browse/HBASE-22462) | Should run a 'mvn install' at the end of hadoop check in pre commit job |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-21800](https://issues.apache.org/jira/browse/HBASE-21800) | RegionServer aborted due to NPE from MetaTableMetrics coprocessor |  Critical | Coprocessors, meta, metrics, Operability | Sakthi | Sakthi |
| [HBASE-21991](https://issues.apache.org/jira/browse/HBASE-21991) | Fix MetaMetrics issues - [Race condition, Faulty remove logic], few improvements |  Major | Coprocessors, metrics | Sakthi | Sakthi |
| [HBASE-22487](https://issues.apache.org/jira/browse/HBASE-22487) | getMostLoadedRegions is unused |  Trivial | regionserver | Clay B. | Clay B. |
| [HBASE-22451](https://issues.apache.org/jira/browse/HBASE-22451) | TestLoadIncrementalHFiles and TestSecureLoadIncrementalHFiles are flaky |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22518](https://issues.apache.org/jira/browse/HBASE-22518) | yetus personality is treating branch-1.4 like earlier branches for hadoopcheck |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-22509](https://issues.apache.org/jira/browse/HBASE-22509) | Address findbugs/spotbugs complaints (branch-1.4) |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22533](https://issues.apache.org/jira/browse/HBASE-22533) | TestAccessController3 is flaky (branch-1) |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21920](https://issues.apache.org/jira/browse/HBASE-21920) | Ignoring 'empty' end\_key while calculating end\_key for new region in HBCK -fixHdfsOverlaps command can cause data loss |  Major | hbck | Syeda Arshiya Tabreen | Syeda Arshiya Tabreen |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21963](https://issues.apache.org/jira/browse/HBASE-21963) | Add a script for building and verifying release candidate |  Minor | community, scripts | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21632](https://issues.apache.org/jira/browse/HBASE-21632) | Backport to branch-1 HBASE-21620 Problem in scan query when using more than one column prefix filter in some cases. |  Major | . | Michael Stack | Zheng Hu |
| [HBASE-21711](https://issues.apache.org/jira/browse/HBASE-21711) | Remove references to git.apache.org/hbase.git |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21561](https://issues.apache.org/jira/browse/HBASE-21561) | Backport HBASE-21413 (Empty meta log doesn't get split when restart whole cluster) to branch-1 |  Minor | . | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | Some optimization in FilterListWithOR |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21748](https://issues.apache.org/jira/browse/HBASE-21748) | Port HBASE-21738 (Remove all the CLSM#size operation in our memstore because it's an quite time consuming.) to branch-1 |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21374](https://issues.apache.org/jira/browse/HBASE-21374) | Backport HBASE-21342 to branch-1 |  Major | . | Mike Drob | mazhenlin |
| [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | Create a jenkins file for yetus to processing GitHub PR |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22215](https://issues.apache.org/jira/browse/HBASE-22215) | Backport MultiRowRangeFilter does not work with reverse scans |  Major | Filters | Josh Elser | Josh Elser |
| [HBASE-22330](https://issues.apache.org/jira/browse/HBASE-22330) | Backport HBASE-20724 (Sometimes some compacted storefiles are still opened after region failover) to branch-1 |  Major | Compaction, regionserver | Andrew Kyle Purtell | Abhishek Singh Chouhan |
| [HBASE-22429](https://issues.apache.org/jira/browse/HBASE-22429) | hbase-vote download step requires URL to end with '/' |  Trivial | . | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22430](https://issues.apache.org/jira/browse/HBASE-22430) | hbase-vote should tee build and test output to console |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22419](https://issues.apache.org/jira/browse/HBASE-22419) | Backport hbase-personality changes in HBASE-22399 and HBASE-20970 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22507](https://issues.apache.org/jira/browse/HBASE-22507) | Backport the pre commit changes in HBASE-22500 to all active branches |  Major | build | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21687](https://issues.apache.org/jira/browse/HBASE-21687) | Update Findbugs Maven Plugin to 3.0.4 to work with Maven 3.6.0+ [branches-1] |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-21685](https://issues.apache.org/jira/browse/HBASE-21685) | Change repository urls to Gitbox |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21853](https://issues.apache.org/jira/browse/HBASE-21853) | update copyright notices to 2019 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21884](https://issues.apache.org/jira/browse/HBASE-21884) | Fix box/unbox findbugs warning in secure bulk load |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-22020](https://issues.apache.org/jira/browse/HBASE-22020) | upgrade to yetus 0.9.0 |  Major | build, community | Michael Stack | Sean Busbey |
| [HBASE-22375](https://issues.apache.org/jira/browse/HBASE-22375) | Promote AccessChecker to LimitedPrivate(Coprocessor) |  Minor | Coprocessors, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22449](https://issues.apache.org/jira/browse/HBASE-22449) | https everywhere in Maven metadata |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


