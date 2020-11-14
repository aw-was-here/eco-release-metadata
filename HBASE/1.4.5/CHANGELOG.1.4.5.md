
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

## Release 1.4.5 - 2018-06-20



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20523](https://issues.apache.org/jira/browse/HBASE-20523) | PE tool should support configuring client side buffering sizes |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20545](https://issues.apache.org/jira/browse/HBASE-20545) | Improve performance of BaseLoadBalancer.retainAssignment |  Major | Balancer | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20605](https://issues.apache.org/jira/browse/HBASE-20605) | Exclude new Azure Storage FileSystem from SecureBulkLoadEndpoint permission check |  Major | security | Josh Elser | Josh Elser |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-19924](https://issues.apache.org/jira/browse/HBASE-19924) | hbase rpc throttling does not work for multi() with request count rater. |  Major | rpc | Hua Xiang | Hua Xiang |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20500](https://issues.apache.org/jira/browse/HBASE-20500) | [rsgroup] should keep at least one server in default group |  Major | rsgroup | Yechao Chen | Yechao Chen |
| [HBASE-20204](https://issues.apache.org/jira/browse/HBASE-20204) | Add locking to RefreshFileConnections in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20554](https://issues.apache.org/jira/browse/HBASE-20554) | "WALs outstanding" message from CleanerChore is noisy |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20447](https://issues.apache.org/jira/browse/HBASE-20447) | Only fail cacheBlock if block collisions aren't related to next block metadata |  Major | BlockCache, BucketCache | Zach York | Zach York |
| [HBASE-20571](https://issues.apache.org/jira/browse/HBASE-20571) | JMXJsonServlet generates invalid JSON if it has NaN in metrics |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20591](https://issues.apache.org/jira/browse/HBASE-20591) | nightly job doesn't respect maven options |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20627](https://issues.apache.org/jira/browse/HBASE-20627) | Relocate RS Group pre/post hooks from RSGroupAdminServer to RSGroupAdminEndpoint |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20638](https://issues.apache.org/jira/browse/HBASE-20638) | nightly source artifact testing should fail the stage if it's going to report an error on jira |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20669](https://issues.apache.org/jira/browse/HBASE-20669) | [findbugs] autoboxing to parse primitive |  Major | . | Sean Busbey | Wei-Chiu Chuang |
| [HBASE-20670](https://issues.apache.org/jira/browse/HBASE-20670) | NPE in HMaster#isInMaintenanceMode |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | Performance | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20619](https://issues.apache.org/jira/browse/HBASE-20619) | TestWeakObjectPool occasionally times out |  Trivial | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20646](https://issues.apache.org/jira/browse/HBASE-20646) | TestWALProcedureStoreOnHDFS failing on branch-1 |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20316](https://issues.apache.org/jira/browse/HBASE-20316) | Backport HBASE-20229 "ConnectionImplementation.locateRegions() returns duplicated entries when region replication is on" to branch-1 |  Major | backport | Michael Stack | Toshihiro Suzuki |
| [HBASE-20647](https://issues.apache.org/jira/browse/HBASE-20647) | Backport HBASE-20616 "TruncateTableProcedure is stuck in retry loop in TRUNCATE\_TABLE\_CREATE\_FS\_LAYOUT state" to branch-1 |  Major | backport | Toshihiro Suzuki | Toshihiro Suzuki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20608](https://issues.apache.org/jira/browse/HBASE-20608) | Remove build option of error prone profile for branch-1 after HBASE-12350 |  Major | build | Tak-Lon (Stephen) Wu | Andrew Kyle Purtell |
| [HBASE-20595](https://issues.apache.org/jira/browse/HBASE-20595) | Remove the concept of 'special tables' from rsgroups |  Major | Region Assignment, rsgroup | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |


