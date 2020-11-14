
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

## Release 2.2.2 - 2019-10-25



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11062](https://issues.apache.org/jira/browse/HBASE-11062) | hbtop |  Major | hbtop | Andrew Kyle Purtell | Toshihiro Suzuki |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22701](https://issues.apache.org/jira/browse/HBASE-22701) | Better handle invalid local directory for DynamicClassLoader |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-22899](https://issues.apache.org/jira/browse/HBASE-22899) | logging improvements for snapshot operations w/large manifests |  Minor | snapshots | Sean Busbey | Rabi Kumar K C |
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
| [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | Define a public interface for Canary and move existing implementation to LimitedPrivate |  Critical | canary | Duo Zhang | Rushabh Shah |
| [HBASE-23116](https://issues.apache.org/jira/browse/HBASE-23116) | LoadBalancer should log table name when balancing per table |  Minor | . | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-23095](https://issues.apache.org/jira/browse/HBASE-23095) | Reuse FileStatus in StoreFileInfo |  Major | mob, snapshots | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23140](https://issues.apache.org/jira/browse/HBASE-23140) | Remove unknown table error |  Minor | . | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23114](https://issues.apache.org/jira/browse/HBASE-23114) | Use archiveArtifacts in Jenkinsfiles |  Trivial | . | Peter Somogyi | Peter Somogyi |
| [HBASE-23093](https://issues.apache.org/jira/browse/HBASE-23093) | Avoid Optional Anti-Pattern where possible |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | Change the value of "Requests Per Second" on WEBUI |  Major | metrics, UI | Guangxu Cheng | Guangxu Cheng |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22981](https://issues.apache.org/jira/browse/HBASE-22981) | Remove unused flags for Yetus |  Critical | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22963](https://issues.apache.org/jira/browse/HBASE-22963) | Netty ByteBuf leak in rpc client implementation |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-22964](https://issues.apache.org/jira/browse/HBASE-22964) | Fix flaky TestClusterRestartFailover and TestClusterRestartFailoverSplitWithoutZk |  Major | . | Guanghao Zhang | Guanghao Zhang |
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
| [HBASE-22649](https://issues.apache.org/jira/browse/HBASE-22649) | Encode StoreFile path URLs in the UI to handle scenarios where CF contains special characters (like # etc.) |  Major | UI | Ashok shetty | Y. SREENIVASULU REDDY |
| [HBASE-22142](https://issues.apache.org/jira/browse/HBASE-22142) | Space quota: If table inside namespace having space quota is dropped, data size  usage is still considered for the drop table. |  Minor | . | Shardul Singh | Shardul Singh |
| [HBASE-22944](https://issues.apache.org/jira/browse/HBASE-22944) | TableNotFoundException: hbase:quota  is thrown when region server is restarted. |  Minor | Quotas | Shardul Singh | Shardul Singh |
| [HBASE-22012](https://issues.apache.org/jira/browse/HBASE-22012) | SpaceQuota DisableTableViolationPolicy will cause cycles of enable/disable table |  Major | . | Ajeet Rai | Shardul Singh |
| [HBASE-22965](https://issues.apache.org/jira/browse/HBASE-22965) | RS Crash due to DBE reference to an reused ByteBuff |  Major | . | chenxu | chenxu |
| [HBASE-23079](https://issues.apache.org/jira/browse/HBASE-23079) | RegionRemoteProcedureBase should override setTimeoutFailure |  Blocker | amv2 | Xiaolin Ha | Duo Zhang |
| [HBASE-22380](https://issues.apache.org/jira/browse/HBASE-22380) | break circle replication when doing bulkload |  Critical | Replication | chenxu | Wellington Chevreuil |
| [HBASE-23054](https://issues.apache.org/jira/browse/HBASE-23054) | Remove synchronization block from MetaTableMetrics and fix LossyCounting algorithm |  Major | metrics | Ankit Singhal | Ankit Singhal |
| [HBASE-23119](https://issues.apache.org/jira/browse/HBASE-23119) | ArrayIndexOutOfBoundsException in PrivateCellUtil#qualifierStartsWith |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-23125](https://issues.apache.org/jira/browse/HBASE-23125) | TestRSGroupsAdmin2 is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-23094](https://issues.apache.org/jira/browse/HBASE-23094) | Wrong log message in simpleRegionNormaliser while checking if merge is enabled. |  Minor | . | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-22903](https://issues.apache.org/jira/browse/HBASE-22903) | alter\_status command is broken |  Major | metrics, shell | Viraj Jasani | Viraj Jasani |
| [HBASE-23134](https://issues.apache.org/jira/browse/HBASE-23134) | Enable\_all and Disable\_all table by Regex fail from Shell |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-22767](https://issues.apache.org/jira/browse/HBASE-22767) | System table RIT STUCK if their RSGroup has no highest version RSes |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-23139](https://issues.apache.org/jira/browse/HBASE-23139) | MapReduce jobs lauched from convenience distribution are nonfunctional |  Blocker | mapreduce | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23138](https://issues.apache.org/jira/browse/HBASE-23138) | Drop\_all table by regex fail from Shell -  Similar to HBASE-23134 |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23115](https://issues.apache.org/jira/browse/HBASE-23115) | Unit change for StoreFileSize and MemStoreSize |  Minor | metrics, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23152](https://issues.apache.org/jira/browse/HBASE-23152) | Compaction\_switch does not work by RegionServer name |  Major | Client, Compaction | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23154](https://issues.apache.org/jira/browse/HBASE-23154) | list\_deadservers return incorrect no of rows |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-21540](https://issues.apache.org/jira/browse/HBASE-21540) | when set property  "hbase.systemtables.compacting.memstore.type" to "basic" or "eager" will  cause an exception |  Major | conf | lixiaobao | lixiaobao |
| [HBASE-23155](https://issues.apache.org/jira/browse/HBASE-23155) | May NPE when concurrent AsyncNonMetaRegionLocator#updateCachedLocationOnError |  Major | asyncclient | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23078](https://issues.apache.org/jira/browse/HBASE-23078) | BaseLoadBalancer should consider region replicas when randomAssignment and roundRobinAssignment |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22370](https://issues.apache.org/jira/browse/HBASE-22370) | ByteBuf LEAK ERROR |  Major | rpc, wal | Lijin Bin | Lijin Bin |
| [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22859](https://issues.apache.org/jira/browse/HBASE-22859) | [HBCK2] Fix the orphan regions on filesystem |  Major | documentation, hbck2 | Guanghao Zhang | Michael Stack |
| [HBASE-23014](https://issues.apache.org/jira/browse/HBASE-23014) | Should not show split parent regions in hbck report UI |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22993](https://issues.apache.org/jira/browse/HBASE-22993) | HBCK report UI showed -1 if hbck chore not running |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22796](https://issues.apache.org/jira/browse/HBASE-22796) | [HBCK2] Add fix of overlaps to fixMeta hbck Service |  Major | . | Michael Stack | Sakthi |
| [HBASE-23027](https://issues.apache.org/jira/browse/HBASE-23027) | Set version to 2.2.2-SNAPSHOT in branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22927](https://issues.apache.org/jira/browse/HBASE-22927) | Upgrade mockito version for Java 11 compatibility |  Major | . | Sakthi | Rabi Kumar K C |
| [HBASE-23163](https://issues.apache.org/jira/browse/HBASE-23163) | Refactor HStore.getStorefilesSize related methods |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-23167](https://issues.apache.org/jira/browse/HBASE-23167) | Set version as 2.2.2 in branch-2.2 in prep for first RC of 2.2.2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-23168](https://issues.apache.org/jira/browse/HBASE-23168) | Generate CHANGES.md and RELEASENOTES.md for 2.2.2 |  Major | documentation | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21745](https://issues.apache.org/jira/browse/HBASE-21745) | Make HBCK2 be able to fix issues other than region assignment |  Critical | hbase-operator-tools, hbck2 | Duo Zhang | Michael Stack |
| [HBASE-23023](https://issues.apache.org/jira/browse/HBASE-23023) | upgrade shellcheck used to test in nightly and precommit |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-23053](https://issues.apache.org/jira/browse/HBASE-23053) | Disable concurrent nightly builds |  Minor | build | Peter Somogyi | Peter Somogyi |


