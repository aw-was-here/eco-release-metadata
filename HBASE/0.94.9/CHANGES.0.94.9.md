
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

## Release 0.94.9 - 2013-07-04



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8504](https://issues.apache.org/jira/browse/HBASE-8504) | HTable.getRegionsInRange() should provide a non-cached API |  Major | Client | Alan Choi | Matteo Bertozzi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8609](https://issues.apache.org/jira/browse/HBASE-8609) | Make the CopyTable support startRow, stopRow options |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-8636](https://issues.apache.org/jira/browse/HBASE-8636) | Backport KeyValue Codec to 0.94 (HBASE-7413) |  Minor | wal | Jesse Yates | Jesse Yates |
| [HBASE-8683](https://issues.apache.org/jira/browse/HBASE-8683) | Add major compaction support in CompactionTool |  Minor | Compaction | Jerry He | Jerry He |
| [HBASE-8702](https://issues.apache.org/jira/browse/HBASE-8702) | Make WALEditCodec pluggable |  Major | Replication, wal | Jesse Yates | Jesse Yates |
| [HBASE-5083](https://issues.apache.org/jira/browse/HBASE-5083) | Backup HMaster should have http infoport open with link to the active master |  Major | master | Jonathan Hsieh | Cody Marcel |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8555](https://issues.apache.org/jira/browse/HBASE-8555) | FilterList correctness may be affected by random ordering of sub-filter(list) |  Critical | Filters | Liang Xie | Liang Xie |
| [HBASE-8522](https://issues.apache.org/jira/browse/HBASE-8522) | Archived hfiles and old hlogs may be deleted immediately by HFileCleaner, LogCleaner in HMaster |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-8639](https://issues.apache.org/jira/browse/HBASE-8639) | Poor performance of htable#getscanner in multithreaded environment due to DNS.getDefaultHost() being called in ScannerCallable#prepare() |  Major | . | Raymond Liu | Ted Yu |
| [HBASE-8655](https://issues.apache.org/jira/browse/HBASE-8655) | Backport to 94 - HBASE-8346(Prefetching .META. rows in case only when useCache is set to true) |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-8640](https://issues.apache.org/jira/browse/HBASE-8640) | ServerName in master may not initialize with the configured ipc address of hbase.master.ipc.address |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-8671](https://issues.apache.org/jira/browse/HBASE-8671) | Per-region WAL breaks CP backwards compatibility in 0.94 for non-enabled case |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-8590](https://issues.apache.org/jira/browse/HBASE-8590) | [0.94] BlockingMetaScannerVisitor should check for parent meta entry while waiting for split daughter |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8684](https://issues.apache.org/jira/browse/HBASE-8684) | Table Coprocessor can't access external HTable by default |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-8724](https://issues.apache.org/jira/browse/HBASE-8724) | [0.94] ExportSnapshot should not use hbase.tmp.dir as a staging dir on hdfs |  Major | mapreduce, snapshots | Enis Soztutar | Enis Soztutar |
| [HBASE-8742](https://issues.apache.org/jira/browse/HBASE-8742) | HTableDescriptor Properties not preserved when cloning |  Minor | snapshots | Micah Whitacre | Matteo Bertozzi |
| [HBASE-8749](https://issues.apache.org/jira/browse/HBASE-8749) | Potential race condition between FSUtils.renameAndSetModifyTime() and HFile/LogCleaner |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-8700](https://issues.apache.org/jira/browse/HBASE-8700) | IntegrationTestBigLinkedList can fail due to random number collision |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8762](https://issues.apache.org/jira/browse/HBASE-8762) | Performance/operational penalty when calling HTable.get with a list of one Get |  Minor | Client | Jason Bray |  |
| [HBASE-8494](https://issues.apache.org/jira/browse/HBASE-8494) | TestRemoteAdmin#testClusterStatus should not assume 'requests' does not change |  Major | REST, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8743](https://issues.apache.org/jira/browse/HBASE-8743) | upgrade hadoop-23 version to 0.23.7 |  Major | . | Francis Liu | Francis Liu |
| [HBASE-8783](https://issues.apache.org/jira/browse/HBASE-8783) | RSSnapshotManager.ZKProcedureMemberRpcs may be initialized with the wrong server name |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8656](https://issues.apache.org/jira/browse/HBASE-8656) | Rpc call may not be notified in SecureClient |  Major | Client, IPC/RPC, security | Jianwei Cui | Jianwei Cui |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8603](https://issues.apache.org/jira/browse/HBASE-8603) | Backport HBASE-6921 to 0.94 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8283](https://issues.apache.org/jira/browse/HBASE-8283) | Backport HBASE-7842 Add compaction policy that explores more storefile groups to 0.94 |  Major | Compaction | Elliott Clark | Elliott Clark |


