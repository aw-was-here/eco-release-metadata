
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

## Release 1.2.0 - 2017-01-20



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1706](https://issues.apache.org/jira/browse/KUDU-1706) | Unable to build from source using Python 3 |  Major | build | Greg |  |
| [KUDU-1153](https://issues.apache.org/jira/browse/KUDU-1153) | API should allow introspection of current split points |  Major | api, client, impala | Martin Grund | Dan Burkert |
| [KUDU-1448](https://issues.apache.org/jira/browse/KUDU-1448) | Improve bitshuffle to enable AVX2 at runtime |  Major | cfile, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-1658](https://issues.apache.org/jira/browse/KUDU-1658) | Reject CREATE TABLE ops with even replication factor |  Major | master | Dan Burkert | Hao Hao |
| [KUDU-766](https://issues.apache.org/jira/browse/KUDU-766) | Handle log file deletion after a time/size |  Critical | ops-tooling | Todd Lipcon | Dan Burkert |
| [KUDU-796](https://issues.apache.org/jira/browse/KUDU-796) | New leaders should not allow "up to date" reads until they've committed everything from previous terms |  Critical | consensus | Mike Percy | David Alves |
| [KUDU-1775](https://issues.apache.org/jira/browse/KUDU-1775) | Add guard rails before users hit untested behavior |  Critical | master, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1806](https://issues.apache.org/jira/browse/KUDU-1806) | Creating a list of scan tokens should retrieve tablets in larger batches |  Critical | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1622](https://issues.apache.org/jira/browse/KUDU-1622) | ResultTracker exhibits high contention under non-batched write workload |  Major | perf, rpc | Todd Lipcon | Todd Lipcon |
| [KUDU-1812](https://issues.apache.org/jira/browse/KUDU-1812) | Redact user data that gets logged |  Critical | . | Jean-Daniel Cryans | Dan Burkert |
| [KUDU-1618](https://issues.apache.org/jira/browse/KUDU-1618) | Add local\_replica tool to delete a replica |  Major | ops-tooling | Todd Lipcon | Dinesh Bhat |
| [KUDU-1782](https://issues.apache.org/jira/browse/KUDU-1782) | Fault injection tests should exit with a special exit code |  Major | test | Todd Lipcon | Todd Lipcon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1743](https://issues.apache.org/jira/browse/KUDU-1743) | GetPendingErrors() not returning all errors after Flush() |  Critical | client | Matthew Jacobs | Alexey Serbin |
| [KUDU-1745](https://issues.apache.org/jira/browse/KUDU-1745) | Kudu causes Impala to crash under stress |  Critical | . | Taras Bobrovytsky | Todd Lipcon |
| [KUDU-1749](https://issues.apache.org/jira/browse/KUDU-1749) | Allow client users to disable SASL mutex initialization |  Critical | impala, rpc | Todd Lipcon | Todd Lipcon |
| [KUDU-1722](https://issues.apache.org/jira/browse/KUDU-1722) | Range Partition Failure on UNIXTIME\_MICROS using non-default bound types |  Minor | . | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1750](https://issues.apache.org/jira/browse/KUDU-1750) | Drop range partition is not working as expected |  Blocker | . | Dimitris Tsirogiannis | Dan Burkert |
| [KUDU-1763](https://issues.apache.org/jira/browse/KUDU-1763) | Impala "create table" statement doesn't match latest Impala syntax |  Blocker | impala, master | Todd Lipcon | Todd Lipcon |
| [KUDU-1761](https://issues.apache.org/jira/browse/KUDU-1761) | Flaky tablet\_history\_gc-itest due to interleaving of concurrent client flushes |  Major | client, test | Mike Percy | David Alves |
| [KUDU-1766](https://issues.apache.org/jira/browse/KUDU-1766) | Equal predicate with MAX\_VALUE of Integer/Long not working |  Major | client | karthik | Dan Burkert |
| [KUDU-1634](https://issues.apache.org/jira/browse/KUDU-1634) | TS should delete tmp metadata files on startup |  Major | tserver | Todd Lipcon | Smyatkin Maxim |
| [KUDU-1545](https://issues.apache.org/jira/browse/KUDU-1545) | TS crashes when looking up a tombstone'd tablet's web page |  Critical | tserver | Jean-Daniel Cryans | Todd Lipcon |
| [KUDU-1764](https://issues.apache.org/jira/browse/KUDU-1764) | Log block manager leaks disk space at the end of full containers |  Critical | fs | Todd Lipcon | Adar Dembo |
| [KUDU-1551](https://issues.apache.org/jira/browse/KUDU-1551) | kudu-tserver can not start up after experience node crash |  Critical | log | zhangsong | Todd Lipcon |
| [KUDU-1773](https://issues.apache.org/jira/browse/KUDU-1773) | Kudu client DCHECK fails |  Critical | client | Matthew Jacobs | Adar Dembo |
| [KUDU-1778](https://issues.apache.org/jira/browse/KUDU-1778) | Consensus "stuck" after a leader election when both peers were divergent |  Critical | consensus | Todd Lipcon | Todd Lipcon |
| [KUDU-625](https://issues.apache.org/jira/browse/KUDU-625) | On ~WriteTransaction() do not commit() the mvcc txn by default |  Major | tserver | David Alves | David Alves |
| [KUDU-1752](https://issues.apache.org/jira/browse/KUDU-1752) | C++ client error memory should be bounded |  Critical | client | Matthew Jacobs | Alexey Serbin |
| [KUDU-981](https://issues.apache.org/jira/browse/KUDU-981) | Validate table and column names |  Critical | master | Todd Lipcon | Todd Lipcon |
| [KUDU-695](https://issues.apache.org/jira/browse/KUDU-695) | contention on glog disk can block reactor threads |  Major | perf | Todd Lipcon | Todd Lipcon |
| [KUDU-1791](https://issues.apache.org/jira/browse/KUDU-1791) | read-only log block manager should not truncate metadata files |  Major | fs | Adar Dembo | Adar Dembo |
| [KUDU-1789](https://issues.apache.org/jira/browse/KUDU-1789) | ScannerKeepAlive leaks RPCs when scanner is already expired |  Critical | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1747](https://issues.apache.org/jira/browse/KUDU-1747) | AlterTableOptions.addColumns() API has wrong semantics wrt nullability and default values |  Major | . | Dimitris Tsirogiannis | Will Berkeley |
| [KUDU-1746](https://issues.apache.org/jira/browse/KUDU-1746) | Add support for specifying all possible column options in AlterTableOptions.addColumn() |  Major | . | Dimitris Tsirogiannis | Will Berkeley |
| [KUDU-1792](https://issues.apache.org/jira/browse/KUDU-1792) | It is possible to overwrite range partitions with new ones |  Major | . | Lars Volker | Dan Burkert |
| [KUDU-1399](https://issues.apache.org/jira/browse/KUDU-1399) | LBM fd usage sometimes doesn't scale right |  Major | fs | Jean-Daniel Cryans | Adar Dembo |
| [KUDU-1780](https://issues.apache.org/jira/browse/KUDU-1780) | Unshaded com.google.thirdparty.publicsuffix classes in kudu-client jar |  Major | client | Mike Percy | Matt Dailey |
| [KUDU-921](https://issues.apache.org/jira/browse/KUDU-921) | TSTabletManager: Run tablet copy client on background thread |  Critical | consensus | Mike Percy | Mike Percy |
| [KUDU-1793](https://issues.apache.org/jira/browse/KUDU-1793) | When out of disk space, LBM can corrupt data files |  Blocker | . | Adar Dembo | Adar Dembo |
| [KUDU-1785](https://issues.apache.org/jira/browse/KUDU-1785) | SIGSEGV if tablet copy attempt started while tablet is bootstrapping |  Major | tablet | Mike Percy | Mike Percy |
| [KUDU-1624](https://issues.apache.org/jira/browse/KUDU-1624) | Possible data races in util/trace |  Major | util | Adar Dembo | Todd Lipcon |
| [KUDU-1757](https://issues.apache.org/jira/browse/KUDU-1757) | Operation.toString() throws IllegalStateException if there are unset key columns |  Minor | api, client | Yanlong\_Zheng | Yanlong\_Zheng |
| [KUDU-1753](https://issues.apache.org/jira/browse/KUDU-1753) | Impala query fails: Unable to advance iterator: Illegal state: Tablet is not running |  Critical | client, impala | Taras Bobrovytsky | Alexey Serbin |
| [KUDU-1497](https://issues.apache.org/jira/browse/KUDU-1497) | Full support for read-your-writes consistency |  Major | client, tablet, tserver | Mike Percy | David Alves |
| [KUDU-1656](https://issues.apache.org/jira/browse/KUDU-1656) | Scanner timeouts aren't retried when waiting on a transaction |  Major | tserver | Jean-Daniel Cryans | David Alves |
| [KUDU-1799](https://issues.apache.org/jira/browse/KUDU-1799) | AsyncKuduClient.discoverTablets has very expensive logging |  Critical | . | Matthew Jacobs | Dan Burkert |
| [KUDU-1776](https://issues.apache.org/jira/browse/KUDU-1776) | 'kudu remote\_replica copy' ends up fetching wildcard address from source server |  Critical | ops-tooling | Todd Lipcon | Dinesh Bhat |
| [KUDU-1524](https://issues.apache.org/jira/browse/KUDU-1524) | Flushing large compressed values can cause a crash |  Critical | cfile | Jean-Daniel Cryans |  |
| [KUDU-1801](https://issues.apache.org/jira/browse/KUDU-1801) | High lock contention on TableInfo objects |  Major | master | Todd Lipcon | Todd Lipcon |
| [KUDU-1798](https://issues.apache.org/jira/browse/KUDU-1798) | File manager is broken on OS X |  Major | . | Dinesh Bhat | Dinesh Bhat |
| [KUDU-1369](https://issues.apache.org/jira/browse/KUDU-1369) | client does not fail over snapshot scans when querying lagging replicas |  Major | client | Todd Lipcon | David Alves |
| [KUDU-1796](https://issues.apache.org/jira/browse/KUDU-1796) | ToolTest.TestLocalReplicaTombstoneDelete fails sporadically |  Major | test | Dinesh Bhat | Dinesh Bhat |
| [KUDU-1655](https://issues.apache.org/jira/browse/KUDU-1655) | Update docs for ASF maven repository coordinates |  Major | documentation | Todd Lipcon | Jun He |
| [KUDU-1817](https://issues.apache.org/jira/browse/KUDU-1817) | Failed to execute spark-shell with kudu-spark2 package |  Blocker | client, spark | Jun He | Jun He |
| [KUDU-1675](https://issues.apache.org/jira/browse/KUDU-1675) | Obsolete approach for verifying Impala-Kudu |  Major | documentation | Suzanne McIntosh |  |
| [KUDU-1508](https://issues.apache.org/jira/browse/KUDU-1508) | Log block manager triggers ext4 hole punching bug in el6 |  Blocker | fs | Todd Lipcon | Adar Dembo |
| [KUDU-1493](https://issues.apache.org/jira/browse/KUDU-1493) | Spark read fails if key columns are not leading columns |  Major | spark | Tom White | Will Berkeley |
| [KUDU-1854](https://issues.apache.org/jira/browse/KUDU-1854) | Fix links to Cloudera 'beta' docs across all topics |  Minor | documentation | Ambreen Kazi | Ambreen Kazi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1679](https://issues.apache.org/jira/browse/KUDU-1679) | Propagate timestamps for scans |  Major | tserver | David Alves | Alexey Serbin |
| [KUDU-1189](https://issues.apache.org/jira/browse/KUDU-1189) | On reads at a snapshot that touch multiple tablets, without the user setting a timestamp, use the timestamp from the first server for following scans |  Critical | client | David Alves | Alexey Serbin |
| [KUDU-420](https://issues.apache.org/jira/browse/KUDU-420) | c++ client: implement HT timestamp propagation via scan tokens |  Major | tserver | David Alves | Alexey Serbin |
| [KUDU-1770](https://issues.apache.org/jira/browse/KUDU-1770) | C++ client: propagate timestamp for write operations |  Major | client | Alexey Serbin | Alexey Serbin |
| [KUDU-237](https://issues.apache.org/jira/browse/KUDU-237) | Support for encoding REINSERT |  Major | tablet | David Alves | David Alves |
| [KUDU-798](https://issues.apache.org/jira/browse/KUDU-798) | Proper safe time advancement by leaders and replicas |  Critical | consensus, tserver | David Alves | David Alves |
| [KUDU-1127](https://issues.apache.org/jira/browse/KUDU-1127) | Avoid holding RPC handler threads on replicas that are part of a degraded tablet |  Major | tserver | Todd Lipcon | David Alves |
| [KUDU-1733](https://issues.apache.org/jira/browse/KUDU-1733) | Document Consistency Semantics |  Critical | client, tablet, tserver | David Alves | Todd Lipcon |


