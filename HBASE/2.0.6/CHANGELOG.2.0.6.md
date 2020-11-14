
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

## Release 2.0.6 - 2019-08-19



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | Provide an alternative to CellUtil.setTimestamp |  Blocker | API, Coprocessors | Thomas D'Silva | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22341](https://issues.apache.org/jira/browse/HBASE-22341) | Add explicit guidelines for removing deprecations in book |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | Fix Markdown for "Voting on Release Candidates" in book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | Change rubocop configuration for method length |  Minor | community, shell | Jan Hentschel | Murtaza Hassan |
| [HBASE-20494](https://issues.apache.org/jira/browse/HBASE-20494) | Upgrade com.yammer.metrics dependency |  Major | dependencies | Vlad Rozov | Jan Hentschel |
| [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | Remove extra/useless + |  Trivial | . | puleya7 | puleya7 |
| [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | Formatting issues in administration section of book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22474](https://issues.apache.org/jira/browse/HBASE-22474) | Add --mvn-custom-repo parameter to yetus calls |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22496](https://issues.apache.org/jira/browse/HBASE-22496) | UnsafeAccess.unsafeCopy should not copy more than UNSAFE\_COPY\_THRESHOLD on each iteration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22593](https://issues.apache.org/jira/browse/HBASE-22593) | Add local Jenv file to gitignore |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22344](https://issues.apache.org/jira/browse/HBASE-22344) | Document deprecated public APIs |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22561](https://issues.apache.org/jira/browse/HBASE-22561) | modify HFilePrettyPrinter to accept non-hbase.rootdir directories |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-22595](https://issues.apache.org/jira/browse/HBASE-22595) | Use full qualified name in Checkstyle suppressions |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22604](https://issues.apache.org/jira/browse/HBASE-22604) | fix the link in the docs to "Understanding HBase and BigTable" by Jim R. Wilson |  Trivial | documentation | David Mollitor | Murtaza Hassan |
| [HBASE-22669](https://issues.apache.org/jira/browse/HBASE-22669) | Add unit tests for org.apache.hadoop.hbase.util.Strings |  Major | java | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-22638](https://issues.apache.org/jira/browse/HBASE-22638) | Zookeeper Utility enhancements |  Minor | Zookeeper | Viraj Jasani | Viraj Jasani |
| [HBASE-22689](https://issues.apache.org/jira/browse/HBASE-22689) | Line break for fix version in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22704](https://issues.apache.org/jira/browse/HBASE-22704) | Avoid NPE when access table.jsp and snapshot.jsp but master not finish initialization |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22690](https://issues.apache.org/jira/browse/HBASE-22690) | Deprecate / Remove OfflineMetaRepair in hbase-2+ |  Major | hbck2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22692](https://issues.apache.org/jira/browse/HBASE-22692) | Rubocop definition is not used in the /bin directory |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22721](https://issues.apache.org/jira/browse/HBASE-22721) | Refactor HBaseFsck: move the inner class out |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22702](https://issues.apache.org/jira/browse/HBASE-22702) | [Log] 'Group not found for table' is chatty |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22750](https://issues.apache.org/jira/browse/HBASE-22750) | Correct @throws in comment |  Trivial | Client, rpc | Wenqiang Li | Wenqiang Li |
| [HBASE-22763](https://issues.apache.org/jira/browse/HBASE-22763) | Fix remaining Checkstyle issue in hbase-procedure |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22764](https://issues.apache.org/jira/browse/HBASE-22764) | Fix remaining Checkstyle issues in hbase-rsgroup |  Trivial | rsgroup | Jan Hentschel | Jan Hentschel |
| [HBASE-22363](https://issues.apache.org/jira/browse/HBASE-22363) | Remove hardcoded number of read cache block buckets |  Trivial | BlockCache, BucketCache | Biju Nair | Biju Nair |
| [HBASE-22787](https://issues.apache.org/jira/browse/HBASE-22787) | Clean up of tests in hbase-zookeeper |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-22677](https://issues.apache.org/jira/browse/HBASE-22677) | Add unit tests for org.apache.hadoop.hbase.util.ByteRangeUtils and org.apache.hadoop.hbase.util.Classes |  Major | java, test | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-22786](https://issues.apache.org/jira/browse/HBASE-22786) | Fix Checkstyle issues in tests of hbase-client |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22785](https://issues.apache.org/jira/browse/HBASE-22785) | Reduce number of Checkstyle issues in client exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22812](https://issues.apache.org/jira/browse/HBASE-22812) | InterfaceAudience annotation in CatalogJanitor uses fully-qualified name |  Minor | . | Peter Somogyi | Murtaza Hassan |
| [HBASE-22841](https://issues.apache.org/jira/browse/HBASE-22841) | TimeRange's factory functions do not support ranges, only \`allTime\` and \`at\` |  Major | Client | Huon Wilson | Huon Wilson |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19893](https://issues.apache.org/jira/browse/HBASE-19893) | restore\_snapshot is broken in master branch when region splits |  Critical | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21619](https://issues.apache.org/jira/browse/HBASE-21619) | Fix warning message caused by incorrect ternary operator evaluation |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20662](https://issues.apache.org/jira/browse/HBASE-20662) | Increasing space quota on a violated table does not remove SpaceViolationPolicy.DISABLE enforcement |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-22098](https://issues.apache.org/jira/browse/HBASE-22098) | Backport HBASE-18667 "Disable error-prone for hbase-protocol-shaded" to branch-2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22100](https://issues.apache.org/jira/browse/HBASE-22100) | False positive for error prone warnings in pre commit job |  Minor | build | Duo Zhang | Duo Zhang |
| [HBASE-21781](https://issues.apache.org/jira/browse/HBASE-21781) | list\_deadservers elapsed time is incorrect |  Major | shell | xuqinya | xuqinya |
| [HBASE-21135](https://issues.apache.org/jira/browse/HBASE-21135) | Build fails on windows as it fails to parse windows path during license check |  Major | build | Nihal Jain | Nihal Jain |
| [HBASE-22123](https://issues.apache.org/jira/browse/HBASE-22123) | REST gateway reports Insufficient permissions exceptions as 404 Not Found |  Minor | REST | Tomas Sokorai | Tomas Sokorai |
| [HBASE-21688](https://issues.apache.org/jira/browse/HBASE-21688) | Address WAL filesystem issues |  Major | Filesystem Integration, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-22070](https://issues.apache.org/jira/browse/HBASE-22070) | Checking restoreDir in RestoreSnapshotHelper |  Minor | snapshots | Vincent Choi | Vincent Choi |
| [HBASE-22180](https://issues.apache.org/jira/browse/HBASE-22180) | Make TestBlockEvictionFromClient.testBlockRefCountAfterSplits more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22128](https://issues.apache.org/jira/browse/HBASE-22128) | Move namespace region then master crashed make deadlock |  Critical | amv2 | Bing Xiao | Bing Xiao |
| [HBASE-22185](https://issues.apache.org/jira/browse/HBASE-22185) | RAMQueueEntry#writeToCache should freeBlock if any exception encountered instead of the IOException catch block |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22214](https://issues.apache.org/jira/browse/HBASE-22214) | [2.x] Backport missing filter improvements |  Major | Filters | Josh Elser | Josh Elser |
| [HBASE-22144](https://issues.apache.org/jira/browse/HBASE-22144) | MultiRowRangeFilter does not work with reversed scans |  Critical | Filters, Scanners | Josh Elser | Josh Elser |
| [HBASE-22200](https://issues.apache.org/jira/browse/HBASE-22200) | WALSplitter.hasRecoveredEdits should use same FS instance from WAL region dir |  Major | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22340](https://issues.apache.org/jira/browse/HBASE-22340) | Corrupt KeyValue is silently ignored |  Critical | wal | Peter Somogyi | Peter Somogyi |
| [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | Change rubocop config for max line length of 100 |  Minor | community, shell | Umesh Agashe | Murtaza Hassan |
| [HBASE-22324](https://issues.apache.org/jira/browse/HBASE-22324) |  loss a mass of data when the sequenceId of cells greater than Integer.Max, because MemStoreMergerSegmentsIterator can not merge segments |  Blocker | in-memory-compaction | chenyang | ChenYang |
| [HBASE-22072](https://issues.apache.org/jira/browse/HBASE-22072) | High read/write intensive regions may cause long crash recovery |  Major | Performance, Recovery | Pavel | ramkrishna.s.vasudevan |
| [HBASE-22226](https://issues.apache.org/jira/browse/HBASE-22226) | Incorrect level for headings in asciidoc |  Trivial | documentation | Peter Somogyi | Murtaza Hassan |
| [HBASE-22289](https://issues.apache.org/jira/browse/HBASE-22289) | WAL-based log splitting resubmit threshold may result in a task being stuck forever |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22462](https://issues.apache.org/jira/browse/HBASE-22462) | Should run a 'mvn install' at the end of hadoop check in pre commit job |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-22003](https://issues.apache.org/jira/browse/HBASE-22003) | Fix flaky test TestVerifyReplication.testHBase14905 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22518](https://issues.apache.org/jira/browse/HBASE-22518) | yetus personality is treating branch-1.4 like earlier branches for hadoopcheck |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-22546](https://issues.apache.org/jira/browse/HBASE-22546) | TestRegionServerHostname#testRegionServerHostname fails reliably for me |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22563](https://issues.apache.org/jira/browse/HBASE-22563) | Reduce retained jobs for Jenkins pipelines |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22565](https://issues.apache.org/jira/browse/HBASE-22565) | Javadoc Warnings: @see cannot be used in inline documentation |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22605](https://issues.apache.org/jira/browse/HBASE-22605) | Ref guide includes dev guidance only applicable to EOM versions |  Trivial | documentation | Sean Busbey | Mingliang Liu |
| [HBASE-22617](https://issues.apache.org/jira/browse/HBASE-22617) | Recovered WAL directories not getting cleaned up |  Blocker | wal | Abhishek Singh Chouhan | Duo Zhang |
| [HBASE-22477](https://issues.apache.org/jira/browse/HBASE-22477) | Throwing exception when meta region is not in OPEN state in client registry may crash a master |  Major | Client, master, meta | Duo Zhang | Duo Zhang |
| [HBASE-22652](https://issues.apache.org/jira/browse/HBASE-22652) | Flakey TestLockManager; test timed out after 780 seconds |  Major | proc-v2 | Michael Stack | Michael Stack |
| [HBASE-22582](https://issues.apache.org/jira/browse/HBASE-22582) | The Compaction writer may access the lastCell whose memory has been released when appending fileInfo in the final |  Major | Compaction | Zheng Hu | Zheng Hu |
| [HBASE-22681](https://issues.apache.org/jira/browse/HBASE-22681) | The 'assert highestUnsyncedTxid \< entry.getTxid();' in AbstractFWAL.append may fail when using AsyncFSWAL |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-22571](https://issues.apache.org/jira/browse/HBASE-22571) | Javadoc Warnings related to @return tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22586](https://issues.apache.org/jira/browse/HBASE-22586) | Javadoc Warnings related to @param tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22684](https://issues.apache.org/jira/browse/HBASE-22684) | The log rolling request maybe canceled immediately in LogRoller due to a race |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-22661](https://issues.apache.org/jira/browse/HBASE-22661) | list\_regions command in hbase shell is broken |  Major | shell | Toshihiro Suzuki | Duo Zhang |
| [HBASE-22700](https://issues.apache.org/jira/browse/HBASE-22700) | Incorrect timeout in recommended ZooKeeper configuration |  Minor | documentation | Peter Somogyi | maoling |
| [HBASE-20368](https://issues.apache.org/jira/browse/HBASE-20368) | Fix RIT stuck when a rsgroup has no online servers but AM's pendingAssginQueue is cleared |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22720](https://issues.apache.org/jira/browse/HBASE-22720) | Incorrect link for hbase.unittests |  Trivial | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-22603](https://issues.apache.org/jira/browse/HBASE-22603) | Javadoc Warnings related to @link tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22722](https://issues.apache.org/jira/browse/HBASE-22722) | Upgrade jackson databind dependencies to 2.9.9.1 |  Blocker | dependencies | Duo Zhang | Duo Zhang |
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
| [HBASE-22840](https://issues.apache.org/jira/browse/HBASE-22840) | Fix backport of HBASE-21325 |  Major | regionserver | Ankit Singhal | Ankit Singhal |
| [HBASE-22838](https://issues.apache.org/jira/browse/HBASE-22838) | assembly:single failure: user id or group id 'xxxxx' is too big |  Major | build | Viraj Jasani | Viraj Jasani |
| [HBASE-22632](https://issues.apache.org/jira/browse/HBASE-22632) | SplitTableRegionProcedure and MergeTableRegionsProcedure should skip store files for unknown column families |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22882](https://issues.apache.org/jira/browse/HBASE-22882) | TestFlushSnapshotFromClient#testConcurrentSnapshottingAttempts is flakey (was written flakey) |  Major | test | Michael Stack | Michael Stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21963](https://issues.apache.org/jira/browse/HBASE-21963) | Add a script for building and verifying release candidate |  Minor | community, scripts | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-22615](https://issues.apache.org/jira/browse/HBASE-22615) | Make TestChoreService more robust to timing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-22725](https://issues.apache.org/jira/browse/HBASE-22725) | Remove all remaining javadoc warnings |  Trivial | test | Murtaza Hassan | Murtaza Hassan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | Create a jenkins file for yetus to processing GitHub PR |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22419](https://issues.apache.org/jira/browse/HBASE-22419) | Backport hbase-personality changes in HBASE-22399 and HBASE-20970 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22507](https://issues.apache.org/jira/browse/HBASE-22507) | Backport the pre commit changes in HBASE-22500 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22535](https://issues.apache.org/jira/browse/HBASE-22535) | TestShellRSGroups fails when run on JDK11 |  Minor | java, shell | Sakthi | Sakthi |
| [HBASE-22554](https://issues.apache.org/jira/browse/HBASE-22554) | Upgrade to surefire 2.22.2 |  Major | test | Peter Somogyi | Peter Somogyi |
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
| [HBASE-22771](https://issues.apache.org/jira/browse/HBASE-22771) | [HBCK2] fixMeta method and server-side support |  Major | hbck2 | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters |  Minor | Client | Itsuki Toyota | Itsuki Toyota |
| [HBASE-22131](https://issues.apache.org/jira/browse/HBASE-22131) | Delete the patches in hbase-protocol-shaded module |  Major | build, Protobufs | Duo Zhang | Kevin Su |
| [HBASE-22189](https://issues.apache.org/jira/browse/HBASE-22189) | Remove usage of StoreFile.getModificationTimeStamp |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22020](https://issues.apache.org/jira/browse/HBASE-22020) | upgrade to yetus 0.9.0 |  Major | build, community | Michael Stack | Sean Busbey |
| [HBASE-22231](https://issues.apache.org/jira/browse/HBASE-22231) | Remove unused and \* imports |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22174](https://issues.apache.org/jira/browse/HBASE-22174) | Remove error prone from our precommit javac check |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22406](https://issues.apache.org/jira/browse/HBASE-22406) | skip generating rdoc when building gems in our docker image for running yetus |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-19230](https://issues.apache.org/jira/browse/HBASE-19230) | Write up fixVersion policy from dev discussion in refguide |  Major | documentation | Michael Stack | Murtaza Hassan |
| [HBASE-21606](https://issues.apache.org/jira/browse/HBASE-21606) | Document use of the meta table load metrics added in HBASE-19722 |  Critical | documentation, meta, metrics, Operability | Sean Busbey | Mate Szalay-Beko |
| [HBASE-23004](https://issues.apache.org/jira/browse/HBASE-23004) | Update 2.0 Javadoc on website |  Major | website | Peter Somogyi | Peter Somogyi |


