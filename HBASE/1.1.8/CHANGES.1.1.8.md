
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

## Release 1.1.8 - 2016-12-16

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables. |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | Log more details for Scan#next request when responseTooSlow |  Major | Operability | Yu Li | Yu Li |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16033](https://issues.apache.org/jira/browse/HBASE-16033) | Add more details in logging of responseTooSlow/TooLarge |  Major | Operability | Yu Li | Yu Li |
| [HBASE-17006](https://issues.apache.org/jira/browse/HBASE-17006) | Add names to threads for better debugability of thread dumps |  Minor | Operability | Appy | Appy |
| [HBASE-17004](https://issues.apache.org/jira/browse/HBASE-17004) | Refactor IntegrationTestManyRegions to use @ClassRule for timing out |  Minor | integration tests | Appy | Appy |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15324](https://issues.apache.org/jira/browse/HBASE-15324) | Jitter may cause desiredMaxFileSize overflow in ConstantSizeRegionSplitPolicy and trigger unexpected split |  Major | . | Yu Li | Yu Li |
| [HBASE-16699](https://issues.apache.org/jira/browse/HBASE-16699) | Overflows in AverageIntervalRateLimiter\'s refill() and getWaitInterval() |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-16807](https://issues.apache.org/jira/browse/HBASE-16807) | RegionServer will fail to report new active Hmaster until HMaster/RegionServer failover |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16830](https://issues.apache.org/jira/browse/HBASE-16830) | RSRpcServices#openRegion() should handle the case where table descriptor is null |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | Concurrency issue in WAL unflushed seqId tracking |  Critical | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-16824](https://issues.apache.org/jira/browse/HBASE-16824) | Writer.flush() can be called on already closed streams in WAL roll |  Major | wal | Atri Sharma | Enis Soztutar |
| [HBASE-16889](https://issues.apache.org/jira/browse/HBASE-16889) | Proc-V2: verifyTables in the IntegrationTestDDLMasterFailover test after each table DDL is incorrect |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16701](https://issues.apache.org/jira/browse/HBASE-16701) | TestHRegion and TestHRegionWithInMemoryFlush timing out |  Major | regionserver, test | Appy | Sean Busbey |
| [HBASE-16815](https://issues.apache.org/jira/browse/HBASE-16815) | Low scan ratio in RPC queue tuning triggers divide by zero exception |  Major | regionserver, rpc | Lars George | Guanghao Zhang |
| [HBASE-16870](https://issues.apache.org/jira/browse/HBASE-16870) | Add the metrics of replication sources which were transformed from other dead rs to ReplicationLoad |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16934](https://issues.apache.org/jira/browse/HBASE-16934) | Revert ITBLL misconfiguration check introduced in HBASE-16562 |  Critical | integration tests | Sean Busbey | Sean Busbey |
| [HBASE-16939](https://issues.apache.org/jira/browse/HBASE-16939) | ExportSnapshot: set owner and permission on right directory |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16980](https://issues.apache.org/jira/browse/HBASE-16980) | TestRowProcessorEndpoint failing consistently |  Major | . | Andrew Purtell | Yu Li |
| [HBASE-16931](https://issues.apache.org/jira/browse/HBASE-16931) | Setting cell\'s seqId to zero in compaction flow might cause RS down. |  Critical | regionserver | binlijin | binlijin |
| [HBASE-16960](https://issues.apache.org/jira/browse/HBASE-16960) | RegionServer hang when aborting |  Critical | . | binlijin | binlijin |
| [HBASE-17022](https://issues.apache.org/jira/browse/HBASE-17022) | TestMasterFailoverWithProcedures#testTruncateWithFailover fails constantly in branch-1.1 |  Major | . | Yu Li | Matteo Bertozzi |
| [HBASE-17042](https://issues.apache.org/jira/browse/HBASE-17042) | Remove \'public\' keyword from MasterObserver interface |  Minor | Coprocessors | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17020](https://issues.apache.org/jira/browse/HBASE-17020) | keylen in midkey() dont computed correctly |  Major | HFile | Yu Sun | Yu Sun |
| [HBASE-17039](https://issues.apache.org/jira/browse/HBASE-17039) | SimpleLoadBalancer schedules large amount of invalid region moves |  Major | Balancer | Charlie Qiangeng Xu | Charlie Qiangeng Xu |
| [HBASE-17074](https://issues.apache.org/jira/browse/HBASE-17074) | PreCommit job always fails because of OOM |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-17044](https://issues.apache.org/jira/browse/HBASE-17044) | Fix merge failed before creating merged region leaves meta inconsistent |  Critical | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-17091](https://issues.apache.org/jira/browse/HBASE-17091) | IntegrationTestZKAndFSPermissions failed with \'KeeperException$NoNodeException\' |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17058](https://issues.apache.org/jira/browse/HBASE-17058) | Lower epsilon used for jitter verification from HBASE-15324 |  Major | Compaction | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-17127](https://issues.apache.org/jira/browse/HBASE-17127) | Locate region should fail fast if underlying Connection already closed |  Major | . | Yu Li | Yu Li |
| [HBASE-17206](https://issues.apache.org/jira/browse/HBASE-17206) | FSHLog may roll a new writer successfully with unflushed entries |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | Prevent setting timestamp of delta operations the same as previous value\'s |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16886](https://issues.apache.org/jira/browse/HBASE-16886) | hbase-client: scanner with reversed=true and small=true gets no result |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-17118](https://issues.apache.org/jira/browse/HBASE-17118) | StoreScanner leaked in KeyValueHeap |  Major | . | binlijin | binlijin |
| [HBASE-17023](https://issues.apache.org/jira/browse/HBASE-17023) | Region left unassigned due to AM and SSH each thinking others would do the assignment work |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12748](https://issues.apache.org/jira/browse/HBASE-12748) | RegionCoprocessorHost.execOperation creates too many iterator objects |  Major | . | Vladimir Rodionov | Andrew Purtell |
| [HBASE-16874](https://issues.apache.org/jira/browse/HBASE-16874) | Fix TestMasterFailoverWithProcedures and ensure single proc-executor for kill/restart tests |  Minor | proc-v2 | Ted Yu | Matteo Bertozzi |
| [HBASE-16970](https://issues.apache.org/jira/browse/HBASE-16970) | Clarify misleading Scan.java comment about caching |  Trivial | . | Jim Kleckner | Jim Kleckner |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16749](https://issues.apache.org/jira/browse/HBASE-16749) | HBase root pom.xml contains repo from people.apache.org/~garyh |  Major | . | Wangda Tan | Gary Helmling |


