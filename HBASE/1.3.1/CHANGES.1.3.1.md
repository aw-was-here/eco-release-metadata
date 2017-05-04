
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

## Release 1.3.1 - 2017-04-21

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17716](https://issues.apache.org/jira/browse/HBASE-17716) | Formalize Scan Metric names |  Minor | metrics | Karan Mehta | Karan Mehta |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12770](https://issues.apache.org/jira/browse/HBASE-12770) | Don't transfer all the queued hlogs of a dead server to the same alive server |  Minor | Replication | Jianwei Cui | Phil Yang |
| [HBASE-16773](https://issues.apache.org/jira/browse/HBASE-16773) | AccessController should access local region if possible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16562](https://issues.apache.org/jira/browse/HBASE-16562) | ITBLL should fail to start if misconfigured |  Major | integration tests | Andrew Purtell | Heng Chen |
| [HBASE-17637](https://issues.apache.org/jira/browse/HBASE-17637) | Update progress more frequently in IntegrationTestBigLinkedList.Generator.persist |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17627](https://issues.apache.org/jira/browse/HBASE-17627) | Active workers metric for thrift |  Major | Thrift | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17057](https://issues.apache.org/jira/browse/HBASE-17057) | Minor compactions should also drop page cache behind reads |  Major | Compaction | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15941](https://issues.apache.org/jira/browse/HBASE-15941) | HBCK repair should not unsplit healthy splitted region |  Major | hbck | Stephen Yuan Jiang | Esteban Gutierrez |
| [HBASE-17579](https://issues.apache.org/jira/browse/HBASE-17579) | Backport HBASE-16302 to 1.3.1 |  Major | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-16977](https://issues.apache.org/jira/browse/HBASE-16977) | VerifyReplication should log a printable representation of the row keys |  Minor | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15429](https://issues.apache.org/jira/browse/HBASE-15429) | Add a split policy for busy regions |  Major | regionserver | Ashu Pachauri | Ashu Pachauri |
| [HBASE-16755](https://issues.apache.org/jira/browse/HBASE-16755) | Honor flush policy under global memstore pressure |  Major | regionserver | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17837](https://issues.apache.org/jira/browse/HBASE-17837) | Backport HBASE-15314 to branch-1.3 |  Major | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15635](https://issues.apache.org/jira/browse/HBASE-15635) | Mean age of Blocks in cache (seconds) on webUI should be greater than zero |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16939](https://issues.apache.org/jira/browse/HBASE-16939) | ExportSnapshot: set owner and permission on right directory |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16948](https://issues.apache.org/jira/browse/HBASE-16948) | Fix inconsistency between HRegion and Region javadoc on getRowLock |  Major | . | stack | stack |
| [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | Prevent setting timestamp of delta operations the same as previous value's |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16886](https://issues.apache.org/jira/browse/HBASE-16886) | hbase-client: scanner with reversed=true and small=true gets no result |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-17387](https://issues.apache.org/jira/browse/HBASE-17387) | Reduce the overhead of exception report in RegionActionResult for multi() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17445](https://issues.apache.org/jira/browse/HBASE-17445) | Count size of serialized exceptions in checking max result size quota |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17475](https://issues.apache.org/jira/browse/HBASE-17475) | Stack overflow in AsyncProcess if retry too much |  Major | API, Client | Allan Yang | Allan Yang |
| [HBASE-17289](https://issues.apache.org/jira/browse/HBASE-17289) | Avoid adding a replication peer named "lock" |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17357](https://issues.apache.org/jira/browse/HBASE-17357) | PerformanceEvaluation parameters parsing triggers NPE. |  Minor | Performance, test | Jean-Marc Spaggiari | Dave Navarro |
| [HBASE-17489](https://issues.apache.org/jira/browse/HBASE-17489) | ClientScanner may send a next request to a RegionScanner which has been exhausted |  Critical | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17540](https://issues.apache.org/jira/browse/HBASE-17540) | Change SASL server GSSAPI callback log line from DEBUG to TRACE in RegionServer to reduce log volumes in DEBUG mode |  Minor | regionserver | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-17522](https://issues.apache.org/jira/browse/HBASE-17522) | RuntimeExceptions from MemoryMXBean should not take down server process |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-17587](https://issues.apache.org/jira/browse/HBASE-17587) | Do not Rethrow DoNotRetryIOException as UnknownScannerException |  Major | Coprocessors, regionserver, rpc | Zach York | Zach York |
| [HBASE-17601](https://issues.apache.org/jira/browse/HBASE-17601) | close() in TableRecordReaderImpl assumes the split has started |  Minor | hadoop2 | Michael Axiak | Michael Axiak |
| [HBASE-17578](https://issues.apache.org/jira/browse/HBASE-17578) | Thrift per-method metrics should still update in the case of exceptions |  Major | Thrift | Gary Helmling | Gary Helmling |
| [HBASE-17187](https://issues.apache.org/jira/browse/HBASE-17187) | DoNotRetryExceptions from coprocessors should bubble up to the application |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17597](https://issues.apache.org/jira/browse/HBASE-17597) | TestMetaWithReplicas.testMetaTableReplicaAssignment is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-17264](https://issues.apache.org/jira/browse/HBASE-17264) | Processing RIT with offline state will always fail to open the first time |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17275](https://issues.apache.org/jira/browse/HBASE-17275) | Assign timeout may cause region to be unassigned forever |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17381](https://issues.apache.org/jira/browse/HBASE-17381) | ReplicationSourceWorkerThread can die due to unhandled exceptions |  Major | Replication | Gary Helmling | Zheng Hu |
| [HBASE-17604](https://issues.apache.org/jira/browse/HBASE-17604) | Backport HBASE-15437 (fix request and response size metrics) to branch-1 |  Major | IPC/RPC, metrics | Gary Helmling | Gary Helmling |
| [HBASE-17616](https://issues.apache.org/jira/browse/HBASE-17616) | Incorrect actions performed by CM |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17265](https://issues.apache.org/jira/browse/HBASE-17265) | Region left unassigned in master failover when region failed to open |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17572](https://issues.apache.org/jira/browse/HBASE-17572) | HMaster: Caught throwable while processing event C\_M\_MERGE\_REGION |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17611](https://issues.apache.org/jira/browse/HBASE-17611) | Thrift 2 per-call latency metrics are capped at ~ 2 seconds |  Major | metrics, Thrift | Gary Helmling | Gary Helmling |
| [HBASE-17558](https://issues.apache.org/jira/browse/HBASE-17558) | ZK dumping jsp should escape html |  Minor | security, UI | Sean Busbey | Sean Busbey |
| [HBASE-17649](https://issues.apache.org/jira/browse/HBASE-17649) | REST API for scan should return 410 when table is disabled |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15328](https://issues.apache.org/jira/browse/HBASE-15328) | Unvalidated Redirect in HMaster |  Minor | security | stack | Sean Busbey |
| [HBASE-17675](https://issues.apache.org/jira/browse/HBASE-17675) | ReplicationEndpoint should choose new sinks if a SaslException occurs |  Major | . | churro morales | churro morales |
| [HBASE-17590](https://issues.apache.org/jira/browse/HBASE-17590) | Drop cache hint should work for StoreFile write path |  Major | . | Appy | Ashu Pachauri |
| [HBASE-17677](https://issues.apache.org/jira/browse/HBASE-17677) | ServerName parsing from directory name should be more robust to errors from guava's HostAndPort |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-17069](https://issues.apache.org/jira/browse/HBASE-17069) | RegionServer writes invalid META entries for split daughters in some circumstances |  Blocker | wal | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-17682](https://issues.apache.org/jira/browse/HBASE-17682) | Region stuck in merging\_new state indefinitely |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17688](https://issues.apache.org/jira/browse/HBASE-17688) | MultiRowRangeFilter not working correctly if given same start and stop RowKey |  Minor | . | Ravi Ahuj | Jingcheng Du |
| [HBASE-17722](https://issues.apache.org/jira/browse/HBASE-17722) | Metrics subsystem stop/start messages add a lot of useless bulk to operational logging |  Trivial | metrics | Andrew Purtell | Andrew Purtell |
| [HBASE-16630](https://issues.apache.org/jira/browse/HBASE-16630) | Fragmentation in long running Bucket Cache |  Critical | BucketCache | deepankar | deepankar |
| [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | Incorrect ZK ACL set for HBase superuser |  Critical | security, Zookeeper | Shreya Bhat | Josh Elser |
| [HBASE-17501](https://issues.apache.org/jira/browse/HBASE-17501) | NullPointerException after Datanodes Decommissioned and Terminated |  Minor | Filesystem Integration, Operability | Patrick Dignan | James Moore |
| [HBASE-17780](https://issues.apache.org/jira/browse/HBASE-17780) | BoundedByteBufferPool "At capacity" messages are not actionable |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17175](https://issues.apache.org/jira/browse/HBASE-17175) | backport HBASE-17127 to 1.3.1 |  Major | . | Yu Li | Yu Li |
| [HBASE-17059](https://issues.apache.org/jira/browse/HBASE-17059) | backport HBASE-17039 to 1.3.1 |  Major | Balancer | Yu Li | Yu Li |
| [HBASE-17070](https://issues.apache.org/jira/browse/HBASE-17070) | backport HBASE-17020 to 1.3.1 |  Major | . | Yu Li | Yu Li |
| [HBASE-17813](https://issues.apache.org/jira/browse/HBASE-17813) | backport HBASE-16983 to branch-1.3 |  Major | . | Yu Li | Yu Li |
| [HBASE-17287](https://issues.apache.org/jira/browse/HBASE-17287) | Master becomes a zombie if filesystem object closes |  Blocker | master | Clay B. | Ted Yu |
| [HBASE-17698](https://issues.apache.org/jira/browse/HBASE-17698) | ReplicationEndpoint choosing sinks |  Major | Replication | churro morales | Karan Mehta |
| [HBASE-17227](https://issues.apache.org/jira/browse/HBASE-17227) | Backport HBASE-17206 to branch-1.3 |  Critical | wal | Duo Zhang | Jan Hentschel |
| [HBASE-17886](https://issues.apache.org/jira/browse/HBASE-17886) | Fix compatibility of ServerSideScanMetrics |  Blocker | . | Yu Li | Yu Li |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored |  Major | BucketCache | stack | stack |
| [HBASE-17561](https://issues.apache.org/jira/browse/HBASE-17561) | table status page should escape values that may contain arbitrary characters. |  Major | master, UI | Sean Busbey | Sean Busbey |
| [HBASE-17060](https://issues.apache.org/jira/browse/HBASE-17060) | backport HBASE-16570 to 1.3.1 |  Major | . | Yu Li | binlijin |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17609](https://issues.apache.org/jira/browse/HBASE-17609) | Allow for region merging in the UI |  Major | . | churro morales | churro morales |


