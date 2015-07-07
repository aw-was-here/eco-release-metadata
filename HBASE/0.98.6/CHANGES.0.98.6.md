
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

## Release 0.98.6 - 2014-09-11

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11865](https://issues.apache.org/jira/browse/HBASE-11865) | Result implements CellScannable; rather it should BE a CellScanner |  Major | . | stack | stack |
| [HBASE-11846](https://issues.apache.org/jira/browse/HBASE-11846) | HStore#assertBulkLoadHFileOk should log if a full HFile verification will be performed during a bulkload |  Trivial | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11841](https://issues.apache.org/jira/browse/HBASE-11841) | [0.98] Option for disabling location prefetch |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11828](https://issues.apache.org/jira/browse/HBASE-11828) | callers of SeverName.valueOf should use equals and not == |  Minor | Client | Sean Busbey | Sean Busbey |
| [HBASE-11821](https://issues.apache.org/jira/browse/HBASE-11821) | [ImportTSV] Abstract labels tags creation into pluggable Interface |  Major | mapreduce, security | Anoop Sam John | Anoop Sam John |
| [HBASE-11810](https://issues.apache.org/jira/browse/HBASE-11810) | Access SSL Passwords through Credential Provider API |  Major | security | Larry McCay | Larry McCay |
| [HBASE-11774](https://issues.apache.org/jira/browse/HBASE-11774) | Avoid allocating unnecessary tag iterators |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11757](https://issues.apache.org/jira/browse/HBASE-11757) | Provide a common base abstract class for both RegionObserver and MasterObserver |  Major | . | Andrew Purtell | Matteo Bertozzi |
| [HBASE-11754](https://issues.apache.org/jira/browse/HBASE-11754) | [Shell] Record table property SPLITS\_FILE in descriptor |  Trivial | . | chendihao | chendihao |
| [HBASE-11749](https://issues.apache.org/jira/browse/HBASE-11749) | Better error logging when coprocessors loading has failed. |  Trivial | Coprocessors, Usability | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11748](https://issues.apache.org/jira/browse/HBASE-11748) | Cleanup and add pool usage tracing to Compression |  Trivial | io | Nick Dimiduk | Nick Dimiduk |
| [HBASE-11742](https://issues.apache.org/jira/browse/HBASE-11742) | Backport HBASE-7987 and HBASE-11185 to 0.98 |  Major | mapreduce, snapshots | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11731](https://issues.apache.org/jira/browse/HBASE-11731) | Add option to only run a subset of the shell tests |  Minor | build, shell | Sean Busbey | Sean Busbey |
| [HBASE-11706](https://issues.apache.org/jira/browse/HBASE-11706) | Set versions for VerifyReplication |  Minor | mapreduce | cuijianwei | cuijianwei |
| [HBASE-11702](https://issues.apache.org/jira/browse/HBASE-11702) | Better introspection of long running compactions |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11701](https://issues.apache.org/jira/browse/HBASE-11701) | Start and end of memstore flush log should be on the same level |  Trivial | Usability | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11697](https://issues.apache.org/jira/browse/HBASE-11697) | Improve the 'Too many blocks' message on UI blockcache status page |  Minor | . | Andrew Purtell | Mikhail Antonov |
| [HBASE-11674](https://issues.apache.org/jira/browse/HBASE-11674) | LoadIncrementalHFiles should be more verbose after unrecoverable error |  Minor | mapreduce | Jan Lukavsky | Jan Lukavsky |
| [HBASE-11667](https://issues.apache.org/jira/browse/HBASE-11667) | Comment ClientScanner logic for NSREs. |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-11553](https://issues.apache.org/jira/browse/HBASE-11553) | Abstract visibility label related services into an interface |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-11438](https://issues.apache.org/jira/browse/HBASE-11438) | [Visibility Controller] Support UTF8 character as Visibility Labels |  Major | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-11326](https://issues.apache.org/jira/browse/HBASE-11326) | Use an InputFormat for ExportSnapshot |  Minor | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8298](https://issues.apache.org/jira/browse/HBASE-8298) | In shell, provide alias of 'desc' for 'describe' |  Trivial | shell | Hari Sekhon | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11887](https://issues.apache.org/jira/browse/HBASE-11887) | Memory retention in branch-1; millions of instances of LiteralByteString for column qualifier and value |  Critical | Protobufs | stack | stack |
| [HBASE-11886](https://issues.apache.org/jira/browse/HBASE-11886) | The creator of the table should have all permissions on the table |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-11878](https://issues.apache.org/jira/browse/HBASE-11878) | TestVisibilityLabelsWithDistributedLogReplay#testAddVisibilityLabelsOnRSRestart sometimes fails due to VisibilityController not yet initialized |  Major | . | Ted Yu | Ted Yu |
| [HBASE-11876](https://issues.apache.org/jira/browse/HBASE-11876) | RegionScanner.nextRaw(...) should not update metrics |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-11868](https://issues.apache.org/jira/browse/HBASE-11868) | Data loss in hlog when the hdfs is unavailable |  Blocker | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11863](https://issues.apache.org/jira/browse/HBASE-11863) | WAL files are not archived and stays in the WAL directory after splitting |  Blocker | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11857](https://issues.apache.org/jira/browse/HBASE-11857) | Restore ReaderBase.initAfterCompression() and WALCellCodec.create(Configuration, CompressionContext) |  Blocker | . | Ted Yu | Ted Yu |
| [HBASE-11856](https://issues.apache.org/jira/browse/HBASE-11856) | hbase-common needs a log4j.properties resource for handling unit test logging output |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11844](https://issues.apache.org/jira/browse/HBASE-11844) | region\_mover.rb load enters an infinite loop if region already present on target server |  Minor | scripts | Stephen Veiss | Stephen Veiss |
| [HBASE-11837](https://issues.apache.org/jira/browse/HBASE-11837) | Scanner from RegionCoprocessorEnvironment.getTable(TableName) returns no local data |  Major | Coprocessors | James Taylor | Jeffrey Zhong |
| [HBASE-11823](https://issues.apache.org/jira/browse/HBASE-11823) | Cleanup javadoc warnings. |  Minor | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11816](https://issues.apache.org/jira/browse/HBASE-11816) | Initializing custom Metrics implementation failed in Mapper or Reducer |  Minor | metrics | Huafeng Wang | Huafeng Wang |
| [HBASE-11814](https://issues.apache.org/jira/browse/HBASE-11814) | TestAssignmentManager.testCloseFailed() and testOpenCloseRacing() is flaky |  Minor | . | Virag Kothari | Virag Kothari |
| [HBASE-11813](https://issues.apache.org/jira/browse/HBASE-11813) | CellScanner#advance may overflow stack |  Blocker | . | Andrew Purtell | stack |
| [HBASE-11802](https://issues.apache.org/jira/browse/HBASE-11802) | Scan copy constructor doesn't copy reversed member variable |  Minor | . | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-11794](https://issues.apache.org/jira/browse/HBASE-11794) | StripeStoreFlusher causes NullPointerException |  Critical | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-11789](https://issues.apache.org/jira/browse/HBASE-11789) | LoadIncrementalHFiles is not picking up the -D option |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11788](https://issues.apache.org/jira/browse/HBASE-11788) | hbase is not deleting the cell when a Put with a KeyValue, KeyValue.Type.Delete is submitted |  Major | . | Cristian Armaselu | Srikanth Srungarapu |
| [HBASE-11773](https://issues.apache.org/jira/browse/HBASE-11773) | Wrong field used for protobuf construction in RegionStates. |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-11766](https://issues.apache.org/jira/browse/HBASE-11766) | Backdoor CoprocessorHConnection is no longer being used for local writes |  Major | . | James Taylor | Andrew Purtell |
| [HBASE-11755](https://issues.apache.org/jira/browse/HBASE-11755) | VisibilityController returns the wrong value for preBalanceSwitch() |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11745](https://issues.apache.org/jira/browse/HBASE-11745) | FilterAllFilter should return ReturnCode.SKIP |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11733](https://issues.apache.org/jira/browse/HBASE-11733) | Avoid copy-paste in Master/Region CoprocessorHost |  Trivial | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11728](https://issues.apache.org/jira/browse/HBASE-11728) | Data loss while scanning using PREFIX\_TREE DATA-BLOCK-ENCODING |  Critical | Scanners | wuchengzhi | ramkrishna.s.vasudevan |
| [HBASE-11727](https://issues.apache.org/jira/browse/HBASE-11727) | Assignment wait time error in case of ServerNotRunningYetException |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11726](https://issues.apache.org/jira/browse/HBASE-11726) | Master should fail-safe if starting with a pre 0.96 layout |  Critical | master | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11725](https://issues.apache.org/jira/browse/HBASE-11725) | Backport failover checking change to 1.0 |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11716](https://issues.apache.org/jira/browse/HBASE-11716) | LoadTestDataGeneratorWithVisibilityLabels should handle Delete mutations |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-11708](https://issues.apache.org/jira/browse/HBASE-11708) | RegionSplitter incorrectly calculates splitcount |  Minor | Admin, util | Sean Busbey | louis hust |
| [HBASE-11705](https://issues.apache.org/jira/browse/HBASE-11705) | callQueueSize should be decremented in a fail-fast scenario |  Critical | IPC/RPC | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-11687](https://issues.apache.org/jira/browse/HBASE-11687) | No need to abort on postOpenDeployTasks exception if region opening is cancelled |  Minor | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-11678](https://issues.apache.org/jira/browse/HBASE-11678) | BucketCache ramCache fills heap after running a few hours |  Critical | BlockCache | stack | stack |
| [HBASE-11659](https://issues.apache.org/jira/browse/HBASE-11659) | Region state RPC call is not idempotent |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11627](https://issues.apache.org/jira/browse/HBASE-11627) | RegionSplitter's rollingSplit terminated with "/ by zero", and the \_balancedSplit file was not deleted properly |  Major | Admin, util | louis hust | Sean Busbey |
| [HBASE-11617](https://issues.apache.org/jira/browse/HBASE-11617) | incorrect AgeOfLastAppliedOp and AgeOfLastShippedOp in replication Metrics when no new replication OP |  Minor | Replication | Demai Ni | Demai Ni |
| [HBASE-11589](https://issues.apache.org/jira/browse/HBASE-11589) | AccessControlException should be a not retriable exception |  Major | IPC/RPC | Kashif | Qiang Tian |
| [HBASE-11550](https://issues.apache.org/jira/browse/HBASE-11550) | Custom value for BUCKET\_CACHE\_BUCKETS\_KEY should be sorted |  Trivial | . | Ted Yu | Gustavo Anatoly |
| [HBASE-11536](https://issues.apache.org/jira/browse/HBASE-11536) | Puts of region location to Meta may be out of order which causes inconsistent of region location |  Critical | Region Assignment | Liu Shaohui | Liu Shaohui |
| [HBASE-11535](https://issues.apache.org/jira/browse/HBASE-11535) | ReplicationPeer map is not thread safe |  Major | Replication | Virag Kothari | Virag Kothari |
| [HBASE-11531](https://issues.apache.org/jira/browse/HBASE-11531) | RegionStates for regions under region-in-transition znode are not updated on startup |  Major | Region Assignment | Virag Kothari | Jimmy Xiang |
| [HBASE-10205](https://issues.apache.org/jira/browse/HBASE-10205) | ConcurrentModificationException in BucketAllocator |  Minor | regionserver | Arjen Roodselaar | Arjen Roodselaar |
| [HBASE-9746](https://issues.apache.org/jira/browse/HBASE-9746) | RegionServer can't start when replication tries to replicate to an unknown host |  Major | . | Lars Hofhansl | Lars Hofhansl |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11713](https://issues.apache.org/jira/browse/HBASE-11713) | Adding hbase shell unit test coverage for visibility labels. |  Minor | security, shell | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-11615](https://issues.apache.org/jira/browse/HBASE-11615) | TestZKLessAMOnCluster.testForceAssignWhileClosing failed on Jenkins |  Major | master | Mike Drob | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11740](https://issues.apache.org/jira/browse/HBASE-11740) | RegionStates.getRegionAssignments() gets stuck on clone |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-11610](https://issues.apache.org/jira/browse/HBASE-11610) | Enhance remote meta updates |  Major | . | Jimmy Xiang | Virag Kothari |
| [HBASE-11546](https://issues.apache.org/jira/browse/HBASE-11546) | Backport ZK-less region assignment to 0.98 |  Major | . | Virag Kothari | Virag Kothari |
| [HBASE-11059](https://issues.apache.org/jira/browse/HBASE-11059) | ZK-less region assignment |  Major | master, Region Assignment | Jimmy Xiang | Jimmy Xiang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-11800](https://issues.apache.org/jira/browse/HBASE-11800) | Coprocessor service methods in HTableInterface should be annotated public |  Major | Client | Gary Helmling | Gary Helmling |
| [HBASE-11762](https://issues.apache.org/jira/browse/HBASE-11762) | Record the class name of Codec in WAL header |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-11735](https://issues.apache.org/jira/browse/HBASE-11735) | Document Configurable Bucket Sizes in bucketCache |  Major | documentation | Misty Stanley-Jones | Misty Stanley-Jones |
| [HBASE-9875](https://issues.apache.org/jira/browse/HBASE-9875) | NamespaceJanitor chore is not used |  Major | . | Ted Yu | Mikhail Antonov |


