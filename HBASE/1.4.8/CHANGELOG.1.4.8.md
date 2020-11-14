
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

## Release 1.4.8 - 2018-10-08



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21147](https://issues.apache.org/jira/browse/HBASE-21147) | (1.4) Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes |  Minor | canary, Zookeeper | David Manning | David Manning |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Minor | tooling | Mike Drob | Colin Garcia |
| [HBASE-20857](https://issues.apache.org/jira/browse/HBASE-20857) | JMX - add Balancer status = enabled / disabled |  Major | API, master, metrics, REST, tooling, Usability | Hari Sekhon | Kiran Kumar Maturi |
| [HBASE-21207](https://issues.apache.org/jira/browse/HBASE-21207) | Add client side sorting functionality in master web UI for table and region server details. |  Minor | master, monitoring, UI, Usability | Archana Katiyar | Archana Katiyar |
| [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | Colocate recovered edits directory with hbase.wal.dir |  Major | MTTR, Recovery, wal | Ted Yu | Zach York |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20261](https://issues.apache.org/jira/browse/HBASE-20261) | Table page (table.jsp) in Master UI does not show replicaIds for hbase meta table |  Minor | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21166](https://issues.apache.org/jira/browse/HBASE-21166) | Creating a CoprocessorHConnection re-retrieves the cluster id from ZK |  Major | Client, Zookeeper | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21162](https://issues.apache.org/jira/browse/HBASE-21162) | Revert suspicious change to BoundedByteBufferPool and disable use of direct buffers for IPC reservoir by default |  Critical | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21173](https://issues.apache.org/jira/browse/HBASE-21173) | Remove the duplicate HRegion#close in TestHRegion |  Minor | test | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21179](https://issues.apache.org/jira/browse/HBASE-21179) | Fix the number of actions in responseTooSlow log |  Major | logging, rpc | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21206](https://issues.apache.org/jira/browse/HBASE-21206) | Scan with batch size may return incomplete cells |  Critical | Scanners | Zheng Hu | Zheng Hu |
| [HBASE-21203](https://issues.apache.org/jira/browse/HBASE-21203) | TestZKMainServer#testCommandLineWorks won't pass with default 4lw whitelist |  Minor | test, Zookeeper | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20704](https://issues.apache.org/jira/browse/HBASE-20704) | Sometimes some compacted storefiles are not archived on region close |  Critical | Compaction | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-21212](https://issues.apache.org/jira/browse/HBASE-21212) | Wrong flush time when update flush metric |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-20766](https://issues.apache.org/jira/browse/HBASE-20766) | Verify Replication Tool Has Typo "remove cluster" |  Trivial | . | Clay B. | Ferran Fernandez Garrido |
| [HBASE-21228](https://issues.apache.org/jira/browse/HBASE-21228) | Memory leak since AbstractFSWAL caches Thread object and never clean later |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-18451](https://issues.apache.org/jira/browse/HBASE-18451) | PeriodicMemstoreFlusher should inspect the queue before adding a delayed flush request |  Major | regionserver | Jean-Marc Spaggiari | Xu Cang |
| [HBASE-19418](https://issues.apache.org/jira/browse/HBASE-19418) | RANGE\_OF\_DELAY in PeriodicMemstoreFlusher should be configurable. |  Minor | . | Jean-Marc Spaggiari | Ramie Raufdeen |
| [HBASE-21117](https://issues.apache.org/jira/browse/HBASE-21117) | Backport HBASE-18350  (fix RSGroups)  to branch-1 (Only port the part fixing table locking issue.) |  Major | backport, rsgroup, shell | Xu Cang | Xu Cang |
| [HBASE-18549](https://issues.apache.org/jira/browse/HBASE-18549) | Unclaimed replication queues can go undetected |  Critical | Replication | Ashu Pachauri | Xu Cang |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell should not be returned if it does not match QualifierFilter |  Critical | Filters | Guangxu Cheng | Guangxu Cheng |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21138](https://issues.apache.org/jira/browse/HBASE-21138) | Close HRegion instance at the end of every test in TestHRegion |  Major | . | Ted Yu | Mingliang Liu |
| [HBASE-21258](https://issues.apache.org/jira/browse/HBASE-21258) | Add resetting of flags for RS Group pre/post hooks in TestRSGroups |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21261](https://issues.apache.org/jira/browse/HBASE-21261) | Add log4j.properties for hbase-rsgroup tests |  Trivial | . | Ted Yu | Andrew Kyle Purtell |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20317](https://issues.apache.org/jira/browse/HBASE-20317) | Backport HBASE-20261 "Table page (table.jsp) in Master UI does not show replicaIds for hbase meta table" to branch-1 |  Major | backport | Michael Stack | Toshihiro Suzuki |
| [HBASE-21061](https://issues.apache.org/jira/browse/HBASE-21061) | fix synchronization of org.apache.hadoop.hbase.ipc.RpcServer$Connection.useWrap |  Critical | rpc | Sean Busbey | Sean Busbey |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21189](https://issues.apache.org/jira/browse/HBASE-21189) | flaky job should gather machine stats |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-19275](https://issues.apache.org/jira/browse/HBASE-19275) | TestSnapshotFileCache never worked properly |  Major | . | Andrew Kyle Purtell | Xu Cang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Trivial | . | Mike Drob | Mike Drob |


