
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

## Release 1.5.0 - Unreleased (as of 2018-03-22)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | limit max log message width in log4j |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | [compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private |  Major | API | stack | Sean Busbey |
| [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | Add proper privilege check for rsgroup commands |  Major | . | Ted Yu | Guangxu Cheng |


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
| [HBASE-19684](https://issues.apache.org/jira/browse/HBASE-19684) | BlockCacheKey toString Performance |  Trivial | hbase | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19789](https://issues.apache.org/jira/browse/HBASE-19789) | Not exclude flaky tests from nightly builds |  Major | . | Appy | Appy |
| [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | Add '--return-values' option to Shell to print return values of commands in interactive mode |  Critical | shell | Romil Choksi | Josh Elser |
| [HBASE-19917](https://issues.apache.org/jira/browse/HBASE-19917) | Improve RSGroupBasedLoadBalancer#filterServers() to be more efficient |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-20087](https://issues.apache.org/jira/browse/HBASE-20087) | Periodically attempt redeploy of regions in FAILED\_OPEN state |  Major | master, Region Assignment | Andrew Purtell | Andrew Purtell |
| [HBASE-20109](https://issues.apache.org/jira/browse/HBASE-20109) | Add Admin#getMaster API to branch-1 |  Minor | Client | Andrew Purtell | Andrew Purtell |
| [HBASE-18467](https://issues.apache.org/jira/browse/HBASE-18467) | nightly job needs to run all stages and then comment on jira |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-20186](https://issues.apache.org/jira/browse/HBASE-20186) | Improve RSGroupBasedLoadBalancer#balanceCluster() to be more efficient when calculating cluster state for each rsgroup |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19024](https://issues.apache.org/jira/browse/HBASE-19024) | Configurable default durability for synchronous WAL |  Critical | wal | Vikas Vishwakarma | Harshal Jain |
| [HBASE-20047](https://issues.apache.org/jira/browse/HBASE-20047) | AuthenticationTokenIdentifier should provide a toString |  Minor | Usability | Sean Busbey | maoling |


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
| [HBASE-18864](https://issues.apache.org/jira/browse/HBASE-18864) | NullPointerException thrown when adding rows to a table from peer cluster, table with replication factor other than 0 or 1 |  Major | Client, Replication | smita | Sakthi |
| [HBASE-20146](https://issues.apache.org/jira/browse/HBASE-20146) | Regions are stuck while opening when WAL is disabled |  Critical | wal | Ashish Singhi | Ashish Singhi |
| [HBASE-20141](https://issues.apache.org/jira/browse/HBASE-20141) | Fix TooManyFiles exception when RefreshingChannels in FileIOEngine |  Major | BucketCache | Zach York | Zach York |
| [HBASE-19364](https://issues.apache.org/jira/browse/HBASE-19364) | Truncate\_preserve fails with table when replica region \> 1 |  Major | master | Pankaj Kumar | Pankaj Kumar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19514](https://issues.apache.org/jira/browse/HBASE-19514) | Use random port for TestJMXListener |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19949](https://issues.apache.org/jira/browse/HBASE-19949) | TestRSGroupsWithACL fails with ExceptionInInitializerError |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20052](https://issues.apache.org/jira/browse/HBASE-20052) | TestRegionOpen#testNonExistentRegionReplica fails due to NPE |  Major | . | Ted Yu | Ted Yu |


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


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16459](https://issues.apache.org/jira/browse/HBASE-16459) | Remove unused hbase shell --format option |  Trivial | shell | Dima Spivak | Dima Spivak |
| [HBASE-19637](https://issues.apache.org/jira/browse/HBASE-19637) | Add .checkstyle to gitignore |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-20089](https://issues.apache.org/jira/browse/HBASE-20089) | make\_rc.sh should name SHA-512 checksum files with the extension .sha512 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20088](https://issues.apache.org/jira/browse/HBASE-20088) | Update copyright notices to year 2018 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20075](https://issues.apache.org/jira/browse/HBASE-20075) | remove logic for branch-1.1 nightly testing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-15151](https://issues.apache.org/jira/browse/HBASE-15151) | Rely on nightly tests for findbugs compliance on existing branch |  Critical | build, test | Sean Busbey | Sean Busbey |


