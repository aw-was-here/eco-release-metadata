
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

## Release 1.4.8 - Unreleased (as of 2018-09-12)



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21147](https://issues.apache.org/jira/browse/HBASE-21147) | (1.4) Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes |  Minor | canary, Zookeeper | David Manning | David Manning |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21166](https://issues.apache.org/jira/browse/HBASE-21166) | Creating a CoprocessorHConnection re-retrieves the cluster id from ZK |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Major | tooling | Mike Drob | Colin Garcia |
| [HBASE-21162](https://issues.apache.org/jira/browse/HBASE-21162) | Revert suspicious change to BoundedByteBufferPool and disable use of direct buffers for IPC reservoir by default |  Critical | . | Andrew Purtell | Andrew Purtell |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell is always returned when using QualifierFilter |  Major | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21173](https://issues.apache.org/jira/browse/HBASE-21173) | Remove the duplicate HRegion#close in TestHRegion |  Minor | test | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21138](https://issues.apache.org/jira/browse/HBASE-21138) | Close HRegion instance at the end of every test in TestHRegion |  Major | . | Ted Yu | Mingliang Liu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20317](https://issues.apache.org/jira/browse/HBASE-20317) | Backport HBASE-20261 "Table page (table.jsp) in Master UI does not show replicaIds for hbase meta table" to branch-1 |  Major | backport | stack | Toshihiro Suzuki |
| [HBASE-21061](https://issues.apache.org/jira/browse/HBASE-21061) | fix synchronization of org.apache.hadoop.hbase.ipc.RpcServer$Connection.useWrap |  Critical | rpc | Sean Busbey | Sean Busbey |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Minor | . | Mike Drob | Mike Drob |


