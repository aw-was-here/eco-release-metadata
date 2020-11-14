
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

## Release 1.4.2 - 2018-02-28



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19886](https://issues.apache.org/jira/browse/HBASE-19886) | Display maintenance mode in shell, web UI |  Major | . | Balazs Meszaros | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | Add '--return-values' option to Shell to print return values of commands in interactive mode |  Critical | shell | Romil Choksi | Josh Elser |
| [HBASE-19917](https://issues.apache.org/jira/browse/HBASE-19917) | Improve RSGroupBasedLoadBalancer#filterServers() to be more efficient |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-17448](https://issues.apache.org/jira/browse/HBASE-17448) | Export metrics from RecoverableZooKeeper |  Major | Zookeeper | Andrew Kyle Purtell | Chinmay Kulkarni |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19871](https://issues.apache.org/jira/browse/HBASE-19871) | delete.rb should require user to provide the column |  Major | shell | Romil Choksi | Chia-Ping Tsai |
| [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | Up yetus proclimit on nightlies |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19905](https://issues.apache.org/jira/browse/HBASE-19905) | ReplicationSyncUp tool will not exit if a peer replication is disabled |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-19934](https://issues.apache.org/jira/browse/HBASE-19934) | HBaseSnapshotException when read replicas is enabled and online snapshot is taken after region splitting |  Major | read replicas, snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19900](https://issues.apache.org/jira/browse/HBASE-19900) | Region-level exception destroy the result of batch |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19937](https://issues.apache.org/jira/browse/HBASE-19937) | Ensure createRSGroupTable be called after ProcedureExecutor and LoadBalancer are initialized |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-19972](https://issues.apache.org/jira/browse/HBASE-19972) | Should rethrow  the RetriesExhaustedWithDetailsException when failed to apply the batch in ReplicationSink |  Critical | Replication | Zheng Hu | Zheng Hu |
| [HBASE-19981](https://issues.apache.org/jira/browse/HBASE-19981) | Boolean#getBoolean is used to parse value |  Major | . | Ted Yu | Janos Gub |
| [HBASE-19876](https://issues.apache.org/jira/browse/HBASE-19876) | The exception happening in converting pb mutation to hbase.mutation messes up the CellScanner |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19979](https://issues.apache.org/jira/browse/HBASE-19979) | ReplicationSyncUp tool may leak Zookeeper connection |  Major | Replication | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18282](https://issues.apache.org/jira/browse/HBASE-18282) | ReplicationLogCleaner can delete WALs not yet replicated in case of a KeeperException |  Critical | Replication | Ashu Pachauri | Ben Lau |
| [HBASE-19996](https://issues.apache.org/jira/browse/HBASE-19996) | Some nonce procs might not be cleaned up (follow up HBASE-19756) |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20017](https://issues.apache.org/jira/browse/HBASE-20017) | BufferedMutatorImpl submit the same mutation repeatedly |  Blocker | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20027](https://issues.apache.org/jira/browse/HBASE-20027) | Add test TestClusterPortAssignment |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19728](https://issues.apache.org/jira/browse/HBASE-19728) | Add lock to filesCompacting in all place. |  Major | . | Lijin Bin | Lijin Bin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19949](https://issues.apache.org/jira/browse/HBASE-19949) | TestRSGroupsWithACL fails with ExceptionInInitializerError |  Major | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19877](https://issues.apache.org/jira/browse/HBASE-19877) | hbase-common and hbase-zookeeper don't add the log4j.properties to the resource path for testing |  Critical | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20008](https://issues.apache.org/jira/browse/HBASE-20008) | [backport] NullPointerException when restoring a snapshot after splitting a region |  Major | . | Michael Stack | Toshihiro Suzuki |


