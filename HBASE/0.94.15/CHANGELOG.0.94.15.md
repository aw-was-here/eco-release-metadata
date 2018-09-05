
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

## Release 0.94.15 - 2013-12-29



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10119](https://issues.apache.org/jira/browse/HBASE-10119) | Allow HBase coprocessors to clean up when they fail |  Major | . | Benoit Sigoure | Benoit Sigoure |
| [HBASE-9047](https://issues.apache.org/jira/browse/HBASE-9047) | Tool to handle finishing replication when the cluster is offline |  Major | . | Jean-Daniel Cryans | Demai Ni |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10001](https://issues.apache.org/jira/browse/HBASE-10001) | Add a coprocessor to help testing the performances without taking into account the i/o |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10007](https://issues.apache.org/jira/browse/HBASE-10007) | PerformanceEvaluation: Add sampling and latency collection to randomRead test |  Minor | Performance, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10049](https://issues.apache.org/jira/browse/HBASE-10049) | Small improvments in region\_mover.rb |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-9931](https://issues.apache.org/jira/browse/HBASE-9931) | Optional setBatch for CopyTable to copy large rows in batches |  Major | mapreduce | Dave Latham | Nick Dimiduk |
| [HBASE-10093](https://issues.apache.org/jira/browse/HBASE-10093) | Unregister ReplicationSource metric bean when the replication source thread is terminated |  Major | Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-10010](https://issues.apache.org/jira/browse/HBASE-10010) | eliminate the put latency spike on the new log file beginning |  Major | regionserver | Liang Xie | Liang Xie |
| [HBASE-10048](https://issues.apache.org/jira/browse/HBASE-10048) | Add hlog number metric in regionserver |  Minor | metrics | Liu Shaohui | Liu Shaohui |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9995](https://issues.apache.org/jira/browse/HBASE-9995) | Not stopping ReplicationSink when using custom implementation for the ReplicationSink |  Minor | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-10014](https://issues.apache.org/jira/browse/HBASE-10014) | HRegion#doMiniBatchMutation rollbacks the memstore even if there is nothing to rollback. |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-10026](https://issues.apache.org/jira/browse/HBASE-10026) | HBaseAdmin#createTable could fail if region splits too fast |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10015](https://issues.apache.org/jira/browse/HBASE-10015) | Replace intrinsic locking with explicit locks in StoreScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10046](https://issues.apache.org/jira/browse/HBASE-10046) | Unmonitored HBase service could accumulate Status objects and OOM |  Major | monitoring | Aditya Kishore | Aditya Kishore |
| [HBASE-10057](https://issues.apache.org/jira/browse/HBASE-10057) | TestRestoreFlushSnapshotFromClient and TestRestoreSnapshotFromClient fail to finish occasionally |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9485](https://issues.apache.org/jira/browse/HBASE-9485) | TableOutputCommitter should implement recovery if we don't want jobs to start from 0 on RM restart |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-10064](https://issues.apache.org/jira/browse/HBASE-10064) | AggregateClient.validateParameters can throw NPE |  Major | Client | Jianwei Cui | Jianwei Cui |
| [HBASE-10061](https://issues.apache.org/jira/browse/HBASE-10061) | TableMapReduceUtil.findOrCreateJar calls updateMap(null, ) resulting in thrown NPE |  Minor | mapreduce | Amit Sela | Amit Sela |
| [HBASE-10111](https://issues.apache.org/jira/browse/HBASE-10111) | Verify that a snapshot is not corrupted before restoring it |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10112](https://issues.apache.org/jira/browse/HBASE-10112) | Hbase rest query params for maxVersions and maxValues are not parsed |  Minor | REST | Koert Kuipers | Jean-Marc Spaggiari |
| [HBASE-10117](https://issues.apache.org/jira/browse/HBASE-10117) | Avoid synchronization in HRegionScannerImpl.isFilterDone |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10120](https://issues.apache.org/jira/browse/HBASE-10120) | start-hbase.sh doesn't respect --config in non-distributed mode |  Trivial | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-10089](https://issues.apache.org/jira/browse/HBASE-10089) | Metrics intern table names cause eventual permgen OOM in 0.94 |  Minor | . | Dave Latham | Ted Yu |
| [HBASE-7886](https://issues.apache.org/jira/browse/HBASE-7886) | [replication] hlog zk node will not be deleted if client roll hlog |  Major | Replication | terry zhang | Jean-Daniel Cryans |
| [HBASE-10181](https://issues.apache.org/jira/browse/HBASE-10181) | HBaseObjectWritable.readObject catches DoNotRetryIOException and wraps it back in a regular IOException |  Major | IPC/RPC | Samarth Jain | Lars Hofhansl |
| [HBASE-10179](https://issues.apache.org/jira/browse/HBASE-10179) | HRegionServer underreports readRequestCounts by 1 under certain conditions |  Minor | metrics | Perry Trolard | Perry Trolard |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10058](https://issues.apache.org/jira/browse/HBASE-10058) | Test for HBASE-9915 (avoid reading index blocks) |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-10189](https://issues.apache.org/jira/browse/HBASE-10189) | Intermittent TestReplicationSyncUpTool failure |  Major | . | Ted Yu | Demai Ni |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9986](https://issues.apache.org/jira/browse/HBASE-9986) | Incorporate HTTPS support for HBase (0.94 port) |  Major | . | Aditya Kishore | Aditya Kishore |
| [HBASE-9927](https://issues.apache.org/jira/browse/HBASE-9927) | ReplicationLogCleaner#stop() calls HConnectionManager#deleteConnection() unnecessarily |  Minor | . | Ted Yu | Ted Yu |


