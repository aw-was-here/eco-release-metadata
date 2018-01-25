
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

## Release 1.4.0 - 2017-06-14



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-579](https://issues.apache.org/jira/browse/KUDU-579) | Scanner fault tolerance |  Major | client, tablet | Todd Lipcon | Hao Hao |
| [KUDU-1330](https://issues.apache.org/jira/browse/KUDU-1330) | Add tool to unsafely recover from loss of majority (or all) tablet replicas |  Major | ops-tooling | Todd Lipcon | Dinesh Bhat |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1866](https://issues.apache.org/jira/browse/KUDU-1866) | Add client request sidecars to KRPC |  Major | perf, rpc | Henry Robinson | Henry Robinson |
| [KUDU-1887](https://issues.apache.org/jira/browse/KUDU-1887) | Allow RPC handlers to discard inbound transfer |  Minor | rpc | Henry Robinson | Henry Robinson |
| [KUDU-1626](https://issues.apache.org/jira/browse/KUDU-1626) | Allow renaming primary key columns |  Major | . | Dan Burkert | Ram Mettu |
| [KUDU-1939](https://issues.apache.org/jira/browse/KUDU-1939) | Demote or remove WARNING about large arenas |  Minor | util | Todd Lipcon | Todd Lipcon |
| [KUDU-861](https://issues.apache.org/jira/browse/KUDU-861) | Add client APIs for more alter-schema operations |  Critical | api, client | Todd Lipcon | Will Berkeley |
| [KUDU-754](https://issues.apache.org/jira/browse/KUDU-754) | add an environment variable for kudu client debugging to stderr |  Major | client | Todd Lipcon | William Li |
| [KUDU-586](https://issues.apache.org/jira/browse/KUDU-586) | Upgrade to protobuf 3.0 |  Major | perf, rpc | Todd Lipcon | Grant Henke |
| [KUDU-1040](https://issues.apache.org/jira/browse/KUDU-1040) | Java client doesn't support fault tolerant scans |  Major | client | Adar Dembo | Hao Hao |
| [KUDU-1020](https://issues.apache.org/jira/browse/KUDU-1020) | ksck with snapshot reports divergence even if a server is just behind |  Major | ksck | Todd Lipcon | Will Berkeley |
| [KUDU-2018](https://issues.apache.org/jira/browse/KUDU-2018) | Kudu C++ client: re-acquire a new authn token when current one expires |  Major | client, security | Alexey Serbin | Alexey Serbin |
| [KUDU-1192](https://issues.apache.org/jira/browse/KUDU-1192) | Periodically flush glog buffers from a thread |  Major | util | Mike Percy | William Li |
| [KUDU-1875](https://issues.apache.org/jira/browse/KUDU-1875) | Refuse unauthenticated connections from publicly routable IP addrs |  Major | rpc, security | Dan Burkert | Hao Hao |
| [KUDU-1988](https://issues.apache.org/jira/browse/KUDU-1988) | Add advertised RPC host/port server configuration |  Major | server | Dan Burkert | Patrik Sundberg |
| [KUDU-1826](https://issues.apache.org/jira/browse/KUDU-1826) | timestamp propagation APIs missing from synchronous Java client |  Major | client | Todd Lipcon | Andrew Wong |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1935](https://issues.apache.org/jira/browse/KUDU-1935) | Kudu C++ client crashes when receiving NOT\_THE\_LEADER error from master server |  Minor | client | Alexey Serbin | Alexey Serbin |
| [KUDU-1931](https://issues.apache.org/jira/browse/KUDU-1931) | Servers using the FBM may crash after a Flush |  Major | fs | Adar Dembo | Adar Dembo |
| [KUDU-1933](https://issues.apache.org/jira/browse/KUDU-1933) | OpId index 32-bit overflow (was: Master crashes after too many TS re-registrations) |  Critical | consensus, master, tserver | Jean-Daniel Cryans | Mike Percy |
| [KUDU-1930](https://issues.apache.org/jira/browse/KUDU-1930) | Improve performance of dictionary builder |  Major | cfile, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-1712](https://issues.apache.org/jira/browse/KUDU-1712) | Schema::EncodeComparableKey burns CPU in compaction |  Major | perf, tablet | Todd Lipcon |  |
| [KUDU-1962](https://issues.apache.org/jira/browse/KUDU-1962) | NPE and lost callback in Java client when master queue overflows |  Blocker | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1708](https://issues.apache.org/jira/browse/KUDU-1708) | Document Kudu command-line tools |  Major | documentation | Mike Percy | Grant Henke |
| [KUDU-1963](https://issues.apache.org/jira/browse/KUDU-1963) | Java client logs NPE if a connection is closed by client during negotiation |  Critical | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1607](https://issues.apache.org/jira/browse/KUDU-1607) | Unable to delete FAILED tablets as part of drop table |  Major | master | Dan Burkert | Mike Percy |
| [KUDU-1964](https://issues.apache.org/jira/browse/KUDU-1964) | OpenSSL locks create scalability bottleneck |  Major | impala, perf, rpc, security | Todd Lipcon | Todd Lipcon |
| [KUDU-1713](https://issues.apache.org/jira/browse/KUDU-1713) | Client API to indicate the target tablet server for inserts |  Major | client | Matthew Jacobs | Todd Lipcon |
| [KUDU-680](https://issues.apache.org/jira/browse/KUDU-680) | block cache limit seems to not be fully respected |  Major | tablet | Todd Lipcon | Todd Lipcon |
| [KUDU-1968](https://issues.apache.org/jira/browse/KUDU-1968) | Aborted tablet copies delete live blocks |  Blocker | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1966](https://issues.apache.org/jira/browse/KUDU-1966) | Data directories can be removed erroneously |  Major | fs | Adar Dembo | Dan Burkert |
| [KUDU-1965](https://issues.apache.org/jira/browse/KUDU-1965) | Allow user provided TLS certificates to work with KRPC |  Major | rpc, security | Sailesh Mukil | Sailesh Mukil |
| [KUDU-1424](https://issues.apache.org/jira/browse/KUDU-1424) | java client: Impossible to uniquely identify error rows because PartialRow impl has no getters |  Major | client | Mike Percy | Grant Henke |
| [KUDU-1883](https://issues.apache.org/jira/browse/KUDU-1883) | Support Ruby 2.4 in make docs task |  Trivial | documentation | Grant Henke | Grant Henke |
| [KUDU-1982](https://issues.apache.org/jira/browse/KUDU-1982) | Java client calls NetworkInterface.getByInetAddress too often |  Critical | client, java, perf | Todd Lipcon | Pavel Martynov |
| [KUDU-1953](https://issues.apache.org/jira/browse/KUDU-1953) | MemTracker root tracker consumption is rarely updated |  Critical | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1978](https://issues.apache.org/jira/browse/KUDU-1978) | When deleting misaligned blocks, log block manager may corrupt data |  Critical | fs | Adar Dembo | Adar Dembo |
| [KUDU-1981](https://issues.apache.org/jira/browse/KUDU-1981) | With security enabled, Kudu servers cannot start at machines with len(FQDN) \> 64 |  Major | master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-1857](https://issues.apache.org/jira/browse/KUDU-1857) | Retry LBM hole punching on crash |  Major | fs | Adar Dembo | Adar Dembo |
| [KUDU-1992](https://issues.apache.org/jira/browse/KUDU-1992) | heap-use-after-free when running threadlocal cache destructor |  Blocker | cfile, util | Todd Lipcon | Todd Lipcon |
| [KUDU-1993](https://issues.apache.org/jira/browse/KUDU-1993) | The validation of 'grouped' flags works incorrectly if flags re-ordered |  Major | master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-1991](https://issues.apache.org/jira/browse/KUDU-1991) | Master does not retry TS maintenance task if target TS not registered |  Major | master | Mike Percy | Mike Percy |
| [KUDU-1999](https://issues.apache.org/jira/browse/KUDU-1999) | Spark connector should login with Kerberos credentials on driver |  Blocker | spark | Dan Burkert | Dan Burkert |
| [KUDU-2005](https://issues.apache.org/jira/browse/KUDU-2005) | Non-actionable error message if pointing --webserver\_{certificate,private\_key}\_file to non-existing files |  Major | master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-1941](https://issues.apache.org/jira/browse/KUDU-1941) | Server should refuse to start if authentication is 'required' but no auth method is configured |  Major | rpc, security | Todd Lipcon | Alexey Serbin |
| [KUDU-1056](https://issues.apache.org/jira/browse/KUDU-1056) | Make ksck support safe time and rework ksck snapshot tests |  Major | ksck | Mike Percy | Will Berkeley |
| [KUDU-1949](https://issues.apache.org/jira/browse/KUDU-1949) | MM should trigger flushes before memory backpressure kicks in |  Critical | perf, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1294](https://issues.apache.org/jira/browse/KUDU-1294) | CHECK failure on TransactionTracker memtracker with unreleased consumption |  Major | tablet | Todd Lipcon | Alexey Serbin |
| [KUDU-1998](https://issues.apache.org/jira/browse/KUDU-1998) | New tcmalloc hooks for process memory accounting do not work on OS X |  Major | . | Alexey Serbin | Todd Lipcon |
| [KUDU-2001](https://issues.apache.org/jira/browse/KUDU-2001) | Metric on\_disk\_size does not include UNDO deltas |  Minor | tablet | Mike Percy | Will Berkeley |
| [KUDU-2022](https://issues.apache.org/jira/browse/KUDU-2022) | Commit c178563 breaks many unit tests on my laptop |  Blocker | rpc | Adar Dembo | Hao Hao |
| [KUDU-1860](https://issues.apache.org/jira/browse/KUDU-1860) | ksck doesn't identify tablets that are evicted but still in config |  Major | ksck, ops-tooling | Jean-Daniel Cryans | Will Berkeley |
| [KUDU-1034](https://issues.apache.org/jira/browse/KUDU-1034) | Client does not fail over due to timeout |  Critical | client | Mike Percy | Alexey Serbin |
| [KUDU-1580](https://issues.apache.org/jira/browse/KUDU-1580) | Connection negotiation timeout to tablet server is treated as unretriable error on write operations |  Critical | client | Todd Lipcon | Alexey Serbin |
| [KUDU-1853](https://issues.apache.org/jira/browse/KUDU-1853) | Error during tablet copy may orphan a bunch of stuff |  Critical | tablet, tserver | Adar Dembo | Mike Percy |
| [KUDU-2020](https://issues.apache.org/jira/browse/KUDU-2020) | tserver failure causes multiple tablet copy operations per under-replicated tablet |  Major | tserver | Dan Burkert | Dan Burkert |
| [KUDU-2017](https://issues.apache.org/jira/browse/KUDU-2017) | Incorrect calculation determining performance improvement for flush |  Major | tablet | Todd Lipcon | Todd Lipcon |
| [KUDU-2016](https://issues.apache.org/jira/browse/KUDU-2016) | Altered column DEFAULTs don't show up in metadata |  Critical | client | Thomas Tauber-Marshall | Will Berkeley |
| [KUDU-1956](https://issues.apache.org/jira/browse/KUDU-1956) | Crash with "rowset selected for compaction but not available anymore" |  Critical | tablet | Todd Lipcon |  |
| [KUDU-1721](https://issues.apache.org/jira/browse/KUDU-1721) | Expose ability to force an unsafe Raft configuration change |  Major | consensus | Mike Percy | Dinesh Bhat |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1917](https://issues.apache.org/jira/browse/KUDU-1917) | Add tests which check for KDC fault conditions |  Major | security, test | Todd Lipcon | Alexey Serbin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1970](https://issues.apache.org/jira/browse/KUDU-1970) | Integration test for data scalability |  Major | master, tserver | Adar Dembo | Adar Dembo |
| [KUDU-463](https://issues.apache.org/jira/browse/KUDU-463) | Add checksumming to cfile and other on-disk formats |  Major | cfile, tablet | Todd Lipcon | Grant Henke |
| [KUDU-1549](https://issues.apache.org/jira/browse/KUDU-1549) | LBM should start up faster |  Major | tablet, tserver | zhangsong | Adar Dembo |
| [KUDU-1830](https://issues.apache.org/jira/browse/KUDU-1830) | Reduce Kudu WAL log disk usage |  Major | consensus, log | Juan Yu | Todd Lipcon |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1769](https://issues.apache.org/jira/browse/KUDU-1769) | Add a tool to garbage collect orphan data blocks |  Major | tablet | Dinesh Bhat | Adar Dembo |


