
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
# Changelog

## Release 1.1.1 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13420](https://issues.apache.org/jira/browse/HBASE-13420) | RegionEnvironment.offerExecutionLatency Blocks Threads under Heavy Load |  Major | . | John Leach | Andrew Purtell |
| [HBASE-13366](https://issues.apache.org/jira/browse/HBASE-13366) | Throw DoNotRetryIOException instead of read only IOException |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12415](https://issues.apache.org/jira/browse/HBASE-12415) | Add add(byte[][] arrays) to Bytes. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13668](https://issues.apache.org/jira/browse/HBASE-13668) | TestFlushRegionEntry is flaky |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13664](https://issues.apache.org/jira/browse/HBASE-13664) | Use HBase 1.0 interfaces in ConnectionCache |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13663](https://issues.apache.org/jira/browse/HBASE-13663) | HMaster fails to restart 'HMaster: Failed to become active master' |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13662](https://issues.apache.org/jira/browse/HBASE-13662) | RSRpcService.scan() throws an OutOfOrderScannerNext if the scan has a retriable failure |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13653](https://issues.apache.org/jira/browse/HBASE-13653) | Uninitialized HRegionServer#walFactory may result in NullPointerException at region server startup​ |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13635](https://issues.apache.org/jira/browse/HBASE-13635) | Regions stuck in transition because master is incorrectly assumed dead |  Major | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13632](https://issues.apache.org/jira/browse/HBASE-13632) | Backport HBASE-13368 to branch-1 and 0.98 |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13628](https://issues.apache.org/jira/browse/HBASE-13628) | Use AtomicLong as size in BoundedConcurrentLinkedQueue |  Major | . | zhangduo | zhangduo |
| [HBASE-13626](https://issues.apache.org/jira/browse/HBASE-13626) | ZKTableStateManager logs table state changes at WARN |  Minor | . | Nick Dimiduk | Stephen Yuan Jiang |
| [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | Use HDFS for HFileOutputFormat2 partitioner's path |  Major | mapreduce | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13617](https://issues.apache.org/jira/browse/HBASE-13617) | TestReplicaWithCluster.testChangeTable timeout |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13612](https://issues.apache.org/jira/browse/HBASE-13612) | TestRegionFavoredNodes doesn't guard against setup failure |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13611](https://issues.apache.org/jira/browse/HBASE-13611) | update clover to work for current versions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13608](https://issues.apache.org/jira/browse/HBASE-13608) | 413 Error with Stargate through Knox, using AD, SPNEGO, and Pre-Auth |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13607](https://issues.apache.org/jira/browse/HBASE-13607) | TestSplitLogManager.testGetPreviousRecoveryMode consistently failing |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13606](https://issues.apache.org/jira/browse/HBASE-13606) | AssignmentManager.assign() is not sync in both path |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13600](https://issues.apache.org/jira/browse/HBASE-13600) | check\_compatibility.sh should ignore shaded jars |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | Master MBeans are not published |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13377](https://issues.apache.org/jira/browse/HBASE-13377) | Canary may generate false alarm on the first region when there are many delete markers |  Major | monitoring | He Liangliang | He Liangliang |
| [HBASE-13333](https://issues.apache.org/jira/browse/HBASE-13333) | Renew Scanner Lease without advancing the RegionScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13325](https://issues.apache.org/jira/browse/HBASE-13325) | Protocol Buffers 2.5 no longer available for download on code.google.com |  Major | . | Andrew Purtell | Elliott Clark |
| [HBASE-13312](https://issues.apache.org/jira/browse/HBASE-13312) | SmallScannerCallable does not increment scan metrics |  Major | Client, Scanners | Lars George | Andrew Purtell |
| [HBASE-13217](https://issues.apache.org/jira/browse/HBASE-13217) | Procedure fails due to ZK issue |  Major | . | ramkrishna.s.vasudevan | Jerry He |
| [HBASE-13200](https://issues.apache.org/jira/browse/HBASE-13200) | Improper configuration can leads to endless lease recovery during failover |  Major | MTTR | He Liangliang | He Liangliang |
| [HBASE-12413](https://issues.apache.org/jira/browse/HBASE-12413) | Mismatch in the equals and hashcode methods of KeyValue |  Minor | . | Jingcheng Du | Jingcheng Du |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13591](https://issues.apache.org/jira/browse/HBASE-13591) | TestHBaseFsck is flakey |  Major | hbck | Nick Dimiduk | Josh Elser |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13593](https://issues.apache.org/jira/browse/HBASE-13593) | Quota support for namespace should take snapshot restore and clone into account |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


