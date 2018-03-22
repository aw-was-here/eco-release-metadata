
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

## Release 1.7.0 - Unreleased (as of 2018-03-22)



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2279](https://issues.apache.org/jira/browse/KUDU-2279) | Enable metrics logging by default |  Major | ops-tooling | Todd Lipcon | Todd Lipcon |
| [KUDU-721](https://issues.apache.org/jira/browse/KUDU-721) | Support for DECIMAL type |  Critical | client, tablet | Todd Lipcon | Grant Henke |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2256](https://issues.apache.org/jira/browse/KUDU-2256) | Expose inbound call transfer size in RPC context |  Major | rpc | Lars Volker | Lars Volker |
| [KUDU-1489](https://issues.apache.org/jira/browse/KUDU-1489) | Use WAL directory for tablet metadata files |  Major | consensus, fs, tserver | Adar Dembo | Andrew Wong |
| [KUDU-2261](https://issues.apache.org/jira/browse/KUDU-2261) | flush responses' order should match the order we call apply |  Major | client, java | ZhangZhen | ZhangZhen |
| [KUDU-2270](https://issues.apache.org/jira/browse/KUDU-2270) | Allow long RPC duration which triggers logging to be configurable |  Minor | rpc | Michael Ho | Michael Ho |
| [KUDU-2265](https://issues.apache.org/jira/browse/KUDU-2265) | A non-leader master uses self-signed server TLS cert if it hasn't ever run as a leader |  Major | master, security | Alexey Serbin | Alexey Serbin |
| [KUDU-2267](https://issues.apache.org/jira/browse/KUDU-2267) | Client may see negotiation failure when talks to master followers with only self signed cert |  Major | client | Hao Hao | Hao Hao |
| [KUDU-2281](https://issues.apache.org/jira/browse/KUDU-2281) | Add Primary Key Support For INT128 Columns |  Critical | . | Grant Henke | Grant Henke |
| [KUDU-2291](https://issues.apache.org/jira/browse/KUDU-2291) | Implement a /stacks web page |  Major | supportability | Todd Lipcon | Todd Lipcon |
| [KUDU-2264](https://issues.apache.org/jira/browse/KUDU-2264) | Java client should re-login from ticket cache when ticket is expiring |  Critical | client, java, security | Todd Lipcon | Todd Lipcon |
| [KUDU-2129](https://issues.apache.org/jira/browse/KUDU-2129) | Improve ksck 'under-replicated' message |  Major | . | Hao Hao | Andrew Wong |
| [KUDU-2331](https://issues.apache.org/jira/browse/KUDU-2331) | Use tablet\_id filter for 'move\_replica' while running ksck-based pre-flight consistency check |  Major | ksck, supportability | Alexey Serbin | Will Berkeley |
| [KUDU-2297](https://issues.apache.org/jira/browse/KUDU-2297) | Expand metrics logging into a general purpose diagnostics log |  Major | ops-tooling, supportability | Todd Lipcon | Todd Lipcon |


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
| [KUDU-2262](https://issues.apache.org/jira/browse/KUDU-2262) | Java client does not retry if no master is a leader |  Major | java | Todd Lipcon | Hao Hao |
| [KUDU-1927](https://issues.apache.org/jira/browse/KUDU-1927) | Potential race handling ConnectToMaster RPCs during leader transition |  Major | master, security | Todd Lipcon | Alexey Serbin |
| [KUDU-1613](https://issues.apache.org/jira/browse/KUDU-1613) | Under certain circumstances, tablet leader does not evict failed replica |  Major | consensus, tablet | Adar Dembo | Andrew Wong |
| [KUDU-2274](https://issues.apache.org/jira/browse/KUDU-2274) | Race when tombstoned replica gets copied and becomes leader |  Major | consensus | Mike Percy | Mike Percy |
| [KUDU-2296](https://issues.apache.org/jira/browse/KUDU-2296) | Kudu RPC cannot deserialize messages larger than 64MB |  Major | rpc | Joe McDonnell | Joe McDonnell |
| [KUDU-2275](https://issues.apache.org/jira/browse/KUDU-2275) | SIGSEGV due to bug in libunwind |  Major | . | Will Berkeley | Todd Lipcon |
| [KUDU-2325](https://issues.apache.org/jira/browse/KUDU-2325) | tserver crashes in kudu::StackTraceCollector::RevokeSigData |  Blocker | tserver, util | Alexey Serbin | Todd Lipcon |
| [KUDU-2328](https://issues.apache.org/jira/browse/KUDU-2328) | Crash at startup with OpenSSL FIPS mode |  Blocker | util | Todd Lipcon | Todd Lipcon |
| [KUDU-2319](https://issues.apache.org/jira/browse/KUDU-2319) | Follower masters cannot accept authn tokens for verification |  Major | master, security | Alexey Serbin | Alexey Serbin |
| [KUDU-2093](https://issues.apache.org/jira/browse/KUDU-2093) | Document that limit() method in Java scanner builder isn't implemented |  Major | client, documentation, java | Mike Percy | Grant Henke |
| [KUDU-2320](https://issues.apache.org/jira/browse/KUDU-2320) | Exponential back-off is not applied while retrying tablet replica deletion |  Minor | master, tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-2336](https://issues.apache.org/jira/browse/KUDU-2336) | Assert triggered from kudu::server::DiagnosticsLog::RunThread() |  Major | tserver | Alexey Serbin | Todd Lipcon |
| [KUDU-2334](https://issues.apache.org/jira/browse/KUDU-2334) | OutboundTransfer::TransferStarted() isn't stateful enough with TLS socket |  Major | rpc | Michael Ho | Michael Ho |
| [KUDU-2295](https://issues.apache.org/jira/browse/KUDU-2295) | nullptr dereference while scanning on already shutdown tablet replica |  Major | tserver | Alexey Serbin | Alexey Serbin |
| [KUDU-2330](https://issues.apache.org/jira/browse/KUDU-2330) | Exceptions thrown by Java client have inappropriate stack traces |  Major | client, java | Todd Lipcon |  |
| [KUDU-2322](https://issues.apache.org/jira/browse/KUDU-2322) | Leader spews logs when follower falls behind log GC |  Critical | consensus | Todd Lipcon | Alexey Serbin |
| [KUDU-2338](https://issues.apache.org/jira/browse/KUDU-2338) | Java decimal predicates are not coerced to match the column scale |  Critical | . | Grant Henke | Grant Henke |
| [KUDU-2342](https://issues.apache.org/jira/browse/KUDU-2342) | Non-voter replicas can be promoted and get stuck |  Blocker | tablet | Mostafa Mokhtar | Alexey Serbin |
| [KUDU-2343](https://issues.apache.org/jira/browse/KUDU-2343) | Java client doesn't properly reconnect to leader master when old leader is online |  Critical | client, java | Todd Lipcon | Todd Lipcon |
| [KUDU-2259](https://issues.apache.org/jira/browse/KUDU-2259) | kudu-spark imports authentication token into client multiple times |  Blocker | spark | Will Berkeley | Dan Burkert |
| [KUDU-2309](https://issues.apache.org/jira/browse/KUDU-2309) | /masters can show the wrong list of masters |  Major | ops-tooling | Will Berkeley | Will Berkeley |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-869](https://issues.apache.org/jira/browse/KUDU-869) | Support PRE\_VOTER config membership type |  Critical | consensus | Mike Percy | Mike Percy |
| [KUDU-1913](https://issues.apache.org/jira/browse/KUDU-1913) | Tablet server runs out of threads when creating lots of tablets |  Major | consensus, log | Juan Yu | Adar Dembo |
| [KUDU-1704](https://issues.apache.org/jira/browse/KUDU-1704) | Add a new read mode to perform bounded staleness snapshot reads |  Major | client | David Alves | Hao Hao |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-2228](https://issues.apache.org/jira/browse/KUDU-2228) | Make Messenger options configurable |  Major | rpc | Sailesh Mukil | Sailesh Mukil |


