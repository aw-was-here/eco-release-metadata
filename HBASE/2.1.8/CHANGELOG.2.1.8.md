
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

## Release 2.1.8 - 2019-12-03



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23038](https://issues.apache.org/jira/browse/HBASE-23038) | Provide consistent and clear logging about disabling chores |  Minor | master, regionserver | Sean Busbey | Sanjeet Nishad |
| [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | Define a public interface for Canary and move existing implementation to LimitedPrivate |  Critical | canary | Duo Zhang | Rushabh Shah |
| [HBASE-23116](https://issues.apache.org/jira/browse/HBASE-23116) | LoadBalancer should log table name when balancing per table |  Minor | . | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-23095](https://issues.apache.org/jira/browse/HBASE-23095) | Reuse FileStatus in StoreFileInfo |  Major | mob, snapshots | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23114](https://issues.apache.org/jira/browse/HBASE-23114) | Use archiveArtifacts in Jenkinsfiles |  Trivial | . | Peter Somogyi | Peter Somogyi |
| [HBASE-23093](https://issues.apache.org/jira/browse/HBASE-23093) | Avoid Optional Anti-Pattern where possible |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | Change the value of "Requests Per Second" on WEBUI |  Major | metrics, UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | HBase Canary region success count metrics reflect column family successes, not region successes |  Minor | canary | Caroline | Caroline |
| [HBASE-23207](https://issues.apache.org/jira/browse/HBASE-23207) | Log a region open journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23221](https://issues.apache.org/jira/browse/HBASE-23221) | Polish the WAL interface after HBASE-23181 |  Major | regionserver, wal | Duo Zhang | Michael Stack |
| [HBASE-23082](https://issues.apache.org/jira/browse/HBASE-23082) | Backport low-latency snapshot tracking for space quotas to 2.x |  Major | Quotas | Josh Elser | Josh Elser |
| [HBASE-23228](https://issues.apache.org/jira/browse/HBASE-23228) | Allow for jdk8 specific modules on branch-1 in precommit/nightly testing |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-23245](https://issues.apache.org/jira/browse/HBASE-23245) | All MutableHistogram implementations should remove maxExpected |  Major | metrics | Viraj Jasani | Viraj Jasani |
| [HBASE-23283](https://issues.apache.org/jira/browse/HBASE-23283) | Provide clear and consistent logging about the period of enabled chores |  Minor | Operability | Sean Busbey | Mingliang Liu |
| [HBASE-19450](https://issues.apache.org/jira/browse/HBASE-19450) | Add log about average execution time for ScheduledChore |  Minor | Operability | Reid Chan | Reid Chan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23119](https://issues.apache.org/jira/browse/HBASE-23119) | ArrayIndexOutOfBoundsException in PrivateCellUtil#qualifierStartsWith |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-23125](https://issues.apache.org/jira/browse/HBASE-23125) | TestRSGroupsAdmin2 is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-23094](https://issues.apache.org/jira/browse/HBASE-23094) | Wrong log message in simpleRegionNormaliser while checking if merge is enabled. |  Minor | . | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-22903](https://issues.apache.org/jira/browse/HBASE-22903) | alter\_status command is broken |  Major | metrics, shell | Viraj Jasani | Viraj Jasani |
| [HBASE-23134](https://issues.apache.org/jira/browse/HBASE-23134) | Enable\_all and Disable\_all table by Regex fail from Shell |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23139](https://issues.apache.org/jira/browse/HBASE-23139) | MapReduce jobs lauched from convenience distribution are nonfunctional |  Blocker | mapreduce | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23138](https://issues.apache.org/jira/browse/HBASE-23138) | Drop\_all table by regex fail from Shell -  Similar to HBASE-23134 |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23115](https://issues.apache.org/jira/browse/HBASE-23115) | Unit change for StoreFileSize and MemStoreSize |  Minor | metrics, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23154](https://issues.apache.org/jira/browse/HBASE-23154) | list\_deadservers return incorrect no of rows |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-21540](https://issues.apache.org/jira/browse/HBASE-21540) | when set property  "hbase.systemtables.compacting.memstore.type" to "basic" or "eager" will  cause an exception |  Major | conf | lixiaobao | lixiaobao |
| [HBASE-23155](https://issues.apache.org/jira/browse/HBASE-23155) | May NPE when concurrent AsyncNonMetaRegionLocator#updateCachedLocationOnError |  Major | asyncclient | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22370](https://issues.apache.org/jira/browse/HBASE-22370) | ByteBuf LEAK ERROR |  Major | rpc, wal | Lijin Bin | Lijin Bin |
| [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | If fail to open reference because FNFE, make it plain it is a Reference |  Major | Operability | Michael Stack | Michael Stack |
| [HBASE-23193](https://issues.apache.org/jira/browse/HBASE-23193) | ConnectionImplementation.isTableAvailable can not deal with meta table on branch-2.x |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23181](https://issues.apache.org/jira/browse/HBASE-23181) | Blocked WAL archive: "LogRoller: Failed to schedule flush of XXXX, because it is not online on us" |  Major | regionserver, wal | Michael Stack | Duo Zhang |
| [HBASE-23222](https://issues.apache.org/jira/browse/HBASE-23222) | Better logging and mitigation for MOB compaction failures |  Critical | mob | Sean Busbey | Sean Busbey |
| [HBASE-23171](https://issues.apache.org/jira/browse/HBASE-23171) | Ensure region state error messages include server making report (branch-2.1) |  Minor | amv2, Operability | Michael Stack | Sean Busbey |
| [HBASE-20827](https://issues.apache.org/jira/browse/HBASE-20827) | Add pause when retrying after CallQueueTooBigException for reportRegionStateTransition |  Major | Region Assignment | Ankit Singhal | Ankit Singhal |
| [HBASE-23192](https://issues.apache.org/jira/browse/HBASE-23192) | CatalogJanitor consistencyCheck does not log problematic row on exception |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-22739](https://issues.apache.org/jira/browse/HBASE-22739) | ArrayIndexOutOfBoundsException when balance |  Major | Balancer | casuallc | Lijin Bin |
| [HBASE-23231](https://issues.apache.org/jira/browse/HBASE-23231) | ReplicationSource do not update metrics after refresh |  Major | wal | Lijin Bin | Lijin Bin |
| [HBASE-23244](https://issues.apache.org/jira/browse/HBASE-23244) | NPEs running Canary |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-23241](https://issues.apache.org/jira/browse/HBASE-23241) | TestExecutorService sometimes fail |  Major | test | Lijin Bin | Lijin Bin |
| [HBASE-23247](https://issues.apache.org/jira/browse/HBASE-23247) | [hbck2] Schedule SCPs for 'Unknown Servers' |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23243](https://issues.apache.org/jira/browse/HBASE-23243) | [pv2] Filter out SUCCESS procedures; on decent-sized cluster, plethora overwhelms problems |  Major | proc-v2, UI | Michael Stack | Michael Stack |
| [HBASE-21458](https://issues.apache.org/jira/browse/HBASE-21458) | Error: Could not find or load main class org.apache.hadoop.hbase.util.GetJavaProperty |  Minor | build, Client | Michael Stack | Michael Stack |
| [HBASE-22980](https://issues.apache.org/jira/browse/HBASE-22980) | HRegionPartioner getPartition() method incorrectly partitions the regions of the table. |  Major | mapreduce | Shardul Singh | Shardul Singh |
| [HBASE-23262](https://issues.apache.org/jira/browse/HBASE-23262) | Cannot load Master UI |  Major | master, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-18439](https://issues.apache.org/jira/browse/HBASE-18439) | Subclasses of o.a.h.h.chaos.actions.Action all use the same logger |  Minor | integration tests | Mike Drob | Rabi Kumar K C |
| [HBASE-23290](https://issues.apache.org/jira/browse/HBASE-23290) | shell processlist command is broken |  Major | shell | Michael Stack | Mingliang Liu |
| [HBASE-23294](https://issues.apache.org/jira/browse/HBASE-23294) | ReplicationBarrierCleaner should delete all the barriers for a removed region which does not belong to any serial replication peer |  Major | master, Replication | Duo Zhang | Duo Zhang |
| [HBASE-23318](https://issues.apache.org/jira/browse/HBASE-23318) | LoadTestTool doesn't start |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23175](https://issues.apache.org/jira/browse/HBASE-23175) | Yarn unable to acquire delegation token for HBase Spark jobs |  Major | security, spark | Ankit Singhal | Ankit Singhal |
| [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23131](https://issues.apache.org/jira/browse/HBASE-23131) | Set version as 2.1.8-SNAPSHOT in branch-2.1 |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-23163](https://issues.apache.org/jira/browse/HBASE-23163) | Refactor HStore.getStorefilesSize related methods |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-23136](https://issues.apache.org/jira/browse/HBASE-23136) | PartionedMobFileCompactor bulkloaded files shouldn't get replicated (addressing buklload replication related issue raised in HBASE-22380) |  Critical | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23300](https://issues.apache.org/jira/browse/HBASE-23300) | Set version as 2.1.8 in branch-2.1 in prep for first RC of 2.1.8 |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-23301](https://issues.apache.org/jira/browse/HBASE-23301) | Generate CHANGES.md and RELEASENOTES.md for 2.1.8 |  Major | documentation | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-23053](https://issues.apache.org/jira/browse/HBASE-23053) | Disable concurrent nightly builds |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs |  Blocker | dependencies, REST, security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | Log message about CleanerChore delegate initialization should be at INFO |  Minor | master, Operability | Sean Busbey | Rabi Kumar K C |
| [HBASE-23236](https://issues.apache.org/jira/browse/HBASE-23236) | Upgrade to yetus 0.11.1 |  Major | build | Duo Zhang | Duo Zhang |


