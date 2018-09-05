
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

## Release 0.98.18 - 2016-03-25

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15111](https://issues.apache.org/jira/browse/HBASE-15111) | "hbase version" should write to stdout |  Trivial | util | Gary Helmling | Gary Helmling |
| [HBASE-15290](https://issues.apache.org/jira/browse/HBASE-15290) | Hbase Rest CheckAndAPI should save other cells along with compared cell |  Major | hbase | Ajith |  |
| [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | Hbase Rest CheckAndDeleteAPi should be able to delete more cells |  Major | hbase | Ajith | Ajith |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15125](https://issues.apache.org/jira/browse/HBASE-15125) | HBaseFsck's adoptHdfsOrphan function creates region with wrong end key boundary |  Major | hbck | chenrongwei | chenrongwei |
| [HBASE-15322](https://issues.apache.org/jira/browse/HBASE-15322) | Operations using Unsafe path broken for platforms not having sun.misc.Unsafe |  Critical | hbase | Anant Sharma | Anoop Sam John |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15135](https://issues.apache.org/jira/browse/HBASE-15135) | Add metrics for storefile age |  Major | . | Elliott Clark | Mikhail Antonov |
| [HBASE-15181](https://issues.apache.org/jira/browse/HBASE-15181) | A simple implementation of date based tiered compaction |  Major | Compaction | Clara Xiong | Clara Xiong |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15066](https://issues.apache.org/jira/browse/HBASE-15066) | Small improvements to Canary tool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15129](https://issues.apache.org/jira/browse/HBASE-15129) | Set default value for hbase.fs.tmp.dir rather than fully depend on hbase-default.xml |  Major | mapreduce | Yu Li | Yu Li |
| [HBASE-15211](https://issues.apache.org/jira/browse/HBASE-15211) | Don't run the CatalogJanitor if there are regions in transition |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-15229](https://issues.apache.org/jira/browse/HBASE-15229) | Canary Tools should not call System.Exit on error |  Critical | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-15246](https://issues.apache.org/jira/browse/HBASE-15246) | Backport branch-1 HBasePerformanceEvaluation to 0.98 |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-15219](https://issues.apache.org/jira/browse/HBASE-15219) | Canary tool does not return non-zero exit code when one of regions is in stuck state |  Critical | canary | Vishal Khandelwal | Ted Yu |
| [HBASE-12940](https://issues.apache.org/jira/browse/HBASE-12940) | Expose listPeerConfigs and getPeerConfig to the HBase shell |  Major | shell | Kevin Risden | Geoffrey Jacoby |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14975](https://issues.apache.org/jira/browse/HBASE-14975) | Don't color the total RIT line yellow if it's zero |  Major | UI | Elliott Clark | Pallavi Adusumilli |
| [HBASE-15083](https://issues.apache.org/jira/browse/HBASE-15083) | Gets from Multiactions are not counted in metrics for gets. |  Major | . | Elliott Clark | Heng Chen |
| [HBASE-15152](https://issues.apache.org/jira/browse/HBASE-15152) | Automatically include prefix-tree module in MR jobs if present |  Major | mapreduce | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15133](https://issues.apache.org/jira/browse/HBASE-15133) | Data loss after compaction when a row has more than Integer.MAX\_VALUE columns |  Major | Compaction | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-15148](https://issues.apache.org/jira/browse/HBASE-15148) | Resolve IS2\_INCONSISTENT\_SYNC findbugs warning in AuthenticationTokenSecretManager |  Major | . | Yu Li | Yu Li |
| [HBASE-15145](https://issues.apache.org/jira/browse/HBASE-15145) | HBCK and Replication should authenticate to zookepeer using server principal |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15019](https://issues.apache.org/jira/browse/HBASE-15019) | Replication stuck when HDFS is restarted |  Major | Replication, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15190](https://issues.apache.org/jira/browse/HBASE-15190) | Monkey dies when running on shared cluster (gives up when can't kill the other fellows processes) |  Major | integration tests | stack | stack |
| [HBASE-15200](https://issues.apache.org/jira/browse/HBASE-15200) | ZooKeeper znode ACL checks should only compare the shortname |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-15218](https://issues.apache.org/jira/browse/HBASE-15218) | On RS crash and replay of WAL, loosing all Tags in Cells |  Blocker | Recovery, regionserver, security | Anoop Sam John | Anoop Sam John |
| [HBASE-15214](https://issues.apache.org/jira/browse/HBASE-15214) | Valid mutate Ops fail with RPC Codec in use and region moves across |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15217](https://issues.apache.org/jira/browse/HBASE-15217) | Canary -regionserver fails with cast exception |  Critical | canary | Vishal Khandelwal | Ted Yu |
| [HBASE-15216](https://issues.apache.org/jira/browse/HBASE-15216) | Canary does not accept config params from command line |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14192](https://issues.apache.org/jira/browse/HBASE-14192) | Fix REST Cluster constructor with String List |  Minor | REST | Rick Kellogg | Andrew Purtell |
| [HBASE-15252](https://issues.apache.org/jira/browse/HBASE-15252) | Data loss when replaying wal if HDFS timeout |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-15198](https://issues.apache.org/jira/browse/HBASE-15198) | RPC client not using Codec and CellBlock for puts by default |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15274](https://issues.apache.org/jira/browse/HBASE-15274) | ClientSideRegionScanner's reaction to Scan#setBatch is not consistent between HBase versions |  Minor | . | Youngjoon Kim | Youngjoon Kim |
| [HBASE-15279](https://issues.apache.org/jira/browse/HBASE-15279) | OrderedBytes.isEncodedValue does not check for int8 and int16 types |  Major | . | Robert Yokota | Robert Yokota |
| [HBASE-15247](https://issues.apache.org/jira/browse/HBASE-15247) | InclusiveStopFilter does not respect reverse Filter property |  Major | Filters | Rick Moritz | Amal Joshy |
| [HBASE-15393](https://issues.apache.org/jira/browse/HBASE-15393) | Enable table replication command will fail when parent znode is not default in peer cluster |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15423](https://issues.apache.org/jira/browse/HBASE-15423) | Fix integration issue came due HBASE-15216 from main to 0.98. |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-15430](https://issues.apache.org/jira/browse/HBASE-15430) | Failed taking snapshot - Manifest proto-message too large |  Critical | snapshots | JunHo Cho | JunHo Cho |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15114](https://issues.apache.org/jira/browse/HBASE-15114) | NPE when IPC server ByteBuffer reservoir is turned off |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15171](https://issues.apache.org/jira/browse/HBASE-15171) | Avoid counting duplicate kv and generating lots of small hfiles in PutSortReducer |  Major | . | Yu Li | Yu Li |
| [HBASE-15202](https://issues.apache.org/jira/browse/HBASE-15202) | Reduce garbage while setting response |  Minor | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15238](https://issues.apache.org/jira/browse/HBASE-15238) | HFileReaderV2 prefetch overreaches; runs off the end of the data |  Major | . | stack | stack |
| [HBASE-15245](https://issues.apache.org/jira/browse/HBASE-15245) | Port HBASE-15177 (Reduce garbage created under high load) to 0.98 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-15365](https://issues.apache.org/jira/browse/HBASE-15365) | Do not write to '/tmp' in TestHBaseConfiguration |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-15435](https://issues.apache.org/jira/browse/HBASE-15435) | Add WAL (in bytes) written metric |  Major | . | Alicia Ying Shu | Alicia Ying Shu |


