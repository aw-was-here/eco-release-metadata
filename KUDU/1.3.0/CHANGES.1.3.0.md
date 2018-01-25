
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

## Release 1.3.0 - 2017-03-20



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-100](https://issues.apache.org/jira/browse/KUDU-100) | Supporting RLE for 64-bit integer data types |  Major | cfile, util | Alex Feinberg | Haijie Hong |
| [KUDU-751](https://issues.apache.org/jira/browse/KUDU-751) | Use https for web pages |  Minor | security | David S. Wang | Todd Lipcon |
| [KUDU-427](https://issues.apache.org/jira/browse/KUDU-427) | Support for strong authentication (kerberos) |  Critical | client, master, rpc, security, tserver | Todd Lipcon |  |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1771](https://issues.apache.org/jira/browse/KUDU-1771) | Java client "connection refused" errors logged as "connection reset" |  Major | client | Todd Lipcon | Jun He |
| [KUDU-1751](https://issues.apache.org/jira/browse/KUDU-1751) | Use better encodings by default |  Critical | tablet | Todd Lipcon | Todd Lipcon |
| [KUDU-1836](https://issues.apache.org/jira/browse/KUDU-1836) | Enable compression of delta files |  Major | perf, tablet | Todd Lipcon | Todd Lipcon |
| [KUDU-1691](https://issues.apache.org/jira/browse/KUDU-1691) | [Python] - Enable bitshuffle and dictionary encoding |  Minor | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1844](https://issues.apache.org/jira/browse/KUDU-1844) | /varz should not expose potentially sensitive configs |  Major | security, util | Todd Lipcon | Hao Hao |
| [KUDU-1402](https://issues.apache.org/jira/browse/KUDU-1402) | KuduSession.flush can return null or presumably an empty list |  Minor | . | Brock Noland | Grant Henke |
| [KUDU-1873](https://issues.apache.org/jira/browse/KUDU-1873) | Audit TLS ciphers |  Major | rpc, security | Dan Burkert | Dan Burkert |
| [KUDU-1874](https://issues.apache.org/jira/browse/KUDU-1874) | Require TLS 1.2 |  Major | rpc, security | Dan Burkert | Dan Burkert |
| [KUDU-1845](https://issues.apache.org/jira/browse/KUDU-1845) | Kerberos client keytab should be periodically renewed |  Critical | security | Todd Lipcon | Sailesh Mukil |
| [KUDU-1835](https://issues.apache.org/jira/browse/KUDU-1835) | Support compression of the WAL |  Major | log, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-1946](https://issues.apache.org/jira/browse/KUDU-1946) | ksck should indicate desired replication factor of tables |  Major | ksck | Todd Lipcon | Grant Henke |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1805](https://issues.apache.org/jira/browse/KUDU-1805) | Generated service IF definitions don't properly qualify MetricEntity |  Minor | . | Henry Robinson | Henry Robinson |
| [KUDU-699](https://issues.apache.org/jira/browse/KUDU-699) | PeerManager::Close shouldn't block on requests |  Major | consensus | Todd Lipcon | Todd Lipcon |
| [KUDU-1564](https://issues.apache.org/jira/browse/KUDU-1564) | Deadlock on raft notification ThreadPool |  Critical | consensus | Todd Lipcon | Todd Lipcon |
| [KUDU-1655](https://issues.apache.org/jira/browse/KUDU-1655) | Update docs for ASF maven repository coordinates |  Major | documentation | Todd Lipcon | Jun He |
| [KUDU-1822](https://issues.apache.org/jira/browse/KUDU-1822) | Update docs to build the documentation in ubuntu |  Minor | documentation | Jun He | Jun He |
| [KUDU-1821](https://issues.apache.org/jira/browse/KUDU-1821) | Noisy warning from catalog manager |  Minor | master | Todd Lipcon | Jun He |
| [KUDU-1600](https://issues.apache.org/jira/browse/KUDU-1600) | Disallow enabling compression on already-compressed encodings |  Major | cfile, master, perf | Todd Lipcon | Todd Lipcon |
| [KUDU-1852](https://issues.apache.org/jira/browse/KUDU-1852) | KuduTableAlterer crashes when given nullptr range bound arguments |  Major | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1851](https://issues.apache.org/jira/browse/KUDU-1851) | Kudu python client crash on drop column |  Critical | python | Matthew Jacobs | Jordan Birdsell |
| [KUDU-1864](https://issues.apache.org/jira/browse/KUDU-1864) | Thirdparty squeasel build fails on macOS 10.12 |  Major | build | Dan Burkert | Alexey Serbin |
| [KUDU-1856](https://issues.apache.org/jira/browse/KUDU-1856) | Kudu can consume far more data than it should on XFS |  Critical | fs | Adar Dembo | Adar Dembo |
| [KUDU-1871](https://issues.apache.org/jira/browse/KUDU-1871) | Kudu C++ client does not retry on ServiceUnavailable errors |  Major | client | Alexey Serbin | Alexey Serbin |
| [KUDU-1877](https://issues.apache.org/jira/browse/KUDU-1877) | When webserver TLS is enabled, webui links should use https |  Major | security | Adar Dembo | Todd Lipcon |
| [KUDU-1855](https://issues.apache.org/jira/browse/KUDU-1855) | Kudu file UNIX permissions are inconsistent |  Blocker | security | Adar Dembo | Todd Lipcon |
| [KUDU-1870](https://issues.apache.org/jira/browse/KUDU-1870) | Kudu thirdparty boost build doesn't respect external compilation options |  Critical | build | Matthew Jacobs | Matthew Jacobs |
| [KUDU-1831](https://issues.apache.org/jira/browse/KUDU-1831) | Java client does not check If the primary key columns are specified first |  Major | client | Jun He | Jun He |
| [KUDU-1738](https://issues.apache.org/jira/browse/KUDU-1738) | Allow users of C++ client to disable initialization of OpenSSL |  Blocker | client, security | Todd Lipcon | Todd Lipcon |
| [KUDU-1888](https://issues.apache.org/jira/browse/KUDU-1888) | Java: if batch times out before being sent, wrong deferred is returned |  Major | java | Todd Lipcon | Todd Lipcon |
| [KUDU-1881](https://issues.apache.org/jira/browse/KUDU-1881) | Deserializing scan token should check nullability of column |  Critical | client | Matthew Jacobs | Dan Burkert |
| [KUDU-1601](https://issues.apache.org/jira/browse/KUDU-1601) | Add background task to remove old UNDO delta files |  Critical | tablet | Mike Percy | Mike Percy |
| [KUDU-1899](https://issues.apache.org/jira/browse/KUDU-1899) | TS crashes after inserting a row with empty string primary key |  Blocker | tserver | YulongZ | Todd Lipcon |
| [KUDU-1904](https://issues.apache.org/jira/browse/KUDU-1904) | Nullable RLE columns with only null values crash on scan |  Critical | cfile | Andrew Wong | Andrew Wong |
| [KUDU-1880](https://issues.apache.org/jira/browse/KUDU-1880) | IS NULL predicates eliminate some NULL values |  Blocker | . | Joe McDonnell | Andrew Wong |
| [KUDU-1901](https://issues.apache.org/jira/browse/KUDU-1901) | OpenSSL crashes if cert is adopted concurrently with a handshake |  Blocker | security | Todd Lipcon | Todd Lipcon |
| [KUDU-1714](https://issues.apache.org/jira/browse/KUDU-1714) | Kudu breakpad integration |  Major | . | Mike Percy | Mike Percy |
| [KUDU-1898](https://issues.apache.org/jira/browse/KUDU-1898) | /varz page doesn't HTML-escape flag values |  Major | util | Todd Lipcon | Hao Hao |
| [KUDU-1893](https://issues.apache.org/jira/browse/KUDU-1893) | Queries incorrectly yielding null results |  Blocker | cfile | Andrew Wong | Andrew Wong |
| [KUDU-1896](https://issues.apache.org/jira/browse/KUDU-1896) | enable redaction of data in web UI/tracing |  Blocker | security | Todd Lipcon | Todd Lipcon |
| [KUDU-1834](https://issues.apache.org/jira/browse/KUDU-1834) | KuduScanBatch::RowPtr::ToString should not redact |  Critical | client | Todd Lipcon | Andrew Wong |
| [KUDU-1906](https://issues.apache.org/jira/browse/KUDU-1906) | Java client hangs in scanner nextRows call |  Blocker | client | Todd Lipcon | Todd Lipcon |
| [KUDU-1905](https://issues.apache.org/jira/browse/KUDU-1905) | Allow reinserts on pk-only tables |  Blocker | tserver | YulongZ | David Alves |
| [KUDU-1742](https://issues.apache.org/jira/browse/KUDU-1742) | SSL-related TSAN warnings in rpc-test |  Major | . | Adar Dembo |  |
| [KUDU-1897](https://issues.apache.org/jira/browse/KUDU-1897) | GSSAPI negotiation single-threaded and very slow under concurrency |  Critical | rpc, security | Todd Lipcon | Dan Burkert |
| [KUDU-1923](https://issues.apache.org/jira/browse/KUDU-1923) | --rpc\_encryption=required option is not enforced on servers |  Blocker | rpc, security | Todd Lipcon | Dan Burkert |
| [KUDU-1824](https://issues.apache.org/jira/browse/KUDU-1824) | KuduRDD.collect fails because of NoSerializableException |  Major | spark | Dan Burkert |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1641](https://issues.apache.org/jira/browse/KUDU-1641) | Pushdown SparkSQL IN predicates |  Major | spark | Dan Burkert | Will Berkeley |
| [KUDU-1595](https://issues.apache.org/jira/browse/KUDU-1595) | Expose IS NOT NULL predicates in client API |  Major | client | Todd Lipcon | Will Berkeley |
| [KUDU-1642](https://issues.apache.org/jira/browse/KUDU-1642) | Add IS NULL predicate type |  Major | client, tablet | Dan Burkert | Will Berkeley |
| [KUDU-1631](https://issues.apache.org/jira/browse/KUDU-1631) | Spark: push down StringStartsWith filters |  Minor | spark | Dan Burkert | Will Berkeley |
| [KUDU-1643](https://issues.apache.org/jira/browse/KUDU-1643) | Prune hash partitions based on IN-list predicates |  Major | client, tablet | Dan Burkert | Haijie Hong |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-734](https://issues.apache.org/jira/browse/KUDU-734) | Add test coverage for all types in Java client |  Major | client, test | Todd Lipcon | Jun He |
| [KUDU-387](https://issues.apache.org/jira/browse/KUDU-387) | Implement a flag to prevent disclosure of user data in logs/UI |  Major | ops-tooling, security | Todd Lipcon |  |


