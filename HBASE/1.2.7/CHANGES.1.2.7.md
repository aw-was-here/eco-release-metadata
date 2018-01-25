
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

## Release 1.2.7 - Unreleased (as of 2018-01-25)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18577](https://issues.apache.org/jira/browse/HBASE-18577) | shaded client includes several non-relocated third party dependencies |  Critical | Client | Sean Busbey | Sean Busbey |
| [HBASE-18142](https://issues.apache.org/jira/browse/HBASE-18142) | Deletion of a cell deletes the previous versions too |  Major | API, shell | Karthick | ChunHao |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | Ad-hoc test job for running a subset of tests lots of times |  Major | build | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16351](https://issues.apache.org/jira/browse/HBASE-16351) | do dependency license check via enforcer plugin |  Major | build, dependencies | Sean Busbey | Mike Drob |
| [HBASE-18041](https://issues.apache.org/jira/browse/HBASE-18041) | Add pylintrc file to HBase |  Major | community | Alex Leblang | Alex Leblang |
| [HBASE-16116](https://issues.apache.org/jira/browse/HBASE-16116) | Remove redundant pattern \*.iml |  Trivial | . | Konstantin Ryakhovskiy | Konstantin Ryakhovskiy |
| [HBASE-14220](https://issues.apache.org/jira/browse/HBASE-14220) | nightly tests should verify src tgz generates and builds correctly |  Minor | build | Nick Dimiduk | Sean Busbey |
| [HBASE-18426](https://issues.apache.org/jira/browse/HBASE-18426) | nightly job should use independent stages to check supported jdks |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18387](https://issues.apache.org/jira/browse/HBASE-18387) | [Thrift] Make principal configurable in DemoClient.java |  Minor | . | Lars George | Tamas Penzes |
| [HBASE-18631](https://issues.apache.org/jira/browse/HBASE-18631) | Allow configuration of ChaosMonkey properties via hbase-site |  Minor | integration tests | Josh Elser | Josh Elser |
| [HBASE-18675](https://issues.apache.org/jira/browse/HBASE-18675) | Making {max,min}SessionTimeout configurable for MiniZooKeeperCluster |  Minor | test, Zookeeper | Cesar Delgado | Cesar Delgado |
| [HBASE-18746](https://issues.apache.org/jira/browse/HBASE-18746) | Throw exception with job.getStatus().getFailureInfo() when ExportSnapshot fails |  Minor | mapreduce, snapshots | Chia-Ping Tsai | ChunHao |
| [HBASE-19052](https://issues.apache.org/jira/browse/HBASE-19052) | FixedFileTrailer should recognize CellComparatorImpl class in branch-1.x |  Critical | HFile | Ted Yu | Ted Yu |
| [HBASE-19091](https://issues.apache.org/jira/browse/HBASE-19091) | Code annotation wrote "BinaryComparator" instead of "LongComparator" |  Minor | Client | Qilin Cao | Qilin Cao |
| [HBASE-19140](https://issues.apache.org/jira/browse/HBASE-19140) | hbase-cleanup.sh uses deprecated call to remove files in hdfs |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-19228](https://issues.apache.org/jira/browse/HBASE-19228) | nightly job should gather machine stats. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19227](https://issues.apache.org/jira/browse/HBASE-19227) | Nightly jobs should archive JVM dumpstream files |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19262](https://issues.apache.org/jira/browse/HBASE-19262) | Revisit checkstyle rules |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19489](https://issues.apache.org/jira/browse/HBASE-19489) | Check against only the latest maintenance release in pre-commit hadoopcheck. |  Minor | . | Appy | Appy |
| [HBASE-19491](https://issues.apache.org/jira/browse/HBASE-19491) | Exclude flaky tests from nightly master run |  Major | . | Appy | Appy |
| [HBASE-19571](https://issues.apache.org/jira/browse/HBASE-19571) | Minor refactor of Nightly run scripts |  Minor | . | Appy | Appy |
| [HBASE-19570](https://issues.apache.org/jira/browse/HBASE-19570) | Add hadoop3 tests to Nightly master/branch-2 runs |  Critical | . | Appy | Appy |
| [HBASE-19684](https://issues.apache.org/jira/browse/HBASE-19684) | BlockCacheKey toString Performance |  Trivial | hbase | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19789](https://issues.apache.org/jira/browse/HBASE-19789) | Not exclude flaky tests from nightly builds |  Major | . | Appy | Appy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17658](https://issues.apache.org/jira/browse/HBASE-17658) | Fix bookkeeping error with max regions for a table |  Major | Balancer | Tim Brown | Tim Brown |
| [HBASE-18122](https://issues.apache.org/jira/browse/HBASE-18122) | Scanner id should include ServerName of region server |  Major | . | Phil Yang | Phil Yang |
| [HBASE-18159](https://issues.apache.org/jira/browse/HBASE-18159) | Use OpenJDK7 instead of Oracle JDK7 in pre commit docker file |  Blocker | build | Chia-Ping Tsai | Duo Zhang |
| [HBASE-18030](https://issues.apache.org/jira/browse/HBASE-18030) | Per Cell TTL tags may get duplicated with increments/Append causing tags length overflow |  Critical | hbase, regionserver | Abhishek Kumar | Anoop Sam John |
| [HBASE-9393](https://issues.apache.org/jira/browse/HBASE-9393) | Hbase does not closing a closed socket resulting in many CLOSE\_WAIT |  Critical | . | Avi Zrachya | Ashish Singhi |
| [HBASE-18066](https://issues.apache.org/jira/browse/HBASE-18066) | Get with closest\_row\_before on "hbase:meta" can return empty Cell during region merge/split |  Major | hbase, regionserver | Andrey Elenskiy | Zheng Hu |
| [HBASE-18132](https://issues.apache.org/jira/browse/HBASE-18132) | Low replication should be checked in period in case of datanode rolling upgrade |  Major | . | Allan Yang | Allan Yang |
| [HBASE-15302](https://issues.apache.org/jira/browse/HBASE-15302) | Reenable the other tests disabled by HBASE-14678 |  Major | test | Phil Yang | Phil Yang |
| [HBASE-18141](https://issues.apache.org/jira/browse/HBASE-18141) | Regionserver fails to shutdown when abort triggered in RegionScannerImpl during RPC call |  Critical | regionserver, security | Gary Helmling | Gary Helmling |
| [HBASE-18192](https://issues.apache.org/jira/browse/HBASE-18192) | Replication drops recovered queues on region server shutdown |  Blocker | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-18137](https://issues.apache.org/jira/browse/HBASE-18137) | Replication gets stuck for empty WALs |  Critical | Replication | Ashu Pachauri | Vincent Poon |
| [HBASE-18212](https://issues.apache.org/jira/browse/HBASE-18212) | In Standalone mode with local filesystem HBase logs Warning message:Failed to invoke 'unbuffer' method in class class org.apache.hadoop.fs.FSDataInputStream |  Minor | Operability | Umesh Agashe | Ashish Singhi |
| [HBASE-18036](https://issues.apache.org/jira/browse/HBASE-18036) | HBase 1.x : Data locality is not maintained after cluster restart or SSH |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-18230](https://issues.apache.org/jira/browse/HBASE-18230) | Generated LICENSE file includes unsubstituted Velocity variables |  Major | build | Mike Drob | Mike Drob |
| [HBASE-18255](https://issues.apache.org/jira/browse/HBASE-18255) | Time-Delayed HBase Performance Degradation with Java 7 |  Critical | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18358](https://issues.apache.org/jira/browse/HBASE-18358) | Backport HBASE-18099 'FlushSnapshotSubprocedure should wait for concurrent Region#flush() to finish' to branch-1.3 |  Critical | snapshots | Ted Yu | Ted Yu |
| [HBASE-15548](https://issues.apache.org/jira/browse/HBASE-15548) | SyncTable: sourceHashDir is supposed to be optional but won't work without |  Critical | mapreduce, Operability, tooling | My Ho | Dave Latham |
| [HBASE-16090](https://issues.apache.org/jira/browse/HBASE-16090) | ResultScanner is not closed in SyncTable#finishRemainingHashRanges() |  Major | mapreduce, Operability, tooling | Ted Yu | Ted Yu |
| [HBASE-17648](https://issues.apache.org/jira/browse/HBASE-17648) | HBase Table-level synchronization fails between two secured(kerberized) clusters |  Critical | mapreduce, Operability, security, tooling | Yi Liang | Yi Liang |
| [HBASE-18330](https://issues.apache.org/jira/browse/HBASE-18330) | NPE in ReplicationZKLockCleanerChore |  Major | master, Replication | Minwoo Kang | Andrew Purtell |
| [HBASE-18362](https://issues.apache.org/jira/browse/HBASE-18362) | hbck should not report split replica parent region from meta as errors |  Minor | hbck | huaxiang sun | huaxiang sun |
| [HBASE-18185](https://issues.apache.org/jira/browse/HBASE-18185) | IntegrationTestTimeBoundedRequestsWithRegionReplicas unbalanced tests fails with AssertionError |  Minor | integration tests | Balazs Meszaros | Balazs Meszaros |
| [HBASE-17131](https://issues.apache.org/jira/browse/HBASE-17131) | Avoid livelock caused by HRegion#processRowsWithLocks |  Major | regionserver | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18473](https://issues.apache.org/jira/browse/HBASE-18473) | VC.listLabels() erroneously closes any connection |  Major | Client | Lars George | Anoop Sam John |
| [HBASE-18481](https://issues.apache.org/jira/browse/HBASE-18481) | The autoFlush flag was not used in PE tool |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18487](https://issues.apache.org/jira/browse/HBASE-18487) | Minor fixes in row lock implementation |  Major | . | James Taylor | James Taylor |
| [HBASE-18480](https://issues.apache.org/jira/browse/HBASE-18480) | The cost of BaseLoadBalancer.cluster is changed even if the rollback is done |  Major | Balancer | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18488](https://issues.apache.org/jira/browse/HBASE-18488) | Backport HBASE-15710(Include issue servers information in RetriesExhaustedWithDetailsException message) to branch-1.2 |  Minor | . | Chia-Ping Tsai | kh87313 |
| [HBASE-18470](https://issues.apache.org/jira/browse/HBASE-18470) | Remove the redundant comma from RetriesExhaustedWithDetailsException#getDesc |  Minor | Client | Benedict Jin | Benedict Jin |
| [HBASE-18024](https://issues.apache.org/jira/browse/HBASE-18024) | HRegion#initializeRegionInternals should not re-create .hregioninfo file when the region directory no longer exists |  Major | Region Assignment, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18479](https://issues.apache.org/jira/browse/HBASE-18479) | should apply HBASE-18255 to HBASE\_MASTER\_OPTS too |  Critical | . | Yechao Chen | Yechao Chen |
| [HBASE-18390](https://issues.apache.org/jira/browse/HBASE-18390) | Sleep too long when finding region location failed |  Major | Client | Phil Yang | Phil Yang |
| [HBASE-18197](https://issues.apache.org/jira/browse/HBASE-18197) | Avoided to call job.waitForCompletion(true) two times |  Trivial | hbase | Chandra Sekhar | Jan Hentschel |
| [HBASE-17803](https://issues.apache.org/jira/browse/HBASE-17803) | PE always re-creates table when we specify the split policy |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18125](https://issues.apache.org/jira/browse/HBASE-18125) | HBase shell disregards spaces at the end of a split key in a split file |  Major | shell | Ashu Pachauri | Chenxi Tong |
| [HBASE-17617](https://issues.apache.org/jira/browse/HBASE-17617) | Backport HBASE-16731 (Inconsistent results from the Get/Scan if we use the empty FilterList) to branch-1 |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18572](https://issues.apache.org/jira/browse/HBASE-18572) | Delete can't remove the cells which have no visibility label |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18471](https://issues.apache.org/jira/browse/HBASE-18471) | The DeleteFamily cell is skipped when StoreScanner seeks to next column |  Critical | Deletes, hbase, scan | Thomas Martens | Chia-Ping Tsai |
| [HBASE-18607](https://issues.apache.org/jira/browse/HBASE-18607) | fix submit-patch.py to support utf8 |  Trivial | . | Tamas Penzes | Tamas Penzes |
| [HBASE-18679](https://issues.apache.org/jira/browse/HBASE-18679) | YARN may null Counters object and cause an NPE in ITBLL |  Trivial | integration tests | Josh Elser | Josh Elser |
| [HBASE-18665](https://issues.apache.org/jira/browse/HBASE-18665) | ReversedScannerCallable invokes getRegionLocations incorrectly |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-15947](https://issues.apache.org/jira/browse/HBASE-15947) | Classes used only for tests included in main code base |  Trivial | build, test | Sean Mackrory | Sean Mackrory |
| [HBASE-18461](https://issues.apache.org/jira/browse/HBASE-18461) | Build broken If the username contains a backslash |  Minor | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-15497](https://issues.apache.org/jira/browse/HBASE-15497) | Incorrect javadoc for atomicity guarantee of Increment and Append |  Minor | documentation | Jianwei Cui | Jianwei Cui |
| [HBASE-18743](https://issues.apache.org/jira/browse/HBASE-18743) | HFiles in use by a table which has the same name and namespace with a default table cloned from snapshot may be deleted when that snapshot and default table are deleted |  Critical | hbase | wenbang | wenbang |
| [HBASE-18757](https://issues.apache.org/jira/browse/HBASE-18757) | Fix Improper bitwise & in BucketCache offset calculation |  Major | BucketCache | Zach York | Zach York |
| [HBASE-18818](https://issues.apache.org/jira/browse/HBASE-18818) | TestConnectionImplemenation fails |  Major | test | stack | stack |
| [HBASE-18847](https://issues.apache.org/jira/browse/HBASE-18847) | Remove unneeded synchronized block from hfilev2 warning in branch-1.2 |  Critical | Performance | Rich Howarth | Rich Howarth |
| [HBASE-18890](https://issues.apache.org/jira/browse/HBASE-18890) | Backport HBASE-14499 (Master coprocessors shutdown will not happen on master abort) to branch-1 |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18940](https://issues.apache.org/jira/browse/HBASE-18940) | branch-2 (and probably others) fail check of generated source artifact |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-18921](https://issues.apache.org/jira/browse/HBASE-18921) | Result.current() throws ArrayIndexOutOfBoundsException after calling advance() |  Minor | . | Maytee Chinavanichkit | Maytee Chinavanichkit |
| [HBASE-18924](https://issues.apache.org/jira/browse/HBASE-18924) | Backport HBASE-18568 (Correct metric of numRegions) to branch-1.2 and branch-1.3 |  Critical | metrics | Peter Somogyi | Peter Somogyi |
| [HBASE-18934](https://issues.apache.org/jira/browse/HBASE-18934) | precommit on branch-1 isn't supposed to run against hadoop 3 |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-17590](https://issues.apache.org/jira/browse/HBASE-17590) | Drop cache hint should work for StoreFile write path |  Major | . | Appy | Ashu Pachauri |
| [HBASE-18998](https://issues.apache.org/jira/browse/HBASE-18998) | processor.getRowsToLock() always assumes there is some row being locked |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18505](https://issues.apache.org/jira/browse/HBASE-18505) | Our build/yetus personality will run tests on individual modules and then on all (i.e. 'root'). Should do one or other |  Critical | build | stack | Mike Drob |
| [HBASE-18907](https://issues.apache.org/jira/browse/HBASE-18907) | Methods missing rpc timeout parameter in HTable |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-19038](https://issues.apache.org/jira/browse/HBASE-19038) | precommit mvn install should run from root on patch |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19020](https://issues.apache.org/jira/browse/HBASE-19020) | TestXmlParsing exception checking relies on a particular xml implementation without declaring it. |  Major | dependencies, REST | Sean Busbey | Sean Busbey |
| [HBASE-19055](https://issues.apache.org/jira/browse/HBASE-19055) | Backport HBASE-19042 to other active branches |  Blocker | build | Duo Zhang | Duo Zhang |
| [HBASE-19014](https://issues.apache.org/jira/browse/HBASE-19014) | surefire fails; When writing xml report stdout/stderr ... No such file or directory |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19061](https://issues.apache.org/jira/browse/HBASE-19061) | enforcer NPE on hbase-shaded-invariants |  Blocker | build | Mike Drob | Mike Drob |
| [HBASE-19060](https://issues.apache.org/jira/browse/HBASE-19060) | "Hadoop check" test is running all the time instead of just when changes to java |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19039](https://issues.apache.org/jira/browse/HBASE-19039) | refactor shadedjars test to only run on java changes. |  Major | build | Mike Drob | Sean Busbey |
| [HBASE-19058](https://issues.apache.org/jira/browse/HBASE-19058) | The wget isn't installed in building docker image |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18247](https://issues.apache.org/jira/browse/HBASE-18247) | Hbck to fix the case that replica region shows as key in the meta table |  Minor | hbck, Operability | huaxiang sun | huaxiang sun |
| [HBASE-19072](https://issues.apache.org/jira/browse/HBASE-19072) | Missing break in catch block of InterruptedException in HRegion#waitForFlushes() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19066](https://issues.apache.org/jira/browse/HBASE-19066) | Correct the directory of openjdk-8 for jenkins |  Major | build | Chia-Ping Tsai | Sean Busbey |
| [HBASE-19098](https://issues.apache.org/jira/browse/HBASE-19098) | Python based compatiblity checker fails if git repo does not have a remote named 'origin' |  Critical | tooling | Andrew Purtell | Sean Busbey |
| [HBASE-18438](https://issues.apache.org/jira/browse/HBASE-18438) | Precommit doesn't warn about unused imports |  Critical | build | Mike Drob | Chia-Ping Tsai |
| [HBASE-19030](https://issues.apache.org/jira/browse/HBASE-19030) | nightly runs should attempt to log test results after archiving |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19137](https://issues.apache.org/jira/browse/HBASE-19137) | Nightly test should make junit reports optional rather than attempt archive after reporting. |  Critical | build | stack | Sean Busbey |
| [HBASE-19118](https://issues.apache.org/jira/browse/HBASE-19118) | Use SaslUtil to set Sasl.QOP in 'Thrift' |  Major | Thrift | Reid Chan | Reid Chan |
| [HBASE-19156](https://issues.apache.org/jira/browse/HBASE-19156) | Duplicative regions\_per\_server options on LoadTestTool |  Trivial | test | Josh Elser | Josh Elser |
| [HBASE-19124](https://issues.apache.org/jira/browse/HBASE-19124) | Move HBase-Nightly source artifact creation test from JenkinsFile to a script in dev-support |  Major | test | Appy | Sean Busbey |
| [HBASE-19102](https://issues.apache.org/jira/browse/HBASE-19102) | TestZooKeeperMainServer fails with KeeperException$ConnectionLossException |  Major | . | stack | stack |
| [HBASE-19198](https://issues.apache.org/jira/browse/HBASE-19198) | TestIPv6NIOServerSocketChannel fails; unable to bind |  Minor | test | stack | stack |
| [HBASE-19184](https://issues.apache.org/jira/browse/HBASE-19184) | clean up nightly source artifact test to match expectations from switch to git-archive |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19229](https://issues.apache.org/jira/browse/HBASE-19229) | Nightly script to check source artifact should not do a destructive git operation without opt-in |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19215](https://issues.apache.org/jira/browse/HBASE-19215) | Incorrect exception handling on the client causes incorrect call timeouts and byte buffer allocations on the server |  Major | rpc | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-19249](https://issues.apache.org/jira/browse/HBASE-19249) | test for "hbase antipatterns" should check \_count\_ of occurance rather than text of |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19223](https://issues.apache.org/jira/browse/HBASE-19223) | Remove references to Date Tiered compaction from branch-1.2 and branch-1.1 ref guide |  Critical | Compaction, documentation | chilianyi | Sean Busbey |
| [HBASE-19260](https://issues.apache.org/jira/browse/HBASE-19260) | Add lock back to avoid parallel accessing meta to locate region |  Major | . | Yu Li | Yu Li |
| [HBASE-19188](https://issues.apache.org/jira/browse/HBASE-19188) | Build fails on branch-1 using maven-3.5.2 |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19388](https://issues.apache.org/jira/browse/HBASE-19388) | Incorrect value is being set for Compaction Pressure in RegionLoadStats object inside HRegion class |  Minor | regionserver | Harshal Jain | Harshal Jain |
| [HBASE-19350](https://issues.apache.org/jira/browse/HBASE-19350) | TestMetaWithReplicas is flaky |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19393](https://issues.apache.org/jira/browse/HBASE-19393) | HTTP 413 FULL head while accessing HBase UI using SSL. |  Major | UI | Sergey Soldatov | Sergey Soldatov |
| [HBASE-18233](https://issues.apache.org/jira/browse/HBASE-18233) | We shouldn't wait for readlock in doMiniBatchMutation in case of deadlock |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-19396](https://issues.apache.org/jira/browse/HBASE-19396) | Fix flaky test TestHTableMultiplexerFlushCache |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19422](https://issues.apache.org/jira/browse/HBASE-19422) | using hadoop-profile property leads to confusing failures |  Major | . | Ted Yu | Mike Drob |
| [HBASE-19442](https://issues.apache.org/jira/browse/HBASE-19442) | Backport HBASE-19065 to branch-1 (HRegion#bulkLoadHFiles() should wait for concurrent Region#flush() to finish) |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-19340](https://issues.apache.org/jira/browse/HBASE-19340) | Backport missing options in shell |  Major | shell | zhaoyuan | zhaoyuan |
| [HBASE-19546](https://issues.apache.org/jira/browse/HBASE-19546) | TestMasterReplication.testCyclicReplication2 uses wrong assertion |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-19490](https://issues.apache.org/jira/browse/HBASE-19490) | Rare failure in TestRateLimiter |  Major | test | Andrew Purtell | Chia-Ping Tsai |
| [HBASE-19383](https://issues.apache.org/jira/browse/HBASE-19383) | [1.2] java.lang.AssertionError: expected:\<2\> but was:\<1\> 	at org.apache.hadoop.hbase.TestChoreService.testTriggerNowFailsWhenNotScheduled(TestChoreService.java:707) |  Major | test | stack | stack |
| [HBASE-19708](https://issues.apache.org/jira/browse/HBASE-19708) | Avoid NPE when the RPC listener's accept channel is closed |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19730](https://issues.apache.org/jira/browse/HBASE-19730) | Backport HBASE-14497 Reverse Scan threw StackOverflow caused by readPt checking |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19424](https://issues.apache.org/jira/browse/HBASE-19424) | Metrics servlet throws NPE |  Minor | . | Andrew Purtell | Toshihiro Suzuki |
| [HBASE-19685](https://issues.apache.org/jira/browse/HBASE-19685) | Fix TestFSErrorsExposed#testFullSystemBubblesFSErrors |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19796](https://issues.apache.org/jira/browse/HBASE-19796) | ReplicationSynUp tool is not replicating the data if the WAL is moved to splitting directory |  Major | Replication | Ashish Singhi | Ashish Singhi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18147](https://issues.apache.org/jira/browse/HBASE-18147) | nightly job to check health of active branches |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-19414](https://issues.apache.org/jira/browse/HBASE-19414) | enable TestMasterOperationsForRegionReplicas#testIncompleteMetaTableReplicaInformation in branch-1.3 and branch-1.2 |  Trivial | . | Chia-Ping Tsai | Yung-An He |
| [HBASE-19514](https://issues.apache.org/jira/browse/HBASE-19514) | Use random port for TestJMXListener |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15691](https://issues.apache.org/jira/browse/HBASE-15691) | Port HBASE-10205 (ConcurrentModificationException in BucketAllocator) to branch-1 |  Major | . | Andrew Purtell | Stephen Yuan Jiang |
| [HBASE-18293](https://issues.apache.org/jira/browse/HBASE-18293) | Only add the spotbugs dependency when jdk8 is active |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18268](https://issues.apache.org/jira/browse/HBASE-18268) | Eliminate the findbugs warnings for hbase-client |  Major | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18365](https://issues.apache.org/jira/browse/HBASE-18365) | Eliminate the findbugs warnings for hbase-common |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18308](https://issues.apache.org/jira/browse/HBASE-18308) | Eliminate the findbugs warnings for hbase-server |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18315](https://issues.apache.org/jira/browse/HBASE-18315) | Eliminate the findbugs warnings for hbase-rest |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18656](https://issues.apache.org/jira/browse/HBASE-18656) | Address issues found by error-prone in hbase-common |  Major | build | Mike Drob | Mike Drob |
| [HBASE-18957](https://issues.apache.org/jira/browse/HBASE-18957) | add test that confirms 2 FamilyFilters in a FilterList using MUST\_PASS\_ONE operator will return results that match either of the FamilyFilters and revert as needed to make it pass. |  Critical | Filters | Sean Busbey | Peter Somogyi |
| [HBASE-18980](https://issues.apache.org/jira/browse/HBASE-18980) | Address issues found by error-prone in hbase-hadoop2-compat |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-18867](https://issues.apache.org/jira/browse/HBASE-18867) | maven enforcer plugin needs update to work with jdk9 |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-19070](https://issues.apache.org/jira/browse/HBASE-19070) | temporarily make the mvnsite nightly test non-voting. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19182](https://issues.apache.org/jira/browse/HBASE-19182) | Add deprecation in branch-1 for hbase-prefix-tree so some heads up it removed in hbase2 |  Major | . | stack | stack |
| [HBASE-19205](https://issues.apache.org/jira/browse/HBASE-19205) | Backport HBASE-18441 ZookeeperWatcher#interruptedException should throw exception |  Major | Zookeeper | stack | stack |
| [HBASE-19243](https://issues.apache.org/jira/browse/HBASE-19243) | Start mini cluster once before class for TestFIFOCompactionPolicy |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19368](https://issues.apache.org/jira/browse/HBASE-19368) | [nightly] Make xml test non-voting in branch-1.2 |  Major | build | stack | stack |
| [HBASE-19354](https://issues.apache.org/jira/browse/HBASE-19354) | [branch-1] Build using a jdk that is beyond ubuntu trusty's openjdk-151 |  Major | build | stack | stack |
| [HBASE-19373](https://issues.apache.org/jira/browse/HBASE-19373) | Fix Checkstyle error in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19502](https://issues.apache.org/jira/browse/HBASE-19502) | Make sure we have closed all StoreFileScanners if we fail to open any StoreFileScanners |  Major | regionserver, Scanners | Chia-Ping Tsai | Chia-Ping Tsai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18266](https://issues.apache.org/jira/browse/HBASE-18266) | Eliminate the warnings from the spotbugs |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19204](https://issues.apache.org/jira/browse/HBASE-19204) | branch-1.2 times out and is taking 6-7 hours to complete |  Major | test | stack | stack |
| [HBASE-17954](https://issues.apache.org/jira/browse/HBASE-17954) | Switch findbugs implementation to spotbugs |  Major | build, community, test | Sean Busbey | Jan Hentschel |
| [HBASE-18527](https://issues.apache.org/jira/browse/HBASE-18527) | update nightly builds to compensate for jenkins plugin upgrades |  Blocker | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18582](https://issues.apache.org/jira/browse/HBASE-18582) | Correct the docs for Mutation#setCellVisibility |  Minor | documentation | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-18670](https://issues.apache.org/jira/browse/HBASE-18670) | Add .DS\_Store to .gitignore |  Minor | community | Chia-Ping Tsai | Deon Huang |
| [HBASE-18833](https://issues.apache.org/jira/browse/HBASE-18833) | Ensure precommit personality is up to date on all active branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-18277](https://issues.apache.org/jira/browse/HBASE-18277) | Triage lack of branch-1.2 nightlies |  Blocker | test | Sean Busbey | Sean Busbey |
| [HBASE-19097](https://issues.apache.org/jira/browse/HBASE-19097) | update testing to use Apache Yetus Test Patch version 0.6.0 |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-18996](https://issues.apache.org/jira/browse/HBASE-18996) | Backport HBASE-17703 (TestThriftServerCmdLine is flaky in master branch) to branch-1 |  Major | test, Thrift | Peter Somogyi | Peter Somogyi |
| [HBASE-16459](https://issues.apache.org/jira/browse/HBASE-16459) | Remove unused hbase shell --format option |  Trivial | shell | Dima Spivak | Dima Spivak |
| [HBASE-19637](https://issues.apache.org/jira/browse/HBASE-19637) | Add .checkstyle to gitignore |  Major | build | Duo Zhang | Duo Zhang |


