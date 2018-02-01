
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
# Apache Kudu Changelog

## Release 1.1.0 - 2016-11-21



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1401](https://issues.apache.org/jira/browse/KUDU-1401) | Expose partition location information through Python API |  Minor | api, python | Matthew Rocklin | Jordan Birdsell |
| [KUDU-1684](https://issues.apache.org/jira/browse/KUDU-1684) | [Python] - Add ResourceMetrics Capabilities |  Minor | metrics, python | Jordan Birdsell | Jordan Birdsell |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1619](https://issues.apache.org/jira/browse/KUDU-1619) | Master Web UI "Tablet Servers" tab should separate live and suspected dead tablet servers |  Major | master | Dan Burkert | Ninad Shringarpure |
| [KUDU-1628](https://issues.apache.org/jira/browse/KUDU-1628) | Make insert-generated-rows an action in the Kudu command-line tool |  Minor | . | Alexey Serbin | Alexey Serbin |
| [KUDU-1617](https://issues.apache.org/jira/browse/KUDU-1617) | Document Impala/Kudu known limitations |  Major | documentation | Dan Burkert | Dan Burkert |
| [KUDU-1661](https://issues.apache.org/jira/browse/KUDU-1661) | Mark kudu::client::KuduClient::GetLatestObservedTimestamp() as experimental |  Minor | api, client, documentation | Alexey Serbin | Alexey Serbin |
| [KUDU-1612](https://issues.apache.org/jira/browse/KUDU-1612) | Python - Enable Setting of Read Mode |  Minor | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1567](https://issues.apache.org/jira/browse/KUDU-1567) | Short default for log retention increases write amplification |  Major | perf, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1630](https://issues.apache.org/jira/browse/KUDU-1630) | impala\_tables.html link is showing as text and not actual link |  Major | documentation | Romain Rigaux | Ninad Shringarpure |
| [KUDU-1588](https://issues.apache.org/jira/browse/KUDU-1588) | /tablets page should separate out tombstoned tablets to a separate section |  Minor | tserver | Todd Lipcon | Ninad Shringarpure |
| [KUDU-78](https://issues.apache.org/jira/browse/KUDU-78) | Fix pb\_util functions which return bool to return Status |  Minor | util | Todd Lipcon | Smyatkin Maxim |
| [KUDU-1611](https://issues.apache.org/jira/browse/KUDU-1611) | Python - Enable Setting of Replica Selection Policy |  Major | perf, python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1734](https://issues.apache.org/jira/browse/KUDU-1734) | Java client timeout exceptions aren't useful |  Major | client | Matthew Jacobs | Jean-Daniel Cryans |
| [KUDU-1649](https://issues.apache.org/jira/browse/KUDU-1649) | Python - Add Support for Binary Type |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1690](https://issues.apache.org/jira/browse/KUDU-1690) | [Python] - Implement ability to set default values |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1648](https://issues.apache.org/jira/browse/KUDU-1648) | [Python] - Fully Implement Range Partitions |  Major | perf, python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1638](https://issues.apache.org/jira/browse/KUDU-1638) | Python - Add Alter Table Support |  Minor | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1688](https://issues.apache.org/jira/browse/KUDU-1688) | Impala 'INSERT IGNORE' is slow due to VLOG(1) logging in client |  Major | impala, perf | Todd Lipcon | Alexey Serbin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1301](https://issues.apache.org/jira/browse/KUDU-1301) | python tests sometimes leak tmp directory |  Minor | python, test | Todd Lipcon | Jordan Birdsell |
| [KUDU-1090](https://issues.apache.org/jira/browse/KUDU-1090) | Crash with Duplicate Memory Tracker error during bootstrap |  Major | tablet, tserver | Todd Lipcon | Adar Dembo |
| [KUDU-1623](https://issues.apache.org/jira/browse/KUDU-1623) | UPSERTs that include only PK columns can cause crashes |  Blocker | tablet | Todd Lipcon |  |
| [KUDU-1614](https://issues.apache.org/jira/browse/KUDU-1614) | Python Client Doesnt Support Timestamp |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1615](https://issues.apache.org/jira/browse/KUDU-1615) | Python Client - WriteOperation fails when referencing column by index |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1660](https://issues.apache.org/jira/browse/KUDU-1660) | Kudu master start failed |  Major | master | Jarred Li |  |
| [KUDU-1653](https://issues.apache.org/jira/browse/KUDU-1653) | Python 3 Failing to decode serialized token |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1654](https://issues.apache.org/jira/browse/KUDU-1654) | Python 3 Client Test Failure: test\_table\_column |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1657](https://issues.apache.org/jira/browse/KUDU-1657) | read-only FsManager::Open on active tablet can crash |  Major | . | Dan Burkert | Dan Burkert |
| [KUDU-1663](https://issues.apache.org/jira/browse/KUDU-1663) | Clean-up in-code documentation for KuduScanner::ReadMode and KuduClient::GetLatestObservedTimestamp |  Minor | api, client, documentation | Alexey Serbin | Alexey Serbin |
| [KUDU-1669](https://issues.apache.org/jira/browse/KUDU-1669) | Java ITClient test can orphan processes |  Major | client | Adar Dembo | Jean-Daniel Cryans |
| [KUDU-1672](https://issues.apache.org/jira/browse/KUDU-1672) | [Python] - Float types are treated as doubles when creating predicate |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1674](https://issues.apache.org/jira/browse/KUDU-1674) | SEGV in SubProcess::Call if it tries to capture stderr alone |  Major | util | Dinesh Bhat | Dinesh Bhat |
| [KUDU-1681](https://issues.apache.org/jira/browse/KUDU-1681) | DNS resolution failure of master hostname causes tserver crash |  Blocker | tserver | Dan Burkert | Dan Burkert |
| [KUDU-1682](https://issues.apache.org/jira/browse/KUDU-1682) | Lock contention on table locations cache in Java client |  Minor | client, perf | Todd Lipcon | Jean-Daniel Cryans |
| [KUDU-1700](https://issues.apache.org/jira/browse/KUDU-1700) | Debug build will not fail gracefully on Messenger::Init() failure |  Minor | rpc | Sailesh Mukil |  |
| [KUDU-1692](https://issues.apache.org/jira/browse/KUDU-1692) | Deleting large tablets causes a lot of tcmalloc contention |  Major | tablet, util | Todd Lipcon | Adar Dembo |
| [KUDU-1719](https://issues.apache.org/jira/browse/KUDU-1719) | Heap use-after-free and deadlock on Messenger::Init() failure |  Major | . | Sailesh Mukil |  |
| [KUDU-1696](https://issues.apache.org/jira/browse/KUDU-1696) | Daemons should dump their version info to the INFO log at startup |  Major | master, tserver | Todd Lipcon | Smyatkin Maxim |
| [KUDU-1627](https://issues.apache.org/jira/browse/KUDU-1627) | Potentially Missing words in the quick start doc about loading data |  Major | documentation | Romain Rigaux | Ninad Shringarpure |
| [KUDU-1365](https://issues.apache.org/jira/browse/KUDU-1365) | Leader flapping when one machine has a very slow disk |  Major | consensus | Mike Percy | Todd Lipcon |
| [KUDU-1635](https://issues.apache.org/jira/browse/KUDU-1635) | Mitigate leader election storms when consensus metadata disk is slow |  Critical | consensus, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1677](https://issues.apache.org/jira/browse/KUDU-1677) | Ordered scans may return out-of-order rows when concurrent with compaction |  Critical | tablet | Todd Lipcon | Todd Lipcon |
| [KUDU-1599](https://issues.apache.org/jira/browse/KUDU-1599) | Prevent creation of tables with unsupported column encodings |  Critical | master | Todd Lipcon | Todd Lipcon |
| [KUDU-1735](https://issues.apache.org/jira/browse/KUDU-1735) | CHECK failure when aborting an ignored config change operation |  Critical | consensus | Todd Lipcon | Todd Lipcon |
| [KUDU-1610](https://issues.apache.org/jira/browse/KUDU-1610) | /tracing.html endpoint doesn't work with new Chrome versions |  Major | . | Dan Burkert | Todd Lipcon |
| [KUDU-1744](https://issues.apache.org/jira/browse/KUDU-1744) | Java client does not return the set value for the desired block size column option |  Major | api | Dimitris Tsirogiannis | Will Berkeley |
| [KUDU-180](https://issues.apache.org/jira/browse/KUDU-180) | Java alter table adds new column with only read-default set |  Blocker | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1743](https://issues.apache.org/jira/browse/KUDU-1743) | GetPendingErrors() not returning all errors after Flush() |  Critical | client | Matthew Jacobs | Alexey Serbin |
| [KUDU-1135](https://issues.apache.org/jira/browse/KUDU-1135) | RequestVote and StartElection do two fsyncs instead of one |  Major | consensus, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-1124](https://issues.apache.org/jira/browse/KUDU-1124) | DebugUtilTest.TestSignalStackTrace flaky due to likely timeout of stacktrace function |  Major | test, util | Mike Percy | Todd Lipcon |
| [KUDU-1292](https://issues.apache.org/jira/browse/KUDU-1292) | CHECK failure in replica due to invalid term advance |  Major | consensus | Todd Lipcon | Todd Lipcon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1651](https://issues.apache.org/jira/browse/KUDU-1651) | tserver crash when pushing predicate on dict encoded block with all null values |  Blocker | tablet | Dan Burkert | Andrew Wong |
| [KUDU-1652](https://issues.apache.org/jira/browse/KUDU-1652) | Partition pruning / scan optimization fails with IS NOT NULL predicate on PK column |  Blocker | client, tablet | Dan Burkert | Dan Burkert |
| [KUDU-1363](https://issues.apache.org/jira/browse/KUDU-1363) | Add IN-list predicate type |  Major | client, perf, tablet | Chris George | Dan Burkert |
| [KUDU-1637](https://issues.apache.org/jira/browse/KUDU-1637) | Python Client Doesnt Support less than or greater than predicates |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1640](https://issues.apache.org/jira/browse/KUDU-1640) | Add IN-list predicate support to Python client |  Minor | python | Dan Burkert | Jordan Birdsell |
| [KUDU-1671](https://issues.apache.org/jira/browse/KUDU-1671) | [Python] - Enable predicate pushdown for additional data types |  Major | perf, python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1715](https://issues.apache.org/jira/browse/KUDU-1715) | Add a way to set ReplicaSelection to the java client |  Major | client | David Alves | Jean-Daniel Cryans |
| [KUDU-1680](https://issues.apache.org/jira/browse/KUDU-1680) | Python - Improve PartialRow Usability |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1666](https://issues.apache.org/jira/browse/KUDU-1666) | filter IS NOT NULL predicates on non-nullable columns from scans in client |  Blocker | client | Dan Burkert | Dan Burkert |


