
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

## Release 1.2.7 - Unreleased (as of 2017-08-28)



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


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18147](https://issues.apache.org/jira/browse/HBASE-18147) | nightly job to check health of active branches |  Major | community, test | Sean Busbey | Sean Busbey |


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


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18266](https://issues.apache.org/jira/browse/HBASE-18266) | Eliminate the warnings from the spotbugs |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17954](https://issues.apache.org/jira/browse/HBASE-17954) | Switch findbugs implementation to spotbugs |  Major | build, community, test | Sean Busbey | Jan Hentschel |
| [HBASE-18527](https://issues.apache.org/jira/browse/HBASE-18527) | update nightly builds to compensate for jenkins plugin upgrades |  Blocker | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18582](https://issues.apache.org/jira/browse/HBASE-18582) | Correct the docs for Mutation#setCellVisibility |  Minor | documentation | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-18670](https://issues.apache.org/jira/browse/HBASE-18670) | Add .DS\_Store to .gitignore |  Minor | community | Chia-Ping Tsai | Deon Huang |


