
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

## Release 2.0.1 - 2018-06-19



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20592](https://issues.apache.org/jira/browse/HBASE-20592) | Create a tool to verify tables do not have prefix tree encoding |  Minor | Operability, tooling | Peter Somogyi | Peter Somogyi |
| [HBASE-20656](https://issues.apache.org/jira/browse/HBASE-20656) | Validate pre-2.0 coprocessors against HBase 2.0+ |  Major | tooling | Balazs Meszaros | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20389](https://issues.apache.org/jira/browse/HBASE-20389) | Move website building flags into a profile |  Minor | build, website | Sean Busbey | Sean Busbey |
| [HBASE-20327](https://issues.apache.org/jira/browse/HBASE-20327) | When qualifier is not specified, append and incr operation do not work (shell) |  Minor | shell | Nihal Jain | Nihal Jain |
| [HBASE-20484](https://issues.apache.org/jira/browse/HBASE-20484) | Remove the unnecessary autoboxing in FilterListBase |  Trivial | . | Chia-Ping Tsai | Guangxu Cheng |
| [HBASE-20507](https://issues.apache.org/jira/browse/HBASE-20507) | Do not need to call recoverLease on the broken file when we fail to create a wal writer |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-20527](https://issues.apache.org/jira/browse/HBASE-20527) | Remove unused code in MetaTableAccessor |  Trivial | . | Mingdao Yang | Mingdao Yang |
| [HBASE-20523](https://issues.apache.org/jira/browse/HBASE-20523) | PE tool should support configuring client side buffering sizes |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20567](https://issues.apache.org/jira/browse/HBASE-20567) | Pass both old and new descriptors to pre/post hooks of modify operations for table and namespace |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20640](https://issues.apache.org/jira/browse/HBASE-20640) | TestQuotaGlobalsSettingsBypass missing test category and ClassRule |  Critical | test | Josh Elser | Josh Elser |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20338](https://issues.apache.org/jira/browse/HBASE-20338) | WALProcedureStore#recoverLease() should have fixed sleeps for retrying rollWriter() |  Major | . | Umesh Agashe | Wei-Chiu Chuang |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20404](https://issues.apache.org/jira/browse/HBASE-20404) | Ugly cleanerchore complaint that dir is not empty |  Major | master | Michael Stack | Sean Busbey |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-20492](https://issues.apache.org/jira/browse/HBASE-20492) | UnassignProcedure is stuck in retry loop on region stuck in OPENING state |  Critical | amv2 | Umesh Agashe | Michael Stack |
| [HBASE-20476](https://issues.apache.org/jira/browse/HBASE-20476) | Open sequence number could go backwards in AssignProcedure |  Major | Region Assignment | Zheng Hu | Duo Zhang |
| [HBASE-20514](https://issues.apache.org/jira/browse/HBASE-20514) | On Master restart if table is stuck in DISABLING state, CLOSED regions should not be considered stuck in-transition |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-20169](https://issues.apache.org/jira/browse/HBASE-20169) | NPE when calling HBTU.shutdownMiniCluster (TestAssignmentManagerMetrics is flakey) |  Critical | test | Duo Zhang | Chia-Ping Tsai |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20521](https://issues.apache.org/jira/browse/HBASE-20521) | TableOutputFormat.checkOutputSpecs conf checking sequence cause pig script run fail |  Major | mapreduce | Michael Jin | Michael Jin |
| [HBASE-20554](https://issues.apache.org/jira/browse/HBASE-20554) | "WALs outstanding" message from CleanerChore is noisy |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20411](https://issues.apache.org/jira/browse/HBASE-20411) | Ameliorate MutableSegment synchronize |  Major | . | Michael Stack | Hua Xiang |
| [HBASE-20544](https://issues.apache.org/jira/browse/HBASE-20544) | downstream HBaseTestingUtility fails with invalid port |  Blocker | test | Sean Busbey | Sean Busbey |
| [HBASE-20571](https://issues.apache.org/jira/browse/HBASE-20571) | JMXJsonServlet generates invalid JSON if it has NaN in metrics |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20583](https://issues.apache.org/jira/browse/HBASE-20583) | SplitLogWorker should handle FileNotFoundException when split a wal |  Major | wal | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20591](https://issues.apache.org/jira/browse/HBASE-20591) | nightly job doesn't respect maven options |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20589](https://issues.apache.org/jira/browse/HBASE-20589) | Don't need to assign meta to a new RS when standby master become active |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20638](https://issues.apache.org/jira/browse/HBASE-20638) | nightly source artifact testing should fail the stage if it's going to report an error on jira |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20588](https://issues.apache.org/jira/browse/HBASE-20588) | Space quota change after quota violation doesn't seem to take in effect |  Major | regionserver | Biju Nair | Nihal Jain |
| [HBASE-20645](https://issues.apache.org/jira/browse/HBASE-20645) | Fix security\_available method in security.rb |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20633](https://issues.apache.org/jira/browse/HBASE-20633) | Dropping a table containing a disable violation policy fails to remove the quota upon table delete |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20533](https://issues.apache.org/jira/browse/HBASE-20533) | Fix the flaky TestAssignmentManagerMetrics |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20661](https://issues.apache.org/jira/browse/HBASE-20661) | Move version from 2.0.0 to 2.0.1-SNAPSHOT in branch-2.0 |  Major | build | Michael Stack | Michael Stack |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20602](https://issues.apache.org/jira/browse/HBASE-20602) | hbase.master.quota.observer.ignore property seems to be not taking effect |  Minor | documentation | Biju Nair | Biju Nair |
| [HBASE-12882](https://issues.apache.org/jira/browse/HBASE-12882) | Log level for org.apache.hadoop.hbase package should be configurable |  Major | . | Adrian Muraru | Jan Hentschel |
| [HBASE-20634](https://issues.apache.org/jira/browse/HBASE-20634) | Reopen region while server crash can cause the procedure to be stuck |  Critical | . | Duo Zhang | Michael Stack |
| [HBASE-20670](https://issues.apache.org/jira/browse/HBASE-20670) | NPE in HMaster#isInMaintenanceMode |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20684](https://issues.apache.org/jira/browse/HBASE-20684) | org.apache.hadoop.hbase.client.Scan#setStopRow javadoc uses incorrect method |  Trivial | Client, documentation | Evgenii | Evgenii |
| [HBASE-20683](https://issues.apache.org/jira/browse/HBASE-20683) | Incorrect return value for PreUpgradeValidator |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20699](https://issues.apache.org/jira/browse/HBASE-20699) | QuotaCache should cancel the QuotaRefresherChore service inside its stop() |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-20698](https://issues.apache.org/jira/browse/HBASE-20698) | Master don't record right server version until new started region server call regionServerReport method |  Major | proc-v2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Kyle Purtell | Mike Drob |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20414](https://issues.apache.org/jira/browse/HBASE-20414) | TestLockProcedure#testMultipleLocks may fail on slow machine |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | Performance | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20646](https://issues.apache.org/jira/browse/HBASE-20646) | TestWALProcedureStoreOnHDFS failing on branch-1 |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20667](https://issues.apache.org/jira/browse/HBASE-20667) | Rename TestGlobalThrottler to TestReplicationGlobalThrottler |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20539](https://issues.apache.org/jira/browse/HBASE-20539) | Disable IMC; part 2 |  Minor | in-memory-compaction | Michael Stack | Michael Stack |
| [HBASE-20520](https://issues.apache.org/jira/browse/HBASE-20520) | Failed effort upping default HDFS blocksize, hbase.regionserver.hlog.blocksize |  Major | conf | Michael Stack | Michael Stack |
| [HBASE-20564](https://issues.apache.org/jira/browse/HBASE-20564) | Tighter ByteBufferKeyValue Cell Comparator |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20620](https://issues.apache.org/jira/browse/HBASE-20620) | Tighter ByteBufferKeyValue Cell Comparator; part 2 |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-19724](https://issues.apache.org/jira/browse/HBASE-19724) | Fix Checkstyle errors in hbase-hadoop2-compat |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-20628](https://issues.apache.org/jira/browse/HBASE-20628) | SegmentScanner does over-comparing when one flushing |  Critical | Performance | Michael Stack | Michael Stack |
| [HBASE-20702](https://issues.apache.org/jira/browse/HBASE-20702) | Processing crash, skip ONLINE'ing empty rows |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-20483](https://issues.apache.org/jira/browse/HBASE-20483) | [PERFORMANCE] Flushing is 2x slower in hbase2. |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20700](https://issues.apache.org/jira/browse/HBASE-20700) | Move meta region when server crash can cause the procedure to be stuck |  Critical | master, proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20721](https://issues.apache.org/jira/browse/HBASE-20721) | Set version on branch-2.0 to 2.0.1 in prep for 2.0.1 RC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-20726](https://issues.apache.org/jira/browse/HBASE-20726) | Update RELEASENOTES.md and CHANGES.md for 2.0.1RC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-20725](https://issues.apache.org/jira/browse/HBASE-20725) | Copy down docs from master branch (absent chapters on features not in 2.0.x) |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-20939](https://issues.apache.org/jira/browse/HBASE-20939) | There will be race when we call suspendIfNotReady and then throw ProcedureSuspendedException |  Critical | amv2 | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20415](https://issues.apache.org/jira/browse/HBASE-20415) | branches-2 don't need maven-scala-plugin |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20595](https://issues.apache.org/jira/browse/HBASE-20595) | Remove the concept of 'special tables' from rsgroups |  Major | Region Assignment, rsgroup | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-20665](https://issues.apache.org/jira/browse/HBASE-20665) | "Already cached block XXX" message should be DEBUG |  Minor | BlockCache | Sean Busbey | Eric Maynard |
| [HBASE-20720](https://issues.apache.org/jira/browse/HBASE-20720) | Make 2.0.1 release |  Major | community | Michael Stack | Michael Stack |
| [HBASE-21119](https://issues.apache.org/jira/browse/HBASE-21119) | update website docs for current 2.0 release |  Major | community, documentation, website | Sean Busbey | Sean Busbey |


