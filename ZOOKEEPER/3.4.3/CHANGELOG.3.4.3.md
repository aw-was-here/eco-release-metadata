
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
# Apache Zookeeper Changelog

## Release 3.4.3 - 2012-02-13



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1345](https://issues.apache.org/jira/browse/ZOOKEEPER-1345) | Add a .gitignore file with general exclusions and Eclipse project files excluded |  Trivial | build | Harsh J | Harsh J |
| [ZOOKEEPER-1322](https://issues.apache.org/jira/browse/ZOOKEEPER-1322) | Cleanup/fix logging in Quorum code. |  Major | server | Patrick Hunt | Patrick Hunt |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1089](https://issues.apache.org/jira/browse/ZOOKEEPER-1089) | zkServer.sh status does not work due to invalid option of nc |  Major | scripts | Bill Au | Roman Shaposhnik |
| [ZOOKEEPER-1343](https://issues.apache.org/jira/browse/ZOOKEEPER-1343) | getEpochToPropose should check if lastAcceptedEpoch is greater or equal than epoch |  Critical | . | Flavio Junqueira | Flavio Junqueira |
| [ZOOKEEPER-1351](https://issues.apache.org/jira/browse/ZOOKEEPER-1351) | invalid test verification in MultiTransactionTest |  Major | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-973](https://issues.apache.org/jira/browse/ZOOKEEPER-973) | bind() could fail on Leader because it does not setReuseAddress on its ServerSocket |  Trivial | server | Vishal Kher | Harsh J |
| [ZOOKEEPER-1367](https://issues.apache.org/jira/browse/ZOOKEEPER-1367) | Data inconsistencies and unexpired ephemeral nodes after cluster restart |  Blocker | server | Jeremy Stribling | Benjamin Reed |
| [ZOOKEEPER-1353](https://issues.apache.org/jira/browse/ZOOKEEPER-1353) | C client test suite fails consistently |  Minor | c client, tests | Clint Byrum | Clint Byrum |
| [ZOOKEEPER-1348](https://issues.apache.org/jira/browse/ZOOKEEPER-1348) | Zookeeper 3.4.2 C client incorrectly reports string version of 3.4.1 |  Major | c client | Marshall McMullen | Mahadev konar |
| [ZOOKEEPER-1373](https://issues.apache.org/jira/browse/ZOOKEEPER-1373) | Hardcoded SASL login context name clashes with Hadoop security configuration override |  Major | java client | Thomas Weise | Eugene Koontz |
| [ZOOKEEPER-1352](https://issues.apache.org/jira/browse/ZOOKEEPER-1352) | server.InvalidSnapshotTest is using connection timeouts that are too short |  Major | tests | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1336](https://issues.apache.org/jira/browse/ZOOKEEPER-1336) | javadoc for multi is confusing, references functionality that doesn't seem to exist |  Major | java client | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1327](https://issues.apache.org/jira/browse/ZOOKEEPER-1327) | there are still remnants of hadoop urls |  Major | . | Benjamin Reed | Harsh J |
| [ZOOKEEPER-1340](https://issues.apache.org/jira/browse/ZOOKEEPER-1340) | multi problem - typical user operations are generating ERROR level messages in the server |  Major | server | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1374](https://issues.apache.org/jira/browse/ZOOKEEPER-1374) | C client multi-threaded test suite fails to compile on ARM architectures. |  Minor | c client | James Page | James Page |
| [ZOOKEEPER-1338](https://issues.apache.org/jira/browse/ZOOKEEPER-1338) | class cast exceptions may be thrown by multi ErrorResult class (invalid equals) |  Major | java client | Patrick Hunt | Patrick Hunt |
| [ZOOKEEPER-1370](https://issues.apache.org/jira/browse/ZOOKEEPER-1370) | Add logging changes in Release Notes needed for clients because of ZOOKEEPER-850. |  Major | . | Mahadev konar | Mahadev konar |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [ZOOKEEPER-1337](https://issues.apache.org/jira/browse/ZOOKEEPER-1337) | multi's "Transaction" class is missing tests. |  Minor | java client | Patrick Hunt | Patrick Hunt |


