
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

## Release 2.1.6 - 2019-08-30



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15666](https://issues.apache.org/jira/browse/HBASE-15666) | shaded dependencies for hbase-testing-util |  Critical | test | Sean Busbey | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22488](https://issues.apache.org/jira/browse/HBASE-22488) | Cleanup the explicit timeout value for test methods |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22496](https://issues.apache.org/jira/browse/HBASE-22496) | UnsafeAccess.unsafeCopy should not copy more than UNSAFE\_COPY\_THRESHOLD on each iteration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22511](https://issues.apache.org/jira/browse/HBASE-22511) | More missing /rs-status links |  Minor | UI | Josh Elser | Josh Elser |
| [HBASE-22523](https://issues.apache.org/jira/browse/HBASE-22523) | Refactor RegionStates#getAssignmentsByTable to make it easy to understand |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22284](https://issues.apache.org/jira/browse/HBASE-22284) | optimization StringBuilder.append of AbstractMemStore.toString |  Trivial | . | wen.feiyi | wen.feiyi |
| [HBASE-22160](https://issues.apache.org/jira/browse/HBASE-22160) | Add sorting functionality in regionserver web UI for user regions |  Minor | monitoring, regionserver, UI, Usability | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-22593](https://issues.apache.org/jira/browse/HBASE-22593) | Add local Jenv file to gitignore |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22344](https://issues.apache.org/jira/browse/HBASE-22344) | Document deprecated public APIs |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22561](https://issues.apache.org/jira/browse/HBASE-22561) | modify HFilePrettyPrinter to accept non-hbase.rootdir directories |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | [Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher |  Minor | Compaction | Reid Chan | Reid Chan |
| [HBASE-22616](https://issues.apache.org/jira/browse/HBASE-22616) | responseTooXXX logging for Multi should characterize the component ops |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22595](https://issues.apache.org/jira/browse/HBASE-22595) | Use full qualified name in Checkstyle suppressions |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22633](https://issues.apache.org/jira/browse/HBASE-22633) | Remove redundant call to substring for ZKReplicationQueueStorage |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22604](https://issues.apache.org/jira/browse/HBASE-22604) | fix the link in the docs to "Understanding HBase and BigTable" by Jim R. Wilson |  Trivial | documentation | David Mollitor | Murtaza Hassan |
| [HBASE-22669](https://issues.apache.org/jira/browse/HBASE-22669) | Add unit tests for org.apache.hadoop.hbase.util.Strings |  Major | java | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-22638](https://issues.apache.org/jira/browse/HBASE-22638) | Zookeeper Utility enhancements |  Minor | Zookeeper | Viraj Jasani | Viraj Jasani |
| [HBASE-22689](https://issues.apache.org/jira/browse/HBASE-22689) | Line break for fix version in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22643](https://issues.apache.org/jira/browse/HBASE-22643) | Delete region without archiving only if regiondir is present |  Major | HFile | Viraj Jasani | Viraj Jasani |
| [HBASE-22704](https://issues.apache.org/jira/browse/HBASE-22704) | Avoid NPE when access table.jsp and snapshot.jsp but master not finish initialization |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22690](https://issues.apache.org/jira/browse/HBASE-22690) | Deprecate / Remove OfflineMetaRepair in hbase-2+ |  Major | hbck2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22610](https://issues.apache.org/jira/browse/HBASE-22610) | [BucketCache] Rename "hbase.offheapcache.minblocksize" |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22692](https://issues.apache.org/jira/browse/HBASE-22692) | Rubocop definition is not used in the /bin directory |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22721](https://issues.apache.org/jira/browse/HBASE-22721) | Refactor HBaseFsck: move the inner class out |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22702](https://issues.apache.org/jira/browse/HBASE-22702) | [Log] 'Group not found for table' is chatty |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22750](https://issues.apache.org/jira/browse/HBASE-22750) | Correct @throws in comment |  Trivial | Client, rpc | Wenqiang Li | Wenqiang Li |
| [HBASE-22743](https://issues.apache.org/jira/browse/HBASE-22743) | ClientUtils for hbase-examples |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22763](https://issues.apache.org/jira/browse/HBASE-22763) | Fix remaining Checkstyle issue in hbase-procedure |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22764](https://issues.apache.org/jira/browse/HBASE-22764) | Fix remaining Checkstyle issues in hbase-rsgroup |  Trivial | rsgroup | Jan Hentschel | Jan Hentschel |
| [HBASE-22363](https://issues.apache.org/jira/browse/HBASE-22363) | Remove hardcoded number of read cache block buckets |  Trivial | BlockCache, BucketCache | Biju Nair | Biju Nair |
| [HBASE-22787](https://issues.apache.org/jira/browse/HBASE-22787) | Clean up of tests in hbase-zookeeper |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-22677](https://issues.apache.org/jira/browse/HBASE-22677) | Add unit tests for org.apache.hadoop.hbase.util.ByteRangeUtils and org.apache.hadoop.hbase.util.Classes |  Major | java, test | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-22786](https://issues.apache.org/jira/browse/HBASE-22786) | Fix Checkstyle issues in tests of hbase-client |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22785](https://issues.apache.org/jira/browse/HBASE-22785) | Reduce number of Checkstyle issues in client exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22759](https://issues.apache.org/jira/browse/HBASE-22759) | Add user info to AUDITLOG events when doing grant/revoke |  Major | logging, security | Andor Molnar | Andor Molnar |
| [HBASE-22731](https://issues.apache.org/jira/browse/HBASE-22731) | ReplicationSource and HBaseInterClusterReplicationEndpoint log messages should include a target Peer identifier |  Minor | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22800](https://issues.apache.org/jira/browse/HBASE-22800) | Add mapreduce dependencies to hbase-shaded-testing-util |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-22812](https://issues.apache.org/jira/browse/HBASE-22812) | InterfaceAudience annotation in CatalogJanitor uses fully-qualified name |  Minor | . | Peter Somogyi | Murtaza Hassan |
| [HBASE-22828](https://issues.apache.org/jira/browse/HBASE-22828) | Log a region close journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22841](https://issues.apache.org/jira/browse/HBASE-22841) | TimeRange's factory functions do not support ranges, only \`allTime\` and \`at\` |  Major | Client | Huon Wilson | Huon Wilson |
| [HBASE-22871](https://issues.apache.org/jira/browse/HBASE-22871) | Move the DirScanPool out and do not use static field |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-22844](https://issues.apache.org/jira/browse/HBASE-22844) | Fix Checkstyle issues in client snapshot exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | Initialize an separate ThreadPoolExecutor for taking/restoring snapshot |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22464](https://issues.apache.org/jira/browse/HBASE-22464) | Improvements to hbase-vote script |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-20509](https://issues.apache.org/jira/browse/HBASE-20509) | Put List in HashSet directly without using addAll function to improve performance |  Trivial | Performance | taiyinglee | taiyinglee |
| [HBASE-21996](https://issues.apache.org/jira/browse/HBASE-21996) | Set locale for javadoc |  Major | documentation | Peter Somogyi | Peter Somogyi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19893](https://issues.apache.org/jira/browse/HBASE-19893) | restore\_snapshot is broken in master branch when region splits |  Critical | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22471](https://issues.apache.org/jira/browse/HBASE-22471) | Our nightly jobs for master and branch-2 are still using hadoop-2.7.1 in integration test |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22486](https://issues.apache.org/jira/browse/HBASE-22486) | Fix flaky test TestLockManager |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22487](https://issues.apache.org/jira/browse/HBASE-22487) | getMostLoadedRegions is unused |  Trivial | regionserver | Clay B. | Clay B. |
| [HBASE-22490](https://issues.apache.org/jira/browse/HBASE-22490) | Nightly client integration test fails with hadoop-3 |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-22522](https://issues.apache.org/jira/browse/HBASE-22522) | The integration test in master branch's nightly job has error "ERROR: Only found 1050 rows." |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22518](https://issues.apache.org/jira/browse/HBASE-22518) | yetus personality is treating branch-1.4 like earlier branches for hadoopcheck |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-22546](https://issues.apache.org/jira/browse/HBASE-22546) | TestRegionServerHostname#testRegionServerHostname fails reliably for me |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22520](https://issues.apache.org/jira/browse/HBASE-22520) | Avoid possible NPE in HalfStoreFileReader seekBefore() |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22481](https://issues.apache.org/jira/browse/HBASE-22481) | Javadoc Warnings: reference not found |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22551](https://issues.apache.org/jira/browse/HBASE-22551) | TestMasterOperationsForRegionReplicas is flakey |  Major | read replicas, test | Duo Zhang | Duo Zhang |
| [HBASE-22563](https://issues.apache.org/jira/browse/HBASE-22563) | Reduce retained jobs for Jenkins pipelines |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22530](https://issues.apache.org/jira/browse/HBASE-22530) | The metrics of store files count of region are returned to clients incorrectly |  Minor | metrics, regionserver | Eungsop Yoo | Eungsop Yoo |
| [HBASE-22562](https://issues.apache.org/jira/browse/HBASE-22562) | PressureAwareThroughputController#skipControl never invoked |  Trivial | Operability | Josh Elser | Josh Elser |
| [HBASE-22565](https://issues.apache.org/jira/browse/HBASE-22565) | Javadoc Warnings: @see cannot be used in inline documentation |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22581](https://issues.apache.org/jira/browse/HBASE-22581) | user with "CREATE" permission can grant, but not revoke permissions on created table |  Major | security | Istvan Toth | Istvan Toth |
| [HBASE-22605](https://issues.apache.org/jira/browse/HBASE-22605) | Ref guide includes dev guidance only applicable to EOM versions |  Trivial | documentation | Sean Busbey | Mingliang Liu |
| [HBASE-22617](https://issues.apache.org/jira/browse/HBASE-22617) | Recovered WAL directories not getting cleaned up |  Blocker | wal | Abhishek Singh Chouhan | Duo Zhang |
| [HBASE-22169](https://issues.apache.org/jira/browse/HBASE-22169) | Open region failed cause memory leak |  Critical | . | Bing Xiao | Bing Xiao |
| [HBASE-22477](https://issues.apache.org/jira/browse/HBASE-22477) | Throwing exception when meta region is not in OPEN state in client registry may crash a master |  Major | Client, master, meta | Duo Zhang | Duo Zhang |
| [HBASE-21751](https://issues.apache.org/jira/browse/HBASE-21751) | WAL creation fails during region open may cause region assign forever fail |  Major | . | Allan Yang | Bing Xiao |
| [HBASE-13798](https://issues.apache.org/jira/browse/HBASE-13798) | TestFromClientSide\* don't close the Table |  Trivial | test | Matteo Bertozzi | Andor Molnar |
| [HBASE-22637](https://issues.apache.org/jira/browse/HBASE-22637) | fix flaky TestMetaTableMetrics test |  Major | metrics, test | Mate Szalay-Beko | Mate Szalay-Beko |
| [HBASE-22652](https://issues.apache.org/jira/browse/HBASE-22652) | Flakey TestLockManager; test timed out after 780 seconds |  Major | proc-v2 | Michael Stack | Michael Stack |
| [HBASE-22582](https://issues.apache.org/jira/browse/HBASE-22582) | The Compaction writer may access the lastCell whose memory has been released when appending fileInfo in the final |  Major | Compaction | Zheng Hu | Zheng Hu |
| [HBASE-22656](https://issues.apache.org/jira/browse/HBASE-22656) | [Metrics]  Tabe metrics 'BatchPut' and 'BatchDelete' are never updated |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-22686](https://issues.apache.org/jira/browse/HBASE-22686) | ZkSplitLogWorkerCoordination doesn't allow a regionserver to pick up all of the split work it is capable of |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22681](https://issues.apache.org/jira/browse/HBASE-22681) | The 'assert highestUnsyncedTxid \< entry.getTxid();' in AbstractFWAL.append may fail when using AsyncFSWAL |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-22571](https://issues.apache.org/jira/browse/HBASE-22571) | Javadoc Warnings related to @return tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22586](https://issues.apache.org/jira/browse/HBASE-22586) | Javadoc Warnings related to @param tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22684](https://issues.apache.org/jira/browse/HBASE-22684) | The log rolling request maybe canceled immediately in LogRoller due to a race |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-22661](https://issues.apache.org/jira/browse/HBASE-22661) | list\_regions command in hbase shell is broken |  Major | shell | Toshihiro Suzuki | Duo Zhang |
| [HBASE-22700](https://issues.apache.org/jira/browse/HBASE-22700) | Incorrect timeout in recommended ZooKeeper configuration |  Minor | documentation | Peter Somogyi | maoling |
| [HBASE-20368](https://issues.apache.org/jira/browse/HBASE-20368) | Fix RIT stuck when a rsgroup has no online servers but AM's pendingAssginQueue is cleared |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22537](https://issues.apache.org/jira/browse/HBASE-22537) | Split happened Replica region can not be deleted after deleting table successfully and restarting RegionServer |  Minor | Region Assignment | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-22720](https://issues.apache.org/jira/browse/HBASE-22720) | Incorrect link for hbase.unittests |  Trivial | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-22603](https://issues.apache.org/jira/browse/HBASE-22603) | Javadoc Warnings related to @link tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22722](https://issues.apache.org/jira/browse/HBASE-22722) | Upgrade jackson databind dependencies to 2.9.9.1 |  Blocker | dependencies | Duo Zhang | Duo Zhang |
| [HBASE-22715](https://issues.apache.org/jira/browse/HBASE-22715) | All scan requests should be handled by scan handler threads in RWQueueRpcExecutor |  Minor | . | Jeongdae Kim | Jeongdae Kim |
| [HBASE-22733](https://issues.apache.org/jira/browse/HBASE-22733) | TestSplitTransactionOnCluster.testMasterRestartAtRegionSplitPendingCatalogJanitor is flakey |  Major | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22751](https://issues.apache.org/jira/browse/HBASE-22751) | table.jsp fails if ugly regions in table |  Major | UI | Michael Stack | Michael Stack |
| [HBASE-22758](https://issues.apache.org/jira/browse/HBASE-22758) | Remove the unneccesary info cf deletion in DeleteTableProcedure#deleteFromMeta |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22145](https://issues.apache.org/jira/browse/HBASE-22145) | windows hbase-env causes hbase cli/etc to ignore HBASE\_OPTS |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22773](https://issues.apache.org/jira/browse/HBASE-22773) | when set blockSize option in Performance Evaluation tool, error occurs:ERROR: Unrecognized option/command: --blockSize=131072 |  Minor | mapreduce | dingwei2019 | dingwei2019 |
| [HBASE-22778](https://issues.apache.org/jira/browse/HBASE-22778) | Upgrade jasckson databind to 2.9.9.2 |  Blocker | dependencies | Duo Zhang | niuyulin |
| [HBASE-22793](https://issues.apache.org/jira/browse/HBASE-22793) | RPC server connection is logging user as NULL principal |  Minor | rpc | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-22801](https://issues.apache.org/jira/browse/HBASE-22801) | Maven build issue on Github PRs |  Major | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22539](https://issues.apache.org/jira/browse/HBASE-22539) | WAL corruption due to early DBBs re-use when Durability.ASYNC\_WAL is used |  Blocker | rpc, wal | Wellington Chevreuil | Duo Zhang |
| [HBASE-22115](https://issues.apache.org/jira/browse/HBASE-22115) | HBase RPC aspires to grow an infinite tree of trace scopes; some other places are also unsafe |  Critical | rpc, tracing | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22417](https://issues.apache.org/jira/browse/HBASE-22417) | DeleteTableProcedure.deleteFromMeta method should remove table from Master's table descriptors cache |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22840](https://issues.apache.org/jira/browse/HBASE-22840) | Fix backport of HBASE-21325 |  Major | regionserver | Ankit Singhal | Ankit Singhal |
| [HBASE-22838](https://issues.apache.org/jira/browse/HBASE-22838) | assembly:single failure: user id or group id 'xxxxx' is too big |  Major | build | Viraj Jasani | Viraj Jasani |
| [HBASE-22632](https://issues.apache.org/jira/browse/HBASE-22632) | SplitTableRegionProcedure and MergeTableRegionsProcedure should skip store files for unknown column families |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | HBASE-Find-Flaky-Tests fails with pip error |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-22860](https://issues.apache.org/jira/browse/HBASE-22860) | Master's webui returns NPE/HTTP 500 under maintenance mode |  Major | master, UI | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-22870](https://issues.apache.org/jira/browse/HBASE-22870) | reflection fails to access a private nested class |  Major | master | ranpanfeng | ranpanfeng |
| [HBASE-22882](https://issues.apache.org/jira/browse/HBASE-22882) | TestFlushSnapshotFromClient#testConcurrentSnapshottingAttempts is flakey (was written flakey) |  Major | test | Michael Stack | Michael Stack |
| [HBASE-22863](https://issues.apache.org/jira/browse/HBASE-22863) | Avoid Jackson versions and dependencies with known CVEs |  Major | dependencies | Viraj Jasani | Viraj Jasani |
| [HBASE-22601](https://issues.apache.org/jira/browse/HBASE-22601) | Misconfigured addition of peers leads to cluster shutdown. |  Major | . | Rushabh Shah | Rushabh Shah |
| [HBASE-22806](https://issues.apache.org/jira/browse/HBASE-22806) | Deleted CF are not cleared if memstore contain entries |  Major | API | Chao | Pankaj Kumar |
| [HBASE-22904](https://issues.apache.org/jira/browse/HBASE-22904) | NPE occurs when RS send space quota usage report during HMaster init |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22867](https://issues.apache.org/jira/browse/HBASE-22867) | The ForkJoinPool in CleanerChore will spawn thousands of threads in our cluster with thousands table |  Critical | master | Zheng Hu | Zheng Hu |
| [HBASE-22735](https://issues.apache.org/jira/browse/HBASE-22735) | list\_regions may throw an error if a region is RIT |  Minor | shell | Andrew Kyle Purtell | Viraj Jasani |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22615](https://issues.apache.org/jira/browse/HBASE-22615) | Make TestChoreService more robust to timing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-22725](https://issues.apache.org/jira/browse/HBASE-22725) | Remove all remaining javadoc warnings |  Trivial | test | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22894](https://issues.apache.org/jira/browse/HBASE-22894) | Move testOpenRegionFailedMemoryLeak to dedicated class |  Major | test | Bing Xiao | Bing Xiao |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22316](https://issues.apache.org/jira/browse/HBASE-22316) | Record the stack trace for current thread in FutureUtils.get |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22507](https://issues.apache.org/jira/browse/HBASE-22507) | Backport the pre commit changes in HBASE-22500 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22535](https://issues.apache.org/jira/browse/HBASE-22535) | TestShellRSGroups fails when run on JDK11 |  Minor | java, shell | Sakthi | Sakthi |
| [HBASE-22536](https://issues.apache.org/jira/browse/HBASE-22536) | TestForeignExceptionSerialization fails when run on JDK11 |  Minor | java | Sakthi | Sakthi |
| [HBASE-22534](https://issues.apache.org/jira/browse/HBASE-22534) | TestCellUtil fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-22554](https://issues.apache.org/jira/browse/HBASE-22554) | Upgrade to surefire 2.22.2 |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22357](https://issues.apache.org/jira/browse/HBASE-22357) | Fix remaining Checkstyle issues in hbase-replication |  Trivial | Replication | Jan Hentschel | Jan Hentschel |
| [HBASE-22458](https://issues.apache.org/jira/browse/HBASE-22458) | TestClassFinder fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-7191](https://issues.apache.org/jira/browse/HBASE-7191) | HBCK - Add offline create/fix hbase.version and hbase.id |  Major | hbck | Enis Soztutar | xufeng |
| [HBASE-22719](https://issues.apache.org/jira/browse/HBASE-22719) | Add debug support for github PR pre commit job |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22527](https://issues.apache.org/jira/browse/HBASE-22527) | [hbck2] Add a master web ui to show the problematic regions |  Major | hbase-operator-tools, hbck2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22742](https://issues.apache.org/jira/browse/HBASE-22742) | [HBCK2] Add more log for hbck operations at master side |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22709](https://issues.apache.org/jira/browse/HBASE-22709) | Add a chore thread in master to do hbck checking and display results in 'HBCK Report' page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22723](https://issues.apache.org/jira/browse/HBASE-22723) | Have CatalogJanitor report holes and overlaps; i.e. problems it sees when doing its regular scan of hbase:meta |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22741](https://issues.apache.org/jira/browse/HBASE-22741) | Show catalogjanitor consistency complaints in new 'HBCK Report' page |  Major | hbck2, UI | Michael Stack | Michael Stack |
| [HBASE-22737](https://issues.apache.org/jira/browse/HBASE-22737) | Add a new admin method and shell cmd to trigger the hbck chore to run |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22805](https://issues.apache.org/jira/browse/HBASE-22805) | Fix broken unit test, TestCatalogJanitorCluster on branch-2.1 and branch-2.0 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22807](https://issues.apache.org/jira/browse/HBASE-22807) | HBCK Report showed wrong orphans regions on FileSystem |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22808](https://issues.apache.org/jira/browse/HBASE-22808) | HBCK Report showed the offline regions which belong to disabled table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22824](https://issues.apache.org/jira/browse/HBASE-22824) | Show filesystem path for the orphans regions on filesystem |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22803](https://issues.apache.org/jira/browse/HBASE-22803) | Modify config value range to enable turning off of the hbck chore |  Major | . | Sakthi | Sakthi |
| [HBASE-22777](https://issues.apache.org/jira/browse/HBASE-22777) | Add a multi-region merge (for fixing overlaps, etc.) |  Major | hbck2, proc-v2 | Michael Stack | Michael Stack |
| [HBASE-22845](https://issues.apache.org/jira/browse/HBASE-22845) | Revert MetaTableAccessor#makePutFromTableState access to public |  Blocker | . | Sakthi | Sakthi |
| [HBASE-22848](https://issues.apache.org/jira/browse/HBASE-22848) | Set version as 2.1.6 in branch-2.1 in prep for first RC of 2.1.6 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22771](https://issues.apache.org/jira/browse/HBASE-22771) | [HBCK2] fixMeta method and server-side support |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-22891](https://issues.apache.org/jira/browse/HBASE-22891) | Use HBaseQA in HBase-PreCommit-GitHub-PR job |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-22858](https://issues.apache.org/jira/browse/HBASE-22858) | Add HBCK Report to master's header.jsp |  Minor | master | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22799](https://issues.apache.org/jira/browse/HBASE-22799) | Generate CHANGES.md and RELEASENOTES.md for 2.1.6 |  Major | documentation | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters |  Minor | Client | Itsuki Toyota | Itsuki Toyota |
| [HBASE-21536](https://issues.apache.org/jira/browse/HBASE-21536) | Fix completebulkload usage instructions |  Trivial | documentation, mapreduce | Artem Ervits | Artem Ervits |
| [HBASE-22568](https://issues.apache.org/jira/browse/HBASE-22568) | [2.1] Upgrade to Jetty 9.3.latest and Jackson 2.9.latest |  Major | dependencies | Josh Elser | Josh Elser |
| [HBASE-22566](https://issues.apache.org/jira/browse/HBASE-22566) | Call out default compaction throttling for 2.x in Book |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-19230](https://issues.apache.org/jira/browse/HBASE-19230) | Write up fixVersion policy from dev discussion in refguide |  Major | documentation | Michael Stack | Murtaza Hassan |
| [HBASE-21606](https://issues.apache.org/jira/browse/HBASE-21606) | Document use of the meta table load metrics added in HBASE-19722 |  Critical | documentation, meta, metrics, Operability | Sean Busbey | Mate Szalay-Beko |
| [HBASE-22382](https://issues.apache.org/jira/browse/HBASE-22382) | Refactor tests in TestFromClientSide |  Major | test | Andor Molnar | Andor Molnar |
| [HBASE-21400](https://issues.apache.org/jira/browse/HBASE-21400) | correct spelling error of 'initilize' in comment |  Trivial | documentation | wuguihu | wuguihu |
| [HBASE-22911](https://issues.apache.org/jira/browse/HBASE-22911) | fewer concurrent github PR builds |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-22913](https://issues.apache.org/jira/browse/HBASE-22913) | Use Hadoop label for nightly builds |  Major | build | Duo Zhang | Gavin McDonald |
| [HBASE-22910](https://issues.apache.org/jira/browse/HBASE-22910) | Enable TestMultiVersionConcurrencyControl |  Major | test | Sakthi | Sakthi |
| [HBASE-22895](https://issues.apache.org/jira/browse/HBASE-22895) | Fix the flakey TestSpaceQuotas |  Major | Quotas, test | Sakthi | Sakthi |


