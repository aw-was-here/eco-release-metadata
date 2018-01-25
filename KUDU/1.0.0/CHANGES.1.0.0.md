
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

## Release 1.0.0 - 2016-09-20



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-456](https://issues.apache.org/jira/browse/KUDU-456) | Implement AUTO\_FLUSH\_BACKGROUND flush mode |  Major | client | Todd Lipcon | Alexey Serbin |
| [KUDU-236](https://issues.apache.org/jira/browse/KUDU-236) | GC tablet history |  Blocker | tablet | David Alves | Mike Percy |
| [KUDU-1604](https://issues.apache.org/jira/browse/KUDU-1604) | Python Client - Selecting Column By Index Changes Column Name to Index Value |  Major | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1306](https://issues.apache.org/jira/browse/KUDU-1306) | timeseries features and improvements |  Major | api, client, master | Dan Burkert | Dan Burkert |
| [KUDU-422](https://issues.apache.org/jira/browse/KUDU-422) | Replicated master process (no master SPOF) |  Critical | consensus, master | Todd Lipcon | Adar Dembo |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1534](https://issues.apache.org/jira/browse/KUDU-1534) | expose software version in ListMaster RPC response |  Minor | . | Dan Burkert | Dinesh Bhat |
| [KUDU-1048](https://issues.apache.org/jira/browse/KUDU-1048) | master should show versions of tservers, version summary |  Major | master, ops-tooling | Todd Lipcon | Will Berkeley |
| [KUDU-1231](https://issues.apache.org/jira/browse/KUDU-1231) | Add "unlock" flag for experimental CLI flags |  Major | . | Mike Percy | Todd Lipcon |
| [KUDU-1593](https://issues.apache.org/jira/browse/KUDU-1593) | Expose num\_replicas to create\_table method in client |  Minor | python | Jordan Birdsell | Jordan Birdsell |
| [KUDU-1594](https://issues.apache.org/jira/browse/KUDU-1594) | Rename TIMESTAMP type to avoid confusion with other timestamp types |  Critical | . | Todd Lipcon | Todd Lipcon |
| [KUDU-854](https://issues.apache.org/jira/browse/KUDU-854) | Add ability to set projections in python scan API |  Minor | python | Todd Lipcon | Jordan Birdsell |
| [KUDU-619](https://issues.apache.org/jira/browse/KUDU-619) | Consolidate, clean up, and bring consistency to tools |  Major | ops-tooling | Adar Dembo | Adar Dembo |
| [KUDU-486](https://issues.apache.org/jira/browse/KUDU-486) | Use the client in ksck |  Major | client | Jean-Daniel Cryans |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-573](https://issues.apache.org/jira/browse/KUDU-573) | ASAN: use-after-free on RpcRetrier in MasterReplicationTest |  Major | master | Mike Percy | Adar Dembo |
| [KUDU-763](https://issues.apache.org/jira/browse/KUDU-763) | consensus queue metrics on followers are messed up |  Major | consensus | Todd Lipcon | Will Berkeley |
| [KUDU-1157](https://issues.apache.org/jira/browse/KUDU-1157) | [java client] check array length instead of reference equality to EMPTY\_ARRAY |  Major | client | Dan Burkert | Todd Lipcon |
| [KUDU-687](https://issues.apache.org/jira/browse/KUDU-687) | ksck should work against multi-master |  Major | ops-tooling | Todd Lipcon | Adar Dembo |
| [KUDU-1586](https://issues.apache.org/jira/browse/KUDU-1586) | If a single op is larger than consensus\_max\_batch\_size\_bytes, consensus gets stuck |  Blocker | consensus | Todd Lipcon | Todd Lipcon |
| [KUDU-1376](https://issues.apache.org/jira/browse/KUDU-1376) | [c++ client] KuduSession::SetMutationBufferSpace is not defined |  Major | . | Dan Burkert | Alexey Serbin |
| [KUDU-1581](https://issues.apache.org/jira/browse/KUDU-1581) | Kudu-Spark read failure when the Kudu table contains BINARY column |  Major | client | Ram Mettu | Ram Mettu |
| [KUDU-1113](https://issues.apache.org/jira/browse/KUDU-1113) | pushed predicates not displaying on scans web page |  Major | impala | Todd Lipcon | Will Berkeley |
| [KUDU-1582](https://issues.apache.org/jira/browse/KUDU-1582) | maintenance manager scheduling very slow on TS with lots of data |  Major | perf, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1513](https://issues.apache.org/jira/browse/KUDU-1513) | Remote bootstrapping spams the leader's log |  Major | consensus | Jean-Daniel Cryans | Todd Lipcon |
| [KUDU-1590](https://issues.apache.org/jira/browse/KUDU-1590) | cache-test failing on my laptop |  Blocker | test | Adar Dembo | Todd Lipcon |
| [KUDU-1557](https://issues.apache.org/jira/browse/KUDU-1557) | recently completed operations on maintenance manager page should be sorted by time |  Major | ops-tooling | Todd Lipcon | Todd Lipcon |
| [KUDU-1495](https://issues.apache.org/jira/browse/KUDU-1495) | Deleted tablets may not quiesce maintenance operations in a timely fashion |  Major | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1304](https://issues.apache.org/jira/browse/KUDU-1304) | python tests should wait for tablet servers to fully start before creating tables |  Minor | python, test | Todd Lipcon | Jordan Birdsell |
| [KUDU-1408](https://issues.apache.org/jira/browse/KUDU-1408) | Adding a replica may never succeed if copying tablet takes longer than the log retention time |  Critical | consensus, tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1597](https://issues.apache.org/jira/browse/KUDU-1597) | Master crashes if web UI is visited during startup |  Critical | master | Adar Dembo | Adar Dembo |
| [KUDU-1500](https://issues.apache.org/jira/browse/KUDU-1500) | TSAN race in ListTablets vs tablet metadata loading |  Major | tablet, tserver | Todd Lipcon | Dinesh Bhat |
| [KUDU-1605](https://issues.apache.org/jira/browse/KUDU-1605) | Blocks can be incorrectly deleted if TS crashes mid-tablet-copy |  Blocker | tserver | Todd Lipcon | Todd Lipcon |
| [KUDU-1420](https://issues.apache.org/jira/browse/KUDU-1420) | KuduSession methods are not implemented |  Major | . | Dan Burkert | Todd Lipcon |
| [KUDU-1390](https://issues.apache.org/jira/browse/KUDU-1390) | deprecation warnings triggered when building with cmake 3.5 |  Minor | . | Dan Burkert |  |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [KUDU-1065](https://issues.apache.org/jira/browse/KUDU-1065) | [java client] Flexible Partition Pruning |  Critical | client, perf | Jean-Daniel Cryans | Dan Burkert |


