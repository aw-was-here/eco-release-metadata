
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

## Release 0.19.1 - 2009-03-19

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1151](https://issues.apache.org/jira/browse/HBASE-1151) | Don't ship hbase 0.19.1 till hadoop 0.19.1 |  Major | . | stack | stack |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-803](https://issues.apache.org/jira/browse/HBASE-803) | Atomic increment operations |  Minor | Client, IPC/RPC, regionserver | Jonathan Gray | ryan rawson |
| [HBASE-1350](https://issues.apache.org/jira/browse/HBASE-1350) | New method in HTable.java to return start and end keys for regions in a table |  Major | master | Vimal Mathew |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1138](https://issues.apache.org/jira/browse/HBASE-1138) | Make HLog block size configurable |  Major | master, regionserver, test | Jim Kellerman | Jim Kellerman |
| [HBASE-845](https://issues.apache.org/jira/browse/HBASE-845) | HCM.isTableEnabled doesn't really tell if it is, or not |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-1178](https://issues.apache.org/jira/browse/HBASE-1178) | Add shutdown command to shell |  Trivial | . | Andrew Purtell |  |
| [HBASE-1184](https://issues.apache.org/jira/browse/HBASE-1184) | HColumnDescriptor is a little too restrictive with family names |  Minor | . | Toby White | Andrew Purtell |
| [HBASE-1180](https://issues.apache.org/jira/browse/HBASE-1180) | Adding missing import statement from example and Removing some @Override attributes. |  Minor | master | Ryan Smith | Andrew Purtell |
| [HBASE-1233](https://issues.apache.org/jira/browse/HBASE-1233) | Transactional fixes: Overly conservative scan read-set, potential CME |  Major | regionserver | Clint Morgan | Clint Morgan |
| [HBASE-1231](https://issues.apache.org/jira/browse/HBASE-1231) | Today, going from a RowResult to a BatchUpdate reqiures some data processing even though they are pretty much the same thing. |  Trivial | . | Erik Holstad | Erik Holstad |
| [HBASE-1229](https://issues.apache.org/jira/browse/HBASE-1229) | Apply HADOOP-5369 to HBase MapFile |  Major | . | Ben Maurer | Ben Maurer |
| [HBASE-1252](https://issues.apache.org/jira/browse/HBASE-1252) | Make atomic increment perform a binary increment |  Minor | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1253](https://issues.apache.org/jira/browse/HBASE-1253) | Remove unnecessary, expensive column matcher lookup |  Major | . | stack |  |
| [HBASE-1240](https://issues.apache.org/jira/browse/HBASE-1240) | Would be nice if RowResult could be comparable. |  Trivial | io | Erik Holstad | Erik Holstad |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1148](https://issues.apache.org/jira/browse/HBASE-1148) | Always flush HLog on root or meta region updates |  Critical | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-1121](https://issues.apache.org/jira/browse/HBASE-1121) | Cluster confused about where -ROOT- is |  Major | . | stack | Jim Kellerman |
| [HBASE-1129](https://issues.apache.org/jira/browse/HBASE-1129) | Master won't go down; stuck joined on rootScanner |  Major | . | stack | Jim Kellerman |
| [HBASE-903](https://issues.apache.org/jira/browse/HBASE-903) | [shell] Can't set table descriptor attributes when I alter a table |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-1179](https://issues.apache.org/jira/browse/HBASE-1179) | 0.19 branch jar is building as 0.20-dev instead of 0.19.1-dev |  Trivial | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1175](https://issues.apache.org/jira/browse/HBASE-1175) | HBA administrative tools do not work when specifying regionName |  Major | Client, master | Jonathan Gray | Jonathan Gray |
| [HBASE-1187](https://issues.apache.org/jira/browse/HBASE-1187) | After disabling/enabling a table, the regions seems to be assigned to only 1-2 region servers |  Major | master | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1190](https://issues.apache.org/jira/browse/HBASE-1190) | TableInputFormatBase with row filters scan too far |  Minor | . | Dave Latham | Andrew Purtell |
| [HBASE-1194](https://issues.apache.org/jira/browse/HBASE-1194) | List of committers on Credits page is out of date |  Blocker | documentation | Jim Kellerman | stack |
| [HBASE-1196](https://issues.apache.org/jira/browse/HBASE-1196) | OOME in HRS IPC server causes infinite client stall |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-1224](https://issues.apache.org/jira/browse/HBASE-1224) | Scanner returns values from before startrow |  Critical | . | stack | Ben Maurer |
| [HBASE-1142](https://issues.apache.org/jira/browse/HBASE-1142) | Cleanup thrift server; remove Text and profuse DEBUG messaging |  Minor | . | Tim Sell | Tim Sell |
| [HBASE-1211](https://issues.apache.org/jira/browse/HBASE-1211) | NPE in retries exhausted exception |  Major | . | stack |  |
| [HBASE-1185](https://issues.apache.org/jira/browse/HBASE-1185) | wrong request/sec in the gui reporting wrong |  Minor | Client, regionserver | Billy Pearson | Jean-Daniel Cryans |
| [HBASE-1247](https://issues.apache.org/jira/browse/HBASE-1247) | checkAndSave doesn't Write Ahead Log |  Blocker | . | Ben Maurer |  |
| [HBASE-1238](https://issues.apache.org/jira/browse/HBASE-1238) | Under upload, region servers are unable to compact when loaded with hundreds of regions |  Blocker | regionserver | Jean-Daniel Cryans |  |
| [HBASE-1243](https://issues.apache.org/jira/browse/HBASE-1243) | oldlogfile.dat is screwed, so is it's region |  Blocker | . | Jean-Daniel Cryans |  |
| [HBASE-1169](https://issues.apache.org/jira/browse/HBASE-1169) | When a shutdown is requested, stop scanning META regions immediately |  Critical | . | Jonathan Gray | Jim Kellerman |
| [HBASE-1220](https://issues.apache.org/jira/browse/HBASE-1220) | Don't reopen file if already open when updating readers underneath scanners |  Major | . | stack | stack |
| [HBASE-1219](https://issues.apache.org/jira/browse/HBASE-1219) | Scanners can miss values riding the flush transition |  Blocker | . | stack |  |
| [HBASE-1256](https://issues.apache.org/jira/browse/HBASE-1256) | NPE in StoreFileScanner durring cache flush |  Major | regionserver | Clint Morgan |  |
| [HBASE-1258](https://issues.apache.org/jira/browse/HBASE-1258) | ganglia metrics for 'requests' is confusing |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1259](https://issues.apache.org/jira/browse/HBASE-1259) | ganglia metrics should have a common prefix so we can group easier |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1107](https://issues.apache.org/jira/browse/HBASE-1107) | NPE in HStoreScanner.updateReaders |  Blocker | . | Andrew Purtell | Andrew Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1198](https://issues.apache.org/jira/browse/HBASE-1198) | OOME in IPC server does not trigger abort behavior |  Critical | . | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1203](https://issues.apache.org/jira/browse/HBASE-1203) | Create "Empty" Eclipse meta-data with check-style configs |  Trivial | documentation | Evgeny Ryabitskiy | Evgeny Ryabitskiy |


