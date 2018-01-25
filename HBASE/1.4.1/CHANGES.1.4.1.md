
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

## Release 1.4.1 - 2018-02-02



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15321](https://issues.apache.org/jira/browse/HBASE-15321) | Ability to open a HRegion from hdfs snapshot. |  Major | . | churro morales | churro morales |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19489](https://issues.apache.org/jira/browse/HBASE-19489) | Check against only the latest maintenance release in pre-commit hadoopcheck. |  Minor | . | Appy | Appy |
| [HBASE-19491](https://issues.apache.org/jira/browse/HBASE-19491) | Exclude flaky tests from nightly master run |  Major | . | Appy | Appy |
| [HBASE-19571](https://issues.apache.org/jira/browse/HBASE-19571) | Minor refactor of Nightly run scripts |  Minor | . | Appy | Appy |
| [HBASE-19570](https://issues.apache.org/jira/browse/HBASE-19570) | Add hadoop3 tests to Nightly master/branch-2 runs |  Critical | . | Appy | Appy |
| [HBASE-19545](https://issues.apache.org/jira/browse/HBASE-19545) | Replace getBytes(StandardCharsets.UTF\_8) with Bytes.toBytes |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-15580](https://issues.apache.org/jira/browse/HBASE-15580) | Tag coprocessor limitedprivate scope to StoreFile.Reader |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-19358](https://issues.apache.org/jira/browse/HBASE-19358) | Improve the stability of splitting log when do fail over |  Major | MTTR | Jingyun Tian | Jingyun Tian |
| [HBASE-19684](https://issues.apache.org/jira/browse/HBASE-19684) | BlockCacheKey toString Performance |  Trivial | hbase | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19789](https://issues.apache.org/jira/browse/HBASE-19789) | Not exclude flaky tests from nightly builds |  Major | . | Appy | Appy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19509](https://issues.apache.org/jira/browse/HBASE-19509) | RSGroupAdminEndpoint#preCreateTable triggers TableNotFoundException |  Minor | . | Ted Yu | Andrew Purtell |
| [HBASE-19546](https://issues.apache.org/jira/browse/HBASE-19546) | TestMasterReplication.testCyclicReplication2 uses wrong assertion |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-19551](https://issues.apache.org/jira/browse/HBASE-19551) | hbck -boundaries doesn't work correctly |  Major | hbck | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-18625](https://issues.apache.org/jira/browse/HBASE-18625) | Splitting of region with replica, doesn't update region list in serverHolding. A server crash leads to overlap. |  Major | . | Igloo | huaxiang sun |
| [HBASE-19691](https://issues.apache.org/jira/browse/HBASE-19691) | Do not require ADMIN permission for obtaining ClusterStatus |  Critical | . | Romil Choksi | Josh Elser |
| [HBASE-19490](https://issues.apache.org/jira/browse/HBASE-19490) | Rare failure in TestRateLimiter |  Major | test | Andrew Purtell | Chia-Ping Tsai |
| [HBASE-19588](https://issues.apache.org/jira/browse/HBASE-19588) | Additional jar dependencies needed for mapreduce PerformanceEvaluation |  Minor | test | Albert Chu | Albert Chu |
| [HBASE-19383](https://issues.apache.org/jira/browse/HBASE-19383) | [1.2] java.lang.AssertionError: expected:\<2\> but was:\<1\> 	at org.apache.hadoop.hbase.TestChoreService.testTriggerNowFailsWhenNotScheduled(TestChoreService.java:707) |  Major | test | stack | stack |
| [HBASE-19708](https://issues.apache.org/jira/browse/HBASE-19708) | Avoid NPE when the RPC listener's accept channel is closed |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19424](https://issues.apache.org/jira/browse/HBASE-19424) | Metrics servlet throws NPE |  Minor | . | Andrew Purtell | Toshihiro Suzuki |
| [HBASE-19685](https://issues.apache.org/jira/browse/HBASE-19685) | Fix TestFSErrorsExposed#testFullSystemBubblesFSErrors |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | Add proper privilege check for rsgroup commands |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-11409](https://issues.apache.org/jira/browse/HBASE-11409) | Add more flexibility for input directory structure to LoadIncrementalHFiles |  Major | . | churro morales | churro morales |
| [HBASE-19752](https://issues.apache.org/jira/browse/HBASE-19752) | RSGroupBasedLoadBalancer#getMisplacedRegions() should handle the case where rs group cannot be determined |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19816](https://issues.apache.org/jira/browse/HBASE-19816) | Replication sink list is not updated on UnknownHostException |  Major | Replication | Scott Wilson | Scott Wilson |
| [HBASE-19757](https://issues.apache.org/jira/browse/HBASE-19757) | System table gets stuck after enabling region server group feature in secure cluster |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | "Maximum lock count exceeded" from region server's batch processing |  Major | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-17513](https://issues.apache.org/jira/browse/HBASE-17513) | Thrift Server 1 uses different QOP settings than RPC and Thrift Server 2 and can easily be misconfigured so there is no encryption when the operator expects it. |  Critical | documentation, security, Thrift, Usability | Sean Busbey | Reid Chan |
| [HBASE-17079](https://issues.apache.org/jira/browse/HBASE-17079) | HBase build fails on windows, hbase-archetype-builder is reason for failure |  Major | build | Mohammad Arshad | Mohammad Arshad |
| [HBASE-19756](https://issues.apache.org/jira/browse/HBASE-19756) | Master NPE during completed failed proc eviction |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19514](https://issues.apache.org/jira/browse/HBASE-19514) | Use random port for TestJMXListener |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19378](https://issues.apache.org/jira/browse/HBASE-19378) | Backport HBASE-19252 "Move the transform logic of FilterList into transformCell() method to avoid extra ref to question cell" |  Critical | Filters | stack | Zheng Hu |
| [HBASE-19481](https://issues.apache.org/jira/browse/HBASE-19481) | Enable Checkstyle in hbase-error-prone |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19468](https://issues.apache.org/jira/browse/HBASE-19468) | FNFE during scans and flushes |  Critical | regionserver, Scanners | Thiruvel Thirumoolan | ramkrishna.s.vasudevan |
| [HBASE-19502](https://issues.apache.org/jira/browse/HBASE-19502) | Make sure we have closed all StoreFileScanners if we fail to open any StoreFileScanners |  Major | regionserver, Scanners | Chia-Ping Tsai | Chia-Ping Tsai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19485](https://issues.apache.org/jira/browse/HBASE-19485) | Minor improvement to TestCompactedHFilesDischarger |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19637](https://issues.apache.org/jira/browse/HBASE-19637) | Add .checkstyle to gitignore |  Major | build | Duo Zhang | Duo Zhang |


