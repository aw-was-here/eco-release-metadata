
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

## Release 1.2.5 - Unreleased (as of 2017-01-19)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16033](https://issues.apache.org/jira/browse/HBASE-16033) | Add more details in logging of responseTooSlow/TooLarge |  Major | Operability | Yu Li | Yu Li |
| [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | Log more details for Scan#next request when responseTooSlow |  Major | Operability | Yu Li | Yu Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15324](https://issues.apache.org/jira/browse/HBASE-15324) | Jitter may cause desiredMaxFileSize overflow in ConstantSizeRegionSplitPolicy and trigger unexpected split |  Major | . | Yu Li | Yu Li |
| [HBASE-16980](https://issues.apache.org/jira/browse/HBASE-16980) | TestRowProcessorEndpoint failing consistently |  Major | . | Andrew Purtell | Yu Li |
| [HBASE-17042](https://issues.apache.org/jira/browse/HBASE-17042) | Remove 'public' keyword from MasterObserver interface |  Minor | Coprocessors | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17020](https://issues.apache.org/jira/browse/HBASE-17020) | keylen in midkey() dont computed correctly |  Major | HFile | Yu Sun | Yu Sun |
| [HBASE-17039](https://issues.apache.org/jira/browse/HBASE-17039) | SimpleLoadBalancer schedules large amount of invalid region moves |  Major | Balancer | Charlie Qiangeng Xu | Charlie Qiangeng Xu |
| [HBASE-17074](https://issues.apache.org/jira/browse/HBASE-17074) | PreCommit job always fails because of OOM |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-17044](https://issues.apache.org/jira/browse/HBASE-17044) | Fix merge failed before creating merged region leaves meta inconsistent |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17091](https://issues.apache.org/jira/browse/HBASE-17091) | IntegrationTestZKAndFSPermissions failed with 'KeeperException$NoNodeException' |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17058](https://issues.apache.org/jira/browse/HBASE-17058) | Lower epsilon used for jitter verification from HBASE-15324 |  Major | Compaction | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-17127](https://issues.apache.org/jira/browse/HBASE-17127) | Locate region should fail fast if underlying Connection already closed |  Major | . | Yu Li | Yu Li |
| [HBASE-17206](https://issues.apache.org/jira/browse/HBASE-17206) | FSHLog may roll a new writer successfully with unflushed entries |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | Prevent setting timestamp of delta operations the same as previous value's |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16886](https://issues.apache.org/jira/browse/HBASE-16886) | hbase-client: scanner with reversed=true and small=true gets no result |  Major | . | huzheng | huzheng |
| [HBASE-17118](https://issues.apache.org/jira/browse/HBASE-17118) | StoreScanner leaked in KeyValueHeap |  Major | . | binlijin | binlijin |
| [HBASE-16985](https://issues.apache.org/jira/browse/HBASE-16985) | TestClusterId failed due to wrong hbase rootdir |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17023](https://issues.apache.org/jira/browse/HBASE-17023) | Region left unassigned due to AM and SSH each thinking others would do the assignment work |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17328](https://issues.apache.org/jira/browse/HBASE-17328) | Properly dispose of looped replication peers |  Critical | Replication | Vincent Poon | Vincent Poon |
| [HBASE-17341](https://issues.apache.org/jira/browse/HBASE-17341) | Add a timeout during replication endpoint termination |  Critical | . | Vincent Poon | Vincent Poon |
| [HBASE-17238](https://issues.apache.org/jira/browse/HBASE-17238) | Wrong in-memory hbase:meta location causing SSH failure |  Critical | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17424](https://issues.apache.org/jira/browse/HBASE-17424) | Protect REST client against malicious XML responses. |  Major | REST | Josh Elser | Josh Elser |
| [HBASE-17289](https://issues.apache.org/jira/browse/HBASE-17289) | Avoid adding a replication peer named "lock" |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17149](https://issues.apache.org/jira/browse/HBASE-17149) | Procedure V2 - Fix nonce submission to avoid unnecessary calling coprocessor multiple times |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17409](https://issues.apache.org/jira/browse/HBASE-17409) | Re-fix XSS request issue in JMXJsonServlet |  Major | security, UI | Josh Elser | Josh Elser |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16710](https://issues.apache.org/jira/browse/HBASE-16710) | Add ZStandard Codec to Compression.java |  Minor | . | churro morales | churro morales |


