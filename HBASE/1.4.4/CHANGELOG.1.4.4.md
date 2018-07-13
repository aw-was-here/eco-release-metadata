
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
# Apache HBase Changelog

## Release 1.4.4 - 2018-04-30

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20276](https://issues.apache.org/jira/browse/HBASE-20276) | [shell] Revert shell REPL change and document |  Blocker | documentation, shell | Sean Busbey | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15466](https://issues.apache.org/jira/browse/HBASE-15466) | precommit should not run all java goals when given a docs-only patch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20352](https://issues.apache.org/jira/browse/HBASE-20352) | [Chore] Backport HBASE-18309 to branch-1 |  Major | . | Reid Chan | Reid Chan |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20459](https://issues.apache.org/jira/browse/HBASE-20459) | Majority of scan CPU time in HBase-1 spent in size estimation |  Critical | Performance, scan | Lars Hofhansl | Lars Hofhansl |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20292](https://issues.apache.org/jira/browse/HBASE-20292) | Wrong URLs in the descriptions for update\_all\_config and update\_config commands in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20302](https://issues.apache.org/jira/browse/HBASE-20302) | CatalogJanitor should log the reason why it is disabled |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-17631](https://issues.apache.org/jira/browse/HBASE-17631) | Canary interval too low |  Major | canary | Lars George | Jan Hentschel |
| [HBASE-20322](https://issues.apache.org/jira/browse/HBASE-20322) | CME in StoreScanner causes region server crash |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20231](https://issues.apache.org/jira/browse/HBASE-20231) | Not able to delete column family from a row using RemoteHTable |  Major | REST | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20301](https://issues.apache.org/jira/browse/HBASE-20301) | Remove the meaningless plus sign from table.jsp |  Minor | UI | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19343](https://issues.apache.org/jira/browse/HBASE-19343) | Restore snapshot makes split parent region online |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20280](https://issues.apache.org/jira/browse/HBASE-20280) | Fix possibility of deadlocking in refreshFileConnections when prefetch is enabled |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20404](https://issues.apache.org/jira/browse/HBASE-20404) | Ugly cleanerchore complaint that dir is not empty |  Major | master | stack | Sean Busbey |
| [HBASE-20463](https://issues.apache.org/jira/browse/HBASE-20463) | Fix breakage introduced on branch-1 by HBASE-20276 "[shell] Revert shell REPL change and document" |  Blocker | shell | stack | Sean Busbey |
| [HBASE-20293](https://issues.apache.org/jira/browse/HBASE-20293) | get\_splits returns duplicate split points when region replication is on |  Minor | shell | Toshihiro Suzuki | Toshihiro Suzuki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |


