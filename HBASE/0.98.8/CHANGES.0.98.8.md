
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

## Release 0.98.8 - 2014-11-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12361](https://issues.apache.org/jira/browse/HBASE-12361) | Show data locality of region in table page |  Minor | . | Liu Shaohui | Liu Shaohui |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12212](https://issues.apache.org/jira/browse/HBASE-12212) | HBaseTestingUtility#waitUntilAllRegionsAssigned should wait for RegionStates |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-8361](https://issues.apache.org/jira/browse/HBASE-8361) | Bulk load and other utilities should not create tables for user |  Major | mapreduce | Nick Dimiduk | Ashish Singhi |
| [HBASE-12271](https://issues.apache.org/jira/browse/HBASE-12271) | Add counters for files skipped during snapshot export |  Minor | snapshots | Patrick White | Patrick White |
| [HBASE-12264](https://issues.apache.org/jira/browse/HBASE-12264) | ImportTsv should fail fast if output is not specified and table does not exist |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12161](https://issues.apache.org/jira/browse/HBASE-12161) | Add support for grant/revoke on namespaces in AccessControlClient |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10082](https://issues.apache.org/jira/browse/HBASE-10082) | Describe 'table' output is all on one line, could use better formatting |  Minor | shell | Maxime C Dumas | Srikanth Srungarapu |
| [HBASE-12243](https://issues.apache.org/jira/browse/HBASE-12243) | HBaseFsck should auto set ignorePreCheckPermission to true if no fix option is set. |  Minor | hbck | Yi Deng | Yi Deng |
| [HBASE-12416](https://issues.apache.org/jira/browse/HBASE-12416) | RegionServerCallable should report what host it was communicating with |  Trivial | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | Reduce the number of versions configured for the ACL table |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12272](https://issues.apache.org/jira/browse/HBASE-12272) | Generate Thrift code through maven |  Major | build, documentation, Thrift | Niels Basjes | Niels Basjes |
| [HBASE-12424](https://issues.apache.org/jira/browse/HBASE-12424) | Finer grained logging and metrics for split transactions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | RpcRetryingCaller should log after fixed number of retries like AsyncProcess |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12434](https://issues.apache.org/jira/browse/HBASE-12434) | Add a command to compact all the regions in a regionserver |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12447](https://issues.apache.org/jira/browse/HBASE-12447) | Add support for setTimeRange for RowCounter and CellCounter |  Minor | . | Esteban Gutierrez | Esteban Gutierrez |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12181](https://issues.apache.org/jira/browse/HBASE-12181) | Some tests create a table and try to use it before regions get assigned |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12200](https://issues.apache.org/jira/browse/HBASE-12200) | When an RPC server handler thread dies, throw exception |  Minor | regionserver | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-12218](https://issues.apache.org/jira/browse/HBASE-12218) | Make HBaseCommonTestingUtil#deleteDir try harder |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12109](https://issues.apache.org/jira/browse/HBASE-12109) | user\_permission command for namespace does not return correct result |  Minor | shell | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12198](https://issues.apache.org/jira/browse/HBASE-12198) | Fix the bug of not updating location cache |  Minor | Client | Yi Deng | Yi Deng |
| [HBASE-12183](https://issues.apache.org/jira/browse/HBASE-12183) | FuzzyRowFilter doesn't support reverse scans |  Major | Filters | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | Move REST |  Major | REST | Elliott Clark | Elliott Clark |
| [HBASE-11394](https://issues.apache.org/jira/browse/HBASE-11394) | Replication can have data loss if peer id contains hyphen "-" |  Major | . | Enis Soztutar | Talat UYARER |
| [HBASE-12126](https://issues.apache.org/jira/browse/HBASE-12126) | Region server coprocessor endpoint |  Major | Coprocessors | Virag Kothari | Virag Kothari |
| [HBASE-12228](https://issues.apache.org/jira/browse/HBASE-12228) | Backport HBASE-11373 (hbase-protocol compile failed for name conflict of RegionTransition) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12240](https://issues.apache.org/jira/browse/HBASE-12240) | hbase-daemon.sh should remove pid file if process not found running |  Minor | Usability | Ashish Singhi | Ashish Singhi |
| [HBASE-12237](https://issues.apache.org/jira/browse/HBASE-12237) | HBaseZeroCopyByteString#wrap() should not be called in hbase-client code |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-12242](https://issues.apache.org/jira/browse/HBASE-12242) | Fix new javadoc warnings in Admin, etc. |  Trivial | . | stack | stack |
| [HBASE-12248](https://issues.apache.org/jira/browse/HBASE-12248) | broken link in hbase shell help |  Minor | shell | André Kelpe |  |
| [HBASE-12252](https://issues.apache.org/jira/browse/HBASE-12252) | IntegrationTestBulkLoad fails with illegal partition error |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12257](https://issues.apache.org/jira/browse/HBASE-12257) | TestAssignmentManager unsynchronized access to regionPlans |  Trivial | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12258](https://issues.apache.org/jira/browse/HBASE-12258) | Make TestHBaseFsck less flaky |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-9157](https://issues.apache.org/jira/browse/HBASE-9157) | ZKUtil.blockUntilAvailable loops forever with non-recoverable errors |  Minor | Zookeeper | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12265](https://issues.apache.org/jira/browse/HBASE-12265) | HBase shell 'show\_filters' points to internal Facebook URL |  Trivial | shell | Niels Basjes | Andrew Purtell |
| [HBASE-12261](https://issues.apache.org/jira/browse/HBASE-12261) | Add checkstyle to HBase build process |  Major | build, site | Elliott Clark | Elliott Clark |
| [HBASE-12229](https://issues.apache.org/jira/browse/HBASE-12229) | NullPointerException in SnapshotTestingUtils |  Minor | test | Dima Spivak | Dima Spivak |
| [HBASE-12278](https://issues.apache.org/jira/browse/HBASE-12278) | Race condition in TestSecureLoadIncrementalHFilesSplitRecovery |  Critical | test | Dima Spivak | Dima Spivak |
| [HBASE-12226](https://issues.apache.org/jira/browse/HBASE-12226) | TestAccessController#testPermissionList failing on master |  Major | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-12308](https://issues.apache.org/jira/browse/HBASE-12308) | Fix typo in hbase-rest profile name |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12302](https://issues.apache.org/jira/browse/HBASE-12302) | VisibilityClient getAuths does not propagate remote service exception correctly |  Minor | Client, security | Jerry He | Jerry He |
| [HBASE-12316](https://issues.apache.org/jira/browse/HBASE-12316) | test-patch.sh (Hadoop-QA) outputs the wrong release audit warnings URL |  Trivial | . | Dima Spivak | Dima Spivak |
| [HBASE-12301](https://issues.apache.org/jira/browse/HBASE-12301) | user\_permission command does not show global permissions |  Major | security, shell | Jerry He | Matteo Bertozzi |
| [HBASE-12318](https://issues.apache.org/jira/browse/HBASE-12318) | Add license header to checkstyle xml files |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-12315](https://issues.apache.org/jira/browse/HBASE-12315) | Fix 0.98 Tests after checkstyle got parented |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-12306](https://issues.apache.org/jira/browse/HBASE-12306) | CellCounter output's wrong value for Total Families Across all Rows in output file |  Major | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12314](https://issues.apache.org/jira/browse/HBASE-12314) | Add chaos monkey policy to execute two actions concurrently |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12294](https://issues.apache.org/jira/browse/HBASE-12294) | Regression from HBASE-12261: Can't build the docs after the hbase-checkstyle module was added |  Blocker | build | Misty Stanley-Jones | Elliott Clark |
| [HBASE-12334](https://issues.apache.org/jira/browse/HBASE-12334) | Handling of DeserializationException causes needless retry on failure |  Major | . | James Taylor | Lars Hofhansl |
| [HBASE-12304](https://issues.apache.org/jira/browse/HBASE-12304) | CellCounter will throw AIOBE when output directory is not specified |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12312](https://issues.apache.org/jira/browse/HBASE-12312) | Another couple of createTable race conditions |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12372](https://issues.apache.org/jira/browse/HBASE-12372) | [WINDOWS] Enable log4j configuration in hbase.cmd |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12376](https://issues.apache.org/jira/browse/HBASE-12376) | HBaseAdmin leaks ZK connections if failure starting watchers (ConnectionLossException) |  Critical | Zookeeper | stack | stack |
| [HBASE-12336](https://issues.apache.org/jira/browse/HBASE-12336) | RegionServer failed to shutdown for NodeFailoverWorker thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12375](https://issues.apache.org/jira/browse/HBASE-12375) | LoadIncrementalHFiles fails to load data in table when CF name starts with '\_' |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12384](https://issues.apache.org/jira/browse/HBASE-12384) | TestTags can hang on fast test hosts |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12274](https://issues.apache.org/jira/browse/HBASE-12274) | Race between RegionScannerImpl#nextInternal() and RegionScannerImpl#close() may produce null pointer exception |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12386](https://issues.apache.org/jira/browse/HBASE-12386) | Replication gets stuck following a transient zookeeper error to remote peer cluster |  Major | Replication | Adrian Muraru | Adrian Muraru |
| [HBASE-12399](https://issues.apache.org/jira/browse/HBASE-12399) | Master startup race between metrics and RpcServer |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12406](https://issues.apache.org/jira/browse/HBASE-12406) | Bulk load fails in 0.98 against hadoop-1 due to unmatched family name |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12417](https://issues.apache.org/jira/browse/HBASE-12417) | Scan copy constructor does not retain small attribute |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | Truncate command does not preserve ACLs table |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12402](https://issues.apache.org/jira/browse/HBASE-12402) | ZKPermissionWatcher race condition in refreshing the cache leaving stale ACLs and causing AccessDenied |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10780](https://issues.apache.org/jira/browse/HBASE-10780) | HFilePrettyPrinter#processFile should return immediately if file does not exist |  Minor | HFile | Ashish Singhi | Ashish Singhi |
| [HBASE-12407](https://issues.apache.org/jira/browse/HBASE-12407) | HConnectionKey doesn't contain CUSTOM\_CONTROLLER\_CONF\_KEY in CONNECTION\_PROPERTIES |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12414](https://issues.apache.org/jira/browse/HBASE-12414) | Move HFileLink.exists() to base class |  Trivial | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12219](https://issues.apache.org/jira/browse/HBASE-12219) | Cache more efficiently getAll() and get() in FSTableDescriptors |  Major | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12397](https://issues.apache.org/jira/browse/HBASE-12397) | CopyTable fails to compile with the Hadoop 1 profile |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12420](https://issues.apache.org/jira/browse/HBASE-12420) | BucketCache logged startup message is egregiously large |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12419](https://issues.apache.org/jira/browse/HBASE-12419) | "Partial cell read caused by EOF" ERRORs on replication source during replication |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12440](https://issues.apache.org/jira/browse/HBASE-12440) | Region may remain offline on clean startup under certain race condition |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12450](https://issues.apache.org/jira/browse/HBASE-12450) | Unbalance chaos monkey might kill all region servers without starting them back |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-12448](https://issues.apache.org/jira/browse/HBASE-12448) | Fix rate reporting in compaction progress DEBUG logging |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12279](https://issues.apache.org/jira/browse/HBASE-12279) | Generated thrift files were generated with the wrong parameters |  Major | . | Niels Basjes | Niels Basjes |
| [HBASE-12319](https://issues.apache.org/jira/browse/HBASE-12319) | Inconsistencies during region recovery due to close/open of a region during recovery |  Critical | . | Devaraj Das | Jeffrey Zhong |
| [HBASE-12460](https://issues.apache.org/jira/browse/HBASE-12460) | Moving Chore to hbase-common module. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12461](https://issues.apache.org/jira/browse/HBASE-12461) | FSVisitor logging is excessive |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12366](https://issues.apache.org/jira/browse/HBASE-12366) | Add login code to HBase Canary tool. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12445](https://issues.apache.org/jira/browse/HBASE-12445) | hbase is removing all remaining cells immediately after the cell marked with marker = KeyValue.Type.DeleteColumn via PUT |  Major | . | sri venu bora | Hani Nadra |
| [HBASE-11698](https://issues.apache.org/jira/browse/HBASE-11698) | TestFullLogReconstruction has duplicate config setting |  Trivial | test | Sean Busbey | Toshihiro Suzuki |
| [HBASE-12478](https://issues.apache.org/jira/browse/HBASE-12478) | HBASE-10141 and MIN\_VERSIONS are not compatible |  Critical | . | Enis Soztutar | Ted Yu |
| [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | Reduce the effective scope of GLOBAL CREATE and ADMIN permission |  Major | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12465](https://issues.apache.org/jira/browse/HBASE-12465) | HBase master start fails due to incorrect file creations |  Major | master | Biju Nair | Alicia Ying Shu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12367](https://issues.apache.org/jira/browse/HBASE-12367) | Integration tests should not restore the cluster if the CM is not destructive |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12401](https://issues.apache.org/jira/browse/HBASE-12401) | Add some timestamp signposts in IntegrationTestMTTR |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12403](https://issues.apache.org/jira/browse/HBASE-12403) | IntegrationTestMTTR flaky due to aggressive RS restart timeout |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | CopyTable with bulkload |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-12353](https://issues.apache.org/jira/browse/HBASE-12353) | Turn down logging on some spewing unit tests |  Major | . | stack | Dima Spivak |
| [HBASE-12370](https://issues.apache.org/jira/browse/HBASE-12370) | Backport IT changes from HBASE-10572 to 0.98 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12363](https://issues.apache.org/jira/browse/HBASE-12363) | Improve how KEEP\_DELETED\_CELLS works with MIN\_VERSIONS |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12371](https://issues.apache.org/jira/browse/HBASE-12371) | Backport IT improvements to 0.98 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12205](https://issues.apache.org/jira/browse/HBASE-12205) | Backport HBASE-12016 'Reduce number of versions in Meta table. Make it configurable' to 0.98 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | Add maven enforcer rules for build assumptions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12344](https://issues.apache.org/jira/browse/HBASE-12344) | Split up TestAdmin |  Major | . | Andrew Purtell | Andrew Purtell |


