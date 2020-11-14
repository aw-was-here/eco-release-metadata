
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

## Release 2.1.0 - 2018-07-18



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19397](https://issues.apache.org/jira/browse/HBASE-19397) | Design  procedures for ReplicationManager to notify peer change event from master |  Major | proc-v2, Replication | Zheng Hu | Duo Zhang |
| [HBASE-20159](https://issues.apache.org/jira/browse/HBASE-20159) | Support using separate ZK quorums for client |  Major | Client, Operability, Zookeeper | Yu Li | Yu Li |
| [HBASE-20046](https://issues.apache.org/jira/browse/HBASE-20046) | Reconsider the implementation for serial replication |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20592](https://issues.apache.org/jira/browse/HBASE-20592) | Create a tool to verify tables do not have prefix tree encoding |  Minor | Operability, tooling | Peter Somogyi | Peter Somogyi |
| [HBASE-20656](https://issues.apache.org/jira/browse/HBASE-20656) | Validate pre-2.0 coprocessors against HBase 2.0+ |  Major | tooling | Balazs Meszaros | Balazs Meszaros |
| [HBASE-19735](https://issues.apache.org/jira/browse/HBASE-19735) | Create a minimal "client" tarball installation |  Major | build, Client | Josh Elser | Josh Elser |
| [HBASE-15809](https://issues.apache.org/jira/browse/HBASE-15809) | Basic Replication WebUI |  Critical | Replication, UI | Matteo Bertozzi | Jingyun Tian |
| [HBASE-20833](https://issues.apache.org/jira/browse/HBASE-20833) | Modify pre-upgrade coprocessor validator to support table level coprocessors |  Major | Coprocessors | Balazs Meszaros | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20120](https://issues.apache.org/jira/browse/HBASE-20120) | Remove some unused classes/ java files from hbase-server |  Minor | . | Umesh Agashe | Umesh Agashe |
| [HBASE-19449](https://issues.apache.org/jira/browse/HBASE-19449) | Minor logging change in HFileArchiver |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-20186](https://issues.apache.org/jira/browse/HBASE-20186) | Improve RSGroupBasedLoadBalancer#balanceCluster() to be more efficient when calculating cluster state for each rsgroup |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19389](https://issues.apache.org/jira/browse/HBASE-19389) | Limit concurrency of put with dense (hundreds) columns to prevent write handler exhausted |  Critical | Performance | Chance Li | Chance Li |
| [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | Configurable default durability for synchronous WAL |  Critical | wal | Vikas Vishwakarma | Harshal Jain |
| [HBASE-20047](https://issues.apache.org/jira/browse/HBASE-20047) | AuthenticationTokenIdentifier should provide a toString |  Minor | Usability | Sean Busbey | maoling |
| [HBASE-20197](https://issues.apache.org/jira/browse/HBASE-20197) | Review of ByteBufferWriterOutputStream.java |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-19488](https://issues.apache.org/jira/browse/HBASE-19488) | Move to using Apache commons CollectionUtils |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-20286](https://issues.apache.org/jira/browse/HBASE-20286) | Improving shell command compaction\_state |  Minor | shell | Csaba Skrabak | Csaba Skrabak |
| [HBASE-20243](https://issues.apache.org/jira/browse/HBASE-20243) | [Shell] Add shell command to create a new table by cloning the existent table |  Minor | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20389](https://issues.apache.org/jira/browse/HBASE-20389) | Move website building flags into a profile |  Minor | build, website | Sean Busbey | Sean Busbey |
| [HBASE-20406](https://issues.apache.org/jira/browse/HBASE-20406) | HBase Thrift HTTP - Shouldn't handle TRACE/OPTIONS methods |  Major | security, Thrift | Kevin Risden | Kevin Risden |
| [HBASE-20327](https://issues.apache.org/jira/browse/HBASE-20327) | When qualifier is not specified, append and incr operation do not work (shell) |  Minor | shell | Nihal Jain | Nihal Jain |
| [HBASE-20484](https://issues.apache.org/jira/browse/HBASE-20484) | Remove the unnecessary autoboxing in FilterListBase |  Trivial | . | Chia-Ping Tsai | Guangxu Cheng |
| [HBASE-20507](https://issues.apache.org/jira/browse/HBASE-20507) | Do not need to call recoverLease on the broken file when we fail to create a wal writer |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-20527](https://issues.apache.org/jira/browse/HBASE-20527) | Remove unused code in MetaTableAccessor |  Trivial | . | Mingdao Yang | Mingdao Yang |
| [HBASE-20523](https://issues.apache.org/jira/browse/HBASE-20523) | PE tool should support configuring client side buffering sizes |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20536](https://issues.apache.org/jira/browse/HBASE-20536) | Make TestRegionServerAccounting stable and it should not use absolute number |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16191](https://issues.apache.org/jira/browse/HBASE-16191) | Add stop\_regionserver and stop\_master to shell |  Major | . | Enis Soztutar | Peter Somogyi |
| [HBASE-20545](https://issues.apache.org/jira/browse/HBASE-20545) | Improve performance of BaseLoadBalancer.retainAssignment |  Major | Balancer | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20567](https://issues.apache.org/jira/browse/HBASE-20567) | Pass both old and new descriptors to pre/post hooks of modify operations for table and namespace |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-20488](https://issues.apache.org/jira/browse/HBASE-20488) | PE tool prints full name in help message |  Minor | shell | Peter Somogyi | Xu Cang |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20478](https://issues.apache.org/jira/browse/HBASE-20478) | move import checks from hbaseanti to checkstyle |  Minor | test | Sean Busbey | Mike Drob |
| [HBASE-20640](https://issues.apache.org/jira/browse/HBASE-20640) | TestQuotaGlobalsSettingsBypass missing test category and ClassRule |  Critical | test | Josh Elser | Josh Elser |
| [HBASE-20594](https://issues.apache.org/jira/browse/HBASE-20594) | provide utility to compare old and new descriptors |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20444](https://issues.apache.org/jira/browse/HBASE-20444) | Improve version comparison logic for HBase specific version string and add unit tests |  Major | util | Umesh Agashe | maoling |
| [HBASE-20579](https://issues.apache.org/jira/browse/HBASE-20579) | Improve snapshot manifest copy in ExportSnapshot |  Minor | mapreduce | Jingyun Tian | Jingyun Tian |
| [HBASE-19852](https://issues.apache.org/jira/browse/HBASE-19852) | HBase Thrift 1 server SPNEGO Improvements |  Major | Thrift | Kevin Risden | Kevin Risden |
| [HBASE-20625](https://issues.apache.org/jira/browse/HBASE-20625) | refactor some WALCellCodec related code |  Minor | wal | Jingyun Tian | Jingyun Tian |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20695](https://issues.apache.org/jira/browse/HBASE-20695) | Implement table level RegionServer replication metrics |  Minor | metrics | Xu Cang | Xu Cang |
| [HBASE-20737](https://issues.apache.org/jira/browse/HBASE-20737) | put collection into ArrayList instead of addAll function |  Trivial | . | taiyinglee | taiyinglee |
| [HBASE-20739](https://issues.apache.org/jira/browse/HBASE-20739) | Add priority for SCP |  Major | Recovery | Duo Zhang | Duo Zhang |
| [HBASE-19164](https://issues.apache.org/jira/browse/HBASE-19164) | Avoid UUID.randomUUID in tests |  Major | test | Mike Drob | Sahil Aggarwal |
| [HBASE-20095](https://issues.apache.org/jira/browse/HBASE-20095) | Redesign single instance pool in CleanerChore |  Critical | . | Reid Chan | Reid Chan |
| [HBASE-20040](https://issues.apache.org/jira/browse/HBASE-20040) | Master UI should include "Cluster Key" needed to use the cluster as a replication sink |  Minor | Replication, Usability | Sean Busbey | Sakthi |
| [HBASE-20810](https://issues.apache.org/jira/browse/HBASE-20810) | Include the procedure id in the exception message in HBaseAdmin for better debugging |  Major | Admin, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20450](https://issues.apache.org/jira/browse/HBASE-20450) | Provide metrics for number of total active, priority and replication rpc handlers |  Major | metrics | Nihal Jain | Nihal Jain |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20474](https://issues.apache.org/jira/browse/HBASE-20474) | Show non-RPC tasks on master/regionserver Web UI  by default |  Major | UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-21204](https://issues.apache.org/jira/browse/HBASE-21204) | NPE when scan raw DELETE\_FAMILY\_VERSION and codec is not set |  Major | . | Jingyun Tian | Jingyun Tian |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19748](https://issues.apache.org/jira/browse/HBASE-19748) | TestRegionReplicaFailover and TestRegionReplicaReplicationEndpoint UT hangs |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19923](https://issues.apache.org/jira/browse/HBASE-19923) | Reset peer state and config when refresh replication source failed |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20058](https://issues.apache.org/jira/browse/HBASE-20058) | improper quoting in presplitting command docs |  Minor | documentation | Mike Drob | maoling |
| [HBASE-20260](https://issues.apache.org/jira/browse/HBASE-20260) | Purge old content from the book for branch-2/master |  Critical | documentation | Mike Drob | Mike Drob |
| [HBASE-20361](https://issues.apache.org/jira/browse/HBASE-20361) | Non-successive TableInputSplits may wrongly be merged by auto balancing feature |  Major | mapreduce | Yuki Tawara | Yuki Tawara |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20356](https://issues.apache.org/jira/browse/HBASE-20356) | make skipping protoc possible |  Critical | dependencies, thirdparty | Mike Drob | Mike Drob |
| [HBASE-20338](https://issues.apache.org/jira/browse/HBASE-20338) | WALProcedureStore#recoverLease() should have fixed sleeps for retrying rollWriter() |  Major | . | Umesh Agashe | Wei-Chiu Chuang |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20419](https://issues.apache.org/jira/browse/HBASE-20419) | Fix potential NPE in ZKUtil#listChildrenAndWatchForNewChildren callers |  Major | . | lujie | lujie |
| [HBASE-20404](https://issues.apache.org/jira/browse/HBASE-20404) | Ugly cleanerchore complaint that dir is not empty |  Major | master | Michael Stack | Sean Busbey |
| [HBASE-18059](https://issues.apache.org/jira/browse/HBASE-18059) | The scanner order for memstore scanners are wrong |  Critical | regionserver, Scanners | Duo Zhang | Jingyun Tian |
| [HBASE-20006](https://issues.apache.org/jira/browse/HBASE-20006) | TestRestoreSnapshotFromClientWithRegionReplicas is flakey |  Critical | read replicas | Michael Stack | Toshihiro Suzuki |
| [HBASE-20466](https://issues.apache.org/jira/browse/HBASE-20466) | Consistently use override mechanism for exempt classes in CoprocessClassloader |  Major | Coprocessors | Rich Fecher | Rich Fecher |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-20497](https://issues.apache.org/jira/browse/HBASE-20497) | The getRecoveredQueueStartPos always return 0 in RecoveredReplicationSourceShipper |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-20492](https://issues.apache.org/jira/browse/HBASE-20492) | UnassignProcedure is stuck in retry loop on region stuck in OPENING state |  Critical | amv2 | Umesh Agashe | Michael Stack |
| [HBASE-20506](https://issues.apache.org/jira/browse/HBASE-20506) | Add doc and test for unused RetryCounter, useful-looking utility |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-20476](https://issues.apache.org/jira/browse/HBASE-20476) | Open sequence number could go backwards in AssignProcedure |  Major | Region Assignment | Zheng Hu | Duo Zhang |
| [HBASE-20524](https://issues.apache.org/jira/browse/HBASE-20524) | Need to clear metrics when ReplicationSourceManager refresh replication sources |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20500](https://issues.apache.org/jira/browse/HBASE-20500) | [rsgroup] should keep at least one server in default group |  Major | rsgroup | Yechao Chen | Yechao Chen |
| [HBASE-20521](https://issues.apache.org/jira/browse/HBASE-20521) | TableOutputFormat.checkOutputSpecs conf checking sequence cause pig script run fail |  Major | mapreduce | Michael Jin | Michael Jin |
| [HBASE-20543](https://issues.apache.org/jira/browse/HBASE-20543) | Fix the flaky TestThriftHttpServer |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20204](https://issues.apache.org/jira/browse/HBASE-20204) | Add locking to RefreshFileConnections in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20554](https://issues.apache.org/jira/browse/HBASE-20554) | "WALs outstanding" message from CleanerChore is noisy |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20475](https://issues.apache.org/jira/browse/HBASE-20475) | Fix the flaky TestReplicationDroppedTables unit test. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20544](https://issues.apache.org/jira/browse/HBASE-20544) | downstream HBaseTestingUtility fails with invalid port |  Blocker | test | Sean Busbey | Sean Busbey |
| [HBASE-20447](https://issues.apache.org/jira/browse/HBASE-20447) | Only fail cacheBlock if block collisions aren't related to next block metadata |  Major | BlockCache, BucketCache | Zach York | Zach York |
| [HBASE-20457](https://issues.apache.org/jira/browse/HBASE-20457) | Return immediately for a scan rpc call when we want to switch from pread to stream |  Major | Scanners | Duo Zhang | Duo Zhang |
| [HBASE-20585](https://issues.apache.org/jira/browse/HBASE-20585) | Need to clear peer map when clearing MasterProcedureScheduler |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20571](https://issues.apache.org/jira/browse/HBASE-20571) | JMXJsonServlet generates invalid JSON if it has NaN in metrics |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20560](https://issues.apache.org/jira/browse/HBASE-20560) | Revisit the TestReplicationDroppedTables ut |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20591](https://issues.apache.org/jira/browse/HBASE-20591) | nightly job doesn't respect maven options |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20627](https://issues.apache.org/jira/browse/HBASE-20627) | Relocate RS Group pre/post hooks from RSGroupAdminServer to RSGroupAdminEndpoint |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20601](https://issues.apache.org/jira/browse/HBASE-20601) | Add multiPut support and other miscellaneous to PE |  Minor | tooling | Allan Yang | Allan Yang |
| [HBASE-20624](https://issues.apache.org/jira/browse/HBASE-20624) | Race in ReplicationSource which causes walEntryFilter being null when creating new shipper |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20638](https://issues.apache.org/jira/browse/HBASE-20638) | nightly source artifact testing should fail the stage if it's going to report an error on jira |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20616](https://issues.apache.org/jira/browse/HBASE-20616) | TruncateTableProcedure is stuck in retry loop in TRUNCATE\_TABLE\_CREATE\_FS\_LAYOUT state |  Major | amv2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20588](https://issues.apache.org/jira/browse/HBASE-20588) | Space quota change after quota violation doesn't seem to take in effect |  Major | regionserver | Biju Nair | Nihal Jain |
| [HBASE-20612](https://issues.apache.org/jira/browse/HBASE-20612) | TestReplicationKillSlaveRSWithSeparateOldWALs sometimes fail because it uses an expired cluster conn |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20645](https://issues.apache.org/jira/browse/HBASE-20645) | Fix security\_available method in security.rb |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20633](https://issues.apache.org/jira/browse/HBASE-20633) | Dropping a table containing a disable violation policy fails to remove the quota upon table delete |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20533](https://issues.apache.org/jira/browse/HBASE-20533) | Fix the flaky TestAssignmentManagerMetrics |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20582](https://issues.apache.org/jira/browse/HBASE-20582) | Bump up JRuby version because of some reported vulnerabilities |  Major | dependencies, shell | Ankit Singhal | Josh Elser |
| [HBASE-20659](https://issues.apache.org/jira/browse/HBASE-20659) | Implement a reopen table regions procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20602](https://issues.apache.org/jira/browse/HBASE-20602) | hbase.master.quota.observer.ignore property seems to be not taking effect |  Minor | documentation | Biju Nair | Biju Nair |
| [HBASE-18116](https://issues.apache.org/jira/browse/HBASE-18116) | Replication source in-memory accounting should not include bulk transfer hfiles |  Major | Replication | Andrew Kyle Purtell | Xu Cang |
| [HBASE-20668](https://issues.apache.org/jira/browse/HBASE-20668) | Avoid permission change if ExportSnapshot's copy fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12882](https://issues.apache.org/jira/browse/HBASE-12882) | Log level for org.apache.hadoop.hbase package should be configurable |  Major | . | Adrian Muraru | Jan Hentschel |
| [HBASE-20634](https://issues.apache.org/jira/browse/HBASE-20634) | Reopen region while server crash can cause the procedure to be stuck |  Critical | . | Duo Zhang | Michael Stack |
| [HBASE-20670](https://issues.apache.org/jira/browse/HBASE-20670) | NPE in HMaster#isInMaintenanceMode |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20678](https://issues.apache.org/jira/browse/HBASE-20678) | NPE in ReplicationSourceManager#NodeFailoverWorker |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20684](https://issues.apache.org/jira/browse/HBASE-20684) | org.apache.hadoop.hbase.client.Scan#setStopRow javadoc uses incorrect method |  Trivial | Client, documentation | Evgenii | Evgenii |
| [HBASE-20683](https://issues.apache.org/jira/browse/HBASE-20683) | Incorrect return value for PreUpgradeValidator |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20699](https://issues.apache.org/jira/browse/HBASE-20699) | QuotaCache should cancel the QuotaRefresherChore service inside its stop() |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-20707](https://issues.apache.org/jira/browse/HBASE-20707) | Move MissingSwitchDefault check from checkstyle to error-prone |  Major | build | Mike Drob | Mike Drob |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Kyle Purtell | Mike Drob |
| [HBASE-20561](https://issues.apache.org/jira/browse/HBASE-20561) | The way we stop a ReplicationSource may cause the RS down |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-20681](https://issues.apache.org/jira/browse/HBASE-20681) | IntegrationTestDriver fails after HADOOP-15406 due to missing hamcrest-core |  Major | integration tests | Romil Choksi | Josh Elser |
| [HBASE-20723](https://issues.apache.org/jira/browse/HBASE-20723) | Custom hbase.wal.dir results in data loss because we write recovered edits into a different place than where the recovering region server looks for them |  Critical | Recovery, wal | Rohan Pednekar | Ted Yu |
| [HBASE-20708](https://issues.apache.org/jira/browse/HBASE-20708) | Remove the usage of RecoverMetaProcedure in master startup |  Blocker | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20742](https://issues.apache.org/jira/browse/HBASE-20742) | Always create WAL directory for region server |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-20642](https://issues.apache.org/jira/browse/HBASE-20642) | IntegrationTestDDLMasterFailover throws 'InvalidFamilyOperationException |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20767](https://issues.apache.org/jira/browse/HBASE-20767) | Always close hbaseAdmin along with connection in HBTU |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-18622](https://issues.apache.org/jira/browse/HBASE-18622) | Mitigate API compatibility concerns between branch-1 and branch-2 |  Blocker | API | Michael Stack | Michael Stack |
| [HBASE-20752](https://issues.apache.org/jira/browse/HBASE-20752) | Make sure the regions are truly reopened after ReopenTableRegionsProcedure |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20775](https://issues.apache.org/jira/browse/HBASE-20775) | TestMultiParallel is flakey |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20778](https://issues.apache.org/jira/browse/HBASE-20778) | Make it so WALPE runs on DFS |  Major | test | Michael Stack | Michael Stack |
| [HBASE-20635](https://issues.apache.org/jira/browse/HBASE-20635) | Support to convert the shaded user permission proto to client user permission object |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-20403](https://issues.apache.org/jira/browse/HBASE-20403) | Prefetch sometimes doesn't work with encrypted file system |  Major | . | Umesh Agashe | Todd Lipcon |
| [HBASE-20777](https://issues.apache.org/jira/browse/HBASE-20777) | RpcConnection could still remain opened after we shutdown the NettyRpcServer |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-20795](https://issues.apache.org/jira/browse/HBASE-20795) | Allow option in BBKVComparator.compare to do comparison without sequence id |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20732](https://issues.apache.org/jira/browse/HBASE-20732) | Shutdown scan pool when master is stopped. |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20792](https://issues.apache.org/jira/browse/HBASE-20792) | info:servername and info:sn inconsistent for OPEN region |  Blocker | Region Assignment | Josh Elser | Josh Elser |
| [HBASE-20817](https://issues.apache.org/jira/browse/HBASE-20817) | Infinite loop when executing ReopenTableRegionsProcedure |  Blocker | Region Assignment | Duo Zhang | Ankit Singhal |
| [HBASE-20812](https://issues.apache.org/jira/browse/HBASE-20812) | Add defaults to Table Interface so implementors don't have to |  Major | . | Michael Stack | Michael Stack |
| [HBASE-20825](https://issues.apache.org/jira/browse/HBASE-20825) | Fix pre and post hooks of CloneSnapshot and RestoreSnapshot for Access checks |  Major | security | Romil Choksi | Ankit Singhal |
| [HBASE-20789](https://issues.apache.org/jira/browse/HBASE-20789) | TestBucketCache#testCacheBlockNextBlockMetadataMissing is flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20691](https://issues.apache.org/jira/browse/HBASE-20691) | Storage policy should allow deferring to HDFS |  Blocker | Filesystem Integration, wal | Sean Busbey | Yu Li |
| [HBASE-20808](https://issues.apache.org/jira/browse/HBASE-20808) | Wrong shutdown order between Chores and ChoreService |  Minor | . | Reid Chan | Nihal Jain |
| [HBASE-20822](https://issues.apache.org/jira/browse/HBASE-20822) | TestAsyncNonMetaRegionLocator is flakey |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-20784](https://issues.apache.org/jira/browse/HBASE-20784) | Will lose the SNAPSHOT suffix if we get the version of RS from ServerManager |  Minor | master, UI | Duo Zhang | Duo Zhang |
| [HBASE-20794](https://issues.apache.org/jira/browse/HBASE-20794) | CreateTable operation does not log its landing at the master nor the initiator at INFO level |  Major | logging | Michael Stack | Xu Cang |
| [HBASE-20829](https://issues.apache.org/jira/browse/HBASE-20829) | Remove the addFront assertion in MasterProcedureScheduler.doAdd |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20648](https://issues.apache.org/jira/browse/HBASE-20648) | HBASE-19364 "Truncate\_preserve fails with table when replica region \> 1" for master branch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20854](https://issues.apache.org/jira/browse/HBASE-20854) | Wrong retries number in RpcRetryingCaller's log message |  Minor | Client, logging | Allan Yang | Allan Yang |
| [HBASE-20485](https://issues.apache.org/jira/browse/HBASE-20485) | Copy constructor of Scan doesn't copy the readType and replicaId |  Minor | . | Chia-Ping Tsai | Nihal Jain |
| [HBASE-22324](https://issues.apache.org/jira/browse/HBASE-22324) |  loss a mass of data when the sequenceId of cells greater than Integer.Max, because MemStoreMergerSegmentsIterator can not merge segments |  Blocker | in-memory-compaction | chenyang | ChenYang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20414](https://issues.apache.org/jira/browse/HBASE-20414) | TestLockProcedure#testMultipleLocks may fail on slow machine |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | Performance | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20646](https://issues.apache.org/jira/browse/HBASE-20646) | TestWALProcedureStoreOnHDFS failing on branch-1 |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20667](https://issues.apache.org/jira/browse/HBASE-20667) | Rename TestGlobalThrottler to TestReplicationGlobalThrottler |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19216](https://issues.apache.org/jira/browse/HBASE-19216) | Implement a general framework to execute remote procedure on RS |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19524](https://issues.apache.org/jira/browse/HBASE-19524) | Master side changes for moving peer modification from zk watcher to procedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19536](https://issues.apache.org/jira/browse/HBASE-19536) | Client side changes for moving peer modification from zk watcher to procedure |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19564](https://issues.apache.org/jira/browse/HBASE-19564) | Procedure id is missing in the response of peer related operations |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19520](https://issues.apache.org/jira/browse/HBASE-19520) | Add UTs for the new lock type PEER |  Major | proc-v2 | Duo Zhang | Guanghao Zhang |
| [HBASE-19580](https://issues.apache.org/jira/browse/HBASE-19580) | Use slf4j instead of commons-logging in new, just-added Peer Procedure classes |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19525](https://issues.apache.org/jira/browse/HBASE-19525) | RS side changes for moving peer modification from zk watcher to procedure |  Major | proc-v2, Replication | Duo Zhang | Zheng Hu |
| [HBASE-19543](https://issues.apache.org/jira/browse/HBASE-19543) | Abstract a replication storage interface to extract the zk specific code |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19599](https://issues.apache.org/jira/browse/HBASE-19599) | Remove ReplicationQueuesClient, use ReplicationQueueStorage directly |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-19579](https://issues.apache.org/jira/browse/HBASE-19579) | Add peer lock test for shell command list\_locks |  Major | proc-v2, Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19573](https://issues.apache.org/jira/browse/HBASE-19573) | Rewrite ReplicationPeer with the new replication storage interface |  Major | proc-v2, Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-19630](https://issues.apache.org/jira/browse/HBASE-19630) | Add peer cluster key check when add new replication peer |  Major | proc-v2, Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19592](https://issues.apache.org/jira/browse/HBASE-19592) | Add UTs to test retry on update zk failure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19642](https://issues.apache.org/jira/browse/HBASE-19642) | Fix locking for peer modification procedure |  Critical | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19617](https://issues.apache.org/jira/browse/HBASE-19617) | Remove ReplicationQueues, use ReplicationQueueStorage directly |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-19635](https://issues.apache.org/jira/browse/HBASE-19635) | Introduce a thread at RS side to call reportProcedureDone |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-19622](https://issues.apache.org/jira/browse/HBASE-19622) | Reimplement ReplicationPeers with the new replication storage interface |  Major | proc-v2, Replication | Guanghao Zhang | Zheng Hu |
| [HBASE-19633](https://issues.apache.org/jira/browse/HBASE-19633) | Clean up the replication queues in the postPeerModification stage when removing a peer |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19623](https://issues.apache.org/jira/browse/HBASE-19623) | Create replication endpoint asynchronously when adding a replication source |  Major | proc-v2, Replication | Zheng Hu | Duo Zhang |
| [HBASE-19686](https://issues.apache.org/jira/browse/HBASE-19686) | Use KeyLocker instead of ReentrantLock in PeerProcedureHandlerImpl |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19544](https://issues.apache.org/jira/browse/HBASE-19544) | Add UTs for testing concurrent modifications on replication peer |  Major | proc-v2, Replication, test | Duo Zhang | Guanghao Zhang |
| [HBASE-19687](https://issues.apache.org/jira/browse/HBASE-19687) | Move the logic in ReplicationZKNodeCleaner to ReplicationChecker and remove ReplicationZKNodeCleanerChore |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19661](https://issues.apache.org/jira/browse/HBASE-19661) | Replace ReplicationStateZKBase with ZKReplicationStorageBase |  Major | proc-v2, Replication | Zheng Hu | Zheng Hu |
| [HBASE-19697](https://issues.apache.org/jira/browse/HBASE-19697) | Remove TestReplicationAdminUsingProcedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19634](https://issues.apache.org/jira/browse/HBASE-19634) | Add permission check for executeProcedures in AccessController |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19636](https://issues.apache.org/jira/browse/HBASE-19636) | All rs should already start work with the new peer change when replication peer procedure is finished |  Major | proc-v2, Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19707](https://issues.apache.org/jira/browse/HBASE-19707) | Race in start and terminate of a replication source after we async start replicatione endpoint |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19711](https://issues.apache.org/jira/browse/HBASE-19711) | TestReplicationAdmin.testConcurrentPeerOperations hangs |  Major | proc-v2 | Duo Zhang | Guanghao Zhang |
| [HBASE-19719](https://issues.apache.org/jira/browse/HBASE-19719) | Fix checkstyle issues |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-19936](https://issues.apache.org/jira/browse/HBASE-19936) | Introduce a new base class for replication peer procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20082](https://issues.apache.org/jira/browse/HBASE-20082) | Fix findbugs errors only on master which are introduced by HBASE-19397 |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-20050](https://issues.apache.org/jira/browse/HBASE-20050) | Reimplement updateReplicationPositions logic in serial replication based on the newly introduced replication storage layer |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-20115](https://issues.apache.org/jira/browse/HBASE-20115) | Reimplement serial replication based on the new replication storage layer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20129](https://issues.apache.org/jira/browse/HBASE-20129) | Add UT for serial replication checker |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20125](https://issues.apache.org/jira/browse/HBASE-20125) | Add UT for serial replication after region split and merge |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20148](https://issues.apache.org/jira/browse/HBASE-20148) | Make serial replication as a option for a peer instead of a table |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20167](https://issues.apache.org/jira/browse/HBASE-20167) | Optimize the implementation of ReplicationSourceWALReader |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20165](https://issues.apache.org/jira/browse/HBASE-20165) | Shell command to make a normal peer to be a serial replication peer |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20117](https://issues.apache.org/jira/browse/HBASE-20117) | Cleanup the unused replication barriers in meta table |  Major | master, Replication | Duo Zhang | Duo Zhang |
| [HBASE-20206](https://issues.apache.org/jira/browse/HBASE-20206) | WALEntryStream should not switch WAL file silently |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20155](https://issues.apache.org/jira/browse/HBASE-20155) | update branch-2 version to 2.1.0-SNAPSHOT |  Major | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20242](https://issues.apache.org/jira/browse/HBASE-20242) | The open sequence number will grow if we fail to open a region after writing the max sequence id file |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20116](https://issues.apache.org/jira/browse/HBASE-20116) | Optimize the region last pushed sequence id layout on zk |  Major | Replication | Duo Zhang | Zheng Hu |
| [HBASE-20147](https://issues.apache.org/jira/browse/HBASE-20147) | Serial replication will be stuck if we create a table with serial replication but add it to a peer after there are region moves |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20227](https://issues.apache.org/jira/browse/HBASE-20227) | Add UT for ReplicationUtils.contains method |  Major | Replication, test | Duo Zhang | Jingyun Tian |
| [HBASE-20271](https://issues.apache.org/jira/browse/HBASE-20271) | ReplicationSourceWALReader.switched should use the file name instead of the path object directly |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20127](https://issues.apache.org/jira/browse/HBASE-20127) | Add UT for serial replication after failover |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-20138](https://issues.apache.org/jira/browse/HBASE-20138) | Find a way to deal with the conflicts when updating replication position |  Major | Replication | Duo Zhang | Zheng Hu |
| [HBASE-20285](https://issues.apache.org/jira/browse/HBASE-20285) | Delete all last pushed sequence ids when removing a peer or removing the serial flag for a peer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20296](https://issues.apache.org/jira/browse/HBASE-20296) | Remove last pushed sequence ids when removing tables from a peer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20367](https://issues.apache.org/jira/browse/HBASE-20367) | Write a replication barrier for regions when disabling a table |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20377](https://issues.apache.org/jira/browse/HBASE-20377) | Deal with table in enabling and disabling state when modifying serial replication peer |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20294](https://issues.apache.org/jira/browse/HBASE-20294) | Also cleanup last pushed sequence id in ReplicationBarrierCleaner |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20417](https://issues.apache.org/jira/browse/HBASE-20417) | Do not read wal entries when peer is disabled |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20128](https://issues.apache.org/jira/browse/HBASE-20128) | Add new UTs which extends the old replication UTs but set replication scope to SERIAL |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-20378](https://issues.apache.org/jira/browse/HBASE-20378) | Provide a hbck option to cleanup replication barrier for a table |  Major | . | Duo Zhang | Jingyun Tian |
| [HBASE-20481](https://issues.apache.org/jira/browse/HBASE-20481) | Replicate entries from same region serially in ReplicationEndpoint for serial replication |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-20518](https://issues.apache.org/jira/browse/HBASE-20518) | Need to serialize the enabled field for UpdatePeerConfigProcedure |  Major | Replication | Duo Zhang | Yi Mei |
| [HBASE-19724](https://issues.apache.org/jira/browse/HBASE-19724) | Fix Checkstyle errors in hbase-hadoop2-compat |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19761](https://issues.apache.org/jira/browse/HBASE-19761) | Fix Checkstyle errors in hbase-zookeeper |  Minor | . | Jan Hentschel | maoling |
| [HBASE-20628](https://issues.apache.org/jira/browse/HBASE-20628) | SegmentScanner does over-comparing when one flushing |  Critical | Performance | Michael Stack | Michael Stack |
| [HBASE-20700](https://issues.apache.org/jira/browse/HBASE-20700) | Move meta region when server crash can cause the procedure to be stuck |  Critical | master, proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20722](https://issues.apache.org/jira/browse/HBASE-20722) | Make RegionServerTracker only depend on children changed event |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20332](https://issues.apache.org/jira/browse/HBASE-20332) | shaded mapreduce module shouldn't include hadoop |  Critical | mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-20333](https://issues.apache.org/jira/browse/HBASE-20333) | break up shaded client into one with no Hadoop and one that's standalone |  Critical | shading | Sean Busbey | Sean Busbey |
| [HBASE-20615](https://issues.apache.org/jira/browse/HBASE-20615) | emphasize use of shaded client jars when they're present in an install |  Major | build, Client, Usability | Sean Busbey | Sean Busbey |
| [HBASE-20334](https://issues.apache.org/jira/browse/HBASE-20334) | add a test that expressly uses both our shaded client and the one from hadoop 3 |  Major | hadoop3, shading | Sean Busbey | Sean Busbey |
| [HBASE-20706](https://issues.apache.org/jira/browse/HBASE-20706) | [hack] Don't add known not-OPEN regions in reopen phase of MTP |  Critical | amv2 | Josh Elser | Josh Elser |
| [HBASE-20710](https://issues.apache.org/jira/browse/HBASE-20710) | extra cloneFamily() in Mutation.add(Cell) |  Minor | regionserver | Hua Xiang | Hua Xiang |
| [HBASE-19764](https://issues.apache.org/jira/browse/HBASE-19764) | Fix Checkstyle errors in hbase-endpoint |  Minor | . | Jan Hentschel | Guangxu Cheng |
| [HBASE-20780](https://issues.apache.org/jira/browse/HBASE-20780) | ServerRpcConnection logging cleanup |  Major | logging, Performance | Michael Stack | Michael Stack |
| [HBASE-20194](https://issues.apache.org/jira/browse/HBASE-20194) | Basic Replication WebUI - Master |  Critical | Replication, Usability | Jingyun Tian | Jingyun Tian |
| [HBASE-20781](https://issues.apache.org/jira/browse/HBASE-20781) | Save recalculating families in a WALEdit batch of Cells |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20489](https://issues.apache.org/jira/browse/HBASE-20489) | Update Reference Guide that CLUSTER\_KEY value is present on the Master UI info page. |  Minor | documentation | Sakthi | Sakthi |
| [HBASE-20193](https://issues.apache.org/jira/browse/HBASE-20193) | Basic Replication Web UI - Regionserver |  Critical | Replication, Usability | Jingyun Tian | Jingyun Tian |
| [HBASE-20244](https://issues.apache.org/jira/browse/HBASE-20244) | NoSuchMethodException when retrieving private method decryptEncryptedDataEncryptionKey from DFSClient |  Blocker | wal | Ted Yu | Ted Yu |
| [HBASE-20839](https://issues.apache.org/jira/browse/HBASE-20839) | Fallback to FSHLog if we can not instantiated AsyncFSWAL when user does not specify AsyncFSWAL explicitly |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-20831](https://issues.apache.org/jira/browse/HBASE-20831) | Copy master doc into branch-2.1 and edit to make it suit 2.1.0 |  Blocker | documentation | Duo Zhang | Duo Zhang |
| [HBASE-20849](https://issues.apache.org/jira/browse/HBASE-20849) | Set version as 2.1.0 in branch-2.1 in prep for first RC |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-20832](https://issues.apache.org/jira/browse/HBASE-20832) | Generate CHANGES.md and RELEASENOTES.md for 2.1.0 |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-18569](https://issues.apache.org/jira/browse/HBASE-18569) | Add prefetch support for async region locator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20360](https://issues.apache.org/jira/browse/HBASE-20360) | Further optimization for serial replication |  Major | Replication | Duo Zhang |  |
| [HBASE-19997](https://issues.apache.org/jira/browse/HBASE-19997) | [rolling upgrade] 1.x =\> 2.x |  Blocker | . | Michael Stack | Duo Zhang |
| [HBASE-20331](https://issues.apache.org/jira/browse/HBASE-20331) | clean up shaded packaging for 2.1 |  Critical | Client, mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-19737](https://issues.apache.org/jira/browse/HBASE-19737) | Manage a HBASE-19397-branch-2 branch and merge it to branch-2 |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-17918](https://issues.apache.org/jira/browse/HBASE-17918) | document serial replication |  Critical | documentation, Replication | Sean Busbey | Yi Mei |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20415](https://issues.apache.org/jira/browse/HBASE-20415) | branches-2 don't need maven-scala-plugin |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20595](https://issues.apache.org/jira/browse/HBASE-20595) | Remove the concept of 'special tables' from rsgroups |  Major | Region Assignment, rsgroup | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20501](https://issues.apache.org/jira/browse/HBASE-20501) | Change the Hadoop minimum version to 2.7.1 |  Blocker | community, documentation | Andrew Kyle Purtell | Sean Busbey |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-20677](https://issues.apache.org/jira/browse/HBASE-20677) | Backport test of HBASE-20566 'Creating a system table after enabling rsgroup feature puts region into RIT' to branch-2 |  Major | . | Ted Yu | Nihal Jain |
| [HBASE-20665](https://issues.apache.org/jira/browse/HBASE-20665) | "Already cached block XXX" message should be DEBUG |  Minor | BlockCache | Sean Busbey | Eric Maynard |
| [HBASE-20270](https://issues.apache.org/jira/browse/HBASE-20270) | Turn off command help that follows all errors in shell |  Major | shell | Sean Busbey | Sakthi |
| [HBASE-20862](https://issues.apache.org/jira/browse/HBASE-20862) | Address 2.1.0 Compatibility Report Issues |  Blocker | compatibility | Mike Drob | Mike Drob |


