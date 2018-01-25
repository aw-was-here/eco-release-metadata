
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

## Release 2.0.0 - Unreleased (as of 2018-01-25)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11556](https://issues.apache.org/jira/browse/HBASE-11556) | Move HTablePool to hbase-thrift module. |  Major | Thrift | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11805](https://issues.apache.org/jira/browse/HBASE-11805) | KeyValue to Cell Convert in WALEdit APIs |  Major | wal | Anoop Sam John | Anoop Sam John |
| [HBASE-12046](https://issues.apache.org/jira/browse/HBASE-12046) | HTD/HCD setters should be builder-style |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12048](https://issues.apache.org/jira/browse/HBASE-12048) | Remove deprecated APIs from Filter |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12084](https://issues.apache.org/jira/browse/HBASE-12084) | Remove deprecated APIs from Result |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-12111](https://issues.apache.org/jira/browse/HBASE-12111) | Remove deprecated APIs from Mutation(s) |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-12099](https://issues.apache.org/jira/browse/HBASE-12099) | TestScannerModel fails if using jackson 1.9.13 |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12241](https://issues.apache.org/jira/browse/HBASE-12241) | The crash of regionServer when taking deadserver's replication queue breaks replication |  Critical | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12297](https://issues.apache.org/jira/browse/HBASE-12297) | Support DBB usage in Bloom and HFileIndex area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-10378](https://issues.apache.org/jira/browse/HBASE-10378) | Divide HLog interface into User and Implementor specific interfaces |  Major | wal | Himanshu Vashishtha | Sean Busbey |
| [HBASE-12346](https://issues.apache.org/jira/browse/HBASE-12346) | Scan's default auths behavior under Visibility labels |  Major | API, security | Jerry He | Jerry He |
| [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | Fix the inconsistent permission checks for bulkloading. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | Add new AsyncRpcClient |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-6778](https://issues.apache.org/jira/browse/HBASE-6778) | Deprecate Chore; its a thread per task when we should have one thread to do all tasks |  Major | . | stack | Jonathan Lawlor |
| [HBASE-13171](https://issues.apache.org/jira/browse/HBASE-13171) | Change AccessControlClient methods to accept connection object to reduce setup time. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12586](https://issues.apache.org/jira/browse/HBASE-12586) | Task 6 & 7 from HBASE-9117,  delete all public HTable constructors and delete ConnectionManager#{delete,get}Connection |  Major | . | stack | Mikhail Antonov |
| [HBASE-13198](https://issues.apache.org/jira/browse/HBASE-13198) | Remove HConnectionManager |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13248](https://issues.apache.org/jira/browse/HBASE-13248) | Make HConnectionImplementation top-level class. |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not |  Critical | API | Lars George | stack |
| [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | get\_counter value is never used. |  Major | . | Jean-Marc Spaggiari | Lars George |
| [HBASE-13373](https://issues.apache.org/jira/browse/HBASE-13373) | Squash HFileReaderV3 together with HFileReaderV2 and AbstractHFileReader; ditto for Scanners and BlockReader, etc. |  Major | . | stack | stack |
| [HBASE-12990](https://issues.apache.org/jira/browse/HBASE-12990) | MetaScanner should be replaced by MetaTableAccessor |  Major | Client | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | [PE] Add being able to write many columns |  Major | test | stack | stack |
| [HBASE-10800](https://issues.apache.org/jira/browse/HBASE-10800) | Use CellComparator instead of KVComparator |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13636](https://issues.apache.org/jira/browse/HBASE-13636) | Remove deprecation for HBASE-4072 (Reading of zoo.cfg) |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13375](https://issues.apache.org/jira/browse/HBASE-13375) | Provide HBase superuser higher priority over other users in the RPC handling |  Major | IPC/RPC | Devaraj Das | Mikhail Antonov |
| [HBASE-13843](https://issues.apache.org/jira/browse/HBASE-13843) | Fix internal constant text in ReplicationManager.java |  Trivial | master | Lars George | Gabor Liptak |
| [HBASE-13214](https://issues.apache.org/jira/browse/HBASE-13214) | Remove deprecated and unused methods from HTable class |  Major | API | Mikhail Antonov | Ashish Singhi |
| [HBASE-13983](https://issues.apache.org/jira/browse/HBASE-13983) | Doc how the oddball HTable methods getStartKey, getEndKey, etc. will be removed in 2.0.0 |  Minor | documentation | stack | stack |
| [HBASE-13646](https://issues.apache.org/jira/browse/HBASE-13646) | HRegion#execService should not try to build incomplete messages |  Major | Coprocessors, regionserver | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13849](https://issues.apache.org/jira/browse/HBASE-13849) | Remove restore and clone snapshot from the WebUI |  Major | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14047](https://issues.apache.org/jira/browse/HBASE-14047) | Cleanup deprecated APIs from Cell class |  Major | Client | Ashish Singhi | Ashish Singhi |
| [HBASE-7782](https://issues.apache.org/jira/browse/HBASE-7782) | HBaseTestingUtility.truncateTable() not acting like CLI |  Minor | test | Adrien Mogenet | Sean Busbey |
| [HBASE-14027](https://issues.apache.org/jira/browse/HBASE-14027) | Clean up netty dependencies |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-12296](https://issues.apache.org/jira/browse/HBASE-12296) | Filters should work with ByteBufferedCell |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-13954](https://issues.apache.org/jira/browse/HBASE-13954) | Remove HTableInterface#getRowOrBefore related server side code |  Major | API | Ashish Singhi | Ashish Singhi |
| [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | CoprocessorClassLoader should not exempt Hive classes |  Minor | Coprocessors | Jerry He | Jerry He |
| [HBASE-12751](https://issues.apache.org/jira/browse/HBASE-12751) | Allow RowLock to be reader writer |  Major | regionserver | Elliott Clark | stack |
| [HBASE-14205](https://issues.apache.org/jira/browse/HBASE-14205) | RegionCoprocessorHost System.nanoTime() performance bottleneck |  Critical | Coprocessors, Performance, regionserver | Jan Van Besien | Andrew Purtell |
| [HBASE-15018](https://issues.apache.org/jira/browse/HBASE-15018) | Inconsistent way of handling TimeoutException in the rpc client implementations |  Major | Client, IPC/RPC | Ashish Singhi | Ashish Singhi |
| [HBASE-14888](https://issues.apache.org/jira/browse/HBASE-14888) | ClusterSchema: Add Namespace Operations |  Major | API | stack | stack |
| [HBASE-15111](https://issues.apache.org/jira/browse/HBASE-15111) | "hbase version" should write to stdout |  Trivial | util | Gary Helmling | Gary Helmling |
| [HBASE-15100](https://issues.apache.org/jira/browse/HBASE-15100) | Master WALProcs still never clean up |  Blocker | master, proc-v2 | Elliott Clark | Matteo Bertozzi |
| [HBASE-15290](https://issues.apache.org/jira/browse/HBASE-15290) | Hbase Rest CheckAndAPI should save other cells along with compared cell |  Major | hbase | Ajith |  |
| [HBASE-15376](https://issues.apache.org/jira/browse/HBASE-15376) | ScanNext metric is size-based while every other per-operation metric is time based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-15377](https://issues.apache.org/jira/browse/HBASE-15377) | Per-RS Get metric is time based, per-region metric is size-based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | Hbase Rest CheckAndDeleteAPi should be able to delete more cells |  Major | hbase | Ajith | Ajith |
| [HBASE-15265](https://issues.apache.org/jira/browse/HBASE-15265) | Implement an asynchronous FSHLog |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-15521](https://issues.apache.org/jira/browse/HBASE-15521) | Procedure V2 - RestoreSnapshot and CloneSnapshot |  Major | Client, master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15568](https://issues.apache.org/jira/browse/HBASE-15568) | Procedure V2 - Remove CreateTableHandler in HBase Apache 2.0 release |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15481](https://issues.apache.org/jira/browse/HBASE-15481) | Add pre/post roll to WALObserver |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15575](https://issues.apache.org/jira/browse/HBASE-15575) | Rename table DDL \*Handler methods in MasterObserver to more meaningful names |  Minor | Coprocessors | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15876](https://issues.apache.org/jira/browse/HBASE-15876) | Remove doBulkLoad(Path hfofDir, final HTable table) though it has not been through a full deprecation cycle |  Blocker | . | stack | Jurriaan Mous |
| [HBASE-15610](https://issues.apache.org/jira/browse/HBASE-15610) | Remove deprecated HConnection for 2.0 thus removing all PB references for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | Jurriaan Mous |
| [HBASE-15875](https://issues.apache.org/jira/browse/HBASE-15875) | Remove HTable references and HTableInterface |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15971](https://issues.apache.org/jira/browse/HBASE-15971) | Regression: Random Read/WorkloadC slower in 1.x than 0.98 |  Critical | rpc | stack | stack |
| [HBASE-15950](https://issues.apache.org/jira/browse/HBASE-15950) | Fix memstore size estimates to be more tighter |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16153](https://issues.apache.org/jira/browse/HBASE-16153) | Correct the config name 'hbase.memestore.inmemoryflush.threshold.factor' |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13823](https://issues.apache.org/jira/browse/HBASE-13823) | Procedure V2: unnecessaery operaions on AssignmentManager#recoverTableInDisablingState() and recoverTableInEnablingState() |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16186](https://issues.apache.org/jira/browse/HBASE-16186) | Fix AssignmentManager MBean name |  Major | master | Lars George | Reid Chan |
| [HBASE-16355](https://issues.apache.org/jira/browse/HBASE-16355) | hbase-client dependency on hbase-common test-jar should be test scope |  Major | Client, dependencies | Sean Busbey | Stevo Slavic |
| [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | Ensure findbugs jsr305 jar isn't present |  Blocker | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | ensure no Xerces jars included |  Critical | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-15297](https://issues.apache.org/jira/browse/HBASE-15297) | error message is wrong when a wrong namspace is specified in grant in hbase shell |  Minor | shell | Xiang Li | Umesh Agashe |
| [HBASE-16598](https://issues.apache.org/jira/browse/HBASE-16598) | Enable zookeeper useMulti always and clean up in HBase code |  Major | . | Jerry He | Jerry He |
| [HBASE-16650](https://issues.apache.org/jira/browse/HBASE-16650) | Wrong usage of BlockCache eviction stat for heap memory tuning |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16257](https://issues.apache.org/jira/browse/HBASE-16257) | Move staging dir to be under hbase root dir |  Blocker | . | Jerry He | Jerry He |
| [HBASE-15638](https://issues.apache.org/jira/browse/HBASE-15638) | Shade protobuf |  Critical | Protobufs | stack | stack |
| [HBASE-16117](https://issues.apache.org/jira/browse/HBASE-16117) | Fix Connection leak in mapred.TableOutputFormat |  Major | mapreduce | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16799](https://issues.apache.org/jira/browse/HBASE-16799) | CP exposed Store should not expose unwanted APIs |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16729](https://issues.apache.org/jira/browse/HBASE-16729) | Define the behavior of (default) empty FilterList |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-14551](https://issues.apache.org/jira/browse/HBASE-14551) | Procedure v2 - Reimplement split |  Minor | proc-v2 | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-16747](https://issues.apache.org/jira/browse/HBASE-16747) | Track memstore data size and heap overhead separately |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables. |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | Log more details for Scan#next request when responseTooSlow |  Major | Operability | Yu Li | Yu Li |
| [HBASE-15513](https://issues.apache.org/jira/browse/HBASE-15513) | hbase.hregion.memstore.chunkpool.maxsize is 0.0 by default |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17017](https://issues.apache.org/jira/browse/HBASE-17017) | Remove the current per-region latency histogram metrics |  Major | metrics | Duo Zhang | Enis Soztutar |
| [HBASE-17132](https://issues.apache.org/jira/browse/HBASE-17132) | Cleanup deprecated code for WAL |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-16119](https://issues.apache.org/jira/browse/HBASE-16119) | Procedure v2 - Reimplement merge |  Major | proc-v2, Region Assignment | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-17221](https://issues.apache.org/jira/browse/HBASE-17221) | Abstract out an interface for RpcServer.Call |  Major | . | Jerry He | Jerry He |
| [HBASE-5401](https://issues.apache.org/jira/browse/HBASE-5401) | PerformanceEvaluation generates 10x the number of expected mappers |  Major | test | Oliver Meyn | Yi Liang |
| [HBASE-17470](https://issues.apache.org/jira/browse/HBASE-17470) | Remove merge region code from region server |  Major | regionserver | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16786](https://issues.apache.org/jira/browse/HBASE-16786) | Procedure V2 - Move ZK-lock's uses to Procedure framework locks (LockProcedure) |  Major | . | Appy | Matteo Bertozzi |
| [HBASE-12894](https://issues.apache.org/jira/browse/HBASE-12894) | Upgrade Jetty to 9.2.6 |  Critical | REST, UI | Rick Hallihan | Guang Yang |
| [HBASE-17508](https://issues.apache.org/jira/browse/HBASE-17508) | Unify the implementation of small scan and regular scan for sync client |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17599](https://issues.apache.org/jira/browse/HBASE-17599) | Use mayHaveMoreCellsInRow instead of isPartial |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17472](https://issues.apache.org/jira/browse/HBASE-17472) | Correct the semantic of  permission grant |  Major | Admin | Zheng Hu | Zheng Hu |
| [HBASE-17647](https://issues.apache.org/jira/browse/HBASE-17647) | OffheapKeyValue#heapSize() implementation is wrong |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-17312](https://issues.apache.org/jira/browse/HBASE-17312) | [JDK8] Use default method for Observer Coprocessors |  Major | Coprocessors | Guanghao Zhang | Appy |
| [HBASE-17716](https://issues.apache.org/jira/browse/HBASE-17716) | Formalize Scan Metric names |  Minor | metrics | Karan Mehta | Karan Mehta |
| [HBASE-17584](https://issues.apache.org/jira/browse/HBASE-17584) | Expose ScanMetrics with ResultScanner rather than Scan |  Major | Client, mapreduce, scan | Duo Zhang | Duo Zhang |
| [HBASE-17595](https://issues.apache.org/jira/browse/HBASE-17595) | Add partial result support for small/limited scan |  Critical | asyncclient, Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17914](https://issues.apache.org/jira/browse/HBASE-17914) | Create a new reader instead of cloning a new StoreFile when compaction |  Major | Compaction, regionserver | Duo Zhang | Duo Zhang |
| [HBASE-17956](https://issues.apache.org/jira/browse/HBASE-17956) | Raw scan should ignore TTL |  Major | scan | Duo Zhang | Duo Zhang |
| [HBASE-18009](https://issues.apache.org/jira/browse/HBASE-18009) | Move RpcServer.Call to a separated file |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-15199](https://issues.apache.org/jira/browse/HBASE-15199) | Move jruby jar so only on hbase-shell module classpath; currently globally available |  Critical | dependencies, jruby, shell | stack | Xiang Li |
| [HBASE-15296](https://issues.apache.org/jira/browse/HBASE-15296) | Break out writer and reader from StoreFile |  Major | regionserver | Appy | Appy |
| [HBASE-11013](https://issues.apache.org/jira/browse/HBASE-11013) | Clone Snapshots on Secure Cluster Should provide option to apply Retained User Permissions |  Major | snapshots | Ted Yu | Zheng Hu |
| [HBASE-3462](https://issues.apache.org/jira/browse/HBASE-3462) | Fix table.jsp in regards to splitting a region/table with an optional splitkey |  Major | master | Lars George | Balazs Meszaros |
| [HBASE-14614](https://issues.apache.org/jira/browse/HBASE-14614) | Procedure v2: Core Assignment Manager |  Major | proc-v2 | Stephen Yuan Jiang | Matteo Bertozzi |
| [HBASE-16196](https://issues.apache.org/jira/browse/HBASE-16196) | Update jruby to a newer version. |  Critical | dependencies, shell | Elliott Clark | Mike Drob |
| [HBASE-18038](https://issues.apache.org/jira/browse/HBASE-18038) | Rename StoreFile to HStoreFile and add a StoreFile interface for CP |  Critical | Coprocessors, regionserver | Duo Zhang | Duo Zhang |
| [HBASE-17908](https://issues.apache.org/jira/browse/HBASE-17908) | Upgrade guava |  Critical | dependencies | Balazs Meszaros | stack |
| [HBASE-17125](https://issues.apache.org/jira/browse/HBASE-17125) | Inconsistent result when use filter to read data |  Critical | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18500](https://issues.apache.org/jira/browse/HBASE-18500) | Performance issue: Don't use BufferedMutator for HTable's put method |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18469](https://issues.apache.org/jira/browse/HBASE-18469) | Correct  RegionServer metric of  totalRequestCount |  Critical | metrics, regionserver | Shibin Zhang | Yu Li |
| [HBASE-18528](https://issues.apache.org/jira/browse/HBASE-18528) | DON'T allow user to modify the passed table/column descriptor |  Critical | Coprocessors, master | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18511](https://issues.apache.org/jira/browse/HBASE-18511) | Default no regions on master |  Blocker | master | stack | stack |
| [HBASE-18546](https://issues.apache.org/jira/browse/HBASE-18546) | Always overwrite the TS for Append/Increment unless no existing cells are found |  Critical | API, Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15607](https://issues.apache.org/jira/browse/HBASE-15607) | Remove PB references from Admin for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18142](https://issues.apache.org/jira/browse/HBASE-18142) | Deletion of a cell deletes the previous versions too |  Major | API, shell | Karthick | ChunHao |
| [HBASE-18897](https://issues.apache.org/jira/browse/HBASE-18897) | Substitute MemStore for Memstore |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15125](https://issues.apache.org/jira/browse/HBASE-15125) | HBaseFsck's adoptHdfsOrphan function creates region with wrong end key boundary |  Major | hbck | chenrongwei | chenrongwei |
| [HBASE-15322](https://issues.apache.org/jira/browse/HBASE-15322) | Operations using Unsafe path broken for platforms not having sun.misc.Unsafe |  Critical | hbase | Anant Sharma | Anoop Sam John |
| [HBASE-15780](https://issues.apache.org/jira/browse/HBASE-15780) | Expose AuthUtil as IA.Public |  Critical | API, security | Sean Busbey | Sean Busbey |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11724](https://issues.apache.org/jira/browse/HBASE-11724) | Add to RWQueueRpcExecutor the ability to split get and scan handlers |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11885](https://issues.apache.org/jira/browse/HBASE-11885) | Provide a Dockerfile to easily build and run HBase from source |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-11909](https://issues.apache.org/jira/browse/HBASE-11909) | Region count listed by HMaster UI and hbck are different |  Minor | documentation | Gautam Gopalakrishnan | Misty Stanley-Jones |
| [HBASE-11995](https://issues.apache.org/jira/browse/HBASE-11995) | Use Connection and ConnectionFactory where possible |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12143](https://issues.apache.org/jira/browse/HBASE-12143) | Minor fix for Table code |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12127](https://issues.apache.org/jira/browse/HBASE-12127) | Move the core Connection creation functionality into ConnectionFactory |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12133](https://issues.apache.org/jira/browse/HBASE-12133) | Add FastLongHistogram for metric computation |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-11990](https://issues.apache.org/jira/browse/HBASE-11990) | Make setting the start and stop row for a specific prefix easier |  Major | Client | Niels Basjes |  |
| [HBASE-12286](https://issues.apache.org/jira/browse/HBASE-12286) | [shell] Add server/cluster online load of configuration changes |  Major | shell | stack | Manukranth Kolloju |
| [HBASE-12361](https://issues.apache.org/jira/browse/HBASE-12361) | Show data locality of region in table page |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-8707](https://issues.apache.org/jira/browse/HBASE-8707) | Add LongComparator for filter |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12496](https://issues.apache.org/jira/browse/HBASE-12496) | A blockedRequestsCount metric |  Minor | metrics | Yi Deng | Yi Deng |
| [HBASE-10560](https://issues.apache.org/jira/browse/HBASE-10560) | Per cell TTLs |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5162](https://issues.apache.org/jira/browse/HBASE-5162) | Basic client pushback mechanism |  Major | . | Jean-Daniel Cryans | Jesse Yates |
| [HBASE-12709](https://issues.apache.org/jira/browse/HBASE-12709) | [mvn] Add unit test excludes command line flag to the build. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | Add support for Scan.setRowPrefixFilter to shell |  Major | shell | Niels Basjes | Niels Basjes |
| [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | Heap occupancy based client pushback |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12944](https://issues.apache.org/jira/browse/HBASE-12944) | Support patches to branches in precommit jenkins build |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-9531](https://issues.apache.org/jira/browse/HBASE-9531) | a command line (hbase shell) interface to retreive the replication metrics and show replication lag |  Major | Replication | Demai Ni | Ashish Singhi |
| [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | Add a REST API implementation of the ClusterManager interface |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13057](https://issues.apache.org/jira/browse/HBASE-13057) | Provide client utility to easily enable and disable table replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-13063](https://issues.apache.org/jira/browse/HBASE-13063) | Allow to turn off memstore replication for region replicas |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5238](https://issues.apache.org/jira/browse/HBASE-5238) | Add a log4j category for all edits to META/ROOT |  Minor | regionserver | Todd Lipcon | Andrey Stepachev |
| [HBASE-13170](https://issues.apache.org/jira/browse/HBASE-13170) | Allow block cache to be external |  Major | io | Elliott Clark | Elliott Clark |
| [HBASE-12972](https://issues.apache.org/jira/browse/HBASE-12972) | Region, a supportable public/evolving subset of HRegion |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13412](https://issues.apache.org/jira/browse/HBASE-13412) | Region split decisions should have jitter |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13090](https://issues.apache.org/jira/browse/HBASE-13090) | Progress heartbeats for long running scanners |  Major | . | Andrew Purtell | Jonathan Lawlor |
| [HBASE-13071](https://issues.apache.org/jira/browse/HBASE-13071) | Hbase Streaming Scan Feature |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-13698](https://issues.apache.org/jira/browse/HBASE-13698) | Add RegionLocator methods to Thrift2 proxy. |  Major | Thrift | Elliott Clark | Elliott Clark |
| [HBASE-5980](https://issues.apache.org/jira/browse/HBASE-5980) | Scanner responses from RS should include metrics on rows/KVs filtered |  Minor | Client, metrics, Operability, regionserver | Todd Lipcon | Jonathan Lawlor |
| [HBASE-13356](https://issues.apache.org/jira/browse/HBASE-13356) | HBase should provide an InputFormat supporting multiple scans in mapreduce jobs over snapshots |  Minor | mapreduce | Andrew Mains | Andrew Mains |
| [HBASE-10070](https://issues.apache.org/jira/browse/HBASE-10070) | HBase read high-availability using timeline-consistent region replicas |  Major | Admin, API, LatencyResilience | Enis Soztutar | Enis Soztutar |
| [HBASE-13639](https://issues.apache.org/jira/browse/HBASE-13639) | SyncTable - rsync for HBase tables |  Major | mapreduce, Operability, tooling | Dave Latham | Dave Latham |
| [HBASE-13702](https://issues.apache.org/jira/browse/HBASE-13702) | ImportTsv: Add dry-run functionality and log bad rows |  Major | . | Appy | Appy |
| [HBASE-14154](https://issues.apache.org/jira/browse/HBASE-14154) | DFS Replication should be configurable at column family level |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-14456](https://issues.apache.org/jira/browse/HBASE-14456) | Implement a namespace-based region grouping strategy for RegionGroupingProvider |  Major | . | Yu Li | Yu Li |
| [HBASE-14459](https://issues.apache.org/jira/browse/HBASE-14459) | Add request and response sizes metrics |  Major | metrics | Sanjeev Srivatsa | Sanjeev Srivatsa |
| [HBASE-14529](https://issues.apache.org/jira/browse/HBASE-14529) | Respond to SIGHUP to reload config |  Major | Operability | Elliott Clark | Elliott Clark |
| [HBASE-12911](https://issues.apache.org/jira/browse/HBASE-12911) | Client-side metrics |  Major | Client, Operability, Performance | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13153](https://issues.apache.org/jira/browse/HBASE-13153) | Bulk Loaded HFile Replication |  Major | Replication | sunhaitao | Ashish Singhi |
| [HBASE-14980](https://issues.apache.org/jira/browse/HBASE-14980) | Project Astro |  Major | documentation | Yan |  |
| [HBASE-15036](https://issues.apache.org/jira/browse/HBASE-15036) | Update HBase Spark documentation to include bulk load with thin records |  Major | . | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-11262](https://issues.apache.org/jira/browse/HBASE-11262) | Avoid empty columns while doing bulk-load |  Major | . | Ashish Kumar | Ashish Kumar |
| [HBASE-14355](https://issues.apache.org/jira/browse/HBASE-14355) | Scan different TimeRange for each column family |  Major | Client, regionserver, Scanners | Dave Latham | churro morales |
| [HBASE-15135](https://issues.apache.org/jira/browse/HBASE-15135) | Add metrics for storefile age |  Major | . | Elliott Clark | Mikhail Antonov |
| [HBASE-13259](https://issues.apache.org/jira/browse/HBASE-13259) | mmap() based BucketCache IOEngine |  Critical | BlockCache | Zee Chen | Zee Chen |
| [HBASE-15181](https://issues.apache.org/jira/browse/HBASE-15181) | A simple implementation of date based tiered compaction |  Major | Compaction | Clara Xiong | Clara Xiong |
| [HBASE-15136](https://issues.apache.org/jira/browse/HBASE-15136) | Explore different queuing behaviors while busy |  Critical | IPC/RPC | Elliott Clark | Mikhail Antonov |
| [HBASE-14441](https://issues.apache.org/jira/browse/HBASE-14441) | HBase Backup/Restore Phase 2: Multiple RS per host support |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-6721](https://issues.apache.org/jira/browse/HBASE-6721) | RegionServer Group based Assignment |  Major | regionserver | Francis Liu | Francis Liu |
| [HBASE-15592](https://issues.apache.org/jira/browse/HBASE-15592) | Print Procedure WAL content |  Major | . | Jerry He | Jerry He |
| [HBASE-15281](https://issues.apache.org/jira/browse/HBASE-15281) | Allow the FileSystem inside HFileSystem to be wrapped |  Major | Filesystem Integration, hbase | Rajesh Nishtala | Rajesh Nishtala |
| [HBASE-15798](https://issues.apache.org/jira/browse/HBASE-15798) | Add Async RpcChannels to all RpcClients |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15847](https://issues.apache.org/jira/browse/HBASE-15847) | VerifyReplication prefix filtering |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15228](https://issues.apache.org/jira/browse/HBASE-15228) | Add the methods to RegionObserver to trigger start/complete restoring WALs |  Major | Coprocessors | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-15892](https://issues.apache.org/jira/browse/HBASE-15892) | submit-patch.py: Single command line to make patch, upload it to jira, and update review board |  Trivial | . | Appy | Appy |
| [HBASE-10358](https://issues.apache.org/jira/browse/HBASE-10358) | Shell changes for setting consistency per request |  Major | shell | Enis Soztutar | Yi Liang |
| [HBASE-15881](https://issues.apache.org/jira/browse/HBASE-15881) | Allow BZIP2 compression |  Major | HFile | Lars Hofhansl | Lars Hofhansl |
| [HBASE-3727](https://issues.apache.org/jira/browse/HBASE-3727) | MultiHFileOutputFormat |  Minor | . | Andrew Purtell | Yi Liang |
| [HBASE-12721](https://issues.apache.org/jira/browse/HBASE-12721) | Create Docker container cluster infrastructure to enable better testing |  Major | build, community, documentation, test | Dima Spivak | Dima Spivak |
| [HBASE-16213](https://issues.apache.org/jira/browse/HBASE-16213) | A new HFileBlock structure for fast random get |  Major | Performance | binlijin | binlijin |
| [HBASE-16388](https://issues.apache.org/jira/browse/HBASE-16388) | Prevent client threads being blocked by only one slow region server |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16447](https://issues.apache.org/jira/browse/HBASE-16447) | Replication by namespaces config in peer |  Critical | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16677](https://issues.apache.org/jira/browse/HBASE-16677) | Add table size (total store file size) to table page |  Minor | website | Guang Yang | Guang Yang |
| [HBASE-16751](https://issues.apache.org/jira/browse/HBASE-16751) | Add tuning information to HBase Book |  Minor | . | Peter Conrad | Peter Conrad |
| [HBASE-16463](https://issues.apache.org/jira/browse/HBASE-16463) | Improve transparent table/CF encryption with Commons Crypto |  Major | encryption | Dapeng Sun | Dapeng Sun |
| [HBASE-17151](https://issues.apache.org/jira/browse/HBASE-17151) | New API to create HFile.Reader without instantiating block cache |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17181](https://issues.apache.org/jira/browse/HBASE-17181) | Let HBase thrift2 support TThreadedSelectorServer |  Minor | Thrift | Jian Yi | Jian Yi |
| [HBASE-15432](https://issues.apache.org/jira/browse/HBASE-15432) | TableInputFormat - support multi column family scan |  Major | . | nirav patel | Xuesen Liang |
| [HBASE-17174](https://issues.apache.org/jira/browse/HBASE-17174) | Refactor the AsyncProcess, BufferedMutatorImpl, and HTable |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-9774](https://issues.apache.org/jira/browse/HBASE-9774) | HBase native metrics and metric collection for coprocessors |  Major | Coprocessors, metrics | Gary Helmling | Enis Soztutar |
| [HBASE-16981](https://issues.apache.org/jira/browse/HBASE-16981) | Expand Mob Compaction Partition policy from daily to weekly, monthly |  Major | mob | huaxiang sun | huaxiang sun |
| [HBASE-17737](https://issues.apache.org/jira/browse/HBASE-17737) | Thrift2 proxy should support scan timeRange per column family |  Major | Thrift | Yechao Chen | Yechao Chen |
| [HBASE-17758](https://issues.apache.org/jira/browse/HBASE-17758) | [RSGROUP] Add shell command to move servers and tables at the same time |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-14141](https://issues.apache.org/jira/browse/HBASE-14141) | HBase Backup/Restore Phase 3: Filter WALs on backup to include only edits from backed up tables |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17542](https://issues.apache.org/jira/browse/HBASE-17542) | Move backup system table into separate namespace |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17757](https://issues.apache.org/jira/browse/HBASE-17757) | Unify blocksize after encoding to decrease memory fragment |  Major | . | Allan Yang | Allan Yang |
| [HBASE-16961](https://issues.apache.org/jira/browse/HBASE-16961) | FileSystem Quotas |  Major | . | Josh Elser | Josh Elser |
| [HBASE-15576](https://issues.apache.org/jira/browse/HBASE-15576) | Scanning cursor to prevent blocking long time on ResultScanner.next() |  Major | . | Phil Yang | Phil Yang |
| [HBASE-17849](https://issues.apache.org/jira/browse/HBASE-17849) | PE tool random read is not totally random |  Major | Performance, test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17928](https://issues.apache.org/jira/browse/HBASE-17928) | Shell tool to clear compaction queues |  Major | Compaction, Operability | Guangxu Cheng | Guangxu Cheng |
| [HBASE-15943](https://issues.apache.org/jira/browse/HBASE-15943) | Add page displaying JVM process metrics |  Major | Operability, UI | Samir Ahmic | Samir Ahmic |
| [HBASE-14135](https://issues.apache.org/jira/browse/HBASE-14135) | HBase Backup/Restore Phase 3: Merge backup images |  Critical | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15806](https://issues.apache.org/jira/browse/HBASE-15806) | An endpoint-based export tool |  Critical | Coprocessors, tooling | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-14417](https://issues.apache.org/jira/browse/HBASE-14417) | Incremental backup and bulk loading |  Blocker | . | Vladimir Rodionov | Ted Yu |
| [HBASE-18171](https://issues.apache.org/jira/browse/HBASE-18171) | Scanning cursor for async client |  Major | . | Phil Yang | Duo Zhang |
| [HBASE-9465](https://issues.apache.org/jira/browse/HBASE-9465) | Push entries to peer clusters serially |  Critical | regionserver, Replication | Honghua Feng | Phil Yang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11344](https://issues.apache.org/jira/browse/HBASE-11344) | Hide row keys and such from the web UIs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-4495](https://issues.apache.org/jira/browse/HBASE-4495) | CatalogTracker has an identity crisis; needs to be cut-back in scope |  Major | . | stack | Mikhail Antonov |
| [HBASE-11450](https://issues.apache.org/jira/browse/HBASE-11450) | Improve file size info in SnapshotInfo tool |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-10885](https://issues.apache.org/jira/browse/HBASE-10885) | Support visibility expressions on Deletes |  Blocker | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-11452](https://issues.apache.org/jira/browse/HBASE-11452) | add getUserPermission feature in AccessControlClient as client API |  Major | Client, security | Demai Ni | Demai Ni |
| [HBASE-11315](https://issues.apache.org/jira/browse/HBASE-11315) | Keeping MVCC for configurable longer time |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11240](https://issues.apache.org/jira/browse/HBASE-11240) | Print hdfs pipeline when hlog's sync is slow |  Major | Operability, wal | Liu Shaohui | Liu Shaohui |
| [HBASE-11473](https://issues.apache.org/jira/browse/HBASE-11473) | Add BaseWALObserver class |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11349](https://issues.apache.org/jira/browse/HBASE-11349) | [Thrift] support authentication/impersonation |  Major | security, Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11444](https://issues.apache.org/jira/browse/HBASE-11444) | Remove use of reflection for User#getShortName |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11491](https://issues.apache.org/jira/browse/HBASE-11491) | Add an option to sleep randomly during the tests with the PE tool |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11437](https://issues.apache.org/jira/browse/HBASE-11437) | Modify cell tag handling code to treat the length as unsigned |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11474](https://issues.apache.org/jira/browse/HBASE-11474) | [Thrift2] support authentication/impersonation |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11497](https://issues.apache.org/jira/browse/HBASE-11497) | Expose RpcScheduling implementations as LimitedPrivate interfaces |  Major | io, regionserver, Usability | Jesse Yates | Jesse Yates |
| [HBASE-11513](https://issues.apache.org/jira/browse/HBASE-11513) | Combine SingleMultiple Queue RpcExecutor into a single class |  Minor | io, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-2217](https://issues.apache.org/jira/browse/HBASE-2217) | VM OPTS for shell only |  Major | . | stack | Andrew Purtell |
| [HBASE-5696](https://issues.apache.org/jira/browse/HBASE-5696) | Use Hadoop's DataOutputOutputStream instead of have a copy local |  Major | . | stack | Talat UYARER |
| [HBASE-11400](https://issues.apache.org/jira/browse/HBASE-11400) | Edit, consolidate, and update Compression and data encoding docs |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11548](https://issues.apache.org/jira/browse/HBASE-11548) | [PE] Add 'cycling' test N times and unit tests for size/zipf/valueSize calculations |  Trivial | test | stack | stack |
| [HBASE-7910](https://issues.apache.org/jira/browse/HBASE-7910) | Dont use reflection for security |  Major | . | Enis Soztutar | Mike Drob |
| [HBASE-11566](https://issues.apache.org/jira/browse/HBASE-11566) | make ExportSnapshot extendable by removing 'final' |  Minor | snapshots | Demai Ni | Andrew Purtell |
| [HBASE-3135](https://issues.apache.org/jira/browse/HBASE-3135) | Make our MR jobs implement Tool and use ToolRunner so can do -D trickery, etc. |  Major | . | stack | Talat UYARER |
| [HBASE-11623](https://issues.apache.org/jira/browse/HBASE-11623) | mutateRowsWithLocks might require updatesLock.readLock with waitTime=0 |  Minor | regionserver | Jianwei Cui | Jianwei Cui |
| [HBASE-11516](https://issues.apache.org/jira/browse/HBASE-11516) | Track time spent in executing coprocessors in each region. |  Minor | Coprocessors | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11583](https://issues.apache.org/jira/browse/HBASE-11583) | Refactoring out the configuration changes for enabling VisibilityLabels in the unit tests. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11630](https://issues.apache.org/jira/browse/HBASE-11630) | Refactor TestAdmin to use Admin interface instead of HBaseAdmin |  Major | . | Carter | Carter |
| [HBASE-3270](https://issues.apache.org/jira/browse/HBASE-3270) | When we create the .version file, we should create it in a tmp location and then move it into place |  Minor | master | stack | Andrew Purtell |
| [HBASE-11649](https://issues.apache.org/jira/browse/HBASE-11649) | Add shortcut commands to bin/hbase for test tools |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11631](https://issues.apache.org/jira/browse/HBASE-11631) | Wait a little till server is online in assigning meta |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11650](https://issues.apache.org/jira/browse/HBASE-11650) | Write hbase.id to a temporary location and move into place |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11585](https://issues.apache.org/jira/browse/HBASE-11585) | PE: Allows warm-up |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11664](https://issues.apache.org/jira/browse/HBASE-11664) | Build broken - TestVisibilityWithCheckAuths |  Blocker | . | Carter | Carter |
| [HBASE-11068](https://issues.apache.org/jira/browse/HBASE-11068) | Update code to use Admin factory method instead of constructor |  Major | . | Carter | Carter |
| [HBASE-11674](https://issues.apache.org/jira/browse/HBASE-11674) | LoadIncrementalHFiles should be more verbose after unrecoverable error |  Minor | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-11667](https://issues.apache.org/jira/browse/HBASE-11667) | Comment ClientScanner logic for NSREs. |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11611](https://issues.apache.org/jira/browse/HBASE-11611) | Clean up ZK-based region assignment |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6626](https://issues.apache.org/jira/browse/HBASE-6626) | Add a chapter on HDFS in the troubleshooting section of the HBase reference guide. |  Blocker | documentation | Nicolas Liochon | Misty Stanley-Jones |
| [HBASE-11697](https://issues.apache.org/jira/browse/HBASE-11697) | Improve the 'Too many blocks' message on UI blockcache status page |  Minor | . | Andrew Purtell | Mikhail Antonov |
| [HBASE-11701](https://issues.apache.org/jira/browse/HBASE-11701) | Start and end of memstore flush log should be on the same level |  Trivial | Usability | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11706](https://issues.apache.org/jira/browse/HBASE-11706) | Set versions for VerifyReplication |  Minor | mapreduce | Jianwei Cui | Jianwei Cui |
| [HBASE-11702](https://issues.apache.org/jira/browse/HBASE-11702) | Better introspection of long running compactions |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11438](https://issues.apache.org/jira/browse/HBASE-11438) | [Visibility Controller] Support UTF8 character as Visibility Labels |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11731](https://issues.apache.org/jira/browse/HBASE-11731) | Add option to only run a subset of the shell tests |  Minor | build, shell | Sean Busbey | Sean Busbey |
| [HBASE-11748](https://issues.apache.org/jira/browse/HBASE-11748) | Cleanup and add pool usage tracing to Compression |  Trivial | io | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11749](https://issues.apache.org/jira/browse/HBASE-11749) | Better error logging when coprocessors loading has failed. |  Trivial | Coprocessors, Usability | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11757](https://issues.apache.org/jira/browse/HBASE-11757) | Provide a common base abstract class for both RegionObserver and MasterObserver |  Major | . | Andrew Purtell | Matteo Bertozzi |
| [HBASE-11754](https://issues.apache.org/jira/browse/HBASE-11754) | [Shell] Record table property SPLITS\_FILE in descriptor |  Trivial | . | chendihao | chendihao |
| [HBASE-10202](https://issues.apache.org/jira/browse/HBASE-10202) | Documentation is lacking information about rolling-restart.sh script. |  Major | documentation | Jean-Marc Spaggiari | Misty Stanley-Jones |
| [HBASE-11696](https://issues.apache.org/jira/browse/HBASE-11696) | Make CombinedBlockCache resizable. |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11774](https://issues.apache.org/jira/browse/HBASE-11774) | Avoid allocating unnecessary tag iterators |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11657](https://issues.apache.org/jira/browse/HBASE-11657) | Put HTable region methods in an interface |  Major | . | Carter | Carter |
| [HBASE-11553](https://issues.apache.org/jira/browse/HBASE-11553) | Abstract visibility label related services into an interface |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-4955](https://issues.apache.org/jira/browse/HBASE-4955) | Use the official versions of surefire & junit |  Critical | test | Nicolas Liochon | Alex Newman |
| [HBASE-8298](https://issues.apache.org/jira/browse/HBASE-8298) | In shell, provide alias of 'desc' for 'describe' |  Trivial | shell | Hari Sekhon | Sean Busbey |
| [HBASE-11828](https://issues.apache.org/jira/browse/HBASE-11828) | callers of SeverName.valueOf should use equals and not == |  Minor | Client | Sean Busbey | Sean Busbey |
| [HBASE-11846](https://issues.apache.org/jira/browse/HBASE-11846) | HStore#assertBulkLoadHFileOk should log if a full HFile verification will be performed during a bulkload |  Trivial | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11810](https://issues.apache.org/jira/browse/HBASE-11810) | Access SSL Passwords through Credential Provider API |  Major | security | Larry McCay | Larry McCay |
| [HBASE-11865](https://issues.apache.org/jira/browse/HBASE-11865) | Result implements CellScannable; rather it should BE a CellScanner |  Major | . | stack | stack |
| [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | [ImportTSV] Abstract labels tags creation into pluggable Interface |  Major | mapreduce, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11826](https://issues.apache.org/jira/browse/HBASE-11826) | Split each tableOrRegionName admin methods into two targetted methods |  Major | . | Carter | Carter |
| [HBASE-11777](https://issues.apache.org/jira/browse/HBASE-11777) | Find a way to set sequenceId on Cells on the server |  Major | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-11877](https://issues.apache.org/jira/browse/HBASE-11877) | Make TableSplit more readable |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11440](https://issues.apache.org/jira/browse/HBASE-11440) | Make KeyValueCodecWithTags as the default codec for replication in trunk |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11891](https://issues.apache.org/jira/browse/HBASE-11891) | Introduce HBaseInterfaceAudience level to denote class names that appear in configs. |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-11679](https://issues.apache.org/jira/browse/HBASE-11679) | Replace "HTable" with "HTableInterface" where backwards-compatible |  Major | . | Carter | Carter |
| [HBASE-11331](https://issues.apache.org/jira/browse/HBASE-11331) | [blockcache] lazy block decompression |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11760](https://issues.apache.org/jira/browse/HBASE-11760) | Tighten up region state transition |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11845](https://issues.apache.org/jira/browse/HBASE-11845) | HFile tool should implement Tool, disable blockcache by default |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11897](https://issues.apache.org/jira/browse/HBASE-11897) | Add append and remove peer table-cfs cmds for replication |  Minor | Operability | Liu Shaohui | Liu Shaohui |
| [HBASE-11847](https://issues.apache.org/jira/browse/HBASE-11847) | HFile tool should be able to print block headers |  Minor | HFile | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11136](https://issues.apache.org/jira/browse/HBASE-11136) | Add permission check to roll WAL writer |  Minor | regionserver, security | Jerry He | Jerry He |
| [HBASE-11862](https://issues.apache.org/jira/browse/HBASE-11862) | Get rid of Writables in HTableDescriptor, HColumnDescriptor |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11873](https://issues.apache.org/jira/browse/HBASE-11873) | Hbase Version CLI enhancement |  Minor | build | Guo Ruijing | Ashish Singhi |
| [HBASE-11825](https://issues.apache.org/jira/browse/HBASE-11825) | Create Connection and ConnectionManager |  Critical | . | Carter | Solomon Duskis |
| [HBASE-12013](https://issues.apache.org/jira/browse/HBASE-12013) | Make region\_mover.rb support multiple regionservers per host |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-12010](https://issues.apache.org/jira/browse/HBASE-12010) | Use TableName.META\_TABLE\_NAME instead of indirectly from HTableDescriptor |  Trivial | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12021](https://issues.apache.org/jira/browse/HBASE-12021) | Hbase shell does not respect the HBASE\_OPTS set by the user in console |  Minor | documentation, Operability, shell | nijel | Ashish Singhi |
| [HBASE-12032](https://issues.apache.org/jira/browse/HBASE-12032) | Script to stop regionservers via RPC |  Major | scripts, util | Patrick White | Patrick White |
| [HBASE-11796](https://issues.apache.org/jira/browse/HBASE-11796) | Add client support for atomic checkAndMutate |  Major | Client | Danny Purcell | Srikanth Srungarapu |
| [HBASE-11948](https://issues.apache.org/jira/browse/HBASE-11948) | graceful\_stop.sh should use hbase-daemon.sh when executed on the decomissioned node |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12090](https://issues.apache.org/jira/browse/HBASE-12090) | Bytes: more Unsafe, more Faster |  Major | Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-6290](https://issues.apache.org/jira/browse/HBASE-6290) | Add a function a mark a server as dead and start the recovery the process |  Minor | monitoring | Nicolas Liochon | Talat UYARER |
| [HBASE-12003](https://issues.apache.org/jira/browse/HBASE-12003) | Fix SecureBulkLoadEndpoint class javadoc formatting |  Trivial | documentation, security | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12118](https://issues.apache.org/jira/browse/HBASE-12118) | Explain how to grant permission to a namespace in grant command usage |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-11879](https://issues.apache.org/jira/browse/HBASE-11879) | Change TableInputFormatBase to take interface arguments |  Major | . | Carter | Solomon Duskis |
| [HBASE-12049](https://issues.apache.org/jira/browse/HBASE-12049) | Help for alter command is a bit confusing |  Trivial | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-10153](https://issues.apache.org/jira/browse/HBASE-10153) | improve VerifyReplication to compute BADROWS more accurately |  Major | Operability, Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-11907](https://issues.apache.org/jira/browse/HBASE-11907) | Use the joni byte[] regex engine in place of j.u.regex in RegexStringComparator |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12011](https://issues.apache.org/jira/browse/HBASE-12011) | Add namespace column during display of user tables |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10411](https://issues.apache.org/jira/browse/HBASE-10411) | [Book] Add a kerberos 'request is a replay (34)' issue at troubleshooting section |  Minor | documentation, security | takeshi.miao | takeshi.miao |
| [HBASE-12195](https://issues.apache.org/jira/browse/HBASE-12195) | Fix dev-support/findHangingTests |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12016](https://issues.apache.org/jira/browse/HBASE-12016) | Reduce number of versions in Meta table. Make it configurable |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12220](https://issues.apache.org/jira/browse/HBASE-12220) | Add hedgedReads and hedgedReadWins metrics |  Major | . | stack | stack |
| [HBASE-12212](https://issues.apache.org/jira/browse/HBASE-12212) | HBaseTestingUtility#waitUntilAllRegionsAssigned should wait for RegionStates |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12176](https://issues.apache.org/jira/browse/HBASE-12176) | WALCellCodec Encoders support for non-KeyValue Cells |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-8361](https://issues.apache.org/jira/browse/HBASE-8361) | Bulk load and other utilities should not create tables for user |  Major | mapreduce | Nick Dimiduk | Ashish Singhi |
| [HBASE-12251](https://issues.apache.org/jira/browse/HBASE-12251) | [book] Hadoop compat matrix 0.94 section needs cleaned up |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12271](https://issues.apache.org/jira/browse/HBASE-12271) | Add counters for files skipped during snapshot export |  Minor | snapshots | Patrick White | Patrick White |
| [HBASE-12264](https://issues.apache.org/jira/browse/HBASE-12264) | ImportTsv should fail fast if output is not specified and table does not exist |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12161](https://issues.apache.org/jira/browse/HBASE-12161) | Add support for grant/revoke on namespaces in AccessControlClient |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-10082](https://issues.apache.org/jira/browse/HBASE-10082) | Describe 'table' output is all on one line, could use better formatting |  Minor | shell | Maxime C Dumas | Srikanth Srungarapu |
| [HBASE-12243](https://issues.apache.org/jira/browse/HBASE-12243) | HBaseFsck should auto set ignorePreCheckPermission to true if no fix option is set. |  Minor | hbck | Yi Deng | Yi Deng |
| [HBASE-12249](https://issues.apache.org/jira/browse/HBASE-12249) | Script to help you adhere to the patch-naming guidelines |  Minor | documentation, scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12328](https://issues.apache.org/jira/browse/HBASE-12328) | Need to separate JvmMetrics for Master and RegionServer |  Minor | . | Sanghyun Yun | Sanghyun Yun |
| [HBASE-11870](https://issues.apache.org/jira/browse/HBASE-11870) | Optimization : Avoid copy of key and value for tags addition in AC and VC |  Major | Performance, security | Anoop Sam John | Anoop Sam John |
| [HBASE-2609](https://issues.apache.org/jira/browse/HBASE-2609) | Harmonize the Get and Delete operations |  Major | Client | Jeff Hammerbacher | stack |
| [HBASE-12207](https://issues.apache.org/jira/browse/HBASE-12207) | A script to help keep your Git repo fresh |  Major | documentation, scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12390](https://issues.apache.org/jira/browse/HBASE-12390) | Change revision style from svn to git |  Minor | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12416](https://issues.apache.org/jira/browse/HBASE-12416) | RegionServerCallable should report what host it was communicating with |  Trivial | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12389](https://issues.apache.org/jira/browse/HBASE-12389) | Reduce the number of versions configured for the ACL table |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12272](https://issues.apache.org/jira/browse/HBASE-12272) | Generate Thrift code through maven |  Major | build, documentation, Thrift | Niels Basjes | Niels Basjes |
| [HBASE-12424](https://issues.apache.org/jira/browse/HBASE-12424) | Finer grained logging and metrics for split transactions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12432](https://issues.apache.org/jira/browse/HBASE-12432) | RpcRetryingCaller should log after fixed number of retries like AsyncProcess |  Minor | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12434](https://issues.apache.org/jira/browse/HBASE-12434) | Add a command to compact all the regions in a regionserver |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12455](https://issues.apache.org/jira/browse/HBASE-12455) | Add 'description' to bean and attribute output when you do /jmx?description=true |  Major | metrics | stack | stack |
| [HBASE-12447](https://issues.apache.org/jira/browse/HBASE-12447) | Add support for setTimeRange for RowCounter and CellCounter |  Minor | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-10483](https://issues.apache.org/jira/browse/HBASE-10483) | Provide API for retrieving info port when hbase.master.info.port is set to 0 |  Major | . | Ted Yu | Liu Shaohui |
| [HBASE-12411](https://issues.apache.org/jira/browse/HBASE-12411) | Optionally enable p-reads and private readers for compactions |  Major | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12529](https://issues.apache.org/jira/browse/HBASE-12529) | Use ThreadLocalRandom for RandomQueueBalancer |  Minor | IPC/RPC | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11939](https://issues.apache.org/jira/browse/HBASE-11939) | Document compressed blockcache |  Major | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-8572](https://issues.apache.org/jira/browse/HBASE-8572) | Enhance delete\_snapshot.rb to call snapshot deletion API with regex |  Major | . | Ted Yu | Ashish Singhi |
| [HBASE-12569](https://issues.apache.org/jira/browse/HBASE-12569) | Control MaxDirectMemorySize in the same manner as heap size |  Minor | scripts | Patrick White | Patrick White |
| [HBASE-12559](https://issues.apache.org/jira/browse/HBASE-12559) | Provide LoadBalancer with online configuration capability |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11639](https://issues.apache.org/jira/browse/HBASE-11639) | [Visibility controller] Replicate the visibility of Cells as strings |  Major | Replication, security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12650](https://issues.apache.org/jira/browse/HBASE-12650) | Move ServerName to hbase-common module |  Blocker | . | Gaurav Menghani | Ted Yu |
| [HBASE-12597](https://issues.apache.org/jira/browse/HBASE-12597) | Add RpcClient interface and enable changing of RpcClient implementation |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12653](https://issues.apache.org/jira/browse/HBASE-12653) | Move TestRegionServerOnlineConfigChange & TestConfigurationManager to Junit4 tests |  Minor | test | Ashish Singhi | Ashish Singhi |
| [HBASE-12583](https://issues.apache.org/jira/browse/HBASE-12583) | Allow creating reference files even the split row not lies in the storefile range if required |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-12601](https://issues.apache.org/jira/browse/HBASE-12601) | Explain how to grant/revoke permission to a group/namespace in grant/revoke command usage |  Minor | documentation, security, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12373](https://issues.apache.org/jira/browse/HBASE-12373) | Provide a command to list visibility labels |  Minor | . | Jerry He | Jerry He |
| [HBASE-12676](https://issues.apache.org/jira/browse/HBASE-12676) | Fix the misleading ASCII art in IntegrationTestBigLinkedList |  Trivial | documentation, integration tests | Yi Deng | Yi Deng |
| [HBASE-12668](https://issues.apache.org/jira/browse/HBASE-12668) | Adapt PayloadCarryingRpcController so it can also be used in async way |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12678](https://issues.apache.org/jira/browse/HBASE-12678) | HBCK should print command line arguments |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12659](https://issues.apache.org/jira/browse/HBASE-12659) | Replace the method calls to grant and revoke in shell scripts with AccessControlClient |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12680](https://issues.apache.org/jira/browse/HBASE-12680) | Refactor base ClusterManager in HBase to not have the notion of sending a signal. |  Minor | integration tests | Yi Deng | Yi Deng |
| [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | Port 'Make flush decisions per column family' to trunk |  Major | wal | Ted Yu | Duo Zhang |
| [HBASE-12121](https://issues.apache.org/jira/browse/HBASE-12121) | maven release plugin does not allow for customized goals |  Minor | build | Enoch Hsu | Enoch Hsu |
| [HBASE-12640](https://issues.apache.org/jira/browse/HBASE-12640) | Add Thrift-over-HTTPS and doAs support for Thrift Server |  Major | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | Run with \> 1 WAL in HRegionServer |  Critical | Performance, wal | binlijin | Sean Busbey |
| [HBASE-11412](https://issues.apache.org/jira/browse/HBASE-11412) | Minimize a number of hbase-client transitive dependencies |  Minor | Client | Sergey Beryozkin | Sergey Beryozkin |
| [HBASE-12720](https://issues.apache.org/jira/browse/HBASE-12720) | Make InternalScan LimitedPrivate |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12736](https://issues.apache.org/jira/browse/HBASE-12736) | Let MetaScanner recycle a given Connection |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12590](https://issues.apache.org/jira/browse/HBASE-12590) | A solution for data skew in HBase-Mapreduce Job |  Major | mapreduce | Weichen Ye | Weichen Ye |
| [HBASE-12608](https://issues.apache.org/jira/browse/HBASE-12608) | region\_mover.rb does not log moving region count correctly when loading regions |  Minor | shell | Jianwei Cui | Jianwei Cui |
| [HBASE-12641](https://issues.apache.org/jira/browse/HBASE-12641) | Grant all permissions of hbase zookeeper node to hbase superuser in a secure cluster |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12429](https://issues.apache.org/jira/browse/HBASE-12429) | Add port to ClusterManager's actions. |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-11869](https://issues.apache.org/jira/browse/HBASE-11869) | Support snapshot owner |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12762](https://issues.apache.org/jira/browse/HBASE-12762) | Region with no hfiles will have the highest locality cost in LocalityCostFunction |  Minor | Balancer | Jianwei Cui | Jianwei Cui |
| [HBASE-12761](https://issues.apache.org/jira/browse/HBASE-12761) | On region jump ClientScanners should get next row start key instead of a skip. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12719](https://issues.apache.org/jira/browse/HBASE-12719) | Add test WAL provider to quantify FSHLog overhead in the absence of HDFS. |  Minor | test, wal | Sean Busbey | Sean Busbey |
| [HBASE-12768](https://issues.apache.org/jira/browse/HBASE-12768) | Support enable cache\_data\_on\_write in Shell while creating table |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12796](https://issues.apache.org/jira/browse/HBASE-12796) | Clean up HTable and HBaseAdmin deprecated constructor usage |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12071](https://issues.apache.org/jira/browse/HBASE-12071) | Separate out thread pool for Master \<-\> RegionServer communication |  Major | . | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-12825](https://issues.apache.org/jira/browse/HBASE-12825) | CallRunner exception messages should include destination host:port |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12839](https://issues.apache.org/jira/browse/HBASE-12839) | Remove synchronization in ServerStatisticsTracker |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | Filter to support scanning multiple row key ranges |  Major | Filters | Jiajia Li | Jiajia Li |
| [HBASE-7541](https://issues.apache.org/jira/browse/HBASE-7541) | Convert all tests that use HBaseTestingUtility.createMultiRegions to HBA.createTable |  Major | . | Jean-Daniel Cryans | Jonathan Lawlor |
| [HBASE-12620](https://issues.apache.org/jira/browse/HBASE-12620) | Add HBASE-11639 related items to Ref Guide |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12773](https://issues.apache.org/jira/browse/HBASE-12773) | Add warning message when user is trying to bulkload a large HFile. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12840](https://issues.apache.org/jira/browse/HBASE-12840) | Improve unit test coverage of the client pushback mechanism |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11195](https://issues.apache.org/jira/browse/HBASE-11195) | Potentially improve block locality during major compaction for old regions |  Major | . | churro morales | churro morales |
| [HBASE-12887](https://issues.apache.org/jira/browse/HBASE-12887) | Cleanup many checkstyle errors in o.a.h.h.client |  Minor | build, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12896](https://issues.apache.org/jira/browse/HBASE-12896) | checkstyle report diff tool |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase." |  Major | . | Colin P. McCabe |  |
| [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | Visibility Labels:  support visibility labels for user groups. |  Major | security | Jerry He | Jerry He |
| [HBASE-12627](https://issues.apache.org/jira/browse/HBASE-12627) | Add back snapshot batching facility from HBASE-11360 dropped by HBASE-11742 |  Major | master, scaling | stack | churro morales |
| [HBASE-12929](https://issues.apache.org/jira/browse/HBASE-12929) | TableMapReduceUtil.initTableMapperJob unnecessarily limits the types of outputKeyClass and outputValueClass |  Minor | mapreduce | Will Temperley |  |
| [HBASE-12808](https://issues.apache.org/jira/browse/HBASE-12808) | Use Java API Compliance Checker for binary/source compatibility |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12893](https://issues.apache.org/jira/browse/HBASE-12893) | IntegrationTestBigLinkedListWithVisibility should use buffered writes |  Minor | integration tests | Nick Dimiduk | Jingcheng Du |
| [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | Limit compaction speed |  Major | Compaction | binlijin | Duo Zhang |
| [HBASE-12957](https://issues.apache.org/jira/browse/HBASE-12957) | region\_mover#isSuccessfulScan may be extremely slow on region with lots of expired data |  Minor | scripts | hongyu bi | hongyu bi |
| [HBASE-12982](https://issues.apache.org/jira/browse/HBASE-12982) | Adding timeouts to TestChoreService |  Major | . | stack | stack |
| [HBASE-12979](https://issues.apache.org/jira/browse/HBASE-12979) | Use setters instead of return values for handing back statistics from HRegion methods |  Major | . | Andrew Purtell | Jesse Yates |
| [HBASE-12973](https://issues.apache.org/jira/browse/HBASE-12973) | RegionCoprocessorEnvironment should provide HRegionInfo directly |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12997](https://issues.apache.org/jira/browse/HBASE-12997) | FSHLog should print pipeline on low replication |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12035](https://issues.apache.org/jira/browse/HBASE-12035) | Keep table state in META |  Critical | Client, master | Enis Soztutar | Andrey Stepachev |
| [HBASE-13016](https://issues.apache.org/jira/browse/HBASE-13016) | Clean up remnants of table states stored in table descriptors |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13018](https://issues.apache.org/jira/browse/HBASE-13018) | WALSplitter should not try to get table states while splitting META |  Critical | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | Better default for hbase.regionserver.regionSplitLimit parameter. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | Configuration option for disabling coprocessor loading |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13059](https://issues.apache.org/jira/browse/HBASE-13059) | Set executable bit for scripts in dev-support |  Trivial | scripts | Dima Spivak | Dima Spivak |
| [HBASE-13002](https://issues.apache.org/jira/browse/HBASE-13002) | Make encryption cipher configurable |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13056](https://issues.apache.org/jira/browse/HBASE-13056) | Refactor table.jsp code to remove repeated code and make it easier to add new checks |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13054](https://issues.apache.org/jira/browse/HBASE-13054) | Provide more tracing information for locking/latching events. |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13080](https://issues.apache.org/jira/browse/HBASE-13080) | Hbase shell message containing extra quote at the end of error message. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13086](https://issues.apache.org/jira/browse/HBASE-13086) | Show ZK root node on Master WebUI |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13120](https://issues.apache.org/jira/browse/HBASE-13120) | Allow disabling hadoop classpath and native library lookup |  Major | hbase | Siddharth Wagle |  |
| [HBASE-13138](https://issues.apache.org/jira/browse/HBASE-13138) | Clean up TestMasterObserver (debug, trying to figure why fails) |  Major | test | stack | stack |
| [HBASE-13132](https://issues.apache.org/jira/browse/HBASE-13132) | Improve RemoveColumn action debug message |  Trivial | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13100](https://issues.apache.org/jira/browse/HBASE-13100) | Shell command to retrieve table splits |  Minor | shell | Sean Busbey | Ashish Singhi |
| [HBASE-13128](https://issues.apache.org/jira/browse/HBASE-13128) | Make HBCK's lock file retry creation and deletion |  Minor | hbck | Victoria | Victoria |
| [HBASE-13122](https://issues.apache.org/jira/browse/HBASE-13122) | Improve efficiency for return codes of some filters |  Major | Filters | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | [PERF] Reuse the IPCUtil#buildCellBlock buffer |  Major | Performance | stack | stack |
| [HBASE-12706](https://issues.apache.org/jira/browse/HBASE-12706) | Support multiple port numbers in ZK quorum string |  Critical | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13183](https://issues.apache.org/jira/browse/HBASE-13183) | Make ZK tickTime configurable in standalone HBase |  Minor | master | Alex Araujo | Alex Araujo |
| [HBASE-13185](https://issues.apache.org/jira/browse/HBASE-13185) | Document hbase.regionserver.thrift.framed.max\_frame\_size\_in\_mb more clearly |  Trivial | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-12405](https://issues.apache.org/jira/browse/HBASE-12405) | WAL accounting by Store |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-13162](https://issues.apache.org/jira/browse/HBASE-13162) | Add capability for cleaning hbase acls to hbase cleanup script. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13236](https://issues.apache.org/jira/browse/HBASE-13236) | Clean up m2e-related warnings/errors from poms |  Minor | build | Josh Elser | Josh Elser |
| [HBASE-13240](https://issues.apache.org/jira/browse/HBASE-13240) | add an exemption to test-patch for build-only changes. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13223](https://issues.apache.org/jira/browse/HBASE-13223) | Add testMoveMeta to IntegrationTestMTTR |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13256](https://issues.apache.org/jira/browse/HBASE-13256) | HBaseConfiguration#checkDefaultsVersion(Configuration) has spelling error |  Trivial | Client | Josh Elser | Josh Elser |
| [HBASE-13109](https://issues.apache.org/jira/browse/HBASE-13109) | Make better SEEK vs SKIP decisions during scanning |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13216](https://issues.apache.org/jira/browse/HBASE-13216) | Add version info in RPC connection header |  Minor | Client, IPC/RPC | Liu Shaohui | Liu Shaohui |
| [HBASE-13235](https://issues.apache.org/jira/browse/HBASE-13235) | Revisit the security auditing semantics. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13241](https://issues.apache.org/jira/browse/HBASE-13241) | Add tests for group level grants |  Critical | security, test | Sean Busbey | Ashish Singhi |
| [HBASE-13286](https://issues.apache.org/jira/browse/HBASE-13286) | Minimum timeout for a rpc call could be 1 ms instead of 2 seconds |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-13199](https://issues.apache.org/jira/browse/HBASE-13199) | Some small improvements on canary tool |  Major | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13342](https://issues.apache.org/jira/browse/HBASE-13342) | Fix incorrect interface annotations |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | Reduce the downtime on planned moves of regions |  Minor | Balancer | Sameet Agarwal | Sameet Agarwal |
| [HBASE-13222](https://issues.apache.org/jira/browse/HBASE-13222) | Provide means of non-destructive balancer inspection |  Minor | Balancer | Nick Dimiduk | Josh Elser |
| [HBASE-13369](https://issues.apache.org/jira/browse/HBASE-13369) | Expose scanNext stats to region server level |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12975](https://issues.apache.org/jira/browse/HBASE-12975) | Supportable SplitTransaction and RegionMergeTransaction interfaces |  Major | . | Rajeshbabu Chintaguntla | Andrew Purtell |
| [HBASE-13348](https://issues.apache.org/jira/browse/HBASE-13348) | Separate the thread number configs for meta server and server operations |  Minor | master | Liu Shaohui | Liu Shaohui |
| [HBASE-13345](https://issues.apache.org/jira/browse/HBASE-13345) | Fix LocalHBaseCluster so that different region server impl can be used for different slaves |  Minor | . | Jerry He | Jerry He |
| [HBASE-13366](https://issues.apache.org/jira/browse/HBASE-13366) | Throw DoNotRetryIOException instead of read only IOException |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13340](https://issues.apache.org/jira/browse/HBASE-13340) | Include LimitedPrivate interfaces in the API compatibility report |  Minor | API | Andrew Purtell | Andrew Purtell |
| [HBASE-13341](https://issues.apache.org/jira/browse/HBASE-13341) | Add option to disable filtering on interface annotations for the API compatibility report |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12891](https://issues.apache.org/jira/browse/HBASE-12891) | Parallel execution for Hbck checkRegionConsistency |  Major | hbck | churro morales | Dave Latham |
| [HBASE-6919](https://issues.apache.org/jira/browse/HBASE-6919) | Remove unnecessary throws IOException from Bytes.readVLong |  Minor | . | James Taylor | Appy |
| [HBASE-13370](https://issues.apache.org/jira/browse/HBASE-13370) | PE tool could give option for using Explicit Column Tracker which leads to seeks |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11864](https://issues.apache.org/jira/browse/HBASE-11864) | Enhance HLogPrettyPrinter to print information from WAL Header |  Minor | . | Ted Yu | Chuhan Yang |
| [HBASE-13362](https://issues.apache.org/jira/browse/HBASE-13362) | Set max result size from client only (like scanner caching). |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13270](https://issues.apache.org/jira/browse/HBASE-13270) | Setter for Result#getStats is #addResults; confusing! |  Major | Client | stack | Mikhail Antonov |
| [HBASE-13381](https://issues.apache.org/jira/browse/HBASE-13381) | Expand TestSizeFailures to include small scans |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13436](https://issues.apache.org/jira/browse/HBASE-13436) | Include user name in ADE for scans |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | Thrift gateway should propagate text from exception causes. |  Major | Thrift | Michael Muller | Michael Muller |
| [HBASE-13453](https://issues.apache.org/jira/browse/HBASE-13453) | Master should not bind to region server ports |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-13350](https://issues.apache.org/jira/browse/HBASE-13350) | Add a debug-warn if we fail HTD checks even if table.sanity.checks is false |  Trivial | master, Operability | Matteo Bertozzi | Matt Warhaftig |
| [HBASE-12987](https://issues.apache.org/jira/browse/HBASE-12987) | HBCK should print status while scanning over many regions |  Major | hbck, Usability | Nick Dimiduk | Josh Elser |
| [HBASE-13456](https://issues.apache.org/jira/browse/HBASE-13456) | Improve HFilePrettyPrinter first hbase:meta region processing |  Minor | util | Samir Ahmic | Samir Ahmic |
| [HBASE-13534](https://issues.apache.org/jira/browse/HBASE-13534) | Change HBase master WebUI to explicitly mention if it is a backup master |  Minor | master, UI | Appy | Appy |
| [HBASE-13552](https://issues.apache.org/jira/browse/HBASE-13552) | ChoreService shutdown message could be more informative |  Trivial | . | Andrew Purtell | Jonathan Lawlor |
| [HBASE-13550](https://issues.apache.org/jira/browse/HBASE-13550) | [Shell] Support unset of a list of table attributes |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13334](https://issues.apache.org/jira/browse/HBASE-13334) | FindBugs should create precise report for new bugs introduced |  Minor | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13255](https://issues.apache.org/jira/browse/HBASE-13255) | Bad grammar in RegionServer status page |  Trivial | monitoring | Josh Elser | Josh Elser |
| [HBASE-13516](https://issues.apache.org/jira/browse/HBASE-13516) | Increase PermSize to 128MB |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13518](https://issues.apache.org/jira/browse/HBASE-13518) | Typo in hbase.hconnection.meta.lookup.threads.core parameter |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-13578](https://issues.apache.org/jira/browse/HBASE-13578) | Remove Arrays.asList().subList() from FSHLog.offer() |  Trivial | wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13431](https://issues.apache.org/jira/browse/HBASE-13431) | Allow to skip store file range check based on column family while creating reference files in HRegionFileSystem#splitStoreFile |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13351](https://issues.apache.org/jira/browse/HBASE-13351) | Annotate internal MasterRpcServices methods with admin priority |  Major | master | Josh Elser | Josh Elser |
| [HBASE-13420](https://issues.apache.org/jira/browse/HBASE-13420) | RegionEnvironment.offerExecutionLatency Blocks Threads under Heavy Load |  Major | Coprocessors, metrics, Performance | John Leach | Andrew Purtell |
| [HBASE-13358](https://issues.apache.org/jira/browse/HBASE-13358) | Upgrade VisibilityClient API to accept Connection object. |  Minor | API, security | Srikanth Srungarapu | Matt Warhaftig |
| [HBASE-12415](https://issues.apache.org/jira/browse/HBASE-12415) | Add add(byte[][] arrays) to Bytes. |  Major | API, Client | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13598](https://issues.apache.org/jira/browse/HBASE-13598) | Make hbase assembly 'attach' to the project |  Minor | . | Jerry He | Jerry He |
| [HBASE-13251](https://issues.apache.org/jira/browse/HBASE-13251) | Correct 'HBase, MapReduce, and the CLASSPATH' section in HBase Ref Guide |  Major | documentation | Jerry He | Xiang Li |
| [HBASE-13655](https://issues.apache.org/jira/browse/HBASE-13655) | Deprecate duplicate getCompression methods in HColumnDescriptor |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-13684](https://issues.apache.org/jira/browse/HBASE-13684) | Allow mlockagent to be used when not starting as root |  Minor | . | Patrick White | Patrick White |
| [HBASE-13677](https://issues.apache.org/jira/browse/HBASE-13677) | RecoverableZookeeper WARNs on expected events |  Minor | . | Nick Dimiduk | Theodore michael Malaska |
| [HBASE-13673](https://issues.apache.org/jira/browse/HBASE-13673) | WALProcedureStore procedure is chatty |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-13675](https://issues.apache.org/jira/browse/HBASE-13675) | ProcedureExecutor completion report should be at DEBUG log level |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-13656](https://issues.apache.org/jira/browse/HBASE-13656) | Rename getDeadServers to getDeadServersSize in Admin |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-13725](https://issues.apache.org/jira/browse/HBASE-13725) | [documentation] Pseudo-Distributed Local Install can link to hadoop instructions |  Minor | . | Nick Dimiduk | Lars Francke |
| [HBASE-13645](https://issues.apache.org/jira/browse/HBASE-13645) | Rename \*column methods in MasterObserver to \*columnFamily |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-13745](https://issues.apache.org/jira/browse/HBASE-13745) | Say why a flush was requested in log message |  Minor | Operability | stack | stack |
| [HBASE-13671](https://issues.apache.org/jira/browse/HBASE-13671) | More classes to add to the invoking repository of org.apache.hadoop.hbase.mapreduce.driver |  Major | mapreduce | Xiang Li | Xiang Li |
| [HBASE-13780](https://issues.apache.org/jira/browse/HBASE-13780) | Default to 700 for HDFS root dir permissions for secure deployments |  Major | Operability, security | Enis Soztutar | Enis Soztutar |
| [HBASE-13710](https://issues.apache.org/jira/browse/HBASE-13710) | Remove use of Hadoop's ReflectionUtil in favor of our own. |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-13761](https://issues.apache.org/jira/browse/HBASE-13761) | Optimize FuzzyRowFilter |  Minor | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-13344](https://issues.apache.org/jira/browse/HBASE-13344) | Add enforcer rule that matches our JDK support statement |  Minor | build | Sean Busbey | Matt Warhaftig |
| [HBASE-13816](https://issues.apache.org/jira/browse/HBASE-13816) | Build shaded modules only in release profile |  Major | build | Enis Soztutar | Enis Soztutar |
| [HBASE-13846](https://issues.apache.org/jira/browse/HBASE-13846) | Run MiniCluster on top of other MiniDfsCluster |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-13828](https://issues.apache.org/jira/browse/HBASE-13828) | Add group permissions testing coverage to AC. |  Major | test | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-13848](https://issues.apache.org/jira/browse/HBASE-13848) | Access InfoServer SSL passwords through Credential Provder API |  Major | security | Sean Busbey | Sean Busbey |
| [HBASE-13755](https://issues.apache.org/jira/browse/HBASE-13755) | Provide single super user check implementation |  Major | security | Anoop Sam John | Mikhail Antonov |
| [HBASE-13829](https://issues.apache.org/jira/browse/HBASE-13829) | Add more ThrottleType |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13894](https://issues.apache.org/jira/browse/HBASE-13894) | Avoid visitor alloc each call of ByteBufferArray get/putMultiple() |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13247](https://issues.apache.org/jira/browse/HBASE-13247) | Change BufferedMutatorExample to use addColumn() since add() is deprecated |  Trivial | Client | Lars George | Nick Dimiduk |
| [HBASE-13876](https://issues.apache.org/jira/browse/HBASE-13876) | Improving performance of HeapMemoryManager |  Minor | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13917](https://issues.apache.org/jira/browse/HBASE-13917) | Remove string comparison to identify request priority |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13931](https://issues.apache.org/jira/browse/HBASE-13931) | Move Unsafe based operations to UnsafeAccess |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13900](https://issues.apache.org/jira/browse/HBASE-13900) | duplicate methods between ProtobufMagic and ProtobufUtil |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | [ergonomics] add region size balancing as a feature of master |  Major | Balancer, Usability | Nick Dimiduk | Mikhail Antonov |
| [HBASE-14001](https://issues.apache.org/jira/browse/HBASE-14001) | Optimize write(OutputStream out, boolean withTags) for SizeCachedNoTagsKeyValue |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13943](https://issues.apache.org/jira/browse/HBASE-13943) | Get rid of KeyValue#heapSizeWithoutTags |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13980](https://issues.apache.org/jira/browse/HBASE-13980) | Distinguish blockedFlushCount vs unblockedFlushCount when tuning heap memory |  Minor | . | Ted Yu | Abhilash |
| [HBASE-14015](https://issues.apache.org/jira/browse/HBASE-14015) | Allow setting a richer state value when toString a pv2 |  Minor | proc-v2 | stack | stack |
| [HBASE-13500](https://issues.apache.org/jira/browse/HBASE-13500) | Deprecate KVComparator and move to CellComparator |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13925](https://issues.apache.org/jira/browse/HBASE-13925) | Use zookeeper multi to clear znodes in ZKProcedureUtil |  Major | Zookeeper | Ashish Singhi | Ashish Singhi |
| [HBASE-14002](https://issues.apache.org/jira/browse/HBASE-14002) | Add --noReplicationSetup option to IntegrationTestReplication |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13927](https://issues.apache.org/jira/browse/HBASE-13927) | Allow hbase-daemon.sh to conditionally redirect the log or not |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-12596](https://issues.apache.org/jira/browse/HBASE-12596) | bulkload needs to follow locality |  Major | HFile, regionserver | Victor Xu | Victor Xu |
| [HBASE-14045](https://issues.apache.org/jira/browse/HBASE-14045) | Bumping thrift version to 0.9.2. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-8642](https://issues.apache.org/jira/browse/HBASE-8642) | [Snapshot] List and delete snapshot by table |  Major | snapshots | Julian Zhou | Ashish Singhi |
| [HBASE-14110](https://issues.apache.org/jira/browse/HBASE-14110) | Add CostFunction for balancing primary region replicas |  Major | Balancer | Ted Yu | Ted Yu |
| [HBASE-14039](https://issues.apache.org/jira/browse/HBASE-14039) | BackupHandler.deleteSnapshot MUST use HBase Snapshot API |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14058](https://issues.apache.org/jira/browse/HBASE-14058) | Stabilizing default heap memory tuner |  Major | regionserver | Abhilash | Abhilash |
| [HBASE-14151](https://issues.apache.org/jira/browse/HBASE-14151) | Remove the unnecessary file ProtobufUtil.java.rej which is brought in by merging hbase-11339 |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-14152](https://issues.apache.org/jira/browse/HBASE-14152) | Fix the warnings in Checkstyle and FindBugs brought in by merging hbase-11339 |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-14097](https://issues.apache.org/jira/browse/HBASE-14097) | Log link to client scan troubleshooting section when scanner exceptions happen. |  Trivial | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14164](https://issues.apache.org/jira/browse/HBASE-14164) | Display primary region replicas distribution on table.jsp |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13965](https://issues.apache.org/jira/browse/HBASE-13965) | Stochastic Load Balancer JMX Metrics |  Major | Balancer, metrics | Lei Chen | Lei Chen |
| [HBASE-12256](https://issues.apache.org/jira/browse/HBASE-12256) | Update patch submission guidelines to call out binary file support |  Minor | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-14194](https://issues.apache.org/jira/browse/HBASE-14194) | Undeprecate methods in ThriftServerRunner.HBaseHandler |  Trivial | . | Lars Francke | Lars Francke |
| [HBASE-14122](https://issues.apache.org/jira/browse/HBASE-14122) | Client API for determining if server side supports cell level security |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | Add configuration to skip validating HFile format when bulk loading |  Minor | . | Victor Xu | Victor Xu |
| [HBASE-12812](https://issues.apache.org/jira/browse/HBASE-12812) | Update Netty dependency to latest release |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-13914](https://issues.apache.org/jira/browse/HBASE-13914) | Minor improvements to dev-support/publish\_hbase\_website.sh |  Minor | site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14203](https://issues.apache.org/jira/browse/HBASE-14203) | remove duplicate code getTableDescriptor in HTable |  Trivial | . | Heng Chen | Heng Chen |
| [HBASE-14165](https://issues.apache.org/jira/browse/HBASE-14165) | The initial size of RWQueueRpcExecutor.queues should be (numWriteQueues + numReadQueues + numScanQueues) |  Minor | IPC/RPC | Jianwei Cui | Jianwei Cui |
| [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | Web UI Framable Page |  Major | security, UI | Appy | Gabor Liptak |
| [HBASE-14260](https://issues.apache.org/jira/browse/HBASE-14260) | don't build javadocs for hbase-protocol module |  Major | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-13996](https://issues.apache.org/jira/browse/HBASE-13996) | Add write sniffing in canary |  Major | canary | Liu Shaohui | Liu Shaohui |
| [HBASE-13127](https://issues.apache.org/jira/browse/HBASE-13127) | Add timeouts on all tests so less zombie sightings |  Major | test | stack | stack |
| [HBASE-14078](https://issues.apache.org/jira/browse/HBASE-14078) | improve error message when HMaster can't bind to port |  Major | master | Sean Busbey | Matt Warhaftig |
| [HBASE-14309](https://issues.apache.org/jira/browse/HBASE-14309) | Allow load balancer to operate when there is region in transition by adding force flag |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14325](https://issues.apache.org/jira/browse/HBASE-14325) | Add snapshotinfo command to hbase script |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14332](https://issues.apache.org/jira/browse/HBASE-14332) | Show the table state when we encounter exception while disabling / enabling table |  Minor | . | Nick.han | Nick.han |
| [HBASE-7972](https://issues.apache.org/jira/browse/HBASE-7972) | Add a configuration for the TCP backlog in the Thrift server |  Major | Thrift | Jean-Daniel Cryans | Sean Busbey |
| [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections. |  Major | integration tests | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12988](https://issues.apache.org/jira/browse/HBASE-12988) | [Replication]Parallel apply edits across regions |  Major | Replication | hongyu bi | Lars Hofhansl |
| [HBASE-14314](https://issues.apache.org/jira/browse/HBASE-14314) | Metrics for block cache should take region replicas into account |  Major | metrics, regionserver | Ted Yu | Ted Yu |
| [HBASE-6617](https://issues.apache.org/jira/browse/HBASE-6617) | ReplicationSourceManager should be able to track multiple WAL paths |  Major | Replication | Ted Yu | Yu Li |
| [HBASE-14306](https://issues.apache.org/jira/browse/HBASE-14306) | Refine RegionGroupingProvider: fix issues and make it more scalable |  Major | wal | Yu Li | Yu Li |
| [HBASE-14334](https://issues.apache.org/jira/browse/HBASE-14334) | Move Memcached block cache in to it's own optional module. |  Major | BlockCache, build, Operability | Elliott Clark | Elliott Clark |
| [HBASE-14082](https://issues.apache.org/jira/browse/HBASE-14082) | Add replica id to JMX metrics names |  Major | metrics | Lei Chen | Lei Chen |
| [HBASE-14448](https://issues.apache.org/jira/browse/HBASE-14448) | Refine RegionGroupingProvider Phase-2: remove provider nesting and formalize wal group name |  Major | . | Yu Li | Yu Li |
| [HBASE-14461](https://issues.apache.org/jira/browse/HBASE-14461) | Cleanup IncreasingToUpperBoundRegionSplitPolicy |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-14193](https://issues.apache.org/jira/browse/HBASE-14193) | Remove support for direct upgrade from pre-0.96 versions |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-14455](https://issues.apache.org/jira/browse/HBASE-14455) | Try to get rid of unused HConnection instance |  Minor | . | Heng Chen | Heng Chen |
| [HBASE-14478](https://issues.apache.org/jira/browse/HBASE-14478) | A ThreadPoolExecutor with a LinkedBlockingQueue cannot execute tasks concurrently |  Major | regionserver | Jingcheng Du | Jingcheng Du |
| [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication() |  Minor | wal | Heng Chen | Heng Chen |
| [HBASE-14547](https://issues.apache.org/jira/browse/HBASE-14547) | Add more debug/trace to zk-procedure |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14520](https://issues.apache.org/jira/browse/HBASE-14520) | Optimize the number of calls for tags creation in bulk load |  Major | . | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-14436](https://issues.apache.org/jira/browse/HBASE-14436) | HTableDescriptor#addCoprocessor will always make RegionCoprocessorHost create new Configuration |  Minor | Coprocessors | Jianwei Cui | stack |
| [HBASE-14573](https://issues.apache.org/jira/browse/HBASE-14573) | Edit on the ByteBufferedCell javadoc |  Major | documentation | stack | stack |
| [HBASE-14574](https://issues.apache.org/jira/browse/HBASE-14574) | TableOutputFormat#getRecordWriter javadoc misleads |  Major | . | stack | stack |
| [HBASE-14565](https://issues.apache.org/jira/browse/HBASE-14565) | Make ZK connection timeout configurable in MiniZooKeeperCluster |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14517](https://issues.apache.org/jira/browse/HBASE-14517) | Show regionserver's version in master status page |  Minor | monitoring | Liu Shaohui | Liu Shaohui |
| [HBASE-14582](https://issues.apache.org/jira/browse/HBASE-14582) | Regionserver status webpage bucketcache list can become huge |  Major | regionserver | James Hartshorn | stack |
| [HBASE-14587](https://issues.apache.org/jira/browse/HBASE-14587) | Attach a test-sources.jar for hbase-server |  Major | build | Andrew Wang | Andrew Wang |
| [HBASE-14588](https://issues.apache.org/jira/browse/HBASE-14588) | Stop accessing test resources from within src folder |  Major | build, test | Andrew Wang | Andrew Wang |
| [HBASE-14268](https://issues.apache.org/jira/browse/HBASE-14268) | Improve KeyLocker |  Minor | util | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14586](https://issues.apache.org/jira/browse/HBASE-14586) | Use a maven profile to run Jacoco analysis |  Minor | pom | Andrew Wang | Andrew Wang |
| [HBASE-14643](https://issues.apache.org/jira/browse/HBASE-14643) | Avoid Splits from once again opening a closed reader for fetching the first and last key |  Major | regionserver | ramkrishna.s.vasudevan | Heng Chen |
| [HBASE-14668](https://issues.apache.org/jira/browse/HBASE-14668) | Remove deprecated HBaseTestCase dependency from TestHFile |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14665](https://issues.apache.org/jira/browse/HBASE-14665) | Remove deprecated HBaseTestingUtility#createTable methods |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14671](https://issues.apache.org/jira/browse/HBASE-14671) | Remove deprecated HBaseTestCase/Put/Delete apis from TestGetClosestAtOrBefore |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14669](https://issues.apache.org/jira/browse/HBASE-14669) | remove unused import and fix javadoc |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14670](https://issues.apache.org/jira/browse/HBASE-14670) | Remove deprecated HBaseTestCase from TestBlocksRead |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14683](https://issues.apache.org/jira/browse/HBASE-14683) | Batching in buffered mutator is awful when adding lists of mutations. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-14266](https://issues.apache.org/jira/browse/HBASE-14266) | RegionServers have a lock contention of Configuration.getProps |  Critical | regionserver | Toshihiro Suzuki | Andrew Purtell |
| [HBASE-14696](https://issues.apache.org/jira/browse/HBASE-14696) | Support setting allowPartialResults in mapreduce Mappers |  Major | mapreduce | Mindaugas Kairys | Ted Yu |
| [HBASE-12769](https://issues.apache.org/jira/browse/HBASE-12769) | Replication fails to delete all corresponding zk nodes when peer is removed |  Minor | Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-14672](https://issues.apache.org/jira/browse/HBASE-14672) | Exorcise deprecated Delete#delete\* apis |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14675](https://issues.apache.org/jira/browse/HBASE-14675) | Exorcise deprecated Put#add(...) and replace with Put#addColumn(...) |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14714](https://issues.apache.org/jira/browse/HBASE-14714) | some cleanup to snapshot code |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14721](https://issues.apache.org/jira/browse/HBASE-14721) | Memstore add cells - Avoid many garbage |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-14687](https://issues.apache.org/jira/browse/HBASE-14687) | Un-synchronize BufferedMutator |  Critical | Client, Performance | Elliott Clark | Elliott Clark |
| [HBASE-14731](https://issues.apache.org/jira/browse/HBASE-14731) | Add -DuseMob option to ITBLL |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13014](https://issues.apache.org/jira/browse/HBASE-13014) | Java Tool For Region Moving |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-14715](https://issues.apache.org/jira/browse/HBASE-14715) | Add javadocs to DelegatingRetryingCallable |  Trivial | Client | Jesse Yates | Jesse Yates |
| [HBASE-14700](https://issues.apache.org/jira/browse/HBASE-14700) | Support a "permissive" mode for secure clusters to allow "simple" auth clients |  Major | security | Gary Helmling | Gary Helmling |
| [HBASE-13742](https://issues.apache.org/jira/browse/HBASE-13742) | buildbot should run link checker over book |  Major | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-12822](https://issues.apache.org/jira/browse/HBASE-12822) | Option for Unloading regions through region\_mover.rb without Acknowledging |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12986](https://issues.apache.org/jira/browse/HBASE-12986) | Compaction pressure based client pushback |  Major | . | Andrew Purtell | Heng Chen |
| [HBASE-14666](https://issues.apache.org/jira/browse/HBASE-14666) | Remove deprecated HBaseTestingUtility#deleteTable methods |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14752](https://issues.apache.org/jira/browse/HBASE-14752) | Add example of using the HBase client in a multi-threaded environment |  Minor | Client | Elliott Clark | Elliott Clark |
| [HBASE-14765](https://issues.apache.org/jira/browse/HBASE-14765) | Remove snappy profile |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-14693](https://issues.apache.org/jira/browse/HBASE-14693) | Add client-side metrics for received pushback signals |  Major | Client, metrics | Andrew Purtell | Heng Chen |
| [HBASE-14387](https://issues.apache.org/jira/browse/HBASE-14387) | Compaction improvements: Maximum off-peak compaction size |  Major | Compaction, Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14766](https://issues.apache.org/jira/browse/HBASE-14766) | In WALEntryFilter, cell.getFamily() needs to be replaced with the new low-cost implementation |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-14708](https://issues.apache.org/jira/browse/HBASE-14708) | Use copy on write Map for region location cache |  Critical | Client | Elliott Clark | Elliott Clark |
| [HBASE-14805](https://issues.apache.org/jira/browse/HBASE-14805) | status should show the master in shell |  Major | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14829](https://issues.apache.org/jira/browse/HBASE-14829) | Add more checkstyles |  Major | . | Appy | Appy |
| [HBASE-14172](https://issues.apache.org/jira/browse/HBASE-14172) | Upgrade existing thrift binding using thrift 0.9.3 compiler. |  Minor | . | Srikanth Srungarapu | Josh Elser |
| [HBASE-14862](https://issues.apache.org/jira/browse/HBASE-14862) | Add support for reporting p90 for histogram metrics |  Minor | metrics | Sanjeev Lakshmanan | Sanjeev Lakshmanan |
| [HBASE-13347](https://issues.apache.org/jira/browse/HBASE-13347) | Deprecate FirstKeyValueMatchingQualifiersFilter |  Minor | . | Lars George | Abhishek Singh Chouhan |
| [HBASE-14821](https://issues.apache.org/jira/browse/HBASE-14821) | CopyTable should allow overriding more config properties for peer cluster |  Major | mapreduce | Gary Helmling | Gary Helmling |
| [HBASE-14871](https://issues.apache.org/jira/browse/HBASE-14871) | Allow specifying the base branch for make\_patch |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14860](https://issues.apache.org/jira/browse/HBASE-14860) | Improve BoundedByteBufferPool; make lockless |  Minor | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14826](https://issues.apache.org/jira/browse/HBASE-14826) | Small improvement in KVHeap seek() API |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14859](https://issues.apache.org/jira/browse/HBASE-14859) | Better checkstyle reporting |  Minor | . | Appy | Appy |
| [HBASE-14891](https://issues.apache.org/jira/browse/HBASE-14891) | Add log for uncaught exception in RegionServerMetricsWrapperRunnable |  Minor | metrics | Yu Li | Yu Li |
| [HBASE-14749](https://issues.apache.org/jira/browse/HBASE-14749) | Make changes to region\_mover.rb to use RegionMover Java tool |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-14580](https://issues.apache.org/jira/browse/HBASE-14580) | Make the HBaseMiniCluster compliant with Kerberos |  Major | security, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-14719](https://issues.apache.org/jira/browse/HBASE-14719) | Add metric for number of MasterProcWALs |  Major | . | Elliott Clark | Vrishal Kulkarni |
| [HBASE-7171](https://issues.apache.org/jira/browse/HBASE-7171) | Initial web UI for region/memstore/storefiles details |  Major | UI | stack | Mikhail Antonov |
| [HBASE-14866](https://issues.apache.org/jira/browse/HBASE-14866) | VerifyReplication should use peer configuration in peer connection |  Major | Replication | Gary Helmling | Gary Helmling |
| [HBASE-14906](https://issues.apache.org/jira/browse/HBASE-14906) | Improvements on FlushLargeStoresPolicy |  Major | . | Yu Li | Yu Li |
| [HBASE-14946](https://issues.apache.org/jira/browse/HBASE-14946) | Don't allow multi's to over run the max result size. |  Critical | Client, IPC/RPC | Elliott Clark | Elliott Clark |
| [HBASE-14795](https://issues.apache.org/jira/browse/HBASE-14795) | Enhance the spark-hbase scan operations |  Minor | . | Theodore michael Malaska | Zhan Zhang |
| [HBASE-13425](https://issues.apache.org/jira/browse/HBASE-13425) | Documentation nit in REST Gateway impersonation section |  Minor | documentation | Jeremie Gomez | Misty Stanley-Jones |
| [HBASE-14984](https://issues.apache.org/jira/browse/HBASE-14984) | Allow memcached block cache to set optimze to false |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14951](https://issues.apache.org/jira/browse/HBASE-14951) | Make hbase.regionserver.maxlogs obsolete |  Minor | Performance, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14780](https://issues.apache.org/jira/browse/HBASE-14780) | Integration Tests that run with ChaosMonkey need to specify CFs |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14978](https://issues.apache.org/jira/browse/HBASE-14978) | Don't allow Multi to retain too many blocks |  Blocker | io, IPC/RPC, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14976](https://issues.apache.org/jira/browse/HBASE-14976) | Add RPC call queues to the web ui |  Minor | UI | Elliott Clark | Pallavi Adusumilli |
| [HBASE-13158](https://issues.apache.org/jira/browse/HBASE-13158) | When client supports CellBlock, return the result Cells as controller payload for get(Get) API also |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-14684](https://issues.apache.org/jira/browse/HBASE-14684) | Try to remove all MiniMapReduceCluster in unit tests |  Critical | test | Heng Chen | Heng Chen |
| [HBASE-14800](https://issues.apache.org/jira/browse/HBASE-14800) | Expose checkAndMutate via Thrift2 |  Major | Thrift | Josh Elser | Josh Elser |
| [HBASE-13322](https://issues.apache.org/jira/browse/HBASE-13322) | Replace explicit HBaseAdmin creation with connection#getAdmin() |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-14796](https://issues.apache.org/jira/browse/HBASE-14796) | Enhance the Gets in the connector |  Minor | . | Theodore michael Malaska | Zhan Zhang |
| [HBASE-15044](https://issues.apache.org/jira/browse/HBASE-15044) | Region normalization should be allowed when underlying namespace has quota |  Major | Balancer | Ted Yu | Ted Yu |
| [HBASE-15060](https://issues.apache.org/jira/browse/HBASE-15060) | Cull TestHFileWriterV2 and HFileWriterFactory |  Major | HFile | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15038](https://issues.apache.org/jira/browse/HBASE-15038) | ExportSnapshot should support separate configurations for source and destination clusters |  Major | mapreduce, snapshots | Gary Helmling | Gary Helmling |
| [HBASE-14524](https://issues.apache.org/jira/browse/HBASE-14524) | Short-circuit comparison of rows in CellComparator |  Major | Performance, Scanners | Lars Francke | Lars Francke |
| [HBASE-15066](https://issues.apache.org/jira/browse/HBASE-15066) | Small improvements to Canary tool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14468](https://issues.apache.org/jira/browse/HBASE-14468) | Compaction improvements: FIFO compaction policy |  Major | Compaction, Performance | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15068](https://issues.apache.org/jira/browse/HBASE-15068) | Add metrics for region normalization plans |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15076](https://issues.apache.org/jira/browse/HBASE-15076) | Add getScanner(Scan scan, List\<KeyValueScanner\> additionalScanners) API into Region interface |  Critical | regionserver | liu ming | Anoop Sam John |
| [HBASE-13525](https://issues.apache.org/jira/browse/HBASE-13525) | Update test-patch to leverage Apache Yetus |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-15119](https://issues.apache.org/jira/browse/HBASE-15119) | Include git SHA in check\_compatibility reports |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14865](https://issues.apache.org/jira/browse/HBASE-14865) | Support passing multiple QOPs to SaslClient/Server via hbase.rpc.protection |  Major | security | Appy | Appy |
| [HBASE-15123](https://issues.apache.org/jira/browse/HBASE-15123) | Remove duplicate code in LocalHBaseCluster and minor formatting |  Minor | . | Appy | Appy |
| [HBASE-14969](https://issues.apache.org/jira/browse/HBASE-14969) | Add throughput controller for flush |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-15129](https://issues.apache.org/jira/browse/HBASE-15129) | Set default value for hbase.fs.tmp.dir rather than fully depend on hbase-default.xml |  Major | mapreduce | Yu Li | Yu Li |
| [HBASE-13376](https://issues.apache.org/jira/browse/HBASE-13376) | Improvements to Stochastic load balancer |  Minor | Balancer | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-15177](https://issues.apache.org/jira/browse/HBASE-15177) | Reduce garbage created under high load |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15197](https://issues.apache.org/jira/browse/HBASE-15197) | Expose filtered read requests metric to metrics framework and Web UI |  Minor | . | Eungsop Yoo | Eungsop Yoo |
| [HBASE-15211](https://issues.apache.org/jira/browse/HBASE-15211) | Don't run the CatalogJanitor if there are regions in transition |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-15201](https://issues.apache.org/jira/browse/HBASE-15201) | Add hbase-spark to hbase assembly |  Minor | . | Jerry He | Jerry He |
| [HBASE-11792](https://issues.apache.org/jira/browse/HBASE-11792) | Organize PerformanceEvaluation usage output |  Minor | Performance, test | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-15229](https://issues.apache.org/jira/browse/HBASE-15229) | Canary Tools should not call System.Exit on error |  Critical | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-15223](https://issues.apache.org/jira/browse/HBASE-15223) | Make convertScanToString public for Spark |  Major | . | Jerry He | Jerry He |
| [HBASE-15219](https://issues.apache.org/jira/browse/HBASE-15219) | Canary tool does not return non-zero exit code when one of regions is in stuck state |  Critical | canary | Vishal Khandelwal | Ted Yu |
| [HBASE-15301](https://issues.apache.org/jira/browse/HBASE-15301) | Remove the never-thrown NamingException from TableInputFormatBase#reverseDNS method signature |  Minor | . | Yu Li | Yu Li |
| [HBASE-11927](https://issues.apache.org/jira/browse/HBASE-11927) | Use Native Hadoop Library for HFile checksum (And flip default from CRC32 to CRC32C) |  Major | Performance | stack | Appy |
| [HBASE-15306](https://issues.apache.org/jira/browse/HBASE-15306) | Make RPC call queue length dynamically configurable |  Major | IPC/RPC | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15312](https://issues.apache.org/jira/browse/HBASE-15312) | Update the dependences of pom for mini cluster in HBase Book |  Minor | documentation | Liu Shaohui | Liu Shaohui |
| [HBASE-15222](https://issues.apache.org/jira/browse/HBASE-15222) | Use less contended classes for metrics |  Critical | metrics | Elliott Clark | Elliott Clark |
| [HBASE-15315](https://issues.apache.org/jira/browse/HBASE-15315) | Remove always set super user call as high priority |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-14099](https://issues.apache.org/jira/browse/HBASE-14099) | StoreFile.passesKeyRangeFilter need not create Cells from the Scan's start and stop Row |  Major | Performance, Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15356](https://issues.apache.org/jira/browse/HBASE-15356) | Remove unused Imports |  Trivial | . | Youngjoon Kim | Youngjoon Kim |
| [HBASE-15338](https://issues.apache.org/jira/browse/HBASE-15338) | Add a option to disable the data block cache for testing the performance of underlying file system |  Minor | integration tests | Liu Shaohui | Liu Shaohui |
| [HBASE-15243](https://issues.apache.org/jira/browse/HBASE-15243) | Utilize the lowest seek value when all Filters in MUST\_PASS\_ONE FilterList return SEEK\_NEXT\_USING\_HINT |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15413](https://issues.apache.org/jira/browse/HBASE-15413) | Procedure-V2: print out ProcedureInfo during trace |  Trivial | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15331](https://issues.apache.org/jira/browse/HBASE-15331) | HBase Backup/Restore Phase 2: Optimized Restore operation |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15470](https://issues.apache.org/jira/browse/HBASE-15470) | Add a setting for Priority queue length |  Major | IPC/RPC, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-12940](https://issues.apache.org/jira/browse/HBASE-12940) | Expose listPeerConfigs and getPeerConfig to the HBase shell |  Major | shell | Kevin Risden | Geoffrey Jacoby |
| [HBASE-15456](https://issues.apache.org/jira/browse/HBASE-15456) | CreateTableProcedure/ModifyTableProcedure needs to fail when there is no family in table descriptor |  Minor | master | huaxiang sun | huaxiang sun |
| [HBASE-15451](https://issues.apache.org/jira/browse/HBASE-15451) | Remove unnecessary wait in MVCC |  Major | . | Yu Li | Yu Li |
| [HBASE-14963](https://issues.apache.org/jira/browse/HBASE-14963) | Remove use of Guava Stopwatch from HBase client code |  Major | Client | Devaraj Das | Devaraj Das |
| [HBASE-15478](https://issues.apache.org/jira/browse/HBASE-15478) | add comments to FSHLog explaining why syncRunnerIndex won't overflow |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-15447](https://issues.apache.org/jira/browse/HBASE-15447) | Improve javadocs description for Delete methods |  Minor | API, documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-15212](https://issues.apache.org/jira/browse/HBASE-15212) | RRCServer should enforce max request size |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15475](https://issues.apache.org/jira/browse/HBASE-15475) | Allow TimestampsFilter to provide a seek hint |  Major | Client, Filters, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14703](https://issues.apache.org/jira/browse/HBASE-14703) | HTable.mutateRow does not collect stats |  Major | Client | Heng Chen | Heng Chen |
| [HBASE-15300](https://issues.apache.org/jira/browse/HBASE-15300) | Upgrade to zookeeper 3.4.8 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15486](https://issues.apache.org/jira/browse/HBASE-15486) | Avoid multiple disable/enable balancer calls while running rolling-restart.sh --graceful |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-15526](https://issues.apache.org/jira/browse/HBASE-15526) | Make SnapshotManager accessible through MasterServices |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15496](https://issues.apache.org/jira/browse/HBASE-15496) | Throw RowTooBigException only for user scan/get |  Minor | Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15508](https://issues.apache.org/jira/browse/HBASE-15508) | Add command for exporting snapshot in hbase command script |  Minor | hbase, scripts, snapshots | Yufeng Jiang | Yufeng Jiang |
| [HBASE-15191](https://issues.apache.org/jira/browse/HBASE-15191) | CopyTable and VerifyReplication - Option to specify batch size, versions |  Minor | Replication | Parth Shah | Parth Shah |
| [HBASE-14983](https://issues.apache.org/jira/browse/HBASE-14983) | Create metrics for per block type hit/miss ratios |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-15569](https://issues.apache.org/jira/browse/HBASE-15569) | Make Bytes.toStringBinary faster |  Minor | Performance | Junegunn Choi | Junegunn Choi |
| [HBASE-15571](https://issues.apache.org/jira/browse/HBASE-15571) | Make MasterProcedureManagerHost accessible through MasterServices |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15396](https://issues.apache.org/jira/browse/HBASE-15396) | Enhance mapreduce.TableSplit to add encoded region name |  Minor | mapreduce | Harsh J | Harsh J |
| [HBASE-15606](https://issues.apache.org/jira/browse/HBASE-15606) | Limit creating zk connection in HBaseAdmin#getCompactionState() only to case when 'hbase:meta' is checked. |  Minor | Admin | Samir Ahmic | Samir Ahmic |
| [HBASE-15586](https://issues.apache.org/jira/browse/HBASE-15586) | Unify human readable numbers in the web UI |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15612](https://issues.apache.org/jira/browse/HBASE-15612) | Minor improvements to CellCounter and RowCounter documentation |  Trivial | documentation, mapreduce | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-15507](https://issues.apache.org/jira/browse/HBASE-15507) | Online modification of enabled ReplicationPeerConfig |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15605](https://issues.apache.org/jira/browse/HBASE-15605) | Remove PB references from HCD and HTD for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14985](https://issues.apache.org/jira/browse/HBASE-14985) | TimeRange constructors should set allTime when appropriate |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15632](https://issues.apache.org/jira/browse/HBASE-15632) | Undo the checking of lastStoreFlushTimeMap.isEmpty() introduced in HBASE-13145 |  Minor | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-13129](https://issues.apache.org/jira/browse/HBASE-13129) | Add troubleshooting hints around WAL retention from replication |  Major | documentation, Replication | Sean Busbey | Misty Stanley-Jones |
| [HBASE-15614](https://issues.apache.org/jira/browse/HBASE-15614) | Report metrics from JvmPauseMonitor |  Major | metrics, regionserver | Nick Dimiduk | Andrew Purtell |
| [HBASE-15641](https://issues.apache.org/jira/browse/HBASE-15641) | Shell "alter" should do a single modifyTable operation |  Major | shell | Gary Helmling | Matt Warhaftig |
| [HBASE-15688](https://issues.apache.org/jira/browse/HBASE-15688) | Use MasterServices directly instead of casting to HMaster when possible |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15680](https://issues.apache.org/jira/browse/HBASE-15680) | Examples in shell help message for TIMERANGE scanner specifications should use milliseconds instead of seconds |  Trivial | shell | Li Fanxi |  |
| [HBASE-15686](https://issues.apache.org/jira/browse/HBASE-15686) | Add override mechanism for the exempt classes when dynamically loading table coprocessor |  Major | Coprocessors | Sangjin Lee | Ted Yu |
| [HBASE-15706](https://issues.apache.org/jira/browse/HBASE-15706) | HFilePrettyPrinter should print out nicely formatted tags |  Minor | HFile | huaxiang sun | huaxiang sun |
| [HBASE-15744](https://issues.apache.org/jira/browse/HBASE-15744) | Port over small format/text improvements from HBASE-13784 |  Trivial | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | Print row locks at the debug dump page |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15768](https://issues.apache.org/jira/browse/HBASE-15768) | fix capitalization of ZooKeeper usage |  Trivial | documentation | Alex Moundalexis | Alex Moundalexis |
| [HBASE-15767](https://issues.apache.org/jira/browse/HBASE-15767) | Upgrade httpclient dependency |  Major | build, dependencies | Ted Yu | Ted Yu |
| [HBASE-15608](https://issues.apache.org/jira/browse/HBASE-15608) | Remove PB references from SnapShot related Exceptions |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15759](https://issues.apache.org/jira/browse/HBASE-15759) | RegionObserver.preStoreScannerOpen() doesn't have acces to current readpoint |  Minor | Coprocessors | Marek Srank | Ted Yu |
| [HBASE-15745](https://issues.apache.org/jira/browse/HBASE-15745) | Refactor RPC classes to better accept async changes. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15795](https://issues.apache.org/jira/browse/HBASE-15795) | Cleanup all classes in package org.apache.hadoop.hbase.ipc for code style |  Minor | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15794](https://issues.apache.org/jira/browse/HBASE-15794) | Fix Findbugs instanceof always true issue in MultiServerCallable |  Minor | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15793](https://issues.apache.org/jira/browse/HBASE-15793) | Port over AsyncCall improvements |  Major | rpc | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15791](https://issues.apache.org/jira/browse/HBASE-15791) | Improve javadoc in ScheduledChore |  Minor | master | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15609](https://issues.apache.org/jira/browse/HBASE-15609) | Remove PB references from Result, DoubleColumnInterpreter and any such public facing class for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15415](https://issues.apache.org/jira/browse/HBASE-15415) | Improve Master WebUI snapshot information |  Minor | master, snapshots | Sean Busbey | huaxiang sun |
| [HBASE-15808](https://issues.apache.org/jira/browse/HBASE-15808) | Reduce potential bulk load intermediate space usage and waste |  Minor | . | Jerry He | Jerry He |
| [HBASE-13532](https://issues.apache.org/jira/browse/HBASE-13532) | Make UnknownScannerException logging less scary |  Trivial | . | Appy | Appy |
| [HBASE-15842](https://issues.apache.org/jira/browse/HBASE-15842) | SnapshotInfo should display ownership information |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15667](https://issues.apache.org/jira/browse/HBASE-15667) | Add more clarity to Reference Guide related to importing Eclipse Formatter |  Trivial | documentation | Sai Teja Ranuva | Sai Teja Ranuva |
| [HBASE-15593](https://issues.apache.org/jira/browse/HBASE-15593) | Time limit of scanning should be offered by client |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15843](https://issues.apache.org/jira/browse/HBASE-15843) | Replace RegionState.getRegionInTransition() Map with a Set |  Trivial | master, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15864](https://issues.apache.org/jira/browse/HBASE-15864) | Reuse the testing helper to wait regions in transition |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15529](https://issues.apache.org/jira/browse/HBASE-15529) | Override needBalance in StochasticLoadBalancer |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15802](https://issues.apache.org/jira/browse/HBASE-15802) |  ConnectionUtils should use ThreadLocalRandom instead of Random |  Minor | . | Hiroshi Ikeda | Matt Warhaftig |
| [HBASE-15471](https://issues.apache.org/jira/browse/HBASE-15471) | Add num calls in priority and general queue to RS UI |  Major | UI | Elliott Clark | Joseph |
| [HBASE-15837](https://issues.apache.org/jira/browse/HBASE-15837) | Memstore size accounting is wrong if postBatchMutate() throws exception |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-15854](https://issues.apache.org/jira/browse/HBASE-15854) | Log the cause of SASL connection failures |  Minor | security | Robert Yokota |  |
| [HBASE-15890](https://issues.apache.org/jira/browse/HBASE-15890) | Allow thrift to set/unset "cacheBlocks" for Scans |  Major | Thrift | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15910](https://issues.apache.org/jira/browse/HBASE-15910) | Update hbase ref guide to explain submit-patch.py |  Major | documentation | Appy | Appy |
| [HBASE-15727](https://issues.apache.org/jira/browse/HBASE-15727) | Canary Tool for Zookeeper |  Major | . | churro morales | churro morales |
| [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | Add log for long-running tasks in AsyncProcess |  Critical | Operability | Yu Li | Yu Li |
| [HBASE-15849](https://issues.apache.org/jira/browse/HBASE-15849) | Shell Cleanup: Simplify handling of commands' runtime |  Minor | . | Appy | Appy |
| [HBASE-15981](https://issues.apache.org/jira/browse/HBASE-15981) | Stripe and Date-tiered compactions inaccurately suggest disabling table in docs |  Minor | documentation | Bryan Beaudreault | Bryan Beaudreault |
| [HBASE-16004](https://issues.apache.org/jira/browse/HBASE-16004) | Update to Netty 4.1.1 |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-16033](https://issues.apache.org/jira/browse/HBASE-16033) | Add more details in logging of responseTooSlow/TooLarge |  Major | Operability | Yu Li | Yu Li |
| [HBASE-5291](https://issues.apache.org/jira/browse/HBASE-5291) | Add Kerberos HTTP SPNEGO authentication support to HBase web consoles |  Major | master, regionserver, security | Andrew Purtell | Josh Elser |
| [HBASE-16048](https://issues.apache.org/jira/browse/HBASE-16048) | Tag InternalScanner with LimitedPrivate(HBaseInterfaceAudience.COPROC) |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16018](https://issues.apache.org/jira/browse/HBASE-16018) | Better documentation of ReplicationPeers |  Minor | . | Joseph | Joseph |
| [HBASE-15600](https://issues.apache.org/jira/browse/HBASE-15600) | Add provision for adding mutations to memstore or able to write to same region in batchMutate coprocessor hooks |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-16042](https://issues.apache.org/jira/browse/HBASE-16042) | Add support in PE tool for InMemory Compaction |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14397](https://issues.apache.org/jira/browse/HBASE-14397) | PrefixFilter doesn't filter all remaining rows if the prefix is longer than rowkey being compared |  Minor | Filters | Jianwei Cui | Jianwei Cui |
| [HBASE-15870](https://issues.apache.org/jira/browse/HBASE-15870) | Specify columns in REST multi gets |  Minor | REST | Dean Gurvitz | Matt Warhaftig |
| [HBASE-16085](https://issues.apache.org/jira/browse/HBASE-16085) | Add on metric for failed compactions |  Major | . | Elliott Clark | Gary Helmling |
| [HBASE-15353](https://issues.apache.org/jira/browse/HBASE-15353) | Add metric for number of CallQueueTooBigExceptions |  Minor | IPC/RPC, metrics | Elliott Clark | Jingcheng Du |
| [HBASE-16089](https://issues.apache.org/jira/browse/HBASE-16089) | Add on FastPath for CoDel |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14007](https://issues.apache.org/jira/browse/HBASE-14007) | Writing to table through MR should fail upfront if table does not exist/is disabled |  Minor | mapreduce | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-16139](https://issues.apache.org/jira/browse/HBASE-16139) | Use CellUtil instead of KeyValueUtil in Import |  Minor | . | NIDHI GAMBHIR | NIDHI GAMBHIR |
| [HBASE-16130](https://issues.apache.org/jira/browse/HBASE-16130) | Add comments to ProcedureStoreTracker |  Minor | . | Appy | Appy |
| [HBASE-16149](https://issues.apache.org/jira/browse/HBASE-16149) | Log the underlying RPC exception in RpcRetryingCallerImpl |  Minor | . | Jerry He | Jerry He |
| [HBASE-16124](https://issues.apache.org/jira/browse/HBASE-16124) | Make check\_compatibility.sh less verbose when building HBase |  Minor | build, test | Dima Spivak | Dima Spivak |
| [HBASE-16147](https://issues.apache.org/jira/browse/HBASE-16147) | Add ruby wrapper for getting compaction state |  Major | shell | Ted Yu | Ted Yu |
| [HBASE-16114](https://issues.apache.org/jira/browse/HBASE-16114) | Get regionLocation of required regions only for MR jobs |  Minor | mapreduce | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-16140](https://issues.apache.org/jira/browse/HBASE-16140) | bump owasp.esapi from 2.1.0 to 2.1.0.1 |  Major | dependencies | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16108](https://issues.apache.org/jira/browse/HBASE-16108) | RowCounter should support multiple key ranges |  Major | . | Geoffrey Jacoby | Konstantin Ryakhovskiy |
| [HBASE-14548](https://issues.apache.org/jira/browse/HBASE-14548) | Expand how table coprocessor jar and dependency path can be specified |  Major | Coprocessors | Jerry He | Xiang Li |
| [HBASE-16087](https://issues.apache.org/jira/browse/HBASE-16087) | Replication shouldn't start on a master if if only hosts system tables |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16220](https://issues.apache.org/jira/browse/HBASE-16220) | Demote log level for "HRegionFileSystem - No StoreFiles for" messages to TRACE |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16231](https://issues.apache.org/jira/browse/HBASE-16231) | Integration tests should support client keytab login for secure clusters |  Major | integration tests | Gary Helmling | Gary Helmling |
| [HBASE-16241](https://issues.apache.org/jira/browse/HBASE-16241) | Allow specification of annotations to use when running check\_compatibility.sh |  Major | scripts | Dima Spivak | Dima Spivak |
| [HBASE-16052](https://issues.apache.org/jira/browse/HBASE-16052) | Improve HBaseFsck Scalability |  Major | hbck | Ben Lau | Ben Lau |
| [HBASE-13701](https://issues.apache.org/jira/browse/HBASE-13701) | Consolidate SecureBulkLoadEndpoint into HBase core as default for bulk load |  Major | . | Jerry He | Jerry He |
| [HBASE-16008](https://issues.apache.org/jira/browse/HBASE-16008) | A robust way deal with early termination of HBCK |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16266](https://issues.apache.org/jira/browse/HBASE-16266) | Do not throw ScannerTimeoutException when catch UnknownScannerException |  Major | Client, Scanners | Phil Yang | Phil Yang |
| [HBASE-14743](https://issues.apache.org/jira/browse/HBASE-14743) | Add metrics around HeapMemoryManager |  Minor | . | Elliott Clark | Reid Chan |
| [HBASE-16275](https://issues.apache.org/jira/browse/HBASE-16275) | Change ServerManager#onlineServers from ConcurrentHashMap to ConcurrentSkipListMap |  Minor | . | huaxiang sun | huaxiang sun |
| [HBASE-16256](https://issues.apache.org/jira/browse/HBASE-16256) | Purpose of EnvironmentEdge, EnvironmentEdgeManager |  Trivial | documentation, regionserver | Sai Teja Ranuva | Sai Teja Ranuva |
| [HBASE-14881](https://issues.apache.org/jira/browse/HBASE-14881) | Provide a Put API that uses the provided row without coping |  Major | . | Jerry He | Xiang Li |
| [HBASE-16225](https://issues.apache.org/jira/browse/HBASE-16225) | Refactor ScanQueryMatcher |  Major | regionserver, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-16287](https://issues.apache.org/jira/browse/HBASE-16287) | LruBlockCache size should not exceed acceptableSize too many |  Major | BlockCache | Yu Sun | Yu Sun |
| [HBASE-8386](https://issues.apache.org/jira/browse/HBASE-8386) | deprecate TableMapReduce.addDependencyJars(Configuration, class\<?\> ...) |  Major | mapreduce | Nick Dimiduk | Sean Busbey |
| [HBASE-15882](https://issues.apache.org/jira/browse/HBASE-15882) | Upgrade to yetus precommit 0.3.0 |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-12770](https://issues.apache.org/jira/browse/HBASE-12770) | Don't transfer all the queued hlogs of a dead server to the same alive server |  Minor | Replication | Jianwei Cui | Phil Yang |
| [HBASE-16299](https://issues.apache.org/jira/browse/HBASE-16299) | Update REST API scanner with ability to do reverse scan |  Minor | REST | Bjorn Olsen | Minwoo Kang |
| [HBASE-14345](https://issues.apache.org/jira/browse/HBASE-14345) | Consolidate printUsage in IntegrationTestLoadAndVerify |  Trivial | integration tests | Nick Dimiduk | Reid Chan |
| [HBASE-16379](https://issues.apache.org/jira/browse/HBASE-16379) | [replication] Minor improvement to replication/copy\_tables\_desc.rb |  Trivial | Replication, shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16385](https://issues.apache.org/jira/browse/HBASE-16385) | Have hbase-rest pull hbase.rest.port from Constants.java |  Minor | REST | Dima Spivak | Yi Liang |
| [HBASE-16419](https://issues.apache.org/jira/browse/HBASE-16419) | check REPLICATION\_SCOPE's value more stringently |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-16434](https://issues.apache.org/jira/browse/HBASE-16434) | Improve flaky dashboard |  Minor | . | Appy | Appy |
| [HBASE-16422](https://issues.apache.org/jira/browse/HBASE-16422) | Tighten our guarantees on compatibility across patch versions |  Major | documentation | stack | stack |
| [HBASE-16455](https://issues.apache.org/jira/browse/HBASE-16455) | Provide API for obtaining all the WAL files |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16450](https://issues.apache.org/jira/browse/HBASE-16450) | Shell tool to dump replication queues |  Major | Operability, Replication | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16448](https://issues.apache.org/jira/browse/HBASE-16448) | Custom metrics for custom replication endpoints |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-16486](https://issues.apache.org/jira/browse/HBASE-16486) | Unify system table creation using the same createSystemTable API. |  Minor | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16508](https://issues.apache.org/jira/browse/HBASE-16508) | Move UnexpectedStateException to common |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16224](https://issues.apache.org/jira/browse/HBASE-16224) | Reduce the number of RPCs for the large PUTs |  Minor | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16509](https://issues.apache.org/jira/browse/HBASE-16509) | Add option to LoadIncrementalHFiles which allows skipping unmatched column families |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16502](https://issues.apache.org/jira/browse/HBASE-16502) | Reduce garbage in BufferedDataBlockEncoder |  Major | . | binlijin | binlijin |
| [HBASE-16399](https://issues.apache.org/jira/browse/HBASE-16399) | Provide an API to get list of failed regions and servername in Canary |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-16541](https://issues.apache.org/jira/browse/HBASE-16541) | Avoid unnecessary cell copy in Result#compareResults |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16086](https://issues.apache.org/jira/browse/HBASE-16086) | TableCfWALEntryFilter and ScopeWALEntryFilter should not redundantly iterate over cells. |  Major | . | churro morales | Vincent Poon |
| [HBASE-16616](https://issues.apache.org/jira/browse/HBASE-16616) | Rpc handlers stuck on ThreadLocalMap.expungeStaleEntry |  Major | Performance | Tomu Tsuruhara | Tomu Tsuruhara |
| [HBASE-16381](https://issues.apache.org/jira/browse/HBASE-16381) | Shell deleteall command should support row key prefixes |  Minor | shell | Andrew Purtell | Yi Liang |
| [HBASE-15949](https://issues.apache.org/jira/browse/HBASE-15949) | Cleanup TestRegionServerMetrics |  Minor | . | Appy | Appy |
| [HBASE-16640](https://issues.apache.org/jira/browse/HBASE-16640) | TimeoutBlockingQueue#remove() should return whether the entry is removed |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16658](https://issues.apache.org/jira/browse/HBASE-16658) | Optimize UTF8 string/byte conversions |  Minor | . | binlijin | binlijin |
| [HBASE-16646](https://issues.apache.org/jira/browse/HBASE-16646) | Enhance LoadIncrementalHFiles API to accept store file paths as input |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16659](https://issues.apache.org/jira/browse/HBASE-16659) | Use CellUtil.createFirstOnRow instead of KeyValueUtil.createFirstOnRow in some places. |  Minor | . | binlijin | binlijin |
| [HBASE-16680](https://issues.apache.org/jira/browse/HBASE-16680) | Reduce garbage in BufferChain |  Minor | . | binlijin | binlijin |
| [HBASE-16423](https://issues.apache.org/jira/browse/HBASE-16423) | Add re-compare option to VerifyReplication to avoid occasional inconsistent rows |  Minor | Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-16667](https://issues.apache.org/jira/browse/HBASE-16667) | Building with JDK 8: ignoring option MaxPermSize=256m |  Minor | build | Niels Basjes | Niels Basjes |
| [HBASE-16692](https://issues.apache.org/jira/browse/HBASE-16692) | Make ByteBufferUtils#equals safer and correct |  Major | . | binlijin | binlijin |
| [HBASE-16705](https://issues.apache.org/jira/browse/HBASE-16705) | Eliminate long to Long auto boxing in LongComparator |  Minor | Filters | binlijin | binlijin |
| [HBASE-16694](https://issues.apache.org/jira/browse/HBASE-16694) | Reduce garbage for onDiskChecksum in HFileBlock |  Minor | . | binlijin | binlijin |
| [HBASE-16714](https://issues.apache.org/jira/browse/HBASE-16714) | Procedure V2 - use base class to remove duplicate set up test code in table DDL procedures |  Major | proc-v2, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16691](https://issues.apache.org/jira/browse/HBASE-16691) | Optimize KeyOnlyFilter by utilizing KeyOnlyCell |  Major | . | binlijin | binlijin |
| [HBASE-16720](https://issues.apache.org/jira/browse/HBASE-16720) | Sort build ids in flaky dashboard |  Minor | . | Appy | Appy |
| [HBASE-16672](https://issues.apache.org/jira/browse/HBASE-16672) | Add option for bulk load to always copy hfile(s) instead of renaming |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16690](https://issues.apache.org/jira/browse/HBASE-16690) | Move znode path configs to a separated class |  Major | Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-16772](https://issues.apache.org/jira/browse/HBASE-16772) | Add verbose option to VerifyReplication for logging good rows |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16657](https://issues.apache.org/jira/browse/HBASE-16657) | Expose per-region last major compaction timestamp in RegionServer UI |  Minor | regionserver, UI | Gary Helmling | Dustin Pho |
| [HBASE-16773](https://issues.apache.org/jira/browse/HBASE-16773) | AccessController should access local region if possible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16661](https://issues.apache.org/jira/browse/HBASE-16661) | Add last major compaction age to per-region metrics |  Minor | . | Gary Helmling | Dustin Pho |
| [HBASE-16809](https://issues.apache.org/jira/browse/HBASE-16809) | Save one cell length calculation in HeapMemStoreLAB#copyCellInto |  Minor | . | binlijin | binlijin |
| [HBASE-16784](https://issues.apache.org/jira/browse/HBASE-16784) | Make use of ExtendedCell#write(OutputStream os) for the default HFileWriter#append() |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16792](https://issues.apache.org/jira/browse/HBASE-16792) | Reuse KeyValue.KeyOnlyKeyValue in BufferedDataBlockEncoder.SeekerState |  Minor | . | binlijin | binlijin |
| [HBASE-15921](https://issues.apache.org/jira/browse/HBASE-15921) | Add first AsyncTable impl and create TableImpl based on it |  Major | Client | Jurriaan Mous | Duo Zhang |
| [HBASE-16821](https://issues.apache.org/jira/browse/HBASE-16821) | Enhance LoadIncrementalHFiles API to convey missing hfiles if any |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16844](https://issues.apache.org/jira/browse/HBASE-16844) |  Procedure V2: DispatchMergingRegionsProcedure to use base class StateMachineProcedure for abort and rollback |  Trivial | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16774](https://issues.apache.org/jira/browse/HBASE-16774) | [shell] Add coverage to TestShell when ZooKeeper is not reachable |  Major | shell, test | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16854](https://issues.apache.org/jira/browse/HBASE-16854) | Refactor the org.apache.hadoop.hbase.client.Action |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16414](https://issues.apache.org/jira/browse/HBASE-16414) | Improve performance for RPC encryption with Apache Common Crypto |  Major | IPC/RPC | Colin Ma | Colin Ma |
| [HBASE-16783](https://issues.apache.org/jira/browse/HBASE-16783) | Use ByteBufferPool for the header and message during Rpc response |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16950](https://issues.apache.org/jira/browse/HBASE-16950) | Print raw stats in the end of procedure performance tools for parsing results from scripts |  Trivial | . | Appy | Appy |
| [HBASE-17014](https://issues.apache.org/jira/browse/HBASE-17014) | Add clearly marked starting and shutdown log messages for all services. |  Minor | Operability | Umesh Agashe | Umesh Agashe |
| [HBASE-17006](https://issues.apache.org/jira/browse/HBASE-17006) | Add names to threads for better debugability of thread dumps |  Minor | Operability | Appy | Appy |
| [HBASE-17013](https://issues.apache.org/jira/browse/HBASE-17013) | Add constructor to RowMutations for initializing the capacity of internal list |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16946](https://issues.apache.org/jira/browse/HBASE-16946) | Provide Raw scan as an option in VerifyReplication |  Minor | hbase | Sreekar Pallapothu | Sreekar Pallapothu |
| [HBASE-17004](https://issues.apache.org/jira/browse/HBASE-17004) | Refactor IntegrationTestManyRegions to use @ClassRule for timing out |  Minor | integration tests | Appy | Appy |
| [HBASE-17005](https://issues.apache.org/jira/browse/HBASE-17005) | Improve log message in MobFileCache |  Trivial | mob | huaxiang sun | huaxiang sun |
| [HBASE-16840](https://issues.apache.org/jira/browse/HBASE-16840) | Reuse cell's timestamp and type in ScanQueryMatcher |  Minor | . | binlijin | binlijin |
| [HBASE-17026](https://issues.apache.org/jira/browse/HBASE-17026) | VerifyReplication log should distinguish whether good row key is result of revalidation |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17063](https://issues.apache.org/jira/browse/HBASE-17063) | Cleanup TestHRegion : remove duplicate variables for method name and two unused params in initRegion |  Minor | . | Appy | Appy |
| [HBASE-17077](https://issues.apache.org/jira/browse/HBASE-17077) | Don't copy the replication queue belonging to the peer which has been deleted |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17037](https://issues.apache.org/jira/browse/HBASE-17037) | Enhance LoadIncrementalHFiles API to convey loaded files |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16708](https://issues.apache.org/jira/browse/HBASE-16708) | Expose endpoint Coprocessor name in "responseTooSlow" log messages |  Major | . | Nick Dimiduk | Yi Liang |
| [HBASE-17088](https://issues.apache.org/jira/browse/HBASE-17088) | Refactor RWQueueRpcExecutor/BalancedQueueRpcExecutor/RpcExecutor |  Major | rpc | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17126](https://issues.apache.org/jira/browse/HBASE-17126) | Expose KeyValue#checkParameters() and checkForTagsLength() to be used by other Cell implementations |  Minor | Client, regionserver | Xiang Li | Xiang Li |
| [HBASE-17123](https://issues.apache.org/jira/browse/HBASE-17123) | Add postBulkLoadHFile variant that notifies the final paths for the hfiles |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17129](https://issues.apache.org/jira/browse/HBASE-17129) | Remove public from methods in DataType interface |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-17157](https://issues.apache.org/jira/browse/HBASE-17157) | Increase the default mergeable threshold for mob compaction |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-17176](https://issues.apache.org/jira/browse/HBASE-17176) | Reuse the builder in RequestConverter |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17086](https://issues.apache.org/jira/browse/HBASE-17086) | Add comments to explain why Cell#getTagsLength() returns an int, rather than a short |  Minor |  Interface | Xiang Li | Xiang Li |
| [HBASE-16561](https://issues.apache.org/jira/browse/HBASE-16561) | Add metrics about read/write/scan queue length and active read/write/scan handler count |  Minor | IPC/RPC, metrics | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16302](https://issues.apache.org/jira/browse/HBASE-16302) | age of last shipped op and age of last applied op should be histograms |  Major | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17178](https://issues.apache.org/jira/browse/HBASE-17178) | Add region balance throttling |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17211](https://issues.apache.org/jira/browse/HBASE-17211) | Add more details in log when UnknownScannerException thrown in ScannerCallable |  Minor | Operability | Yu Li | Yu Li |
| [HBASE-17184](https://issues.apache.org/jira/browse/HBASE-17184) | Code cleanup of LruBlockCache |  Trivial | . | Lars Francke | Lars Francke |
| [HBASE-17212](https://issues.apache.org/jira/browse/HBASE-17212) | Should add null checker on table name in HTable constructor and RegionServerCallable |  Major | . | Yu Li | Yu Li |
| [HBASE-17216](https://issues.apache.org/jira/browse/HBASE-17216) | A Few Fields Can Be Safely Made Static |  Major | . | John Leach | John Leach |
| [HBASE-17205](https://issues.apache.org/jira/browse/HBASE-17205) | Add a metric for the duration of region in transition |  Minor | Region Assignment | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17191](https://issues.apache.org/jira/browse/HBASE-17191) | Make use of UnsafeByteOperations#unsafeWrap(ByteBuffer buffer) in PBUtil#toCell(Cell cell) |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17235](https://issues.apache.org/jira/browse/HBASE-17235) | Improvement in creation of CIS for onheap buffer cases |  Major | rpc | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17161](https://issues.apache.org/jira/browse/HBASE-17161) | MOB : Make ref cell creation more efficient |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-17232](https://issues.apache.org/jira/browse/HBASE-17232) | Replace HashSet with ArrayList to accumulate delayed scanners in KVHeap and StoreScanner. |  Major | . | binlijin | binlijin |
| [HBASE-17194](https://issues.apache.org/jira/browse/HBASE-17194) | Assign the new region to the idle server after splitting |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17243](https://issues.apache.org/jira/browse/HBASE-17243) | Reuse CompactionPartitionId and avoid creating MobFileName in PartitionedMobCompactor to avoid unnecessary new objects |  Minor | mob | huaxiang sun | huaxiang sun |
| [HBASE-14882](https://issues.apache.org/jira/browse/HBASE-14882) | Provide a Put API that adds the provided family, qualifier, value without copying |  Major | . | Jerry He | Xiang Li |
| [HBASE-17245](https://issues.apache.org/jira/browse/HBASE-17245) | Replace HTableDescriptor#htd.getColumnFamilies().length with a low-cost implementation |  Minor | . | huaxiang sun | huaxiang sun |
| [HBASE-17239](https://issues.apache.org/jira/browse/HBASE-17239) | Add UnsafeByteOperations#wrap(ByteInput, int offset, int len) API |  Major | Protobufs | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16700](https://issues.apache.org/jira/browse/HBASE-16700) | Allow for coprocessor whitelisting |  Minor | Coprocessors | Clay B. | Clay B. |
| [HBASE-17207](https://issues.apache.org/jira/browse/HBASE-17207) | Arrays.asList() with too few arguments |  Trivial | . | John Leach | John Leach |
| [HBASE-17241](https://issues.apache.org/jira/browse/HBASE-17241) | Avoid compacting already compacted  mob files with \_del files |  Major | mob | huaxiang sun | huaxiang sun |
| [HBASE-17276](https://issues.apache.org/jira/browse/HBASE-17276) | Reduce log spam from WrongRegionException in large multi()'s |  Minor | regionserver | Josh Elser | Josh Elser |
| [HBASE-17296](https://issues.apache.org/jira/browse/HBASE-17296) | Provide per peer throttling for replication |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17298](https://issues.apache.org/jira/browse/HBASE-17298) | remove unused code in HRegion#doMiniBatchMutation |  Minor | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-17318](https://issues.apache.org/jira/browse/HBASE-17318) | Increment does not add new column if the increment amount is zero at first time writing |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17331](https://issues.apache.org/jira/browse/HBASE-17331) | Avoid busy waiting in ThrottledInputStream |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17332](https://issues.apache.org/jira/browse/HBASE-17332) | Replace HashMap to Array for DataBlockEncoding.idToEncoding |  Major | . | binlijin | binlijin |
| [HBASE-17292](https://issues.apache.org/jira/browse/HBASE-17292) | Add observer notification before bulk loaded hfile is moved to region directory |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15924](https://issues.apache.org/jira/browse/HBASE-15924) | Enhance hbase services autorestart capability to hbase-daemon.sh |  Major | . | Loknath Priyatham Teja Singamsetty | Loknath Priyatham Teja Singamsetty |
| [HBASE-17348](https://issues.apache.org/jira/browse/HBASE-17348) | Remove the unused hbase.replication from javadoc/comment/book completely |  Trivial | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | Limit total buffered size for all replication sources |  Major | Replication | Phil Yang | Phil Yang |
| [HBASE-17291](https://issues.apache.org/jira/browse/HBASE-17291) | Remove ImmutableSegment#getKeyValueScanner |  Major | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17408](https://issues.apache.org/jira/browse/HBASE-17408) | Introduce per request limit by number of mutations |  Major | . | Ted Yu | Chia-Ping Tsai |
| [HBASE-17488](https://issues.apache.org/jira/browse/HBASE-17488) | WALEdit should be lazily instantiated |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-10699](https://issues.apache.org/jira/browse/HBASE-10699) | Optimize some code; set capacity on arraylist when possible; use isEmpty; reduce allocations |  Major | . | @deprecated Yi Deng | Jan Hentschel |
| [HBASE-17404](https://issues.apache.org/jira/browse/HBASE-17404) | Replace explicit type with diamond operator in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-16698](https://issues.apache.org/jira/browse/HBASE-16698) | Performance issue: handlers stuck waiting for CountDownLatch inside WALKey#getWriteEntry under high writing workload |  Major | Performance | Yu Li | Yu Li |
| [HBASE-17462](https://issues.apache.org/jira/browse/HBASE-17462) | Use sliding window for read/write request costs in StochasticLoadBalancer |  Major | . | Ted Yu | Tim Brown |
| [HBASE-17515](https://issues.apache.org/jira/browse/HBASE-17515) | Reduce memory footprint of RegionLoads kept by StochasticLoadBalancer |  Major | . | Ted Yu | Tim Brown |
| [HBASE-17563](https://issues.apache.org/jira/browse/HBASE-17563) | Foreach and switch in RootDocProcessor and StabilityOptions |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-17555](https://issues.apache.org/jira/browse/HBASE-17555) | Change calls to deprecated getHBaseAdmin to getAdmin |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-17569](https://issues.apache.org/jira/browse/HBASE-17569) | HBase-Procedure module need to support mvn clean test -PskipProcedureTests to skip unit test |  Minor | proc-v2 | Yi Liang | Yi Liang |
| [HBASE-17543](https://issues.apache.org/jira/browse/HBASE-17543) | Create additional ReplicationEndpoint WALEntryFilters by configuration |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-17552](https://issues.apache.org/jira/browse/HBASE-17552) | Update developer section in hbase book |  Major | . | Appy | Appy |
| [HBASE-17588](https://issues.apache.org/jira/browse/HBASE-17588) | Remove unused imports brought in by HBASE-17437 |  Trivial | . | Zach York | Zach York |
| [HBASE-17592](https://issues.apache.org/jira/browse/HBASE-17592) | Fix typo in IPCUtil and RpcConnection |  Trivial | . | Attila Sasvari | Attila Sasvari |
| [HBASE-17437](https://issues.apache.org/jira/browse/HBASE-17437) | Support specifying a WAL directory outside of the root directory |  Major | Filesystem Integration, wal | Yishan Yang | Zach York |
| [HBASE-17613](https://issues.apache.org/jira/browse/HBASE-17613) | avoid copy of family when initializing the FSWALEntry |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17280](https://issues.apache.org/jira/browse/HBASE-17280) | Add mechanism to control hbase cleaner behavior |  Minor | Client, hbase, shell | Ajay Jadhav | Ajay Jadhav |
| [HBASE-17605](https://issues.apache.org/jira/browse/HBASE-17605) | Refactor procedure framework code |  Major | proc-v2 | Appy | Appy |
| [HBASE-17637](https://issues.apache.org/jira/browse/HBASE-17637) | Update progress more frequently in IntegrationTestBigLinkedList.Generator.persist |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17627](https://issues.apache.org/jira/browse/HBASE-17627) | Active workers metric for thrift |  Major | Thrift | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17172](https://issues.apache.org/jira/browse/HBASE-17172) | Optimize mob compaction with \_del files |  Major | mob | huaxiang sun | huaxiang sun |
| [HBASE-13718](https://issues.apache.org/jira/browse/HBASE-13718) | Add a pretty printed table description to the table detail page of HBase's master |  Minor | hbase | Joao Girao | Joao Girao |
| [HBASE-17676](https://issues.apache.org/jira/browse/HBASE-17676) | Get class name once for all in AbstractFSWAL |  Major | Performance | Yu Li | Yu Li |
| [HBASE-17654](https://issues.apache.org/jira/browse/HBASE-17654) | RSGroup code refactoring |  Major | rsgroup | Appy | Appy |
| [HBASE-17634](https://issues.apache.org/jira/browse/HBASE-17634) | Clean up the usage of Result.isPartial |  Major | scan | Duo Zhang | Jan Hentschel |
| [HBASE-17689](https://issues.apache.org/jira/browse/HBASE-17689) | Add support for table.existsAll in thrift2 THBaseservice |  Major | Thrift | Yechao Chen | Yechao Chen |
| [HBASE-16188](https://issues.apache.org/jira/browse/HBASE-16188) | Add EventCounter information to log4j properties file |  Minor | . | Lars George | Gopi Krishnan Nambiar |
| [HBASE-17690](https://issues.apache.org/jira/browse/HBASE-17690) | Clean up MOB code |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-17734](https://issues.apache.org/jira/browse/HBASE-17734) | Guard against possibly copying the qualifier in the ScanDeleteTracker |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17532](https://issues.apache.org/jira/browse/HBASE-17532) | Replace explicit type with diamond operator |  Trivial | build | Jan Hentschel | Jan Hentschel |
| [HBASE-15941](https://issues.apache.org/jira/browse/HBASE-15941) | HBCK repair should not unsplit healthy splitted region |  Major | hbck | Stephen Yuan Jiang | Esteban Gutierrez |
| [HBASE-16977](https://issues.apache.org/jira/browse/HBASE-16977) | VerifyReplication should log a printable representation of the row keys |  Minor | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17731](https://issues.apache.org/jira/browse/HBASE-17731) | Fractional latency reporting in MultiThreadedAction |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-15429](https://issues.apache.org/jira/browse/HBASE-15429) | Add a split policy for busy regions |  Major | regionserver | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17747](https://issues.apache.org/jira/browse/HBASE-17747) | Support both weak and soft object pool |  Major | . | Yu Li | Yu Li |
| [HBASE-15339](https://issues.apache.org/jira/browse/HBASE-15339) | Improve DateTieredCompactionPolicy |  Major | Compaction | Duo Zhang |  |
| [HBASE-17778](https://issues.apache.org/jira/browse/HBASE-17778) | Remove the testing code in the AsyncRequestFutureImpl |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17815](https://issues.apache.org/jira/browse/HBASE-17815) | Remove the unused field in PrefixTreeSeeker |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17623](https://issues.apache.org/jira/browse/HBASE-17623) | Reuse the bytes array when building the hfile block |  Major | HFile | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17831](https://issues.apache.org/jira/browse/HBASE-17831) | Support small scan in thrift2 |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17215](https://issues.apache.org/jira/browse/HBASE-17215) | Separate small/large file delete threads in HFileCleaner to accelerate archived hfile cleanup speed |  Major | . | Yu Li | Yu Li |
| [HBASE-17854](https://issues.apache.org/jira/browse/HBASE-17854) | Use StealJobQueue in HFileCleaner after HBASE-17215 |  Major | . | Yu Li | Yu Li |
| [HBASE-16969](https://issues.apache.org/jira/browse/HBASE-16969) | RegionCoprocessorServiceExec should override the toString() for debugging |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17836](https://issues.apache.org/jira/browse/HBASE-17836) | CellUtil#estimatedSerializedSizeOf is slow when input is ByteBufferCell |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16469](https://issues.apache.org/jira/browse/HBASE-16469) | Several log refactoring/improvement suggestions |  Major | Operability | Nemo Chen | Nemo Chen |
| [HBASE-17888](https://issues.apache.org/jira/browse/HBASE-17888) | Add generic methods for updating metrics on start and end of a procedure execution |  Major | proc-v2 | Umesh Agashe | Umesh Agashe |
| [HBASE-17912](https://issues.apache.org/jira/browse/HBASE-17912) | Avoid major compactions on region server startup |  Major | Compaction | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-17944](https://issues.apache.org/jira/browse/HBASE-17944) | Removed unused JDK version parsing from ClassSize. |  Minor | build | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [HBASE-17514](https://issues.apache.org/jira/browse/HBASE-17514) | Warn when Thrift Server 1 is configured for proxy users but not the HTTP transport |  Minor | Thrift, Usability | Sean Busbey | lv zehui |
| [HBASE-17448](https://issues.apache.org/jira/browse/HBASE-17448) | Export metrics from RecoverableZooKeeper |  Major | Zookeeper | Andrew Purtell | Chinmay Kulkarni |
| [HBASE-9899](https://issues.apache.org/jira/browse/HBASE-9899) | for idempotent operation dups, return the result instead of throwing conflict exception |  Major | . | Sergey Shelukhin | Guanghao Zhang |
| [HBASE-17877](https://issues.apache.org/jira/browse/HBASE-17877) | Improve HBase's byte[] comparator |  Major | util | Lars Hofhansl | Vikas Vishwakarma |
| [HBASE-17962](https://issues.apache.org/jira/browse/HBASE-17962) | Improve documentation on Rest interface |  Trivial | documentation, REST | Niels Basjes | Niels Basjes |
| [HBASE-17835](https://issues.apache.org/jira/browse/HBASE-17835) | Spelling mistakes in the Java source |  Trivial | documentation | Qilin Cao | Qilin Cao |
| [HBASE-17817](https://issues.apache.org/jira/browse/HBASE-17817) | Make Regionservers log which tables it removed coprocessors from when aborting |  Major | Coprocessors, regionserver | Steen Manniche | Steen Manniche |
| [HBASE-8486](https://issues.apache.org/jira/browse/HBASE-8486) | IS\_ROOT isnt needed in HTableDescriptor. |  Minor | . | Elliott Clark | Chia-Ping Tsai |
| [HBASE-17875](https://issues.apache.org/jira/browse/HBASE-17875) | Document why objects over 10MB are not well-suited for hbase |  Major | documentation, mob | stack | Jingcheng Du |
| [HBASE-17979](https://issues.apache.org/jira/browse/HBASE-17979) | HBase Shell 'list' Command Help Doc Improvements |  Minor | shell | Hugo Louro | Hugo Louro |
| [HBASE-17973](https://issues.apache.org/jira/browse/HBASE-17973) | Create shell command to identify regions with poor locality |  Major | shell | Josh Elser | Josh Elser |
| [HBASE-12870](https://issues.apache.org/jira/browse/HBASE-12870) | "Major compaction triggered" and "Skipping major compaction" messages lack the region information |  Major | Compaction | Hari Krishna Dara | Chinmay Kulkarni |
| [HBASE-16466](https://issues.apache.org/jira/browse/HBASE-16466) | HBase snapshots support in VerifyReplication tool to reduce load on live HBase cluster with large tables |  Major | hbase | Sukumar Maddineni | Maddineni Sukumar |
| [HBASE-17990](https://issues.apache.org/jira/browse/HBASE-17990) | Refactor TestFSUtils to use Before |  Trivial | . | Zach York | Zach York |
| [HBASE-18007](https://issues.apache.org/jira/browse/HBASE-18007) | Clean up rest module code |  Trivial | . | Qilin Cao | Qilin Cao |
| [HBASE-18015](https://issues.apache.org/jira/browse/HBASE-18015) | Storage class aware block placement for procedure v2 WALs |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17924](https://issues.apache.org/jira/browse/HBASE-17924) | Consider sorting the row order when processing multi() ops before taking rowlocks |  Major | . | Andrew Purtell | Allan Yang |
| [HBASE-14925](https://issues.apache.org/jira/browse/HBASE-14925) | Develop HBase shell command/tool to list table's region info through command line |  Major | shell | Romil Choksi | Karan Mehta |
| [HBASE-18017](https://issues.apache.org/jira/browse/HBASE-18017) | Reduce frequency of setStoragePolicy failure warnings |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18021](https://issues.apache.org/jira/browse/HBASE-18021) | Add more info in timed out RetriesExhaustedException for read replica client get processing, |  Minor | Client | huaxiang sun | huaxiang sun |
| [HBASE-17343](https://issues.apache.org/jira/browse/HBASE-17343) | Make Compacting Memstore default in 2.0 with BASIC as the default type |  Blocker | regionserver | ramkrishna.s.vasudevan | Anastasia Braginsky |
| [HBASE-18043](https://issues.apache.org/jira/browse/HBASE-18043) | Institute a hard limit for individual cell size that cannot be overridden by clients |  Major | IPC/RPC, regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-17910](https://issues.apache.org/jira/browse/HBASE-17910) | Use separated StoreFileReader for streaming read |  Major | regionserver, scan, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-18019](https://issues.apache.org/jira/browse/HBASE-18019) | Close redundant memstore scanners |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18067](https://issues.apache.org/jira/browse/HBASE-18067) | Support a default converter for data read shell commands |  Minor | shell | Josh Elser | Josh Elser |
| [HBASE-18075](https://issues.apache.org/jira/browse/HBASE-18075) | Support namespaces and tables with non-latin alphabetical characters |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-18094](https://issues.apache.org/jira/browse/HBASE-18094) | Display the return value of the command append |  Major | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18001](https://issues.apache.org/jira/browse/HBASE-18001) | Extend the "count" shell command to support specified conditions |  Minor | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18101](https://issues.apache.org/jira/browse/HBASE-18101) | Fix type mismatch on container access in QuotaCache#chore |  Trivial | . | Amit Patel | Amit Patel |
| [HBASE-17777](https://issues.apache.org/jira/browse/HBASE-17777) | TestMemstoreLAB#testLABThreading runs too long for a small test |  Minor | test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17959](https://issues.apache.org/jira/browse/HBASE-17959) | Canary timeout should be configurable on a per-table basis |  Minor | canary | Andrew Purtell | Chinmay Kulkarni |
| [HBASE-18022](https://issues.apache.org/jira/browse/HBASE-18022) | Refine the error message issued with TableNotFoundException when expected table is not the same as the one fetched from meta |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-17110](https://issues.apache.org/jira/browse/HBASE-17110) | Improve SimpleLoadBalancer to always take server-level balance into account |  Major | Balancer | Charlie Qiangeng Xu | Charlie Qiangeng Xu |
| [HBASE-15756](https://issues.apache.org/jira/browse/HBASE-15756) | Pluggable RpcServer |  Critical | Performance, rpc | binlijin | binlijin |
| [HBASE-13197](https://issues.apache.org/jira/browse/HBASE-13197) | Connection API cleanup |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11707](https://issues.apache.org/jira/browse/HBASE-11707) | Using Map instead of list in FailedServers of RpcClient |  Minor | Client | Liu Shaohui | Liu Shaohui |
| [HBASE-15062](https://issues.apache.org/jira/browse/HBASE-15062) | IntegrationTestMTTR conditionally run some tests |  Minor | integration tests | Samir Ahmic | Samir Ahmic |
| [HBASE-16730](https://issues.apache.org/jira/browse/HBASE-16730) | Exclude junit as a transitive dependency from hadoop-common |  Trivial | hbase | Nils Larsgård | Jan Hentschel |
| [HBASE-18004](https://issues.apache.org/jira/browse/HBASE-18004) | getRegionLocations  needs to be called once in ScannerCallableWithReplicas#call() |  Minor | Client | huaxiang sun | huaxiang sun |
| [HBASE-16312](https://issues.apache.org/jira/browse/HBASE-16312) | update jquery version |  Critical | dependencies, UI | Sean Busbey | Peter Somogyi |
| [HBASE-15816](https://issues.apache.org/jira/browse/HBASE-15816) | Provide client with ability to set priority on Operations |  Major | . | churro morales | churro morales |
| [HBASE-18023](https://issues.apache.org/jira/browse/HBASE-18023) | Log multi-\* requests for more than threshold number of rows |  Minor | regionserver | Clay B. | David Harju |
| [HBASE-18248](https://issues.apache.org/jira/browse/HBASE-18248) | Warn if monitored RPC task has been tied up beyond a configurable threshold |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18387](https://issues.apache.org/jira/browse/HBASE-18387) | [Thrift] Make principal configurable in DemoClient.java |  Minor | . | Lars George | Tamas Penzes |
| [HBASE-15511](https://issues.apache.org/jira/browse/HBASE-15511) | ClusterStatus should be able to return responses by scope |  Major | . | Esteban Gutierrez | Reid Chan |
| [HBASE-18522](https://issues.apache.org/jira/browse/HBASE-18522) | Add RowMutations support to Batch |  Major | . | Jerry He | Jerry He |
| [HBASE-2631](https://issues.apache.org/jira/browse/HBASE-2631) | Decide between "InMB" and "MB" as suffix for field names in ClusterStatus objects |  Minor | . | Jeff Hammerbacher | Deon Huang |
| [HBASE-18504](https://issues.apache.org/jira/browse/HBASE-18504) | Add documentation for WAL compression |  Minor | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-18581](https://issues.apache.org/jira/browse/HBASE-18581) | Remove dead code and some tidy up in BaseLoadBalancer |  Minor | Balancer | Umesh Agashe | Umesh Agashe |
| [HBASE-18631](https://issues.apache.org/jira/browse/HBASE-18631) | Allow configuration of ChaosMonkey properties via hbase-site |  Minor | integration tests | Josh Elser | Josh Elser |
| [HBASE-18519](https://issues.apache.org/jira/browse/HBASE-18519) | Use builder pattern to create cell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18674](https://issues.apache.org/jira/browse/HBASE-18674) | upgrade hbase to commons-lang3 |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18538](https://issues.apache.org/jira/browse/HBASE-18538) | deduplicate copies of jquery files |  Minor | build | Tamas Penzes | Tamas Penzes |
| [HBASE-18609](https://issues.apache.org/jira/browse/HBASE-18609) | Apply ClusterStatus#getClusterStatus(EnumSet\<Option\>) in code base |  Major | . | Chia-Ping Tsai | Reid Chan |
| [HBASE-18478](https://issues.apache.org/jira/browse/HBASE-18478) | Allow users to remove RegionFinder from LoadBalancer calculations if no locality possible |  Major | Balancer | Zach York | Zach York |
| [HBASE-11462](https://issues.apache.org/jira/browse/HBASE-11462) | MetaTableAccessor shouldn't use ZooKeeeper |  Major | Client, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-18436](https://issues.apache.org/jira/browse/HBASE-18436) | Add client-side hedged read metrics |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-18559](https://issues.apache.org/jira/browse/HBASE-18559) | Add histogram to MetricsConnection to track concurrent calls per server |  Minor | Client | Robert Yokota | Robert Yokota |
| [HBASE-16894](https://issues.apache.org/jira/browse/HBASE-16894) | Create more than 1 split per region, generalize HBASE-12590 |  Major | . | Enis Soztutar | Yi Liang |
| [HBASE-16010](https://issues.apache.org/jira/browse/HBASE-16010) | Put draining function through Admin API |  Minor | . | Jerry He | Matt Warhaftig |
| [HBASE-18824](https://issues.apache.org/jira/browse/HBASE-18824) | Add meaningful comment to HConstants.LATEST\_TIMESTAMP to explain why it is MAX\_VALUE |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-19091](https://issues.apache.org/jira/browse/HBASE-19091) | Code annotation wrote "BinaryComparator" instead of "LongComparator" |  Minor | Client | Qilin Cao | Qilin Cao |
| [HBASE-18602](https://issues.apache.org/jira/browse/HBASE-18602) | rsgroup cleanup unassign code |  Minor | rsgroup | Wang, Xinglong | Wang, Xinglong |
| [HBASE-19140](https://issues.apache.org/jira/browse/HBASE-19140) | hbase-cleanup.sh uses deprecated call to remove files in hdfs |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-19227](https://issues.apache.org/jira/browse/HBASE-19227) | Nightly jobs should archive JVM dumpstream files |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19290](https://issues.apache.org/jira/browse/HBASE-19290) | Reduce zk request when doing split log |  Major | . | binlijin | binlijin |
| [HBASE-19448](https://issues.apache.org/jira/browse/HBASE-19448) | Replace StringBuffer with StringBuilder for hbase-server |  Trivial | hbase | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19531](https://issues.apache.org/jira/browse/HBASE-19531) | Remove needless volatile declaration |  Trivial | . | Chia-Ping Tsai | Yun-Chi Shih |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-9049](https://issues.apache.org/jira/browse/HBASE-9049) | Generalize ServerCallable creation to support custom callables |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-9745](https://issues.apache.org/jira/browse/HBASE-9745) | Append HBASE\_CLASSPATH to end of Java classpath and use another env var for prefix |  Major | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-11435](https://issues.apache.org/jira/browse/HBASE-11435) | Visibility labelled cells fail to getting replicated |  Critical | Replication, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11439](https://issues.apache.org/jira/browse/HBASE-11439) | StripeCompaction may not obey the OffPeak rule to compaction |  Minor | Compaction | Victor Xu | Victor Xu |
| [HBASE-11413](https://issues.apache.org/jira/browse/HBASE-11413) | [findbugs] RV: Negating the result of compareTo()/compare() |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-11399](https://issues.apache.org/jira/browse/HBASE-11399) | Improve Quickstart chapter and move Pseudo-distributed and distributed to it |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11449](https://issues.apache.org/jira/browse/HBASE-11449) | IntegrationTestIngestWithACL fails to use different users after HBASE-10810 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11463](https://issues.apache.org/jira/browse/HBASE-11463) | (findbugs) HE: Class defines equals() and uses Object.hashCode() |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-11422](https://issues.apache.org/jira/browse/HBASE-11422) | Specification of scope is missing for certain Hadoop dependencies |  Major | . | Ted Yu | Konstantin Boudnik |
| [HBASE-11465](https://issues.apache.org/jira/browse/HBASE-11465) | [VisibilityController] Reserved tags check not happening for Append/Increment |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11458](https://issues.apache.org/jira/browse/HBASE-11458) | NPEs if RegionServer cannot initialize |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11481](https://issues.apache.org/jira/browse/HBASE-11481) | TableSnapshotInputFormat javadoc wrongly claims HBase "enforces security" |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11477](https://issues.apache.org/jira/browse/HBASE-11477) | book.xml has Docbook validity issues (again) |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-4931](https://issues.apache.org/jira/browse/HBASE-4931) | CopyTable instructions could be improved. |  Major | documentation, mapreduce | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-11475](https://issues.apache.org/jira/browse/HBASE-11475) | Distributed log replay should also replay compaction events |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11496](https://issues.apache.org/jira/browse/HBASE-11496) | HBASE-9745 broke cygwin CLASSPATH translation |  Minor | . | Dave Latham | Dave Latham |
| [HBASE-11423](https://issues.apache.org/jira/browse/HBASE-11423) | Visibility label and per cell ACL feature not working with HTable#mutateRow() and MultiRowMutationEndpoint |  Blocker | Coprocessors, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11487](https://issues.apache.org/jira/browse/HBASE-11487) | ScanResponse carries non-zero cellblock for CloseScanRequest (ScanRequest with close\_scanner = true) |  Minor | IPC/RPC, regionserver | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11460](https://issues.apache.org/jira/browse/HBASE-11460) | Deadlock in HMaster on masterAndZKLock in HConnectionManager |  Critical | master | Andrey Stepachev | Ted Yu |
| [HBASE-11488](https://issues.apache.org/jira/browse/HBASE-11488) | cancelTasks in SubprocedurePool can hang during task error |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-11118](https://issues.apache.org/jira/browse/HBASE-11118) | non environment variable solution for "IllegalAccessError: class com.google.protobuf.ZeroCopyLiteralByteString cannot access its superclass com.google.protobuf.LiteralByteString" |  Blocker | mapreduce | André Kelpe | stack |
| [HBASE-11500](https://issues.apache.org/jira/browse/HBASE-11500) | Possible null pointer dereference of regionLocation in ReversedScannerCallable |  Minor | Client | Mike Drob | Mike Drob |
| [HBASE-11499](https://issues.apache.org/jira/browse/HBASE-11499) | AsyncProcess.buildDetailedErrorMessage concatenates strings using + in a loop |  Trivial | Client | Mike Drob | Mike Drob |
| [HBASE-8473](https://issues.apache.org/jira/browse/HBASE-8473) | add note to ref guide about snapshots and ec2 reverse dns requirements. |  Major | documentation, snapshots | Jonathan Hsieh | Misty Stanley-Jones |
| [HBASE-11493](https://issues.apache.org/jira/browse/HBASE-11493) | Autorestart option is not working because of stale znode  "shutdown" |  Major | . | Nishan Shetty | nijel |
| [HBASE-11506](https://issues.apache.org/jira/browse/HBASE-11506) | IntegrationTestWithCellVisibilityLoadAndVerify allow User to be passed as arg |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11505](https://issues.apache.org/jira/browse/HBASE-11505) | 'snapshot' shell command shadows 'snapshot' shell when 'help' is invoked |  Trivial | shell | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11510](https://issues.apache.org/jira/browse/HBASE-11510) | Visibility serialization format tag gets duplicated in Append/Increment'ed cells |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11509](https://issues.apache.org/jira/browse/HBASE-11509) | Forward port HBASE-11039 to trunk and branch-1 after HBASE-11489 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11442](https://issues.apache.org/jira/browse/HBASE-11442) | ReplicationSourceManager doesn't cleanup the queues for recovered sources |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11514](https://issues.apache.org/jira/browse/HBASE-11514) | Fix findbugs warnings in blockcache |  Major | . | stack | stack |
| [HBASE-11489](https://issues.apache.org/jira/browse/HBASE-11489) | ClassNotFoundException while running IT tests in trunk using 'mvn verify' |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11502](https://issues.apache.org/jira/browse/HBASE-11502) | Track down broken images in Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11521](https://issues.apache.org/jira/browse/HBASE-11521) | Modify pom.xml to copy the images/ and css/ directories to the right location for the Ref Guide to see them correctly |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11523](https://issues.apache.org/jira/browse/HBASE-11523) | JSON serialization of PE Options is broke |  Major | . | stack | stack |
| [HBASE-11517](https://issues.apache.org/jira/browse/HBASE-11517) | TestReplicaWithCluster turns zombie |  Major | . | stack | Mikhail Antonov |
| [HBASE-11529](https://issues.apache.org/jira/browse/HBASE-11529) | Images and CSS still don't work properly on both html and html-single book |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11530](https://issues.apache.org/jira/browse/HBASE-11530) | RegionStates adds regions to wrong servers |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11518](https://issues.apache.org/jira/browse/HBASE-11518) | doc update for how to create non-shared HConnection |  Minor | documentation | Qiang Tian | Qiang Tian |
| [HBASE-11525](https://issues.apache.org/jira/browse/HBASE-11525) | Region server holding in region states is out of sync with meta |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11534](https://issues.apache.org/jira/browse/HBASE-11534) | Remove broken JAVA\_HOME autodetection in hbase-config.sh |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-11537](https://issues.apache.org/jira/browse/HBASE-11537) | Avoid synchronization on instances of ConcurrentMap |  Minor | . | Mike Drob | Mike Drob |
| [HBASE-11545](https://issues.apache.org/jira/browse/HBASE-11545) | mapred.TableSnapshotInputFormat is missing InterfaceAudience annotation |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11541](https://issues.apache.org/jira/browse/HBASE-11541) | Wrong result when scaning meta with startRow |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11492](https://issues.apache.org/jira/browse/HBASE-11492) | Hadoop configuration overrides some ipc parameters including tcpNoDelay |  Critical | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11561](https://issues.apache.org/jira/browse/HBASE-11561) | deprecate ImmutableBytesWritable.getSize and replace with getLength |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-11064](https://issues.apache.org/jira/browse/HBASE-11064) | Odd behaviors of TableName for empty namespace |  Trivial | . | Hiroshi Ikeda | Rekha Joshi |
| [HBASE-11555](https://issues.apache.org/jira/browse/HBASE-11555) | TableSnapshotRegionSplit should be public |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11551](https://issues.apache.org/jira/browse/HBASE-11551) | BucketCache$WriterThread.run() doesn't handle exceptions correctly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11565](https://issues.apache.org/jira/browse/HBASE-11565) | Stale connection could stay for a while |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11564](https://issues.apache.org/jira/browse/HBASE-11564) | Improve cancellation management in the rpc layer |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11575](https://issues.apache.org/jira/browse/HBASE-11575) | Pseudo distributed mode does not work as documented |  Critical | . | Enis Soztutar | Jimmy Xiang |
| [HBASE-11579](https://issues.apache.org/jira/browse/HBASE-11579) | CopyTable should check endtime value only if != 0 |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-11586](https://issues.apache.org/jira/browse/HBASE-11586) | HFile's HDFS op latency sampling code is not used |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11531](https://issues.apache.org/jira/browse/HBASE-11531) | RegionStates for regions under region-in-transition znode are not updated on startup |  Major | Region Assignment | Virag Kothari | Jimmy Xiang |
| [HBASE-11588](https://issues.apache.org/jira/browse/HBASE-11588) | RegionServerMetricsWrapperRunnable misused the 'period' parameter |  Minor | metrics | Victor Xu | Victor Xu |
| [HBASE-11560](https://issues.apache.org/jira/browse/HBASE-11560) | hbase.regionserver.global.memstore.size is documented twice |  Major | . | Jean-Marc Spaggiari | Misty Stanley-Jones |
| [HBASE-11522](https://issues.apache.org/jira/browse/HBASE-11522) | Move Replication information into the Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11316](https://issues.apache.org/jira/browse/HBASE-11316) | Expand info about compactions beyond HBASE-11120 |  Major | Compaction, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11540](https://issues.apache.org/jira/browse/HBASE-11540) | Document HBASE-11474 |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11593](https://issues.apache.org/jira/browse/HBASE-11593) | TestCacheConfig failing consistently in precommit builds |  Major | BlockCache | Andrew Purtell | stack |
| [HBASE-11609](https://issues.apache.org/jira/browse/HBASE-11609) | LoadIncrementalHFiles fails if the namespace is specified |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11558](https://issues.apache.org/jira/browse/HBASE-11558) | Caching set on Scan object gets lost when using TableMapReduceUtil in 0.95+ |  Major | mapreduce, Scanners | Ishan Chhabra | Ishan Chhabra |
| [HBASE-11539](https://issues.apache.org/jira/browse/HBASE-11539) | Expand info about contributing to and building documentation |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11594](https://issues.apache.org/jira/browse/HBASE-11594) | Unhandled NoNodeException in distributed log replay mode |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11648](https://issues.apache.org/jira/browse/HBASE-11648) | Typo of config: hbase.hstore.compaction.ratio in book.xml |  Minor | Compaction | Liu Shaohui | Liu Shaohui |
| [HBASE-11620](https://issues.apache.org/jira/browse/HBASE-11620) | Record the class name of Writer in WAL header so that only proper Reader can open the WAL file |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-11632](https://issues.apache.org/jira/browse/HBASE-11632) | Region split needs to clear force split flag at the end of SplitRequest run |  Minor | regionserver | Jerry He | Jerry He |
| [HBASE-11297](https://issues.apache.org/jira/browse/HBASE-11297) | Remove some synchros in the rpcServer responder |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11640](https://issues.apache.org/jira/browse/HBASE-11640) | Add syntax highlighting support to HBase Ref Guide programlistings |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11662](https://issues.apache.org/jira/browse/HBASE-11662) | Launching shell with long-form --debug fails |  Major | shell | Sean Busbey | Sean Busbey |
| [HBASE-11668](https://issues.apache.org/jira/browse/HBASE-11668) | Re-add HBASE\_LIBRARY\_PATH to bin/hbase |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11671](https://issues.apache.org/jira/browse/HBASE-11671) | TestEndToEndSplitTransaction fails on master |  Major | Region Assignment, test | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11535](https://issues.apache.org/jira/browse/HBASE-11535) | ReplicationPeer map is not thread safe |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11603](https://issues.apache.org/jira/browse/HBASE-11603) | Apply version of HADOOP-8027 to our JMXJsonServlet |  Major | . | stack | stack |
| [HBASE-10205](https://issues.apache.org/jira/browse/HBASE-10205) | ConcurrentModificationException in BucketAllocator |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-11629](https://issues.apache.org/jira/browse/HBASE-11629) | Operational concerns for Replication should call out ZooKeeper |  Major | documentation, Replication | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11661](https://issues.apache.org/jira/browse/HBASE-11661) | Quickstart chapter claims standalone mode has multiple processes |  Minor | documentation | Sean Busbey | Sean Busbey |
| [HBASE-11333](https://issues.apache.org/jira/browse/HBASE-11333) | Remove deprecated class MetaMigrationConvertingToPB |  Trivial | master | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11678](https://issues.apache.org/jira/browse/HBASE-11678) | BucketCache ramCache fills heap after running a few hours |  Critical | BlockCache | stack | stack |
| [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | Piped commands to hbase shell should return non-zero if shell command failed. |  Major | shell | Jonathan Hsieh | Sean Busbey |
| [HBASE-11659](https://issues.apache.org/jira/browse/HBASE-11659) | Region state RPC call is not idempotent |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11705](https://issues.apache.org/jira/browse/HBASE-11705) | callQueueSize should be decremented in a fail-fast scenario |  Critical | IPC/RPC | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11589](https://issues.apache.org/jira/browse/HBASE-11589) | AccessControlException should be a not retriable exception |  Major | IPC/RPC | Kashif | Qiang Tian |
| [HBASE-11527](https://issues.apache.org/jira/browse/HBASE-11527) | Cluster free memory limit check should consider L2 block cache size also when L2 cache is onheap. |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11716](https://issues.apache.org/jira/browse/HBASE-11716) | LoadTestDataGeneratorWithVisibilityLabels should handle Delete mutations |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11718](https://issues.apache.org/jira/browse/HBASE-11718) | Remove some logs in RpcClient.java |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11719](https://issues.apache.org/jira/browse/HBASE-11719) | Remove some unused paths in AsyncClient |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11709](https://issues.apache.org/jira/browse/HBASE-11709) | TestMasterShutdown can fail sometime |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11703](https://issues.apache.org/jira/browse/HBASE-11703) | Meta region state could be corrupted |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11725](https://issues.apache.org/jira/browse/HBASE-11725) | Backport failover checking change to 1.0 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11727](https://issues.apache.org/jira/browse/HBASE-11727) | Assignment wait time error in case of ServerNotRunningYetException |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11476](https://issues.apache.org/jira/browse/HBASE-11476) | Expand 'Conceptual View' section of Data Model chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11550](https://issues.apache.org/jira/browse/HBASE-11550) | Custom value for BUCKET\_CACHE\_BUCKETS\_KEY should be sorted |  Trivial | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11687](https://issues.apache.org/jira/browse/HBASE-11687) | No need to abort on postOpenDeployTasks exception if region opening is cancelled |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11717](https://issues.apache.org/jira/browse/HBASE-11717) | Remove unused config 'hbase.offheapcache.percentage' from hbase-default.xml and book |  Minor | documentation | Anoop Sam John | Anoop Sam John |
| [HBASE-11745](https://issues.apache.org/jira/browse/HBASE-11745) | FilterAllFilter should return ReturnCode.SKIP |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11627](https://issues.apache.org/jira/browse/HBASE-11627) | RegionSplitter's rollingSplit terminated with "/ by zero", and the \_balancedSplit file was not deleted properly |  Major | Admin, util | louis hust | Sean Busbey |
| [HBASE-11708](https://issues.apache.org/jira/browse/HBASE-11708) | RegionSplitter incorrectly calculates splitcount |  Minor | Admin, util | Sean Busbey | louis hust |
| [HBASE-11732](https://issues.apache.org/jira/browse/HBASE-11732) | Should not preemptively offline a region |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11755](https://issues.apache.org/jira/browse/HBASE-11755) | VisibilityController returns the wrong value for preBalanceSwitch() |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11733](https://issues.apache.org/jira/browse/HBASE-11733) | Avoid copy-paste in Master/Region CoprocessorHost |  Trivial | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11728](https://issues.apache.org/jira/browse/HBASE-11728) | Data loss while scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | Scanners | wuchengzhi | ramkrishna.s.vasudevan |
| [HBASE-11770](https://issues.apache.org/jira/browse/HBASE-11770) | TestBlockCacheReporting.testBucketCache is not stable |  Major | test | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11773](https://issues.apache.org/jira/browse/HBASE-11773) | Wrong field used for protobuf construction in RegionStates. |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11744](https://issues.apache.org/jira/browse/HBASE-11744) | RpcServer code should not use a collection from netty internal |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11789](https://issues.apache.org/jira/browse/HBASE-11789) | LoadIncrementalHFiles is not picking up the -D option |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11802](https://issues.apache.org/jira/browse/HBASE-11802) | Scan copy constructor doesn't copy reversed member variable |  Minor | . | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-11617](https://issues.apache.org/jira/browse/HBASE-11617) | incorrect AgeOfLastAppliedOp and AgeOfLastShippedOp in replication Metrics when no new replication OP |  Minor | Replication | Demai Ni | Demai Ni |
| [HBASE-11794](https://issues.apache.org/jira/browse/HBASE-11794) | StripeStoreFlusher causes NullPointerException |  Critical | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-11536](https://issues.apache.org/jira/browse/HBASE-11536) | Puts of region location to Meta may be out of order which causes inconsistent of region location |  Critical | Region Assignment | Liu Shaohui | Liu Shaohui |
| [HBASE-11816](https://issues.apache.org/jira/browse/HBASE-11816) | Initializing custom Metrics implementation failed in Mapper or Reducer |  Minor | metrics | Huafeng Wang | Huafeng Wang |
| [HBASE-11782](https://issues.apache.org/jira/browse/HBASE-11782) | Document that hbase.MetaMigrationConvertingToPB needs to be set to true for migrations pre 0.96 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11813](https://issues.apache.org/jira/browse/HBASE-11813) | CellScanner#advance may overflow stack |  Blocker | . | Andrew Purtell | stack |
| [HBASE-11766](https://issues.apache.org/jira/browse/HBASE-11766) | Backdoor CoprocessorHConnection is no longer being used for local writes |  Major | . | James Taylor | Andrew Purtell |
| [HBASE-11591](https://issues.apache.org/jira/browse/HBASE-11591) | Scanner fails to retrieve KV  from bulk loaded file with highest sequence id than the cell's mvcc in a non-bulk loaded file |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11823](https://issues.apache.org/jira/browse/HBASE-11823) | Cleanup javadoc warnings. |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11814](https://issues.apache.org/jira/browse/HBASE-11814) | TestAssignmentManager.testCloseFailed() and testOpenCloseRacing() is flaky |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-9746](https://issues.apache.org/jira/browse/HBASE-9746) | RegionServer can't start when replication tries to replicate to an unknown host |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11820](https://issues.apache.org/jira/browse/HBASE-11820) | ReplicationSource : Set replication codec class as RPC codec class on a clonned Configuration |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11834](https://issues.apache.org/jira/browse/HBASE-11834) | TestHRegionBusyWait.testParallelAppendWithMemStoreFlush fails sporadically |  Major | test | stack | stack |
| [HBASE-11844](https://issues.apache.org/jira/browse/HBASE-11844) | region\_mover.rb load enters an infinite loop if region already present on target server |  Minor | scripts | Stephen Veiss | Stephen Veiss |
| [HBASE-11856](https://issues.apache.org/jira/browse/HBASE-11856) | hbase-common needs a log4j.properties resource for handling unit test logging output |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11851](https://issues.apache.org/jira/browse/HBASE-11851) | RpcClient can try to close a connection not ready to close |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11859](https://issues.apache.org/jira/browse/HBASE-11859) | 'hadoop jar' references in documentation should mention hbase-server.jar, not hbase.jar |  Minor | documentation | Stephen Veiss | Stephen Veiss |
| [HBASE-11726](https://issues.apache.org/jira/browse/HBASE-11726) | Master should fail-safe if starting with a pre 0.96 layout |  Critical | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11857](https://issues.apache.org/jira/browse/HBASE-11857) | Restore ReaderBase.initAfterCompression() and WALCellCodec.create(Configuration, CompressionContext) |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-11689](https://issues.apache.org/jira/browse/HBASE-11689) | Track meta in transition |  Major | Region Assignment | Jimmy Xiang | Andrey Stepachev |
| [HBASE-11797](https://issues.apache.org/jira/browse/HBASE-11797) | Create Table interface to replace HTableInterface |  Major | . | Carter | Carter |
| [HBASE-11880](https://issues.apache.org/jira/browse/HBASE-11880) | NPE in MasterStatusServlet |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11855](https://issues.apache.org/jira/browse/HBASE-11855) | HBase handbook chapter 18.9 out of date |  Minor | documentation | Michael Tauscher | Michael Tauscher |
| [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11863](https://issues.apache.org/jira/browse/HBASE-11863) | WAL files are not archived and stays in the WAL directory after splitting |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11876](https://issues.apache.org/jira/browse/HBASE-11876) | RegionScanner.nextRaw(...) should not update metrics |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-11887](https://issues.apache.org/jira/browse/HBASE-11887) | Memory retention in branch-1; millions of instances of LiteralByteString for column qualifier and value |  Critical | Protobufs | stack | stack |
| [HBASE-11886](https://issues.apache.org/jira/browse/HBASE-11886) | The creator of the table should have all permissions on the table |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-8674](https://issues.apache.org/jira/browse/HBASE-8674) | JUnit and Surefire TRUNK-HBASE-2 plugins need a new home |  Major | build | Andrew Purtell | Gary Helmling |
| [HBASE-11882](https://issues.apache.org/jira/browse/HBASE-11882) | Row level consistency may not be maintained with bulk load and compaction |  Critical | regionserver | Jerry He | Jerry He |
| [HBASE-11898](https://issues.apache.org/jira/browse/HBASE-11898) | CoprocessorHost.Environment should cache class loader instance |  Major | Coprocessors | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11905](https://issues.apache.org/jira/browse/HBASE-11905) | Add orca to server UIs and update logo. |  Major | . | stack | stack |
| [HBASE-11896](https://issues.apache.org/jira/browse/HBASE-11896) | LoadIncrementalHFiles fails in secure mode if the namespace is specified |  Major | . | Ashish Singhi |  |
| [HBASE-11836](https://issues.apache.org/jira/browse/HBASE-11836) | IntegrationTestTimeBoundedMultiGetRequestsWithRegionReplicas tests simple get by default |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11787](https://issues.apache.org/jira/browse/HBASE-11787) | TestRegionLocations is not categorized |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11772](https://issues.apache.org/jira/browse/HBASE-11772) | Bulk load mvcc and seqId issues with native hfiles |  Critical | . | Jerry He | Jerry He |
| [HBASE-11445](https://issues.apache.org/jira/browse/HBASE-11445) | TestZKProcedure#testMultiCohortWithMemberTimeoutDuringPrepare is flaky |  Major | snapshots | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-11832](https://issues.apache.org/jira/browse/HBASE-11832) | maven release plugin overrides command line arguments |  Minor | . | Enoch Hsu | Enoch Hsu |
| [HBASE-9473](https://issues.apache.org/jira/browse/HBASE-9473) | Change UI to list 'system tables' rather than 'catalog tables'. |  Major | UI | stack | stack |
| [HBASE-11839](https://issues.apache.org/jira/browse/HBASE-11839) | TestRegionRebalance is flakey |  Major | . | Alex Newman | Sergey Soldatov |
| [HBASE-11921](https://issues.apache.org/jira/browse/HBASE-11921) | Minor fixups that come of testing branch-1 |  Minor | . | stack | stack |
| [HBASE-11721](https://issues.apache.org/jira/browse/HBASE-11721) | jdiff script no longer works as usage instructions indicate |  Major | scripts | Misty Stanley-Jones | Dima Spivak |
| [HBASE-11932](https://issues.apache.org/jira/browse/HBASE-11932) | Stop the html-single from building a html-single of every chapter and cluttering the docbkx directory |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11947](https://issues.apache.org/jira/browse/HBASE-11947) | NoSuchElementException in balancer for master regions |  Major | . | Enis Soztutar | Sergey Soldatov |
| [HBASE-11936](https://issues.apache.org/jira/browse/HBASE-11936) | IsolationLevel must be attribute of a Query not a Scan |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11949](https://issues.apache.org/jira/browse/HBASE-11949) | Setting hfile.block.cache.size=0 doesn't actually disable blockcache |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11893](https://issues.apache.org/jira/browse/HBASE-11893) | RowTooBigException should be in hbase-client module |  Minor | API, Client | Sean Busbey | Mikhail Antonov |
| [HBASE-11892](https://issues.apache.org/jira/browse/HBASE-11892) | configs contain stale entries |  Trivial | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11972](https://issues.apache.org/jira/browse/HBASE-11972) | The "doAs user" used in the update to hbase:acl table RPC is incorrect |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-11987](https://issues.apache.org/jira/browse/HBASE-11987) | Make zk-less table states backward compatible. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11976](https://issues.apache.org/jira/browse/HBASE-11976) | Server startcode is not checked for bulk region assignment |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11984](https://issues.apache.org/jira/browse/HBASE-11984) | TestClassFinder failing on occasion |  Major | . | stack | stack |
| [HBASE-11989](https://issues.apache.org/jira/browse/HBASE-11989) | IntegrationTestLoadAndVerify cannot be configured anymore on distributed mode |  Trivial | test | Enis Soztutar | Enis Soztutar |
| [HBASE-11994](https://issues.apache.org/jira/browse/HBASE-11994) | PutCombiner floods the M/R log with repeated log messages. |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-11991](https://issues.apache.org/jira/browse/HBASE-11991) | Region states may be out of sync |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11266](https://issues.apache.org/jira/browse/HBASE-11266) | Remove shaded references to logger |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-10314](https://issues.apache.org/jira/browse/HBASE-10314) | Add Chaos Monkey that doesn't touch the master |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-12025](https://issues.apache.org/jira/browse/HBASE-12025) | TestHttpServerLifecycle.testStartedServerWithRequestLog hangs frequently |  Major | test | stack | stack |
| [HBASE-12007](https://issues.apache.org/jira/browse/HBASE-12007) | StochasticBalancer should avoid putting user regions on master |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12005](https://issues.apache.org/jira/browse/HBASE-12005) | Split/merge fails if master restarts before PONR |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-10757](https://issues.apache.org/jira/browse/HBASE-10757) | Change HTable class doc so it sends people to HCM getting instances |  Critical | . | stack | stack |
| [HBASE-11145](https://issues.apache.org/jira/browse/HBASE-11145) | UNEXPECTED!!! when HLog sync: Queue full |  Critical | wal | Anoop Sam John | stack |
| [HBASE-11982](https://issues.apache.org/jira/browse/HBASE-11982) | Bootstraping hbase:meta table creates a WAL file in region dir |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11906](https://issues.apache.org/jira/browse/HBASE-11906) | Meta data loss with distributed log replay |  Major | . | Jimmy Xiang | Jeffrey Zhong |
| [HBASE-11988](https://issues.apache.org/jira/browse/HBASE-11988) | AC/VC system table create on postStartMaster fails too often in test |  Critical | . | Anoop Sam John | stack |
| [HBASE-11974](https://issues.apache.org/jira/browse/HBASE-11974) | When a disabled table is scanned, NotServingRegionException is thrown instead of TableNotEnabledException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12043](https://issues.apache.org/jira/browse/HBASE-12043) | REST server should respond with FORBIDDEN(403) code on AccessDeniedException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12044](https://issues.apache.org/jira/browse/HBASE-12044) | REST delete operation should not retry disableTable for DoNotRetryIOException |  Minor | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-12045](https://issues.apache.org/jira/browse/HBASE-12045) | REST proxy users configuration in hbase-site.xml is ignored |  Major | . | Aditya Kishore | Aditya Kishore |
| [HBASE-12024](https://issues.apache.org/jira/browse/HBASE-12024) | Fix javadoc warning |  Trivial | documentation | Matteo Bertozzi | Anoop Sam John |
| [HBASE-12067](https://issues.apache.org/jira/browse/HBASE-12067) | Remove deprecated metrics classes. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12064](https://issues.apache.org/jira/browse/HBASE-12064) | hbase.master.balancer.stochastic.numRegionLoadsToRemember is not used |  Minor | Balancer | Junegunn Choi | Junegunn Choi |
| [HBASE-12056](https://issues.apache.org/jira/browse/HBASE-12056) | RPC logging too much in DEBUG mode |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10748](https://issues.apache.org/jira/browse/HBASE-10748) | hbase-daemon.sh fails to execute with 'sh' command |  Major | scripts | Ashish Singhi | Ashish Singhi |
| [HBASE-12054](https://issues.apache.org/jira/browse/HBASE-12054) | bad state after NamespaceUpgrade with reserved table names |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11405](https://issues.apache.org/jira/browse/HBASE-11405) | Multiple invocations of hbck in parallel disables balancer permanently |  Major | Balancer, hbck | bharath v | bharath v |
| [HBASE-12041](https://issues.apache.org/jira/browse/HBASE-12041) | AssertionError in HFilePerformanceEvaluation.UniformRandomReadBenchmark |  Major | . | Jean-Marc Spaggiari | stack |
| [HBASE-12052](https://issues.apache.org/jira/browse/HBASE-12052) | BulkLoad Failed due to no write permission on input files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12019](https://issues.apache.org/jira/browse/HBASE-12019) | hbase-daemon.sh overwrite HBASE\_ROOT\_LOGGER and HBASE\_SECURITY\_LOGGER variables |  Minor | scripts | Sebastien Barrier | Sebastien Barrier |
| [HBASE-12034](https://issues.apache.org/jira/browse/HBASE-12034) | If I kill single RS in branch-1, all regions end up on Master! |  Critical | master | stack | Jimmy Xiang |
| [HBASE-12042](https://issues.apache.org/jira/browse/HBASE-12042) | Replace internal uses of HTable(Configuration, String) with HTable(Configuration, TableName) |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12098](https://issues.apache.org/jira/browse/HBASE-12098) | User granted namespace table create permissions can't create a table |  Critical | Client, security | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12119](https://issues.apache.org/jira/browse/HBASE-12119) | Master regionserver web UI NOT\_FOUND |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12038](https://issues.apache.org/jira/browse/HBASE-12038) | Replace internal uses of signatures with byte[] and String tableNames to use the TableName equivalents. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12123](https://issues.apache.org/jira/browse/HBASE-12123) | Failed assertion in BucketCache after HBASE-11331 |  Major | regionserver | Enis Soztutar | Nick Dimiduk |
| [HBASE-12134](https://issues.apache.org/jira/browse/HBASE-12134) | publish\_website.sh script is too optimistic |  Major | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12135](https://issues.apache.org/jira/browse/HBASE-12135) | Website is broken |  Blocker | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12095](https://issues.apache.org/jira/browse/HBASE-12095) | SecureWALCellCodec should handle the case where encryption is disabled |  Major | . | Ashish Singhi | Ted Yu |
| [HBASE-12139](https://issues.apache.org/jira/browse/HBASE-12139) | StochasticLoadBalancer doesn't work on large lightly loaded clusters |  Critical | Balancer, master | Elliott Clark | Elliott Clark |
| [HBASE-11804](https://issues.apache.org/jira/browse/HBASE-11804) | Raise default heap size if unspecified |  Major | scripts | Elliott Clark | Elliott Clark |
| [HBASE-12130](https://issues.apache.org/jira/browse/HBASE-12130) | HBASE-11980 calls hflush and hsync doing near double the syncing work |  Critical | . | stack | stack |
| [HBASE-12145](https://issues.apache.org/jira/browse/HBASE-12145) | Fix javadoc and findbugs so new folks aren't freaked when they see them |  Major | . | stack | stack |
| [HBASE-12065](https://issues.apache.org/jira/browse/HBASE-12065) |  Import tool is not restoring multiple DeleteFamily markers of a row |  Minor | util | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-12078](https://issues.apache.org/jira/browse/HBASE-12078) | Missing Data when scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-12120](https://issues.apache.org/jira/browse/HBASE-12120) | HBase shell doesn't allow deleting of a cell by user with W-only permissions to it |  Major | shell | Dima Spivak | Srikanth Srungarapu |
| [HBASE-12140](https://issues.apache.org/jira/browse/HBASE-12140) | Add ConnectionFactory.createConnection() to create using default HBaseConfiguration. |  Major | Client | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12153](https://issues.apache.org/jira/browse/HBASE-12153) | Fixing TestReplicaWithCluster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12158](https://issues.apache.org/jira/browse/HBASE-12158) | TestHttpServerLifecycle.testStartedServerWithRequestLog goes zombie on occasion |  Major | test | stack | stack |
| [HBASE-12149](https://issues.apache.org/jira/browse/HBASE-12149) | TestRegionPlacement is failing undeterministically |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12160](https://issues.apache.org/jira/browse/HBASE-12160) | Make Surefire's argLine configurable in the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12151](https://issues.apache.org/jira/browse/HBASE-12151) | Make dev scripts executable |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12164](https://issues.apache.org/jira/browse/HBASE-12164) | Check for presence of user Id in SecureBulkLoadEndpoint#secureBulkLoadHFiles() is inaccurate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12122](https://issues.apache.org/jira/browse/HBASE-12122) | Try not to assign user regions to master all the time |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12136](https://issues.apache.org/jira/browse/HBASE-12136) | Race condition between client adding tableCF replication znode and  server triggering TableCFsTracker |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-12167](https://issues.apache.org/jira/browse/HBASE-12167) | NPE in AssignmentManager |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12156](https://issues.apache.org/jira/browse/HBASE-12156) | TableName cache isn't used for one of valueOf methods. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12166](https://issues.apache.org/jira/browse/HBASE-12166) | TestDistributedLogSplitting.testMasterStartsUpWithLogReplayWork |  Major | test, wal | stack | Jimmy Xiang |
| [HBASE-12137](https://issues.apache.org/jira/browse/HBASE-12137) | Alter table add cf doesn't do compression test |  Major | master | Virag Kothari | Virag Kothari |
| [HBASE-8808](https://issues.apache.org/jira/browse/HBASE-8808) | Use Jacoco to generate Unit Test coverage reports |  Trivial | build | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12146](https://issues.apache.org/jira/browse/HBASE-12146) | RegionServerTracker should escape data in log messages |  Trivial | . | Lars Hofhansl | stack |
| [HBASE-12172](https://issues.apache.org/jira/browse/HBASE-12172) | Disable flakey TestRegionReplicaReplicationEndpoint and make fixing it a blocker on 1.0 |  Major | test | stack | stack |
| [HBASE-11890](https://issues.apache.org/jira/browse/HBASE-11890) | HBase REST Client is hard coded to http protocol |  Major | Client | Eric Yang | Qiang Tian |
| [HBASE-12184](https://issues.apache.org/jira/browse/HBASE-12184) | ServerShutdownHandler throws NPE |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6994](https://issues.apache.org/jira/browse/HBASE-6994) | minor doc update about DEFAULT\_ACCEPTABLE\_FACTOR |  Minor | documentation | Liang Xie | Liang Xie |
| [HBASE-9005](https://issues.apache.org/jira/browse/HBASE-9005) | Improve documentation around KEEP\_DELETED\_CELLS, time range scans, and delete markers |  Minor | documentation | Lars Hofhansl | Misty Stanley-Jones |
| [HBASE-11815](https://issues.apache.org/jira/browse/HBASE-11815) | Flush and compaction could just close the tmp writer if there is an exception |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12106](https://issues.apache.org/jira/browse/HBASE-12106) | Move test annotations to test artifact |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12191](https://issues.apache.org/jira/browse/HBASE-12191) | Make TestCacheOnWrite faster. |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12193](https://issues.apache.org/jira/browse/HBASE-12193) | Add missing docbook file to git |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12196](https://issues.apache.org/jira/browse/HBASE-12196) | SSH should retry in case failed to assign regions |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12199](https://issues.apache.org/jira/browse/HBASE-12199) | Make TestAtomicOperation and TestEncodedSeekers faster |  Trivial | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-8936](https://issues.apache.org/jira/browse/HBASE-8936) | Fixing TestSplitLogWorker while running Jacoco tests. |  Trivial | . | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-11998](https://issues.apache.org/jira/browse/HBASE-11998) | Document a workflow for cherry-picking a fix to a different branch |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12181](https://issues.apache.org/jira/browse/HBASE-12181) | Some tests create a table and try to use it before regions get assigned |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12206](https://issues.apache.org/jira/browse/HBASE-12206) | NPE in RSRpcServices |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12200](https://issues.apache.org/jira/browse/HBASE-12200) | When an RPC server handler thread dies, throw exception |  Minor | regionserver | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-12209](https://issues.apache.org/jira/browse/HBASE-12209) | NPE in HRegionServer#getLastSequenceId |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12218](https://issues.apache.org/jira/browse/HBASE-12218) | Make HBaseCommonTestingUtil#deleteDir try harder |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12109](https://issues.apache.org/jira/browse/HBASE-12109) | user\_permission command for namespace does not return correct result |  Minor | shell | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12165](https://issues.apache.org/jira/browse/HBASE-12165) | TestEndToEndSplitTransaction.testFromClientSideWhileSplitting fails |  Major | test | stack | stack |
| [HBASE-12216](https://issues.apache.org/jira/browse/HBASE-12216) | Lower closed region logging level |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12198](https://issues.apache.org/jira/browse/HBASE-12198) | Fix the bug of not updating location cache |  Minor | Client | Yi Deng | Yi Deng |
| [HBASE-12183](https://issues.apache.org/jira/browse/HBASE-12183) | FuzzyRowFilter doesn't support reverse scans |  Major | Filters | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12186](https://issues.apache.org/jira/browse/HBASE-12186) | Formatting error in Table 8.2. Examples of Visibility Expressions |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12197](https://issues.apache.org/jira/browse/HBASE-12197) | Move REST |  Major | REST | Elliott Clark | Elliott Clark |
| [HBASE-11394](https://issues.apache.org/jira/browse/HBASE-11394) | Replication can have data loss if peer id contains hyphen "-" |  Major | . | Enis Soztutar | Talat UYARER |
| [HBASE-12126](https://issues.apache.org/jira/browse/HBASE-12126) | Region server coprocessor endpoint |  Major | Coprocessors | Virag Kothari | Virag Kothari |
| [HBASE-12170](https://issues.apache.org/jira/browse/HBASE-12170) | TestReplicaWithCluster.testReplicaAndReplication timeouts |  Major | test | stack | stack |
| [HBASE-12234](https://issues.apache.org/jira/browse/HBASE-12234) | Make TestMultithreadedTableMapper a little more stable. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12240](https://issues.apache.org/jira/browse/HBASE-12240) | hbase-daemon.sh should remove pid file if process not found running |  Minor | Usability | Ashish Singhi | Ashish Singhi |
| [HBASE-12237](https://issues.apache.org/jira/browse/HBASE-12237) | HBaseZeroCopyByteString#wrap() should not be called in hbase-client code |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-12242](https://issues.apache.org/jira/browse/HBASE-12242) | Fix new javadoc warnings in Admin, etc. |  Trivial | . | stack | stack |
| [HBASE-12083](https://issues.apache.org/jira/browse/HBASE-12083) | Deprecate new HBaseAdmin() in favor of Connection.getAdmin() |  Critical | . | Solomon Duskis | Enis Soztutar |
| [HBASE-12029](https://issues.apache.org/jira/browse/HBASE-12029) | Use Table and RegionLocator in HTable.getRegionLocations() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12246](https://issues.apache.org/jira/browse/HBASE-12246) | Compilation with hadoop-2.3.x and 2.2.x is broken |  Blocker | . | Enis Soztutar | stack |
| [HBASE-12248](https://issues.apache.org/jira/browse/HBASE-12248) | broken link in hbase shell help |  Minor | shell | André Kelpe |  |
| [HBASE-7211](https://issues.apache.org/jira/browse/HBASE-7211) | Improve hbase ref guide for the testing part. |  Minor | documentation | Nicolas Liochon | Nicolas Liochon |
| [HBASE-12252](https://issues.apache.org/jira/browse/HBASE-12252) | IntegrationTestBulkLoad fails with illegal partition error |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-12247](https://issues.apache.org/jira/browse/HBASE-12247) | Replace setHTable() with initializeTable() in TableInputFormat. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12258](https://issues.apache.org/jira/browse/HBASE-12258) | Make TestHBaseFsck less flaky |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12265](https://issues.apache.org/jira/browse/HBASE-12265) | HBase shell 'show\_filters' points to internal Facebook URL |  Trivial | shell | Niels Basjes | Andrew Purtell |
| [HBASE-12261](https://issues.apache.org/jira/browse/HBASE-12261) | Add checkstyle to HBase build process |  Major | build, site | Elliott Clark | Elliott Clark |
| [HBASE-12263](https://issues.apache.org/jira/browse/HBASE-12263) | RegionServer listens on localhost in distributed cluster when DNS is unavailable |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12229](https://issues.apache.org/jira/browse/HBASE-12229) | NullPointerException in SnapshotTestingUtils |  Minor | test | Dima Spivak | Dima Spivak |
| [HBASE-12192](https://issues.apache.org/jira/browse/HBASE-12192) | Remove EventHandlerListener |  Major | master | ryan rawson | ryan rawson |
| [HBASE-12278](https://issues.apache.org/jira/browse/HBASE-12278) | Race condition in TestSecureLoadIncrementalHFilesSplitRecovery |  Critical | test | Dima Spivak | Dima Spivak |
| [HBASE-12226](https://issues.apache.org/jira/browse/HBASE-12226) | TestAccessController#testPermissionList failing on master |  Major | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-12281](https://issues.apache.org/jira/browse/HBASE-12281) | ClonedPrefixTreeCell should implement HeapSize |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12308](https://issues.apache.org/jira/browse/HBASE-12308) | Fix typo in hbase-rest profile name |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12302](https://issues.apache.org/jira/browse/HBASE-12302) | VisibilityClient getAuths does not propagate remote service exception correctly |  Minor | Client, security | Jerry He | Jerry He |
| [HBASE-12316](https://issues.apache.org/jira/browse/HBASE-12316) | test-patch.sh (Hadoop-QA) outputs the wrong release audit warnings URL |  Trivial | . | Dima Spivak | Dima Spivak |
| [HBASE-12307](https://issues.apache.org/jira/browse/HBASE-12307) | Remove unused Imports in hbase-client and hbase-common |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12301](https://issues.apache.org/jira/browse/HBASE-12301) | user\_permission command does not show global permissions |  Major | security, shell | Jerry He | Matteo Bertozzi |
| [HBASE-12318](https://issues.apache.org/jira/browse/HBASE-12318) | Add license header to checkstyle xml files |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-12315](https://issues.apache.org/jira/browse/HBASE-12315) | Fix 0.98 Tests after checkstyle got parented |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-12306](https://issues.apache.org/jira/browse/HBASE-12306) | CellCounter output's wrong value for Total Families Across all Rows in output file |  Major | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12283](https://issues.apache.org/jira/browse/HBASE-12283) | Clean up some checkstyle errors |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12314](https://issues.apache.org/jira/browse/HBASE-12314) | Add chaos monkey policy to execute two actions concurrently |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12294](https://issues.apache.org/jira/browse/HBASE-12294) | Regression from HBASE-12261: Can't build the docs after the hbase-checkstyle module was added |  Blocker | build | Misty Stanley-Jones | Elliott Clark |
| [HBASE-12322](https://issues.apache.org/jira/browse/HBASE-12322) | Add clean up command to ITBLL |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-12334](https://issues.apache.org/jira/browse/HBASE-12334) | Handling of DeserializationException causes needless retry on failure |  Major | . | James Taylor | Lars Hofhansl |
| [HBASE-12352](https://issues.apache.org/jira/browse/HBASE-12352) | Add hbase-annotation-tests to runtime classpath so can run hbase it tests. |  Major | integration tests | stack | stack |
| [HBASE-12326](https://issues.apache.org/jira/browse/HBASE-12326) | Document scanner timeout workarounds in troubleshooting section |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12304](https://issues.apache.org/jira/browse/HBASE-12304) | CellCounter will throw AIOBE when output directory is not specified |  Minor | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-12356](https://issues.apache.org/jira/browse/HBASE-12356) | Rpc with region replica does not propagate tracing spans |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11562](https://issues.apache.org/jira/browse/HBASE-11562) | CopyTable should provide an option to shuffle the mapper tasks |  Major | mapreduce | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-12312](https://issues.apache.org/jira/browse/HBASE-12312) | Another couple of createTable race conditions |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-12372](https://issues.apache.org/jira/browse/HBASE-12372) | [WINDOWS] Enable log4j configuration in hbase.cmd |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12238](https://issues.apache.org/jira/browse/HBASE-12238) | A few ugly exceptions on startup |  Minor | . | stack | stack |
| [HBASE-12336](https://issues.apache.org/jira/browse/HBASE-12336) | RegionServer failed to shutdown for NodeFailoverWorker thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12375](https://issues.apache.org/jira/browse/HBASE-12375) | LoadIncrementalHFiles fails to load data in table when CF name starts with '\_' |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12384](https://issues.apache.org/jira/browse/HBASE-12384) | TestTags can hang on fast test hosts |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11835](https://issues.apache.org/jira/browse/HBASE-11835) | Wrong managenement of non expected calls in the client |  Major | Client, Performance | Nicolas Liochon | Nicolas Liochon |
| [HBASE-12380](https://issues.apache.org/jira/browse/HBASE-12380) | TestRegionServerNoMaster#testMultipleOpen is flaky after HBASE-11760 |  Major | test | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-9003](https://issues.apache.org/jira/browse/HBASE-9003) | TableMapReduceUtil should not rely on org.apache.hadoop.util.JarFinder#getJar |  Major | mapreduce | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12274](https://issues.apache.org/jira/browse/HBASE-12274) | Race between RegionScannerImpl#nextInternal() and RegionScannerImpl#close() may produce null pointer exception |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12377](https://issues.apache.org/jira/browse/HBASE-12377) | HBaseAdmin#deleteTable fails when META region is moved around the same timeframe |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12386](https://issues.apache.org/jira/browse/HBASE-12386) | Replication gets stuck following a transient zookeeper error to remote peer cluster |  Major | Replication | Adrian Muraru | Adrian Muraru |
| [HBASE-12399](https://issues.apache.org/jira/browse/HBASE-12399) | Master startup race between metrics and RpcServer |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12285](https://issues.apache.org/jira/browse/HBASE-12285) | Builds are failing, possibly because of SUREFIRE-1091 |  Blocker | . | Dima Spivak | Dima Spivak |
| [HBASE-12417](https://issues.apache.org/jira/browse/HBASE-12417) | Scan copy constructor does not retain small attribute |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12418](https://issues.apache.org/jira/browse/HBASE-12418) | Multiple branches for MOB feature breaking git for case insensitive filesystems |  Blocker | . | Sean Busbey | Nick Dimiduk |
| [HBASE-12142](https://issues.apache.org/jira/browse/HBASE-12142) | Truncate command does not preserve ACLs table |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12402](https://issues.apache.org/jira/browse/HBASE-12402) | ZKPermissionWatcher race condition in refreshing the cache leaving stale ACLs and causing AccessDenied |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-10780](https://issues.apache.org/jira/browse/HBASE-10780) | HFilePrettyPrinter#processFile should return immediately if file does not exist |  Minor | HFile | Ashish Singhi | Ashish Singhi |
| [HBASE-12407](https://issues.apache.org/jira/browse/HBASE-12407) | HConnectionKey doesn't contain CUSTOM\_CONTROLLER\_CONF\_KEY in CONNECTION\_PROPERTIES |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12414](https://issues.apache.org/jira/browse/HBASE-12414) | Move HFileLink.exists() to base class |  Trivial | io | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12219](https://issues.apache.org/jira/browse/HBASE-12219) | Cache more efficiently getAll() and get() in FSTableDescriptors |  Major | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12423](https://issues.apache.org/jira/browse/HBASE-12423) | Use a non-managed Table in TableOutputFormat |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12420](https://issues.apache.org/jira/browse/HBASE-12420) | BucketCache logged startup message is egregiously large |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12329](https://issues.apache.org/jira/browse/HBASE-12329) | Table create with duplicate column family names quietly succeeds |  Minor | Client, shell | Sean Busbey | Jingcheng Du |
| [HBASE-12419](https://issues.apache.org/jira/browse/HBASE-12419) | "Partial cell read caused by EOF" ERRORs on replication source during replication |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12409](https://issues.apache.org/jira/browse/HBASE-12409) | Add actual tunable parameters for finding optimal # of regions per RS |  Major | documentation, Performance | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11788](https://issues.apache.org/jira/browse/HBASE-11788) | hbase is not deleting the cell when a Put with a KeyValue, KeyValue.Type.Delete is submitted |  Major | . | Cristian Armaselu | Srikanth Srungarapu |
| [HBASE-12450](https://issues.apache.org/jira/browse/HBASE-12450) | Unbalance chaos monkey might kill all region servers without starting them back |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-12448](https://issues.apache.org/jira/browse/HBASE-12448) | Fix rate reporting in compaction progress DEBUG logging |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12279](https://issues.apache.org/jira/browse/HBASE-12279) | Generated thrift files were generated with the wrong parameters |  Major | . | Niels Basjes | Niels Basjes |
| [HBASE-12460](https://issues.apache.org/jira/browse/HBASE-12460) | Moving Chore to hbase-common module. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12461](https://issues.apache.org/jira/browse/HBASE-12461) | FSVisitor logging is excessive |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12366](https://issues.apache.org/jira/browse/HBASE-12366) | Add login code to HBase Canary tool. |  Minor | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12445](https://issues.apache.org/jira/browse/HBASE-12445) | hbase is removing all remaining cells immediately after the cell marked with marker = KeyValue.Type.DeleteColumn via PUT |  Major | . | sri venu bora | Hani Nadra |
| [HBASE-12347](https://issues.apache.org/jira/browse/HBASE-12347) | Fix the edge case where Hadoop QA's parsing of attached patches breaks the JIRA status checker in dev-support/rebase\_all\_git\_branches.sh |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12478](https://issues.apache.org/jira/browse/HBASE-12478) | HBASE-10141 and MIN\_VERSIONS are not compatible |  Critical | . | Enis Soztutar | Ted Yu |
| [HBASE-12359](https://issues.apache.org/jira/browse/HBASE-12359) | MulticastPublisher should specify IPv4/v6 protocol family when creating multicast channel |  Minor | master | Qiang Tian | Qiang Tian |
| [HBASE-12488](https://issues.apache.org/jira/browse/HBASE-12488) | Small bug in publish\_hbase\_website.sh script |  Minor | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12459](https://issues.apache.org/jira/browse/HBASE-12459) | Use a non-managed Table in mapred.TableOutputFormat |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12337](https://issues.apache.org/jira/browse/HBASE-12337) | Import tool fails with NullPointerException if clusterIds is not initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12449](https://issues.apache.org/jira/browse/HBASE-12449) | Use the max timestamp of current or old cell's timestamp in HRegion.append() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12421](https://issues.apache.org/jira/browse/HBASE-12421) | Clarify ACL concepts and best practices |  Major | documentation, security | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12513](https://issues.apache.org/jira/browse/HBASE-12513) | Graceful stop script does not restore the balancer state |  Minor | scripts | Florin Broasca |  |
| [HBASE-12277](https://issues.apache.org/jira/browse/HBASE-12277) | Refactor bulkLoad methods in AccessController to its own interface |  Major | . | Madhan Neethiraj | Madhan Neethiraj |
| [HBASE-12532](https://issues.apache.org/jira/browse/HBASE-12532) | TestFilter failing occasionally with ExitCodeException doing chmod since HBASE-10378 |  Major | test | stack | stack |
| [HBASE-12536](https://issues.apache.org/jira/browse/HBASE-12536) | Reduce the effective scope of GLOBAL CREATE and ADMIN permission |  Major | security | Andrew Purtell | Andrew Purtell |
| [HBASE-12535](https://issues.apache.org/jira/browse/HBASE-12535) | NPE in WALFactory close under contention for getInstance |  Major | Replication, wal | stack | Sean Busbey |
| [HBASE-12539](https://issues.apache.org/jira/browse/HBASE-12539) | HFileLinkCleaner logs are uselessly noisy |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12464](https://issues.apache.org/jira/browse/HBASE-12464) | meta table region assignment stuck in the FAILED\_OPEN state due to region server not fully ready to serve |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12541](https://issues.apache.org/jira/browse/HBASE-12541) | Add misc debug logging to hanging tests in TestHCM and TestBaseLoadBalancer |  Major | test | stack | stack |
| [HBASE-12073](https://issues.apache.org/jira/browse/HBASE-12073) | Shell command user\_permission fails on the table created by user if he is not global admin. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12552](https://issues.apache.org/jira/browse/HBASE-12552) | listSnapshots should list only owned snapshots for non-super user |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12560](https://issues.apache.org/jira/browse/HBASE-12560) | [WINDOWS] Append the classpath from Hadoop to HBase classpath in bin/hbase.cmd |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12327](https://issues.apache.org/jira/browse/HBASE-12327) | MetricsHBaseServerSourceFactory#createContextName has wrong conditions |  Major | . | Sanghyun Yun |  |
| [HBASE-12495](https://issues.apache.org/jira/browse/HBASE-12495) | Use interfaces in the shell scripts |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12550](https://issues.apache.org/jira/browse/HBASE-12550) | Check all storefiles are referenced before splitting |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12474](https://issues.apache.org/jira/browse/HBASE-12474) | Incorrect handling of default namespace in user\_permission command. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12584](https://issues.apache.org/jira/browse/HBASE-12584) | Fix branch-1 failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Major | test | stack | stack |
| [HBASE-9117](https://issues.apache.org/jira/browse/HBASE-9117) | Remove HTablePool and all HConnection pooling related APIs |  Critical | . | Lars Hofhansl | Nick Dimiduk |
| [HBASE-12580](https://issues.apache.org/jira/browse/HBASE-12580) | Zookeeper instantiated even though we might not need it in the shell |  Major | . | Alex Newman | Alex Newman |
| [HBASE-12072](https://issues.apache.org/jira/browse/HBASE-12072) | Standardize retry handling for master operations |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12053](https://issues.apache.org/jira/browse/HBASE-12053) | SecurityBulkLoadEndPoint set 777 permission on input data files |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12533](https://issues.apache.org/jira/browse/HBASE-12533) | staging directories are not deleted after secure bulk load |  Major | regionserver | Andrejs Dubovskis | Jeffrey Zhong |
| [HBASE-12017](https://issues.apache.org/jira/browse/HBASE-12017) | Use Connection.createTable() instead of HTable constructors. |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-10536](https://issues.apache.org/jira/browse/HBASE-10536) | ImportTsv should fail fast if any of the column family passed to the job is not present in the table |  Major | mapreduce | rajeshbabu |  |
| [HBASE-12491](https://issues.apache.org/jira/browse/HBASE-12491) | TableMapReduceUtil.findContainingJar() NPE |  Major | mapreduce | Solomon Duskis | Solomon Duskis |
| [HBASE-12581](https://issues.apache.org/jira/browse/HBASE-12581) | TestCellACLWithMultipleVersions failing since task 5 HBASE-12404 (HBASE-12404 addendum) |  Critical | test | stack | stack |
| [HBASE-12595](https://issues.apache.org/jira/browse/HBASE-12595) | Use Connection.getTable() in table.rb |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12603](https://issues.apache.org/jira/browse/HBASE-12603) | Remove javadoc warnings introduced due to removal of unused imports |  Major | . | Varun Saxena | Varun Saxena |
| [HBASE-12514](https://issues.apache.org/jira/browse/HBASE-12514) | Cleanup HFileOutputFormat legacy code |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12520](https://issues.apache.org/jira/browse/HBASE-12520) | Add protected getters on TableInputFormatBase |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12600](https://issues.apache.org/jira/browse/HBASE-12600) | Remove REPLAY tag dependency in Distributed Replay Mode |  Major | wal | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12537](https://issues.apache.org/jira/browse/HBASE-12537) | HBase should log the remote host on replication error |  Major | Operability, Replication | stack | stack |
| [HBASE-12610](https://issues.apache.org/jira/browse/HBASE-12610) | Close connection in TableInputFormatBase |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12576](https://issues.apache.org/jira/browse/HBASE-12576) | Add metrics for rolling the HLog if there are too few DN's in the write pipeline |  Major | metrics, wal | Elliott Clark | Elliott Clark |
| [HBASE-12490](https://issues.apache.org/jira/browse/HBASE-12490) | Replace uses of setAutoFlush(boolean, boolean) |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12616](https://issues.apache.org/jira/browse/HBASE-12616) | We lost the IntegrationTestBigLinkedList COMMANDS in recent usage refactoring |  Trivial | . | stack | stack |
| [HBASE-12614](https://issues.apache.org/jira/browse/HBASE-12614) | Potentially unclosed StoreFile(s) in DefaultCompactor#compact() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11099](https://issues.apache.org/jira/browse/HBASE-11099) | Two situations where we could open a region with smaller sequence number |  Major | regionserver | Jeffrey Zhong | Stephen Yuan Jiang |
| [HBASE-12618](https://issues.apache.org/jira/browse/HBASE-12618) | Add 'Namespace' to headers while displaying user permissions. |  Trivial | . | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-12617](https://issues.apache.org/jira/browse/HBASE-12617) | Running IntegrationTestBigLinkedList against cluster getting not an instance of org.apache.hadoop.hbase.MiniHBaseCluster |  Major | . | stack | stack |
| [HBASE-12431](https://issues.apache.org/jira/browse/HBASE-12431) | Use of getColumnLatestCell(byte[], int, int, byte[], int, int) is Not Thread Safe |  Major | Client | Jonathan Jarvis | Jingcheng Du |
| [HBASE-12634](https://issues.apache.org/jira/browse/HBASE-12634) |  Fix the AccessController#requireGlobalPermission(ns) with NS |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12635](https://issues.apache.org/jira/browse/HBASE-12635) | Delete acl notify znode of table after the table is deleted |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12637](https://issues.apache.org/jira/browse/HBASE-12637) | Compilation with Hadoop-2.4- is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12622](https://issues.apache.org/jira/browse/HBASE-12622) | user\_permission should require global admin to display global and ns permissions |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12632](https://issues.apache.org/jira/browse/HBASE-12632) | ThrottledInputStream/ExportSnapshot does not throttle |  Major | mapreduce | Tobi Vollebregt |  |
| [HBASE-12565](https://issues.apache.org/jira/browse/HBASE-12565) | Race condition in HRegion.batchMutate()  causes partial data to be written when region closes |  Major | Performance, regionserver | Scott Fines |  |
| [HBASE-12642](https://issues.apache.org/jira/browse/HBASE-12642) | LoadIncrementalHFiles does not throw exception after hitting hbase.bulkload.retries.number setting |  Minor | mapreduce | Erik Ingle | Ted Yu |
| [HBASE-12548](https://issues.apache.org/jira/browse/HBASE-12548) | Improve debuggability of IntegrationTestTimeBoundedRequestsWithRegionReplicas |  Minor | . | Devaraj Das | Devaraj Das |
| [HBASE-12647](https://issues.apache.org/jira/browse/HBASE-12647) | Truncate table should work with C as well |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12574](https://issues.apache.org/jira/browse/HBASE-12574) | Update replication metrics to not do so many map look ups. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12611](https://issues.apache.org/jira/browse/HBASE-12611) | Create autoCommit() method and remove clearBufferOnFail |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12564](https://issues.apache.org/jira/browse/HBASE-12564) | consolidate the getTableDescriptors() semantic |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12661](https://issues.apache.org/jira/browse/HBASE-12661) | rat check fails for several files |  Blocker | . | Sean Busbey | Sean Busbey |
| [HBASE-12655](https://issues.apache.org/jira/browse/HBASE-12655) | WALPerformanceEvaluation miscalculates append/sync statistics for multiple regions |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-12662](https://issues.apache.org/jira/browse/HBASE-12662) | region\_status.rb is failing with NoMethodError |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-11979](https://issues.apache.org/jira/browse/HBASE-11979) | Compaction progress reporting is wrong |  Minor | . | Andrew Purtell | Esteban Gutierrez |
| [HBASE-12467](https://issues.apache.org/jira/browse/HBASE-12467) | Master joins cluster but never completes initialization |  Major | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12454](https://issues.apache.org/jira/browse/HBASE-12454) | Setting didPerformCompaction early in HRegion#compact |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12553](https://issues.apache.org/jira/browse/HBASE-12553) | request value is not consistent for restoreSnapshot in audit logs |  Minor | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12628](https://issues.apache.org/jira/browse/HBASE-12628) | Update instructions for running shell tests using maven. |  Minor | documentation, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12665](https://issues.apache.org/jira/browse/HBASE-12665) | When aborting, dump metrics |  Major | Operability | stack | stack |
| [HBASE-12663](https://issues.apache.org/jira/browse/HBASE-12663) | unify getTableDescriptors() and listTableDescriptorsByNamespace() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12652](https://issues.apache.org/jira/browse/HBASE-12652) | Allow unmanaged connections in MetaTableAccessor |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12674](https://issues.apache.org/jira/browse/HBASE-12674) | Add permission check to getNamespaceDescriptor() |  Major | master, security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11153](https://issues.apache.org/jira/browse/HBASE-11153) | Document that http webUI's should redirect to https when enabled |  Minor | documentation, master, regionserver, UI | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-9763](https://issues.apache.org/jira/browse/HBASE-9763) | Scan javadoc doesn't fully capture semantics of start and stop row |  Minor | documentation | Gabriel Reid | Gabriel Reid |
| [HBASE-12681](https://issues.apache.org/jira/browse/HBASE-12681) | truncate\_preserve command fails with undefined method \`getTable' error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12422](https://issues.apache.org/jira/browse/HBASE-12422) | Use ConnectionFactory in HTable constructors |  Minor | Client | Solomon Duskis | stack |
| [HBASE-12677](https://issues.apache.org/jira/browse/HBASE-12677) | Update replication docs to clarify terminology |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12693](https://issues.apache.org/jira/browse/HBASE-12693) | [docs] nit fix in HBase and MapReduce section |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12687](https://issues.apache.org/jira/browse/HBASE-12687) | Book is missing styling |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12692](https://issues.apache.org/jira/browse/HBASE-12692) | NPE from SnapshotManager#stop |  Minor | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12683](https://issues.apache.org/jira/browse/HBASE-12683) | Compilation with hadoop-2.7.0-SNAPSHOT is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12675](https://issues.apache.org/jira/browse/HBASE-12675) | Use interface methods in shell scripts |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | Visibility Labels: issue with storing super users in labels table |  Major | security | Jerry He | Jerry He |
| [HBASE-12348](https://issues.apache.org/jira/browse/HBASE-12348) | preModifyColumn and preDeleteColumn in AC denies user to perform its operation though it has required rights |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12696](https://issues.apache.org/jira/browse/HBASE-12696) | Possible NPE in HRegionFileSystem#splitStoreFile when skipStoreFileRangeCheck in splitPolicy return true |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12699](https://issues.apache.org/jira/browse/HBASE-12699) | undefined method \`setAsyncLogFlush' exception thrown when setting DEFERRED\_LOG\_FLUSH=\>true |  Major | shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-9431](https://issues.apache.org/jira/browse/HBASE-9431) | Set  'hbase.bulkload.retries.number' to 10 as HBASE-8450 claims |  Major | . | stack | stack |
| [HBASE-12690](https://issues.apache.org/jira/browse/HBASE-12690) | list\_quotas command is failing with not able to load Java class |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12682](https://issues.apache.org/jira/browse/HBASE-12682) | compaction thread throttle value is not correct in hbase-default.xml |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-12664](https://issues.apache.org/jira/browse/HBASE-12664) | TestDefaultLoadBalancer.testBalanceCluster fails in CachedDNSToSwitchMapping |  Minor | test | stack | stack |
| [HBASE-12688](https://issues.apache.org/jira/browse/HBASE-12688) | Update site with a bootstrap-based UI |  Major | site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | Convert TestAcidGuarantees from a unit test to an integration test |  Major | hbase, integration tests, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12711](https://issues.apache.org/jira/browse/HBASE-12711) | Fix new findbugs warnings in hbase-thrift module |  Minor | . | Ted Yu | Srikanth Srungarapu |
| [HBASE-12715](https://issues.apache.org/jira/browse/HBASE-12715) | getLastSequenceId always returns -1 |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-12732](https://issues.apache.org/jira/browse/HBASE-12732) | Log messages in FileLink$FileLinkInputStream#tryOpen are reversed |  Trivial | hbase | Tobi Vollebregt |  |
| [HBASE-12703](https://issues.apache.org/jira/browse/HBASE-12703) | Cleanup TestClientPushback for repeatability |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-12741](https://issues.apache.org/jira/browse/HBASE-12741) | AccessController contains a javadoc issue |  Minor | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12734](https://issues.apache.org/jira/browse/HBASE-12734) | TestPerColumnFamilyFlush.testCompareStoreFileCount is flakey |  Minor | . | Duo Zhang | Duo Zhang |
| [HBASE-12742](https://issues.apache.org/jira/browse/HBASE-12742) | ClusterStatusPublisher crashes with a IPv6 network interface. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12750](https://issues.apache.org/jira/browse/HBASE-12750) | getRequestsCount() in ClusterStatus returns total number of request |  Major | Client | Weichen Ye | Weichen Ye |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12749](https://issues.apache.org/jira/browse/HBASE-12749) | Tighten HFileLink api to enable non-snapshot uses |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12697](https://issues.apache.org/jira/browse/HBASE-12697) | Don't use RegionLocationFinder if localityCost == 0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12716](https://issues.apache.org/jira/browse/HBASE-12716) | A bug in RegionSplitter.UniformSplit algorithm |  Major | regionserver | Weichen Ye | Weichen Ye |
| [HBASE-12767](https://issues.apache.org/jira/browse/HBASE-12767) | Fix a StoreFileScanner NPE in reverse scan flow |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-12781](https://issues.apache.org/jira/browse/HBASE-12781) | thrift2 listen port will bind always to the passed command line address |  Major | Thrift | Pankaj Kumar | Pankaj Kumar |
| [HBASE-12607](https://issues.apache.org/jira/browse/HBASE-12607) | TestHBaseFsck#testParallelHbck fails running against hadoop 2.6.0 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12772](https://issues.apache.org/jira/browse/HBASE-12772) | TestPerColumnFamilyFlush failing |  Major | test | stack | stack |
| [HBASE-12740](https://issues.apache.org/jira/browse/HBASE-12740) | Improve performance of TestHBaseFsck |  Major | util | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12775](https://issues.apache.org/jira/browse/HBASE-12775) | CompressionTest ate my HFile (sigh!) |  Major | test | Aditya Kishore | Aditya Kishore |
| [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | Abort the RegionServer, when it's handler threads die |  Major | regionserver | Sudarshan Kadambi | Alicia Ying Shu |
| [HBASE-12804](https://issues.apache.org/jira/browse/HBASE-12804) | ImportTsv fails to delete partition files created by it |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12339](https://issues.apache.org/jira/browse/HBASE-12339) | WAL performance evaluation tool doesn't roll logs |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12694](https://issues.apache.org/jira/browse/HBASE-12694) | testTableExistsIfTheSpecifiedTableRegionIsSplitParent in TestSplitTransactionOnCluster class leaves regions in transition |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12817](https://issues.apache.org/jira/browse/HBASE-12817) | Data missing while scanning using PREFIX\_TREE data block encoding |  Major | Scanners | Duo Zhang | Duo Zhang |
| [HBASE-12819](https://issues.apache.org/jira/browse/HBASE-12819) | ExportSnapshot doesn't close FileSystem instances |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12811](https://issues.apache.org/jira/browse/HBASE-12811) | [AccessController] NPE while scanning a table with user not having READ permission on the namespace |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12824](https://issues.apache.org/jira/browse/HBASE-12824) | CompressionTest fails with org.apache.hadoop.hbase.io.hfile.AbstractHFileReader$NotSeekedException: Not seeked to a key/value |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12798](https://issues.apache.org/jira/browse/HBASE-12798) | Map Reduce jobs should not create Tables in setConf() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12791](https://issues.apache.org/jira/browse/HBASE-12791) | HBase does not attempt to clean up an aborted split when the regionserver shutting down |  Critical | regionserver | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12838](https://issues.apache.org/jira/browse/HBASE-12838) | After HBASE-5162 RSRpcServices accidentally applies mutations twice |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12832](https://issues.apache.org/jira/browse/HBASE-12832) | Describe table from shell no longer shows Table's attributes, only CF attributes |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12777](https://issues.apache.org/jira/browse/HBASE-12777) | Multi-page book has broken links that work in the single-page version |  Major | documentation | Dima Spivak | Misty Stanley-Jones |
| [HBASE-12480](https://issues.apache.org/jira/browse/HBASE-12480) | Regions in FAILED\_OPEN/FAILED\_CLOSE should be processed on master failover |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12849](https://issues.apache.org/jira/browse/HBASE-12849) | LoadIncrementalHFiles should use unmanaged connection in branch-1 |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-11983](https://issues.apache.org/jira/browse/HBASE-11983) | HRegion constructors should not create HLog |  Major | wal | Enis Soztutar | Nick Dimiduk |
| [HBASE-12844](https://issues.apache.org/jira/browse/HBASE-12844) | ServerManager.isServerReacable() should sleep between retries |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12847](https://issues.apache.org/jira/browse/HBASE-12847) | TestZKLessSplitOnCluster frequently times out in 0.98 builds |  Major | . | Andrew Purtell | Rajeshbabu Chintaguntla |
| [HBASE-12858](https://issues.apache.org/jira/browse/HBASE-12858) | Remove unneeded files under src/main/docbkx |  Major | documentation | Ted Yu | Misty Stanley-Jones |
| [HBASE-12845](https://issues.apache.org/jira/browse/HBASE-12845) | ByteBufferOutputStream should grow as direct buffer if the initial buffer is also direct BB |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12270](https://issues.apache.org/jira/browse/HBASE-12270) | A bug in the bucket cache, with cache blocks on write enabled |  Critical | . | Khaled Elmeleegy | Liu Shaohui |
| [HBASE-10528](https://issues.apache.org/jira/browse/HBASE-10528) | DefaultBalancer selects plans to move regions onto draining nodes |  Major | . | churro morales | churro morales |
| [HBASE-8026](https://issues.apache.org/jira/browse/HBASE-8026) | HBase Shell docs for scan command does not reference VERSIONS |  Major | . | Jonathan Natkins | Amit Kabra |
| [HBASE-12863](https://issues.apache.org/jira/browse/HBASE-12863) | Master info port on RS UI is always 0 |  Major | . | Enis Soztutar | Duo Zhang |
| [HBASE-12833](https://issues.apache.org/jira/browse/HBASE-12833) | [shell] table.rb leaks connections |  Major | shell | Nick Dimiduk | Solomon Duskis |
| [HBASE-12862](https://issues.apache.org/jira/browse/HBASE-12862) | Uppercase "wals" in RegionServer webUI |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12837](https://issues.apache.org/jira/browse/HBASE-12837) | ReplicationAdmin leaks zk connections |  Major | Zookeeper | stack | stack |
| [HBASE-12871](https://issues.apache.org/jira/browse/HBASE-12871) | Document JDK versions supported by each release missing in new documentation |  Minor | documentation | Kevin Risden | Misty Stanley-Jones |
| [HBASE-12878](https://issues.apache.org/jira/browse/HBASE-12878) | Incorrect HFile path in TestHFilePerformance print output (fix for easier debugging) |  Trivial | test | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12881](https://issues.apache.org/jira/browse/HBASE-12881) | TestFastFail is not compatible with surefire.rerunFailingTestsCount |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12886](https://issues.apache.org/jira/browse/HBASE-12886) | Correct tag option name in PerformanceEvaluation |  Minor | . | Jerry He | Jerry He |
| [HBASE-12864](https://issues.apache.org/jira/browse/HBASE-12864) | IntegrationTestTableSnapshotInputFormat fails |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12393](https://issues.apache.org/jira/browse/HBASE-12393) | The regionserver web will throw exception if we disable block cache |  Minor | regionserver, UI | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-12903](https://issues.apache.org/jira/browse/HBASE-12903) | Fix configuration which enables secure bulk load |  Major | Coprocessors, documentation | Weichen Ye | Weichen Ye |
| [HBASE-12904](https://issues.apache.org/jira/browse/HBASE-12904) | Threading issues in region\_mover.rb |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-12810](https://issues.apache.org/jira/browse/HBASE-12810) | Update to htrace-incubating |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12898](https://issues.apache.org/jira/browse/HBASE-12898) | Add in used undeclared dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-12902](https://issues.apache.org/jira/browse/HBASE-12902) | Post-asciidoc conversion fix-ups |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | buffered writes substantially less useful after removal of HTablePool |  Blocker | hbase | Aaron Beppu | Nick Dimiduk |
| [HBASE-10499](https://issues.apache.org/jira/browse/HBASE-10499) | In write heavy scenario one of the regions does not get flushed causing RegionTooBusyException |  Critical | . | ramkrishna.s.vasudevan | Ted Yu |
| [HBASE-12892](https://issues.apache.org/jira/browse/HBASE-12892) | Add a class to allow taking a snapshot from the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12919](https://issues.apache.org/jira/browse/HBASE-12919) | Compilation with Hadoop-2.4- is broken again |  Major | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12915](https://issues.apache.org/jira/browse/HBASE-12915) | Disallow small scan with batching |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12917](https://issues.apache.org/jira/browse/HBASE-12917) | HFilePerformanceEvaluation Scan tests fail with StackOverflowError due to recursive call in createCell function |  Major | hbase | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12925](https://issues.apache.org/jira/browse/HBASE-12925) | Use acl cache for doing access control checks in prepare and clean phases of Bulkloading. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12916](https://issues.apache.org/jira/browse/HBASE-12916) | No access control for replicating WAL entries |  Major | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | Changing the set of vis labels a user has access to doesn't generate an audit log event |  Major | . | Sean Busbey | Ashish Singhi |
| [HBASE-12922](https://issues.apache.org/jira/browse/HBASE-12922) | Post-asciidoc conversion fix-ups part 2 |  Major | documentation | Lars Francke | Lars Francke |
| [HBASE-12877](https://issues.apache.org/jira/browse/HBASE-12877) | Hbase documentation- a referenced link is not working |  Minor | documentation | Subrahmanyam | Misty Stanley-Jones |
| [HBASE-12782](https://issues.apache.org/jira/browse/HBASE-12782) | ITBLL fails for me if generator does anything but 5M per maptask |  Critical | integration tests | stack | stack |
| [HBASE-12951](https://issues.apache.org/jira/browse/HBASE-12951) | TestHCM.testConnectionClose is flakey when using AsyncRpcClient as client implementation |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | HBaseConfiguration: set classloader before loading xml files |  Minor | Client | Aniket Bhatnagar | Aniket Bhatnagar |
| [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | [webui] HMaster webui should display the number of regions a table has. |  Minor | UI | Jonathan Hsieh | Andrey Stepachev |
| [HBASE-12964](https://issues.apache.org/jira/browse/HBASE-12964) | Add the ability for hbase-daemon.sh to start in the foreground |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12962](https://issues.apache.org/jira/browse/HBASE-12962) | TestHFileBlockIndex.testBlockIndex() commented out during HBASE-10531 |  Major | test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | Negative values in read and write region server metrics |  Minor | regionserver | Victoria | Victoria |
| [HBASE-12966](https://issues.apache.org/jira/browse/HBASE-12966) | NPE in HMaster while recovering tables in Enabling state |  Major | master | ramkrishna.s.vasudevan | Andrey Stepachev |
| [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | Set default value for hbase.client.scanner.max.result.size |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12958](https://issues.apache.org/jira/browse/HBASE-12958) | SSH doing hbase:meta get but hbase:meta not assigned |  Major | . | stack | stack |
| [HBASE-12956](https://issues.apache.org/jira/browse/HBASE-12956) | Binding to 0.0.0.0 is broken after HBASE-10569 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | Minimum memstore size is a percentage |  Major | . | churro morales | churro morales |
| [HBASE-12985](https://issues.apache.org/jira/browse/HBASE-12985) | Javadoc warning and findbugs fixes to get us green again |  Major | . | stack | stack |
| [HBASE-12984](https://issues.apache.org/jira/browse/HBASE-12984) | SSL cannot be used by the InfoPort after removing deprecated code in HBASE-10336 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12998](https://issues.apache.org/jira/browse/HBASE-12998) | Compilation with Hdfs-2.7.0-SNAPSHOT is broken after HDFS-7647 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12747](https://issues.apache.org/jira/browse/HBASE-12747) | IntegrationTestMTTR will OOME if launched with mvn verify |  Minor | . | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-13004](https://issues.apache.org/jira/browse/HBASE-13004) | Make possible to explain why HBaseTestingUtility.waitFor fails |  Minor | test | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12999](https://issues.apache.org/jira/browse/HBASE-12999) | Make foreground\_start return the correct exit code |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class. |  Major | Performance, test | Jean-Marc Spaggiari | Vikas Vishwakarma |
| [HBASE-12978](https://issues.apache.org/jira/browse/HBASE-12978) | Region goes permanently offline (WAS: hbase:meta has a row missing hregioninfo and it causes my long-running job to fail) |  Blocker | . | stack | stack |
| [HBASE-13009](https://issues.apache.org/jira/browse/HBASE-13009) | HBase REST UI inaccessible |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-13003](https://issues.apache.org/jira/browse/HBASE-13003) | Get tests in TestHFileBlockIndex back |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-12585](https://issues.apache.org/jira/browse/HBASE-12585) | Fix refguide so it does hbase 1.0 style API everywhere with callout on how we used to do it in pre-1.0 |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-12989](https://issues.apache.org/jira/browse/HBASE-12989) | region\_mover.rb unloadRegions method uses ArrayList concurrently resulting in errors |  Minor | scripts | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12996](https://issues.apache.org/jira/browse/HBASE-12996) | Reversed field on Filter should be transient |  Trivial | . | Ian Friedman | Ian Friedman |
| [HBASE-12991](https://issues.apache.org/jira/browse/HBASE-12991) | Use HBase 1.0 interfaces in hbase-rest |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12920](https://issues.apache.org/jira/browse/HBASE-12920) | hadoopqa should compile with different hadoop versions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13007](https://issues.apache.org/jira/browse/HBASE-13007) | Fix the test timeouts being caused by ChoreService |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13026](https://issues.apache.org/jira/browse/HBASE-13026) | Wrong error message in case incorrect snapshot name OR Incorrect table name |  Minor | . | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13029](https://issues.apache.org/jira/browse/HBASE-13029) | Table state should be deleted from META as a last operation in DeleteTableHandler |  Major | master | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13038](https://issues.apache.org/jira/browse/HBASE-13038) | Fix the java doc warning continuously reported by Hadoop QA |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13037](https://issues.apache.org/jira/browse/HBASE-13037) | LoadIncrementalHFile should try to verify the content of unmatched families |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/\* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13027](https://issues.apache.org/jira/browse/HBASE-13027) | mapreduce.TableInputFormatBase should create its own Connection if needed |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13010](https://issues.apache.org/jira/browse/HBASE-13010) | HFileOutputFormat2 partitioner's path is hard-coded as '/tmp' |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-12971](https://issues.apache.org/jira/browse/HBASE-12971) | Replication stuck due to large default value for replication.source.maxretriesmultiplier |  Major | hbase | Adrian Muraru | Lars Hofhansl |
| [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | [1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn |  Major | Operability | stack | stack |
| [HBASE-13028](https://issues.apache.org/jira/browse/HBASE-13028) | Cleanup mapreduce API changes |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13049](https://issues.apache.org/jira/browse/HBASE-13049) | wal\_roll ruby command doesn't work. |  Major | shell | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13011](https://issues.apache.org/jira/browse/HBASE-13011) | TestLoadIncrementalHFiles is flakey when using AsyncRpcClient as client implementation |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | Add "HBase Configuration" link missing on the table details pages |  Trivial | Operability | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13041](https://issues.apache.org/jira/browse/HBASE-13041) | TestEnableTableHandler should not call AssignmentManager#assign concurrently with master |  Major | integration tests | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12412](https://issues.apache.org/jira/browse/HBASE-12412) | update the ref guide(currently Example 10.2) to show "update an existing CF" with the new API modifyFamily in master |  Minor | documentation | Jingcheng Du | Misty Stanley-Jones |
| [HBASE-13055](https://issues.apache.org/jira/browse/HBASE-13055) | HRegion FIXED\_OVERHEAD missed one boolean |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13040](https://issues.apache.org/jira/browse/HBASE-13040) | Possible failure of TestHMasterRPCException |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-12948](https://issues.apache.org/jira/browse/HBASE-12948) | Calling Increment#addColumn on the same column multiple times produces wrong result |  Critical | Client, regionserver | hongyu bi | hongyu bi |
| [HBASE-13050](https://issues.apache.org/jira/browse/HBASE-13050) | Hbase shell create\_namespace command throws ArrayIndexOutOfBoundException for (invalid) empty text input. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13061](https://issues.apache.org/jira/browse/HBASE-13061) | RegionStates can remove wrong region from server holdings |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12102](https://issues.apache.org/jira/browse/HBASE-12102) | Duplicate keys in HBase.RegionServer metrics JSON |  Minor | . | Andrew Purtell | Ravi Kishore Valeti |
| [HBASE-13066](https://issues.apache.org/jira/browse/HBASE-13066) | Fix typo in AsyncRpcChannel |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-13065](https://issues.apache.org/jira/browse/HBASE-13065) | Increasing -Xmx when running TestDistributedLogSplitting |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13036](https://issues.apache.org/jira/browse/HBASE-13036) | Meta scanner should use its own threadpool |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13075](https://issues.apache.org/jira/browse/HBASE-13075) | TableInputFormatBase spuriously warning about multiple initializeTable calls |  Minor | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13072](https://issues.apache.org/jira/browse/HBASE-13072) | BucketCache.evictBlock returns true if block does not exist |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13069](https://issues.apache.org/jira/browse/HBASE-13069) | Thrift Http Server returns an error code of 500 instead of 401 when authentication fails |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13081](https://issues.apache.org/jira/browse/HBASE-13081) | Branch precommit builds are not updating to branch head before patch application |  Major | . | Andrew Purtell | Enis Soztutar |
| [HBASE-13070](https://issues.apache.org/jira/browse/HBASE-13070) | Fix possibly zero length family and qualifier is TestCacheOnWrite |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13032](https://issues.apache.org/jira/browse/HBASE-13032) | Migration of states should be performed once META is assigned and onlined. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13001](https://issues.apache.org/jira/browse/HBASE-13001) | NullPointer in master logs for table.jsp |  Trivial | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12953](https://issues.apache.org/jira/browse/HBASE-12953) | RegionServer is not functionally working with AysncRpcClient in secure mode |  Critical | security | Ashish Singhi | Duo Zhang |
| [HBASE-13083](https://issues.apache.org/jira/browse/HBASE-13083) | Master can be dead-locked while assigning META. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13077](https://issues.apache.org/jira/browse/HBASE-13077) | BoundedCompletionService doesn't pass trace info to server |  Major | hbase | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-13085](https://issues.apache.org/jira/browse/HBASE-13085) | Security issue in the implementation of Rest gataway 'doAs' proxy user support |  Critical | REST, security | Jerry He | Jerry He |
| [HBASE-13048](https://issues.apache.org/jira/browse/HBASE-13048) | Use hbase.crypto.wal.algorithm in SecureProtobufLogReader while decrypting the data |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13102](https://issues.apache.org/jira/browse/HBASE-13102) | Fix Pseudo-distributed Mode which was broken in 1.0.0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13111](https://issues.apache.org/jira/browse/HBASE-13111) | truncate\_preserve command is failing with undefined method error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13112](https://issues.apache.org/jira/browse/HBASE-13112) | quota.rb, security.rb and visibility\_labels.rb leak connection |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13119](https://issues.apache.org/jira/browse/HBASE-13119) | FileLink should implement equals |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12924](https://issues.apache.org/jira/browse/HBASE-12924) | HRegionServer#MovedRegionsCleaner Chore does not start |  Minor | . | Jonathan Lawlor | Sameet Agarwal |
| [HBASE-13131](https://issues.apache.org/jira/browse/HBASE-13131) | ReplicationAdmin leaks connections if there's an error in the constructor |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-13133](https://issues.apache.org/jira/browse/HBASE-13133) | NPE when running TestSplitLogManager |  Major | . | Duo Zhang | Andrey Stepachev |
| [HBASE-13123](https://issues.apache.org/jira/browse/HBASE-13123) | Minor bug in ROW bloom filter |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13134](https://issues.apache.org/jira/browse/HBASE-13134) | mutateRow and checkAndMutate apis don't throw region level exceptions |  Major | . | Francis Liu | Francis Liu |
| [HBASE-13141](https://issues.apache.org/jira/browse/HBASE-13141) | IntegrationTestAcidGuarantees returns incorrect values for getColumnFamilies |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13115](https://issues.apache.org/jira/browse/HBASE-13115) | Fix the usage of remote user in thrift doAs implementation. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13139](https://issues.apache.org/jira/browse/HBASE-13139) | Clean up missing JAVA\_HOME message in bin/hbase-config.sh |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13145](https://issues.apache.org/jira/browse/HBASE-13145) | TestNamespaceAuditor.testRegionMerge is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13146](https://issues.apache.org/jira/browse/HBASE-13146) | Race Condition in ScheduledChore and ChoreService |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-13052](https://issues.apache.org/jira/browse/HBASE-13052) | Explain each region split policy |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13156](https://issues.apache.org/jira/browse/HBASE-13156) | Fix minor rat violation recently introduced (asciidoctor.css). |  Major | . | stack | stack |
| [HBASE-13155](https://issues.apache.org/jira/browse/HBASE-13155) | Fix TestPrefixTree |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13076](https://issues.apache.org/jira/browse/HBASE-13076) | Table can be forcibly enabled in AssignmentManager during table disabling. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13163](https://issues.apache.org/jira/browse/HBASE-13163) | Add HBase version to header and footer of HTML and PDF docs |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13150](https://issues.apache.org/jira/browse/HBASE-13150) | TestMasterObserver failing disable table at end of test |  Major | test | stack | Duo Zhang |
| [HBASE-13084](https://issues.apache.org/jira/browse/HBASE-13084) | Add labels to VisibilityLabelsCache asynchronously causes TestShell flakey |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-12969](https://issues.apache.org/jira/browse/HBASE-12969) | Parameter Validation is not there for shell script, local-master-backup.sh and local-regionservers.sh |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13135](https://issues.apache.org/jira/browse/HBASE-13135) | Move replication ops mgmt stuff from Javadoc to Ref Guide |  Major | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12468](https://issues.apache.org/jira/browse/HBASE-12468) | AUTHORIZATIONS should be part of Visibility Label Docs |  Major | documentation | Kevin Odell | Misty Stanley-Jones |
| [HBASE-13023](https://issues.apache.org/jira/browse/HBASE-13023) | Document multiWAL |  Major | documentation, wal | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12723](https://issues.apache.org/jira/browse/HBASE-12723) | Update ACL matrix to reflect reality |  Major | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12931](https://issues.apache.org/jira/browse/HBASE-12931) | The existing KeyValues in memstore are not removed completely after inserting cell into memStore |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-13186](https://issues.apache.org/jira/browse/HBASE-13186) | HBase build error due to checkstyle |  Major | build | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13181](https://issues.apache.org/jira/browse/HBASE-13181) | TestHRegionReplayEvents.testReplayBulkLoadEvent fails frequently. |  Minor | . | Srikanth Srungarapu | Matteo Bertozzi |
| [HBASE-13196](https://issues.apache.org/jira/browse/HBASE-13196) | Add info about default number of versions when using the export tool |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13174](https://issues.apache.org/jira/browse/HBASE-13174) | Apply HBASE-11804 to Windows scripts |  Major | scripts | Lars George | Lars George |
| [HBASE-13165](https://issues.apache.org/jira/browse/HBASE-13165) | Fix docs and scripts for default max heaps size after HBASE-11804 |  Minor | documentation, scripts | Lars George | Lars George |
| [HBASE-13206](https://issues.apache.org/jira/browse/HBASE-13206) | Fix TableLock tableName log format |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13208](https://issues.apache.org/jira/browse/HBASE-13208) | Patch build should match the patch filename and not the whole relative URL in findBranchNameFromPatchName |  Trivial | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13191](https://issues.apache.org/jira/browse/HBASE-13191) | mvn site fails on jenkins due to permgen |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13167](https://issues.apache.org/jira/browse/HBASE-13167) | The check for balancerCutoffTime is buggy |  Trivial | Balancer | Tianyin Xu | Mikhail Antonov |
| [HBASE-13218](https://issues.apache.org/jira/browse/HBASE-13218) | Correct the syntax shown for using ExportSnapshot tool in the book |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13194](https://issues.apache.org/jira/browse/HBASE-13194) | TableNamespaceManager not ready cause MasterQuotaManager initialization fail |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-13224](https://issues.apache.org/jira/browse/HBASE-13224) | Minor formatting issue when logging a namespace scope in AuthResult#toContextString |  Trivial | Coprocessors, security | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13136](https://issues.apache.org/jira/browse/HBASE-13136) | TestSplitLogManager.testGetPreviousRecoveryMode is flakey |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13097](https://issues.apache.org/jira/browse/HBASE-13097) | Use same EventLoopGroup for different AsyncRpcClients if possible |  Major | IPC/RPC, test | Duo Zhang | Duo Zhang |
| [HBASE-13232](https://issues.apache.org/jira/browse/HBASE-13232) | ConnectionManger : Batch pool threads and metaLookup pool threads should use different name pattern |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13227](https://issues.apache.org/jira/browse/HBASE-13227) | LoadIncrementalHFile should skip non-files inside a possible family-dir |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13242](https://issues.apache.org/jira/browse/HBASE-13242) | TestPerColumnFamilyFlush.testFlushingWhenLogRolling hung |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13239](https://issues.apache.org/jira/browse/HBASE-13239) | HBase grant at specific column level does not work for Groups |  Major | hbase | Jaymin Patel | Ted Yu |
| [HBASE-13246](https://issues.apache.org/jira/browse/HBASE-13246) | Correct the assertion for namespace permissions in tearDown method of TestAccessController |  Minor | security, test | Ashish Singhi | Ashish Singhi |
| [HBASE-13193](https://issues.apache.org/jira/browse/HBASE-13193) | RegionScannerImpl filters should not be reset if a partial Result is returned |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13254](https://issues.apache.org/jira/browse/HBASE-13254) | EnableTableHandler#prepare would not throw TableNotFoundException during recovery |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12908](https://issues.apache.org/jira/browse/HBASE-12908) | Typos in MemStoreFlusher javadocs |  Trivial | documentation | Edvin Malinovskis |  |
| [HBASE-13093](https://issues.apache.org/jira/browse/HBASE-13093) | Local mode HBase instance doesn't shut down. |  Major | . | Elliott Clark | Andrey Stepachev |
| [HBASE-13176](https://issues.apache.org/jira/browse/HBASE-13176) | Flakey TestZooKeeper test. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13229](https://issues.apache.org/jira/browse/HBASE-13229) | Specify bash for local-regionservers.sh and local-master-backup.sh |  Minor | scripts | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-13253](https://issues.apache.org/jira/browse/HBASE-13253) | LoadIncrementalHFiles unify hfiles discovery |  Major | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13200](https://issues.apache.org/jira/browse/HBASE-13200) | Improper configuration can leads to endless lease recovery during failover |  Major | MTTR | He Liangliang | He Liangliang |
| [HBASE-13188](https://issues.apache.org/jira/browse/HBASE-13188) | java.lang.ArithmeticException issue in BoundedByteBufferPool.putBuffer |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13285](https://issues.apache.org/jira/browse/HBASE-13285) | Fix flaky getRegions() in TestAccessController.setUp() |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13114](https://issues.apache.org/jira/browse/HBASE-13114) | [UNITTEST] TestEnableTableHandler.testDeleteForSureClearsAllTableRowsFromMeta |  Major | test | stack | Esteban Gutierrez |
| [HBASE-13274](https://issues.apache.org/jira/browse/HBASE-13274) | Fix misplaced deprecation in Delete#addXYZ |  Major | API | stack | Mikhail Antonov |
| [HBASE-12867](https://issues.apache.org/jira/browse/HBASE-12867) | Shell does not support custom replication endpoint specification |  Major | . | Andrew Purtell | Kevin Risden |
| [HBASE-13282](https://issues.apache.org/jira/browse/HBASE-13282) | Fix the minor issues of running Canary on kerberized environment |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13308](https://issues.apache.org/jira/browse/HBASE-13308) | Fix flaky TestEndToEndSplitTransaction |  Major | flakey, test | Duo Zhang | Duo Zhang |
| [HBASE-13309](https://issues.apache.org/jira/browse/HBASE-13309) | Some tests do not reset EnvironmentEdgeManager |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13315](https://issues.apache.org/jira/browse/HBASE-13315) | BufferedMutator should be @InterfaceAudience.Public |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13281](https://issues.apache.org/jira/browse/HBASE-13281) | 'hbase.bucketcache.size' description in hbase book is not correct |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13314](https://issues.apache.org/jira/browse/HBASE-13314) | Fix NPE in HMaster.getClusterStatus() |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13321](https://issues.apache.org/jira/browse/HBASE-13321) | Fix flaky TestHBaseFsck |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13273](https://issues.apache.org/jira/browse/HBASE-13273) | Make Result.EMPTY\_RESULT read-only; currently it can be modified |  Major | . | stack | Mikhail Antonov |
| [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | Exceptions from DFS client can cause CatalogJanitor to delete referenced files |  Blocker | master | Elliott Clark | Elliott Clark |
| [HBASE-13305](https://issues.apache.org/jira/browse/HBASE-13305) | Get(Get get) is not copying the row key |  Major | API | Lars George | Ashish Singhi |
| [HBASE-13311](https://issues.apache.org/jira/browse/HBASE-13311) | TestQuotaThrottle flaky on slow machine |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13294](https://issues.apache.org/jira/browse/HBASE-13294) | Fix the critical ancient loopholes in security testing infrastructure. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13325](https://issues.apache.org/jira/browse/HBASE-13325) | Protocol Buffers 2.5 no longer available for download on code.google.com |  Major | . | Andrew Purtell | Elliott Clark |
| [HBASE-13265](https://issues.apache.org/jira/browse/HBASE-13265) | Make thrift2 usable from c++ |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-8725](https://issues.apache.org/jira/browse/HBASE-8725) | Add total time RPC call metrics |  Major | metrics | Elliott Clark | Nate Edel |
| [HBASE-13295](https://issues.apache.org/jira/browse/HBASE-13295) | TestInfoServers hang |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13328](https://issues.apache.org/jira/browse/HBASE-13328) | LoadIncrementalHFile.doBulkLoad(Path,HTable) should handle managed connections |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13355](https://issues.apache.org/jira/browse/HBASE-13355) | QA bot reports checking javac twice |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-13357](https://issues.apache.org/jira/browse/HBASE-13357) | If maxTables/maxRegions exceeds quota in a namespace, throw QuotaExceededException |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13262](https://issues.apache.org/jira/browse/HBASE-13262) | ResultScanner doesn't return all rows in Scan |  Blocker | Client | Josh Elser | Josh Elser |
| [HBASE-12993](https://issues.apache.org/jira/browse/HBASE-12993) | Use HBase 1.0 interfaces in hbase-thrift |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-9738](https://issues.apache.org/jira/browse/HBASE-9738) | Delete table and loadbalancer interference |  Critical | . | Devaraj Das |  |
| [HBASE-13364](https://issues.apache.org/jira/browse/HBASE-13364) | Make using the default javac on by default |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-13371](https://issues.apache.org/jira/browse/HBASE-13371) | Fix typo in TestAsyncIPC |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13317](https://issues.apache.org/jira/browse/HBASE-13317) | Region server reportForDuty stuck looping if there is a master change |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-12954](https://issues.apache.org/jira/browse/HBASE-12954) | Ability impaired using HBase on multihomed hosts |  Minor | . | Clay B. | Ted Yu |
| [HBASE-13296](https://issues.apache.org/jira/browse/HBASE-13296) | Fix the deletion of acl notify nodes for namespace. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13383](https://issues.apache.org/jira/browse/HBASE-13383) | TestRegionServerObserver.testCoprocessorHooksInRegionsMerge zombie after HBASE-12975 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13368](https://issues.apache.org/jira/browse/HBASE-13368) | Hash.java is declared as public Interface - but it should be Private |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13384](https://issues.apache.org/jira/browse/HBASE-13384) | Fix Javadoc warnings introduced by HBASE-12972 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13091](https://issues.apache.org/jira/browse/HBASE-13091) | Split ZK Quorum on Master WebUI |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13058](https://issues.apache.org/jira/browse/HBASE-13058) | Hbase shell command 'scan' for non existent table shows unnecessary info for one unrelated existent table. |  Trivial | Client | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13388](https://issues.apache.org/jira/browse/HBASE-13388) | Handling NullPointer in ZKProcedureMemberRpcs while getting ZNode data |  Minor | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13385](https://issues.apache.org/jira/browse/HBASE-13385) | TestGenerateDelegationToken is broken with hadoop 2.8.0 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13382](https://issues.apache.org/jira/browse/HBASE-13382) | IntegrationTestBigLinkedList should use SecureRandom |  Major | integration tests | Todd Lipcon | Dima Spivak |
| [HBASE-13397](https://issues.apache.org/jira/browse/HBASE-13397) | Purge duplicate rpc request thread local |  Major | IPC/RPC | stack | stack |
| [HBASE-13406](https://issues.apache.org/jira/browse/HBASE-13406) | TestAccessController is flaky when create is slow |  Minor | security, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13374](https://issues.apache.org/jira/browse/HBASE-13374) | Small scanners (with particular configurations) do not return all rows |  Blocker | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13409](https://issues.apache.org/jira/browse/HBASE-13409) | Add categories to uncategorized tests |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13411](https://issues.apache.org/jira/browse/HBASE-13411) | Misleading error message when request size quota limit exceeds |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13410](https://issues.apache.org/jira/browse/HBASE-13410) | Bug in KeyValueUtil.oswrite() for non Keyvalue cases |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13299](https://issues.apache.org/jira/browse/HBASE-13299) | Add setReturnResults() to Increment, like Append has |  Critical | API | Lars George | Ashish Singhi |
| [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | typo in splitSuccessCount  metric |  Major | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13377](https://issues.apache.org/jira/browse/HBASE-13377) | Canary may generate false alarm on the first region when there are many delete markers |  Major | monitoring | He Liangliang | He Liangliang |
| [HBASE-13414](https://issues.apache.org/jira/browse/HBASE-13414) | TestHCM no longer needs to test for JRE 6. |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-11544](https://issues.apache.org/jira/browse/HBASE-11544) | [Ergonomics] hbase.client.scanner.caching is dogged and will try to return batch even if it means OOME |  Critical | . | stack | Jonathan Lawlor |
| [HBASE-13275](https://issues.apache.org/jira/browse/HBASE-13275) | Setting hbase.security.authorization to false does not disable authorization |  Major | security | William Watson | Andrew Purtell |
| [HBASE-13423](https://issues.apache.org/jira/browse/HBASE-13423) | Remove duplicate entry for hbase.regionserver.regionSplitLimit in hbase-default.xml |  Minor | hbase | Appy | Appy |
| [HBASE-13457](https://issues.apache.org/jira/browse/HBASE-13457) | SnapshotExistsException doesn't honor the DoNotRetry |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13301](https://issues.apache.org/jira/browse/HBASE-13301) | Possible memory leak in BucketCache |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13475](https://issues.apache.org/jira/browse/HBASE-13475) | Small spelling mistake in region\_mover#isSuccessfulScan causes NoMethodError |  Trivial | scripts | Victor Xu | Victor Xu |
| [HBASE-12006](https://issues.apache.org/jira/browse/HBASE-12006) | [JDK 8] KeyStoreTestUtil#generateCertificate fails due to "subject class type invalid" |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13473](https://issues.apache.org/jira/browse/HBASE-13473) | deleted cells come back alive after the stripe compaction |  Blocker | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-13486](https://issues.apache.org/jira/browse/HBASE-13486) | region\_status.rb broken with NameError: uninitialized constant IOException |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13477](https://issues.apache.org/jira/browse/HBASE-13477) | Create metrics on failed requests |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13491](https://issues.apache.org/jira/browse/HBASE-13491) | Issue in FuzzyRowFilter#getNextForFuzzyRule |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-13430](https://issues.apache.org/jira/browse/HBASE-13430) | HFiles that are in use by a table cloned from a snapshot may be deleted when that snapshot is deleted |  Critical | hbase | Tobi Vollebregt | Tobi Vollebregt |
| [HBASE-13482](https://issues.apache.org/jira/browse/HBASE-13482) | Phoenix is failing to scan tables on secure environments. |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-13520](https://issues.apache.org/jira/browse/HBASE-13520) | NullPointerException in TagRewriteCell |  Major | . | Josh Elser | Josh Elser |
| [HBASE-13471](https://issues.apache.org/jira/browse/HBASE-13471) | Fix a possible infinite loop in doMiniBatchMutation |  Major | . | Elliott Clark | Rajesh Nishtala |
| [HBASE-13499](https://issues.apache.org/jira/browse/HBASE-13499) | AsyncRpcClient test cases failure in powerpc |  Major | IPC/RPC | sangamesh | Duo Zhang |
| [HBASE-13524](https://issues.apache.org/jira/browse/HBASE-13524) | TestReplicationAdmin fails on JDK 1.8 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13437](https://issues.apache.org/jira/browse/HBASE-13437) | ThriftServer leaks ZooKeeper connections |  Major | Thrift | Winger Pun | Albert Strasheim |
| [HBASE-13527](https://issues.apache.org/jira/browse/HBASE-13527) | The default value for hbase.client.scanner.max.result.size is never actually set on Scans |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13526](https://issues.apache.org/jira/browse/HBASE-13526) | TestRegionServerReportForDuty can be flaky: hang or timeout |  Minor | test | Jerry He | Jerry He |
| [HBASE-13528](https://issues.apache.org/jira/browse/HBASE-13528) | A bug on selecting compaction pool |  Minor | Compaction | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13523](https://issues.apache.org/jira/browse/HBASE-13523) | API Doumentation formatting is broken |  Minor | documentation | Dylan Jones | Dylan Jones |
| [HBASE-13555](https://issues.apache.org/jira/browse/HBASE-13555) | StackServlet produces 500 error |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13546](https://issues.apache.org/jira/browse/HBASE-13546) | NPE on region server status page if all masters are down |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-13149](https://issues.apache.org/jira/browse/HBASE-13149) | HBase MR is broken on Hadoop 2.5+ Yarn |  Blocker | . | Jerry He | Jerry He |
| [HBASE-13359](https://issues.apache.org/jira/browse/HBASE-13359) | Update ACL matrix to include table owner. |  Minor | documentation | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13490](https://issues.apache.org/jira/browse/HBASE-13490) | foreground daemon start re-executes ulimit output |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13394](https://issues.apache.org/jira/browse/HBASE-13394) | Failed to recreate a table when quota is enabled |  Major | security | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-13575](https://issues.apache.org/jira/browse/HBASE-13575) | TestChoreService has to make sure that the opened ChoreService is closed for each unit test |  Trivial | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13517](https://issues.apache.org/jira/browse/HBASE-13517) | Publish a client artifact with shaded dependencies |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13417](https://issues.apache.org/jira/browse/HBASE-13417) | batchCoprocessorService() does not handle NULL keys |  Minor | Coprocessors | Lars George | Abhishek Singh Chouhan |
| [HBASE-13589](https://issues.apache.org/jira/browse/HBASE-13589) | [WINDOWS] hbase.cmd script is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13585](https://issues.apache.org/jira/browse/HBASE-13585) | HRegionFileSystem#splitStoreFile() finishes without closing the file handle in some situation |  Major | regionserver | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13577](https://issues.apache.org/jira/browse/HBASE-13577) | Documentation is pointing to wrong port for Master Web UI |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13594](https://issues.apache.org/jira/browse/HBASE-13594) | MultiRowRangeFilter shouldn't call HBaseZeroCopyByteString.wrap() directly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13596](https://issues.apache.org/jira/browse/HBASE-13596) | src assembly does not build |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13564](https://issues.apache.org/jira/browse/HBASE-13564) | Master MBeans are not published |  Major | master, metrics | Ashish Singhi | Ashish Singhi |
| [HBASE-13595](https://issues.apache.org/jira/browse/HBASE-13595) | Fix Javadoc warn induced in Bytes.java |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13600](https://issues.apache.org/jira/browse/HBASE-13600) | check\_compatibility.sh should ignore shaded jars |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13601](https://issues.apache.org/jira/browse/HBASE-13601) | Connection leak during log splitting |  Major | wal | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-13608](https://issues.apache.org/jira/browse/HBASE-13608) | 413 Error with Stargate through Knox, using AD, SPNEGO, and Pre-Auth |  Major | REST | Ted Yu | Ted Yu |
| [HBASE-13312](https://issues.apache.org/jira/browse/HBASE-13312) | SmallScannerCallable does not increment scan metrics |  Major | Client, Scanners | Lars George | Andrew Purtell |
| [HBASE-12413](https://issues.apache.org/jira/browse/HBASE-12413) | Mismatch in the equals and hashcode methods of KeyValue |  Minor | . | Jingcheng Du | Jingcheng Du |
| [HBASE-13607](https://issues.apache.org/jira/browse/HBASE-13607) | TestSplitLogManager.testGetPreviousRecoveryMode consistently failing |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13333](https://issues.apache.org/jira/browse/HBASE-13333) | Renew Scanner Lease without advancing the RegionScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13599](https://issues.apache.org/jira/browse/HBASE-13599) | The Example Provided in Section 69: Examples of the Documentation Does Not Compile |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13617](https://issues.apache.org/jira/browse/HBASE-13617) | TestReplicaWithCluster.testChangeTable timeout |  Major | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13633](https://issues.apache.org/jira/browse/HBASE-13633) | draining\_servers.rb broken with NoMethodError: undefined method 'getServerInfo' |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | Use HDFS for HFileOutputFormat2 partitioner's path |  Major | mapreduce | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13630](https://issues.apache.org/jira/browse/HBASE-13630) | Remove dead code in BufferedDataEncoder |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13648](https://issues.apache.org/jira/browse/HBASE-13648) | test-patch.sh should ignore 'protobuf.generated' |  Minor | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13649](https://issues.apache.org/jira/browse/HBASE-13649) | CellComparator.compareTimestamps javadoc inconsistent and wrong |  Minor | documentation | Dave Latham | Dave Latham |
| [HBASE-13612](https://issues.apache.org/jira/browse/HBASE-13612) | TestRegionFavoredNodes doesn't guard against setup failure |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13653](https://issues.apache.org/jira/browse/HBASE-13653) | Uninitialized HRegionServer#walFactory may result in NullPointerException at region server startup​ |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13611](https://issues.apache.org/jira/browse/HBASE-13611) | update clover to work for current versions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13580](https://issues.apache.org/jira/browse/HBASE-13580) | region\_mover.rb broken with TypeError: no public constructors for Java::OrgApacheHadoopHbaseClient::HTable |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-1989](https://issues.apache.org/jira/browse/HBASE-1989) | Admin (et al.) not accurate with Column vs. Column-Family usage |  Minor | Client | Doug Meil | Lars Francke |
| [HBASE-13634](https://issues.apache.org/jira/browse/HBASE-13634) | Avoid unsafe reference equality checks to EMPTY byte[] |  Major | Compaction, Scanners | Dave Latham | Lars Francke |
| [HBASE-13635](https://issues.apache.org/jira/browse/HBASE-13635) | Regions stuck in transition because master is incorrectly assumed dead |  Major | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13606](https://issues.apache.org/jira/browse/HBASE-13606) | AssignmentManager.assign() is not sync in both path |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13661](https://issues.apache.org/jira/browse/HBASE-13661) | Correct binary compatibility issues discovered in 1.1.0RC0 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13533](https://issues.apache.org/jira/browse/HBASE-13533) | section on configuring ~/.m2/settings.xml has no anchor |  Trivial | documentation | Nick Dimiduk | Gabor Liptak |
| [HBASE-13662](https://issues.apache.org/jira/browse/HBASE-13662) | RSRpcService.scan() throws an OutOfOrderScannerNext if the scan has a retriable failure |  Major | IPC/RPC, regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13217](https://issues.apache.org/jira/browse/HBASE-13217) | Procedure fails due to ZK issue |  Major | . | ramkrishna.s.vasudevan | Jerry He |
| [HBASE-13663](https://issues.apache.org/jira/browse/HBASE-13663) | HMaster fails to restart 'HMaster: Failed to become active master' |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |
| [HBASE-13651](https://issues.apache.org/jira/browse/HBASE-13651) | Handle StoreFileScanner FileNotFoundException |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13699](https://issues.apache.org/jira/browse/HBASE-13699) | Expand information about HBase quotas |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13668](https://issues.apache.org/jira/browse/HBASE-13668) | TestFlushRegionEntry is flaky |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13694](https://issues.apache.org/jira/browse/HBASE-13694) | CallQueueSize is incorrectly decremented until the response is sent |  Major | IPC/RPC, master, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13717](https://issues.apache.org/jira/browse/HBASE-13717) | TestBoundedRegionGroupingProvider#setMembershipDedups need to set HDFS diretory for WAL |  Minor | wal | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13704](https://issues.apache.org/jira/browse/HBASE-13704) | Hbase throws OutOfOrderScannerNextException when MultiRowRangeFilter is used |  Major | Client | Aleksandr Maksymenko | Aleksandr Maksymenko |
| [HBASE-13722](https://issues.apache.org/jira/browse/HBASE-13722) | Avoid non static method from BloomFilterUtil |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13711](https://issues.apache.org/jira/browse/HBASE-13711) | Provide an API to set min and max versions in HColumnDescriptor |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13618](https://issues.apache.org/jira/browse/HBASE-13618) | ReplicationSource is too eager to remove sinks |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13719](https://issues.apache.org/jira/browse/HBASE-13719) | Asynchronous scanner -- cache size-in-bytes bug fix |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-13700](https://issues.apache.org/jira/browse/HBASE-13700) | Allow Thrift2 HSHA server to have configurable threads |  Major | Thrift | Elliott Clark | Elliott Clark |
| [HBASE-13721](https://issues.apache.org/jira/browse/HBASE-13721) | Improve shell scan performances when using LIMIT |  Major | shell | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13709](https://issues.apache.org/jira/browse/HBASE-13709) | Updates to meta table server columns may be eclipsed |  Major | IPC/RPC, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-13731](https://issues.apache.org/jira/browse/HBASE-13731) | TestReplicationAdmin should clean up MiniZKCluster resource |  Trivial | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13741](https://issues.apache.org/jira/browse/HBASE-13741) | Disable TestRegionObserverInterface#testRecovery and testLegacyRecovery |  Minor | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13733](https://issues.apache.org/jira/browse/HBASE-13733) | Failed MiniZooKeeperCluster startup did not shutdown ZK servers |  Major | Zookeeper | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13703](https://issues.apache.org/jira/browse/HBASE-13703) | ReplicateContext should not be a member of ReplicationSource |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13604](https://issues.apache.org/jira/browse/HBASE-13604) | bin/hbase mapredcp does not include yammer-metrics jar |  Minor | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13734](https://issues.apache.org/jira/browse/HBASE-13734) | Improper timestamp checking with VisibilityScanDeleteTracker |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-13760](https://issues.apache.org/jira/browse/HBASE-13760) | Cleanup Findbugs keySet iterator warnings |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13746](https://issues.apache.org/jira/browse/HBASE-13746) | list\_replicated\_tables command is not listing table in hbase shell. |  Major | shell | Y. SREENIVASULU REDDY | Abhishek Kumar |
| [HBASE-13767](https://issues.apache.org/jira/browse/HBASE-13767) | Allow ZKAclReset to set and not just clear ZK ACLs |  Trivial | Operability, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13768](https://issues.apache.org/jira/browse/HBASE-13768) | ZooKeeper znodes are bootstrapped with insecure ACLs in a secure configuration |  Blocker | security, Zookeeper | Andrew Purtell | Enis Soztutar |
| [HBASE-13732](https://issues.apache.org/jira/browse/HBASE-13732) | TestHBaseFsck#testParallelWithRetriesHbck fails intermittently |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13778](https://issues.apache.org/jira/browse/HBASE-13778) | BoundedByteBufferPool incorrectly increasing runningAverage buffer length |  Major | io, util | Anoop Sam John | Anoop Sam John |
| [HBASE-13777](https://issues.apache.org/jira/browse/HBASE-13777) | Table fragmentation display triggers NPE on master status page |  Major | UI | Lars George | Lars George |
| [HBASE-13723](https://issues.apache.org/jira/browse/HBASE-13723) | In table.rb scanners are never closed. |  Major | shell | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13801](https://issues.apache.org/jira/browse/HBASE-13801) | Hadoop src checksum is shown instead of HBase src checksum in master / RS UI |  Major | UI | Enis Soztutar | Enis Soztutar |
| [HBASE-13797](https://issues.apache.org/jira/browse/HBASE-13797) | Fix resource leak in HBaseFsck |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13800](https://issues.apache.org/jira/browse/HBASE-13800) | TestStore#testDeleteExpiredStoreFiles should create unique data/log directory for each call |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13796](https://issues.apache.org/jira/browse/HBASE-13796) | ZKUtil doesn't clean quorum setting properly |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-13802](https://issues.apache.org/jira/browse/HBASE-13802) | Procedure V2: Master fails to come up due to rollback of create namespace table |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13776](https://issues.apache.org/jira/browse/HBASE-13776) | Setting illegal versions for HColumnDescriptor does not throw IllegalArgumentException |  Major | API | Yuhao Bi | Yuhao Bi |
| [HBASE-13813](https://issues.apache.org/jira/browse/HBASE-13813) | Fix Javadoc warnings in Procedure.java |  Minor | documentation | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13812](https://issues.apache.org/jira/browse/HBASE-13812) | Deleting of last Column Family of a table should not be allowed |  Major | master | Sophia Feng | Enis Soztutar |
| [HBASE-13809](https://issues.apache.org/jira/browse/HBASE-13809) | TestRowTooBig should use HDFS directory for its region directory |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13638](https://issues.apache.org/jira/browse/HBASE-13638) | Put copy constructor is shallow |  Major | Client | Dave Latham | Changgeng Li |
| [HBASE-13820](https://issues.apache.org/jira/browse/HBASE-13820) | Zookeeper is failing to start |  Critical | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13647](https://issues.apache.org/jira/browse/HBASE-13647) | Default value for hbase.client.operation.timeout is too high |  Blocker | Client | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13824](https://issues.apache.org/jira/browse/HBASE-13824) | TestGenerateDelegationToken: Master fails to start in Windows environment |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13826](https://issues.apache.org/jira/browse/HBASE-13826) | Unable to create table when group acls are appropriately set. |  Major | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13831](https://issues.apache.org/jira/browse/HBASE-13831) | TestHBaseFsck#testParallelHbck is flaky against hadoop 2.6+ |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13779](https://issues.apache.org/jira/browse/HBASE-13779) | Calling table.exists() before table.get() end up with an empty Result |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13789](https://issues.apache.org/jira/browse/HBASE-13789) | ForeignException should not be sent to the client |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13729](https://issues.apache.org/jira/browse/HBASE-13729) | Old hbase.regionserver.global.memstore.upperLimit and lowerLimit properties are ignored if present |  Critical | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13834](https://issues.apache.org/jira/browse/HBASE-13834) | Evict count not properly passed to HeapMemoryTuner. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13851](https://issues.apache.org/jira/browse/HBASE-13851) | RpcClientImpl.close() can hang with cancelled replica RPCs |  Major | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-13686](https://issues.apache.org/jira/browse/HBASE-13686) | Fail to limit rate in RateLimiter |  Major | Client | Guanghao Zhang | Ashish Singhi |
| [HBASE-13853](https://issues.apache.org/jira/browse/HBASE-13853) | ITBLL improvements after HBASE-13811 |  Blocker | integration tests, tooling, wal | Enis Soztutar | Enis Soztutar |
| [HBASE-13811](https://issues.apache.org/jira/browse/HBASE-13811) | Splitting WALs, we are filtering out too many edits -\> DATALOSS |  Critical | wal | stack | stack |
| [HBASE-13847](https://issues.apache.org/jira/browse/HBASE-13847) | getWriteRequestCount function in HRegionServer uses int variable to return the count. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13845](https://issues.apache.org/jira/browse/HBASE-13845) | Expire of one region server carrying meta can bring down the master |  Major | master | Jerry He | Jerry He |
| [HBASE-13875](https://issues.apache.org/jira/browse/HBASE-13875) | Clock skew between master and region server may render restored region without server address |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-13873](https://issues.apache.org/jira/browse/HBASE-13873) | LoadTestTool addAuthInfoToConf throws UnsupportedOperationException |  Major | integration tests | Yerui Sun | Yerui Sun |
| [HBASE-13878](https://issues.apache.org/jira/browse/HBASE-13878) | Set hbase.fs.tmp.dir config in HBaseTestingUtility.java for Phoenix UT to use |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13560](https://issues.apache.org/jira/browse/HBASE-13560) | Large compaction queue should steal from small compaction queue when idle |  Major | Compaction | Elliott Clark | Changgeng Li |
| [HBASE-13892](https://issues.apache.org/jira/browse/HBASE-13892) | Scanner with all results filtered out results in NPE |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-13901](https://issues.apache.org/jira/browse/HBASE-13901) | Error while calling watcher on creating and deleting an HBase table |  Minor | . | Neha Bathra | Ashish Singhi |
| [HBASE-13833](https://issues.apache.org/jira/browse/HBASE-13833) | LoadIncrementalHFile.doBulkLoad(Path,HTable) doesn't handle unmanaged connections when using SecureBulkLoad |  Major | tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13905](https://issues.apache.org/jira/browse/HBASE-13905) | TestRecoveredEdits.testReplayWorksThoughLotsOfFlushing failing consistently on branch-1.1 |  Critical | regionserver, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13888](https://issues.apache.org/jira/browse/HBASE-13888) | Fix refill bug from HBASE-13686 |  Major | regionserver | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13821](https://issues.apache.org/jira/browse/HBASE-13821) | WARN if hbase.bucketcache.percentage.in.combinedcache is set |  Minor | regionserver, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13279](https://issues.apache.org/jira/browse/HBASE-13279) | Add src/main/asciidoc/asciidoctor.css to RAT exclusion list in POM |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13913](https://issues.apache.org/jira/browse/HBASE-13913) | RAT exclusion list missing asciidoctor support files |  Major | . | Sean Busbey | Andrew Purtell |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13877](https://issues.apache.org/jira/browse/HBASE-13877) | Interrupt to flush from TableFlushProcedure causes dataloss in ITBLL |  Blocker | integration tests, proc-v2 | Enis Soztutar | Enis Soztutar |
| [HBASE-13933](https://issues.apache.org/jira/browse/HBASE-13933) | DBE's seekBefore with tags corrupts the tag's offset information thus leading to incorrect results |  Critical | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13945](https://issues.apache.org/jira/browse/HBASE-13945) | Prefix\_Tree seekBefore() does not work correctly |  Major | io | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13893](https://issues.apache.org/jira/browse/HBASE-13893) | Replace HTable with Table in client tests |  Major | Client, test | Jurriaan Mous | Jurriaan Mous |
| [HBASE-13923](https://issues.apache.org/jira/browse/HBASE-13923) | Loaded region coprocessors are not reported in shell status command |  Major | regionserver, shell | Lars George | Ashish Singhi |
| [HBASE-13969](https://issues.apache.org/jira/browse/HBASE-13969) | AuthenticationTokenSecretManager is never stopped in RPCServer |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13974](https://issues.apache.org/jira/browse/HBASE-13974) | TestRateLimiter#testFixedIntervalResourceAvailability may fail |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13863](https://issues.apache.org/jira/browse/HBASE-13863) | Multi-wal feature breaks reported number and size of HLogs |  Major | regionserver, UI | Elliott Clark | Abhilash |
| [HBASE-13930](https://issues.apache.org/jira/browse/HBASE-13930) | Exclude Findbugs packages from shaded jars |  Major | build, Client | Nick Dimiduk | Gabor Liptak |
| [HBASE-13989](https://issues.apache.org/jira/browse/HBASE-13989) | Threshold for combined MemStore and BlockCache percentages is not checked |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-13995](https://issues.apache.org/jira/browse/HBASE-13995) | ServerName is not fully case insensitive |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13978](https://issues.apache.org/jira/browse/HBASE-13978) | Variable never assigned in SimpleTotalOrderPartitioner.getPartition() |  Major | mapreduce | Lars George | Bhupendra Kumar Jain |
| [HBASE-13895](https://issues.apache.org/jira/browse/HBASE-13895) | DATALOSS: Region assigned before WAL replay when abort |  Critical | Recovery, Region Assignment, wal | stack | stack |
| [HBASE-13970](https://issues.apache.org/jira/browse/HBASE-13970) | NPE during compaction in trunk |  Major | regionserver | ramkrishna.s.vasudevan | Duo Zhang |
| [HBASE-14005](https://issues.apache.org/jira/browse/HBASE-14005) | Set permission to .top hfile in LoadIncrementalHFiles |  Trivial | . | Francesco MDE | Francesco MDE |
| [HBASE-14010](https://issues.apache.org/jira/browse/HBASE-14010) | TestRegionRebalancing.testRebalanceOnRegionServerNumberChange fails; cluster not balanced |  Major | test | stack | stack |
| [HBASE-13861](https://issues.apache.org/jira/browse/HBASE-13861) | BucketCacheTmpl.jamon has wrong bucket free and used labels |  Major | regionserver, UI | Lars George | Matt Warhaftig |
| [HBASE-14011](https://issues.apache.org/jira/browse/HBASE-14011) | MultiByteBuffer position based reads does not work correctly |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13329](https://issues.apache.org/jira/browse/HBASE-13329) | ArrayIndexOutOfBoundsException in CellComparator#getMinimumMidpointArray |  Critical | regionserver | Ruben Aguiar | Lars Hofhansl |
| [HBASE-14012](https://issues.apache.org/jira/browse/HBASE-14012) | Double Assignment and Dataloss when ServerCrashProcedure runs during Master failover |  Blocker | master, Region Assignment | stack | stack |
| [HBASE-13352](https://issues.apache.org/jira/browse/HBASE-13352) | Add hbase.import.version to Import usage. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13988](https://issues.apache.org/jira/browse/HBASE-13988) | Add exception handler for lease thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13561](https://issues.apache.org/jira/browse/HBASE-13561) | ITBLL.Verify doesn't actually evaluate counters after job completes |  Major | integration tests | Josh Elser | Josh Elser |
| [HBASE-13337](https://issues.apache.org/jira/browse/HBASE-13337) | Table regions are not assigning back, after restarting all regionservers at once. |  Blocker | Region Assignment | Y. SREENIVASULU REDDY | Samir Ahmic |
| [HBASE-14042](https://issues.apache.org/jira/browse/HBASE-14042) | Fix FATAL level logging in FSHLog where logged for non fatal exceptions |  Major | Operability, wal | Andrew Purtell | Andrew Purtell |
| [HBASE-14029](https://issues.apache.org/jira/browse/HBASE-14029) | getting started for standalone still references hadoop-version-specific binary artifacts |  Major | documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13997](https://issues.apache.org/jira/browse/HBASE-13997) | ScannerCallableWithReplicas cause Infinitely blocking |  Minor | Client | Zephyr Guo | Zephyr Guo |
| [HBASE-14073](https://issues.apache.org/jira/browse/HBASE-14073) | TestRemoteTable.testDelete failed in the latest trunk code |  Major | REST | Jingcheng Du | Jingcheng Du |
| [HBASE-13897](https://issues.apache.org/jira/browse/HBASE-13897) | OOM may occur when Import imports a row with too many KeyValues |  Major | . | Liu Junhong | Liu Junhong |
| [HBASE-14041](https://issues.apache.org/jira/browse/HBASE-14041) | Client MetaCache is cleared if a ThrottlingException is thrown |  Minor | Client | Eungsop Yoo | Eungsop Yoo |
| [HBASE-14077](https://issues.apache.org/jira/browse/HBASE-14077) | Add package to hbase-protocol protobuf files. |  Major | Protobufs | Elliott Clark | Elliott Clark |
| [HBASE-14094](https://issues.apache.org/jira/browse/HBASE-14094) | Procedure.proto can't be compiled to C++ |  Major | proc-v2, Protobufs | Elliott Clark | Elliott Clark |
| [HBASE-14089](https://issues.apache.org/jira/browse/HBASE-14089) | Remove unnecessary draw of system entropy from RecoverableZooKeeper |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14100](https://issues.apache.org/jira/browse/HBASE-14100) | Fix high priority findbugs warnings |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-14050](https://issues.apache.org/jira/browse/HBASE-14050) | NPE in org.apache.hadoop.hbase.ipc.RpcServer$Connection.readAndProcess |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13971](https://issues.apache.org/jira/browse/HBASE-13971) | Flushes stuck since 6 hours on a regionserver. |  Critical | regionserver | Abhilash | Ted Yu |
| [HBASE-14076](https://issues.apache.org/jira/browse/HBASE-14076) | ResultSerialization and MutationSerialization can throw InvalidProtocolBufferException when serializing a cell larger than 64MB |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14106](https://issues.apache.org/jira/browse/HBASE-14106) | TestProcedureRecovery is flaky |  Major | proc-v2, test | Andrew Purtell | Matteo Bertozzi |
| [HBASE-14000](https://issues.apache.org/jira/browse/HBASE-14000) | Region server failed to report to Master and was stuck in reportForDuty retry loop |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14037](https://issues.apache.org/jira/browse/HBASE-14037) | Deletion of a table from backup set results int RTE during next backup |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14065](https://issues.apache.org/jira/browse/HBASE-14065) | ref guide section on release candidate generation refers to old doc files |  Major | documentation | Sean Busbey | Gabor Liptak |
| [HBASE-14119](https://issues.apache.org/jira/browse/HBASE-14119) | Show meaningful error messages instead of stack traces in hbase shell commands. Fixing few commands in this jira. |  Minor | . | Appy | Appy |
| [HBASE-14115](https://issues.apache.org/jira/browse/HBASE-14115) | Fix resource leak in HMasterCommandLine |  Major | master, tooling | Yuhao Bi | Yuhao Bi |
| [HBASE-14146](https://issues.apache.org/jira/browse/HBASE-14146) | Once replication sees an error it slows down forever |  Major | Replication | Elliott Clark | Elliott Clark |
| [HBASE-14156](https://issues.apache.org/jira/browse/HBASE-14156) | Fix test failure in TestOpenTableInCoprocessor |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-10933](https://issues.apache.org/jira/browse/HBASE-10933) | hbck -fixHdfsOrphans is not working properly it throws null pointer exception |  Critical | hbck | Deepak Sharma | Kashif |
| [HBASE-14024](https://issues.apache.org/jira/browse/HBASE-14024) | ImportTsv is not loading hbase-default.xml |  Critical | mapreduce | Ashish Singhi | Ashish Singhi |
| [HBASE-14157](https://issues.apache.org/jira/browse/HBASE-14157) | Interfaces implemented by subclasses should be checked when registering CoprocessorService |  Major | Coprocessors | Alok Lal | Ted Yu |
| [HBASE-14153](https://issues.apache.org/jira/browse/HBASE-14153) | Typo in ProcedureManagerHost.MASTER\_PROCEUDRE\_CONF\_KEY |  Trivial | . | Konstantin Shvachko | Konstantin Shvachko |
| [HBASE-14155](https://issues.apache.org/jira/browse/HBASE-14155) | StackOverflowError in reverse scan |  Critical | regionserver, Scanners | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-14173](https://issues.apache.org/jira/browse/HBASE-14173) | includeMVCCReadpoint parameter in DefaultCompactor#createTmpWriter() represents no-op |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14168](https://issues.apache.org/jira/browse/HBASE-14168) | Avoid useless retry for DoNotRetryIOException in TableRecordReaderImpl |  Minor | mapreduce | zhouyingchao | zhouyingchao |
| [HBASE-14162](https://issues.apache.org/jira/browse/HBASE-14162) | Fixing maven target for regenerating thrift classes fails against 0.9.2 |  Blocker | build, Thrift | Sean Busbey | Srikanth Srungarapu |
| [HBASE-13864](https://issues.apache.org/jira/browse/HBASE-13864) | HColumnDescriptor should parse the output from master and from describe for TTL |  Major | shell | Elliott Clark | Ashu Pachauri |
| [HBASE-14185](https://issues.apache.org/jira/browse/HBASE-14185) | Incorrect region names logged by MemStoreFlusher |  Minor | regionserver | Biju Nair | Biju Nair |
| [HBASE-14021](https://issues.apache.org/jira/browse/HBASE-14021) | Quota table has a wrong description on the UI |  Minor | UI | Ashish Singhi | Ashish Singhi |
| [HBASE-14183](https://issues.apache.org/jira/browse/HBASE-14183) | [Shell] Scanning hbase meta table is failing in master branch |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-14178](https://issues.apache.org/jira/browse/HBASE-14178) | regionserver blocks because of waiting for offsetLock |  Major | regionserver | Heng Chen | Heng Chen |
| [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2) |  Trivial | regionserver | Vladimir Rodionov | Gabor Liptak |
| [HBASE-13825](https://issues.apache.org/jira/browse/HBASE-13825) | Use ProtobufUtil#mergeFrom and ProtobufUtil#mergeDelimitedFrom in place of builder methods of same name |  Major | util | Dev Lakhani | Andrew Purtell |
| [HBASE-12865](https://issues.apache.org/jira/browse/HBASE-12865) | WALs may be deleted before they are replicated to peers |  Critical | Replication | Liu Shaohui | He Liangliang |
| [HBASE-13924](https://issues.apache.org/jira/browse/HBASE-13924) | Description for hbase.dynamic.jars.dir is wrong |  Major | . | Lars George | Misty Stanley-Jones |
| [HBASE-14092](https://issues.apache.org/jira/browse/HBASE-14092) | hbck should run without locks by default and only disable the balancer when necessary |  Major | hbck, util | Elliott Clark | Elliott Clark |
| [HBASE-5878](https://issues.apache.org/jira/browse/HBASE-5878) | Use getVisibleLength public api from HdfsDataInputStream from Hadoop-2. |  Major | wal | Uma Maheswara Rao G | Ashish Singhi |
| [HBASE-13062](https://issues.apache.org/jira/browse/HBASE-13062) | Add documentation coverage for configuring dns server with thrift and rest gateways |  Minor | documentation | Srikanth Srungarapu | Misty Stanley-Jones |
| [HBASE-14206](https://issues.apache.org/jira/browse/HBASE-14206) | MultiRowRangeFilter returns records whose rowKeys are out of allowed ranges |  Critical | Filters | Anton Nazaruk | Anton Nazaruk |
| [HBASE-14208](https://issues.apache.org/jira/browse/HBASE-14208) | Remove yarn dependencies on -common and -client |  Major | build, Client | Elliott Clark | Elliott Clark |
| [HBASE-13889](https://issues.apache.org/jira/browse/HBASE-13889) | Fix hbase-shaded-client artifact so it works on hbase-downstreamer |  Critical | Client | Dmitry Minkovsky | Elliott Clark |
| [HBASE-14201](https://issues.apache.org/jira/browse/HBASE-14201) | hbck should not take a lock unless fixing errors |  Major | hbck, util | Simon Law | Simon Law |
| [HBASE-14209](https://issues.apache.org/jira/browse/HBASE-14209) | TestShell visibility tests failing |  Major | security, shell | Andrew Purtell | Andrew Purtell |
| [HBASE-14196](https://issues.apache.org/jira/browse/HBASE-14196) | Thrift server idle connection timeout issue |  Major | Thrift | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14098](https://issues.apache.org/jira/browse/HBASE-14098) | Allow dropping caches behind compactions |  Major | Compaction, hadoop2, HFile | Elliott Clark | Elliott Clark |
| [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | Acknowledged writes may get lost if regionserver clock is set backwards |  Major | regionserver | Tobi Vollebregt | Enis Soztutar |
| [HBASE-14214](https://issues.apache.org/jira/browse/HBASE-14214) | list\_labels shouldn't raise ArgumentError if no labels are defined |  Minor | . | Andrew Purtell | Anoop Sam John |
| [HBASE-14219](https://issues.apache.org/jira/browse/HBASE-14219) | src tgz no longer builds after HBASE-14085 |  Blocker | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | Limit column width in table.jsp |  Minor | Operability, UI | Jean-Marc Spaggiari | Matt Warhaftig |
| [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state |  Major | regionserver | Devaraj Das | Nick Dimiduk |
| [HBASE-14166](https://issues.apache.org/jira/browse/HBASE-14166) | Per-Region metrics can be stale |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-14228](https://issues.apache.org/jira/browse/HBASE-14228) | Close BufferedMutator and connection in MultiTableOutputFormat |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-14241](https://issues.apache.org/jira/browse/HBASE-14241) | Fix deadlock during cluster shutdown due to concurrent connection close |  Critical | master, metrics | Andrew Purtell | Ted Yu |
| [HBASE-14234](https://issues.apache.org/jira/browse/HBASE-14234) | Procedure-V2: Exception encountered in WALProcedureStore#rollWriter() should be properly handled |  Minor | proc-v2 | Ted Yu | Ted Yu |
| [HBASE-14243](https://issues.apache.org/jira/browse/HBASE-14243) | Incorrect NOTICE file in hbase-it test-jar |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14249](https://issues.apache.org/jira/browse/HBASE-14249) | shaded jar modules create spurious source and test jars with incorrect LICENSE/NOTICE info |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-14251](https://issues.apache.org/jira/browse/HBASE-14251) | javadoc jars use LICENSE/NOTICE from primary artifact |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14250](https://issues.apache.org/jira/browse/HBASE-14250) | branch-1.1 hbase-server test-jar has incorrect LICENSE |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14291](https://issues.apache.org/jira/browse/HBASE-14291) | NPE On StochasticLoadBalancer Balance Involving RS With No Regions |  Minor | Balancer | Matt Warhaftig | Ted Yu |
| [HBASE-14273](https://issues.apache.org/jira/browse/HBASE-14273) | Rename MVCC to MVCC: From MultiVersionConsistencyControl to MultiVersionConcurrencyControl |  Major | regionserver | stack | Lars Francke |
| [HBASE-13480](https://issues.apache.org/jira/browse/HBASE-13480) | ShortCircuitConnection doesn't short-circuit all calls as expected |  Critical | Client | Josh Elser | Jingcheng Du |
| [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | Fix coprocessor handling of duplicate classes |  Critical | Coprocessors | Lars George | stack |
| [HBASE-14302](https://issues.apache.org/jira/browse/HBASE-14302) | TableSnapshotInputFormat should not create back references when restoring snapshot |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14269](https://issues.apache.org/jira/browse/HBASE-14269) | FuzzyRowFilter omits certain rows when multiple fuzzy keys exist |  Major | Filters | hongbin ma | hongbin ma |
| [HBASE-13339](https://issues.apache.org/jira/browse/HBASE-13339) | Update default Hadoop version to latest for master |  Blocker | build | Elliott Clark | Elliott Clark |
| [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | After a Connection sees ConnectionClosingException it never recovers |  Critical | Client | Elliott Clark | Elliott Clark |
| [HBASE-14315](https://issues.apache.org/jira/browse/HBASE-14315) | Save one call to KeyValueHeap.peek per row |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14258](https://issues.apache.org/jira/browse/HBASE-14258) | Make region\_mover.rb script case insensitive with regard to hostname |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14124](https://issues.apache.org/jira/browse/HBASE-14124) | Failed backup is not handled properly in incremental mode |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-13221](https://issues.apache.org/jira/browse/HBASE-13221) | HDFS Transparent Encryption breaks WAL writing in Hadoop 2.6.0 |  Critical | documentation, wal | Sean Busbey | Sean Busbey |
| [HBASE-14354](https://issues.apache.org/jira/browse/HBASE-14354) | Minor improvements for usage of the mlock agent |  Trivial | hbase, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14337](https://issues.apache.org/jira/browse/HBASE-14337) | build error on master |  Major | . | Gabor Liptak | Sean Busbey |
| [HBASE-12465](https://issues.apache.org/jira/browse/HBASE-12465) | HBase master start fails due to incorrect file creations |  Major | master | Biju Nair | Alicia Ying Shu |
| [HBASE-14229](https://issues.apache.org/jira/browse/HBASE-14229) | Flushing canceled by coprocessor still leads to memstoreSize set down |  Major | regionserver | Yerui Sun | Yerui Sun |
| [HBASE-14359](https://issues.apache.org/jira/browse/HBASE-14359) | HTable#close will hang forever if unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Major | Client | Yu Li | Victor Xu |
| [HBASE-14327](https://issues.apache.org/jira/browse/HBASE-14327) | TestIOFencing#testFencingAroundCompactionAfterWALSync is flaky |  Critical | test | Dima Spivak | Heng Chen |
| [HBASE-14317](https://issues.apache.org/jira/browse/HBASE-14317) | Stuck FSHLog: bad disk (HDFS-8960) and can't roll WAL |  Blocker | wal | stack | stack |
| [HBASE-14384](https://issues.apache.org/jira/browse/HBASE-14384) | Trying to run canary locally with -regionserver option causes exception |  Major | canary | Sanjeev Srivatsa | Sanjeev Srivatsa |
| [HBASE-14393](https://issues.apache.org/jira/browse/HBASE-14393) | Have TestHFileEncryption clean up after itself so it don't go all zombie on us |  Major | test | stack | stack |
| [HBASE-14385](https://issues.apache.org/jira/browse/HBASE-14385) | Close the sockets that is missing in connection closure. |  Minor | Client | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14382](https://issues.apache.org/jira/browse/HBASE-14382) | TestInterfaceAudienceAnnotations should hadoop-compt module resources |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14392](https://issues.apache.org/jira/browse/HBASE-14392) | [tests] TestLogRollingNoCluster fails on master from time to time |  Major | test | stack | stack |
| [HBASE-14307](https://issues.apache.org/jira/browse/HBASE-14307) | Incorrect use of positional read api in HFileBlock |  Major | io | Shradha Revankar | Chris Nauroth |
| [HBASE-14380](https://issues.apache.org/jira/browse/HBASE-14380) | Correct data gets skipped along with bad data in importTsv bulk load thru TsvImporterTextMapper |  Major | mapreduce, tooling | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-14145](https://issues.apache.org/jira/browse/HBASE-14145) | Allow the Canary in regionserver mode to try all regions on the server, not just one |  Major | canary, util | Elliott Clark | Sanjeev Srivatsa |
| [HBASE-14400](https://issues.apache.org/jira/browse/HBASE-14400) | Fix HBase RPC protection documentation |  Critical | encryption, IPC/RPC, security | Appy | Appy |
| [HBASE-14429](https://issues.apache.org/jira/browse/HBASE-14429) | Checkstyle report is broken |  Minor | scripts | Daniel Templeton | Daniel Templeton |
| [HBASE-14411](https://issues.apache.org/jira/browse/HBASE-14411) | Fix unit test failures when using multiwal as default WAL provider |  Major | . | Yu Li | Yu Li |
| [HBASE-13250](https://issues.apache.org/jira/browse/HBASE-13250) | chown of ExportSnapshot does not cover all path and files |  Critical | snapshots | He Liangliang | He Liangliang |
| [HBASE-14449](https://issues.apache.org/jira/browse/HBASE-14449) | Rewrite deadlock prevention for concurrent connection close |  Major | master, metrics | Ted Yu | Ted Yu |
| [HBASE-14431](https://issues.apache.org/jira/browse/HBASE-14431) | AsyncRpcClient#removeConnection() never removes connection from connections pool if server fails |  Critical | IPC/RPC | Samir Ahmic | Samir Ahmic |
| [HBASE-14280](https://issues.apache.org/jira/browse/HBASE-14280) | Bulk Upload from HA cluster to remote HA hbase cluster fails |  Minor | hadoop2, regionserver | Ankit Singhal | Ankit Singhal |
| [HBASE-14338](https://issues.apache.org/jira/browse/HBASE-14338) | License notification misspells 'Asciidoctor' |  Minor | . | Sean Busbey | Lars Francke |
| [HBASE-14445](https://issues.apache.org/jira/browse/HBASE-14445) | ExportSnapshot does not honor -chmod option |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-13324](https://issues.apache.org/jira/browse/HBASE-13324) | o.a.h.h.Coprocessor should be LimitedPrivate("Coprocessor") |  Minor | API | Lars George | Andrew Purtell |
| [HBASE-14486](https://issues.apache.org/jira/browse/HBASE-14486) | Disable TestRegionPlacement, a flakey test for an unfinished feature |  Major | test | stack | stack |
| [HBASE-14469](https://issues.apache.org/jira/browse/HBASE-14469) | Fix some comment, validation and logging around memstore lower limit configuration |  Minor | . | Appy | Appy |
| [HBASE-14471](https://issues.apache.org/jira/browse/HBASE-14471) | Thrift -  HTTP Error 413 full HEAD if using kerberos authentication |  Major | Thrift | huaxiang sun | huaxiang sun |
| [HBASE-14492](https://issues.apache.org/jira/browse/HBASE-14492) | Increase REST server header buffer size from 8k to 64k |  Major | REST | huaxiang sun | huaxiang sun |
| [HBASE-14370](https://issues.apache.org/jira/browse/HBASE-14370) | Use separate thread for calling ZKPermissionWatcher#refreshNodes() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14489](https://issues.apache.org/jira/browse/HBASE-14489) | postScannerFilterRow consumes a lot of CPU |  Major | Coprocessors, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14500](https://issues.apache.org/jira/browse/HBASE-14500) | Remove load of deprecated MOB ruby scripts after HBASE-14227 |  Major | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14437](https://issues.apache.org/jira/browse/HBASE-14437) | ArithmeticException in ReplicationInterClusterEndpoint |  Minor | Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14473](https://issues.apache.org/jira/browse/HBASE-14473) | Compute region locality in parallel |  Major | Balancer | Elliott Clark | Elliott Clark |
| [HBASE-14362](https://issues.apache.org/jira/browse/HBASE-14362) | org.apache.hadoop.hbase.master.procedure.TestWALProcedureStoreOnHDFS is super duper flaky |  Critical | test | Dima Spivak | Heng Chen |
| [HBASE-14510](https://issues.apache.org/jira/browse/HBASE-14510) | Can not set coprocessor from Shell after HBASE-14224 |  Major | Coprocessors, shell | Yerui Sun | Yerui Sun |
| [HBASE-14394](https://issues.apache.org/jira/browse/HBASE-14394) | Properly close the connection after reading records from table. |  Minor | mapreduce | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14518](https://issues.apache.org/jira/browse/HBASE-14518) | Give TestScanEarlyTermination the same treatment as 'HBASE-14378 Get TestAccessController\* passing again...' -- up priority handlers |  Major | test | stack | stack |
| [HBASE-14494](https://issues.apache.org/jira/browse/HBASE-14494) | Wrong usage messages on shell commands |  Minor | shell | Josh Elser | Josh Elser |
| [HBASE-14475](https://issues.apache.org/jira/browse/HBASE-14475) | Region split requests are always audited with "hbase" user rather than request user |  Major | regionserver, security | Enis Soztutar | Ted Yu |
| [HBASE-13143](https://issues.apache.org/jira/browse/HBASE-13143) | TestCacheOnWrite is flaky and needs a diet |  Critical | test | Andrew Purtell | Andrew Purtell |
| [HBASE-13744](https://issues.apache.org/jira/browse/HBASE-13744) | TestCorruptedRegionStoreFile is flaky |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-14292](https://issues.apache.org/jira/browse/HBASE-14292) | Call Me Maybe HBase links haved moved |  Minor | documentation | Robert Yokota | Andrew Purtell |
| [HBASE-13770](https://issues.apache.org/jira/browse/HBASE-13770) | Programmatic JAAS configuration option for secure zookeeper may be broken |  Major | Operability, security | Andrew Purtell | Maddineni Sukumar |
| [HBASE-14499](https://issues.apache.org/jira/browse/HBASE-14499) | Master coprocessors shutdown will not happen on master abort |  Major | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14545](https://issues.apache.org/jira/browse/HBASE-14545) | TestMasterFailover often times out |  Major | test | Mikhail Antonov | stack |
| [HBASE-14367](https://issues.apache.org/jira/browse/HBASE-14367) | Add normalization support to shell |  Major | Balancer, shell | Lars George | Mikhail Antonov |
| [HBASE-14544](https://issues.apache.org/jira/browse/HBASE-14544) | Allow HConnectionImpl to not refresh the dns on errors |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-14347](https://issues.apache.org/jira/browse/HBASE-14347) | Add a switch to DynamicClassLoader to disable it |  Major | Client, defaults, regionserver | Esteban Gutierrez | huaxiang sun |
| [HBASE-14555](https://issues.apache.org/jira/browse/HBASE-14555) | Deadlock in MVCC branch-1.2 toString() |  Critical | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-12615](https://issues.apache.org/jira/browse/HBASE-12615) | Document GC conserving guidelines for contributors |  Major | documentation | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-12983](https://issues.apache.org/jira/browse/HBASE-12983) | HBase book mentions hadoop.ssl.enabled when it should be hbase.ssl.enabled |  Major | documentation | Esteban Gutierrez | Misty Stanley-Jones |
| [HBASE-14346](https://issues.apache.org/jira/browse/HBASE-14346) | Typo in FamilyFilter |  Trivial | documentation | Joshua Batson | Lars Francke |
| [HBASE-14497](https://issues.apache.org/jira/browse/HBASE-14497) | Reverse Scan threw StackOverflow caused by readPt checking |  Major | . | Yerui Sun | Yerui Sun |
| [HBASE-14525](https://issues.apache.org/jira/browse/HBASE-14525) | Append and increment operation throws NullPointerException on non-existing column families. |  Minor | shell | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13858](https://issues.apache.org/jira/browse/HBASE-13858) | RS/MasterDumpServlet dumps threads before its “Stacks” header |  Trivial | master, regionserver, UI | Lars George | Fred Liu |
| [HBASE-14581](https://issues.apache.org/jira/browse/HBASE-14581) | Znode cleanup throws auth exception in secure mode |  Major | security, Zookeeper | Ted Yu | Ted Yu |
| [HBASE-14578](https://issues.apache.org/jira/browse/HBASE-14578) | URISyntaxException during snapshot restore for table with user defined namespace |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14577](https://issues.apache.org/jira/browse/HBASE-14577) | HBase shell help for scan and returning a column family has a typo |  Trivial | shell | Dima Spivak | Dima Spivak |
| [HBASE-14592](https://issues.apache.org/jira/browse/HBASE-14592) | BatchRestartRsAction always restarts 0 RS when running SlowDeterministicMonkey |  Major | integration tests | Yu Li | Yu Li |
| [HBASE-14211](https://issues.apache.org/jira/browse/HBASE-14211) | Add more rigorous integration tests of splits |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14501](https://issues.apache.org/jira/browse/HBASE-14501) | NPE in replication when HDFS transparent encryption is enabled. |  Critical | Replication, security | Enis Soztutar | Enis Soztutar |
| [HBASE-14599](https://issues.apache.org/jira/browse/HBASE-14599) | Modify site config to use protocol-relative URLs for CSS/JS |  Blocker | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14591](https://issues.apache.org/jira/browse/HBASE-14591) | Region with reference hfile may split after a forced split in IncreasingToUpperBoundRegionSplitPolicy |  Critical | regionserver | Liu Shaohui | Liu Shaohui |
| [HBASE-14598](https://issues.apache.org/jira/browse/HBASE-14598) | ByteBufferOutputStream grows its HeapByteBuffer beyond JVM limitations |  Major | Client, io | Ian Friedman | Ian Friedman |
| [HBASE-14608](https://issues.apache.org/jira/browse/HBASE-14608) | testWalRollOnLowReplication has some risk to assert failed after HBASE-14600 |  Major | test | Heng Chen | Heng Chen |
| [HBASE-14521](https://issues.apache.org/jira/browse/HBASE-14521) | Unify the semantic of hbase.client.retries.number |  Major | . | Yu Li | Yu Li |
| [HBASE-14594](https://issues.apache.org/jira/browse/HBASE-14594) | Use new DNS API introduced in HADOOP-12437 |  Major | util | Josh Elser | Josh Elser |
| [HBASE-14474](https://issues.apache.org/jira/browse/HBASE-14474) | DeadLock in RpcClientImpl.Connection.close() |  Blocker | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-14597](https://issues.apache.org/jira/browse/HBASE-14597) | Fix Groups cache in multi-threaded env |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14625](https://issues.apache.org/jira/browse/HBASE-14625) | Chaos Monkey should shut down faster |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14621](https://issues.apache.org/jira/browse/HBASE-14621) | ReplicationLogCleaner gets stuck when a regionserver crashes |  Critical | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14634](https://issues.apache.org/jira/browse/HBASE-14634) | Disable flakey TestSnapshotCloneIndependence.testOnlineSnapshotDeleteIndependent |  Major | test | stack | stack |
| [HBASE-14458](https://issues.apache.org/jira/browse/HBASE-14458) | AsyncRpcClient#createRpcChannel() should check and remove dead channel before creating new one to same server |  Critical | IPC/RPC | Samir Ahmic | Samir Ahmic |
| [HBASE-12558](https://issues.apache.org/jira/browse/HBASE-12558) | Disable TestHCM.testClusterStatus Unexpected exception, expected\<org.apache.hadoop.hbase.regionserver.RegionServerStoppedException\> but was\<junit.framework.AssertionFailedError\> |  Major | test | stack | stack |
| [HBASE-14606](https://issues.apache.org/jira/browse/HBASE-14606) | TestSecureLoadIncrementalHFiles tests timed out in trunk build on apache |  Major | test | stack | stack |
| [HBASE-14604](https://issues.apache.org/jira/browse/HBASE-14604) | Improve MoveCostFunction in StochasticLoadBalancer |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14366](https://issues.apache.org/jira/browse/HBASE-14366) | NPE in case visibility expression is not present in labels table during importtsv run |  Minor | . | Y. SREENIVASULU REDDY | Bhupendra Kumar Jain |
| [HBASE-14633](https://issues.apache.org/jira/browse/HBASE-14633) | Try fluid width UI |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-14427](https://issues.apache.org/jira/browse/HBASE-14427) | Fix 'should' assertions in TestFastFail |  Minor | test | stack | Abhishek Singh Chouhan |
| [HBASE-14663](https://issues.apache.org/jira/browse/HBASE-14663) | HStore::close does not honor config hbase.rs.evictblocksonclose |  Minor | BlockCache, regionserver | Randy Fox | Vladimir Rodionov |
| [HBASE-14326](https://issues.apache.org/jira/browse/HBASE-14326) | HBase book: fix definition of max min size to compact |  Major | documentation | Vladimir Rodionov | Misty Stanley-Jones |
| [HBASE-14603](https://issues.apache.org/jira/browse/HBASE-14603) | Lots of work on the POM to enhance Javadocs, Xrefs |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | Allow loading a MonkeyFactory by class name |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14667](https://issues.apache.org/jira/browse/HBASE-14667) | HBaseFsck constructors have diverged |  Minor | hbck | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14681](https://issues.apache.org/jira/browse/HBASE-14681) | Upgrade Checkstyle plugin to 2.16 |  Major | build | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14343](https://issues.apache.org/jira/browse/HBASE-14343) | Fix debug message in SimpleRegionNormalizer for small regions |  Trivial | regionserver | Lars George | Lars Francke |
| [HBASE-14676](https://issues.apache.org/jira/browse/HBASE-14676) | HBaseTestCase clean out: Purge Incommon Interface and Table and Region implementations |  Major | . | stack | stack |
| [HBASE-14624](https://issues.apache.org/jira/browse/HBASE-14624) | BucketCache.freeBlock is too expensive |  Major | BlockCache | Randy Fox | Ted Yu |
| [HBASE-14690](https://issues.apache.org/jira/browse/HBASE-14690) | Fix css so there's no left/right scroll bar |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-14661](https://issues.apache.org/jira/browse/HBASE-14661) | RegionServer link is not opening, in HBase Table page. |  Minor | UI | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13318](https://issues.apache.org/jira/browse/HBASE-13318) | RpcServer.getListenerAddress should handle when the accept channel is closed |  Minor | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-14283](https://issues.apache.org/jira/browse/HBASE-14283) | Reverse scan doesn’t work with HFile inline index/bloom blocks |  Major | . | Ben Lau | Ben Lau |
| [HBASE-14682](https://issues.apache.org/jira/browse/HBASE-14682) | CM restore functionality for regionservers is broken |  Major | integration tests | Enis Soztutar | Enis Soztutar |
| [HBASE-14257](https://issues.apache.org/jira/browse/HBASE-14257) | Periodic flusher only handles hbase:meta, not other system tables |  Major | regionserver | Lars George | Abhishek Singh Chouhan |
| [HBASE-14694](https://issues.apache.org/jira/browse/HBASE-14694) | Scan copy constructor doesn't handle allowPartialResults |  Major | Client | Ted Yu | Ted Yu |
| [HBASE-14349](https://issues.apache.org/jira/browse/HBASE-14349) | pre-commit zombie finder is overly broad |  Critical | build | Sean Busbey | stack |
| [HBASE-14680](https://issues.apache.org/jira/browse/HBASE-14680) | Two configs for snapshot timeout and better defaults |  Major | snapshots | Enis Soztutar | Heng Chen |
| [HBASE-14705](https://issues.apache.org/jira/browse/HBASE-14705) | Javadoc for KeyValue constructor is not correct. |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-14425](https://issues.apache.org/jira/browse/HBASE-14425) | In Secure Zookeeper cluster superuser will not have sufficient permission if multiple values are configured in "hbase.superuser" |  Major | security, Zookeeper | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14695](https://issues.apache.org/jira/browse/HBASE-14695) | Fix some easy HTML warnings |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14660](https://issues.apache.org/jira/browse/HBASE-14660) | AssertionError found when using offheap BucketCache with assertion enabled |  Major | . | Yu Li | ramkrishna.s.vasudevan |
| [HBASE-14650](https://issues.apache.org/jira/browse/HBASE-14650) | Reenable TestNamespaceAuditor |  Major | . | stack | Heng Chen |
| [HBASE-14557](https://issues.apache.org/jira/browse/HBASE-14557) | MapReduce WALPlayer issue with NoTagsKeyValue |  Blocker | tooling | Jerry He | Anoop Sam John |
| [HBASE-14711](https://issues.apache.org/jira/browse/HBASE-14711) | Remove or annotated deprecated methods in HRegionInfo |  Major | hbase | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14532](https://issues.apache.org/jira/browse/HBASE-14532) | [book] dfs.client.read.shortcircuit is referenced as hbase-site.xml config and not described in section 7 |  Minor | documentation | Rick Moritz | Misty Stanley-Jones |
| [HBASE-14739](https://issues.apache.org/jira/browse/HBASE-14739) | Fix broken link to Javadoc that is suppressed because it is generated  code |  Trivial | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14742](https://issues.apache.org/jira/browse/HBASE-14742) | TestHeapMemoryManager is flakey |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14751](https://issues.apache.org/jira/browse/HBASE-14751) | Book seems to be broken |  Major | . | Enis Soztutar | Misty Stanley-Jones |
| [HBASE-14754](https://issues.apache.org/jira/browse/HBASE-14754) | TestFastFailWithoutTestUtil failing on trunk now in #testPreemptiveFastFailException50Times |  Major | flakey, test | stack | stack |
| [HBASE-14733](https://issues.apache.org/jira/browse/HBASE-14733) | Minor typo in alter\_namespace.rb |  Trivial | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14723](https://issues.apache.org/jira/browse/HBASE-14723) | Fix IT tests split too many times |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14768](https://issues.apache.org/jira/browse/HBASE-14768) | bin/graceful\_stop.sh logs nothing as a balancer state to be stored |  Trivial | scripts | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14773](https://issues.apache.org/jira/browse/HBASE-14773) | Fix HBase shell tests are skipped when skipping server tests. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14755](https://issues.apache.org/jira/browse/HBASE-14755) | Fix some broken links and HTML problems |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14706](https://issues.apache.org/jira/browse/HBASE-14706) | RegionLocationFinder should return multiple servernames by top host |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14632](https://issues.apache.org/jira/browse/HBASE-14632) | Region server aborts due to unguarded dereference of Reader |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-14759](https://issues.apache.org/jira/browse/HBASE-14759) | Avoid using Math.abs when selecting SyncRunner in FSHLog |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-14767](https://issues.apache.org/jira/browse/HBASE-14767) | Remove deprecated functions from HBaseAdmin |  Major | . | Appy | Appy |
| [HBASE-14774](https://issues.apache.org/jira/browse/HBASE-14774) | Raise the font size on high-DPI small-screen devices like iphone 6+ |  Major | website | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14781](https://issues.apache.org/jira/browse/HBASE-14781) | Turn per cf flushing on for ITBLL by default |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14787](https://issues.apache.org/jira/browse/HBASE-14787) | Remove obsolete ConnectionImplementation.refCount |  Trivial | . | Appy | Appy |
| [HBASE-14784](https://issues.apache.org/jira/browse/HBASE-14784) | Port conflict is not resolved in HBaseTestingUtility.randomFreePort() |  Minor | test | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14778](https://issues.apache.org/jira/browse/HBASE-14778) | Make block cache hit percentages not integer in the metrics system |  Major | BlockCache, metrics | Elliott Clark | Elliott Clark |
| [HBASE-14788](https://issues.apache.org/jira/browse/HBASE-14788) | Splitting a region does not support the hbase.rs.evictblocksonclose config when closing source region |  Major | regionserver | Randy Fox | Ted Yu |
| [HBASE-14797](https://issues.apache.org/jira/browse/HBASE-14797) | Last round of CSS fix-ups |  Major | website | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13982](https://issues.apache.org/jira/browse/HBASE-13982) | Add info for visibility labels/cell TTLs to ImportTsv |  Major | mapreduce | Lars George | NIDHI GAMBHIR |
| [HBASE-14802](https://issues.apache.org/jira/browse/HBASE-14802) | Replaying server crash recovery procedure after a failover causes incorrect handling of deadservers |  Major | master | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14809](https://issues.apache.org/jira/browse/HBASE-14809) | Grant / revoke Namespace admin permission to group |  Major | security | Steven Hancz | Ted Yu |
| [HBASE-14806](https://issues.apache.org/jira/browse/HBASE-14806) | Missing sources.jar for several modules when building HBase |  Major | pom | Duo Zhang | Duo Zhang |
| [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | Allow limiting size of block into L1 block cache. |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14812](https://issues.apache.org/jira/browse/HBASE-14812) | Fix ResultBoundedCompletionService deadlock |  Major | Client, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14823](https://issues.apache.org/jira/browse/HBASE-14823) | HBase Ref Guide Refactoring |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14815](https://issues.apache.org/jira/browse/HBASE-14815) | TestMobExportSnapshot.testExportFailure timeout occasionally |  Major | . | Heng Chen | Heng Chen |
| [HBASE-14824](https://issues.apache.org/jira/browse/HBASE-14824) | HBaseAdmin.mergeRegions should recognize both full region names and encoded region names |  Minor | Admin | Eungsop Yoo | Eungsop Yoo |
| [HBASE-14782](https://issues.apache.org/jira/browse/HBASE-14782) | FuzzyRowFilter skips valid rows |  Major | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14761](https://issues.apache.org/jira/browse/HBASE-14761) | Deletes with and without visibility expression do not delete the matching mutation |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14712](https://issues.apache.org/jira/browse/HBASE-14712) | MasterProcWALs never clean up |  Blocker | proc-v2 | Elliott Clark | Matteo Bertozzi |
| [HBASE-14840](https://issues.apache.org/jira/browse/HBASE-14840) | Sink cluster reports data replication request as success though the data is not replicated |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14799](https://issues.apache.org/jira/browse/HBASE-14799) | Commons-collections object deserialization remote command execution vulnerability |  Critical | dependencies, security | Andrew Purtell | Andrew Purtell |
| [HBASE-14737](https://issues.apache.org/jira/browse/HBASE-14737) | Clear cachedMaxVersions when HColumnDescriptor#setValue(VERSIONS, value) is called |  Major | . | James Taylor | Pankaj Kumar |
| [HBASE-14825](https://issues.apache.org/jira/browse/HBASE-14825) | HBase Ref Guide corrections of typos/misspellings |  Minor | documentation | Daniel Vimont | Daniel Vimont |
| [HBASE-14861](https://issues.apache.org/jira/browse/HBASE-14861) | HBASE\_ZNODE\_FILE on master server is overwritten by regionserver process in case of master-rs collocation |  Major | Operability | Samir Ahmic | Samir Ahmic |
| [HBASE-14463](https://issues.apache.org/jira/browse/HBASE-14463) | Severe performance downgrade when parallel reading a single key from BucketCache |  Major | . | Yu Li | Yu Li |
| [HBASE-14689](https://issues.apache.org/jira/browse/HBASE-14689) | Addendum and unit test for HBASE-13471 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14885](https://issues.apache.org/jira/browse/HBASE-14885) | NullPointerException in HMaster#normalizeRegions() due to missing TableDescriptor |  Major | master | Ted Yu | Ted Yu |
| [HBASE-14777](https://issues.apache.org/jira/browse/HBASE-14777) | Fix Inter Cluster Replication Future ordering issues |  Critical | Replication | Bhupendra Kumar Jain | Ashu Pachauri |
| [HBASE-14664](https://issues.apache.org/jira/browse/HBASE-14664) | Master failover issue: Backup master is unable to start if active master is killed and started in short time interval |  Critical | master | Samir Ahmic | Samir Ahmic |
| [HBASE-14893](https://issues.apache.org/jira/browse/HBASE-14893) | Race between mutation on region and region closing operation leads to NotServingRegionException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14523](https://issues.apache.org/jira/browse/HBASE-14523) | rolling-restart.sh --graceful will start regionserver process on master node |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14894](https://issues.apache.org/jira/browse/HBASE-14894) | Fix misspellings of threshold in log4j.properties files for tests |  Trivial | . | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14890](https://issues.apache.org/jira/browse/HBASE-14890) | Fix javadoc checkstyle errors |  Major | . | Appy | Appy |
| [HBASE-14531](https://issues.apache.org/jira/browse/HBASE-14531) | graceful\_stop.sh "if [ "$local" ]" condition unexpected behaviour |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-14896](https://issues.apache.org/jira/browse/HBASE-14896) | Resolve Javadoc warnings in WALKey and RegionMover |  Minor | . | Yu Li | Yu Li |
| [HBASE-14462](https://issues.apache.org/jira/browse/HBASE-14462) | rolling\_restart.sh --master-only throws "line 142: test: 0: unary operator expected" |  Major | . | Samir Ahmic | Samir Ahmic |
| [HBASE-14541](https://issues.apache.org/jira/browse/HBASE-14541) | TestHFileOutputFormat.testMRIncrementalLoadWithSplit failed due to too many splits and few retries |  Major | HFile, test | stack | Matteo Bertozzi |
| [HBASE-14905](https://issues.apache.org/jira/browse/HBASE-14905) | VerifyReplication does not honour versions option |  Major | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-13857](https://issues.apache.org/jira/browse/HBASE-13857) | Slow WAL Append count in ServerMetricsTmpl.jamon is hardcoded to zero |  Major | regionserver, UI | Lars George | Vrishal Kulkarni |
| [HBASE-14904](https://issues.apache.org/jira/browse/HBASE-14904) | Mark Base[En\|De]coder LimitedPrivate and fix binary compat issue |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14907](https://issues.apache.org/jira/browse/HBASE-14907) | NPE of MobUtils.hasMobColumns in Build failed in Jenkins: HBase-Trunk\_matrix » latest1.8,Hadoop #513 |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-14928](https://issues.apache.org/jira/browse/HBASE-14928) | Start row should be set for query through HBase REST gateway involving globbing option |  Major | REST | Ted Yu | Ted Yu |
| [HBASE-14926](https://issues.apache.org/jira/browse/HBASE-14926) | Hung ThriftServer; no timeout on read from client; if client crashes, worker thread gets stuck reading |  Major | Thrift | stack | stack |
| [HBASE-14922](https://issues.apache.org/jira/browse/HBASE-14922) | Delayed flush doesn't work causing flush storms. |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14923](https://issues.apache.org/jira/browse/HBASE-14923) | VerifyReplication should not mask the exception during result comparison |  Minor | tooling | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14930](https://issues.apache.org/jira/browse/HBASE-14930) | check\_compatibility.sh needs smarter exit codes |  Major | . | Dima Spivak | Dima Spivak |
| [HBASE-14917](https://issues.apache.org/jira/browse/HBASE-14917) | Log in console if individual tests in test-patch.sh fail or pass |  Minor | . | Appy | Appy |
| [HBASE-14804](https://issues.apache.org/jira/browse/HBASE-14804) | HBase shell's create table command ignores 'NORMALIZATION\_ENABLED' attribute |  Minor | shell | Romil Choksi | Jean-Marc Spaggiari |
| [HBASE-14897](https://issues.apache.org/jira/browse/HBASE-14897) | TestTableLockManager.testReapAllTableLocks is flakey |  Major | . | Heng Chen | Heng Chen |
| [HBASE-14954](https://issues.apache.org/jira/browse/HBASE-14954) | IllegalArgumentException was thrown when doing online configuration change in CompactSplitThread |  Major | Compaction, regionserver | Victor Xu | Victor Xu |
| [HBASE-14942](https://issues.apache.org/jira/browse/HBASE-14942) | Allow turning off BoundedByteBufferPool |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14941](https://issues.apache.org/jira/browse/HBASE-14941) | locate\_region shell command |  Trivial | shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14901](https://issues.apache.org/jira/browse/HBASE-14901) | There is duplicated code to create/manage encryption keys |  Minor | encryption | Nate Edel | Nate Edel |
| [HBASE-14769](https://issues.apache.org/jira/browse/HBASE-14769) | Remove unused functions and duplicate javadocs from HBaseAdmin |  Major | . | Appy | Appy |
| [HBASE-14960](https://issues.apache.org/jira/browse/HBASE-14960) | Fallback to using default RPCControllerFactory if class cannot be loaded |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14953](https://issues.apache.org/jira/browse/HBASE-14953) | HBaseInterClusterReplicationEndpoint: Do not retry the whole batch of edits in case of RejectedExecutionException |  Critical | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14701](https://issues.apache.org/jira/browse/HBASE-14701) | Fix flakey Failed tests:    TestMobFlushSnapshotFromClient\>TestFlushSnapshotFromClient.testSkipFlushTableSnapshot:199 null |  Major | test | stack | Jingcheng Du |
| [HBASE-14936](https://issues.apache.org/jira/browse/HBASE-14936) | CombinedBlockCache should overwrite CacheStats#rollMetricsPeriod() |  Major | BlockCache | Jianwei Cui | Jianwei Cui |
| [HBASE-14929](https://issues.apache.org/jira/browse/HBASE-14929) | There is a space missing from Table "foo" is not currently available. |  Trivial | . | Theodore michael Malaska | Carlos A. Morillo |
| [HBASE-14968](https://issues.apache.org/jira/browse/HBASE-14968) | ConcurrentModificationException in region close resulting in the region staying in closing state |  Major | Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-13976](https://issues.apache.org/jira/browse/HBASE-13976) | release manager list in ref guide is missing 0.94 line |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-14838](https://issues.apache.org/jira/browse/HBASE-14838) | Clarify that SimpleRegionNormalizer does not merge empty (\<1MB) regions |  Trivial | documentation, regionserver | Romil Choksi | Josh Elser |
| [HBASE-14843](https://issues.apache.org/jira/browse/HBASE-14843) | TestWALProcedureStore.testLoad is flakey |  Blocker | proc-v2 | Heng Chen | Matteo Bertozzi |
| [HBASE-14807](https://issues.apache.org/jira/browse/HBASE-14807) | TestWALLockup is flakey |  Major | flakey, test | stack | stack |
| [HBASE-14952](https://issues.apache.org/jira/browse/HBASE-14952) | hbase-assembly source artifact has some incorrect modules |  Blocker | build, dependencies | Esteban Gutierrez | Sean Busbey |
| [HBASE-14974](https://issues.apache.org/jira/browse/HBASE-14974) | Total number of Regions in Transition number on UI incorrect |  Trivial | UI | Elliott Clark | Mikhail Antonov |
| [HBASE-15000](https://issues.apache.org/jira/browse/HBASE-15000) | Fix javadoc warn in LoadIncrementalHFiles |  Trivial | . | Anoop Sam John | Ashish Singhi |
| [HBASE-14999](https://issues.apache.org/jira/browse/HBASE-14999) | Remove ref to org.mortbay.log.Log |  Minor | dependencies | Anoop Sam John | Anoop Sam John |
| [HBASE-14990](https://issues.apache.org/jira/browse/HBASE-14990) | Tests in BaseTestHBaseFsck are run by its subclasses redundantly |  Minor | test | Ted Yu | Heng Chen |
| [HBASE-13907](https://issues.apache.org/jira/browse/HBASE-13907) | Document how to deploy a coprocessor |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14822](https://issues.apache.org/jira/browse/HBASE-14822) | Renewing leases of scanners doesn't work |  Major | . | Samarth Jain | Lars Hofhansl |
| [HBASE-15015](https://issues.apache.org/jira/browse/HBASE-15015) | Checktyle plugin shouldn't check Jamon-generated Java classes |  Minor | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-14991](https://issues.apache.org/jira/browse/HBASE-14991) | Fix the feature warning in scala code |  Minor | . | Zhan Zhang | Zhan Zhang |
| [HBASE-15022](https://issues.apache.org/jira/browse/HBASE-15022) | undefined method \`getZooKeeperClusterKey' for Java::OrgApacheHadoopHbaseZookeeper::ZKUtil:Class |  Major | shell | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14654](https://issues.apache.org/jira/browse/HBASE-14654) | Reenable TestMultiParallel#testActiveThreadsCount |  Major | test | Heng Chen | Heng Chen |
| [HBASE-15001](https://issues.apache.org/jira/browse/HBASE-15001) | Thread Safety issues in ReplicationSinkManager and HBaseInterClusterReplicationEndpoint |  Blocker | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15014](https://issues.apache.org/jira/browse/HBASE-15014) | Fix filterCellByStore in WALsplitter is awful for performance |  Critical | MTTR, Recovery, wal | Elliott Clark | Elliott Clark |
| [HBASE-14977](https://issues.apache.org/jira/browse/HBASE-14977) | ChoreService.shutdown may result in ConcurrentModificationException |  Minor | util | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15028](https://issues.apache.org/jira/browse/HBASE-15028) | Minor fix on RegionGroupingProvider |  Minor | wal | Yu Li | Yu Li |
| [HBASE-15021](https://issues.apache.org/jira/browse/HBASE-15021) | hadoopqa doing false positives |  Major | . | stack | stack |
| [HBASE-15030](https://issues.apache.org/jira/browse/HBASE-15030) | Deadlock in master TableNamespaceManager while running IntegrationTestDDLMasterFailover |  Major | proc-v2 | Samir Ahmic | Samir Ahmic |
| [HBASE-15034](https://issues.apache.org/jira/browse/HBASE-15034) | IntegrationTestDDLMasterFailover does not clean created namespaces |  Minor | integration tests | Samir Ahmic | Samir Ahmic |
| [HBASE-15032](https://issues.apache.org/jira/browse/HBASE-15032) | hbase shell scan filter string assumes UTF-8 encoding |  Major | shell | huaxiang sun | huaxiang sun |
| [HBASE-14717](https://issues.apache.org/jira/browse/HBASE-14717) | enable\_table\_replication command should only create specified table for a peer cluster |  Major | Replication | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-14940](https://issues.apache.org/jira/browse/HBASE-14940) | Make our unsafe based ops more safe |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15039](https://issues.apache.org/jira/browse/HBASE-15039) | HMaster and RegionServers should try to refresh token keys from zk when facing InvalidToken |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-15035](https://issues.apache.org/jira/browse/HBASE-15035) | bulkloading hfiles with tags that require splits do not preserve tags |  Blocker | HFile | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15026](https://issues.apache.org/jira/browse/HBASE-15026) | The default value of "hbase.regions.slop" in hbase-default.xml is obsolete |  Minor | Balancer | Tianyin Xu | Tianyin Xu |
| [HBASE-15043](https://issues.apache.org/jira/browse/HBASE-15043) | region\_status.rb broken with TypeError: no public constructors for Java::OrgApacheHadoopHbaseClient::HBaseAdmin |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-15011](https://issues.apache.org/jira/browse/HBASE-15011) | turn off the jdk8 javadoc linter. :( |  Blocker | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-15050](https://issues.apache.org/jira/browse/HBASE-15050) | Block Ref counting does not work in Region Split cases. |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15063](https://issues.apache.org/jira/browse/HBASE-15063) | Bug in MultiByteBuf#toBytes |  Critical | io, Performance | deepankar | deepankar |
| [HBASE-14987](https://issues.apache.org/jira/browse/HBASE-14987) | Compaction marker whose region name doesn't match current region's needs to be handled |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14867](https://issues.apache.org/jira/browse/HBASE-14867) | SimpleRegionNormalizer needs to have better heuristics to trigger merge operation |  Major | master | Romil Choksi | Ted Yu |
| [HBASE-15070](https://issues.apache.org/jira/browse/HBASE-15070) | DistributedHBaseCluster#restoreRegionServers() starts new RS process on master server |  Minor | integration tests | Samir Ahmic | Samir Ahmic |
| [HBASE-15027](https://issues.apache.org/jira/browse/HBASE-15027) | Refactor the way the CompactedHFileDischarger threads are created |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14975](https://issues.apache.org/jira/browse/HBASE-14975) | Don't color the total RIT line yellow if it's zero |  Major | UI | Elliott Clark | Pallavi Adusumilli |
| [HBASE-15065](https://issues.apache.org/jira/browse/HBASE-15065) | SimpleRegionNormalizer should return multiple normalization plans in one run |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15057](https://issues.apache.org/jira/browse/HBASE-15057) | local-master-backup.sh doesn't start HMaster correctly |  Major | shell | Cyker Way | Samir Ahmic |
| [HBASE-15052](https://issues.apache.org/jira/browse/HBASE-15052) | Use EnvironmentEdgeManager in ReplicationSource |  Trivial | Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15083](https://issues.apache.org/jira/browse/HBASE-15083) | Gets from Multiactions are not counted in metrics for gets. |  Major | . | Elliott Clark | Heng Chen |
| [HBASE-15085](https://issues.apache.org/jira/browse/HBASE-15085) | IllegalStateException was thrown when scanning on bulkloaded HFiles |  Critical | . | Victor Xu | Victor Xu |
| [HBASE-15117](https://issues.apache.org/jira/browse/HBASE-15117) | Resolve ICAST findbugs warnings in current codes |  Minor | . | Yu Li | Yu Li |
| [HBASE-15104](https://issues.apache.org/jira/browse/HBASE-15104) | Occasional failures due to NotServingRegionException in IT tests |  Major | integration tests | huaxiang sun | huaxiang sun |
| [HBASE-14512](https://issues.apache.org/jira/browse/HBASE-14512) | Cache UGI groups |  Major | Performance, security | Elliott Clark | Elliott Clark |
| [HBASE-14771](https://issues.apache.org/jira/browse/HBASE-14771) | RpcServer#getRemoteAddress always returns null |  Minor | IPC/RPC | Abhishek Kumar | Abhishek Kumar |
| [HBASE-15102](https://issues.apache.org/jira/browse/HBASE-15102) | HeapMemoryTuner can "overtune" memstore size and suddenly drop it into blocking zone |  Critical | regionserver | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15101](https://issues.apache.org/jira/browse/HBASE-15101) | Leaked References to StoreFile.Reader after HBASE-13082 |  Critical | HFile, io | deepankar | deepankar |
| [HBASE-14872](https://issues.apache.org/jira/browse/HBASE-14872) | Scan different timeRange per column family doesn't percolate down to the memstore |  Major | Client, regionserver, Scanners | churro morales | churro morales |
| [HBASE-15098](https://issues.apache.org/jira/browse/HBASE-15098) | Normalizer switch in configuration is not used |  Blocker | master | Lars George | Ted Yu |
| [HBASE-15139](https://issues.apache.org/jira/browse/HBASE-15139) | Connection manager doesn't pass client metrics to RpcClient |  Major | Client, metrics | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15126](https://issues.apache.org/jira/browse/HBASE-15126) | HBaseFsck's checkRegionBoundaries function sets incorrect 'storesFirstKey' |  Major | hbck | chenrongwei | chenrongwei |
| [HBASE-15147](https://issues.apache.org/jira/browse/HBASE-15147) | Shell should use Admin.listTableNames() instead of Admin.listTables() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15152](https://issues.apache.org/jira/browse/HBASE-15152) | Automatically include prefix-tree module in MR jobs if present |  Major | mapreduce | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15133](https://issues.apache.org/jira/browse/HBASE-15133) | Data loss after compaction when a row has more than Integer.MAX\_VALUE columns |  Major | Compaction | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-15148](https://issues.apache.org/jira/browse/HBASE-15148) | Resolve IS2\_INCONSISTENT\_SYNC findbugs warning in AuthenticationTokenSecretManager |  Major | . | Yu Li | Yu Li |
| [HBASE-13082](https://issues.apache.org/jira/browse/HBASE-13082) | Coarsen StoreScanner locks to RegionScanner |  Major | Performance, Scanners | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-15132](https://issues.apache.org/jira/browse/HBASE-15132) | Master region merge RPC should authorize user request |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15164](https://issues.apache.org/jira/browse/HBASE-15164) | Fix broken links found via LinkLint |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-15145](https://issues.apache.org/jira/browse/HBASE-15145) | HBCK and Replication should authenticate to zookepeer using server principal |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15146](https://issues.apache.org/jira/browse/HBASE-15146) | Don't block on Reader threads queueing to a scheduler queue |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-15173](https://issues.apache.org/jira/browse/HBASE-15173) | Execute mergeRegions RPC call as the request user |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15019](https://issues.apache.org/jira/browse/HBASE-15019) | Replication stuck when HDFS is restarted |  Major | Replication, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14810](https://issues.apache.org/jira/browse/HBASE-14810) | Update Hadoop support description to explain "not tested" vs "not supported" |  Critical | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-15195](https://issues.apache.org/jira/browse/HBASE-15195) | Don't run findbugs on hbase-it; it has nothing in src/main/java |  Major | findbugs | stack | stack |
| [HBASE-15190](https://issues.apache.org/jira/browse/HBASE-15190) | Monkey dies when running on shared cluster (gives up when can't kill the other fellows processes) |  Major | integration tests | stack | stack |
| [HBASE-15186](https://issues.apache.org/jira/browse/HBASE-15186) | HBASE-15158 Preamble 1 of 2: fix findbugs, add javadoc, change Region#getReadpoint to #getReadPoint, and some util |  Major | . | stack | stack |
| [HBASE-15196](https://issues.apache.org/jira/browse/HBASE-15196) | HBASE-15158 Preamble 2 of 2:Add Increment tests |  Major | . | stack | stack |
| [HBASE-15206](https://issues.apache.org/jira/browse/HBASE-15206) | Flakey testSplitDaughtersNotInMeta test |  Minor | flakey | huaxiang sun | huaxiang sun |
| [HBASE-15200](https://issues.apache.org/jira/browse/HBASE-15200) | ZooKeeper znode ACL checks should only compare the shortname |  Minor | security | Andrew Purtell | Andrew Purtell |
| [HBASE-15218](https://issues.apache.org/jira/browse/HBASE-15218) | On RS crash and replay of WAL, loosing all Tags in Cells |  Blocker | Recovery, regionserver, security | Anoop Sam John | Anoop Sam John |
| [HBASE-15209](https://issues.apache.org/jira/browse/HBASE-15209) | disable table in HBaseTestingUtility.truncateTable |  Minor | . | Appy | Appy |
| [HBASE-14770](https://issues.apache.org/jira/browse/HBASE-14770) | RowCounter argument input parse error |  Minor | mapreduce | Frank Chang | Adrian Muraru |
| [HBASE-15214](https://issues.apache.org/jira/browse/HBASE-15214) | Valid mutate Ops fail with RPC Codec in use and region moves across |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-14460](https://issues.apache.org/jira/browse/HBASE-14460) | [Perf Regression] Merge of MVCC and SequenceId (HBASE-8763) slowed Increments, CheckAndPuts, batch operations |  Critical | Performance | stack | stack |
| [HBASE-15231](https://issues.apache.org/jira/browse/HBASE-15231) | Make TableState.State private |  Major | API | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-15216](https://issues.apache.org/jira/browse/HBASE-15216) | Canary does not accept config params from command line |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-14192](https://issues.apache.org/jira/browse/HBASE-14192) | Fix REST Cluster constructor with String List |  Minor | REST | Rick Kellogg | Andrew Purtell |
| [HBASE-15253](https://issues.apache.org/jira/browse/HBASE-15253) | Small bug in CellUtil.matchingRow(Cell, byte[]) |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15221](https://issues.apache.org/jira/browse/HBASE-15221) | HTableMultiplexer improvements (stale region locations and resource leaks) |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-15252](https://issues.apache.org/jira/browse/HBASE-15252) | Data loss when replaying wal if HDFS timeout |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-13839](https://issues.apache.org/jira/browse/HBASE-13839) | Fix AssgnmentManagerTmpl.jamon issues (coloring, content etc.) |  Major | master, UI | Lars George | Matt Warhaftig |
| [HBASE-15079](https://issues.apache.org/jira/browse/HBASE-15079) | TestMultiParallel.validateLoadedData AssertionError: null |  Major | Client, flakey, test | stack | Heng Chen |
| [HBASE-15122](https://issues.apache.org/jira/browse/HBASE-15122) | Servlets generate XSS\_REQUEST\_PARAMETER\_TO\_SERVLET\_WRITER findbugs warnings |  Critical | UI | stack | Samir Ahmic |
| [HBASE-15198](https://issues.apache.org/jira/browse/HBASE-15198) | RPC client not using Codec and CellBlock for puts by default |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15276](https://issues.apache.org/jira/browse/HBASE-15276) | TestFlushSnapshotFromClient hung |  Major | . | stack | stack |
| [HBASE-15279](https://issues.apache.org/jira/browse/HBASE-15279) | OrderedBytes.isEncodedValue does not check for int8 and int16 types |  Major | . | Robert Yokota | Robert Yokota |
| [HBASE-15250](https://issues.apache.org/jira/browse/HBASE-15250) | Fix links that are currently redirected from old URLs |  Major | documentation, website | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13883](https://issues.apache.org/jira/browse/HBASE-13883) | Fix Memstore Flush section in HBase book |  Major | documentation | Vladimir Rodionov | Misty Stanley-Jones |
| [HBASE-15289](https://issues.apache.org/jira/browse/HBASE-15289) | Add details about how to get usage instructions for Import and Export utilities |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-15251](https://issues.apache.org/jira/browse/HBASE-15251) | During a cluster restart, Hmaster thinks it is a failover by mistake |  Major | master | Clara Xiong | Clara Xiong |
| [HBASE-15259](https://issues.apache.org/jira/browse/HBASE-15259) | WALEdits under replay will also be replicated |  Minor | . | ramkrishna.s.vasudevan | Heng Chen |
| [HBASE-15298](https://issues.apache.org/jira/browse/HBASE-15298) | Fix missing or wrong asciidoc anchors in the reference guide |  Minor | documentation | Youngjoon Kim | Youngjoon Kim |
| [HBASE-15285](https://issues.apache.org/jira/browse/HBASE-15285) | Forward-port respect for isReturnResult from HBASE-15095 |  Major | Client | stack | stack |
| [HBASE-15247](https://issues.apache.org/jira/browse/HBASE-15247) | InclusiveStopFilter does not respect reverse Filter property |  Major | Filters | Rick Moritz | Amal Joshy |
| [HBASE-15319](https://issues.apache.org/jira/browse/HBASE-15319) | clearJmxCache does not take effect actually |  Major | metrics | Hao Lin | Elliott Clark |
| [HBASE-15332](https://issues.apache.org/jira/browse/HBASE-15332) | Document how to take advantage of HDFS-6133 in HBase |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-15358](https://issues.apache.org/jira/browse/HBASE-15358) | canEnforceTimeLimitFromScope should use timeScope instead of sizeScope |  Major | Scanners | Phil Yang | Phil Yang |
| [HBASE-15128](https://issues.apache.org/jira/browse/HBASE-15128) | Disable region splits and merges switch in master |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15329](https://issues.apache.org/jira/browse/HBASE-15329) | Cross-Site Scripting: Reflected in table.jsp |  Minor | security, UI | stack | Samir Ahmic |
| [HBASE-15397](https://issues.apache.org/jira/browse/HBASE-15397) | Create bulk load replication znode(hfile-refs) in ZK replication queue by default |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15393](https://issues.apache.org/jira/browse/HBASE-15393) | Enable table replication command will fail when parent znode is not default in peer cluster |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15137](https://issues.apache.org/jira/browse/HBASE-15137) | CallTimeoutException and CallQueueTooBigException should trigger PFFE |  Major | . | Elliott Clark | Mikhail Antonov |
| [HBASE-15364](https://issues.apache.org/jira/browse/HBASE-15364) | Fix unescaped \< characters in Javadoc |  Major | API, documentation | Misty Stanley-Jones | Gabor Liptak |
| [HBASE-15271](https://issues.apache.org/jira/browse/HBASE-15271) | Spark Bulk Load: Need to write HFiles to tmp location then rename to protect from Spark Executor Failures |  Major | . | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-15378](https://issues.apache.org/jira/browse/HBASE-15378) | Scanner cannot handle heartbeat message with no results |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15425](https://issues.apache.org/jira/browse/HBASE-15425) | Failing to write bulk load event marker in the WAL is ignored |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-15379](https://issues.apache.org/jira/browse/HBASE-15379) | Fake cells created in read path not implementing SettableSequenceId |  Major | . | Anoop Sam John | Amal Joshy |
| [HBASE-15439](https://issues.apache.org/jira/browse/HBASE-15439) | getMaximumAllowedTimeBetweenRuns in ScheduledChore ignores the TimeUnit |  Major | master, mob, regionserver | Ted Yu | Jingcheng Du |
| [HBASE-15463](https://issues.apache.org/jira/browse/HBASE-15463) | Region normalizer should check whether split/merge is enabled |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15442](https://issues.apache.org/jira/browse/HBASE-15442) | HBase Backup Phase 2: Potential data loss and or data duplication in incremental backup |  Critical | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15430](https://issues.apache.org/jira/browse/HBASE-15430) | Failed taking snapshot - Manifest proto-message too large |  Critical | snapshots | JunHo Cho | JunHo Cho |
| [HBASE-15441](https://issues.apache.org/jira/browse/HBASE-15441) | Fix WAL splitting when region has moved multiple times |  Blocker | Recovery, wal | Elliott Clark | Elliott Clark |
| [HBASE-15443](https://issues.apache.org/jira/browse/HBASE-15443) | HBase Backup Phase 2: Multiple backup destinations support (data model) |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15433](https://issues.apache.org/jira/browse/HBASE-15433) | SnapshotManager#restoreSnapshot not update table and region count quota correctly when encountering exception |  Major | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-15325](https://issues.apache.org/jira/browse/HBASE-15325) | ResultScanner allowing partial result will miss the rest of the row if the region is moved between two rpc requests |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15064](https://issues.apache.org/jira/browse/HBASE-15064) | BufferUnderflowException after last Cell fetched from an HFile Block served from L2 offheap cache |  Critical | io | deepankar | Anoop Sam John |
| [HBASE-15520](https://issues.apache.org/jira/browse/HBASE-15520) | Fix broken TestAsyncIPC |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-14256](https://issues.apache.org/jira/browse/HBASE-14256) | Flush task message may be confusing when region is recovered |  Major | regionserver | Lars George | Gabor Liptak |
| [HBASE-15515](https://issues.apache.org/jira/browse/HBASE-15515) | Improve LocalityBasedCandidateGenerator in Balancer |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15295](https://issues.apache.org/jira/browse/HBASE-15295) | MutateTableAccess.multiMutate() does not get high priority causing a deadlock |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15327](https://issues.apache.org/jira/browse/HBASE-15327) | Canary will always invoke admin.balancer() in each sniffing period when writeSniffing is enabled |  Minor | canary | Jianwei Cui | Jianwei Cui |
| [HBASE-15559](https://issues.apache.org/jira/browse/HBASE-15559) | BaseMasterAndRegionObserver doesn't implement all the methods |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15566](https://issues.apache.org/jira/browse/HBASE-15566) | Add timeouts on TestMobFlushSnapshotFromClient and TestRegionMergeTransactionOnCluster |  Major | . | stack | stack |
| [HBASE-15324](https://issues.apache.org/jira/browse/HBASE-15324) | Jitter may cause desiredMaxFileSize overflow in ConstantSizeRegionSplitPolicy and trigger unexpected split |  Major | . | Yu Li | Yu Li |
| [HBASE-15567](https://issues.apache.org/jira/browse/HBASE-15567) | TestReplicationShell broken by recent replication changes |  Minor | Replication, shell | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15424](https://issues.apache.org/jira/browse/HBASE-15424) | Add bulk load hfile-refs for replication in ZK after the event is appended in the WAL |  Minor | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15582](https://issues.apache.org/jira/browse/HBASE-15582) | SnapshotManifestV1 too verbose when there are no regions |  Trivial | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15578](https://issues.apache.org/jira/browse/HBASE-15578) | Handle HBASE-15234 for ReplicationHFileCleaner |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15485](https://issues.apache.org/jira/browse/HBASE-15485) | Filter.reset() should not be called between batches |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15587](https://issues.apache.org/jira/browse/HBASE-15587) | FSTableDescriptors.getDescriptor() logs stack trace erronously |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15623](https://issues.apache.org/jira/browse/HBASE-15623) | Update refguide to change hadoop \<= 2.3.x from NT to X for hbase-1.2.x |  Major | documentation | stack | stack |
| [HBASE-15591](https://issues.apache.org/jira/browse/HBASE-15591) | ServerCrashProcedure not yielding |  Major | . | Jerry He | Jerry He |
| [HBASE-15093](https://issues.apache.org/jira/browse/HBASE-15093) | Replication can report incorrect size of log queue for the global source when multiwal is enabled |  Minor | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15627](https://issues.apache.org/jira/browse/HBASE-15627) |  Miss space and closing quote in AccessController#checkSystemOrSuperUser |  Minor | security | huaxiang sun | huaxiang sun |
| [HBASE-15621](https://issues.apache.org/jira/browse/HBASE-15621) | Suppress Hbase SnapshotHFile cleaner error  messages when a snaphot is going on |  Minor | snapshots | huaxiang sun | huaxiang sun |
| [HBASE-15636](https://issues.apache.org/jira/browse/HBASE-15636) | hard coded wait time out value in HBaseTestingUtility#waitUntilAllRegionsAssigned might cause test failure |  Minor | integration tests, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15639](https://issues.apache.org/jira/browse/HBASE-15639) | Unguarded access to stackIndexes in Procedure#toStringDetails() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15637](https://issues.apache.org/jira/browse/HBASE-15637) | TSHA Thrift-2 server should allow limiting call queue size |  Major | Thrift | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15504](https://issues.apache.org/jira/browse/HBASE-15504) | Fix Balancer in 1.3 not moving regions off overloaded regionserver |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15405](https://issues.apache.org/jira/browse/HBASE-15405) | Synchronize final results logging single thread in PE, fix wrong defaults in help message |  Minor | Performance | Appy | Appy |
| [HBASE-15622](https://issues.apache.org/jira/browse/HBASE-15622) | Superusers does not consider the keytab credentials |  Critical | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15650](https://issues.apache.org/jira/browse/HBASE-15650) | Remove TimeRangeTracker as point of contention when many threads reading a StoreFile |  Major | Performance | stack | stack |
| [HBASE-15187](https://issues.apache.org/jira/browse/HBASE-15187) | Integrate CSRF prevention filter to REST gateway |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15287](https://issues.apache.org/jira/browse/HBASE-15287) | mapreduce.RowCounter returns incorrect result with binary row key inputs |  Major | mapreduce, util | Randy Hu | Matt Warhaftig |
| [HBASE-15668](https://issues.apache.org/jira/browse/HBASE-15668) | HFileReplicator$Copier fails to replicate other hfiles in the request when a hfile in not found in FS anywhere |  Trivial | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15664](https://issues.apache.org/jira/browse/HBASE-15664) | Use Long.MAX\_VALUE instead of HConstants.FOREVER in CompactionPolicy |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-14898](https://issues.apache.org/jira/browse/HBASE-14898) | Correct Bloom filter documentation in the book |  Minor | . | Jerry He | Yi Liang |
| [HBASE-15673](https://issues.apache.org/jira/browse/HBASE-15673) | [PE tool] Fix latency metrics for multiGet |  Major | Performance | Appy | Appy |
| [HBASE-15672](https://issues.apache.org/jira/browse/HBASE-15672) | hadoop.hbase.security.visibility.TestVisibilityLabelsWithDeletes fails |  Major | test | Vladimir Rodionov | Anoop Sam John |
| [HBASE-15674](https://issues.apache.org/jira/browse/HBASE-15674) | HRegionLocator#getAllRegionLocations should put the results in cache |  Major | . | Elliott Clark | Heng Chen |
| [HBASE-15670](https://issues.apache.org/jira/browse/HBASE-15670) | Add missing Snapshot.proto to the maven profile for compiling protobuf |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15360](https://issues.apache.org/jira/browse/HBASE-15360) | Fix flaky TestSimpleRpcScheduler |  Critical | test | Mikhail Antonov | Duo Zhang |
| [HBASE-15699](https://issues.apache.org/jira/browse/HBASE-15699) | Can not sync AsyncFSWAL if no edit is appended |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-14252](https://issues.apache.org/jira/browse/HBASE-14252) | RegionServers fail to start when setting hbase.ipc.server.callqueue.scan.ratio to 0 |  Major | regionserver | Toshihiro Suzuki | Yubao Liu |
| [HBASE-15710](https://issues.apache.org/jira/browse/HBASE-15710) | Include issue servers information in RetriesExhaustedWithDetailsException message |  Minor | . | Yu Li | Yu Li |
| [HBASE-15634](https://issues.apache.org/jira/browse/HBASE-15634) | TestDateTieredCompactionPolicy#negativeForMajor is flaky |  Major | test | Ted Yu | Duo Zhang |
| [HBASE-15645](https://issues.apache.org/jira/browse/HBASE-15645) | hbase.rpc.timeout is not used in operations of HTable |  Critical | . | Phil Yang | Phil Yang |
| [HBASE-15707](https://issues.apache.org/jira/browse/HBASE-15707) | ImportTSV bulk output does not support tags with hfile.format.version=3 |  Major | mapreduce | huaxiang sun | huaxiang sun |
| [HBASE-15708](https://issues.apache.org/jira/browse/HBASE-15708) | Docker for dev-support scripts |  Major | . | Appy | Appy |
| [HBASE-15685](https://issues.apache.org/jira/browse/HBASE-15685) | Typo in REST documentation |  Minor | documentation | Bin Wang | Bin Wang |
| [HBASE-15697](https://issues.apache.org/jira/browse/HBASE-15697) | Excessive TestHRegion running time on branch-1 |  Major | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-15676](https://issues.apache.org/jira/browse/HBASE-15676) | FuzzyRowFilter fails and matches all the rows in the table if the mask consists of all 0s |  Major | Filters | Rohit Sinha | Matt Warhaftig |
| [HBASE-15732](https://issues.apache.org/jira/browse/HBASE-15732) | hbase-rsgroups should be in the assembly |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15711](https://issues.apache.org/jira/browse/HBASE-15711) | Add client side property to allow logging details for batch errors |  Major | . | Yu Li | Yu Li |
| [HBASE-15357](https://issues.apache.org/jira/browse/HBASE-15357) | TableInputFormatBase getSplitKey does not handle signed bytes correctly |  Major | mapreduce | Nathan Schile | Nathan Schile |
| [HBASE-15714](https://issues.apache.org/jira/browse/HBASE-15714) | We are calling checkRow() twice in doMiniBatchMutation() |  Major | regionserver | Enis Soztutar | Heng Chen |
| [HBASE-15752](https://issues.apache.org/jira/browse/HBASE-15752) | ClassNotFoundException is encountered when custom WAL codec is not found in WALPlayer job |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15528](https://issues.apache.org/jira/browse/HBASE-15528) | Clean up outdated entries in hbase-default.xml |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-15613](https://issues.apache.org/jira/browse/HBASE-15613) | TestNamespaceCommand times out |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15755](https://issues.apache.org/jira/browse/HBASE-15755) | SnapshotDescriptionUtils and SnapshotTestingUtils do not have any Interface audience marked |  Major | . | ramkrishna.s.vasudevan | Matteo Bertozzi |
| [HBASE-15563](https://issues.apache.org/jira/browse/HBASE-15563) | 'counter' may overflow in BoundedGroupingStrategy |  Minor | wal | Duo Zhang | Matt Warhaftig |
| [HBASE-15292](https://issues.apache.org/jira/browse/HBASE-15292) | Refined ZooKeeperWatcher to prevent ZooKeeper's callback while construction |  Minor | Zookeeper | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-15669](https://issues.apache.org/jira/browse/HBASE-15669) | HFile size is not considered correctly in a replication request |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15782](https://issues.apache.org/jira/browse/HBASE-15782) | TestShell fails due to some moved types |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15781](https://issues.apache.org/jira/browse/HBASE-15781) | Remove unused TableEventHandler and TotesHRegionInfo |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15796](https://issues.apache.org/jira/browse/HBASE-15796) | TestMetaCache fails after HBASE-15745 |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15738](https://issues.apache.org/jira/browse/HBASE-15738) | Ensure artifacts in project dist area include required md5 file |  Blocker | build, community | Sean Busbey | Nick Dimiduk |
| [HBASE-15807](https://issues.apache.org/jira/browse/HBASE-15807) | Update report-flakies.py to look for "FAILED" status in test report |  Minor | . | Appy | Appy |
| [HBASE-15236](https://issues.apache.org/jira/browse/HBASE-15236) | Inconsistent cell reads over multiple bulk-loaded HFiles |  Major | . | Appy | Appy |
| [HBASE-15797](https://issues.apache.org/jira/browse/HBASE-15797) | TestIPCUtil fails after HBASE-15795 |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | Upgrade checkstyle for all branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15799](https://issues.apache.org/jira/browse/HBASE-15799) | Two Shell 'close\_region' Example Syntaxes Don't Work |  Minor | shell | Matt Warhaftig | Matt Warhaftig |
| [HBASE-15742](https://issues.apache.org/jira/browse/HBASE-15742) | Reduce allocation of objects in metrics |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15828](https://issues.apache.org/jira/browse/HBASE-15828) | fix extant findbug |  Major | findbugs | Mikhail Antonov | stack |
| [HBASE-15725](https://issues.apache.org/jira/browse/HBASE-15725) | make\_patch.sh should add the branch name when -b is passed. |  Major | tooling | Elliott Clark | Elliott Clark |
| [HBASE-15840](https://issues.apache.org/jira/browse/HBASE-15840) | WAL.proto compilation broken for cpp |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15848](https://issues.apache.org/jira/browse/HBASE-15848) | Fix possible null point dereference in RSGroupBasedLoadBalancer#getMisplacedRegions() |  Trivial | regionserver | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15769](https://issues.apache.org/jira/browse/HBASE-15769) | Perform validation on cluster key for add\_peer |  Minor | . | Ted Yu | Matt Warhaftig |
| [HBASE-15834](https://issues.apache.org/jira/browse/HBASE-15834) | Correct Bloom filter documentation in section 96.4 of Reference Guide |  Minor | documentation | Xiang Li | Xiang Li |
| [HBASE-15784](https://issues.apache.org/jira/browse/HBASE-15784) | Misuse core/maxPoolSize of LinkedBlockingQueue in ThreadPoolExecutor |  Major | Client, Replication, Thrift | Jingcheng Du | Jingcheng Du |
| [HBASE-15824](https://issues.apache.org/jira/browse/HBASE-15824) | LocalHBaseCluster gets bind exception in master info port |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15841](https://issues.apache.org/jira/browse/HBASE-15841) | Performance Evaluation tool total rows may not be set correctly |  Minor | . | Jerry He | Jerry He |
| [HBASE-15850](https://issues.apache.org/jira/browse/HBASE-15850) | Localize the configuration change in testCheckTableLocks to reduce flakiness of TestHBaseFsck test suite |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15617](https://issues.apache.org/jira/browse/HBASE-15617) | Canary in regionserver mode might not enumerate all regionservers |  Minor | . | Andrew Purtell | Sanjeev Lakshmanan |
| [HBASE-15465](https://issues.apache.org/jira/browse/HBASE-15465) | userPermission returned by getUserPermission() for the selected namespace does not have namespace set |  Minor | Protobufs | Xiang Li | Xiang Li |
| [HBASE-15863](https://issues.apache.org/jira/browse/HBASE-15863) | Typo in Put.java class documentation |  Trivial | documentation, java | Tamer Soliman |  |
| [HBASE-15856](https://issues.apache.org/jira/browse/HBASE-15856) | Cached Connection instances can wind up with addresses never resolved |  Critical | Client | Gary Helmling | Gary Helmling |
| [HBASE-14818](https://issues.apache.org/jira/browse/HBASE-14818) | user\_permission does not list namespace permissions |  Minor | hbase | Steven Hancz | Xiang Li |
| [HBASE-15884](https://issues.apache.org/jira/browse/HBASE-15884) | NPE in StoreFileScanner#skipKVsNewerThanReadpoint during reverse scan |  Major | Scanners | Sergey Soldatov | Sergey Soldatov |
| [HBASE-15830](https://issues.apache.org/jira/browse/HBASE-15830) | Sasl encryption doesn't work with AsyncRpcChannelImpl |  Major | . | Colin Ma | Colin Ma |
| [HBASE-11625](https://issues.apache.org/jira/browse/HBASE-11625) | Reading datablock throws "Invalid HFile block magic" and can not switch to hdfs checksum |  Major | HFile | qian wang | Appy |
| [HBASE-15693](https://issues.apache.org/jira/browse/HBASE-15693) | Reconsider the ImportOrder rule of checkstyle |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15891](https://issues.apache.org/jira/browse/HBASE-15891) | Closeable resources potentially not getting closed if exception is thrown |  Minor | . | Sean Mackrory | Sean Mackrory |
| [HBASE-15912](https://issues.apache.org/jira/browse/HBASE-15912) | REST module has 2 extant results in findbugs |  Major | . | Sean Mackrory | Sean Mackrory |
| [HBASE-15909](https://issues.apache.org/jira/browse/HBASE-15909) | Use Yetus' patch naming rules in submit-patch.py |  Major | . | Appy | Appy |
| [HBASE-15897](https://issues.apache.org/jira/browse/HBASE-15897) | Fix a wrong comment about QOS order |  Trivial | . | Youngjoon Kim |  |
| [HBASE-15918](https://issues.apache.org/jira/browse/HBASE-15918) | Cleanup excludes/includes file after use in hbase-personality.sh to avoid asf license error. |  Major | . | Appy | Appy |
| [HBASE-15907](https://issues.apache.org/jira/browse/HBASE-15907) | Missing documentation of create table split options |  Major | documentation | ronan stokes | ronan stokes |
| [HBASE-15932](https://issues.apache.org/jira/browse/HBASE-15932) | Shell test fails due to uninitialized constant |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15858](https://issues.apache.org/jira/browse/HBASE-15858) | Some region server group shell commands don't work |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15944](https://issues.apache.org/jira/browse/HBASE-15944) | Spark test flooding mvn output. Redirect test logs to file. |  Major | . | Appy | Appy |
| [HBASE-15938](https://issues.apache.org/jira/browse/HBASE-15938) | submit-patch.py: Don't crash if there are tests with same name. Refactor: Split out html template to separate file. |  Major | . | Appy | Appy |
| [HBASE-15933](https://issues.apache.org/jira/browse/HBASE-15933) | NullPointerException may be thrown from SimpleRegionNormalizer#getRegionSize() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15845](https://issues.apache.org/jira/browse/HBASE-15845) | Shell Cleanup : move formatter to commands.rb; move one of the two hbase.rb to hbase\_constants.rb |  Minor | shell | Appy | Appy |
| [HBASE-15929](https://issues.apache.org/jira/browse/HBASE-15929) | There are two classes with name TestRegionServerMetrics |  Major | . | Enis Soztutar | Appy |
| [HBASE-15955](https://issues.apache.org/jira/browse/HBASE-15955) | Disable action in CatalogJanitor#setEnabled should wait for active cleanup scan to finish |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15889](https://issues.apache.org/jira/browse/HBASE-15889) | String case conversions are locale-sensitive, used without locale |  Minor | localization | Sean Mackrory | Sean Mackrory |
| [HBASE-15954](https://issues.apache.org/jira/browse/HBASE-15954) | REST server should log requests with TRACE instead of DEBUG |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15965](https://issues.apache.org/jira/browse/HBASE-15965) | Shell test changes. Use @shell.command instead directly calling functions in admin.rb and other libraries. |  Major | . | Appy | Appy |
| [HBASE-15698](https://issues.apache.org/jira/browse/HBASE-15698) | Increment TimeRange not serialized to server |  Blocker | . | James Taylor | Ted Yu |
| [HBASE-15803](https://issues.apache.org/jira/browse/HBASE-15803) | ZooKeeperWatcher's constructor can leak a ZooKeeper instance with throwing ZooKeeperConnectionException when canCreateBaseZNode is true |  Minor | . | Hiroshi Ikeda | Ted Yu |
| [HBASE-15957](https://issues.apache.org/jira/browse/HBASE-15957) | RpcClientImpl.close never ends in some circumstances |  Major | Client, rpc | Sergey Soldatov | Sergey Soldatov |
| [HBASE-15959](https://issues.apache.org/jira/browse/HBASE-15959) | Fix flaky test TestRegionServerMetrics.testMobMetrics |  Major | . | Appy | huaxiang sun |
| [HBASE-15975](https://issues.apache.org/jira/browse/HBASE-15975) | logic in TestHTableDescriptor#testAddCoprocessorWithSpecStr is wrong |  Trivial | test | huaxiang sun | huaxiang sun |
| [HBASE-15952](https://issues.apache.org/jira/browse/HBASE-15952) | Bulk load data replication is not working when RS user does not have permission on hfile-refs node |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15990](https://issues.apache.org/jira/browse/HBASE-15990) | The priority value of subsequent coprocessors in the Coprocessor.Priority.SYSTEM list are not incremented by one |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15946](https://issues.apache.org/jira/browse/HBASE-15946) | Eliminate possible security concerns in RS web UI's store file metrics |  Major | . | Sean Mackrory | Sean Mackrory |
| [HBASE-14644](https://issues.apache.org/jira/browse/HBASE-14644) | Region in transition metric is broken |  Major | . | Elliott Clark | huaxiang sun |
| [HBASE-16007](https://issues.apache.org/jira/browse/HBASE-16007) | Job's Configuration should be passed to TableMapReduceUtil#addDependencyJars() in WALPlayer |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16016](https://issues.apache.org/jira/browse/HBASE-16016) | AssignmentManager#waitForAssignment could have unexpected negative deadline |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16021](https://issues.apache.org/jira/browse/HBASE-16021) | graceful\_stop.sh: Wrap variables in double quote to avoid  "[: too many arguments" error |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-15746](https://issues.apache.org/jira/browse/HBASE-15746) | Remove extra RegionCoprocessor preClose() in RSRpcServices#closeRegion |  Minor | Coprocessors, regionserver | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-16017](https://issues.apache.org/jira/browse/HBASE-16017) | HBase TableOutputFormat has connection leak in getRecordWriter |  Major | mapreduce | Zhan Zhang | Zhan Zhang |
| [HBASE-16031](https://issues.apache.org/jira/browse/HBASE-16031) | Documents about "hbase.replication" default value seems wrong |  Major | documentation | Heng Chen | Heng Chen |
| [HBASE-16047](https://issues.apache.org/jira/browse/HBASE-16047) | TestFastFail is broken again |  Major | test | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15977](https://issues.apache.org/jira/browse/HBASE-15977) | Failed variable substitution on home page |  Major | website | Nick Dimiduk | Dima Spivak |
| [HBASE-16045](https://issues.apache.org/jira/browse/HBASE-16045) | endtime argument for VerifyReplication was incorrectly specified in usage |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16053](https://issues.apache.org/jira/browse/HBASE-16053) | Master code is not setting the table in ENABLING state in create table |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16061](https://issues.apache.org/jira/browse/HBASE-16061) | Allow logging to a buffered console |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15467](https://issues.apache.org/jira/browse/HBASE-15467) | Remove 1.x/2.0 TableDescriptor incompatibility |  Major | master, regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16058](https://issues.apache.org/jira/browse/HBASE-16058) | TestHRegion fails on 1.4 builds |  Major | test | Mikhail Antonov | Enis Soztutar |
| [HBASE-16066](https://issues.apache.org/jira/browse/HBASE-16066) | Resolve RpC\_REPEATED\_CONDITIONAL\_TEST findbugs warnings in HMaster |  Major | . | Yu Li | Yu Li |
| [HBASE-16054](https://issues.apache.org/jira/browse/HBASE-16054) | OutOfMemory exception when using AsyncRpcClient with encryption |  Major | . | Colin Ma | Colin Ma |
| [HBASE-14485](https://issues.apache.org/jira/browse/HBASE-14485) | ConnectionImplementation leaks on construction failure |  Major | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16059](https://issues.apache.org/jira/browse/HBASE-16059) | Region normalizer fails to trigger merge action where one of the regions is empty |  Major | master | Romil Choksi | Ted Yu |
| [HBASE-15783](https://issues.apache.org/jira/browse/HBASE-15783) | AccessControlConstants#OP\_ATTRIBUTE\_ACL\_STRATEGY\_CELL\_FIRST not used any more. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16035](https://issues.apache.org/jira/browse/HBASE-16035) | Nested AutoCloseables might not all get closed |  Major | . | Sean Mackrory | Sean Mackrory |
| [HBASE-16032](https://issues.apache.org/jira/browse/HBASE-16032) | Possible memory leak in StoreScanner |  Major | . | Yu Li | Yu Li |
| [HBASE-16062](https://issues.apache.org/jira/browse/HBASE-16062) | Improper error handling in WAL Reader/Writer creation |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16012](https://issues.apache.org/jira/browse/HBASE-16012) | Major compaction can't work due to obsolete scanner read point in RegionServer |  Major | Compaction, Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16070](https://issues.apache.org/jira/browse/HBASE-16070) | Mapreduce Serialization classes do not have Interface audience |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16040](https://issues.apache.org/jira/browse/HBASE-16040) | Remove configuration "hbase.replication" |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16103](https://issues.apache.org/jira/browse/HBASE-16103) | Procedure v2 - TestCloneSnapshotProcedure relies on execution order |  Minor | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16111](https://issues.apache.org/jira/browse/HBASE-16111) | Truncate preserve shell command is broken |  Major | shell | Elliott Clark | Heng Chen |
| [HBASE-16109](https://issues.apache.org/jira/browse/HBASE-16109) | Add Interface audience annotation to a few classes |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16069](https://issues.apache.org/jira/browse/HBASE-16069) | Typo "trapsparently" in item 3 of chapter 87.2 of Reference Guide |  Minor | documentation | Xiang Li | Xiang Li |
| [HBASE-16122](https://issues.apache.org/jira/browse/HBASE-16122) | PerformanceEvaluation should provide user friendly hint when client threads argument is missing |  Minor | . | Ted Yu | Konstantin Ryakhovskiy |
| [HBASE-15976](https://issues.apache.org/jira/browse/HBASE-15976) | RegionServerMetricsWrapperRunnable will be failure  when disable blockcache. |  Major | . | Liu Junhong | Jingcheng Du |
| [HBASE-16129](https://issues.apache.org/jira/browse/HBASE-16129) | check\_compatibility.sh is broken when using Java API Compliance Checker v1.7 |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-16133](https://issues.apache.org/jira/browse/HBASE-16133) | RSGroupBasedLoadBalancer.retainAssignment() might miss a region |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16125](https://issues.apache.org/jira/browse/HBASE-16125) | RegionMover uses hardcoded, Unix-style tmp folder - breaks Windows |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16159](https://issues.apache.org/jira/browse/HBASE-16159) | OutOfMemory exception when using AsyncRpcClient with encryption to read rpc response |  Major | . | Colin Ma | Colin Ma |
| [HBASE-15844](https://issues.apache.org/jira/browse/HBASE-15844) | We should respect hfile.block.index.cacheonwrite when write intermediate index Block |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16135](https://issues.apache.org/jira/browse/HBASE-16135) | PeerClusterZnode under rs of removed peer may never be deleted |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16132](https://issues.apache.org/jira/browse/HBASE-16132) | Scan does not return all the result when regionserver is busy |  Major | Client | binlijin | binlijin |
| [HBASE-16091](https://issues.apache.org/jira/browse/HBASE-16091) | Canary takes lot more time when there are delete markers in the table |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-16177](https://issues.apache.org/jira/browse/HBASE-16177) | In dev mode thrift server can't be run |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16157](https://issues.apache.org/jira/browse/HBASE-16157) | The incorrect block cache count and size are caused by removing duplicate block key in the LruBlockCache |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16182](https://issues.apache.org/jira/browse/HBASE-16182) | Increase IntegrationTestRpcClient timeout |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16190](https://issues.apache.org/jira/browse/HBASE-16190) | IntegrationTestDDLMasterFailover failed with IllegalArgumentException: n must be positive |  Minor | . | Romil Choksi | Romil Choksi |
| [HBASE-16187](https://issues.apache.org/jira/browse/HBASE-16187) | Fix typo in blog post for metrics2 |  Major | website | Lars George | Sean Busbey |
| [HBASE-15925](https://issues.apache.org/jira/browse/HBASE-15925) | compat-module maven variable not evaluated |  Blocker | build | Nick Dimiduk | Sean Busbey |
| [HBASE-16171](https://issues.apache.org/jira/browse/HBASE-16171) | Fix the potential problems in TestHCM.testConnectionCloseAllowsInterrupt |  Major | . | Colin Ma | Colin Ma |
| [HBASE-16201](https://issues.apache.org/jira/browse/HBASE-16201) | NPE in RpcServer causing intermittent UT failure of TestMasterReplication#testHFileCyclicReplication |  Major | . | Yu Li | Yu Li |
| [HBASE-16074](https://issues.apache.org/jira/browse/HBASE-16074) | ITBLL fails, reports lost big or tiny families |  Blocker | integration tests | Mikhail Antonov | stack |
| [HBASE-16160](https://issues.apache.org/jira/browse/HBASE-16160) | Get the UnsupportedOperationException when using delegation token with encryption |  Blocker | . | Colin Ma | Colin Ma |
| [HBASE-16044](https://issues.apache.org/jira/browse/HBASE-16044) | Fix 'hbase shell' output parsing in graceful\_stop.sh |  Critical | scripts, shell | Samir Ahmic | Appy |
| [HBASE-16081](https://issues.apache.org/jira/browse/HBASE-16081) | Replication remove\_peer gets stuck and blocks WAL rolling |  Blocker | regionserver, Replication | Ashu Pachauri | Joseph |
| [HBASE-16055](https://issues.apache.org/jira/browse/HBASE-16055) | PutSortReducer loses any Visibility/acl attribute set on the Puts |  Critical | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16184](https://issues.apache.org/jira/browse/HBASE-16184) | Shell test fails due to rLoadSink being nil |  Major | . | Ted Yu | Phil Yang |
| [HBASE-16207](https://issues.apache.org/jira/browse/HBASE-16207) | can't restore snapshot without "Admin" permission |  Major | master, snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16150](https://issues.apache.org/jira/browse/HBASE-16150) | Remove ConcurrentIndex |  Major | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-16211](https://issues.apache.org/jira/browse/HBASE-16211) | JMXCacheBuster restarting the metrics system might cause tests to hang |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16227](https://issues.apache.org/jira/browse/HBASE-16227) | [Shell] Column value formatter not working in scans |  Major | . | Appy | Appy |
| [HBASE-16095](https://issues.apache.org/jira/browse/HBASE-16095) | Add priority to TableDescriptor and priority region open thread pool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16183](https://issues.apache.org/jira/browse/HBASE-16183) | Correct errors in example programs of coprocessor in Ref Guide |  Minor | documentation | Xiang Li | Xiang Li |
| [HBASE-16235](https://issues.apache.org/jira/browse/HBASE-16235) | TestSnapshotFromMaster#testSnapshotHFileArchiving will fail if there are too many hfiles |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | Replication queue's lock will live forever if RS acquiring the lock has died prematurely |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16076](https://issues.apache.org/jira/browse/HBASE-16076) | Cannot configure split policy in HBase shell |  Minor | documentation | Youngjoon Kim | Heng Chen |
| [HBASE-16110](https://issues.apache.org/jira/browse/HBASE-16110) | AsyncFS WAL doesn't work with Hadoop 2.8+ |  Blocker | wal | Sean Busbey | Duo Zhang |
| [HBASE-16172](https://issues.apache.org/jira/browse/HBASE-16172) | Unify the retry logic in ScannerCallableWithReplicas and RpcRetryingCallerWithReadReplicas |  Major | . | Yu Li | Ted Yu |
| [HBASE-16244](https://issues.apache.org/jira/browse/HBASE-16244) | LocalHBaseCluster start timeout should be configurable |  Major | hbase | Siddharth Wagle |  |
| [HBASE-16272](https://issues.apache.org/jira/browse/HBASE-16272) | Overflow in ServerName's compareTo method |  Major | hbase | huaxiang sun | huaxiang sun |
| [HBASE-16221](https://issues.apache.org/jira/browse/HBASE-16221) | Thrift server drops connection on long scans |  Major | Thrift | Ashu Pachauri | Joseph |
| [HBASE-16281](https://issues.apache.org/jira/browse/HBASE-16281) | TestMasterReplication is flaky |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16293](https://issues.apache.org/jira/browse/HBASE-16293) | TestSnapshotFromMaster#testSnapshotHFileArchiving flakey |  Major | test | huaxiang sun | huaxiang sun |
| [HBASE-16096](https://issues.apache.org/jira/browse/HBASE-16096) | Replication keeps accumulating znodes |  Major | Replication | Ashu Pachauri | Joseph |
| [HBASE-16289](https://issues.apache.org/jira/browse/HBASE-16289) | AsyncProcess stuck messages need to print region/server |  Critical | Operability | stack | Yu Li |
| [HBASE-16300](https://issues.apache.org/jira/browse/HBASE-16300) | LruBlockCache.CACHE\_FIXED\_OVERHEAD should calculate LruBlockCache size correctly |  Major | . | Yu Sun | Yu Sun |
| [HBASE-16306](https://issues.apache.org/jira/browse/HBASE-16306) | Add specific imports to avoid namespace clash in defaultSource.scala |  Minor | . | Sai Teja Ranuva | Sai Teja Ranuva |
| [HBASE-16234](https://issues.apache.org/jira/browse/HBASE-16234) | Expect and handle nulls when assigning replicas |  Major | Region Assignment | Harsh J | Yi Liang |
| [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | HFile intermediate block level indexes might recurse forever creating multi TB files |  Critical | HFile | Enis Soztutar | Enis Soztutar |
| [HBASE-16296](https://issues.apache.org/jira/browse/HBASE-16296) | Reverse scan performance degrades when using filter lists |  Major | Filters | James Taylor | Ted Yu |
| [HBASE-16284](https://issues.apache.org/jira/browse/HBASE-16284) | Unauthorized client can shutdown the cluster |  Major | . | Deokwoo Han | Deokwoo Han |
| [HBASE-16315](https://issues.apache.org/jira/browse/HBASE-16315) | RegionSizeCalculator prints region names as binary without escapes |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16319](https://issues.apache.org/jira/browse/HBASE-16319) | Fix TestCacheOnWrite after HBASE-16288 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16301](https://issues.apache.org/jira/browse/HBASE-16301) | Trigger flush without waiting when compaction is disabled on a table |  Minor | . | huaxiang sun | huaxiang sun |
| [HBASE-16347](https://issues.apache.org/jira/browse/HBASE-16347) | Unevaluated expressions in book |  Major | documentation, site | Nick Dimiduk | Dima Spivak |
| [HBASE-16271](https://issues.apache.org/jira/browse/HBASE-16271) | Fix logging and re-run the test in IntegrationTestBulkLoad |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16350](https://issues.apache.org/jira/browse/HBASE-16350) | Undo server abort from HBASE-14968 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15574](https://issues.apache.org/jira/browse/HBASE-15574) | Minor typo on HRegionServerCommandLine.java |  Trivial | . | Lim Chee Hau | Lim Chee Hau |
| [HBASE-15461](https://issues.apache.org/jira/browse/HBASE-15461) | ref guide has bad links to blogs originally posted on cloudera website |  Major | website | Sean Busbey | Sean Busbey |
| [HBASE-16359](https://issues.apache.org/jira/browse/HBASE-16359) | NullPointerException in RSRpcServices.openRegion() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16362](https://issues.apache.org/jira/browse/HBASE-16362) | Mob compaction does not set cacheBlocks to false when creating StoreScanner |  Major | Compaction, regionserver | Duo Zhang | Duo Zhang |
| [HBASE-15866](https://issues.apache.org/jira/browse/HBASE-15866) | Split hbase.rpc.timeout into \*.read.timeout and \*.write.timeout |  Major | . | Andrew Purtell | Vivek Koppuru |
| [HBASE-16303](https://issues.apache.org/jira/browse/HBASE-16303) | FilterList with MUST\_PASS\_ONE optimization |  Major | Filters | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16367](https://issues.apache.org/jira/browse/HBASE-16367) | Race between master and region server initialization may lead to premature server abort |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16361](https://issues.apache.org/jira/browse/HBASE-16361) | Revert of HBASE-16317, "revert all ESAPI..." broke TestLogLevel |  Major | dependencies, UI | stack | stack |
| [HBASE-16310](https://issues.apache.org/jira/browse/HBASE-16310) | Revisit the logic of filterRowKey for Filters |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16368](https://issues.apache.org/jira/browse/HBASE-16368) | test\*WhenRegionMove in TestPartialResultsFromClientSide is flaky |  Major | Scanners | Guanghao Zhang | Phil Yang |
| [HBASE-16363](https://issues.apache.org/jira/browse/HBASE-16363) | Correct javadoc for qualifier length and value length in Cell interface |  Minor | documentation | Xiang Li | Xiang Li |
| [HBASE-16389](https://issues.apache.org/jira/browse/HBASE-16389) | Thread leak in CoprocessorHost#getTable(TableName) API |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-16267](https://issues.apache.org/jira/browse/HBASE-16267) | Remove commons-httpclient dependency from hbase-rest module |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-16341](https://issues.apache.org/jira/browse/HBASE-16341) | Missing bit on "Regression: Random Read/WorkloadC slower in 1.x than 0.98" |  Major | rpc | stack | stack |
| [HBASE-15635](https://issues.apache.org/jira/browse/HBASE-15635) | Mean age of Blocks in cache (seconds) on webUI should be greater than zero |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16384](https://issues.apache.org/jira/browse/HBASE-16384) | Update report-flakies.py script to allow specifying a list of build ids to be excluded |  Major | . | Appy | Appy |
| [HBASE-16429](https://issues.apache.org/jira/browse/HBASE-16429) | FSHLog: deadlock if rollWriter called when ring buffer filled with appends |  Critical | . | Yu Li | Yu Li |
| [HBASE-16430](https://issues.apache.org/jira/browse/HBASE-16430) | Fix RegionServer Group's bug when moving multiple tables |  Major | master | Guangxu Cheng | Guangxu Cheng |
| [HBASE-7621](https://issues.apache.org/jira/browse/HBASE-7621) | REST client (RemoteHTable) doesn't support binary row keys |  Major | REST | Craig Muchinsky | Keith David Winkler |
| [HBASE-16444](https://issues.apache.org/jira/browse/HBASE-16444) | CellUtil#estimatedSerializedSizeOfKey() should consider KEY\_INFRASTRUCTURE\_SIZE |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16454](https://issues.apache.org/jira/browse/HBASE-16454) | Compactor's shipping logic decision should be based on the current store's block size |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16446](https://issues.apache.org/jira/browse/HBASE-16446) | append\_peer\_tableCFs failed when there already have this table's partial cfs in the peer |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16360](https://issues.apache.org/jira/browse/HBASE-16360) | TableMapReduceUtil addHBaseDependencyJars has the wrong class name for PrefixTreeCodec |  Minor | mapreduce | Matteo Bertozzi | Jing Pu Chen |
| [HBASE-16464](https://issues.apache.org/jira/browse/HBASE-16464) | archive folder grows bigger and bigger due to corrupt snapshot under tmp dir |  Major | snapshots | Heng Chen | Heng Chen |
| [HBASE-16456](https://issues.apache.org/jira/browse/HBASE-16456) | Fix findbugs warnings in hbase-rsgroup module |  Minor | . | Ted Yu | Guangxu Cheng |
| [HBASE-16471](https://issues.apache.org/jira/browse/HBASE-16471) | Region Server metrics context will be wrong when machine hostname contain "master" word |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16270](https://issues.apache.org/jira/browse/HBASE-16270) | Handle duplicate clearing of snapshot in region replicas |  Major | Replication | Robert Yokota | Robert Yokota |
| [HBASE-16304](https://issues.apache.org/jira/browse/HBASE-16304) | HRegion#RegionScannerImpl#handleFileNotFoundException may lead to deadlock when trying to obtain write lock on updatesLock |  Critical | . | mingmin xu | Ted Yu |
| [HBASE-16495](https://issues.apache.org/jira/browse/HBASE-16495) | When accessed via Thrift, all column families have timeToLive equal to -1 |  Minor | Thrift | Tigran Saluev | Tigran Saluev |
| [HBASE-16409](https://issues.apache.org/jira/browse/HBASE-16409) | Row key for bad row should be properly delimited in VerifyReplication |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16490](https://issues.apache.org/jira/browse/HBASE-16490) | Fix race condition between SnapshotManager and SnapshotCleaner |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16515](https://issues.apache.org/jira/browse/HBASE-16515) | AsyncProcess has incorrent count of tasks if the backoff policy is enabled |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16535](https://issues.apache.org/jira/browse/HBASE-16535) | Use regex to exclude generated classes for findbugs |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-16528](https://issues.apache.org/jira/browse/HBASE-16528) | Procedure-V2: ServerCrashProcedure misses owner information |  Major | hbase, master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15278](https://issues.apache.org/jira/browse/HBASE-15278) | AsyncRPCClient hangs if Connection closes before RPC call response |  Blocker | rpc, test | Enis Soztutar | Heng Chen |
| [HBASE-16527](https://issues.apache.org/jira/browse/HBASE-16527) | IOExceptions from DFS client still can cause CatalogJanitor to delete referenced files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16375](https://issues.apache.org/jira/browse/HBASE-16375) | Mapreduce mini cluster using HBaseTestingUtility not setting correct resourcemanager and jobhistory webapp address of MapReduceTestingShim |  Minor | . | Loknath Priyatham Teja Singamsetty | Loknath Priyatham Teja Singamsetty |
| [HBASE-16547](https://issues.apache.org/jira/browse/HBASE-16547) | hbase-archetype-builder shell scripts assume bash is installed in /bin |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16552](https://issues.apache.org/jira/browse/HBASE-16552) | MiniHBaseCluster#getServerWith() does not ignore stopped RSs |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16538](https://issues.apache.org/jira/browse/HBASE-16538) | Version mismatch in HBaseConfiguration.checkDefaultsVersion |  Major | . | Appy | Appy |
| [HBASE-16556](https://issues.apache.org/jira/browse/HBASE-16556) | The read/write timeout are not used in HTable.delete(List), HTable.get(List), and HTable.existsAll(List) |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16460](https://issues.apache.org/jira/browse/HBASE-16460) | Can't rebuild the BucketAllocator's data structures when BucketCache uses FileIOEngine |  Major | BucketCache | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16572](https://issues.apache.org/jira/browse/HBASE-16572) | Sync method in RecoverableZooKeeper failed to pass callback function in |  Minor | Zookeeper | Allan Yang | Allan Yang |
| [HBASE-16544](https://issues.apache.org/jira/browse/HBASE-16544) | Remove or Clarify  'Using Amazon S3 Storage' section in the reference guide |  Major | documentation, Filesystem Integration | Yi Liang | Yi Liang |
| [HBASE-16589](https://issues.apache.org/jira/browse/HBASE-16589) | Adjust log level for FATAL messages from HBaseReplicationEndpoint that are not fatal |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16309](https://issues.apache.org/jira/browse/HBASE-16309) | TestDefaultCompactSelection.testCompactionRatio is flaky |  Major | Compaction, test | Duo Zhang | Duo Zhang |
| [HBASE-16576](https://issues.apache.org/jira/browse/HBASE-16576) | Shell add\_peer doesn't allow setting cluster\_key for custom endpoints |  Major | shell | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15624](https://issues.apache.org/jira/browse/HBASE-15624) | Move master branch/hbase-2.0.0 to jdk-8 only |  Blocker | build | stack | Duo Zhang |
| [HBASE-16614](https://issues.apache.org/jira/browse/HBASE-16614) | Use daemon thread for netty event loop |  Major | IPC/RPC, rpc | Duo Zhang | Duo Zhang |
| [HBASE-16609](https://issues.apache.org/jira/browse/HBASE-16609) | Fake cells EmptyByteBufferedCell  created in read path not implementing SettableSequenceId |  Major | . | Yu Sun | Yu Sun |
| [HBASE-16491](https://issues.apache.org/jira/browse/HBASE-16491) | A few org.apache.hadoop.hbase.rsgroup classes missing @InterfaceAudience annotation |  Minor | API, regionserver | Ted Yu | Umesh Agashe |
| [HBASE-16612](https://issues.apache.org/jira/browse/HBASE-16612) | Use array to cache Types for KeyValue.Type.codeToType |  Minor | . | Phil Yang | Phil Yang |
| [HBASE-16624](https://issues.apache.org/jira/browse/HBASE-16624) | MVCC DeSerialization bug in the HFileScannerImpl |  Blocker | HFile | deepankar | deepankar |
| [HBASE-16165](https://issues.apache.org/jira/browse/HBASE-16165) | Decrease RpcServer.callQueueSize before writeResponse causes OOM |  Minor | IPC/RPC, rpc | Duo Zhang | Guanghao Zhang |
| [HBASE-16635](https://issues.apache.org/jira/browse/HBASE-16635) | RpcClient under heavy load leaks some netty bytebuf |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16551](https://issues.apache.org/jira/browse/HBASE-16551) | Cleanup SplitLogManager and CatalogJanitor |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16647](https://issues.apache.org/jira/browse/HBASE-16647) | hbck should do offline reference repair before online repair |  Major | . | Jerry He | Jerry He |
| [HBASE-16540](https://issues.apache.org/jira/browse/HBASE-16540) | Scan should do additional validation on start and stop row |  Major | Client | Gary Helmling | Dustin Pho |
| [HBASE-16654](https://issues.apache.org/jira/browse/HBASE-16654) | Better handle channelInactive and close for netty rpc client |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-12949](https://issues.apache.org/jira/browse/HBASE-12949) | Scanner can be stuck in infinite loop if the HFile is corrupted |  Major | . | Jerry He | Jerry He |
| [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | hbck reporting "No HDFS region dir found" for replicas |  Minor | hbck | Matteo Bertozzi | Umesh Agashe |
| [HBASE-16669](https://issues.apache.org/jira/browse/HBASE-16669) | fix flaky TestAdmin#testmergeRegions |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12088](https://issues.apache.org/jira/browse/HBASE-12088) | Remove un-used profiles in non-root poms |  Major | . | Elliott Clark | Jonathan Hsieh |
| [HBASE-16670](https://issues.apache.org/jira/browse/HBASE-16670) | Make RpcServer#processRequest logic more robust |  Minor | . | Yu Li | Yu Li |
| [HBASE-16675](https://issues.apache.org/jira/browse/HBASE-16675) | Average region size may be incorrect when there is region whose RegionLoad cannot be retrieved |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16662](https://issues.apache.org/jira/browse/HBASE-16662) | Fix open POODLE vulnerabilities |  Major | REST, Thrift | Ben Lau | Ben Lau |
| [HBASE-16604](https://issues.apache.org/jira/browse/HBASE-16604) | Scanner retries on IOException can cause the scans to miss data |  Critical | regionserver, Scanners | Enis Soztutar | Enis Soztutar |
| [HBASE-16688](https://issues.apache.org/jira/browse/HBASE-16688) | Split TestMasterFailoverWithProcedures |  Major | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16693](https://issues.apache.org/jira/browse/HBASE-16693) | The commit of HBASE-16604 creates a unrelated folder |  Critical | . | Chia-Ping Tsai |  |
| [HBASE-16679](https://issues.apache.org/jira/browse/HBASE-16679) | Flush throughput controller: Minor perf change and fix flaky TestFlushWithThroughputController |  Major | . | Appy | Appy |
| [HBASE-16697](https://issues.apache.org/jira/browse/HBASE-16697) | bump TestRegionServerMetrics to LargeTests |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16665](https://issues.apache.org/jira/browse/HBASE-16665) | Check whether KeyValueUtil.createXXX could be replaced by CellUtil without copy |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16645](https://issues.apache.org/jira/browse/HBASE-16645) | Wrong range of Cells is caused by CellFlatMap#tailMap, headMap, and SubMap |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16704](https://issues.apache.org/jira/browse/HBASE-16704) | Scan will be broken while working with DBE and KeyValueCodecWithTags |  Major | . | Yu Sun | Anoop Sam John |
| [HBASE-16649](https://issues.apache.org/jira/browse/HBASE-16649) | Truncate table with splits preserved can cause both data loss and truncated data appeared again |  Major | . | Allan Yang | Matteo Bertozzi |
| [HBASE-16643](https://issues.apache.org/jira/browse/HBASE-16643) | Reverse scanner heap creation may not allow MSLAB closure due to improper ref counting of segments |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16660](https://issues.apache.org/jira/browse/HBASE-16660) | ArrayIndexOutOfBounds during the majorCompactionCheck in DateTieredCompaction |  Critical | Compaction | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-16682](https://issues.apache.org/jira/browse/HBASE-16682) | Fix Shell tests failure. NoClassDefFoundError for MiniKdc |  Major | . | Appy | Appy |
| [HBASE-16696](https://issues.apache.org/jira/browse/HBASE-16696) | After HBASE-16604 - does not release blocks in case of scanner exception |  Critical | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-16711](https://issues.apache.org/jira/browse/HBASE-16711) | Fix hadoop-3.0 profile compile |  Major | build, hadoop3 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16723](https://issues.apache.org/jira/browse/HBASE-16723) | RMI registry is not destroyed after stopping JMX Connector Server |  Major | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16732](https://issues.apache.org/jira/browse/HBASE-16732) | Avoid possible NPE in MetaTableLocator |  Minor | . | Jerry He | Jerry He |
| [HBASE-16678](https://issues.apache.org/jira/browse/HBASE-16678) | MapReduce jobs do not update counters from ScanMetrics |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16739](https://issues.apache.org/jira/browse/HBASE-16739) | Timed out exception message should include encoded region name |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16764](https://issues.apache.org/jira/browse/HBASE-16764) | hbase-protocol-shaded generate-shaded-classes profile unpacks shaded java files into wrong location |  Major | build | stack | stack |
| [HBASE-16763](https://issues.apache.org/jira/browse/HBASE-16763) | Remove unintentional dependency on net.sf.ehcache.search.Results |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16644](https://issues.apache.org/jira/browse/HBASE-16644) | Errors when reading legit HFile Trailer of old (v2.0) format file |  Critical | HFile | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16753](https://issues.apache.org/jira/browse/HBASE-16753) | There is a mismatch between suggested Java version in hbase-env.sh |  Minor | scripts | Umesh Agashe | Umesh Agashe |
| [HBASE-16681](https://issues.apache.org/jira/browse/HBASE-16681) | Fix flaky TestReplicationSourceManagerZkImpl |  Major | . | Appy | Ashu Pachauri |
| [HBASE-16767](https://issues.apache.org/jira/browse/HBASE-16767) | Mob compaction needs to clean up files in /hbase/mobdir/.tmp and /hbase/mobdir/.tmp/.bulkload when running into IO exceptions |  Major | mob | huaxiang sun | huaxiang sun |
| [HBASE-16768](https://issues.apache.org/jira/browse/HBASE-16768) | Inconsistent results from the Append/Increment |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16771](https://issues.apache.org/jira/browse/HBASE-16771) | VerifyReplication should increase GOODROWS counter if re-comparison passes |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16699](https://issues.apache.org/jira/browse/HBASE-16699) | Overflows in AverageIntervalRateLimiter's refill() and getWaitInterval() |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-16793](https://issues.apache.org/jira/browse/HBASE-16793) | Exclude shaded protobuf files from rat check |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-16622](https://issues.apache.org/jira/browse/HBASE-16622) | Fix some issues with the HBase reference guide |  Major | documentation | alexxiyang | alexxiyang |
| [HBASE-15109](https://issues.apache.org/jira/browse/HBASE-15109) | HM/RS failed to start when "fs.hdfs.impl.disable.cache" is set to true |  Critical | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16801](https://issues.apache.org/jira/browse/HBASE-16801) | The Append/Increment may return the data from future |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16731](https://issues.apache.org/jira/browse/HBASE-16731) | Inconsistent results from the Get/Scan if we use the empty FilterList |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16808](https://issues.apache.org/jira/browse/HBASE-16808) | Included the generated, shaded java files from "HBASE-15638 Shade protobuf" in our src assembly |  Blocker | . | stack | stack |
| [HBASE-16746](https://issues.apache.org/jira/browse/HBASE-16746) | The log of “region close” should differ from “region move” |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16716](https://issues.apache.org/jira/browse/HBASE-16716) | OfflineMetaRepair leaves empty directory inside /hbase/WALs which remains forever |  Minor | hbck | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16807](https://issues.apache.org/jira/browse/HBASE-16807) | RegionServer will fail to report new active Hmaster until HMaster/RegionServer failover |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16724](https://issues.apache.org/jira/browse/HBASE-16724) | Snapshot owner can't clone |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16664](https://issues.apache.org/jira/browse/HBASE-16664) | Timeout logic in AsyncProcess is broken |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16810](https://issues.apache.org/jira/browse/HBASE-16810) | HBase Balancer throws ArrayIndexOutOfBoundsException when regionservers are in /hbase/draining znode and unloaded |  Major | Balancer | Ashu Pachauri | David Pope |
| [HBASE-16853](https://issues.apache.org/jira/browse/HBASE-16853) | Regions are assigned to Region Servers in /hbase/draining after HBase Master failover |  Major | Balancer, Region Assignment | David Pope | David Pope |
| [HBASE-16856](https://issues.apache.org/jira/browse/HBASE-16856) | Exception message in SyncRunner.run() should print currentSequence |  Minor | wal | Allan Yang | Allan Yang |
| [HBASE-16855](https://issues.apache.org/jira/browse/HBASE-16855) | Avoid NPE in MetricsConnection’s construction |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16326](https://issues.apache.org/jira/browse/HBASE-16326) | CellModel / RowModel should override 'equals', 'hashCode' and 'toString' |  Trivial | REST | Minwoo Kang | Minwoo Kang |
| [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | Concurrency issue in WAL unflushed seqId tracking |  Critical | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-16712](https://issues.apache.org/jira/browse/HBASE-16712) | fix hadoop-3.0 profile mvn install |  Major | build, hadoop3 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16283](https://issues.apache.org/jira/browse/HBASE-16283) | Batch Append/Increment will always fail if set ReturnResults to false |  Minor | API | Allan Yang | Allan Yang |
| [HBASE-16733](https://issues.apache.org/jira/browse/HBASE-16733) | add hadoop 3.0.0-alpha1 to precommit checks |  Major | build, hadoop3 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16866](https://issues.apache.org/jira/browse/HBASE-16866) | Avoid NPE in AsyncRequestFutureImpl#updateStats |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16824](https://issues.apache.org/jira/browse/HBASE-16824) | Writer.flush() can be called on already closed streams in WAL roll |  Major | wal | Atri Sharma | Enis Soztutar |
| [HBASE-16578](https://issues.apache.org/jira/browse/HBASE-16578) | Mob data loss after mob compaction and normal compaction |  Major | mob | huaxiang sun | Jingcheng Du |
| [HBASE-16752](https://issues.apache.org/jira/browse/HBASE-16752) | Upgrading from 1.2 to 1.3 can lead to replication failures due to difference in RPC size limit |  Major | Replication, rpc | Ashu Pachauri | Ashu Pachauri |
| [HBASE-16884](https://issues.apache.org/jira/browse/HBASE-16884) | Add HBase-2.0.x to the hadoop version support matrix in our documentation |  Blocker | documentation | Duo Zhang | Duo Zhang |
| [HBASE-16889](https://issues.apache.org/jira/browse/HBASE-16889) | Proc-V2: verifyTables in the IntegrationTestDDLMasterFailover test after each table DDL is incorrect |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16701](https://issues.apache.org/jira/browse/HBASE-16701) | TestHRegion and TestHRegionWithInMemoryFlush timing out |  Major | regionserver, test | Appy | Sean Busbey |
| [HBASE-16910](https://issues.apache.org/jira/browse/HBASE-16910) | Avoid NPE when starting StochasticLoadBalancer |  Minor | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15348](https://issues.apache.org/jira/browse/HBASE-15348) | Fix tests broken by recent metrics re-work |  Major | metrics, test | Elliott Clark | Elliott Clark |
| [HBASE-16754](https://issues.apache.org/jira/browse/HBASE-16754) | Regions failing compaction due to referencing non-existent store file |  Blocker | . | Gary Helmling | Gary Helmling |
| [HBASE-16829](https://issues.apache.org/jira/browse/HBASE-16829) | DemoClient should detect secure mode |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16815](https://issues.apache.org/jira/browse/HBASE-16815) | Low scan ratio in RPC queue tuning triggers divide by zero exception |  Major | regionserver, rpc | Lars George | Guanghao Zhang |
| [HBASE-16870](https://issues.apache.org/jira/browse/HBASE-16870) | Add the metrics of replication sources which were transformed from other dead rs to ReplicationLoad |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15684](https://issues.apache.org/jira/browse/HBASE-15684) | Fix the broken log file size accounting |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-16887](https://issues.apache.org/jira/browse/HBASE-16887) | Allow setting different hadoopcheck versions in precommit for different branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-16930](https://issues.apache.org/jira/browse/HBASE-16930) | AssignmentManager#checkWals() function can recur infinitely |  Major | Region Assignment | Umesh Agashe | Umesh Agashe |
| [HBASE-16880](https://issues.apache.org/jira/browse/HBASE-16880) | Correct the javadoc/behaviour of the APIs in ByteBufferUtils |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16000](https://issues.apache.org/jira/browse/HBASE-16000) | Table#checkAndPut() docs are too vague |  Minor | documentation | Nick Dimiduk | Csaba Skrabak |
| [HBASE-16939](https://issues.apache.org/jira/browse/HBASE-16939) | ExportSnapshot: set owner and permission on right directory |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16949](https://issues.apache.org/jira/browse/HBASE-16949) | Fix RAT License complaint about the hbase-protocol-shaded/src/main/patches content |  Major | . | stack | stack |
| [HBASE-16948](https://issues.apache.org/jira/browse/HBASE-16948) | Fix inconsistency between HRegion and Region javadoc on getRowLock |  Major | . | stack | stack |
| [HBASE-16971](https://issues.apache.org/jira/browse/HBASE-16971) | The passed durability of Append/Increment isn't used in wal sync |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16974](https://issues.apache.org/jira/browse/HBASE-16974) | Update os-maven-plugin to 1.4.1.final+ for building shade file on RHEL/CentOS |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16966](https://issues.apache.org/jira/browse/HBASE-16966) | Re-enable TestSimpleRpcScheduler#testCoDelScheduling  in master branch |  Major | test | Mikhail Antonov | stack |
| [HBASE-16980](https://issues.apache.org/jira/browse/HBASE-16980) | TestRowProcessorEndpoint failing consistently |  Major | . | Andrew Purtell | Yu Li |
| [HBASE-16931](https://issues.apache.org/jira/browse/HBASE-16931) | Setting cell's seqId to zero in compaction flow might cause RS down. |  Critical | regionserver | binlijin | binlijin |
| [HBASE-16976](https://issues.apache.org/jira/browse/HBASE-16976) | hbase-protocol-shaded module generates classes to wrong directory |  Minor | build | Josh Elser | Josh Elser |
| [HBASE-16964](https://issues.apache.org/jira/browse/HBASE-16964) | Successfully archived files are not cleared from compacted store file list if archiving of any file fails |  Blocker | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-14329](https://issues.apache.org/jira/browse/HBASE-14329) | Report region in transition only ever operates on one region |  Major | Region Assignment | Elliott Clark | Eddie Elizondo |
| [HBASE-16960](https://issues.apache.org/jira/browse/HBASE-16960) | RegionServer hang when aborting |  Critical | . | binlijin | binlijin |
| [HBASE-17032](https://issues.apache.org/jira/browse/HBASE-17032) | CallQueueTooBigException and CallDroppedException should not be triggering PFFE |  Major | Client | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16992](https://issues.apache.org/jira/browse/HBASE-16992) | The usage of mutation from CP is weird. |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17033](https://issues.apache.org/jira/browse/HBASE-17033) | LogRoller makes a lot of allocations unnecessarily |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17042](https://issues.apache.org/jira/browse/HBASE-17042) | Remove 'public' keyword from MasterObserver interface |  Minor | Coprocessors | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17010](https://issues.apache.org/jira/browse/HBASE-17010) | Serial replication should handle daughter regions being assigned to another RS |  Major | Replication | Ted Yu | Phil Yang |
| [HBASE-16983](https://issues.apache.org/jira/browse/HBASE-16983) | TestMultiTableSnapshotInputFormat failing with  Unable to create region directory: /tmp/... |  Minor | test | stack | stack |
| [HBASE-17054](https://issues.apache.org/jira/browse/HBASE-17054) | Compactor#preCreateCoprocScanner should be passed user |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17052](https://issues.apache.org/jira/browse/HBASE-17052) | compile-protobuf profile does not compile protobufs in some modules anymore |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16938](https://issues.apache.org/jira/browse/HBASE-16938) | TableCFsUpdater maybe failed due to no write permission on peerNode |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17020](https://issues.apache.org/jira/browse/HBASE-17020) | keylen in midkey() dont computed correctly |  Major | HFile | Yu Sun | Yu Sun |
| [HBASE-17039](https://issues.apache.org/jira/browse/HBASE-17039) | SimpleLoadBalancer schedules large amount of invalid region moves |  Major | Balancer | Charlie Qiangeng Xu | Charlie Qiangeng Xu |
| [HBASE-16962](https://issues.apache.org/jira/browse/HBASE-16962) | Add readPoint to preCompactScannerOpen() and preFlushScannerOpen() API |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17062](https://issues.apache.org/jira/browse/HBASE-17062) | RegionSplitter throws ClassCastException |  Minor | util | Jeongdae Kim | Jeongdae Kim |
| [HBASE-16345](https://issues.apache.org/jira/browse/HBASE-16345) | RpcRetryingCallerWithReadReplicas#call() should catch some RegionServer Exceptions |  Major | Client | huaxiang sun | huaxiang sun |
| [HBASE-17074](https://issues.apache.org/jira/browse/HBASE-17074) | PreCommit job always fails because of OOM |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-17044](https://issues.apache.org/jira/browse/HBASE-17044) | Fix merge failed before creating merged region leaves meta inconsistent |  Critical | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-17092](https://issues.apache.org/jira/browse/HBASE-17092) | Both LoadIncrementalHFiles#doBulkLoad() methods should set return value |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17091](https://issues.apache.org/jira/browse/HBASE-17091) | IntegrationTestZKAndFSPermissions failed with 'KeeperException$NoNodeException' |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17082](https://issues.apache.org/jira/browse/HBASE-17082) | ForeignExceptionUtil isn’t packaged when building shaded protocol with -Pcompile-protobuf |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17058](https://issues.apache.org/jira/browse/HBASE-17058) | Lower epsilon used for jitter verification from HBASE-15324 |  Major | Compaction | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16989](https://issues.apache.org/jira/browse/HBASE-16989) | RowProcess#postBatchMutate doesn’t be executed before the mvcc transaction completion |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17095](https://issues.apache.org/jira/browse/HBASE-17095) | The ClientSimpleScanner keeps retrying if the hfile is corrupt or cannot found |  Major | regionserver, scan | Jingcheng Du | Jingcheng Du |
| [HBASE-17166](https://issues.apache.org/jira/browse/HBASE-17166) | ITBLL fails on master unable to find hbase-protocol-shaded content |  Major | . | stack | stack |
| [HBASE-17158](https://issues.apache.org/jira/browse/HBASE-17158) | Avoid deadlock caused by HRegion#doDelta |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17171](https://issues.apache.org/jira/browse/HBASE-17171) | IntegrationTestTimeBoundedRequestsWithRegionReplicas fails with obtuse error when readers have no time to run |  Minor | integration tests | Josh Elser | Josh Elser |
| [HBASE-17160](https://issues.apache.org/jira/browse/HBASE-17160) | Undo unnecessary inter-module dependency; spark to hbase-it and hbase-it to shell |  Minor | . | stack | stack |
| [HBASE-17144](https://issues.apache.org/jira/browse/HBASE-17144) | Possible offheap read ByteBuffers leak |  Major | rpc | binlijin | binlijin |
| [HBASE-17127](https://issues.apache.org/jira/browse/HBASE-17127) | Locate region should fail fast if underlying Connection already closed |  Major | . | Yu Li | Yu Li |
| [HBASE-17116](https://issues.apache.org/jira/browse/HBASE-17116) | [PerformanceEvaluation] Add option to configure block size |  Trivial | tooling | Esteban Gutierrez | Yi Liang |
| [HBASE-17072](https://issues.apache.org/jira/browse/HBASE-17072) | CPU usage starts to climb up to 90-100% when using G1GC; purge ThreadLocal usage |  Critical | Performance, regionserver | Eiichi Sato | Eiichi Sato |
| [HBASE-17186](https://issues.apache.org/jira/browse/HBASE-17186) | MasterProcedureTestingUtility#testRecoveryAndDoubleExecution displays stale procedure state info |  Minor | proc-v2, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17224](https://issues.apache.org/jira/browse/HBASE-17224) | There are lots of spelling errors in the HBase logging and exception messages |  Trivial | Client, io, mapreduce, master, regionserver, security, wal | Grant Sohn | Grant Sohn |
| [HBASE-17206](https://issues.apache.org/jira/browse/HBASE-17206) | FSHLog may roll a new writer successfully with unflushed entries |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-16209](https://issues.apache.org/jira/browse/HBASE-16209) | Provide an ExponentialBackOffPolicy sleep between failed region open requests |  Major | . | Joseph | Ashu Pachauri |
| [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | Prevent setting timestamp of delta operations the same as previous value's |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16886](https://issues.apache.org/jira/browse/HBASE-16886) | hbase-client: scanner with reversed=true and small=true gets no result |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-17231](https://issues.apache.org/jira/browse/HBASE-17231) | Region#getCellCompartor sp? |  Trivial | . | John Leach | John Leach |
| [HBASE-17118](https://issues.apache.org/jira/browse/HBASE-17118) | StoreScanner leaked in KeyValueHeap |  Major | . | binlijin | binlijin |
| [HBASE-16841](https://issues.apache.org/jira/browse/HBASE-16841) | Data loss in MOB files after cloning a snapshot and deleting that snapshot |  Blocker | mob, snapshots | Jingcheng Du | Jingcheng Du |
| [HBASE-17252](https://issues.apache.org/jira/browse/HBASE-17252) | Wrong arguments for ValueAndTagRewriteCell in CellUtil |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17170](https://issues.apache.org/jira/browse/HBASE-17170) | HBase is also retrying DoNotRetryIOException because of class loader differences. |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-17256](https://issues.apache.org/jira/browse/HBASE-17256) | Rpc handler monitoring will be removed when the task queue is full |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-15437](https://issues.apache.org/jira/browse/HBASE-15437) | Response size calculated in RPCServer for warning tooLarge responses does NOT count CellScanner payload |  Major | IPC/RPC | deepankar | Jerry He |
| [HBASE-16985](https://issues.apache.org/jira/browse/HBASE-16985) | TestClusterId failed due to wrong hbase rootdir |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17237](https://issues.apache.org/jira/browse/HBASE-17237) | Override the correct compact method in HMobStore |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-17297](https://issues.apache.org/jira/browse/HBASE-17297) | Single Filter in parenthesis cannot be parsed correctly |  Major | Filters | Xuesen Liang | Xuesen Liang |
| [HBASE-17309](https://issues.apache.org/jira/browse/HBASE-17309) | Fix connection leaks in TestAcidGuarantees |  Minor | integration tests | huaxiang sun | huaxiang sun |
| [HBASE-17326](https://issues.apache.org/jira/browse/HBASE-17326) | Fix findbugs warning in BufferedMutatorParams |  Major | . | Guanghao Zhang | stack |
| [HBASE-17333](https://issues.apache.org/jira/browse/HBASE-17333) | HBASE-17294 always ensures CompactingMemstore is default |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17344](https://issues.apache.org/jira/browse/HBASE-17344) | The regionserver web UIs miss the coprocessors of RegionServerCoprocessorHost. |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17347](https://issues.apache.org/jira/browse/HBASE-17347) | ExportSnapshot may write snapshot info file to wrong directory when specifying target name |  Minor | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-17328](https://issues.apache.org/jira/browse/HBASE-17328) | Properly dispose of looped replication peers |  Critical | Replication | Vincent Poon | Vincent Poon |
| [HBASE-17341](https://issues.apache.org/jira/browse/HBASE-17341) | Add a timeout during replication endpoint termination |  Critical | . | Vincent Poon | Vincent Poon |
| [HBASE-16663](https://issues.apache.org/jira/browse/HBASE-16663) | JMX ConnectorServer stopped when unauthorized user try to stop HM/RS/cluster |  Critical | metrics, security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-17330](https://issues.apache.org/jira/browse/HBASE-17330) | SnapshotFileCache will always refresh the file cache |  Minor | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-17376](https://issues.apache.org/jira/browse/HBASE-17376) | ClientAsyncPrefetchScanner may fail due to too many rows |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17374](https://issues.apache.org/jira/browse/HBASE-17374) | ZKPermissionWatcher crashed when grant after region close |  Critical | regionserver | Liu Junhong | Liu Junhong |
| [HBASE-17385](https://issues.apache.org/jira/browse/HBASE-17385) | Change usage documentation from bin/hbase to hbase in various tools |  Major | . | Enis Soztutar | Jan Hentschel |
| [HBASE-17387](https://issues.apache.org/jira/browse/HBASE-17387) | Reduce the overhead of exception report in RegionActionResult for multi() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17403](https://issues.apache.org/jira/browse/HBASE-17403) | ClientAsyncPrefetchScanner doesn’t load any data if the MaxResultSize is too small |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17390](https://issues.apache.org/jira/browse/HBASE-17390) | Online update of configuration for all servers leaves out masters |  Major | . | Lars George | Jan Hentschel |
| [HBASE-17290](https://issues.apache.org/jira/browse/HBASE-17290) | Potential loss of data for replication of bulk loaded hfiles |  Major | . | Ted Yu | Ashish Singhi |
| [HBASE-17351](https://issues.apache.org/jira/browse/HBASE-17351) | Enforcer plugin fails with NullPointerException |  Critical | build | Ted Yu | Esteban Gutierrez |
| [HBASE-17424](https://issues.apache.org/jira/browse/HBASE-17424) | Protect REST client against malicious XML responses. |  Major | REST | Josh Elser | Josh Elser |
| [HBASE-17430](https://issues.apache.org/jira/browse/HBASE-17430) | dead links in ref guide to class javadocs that moved out of user APIs. |  Major | documentation, website | Sean Busbey | Jan Hentschel |
| [HBASE-17435](https://issues.apache.org/jira/browse/HBASE-17435) | Call to preCommitStoreFile() hook encounters SaslException in secure deployment |  Major | . | Romil Choksi | Ted Yu |
| [HBASE-17429](https://issues.apache.org/jira/browse/HBASE-17429) | HBase bulkload cannot support HDFS viewFs |  Major | . | shenxianqiang | shenxianqiang |
| [HBASE-17445](https://issues.apache.org/jira/browse/HBASE-17445) | Count size of serialized exceptions in checking max result size quota |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17434](https://issues.apache.org/jira/browse/HBASE-17434) | New Synchronization Scheme for Compaction Pipeline |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-17452](https://issues.apache.org/jira/browse/HBASE-17452) | Failed taking snapshot - region Manifest proto-message too large |  Major | snapshots | huaxiang sun | huaxiang sun |
| [HBASE-17450](https://issues.apache.org/jira/browse/HBASE-17450) | TablePermission#equals throws NPE after namespace support was added |  Major | findbugs | Zheng Hu | Zheng Hu |
| [HBASE-17464](https://issues.apache.org/jira/browse/HBASE-17464) | Fix HBaseTestingUtility.getNewDataTestDirOnTestFS to always return a unique path |  Minor | test | Zach York | Zach York |
| [HBASE-17475](https://issues.apache.org/jira/browse/HBASE-17475) | Stack overflow in AsyncProcess if retry too much |  Major | API, Client | Allan Yang | Allan Yang |
| [HBASE-17469](https://issues.apache.org/jira/browse/HBASE-17469) | Properly handle empty TableName in TablePermission#readFields and #write |  Major | findbugs | Ted Yu | Manjunath Anand |
| [HBASE-17482](https://issues.apache.org/jira/browse/HBASE-17482) | mvcc mechanism fails when using mvccPreAssign |  Critical | . | Allan Yang | Allan Yang |
| [HBASE-17486](https://issues.apache.org/jira/browse/HBASE-17486) | Tighten the contract for batch client methods |  Trivial | API | Michael Axiak | Michael Axiak |
| [HBASE-17496](https://issues.apache.org/jira/browse/HBASE-17496) | RSGroup shell commands:get\_server\_rsgroup don't work and commands display an incorrect result size |  Major | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17357](https://issues.apache.org/jira/browse/HBASE-17357) | PerformanceEvaluation parameters parsing triggers NPE. |  Minor | Performance, test | Jean-Marc Spaggiari | Dave Navarro |
| [HBASE-17489](https://issues.apache.org/jira/browse/HBASE-17489) | ClientScanner may send a next request to a RegionScanner which has been exhausted |  Critical | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17407](https://issues.apache.org/jira/browse/HBASE-17407) | Correct update of maxFlushedSeqId in HRegion |  Major | wal | Eshcar Hillel | Eshcar Hillel |
| [HBASE-17271](https://issues.apache.org/jira/browse/HBASE-17271) | hbase-thrift QA tests only run one test |  Major | . | Ted Yu | Jan Hentschel |
| [HBASE-17540](https://issues.apache.org/jira/browse/HBASE-17540) | Change SASL server GSSAPI callback log line from DEBUG to TRACE in RegionServer to reduce log volumes in DEBUG mode |  Minor | regionserver | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-16785](https://issues.apache.org/jira/browse/HBASE-16785) | We are not running all tests |  Major | build, test | stack | stack |
| [HBASE-17538](https://issues.apache.org/jira/browse/HBASE-17538) | HDFS.setStoragePolicy() logs errors on local fs |  Major | . | Enis Soztutar | stack |
| [HBASE-17197](https://issues.apache.org/jira/browse/HBASE-17197) | hfile does not work in 2.0 |  Major | HFile | huaxiang sun | Balazs Meszaros |
| [HBASE-17522](https://issues.apache.org/jira/browse/HBASE-17522) | RuntimeExceptions from MemoryMXBean should not take down server process |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-16621](https://issues.apache.org/jira/browse/HBASE-16621) | HBCK should have -fixHFileLinks |  Major | . | Enis Soztutar | Janos Gub |
| [HBASE-17581](https://issues.apache.org/jira/browse/HBASE-17581) | mvn clean test -PskipXXXTests does not work properly for some modules |  Major | . | Yi Liang | Yi Liang |
| [HBASE-17587](https://issues.apache.org/jira/browse/HBASE-17587) | Do not Rethrow DoNotRetryIOException as UnknownScannerException |  Major | Coprocessors, regionserver, rpc | Zach York | Zach York |
| [HBASE-17601](https://issues.apache.org/jira/browse/HBASE-17601) | close() in TableRecordReaderImpl assumes the split has started |  Minor | hadoop2 | Michael Axiak | Michael Axiak |
| [HBASE-17593](https://issues.apache.org/jira/browse/HBASE-17593) | Fix build with hadoop 3 profile |  Major | . | Appy | Appy |
| [HBASE-17578](https://issues.apache.org/jira/browse/HBASE-17578) | Thrift per-method metrics should still update in the case of exceptions |  Major | Thrift | Gary Helmling | Gary Helmling |
| [HBASE-17187](https://issues.apache.org/jira/browse/HBASE-17187) | DoNotRetryExceptions from coprocessors should bubble up to the application |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17606](https://issues.apache.org/jira/browse/HBASE-17606) | Fix failing TestRpcControllerFactory introduced by HBASE-17508 |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17565](https://issues.apache.org/jira/browse/HBASE-17565) | StochasticLoadBalancer may incorrectly skip balancing due to skewed multiplier sum |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-17381](https://issues.apache.org/jira/browse/HBASE-17381) | ReplicationSourceWorkerThread can die due to unhandled exceptions |  Major | Replication | Gary Helmling | Zheng Hu |
| [HBASE-17105](https://issues.apache.org/jira/browse/HBASE-17105) | Annotate RegionServerObserver |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17616](https://issues.apache.org/jira/browse/HBASE-17616) | Incorrect actions performed by CM |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17622](https://issues.apache.org/jira/browse/HBASE-17622) | Add hbase-metrics package to TableMapReduceUtil |  Trivial | mapreduce | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-17638](https://issues.apache.org/jira/browse/HBASE-17638) | Remove duplicated initialization of CacheConfig in HRegionServer |  Minor | . | Yu Li | Yu Li |
| [HBASE-17603](https://issues.apache.org/jira/browse/HBASE-17603) | REST API for scan should return 404 when table does not exist |  Blocker | REST, scan | Ted Yu | Ted Yu |
| [HBASE-17611](https://issues.apache.org/jira/browse/HBASE-17611) | Thrift 2 per-call latency metrics are capped at ~ 2 seconds |  Major | metrics, Thrift | Gary Helmling | Gary Helmling |
| [HBASE-9702](https://issues.apache.org/jira/browse/HBASE-9702) | Change unittests that use "table" or "testtable" to use method names. |  Major | test | Jonathan Hsieh | Jan Hentschel |
| [HBASE-17558](https://issues.apache.org/jira/browse/HBASE-17558) | ZK dumping jsp should escape html |  Minor | security, UI | Sean Busbey | Sean Busbey |
| [HBASE-17639](https://issues.apache.org/jira/browse/HBASE-17639) | Do not stop server if ReplicationSourceManager's waitUntilCanBePushed throws InterruptedException |  Major | Replication | Phil Yang | Phil Yang |
| [HBASE-17624](https://issues.apache.org/jira/browse/HBASE-17624) | Address late review of HBASE-6721, rsgroups feature |  Major | rsgroup | stack | stack |
| [HBASE-17640](https://issues.apache.org/jira/browse/HBASE-17640) | Unittest error in TestMobCompactor with different timezone |  Minor | mob | huaxiang sun | huaxiang sun |
| [HBASE-17649](https://issues.apache.org/jira/browse/HBASE-17649) | REST API for scan should return 410 when table is disabled |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17421](https://issues.apache.org/jira/browse/HBASE-17421) | Update refguide w.r.t. MOB Sweeper |  Major | documentation, mob | Ted Yu | Jingcheng Du |
| [HBASE-17658](https://issues.apache.org/jira/browse/HBASE-17658) | Fix bookkeeping error with max regions for a table |  Major | Balancer | Tim Brown | Tim Brown |
| [HBASE-17653](https://issues.apache.org/jira/browse/HBASE-17653) | HBASE-17624 rsgroup synchronizations will (distributed) deadlock |  Major | rsgroup | stack | stack |
| [HBASE-17661](https://issues.apache.org/jira/browse/HBASE-17661) | fix the queue length passed to FastPathBalancedQueueRpcExecutor |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17518](https://issues.apache.org/jira/browse/HBASE-17518) | HBase Reference Guide has a syntax error |  Minor | documentation | Zhang Ningbo |  |
| [HBASE-15328](https://issues.apache.org/jira/browse/HBASE-15328) | Unvalidated Redirect in HMaster |  Minor | security | stack | Sean Busbey |
| [HBASE-17675](https://issues.apache.org/jira/browse/HBASE-17675) | ReplicationEndpoint should choose new sinks if a SaslException occurs |  Major | . | churro morales | churro morales |
| [HBASE-13882](https://issues.apache.org/jira/browse/HBASE-13882) | Fix RegionSplitPolicy section in HBase book |  Trivial | documentation | Vladimir Rodionov | Jan Hentschel |
| [HBASE-17677](https://issues.apache.org/jira/browse/HBASE-17677) | ServerName parsing from directory name should be more robust to errors from guava's HostAndPort |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-17069](https://issues.apache.org/jira/browse/HBASE-17069) | RegionServer writes invalid META entries for split daughters in some circumstances |  Blocker | wal | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-17682](https://issues.apache.org/jira/browse/HBASE-17682) | Region stuck in merging\_new state indefinitely |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17674](https://issues.apache.org/jira/browse/HBASE-17674) | Major compaction may be cancelled in CompactionChecker |  Major | Compaction | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17699](https://issues.apache.org/jira/browse/HBASE-17699) | Fix TestLockProcedure |  Blocker | proc-v2 | Appy | Appy |
| [HBASE-17688](https://issues.apache.org/jira/browse/HBASE-17688) | MultiRowRangeFilter not working correctly if given same start and stop RowKey |  Minor | . | Ravi Ahuj | Jingcheng Du |
| [HBASE-17673](https://issues.apache.org/jira/browse/HBASE-17673) | Monitored RPC Handler not shown in the WebUI |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-17710](https://issues.apache.org/jira/browse/HBASE-17710) | HBase in standalone mode creates directories with 777 permission |  Major | regionserver | Toshihiro Suzuki | Ted Yu |
| [HBASE-17722](https://issues.apache.org/jira/browse/HBASE-17722) | Metrics subsystem stop/start messages add a lot of useless bulk to operational logging |  Trivial | metrics | Andrew Purtell | Andrew Purtell |
| [HBASE-16630](https://issues.apache.org/jira/browse/HBASE-16630) | Fragmentation in long running Bucket Cache |  Critical | BucketCache | deepankar | deepankar |
| [HBASE-17460](https://issues.apache.org/jira/browse/HBASE-17460) | enable\_table\_replication can not perform cyclic replication of a table |  Critical | Replication | NITIN VERMA | NITIN VERMA |
| [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | Incorrect ZK ACL set for HBase superuser |  Critical | security, Zookeeper | Shreya Bhat | Josh Elser |
| [HBASE-17729](https://issues.apache.org/jira/browse/HBASE-17729) | Missing shortcuts for some useful HCD options |  Trivial | shell | Andrew Purtell | Andrew Purtell |
| [HBASE-17718](https://issues.apache.org/jira/browse/HBASE-17718) | Difference between RS's servername and its ephemeral node cause SSH stop working |  Major | . | Allan Yang | Allan Yang |
| [HBASE-17760](https://issues.apache.org/jira/browse/HBASE-17760) | HDFS Balancer doc is misleading |  Minor | documentation | Harsh J | Harsh J |
| [HBASE-17761](https://issues.apache.org/jira/browse/HBASE-17761) | Test TestRemoveRegionMetrics.testMoveRegion fails intermittently because of race condition |  Major | Region Assignment | Umesh Agashe | Umesh Agashe |
| [HBASE-17736](https://issues.apache.org/jira/browse/HBASE-17736) | Some options can't be configured by the shell |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17763](https://issues.apache.org/jira/browse/HBASE-17763) | IPCUtil.wrapException will wrap DoNotRetryIOException with IOException |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-17712](https://issues.apache.org/jira/browse/HBASE-17712) | Remove/Simplify the logic of RegionScannerImpl.handleFileNotFound |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-17772](https://issues.apache.org/jira/browse/HBASE-17772) | IntegrationTestRSGroup won't run |  Minor | rsgroup | stack | stack |
| [HBASE-17746](https://issues.apache.org/jira/browse/HBASE-17746) | TestSimpleRpcScheduler.testCoDelScheduling is broken |  Major | integration tests | Anup Halarnkar | Chia-Ping Tsai |
| [HBASE-17773](https://issues.apache.org/jira/browse/HBASE-17773) | VerifyReplication tool wrongly emits warning "ERROR: Invalid argument '--recomparesleep=xx'" |  Trivial | . | Tomu Tsuruhara | Tomu Tsuruhara |
| [HBASE-17501](https://issues.apache.org/jira/browse/HBASE-17501) | NullPointerException after Datanodes Decommissioned and Terminated |  Minor | Filesystem Integration, Operability | Patrick Dignan | James Moore |
| [HBASE-17780](https://issues.apache.org/jira/browse/HBASE-17780) | BoundedByteBufferPool "At capacity" messages are not actionable |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17779](https://issues.apache.org/jira/browse/HBASE-17779) | disable\_table\_replication returns misleading message and does not turn off replication |  Major | Replication | Ted Yu | Janos Gub |
| [HBASE-17723](https://issues.apache.org/jira/browse/HBASE-17723) | ClientAsyncPrefetchScanner may end prematurely when the size of the cache is one |  Major | . | Anup Halarnkar | Chia-Ping Tsai |
| [HBASE-17792](https://issues.apache.org/jira/browse/HBASE-17792) | Use a shared thread pool for AtomicityWriter, AtomicGetReader, AtomicScanReader's connections in TestAcidGuarantees |  Minor | . | huaxiang sun | huaxiang sun |
| [HBASE-17426](https://issues.apache.org/jira/browse/HBASE-17426) | Inconsistent environment variable names for enabling JMX |  Major | . | Ted Yu | Chia-Ping Tsai |
| [HBASE-16084](https://issues.apache.org/jira/browse/HBASE-16084) | Clean up the stale references in javadoc |  Minor | . | Ted Yu | Jan Hentschel |
| [HBASE-17582](https://issues.apache.org/jira/browse/HBASE-17582) | Drop page cache hint is broken |  Critical | Compaction, io | Ashu Pachauri | Appy |
| [HBASE-16014](https://issues.apache.org/jira/browse/HBASE-16014) | Get and Put constructor argument lists are divergent |  Major | . | Nick Dimiduk | Kuan-Po Tseng |
| [HBASE-17812](https://issues.apache.org/jira/browse/HBASE-17812) | Remove RpcConnection from pool in AbstractRpcClient.cancelConnections |  Major | Client, rpc | Duo Zhang | Duo Zhang |
| [HBASE-17798](https://issues.apache.org/jira/browse/HBASE-17798) | RpcServer.Listener.Reader can abort due to CancelledKeyException |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17807](https://issues.apache.org/jira/browse/HBASE-17807) | correct the value of zookeeper.session.timeout in hbase doc |  Trivial | documentation | Yechao Chen | Yechao Chen |
| [HBASE-17287](https://issues.apache.org/jira/browse/HBASE-17287) | Master becomes a zombie if filesystem object closes |  Blocker | master | Clay B. | Ted Yu |
| [HBASE-17660](https://issues.apache.org/jira/browse/HBASE-17660) | HFileSplitter is not being applied during full table restore |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17821](https://issues.apache.org/jira/browse/HBASE-17821) | The CompoundConfiguration#toString is wrong |  Trivial | . | Chia-Ping Tsai | Yi Liang |
| [HBASE-16780](https://issues.apache.org/jira/browse/HBASE-16780) | Since move to protobuf3.1, Cells are limited to 64MB where previous they had no limit |  Critical | Protobufs | stack | stack |
| [HBASE-17698](https://issues.apache.org/jira/browse/HBASE-17698) | ReplicationEndpoint choosing sinks |  Major | Replication | churro morales | Karan Mehta |
| [HBASE-17785](https://issues.apache.org/jira/browse/HBASE-17785) | RSGroupBasedLoadBalancer fails to assign new table regions when cloning snapshot |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-15871](https://issues.apache.org/jira/browse/HBASE-15871) | Memstore flush doesn't finish because of backwardseek() in memstore scanner. |  Major | Scanners | Jeongdae Kim | ramkrishna.s.vasudevan |
| [HBASE-17871](https://issues.apache.org/jira/browse/HBASE-17871) | scan#setBatch(int) call leads wrong result of VerifyReplication |  Minor | . | Tomu Tsuruhara | Tomu Tsuruhara |
| [HBASE-17869](https://issues.apache.org/jira/browse/HBASE-17869) | UnsafeAvailChecker wrongly returns false on ppc |  Minor | . | Jerry He | Jerry He |
| [HBASE-17886](https://issues.apache.org/jira/browse/HBASE-17886) | Fix compatibility of ServerSideScanMetrics |  Blocker | . | Yu Li | Yu Li |
| [HBASE-17863](https://issues.apache.org/jira/browse/HBASE-17863) | Procedure V2:  Proc Executor cleanup. Split FINISHED state to two states: SUCCESS and FAILED. |  Major | proc-v2 | Umesh Agashe | Umesh Agashe |
| [HBASE-17905](https://issues.apache.org/jira/browse/HBASE-17905) | [hbase-spark]  bulkload does not work when table not exist |  Major | . | Yi Liang | Yi Liang |
| [HBASE-17816](https://issues.apache.org/jira/browse/HBASE-17816) | HRegion#mutateRowWithLocks should update writeRequestCount metric |  Major | metrics | Ashu Pachauri | Weizhan Zeng |
| [HBASE-17903](https://issues.apache.org/jira/browse/HBASE-17903) | Corrected the alias for the link of HBASE-6580 |  Trivial | documentation | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-15535](https://issues.apache.org/jira/browse/HBASE-15535) | Correct link to Trafodion |  Blocker | documentation | Atanu Mishra | Gabor Liptak |
| [HBASE-17366](https://issues.apache.org/jira/browse/HBASE-17366) | Run TestHFile#testReaderWithoutBlockCache failes |  Trivial | test | huaxiang sun | huaxiang sun |
| [HBASE-16875](https://issues.apache.org/jira/browse/HBASE-16875) | Changed try-with-resources in the docs to recommended way |  Trivial | documentation | Dima Spivak | Jan Hentschel |
| [HBASE-17930](https://issues.apache.org/jira/browse/HBASE-17930) | Avoid using Canary.sniff in HBaseTestingUtility |  Major | canary, test | Duo Zhang | Duo Zhang |
| [HBASE-17936](https://issues.apache.org/jira/browse/HBASE-17936) | Refine sum endpoint example in ref guide |  Minor | documentation | Xiang Li | Xiang Li |
| [HBASE-17940](https://issues.apache.org/jira/browse/HBASE-17940) | HMaster can not start due to Jasper related classes conflict |  Blocker | dependencies, pom | Duo Zhang | Duo Zhang |
| [HBASE-17937](https://issues.apache.org/jira/browse/HBASE-17937) | Memstore size becomes negative in case of expensive postPut/Delete Coprocessor call |  Major | regionserver | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-13288](https://issues.apache.org/jira/browse/HBASE-13288) | Fix naming of parameter in Delete constructor |  Trivial | API | Lars George | Ashish Singhi |
| [HBASE-17941](https://issues.apache.org/jira/browse/HBASE-17941) | CellArrayMap#getCell may throw IndexOutOfBoundsException |  Minor | . | Chia-Ping Tsai | Hsin-Ying Lee |
| [HBASE-17946](https://issues.apache.org/jira/browse/HBASE-17946) | Shell command compact\_rs don't work |  Major | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17943](https://issues.apache.org/jira/browse/HBASE-17943) | The in-memory flush size is different for each CompactingMemStore located in the same region |  Major | regionserver | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17302](https://issues.apache.org/jira/browse/HBASE-17302) | The region flush request disappeared from flushQueue |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17947](https://issues.apache.org/jira/browse/HBASE-17947) | Location of Examples.proto is wrong in comment of RowCountEndPoint.java |  Trivial | Coprocessors | Xiang Li | Xiang Li |
| [HBASE-17904](https://issues.apache.org/jira/browse/HBASE-17904) | Get runs into NoSuchElementException when using Read Replica, with hbase. ipc.client.specificThreadForWriting to be true and hbase.rpc.client.impl to be org.apache.hadoop.hbase.ipc.RpcClientImpl |  Major | Client, IPC/RPC | huaxiang sun | huaxiang sun |
| [HBASE-17950](https://issues.apache.org/jira/browse/HBASE-17950) | Write the chunkId also as Int instead of long into the first byte of the chunk |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17970](https://issues.apache.org/jira/browse/HBASE-17970) | Set yarn.app.mapreduce.am.staging-dir when starting MiniMRCluster |  Major | mapreduce, snapshots, test | Duo Zhang | Duo Zhang |
| [HBASE-17975](https://issues.apache.org/jira/browse/HBASE-17975) | TokenUtil.obtainToken squashes remote exceptions |  Blocker | mapreduce, security | Sean Busbey | Sean Busbey |
| [HBASE-17879](https://issues.apache.org/jira/browse/HBASE-17879) | Avoid NPE in snapshot.jsp when accessing without any request parameter |  Trivial | UI | Abhishek Kumar |  |
| [HBASE-14286](https://issues.apache.org/jira/browse/HBASE-14286) | Correct typo in argument name for WALSplitter.writeRegionSequenceIdFile |  Trivial | . | Lars George | Gabor Liptak |
| [HBASE-17862](https://issues.apache.org/jira/browse/HBASE-17862) | Condition that always returns true |  Trivial | Client | JC | JC |
| [HBASE-17957](https://issues.apache.org/jira/browse/HBASE-17957) |  Custom metrics of replicate endpoints don't prepend "source." to global metrics |  Minor | Replication | Shinya Yoshida | Shinya Yoshida |
| [HBASE-17985](https://issues.apache.org/jira/browse/HBASE-17985) | Inline package manage updates with package installation in Yetus Dockerfile |  Blocker | . | Josh Elser | Josh Elser |
| [HBASE-17958](https://issues.apache.org/jira/browse/HBASE-17958) | Avoid passing unexpected cell to ScanQueryMatcher when optimize SEEK to SKIP |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17228](https://issues.apache.org/jira/browse/HBASE-17228) | precommit grep -c ERROR may grab non errors |  Minor | build, community, test | Matteo Bertozzi | stack |
| [HBASE-17991](https://issues.apache.org/jira/browse/HBASE-17991) | Add more details about compaction queue on /dump |  Minor | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17964](https://issues.apache.org/jira/browse/HBASE-17964) | ensure hbase-metrics-api is included in mapreduce job classpaths |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-17471](https://issues.apache.org/jira/browse/HBASE-17471) | Region Seqid will be out of order in WAL if using mvccPreAssign |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-8758](https://issues.apache.org/jira/browse/HBASE-8758) | Error in RegionCoprocessorHost class preScanner method documentation. |  Minor | Coprocessors, documentation | Roman Nikitchenko | Roman Nikitchenko |
| [HBASE-16356](https://issues.apache.org/jira/browse/HBASE-16356) | REST API scanner: row prefix filter and custom filter parameters are mutually exclusive |  Minor | REST | Bjorn Olsen | Ben Watson |
| [HBASE-18000](https://issues.apache.org/jira/browse/HBASE-18000) | Make sure we always return the scanner id with ScanResponse |  Major | regionserver | Lars Hofhansl | Duo Zhang |
| [HBASE-18055](https://issues.apache.org/jira/browse/HBASE-18055) | Releasing L2 cache HFileBlocks before shipped() when switching from pread to stream causes result corruption |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | Duo Zhang |
| [HBASE-17352](https://issues.apache.org/jira/browse/HBASE-17352) | Fix hbase-assembly build with bash 4 |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-18051](https://issues.apache.org/jira/browse/HBASE-18051) | balance\_rsgroup still run when the Load Balancer is not enabled. |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18053](https://issues.apache.org/jira/browse/HBASE-18053) | AsyncTableResultScanner will hang when scan wrong column family |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18049](https://issues.apache.org/jira/browse/HBASE-18049) | It is not necessary to re-open the region when MOB files cannot be found |  Major | Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-17286](https://issues.apache.org/jira/browse/HBASE-17286) | LICENSE.txt in binary tarball contains only ASL text |  Blocker | build, community | Josh Elser | Mike Drob |
| [HBASE-18058](https://issues.apache.org/jira/browse/HBASE-18058) | Zookeeper retry sleep time should have an upper limit |  Major | . | Allan Yang | Allan Yang |
| [HBASE-18071](https://issues.apache.org/jira/browse/HBASE-18071) | Fix flaky test TestStochasticLoadBalancer#testBalanceCluster |  Major | Balancer | Umesh Agashe | Umesh Agashe |
| [HBASE-18035](https://issues.apache.org/jira/browse/HBASE-18035) | Meta replica does not give any primaryOperationTimeout to primary meta region |  Critical | . | huaxiang sun | huaxiang sun |
| [HBASE-18081](https://issues.apache.org/jira/browse/HBASE-18081) | The way we process connection preamble in SimpleRpcServer is broken |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-15616](https://issues.apache.org/jira/browse/HBASE-15616) | Allow null qualifier for all table operations |  Major | Client | Jianwei Cui | Guanghao Zhang |
| [HBASE-18069](https://issues.apache.org/jira/browse/HBASE-18069) | Fix flaky test TestReplicationAdminWithClusters#testDisableAndEnableReplication |  Trivial | test | Chia-Ping Tsai | Guanghao Zhang |
| [HBASE-18077](https://issues.apache.org/jira/browse/HBASE-18077) | Update JUnit license to EPL from CPL |  Blocker | build, community | Mike Drob | Mike Drob |
| [HBASE-18093](https://issues.apache.org/jira/browse/HBASE-18093) | Overloading the meaning of 'enabled' in Quota Manager to indicate either quota disabled or quota manager not ready is not good |  Minor | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-18085](https://issues.apache.org/jira/browse/HBASE-18085) | Prevent parallel purge in ObjectPool |  Major | . | Yu Li | Yu Li |
| [HBASE-18084](https://issues.apache.org/jira/browse/HBASE-18084) | Improve CleanerChore to clean from directory which consumes more disk space |  Major | . | Yu Li | Yu Li |
| [HBASE-18099](https://issues.apache.org/jira/browse/HBASE-18099) | FlushSnapshotSubprocedure should wait for concurrent Region#flush() to finish |  Critical | snapshots | Ted Yu | Ted Yu |
| [HBASE-17997](https://issues.apache.org/jira/browse/HBASE-17997) | In dev environment, add jruby-complete jar to classpath only when jruby is needed |  Major | . | Ted Yu | Xiang Li |
| [HBASE-18113](https://issues.apache.org/jira/browse/HBASE-18113) | Handle old client without include\_stop\_row flag when startRow equals endRow |  Major | . | Phil Yang | Phil Yang |
| [HBASE-18120](https://issues.apache.org/jira/browse/HBASE-18120) | Fix TestAsyncRegionAdminApi |  Major | test | stack | Zheng Hu |
| [HBASE-16011](https://issues.apache.org/jira/browse/HBASE-16011) | TableSnapshotScanner and TableSnapshotInputFormat can produce duplicate rows |  Major | snapshots | Youngjoon Kim | Zheng Hu |
| [HBASE-18118](https://issues.apache.org/jira/browse/HBASE-18118) | Default storage policy if not configured cannot be "NONE" |  Minor | wal | Andrew Purtell | Andrew Purtell |
| [HBASE-18042](https://issues.apache.org/jira/browse/HBASE-18042) | Client Compatibility breaks between versions 1.2 and 1.3 |  Critical | regionserver, scan | Karan Mehta | Duo Zhang |
| [HBASE-18027](https://issues.apache.org/jira/browse/HBASE-18027) | Replication should respect RPC size limits when batching edits |  Major | Replication | Andrew Purtell | Andrew Purtell |
| [HBASE-18122](https://issues.apache.org/jira/browse/HBASE-18122) | Scanner id should include ServerName of region server |  Major | . | Phil Yang | Phil Yang |
| [HBASE-18129](https://issues.apache.org/jira/browse/HBASE-18129) | truncate\_preserve fails when the truncate method doesn't exists on the master |  Major | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18143](https://issues.apache.org/jira/browse/HBASE-18143) | [AMv2] Backoff on failed report of region transition quickly goes to astronomical time scale |  Critical | Region Assignment | stack | stack |
| [HBASE-18111](https://issues.apache.org/jira/browse/HBASE-18111) | Replication stuck when cluster connection is closed |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18155](https://issues.apache.org/jira/browse/HBASE-18155) | TestMasterProcedureWalLease is flakey |  Major | amv2 | stack | stack |
| [HBASE-18030](https://issues.apache.org/jira/browse/HBASE-18030) | Per Cell TTL tags may get duplicated with increments/Append causing tags length overflow |  Critical | hbase, regionserver | Abhishek Kumar | Anoop Sam John |
| [HBASE-18005](https://issues.apache.org/jira/browse/HBASE-18005) | read replica: handle the case that region server hosting both primary replica and meta region is down |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-9393](https://issues.apache.org/jira/browse/HBASE-9393) | Hbase does not closing a closed socket resulting in many CLOSE\_WAIT |  Critical | . | Avi Zrachya | Ashish Singhi |
| [HBASE-18132](https://issues.apache.org/jira/browse/HBASE-18132) | Low replication should be checked in period in case of datanode rolling upgrade |  Major | . | Allan Yang | Allan Yang |
| [HBASE-18145](https://issues.apache.org/jira/browse/HBASE-18145) | The flush may cause the corrupt data for reading |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18158](https://issues.apache.org/jira/browse/HBASE-18158) | Two running in-memory compaction threads may lose data |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18149](https://issues.apache.org/jira/browse/HBASE-18149) | The setting rules for table-scope attributes and family-scope attributes should keep consistent |  Major | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18184](https://issues.apache.org/jira/browse/HBASE-18184) | Add hbase-hadoop2-compat jar as MapReduce job dependency |  Minor | mapreduce | Alex Araujo | Alex Araujo |
| [HBASE-15302](https://issues.apache.org/jira/browse/HBASE-15302) | Reenable the other tests disabled by HBASE-14678 |  Major | test | Phil Yang | Phil Yang |
| [HBASE-18141](https://issues.apache.org/jira/browse/HBASE-18141) | Regionserver fails to shutdown when abort triggered in RegionScannerImpl during RPC call |  Critical | regionserver, security | Gary Helmling | Gary Helmling |
| [HBASE-18195](https://issues.apache.org/jira/browse/HBASE-18195) | Remove redundant single quote from start message for HMaster and HRegionServer |  Minor | master, regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-18193](https://issues.apache.org/jira/browse/HBASE-18193) | Master web UI presents the incorrect number of regions |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18137](https://issues.apache.org/jira/browse/HBASE-18137) | Replication gets stuck for empty WALs |  Critical | Replication | Ashu Pachauri | Vincent Poon |
| [HBASE-18207](https://issues.apache.org/jira/browse/HBASE-18207) | branch-2 build fails in the checkstyle phase |  Major | . | Ted Yu | stack |
| [HBASE-18219](https://issues.apache.org/jira/browse/HBASE-18219) | Fix typo in constant HConstants.HBASE\_CLIENT\_MEAT\_REPLICA\_SCAN\_TIMEOUT |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18166](https://issues.apache.org/jira/browse/HBASE-18166) | [AMv2] We are splitting already-split files |  Major | Region Assignment | stack | stack |
| [HBASE-18225](https://issues.apache.org/jira/browse/HBASE-18225) | Fix findbugs regression calling toString() on an array |  Trivial | . | Josh Elser | Josh Elser |
| [HBASE-18227](https://issues.apache.org/jira/browse/HBASE-18227) | [AMv2] Fix test hbase.coprocessor.TestCoprocessorMetrics#testRegionObserverAfterRegionClosed |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18235](https://issues.apache.org/jira/browse/HBASE-18235) | LoadBalancer.BOGUS\_SERVER\_NAME should not have a bogus hostname |  Major | . | Francis Liu | Francis Liu |
| [HBASE-18254](https://issues.apache.org/jira/browse/HBASE-18254) | ServerCrashProcedure checks and waits for meta initialized, instead should check and wait for meta loaded |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18244](https://issues.apache.org/jira/browse/HBASE-18244) | org.apache.hadoop.hbase.client.rsgroup.TestShellRSGroups hangs/fails |  Major | test | Josh Elser | Stephen Yuan Jiang |
| [HBASE-18278](https://issues.apache.org/jira/browse/HBASE-18278) | [AMv2] Enable and fix uni test hbase.master.procedure.TestServerCrashProcedure#testRecoveryAndDoubleExecutionOnRsWithMeta |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18290](https://issues.apache.org/jira/browse/HBASE-18290) | Fix TestAddColumnFamilyProcedure and TestDeleteTableProcedure |  Major | test | stack | stack |
| [HBASE-17982](https://issues.apache.org/jira/browse/HBASE-17982) |  Is the  word "occured" should be "occurred ? |  Trivial | hbase | Shibin Zhang | Shibin Zhang |
| [HBASE-16192](https://issues.apache.org/jira/browse/HBASE-16192) | Fix the potential problems in TestAcidGuarantees |  Major | . | Colin Ma | Colin Ma |
| [HBASE-13866](https://issues.apache.org/jira/browse/HBASE-13866) | Add endpoint coprocessor to the section hbase.coprocessor.region.classes in HBase book |  Trivial | documentation | Vladimir Rodionov | Misty Stanley-Jones |
| [HBASE-18320](https://issues.apache.org/jira/browse/HBASE-18320) | Address maven-site-plugin upgrade steps |  Blocker | site | Peter Somogyi | Peter Somogyi |
| [HBASE-18301](https://issues.apache.org/jira/browse/HBASE-18301) | Enable TestSimpleRegionNormalizerOnCluster#testRegionNormalizationMergeOnCluster that was disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16120](https://issues.apache.org/jira/browse/HBASE-16120) | Add shell test for truncate\_preserve |  Minor | . | Appy | Guangxu Cheng |
| [HBASE-6581](https://issues.apache.org/jira/browse/HBASE-6581) | Build with hadoop.profile=3.0 |  Major | . | Eric Charles | Eric Charles |
| [HBASE-18325](https://issues.apache.org/jira/browse/HBASE-18325) | Disable flakey TestMasterProcedureWalLease |  Major | test | stack | stack |
| [HBASE-18083](https://issues.apache.org/jira/browse/HBASE-18083) | Make large/small file clean thread number configurable in HFileCleaner |  Major | . | Yu Li | Yu Li |
| [HBASE-18341](https://issues.apache.org/jira/browse/HBASE-18341) | Update findHangingTests.py script to match changed consoleText of trunk build |  Major | . | Appy | Appy |
| [HBASE-15548](https://issues.apache.org/jira/browse/HBASE-15548) | SyncTable: sourceHashDir is supposed to be optional but won't work without |  Critical | mapreduce, Operability, tooling | My Ho | Dave Latham |
| [HBASE-16090](https://issues.apache.org/jira/browse/HBASE-16090) | ResultScanner is not closed in SyncTable#finishRemainingHashRanges() |  Major | mapreduce, Operability, tooling | Ted Yu | Ted Yu |
| [HBASE-17648](https://issues.apache.org/jira/browse/HBASE-17648) | HBase Table-level synchronization fails between two secured(kerberized) clusters |  Critical | mapreduce, Operability, security, tooling | Yi Liang | Yi Liang |
| [HBASE-18330](https://issues.apache.org/jira/browse/HBASE-18330) | NPE in ReplicationZKLockCleanerChore |  Major | master, Replication | Minwoo Kang | Andrew Purtell |
| [HBASE-18354](https://issues.apache.org/jira/browse/HBASE-18354) | Fix TestMasterMetrics that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Vladimir Rodionov |
| [HBASE-18323](https://issues.apache.org/jira/browse/HBASE-18323) | Remove multiple ACLs for the same user in kerberos |  Minor | . | Shibin Zhang | Shibin Zhang |
| [HBASE-18427](https://issues.apache.org/jira/browse/HBASE-18427) | minor cleanup around AssignmentManager |  Minor | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18054](https://issues.apache.org/jira/browse/HBASE-18054) | log when we add/remove failed servers in client |  Major | Client, Operability | Sean Busbey | Ali |
| [HBASE-18441](https://issues.apache.org/jira/browse/HBASE-18441) | ZookeeperWatcher#interruptedException should throw exception |  Major | . | Yu Li | Yu Li |
| [HBASE-18362](https://issues.apache.org/jira/browse/HBASE-18362) | hbck should not report split replica parent region from meta as errors |  Minor | hbck | huaxiang sun | huaxiang sun |
| [HBASE-18185](https://issues.apache.org/jira/browse/HBASE-18185) | IntegrationTestTimeBoundedRequestsWithRegionReplicas unbalanced tests fails with AssertionError |  Minor | integration tests | Balazs Meszaros | Balazs Meszaros |
| [HBASE-17131](https://issues.apache.org/jira/browse/HBASE-17131) | Avoid livelock caused by HRegion#processRowsWithLocks |  Major | regionserver | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18406](https://issues.apache.org/jira/browse/HBASE-18406) | In ServerCrashProcedure.java start(MasterProcedureEnv) is a no-op |  Major | . | Alex Leblang | Alex Leblang |
| [HBASE-18487](https://issues.apache.org/jira/browse/HBASE-18487) | Minor fixes in row lock implementation |  Major | . | James Taylor | James Taylor |
| [HBASE-18491](https://issues.apache.org/jira/browse/HBASE-18491) | [AMv2] Fail UnassignProcedure if source Region Server is not online. |  Critical | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-17056](https://issues.apache.org/jira/browse/HBASE-17056) | Remove checked in PB generated files |  Critical | . | Enis Soztutar | stack |
| [HBASE-18516](https://issues.apache.org/jira/browse/HBASE-18516) | [AMv2] Remove dead code in ServerManager resulted mostly from AMv2 refactoring |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18492](https://issues.apache.org/jira/browse/HBASE-18492) | [AMv2] Embed code for selecting highest versioned region server for system table regions in AssignmentManager.processAssignQueue() |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18560](https://issues.apache.org/jira/browse/HBASE-18560) | Test master.assignment.TestAssignmentManager hangs on master and its in flaky list |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18024](https://issues.apache.org/jira/browse/HBASE-18024) | HRegion#initializeRegionInternals should not re-create .hregioninfo file when the region directory no longer exists |  Major | Region Assignment, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18551](https://issues.apache.org/jira/browse/HBASE-18551) | [AMv2] UnassignProcedure and crashed regionservers |  Major | amv2 | stack | stack |
| [HBASE-18025](https://issues.apache.org/jira/browse/HBASE-18025) | CatalogJanitor should collect outdated RegionStates from the AM |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18592](https://issues.apache.org/jira/browse/HBASE-18592) | [hbase-thirdparty] Doc on new hbase-thirdparty dependency for the refguide |  Major | documentation | stack | stack |
| [HBASE-17803](https://issues.apache.org/jira/browse/HBASE-17803) | PE always re-creates table when we specify the split policy |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18599](https://issues.apache.org/jira/browse/HBASE-18599) | Add missing @Deprecated annotations |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-18437](https://issues.apache.org/jira/browse/HBASE-18437) | Revoke access permissions of a user from a table does not work as expected |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-18493](https://issues.apache.org/jira/browse/HBASE-18493) | [AMv2] On region server crash do not process system table regions through AssignmentManager.checkIfShouldMoveSystemRegionAsync() |  Critical | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18587](https://issues.apache.org/jira/browse/HBASE-18587) | Fix Flaky TestFileIOEngine |  Major | BucketCache, test | Zach York | Zach York |
| [HBASE-18125](https://issues.apache.org/jira/browse/HBASE-18125) | HBase shell disregards spaces at the end of a split key in a split file |  Major | shell | Ashu Pachauri | Chenxi Tong |
| [HBASE-18572](https://issues.apache.org/jira/browse/HBASE-18572) | Delete can't remove the cells which have no visibility label |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18471](https://issues.apache.org/jira/browse/HBASE-18471) | The DeleteFamily cell is skipped when StoreScanner seeks to next column |  Critical | Deletes, hbase, scan | Thomas Martens | Chia-Ping Tsai |
| [HBASE-18637](https://issues.apache.org/jira/browse/HBASE-18637) | Update the link of "Bending time in HBase" |  Trivial | documentation | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-18634](https://issues.apache.org/jira/browse/HBASE-18634) | Fix client.TestClientClusterStatus |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16615](https://issues.apache.org/jira/browse/HBASE-16615) | Fix flaky TestScannerHeartbeatMessages |  Major | Client, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-18644](https://issues.apache.org/jira/browse/HBASE-18644) | Duplicate "compactionQueueLength" metric in Region Server metrics |  Minor | metrics | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-18575](https://issues.apache.org/jira/browse/HBASE-18575) | [AMv2] Enable and fix TestRestartCluster#testRetainAssignmentOnRestart on master |  Critical | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18628](https://issues.apache.org/jira/browse/HBASE-18628) | ZKPermissionWatcher blocks all ZK notifications |  Critical | regionserver | Mike Drob | Mike Drob |
| [HBASE-18607](https://issues.apache.org/jira/browse/HBASE-18607) | fix submit-patch.py to support utf8 |  Trivial | . | Tamas Penzes | Tamas Penzes |
| [HBASE-18679](https://issues.apache.org/jira/browse/HBASE-18679) | YARN may null Counters object and cause an NPE in ITBLL |  Trivial | integration tests | Josh Elser | Josh Elser |
| [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | Shade the last few dependencies in hbase-shaded-client |  Blocker | Client, dependencies | Elliott Clark | Elliott Clark |
| [HBASE-18306](https://issues.apache.org/jira/browse/HBASE-18306) | Get rid of TableDescriptor#getConfiguration |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18543](https://issues.apache.org/jira/browse/HBASE-18543) | Re-enable test master.TestMasterFailover on master |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18771](https://issues.apache.org/jira/browse/HBASE-18771) | Incorrect StoreFileRefresh leading to split and compaction failures |  Blocker | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-16611](https://issues.apache.org/jira/browse/HBASE-16611) | Flakey org.apache.hadoop.hbase.client.TestReplicasClient.testCancelOfMultiGet |  Major | . | Heng Chen | Heng Chen |
| [HBASE-18796](https://issues.apache.org/jira/browse/HBASE-18796) | Admin#isTableAvailable returns incorrect result before daughter regions are opened |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-18830](https://issues.apache.org/jira/browse/HBASE-18830) | TestCanaryTool does not check Canary monitor's error code |  Major | . | Chinmay Kulkarni | Chinmay Kulkarni |
| [HBASE-18762](https://issues.apache.org/jira/browse/HBASE-18762) | Canary sink type cast error |  Major | . | Chinmay Kulkarni | Chinmay Kulkarni |
| [HBASE-18606](https://issues.apache.org/jira/browse/HBASE-18606) | Tests in hbase-spark module fail with UnsatisfiedLinkError |  Critical | spark, test | Ted Yu | stack |
| [HBASE-18921](https://issues.apache.org/jira/browse/HBASE-18921) | Result.current() throws ArrayIndexOutOfBoundsException after calling advance() |  Minor | . | Maytee Chinavanichkit | Maytee Chinavanichkit |
| [HBASE-18958](https://issues.apache.org/jira/browse/HBASE-18958) | Remove the IS annotation from SpaceLimitingException |  Trivial | . | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | . | Thoralf Gutierrez | Jesse Yates |
| [HBASE-17590](https://issues.apache.org/jira/browse/HBASE-17590) | Drop cache hint should work for StoreFile write path |  Major | . | Appy | Ashu Pachauri |
| [HBASE-18990](https://issues.apache.org/jira/browse/HBASE-18990) | ServerLoad doesn't override #equals which leads to #equals in ClusterStatus always false |  Trivial | . | Reid Chan | Reid Chan |
| [HBASE-19014](https://issues.apache.org/jira/browse/HBASE-19014) | surefire fails; When writing xml report stdout/stderr ... No such file or directory |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16290](https://issues.apache.org/jira/browse/HBASE-16290) | Dump summary of callQueue content; can help debugging |  Major | Operability | stack | Sreeram Venkatasubramanian |
| [HBASE-19066](https://issues.apache.org/jira/browse/HBASE-19066) | Correct the directory of openjdk-8 for jenkins |  Major | build | Chia-Ping Tsai | Sean Busbey |
| [HBASE-18922](https://issues.apache.org/jira/browse/HBASE-18922) | Fix all dead links in our HBase book |  Major | documentation | Chia-Ping Tsai | Yung-An He |
| [HBASE-18438](https://issues.apache.org/jira/browse/HBASE-18438) | Precommit doesn't warn about unused imports |  Critical | build | Mike Drob | Chia-Ping Tsai |
| [HBASE-19129](https://issues.apache.org/jira/browse/HBASE-19129) | TestChoreService is flaky (branch-1 / branch-1.4) |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19138](https://issues.apache.org/jira/browse/HBASE-19138) | Rare failure in TestLruBlockCache |  Trivial | test | Andrew Purtell | Andrew Purtell |
| [HBASE-19150](https://issues.apache.org/jira/browse/HBASE-19150) | TestSnapshotWithAcl is flaky |  Minor | . | Andrew Purtell | churro morales |
| [HBASE-19144](https://issues.apache.org/jira/browse/HBASE-19144) | [RSgroups] Retry assignments in FAILED\_OPEN state when servers (re)join the cluster |  Major | rsgroup | Andrew Purtell | Andrew Purtell |
| [HBASE-19173](https://issues.apache.org/jira/browse/HBASE-19173) | Configure IntegrationTestRSGroup automatically for minicluster mode |  Minor | rsgroup, test | Andrew Purtell | Andrew Purtell |
| [HBASE-19117](https://issues.apache.org/jira/browse/HBASE-19117) | Avoid NPE occurring while active master dies |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19111](https://issues.apache.org/jira/browse/HBASE-19111) | Add missing CellUtil#isPut(Cell) methods |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-19088](https://issues.apache.org/jira/browse/HBASE-19088) | move\_tables\_rsgroup will throw an exception when the table is disabled |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19194](https://issues.apache.org/jira/browse/HBASE-19194) | TestRSGroupsBase has some always false checks |  Blocker | rsgroup, test | Mike Drob | Andrew Purtell |
| [HBASE-12091](https://issues.apache.org/jira/browse/HBASE-12091) | Optionally ignore edits for dropped tables for replication. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-19332](https://issues.apache.org/jira/browse/HBASE-19332) | DumpReplicationQueues misreports total WAL size |  Trivial | Replication | Gary Helmling | Gary Helmling |
| [HBASE-19385](https://issues.apache.org/jira/browse/HBASE-19385) | [1.3] TestReplicator failed 1.3 nightly |  Major | test | stack | stack |
| [HBASE-19285](https://issues.apache.org/jira/browse/HBASE-19285) | Add per-table latency histograms |  Critical | metrics | Clay B. | Josh Elser |
| [HBASE-19396](https://issues.apache.org/jira/browse/HBASE-19396) | Fix flaky test TestHTableMultiplexerFlushCache |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16239](https://issues.apache.org/jira/browse/HBASE-16239) | Better logging for RPC related exceptions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-19445](https://issues.apache.org/jira/browse/HBASE-19445) | PerformanceEvaluation NPE processing split policy option |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19447](https://issues.apache.org/jira/browse/HBASE-19447) | INFO level logging of GetClusterStatus from HMaster is too chatty |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19624](https://issues.apache.org/jira/browse/HBASE-19624) | TestIOFencing hangs |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19671](https://issues.apache.org/jira/browse/HBASE-19671) | Fix TestMultiParallel#testActiveThreadsCount |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | "Maximum lock count exceeded" from region server's batch processing |  Major | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-19828](https://issues.apache.org/jira/browse/HBASE-19828) | Flakey TestRegionsOnMasterOptions.testRegionsOnAllServers |  Major | . | stack | stack |
| [HBASE-17513](https://issues.apache.org/jira/browse/HBASE-17513) | Thrift Server 1 uses different QOP settings than RPC and Thrift Server 2 and can easily be misconfigured so there is no encryption when the operator expects it. |  Critical | documentation, security, Thrift, Usability | Sean Busbey | Reid Chan |
| [HBASE-17079](https://issues.apache.org/jira/browse/HBASE-17079) | HBase build fails on windows, hbase-archetype-builder is reason for failure |  Major | build | Mohammad Arshad | Mohammad Arshad |
| [HBASE-19756](https://issues.apache.org/jira/browse/HBASE-19756) | Master NPE during completed failed proc eviction |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11461](https://issues.apache.org/jira/browse/HBASE-11461) | Compilation errors are not posted back to JIRA during QA run |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11057](https://issues.apache.org/jira/browse/HBASE-11057) | Improve TestShell coverage of grant and revoke comamnds |  Minor | . | Andrew Purtell | Srikanth Srungarapu |
| [HBASE-11615](https://issues.apache.org/jira/browse/HBASE-11615) | TestZKLessAMOnCluster.testForceAssignWhileClosing failed on Jenkins |  Major | master | Mike Drob | Jimmy Xiang |
| [HBASE-11616](https://issues.apache.org/jira/browse/HBASE-11616) | TestNamespaceUpgrade fails in trunk |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-4744](https://issues.apache.org/jira/browse/HBASE-4744) | Remove @Ignore for testLogRollAfterSplitStart |  Critical | . | Nicolas Spiegelberg | Sean Busbey |
| [HBASE-11673](https://issues.apache.org/jira/browse/HBASE-11673) | TestIOFencing#testFencingAroundCompactionAfterWALSync fails |  Major | . | Qiang Tian | Sergey Soldatov |
| [HBASE-11713](https://issues.apache.org/jira/browse/HBASE-11713) | Adding hbase shell unit test coverage for visibility labels. |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11798](https://issues.apache.org/jira/browse/HBASE-11798) | TestBucketWriterThread may hang due to WriterThread stopping prematurely |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11866](https://issues.apache.org/jira/browse/HBASE-11866) | TestDistributedLogSplitting is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11867](https://issues.apache.org/jira/browse/HBASE-11867) | TestSplitLogManager.testUnassignedTimeout is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11918](https://issues.apache.org/jira/browse/HBASE-11918) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController initialization not being recognized |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11942](https://issues.apache.org/jira/browse/HBASE-11942) | Fix TestHRegionBusyWait |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11966](https://issues.apache.org/jira/browse/HBASE-11966) | Minor error in TestHRegion.testCheckAndMutate\_WithCorrectValue() |  Minor | regionserver | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12055](https://issues.apache.org/jira/browse/HBASE-12055) | TestBucketWriterThread hangs flakily based on timing |  Major | . | Enis Soztutar | Nick Dimiduk |
| [HBASE-12008](https://issues.apache.org/jira/browse/HBASE-12008) | Remove IntegrationTestImportTsv#testRunFromOutputCommitter |  Minor | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11838](https://issues.apache.org/jira/browse/HBASE-11838) | Enable PREFIX\_TREE in integration tests |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12317](https://issues.apache.org/jira/browse/HBASE-12317) | Run IntegrationTestRegionReplicaPerf w.o mapred |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12367](https://issues.apache.org/jira/browse/HBASE-12367) | Integration tests should not restore the cluster if the CM is not destructive |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12378](https://issues.apache.org/jira/browse/HBASE-12378) | Add a test to verify that the read-replica is able to read after a compaction |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-12335](https://issues.apache.org/jira/browse/HBASE-12335) | IntegrationTestRegionReplicaPerf is flaky |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12401](https://issues.apache.org/jira/browse/HBASE-12401) | Add some timestamp signposts in IntegrationTestMTTR |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12403](https://issues.apache.org/jira/browse/HBASE-12403) | IntegrationTestMTTR flaky due to aggressive RS restart timeout |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12472](https://issues.apache.org/jira/browse/HBASE-12472) | Improve debuggability of IntegrationTestBulkLoad |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12549](https://issues.apache.org/jira/browse/HBASE-12549) | Fix TestAssignmentManagerOnCluster#testAssignRacingWithSSH() flaky test |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12554](https://issues.apache.org/jira/browse/HBASE-12554) | TestBaseLoadBalancer may timeout due to lengthy rack lookup |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12685](https://issues.apache.org/jira/browse/HBASE-12685) | TestSplitLogManager#testLogFilesAreArchived sometimes times out due to race condition |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12645](https://issues.apache.org/jira/browse/HBASE-12645) | HBaseTestingUtility is using ${$HOME} for rootDir |  Critical | test | Nick Dimiduk | Varun Saxena |
| [HBASE-12764](https://issues.apache.org/jira/browse/HBASE-12764) | TestPerColumnFamilyFlush#testCompareStoreFileCount may fail due to new table not available |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12799](https://issues.apache.org/jira/browse/HBASE-12799) | ITAG fails with java.lang.RuntimeException if table does not exist |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12885](https://issues.apache.org/jira/browse/HBASE-12885) | Unit test for RAW / VERSIONS scanner specifications |  Minor | shell | Amit Kabra | Amit Kabra |
| [HBASE-12992](https://issues.apache.org/jira/browse/HBASE-12992) | TestChoreService doesn't close services, that can break test on slow virtual hosts. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13106](https://issues.apache.org/jira/browse/HBASE-13106) | Ensure endpoint-only table coprocessors can be dynamically loaded |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13179](https://issues.apache.org/jira/browse/HBASE-13179) | TestMasterObserver deleteTable is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13182](https://issues.apache.org/jira/browse/HBASE-13182) | Test NamespaceAuditor/AccessController create/delete table is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7781](https://issues.apache.org/jira/browse/HBASE-7781) | Update security unit tests to use a KDC if available |  Blocker | security, test | Gary Helmling | Duo Zhang |
| [HBASE-13280](https://issues.apache.org/jira/browse/HBASE-13280) | TestSecureRPC failed |  Minor | . | Liu Shaohui | Duo Zhang |
| [HBASE-13413](https://issues.apache.org/jira/browse/HBASE-13413) | Create an integration test for Replication |  Minor | integration tests | Rajesh Nishtala | Rajesh Nishtala |
| [HBASE-13591](https://issues.apache.org/jira/browse/HBASE-13591) | TestHBaseFsck is flakey |  Major | hbck | Nick Dimiduk | Josh Elser |
| [HBASE-13609](https://issues.apache.org/jira/browse/HBASE-13609) | TestFastFail is still failing |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13940](https://issues.apache.org/jira/browse/HBASE-13940) | IntegrationTestBulkLoad needs option to specify output folders used by test |  Major | integration tests | Enis Soztutar | Rajeshbabu Chintaguntla |
| [HBASE-14197](https://issues.apache.org/jira/browse/HBASE-14197) | TestRegionServerHostname#testInvalidRegionServerHostnameAbortsServer fails in Jenkins |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14200](https://issues.apache.org/jira/browse/HBASE-14200) | Separate RegionReplica subtests of TestStochasticLoadBalancer into TestStochasticLoadBalancer2 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14210](https://issues.apache.org/jira/browse/HBASE-14210) | Create test for cell level ACLs involving user group |  Major | test | Ted Yu | Ashish Singhi |
| [HBASE-14277](https://issues.apache.org/jira/browse/HBASE-14277) | TestRegionServerHostname.testRegionServerHostname may fail at host with a case sensitive name |  Minor | test | Liu Shaohui | Liu Shaohui |
| [HBASE-14293](https://issues.apache.org/jira/browse/HBASE-14293) | TestStochasticBalancerJmxMetrics intermittently fails due to port conflict |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14310](https://issues.apache.org/jira/browse/HBASE-14310) | test-patch.sh should handle spurious non-zero exit code from maven |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14344](https://issues.apache.org/jira/browse/HBASE-14344) | Add timeouts to TestHttpServerLifecycle |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14466](https://issues.apache.org/jira/browse/HBASE-14466) | Remove duplicated code from MOB snapshot tests |  Trivial | mob, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14688](https://issues.apache.org/jira/browse/HBASE-14688) | Cleanup MOB tests |  Trivial | mob | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14728](https://issues.apache.org/jira/browse/HBASE-14728) | TestRowCounter is broken in master |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-14758](https://issues.apache.org/jira/browse/HBASE-14758) | Add UT case for unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Minor | Client, test | Yu Li | Yu Li |
| [HBASE-14584](https://issues.apache.org/jira/browse/HBASE-14584) | TestNamespacesInstanceModel fails on jdk8 |  Major | REST, test | Nick Dimiduk | Matt Warhaftig |
| [HBASE-15192](https://issues.apache.org/jira/browse/HBASE-15192) | TestRegionMergeTransactionOnCluster#testCleanMergeReference is flaky |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15420](https://issues.apache.org/jira/browse/HBASE-15420) | TestCacheConfig failed after HBASE-15338 |  Minor | test | Liu Shaohui | Liu Shaohui |
| [HBASE-13372](https://issues.apache.org/jira/browse/HBASE-13372) | Unit tests for SplitTransaction and RegionMergeTransaction listeners |  Major | . | Andrew Purtell | Gabor Liptak |
| [HBASE-15679](https://issues.apache.org/jira/browse/HBASE-15679) | Assertion on wrong variable in TestReplicationThrottler#testThrottling |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15760](https://issues.apache.org/jira/browse/HBASE-15760) | TestBlockEvictionFromClient#testParallelGetsAndScanWithWrappedRegionScanner fails in master branch |  Minor | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-15923](https://issues.apache.org/jira/browse/HBASE-15923) | Shell rows counter test fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15939](https://issues.apache.org/jira/browse/HBASE-15939) | Two shell test failures on master |  Major | . | Ted Yu |  |
| [HBASE-16049](https://issues.apache.org/jira/browse/HBASE-16049) | TestRowProcessorEndpoint is failing on Apache Builds |  Major | . | Mikhail Antonov | Guanghao Zhang |
| [HBASE-16185](https://issues.apache.org/jira/browse/HBASE-16185) | TestReplicationSmallTests fails in master branch |  Major | . | Ted Yu | Phil Yang |
| [HBASE-16418](https://issues.apache.org/jira/browse/HBASE-16418) | Reduce duration of sleep waiting for region reopen in IntegrationTestBulkLoad#installSlowingCoproc() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16639](https://issues.apache.org/jira/browse/HBASE-16639) | TestProcedureInMemoryChore#testChoreAddAndRemove occasionally fails |  Minor | . | Ted Yu | Matteo Bertozzi |
| [HBASE-16634](https://issues.apache.org/jira/browse/HBASE-16634) | Speedup TestExportSnapshot |  Minor | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16349](https://issues.apache.org/jira/browse/HBASE-16349) | TestClusterId may hang during cluster shutdown |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16671](https://issues.apache.org/jira/browse/HBASE-16671) | Split TestExportSnapshot |  Minor | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16725](https://issues.apache.org/jira/browse/HBASE-16725) | Don't let flushThread hang in TestHRegion |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16776](https://issues.apache.org/jira/browse/HBASE-16776) | Remove duplicated versions of countRow() in tests |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16778](https://issues.apache.org/jira/browse/HBASE-16778) | Move testIllegalTableDescriptor out from TestFromClientSide |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16777](https://issues.apache.org/jira/browse/HBASE-16777) | Fix flaky TestMasterProcedureEvents |  Trivial | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16791](https://issues.apache.org/jira/browse/HBASE-16791) | Fix TestDispatchMergingRegionsProcedure |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16794](https://issues.apache.org/jira/browse/HBASE-16794) | TestDispatchMergingRegionsProcedure#testMergeRegionsConcurrently is flaky |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16781](https://issues.apache.org/jira/browse/HBASE-16781) | Fix flaky TestMasterProcedureWalLease |  Minor | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16274](https://issues.apache.org/jira/browse/HBASE-16274) | Add more peer tests to replication\_admin\_test |  Minor | . | Ted Yu | Guanghao Zhang |
| [HBASE-16975](https://issues.apache.org/jira/browse/HBASE-16975) | Disable two subtests of TestSerialReplication |  Minor | . | Ted Yu | Phil Yang |
| [HBASE-17120](https://issues.apache.org/jira/browse/HBASE-17120) | TestAssignmentListener#testAssignmentListener fails |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17080](https://issues.apache.org/jira/browse/HBASE-17080) | rest.TestTableResource fails in master branch |  Major | . | Ted Yu | Chia-Ping Tsai |
| [HBASE-17189](https://issues.apache.org/jira/browse/HBASE-17189) | TestMasterObserver#wasModifyTableActionCalled uses wrong variables |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17246](https://issues.apache.org/jira/browse/HBASE-17246) | TestSerialReplication#testRegionMerge fails in master branch |  Major | . | Ted Yu | Phil Yang |
| [HBASE-17371](https://issues.apache.org/jira/browse/HBASE-17371) | Enhance 'HBaseContextSuite @ distributedScan to test HBase client' with filter |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17474](https://issues.apache.org/jira/browse/HBASE-17474) | Reduce frequency of NoSuchMethodException when calling setStoragePolicy() |  Minor | . | Ted Yu | Yu Li |
| [HBASE-17628](https://issues.apache.org/jira/browse/HBASE-17628) | Local mode of mini cluster shouldn't use hdfs |  Minor | . | Devaraj Das | Devaraj Das |
| [HBASE-17657](https://issues.apache.org/jira/browse/HBASE-17657) | TestZKAsyncRegistry is flaky |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17672](https://issues.apache.org/jira/browse/HBASE-17672) | "Grant should set access rights appropriately" test fails |  Major | . | Ted Yu | Zheng Hu |
| [HBASE-17703](https://issues.apache.org/jira/browse/HBASE-17703) | TestThriftServerCmdLine is flaky in master branch |  Major | . | Ted Yu | Jan Hentschel |
| [HBASE-17806](https://issues.apache.org/jira/browse/HBASE-17806) | TestRSGroups#testMoveServersAndTables is flaky in master branch |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-16051](https://issues.apache.org/jira/browse/HBASE-16051) | TestScannerHeartbeatMessages fails on some machines |  Major | test | Mikhail Antonov | Phil Yang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8541](https://issues.apache.org/jira/browse/HBASE-8541) | implement flush-into-stripes in stripe compactions |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | ZK-less region assignment |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11372](https://issues.apache.org/jira/browse/HBASE-11372) | Remove SlabCache |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11088](https://issues.apache.org/jira/browse/HBASE-11088) | Support Visibility Expression Deletes in Shell |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11483](https://issues.apache.org/jira/browse/HBASE-11483) | Check the rest of the book for new XML validity errors and fix |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11367](https://issues.apache.org/jira/browse/HBASE-11367) | Pluggable replication endpoint |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11511](https://issues.apache.org/jira/browse/HBASE-11511) | Write flush events to WAL |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11520](https://issues.apache.org/jira/browse/HBASE-11520) | Simplify offheap cache config by removing the confusing "hbase.bucketcache.percentage.in.combinedcache" |  Major | io | stack | stack |
| [HBASE-2251](https://issues.apache.org/jira/browse/HBASE-2251) | PE defaults to 1k rows - uncommon use case, and easy to hit benchmarks |  Major | Performance | ryan rawson | stack |
| [HBASE-11261](https://issues.apache.org/jira/browse/HBASE-11261) | Handle splitting/merging of regions that have region\_replication greater than one |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11471](https://issues.apache.org/jira/browse/HBASE-11471) | Move TableStateManager and ZkTableStateManager and Server to hbase-server |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Alex Newman |
| [HBASE-11559](https://issues.apache.org/jira/browse/HBASE-11559) | Add dumping of DATA block usage to the BlockCache JSON report. |  Major | metrics | stack | stack |
| [HBASE-11573](https://issues.apache.org/jira/browse/HBASE-11573) | Report age on eviction |  Major | BlockCache | stack | stack |
| [HBASE-4624](https://issues.apache.org/jira/browse/HBASE-4624) | Remove and convert @deprecated RemoteExceptionHandler.decodeRemoteException calls |  Major | . | Jonathan Hsieh | Talat UYARER |
| [HBASE-11384](https://issues.apache.org/jira/browse/HBASE-11384) | [Visibility Controller]Check for users covering authorizations for every mutation |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11318](https://issues.apache.org/jira/browse/HBASE-11318) | Classes in security subpackages missing @InterfaceAudience annotations. |  Major | security | Jonathan Hsieh | Andrew Purtell |
| [HBASE-10674](https://issues.apache.org/jira/browse/HBASE-10674) | HBCK should be updated to do replica related checks |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11323](https://issues.apache.org/jira/browse/HBASE-11323) | BucketCache all the time! |  Major | io | stack | stack |
| [HBASE-11740](https://issues.apache.org/jira/browse/HBASE-11740) | RegionStates.getRegionAssignments() gets stuck on clone |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11753](https://issues.apache.org/jira/browse/HBASE-11753) | Document HBASE\_SHELL\_OPTS environment variable |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11734](https://issues.apache.org/jira/browse/HBASE-11734) | Document changed behavior of hbase.hstore.time.to.purge.deletes |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11508](https://issues.apache.org/jira/browse/HBASE-11508) | Document changes to IPC config parameters from HBASE-11492 |  Major | regionserver | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11607](https://issues.apache.org/jira/browse/HBASE-11607) | Document HBase metrics |  Major | documentation, metrics | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11572](https://issues.apache.org/jira/browse/HBASE-11572) | Add support for doing get/scans against a particular replica\_id |  Major | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11512](https://issues.apache.org/jira/browse/HBASE-11512) | Write region open/close events to WAL |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11737](https://issues.apache.org/jira/browse/HBASE-11737) | Document callQueue improvements from HBASE-11355 and HBASE-11724 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11736](https://issues.apache.org/jira/browse/HBASE-11736) | Document SKIP\_FLUSH snapshot option |  Major | documentation, snapshots | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11752](https://issues.apache.org/jira/browse/HBASE-11752) | Document blockcache prefetch option |  Major | BlockCache, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11779](https://issues.apache.org/jira/browse/HBASE-11779) | Document the new requirement to set JAVA\_HOME before starting HBase |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | Enhance remote meta updates |  Major | . | Jimmy Xiang | Virag Kothari |
| [HBASE-11822](https://issues.apache.org/jira/browse/HBASE-11822) | Convert EnvironmentEdge#getCurrentTimeMillis to getCurrentTime |  Major | . | stack | stack |
| [HBASE-11781](https://issues.apache.org/jira/browse/HBASE-11781) | Document new TableMapReduceUtil scanning options |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11072](https://issues.apache.org/jira/browse/HBASE-11072) | Abstract WAL splitting from ZK |  Major | Consensus, Zookeeper | Mikhail Antonov | Sergey Soldatov |
| [HBASE-11786](https://issues.apache.org/jira/browse/HBASE-11786) | Document web UI for tracking time spent in coprocessors |  Minor | Coprocessors, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-10841](https://issues.apache.org/jira/browse/HBASE-10841) | Scan,Get,Put,Delete,etc setters should consistently return this |  Minor | Client, Usability | Nick Dimiduk | Enis Soztutar |
| [HBASE-11919](https://issues.apache.org/jira/browse/HBASE-11919) | Remove the deprecated pre/postGet CP hook |  Major | Coprocessors, regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11923](https://issues.apache.org/jira/browse/HBASE-11923) | Potential race condition in RecoverableZookeeper.checkZk() |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11934](https://issues.apache.org/jira/browse/HBASE-11934) | Support KeyValueCodec to encode non KeyValue cells. |  Critical | Performance, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-11911](https://issues.apache.org/jira/browse/HBASE-11911) | Break up tests into more fine grained categories |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11963](https://issues.apache.org/jira/browse/HBASE-11963) | Synchronize peer cluster replication connection attempts |  Major | . | Andrew Purtell | Maddineni Sukumar |
| [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | Get rid of ZKTable, and table enable/disable state in ZK |  Major | Zookeeper | Enis Soztutar | Andrey Stepachev |
| [HBASE-11941](https://issues.apache.org/jira/browse/HBASE-11941) | Rebuild site because of major structural changes to HTML |  Major | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11784](https://issues.apache.org/jira/browse/HBASE-11784) | Document global configuration for maxVersion |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11975](https://issues.apache.org/jira/browse/HBASE-11975) | Remove the explicit list of maven repositories in pom.xml |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11738](https://issues.apache.org/jira/browse/HBASE-11738) | Document improvements to LoadTestTool and PerformanceEvaluation |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11874](https://issues.apache.org/jira/browse/HBASE-11874) | Support Cell to be passed to StoreFile.Writer rather than KeyValue |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-8139](https://issues.apache.org/jira/browse/HBASE-8139) | Allow job names to be overridden |  Major | mapreduce, Usability | Nick Dimiduk | Ashish Singhi |
| [HBASE-11598](https://issues.apache.org/jira/browse/HBASE-11598) | Add simple rpc throttling |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11472](https://issues.apache.org/jira/browse/HBASE-11472) | Remove ZKTableStateClientSideReader class |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Andrey Stepachev |
| [HBASE-11917](https://issues.apache.org/jira/browse/HBASE-11917) | Deprecate / Remove HTableUtil |  Major | Client, Usability | Enis Soztutar | stack |
| [HBASE-11872](https://issues.apache.org/jira/browse/HBASE-11872) | Avoid usage of KeyValueUtil#ensureKeyValue from Compactor |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12047](https://issues.apache.org/jira/browse/HBASE-12047) | Avoid usage of KeyValueUtil#ensureKeyValue in simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12062](https://issues.apache.org/jira/browse/HBASE-12062) | Fix usage of Collections.toArray |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12023](https://issues.apache.org/jira/browse/HBASE-12023) | HRegion.applyFamilyMapToMemstore creates too many iterator objects. |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12059](https://issues.apache.org/jira/browse/HBASE-12059) | Create hbase-annotations module |  Major | build | Elliott Clark | Elliott Clark |
| [HBASE-12076](https://issues.apache.org/jira/browse/HBASE-12076) | Move InterfaceAudience imports to hbase-annotations |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12077](https://issues.apache.org/jira/browse/HBASE-12077) | FilterLists create many ArrayList$Itr objects per row. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12050](https://issues.apache.org/jira/browse/HBASE-12050) | Avoid KeyValueUtil#ensureKeyValue from DefaultMemStore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12069](https://issues.apache.org/jira/browse/HBASE-12069) | Finish making HFile.Writer Cell-centric; undo APIs that expect KV serializations. |  Major | . | stack | stack |
| [HBASE-12086](https://issues.apache.org/jira/browse/HBASE-12086) | Fix bugs in HTableMultiplexer |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-11920](https://issues.apache.org/jira/browse/HBASE-11920) | Add CP hooks for ReplicationEndPoint |  Major | Coprocessors, Replication | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12110](https://issues.apache.org/jira/browse/HBASE-12110) | Fix .arcconfig |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12079](https://issues.apache.org/jira/browse/HBASE-12079) | Deprecate KeyValueUtil#ensureKeyValue(s) |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12082](https://issues.apache.org/jira/browse/HBASE-12082) | Find a way to set timestamp on Cells on the server |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12096](https://issues.apache.org/jira/browse/HBASE-12096) | In ZKSplitLog Coordination and AggregateImplementation replace enhaced for statements with basic for statement to avoid unnecessary object allocation |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-11178](https://issues.apache.org/jira/browse/HBASE-11178) | Remove deprecation annotations from mapred namespace |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12115](https://issues.apache.org/jira/browse/HBASE-12115) | Fix NumberFormat Exception in TableInputFormatBase. |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12112](https://issues.apache.org/jira/browse/HBASE-12112) | Avoid KeyValueUtil#ensureKeyValue some more simple cases |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-11930](https://issues.apache.org/jira/browse/HBASE-11930) | Document new permission check to roll WAL writer |  Major | documentation, regionserver, security, wal | Andrew Purtell | Jerry He |
| [HBASE-12104](https://issues.apache.org/jira/browse/HBASE-12104) | Some optimization and bugfix for HTableMultiplexer |  Major | Client | Yi Deng | Yi Deng |
| [HBASE-11980](https://issues.apache.org/jira/browse/HBASE-11980) | Change sync to hsync, remove unused InfoServer, and reference our httpserver instead of hadoops |  Major | . | stack | stack |
| [HBASE-11997](https://issues.apache.org/jira/browse/HBASE-11997) | CopyTable with bulkload |  Minor | Client | @deprecated Yi Deng | Yi Deng |
| [HBASE-12189](https://issues.apache.org/jira/browse/HBASE-12189) | Fix new issues found by coverity static analysis |  Major | . | Elliott Clark | stack |
| [HBASE-12210](https://issues.apache.org/jira/browse/HBASE-12210) | Avoid KeyValue in Prefix Tree |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12288](https://issues.apache.org/jira/browse/HBASE-12288) | Support DirectByteBuffer usage in DataBlock Encoding area |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-11964](https://issues.apache.org/jira/browse/HBASE-11964) | Improve spreading replication load from failed regionservers |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12202](https://issues.apache.org/jira/browse/HBASE-12202) | Support DirectByteBuffer usage in HFileBlock |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-11912](https://issues.apache.org/jira/browse/HBASE-11912) | Catch some bad practices at compile time with error-prone |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12353](https://issues.apache.org/jira/browse/HBASE-12353) | Turn down logging on some spewing unit tests |  Major | . | stack | Dima Spivak |
| [HBASE-12075](https://issues.apache.org/jira/browse/HBASE-12075) | Preemptive Fast Fail |  Major | Client | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12354](https://issues.apache.org/jira/browse/HBASE-12354) | Update dependencies in time for 1.0 release |  Major | dependencies | stack | stack |
| [HBASE-12313](https://issues.apache.org/jira/browse/HBASE-12313) | Redo the hfile index length optimization so cell-based rather than serialized KV key |  Major | regionserver, Scanners | stack | stack |
| [HBASE-12355](https://issues.apache.org/jira/browse/HBASE-12355) | Update maven plugins |  Major | build | stack | stack |
| [HBASE-12379](https://issues.apache.org/jira/browse/HBASE-12379) | Try surefire 2.18-SNAPSHOT |  Major | test | stack | stack |
| [HBASE-4625](https://issues.apache.org/jira/browse/HBASE-4625) | Convert @deprecated HBaseTestCase tests  JUnit4 style tests |  Minor | . | Jonathan Hsieh | Ashish Singhi |
| [HBASE-12363](https://issues.apache.org/jira/browse/HBASE-12363) | Improve how KEEP\_DELETED\_CELLS works with MIN\_VERSIONS |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12343](https://issues.apache.org/jira/browse/HBASE-12343) | Document recommended configuration for 0.98 from HBASE-11964 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12382](https://issues.apache.org/jira/browse/HBASE-12382) | Restore incremental compilation |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12517](https://issues.apache.org/jira/browse/HBASE-12517) | Several HConstant members are assignable |  Critical | . | Sean Busbey | Sean Busbey |
| [HBASE-10671](https://issues.apache.org/jira/browse/HBASE-10671) | Add missing InterfaceAudience annotations for classes in hbase-common and hbase-client modules |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-12471](https://issues.apache.org/jira/browse/HBASE-12471) | Task 4. replace internal ConnectionManager#{delete,get}Connection use with #close, #createConnection (0.98, 0.99) under src/main/java |  Major | . | stack | stack |
| [HBASE-12404](https://issues.apache.org/jira/browse/HBASE-12404) | Task 5 from parent: Replace internal HTable constructor use with HConnection#getTable (0.98, 0.99) |  Major | . | stack | stack |
| [HBASE-12128](https://issues.apache.org/jira/browse/HBASE-12128) | Cache configuration and RpcController selection for Table in Connection |  Major | . | Andrew Purtell | Stephen Yuan Jiang |
| [HBASE-12518](https://issues.apache.org/jira/browse/HBASE-12518) | Task 4 polish. Remove CM#{get,delete}Connection |  Major | test | stack | stack |
| [HBASE-12400](https://issues.apache.org/jira/browse/HBASE-12400) | Fix refguide so it does connection#getTable rather than new HTable everywhere: first cut! |  Major | documentation | stack | stack |
| [HBASE-12519](https://issues.apache.org/jira/browse/HBASE-12519) | Remove tabs used as whitespace |  Minor | . | Sean Busbey | Varun Saxena |
| [HBASE-12526](https://issues.apache.org/jira/browse/HBASE-12526) | Remove unused imports |  Minor | . | Sean Busbey | Varun Saxena |
| [HBASE-12523](https://issues.apache.org/jira/browse/HBASE-12523) | Update checkstyle plugin rules to match our use |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12606](https://issues.apache.org/jira/browse/HBASE-12606) | Sanity check encryption configuration before opening WAL or onlining regions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11903](https://issues.apache.org/jira/browse/HBASE-11903) | Directly invoking split & merge of replica regions should be disallowed |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-12575](https://issues.apache.org/jira/browse/HBASE-12575) | Sanity check table coprocessor classes are loadable |  Major | . | Enis Soztutar | Andrew Purtell |
| [HBASE-12485](https://issues.apache.org/jira/browse/HBASE-12485) | Maintain SeqId monotonically increasing |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-12568](https://issues.apache.org/jira/browse/HBASE-12568) | Adopt Semantic Versioning and document it in the book |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12648](https://issues.apache.org/jira/browse/HBASE-12648) | Document per cell TTLs |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12679](https://issues.apache.org/jira/browse/HBASE-12679) | Add HBaseInterfaceAudience.TOOLS and move some of the Public classes to LimitedPrivate |  Major | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-12704](https://issues.apache.org/jira/browse/HBASE-12704) | Add demo client which uses doAs functionality on Thrift-over-HTTPS. |  Minor | Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12511](https://issues.apache.org/jira/browse/HBASE-12511) | namespace permissions - add support from table creation privilege in a namespace 'C' |  Blocker | . | Francis Liu | Huaiyu Zhu |
| [HBASE-12528](https://issues.apache.org/jira/browse/HBASE-12528) | Document the newly introduced params for providing principal and keytabs. |  Minor | documentation | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12738](https://issues.apache.org/jira/browse/HBASE-12738) | Chunk Ref Guide into file-per-chapter |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12012](https://issues.apache.org/jira/browse/HBASE-12012) | Improve cancellation for the scan RPCs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-12735](https://issues.apache.org/jira/browse/HBASE-12735) | Refactor TAG so it can live as unit test and as an integration test |  Major | test | stack | Jonathan Hsieh |
| [HBASE-12763](https://issues.apache.org/jira/browse/HBASE-12763) | Make it so there must be WALs for a server to be marked dead |  Major | wal | stack | stack |
| [HBASE-12695](https://issues.apache.org/jira/browse/HBASE-12695) | JDK 1.8 compilation broken |  Critical | build | Elliott Clark | Esteban Gutierrez |
| [HBASE-12776](https://issues.apache.org/jira/browse/HBASE-12776) | SpliTransaction: Log number of files to be split |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12802](https://issues.apache.org/jira/browse/HBASE-12802) | Remove unnecessary Table.flushCommits() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12779](https://issues.apache.org/jira/browse/HBASE-12779) | SplitTransaction: Add metrics |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11533](https://issues.apache.org/jira/browse/HBASE-11533) | AsciiDoctor POC |  Minor | build, documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12708](https://issues.apache.org/jira/browse/HBASE-12708) | Document newly introduced params for using Thrift-over-HTTPS. |  Minor | documentation, Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12848](https://issues.apache.org/jira/browse/HBASE-12848) | Utilize Flash storage for WAL |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12793](https://issues.apache.org/jira/browse/HBASE-12793) | [hbck] closeRegionSilentlyAndWait() should log cause of IOException and retry until  hbase.hbck.close.timeout expires |  Minor | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-8410](https://issues.apache.org/jira/browse/HBASE-8410) | Basic quota support for namespaces |  Major | . | Francis Liu | Vandana Ayyalasomayajula |
| [HBASE-7847](https://issues.apache.org/jira/browse/HBASE-7847) | Use zookeeper multi to clear znodes |  Major | . | Ted Yu | Rakesh R |
| [HBASE-11908](https://issues.apache.org/jira/browse/HBASE-11908) | Region replicas should be added to the meta table at the time of table creation |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12936](https://issues.apache.org/jira/browse/HBASE-12936) | Quota support for namespace should take region merge into account |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11568](https://issues.apache.org/jira/browse/HBASE-11568) | Async WAL replication for region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12980](https://issues.apache.org/jira/browse/HBASE-12980) | Delete of a table may not clean all rows from hbase:meta |  Major | Operability | stack | stack |
| [HBASE-11567](https://issues.apache.org/jira/browse/HBASE-11567) | Write bulk load COMMIT events to WAL |  Major | . | Enis Soztutar | Alex Newman |
| [HBASE-11910](https://issues.apache.org/jira/browse/HBASE-11910) | Document Premptive Call Me Maybe HBase findings in the online manual |  Major | . | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-11569](https://issues.apache.org/jira/browse/HBASE-11569) | Flush / Compaction handling from secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12425](https://issues.apache.org/jira/browse/HBASE-12425) | Document the phases of the split transaction |  Major | documentation | Andrew Purtell | Misty Stanley-Jones |
| [HBASE-11842](https://issues.apache.org/jira/browse/HBASE-11842) | Integration test for async wal replication to secondary regions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12714](https://issues.apache.org/jira/browse/HBASE-12714) | RegionReplicaReplicationEndpoint should not set the RPC Codec |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12561](https://issues.apache.org/jira/browse/HBASE-12561) | Replicas of regions can be cached from different instances of the table in MetaCache |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13067](https://issues.apache.org/jira/browse/HBASE-13067) | Fix caching of stubs to allow IP address changes of restarted remote servers |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13130](https://issues.apache.org/jira/browse/HBASE-13130) | Add timeouts on TestMasterObserver, a frequent zombie show |  Major | test | stack | stack |
| [HBASE-11571](https://issues.apache.org/jira/browse/HBASE-11571) | Bulk load handling from secondary region replicas |  Major | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11580](https://issues.apache.org/jira/browse/HBASE-11580) | Failover handling for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12562](https://issues.apache.org/jira/browse/HBASE-12562) | Handling memory pressure for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13164](https://issues.apache.org/jira/browse/HBASE-13164) | Update TestUsersOperationsWithSecureHadoop to use MiniKdc |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13095](https://issues.apache.org/jira/browse/HBASE-13095) | Document how to retrieve replication stats from HBase Shell |  Major | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13121](https://issues.apache.org/jira/browse/HBASE-13121) | Async wal replication for region replicas and dist log replay does not work together |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13169](https://issues.apache.org/jira/browse/HBASE-13169) | ModifyTable increasing the region replica count should also auto-setup RRRE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13226](https://issues.apache.org/jira/browse/HBASE-13226) | Document enable\_table\_replication and disable\_table\_replication shell commands |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13244](https://issues.apache.org/jira/browse/HBASE-13244) | Test delegation token generation with kerberos enabled |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13006](https://issues.apache.org/jira/browse/HBASE-13006) | Document visibility label support for groups |  Minor | . | Jerry He | Jerry He |
| [HBASE-13258](https://issues.apache.org/jira/browse/HBASE-13258) | Promote TestHRegion to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13327](https://issues.apache.org/jira/browse/HBASE-13327) | Use Admin in ConnectionCache |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13332](https://issues.apache.org/jira/browse/HBASE-13332) | Fix the usage of doAs/runAs in Visibility Controller tests. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13303](https://issues.apache.org/jira/browse/HBASE-13303) | Fix size calculation of results on the region server |  Major | Client | Lars Hofhansl | Andrew Purtell |
| [HBASE-13213](https://issues.apache.org/jira/browse/HBASE-13213) | Split out locality metrics among primary and secondary region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13335](https://issues.apache.org/jira/browse/HBASE-13335) | Update ClientSmallScanner and ClientSmallReversedScanner |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-13252](https://issues.apache.org/jira/browse/HBASE-13252) | Get rid of managed connections and connection caching |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13421](https://issues.apache.org/jira/browse/HBASE-13421) | Reduce the number of object creations introduced by HBASE-11544 in scan RPC hot code paths |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13429](https://issues.apache.org/jira/browse/HBASE-13429) | Remove deprecated seek/reseek methods from HFileScanner |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13447](https://issues.apache.org/jira/browse/HBASE-13447) | Bypass logic in TimeRange.compare |  Minor | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13202](https://issues.apache.org/jira/browse/HBASE-13202) | Procedure v2 - core framework |  Major | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13203](https://issues.apache.org/jira/browse/HBASE-13203) | Procedure v2 - master create/delete table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13204](https://issues.apache.org/jira/browse/HBASE-13204) | Procedure v2 - client create/delete table sync |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13209](https://issues.apache.org/jira/browse/HBASE-13209) | Procedure V2 - master Add/Modify/Delete Column Family |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13210](https://issues.apache.org/jira/browse/HBASE-13210) | Procedure V2 - master Modify table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13211](https://issues.apache.org/jira/browse/HBASE-13211) | Procedure V2 - master Enable/Disable table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13290](https://issues.apache.org/jira/browse/HBASE-13290) | Procedure v2 - client enable/disable table sync |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13455](https://issues.apache.org/jira/browse/HBASE-13455) | Procedure V2 - master truncate table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | Making methods under ScannerV2#next inlineable, faster |  Major | Scanners | stack | stack |
| [HBASE-13481](https://issues.apache.org/jira/browse/HBASE-13481) | Master should respect master (old) DNS/bind related configurations |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13498](https://issues.apache.org/jira/browse/HBASE-13498) | Add more docs and a basic check for storage policy handling |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-13514](https://issues.apache.org/jira/browse/HBASE-13514) | Fix test failures in TestScannerHeartbeatMessages caused by incorrect setting of hbase.rpc.timeout |  Minor | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13515](https://issues.apache.org/jira/browse/HBASE-13515) | Handle FileNotFoundException in region replica replay for flush/compaction events |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13502](https://issues.apache.org/jira/browse/HBASE-13502) | Deprecate/remove getRowComparator() in TableName |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13496](https://issues.apache.org/jira/browse/HBASE-13496) | Make Bytes$LexicographicalComparerHolder$UnsafeComparer::compareTo inlineable |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13529](https://issues.apache.org/jira/browse/HBASE-13529) | Procedure v2 - WAL Improvements |  Blocker | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13450](https://issues.apache.org/jira/browse/HBASE-13450) | Purge RawBytescomparator from the writers and readers for HBASE-10800 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13536](https://issues.apache.org/jira/browse/HBASE-13536) | Cleanup the handlers that are no longer being used. |  Major | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13466](https://issues.apache.org/jira/browse/HBASE-13466) | Document deprecations in 1.x - Part 1 |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13563](https://issues.apache.org/jira/browse/HBASE-13563) | Add missing table owner to AC tests. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13551](https://issues.apache.org/jira/browse/HBASE-13551) | Procedure V2 - Procedure classes should not be InterfaceAudience.Public |  Blocker | master | Enis Soztutar | Enis Soztutar |
| [HBASE-13572](https://issues.apache.org/jira/browse/HBASE-13572) | Procedure v2 - client truncate table sync (incompatible with branch-1.x) |  Minor | proc-v2 | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-13537](https://issues.apache.org/jira/browse/HBASE-13537) | Procedure V2 - Change the admin interface for async operations to return Future (incompatible with branch-1.x) |  Major | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13184](https://issues.apache.org/jira/browse/HBASE-13184) | Document turning off memstore for region replicas |  Critical | documentation, Replication | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13501](https://issues.apache.org/jira/browse/HBASE-13501) | Deprecate/Remove getComparator() in HRegionInfo. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13464](https://issues.apache.org/jira/browse/HBASE-13464) | Remove deprecations for 2.0.0 - Part 1 |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13620](https://issues.apache.org/jira/browse/HBASE-13620) | Bring back the removed VisibilityClient methods and mark them as deprecated. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13593](https://issues.apache.org/jira/browse/HBASE-13593) | Quota support for namespace should take snapshot restore and clone into account |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-13571](https://issues.apache.org/jira/browse/HBASE-13571) | Procedure v2 - client modify table sync (incompatible with branch-1.x) |  Minor | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13201](https://issues.apache.org/jira/browse/HBASE-13201) | Remove HTablePool from thrift-server |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13398](https://issues.apache.org/jira/browse/HBASE-13398) | Document HBase Quota |  Major | documentation | Ashish Singhi | Gururaj Shetty |
| [HBASE-13510](https://issues.apache.org/jira/browse/HBASE-13510) | Purge ByteBloomFilter |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13679](https://issues.apache.org/jira/browse/HBASE-13679) | Change ColumnTracker and SQM to deal with Cell instead of byte[], int, int |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13642](https://issues.apache.org/jira/browse/HBASE-13642) | Deprecate RegionObserver#postScannerFilterRow CP hook with byte[],int,int args in favor of taking Cell arg |  Major | Coprocessors, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13641](https://issues.apache.org/jira/browse/HBASE-13641) | Deperecate Filter#filterRowKey(byte[] buffer, int offset, int length) in favor of filterRowKey(Cell firstRowCell) |  Major | Filters, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13658](https://issues.apache.org/jira/browse/HBASE-13658) | Improve the test run time for TestAccessController class |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-13393](https://issues.apache.org/jira/browse/HBASE-13393) | Optimize memstore flushing to avoid writing tag information to hfiles when no tags are present. |  Major | HFile, Performance | stack | ramkrishna.s.vasudevan |
| [HBASE-13754](https://issues.apache.org/jira/browse/HBASE-13754) | Allow non KeyValue Cell types also to oswrite |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13476](https://issues.apache.org/jira/browse/HBASE-13476) | Procedure V2 - Add Replay Order logic for child procedures |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13616](https://issues.apache.org/jira/browse/HBASE-13616) | Move ServerShutdownHandler to Pv2 |  Major | proc-v2 | stack | stack |
| [HBASE-13759](https://issues.apache.org/jira/browse/HBASE-13759) | Improve procedure yielding |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13817](https://issues.apache.org/jira/browse/HBASE-13817) | ByteBufferOuputStream - add writeInt support |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13827](https://issues.apache.org/jira/browse/HBASE-13827) | Delayed scanner close in KeyValueHeap and StoreScanner |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13451](https://issues.apache.org/jira/browse/HBASE-13451) | Make the HFileBlockIndex blockKeys to Cells so that it could be easy to use in the CellComparators |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13871](https://issues.apache.org/jira/browse/HBASE-13871) | Change RegionScannerImpl to deal with Cell instead of byte[], int, int |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13569](https://issues.apache.org/jira/browse/HBASE-13569) | correct errors reported with mvn site |  Minor | documentation | Gabor Liptak | Gabor Liptak |
| [HBASE-13899](https://issues.apache.org/jira/browse/HBASE-13899) | Jacoco instrumentation fails under jdk8 |  Major | build, test | Sean Busbey | Duo Zhang |
| [HBASE-13910](https://issues.apache.org/jira/browse/HBASE-13910) | add branch-1.2 to precommit branches |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |
| [HBASE-13916](https://issues.apache.org/jira/browse/HBASE-13916) | Create MultiByteBuffer an aggregation of ByteBuffers |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13926](https://issues.apache.org/jira/browse/HBASE-13926) | Close the scanner only after Call#setResponse |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13448](https://issues.apache.org/jira/browse/HBASE-13448) | New Cell implementation with cached component offsets/lengths |  Blocker | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13728](https://issues.apache.org/jira/browse/HBASE-13728) | Remove use of Hadoop's GenericOptionsParser |  Blocker | . | Sean Busbey | Sean Busbey |
| [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | correct additional javadoc failures under java 8 |  Minor | documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13920](https://issues.apache.org/jira/browse/HBASE-13920) | Exclude Java files generated from protobuf from javadoc |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13950](https://issues.apache.org/jira/browse/HBASE-13950) | Add a NoopProcedureStore for testing |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13967](https://issues.apache.org/jira/browse/HBASE-13967) | add jdk profiles for jdk.tools dependency |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13973](https://issues.apache.org/jira/browse/HBASE-13973) | Update documentation for 10070 Phase 2 changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13968](https://issues.apache.org/jira/browse/HBASE-13968) | Remove deprecated methods from BufferedMutator class |  Major | API | Ashish Singhi | Ashish Singhi |
| [HBASE-12345](https://issues.apache.org/jira/browse/HBASE-12345) | Unsafe based ByteBuffer Comparator |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13614](https://issues.apache.org/jira/browse/HBASE-13614) | Avoid temp KeyOnlyKeyValue temp objects creations in read hot path |  Critical | . | Anoop Sam John | ramkrishna.s.vasudevan |
| [HBASE-13939](https://issues.apache.org/jira/browse/HBASE-13939) | Make HFileReaderImpl.getFirstKeyInBlock() to return a Cell |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14003](https://issues.apache.org/jira/browse/HBASE-14003) | work around jdk8 spec bug in WALPerfEval |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-13990](https://issues.apache.org/jira/browse/HBASE-13990) | clean up remaining errors for maven site goal |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13911](https://issues.apache.org/jira/browse/HBASE-13911) | add 1.2 to prereq tables in ref guide |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13975](https://issues.apache.org/jira/browse/HBASE-13975) | add 1.2 RM to docs |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14013](https://issues.apache.org/jira/browse/HBASE-14013) | Retry when RegionServerNotYetRunningException rather than go ahead with assign so for sure we don't skip WAL replay |  Major | Region Assignment | stack | Enis Soztutar |
| [HBASE-13977](https://issues.apache.org/jira/browse/HBASE-13977) | Convert getKey and related APIs to Cell |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13998](https://issues.apache.org/jira/browse/HBASE-13998) | Remove CellComparator#compareRows(byte[] left, int loffset, int llength, byte[] right, int roffset, int rlength) |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-14020](https://issues.apache.org/jira/browse/HBASE-14020) | Unsafe based optimized write in ByteBufferOutputStream |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14017](https://issues.apache.org/jira/browse/HBASE-14017) | Procedure v2 - MasterProcedureQueue fix concurrency issue on table queue deletion |  Blocker | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13415](https://issues.apache.org/jira/browse/HBASE-13415) | Procedure V2 - Use nonces for double submits from client |  Blocker | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-13832](https://issues.apache.org/jira/browse/HBASE-13832) | Procedure V2: master fail to start due to WALProcedureStore sync failures when HDFS data nodes count is low |  Blocker | master, proc-v2 | Stephen Yuan Jiang | Matteo Bertozzi |
| [HBASE-13387](https://issues.apache.org/jira/browse/HBASE-13387) | Add ByteBufferedCell an extension to Cell |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13993](https://issues.apache.org/jira/browse/HBASE-13993) | WALProcedureStore fencing is not effective if new WAL rolls |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-14102](https://issues.apache.org/jira/browse/HBASE-14102) | Add thank you to our thanks page for vectorportal.com |  Major | . | stack | stack |
| [HBASE-14104](https://issues.apache.org/jira/browse/HBASE-14104) | Add vectorportal.com to NOTICES.txt as src of our logo |  Major | documentation | stack | stack |
| [HBASE-14120](https://issues.apache.org/jira/browse/HBASE-14120) | ByteBufferUtils#compareTo small optimization |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-12374](https://issues.apache.org/jira/browse/HBASE-12374) | Change DBEs to work with new BB based cell |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-14116](https://issues.apache.org/jira/browse/HBASE-14116) | Change ByteBuff.getXXXStrictlyForward to relative position based reads |  Major | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-12295](https://issues.apache.org/jira/browse/HBASE-12295) | Prevent block eviction under us if reads are in progress from the BBs |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14063](https://issues.apache.org/jira/browse/HBASE-14063) | Use BufferBackedCell in read path after HBASE-12213 and HBASE-12295 |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14086](https://issues.apache.org/jira/browse/HBASE-14086) | remove unused bundled dependencies |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14176](https://issues.apache.org/jira/browse/HBASE-14176) | Add missing headers to META-INF files |  Trivial | build | Andrew Purtell | Andrew Purtell |
| [HBASE-14188](https://issues.apache.org/jira/browse/HBASE-14188) | Read path optimizations after HBASE-11425 profiling |  Major | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14105](https://issues.apache.org/jira/browse/HBASE-14105) | Add shell tests for Snapshot |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-14202](https://issues.apache.org/jira/browse/HBASE-14202) | Reduce garbage we create |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14087](https://issues.apache.org/jira/browse/HBASE-14087) | ensure correct ASF policy compliant headers on source/docs |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14144](https://issues.apache.org/jira/browse/HBASE-14144) | Bloomfilter path to work with Byte buffered cells |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14186](https://issues.apache.org/jira/browse/HBASE-14186) | Read mvcc vlong optimization |  Major | Performance, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14274](https://issues.apache.org/jira/browse/HBASE-14274) | Deadlock in region metrics on shutdown: MetricsRegionSourceImpl vs MetricsRegionAggregateSourceImpl |  Major | test | stack | Elliott Clark |
| [HBASE-14239](https://issues.apache.org/jira/browse/HBASE-14239) | Branch-1.2 AM can get stuck when meta moves |  Major | Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-13212](https://issues.apache.org/jira/browse/HBASE-13212) | Procedure V2 - master Create/Modify/Delete namespace |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14322](https://issues.apache.org/jira/browse/HBASE-14322) | Master still not using more than it's priority threads |  Major | IPC/RPC, master | Elliott Clark | Elliott Clark |
| [HBASE-14368](https://issues.apache.org/jira/browse/HBASE-14368) | New TestWALLockup broken by addendum added to parent issue |  Major | test | stack | stack |
| [HBASE-14395](https://issues.apache.org/jira/browse/HBASE-14395) | Short circuit last byte check in CellUtil#matchingXXX methods for ByteBufferedCells |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14423](https://issues.apache.org/jira/browse/HBASE-14423) | TestStochasticBalancerJmxMetrics.testJmxMetrics\_PerTableMode:183 NullPointer |  Major | test | stack | stack |
| [HBASE-14421](https://issues.apache.org/jira/browse/HBASE-14421) | TestFastFail\* are flakey |  Major | test | stack | stack |
| [HBASE-14428](https://issues.apache.org/jira/browse/HBASE-14428) | Upgrade our surefire-plugin from 2.18 to 2.18.1 |  Major | test | stack | stack |
| [HBASE-14435](https://issues.apache.org/jira/browse/HBASE-14435) | thrift tests don't have test-specific hbase-site.xml so 'BindException: Address already in use' because info port is not turned off |  Major | test | stack | stack |
| [HBASE-14401](https://issues.apache.org/jira/browse/HBASE-14401) | Stamp failed appends with sequenceid too.... Cleans up latches |  Major | test, wal | stack | stack |
| [HBASE-14433](https://issues.apache.org/jira/browse/HBASE-14433) | Set down the client executor core thread count from 256 in tests |  Major | test | stack | stack |
| [HBASE-14278](https://issues.apache.org/jira/browse/HBASE-14278) | Fix NPE that is showing up since HBASE-14274 went in |  Major | test | stack | Elliott Clark |
| [HBASE-14447](https://issues.apache.org/jira/browse/HBASE-14447) | Spark tests failing: bind exception when putting up info server |  Minor | test | stack | stack |
| [HBASE-14446](https://issues.apache.org/jira/browse/HBASE-14446) | Save table descriptors and region infos during incremental backup |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14147](https://issues.apache.org/jira/browse/HBASE-14147) | REST Support for Namespaces |  Minor | REST | Rick Kellogg | Matt Warhaftig |
| [HBASE-14472](https://issues.apache.org/jira/browse/HBASE-14472) | TestHCM and TestRegionServerNoMaster fixes |  Minor | test | stack | stack |
| [HBASE-14464](https://issues.apache.org/jira/browse/HBASE-14464) | Removed unused fs code |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14484](https://issues.apache.org/jira/browse/HBASE-14484) | Follow-on from HBASE-14421, just disable TestFastFail\* until someone digs in and fixes it |  Major | test | stack | stack |
| [HBASE-14378](https://issues.apache.org/jira/browse/HBASE-14378) | Get TestAccessController\* passing again on branch-1 |  Major | . | stack | stack |
| [HBASE-12748](https://issues.apache.org/jira/browse/HBASE-12748) | RegionCoprocessorHost.execOperation creates too many iterator objects |  Major | . | Vladimir Rodionov | Andrew Purtell |
| [HBASE-14051](https://issues.apache.org/jira/browse/HBASE-14051) | Undo workarounds in IntegrationTestDDLMasterFailover for client double submit |  Major | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-14212](https://issues.apache.org/jira/browse/HBASE-14212) | Add IT test for procedure-v2-based namespace DDL |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14483](https://issues.apache.org/jira/browse/HBASE-14483) | Add max -per-cell TTL to HFile meta section |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14430](https://issues.apache.org/jira/browse/HBASE-14430) | TestHttpServerLifecycle#testStartedServerIsAlive times out |  Major | test | stack | stack |
| [HBASE-14398](https://issues.apache.org/jira/browse/HBASE-14398) | Create the fake keys required in the scan path to avoid copy to byte[] |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14507](https://issues.apache.org/jira/browse/HBASE-14507) | Disable TestDistributedLogSplitting#testWorkerAbort Its flakey with tenuous chance of success |  Major | test | stack | stack |
| [HBASE-14495](https://issues.apache.org/jira/browse/HBASE-14495) | TestHRegion#testFlushCacheWhileScanning goes zombie |  Major | test | stack | stack |
| [HBASE-14513](https://issues.apache.org/jira/browse/HBASE-14513) | TestBucketCache runs obnoxious 1k threads in a unit test |  Major | test | stack | stack |
| [HBASE-14543](https://issues.apache.org/jira/browse/HBASE-14543) | Have findHangingTests.py dump more info |  Major | tooling | stack | stack |
| [HBASE-14539](https://issues.apache.org/jira/browse/HBASE-14539) | Slight improvement of StoreScanner.optimize |  Minor | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14480](https://issues.apache.org/jira/browse/HBASE-14480) | Small optimization in SingleByteBuff |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14559](https://issues.apache.org/jira/browse/HBASE-14559) | branch-1 test tweeks; disable assert explicit region lands post-restart and up a few handlers |  Major | test | stack | stack |
| [HBASE-14561](https://issues.apache.org/jira/browse/HBASE-14561) | Disable zombie TestReplicationShell |  Major | test | stack | stack |
| [HBASE-14563](https://issues.apache.org/jira/browse/HBASE-14563) | Disable zombie TestHFileOutputFormat2 |  Major | test | stack | stack |
| [HBASE-14519](https://issues.apache.org/jira/browse/HBASE-14519) | Purge TestFavoredNodeAssignmentHelper, a test for an abandoned feature that can hang |  Major | test | stack | stack |
| [HBASE-14571](https://issues.apache.org/jira/browse/HBASE-14571) | Purge TestProcessBasedCluster; it does nothing and then fails |  Major | test | stack | stack |
| [HBASE-14572](https://issues.apache.org/jira/browse/HBASE-14572) | TestImportExport#testImport94Table can't find its src data file |  Major | test | stack | stack |
| [HBASE-14567](https://issues.apache.org/jira/browse/HBASE-14567) | Tuneup hanging test TestMobCompactor and TestMobSweeper |  Major | test | stack | Jingcheng Du |
| [HBASE-14585](https://issues.apache.org/jira/browse/HBASE-14585) | Clean up TestSnapshotCloneIndependence |  Major | flakey, test | Elliott Clark | Elliott Clark |
| [HBASE-14590](https://issues.apache.org/jira/browse/HBASE-14590) | Shorten ByteBufferedCell#getXXXPositionInByteBuffer method name |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14558](https://issues.apache.org/jira/browse/HBASE-14558) | Document ChaosMonkey enhancements from HBASE-14261 |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13819](https://issues.apache.org/jira/browse/HBASE-13819) | Make RPC layer CellBlock buffer a DirectByteBuffer |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14600](https://issues.apache.org/jira/browse/HBASE-14600) | Make #testWalRollOnLowReplication looser still |  Major | test | stack | stack |
| [HBASE-14596](https://issues.apache.org/jira/browse/HBASE-14596) | TestCellACLs failing... on1.2 builds |  Major | test | stack | stack |
| [HBASE-14602](https://issues.apache.org/jira/browse/HBASE-14602) | Convert HBasePoweredBy Wiki page to a hbase.apache.org page |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14570](https://issues.apache.org/jira/browse/HBASE-14570) | Split TestHBaseFsck in order to help with hanging tests |  Major | test | stack | Elliott Clark |
| [HBASE-14607](https://issues.apache.org/jira/browse/HBASE-14607) | Convert SupportingProjects wiki page to a site page |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14622](https://issues.apache.org/jira/browse/HBASE-14622) | Purge TestZkLess\* tests from branch-1 |  Major | test | stack | stack |
| [HBASE-14627](https://issues.apache.org/jira/browse/HBASE-14627) | Move Stargate docs to Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14637](https://issues.apache.org/jira/browse/HBASE-14637) | Loosen TestChoreService assert AND have TestDataBlockEncoders do less work (and add timeouts) |  Major | test | stack | stack |
| [HBASE-14647](https://issues.apache.org/jira/browse/HBASE-14647) | Disable TestWALProcedureStoreOnHDFS#testWalRollOnLowReplication |  Major | test | stack | stack |
| [HBASE-14646](https://issues.apache.org/jira/browse/HBASE-14646) | Move TestCellACLs from medium to large category |  Minor | test | stack | stack |
| [HBASE-14595](https://issues.apache.org/jira/browse/HBASE-14595) | For Wiki contents that are also in the Ref Guide, replace content with a URL |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14636](https://issues.apache.org/jira/browse/HBASE-14636) | Clear HFileScannerImpl#prevBlocks in between Compaction flow |  Blocker | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14656](https://issues.apache.org/jira/browse/HBASE-14656) | Move TestAssignmentManager from medium to large category |  Major | test | stack | stack |
| [HBASE-14662](https://issues.apache.org/jira/browse/HBASE-14662) | Fix NPE in HFileOutputFormat2 |  Major | . | Heng Chen | Heng Chen |
| [HBASE-13538](https://issues.apache.org/jira/browse/HBASE-13538) | Procedure v2 - client add/delete/modify column family sync (incompatible with branch-1.x) |  Major | proc-v2 | Srikanth Srungarapu | Ashish Singhi |
| [HBASE-14657](https://issues.apache.org/jira/browse/HBASE-14657) | Remove unneeded API from EncodedSeeker |  Major | io | Lars Hofhansl | Heng Chen |
| [HBASE-14535](https://issues.apache.org/jira/browse/HBASE-14535) | Integration test for rpc connection concurrency / deadlock testing |  Major | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-14685](https://issues.apache.org/jira/browse/HBASE-14685) | Procedure Id is not set for  MasterRpcServices#modifyTable |  Major | master, proc-v2 | Ashish Singhi | Ashish Singhi |
| [HBASE-14648](https://issues.apache.org/jira/browse/HBASE-14648) | Reenable TestWALProcedureStoreOnHDFS#testWalRollOnLowReplication |  Critical | test | stack | Heng Chen |
| [HBASE-14698](https://issues.apache.org/jira/browse/HBASE-14698) | Set category timeouts on TestScanner and TestNamespaceAuditor |  Major | test | stack | stack |
| [HBASE-14702](https://issues.apache.org/jira/browse/HBASE-14702) | TestZKProcedureControllers.testZKCoordinatorControllerWithSingleMemberCohort is a flakey |  Major | flakey, test | stack | stack |
| [HBASE-14709](https://issues.apache.org/jira/browse/HBASE-14709) | Parent change breaks graceful\_stop.sh on a cluster |  Major | Operability | stack | stack |
| [HBASE-14710](https://issues.apache.org/jira/browse/HBASE-14710) | Add category-based timeouts to MR tests |  Major | hangingTests, mapreduce, test | stack | stack |
| [HBASE-14720](https://issues.apache.org/jira/browse/HBASE-14720) | Make TestHCM and TestMetaWithReplicas large tests rather than mediums |  Major | hangingTests, test | stack | stack |
| [HBASE-14640](https://issues.apache.org/jira/browse/HBASE-14640) | Move Cascading info from Wiki to Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14641](https://issues.apache.org/jira/browse/HBASE-14641) | Move JDO example from Wiki to Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13478](https://issues.apache.org/jira/browse/HBASE-13478) | Document the change of default master ports being used . |  Minor | documentation | Srikanth Srungarapu | Misty Stanley-Jones |
| [HBASE-14639](https://issues.apache.org/jira/browse/HBASE-14639) | Move Scala info from Wiki to Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14638](https://issues.apache.org/jira/browse/HBASE-14638) | Move Jython info from the Wiki to the Ref Guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14725](https://issues.apache.org/jira/browse/HBASE-14725) | Vet categorization of tests so they for sure go into the right small/medium/large buckets |  Major | test | stack | stack |
| [HBASE-14589](https://issues.apache.org/jira/browse/HBASE-14589) | Looking for the surefire-killer; builds being killed...ExecutionException: java.lang.RuntimeException: The forked VM terminated without properly saying goodbye. VM crash or System.exit called? |  Major | test | stack | stack |
| [HBASE-14786](https://issues.apache.org/jira/browse/HBASE-14786) | TestProcedureAdmin hangs |  Major | hangingTests, test | stack | Matteo Bertozzi |
| [HBASE-14785](https://issues.apache.org/jira/browse/HBASE-14785) | Hamburger menu for mobile site |  Major | website | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14794](https://issues.apache.org/jira/browse/HBASE-14794) | Cleanup TestAtomicOperation, TestImportExport, and TestMetaWithReplicas |  Major | flakey, test | stack | stack |
| [HBASE-14798](https://issues.apache.org/jira/browse/HBASE-14798) | NPE reporting server load causes regionserver abort; causes TestAcidGuarantee to fail |  Major | test | stack | stack |
| [HBASE-14832](https://issues.apache.org/jira/browse/HBASE-14832) | Ensure write paths work with ByteBufferedCells in case of compaction |  Minor | regionserver, Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14819](https://issues.apache.org/jira/browse/HBASE-14819) | hbase-it tests failing with OOME; permgen |  Major | test | stack | stack |
| [HBASE-14575](https://issues.apache.org/jira/browse/HBASE-14575) | Relax region read lock for compactions |  Major | Compaction, regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14909](https://issues.apache.org/jira/browse/HBASE-14909) | NPE testing for RIT |  Major | test | stack | stack |
| [HBASE-14884](https://issues.apache.org/jira/browse/HBASE-14884) | TestSplitTransactionOnCluster.testSSHCleanupDaugtherRegionsOfAbortedSplit is flakey |  Major | flakey, test | stack | Heng Chen |
| [HBASE-14772](https://issues.apache.org/jira/browse/HBASE-14772) | Improve zombie detector; be more discerning |  Major | test | stack | stack |
| [HBASE-14605](https://issues.apache.org/jira/browse/HBASE-14605) | Split fails due to 'No valid credentials' error when SecureBulkLoadEndpoint#start tries to access hdfs |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14631](https://issues.apache.org/jira/browse/HBASE-14631) | Region merge request should be audited with request user through proper scope of doAs() calls to region observer notifications |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14655](https://issues.apache.org/jira/browse/HBASE-14655) | Narrow the scope of doAs() calls to region observer notifications for compaction |  Blocker | Coprocessors, security | Ted Yu | Ted Yu |
| [HBASE-14895](https://issues.apache.org/jira/browse/HBASE-14895) | Seek only to the newly flushed file on scanner reset on flush |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14947](https://issues.apache.org/jira/browse/HBASE-14947) | Procedure V2 - WALProcedureStore improvements |  Blocker | proc-v2 | Ashu Pachauri | Matteo Bertozzi |
| [HBASE-14863](https://issues.apache.org/jira/browse/HBASE-14863) | Add missing test/resources/log4j files in hbase modules |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14908](https://issues.apache.org/jira/browse/HBASE-14908) | TestRowCounter flakey especially on branch-1 |  Major | flakey, test | stack | stack |
| [HBASE-14915](https://issues.apache.org/jira/browse/HBASE-14915) | Hanging test : org.apache.hadoop.hbase.mapreduce.TestImportExport |  Major | hangingTests | stack | Heng Chen |
| [HBASE-15023](https://issues.apache.org/jira/browse/HBASE-15023) | Reenable TestShell and TestStochasticLoadBalancer |  Major | test | stack | stack |
| [HBASE-14107](https://issues.apache.org/jira/browse/HBASE-14107) | Procedure V2 - Administrative Task: Provide an API to List all procedures |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14432](https://issues.apache.org/jira/browse/HBASE-14432) | Procedure V2 - enforce ACL on procedure admin tasks |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14108](https://issues.apache.org/jira/browse/HBASE-14108) | Procedure V2 - Administrative Task: provide an API to abort a procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14487](https://issues.apache.org/jira/browse/HBASE-14487) | Procedure V2 - shell command to list all procedures |  Major | proc-v2, shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14488](https://issues.apache.org/jira/browse/HBASE-14488) | Procedure V2 - shell command to abort a procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12593](https://issues.apache.org/jira/browse/HBASE-12593) | Tags to work with ByteBuffer |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-15077](https://issues.apache.org/jira/browse/HBASE-15077) | Support OffheapKV write in compaction with out copying data on heap |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-15087](https://issues.apache.org/jira/browse/HBASE-15087) | Fix hbase-common findbugs complaints |  Major | build | stack | Stack |
| [HBASE-14837](https://issues.apache.org/jira/browse/HBASE-14837) | Procedure V2 - Procedure Queue Improvement |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15105](https://issues.apache.org/jira/browse/HBASE-15105) | Procedure V2 - Procedure Queue with Namespaces |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15114](https://issues.apache.org/jira/browse/HBASE-15114) | NPE when IPC server ByteBuffer reservoir is turned off |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14962](https://issues.apache.org/jira/browse/HBASE-14962) | TestSplitWalDataLoss fails on all branches |  Blocker | test | Elliott Clark | stack |
| [HBASE-15115](https://issues.apache.org/jira/browse/HBASE-15115) | Fix findbugs complaints in hbase-client |  Major | build | stack | stack |
| [HBASE-15118](https://issues.apache.org/jira/browse/HBASE-15118) | Fix findbugs complaint in hbase-server |  Major | build | stack | stack |
| [HBASE-14221](https://issues.apache.org/jira/browse/HBASE-14221) | Reduce the number of time row comparison is done in a Scan |  Major | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15106](https://issues.apache.org/jira/browse/HBASE-15106) | Procedure V2 - Procedure Queue pass Procedure for better debuggability |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15171](https://issues.apache.org/jira/browse/HBASE-15171) | Avoid counting duplicate kv and generating lots of small hfiles in PutSortReducer |  Major | . | Yu Li | Yu Li |
| [HBASE-15142](https://issues.apache.org/jira/browse/HBASE-15142) | Procedure v2 - Basic WebUI listing the procedures |  Minor | proc-v2, UI | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14841](https://issues.apache.org/jira/browse/HBASE-14841) | Allow Dictionary to work with BytebufferedCells |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15194](https://issues.apache.org/jira/browse/HBASE-15194) | TestStochasticLoadBalancer.testRegionReplicationOnMidClusterSameHosts flaky on trunk |  Major | flakey, test | stack | stack |
| [HBASE-15202](https://issues.apache.org/jira/browse/HBASE-15202) | Reduce garbage while setting response |  Minor | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15210](https://issues.apache.org/jira/browse/HBASE-15210) | Undo aggressive load balancer logging at tens of lines per millisecond |  Major | Balancer | stack | stack |
| [HBASE-15094](https://issues.apache.org/jira/browse/HBASE-15094) | Selection of WAL files eligible for incremental backup is broken |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15157](https://issues.apache.org/jira/browse/HBASE-15157) | Add \*PerformanceTest for Append, CheckAnd\* |  Major | Performance, test | stack | stack |
| [HBASE-15163](https://issues.apache.org/jira/browse/HBASE-15163) | Add sampling code and metrics for get/scan/multi/mutate count separately |  Major | . | Yu Li | Yu Li |
| [HBASE-15158](https://issues.apache.org/jira/browse/HBASE-15158) | Change order in which we do write pipeline operations; do all under row locks! |  Major | Performance | stack | stack |
| [HBASE-15046](https://issues.apache.org/jira/browse/HBASE-15046) | Perf test doing all mutation steps under row lock |  Major | Performance | stack | stack |
| [HBASE-15238](https://issues.apache.org/jira/browse/HBASE-15238) | HFileReaderV2 prefetch overreaches; runs off the end of the data |  Major | . | stack | stack |
| [HBASE-15239](https://issues.apache.org/jira/browse/HBASE-15239) | Remove unused LoadBalancer.immediateAssignment() |  Trivial | Balancer | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15204](https://issues.apache.org/jira/browse/HBASE-15204) | Try to estimate the cell count for adding into WALEdit |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14919](https://issues.apache.org/jira/browse/HBASE-14919) | Infrastructure refactoring for In-Memory Flush |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-15203](https://issues.apache.org/jira/browse/HBASE-15203) | Reduce garbage created by path.toString() during Checksum verification |  Minor | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15244](https://issues.apache.org/jira/browse/HBASE-15244) | More doc around native lib setup and check and crc |  Major | documentation, Performance | stack | stack |
| [HBASE-15263](https://issues.apache.org/jira/browse/HBASE-15263) | TestIPv6NIOServerSocketChannel.testServerSocketFromLocalhostResolution can hang indefinetly |  Major | . | stack | Heng Chen |
| [HBASE-15270](https://issues.apache.org/jira/browse/HBASE-15270) | Use appropriate encoding for "filter" field in TaskMonitorTmpl.jamon |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-14949](https://issues.apache.org/jira/browse/HBASE-14949) | Resolve name conflict when splitting if there are duplicated WAL entries |  Major | wal | Heng Chen | Duo Zhang |
| [HBASE-15232](https://issues.apache.org/jira/browse/HBASE-15232) | Exceptions returned over multi RPC don't automatically trigger region location reloads |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-15016](https://issues.apache.org/jira/browse/HBASE-15016) | StoreServices facility in Region |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-15264](https://issues.apache.org/jira/browse/HBASE-15264) | Implement a fan out HDFS OutputStream |  Major | util, wal | Duo Zhang | Duo Zhang |
| [HBASE-15144](https://issues.apache.org/jira/browse/HBASE-15144) | Procedure v2 - Web UI displaying Store state |  Minor | proc-v2, UI | Matteo Bertozzi | Samir Ahmic |
| [HBASE-15311](https://issues.apache.org/jira/browse/HBASE-15311) | Prevent NPE in BlockCacheViewTmpl |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15205](https://issues.apache.org/jira/browse/HBASE-15205) | Do not find the replication scope for every WAL#append() |  Minor | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15351](https://issues.apache.org/jira/browse/HBASE-15351) | Fix description of hbase.bucketcache.size in hbase-default.xml |  Major | documentation | stack | stack |
| [HBASE-15346](https://issues.apache.org/jira/browse/HBASE-15346) | add 1.3 RM to docs |  Major | documentation | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15365](https://issues.apache.org/jira/browse/HBASE-15365) | Do not write to '/tmp' in TestHBaseConfiguration |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-15371](https://issues.apache.org/jira/browse/HBASE-15371) | Procedure V2 - Completed support parent-child procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15359](https://issues.apache.org/jira/browse/HBASE-15359) | Simplifying Segment hierarchy |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-15375](https://issues.apache.org/jira/browse/HBASE-15375) | Do not write to '/tmp' in TestRegionMover |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-15373](https://issues.apache.org/jira/browse/HBASE-15373) | DEPRECATED\_NAME\_OF\_NO\_LIMIT\_THROUGHPUT\_CONTROLLER\_CLASS value is wrong in CompactionThroughputControllerFactory |  Minor | Compaction | stack | stack |
| [HBASE-15354](https://issues.apache.org/jira/browse/HBASE-15354) | Use same criteria for clearing meta cache for all operations |  Major | Client | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15421](https://issues.apache.org/jira/browse/HBASE-15421) | Convert TestStoreScanner to junit4 from junit3 and clean up close of scanners |  Minor | test | stack | stack |
| [HBASE-15422](https://issues.apache.org/jira/browse/HBASE-15422) | Procedure v2 - Avoid double yield |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15113](https://issues.apache.org/jira/browse/HBASE-15113) | Procedure v2 - Speedup eviction of sys operation results |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15435](https://issues.apache.org/jira/browse/HBASE-15435) | Add WAL (in bytes) written metric |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15180](https://issues.apache.org/jira/browse/HBASE-15180) | Reduce garbage created while reading Cells from Codec Decoder |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-15390](https://issues.apache.org/jira/browse/HBASE-15390) | Unnecessary MetaCache evictions cause elevated number of requests to meta |  Blocker | Client | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15334](https://issues.apache.org/jira/browse/HBASE-15334) | Add avro support for spark hbase connector |  Major | . | Zhan Zhang | Zhan Zhang |
| [HBASE-15479](https://issues.apache.org/jira/browse/HBASE-15479) | No more garbage or beware of autoboxing |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15460](https://issues.apache.org/jira/browse/HBASE-15460) | Fix infer issues in hbase-common |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15464](https://issues.apache.org/jira/browse/HBASE-15464) | Flush / Compaction metrics revisited |  Major | metrics | Enis Soztutar | Enis Soztutar |
| [HBASE-15488](https://issues.apache.org/jira/browse/HBASE-15488) | Add ACL for setting split merge switch |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15412](https://issues.apache.org/jira/browse/HBASE-15412) | Add average region size metric |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15416](https://issues.apache.org/jira/browse/HBASE-15416) | TestHFileBackedByBucketCache is flakey since it went in |  Critical | BucketCache | stack | stack |
| [HBASE-15495](https://issues.apache.org/jira/browse/HBASE-15495) | Connection leak in FanOutOneBlockAsyncDFSOutputHelper |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-15384](https://issues.apache.org/jira/browse/HBASE-15384) | Avoid using '/tmp' directory in TestBulkLoad |  Major | test | Heng Chen | Heng Chen |
| [HBASE-15389](https://issues.apache.org/jira/browse/HBASE-15389) | Write out multiple files when compaction |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-11393](https://issues.apache.org/jira/browse/HBASE-11393) | Replication TableCfs should be a PB object rather than a string |  Major | Replication | Enis Soztutar | Heng Chen |
| [HBASE-15538](https://issues.apache.org/jira/browse/HBASE-15538) | Implement secure async protobuf wal writer |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-15293](https://issues.apache.org/jira/browse/HBASE-15293) | Handle TableNotFound and IllegalArgument exceptions in table.jsp |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15505](https://issues.apache.org/jira/browse/HBASE-15505) | ReplicationPeerConfig should be builder-style |  Major | . | Enis Soztutar | Gabor Liptak |
| [HBASE-15369](https://issues.apache.org/jira/browse/HBASE-15369) | Handle NPE in region.jsp |  Minor | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15400](https://issues.apache.org/jira/browse/HBASE-15400) | Use DateTieredCompactor for Date Tiered Compaction |  Major | Compaction | Clara Xiong | Clara Xiong |
| [HBASE-15537](https://issues.apache.org/jira/browse/HBASE-15537) | Make multi WAL work with WALs other than FSHLog |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-15380](https://issues.apache.org/jira/browse/HBASE-15380) | Purge rollback support in Store etc. |  Major | . | stack | stack |
| [HBASE-15407](https://issues.apache.org/jira/browse/HBASE-15407) | Add SASL support for fan out OutputStream |  Major | util, wal | Duo Zhang | Duo Zhang |
| [HBASE-15527](https://issues.apache.org/jira/browse/HBASE-15527) | Refactor Compactor related classes |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15665](https://issues.apache.org/jira/browse/HBASE-15665) | Support using different StoreFileComparators for different CompactionPolicies |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored |  Major | BucketCache | stack | stack |
| [HBASE-15640](https://issues.apache.org/jira/browse/HBASE-15640) | L1 cache doesn't give fair warning that it is showing partial stats only when it hits limit |  Major | BlockCache | stack | stack |
| [HBASE-15518](https://issues.apache.org/jira/browse/HBASE-15518) | Add Per-Table metrics back |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15662](https://issues.apache.org/jira/browse/HBASE-15662) | Hook up JvmPauseMonitor to REST server |  Major | metrics, REST | Andrew Purtell | Andrew Purtell |
| [HBASE-15663](https://issues.apache.org/jira/browse/HBASE-15663) | Hook up JvmPauseMonitor to ThriftServer |  Major | metrics, Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-15368](https://issues.apache.org/jira/browse/HBASE-15368) | Add pluggable window support |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15683](https://issues.apache.org/jira/browse/HBASE-15683) | Min latency in latency histograms are emitted as Long.MAX\_VALUE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15366](https://issues.apache.org/jira/browse/HBASE-15366) | Add doc, trace-level logging, and test around hfileblock |  Major | BlockCache | stack | stack |
| [HBASE-15671](https://issues.apache.org/jira/browse/HBASE-15671) | Add per-table metrics on memstore, storefile and regionsize |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15392](https://issues.apache.org/jira/browse/HBASE-15392) | Single Cell Get reads two HFileBlocks |  Major | BucketCache | stack | stack |
| [HBASE-15579](https://issues.apache.org/jira/browse/HBASE-15579) | Procedure V2 - Remove synchronized around nonce in Procedure submit |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15628](https://issues.apache.org/jira/browse/HBASE-15628) | Implement an AsyncOutputStream which can work with any FileSystem implementation |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-15689](https://issues.apache.org/jira/browse/HBASE-15689) | Changes to hbase-personality.sh to include/exclude flaky tests |  Major | . | Appy | Appy |
| [HBASE-15477](https://issues.apache.org/jira/browse/HBASE-15477) | Do not save 'next block header' when we cache hfileblocks |  Major | BlockCache, Performance | stack | stack |
| [HBASE-15735](https://issues.apache.org/jira/browse/HBASE-15735) | Tightening of the CP contract |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-15658](https://issues.apache.org/jira/browse/HBASE-15658) | RegionServerCallable / RpcRetryingCaller clear meta cache on retries |  Critical | Client | Gary Helmling | Gary Helmling |
| [HBASE-15675](https://issues.apache.org/jira/browse/HBASE-15675) | Add more details about region on table.jsp |  Major | . | Yu Li | Yu Li |
| [HBASE-15337](https://issues.apache.org/jira/browse/HBASE-15337) | Document date tiered compaction in the book |  Major | documentation | Enis Soztutar | Clara Xiong |
| [HBASE-15754](https://issues.apache.org/jira/browse/HBASE-15754) | Add testcase for AES encryption |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-15763](https://issues.apache.org/jira/browse/HBASE-15763) | Isolate Wal related stuff from MasterFileSystem |  Trivial | master, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15743](https://issues.apache.org/jira/browse/HBASE-15743) | Add Transparent Data Encryption support for FanOutOneBlockAsyncDFSOutput |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-15778](https://issues.apache.org/jira/browse/HBASE-15778) | replace master.am and master.sm direct access with getter calls |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15776](https://issues.apache.org/jira/browse/HBASE-15776) | Replace master.am.getTableStateManager() with the direct master.getTableStateManager() |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15740](https://issues.apache.org/jira/browse/HBASE-15740) | Replication source.shippedKBs metric is undercounting because it is in KB |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15785](https://issues.apache.org/jira/browse/HBASE-15785) | Unnecessary lock in ByteBufferArray |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-15813](https://issues.apache.org/jira/browse/HBASE-15813) | Rename DefaultWALProvider to a more specific name and clean up unnecessary reference to it |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-15825](https://issues.apache.org/jira/browse/HBASE-15825) | Fix the null pointer in DynamicLogicExpressionSuite |  Major | . | Zhan Zhang | Zhan Zhang |
| [HBASE-15651](https://issues.apache.org/jira/browse/HBASE-15651) | Add report-flakies.py to use jenkins api to get failing tests |  Major | . | Appy | Appy |
| [HBASE-15865](https://issues.apache.org/jira/browse/HBASE-15865) | Move TestTableDeleteFamilyHandler and TestTableDescriptorModification handler tests to procedure |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15872](https://issues.apache.org/jira/browse/HBASE-15872) | Split TestWALProcedureStore |  Trivial | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14920](https://issues.apache.org/jira/browse/HBASE-14920) | Compacting Memstore |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-15896](https://issues.apache.org/jira/browse/HBASE-15896) | Add timeout tests to flaky list from report-flakies.py |  Major | test | Appy | Appy |
| [HBASE-15915](https://issues.apache.org/jira/browse/HBASE-15915) | Set timeouts on hanging tests |  Major | . | Appy | Appy |
| [HBASE-15919](https://issues.apache.org/jira/browse/HBASE-15919) | Document @Rule vs @ClassRule. Also clarify timeout limits are on TestCase. |  Minor | . | Appy | Appy |
| [HBASE-15917](https://issues.apache.org/jira/browse/HBASE-15917) | Flaky tests dashboard |  Major | . | Appy | Appy |
| [HBASE-15927](https://issues.apache.org/jira/browse/HBASE-15927) | Remove HMaster.assignRegion() |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15883](https://issues.apache.org/jira/browse/HBASE-15883) | Adding WAL files and tracking offsets in HBase. |  Major | Replication | Joseph | Joseph |
| [HBASE-15174](https://issues.apache.org/jira/browse/HBASE-15174) | Client Public API should not have PB objects in 2.0 |  Blocker | . | Enis Soztutar | ramkrishna.s.vasudevan |
| [HBASE-15948](https://issues.apache.org/jira/browse/HBASE-15948) | Port "HADOOP-9956  RPC listener inefficiently assigns connections to readers" |  Major | IPC/RPC | stack | stack |
| [HBASE-15107](https://issues.apache.org/jira/browse/HBASE-15107) | Procedure V2 - Procedure Queue with Regions |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15994](https://issues.apache.org/jira/browse/HBASE-15994) | Allow selection of RpcSchedulers |  Major | . | stack | stack |
| [HBASE-15272](https://issues.apache.org/jira/browse/HBASE-15272) | Add error handling for split and compact actions in table.jsp |  Major | UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15991](https://issues.apache.org/jira/browse/HBASE-15991) | CompactingMemstore#InMemoryFlushRunnable should implement Comparable/Comparator |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15525](https://issues.apache.org/jira/browse/HBASE-15525) | OutOfMemory could occur when using BoundedByteBufferPool during RPC bursts |  Critical | IPC/RPC | deepankar | Anoop Sam John |
| [HBASE-16023](https://issues.apache.org/jira/browse/HBASE-16023) | Fastpath for the FIFO rpcscheduler |  Major | Performance, rpc | stack | stack |
| [HBASE-15974](https://issues.apache.org/jira/browse/HBASE-15974) | Create a ReplicationQueuesClientHBaseImpl |  Major | Replication | Joseph | Joseph |
| [HBASE-16034](https://issues.apache.org/jira/browse/HBASE-16034) | Fix ProcedureTestingUtility#LoadCounter.setMaxProcId() |  Minor | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15999](https://issues.apache.org/jira/browse/HBASE-15999) | NPE in MemstoreCompactor |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16038](https://issues.apache.org/jira/browse/HBASE-16038) | Ignore JVM crashes or machine shutdown failures in report-flakies |  Major | . | Appy | Appy |
| [HBASE-16056](https://issues.apache.org/jira/browse/HBASE-16056) | Procedure v2 - fix master crash for FileNotFound |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14877](https://issues.apache.org/jira/browse/HBASE-14877) | maven archetype: client application |  Major | build, Usability | Nick Dimiduk | Daniel Vimont |
| [HBASE-14878](https://issues.apache.org/jira/browse/HBASE-14878) | maven archetype: client application with shaded jars |  Major | build, Usability | Nick Dimiduk | Daniel Vimont |
| [HBASE-16036](https://issues.apache.org/jira/browse/HBASE-16036) | Fix ReplicationTableBase initialization to make it non-blocking |  Major | Replication | Joseph | Joseph |
| [HBASE-16080](https://issues.apache.org/jira/browse/HBASE-16080) | Fix flakey tests |  Critical | Replication | Elliott Clark | Joseph |
| [HBASE-16083](https://issues.apache.org/jira/browse/HBASE-16083) | Fix table based replication related configs |  Trivial | Replication | Joseph | Joseph |
| [HBASE-16068](https://issues.apache.org/jira/browse/HBASE-16068) | Procedure v2 - use consts for conf properties in tests |  Trivial | proc-v2, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16121](https://issues.apache.org/jira/browse/HBASE-16121) | Require only MasterServices to the ServerManager constructor |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16143](https://issues.apache.org/jira/browse/HBASE-16143) | Change MemstoreScanner constructor to accept List\<KeyValueScanner\> |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16155](https://issues.apache.org/jira/browse/HBASE-16155) | Compacting Memstore : Few log improvements |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16164](https://issues.apache.org/jira/browse/HBASE-16164) | Missing close of new compacted segments in few occasions which might leak MSLAB chunks from pool |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16163](https://issues.apache.org/jira/browse/HBASE-16163) | Compacting Memstore : CompactionPipeline#addFirst  can use LinkedList#addFirst |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15985](https://issues.apache.org/jira/browse/HBASE-15985) | clarify promises about edits from replication in ref guide |  Major | documentation, Replication | Sean Busbey | Sean Busbey |
| [HBASE-16162](https://issues.apache.org/jira/browse/HBASE-16162) | Compacting Memstore : unnecessary push of active segments to pipeline |  Critical | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15935](https://issues.apache.org/jira/browse/HBASE-15935) | Have a separate Walker task running concurrently with Generator |  Minor | integration tests | Joseph | Joseph |
| [HBASE-16176](https://issues.apache.org/jira/browse/HBASE-16176) | Bug fixes/improvements on HBASE-15650 Remove TimeRangeTracker as point of contention when many threads reading a StoreFile |  Major | Performance | stack | stack |
| [HBASE-16194](https://issues.apache.org/jira/browse/HBASE-16194) | Should count in MSLAB chunk allocation into heap size change when adding duplicate cells |  Major | regionserver | Yu Li | Yu Li |
| [HBASE-16092](https://issues.apache.org/jira/browse/HBASE-16092) | Procedure v2 - complete child procedure support |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16214](https://issues.apache.org/jira/browse/HBASE-16214) | Add in UI description of Replication Table |  Minor | Replication | Joseph | Joseph |
| [HBASE-16208](https://issues.apache.org/jira/browse/HBASE-16208) | Make TableBasedReplicationQueuesImpl check that queue exists before attempting to remove it |  Major | Replication | Joseph | Joseph |
| [HBASE-16195](https://issues.apache.org/jira/browse/HBASE-16195) | Should not add chunk into chunkQueue if not using chunk pool in HeapMemStoreLAB |  Major | . | Yu Li | Yu Li |
| [HBASE-15305](https://issues.apache.org/jira/browse/HBASE-15305) | Fix a couple of incorrect anchors in HBase ref guide |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-16219](https://issues.apache.org/jira/browse/HBASE-16219) | Move meta bootstrap out of HMaster |  Trivial | master, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16233](https://issues.apache.org/jira/browse/HBASE-16233) | Procedure V2: Support acquire/release shared table lock concurrently |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16236](https://issues.apache.org/jira/browse/HBASE-16236) | Typo in javadoc of InstancePending |  Trivial | Zookeeper | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14552](https://issues.apache.org/jira/browse/HBASE-14552) | Procedure V2: Reimplement DispatchMergingRegionHandler |  Major | proc-v2 | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-16205](https://issues.apache.org/jira/browse/HBASE-16205) | When Cells are not copied to MSLAB, deep clone it while adding to Memstore |  Critical | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-16280](https://issues.apache.org/jira/browse/HBASE-16280) | Use hash based map in SequenceIdAccounting |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-16286](https://issues.apache.org/jira/browse/HBASE-16286) | When TagRewriteCell are not copied to MSLAB, deep clone it while adding to Memstore |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-16317](https://issues.apache.org/jira/browse/HBASE-16317) | revert all ESAPI changes |  Blocker | dependencies, security | Sean Busbey | Nick Dimiduk |
| [HBASE-16263](https://issues.apache.org/jira/browse/HBASE-16263) | Move all to do w/ protobuf -- \*.proto files and generated classes -- under hbase-protocol |  Major | Protobufs | stack | stack |
| [HBASE-16285](https://issues.apache.org/jira/browse/HBASE-16285) | Drop RPC requests if it must be considered as timeout at client |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16308](https://issues.apache.org/jira/browse/HBASE-16308) | Contain protobuf references |  Major | Protobufs | stack | stack |
| [HBASE-15554](https://issues.apache.org/jira/browse/HBASE-15554) | StoreFile$Writer.appendGeneralBloomFilter generates extra KV |  Major | Performance | Vladimir Rodionov | ramkrishna.s.vasudevan |
| [HBASE-16404](https://issues.apache.org/jira/browse/HBASE-16404) | Make DeleteBloomFilters work with BloomContext |  Minor | Compaction | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16378](https://issues.apache.org/jira/browse/HBASE-16378) | Procedure v2 - Make ProcedureException extend HBaseException |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16094](https://issues.apache.org/jira/browse/HBASE-16094) | Procedure v2 - Improve cleaning up of proc wals |  Major | proc-v2 | Appy | Appy |
| [HBASE-16405](https://issues.apache.org/jira/browse/HBASE-16405) | Change read path Bloom check to work with Cells with out any copy |  Major | Compaction | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-16452](https://issues.apache.org/jira/browse/HBASE-16452) | Procedure v2 - Make ProcedureWALPrettyPrinter extend Tool |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16318](https://issues.apache.org/jira/browse/HBASE-16318) | fail build if license isn't in whitelist |  Major | build, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16440](https://issues.apache.org/jira/browse/HBASE-16440) | MemstoreChunkPool might cross its maxCount of chunks to pool |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16485](https://issues.apache.org/jira/browse/HBASE-16485) | Procedure V2 - Add support to addChildProcedure() as last "step" in StateMachineProcedure |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14921](https://issues.apache.org/jira/browse/HBASE-14921) | Inmemory Compaction Optimizations; Segment Structure |  Major | . | Eshcar Hillel | Anastasia Braginsky |
| [HBASE-16451](https://issues.apache.org/jira/browse/HBASE-16451) | Procedure v2 - Test WAL protobuf entry size limit |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16474](https://issues.apache.org/jira/browse/HBASE-16474) | Remove dfs.support.append related code and documentation |  Major | fs, regionserver, wal | Enis Soztutar | Enis Soztutar |
| [HBASE-16433](https://issues.apache.org/jira/browse/HBASE-16433) | Remove AsyncRpcChannel related stuffs |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-16407](https://issues.apache.org/jira/browse/HBASE-16407) | Handle MemstoreChunkPool size when HeapMemoryManager tunes memory |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16510](https://issues.apache.org/jira/browse/HBASE-16510) | Reset RpcController before retry |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-16082](https://issues.apache.org/jira/browse/HBASE-16082) | Procedure v2 - Move out helpers from MasterProcedureScheduler |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16522](https://issues.apache.org/jira/browse/HBASE-16522) | Procedure v2 - Cache system user and avoid IOException |  Major | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16533](https://issues.apache.org/jira/browse/HBASE-16533) | Procedure v2 - Extract chore from the executor |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16531](https://issues.apache.org/jira/browse/HBASE-16531) | Move cell block related code out of IPCUtil |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-16532](https://issues.apache.org/jira/browse/HBASE-16532) | Procedure-V2: Enforce procedure ownership at submission |  Major | proc-v2 | Ted Yu | Ted Yu |
| [HBASE-16526](https://issues.apache.org/jira/browse/HBASE-16526) | Add more ipc tests |  Major | rpc, test | Duo Zhang | Duo Zhang |
| [HBASE-16507](https://issues.apache.org/jira/browse/HBASE-16507) | Procedure v2 - Force DDL operation to always roll forward |  Minor | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16519](https://issues.apache.org/jira/browse/HBASE-16519) | Procedure v2 - Avoid sync wait on DDLs operation |  Major | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16311](https://issues.apache.org/jira/browse/HBASE-16311) | Audit log for delete snapshot operation is missing in case of snapshot owner deleting the same |  Minor | snapshots | Abhishek Kumar | Yi Liang |
| [HBASE-16101](https://issues.apache.org/jira/browse/HBASE-16101) | Procedure v2 - Perf Tool for WAL |  Major | proc-v2, tooling | Appy | Appy |
| [HBASE-16516](https://issues.apache.org/jira/browse/HBASE-16516) | Revisit the implementation of PayloadCarryingRpcController |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-16566](https://issues.apache.org/jira/browse/HBASE-16566) | Add nonce support to TableBackupProcedure |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16445](https://issues.apache.org/jira/browse/HBASE-16445) | Refactor and reimplement RpcClient |  Major | IPC/RPC, rpc | Duo Zhang | Duo Zhang |
| [HBASE-16530](https://issues.apache.org/jira/browse/HBASE-16530) | Reduce DBE code duplication |  Major | Performance | binlijin | binlijin |
| [HBASE-16596](https://issues.apache.org/jira/browse/HBASE-16596) | Reduce redundant interfaces in AsyncProcess |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16592](https://issues.apache.org/jira/browse/HBASE-16592) | Unify Delete request with AP |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16229](https://issues.apache.org/jira/browse/HBASE-16229) | Cleaning up size and heapSize calculation |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16618](https://issues.apache.org/jira/browse/HBASE-16618) | Procedure v2 - Add base class for table and ns procedures |  Minor | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16626](https://issues.apache.org/jira/browse/HBASE-16626) | User customized RegionScanner from 1.X is incompatible with 2.0.0's off-heap part |  Major | Offheaping | Charlie Qiangeng Xu | Charlie Qiangeng Xu |
| [HBASE-16586](https://issues.apache.org/jira/browse/HBASE-16586) | Procedure v2 - Cleanup sched wait/lock semantic |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16534](https://issues.apache.org/jira/browse/HBASE-16534) | Procedure v2 - Perf Tool for Scheduler |  Major | proc-v2, tooling | Appy | Appy |
| [HBASE-7612](https://issues.apache.org/jira/browse/HBASE-7612) | [JDK8] Replace use of high-scale-lib counters with intrinsic facilities |  Trivial | metrics | Andrew Purtell | Duo Zhang |
| [HBASE-16554](https://issues.apache.org/jira/browse/HBASE-16554) | Procedure V2 - Recover 'updated' part of WAL tracker if trailer is corrupted. |  Major | . | Appy | Appy |
| [HBASE-16651](https://issues.apache.org/jira/browse/HBASE-16651) | LRUBlockCache#returnBlock should try return block to Victim Handler L2 cache. |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-16587](https://issues.apache.org/jira/browse/HBASE-16587) | Procedure v2 - Cleanup suspended proc execution |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16695](https://issues.apache.org/jira/browse/HBASE-16695) | Procedure v2 - Support for parent holding locks |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16134](https://issues.apache.org/jira/browse/HBASE-16134) | Introduce Cell extension for server side. |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-16656](https://issues.apache.org/jira/browse/HBASE-16656) | BackupID must include backup set name |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16673](https://issues.apache.org/jira/browse/HBASE-16673) | Enhance history command: history per backup set |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16738](https://issues.apache.org/jira/browse/HBASE-16738) | L1 cache caching shared memory HFile block when blocks promoted from L2 to L1 |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-16742](https://issues.apache.org/jira/browse/HBASE-16742) | Add chapter for devs on how we do protobufs going forward |  Major | documentation | stack | stack |
| [HBASE-16264](https://issues.apache.org/jira/browse/HBASE-16264) | Figure how to deal with endpoints and shaded pb |  Critical | Coprocessors, Protobufs | stack | stack |
| [HBASE-16741](https://issues.apache.org/jira/browse/HBASE-16741) | Amend the generate protobufs out-of-band build step to include shade, pulling in protobuf source and a hook for patching protobuf |  Major | Protobufs | stack | stack |
| [HBASE-16760](https://issues.apache.org/jira/browse/HBASE-16760) | Deprecate ByteString related methods in Bytes.java |  Major | Protobufs | Anoop Sam John | Anoop Sam John |
| [HBASE-16758](https://issues.apache.org/jira/browse/HBASE-16758) | Bring back HBaseZeroCopyByteStringer stuff |  Major | Protobufs | Anoop Sam John | Anoop Sam John |
| [HBASE-16759](https://issues.apache.org/jira/browse/HBASE-16759) | Avoid ByteString.copyFrom usage wherever possible |  Major | Protobufs | Anoop Sam John | Anoop Sam John |
| [HBASE-16372](https://issues.apache.org/jira/browse/HBASE-16372) | References to previous cell in read path should be avoided |  Blocker | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15721](https://issues.apache.org/jira/browse/HBASE-15721) | Optimization in cloning cells into MSLAB |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-15984](https://issues.apache.org/jira/browse/HBASE-15984) | Given failure to parse a given WAL that was closed cleanly, replay the WAL. |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-14734](https://issues.apache.org/jira/browse/HBASE-14734) | BindException when setting up MiniKdc |  Major | flakey, test | stack | Appy |
| [HBASE-16788](https://issues.apache.org/jira/browse/HBASE-16788) | Race in compacted file deletion between HStore close() and closeAndArchiveCompactedFiles() |  Blocker | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-16146](https://issues.apache.org/jira/browse/HBASE-16146) | Counters are expensive... |  Major | metrics | stack | Gary Helmling |
| [HBASE-16802](https://issues.apache.org/jira/browse/HBASE-16802) | Procedure v2 - group procedure cleaning |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15561](https://issues.apache.org/jira/browse/HBASE-15561) | See how G1GC works with MSLAB and chunk pool |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16505](https://issues.apache.org/jira/browse/HBASE-16505) | Save deadline in RpcCallContext according to request's timeout |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16735](https://issues.apache.org/jira/browse/HBASE-16735) | Procedure v2 - Fix yield while holding locks |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16813](https://issues.apache.org/jira/browse/HBASE-16813) | Procedure v2 - Move ProcedureEvent to hbase-procedure module |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16642](https://issues.apache.org/jira/browse/HBASE-16642) | Procedure V2: Use DelayQueue instead of TimeoutBlockingQueue |  Minor | proc-v2 | Hiroshi Ikeda | Matteo Bertozzi |
| [HBASE-16839](https://issues.apache.org/jira/browse/HBASE-16839) | Procedure v2 - Move all protobuf handling to ProcedureUtil |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16826](https://issues.apache.org/jira/browse/HBASE-16826) | Backup command-line tool fails if defaultFS is not set in configuration |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16834](https://issues.apache.org/jira/browse/HBASE-16834) | Add AsyncConnection support for ConnectionFactory |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16846](https://issues.apache.org/jira/browse/HBASE-16846) | Procedure v2 - executor cleanup |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16860](https://issues.apache.org/jira/browse/HBASE-16860) | BackupCopyService#Type refactoring |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16861](https://issues.apache.org/jira/browse/HBASE-16861) | Rename Service to Task |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16836](https://issues.apache.org/jira/browse/HBASE-16836) | Implement increment and append |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16863](https://issues.apache.org/jira/browse/HBASE-16863) | Move Backup constants from HConstants to BackupRestoreConstants |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16837](https://issues.apache.org/jira/browse/HBASE-16837) | Implement checkAndPut and checkAndDelete |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16864](https://issues.apache.org/jira/browse/HBASE-16864) | Procedure v2 - Fix StateMachineProcedure support for child procs at last step |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16874](https://issues.apache.org/jira/browse/HBASE-16874) | Fix TestMasterFailoverWithProcedures and ensure single proc-executor for kill/restart tests |  Minor | proc-v2 | Ted Yu | Matteo Bertozzi |
| [HBASE-16872](https://issues.apache.org/jira/browse/HBASE-16872) | Implement mutateRow and checkAndMutate |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16871](https://issues.apache.org/jira/browse/HBASE-16871) | Procedure v2 - add waiting procs back to the queue after restart |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16828](https://issues.apache.org/jira/browse/HBASE-16828) | Make backup command-line tool interface consistent |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15789](https://issues.apache.org/jira/browse/HBASE-15789) | PB related changes to work with offheap |  Major | regionserver | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-16827](https://issues.apache.org/jira/browse/HBASE-16827) | Backup.proto refactoring |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15709](https://issues.apache.org/jira/browse/HBASE-15709) | Handle large edits for asynchronous WAL |  Critical | io, wal | Duo Zhang | Duo Zhang |
| [HBASE-16835](https://issues.apache.org/jira/browse/HBASE-16835) | Revisit the zookeeper usage at client side |  Major | Client, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-16932](https://issues.apache.org/jira/browse/HBASE-16932) | Implement small scan |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16891](https://issues.apache.org/jira/browse/HBASE-16891) | Try copying to the Netty ByteBuf directly from the WALEdit |  Major | wal | ramkrishna.s.vasudevan | Duo Zhang |
| [HBASE-16954](https://issues.apache.org/jira/browse/HBASE-16954) | Unify HTable#checkAndDelete with AP |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16968](https://issues.apache.org/jira/browse/HBASE-16968) | Refactor FanOutOneBlockAsyncDFSOutput |  Major | io, wal | Duo Zhang | Duo Zhang |
| [HBASE-16945](https://issues.apache.org/jira/browse/HBASE-16945) | Implement AsyncRegionLocator |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16608](https://issues.apache.org/jira/browse/HBASE-16608) | Introducing the ability to merge ImmutableSegments without copy-compaction or SQM usage |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-16986](https://issues.apache.org/jira/browse/HBASE-16986) | Add note on how scanner caching has changed since 0.98 to refguid |  Minor | documentation | stack | stack |
| [HBASE-16970](https://issues.apache.org/jira/browse/HBASE-16970) | Clarify misleading Scan.java comment about caching |  Trivial | . | Jim Kleckner | Jim Kleckner |
| [HBASE-16865](https://issues.apache.org/jira/browse/HBASE-16865) | Procedure v2 - Inherit lock from root proc |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16892](https://issues.apache.org/jira/browse/HBASE-16892) | Use TableName instead of String in SnapshotDescription |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16937](https://issues.apache.org/jira/browse/HBASE-16937) | Replace SnapshotType protobuf conversion when we can directly use the pojo object |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17030](https://issues.apache.org/jira/browse/HBASE-17030) | Procedure v2 - A couple of tweaks to the SplitTableRegionProcedure |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17050](https://issues.apache.org/jira/browse/HBASE-17050) | Upgrade Apache CLI version from 1.2 to 1.3.1 |  Minor | . | Appy | Appy |
| [HBASE-16982](https://issues.apache.org/jira/browse/HBASE-16982) | Better integrate Apache CLI in AbstractHBaseTool |  Major | . | Appy | Appy |
| [HBASE-17021](https://issues.apache.org/jira/browse/HBASE-17021) | Use RingBuffer to reduce the contention in AsyncFSWAL |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-17035](https://issues.apache.org/jira/browse/HBASE-17035) | Check why we roll a wal writer at 10MB when the configured roll size is 120M+ with AsyncFSWAL |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-17053](https://issues.apache.org/jira/browse/HBASE-17053) | Remove LogRollerExitedChecker |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-16570](https://issues.apache.org/jira/browse/HBASE-16570) | Compute region locality in parallel at startup |  Major | . | binlijin | binlijin |
| [HBASE-17071](https://issues.apache.org/jira/browse/HBASE-17071) | Do not initialize MemstoreChunkPool when use mslab option is turned off |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16838](https://issues.apache.org/jira/browse/HBASE-16838) | Implement basic scan |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-15788](https://issues.apache.org/jira/browse/HBASE-15788) | Use Offheap ByteBuffers from BufferPool to read RPC requests. |  Major | regionserver | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-17089](https://issues.apache.org/jira/browse/HBASE-17089) | Add doc on experience running with hedged reads |  Major | documentation | stack | stack |
| [HBASE-17087](https://issues.apache.org/jira/browse/HBASE-17087) | Enable Aliasing for CodedInputStream created by ByteInputByteString#newCodedInput |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-17073](https://issues.apache.org/jira/browse/HBASE-17073) | Increase the max number of buffers in ByteBufferPool |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-16169](https://issues.apache.org/jira/browse/HBASE-16169) | Make RegionSizeCalculator scalable |  Major | mapreduce, scaling | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17085](https://issues.apache.org/jira/browse/HBASE-17085) | AsyncFSWAL may issue unnecessary AsyncDFSOutput.sync |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-16956](https://issues.apache.org/jira/browse/HBASE-16956) | Refactor FavoredNodePlan to use regionNames as keys |  Minor | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17139](https://issues.apache.org/jira/browse/HBASE-17139) | Remove sweep tool related configs from hbase-default.xml |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-17141](https://issues.apache.org/jira/browse/HBASE-17141) | Introduce a more user-friendly implementation of AsyncTable |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-15786](https://issues.apache.org/jira/browse/HBASE-15786) | Create DBB backed MSLAB pool |  Major | regionserver | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-16984](https://issues.apache.org/jira/browse/HBASE-16984) | Implement getScanner |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17169](https://issues.apache.org/jira/browse/HBASE-17169) | Remove Cell variants with ShareableMemory |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-17162](https://issues.apache.org/jira/browse/HBASE-17162) | Avoid unconditional call to getXXXArray() in write path |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-17183](https://issues.apache.org/jira/browse/HBASE-17183) | Handle ByteBufferCell while making TagRewriteCell |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-17048](https://issues.apache.org/jira/browse/HBASE-17048) | Calcuate suitable ByteBuf size when allocating send buffer in FanOutOneBlockAsyncDFSOutput |  Major | wal | Duo Zhang | ramkrishna.s.vasudevan |
| [HBASE-17012](https://issues.apache.org/jira/browse/HBASE-17012) | Handle Offheap cells in CompressedKvEncoder |  Major | regionserver | Anoop Sam John | ramkrishna.s.vasudevan |
| [HBASE-17167](https://issues.apache.org/jira/browse/HBASE-17167) | Pass mvcc to client when scan |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-16648](https://issues.apache.org/jira/browse/HBASE-16648) | [JDK8] Use computeIfAbsent instead of get and putIfAbsent |  Major | Performance | Duo Zhang | Duo Zhang |
| [HBASE-17111](https://issues.apache.org/jira/browse/HBASE-17111) | Use Apache CLI in SnapshotInfo tool |  Major | . | Appy | Appy |
| [HBASE-16940](https://issues.apache.org/jira/browse/HBASE-16940) | Address review of "Backup/Restore (HBASE-7912, HBASE-14030, HBASE-14123) mega patch" posted on RB |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17260](https://issues.apache.org/jira/browse/HBASE-17260) | Procedure v2 - Add setOwner() overload taking a User instance |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16941](https://issues.apache.org/jira/browse/HBASE-16941) | FavoredNodes - Split/Merge code paths |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17251](https://issues.apache.org/jira/browse/HBASE-17251) | Add a timeout parameter when locating region |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-16336](https://issues.apache.org/jira/browse/HBASE-16336) | Removing peers seems to be leaving spare queues |  Major | Replication | Joseph | Guanghao Zhang |
| [HBASE-17294](https://issues.apache.org/jira/browse/HBASE-17294) | External Configuration for Memory Compaction |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-17277](https://issues.apache.org/jira/browse/HBASE-17277) | Allow alternate BufferedMutator implementation |  Major | . | stack | stack |
| [HBASE-17313](https://issues.apache.org/jira/browse/HBASE-17313) | Add BufferedMutatorParams#clone method |  Major | Client | Joep Rottinghuis | Joep Rottinghuis |
| [HBASE-17316](https://issues.apache.org/jira/browse/HBASE-17316) | Addendum to HBASE-17294, 'External Configuration for Memory Compaction' |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-15787](https://issues.apache.org/jira/browse/HBASE-15787) | Change the flush related heuristics to work with offheap size configured |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16398](https://issues.apache.org/jira/browse/HBASE-16398) | optimize HRegion computeHDFSBlocksDistribution |  Major | regionserver | binlijin | binlijin |
| [HBASE-17148](https://issues.apache.org/jira/browse/HBASE-17148) | Procedure v2 - add bulk proc submit |  Minor | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17282](https://issues.apache.org/jira/browse/HBASE-17282) | Reduce the redundant requests to meta table |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17142](https://issues.apache.org/jira/browse/HBASE-17142) | Implement multi get |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-17107](https://issues.apache.org/jira/browse/HBASE-17107) | FN info should be cleaned up on region/table cleanup |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-11392](https://issues.apache.org/jira/browse/HBASE-11392) | add/remove peer requests should be routed through master |  Critical | . | Enis Soztutar | Guanghao Zhang |
| [HBASE-17262](https://issues.apache.org/jira/browse/HBASE-17262) | Refactor RpcServer so as to make it extendable and/or pluggable |  Major | rpc | binlijin | binlijin |
| [HBASE-17334](https://issues.apache.org/jira/browse/HBASE-17334) | Add locate row before/after support for AsyncRegionLocator |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17335](https://issues.apache.org/jira/browse/HBASE-17335) | enable/disable replication peer requests should be routed through master |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17345](https://issues.apache.org/jira/browse/HBASE-17345) | Implement batch |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-16524](https://issues.apache.org/jira/browse/HBASE-16524) | Procedure v2 - Compute WALs cleanup on wal modification and not on every sync |  Minor | proc-v2 | Appy | Matteo Bertozzi |
| [HBASE-17068](https://issues.apache.org/jira/browse/HBASE-17068) | Procedure v2 - inherit region locks |  Major | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17090](https://issues.apache.org/jira/browse/HBASE-17090) | Procedure v2 - fast wake if nothing else is running |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17320](https://issues.apache.org/jira/browse/HBASE-17320) | Add inclusive/exclusive support for startRow and endRow of scan |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17149](https://issues.apache.org/jira/browse/HBASE-17149) | Procedure V2 - Fix nonce submission to avoid unnecessary calling coprocessor multiple times |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17336](https://issues.apache.org/jira/browse/HBASE-17336) | get/update replication peer config requests should be routed through master |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17373](https://issues.apache.org/jira/browse/HBASE-17373) | Reverse the order of snapshot creation in the CompactingMemStore |  Major | . | Anastasia Braginsky | Eshcar Hillel |
| [HBASE-17410](https://issues.apache.org/jira/browse/HBASE-17410) | Use isEmpty instead of size() == 0 in hbase-client |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-17409](https://issues.apache.org/jira/browse/HBASE-17409) | Re-fix XSS request issue in JMXJsonServlet |  Major | security, UI | Josh Elser | Josh Elser |
| [HBASE-17388](https://issues.apache.org/jira/browse/HBASE-17388) | Move ReplicationPeer and other replication related PB messages to the replication.proto |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15172](https://issues.apache.org/jira/browse/HBASE-15172) | Support setting storage policy in bulkload |  Major | . | Yu Li | Yu Li |
| [HBASE-12148](https://issues.apache.org/jira/browse/HBASE-12148) | Remove TimeRangeTracker as point of contention when many threads writing a Store |  Major | Performance | stack | huaxiang sun |
| [HBASE-17337](https://issues.apache.org/jira/browse/HBASE-17337) | list replication peers request should be routed through master |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14061](https://issues.apache.org/jira/browse/HBASE-14061) | Support CF-level Storage Policy |  Major | HFile, regionserver | Victor Xu | Yu Li |
| [HBASE-17416](https://issues.apache.org/jira/browse/HBASE-17416) | Use isEmpty instead of size() == 0 in hbase-protocol-shaded |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-16744](https://issues.apache.org/jira/browse/HBASE-16744) | Procedure V2 - Lock procedures to allow clients to acquire locks on tables/namespaces/regions |  Major | . | Appy | Matteo Bertozzi |
| [HBASE-17372](https://issues.apache.org/jira/browse/HBASE-17372) | Make AsyncTable thread safe |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-17081](https://issues.apache.org/jira/browse/HBASE-17081) | Flush the entire CompactingMemStore content to disk |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-17483](https://issues.apache.org/jira/browse/HBASE-17483) | Add equals/hashcode for OffheapKeyValue |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17396](https://issues.apache.org/jira/browse/HBASE-17396) | Add first async admin impl and implement balance methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17480](https://issues.apache.org/jira/browse/HBASE-17480) | Remove split region code from Region Server |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16867](https://issues.apache.org/jira/browse/HBASE-16867) | Procedure V2 - Check ACLs for remote HBaseLock |  Major | . | Appy | Appy |
| [HBASE-16831](https://issues.apache.org/jira/browse/HBASE-16831) | Procedure V2 - Remove org.apache.hadoop.hbase.zookeeper.lock |  Minor | . | Appy | Appy |
| [HBASE-17498](https://issues.apache.org/jira/browse/HBASE-17498) | Implement listTables and listTableNames methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17497](https://issues.apache.org/jira/browse/HBASE-17497) | Add first async MetaTableAccessor impl and Implement tableExists method |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17367](https://issues.apache.org/jira/browse/HBASE-17367) | Make HTable#getBufferedMutator thread safe |  Major | . | Yu Li | Yu Li |
| [HBASE-17067](https://issues.apache.org/jira/browse/HBASE-17067) | Procedure v2 - remove tryAcquire\*Lock and use wait/wake to make framework event based |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17491](https://issues.apache.org/jira/browse/HBASE-17491) | Remove all setters from HTable interface and introduce a TableBuilder to build Table instance |  Major | . | Yu Li | Yu Li |
| [HBASE-17492](https://issues.apache.org/jira/browse/HBASE-17492) | Fix the compacting memstore part in hbase shell ruby script |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-17443](https://issues.apache.org/jira/browse/HBASE-17443) | Move listReplicated/enableTableRep/disableTableRep methods from ReplicationAdmin to Admin |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17045](https://issues.apache.org/jira/browse/HBASE-17045) | Unify the implementation of small scan and regular scan |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17500](https://issues.apache.org/jira/browse/HBASE-17500) | Implement getTable/creatTable/deleteTable/truncateTable methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17526](https://issues.apache.org/jira/browse/HBASE-17526) | Procedure v2 - cleanup isSuspended from MasterProcedureScheduler#Queue |  Minor | proc-v2 | Appy | Appy |
| [HBASE-17562](https://issues.apache.org/jira/browse/HBASE-17562) | Remove documentation for coprocessor execution times after HBASE-14205 |  Major | Coprocessors, Performance, regionserver | Enis Soztutar | Jan Hentschel |
| [HBASE-17566](https://issues.apache.org/jira/browse/HBASE-17566) | Jetty upgrade fixes |  Major | REST, UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-17346](https://issues.apache.org/jira/browse/HBASE-17346) | Add coprocessor service support |  Major | asyncclient, Client, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-17101](https://issues.apache.org/jira/browse/HBASE-17101) | FavoredNodes should not apply to system tables |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17198](https://issues.apache.org/jira/browse/HBASE-17198) | FN updates during region merge (follow up to Procedure v2 merge) |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17281](https://issues.apache.org/jira/browse/HBASE-17281) | FN should use datanode port from hdfs configuration |  Minor | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17511](https://issues.apache.org/jira/browse/HBASE-17511) | Implement enable/disable table methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17349](https://issues.apache.org/jira/browse/HBASE-17349) | Add doc for regionserver group-based assignment |  Critical | regionserver, rsgroup | stack | stack |
| [HBASE-17596](https://issues.apache.org/jira/browse/HBASE-17596) | Implement add/delete/modify column family methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17350](https://issues.apache.org/jira/browse/HBASE-17350) | Fixup of regionserver group-based assignment |  Critical | regionserver, rsgroup | stack | stack |
| [HBASE-17402](https://issues.apache.org/jira/browse/HBASE-17402) | TestAsyncTableScan sometimes hangs |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17389](https://issues.apache.org/jira/browse/HBASE-17389) | Convert all internal usages from ReplicationAdmin to Admin |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17484](https://issues.apache.org/jira/browse/HBASE-17484) | Add non cached version of OffheapKV for write path |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17575](https://issues.apache.org/jira/browse/HBASE-17575) | Run critical tests with each of the Inmemory Compaction Policies enabled (Towards Making BASIC the Default In-Memory Compaction Policy) |  Major | test | Eshcar Hillel | Eshcar Hillel |
| [HBASE-17583](https://issues.apache.org/jira/browse/HBASE-17583) | Add inclusive/exclusive support for startRow and endRow of scan for sync client |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17656](https://issues.apache.org/jira/browse/HBASE-17656) | Move new Address class from util to net package |  Minor | rsgroup | stack | stack |
| [HBASE-17619](https://issues.apache.org/jira/browse/HBASE-17619) | Add async admin Impl which connect to RegionServer and implement close region methods. |  Major | asyncclient | Zheng Hu | Zheng Hu |
| [HBASE-17644](https://issues.apache.org/jira/browse/HBASE-17644) | Always create ByteBufferCells after copying to MSLAB |  Major | regionserver | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-17210](https://issues.apache.org/jira/browse/HBASE-17210) | Set timeout on trying rowlock according to client's RPC timeout |  Major | . | Phil Yang | Phil Yang |
| [HBASE-17561](https://issues.apache.org/jira/browse/HBASE-17561) | table status page should escape values that may contain arbitrary characters. |  Major | master, UI | Sean Busbey | Sean Busbey |
| [HBASE-17608](https://issues.apache.org/jira/browse/HBASE-17608) | Add suspend support for RawScanResultConsumer |  Major | asyncclient, Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-16991](https://issues.apache.org/jira/browse/HBASE-16991) | Make the initialization of AsyncConnection asynchronous |  Minor | Client | Duo Zhang | Duo Zhang |
| [HBASE-17662](https://issues.apache.org/jira/browse/HBASE-17662) | Disable in-memory flush when replaying from WAL |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-17646](https://issues.apache.org/jira/browse/HBASE-17646) | Implement Async getRegion method |  Major | asyncclient | Zheng Hu | Zheng Hu |
| [HBASE-15484](https://issues.apache.org/jira/browse/HBASE-15484) | Correct the semantic of batch and partial |  Blocker | Client, scan | Phil Yang | Phil Yang |
| [HBASE-17600](https://issues.apache.org/jira/browse/HBASE-17600) | Implement get/create/modify/delete/list namespace admin operations |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17745](https://issues.apache.org/jira/browse/HBASE-17745) | Support short circuit connection for master services |  Major | . | Yu Li | Yu Li |
| [HBASE-17338](https://issues.apache.org/jira/browse/HBASE-17338) | Treat Cell data size under global memstore heap size only when that Cell can not be copied to MSLAB |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-17740](https://issues.apache.org/jira/browse/HBASE-17740) | Correct the semantic of batch and partial for async client |  Critical | asyncclient, Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17790](https://issues.apache.org/jira/browse/HBASE-17790) | Mark ReplicationAdmin's peerAdded and listReplicationPeers as Deprecated |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15314](https://issues.apache.org/jira/browse/HBASE-15314) | Allow more than one backing file in bucketcache |  Major | BucketCache | stack | chunhui shen |
| [HBASE-17691](https://issues.apache.org/jira/browse/HBASE-17691) | Add ScanMetrics support for async scan |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17805](https://issues.apache.org/jira/browse/HBASE-17805) | We should remove BoundedByteBufferPool because it is replaced by ByteBufferPool |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17809](https://issues.apache.org/jira/browse/HBASE-17809) | cleanup unused class |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17669](https://issues.apache.org/jira/browse/HBASE-17669) | Implement async mergeRegion/splitRegion methods. |  Major | Admin, asyncclient, Client | Zheng Hu | Zheng Hu |
| [HBASE-13395](https://issues.apache.org/jira/browse/HBASE-13395) | Remove HTableInterface |  Major | API | Mikhail Antonov | Jan Hentschel |
| [HBASE-17765](https://issues.apache.org/jira/browse/HBASE-17765) | Reviving the merge possibility in the CompactingMemStore |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-17520](https://issues.apache.org/jira/browse/HBASE-17520) | Implement isTableEnabled/Disabled/Available methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17844](https://issues.apache.org/jira/browse/HBASE-17844) | Subset of HBASE-14614, Procedure v2: Core Assignment Manager (non-critical related changes) |  Major | Region Assignment | stack | stack |
| [HBASE-17855](https://issues.apache.org/jira/browse/HBASE-17855) | Fix typo in async client implementation |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-17668](https://issues.apache.org/jira/browse/HBASE-17668) | Implement async assgin/offline/move/unassign methods |  Major | Admin, asyncclient, Client | Zheng Hu | Zheng Hu |
| [HBASE-17859](https://issues.apache.org/jira/browse/HBASE-17859) | ByteBufferUtils#compareTo is wrong |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17857](https://issues.apache.org/jira/browse/HBASE-17857) | Remove IS annotations from IA.Public classes |  Major | API | Duo Zhang | Duo Zhang |
| [HBASE-16217](https://issues.apache.org/jira/browse/HBASE-16217) | Identify calling user in ObserverContext |  Major | Coprocessors, security | Gary Helmling | Gary Helmling |
| [HBASE-17858](https://issues.apache.org/jira/browse/HBASE-17858) | Update refguide about the IS annotation if necessary |  Major | API, documentation | Duo Zhang | Duo Zhang |
| [HBASE-17881](https://issues.apache.org/jira/browse/HBASE-17881) | Remove the ByteBufferCellImpl |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17872](https://issues.apache.org/jira/browse/HBASE-17872) | The MSLABImpl generates the invaild cells when unsafe is not availble |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16477](https://issues.apache.org/jira/browse/HBASE-16477) | Remove Writable interface and related code from WALEdit/WALKey |  Major | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-17896](https://issues.apache.org/jira/browse/HBASE-17896) | The FIXED\_OVERHEAD of Segment is incorrect |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17895](https://issues.apache.org/jira/browse/HBASE-17895) | TestAsyncProcess#testAction fails if unsafe support is false |  Trivial | test | Chia-Ping Tsai | Wen-Hsiu Chang |
| [HBASE-17897](https://issues.apache.org/jira/browse/HBASE-17897) | StripeStoreFileManager#nonOpenRowCompare use the wrong comparison function |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17866](https://issues.apache.org/jira/browse/HBASE-17866) | Implement async setQuota/getQuota methods. |  Major | Client | Zheng Hu | Zheng Hu |
| [HBASE-17925](https://issues.apache.org/jira/browse/HBASE-17925) | mvn assembly:single fails against hadoop3-alpha2 |  Major | hadoop3 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-16438](https://issues.apache.org/jira/browse/HBASE-16438) | Create a cell type so that chunk id is embedded in it |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17929](https://issues.apache.org/jira/browse/HBASE-17929) | Add more options for PE tool |  Major | Performance, test | Duo Zhang | Duo Zhang |
| [HBASE-17915](https://issues.apache.org/jira/browse/HBASE-17915) | Implement async replication admin methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17864](https://issues.apache.org/jira/browse/HBASE-17864) | Implement async snapshot/cloneSnapshot/restoreSnapshot methods |  Major | Client | Zheng Hu | Zheng Hu |
| [HBASE-16314](https://issues.apache.org/jira/browse/HBASE-16314) | Retry on table snapshot failure during full backup |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17952](https://issues.apache.org/jira/browse/HBASE-17952) | The new options for PE tool do not work |  Major | Performance, test | Duo Zhang | Duo Zhang |
| [HBASE-15143](https://issues.apache.org/jira/browse/HBASE-15143) | Procedure v2 - Web UI displaying queues |  Minor | proc-v2, UI | Matteo Bertozzi | Balazs Meszaros |
| [HBASE-15583](https://issues.apache.org/jira/browse/HBASE-15583) | Any HTableDescriptor we give out should be immutable |  Minor | . | Gabor Liptak | Chia-Ping Tsai |
| [HBASE-17873](https://issues.apache.org/jira/browse/HBASE-17873) | Change the IA.Public annotation to IA.Private for unstable API |  Blocker | API | Duo Zhang | Duo Zhang |
| [HBASE-16942](https://issues.apache.org/jira/browse/HBASE-16942) | Add FavoredStochasticLoadBalancer and FN Candidate generators |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17865](https://issues.apache.org/jira/browse/HBASE-17865) | Implement async listSnapshot/deleteSnapshot methods. |  Major | Client | Zheng Hu | Zheng Hu |
| [HBASE-17920](https://issues.apache.org/jira/browse/HBASE-17920) | TestFSHDFSUtils always fails against hadoop 3.0.0-alpha2 |  Major | hadoop3 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-17263](https://issues.apache.org/jira/browse/HBASE-17263) |   Netty based rpc server impl |  Major | Performance, rpc | binlijin | binlijin |
| [HBASE-17867](https://issues.apache.org/jira/browse/HBASE-17867) | Implement async procedure RPC API(list/exec/abort/isFinished) |  Major | Client | Zheng Hu | Zheng Hu |
| [HBASE-17667](https://issues.apache.org/jira/browse/HBASE-17667) | Implement  async  flush/compact region methods |  Major | Admin, asyncclient, Client | Zheng Hu | Zheng Hu |
| [HBASE-17917](https://issues.apache.org/jira/browse/HBASE-17917) | Use pread by default for all user scan and switch to streaming read if needed |  Major | scan | Duo Zhang | Duo Zhang |
| [HBASE-17887](https://issues.apache.org/jira/browse/HBASE-17887) | Row-level consistency is broken for read |  Blocker | regionserver | Umesh Agashe | Chia-Ping Tsai |
| [HBASE-17786](https://issues.apache.org/jira/browse/HBASE-17786) | Create LoadBalancer perf-tests (test balancer algorithm decoupled from workload) |  Major | Balancer, proc-v2 | stack | Umesh Agashe |
| [HBASE-17938](https://issues.apache.org/jira/browse/HBASE-17938) | General fault - tolerance framework for backup/restore operations |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18012](https://issues.apache.org/jira/browse/HBASE-18012) | Move RpcServer.Connection to a separated file |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-16436](https://issues.apache.org/jira/browse/HBASE-16436) | Add the CellChunkMap variant |  Major | regionserver | ramkrishna.s.vasudevan | Anastasia Braginsky |
| [HBASE-16851](https://issues.apache.org/jira/browse/HBASE-16851) | User-facing documentation for the In-Memory Compaction feature |  Major | . | Edward Bortnikov | Edward Bortnikov |
| [HBASE-18018](https://issues.apache.org/jira/browse/HBASE-18018) | Support abort for all procedures by default |  Major | proc-v2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18016](https://issues.apache.org/jira/browse/HBASE-18016) | Implement abort for TruncateTableProcedure |  Major | proc-v2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18068](https://issues.apache.org/jira/browse/HBASE-18068) | Fix flaky test TestAsyncSnapshotAdminApi |  Major | Client | Appy | Appy |
| [HBASE-17850](https://issues.apache.org/jira/browse/HBASE-17850) | Backup system repair utility |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18013](https://issues.apache.org/jira/browse/HBASE-18013) | Write response directly instead of creating a fake call when setup connection |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-18087](https://issues.apache.org/jira/browse/HBASE-18087) | Fix unit tests for TestTableFavoredNodes |  Major | master | Umesh Agashe | Umesh Agashe |
| [HBASE-18091](https://issues.apache.org/jira/browse/HBASE-18091) | Add API for who currently holds a lock on namespace/ table/ region and log when state is LOCK\_EVENT\_WAIT |  Major | proc-v2 | Umesh Agashe | Umesh Agashe |
| [HBASE-17066](https://issues.apache.org/jira/browse/HBASE-17066) | Procedure v2 - Add handling of merge region transition to the new AM |  Major | proc-v2, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-18114](https://issues.apache.org/jira/browse/HBASE-18114) | Update the config of TestAsync\*AdminApi to make test stable |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18115](https://issues.apache.org/jira/browse/HBASE-18115) | Move SaslServer creation to HBaseSaslRpcServer |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-16261](https://issues.apache.org/jira/browse/HBASE-16261) |  MultiHFileOutputFormat Enhancement |  Major | hbase, mapreduce | Yi Liang | Yi Liang |
| [HBASE-16543](https://issues.apache.org/jira/browse/HBASE-16543) | Separate Create/Modify Table operations from open/reopen regions |  Major | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17530](https://issues.apache.org/jira/browse/HBASE-17530) | Readd TestMergeTableRegionsProcedure mistakenly removed by HBASE-16786 |  Critical | test | stack | stack |
| [HBASE-15995](https://issues.apache.org/jira/browse/HBASE-15995) | Separate replication WAL reading from shipping |  Major | Replication | Vincent Poon | Vincent Poon |
| [HBASE-16549](https://issues.apache.org/jira/browse/HBASE-16549) | Procedure v2 - Add new AM metrics |  Major | proc-v2, Region Assignment | Matteo Bertozzi | Umesh Agashe |
| [HBASE-15160](https://issues.apache.org/jira/browse/HBASE-15160) | Put back HFile's HDFS op latency sampling code and add metrics for monitoring |  Critical | . | Yu Li | Yu Li |
| [HBASE-16392](https://issues.apache.org/jira/browse/HBASE-16392) | Backup delete fault tolerance |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18191](https://issues.apache.org/jira/browse/HBASE-18191) | Include hbase-metrics-\* in assembly |  Major | . | stack | stack |
| [HBASE-18190](https://issues.apache.org/jira/browse/HBASE-18190) | Set version in branch-2 to 2.0.0-alpha-1 |  Major | . | stack | stack |
| [HBASE-18008](https://issues.apache.org/jira/browse/HBASE-18008) | Any HColumnDescriptor we give out should be immutable |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18109](https://issues.apache.org/jira/browse/HBASE-18109) | Assign system tables first (priority) |  Critical | Region Assignment | stack | Yi Liang |
| [HBASE-18220](https://issues.apache.org/jira/browse/HBASE-18220) | Compaction scanners need not reopen storefile scanners while trying to switch over from pread to stream |  Major | Compaction | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18104](https://issues.apache.org/jira/browse/HBASE-18104) | [AMv2] Enable aggregation of RPCs (assigns/unassigns, etc.) |  Major | Region Assignment | stack | Umesh Agashe |
| [HBASE-18221](https://issues.apache.org/jira/browse/HBASE-18221) | Switch from pread to stream should happen under HStore's reentrant lock |  Major | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-14902](https://issues.apache.org/jira/browse/HBASE-14902) | Revert some of the stringency recently introduced by checkstyle tightening |  Major | . | stack | stack |
| [HBASE-18239](https://issues.apache.org/jira/browse/HBASE-18239) | Address ruby static analysis for shell module |  Major | . | Mike Drob | Mike Drob |
| [HBASE-18264](https://issues.apache.org/jira/browse/HBASE-18264) | Update pom plugins |  Major | . | stack | Peter Somogyi |
| [HBASE-18240](https://issues.apache.org/jira/browse/HBASE-18240) | Add hbase-thirdparty, a project with hbase utility including an hbase-shaded-thirdparty module with guava, netty, etc. |  Major | dependencies, shading | stack | stack |
| [HBASE-17201](https://issues.apache.org/jira/browse/HBASE-17201) | Edit of HFileBlock comments and javadoc |  Major | documentation | stack | stack |
| [HBASE-17738](https://issues.apache.org/jira/browse/HBASE-17738) | BucketCache startup is slow |  Major | BucketCache | stack | ramkrishna.s.vasudevan |
| [HBASE-18428](https://issues.apache.org/jira/browse/HBASE-18428) | IntegrationTestDDLMasterFailover uses old-style immutable column descriptors |  Major | integration tests | Mike Drob | Mike Drob |
| [HBASE-18107](https://issues.apache.org/jira/browse/HBASE-18107) | [AMv2] Remove DispatchMergingRegionsRequest & DispatchMergingRegions |  Major | Region Assignment | stack | Yi Liang |
| [HBASE-18367](https://issues.apache.org/jira/browse/HBASE-18367) | Reduce ProcedureInfo usage |  Major | master, proc-v2 | Balazs Meszaros | Balazs Meszaros |
| [HBASE-7912](https://issues.apache.org/jira/browse/HBASE-7912) | HBase Backup/Restore Based on HBase Snapshot |  Major | . | Richard Ding | Vladimir Rodionov |
| [HBASE-18231](https://issues.apache.org/jira/browse/HBASE-18231) | Deprecate and throw unsupported operation when Admin#closeRegion is called. |  Critical | Admin | stack | Appy |
| [HBASE-18102](https://issues.apache.org/jira/browse/HBASE-18102) | [SHELL] Purge close\_region command that allows by-pass of Master |  Major | Operability, shell | stack | Appy |
| [HBASE-18271](https://issues.apache.org/jira/browse/HBASE-18271) | Shade netty |  Blocker | rpc | stack | stack |
| [HBASE-18593](https://issues.apache.org/jira/browse/HBASE-18593) | Tell m2eclipse what to do w/ replacer plugin |  Trivial | build | stack | stack |
| [HBASE-17994](https://issues.apache.org/jira/browse/HBASE-17994) | Add async client test to Performance Evaluation tool |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18103](https://issues.apache.org/jira/browse/HBASE-18103) | [AMv2] If Master gives OPEN to another, if original eventually succeeds, Master will kill it |  Critical | master, proc-v2 | stack | Umesh Agashe |
| [HBASE-18503](https://issues.apache.org/jira/browse/HBASE-18503) | Change \*\*\*Util and Master to use TableDescriptor and ColumnFamilyDescriptor |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18687](https://issues.apache.org/jira/browse/HBASE-18687) | Add @since 2.0.0 to new classes |  Major | API | stack | stack |
| [HBASE-18718](https://issues.apache.org/jira/browse/HBASE-18718) | Document the coprocessor.Export |  Major | Coprocessors, documentation, tooling | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18786](https://issues.apache.org/jira/browse/HBASE-18786) | FileNotFoundException should not be silently handled for primary region replicas |  Major | regionserver, Scanners | Ashu Pachauri | Andrew Purtell |
| [HBASE-18010](https://issues.apache.org/jira/browse/HBASE-18010) | Connect CellChunkMap to be used for flattening in CompactingMemStore |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-18108](https://issues.apache.org/jira/browse/HBASE-18108) | Procedure WALs are archived but not cleaned; fix |  Blocker | proc-v2 | stack | Peter Somogyi |
| [HBASE-19203](https://issues.apache.org/jira/browse/HBASE-19203) | Update Hadoop version used for build to 2.7.4 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18624](https://issues.apache.org/jira/browse/HBASE-18624) | Added support for clearing BlockCache based on table name |  Major | . | Ajay Jadhav | Zach York |
| [HBASE-19468](https://issues.apache.org/jira/browse/HBASE-19468) | FNFE during scans and flushes |  Critical | regionserver, Scanners | Thiruvel Thirumoolan | ramkrishna.s.vasudevan |
| [HBASE-19502](https://issues.apache.org/jira/browse/HBASE-19502) | Make sure we have closed all StoreFileScanners if we fail to open any StoreFileScanners |  Major | regionserver, Scanners | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19629](https://issues.apache.org/jira/browse/HBASE-19629) | RawCell#getTags should return the Iterator\<Tag\> in order to avoid iterating through whole tag array at once |  Major | . | Chia-Ping Tsai | ramkrishna.s.vasudevan |
| [HBASE-19628](https://issues.apache.org/jira/browse/HBASE-19628) | ByteBufferCell should extend ExtendedCell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19626](https://issues.apache.org/jira/browse/HBASE-19626) | Rename Cell.DataType to Cell.Type |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19746](https://issues.apache.org/jira/browse/HBASE-19746) | Add default impl to Cell#getType |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-10909](https://issues.apache.org/jira/browse/HBASE-10909) | Abstract out ZooKeeper usage in HBase - phase 1 |  Major | Consensus, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-12859](https://issues.apache.org/jira/browse/HBASE-12859) | New master API to track major compaction completion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | Promote Java 8 to "yes" in support matrix |  Critical | java | Sean Busbey | Sean Busbey |
| [HBASE-11339](https://issues.apache.org/jira/browse/HBASE-11339) | HBase MOB |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-14869](https://issues.apache.org/jira/browse/HBASE-14869) | Better request latency and size histograms |  Major | . | Lars Hofhansl | Vikas Vishwakarma |
| [HBASE-14420](https://issues.apache.org/jira/browse/HBASE-14420) | Zombie Stomping Session |  Critical | test | stack | stack |
| [HBASE-14457](https://issues.apache.org/jira/browse/HBASE-14457) | Umbrella: Improve Multiple WAL for production usage |  Major | . | Yu Li | Yu Li |
| [HBASE-11425](https://issues.apache.org/jira/browse/HBASE-11425) | Cell/DBB end-to-end on the read-path |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-16432](https://issues.apache.org/jira/browse/HBASE-16432) | Revisit the asynchronous ipc implementation |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-11871](https://issues.apache.org/jira/browse/HBASE-11871) | Avoid usage of KeyValueUtil#ensureKeyValue |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-16145](https://issues.apache.org/jira/browse/HBASE-16145) | MultiRowRangeFilter constructor shouldn't throw IOException |  Minor | . | Konstantin Ryakhovskiy | Konstantin Ryakhovskiy |
| [HBASE-14123](https://issues.apache.org/jira/browse/HBASE-14123) | HBase Backup/Restore Phase 2 |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15179](https://issues.apache.org/jira/browse/HBASE-15179) | Cell/DBB end-to-end on the write-path |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-18037](https://issues.apache.org/jira/browse/HBASE-18037) | Do not expose implementation classes to CP |  Blocker | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-16617](https://issues.apache.org/jira/browse/HBASE-16617) | Procedure V2 - Improvements |  Minor | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15086](https://issues.apache.org/jira/browse/HBASE-15086) | Fix findbugs complaint so yetus reports more green |  Major | build | stack | stack |
| [HBASE-19627](https://issues.apache.org/jira/browse/HBASE-19627) | Stabilize the method signature for Cell and its impl |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19425](https://issues.apache.org/jira/browse/HBASE-19425) | Align the methods in Put/Delete/Increment/Append |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-11459](https://issues.apache.org/jira/browse/HBASE-11459) | Add more doc on compression codecs, how to hook up native lib, lz4, etc. |  Minor | documentation | stack | stack |
| [HBASE-11317](https://issues.apache.org/jira/browse/HBASE-11317) | Expand unit testing to cover Mockito and MRUnit and give more examples |  Trivial | documentation | Mike Drob | Misty Stanley-Jones |
| [HBASE-10398](https://issues.apache.org/jira/browse/HBASE-10398) | HBase book updates for Replication after HBASE-10322 |  Major | documentation | Anoop Sam John | Misty Stanley-Jones |
| [HBASE-11600](https://issues.apache.org/jira/browse/HBASE-11600) | DataInputputStream and DoubleOutputStream are no longer being used |  Trivial | io | Shengzhe Yao | Shengzhe Yao |
| [HBASE-11606](https://issues.apache.org/jira/browse/HBASE-11606) | Enable ZK-less region assignment by default |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11621](https://issues.apache.org/jira/browse/HBASE-11621) | Make MiniDFSCluster run faster |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11666](https://issues.apache.org/jira/browse/HBASE-11666) | Enforce JDK7 javac for builds on branch-1 and master |  Minor | build, documentation | Sean Busbey | Sean Busbey |
| [HBASE-11723](https://issues.apache.org/jira/browse/HBASE-11723) | Document all options of bin/hbase command |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11762](https://issues.apache.org/jira/browse/HBASE-11762) | Record the class name of Codec in WAL header |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-11735](https://issues.apache.org/jira/browse/HBASE-11735) | Document Configurable Bucket Sizes in bucketCache |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11682](https://issues.apache.org/jira/browse/HBASE-11682) | Explain hotspotting |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11800](https://issues.apache.org/jira/browse/HBASE-11800) | Coprocessor service methods in HTableInterface should be annotated public |  Major | Client | Gary Helmling | Gary Helmling |
| [HBASE-11729](https://issues.apache.org/jira/browse/HBASE-11729) | Document HFile v3 |  Trivial | documentation, HFile | Sean Busbey | Sean Busbey |
| [HBASE-4593](https://issues.apache.org/jira/browse/HBASE-4593) | Design and document the official procedure for posting patches, commits, commit messages, etc. to smooth process and make integration with tools easier |  Major | documentation | Jonathan Gray | Misty Stanley-Jones |
| [HBASE-9875](https://issues.apache.org/jira/browse/HBASE-9875) | NamespaceJanitor chore is not used |  Major | . | Ted Yu | Mikhail Antonov |
| [HBASE-4920](https://issues.apache.org/jira/browse/HBASE-4920) | We need a mascot, a totem |  Major | . | stack |  |
| [HBASE-11849](https://issues.apache.org/jira/browse/HBASE-11849) | Clean up orphaned private audience classes |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-11858](https://issues.apache.org/jira/browse/HBASE-11858) | Audit regionserver classes that are missing InterfaceAudience |  Minor | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-11619](https://issues.apache.org/jira/browse/HBASE-11619) | Remove unused test class from TestHLogSplit |  Trivial | wal | Sean Busbey | Mikhail Antonov |
| [HBASE-11961](https://issues.apache.org/jira/browse/HBASE-11961) | Document region state transitions |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11730](https://issues.apache.org/jira/browse/HBASE-11730) | Document release managers for non-deprecated branches |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11761](https://issues.apache.org/jira/browse/HBASE-11761) | Add a FAQ item for updating a maven-managed application from 0.94 -\> 0.96+ |  Major | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11960](https://issues.apache.org/jira/browse/HBASE-11960) | Provide a sample to show how to use Thrift client authentication |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9004](https://issues.apache.org/jira/browse/HBASE-9004) | Fix Documentation around Minor compaction and ttl |  Major | documentation | Elliott Clark | Masatake Iwasaki |
| [HBASE-11692](https://issues.apache.org/jira/browse/HBASE-11692) | Document how and why to do a manual region split |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11981](https://issues.apache.org/jira/browse/HBASE-11981) | Document how to find the units of measure for a given HBase metric |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11791](https://issues.apache.org/jira/browse/HBASE-11791) | Update docs on visibility tags and ACLs, transparent encryption, secure bulk upload |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12239](https://issues.apache.org/jira/browse/HBASE-12239) | Document hedged reads |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-10200](https://issues.apache.org/jira/browse/HBASE-10200) | Better error message when HttpServer fails to start due to java.net.BindException |  Minor | . | Ted Yu | Kiran Kumar M R |
| [HBASE-12250](https://issues.apache.org/jira/browse/HBASE-12250) | Adding an endpoint for updating the regionserver config |  Minor | regionserver | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12381](https://issues.apache.org/jira/browse/HBASE-12381) | Add maven enforcer rules for build assumptions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12388](https://issues.apache.org/jira/browse/HBASE-12388) | Document that WALObservers don't get empty edits. |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-10870](https://issues.apache.org/jira/browse/HBASE-10870) | Deprecate and replace HCD methods that have a 'should' prefix with a 'get' instead |  Major | . | stack | Ashish Singhi |
| [HBASE-12344](https://issues.apache.org/jira/browse/HBASE-12344) | Split up TestAdmin |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12362](https://issues.apache.org/jira/browse/HBASE-12362) | Interim documentation of important master and regionserver metrics |  Major | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12438](https://issues.apache.org/jira/browse/HBASE-12438) | Add  -Dsurefire.rerunFailingTestsCount=2 to patch build runs so flakies get rerun |  Major | test | stack | stack |
| [HBASE-12456](https://issues.apache.org/jira/browse/HBASE-12456) | Update surefire from 2.18-SNAPSHOT to 2.18 |  Major | test | stack | stack |
| [HBASE-12515](https://issues.apache.org/jira/browse/HBASE-12515) | update test-patch to use git |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12516](https://issues.apache.org/jira/browse/HBASE-12516) | Clean up master so QA Bot is in known good state |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12589](https://issues.apache.org/jira/browse/HBASE-12589) | Forward-port fix for TestFromClientSideWithCoprocessor.testMaxKeyValueSize |  Major | test | stack | stack |
| [HBASE-12623](https://issues.apache.org/jira/browse/HBASE-12623) | Remove pre-0.96 to 0.96 upgrade code |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-12624](https://issues.apache.org/jira/browse/HBASE-12624) | Remove rename\_snapshot.rb from code as there is no equivalent renameSnapshot api in Admin class |  Minor | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12493](https://issues.apache.org/jira/browse/HBASE-12493) | User class should provide a way to re-use existing token |  Major | . | Brock Noland | Gary Helmling |
| [HBASE-12724](https://issues.apache.org/jira/browse/HBASE-12724) | Upgrade the interface audience of RegionScanner from Private to LimitedPrivate |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12785](https://issues.apache.org/jira/browse/HBASE-12785) | Use FutureTask to timeout the attempt to get the lock for hbck |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12788](https://issues.apache.org/jira/browse/HBASE-12788) | Promote Abortable to LimitedPrivate |  Major | . | Andrew Purtell | Enis Soztutar |
| [HBASE-12783](https://issues.apache.org/jira/browse/HBASE-12783) | Create efficient RegionLocator implementation |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12834](https://issues.apache.org/jira/browse/HBASE-12834) | Promote ScanType to LimitedPrivate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12701](https://issues.apache.org/jira/browse/HBASE-12701) | Document how to set the split policy on a given table |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12168](https://issues.apache.org/jira/browse/HBASE-12168) | Document Rest gateway SPNEGO-based authentication for client |  Major | documentation, REST, security | Jerry He | Jerry He |
| [HBASE-13079](https://issues.apache.org/jira/browse/HBASE-13079) | Add an admonition to Scans example that the results scanner should be closed |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12995](https://issues.apache.org/jira/browse/HBASE-12995) | Document that HConnection#getTable methods do not check table existence since 0.98.1 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12180](https://issues.apache.org/jira/browse/HBASE-12180) | Fix and reenable TestRegionReplicaReplicationEndpoint |  Major | test | stack | Enis Soztutar |
| [HBASE-11670](https://issues.apache.org/jira/browse/HBASE-11670) | Build PDF of Ref Guide |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-12466](https://issues.apache.org/jira/browse/HBASE-12466) | Document visibility scan label generator usage and behavior |  Major | documentation, security | Jerry He | Misty Stanley-Jones |
| [HBASE-7126](https://issues.apache.org/jira/browse/HBASE-7126) | Update website with info on how to report security bugs |  Critical | documentation | Eli Collins | Misty Stanley-Jones |
| [HBASE-13234](https://issues.apache.org/jira/browse/HBASE-13234) | Improve the obviousness of the download link on hbase.apache.org |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13237](https://issues.apache.org/jira/browse/HBASE-13237) | Improve trademark marks on the hbase.apache.org homepage |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-13233](https://issues.apache.org/jira/browse/HBASE-13233) | add hbase-11339 branch to the patch testing script |  Minor | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13257](https://issues.apache.org/jira/browse/HBASE-13257) | Show coverage report on jenkins |  Minor | . | Duo Zhang | Duo Zhang |
| [HBASE-13310](https://issues.apache.org/jira/browse/HBASE-13310) | Fix high priority findbugs warnings |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13361](https://issues.apache.org/jira/browse/HBASE-13361) | Remove or undeprecate {get\|set}ScannerCaching in HTable |  Minor | Client | Lars Francke | Lars Francke |
| [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | Add ITBLL that exercises per CF flush |  Critical | integration tests | stack | Duo Zhang |
| [HBASE-13487](https://issues.apache.org/jira/browse/HBASE-13487) | Doc KEEP\_DELETED\_CELLS |  Major | documentation | stack | stack |
| [HBASE-13554](https://issues.apache.org/jira/browse/HBASE-13554) | Update book clarifying API stability guarantees |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-11677](https://issues.apache.org/jira/browse/HBASE-11677) | Make Logger instance modifiers consistent |  Minor | util | Sean Busbey | Usha Kuchibhotla |
| [HBASE-13586](https://issues.apache.org/jira/browse/HBASE-13586) | Update book on Hadoop and Java supported versions for 1.1.x |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13713](https://issues.apache.org/jira/browse/HBASE-13713) | See about dropping ClassLoaderBase#getClassLoadingLock |  Minor | . | Nick Dimiduk | Lars Francke |
| [HBASE-13582](https://issues.apache.org/jira/browse/HBASE-13582) | Update docs for HTrace |  Minor | documentation | Sean Busbey | Lars Francke |
| [HBASE-13716](https://issues.apache.org/jira/browse/HBASE-13716) | Stop using Hadoop's FSConstants |  Blocker | Filesystem Integration | Sean Busbey | Sean Busbey |
| [HBASE-13726](https://issues.apache.org/jira/browse/HBASE-13726) | stop using Hadoop's IOUtils |  Major | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-13799](https://issues.apache.org/jira/browse/HBASE-13799) | javadoc how Scan gets polluted when used; if you set attributes or ask for scan metrics |  Minor | documentation | stack | stack |
| [HBASE-13660](https://issues.apache.org/jira/browse/HBASE-13660) | Add link to cloud bigtable schema modeling guide into our refguide |  Major | documentation | stack | stack |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13915](https://issues.apache.org/jira/browse/HBASE-13915) | Remove EOL HBase versions from java and hadoop prereq tables |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13956](https://issues.apache.org/jira/browse/HBASE-13956) | Add myself as 1.1 release manager |  Trivial | site | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13948](https://issues.apache.org/jira/browse/HBASE-13948) | Expand hadoop2 versions built on the pre-commit |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13964](https://issues.apache.org/jira/browse/HBASE-13964) | Skip region normalization for tables under namespace quota |  Major | Balancer, Usability | Mikhail Antonov | Ted Yu |
| [HBASE-13869](https://issues.apache.org/jira/browse/HBASE-13869) | Fix typo in HBase book |  Trivial | documentation | Vladimir Rodionov | Gabor Liptak |
| [HBASE-14053](https://issues.apache.org/jira/browse/HBASE-14053) | Disable DLR in branch-1+ |  Major | Recovery | stack | stack |
| [HBASE-14052](https://issues.apache.org/jira/browse/HBASE-14052) | Mark a few methods in CellUtil audience private since only make sense internally to hbase |  Trivial | API | stack | stack |
| [HBASE-14035](https://issues.apache.org/jira/browse/HBASE-14035) | HBase Backup/Restore Phase 1: hbase:backup - backup system table |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14034](https://issues.apache.org/jira/browse/HBASE-14034) | HBase Backup/Restore Phase 1: Abstract Coordination manager (Zk) operations |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-11276](https://issues.apache.org/jira/browse/HBASE-11276) | Add back support for running ChaosMonkey as standalone tool |  Minor | . | Dima Spivak | Yu Li |
| [HBASE-14057](https://issues.apache.org/jira/browse/HBASE-14057) | HBase shell user\_permission should list super users defined on hbase-site.xml |  Minor | shell | Wellington Chevreuil | Srikanth Srungarapu |
| [HBASE-13446](https://issues.apache.org/jira/browse/HBASE-13446) | Add docs warning about missing data for downstream on versions prior to HBASE-13262 |  Critical | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-14071](https://issues.apache.org/jira/browse/HBASE-14071) | Document troubleshooting unexpected filesystem usage by snapshots and WALs |  Major | . | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14081](https://issues.apache.org/jira/browse/HBASE-14081) | (outdated) references to SVN/trunk in documentation |  Minor | documentation, site | Gabor Liptak | Gabor Liptak |
| [HBASE-13089](https://issues.apache.org/jira/browse/HBASE-13089) | Fix test compilation error on building against htrace-3.2.0-incubating |  Minor | . | Masatake Iwasaki | Esteban Gutierrez |
| [HBASE-14085](https://issues.apache.org/jira/browse/HBASE-14085) | Correct LICENSE and NOTICE files in artifacts |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14288](https://issues.apache.org/jira/browse/HBASE-14288) | Upgrade asciidoctor plugin to v1.5.2.1 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14091](https://issues.apache.org/jira/browse/HBASE-14091) | Update site documentation with code of conduct and project policy for transgressions |  Major | documentation, site | Andrew Purtell | Andrew Purtell |
| [HBASE-14290](https://issues.apache.org/jira/browse/HBASE-14290) | Spin up less threads in tests |  Major | test | stack | stack |
| [HBASE-14348](https://issues.apache.org/jira/browse/HBASE-14348) | Update download mirror link |  Major | documentation, site | Andrew Purtell | Lars Francke |
| [HBASE-14318](https://issues.apache.org/jira/browse/HBASE-14318) | make\_rc.sh should purge/re-resolve dependencies from local repository |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14253](https://issues.apache.org/jira/browse/HBASE-14253) | update docs + build for maven 3.0.4+ |  Major | build, documentation | Sean Busbey | Lars Francke |
| [HBASE-14361](https://issues.apache.org/jira/browse/HBASE-14361) | ReplicationSink should create Connection instances lazily |  Major | Replication | Nick Dimiduk | Heng Chen |
| [HBASE-14227](https://issues.apache.org/jira/browse/HBASE-14227) | Fold special cased MOB APIs into existing APIs |  Blocker | mob | Andrew Purtell | Heng Chen |
| [HBASE-14482](https://issues.apache.org/jira/browse/HBASE-14482) | Add hadoop 2.6.1 to the test-patch build list |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14424](https://issues.apache.org/jira/browse/HBASE-14424) | Document that DisabledRegionSplitPolicy blocks manual splits |  Minor | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14271](https://issues.apache.org/jira/browse/HBASE-14271) | Improve Nexus staging instructions |  Minor | build, documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-14502](https://issues.apache.org/jira/browse/HBASE-14502) | Purge use of jmock and remove as dependency |  Major | test | stack | Gabor Liptak |
| [HBASE-14493](https://issues.apache.org/jira/browse/HBASE-14493) | Upgrade the jamon-runtime dependency |  Minor | . | Newton Alex | Andrew Purtell |
| [HBASE-14652](https://issues.apache.org/jira/browse/HBASE-14652) | Improve / update publish-website script in dev-support |  Major | scripts | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-13867](https://issues.apache.org/jira/browse/HBASE-13867) | Add endpoint coprocessor guide to HBase book |  Major | Coprocessors, documentation | Vladimir Rodionov | Gaurav Bhardwaj |
| [HBASE-14026](https://issues.apache.org/jira/browse/HBASE-14026) | Clarify "Web API" in version and compatibility docs |  Critical | documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-11720](https://issues.apache.org/jira/browse/HBASE-11720) | Set up jenkins job to build site documentation |  Minor | build, documentation | Sean Busbey | Misty Stanley-Jones |
| [HBASE-14481](https://issues.apache.org/jira/browse/HBASE-14481) | Decommission HBase wiki |  Blocker | documentation | Nick Dimiduk | Misty Stanley-Jones |
| [HBASE-14762](https://issues.apache.org/jira/browse/HBASE-14762) | Update docs about publishing website to show gitsubpub method instead of svnsubpub |  Critical | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14713](https://issues.apache.org/jira/browse/HBASE-14713) | Remove simple deprecated-since-1.0 code in hbase-server from hbase 2.0 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14764](https://issues.apache.org/jira/browse/HBASE-14764) | Stop using post-site target |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14732](https://issues.apache.org/jira/browse/HBASE-14732) | Update HBase website skin and CSS |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-14308](https://issues.apache.org/jira/browse/HBASE-14308) | HTableDescriptor WARN is not actionable |  Minor | Usability | Nick Dimiduk | Lars Francke |
| [HBASE-14516](https://issues.apache.org/jira/browse/HBASE-14516) | categorize hadoop-compat tests |  Critical | build, hadoop2, test | Sean Busbey | Sean Busbey |
| [HBASE-14851](https://issues.apache.org/jira/browse/HBASE-14851) | Add test showing how to use TTL from thrift |  Major | test, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14534](https://issues.apache.org/jira/browse/HBASE-14534) | Bump yammer/coda/dropwizard metrics dependency version |  Minor | . | Nick Dimiduk | Mikhail Antonov |
| [HBASE-14994](https://issues.apache.org/jira/browse/HBASE-14994) | Clean up some broken links and references to old APIs |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-11985](https://issues.apache.org/jira/browse/HBASE-11985) | Document sizing rules of thumb |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-15003](https://issues.apache.org/jira/browse/HBASE-15003) | Remove BoundedConcurrentLinkedQueue and associated test |  Minor | util | Sean Busbey | Sean Busbey |
| [HBASE-15007](https://issues.apache.org/jira/browse/HBASE-15007) | update Hadoop support matrix to list 2.6.1+ as supported |  Major | documentation, Operability | Sean Busbey | Sean Busbey |
| [HBASE-15099](https://issues.apache.org/jira/browse/HBASE-15099) | Move RegionStateListener class out of quotas package |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14526](https://issues.apache.org/jira/browse/HBASE-14526) | Remove delayed rpc |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15017](https://issues.apache.org/jira/browse/HBASE-15017) | Close out GitHub pull requests that aren't likely to update into a usable patch |  Trivial | community | Sean Busbey | Sean Busbey |
| [HBASE-15220](https://issues.apache.org/jira/browse/HBASE-15220) | Change two logs in SimpleRegionNormalizer to INFO level |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15502](https://issues.apache.org/jira/browse/HBASE-15502) | Skeleton unit test to copy/paste |  Major | documentation | stack | stack |
| [HBASE-14678](https://issues.apache.org/jira/browse/HBASE-14678) | Experiment: Temporarily disable balancer and a few others to see if root of crashed/timedout JVMs |  Critical | test | stack | Phil Yang |
| [HBASE-15494](https://issues.apache.org/jira/browse/HBASE-15494) | Close obviated PRs on github |  Major | community | Sean Busbey | Sean Busbey |
| [HBASE-15644](https://issues.apache.org/jira/browse/HBASE-15644) | Add maven-scala-plugin for scaladoc |  Major | build | Sean Busbey | Appy |
| [HBASE-15729](https://issues.apache.org/jira/browse/HBASE-15729) | Remove old JDiff wrapper scripts in dev-support |  Minor | build, community | Dima Spivak | Dima Spivak |
| [HBASE-15646](https://issues.apache.org/jira/browse/HBASE-15646) | Add some docs about exporting and importing snapshots using S3 |  Major | documentation, snapshots | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-4368](https://issues.apache.org/jira/browse/HBASE-4368) | Expose processlist in shell (per regionserver and perhaps by cluster) |  Major | shell | stack | Talat UYARER |
| [HBASE-14635](https://issues.apache.org/jira/browse/HBASE-14635) | Fix flaky test TestSnapshotCloneIndependence |  Major | test | stack | Appy |
| [HBASE-15895](https://issues.apache.org/jira/browse/HBASE-15895) | remove unmaintained jenkins build analysis tool. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-15888](https://issues.apache.org/jira/browse/HBASE-15888) | Extend HBASE-12769 for bulk load data replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15989](https://issues.apache.org/jira/browse/HBASE-15989) | Remove hbase.online.schema.update.enable |  Major | . | Nick Dimiduk | Matteo Bertozzi |
| [HBASE-16073](https://issues.apache.org/jira/browse/HBASE-16073) | update compatibility\_checker for jacc dropping comma sep args |  Critical | build, documentation | Sean Busbey | Dima Spivak |
| [HBASE-15656](https://issues.apache.org/jira/browse/HBASE-15656) | Fix unused protobuf warning in Admin.proto |  Minor | . | Elliott Clark | Yi Liang |
| [HBASE-16354](https://issues.apache.org/jira/browse/HBASE-16354) | Clean up defunct GitHub PRs |  Major | community | Dima Spivak | Sean Busbey |
| [HBASE-16426](https://issues.apache.org/jira/browse/HBASE-16426) | Remove company affiliations from committer list |  Major | documentation, website | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-16260](https://issues.apache.org/jira/browse/HBASE-16260) | Audit dependencies for Category-X |  Critical | community, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16467](https://issues.apache.org/jira/browse/HBASE-16467) | Move AbstractHBaseTool to hbase-common |  Trivial | . | Appy | Appy |
| [HBASE-16376](https://issues.apache.org/jira/browse/HBASE-16376) | Document implicit side-effects on partial results when calling Scan#setBatch(int) |  Minor | API, documentation | Josh Elser | Josh Elser |
| [HBASE-16518](https://issues.apache.org/jira/browse/HBASE-16518) | Remove old .arcconfig file |  Trivial | tooling | Gary Helmling | Gary Helmling |
| [HBASE-16591](https://issues.apache.org/jira/browse/HBASE-16591) | Add a docker file only contains java 8 for running pre commit on master |  Blocker | build | Duo Zhang | Duo Zhang |
| [HBASE-16567](https://issues.apache.org/jira/browse/HBASE-16567) | Upgrade to protobuf-3.1.x |  Critical | Protobufs | stack | stack |
| [HBASE-16811](https://issues.apache.org/jira/browse/HBASE-16811) | Remove mob sweep job |  Minor | . | Appy | Appy |
| [HBASE-16952](https://issues.apache.org/jira/browse/HBASE-16952) | Replace hadoop-maven-plugins with protobuf-maven-plugin for building protos |  Major | build | stack | stack |
| [HBASE-16413](https://issues.apache.org/jira/browse/HBASE-16413) | Add apache-hbase.slack.com #users channel to ref guide |  Minor | documentation | Dima Spivak | stack |
| [HBASE-16955](https://issues.apache.org/jira/browse/HBASE-16955) | Fixup precommit protoc check to do new distributed protos and pb 3.1.0 build |  Major | build, Protobufs | stack | stack |
| [HBASE-17046](https://issues.apache.org/jira/browse/HBASE-17046) | Add 1.1 doc to hbase.apache.org |  Major | site | stack | stack |
| [HBASE-16335](https://issues.apache.org/jira/browse/HBASE-16335) | update to latest apache parent pom |  Major | build, dependencies | Sean Busbey | Jan Hentschel |
| [HBASE-17121](https://issues.apache.org/jira/browse/HBASE-17121) | Undo the building of xref as part of site build |  Major | . | stack | stack |
| [HBASE-17272](https://issues.apache.org/jira/browse/HBASE-17272) | Doc how to run Standalone HBase over an HDFS instance; all daemons in one JVM but persisting to an HDFS instance |  Major | documentation | stack | stack |
| [HBASE-16869](https://issues.apache.org/jira/browse/HBASE-16869) | Typo in "Disabling Blockcache" doc |  Trivial | documentation | Clément Guillaume | Jan Hentschel |
| [HBASE-17397](https://issues.apache.org/jira/browse/HBASE-17397) | AggregationClient cleanup |  Minor | . | stack | stack |
| [HBASE-17401](https://issues.apache.org/jira/browse/HBASE-17401) | Remove unnecessary semicolons in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-16710](https://issues.apache.org/jira/browse/HBASE-16710) | Add ZStandard Codec to Compression.java |  Minor | . | churro morales | churro morales |
| [HBASE-17502](https://issues.apache.org/jira/browse/HBASE-17502) | Document hadoop pre-2.6.1 and Java 1.8 Kerberos problem in our hadoop support matrix |  Major | . | Jerry He | Jerry He |
| [HBASE-16812](https://issues.apache.org/jira/browse/HBASE-16812) | Clean up the locks in MOB |  Minor | mob | Appy | Jingcheng Du |
| [HBASE-17609](https://issues.apache.org/jira/browse/HBASE-17609) | Allow for region merging in the UI |  Major | . | churro morales | churro morales |
| [HBASE-17618](https://issues.apache.org/jira/browse/HBASE-17618) | Refactor the implementation of modify table and delete column in MOB |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-17782](https://issues.apache.org/jira/browse/HBASE-17782) | Extend IdReadWriteLock to support using both weak and soft reference |  Major | . | Yu Li | Yu Li |
| [HBASE-17802](https://issues.apache.org/jira/browse/HBASE-17802) | Add note that minor versions can add methods to Interfaces |  Major | documentation | stack | stack |
| [HBASE-17834](https://issues.apache.org/jira/browse/HBASE-17834) | close stale github PRs |  Minor | community | Sean Busbey | Sean Busbey |
| [HBASE-17847](https://issues.apache.org/jira/browse/HBASE-17847) | update documentation to include positions on recent Hadoop releases |  Critical | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-16215](https://issues.apache.org/jira/browse/HBASE-16215) | clean up references for EOM release lines |  Major | community, website | Sean Busbey | Sean Busbey |
| [HBASE-17828](https://issues.apache.org/jira/browse/HBASE-17828) | Revisit the IS annotation and the documentation |  Critical | API | Duo Zhang | Duo Zhang |
| [HBASE-17965](https://issues.apache.org/jira/browse/HBASE-17965) | Canary tool should print the regionserver name on failure |  Minor | . | churro morales | Karan Mehta |
| [HBASE-17968](https://issues.apache.org/jira/browse/HBASE-17968) | Update copyright year in NOTICE file |  Trivial | build | Nick Dimiduk | Josh Elser |
| [HBASE-13074](https://issues.apache.org/jira/browse/HBASE-13074) | Cleaned up usage of hbase.master.lease.thread.wakefrequency |  Trivial | wal | Sunil | Jan Hentschel |
| [HBASE-18096](https://issues.apache.org/jira/browse/HBASE-18096) | Limit HFileUtil visibility and add missing annotations |  Trivial | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18187](https://issues.apache.org/jira/browse/HBASE-18187) | Release hbase-2.0.0-alpha1 |  Major | . | stack | stack |
| [HBASE-17898](https://issues.apache.org/jira/browse/HBASE-17898) | Update dependencies |  Critical | . | stack | Balazs Meszaros |
| [HBASE-12794](https://issues.apache.org/jira/browse/HBASE-12794) | Guidelines for filing JIRA issues |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-16825](https://issues.apache.org/jira/browse/HBASE-16825) | Backup mega patch: Review 52748 work |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18364](https://issues.apache.org/jira/browse/HBASE-18364) | Downgrade surefire |  Major | . | Josh Elser | Josh Elser |
| [HBASE-16728](https://issues.apache.org/jira/browse/HBASE-16728) | Add hadoop.profile=3.0 pass to precommit checks. |  Major | build, hadoop3 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-18465](https://issues.apache.org/jira/browse/HBASE-18465) | [AMv2] remove old split region code that is no longer needed |  Major | Admin, rpc | Yi Liang | Yi Liang |
| [HBASE-15141](https://issues.apache.org/jira/browse/HBASE-15141) | Procedure V2 - Web UI |  Blocker | proc-v2, UI | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16100](https://issues.apache.org/jira/browse/HBASE-16100) | Procedure V2 - Tools |  Minor | proc-v2, tooling | Appy | Appy |
| [HBASE-18514](https://issues.apache.org/jira/browse/HBASE-18514) | Backport space quota "phase2" work to branch-2 |  Blocker | . | Josh Elser | Josh Elser |
| [HBASE-18588](https://issues.apache.org/jira/browse/HBASE-18588) | Verify we're using netty .so epolling on linux post HBASE-18271 |  Major | test | stack | stack |
| [HBASE-18582](https://issues.apache.org/jira/browse/HBASE-18582) | Correct the docs for Mutation#setCellVisibility |  Minor | documentation | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-18544](https://issues.apache.org/jira/browse/HBASE-18544) | Move the HRegion#addRegionToMETA to TestDefaultMemStore |  Minor | regionserver | Chia-Ping Tsai | ChunHao |
| [HBASE-18623](https://issues.apache.org/jira/browse/HBASE-18623) | Frequent failed to parse at EOF warnings from WALEntryStream |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18660](https://issues.apache.org/jira/browse/HBASE-18660) | Remove duplicate code from the checkAndPut method in HTable |  Trivial | . | Yun Zhao | Yun Zhao |
| [HBASE-17614](https://issues.apache.org/jira/browse/HBASE-17614) | Move Backup/Restore into separate module |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18670](https://issues.apache.org/jira/browse/HBASE-18670) | Add .DS\_Store to .gitignore |  Minor | community | Chia-Ping Tsai | Deon Huang |
| [HBASE-18611](https://issues.apache.org/jira/browse/HBASE-18611) | Copy all tests from o.a.h.h.p.TestProtobufUtil to o.a.h.h.s.p.TestProtobufUtil |  Minor | Protobufs, test | Chia-Ping Tsai | ChunHao |
| [HBASE-17967](https://issues.apache.org/jira/browse/HBASE-17967) | clean up documentation references to -ROOT- table. |  Minor | documentation | Sean Busbey | Chia-Ping Tsai |
| [HBASE-10504](https://issues.apache.org/jira/browse/HBASE-10504) | Define Replication Interface |  Blocker | Replication | stack | Enis Soztutar |
| [HBASE-18991](https://issues.apache.org/jira/browse/HBASE-18991) | Remove RegionMergeRequest |  Trivial | . | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-19217](https://issues.apache.org/jira/browse/HBASE-19217) | Update supplemental-models.xml for jetty-sslengine |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-15042](https://issues.apache.org/jira/browse/HBASE-15042) | refactor so that site materials are in the Standard Maven Place |  Minor | build, website | Sean Busbey | Jan Hentschel |


