
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

## Release 0.94.7 - 2013-04-25

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8352](https://issues.apache.org/jira/browse/HBASE-8352) | Rename '.snapshot' directory |  Blocker | . | Ted Yu | Ted Yu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5335](https://issues.apache.org/jira/browse/HBASE-5335) | Dynamic Schema Configurations |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-7415](https://issues.apache.org/jira/browse/HBASE-7415) | [snapshots] Add task information to snapshot operation |  Major | Client, master, regionserver, snapshots, Zookeeper | Jesse Yates | Jesse Yates |
| [HBASE-1936](https://issues.apache.org/jira/browse/HBASE-1936) | ClassLoader that loads from hdfs; useful adding filters to classpath without having to restart services |  Major | . | stack | Jimmy Xiang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8148](https://issues.apache.org/jira/browse/HBASE-8148) | Allow IPC to bind on a specific address |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8199](https://issues.apache.org/jira/browse/HBASE-8199) | Eliminate exception for ExportSnapshot against the null table snapshot (with no data in) |  Minor | snapshots | Julian Zhou | Julian Zhou |
| [HBASE-8198](https://issues.apache.org/jira/browse/HBASE-8198) | Backport HBASE-8063(Filter HFiles based on first/last key) into 0.94 |  Major | Scanners | Liang Xie | Liang Xie |
| [HBASE-8209](https://issues.apache.org/jira/browse/HBASE-8209) | Improve LoadTest extensibility |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-8152](https://issues.apache.org/jira/browse/HBASE-8152) | Avoid creating empty reference file when splitkey is outside the key range of a store file |  Minor | Filesystem Integration, HFile | Sean Zhong | Sean Zhong |
| [HBASE-8174](https://issues.apache.org/jira/browse/HBASE-8174) | Backport HBASE-8161(setting blocking file count on table level doesn't work) to 0.94 |  Minor | regionserver | Sean Zhong | Sean Zhong |
| [HBASE-7599](https://issues.apache.org/jira/browse/HBASE-7599) | Port HBASE-6066 (low hanging read path improvements) to 0.94 |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-7410](https://issues.apache.org/jira/browse/HBASE-7410) | [snapshots] add snapshot/clone/restore/export docs to ref guide |  Blocker | documentation, snapshots | Jonathan Hsieh | Matteo Bertozzi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8118](https://issues.apache.org/jira/browse/HBASE-8118) | TestTablePermission depends on the execution order |  Major | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8128](https://issues.apache.org/jira/browse/HBASE-8128) | HTable#put improvements |  Trivial | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8142](https://issues.apache.org/jira/browse/HBASE-8142) | Sporadic TestZKProcedureControllers failures on trunk |  Major | . | stack | Jeffrey Zhong |
| [HBASE-8125](https://issues.apache.org/jira/browse/HBASE-8125) | HBASE-7435 breaks BuiltInGzipDecompressor on Hadoop \< 1.0.x |  Major | . | stack | Ted Yu |
| [HBASE-8146](https://issues.apache.org/jira/browse/HBASE-8146) | IntegrationTestBigLinkedList does not work on distributed setup |  Major | test | Enis Soztutar | Enis Soztutar |
| [HBASE-8131](https://issues.apache.org/jira/browse/HBASE-8131) | Create table handler needs to handle failure cases. |  Major | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8151](https://issues.apache.org/jira/browse/HBASE-8151) | Decode memstoreTS in HFileReaderV2 only when necessary |  Major | HFile, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8014](https://issues.apache.org/jira/browse/HBASE-8014) | Backport HBASE-6915 to 0.94. |  Critical | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8160](https://issues.apache.org/jira/browse/HBASE-8160) | HMaster#move doesn't check if master initialized |  Trivial | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8030](https://issues.apache.org/jira/browse/HBASE-8030) | znode  path of online region servers is hard coded in rolling\_restart.sh |  Major | shell | rajeshbabu | rajeshbabu |
| [HBASE-8166](https://issues.apache.org/jira/browse/HBASE-8166) | Avoid writing the memstoreTS into HFiles when possible |  Major | HFile, Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8170](https://issues.apache.org/jira/browse/HBASE-8170) | HbaseAdmin.createTable cannot handle creating three regions |  Minor | Admin | Edward C. Skoviak | Jean-Marc Spaggiari |
| [HBASE-8081](https://issues.apache.org/jira/browse/HBASE-8081) | Backport HBASE-7213 (separate hlog for meta tables) to 0.94 |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-8215](https://issues.apache.org/jira/browse/HBASE-8215) | Removing existing .regioninfo in writeRegioninfoOnFilesystem |  Minor | regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8207](https://issues.apache.org/jira/browse/HBASE-8207) | Replication could have data loss when machine name contains hyphen "-" |  Critical | Replication | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8222](https://issues.apache.org/jira/browse/HBASE-8222) | User class should implement equals() and hashCode() |  Critical | security | Gary Helmling | Ted Yu |
| [HBASE-8176](https://issues.apache.org/jira/browse/HBASE-8176) | Backport HBASE-5335 "Dynamic Schema Configurations" to 0.94 |  Minor | regionserver | Sean Zhong | Sean Zhong |
| [HBASE-8232](https://issues.apache.org/jira/browse/HBASE-8232) | TestAccessController occasionally fails with IndexOutOfBoundsException |  Trivial | security, test | Andrew Purtell | Andrew Purtell |
| [HBASE-8226](https://issues.apache.org/jira/browse/HBASE-8226) | HBaseTestingUtility#waitUntilAllRegionsAssigned won't return if it counts "too many" regions |  Major | test | Andrew Purtell | Andrew Purtell |
| [HBASE-8213](https://issues.apache.org/jira/browse/HBASE-8213) | global authorization may lose efficacy |  Critical | security | Jieshan Bean | Jieshan Bean |
| [HBASE-8225](https://issues.apache.org/jira/browse/HBASE-8225) | [replication] minor code bug when registering ReplicationLogCleaner |  Minor | Replication | Jerry He | Jerry He |
| [HBASE-7925](https://issues.apache.org/jira/browse/HBASE-7925) | Back port HBASE-6881 into 0.94 |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-8192](https://issues.apache.org/jira/browse/HBASE-8192) | Logic errror causes infinite loop in HRegion.bulkLoadHFiles(List) |  Major | regionserver | Chenghao Jiang | Chenghao Jiang |
| [HBASE-8246](https://issues.apache.org/jira/browse/HBASE-8246) | Backport HBASE-6318 to 0.94 where SplitLogWorker exits due to ConcurrentModificationException |  Major | regionserver | Jeffrey Zhong | Ted Yu |
| [HBASE-7401](https://issues.apache.org/jira/browse/HBASE-7401) | Remove warning message about running 'hbase migrate' |  Major | Usability | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8229](https://issues.apache.org/jira/browse/HBASE-8229) | Replication code logs like crazy if a target table cannot be found. |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8230](https://issues.apache.org/jira/browse/HBASE-8230) | Possible NPE on regionserver abort if replication service has not been started |  Major | regionserver, Replication | Jieshan Bean | Jieshan Bean |
| [HBASE-8188](https://issues.apache.org/jira/browse/HBASE-8188) | Avoid unnecessary row compare in StoreScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8259](https://issues.apache.org/jira/browse/HBASE-8259) | Snapshot backport in 0.94.6 breaks rolling restarts |  Blocker | . | Jean-Daniel Cryans | Matteo Bertozzi |
| [HBASE-7817](https://issues.apache.org/jira/browse/HBASE-7817) | Suggested JDWP debug options in hbase-env.sh are wrong |  Minor | . | Ian Varley | Vasu Mariyala |
| [HBASE-8231](https://issues.apache.org/jira/browse/HBASE-8231) | delete tests in table\_tests.rb(TestShell) always running on empty table. |  Major | scripts | rajeshbabu | rajeshbabu |
| [HBASE-8211](https://issues.apache.org/jira/browse/HBASE-8211) | Support for NN HA for 0.94 |  Major | master, regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8169](https://issues.apache.org/jira/browse/HBASE-8169) | TestMasterFailover#testMasterFailoverWithMockedRITOnDeadRS may fail due to regions randomly assigned to a RS |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8127](https://issues.apache.org/jira/browse/HBASE-8127) | Region of a disabling or disabled table could be stuck in transition state when RS dies during Master initialization |  Major | . | Jeffrey Zhong | rajeshbabu |
| [HBASE-8179](https://issues.apache.org/jira/browse/HBASE-8179) | JSON formatting for cluster status is sort of broken |  Major | REST, Usability | Devaraj Das | Devaraj Das |
| [HBASE-8092](https://issues.apache.org/jira/browse/HBASE-8092) | bulk assignment in 0.94 doesn't handle ZK errors very well |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8208](https://issues.apache.org/jira/browse/HBASE-8208) | In some situations data is not replicated to slaves when deferredLogSync is enabled |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8276](https://issues.apache.org/jira/browse/HBASE-8276) | Backport hbase-6738 to 0.94 "Too aggressive task resubmission from the distributed log manager" |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8274](https://issues.apache.org/jira/browse/HBASE-8274) | Backport to 94:  HBASE-7488  Implement HConnectionManager.locateRegions which is currently returning null |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8270](https://issues.apache.org/jira/browse/HBASE-8270) | Backport HBASE-8097 'MetaServerShutdownHandler may potentially keep bumping up DeadServer.numProcessing' to 0.94 |  Major | . | Devaraj Das | Jeffrey Zhong |
| [HBASE-7961](https://issues.apache.org/jira/browse/HBASE-7961) | truncate on disabled table should throw TableNotEnabledException. |  Major | Admin | rajeshbabu | rajeshbabu |
| [HBASE-8150](https://issues.apache.org/jira/browse/HBASE-8150) | server should not produce RAITE for already-opening region in 0.94 (because master retry logic handles this case poorly) |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8158](https://issues.apache.org/jira/browse/HBASE-8158) | Backport HBASE-8140 "TableMapReduceUtils#addDependencyJar fails when nested inside another MR job" |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8288](https://issues.apache.org/jira/browse/HBASE-8288) | HBaseFileSystem: Refactoring and correct semantics for createPath methods |  Major | Filesystem Integration | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8313](https://issues.apache.org/jira/browse/HBASE-8313) | Add Bloom filter testing for HFileOutputFormat |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8266](https://issues.apache.org/jira/browse/HBASE-8266) | Master cannot start if TableNotFoundException is thrown while partial table recovery |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-7658](https://issues.apache.org/jira/browse/HBASE-7658) | grant with an empty string as permission should throw an exception |  Trivial | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7824](https://issues.apache.org/jira/browse/HBASE-7824) | Improve master start up time when there is log splitting work |  Major | master | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8303](https://issues.apache.org/jira/browse/HBASE-8303) | Increse the test timeout to 60s when they are less than 20s |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8096](https://issues.apache.org/jira/browse/HBASE-8096) | [replication] NPE while replicating a log that is acquiring a new block from HDFS |  Major | . | Ian Friedman | Dave Latham |
| [HBASE-8285](https://issues.apache.org/jira/browse/HBASE-8285) | HBaseClient never recovers for single HTable.get() calls with no retries when regions move |  Critical | Client | Varun Sharma | Varun Sharma |
| [HBASE-8326](https://issues.apache.org/jira/browse/HBASE-8326) | mapreduce.TestTableInputFormatScan times out frequently |  Major | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8427](https://issues.apache.org/jira/browse/HBASE-8427) | Apache Rat is incorrectly excluding test source files |  Blocker | build | Jonathan Hsieh | Jonathan Hsieh |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8106](https://issues.apache.org/jira/browse/HBASE-8106) | Test to check replication log znodes move is done correctly |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8260](https://issues.apache.org/jira/browse/HBASE-8260) | create generic integration test for trunk and 94 that is more deterministic, can be run for longer and is less aggressive |  Major | . | Sergey Shelukhin | Sergey Shelukhin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8210](https://issues.apache.org/jira/browse/HBASE-8210) | Backport the LoadTest portions of HBASE-7383 |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-7615](https://issues.apache.org/jira/browse/HBASE-7615) | Add metrics for snapshots |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-8316](https://issues.apache.org/jira/browse/HBASE-8316) | JoinedHeap for non essential column families should reseek instead of seek |  Major | Filters, Performance, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7801](https://issues.apache.org/jira/browse/HBASE-7801) | Allow a deferred sync option per Mutation. |  Major | . | Lars Hofhansl | Lars Hofhansl |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7929](https://issues.apache.org/jira/browse/HBASE-7929) | Reapply hbase-7507 "Make memstore flush be able to retry after exception" to 0.94 branch. |  Major | . | stack | stack |


