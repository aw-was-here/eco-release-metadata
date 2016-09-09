
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

## Release 0.92.3 - Unreleased (as of 2016-09-08)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6951](https://issues.apache.org/jira/browse/HBASE-6951) | Allow the master info server to be started in a read only mode. |  Critical | UI | Elliott Clark | Elliott Clark |
| [HBASE-7097](https://issues.apache.org/jira/browse/HBASE-7097) | Log message in SecureServer.class uses wrong class name |  Minor | security | Y. SREENIVASULU REDDY |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6724](https://issues.apache.org/jira/browse/HBASE-6724) | Port HBASE-6165 'Replication can overrun .META. scans on cluster re-start' to 0.92 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-6844](https://issues.apache.org/jira/browse/HBASE-6844) | upgrade 0.23 version dependency in 0.94 |  Major | . | Francis Liu | Francis Liu |
| [HBASE-4565](https://issues.apache.org/jira/browse/HBASE-4565) | Maven HBase build broken on cygwin with copynativelib.sh call. |  Major | build | Suraj Varma | Suraj Varma |
| [HBASE-5179](https://issues.apache.org/jira/browse/HBASE-5179) | Concurrent processing of processFaileOver and ServerShutdownHandler may cause region to be assigned before log splitting is completed, causing data loss |  Critical | master | chunhui shen | chunhui shen |
| [HBASE-7072](https://issues.apache.org/jira/browse/HBASE-7072) | HBase-5256 breaks 0.92-0.94 compatibility |  Major | master, shell | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7061](https://issues.apache.org/jira/browse/HBASE-7061) | region balance algorithm should do "contiue" instead of "break" when calculating the underloaded server |  Major | . | Tianying Chang | Tianying Chang |
| [HBASE-7442](https://issues.apache.org/jira/browse/HBASE-7442) | HBase remote CopyTable not working when security enabled |  Major | IPC/RPC, mapreduce, security | James Kinley | James Kinley |
| [HBASE-5478](https://issues.apache.org/jira/browse/HBASE-5478) | [0.92] TestMetaReaderEditor intermittently hangs |  Major | . | Ted Yu | Andrew Purtell |
| [HBASE-9209](https://issues.apache.org/jira/browse/HBASE-9209) | [0.92] TestSplitTransactionOnCluster occasionally fails |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-9212](https://issues.apache.org/jira/browse/HBASE-9212) | [0.92] TestMasterObserver fails occasionally |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-9216](https://issues.apache.org/jira/browse/HBASE-9216) | [0.92] TestReplication.queueFailover fails often |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-9306](https://issues.apache.org/jira/browse/HBASE-9306) | [0.92] TestAdmin.testCreateBadTables fails occasionally |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-9304](https://issues.apache.org/jira/browse/HBASE-9304) | [0.92] TestDrainingServer fails occasionally |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-9349](https://issues.apache.org/jira/browse/HBASE-9349) | [0.92] NPE in HMaster during shutdown |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-10833](https://issues.apache.org/jira/browse/HBASE-10833) | Region assignment may fail during cluster start up |  Major | Region Assignment | Jeffrey Zhong | Jeffrey Zhong |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6792](https://issues.apache.org/jira/browse/HBASE-6792) | Remove interface audience annotations in 0.94/0.92 introduced by HBASE-6516 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9154](https://issues.apache.org/jira/browse/HBASE-9154) | [0.92] Backport HBASE-8207 to fix replication test failures |  Major | . | Andrew Purtell | Andrew Purtell |


