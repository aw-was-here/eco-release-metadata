
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

## Release 1.5.0 - Unreleased (as of 2018-07-29)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | limit max log message width in log4j |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | [compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private |  Major | API | stack | Sean Busbey |
| [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | Add proper privilege check for rsgroup commands |  Major | rsgroup, security | Ted Yu | Guangxu Cheng |
| [HBASE-16459](https://issues.apache.org/jira/browse/HBASE-16459) | Remove unused hbase shell --format option |  Trivial | shell | Dima Spivak | Dima Spivak |
| [HBASE-20406](https://issues.apache.org/jira/browse/HBASE-20406) | HBase Thrift HTTP - Shouldn't handle TRACE/OPTIONS methods |  Major | security, Thrift | Kevin Risden | Kevin Risden |
| [HBASE-20501](https://issues.apache.org/jira/browse/HBASE-20501) | Change the Hadoop minimum version to 2.7.1 |  Blocker | community, documentation | Andrew Purtell | Sean Busbey |
| [HBASE-20691](https://issues.apache.org/jira/browse/HBASE-20691) | Storage policy should allow deferring to HDFS |  Blocker | Filesystem Integration, wal | Sean Busbey | Yu Li |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18060](https://issues.apache.org/jira/browse/HBASE-18060) | Backport to branch-1 HBASE-9774 HBase native metrics and metric collection for coprocessors |  Major | . | Vincent Poon | Vincent Poon |
| [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | Ad-hoc test job for running a subset of tests lots of times |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-15321](https://issues.apache.org/jira/browse/HBASE-15321) | Ability to open a HRegion from hdfs snapshot. |  Major | . | churro morales | churro morales |
| [HBASE-19528](https://issues.apache.org/jira/browse/HBASE-19528) | Major Compaction Tool |  Major | . | churro morales | churro morales |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | Limit total buffered size for all replication sources |  Major | Replication | Phil Yang | Phil Yang |
| [HBASE-19228](https://issues.apache.org/jira/browse/HBASE-19228) | nightly job should gather machine stats. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19262](https://issues.apache.org/jira/browse/HBASE-19262) | Revisit checkstyle rules |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19290](https://issues.apache.org/jira/browse/HBASE-19290) | Reduce zk request when doing split log |  Major | . | binlijin | binlijin |
| [HBASE-19180](https://issues.apache.org/jira/browse/HBASE-19180) | Remove unused imports from AlwaysPasses |  Trivial | build | Jan Hentschel | Jan Hentschel |
| [HBASE-19489](https://issues.apache.org/jira/browse/HBASE-19489) | Check against only the latest maintenance release in pre-commit hadoopcheck. |  Minor | . | Appy | Appy |
| [HBASE-19491](https://issues.apache.org/jira/browse/HBASE-19491) | Exclude flaky tests from nightly master run |  Major | . | Appy | Appy |
| [HBASE-19571](https://issues.apache.org/jira/browse/HBASE-19571) | Minor refactor of Nightly run scripts |  Minor | . | Appy | Appy |
| [HBASE-19570](https://issues.apache.org/jira/browse/HBASE-19570) | Add hadoop3 tests to Nightly master/branch-2 runs |  Critical | . | Appy | Appy |
| [HBASE-15580](https://issues.apache.org/jira/browse/HBASE-15580) | Tag coprocessor limitedprivate scope to StoreFile.Reader |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-19673](https://issues.apache.org/jira/browse/HBASE-19673) | Backport " Periodically ensure records are not buffered too long by BufferedMutator" to branch-1 |  Major | Client | Niels Basjes | Niels Basjes |
| [HBASE-19358](https://issues.apache.org/jira/browse/HBASE-19358) | Improve the stability of splitting log when do fail over |  Major | MTTR | Jingyun Tian | Jingyun Tian |
| [HBASE-19684](https://issues.apache.org/jira/browse/HBASE-19684) | BlockCacheKey toString Performance |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19789](https://issues.apache.org/jira/browse/HBASE-19789) | Not exclude flaky tests from nightly builds |  Major | . | Appy | Appy |
| [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | Add '--return-values' option to Shell to print return values of commands in interactive mode |  Critical | shell | Romil Choksi | Josh Elser |
| [HBASE-19917](https://issues.apache.org/jira/browse/HBASE-19917) | Improve RSGroupBasedLoadBalancer#filterServers() to be more efficient |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-20087](https://issues.apache.org/jira/browse/HBASE-20087) | Periodically attempt redeploy of regions in FAILED\_OPEN state |  Major | master, Region Assignment | Andrew Purtell | Andrew Purtell |
| [HBASE-20109](https://issues.apache.org/jira/browse/HBASE-20109) | Add Admin#getMaster API to branch-1 |  Minor | Client | Andrew Purtell | Andrew Purtell |
| [HBASE-18467](https://issues.apache.org/jira/browse/HBASE-18467) | nightly job needs to run all stages and then comment on jira |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-20186](https://issues.apache.org/jira/browse/HBASE-20186) | Improve RSGroupBasedLoadBalancer#balanceCluster() to be more efficient when calculating cluster state for each rsgroup |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | Configurable default durability for synchronous WAL |  Critical | wal | Vikas Vishwakarma | Harshal Jain |
| [HBASE-20047](https://issues.apache.org/jira/browse/HBASE-20047) | AuthenticationTokenIdentifier should provide a toString |  Minor | Usability | Sean Busbey | maoling |
| [HBASE-20286](https://issues.apache.org/jira/browse/HBASE-20286) | Improving shell command compaction\_state |  Minor | shell | Csaba Skrabak | Csaba Skrabak |
| [HBASE-15466](https://issues.apache.org/jira/browse/HBASE-15466) | precommit should not run all java goals when given a docs-only patch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20352](https://issues.apache.org/jira/browse/HBASE-20352) | [Chore] Backport HBASE-18309 to branch-1 |  Major | . | Reid Chan | Reid Chan |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20459](https://issues.apache.org/jira/browse/HBASE-20459) | Majority of scan CPU time in HBase-1 spent in size estimation |  Critical | Performance, scan | Lars Hofhansl | Lars Hofhansl |
| [HBASE-20523](https://issues.apache.org/jira/browse/HBASE-20523) | PE tool should support configuring client side buffering sizes |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20545](https://issues.apache.org/jira/browse/HBASE-20545) | Improve performance of BaseLoadBalancer.retainAssignment |  Major | Balancer | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20444](https://issues.apache.org/jira/browse/HBASE-20444) | Improve version comparison logic for HBase specific version string and add unit tests |  Major | util | Umesh Agashe | maoling |
| [HBASE-20605](https://issues.apache.org/jira/browse/HBASE-20605) | Exclude new Azure Storage FileSystem from SecureBulkLoadEndpoint permission check |  Major | security | Josh Elser | Josh Elser |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20701](https://issues.apache.org/jira/browse/HBASE-20701) | too much logging when balancer runs from BaseLoadBalancer |  Trivial | Balancer | Monani Mihir | Monani Mihir |
| [HBASE-20450](https://issues.apache.org/jira/browse/HBASE-20450) | Provide metrics for number of total active, priority and replication rpc handlers |  Major | metrics | Nihal Jain | Nihal Jain |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20858](https://issues.apache.org/jira/browse/HBASE-20858) | port HBASE-20695 to branch-1 |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-20651](https://issues.apache.org/jira/browse/HBASE-20651) | Master, prevents hbck or shell command to reassign the split parent region |  Minor | master | huaxiang sun | huaxiang sun |
| [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | New metrics ReadRequestRate and WriteRequestRate |  Minor | metrics | Ankit Jain | Ankit Jain |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18312](https://issues.apache.org/jira/browse/HBASE-18312) | Ineffective handling of FileNotFoundException in FileLink$FileLinkInputStream.tryOpen() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19195](https://issues.apache.org/jira/browse/HBASE-19195) | More error-prone fixes |  Major | . | Mike Drob | Mike Drob |
| [HBASE-19229](https://issues.apache.org/jira/browse/HBASE-19229) | Nightly script to check source artifact should not do a destructive git operation without opt-in |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19240](https://issues.apache.org/jira/browse/HBASE-19240) | Fix error-prone errors, part four? |  Major | . | Mike Drob | Mike Drob |
| [HBASE-19249](https://issues.apache.org/jira/browse/HBASE-19249) | test for "hbase antipatterns" should check \_count\_ of occurance rather than text of |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19223](https://issues.apache.org/jira/browse/HBASE-19223) | Remove references to Date Tiered compaction from branch-1.2 and branch-1.1 ref guide |  Critical | Compaction, documentation | chilianyi | Sean Busbey |
| [HBASE-19509](https://issues.apache.org/jira/browse/HBASE-19509) | RSGroupAdminEndpoint#preCreateTable triggers TableNotFoundException |  Minor | . | Ted Yu | Andrew Purtell |
| [HBASE-19546](https://issues.apache.org/jira/browse/HBASE-19546) | TestMasterReplication.testCyclicReplication2 uses wrong assertion |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-18625](https://issues.apache.org/jira/browse/HBASE-18625) | Splitting of region with replica, doesn't update region list in serverHolding. A server crash leads to overlap. |  Critical | read replicas | Igloo | huaxiang sun |
| [HBASE-19691](https://issues.apache.org/jira/browse/HBASE-19691) | Do not require ADMIN permission for obtaining ClusterStatus |  Critical | . | Romil Choksi | Josh Elser |
| [HBASE-19490](https://issues.apache.org/jira/browse/HBASE-19490) | Rare failure in TestRateLimiter |  Major | test | Andrew Purtell | Chia-Ping Tsai |
| [HBASE-19708](https://issues.apache.org/jira/browse/HBASE-19708) | Avoid NPE when the RPC listener's accept channel is closed |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19424](https://issues.apache.org/jira/browse/HBASE-19424) | Metrics servlet throws NPE |  Minor | . | Andrew Purtell | Toshihiro Suzuki |
| [HBASE-19685](https://issues.apache.org/jira/browse/HBASE-19685) | Fix TestFSErrorsExposed#testFullSystemBubblesFSErrors |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19769](https://issues.apache.org/jira/browse/HBASE-19769) | IllegalAccessError on package-private Hadoop metrics2 classes in MapReduce jobs |  Critical | mapreduce, metrics | Josh Elser | Josh Elser |
| [HBASE-11409](https://issues.apache.org/jira/browse/HBASE-11409) | Add more flexibility for input directory structure to LoadIncrementalHFiles |  Major | . | churro morales | churro morales |
| [HBASE-19752](https://issues.apache.org/jira/browse/HBASE-19752) | RSGroupBasedLoadBalancer#getMisplacedRegions() should handle the case where rs group cannot be determined |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19816](https://issues.apache.org/jira/browse/HBASE-19816) | Replication sink list is not updated on UnknownHostException |  Major | Replication | Scott Wilson | Scott Wilson |
| [HBASE-19757](https://issues.apache.org/jira/browse/HBASE-19757) | System table gets stuck after enabling region server group feature in secure cluster |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | "Maximum lock count exceeded" from region server's batch processing |  Major | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-17079](https://issues.apache.org/jira/browse/HBASE-17079) | HBase build fails on windows, hbase-archetype-builder is reason for failure |  Major | build | Mohammad Arshad | Mohammad Arshad |
| [HBASE-19756](https://issues.apache.org/jira/browse/HBASE-19756) | Master NPE during completed failed proc eviction |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-19871](https://issues.apache.org/jira/browse/HBASE-19871) | delete.rb should require user to provide the column |  Major | shell | Romil Choksi | Chia-Ping Tsai |
| [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0 |  Major | . | stack | stack |
| [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | Up yetus proclimit on nightlies |  Major | . | stack | stack |
| [HBASE-19905](https://issues.apache.org/jira/browse/HBASE-19905) | ReplicationSyncUp tool will not exit if a peer replication is disabled |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-19900](https://issues.apache.org/jira/browse/HBASE-19900) | Region-level exception destroy the result of batch |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19937](https://issues.apache.org/jira/browse/HBASE-19937) | Ensure createRSGroupTable be called after ProcedureExecutor and LoadBalancer are initialized |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-19972](https://issues.apache.org/jira/browse/HBASE-19972) | Should rethrow  the RetriesExhaustedWithDetailsException when failed to apply the batch in ReplicationSink |  Critical | Replication | Zheng Hu | Zheng Hu |
| [HBASE-19876](https://issues.apache.org/jira/browse/HBASE-19876) | The exception happening in converting pb mutation to hbase.mutation messes up the CellScanner |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19979](https://issues.apache.org/jira/browse/HBASE-19979) | ReplicationSyncUp tool may leak Zookeeper connection |  Major | Replication | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18282](https://issues.apache.org/jira/browse/HBASE-18282) | ReplicationLogCleaner can delete WALs not yet replicated in case of a KeeperException |  Critical | Replication | Ashu Pachauri | Ben Lau |
| [HBASE-19996](https://issues.apache.org/jira/browse/HBASE-19996) | Some nonce procs might not be cleaned up (follow up HBASE-19756) |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-14897](https://issues.apache.org/jira/browse/HBASE-14897) | TestTableLockManager.testReapAllTableLocks is flakey |  Major | . | Heng Chen | Heng Chen |
| [HBASE-20017](https://issues.apache.org/jira/browse/HBASE-20017) | BufferedMutatorImpl submit the same mutation repeatedly |  Blocker | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20027](https://issues.apache.org/jira/browse/HBASE-20027) | Add test TestClusterPortAssignment |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19553](https://issues.apache.org/jira/browse/HBASE-19553) | Old replica regions should be cleared from AM memory after primary region split or merge |  Minor | master | huaxiang sun | Pankaj Kumar |
| [HBASE-20016](https://issues.apache.org/jira/browse/HBASE-20016) | TestCatalogJanitorInMemoryStates#testInMemoryForReplicaParentCleanup is flaky |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19391](https://issues.apache.org/jira/browse/HBASE-19391) | Calling HRegion#initializeRegionInternals from a region replica can still re-create a region directory |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-20062](https://issues.apache.org/jira/browse/HBASE-20062) | findbugs is not running on precommit checks |  Blocker | community, test | Sean Busbey | Mike Drob |
| [HBASE-20061](https://issues.apache.org/jira/browse/HBASE-20061) | HStore synchronized member variable filesCompacting should be private |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-19728](https://issues.apache.org/jira/browse/HBASE-19728) | Add lock to filesCompacting in all place. |  Major | . | binlijin | binlijin |
| [HBASE-20091](https://issues.apache.org/jira/browse/HBASE-20091) | Fix for 'build.plugins.plugin.version' for org.codehaus.mojo: is missing. |  Trivial | . | Artem Ervits | Artem Ervits |
| [HBASE-20001](https://issues.apache.org/jira/browse/HBASE-20001) | cleanIfNoMetaEntry() uses encoded instead of region name to lookup region |  Major | . | Francis Liu | Thiruvel Thirumoolan |
| [HBASE-20102](https://issues.apache.org/jira/browse/HBASE-20102) | AssignmentManager#shutdown doesn't shut down scheduled executor |  Minor | master, Region Assignment | Andrew Purtell | Andrew Purtell |
| [HBASE-19989](https://issues.apache.org/jira/browse/HBASE-19989) | READY\_TO\_MERGE and READY\_TO\_SPLIT do not update region state correctly |  Major | . | Ben Lau | Ben Lau |
| [HBASE-20106](https://issues.apache.org/jira/browse/HBASE-20106) | API Compliance checker should fall back to specifying origin as remote repo |  Major | API, community | Sean Busbey | Alex Leblang |
| [HBASE-19863](https://issues.apache.org/jira/browse/HBASE-19863) | java.lang.IllegalStateException: isDelete failed when SingleColumnValueFilter is used |  Major | Filters | Sergey Soldatov | Sergey Soldatov |
| [HBASE-19985](https://issues.apache.org/jira/browse/HBASE-19985) | Redundant instanceof check in ProtobufUtil#getServiceException |  Trivial | . | Ted Yu | Artem Ervits |
| [HBASE-20139](https://issues.apache.org/jira/browse/HBASE-20139) | NPE in RSRpcServices.get() when getRegion throws an exception |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20134](https://issues.apache.org/jira/browse/HBASE-20134) | support scripts use hard-coded /tmp |  Minor | website | Mike Drob | Sean Busbey |
| [HBASE-20164](https://issues.apache.org/jira/browse/HBASE-20164) | failed hadoopcheck should add footer link |  Major | community | Mike Drob | Mike Drob |
| [HBASE-20162](https://issues.apache.org/jira/browse/HBASE-20162) | [nightly] depending on pipeline execution we sometimes refer to the wrong workspace |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20174](https://issues.apache.org/jira/browse/HBASE-20174) | Fix TestZKLessMergeOnCluster flakiness |  Major | . | Francis Liu | Francis Liu |
| [HBASE-20153](https://issues.apache.org/jira/browse/HBASE-20153) | enable error-prone analysis in precommit |  Major | community | Mike Drob | Mike Drob |
| [HBASE-20146](https://issues.apache.org/jira/browse/HBASE-20146) | Regions are stuck while opening when WAL is disabled |  Critical | wal | Ashish Singhi | Ashish Singhi |
| [HBASE-20141](https://issues.apache.org/jira/browse/HBASE-20141) | Fix TooManyFiles exception when RefreshingChannels in FileIOEngine |  Major | BucketCache | Zach York | Zach York |
| [HBASE-19364](https://issues.apache.org/jira/browse/HBASE-19364) | Truncate\_preserve fails with table when replica region \> 1 |  Major | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20292](https://issues.apache.org/jira/browse/HBASE-20292) | Wrong URLs in the descriptions for update\_all\_config and update\_config commands in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20302](https://issues.apache.org/jira/browse/HBASE-20302) | CatalogJanitor should log the reason why it is disabled |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-17631](https://issues.apache.org/jira/browse/HBASE-17631) | Canary interval too low |  Major | canary | Lars George | Jan Hentschel |
| [HBASE-20322](https://issues.apache.org/jira/browse/HBASE-20322) | CME in StoreScanner causes region server crash |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20231](https://issues.apache.org/jira/browse/HBASE-20231) | Not able to delete column family from a row using RemoteHTable |  Major | REST | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20301](https://issues.apache.org/jira/browse/HBASE-20301) | Remove the meaningless plus sign from table.jsp |  Minor | UI | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19343](https://issues.apache.org/jira/browse/HBASE-19343) | Restore snapshot makes split parent region online |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20280](https://issues.apache.org/jira/browse/HBASE-20280) | Fix possibility of deadlocking in refreshFileConnections when prefetch is enabled |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20404](https://issues.apache.org/jira/browse/HBASE-20404) | Ugly cleanerchore complaint that dir is not empty |  Major | master | stack | Sean Busbey |
| [HBASE-19850](https://issues.apache.org/jira/browse/HBASE-19850) | The number of Offline Regions is wrong after restoring a snapshot |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20006](https://issues.apache.org/jira/browse/HBASE-20006) | TestRestoreSnapshotFromClientWithRegionReplicas is flakey |  Critical | read replicas | stack | Toshihiro Suzuki |
| [HBASE-20463](https://issues.apache.org/jira/browse/HBASE-20463) | Fix breakage introduced on branch-1 by HBASE-20276 "[shell] Revert shell REPL change and document" |  Blocker | shell | stack | Sean Busbey |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-19924](https://issues.apache.org/jira/browse/HBASE-19924) | hbase rpc throttling does not work for multi() with request count rater. |  Major | rpc | huaxiang sun | huaxiang sun |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-20500](https://issues.apache.org/jira/browse/HBASE-20500) | [rsgroup] should keep at least one server in default group |  Major | rsgroup | Yechao Chen | Yechao Chen |
| [HBASE-20204](https://issues.apache.org/jira/browse/HBASE-20204) | Add locking to RefreshFileConnections in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20554](https://issues.apache.org/jira/browse/HBASE-20554) | "WALs outstanding" message from CleanerChore is noisy |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20447](https://issues.apache.org/jira/browse/HBASE-20447) | Only fail cacheBlock if block collisions aren't related to next block metadata |  Major | BlockCache, BucketCache | Zach York | Zach York |
| [HBASE-20571](https://issues.apache.org/jira/browse/HBASE-20571) | JMXJsonServlet generates invalid JSON if it has NaN in metrics |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20591](https://issues.apache.org/jira/browse/HBASE-20591) | nightly job doesn't respect maven options |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20638](https://issues.apache.org/jira/browse/HBASE-20638) | nightly source artifact testing should fail the stage if it's going to report an error on jira |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Purtell | Andrew Purtell |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-18864](https://issues.apache.org/jira/browse/HBASE-18864) | NullPointerException thrown when adding rows to a table from peer cluster, table with replication factor other than 0 or 1 |  Major | Client, Replication | smita | Sakthi |
| [HBASE-20669](https://issues.apache.org/jira/browse/HBASE-20669) | [findbugs] autoboxing to parse primitive |  Major | . | Sean Busbey | Wei-Chiu Chuang |
| [HBASE-18116](https://issues.apache.org/jira/browse/HBASE-18116) | Replication source in-memory accounting should not include bulk transfer hfiles |  Major | Replication | Andrew Purtell | Xu Cang |
| [HBASE-20670](https://issues.apache.org/jira/browse/HBASE-20670) | NPE in HMaster#isInMaintenanceMode |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Purtell | Mike Drob |
| [HBASE-20723](https://issues.apache.org/jira/browse/HBASE-20723) | Custom hbase.wal.dir results in data loss because we write recovered edits into a different place than where the recovering region server looks for them |  Critical | Recovery, wal | Rohan Pednekar | Ted Yu |
| [HBASE-20770](https://issues.apache.org/jira/browse/HBASE-20770) | WAL cleaner logs way too much; gets clogged when lots of work to do |  Critical | logging | stack | stack |
| [HBASE-20732](https://issues.apache.org/jira/browse/HBASE-20732) | Shutdown scan pool when master is stopped. |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20789](https://issues.apache.org/jira/browse/HBASE-20789) | TestBucketCache#testCacheBlockNextBlockMetadataMissing is flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20840](https://issues.apache.org/jira/browse/HBASE-20840) | Backport HBASE-20791 'RSGroupBasedLoadBalancer#setClusterMetrics should pass ClusterMetrics to its internalBalancer' to branch-1 |  Major | rsgroup | chenxu | chenxu |
| [HBASE-20808](https://issues.apache.org/jira/browse/HBASE-20808) | Wrong shutdown order between Chores and ChoreService |  Minor | . | Reid Chan | Nihal Jain |
| [HBASE-20771](https://issues.apache.org/jira/browse/HBASE-20771) | PUT operation fail with "No server address listed in hbase:meta for region xxxxx" |  Major | Client | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-20889](https://issues.apache.org/jira/browse/HBASE-20889) | PE scan is failing with NullPointerException |  Major | . | Vikas Vishwakarma | Ted Yu |
| [HBASE-20855](https://issues.apache.org/jira/browse/HBASE-20855) | PeerConfigTracker only supporting one listener will cause problem when there is a recovered replication queue |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17885](https://issues.apache.org/jira/browse/HBASE-17885) | Backport HBASE-15871 to branch-1 |  Major | Scanners | ramkrishna.s.vasudevan | Toshihiro Suzuki |
| [HBASE-20908](https://issues.apache.org/jira/browse/HBASE-20908) | Infinite loop on regionserver if region replica are reduced |  Major | read replicas | Ankit Singhal | Ankit Singhal |
| [HBASE-20230](https://issues.apache.org/jira/browse/HBASE-20230) | Incorrrect log message in RSRpcService |  Minor | . | Vishal Khandelwal | Xu Cang |
| [HBASE-20744](https://issues.apache.org/jira/browse/HBASE-20744) | Address FindBugs warnings in branch-1 |  Major | . | Ted Yu | Xu Cang |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20895](https://issues.apache.org/jira/browse/HBASE-20895) | NPE in RpcServer#readAndProcess |  Major | rpc | Andrew Purtell | Andrew Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19514](https://issues.apache.org/jira/browse/HBASE-19514) | Use random port for TestJMXListener |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19949](https://issues.apache.org/jira/browse/HBASE-19949) | TestRSGroupsWithACL fails with ExceptionInInitializerError |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20052](https://issues.apache.org/jira/browse/HBASE-20052) | TestRegionOpen#testNonExistentRegionReplica fails due to NPE |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20619](https://issues.apache.org/jira/browse/HBASE-20619) | TestWeakObjectPool occasionally times out |  Trivial | test | Andrew Purtell | Andrew Purtell |
| [HBASE-20646](https://issues.apache.org/jira/browse/HBASE-20646) | TestWALProcedureStoreOnHDFS failing on branch-1 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20667](https://issues.apache.org/jira/browse/HBASE-20667) | Rename TestGlobalThrottler to TestReplicationGlobalThrottler |  Trivial | . | Andrew Purtell | Andrew Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19243](https://issues.apache.org/jira/browse/HBASE-19243) | Start mini cluster once before class for TestFIFOCompactionPolicy |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19373](https://issues.apache.org/jira/browse/HBASE-19373) | Fix Checkstyle error in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19481](https://issues.apache.org/jira/browse/HBASE-19481) | Enable Checkstyle in hbase-error-prone |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19468](https://issues.apache.org/jira/browse/HBASE-19468) | FNFE during scans and flushes |  Critical | regionserver, Scanners | Thiruvel Thirumoolan | ramkrishna.s.vasudevan |
| [HBASE-19631](https://issues.apache.org/jira/browse/HBASE-19631) | Allow building HBase 1.5.x against Hadoop 3.0.0 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-19877](https://issues.apache.org/jira/browse/HBASE-19877) | hbase-common and hbase-zookeeper don't add the log4j.properties to the resource path for testing |  Critical | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19932](https://issues.apache.org/jira/browse/HBASE-19932) | TestSecureIPC in branch-1 fails with NoSuchMethodError against hadoop 3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20048](https://issues.apache.org/jira/browse/HBASE-20048) | Revert serial replication feature |  Blocker | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16848](https://issues.apache.org/jira/browse/HBASE-16848) | Usage for show\_peer\_tableCFs command doesn't include peer |  Minor | . | Ted Yu | Peter Somogyi |
| [HBASE-20316](https://issues.apache.org/jira/browse/HBASE-20316) | Backport HBASE-20229 "ConnectionImplementation.locateRegions() returns duplicated entries when region replication is on" to branch-1 |  Major | backport | stack | Toshihiro Suzuki |
| [HBASE-20647](https://issues.apache.org/jira/browse/HBASE-20647) | Backport HBASE-20616 "TruncateTableProcedure is stuck in retry loop in TRUNCATE\_TABLE\_CREATE\_FS\_LAYOUT state" to branch-1 |  Major | backport | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20556](https://issues.apache.org/jira/browse/HBASE-20556) | Backport HBASE-16490 to branch-1 |  Major | HFile, snapshots | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-19722](https://issues.apache.org/jira/browse/HBASE-19722) | Meta query statistics metrics source |  Major | . | Andrew Purtell | Xu Cang |
| [HBASE-20557](https://issues.apache.org/jira/browse/HBASE-20557) | Backport HBASE-17215 to branch-1 |  Major | HFile, master | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-20558](https://issues.apache.org/jira/browse/HBASE-20558) | Backport HBASE-17854 to branch-1 |  Major | HFile | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-20559](https://issues.apache.org/jira/browse/HBASE-20559) | Backport HBASE-18083 to branch-1 |  Major | HFile | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20555](https://issues.apache.org/jira/browse/HBASE-20555) | Backport HBASE-18083 and related changes in branch-1 |  Major | HFile, snapshots | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-19637](https://issues.apache.org/jira/browse/HBASE-19637) | Add .checkstyle to gitignore |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-20089](https://issues.apache.org/jira/browse/HBASE-20089) | make\_rc.sh should name SHA-512 checksum files with the extension .sha512 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20088](https://issues.apache.org/jira/browse/HBASE-20088) | Update copyright notices to year 2018 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20075](https://issues.apache.org/jira/browse/HBASE-20075) | remove logic for branch-1.1 nightly testing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-15151](https://issues.apache.org/jira/browse/HBASE-15151) | Rely on nightly tests for findbugs compliance on existing branch |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20493](https://issues.apache.org/jira/browse/HBASE-20493) | Port HBASE-19994 (Create a new class for RPC throttling exception, make it retryable) to branch-1 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20486](https://issues.apache.org/jira/browse/HBASE-20486) | Change default throughput controller to PressureAwareThroughputController in branch-1 |  Major | . | Andrew Purtell | Xu Cang |
| [HBASE-20608](https://issues.apache.org/jira/browse/HBASE-20608) | Remove build option of error prone profile for branch-1 after HBASE-12350 |  Major | build | Tak Lon (Stephen) Wu | Andrew Purtell |
| [HBASE-20595](https://issues.apache.org/jira/browse/HBASE-20595) | Remove the concept of 'special tables' from rsgroups |  Major | Region Assignment, rsgroup | Andrew Purtell | Andrew Purtell |
| [HBASE-19858](https://issues.apache.org/jira/browse/HBASE-19858) | Backport HBASE-14061 (Support CF-level Storage Policy) to branch-1 |  Major | hadoop2, Operability | Andrew Purtell | Andrew Purtell |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-20905](https://issues.apache.org/jira/browse/HBASE-20905) | branch-1 docker build fails |  Major | build | Jingyun Tian | Mike Drob |
| [HBASE-20931](https://issues.apache.org/jira/browse/HBASE-20931) | [branch-1] Add -Dhttps.protocols=TLSv1.2 to Maven command line in make\_rc.sh |  Trivial | . | Andrew Purtell | Andrew Purtell |


