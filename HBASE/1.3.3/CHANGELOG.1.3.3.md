
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

## Release 1.3.3 - Unreleased (as of 2018-07-13)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15466](https://issues.apache.org/jira/browse/HBASE-15466) | precommit should not run all java goals when given a docs-only patch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20545](https://issues.apache.org/jira/browse/HBASE-20545) | Improve performance of BaseLoadBalancer.retainAssignment |  Major | Balancer | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20605](https://issues.apache.org/jira/browse/HBASE-20605) | Exclude new Azure Storage FileSystem from SecureBulkLoadEndpoint permission check |  Major | security | Josh Elser | Josh Elser |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20701](https://issues.apache.org/jira/browse/HBASE-20701) | too much logging when balancer runs from BaseLoadBalancer |  Trivial | Balancer | Monani Mihir | Monani Mihir |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20651](https://issues.apache.org/jira/browse/HBASE-20651) | Master, prevents hbck or shell command to reassign the split parent region |  Minor | master | huaxiang sun | huaxiang sun |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20292](https://issues.apache.org/jira/browse/HBASE-20292) | Wrong URLs in the descriptions for update\_all\_config and update\_config commands in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20302](https://issues.apache.org/jira/browse/HBASE-20302) | CatalogJanitor should log the reason why it is disabled |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-17631](https://issues.apache.org/jira/browse/HBASE-17631) | Canary interval too low |  Major | canary | Lars George | Jan Hentschel |
| [HBASE-20322](https://issues.apache.org/jira/browse/HBASE-20322) | CME in StoreScanner causes region server crash |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20231](https://issues.apache.org/jira/browse/HBASE-20231) | Not able to delete column family from a row using RemoteHTable |  Major | REST | Pankaj Kumar | Pankaj Kumar |
| [HBASE-19343](https://issues.apache.org/jira/browse/HBASE-19343) | Restore snapshot makes split parent region online |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-18862](https://issues.apache.org/jira/browse/HBASE-18862) | backport HBASE-15109 to branch-1.2,branch-1.3 |  Critical | regionserver | Yechao Chen | Yechao Chen |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-19924](https://issues.apache.org/jira/browse/HBASE-19924) | hbase rpc throttling does not work for multi() with request count rater. |  Major | rpc | huaxiang sun | huaxiang sun |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20571](https://issues.apache.org/jira/browse/HBASE-20571) | JMXJsonServlet generates invalid JSON if it has NaN in metrics |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20591](https://issues.apache.org/jira/browse/HBASE-20591) | nightly job doesn't respect maven options |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20638](https://issues.apache.org/jira/browse/HBASE-20638) | nightly source artifact testing should fail the stage if it's going to report an error on jira |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Purtell | Andrew Purtell |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20669](https://issues.apache.org/jira/browse/HBASE-20669) | [findbugs] autoboxing to parse primitive |  Major | . | Sean Busbey | Wei-Chiu Chuang |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Purtell | Mike Drob |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | stack | stack |
| [HBASE-20575](https://issues.apache.org/jira/browse/HBASE-20575) | Fail to config COMPACTION\_ENABLED by hbase shell |  Major | shell | Chia-Ping Tsai | Mingdao Yang |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20771](https://issues.apache.org/jira/browse/HBASE-20771) | PUT operation fail with "No server address listed in hbase:meta for region xxxxx" |  Major | Client | Pankaj Kumar | Pankaj Kumar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-20619](https://issues.apache.org/jira/browse/HBASE-20619) | TestWeakObjectPool occasionally times out |  Trivial | test | Andrew Purtell | Andrew Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16848](https://issues.apache.org/jira/browse/HBASE-16848) | Usage for show\_peer\_tableCFs command doesn't include peer |  Minor | . | Ted Yu | Peter Somogyi |
| [HBASE-20316](https://issues.apache.org/jira/browse/HBASE-20316) | Backport HBASE-20229 "ConnectionImplementation.locateRegions() returns duplicated entries when region replication is on" to branch-1 |  Major | backport | stack | Toshihiro Suzuki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-20665](https://issues.apache.org/jira/browse/HBASE-20665) | "Already cached block XXX" message should be DEBUG |  Minor | BlockCache | Sean Busbey | Eric Maynard |


