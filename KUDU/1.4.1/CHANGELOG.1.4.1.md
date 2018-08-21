
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

## Release 1.4.1 - Unreleased (as of 2018-08-21)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2053](https://issues.apache.org/jira/browse/KUDU-2053) | Request reported as stale by the server in the spark client |  Critical | java | David Alves | Todd Lipcon |
| [KUDU-1536](https://issues.apache.org/jira/browse/KUDU-1536) | KSCK can crash when run against newly started master with existing tables |  Major | ksck | Dan Burkert | David Alves |
| [KUDU-2087](https://issues.apache.org/jira/browse/KUDU-2087) | Failure to map principal to local username in FreeIPA-configured environment |  Major | security | Todd Lipcon | Todd Lipcon |
| [KUDU-2085](https://issues.apache.org/jira/browse/KUDU-2085) | Seek past last element of a prefix-encoded binary block may crash |  Critical | cfile | Todd Lipcon | Todd Lipcon |
| [KUDU-1942](https://issues.apache.org/jira/browse/KUDU-1942) | Kerberos fails to log in on hostnames with capital characters |  Critical | security | Todd Lipcon | Todd Lipcon |
| [KUDU-2103](https://issues.apache.org/jira/browse/KUDU-2103) | Java client doesn't work on a Kerberized cluster with DNS aliases for masters |  Major | java, security | Attila Bukor | Attila Bukor |
| [KUDU-2032](https://issues.apache.org/jira/browse/KUDU-2032) | Kerberos authentication fails with rdns disabled in krb5.conf |  Critical | security | Todd Lipcon | Todd Lipcon |
| [KUDU-2167](https://issues.apache.org/jira/browse/KUDU-2167) | C++ client crashes when server filters out all data in a scan RPC |  Critical | client | Adar Dembo | Adar Dembo |
| [KUDU-2083](https://issues.apache.org/jira/browse/KUDU-2083) | MaintenanceManager running\_op\_ count not decremented if MaintenanceOp::Prepare() fails |  Critical | . | Samuel Okrent | David Alves |
| [KUDU-2209](https://issues.apache.org/jira/browse/KUDU-2209) | HybridClock doesn't handle changes STA\_NANO status flag |  Critical | server | Todd Lipcon | Todd Lipcon |
| [KUDU-2173](https://issues.apache.org/jira/browse/KUDU-2173) | Partitions are pruned incorrectly when range-partitioned on a PK prefix |  Blocker | client | Todd Lipcon | Dan Burkert |
| [KUDU-2218](https://issues.apache.org/jira/browse/KUDU-2218) | SSL3\_WRITE\_PENDING TlsSocket error |  Major | rpc, security | Alexey Serbin | Todd Lipcon |
| [KUDU-2416](https://issues.apache.org/jira/browse/KUDU-2416) | Incorrect fallthrough in Java PartialRow.setMin for DECIMAL times |  Critical | java | Todd Lipcon | Grant Henke |


