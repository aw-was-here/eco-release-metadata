
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

## Release 2.2.0 - Unreleased (as of 2018-09-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20881](https://issues.apache.org/jira/browse/HBASE-20881) | Introduce a region transition procedure to handle all the state transition for a region |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15809](https://issues.apache.org/jira/browse/HBASE-15809) | Basic Replication WebUI |  Critical | Replication, UI | Matteo Bertozzi | Jingyun Tian |
| [HBASE-20833](https://issues.apache.org/jira/browse/HBASE-20833) | Modify pre-upgrade coprocessor validator to support table level coprocessors |  Major | Coprocessors | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | Validate HFiles do not have PREFIX\_TREE DataBlockEncoding |  Minor | Operability, tooling | Peter Somogyi | Balazs Meszaros |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20625](https://issues.apache.org/jira/browse/HBASE-20625) | refactor some WALCellCodec related code |  Minor | wal | Jingyun Tian | Jingyun Tian |
| [HBASE-20810](https://issues.apache.org/jira/browse/HBASE-20810) | Include the procedure id in the exception message in HBaseAdmin for better debugging |  Major | Admin, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-20357](https://issues.apache.org/jira/browse/HBASE-20357) | AccessControlClient API Enhancement |  Major | security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20474](https://issues.apache.org/jira/browse/HBASE-20474) | Show non-RPC tasks on master/regionserver Web UI  by default |  Major | UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20396](https://issues.apache.org/jira/browse/HBASE-20396) | Remove redundant MBean from thrift JMX |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20617](https://issues.apache.org/jira/browse/HBASE-20617) | Upgrade/remove jetty-jsp |  Minor | . | Sakthi | Sakthi |
| [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | New metrics ReadRequestRate and WriteRequestRate |  Minor | metrics | Ankit Jain | Ankit Jain |
| [HBASE-20873](https://issues.apache.org/jira/browse/HBASE-20873) | Update doc for Endpoint-based Export |  Minor | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | PITA having to set WAL provider in two places |  Minor | Operability, wal | stack | Tak Lon (Stephen) Wu |
| [HBASE-19036](https://issues.apache.org/jira/browse/HBASE-19036) | Add action in Chaos Monkey to restart Active Namenode |  Minor | . | Monani Mihir | Monani Mihir |
| [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | Separate the config of block size when we do log splitting and write Hlog |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20845](https://issues.apache.org/jira/browse/HBASE-20845) | Support set the consistency for Gets and Scans in thrift2 |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | Separate region server report requests to new handlers |  Major | Performance | Yi Mei | Yi Mei |
| [HBASE-20985](https://issues.apache.org/jira/browse/HBASE-20985) | add two attributes when we do normalization |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20979](https://issues.apache.org/jira/browse/HBASE-20979) | Flaky test reporting should specify what JSON it needs and handle HTTP errors |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-20469](https://issues.apache.org/jira/browse/HBASE-20469) | Directory used for sidelining old recovered edits files should be made configurable |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-20387](https://issues.apache.org/jira/browse/HBASE-20387) | flaky infrastructure should work for all branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-21071](https://issues.apache.org/jira/browse/HBASE-21071) | HBaseTestingUtility::startMiniCluster() to use builder pattern |  Major | test | Mingliang Liu | Mingliang Liu |
| [HBASE-20749](https://issues.apache.org/jira/browse/HBASE-20749) | Upgrade our use of checkstyle to 8.6+ |  Minor | build, community | Sean Busbey | Mike Drob |
| [HBASE-21126](https://issues.apache.org/jira/browse/HBASE-21126) | Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes |  Minor | canary, Zookeeper | David Manning | David Manning |
| [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | Shaded client jars should always build in relevant phase to avoid confusion |  Major | build | stack | Sean Busbey |
| [HBASE-21107](https://issues.apache.org/jira/browse/HBASE-21107) | add a metrics for netty direct memory |  Minor | IPC/RPC | huaxiang sun | huaxiang sun |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21129](https://issues.apache.org/jira/browse/HBASE-21129) | Clean up duplicate codes in #equals and #hashCode methods of Filter |  Minor | Filters | Reid Chan | Reid Chan |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20543](https://issues.apache.org/jira/browse/HBASE-20543) | Fix the flaky TestThriftHttpServer |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20560](https://issues.apache.org/jira/browse/HBASE-20560) | Revisit the TestReplicationDroppedTables ut |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-20561](https://issues.apache.org/jira/browse/HBASE-20561) | The way we stop a ReplicationSource may cause the RS down |  Major | Replication | Duo Zhang | Guanghao Zhang |
| [HBASE-20775](https://issues.apache.org/jira/browse/HBASE-20775) | TestMultiParallel is flakey |  Major | Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20777](https://issues.apache.org/jira/browse/HBASE-20777) | RpcConnection could still remain opened after we shutdown the NettyRpcServer |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-20791](https://issues.apache.org/jira/browse/HBASE-20791) | RSGroupBasedLoadBalancer#setClusterMetrics should pass ClusterMetrics to its internalBalancer |  Major | rsgroup | chenxu | chenxu |
| [HBASE-20792](https://issues.apache.org/jira/browse/HBASE-20792) | info:servername and info:sn inconsistent for OPEN region |  Blocker | Region Assignment | Josh Elser | Josh Elser |
| [HBASE-20817](https://issues.apache.org/jira/browse/HBASE-20817) | Infinite loop when executing ReopenTableRegionsProcedure |  Blocker | Region Assignment | Duo Zhang | Ankit Singhal |
| [HBASE-20812](https://issues.apache.org/jira/browse/HBASE-20812) | Add defaults to Table Interface so implementors don't have to |  Major | . | stack | stack |
| [HBASE-20825](https://issues.apache.org/jira/browse/HBASE-20825) | Fix pre and post hooks of CloneSnapshot and RestoreSnapshot for Access checks |  Major | security | Romil Choksi | Ankit Singhal |
| [HBASE-20822](https://issues.apache.org/jira/browse/HBASE-20822) | TestAsyncNonMetaRegionLocator is flakey |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-20784](https://issues.apache.org/jira/browse/HBASE-20784) | Will lose the SNAPSHOT suffix if we get the version of RS from ServerManager |  Minor | master, UI | Duo Zhang | Duo Zhang |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-20865](https://issues.apache.org/jira/browse/HBASE-20865) | CreateTableProcedure is stuck in retry loop in CREATE\_TABLE\_WRITE\_FS\_LAYOUT state |  Major | amv2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20879](https://issues.apache.org/jira/browse/HBASE-20879) | Compacting memstore config should handle lower case |  Major | . | Tushar | Ted Yu |
| [HBASE-20869](https://issues.apache.org/jira/browse/HBASE-20869) | Endpoint-based Export use incorrect user to write to destination |  Major | Coprocessors | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-6028](https://issues.apache.org/jira/browse/HBASE-6028) | Implement a cancel for in-progress compactions |  Minor | regionserver | Derek Wollenstein | Mohit Goel |
| [HBASE-20901](https://issues.apache.org/jira/browse/HBASE-20901) | Reducing region replica has no effect |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-19893](https://issues.apache.org/jira/browse/HBASE-19893) | restore\_snapshot is broken in master branch when region splits |  Critical | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20908](https://issues.apache.org/jira/browse/HBASE-20908) | Infinite loop on regionserver if region replica are reduced |  Major | read replicas | Ankit Singhal | Ankit Singhal |
| [HBASE-20928](https://issues.apache.org/jira/browse/HBASE-20928) | Rewrite calculation of midpoint in binarySearch functions to prevent overflow |  Minor | io | saurabh singh | saurabh singh |
| [HBASE-20932](https://issues.apache.org/jira/browse/HBASE-20932) | Effective MemStoreSize::hashCode() |  Major | . | Mingliang Liu | Mingliang Liu |
| [HBASE-20927](https://issues.apache.org/jira/browse/HBASE-20927) | RSGroupAdminEndpoint doesn't handle clearing dead servers if they are not processed yet. |  Major | . | Sergey Soldatov | Sergey Soldatov |
| [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | Upgrade our hadoop versions to 2.7.7 and 3.0.3 |  Critical | java, security | stack | Duo Zhang |
| [HBASE-20829](https://issues.apache.org/jira/browse/HBASE-20829) | Remove the addFront assertion in MasterProcedureScheduler.doAdd |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |
| [HBASE-21005](https://issues.apache.org/jira/browse/HBASE-21005) | Maven site configuration causes downstream projects to get a directory named ${project.basedir} |  Minor | build | Matt Burgess | Josh Elser |
| [HBASE-21047](https://issues.apache.org/jira/browse/HBASE-21047) | Object creation of StoreFileScanner thru constructor and close may leave refCount to -1 |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21062](https://issues.apache.org/jira/browse/HBASE-21062) | WALFactory has misleading notion of "default" |  Major | wal | Josh Elser | Josh Elser |
| [HBASE-21074](https://issues.apache.org/jira/browse/HBASE-21074) | JDK7 branches need to pass "-Dhttps.protocols=TLSv1.2" to maven when building |  Major | build, community, test | Sean Busbey | Sean Busbey |
| [HBASE-21058](https://issues.apache.org/jira/browse/HBASE-21058) | Nightly tests for branches 1 fail to build ref guide |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20705](https://issues.apache.org/jira/browse/HBASE-20705) | Having RPC Quota on a table prevents Space quota to be recreated/removed |  Major | . | Biju Nair | Sakthi |
| [HBASE-21032](https://issues.apache.org/jira/browse/HBASE-21032) | ScanResponses contain only one cell each |  Major | Performance, Scanners | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-20666](https://issues.apache.org/jira/browse/HBASE-20666) | Unsuccessful table creation leaves entry in hbase:rsgroup table |  Minor | . | Biju Nair | Xu Cang |
| [HBASE-20648](https://issues.apache.org/jira/browse/HBASE-20648) | HBASE-19364 "Truncate\_preserve fails with table when replica region \> 1" for master branch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20614](https://issues.apache.org/jira/browse/HBASE-20614) | REST scan API with incorrect filter text file throws HTTP 503 Service Unavailable error |  Minor | REST | Nihal Jain | Nihal Jain |
| [HBASE-19008](https://issues.apache.org/jira/browse/HBASE-19008) | Add missing equals or hashCode method(s) to stock Filter implementations |  Major | . | Ted Yu | liubangchen |
| [HBASE-21101](https://issues.apache.org/jira/browse/HBASE-21101) | Remove the waitUntilAllRegionsAssigned call after split in TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-20978](https://issues.apache.org/jira/browse/HBASE-20978) | [amv2] Worker terminating UNNATURALLY during MoveRegionProcedure |  Critical | amv2 | stack | Allan Yang |
| [HBASE-20772](https://issues.apache.org/jira/browse/HBASE-20772) | Controlled shutdown fills Master log with the disturbing message "No matching procedure found for rit=OPEN, location=ZZZZ, table=YYYYY, region=XXXX transition to CLOSED |  Major | logging | stack | stack |
| [HBASE-20890](https://issues.apache.org/jira/browse/HBASE-20890) | PE filterScan seems to be stuck forever |  Minor | . | Vikas Vishwakarma | Abhishek Goyal |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-20968](https://issues.apache.org/jira/browse/HBASE-20968) | list\_procedures\_test fails due to no matching regex |  Major | shell, test | Ted Yu | Duo Zhang |
| [HBASE-21084](https://issues.apache.org/jira/browse/HBASE-21084) | When cloning a snapshot including a split parent region, the split parent region of the cloned table will be online |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21128](https://issues.apache.org/jira/browse/HBASE-21128) | TestAsyncRegionAdminApi.testAssignRegionAndUnassignRegion is broken |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21136](https://issues.apache.org/jira/browse/HBASE-21136) | NPE in MetricsTableSourceImpl.updateFlushTime |  Major | metrics | Guanghao Zhang | Duo Zhang |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20741](https://issues.apache.org/jira/browse/HBASE-20741) | Split of a region with replicas creates all daughter regions and its replica in same server |  Major | read replicas | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Major | tooling | Mike Drob | Colin Garcia |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21052](https://issues.apache.org/jira/browse/HBASE-21052) | After restoring a snapshot, table.jsp page for the table gets stuck |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | [amv2] Tool to parse a directory of MasterProcWALs standalone |  Major | amv2, test | stack | stack |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell is always returned when using QualifierFilter |  Major | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21173](https://issues.apache.org/jira/browse/HBASE-21173) | Remove the duplicate HRegion#close in TestHRegion |  Minor | test | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21021](https://issues.apache.org/jira/browse/HBASE-21021) | Result returned by Append operation should be ordered |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak Lon (Stephen) Wu | Tak Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20838](https://issues.apache.org/jira/browse/HBASE-20838) | Include hbase-server in precommit test if CommonFSUtils is changed |  Major | . | Yu Li | Yu Li |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |
| [HBASE-21161](https://issues.apache.org/jira/browse/HBASE-21161) | Enable the test added in HBASE-20741 that was removed accidentally |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21138](https://issues.apache.org/jira/browse/HBASE-21138) | Close HRegion instance at the end of every test in TestHRegion |  Major | . | Ted Yu | Mingliang Liu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19936](https://issues.apache.org/jira/browse/HBASE-19936) | Introduce a new base class for replication peer procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20481](https://issues.apache.org/jira/browse/HBASE-20481) | Replicate entries from same region serially in ReplicationEndpoint for serial replication |  Major | . | Duo Zhang | Zheng Hu |
| [HBASE-18569](https://issues.apache.org/jira/browse/HBASE-18569) | Add prefetch support for async region locator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-20776](https://issues.apache.org/jira/browse/HBASE-20776) | Update branch-2 version to 2.2.0-SNAPSHOT |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19764](https://issues.apache.org/jira/browse/HBASE-19764) | Fix Checkstyle errors in hbase-endpoint |  Minor | . | Jan Hentschel | Guangxu Cheng |
| [HBASE-20193](https://issues.apache.org/jira/browse/HBASE-20193) | Basic Replication Web UI - Regionserver |  Critical | Replication, Usability | Jingyun Tian | Jingyun Tian |
| [HBASE-20244](https://issues.apache.org/jira/browse/HBASE-20244) | NoSuchMethodException when retrieving private method decryptEncryptedDataEncryptionKey from DFSClient |  Blocker | wal | Ted Yu | Ted Yu |
| [HBASE-20839](https://issues.apache.org/jira/browse/HBASE-20839) | Fallback to FSHLog if we can not instantiated AsyncFSWAL when user does not specify AsyncFSWAL explicitly |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-20831](https://issues.apache.org/jira/browse/HBASE-20831) | Copy master doc into branch-2.1 and edit to make it suit 2.1.0 |  Blocker | documentation | Duo Zhang | Duo Zhang |
| [HBASE-20847](https://issues.apache.org/jira/browse/HBASE-20847) | The parent procedure of RegionTransitionProcedure may not have the table lock |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20860](https://issues.apache.org/jira/browse/HBASE-20860) | Merged region's RIT state may not be cleaned after master restart |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20875](https://issues.apache.org/jira/browse/HBASE-20875) | MemStoreLABImp::copyIntoCell uses 7% CPU when writing |  Major | Performance | stack | stack |
| [HBASE-20853](https://issues.apache.org/jira/browse/HBASE-20853) | Polish "Add defaults to Table Interface so Implementors don't have to" |  Major | API | stack | Balazs Meszaros |
| [HBASE-20914](https://issues.apache.org/jira/browse/HBASE-20914) | Trim Master memory usage |  Major | master | stack | stack |
| [HBASE-20846](https://issues.apache.org/jira/browse/HBASE-20846) | Restore procedure locks when master restarts |  Major | . | Allan Yang | Duo Zhang |
| [HBASE-20878](https://issues.apache.org/jira/browse/HBASE-20878) | Data loss if merging regions while ServerCrashProcedure executing |  Critical | amv2 | Allan Yang | Allan Yang |
| [HBASE-20939](https://issues.apache.org/jira/browse/HBASE-20939) | There will be race when we call suspendIfNotReady and then throw ProcedureSuspendedException |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-19369](https://issues.apache.org/jira/browse/HBASE-19369) | HBase Should use Builder Pattern to Create Log Files while using WAL on Erasure Coding |  Major | . | Alex Leblang | Mike Drob |
| [HBASE-20950](https://issues.apache.org/jira/browse/HBASE-20950) | Helper method to configure secure DFS cluster for tests |  Major | test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20893](https://issues.apache.org/jira/browse/HBASE-20893) | Data loss if splitting region while ServerCrashProcedure executing |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20885](https://issues.apache.org/jira/browse/HBASE-20885) | Remove entry for RPC quota from hbase:quota when RPC quota is removed. |  Minor | . | Sakthi | Sakthi |
| [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | Remove RPC quotas when the associated table/Namespace is dropped off |  Minor | . | Sakthi | Sakthi |
| [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | Revert the change of serializing TimeRangeTracker |  Critical | . | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21025](https://issues.apache.org/jira/browse/HBASE-21025) | Add cache for TableStateManager |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20975](https://issues.apache.org/jira/browse/HBASE-20975) | Lock may not be taken or released while rolling back procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21016](https://issues.apache.org/jira/browse/HBASE-21016) | Find another way to test the backoff mechanism in TRSP |  Major | amv2, test | Duo Zhang |  |
| [HBASE-21094](https://issues.apache.org/jira/browse/HBASE-21094) | Remove the explicit timeout config for TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21093](https://issues.apache.org/jira/browse/HBASE-21093) | Move TestCreateTableProcedure.testMRegions to a separated file |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21095](https://issues.apache.org/jira/browse/HBASE-21095) | The timeout retry logic for several procedures are broken after master restarts |  Critical | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | Block out HBCK1 in hbase2 |  Major | hbck | stack | stack |
| [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | Create and implement HbckService in master |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-21017](https://issues.apache.org/jira/browse/HBASE-21017) | Revisit the expected states for open/close |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20862](https://issues.apache.org/jira/browse/HBASE-20862) | Address 2.1.0 Compatibility Report Issues |  Blocker | compatibility | Mike Drob | Mike Drob |
| [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | Improve RpcServer TRACE logging |  Major | Operability | Esteban Gutierrez | Krish Dey |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Minor | . | Mike Drob | Mike Drob |


