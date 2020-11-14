
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

## Release 2.0.4 - 2019-01-03



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21146](https://issues.apache.org/jira/browse/HBASE-21146) | (2.0) Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes |  Minor | canary, Zookeeper | David Manning | David Manning |
| [HBASE-21413](https://issues.apache.org/jira/browse/HBASE-21413) | Empty meta log doesn't get split when restart whole cluster |  Major | . | Jingyun Tian | Allan Yang |
| [HBASE-21635](https://issues.apache.org/jira/browse/HBASE-21635) | Use maven enforcer to ban imports from illegal packages |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-21631](https://issues.apache.org/jira/browse/HBASE-21631) | list\_quotas should print human readable values for LIMIT |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21640](https://issues.apache.org/jira/browse/HBASE-21640) | Remove the TODO when increment zero |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21590](https://issues.apache.org/jira/browse/HBASE-21590) | Optimize trySkipToNextColumn in StoreScanner a bit |  Critical | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21507](https://issues.apache.org/jira/browse/HBASE-21507) | Compaction failed when execute AbstractMultiFileWriter.beforeShipped() method |  Critical | Compaction, regionserver | lixiaobao | lixiaobao |
| [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | CellCodec Written To WAL Before It's Verified |  Critical | wal | David Mollitor | David Mollitor |
| [HBASE-21504](https://issues.apache.org/jira/browse/HBASE-21504) | If enable FIFOCompactionPolicy, a compaction may write a "empty" hfile whose maxTimeStamp is long max. This kind of hfile will never be archived. |  Critical | Compaction | xuming | Zheng Hu |
| [HBASE-21518](https://issues.apache.org/jira/browse/HBASE-21518) | TestMasterFailoverWithProcedures is flaky |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21544](https://issues.apache.org/jira/browse/HBASE-21544) | Backport HBASE-20734 Colocate recovered edits directory with hbase.wal.dir |  Major | wal | Josh Elser | Josh Elser |
| [HBASE-21551](https://issues.apache.org/jira/browse/HBASE-21551) | Memory leak when use scan with STREAM at server side |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21559](https://issues.apache.org/jira/browse/HBASE-21559) | The RestoreSnapshotFromClientTestBase related UT are flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21568](https://issues.apache.org/jira/browse/HBASE-21568) | Disable use of BlockCache for LoadIncrementalHFiles |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-21589](https://issues.apache.org/jira/browse/HBASE-21589) | TestCleanupMetaWAL fails |  Blocker | test, wal | Michael Stack | Michael Stack |
| [HBASE-21592](https://issues.apache.org/jira/browse/HBASE-21592) | quota.addGetResult(r)  throw  NPE |  Major | . | xuqinya | xuqinya |
| [HBASE-21498](https://issues.apache.org/jira/browse/HBASE-21498) | Master OOM when SplitTableRegionProcedure new CacheConfig and instantiate a new BlockCache |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21610](https://issues.apache.org/jira/browse/HBASE-21610) | numOpenConnections metric is set to -1 when zero server channel exist |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21620](https://issues.apache.org/jira/browse/HBASE-21620) | Problem in scan query when using more than one column prefix filter in some cases. |  Major | Scanners | Mohamed Mohideen Meeran | Zheng Hu |
| [HBASE-21621](https://issues.apache.org/jira/browse/HBASE-21621) | Reversed scan does not return expected  number of rows |  Critical | Scanners | Nihal Jain | Guanghao Zhang |
| [HBASE-21629](https://issues.apache.org/jira/browse/HBASE-21629) | draining\_servers.rb is broken |  Major | scripts | Nihal Jain | Nihal Jain |
| [HBASE-21545](https://issues.apache.org/jira/browse/HBASE-21545) | NEW\_VERSION\_BEHAVIOR breaks Get/Scan with specified columns |  Major | API | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-21646](https://issues.apache.org/jira/browse/HBASE-21646) | Flakey TestTableSnapshotInputFormat; DisableTable not completing... |  Major | test | Michael Stack | Michael Stack |
| [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result |  Critical | Client | Jermy Li | Guanghao Zhang |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | meta, metrics | Ted Yu | Ted Yu |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20136](https://issues.apache.org/jira/browse/HBASE-20136) | TestKeyValue misses ClassRule and Category annotations |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21557](https://issues.apache.org/jira/browse/HBASE-21557) | Set version to 2.0.4 on branch-2.0 so can cut an RC |  Major | community | Michael Stack | Michael Stack |
| [HBASE-21566](https://issues.apache.org/jira/browse/HBASE-21566) | Release notes and changes for 2.0.4RC0 and 2.1.2RC0 |  Major | community | Michael Stack | Michael Stack |
| [HBASE-21570](https://issues.apache.org/jira/browse/HBASE-21570) | Add write buffer periodic flush support for AsyncBufferedMutator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21401](https://issues.apache.org/jira/browse/HBASE-21401) | Sanity check when constructing the KeyValue |  Critical | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21670](https://issues.apache.org/jira/browse/HBASE-21670) | Add 2.0.4 to download page |  Major | . | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21517](https://issues.apache.org/jira/browse/HBASE-21517) | Move the getTableRegionForRow method from HMaster to TestMaster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21495](https://issues.apache.org/jira/browse/HBASE-21495) | Create 2.0.3 Release |  Major | . | Michael Stack | Michael Stack |


