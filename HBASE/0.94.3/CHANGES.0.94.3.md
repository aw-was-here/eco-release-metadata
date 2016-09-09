
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

## Release 0.94.3 - 2012-12-03

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6389](https://issues.apache.org/jira/browse/HBASE-6389) | Modify the conditions to ensure that Master waits for sufficient number of Region Servers before starting region assignments |  Critical | master | Aditya Kishore | Aditya Kishore |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5314](https://issues.apache.org/jira/browse/HBASE-5314) | Gracefully rolling restart region servers in rolling-restart.sh |  Minor | scripts | Yifeng Jiang | Yifeng Jiang |
| [HBASE-6951](https://issues.apache.org/jira/browse/HBASE-6951) | Allow the master info server to be started in a read only mode. |  Critical | UI | Elliott Clark | Elliott Clark |
| [HBASE-6942](https://issues.apache.org/jira/browse/HBASE-6942) | Endpoint implementation for bulk deletion of data |  Major | Coprocessors, Performance | Anoop Sam John | Anoop Sam John |
| [HBASE-5257](https://issues.apache.org/jira/browse/HBASE-5257) | Allow INCLUDE\_AND\_NEXT\_COL in filters and use it in ColumnPaginationFilter |  Major | Filters, Performance | Lars Hofhansl | Varun Sharma |
| [HBASE-7073](https://issues.apache.org/jira/browse/HBASE-7073) | OperationMetrics needs to cache the value of hbase.metrics.exposeOperationTimes |  Minor | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-6852](https://issues.apache.org/jira/browse/HBASE-6852) | SchemaMetrics.updateOnCacheHit costs too much while full scanning a table with all of its fields |  Minor | metrics | Cheng Hao | Cheng Hao |
| [HBASE-7089](https://issues.apache.org/jira/browse/HBASE-7089) | Allow filter to be specified for Get from HBase shell |  Minor | shell | Aditya Kishore | Aditya Kishore |
| [HBASE-7097](https://issues.apache.org/jira/browse/HBASE-7097) | Log message in SecureServer.class uses wrong class name |  Minor | security | Y. SREENIVASULU REDDY |  |
| [HBASE-7151](https://issues.apache.org/jira/browse/HBASE-7151) | Better log message for Per-CF compactions |  Trivial | Compaction | Gregory Chanan | Gregory Chanan |
| [HBASE-5898](https://issues.apache.org/jira/browse/HBASE-5898) | Consider double-checked locking for block cache lock |  Critical | Performance | Todd Lipcon | Todd Lipcon |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6733](https://issues.apache.org/jira/browse/HBASE-6733) | [0.92 UNIT TESTS] TestReplication.queueFailover occasionally fails [Part-2] |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-6978](https://issues.apache.org/jira/browse/HBASE-6978) | Minor typo in ReplicationSource SocketTimeoutException error handling |  Trivial | Replication | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-6974](https://issues.apache.org/jira/browse/HBASE-6974) | Metric for blocked updates |  Critical | . | Lars Hofhansl | Michael Drzal |
| [HBASE-7021](https://issues.apache.org/jira/browse/HBASE-7021) | Default to Hadoop 1.0.4 in 0.94 and add Hadoop 1.1 profile |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6583](https://issues.apache.org/jira/browse/HBASE-6583) | Enhance Hbase load test tool to automatically create column families if not present |  Major | test | Karthik Ranganathan | Sergey Shelukhin |
| [HBASE-7018](https://issues.apache.org/jira/browse/HBASE-7018) | Fix and Improve TableDescriptor caching for bulk assignment |  Major | regionserver | Gregory Chanan | Gregory Chanan |
| [HBASE-6728](https://issues.apache.org/jira/browse/HBASE-6728) | [89-fb] prevent OOM possibility due to per connection responseQueue being unbounded |  Major | . | Kannan Muthukkaruppan | Michal Gregorczyk |
| [HBASE-6843](https://issues.apache.org/jira/browse/HBASE-6843) | loading lzo error when using coprocessor |  Critical | Coprocessors | Zhou wenjian | Zhou wenjian |
| [HBASE-7037](https://issues.apache.org/jira/browse/HBASE-7037) | ReplicationPeer logs at WARN level aborting server instead of at FATAL |  Major | Replication | stack | Liang Xie |
| [HBASE-7048](https://issues.apache.org/jira/browse/HBASE-7048) | Regionsplitter requires the hadoop config path to be in hbase classpath |  Major | . | Ted Yu |  |
| [HBASE-6846](https://issues.apache.org/jira/browse/HBASE-6846) | BitComparator bug - ArrayIndexOutOfBoundsException |  Major | Filters | Lucian George Iordache | Lucian George Iordache |
| [HBASE-6700](https://issues.apache.org/jira/browse/HBASE-6700) | [replication] empty znodes created during queue failovers aren't deleted |  Major | Replication | terry zhang | terry zhang |
| [HBASE-7069](https://issues.apache.org/jira/browse/HBASE-7069) | HTable.batch does not have to be synchronized |  Critical | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7051](https://issues.apache.org/jira/browse/HBASE-7051) | CheckAndPut should properly read MVCC |  Major | . | Gregory Chanan | Lars Hofhansl |
| [HBASE-6904](https://issues.apache.org/jira/browse/HBASE-6904) | In the HBase shell, an error is thrown that states replication-related znodes already exist |  Minor | Replication, Zookeeper | Aleksandr Shulman | Gregory Chanan |
| [HBASE-7060](https://issues.apache.org/jira/browse/HBASE-7060) | Region load balancing by table does not handle the case where a table's region count is lower than the number of the RS in the cluster |  Major | master | Tianying Chang | Ted Yu |
| [HBASE-6796](https://issues.apache.org/jira/browse/HBASE-6796) | Backport HBASE-5547, Don't delete HFiles in backup mode. |  Major | . | Lars Hofhansl | Jesse Yates |
| [HBASE-7017](https://issues.apache.org/jira/browse/HBASE-7017) | Backport "[replication] The replication-executor should make sure the file that it is replicating is closed before declaring success on that file" to 0.94 |  Major | Replication | Devaraj Das | Devaraj Das |
| [HBASE-7086](https://issues.apache.org/jira/browse/HBASE-7086) | Enhance ResourceChecker to log stack trace for potentially hanging threads |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7095](https://issues.apache.org/jira/browse/HBASE-7095) | Cannot set 'lenAsVal' for KeyOnlyFilter from shell |  Minor | Filters | Aditya Kishore | Aditya Kishore |
| [HBASE-6958](https://issues.apache.org/jira/browse/HBASE-6958) | TestAssignmentManager sometimes fails |  Major | test | Ted Yu | Jimmy Xiang |
| [HBASE-6665](https://issues.apache.org/jira/browse/HBASE-6665) | ROOT region should not be splitted even with META row as explicit split key |  Major | . | Y. SREENIVASULU REDDY | rajeshbabu |
| [HBASE-7143](https://issues.apache.org/jira/browse/HBASE-7143) | TestMetaMigrationRemovingHTD fails when used with Hadoop 0.23/2.x |  Major | test | Andrey Klochkov | Andrey Klochkov |
| [HBASE-7103](https://issues.apache.org/jira/browse/HBASE-7103) | Need to fail split if SPLIT znode is deleted even before the split is completed. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5984](https://issues.apache.org/jira/browse/HBASE-5984) | TestLogRolling.testLogRollOnPipelineRestart failed with HADOOP 2.0.0 |  Major | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7142](https://issues.apache.org/jira/browse/HBASE-7142) | TestSplitLogManager#testDeadWorker may fail because of hard limit on the TimeoutMonitor's timeout period |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6996](https://issues.apache.org/jira/browse/HBASE-6996) | HRegion.mutateRowsWithLocks should call checkResources/checkReadOnly |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7077](https://issues.apache.org/jira/browse/HBASE-7077) | Test for: CheckAndPut should properly read MVCC |  Major | . | Gregory Chanan | ramkrishna.s.vasudevan |
| [HBASE-6925](https://issues.apache.org/jira/browse/HBASE-6925) | Change socket write size from 8K to 64K for HBaseServer |  Critical | IPC/RPC, Performance | Karthik Ranganathan | Karthik Ranganathan |
| [HBASE-6305](https://issues.apache.org/jira/browse/HBASE-6305) | TestLocalHBaseCluster hangs with hadoop 2.0/0.23 builds. |  Major | test | Jonathan Hsieh | Himanshu Vashishtha |
| [HBASE-4913](https://issues.apache.org/jira/browse/HBASE-4913) | Per-CF compaction Via the Shell |  Major | Client, regionserver | Nicolas Spiegelberg | Mubarak Seyed |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6032](https://issues.apache.org/jira/browse/HBASE-6032) | Port HFileBlockIndex improvement from HBASE-5987 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7020](https://issues.apache.org/jira/browse/HBASE-7020) | Backport HBASE-6336 Split point should not be equal to start row or end row |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7016](https://issues.apache.org/jira/browse/HBASE-7016) | port HBASE-6518 'Bytes.toBytesBinary() incorrect trailing backslash escape' to 0.94 |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7040](https://issues.apache.org/jira/browse/HBASE-7040) | Port HBASE-5867 Improve Compaction Throttle Default to 0.94 |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7053](https://issues.apache.org/jira/browse/HBASE-7053) | port  blockcache configurability (part of HBASE-6312, and HBASE-7033) to 0.94 |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7038](https://issues.apache.org/jira/browse/HBASE-7038) | Port HBASE-5970 Improve the AssignmentManager#updateTimer and speed up handling opened event to 0.94 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7087](https://issues.apache.org/jira/browse/HBASE-7087) | Add to NOTICE.txt a note on jamon being MPL |  Major | . | stack | stack |


