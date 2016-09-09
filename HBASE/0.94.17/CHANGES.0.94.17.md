
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

## Release 0.94.17 - 2014-02-25



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10423](https://issues.apache.org/jira/browse/HBASE-10423) | Report back the message of split or rollback failure to the master |  Trivial | regionserver | Harsh J | Harsh J |
| [HBASE-10457](https://issues.apache.org/jira/browse/HBASE-10457) | Print corrupted file information in SnapshotInfo tool without -file option |  Minor | snapshots | bharath v | bharath v |
| [HBASE-10212](https://issues.apache.org/jira/browse/HBASE-10212) | New rpc metric: number of active handler |  Major | IPC/RPC | Chao Shi | Chao Shi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10274](https://issues.apache.org/jira/browse/HBASE-10274) | MiniZookeeperCluster should close ZKDatabase when shutdown ZooKeeperServers |  Minor | . | chendihao | chendihao |
| [HBASE-10320](https://issues.apache.org/jira/browse/HBASE-10320) | Avoid ArrayList.iterator() ExplicitColumnTracker |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10335](https://issues.apache.org/jira/browse/HBASE-10335) | AuthFailedException in zookeeper may block replication forever |  Blocker | Replication, security | Liu Shaohui | Liu Shaohui |
| [HBASE-10249](https://issues.apache.org/jira/browse/HBASE-10249) | TestReplicationSyncUpTool fails because failover takes too long |  Major | . | Lars Hofhansl | Jean-Daniel Cryans |
| [HBASE-10400](https://issues.apache.org/jira/browse/HBASE-10400) | [hbck] Continue if region dir missing on region merge attempt |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10401](https://issues.apache.org/jira/browse/HBASE-10401) | [hbck] perform overlap group merges in parallel |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-10383](https://issues.apache.org/jira/browse/HBASE-10383) | Secure Bulk Load for 'completebulkload' fails for version 0.94.15 |  Critical | Coprocessors | Kashif | Jesse Yates |
| [HBASE-10371](https://issues.apache.org/jira/browse/HBASE-10371) | Compaction creates empty hfile, then selects this file for compaction and creates empty hfile and over again |  Major | . | binlijin | binlijin |
| [HBASE-10448](https://issues.apache.org/jira/browse/HBASE-10448) | ZKUtil create and watch methods don't set watch in some cases |  Major | Zookeeper | Jerry He | Jerry He |
| [HBASE-7963](https://issues.apache.org/jira/browse/HBASE-7963) | HBase VerifyReplication not working when security enabled |  Major | Replication, security | Water Chow | Matteo Bertozzi |
| [HBASE-10319](https://issues.apache.org/jira/browse/HBASE-10319) | HLog should roll periodically to allow DN decommission to eventually complete. |  Major | . | Jonathan Hsieh | Matteo Bertozzi |
| [HBASE-10470](https://issues.apache.org/jira/browse/HBASE-10470) | Import generates huge log file while importing large amounts of data |  Critical | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10363](https://issues.apache.org/jira/browse/HBASE-10363) | [0.94] TestInputSampler and TestInputSamplerTool fail under hadoop 2.0/23 profiles. |  Critical | . | Jonathan Hsieh | Lars Hofhansl |
| [HBASE-10340](https://issues.apache.org/jira/browse/HBASE-10340) | [BACKPORT] HBASE-9892 Add info port to ServerName to support multi instances in a node |  Major | . | stack | stack |
| [HBASE-10489](https://issues.apache.org/jira/browse/HBASE-10489) | TestImportExport fails in 0.94 with Hadoop2 |  Major | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10493](https://issues.apache.org/jira/browse/HBASE-10493) | InclusiveStopFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10485](https://issues.apache.org/jira/browse/HBASE-10485) | PrefixFilter#filterKeyValue() should perform filtering on row key |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10481](https://issues.apache.org/jira/browse/HBASE-10481) | API Compatibility JDiff script does not properly handle arguments in reverse order |  Minor | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-10505](https://issues.apache.org/jira/browse/HBASE-10505) | Import.filterKv does not call Filter.filterRowKey |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10482](https://issues.apache.org/jira/browse/HBASE-10482) | ReplicationSyncUp doesn't clean up its ZK, needed for tests |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-10508](https://issues.apache.org/jira/browse/HBASE-10508) | Backport HBASE-10365 'HBaseFsck should clean up connection properly when repair is completed' to 0.94 and 0.96 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10506](https://issues.apache.org/jira/browse/HBASE-10506) | Fail-fast if client connection is lost before the real call be executed in RPC layer |  Major | IPC/RPC | Liang Xie | Liang Xie |
| [HBASE-10545](https://issues.apache.org/jira/browse/HBASE-10545) | RS Hangs waiting on region to close on shutdown; has to timeout before can go down |  Major | . | stack | stack |
| [HBASE-10551](https://issues.apache.org/jira/browse/HBASE-10551) | Change local mode back to one RS thread by default |  Blocker | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10555](https://issues.apache.org/jira/browse/HBASE-10555) | Backport HBASE-8519 to 0.94, Backup master will never come up if primary master dies during initialization |  Minor | . | Jingcheng Du | Jerry He |
| [HBASE-10552](https://issues.apache.org/jira/browse/HBASE-10552) | HFilePerformanceEvaluation.GaussianRandomReadBenchmark fails sometimes. |  Minor | . | Lars Hofhansl |  |
| [HBASE-10562](https://issues.apache.org/jira/browse/HBASE-10562) | Fix TestMultiTableInputFormat for Hadoop 2 in 0.94 |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10539](https://issues.apache.org/jira/browse/HBASE-10539) | HRegion.addAndGetGlobalMemstoreSize returns previous size |  Major | regionserver | Honghua Feng | Honghua Feng |
| [HBASE-10546](https://issues.apache.org/jira/browse/HBASE-10546) | Two scanner objects are open for each hbase map task but only one scanner object is closed |  Major | . | Vasu Mariyala | Vasu Mariyala |
| [HBASE-10501](https://issues.apache.org/jira/browse/HBASE-10501) | Improve IncreasingToUpperBoundRegionSplitPolicy to avoid too many regions |  Critical | . | Lars Hofhansl | Lars Hofhansl |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10480](https://issues.apache.org/jira/browse/HBASE-10480) | TestLogRollPeriod#testWithEdits may fail due to insufficient waiting |  Minor | test | Ted Yu | Matteo Bertozzi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10473](https://issues.apache.org/jira/browse/HBASE-10473) | Add utility for adorning http Context |  Major | UI | stack | stack |


