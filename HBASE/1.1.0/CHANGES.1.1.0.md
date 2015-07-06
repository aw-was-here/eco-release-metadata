
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

## Release 1.1.0 - 2015-05-14

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | [PE] Add being able to write many columns |  Major | test | stack | stack |
| [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | Fix the inconsistent permission checks for bulkloading. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | Add new AsyncRpcClient |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | get\_counter value is never used. |  Major | . | Jean-Marc Spaggiari | Lars George |
| [HBASE-6778](https://issues.apache.org/jira/browse/HBASE-6778) | Deprecate Chore; its a thread per task when we should have one thread to do all tasks |  Major | . | stack | Jonathan Lawlor |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13412](https://issues.apache.org/jira/browse/HBASE-13412) | Region split decisions should have jitter |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13170](https://issues.apache.org/jira/browse/HBASE-13170) | Allow block cache to be external |  Major | io | Elliott Clark | Elliott Clark |
| [HBASE-13063](https://issues.apache.org/jira/browse/HBASE-13063) | Allow to turn off memstore replication for region replicas |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13057](https://issues.apache.org/jira/browse/HBASE-13057) | Provide client utility to easily enable and disable table replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | Add a REST API implementation of the ClusterManager interface |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-12709](https://issues.apache.org/jira/browse/HBASE-12709) | [mvn] Add unit test excludes command line flag to the build. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | Add support for Scan.setRowPrefixFilter to shell |  Major | shell | Niels Basjes | Niels Basjes |
| [HBASE-9531](https://issues.apache.org/jira/browse/HBASE-9531) | a command line (hbase shell) interface to retreive the replication metrics and show replication lag |  Major | Replication | Demai Ni | Ashish Singhi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13578](https://issues.apache.org/jira/browse/HBASE-13578) | Remove Arrays.asList().subList() from FSHLog.offer() |  Trivial | wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13456](https://issues.apache.org/jira/browse/HBASE-13456) | Improve HFilePrettyPrinter first hbase:meta region processing |  Minor | util | Samir Ahmic | Samir Ahmic |
| [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | Thrift gateway should propagate text from exception causes. |  Major | Thrift | Michael Muller | Michael Muller |
| [HBASE-13381](https://issues.apache.org/jira/browse/HBASE-13381) | Expand TestSizeFailures to include small scans |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13351](https://issues.apache.org/jira/browse/HBASE-13351) | Annotate internal MasterRpcServices methods with admin priority |  Major | master | Josh Elser | Josh Elser |
| [HBASE-13350](https://issues.apache.org/jira/browse/HBASE-13350) | Add a debug-warn if we fail HTD checks even if table.sanity.checks is false |  Trivial | master, Operability | Matteo Bertozzi | Matt Warhaftig |
| [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | Reduce the downtime on planned moves of regions |  Minor | Balancer | Sameet Agarwal | Sameet Agarwal |
| [HBASE-13256](https://issues.apache.org/jira/browse/HBASE-13256) | HBaseConfiguration#checkDefaultsVersion(Configuration) has spelling error |  Trivial | Client | Josh Elser | Josh Elser |
| [HBASE-13255](https://issues.apache.org/jira/browse/HBASE-13255) | Bad grammar in RegionServer status page |  Trivial | monitoring | Josh Elser | Josh Elser |
| [HBASE-13241](https://issues.apache.org/jira/browse/HBASE-13241) | Add tests for group level grants |  Critical | security, test | Sean Busbey | Ashish Singhi |
| [HBASE-13236](https://issues.apache.org/jira/browse/HBASE-13236) | Clean up m2e-related warnings/errors from poms |  Minor | build | Josh Elser | Josh Elser |
| [HBASE-13223](https://issues.apache.org/jira/browse/HBASE-13223) | Add testMoveMeta to IntegrationTestMTTR |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13222](https://issues.apache.org/jira/browse/HBASE-13222) | Provide means of non-destructive balancer inspection |  Minor | Balancer | Nick Dimiduk | Josh Elser |
| [HBASE-13216](https://issues.apache.org/jira/browse/HBASE-13216) | Add version info in RPC connection header |  Minor | Client, rpc | Liu Shaohui | Liu Shaohui |
| [HBASE-13183](https://issues.apache.org/jira/browse/HBASE-13183) | Make ZK tickTime configurable in standalone HBase |  Minor | master | Alex Araujo | Alex Araujo |
| [HBASE-13168](https://issues.apache.org/jira/browse/HBASE-13168) | Backport HBASE-12590 "A solution for data skew in HBase-Mapreduce Job" |  Major | mapreduce | Nick Dimiduk | Ted Yu |
| [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | [PERF] Reuse the IPCUtil#buildCellBlock buffer |  Major | Performance | stack | Liang Xie |
| [HBASE-13138](https://issues.apache.org/jira/browse/HBASE-13138) | Clean up TestMasterObserver (debug, trying to figure why fails) |  Major | test | stack | stack |
| [HBASE-13132](https://issues.apache.org/jira/browse/HBASE-13132) | Improve RemoveColumn action debug message |  Trivial | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13128](https://issues.apache.org/jira/browse/HBASE-13128) | Make HBCK's lock file retry creation and deletion |  Minor | hbck | Victoria | Victoria |
| [HBASE-13122](https://issues.apache.org/jira/browse/HBASE-13122) | Improve efficiency for return codes of some filters |  Major | Filters | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | [PE] Add being able to write many columns |  Major | test | stack | stack |
| [HBASE-13100](https://issues.apache.org/jira/browse/HBASE-13100) | Shell command to retrieve table splits |  Minor | shell | Sean Busbey | Ashish Singhi |
| [HBASE-13086](https://issues.apache.org/jira/browse/HBASE-13086) | Show ZK root node on Master WebUI |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13059](https://issues.apache.org/jira/browse/HBASE-13059) | Set executable bit for scripts in dev-support |  Trivial | scripts | Dima Spivak | Dima Spivak |
| [HBASE-12997](https://issues.apache.org/jira/browse/HBASE-12997) | FSHLog should print pipeline on low replication |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12987](https://issues.apache.org/jira/browse/HBASE-12987) | HBCK should print status while scanning over many regions |  Major | hbck, Usability | Nick Dimiduk | Josh Elser |
| [HBASE-12957](https://issues.apache.org/jira/browse/HBASE-12957) | region\_mover#isSuccessfulScan may be extremely slow on region with lots of expired data |  Minor | scripts | hongyu bi | hongyu bi |
| [HBASE-12893](https://issues.apache.org/jira/browse/HBASE-12893) | IntegrationTestBigLinkedListWithVisibility should use buffered writes |  Minor | integration tests | Nick Dimiduk | Jingcheng Du |
| [HBASE-12891](https://issues.apache.org/jira/browse/HBASE-12891) | Parallel execution for Hbck checkRegionConsistency |  Major | hbck | churro morales | Dave Latham |
| [HBASE-12825](https://issues.apache.org/jira/browse/HBASE-12825) | CallRunner exception messages should include destination host:port |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12768](https://issues.apache.org/jira/browse/HBASE-12768) | Support enable cache\_data\_on\_write in Shell while creating table |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12762](https://issues.apache.org/jira/browse/HBASE-12762) | Region with no hfiles will have the highest locality cost in LocalityCostFunction |  Minor | Balancer | cuijianwei | cuijianwei |
| [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | Visibility Labels:  support visibility labels for user groups. |  Major | security | Jerry He | Jerry He |
| [HBASE-12736](https://issues.apache.org/jira/browse/HBASE-12736) | Let MetaScanner recycle a given Connection |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12719](https://issues.apache.org/jira/browse/HBASE-12719) | Add test WAL provider to quantify FSHLog overhead in the absence of HDFS. |  Minor | test, wal | Sean Busbey | Sean Busbey |
| [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | Add new AsyncRpcClient |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12641](https://issues.apache.org/jira/browse/HBASE-12641) | Grant all permissions of hbase zookeeper node to hbase superuser in a secure cluster |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12627](https://issues.apache.org/jira/browse/HBASE-12627) | Add back snapshot batching facility from HBASE-11360 dropped by HBASE-11742 |  Major | master, scaling | stack | churro morales |
| [HBASE-12620](https://issues.apache.org/jira/browse/HBASE-12620) | Add HBASE-11639 related items to Ref Guide |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12608](https://issues.apache.org/jira/browse/HBASE-12608) | region\_mover.rb does not log moving region count correctly when loading regions |  Minor | shell | cuijianwei | cuijianwei |
| [HBASE-12429](https://issues.apache.org/jira/browse/HBASE-12429) | Add port to ClusterManager's actions. |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-12405](https://issues.apache.org/jira/browse/HBASE-12405) | WAL accounting by Store |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | Filter to support scanning multiple row key ranges |  Major | Filters | Jiajia Li | Jiajia Li |
| [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | Port 'Make flush decisions per column family' to trunk |  Major | wal | Ted Yu | Duo Zhang |
| [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | Limit compaction speed |  Major | Compaction | binlijin | Duo Zhang |
| [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | Run with \> 1 WAL in HRegionServer |  Critical | Performance, wal | binlijin | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13596](https://issues.apache.org/jira/browse/HBASE-13596) | src assembly does not build |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13585](https://issues.apache.org/jira/browse/HBASE-13585) | HRegionFileSystem#splitStoreFile() finishes without closing the file handle in some situation |  Major | regionserver | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13577](https://issues.apache.org/jira/browse/HBASE-13577) | Documentation is pointing to wrong port for Master Web UI |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13546](https://issues.apache.org/jira/browse/HBASE-13546) | NPE on region server status page if all masters are down |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-13528](https://issues.apache.org/jira/browse/HBASE-13528) | A bug on selecting compaction pool |  Minor | Compaction | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13526](https://issues.apache.org/jira/browse/HBASE-13526) | TestRegionServerReportForDuty can be flaky: hang or timeout |  Minor | test | Jerry He | Jerry He |
| [HBASE-13499](https://issues.apache.org/jira/browse/HBASE-13499) | AsyncRpcClient test cases failure in powerpc |  Major | IPC/RPC | sangamesh | Duo Zhang |
| [HBASE-13491](https://issues.apache.org/jira/browse/HBASE-13491) | Issue in FuzzyRowFilter#getNextForFuzzyRule |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-13490](https://issues.apache.org/jira/browse/HBASE-13490) | foreground daemon start re-executes ulimit output |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13475](https://issues.apache.org/jira/browse/HBASE-13475) | Small spelling mistake in region\_mover#isSuccessfulScan causes NoMethodError |  Trivial | scripts | Victor Xu | Victor Xu |
| [HBASE-13473](https://issues.apache.org/jira/browse/HBASE-13473) | deleted cells come back alive after the stripe compaction |  Blocker | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-13457](https://issues.apache.org/jira/browse/HBASE-13457) | SnapshotExistsException doesn't honor the DoNotRetry |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13437](https://issues.apache.org/jira/browse/HBASE-13437) | ThriftServer leaks ZooKeeper connections |  Major | Thrift | Winger Pun | Winger Pun |
| [HBASE-13430](https://issues.apache.org/jira/browse/HBASE-13430) | HFiles that are in use by a table cloned from a snapshot may be deleted when that snapshot is deleted |  Critical | hbase | Tobi Vollebregt | Tobi Vollebregt |
| [HBASE-13423](https://issues.apache.org/jira/browse/HBASE-13423) | Remove duplicate entry for hbase.regionserver.regionSplitLimit in hbase-default.xml |  Minor | hbase | Apekshit Sharma | Apekshit Sharma |
| [HBASE-13417](https://issues.apache.org/jira/browse/HBASE-13417) | batchCoprocessorService() does not handle NULL keys |  Minor | Coprocessors | Lars George | Abhishek Singh Chouhan |
| [HBASE-13414](https://issues.apache.org/jira/browse/HBASE-13414) | TestHCM no longer needs to test for JRE 6. |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13406](https://issues.apache.org/jira/browse/HBASE-13406) | TestAccessController is flaky when create is slow |  Minor | security, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13402](https://issues.apache.org/jira/browse/HBASE-13402) | [Backport 1.1] HBASE-12552: listSnapshots should list only owned snapshots for non-super user |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-13397](https://issues.apache.org/jira/browse/HBASE-13397) | Purge duplicate rpc request thread local |  Major | rpc | stack | stack |
| [HBASE-13394](https://issues.apache.org/jira/browse/HBASE-13394) | Failed to recreate a table when quota is enabled |  Major | security | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-13385](https://issues.apache.org/jira/browse/HBASE-13385) | TestGenerateDelegationToken is broken with hadoop 2.8.0 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13382](https://issues.apache.org/jira/browse/HBASE-13382) | IntegrationTestBigLinkedList should use SecureRandom |  Major | integration tests | Todd Lipcon | Dima Spivak |
| [HBASE-13371](https://issues.apache.org/jira/browse/HBASE-13371) | Fix typo in TestAsyncIPC |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | Exceptions from DFS client can cause CatalogJanitor to delete referenced files |  Blocker | master | Elliott Clark | Elliott Clark |
| [HBASE-13321](https://issues.apache.org/jira/browse/HBASE-13321) | Fix flaky TestHBaseFsck |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13317](https://issues.apache.org/jira/browse/HBASE-13317) | Region server reportForDuty stuck looping if there is a master change |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-13309](https://issues.apache.org/jira/browse/HBASE-13309) | Some tests do not reset EnvironmentEdgeManager |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13308](https://issues.apache.org/jira/browse/HBASE-13308) | Fix flaky TestEndToEndSplitTransaction |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13305](https://issues.apache.org/jira/browse/HBASE-13305) | Get(Get get) is not copying the row key |  Major | API | Lars George | Ashish Singhi |
| [HBASE-13301](https://issues.apache.org/jira/browse/HBASE-13301) | Possible memory leak in BucketCache |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13299](https://issues.apache.org/jira/browse/HBASE-13299) | Add setReturnResults() to Increment, like Append has |  Critical | API | Lars George | Ashish Singhi |
| [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not |  Critical | API | Lars George | stack |
| [HBASE-13295](https://issues.apache.org/jira/browse/HBASE-13295) | TestInfoServers hang |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | typo in splitSuccessCount  metric |  Major | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13285](https://issues.apache.org/jira/browse/HBASE-13285) | Fix flaky getRegions() in TestAccessController.setUp() |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13274](https://issues.apache.org/jira/browse/HBASE-13274) | Fix misplaced deprecation in Delete#addXYZ |  Major | API | stack | Mikhail Antonov |
| [HBASE-13262](https://issues.apache.org/jira/browse/HBASE-13262) | ResultScanner doesn't return all rows in Scan |  Blocker | Client | Josh Elser | Josh Elser |
| [HBASE-13253](https://issues.apache.org/jira/browse/HBASE-13253) | LoadIncrementalHFiles unify hfiles discovery |  Major | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13246](https://issues.apache.org/jira/browse/HBASE-13246) | Correct the assertion for namespace permissions in tearDown method of TestAccessController |  Minor | security, test | Ashish Singhi | Ashish Singhi |
| [HBASE-13242](https://issues.apache.org/jira/browse/HBASE-13242) | TestPerColumnFamilyFlush.testFlushingWhenLogRolling hung |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13239](https://issues.apache.org/jira/browse/HBASE-13239) | HBase grant at specific column level does not work for Groups |  Major | hbase | Jaymin Patel | Ted Yu |
| [HBASE-13229](https://issues.apache.org/jira/browse/HBASE-13229) | Specify bash for local-regionservers.sh and local-master-backup.sh |  Minor | scripts | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-13227](https://issues.apache.org/jira/browse/HBASE-13227) | LoadIncrementalHFile should skip non-files inside a possible family-dir |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13224](https://issues.apache.org/jira/browse/HBASE-13224) | Minor formatting issue when logging a namespace scope in AuthResult#toContextString |  Trivial | Coprocessors, security | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13174](https://issues.apache.org/jira/browse/HBASE-13174) | Apply HBASE-11804 to Windows scripts |  Major | scripts | Lars George | Lars George |
| [HBASE-13172](https://issues.apache.org/jira/browse/HBASE-13172) | TestDistributedLogSplitting.testThreeRSAbort fails several times on branch-1 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13165](https://issues.apache.org/jira/browse/HBASE-13165) | Fix docs and scripts for default max heaps size after HBASE-11804 |  Minor | documentation, scripts | Lars George | Lars George |
| [HBASE-13155](https://issues.apache.org/jira/browse/HBASE-13155) | Fix TestPrefixTree |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13146](https://issues.apache.org/jira/browse/HBASE-13146) | Race Condition in ScheduledChore and ChoreService |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-13145](https://issues.apache.org/jira/browse/HBASE-13145) | TestNamespaceAuditor.testRegionMerge is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13141](https://issues.apache.org/jira/browse/HBASE-13141) | IntegrationTestAcidGuarantees returns incorrect values for getColumnFamilies |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13139](https://issues.apache.org/jira/browse/HBASE-13139) | Clean up missing JAVA\_HOME message in bin/hbase-config.sh |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13131](https://issues.apache.org/jira/browse/HBASE-13131) | ReplicationAdmin leaks connections if there's an error in the constructor |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-13114](https://issues.apache.org/jira/browse/HBASE-13114) | [UNITTEST] TestEnableTableHandler.testDeleteForSureClearsAllTableRowsFromMeta |  Major | test | stack | Esteban Gutierrez |
| [HBASE-13112](https://issues.apache.org/jira/browse/HBASE-13112) | quota.rb, security.rb and visibility\_labels.rb leak connection |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13111](https://issues.apache.org/jira/browse/HBASE-13111) | truncate\_preserve command is failing with undefined method error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13097](https://issues.apache.org/jira/browse/HBASE-13097) | Use same EventLoopGroup for different AsyncRpcClients if possible |  Major | IPC/RPC, test | Duo Zhang | Duo Zhang |
| [HBASE-13085](https://issues.apache.org/jira/browse/HBASE-13085) | Security issue in the implementation of Rest gataway 'doAs' proxy user support |  Critical | REST, security | Jerry He | Jerry He |
| [HBASE-13084](https://issues.apache.org/jira/browse/HBASE-13084) | Add labels to VisibilityLabelsCache asynchronously causes TestShell flakey |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13083](https://issues.apache.org/jira/browse/HBASE-13083) | Master can be dead-locked while assigning META. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13077](https://issues.apache.org/jira/browse/HBASE-13077) | BoundedCompletionService doesn't pass trace info to server |  Major | hbase | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-13075](https://issues.apache.org/jira/browse/HBASE-13075) | TableInputFormatBase spuriously warning about multiple initializeTable calls |  Minor | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13072](https://issues.apache.org/jira/browse/HBASE-13072) | BucketCache.evictBlock returns true if block does not exist |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13070](https://issues.apache.org/jira/browse/HBASE-13070) | Fix TestCacheOnWrite |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13066](https://issues.apache.org/jira/browse/HBASE-13066) | Fix typo in AsyncRpcChannel |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-13065](https://issues.apache.org/jira/browse/HBASE-13065) | Increasing -Xmx when running TestDistributedLogSplitting |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13061](https://issues.apache.org/jira/browse/HBASE-13061) | RegionStates can remove wrong region from server holdings |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13058](https://issues.apache.org/jira/browse/HBASE-13058) | Hbase shell command 'scan' for non existent table shows unnecessary info for one unrelated existent table. |  Trivial | Client | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13049](https://issues.apache.org/jira/browse/HBASE-13049) | wal\_roll ruby command doesn't work. |  Major | shell | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | Add "HBase Configuration" link missing on the table details pages |  Trivial | Operability | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13040](https://issues.apache.org/jira/browse/HBASE-13040) | Possible failure of TestHMasterRPCException |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/\* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | [1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn |  Major | Operability | stack | stack |
| [HBASE-13027](https://issues.apache.org/jira/browse/HBASE-13027) | mapreduce.TableInputFormatBase should create its own Connection if needed |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13010](https://issues.apache.org/jira/browse/HBASE-13010) | HFileOutputFormat2 partitioner's path is hard-coded as '/tmp' |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-13009](https://issues.apache.org/jira/browse/HBASE-13009) | HBase REST UI inaccessible |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-13004](https://issues.apache.org/jira/browse/HBASE-13004) | Make possible to explain why HBaseTestingUtility.waitFor fails |  Minor | test | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13003](https://issues.apache.org/jira/browse/HBASE-13003) | Get tests in TestHFileBlockIndex back |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-12999](https://issues.apache.org/jira/browse/HBASE-12999) | Make foreground\_start return the correct exit code |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-12989](https://issues.apache.org/jira/browse/HBASE-12989) | region\_mover.rb unloadRegions method uses ArrayList concurrently resulting in errors |  Minor | scripts | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12971](https://issues.apache.org/jira/browse/HBASE-12971) | Replication stuck due to large default value for replication.source.maxretriesmultiplier |  Major | hbase | Adrian Muraru | Lars Hofhansl |
| [HBASE-12969](https://issues.apache.org/jira/browse/HBASE-12969) | Parameter Validation is not there for shell script, local-master-backup.sh and local-regionservers.sh |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-12966](https://issues.apache.org/jira/browse/HBASE-12966) | NPE in HMaster while recovering tables in Enabling state |  Major | master | ramkrishna.s.vasudevan | Andrey Stepachev |
| [HBASE-12962](https://issues.apache.org/jira/browse/HBASE-12962) | TestHFileBlockIndex.testBlockIndex() commented out during HBASE-10531 |  Major | test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | Negative values in read and write region server metrics |  Minor | regionserver | Victoria | Victoria |
| [HBASE-12953](https://issues.apache.org/jira/browse/HBASE-12953) | RegionServer is not functionally working with AysncRpcClient in secure mode |  Critical | security | Ashish Singhi | Duo Zhang |
| [HBASE-12951](https://issues.apache.org/jira/browse/HBASE-12951) | TestHCM.testConnectionClose is flakey when using AsyncRpcClient as client implementation |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-12948](https://issues.apache.org/jira/browse/HBASE-12948) | Calling Increment#addColumn on the same column multiple times produces wrong result |  Critical | Client, regionserver | hongyu bi | hongyu bi |
| [HBASE-12917](https://issues.apache.org/jira/browse/HBASE-12917) | HFilePerformanceEvaluation Scan tests fail with StackOverflowError due to recursive call in createCell function |  Major | hbase | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12916](https://issues.apache.org/jira/browse/HBASE-12916) | No access control for replicating WAL entries |  Major | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12898](https://issues.apache.org/jira/browse/HBASE-12898) | Add in used undeclared dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-12881](https://issues.apache.org/jira/browse/HBASE-12881) | TestFastFail is not compatible with surefire.rerunFailingTestsCount |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12878](https://issues.apache.org/jira/browse/HBASE-12878) | Incorrect HFile path in TestHFilePerformance print output (fix for easier debugging) |  Trivial | test | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12849](https://issues.apache.org/jira/browse/HBASE-12849) | LoadIncrementalHFiles should use unmanaged connection in branch-1 |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-12837](https://issues.apache.org/jira/browse/HBASE-12837) | ReplicationAdmin leaks zk connections |  Major | Zookeeper | stack | stack |
| [HBASE-12833](https://issues.apache.org/jira/browse/HBASE-12833) | [shell] table.rb leaks connections |  Major | shell | Nick Dimiduk | Solomon Duskis |
| [HBASE-12817](https://issues.apache.org/jira/browse/HBASE-12817) | Data missing while scanning using PREFIX\_TREE data block encoding |  Major | Scanners | Duo Zhang | Duo Zhang |
| [HBASE-12811](https://issues.apache.org/jira/browse/HBASE-12811) | [AccessController] NPE while scanning a table with user not having READ permission on the namespace |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12791](https://issues.apache.org/jira/browse/HBASE-12791) | HBase does not attempt to clean up an aborted split when the regionserver shutting down |  Critical | regionserver | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12782](https://issues.apache.org/jira/browse/HBASE-12782) | ITBLL fails for me if generator does anything but 5M per maptask |  Critical | integration tests | stack | stack |
| [HBASE-12781](https://issues.apache.org/jira/browse/HBASE-12781) | thrift2 listen port will bind always to the passed command line address |  Major | Thrift | Pankaj Kumar | Pankaj Kumar |
| [HBASE-12772](https://issues.apache.org/jira/browse/HBASE-12772) | TestPerColumnFamilyFlush failing |  Major | test | stack | stack |
| [HBASE-12771](https://issues.apache.org/jira/browse/HBASE-12771) | TestFailFast#testFastFail failing |  Major | test | stack | Manukranth Kolloju |
| [HBASE-12767](https://issues.apache.org/jira/browse/HBASE-12767) | Fix a StoreFileScanner NPE in reverse scan flow |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-12750](https://issues.apache.org/jira/browse/HBASE-12750) | getRequestsCount() in ClusterStatus returns total number of request |  Major | Client | Weichen Ye | Weichen Ye |
| [HBASE-12749](https://issues.apache.org/jira/browse/HBASE-12749) | Tighten HFileLink api to enable non-snapshot uses |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12740](https://issues.apache.org/jira/browse/HBASE-12740) | Improve performance of TestHBaseFsck |  Major | util | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | buffered writes substantially less useful after removal of HTablePool |  Blocker | hbase | Aaron Beppu | Nick Dimiduk |
| [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | Convert TestAcidGuarantees from a unit test to an integration test |  Major | hbase, integration tests, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12716](https://issues.apache.org/jira/browse/HBASE-12716) | A bug in RegionSplitter.UniformSplit algorithm |  Major | regionserver | Weichen Ye | Weichen Ye |
| [HBASE-12715](https://issues.apache.org/jira/browse/HBASE-12715) | getLastSequenceId always returns -1 |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | Visibility Labels: issue with storing super users in labels table |  Major | security | Jerry He | Jerry He |
| [HBASE-12585](https://issues.apache.org/jira/browse/HBASE-12585) | Fix refguide so it does hbase 1.0 style API everywhere with callout on how we used to do it in pre-1.0 |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-12574](https://issues.apache.org/jira/browse/HBASE-12574) | Update replication metrics to not do so many map look ups. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12480](https://issues.apache.org/jira/browse/HBASE-12480) | Regions in FAILED\_OPEN/FAILED\_CLOSE should be processed on master failover |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12393](https://issues.apache.org/jira/browse/HBASE-12393) | The regionserver web will throw exception if we disable block cache |  Minor | regionserver, UI | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12339](https://issues.apache.org/jira/browse/HBASE-12339) | WAL performance evaluation tool doesn't roll logs |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12070](https://issues.apache.org/jira/browse/HBASE-12070) | Add an option to hbck to fix ZK inconsistencies |  Major | hbck | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | Abort the RegionServer, when it's handler threads die |  Major | regionserver | Sudarshan Kadambi | Alicia Ying Shu |
| [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class. |  Major | Performance, test | Jean-Marc Spaggiari | Vikas Vishwakarma |
| [HBASE-8725](https://issues.apache.org/jira/browse/HBASE-8725) | Add total time RPC call metrics |  Major | metrics | Elliott Clark | Nate Edel |
| [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | [webui] HMaster webui should display the number of regions a table has. |  Minor | UI | Jonathan Hsieh | Andrey Stepachev |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13413](https://issues.apache.org/jira/browse/HBASE-13413) | Create an integration test for Replication |  Minor | integration tests | Rajesh Nishtala | Rajesh Nishtala |
| [HBASE-13182](https://issues.apache.org/jira/browse/HBASE-13182) | Test NamespaceAuditor/AccessController create/delete table is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13179](https://issues.apache.org/jira/browse/HBASE-13179) | TestMasterObserver deleteTable is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12885](https://issues.apache.org/jira/browse/HBASE-12885) | Unit test for RAW / VERSIONS scanner specifications |  Minor | shell | Amit Kabra | Amit Kabra |
| [HBASE-7781](https://issues.apache.org/jira/browse/HBASE-7781) | Update security unit tests to use a KDC if available |  Blocker | security, test | Gary Helmling | Duo Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13551](https://issues.apache.org/jira/browse/HBASE-13551) | Procedure V2 - Procedure classes should not be InterfaceAudience.Public |  Blocker | master | Enis Soztutar | Enis Soztutar |
| [HBASE-13529](https://issues.apache.org/jira/browse/HBASE-13529) | Procedure v2 - WAL Improvements |  Blocker | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13498](https://issues.apache.org/jira/browse/HBASE-13498) | Add more docs and a basic check for storage policy handling |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-13496](https://issues.apache.org/jira/browse/HBASE-13496) | Make Bytes$LexicographicalComparerHolder$UnsafeComparer::compareTo inlineable |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13469](https://issues.apache.org/jira/browse/HBASE-13469) | [branch-1.1] Procedure V2 - Make procedure v2 configurable in branch-1.1 |  Major | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-13455](https://issues.apache.org/jira/browse/HBASE-13455) | Procedure V2 - master truncate table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13447](https://issues.apache.org/jira/browse/HBASE-13447) | Bypass logic in TimeRange.compare |  Minor | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13398](https://issues.apache.org/jira/browse/HBASE-13398) | Document HBase Quota |  Major | documentation | Ashish Singhi | Gururaj Shetty |
| [HBASE-13386](https://issues.apache.org/jira/browse/HBASE-13386) | Backport HBASE-12601 to all active branches other than master |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13335](https://issues.apache.org/jira/browse/HBASE-13335) | Update ClientSmallScanner and ClientSmallReversedScanner |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | Making methods under ScannerV2#next inlineable, faster |  Major | Scanners | stack | stack |
| [HBASE-13303](https://issues.apache.org/jira/browse/HBASE-13303) | Fix size calculation of results on the region server |  Major | Client | Lars Hofhansl | Andrew Purtell |
| [HBASE-13290](https://issues.apache.org/jira/browse/HBASE-13290) | Procedure v2 - client enable/disable table sync |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13244](https://issues.apache.org/jira/browse/HBASE-13244) | Test delegation token generation with kerberos enabled |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13211](https://issues.apache.org/jira/browse/HBASE-13211) | Procedure V2 - master Enable/Disable table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13210](https://issues.apache.org/jira/browse/HBASE-13210) | Procedure V2 - master Modify table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13209](https://issues.apache.org/jira/browse/HBASE-13209) | Procedure V2 - master Add/Modify/Delete Column Family |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13204](https://issues.apache.org/jira/browse/HBASE-13204) | Procedure v2 - client create/delete table sync |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13203](https://issues.apache.org/jira/browse/HBASE-13203) | Procedure v2 - master create/delete table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13202](https://issues.apache.org/jira/browse/HBASE-13202) | Procedure v2 - core framework |  Major | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13164](https://issues.apache.org/jira/browse/HBASE-13164) | Update TestUsersOperationsWithSecureHadoop to use MiniKdc |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13130](https://issues.apache.org/jira/browse/HBASE-13130) | Add timeouts on TestMasterObserver, a frequent zombie show |  Major | test | stack | stack |
| [HBASE-12980](https://issues.apache.org/jira/browse/HBASE-12980) | Delete of a table may not clean all rows from hbase:meta |  Major | Operability | stack | stack |
| [HBASE-12793](https://issues.apache.org/jira/browse/HBASE-12793) | [hbck] closeRegionSilentlyAndWait() should log cause of IOException and retry until  hbase.hbck.close.timeout expires |  Minor | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12763](https://issues.apache.org/jira/browse/HBASE-12763) | Make it so there must be WALs for a server to be marked dead |  Major | wal | stack | stack |
| [HBASE-12735](https://issues.apache.org/jira/browse/HBASE-12735) | Refactor TAG so it can live as unit test and as an integration test |  Major | test | stack | Jonathan Hsieh |
| [HBASE-12730](https://issues.apache.org/jira/browse/HBASE-12730) | Backport HBASE-5162 (Basic client pushback mechanism) to branch-1 |  Major | Client, regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-12708](https://issues.apache.org/jira/browse/HBASE-12708) | Document newly introduced params for using Thrift-over-HTTPS. |  Minor | documentation, Thrift | Srikanth Srungarapu | Srikanth Srungarapu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13665](https://issues.apache.org/jira/browse/HBASE-13665) | Fix docs and site building on branch-1 |  Major | documentation, site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13584](https://issues.apache.org/jira/browse/HBASE-13584) | Disable distributed log replay by default for 1.1 |  Critical | master, MTTR | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13205](https://issues.apache.org/jira/browse/HBASE-13205) | [branch-1] Backport HBASE-11598 Add simple rpc throttling |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | Add ITBLL that exercises per CF flush |  Critical | integration tests | stack | Duo Zhang |
| [HBASE-12180](https://issues.apache.org/jira/browse/HBASE-12180) | Fix and reenable TestRegionReplicaReplicationEndpoint |  Major | test | stack | Enis Soztutar |


