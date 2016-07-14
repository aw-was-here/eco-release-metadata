
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

## Release 1.2.3 - Unreleased (as of 2016-07-14)



### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16135](https://issues.apache.org/jira/browse/HBASE-16135) | PeerClusterZnode under rs of removed peer may never be deleted |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16132](https://issues.apache.org/jira/browse/HBASE-16132) | Scan does not return all the result when regionserver is busy |  Major | Client | binlijin | binlijin |
| [HBASE-16190](https://issues.apache.org/jira/browse/HBASE-16190) | IntegrationTestDDLMasterFailover failed with IllegalArgumentException: n must be positive |  Minor | . | Romil Choksi | Romil Choksi |
| [HBASE-15775](https://issues.apache.org/jira/browse/HBASE-15775) | Canary launches two AuthUtil Chores |  Minor | canary | Sean Busbey | Vishal Khandelwal |
| [HBASE-16201](https://issues.apache.org/jira/browse/HBASE-16201) | NPE in RpcServer causing intermittent UT failure of TestMasterReplication#testHFileCyclicReplication |  Major | . | Yu Li | Yu Li |
| [HBASE-16207](https://issues.apache.org/jira/browse/HBASE-16207) | can't restore snapshot without "Admin" permission |  Major | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16227](https://issues.apache.org/jira/browse/HBASE-16227) | [Shell] Column value formatter not working in scans |  Major | . | Appy | Appy |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16194](https://issues.apache.org/jira/browse/HBASE-16194) | Should count in MSLAB chunk allocation into heap size change when adding duplicate cells |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-16195](https://issues.apache.org/jira/browse/HBASE-16195) | Should not add chunk into chunkQueue if not using chunk pool in HeapMemStoreLAB |  Major | . | Yu Li | Yu Li |

