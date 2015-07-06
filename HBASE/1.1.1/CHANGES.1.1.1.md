
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

## Release 1.1.1 - 2015-06-29

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13894](https://issues.apache.org/jira/browse/HBASE-13894) | Avoid visitor alloc each call of ByteBufferArray get/putMultiple() |  Minor | regionserver | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13846](https://issues.apache.org/jira/browse/HBASE-13846) | Run MiniCluster on top of other MiniDfsCluster |  Minor | test | Jesse Yates | Jesse Yates |
| [HBASE-13761](https://issues.apache.org/jira/browse/HBASE-13761) | Optimize FuzzyRowFilter |  Minor | Filters | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-13671](https://issues.apache.org/jira/browse/HBASE-13671) | More classes to add to the invoking repository of org.apache.hadoop.hbase.mapreduce.driver |  Major | mapreduce | li xiang | li xiang |
| [HBASE-13344](https://issues.apache.org/jira/browse/HBASE-13344) | Add enforcer rule that matches our JDK support statement |  Minor | build | Sean Busbey | Matt Warhaftig |
| [HBASE-13247](https://issues.apache.org/jira/browse/HBASE-13247) | Change BufferedMutatorExample to use addColumn() since add() is deprecated |  Trivial | Client | Lars George | Nick Dimiduk |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13935](https://issues.apache.org/jira/browse/HBASE-13935) | Orphaned namespace table ZK node should not prevent master to start |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13905](https://issues.apache.org/jira/browse/HBASE-13905) | TestRecoveredEdits.testReplayWorksThoughLotsOfFlushing failing consistently on branch-1.1 |  Critical | regionserver, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13904](https://issues.apache.org/jira/browse/HBASE-13904) | TestAssignmentManager.testBalanceOnMasterFailoverScenarioWithOfflineNode failing consistently on branch-1.1 |  Critical | master, Region Assignment, test | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13892](https://issues.apache.org/jira/browse/HBASE-13892) | Scanner with all results filtered out results in NPE |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13878](https://issues.apache.org/jira/browse/HBASE-13878) | Set hbase.fs.tmp.dir config in HBaseTestingUtility.java for Phoenix UT to use |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13873](https://issues.apache.org/jira/browse/HBASE-13873) | LoadTestTool addAuthInfoToConf throws UnsupportedOperationException |  Major | integration tests | sunyerui | sunyerui |
| [HBASE-13847](https://issues.apache.org/jira/browse/HBASE-13847) | getWriteRequestCount function in HRegionServer uses int variable to return the count. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13845](https://issues.apache.org/jira/browse/HBASE-13845) | Expire of one region server carrying meta can bring down the master |  Major | master | Jerry He | Jerry He |
| [HBASE-13834](https://issues.apache.org/jira/browse/HBASE-13834) | Evict count not properly passed to HeapMemoryTuner. |  Major | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13831](https://issues.apache.org/jira/browse/HBASE-13831) | TestHBaseFsck#testParallelHbck is flaky against hadoop 2.6+ |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13826](https://issues.apache.org/jira/browse/HBASE-13826) | Unable to create table when group acls are appropriately set. |  Major | security | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13824](https://issues.apache.org/jira/browse/HBASE-13824) | TestGenerateDelegationToken: Master fails to start in Windows environment |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13821](https://issues.apache.org/jira/browse/HBASE-13821) | WARN if hbase.bucketcache.percentage.in.combinedcache is set |  Minor | regionserver, Usability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13812](https://issues.apache.org/jira/browse/HBASE-13812) | Deleting of last Column Family of a table should not be allowed |  Major | master | Sophia Feng | Enis Soztutar |
| [HBASE-13811](https://issues.apache.org/jira/browse/HBASE-13811) | Splitting WALs, we are filtering out too many edits -\> DATALOSS |  Critical | wal | stack | stack |
| [HBASE-13809](https://issues.apache.org/jira/browse/HBASE-13809) | TestRowTooBig should use HDFS directory for its region directory |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13802](https://issues.apache.org/jira/browse/HBASE-13802) | Procedure V2: Master fails to come up due to rollback of create namespace table |  Major | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13800](https://issues.apache.org/jira/browse/HBASE-13800) | TestStore#testDeleteExpiredStoreFiles should create unique data/log directory for each call |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13789](https://issues.apache.org/jira/browse/HBASE-13789) | ForeignException should not be sent to the client |  Minor | Client, master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13777](https://issues.apache.org/jira/browse/HBASE-13777) | Table fragmentation display triggers NPE on master status page |  Major | UI | Lars George | Lars George |
| [HBASE-13767](https://issues.apache.org/jira/browse/HBASE-13767) | Allow ZKAclReset to set and not just clear ZK ACLs |  Trivial | Operability, Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13746](https://issues.apache.org/jira/browse/HBASE-13746) | list\_replicated\_tables command is not listing table in hbase shell. |  Major | shell | Y. SREENIVASULU REDDY | Abhishek Kumar |
| [HBASE-13734](https://issues.apache.org/jira/browse/HBASE-13734) | Improper timestamp checking with VisibilityScanDeleteTracker |  Major | security | Anoop Sam John | Anoop Sam John |
| [HBASE-13733](https://issues.apache.org/jira/browse/HBASE-13733) | Failed MiniZooKeeperCluster startup did not shutdown ZK servers |  Major | Zookeeper | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13732](https://issues.apache.org/jira/browse/HBASE-13732) | TestHBaseFsck#testParallelWithRetriesHbck fails intermittently |  Minor | hbck, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13731](https://issues.apache.org/jira/browse/HBASE-13731) | TestReplicationAdmin should clean up MiniZKCluster resource |  Trivial | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13729](https://issues.apache.org/jira/browse/HBASE-13729) | Old hbase.regionserver.global.memstore.upperLimit and lowerLimit properties are ignored if present |  Critical | regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13721](https://issues.apache.org/jira/browse/HBASE-13721) | Improve shell scan performances when using LIMIT |  Major | shell | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13717](https://issues.apache.org/jira/browse/HBASE-13717) | TestBoundedRegionGroupingProvider#setMembershipDedups need to set HDFS diretory for WAL |  Minor | wal | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13704](https://issues.apache.org/jira/browse/HBASE-13704) | Hbase throws OutOfOrderScannerNextException when MultiRowRangeFilter is used |  Major | Client | Aleksandr Maksymenko | Aleksandr Maksymenko |
| [HBASE-13663](https://issues.apache.org/jira/browse/HBASE-13663) | HMaster fails to restart 'HMaster: Failed to become active master' |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13653](https://issues.apache.org/jira/browse/HBASE-13653) | Uninitialized HRegionServer#walFactory may result in NullPointerException at region server startup​ |  Major | hbase | Romil Choksi | Ted Yu |
| [HBASE-13635](https://issues.apache.org/jira/browse/HBASE-13635) | Regions stuck in transition because master is incorrectly assumed dead |  Major | master, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13625](https://issues.apache.org/jira/browse/HBASE-13625) | Use HDFS for HFileOutputFormat2 partitioner's path |  Major | mapreduce | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13612](https://issues.apache.org/jira/browse/HBASE-13612) | TestRegionFavoredNodes doesn't guard against setup failure |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13611](https://issues.apache.org/jira/browse/HBASE-13611) | update clover to work for current versions |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-13607](https://issues.apache.org/jira/browse/HBASE-13607) | TestSplitLogManager.testGetPreviousRecoveryMode consistently failing |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13606](https://issues.apache.org/jira/browse/HBASE-13606) | AssignmentManager.assign() is not sync in both path |  Major | Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13600](https://issues.apache.org/jira/browse/HBASE-13600) | check\_compatibility.sh should ignore shaded jars |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13377](https://issues.apache.org/jira/browse/HBASE-13377) | Canary may generate false alarm on the first region when there are many delete markers |  Major | monitoring | He Liangliang | He Liangliang |
| [HBASE-13312](https://issues.apache.org/jira/browse/HBASE-13312) | SmallScannerCallable does not increment scan metrics |  Major | Client, Scanners | Lars George | Andrew Purtell |
| [HBASE-13200](https://issues.apache.org/jira/browse/HBASE-13200) | Improper configuration can leads to endless lease recovery during failover |  Major | MTTR | He Liangliang | He Liangliang |
| [HBASE-11830](https://issues.apache.org/jira/browse/HBASE-11830) | TestReplicationThrottler.testThrottling failed on virtual boxes |  Minor | test | Sergey Soldatov | Stephen Yuan Jiang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13609](https://issues.apache.org/jira/browse/HBASE-13609) | TestFastFail is still failing |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13591](https://issues.apache.org/jira/browse/HBASE-13591) | TestHBaseFsck is flakey |  Major | hbck | Nick Dimiduk | Josh Elser |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13937](https://issues.apache.org/jira/browse/HBASE-13937) | Partially revert HBASE-13172 |  Major | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-13658](https://issues.apache.org/jira/browse/HBASE-13658) | Improve the test run time for TestAccessController class |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-13497](https://issues.apache.org/jira/browse/HBASE-13497) | Remove MVCC stamps from HFile when that is safe |  Major | Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13799](https://issues.apache.org/jira/browse/HBASE-13799) | javadoc how Scan gets polluted when used; if you set attributes or ask for scan metrics |  Minor | documentation | stack | stack |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |


