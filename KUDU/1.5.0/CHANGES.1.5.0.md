
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

## Release 1.5.0 - 2017-09-08



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2066](https://issues.apache.org/jira/browse/KUDU-2066) | Add experimental Gradle build support |  Major | . | Grant Henke | Grant Henke |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1911](https://issues.apache.org/jira/browse/KUDU-1911) | ksck master addresses argument is error prone |  Minor | ksck | Dan Burkert | Samuel Okrent |
| [KUDU-1929](https://issues.apache.org/jira/browse/KUDU-1929) | [rpc] Allow using encrypted private keys for TLS |  Major | rpc | Sailesh Mukil | Sailesh Mukil |
| [KUDU-2101](https://issues.apache.org/jira/browse/KUDU-2101) | [ksck] Include a summary at the bottom of the report |  Major | ops-tooling | Jean-Daniel Cryans | Will Berkeley |
| [KUDU-1955](https://issues.apache.org/jira/browse/KUDU-1955) | Refuse to read security credentials with world readable permissions |  Major | security, server | Dan Burkert | Samuel Okrent |
| [KUDU-1943](https://issues.apache.org/jira/browse/KUDU-1943) | log containers should be reusables without first closing in-flight writable blocks |  Major | fs | Adar Dembo | Hao Hao |
| [KUDU-1727](https://issues.apache.org/jira/browse/KUDU-1727) | Add Log Block Manager support for multiple un-synced blocks in a container |  Major | tablet | Mike Percy | Hao Hao |
| [KUDU-2104](https://issues.apache.org/jira/browse/KUDU-2104) | Upgrade to Spark 2.2.0 |  Major | java | Grant Henke | Grant Henke |
| [KUDU-2060](https://issues.apache.org/jira/browse/KUDU-2060) | Show primary keys in the master's table web UI page |  Major | master | Jean-Daniel Cryans | Sri Sai Kumar Ravipati |
| [KUDU-1811](https://issues.apache.org/jira/browse/KUDU-1811) | C++ client: use larger batches when fetching scan tokens |  Major | client | Todd Lipcon | Jun He |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1952](https://issues.apache.org/jira/browse/KUDU-1952) | round-robin block allocation can place all blocks for a given column on one disk |  Major | fs, perf | Todd Lipcon | Andrew Wong |
| [KUDU-2004](https://issues.apache.org/jira/browse/KUDU-2004) | Undefined behavior in TlsSocket::Writev() |  Major | security | Mike Percy | Edward Fancher |
| [KUDU-2003](https://issues.apache.org/jira/browse/KUDU-2003) | file\_cache-stress-test fails on systems with many CPUs |  Major | test | Todd Lipcon | Todd Lipcon |
| [KUDU-2041](https://issues.apache.org/jira/browse/KUDU-2041) | Connection negotiation may deadlock |  Critical | . | Henry Robinson | Henry Robinson |
| [KUDU-2052](https://issues.apache.org/jira/browse/KUDU-2052) | Use XFS\_IOC\_UNRESVSP64 ioctl to punch holes on xfs filesystems |  Critical | util | Adar Dembo | Adar Dembo |
| [KUDU-2042](https://issues.apache.org/jira/browse/KUDU-2042) | Flakiness in raft\_consensus-itest due to no process to resume |  Major | . | Alexey Serbin | Alexey Serbin |
| [KUDU-2043](https://issues.apache.org/jira/browse/KUDU-2043) | kudu java client should correctly relocate shaded dependencies |  Minor | spark | Jiahongchao | Grant Henke |
| [KUDU-1123](https://issues.apache.org/jira/browse/KUDU-1123) | MiniCluster should use GetBindIpForTabletServer() |  Minor | test, tserver | Mike Percy | Mike Percy |
| [KUDU-1932](https://issues.apache.org/jira/browse/KUDU-1932) | Run at least one tablet-level test against all block managers |  Major | test | Adar Dembo | Edward Fancher |
| [KUDU-1878](https://issues.apache.org/jira/browse/KUDU-1878) | Java openTable() call eagerly connects to all tablets |  Critical | client, impala, java, perf | Todd Lipcon | Alexey Serbin |
| [KUDU-2068](https://issues.apache.org/jira/browse/KUDU-2068) | Kudu/Centos 7/devtoolset miscompilation |  Major | build | Dan Burkert | Adar Dembo |
| [KUDU-2072](https://issues.apache.org/jira/browse/KUDU-2072) | upgrade to cmake 3.9.0 breaks sles12sp0 cmake patch |  Major | build | Matthew Jacobs | Matthew Jacobs |
| [KUDU-2058](https://issues.apache.org/jira/browse/KUDU-2058) | Java LocatedTablet implementation has sketchy string comparison |  Major | client, java | Todd Lipcon | Sri Sai Kumar Ravipati |
| [KUDU-2053](https://issues.apache.org/jira/browse/KUDU-2053) | Request reported as stale by the server in the spark client |  Critical | java | David Alves | Todd Lipcon |
| [KUDU-1536](https://issues.apache.org/jira/browse/KUDU-1536) | KSCK can crash when run against newly started master with existing tables |  Major | ksck | Dan Burkert | David Alves |
| [KUDU-2087](https://issues.apache.org/jira/browse/KUDU-2087) | Failure to map principal to local username in FreeIPA-configured environment |  Major | security | Todd Lipcon | Todd Lipcon |
| [KUDU-2088](https://issues.apache.org/jira/browse/KUDU-2088) | UpdateReplica accesses stack object after it is destroyed |  Major | consensus | Adar Dembo | Adar Dembo |
| [KUDU-2085](https://issues.apache.org/jira/browse/KUDU-2085) | Seek past last element of a prefix-encoded binary block may crash |  Critical | cfile | Todd Lipcon | Todd Lipcon |
| [KUDU-2091](https://issues.apache.org/jira/browse/KUDU-2091) | Certificates with intermediate CA's do not work with Kudu |  Critical | security | Sailesh Mukil | Sailesh Mukil |
| [KUDU-2049](https://issues.apache.org/jira/browse/KUDU-2049) | Too-strict check on RLE-encoded integer columns causes crash on scan |  Major | . | Will Berkeley | Will Berkeley |
| [KUDU-1942](https://issues.apache.org/jira/browse/KUDU-1942) | Kerberos fails to log in on hostnames with capital characters |  Critical | security | Todd Lipcon | Todd Lipcon |
| [KUDU-1407](https://issues.apache.org/jira/browse/KUDU-1407) | Leader should evict a failed follower stuck in the TABLET\_NOT\_RUNNING state |  Critical | consensus | Todd Lipcon | Andrew Wong |
| [KUDU-2039](https://issues.apache.org/jira/browse/KUDU-2039) | web UI /tables listing doesn't match total count |  Major | master | Adar Dembo | Abhishek Talluri |
| [KUDU-1726](https://issues.apache.org/jira/browse/KUDU-1726) | Avoid fsync-per-block in tablet copy |  Major | tablet | Mike Percy | Hao Hao |
| [KUDU-2103](https://issues.apache.org/jira/browse/KUDU-2103) | Java client doesn't work on a Kerberized cluster with DNS aliases for masters |  Major | java, security | Attila Bukor | Attila Bukor |
| [KUDU-2037](https://issues.apache.org/jira/browse/KUDU-2037) | ts\_recovery-itest flaky since KUDU-1034 fixed |  Critical | client, test | Todd Lipcon | Alexey Serbin |
| [KUDU-2045](https://issues.apache.org/jira/browse/KUDU-2045) | Data race on process\_memory::g\_hard\_limit |  Major | util | Adar Dembo | Todd Lipcon |
| [KUDU-2102](https://issues.apache.org/jira/browse/KUDU-2102) | PosixRWFile::Sync doesn't guarantee durability when used with multiple threads |  Major | util | Adar Dembo | Hao Hao |
| [KUDU-1544](https://issues.apache.org/jira/browse/KUDU-1544) | Race in Java client's AsyncKuduSession.apply() |  Major | client | Adar Dembo |  |
| [KUDU-2114](https://issues.apache.org/jira/browse/KUDU-2114) | Master asks tservers to re-delete tombstoned tablets when reported |  Blocker | consensus, master, tserver | Adar Dembo | Mike Percy |
| [KUDU-1894](https://issues.apache.org/jira/browse/KUDU-1894) | ITClient very flaky since introduction of TLS |  Critical | java | Todd Lipcon | Alexey Serbin |
| [KUDU-2089](https://issues.apache.org/jira/browse/KUDU-2089) | Failed java tests can orphan test-tmp files |  Major | test | Todd Lipcon | Jun He |
| [KUDU-2118](https://issues.apache.org/jira/browse/KUDU-2118) | Running RaftConsensus instances should not be destroyed by reactor threads |  Critical | consensus | Adar Dembo | Mike Percy |
| [KUDU-2131](https://issues.apache.org/jira/browse/KUDU-2131) | Tablet copy session may expire before completion for large tablet |  Blocker | . | Hao Hao | Hao Hao |
| [KUDU-2070](https://issues.apache.org/jira/browse/KUDU-2070) | Improve documentation/error when submitting secure spark jobs without specifying keytab/principal |  Major | spark | Dan Burkert | Dan Burkert |
| [KUDU-2078](https://issues.apache.org/jira/browse/KUDU-2078) | Flume sink fails to write if the size in bytes of the batch exceeds the client session's manual flush buffer size |  Major | flume-sink | Will Berkeley | Will Berkeley |
| [KUDU-2032](https://issues.apache.org/jira/browse/KUDU-2032) | Kerberos authentication fails with rdns disabled in krb5.conf |  Critical | security | Todd Lipcon | Todd Lipcon |
| [KUDU-2083](https://issues.apache.org/jira/browse/KUDU-2083) | MaintenanceManager running\_op\_ count not decremented if MaintenanceOp::Prepare() fails |  Critical | . | Samuel Okrent | David Alves |
| [KUDU-2110](https://issues.apache.org/jira/browse/KUDU-2110) | RPC footer may be appended more than once |  Blocker | rpc | Michael Ho | Michael Ho |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1914](https://issues.apache.org/jira/browse/KUDU-1914) | Add positive test cases for Web UI .htpasswd support |  Minor | security | Hao Hao | Samuel Okrent |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1442](https://issues.apache.org/jira/browse/KUDU-1442) | LBM should log startup progress periodically |  Trivial | tablet | zhangsong | Samuel Okrent |
| [KUDU-731](https://issues.apache.org/jira/browse/KUDU-731) | [java client] Refactor RPC to avoid the "master hack" |  Major | client | Andrew Wang | Alexey Serbin |
| [KUDU-871](https://issues.apache.org/jira/browse/KUDU-871) | Allow tombstoned tablets to vote |  Critical | consensus | Mike Percy | Mike Percy |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2021](https://issues.apache.org/jira/browse/KUDU-2021) | Add an integration test: in case of multi-master, RPC is retried in case of negotiation error with master |  Major | client | Alexey Serbin | Alexey Serbin |
| [KUDU-2051](https://issues.apache.org/jira/browse/KUDU-2051) | [DOCS] Update Impala integration limitations |  Major | documentation | Ambreen Kazi | Ambreen Kazi |
| [KUDU-2013](https://issues.apache.org/jira/browse/KUDU-2013) | Long lived auth tokens in Java client |  Major | client, java, security | Mike Percy | Alexey Serbin |
| [KUDU-2067](https://issues.apache.org/jira/browse/KUDU-2067) | Enable cfile checksumming by default |  Major | cfile | Grant Henke | Grant Henke |
| [KUDU-2098](https://issues.apache.org/jira/browse/KUDU-2098) | Drop Spark 1 Support |  Major | java | Grant Henke | Grant Henke |


