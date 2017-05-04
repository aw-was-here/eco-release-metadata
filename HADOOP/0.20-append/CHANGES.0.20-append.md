
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
# Apache Hadoop Changelog

## Release 0.20-append - Unreleased (as of 2017-05-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-630](https://issues.apache.org/jira/browse/HDFS-630) | In DFSOutputStream.nextBlockOutputStream(), the client can exclude specific datanodes when locating the next block. |  Major | hdfs-client, namenode | Ruyue Ma | Cosmin Lehene |
| [HDFS-1554](https://issues.apache.org/jira/browse/HDFS-1554) | Append 0.20: New semantics for recoverLease |  Major | . | Hairong Kuang | Hairong Kuang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-200](https://issues.apache.org/jira/browse/HDFS-200) | In HDFS, sync() not yet guarantees data available to the new readers |  Blocker | . | Tsz Wo Nicholas Sze | dhruba borthakur |
| [HDFS-1520](https://issues.apache.org/jira/browse/HDFS-1520) | HDFS 20 append: Lightweight NameNode operation to trigger lease recovery |  Major | namenode | Hairong Kuang | Hairong Kuang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-826](https://issues.apache.org/jira/browse/HDFS-826) | Allow a mechanism for an application to detect that datanode(s)  have died in the write pipeline |  Major | hdfs-client | dhruba borthakur | dhruba borthakur |
| [HDFS-1054](https://issues.apache.org/jira/browse/HDFS-1054) | Remove unnecessary sleep after failure in nextBlockOutputStream |  Major | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-1210](https://issues.apache.org/jira/browse/HDFS-1210) | DFSClient should log exception when block recovery fails |  Trivial | hdfs-client | Todd Lipcon | Todd Lipcon |
| [HDFS-1211](https://issues.apache.org/jira/browse/HDFS-1211) | 0.20 append: Block receiver should not log "rewind" packets at INFO level |  Minor | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-895](https://issues.apache.org/jira/browse/HDFS-895) | Allow hflush/sync to occur in parallel with new writes to the file |  Major | hdfs-client | dhruba borthakur | Todd Lipcon |
| [HDFS-1555](https://issues.apache.org/jira/browse/HDFS-1555) | HDFS 20 append: Disallow pipeline recovery if a file is already being lease recovered |  Major | . | Hairong Kuang | Hairong Kuang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-445](https://issues.apache.org/jira/browse/HDFS-445) | pread() fails when cached block locations are no longer valid |  Major | . | Kan Zhang | Kan Zhang |
| [HDFS-606](https://issues.apache.org/jira/browse/HDFS-606) | ConcurrentModificationException in invalidateCorruptReplicas() |  Major | namenode | Konstantin Shvachko | Konstantin Shvachko |
| [HDFS-724](https://issues.apache.org/jira/browse/HDFS-724) | Pipeline close hangs if one of the datanode is not responsive. |  Blocker | datanode, hdfs-client | Tsz Wo Nicholas Sze | Hairong Kuang |
| [HDFS-101](https://issues.apache.org/jira/browse/HDFS-101) | DFS write pipeline : DFSClient sometimes does not detect second datanode failure |  Blocker | datanode | Raghu Angadi | Hairong Kuang |
| [HDFS-1215](https://issues.apache.org/jira/browse/HDFS-1215) | TestNodeCount infinite loops on branch-20-append |  Major | test | Todd Lipcon | Todd Lipcon |
| [HDFS-142](https://issues.apache.org/jira/browse/HDFS-142) | In 0.20, move blocks being written into a blocksBeingWritten directory |  Blocker | . | Raghu Angadi | dhruba borthakur |
| [HDFS-1141](https://issues.apache.org/jira/browse/HDFS-1141) | completeFile does not check lease ownership |  Blocker | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-1207](https://issues.apache.org/jira/browse/HDFS-1207) | 0.20-append: stallReplicationWork should be volatile |  Major | namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-1204](https://issues.apache.org/jira/browse/HDFS-1204) | 0.20: Lease expiration should recover single files, not entire lease holder |  Major | . | Todd Lipcon | sam rash |
| [HDFS-1118](https://issues.apache.org/jira/browse/HDFS-1118) | DFSOutputStream socket leak when cannot connect to DataNode |  Major | . | Zheng Shao | Zheng Shao |
| [HDFS-1254](https://issues.apache.org/jira/browse/HDFS-1254) | 0.20: mark dfs.support.append to be true by default for the 0.20-append branch |  Major | namenode | dhruba borthakur | dhruba borthakur |
| [HDFS-1202](https://issues.apache.org/jira/browse/HDFS-1202) | DataBlockScanner throws NPE when updated before initialized |  Major | datanode | Todd Lipcon | Todd Lipcon |
| [HDFS-1258](https://issues.apache.org/jira/browse/HDFS-1258) | Clearing namespace quota on "/" corrupts FS image |  Blocker | namenode | Aaron T. Myers | Aaron T. Myers |
| [HDFS-1346](https://issues.apache.org/jira/browse/HDFS-1346) | DFSClient receives out of order packet ack |  Major | datanode, hdfs-client | Hairong Kuang | Hairong Kuang |
| [HDFS-1240](https://issues.apache.org/jira/browse/HDFS-1240) | TestDFSShell failing in branch-20 |  Critical | test | Todd Lipcon | Todd Lipcon |
| [HDFS-988](https://issues.apache.org/jira/browse/HDFS-988) | saveNamespace race can corrupt the edits log |  Blocker | namenode | dhruba borthakur | Eli Collins |
| [HDFS-1779](https://issues.apache.org/jira/browse/HDFS-1779) | After NameNode restart , Clients can not read partial files even after client invokes Sync. |  Major | datanode, namenode | Uma Maheswara Rao G | Uma Maheswara Rao G |
| [HDFS-1197](https://issues.apache.org/jira/browse/HDFS-1197) | Blocks are considered "complete" prematurely after commitBlockSynchronization or DN restart |  Major | datanode, hdfs-client, namenode | Todd Lipcon | Todd Lipcon |
| [HDFS-1264](https://issues.apache.org/jira/browse/HDFS-1264) | 0.20: OOME in HDFS client made an unrecoverable HDFS block |  Major | datanode, hdfs-client | Todd Lipcon |  |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-1243](https://issues.apache.org/jira/browse/HDFS-1243) | 0.20 append: Replication tests in TestFileAppend4 should not expect immediate replication |  Minor | test | Todd Lipcon | Todd Lipcon |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-561](https://issues.apache.org/jira/browse/HDFS-561) | Fix write pipeline READ\_TIMEOUT |  Major | datanode, hdfs-client | Kan Zhang | Kan Zhang |
| [HDFS-1057](https://issues.apache.org/jira/browse/HDFS-1057) | Concurrent readers hit ChecksumExceptions if following a writer to very end of file |  Blocker | datanode | Todd Lipcon | sam rash |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HDFS-1216](https://issues.apache.org/jira/browse/HDFS-1216) | Update to JUnit 4 in branch 20 append |  Major | test | Todd Lipcon | Todd Lipcon |


