
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

## Release 0.94.8 - 2013-05-31



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8415](https://issues.apache.org/jira/browse/HBASE-8415) | DisabledRegionSplitPolicy |  Major | regionserver | Enis Soztutar | Enis Soztutar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8350](https://issues.apache.org/jira/browse/HBASE-8350) | enable ChaosMonkey to run commands as different users |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-6870](https://issues.apache.org/jira/browse/HBASE-6870) | HTable#coprocessorExec always scan the whole table |  Critical | Coprocessors | chunhui shen | chunhui shen |
| [HBASE-8383](https://issues.apache.org/jira/browse/HBASE-8383) | Support lib/\*jar inside coprocessor jar |  Minor | Coprocessors | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8345](https://issues.apache.org/jira/browse/HBASE-8345) | Add all available resources in o.a.h.h.rest.RootResource and VersionResource to o.a.h.h.rest.client.RemoteAdmin |  Minor | Client, REST | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-8405](https://issues.apache.org/jira/browse/HBASE-8405) | Add more custom options to how ClusterManager runs commands |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8446](https://issues.apache.org/jira/browse/HBASE-8446) | Allow parallel snapshot of different tables |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8367](https://issues.apache.org/jira/browse/HBASE-8367) | LoadIncrementalHFiles does not return an error code nor throw Exception when failures occur due to timeouts |  Minor | mapreduce | Brian Dougan | Brian Dougan |
| [HBASE-5930](https://issues.apache.org/jira/browse/HBASE-5930) | Limits the amount of time an edit can live in the memstore. |  Major | . | Lars Hofhansl | Devaraj Das |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8377](https://issues.apache.org/jira/browse/HBASE-8377) | IntegrationTestBigLinkedList calculates wrap for linked list size incorrectly |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8354](https://issues.apache.org/jira/browse/HBASE-8354) | Backport HBASE-7878 'recoverFileLease does not check return value of recoverLease' to 0.94 |  Major | . | Ted Yu | Liang Xie |
| [HBASE-8379](https://issues.apache.org/jira/browse/HBASE-8379) | bin/graceful\_stop.sh does not return the balancer to original state |  Major | scripts | Nick Dimiduk | Jean-Marc Spaggiari |
| [HBASE-7921](https://issues.apache.org/jira/browse/HBASE-7921) | TestHFileBlock.testGzipCompression should ignore the block checksum |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-7122](https://issues.apache.org/jira/browse/HBASE-7122) | Proper warning message when opening a log file with no entries (idle cluster) |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8413](https://issues.apache.org/jira/browse/HBASE-8413) | Snapshot verify region will always fail if the HFile has been archived |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-8327](https://issues.apache.org/jira/browse/HBASE-8327) | Consolidate class loaders |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8451](https://issues.apache.org/jira/browse/HBASE-8451) | MetricsMBeanBase has concurrency issues in init |  Critical | metrics | Liang Xie | Liang Xie |
| [HBASE-8455](https://issues.apache.org/jira/browse/HBASE-8455) | Update ExportSnapshot to reflect changes in HBASE-7419 |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8483](https://issues.apache.org/jira/browse/HBASE-8483) | HConnectionManager can leak ZooKeeper connections when using deleteStaleConnection |  Critical | Client | Eric Yu |  |
| [HBASE-8509](https://issues.apache.org/jira/browse/HBASE-8509) | ZKUtil#createWithParents won't set data during znode creation when parent folder doesn't exit |  Major | Zookeeper | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8513](https://issues.apache.org/jira/browse/HBASE-8513) | [0.94] Fix class files with CRLF endings |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8530](https://issues.apache.org/jira/browse/HBASE-8530) | Refine error message from ExportSnapshot when there is leftover snapshot in target cluster |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-8516](https://issues.apache.org/jira/browse/HBASE-8516) | FSUtils.create() fail with ViewFS |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8550](https://issues.apache.org/jira/browse/HBASE-8550) | 0.94 ChaosMonkey grep for master is too broad |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8389](https://issues.apache.org/jira/browse/HBASE-8389) | HBASE-8354 forces Namenode into loop with lease recovery requests |  Critical | . | Varun Sharma | Varun Sharma |
| [HBASE-8547](https://issues.apache.org/jira/browse/HBASE-8547) | Fix java.lang.RuntimeException: Cached an already cached block |  Major | io, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8540](https://issues.apache.org/jira/browse/HBASE-8540) | SnapshotFileCache logs too many times if snapshot dir doesn't exists |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8493](https://issues.apache.org/jira/browse/HBASE-8493) | Backport HBASE-8422, 'Master won't go down', to 0.94 |  Major | . | stack | rajeshbabu |
| [HBASE-8355](https://issues.apache.org/jira/browse/HBASE-8355) | BaseRegionObserver#pre(Compact\|Flush\|Store)ScannerOpen returns null |  Major | Coprocessors | Andrew Purtell | Jesse Yates |
| [HBASE-8538](https://issues.apache.org/jira/browse/HBASE-8538) | HBaseAdmin#isTableEnabled() should check table existence before checking zk state. |  Major | Admin | rajeshbabu | rajeshbabu |
| [HBASE-8563](https://issues.apache.org/jira/browse/HBASE-8563) | Double count of read requests for Gets |  Major | . | Francis Liu | Francis Liu |
| [HBASE-7210](https://issues.apache.org/jira/browse/HBASE-7210) | Backport HBASE-6059 to 0.94 |  Major | . | ramkrishna.s.vasudevan | Ted Yu |
| [HBASE-8539](https://issues.apache.org/jira/browse/HBASE-8539) | Double(or tripple ...) ZooKeeper listeners of the same type when Master recovers from ZK SessionExpiredException |  Major | master | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8282](https://issues.apache.org/jira/browse/HBASE-8282) | User triggered flushes does not allow compaction to get triggered even if compaction criteria is met |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8588](https://issues.apache.org/jira/browse/HBASE-8588) | [Documentation]: Add information about adding REST and Thrift API kerberos principals to HBase ACL table |  Minor | documentation, REST, security, Thrift | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-8505](https://issues.apache.org/jira/browse/HBASE-8505) | References to split daughters should not be deleted separately from parent META entry |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8525](https://issues.apache.org/jira/browse/HBASE-8525) | Use sleep multilier when choosing sinks in ReplicationSource |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8325](https://issues.apache.org/jira/browse/HBASE-8325) | ReplicationSource read a empty HLog throws EOFException |  Critical | Replication | zavakid |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8508](https://issues.apache.org/jira/browse/HBASE-8508) | improve unit-test coverage of package org.apache.hadoop.hbase.metrics.file |  Major | . | Ivan A. Veselovsky |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8399](https://issues.apache.org/jira/browse/HBASE-8399) | TestTableInputFormatScan2#testScanFromConfiguration fails on hadoop2 profile |  Major | hadoop2, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8381](https://issues.apache.org/jira/browse/HBASE-8381) | TestTableInputFormatScan on Hadoop 2 fails because YARN kills our applications |  Major | hadoop2, mapreduce, test | Jean-Daniel Cryans | Jonathan Hsieh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8574](https://issues.apache.org/jira/browse/HBASE-8574) | Add how to rename a table in the docbook |  Major | documentation | Matteo Bertozzi | Matteo Bertozzi |


