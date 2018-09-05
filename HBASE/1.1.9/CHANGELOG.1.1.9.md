
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

## Release 1.1.9 - 2017-02-26



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17637](https://issues.apache.org/jira/browse/HBASE-17637) | Update progress more frequently in IntegrationTestBigLinkedList.Generator.persist |  Minor | . | Andrew Purtell | Andrew Purtell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16985](https://issues.apache.org/jira/browse/HBASE-16985) | TestClusterId failed due to wrong hbase rootdir |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17328](https://issues.apache.org/jira/browse/HBASE-17328) | Properly dispose of looped replication peers |  Critical | Replication | Vincent Poon | Vincent Poon |
| [HBASE-17341](https://issues.apache.org/jira/browse/HBASE-17341) | Add a timeout during replication endpoint termination |  Critical | . | Vincent Poon | Vincent Poon |
| [HBASE-16663](https://issues.apache.org/jira/browse/HBASE-16663) | JMX ConnectorServer stopped when unauthorized user try to stop HM/RS/cluster |  Critical | metrics, security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-17238](https://issues.apache.org/jira/browse/HBASE-17238) | Wrong in-memory hbase:meta location causing SSH failure |  Critical | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17424](https://issues.apache.org/jira/browse/HBASE-17424) | Protect REST client against malicious XML responses. |  Major | REST | Josh Elser | Josh Elser |
| [HBASE-17289](https://issues.apache.org/jira/browse/HBASE-17289) | Avoid adding a replication peer named "lock" |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17540](https://issues.apache.org/jira/browse/HBASE-17540) | Change SASL server GSSAPI callback log line from DEBUG to TRACE in RegionServer to reduce log volumes in DEBUG mode |  Minor | regionserver | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-17522](https://issues.apache.org/jira/browse/HBASE-17522) | RuntimeExceptions from MemoryMXBean should not take down server process |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-17587](https://issues.apache.org/jira/browse/HBASE-17587) | Do not Rethrow DoNotRetryIOException as UnknownScannerException |  Major | Coprocessors, regionserver, rpc | Zach York | Zach York |
| [HBASE-17187](https://issues.apache.org/jira/browse/HBASE-17187) | DoNotRetryExceptions from coprocessors should bubble up to the application |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17597](https://issues.apache.org/jira/browse/HBASE-17597) | TestMetaWithReplicas.testMetaTableReplicaAssignment is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-17264](https://issues.apache.org/jira/browse/HBASE-17264) | Processing RIT with offline state will always fail to open the first time |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17275](https://issues.apache.org/jira/browse/HBASE-17275) | Assign timeout may cause region to be unassigned forever |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17616](https://issues.apache.org/jira/browse/HBASE-17616) | Incorrect actions performed by CM |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17265](https://issues.apache.org/jira/browse/HBASE-17265) | Region left unassigned in master failover when region failed to open |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17558](https://issues.apache.org/jira/browse/HBASE-17558) | ZK dumping jsp should escape html |  Minor | security, UI | Sean Busbey | Sean Busbey |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17149](https://issues.apache.org/jira/browse/HBASE-17149) | Procedure V2 - Fix nonce submission to avoid unnecessary calling coprocessor multiple times |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17409](https://issues.apache.org/jira/browse/HBASE-17409) | Re-fix XSS request issue in JMXJsonServlet |  Major | security, UI | Josh Elser | Josh Elser |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16710](https://issues.apache.org/jira/browse/HBASE-16710) | Add ZStandard Codec to Compression.java |  Minor | . | churro morales | churro morales |


