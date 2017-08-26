
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

## Release 1.5.0 - Unreleased (as of 2017-08-26)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18267](https://issues.apache.org/jira/browse/HBASE-18267) | The result from the postAppend is ignored |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18374](https://issues.apache.org/jira/browse/HBASE-18374) | RegionServer Metrics improvements |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | limit max log message width in log4j |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-18469](https://issues.apache.org/jira/browse/HBASE-18469) | Correct  RegionServer metric of  totalRequestCount |  Critical | metrics, regionserver | Shibin Zhang | Yu Li |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18060](https://issues.apache.org/jira/browse/HBASE-18060) | Backport to branch-1 HBASE-9774 HBase native metrics and metric collection for coprocessors |  Major | . | Vincent Poon | Vincent Poon |
| [HBASE-15134](https://issues.apache.org/jira/browse/HBASE-15134) | Add visibility into Flush and Compaction queues |  Major | Compaction, metrics, regionserver | Elliott Clark | Abhishek Singh Chouhan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15816](https://issues.apache.org/jira/browse/HBASE-15816) | Provide client with ability to set priority on Operations |  Major | . | churro morales | churro morales |
| [HBASE-16116](https://issues.apache.org/jira/browse/HBASE-16116) | Remove redundant pattern \*.iml |  Trivial | . | Konstantin Ryakhovskiy | Konstantin Ryakhovskiy |
| [HBASE-14220](https://issues.apache.org/jira/browse/HBASE-14220) | nightly tests should verify src tgz generates and builds correctly |  Minor | build | Nick Dimiduk | Sean Busbey |
| [HBASE-18426](https://issues.apache.org/jira/browse/HBASE-18426) | nightly job should use independent stages to check supported jdks |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18248](https://issues.apache.org/jira/browse/HBASE-18248) | Warn if monitored RPC task has been tied up beyond a configurable threshold |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18555](https://issues.apache.org/jira/browse/HBASE-18555) | Remove redundant familyMap.put() from addxxx() of sub-classes of Mutation and Query |  Minor | Client | Xiang Li | Xiang Li |
| [HBASE-18522](https://issues.apache.org/jira/browse/HBASE-18522) | Add RowMutations support to Batch |  Major | . | Jerry He | Jerry He |
| [HBASE-18533](https://issues.apache.org/jira/browse/HBASE-18533) | Expose BucketCache values to be configured |  Major | BucketCache | Zach York | Zach York |
| [HBASE-18573](https://issues.apache.org/jira/browse/HBASE-18573) | Update Append and Delete to use Mutation#getCellList(family) |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-18532](https://issues.apache.org/jira/browse/HBASE-18532) | Improve cache related stats rendered on RS UI |  Major | regionserver, UI | Biju Nair | Biju Nair |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17893](https://issues.apache.org/jira/browse/HBASE-17893) | Allow HBase to build against Hadoop 2.8.0 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-18312](https://issues.apache.org/jira/browse/HBASE-18312) | Ineffective handling of FileNotFoundException in FileLink$FileLinkInputStream.tryOpen() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18340](https://issues.apache.org/jira/browse/HBASE-18340) | TestXXXProcedure tests hanging or failing on branch-1 (branch-1.4) |  Blocker | . | Andrew Purtell |  |
| [HBASE-18358](https://issues.apache.org/jira/browse/HBASE-18358) | Backport HBASE-18099 'FlushSnapshotSubprocedure should wait for concurrent Region#flush() to finish' to branch-1.3 |  Critical | snapshots | Ted Yu | Ted Yu |
| [HBASE-18377](https://issues.apache.org/jira/browse/HBASE-18377) | Error handling for FileNotFoundException should consider RemoteException in openReader() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18330](https://issues.apache.org/jira/browse/HBASE-18330) | NPE in ReplicationZKLockCleanerChore |  Major | master, Replication | Minwoo Kang | Andrew Purtell |
| [HBASE-16993](https://issues.apache.org/jira/browse/HBASE-16993) | BucketCache throw java.io.IOException: Invalid HFile block magic when configuring hbase.bucketcache.bucket.sizes |  Major | BucketCache | liubangchen | Anoop Sam John |
| [HBASE-18054](https://issues.apache.org/jira/browse/HBASE-18054) | log when we add/remove failed servers in client |  Major | Client, Operability | Sean Busbey | Ali |
| [HBASE-18447](https://issues.apache.org/jira/browse/HBASE-18447) | MetricRegistryInfo#hashCode uses hashCode instead of toHashCode |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-18185](https://issues.apache.org/jira/browse/HBASE-18185) | IntegrationTestTimeBoundedRequestsWithRegionReplicas unbalanced tests fails with AssertionError |  Minor | integration tests | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18473](https://issues.apache.org/jira/browse/HBASE-18473) | VC.listLabels() erroneously closes any connection |  Major | Client | Lars George | Anoop Sam John |
| [HBASE-18481](https://issues.apache.org/jira/browse/HBASE-18481) | The autoFlush flag was not used in PE tool |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18487](https://issues.apache.org/jira/browse/HBASE-18487) | Minor fixes in row lock implementation |  Major | . | James Taylor | James Taylor |
| [HBASE-18480](https://issues.apache.org/jira/browse/HBASE-18480) | The cost of BaseLoadBalancer.cluster is changed even if the rollback is done |  Major | Balancer | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18470](https://issues.apache.org/jira/browse/HBASE-18470) | Remove the redundant comma from RetriesExhaustedWithDetailsException#getDesc |  Minor | Client | Benedict Jin | Benedict Jin |
| [HBASE-18024](https://issues.apache.org/jira/browse/HBASE-18024) | HRegion#initializeRegionInternals should not re-create .hregioninfo file when the region directory no longer exists |  Major | Region Assignment, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18479](https://issues.apache.org/jira/browse/HBASE-18479) | should apply HBASE-18255 to HBASE\_MASTER\_OPTS too |  Critical | . | Yechao Chen | Yechao Chen |
| [HBASE-18390](https://issues.apache.org/jira/browse/HBASE-18390) | Sleep too long when finding region location failed |  Major | Client | Phil Yang | Phil Yang |
| [HBASE-18197](https://issues.apache.org/jira/browse/HBASE-18197) | Avoided to call job.waitForCompletion(true) two times |  Trivial | hbase | Chandra Sekhar | Jan Hentschel |
| [HBASE-18025](https://issues.apache.org/jira/browse/HBASE-18025) | CatalogJanitor should collect outdated RegionStates from the AM |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18526](https://issues.apache.org/jira/browse/HBASE-18526) | FIFOCompactionPolicy pre-check uses wrong scope |  Major | master | Lars George | Vladimir Rodionov |
| [HBASE-18512](https://issues.apache.org/jira/browse/HBASE-18512) | Region Server will abort with IllegalStateException if HDFS umask has limited scope |  Major | regionserver, security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18437](https://issues.apache.org/jira/browse/HBASE-18437) | Revoke access permissions of a user from a table does not work as expected |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-18431](https://issues.apache.org/jira/browse/HBASE-18431) | Mitigate compatibility concerns between branch-1.3 and branch-1.4 |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17617](https://issues.apache.org/jira/browse/HBASE-17617) | Backport HBASE-16731 (Inconsistent results from the Get/Scan if we use the empty FilterList) to branch-1 |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18617](https://issues.apache.org/jira/browse/HBASE-18617) | FuzzyRowKeyFilter should not modify the filter pairs |  Minor | . | vinisha | vinisha |
| [HBASE-18572](https://issues.apache.org/jira/browse/HBASE-18572) | Delete can't remove the cells which have no visibility label |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18471](https://issues.apache.org/jira/browse/HBASE-18471) | The DeleteFamily cell is skipped when StoreScanner seeks to next column |  Critical | Deletes, hbase, scan | Thomas Martens | Chia-Ping Tsai |
| [HBASE-18644](https://issues.apache.org/jira/browse/HBASE-18644) | Duplicate "compactionQueueLength" metric in Region Server metrics |  Minor | metrics | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-18614](https://issues.apache.org/jira/browse/HBASE-18614) | Setting BUCKET\_CACHE\_COMBINED\_KEY to false disables stats on RS UI |  Major | regionserver | Biju Nair | Biju Nair |
| [HBASE-18628](https://issues.apache.org/jira/browse/HBASE-18628) | ZKPermissionWatcher blocks all ZK notifications |  Critical | regionserver | Mike Drob | Mike Drob |
| [HBASE-18616](https://issues.apache.org/jira/browse/HBASE-18616) | Shell warns about already initialized constants at startup |  Minor | shell | Andrew Purtell | Guangxu Cheng |
| [HBASE-18647](https://issues.apache.org/jira/browse/HBASE-18647) | Parameter cacheBlocks does not take effect in REST API for scan |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18607](https://issues.apache.org/jira/browse/HBASE-18607) | fix submit-patch.py to support utf8 |  Trivial | . | Tamas Penzes | Tamas Penzes |
| [HBASE-18679](https://issues.apache.org/jira/browse/HBASE-18679) | YARN may null Counters object and cause an NPE in ITBLL |  Trivial | integration tests | Josh Elser | Josh Elser |
| [HBASE-18671](https://issues.apache.org/jira/browse/HBASE-18671) | Support Append/Increment in rest api |  Major | REST | Guangxu Cheng | Guangxu Cheng |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18295](https://issues.apache.org/jira/browse/HBASE-18295) |  The result contains the cells across different rows |  Blocker | Scanners | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18268](https://issues.apache.org/jira/browse/HBASE-18268) | Eliminate the findbugs warnings for hbase-client |  Major | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18308](https://issues.apache.org/jira/browse/HBASE-18308) | Eliminate the findbugs warnings for hbase-server |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18315](https://issues.apache.org/jira/browse/HBASE-18315) | Eliminate the findbugs warnings for hbase-rest |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18398](https://issues.apache.org/jira/browse/HBASE-18398) | Snapshot operation fails with FileNotFoundException |  Major | snapshots | Ashu Pachauri | Ashu Pachauri |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18527](https://issues.apache.org/jira/browse/HBASE-18527) | update nightly builds to compensate for jenkins plugin upgrades |  Blocker | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18582](https://issues.apache.org/jira/browse/HBASE-18582) | Correct the docs for Mutation#setCellVisibility |  Minor | documentation | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-18623](https://issues.apache.org/jira/browse/HBASE-18623) | Frequent failed to parse at EOF warnings from WALEntryStream |  Minor | . | Andrew Purtell | Andrew Purtell |


