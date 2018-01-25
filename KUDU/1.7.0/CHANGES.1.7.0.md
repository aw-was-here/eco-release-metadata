
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

## Release 1.7.0 - Unreleased (as of 2018-01-25)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2256](https://issues.apache.org/jira/browse/KUDU-2256) | Expose inbound call transfer size in RPC context |  Major | rpc | Lars Volker | Lars Volker |
| [KUDU-1489](https://issues.apache.org/jira/browse/KUDU-1489) | Use WAL directory for tablet metadata files |  Major | consensus, fs, tserver | Adar Dembo | Andrew Wong |
| [KUDU-2261](https://issues.apache.org/jira/browse/KUDU-2261) | flush responses' order should match the order we call apply |  Major | client, java | ZhangZhen | ZhangZhen |
| [KUDU-2270](https://issues.apache.org/jira/browse/KUDU-2270) | Allow long RPC duration which triggers logging to be configurable |  Minor | rpc | Michael Ho | Michael Ho |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2121](https://issues.apache.org/jira/browse/KUDU-2121) | Java Client chooses GSSAPI SASL mechanism when Kerberos credentials are not present |  Major | java, security | Dan Burkert | Dan Burkert |
| [KUDU-2231](https://issues.apache.org/jira/browse/KUDU-2231) | "materializing\_iterator\_do\_pushdown=true" cause simple query slow |  Major | master, tserver | DawnZhang | Dan Burkert |
| [KUDU-2237](https://issues.apache.org/jira/browse/KUDU-2237) | Allows idle server connection detection to be disabled |  Minor | rpc | Michael Ho | Michael Ho |
| [KUDU-2229](https://issues.apache.org/jira/browse/KUDU-2229) | log spam: Not starting pre-election -- already a leader |  Major | consensus | Mike Percy | Mike Percy |
| [KUDU-2115](https://issues.apache.org/jira/browse/KUDU-2115) | Fix rowset compaction selection race |  Major | tablet | Will Berkeley | Andrew Wong |
| [KUDU-2251](https://issues.apache.org/jira/browse/KUDU-2251) | rowset size can overflow int in RowSetInfo |  Critical | tablet | Dan Burkert | Dan Burkert |
| [KUDU-2208](https://issues.apache.org/jira/browse/KUDU-2208) | Subprocess::Wait should handle EINTR |  Trivial | test, util | Todd Lipcon | Jeffrey F. Lukman |
| [KUDU-2148](https://issues.apache.org/jira/browse/KUDU-2148) | 'kudu [master\|tserver] status' may crash starting Kudu server |  Critical | tserver | Alexey Serbin | Adar Dembo |
| [KUDU-2253](https://issues.apache.org/jira/browse/KUDU-2253) | Deltafile on-disk size is 3x larger than expected for large-value workloads |  Major | perf, tablet | Dan Burkert | Dan Burkert |
| [KUDU-2249](https://issues.apache.org/jira/browse/KUDU-2249) | fix client shut down prematurely in KuduTableInputFormat |  Major | . | Clemens Valiente | Clemens Valiente |
| [KUDU-2238](https://issues.apache.org/jira/browse/KUDU-2238) | Big DMS not flush under memory pressure |  Major | . | ZhangZhen | ZhangZhen |
| [KUDU-2202](https://issues.apache.org/jira/browse/KUDU-2202) | Removing a data directory is unsafe |  Major | fs | Adar Dembo | Adar Dembo |
| [KUDU-2126](https://issues.apache.org/jira/browse/KUDU-2126) | DeleteTablet RPC on an already deleted tablet should be a no-op |  Major | tserver | Adar Dembo | Jeffrey F. Lukman |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-869](https://issues.apache.org/jira/browse/KUDU-869) | Support PRE\_VOTER config membership type |  Critical | consensus | Mike Percy | Mike Percy |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2228](https://issues.apache.org/jira/browse/KUDU-2228) | Make Messenger options configurable |  Major | rpc | Sailesh Mukil | Sailesh Mukil |


