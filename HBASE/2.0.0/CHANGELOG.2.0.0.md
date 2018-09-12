
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

## Release 2.0.0 - 2018-04-29

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4072](https://issues.apache.org/jira/browse/HBASE-4072) | Deprecate/disable and remove support for reading ZooKeeper zoo.cfg files from the classpath |  Major | . | stack | Harsh J |
| [HBASE-11556](https://issues.apache.org/jira/browse/HBASE-11556) | Move HTablePool to hbase-thrift module. |  Major | Thrift | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12048](https://issues.apache.org/jira/browse/HBASE-12048) | Remove deprecated APIs from Filter |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-12084](https://issues.apache.org/jira/browse/HBASE-12084) | Remove deprecated APIs from Result |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-12111](https://issues.apache.org/jira/browse/HBASE-12111) | Remove deprecated APIs from Mutation(s) |  Major | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-10378](https://issues.apache.org/jira/browse/HBASE-10378) | Divide HLog interface into User and Implementor specific interfaces |  Major | wal | Himanshu Vashishtha | Sean Busbey |
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
| [HBASE-15290](https://issues.apache.org/jira/browse/HBASE-15290) | Hbase Rest CheckAndAPI should save other cells along with compared cell |  Major | . | Ajith |  |
| [HBASE-15376](https://issues.apache.org/jira/browse/HBASE-15376) | ScanNext metric is size-based while every other per-operation metric is time based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-15377](https://issues.apache.org/jira/browse/HBASE-15377) | Per-RS Get metric is time based, per-region metric is size-based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | Hbase Rest CheckAndDeleteAPi should be able to delete more cells |  Major | . | Ajith | Ajith |
| [HBASE-15265](https://issues.apache.org/jira/browse/HBASE-15265) | Implement an asynchronous FSHLog |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-11393](https://issues.apache.org/jira/browse/HBASE-11393) | Replication TableCfs should be a PB object rather than a string |  Major | Replication | Enis Soztutar | Heng Chen |
| [HBASE-15521](https://issues.apache.org/jira/browse/HBASE-15521) | Procedure V2 - RestoreSnapshot and CloneSnapshot |  Major | Client, master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15568](https://issues.apache.org/jira/browse/HBASE-15568) | Procedure V2 - Remove CreateTableHandler in HBase Apache 2.0 release |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15481](https://issues.apache.org/jira/browse/HBASE-15481) | Add pre/post roll to WALObserver |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15575](https://issues.apache.org/jira/browse/HBASE-15575) | Rename table DDL \*Handler methods in MasterObserver to more meaningful names |  Minor | Coprocessors | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15876](https://issues.apache.org/jira/browse/HBASE-15876) | Remove doBulkLoad(Path hfofDir, final HTable table) though it has not been through a full deprecation cycle |  Blocker | . | stack | Jurriaan Mous |
| [HBASE-15610](https://issues.apache.org/jira/browse/HBASE-15610) | Remove deprecated HConnection for 2.0 thus removing all PB references for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | Jurriaan Mous |
| [HBASE-15875](https://issues.apache.org/jira/browse/HBASE-15875) | Remove HTable references and HTableInterface |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15971](https://issues.apache.org/jira/browse/HBASE-15971) | Regression: Random Read/WorkloadC slower in 1.x than 0.98 |  Critical | rpc | stack | stack |
| [HBASE-15950](https://issues.apache.org/jira/browse/HBASE-15950) | Fix memstore size estimates to be more tighter |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13823](https://issues.apache.org/jira/browse/HBASE-13823) | Procedure V2: unnecessaery operations on AssignmentManager#recoverTableInDisablingState() and recoverTableInEnablingState() |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
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
| [HBASE-18241](https://issues.apache.org/jira/browse/HBASE-18241) | Change client.Table, client.Admin, Region, Store, and HBaseTestingUtility to not use HTableDescriptor or HColumnDescriptor |  Critical | Client | Biju Nair | Chia-Ping Tsai |
| [HBASE-18267](https://issues.apache.org/jira/browse/HBASE-18267) | The result from the postAppend is ignored |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18161](https://issues.apache.org/jira/browse/HBASE-18161) | Incremental Load support for Multiple-Table HFileOutputFormat |  Minor | . | Densel Santhmayor | Densel Santhmayor |
| [HBASE-17908](https://issues.apache.org/jira/browse/HBASE-17908) | Upgrade guava |  Critical | dependencies | Balazs Meszaros | stack |
| [HBASE-18374](https://issues.apache.org/jira/browse/HBASE-18374) | RegionServer Metrics improvements |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-18502](https://issues.apache.org/jira/browse/HBASE-18502) | Change MasterObserver to use TableDescriptor and ColumnFamilyDescriptor |  Critical | Coprocessors, master | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18517](https://issues.apache.org/jira/browse/HBASE-18517) | limit max log message width in log4j |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-17125](https://issues.apache.org/jira/browse/HBASE-17125) | Inconsistent result when use filter to read data |  Critical | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18500](https://issues.apache.org/jira/browse/HBASE-18500) | Performance issue: Don't use BufferedMutator for HTable's put method |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18469](https://issues.apache.org/jira/browse/HBASE-18469) | Correct  RegionServer metric of  totalRequestCount |  Critical | metrics, regionserver | Shibin Zhang | Yu Li |
| [HBASE-18528](https://issues.apache.org/jira/browse/HBASE-18528) | DON'T allow user to modify the passed table/column descriptor |  Critical | Coprocessors, master | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18511](https://issues.apache.org/jira/browse/HBASE-18511) | Default no regions on master |  Blocker | master | stack | stack |
| [HBASE-17442](https://issues.apache.org/jira/browse/HBASE-17442) | Move most of the replication related classes from hbase-client to hbase-replication package |  Critical | build, Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18546](https://issues.apache.org/jira/browse/HBASE-18546) | Always overwrite the TS for Append/Increment unless no existing cells are found |  Critical | API, Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15982](https://issues.apache.org/jira/browse/HBASE-15982) | Interface ReplicationEndpoint extends Guava's Service |  Blocker | . | Andrew Purtell | stack |
| [HBASE-3935](https://issues.apache.org/jira/browse/HBASE-3935) | HServerLoad.storefileIndexSizeMB should be changed to storefileIndexSizeKB |  Major | . | Ted Yu | Andy Yang |
| [HBASE-18577](https://issues.apache.org/jira/browse/HBASE-18577) | shaded client includes several non-relocated third party dependencies |  Critical | Client | Sean Busbey | Sean Busbey |
| [HBASE-18736](https://issues.apache.org/jira/browse/HBASE-18736) | Cleanup the HTD/HCD for Admin |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15607](https://issues.apache.org/jira/browse/HBASE-15607) | Remove PB references from Admin for 2.0 |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18704](https://issues.apache.org/jira/browse/HBASE-18704) | Upgrade hbase to commons-collections 4 |  Major | dependencies | Peter Somogyi | Peter Somogyi |
| [HBASE-18780](https://issues.apache.org/jira/browse/HBASE-18780) | Remove HLogPrettyPrinter and hlog command |  Minor | documentation, wal | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18106](https://issues.apache.org/jira/browse/HBASE-18106) | Redo ProcedureInfo and LockInfo |  Critical | proc-v2 | stack | Balazs Meszaros |
| [HBASE-18783](https://issues.apache.org/jira/browse/HBASE-18783) | Declare the builder of ClusterStatus as IA.Private, and remove the Writables from ClusterStatus |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16479](https://issues.apache.org/jira/browse/HBASE-16479) | Move WALEdit from hbase.regionserver.wal package to hbase.wal package |  Major | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-18733](https://issues.apache.org/jira/browse/HBASE-18733) | [compat 1-2] Hide WALKey |  Major | API | stack | Sean Busbey |
| [HBASE-18793](https://issues.apache.org/jira/browse/HBASE-18793) | Remove deprecated methods in RegionObserver |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-17823](https://issues.apache.org/jira/browse/HBASE-17823) | Migrate to Apache Yetus Audience Annotations |  Major | API | Sean Busbey | Sean Busbey |
| [HBASE-18794](https://issues.apache.org/jira/browse/HBASE-18794) | Remove deprecated methods in MasterObserver |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18453](https://issues.apache.org/jira/browse/HBASE-18453) | CompactionRequest should not be exposed to user directly |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18798](https://issues.apache.org/jira/browse/HBASE-18798) | Remove the unused methods in RegionServerObserver |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18446](https://issues.apache.org/jira/browse/HBASE-18446) | Mark StoreFileScanner/StoreFileReader as IA.LimitedPrivate(Phoenix) |  Critical | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18142](https://issues.apache.org/jira/browse/HBASE-18142) | Deletion of a cell deletes the previous versions too |  Major | API, shell | Karthick | ChunHao |
| [HBASE-18825](https://issues.apache.org/jira/browse/HBASE-18825) | Use HStoreFile instead of StoreFile in our own code base and remove unnecessary methods in StoreFile interface |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18731](https://issues.apache.org/jira/browse/HBASE-18731) | [compat 1-2] Mark protected methods of QuotaSettings that touch Protobuf internals as IA.Private |  Major | API | stack | Sean Busbey |
| [HBASE-18859](https://issues.apache.org/jira/browse/HBASE-18859) | Purge PB from BulkLoadObserver |  Major | Coprocessors | stack | stack |
| [HBASE-16769](https://issues.apache.org/jira/browse/HBASE-16769) | Deprecate/remove PB references from MasterObserver and RegionServerObserver |  Blocker | . | Anoop Sam John | Anoop Sam John |
| [HBASE-18298](https://issues.apache.org/jira/browse/HBASE-18298) | RegionServerServices Interface cleanup for CP expose |  Critical | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-17732](https://issues.apache.org/jira/browse/HBASE-17732) | Coprocessor Design Improvements |  Critical | Coprocessors | Appy | Appy |
| [HBASE-18826](https://issues.apache.org/jira/browse/HBASE-18826) | Use HStore instead of Store in our own code base and remove unnecessary methods in Store interface |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18839](https://issues.apache.org/jira/browse/HBASE-18839) | Apply RegionInfo to code base |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18883](https://issues.apache.org/jira/browse/HBASE-18883) | Upgrade to Curator 4.0 |  Major | Client, dependencies | Mike Drob | Mike Drob |
| [HBASE-18897](https://issues.apache.org/jira/browse/HBASE-18897) | Substitute MemStore for Memstore |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18649](https://issues.apache.org/jira/browse/HBASE-18649) | Deprecate KV Usage in MR to move to Cells in 3.0 |  Major | API, mapreduce | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18878](https://issues.apache.org/jira/browse/HBASE-18878) | Use Optional\<T\> return types when T can be null |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18183](https://issues.apache.org/jira/browse/HBASE-18183) | Region interface cleanup for CP expose |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-14247](https://issues.apache.org/jira/browse/HBASE-14247) | Separate the old WALs into different regionserver directories |  Critical | wal | Liu Shaohui | Guanghao Zhang |
| [HBASE-19001](https://issues.apache.org/jira/browse/HBASE-19001) | Remove the hooks in RegionObserver which are designed to construct a StoreScanner which is marked as IA.Private |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19046](https://issues.apache.org/jira/browse/HBASE-19046) | RegionObserver#postCompactSelection  Avoid passing shaded ImmutableList param |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18989](https://issues.apache.org/jira/browse/HBASE-18989) | Polish the compaction related CP hooks |  Major | Compaction, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19067](https://issues.apache.org/jira/browse/HBASE-19067) | Do not expose getHDFSBlockDistribution in StoreFile |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18893](https://issues.apache.org/jira/browse/HBASE-18893) | Remove Add/Modify/DeleteColumnFamilyProcedure in favor of using ModifyTableProcedure |  Major | Coprocessors, master | Mike Drob | Mike Drob |
| [HBASE-18410](https://issues.apache.org/jira/browse/HBASE-18410) | FilterList  Improvement. |  Major | Filters | Zheng Hu | Zheng Hu |
| [HBASE-18905](https://issues.apache.org/jira/browse/HBASE-18905) | Allow CPs to request flush on Region and know the completion of the requested flush |  Major | Coprocessors | Anoop Sam John | Duo Zhang |
| [HBASE-19047](https://issues.apache.org/jira/browse/HBASE-19047) | CP exposed Scanner types should not extend Shipper |  Critical | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19033](https://issues.apache.org/jira/browse/HBASE-19033) | Allow CP users to change versions and TTL before opening StoreScanner |  Blocker | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19187](https://issues.apache.org/jira/browse/HBASE-19187) | Remove option to create on heap bucket cache |  Minor | regionserver | Biju Nair | Anoop Sam John |
| [HBASE-19092](https://issues.apache.org/jira/browse/HBASE-19092) | Make Tag IA.LimitedPrivate and expose for CPs |  Critical | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19359](https://issues.apache.org/jira/browse/HBASE-19359) | Revisit the default config of hbase client retries number |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19357](https://issues.apache.org/jira/browse/HBASE-19357) | Bucket cache no longer L2 for LRU cache |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-19492](https://issues.apache.org/jira/browse/HBASE-19492) | Add EXCLUDE\_NAMESPACE and EXCLUDE\_TABLECFS support to replication peer config |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | Add proper privilege check for rsgroup commands |  Major | rsgroup, security | Ted Yu | Guangxu Cheng |
| [HBASE-19783](https://issues.apache.org/jira/browse/HBASE-19783) | Change replication peer cluster key/endpoint from a not-null value to null is not allowed |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19873](https://issues.apache.org/jira/browse/HBASE-19873) | Add a CategoryBasedTimeout ClassRule for all UTs |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19437](https://issues.apache.org/jira/browse/HBASE-19437) | Batch operation can't handle the null result for Append/Increment |  Critical | Usability | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20119](https://issues.apache.org/jira/browse/HBASE-20119) | Introduce a pojo class to carry coprocessor information in order to make TableDescriptorBuilder accept multiple cp at once |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19504](https://issues.apache.org/jira/browse/HBASE-19504) | Add TimeRange support into checkAndMutate |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19128](https://issues.apache.org/jira/browse/HBASE-19128) | Purge Distributed Log Replay from codebase, configurations, text; mark the feature as unsupported, broken. |  Major | documentation | stack | Appy |
| [HBASE-16459](https://issues.apache.org/jira/browse/HBASE-16459) | Remove unused hbase shell --format option |  Trivial | shell | Dima Spivak | Dima Spivak |
| [HBASE-20276](https://issues.apache.org/jira/browse/HBASE-20276) | [shell] Revert shell REPL change and document |  Blocker | documentation, shell | Sean Busbey | Sean Busbey |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15125](https://issues.apache.org/jira/browse/HBASE-15125) | HBaseFsck's adoptHdfsOrphan function creates region with wrong end key boundary |  Major | hbck | chenrongwei | chenrongwei |
| [HBASE-15322](https://issues.apache.org/jira/browse/HBASE-15322) | Operations using Unsafe path broken for platforms not having sun.misc.Unsafe |  Critical | . | Anant Sharma | Anoop Sam John |
| [HBASE-15780](https://issues.apache.org/jira/browse/HBASE-15780) | Expose AuthUtil as IA.Public |  Critical | API, security | Sean Busbey | Sean Busbey |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5162](https://issues.apache.org/jira/browse/HBASE-5162) | Basic client pushback mechanism |  Major | . | Jean-Daniel Cryans | Jesse Yates |
| [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | Add support for Scan.setRowPrefixFilter to shell |  Major | shell | Niels Basjes | Niels Basjes |
| [HBASE-12944](https://issues.apache.org/jira/browse/HBASE-12944) | Support patches to branches in precommit jenkins build |  Major | . | Enis Soztutar | Enis Soztutar |
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
| [HBASE-6721](https://issues.apache.org/jira/browse/HBASE-6721) | RegionServer Group based Assignment |  Major | regionserver | Francis Liu | Francis Liu |
| [HBASE-15592](https://issues.apache.org/jira/browse/HBASE-15592) | Print Procedure WAL content |  Major | . | Jerry He | Jerry He |
| [HBASE-15281](https://issues.apache.org/jira/browse/HBASE-15281) | Allow the FileSystem inside HFileSystem to be wrapped |  Major | Filesystem Integration | Rajesh Nishtala | Rajesh Nishtala |
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
| [HBASE-13784](https://issues.apache.org/jira/browse/HBASE-13784) | Add Async Client Table API |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-18226](https://issues.apache.org/jira/browse/HBASE-18226) | Disable reverse DNS lookup at HMaster and use the hostname provided by RegionServer |  Major | . | Duo Xu | Duo Xu |
| [HBASE-17928](https://issues.apache.org/jira/browse/HBASE-17928) | Shell tool to clear compaction queues |  Major | Compaction, Operability | Guangxu Cheng | Guangxu Cheng |
| [HBASE-15943](https://issues.apache.org/jira/browse/HBASE-15943) | Add page displaying JVM process metrics |  Major | Operability, UI | Samir Ahmic | Samir Ahmic |
| [HBASE-15968](https://issues.apache.org/jira/browse/HBASE-15968) | New behavior of versions considering mvcc and ts rather than ts only |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15134](https://issues.apache.org/jira/browse/HBASE-15134) | Add visibility into Flush and Compaction queues |  Major | Compaction, metrics, regionserver | Elliott Clark | Abhishek Singh Chouhan |
| [HBASE-14135](https://issues.apache.org/jira/browse/HBASE-14135) | HBase Backup/Restore Phase 3: Merge backup images |  Critical | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15806](https://issues.apache.org/jira/browse/HBASE-15806) | An endpoint-based export tool |  Critical | Coprocessors, tooling | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18131](https://issues.apache.org/jira/browse/HBASE-18131) | Add an hbase shell command to clear deadserver list in ServerManager |  Major | Operability | Yu Li | Guangxu Cheng |
| [HBASE-14417](https://issues.apache.org/jira/browse/HBASE-14417) | Incremental backup and bulk loading |  Blocker | . | Vladimir Rodionov | Ted Yu |
| [HBASE-18875](https://issues.apache.org/jira/browse/HBASE-18875) | Thrift server supports read-only mode |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18171](https://issues.apache.org/jira/browse/HBASE-18171) | Scanning cursor for async client |  Major | . | Phil Yang | Duo Zhang |
| [HBASE-19103](https://issues.apache.org/jira/browse/HBASE-19103) | Add BigDecimalComparator for filter |  Minor | Client | Qilin Cao | Qilin Cao |
| [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | Ad-hoc test job for running a subset of tests lots of times |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19326](https://issues.apache.org/jira/browse/HBASE-19326) | Remove decommissioned servers from rsgroup |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19799](https://issues.apache.org/jira/browse/HBASE-19799) | Add web UI to rsgroup |  Major | rsgroup, UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-15321](https://issues.apache.org/jira/browse/HBASE-15321) | Ability to open a HRegion from hdfs snapshot. |  Major | . | churro morales | churro morales |
| [HBASE-4224](https://issues.apache.org/jira/browse/HBASE-4224) | Need a flush by regionserver rather than by table option |  Major | . | stack | Chia-Ping Tsai |
| [HBASE-19897](https://issues.apache.org/jira/browse/HBASE-19897) | RowMutations should follow the fluent pattern |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19528](https://issues.apache.org/jira/browse/HBASE-19528) | Major Compaction Tool |  Major | . | churro morales | churro morales |
| [HBASE-19886](https://issues.apache.org/jira/browse/HBASE-19886) | Display maintenance mode in shell, web UI |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-19844](https://issues.apache.org/jira/browse/HBASE-19844) | Shell should support flush by regionserver |  Minor | shell | Chia-Ping Tsai | Reid Chan |
| [HBASE-19950](https://issues.apache.org/jira/browse/HBASE-19950) | Introduce a ColumnValueFilter |  Minor | Filters | Reid Chan | Reid Chan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6580](https://issues.apache.org/jira/browse/HBASE-6580) | Deprecate HTablePool in favor of HConnection.getTable(...) |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11344](https://issues.apache.org/jira/browse/HBASE-11344) | Hide row keys and such from the web UIs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-5696](https://issues.apache.org/jira/browse/HBASE-5696) | Use Hadoop's DataOutputOutputStream instead of have a copy local |  Major | . | stack | Talat UYARER |
| [HBASE-11400](https://issues.apache.org/jira/browse/HBASE-11400) | Edit, consolidate, and update Compression and data encoding docs |  Minor | documentation | Misty Linville | Misty Linville |
| [HBASE-11548](https://issues.apache.org/jira/browse/HBASE-11548) | [PE] Add 'cycling' test N times and unit tests for size/zipf/valueSize calculations |  Trivial | test | stack | stack |
| [HBASE-3135](https://issues.apache.org/jira/browse/HBASE-3135) | Make our MR jobs implement Tool and use ToolRunner so can do -D trickery, etc. |  Major | . | stack | Talat UYARER |
| [HBASE-11585](https://issues.apache.org/jira/browse/HBASE-11585) | PE: Allows warm-up |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-11611](https://issues.apache.org/jira/browse/HBASE-11611) | Clean up ZK-based region assignment |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11760](https://issues.apache.org/jira/browse/HBASE-11760) | Tighten up region state transition |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11862](https://issues.apache.org/jira/browse/HBASE-11862) | Get rid of Writables in HTableDescriptor, HColumnDescriptor |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-6290](https://issues.apache.org/jira/browse/HBASE-6290) | Add a function a mark a server as dead and start the recovery the process |  Minor | monitoring | Nicolas Liochon | Talat UYARER |
| [HBASE-12003](https://issues.apache.org/jira/browse/HBASE-12003) | Fix SecureBulkLoadEndpoint class javadoc formatting |  Trivial | documentation, security | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12195](https://issues.apache.org/jira/browse/HBASE-12195) | Fix dev-support/findHangingTests |  Minor | test | Manukranth Kolloju | Manukranth Kolloju |
| [HBASE-12220](https://issues.apache.org/jira/browse/HBASE-12220) | Add hedgedReads and hedgedReadWins metrics |  Major | . | stack | stack |
| [HBASE-12251](https://issues.apache.org/jira/browse/HBASE-12251) | [book] Hadoop compat matrix 0.94 section needs cleaned up |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12207](https://issues.apache.org/jira/browse/HBASE-12207) | A script to help keep your Git repo fresh |  Major | documentation, scripts | Misty Linville | Misty Linville |
| [HBASE-11939](https://issues.apache.org/jira/browse/HBASE-11939) | Document compressed blockcache |  Major | documentation | Nick Dimiduk | Misty Linville |
| [HBASE-12559](https://issues.apache.org/jira/browse/HBASE-12559) | Provide LoadBalancer with online configuration capability |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12650](https://issues.apache.org/jira/browse/HBASE-12650) | Move ServerName to hbase-common module |  Blocker | . | Gaurav Menghani | Ted Yu |
| [HBASE-12601](https://issues.apache.org/jira/browse/HBASE-12601) | Explain how to grant/revoke permission to a group/namespace in grant/revoke command usage |  Minor | documentation, security, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | Port 'Make flush decisions per column family' to trunk |  Major | wal | Ted Yu | Duo Zhang |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-12590](https://issues.apache.org/jira/browse/HBASE-12590) | A solution for data skew in HBase-Mapreduce Job |  Major | mapreduce | Weichen Ye | Weichen Ye |
| [HBASE-12429](https://issues.apache.org/jira/browse/HBASE-12429) | Add port to ClusterManager's actions. |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-11869](https://issues.apache.org/jira/browse/HBASE-11869) | Support snapshot owner |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12761](https://issues.apache.org/jira/browse/HBASE-12761) | On region jump ClientScanners should get next row start key instead of a skip. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12796](https://issues.apache.org/jira/browse/HBASE-12796) | Clean up HTable and HBaseAdmin deprecated constructor usage |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12839](https://issues.apache.org/jira/browse/HBASE-12839) | Remove synchronization in ServerStatisticsTracker |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | Filter to support scanning multiple row key ranges |  Major | Filters | Jiajia Li | Jiajia Li |
| [HBASE-7541](https://issues.apache.org/jira/browse/HBASE-7541) | Convert all tests that use HBaseTestingUtility.createMultiRegions to HBA.createTable |  Major | . | Jean-Daniel Cryans | Jonathan Lawlor |
| [HBASE-12620](https://issues.apache.org/jira/browse/HBASE-12620) | Add HBASE-11639 related items to Ref Guide |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12840](https://issues.apache.org/jira/browse/HBASE-12840) | Improve unit test coverage of the client pushback mechanism |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12887](https://issues.apache.org/jira/browse/HBASE-12887) | Cleanup many checkstyle errors in o.a.h.h.client |  Minor | build, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12896](https://issues.apache.org/jira/browse/HBASE-12896) | checkstyle report diff tool |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12627](https://issues.apache.org/jira/browse/HBASE-12627) | Add back snapshot batching facility from HBASE-11360 dropped by HBASE-11742 |  Major | master, scaling | stack | churro morales |
| [HBASE-12808](https://issues.apache.org/jira/browse/HBASE-12808) | Use Java API Compliance Checker for binary/source compatibility |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | Limit compaction speed |  Major | Compaction | binlijin | Duo Zhang |
| [HBASE-12957](https://issues.apache.org/jira/browse/HBASE-12957) | region\_mover#isSuccessfulScan may be extremely slow on region with lots of expired data |  Minor | scripts | hongyu bi | hongyu bi |
| [HBASE-12982](https://issues.apache.org/jira/browse/HBASE-12982) | Adding timeouts to TestChoreService |  Major | . | stack | stack |
| [HBASE-12035](https://issues.apache.org/jira/browse/HBASE-12035) | Keep table state in META |  Critical | Client, master | Enis Soztutar | Andrey Stepachev |
| [HBASE-13016](https://issues.apache.org/jira/browse/HBASE-13016) | Clean up remnants of table states stored in table descriptors |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13018](https://issues.apache.org/jira/browse/HBASE-13018) | WALSplitter should not try to get table states while splitting META |  Critical | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | Configuration option for disabling coprocessor loading |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13059](https://issues.apache.org/jira/browse/HBASE-13059) | Set executable bit for scripts in dev-support |  Trivial | scripts | Dima Spivak | Dima Spivak |
| [HBASE-13002](https://issues.apache.org/jira/browse/HBASE-13002) | Make encryption cipher configurable |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13056](https://issues.apache.org/jira/browse/HBASE-13056) | Refactor table.jsp code to remove repeated code and make it easier to add new checks |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13054](https://issues.apache.org/jira/browse/HBASE-13054) | Provide more tracing information for locking/latching events. |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13080](https://issues.apache.org/jira/browse/HBASE-13080) | Hbase shell message containing extra quote at the end of error message. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13086](https://issues.apache.org/jira/browse/HBASE-13086) | Show ZK root node on Master WebUI |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13120](https://issues.apache.org/jira/browse/HBASE-13120) | Allow disabling hadoop classpath and native library lookup |  Major | hadoop2, scripts | Siddharth Wagle | Siddharth Wagle |
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
| [HBASE-13876](https://issues.apache.org/jira/browse/HBASE-13876) | Improving performance of HeapMemoryManager |  Minor | regionserver | Abhilash | Abhilash |
| [HBASE-13917](https://issues.apache.org/jira/browse/HBASE-13917) | Remove string comparison to identify request priority |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13931](https://issues.apache.org/jira/browse/HBASE-13931) | Move Unsafe based operations to UnsafeAccess |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13900](https://issues.apache.org/jira/browse/HBASE-13900) | duplicate methods between ProtobufMagic and ProtobufUtil |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | [ergonomics] add region size balancing as a feature of master |  Major | Balancer, Usability | Nick Dimiduk | Mikhail Antonov |
| [HBASE-14001](https://issues.apache.org/jira/browse/HBASE-14001) | Optimize write(OutputStream out, boolean withTags) for SizeCachedNoTagsKeyValue |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13943](https://issues.apache.org/jira/browse/HBASE-13943) | Get rid of KeyValue#heapSizeWithoutTags |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13670](https://issues.apache.org/jira/browse/HBASE-13670) | [HBase MOB] ExpiredMobFileCleaner tool deletes mob files later for one more day after they are expired |  Major | documentation, mob | Y. SREENIVASULU REDDY | Jingcheng Du |
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
| [HBASE-14058](https://issues.apache.org/jira/browse/HBASE-14058) | Stabilizing default heap memory tuner |  Major | regionserver | Abhilash | Abhilash |
| [HBASE-14151](https://issues.apache.org/jira/browse/HBASE-14151) | Remove the unnecessary file ProtobufUtil.java.rej which is brought in by merging hbase-11339 |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-14152](https://issues.apache.org/jira/browse/HBASE-14152) | Fix the warnings in Checkstyle and FindBugs brought in by merging hbase-11339 |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-14097](https://issues.apache.org/jira/browse/HBASE-14097) | Log link to client scan troubleshooting section when scanner exceptions happen. |  Trivial | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14164](https://issues.apache.org/jira/browse/HBASE-14164) | Display primary region replicas distribution on table.jsp |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-13965](https://issues.apache.org/jira/browse/HBASE-13965) | Stochastic Load Balancer JMX Metrics |  Major | Balancer, metrics | Lei Chen | Lei Chen |
| [HBASE-12256](https://issues.apache.org/jira/browse/HBASE-12256) | Update patch submission guidelines to call out binary file support |  Minor | documentation | Sean Busbey | Misty Linville |
| [HBASE-14194](https://issues.apache.org/jira/browse/HBASE-14194) | Undeprecate methods in ThriftServerRunner.HBaseHandler |  Trivial | . | Lars Francke | Lars Francke |
| [HBASE-14122](https://issues.apache.org/jira/browse/HBASE-14122) | Client API for determining if server side supports cell level security |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | Add configuration to skip validating HFile format when bulk loading |  Minor | . | Victor Xu | Victor Xu |
| [HBASE-12812](https://issues.apache.org/jira/browse/HBASE-12812) | Update Netty dependency to latest release |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-13914](https://issues.apache.org/jira/browse/HBASE-13914) | Minor improvements to dev-support/publish\_hbase\_website.sh |  Minor | website | Nick Dimiduk | Nick Dimiduk |
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
| [HBASE-13742](https://issues.apache.org/jira/browse/HBASE-13742) | buildbot should run link checker over book |  Major | documentation | Nick Dimiduk | Misty Linville |
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
| [HBASE-13425](https://issues.apache.org/jira/browse/HBASE-13425) | Documentation nit in REST Gateway impersonation section |  Minor | documentation | Jeremie Gomez | Misty Linville |
| [HBASE-14984](https://issues.apache.org/jira/browse/HBASE-14984) | Allow memcached block cache to set optimze to false |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14951](https://issues.apache.org/jira/browse/HBASE-14951) | Make hbase.regionserver.maxlogs obsolete |  Minor | Performance, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14780](https://issues.apache.org/jira/browse/HBASE-14780) | Integration Tests that run with ChaosMonkey need to specify CFs |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14978](https://issues.apache.org/jira/browse/HBASE-14978) | Don't allow Multi to retain too many blocks |  Blocker | io, IPC/RPC, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-15005](https://issues.apache.org/jira/browse/HBASE-15005) | Use value array in computing block length for 1.2 and 1.3 |  Major | regionserver | Elliott Clark | Elliott Clark |
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
| [HBASE-11792](https://issues.apache.org/jira/browse/HBASE-11792) | Organize PerformanceEvaluation usage output |  Minor | Performance, test | Nick Dimiduk | Misty Linville |
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
| [HBASE-15470](https://issues.apache.org/jira/browse/HBASE-15470) | Add a setting for Priority queue length |  Major | IPC/RPC, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-12940](https://issues.apache.org/jira/browse/HBASE-12940) | Expose listPeerConfigs and getPeerConfig to the HBase shell |  Major | shell | Kevin Risden | Geoffrey Jacoby |
| [HBASE-15456](https://issues.apache.org/jira/browse/HBASE-15456) | CreateTableProcedure/ModifyTableProcedure needs to fail when there is no family in table descriptor |  Minor | master | huaxiang sun | huaxiang sun |
| [HBASE-15451](https://issues.apache.org/jira/browse/HBASE-15451) | Remove unnecessary wait in MVCC |  Major | . | Yu Li | Yu Li |
| [HBASE-14963](https://issues.apache.org/jira/browse/HBASE-14963) | Remove use of Guava Stopwatch from HBase client code |  Major | Client | Devaraj Das | Devaraj Das |
| [HBASE-15478](https://issues.apache.org/jira/browse/HBASE-15478) | add comments to FSHLog explaining why syncRunnerIndex won't overflow |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-15447](https://issues.apache.org/jira/browse/HBASE-15447) | Improve javadocs description for Delete methods |  Minor | API, documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-15212](https://issues.apache.org/jira/browse/HBASE-15212) | RPCServer should enforce max request size |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15475](https://issues.apache.org/jira/browse/HBASE-15475) | Allow TimestampsFilter to provide a seek hint |  Major | Client, Filters, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14703](https://issues.apache.org/jira/browse/HBASE-14703) | HTable.mutateRow does not collect stats |  Major | Client | Heng Chen | Heng Chen |
| [HBASE-15300](https://issues.apache.org/jira/browse/HBASE-15300) | Upgrade to zookeeper 3.4.8 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15486](https://issues.apache.org/jira/browse/HBASE-15486) | Avoid multiple disable/enable balancer calls while running rolling-restart.sh --graceful |  Minor | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-15526](https://issues.apache.org/jira/browse/HBASE-15526) | Make SnapshotManager accessible through MasterServices |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15496](https://issues.apache.org/jira/browse/HBASE-15496) | Throw RowTooBigException only for user scan/get |  Minor | Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15508](https://issues.apache.org/jira/browse/HBASE-15508) | Add command for exporting snapshot in hbase command script |  Minor | scripts, snapshots | Yufeng Jiang | Yufeng Jiang |
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
| [HBASE-13129](https://issues.apache.org/jira/browse/HBASE-13129) | Add troubleshooting hints around WAL retention from replication |  Major | documentation, Replication | Sean Busbey | Misty Linville |
| [HBASE-15614](https://issues.apache.org/jira/browse/HBASE-15614) | Report metrics from JvmPauseMonitor |  Major | metrics, regionserver | Nick Dimiduk | Andrew Purtell |
| [HBASE-15641](https://issues.apache.org/jira/browse/HBASE-15641) | Shell "alter" should do a single modifyTable operation |  Major | shell | Gary Helmling | Matt Warhaftig |
| [HBASE-15688](https://issues.apache.org/jira/browse/HBASE-15688) | Use MasterServices directly instead of casting to HMaster when possible |  Trivial | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15680](https://issues.apache.org/jira/browse/HBASE-15680) | Examples in shell help message for TIMERANGE scanner specifications should use milliseconds instead of seconds |  Trivial | shell | Li Fanxi |  |
| [HBASE-15686](https://issues.apache.org/jira/browse/HBASE-15686) | Add override mechanism for the exempt classes when dynamically loading table coprocessor |  Major | Coprocessors | Sangjin Lee | Ted Yu |
| [HBASE-15706](https://issues.apache.org/jira/browse/HBASE-15706) | HFilePrettyPrinter should print out nicely formatted tags |  Minor | HFile | huaxiang sun | huaxiang sun |
| [HBASE-15551](https://issues.apache.org/jira/browse/HBASE-15551) | Make call queue too big exception use servername |  Minor | . | Elliott Clark | Mikhail Antonov |
| [HBASE-15744](https://issues.apache.org/jira/browse/HBASE-15744) | Port over small format/text improvements from HBASE-13784 |  Trivial | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | Print row locks at the debug dump page |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15768](https://issues.apache.org/jira/browse/HBASE-15768) | fix capitalization of ZooKeeper usage |  Trivial | documentation | Alex Moundalexis | Alex Moundalexis |
| [HBASE-15767](https://issues.apache.org/jira/browse/HBASE-15767) | Upgrade httpclient dependency |  Major | build, dependencies | Ted Yu | Ted Yu |
| [HBASE-15608](https://issues.apache.org/jira/browse/HBASE-15608) | Remove PB references from SnapShot related Exceptions |  Blocker | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-15759](https://issues.apache.org/jira/browse/HBASE-15759) | RegionObserver.preStoreScannerOpen() doesn't have acces to current readpoint |  Minor | Coprocessors | Marek Srank | Ted Yu |
| [HBASE-15773](https://issues.apache.org/jira/browse/HBASE-15773) | CellCounter improvements |  Major | mapreduce | Gary Helmling | Gary Helmling |
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
| [HBASE-16026](https://issues.apache.org/jira/browse/HBASE-16026) | Master UI should display status of additional ZK switches |  Major | . | Mikhail Antonov | Mikhail Antonov |
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
| [HBASE-16147](https://issues.apache.org/jira/browse/HBASE-16147) | Shell command for getting compaction state |  Major | shell | Ted Yu | Ted Yu |
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
| [HBASE-16772](https://issues.apache.org/jira/browse/HBASE-16772) | Add verbose option to VerifyReplication for logging good rows |  Minor | Replication, Usability | Ted Yu | Ted Yu |
| [HBASE-16657](https://issues.apache.org/jira/browse/HBASE-16657) | Expose per-region last major compaction timestamp in RegionServer UI |  Minor | regionserver, UI | Gary Helmling | Dustin Pho |
| [HBASE-16773](https://issues.apache.org/jira/browse/HBASE-16773) | AccessController should access local region if possible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16661](https://issues.apache.org/jira/browse/HBASE-16661) | Add last major compaction age to per-region metrics |  Minor | . | Gary Helmling | Dustin Pho |
| [HBASE-16809](https://issues.apache.org/jira/browse/HBASE-16809) | Save one cell length calculation in HeapMemStoreLAB#copyCellInto |  Minor | . | binlijin | binlijin |
| [HBASE-16784](https://issues.apache.org/jira/browse/HBASE-16784) | Make use of ExtendedCell#write(OutputStream os) for the default HFileWriter#append() |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16792](https://issues.apache.org/jira/browse/HBASE-16792) | Reuse KeyValue.KeyOnlyKeyValue in BufferedDataBlockEncoder.SeekerState |  Minor | . | binlijin | binlijin |
| [HBASE-15921](https://issues.apache.org/jira/browse/HBASE-15921) | Add first AsyncTable impl and create TableImpl based on it |  Major | Client | Jurriaan Mous | Duo Zhang |
| [HBASE-16821](https://issues.apache.org/jira/browse/HBASE-16821) | Enhance LoadIncrementalHFiles API to convey missing hfiles if any |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16818](https://issues.apache.org/jira/browse/HBASE-16818) | Avoid multiple copies of binary data during the conversion from Result to Row |  Major | spark | Weiqing Yang | Weiqing Yang |
| [HBASE-16844](https://issues.apache.org/jira/browse/HBASE-16844) |  Procedure V2: DispatchMergingRegionsProcedure to use base class StateMachineProcedure for abort and rollback |  Trivial | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16774](https://issues.apache.org/jira/browse/HBASE-16774) | [shell] Add coverage to TestShell when ZooKeeper is not reachable |  Major | shell, test | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16854](https://issues.apache.org/jira/browse/HBASE-16854) | Refactor the org.apache.hadoop.hbase.client.Action |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16414](https://issues.apache.org/jira/browse/HBASE-16414) | Improve performance for RPC encryption with Apache Common Crypto |  Major | IPC/RPC | Colin Ma | Colin Ma |
| [HBASE-16562](https://issues.apache.org/jira/browse/HBASE-16562) | ITBLL should fail to start if misconfigured |  Major | integration tests | Andrew Purtell | Heng Chen |
| [HBASE-16783](https://issues.apache.org/jira/browse/HBASE-16783) | Use ByteBufferPool for the header and message during Rpc response |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16950](https://issues.apache.org/jira/browse/HBASE-16950) | Print raw stats in the end of procedure performance tools for parsing results from scripts |  Trivial | . | Appy | Appy |
| [HBASE-17014](https://issues.apache.org/jira/browse/HBASE-17014) | Add clearly marked starting and shutdown log messages for all services. |  Minor | Operability | Umesh Agashe | Umesh Agashe |
| [HBASE-17006](https://issues.apache.org/jira/browse/HBASE-17006) | Add names to threads for better debugability of thread dumps |  Minor | Operability | Appy | Appy |
| [HBASE-17013](https://issues.apache.org/jira/browse/HBASE-17013) | Add constructor to RowMutations for initializing the capacity of internal list |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16946](https://issues.apache.org/jira/browse/HBASE-16946) | Provide Raw scan as an option in VerifyReplication |  Minor | . | Sreekar Pallapothu | Sreekar Pallapothu |
| [HBASE-17004](https://issues.apache.org/jira/browse/HBASE-17004) | Refactor IntegrationTestManyRegions to use @ClassRule for timing out |  Minor | integration tests | Appy | Appy |
| [HBASE-17005](https://issues.apache.org/jira/browse/HBASE-17005) | Improve log message in MobFileCache |  Trivial | mob | huaxiang sun | huaxiang sun |
| [HBASE-16840](https://issues.apache.org/jira/browse/HBASE-16840) | Reuse cell's timestamp and type in ScanQueryMatcher |  Minor | . | binlijin | binlijin |
| [HBASE-17026](https://issues.apache.org/jira/browse/HBASE-17026) | VerifyReplication log should distinguish whether good row key is result of revalidation |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17063](https://issues.apache.org/jira/browse/HBASE-17063) | Cleanup TestHRegion : remove duplicate variables for method name and two unused params in initRegion |  Minor | . | Appy | Appy |
| [HBASE-17047](https://issues.apache.org/jira/browse/HBASE-17047) | Add an API to get HBase connection cache statistics |  Minor | spark | Weiqing Yang | Weiqing Yang |
| [HBASE-17077](https://issues.apache.org/jira/browse/HBASE-17077) | Don't copy the replication queue belonging to the peer which has been deleted |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17037](https://issues.apache.org/jira/browse/HBASE-17037) | Enhance LoadIncrementalHFiles API to convey loaded files |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16708](https://issues.apache.org/jira/browse/HBASE-16708) | Expose endpoint Coprocessor name in "responseTooSlow" log messages |  Major | . | Nick Dimiduk | Yi Liang |
| [HBASE-17088](https://issues.apache.org/jira/browse/HBASE-17088) | Refactor RWQueueRpcExecutor/BalancedQueueRpcExecutor/RpcExecutor |  Major | rpc | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17126](https://issues.apache.org/jira/browse/HBASE-17126) | Expose KeyValue#checkParameters() and checkForTagsLength() to be used by other Cell implementations |  Minor | Client, regionserver | Xiang Li | Xiang Li |
| [HBASE-17123](https://issues.apache.org/jira/browse/HBASE-17123) | Add postBulkLoadHFile variant that notifies the final paths for the hfiles |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17129](https://issues.apache.org/jira/browse/HBASE-17129) | Remove public from methods in DataType interface |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-17157](https://issues.apache.org/jira/browse/HBASE-17157) | Increase the default mergeable threshold for mob compaction |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-17176](https://issues.apache.org/jira/browse/HBASE-17176) | Reuse the builder in RequestConverter |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17086](https://issues.apache.org/jira/browse/HBASE-17086) | Add comments to explain why Cell#getTagsLength() returns an int, rather than a short |  Minor | API | Xiang Li | Xiang Li |
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
| [HBASE-17280](https://issues.apache.org/jira/browse/HBASE-17280) | Add mechanism to control hbase cleaner behavior |  Minor | Client, shell | Ajay Jadhav | Ajay Jadhav |
| [HBASE-17605](https://issues.apache.org/jira/browse/HBASE-17605) | Refactor procedure framework code |  Major | proc-v2 | Appy | Appy |
| [HBASE-17637](https://issues.apache.org/jira/browse/HBASE-17637) | Update progress more frequently in IntegrationTestBigLinkedList.Generator.persist |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17627](https://issues.apache.org/jira/browse/HBASE-17627) | Active workers metric for thrift |  Major | Thrift | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17172](https://issues.apache.org/jira/browse/HBASE-17172) | Optimize mob compaction with \_del files |  Major | mob | huaxiang sun | huaxiang sun |
| [HBASE-13718](https://issues.apache.org/jira/browse/HBASE-13718) | Add a pretty printed table description to the table detail page of HBase's master |  Minor | . | Joao Girao | Joao Girao |
| [HBASE-17676](https://issues.apache.org/jira/browse/HBASE-17676) | Get class name once for all in AbstractFSWAL |  Major | Performance | Yu Li | Yu Li |
| [HBASE-17057](https://issues.apache.org/jira/browse/HBASE-17057) | Minor compactions should also drop page cache behind reads |  Major | Compaction | Ashu Pachauri | Ashu Pachauri |
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
| [HBASE-16466](https://issues.apache.org/jira/browse/HBASE-16466) | HBase snapshots support in VerifyReplication tool to reduce load on live HBase cluster with large tables |  Major | . | Sukumar Maddineni | Maddineni Sukumar |
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
| [HBASE-18033](https://issues.apache.org/jira/browse/HBASE-18033) | Update supplemental models for new deps in Hadoop trunk |  Critical | dependencies | Andrew Wang | Mike Drob |
| [HBASE-18252](https://issues.apache.org/jira/browse/HBASE-18252) | Resolve BaseLoadBalancer bad practice warnings |  Minor | . | Qilin Cao | Qilin Cao |
| [HBASE-16351](https://issues.apache.org/jira/browse/HBASE-16351) | do dependency license check via enforcer plugin |  Major | build, dependencies | Sean Busbey | Mike Drob |
| [HBASE-18164](https://issues.apache.org/jira/browse/HBASE-18164) | Much faster locality cost function and candidate generator |  Critical | Balancer | Kahlil Oppenheimer | Kahlil Oppenheimer |
| [HBASE-18275](https://issues.apache.org/jira/browse/HBASE-18275) | Formatting and grammar mistakes in schemadoc chapter |  Trivial | documentation | Artem Ervits | Artem Ervits |
| [HBASE-18041](https://issues.apache.org/jira/browse/HBASE-18041) | Add pylintrc file to HBase |  Major | community | Alex Leblang | Alex Leblang |
| [HBASE-18281](https://issues.apache.org/jira/browse/HBASE-18281) | Performance update in StoreFileWriter.java for string replacement |  Trivial | community | Ben Epstein | Ben Epstein |
| [HBASE-18022](https://issues.apache.org/jira/browse/HBASE-18022) | Refine the error message issued with TableNotFoundException when expected table is not the same as the one fetched from meta |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-17110](https://issues.apache.org/jira/browse/HBASE-17110) | Improve SimpleLoadBalancer to always take server-level balance into account |  Major | Balancer | Charlie Qiangeng Xu | Charlie Qiangeng Xu |
| [HBASE-15756](https://issues.apache.org/jira/browse/HBASE-15756) | Pluggable RpcServer |  Critical | Performance, rpc | binlijin | binlijin |
| [HBASE-13197](https://issues.apache.org/jira/browse/HBASE-13197) | Connection API cleanup |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16585](https://issues.apache.org/jira/browse/HBASE-16585) | Rewrite the delegation token tests with Parameterized pattern |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-15391](https://issues.apache.org/jira/browse/HBASE-15391) | Avoid too large "deleted from META" info log |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-17995](https://issues.apache.org/jira/browse/HBASE-17995) | improve log messages during snapshot related tests |  Trivial | integration tests, mapreduce, snapshots, test | Sean Busbey | Sean Busbey |
| [HBASE-18286](https://issues.apache.org/jira/browse/HBASE-18286) | Create static empty byte array to save memory |  Trivial | community | Ben Epstein | Ben Epstein |
| [HBASE-11707](https://issues.apache.org/jira/browse/HBASE-11707) | Using Map instead of list in FailedServers of RpcClient |  Minor | Client | Liu Shaohui | Liu Shaohui |
| [HBASE-15062](https://issues.apache.org/jira/browse/HBASE-15062) | IntegrationTestMTTR conditionally run some tests |  Minor | integration tests | Samir Ahmic | Samir Ahmic |
| [HBASE-16730](https://issues.apache.org/jira/browse/HBASE-16730) | Exclude junit as a transitive dependency from hadoop-common |  Trivial | . | Nils Larsgård | Jan Hentschel |
| [HBASE-18083](https://issues.apache.org/jira/browse/HBASE-18083) | Make large/small file clean thread number configurable in HFileCleaner |  Major | . | Yu Li | Yu Li |
| [HBASE-18307](https://issues.apache.org/jira/browse/HBASE-18307) | Share the same EventLoopGroup for NettyRpcServer, NettyRpcClient and AsyncFSWALProvider at RS side |  Major | io, rpc, wal | Duo Zhang | Duo Zhang |
| [HBASE-18004](https://issues.apache.org/jira/browse/HBASE-18004) | getRegionLocations  needs to be called once in ScannerCallableWithReplicas#call() |  Minor | Client | huaxiang sun | huaxiang sun |
| [HBASE-18339](https://issues.apache.org/jira/browse/HBASE-18339) | Update test-patch to use hadoop 3.0.0-alpha4 |  Major | test | Mike Drob | Mike Drob |
| [HBASE-18332](https://issues.apache.org/jira/browse/HBASE-18332) | Upgrade asciidoctor-maven-plugin |  Minor | website | Peter Somogyi | Peter Somogyi |
| [HBASE-16312](https://issues.apache.org/jira/browse/HBASE-16312) | update jquery version |  Critical | dependencies, UI | Sean Busbey | Peter Somogyi |
| [HBASE-18412](https://issues.apache.org/jira/browse/HBASE-18412) | [Shell] Support unset of list of configuration for a table |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-18389](https://issues.apache.org/jira/browse/HBASE-18389) | Remove byte[] from formal parameter of sizeOf() of ClassSize, ClassSize.MemoryLayout and ClassSize.UnsafeLayout |  Minor | util | Xiang Li | Xiang Li |
| [HBASE-15816](https://issues.apache.org/jira/browse/HBASE-15816) | Provide client with ability to set priority on Operations |  Major | . | churro morales | churro morales |
| [HBASE-18023](https://issues.apache.org/jira/browse/HBASE-18023) | Log multi-\* requests for more than threshold number of rows |  Minor | regionserver | Clay B. | David Harju |
| [HBASE-18434](https://issues.apache.org/jira/browse/HBASE-18434) | Address some alerts raised by lgtm.com |  Major | . | Malcolm Taylor | Malcolm Taylor |
| [HBASE-18402](https://issues.apache.org/jira/browse/HBASE-18402) | Thrift2 should support  DeleteFamilyVersion type |  Major | Thrift | Zheng Hu | Zheng Hu |
| [HBASE-18261](https://issues.apache.org/jira/browse/HBASE-18261) | [AMv2] Create new RecoverMetaProcedure and use it from ServerCrashProcedure and HMaster.finishActiveMasterInitialization() |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-16116](https://issues.apache.org/jira/browse/HBASE-16116) | Remove redundant pattern \*.iml |  Trivial | . | Konstantin Ryakhovskiy | Konstantin Ryakhovskiy |
| [HBASE-16893](https://issues.apache.org/jira/browse/HBASE-16893) | Use Collection.removeIf instead of Iterator.remove in DependentColumnFilter |  Minor | . | Robert Yokota | Robert Yokota |
| [HBASE-18520](https://issues.apache.org/jira/browse/HBASE-18520) | Add jmx value to determine true Master Start time |  Minor | metrics | Zach York | Zach York |
| [HBASE-14220](https://issues.apache.org/jira/browse/HBASE-14220) | nightly tests should verify src tgz generates and builds correctly |  Minor | build | Nick Dimiduk | Sean Busbey |
| [HBASE-18426](https://issues.apache.org/jira/browse/HBASE-18426) | nightly job should use independent stages to check supported jdks |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18485](https://issues.apache.org/jira/browse/HBASE-18485) | Performance issue: ClientAsyncPrefetchScanner is slower than ClientSimpleScanner |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18248](https://issues.apache.org/jira/browse/HBASE-18248) | Warn if monitored RPC task has been tied up beyond a configurable threshold |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18548](https://issues.apache.org/jira/browse/HBASE-18548) | Move sources of important Jenkins jobs into source control |  Critical | documentation, scripts | Misty Linville | Misty Linville |
| [HBASE-18387](https://issues.apache.org/jira/browse/HBASE-18387) | [Thrift] Make principal configurable in DemoClient.java |  Minor | . | Lars George | Tamas Penzes |
| [HBASE-18555](https://issues.apache.org/jira/browse/HBASE-18555) | Remove redundant familyMap.put() from addxxx() of sub-classes of Mutation and Query |  Minor | Client | Xiang Li | Xiang Li |
| [HBASE-15511](https://issues.apache.org/jira/browse/HBASE-15511) | ClusterStatus should be able to return responses by scope |  Major | . | Esteban Gutierrez | Reid Chan |
| [HBASE-18566](https://issues.apache.org/jira/browse/HBASE-18566) | [RSGROUP]Log the client IP/port of the rsgroup admin |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18522](https://issues.apache.org/jira/browse/HBASE-18522) | Add RowMutations support to Batch |  Major | . | Jerry He | Jerry He |
| [HBASE-18303](https://issues.apache.org/jira/browse/HBASE-18303) | Clean up some parameterized test declarations |  Minor | test | Mike Drob | Mike Drob |
| [HBASE-18533](https://issues.apache.org/jira/browse/HBASE-18533) | Expose BucketCache values to be configured |  Major | BucketCache | Zach York | Zach York |
| [HBASE-2631](https://issues.apache.org/jira/browse/HBASE-2631) | Decide between "InMB" and "MB" as suffix for field names in ClusterStatus objects |  Minor | . | Jeff Hammerbacher | Deon Huang |
| [HBASE-17064](https://issues.apache.org/jira/browse/HBASE-17064) | Add TaskMonitor#getTasks() variant which accepts type selection |  Minor | . | Ted Yu | Reid Chan |
| [HBASE-18504](https://issues.apache.org/jira/browse/HBASE-18504) | Add documentation for WAL compression |  Minor | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-18581](https://issues.apache.org/jira/browse/HBASE-18581) | Remove dead code and some tidy up in BaseLoadBalancer |  Minor | Balancer | Umesh Agashe | Umesh Agashe |
| [HBASE-18251](https://issues.apache.org/jira/browse/HBASE-18251) | Remove unnecessary traversing to the first and last keys in the CellSet |  Major | . | Anastasia Braginsky | Toshihiro Suzuki |
| [HBASE-18573](https://issues.apache.org/jira/browse/HBASE-18573) | Update Append and Delete to use Mutation#getCellList(family) |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-18631](https://issues.apache.org/jira/browse/HBASE-18631) | Allow configuration of ChaosMonkey properties via hbase-site |  Minor | integration tests | Josh Elser | Josh Elser |
| [HBASE-18629](https://issues.apache.org/jira/browse/HBASE-18629) | Enhance ChaosMonkeyRunner with interruptibility |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18532](https://issues.apache.org/jira/browse/HBASE-18532) | Improve cache related stats rendered on RS UI |  Major | regionserver, UI | Biju Nair | Biju Nair |
| [HBASE-18224](https://issues.apache.org/jira/browse/HBASE-18224) | Upgrade jetty |  Critical | dependencies | Balazs Meszaros | stack |
| [HBASE-18673](https://issues.apache.org/jira/browse/HBASE-18673) | Some more unwanted reference to unshaded PB classes |  Minor | . | Anoop Sam John | stack |
| [HBASE-18519](https://issues.apache.org/jira/browse/HBASE-18519) | Use builder pattern to create cell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18701](https://issues.apache.org/jira/browse/HBASE-18701) | Optimize reference guide to use cell acl conveniently |  Trivial | . | Shibin Zhang | Shibin Zhang |
| [HBASE-18677](https://issues.apache.org/jira/browse/HBASE-18677) | typo in namespace docs |  Trivial | documentation | Mike Drob | ChunHao |
| [HBASE-17826](https://issues.apache.org/jira/browse/HBASE-17826) | Backup: submit M/R job to a particular Yarn queue |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18675](https://issues.apache.org/jira/browse/HBASE-18675) | Making {max,min}SessionTimeout configurable for MiniZooKeeperCluster |  Minor | test, Zookeeper | Cesar Delgado | Cesar Delgado |
| [HBASE-18699](https://issues.apache.org/jira/browse/HBASE-18699) | Copy LoadIncrementalHFiles to another package and mark the old one as deprecated |  Major | mapreduce | Duo Zhang | Duo Zhang |
| [HBASE-18740](https://issues.apache.org/jira/browse/HBASE-18740) | Upgrade Zookeeper version to 3.4.10 |  Major | . | Jerry He | Jerry He |
| [HBASE-18746](https://issues.apache.org/jira/browse/HBASE-18746) | Throw exception with job.getStatus().getFailureInfo() when ExportSnapshot fails |  Minor | mapreduce, snapshots | Chia-Ping Tsai | ChunHao |
| [HBASE-18674](https://issues.apache.org/jira/browse/HBASE-18674) | upgrade hbase to commons-lang3 |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18737](https://issues.apache.org/jira/browse/HBASE-18737) | Display configured max size of memstore and cache on RS UI |  Minor | . | Biju Nair | Biju Nair |
| [HBASE-18778](https://issues.apache.org/jira/browse/HBASE-18778) | Use Comparator for StealJobQueue |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-18621](https://issues.apache.org/jira/browse/HBASE-18621) | Refactor ClusterOptions before applying to code base |  Major | . | Reid Chan | Reid Chan |
| [HBASE-18662](https://issues.apache.org/jira/browse/HBASE-18662) | The default values for many configuration items in the code are not consistent with hbase-default.xml |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-10240](https://issues.apache.org/jira/browse/HBASE-10240) | Remove 0.94-\>0.96 migration code |  Critical | . | Andrew Purtell | Peter Somogyi |
| [HBASE-13271](https://issues.apache.org/jira/browse/HBASE-13271) | Table#puts(List\<Put\>) operation is indeterminate; needs fixing |  Critical | API | stack | Umesh Agashe |
| [HBASE-18683](https://issues.apache.org/jira/browse/HBASE-18683) | Upgrade hbase to commons-math 3 |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-14996](https://issues.apache.org/jira/browse/HBASE-14996) | Some more API cleanup for 2.0 |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-18772](https://issues.apache.org/jira/browse/HBASE-18772) | [JDK8]  Replace AtomicLong with LongAdder |  Trivial | . | Yechao Chen | Yechao Chen |
| [HBASE-18795](https://issues.apache.org/jira/browse/HBASE-18795) | Expose KeyValue.getBuffer() for tests alone |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18609](https://issues.apache.org/jira/browse/HBASE-18609) | Apply ClusterStatus#getClusterStatus(EnumSet\<Option\>) in code base |  Major | . | Chia-Ping Tsai | Reid Chan |
| [HBASE-18849](https://issues.apache.org/jira/browse/HBASE-18849) | expand "thirdparty" reference to give examples of setting netty location in common testing modules |  Critical | documentation, thirdparty | Sean Busbey | stack |
| [HBASE-18478](https://issues.apache.org/jira/browse/HBASE-18478) | Allow users to remove RegionFinder from LoadBalancer calculations if no locality possible |  Major | Balancer | Zach York | Zach York |
| [HBASE-11462](https://issues.apache.org/jira/browse/HBASE-11462) | MetaTableAccessor shouldn't use ZooKeeeper |  Major | Client, Zookeeper | Mikhail Antonov | Mikhail Antonov |
| [HBASE-18651](https://issues.apache.org/jira/browse/HBASE-18651) | Let ChaosMonkeyRunner expose the chaos monkey runner it creates |  Major | . | Ted Yu | Reid Chan |
| [HBASE-18652](https://issues.apache.org/jira/browse/HBASE-18652) | Expose individual cache stats in a CombinedCache through JMX |  Major | regionserver | Biju Nair | Biju Nair |
| [HBASE-18884](https://issues.apache.org/jira/browse/HBASE-18884) | Coprocessor Design Improvements follow up of HBASE-17732 |  Major | Coprocessors | Appy | Appy |
| [HBASE-13844](https://issues.apache.org/jira/browse/HBASE-13844) | Move static helper methods from KeyValue into CellUtils |  Minor | . | Lars George | Andy Yang |
| [HBASE-18436](https://issues.apache.org/jira/browse/HBASE-18436) | Add client-side hedged read metrics |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-18559](https://issues.apache.org/jira/browse/HBASE-18559) | Add histogram to MetricsConnection to track concurrent calls per server |  Minor | Client | Robert Yokota | Robert Yokota |
| [HBASE-18814](https://issues.apache.org/jira/browse/HBASE-18814) | Make ScanMetrics enabled and add counter \<HBase Counters, ROWS\_SCANNED\> into the MapReduce Job over snapshot |  Minor | mapreduce | xinxin fan | xinxin fan |
| [HBASE-18929](https://issues.apache.org/jira/browse/HBASE-18929) | Hbase backup command doesn’t show debug option to enable backup in debug mode |  Minor | . | Amit Kabra | Amit Kabra |
| [HBASE-16894](https://issues.apache.org/jira/browse/HBASE-16894) | Create more than 1 split per region, generalize HBASE-12590 |  Major | . | Enis Soztutar | Yi Liang |
| [HBASE-18899](https://issues.apache.org/jira/browse/HBASE-18899) | Make Fileinfo more readable in HFilePrettyPrinter |  Major | HFile | Guangxu Cheng | Guangxu Cheng |
| [HBASE-16010](https://issues.apache.org/jira/browse/HBASE-16010) | Put draining function through Admin API |  Minor | . | Jerry He | Matt Warhaftig |
| [HBASE-18843](https://issues.apache.org/jira/browse/HBASE-18843) | Add DistCp support to incremental backup with bulk loading |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15410](https://issues.apache.org/jira/browse/HBASE-15410) | Utilize the max seek value when all Filters in MUST\_PASS\_ALL FilterList return SEEK\_NEXT\_USING\_HINT |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18986](https://issues.apache.org/jira/browse/HBASE-18986) | Remove unnecessary null check after CellUtil.cloneQualifier() |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-10367](https://issues.apache.org/jira/browse/HBASE-10367) | RegionServer graceful stop / decommissioning |  Major | . | Enis Soztutar | Jerry He |
| [HBASE-18824](https://issues.apache.org/jira/browse/HBASE-18824) | Add meaningful comment to HConstants.LATEST\_TIMESTAMP to explain why it is MAX\_VALUE |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-19051](https://issues.apache.org/jira/browse/HBASE-19051) | Add new split algorithm for num string |  Minor | . | Yun Zhao | Yun Zhao |
| [HBASE-18994](https://issues.apache.org/jira/browse/HBASE-18994) | Decide if META/System tables should use Compacting Memstore or Default Memstore |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19091](https://issues.apache.org/jira/browse/HBASE-19091) | Code annotation wrote "BinaryComparator" instead of "LongComparator" |  Minor | Client | Qilin Cao | Qilin Cao |
| [HBASE-19110](https://issues.apache.org/jira/browse/HBASE-19110) | Add default for Server#isStopping & #getFileSystem |  Minor | . | stack | stack |
| [HBASE-18602](https://issues.apache.org/jira/browse/HBASE-18602) | rsgroup cleanup unassign code |  Minor | rsgroup | Wang, Xinglong | Wang, Xinglong |
| [HBASE-18870](https://issues.apache.org/jira/browse/HBASE-18870) | Hbase Backup should set the details to MR job name |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-17065](https://issues.apache.org/jira/browse/HBASE-17065) | Perform more effective sorting for RPC Handler Tasks |  Minor | . | Ted Yu | Reid Chan |
| [HBASE-19140](https://issues.apache.org/jira/browse/HBASE-19140) | hbase-cleanup.sh uses deprecated call to remove files in hdfs |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-18925](https://issues.apache.org/jira/browse/HBASE-18925) | Need updated mockito for using java optional |  Major | . | Appy | Appy |
| [HBASE-13622](https://issues.apache.org/jira/browse/HBASE-13622) | document upgrade rollback |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-19027](https://issues.apache.org/jira/browse/HBASE-19027) | Honor the CellComparator of ScanInfo in scanning over a store |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19186](https://issues.apache.org/jira/browse/HBASE-19186) | Unify to use bytes to show size in master/rs ui |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19228](https://issues.apache.org/jira/browse/HBASE-19228) | nightly job should gather machine stats. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-12350](https://issues.apache.org/jira/browse/HBASE-12350) | Backport error-prone build support to branch-1 and branch-2 |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19227](https://issues.apache.org/jira/browse/HBASE-19227) | Nightly jobs should archive JVM dumpstream files |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-18601](https://issues.apache.org/jira/browse/HBASE-18601) | Update Htrace to 4.2 |  Major | dependencies, tracing | Tamas Penzes | Balazs Meszaros |
| [HBASE-19262](https://issues.apache.org/jira/browse/HBASE-19262) | Revisit checkstyle rules |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19251](https://issues.apache.org/jira/browse/HBASE-19251) | Merge RawAsyncTable and AsyncTable |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-19274](https://issues.apache.org/jira/browse/HBASE-19274) | Log IOException when unable to determine the size of committed file |  Trivial | . | Ted Yu | Guangxu Cheng |
| [HBASE-16574](https://issues.apache.org/jira/browse/HBASE-16574) | Add backup / restore feature to refguide |  Major | . | Ted Yu | Frank Welsch |
| [HBASE-19293](https://issues.apache.org/jira/browse/HBASE-19293) | Support adding a new replication peer in disabled state |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19311](https://issues.apache.org/jira/browse/HBASE-19311) | Promote TestAcidGuarantees to LargeTests and start mini cluster once to make it faster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-16868](https://issues.apache.org/jira/browse/HBASE-16868) | Add a replicate\_all flag to avoid misuse the namespaces and table-cfs config of replication peer |  Critical | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18090](https://issues.apache.org/jira/browse/HBASE-18090) | Improve TableSnapshotInputFormat to allow more multiple mappers per region |  Major | mapreduce | Mikhail Antonov | xinxin fan |
| [HBASE-19372](https://issues.apache.org/jira/browse/HBASE-19372) | Remove the Span object in SyncFuture as it is useless now |  Major | tracing, wal | Duo Zhang | Duo Zhang |
| [HBASE-19252](https://issues.apache.org/jira/browse/HBASE-19252) | Move the transform logic of FilterList into transformCell() method to avoid extra ref to question cell |  Minor | . | Zheng Hu | Zheng Hu |
| [HBASE-19382](https://issues.apache.org/jira/browse/HBASE-19382) | Update report-flakies.py script to handle yetus builds |  Major | . | Appy | Appy |
| [HBASE-19367](https://issues.apache.org/jira/browse/HBASE-19367) | Refactoring in RegionStates, and RSProcedureDispatcher |  Minor | . | Appy | Appy |
| [HBASE-19336](https://issues.apache.org/jira/browse/HBASE-19336) | Improve rsgroup to allow assign all tables within a specified namespace by only writing namespace |  Major | rsgroup | xinxin fan | xinxin fan |
| [HBASE-19290](https://issues.apache.org/jira/browse/HBASE-19290) | Reduce zk request when doing split log |  Major | . | binlijin | binlijin |
| [HBASE-19432](https://issues.apache.org/jira/browse/HBASE-19432) | Roll the specified writer in HFileOutputFormat2 |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19448](https://issues.apache.org/jira/browse/HBASE-19448) | Replace StringBuffer with StringBuilder for hbase-server |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-18169](https://issues.apache.org/jira/browse/HBASE-18169) | Coprocessor fix and cleanup before 2.0.0 release |  Blocker | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19180](https://issues.apache.org/jira/browse/HBASE-19180) | Remove unused imports from AlwaysPasses |  Trivial | build | Jan Hentschel | Jan Hentschel |
| [HBASE-19463](https://issues.apache.org/jira/browse/HBASE-19463) | Make CPEnv#getConnection return a facade that throws Unsupported if CP calls #close |  Major | Coprocessors | stack | Guanghao Zhang |
| [HBASE-19464](https://issues.apache.org/jira/browse/HBASE-19464) | Replace StringBuffer with StringBuilder for hbase-common |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-17425](https://issues.apache.org/jira/browse/HBASE-17425) | Fix calls to deprecated APIs in TestUpdateConfiguration |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-19489](https://issues.apache.org/jira/browse/HBASE-19489) | Check against only the latest maintenance release in pre-commit hadoopcheck. |  Minor | . | Appy | Appy |
| [HBASE-19472](https://issues.apache.org/jira/browse/HBASE-19472) | Remove ArrayUtil Class |  Major | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-14790](https://issues.apache.org/jira/browse/HBASE-14790) | Implement a new DFSOutputStream for logging WAL only |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19521](https://issues.apache.org/jira/browse/HBASE-19521) | HBase mob compaction need to check hfile version |  Critical | Compaction, mob | Qilin Cao | Qilin Cao |
| [HBASE-19531](https://issues.apache.org/jira/browse/HBASE-19531) | Remove needless volatile declaration |  Trivial | . | Chia-Ping Tsai | Yun-Chi Shih |
| [HBASE-15482](https://issues.apache.org/jira/browse/HBASE-15482) | Provide an option to skip calculating block locations for SnapshotInputFormat |  Minor | mapreduce | Liyin Tang | Xiang Li |
| [HBASE-19491](https://issues.apache.org/jira/browse/HBASE-19491) | Exclude flaky tests from nightly master run |  Major | . | Appy | Appy |
| [HBASE-19571](https://issues.apache.org/jira/browse/HBASE-19571) | Minor refactor of Nightly run scripts |  Minor | . | Appy | Appy |
| [HBASE-19570](https://issues.apache.org/jira/browse/HBASE-19570) | Add hadoop3 tests to Nightly master/branch-2 runs |  Critical | . | Appy | Appy |
| [HBASE-19590](https://issues.apache.org/jira/browse/HBASE-19590) | Remove the duplicate code in deprecated ReplicationAdmin |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19576](https://issues.apache.org/jira/browse/HBASE-19576) | Introduce builder for ReplicationPeerConfig and make it immutable |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19618](https://issues.apache.org/jira/browse/HBASE-19618) | Remove replicationQueuesClient.class/replicationQueues.class config and remove table based ReplicationQueuesClient/ReplicationQueues implementation |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19621](https://issues.apache.org/jira/browse/HBASE-19621) | Revisit the methods in ReplicationPeerConfigBuilder |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19615](https://issues.apache.org/jira/browse/HBASE-19615) | CompositeImmutableSegment ArrayList Instead of LinkedList |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19545](https://issues.apache.org/jira/browse/HBASE-19545) | Replace getBytes(StandardCharsets.UTF\_8) with Bytes.toBytes |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19647](https://issues.apache.org/jira/browse/HBASE-19647) | Logging cleanups; emit regionname when RegionTooBusyException inside RetriesExhausted... make netty connect/disconnect TRACE-level |  Major | . | stack | stack |
| [HBASE-19659](https://issues.apache.org/jira/browse/HBASE-19659) | Enable -x in make\_rc.sh so logs where it is in execution |  Trivial | build | stack | stack |
| [HBASE-8518](https://issues.apache.org/jira/browse/HBASE-8518) | Get rid of hbase.hstore.compaction.complete setting |  Minor | . | Sergey Shelukhin | Kuan-Po Tseng |
| [HBASE-19649](https://issues.apache.org/jira/browse/HBASE-19649) | Use singleton feature for ImmutableSegment |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19677](https://issues.apache.org/jira/browse/HBASE-19677) | Miscellaneous HFileCleaner Improvements |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19679](https://issues.apache.org/jira/browse/HBASE-19679) | Superusers Logging and Data Structures |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19486](https://issues.apache.org/jira/browse/HBASE-19486) |  Periodically ensure records are not buffered too long by BufferedMutator |  Major | Client | Niels Basjes | Niels Basjes |
| [HBASE-19676](https://issues.apache.org/jira/browse/HBASE-19676) | CleanerChore logging improvements |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19683](https://issues.apache.org/jira/browse/HBASE-19683) | Remove Superfluous Methods From String Class |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19675](https://issues.apache.org/jira/browse/HBASE-19675) | Miscellaneous HStore Class Improvements |  Minor | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19641](https://issues.apache.org/jira/browse/HBASE-19641) | AsyncHBaseAdmin should use exponential backoff when polling the procedure result |  Major | asyncclient, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-18011](https://issues.apache.org/jira/browse/HBASE-18011) | Refactor RpcServer |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-18806](https://issues.apache.org/jira/browse/HBASE-18806) | VerifyRep by snapshot need not to restore snapshot for each mapper |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-19613](https://issues.apache.org/jira/browse/HBASE-19613) | Miscellaneous changes to WALSplitter |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19473](https://issues.apache.org/jira/browse/HBASE-19473) | Miscellaneous changes to ClientScanner |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19651](https://issues.apache.org/jira/browse/HBASE-19651) | Remove LimitInputStream |  Minor | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19723](https://issues.apache.org/jira/browse/HBASE-19723) | hbase-thrift declares slf4j-api twice |  Trivial | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-19358](https://issues.apache.org/jira/browse/HBASE-19358) | Improve the stability of splitting log when do fail over |  Major | MTTR | Jingyun Tian | Jingyun Tian |
| [HBASE-19684](https://issues.apache.org/jira/browse/HBASE-19684) | BlockCacheKey toString Performance |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19702](https://issues.apache.org/jira/browse/HBASE-19702) | Improve RSGroupInfo constructors |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-19139](https://issues.apache.org/jira/browse/HBASE-19139) | Create Async Admin methods for Clear Block Cache |  Major | Admin | Zach York | Guanghao Zhang |
| [HBASE-19751](https://issues.apache.org/jira/browse/HBASE-19751) | Use RegionInfo directly instead of an identifier and a namespace when getting WAL |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19758](https://issues.apache.org/jira/browse/HBASE-19758) | Split TestHCM to several smaller tests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19789](https://issues.apache.org/jira/browse/HBASE-19789) | Not exclude flaky tests from nightly builds |  Major | . | Appy | Appy |
| [HBASE-19739](https://issues.apache.org/jira/browse/HBASE-19739) | Include thrift IDL files in HBase binary distribution |  Minor | Thrift | Umesh Agashe | Umesh Agashe |
| [HBASE-19736](https://issues.apache.org/jira/browse/HBASE-19736) | Remove BaseLogCleanerDelegate deprecated #isLogDeletable(FileStatus) and use #isFileDeletable(FileStatus) instead |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-19820](https://issues.apache.org/jira/browse/HBASE-19820) | Restore public constructor of MiniHBaseCluster (API compat) |  Major | . | Appy | Appy |
| [HBASE-19823](https://issues.apache.org/jira/browse/HBASE-19823) | Make RawCellBuilderFactory LimitedPrivate.UNITTEST |  Minor | . | Appy | Appy |
| [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | Add '--return-values' option to Shell to print return values of commands in interactive mode |  Critical | shell | Romil Choksi | Josh Elser |
| [HBASE-19861](https://issues.apache.org/jira/browse/HBASE-19861) | Avoid using RPCs when querying table infos for master status pages |  Major | UI | Xiaolin Ha | Xiaolin Ha |
| [HBASE-19912](https://issues.apache.org/jira/browse/HBASE-19912) | The flag "writeToWAL" of Region#checkAndRowMutate is useless |  Minor | . | Chia-Ping Tsai | Mu Chun Wang |
| [HBASE-19904](https://issues.apache.org/jira/browse/HBASE-19904) | Break dependency of WAL constructor on Replication |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19917](https://issues.apache.org/jira/browse/HBASE-19917) | Improve RSGroupBasedLoadBalancer#filterServers() to be more efficient |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19915](https://issues.apache.org/jira/browse/HBASE-19915) | From split/ merge procedures daughter/ merged regions get created in OFFLINE state |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-19988](https://issues.apache.org/jira/browse/HBASE-19988) | HRegion#lockRowsAndBuildMiniBatch() is too chatty when interrupted while waiting for a row lock |  Minor | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-19680](https://issues.apache.org/jira/browse/HBASE-19680) | BufferedMutatorImpl#mutate should wait the result from AP in order to throw the failed mutations |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18294](https://issues.apache.org/jira/browse/HBASE-18294) | Reduce global heap pressure: flush based on heap occupancy |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-20065](https://issues.apache.org/jira/browse/HBASE-20065) | Revisit the timestamp usage in MetaTableAccessor |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-18020](https://issues.apache.org/jira/browse/HBASE-18020) | Update API Compliance Checker to Incorporate Improvements Done in Hadoop |  Major | API, community | Alex Leblang | Alex Leblang |
| [HBASE-20055](https://issues.apache.org/jira/browse/HBASE-20055) | Remove declaration of un-thrown exceptions and unused setRegionStateBackToOpen() from MergeTableRegionsProcedure |  Minor | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-17448](https://issues.apache.org/jira/browse/HBASE-17448) | Export metrics from RecoverableZooKeeper |  Major | Zookeeper | Andrew Purtell | Chinmay Kulkarni |
| [HBASE-18467](https://issues.apache.org/jira/browse/HBASE-18467) | nightly job needs to run all stages and then comment on jira |  Critical | community, test | Sean Busbey | Sean Busbey |
| [HBASE-17165](https://issues.apache.org/jira/browse/HBASE-17165) | Add retry to LoadIncrementalHFiles tool |  Critical | HFile, tooling | Mike Grimes | Mike Grimes |
| [HBASE-20135](https://issues.apache.org/jira/browse/HBASE-20135) | NullPointerException during reading bloom filter when upgraded from hbase-1 to hbase-2 |  Minor | . | Umesh Agashe | Sakthi |
| [HBASE-15466](https://issues.apache.org/jira/browse/HBASE-15466) | precommit should not run all java goals when given a docs-only patch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-18784](https://issues.apache.org/jira/browse/HBASE-18784) | Use of filesystem that requires hflush / hsync / append / etc should query outputstream capabilities |  Major | Filesystem Integration | Sean Busbey | Sean Busbey |
| [HBASE-17449](https://issues.apache.org/jira/browse/HBASE-17449) | Add explicit document on different timeout settings |  Critical | documentation | Yu Li | Peter Somogyi |
| [HBASE-20409](https://issues.apache.org/jira/browse/HBASE-20409) | Set hbase.client.meta.operation.timeout in TestClientOperationTimeout |  Trivial | test | Peter Somogyi | Peter Somogyi |
| [HBASE-19994](https://issues.apache.org/jira/browse/HBASE-19994) | Create a new class for RPC throttling exception, make it retryable. |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-20438](https://issues.apache.org/jira/browse/HBASE-20438) | Add an HBase antipattern check for reintroducing commons-logging |  Critical | dependencies, test | Sean Busbey | Nihal Jain |
| [HBASE-20459](https://issues.apache.org/jira/browse/HBASE-20459) | Majority of scan CPU time in HBase-1 spent in size estimation |  Critical | Performance, scan | Lars Hofhansl | Lars Hofhansl |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11500](https://issues.apache.org/jira/browse/HBASE-11500) | Possible null pointer dereference of regionLocation in ReversedScannerCallable |  Minor | Client | Mike Drob | Mike Drob |
| [HBASE-11499](https://issues.apache.org/jira/browse/HBASE-11499) | AsyncProcess.buildDetailedErrorMessage concatenates strings using + in a loop |  Trivial | Client | Mike Drob | Mike Drob |
| [HBASE-8473](https://issues.apache.org/jira/browse/HBASE-8473) | add note to ref guide about snapshots and ec2 reverse dns requirements. |  Major | documentation, snapshots | Jonathan Hsieh | Misty Linville |
| [HBASE-11521](https://issues.apache.org/jira/browse/HBASE-11521) | Modify pom.xml to copy the images/ and css/ directories to the right location for the Ref Guide to see them correctly |  Critical | documentation | Misty Linville | Misty Linville |
| [HBASE-11529](https://issues.apache.org/jira/browse/HBASE-11529) | Images and CSS still don't work properly on both html and html-single book |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11560](https://issues.apache.org/jira/browse/HBASE-11560) | hbase.regionserver.global.memstore.size is documented twice |  Major | . | Jean-Marc Spaggiari | Misty Linville |
| [HBASE-11522](https://issues.apache.org/jira/browse/HBASE-11522) | Move Replication information into the Ref Guide |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11316](https://issues.apache.org/jira/browse/HBASE-11316) | Expand info about compactions beyond HBASE-11120 |  Major | Compaction, documentation | Misty Linville | Misty Linville |
| [HBASE-11539](https://issues.apache.org/jira/browse/HBASE-11539) | Expand info about contributing to and building documentation |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11648](https://issues.apache.org/jira/browse/HBASE-11648) | Typo of config: hbase.hstore.compaction.ratio in book.xml |  Minor | Compaction | Liu Shaohui | Liu Shaohui |
| [HBASE-11640](https://issues.apache.org/jira/browse/HBASE-11640) | Add syntax highlighting support to HBase Ref Guide programlistings |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11629](https://issues.apache.org/jira/browse/HBASE-11629) | Operational concerns for Replication should call out ZooKeeper |  Major | documentation, Replication | Sean Busbey | Misty Linville |
| [HBASE-11661](https://issues.apache.org/jira/browse/HBASE-11661) | Quickstart chapter claims standalone mode has multiple processes |  Minor | documentation | Sean Busbey | Sean Busbey |
| [HBASE-11333](https://issues.apache.org/jira/browse/HBASE-11333) | Remove deprecated class MetaMigrationConvertingToPB |  Trivial | master | Mikhail Antonov | Mikhail Antonov |
| [HBASE-11658](https://issues.apache.org/jira/browse/HBASE-11658) | Piped commands to hbase shell should return non-zero if shell command failed. |  Major | shell | Jonathan Hsieh | Sean Busbey |
| [HBASE-11732](https://issues.apache.org/jira/browse/HBASE-11732) | Should not preemptively offline a region |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11834](https://issues.apache.org/jira/browse/HBASE-11834) | TestHRegionBusyWait.testParallelAppendWithMemStoreFlush fails sporadically |  Major | test | stack | stack |
| [HBASE-11689](https://issues.apache.org/jira/browse/HBASE-11689) | Track meta in transition |  Major | Region Assignment | Jimmy Xiang | Andrey Stepachev |
| [HBASE-11855](https://issues.apache.org/jira/browse/HBASE-11855) | HBase handbook chapter 18.9 out of date |  Minor | documentation | Michael Tauscher | Michael Tauscher |
| [HBASE-8674](https://issues.apache.org/jira/browse/HBASE-8674) | JUnit and Surefire TRUNK-HBASE-2 plugins need a new home |  Major | build | Andrew Purtell | Gary Helmling |
| [HBASE-11721](https://issues.apache.org/jira/browse/HBASE-11721) | jdiff script no longer works as usage instructions indicate |  Major | scripts | Misty Linville | Dima Spivak |
| [HBASE-11968](https://issues.apache.org/jira/browse/HBASE-11968) | If MOB is enabled, it should make sure hfile v3 is being used. |  Major | . | Jonathan Hsieh | Anoop Sam John |
| [HBASE-11987](https://issues.apache.org/jira/browse/HBASE-11987) | Make zk-less table states backward compatible. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12027](https://issues.apache.org/jira/browse/HBASE-12027) | The ZooKeeperWatcher in HMobStore only uses the default conf |  Major | . | Jingcheng Du | Jingcheng Du |
| [HBASE-12005](https://issues.apache.org/jira/browse/HBASE-12005) | Split/merge fails if master restarts before PONR |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12030](https://issues.apache.org/jira/browse/HBASE-12030) | Wrong compaction report and assert when MOB compaction switches to minor |  Critical | Compaction, regionserver | Matteo Bertozzi | Anoop Sam John |
| [HBASE-11957](https://issues.apache.org/jira/browse/HBASE-11957) | Backport to 0.94 HBASE-5974 Scanner retry behavior with RPC timeout on next() seems incorrect |  Critical | . | Liu Shaohui | Liu Shaohui |
| [HBASE-12172](https://issues.apache.org/jira/browse/HBASE-12172) | Disable flakey TestRegionReplicaReplicationEndpoint and make fixing it a blocker on 1.0 |  Major | test | stack | stack |
| [HBASE-12193](https://issues.apache.org/jira/browse/HBASE-12193) | Add missing docbook file to git |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11998](https://issues.apache.org/jira/browse/HBASE-11998) | Document a workflow for cherry-picking a fix to a different branch |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12201](https://issues.apache.org/jira/browse/HBASE-12201) | Close the writers in the MOB sweep tool |  Minor | . | Jingcheng Du | Jingcheng Du |
| [HBASE-12216](https://issues.apache.org/jira/browse/HBASE-12216) | Lower closed region logging level |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12186](https://issues.apache.org/jira/browse/HBASE-12186) | Formatting error in Table 8.2. Examples of Visibility Expressions |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12192](https://issues.apache.org/jira/browse/HBASE-12192) | Remove EventHandlerListener |  Major | master | ryan rawson | ryan rawson |
| [HBASE-12307](https://issues.apache.org/jira/browse/HBASE-12307) | Remove unused Imports in hbase-client and hbase-common |  Minor | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12283](https://issues.apache.org/jira/browse/HBASE-12283) | Clean up some checkstyle errors |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12326](https://issues.apache.org/jira/browse/HBASE-12326) | Document scanner timeout workarounds in troubleshooting section |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12380](https://issues.apache.org/jira/browse/HBASE-12380) | TestRegionServerNoMaster#testMultipleOpen is flaky after HBASE-11760 |  Major | test | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12418](https://issues.apache.org/jira/browse/HBASE-12418) | Multiple branches for MOB feature breaking git for case insensitive filesystems |  Blocker | . | Sean Busbey | Nick Dimiduk |
| [HBASE-12397](https://issues.apache.org/jira/browse/HBASE-12397) | CopyTable fails to compile with the Hadoop 1 profile |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12409](https://issues.apache.org/jira/browse/HBASE-12409) | Add actual tunable parameters for finding optimal # of regions per RS |  Major | documentation, Performance | Misty Linville | Misty Linville |
| [HBASE-12347](https://issues.apache.org/jira/browse/HBASE-12347) | Fix the edge case where Hadoop QA's parsing of attached patches breaks the JIRA status checker in dev-support/rebase\_all\_git\_branches.sh |  Minor | scripts | Misty Linville | Misty Linville |
| [HBASE-12488](https://issues.apache.org/jira/browse/HBASE-12488) | Small bug in publish\_hbase\_website.sh script |  Minor | scripts | Misty Linville | Misty Linville |
| [HBASE-12421](https://issues.apache.org/jira/browse/HBASE-12421) | Clarify ACL concepts and best practices |  Major | documentation, security | Misty Linville | Misty Linville |
| [HBASE-12532](https://issues.apache.org/jira/browse/HBASE-12532) | TestFilter failing occasionally with ExitCodeException doing chmod since HBASE-10378 |  Major | test | stack | stack |
| [HBASE-12535](https://issues.apache.org/jira/browse/HBASE-12535) | NPE in WALFactory close under contention for getInstance |  Major | Replication, wal | stack | Sean Busbey |
| [HBASE-12073](https://issues.apache.org/jira/browse/HBASE-12073) | Shell command user\_permission fails on the table created by user if he is not global admin. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12552](https://issues.apache.org/jira/browse/HBASE-12552) | listSnapshots should list only owned snapshots for non-super user |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-12474](https://issues.apache.org/jira/browse/HBASE-12474) | Incorrect handling of default namespace in user\_permission command. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12603](https://issues.apache.org/jira/browse/HBASE-12603) | Remove javadoc warnings introduced due to removal of unused imports |  Major | . | Varun Saxena | Varun Saxena |
| [HBASE-12548](https://issues.apache.org/jira/browse/HBASE-12548) | Improve debuggability of IntegrationTestTimeBoundedRequestsWithRegionReplicas |  Minor | . | Devaraj Das | Devaraj Das |
| [HBASE-12553](https://issues.apache.org/jira/browse/HBASE-12553) | request value is not consistent for restoreSnapshot in audit logs |  Minor | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12628](https://issues.apache.org/jira/browse/HBASE-12628) | Update instructions for running shell tests using maven. |  Minor | documentation, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12540](https://issues.apache.org/jira/browse/HBASE-12540) | TestRegionServerMetrics#testMobMetrics test failure |  Major | test | stack | Jingcheng Du |
| [HBASE-11153](https://issues.apache.org/jira/browse/HBASE-11153) | Document that http webUI's should redirect to https when enabled |  Minor | documentation, master, regionserver, UI | Nick Dimiduk | Misty Linville |
| [HBASE-9763](https://issues.apache.org/jira/browse/HBASE-9763) | Scan javadoc doesn't fully capture semantics of start and stop row |  Minor | documentation | Gabriel Reid | Gabriel Reid |
| [HBASE-12677](https://issues.apache.org/jira/browse/HBASE-12677) | Update replication docs to clarify terminology |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12693](https://issues.apache.org/jira/browse/HBASE-12693) | [docs] nit fix in HBase and MapReduce section |  Major | documentation | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12687](https://issues.apache.org/jira/browse/HBASE-12687) | Book is missing styling |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12690](https://issues.apache.org/jira/browse/HBASE-12690) | list\_quotas command is failing with not able to load Java class |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-12682](https://issues.apache.org/jira/browse/HBASE-12682) | compaction thread throttle value is not correct in hbase-default.xml |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-12688](https://issues.apache.org/jira/browse/HBASE-12688) | Update site with a bootstrap-based UI |  Major | website | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12703](https://issues.apache.org/jira/browse/HBASE-12703) | Cleanup TestClientPushback for repeatability |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-12734](https://issues.apache.org/jira/browse/HBASE-12734) | TestPerColumnFamilyFlush.testCompareStoreFileCount is flakey |  Minor | . | Duo Zhang | Duo Zhang |
| [HBASE-12749](https://issues.apache.org/jira/browse/HBASE-12749) | Tighten HFileLink api to enable non-snapshot uses |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12772](https://issues.apache.org/jira/browse/HBASE-12772) | TestPerColumnFamilyFlush failing |  Major | test | stack | stack |
| [HBASE-12775](https://issues.apache.org/jira/browse/HBASE-12775) | CompressionTest ate my HFile (sigh!) |  Major | test | Aditya Kishore | Aditya Kishore |
| [HBASE-12838](https://issues.apache.org/jira/browse/HBASE-12838) | After HBASE-5162 RSRpcServices accidentally applies mutations twice |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12777](https://issues.apache.org/jira/browse/HBASE-12777) | Multi-page book has broken links that work in the single-page version |  Major | documentation | Dima Spivak | Misty Linville |
| [HBASE-12849](https://issues.apache.org/jira/browse/HBASE-12849) | LoadIncrementalHFiles should use unmanaged connection in branch-1 |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-11983](https://issues.apache.org/jira/browse/HBASE-11983) | HRegion constructors should not create HLog |  Major | wal | Enis Soztutar | Nick Dimiduk |
| [HBASE-12858](https://issues.apache.org/jira/browse/HBASE-12858) | Remove unneeded files under src/main/docbkx |  Major | documentation | Ted Yu | Misty Linville |
| [HBASE-12845](https://issues.apache.org/jira/browse/HBASE-12845) | ByteBufferOutputStream should grow as direct buffer if the initial buffer is also direct BB |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12871](https://issues.apache.org/jira/browse/HBASE-12871) | Document JDK versions supported by each release missing in new documentation |  Minor | documentation | Kevin Risden | Misty Linville |
| [HBASE-12903](https://issues.apache.org/jira/browse/HBASE-12903) | Fix configuration which enables secure bulk load |  Major | Coprocessors, documentation | Weichen Ye | Weichen Ye |
| [HBASE-12902](https://issues.apache.org/jira/browse/HBASE-12902) | Post-asciidoc conversion fix-ups |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12922](https://issues.apache.org/jira/browse/HBASE-12922) | Post-asciidoc conversion fix-ups part 2 |  Major | documentation | Lars Francke | Lars Francke |
| [HBASE-12877](https://issues.apache.org/jira/browse/HBASE-12877) | Hbase documentation- a referenced link is not working |  Minor | documentation | Subrahmanyam | Misty Linville |
| [HBASE-12951](https://issues.apache.org/jira/browse/HBASE-12951) | TestHCM.testConnectionClose is flakey when using AsyncRpcClient as client implementation |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | [webui] HMaster webui should display the number of regions a table has. |  Minor | UI | Jonathan Hsieh | Andrey Stepachev |
| [HBASE-12964](https://issues.apache.org/jira/browse/HBASE-12964) | Add the ability for hbase-daemon.sh to start in the foreground |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | Negative values in read and write region server metrics |  Minor | regionserver | Victoria | Victoria |
| [HBASE-13004](https://issues.apache.org/jira/browse/HBASE-13004) | Make possible to explain why HBaseTestingUtility.waitFor fails |  Minor | test | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12999](https://issues.apache.org/jira/browse/HBASE-12999) | Make foreground\_start return the correct exit code |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-12920](https://issues.apache.org/jira/browse/HBASE-12920) | hadoopqa should compile with different hadoop versions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13007](https://issues.apache.org/jira/browse/HBASE-13007) | Fix the test timeouts being caused by ChoreService |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13029](https://issues.apache.org/jira/browse/HBASE-13029) | Table state should be deleted from META as a last operation in DeleteTableHandler |  Major | master | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13049](https://issues.apache.org/jira/browse/HBASE-13049) | wal\_roll ruby command doesn't work. |  Major | shell | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13011](https://issues.apache.org/jira/browse/HBASE-13011) | TestLoadIncrementalHFiles is flakey when using AsyncRpcClient as client implementation |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | Add "HBase Configuration" link missing on the table details pages |  Trivial | Operability | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13041](https://issues.apache.org/jira/browse/HBASE-13041) | TestEnableTableHandler should not call AssignmentManager#assign concurrently with master |  Major | integration tests | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12412](https://issues.apache.org/jira/browse/HBASE-12412) | update the ref guide(currently Example 10.2) to show "update an existing CF" with the new API modifyFamily in master |  Minor | documentation | Jingcheng Du | Misty Linville |
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
| [HBASE-13077](https://issues.apache.org/jira/browse/HBASE-13077) | BoundedCompletionService doesn't pass trace info to server |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
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
| [HBASE-13052](https://issues.apache.org/jira/browse/HBASE-13052) | Explain each region split policy |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-13156](https://issues.apache.org/jira/browse/HBASE-13156) | Fix minor rat violation recently introduced (asciidoctor.css). |  Major | . | stack | stack |
| [HBASE-13155](https://issues.apache.org/jira/browse/HBASE-13155) | Fix TestPrefixTree |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13076](https://issues.apache.org/jira/browse/HBASE-13076) | Table can be forcibly enabled in AssignmentManager during table disabling. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13163](https://issues.apache.org/jira/browse/HBASE-13163) | Add HBase version to header and footer of HTML and PDF docs |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-13150](https://issues.apache.org/jira/browse/HBASE-13150) | TestMasterObserver failing disable table at end of test |  Major | test | stack | Duo Zhang |
| [HBASE-13084](https://issues.apache.org/jira/browse/HBASE-13084) | Add labels to VisibilityLabelsCache asynchronously causes TestShell flakey |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-12969](https://issues.apache.org/jira/browse/HBASE-12969) | Parameter Validation is not there for shell script, local-master-backup.sh and local-regionservers.sh |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13135](https://issues.apache.org/jira/browse/HBASE-13135) | Move replication ops mgmt stuff from Javadoc to Ref Guide |  Major | documentation, Replication | Misty Linville | Misty Linville |
| [HBASE-12468](https://issues.apache.org/jira/browse/HBASE-12468) | AUTHORIZATIONS should be part of Visibility Label Docs |  Major | documentation | Kevin Odell | Misty Linville |
| [HBASE-13023](https://issues.apache.org/jira/browse/HBASE-13023) | Document multiWAL |  Major | documentation, wal | Misty Linville | Misty Linville |
| [HBASE-12723](https://issues.apache.org/jira/browse/HBASE-12723) | Update ACL matrix to reflect reality |  Major | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12931](https://issues.apache.org/jira/browse/HBASE-12931) | The existing KeyValues in memstore are not removed completely after inserting cell into memStore |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-13186](https://issues.apache.org/jira/browse/HBASE-13186) | HBase build error due to checkstyle |  Major | build | Misty Linville | Misty Linville |
| [HBASE-13181](https://issues.apache.org/jira/browse/HBASE-13181) | TestHRegionReplayEvents.testReplayBulkLoadEvent fails frequently. |  Minor | . | Srikanth Srungarapu | Matteo Bertozzi |
| [HBASE-13196](https://issues.apache.org/jira/browse/HBASE-13196) | Add info about default number of versions when using the export tool |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-13174](https://issues.apache.org/jira/browse/HBASE-13174) | Apply HBASE-11804 to Windows scripts |  Major | scripts | Lars George | Lars George |
| [HBASE-13165](https://issues.apache.org/jira/browse/HBASE-13165) | Fix docs and scripts for default max heaps size after HBASE-11804 |  Minor | documentation, scripts | Lars George | Lars George |
| [HBASE-13206](https://issues.apache.org/jira/browse/HBASE-13206) | Fix TableLock tableName log format |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13208](https://issues.apache.org/jira/browse/HBASE-13208) | Patch build should match the patch filename and not the whole relative URL in findBranchNameFromPatchName |  Trivial | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13191](https://issues.apache.org/jira/browse/HBASE-13191) | mvn site fails on jenkins due to permgen |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13192](https://issues.apache.org/jira/browse/HBASE-13192) | IntegrationTestBulkLoad doesn't wait for table modification sometimes leading to spurious test failures |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13167](https://issues.apache.org/jira/browse/HBASE-13167) | The check for balancerCutoffTime is buggy |  Trivial | Balancer | Tianyin Xu | Mikhail Antonov |
| [HBASE-13218](https://issues.apache.org/jira/browse/HBASE-13218) | Correct the syntax shown for using ExportSnapshot tool in the book |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13194](https://issues.apache.org/jira/browse/HBASE-13194) | TableNamespaceManager not ready cause MasterQuotaManager initialization fail |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-13224](https://issues.apache.org/jira/browse/HBASE-13224) | Minor formatting issue when logging a namespace scope in AuthResult#toContextString |  Trivial | Coprocessors, security | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13136](https://issues.apache.org/jira/browse/HBASE-13136) | TestSplitLogManager.testGetPreviousRecoveryMode is flakey |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-13097](https://issues.apache.org/jira/browse/HBASE-13097) | Use same EventLoopGroup for different AsyncRpcClients if possible |  Major | IPC/RPC, test | Duo Zhang | Duo Zhang |
| [HBASE-13232](https://issues.apache.org/jira/browse/HBASE-13232) | ConnectionManger : Batch pool threads and metaLookup pool threads should use different name pattern |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13227](https://issues.apache.org/jira/browse/HBASE-13227) | LoadIncrementalHFile should skip non-files inside a possible family-dir |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13242](https://issues.apache.org/jira/browse/HBASE-13242) | TestPerColumnFamilyFlush.testFlushingWhenLogRolling hung |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13239](https://issues.apache.org/jira/browse/HBASE-13239) | HBase grant at specific column level does not work for Groups |  Major | . | Jaymin Patel | Ted Yu |
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
| [HBASE-13326](https://issues.apache.org/jira/browse/HBASE-13326) | Disabled table can't be enabled after HBase is restarted |  Blocker | . | Dima Spivak | Andrey Stepachev |
| [HBASE-13265](https://issues.apache.org/jira/browse/HBASE-13265) | Make thrift2 usable from c++ |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-8725](https://issues.apache.org/jira/browse/HBASE-8725) | Add total time RPC call metrics |  Major | metrics | Elliott Clark | Nate Edel |
| [HBASE-13295](https://issues.apache.org/jira/browse/HBASE-13295) | TestInfoServers hang |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13328](https://issues.apache.org/jira/browse/HBASE-13328) | LoadIncrementalHFile.doBulkLoad(Path,HTable) should handle managed connections |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13355](https://issues.apache.org/jira/browse/HBASE-13355) | QA bot reports checking javac twice |  Minor | . | Elliott Clark | Elliott Clark |
| [HBASE-13357](https://issues.apache.org/jira/browse/HBASE-13357) | If maxTables/maxRegions exceeds quota in a namespace, throw QuotaExceededException |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13262](https://issues.apache.org/jira/browse/HBASE-13262) | ResultScanner doesn't return all rows in Scan |  Blocker | Client | Josh Elser | Josh Elser |
| [HBASE-12993](https://issues.apache.org/jira/browse/HBASE-12993) | Use HBase 1.0 interfaces in hbase-thrift |  Major | . | Solomon Duskis | Solomon Duskis |
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
| [HBASE-13423](https://issues.apache.org/jira/browse/HBASE-13423) | Remove duplicate entry for hbase.regionserver.regionSplitLimit in hbase-default.xml |  Minor | . | Appy | Appy |
| [HBASE-13457](https://issues.apache.org/jira/browse/HBASE-13457) | SnapshotExistsException doesn't honor the DoNotRetry |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13301](https://issues.apache.org/jira/browse/HBASE-13301) | Possible memory leak in BucketCache |  Major | BlockCache | Duo Zhang | Duo Zhang |
| [HBASE-13475](https://issues.apache.org/jira/browse/HBASE-13475) | Small spelling mistake in region\_mover#isSuccessfulScan causes NoMethodError |  Trivial | scripts | Victor Xu | Victor Xu |
| [HBASE-13460](https://issues.apache.org/jira/browse/HBASE-13460) | Revise the MetaLookupPool executor-related defaults (introduced in HBASE-13036) |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-12006](https://issues.apache.org/jira/browse/HBASE-12006) | [JDK 8] KeyStoreTestUtil#generateCertificate fails due to "subject class type invalid" |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13473](https://issues.apache.org/jira/browse/HBASE-13473) | deleted cells come back alive after the stripe compaction |  Blocker | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-13486](https://issues.apache.org/jira/browse/HBASE-13486) | region\_status.rb broken with NameError: uninitialized constant IOException |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13477](https://issues.apache.org/jira/browse/HBASE-13477) | Create metrics on failed requests |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13491](https://issues.apache.org/jira/browse/HBASE-13491) | Issue in FuzzyRowFilter#getNextForFuzzyRule |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-13430](https://issues.apache.org/jira/browse/HBASE-13430) | HFiles that are in use by a table cloned from a snapshot may be deleted when that snapshot is deleted |  Critical | . | Tobi Vollebregt | Tobi Vollebregt |
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
| [HBASE-13628](https://issues.apache.org/jira/browse/HBASE-13628) | Use AtomicLong as size in BoundedConcurrentLinkedQueue |  Major | util | Duo Zhang | Duo Zhang |
| [HBASE-13633](https://issues.apache.org/jira/browse/HBASE-13633) | draining\_servers.rb broken with NoMethodError: undefined method 'getServerInfo' |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | Use HDFS for HFileOutputFormat2 partitioner's path |  Major | mapreduce | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13630](https://issues.apache.org/jira/browse/HBASE-13630) | Remove dead code in BufferedDataEncoder |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13648](https://issues.apache.org/jira/browse/HBASE-13648) | test-patch.sh should ignore 'protobuf.generated' |  Minor | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13649](https://issues.apache.org/jira/browse/HBASE-13649) | CellComparator.compareTimestamps javadoc inconsistent and wrong |  Minor | documentation | Dave Latham | Dave Latham |
| [HBASE-13612](https://issues.apache.org/jira/browse/HBASE-13612) | TestRegionFavoredNodes doesn't guard against setup failure |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13653](https://issues.apache.org/jira/browse/HBASE-13653) | Uninitialized HRegionServer#walFactory may result in NullPointerException at region server startup​ |  Major | . | Romil Choksi | Ted Yu |
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
| [HBASE-13663](https://issues.apache.org/jira/browse/HBASE-13663) | HMaster fails to restart 'HMaster: Failed to become active master' |  Major | . | Romil Choksi | Ted Yu |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |
| [HBASE-13651](https://issues.apache.org/jira/browse/HBASE-13651) | Handle StoreFileScanner FileNotFoundException |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13699](https://issues.apache.org/jira/browse/HBASE-13699) | Expand information about HBase quotas |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-13668](https://issues.apache.org/jira/browse/HBASE-13668) | TestFlushRegionEntry is flaky |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13694](https://issues.apache.org/jira/browse/HBASE-13694) | CallQueueSize is incorrectly decremented until the response is sent |  Major | IPC/RPC, master, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13693](https://issues.apache.org/jira/browse/HBASE-13693) | [HBase MOB] Mob files are not encrypting. |  Major | mob | Y. SREENIVASULU REDDY | Ashutosh Jindal |
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
| [HBASE-13834](https://issues.apache.org/jira/browse/HBASE-13834) | Evict count not properly passed to HeapMemoryTuner. |  Major | regionserver | Abhilash | Abhilash |
| [HBASE-13851](https://issues.apache.org/jira/browse/HBASE-13851) | RpcClientImpl.close() can hang with cancelled replica RPCs |  Major | IPC/RPC | Enis Soztutar | Enis Soztutar |
| [HBASE-13686](https://issues.apache.org/jira/browse/HBASE-13686) | Fail to limit rate in RateLimiter |  Major | Client | Guanghao Zhang | Ashish Singhi |
| [HBASE-13853](https://issues.apache.org/jira/browse/HBASE-13853) | ITBLL improvements after HBASE-13811 |  Blocker | integration tests, tooling, wal | Enis Soztutar | Enis Soztutar |
| [HBASE-13811](https://issues.apache.org/jira/browse/HBASE-13811) | Splitting WALs, we are filtering out too many edits -\> DATALOSS |  Critical | wal | stack | stack |
| [HBASE-13847](https://issues.apache.org/jira/browse/HBASE-13847) | getWriteRequestCount function in HRegionServer uses int variable to return the count. |  Major | regionserver | Abhilash | Abhilash |
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
| [HBASE-13737](https://issues.apache.org/jira/browse/HBASE-13737) | [HBase MOB] MOBTable cloned from a snapshot leads to data loss, when that actual snapshot and main table is deleted. |  Critical | mob | Y. SREENIVASULU REDDY | Ashutosh Jindal |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | . | Patrick White | Patrick White |
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
| [HBASE-14065](https://issues.apache.org/jira/browse/HBASE-14065) | ref guide section on release candidate generation refers to old doc files |  Major | documentation | Sean Busbey | Gabor Liptak |
| [HBASE-14119](https://issues.apache.org/jira/browse/HBASE-14119) | Show meaningful error messages instead of stack traces in hbase shell commands. Fixing few commands in this jira. |  Minor | . | Appy | Appy |
| [HBASE-14115](https://issues.apache.org/jira/browse/HBASE-14115) | Fix resource leak in HMasterCommandLine |  Major | master, tooling | Yuhao Bi | Yuhao Bi |
| [HBASE-14146](https://issues.apache.org/jira/browse/HBASE-14146) | Once replication sees an error it slows down forever |  Major | Replication | Elliott Clark | Elliott Clark |
| [HBASE-14156](https://issues.apache.org/jira/browse/HBASE-14156) | Fix test failure in TestOpenTableInCoprocessor |  Major | . | Anoop Sam John | Anoop Sam John |
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
| [HBASE-13924](https://issues.apache.org/jira/browse/HBASE-13924) | Description for hbase.dynamic.jars.dir is wrong |  Major | . | Lars George | Misty Linville |
| [HBASE-14092](https://issues.apache.org/jira/browse/HBASE-14092) | hbck should run without locks by default and only disable the balancer when necessary |  Major | hbck, util | Elliott Clark | Elliott Clark |
| [HBASE-5878](https://issues.apache.org/jira/browse/HBASE-5878) | Use getVisibleLength public api from HdfsDataInputStream from Hadoop-2. |  Major | wal | Uma Maheswara Rao G | Ashish Singhi |
| [HBASE-13062](https://issues.apache.org/jira/browse/HBASE-13062) | Add documentation coverage for configuring dns server with thrift and rest gateways |  Minor | documentation | Srikanth Srungarapu | Misty Linville |
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
| [HBASE-13221](https://issues.apache.org/jira/browse/HBASE-13221) | HDFS Transparent Encryption breaks WAL writing in Hadoop 2.6.0 |  Critical | documentation, wal | Sean Busbey | Sean Busbey |
| [HBASE-14354](https://issues.apache.org/jira/browse/HBASE-14354) | Minor improvements for usage of the mlock agent |  Trivial | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14337](https://issues.apache.org/jira/browse/HBASE-14337) | build error on master |  Major | . | Gabor Liptak | Sean Busbey |
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
| [HBASE-12615](https://issues.apache.org/jira/browse/HBASE-12615) | Document GC conserving guidelines for contributors |  Major | documentation | Andrew Purtell | Misty Linville |
| [HBASE-12983](https://issues.apache.org/jira/browse/HBASE-12983) | HBase book mentions hadoop.ssl.enabled when it should be hbase.ssl.enabled |  Major | documentation | Esteban Gutierrez | Misty Linville |
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
| [HBASE-14599](https://issues.apache.org/jira/browse/HBASE-14599) | Modify site config to use protocol-relative URLs for CSS/JS |  Blocker | documentation | Misty Linville | Misty Linville |
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
| [HBASE-14326](https://issues.apache.org/jira/browse/HBASE-14326) | HBase book: fix definition of max min size to compact |  Major | documentation | Vladimir Rodionov | Misty Linville |
| [HBASE-14603](https://issues.apache.org/jira/browse/HBASE-14603) | Lots of work on the POM to enhance Javadocs, Xrefs |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14658](https://issues.apache.org/jira/browse/HBASE-14658) | Allow loading a MonkeyFactory by class name |  Major | integration tests, test | Elliott Clark | Elliott Clark |
| [HBASE-14667](https://issues.apache.org/jira/browse/HBASE-14667) | HBaseFsck constructors have diverged |  Minor | hbck | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14681](https://issues.apache.org/jira/browse/HBASE-14681) | Upgrade Checkstyle plugin to 2.16 |  Major | build | Misty Linville | Misty Linville |
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
| [HBASE-14674](https://issues.apache.org/jira/browse/HBASE-14674) | Rpc handler / task monitoring seems to be broken after 0.98 |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-14425](https://issues.apache.org/jira/browse/HBASE-14425) | In Secure Zookeeper cluster superuser will not have sufficient permission if multiple values are configured in "hbase.superuser" |  Major | security, Zookeeper | Pankaj Kumar | Pankaj Kumar |
| [HBASE-14695](https://issues.apache.org/jira/browse/HBASE-14695) | Fix some easy HTML warnings |  Minor | documentation | Misty Linville | Misty Linville |
| [HBASE-14660](https://issues.apache.org/jira/browse/HBASE-14660) | AssertionError found when using offheap BucketCache with assertion enabled |  Major | . | Yu Li | ramkrishna.s.vasudevan |
| [HBASE-14650](https://issues.apache.org/jira/browse/HBASE-14650) | Reenable TestNamespaceAuditor |  Major | . | stack | Heng Chen |
| [HBASE-14557](https://issues.apache.org/jira/browse/HBASE-14557) | MapReduce WALPlayer issue with NoTagsKeyValue |  Blocker | tooling | Jerry He | Anoop Sam John |
| [HBASE-14711](https://issues.apache.org/jira/browse/HBASE-14711) | Remove or annotated deprecated methods in HRegionInfo |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14532](https://issues.apache.org/jira/browse/HBASE-14532) | [book] dfs.client.read.shortcircuit is referenced as hbase-site.xml config and not described in section 7 |  Minor | documentation | Rick Moritz | Misty Linville |
| [HBASE-14739](https://issues.apache.org/jira/browse/HBASE-14739) | Fix broken link to Javadoc that is suppressed because it is generated  code |  Trivial | documentation | Misty Linville | Misty Linville |
| [HBASE-14742](https://issues.apache.org/jira/browse/HBASE-14742) | TestHeapMemoryManager is flakey |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14751](https://issues.apache.org/jira/browse/HBASE-14751) | Book seems to be broken |  Major | . | Enis Soztutar | Misty Linville |
| [HBASE-14754](https://issues.apache.org/jira/browse/HBASE-14754) | TestFastFailWithoutTestUtil failing on trunk now in #testPreemptiveFastFailException50Times |  Major | flakey, test | stack | stack |
| [HBASE-14733](https://issues.apache.org/jira/browse/HBASE-14733) | Minor typo in alter\_namespace.rb |  Trivial | shell | Enis Soztutar | Enis Soztutar |
| [HBASE-14723](https://issues.apache.org/jira/browse/HBASE-14723) | Fix IT tests split too many times |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14768](https://issues.apache.org/jira/browse/HBASE-14768) | bin/graceful\_stop.sh logs nothing as a balancer state to be stored |  Trivial | scripts | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-14773](https://issues.apache.org/jira/browse/HBASE-14773) | Fix HBase shell tests are skipped when skipping server tests. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-14755](https://issues.apache.org/jira/browse/HBASE-14755) | Fix some broken links and HTML problems |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14706](https://issues.apache.org/jira/browse/HBASE-14706) | RegionLocationFinder should return multiple servernames by top host |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-14632](https://issues.apache.org/jira/browse/HBASE-14632) | Region server aborts due to unguarded dereference of Reader |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-14759](https://issues.apache.org/jira/browse/HBASE-14759) | Avoid using Math.abs when selecting SyncRunner in FSHLog |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-14767](https://issues.apache.org/jira/browse/HBASE-14767) | Remove deprecated functions from HBaseAdmin |  Major | . | Appy | Appy |
| [HBASE-14774](https://issues.apache.org/jira/browse/HBASE-14774) | Raise the font size on high-DPI small-screen devices like iphone 6+ |  Major | website | Misty Linville | Misty Linville |
| [HBASE-14781](https://issues.apache.org/jira/browse/HBASE-14781) | Turn per cf flushing on for ITBLL by default |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-14787](https://issues.apache.org/jira/browse/HBASE-14787) | Remove obsolete ConnectionImplementation.refCount |  Trivial | . | Appy | Appy |
| [HBASE-14784](https://issues.apache.org/jira/browse/HBASE-14784) | Port conflict is not resolved in HBaseTestingUtility.randomFreePort() |  Minor | test | Youngjoon Kim | Youngjoon Kim |
| [HBASE-14778](https://issues.apache.org/jira/browse/HBASE-14778) | Make block cache hit percentages not integer in the metrics system |  Major | BlockCache, metrics | Elliott Clark | Elliott Clark |
| [HBASE-14788](https://issues.apache.org/jira/browse/HBASE-14788) | Splitting a region does not support the hbase.rs.evictblocksonclose config when closing source region |  Major | regionserver | Randy Fox | Ted Yu |
| [HBASE-14797](https://issues.apache.org/jira/browse/HBASE-14797) | Last round of CSS fix-ups |  Major | website | Misty Linville | Misty Linville |
| [HBASE-13982](https://issues.apache.org/jira/browse/HBASE-13982) | Add info for visibility labels/cell TTLs to ImportTsv |  Major | mapreduce | Lars George | NIDHI GAMBHIR |
| [HBASE-14802](https://issues.apache.org/jira/browse/HBASE-14802) | Replaying server crash recovery procedure after a failover causes incorrect handling of deadservers |  Major | master | Ashu Pachauri | Ashu Pachauri |
| [HBASE-14809](https://issues.apache.org/jira/browse/HBASE-14809) | Grant / revoke Namespace admin permission to group |  Major | security | Steven Hancz | Ted Yu |
| [HBASE-14806](https://issues.apache.org/jira/browse/HBASE-14806) | Missing sources.jar for several modules when building HBase |  Major | pom | Duo Zhang | Duo Zhang |
| [HBASE-14793](https://issues.apache.org/jira/browse/HBASE-14793) | Allow limiting size of block into L1 block cache. |  Major | BlockCache | Elliott Clark | Elliott Clark |
| [HBASE-14812](https://issues.apache.org/jira/browse/HBASE-14812) | Fix ResultBoundedCompletionService deadlock |  Major | Client, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14823](https://issues.apache.org/jira/browse/HBASE-14823) | HBase Ref Guide Refactoring |  Major | documentation | Misty Linville | Misty Linville |
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
| [HBASE-13976](https://issues.apache.org/jira/browse/HBASE-13976) | release manager list in ref guide is missing 0.94 line |  Major | documentation | Sean Busbey | Misty Linville |
| [HBASE-14838](https://issues.apache.org/jira/browse/HBASE-14838) | Clarify that SimpleRegionNormalizer does not merge empty (\<1MB) regions |  Trivial | documentation, regionserver | Romil Choksi | Josh Elser |
| [HBASE-14843](https://issues.apache.org/jira/browse/HBASE-14843) | TestWALProcedureStore.testLoad is flakey |  Blocker | proc-v2 | Heng Chen | Matteo Bertozzi |
| [HBASE-14807](https://issues.apache.org/jira/browse/HBASE-14807) | TestWALLockup is flakey |  Major | flakey, test | stack | stack |
| [HBASE-14952](https://issues.apache.org/jira/browse/HBASE-14952) | hbase-assembly source artifact has some incorrect modules |  Blocker | build, dependencies | Esteban Gutierrez | Sean Busbey |
| [HBASE-14974](https://issues.apache.org/jira/browse/HBASE-14974) | Total number of Regions in Transition number on UI incorrect |  Trivial | UI | Elliott Clark | Mikhail Antonov |
| [HBASE-15000](https://issues.apache.org/jira/browse/HBASE-15000) | Fix javadoc warn in LoadIncrementalHFiles |  Trivial | . | Anoop Sam John | Ashish Singhi |
| [HBASE-14999](https://issues.apache.org/jira/browse/HBASE-14999) | Remove ref to org.mortbay.log.Log |  Minor | dependencies | Anoop Sam John | Anoop Sam John |
| [HBASE-14990](https://issues.apache.org/jira/browse/HBASE-14990) | Tests in BaseTestHBaseFsck are run by its subclasses redundantly |  Minor | test | Ted Yu | Heng Chen |
| [HBASE-13907](https://issues.apache.org/jira/browse/HBASE-13907) | Document how to deploy a coprocessor |  Major | documentation | Misty Linville | Misty Linville |
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
| [HBASE-15098](https://issues.apache.org/jira/browse/HBASE-15098) | Normalizer switch in configuration is not used |  Blocker | master | Lars George | Ted Yu |
| [HBASE-15139](https://issues.apache.org/jira/browse/HBASE-15139) | Connection manager doesn't pass client metrics to RpcClient |  Major | Client, metrics | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15126](https://issues.apache.org/jira/browse/HBASE-15126) | HBaseFsck's checkRegionBoundaries function sets incorrect 'storesFirstKey' |  Major | hbck | chenrongwei | chenrongwei |
| [HBASE-15147](https://issues.apache.org/jira/browse/HBASE-15147) | Shell should use Admin.listTableNames() instead of Admin.listTables() |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15152](https://issues.apache.org/jira/browse/HBASE-15152) | Automatically include prefix-tree module in MR jobs if present |  Major | mapreduce | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-15133](https://issues.apache.org/jira/browse/HBASE-15133) | Data loss after compaction when a row has more than Integer.MAX\_VALUE columns |  Major | Compaction | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-15148](https://issues.apache.org/jira/browse/HBASE-15148) | Resolve IS2\_INCONSISTENT\_SYNC findbugs warning in AuthenticationTokenSecretManager |  Major | . | Yu Li | Yu Li |
| [HBASE-13082](https://issues.apache.org/jira/browse/HBASE-13082) | Coarsen StoreScanner locks to RegionScanner |  Major | Performance, Scanners | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-15132](https://issues.apache.org/jira/browse/HBASE-15132) | Master region merge RPC should authorize user request |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15164](https://issues.apache.org/jira/browse/HBASE-15164) | Fix broken links found via LinkLint |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-15145](https://issues.apache.org/jira/browse/HBASE-15145) | HBCK and Replication should authenticate to zookepeer using server principal |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15146](https://issues.apache.org/jira/browse/HBASE-15146) | Don't block on Reader threads queueing to a scheduler queue |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-15173](https://issues.apache.org/jira/browse/HBASE-15173) | Execute mergeRegions RPC call as the request user |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15019](https://issues.apache.org/jira/browse/HBASE-15019) | Replication stuck when HDFS is restarted |  Major | Replication, wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14810](https://issues.apache.org/jira/browse/HBASE-14810) | Update Hadoop support description to explain "not tested" vs "not supported" |  Critical | documentation | Sean Busbey | Misty Linville |
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
| [HBASE-15231](https://issues.apache.org/jira/browse/HBASE-15231) | Make TableState.State private |  Major | API | Misty Linville | Misty Linville |
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
| [HBASE-15250](https://issues.apache.org/jira/browse/HBASE-15250) | Fix links that are currently redirected from old URLs |  Major | documentation, website | Misty Linville | Misty Linville |
| [HBASE-13883](https://issues.apache.org/jira/browse/HBASE-13883) | Fix Memstore Flush section in HBase book |  Major | documentation | Vladimir Rodionov | Misty Linville |
| [HBASE-15289](https://issues.apache.org/jira/browse/HBASE-15289) | Add details about how to get usage instructions for Import and Export utilities |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-15251](https://issues.apache.org/jira/browse/HBASE-15251) | During a cluster restart, Hmaster thinks it is a failover by mistake |  Major | master | Clara Xiong | Clara Xiong |
| [HBASE-15259](https://issues.apache.org/jira/browse/HBASE-15259) | WALEdits under replay will also be replicated |  Minor | . | ramkrishna.s.vasudevan | Heng Chen |
| [HBASE-15298](https://issues.apache.org/jira/browse/HBASE-15298) | Fix missing or wrong asciidoc anchors in the reference guide |  Minor | documentation | Youngjoon Kim | Youngjoon Kim |
| [HBASE-15285](https://issues.apache.org/jira/browse/HBASE-15285) | Forward-port respect for isReturnResult from HBASE-15095 |  Major | Client | stack | stack |
| [HBASE-15247](https://issues.apache.org/jira/browse/HBASE-15247) | InclusiveStopFilter does not respect reverse Filter property |  Major | Filters | Rick Moritz | Amal Joshy |
| [HBASE-15319](https://issues.apache.org/jira/browse/HBASE-15319) | clearJmxCache does not take effect actually |  Major | metrics | Hao Lin | Elliott Clark |
| [HBASE-15332](https://issues.apache.org/jira/browse/HBASE-15332) | Document how to take advantage of HDFS-6133 in HBase |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-15358](https://issues.apache.org/jira/browse/HBASE-15358) | canEnforceTimeLimitFromScope should use timeScope instead of sizeScope |  Major | Scanners | Phil Yang | Phil Yang |
| [HBASE-15128](https://issues.apache.org/jira/browse/HBASE-15128) | Disable region splits and merges switch in master |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15329](https://issues.apache.org/jira/browse/HBASE-15329) | Cross-Site Scripting: Reflected in table.jsp |  Minor | security, UI | stack | Samir Ahmic |
| [HBASE-15397](https://issues.apache.org/jira/browse/HBASE-15397) | Create bulk load replication znode(hfile-refs) in ZK replication queue by default |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15393](https://issues.apache.org/jira/browse/HBASE-15393) | Enable table replication command will fail when parent znode is not default in peer cluster |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15137](https://issues.apache.org/jira/browse/HBASE-15137) | CallTimeoutException and CallQueueTooBigException should trigger PFFE |  Major | . | Elliott Clark | Mikhail Antonov |
| [HBASE-15364](https://issues.apache.org/jira/browse/HBASE-15364) | Fix unescaped \< characters in Javadoc |  Major | API, documentation | Misty Linville | Gabor Liptak |
| [HBASE-15271](https://issues.apache.org/jira/browse/HBASE-15271) | Spark Bulk Load: Need to write HFiles to tmp location then rename to protect from Spark Executor Failures |  Major | . | Theodore michael Malaska | Theodore michael Malaska |
| [HBASE-15378](https://issues.apache.org/jira/browse/HBASE-15378) | Scanner cannot handle heartbeat message with no results |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15425](https://issues.apache.org/jira/browse/HBASE-15425) | Failing to write bulk load event marker in the WAL is ignored |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-15379](https://issues.apache.org/jira/browse/HBASE-15379) | Fake cells created in read path not implementing SettableSequenceId |  Major | . | Anoop Sam John | Amal Joshy |
| [HBASE-15439](https://issues.apache.org/jira/browse/HBASE-15439) | getMaximumAllowedTimeBetweenRuns in ScheduledChore ignores the TimeUnit |  Major | master, mob, regionserver | Ted Yu | Jingcheng Du |
| [HBASE-15463](https://issues.apache.org/jira/browse/HBASE-15463) | Region normalizer should check whether split/merge is enabled |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15430](https://issues.apache.org/jira/browse/HBASE-15430) | Failed taking snapshot - Manifest proto-message too large |  Critical | snapshots | JunHo Cho | JunHo Cho |
| [HBASE-15441](https://issues.apache.org/jira/browse/HBASE-15441) | Fix WAL splitting when region has moved multiple times |  Blocker | Recovery, wal | Elliott Clark | Elliott Clark |
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
| [HBASE-15234](https://issues.apache.org/jira/browse/HBASE-15234) | ReplicationLogCleaner can abort due to transient ZK issues |  Critical | master, Replication | Gary Helmling | Gary Helmling |
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
| [HBASE-15703](https://issues.apache.org/jira/browse/HBASE-15703) | Deadline scheduler needs to return to the client info about skipped calls, not just drop them |  Critical | IPC/RPC | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15714](https://issues.apache.org/jira/browse/HBASE-15714) | We are calling checkRow() twice in doMiniBatchMutation() |  Major | regionserver | Enis Soztutar | Heng Chen |
| [HBASE-15752](https://issues.apache.org/jira/browse/HBASE-15752) | ClassNotFoundException is encountered when custom WAL codec is not found in WALPlayer job |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15528](https://issues.apache.org/jira/browse/HBASE-15528) | Clean up outdated entries in hbase-default.xml |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-15613](https://issues.apache.org/jira/browse/HBASE-15613) | TestNamespaceCommand times out |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15741](https://issues.apache.org/jira/browse/HBASE-15741) | Provide backward compatibility for HBase coprocessor service names |  Blocker | Coprocessors | Gary Helmling | Gary Helmling |
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
| [HBASE-15811](https://issues.apache.org/jira/browse/HBASE-15811) | Batch Get after batch Put does not fetch all Cells |  Blocker | Client | stack | stack |
| [HBASE-15615](https://issues.apache.org/jira/browse/HBASE-15615) | Wrong sleep time when RegionServerCallable need retry |  Major | Client | Guanghao Zhang | Guanghao Zhang |
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
| [HBASE-14818](https://issues.apache.org/jira/browse/HBASE-14818) | user\_permission does not list namespace permissions |  Minor | . | Steven Hancz | Xiang Li |
| [HBASE-15880](https://issues.apache.org/jira/browse/HBASE-15880) | RpcClientImpl#tracedWriteRequest incorrectly closes HTrace span |  Major | tracing | Mikhail Antonov | Mikhail Antonov |
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
| [HBASE-15908](https://issues.apache.org/jira/browse/HBASE-15908) | Checksum verification is broken due to incorrect passing of ByteBuffers in DataChecksum |  Blocker | HFile | Mikhail Antonov | Mikhail Antonov |
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
| [HBASE-16238](https://issues.apache.org/jira/browse/HBASE-16238) | It's useless to catch SESSIONEXPIRED exception and retry in RecoverableZooKeeper |  Minor | Zookeeper | Allan Yang | Allan Yang |
| [HBASE-16244](https://issues.apache.org/jira/browse/HBASE-16244) | LocalHBaseCluster start timeout should be configurable |  Major | . | Siddharth Wagle |  |
| [HBASE-16272](https://issues.apache.org/jira/browse/HBASE-16272) | Overflow in ServerName's compareTo method |  Major | . | huaxiang sun | huaxiang sun |
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
| [HBASE-16347](https://issues.apache.org/jira/browse/HBASE-16347) | Unevaluated expressions in book |  Major | documentation, website | Nick Dimiduk | Dima Spivak |
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
| [HBASE-16528](https://issues.apache.org/jira/browse/HBASE-16528) | Procedure-V2: ServerCrashProcedure misses owner information |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
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
| [HBASE-16693](https://issues.apache.org/jira/browse/HBASE-16693) | The commit of HBASE-16604 creates a unrelated folder |  Critical | . | Chia-Ping Tsai | Enis Soztutar |
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
| [HBASE-16743](https://issues.apache.org/jira/browse/HBASE-16743) | TestSimpleRpcScheduler#testCoDelScheduling is broke |  Major | rpc | stack | Mikhail Antonov |
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
| [HBASE-17192](https://issues.apache.org/jira/browse/HBASE-17192) | remove use of scala-tools.org from pom |  Blocker | spark, website | Sean Busbey | Sean Busbey |
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
| [HBASE-15535](https://issues.apache.org/jira/browse/HBASE-15535) | Correct link to Trafodion |  Minor | documentation | Atanu Mishra | Gabor Liptak |
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
| [HBASE-18026](https://issues.apache.org/jira/browse/HBASE-18026) | ProtobufUtil seems to do extra array copying |  Minor | . | Vincent Poon | Vincent Poon |
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
| [HBASE-18030](https://issues.apache.org/jira/browse/HBASE-18030) | Per Cell TTL tags may get duplicated with increments/Append causing tags length overflow |  Critical | regionserver | Abhishek Kumar | Anoop Sam John |
| [HBASE-18005](https://issues.apache.org/jira/browse/HBASE-18005) | read replica: handle the case that region server hosting both primary replica and meta region is down |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-9393](https://issues.apache.org/jira/browse/HBASE-9393) | Region Server fails to properly close socket resulting in many CLOSE\_WAIT to Data Nodes |  Critical | . | Avi Zrachya | Ashish Singhi |
| [HBASE-18132](https://issues.apache.org/jira/browse/HBASE-18132) | Low replication should be checked in period in case of datanode rolling upgrade |  Major | . | Allan Yang | Allan Yang |
| [HBASE-18145](https://issues.apache.org/jira/browse/HBASE-18145) | The flush may cause the corrupt data for reading |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18158](https://issues.apache.org/jira/browse/HBASE-18158) | Two running in-memory compaction threads may lose data |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18149](https://issues.apache.org/jira/browse/HBASE-18149) | The setting rules for table-scope attributes and family-scope attributes should keep consistent |  Major | shell | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18184](https://issues.apache.org/jira/browse/HBASE-18184) | Add hbase-hadoop2-compat jar as MapReduce job dependency |  Minor | mapreduce | Alex Araujo | Alex Araujo |
| [HBASE-15302](https://issues.apache.org/jira/browse/HBASE-15302) | Reenable the other tests disabled by HBASE-14678 |  Major | test | Phil Yang | Phil Yang |
| [HBASE-18141](https://issues.apache.org/jira/browse/HBASE-18141) | Regionserver fails to shutdown when abort triggered in RegionScannerImpl during RPC call |  Critical | regionserver, security | Gary Helmling | Gary Helmling |
| [HBASE-18195](https://issues.apache.org/jira/browse/HBASE-18195) | Remove redundant single quote from start message for HMaster and HRegionServer |  Minor | master, regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-18193](https://issues.apache.org/jira/browse/HBASE-18193) | Master web UI presents the incorrect number of regions |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18092](https://issues.apache.org/jira/browse/HBASE-18092) | Removing a peer does not properly clean up the ReplicationSourceManager state and metrics |  Major | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-18192](https://issues.apache.org/jira/browse/HBASE-18192) | Replication drops recovered queues on region server shutdown |  Blocker | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-18199](https://issues.apache.org/jira/browse/HBASE-18199) | Race in NettyRpcConnection may cause call stuck in BufferCallBeforeInitHandler forever |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-18137](https://issues.apache.org/jira/browse/HBASE-18137) | Replication gets stuck for empty WALs |  Critical | Replication | Ashu Pachauri | Vincent Poon |
| [HBASE-18207](https://issues.apache.org/jira/browse/HBASE-18207) | branch-2 build fails in the checkstyle phase |  Major | . | Ted Yu | stack |
| [HBASE-18200](https://issues.apache.org/jira/browse/HBASE-18200) | Set hadoop check versions for branch-2 and branch-2.x in pre commit |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-18219](https://issues.apache.org/jira/browse/HBASE-18219) | Fix typo in constant HConstants.HBASE\_CLIENT\_MEAT\_REPLICA\_SCAN\_TIMEOUT |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18209](https://issues.apache.org/jira/browse/HBASE-18209) | Include httpclient / httpcore jars in build artifacts |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18166](https://issues.apache.org/jira/browse/HBASE-18166) | [AMv2] We are splitting already-split files |  Major | Region Assignment | stack | stack |
| [HBASE-18225](https://issues.apache.org/jira/browse/HBASE-18225) | Fix findbugs regression calling toString() on an array |  Trivial | . | Josh Elser | Josh Elser |
| [HBASE-18227](https://issues.apache.org/jira/browse/HBASE-18227) | [AMv2] Fix test hbase.coprocessor.TestCoprocessorMetrics#testRegionObserverAfterRegionClosed |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18180](https://issues.apache.org/jira/browse/HBASE-18180) | Possible connection leak while closing BufferedMutator in TableOutputFormat |  Major | mapreduce | Pankaj Kumar | Pankaj Kumar |
| [HBASE-17988](https://issues.apache.org/jira/browse/HBASE-17988) | get-active-master.rb and draining\_servers.rb no longer work |  Critical | scripts | Mike Drob | Chinmay Kulkarni |
| [HBASE-18212](https://issues.apache.org/jira/browse/HBASE-18212) | In Standalone mode with local filesystem HBase logs Warning message:Failed to invoke 'unbuffer' method in class class org.apache.hadoop.fs.FSDataInputStream |  Minor | Operability | Umesh Agashe | Ashish Singhi |
| [HBASE-18235](https://issues.apache.org/jira/browse/HBASE-18235) | LoadBalancer.BOGUS\_SERVER\_NAME should not have a bogus hostname |  Major | . | Francis Liu | Francis Liu |
| [HBASE-18254](https://issues.apache.org/jira/browse/HBASE-18254) | ServerCrashProcedure checks and waits for meta initialized, instead should check and wait for meta loaded |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18263](https://issues.apache.org/jira/browse/HBASE-18263) | Resolve NPE in backup Master UI when access to procedures.jsp |  Trivial | UI | Shibin Zhang | Shibin Zhang |
| [HBASE-18265](https://issues.apache.org/jira/browse/HBASE-18265) | Correct the link unuseful in regionServer's region state UI |  Trivial | UI | Shibin Zhang | Shibin Zhang |
| [HBASE-18274](https://issues.apache.org/jira/browse/HBASE-18274) | hbase autorestart will overwrite the gc log |  Major | . | Fangyuan Deng | Fangyuan Deng |
| [HBASE-18230](https://issues.apache.org/jira/browse/HBASE-18230) | Generated LICENSE file includes unsubstituted Velocity variables |  Major | build | Mike Drob | Mike Drob |
| [HBASE-18244](https://issues.apache.org/jira/browse/HBASE-18244) | org.apache.hadoop.hbase.client.rsgroup.TestShellRSGroups hangs/fails |  Major | test | Josh Elser | Stephen Yuan Jiang |
| [HBASE-18278](https://issues.apache.org/jira/browse/HBASE-18278) | [AMv2] Enable and fix uni test hbase.master.procedure.TestServerCrashProcedure#testRecoveryAndDoubleExecutionOnRsWithMeta |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18290](https://issues.apache.org/jira/browse/HBASE-18290) | Fix TestAddColumnFamilyProcedure and TestDeleteTableProcedure |  Major | test | stack | stack |
| [HBASE-17982](https://issues.apache.org/jira/browse/HBASE-17982) |  Is the  word "occured" should be "occurred ? |  Trivial | . | Shibin Zhang | Shibin Zhang |
| [HBASE-16192](https://issues.apache.org/jira/browse/HBASE-16192) | Fix the potential problems in TestAcidGuarantees |  Major | . | Colin Ma | Colin Ma |
| [HBASE-18302](https://issues.apache.org/jira/browse/HBASE-18302) | Protobuf section in the docs needs some clean up |  Blocker | documentation | Artem Ervits | Artem Ervits |
| [HBASE-13866](https://issues.apache.org/jira/browse/HBASE-13866) | Add endpoint coprocessor to the section hbase.coprocessor.region.classes in HBase book |  Trivial | documentation | Vladimir Rodionov | Misty Linville |
| [HBASE-18311](https://issues.apache.org/jira/browse/HBASE-18311) | clean up the quickstart guide |  Major | documentation | Artem Ervits | Artem Ervits |
| [HBASE-18320](https://issues.apache.org/jira/browse/HBASE-18320) | Address maven-site-plugin upgrade steps |  Blocker | website | Peter Somogyi | Peter Somogyi |
| [HBASE-18310](https://issues.apache.org/jira/browse/HBASE-18310) | LoadTestTool unable to write data |  Major | util | Samir Ahmic | Samir Ahmic |
| [HBASE-18301](https://issues.apache.org/jira/browse/HBASE-18301) | Enable TestSimpleRegionNormalizerOnCluster#testRegionNormalizationMergeOnCluster that was disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16120](https://issues.apache.org/jira/browse/HBASE-16120) | Add shell test for truncate\_preserve |  Minor | . | Appy | Guangxu Cheng |
| [HBASE-18325](https://issues.apache.org/jira/browse/HBASE-18325) | Disable flakey TestMasterProcedureWalLease |  Major | test | stack | stack |
| [HBASE-17931](https://issues.apache.org/jira/browse/HBASE-17931) | Assign system tables to servers with highest version |  Blocker | Region Assignment, scan | Phil Yang | Phil Yang |
| [HBASE-18312](https://issues.apache.org/jira/browse/HBASE-18312) | Ineffective handling of FileNotFoundException in FileLink$FileLinkInputStream.tryOpen() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18329](https://issues.apache.org/jira/browse/HBASE-18329) | update links in config guide to point to java 8 references |  Major | documentation | Artem Ervits | Artem Ervits |
| [HBASE-18335](https://issues.apache.org/jira/browse/HBASE-18335) | clean up configuration guide |  Major | documentation | Artem Ervits | Artem Ervits |
| [HBASE-18341](https://issues.apache.org/jira/browse/HBASE-18341) | Update findHangingTests.py script to match changed consoleText of trunk build |  Major | . | Appy | Appy |
| [HBASE-17705](https://issues.apache.org/jira/browse/HBASE-17705) | Procedure execution must fail fast if procedure is not registered |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18292](https://issues.apache.org/jira/browse/HBASE-18292) | Fix flaky test hbase.master.locking.TestLockProcedure#testLocalMasterLockRecovery() |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18348](https://issues.apache.org/jira/browse/HBASE-18348) | The implementation of AsyncTableRegionLocator does not follow the javadoc |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18358](https://issues.apache.org/jira/browse/HBASE-18358) | Backport HBASE-18099 'FlushSnapshotSubprocedure should wait for concurrent Region#flush() to finish' to branch-1.3 |  Critical | snapshots | Ted Yu | Ted Yu |
| [HBASE-18177](https://issues.apache.org/jira/browse/HBASE-18177) | FanOutOneBlockAsyncDFSOutputHelper fails to compile against Hadoop 3 |  Major | wal | Esteban Gutierrez | Mike Drob |
| [HBASE-18260](https://issues.apache.org/jira/browse/HBASE-18260) | Address new license dependencies from hadoop3-alpha4 |  Major | dependencies | Mike Drob | Mike Drob |
| [HBASE-18377](https://issues.apache.org/jira/browse/HBASE-18377) | Error handling for FileNotFoundException should consider RemoteException in openReader() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15548](https://issues.apache.org/jira/browse/HBASE-15548) | SyncTable: sourceHashDir is supposed to be optional but won't work without |  Critical | mapreduce, Operability, tooling | My Ho | Dave Latham |
| [HBASE-16090](https://issues.apache.org/jira/browse/HBASE-16090) | ResultScanner is not closed in SyncTable#finishRemainingHashRanges() |  Major | mapreduce, Operability, tooling | Ted Yu | Ted Yu |
| [HBASE-17648](https://issues.apache.org/jira/browse/HBASE-17648) | HBase Table-level synchronization fails between two secured(kerberized) clusters |  Critical | mapreduce, Operability, security, tooling | Yi Liang | Yi Liang |
| [HBASE-18393](https://issues.apache.org/jira/browse/HBASE-18393) | hbase shell non-interactive broken |  Blocker | scripts, shell | Samir Ahmic | Mike Drob |
| [HBASE-18330](https://issues.apache.org/jira/browse/HBASE-18330) | NPE in ReplicationZKLockCleanerChore |  Major | master, Replication | Minwoo Kang | Andrew Purtell |
| [HBASE-18337](https://issues.apache.org/jira/browse/HBASE-18337) | hbase-shaded-server brings in signed jars |  Major | shading | Mike Drob | Mike Drob |
| [HBASE-16993](https://issues.apache.org/jira/browse/HBASE-16993) | BucketCache throw java.io.IOException: Invalid HFile block magic when configuring hbase.bucketcache.bucket.sizes |  Major | BucketCache | liubangchen | Anoop Sam John |
| [HBASE-18404](https://issues.apache.org/jira/browse/HBASE-18404) | Small typo on ACID documentation page |  Trivial | documentation | Michael Crutcher | Coral |
| [HBASE-18430](https://issues.apache.org/jira/browse/HBASE-18430) | Typo in "contributing to documentation" page |  Major | documentation | Coral | Coral |
| [HBASE-18433](https://issues.apache.org/jira/browse/HBASE-18433) | Convenience method for creating simple ColumnFamilyDescriptor |  Major | Client | Mike Drob | Mike Drob |
| [HBASE-18354](https://issues.apache.org/jira/browse/HBASE-18354) | Fix TestMasterMetrics that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Vladimir Rodionov |
| [HBASE-18323](https://issues.apache.org/jira/browse/HBASE-18323) | Remove multiple ACLs for the same user in kerberos |  Minor | . | Shibin Zhang | Shibin Zhang |
| [HBASE-18427](https://issues.apache.org/jira/browse/HBASE-18427) | minor cleanup around AssignmentManager |  Minor | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18054](https://issues.apache.org/jira/browse/HBASE-18054) | log when we add/remove failed servers in client |  Major | Client, Operability | Sean Busbey | Ali |
| [HBASE-18441](https://issues.apache.org/jira/browse/HBASE-18441) | ZookeeperWatcher#interruptedException should throw exception |  Major | Zookeeper | Yu Li | Yu Li |
| [HBASE-18447](https://issues.apache.org/jira/browse/HBASE-18447) | MetricRegistryInfo#hashCode uses hashCode instead of toHashCode |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-18449](https://issues.apache.org/jira/browse/HBASE-18449) | Fix client.locking.TestEntityLocks#testHeartbeatException |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18445](https://issues.apache.org/jira/browse/HBASE-18445) | Upgrading Guava broke hadoop-3.0 profile |  Blocker | build, dependencies, hadoop3 | Mike Drob | Mike Drob |
| [HBASE-17839](https://issues.apache.org/jira/browse/HBASE-17839) | "Data Model" section: Table 1 has only 5 data rows instead 6. |  Trivial | documentation | Evgeny Kincharov | Evgeny Kincharov |
| [HBASE-18362](https://issues.apache.org/jira/browse/HBASE-18362) | hbck should not report split replica parent region from meta as errors |  Minor | hbck | huaxiang sun | huaxiang sun |
| [HBASE-18185](https://issues.apache.org/jira/browse/HBASE-18185) | IntegrationTestTimeBoundedRequestsWithRegionReplicas unbalanced tests fails with AssertionError |  Minor | integration tests | Balazs Meszaros | Balazs Meszaros |
| [HBASE-17131](https://issues.apache.org/jira/browse/HBASE-17131) | Avoid livelock caused by HRegion#processRowsWithLocks |  Major | regionserver | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18473](https://issues.apache.org/jira/browse/HBASE-18473) | VC.listLabels() erroneously closes any connection |  Major | Client | Lars George | Anoop Sam John |
| [HBASE-18406](https://issues.apache.org/jira/browse/HBASE-18406) | In ServerCrashProcedure.java start(MasterProcedureEnv) is a no-op |  Major | . | Alex Leblang | Alex Leblang |
| [HBASE-18481](https://issues.apache.org/jira/browse/HBASE-18481) | The autoFlush flag was not used in PE tool |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18259](https://issues.apache.org/jira/browse/HBASE-18259) | HBase book link to "beginner" issues includes resolved issues |  Major | documentation | Mike Drob | Peter Somogyi |
| [HBASE-18475](https://issues.apache.org/jira/browse/HBASE-18475) | MasterProcedureScheduler incorrectly passes null Procedure to table locking |  Major | proc-v2 | Sean Busbey | Sean Busbey |
| [HBASE-18487](https://issues.apache.org/jira/browse/HBASE-18487) | Minor fixes in row lock implementation |  Major | . | James Taylor | James Taylor |
| [HBASE-18491](https://issues.apache.org/jira/browse/HBASE-18491) | [AMv2] Fail UnassignProcedure if source Region Server is not online. |  Critical | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18480](https://issues.apache.org/jira/browse/HBASE-18480) | The cost of BaseLoadBalancer.cluster is changed even if the rollback is done |  Major | Balancer | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17056](https://issues.apache.org/jira/browse/HBASE-17056) | Remove checked in PB generated files |  Critical | . | Enis Soztutar | stack |
| [HBASE-18470](https://issues.apache.org/jira/browse/HBASE-18470) | Remove the redundant comma from RetriesExhaustedWithDetailsException#getDesc |  Minor | Client | Benedict Jin | Benedict Jin |
| [HBASE-18516](https://issues.apache.org/jira/browse/HBASE-18516) | [AMv2] Remove dead code in ServerManager resulted mostly from AMv2 refactoring |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18492](https://issues.apache.org/jira/browse/HBASE-18492) | [AMv2] Embed code for selecting highest versioned region server for system table regions in AssignmentManager.processAssignQueue() |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18525](https://issues.apache.org/jira/browse/HBASE-18525) | TestAssignmentManager#testSocketTimeout fails in master branch |  Major | . | Ted Yu | Umesh Agashe |
| [HBASE-18262](https://issues.apache.org/jira/browse/HBASE-18262) | name of parameter quote need update in hbase-default.xml |  Minor | . | Dongtao Zhang | Dongtao Zhang |
| [HBASE-18560](https://issues.apache.org/jira/browse/HBASE-18560) | Test master.assignment.TestAssignmentManager hangs on master and its in flaky list |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18024](https://issues.apache.org/jira/browse/HBASE-18024) | HRegion#initializeRegionInternals should not re-create .hregioninfo file when the region directory no longer exists |  Major | Region Assignment, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18563](https://issues.apache.org/jira/browse/HBASE-18563) | Fix RAT License complaint about website jenkins scripts |  Trivial | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18390](https://issues.apache.org/jira/browse/HBASE-18390) | Sleep too long when finding region location failed |  Major | Client | Phil Yang | Phil Yang |
| [HBASE-18551](https://issues.apache.org/jira/browse/HBASE-18551) | [AMv2] UnassignProcedure and crashed regionservers |  Major | amv2 | stack | stack |
| [HBASE-18025](https://issues.apache.org/jira/browse/HBASE-18025) | CatalogJanitor should collect outdated RegionStates from the AM |  Major | read replicas | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-18557](https://issues.apache.org/jira/browse/HBASE-18557) | change splitable to mergeable in MergeTableRegionsProcedure |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18592](https://issues.apache.org/jira/browse/HBASE-18592) | [hbase-thirdparty] Doc on new hbase-thirdparty dependency for the refguide |  Major | documentation | stack | stack |
| [HBASE-17803](https://issues.apache.org/jira/browse/HBASE-17803) | PE always re-creates table when we specify the split policy |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18599](https://issues.apache.org/jira/browse/HBASE-18599) | Add missing @Deprecated annotations |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-18526](https://issues.apache.org/jira/browse/HBASE-18526) | FIFOCompactionPolicy pre-check uses wrong scope |  Major | master | Lars George | Vladimir Rodionov |
| [HBASE-18437](https://issues.apache.org/jira/browse/HBASE-18437) | Revoke access permissions of a user from a table does not work as expected |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-18598](https://issues.apache.org/jira/browse/HBASE-18598) | AsyncNonMetaRegionLocator use FIFO algorithm to get a candidate locate request |  Minor | asyncclient | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18493](https://issues.apache.org/jira/browse/HBASE-18493) | [AMv2] On region server crash do not process system table regions through AssignmentManager.checkIfShouldMoveSystemRegionAsync() |  Critical | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18431](https://issues.apache.org/jira/browse/HBASE-18431) | Mitigate compatibility concerns between branch-1.3 and branch-1.4 |  Blocker | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18587](https://issues.apache.org/jira/browse/HBASE-18587) | Fix Flaky TestFileIOEngine |  Major | BucketCache, test | Zach York | Zach York |
| [HBASE-18125](https://issues.apache.org/jira/browse/HBASE-18125) | HBase shell disregards spaces at the end of a split key in a split file |  Major | shell | Ashu Pachauri | Chenxi Tong |
| [HBASE-18617](https://issues.apache.org/jira/browse/HBASE-18617) | FuzzyRowKeyFilter should not modify the filter pairs |  Minor | . | vinisha | vinisha |
| [HBASE-18572](https://issues.apache.org/jira/browse/HBASE-18572) | Delete can't remove the cells which have no visibility label |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18471](https://issues.apache.org/jira/browse/HBASE-18471) | The DeleteFamily cell is skipped when StoreScanner seeks to next column |  Critical | Deletes, scan | Thomas Martens | Chia-Ping Tsai |
| [HBASE-18637](https://issues.apache.org/jira/browse/HBASE-18637) | Update the link of "Bending time in HBase" |  Trivial | documentation | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-18634](https://issues.apache.org/jira/browse/HBASE-18634) | Fix client.TestClientClusterStatus |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18627](https://issues.apache.org/jira/browse/HBASE-18627) | Fix TestRegionServerReadRequestMetrics |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16615](https://issues.apache.org/jira/browse/HBASE-16615) | Fix flaky TestScannerHeartbeatMessages |  Major | Client, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-18644](https://issues.apache.org/jira/browse/HBASE-18644) | Duplicate "compactionQueueLength" metric in Region Server metrics |  Minor | metrics | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-18615](https://issues.apache.org/jira/browse/HBASE-18615) | hbase-rest tests fail in hbase-2.0.0-alpha2 |  Blocker | test | stack | stack |
| [HBASE-18655](https://issues.apache.org/jira/browse/HBASE-18655) | TestAsyncClusterAdminApi2 failing sometimes |  Major | . | Mike Drob | stack |
| [HBASE-18575](https://issues.apache.org/jira/browse/HBASE-18575) | [AMv2] Enable and fix TestRestartCluster#testRetainAssignmentOnRestart on master |  Critical | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18614](https://issues.apache.org/jira/browse/HBASE-18614) | Setting BUCKET\_CACHE\_COMBINED\_KEY to false disables stats on RS UI |  Major | regionserver | Biju Nair | Biju Nair |
| [HBASE-18628](https://issues.apache.org/jira/browse/HBASE-18628) | ZKPermissionWatcher blocks all ZK notifications |  Critical | regionserver | Mike Drob | Mike Drob |
| [HBASE-18647](https://issues.apache.org/jira/browse/HBASE-18647) | Parameter cacheBlocks does not take effect in REST API for scan |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18287](https://issues.apache.org/jira/browse/HBASE-18287) | Remove log warning in  PartitionedMobCompactor.java#getFileStatus |  Minor | mob | huaxiang sun | huaxiang sun |
| [HBASE-18607](https://issues.apache.org/jira/browse/HBASE-18607) | fix submit-patch.py to support utf8 |  Trivial | . | Tamas Penzes | Tamas Penzes |
| [HBASE-18679](https://issues.apache.org/jira/browse/HBASE-18679) | YARN may null Counters object and cause an NPE in ITBLL |  Trivial | integration tests | Josh Elser | Josh Elser |
| [HBASE-16722](https://issues.apache.org/jira/browse/HBASE-16722) | Document: Broken link in CatalogJanitor |  Trivial | documentation | Aki Ariga | Jan Hentschel |
| [HBASE-18671](https://issues.apache.org/jira/browse/HBASE-18671) | Support Append/Increment in rest api |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18635](https://issues.apache.org/jira/browse/HBASE-18635) | Fix asciidoc warnings |  Major | . | Misty Linville | Jan Hentschel |
| [HBASE-18633](https://issues.apache.org/jira/browse/HBASE-18633) | Add more info to understand the source/scenario of large batch requests exceeding threshold |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-18640](https://issues.apache.org/jira/browse/HBASE-18640) | Move mapreduce out of hbase-server into separate hbase-mapreduce module |  Major | . | Appy | Appy |
| [HBASE-18369](https://issues.apache.org/jira/browse/HBASE-18369) | hbase thrift web-ui not available |  Major | Thrift | Peter Somogyi | Tamas Penzes |
| [HBASE-18568](https://issues.apache.org/jira/browse/HBASE-18568) | Correct  metric of  numRegions |  Critical | metrics | Shibin Zhang | Shibin Zhang |
| [HBASE-18665](https://issues.apache.org/jira/browse/HBASE-18665) | ReversedScannerCallable invokes getRegionLocations incorrectly |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-14745](https://issues.apache.org/jira/browse/HBASE-14745) | Shade the last few dependencies in hbase-shaded-client |  Blocker | Client, dependencies | Elliott Clark | Elliott Clark |
| [HBASE-18714](https://issues.apache.org/jira/browse/HBASE-18714) | The dropBehind and readahead don't be applied when useHBaseChecksum is enabled |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15947](https://issues.apache.org/jira/browse/HBASE-15947) | Classes used only for tests included in main code base |  Trivial | build, test | Sean Mackrory | Sean Mackrory |
| [HBASE-18306](https://issues.apache.org/jira/browse/HBASE-18306) | Get rid of TableDescriptor#getConfiguration |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18461](https://issues.apache.org/jira/browse/HBASE-18461) | Build broken If the username contains a backslash |  Minor | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18741](https://issues.apache.org/jira/browse/HBASE-18741) | Remove cancel command from backup code |  Major | . | Ted Yu | Peter Somogyi |
| [HBASE-16390](https://issues.apache.org/jira/browse/HBASE-16390) | Fix documentation around setAutoFlush |  Minor | documentation | stack | Sahil Aggarwal |
| [HBASE-15497](https://issues.apache.org/jira/browse/HBASE-15497) | Incorrect javadoc for atomicity guarantee of Increment and Append |  Minor | documentation | Jianwei Cui | Jianwei Cui |
| [HBASE-18743](https://issues.apache.org/jira/browse/HBASE-18743) | HFiles in use by a table which has the same name and namespace with a default table cloned from snapshot may be deleted when that snapshot and default table are deleted |  Critical | . | wenbang | wenbang |
| [HBASE-18757](https://issues.apache.org/jira/browse/HBASE-18757) | Fix Improper bitwise & in BucketCache offset calculation |  Major | BucketCache | Zach York | Zach York |
| [HBASE-17713](https://issues.apache.org/jira/browse/HBASE-17713) | the interface '/version/cluster' with header 'Accept: application/json' return is not JSON but plain text |  Minor | REST | Feng Ce | Guangxu Cheng |
| [HBASE-18543](https://issues.apache.org/jira/browse/HBASE-18543) | Re-enable test master.TestMasterFailover on master |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-18765](https://issues.apache.org/jira/browse/HBASE-18765) | The value of balancerRan is true even though no plans are executed |  Minor | rsgroup | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18759](https://issues.apache.org/jira/browse/HBASE-18759) | Fix hbase-shaded-check-invariants failure |  Blocker | Client, mapreduce | Appy | Sean Busbey |
| [HBASE-17853](https://issues.apache.org/jira/browse/HBASE-17853) | Link to "Why does HBase care about /etc/hosts?" does not work |  Trivial | documentation | manojkumargandikota | Chia-Ping Tsai |
| [HBASE-18791](https://issues.apache.org/jira/browse/HBASE-18791) | HBASE\_HOME/lib does not contain hbase-mapreduce-${project.version}-tests.jar |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18771](https://issues.apache.org/jira/browse/HBASE-18771) | Incorrect StoreFileRefresh leading to split and compaction failures |  Blocker | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-18789](https://issues.apache.org/jira/browse/HBASE-18789) | Displays the reporting interval of each RS on the Master page |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18723](https://issues.apache.org/jira/browse/HBASE-18723) | [pom cleanup] Do a pass with dependency:analyze; remove unused and explicity list the dependencies we exploit |  Major | pom | stack | stack |
| [HBASE-16611](https://issues.apache.org/jira/browse/HBASE-16611) | Flakey org.apache.hadoop.hbase.client.TestReplicasClient.testCancelOfMultiGet |  Major | . | Heng Chen | Heng Chen |
| [HBASE-18818](https://issues.apache.org/jira/browse/HBASE-18818) | TestConnectionImplemenation fails |  Major | test | stack | stack |
| [HBASE-18813](https://issues.apache.org/jira/browse/HBASE-18813) | TestCanaryTool fails on branch-1 / branch-1.4 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18801](https://issues.apache.org/jira/browse/HBASE-18801) | Bulk load cleanup may falsely deem file deletion successful |  Major | . | Ted Yu | Reid Chan |
| [HBASE-14004](https://issues.apache.org/jira/browse/HBASE-14004) | [Replication] Inconsistency between Memstore and WAL may result in data in remote cluster that is not in the origin |  Critical | regionserver, Replication | He Liangliang | Duo Zhang |
| [HBASE-18641](https://issues.apache.org/jira/browse/HBASE-18641) | Include block content verification logic used in lruCache in bucketCache |  Minor | regionserver | Biju Nair | Biju Nair |
| [HBASE-18831](https://issues.apache.org/jira/browse/HBASE-18831) | Add explicit dependency on javax.el |  Major | dependencies | stack | stack |
| [HBASE-18834](https://issues.apache.org/jira/browse/HBASE-18834) | fix shellcheck warning on hbase personality |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-18836](https://issues.apache.org/jira/browse/HBASE-18836) | Note need for explicit javax.el and exclude from shaded artifacts |  Blocker | Client | Sean Busbey | Sean Busbey |
| [HBASE-18808](https://issues.apache.org/jira/browse/HBASE-18808) | Ineffective config check in BackupLogCleaner#getDeletableFiles() |  Major | . | Ted Yu | Reid Chan |
| [HBASE-18803](https://issues.apache.org/jira/browse/HBASE-18803) | Mapreduce job get failed caused by NoClassDefFoundError: org/apache/commons/lang3/ArrayUtils |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18832](https://issues.apache.org/jira/browse/HBASE-18832) | LTT fails with casting exception for HColumnDescriptor |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-18851](https://issues.apache.org/jira/browse/HBASE-18851) | LICENSE failure after HADOOP-14799 with Hadoop 3 |  Critical | build | Josh Elser | Josh Elser |
| [HBASE-18852](https://issues.apache.org/jira/browse/HBASE-18852) | Take down the hbasecon asia banner on home page |  Major | website | stack | stack |
| [HBASE-18853](https://issues.apache.org/jira/browse/HBASE-18853) | hbase-protocol-shaded includes protobuf (since we moved to hbase-thirdparty) |  Major | thirdparty | stack | stack |
| [HBASE-18787](https://issues.apache.org/jira/browse/HBASE-18787) | Fix the "dependencies connecting to an HBase cluster" |  Minor | documentation | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18866](https://issues.apache.org/jira/browse/HBASE-18866) | clean up warnings about proto syntax |  Minor | Protobufs | Sean Busbey | Sean Busbey |
| [HBASE-18796](https://issues.apache.org/jira/browse/HBASE-18796) | Admin#isTableAvailable returns incorrect result before daughter regions are opened |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-18876](https://issues.apache.org/jira/browse/HBASE-18876) | Backup create command fails to take queue parameter as option |  Major | . | Amit Kabra | Amit Kabra |
| [HBASE-18830](https://issues.apache.org/jira/browse/HBASE-18830) | TestCanaryTool does not check Canary monitor's error code |  Major | . | Chinmay Kulkarni | Chinmay Kulkarni |
| [HBASE-18762](https://issues.apache.org/jira/browse/HBASE-18762) | Canary sink type cast error |  Major | . | Chinmay Kulkarni | Chinmay Kulkarni |
| [HBASE-18880](https://issues.apache.org/jira/browse/HBASE-18880) | Failed to start rest server if the value of hbase.rest.threads.max is too small. |  Critical | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18885](https://issues.apache.org/jira/browse/HBASE-18885) | HFileOutputFormat2 hardcodes default FileOutputCommitter |  Major | mapreduce | Shaofeng SHI | Shaofeng SHI |
| [HBASE-18888](https://issues.apache.org/jira/browse/HBASE-18888) | StealJobQueue should call super() to init the PriorityBlockingQueue |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18887](https://issues.apache.org/jira/browse/HBASE-18887) | After full backup passed on hdfs root and incremental failed, full backup cannot be cleaned |  Major | . | Vishal Khandelwal | Vladimir Rodionov |
| [HBASE-18845](https://issues.apache.org/jira/browse/HBASE-18845) | TestReplicationSmallTests fails after HBASE-14004 |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-17441](https://issues.apache.org/jira/browse/HBASE-17441) | precommit test "hadoopcheck" not properly testing Hadoop 3 profile |  Blocker | build | Sean Busbey | Josh Elser |
| [HBASE-18894](https://issues.apache.org/jira/browse/HBASE-18894) | null pointer exception in list\_regions in shell command |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18913](https://issues.apache.org/jira/browse/HBASE-18913) | TestShell fails because NoMethodError: undefined method parseColumn |  Major | shell | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18490](https://issues.apache.org/jira/browse/HBASE-18490) | Modifying a table descriptor to enable replicas does not create replica regions |  Major | Region Assignment | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18928](https://issues.apache.org/jira/browse/HBASE-18928) | Backup delete command shows wrong number of deletes requested |  Minor | . | Amit Kabra | Amit Kabra |
| [HBASE-18606](https://issues.apache.org/jira/browse/HBASE-18606) | Tests in hbase-spark module fail with UnsatisfiedLinkError |  Critical | spark, test | Ted Yu | stack |
| [HBASE-18932](https://issues.apache.org/jira/browse/HBASE-18932) | Backups masking exception in a scenario and though it fails , it shows success message. |  Major | . | Amit Kabra | Amit Kabra |
| [HBASE-18941](https://issues.apache.org/jira/browse/HBASE-18941) | Confusing logging error around rerun of restore on an existing table. |  Minor | . | Amit Kabra | Amit Kabra |
| [HBASE-18874](https://issues.apache.org/jira/browse/HBASE-18874) | HMaster abort message will be skipped if Throwable is passed null |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18940](https://issues.apache.org/jira/browse/HBASE-18940) | branch-2 (and probably others) fail check of generated source artifact |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-18921](https://issues.apache.org/jira/browse/HBASE-18921) | Result.current() throws ArrayIndexOutOfBoundsException after calling advance() |  Minor | . | Maytee Chinavanichkit | Maytee Chinavanichkit |
| [HBASE-18958](https://issues.apache.org/jira/browse/HBASE-18958) | Remove the IS annotation from SpaceLimitingException |  Trivial | . | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-18973](https://issues.apache.org/jira/browse/HBASE-18973) | clean up maven warnings about pom well-formedness for master/branch-2 |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-18934](https://issues.apache.org/jira/browse/HBASE-18934) | precommit on branch-1 isn't supposed to run against hadoop 3 |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-18904](https://issues.apache.org/jira/browse/HBASE-18904) | Missing break in NEXT\_ROW case of FilterList#mergeReturnCodeForOrOperator() |  Minor | . | Ted Yu | Biju Nair |
| [HBASE-18975](https://issues.apache.org/jira/browse/HBASE-18975) | Fix backup / restore hadoop3 incompatibility |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17590](https://issues.apache.org/jira/browse/HBASE-17590) | Drop cache hint should work for StoreFile write path |  Major | . | Appy | Ashu Pachauri |
| [HBASE-18992](https://issues.apache.org/jira/browse/HBASE-18992) | Comparators passed to the Memstore's flattened segments seems to be wrong |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18998](https://issues.apache.org/jira/browse/HBASE-18998) | processor.getRowsToLock() always assumes there is some row being locked |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18505](https://issues.apache.org/jira/browse/HBASE-18505) | Our build/yetus personality will run tests on individual modules and then on all (i.e. 'root'). Should do one or other |  Critical | build | stack | Mike Drob |
| [HBASE-18355](https://issues.apache.org/jira/browse/HBASE-18355) | Enable export snapshot tests that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | huaxiang sun |
| [HBASE-18997](https://issues.apache.org/jira/browse/HBASE-18997) | Remove the redundant methods in RegionInfo |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19016](https://issues.apache.org/jira/browse/HBASE-19016) | Coordinate storage policy property name for table schema and bulkload |  Minor | . | Yu Li | Yu Li |
| [HBASE-19017](https://issues.apache.org/jira/browse/HBASE-19017) | [AMv2] EnableTableProcedure is not retaining the assignments |  Major | Region Assignment | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18990](https://issues.apache.org/jira/browse/HBASE-18990) | ServerLoad doesn't override #equals which leads to #equals in ClusterStatus always false |  Trivial | . | Reid Chan | Reid Chan |
| [HBASE-18350](https://issues.apache.org/jira/browse/HBASE-18350) | RSGroups are broken under AMv2 |  Blocker | rsgroup | Stephen Yuan Jiang | Balazs Meszaros |
| [HBASE-19032](https://issues.apache.org/jira/browse/HBASE-19032) | Set Content-Type header for patches uploaded by submit-patch.py |  Major | . | Appy | Appy |
| [HBASE-19038](https://issues.apache.org/jira/browse/HBASE-19038) | precommit mvn install should run from root on patch |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19020](https://issues.apache.org/jira/browse/HBASE-19020) | TestXmlParsing exception checking relies on a particular xml implementation without declaring it. |  Major | dependencies, REST | Sean Busbey | Sean Busbey |
| [HBASE-19042](https://issues.apache.org/jira/browse/HBASE-19042) | Oracle Java 8u144 downloader broken in precommit check |  Blocker | build | Peter Somogyi | Duo Zhang |
| [HBASE-19014](https://issues.apache.org/jira/browse/HBASE-19014) | surefire fails; When writing xml report stdout/stderr ... No such file or directory |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19061](https://issues.apache.org/jira/browse/HBASE-19061) | enforcer NPE on hbase-shaded-invariants |  Blocker | build | Mike Drob | Mike Drob |
| [HBASE-19060](https://issues.apache.org/jira/browse/HBASE-19060) | "Hadoop check" test is running all the time instead of just when changes to java |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19039](https://issues.apache.org/jira/browse/HBASE-19039) | refactor shadedjars test to only run on java changes. |  Major | build | Mike Drob | Sean Busbey |
| [HBASE-19058](https://issues.apache.org/jira/browse/HBASE-19058) | The wget isn't installed in building docker image |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19072](https://issues.apache.org/jira/browse/HBASE-19072) | Missing break in catch block of InterruptedException in HRegion#waitForFlushes() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-18846](https://issues.apache.org/jira/browse/HBASE-18846) | Accommodate the hbase-indexer/lily/SEP consumer deploy-type |  Major | . | stack | stack |
| [HBASE-16290](https://issues.apache.org/jira/browse/HBASE-16290) | Dump summary of callQueue content; can help debugging |  Major | Operability | stack | Sreeram Venkatasubramanian |
| [HBASE-19066](https://issues.apache.org/jira/browse/HBASE-19066) | Correct the directory of openjdk-8 for jenkins |  Major | build | Chia-Ping Tsai | Sean Busbey |
| [HBASE-19021](https://issues.apache.org/jira/browse/HBASE-19021) | Restore a few important missing logics for balancer in 2.0 |  Critical | . | Jerry He | Jerry He |
| [HBASE-19018](https://issues.apache.org/jira/browse/HBASE-19018) | Use of hadoop internals that require bouncycastle should declare bouncycastle dependency |  Critical | dependencies, test | Sean Busbey | Sean Busbey |
| [HBASE-19054](https://issues.apache.org/jira/browse/HBASE-19054) | Switch precommit docker image to one based on maven images |  Major | build, community | Mike Drob | Mike Drob |
| [HBASE-19073](https://issues.apache.org/jira/browse/HBASE-19073) | Cleanup CoordinatedStateManager |  Major | . | Appy | Appy |
| [HBASE-19077](https://issues.apache.org/jira/browse/HBASE-19077) | Have Region\*CoprocessorEnvironment provide an ImmutableOnlineRegions |  Critical | Coprocessors | stack | stack |
| [HBASE-19098](https://issues.apache.org/jira/browse/HBASE-19098) | Python based compatiblity checker fails if git repo does not have a remote named 'origin' |  Critical | tooling | Andrew Purtell | Sean Busbey |
| [HBASE-13346](https://issues.apache.org/jira/browse/HBASE-13346) | Clean up Filter package for post 1.0 s/KeyValue/Cell/g |  Critical | API, Filters | Lars George | Tamas Penzes |
| [HBASE-19094](https://issues.apache.org/jira/browse/HBASE-19094) | NPE in RSGroupStartupWorker.waitForGroupTableOnline during master startup |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-18922](https://issues.apache.org/jira/browse/HBASE-18922) | Fix all dead links in our HBase book |  Major | documentation | Chia-Ping Tsai | Yung-An He |
| [HBASE-18438](https://issues.apache.org/jira/browse/HBASE-18438) | Precommit doesn't warn about unused imports |  Critical | build | Mike Drob | Chia-Ping Tsai |
| [HBASE-19119](https://issues.apache.org/jira/browse/HBASE-19119) | hbase-http shouldn't have a native profile |  Blocker | build | Mike Drob | Mike Drob |
| [HBASE-19129](https://issues.apache.org/jira/browse/HBASE-19129) | TestChoreService is flaky (branch-1 / branch-1.4) |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19087](https://issues.apache.org/jira/browse/HBASE-19087) | Log an Optional's value/null instead of Optional[value]/Optional.empty. |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19130](https://issues.apache.org/jira/browse/HBASE-19130) | Typo in HStore.initializeRegionInternals for replaying wal |  Critical | Recovery | Duo Zhang | Duo Zhang |
| [HBASE-19030](https://issues.apache.org/jira/browse/HBASE-19030) | nightly runs should attempt to log test results after archiving |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19138](https://issues.apache.org/jira/browse/HBASE-19138) | Rare failure in TestLruBlockCache |  Trivial | test | Andrew Purtell | Andrew Purtell |
| [HBASE-19135](https://issues.apache.org/jira/browse/HBASE-19135) | TestWeakObjectPool time out |  Major | . | stack | stack |
| [HBASE-19137](https://issues.apache.org/jira/browse/HBASE-19137) | Nightly test should make junit reports optional rather than attempt archive after reporting. |  Critical | build | stack | Sean Busbey |
| [HBASE-19100](https://issues.apache.org/jira/browse/HBASE-19100) | Missing break in catch block of InterruptedException in HRegion#waitForFlushesAndCompactions |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19065](https://issues.apache.org/jira/browse/HBASE-19065) | HRegion#bulkLoadHFiles() should wait for concurrent Region#flush() to finish |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19120](https://issues.apache.org/jira/browse/HBASE-19120) | IllegalArgumentException from ZNodeClearer when master shuts down |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19150](https://issues.apache.org/jira/browse/HBASE-19150) | TestSnapshotWithAcl is flaky |  Minor | . | Andrew Purtell | churro morales |
| [HBASE-19118](https://issues.apache.org/jira/browse/HBASE-19118) | Use SaslUtil to set Sasl.QOP in 'Thrift' |  Major | Thrift | Reid Chan | Reid Chan |
| [HBASE-19156](https://issues.apache.org/jira/browse/HBASE-19156) | Duplicative regions\_per\_server options on LoadTestTool |  Trivial | test | Josh Elser | Josh Elser |
| [HBASE-19124](https://issues.apache.org/jira/browse/HBASE-19124) | Move HBase-Nightly source artifact creation test from JenkinsFile to a script in dev-support |  Major | test | Appy | Sean Busbey |
| [HBASE-19144](https://issues.apache.org/jira/browse/HBASE-19144) | [RSgroups] Retry assignments in FAILED\_OPEN state when servers (re)join the cluster |  Major | rsgroup | Andrew Purtell | Andrew Purtell |
| [HBASE-19173](https://issues.apache.org/jira/browse/HBASE-19173) | Configure IntegrationTestRSGroup automatically for minicluster mode |  Minor | rsgroup, test | Andrew Purtell | Andrew Purtell |
| [HBASE-19117](https://issues.apache.org/jira/browse/HBASE-19117) | Avoid NPE occurring while active master dies |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19178](https://issues.apache.org/jira/browse/HBASE-19178) | table.rb use undefined method 'getType' for Cell interface |  Trivial | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18983](https://issues.apache.org/jira/browse/HBASE-18983) | Upgrade to latest error-prone |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19185](https://issues.apache.org/jira/browse/HBASE-19185) | ClassNotFoundException: com.fasterxml.jackson.\* |  Critical | mapreduce | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19160](https://issues.apache.org/jira/browse/HBASE-19160) | Re-expose CellComparator |  Critical | . | Mike Drob | Mike Drob |
| [HBASE-19111](https://issues.apache.org/jira/browse/HBASE-19111) | Add missing CellUtil#isPut(Cell) methods |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-18844](https://issues.apache.org/jira/browse/HBASE-18844) | Release hbase-2.0.0-alpha-4; Theme "Coprocessor API Cleanup" |  Major | . | stack | stack |
| [HBASE-19102](https://issues.apache.org/jira/browse/HBASE-19102) | TestZooKeeperMainServer fails with KeeperException$ConnectionLossException |  Major | . | stack | stack |
| [HBASE-19198](https://issues.apache.org/jira/browse/HBASE-19198) | TestIPv6NIOServerSocketChannel fails; unable to bind |  Minor | test | stack | stack |
| [HBASE-19088](https://issues.apache.org/jira/browse/HBASE-19088) | move\_tables\_rsgroup will throw an exception when the table is disabled |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19194](https://issues.apache.org/jira/browse/HBASE-19194) | TestRSGroupsBase has some always false checks |  Blocker | rsgroup, test | Mike Drob | Andrew Purtell |
| [HBASE-19211](https://issues.apache.org/jira/browse/HBASE-19211) | B&R: update configuration string in BackupRestoreConstants |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-19184](https://issues.apache.org/jira/browse/HBASE-19184) | clean up nightly source artifact test to match expectations from switch to git-archive |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19165](https://issues.apache.org/jira/browse/HBASE-19165) | TODO Handle stuck in transition: rit=OPENING, location=ve0538.... |  Critical | migration | stack | stack |
| [HBASE-19195](https://issues.apache.org/jira/browse/HBASE-19195) | More error-prone fixes |  Major | . | Mike Drob | Mike Drob |
| [HBASE-19199](https://issues.apache.org/jira/browse/HBASE-19199) | RatioBasedCompactionPolicy#shouldPerformMajorCompaction() always return true when only one file needs to compact |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19229](https://issues.apache.org/jira/browse/HBASE-19229) | Nightly script to check source artifact should not do a destructive git operation without opt-in |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19089](https://issues.apache.org/jira/browse/HBASE-19089) | Fix the list of included moduleSets in src and binary tars |  Major | build | Appy | Appy |
| [HBASE-19244](https://issues.apache.org/jira/browse/HBASE-19244) | Fix simple typos in HBASE-15518 descriptions |  Trivial | . | Clay B. | Clay B. |
| [HBASE-19246](https://issues.apache.org/jira/browse/HBASE-19246) | Trivial fix in findHangingTests.py |  Trivial | . | Appy | Appy |
| [HBASE-19250](https://issues.apache.org/jira/browse/HBASE-19250) | TestClientClusterStatus is flaky |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19215](https://issues.apache.org/jira/browse/HBASE-19215) | Incorrect exception handling on the client causes incorrect call timeouts and byte buffer allocations on the server |  Major | rpc | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-19240](https://issues.apache.org/jira/browse/HBASE-19240) | Fix error-prone errors, part four? |  Major | . | Mike Drob | Mike Drob |
| [HBASE-19249](https://issues.apache.org/jira/browse/HBASE-19249) | test for "hbase antipatterns" should check \_count\_ of occurance rather than text of |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19210](https://issues.apache.org/jira/browse/HBASE-19210) | TestNamespacesInstanceResource fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12091](https://issues.apache.org/jira/browse/HBASE-12091) | Optionally ignore edits for dropped tables for replication. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-19245](https://issues.apache.org/jira/browse/HBASE-19245) | MultiTableInputFormatBase#getSplits creates a Connection per Table |  Minor | mapreduce | stack | stack |
| [HBASE-19255](https://issues.apache.org/jira/browse/HBASE-19255) | PerformanceEvaluation class not found when run PE test |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19223](https://issues.apache.org/jira/browse/HBASE-19223) | Remove references to Date Tiered compaction from branch-1.2 and branch-1.1 ref guide |  Critical | Compaction, documentation | chilianyi | Sean Busbey |
| [HBASE-18357](https://issues.apache.org/jira/browse/HBASE-18357) | Enable disabled tests in TestHCM that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | stack |
| [HBASE-18356](https://issues.apache.org/jira/browse/HBASE-18356) | Enable TestFavoredStochasticBalancerPickers#testPickers that was disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Thiruvel Thirumoolan |
| [HBASE-19181](https://issues.apache.org/jira/browse/HBASE-19181) | LogRollBackupSubprocedure will fail if we use AsyncFSWAL instead of FSHLog |  Major | backup&restore | Duo Zhang | Vladimir Rodionov |
| [HBASE-19260](https://issues.apache.org/jira/browse/HBASE-19260) | Add lock back to avoid parallel accessing meta to locate region |  Major | . | Yu Li | Yu Li |
| [HBASE-19304](https://issues.apache.org/jira/browse/HBASE-19304) | KEEP\_DELETED\_CELLS should ignore case |  Blocker | regionserver | Sergey Soldatov | Sergey Soldatov |
| [HBASE-19315](https://issues.apache.org/jira/browse/HBASE-19315) | Incorrect snapshot version is used for 2.0.0-beta-1 |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19321](https://issues.apache.org/jira/browse/HBASE-19321) | ZKAsyncRegistry ctor would hang when zookeeper cluster is not available |  Major | . | Ted Yu | Guoquan Wu |
| [HBASE-19330](https://issues.apache.org/jira/browse/HBASE-19330) | Remove duplicated dependency from hbase-rest |  Trivial | dependencies | Peter Somogyi | Peter Somogyi |
| [HBASE-19317](https://issues.apache.org/jira/browse/HBASE-19317) | Increase "yarn.nodemanager.disk-health-checker.max-disk-utilization-per-disk-percentage" to avoid host-related failures on MiniMRCluster |  Major | integration tests, test | Josh Elser | Josh Elser |
| [HBASE-19310](https://issues.apache.org/jira/browse/HBASE-19310) | Verify IntegrationTests don't rely on Rules outside of JUnit context |  Critical | integration tests | Romil Choksi | Josh Elser |
| [HBASE-19332](https://issues.apache.org/jira/browse/HBASE-19332) | DumpReplicationQueues misreports total WAL size |  Trivial | Replication | Gary Helmling | Gary Helmling |
| [HBASE-19337](https://issues.apache.org/jira/browse/HBASE-19337) | AsyncMetaTableAccessor may hang when call ScanController.terminate many times |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19325](https://issues.apache.org/jira/browse/HBASE-19325) | Pass a list of server name to postClearDeadServers |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19319](https://issues.apache.org/jira/browse/HBASE-19319) | Fix bug in synchronizing over ProcedureEvent |  Major | . | Appy | Appy |
| [HBASE-19318](https://issues.apache.org/jira/browse/HBASE-19318) | MasterRpcServices#getSecurityCapabilities explicitly checks for the HBase AccessController implementation |  Critical | master, security | Sharmadha Sainath | Josh Elser |
| [HBASE-19335](https://issues.apache.org/jira/browse/HBASE-19335) | Fix waitUntilAllRegionsAssigned |  Major | . | Appy | Appy |
| [HBASE-19355](https://issues.apache.org/jira/browse/HBASE-19355) | Missing dependency on hbase-zookeeper module causes CopyTable to fail |  Major | . | Romil Choksi | Ted Yu |
| [HBASE-19351](https://issues.apache.org/jira/browse/HBASE-19351) | Deprecated is missing in Table implementations |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19035](https://issues.apache.org/jira/browse/HBASE-19035) | Miss metrics when coprocessor use region scanner to read data |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19363](https://issues.apache.org/jira/browse/HBASE-19363) | Tests under TestCheckAndMutate are identical |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19386](https://issues.apache.org/jira/browse/HBASE-19386) | HBase UnsafeAvailChecker returns false on Arm64 |  Minor | . | Yuqi Gu | Yuqi Gu |
| [HBASE-19388](https://issues.apache.org/jira/browse/HBASE-19388) | Incorrect value is being set for Compaction Pressure in RegionLoadStats object inside HRegion class |  Minor | regionserver | Harshal Jain | Harshal Jain |
| [HBASE-19350](https://issues.apache.org/jira/browse/HBASE-19350) | TestMetaWithReplicas is flaky |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19385](https://issues.apache.org/jira/browse/HBASE-19385) | [1.3] TestReplicator failed 1.3 nightly |  Major | test | stack | stack |
| [HBASE-19390](https://issues.apache.org/jira/browse/HBASE-19390) | Revert to older version of Jetty 9.3 |  Major | . | Esteban Gutierrez | Mike Drob |
| [HBASE-19285](https://issues.apache.org/jira/browse/HBASE-19285) | Add per-table latency histograms |  Critical | metrics | Clay B. | Josh Elser |
| [HBASE-19406](https://issues.apache.org/jira/browse/HBASE-19406) | Fix CompactionRequest equals and hashCode |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19396](https://issues.apache.org/jira/browse/HBASE-19396) | Fix flaky test TestHTableMultiplexerFlushCache |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16239](https://issues.apache.org/jira/browse/HBASE-16239) | Better logging for RPC related exceptions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-19339](https://issues.apache.org/jira/browse/HBASE-19339) | Eager policy results in the negative size of memstore |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19056](https://issues.apache.org/jira/browse/HBASE-19056) |  TestCompactionInDeadRegionServer is top of the flakies charts! |  Major | test | stack | Ted Yu |
| [HBASE-18942](https://issues.apache.org/jira/browse/HBASE-18942) | hbase-hadoop2-compat module ignores hadoop-3 profile |  Major | . | Ted Yu | Appy |
| [HBASE-19431](https://issues.apache.org/jira/browse/HBASE-19431) | The tag array written by IndividualBytesFieldCell#write is out of bounds |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19384](https://issues.apache.org/jira/browse/HBASE-19384) | Results returned by preAppend hook in a coprocessor are replaced with null from other coprocessor even on bypass |  Critical | Coprocessors | Rajeshbabu Chintaguntla | stack |
| [HBASE-19422](https://issues.apache.org/jira/browse/HBASE-19422) | using hadoop-profile property leads to confusing failures |  Major | . | Ted Yu | Mike Drob |
| [HBASE-19023](https://issues.apache.org/jira/browse/HBASE-19023) | Usage for rowcounter in refguide is out of sync with code |  Major | . | Ted Yu | Tak Lon (Stephen) Wu |
| [HBASE-19445](https://issues.apache.org/jira/browse/HBASE-19445) | PerformanceEvaluation NPE processing split policy option |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19417](https://issues.apache.org/jira/browse/HBASE-19417) | Remove boolean return value from postBulkLoadHFile hook |  Major | . | Appy | Ted Yu |
| [HBASE-19447](https://issues.apache.org/jira/browse/HBASE-19447) | INFO level logging of GetClusterStatus from HMaster is too chatty |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12444](https://issues.apache.org/jira/browse/HBASE-12444) | Total number of requests overflow because it's int |  Minor | hbck, master, regionserver | yunjiong zhao | Chia-Ping Tsai |
| [HBASE-19435](https://issues.apache.org/jira/browse/HBASE-19435) | Reopen Files for ClosedChannelException in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-19349](https://issues.apache.org/jira/browse/HBASE-19349) | Introduce wrong version depencency of servlet-api jar |  Critical | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19454](https://issues.apache.org/jira/browse/HBASE-19454) | Debugging TestDistributedLogSplitting#testThreeRSAbort |  Major | . | Appy | Appy |
| [HBASE-19433](https://issues.apache.org/jira/browse/HBASE-19433) | ChangeSplitPolicyAction modifies an immutable HTableDescriptor |  Critical | integration tests | Josh Elser | Ted Yu |
| [HBASE-19461](https://issues.apache.org/jira/browse/HBASE-19461) | TestRSGroups is broke |  Major | test | stack | stack |
| [HBASE-19134](https://issues.apache.org/jira/browse/HBASE-19134) | Make WALKey an Interface; expose Read-Only version to CPs |  Major | Coprocessors, wal | stack | stack |
| [HBASE-19371](https://issues.apache.org/jira/browse/HBASE-19371) | Running WALPerformanceEvaluation against asyncfswal throws exceptions |  Major | . | stack | Duo Zhang |
| [HBASE-19493](https://issues.apache.org/jira/browse/HBASE-19493) | Make TestWALMonotonicallyIncreasingSeqId also work with AsyncFSWAL |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19394](https://issues.apache.org/jira/browse/HBASE-19394) | Support multi-homing env for the publication of RS status with multicast (hbase.status.published) |  Major | Client, master | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19495](https://issues.apache.org/jira/browse/HBASE-19495) | Fix failed ut TestShell |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19456](https://issues.apache.org/jira/browse/HBASE-19456) | RegionMover's region server hostname option is no longer case insensitive |  Major | tooling | Romil Choksi | Sergey Soldatov |
| [HBASE-19508](https://issues.apache.org/jira/browse/HBASE-19508) | ReadOnlyConfiguration throws exception if any Configuration in current context calls addDefautlResource |  Major | conf | stack | stack |
| [HBASE-19484](https://issues.apache.org/jira/browse/HBASE-19484) | The value array written by ExtendedCell#write is out of bounds |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19434](https://issues.apache.org/jira/browse/HBASE-19434) | create\_namespace command for existing namespace does not throw useful error message |  Minor | . | Romil Choksi | Ted Yu |
| [HBASE-19503](https://issues.apache.org/jira/browse/HBASE-19503) | Fix TestWALOpenAfterDNRollingStart for AsyncFSWAL |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19287](https://issues.apache.org/jira/browse/HBASE-19287) | master hangs forever if RecoverMeta send assign meta region request to target server fail |  Major | proc-v2 | Yi Liang | Yi Liang |
| [HBASE-19510](https://issues.apache.org/jira/browse/HBASE-19510) | TestDistributedLogSplitting is flakey for AsyncFSWAL |  Critical | Recovery, test | Duo Zhang | Duo Zhang |
| [HBASE-19511](https://issues.apache.org/jira/browse/HBASE-19511) | Splits causes blocks to be cached again and so such blocks cannot be evicted from bucket cache |  Critical | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19513](https://issues.apache.org/jira/browse/HBASE-19513) | Fix the wrapped AsyncFSOutput implementation |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19516](https://issues.apache.org/jira/browse/HBASE-19516) | IntegrationTestBulkLoad and IntegrationTestImportTsv run into 'java.lang.RuntimeException: DistributedHBaseCluster@1bb564e2 not an instance of MiniHBaseCluster' |  Major | . | Romil Choksi | Ankit Singhal |
| [HBASE-18946](https://issues.apache.org/jira/browse/HBASE-18946) | Stochastic load balancer assigns replica regions to the same RS |  Major | . | ramkrishna.s.vasudevan | stack |
| [HBASE-18838](https://issues.apache.org/jira/browse/HBASE-18838) | shaded artifacts are incorrect when built against hadoop 3 |  Critical | Client | Sean Busbey | Mike Drob |
| [HBASE-18352](https://issues.apache.org/jira/browse/HBASE-18352) | Enable TestMasterOperationsForRegionReplicas#testCreateTableWithMultipleReplicas disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | huaxiang sun |
| [HBASE-19509](https://issues.apache.org/jira/browse/HBASE-19509) | RSGroupAdminEndpoint#preCreateTable triggers TableNotFoundException |  Minor | . | Ted Yu | Andrew Purtell |
| [HBASE-19530](https://issues.apache.org/jira/browse/HBASE-19530) | New regions should always be added with state CLOSED |  Major | . | Appy | Appy |
| [HBASE-19522](https://issues.apache.org/jira/browse/HBASE-19522) | The complete order may be wrong in AsyncBufferedMutatorImpl |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19546](https://issues.apache.org/jira/browse/HBASE-19546) | TestMasterReplication.testCyclicReplication2 uses wrong assertion |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-19549](https://issues.apache.org/jira/browse/HBASE-19549) | Change path comparison in CommonFSUtils |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19532](https://issues.apache.org/jira/browse/HBASE-19532) | AssignProcedure#COMPARATOR may produce incorrect sort order |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19555](https://issues.apache.org/jira/browse/HBASE-19555) | TestSplitTransactionOnCluster is flaky |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-19558](https://issues.apache.org/jira/browse/HBASE-19558) | TestRegionsOnMasterOptions hack so it works reliablly |  Major | test | stack | stack |
| [HBASE-19561](https://issues.apache.org/jira/browse/HBASE-19561) | maxCacheSize in CacheEvictionStats can't be accumulated repeatedly When dealing with each region |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19563](https://issues.apache.org/jira/browse/HBASE-19563) | A few hbase-procedure classes missing @InterfaceAudience annotation |  Minor | proc-v2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19542](https://issues.apache.org/jira/browse/HBASE-19542) | fix TestSafemodeBringsDownMaster |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19218](https://issues.apache.org/jira/browse/HBASE-19218) | Master stuck thinking hbase:namespace is assigned after restart preventing intialization |  Critical | . | Josh Elser | stack |
| [HBASE-19559](https://issues.apache.org/jira/browse/HBASE-19559) | Fix TestLogRolling.testLogRollOnDatanodeDeath |  Major | test, wal | Duo Zhang | Duo Zhang |
| [HBASE-19578](https://issues.apache.org/jira/browse/HBASE-19578) | MasterProcWALs cleaning is incorrect |  Critical | amv2 | Peter Somogyi | Peter Somogyi |
| [HBASE-19148](https://issues.apache.org/jira/browse/HBASE-19148) | Reevaluate default values of configurations |  Blocker | defaults | stack | stack |
| [HBASE-17248](https://issues.apache.org/jira/browse/HBASE-17248) | SimpleRegionNormalizer javadoc correction |  Trivial | master | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-19589](https://issues.apache.org/jira/browse/HBASE-19589) | New regions should always be added with state CLOSED (followup of HBASE-19530) |  Major | . | Appy | Appy |
| [HBASE-19593](https://issues.apache.org/jira/browse/HBASE-19593) | Possible NPE if wal is closed during waledit append. |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-19608](https://issues.apache.org/jira/browse/HBASE-19608) | Race in MasterRpcServices.getProcedureResult |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-19457](https://issues.apache.org/jira/browse/HBASE-19457) | Debugging flaky TestTruncateTableProcedure#testRecoveryAndDoubleExecutionPreserveSplits |  Major | . | Appy | Appy |
| [HBASE-19496](https://issues.apache.org/jira/browse/HBASE-19496) | Reusing the ByteBuffer in rpc layer corrupt the ServerLoad and RegionLoad |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19624](https://issues.apache.org/jira/browse/HBASE-19624) | TestIOFencing hangs |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19619](https://issues.apache.org/jira/browse/HBASE-19619) | Modify replication\_admin.rb to use ReplicationPeerConfigBuilder |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19643](https://issues.apache.org/jira/browse/HBASE-19643) | Need to update cache location when get error in AsyncBatchRpcRetryingCaller |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19672](https://issues.apache.org/jira/browse/HBASE-19672) | Correct comments for default values of major compaction in SortedCompactionPolicy#getNextMajorCompactTime() |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-19671](https://issues.apache.org/jira/browse/HBASE-19671) | Fix TestMultiParallel#testActiveThreadsCount |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19666](https://issues.apache.org/jira/browse/HBASE-19666) | TestDefaultCompactSelection test failed |  Critical | test | Jingyun Tian | Balazs Meszaros |
| [HBASE-19654](https://issues.apache.org/jira/browse/HBASE-19654) | Remove misleading and chatty debug message in ReplicationLogCleaner |  Major | . | Peter Somogyi | Reid Chan |
| [HBASE-19392](https://issues.apache.org/jira/browse/HBASE-19392) | TestReplicaWithCluster#testReplicaGetWithPrimaryAndMetaDown failure in master |  Minor | regionserver | huaxiang sun | stack |
| [HBASE-19691](https://issues.apache.org/jira/browse/HBASE-19691) | Do not require ADMIN permission for obtaining ClusterStatus |  Critical | . | Romil Choksi | Josh Elser |
| [HBASE-19490](https://issues.apache.org/jira/browse/HBASE-19490) | Rare failure in TestRateLimiter |  Major | test | Andrew Purtell | Chia-Ping Tsai |
| [HBASE-19588](https://issues.apache.org/jira/browse/HBASE-19588) | Additional jar dependencies needed for mapreduce PerformanceEvaluation |  Minor | test | Albert Chu | Albert Chu |
| [HBASE-18452](https://issues.apache.org/jira/browse/HBASE-18452) | VerifyReplication by Snapshot should cache HDFS token before submit job for kerberos env. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19688](https://issues.apache.org/jira/browse/HBASE-19688) | TimeToLiveProcedureWALCleaner should extends BaseLogCleanerDelegate |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-19383](https://issues.apache.org/jira/browse/HBASE-19383) | [1.2] java.lang.AssertionError: expected:\<2\> but was:\<1\> 	at org.apache.hadoop.hbase.TestChoreService.testTriggerNowFailsWhenNotScheduled(TestChoreService.java:707) |  Major | test | stack | stack |
| [HBASE-19709](https://issues.apache.org/jira/browse/HBASE-19709) | Guard against a ThreadPool size of 0 in CleanerChore |  Critical | . | Siddharth Wagle | Josh Elser |
| [HBASE-19714](https://issues.apache.org/jira/browse/HBASE-19714) | \`status 'detailed'\` invokes nonexistent "getRegionsInTransition" method on ClusterStatus |  Critical | shell | Josh Elser | Josh Elser |
| [HBASE-19721](https://issues.apache.org/jira/browse/HBASE-19721) | Unnecessary stubbings detected in test class: TestReversedScannerCallable |  Major | test | Jean-Marc Spaggiari | Mike Drob |
| [HBASE-19696](https://issues.apache.org/jira/browse/HBASE-19696) | Filter returning INCLUDE\_AND\_NEXT\_COL doesn't skip remaining versions when scan has explicit columns |  Critical | . | Ankit Singhal | Ankit Singhal |
| [HBASE-19712](https://issues.apache.org/jira/browse/HBASE-19712) | Fix TestSnapshotQuotaObserverChore#testSnapshotSize |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19424](https://issues.apache.org/jira/browse/HBASE-19424) | Metrics servlet throws NPE |  Minor | . | Andrew Purtell | Toshihiro Suzuki |
| [HBASE-19717](https://issues.apache.org/jira/browse/HBASE-19717) | IntegrationTestDDLMasterFailover is using outdated values for DataBlockEncoding |  Major | integration tests | Romil Choksi | Sergey Soldatov |
| [HBASE-19744](https://issues.apache.org/jira/browse/HBASE-19744) | Fix flakey TestZKLeaderManager |  Major | test | stack | stack |
| [HBASE-19729](https://issues.apache.org/jira/browse/HBASE-19729) | UserScanQueryMatcher#mergeFilterResponse should return INCLUDE\_AND\_SEEK\_NEXT\_ROW when filterResponse is INCLUDE\_AND\_SEEK\_NEXT\_ROW |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19734](https://issues.apache.org/jira/browse/HBASE-19734) | IntegrationTestReplication broken w/ separate clusters |  Critical | integration tests | Romil Choksi | Josh Elser |
| [HBASE-19740](https://issues.apache.org/jira/browse/HBASE-19740) | Repeated error message for NamespaceExistException |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19749](https://issues.apache.org/jira/browse/HBASE-19749) | Revisit  logic of UserScanQueryMatcher#mergeFilterResponse method |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19755](https://issues.apache.org/jira/browse/HBASE-19755) | Error message for non-existent namespace is inaccurate |  Minor | . | Ted Yu | Sergey Soldatov |
| [HBASE-19685](https://issues.apache.org/jira/browse/HBASE-19685) | Fix TestFSErrorsExposed#testFullSystemBubblesFSErrors |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19773](https://issues.apache.org/jira/browse/HBASE-19773) | Adding javadoc around getting instance of RawCellBuilder |  Minor | . | Appy | Appy |
| [HBASE-19771](https://issues.apache.org/jira/browse/HBASE-19771) | restore\_snapshot shell command gives wrong namespace if the namespace doesn't exist |  Minor | . | Ted Yu | Janos Gub |
| [HBASE-19775](https://issues.apache.org/jira/browse/HBASE-19775) | hbase shell doesn't handle the exceptions that are wrapped in java.io.UncheckedIOException |  Major | shell | Sergey Soldatov | Sergey Soldatov |
| [HBASE-19769](https://issues.apache.org/jira/browse/HBASE-19769) | IllegalAccessError on package-private Hadoop metrics2 classes in MapReduce jobs |  Critical | mapreduce, metrics | Josh Elser | Josh Elser |
| [HBASE-19694](https://issues.apache.org/jira/browse/HBASE-19694) | The initialization order for a fresh cluster is incorrect |  Critical | . | Duo Zhang | stack |
| [HBASE-11409](https://issues.apache.org/jira/browse/HBASE-11409) | Add more flexibility for input directory structure to LoadIncrementalHFiles |  Major | . | churro morales | churro morales |
| [HBASE-19752](https://issues.apache.org/jira/browse/HBASE-19752) | RSGroupBasedLoadBalancer#getMisplacedRegions() should handle the case where rs group cannot be determined |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19768](https://issues.apache.org/jira/browse/HBASE-19768) | RegionServer startup failing when DN is dead |  Critical | . | Jean-Marc Spaggiari | Duo Zhang |
| [HBASE-19732](https://issues.apache.org/jira/browse/HBASE-19732) | Replica regions does not return back the MSLAB chunks to pool |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19797](https://issues.apache.org/jira/browse/HBASE-19797) | Operator priority leads to wrong logic in ReplicationSourceWALReader |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19792](https://issues.apache.org/jira/browse/HBASE-19792) | TestReplicationSmallTests.testDisableEnable fails |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19808](https://issues.apache.org/jira/browse/HBASE-19808) | Reenable TestMultiParallel |  Major | test | stack | stack |
| [HBASE-19196](https://issues.apache.org/jira/browse/HBASE-19196) | Release hbase-2.0.0-beta-1; the "Finish-line" release |  Blocker | . | stack | stack |
| [HBASE-19784](https://issues.apache.org/jira/browse/HBASE-19784) | stop-hbase gives unfriendly message when local hbase isn't running |  Minor | scripts | Mike Drob | Mike Drob |
| [HBASE-19816](https://issues.apache.org/jira/browse/HBASE-19816) | Replication sink list is not updated on UnknownHostException |  Major | Replication | Scott Wilson | Scott Wilson |
| [HBASE-19812](https://issues.apache.org/jira/browse/HBASE-19812) | TestFlushSnapshotFromClient fails because of failing region.flush |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19806](https://issues.apache.org/jira/browse/HBASE-19806) | Lower max versions for table column family of hbase:meta |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-19821](https://issues.apache.org/jira/browse/HBASE-19821) | TestCleanerChore#testOnConfigurationChange() requires at least 4 processors to get passed |  Minor | test | Xiang Li | Xiang Li |
| [HBASE-19815](https://issues.apache.org/jira/browse/HBASE-19815) | Flakey TestAssignmentManager.testAssignWithRandExec |  Major | flakey, test | stack | stack |
| [HBASE-19822](https://issues.apache.org/jira/browse/HBASE-19822) | HFileCleaner threads stick around after shutdown stuck on queue#take |  Major | . | stack | stack |
| [HBASE-19825](https://issues.apache.org/jira/browse/HBASE-19825) | Fix hadoop3 compat test failures |  Major | pom | Umesh Agashe | Umesh Agashe |
| [HBASE-19757](https://issues.apache.org/jira/browse/HBASE-19757) | System table gets stuck after enabling region server group feature in secure cluster |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | "Maximum lock count exceeded" from region server's batch processing |  Major | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-19829](https://issues.apache.org/jira/browse/HBASE-19829) | hadoop-minicluster pulls zookeeper:test-jar:tests 3.4.6 |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-19828](https://issues.apache.org/jira/browse/HBASE-19828) | Flakey TestRegionsOnMasterOptions.testRegionsOnAllServers |  Major | . | stack | stack |
| [HBASE-19794](https://issues.apache.org/jira/browse/HBASE-19794) | TestZooKeeper hangs |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-19836](https://issues.apache.org/jira/browse/HBASE-19836) | Fix TestZooKeeper.testLogSplittingAfterMasterRecoveryDueToZKExpiry |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-17513](https://issues.apache.org/jira/browse/HBASE-17513) | Thrift Server 1 uses different QOP settings than RPC and Thrift Server 2 and can easily be misconfigured so there is no encryption when the operator expects it. |  Critical | documentation, security, Thrift, Usability | Sean Busbey | Reid Chan |
| [HBASE-19774](https://issues.apache.org/jira/browse/HBASE-19774) | incorrect behavior of locateRegionInMeta |  Major | . | Romil Choksi | Sergey Soldatov |
| [HBASE-19780](https://issues.apache.org/jira/browse/HBASE-19780) | Change execution phase of checkstyle plugin back to default 'verify' |  Major | . | Appy | Appy |
| [HBASE-19838](https://issues.apache.org/jira/browse/HBASE-19838) | Can not shutdown backup master cleanly when it has already tried to become the active master |  Critical | master | Duo Zhang | stack |
| [HBASE-19853](https://issues.apache.org/jira/browse/HBASE-19853) | duplicate slf4j declaration in mapreduce pom |  Minor | dependencies | Mike Drob | Mike Drob |
| [HBASE-17079](https://issues.apache.org/jira/browse/HBASE-17079) | HBase build fails on windows, hbase-archetype-builder is reason for failure |  Major | build | Mohammad Arshad | Mohammad Arshad |
| [HBASE-19756](https://issues.apache.org/jira/browse/HBASE-19756) | Master NPE during completed failed proc eviction |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-19818](https://issues.apache.org/jira/browse/HBASE-19818) | Scan time limit not work if the filter always filter row key |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19871](https://issues.apache.org/jira/browse/HBASE-19871) | delete.rb should require user to provide the column |  Major | shell | Romil Choksi | Chia-Ping Tsai |
| [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0 |  Major | . | stack | stack |
| [HBASE-19906](https://issues.apache.org/jira/browse/HBASE-19906) | TestZooKeeper Timeout |  Major | . | stack | stack |
| [HBASE-19884](https://issues.apache.org/jira/browse/HBASE-19884) | BucketEntryGroup's equals, hashCode and compareTo methods are not consistent |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | Up yetus proclimit on nightlies |  Major | . | stack | stack |
| [HBASE-19919](https://issues.apache.org/jira/browse/HBASE-19919) | Tidying up logging |  Major | . | stack | stack |
| [HBASE-19726](https://issues.apache.org/jira/browse/HBASE-19726) | Failed to start HMaster due to infinite retrying on meta assign |  Major | . | Duo Zhang | stack |
| [HBASE-19905](https://issues.apache.org/jira/browse/HBASE-19905) | ReplicationSyncUp tool will not exit if a peer replication is disabled |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-19658](https://issues.apache.org/jira/browse/HBASE-19658) | Fix and reenable TestCompactingToCellFlatMapMemStore#testFlatteningToJumboCellChunkMap |  Major | test | stack | Anastasia Braginsky |
| [HBASE-19703](https://issues.apache.org/jira/browse/HBASE-19703) | Functionality added as part of HBASE-12583 is not working after moving the split code to master |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-19926](https://issues.apache.org/jira/browse/HBASE-19926) | Use a separated class to implement the WALActionListener for Replication |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19907](https://issues.apache.org/jira/browse/HBASE-19907) | TestMetaWithReplicas still flakey |  Major | . | stack | stack |
| [HBASE-19939](https://issues.apache.org/jira/browse/HBASE-19939) | TestSplitTableRegionProcedure#testSplitWithoutPONR() and testRecoveryAndDoubleExecution() are failing with NPE |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-19934](https://issues.apache.org/jira/browse/HBASE-19934) | HBaseSnapshotException when read replicas is enabled and online snapshot is taken after region splitting |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19941](https://issues.apache.org/jira/browse/HBASE-19941) | Flaky TestCreateTableProcedure times out in nightly, needs to LargeTests |  Major | test | Umesh Agashe | Umesh Agashe |
| [HBASE-19900](https://issues.apache.org/jira/browse/HBASE-19900) | Region-level exception destroy the result of batch |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19929](https://issues.apache.org/jira/browse/HBASE-19929) | Call RS.stop on a session expired RS may hang |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19937](https://issues.apache.org/jira/browse/HBASE-19937) | Ensure createRSGroupTable be called after ProcedureExecutor and LoadBalancer are initialized |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-19966](https://issues.apache.org/jira/browse/HBASE-19966) | The WriteEntry for WALKey maybe null if we failed to call WAL.append |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19964](https://issues.apache.org/jira/browse/HBASE-19964) | TestWriteHeavyIncrementObserver fails |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19972](https://issues.apache.org/jira/browse/HBASE-19972) | Should rethrow  the RetriesExhaustedWithDetailsException when failed to apply the batch in ReplicationSink |  Critical | Replication | Zheng Hu | Zheng Hu |
| [HBASE-16060](https://issues.apache.org/jira/browse/HBASE-16060) | 1.x clients cannot access table state talking to 2.0 cluster |  Blocker | . | Enis Soztutar | stack |
| [HBASE-19968](https://issues.apache.org/jira/browse/HBASE-19968) | MapReduce test fails with NoClassDefFoundError against hadoop3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19986](https://issues.apache.org/jira/browse/HBASE-19986) | If HBaseTestClassRule timesout a test, thread dump. |  Major | . | stack | stack |
| [HBASE-19977](https://issues.apache.org/jira/browse/HBASE-19977) | FileMmapEngine allocation of byte buffers should be synchronized |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19876](https://issues.apache.org/jira/browse/HBASE-19876) | The exception happening in converting pb mutation to hbase.mutation messes up the CellScanner |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19979](https://issues.apache.org/jira/browse/HBASE-19979) | ReplicationSyncUp tool may leak Zookeeper connection |  Major | Replication | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18282](https://issues.apache.org/jira/browse/HBASE-18282) | ReplicationLogCleaner can delete WALs not yet replicated in case of a KeeperException |  Critical | Replication | Ashu Pachauri | Ben Lau |
| [HBASE-19996](https://issues.apache.org/jira/browse/HBASE-19996) | Some nonce procs might not be cleaned up (follow up HBASE-19756) |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-19998](https://issues.apache.org/jira/browse/HBASE-19998) | Flakey TestVisibilityLabelsWithDefaultVisLabelService |  Major | flakey, test | stack | stack |
| [HBASE-19980](https://issues.apache.org/jira/browse/HBASE-19980) | NullPointerException when restoring a snapshot after splitting a region |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20020](https://issues.apache.org/jira/browse/HBASE-20020) | Make sure we throw DoNotRetryIOException when ConnectionImplementation is closed |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-14897](https://issues.apache.org/jira/browse/HBASE-14897) | TestTableLockManager.testReapAllTableLocks is flakey |  Major | . | Heng Chen | Heng Chen |
| [HBASE-20023](https://issues.apache.org/jira/browse/HBASE-20023) | CompactionTool command line examples are incorrect |  Trivial | . | Artem Ervits | Artem Ervits |
| [HBASE-19954](https://issues.apache.org/jira/browse/HBASE-19954) | Separate TestBlockReorder into individual tests to avoid ShutdownHook suppression error against hadoop3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20032](https://issues.apache.org/jira/browse/HBASE-20032) | Receving multiple warnings for missing reporting.plugins.plugin.version |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-20017](https://issues.apache.org/jira/browse/HBASE-20017) | BufferedMutatorImpl submit the same mutation repeatedly |  Blocker | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19920](https://issues.apache.org/jira/browse/HBASE-19920) | TokenUtil.obtainToken unnecessarily creates a local directory |  Major | . | Rohini Palaniswamy | Mike Drob |
| [HBASE-19991](https://issues.apache.org/jira/browse/HBASE-19991) | lots of hbase-rest test failures against hadoop 3 |  Major | REST, test | Mike Drob | Mike Drob |
| [HBASE-20037](https://issues.apache.org/jira/browse/HBASE-20037) | Race when calling SequenceIdAccounting.resetHighest |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-19953](https://issues.apache.org/jira/browse/HBASE-19953) | Avoid calling post\* hook when procedure fails |  Critical | master, proc-v2 | Ramesh Mani | Josh Elser |
| [HBASE-20027](https://issues.apache.org/jira/browse/HBASE-20027) | Add test TestClusterPortAssignment |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-19166](https://issues.apache.org/jira/browse/HBASE-19166) | AsyncProtobufLogWriter persists ProtobufLogWriter as class name for backward compatibility |  Blocker | wal | Ted Yu | Ted Yu |
| [HBASE-19391](https://issues.apache.org/jira/browse/HBASE-19391) | Calling HRegion#initializeRegionInternals from a region replica can still re-create a region directory |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-19767](https://issues.apache.org/jira/browse/HBASE-19767) | Master web UI shows negative values for Remaining KVs |  Major | . | Jean-Marc Spaggiari | Umesh Agashe |
| [HBASE-20049](https://issues.apache.org/jira/browse/HBASE-20049) | Region replicas of SPLIT and MERGED regions are kept in in-memory states until restarting master |  Major | read replicas | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20054](https://issues.apache.org/jira/browse/HBASE-20054) | Forward port HBASE-18282 ReplicationLogCleaner can delete WALs not yet replicated in case of KeeperException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20062](https://issues.apache.org/jira/browse/HBASE-20062) | findbugs is not running on precommit checks |  Blocker | community, test | Sean Busbey | Mike Drob |
| [HBASE-20061](https://issues.apache.org/jira/browse/HBASE-20061) | HStore synchronized member variable filesCompacting should be private |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-19728](https://issues.apache.org/jira/browse/HBASE-19728) | Add lock to filesCompacting in all place. |  Major | . | binlijin | binlijin |
| [HBASE-19583](https://issues.apache.org/jira/browse/HBASE-19583) | update RM list to remove EOM versions |  Minor | community, documentation | Appy | Sean Busbey |
| [HBASE-20043](https://issues.apache.org/jira/browse/HBASE-20043) | ITBLL fails against hadoop3 |  Major | integration tests | Mike Drob | stack |
| [HBASE-19974](https://issues.apache.org/jira/browse/HBASE-19974) | Fix decommissioned servers cannot be removed by remove\_servers\_rsgroup methods |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-20074](https://issues.apache.org/jira/browse/HBASE-20074) | [FindBugs] Same code on both branches in CompactingMemStore#initMemStoreCompactor |  Major | findbugs | stack | Gali Sheffi |
| [HBASE-20086](https://issues.apache.org/jira/browse/HBASE-20086) | PE randomSeekScan fails with ClassNotFoundException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20066](https://issues.apache.org/jira/browse/HBASE-20066) | Region sequence id may go backward after split or merge |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-20106](https://issues.apache.org/jira/browse/HBASE-20106) | API Compliance checker should fall back to specifying origin as remote repo |  Major | API, community | Sean Busbey | Alex Leblang |
| [HBASE-19863](https://issues.apache.org/jira/browse/HBASE-19863) | java.lang.IllegalStateException: isDelete failed when SingleColumnValueFilter is used |  Major | Filters | Sergey Soldatov | Sergey Soldatov |
| [HBASE-19656](https://issues.apache.org/jira/browse/HBASE-19656) | Disable TestAssignmentManagerMetrics for beta-1 |  Major | . | stack | stack |
| [HBASE-20110](https://issues.apache.org/jira/browse/HBASE-20110) | Findbugs in zk and mr caused nightly #409 branch-2 to fail |  Major | findbugs | stack | stack |
| [HBASE-19147](https://issues.apache.org/jira/browse/HBASE-19147) | All branch-2 unit tests pass |  Blocker | test | stack | stack |
| [HBASE-20070](https://issues.apache.org/jira/browse/HBASE-20070) | website generation is failing |  Blocker | website | Sean Busbey | Sean Busbey |
| [HBASE-20134](https://issues.apache.org/jira/browse/HBASE-20134) | support scripts use hard-coded /tmp |  Minor | website | Mike Drob | Sean Busbey |
| [HBASE-19814](https://issues.apache.org/jira/browse/HBASE-19814) | Release hbase-2.0.0-beta-2; "rolling upgrade" release |  Blocker | . | stack | stack |
| [HBASE-20108](https://issues.apache.org/jira/browse/HBASE-20108) | \`hbase zkcli\` falls into a non-interactive prompt after HBASE-15199 |  Critical | Usability | Josh Elser | Josh Elser |
| [HBASE-19987](https://issues.apache.org/jira/browse/HBASE-19987) | update error-prone to 2.2.0 |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20144](https://issues.apache.org/jira/browse/HBASE-20144) | The shutdown of master will hang if there are no live region server |  Major | Recovery | Duo Zhang | Duo Zhang |
| [HBASE-20114](https://issues.apache.org/jira/browse/HBASE-20114) | Fix IllegalFormatConversionException in rsgroup.jsp |  Major | UI | Xiaolin Ha | Xiaolin Ha |
| [HBASE-20160](https://issues.apache.org/jira/browse/HBASE-20160) | TestRestartCluster.testRetainAssignmentOnRestart uses the wrong condition to decide whether the assignment is finished |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20164](https://issues.apache.org/jira/browse/HBASE-20164) | failed hadoopcheck should add footer link |  Major | community | Mike Drob | Mike Drob |
| [HBASE-20162](https://issues.apache.org/jira/browse/HBASE-20162) | [nightly] depending on pipeline execution we sometimes refer to the wrong workspace |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19598](https://issues.apache.org/jira/browse/HBASE-19598) | Fix TestAssignmentManagerMetrics flaky test |  Major | test | Balazs Meszaros | Duo Zhang |
| [HBASE-20024](https://issues.apache.org/jira/browse/HBASE-20024) | TestMergeTableRegionsProcedure is STILL flakey |  Major | . | stack | Umesh Agashe |
| [HBASE-20153](https://issues.apache.org/jira/browse/HBASE-20153) | enable error-prone analysis in precommit |  Major | community | Mike Drob | Mike Drob |
| [HBASE-19802](https://issues.apache.org/jira/browse/HBASE-19802) | Wrong usage messages on shell commands (grant/revoke namespace syntax) |  Minor | shell | Csaba Skrabak | Csaba Skrabak |
| [HBASE-20104](https://issues.apache.org/jira/browse/HBASE-20104) | Fix infinite loop of RIT when creating table on a rsgroup that has no online servers |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-19075](https://issues.apache.org/jira/browse/HBASE-19075) | Task tabs on master UI cause page scroll |  Major | master | Mike Drob | Sahil Aggarwal |
| [HBASE-20078](https://issues.apache.org/jira/browse/HBASE-20078) | MultiByteBuff : bug in reading primitives when individual buffers are too small |  Major | . | stack | Anoop Sam John |
| [HBASE-20189](https://issues.apache.org/jira/browse/HBASE-20189) | Typo in Required Java Version error message while building HBase. |  Trivial | build | Sakthi | Sakthi |
| [HBASE-20187](https://issues.apache.org/jira/browse/HBASE-20187) | Shell startup fails with IncompatibleClassChangeError |  Blocker | shell | Peter Somogyi | Balazs Meszaros |
| [HBASE-20146](https://issues.apache.org/jira/browse/HBASE-20146) | Regions are stuck while opening when WAL is disabled |  Critical | wal | Ashish Singhi | Ashish Singhi |
| [HBASE-20185](https://issues.apache.org/jira/browse/HBASE-20185) | Fix ACL check for MasterRpcServices#execProcedure |  Major | . | Appy | Appy |
| [HBASE-20200](https://issues.apache.org/jira/browse/HBASE-20200) | list\_procedures fails in shell |  Major | shell | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18216](https://issues.apache.org/jira/browse/HBASE-18216) | [AMv2] Workaround for HBASE-18152, corrupt procedure WAL |  Major | proc-v2 | stack | stack |
| [HBASE-20141](https://issues.apache.org/jira/browse/HBASE-20141) | Fix TooManyFiles exception when RefreshingChannels in FileIOEngine |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20213](https://issues.apache.org/jira/browse/HBASE-20213) | [LOGGING] Aligning formatting and logging less (compactions, in-memory compactions) |  Major | logging | stack | stack |
| [HBASE-19639](https://issues.apache.org/jira/browse/HBASE-19639) | ITBLL can't go big because RegionTooBusyException... Above memstore limit |  Blocker | . | stack | stack |
| [HBASE-20090](https://issues.apache.org/jira/browse/HBASE-20090) | Properly handle Preconditions check failure in MemStoreFlusher$FlushHandler.run |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20237](https://issues.apache.org/jira/browse/HBASE-20237) | Put back getClosestRowBefore and throw UnknownProtocolException instead... for asynchbase client |  Critical | compatibility, Operability | stack | stack |
| [HBASE-13300](https://issues.apache.org/jira/browse/HBASE-13300) | Fix casing in getTimeStamp() and setTimestamp() for Mutations |  Critical | API | Lars George | Jan Hentschel |
| [HBASE-20292](https://issues.apache.org/jira/browse/HBASE-20292) | Wrong URLs in the descriptions for update\_all\_config and update\_config commands in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20111](https://issues.apache.org/jira/browse/HBASE-20111) | Able to split region explicitly even on shouldSplit return false from split policy |  Critical | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-20130](https://issues.apache.org/jira/browse/HBASE-20130) | Use defaults (16020 & 16030) as base ports when the RS is bound to localhost |  Critical | documentation | Chia-Ping Tsai | Umesh Agashe |
| [HBASE-20308](https://issues.apache.org/jira/browse/HBASE-20308) | test Dockerfile needs to include git |  Blocker | build, test | Sean Busbey | Sean Busbey |
| [HBASE-20229](https://issues.apache.org/jira/browse/HBASE-20229) | ConnectionImplementation.locateRegions() returns duplicated entries when region replication is on |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20261](https://issues.apache.org/jira/browse/HBASE-20261) | Table page (table.jsp) in Master UI does not show replicaIds for hbase meta table |  Minor | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20314](https://issues.apache.org/jira/browse/HBASE-20314) | Precommit build for master branch fails because of surefire fork fails |  Major | build | Duo Zhang | Mike Drob |
| [HBASE-20282](https://issues.apache.org/jira/browse/HBASE-20282) | Provide short name invocations for useful tools |  Major | documentation, tooling | Mike Drob | Mike Drob |
| [HBASE-17631](https://issues.apache.org/jira/browse/HBASE-17631) | Canary interval too low |  Major | canary | Lars George | Jan Hentschel |
| [HBASE-20259](https://issues.apache.org/jira/browse/HBASE-20259) | Doc configs for in-memory-compaction and add detail to in-memory-compaction logging |  Critical | . | stack | stack |
| [HBASE-20231](https://issues.apache.org/jira/browse/HBASE-20231) | Not able to delete column family from a row using RemoteHTable |  Major | REST | Pankaj Kumar | Pankaj Kumar |
| [HBASE-17518](https://issues.apache.org/jira/browse/HBASE-17518) | HBase Reference Guide has a syntax error |  Minor | documentation | Zhang Ningbo | Zhang Ningbo |
| [HBASE-16499](https://issues.apache.org/jira/browse/HBASE-16499) | slow replication for small HBase clusters |  Critical | Replication | Vikas Vishwakarma | Ashish Singhi |
| [HBASE-20343](https://issues.apache.org/jira/browse/HBASE-20343) | [DOC] fix log directory paths |  Critical | documentation | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20295](https://issues.apache.org/jira/browse/HBASE-20295) | TableOutputFormat.checkOutputSpecs throw NullPointerException Exception |  Major | mapreduce | Michael Jin | Michael Jin |
| [HBASE-20362](https://issues.apache.org/jira/browse/HBASE-20362) | TestMasterShutdown.testMasterShutdownBeforeStartingAnyRegionServer is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-20363](https://issues.apache.org/jira/browse/HBASE-20363) | TestNamespaceAuditor.testRegionMerge is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-20182](https://issues.apache.org/jira/browse/HBASE-20182) | Can not locate region after split and merge |  Blocker | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20384](https://issues.apache.org/jira/browse/HBASE-20384) | [AMv2] Logging format improvements; use encoded name rather than full region name marking  transitions |  Minor | . | stack | stack |
| [HBASE-20385](https://issues.apache.org/jira/browse/HBASE-20385) | Purge md5-making from our little make\_rc.sh script |  Minor | . | stack | stack |
| [HBASE-20382](https://issues.apache.org/jira/browse/HBASE-20382) | If RSGroups not enabled, rsgroup.jsp prints stack trace |  Major | rsgroup, UI | Mike Drob | Balazs Meszaros |
| [HBASE-20358](https://issues.apache.org/jira/browse/HBASE-20358) | Fix bin/hbase thrift usage text |  Minor | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20219](https://issues.apache.org/jira/browse/HBASE-20219) | An error occurs when scanning with reversed=true and loadColumnFamiliesOnDemand=true |  Critical | phoenix | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20310](https://issues.apache.org/jira/browse/HBASE-20310) | [hbck] bin/hbase hbck -metaonly shows false inconsistency on HBase 2 |  Major | hbck | Umesh Agashe | Umesh Agashe |
| [HBASE-20280](https://issues.apache.org/jira/browse/HBASE-20280) | Fix possibility of deadlocking in refreshFileConnections when prefetch is enabled |  Major | BucketCache | Zach York | Zach York |
| [HBASE-20350](https://issues.apache.org/jira/browse/HBASE-20350) | NullPointerException in Scanner during close() |  Blocker | . | Umesh Agashe | Appy |
| [HBASE-20330](https://issues.apache.org/jira/browse/HBASE-20330) | ProcedureExecutor.start() gets stuck in recover lease on store. |  Major | proc-v2 | Umesh Agashe | Umesh Agashe |
| [HBASE-20376](https://issues.apache.org/jira/browse/HBASE-20376) | RowCounter and CellCounter documentations are incorrect |  Minor | documentation, mapreduce | Peter Somogyi | Peter Somogyi |
| [HBASE-20397](https://issues.apache.org/jira/browse/HBASE-20397) | Make it more explicit that monkey.properties is found on CLASSPATH |  Trivial | . | stack | stack |
| [HBASE-20394](https://issues.apache.org/jira/browse/HBASE-20394) | HBase over rides the value of HBASE\_OPTS (if any) set by client |  Minor | Operability | Nihal Jain | Nihal Jain |
| [HBASE-20410](https://issues.apache.org/jira/browse/HBASE-20410) | upgrade protoc compiler to 3.5.1-1 |  Critical | build, dependencies, Protobufs | Mike Drob | Mike Drob |
| [HBASE-20233](https://issues.apache.org/jira/browse/HBASE-20233) | [metrics] Ill-formatted numRegions metric in "Hadoop:service=HBase,name=RegionServer,sub=Regions" mbean |  Trivial | metrics, Operability | stack | Xu Cang |
| [HBASE-20399](https://issues.apache.org/jira/browse/HBASE-20399) | Fix merge layout |  Minor | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20398](https://issues.apache.org/jira/browse/HBASE-20398) | Redirect doesn't work on web UI |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20439](https://issues.apache.org/jira/browse/HBASE-20439) | Clean up incorrect use of commons-logging in hbase-server |  Minor | dependencies, logging | Sean Busbey | Sean Busbey |
| [HBASE-20440](https://issues.apache.org/jira/browse/HBASE-20440) | Clean up incorrect use of commons-lang 2.y |  Major | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-20442](https://issues.apache.org/jira/browse/HBASE-20442) | clean up incorrect use of commons-collections 3 |  Major | dependencies, thirdparty | Sean Busbey | Sean Busbey |
| [HBASE-20464](https://issues.apache.org/jira/browse/HBASE-20464) | Disable IMC |  Major | in-memory-compaction | stack | stack |
| [HBASE-20293](https://issues.apache.org/jira/browse/HBASE-20293) | get\_splits returns duplicate split points when region replication is on |  Minor | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19547](https://issues.apache.org/jira/browse/HBASE-19547) | HBase fails building on AArch64 due to asciidoctor-maven-plugin. |  Major | build, documentation, website | Yuqi Gu | Yuqi Gu |
| [HBASE-20465](https://issues.apache.org/jira/browse/HBASE-20465) | Fix TestEnableRSGroup flaky |  Major | rsgroup | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20427](https://issues.apache.org/jira/browse/HBASE-20427) | thrift.jsp displays "Framed transport" incorrectly |  Major | Thrift | Balazs Meszaros | Balazs Meszaros |
| [HBASE-19924](https://issues.apache.org/jira/browse/HBASE-19924) | hbase rpc throttling does not work for multi() with request count rater. |  Major | rpc | huaxiang sun | huaxiang sun |
| [HBASE-20224](https://issues.apache.org/jira/browse/HBASE-20224) | Web UI is broken in standalone mode |  Blocker | UI, Usability | Umesh Agashe | Umesh Agashe |
| [HBASE-15835](https://issues.apache.org/jira/browse/HBASE-15835) | HBaseTestingUtility#startMiniCluster throws "HMasterAddress already in use" RuntimeException when a local instance of HBase is running |  Major | API | Daniel Vimont | Daniel Vimont |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11461](https://issues.apache.org/jira/browse/HBASE-11461) | Compilation errors are not posted back to JIRA during QA run |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-11039](https://issues.apache.org/jira/browse/HBASE-11039) | [VisibilityController] Integration test for labeled data set mixing and filtered excise |  Critical | . | Andrew Purtell | ramkrishna.s.vasudevan |
| [HBASE-11616](https://issues.apache.org/jira/browse/HBASE-11616) | TestNamespaceUpgrade fails in trunk |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-4744](https://issues.apache.org/jira/browse/HBASE-4744) | Remove @Ignore for testLogRollAfterSplitStart |  Critical | . | Nicolas Spiegelberg | Sean Busbey |
| [HBASE-11673](https://issues.apache.org/jira/browse/HBASE-11673) | TestIOFencing#testFencingAroundCompactionAfterWALSync fails |  Major | . | Qiang Tian | Sergey Soldatov |
| [HBASE-11866](https://issues.apache.org/jira/browse/HBASE-11866) | TestDistributedLogSplitting is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11867](https://issues.apache.org/jira/browse/HBASE-11867) | TestSplitLogManager.testUnassignedTimeout is flaky |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-12764](https://issues.apache.org/jira/browse/HBASE-12764) | TestPerColumnFamilyFlush#testCompareStoreFileCount may fail due to new table not available |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12992](https://issues.apache.org/jira/browse/HBASE-12992) | TestChoreService doesn't close services, that can break test on slow virtual hosts. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13106](https://issues.apache.org/jira/browse/HBASE-13106) | Ensure endpoint-only table coprocessors can be dynamically loaded |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13179](https://issues.apache.org/jira/browse/HBASE-13179) | TestMasterObserver deleteTable is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13182](https://issues.apache.org/jira/browse/HBASE-13182) | Test NamespaceAuditor/AccessController create/delete table is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
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
| [HBASE-18147](https://issues.apache.org/jira/browse/HBASE-18147) | nightly job to check health of active branches |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18632](https://issues.apache.org/jira/browse/HBASE-18632) | TestMultiParallel#testFlushCommitsWithAbort fails in master branch |  Major | test | Ted Yu | Ted Yu |
| [HBASE-18902](https://issues.apache.org/jira/browse/HBASE-18902) | TestCoprocessorServiceBackwardCompatibility fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19026](https://issues.apache.org/jira/browse/HBASE-19026) | TestLockProcedure#testRemoteNamespaceLockRecovery fails in master |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16051](https://issues.apache.org/jira/browse/HBASE-16051) | TestScannerHeartbeatMessages fails on some machines |  Major | test | Mikhail Antonov | Phil Yang |
| [HBASE-19237](https://issues.apache.org/jira/browse/HBASE-19237) | TestMaster.testMasterOpsWhileSplitting fails |  Major | . | Ted Yu | Yi Liang |
| [HBASE-19248](https://issues.apache.org/jira/browse/HBASE-19248) | TestZooKeeper#testMultipleZK fails due to missing method getKeepAliveZooKeeperWatcher |  Critical | Zookeeper | Ted Yu | Sean Busbey |
| [HBASE-19273](https://issues.apache.org/jira/browse/HBASE-19273) | IntegrationTestBulkLoad#installSlowingCoproc() uses read-only HTableDescriptor |  Major | . | Romil Choksi | Ted Yu |
| [HBASE-19299](https://issues.apache.org/jira/browse/HBASE-19299) | Assert only one Connection is constructed when calculating splits in a MultiTableInputFormat |  Minor | test | stack | stack |
| [HBASE-19288](https://issues.apache.org/jira/browse/HBASE-19288) | Intermittent test failure in TestHStore.testRunDoubleMemStoreCompactors |  Major | test | Ted Yu | Ted Yu |
| [HBASE-19266](https://issues.apache.org/jira/browse/HBASE-19266) | TestAcidGuarantees should cover adaptive in-memory compaction |  Minor | . | Ted Yu | Chia-Ping Tsai |
| [HBASE-19342](https://issues.apache.org/jira/browse/HBASE-19342) | fix TestTableBasedReplicationSourceManagerImpl#testRemovePeerMetricsCleanup |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19289](https://issues.apache.org/jira/browse/HBASE-19289) | CommonFSUtils$StreamLacksCapabilityException: hflush when running test against hadoop3 beta1 |  Critical | . | Ted Yu | Mike Drob |
| [HBASE-19514](https://issues.apache.org/jira/browse/HBASE-19514) | Use random port for TestJMXListener |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19832](https://issues.apache.org/jira/browse/HBASE-19832) | TestConfServlet#testWriteJson fails against hadoop3 due to spelling change |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19869](https://issues.apache.org/jira/browse/HBASE-19869) | Wrong class name used in TestLockManager |  Trivial | . | Ted Yu | Jan Hentschel |
| [HBASE-19949](https://issues.apache.org/jira/browse/HBASE-19949) | TestRSGroupsWithACL fails with ExceptionInInitializerError |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20031](https://issues.apache.org/jira/browse/HBASE-20031) | Unable to run integration test using mvn due to missing HBaseClassTestRule |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20052](https://issues.apache.org/jira/browse/HBASE-20052) | TestRegionOpen#testNonExistentRegionReplica fails due to NPE |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20107](https://issues.apache.org/jira/browse/HBASE-20107) | Add a test case for HBASE-14317 |  Minor | wal | Zephyr Guo | Zephyr Guo |
| [HBASE-20272](https://issues.apache.org/jira/browse/HBASE-20272) | TestAsyncTable#testCheckAndMutateWithTimeRange fails due to TableExistsException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20228](https://issues.apache.org/jira/browse/HBASE-20228) | [Umbrella] Verify 1.2.7 shell works against 2.0.0 server |  Blocker | shell | Peter Somogyi | Peter Somogyi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11261](https://issues.apache.org/jira/browse/HBASE-11261) | Handle splitting/merging of regions that have region\_replication greater than one |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-4624](https://issues.apache.org/jira/browse/HBASE-4624) | Remove and convert @deprecated RemoteExceptionHandler.decodeRemoteException calls |  Major | . | Jonathan Hsieh | Talat UYARER |
| [HBASE-10674](https://issues.apache.org/jira/browse/HBASE-10674) | HBCK should be updated to do replica related checks |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11607](https://issues.apache.org/jira/browse/HBASE-11607) | Document HBase metrics |  Major | documentation, metrics | Misty Linville | Misty Linville |
| [HBASE-11779](https://issues.apache.org/jira/browse/HBASE-11779) | Document the new requirement to set JAVA\_HOME before starting HBase |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11643](https://issues.apache.org/jira/browse/HBASE-11643) | Read and write MOB in HBase |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-11786](https://issues.apache.org/jira/browse/HBASE-11786) | Document web UI for tracking time spent in coprocessors |  Minor | Coprocessors, documentation | Misty Linville | Misty Linville |
| [HBASE-11901](https://issues.apache.org/jira/browse/HBASE-11901) | Improve the value size of the reference cell in mob column |  Major | . | Jingcheng Du | Jingcheng Du |
| [HBASE-11911](https://issues.apache.org/jira/browse/HBASE-11911) | Break up tests into more fine grained categories |  Major | . | Alex Newman | Alex Newman |
| [HBASE-11647](https://issues.apache.org/jira/browse/HBASE-11647) | MOB integration testing |  Major | Performance, test | Jingcheng Du | Jingcheng Du |
| [HBASE-7767](https://issues.apache.org/jira/browse/HBASE-7767) | Get rid of ZKTable, and table enable/disable state in ZK |  Major | Zookeeper | Enis Soztutar | Andrey Stepachev |
| [HBASE-11975](https://issues.apache.org/jira/browse/HBASE-11975) | Remove the explicit list of maven repositories in pom.xml |  Major | . | Alex Newman | Alex Newman |
| [HBASE-12000](https://issues.apache.org/jira/browse/HBASE-12000) | isMob and mobThreshold do not follow column descriptor property naming conventions |  Major | regionserver, Scanners | Misty Linville | Misty Linville |
| [HBASE-11986](https://issues.apache.org/jira/browse/HBASE-11986) | Document MOB in Ref Guide |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11646](https://issues.apache.org/jira/browse/HBASE-11646) | Handle the MOB in compaction |  Major | Compaction | Jingcheng Du | Jingcheng Du |
| [HBASE-8139](https://issues.apache.org/jira/browse/HBASE-8139) | Allow job names to be overridden |  Major | mapreduce, Usability | Nick Dimiduk | Ashish Singhi |
| [HBASE-11598](https://issues.apache.org/jira/browse/HBASE-11598) | Add simple rpc throttling |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11472](https://issues.apache.org/jira/browse/HBASE-11472) | Remove ZKTableStateClientSideReader class |  Major | Client, Consensus, Zookeeper | Mikhail Antonov | Andrey Stepachev |
| [HBASE-11644](https://issues.apache.org/jira/browse/HBASE-11644) | External MOB compaction tools |  Major | Compaction, master | Jingcheng Du | Jingcheng Du |
| [HBASE-12066](https://issues.apache.org/jira/browse/HBASE-12066) | Avoid major compaction in TestMobSweeper |  Major | Compaction, mob | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12080](https://issues.apache.org/jira/browse/HBASE-12080) | Shorten the run time of integration test by default when using mvn failsafe:integration-test |  Major | test | Jingcheng Du | Jingcheng Du |
| [HBASE-12085](https://issues.apache.org/jira/browse/HBASE-12085) | mob status should print human readable numbers. |  Major | mob, UI | Jonathan Hsieh | Jingcheng Du |
| [HBASE-12093](https://issues.apache.org/jira/browse/HBASE-12093) | Support the mob attributes in hbase shell when create/alter table |  Major | shell | Jingcheng Du | Jingcheng Du |
| [HBASE-11645](https://issues.apache.org/jira/browse/HBASE-11645) | Snapshot for MOB |  Major | snapshots | Jingcheng Du | Jingcheng Du |
| [HBASE-11912](https://issues.apache.org/jira/browse/HBASE-11912) | Catch some bad practices at compile time with error-prone |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11683](https://issues.apache.org/jira/browse/HBASE-11683) | Metrics for MOB |  Major | regionserver, Scanners | Jonathan Hsieh | Jingcheng Du |
| [HBASE-12391](https://issues.apache.org/jira/browse/HBASE-12391) | Correct a typo in the mob metrics |  Minor | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-12392](https://issues.apache.org/jira/browse/HBASE-12392) | Incorrect implementation of CompactionRequest.isRetainDeleteMarkers |  Critical | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-4625](https://issues.apache.org/jira/browse/HBASE-4625) | Convert @deprecated HBaseTestCase tests  JUnit4 style tests |  Minor | . | Jonathan Hsieh | Ashish Singhi |
| [HBASE-12343](https://issues.apache.org/jira/browse/HBASE-12343) | Document recommended configuration for 0.98 from HBASE-11964 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12382](https://issues.apache.org/jira/browse/HBASE-12382) | Restore incremental compilation |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12489](https://issues.apache.org/jira/browse/HBASE-12489) |  Incorrect 'mobFileCacheMissCount' calculated in the mob metrics |  Major | regionserver, Scanners | Jiajia Li | Jiajia Li |
| [HBASE-12486](https://issues.apache.org/jira/browse/HBASE-12486) | Move the mob table name tag to the 2nd one |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-12487](https://issues.apache.org/jira/browse/HBASE-12487) | Explicitly flush the file name in sweep job |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-12543](https://issues.apache.org/jira/browse/HBASE-12543) | Incorrect log info in the store compaction of mob |  Minor | regionserver | Jiajia Li | Jiajia Li |
| [HBASE-12591](https://issues.apache.org/jira/browse/HBASE-12591) | Ignore the count of mob compaction metrics when there is issue |  Minor | regionserver | Jiajia Li | Jiajia Li |
| [HBASE-12523](https://issues.apache.org/jira/browse/HBASE-12523) | Update checkstyle plugin rules to match our use |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-11903](https://issues.apache.org/jira/browse/HBASE-11903) | Directly invoking split & merge of replica regions should be disallowed |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-12646](https://issues.apache.org/jira/browse/HBASE-12646) | SnapshotInfo tool does not find mob data in snapshots |  Major | mob, snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12648](https://issues.apache.org/jira/browse/HBASE-12648) | Document per cell TTLs |  Minor | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12691](https://issues.apache.org/jira/browse/HBASE-12691) | sweep job needs to exit non-zero if job fails for any reason. |  Major | mob | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12528](https://issues.apache.org/jira/browse/HBASE-12528) | Document the newly introduced params for providing principal and keytabs. |  Minor | documentation | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12738](https://issues.apache.org/jira/browse/HBASE-12738) | Chunk Ref Guide into file-per-chapter |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12012](https://issues.apache.org/jira/browse/HBASE-12012) | Improve cancellation for the scan RPCs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-12758](https://issues.apache.org/jira/browse/HBASE-12758) | treat mob region as any other region when generating rs manifest. |  Major | mob, snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12698](https://issues.apache.org/jira/browse/HBASE-12698) | Add mob cell count to the metadata of each mob file |  Major | regionserver | Jingcheng Du | Jingcheng Du |
| [HBASE-12331](https://issues.apache.org/jira/browse/HBASE-12331) | Shorten the mob snapshot unit tests |  Major | mob | Jonathan Hsieh | Jiajia Li |
| [HBASE-12695](https://issues.apache.org/jira/browse/HBASE-12695) | JDK 1.8 compilation broken |  Critical | build | Elliott Clark | Esteban Gutierrez |
| [HBASE-11533](https://issues.apache.org/jira/browse/HBASE-11533) | AsciiDoctor POC |  Minor | build, documentation | Misty Linville | Misty Linville |
| [HBASE-12708](https://issues.apache.org/jira/browse/HBASE-12708) | Document newly introduced params for using Thrift-over-HTTPS. |  Minor | documentation, Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12848](https://issues.apache.org/jira/browse/HBASE-12848) | Utilize Flash storage for WAL |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12820](https://issues.apache.org/jira/browse/HBASE-12820) | Use table lock instead of MobZookeeper |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-8410](https://issues.apache.org/jira/browse/HBASE-8410) | Basic quota support for namespaces |  Major | . | Francis Liu | Vandana Ayyalasomayajula |
| [HBASE-12669](https://issues.apache.org/jira/browse/HBASE-12669) | Have compaction scanner save info about delete markers |  Major | regionserver, Scanners | Jonathan Hsieh | Jingcheng Du |
| [HBASE-7847](https://issues.apache.org/jira/browse/HBASE-7847) | Use zookeeper multi to clear znodes |  Major | . | Ted Yu | Rakesh R |
| [HBASE-11908](https://issues.apache.org/jira/browse/HBASE-11908) | Region replicas should be added to the meta table at the time of table creation |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11574](https://issues.apache.org/jira/browse/HBASE-11574) | hbase:meta's regions can be replicated |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-12936](https://issues.apache.org/jira/browse/HBASE-12936) | Quota support for namespace should take region merge into account |  Major | . | Ted Yu | Ted Yu |
| [HBASE-10942](https://issues.apache.org/jira/browse/HBASE-10942) | support parallel request cancellation for multi-get |  Major | . | Sergey Shelukhin | Devaraj Das |
| [HBASE-11861](https://issues.apache.org/jira/browse/HBASE-11861) | Native MOB Compaction mechanisms. |  Major | regionserver, Scanners | Jonathan Hsieh | Jingcheng Du |
| [HBASE-11568](https://issues.apache.org/jira/browse/HBASE-11568) | Async WAL replication for region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11567](https://issues.apache.org/jira/browse/HBASE-11567) | Write bulk load COMMIT events to WAL |  Major | . | Enis Soztutar | Alex Newman |
| [HBASE-11910](https://issues.apache.org/jira/browse/HBASE-11910) | Document Premptive Call Me Maybe HBase findings in the online manual |  Major | . | Andrew Purtell | Misty Linville |
| [HBASE-11569](https://issues.apache.org/jira/browse/HBASE-11569) | Flush / Compaction handling from secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12425](https://issues.apache.org/jira/browse/HBASE-12425) | Document the phases of the split transaction |  Major | documentation | Andrew Purtell | Misty Linville |
| [HBASE-13013](https://issues.apache.org/jira/browse/HBASE-13013) | Add read lock to ExpiredMobFileCleanerChore |  Major | master | Jingcheng Du | Jingcheng Du |
| [HBASE-11842](https://issues.apache.org/jira/browse/HBASE-11842) | Integration test for async wal replication to secondary regions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12714](https://issues.apache.org/jira/browse/HBASE-12714) | RegionReplicaReplicationEndpoint should not set the RPC Codec |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12561](https://issues.apache.org/jira/browse/HBASE-12561) | Replicas of regions can be cached from different instances of the table in MetaCache |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13067](https://issues.apache.org/jira/browse/HBASE-13067) | Fix caching of stubs to allow IP address changes of restarted remote servers |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13117](https://issues.apache.org/jira/browse/HBASE-13117) | improve mob sweeper javadoc |  Major | mob | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13130](https://issues.apache.org/jira/browse/HBASE-13130) | Add timeouts on TestMasterObserver, a frequent zombie show |  Major | test | stack | stack |
| [HBASE-12670](https://issues.apache.org/jira/browse/HBASE-12670) | Add unit tests that exercise the added hfilelink link mob paths |  Major | regionserver, Scanners | Jonathan Hsieh | Jingcheng Du |
| [HBASE-11571](https://issues.apache.org/jira/browse/HBASE-11571) | Bulk load handling from secondary region replicas |  Major | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-13152](https://issues.apache.org/jira/browse/HBASE-13152) | NPE in ExpiredMobFileCleanerChore |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-11580](https://issues.apache.org/jira/browse/HBASE-11580) | Failover handling for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13012](https://issues.apache.org/jira/browse/HBASE-13012) | Add shell commands to trigger the mob file compactor |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-13154](https://issues.apache.org/jira/browse/HBASE-13154) | Add support for mob in TestAcidGuarantees and IntegrationTestAcidGuarantees |  Major | integration tests, mob | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12332](https://issues.apache.org/jira/browse/HBASE-12332) | [mob] improve how we resolve mobfiles in reads |  Major | mob | Jonathan Hsieh | Jiajia Li |
| [HBASE-13157](https://issues.apache.org/jira/browse/HBASE-13157) | Add mob compaction actions and monkeys to Chaos Monkey |  Major | integration tests, mob | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13107](https://issues.apache.org/jira/browse/HBASE-13107) | Refactor MOB Snapshot logic to reduce code duplication. |  Major | mob, snapshots | Jonathan Hsieh | Jingcheng Du |
| [HBASE-13151](https://issues.apache.org/jira/browse/HBASE-13151) | IllegalArgumentException in compaction when table has a namespace |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-12562](https://issues.apache.org/jira/browse/HBASE-12562) | Handling memory pressure for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13164](https://issues.apache.org/jira/browse/HBASE-13164) | Update TestUsersOperationsWithSecureHadoop to use MiniKdc |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13095](https://issues.apache.org/jira/browse/HBASE-13095) | Document how to retrieve replication stats from HBase Shell |  Major | documentation, Replication | Misty Linville | Misty Linville |
| [HBASE-13121](https://issues.apache.org/jira/browse/HBASE-13121) | Async wal replication for region replicas and dist log replay does not work together |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13169](https://issues.apache.org/jira/browse/HBASE-13169) | ModifyTable increasing the region replica count should also auto-setup RRRE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13226](https://issues.apache.org/jira/browse/HBASE-13226) | Document enable\_table\_replication and disable\_table\_replication shell commands |  Minor | documentation | Ashish Singhi | Ashish Singhi |
| [HBASE-13244](https://issues.apache.org/jira/browse/HBASE-13244) | Test delegation token generation with kerberos enabled |  Major | security, test | Duo Zhang | Duo Zhang |
| [HBASE-13230](https://issues.apache.org/jira/browse/HBASE-13230) | [mob] reads hang when trying to read rows with large mobs (\>10MB) |  Major | mob | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13006](https://issues.apache.org/jira/browse/HBASE-13006) | Document visibility label support for groups |  Minor | . | Jerry He | Jerry He |
| [HBASE-13258](https://issues.apache.org/jira/browse/HBASE-13258) | Promote TestHRegion to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-13327](https://issues.apache.org/jira/browse/HBASE-13327) | Use Admin in ConnectionCache |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13332](https://issues.apache.org/jira/browse/HBASE-13332) | Fix the usage of doAs/runAs in Visibility Controller tests. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13303](https://issues.apache.org/jira/browse/HBASE-13303) | Fix size calculation of results on the region server |  Major | Client | Lars Hofhansl | Andrew Purtell |
| [HBASE-13213](https://issues.apache.org/jira/browse/HBASE-13213) | Split out locality metrics among primary and secondary region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13335](https://issues.apache.org/jira/browse/HBASE-13335) | Update ClientSmallScanner and ClientSmallReversedScanner |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-13252](https://issues.apache.org/jira/browse/HBASE-13252) | Get rid of managed connections and connection caching |  Major | API | Mikhail Antonov | Mikhail Antonov |
| [HBASE-13277](https://issues.apache.org/jira/browse/HBASE-13277) | add mob\_threshold option to load test tool |  Major | regionserver, Scanners | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13302](https://issues.apache.org/jira/browse/HBASE-13302) | fix new  javadoc warns introduced by mob. |  Major | regionserver, Scanners | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13421](https://issues.apache.org/jira/browse/HBASE-13421) | Reduce the number of object creations introduced by HBASE-11544 in scan RPC hot code paths |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13429](https://issues.apache.org/jira/browse/HBASE-13429) | Remove deprecated seek/reseek methods from HFileScanner |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13313](https://issues.apache.org/jira/browse/HBASE-13313) | Skip the disabled table in mob compaction chore and MasterRpcServices |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
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
| [HBASE-13184](https://issues.apache.org/jira/browse/HBASE-13184) | Document turning off memstore for region replicas |  Critical | documentation, Replication | Misty Linville | Misty Linville |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13501](https://issues.apache.org/jira/browse/HBASE-13501) | Deprecate/Remove getComparator() in HRegionInfo. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13464](https://issues.apache.org/jira/browse/HBASE-13464) | Remove deprecations for 2.0.0 - Part 1 |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13620](https://issues.apache.org/jira/browse/HBASE-13620) | Bring back the removed VisibilityClient methods and mark them as deprecated. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13593](https://issues.apache.org/jira/browse/HBASE-13593) | Quota support for namespace should take snapshot restore and clone into account |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-13571](https://issues.apache.org/jira/browse/HBASE-13571) | Procedure v2 - client modify table sync (incompatible with branch-1.x) |  Minor | proc-v2 | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13201](https://issues.apache.org/jira/browse/HBASE-13201) | Remove HTablePool from thrift-server |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13398](https://issues.apache.org/jira/browse/HBASE-13398) | Document HBase Quota |  Major | documentation | Ashish Singhi | Gururaj Shetty |
| [HBASE-13510](https://issues.apache.org/jira/browse/HBASE-13510) | Purge ByteBloomFilter |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13531](https://issues.apache.org/jira/browse/HBASE-13531) | Flakey failures of TestAcidGuarantees#testMobScanAtomicity |  Major | regionserver, Scanners | Jonathan Hsieh | Jingcheng Du |
| [HBASE-13679](https://issues.apache.org/jira/browse/HBASE-13679) | Change ColumnTracker and SQM to deal with Cell instead of byte[], int, int |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13642](https://issues.apache.org/jira/browse/HBASE-13642) | Deprecate RegionObserver#postScannerFilterRow CP hook with byte[],int,int args in favor of taking Cell arg |  Major | Coprocessors, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13736](https://issues.apache.org/jira/browse/HBASE-13736) | Add delay for the first execution of ExpiredMobFileCleanerChore and MobFileCompactorChore |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13641](https://issues.apache.org/jira/browse/HBASE-13641) | Deperecate Filter#filterRowKey(byte[] buffer, int offset, int length) in favor of filterRowKey(Cell firstRowCell) |  Major | Filters, regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13739](https://issues.apache.org/jira/browse/HBASE-13739) | Remove KeyValueUtil.ensureKeyValue(cell) from MOB code. |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13720](https://issues.apache.org/jira/browse/HBASE-13720) | Mob files are not encrypting in mob compaction and Sweeper |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-13762](https://issues.apache.org/jira/browse/HBASE-13762) | Use the same HFileContext with store files in mob files |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13658](https://issues.apache.org/jira/browse/HBASE-13658) | Improve the test run time for TestAccessController class |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-13393](https://issues.apache.org/jira/browse/HBASE-13393) | Optimize memstore flushing to avoid writing tag information to hfiles when no tags are present. |  Major | HFile, Performance | stack | ramkrishna.s.vasudevan |
| [HBASE-13754](https://issues.apache.org/jira/browse/HBASE-13754) | Allow non KeyValue Cell types also to oswrite |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13763](https://issues.apache.org/jira/browse/HBASE-13763) | Handle the rename, annotation and typo stuff in MOB |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13476](https://issues.apache.org/jira/browse/HBASE-13476) | Procedure V2 - Add Replay Order logic for child procedures |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13616](https://issues.apache.org/jira/browse/HBASE-13616) | Move ServerShutdownHandler to Pv2 |  Major | proc-v2 | stack | stack |
| [HBASE-13790](https://issues.apache.org/jira/browse/HBASE-13790) | Remove the DeleteTableHandler |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13759](https://issues.apache.org/jira/browse/HBASE-13759) | Improve procedure yielding |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13805](https://issues.apache.org/jira/browse/HBASE-13805) | Use LimitInputStream in hbase-common instead of ProtobufUtil.LimitedInputStream |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13803](https://issues.apache.org/jira/browse/HBASE-13803) | Disable the MobCompactionChore when the interval is not larger than 0 |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13804](https://issues.apache.org/jira/browse/HBASE-13804) | Revert the changes in pom.xml |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13817](https://issues.apache.org/jira/browse/HBASE-13817) | ByteBufferOuputStream - add writeInt support |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13827](https://issues.apache.org/jira/browse/HBASE-13827) | Delayed scanner close in KeyValueHeap and StoreScanner |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13806](https://issues.apache.org/jira/browse/HBASE-13806) | Check the mob files when there are mob-enabled columns in HFileCorruptionChecker |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13856](https://issues.apache.org/jira/browse/HBASE-13856) | Wrong mob metrics names in TestRegionServerMetrics |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13451](https://issues.apache.org/jira/browse/HBASE-13451) | Make the HFileBlockIndex blockKeys to Cells so that it could be easy to use in the CellComparators |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13836](https://issues.apache.org/jira/browse/HBASE-13836) | Do not reset the mvcc for bulk loaded mob reference cells in reading |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13871](https://issues.apache.org/jira/browse/HBASE-13871) | Change RegionScannerImpl to deal with Cell instead of byte[], int, int |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13855](https://issues.apache.org/jira/browse/HBASE-13855) | Race in multi threaded PartitionedMobCompactor causes NPE |  Critical | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13569](https://issues.apache.org/jira/browse/HBASE-13569) | correct errors reported with mvn site |  Minor | documentation | Gabor Liptak | Gabor Liptak |
| [HBASE-13899](https://issues.apache.org/jira/browse/HBASE-13899) | Jacoco instrumentation fails under jdk8 |  Major | build, test | Sean Busbey | Duo Zhang |
| [HBASE-13910](https://issues.apache.org/jira/browse/HBASE-13910) | add branch-1.2 to precommit branches |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-13886](https://issues.apache.org/jira/browse/HBASE-13886) | Return empty value when the mob file is corrupt instead of throwing exceptions |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |
| [HBASE-13916](https://issues.apache.org/jira/browse/HBASE-13916) | Create MultiByteBuffer an aggregation of ByteBuffers |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13926](https://issues.apache.org/jira/browse/HBASE-13926) | Close the scanner only after Call#setResponse |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13448](https://issues.apache.org/jira/browse/HBASE-13448) | New Cell implementation with cached component offsets/lengths |  Blocker | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13728](https://issues.apache.org/jira/browse/HBASE-13728) | Remove use of Hadoop's GenericOptionsParser |  Blocker | . | Sean Busbey | Sean Busbey |
| [HBASE-13898](https://issues.apache.org/jira/browse/HBASE-13898) | correct additional javadoc failures under java 8 |  Minor | documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13932](https://issues.apache.org/jira/browse/HBASE-13932) | Add mob integrity check in HFilePrettyPrinter |  Major | mob | Jingcheng Du | Jingcheng Du |
| [HBASE-13920](https://issues.apache.org/jira/browse/HBASE-13920) | Exclude Java files generated from protobuf from javadoc |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13950](https://issues.apache.org/jira/browse/HBASE-13950) | Add a NoopProcedureStore for testing |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13967](https://issues.apache.org/jira/browse/HBASE-13967) | add jdk profiles for jdk.tools dependency |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13973](https://issues.apache.org/jira/browse/HBASE-13973) | Update documentation for 10070 Phase 2 changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13968](https://issues.apache.org/jira/browse/HBASE-13968) | Remove deprecated methods from BufferedMutator class |  Major | API | Ashish Singhi | Ashish Singhi |
| [HBASE-13922](https://issues.apache.org/jira/browse/HBASE-13922) | Do not reset mvcc in compactions for mob-enabled column |  Major | mob | Jingcheng Du | Jingcheng Du |
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
| [HBASE-12015](https://issues.apache.org/jira/browse/HBASE-12015) | Not cleaning Mob data when Mob CF is removed from table |  Major | . | Anoop Sam John | Pankaj Kumar |
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
| [HBASE-14147](https://issues.apache.org/jira/browse/HBASE-14147) | REST Support for Namespaces |  Minor | REST | Rick Kellogg | Matt Warhaftig |
| [HBASE-14472](https://issues.apache.org/jira/browse/HBASE-14472) | TestHCM and TestRegionServerNoMaster fixes |  Minor | test | stack | stack |
| [HBASE-14464](https://issues.apache.org/jira/browse/HBASE-14464) | Removed unused fs code |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-14484](https://issues.apache.org/jira/browse/HBASE-14484) | Follow-on from HBASE-14421, just disable TestFastFail\* until someone digs in and fixes it |  Major | test | stack | stack |
| [HBASE-14378](https://issues.apache.org/jira/browse/HBASE-14378) | Get TestAccessController\* passing again on branch-1 |  Major | . | stack | stack |
| [HBASE-12748](https://issues.apache.org/jira/browse/HBASE-12748) | RegionCoprocessorHost.execOperation creates too many iterator objects |  Major | . | Vladimir Rodionov | Andrew Purtell |
| [HBASE-14051](https://issues.apache.org/jira/browse/HBASE-14051) | Undo workarounds in IntegrationTestDDLMasterFailover for client double submit |  Major | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-14212](https://issues.apache.org/jira/browse/HBASE-14212) | Add IT test for procedure-v2-based namespace DDL |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
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
| [HBASE-14558](https://issues.apache.org/jira/browse/HBASE-14558) | Document ChaosMonkey enhancements from HBASE-14261 |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-13819](https://issues.apache.org/jira/browse/HBASE-13819) | Make RPC layer CellBlock buffer a DirectByteBuffer |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14600](https://issues.apache.org/jira/browse/HBASE-14600) | Make #testWalRollOnLowReplication looser still |  Major | test | stack | stack |
| [HBASE-14596](https://issues.apache.org/jira/browse/HBASE-14596) | TestCellACLs failing... on1.2 builds |  Major | test | stack | stack |
| [HBASE-14602](https://issues.apache.org/jira/browse/HBASE-14602) | Convert HBasePoweredBy Wiki page to a hbase.apache.org page |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14570](https://issues.apache.org/jira/browse/HBASE-14570) | Split TestHBaseFsck in order to help with hanging tests |  Major | test | stack | Elliott Clark |
| [HBASE-14607](https://issues.apache.org/jira/browse/HBASE-14607) | Convert SupportingProjects wiki page to a site page |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14627](https://issues.apache.org/jira/browse/HBASE-14627) | Move Stargate docs to Ref Guide |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14637](https://issues.apache.org/jira/browse/HBASE-14637) | Loosen TestChoreService assert AND have TestDataBlockEncoders do less work (and add timeouts) |  Major | test | stack | stack |
| [HBASE-14647](https://issues.apache.org/jira/browse/HBASE-14647) | Disable TestWALProcedureStoreOnHDFS#testWalRollOnLowReplication |  Major | test | stack | stack |
| [HBASE-14646](https://issues.apache.org/jira/browse/HBASE-14646) | Move TestCellACLs from medium to large category |  Minor | test | stack | stack |
| [HBASE-14595](https://issues.apache.org/jira/browse/HBASE-14595) | For Wiki contents that are also in the Ref Guide, replace content with a URL |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14636](https://issues.apache.org/jira/browse/HBASE-14636) | Clear HFileScannerImpl#prevBlocks in between Compaction flow |  Blocker | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
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
| [HBASE-14640](https://issues.apache.org/jira/browse/HBASE-14640) | Move Cascading info from Wiki to Ref Guide |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14641](https://issues.apache.org/jira/browse/HBASE-14641) | Move JDO example from Wiki to Ref Guide |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-13478](https://issues.apache.org/jira/browse/HBASE-13478) | Document the change of default master ports being used . |  Minor | documentation | Srikanth Srungarapu | Misty Linville |
| [HBASE-14639](https://issues.apache.org/jira/browse/HBASE-14639) | Move Scala info from Wiki to Ref Guide |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14638](https://issues.apache.org/jira/browse/HBASE-14638) | Move Jython info from the Wiki to the Ref Guide |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14725](https://issues.apache.org/jira/browse/HBASE-14725) | Vet categorization of tests so they for sure go into the right small/medium/large buckets |  Major | test | stack | stack |
| [HBASE-14589](https://issues.apache.org/jira/browse/HBASE-14589) | Looking for the surefire-killer; builds being killed...ExecutionException: java.lang.RuntimeException: The forked VM terminated without properly saying goodbye. VM crash or System.exit called? |  Major | test | stack | stack |
| [HBASE-14786](https://issues.apache.org/jira/browse/HBASE-14786) | TestProcedureAdmin hangs |  Major | hangingTests, test | stack | Matteo Bertozzi |
| [HBASE-14785](https://issues.apache.org/jira/browse/HBASE-14785) | Hamburger menu for mobile site |  Major | website | Misty Linville | Misty Linville |
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
| [HBASE-15023](https://issues.apache.org/jira/browse/HBASE-15023) | Reenable TestShell and TestStochasticLoadBalancer |  Major | test | stack | stack |
| [HBASE-14107](https://issues.apache.org/jira/browse/HBASE-14107) | Procedure V2 - Administrative Task: Provide an API to List all procedures |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14432](https://issues.apache.org/jira/browse/HBASE-14432) | Procedure V2 - enforce ACL on procedure admin tasks |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14108](https://issues.apache.org/jira/browse/HBASE-14108) | Procedure V2 - Administrative Task: provide an API to abort a procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14487](https://issues.apache.org/jira/browse/HBASE-14487) | Procedure V2 - shell command to list all procedures |  Major | proc-v2, shell | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14488](https://issues.apache.org/jira/browse/HBASE-14488) | Procedure V2 - shell command to abort a procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12593](https://issues.apache.org/jira/browse/HBASE-12593) | Tags to work with ByteBuffer |  Major | regionserver, Scanners | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-15077](https://issues.apache.org/jira/browse/HBASE-15077) | Support OffheapKV write in compaction with out copying data on heap |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-15087](https://issues.apache.org/jira/browse/HBASE-15087) | Fix hbase-common findbugs complaints |  Major | build | stack | Stack |
| [HBASE-15095](https://issues.apache.org/jira/browse/HBASE-15095) | isReturnResult=false  on fast path in branch-1.1 and branch-1.0 is not respected |  Major | Performance | stack | Heng Chen |
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
| [HBASE-15524](https://issues.apache.org/jira/browse/HBASE-15524) | Fix NPE in client-side metrics |  Critical | Client, metrics | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15384](https://issues.apache.org/jira/browse/HBASE-15384) | Avoid using '/tmp' directory in TestBulkLoad |  Major | test | Heng Chen | Heng Chen |
| [HBASE-15389](https://issues.apache.org/jira/browse/HBASE-15389) | Write out multiple files when compaction |  Major | Compaction | Duo Zhang | Duo Zhang |
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
| [HBASE-16153](https://issues.apache.org/jira/browse/HBASE-16153) | Correct the config name 'hbase.memestore.inmemoryflush.threshold.factor' |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
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
| [HBASE-15305](https://issues.apache.org/jira/browse/HBASE-15305) | Fix a couple of incorrect anchors in HBase ref guide |  Major | documentation | Misty Linville | Misty Linville |
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
| [HBASE-16834](https://issues.apache.org/jira/browse/HBASE-16834) | Add AsyncConnection support for ConnectionFactory |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16846](https://issues.apache.org/jira/browse/HBASE-16846) | Procedure v2 - executor cleanup |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16836](https://issues.apache.org/jira/browse/HBASE-16836) | Implement increment and append |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16837](https://issues.apache.org/jira/browse/HBASE-16837) | Implement checkAndPut and checkAndDelete |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16864](https://issues.apache.org/jira/browse/HBASE-16864) | Procedure v2 - Fix StateMachineProcedure support for child procs at last step |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16874](https://issues.apache.org/jira/browse/HBASE-16874) | Fix TestMasterFailoverWithProcedures and ensure single proc-executor for kill/restart tests |  Minor | proc-v2 | Ted Yu | Matteo Bertozzi |
| [HBASE-16872](https://issues.apache.org/jira/browse/HBASE-16872) | Implement mutateRow and checkAndMutate |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16871](https://issues.apache.org/jira/browse/HBASE-16871) | Procedure v2 - add waiting procs back to the queue after restart |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15789](https://issues.apache.org/jira/browse/HBASE-15789) | PB related changes to work with offheap |  Major | regionserver | ramkrishna.s.vasudevan | Anoop Sam John |
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
| [HBASE-16995](https://issues.apache.org/jira/browse/HBASE-16995) | Build client Java API and client protobuf messages |  Major | Client | Josh Elser | Josh Elser |
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
| [HBASE-16996](https://issues.apache.org/jira/browse/HBASE-16996) | Implement storage/retrieval of filesystem-use quotas into quota table |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17260](https://issues.apache.org/jira/browse/HBASE-17260) | Procedure v2 - Add setOwner() overload taking a User instance |  Trivial | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16941](https://issues.apache.org/jira/browse/HBASE-16941) | FavoredNodes - Split/Merge code paths |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17251](https://issues.apache.org/jira/browse/HBASE-17251) | Add a timeout parameter when locating region |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-16336](https://issues.apache.org/jira/browse/HBASE-16336) | Removing peers seems to be leaving spare queues |  Major | Replication | Joseph | Guanghao Zhang |
| [HBASE-17294](https://issues.apache.org/jira/browse/HBASE-17294) | External Configuration for Memory Compaction |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-17277](https://issues.apache.org/jira/browse/HBASE-17277) | Allow alternate BufferedMutator implementation |  Major | . | stack | stack |
| [HBASE-17313](https://issues.apache.org/jira/browse/HBASE-17313) | Add BufferedMutatorParams#clone method |  Major | Client | Joep Rottinghuis | Joep Rottinghuis |
| [HBASE-17316](https://issues.apache.org/jira/browse/HBASE-17316) | Addendum to HBASE-17294, 'External Configuration for Memory Compaction' |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-17000](https://issues.apache.org/jira/browse/HBASE-17000) | [RegionServer] Compute region filesystem space use and report to Master |  Major | regionserver | Josh Elser | Josh Elser |
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
| [HBASE-17557](https://issues.apache.org/jira/browse/HBASE-17557) | HRegionServer#reportRegionSizesForQuotas() should respond to UnsupportedOperationException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16998](https://issues.apache.org/jira/browse/HBASE-16998) | [Master] Analyze table use reports and update quota violations |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17562](https://issues.apache.org/jira/browse/HBASE-17562) | Remove documentation for coprocessor execution times after HBASE-14205 |  Major | Coprocessors, Performance, regionserver | Enis Soztutar | Jan Hentschel |
| [HBASE-17566](https://issues.apache.org/jira/browse/HBASE-17566) | Jetty upgrade fixes |  Major | REST, UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-17346](https://issues.apache.org/jira/browse/HBASE-17346) | Add coprocessor service support |  Major | asyncclient, Client, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-17101](https://issues.apache.org/jira/browse/HBASE-17101) | FavoredNodes should not apply to system tables |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17198](https://issues.apache.org/jira/browse/HBASE-17198) | FN updates during region merge (follow up to Procedure v2 merge) |  Major | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17281](https://issues.apache.org/jira/browse/HBASE-17281) | FN should use datanode port from hdfs configuration |  Minor | FavoredNodes | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17511](https://issues.apache.org/jira/browse/HBASE-17511) | Implement enable/disable table methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17349](https://issues.apache.org/jira/browse/HBASE-17349) | Add doc for regionserver group-based assignment |  Critical | regionserver, rsgroup | stack | stack |
| [HBASE-17596](https://issues.apache.org/jira/browse/HBASE-17596) | Implement add/delete/modify column family methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16999](https://issues.apache.org/jira/browse/HBASE-16999) | [Master] Inform RegionServers on size quota violations |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17350](https://issues.apache.org/jira/browse/HBASE-17350) | Fixup of regionserver group-based assignment |  Critical | regionserver, rsgroup | stack | stack |
| [HBASE-17402](https://issues.apache.org/jira/browse/HBASE-17402) | TestAsyncTableScan sometimes hangs |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17389](https://issues.apache.org/jira/browse/HBASE-17389) | Convert all internal usages from ReplicationAdmin to Admin |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17484](https://issues.apache.org/jira/browse/HBASE-17484) | Add non cached version of OffheapKV for write path |  Major | regionserver | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-17575](https://issues.apache.org/jira/browse/HBASE-17575) | Run critical tests with each of the Inmemory Compaction Policies enabled (Towards Making BASIC the Default In-Memory Compaction Policy) |  Major | test | Eshcar Hillel | Eshcar Hillel |
| [HBASE-17001](https://issues.apache.org/jira/browse/HBASE-17001) | [RegionServer] Implement enforcement of quota violation policies |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-17259](https://issues.apache.org/jira/browse/HBASE-17259) | Missing functionality to remove space quota |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17583](https://issues.apache.org/jira/browse/HBASE-17583) | Add inclusive/exclusive support for startRow and endRow of scan for sync client |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17656](https://issues.apache.org/jira/browse/HBASE-17656) | Move new Address class from util to net package |  Minor | rsgroup | stack | stack |
| [HBASE-17619](https://issues.apache.org/jira/browse/HBASE-17619) | Add async admin Impl which connect to RegionServer and implement close region methods. |  Major | asyncclient | Zheng Hu | Zheng Hu |
| [HBASE-17644](https://issues.apache.org/jira/browse/HBASE-17644) | Always create ByteBufferCells after copying to MSLAB |  Major | regionserver | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-17025](https://issues.apache.org/jira/browse/HBASE-17025) | [Shell] Support space quota get/set via the shell |  Major | shell | Josh Elser | Josh Elser |
| [HBASE-17478](https://issues.apache.org/jira/browse/HBASE-17478) | Avoid sending FSUtilization reports to master when quota support is not enabled |  Trivial | . | Josh Elser | Josh Elser |
| [HBASE-17210](https://issues.apache.org/jira/browse/HBASE-17210) | Set timeout on trying rowlock according to client's RPC timeout |  Major | . | Phil Yang | Phil Yang |
| [HBASE-17561](https://issues.apache.org/jira/browse/HBASE-17561) | table status page should escape values that may contain arbitrary characters. |  Major | master, UI | Sean Busbey | Sean Busbey |
| [HBASE-17608](https://issues.apache.org/jira/browse/HBASE-17608) | Add suspend support for RawScanResultConsumer |  Major | asyncclient, Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-16991](https://issues.apache.org/jira/browse/HBASE-16991) | Make the initialization of AsyncConnection asynchronous |  Minor | Client | Duo Zhang | Duo Zhang |
| [HBASE-17428](https://issues.apache.org/jira/browse/HBASE-17428) | Expand on shell commands for detailed insight |  Major | shell | Josh Elser | Josh Elser |
| [HBASE-17662](https://issues.apache.org/jira/browse/HBASE-17662) | Disable in-memory flush when replaying from WAL |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-17646](https://issues.apache.org/jira/browse/HBASE-17646) | Implement Async getRegion method |  Major | asyncclient | Zheng Hu | Zheng Hu |
| [HBASE-17516](https://issues.apache.org/jira/browse/HBASE-17516) | Table quota not taking precedence over namespace quota |  Major | . | Romil Choksi | Josh Elser |
| [HBASE-17602](https://issues.apache.org/jira/browse/HBASE-17602) | Tweak chore delay/period defaults |  Trivial | . | Josh Elser | Josh Elser |
| [HBASE-15484](https://issues.apache.org/jira/browse/HBASE-15484) | Correct the semantic of batch and partial |  Blocker | Client, scan | Phil Yang | Phil Yang |
| [HBASE-17568](https://issues.apache.org/jira/browse/HBASE-17568) | Expire region reports in the HMaster |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17002](https://issues.apache.org/jira/browse/HBASE-17002) | [Master] Report quotas and active violations on Master UI and JMX metrics |  Major | master, UI | Josh Elser | Josh Elser |
| [HBASE-17600](https://issues.apache.org/jira/browse/HBASE-17600) | Implement get/create/modify/delete/list namespace admin operations |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17745](https://issues.apache.org/jira/browse/HBASE-17745) | Support short circuit connection for master services |  Major | . | Yu Li | Yu Li |
| [HBASE-17338](https://issues.apache.org/jira/browse/HBASE-17338) | Treat Cell data size under global memstore heap size only when that Cell can not be copied to MSLAB |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-17740](https://issues.apache.org/jira/browse/HBASE-17740) | Correct the semantic of batch and partial for async client |  Critical | asyncclient, Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17790](https://issues.apache.org/jira/browse/HBASE-17790) | Mark ReplicationAdmin's peerAdded and listReplicationPeers as Deprecated |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15314](https://issues.apache.org/jira/browse/HBASE-15314) | Allow more than one backing file in bucketcache |  Major | BucketCache | stack | chunhui shen |
| [HBASE-17691](https://issues.apache.org/jira/browse/HBASE-17691) | Add ScanMetrics support for async scan |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17794](https://issues.apache.org/jira/browse/HBASE-17794) | Remove lingering "violation" in favor of the accurate "snapshot" |  Trivial | . | Josh Elser | Josh Elser |
| [HBASE-17003](https://issues.apache.org/jira/browse/HBASE-17003) | Update book for filesystem use quotas |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-17447](https://issues.apache.org/jira/browse/HBASE-17447) | Automatically delete quota when table is deleted |  Major | . | Josh Elser | Josh Elser |
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
| [HBASE-17955](https://issues.apache.org/jira/browse/HBASE-17955) | Commit Reviewboard comments from Vlad |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17976](https://issues.apache.org/jira/browse/HBASE-17976) | Remove stability annotation from public audience-marked classes |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17263](https://issues.apache.org/jira/browse/HBASE-17263) |   Netty based rpc server impl |  Major | Performance, rpc | binlijin | binlijin |
| [HBASE-17867](https://issues.apache.org/jira/browse/HBASE-17867) | Implement async procedure RPC API(list/exec/abort/isFinished) |  Major | Client | Zheng Hu | Zheng Hu |
| [HBASE-17981](https://issues.apache.org/jira/browse/HBASE-17981) | Roll list\_quota\_violations into list\_quota\_snapshots |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17978](https://issues.apache.org/jira/browse/HBASE-17978) | Investigate hbase superuser permissions in the face of quota violation |  Major | . | Josh Elser | Josh Elser |
| [HBASE-17667](https://issues.apache.org/jira/browse/HBASE-17667) | Implement  async  flush/compact region methods |  Major | Admin, asyncclient, Client | Zheng Hu | Zheng Hu |
| [HBASE-17977](https://issues.apache.org/jira/browse/HBASE-17977) | Enabled Master observer to delete quotas on table deletion by default |  Major | . | Josh Elser | Josh Elser |
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
| [HBASE-18091](https://issues.apache.org/jira/browse/HBASE-18091) | Add API for who currently holds a lock on namespace/ table/ region and log when state is LOCK\_EVENT\_WAIT |  Major | proc-v2 | Umesh Agashe | Umesh Agashe |
| [HBASE-17066](https://issues.apache.org/jira/browse/HBASE-17066) | Procedure v2 - Add handling of merge region transition to the new AM |  Major | proc-v2, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-18114](https://issues.apache.org/jira/browse/HBASE-18114) | Update the config of TestAsync\*AdminApi to make test stable |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18115](https://issues.apache.org/jira/browse/HBASE-18115) | Move SaslServer creation to HBaseSaslRpcServer |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-16261](https://issues.apache.org/jira/browse/HBASE-16261) |  MultiHFileOutputFormat Enhancement |  Major | mapreduce | Yi Liang | Yi Liang |
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
| [HBASE-17008](https://issues.apache.org/jira/browse/HBASE-17008) | Examples to make AsyncClient go down easy |  Critical | asyncclient, Client | stack | Duo Zhang |
| [HBASE-18220](https://issues.apache.org/jira/browse/HBASE-18220) | Compaction scanners need not reopen storefile scanners while trying to switch over from pread to stream |  Major | Compaction | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18213](https://issues.apache.org/jira/browse/HBASE-18213) | Add documentation about the new async client |  Major | asyncclient, Client, documentation | Duo Zhang | Duo Zhang |
| [HBASE-18104](https://issues.apache.org/jira/browse/HBASE-18104) | [AMv2] Enable aggregation of RPCs (assigns/unassigns, etc.) |  Major | Region Assignment | stack | Umesh Agashe |
| [HBASE-16242](https://issues.apache.org/jira/browse/HBASE-16242) | Upgrade Avro to 1.7.7 |  Major | dependencies | Ben McCann | Sean Busbey |
| [HBASE-18221](https://issues.apache.org/jira/browse/HBASE-18221) | Switch from pread to stream should happen under HStore's reentrant lock |  Major | Scanners | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18234](https://issues.apache.org/jira/browse/HBASE-18234) | Revisit the async admin api |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18272](https://issues.apache.org/jira/browse/HBASE-18272) | Fix issue about RSGroupBasedLoadBalancer#roundRobinAssignment where BOGUS\_SERVER\_NAME is involved in two groups |  Major | Balancer | chenxu | chenxu |
| [HBASE-14902](https://issues.apache.org/jira/browse/HBASE-14902) | Revert some of the stringency recently introduced by checkstyle tightening |  Major | . | stack | stack |
| [HBASE-18239](https://issues.apache.org/jira/browse/HBASE-18239) | Address ruby static analysis for shell module |  Major | . | Mike Drob | Mike Drob |
| [HBASE-18293](https://issues.apache.org/jira/browse/HBASE-18293) | Only add the spotbugs dependency when jdk8 is active |  Major | build | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18283](https://issues.apache.org/jira/browse/HBASE-18283) | Provide a construct method which accept a thread pool for AsyncAdmin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18264](https://issues.apache.org/jira/browse/HBASE-18264) | Update pom plugins |  Major | . | stack | Peter Somogyi |
| [HBASE-18314](https://issues.apache.org/jira/browse/HBASE-18314) | Eliminate the findbugs warnings for hbase-examples |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18297](https://issues.apache.org/jira/browse/HBASE-18297) | Provide a AsyncAdminBuilder to create new AsyncAdmin instance |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18240](https://issues.apache.org/jira/browse/HBASE-18240) | Add hbase-thirdparty, a project with hbase utility including an hbase-shaded-thirdparty module with guava, netty, etc. |  Major | dependencies, shading | stack | stack |
| [HBASE-17201](https://issues.apache.org/jira/browse/HBASE-17201) | Edit of HFileBlock comments and javadoc |  Major | documentation | stack | stack |
| [HBASE-18002](https://issues.apache.org/jira/browse/HBASE-18002) | Investigate why bucket cache filling up in file mode in an exisiting file  is slower |  Major | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18319](https://issues.apache.org/jira/browse/HBASE-18319) | Implement getClusterStatus/getRegionLoad/getCompactionState/getLastMajorCompactionTimestamp methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18317](https://issues.apache.org/jira/browse/HBASE-18317) | Implement async admin operations for Normalizer/CleanerChore/CatalogJanitor |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18316](https://issues.apache.org/jira/browse/HBASE-18316) | Implement async admin operations for draining region servers |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18318](https://issues.apache.org/jira/browse/HBASE-18318) | Implement updateConfiguration/stopMaster/stopRegionServer/shutdown methods |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18295](https://issues.apache.org/jira/browse/HBASE-18295) |  The result contains the cells across different rows |  Blocker | Scanners | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18268](https://issues.apache.org/jira/browse/HBASE-18268) | Eliminate the findbugs warnings for hbase-client |  Major | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18343](https://issues.apache.org/jira/browse/HBASE-18343) | Track the remaining unimplemented methods for async admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18365](https://issues.apache.org/jira/browse/HBASE-18365) | Eliminate the findbugs warnings for hbase-common |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17922](https://issues.apache.org/jira/browse/HBASE-17922) | TestRegionServerHostname always fails against hadoop 3.0.0-alpha2 |  Major | hadoop3 | Jonathan Hsieh | Mike Drob |
| [HBASE-18342](https://issues.apache.org/jira/browse/HBASE-18342) | Add coprocessor service support for async admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18229](https://issues.apache.org/jira/browse/HBASE-18229) | create new Async Split API to embrace AM v2 |  Critical | proc-v2 | Yi Liang | Yi Liang |
| [HBASE-18052](https://issues.apache.org/jira/browse/HBASE-18052) | Add document for async admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18308](https://issues.apache.org/jira/browse/HBASE-18308) | Eliminate the findbugs warnings for hbase-server |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17738](https://issues.apache.org/jira/browse/HBASE-17738) | BucketCache startup is slow |  Major | BucketCache | stack | ramkrishna.s.vasudevan |
| [HBASE-18420](https://issues.apache.org/jira/browse/HBASE-18420) | Some methods of Admin don't use ColumnFamilyDescriptor |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18419](https://issues.apache.org/jira/browse/HBASE-18419) | Update IntegrationTestIngestWithMOB and Actions to use ColumnFamily builders for modification |  Critical | integration tests | Mike Drob | Mike Drob |
| [HBASE-18428](https://issues.apache.org/jira/browse/HBASE-18428) | IntegrationTestDDLMasterFailover uses old-style immutable column descriptors |  Major | integration tests | Mike Drob | Mike Drob |
| [HBASE-18107](https://issues.apache.org/jira/browse/HBASE-18107) | [AMv2] Remove DispatchMergingRegionsRequest & DispatchMergingRegions |  Major | Region Assignment | stack | Yi Liang |
| [HBASE-18367](https://issues.apache.org/jira/browse/HBASE-18367) | Reduce ProcedureInfo usage |  Major | master, proc-v2 | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18231](https://issues.apache.org/jira/browse/HBASE-18231) | Deprecate and throw unsupported operation when Admin#closeRegion is called. |  Critical | Admin | stack | Appy |
| [HBASE-18102](https://issues.apache.org/jira/browse/HBASE-18102) | [SHELL] Purge close\_region command that allows by-pass of Master |  Major | Operability, shell | stack | Appy |
| [HBASE-18315](https://issues.apache.org/jira/browse/HBASE-18315) | Eliminate the findbugs warnings for hbase-rest |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18398](https://issues.apache.org/jira/browse/HBASE-18398) | Snapshot operation fails with FileNotFoundException |  Major | snapshots | Ashu Pachauri | Ashu Pachauri |
| [HBASE-18271](https://issues.apache.org/jira/browse/HBASE-18271) | Shade netty |  Blocker | rpc | stack | stack |
| [HBASE-18593](https://issues.apache.org/jira/browse/HBASE-18593) | Tell m2eclipse what to do w/ replacer plugin |  Trivial | build | stack | stack |
| [HBASE-18238](https://issues.apache.org/jira/browse/HBASE-18238) | Address ruby static analysis for bin directory |  Major | . | Mike Drob | Mike Drob |
| [HBASE-18424](https://issues.apache.org/jira/browse/HBASE-18424) | Fix TestAsyncTableGetMultiThreaded |  Major | test | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17994](https://issues.apache.org/jira/browse/HBASE-17994) | Add async client test to Performance Evaluation tool |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18553](https://issues.apache.org/jira/browse/HBASE-18553) | Expose scan cursor for asynchronous scanner |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-18595](https://issues.apache.org/jira/browse/HBASE-18595) | Set version in branch-2 from 2.0.0-alpha2-SNAPSHOT to 2.0.0-alpha2 |  Major | . | stack | stack |
| [HBASE-18608](https://issues.apache.org/jira/browse/HBASE-18608) | AsyncConnection should return AsyncAdmin interface instead of the implemenation |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18489](https://issues.apache.org/jira/browse/HBASE-18489) | Expose scan cursor in RawScanResultConsumer |  Major | asyncclient, Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-18103](https://issues.apache.org/jira/browse/HBASE-18103) | [AMv2] If Master gives OPEN to another, if original eventually succeeds, Master will kill it |  Critical | master, proc-v2 | stack | Umesh Agashe |
| [HBASE-18503](https://issues.apache.org/jira/browse/HBASE-18503) | Change \*\*\*Util and Master to use TableDescriptor and ColumnFamilyDescriptor |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18347](https://issues.apache.org/jira/browse/HBASE-18347) | Implement a BufferedMutator for async client |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18658](https://issues.apache.org/jira/browse/HBASE-18658) | Purge hokey hbase Service implementation; use (internal) Guava Service instead |  Major | . | stack | stack |
| [HBASE-18656](https://issues.apache.org/jira/browse/HBASE-18656) | Address issues found by error-prone in hbase-common |  Major | build | Mike Drob | Mike Drob |
| [HBASE-18448](https://issues.apache.org/jira/browse/HBASE-18448) | EndPoint example  for refreshing HFiles for stores |  Minor | Coprocessors | Ajay Jadhav | Ajay Jadhav |
| [HBASE-18687](https://issues.apache.org/jira/browse/HBASE-18687) | Add @since 2.0.0 to new classes |  Major | API | stack | stack |
| [HBASE-16324](https://issues.apache.org/jira/browse/HBASE-16324) | Remove LegacyScanQueryMatcher |  Critical | Compaction, regionserver | Duo Zhang | Duo Zhang |
| [HBASE-18688](https://issues.apache.org/jira/browse/HBASE-18688) | Upgrade commons-codec to 1.10 |  Major | dependencies | Appy | Appy |
| [HBASE-18691](https://issues.apache.org/jira/browse/HBASE-18691) | [compat 1-2] HCD remove and removeConfiguration change return type |  Major | API | stack | Chia-Ping Tsai |
| [HBASE-18692](https://issues.apache.org/jira/browse/HBASE-18692) | [compat 1-2] ByteBufferUtils.copyFromBufferToBuffer goes from void to int |  Major | API | stack | stack |
| [HBASE-18698](https://issues.apache.org/jira/browse/HBASE-18698) | MapreduceDependencyClasspathTool does not include hbase-server as a dependency |  Major | mapreduce | Duo Zhang | stack |
| [HBASE-18700](https://issues.apache.org/jira/browse/HBASE-18700) | Document the new changes on mapreduce stuffs |  Major | mapreduce | Duo Zhang | stack |
| [HBASE-18721](https://issues.apache.org/jira/browse/HBASE-18721) | Cleanup unused configs and private declaration |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18739](https://issues.apache.org/jira/browse/HBASE-18739) | Make all TimeRange Constructors InterfaceAudience Private. |  Major | API | stack | stack |
| [HBASE-18749](https://issues.apache.org/jira/browse/HBASE-18749) | Apply the CF specific TimeRange from Scan to filter the segment scanner |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18697](https://issues.apache.org/jira/browse/HBASE-18697) | Need a shaded hbase-mapreduce module |  Major | mapreduce | Duo Zhang | Appy |
| [HBASE-14997](https://issues.apache.org/jira/browse/HBASE-14997) | Move compareOp and Comparators out of filter to client package |  Critical | . | Enis Soztutar | stack |
| [HBASE-18769](https://issues.apache.org/jira/browse/HBASE-18769) | Make CompareFilter use generic CompareOperator instead of internal enum |  Major | . | stack | stack |
| [HBASE-18779](https://issues.apache.org/jira/browse/HBASE-18779) | Move CompareOperator to hbase-client module |  Critical | . | stack | stack |
| [HBASE-18750](https://issues.apache.org/jira/browse/HBASE-18750) | Cleanup the docs saying "HTable use write buffer" |  Minor | documentation | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18718](https://issues.apache.org/jira/browse/HBASE-18718) | Document the coprocessor.Export |  Major | Coprocessors, documentation, tooling | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-14998](https://issues.apache.org/jira/browse/HBASE-14998) | Unify synchronous and asynchronous methods in Admin and cleanup |  Blocker | . | Enis Soztutar | Balazs Meszaros |
| [HBASE-18819](https://issues.apache.org/jira/browse/HBASE-18819) | Set version number to 2.0.0-alpha3 from 2.0.0-alpha3-SNAPSHOT |  Major | . | stack | stack |
| [HBASE-18820](https://issues.apache.org/jira/browse/HBASE-18820) | assembly is missing hbase-replication |  Major | build | stack | stack |
| [HBASE-18821](https://issues.apache.org/jira/browse/HBASE-18821) | Enforcer plugin NPEs again when generating site |  Major | website | stack | stack |
| [HBASE-17980](https://issues.apache.org/jira/browse/HBASE-17980) | Any HRegionInfo we give out should be immutable |  Major | . | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-18823](https://issues.apache.org/jira/browse/HBASE-18823) | Apply RegionInfo to MasterObserver/RegionObserver/WALObserver |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18786](https://issues.apache.org/jira/browse/HBASE-18786) | FileNotFoundException should not be silently handled for primary region replicas |  Major | regionserver, Scanners | Ashu Pachauri | Andrew Purtell |
| [HBASE-18807](https://issues.apache.org/jira/browse/HBASE-18807) | Remove PB references from Observers for Quotas |  Major | . | Josh Elser | Josh Elser |
| [HBASE-18010](https://issues.apache.org/jira/browse/HBASE-18010) | Connect CellChunkMap to be used for flattening in CompactingMemStore |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-18753](https://issues.apache.org/jira/browse/HBASE-18753) | Introduce the unsynchronized TimeRangeTracker |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18105](https://issues.apache.org/jira/browse/HBASE-18105) | [AMv2] Split/Merge need cleanup; currently they diverge and do not fully embrace AMv2 world |  Major | Region Assignment | stack | Yi Liang |
| [HBASE-18815](https://issues.apache.org/jira/browse/HBASE-18815) | We need to pass something like CompactionRequest in CP to give user some information about the compaction |  Major | Coprocessors | Duo Zhang | Peter Somogyi |
| [HBASE-18933](https://issues.apache.org/jira/browse/HBASE-18933) | set version number to 2.0.0-alpha4-SNAPSHOT following release of alpha3 |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-18931](https://issues.apache.org/jira/browse/HBASE-18931) | Make ObserverContext an interface and remove private/testing methods |  Major | Coprocessors | Appy | Appy |
| [HBASE-18909](https://issues.apache.org/jira/browse/HBASE-18909) | Deprecate Admin's methods which used String regex |  Major | Admin | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18752](https://issues.apache.org/jira/browse/HBASE-18752) | Recalculate the TimeRange in flushing snapshot to store file |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18949](https://issues.apache.org/jira/browse/HBASE-18949) | Remove the CompactionRequest parameter in preCompactSelection |  Major | Coprocessors | Duo Zhang | Peter Somogyi |
| [HBASE-18957](https://issues.apache.org/jira/browse/HBASE-18957) | add test that confirms 2 FamilyFilters in a FilterList using MUST\_PASS\_ONE operator will return results that match either of the FamilyFilters and revert as needed to make it pass. |  Critical | Filters | Sean Busbey | Peter Somogyi |
| [HBASE-17678](https://issues.apache.org/jira/browse/HBASE-17678) | FilterList with MUST\_PASS\_ONE may lead to redundant cells returned |  Major | Filters | Jason Tokayer | Zheng Hu |
| [HBASE-18160](https://issues.apache.org/jira/browse/HBASE-18160) | Fix incorrect  logic in FilterList.filterKeyValue |  Major | Filters | Zheng Hu | Zheng Hu |
| [HBASE-18951](https://issues.apache.org/jira/browse/HBASE-18951) | Use Builder pattern to remove nullable parameters for checkAndXXX methods in RawAsyncTable/AsyncTable interface |  Blocker | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18980](https://issues.apache.org/jira/browse/HBASE-18980) | Address issues found by error-prone in hbase-hadoop2-compat |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-18981](https://issues.apache.org/jira/browse/HBASE-18981) | Address issues found by error-prone in hbase-client |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-18867](https://issues.apache.org/jira/browse/HBASE-18867) | maven enforcer plugin needs update to work with jdk9 |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-18108](https://issues.apache.org/jira/browse/HBASE-18108) | Procedure WALs are archived but not cleaned; fix |  Blocker | proc-v2 | stack | Peter Somogyi |
| [HBASE-18411](https://issues.apache.org/jira/browse/HBASE-18411) | Dividing FiterList  into two separate sub-classes:  FilterListWithOR , FilterListWithAND |  Major | Filters | Zheng Hu | Zheng Hu |
| [HBASE-18747](https://issues.apache.org/jira/browse/HBASE-18747) | Introduce new example and helper classes to tell CP users how to do filtering on scanners |  Critical | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-18966](https://issues.apache.org/jira/browse/HBASE-18966) | Use non-sync TimeRangeTracker as a replacement for TimeRange in ImmutableSegment |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18954](https://issues.apache.org/jira/browse/HBASE-18954) | Make \*CoprocessorHost classes private |  Major | Coprocessors | Appy | Appy |
| [HBASE-18914](https://issues.apache.org/jira/browse/HBASE-18914) | Remove AsyncAdmin's methods which were already deprecated in Admin interface |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18960](https://issues.apache.org/jira/browse/HBASE-18960) | A few bug fixes and minor improvements around batchMutate() |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-18945](https://issues.apache.org/jira/browse/HBASE-18945) | Make a IA.LimitedPrivate interface for CellComparator |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18977](https://issues.apache.org/jira/browse/HBASE-18977) | Reenable test of filterlist using MUST\_PASS\_ONE and two familyfilters |  Blocker | Filters | Sean Busbey | Zheng Hu |
| [HBASE-19045](https://issues.apache.org/jira/browse/HBASE-19045) | Deprecate RegionObserver#postInstantiateDeleteTracker |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19010](https://issues.apache.org/jira/browse/HBASE-19010) | Reimplement getMasterInfoPort for Admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18873](https://issues.apache.org/jira/browse/HBASE-18873) | Hide protobufs in GlobalQuotaSettings |  Critical | . | Josh Elser | Josh Elser |
| [HBASE-19069](https://issues.apache.org/jira/browse/HBASE-19069) | Do not wrap the original CompactionLifeCycleTracker when calling CP hooks |  Blocker | Compaction, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19053](https://issues.apache.org/jira/browse/HBASE-19053) | Split out o.a.h.h.http from hbase-server into a separate module |  Major | . | Appy | Appy |
| [HBASE-18754](https://issues.apache.org/jira/browse/HBASE-18754) | Get rid of Writable from TimeRangeTracker |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19070](https://issues.apache.org/jira/browse/HBASE-19070) | temporarily make the mvnsite nightly test non-voting. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19074](https://issues.apache.org/jira/browse/HBASE-19074) | Miscellaneous Observer cleanups |  Major | Coprocessors | stack | stack |
| [HBASE-19057](https://issues.apache.org/jira/browse/HBASE-19057) | Fix other code review comments about FilterList Improvement |  Blocker | Filters | Zheng Hu | Zheng Hu |
| [HBASE-19029](https://issues.apache.org/jira/browse/HBASE-19029) | Align RPC timout methods in Table and AsyncTableBase |  Critical | asyncclient, Client | Peter Somogyi | Peter Somogyi |
| [HBASE-19048](https://issues.apache.org/jira/browse/HBASE-19048) | Cleanup MasterObserver hooks which takes IA private params |  Major | Coprocessors | Anoop Sam John | stack |
| [HBASE-19090](https://issues.apache.org/jira/browse/HBASE-19090) | Add config 'hbase.systemtables.compacting.memstore.type' to hbase-default.xml |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18906](https://issues.apache.org/jira/browse/HBASE-18906) | Provide Region#waitForFlushes API |  Critical | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-18995](https://issues.apache.org/jira/browse/HBASE-18995) | Move methods that are for internal usage from CellUtil to Private util class |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19031](https://issues.apache.org/jira/browse/HBASE-19031) | Align exist method in Table and AsyncTable interfaces |  Critical | asyncclient, Client | Peter Somogyi | Peter Somogyi |
| [HBASE-19136](https://issues.apache.org/jira/browse/HBASE-19136) | Set branch-2 version to 2.0.0-alpha4 from 2.0.0-alpha4-SNAPSHOT |  Major | . | stack | stack |
| [HBASE-18375](https://issues.apache.org/jira/browse/HBASE-18375) | The pool chunks from ChunkCreator are deallocated while in pool because there is no reference to them |  Critical | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-18770](https://issues.apache.org/jira/browse/HBASE-18770) | Remove bypass method in ObserverContext and implement the 'bypass' logic case by case |  Critical | Coprocessors | Duo Zhang | stack |
| [HBASE-19141](https://issues.apache.org/jira/browse/HBASE-19141) |  [compat 1-2] getClusterStatus always return empty ClusterStatus |  Critical | API | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18972](https://issues.apache.org/jira/browse/HBASE-18972) | Use Builder pattern to remove nullable parameters for coprocessor methods in RawAsyncTable interface |  Blocker | Client | Duo Zhang | Duo Zhang |
| [HBASE-19152](https://issues.apache.org/jira/browse/HBASE-19152) | Update refguide 'how to build an RC' and the make\_rc.sh script |  Trivial | build | stack | stack |
| [HBASE-19095](https://issues.apache.org/jira/browse/HBASE-19095) | Add CP hooks in RegionObserver for in memory compaction |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19131](https://issues.apache.org/jira/browse/HBASE-19131) | Add the ClusterStatus hook and cleanup other hooks which can be replaced by ClusterStatus hook |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18950](https://issues.apache.org/jira/browse/HBASE-18950) | Remove Optional parameters in AsyncAdmin interface |  Blocker | Client | Duo Zhang | Guanghao Zhang |
| [HBASE-19197](https://issues.apache.org/jira/browse/HBASE-19197) | Move version on branch-2 from 2.0.0-alpha4 to 2.0.0-beta-1.SNAPSHOT |  Major | . | stack | stack |
| [HBASE-18961](https://issues.apache.org/jira/browse/HBASE-18961) | doMiniBatchMutate() is big, split it into smaller methods |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-19203](https://issues.apache.org/jira/browse/HBASE-19203) | Update Hadoop version used for build to 2.7.4 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18624](https://issues.apache.org/jira/browse/HBASE-18624) | Added support for clearing BlockCache based on table name |  Major | . | Ajay Jadhav | Zach York |
| [HBASE-19002](https://issues.apache.org/jira/browse/HBASE-19002) | Introduce more examples to show how to intercept normal region operations |  Minor | Coprocessors | Duo Zhang | Josh Elser |
| [HBASE-19220](https://issues.apache.org/jira/browse/HBASE-19220) | Async tests time out talking to zk; 'clusterid came back null' |  Major | test | stack | stack |
| [HBASE-19127](https://issues.apache.org/jira/browse/HBASE-19127) | Set State.SPLITTING, MERGING, MERGING\_NEW, SPLITTING\_NEW properly in RegionStatesNode |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18962](https://issues.apache.org/jira/browse/HBASE-18962) | Support atomic BatchOperations through batchMutate() |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-18423](https://issues.apache.org/jira/browse/HBASE-18423) | Fix TestMetaWithReplicas |  Major | test | Vladimir Rodionov | stack |
| [HBASE-19243](https://issues.apache.org/jira/browse/HBASE-19243) | Start mini cluster once before class for TestFIFOCompactionPolicy |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19235](https://issues.apache.org/jira/browse/HBASE-19235) | CoprocessorEnvironment should be exposed to CPs |  Minor | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19278](https://issues.apache.org/jira/browse/HBASE-19278) | Reenable cleanup in test teardown in TestAccessController3 disabled by HBASE-14614 |  Major | Region Assignment | stack | stack |
| [HBASE-19270](https://issues.apache.org/jira/browse/HBASE-19270) | Reenable TestRegionMergeTransactionOnCluster#testMergeWithReplicas disable by HBASE-14614 |  Major | Region Assignment | stack | stack |
| [HBASE-18964](https://issues.apache.org/jira/browse/HBASE-18964) | Deprecate RowProcessor and processRowsWithLocks() APIs that take RowProcessor as an argument |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-19009](https://issues.apache.org/jira/browse/HBASE-19009) | implement modifyTable and enable/disableTableReplication for AsyncAdmin |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19268](https://issues.apache.org/jira/browse/HBASE-19268) | Enable Replica tests that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | stack | stack |
| [HBASE-18911](https://issues.apache.org/jira/browse/HBASE-18911) | Unify Admin and AsyncAdmin's methods name |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19276](https://issues.apache.org/jira/browse/HBASE-19276) | RegionPlan should correctly implement equals and hashCode |  Major | . | Andrew Purtell | stack |
| [HBASE-19269](https://issues.apache.org/jira/browse/HBASE-19269) | Reenable TestShellRSGroups |  Major | test | stack | Guangxu Cheng |
| [HBASE-19313](https://issues.apache.org/jira/browse/HBASE-19313) | Call blockUntilConnected when constructing ZKAsyncRegistry(temporary workaround) |  Major | asyncclient, Client, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-19122](https://issues.apache.org/jira/browse/HBASE-19122) | preCompact and preFlush can bypass by returning null scanner; shut it down |  Critical | Coprocessors, Scanners | stack | stack |
| [HBASE-19242](https://issues.apache.org/jira/browse/HBASE-19242) | Add MOB compact support for AsyncAdmin |  Blocker | Admin, mob | Duo Zhang | Balazs Meszaros |
| [HBASE-17049](https://issues.apache.org/jira/browse/HBASE-17049) | Do not issue sync request when there are still entries in ringbuffer |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-19096](https://issues.apache.org/jira/browse/HBASE-19096) | Add RowMutions batch support in AsyncTable |  Major | . | Jerry He | Jerry He |
| [HBASE-19362](https://issues.apache.org/jira/browse/HBASE-19362) | Remove unused imports from hbase-thrift module |  Minor | Thrift | Jan Hentschel | Guangxu Cheng |
| [HBASE-19346](https://issues.apache.org/jira/browse/HBASE-19346) | Use EventLoopGroup to create AsyncFSOutput |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19344](https://issues.apache.org/jira/browse/HBASE-19344) | improve asyncWAL by using Independent thread for netty #IO in FanOutOneBlockAsyncDFSOutput |  Major | wal | Chance Li | Duo Zhang |
| [HBASE-19399](https://issues.apache.org/jira/browse/HBASE-19399) | Purge curator dependency from hbase-client |  Major | Client, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-19426](https://issues.apache.org/jira/browse/HBASE-19426) | Move has() and setTimestamp() to Mutation |  Major | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18112](https://issues.apache.org/jira/browse/HBASE-18112) | Write RequestTooBigException back to client for NettyRpcServer |  Major | IPC/RPC | Duo Zhang | Toshihiro Suzuki |
| [HBASE-19295](https://issues.apache.org/jira/browse/HBASE-19295) | The Configuration returned by CPEnv should be read-only. |  Major | Coprocessors | stack | stack |
| [HBASE-19430](https://issues.apache.org/jira/browse/HBASE-19430) | Remove the SettableTimestamp and SettableSequenceId |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19439](https://issues.apache.org/jira/browse/HBASE-19439) | Mark ShortCircuitMasterConnection  with InterfaceAudience Private |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-19301](https://issues.apache.org/jira/browse/HBASE-19301) | Provide way for CPs to create short circuited connection with custom configurations |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19360](https://issues.apache.org/jira/browse/HBASE-19360) | Remove unused imports from hbase-zookeeper module |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-19373](https://issues.apache.org/jira/browse/HBASE-19373) | Fix Checkstyle error in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19375](https://issues.apache.org/jira/browse/HBASE-19375) | Fix import order in hbase-thrift |  Trivial | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-16890](https://issues.apache.org/jira/browse/HBASE-16890) | Analyze the performance of AsyncWAL and fix the same |  Blocker | wal | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19427](https://issues.apache.org/jira/browse/HBASE-19427) | Add TimeRange support into Append to optimize for counters |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19213](https://issues.apache.org/jira/browse/HBASE-19213) | Align check and mutate operations in Table and AsyncTable |  Minor | API | Peter Somogyi | Peter Somogyi |
| [HBASE-19000](https://issues.apache.org/jira/browse/HBASE-19000) | Group multiple block cache clear requests per server |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-19462](https://issues.apache.org/jira/browse/HBASE-19462) | Deprecate all addImmutable methods in Put |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19505](https://issues.apache.org/jira/browse/HBASE-19505) | Disable ByteBufferPool by default at HM |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15536](https://issues.apache.org/jira/browse/HBASE-15536) | Make AsyncFSWAL as our default WAL |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-19272](https://issues.apache.org/jira/browse/HBASE-19272) | Deal with HBCK tests disabled by HBASE-14614 AMv2 when HBCK works again... |  Major | hbck | stack | stack |
| [HBASE-19498](https://issues.apache.org/jira/browse/HBASE-19498) | Fix findbugs and error-prone warnings in hbase-client (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19497](https://issues.apache.org/jira/browse/HBASE-19497) | Fix findbugs and error-prone warnings in hbase-common (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19479](https://issues.apache.org/jira/browse/HBASE-19479) | Fix Checkstyle error in hbase-shell |  Trivial | shell | Jan Hentschel | Jan Hentschel |
| [HBASE-19474](https://issues.apache.org/jira/browse/HBASE-19474) | Bring down number of Checkstyle errors in hbase-zookeeper |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-19112](https://issues.apache.org/jira/browse/HBASE-19112) | Suspect methods on Cell to be deprecated |  Blocker | Client | Josh Elser | ramkrishna.s.vasudevan |
| [HBASE-18440](https://issues.apache.org/jira/browse/HBASE-18440) | ITs and Actions modify immutable TableDescriptors |  Major | integration tests | Mike Drob | Guanghao Zhang |
| [HBASE-19539](https://issues.apache.org/jira/browse/HBASE-19539) | Remove unnecessary semicolons in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19538](https://issues.apache.org/jira/browse/HBASE-19538) | Remove unnecessary semicolons in hbase-client |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19481](https://issues.apache.org/jira/browse/HBASE-19481) | Enable Checkstyle in hbase-error-prone |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19480](https://issues.apache.org/jira/browse/HBASE-19480) | Enable Checkstyle in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19494](https://issues.apache.org/jira/browse/HBASE-19494) | Create simple WALKey filter that can be plugged in on the Replication Sink |  Major | Replication | stack | stack |
| [HBASE-19556](https://issues.apache.org/jira/browse/HBASE-19556) | Remove TestAssignmentManager#testGoodSplit, which no longer make sense |  Minor | . | Yi Liang | Yi Liang |
| [HBASE-19468](https://issues.apache.org/jira/browse/HBASE-19468) | FNFE during scans and flushes |  Critical | regionserver, Scanners | Thiruvel Thirumoolan | ramkrishna.s.vasudevan |
| [HBASE-19567](https://issues.apache.org/jira/browse/HBASE-19567) | ClassNotFoundException: org.apache.hadoop.hbase.KeyValue$RawBytesComparator starting 2.0.0 over a 0.98.25 data. |  Major | HFile | stack | stack |
| [HBASE-19566](https://issues.apache.org/jira/browse/HBASE-19566) | Fix Checkstyle errors in hbase-client-project |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19575](https://issues.apache.org/jira/browse/HBASE-19575) | add copy constructor to Mutation |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-10092](https://issues.apache.org/jira/browse/HBASE-10092) | Move to slf4j |  Critical | . | stack | Balazs Meszaros |
| [HBASE-19591](https://issues.apache.org/jira/browse/HBASE-19591) | Cleanup the usage of ReplicationAdmin from hbase-shell |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19502](https://issues.apache.org/jira/browse/HBASE-19502) | Make sure we have closed all StoreFileScanners if we fail to open any StoreFileScanners |  Major | regionserver, Scanners | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19602](https://issues.apache.org/jira/browse/HBASE-19602) | Cleanup the usage of ReplicationAdmin from document |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19605](https://issues.apache.org/jira/browse/HBASE-19605) | Fix Checkstyle errors in hbase-metrics-api |  Minor | metrics | Jan Hentschel | Jan Hentschel |
| [HBASE-19629](https://issues.apache.org/jira/browse/HBASE-19629) | RawCell#getTags should return the Iterator\<Tag\> in order to avoid iterating through whole tag array at once |  Major | . | Chia-Ping Tsai | ramkrishna.s.vasudevan |
| [HBASE-19628](https://issues.apache.org/jira/browse/HBASE-19628) | ByteBufferCell should extend ExtendedCell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19609](https://issues.apache.org/jira/browse/HBASE-19609) | Fix Checkstyle errors in hbase-metrics |  Minor | metrics | Jan Hentschel | Jan Hentschel |
| [HBASE-19648](https://issues.apache.org/jira/browse/HBASE-19648) | Move branch-2 version from 2.0.0-beta-1-SNAPSHOT to 2.0.0-beta-1 |  Major | . | stack | stack |
| [HBASE-19626](https://issues.apache.org/jira/browse/HBASE-19626) | Rename Cell.DataType to Cell.Type |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19653](https://issues.apache.org/jira/browse/HBASE-19653) | Reduce the default hbase.client.start.log.errors.counter |  Trivial | defaults | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19133](https://issues.apache.org/jira/browse/HBASE-19133) | Transfer big cells or upserted/appended cells into MSLAB upon flattening to CellChunkMap |  Major | . | Anastasia Braginsky | Gali Sheffi |
| [HBASE-19660](https://issues.apache.org/jira/browse/HBASE-19660) | Up default retries from 10 to 15 and blocking store files limit from 10 to 16 |  Major | . | stack | stack |
| [HBASE-19282](https://issues.apache.org/jira/browse/HBASE-19282) | CellChunkMap Benchmarking and User Interface |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-19428](https://issues.apache.org/jira/browse/HBASE-19428) | Deprecate the compareTo(Row) |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19670](https://issues.apache.org/jira/browse/HBASE-19670) | Workaround: Purge User API building from branch-2 so can make a beta-1 |  Major | website | stack | stack |
| [HBASE-19667](https://issues.apache.org/jira/browse/HBASE-19667) | Get rid of MasterEnvironment#supportGroupCPs |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19581](https://issues.apache.org/jira/browse/HBASE-19581) | Fix Checkstyle error in hbase-external-blockcache |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19604](https://issues.apache.org/jira/browse/HBASE-19604) | Fix Checkstyle errors in hbase-protocol-shaded |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19731](https://issues.apache.org/jira/browse/HBASE-19731) | TestFromClientSide#testCheckAndDeleteWithCompareOp and testNullQualifier are flakey |  Critical | test | stack | Duo Zhang |
| [HBASE-19743](https://issues.apache.org/jira/browse/HBASE-19743) | Disable TestMemstoreLABWithoutPool |  Major | test | stack | stack |
| [HBASE-19746](https://issues.apache.org/jira/browse/HBASE-19746) | Add default impl to Cell#getType |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19787](https://issues.apache.org/jira/browse/HBASE-19787) | Fix or disable tests broken in branch-2 so can cut beta-1 |  Critical | . | stack | stack |
| [HBASE-19772](https://issues.apache.org/jira/browse/HBASE-19772) | Do not close connection to zk when there are still pending request in ReadOnlyZKClient |  Major | Zookeeper | stack | Duo Zhang |
| [HBASE-19795](https://issues.apache.org/jira/browse/HBASE-19795) | Move the tests which only need zookeeper in TestZooKeeper to hbase-zookeeper module |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19793](https://issues.apache.org/jira/browse/HBASE-19793) | Minor improvements on Master/RS startup |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19809](https://issues.apache.org/jira/browse/HBASE-19809) | Fix findbugs and error-prone warnings in hbase-procedure (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19810](https://issues.apache.org/jira/browse/HBASE-19810) | Fix findbugs and error-prone warnings in hbase-metrics (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19527](https://issues.apache.org/jira/browse/HBASE-19527) | Make ExecutorService threads daemon=true. |  Major | . | stack | stack |
| [HBASE-18963](https://issues.apache.org/jira/browse/HBASE-18963) | Remove MultiRowMutationProcessor and implement mutateRows... methods using batchMutate() |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-19827](https://issues.apache.org/jira/browse/HBASE-19827) | Addendum for Flakey TestAssignmentManager |  Major | flakey, test | stack | stack |
| [HBASE-19847](https://issues.apache.org/jira/browse/HBASE-19847) | Fix findbugs and error-prone warnings in hbase-thrift (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19845](https://issues.apache.org/jira/browse/HBASE-19845) | Fix findbugs and error-prone warnings in hbase-rsgroup (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19846](https://issues.apache.org/jira/browse/HBASE-19846) | Fix findbugs and error-prone warnings in hbase-rest (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19862](https://issues.apache.org/jira/browse/HBASE-19862) | Fix TestTokenAuthentication - fake RegionCoprocessorEnvironment is not of type HasRegionServerServices |  Major | . | Appy | Appy |
| [HBASE-19867](https://issues.apache.org/jira/browse/HBASE-19867) | Split TestStochasticLoadBalancer into several small tests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19879](https://issues.apache.org/jira/browse/HBASE-19879) | Promote TestAcidGuaranteesXXX to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19880](https://issues.apache.org/jira/browse/HBASE-19880) | Promote TestFuzzyRowFilterEndToEnd to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19881](https://issues.apache.org/jira/browse/HBASE-19881) | Promote TestRegionReplicaReplicationEndpoint to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19870](https://issues.apache.org/jira/browse/HBASE-19870) | Fix the NPE in ReadOnlyZKClient#run |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19877](https://issues.apache.org/jira/browse/HBASE-19877) | hbase-common and hbase-zookeeper don't add the log4j.properties to the resource path for testing |  Critical | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19882](https://issues.apache.org/jira/browse/HBASE-19882) | Promote TestProcedureManager to MediumTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19866](https://issues.apache.org/jira/browse/HBASE-19866) | TestRegionServerReportForDuty doesn't timeout |  Major | rpc | Appy | Duo Zhang |
| [HBASE-19885](https://issues.apache.org/jira/browse/HBASE-19885) | Promote TestAssignmentManager to LargeTests |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19811](https://issues.apache.org/jira/browse/HBASE-19811) | Fix findbugs and error-prone warnings in hbase-server (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19891](https://issues.apache.org/jira/browse/HBASE-19891) | Up nightly test run timeout from 6 hours to 8 |  Major | . | stack | stack |
| [HBASE-19887](https://issues.apache.org/jira/browse/HBASE-19887) | Do not overwrite the surefire junit listener property in the pom of sub modules |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19911](https://issues.apache.org/jira/browse/HBASE-19911) | Convert some tests from small to medium because they are timing out: TestNettyRpcServer, TestClientClusterStatus, TestCheckTestClasses |  Major | . | stack | stack |
| [HBASE-19839](https://issues.apache.org/jira/browse/HBASE-19839) | Flakey TestMergeTableRegionsProcedure & TestSplitTableRegionProcedure |  Major | flakey, test | stack | Umesh Agashe |
| [HBASE-19913](https://issues.apache.org/jira/browse/HBASE-19913) | Split TestStochasticLoadBalancer2 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19895](https://issues.apache.org/jira/browse/HBASE-19895) | Add keepDeletedCells option in ScanOptions for customizing scanInfo in pre-hooks |  Major | Coprocessors | Ankit Singhal | Ankit Singhal |
| [HBASE-19896](https://issues.apache.org/jira/browse/HBASE-19896) | Fix ScanInfo.customize() to update only the requested options |  Major | Coprocessors | Ankit Singhal | Ankit Singhal |
| [HBASE-19918](https://issues.apache.org/jira/browse/HBASE-19918) | Promote TestAsyncClusterAdminApi to LargeTests |  Major | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19928](https://issues.apache.org/jira/browse/HBASE-19928) | TestVisibilityLabelsOnNewVersionBehaviorTable fails |  Major | test | stack | stack |
| [HBASE-19909](https://issues.apache.org/jira/browse/HBASE-19909) | TestRegionLocationFinder Timeout |  Major | . | stack | stack |
| [HBASE-19908](https://issues.apache.org/jira/browse/HBASE-19908) | TestCoprocessorShortCircuitRPC Timeout.... |  Major | . | stack | stack |
| [HBASE-19868](https://issues.apache.org/jira/browse/HBASE-19868) | TestCoprocessorWhitelistMasterObserver is flakey |  Major | flakey, test | Peter Somogyi | Peter Somogyi |
| [HBASE-19914](https://issues.apache.org/jira/browse/HBASE-19914) | Refactor TestVisibilityLabelsOnNewVersionBehaviorTable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19916](https://issues.apache.org/jira/browse/HBASE-19916) | TestCacheOnWrite Times Out |  Major | . | stack | stack |
| [HBASE-19910](https://issues.apache.org/jira/browse/HBASE-19910) | TestBucketCache TimesOut |  Major | . | stack | stack |
| [HBASE-19803](https://issues.apache.org/jira/browse/HBASE-19803) | False positive for the HBASE-Find-Flaky-Tests job |  Major | . | Duo Zhang |  |
| [HBASE-19837](https://issues.apache.org/jira/browse/HBASE-19837) | Flakey TestRegionLoad |  Major | flakey, test | stack | stack |
| [HBASE-19931](https://issues.apache.org/jira/browse/HBASE-19931) | TestMetaWithReplicas failing 100% of the time in testHBaseFsckWithMetaReplicas |  Major | . | stack | stack |
| [HBASE-19944](https://issues.apache.org/jira/browse/HBASE-19944) | Fix timeout TestVisibilityLabelsWithCustomVisLabService |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19841](https://issues.apache.org/jira/browse/HBASE-19841) | Tests against hadoop3 fail with StreamLacksCapabilityException |  Major | . | Ted Yu | Mike Drob |
| [HBASE-19927](https://issues.apache.org/jira/browse/HBASE-19927) | TestFullLogReconstruction flakey |  Major | wal | stack | Duo Zhang |
| [HBASE-19840](https://issues.apache.org/jira/browse/HBASE-19840) | Flakey TestMetaWithReplicas |  Major | flakey, test | stack | stack |
| [HBASE-19791](https://issues.apache.org/jira/browse/HBASE-19791) | TestZKAsyncRegistry hangs |  Critical | . | Duo Zhang | stack |
| [HBASE-19951](https://issues.apache.org/jira/browse/HBASE-19951) | Cleanup the explicit timeout value for test method |  Major | . | Duo Zhang | stack |
| [HBASE-19956](https://issues.apache.org/jira/browse/HBASE-19956) | Remove category as a consideration timing out tests; set all test to timeout at 10minutes regardless |  Major | . | stack | stack |
| [HBASE-19942](https://issues.apache.org/jira/browse/HBASE-19942) | Fix flaky TestSimpleRpcScheduler |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19960](https://issues.apache.org/jira/browse/HBASE-19960) | Doc test timeouts and test categories in hbase2 |  Major | . | stack | stack |
| [HBASE-19965](https://issues.apache.org/jira/browse/HBASE-19965) | Fix flaky TestAsyncRegionAdminApi |  Critical | . | Guanghao Zhang | stack |
| [HBASE-19116](https://issues.apache.org/jira/browse/HBASE-19116) | Currently the tail of hfiles with CellComparator\* classname makes it so hbase1 can't open hbase2 written hfiles; fix |  Critical | HFile, migration | stack | stack |
| [HBASE-20000](https://issues.apache.org/jira/browse/HBASE-20000) | Remove the quantum logic in FairQueue, always put high priority queue in front |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-19903](https://issues.apache.org/jira/browse/HBASE-19903) | Split TestShell so it will not time out |  Major | shell, test | Duo Zhang | Duo Zhang |
| [HBASE-20011](https://issues.apache.org/jira/browse/HBASE-20011) | Disable TestRestoreSnapshotFromClientWithRegionReplicas; it is flakey. Needs attention. |  Major | read replicas | stack | stack |
| [HBASE-19978](https://issues.apache.org/jira/browse/HBASE-19978) | The keepalive logic is incomplete in ProcedureExecutor |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20014](https://issues.apache.org/jira/browse/HBASE-20014) | TestAdmin1 Times out |  Major | . | stack | stack |
| [HBASE-20013](https://issues.apache.org/jira/browse/HBASE-20013) | TestZKPermissionWatcher is flakey |  Major | flakey | stack | stack |
| [HBASE-20015](https://issues.apache.org/jira/browse/HBASE-20015) | TestMergeTableRegionsProcedure and TestRegionMergeTransactionOnCluster flakey |  Major | flakey | stack | stack |
| [HBASE-20029](https://issues.apache.org/jira/browse/HBASE-20029) | @Ignore TestQuotaThrottle and TestReplicasClient#testCancelOfMultiGet |  Major | . | stack | stack |
| [HBASE-20021](https://issues.apache.org/jira/browse/HBASE-20021) | TestFromClientSideWithCoprocessor is flakey |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20039](https://issues.apache.org/jira/browse/HBASE-20039) | move testhbasetestingutility mr tests to hbase-mapreduce |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20035](https://issues.apache.org/jira/browse/HBASE-20035) | .TestQuotaStatusRPCs.testQuotaStatusFromMaster failed with NPEs and RuntimeExceptions |  Major | . | stack | Josh Elser |
| [HBASE-20041](https://issues.apache.org/jira/browse/HBASE-20041) | cannot start mini mapreduce cluster for ITs |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20038](https://issues.apache.org/jira/browse/HBASE-20038) | TestLockProcedure.testTimeout is flakey |  Major | proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-19554](https://issues.apache.org/jira/browse/HBASE-19554) | AbstractTestDLS.testThreeRSAbort sometimes fails in pre commit |  Major | Recovery, wal | Duo Zhang | Duo Zhang |
| [HBASE-20044](https://issues.apache.org/jira/browse/HBASE-20044) | TestClientClusterStatus is flakey |  Major | flakey | stack | stack |
| [HBASE-20048](https://issues.apache.org/jira/browse/HBASE-20048) | Revert serial replication feature |  Blocker | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20019](https://issues.apache.org/jira/browse/HBASE-20019) | Document the ColumnValueFilter |  Minor | documentation | Chia-Ping Tsai | Reid Chan |
| [HBASE-20083](https://issues.apache.org/jira/browse/HBASE-20083) | Fix findbugs error for ReplicationSyncUp |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-20036](https://issues.apache.org/jira/browse/HBASE-20036) | TestAvoidCellReferencesIntoShippedBlocks timed out |  Major | . | stack | ramkrishna.s.vasudevan |
| [HBASE-20069](https://issues.apache.org/jira/browse/HBASE-20069) | fix existing findbugs errors in hbase-server |  Critical | findbugs | Sean Busbey | stack |
| [HBASE-19400](https://issues.apache.org/jira/browse/HBASE-19400) | Add missing security checks in MasterRpcServices |  Major | . | Balazs Meszaros | Appy |
| [HBASE-20100](https://issues.apache.org/jira/browse/HBASE-20100) | TestEnableTableProcedure flakey |  Major | amv2, flakey | stack | stack |
| [HBASE-20113](https://issues.apache.org/jira/browse/HBASE-20113) | Move branch-2 version from 2.0.0-beta-2-SNAPSHOT to 2.0.0-beta-2 |  Major | . | stack | stack |
| [HBASE-18758](https://issues.apache.org/jira/browse/HBASE-18758) | [TEST][compat 1-2] Test delegation tokens continue to work when hbase1 going against hbase2 cluster |  Critical | API | stack | Josh Elser |
| [HBASE-19114](https://issues.apache.org/jira/browse/HBASE-19114) | Split out o.a.h.h.zookeeper from hbase-server and hbase-client |  Major | . | Appy | Appy |
| [HBASE-19093](https://issues.apache.org/jira/browse/HBASE-19093) | Check Admin/Table to ensure all operations go via AccessControl |  Blocker | . | stack | Balazs Meszaros |
| [HBASE-20173](https://issues.apache.org/jira/browse/HBASE-20173) | [AMv2] DisableTableProcedure concurrent to ServerCrashProcedure can deadlock |  Critical | amv2 | stack | stack |
| [HBASE-20178](https://issues.apache.org/jira/browse/HBASE-20178) | [AMv2] Throw exception if hostile environment |  Major | amv2 | stack | stack |
| [HBASE-20180](https://issues.apache.org/jira/browse/HBASE-20180) | Avoid Class::newInstance |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20190](https://issues.apache.org/jira/browse/HBASE-20190) | Fix default for MIGRATE\_TABLE\_STATE\_FROM\_ZK\_KEY |  Critical | . | stack | stack |
| [HBASE-20232](https://issues.apache.org/jira/browse/HBASE-20232) | [LOGGING] Formatting around close and flush |  Major | . | stack | stack |
| [HBASE-20247](https://issues.apache.org/jira/browse/HBASE-20247) | Set version as 2.0.0 in branch-2.0 in prep for first RC |  Major | . | stack | stack |
| [HBASE-20202](https://issues.apache.org/jira/browse/HBASE-20202) | [AMv2] Don't move region if its a split parent or offlined |  Critical | amv2 | stack | stack |
| [HBASE-20241](https://issues.apache.org/jira/browse/HBASE-20241) | splitormerge\_enabled does not work |  Critical | shell | Peter Somogyi | Peter Somogyi |
| [HBASE-20245](https://issues.apache.org/jira/browse/HBASE-20245) | HTrace commands do not work |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-17819](https://issues.apache.org/jira/browse/HBASE-17819) | Reduce the heap overhead for BucketCache |  Critical | BucketCache | Anoop Sam John | Anoop Sam John |
| [HBASE-20254](https://issues.apache.org/jira/browse/HBASE-20254) | Incorrect help message for merge\_region |  Minor | shell | Peter Somogyi | Peter Somogyi |
| [HBASE-16848](https://issues.apache.org/jira/browse/HBASE-16848) | Usage for show\_peer\_tableCFs command doesn't include peer |  Minor | . | Ted Yu | Peter Somogyi |
| [HBASE-20298](https://issues.apache.org/jira/browse/HBASE-20298) | Doc change in read/write/total accounting metrics |  Critical | documentation | stack | stack |
| [HBASE-20337](https://issues.apache.org/jira/browse/HBASE-20337) | Update the doc on how to setup shortcircuit reads; its stale |  Major | . | stack | stack |
| [HBASE-17730](https://issues.apache.org/jira/browse/HBASE-17730) | [DOC] Migration to 2.0 for coprocessors |  Blocker | documentation, migration | Appy | Appy |
| [HBASE-20354](https://issues.apache.org/jira/browse/HBASE-20354) | [DOC] quickstart guide needs to include note about durability checks for standalone mode |  Blocker | documentation, hadoop3 | Sean Busbey | Sean Busbey |
| [HBASE-20258](https://issues.apache.org/jira/browse/HBASE-20258) | Shell hangs when scanning a disabled table |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20287](https://issues.apache.org/jira/browse/HBASE-20287) | After cluster startup list\_regions command fails on disabled table |  Minor | shell | Peter Somogyi | Peter Somogyi |
| [HBASE-18828](https://issues.apache.org/jira/browse/HBASE-18828) | [2.0] Generate CHANGES.txt |  Blocker | . | stack | stack |
| [HBASE-20149](https://issues.apache.org/jira/browse/HBASE-20149) | Purge dev javadoc from bin tarball (or make a separate tarball of javadoc) |  Critical | build, community, documentation | stack | stack |
| [HBASE-20380](https://issues.apache.org/jira/browse/HBASE-20380) | Put up 2.0.0RC0 |  Major | . | stack | stack |
| [HBASE-20253](https://issues.apache.org/jira/browse/HBASE-20253) | Error message is missing for restore\_snapshot |  Minor | shell | Peter Somogyi | Gabor Bota |
| [HBASE-17554](https://issues.apache.org/jira/browse/HBASE-17554) | Figure 2.0.0 Hadoop Version Support; update refguide |  Blocker | documentation | stack | stack |
| [HBASE-20349](https://issues.apache.org/jira/browse/HBASE-20349) | [DOC] upgrade guide should call out removal of prefix-tree data block encoding |  Critical | documentation | Sean Busbey | stack |
| [HBASE-20347](https://issues.apache.org/jira/browse/HBASE-20347) | [DOC] upgrade section should warn about logging changes |  Critical | documentation, logging | Sean Busbey | stack |
| [HBASE-20454](https://issues.apache.org/jira/browse/HBASE-20454) | [DOC] Add note on perf to upgrade section |  Major | . | stack | stack |
| [HBASE-20059](https://issues.apache.org/jira/browse/HBASE-20059) | Make sure documentation is updated for the offheap Bucket cache usage |  Critical | documentation | Anoop Sam John | Anoop Sam John |
| [HBASE-20319](https://issues.apache.org/jira/browse/HBASE-20319) | Run a check that branch-2.0 has all it needs from branch-2 |  Major | . | stack | stack |
| [HBASE-20142](https://issues.apache.org/jira/browse/HBASE-20142) | Copy master doc into branch-2 and edit to make it suit 2.0.0 |  Major | . | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12859](https://issues.apache.org/jira/browse/HBASE-12859) | New master API to track major compaction completion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7781](https://issues.apache.org/jira/browse/HBASE-7781) | Update security unit tests to use a KDC if available |  Blocker | security, test | Gary Helmling | Duo Zhang |
| [HBASE-13747](https://issues.apache.org/jira/browse/HBASE-13747) | Promote Java 8 to "yes" in support matrix |  Critical | java | Sean Busbey | Sean Busbey |
| [HBASE-11339](https://issues.apache.org/jira/browse/HBASE-11339) | HBase MOB |  Major | regionserver, Scanners | Jingcheng Du | Jingcheng Du |
| [HBASE-14869](https://issues.apache.org/jira/browse/HBASE-14869) | Better request latency and size histograms |  Major | . | Lars Hofhansl | Vikas Vishwakarma |
| [HBASE-14420](https://issues.apache.org/jira/browse/HBASE-14420) | Zombie Stomping Session |  Critical | test | stack | stack |
| [HBASE-14457](https://issues.apache.org/jira/browse/HBASE-14457) | Umbrella: Improve Multiple WAL for production usage |  Major | . | Yu Li | Yu Li |
| [HBASE-11425](https://issues.apache.org/jira/browse/HBASE-11425) | Cell/DBB end-to-end on the read-path |  Major | regionserver, Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-14460](https://issues.apache.org/jira/browse/HBASE-14460) | [Perf Regression] Merge of MVCC and SequenceId (HBASE-8763) slowed Increments, CheckAndPuts, batch operations |  Critical | Performance | stack | stack |
| [HBASE-16432](https://issues.apache.org/jira/browse/HBASE-16432) | Revisit the asynchronous ipc implementation |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-11871](https://issues.apache.org/jira/browse/HBASE-11871) | Avoid usage of KeyValueUtil#ensureKeyValue |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-16567](https://issues.apache.org/jira/browse/HBASE-16567) | Upgrade to protobuf-3.1.x |  Critical | Protobufs | stack | stack |
| [HBASE-16145](https://issues.apache.org/jira/browse/HBASE-16145) | MultiRowRangeFilter constructor shouldn't throw IOException |  Minor | . | Konstantin Ryakhovskiy | Konstantin Ryakhovskiy |
| [HBASE-15179](https://issues.apache.org/jira/browse/HBASE-15179) | Cell/DBB end-to-end on the write-path |  Major | regionserver | Anoop Sam John | Anoop Sam John |
| [HBASE-18037](https://issues.apache.org/jira/browse/HBASE-18037) | Do not expose implementation classes to CP |  Blocker | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-16833](https://issues.apache.org/jira/browse/HBASE-16833) | Implement asynchronous hbase client based on HBASE-15921 |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-16617](https://issues.apache.org/jira/browse/HBASE-16617) | Procedure V2 - Improvements |  Minor | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6581](https://issues.apache.org/jira/browse/HBASE-6581) | Build with hadoop.profile=3.0 |  Major | . | Eric Charles | Eric Charles |
| [HBASE-15086](https://issues.apache.org/jira/browse/HBASE-15086) | Fix findbugs complaint so yetus reports more green |  Major | build | stack | stack |
| [HBASE-17359](https://issues.apache.org/jira/browse/HBASE-17359) | Implement async admin |  Major | Client | Duo Zhang | Guanghao Zhang |
| [HBASE-18266](https://issues.apache.org/jira/browse/HBASE-18266) | Eliminate the warnings from the spotbugs |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18501](https://issues.apache.org/jira/browse/HBASE-18501) | Use TableDescriptor and ColumnFamilyDescriptor as far as possible |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18696](https://issues.apache.org/jira/browse/HBASE-18696) | Fix the problems when introducing the new hbase-mapreduce module |  Blocker | mapreduce | Duo Zhang |  |
| [HBASE-10462](https://issues.apache.org/jira/browse/HBASE-10462) | Recategorize some of the client facing Public / Private interfaces |  Blocker | Client | Enis Soztutar | Enis Soztutar |
| [HBASE-7320](https://issues.apache.org/jira/browse/HBASE-7320) | Remove KeyValue.getBuffer() |  Blocker | . | Lars Hofhansl | stack |
| [HBASE-18751](https://issues.apache.org/jira/browse/HBASE-18751) | Revisit the TimeRange and TimeRangeTracker |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17143](https://issues.apache.org/jira/browse/HBASE-17143) | Scan improvement |  Blocker | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-18926](https://issues.apache.org/jira/browse/HBASE-18926) | Cleanup Optional\<T\> from method params |  Major | . | Appy | Duo Zhang |
| [HBASE-18703](https://issues.apache.org/jira/browse/HBASE-18703) | Inconsistent behavior for preBatchMutate in doMiniBatchMutate and processRowsWithLocks |  Critical | Coprocessors | Duo Zhang | Umesh Agashe |
| [HBASE-18805](https://issues.apache.org/jira/browse/HBASE-18805) | Unify Admin and AsyncAdmin |  Major | . | Balazs Meszaros | Guanghao Zhang |
| [HBASE-18978](https://issues.apache.org/jira/browse/HBASE-18978) | Align the methods in Table and AsyncTable |  Critical | asyncclient, Client | Duo Zhang | Peter Somogyi |
| [HBASE-18110](https://issues.apache.org/jira/browse/HBASE-18110) | [AMv2] Reenable tests temporarily disabled |  Blocker | Region Assignment | stack | stack |
| [HBASE-18429](https://issues.apache.org/jira/browse/HBASE-18429) | ITs attempt to modify immutable table/column descriptors |  Critical | integration tests | Mike Drob | Mike Drob |
| [HBASE-19627](https://issues.apache.org/jira/browse/HBASE-19627) | Stabilize the method signature for Cell and its impl |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19425](https://issues.apache.org/jira/browse/HBASE-19425) | Align the methods in Put/Delete/Increment/Append |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19296](https://issues.apache.org/jira/browse/HBASE-19296) | Fix findbugs and error-prone warnings (branch-2) |  Major | . | Andrew Purtell | Peter Somogyi |
| [HBASE-19948](https://issues.apache.org/jira/browse/HBASE-19948) | Since HBASE-19873, HBaseClassTestRule, Small/Medium/Large has different semantic |  Major | . | stack | stack |
| [HBASE-19976](https://issues.apache.org/jira/browse/HBASE-19976) | Dead lock if the worker threads in procedure executor are exhausted |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-10403](https://issues.apache.org/jira/browse/HBASE-10403) | Simplify offheap cache configuration |  Minor | io | Nick Dimiduk | Nick Dimiduk |
| [HBASE-20067](https://issues.apache.org/jira/browse/HBASE-20067) | Clean up findbugs warnings |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-8770](https://issues.apache.org/jira/browse/HBASE-8770) | deletes and puts with the same ts should be resolved according to mvcc/seqNum |  Blocker | . | Sergey Shelukhin | stack |
| [HBASE-8450](https://issues.apache.org/jira/browse/HBASE-8450) | Update hbase-default.xml and general recommendations to better suit current hw, h2, experience, etc. |  Critical | Usability | stack | stack |
| [HBASE-11459](https://issues.apache.org/jira/browse/HBASE-11459) | Add more doc on compression codecs, how to hook up native lib, lz4, etc. |  Minor | documentation | stack | stack |
| [HBASE-10398](https://issues.apache.org/jira/browse/HBASE-10398) | HBase book updates for Replication after HBASE-10322 |  Major | documentation | Anoop Sam John | Misty Linville |
| [HBASE-11606](https://issues.apache.org/jira/browse/HBASE-11606) | Enable ZK-less region assignment by default |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11729](https://issues.apache.org/jira/browse/HBASE-11729) | Document HFile v3 |  Trivial | documentation, HFile | Sean Busbey | Sean Busbey |
| [HBASE-4593](https://issues.apache.org/jira/browse/HBASE-4593) | Design and document the official procedure for posting patches, commits, commit messages, etc. to smooth process and make integration with tools easier |  Major | documentation | Jonathan Gray | Misty Linville |
| [HBASE-11619](https://issues.apache.org/jira/browse/HBASE-11619) | Remove unused test class from TestHLogSplit |  Trivial | wal | Sean Busbey | Mikhail Antonov |
| [HBASE-11961](https://issues.apache.org/jira/browse/HBASE-11961) | Document region state transitions |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11791](https://issues.apache.org/jira/browse/HBASE-11791) | Update docs on visibility tags and ACLs, transparent encryption, secure bulk upload |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12239](https://issues.apache.org/jira/browse/HBASE-12239) | Document hedged reads |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12362](https://issues.apache.org/jira/browse/HBASE-12362) | Interim documentation of important master and regionserver metrics |  Major | documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-12438](https://issues.apache.org/jira/browse/HBASE-12438) | Add  -Dsurefire.rerunFailingTestsCount=2 to patch build runs so flakies get rerun |  Major | test | stack | stack |
| [HBASE-12515](https://issues.apache.org/jira/browse/HBASE-12515) | update test-patch to use git |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-12589](https://issues.apache.org/jira/browse/HBASE-12589) | Forward-port fix for TestFromClientSideWithCoprocessor.testMaxKeyValueSize |  Major | test | stack | stack |
| [HBASE-12623](https://issues.apache.org/jira/browse/HBASE-12623) | Remove pre-0.96 to 0.96 upgrade code |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-12785](https://issues.apache.org/jira/browse/HBASE-12785) | Use FutureTask to timeout the attempt to get the lock for hbck |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12783](https://issues.apache.org/jira/browse/HBASE-12783) | Create efficient RegionLocator implementation |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12701](https://issues.apache.org/jira/browse/HBASE-12701) | Document how to set the split policy on a given table |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12168](https://issues.apache.org/jira/browse/HBASE-12168) | Document Rest gateway SPNEGO-based authentication for client |  Major | documentation, REST, security | Jerry He | Jerry He |
| [HBASE-13079](https://issues.apache.org/jira/browse/HBASE-13079) | Add an admonition to Scans example that the results scanner should be closed |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-12995](https://issues.apache.org/jira/browse/HBASE-12995) | Document that HConnection#getTable methods do not check table existence since 0.98.1 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12180](https://issues.apache.org/jira/browse/HBASE-12180) | Fix and reenable TestRegionReplicaReplicationEndpoint |  Major | test | stack | Enis Soztutar |
| [HBASE-11670](https://issues.apache.org/jira/browse/HBASE-11670) | Build PDF of Ref Guide |  Minor | documentation | Misty Linville | Misty Linville |
| [HBASE-13177](https://issues.apache.org/jira/browse/HBASE-13177) | Document HBASE-13012 |  Major | documentation, mob | Misty Linville | Misty Linville |
| [HBASE-12466](https://issues.apache.org/jira/browse/HBASE-12466) | Document visibility scan label generator usage and behavior |  Major | documentation, security | Jerry He | Misty Linville |
| [HBASE-7126](https://issues.apache.org/jira/browse/HBASE-7126) | Update website with info on how to report security bugs |  Critical | documentation | Eli Collins | Misty Linville |
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
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | website | Nick Dimiduk | Gabor Liptak |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13915](https://issues.apache.org/jira/browse/HBASE-13915) | Remove EOL HBase versions from java and hadoop prereq tables |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13956](https://issues.apache.org/jira/browse/HBASE-13956) | Add myself as 1.1 release manager |  Trivial | website | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13948](https://issues.apache.org/jira/browse/HBASE-13948) | Expand hadoop2 versions built on the pre-commit |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13964](https://issues.apache.org/jira/browse/HBASE-13964) | Skip region normalization for tables under namespace quota |  Major | Balancer, Usability | Mikhail Antonov | Ted Yu |
| [HBASE-13869](https://issues.apache.org/jira/browse/HBASE-13869) | Fix typo in HBase book |  Trivial | documentation | Vladimir Rodionov | Gabor Liptak |
| [HBASE-14053](https://issues.apache.org/jira/browse/HBASE-14053) | Disable DLR in branch-1+ |  Major | Recovery | stack | stack |
| [HBASE-14052](https://issues.apache.org/jira/browse/HBASE-14052) | Mark a few methods in CellUtil audience private since only make sense internally to hbase |  Trivial | API | stack | stack |
| [HBASE-11276](https://issues.apache.org/jira/browse/HBASE-11276) | Add back support for running ChaosMonkey as standalone tool |  Minor | . | Dima Spivak | Yu Li |
| [HBASE-14057](https://issues.apache.org/jira/browse/HBASE-14057) | HBase shell user\_permission should list super users defined on hbase-site.xml |  Minor | shell | Wellington Chevreuil | Srikanth Srungarapu |
| [HBASE-13446](https://issues.apache.org/jira/browse/HBASE-13446) | Add docs warning about missing data for downstream on versions prior to HBASE-13262 |  Critical | documentation | Sean Busbey | Misty Linville |
| [HBASE-14071](https://issues.apache.org/jira/browse/HBASE-14071) | Document troubleshooting unexpected filesystem usage by snapshots and WALs |  Major | . | Misty Linville | Misty Linville |
| [HBASE-14081](https://issues.apache.org/jira/browse/HBASE-14081) | (outdated) references to SVN/trunk in documentation |  Minor | documentation, website | Gabor Liptak | Gabor Liptak |
| [HBASE-13089](https://issues.apache.org/jira/browse/HBASE-13089) | Fix test compilation error on building against htrace-3.2.0-incubating |  Minor | . | Masatake Iwasaki | Esteban Gutierrez |
| [HBASE-14085](https://issues.apache.org/jira/browse/HBASE-14085) | Correct LICENSE and NOTICE files in artifacts |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14288](https://issues.apache.org/jira/browse/HBASE-14288) | Upgrade asciidoctor plugin to v1.5.2.1 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14091](https://issues.apache.org/jira/browse/HBASE-14091) | Update site documentation with code of conduct and project policy for transgressions |  Major | documentation, website | Andrew Purtell | Andrew Purtell |
| [HBASE-14290](https://issues.apache.org/jira/browse/HBASE-14290) | Spin up less threads in tests |  Major | test | stack | stack |
| [HBASE-14318](https://issues.apache.org/jira/browse/HBASE-14318) | make\_rc.sh should purge/re-resolve dependencies from local repository |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14253](https://issues.apache.org/jira/browse/HBASE-14253) | update docs + build for maven 3.0.4+ |  Major | build, documentation | Sean Busbey | Lars Francke |
| [HBASE-14361](https://issues.apache.org/jira/browse/HBASE-14361) | ReplicationSink should create Connection instances lazily |  Major | Replication | Nick Dimiduk | Heng Chen |
| [HBASE-14227](https://issues.apache.org/jira/browse/HBASE-14227) | Fold special cased MOB APIs into existing APIs |  Blocker | mob | Andrew Purtell | Heng Chen |
| [HBASE-14482](https://issues.apache.org/jira/browse/HBASE-14482) | Add hadoop 2.6.1 to the test-patch build list |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14424](https://issues.apache.org/jira/browse/HBASE-14424) | Document that DisabledRegionSplitPolicy blocks manual splits |  Minor | documentation | Misty Linville | Misty Linville |
| [HBASE-14271](https://issues.apache.org/jira/browse/HBASE-14271) | Improve Nexus staging instructions |  Minor | build, documentation | Andrew Purtell | Andrew Purtell |
| [HBASE-14502](https://issues.apache.org/jira/browse/HBASE-14502) | Purge use of jmock and remove as dependency |  Major | test | stack | Gabor Liptak |
| [HBASE-14493](https://issues.apache.org/jira/browse/HBASE-14493) | Upgrade the jamon-runtime dependency |  Minor | . | Newton Alex | Andrew Purtell |
| [HBASE-14652](https://issues.apache.org/jira/browse/HBASE-14652) | Improve / update publish-website script in dev-support |  Major | scripts | Misty Linville | Misty Linville |
| [HBASE-13867](https://issues.apache.org/jira/browse/HBASE-13867) | Add endpoint coprocessor guide to HBase book |  Major | Coprocessors, documentation | Vladimir Rodionov | Gaurav Bhardwaj |
| [HBASE-14026](https://issues.apache.org/jira/browse/HBASE-14026) | Clarify "Web API" in version and compatibility docs |  Critical | documentation | Sean Busbey | Misty Linville |
| [HBASE-11720](https://issues.apache.org/jira/browse/HBASE-11720) | Set up jenkins job to build site documentation |  Minor | build, documentation | Sean Busbey | Misty Linville |
| [HBASE-14481](https://issues.apache.org/jira/browse/HBASE-14481) | Decommission HBase wiki |  Blocker | documentation | Nick Dimiduk | Misty Linville |
| [HBASE-14762](https://issues.apache.org/jira/browse/HBASE-14762) | Update docs about publishing website to show gitsubpub method instead of svnsubpub |  Critical | documentation | Misty Linville | Misty Linville |
| [HBASE-14713](https://issues.apache.org/jira/browse/HBASE-14713) | Remove simple deprecated-since-1.0 code in hbase-server from hbase 2.0 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-14764](https://issues.apache.org/jira/browse/HBASE-14764) | Stop using post-site target |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14732](https://issues.apache.org/jira/browse/HBASE-14732) | Update HBase website skin and CSS |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-14308](https://issues.apache.org/jira/browse/HBASE-14308) | HTableDescriptor WARN is not actionable |  Minor | Usability | Nick Dimiduk | Lars Francke |
| [HBASE-14516](https://issues.apache.org/jira/browse/HBASE-14516) | categorize hadoop-compat tests |  Critical | build, hadoop2, test | Sean Busbey | Sean Busbey |
| [HBASE-14851](https://issues.apache.org/jira/browse/HBASE-14851) | Add test showing how to use TTL from thrift |  Major | test, Thrift | Elliott Clark | Elliott Clark |
| [HBASE-14534](https://issues.apache.org/jira/browse/HBASE-14534) | Bump yammer/coda/dropwizard metrics dependency version |  Minor | . | Nick Dimiduk | Mikhail Antonov |
| [HBASE-14994](https://issues.apache.org/jira/browse/HBASE-14994) | Clean up some broken links and references to old APIs |  Major | documentation | Misty Linville | Misty Linville |
| [HBASE-11985](https://issues.apache.org/jira/browse/HBASE-11985) | Document sizing rules of thumb |  Major | documentation | Misty Linville | Misty Linville |
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
| [HBASE-15646](https://issues.apache.org/jira/browse/HBASE-15646) | Add some docs about exporting and importing snapshots using S3 |  Major | documentation, snapshots | Misty Linville | Misty Linville |
| [HBASE-4368](https://issues.apache.org/jira/browse/HBASE-4368) | Expose processlist in shell (per regionserver and perhaps by cluster) |  Major | shell | stack | Talat UYARER |
| [HBASE-14635](https://issues.apache.org/jira/browse/HBASE-14635) | Fix flaky test TestSnapshotCloneIndependence |  Major | test | stack | Appy |
| [HBASE-15895](https://issues.apache.org/jira/browse/HBASE-15895) | remove unmaintained jenkins build analysis tool. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-15888](https://issues.apache.org/jira/browse/HBASE-15888) | Extend HBASE-12769 for bulk load data replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15989](https://issues.apache.org/jira/browse/HBASE-15989) | Remove hbase.online.schema.update.enable |  Major | . | Nick Dimiduk | Matteo Bertozzi |
| [HBASE-16073](https://issues.apache.org/jira/browse/HBASE-16073) | update compatibility\_checker for jacc dropping comma sep args |  Critical | build, documentation | Sean Busbey | Dima Spivak |
| [HBASE-15656](https://issues.apache.org/jira/browse/HBASE-15656) | Fix unused protobuf warning in Admin.proto |  Minor | . | Elliott Clark | Yi Liang |
| [HBASE-16354](https://issues.apache.org/jira/browse/HBASE-16354) | Clean up defunct GitHub PRs |  Major | community | Dima Spivak | Sean Busbey |
| [HBASE-16426](https://issues.apache.org/jira/browse/HBASE-16426) | Remove company affiliations from committer list |  Major | documentation, website | Misty Linville | Misty Linville |
| [HBASE-16260](https://issues.apache.org/jira/browse/HBASE-16260) | Audit dependencies for Category-X |  Critical | community, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16467](https://issues.apache.org/jira/browse/HBASE-16467) | Move AbstractHBaseTool to hbase-common |  Trivial | . | Appy | Appy |
| [HBASE-16376](https://issues.apache.org/jira/browse/HBASE-16376) | Document implicit side-effects on partial results when calling Scan#setBatch(int) |  Minor | API, documentation | Josh Elser | Josh Elser |
| [HBASE-16518](https://issues.apache.org/jira/browse/HBASE-16518) | Remove old .arcconfig file |  Trivial | tooling | Gary Helmling | Gary Helmling |
| [HBASE-16591](https://issues.apache.org/jira/browse/HBASE-16591) | Add a docker file only contains java 8 for running pre commit on master |  Blocker | build | Duo Zhang | Duo Zhang |
| [HBASE-16811](https://issues.apache.org/jira/browse/HBASE-16811) | Remove mob sweep job |  Minor | . | Appy | Appy |
| [HBASE-16952](https://issues.apache.org/jira/browse/HBASE-16952) | Replace hadoop-maven-plugins with protobuf-maven-plugin for building protos |  Major | build | stack | stack |
| [HBASE-16413](https://issues.apache.org/jira/browse/HBASE-16413) | Add apache-hbase.slack.com #users channel to ref guide |  Minor | documentation | Dima Spivak | stack |
| [HBASE-16955](https://issues.apache.org/jira/browse/HBASE-16955) | Fixup precommit protoc check to do new distributed protos and pb 3.1.0 build |  Major | build, Protobufs | stack | stack |
| [HBASE-17046](https://issues.apache.org/jira/browse/HBASE-17046) | Add 1.1 doc to hbase.apache.org |  Major | website | stack | stack |
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
| [HBASE-17898](https://issues.apache.org/jira/browse/HBASE-17898) | Update dependencies |  Critical | dependencies | stack | Balazs Meszaros |
| [HBASE-17954](https://issues.apache.org/jira/browse/HBASE-17954) | Switch findbugs implementation to spotbugs |  Major | build, community, test | Sean Busbey | Jan Hentschel |
| [HBASE-18258](https://issues.apache.org/jira/browse/HBASE-18258) | Take down hbasecon2017 logo from hbase.apache.org and put up hbaseconasia2017 instead. |  Major | . | stack | stack |
| [HBASE-12794](https://issues.apache.org/jira/browse/HBASE-12794) | Guidelines for filing JIRA issues |  Major | documentation | stack | Misty Linville |
| [HBASE-18284](https://issues.apache.org/jira/browse/HBASE-18284) | Update hbasecon asia logo on home page of hbase.apache.org |  Major | . | stack | stack |
| [HBASE-18288](https://issues.apache.org/jira/browse/HBASE-18288) | Declared dependency on specific javax.ws.rs |  Major | dependencies, REST | Sean Busbey | Sean Busbey |
| [HBASE-18291](https://issues.apache.org/jira/browse/HBASE-18291) | Regenerate thrift2 python examples |  Minor | . | Ted Yu | Peter Somogyi |
| [HBASE-18364](https://issues.apache.org/jira/browse/HBASE-18364) | Downgrade surefire |  Major | . | Josh Elser | Josh Elser |
| [HBASE-18344](https://issues.apache.org/jira/browse/HBASE-18344) | Introduce Append.addColumn as a replacement for Append.add |  Trivial | . | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-18384](https://issues.apache.org/jira/browse/HBASE-18384) | Add link to refguide schema section on apache blog on hbase application archetypes |  Minor | documentation | stack | stack |
| [HBASE-16728](https://issues.apache.org/jira/browse/HBASE-16728) | Add hadoop.profile=3.0 pass to precommit checks. |  Major | build, hadoop3 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-18465](https://issues.apache.org/jira/browse/HBASE-18465) | [AMv2] remove old split region code that is no longer needed |  Major | Admin, rpc | Yi Liang | Yi Liang |
| [HBASE-15141](https://issues.apache.org/jira/browse/HBASE-15141) | Procedure V2 - Web UI |  Blocker | proc-v2, UI | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16100](https://issues.apache.org/jira/browse/HBASE-16100) | Procedure V2 - Tools |  Minor | proc-v2, tooling | Appy | Appy |
| [HBASE-18515](https://issues.apache.org/jira/browse/HBASE-18515) |  Introduce Delete.add as a replacement for Delete#addDeleteMarker |  Major | Client | Chia-Ping Tsai | Xie YiFan |
| [HBASE-18527](https://issues.apache.org/jira/browse/HBASE-18527) | update nightly builds to compensate for jenkins plugin upgrades |  Blocker | community, test | Sean Busbey | Sean Busbey |
| [HBASE-18514](https://issues.apache.org/jira/browse/HBASE-18514) | Backport space quota "phase2" work to branch-2 |  Blocker | . | Josh Elser | Josh Elser |
| [HBASE-18588](https://issues.apache.org/jira/browse/HBASE-18588) | Verify we're using netty .so epolling on linux post HBASE-18271 |  Major | test | stack | stack |
| [HBASE-18582](https://issues.apache.org/jira/browse/HBASE-18582) | Correct the docs for Mutation#setCellVisibility |  Minor | documentation | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-18544](https://issues.apache.org/jira/browse/HBASE-18544) | Move the HRegion#addRegionToMETA to TestDefaultMemStore |  Minor | regionserver | Chia-Ping Tsai | ChunHao |
| [HBASE-18518](https://issues.apache.org/jira/browse/HBASE-18518) | Remove jersey1\* dependencies from project and jersey1\* jars from lib dir |  Major | dependencies, pom, REST | Samir Ahmic | Samir Ahmic |
| [HBASE-18623](https://issues.apache.org/jira/browse/HBASE-18623) | Frequent failed to parse at EOF warnings from WALEntryStream |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18594](https://issues.apache.org/jira/browse/HBASE-18594) | Release hbase-2.0.0-alpha2 |  Major | . | stack | stack |
| [HBASE-18630](https://issues.apache.org/jira/browse/HBASE-18630) | Prune dependencies; as is branch-2 has duplicates |  Major | dependencies | stack | stack |
| [HBASE-18653](https://issues.apache.org/jira/browse/HBASE-18653) | Undo hbase2 check against \< hadoop2.6.x; i.e. implement agreed drop of hadoop 2.4 and 2.5 support in hbase2 |  Major | build | stack | stack |
| [HBASE-18660](https://issues.apache.org/jira/browse/HBASE-18660) | Remove duplicate code from the checkAndPut method in HTable |  Trivial | . | Yun Zhao | Yun Zhao |
| [HBASE-17614](https://issues.apache.org/jira/browse/HBASE-17614) | Move Backup/Restore into separate module |  Blocker | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-18670](https://issues.apache.org/jira/browse/HBASE-18670) | Add .DS\_Store to .gitignore |  Minor | community | Chia-Ping Tsai | Deon Huang |
| [HBASE-18611](https://issues.apache.org/jira/browse/HBASE-18611) | Copy all tests from o.a.h.h.p.TestProtobufUtil to o.a.h.h.s.p.TestProtobufUtil |  Minor | Protobufs, test | Chia-Ping Tsai | ChunHao |
| [HBASE-18705](https://issues.apache.org/jira/browse/HBASE-18705) | bin/hbase does not find cached\_classpath.txt |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18710](https://issues.apache.org/jira/browse/HBASE-18710) | Move on to hbase-thirdparty 1.0.1 (it was just released). |  Major | hbase-thirdparty | stack | stack |
| [HBASE-17967](https://issues.apache.org/jira/browse/HBASE-17967) | clean up documentation references to -ROOT- table. |  Minor | documentation | Sean Busbey | Chia-Ping Tsai |
| [HBASE-18768](https://issues.apache.org/jira/browse/HBASE-18768) | Move TestTableName to hbase-common from hbase-server |  Major | . | stack | stack |
| [HBASE-17972](https://issues.apache.org/jira/browse/HBASE-17972) | Remove mergePool from CompactSplitThread |  Minor | regionserver | Guangxu Cheng | Guangxu Cheng |
| [HBASE-13868](https://issues.apache.org/jira/browse/HBASE-13868) | Correct "Disable automatic splitting" section in HBase book |  Trivial | documentation | Vladimir Rodionov | Chia-Ping Tsai |
| [HBASE-18421](https://issues.apache.org/jira/browse/HBASE-18421) | update hadoop prerequisites docs to call out 2.8.1 |  Major | community, dependencies, documentation | Sean Busbey | Chia-Ping Tsai |
| [HBASE-18782](https://issues.apache.org/jira/browse/HBASE-18782) | Module untangling work |  Major | . | stack | stack |
| [HBASE-18766](https://issues.apache.org/jira/browse/HBASE-18766) | Make TableSnapshotScanner Audience Private |  Major | . | stack | Chia-Ping Tsai |
| [HBASE-18835](https://issues.apache.org/jira/browse/HBASE-18835) | The return type of ExtendedCell#deepClone should be ExtendedCell rather than Cell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18767](https://issues.apache.org/jira/browse/HBASE-18767) | Release hbase-2.0.0-alpha-3; Theme "Scrubbed API" |  Major | . | stack | stack |
| [HBASE-10504](https://issues.apache.org/jira/browse/HBASE-10504) | Define Replication Interface |  Blocker | Replication | stack | Enis Soztutar |
| [HBASE-18833](https://issues.apache.org/jira/browse/HBASE-18833) | Ensure precommit personality is up to date on all active branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-18927](https://issues.apache.org/jira/browse/HBASE-18927) | Add the DataType which is subset of KeyValue#Type to CellBuilder for building cell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18991](https://issues.apache.org/jira/browse/HBASE-18991) | Remove RegionMergeRequest |  Trivial | . | Chia-Ping Tsai | Jan Hentschel |
| [HBASE-19043](https://issues.apache.org/jira/browse/HBASE-19043) | Purge TableWrapper and CoprocessorHConnnection |  Major | Coprocessors | stack | stack |
| [HBASE-19007](https://issues.apache.org/jira/browse/HBASE-19007) | Align Services Interfaces in Master and RegionServer |  Blocker | . | stack | stack |
| [HBASE-16338](https://issues.apache.org/jira/browse/HBASE-16338) | update jackson to 2.y |  Major | dependencies | Sean Busbey | Mike Drob |
| [HBASE-19049](https://issues.apache.org/jira/browse/HBASE-19049) | Update kerby to 1.0.1 GA release |  Major | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-19097](https://issues.apache.org/jira/browse/HBASE-19097) | update testing to use Apache Yetus Test Patch version 0.6.0 |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19176](https://issues.apache.org/jira/browse/HBASE-19176) | Remove hbase-native-client from branch-2 |  Major | . | stack | stack |
| [HBASE-19179](https://issues.apache.org/jira/browse/HBASE-19179) | Remove hbase-prefix-tree |  Critical | . | stack | stack |
| [HBASE-19217](https://issues.apache.org/jira/browse/HBASE-19217) | Update supplemental-models.xml for jetty-sslengine |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-18817](https://issues.apache.org/jira/browse/HBASE-18817) | Pull hbase-spark module out of branch-2 |  Blocker | spark | Sean Busbey | Sean Busbey |
| [HBASE-19224](https://issues.apache.org/jira/browse/HBASE-19224) | LICENSE failure for Hadoop 3.1 on dnsjava |  Major | build | Josh Elser | Josh Elser |
| [HBASE-14350](https://issues.apache.org/jira/browse/HBASE-14350) | Procedure V2 Phase 2: Assignment Manager |  Blocker | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-19241](https://issues.apache.org/jira/browse/HBASE-19241) | Improve javadoc for AsyncAdmin and cleanup warnings for the implementation classes |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-19123](https://issues.apache.org/jira/browse/HBASE-19123) | Purge 'complete' support from Coprocesor Observers |  Major | Coprocessors | stack | stack |
| [HBASE-19200](https://issues.apache.org/jira/browse/HBASE-19200) | make hbase-client only depend on ZKAsyncRegistry and ZNodePaths |  Major | Client, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-19328](https://issues.apache.org/jira/browse/HBASE-19328) | Remove asked if splittable log messages |  Minor | proc-v2 | Balazs Meszaros | Balazs Meszaros |
| [HBASE-19407](https://issues.apache.org/jira/browse/HBASE-19407) | [branch-2] Remove backup/restore |  Blocker | . | stack | stack |
| [HBASE-19408](https://issues.apache.org/jira/browse/HBASE-19408) | Remove WALActionsListener.Base |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19298](https://issues.apache.org/jira/browse/HBASE-19298) | CellScanner and CellScannable should be declared as IA.Public |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19416](https://issues.apache.org/jira/browse/HBASE-19416) | Document dynamic configurations currently support |  Minor | documentation | Reid Chan | Reid Chan |
| [HBASE-19323](https://issues.apache.org/jira/browse/HBASE-19323) | Make netty engine default in hbase2 |  Major | rpc | stack | stack |
| [HBASE-19410](https://issues.apache.org/jira/browse/HBASE-19410) | Move zookeeper related UTs to hbase-zookeeper and mark them as ZKTests |  Major | test, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-18988](https://issues.apache.org/jira/browse/HBASE-18988) | Add release managers to reference guide |  Trivial | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-19485](https://issues.apache.org/jira/browse/HBASE-19485) | Minor improvement to TestCompactedHFilesDischarger |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19512](https://issues.apache.org/jira/browse/HBASE-19512) | Move EventType and ExecutorType from hbase-client to hbase-server |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-19267](https://issues.apache.org/jira/browse/HBASE-19267) | Eclipse project import issues on 2.0 |  Major | build | Josh Elser | Josh Elser |
| [HBASE-19477](https://issues.apache.org/jira/browse/HBASE-19477) | Move and align documentation in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19526](https://issues.apache.org/jira/browse/HBASE-19526) | Update hadoop version to 3.0 GA |  Major | build, dependencies | Mike Drob | Appy |
| [HBASE-19548](https://issues.apache.org/jira/browse/HBASE-19548) | Backport the missed doc fix from master to branch-2 |  Major | . | Chia-Ping Tsai | Chien Hsiang Tang |
| [HBASE-18970](https://issues.apache.org/jira/browse/HBASE-18970) | The version of jruby we use now can't get interactive input from prompt |  Critical | shell | Chia-Ping Tsai | AMIT VIRMANI |
| [HBASE-19550](https://issues.apache.org/jira/browse/HBASE-19550) | Wrap the cell passed via Mutation#add(Cell) to be of ExtendedCell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19637](https://issues.apache.org/jira/browse/HBASE-19637) | Add .checkstyle to gitignore |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19644](https://issues.apache.org/jira/browse/HBASE-19644) | add the checkstyle rule to reject the illegal imports |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19652](https://issues.apache.org/jira/browse/HBASE-19652) | Turn down CleanerChore logging; too chatty |  Major | . | stack | stack |
| [HBASE-19620](https://issues.apache.org/jira/browse/HBASE-19620) | Add UT to confirm the race in MasterRpcServices.getProcedureResult |  Minor | proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-19596](https://issues.apache.org/jira/browse/HBASE-19596) | RegionMetrics/ServerMetrics/ClusterMetrics should apply to all public classes |  Critical | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15042](https://issues.apache.org/jira/browse/HBASE-15042) | refactor so that site materials are in the Standard Maven Place |  Minor | build, website | Sean Busbey | Jan Hentschel |
| [HBASE-19720](https://issues.apache.org/jira/browse/HBASE-19720) | Rename WALKey#getTabnename to WALKey#getTableName |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19922](https://issues.apache.org/jira/browse/HBASE-19922) | ProtobufUtils::PRIMITIVES is unused |  Major | Protobufs | Mike Drob | Mike Drob |
| [HBASE-19946](https://issues.apache.org/jira/browse/HBASE-19946) | TestPerColumnFamilyFlush and TestWalAndCompactingMemStoreFlush fail against h3 |  Major | test | Mike Drob | Mike Drob |
| [HBASE-19947](https://issues.apache.org/jira/browse/HBASE-19947) | MR jobs using ITU use wrong filesystem |  Critical | integration tests | stack | Mike Drob |
| [HBASE-18596](https://issues.apache.org/jira/browse/HBASE-18596) | [TEST] A hbase1 cluster should be able to replicate to a hbase2 cluster; verify |  Blocker | . | stack | Esteban Gutierrez |
| [HBASE-20089](https://issues.apache.org/jira/browse/HBASE-20089) | make\_rc.sh should name SHA-512 checksum files with the extension .sha512 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20088](https://issues.apache.org/jira/browse/HBASE-20088) | Update copyright notices to year 2018 |  Minor | . | Andrew Purtell | Josh Elser |
| [HBASE-20092](https://issues.apache.org/jira/browse/HBASE-20092) | Fix TestRegionMetrics#testRegionMetrics |  Minor | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20084](https://issues.apache.org/jira/browse/HBASE-20084) | Refactor the RSRpcServices#doBatchOp |  Minor | regionserver | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20097](https://issues.apache.org/jira/browse/HBASE-20097) | Merge TableDescriptors#getAll and TableDescriptors#getAllDescriptors into one |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20093](https://issues.apache.org/jira/browse/HBASE-20093) | Replace ServerLoad by ServerMetrics for ServerManager |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18882](https://issues.apache.org/jira/browse/HBASE-18882) | [TEST] Run MR branch-1 jobs against hbase2 cluster |  Critical | mapreduce, test | stack | Josh Elser |
| [HBASE-20072](https://issues.apache.org/jira/browse/HBASE-20072) | remove 1.1 release line from the prerequisite tables |  Major | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-20075](https://issues.apache.org/jira/browse/HBASE-20075) | remove logic for branch-1.1 nightly testing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-15151](https://issues.apache.org/jira/browse/HBASE-15151) | Rely on nightly tests for findbugs compliance on existing branch |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-20171](https://issues.apache.org/jira/browse/HBASE-20171) | Remove o.a.h.h.ProcedureState |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19552](https://issues.apache.org/jira/browse/HBASE-19552) | update hbase to use new thirdparty libs |  Major | dependencies, thirdparty | Mike Drob | Mike Drob |
| [HBASE-20246](https://issues.apache.org/jira/browse/HBASE-20246) | Remove the spark module |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-20212](https://issues.apache.org/jira/browse/HBASE-20212) | Make all Public classes have InterfaceAudience category |  Critical | Usability | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19158](https://issues.apache.org/jira/browse/HBASE-19158) | Ref guide needs upgrade update |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20223](https://issues.apache.org/jira/browse/HBASE-20223) | Use hbase-thirdparty 2.1.0 |  Blocker | dependencies | Josh Elser | Josh Elser |
| [HBASE-20199](https://issues.apache.org/jira/browse/HBASE-20199) | Add test to prevent further permission regression around table flush and snapshot |  Critical | test | Josh Elser | Josh Elser |
| [HBASE-20132](https://issues.apache.org/jira/browse/HBASE-20132) | Change the "KV" to "Cell" for web UI |  Minor | . | Chia-Ping Tsai | Guangxu Cheng |
| [HBASE-20299](https://issues.apache.org/jira/browse/HBASE-20299) | Update MOB in hbase refguide |  Minor | mob | huaxiang sun | huaxiang sun |
| [HBASE-14348](https://issues.apache.org/jira/browse/HBASE-14348) | Update download mirror link |  Major | documentation, website | Andrew Purtell | Lars Francke |
| [HBASE-14175](https://issues.apache.org/jira/browse/HBASE-14175) | Adopt releasedocmaker for better generated release notes |  Critical | . | Andrew Purtell | stack |
| [HBASE-20365](https://issues.apache.org/jira/browse/HBASE-20365) | start branch-2.0 specific website section |  Critical | documentation, website | Sean Busbey | Sean Busbey |
| [HBASE-20386](https://issues.apache.org/jira/browse/HBASE-20386) | [DOC] Align WALPlayer help text and refguide |  Minor | documentation | Balazs Meszaros | Balazs Meszaros |
| [HBASE-19963](https://issues.apache.org/jira/browse/HBASE-19963) | TestFSHDFSUtils assumes wrong default port for Hadoop 3.0.1+ |  Major | test | Mike Drob | Wei-Chiu Chuang |
| [HBASE-18792](https://issues.apache.org/jira/browse/HBASE-18792) | hbase-2 needs to defend against hbck operations |  Blocker | hbck | stack | Umesh Agashe |
| [HBASE-20443](https://issues.apache.org/jira/browse/HBASE-20443) | Use checkstyle to ban imports from commons-collections 3 |  Major | dependencies, test | Sean Busbey | Balazs Meszaros |
| [HBASE-20441](https://issues.apache.org/jira/browse/HBASE-20441) | Use checkstyle to ban imports from commons-lang 2 |  Major | dependencies, test | Sean Busbey | Balazs Meszaros |
| [HBASE-17553](https://issues.apache.org/jira/browse/HBASE-17553) | Make a 2.0.0 Release |  Blocker | . | stack | stack |


