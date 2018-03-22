
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

## Release 1.6.0 - 2017-12-07



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2062](https://issues.apache.org/jira/browse/KUDU-2062) | Tool to add and configure a data dir to an existing server |  Major | fs | Andrew Wong |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2144](https://issues.apache.org/jira/browse/KUDU-2144) | Add metric for reactor load |  Major | metrics, ops-tooling | Todd Lipcon | Todd Lipcon |
| [KUDU-2159](https://issues.apache.org/jira/browse/KUDU-2159) | Add metric for upserts converted to updates |  Major | metrics, tablet | Todd Lipcon | Will Berkeley |
| [KUDU-2184](https://issues.apache.org/jira/browse/KUDU-2184) | Avoid large allocations in MemRowSet arena |  Major | perf | Todd Lipcon | Todd Lipcon |
| [KUDU-2055](https://issues.apache.org/jira/browse/KUDU-2055) | Coalesce hole punching when deleting groups of blocks |  Major | fs | Adar Dembo | Hao Hao |
| [KUDU-1957](https://issues.apache.org/jira/browse/KUDU-1957) | Clarify web UI redaction in --redact flag help |  Major | . | Dan Burkert | Hao Hao |
| [KUDU-1961](https://issues.apache.org/jira/browse/KUDU-1961) | devtoolset-3 defeats ccache |  Major | build | Adar Dembo | Adar Dembo |
| [KUDU-2205](https://issues.apache.org/jira/browse/KUDU-2205) | Improve error message when glob fails due to permission denied |  Minor | supportability | Todd Lipcon | Todd Lipcon |
| [KUDU-2200](https://issues.apache.org/jira/browse/KUDU-2200) | Sanity-check that users specify the right number of masters when connecting |  Major | client, master, supportability | Todd Lipcon | Todd Lipcon |
| [KUDU-1411](https://issues.apache.org/jira/browse/KUDU-1411) | Implement HT timestamp propagation in the Java client |  Major | client | Dan Burkert | Hao Hao |
| [KUDU-1078](https://issues.apache.org/jira/browse/KUDU-1078) | Under heavy load, log cache reads return "Op in future" |  Major | consensus | Todd Lipcon | Todd Lipcon |
| [KUDU-2198](https://issues.apache.org/jira/browse/KUDU-2198) | Allow disregarding system-wide auth-to-local mapping |  Major | security | Todd Lipcon | Todd Lipcon |
| [KUDU-2136](https://issues.apache.org/jira/browse/KUDU-2136) | Add a "crashed"/"failed" mode to tablets |  Major | . | Andrew Wong | Andrew Wong |
| [KUDU-2187](https://issues.apache.org/jira/browse/KUDU-2187) | Don't hold threadpool lock when creating additional workers |  Major | perf, util | Todd Lipcon | Todd Lipcon |
| [KUDU-1334](https://issues.apache.org/jira/browse/KUDU-1334) | Support pid\_max \> 16 bits in the mini cluster |  Major | test | Jean-Daniel Cryans | Alexey Serbin |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2113](https://issues.apache.org/jira/browse/KUDU-2113) | SEGV running ksck while cluster was starting up |  Blocker | ksck | Todd Lipcon | Will Berkeley |
| [KUDU-1976](https://issues.apache.org/jira/browse/KUDU-1976) | MiniKdc races between add\_principal and kinit |  Major | java, test | Adar Dembo | Todd Lipcon |
| [KUDU-2130](https://issues.apache.org/jira/browse/KUDU-2130) | ITClientStress.testManyShortClientsGeneratingScanTokens is flaky |  Major | java | Adar Dembo | Dan Burkert |
| [KUDU-2119](https://issues.apache.org/jira/browse/KUDU-2119) | Failure in TestBinaryPlainBlockBuilderRoundTrip |  Major | cfile | Will Berkeley | Todd Lipcon |
| [KUDU-2138](https://issues.apache.org/jira/browse/KUDU-2138) | Failed replicas are not deleted when processing tablet reports |  Major | master, tablet | Andrew Wong | Andrew Wong |
| [KUDU-2123](https://issues.apache.org/jira/browse/KUDU-2123) | Tablets with a superblock but no cmeta are marked as FAILED in the UI |  Major | tablet, ui | Mike Percy | Mike Percy |
| [KUDU-2134](https://issues.apache.org/jira/browse/KUDU-2134) | Defer block transaction commit to the end of a tablet copy |  Major | tserver | Adar Dembo | Hao Hao |
| [KUDU-2137](https://issues.apache.org/jira/browse/KUDU-2137) | AlterTableTest.TestAddRangePartitionConflictExhaustive fails with assertion in  TableInfo::DecrementSchemaVersionCountUnlocked() |  Major | master | Alexey Serbin | Adar Dembo |
| [KUDU-2141](https://issues.apache.org/jira/browse/KUDU-2141) | Tombstoned tablet included in heartbeat report with no consensus info |  Blocker | consensus, master, server | Dan Burkert | Mike Percy |
| [KUDU-1755](https://issues.apache.org/jira/browse/KUDU-1755) | Improve tablet disk space estimation |  Critical | supportability, tablet | Adar Dembo | Will Berkeley |
| [KUDU-2125](https://issues.apache.org/jira/browse/KUDU-2125) | Tablet copy client does not retry on failures |  Major | server | Dan Burkert | Dan Burkert |
| [KUDU-2149](https://issues.apache.org/jira/browse/KUDU-2149) | New failure detector implementation can lead to election stacking |  Critical | consensus | Adar Dembo | Adar Dembo |
| [KUDU-2132](https://issues.apache.org/jira/browse/KUDU-2132) | False error dropping a column if it's renamed to the old name of a primary key column in the same alter as the primary key is renamed |  Major | master | Adar Dembo | Will Berkeley |
| [KUDU-1788](https://issues.apache.org/jira/browse/KUDU-1788) | Raft UpdateConsensus retry behavior on timeout is counter-productive |  Critical | consensus | Todd Lipcon | Todd Lipcon |
| [KUDU-2167](https://issues.apache.org/jira/browse/KUDU-2167) | C++ client crashes when server filters out all data in a scan RPC |  Critical | client | Adar Dembo | Adar Dembo |
| [KUDU-2161](https://issues.apache.org/jira/browse/KUDU-2161) | ColumnSchemaBuilder is missing from javadoc |  Major | java | Todd Lipcon | Will Berkeley |
| [KUDU-2188](https://issues.apache.org/jira/browse/KUDU-2188) | kudu-client JAR built via JDK8 depends on Java 8 APIs |  Critical | java | Adar Dembo | Adar Dembo |
| [KUDU-2190](https://issues.apache.org/jira/browse/KUDU-2190) | webserver HTTPS/TLS cipher list is insecure on RHEL 6 |  Blocker | server | Dan Burkert | Dan Burkert |
| [KUDU-2194](https://issues.apache.org/jira/browse/KUDU-2194) | Kudu crashes when started with more than 34 data directories |  Major | fs | Adar Dembo | Adar Dembo |
| [KUDU-2170](https://issues.apache.org/jira/browse/KUDU-2170) | Masters can start up with duplicate masters specified |  Major | master | Andrew Wong | Will Berkeley |
| [KUDU-2044](https://issues.apache.org/jira/browse/KUDU-2044) | Tombstoned tablets show up in /metrics |  Critical | metrics | Adar Dembo | Will Berkeley |
| [KUDU-2147](https://issues.apache.org/jira/browse/KUDU-2147) | Unknown leader treated as valid TS UUID by catalog manager |  Major | consensus, master | Mike Percy | Mike Percy |
| [KUDU-1809](https://issues.apache.org/jira/browse/KUDU-1809) | ScanToken API does not respect batch size configuration |  Major | client | Dan Burkert | Hao Hao |
| [KUDU-2215](https://issues.apache.org/jira/browse/KUDU-2215) | kernel stack watchdog can delay thread exits |  Major | perf, util | Todd Lipcon | Todd Lipcon |
| [KUDU-2220](https://issues.apache.org/jira/browse/KUDU-2220) | GetEndOfChainX509 does not return end-user cert |  Major | security | Sailesh Mukil | Sailesh Mukil |
| [KUDU-2165](https://issues.apache.org/jira/browse/KUDU-2165) | alter\_table-test has mysterious TSAN warnings |  Major | . | Adar Dembo | Todd Lipcon |
| [KUDU-2222](https://issues.apache.org/jira/browse/KUDU-2222) | IO error in UpdateScanDeltaCompactionTest ASAN build |  Major | test | Andrew Wong |  |
| [KUDU-2124](https://issues.apache.org/jira/browse/KUDU-2124) | Tablet copy service holds session lock while initializing each session |  Major | tserver | Mike Percy | Dan Burkert |
| [KUDU-2206](https://issues.apache.org/jira/browse/KUDU-2206) | Create table timeout due to too many DRS in one tablet cause lock contention |  Major | . | ZhangZhen | Todd Lipcon |
| [KUDU-2230](https://issues.apache.org/jira/browse/KUDU-2230) | Safe-to-evict logic should always consider local node viable |  Major | consensus | Mike Percy |  |
| [KUDU-1454](https://issues.apache.org/jira/browse/KUDU-1454) | Spark and MR jobs running without scan locality |  Critical | client, perf, spark | Todd Lipcon | Hao Hao |
| [KUDU-2209](https://issues.apache.org/jira/browse/KUDU-2209) | HybridClock doesn't handle changes STA\_NANO status flag |  Critical | server | Todd Lipcon | Todd Lipcon |
| [KUDU-2173](https://issues.apache.org/jira/browse/KUDU-2173) | Partitions are pruned incorrectly when range-partitioned on a PK prefix |  Blocker | client | Todd Lipcon | Dan Burkert |
| [KUDU-2218](https://issues.apache.org/jira/browse/KUDU-2218) | SSL3\_WRITE\_PENDING TlsSocket error |  Major | rpc, security | Alexey Serbin | Todd Lipcon |
| [KUDU-2193](https://issues.apache.org/jira/browse/KUDU-2193) | Severe lock contention on TSTabletManager lock |  Critical | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-2048](https://issues.apache.org/jira/browse/KUDU-2048) | consensus: Only evict a replica is a majority is up to date |  Major | consensus, recovery | Mike Percy | Todd Lipcon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1807](https://issues.apache.org/jira/browse/KUDU-1807) | GetTableSchema() is O(n) in the number of tablets |  Critical | master, perf | Todd Lipcon | Adar Dembo |
| [KUDU-501](https://issues.apache.org/jira/browse/KUDU-501) | Web UI and metrics support for replicated master |  Major | ops-tooling | Todd Lipcon | Will Berkeley |
| [KUDU-1125](https://issues.apache.org/jira/browse/KUDU-1125) | Reduce impact of enabling fsync on the master |  Major | master | Jean-Daniel Cryans | Adar Dembo |
| [KUDU-616](https://issues.apache.org/jira/browse/KUDU-616) | Mitigate tablet damage when disks are lost |  Major | fs | Adar Dembo | Andrew Wong |


