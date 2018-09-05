
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

## Release 0.92.2 - 2012-09-13



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5735](https://issues.apache.org/jira/browse/HBASE-5735) | Clearer warning message when connecting a non-secure HBase client to a secure HBase server |  Trivial | security | Shaneal Manek | Shaneal Manek |
| [HBASE-5618](https://issues.apache.org/jira/browse/HBASE-5618) | SplitLogManager - prevent unnecessary attempts to resubmits |  Major | wal, Zookeeper | Prakash Khemani | Prakash Khemani |
| [HBASE-5748](https://issues.apache.org/jira/browse/HBASE-5748) | Enable lib directory in jar file for coprocessor |  Major | Coprocessors | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5823](https://issues.apache.org/jira/browse/HBASE-5823) | Hbck should be able to print help |  Minor | . | Enis Soztutar | Enis Soztutar |
| [HBASE-5863](https://issues.apache.org/jira/browse/HBASE-5863) | Improve the graceful\_stop.sh CLI help (especially about reloads) |  Minor | scripts | Harsh J | Harsh J |
| [HBASE-5887](https://issues.apache.org/jira/browse/HBASE-5887) | Make TestAcidGuarantees usable for system testing. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5892](https://issues.apache.org/jira/browse/HBASE-5892) | [hbck] Refactor parallel WorkItem\* to Futures. |  Major | hbck | Jonathan Hsieh | Andrew Wang |
| [HBASE-6341](https://issues.apache.org/jira/browse/HBASE-6341) | Publicly expose HConnectionKey |  Trivial | Client | Micah Whitacre |  |
| [HBASE-6661](https://issues.apache.org/jira/browse/HBASE-6661) | Mark single parameter HTable constructors as deprecated in 0.90 and 0.92 |  Critical | . | Jean-Daniel Cryans | Ted Yu |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5535](https://issues.apache.org/jira/browse/HBASE-5535) | Make the functions in task monitor synchronized |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-5595](https://issues.apache.org/jira/browse/HBASE-5595) | Fix NoSuchMethodException in 0.92 when running on local filesystem |  Critical | . | stack | Uma Maheswara Rao G |
| [HBASE-5624](https://issues.apache.org/jira/browse/HBASE-5624) | Aborting regionserver when splitting region, may cause daughter region not assigned by ServerShutdownHandler. |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5665](https://issues.apache.org/jira/browse/HBASE-5665) | Repeated split causes HRegionServer failures and breaks table |  Blocker | regionserver | Cosmin Lehene | Cosmin Lehene |
| [HBASE-5097](https://issues.apache.org/jira/browse/HBASE-5097) | RegionObserver implementation whose preScannerOpen and postScannerOpen Impl return null can stall the system initialization through NPE |  Major | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5606](https://issues.apache.org/jira/browse/HBASE-5606) | SplitLogManger async delete node hangs log splitting when ZK connection is lost |  Critical | wal | Gopinathan A | Prakash Khemani |
| [HBASE-5724](https://issues.apache.org/jira/browse/HBASE-5724) | Row cache of KeyValue should be cleared in readFields(). |  Major | . | Teruyoshi Zenmyo | Teruyoshi Zenmyo |
| [HBASE-5781](https://issues.apache.org/jira/browse/HBASE-5781) | Zookeeper session got closed while trying to assign the region to RS using hbck -fix |  Critical | hbck | Kristam Subba Swathi | Jonathan Hsieh |
| [HBASE-5545](https://issues.apache.org/jira/browse/HBASE-5545) | region can't be opened for a long time. Because the creating File failed. |  Major | regionserver | gaojinchao | ramkrishna.s.vasudevan |
| [HBASE-5833](https://issues.apache.org/jira/browse/HBASE-5833) | 0.92 build has been failing pretty consistently on TestMasterFailover.... |  Major | . | stack | stack |
| [HBASE-5850](https://issues.apache.org/jira/browse/HBASE-5850) | Refuse operations from Admin before master is initialized - fix for all branches. |  Major | . | xufeng | xufeng |
| [HBASE-5849](https://issues.apache.org/jira/browse/HBASE-5849) | On first cluster startup, RS aborts if root znode is not available |  Major | master, regionserver, Zookeeper | Enis Soztutar | Enis Soztutar |
| [HBASE-5871](https://issues.apache.org/jira/browse/HBASE-5871) | Usability regression, we don't parse compression algos anymore |  Critical | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-5893](https://issues.apache.org/jira/browse/HBASE-5893) | Allow spaces in coprocessor conf (aka trim() className) |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5611](https://issues.apache.org/jira/browse/HBASE-5611) | Replayed edits from regions that failed to open during recovery aren't removed from the global MemStore size |  Critical | . | Jean-Daniel Cryans | Jieshan Bean |
| [HBASE-5897](https://issues.apache.org/jira/browse/HBASE-5897) | prePut coprocessor hook causing substantial CPU usage |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-5952](https://issues.apache.org/jira/browse/HBASE-5952) | Sync hardcoded default flush size and max file size with hbase-default.xml |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5942](https://issues.apache.org/jira/browse/HBASE-5942) | HConnnectionManager.getRegionServerWithRetries doesn't call afterCall properly |  Major | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-6054](https://issues.apache.org/jira/browse/HBASE-6054) | 0.92 failing because of missing commons-io after upgrade to hadoop 1.0.3. |  Major | . | stack | stack |
| [HBASE-5916](https://issues.apache.org/jira/browse/HBASE-5916) | RS restart just before master intialization we make the cluster non operative |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6097](https://issues.apache.org/jira/browse/HBASE-6097) | TestHRegion.testBatchPut is flaky on 0.92 |  Major | test, wal | Gregory Chanan | Gregory Chanan |
| [HBASE-6126](https://issues.apache.org/jira/browse/HBASE-6126) | Fix broke TestLocalHBaseCluster in 0.92/0.94 |  Major | . | stack | stack |
| [HBASE-6133](https://issues.apache.org/jira/browse/HBASE-6133) | TestRestartCluster failing in 0.92 |  Major | . | stack | stack |
| [HBASE-6068](https://issues.apache.org/jira/browse/HBASE-6068) | Secure HBase cluster : Client not able to call some admin APIs |  Major | security | Anoop Sam John | Matteo Bertozzi |
| [HBASE-6122](https://issues.apache.org/jira/browse/HBASE-6122) | Backup master does not become Active master after ZK exception |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5874](https://issues.apache.org/jira/browse/HBASE-5874) | When 'fs.default.name' not configured, the hbck tool and Merge tool throw IllegalArgumentException. |  Major | hbck | fulin wang | fulin wang |
| [HBASE-6158](https://issues.apache.org/jira/browse/HBASE-6158) | Data loss if the words 'merges' or 'splits' are used as Column Family name |  Major | master, regionserver | Aditya Kishore | Aditya Kishore |
| [HBASE-6160](https://issues.apache.org/jira/browse/HBASE-6160) | META entries from daughters can be deleted before parent entries |  Major | Client, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-6200](https://issues.apache.org/jira/browse/HBASE-6200) | KeyComparator.compareWithoutRow can be wrong when families have the same prefix |  Blocker | . | Jean-Daniel Cryans | Jieshan Bean |
| [HBASE-6297](https://issues.apache.org/jira/browse/HBASE-6297) | Backport HBASE-6195 to 0.92 |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6313](https://issues.apache.org/jira/browse/HBASE-6313) | Client hangs because the client is not notified |  Major | . | binlijin | binlijin |
| [HBASE-4379](https://issues.apache.org/jira/browse/HBASE-4379) | [hbck] Does not complain about tables with no end region [Z,] |  Major | hbck | Jonathan Hsieh | Anoop Sam John |
| [HBASE-6357](https://issues.apache.org/jira/browse/HBASE-6357) | Failed distributed log splitting stuck on master web UI |  Major | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6319](https://issues.apache.org/jira/browse/HBASE-6319) | ReplicationSource can call terminate on itself and deadlock |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4470](https://issues.apache.org/jira/browse/HBASE-4470) | ServerNotRunningException coming out of assignRootAndMeta kills the Master |  Critical | . | Jean-Daniel Cryans | Gregory Chanan |
| [HBASE-6447](https://issues.apache.org/jira/browse/HBASE-6447) | Common TestZooKeeper failures on jenkins: testMasterSessionExpired and testCreateSilentIsReallySilent |  Major | test | stack | stack |
| [HBASE-6450](https://issues.apache.org/jira/browse/HBASE-6450) | HBase startup should be with MALLOC\_MAX\_ARENA set |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-5821](https://issues.apache.org/jira/browse/HBASE-5821) | Incorrect handling of null value in Coprocessor aggregation function min() |  Major | Coprocessors | Maryann Xue | Maryann Xue |
| [HBASE-6503](https://issues.apache.org/jira/browse/HBASE-6503) | HBase Shell Documentation For DROP Is Outdated |  Trivial | . | Paul Cavallaro | Paul Cavallaro |
| [HBASE-6631](https://issues.apache.org/jira/browse/HBASE-6631) | TestHMasterRPCException in 0.92 failed twice on socket timeout |  Major | . | stack | stack |
| [HBASE-6632](https://issues.apache.org/jira/browse/HBASE-6632) | [0.92 UNIT TESTS] testCreateTableRPCTimeOut sets rpc timeout to 1500ms and leaves it (testHundredsOfTable fails w/ 1500ms timeout) |  Major | . | stack | stack |
| [HBASE-6616](https://issues.apache.org/jira/browse/HBASE-6616) | test failure in TestDelayedRpc#testTooManyDelayedRpcs |  Major | test | Ming Ma | Ming Ma |
| [HBASE-6623](https://issues.apache.org/jira/browse/HBASE-6623) | [replication] replication metrics value AgeOfLastShippedOp is not set correctly |  Minor | Replication | terry zhang | terry zhang |
| [HBASE-6662](https://issues.apache.org/jira/browse/HBASE-6662) | Region server incorrectly reports its own address as master's address |  Minor | . | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-6268](https://issues.apache.org/jira/browse/HBASE-6268) | Can't enable a table on a 0.94 cluster from a 0.92 client |  Major | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-6239](https://issues.apache.org/jira/browse/HBASE-6239) | [replication] ReplicationSink uses the ts of the first KV for the other KVs in the same row |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5105](https://issues.apache.org/jira/browse/HBASE-5105) | TestImportTsv failed with hadoop 0.22 |  Major | test | Ming Ma | Ming Ma |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5270](https://issues.apache.org/jira/browse/HBASE-5270) | Handle potential data loss due to concurrent processing of processFaileOver and ServerShutdownHandler |  Major | master | Ted Yu | chunhui shen |
| [HBASE-6062](https://issues.apache.org/jira/browse/HBASE-6062) | preCheckAndPut/Delete() checks for READ when also a WRITE is performed |  Major | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6181](https://issues.apache.org/jira/browse/HBASE-6181) | TestStoreFile fails with jdk1.7 |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6257](https://issues.apache.org/jira/browse/HBASE-6257) | Avoid unnecessary flush & compact on Meta in admin.rb. |  Major | security, shell | Laxman | Laxman |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5758](https://issues.apache.org/jira/browse/HBASE-5758) | Forward port "HBASE-4109 Hostname returned via reverse dns lookup contains trailing period if configured interface is not 'default'" |  Major | . | stack | stack |
| [HBASE-6034](https://issues.apache.org/jira/browse/HBASE-6034) | Upgrade Hadoop dependencies |  Minor | . | Andrew Purtell | stack |
| [HBASE-5124](https://issues.apache.org/jira/browse/HBASE-5124) | Backport LoadTestTool to 0.92 |  Major | . | Ted Yu | Andrew Purtell |
| [HBASE-6538](https://issues.apache.org/jira/browse/HBASE-6538) | Remove copy\_table.rb script |  Minor | scripts | David S. Wang | David S. Wang |


