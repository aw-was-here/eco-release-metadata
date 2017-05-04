
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

## Release 1.1.4 - 2016-03-26

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15100](https://issues.apache.org/jira/browse/HBASE-15100) | Master WALProcs still never clean up |  Blocker | master, proc-v2 | Elliott Clark | Matteo Bertozzi |
| [HBASE-15290](https://issues.apache.org/jira/browse/HBASE-15290) | Hbase Rest CheckAndAPI should save other cells along with compared cell |  Major | hbase | Ajith |  |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | Hbase Rest CheckAndDeleteAPi should be able to delete more cells |  Major | hbase | Ajith | Ajith |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15322](https://issues.apache.org/jira/browse/HBASE-15322) | Operations using Unsafe path broken for platforms not having sun.misc.Unsafe |  Critical | hbase | Anant Sharma | Anoop Sam John |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15129](https://issues.apache.org/jira/browse/HBASE-15129) | Set default value for hbase.fs.tmp.dir rather than fully depend on hbase-default.xml |  Major | mapreduce | Yu Li | Yu Li |
| [HBASE-15211](https://issues.apache.org/jira/browse/HBASE-15211) | Don\'t run the CatalogJanitor if there are regions in transition |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-15413](https://issues.apache.org/jira/browse/HBASE-15413) | Procedure-V2: print out ProcedureInfo during trace |  Trivial | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14812](https://issues.apache.org/jira/browse/HBASE-14812) | Fix ResultBoundedCompletionService deadlock |  Major | Client, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14807](https://issues.apache.org/jira/browse/HBASE-14807) | TestWALLockup is flakey |  Major | flakey, test | stack | stack |
| [HBASE-15147](https://issues.apache.org/jira/browse/HBASE-15147) | Shell should use Admin.listTableNames() instead of Admin.listTables() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15150](https://issues.apache.org/jira/browse/HBASE-15150) | Fix TestDurablity in branch-1.1 |  Major | test | Yu Li | Yu Li |
| [HBASE-15152](https://issues.apache.org/jira/browse/HBASE-15152) | Automatically include prefix-tree module in MR jobs if present |  Major | mapreduce | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15145](https://issues.apache.org/jira/browse/HBASE-15145) | HBCK and Replication should authenticate to zookepeer using server principal |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15019](https://issues.apache.org/jira/browse/HBASE-15019) | Replication stuck when HDFS is restarted |  Major | Replication, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15206](https://issues.apache.org/jira/browse/HBASE-15206) | Flakey testSplitDaughtersNotInMeta test |  Minor | flakey | huaxiang sun | huaxiang sun |
| [HBASE-15200](https://issues.apache.org/jira/browse/HBASE-15200) | ZooKeeper znode ACL checks should only compare the shortname |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-15218](https://issues.apache.org/jira/browse/HBASE-15218) | On RS crash and replay of WAL, loosing all Tags in Cells |  Blocker | Recovery, regionserver, security | Anoop Sam John | Anoop Sam John |
| [HBASE-15214](https://issues.apache.org/jira/browse/HBASE-15214) | Valid mutate Ops fail with RPC Codec in use and region moves across |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15167](https://issues.apache.org/jira/browse/HBASE-15167) | Deadlock in TestNamespaceAuditor.testRegionOperations on 1.1 |  Critical | test | Nick Dimiduk | Heng Chen |
| [HBASE-14460](https://issues.apache.org/jira/browse/HBASE-14460) | [Perf Regression] Merge of MVCC and SequenceId (HBASE-8763) slowed Increments, CheckAndPuts, batch operations |  Critical | Performance | stack | stack |
| [HBASE-14192](https://issues.apache.org/jira/browse/HBASE-14192) | Fix REST Cluster constructor with String List |  Minor | REST | Rick Kellogg | Andrew Purtell |
| [HBASE-15221](https://issues.apache.org/jira/browse/HBASE-15221) | HTableMultiplexer improvements (stale region locations and resource leaks) |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-15252](https://issues.apache.org/jira/browse/HBASE-15252) | Data loss when replaying wal if HDFS timeout |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-15122](https://issues.apache.org/jira/browse/HBASE-15122) | Servlets generate XSS\_REQUEST\_PARAMETER\_TO\_SERVLET\_WRITER findbugs warnings |  Critical | UI | stack | Samir Ahmic |
| [HBASE-15198](https://issues.apache.org/jira/browse/HBASE-15198) | RPC client not using Codec and CellBlock for puts by default |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15279](https://issues.apache.org/jira/browse/HBASE-15279) | OrderedBytes.isEncodedValue does not check for int8 and int16 types |  Major | . | Robert Yokota | Robert Yokota |
| [HBASE-15358](https://issues.apache.org/jira/browse/HBASE-15358) | canEnforceTimeLimitFromScope should use timeScope instead of sizeScope |  Major | Scanners | Phil Yang | Phil Yang |
| [HBASE-15378](https://issues.apache.org/jira/browse/HBASE-15378) | Scanner cannot handle heartbeat message with no results |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15120](https://issues.apache.org/jira/browse/HBASE-15120) | Backport HBASE-14883 to branch-1.1 |  Minor | . | Yu Li | Yu Li |
| [HBASE-15439](https://issues.apache.org/jira/browse/HBASE-15439) | getMaximumAllowedTimeBetweenRuns in ScheduledChore ignores the TimeUnit |  Major | master, mob, regionserver | Ted Yu | Jingcheng Du |
| [HBASE-15430](https://issues.apache.org/jira/browse/HBASE-15430) | Failed taking snapshot - Manifest proto-message too large |  Critical | snapshots | JunHo Cho | JunHo Cho |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13590](https://issues.apache.org/jira/browse/HBASE-13590) | TestEnableTableHandler.testEnableTableWithNoRegionServers is flakey |  Major | master | Nick Dimiduk | Yu Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14798](https://issues.apache.org/jira/browse/HBASE-14798) | NPE reporting server load causes regionserver abort; causes TestAcidGuarantee to fail |  Major | test | stack | stack |
| [HBASE-15153](https://issues.apache.org/jira/browse/HBASE-15153) | Apply checkFamilies addendum on increment to 1.1 and 1.0 |  Major | Performance | stack | stack |
| [HBASE-15213](https://issues.apache.org/jira/browse/HBASE-15213) | Fix increment performance regression caused by HBASE-8763 on branch-1.0 |  Major | Performance | Junegunn Choi | Junegunn Choi |
| [HBASE-15157](https://issues.apache.org/jira/browse/HBASE-15157) | Add \*PerformanceTest for Append, CheckAnd\* |  Major | Performance, test | stack | stack |
| [HBASE-15170](https://issues.apache.org/jira/browse/HBASE-15170) | Backport HBASE-14807 \'TestWALLockup is flakey\' to branch-1.1 |  Critical | test | Nick Dimiduk | stack |
| [HBASE-15270](https://issues.apache.org/jira/browse/HBASE-15270) | Use appropriate encoding for "filter" field in TaskMonitorTmpl.jamon |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15288](https://issues.apache.org/jira/browse/HBASE-15288) | Flakey TestMasterMetrics.testClusterRequests on branch-1.1 |  Major | test | Heng Chen | Heng Chen |
| [HBASE-15169](https://issues.apache.org/jira/browse/HBASE-15169) | Backport HBASE-14362 \'TestWALProcedureStoreOnHDFS is super duper flaky\' to branch-1.1 |  Critical | test | Nick Dimiduk | Heng Chen |
| [HBASE-15311](https://issues.apache.org/jira/browse/HBASE-15311) | Prevent NPE in BlockCacheViewTmpl |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15351](https://issues.apache.org/jira/browse/HBASE-15351) | Fix description of hbase.bucketcache.size in hbase-default.xml |  Major | documentation | stack | stack |
| [HBASE-15365](https://issues.apache.org/jira/browse/HBASE-15365) | Do not write to \'/tmp\' in TestHBaseConfiguration |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-15224](https://issues.apache.org/jira/browse/HBASE-15224) | Undo  "hbase.increment.fast.but.narrow.consistency" option; it is not necessary since HBASE-15213 |  Major | Performance | stack | stack |


