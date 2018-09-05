
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

## Release 0.94.4 - 2013-01-12

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7357](https://issues.apache.org/jira/browse/HBASE-7357) | HBaseClient and HBaseServer should use hbase.security.authentication when negotiating authentication |  Major | security | Gary Helmling | Gary Helmling |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5616](https://issues.apache.org/jira/browse/HBASE-5616) | Make compaction code standalone |  Major | . | stack | stack |
| [HBASE-5693](https://issues.apache.org/jira/browse/HBASE-5693) | When creating a region, the master initializes it and creates a memstore within the master server |  Minor | master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5888](https://issues.apache.org/jira/browse/HBASE-5888) | Clover profile in build |  Major | build, test | Enis Soztutar | Enis Soztutar |
| [HBASE-7190](https://issues.apache.org/jira/browse/HBASE-7190) | Add an option to hbck to check only meta and assignment |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7231](https://issues.apache.org/jira/browse/HBASE-7231) | port     HBASE-7200  create integration test for balancing regions and killing region servers  to 0.94 |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7204](https://issues.apache.org/jira/browse/HBASE-7204) | Make hbck ErrorReporter pluggable |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7249](https://issues.apache.org/jira/browse/HBASE-7249) | add test name filter to IntegrationTestsDriver |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7328](https://issues.apache.org/jira/browse/HBASE-7328) | IntegrationTestRebalanceAndKillServersTargeted supercedes IntegrationTestRebalanceAndKillServers, remove |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7197](https://issues.apache.org/jira/browse/HBASE-7197) | Add multi get to RemoteHTable |  Minor | Client, REST | Elliott Clark | Elliott Clark |
| [HBASE-7359](https://issues.apache.org/jira/browse/HBASE-7359) | [REST] 'accessToken' in RemoteHTable is vestigial |  Trivial | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-4791](https://issues.apache.org/jira/browse/HBASE-4791) | Allow Secure Zookeeper JAAS configuration to be programmatically set (rather than only by reading JAAS configuration file) |  Major | security, Zookeeper | Eugene Koontz | Matteo Bertozzi |
| [HBASE-6775](https://issues.apache.org/jira/browse/HBASE-6775) | Use ZK.multi when available for HBASE-6710 0.92/0.94 compatibility fix |  Minor | Zookeeper | Gregory Chanan | Gregory Chanan |
| [HBASE-7377](https://issues.apache.org/jira/browse/HBASE-7377) | Clean up TestHBase7051 |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-7381](https://issues.apache.org/jira/browse/HBASE-7381) | Lightweight data transfer for Class Result |  Trivial | Client | Cheng Hao | Cheng Hao |
| [HBASE-6585](https://issues.apache.org/jira/browse/HBASE-6585) | Audit log messages should contain info about the higher level operation being executed |  Minor | security | Marcelo Vanzin | Matteo Bertozzi |
| [HBASE-7199](https://issues.apache.org/jira/browse/HBASE-7199) | hbck should check lingering reference hfile and have option to sideline them automatically |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7374](https://issues.apache.org/jira/browse/HBASE-7374) | Expose master table operations for coprocessors by way of MasterServices |  Minor | Coprocessors, master | Andrew Purtell | Andrew Purtell |
| [HBASE-5778](https://issues.apache.org/jira/browse/HBASE-5778) | Fix HLog compression's incompatibilities |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7469](https://issues.apache.org/jira/browse/HBASE-7469) | [REST] Share a HBaseAdmin instance |  Minor | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-7472](https://issues.apache.org/jira/browse/HBASE-7472) | [REST] Support MIME type application/protobuf |  Trivial | REST | Andrew Purtell | Andrew Purtell |
| [HBASE-7351](https://issues.apache.org/jira/browse/HBASE-7351) | Periodic health check chore |  Minor | regionserver | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6175](https://issues.apache.org/jira/browse/HBASE-6175) | TestFSUtils flaky on hdfs getFileStatus method |  Trivial | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6327](https://issues.apache.org/jira/browse/HBASE-6327) | HLog can be null when create table |  Major | . | ShiXing | ShiXing |
| [HBASE-7165](https://issues.apache.org/jira/browse/HBASE-7165) | TestSplitLogManager.testUnassignedTimeout is flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7166](https://issues.apache.org/jira/browse/HBASE-7166) | TestSplitTransactionOnCluster tests are flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7177](https://issues.apache.org/jira/browse/HBASE-7177) | TestZooKeeperScanPolicyObserver.testScanPolicyObserver is flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7214](https://issues.apache.org/jira/browse/HBASE-7214) | CleanerChore logs too much, so much so it obscures all else that is going on |  Major | . | stack | Jesse Yates |
| [HBASE-7172](https://issues.apache.org/jira/browse/HBASE-7172) | TestSplitLogManager.testVanishingTaskZNode() fails when run individually and is flaky |  Major | master | Enis Soztutar | Enis Soztutar |
| [HBASE-7235](https://issues.apache.org/jira/browse/HBASE-7235) | TestMasterObserver is flaky |  Major | Coprocessors, master, test | Enis Soztutar | Enis Soztutar |
| [HBASE-7230](https://issues.apache.org/jira/browse/HBASE-7230) | port HBASE-7109 integration tests on cluster are not getting picked up from distribution to 0.94 |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7124](https://issues.apache.org/jira/browse/HBASE-7124) | typo in pom.xml with "exlude", no definition of "test.exclude.pattern" |  Minor | . | Li Ping Zhang | Li Ping Zhang |
| [HBASE-7252](https://issues.apache.org/jira/browse/HBASE-7252) | TestSizeBasedThrottler fails occasionally |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6423](https://issues.apache.org/jira/browse/HBASE-6423) | Writes should not block reads on blocking updates to memstores |  Major | . | Karthik Ranganathan | Jimmy Xiang |
| [HBASE-7260](https://issues.apache.org/jira/browse/HBASE-7260) | Upgrade hadoop 1 dependency to hadoop 1.1.1 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7273](https://issues.apache.org/jira/browse/HBASE-7273) | Upgrade zookeeper dependency to 3.4.5 for 0.94 |  Major | . | Ted Yu |  |
| [HBASE-7279](https://issues.apache.org/jira/browse/HBASE-7279) | Avoid copying the rowkey in RegionScanner, StoreScanner, and ScanQueryMatcher |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7300](https://issues.apache.org/jira/browse/HBASE-7300) | HbckTestingUtil needs to keep a static executor to lower the number of threads used |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7251](https://issues.apache.org/jira/browse/HBASE-7251) | Avoid flood logs during client disconnect during batch get operation |  Major | . | Fengdong Yu |  |
| [HBASE-7301](https://issues.apache.org/jira/browse/HBASE-7301) | Force ipv4 for unit tests |  Major | . | stack | Jean-Daniel Cryans |
| [HBASE-6317](https://issues.apache.org/jira/browse/HBASE-6317) | Master clean start up and Partially enabled tables make region assignment inconsistent. |  Major | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-7180](https://issues.apache.org/jira/browse/HBASE-7180) | RegionScannerImpl.next() is inefficient. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7307](https://issues.apache.org/jira/browse/HBASE-7307) | MetaReader.tableExists should not return false if the specified table regions has been split |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-7338](https://issues.apache.org/jira/browse/HBASE-7338) | Fix flaky condition for org.apache.hadoop.hbase.TestRegionRebalancing.testRebalanceOnRegionServerNumberChange |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7343](https://issues.apache.org/jira/browse/HBASE-7343) | Fix flaky condition for TestDrainingServer |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7205](https://issues.apache.org/jira/browse/HBASE-7205) | Coprocessor classloader is replicated for all regions in the HRegionServer |  Critical | Coprocessors | Adrian Muraru | Ted Yu |
| [HBASE-7342](https://issues.apache.org/jira/browse/HBASE-7342) | Split operation without split key incorrectly finds the middle key in off-by-one error |  Minor | HFile, io | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-7376](https://issues.apache.org/jira/browse/HBASE-7376) | Acquiring readLock does not apply timeout in HRegion#flushcache |  Major | regionserver | binlijin | binlijin |
| [HBASE-7158](https://issues.apache.org/jira/browse/HBASE-7158) | Allow CopyTable to identify the source cluster (for replication scenarios) |  Major | . | Lars Hofhansl | Jean-Daniel Cryans |
| [HBASE-7259](https://issues.apache.org/jira/browse/HBASE-7259) | Deadlock in HBaseClient when KeeperException occured |  Critical | Zookeeper | Wei Li |  |
| [HBASE-7091](https://issues.apache.org/jira/browse/HBASE-7091) | support custom GC options in hbase-env.sh |  Major | scripts | Jesse Yates | Jesse Yates |
| [HBASE-7398](https://issues.apache.org/jira/browse/HBASE-7398) | [0.94 UNIT TESTS] TestAssignmentManager fails frequently on CentOS 5 |  Major | Region Assignment, test | Enis Soztutar | Enis Soztutar |
| [HBASE-7421](https://issues.apache.org/jira/browse/HBASE-7421) | TestHFileCleaner-\>testHFileCleaning  has an aggressive timeout |  Minor | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7422](https://issues.apache.org/jira/browse/HBASE-7422) | MasterFS doesn't set configuration for internal FileSystem |  Major | master, test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7417](https://issues.apache.org/jira/browse/HBASE-7417) | TestReplication is flaky |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7432](https://issues.apache.org/jira/browse/HBASE-7432) | TestHBaseFsck prevents testsuite from finishing |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7435](https://issues.apache.org/jira/browse/HBASE-7435) | BuiltInGzipDecompressor is only released during full GC |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7412](https://issues.apache.org/jira/browse/HBASE-7412) | Fix how HTableDescriptor handles default max file size and flush size |  Minor | regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7440](https://issues.apache.org/jira/browse/HBASE-7440) | ReplicationZookeeper#addPeer is racy |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7455](https://issues.apache.org/jira/browse/HBASE-7455) | Increase timeouts in TestReplication and TestSplitLogWorker |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7464](https://issues.apache.org/jira/browse/HBASE-7464) | [REST] Sending HTML for errors is unhelpful |  Minor | REST | Chip Salzenberg | Andrew Purtell |
| [HBASE-7466](https://issues.apache.org/jira/browse/HBASE-7466) | Fix junit dependency typo in 0.94 |  Minor | . | Jesse Yates | Jesse Yates |
| [HBASE-7467](https://issues.apache.org/jira/browse/HBASE-7467) | CleanerChore checkAndDeleteDirectory not deleting empty directories |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7442](https://issues.apache.org/jira/browse/HBASE-7442) | HBase remote CopyTable not working when security enabled |  Major | IPC/RPC, mapreduce, security | James Kinley | James Kinley |
| [HBASE-7485](https://issues.apache.org/jira/browse/HBASE-7485) | TestSplitLogManager is still flaky on windows |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7483](https://issues.apache.org/jira/browse/HBASE-7483) | TestHRegionOnCluster and TestSplitTransactionOnCluster are racy with HBaseAdmin.move() |  Major | . | Lars Hofhansl | Lars Hofhansl |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6206](https://issues.apache.org/jira/browse/HBASE-6206) | Large tests fail with jdk1.7 |  Minor | Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7042](https://issues.apache.org/jira/browse/HBASE-7042) | Master Coprocessor Endpoint |  Major | . | Francis Liu | Francis Liu |
| [HBASE-7009](https://issues.apache.org/jira/browse/HBASE-7009) | Port HBaseCluster interface/tests to 0.94 |  Major | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7282](https://issues.apache.org/jira/browse/HBASE-7282) | Backport Compaction Tool to 0.94 |  Minor | Compaction | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7336](https://issues.apache.org/jira/browse/HBASE-7336) | HFileBlock.readAtOffset does not work well with multiple threads |  Critical | Performance | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7371](https://issues.apache.org/jira/browse/HBASE-7371) | Blocksize in TestHFileBlock is unintentionally small |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7331](https://issues.apache.org/jira/browse/HBASE-7331) | Add access control for region open and close, row locking, and stopping the regionserver |  Major | regionserver, security | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-7431](https://issues.apache.org/jira/browse/HBASE-7431) | TestSplitTransactionOnCluster tests still flaky |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7438](https://issues.apache.org/jira/browse/HBASE-7438) | TestSplitTransactionOnCluster has too many infinite loops |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-3776](https://issues.apache.org/jira/browse/HBASE-3776) | Add Bloom Filter Support to HFileOutputFormat |  Critical | mapreduce | Nicolas Spiegelberg | Anoop Sam John |
| [HBASE-7406](https://issues.apache.org/jira/browse/HBASE-7406) | Example health checker script |  Trivial | regionserver | Andrew Purtell | Vandana Ayyalasomayajula |
| [HBASE-7399](https://issues.apache.org/jira/browse/HBASE-7399) | Health check chore for HMaster |  Trivial | regionserver | Andrew Purtell | Andrew Purtell |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7170](https://issues.apache.org/jira/browse/HBASE-7170) | [0.94 branch] Allow HConnectionImplementation to reconnect to master multiple times |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-5258](https://issues.apache.org/jira/browse/HBASE-5258) | Move coprocessors set out of RegionLoad |  Critical | . | Ted Yu | Sergey Shelukhin |
| [HBASE-7341](https://issues.apache.org/jira/browse/HBASE-7341) | Deprecate RowLocks in 0.94 |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-7283](https://issues.apache.org/jira/browse/HBASE-7283) | Backport HBASE-6564 + HBASE-7202 to 0.94 |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |


