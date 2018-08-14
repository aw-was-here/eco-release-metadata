
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

## Release 1.5.1 - Unreleased (as of 2018-08-14)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2167](https://issues.apache.org/jira/browse/KUDU-2167) | C++ client crashes when server filters out all data in a scan RPC |  Critical | client | Adar Dembo | Adar Dembo |
| [KUDU-2188](https://issues.apache.org/jira/browse/KUDU-2188) | kudu-client JAR built via JDK8 depends on Java 8 APIs |  Critical | java | Adar Dembo | Adar Dembo |
| [KUDU-2209](https://issues.apache.org/jira/browse/KUDU-2209) | HybridClock doesn't handle changes STA\_NANO status flag |  Critical | server | Todd Lipcon | Todd Lipcon |
| [KUDU-2173](https://issues.apache.org/jira/browse/KUDU-2173) | Partitions are pruned incorrectly when range-partitioned on a PK prefix |  Blocker | client | Todd Lipcon | Dan Burkert |
| [KUDU-2231](https://issues.apache.org/jira/browse/KUDU-2231) | "materializing\_iterator\_do\_pushdown=true" cause simple query slow |  Major | master, tserver | DawnZhang | Dan Burkert |
| [KUDU-2218](https://issues.apache.org/jira/browse/KUDU-2218) | SSL3\_WRITE\_PENDING TlsSocket error |  Major | rpc, security | Alexey Serbin | Todd Lipcon |
| [KUDU-2251](https://issues.apache.org/jira/browse/KUDU-2251) | rowset size can overflow int in RowSetInfo |  Critical | tablet | Dan Burkert | Dan Burkert |
| [KUDU-2343](https://issues.apache.org/jira/browse/KUDU-2343) | Java client doesn't properly reconnect to leader master when old leader is online |  Critical | client, java | Todd Lipcon | Todd Lipcon |
| [KUDU-2416](https://issues.apache.org/jira/browse/KUDU-2416) | Incorrect fallthrough in Java PartialRow.setMin for DECIMAL times |  Critical | java | Todd Lipcon | Grant Henke |


