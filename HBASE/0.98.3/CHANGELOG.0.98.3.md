
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

## Release 0.98.3 - 2014-06-07



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11119](https://issues.apache.org/jira/browse/HBASE-11119) | Update ExportSnapShot to optionally not use a tmp file on external file system |  Minor | snapshots | Ted Malaska | Ted Malaska |
| [HBASE-11128](https://issues.apache.org/jira/browse/HBASE-11128) | Add -target option to ExportSnapshot to export with a different name |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11134](https://issues.apache.org/jira/browse/HBASE-11134) | Add a -list-snapshots option to SnapshotInfo |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11137](https://issues.apache.org/jira/browse/HBASE-11137) | Add mapred.TableSnapshotInputFormat |  Major | mapreduce, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-6990](https://issues.apache.org/jira/browse/HBASE-6990) | Pretty print TTL |  Minor | Usability | Jean-Daniel Cryans | Esteban Gutierrez |
| [HBASE-11219](https://issues.apache.org/jira/browse/HBASE-11219) | HRegionServer#createRegionLoad() should reuse RegionLoad.Builder instance when called in a loop |  Major | . | Ted Yu | Ted Yu |
| [HBASE-9857](https://issues.apache.org/jira/browse/HBASE-9857) | Blockcache prefetch option |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11211](https://issues.apache.org/jira/browse/HBASE-11211) | LoadTestTool option for specifying number of regions per server |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11048](https://issues.apache.org/jira/browse/HBASE-11048) | Support setting custom priority per client RPC |  Major | Client | Jesse Yates | Jesse Yates |
| [HBASE-11220](https://issues.apache.org/jira/browse/HBASE-11220) | Add listeners to ServerManager and AssignmentManager |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11259](https://issues.apache.org/jira/browse/HBASE-11259) | Compression.java different compressions load system classpath differently causing errors |  Minor | . | Enoch Hsu | Enoch Hsu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9445](https://issues.apache.org/jira/browse/HBASE-9445) | Snapshots should create column family dirs for empty regions |  Major | snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-11117](https://issues.apache.org/jira/browse/HBASE-11117) | [AccessController] checkAndPut/Delete hook should check only Read permission |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11133](https://issues.apache.org/jira/browse/HBASE-11133) | Add an option to skip snapshot verification after Export |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11143](https://issues.apache.org/jira/browse/HBASE-11143) | Improve replication metrics |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10251](https://issues.apache.org/jira/browse/HBASE-10251) | Restore API Compat for PerformanceEvaluation.generateValue() |  Major | Client | Aleksandr Shulman | Dima Spivak |
| [HBASE-11169](https://issues.apache.org/jira/browse/HBASE-11169) | nit: fix incorrect javadoc in OrderedBytes about BlobVar and BlobCopy |  Trivial | util | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11168](https://issues.apache.org/jira/browse/HBASE-11168) | [docs] Remove references to RowLocks in post 0.96 docs. |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11189](https://issues.apache.org/jira/browse/HBASE-11189) | Subprocedure should be marked as complete upon failure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11200](https://issues.apache.org/jira/browse/HBASE-11200) | AsyncWriter of FSHLog might throw ArrayIndexOutOfBoundsException |  Minor | wal | Jianwei Cui | Jianwei Cui |
| [HBASE-10417](https://issues.apache.org/jira/browse/HBASE-10417) | index is not incremented in PutSortReducer#reduce() |  Minor | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11217](https://issues.apache.org/jira/browse/HBASE-11217) | Race between SplitLogManager task creation + TimeoutMonitor |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11212](https://issues.apache.org/jira/browse/HBASE-11212) | Fix increment index in KeyValueSortReducer |  Minor | . | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-11237](https://issues.apache.org/jira/browse/HBASE-11237) | Bulk load initiated by user other than hbase fails |  Critical | . | Dima Spivak | Jimmy Xiang |
| [HBASE-11149](https://issues.apache.org/jira/browse/HBASE-11149) | Wire encryption is broken |  Major | IPC/RPC | Devaraj Das | Devaraj Das |
| [HBASE-10831](https://issues.apache.org/jira/browse/HBASE-10831) | IntegrationTestIngestWithACL is not setting up LoadTestTool correctly |  Major | . | Andrew Purtell | Vandana Ayyalasomayajula |
| [HBASE-11226](https://issues.apache.org/jira/browse/HBASE-11226) | Document and increase the default value for hbase.hstore.flusher.count |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11251](https://issues.apache.org/jira/browse/HBASE-11251) | LoadTestTool should grant READ permission for the users that are given READ access for specific cells |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11096](https://issues.apache.org/jira/browse/HBASE-11096) | stop method of Master and RegionServer coprocessor  is not invoked |  Major | . | Qiang Tian | Qiang Tian |
| [HBASE-11253](https://issues.apache.org/jira/browse/HBASE-11253) | IntegrationTestWithCellVisibilityLoadAndVerify failing since HBASE-10326 |  Major | test | Anoop Sam John | Anoop Sam John |
| [HBASE-11234](https://issues.apache.org/jira/browse/HBASE-11234) | FastDiffDeltaEncoder#getFirstKeyInBlock returns wrong result |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-11255](https://issues.apache.org/jira/browse/HBASE-11255) | Negative request num in region load |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-10692](https://issues.apache.org/jira/browse/HBASE-10692) | The Multi TableMap job don't support the security HBase cluster |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-11267](https://issues.apache.org/jira/browse/HBASE-11267) | Dynamic metrics2 metrics may consume large amount of heap memory |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11275](https://issues.apache.org/jira/browse/HBASE-11275) | [AccessController] postCreateTable hook fails when another CP creates table on their startup |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11277](https://issues.apache.org/jira/browse/HBASE-11277) | RPCServer threads can wedge under high load |  Critical | . | Andrew Purtell | Andrew Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11166](https://issues.apache.org/jira/browse/HBASE-11166) | Categorize tests in hbase-prefix-tree module |  Minor | . | Ted Yu | Rekha Joshi |
| [HBASE-11104](https://issues.apache.org/jira/browse/HBASE-11104) | IntegrationTestImportTsv#testRunFromOutputCommitter misses credential initialization |  Minor | . | Ted Yu | Vandana Ayyalasomayajula |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10561](https://issues.apache.org/jira/browse/HBASE-10561) | Forward port: HBASE-10212 New rpc metric: number of active handler |  Major | IPC/RPC | Lars Hofhansl | Liang Xie |
| [HBASE-11161](https://issues.apache.org/jira/browse/HBASE-11161) | Provide example of POJO encoding with protobuf |  Major | Client | Nick Dimiduk | Nick Dimiduk |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11209](https://issues.apache.org/jira/browse/HBASE-11209) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11090](https://issues.apache.org/jira/browse/HBASE-11090) | Backport HBASE-11083 ExportSnapshot should provide capability to limit bandwidth consumption |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11227](https://issues.apache.org/jira/browse/HBASE-11227) | Mention 8- and 16-bit fixed-with encodings in OrderedBytes docstring |  Trivial | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11272](https://issues.apache.org/jira/browse/HBASE-11272) | Backport HBASE-11218 (Data loss in HBase standalone mode) to 0.98 |  Minor | . | Andrew Purtell | Andrew Purtell |


