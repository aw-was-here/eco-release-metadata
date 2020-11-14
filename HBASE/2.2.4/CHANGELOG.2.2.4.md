
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

## Release 2.2.4 - 2020-03-11



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23710](https://issues.apache.org/jira/browse/HBASE-23710) | Priority configuration for system coprocessors |  Major | Coprocessors | Geoffrey Jacoby | Geoffrey Jacoby |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23165](https://issues.apache.org/jira/browse/HBASE-23165) | [hbtop] Some modifications from HBASE-22988 |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23383](https://issues.apache.org/jira/browse/HBASE-23383) | [hbck2] \`fixHoles\` should queue assignment procedures for any regions its fixing |  Minor | hbck2, master, Region Assignment | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23674](https://issues.apache.org/jira/browse/HBASE-23674) | Too many rit page Numbers show confusion |  Trivial | master | dingbaosheng | dingbaosheng |
| [HBASE-23646](https://issues.apache.org/jira/browse/HBASE-23646) | Fix remaining Checkstyle violations in tests of hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23683](https://issues.apache.org/jira/browse/HBASE-23683) | Make HBaseInterClusterReplicationEndpoint more extensible |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23686](https://issues.apache.org/jira/browse/HBASE-23686) | Revert binary incompatible change and remove reflection |  Major | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23822](https://issues.apache.org/jira/browse/HBASE-23822) | Fix typo in procedures.jsp |  Trivial | website | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23802](https://issues.apache.org/jira/browse/HBASE-23802) | Remove unnecessary Configuration instantiation in LossyAccounting |  Minor | metrics | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23859](https://issues.apache.org/jira/browse/HBASE-23859) | Modify "Block locality" of RegionServer Web UI to human readable percentage |  Trivial | . | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23864](https://issues.apache.org/jira/browse/HBASE-23864) | No need to submit SplitTableRegionProcedure/MergeTableRegionsProcedure when split/merge is disabled |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22827](https://issues.apache.org/jira/browse/HBASE-22827) | Expose multi-region merge in shell and Admin API |  Major | Admin, shell | Michael Stack | Sakthi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21345](https://issues.apache.org/jira/browse/HBASE-21345) | [hbck2] Allow version check to proceed even though master is 'initializing'. |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23679](https://issues.apache.org/jira/browse/HBASE-23679) | FileSystem instance leaks due to bulk loads with Kerberos enabled |  Critical | . | Josh Elser | Josh Elser |
| [HBASE-23677](https://issues.apache.org/jira/browse/HBASE-23677) | region.jsp returns 500/NPE when provided encoded region name is not online |  Minor | regionserver, UI | Nick Dimiduk | wenfeiyi666 |
| [HBASE-23695](https://issues.apache.org/jira/browse/HBASE-23695) | Fail more gracefully when test class is missing Category |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23701](https://issues.apache.org/jira/browse/HBASE-23701) | Make sure HBaseClassTestRule doesn't suffer same issue as HBaseClassTestRuleChecker |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23733](https://issues.apache.org/jira/browse/HBASE-23733) | [Flakey Tests] TestSplitTransactionOnCluster |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23737](https://issues.apache.org/jira/browse/HBASE-23737) | [Flakey Tests] TestFavoredNodeTableImport fails 30% of the time |  Major | . | Michael Stack | Michael Stack |
| [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | HMaster/HRegion Info Server does not honour admin.acl |  Major | . | Mohammad Arshad | Josh Elser |
| [HBASE-23809](https://issues.apache.org/jira/browse/HBASE-23809) | The RSGroup shell test is missing |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23892](https://issues.apache.org/jira/browse/HBASE-23892) | SecureTestCluster should allow its subclasses to pass their Class reference on HBaseKerberosUtils.setSSLConfiguration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23909](https://issues.apache.org/jira/browse/HBASE-23909) | list\_regions fails if table is under split |  Minor | shell | Peter Somogyi | Viraj Jasani |
| [HBASE-23944](https://issues.apache.org/jira/browse/HBASE-23944) | The method setClusterLoad of SimpleLoadBalancer is incorrect when balance by table |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-23954](https://issues.apache.org/jira/browse/HBASE-23954) | SplitParent region should not be balanced |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-23953](https://issues.apache.org/jira/browse/HBASE-23953) | SimpleBalancer bug when second pass to fill up to min |  Major | Balancer | niuyulin | niuyulin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23569](https://issues.apache.org/jira/browse/HBASE-23569) | Validate that the log cleaner actually cleans oldWALs as expected |  Major | integration tests, master, test | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23711](https://issues.apache.org/jira/browse/HBASE-23711) | Add test for MinVersions and KeepDeletedCells TTL |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23749](https://issues.apache.org/jira/browse/HBASE-23749) | TestHFileWriterV3 should have tests for all data block encodings |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23793](https://issues.apache.org/jira/browse/HBASE-23793) | Increase maven heap allocation to 4G in Yetus personality |  Major | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23808](https://issues.apache.org/jira/browse/HBASE-23808) | [Flakey Test] TestMasterShutdown#testMasterShutdownBeforeStartingAnyRegionServer |  Major | test | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23692](https://issues.apache.org/jira/browse/HBASE-23692) | Set version as 2.2.4-SNAPSHOT in branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23727](https://issues.apache.org/jira/browse/HBASE-23727) | Port HBASE-20981 in 2.2 & 2.3 |  Major | . | Sakthi | Sakthi |
| [HBASE-23728](https://issues.apache.org/jira/browse/HBASE-23728) | Include HBASE-21018 in 2.2 & 2.3 |  Major | . | Sakthi | Sakthi |
| [HBASE-23773](https://issues.apache.org/jira/browse/HBASE-23773) | Backport "HBASE-23601 OutputSink.WriterThread exception gets stuck and repeated indefinietly" to branch-2.2 |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-23748](https://issues.apache.org/jira/browse/HBASE-23748) | Include HBASE-21284 to branch-2.2 |  Major | . | Sakthi | Sakthi |
| [HBASE-23755](https://issues.apache.org/jira/browse/HBASE-23755) | [OpenTracing] Declare HTrace is unusable in the user doc |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23964](https://issues.apache.org/jira/browse/HBASE-23964) | Set version to 2.2.4 in branch-2.2 for first RC of 2.2.4 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23965](https://issues.apache.org/jira/browse/HBASE-23965) | Generate CHANGES.md and RELEASENOTES.md for 2.2.4 |  Major | . | Guanghao Zhang | Guanghao Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23922](https://issues.apache.org/jira/browse/HBASE-23922) | Release 2.2.4 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23734](https://issues.apache.org/jira/browse/HBASE-23734) | Backport [HBASE-21874 Bucket cache on Persistent memory] to branch-2.2 |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23774](https://issues.apache.org/jira/browse/HBASE-23774) | Announce user-zh list |  Trivial | website | Josh Elser | Josh Elser |
| [HBASE-23854](https://issues.apache.org/jira/browse/HBASE-23854) | Documentation update of external\_apis.adoc#example-scala-code |  Trivial | documentation | Michael Heil | Michael Heil |
| [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | Move Jira-attached file precommit definition from script in Jenkins config to dev-support |  Minor | build | Nick Dimiduk | Nick Dimiduk |


