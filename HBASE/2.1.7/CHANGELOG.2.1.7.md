
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

## Release 2.1.7 - 2019-10-08



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11062](https://issues.apache.org/jira/browse/HBASE-11062) | hbtop |  Major | hbtop | Andrew Kyle Purtell | Toshihiro Suzuki |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22872](https://issues.apache.org/jira/browse/HBASE-22872) | Don't create normalization plan unnecesarily when split and merge both are disabled |  Minor | . | Aman Poonia | Aman Poonia |
| [HBASE-22962](https://issues.apache.org/jira/browse/HBASE-22962) | Fix typo in javadoc description |  Minor | documentation | KangZhiDong | KangZhiDong |
| [HBASE-22905](https://issues.apache.org/jira/browse/HBASE-22905) | Avoid temp ByteBuffer allocation in BlockingRpcConnection#writeRequest |  Major | . | chenxu | chenxu |
| [HBASE-22954](https://issues.apache.org/jira/browse/HBASE-22954) | Whitelist net.java.dev.jna which got pulled in through Hadoop 3.3.0 |  Minor | community, hadoop3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22724](https://issues.apache.org/jira/browse/HBASE-22724) | Add a emoji on the vote table for pre commit result on github |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-22701](https://issues.apache.org/jira/browse/HBASE-22701) | Better handle invalid local directory for DynamicClassLoader |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-22804](https://issues.apache.org/jira/browse/HBASE-22804) | Provide an API to get list of successful regions and total expected regions in Canary |  Minor | canary | Caroline | Caroline |
| [HBASE-22846](https://issues.apache.org/jira/browse/HBASE-22846) | Internal Error 500 when Using HBASE REST API to Create Namespace. |  Major | hbase-connectors | Sailesh Patel | Wellington Chevreuil |
| [HBASE-23037](https://issues.apache.org/jira/browse/HBASE-23037) | Make the split WAL related log more readable |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23044](https://issues.apache.org/jira/browse/HBASE-23044) | CatalogJanitor#cleanMergeQualifier may clean wrong parent regions |  Critical | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23041](https://issues.apache.org/jira/browse/HBASE-23041) | Should not show split parent regions in HBCK report's unknown server part |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23049](https://issues.apache.org/jira/browse/HBASE-23049) | TableDescriptors#getAll should return the tables ordering by the name which contain namespace |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23058](https://issues.apache.org/jira/browse/HBASE-23058) | Should be "Column Family Name" in table.jsp |  Minor | . | Qiongwu | Qiongwu |
| [HBASE-22975](https://issues.apache.org/jira/browse/HBASE-22975) | Add read and write QPS metrics at server level and table level |  Minor | metrics | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23075](https://issues.apache.org/jira/browse/HBASE-23075) | Upgrade jackson to version 2.9.10 due to CVE-2019-16335 and CVE-2019-14540 |  Major | dependencies, hbase-connectors, REST, security | Nicholas Jiang | Nicholas Jiang |
| [HBASE-23035](https://issues.apache.org/jira/browse/HBASE-23035) | Retain region to the last RegionServer make the failover slower |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22930](https://issues.apache.org/jira/browse/HBASE-22930) | Set unique name to longCompactions/shortCompactions threads |  Minor | . | Pankaj Kumar | Pankaj Kumar |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22852](https://issues.apache.org/jira/browse/HBASE-22852) | hbase nightlies leaking gpg-agents |  Minor | build | Allen Wittenauer | Rushabh Shah |
| [HBASE-22922](https://issues.apache.org/jira/browse/HBASE-22922) | Only the two first regions are locked in MergeTableRegionsProcedure |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22935](https://issues.apache.org/jira/browse/HBASE-22935) | TaskMonitor warns MonitoredRPCHandler task may be stuck when it recently started |  Minor | logging | David Manning | David Manning |
| [HBASE-22928](https://issues.apache.org/jira/browse/HBASE-22928) | ScanMetrics counter update may not happen in case of exception in TableRecordReaderImpl |  Minor | mapreduce | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22893](https://issues.apache.org/jira/browse/HBASE-22893) | Change the comment in HBaseClassTestRule to reflect change in default test timeouts |  Trivial | . | Sakthi | Rabi Kumar K C |
| [HBASE-22943](https://issues.apache.org/jira/browse/HBASE-22943) | Various procedures should not cache log trace level |  Minor | proc-v2 | Sean Busbey | Sean Busbey |
| [HBASE-22896](https://issues.apache.org/jira/browse/HBASE-22896) | TestHRegion.testFlushMarkersWALFail is flaky |  Minor | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22961](https://issues.apache.org/jira/browse/HBASE-22961) | Deprecate hbck1 in core |  Major | hbck | Michael Stack | Michael Stack |
| [HBASE-22970](https://issues.apache.org/jira/browse/HBASE-22970) | split parents show as overlaps in the HBCK Report |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22981](https://issues.apache.org/jira/browse/HBASE-22981) | Remove unused flags for Yetus |  Critical | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22963](https://issues.apache.org/jira/browse/HBASE-22963) | Netty ByteBuf leak in rpc client implementation |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-22979](https://issues.apache.org/jira/browse/HBASE-22979) | Call ChunkCreator.initialize in TestHRegionWithInMemoryFlush |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22013](https://issues.apache.org/jira/browse/HBASE-22013) | SpaceQuotas - getNumRegions() returning wrong number of regions due to region replicas |  Major | . | Ajeet Rai | Shardul Singh |
| [HBASE-23007](https://issues.apache.org/jira/browse/HBASE-23007) | UnsatisfiedLinkError when using hbase-shaded packages under linux |  Critical | shading | Balazs Meszaros | Balazs Meszaros |
| [HBASE-23006](https://issues.apache.org/jira/browse/HBASE-23006) | RSGroupBasedLoadBalancer should also try to place replicas for the same region to different region servers |  Major | Region Assignment, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22929](https://issues.apache.org/jira/browse/HBASE-22929) | MemStoreLAB  ChunkCreator may memory leak |  Major | . | Yechao Chen | ramkrishna.s.vasudevan |
| [HBASE-22955](https://issues.apache.org/jira/browse/HBASE-22955) | Branches-1 precommit and nightly yetus jobs are using jdk8 for jdk7 jobs |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-23043](https://issues.apache.org/jira/browse/HBASE-23043) | TestWALEntryStream times out |  Major | wal | Peter Somogyi | Peter Somogyi |
| [HBASE-23040](https://issues.apache.org/jira/browse/HBASE-23040) | region mover gives NullPointerException instead of saying a host isn't in the cluster |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-23005](https://issues.apache.org/jira/browse/HBASE-23005) | Table UI showed exception message when table is disabled |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23051](https://issues.apache.org/jira/browse/HBASE-23051) | Remove unneeded Mockito.mock invocations |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22941](https://issues.apache.org/jira/browse/HBASE-22941) | MetaTableAccessor.getMergeRegions() returns parent regions in random order |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22649](https://issues.apache.org/jira/browse/HBASE-22649) | Encode StoreFile path URLs in the UI to handle scenarios where CF contains special characters (like # etc.) |  Major | UI | Ashok shetty | Y. SREENIVASULU REDDY |
| [HBASE-22142](https://issues.apache.org/jira/browse/HBASE-22142) | Space quota: If table inside namespace having space quota is dropped, data size  usage is still considered for the drop table. |  Minor | . | Shardul Singh | Shardul Singh |
| [HBASE-22944](https://issues.apache.org/jira/browse/HBASE-22944) | TableNotFoundException: hbase:quota  is thrown when region server is restarted. |  Minor | Quotas | Shardul Singh | Shardul Singh |
| [HBASE-22012](https://issues.apache.org/jira/browse/HBASE-22012) | SpaceQuota DisableTableViolationPolicy will cause cycles of enable/disable table |  Major | . | Ajeet Rai | Shardul Singh |
| [HBASE-22965](https://issues.apache.org/jira/browse/HBASE-22965) | RS Crash due to DBE reference to an reused ByteBuff |  Major | . | chenxu | chenxu |
| [HBASE-22380](https://issues.apache.org/jira/browse/HBASE-22380) | break circle replication when doing bulkload |  Critical | Replication | chenxu | Wellington Chevreuil |
| [HBASE-23054](https://issues.apache.org/jira/browse/HBASE-23054) | Remove synchronization block from MetaTableMetrics and fix LossyCounting algorithm |  Major | metrics | Ankit Singhal | Ankit Singhal |
| [HBASE-22881](https://issues.apache.org/jira/browse/HBASE-22881) | Fix non-daemon threads in hbase server implementation |  Major | master | Xiaolin Ha | Xiaolin Ha |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22766](https://issues.apache.org/jira/browse/HBASE-22766) | Code Coverage Improvement: Create Unit Tests for ResultStatsUtil |  Trivial | test | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22886](https://issues.apache.org/jira/browse/HBASE-22886) | Code Coverage Improvement: Create Unit Tests for ConnectionId |  Trivial | test | Murtaza Hassan | Rabi Kumar K C |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22960](https://issues.apache.org/jira/browse/HBASE-22960) | Set version as 2.1.7-SNAPSHOT in branch-2.1 |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-22859](https://issues.apache.org/jira/browse/HBASE-22859) | [HBCK2] Fix the orphan regions on filesystem |  Major | documentation, hbck2 | Guanghao Zhang | Michael Stack |
| [HBASE-23014](https://issues.apache.org/jira/browse/HBASE-23014) | Should not show split parent regions in hbck report UI |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22993](https://issues.apache.org/jira/browse/HBASE-22993) | HBCK report UI showed -1 if hbck chore not running |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22796](https://issues.apache.org/jira/browse/HBASE-22796) | [HBCK2] Add fix of overlaps to fixMeta hbck Service |  Major | . | Michael Stack | Sakthi |
| [HBASE-22927](https://issues.apache.org/jira/browse/HBASE-22927) | Upgrade mockito version for Java 11 compatibility |  Major | . | Sakthi | Rabi Kumar K C |
| [HBASE-23097](https://issues.apache.org/jira/browse/HBASE-23097) | Set version as 2.1.7 in branch-2.1 in prep for first RC of 2.1.7 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-23108](https://issues.apache.org/jira/browse/HBASE-23108) | Generate CHANGES.md and RELEASENOTES.md for 2.1.7 |  Major | documentation | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21745](https://issues.apache.org/jira/browse/HBASE-21745) | Make HBCK2 be able to fix issues other than region assignment |  Critical | hbase-operator-tools, hbck2 | Duo Zhang | Michael Stack |
| [HBASE-23023](https://issues.apache.org/jira/browse/HBASE-23023) | upgrade shellcheck used to test in nightly and precommit |  Major | build | Sean Busbey | Sean Busbey |


