
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

## Release 2.1.5 - 2019-06-05



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21815](https://issues.apache.org/jira/browse/HBASE-21815) | Make isTrackingMetrics and getMetrics of ScannerContext public |  Minor | . | Chen Feng | Chen Feng |
| [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | Provide an alternative to CellUtil.setTimestamp |  Blocker | API, Coprocessors | Thomas D'Silva | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22097](https://issues.apache.org/jira/browse/HBASE-22097) | Modify the description of split command in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22188](https://issues.apache.org/jira/browse/HBASE-22188) | Make TestSplitMerge more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21257](https://issues.apache.org/jira/browse/HBASE-21257) | misspelled words.[occured -\> occurred] |  Trivial | . | zhanggangxue | zhanggangxue |
| [HBASE-20586](https://issues.apache.org/jira/browse/HBASE-20586) | SyncTable tool: Add support for cross-realm remote clusters |  Major | mapreduce, Operability, Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22291](https://issues.apache.org/jira/browse/HBASE-22291) | Fix recovery of recovered.edits files under root dir |  Major | . | Zach York | Zach York |
| [HBASE-22225](https://issues.apache.org/jira/browse/HBASE-22225) | Profiler tab on Master/RS UI not working w/o comprehensive message |  Minor | UI | Yu Li | Andrew Kyle Purtell |
| [HBASE-22341](https://issues.apache.org/jira/browse/HBASE-22341) | Add explicit guidelines for removing deprecations in book |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22087](https://issues.apache.org/jira/browse/HBASE-22087) | Update LICENSE/shading for the dependencies from the latest Hadoop trunk |  Minor | hadoop3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22109](https://issues.apache.org/jira/browse/HBASE-22109) | Update hbase shaded content checker after guava update in hadoop branch-3.0 to 27.0-jre |  Minor | . | Gabor Bota | Gabor Bota |
| [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | Fix Markdown for "Voting on Release Candidates" in book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | Change rubocop configuration for method length |  Minor | community, shell | Jan Hentschel | Murtaza Hassan |
| [HBASE-20494](https://issues.apache.org/jira/browse/HBASE-20494) | Upgrade com.yammer.metrics dependency |  Major | dependencies | Vlad Rozov | Jan Hentschel |
| [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | Remove extra/useless + |  Trivial | . | puleya7 | puleya7 |
| [HBASE-21658](https://issues.apache.org/jira/browse/HBASE-21658) | Should get the meta replica number from zk instead of config at client side |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | Formatting issues in administration section of book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | Dump replication queue should show list of wal files ordered chronologically |  Major | Replication, tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-20305](https://issues.apache.org/jira/browse/HBASE-20305) | Add option to SyncTable that skip deletes on target cluster |  Minor | mapreduce | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22474](https://issues.apache.org/jira/browse/HBASE-22474) | Add --mvn-custom-repo parameter to yetus calls |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22467](https://issues.apache.org/jira/browse/HBASE-22467) | WebUI changes to enable Apache Knox UI proxying |  Major | UI | Josh Elser | Josh Elser |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22006](https://issues.apache.org/jira/browse/HBASE-22006) | Fix branch-2.1 findbugs warning; causes nightly show as failed. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21736](https://issues.apache.org/jira/browse/HBASE-21736) | Remove the server from online servers before scheduling SCP for it in hbck |  Major | hbck2, test | Duo Zhang | Duo Zhang |
| [HBASE-22045](https://issues.apache.org/jira/browse/HBASE-22045) | Mutable range histogram reports incorrect outliers |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-21619](https://issues.apache.org/jira/browse/HBASE-21619) | Fix warning message caused by incorrect ternary operator evaluation |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20662](https://issues.apache.org/jira/browse/HBASE-20662) | Increasing space quota on a violated table does not remove SpaceViolationPolicy.DISABLE enforcement |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-22098](https://issues.apache.org/jira/browse/HBASE-22098) | Backport HBASE-18667 "Disable error-prone for hbase-protocol-shaded" to branch-2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22100](https://issues.apache.org/jira/browse/HBASE-22100) | False positive for error prone warnings in pre commit job |  Minor | build | Duo Zhang | Duo Zhang |
| [HBASE-21781](https://issues.apache.org/jira/browse/HBASE-21781) | list\_deadservers elapsed time is incorrect |  Major | shell | xuqinya | xuqinya |
| [HBASE-21135](https://issues.apache.org/jira/browse/HBASE-21135) | Build fails on windows as it fails to parse windows path during license check |  Major | build | Nihal Jain | Nihal Jain |
| [HBASE-22123](https://issues.apache.org/jira/browse/HBASE-22123) | REST gateway reports Insufficient permissions exceptions as 404 Not Found |  Minor | REST | Tomas Sokorai | Tomas Sokorai |
| [HBASE-22073](https://issues.apache.org/jira/browse/HBASE-22073) | /rits.jsp throws an exception if no procedure |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-21688](https://issues.apache.org/jira/browse/HBASE-21688) | Address WAL filesystem issues |  Major | Filesystem Integration, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20912](https://issues.apache.org/jira/browse/HBASE-20912) | Add import order config in dev support for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22070](https://issues.apache.org/jira/browse/HBASE-22070) | Checking restoreDir in RestoreSnapshotHelper |  Minor | snapshots | Vincent Choi | Vincent Choi |
| [HBASE-22177](https://issues.apache.org/jira/browse/HBASE-22177) | Do not recreate IOException in RawAsyncHBaseAdmin.adminCall |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22179](https://issues.apache.org/jira/browse/HBASE-22179) | Fix RawAsyncHBaseAdmin.getCompactionState |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22180](https://issues.apache.org/jira/browse/HBASE-22180) | Make TestBlockEvictionFromClient.testBlockRefCountAfterSplits more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22128](https://issues.apache.org/jira/browse/HBASE-22128) | Move namespace region then master crashed make deadlock |  Critical | amv2 | Bing Xiao | Bing Xiao |
| [HBASE-22185](https://issues.apache.org/jira/browse/HBASE-22185) | RAMQueueEntry#writeToCache should freeBlock if any exception encountered instead of the IOException catch block |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22198](https://issues.apache.org/jira/browse/HBASE-22198) | Fix flakey TestAsyncTableGetMultiThreaded |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22214](https://issues.apache.org/jira/browse/HBASE-22214) | [2.x] Backport missing filter improvements |  Major | Filters | Josh Elser | Josh Elser |
| [HBASE-22144](https://issues.apache.org/jira/browse/HBASE-22144) | MultiRowRangeFilter does not work with reversed scans |  Critical | Filters, Scanners | Josh Elser | Josh Elser |
| [HBASE-22235](https://issues.apache.org/jira/browse/HBASE-22235) | OperationStatus.{SUCCESS\|FAILURE\|NOT\_RUN} are not visible to 3rd party coprocessors |  Major | Coprocessors | Lars Hofhansl | Andrew Kyle Purtell |
| [HBASE-22278](https://issues.apache.org/jira/browse/HBASE-22278) | RawAsyncHBaseAdmin should not use cached region location |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22282](https://issues.apache.org/jira/browse/HBASE-22282) | Should deal with error in the callback of RawAsyncHBaseAdmin.splitRegion methods |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22286](https://issues.apache.org/jira/browse/HBASE-22286) | License handling incorrectly lists CDDL/GPLv2+CE as safe to not aggregate |  Critical | build, community | Sean Busbey | Sean Busbey |
| [HBASE-22200](https://issues.apache.org/jira/browse/HBASE-22200) | WALSplitter.hasRecoveredEdits should use same FS instance from WAL region dir |  Major | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22230](https://issues.apache.org/jira/browse/HBASE-22230) | REST Server drops connection on long scans |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22292](https://issues.apache.org/jira/browse/HBASE-22292) | PreemptiveFastFailInterceptor clean repeatedFailuresMap issue |  Blocker | . | zou | zou |
| [HBASE-22298](https://issues.apache.org/jira/browse/HBASE-22298) | branch-2.2 nightly fails "[ForOverride] Method annotated @ForOverride must have protected or package-private visibility" |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22086](https://issues.apache.org/jira/browse/HBASE-22086) | space quota issue: deleting snapshot doesn't update the usage of table |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22236](https://issues.apache.org/jira/browse/HBASE-22236) | AsyncNonMetaRegionLocator should not cache HRegionLocation with null location |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22054](https://issues.apache.org/jira/browse/HBASE-22054) | Space Quota: Compaction is not working for super user in case of NO\_WRITES\_COMPACTIONS |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22340](https://issues.apache.org/jira/browse/HBASE-22340) | Corrupt KeyValue is silently ignored |  Critical | wal | Peter Somogyi | Peter Somogyi |
| [HBASE-22350](https://issues.apache.org/jira/browse/HBASE-22350) | Rewrite TestClientOperationTimeout so we do not timeout when creating table |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22354](https://issues.apache.org/jira/browse/HBASE-22354) | master never sets abortRequested, and thus abort timeout doesn't work for it |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22190](https://issues.apache.org/jira/browse/HBASE-22190) | SnapshotFileCache may fail to load the correct snapshot file list when there is an on-going snapshot operation |  Blocker | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-22047](https://issues.apache.org/jira/browse/HBASE-22047) | LeaseException in Scan should be retired |  Major | Client, Scanners | Allan Yang | Igor Rudenko |
| [HBASE-22314](https://issues.apache.org/jira/browse/HBASE-22314) | shaded byo-hadoop client should list needed hadoop modules as provided scope to avoid inclusion of unnecessary transitive depednencies |  Major | hadoop2, hadoop3, shading | Sean Busbey | Sean Busbey |
| [HBASE-22312](https://issues.apache.org/jira/browse/HBASE-22312) | Hadoop 3 profile for hbase-shaded-mapreduce should like mapreduce as a provided dependency |  Major | mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-21467](https://issues.apache.org/jira/browse/HBASE-21467) | Fix flaky test TestCoprocessorClassLoader.testCleanupOldJars |  Minor | . | OrDTesters | OrDTesters |
| [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | Change rubocop config for max line length of 100 |  Minor | community, shell | Umesh Agashe | Murtaza Hassan |
| [HBASE-22072](https://issues.apache.org/jira/browse/HBASE-22072) | High read/write intensive regions may cause long crash recovery |  Major | Performance, Recovery | Pavel | ramkrishna.s.vasudevan |
| [HBASE-22274](https://issues.apache.org/jira/browse/HBASE-22274) | Cell size limit check on append should consider cell's previous size. |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-22378](https://issues.apache.org/jira/browse/HBASE-22378) | HBase Canary fails with TableNotFoundException when table deleted during Canary run |  Minor | canary | Caroline | Caroline |
| [HBASE-20970](https://issues.apache.org/jira/browse/HBASE-20970) | Update hadoop check versions for hadoop3 in hbase-personality |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22442](https://issues.apache.org/jira/browse/HBASE-22442) | Nightly build is failing with hadoop 3.x |  Major | build, hadoop3 | Duo Zhang | Duo Zhang |
| [HBASE-22226](https://issues.apache.org/jira/browse/HBASE-22226) | Incorrect level for headings in asciidoc |  Trivial | documentation | Peter Somogyi | Murtaza Hassan |
| [HBASE-22289](https://issues.apache.org/jira/browse/HBASE-22289) | WAL-based log splitting resubmit threshold may result in a task being stuck forever |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22440](https://issues.apache.org/jira/browse/HBASE-22440) | HRegionServer#getWalGroupsReplicationStatus() throws NPE |  Major | regionserver, Replication | puleya7 | puleya7 |
| [HBASE-22462](https://issues.apache.org/jira/browse/HBASE-22462) | Should run a 'mvn install' at the end of hadoop check in pre commit job |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-21991](https://issues.apache.org/jira/browse/HBASE-21991) | Fix MetaMetrics issues - [Race condition, Faulty remove logic], few improvements |  Major | Coprocessors, metrics | Sakthi | Sakthi |
| [HBASE-22441](https://issues.apache.org/jira/browse/HBASE-22441) | BucketCache NullPointerException in cacheBlock |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-22003](https://issues.apache.org/jira/browse/HBASE-22003) | Fix flaky test TestVerifyReplication.testHBase14905 |  Major | . | Guanghao Zhang | Guanghao Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21963](https://issues.apache.org/jira/browse/HBASE-21963) | Add a script for building and verifying release candidate |  Minor | community, scripts | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21998](https://issues.apache.org/jira/browse/HBASE-21998) | Move branch-2.1 version from 2.1.4 to 2.1.5-SNAPSHOT |  Major | community | Michael Stack | Michael Stack |
| [HBASE-22094](https://issues.apache.org/jira/browse/HBASE-22094) | Throw TableNotFoundException if table not exists in AsyncAdmin.compact |  Major | Admin | Duo Zhang | Sakthi |
| [HBASE-22101](https://issues.apache.org/jira/browse/HBASE-22101) | AsyncAdmin.isTableAvailable should not throw TableNotFoundException |  Major | Admin, asyncclient, Client | Duo Zhang | Kevin Su |
| [HBASE-22135](https://issues.apache.org/jira/browse/HBASE-22135) | AsyncAdmin will not refresh master address |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | Create a jenkins file for yetus to processing GitHub PR |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22249](https://issues.apache.org/jira/browse/HBASE-22249) | Rest Server throws NoClassDefFoundError with Java 11 (run-time) |  Major | . | Sakthi | Sakthi |
| [HBASE-22325](https://issues.apache.org/jira/browse/HBASE-22325) | AsyncRpcRetryingCaller will not schedule retry if we hit a NotServingRegionException but there is no TableName provided |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22447](https://issues.apache.org/jira/browse/HBASE-22447) | Check refCount before free block in BucketCache |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-22445](https://issues.apache.org/jira/browse/HBASE-22445) | Add file info when throw exceptions in HFileReaderImpl |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-22419](https://issues.apache.org/jira/browse/HBASE-22419) | Backport hbase-personality changes in HBASE-22399 and HBASE-20970 to all active branches |  Major | build | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22042](https://issues.apache.org/jira/browse/HBASE-22042) | Missing @Override annotation for RawAsyncTableImpl.scan |  Major | asyncclient, Client | Duo Zhang | Rishabh Jain |
| [HBASE-22099](https://issues.apache.org/jira/browse/HBASE-22099) | Backport HBASE-21895 "Error prone upgrade" to branch-2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22131](https://issues.apache.org/jira/browse/HBASE-22131) | Delete the patches in hbase-protocol-shaded module |  Major | build, Protobufs | Duo Zhang | Kevin Su |
| [HBASE-22189](https://issues.apache.org/jira/browse/HBASE-22189) | Remove usage of StoreFile.getModificationTimeStamp |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22203](https://issues.apache.org/jira/browse/HBASE-22203) | Reformat DemoClient.java |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22192](https://issues.apache.org/jira/browse/HBASE-22192) | Delete misc 2.0.5 pom files from branch-2.1 |  Minor | community | Sean Busbey | Sean Busbey |
| [HBASE-22020](https://issues.apache.org/jira/browse/HBASE-22020) | upgrade to yetus 0.9.0 |  Major | build, community | Michael Stack | Sean Busbey |
| [HBASE-22304](https://issues.apache.org/jira/browse/HBASE-22304) | Fix remaining Checkstyle issues in hbase-endpoint |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22231](https://issues.apache.org/jira/browse/HBASE-22231) | Remove unused and \* imports |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22174](https://issues.apache.org/jira/browse/HBASE-22174) | Remove error prone from our precommit javac check |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22359](https://issues.apache.org/jira/browse/HBASE-22359) | Backport of HBASE-21371 misses activation-api license information |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-22375](https://issues.apache.org/jira/browse/HBASE-22375) | Promote AccessChecker to LimitedPrivate(Coprocessor) |  Minor | Coprocessors, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22406](https://issues.apache.org/jira/browse/HBASE-22406) | skip generating rdoc when building gems in our docker image for running yetus |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-22449](https://issues.apache.org/jira/browse/HBASE-22449) | https everywhere in Maven metadata |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


