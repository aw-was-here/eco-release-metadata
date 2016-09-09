
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

## Release 0.95.2 - 2013-08-15

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8861](https://issues.apache.org/jira/browse/HBASE-8861) | Remove ReplicationState completely |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-8877](https://issues.apache.org/jira/browse/HBASE-8877) | Reentrant row locks |  Major | Coprocessors, regionserver | Dave Latham | Dave Latham |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5959](https://issues.apache.org/jira/browse/HBASE-5959) | Add other load balancers |  Major | master | Elliott Clark | Elliott Clark |
| [HBASE-8504](https://issues.apache.org/jira/browse/HBASE-8504) | HTable.getRegionsInRange() should provide a non-cached API |  Major | Client | Alan Choi | Matteo Bertozzi |
| [HBASE-4050](https://issues.apache.org/jira/browse/HBASE-4050) | Update HBase metrics framework to metrics2 framework |  Major | metrics | Eric Yang | Elliott Clark |
| [HBASE-8753](https://issues.apache.org/jira/browse/HBASE-8753) | Provide new delete flag which can delete all cells under a column-family which have designated timestamp |  Major | Deletes, Scanners | Honghua Feng | Honghua Feng |
| [HBASE-7875](https://issues.apache.org/jira/browse/HBASE-7875) | introduce a compaction switch in HBase Shell |  Trivial | shell | Liang Xie | Liang Xie |
| [HBASE-7826](https://issues.apache.org/jira/browse/HBASE-7826) | Improve Hbase Thrift v1 to return results in sorted order |  Minor | Thrift | Shivendra Pratap Singh | Shivendra Pratap Singh |
| [HBASE-8663](https://issues.apache.org/jira/browse/HBASE-8663) | a HBase Shell command to list the tables replicated from current cluster |  Critical | Replication, shell | Demai Ni | Demai Ni |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7902](https://issues.apache.org/jira/browse/HBASE-7902) | deletes may be removed during minor compaction,  in non-standard compaction schemes [rename enums] |  Minor | Compaction | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8209](https://issues.apache.org/jira/browse/HBASE-8209) | Improve LoadTest extensibility |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-8350](https://issues.apache.org/jira/browse/HBASE-8350) | enable ChaosMonkey to run commands as different users |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8446](https://issues.apache.org/jira/browse/HBASE-8446) | Allow parallel snapshot of different tables |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8609](https://issues.apache.org/jira/browse/HBASE-8609) | Make the CopyTable support startRow, stopRow options |  Minor | mapreduce | Liu Shaohui | Liu Shaohui |
| [HBASE-8740](https://issues.apache.org/jira/browse/HBASE-8740) | Generate unique table names in TestAccessController |  Minor | . | Alex Araujo |  |
| [HBASE-8683](https://issues.apache.org/jira/browse/HBASE-8683) | Add major compaction support in CompactionTool |  Minor | Compaction | Jerry He | Jerry He |
| [HBASE-8685](https://issues.apache.org/jira/browse/HBASE-8685) | [REST] Minor fix to XMLSchema.xsd and ScannerModel |  Minor | REST | Julian Zhou | Julian Zhou |
| [HBASE-8716](https://issues.apache.org/jira/browse/HBASE-8716) | Fixups/Improvements for graceful\_stop.sh/region\_mover.rb |  Major | . | stack | stack |
| [HBASE-8696](https://issues.apache.org/jira/browse/HBASE-8696) | Fixup for logs that show when running hbase-it tests. |  Major | . | stack | stack |
| [HBASE-8001](https://issues.apache.org/jira/browse/HBASE-8001) | Avoid unnecessary lazy seek |  Major | regionserver | Raymond Liu | Raymond Liu |
| [HBASE-8617](https://issues.apache.org/jira/browse/HBASE-8617) | Introducing a new config to disable writes during recovering |  Major | regionserver | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8669](https://issues.apache.org/jira/browse/HBASE-8669) | change exploring compaction policy to prefer smaller compactions on blocked stores |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8702](https://issues.apache.org/jira/browse/HBASE-8702) | Make WALEditCodec pluggable |  Major | Replication, wal | Jesse Yates | Jesse Yates |
| [HBASE-6295](https://issues.apache.org/jira/browse/HBASE-6295) | Possible performance improvement in client batch operations: presplit and send in background |  Major | Client, Performance | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8692](https://issues.apache.org/jira/browse/HBASE-8692) | [AccessController] Restrict HTableDescriptor enumeration |  Major | Coprocessors, security | Andrew Purtell | Andrew Purtell |
| [HBASE-8800](https://issues.apache.org/jira/browse/HBASE-8800) | Return non-zero exit codes when a region server aborts |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8809](https://issues.apache.org/jira/browse/HBASE-8809) | Include deletes in the scan (setRaw) method does not respect the time range or the filter |  Major | Scanners | Vasu Mariyala | Lars Hofhansl |
| [HBASE-8812](https://issues.apache.org/jira/browse/HBASE-8812) | Avoid a wide line on the HMaster webUI if we have many ZooKeeper servers |  Minor | master | Fengdong Yu | Fengdong Yu |
| [HBASE-8737](https://issues.apache.org/jira/browse/HBASE-8737) | [replication] Change replication RPC to use cell blocks |  Critical | Replication | Chris Trezzo | stack |
| [HBASE-4360](https://issues.apache.org/jira/browse/HBASE-4360) | Maintain information on the time a RS went dead |  Minor | master | Harsh J | samar |
| [HBASE-8898](https://issues.apache.org/jira/browse/HBASE-8898) | Minor reformatting of hbase-default.xml and removal of comments that say what the 'default' is (since rarely agrees w/ actual setting) |  Major | . | stack | stack |
| [HBASE-8915](https://issues.apache.org/jira/browse/HBASE-8915) | protobuf message style |  Minor | Protobufs | Dan Burkert |  |
| [HBASE-8916](https://issues.apache.org/jira/browse/HBASE-8916) | Optimize usage of Jackson's ObjectMapper |  Trivial | . | Lars Francke | Lars Francke |
| [HBASE-8921](https://issues.apache.org/jira/browse/HBASE-8921) | [thrift2] Add GenericOptionsParser to Thrift 2 server |  Major | Thrift | Lars George | Lars George |
| [HBASE-8918](https://issues.apache.org/jira/browse/HBASE-8918) | Removes redundant identifiers from interfaces |  Minor | . | Lars Francke | Lars Francke |
| [HBASE-8660](https://issues.apache.org/jira/browse/HBASE-8660) | [rest] support secure REST access |  Major | REST, security | Jimmy Xiang |  |
| [HBASE-8961](https://issues.apache.org/jira/browse/HBASE-8961) | Make TestReplicationQueueFailover less integration-y by splitting it up |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8847](https://issues.apache.org/jira/browse/HBASE-8847) | Filter.transform() always applies unconditionally, even when combined in a FilterList |  Minor | Filters | Christophe Taton | Christophe Taton |
| [HBASE-8986](https://issues.apache.org/jira/browse/HBASE-8986) | Replace hardcoded special file/dir names with the relative HConstant |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8599](https://issues.apache.org/jira/browse/HBASE-8599) | HLogs in ZK are not cleaned up when replication lag is minimal |  Major | Replication | Varun Sharma | Varun Sharma |
| [HBASE-8690](https://issues.apache.org/jira/browse/HBASE-8690) | Reduce unnecessary getFileStatus hdfs calls in TTL hfile and hlog cleanners |  Minor | master | Liu Shaohui | Liu Shaohui |
| [HBASE-9033](https://issues.apache.org/jira/browse/HBASE-9033) | Add tracing to ReplicationSource and enable it in tests |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8439](https://issues.apache.org/jira/browse/HBASE-8439) | [replication] Remove ReplicationZookeeper class |  Blocker | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-8768](https://issues.apache.org/jira/browse/HBASE-8768) | Improve bulk load performance by moving key value construction from map phase to reduce phase. |  Major | mapreduce, Performance | rajeshbabu | rajeshbabu |
| [HBASE-8778](https://issues.apache.org/jira/browse/HBASE-8778) | Region assigments scan table directory making them slow for huge tables |  Critical | . | Dave Latham | Dave Latham |
| [HBASE-9126](https://issues.apache.org/jira/browse/HBASE-9126) | Make HFile MIN VERSION as 2 |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-7183](https://issues.apache.org/jira/browse/HBASE-7183) | print WARN message if hbase.replication.sizeOfLogQueue is too big |  Major | Replication | Sho Shimauchi | Michael Webster |
| [HBASE-8785](https://issues.apache.org/jira/browse/HBASE-8785) | revise zookeeper session timeout setting |  Critical | . | Sergey Shelukhin | Jean-Daniel Cryans |
| [HBASE-8322](https://issues.apache.org/jira/browse/HBASE-8322) | Re-enable hbase checksums by default |  Critical | Filesystem Integration | Enis Soztutar | Jean-Daniel Cryans |
| [HBASE-9077](https://issues.apache.org/jira/browse/HBASE-9077) | Make Web ui Fluid width |  Major | UI | Elliott Clark | Elliott Clark |
| [HBASE-6580](https://issues.apache.org/jira/browse/HBASE-6580) | Deprecate HTablePool in favor of HConnection.getTable(...) |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9139](https://issues.apache.org/jira/browse/HBASE-9139) | Independent timeout configuration for rpc channel between cluster nodes |  Minor | IPC/RPC, regionserver | Julian Zhou | Julian Zhou |
| [HBASE-8093](https://issues.apache.org/jira/browse/HBASE-8093) | Change the .META. table name for file system incompatibility |  Major | master, Region Assignment, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-9121](https://issues.apache.org/jira/browse/HBASE-9121) | Update HTrace to 2.00 and add new example usage. |  Major | . | Elliott Clark | Elliott Clark |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8021](https://issues.apache.org/jira/browse/HBASE-8021) | TestSplitTransactionOnCluster.testShouldThrowIOExceptionIfStoreFileSizeIsEmptyAndShouldSuccessfullyExecuteRollback() fails consistently |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8128](https://issues.apache.org/jira/browse/HBASE-8128) | HTable#put improvements |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8141](https://issues.apache.org/jira/browse/HBASE-8141) | Remove accidental uses of org.mortbay.log.Log |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-8232](https://issues.apache.org/jira/browse/HBASE-8232) | TestAccessController occasionally fails with IndexOutOfBoundsException |  Trivial | security, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8226](https://issues.apache.org/jira/browse/HBASE-8226) | HBaseTestingUtility#waitUntilAllRegionsAssigned won't return if it counts "too many" regions |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-8225](https://issues.apache.org/jira/browse/HBASE-8225) | [replication] minor code bug when registering ReplicationLogCleaner |  Minor | Replication | Jerry He | Jerry He |
| [HBASE-8192](https://issues.apache.org/jira/browse/HBASE-8192) | Logic errror causes infinite loop in HRegion.bulkLoadHFiles(List) |  Major | regionserver | Chenghao Jiang | Chenghao Jiang |
| [HBASE-8241](https://issues.apache.org/jira/browse/HBASE-8241) | Fix the bad dependency on netty from HDFS |  Major | build, Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8204](https://issues.apache.org/jira/browse/HBASE-8204) | Don't use hdfs append during lease recovery |  Major | MTTR, wal | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7401](https://issues.apache.org/jira/browse/HBASE-7401) | Remove warning message about running 'hbase migrate' |  Major | Usability | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8267](https://issues.apache.org/jira/browse/HBASE-8267) | Add some resources checker for tests |  Minor | build, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8287](https://issues.apache.org/jira/browse/HBASE-8287) | TestRegionMergeTransactionOnCluster failed in trunk build #4010 |  Minor | master | chunhui shen | chunhui shen |
| [HBASE-8413](https://issues.apache.org/jira/browse/HBASE-8413) | Snapshot verify region will always fail if the HFile has been archived |  Major | snapshots | Jerry He | Jerry He |
| [HBASE-8436](https://issues.apache.org/jira/browse/HBASE-8436) | SeekBefore returns wrong result with PREFIX\_TREE Encoding |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-8455](https://issues.apache.org/jira/browse/HBASE-8455) | Update ExportSnapshot to reflect changes in HBASE-7419 |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8476](https://issues.apache.org/jira/browse/HBASE-8476) | locateRegionInMeta should check the cache before doing the prefetch |  Minor | . | Amitanand Aiyer | Himanshu Vashishtha |
| [HBASE-8516](https://issues.apache.org/jira/browse/HBASE-8516) | FSUtils.create() fail with ViewFS |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8433](https://issues.apache.org/jira/browse/HBASE-8433) | CellComparator#compare returns incorrect result for faked KeyValue |  Critical | . | chunhui shen | chunhui shen |
| [HBASE-8639](https://issues.apache.org/jira/browse/HBASE-8639) | Poor performance of htable#getscanner in multithreaded environment due to DNS.getDefaultHost() being called in ScannerCallable#prepare() |  Major | . | Raymond Liu | Ted Yu |
| [HBASE-8640](https://issues.apache.org/jira/browse/HBASE-8640) | ServerName in master may not initialize with the configured ipc address of hbase.master.ipc.address |  Major | master | rajeshbabu | rajeshbabu |
| [HBASE-8666](https://issues.apache.org/jira/browse/HBASE-8666) | META region isn't fully recovered during master initialization when META region recovery had chained failures |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8680](https://issues.apache.org/jira/browse/HBASE-8680) | distributedLogReplay performance regression |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8712](https://issues.apache.org/jira/browse/HBASE-8712) | HFileLinkCleaner (FSUtils.listStatus) logs too much if links do not exists |  Major | . | Jean-Daniel Cryans | Matteo Bertozzi |
| [HBASE-8723](https://issues.apache.org/jira/browse/HBASE-8723) | HBase Intgration tests are failing because of new defaults. |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-8672](https://issues.apache.org/jira/browse/HBASE-8672) | Create an Integration test for Bulk Loads |  Major | regionserver, test | Elliott Clark | Elliott Clark |
| [HBASE-8706](https://issues.apache.org/jira/browse/HBASE-8706) | Some improvement in snapshot |  Major | snapshots | binlijin | Matteo Bertozzi |
| [HBASE-8742](https://issues.apache.org/jira/browse/HBASE-8742) | HTableDescriptor Properties not preserved when cloning |  Minor | snapshots | Micah Whitacre | Matteo Bertozzi |
| [HBASE-8745](https://issues.apache.org/jira/browse/HBASE-8745) | Fix src assembly so includes top-level src dir |  Major | build | stack | stack |
| [HBASE-8749](https://issues.apache.org/jira/browse/HBASE-8749) | Potential race condition between FSUtils.renameAndSetModifyTime() and HFile/LogCleaner |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-8757](https://issues.apache.org/jira/browse/HBASE-8757) | ZK throws IllegalStateException |  Major | Zookeeper | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8700](https://issues.apache.org/jira/browse/HBASE-8700) | IntegrationTestBigLinkedList can fail due to random number collision |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8665](https://issues.apache.org/jira/browse/HBASE-8665) | bad compaction priority behavior in queue can cause store to be blocked |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8624](https://issues.apache.org/jira/browse/HBASE-8624) | bin/local-{master-backup\|regionservers}.sh doesn't take --config arg |  Major | Usability | stack | rajeshbabu |
| [HBASE-8586](https://issues.apache.org/jira/browse/HBASE-8586) | Revisit of hbase-8483, "HConnectionManager can leak ZooKeeper connections when using deleteStaleConnection" |  Major | . | stack |  |
| [HBASE-8762](https://issues.apache.org/jira/browse/HBASE-8762) | Performance/operational penalty when calling HTable.get with a list of one Get |  Minor | Client | Jason Bray |  |
| [HBASE-8494](https://issues.apache.org/jira/browse/HBASE-8494) | TestRemoteAdmin#testClusterStatus should not assume 'requests' does not change |  Major | REST, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8786](https://issues.apache.org/jira/browse/HBASE-8786) | Creating a table with a Bloom filter on the shell is broken. |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-8788](https://issues.apache.org/jira/browse/HBASE-8788) | Edit of .proto files moving classes to better homes |  Major | . | stack | stack |
| [HBASE-8705](https://issues.apache.org/jira/browse/HBASE-8705) | RS holding META when restarted in a single node setup may hang infinitely without META assignment |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8787](https://issues.apache.org/jira/browse/HBASE-8787) | Merged region endkey is incorrect if one region has null endkey |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8750](https://issues.apache.org/jira/browse/HBASE-8750) | MetaServerShutdownHandler stucks if .META. assignment fails in previous attempt |  Major | MTTR | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8791](https://issues.apache.org/jira/browse/HBASE-8791) | Precommit hadoopqa is broke since -r1491656 |  Major | . | stack | stack |
| [HBASE-8733](https://issues.apache.org/jira/browse/HBASE-8733) | Update our hadoop2 in trunk and 0.95 to 2.0.5-alpha (We are currently 2.0.2) |  Major | . | stack | stack |
| [HBASE-8783](https://issues.apache.org/jira/browse/HBASE-8783) | RSSnapshotManager.ZKProcedureMemberRpcs may be initialized with the wrong server name |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8532](https://issues.apache.org/jira/browse/HBASE-8532) | [Webui] Bootstrap based webui compatibility for IE and also fix some page format issues. |  Minor | UI | Julian Zhou | Julian Zhou |
| [HBASE-8060](https://issues.apache.org/jira/browse/HBASE-8060) | "Num compacting KVs" diverges from "num compacted KVs" over time |  Major | Compaction, UI | Andrew Purtell | Sergey Shelukhin |
| [HBASE-8795](https://issues.apache.org/jira/browse/HBASE-8795) | bin/hbase zkcli cannot take arguments anymore |  Critical | scripts | Nicolas Liochon | Enis Soztutar |
| [HBASE-8782](https://issues.apache.org/jira/browse/HBASE-8782) | Thrift2 can not parse values when using framed transport |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8811](https://issues.apache.org/jira/browse/HBASE-8811) | REST service ignores misspelled "check=" parameter, causing unexpected mutations |  Critical | REST | Chip Salzenberg | Chip Salzenberg |
| [HBASE-8813](https://issues.apache.org/jira/browse/HBASE-8813) | Fix time b/w recoverLease invocations from HBASE 8449 |  Major | . | Varun Sharma | Varun Sharma |
| [HBASE-8790](https://issues.apache.org/jira/browse/HBASE-8790) | NullPointerException thrown when stopping regionserver |  Major | regionserver | Xiong LIU | Liang Xie |
| [HBASE-8802](https://issues.apache.org/jira/browse/HBASE-8802) | totalCompactingKVs may overflow |  Trivial | . | Chao Shi | Chao Shi |
| [HBASE-8501](https://issues.apache.org/jira/browse/HBASE-8501) | The hbase zkcli will connection failure the first and the second ip from ZooKeeperMainServerArg return connection string |  Major | Admin, Usability, Zookeeper | Bene Guo | stack |
| [HBASE-8794](https://issues.apache.org/jira/browse/HBASE-8794) | DependentColumnFilter.toString() throws NullPointerException |  Minor | Filters | Stefan Seelmann | Stefan Seelmann |
| [HBASE-8853](https://issues.apache.org/jira/browse/HBASE-8853) | The client connection is not cut when receiving the failure notification |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8797](https://issues.apache.org/jira/browse/HBASE-8797) | Prevent merging regions from moving during online merge |  Major | regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8781](https://issues.apache.org/jira/browse/HBASE-8781) | ImmutableBytesWritable constructor with another IBW as param need to consider the offset of the passed IBW |  Minor | . | Anoop Sam John | Anoop Sam John |
| [HBASE-8869](https://issues.apache.org/jira/browse/HBASE-8869) | incorrect javadoc for CompactionRequest.compareTo() |  Trivial | Compaction, documentation | Liang Xie | Liang Xie |
| [HBASE-8871](https://issues.apache.org/jira/browse/HBASE-8871) | The region server can crash at startup |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8867](https://issues.apache.org/jira/browse/HBASE-8867) | HLogUtils#getServerNameFromHLogDirectoryName does not take into account the -splitting extension |  Major | MTTR | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8729](https://issues.apache.org/jira/browse/HBASE-8729) | distributedLogReplay may hang during chained region server failure |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8799](https://issues.apache.org/jira/browse/HBASE-8799) | TestAccessController#testBulkLoad failing on trunk/0.95 |  Major | Coprocessors, security, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8789](https://issues.apache.org/jira/browse/HBASE-8789) | Add max RPC version to meta-region-server zk node. |  Major | IPC/RPC, Zookeeper | Elliott Clark | Elliott Clark |
| [HBASE-8776](https://issues.apache.org/jira/browse/HBASE-8776) | tweak retry settings some more (on trunk and 0.94) |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8883](https://issues.apache.org/jira/browse/HBASE-8883) | TestAdmin.testCloseRegionWhenServerNameIsEmpty failed with ArrayIndexOutOfBoundsException |  Major | . | stack | stack |
| [HBASE-8879](https://issues.apache.org/jira/browse/HBASE-8879) | Client Scanner spams the logs if there are lots of scanners. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-8814](https://issues.apache.org/jira/browse/HBASE-8814) | Possible NPE in split if a region has empty store files. |  Major | regionserver | rajeshbabu | rajeshbabu |
| [HBASE-8880](https://issues.apache.org/jira/browse/HBASE-8880) | Integration Tests shouldn't set the number or reties. |  Major | Client, test | Elliott Clark | Elliott Clark |
| [HBASE-8882](https://issues.apache.org/jira/browse/HBASE-8882) | Create an Integration Test to Test MTTR |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8864](https://issues.apache.org/jira/browse/HBASE-8864) | Fix 2 javadoc warnings |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-8893](https://issues.apache.org/jira/browse/HBASE-8893) | Verify that HTableDescriptor Properties are preserved when cloning |  Trivial | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8678](https://issues.apache.org/jira/browse/HBASE-8678) | Wrongly delete cells in some case which can not be deleted |  Major | REST | Eric Huang | Jean-Marc Spaggiari |
| [HBASE-8200](https://issues.apache.org/jira/browse/HBASE-8200) | Integration Test classes are not part of the default HBase classpath |  Major | test | Aleksandr Shulman | Enis Soztutar |
| [HBASE-8904](https://issues.apache.org/jira/browse/HBASE-8904) | Clean up IntegrationTestMTTR and add small features. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8888](https://issues.apache.org/jira/browse/HBASE-8888) | Tweak retry settings some more, \*some more\* |  Major | . | stack | stack |
| [HBASE-8842](https://issues.apache.org/jira/browse/HBASE-8842) | TestTokenAuthentication failing on hadoop2 build with "IllegalArgumentException: Can't get Kerberos realm" |  Major | hadoop2, security | stack | stack |
| [HBASE-8579](https://issues.apache.org/jira/browse/HBASE-8579) | TestDelayedRpc falis from time to time |  Major | IPC/RPC | stack |  |
| [HBASE-8910](https://issues.apache.org/jira/browse/HBASE-8910) | HMaster.abortNow shouldn't try to become a master again if it was stopped |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8924](https://issues.apache.org/jira/browse/HBASE-8924) | Master Can fail to come up after chaos monkey if the sleep time is too short. |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8695](https://issues.apache.org/jira/browse/HBASE-8695) | The HBase thrift service ignores XML configuration |  Major | Thrift | Brandon Forehand | Lars George |
| [HBASE-8917](https://issues.apache.org/jira/browse/HBASE-8917) | Minor cleanup and fixes for POM |  Major | . | Lars Francke | Lars Francke |
| [HBASE-8902](https://issues.apache.org/jira/browse/HBASE-8902) | IntegrationTestBulkLoad takes way too long |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8856](https://issues.apache.org/jira/browse/HBASE-8856) | Crash when attempting split with DelimitedKeyPrefixRegionSplitPolicy |  Major | . | Robert Dyer | Robert Dyer |
| [HBASE-8940](https://issues.apache.org/jira/browse/HBASE-8940) | TestRegionMergeTransactionOnCluster#testWholesomeMerge may fail due to race in opening region |  Major | . | Ted Yu | chunhui shen |
| [HBASE-8955](https://issues.apache.org/jira/browse/HBASE-8955) | TestStochasticLoadBalancer timedout |  Major | test | stack | stack |
| [HBASE-8909](https://issues.apache.org/jira/browse/HBASE-8909) | HBASE-6170 broke "hbase.regionserver.lease.period" config, we should support it for BC |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8952](https://issues.apache.org/jira/browse/HBASE-8952) | Missing error handling can cause RegionServer RPC thread to busy loop forever |  Major | IPC/RPC | Benoit Sigoure | Benoit Sigoure |
| [HBASE-8732](https://issues.apache.org/jira/browse/HBASE-8732) | HFileBlockDefaultEncodingContext isn't thread-safe but is used by all readers, breaks column encoding |  Critical | regionserver | Elliott Clark | Jean-Daniel Cryans |
| [HBASE-8965](https://issues.apache.org/jira/browse/HBASE-8965) | TestRemoteAdmin.testClusterStatus fails |  Major | test | stack | stack |
| [HBASE-8967](https://issues.apache.org/jira/browse/HBASE-8967) | Duplicate call to snapshotManager.stop() in HRegionServer |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-8981](https://issues.apache.org/jira/browse/HBASE-8981) | add a check on the ServerName parse |  Minor | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8982](https://issues.apache.org/jira/browse/HBASE-8982) | Useless logs in  ipc.RpcClient$Connection(584): Not able to close an output stream |  Major | regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8988](https://issues.apache.org/jira/browse/HBASE-8988) | Reuse the thread pool in the shell to not run out of threads |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8989](https://issues.apache.org/jira/browse/HBASE-8989) | TestFromClientSideWithCoprocessor.testClientPoolThreadLocal fails |  Major | . | stack | stack |
| [HBASE-8699](https://issues.apache.org/jira/browse/HBASE-8699) | Parameter to DistributedFileSystem#isFileClosed should be of type Path |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-8996](https://issues.apache.org/jira/browse/HBASE-8996) | TestHCM.testDeleteForZKConnLeak can go zombie |  Major | . | stack |  |
| [HBASE-8987](https://issues.apache.org/jira/browse/HBASE-8987) | ProtobufUtil.toException doesn't handle plain RemoteException, gets a NoSuchMethodException |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-8432](https://issues.apache.org/jira/browse/HBASE-8432) | a table with unbalanced regions will balance indefinitely with the 'org.apache.hadoop.hbase.master.DefaultLoadBalancer' |  Major | Balancer | Wang Qiang |  |
| [HBASE-8975](https://issues.apache.org/jira/browse/HBASE-8975) | NPE/HTTP 500 when opening the master's web UI too early |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9007](https://issues.apache.org/jira/browse/HBASE-9007) | TestReplicationKillSlaveRS.killOneSlaveRS fails |  Major | test | stack | Jean-Daniel Cryans |
| [HBASE-9009](https://issues.apache.org/jira/browse/HBASE-9009) | Disable TestMultiTableInputFormat |  Major | . | stack |  |
| [HBASE-9006](https://issues.apache.org/jira/browse/HBASE-9006) | RPC code requires cellBlockCodecClass even though one is defined by default |  Minor | IPC/RPC | Benoit Sigoure | Benoit Sigoure |
| [HBASE-8935](https://issues.apache.org/jira/browse/HBASE-8935) | IntegrationTestBigLinkedList fails under load on 0.94 due to some scan issues - add logging |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9018](https://issues.apache.org/jira/browse/HBASE-9018) | Add timeouts on all tests in TestHLogSplit |  Major | test | stack | stack |
| [HBASE-9021](https://issues.apache.org/jira/browse/HBASE-9021) | Create a unit test for ReplicationHLogReaderManager |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9008](https://issues.apache.org/jira/browse/HBASE-9008) | Reenable TestReplicationKillSlaveRS.killOneSlaveRS |  Major | test | stack | Jean-Daniel Cryans |
| [HBASE-9034](https://issues.apache.org/jira/browse/HBASE-9034) | hbase-daemon.sh swallows start up errors |  Major | scripts | Elliott Clark | Elliott Clark |
| [HBASE-8764](https://issues.apache.org/jira/browse/HBASE-8764) | Some MasterMonitorCallable should retry |  Major | IPC/RPC | Elliott Clark | stack |
| [HBASE-9044](https://issues.apache.org/jira/browse/HBASE-9044) | Merging regions throws NPE |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9048](https://issues.apache.org/jira/browse/HBASE-9048) | HCM throws NullPointerException under load |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9051](https://issues.apache.org/jira/browse/HBASE-9051) | TestHFileOutputFormat.testExcludeAllFromMinorCompaction fails |  Major | test | stack | stack |
| [HBASE-9062](https://issues.apache.org/jira/browse/HBASE-9062) | Remove TestReplicationKillRs\* tests temporarily |  Major | test | stack | stack |
| [HBASE-8875](https://issues.apache.org/jira/browse/HBASE-8875) | incorrect javadoc for EXCLUDE\_FROM\_MINOR\_COMPACTION |  Trivial | Compaction | Liang Xie | Liang Xie |
| [HBASE-8698](https://issues.apache.org/jira/browse/HBASE-8698) | potential thread creation in MetaScanner.metaScan |  Major | Client | Kireet Reddy | Lars Hofhansl |
| [HBASE-9060](https://issues.apache.org/jira/browse/HBASE-9060) | ExportSnapshot job fails if target path contains percentage character |  Minor | snapshots | Jerry He | Jerry He |
| [HBASE-8874](https://issues.apache.org/jira/browse/HBASE-8874) | PutCombiner is skipping KeyValues while combining puts of same row during bulkload |  Critical | mapreduce | rajeshbabu | rajeshbabu |
| [HBASE-9038](https://issues.apache.org/jira/browse/HBASE-9038) | Compaction WALEdit gives NPEs with Replication enabled |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-9012](https://issues.apache.org/jira/browse/HBASE-9012) | TestBlockReorder.testBlockLocationReorder fails |  Major | test | stack | Nicolas Liochon |
| [HBASE-8846](https://issues.apache.org/jira/browse/HBASE-8846) | Revert the package name change for TableExistsException |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-9082](https://issues.apache.org/jira/browse/HBASE-9082) | A bunch of tests have client retries only but bulid boxes are contended and overloaded |  Major | test | stack | stack |
| [HBASE-9052](https://issues.apache.org/jira/browse/HBASE-9052) | Prevent split/merged region from assigning again |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8548](https://issues.apache.org/jira/browse/HBASE-8548) | postOpen hook called twice |  Major | regionserver | Roger Ruiz-Carrillo | Nicolas Liochon |
| [HBASE-9049](https://issues.apache.org/jira/browse/HBASE-9049) | Generalize ServerCallable creation to support custom callables |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-7634](https://issues.apache.org/jira/browse/HBASE-7634) | Replication handling of changes to peer clusters is inefficient |  Major | Replication | Gabriel Reid | Gabriel Reid |
| [HBASE-9092](https://issues.apache.org/jira/browse/HBASE-9092) | OpenRegion could be ignored by mistake |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8488](https://issues.apache.org/jira/browse/HBASE-8488) | HBase transitive dependencies not being pulled in when building apps like Flume which depend on HBase |  Blocker | build | Roshan Naik | stack |
| [HBASE-9085](https://issues.apache.org/jira/browse/HBASE-9085) | Integration Tests fails because of bug in teardown phase where the cluster state is not being restored properly. |  Major | test | gautam | gautam |
| [HBASE-8067](https://issues.apache.org/jira/browse/HBASE-8067) | TestHFileArchiving.testArchiveOnTableDelete sometimes fails |  Major | Admin, master, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9041](https://issues.apache.org/jira/browse/HBASE-9041) | TestFlushSnapshotFromClient.testConcurrentSnapshottingAttempts fails |  Critical | snapshots, test | stack | Matteo Bertozzi |
| [HBASE-8964](https://issues.apache.org/jira/browse/HBASE-8964) | TestAccessController.testGlobalAuthorizationForNewRegisteredRS |  Critical | test | stack | stack |
| [HBASE-9001](https://issues.apache.org/jira/browse/HBASE-9001) | TestThriftServerCmdLine.testRunThriftServer[0] failed |  Major | test | stack | stack |
| [HBASE-8998](https://issues.apache.org/jira/browse/HBASE-8998) | TestSnapshotCloneIndependence.testOnlineSnapshotMetadataChangesIndependent fails |  Major | test | stack | Matteo Bertozzi |
| [HBASE-8993](https://issues.apache.org/jira/browse/HBASE-8993) | TestHRegionOnCluster.testDataCorrectnessReplayingRecoveredEdits fails |  Major | test | stack | stack |
| [HBASE-8985](https://issues.apache.org/jira/browse/HBASE-8985) | Not enough logging in SplitLogManager |  Major | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8972](https://issues.apache.org/jira/browse/HBASE-8972) | TestCreateTableHandler.testMasterRestartAfterEnablingNodeIsCreated failed |  Major | test | stack | stack |
| [HBASE-9119](https://issues.apache.org/jira/browse/HBASE-9119) | hbase.mapreduce.hfileoutputformat.blocksize should configure with blocksize of a table |  Major | . | stack | rajeshbabu |
| [HBASE-8957](https://issues.apache.org/jira/browse/HBASE-8957) | TestDrainingServer. testDrainingServerWithAbort fails |  Major | . | stack | stack |
| [HBASE-8933](https://issues.apache.org/jira/browse/HBASE-8933) | TestSplitTransactionOnCluster fails because "Region not moved off .META. server" |  Major | test | stack | stack |
| [HBASE-8931](https://issues.apache.org/jira/browse/HBASE-8931) | TestTableLockManager.testTableReadLock fails |  Major | test | stack | stack |
| [HBASE-8920](https://issues.apache.org/jira/browse/HBASE-8920) | TestZKBasedOpenCloseRegion.testReOpenRegion fails occasionally |  Major | . | stack | stack |
| [HBASE-8854](https://issues.apache.org/jira/browse/HBASE-8854) | TestScannersFromClientSide.testScanBatch failed with 'There should have room before prefetching is submitted' |  Major | test | stack | stack |
| [HBASE-9031](https://issues.apache.org/jira/browse/HBASE-9031) | ImmutableBytesWritable.toString() should downcast the bytes before converting to hex string |  Minor | io | Aditya Kishore | Aditya Kishore |
| [HBASE-8899](https://issues.apache.org/jira/browse/HBASE-8899) | Could not open a region on a server where it is being closed |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8983](https://issues.apache.org/jira/browse/HBASE-8983) | HBaseConnection#deleteAllConnections does not always delete |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9093](https://issues.apache.org/jira/browse/HBASE-9093) | Hbase client API: Restore the writeToWal method |  Major | Client, Usability | Hari Shreedharan |  |
| [HBASE-9087](https://issues.apache.org/jira/browse/HBASE-9087) | Handlers being blocked during reads |  Major | Performance | Pablo Medina | Elliott Clark |
| [HBASE-9120](https://issues.apache.org/jira/browse/HBASE-9120) | ClassFinder logs errors that are not |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9096](https://issues.apache.org/jira/browse/HBASE-9096) | Disable split during log replay |  Major | . | Devaraj Das | Jeffrey Zhong |
| [HBASE-9115](https://issues.apache.org/jira/browse/HBASE-9115) | HTableInterface.append operation may overwrites values |  Critical | . | Aleksandr B | Ted Yu |
| [HBASE-9099](https://issues.apache.org/jira/browse/HBASE-9099) | logReplay could trigger double region assignment |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-7980](https://issues.apache.org/jira/browse/HBASE-7980) | TestZKInterProcessReadWriteLock fails occasionally in QA test run |  Trivial | test | Ted Yu | Enis Soztutar |
| [HBASE-9095](https://issues.apache.org/jira/browse/HBASE-9095) | AssignmentManager's handleRegion should respect the single threaded nature of the processing |  Major | Region Assignment | Devaraj Das | Devaraj Das |
| [HBASE-8627](https://issues.apache.org/jira/browse/HBASE-8627) | HBCK can not fix meta not assigned issue |  Major | hbck | Anoop Sam John | Anoop Sam John |
| [HBASE-9129](https://issues.apache.org/jira/browse/HBASE-9129) | Scanner prefetching leaks scanners. |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-7325](https://issues.apache.org/jira/browse/HBASE-7325) | Replication reacts slowly on a lightly-loaded cluster |  Minor | Replication | Gabriel Reid | Gabriel Reid |
| [HBASE-9156](https://issues.apache.org/jira/browse/HBASE-9156) | 2000ms timeout for some client calls |  Blocker | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-9079](https://issues.apache.org/jira/browse/HBASE-9079) | FilterList getNextKeyHint skips rows that should be included in the results |  Major | Filters | Viral Bajaria | Viral Bajaria |
| [HBASE-9158](https://issues.apache.org/jira/browse/HBASE-9158) | Serious bug in cyclic replication |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9166](https://issues.apache.org/jira/browse/HBASE-9166) | TestSplitTransactionOnCluster broke since HBASE-8408 (Namespaces) |  Major | test | stack | stack |
| [HBASE-9142](https://issues.apache.org/jira/browse/HBASE-9142) | Mutation#getFamilyMap() return type change between HBase 94 and 96 breaks downstream apps |  Critical | . | Hari Shreedharan | Jonathan Hsieh |
| [HBASE-7639](https://issues.apache.org/jira/browse/HBASE-7639) | Enable online schema update by default |  Major | . | Enis Soztutar | Elliott Clark |
| [HBASE-9170](https://issues.apache.org/jira/browse/HBASE-9170) | TestStoreFileBlockCacheSummary.testBlockCacheSummary broke since HBASE-8408 (Namespaces) in 0.95 |  Critical | test | stack | stack |
| [HBASE-8726](https://issues.apache.org/jira/browse/HBASE-8726) | Create an Integration Test for online schema change |  Major | Admin | Elliott Clark | Elliott Clark |
| [HBASE-9097](https://issues.apache.org/jira/browse/HBASE-9097) | Set HBASE\_CLASSPATH before rest of the classpath |  Major | scripts | Jesse Yates | Jesse Yates |
| [HBASE-9174](https://issues.apache.org/jira/browse/HBASE-9174) | javac hangs compiling hbase-example module since namespaces went in |  Major | build | stack | stack |
| [HBASE-9181](https://issues.apache.org/jira/browse/HBASE-9181) | Fix javadoc warnings introduce by namespaces |  Major | documentation | stack | stack |
| [HBASE-8615](https://issues.apache.org/jira/browse/HBASE-8615) | HLog Compression may fail due to Hadoop fs input stream returning partial bytes |  Critical | Replication | Ted Yu | Ted Yu |
| [HBASE-9098](https://issues.apache.org/jira/browse/HBASE-9098) | During recovery use ZK as the source of truth for region state |  Blocker | regionserver | Devaraj Das | Jeffrey Zhong |
| [HBASE-9152](https://issues.apache.org/jira/browse/HBASE-9152) | Not able to find HMaster and HRegionServer processes with grep by process name on ps result because of large classpath as argument. |  Critical | scripts | rajeshbabu | rajeshbabu |
| [HBASE-9185](https://issues.apache.org/jira/browse/HBASE-9185) | mvn site target fails when building with Maven 3.1 |  Minor | build | Steve Loughran | stack |
| [HBASE-8018](https://issues.apache.org/jira/browse/HBASE-8018) | Add "Flaky Testcase Detector" tool into dev-tools |  Major | util | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8913](https://issues.apache.org/jira/browse/HBASE-8913) | Remove ".replogs" reference as we no longer use it |  Minor | master | Harsh J | Harsh J |
| [HBASE-9192](https://issues.apache.org/jira/browse/HBASE-9192) | IntegrationTestBigLinkedListWithChaosMonkey never exits if there is an error |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-9146](https://issues.apache.org/jira/browse/HBASE-9146) | TestHTablePool hangs when run as part of runMediumTests profile |  Major | test | Rajesh Venkatachalam | Rajesh Venkatachalam |
| [HBASE-9189](https://issues.apache.org/jira/browse/HBASE-9189) | IncreasingToUpperBoundRegionSplitPolicy.shouldSplit() should check all the stores before returning. |  Major | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9197](https://issues.apache.org/jira/browse/HBASE-9197) | TestAdmin#testShouldCloseTheRegionBasedOnTheEncodedRegionName shuts down the namespaces table and never starts it up again |  Major | test | stack | stack |
| [HBASE-9184](https://issues.apache.org/jira/browse/HBASE-9184) | Ignore zk assign event if region is not known in transition |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9198](https://issues.apache.org/jira/browse/HBASE-9198) | RpcClient#call could hang |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9199](https://issues.apache.org/jira/browse/HBASE-9199) | Call duration is not accurate |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9205](https://issues.apache.org/jira/browse/HBASE-9205) | fix javadoc warning violation introduced by HBASE-9142 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-9173](https://issues.apache.org/jira/browse/HBASE-9173) | replication\_admin#get\_peer\_state(id) in ruby script pointing to undefined method `getPeerState' |  Critical | scripts | rajeshbabu | Jean-Daniel Cryans |
| [HBASE-9200](https://issues.apache.org/jira/browse/HBASE-9200) | HFilePrettyPrinter finds incorrect largest row |  Minor | . | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-9196](https://issues.apache.org/jira/browse/HBASE-9196) | Remove dead code related to KeyValue |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7391](https://issues.apache.org/jira/browse/HBASE-7391) | Review/improve HLog compression's memory consumption |  Major | . | Jean-Daniel Cryans | ramkrishna.s.vasudevan |
| [HBASE-9144](https://issues.apache.org/jira/browse/HBASE-9144) | Leases class has contention that's not needed |  Critical | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-9088](https://issues.apache.org/jira/browse/HBASE-9088) | TestSplitLogManager.testMultipleResubmits fails |  Major | . | stack | Jimmy Xiang |
| [HBASE-8719](https://issues.apache.org/jira/browse/HBASE-8719) | Fix responseTooSlow formatting |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-9224](https://issues.apache.org/jira/browse/HBASE-9224) | Print out name of the method we do not support rather than throw NPE |  Major | IPC/RPC | stack | stack |
| [HBASE-9177](https://issues.apache.org/jira/browse/HBASE-9177) | Cluster UUID is not properly parsable after rewriting to PB. |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-9232](https://issues.apache.org/jira/browse/HBASE-9232) | Fix javadoc warning and a few findbugs items. |  Major | test | stack | stack |
| [HBASE-9164](https://issues.apache.org/jira/browse/HBASE-9164) | Convert List\<? extends Cell\> anti pattern to List\<Cell\> pattern. |  Blocker | Client | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8667](https://issues.apache.org/jira/browse/HBASE-8667) | Master and Regionserver not able to communicate if both bound to different network interfaces on the same machine. |  Critical | IPC/RPC | rajeshbabu | rajeshbabu |
| [HBASE-9226](https://issues.apache.org/jira/browse/HBASE-9226) | Thrift host and port are hardcoded in thrift2 DemoClient.java |  Minor | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9227](https://issues.apache.org/jira/browse/HBASE-9227) | RESTServer should handle the loginUser correctly |  Blocker | . | Devaraj Das | Devaraj Das |
| [HBASE-9238](https://issues.apache.org/jira/browse/HBASE-9238) | bug in Mutation::getFamilyMap |  Critical | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-9324](https://issues.apache.org/jira/browse/HBASE-9324) | TestProcedureMember#testMemberCommitException, testSimpleRun & testMemberCommitCommsFailure are flaky on Suse OS |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9329](https://issues.apache.org/jira/browse/HBASE-9329) | SnapshotManager should check for directory existance before throwing a warning. |  Trivial | snapshots | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-9344](https://issues.apache.org/jira/browse/HBASE-9344) | RegionServer not shutting down upon KeeperException in open region |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9182](https://issues.apache.org/jira/browse/HBASE-9182) | Allow non-admin users to list all table names |  Major | . | Francis Liu | Andrew Purtell |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8260](https://issues.apache.org/jira/browse/HBASE-8260) | create generic integration test for trunk and 94 that is more deterministic, can be run for longer and is less aggressive |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8860](https://issues.apache.org/jira/browse/HBASE-8860) | TestTableLockManager#testTableReadLock times out sometimes |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8857](https://issues.apache.org/jira/browse/HBASE-8857) | TestGet#testDynamicFilter fails sometimes |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8907](https://issues.apache.org/jira/browse/HBASE-8907) | TestIOFencing.testFencingAroundCompaction fails sometimes |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7770](https://issues.apache.org/jira/browse/HBASE-7770) | minor integration test framework fixes |  Minor | . | Francis Liu | Francis Liu |
| [HBASE-8934](https://issues.apache.org/jira/browse/HBASE-8934) | Fix bunch of flaky tests |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8845](https://issues.apache.org/jira/browse/HBASE-8845) | Add integration test for split, online merge, and compaction |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8928](https://issues.apache.org/jira/browse/HBASE-8928) | Make ChaosMonkey & LoadTest tools extensible, to allow addition of more actions and policies. |  Major | test | gautam | gautam |
| [HBASE-8994](https://issues.apache.org/jira/browse/HBASE-8994) | Adding log to chaos monkey actions to show what're performed |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8984](https://issues.apache.org/jira/browse/HBASE-8984) | Test online snapshots with online merge |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9017](https://issues.apache.org/jira/browse/HBASE-9017) | Consolidate ChaosMonkey's random objects |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9020](https://issues.apache.org/jira/browse/HBASE-9020) | Make hbase-it HBASE\_HOME configurable |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9090](https://issues.apache.org/jira/browse/HBASE-9090) | cleanup snapshot tests setup/teardown code |  Major | snapshots, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-9106](https://issues.apache.org/jira/browse/HBASE-9106) | Do not fail TestAcidGuarantees for exceptions on table flush |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8941](https://issues.apache.org/jira/browse/HBASE-8941) | TestAccessController.testGlobalPermissionList failed with IndexOutOfBoundsException |  Major | . | Jimmy Xiang | stack |
| [HBASE-8646](https://issues.apache.org/jira/browse/HBASE-8646) | Intermittent TestIOFencing#testFencingAroundCompaction failure due to region getting stuck in compaction |  Major | . | Ted Yu | Enis Soztutar |
| [HBASE-8954](https://issues.apache.org/jira/browse/HBASE-8954) | TestSplitLogWorker#testPreemptTask failed |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8816](https://issues.apache.org/jira/browse/HBASE-8816) | Add support of loading multiple tables into LoadTestTool |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-9161](https://issues.apache.org/jira/browse/HBASE-9161) | TestAssignmentManagerOnCluster.testSSHWhenDisablingTableRegionsInOpeningOrPendingOpenState could hang |  Minor | Region Assignment, test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9155](https://issues.apache.org/jira/browse/HBASE-9155) | Enhance LoadTestTool to support updates |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9160](https://issues.apache.org/jira/browse/HBASE-9160) | TestNamespaceUpgrade fails on hadoop 2.1 due to existence of .snapshot directory in tar ball |  Critical | test | Ted Yu | Francis Liu |
| [HBASE-9225](https://issues.apache.org/jira/browse/HBASE-9225) | Enable TRACE logging in TestReplicationBase |  Major | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8703](https://issues.apache.org/jira/browse/HBASE-8703) | [WINDOWS] Timed-out processes exit with non-zero code causing HealthChecker to report incorrectly |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8344](https://issues.apache.org/jira/browse/HBASE-8344) | Improve the assignment when node failures happen to choose the secondary RS as the new primary RS |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-7074](https://issues.apache.org/jira/browse/HBASE-7074) | Document Metrics 2 |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-8766](https://issues.apache.org/jira/browse/HBASE-8766) | [WINDOWS] bin/hbase.cmd zkcli is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8774](https://issues.apache.org/jira/browse/HBASE-8774) | Add BatchSize and Filter to Thrift2 |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8876](https://issues.apache.org/jira/browse/HBASE-8876) | Addendum to HBASE-8774 Add BatchSize and Filter to Thrift2 - Add BatchSize Test |  Major | Thrift | Lars George | Lars George |
| [HBASE-8819](https://issues.apache.org/jira/browse/HBASE-8819) | Port HBASE-5428 to Thrift 2 |  Major | Thrift | Lars George | Lars George |
| [HBASE-8890](https://issues.apache.org/jira/browse/HBASE-8890) | Fix Thrift 2 example class location |  Major | Thrift | Lars George | Lars George |
| [HBASE-8826](https://issues.apache.org/jira/browse/HBASE-8826) | Ensure HBASE-8695 is covered in Thrift 2 |  Major | Thrift | Lars George | Lars George |
| [HBASE-8375](https://issues.apache.org/jira/browse/HBASE-8375) | Durability setting per table |  Major | . | Lars Hofhansl | Enis Soztutar |
| [HBASE-8832](https://issues.apache.org/jira/browse/HBASE-8832) | Ensure HBASE-4658  is supported by Thrift 2 |  Major | Thrift | Lars George | Hamed Madani |
| [HBASE-8938](https://issues.apache.org/jira/browse/HBASE-8938) | Thrift2 does not close scanner instance |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8662](https://issues.apache.org/jira/browse/HBASE-8662) | [rest] support impersonation |  Major | REST, security | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8661](https://issues.apache.org/jira/browse/HBASE-8661) | [rest] support REST over https |  Major | REST, security | Jimmy Xiang |  |
| [HBASE-8838](https://issues.apache.org/jira/browse/HBASE-8838) | [WINDOWS] FileLink assumptions are broken under NTFS |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8779](https://issues.apache.org/jira/browse/HBASE-8779) | Add mutateRow method support to Thrift2 |  Major | Thrift | duanhongyi | Hamed Madani |
| [HBASE-8977](https://issues.apache.org/jira/browse/HBASE-8977) | Disable TestLogRollAbort |  Major | test | stack | stack |
| [HBASE-8979](https://issues.apache.org/jira/browse/HBASE-8979) | JVMClusterUtil will join forever on a stuck regionserver \<--- zombie maker!!! |  Major | test | stack | stack |
| [HBASE-8946](https://issues.apache.org/jira/browse/HBASE-8946) | Add a new function to Thrift 2 to open scanner, get results and close scanner |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-8948](https://issues.apache.org/jira/browse/HBASE-8948) | Bound table pool size in Thrift 2 server |  Major | Thrift | Lars George | Lars George |
| [HBASE-8947](https://issues.apache.org/jira/browse/HBASE-8947) | Thrift 2 : Replace "bool writeToWAL" with "TDurability durability" |  Major | Thrift | Hamed Madani | Hamed Madani |
| [HBASE-9067](https://issues.apache.org/jira/browse/HBASE-9067) | Temporarily disable a few tests in TestReplicationTrackerZKImpl |  Major | test | stack | stack |
| [HBASE-9071](https://issues.apache.org/jira/browse/HBASE-9071) | Disable TestHCM#testClusterStatus because fails in IDEs, etc. |  Major | test | stack | stack |
| [HBASE-9073](https://issues.apache.org/jira/browse/HBASE-9073) | Up retries on TestSnapshotFromMaster; retries only once |  Major | test | stack |  |
| [HBASE-9078](https://issues.apache.org/jira/browse/HBASE-9078) | Downstream build including hbase-client fails because can't find com.sun.jdmk:jmxtools |  Major | build | stack | stack |
| [HBASE-8408](https://issues.apache.org/jira/browse/HBASE-8408) | Implement namespace |  Major | . | Francis Liu | Francis Liu |
| [HBASE-9163](https://issues.apache.org/jira/browse/HBASE-9163) | Add timeouts to HBaseAdmin because hanging/zombying |  Major | test | stack | stack |
| [HBASE-9179](https://issues.apache.org/jira/browse/HBASE-9179) | TestSecureLoadIncrementalHFilesSplitRecovery hangs |  Major | test | stack | stack |
| [HBASE-9130](https://issues.apache.org/jira/browse/HBASE-9130) | Invert the name of namespace commands to match the snapshots and replication form |  Blocker | . | stack | stack |
| [HBASE-9091](https://issues.apache.org/jira/browse/HBASE-9091) | Update ByteRange to maintain consumer's position |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8201](https://issues.apache.org/jira/browse/HBASE-8201) | OrderedBytes: an ordered encoding strategy |  Major | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8693](https://issues.apache.org/jira/browse/HBASE-8693) | DataType: provide extensible type API |  Blocker | Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8409](https://issues.apache.org/jira/browse/HBASE-8409) | Security support for namespaces |  Blocker | . | Francis Liu | Vandana Ayyalasomayajula |
| [HBASE-9187](https://issues.apache.org/jira/browse/HBASE-9187) | HBaseAdmin#testTableExists can go zombie |  Critical | test | stack | stack |
| [HBASE-9128](https://issues.apache.org/jira/browse/HBASE-9128) | Drop the '.' prefix from names under hbase.rootdir after namespaces goes in |  Critical | . | stack | stack |
| [HBASE-9191](https://issues.apache.org/jira/browse/HBASE-9191) | Update Loadbalancer method to throw HBaseIOException |  Major | . | Francis Liu | Francis Liu |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6891](https://issues.apache.org/jira/browse/HBASE-6891) | Hadoop 2 unit test failures |  Critical | . | Andrew Purtell | Jonathan Hsieh |
| [HBASE-8629](https://issues.apache.org/jira/browse/HBASE-8629) | More log edits: we log too much |  Major | . | stack | stack |
| [HBASE-8219](https://issues.apache.org/jira/browse/HBASE-8219) | Align Offline Merge with Online Merge |  Major | regionserver | Matteo Bertozzi | chunhui shen |
| [HBASE-8796](https://issues.apache.org/jira/browse/HBASE-8796) | Add mention of new builds mailing list to site |  Major | site | stack | stack |
| [HBASE-8792](https://issues.apache.org/jira/browse/HBASE-8792) | Organize EventType Java Docs |  Trivial | . | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-8829](https://issues.apache.org/jira/browse/HBASE-8829) | Improve failed TestMetaScanner assert message so can see where/why failure |  Major | . | stack | stack |
| [HBASE-8895](https://issues.apache.org/jira/browse/HBASE-8895) | Misc: replace hbase.client.retries.number w/ define and remove unused imports |  Major | . | stack | stack |
| [HBASE-8962](https://issues.apache.org/jira/browse/HBASE-8962) | Clean up code and remove regular log splitting |  Minor | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-9111](https://issues.apache.org/jira/browse/HBASE-9111) | Put back TestReplicationKill\* except for the MasterRSCompressed one |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8978](https://issues.apache.org/jira/browse/HBASE-8978) | Restore TestLogRollAbort upon review |  Major | test | stack | Gary Helmling |
| [HBASE-8224](https://issues.apache.org/jira/browse/HBASE-8224) | Publish hbase build against h1 and h2 adding '-hadoop1' or '-hadoop2' to version string |  Blocker | . | stack | stack |
| [HBASE-9061](https://issues.apache.org/jira/browse/HBASE-9061) | Put back TestReplicationKillMasterRSCompressed when fixed over in HBASE-8615 |  Critical | test | stack | Ted Yu |
| [HBASE-9229](https://issues.apache.org/jira/browse/HBASE-9229) | Fix release warning |  Critical | build | Elliott Clark | Elliott Clark |
| [HBASE-9193](https://issues.apache.org/jira/browse/HBASE-9193) | Make what Chaos monkey actions run configurable per test. |  Major | . | Elliott Clark | Elliott Clark |


