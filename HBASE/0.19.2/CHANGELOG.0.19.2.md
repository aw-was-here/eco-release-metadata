
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

## Release 0.19.2 - 2009-05-09

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1292](https://issues.apache.org/jira/browse/HBASE-1292) | php thrift's getRow() would throw an exception if the row does not exist |  Minor | Thrift | Rong-En Fan | Rong-En Fan |
| [HBASE-1264](https://issues.apache.org/jira/browse/HBASE-1264) | Wrong return values of comparators for ColumnValueFilter |  Minor | Filters | Thomas Schneider | Clint Morgan |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1350](https://issues.apache.org/jira/browse/HBASE-1350) | New method in HTable.java to return start and end keys for regions in a table |  Major | master | Vimal Mathew |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1347](https://issues.apache.org/jira/browse/HBASE-1347) | HTable.incrementColumnValue does not take negative 'amount' |  Minor | Client | atppp | Evgeny Ryabitskiy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-1303](https://issues.apache.org/jira/browse/HBASE-1303) | Secondary index configuration prevents HBase from starting |  Major | regionserver | Ken Weiner |  |
| [HBASE-1202](https://issues.apache.org/jira/browse/HBASE-1202) | getRow does not always work when specifying number of versions |  Major | regionserver | Jim Kellerman | Jim Kellerman |
| [HBASE-1319](https://issues.apache.org/jira/browse/HBASE-1319) | Bug in atomicIncrement 0.19.1 only |  Major | . | ryan rawson | ryan rawson |
| [HBASE-1301](https://issues.apache.org/jira/browse/HBASE-1301) | HTable.getRow() returns null if the row does no exist |  Minor | Client, documentation | Rong-En Fan | Rong-En Fan |
| [HBASE-1287](https://issues.apache.org/jira/browse/HBASE-1287) | Partitioner class not used in TableMapReduceUtil.initTableReduceJob() |  Major | . | Lars George | Billy Pearson |
| [HBASE-1365](https://issues.apache.org/jira/browse/HBASE-1365) | Typo in TableInputFormatBase.setInputColums |  Major | . | Jonathan Gray | Jonathan Gray |
| [HBASE-1318](https://issues.apache.org/jira/browse/HBASE-1318) | Thrift server doesnt know about atomicIncrement |  Major | . | ryan rawson | Tim Sell |
| [HBASE-1352](https://issues.apache.org/jira/browse/HBASE-1352) | incrementColumnValue/Memcache bug |  Major | regionserver | atppp |  |
| [HBASE-1279](https://issues.apache.org/jira/browse/HBASE-1279) | Fix the way hostnames and IPs are handled |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1368](https://issues.apache.org/jira/browse/HBASE-1368) | HBASE-1279 broke the build |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1371](https://issues.apache.org/jira/browse/HBASE-1371) | Generating the javadoc gives warnings in branch 0.19 |  Minor | documentation | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-1372](https://issues.apache.org/jira/browse/HBASE-1372) | TestGetRowVersions doesn't pass on 0.19 branch |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |


