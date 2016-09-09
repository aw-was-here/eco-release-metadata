
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

## Release 0.94.5 - 2013-02-15



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6669](https://issues.apache.org/jira/browse/HBASE-6669) | Add BigDecimalColumnInterpreter for doing aggregations using AggregationClient |  Minor | Client, Coprocessors | Anil Gupta | Anil Gupta |
| [HBASE-7748](https://issues.apache.org/jira/browse/HBASE-7748) | Add DelimitedKeyPrefixRegionSplitPolicy |  Major | . | Enis Soztutar | Enis Soztutar |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7441](https://issues.apache.org/jira/browse/HBASE-7441) | Make ClusterManager in IntegrationTestingUtility pluggable |  Minor | test | Liu Shaohui | Liu Shaohui |
| [HBASE-7540](https://issues.apache.org/jira/browse/HBASE-7540) | Make znode dump to print a dump of replication znodes |  Major | Replication, UI | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-5416](https://issues.apache.org/jira/browse/HBASE-5416) | Filter on one CF and if a match, then load and return full row (WAS: Improve performance of scans with some kind of filters) |  Major | Filters, Performance, regionserver | Max Lapan | Sergey Shelukhin |
| [HBASE-5498](https://issues.apache.org/jira/browse/HBASE-5498) | Secure Bulk Load |  Major | security | Francis Liu | Francis Liu |
| [HBASE-7585](https://issues.apache.org/jira/browse/HBASE-7585) | TestAccessController tests should close HTables |  Trivial | test | Andrew Purtell | Andrew Purtell |
| [HBASE-5664](https://issues.apache.org/jira/browse/HBASE-5664) | CP hooks in Scan flow for fast forward when filter filters out a row |  Major | Coprocessors, Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-3996](https://issues.apache.org/jira/browse/HBASE-3996) |  Support multiple tables and scanners as input to the mapper in map/reduce jobs |  Critical | mapreduce | Eran Kutner | Bryan Baugher |
| [HBASE-7757](https://issues.apache.org/jira/browse/HBASE-7757) | Add web UI to REST server and Thrift server |  Minor | REST, Thrift, UI | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7561](https://issues.apache.org/jira/browse/HBASE-7561) | Display the total number of regions for a given table on the master webUI |  Minor | UI | Ming Ma | Michael Weng |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7423](https://issues.apache.org/jira/browse/HBASE-7423) | HFileArchiver should not use the configuration from the Filesystem |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7497](https://issues.apache.org/jira/browse/HBASE-7497) | TestDistributedLogSplitting.testDelayedDeleteOnFailure times out occasionally |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7498](https://issues.apache.org/jira/browse/HBASE-7498) | Make REST server thread pool size configurable |  Major | REST | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7499](https://issues.apache.org/jira/browse/HBASE-7499) | TestScannerTimeout timeout is too aggressive. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7476](https://issues.apache.org/jira/browse/HBASE-7476) | HBase shell count command doesn't escape binary output |  Minor | shell | Gabriel Reid | Gabriel Reid |
| [HBASE-7513](https://issues.apache.org/jira/browse/HBASE-7513) | HDFSBlocksDistribution shouldn't send NPEs when something goes wrong |  Minor | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-7515](https://issues.apache.org/jira/browse/HBASE-7515) | Store.loadStoreFiles should close opened files if there's an exception |  Major | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-6824](https://issues.apache.org/jira/browse/HBASE-6824) | Introduce ${hbase.local.dir} and save coprocessor jars there |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-7524](https://issues.apache.org/jira/browse/HBASE-7524) | hbase-policy.xml is improperly set thus all rules in it can be by-passed |  Major | security | Kai Zheng | Kai Zheng |
| [HBASE-7505](https://issues.apache.org/jira/browse/HBASE-7505) | Server will hang when stopping cluster, caused by waiting for split threads |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-7530](https://issues.apache.org/jira/browse/HBASE-7530) | [replication] Work around HDFS-4380 else we get NPEs |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7531](https://issues.apache.org/jira/browse/HBASE-7531) | [replication] NPE in SequenceFileLogReader because ReplicationSource doesn't nullify the reader |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7534](https://issues.apache.org/jira/browse/HBASE-7534) | [replication] TestReplication.queueFailover can fail because HBaseTestingUtility.createMultiRegions is dangerous |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7504](https://issues.apache.org/jira/browse/HBASE-7504) | -ROOT- may be offline forever after FullGC of  RS |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7506](https://issues.apache.org/jira/browse/HBASE-7506) | Judgment of carrying ROOT/META will become wrong when expiring server |  Major | . | chunhui shen | chunhui shen |
| [HBASE-7502](https://issues.apache.org/jira/browse/HBASE-7502) | TestScannerTimeout fails on snapshot branch |  Major | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7550](https://issues.apache.org/jira/browse/HBASE-7550) | Synchronization problem in AssignmentManager |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7468](https://issues.apache.org/jira/browse/HBASE-7468) | TestSplitTransactionOnCluster hangs frequently |  Major | . | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-7551](https://issues.apache.org/jira/browse/HBASE-7551) | nodeChildrenChange event may happen after the transition to RS\_ZK\_REGION\_SPLITTING in SplitTransaction causing the SPLIT event to be missed in the master side. |  Critical | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-7549](https://issues.apache.org/jira/browse/HBASE-7549) | Make HTableInterface#batch() javadoc proper |  Trivial | Client | Anoop Sam John | Anoop Sam John |
| [HBASE-7575](https://issues.apache.org/jira/browse/HBASE-7575) | FSUtils#getTableStoreFilePathMap should all ignore non-table folders |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7581](https://issues.apache.org/jira/browse/HBASE-7581) | TestAccessController depends on the execution order |  Major | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7584](https://issues.apache.org/jira/browse/HBASE-7584) | Improve TestAccessController.testAppend |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-7587](https://issues.apache.org/jira/browse/HBASE-7587) | Fix two findbugs warning in RowResource |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7578](https://issues.apache.org/jira/browse/HBASE-7578) | TestCatalogTracker hangs occasionally |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7592](https://issues.apache.org/jira/browse/HBASE-7592) | HConnectionManager.getHTableDescriptor() compares too much |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7602](https://issues.apache.org/jira/browse/HBASE-7602) | TestFromClientSide.testPoolBehavior is incorrect |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7617](https://issues.apache.org/jira/browse/HBASE-7617) | TestHRegionOnCluster.testDataCorrectnessReplayingRecoveredEdits still fails occasionally. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7034](https://issues.apache.org/jira/browse/HBASE-7034) | Bad version, failed OPENING to OPENED but master thinks it is open anyways |  Major | Region Assignment | stack | Anoop Sam John |
| [HBASE-5458](https://issues.apache.org/jira/browse/HBASE-5458) | Thread safety issues with Compression.Algorithm.GZ and CompressionTest |  Minor | io | David McIntosh | Elliott Clark |
| [HBASE-7562](https://issues.apache.org/jira/browse/HBASE-7562) | ZKUtil: missing "else condition" in multi processing |  Minor | . | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7646](https://issues.apache.org/jira/browse/HBASE-7646) | Make forkedProcessTimeoutInSeconds configurable |  Trivial | build | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7293](https://issues.apache.org/jira/browse/HBASE-7293) | [replication] Remove dead sinks from ReplicationSource.currentPeers and pick new ones |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-7648](https://issues.apache.org/jira/browse/HBASE-7648) | TestAcidGuarantees.testMixedAtomicity hangs sometimes |  Minor | test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7628](https://issues.apache.org/jira/browse/HBASE-7628) | Port HBASE-6509 fast-forwarding FuzzyRowFilter to 0.94 |  Major | . | Ted Yu | Anoop Sam John |
| [HBASE-7647](https://issues.apache.org/jira/browse/HBASE-7647) | 0.94 hfiles v2.1 are not backwards compatible with HFilev2.0 |  Major | HFile | Elliott Clark | Elliott Clark |
| [HBASE-7654](https://issues.apache.org/jira/browse/HBASE-7654) | Add List\<String\> getCoprocessors() to HTableDescriptor |  Critical | Client, Coprocessors | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-7643](https://issues.apache.org/jira/browse/HBASE-7643) | HFileArchiver.resolveAndArchive() race condition may lead to snapshot data loss |  Blocker | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-7681](https://issues.apache.org/jira/browse/HBASE-7681) | Address some recent random test failures |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7669](https://issues.apache.org/jira/browse/HBASE-7669) | ROOT region wouldn't  be handled by PRI-IPC-Handler |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-7644](https://issues.apache.org/jira/browse/HBASE-7644) | Port HBASE-4802 'Disable show table metrics in bulk loader' to 0.94 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7693](https://issues.apache.org/jira/browse/HBASE-7693) | Hostname returned by TableInputFormatBase.reverseDNS contains trailing period |  Trivial | mapreduce | Robert Dyer | Robert Dyer |
| [HBASE-7694](https://issues.apache.org/jira/browse/HBASE-7694) | Secure HBase should use replication call queue |  Critical | Replication | Jieshan Bean | Jieshan Bean |
| [HBASE-7545](https://issues.apache.org/jira/browse/HBASE-7545) | [replication] Break out TestReplication into manageable classes |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-7684](https://issues.apache.org/jira/browse/HBASE-7684) | NullPointerException in SecureClient when Call is cleaned up due to RPC  timeout |  Major | security | Jianwei Cui | Jianwei Cui |
| [HBASE-7685](https://issues.apache.org/jira/browse/HBASE-7685) | Closing socket connection can't be removed from SecureClient |  Major | security | Jianwei Cui | Jianwei Cui |
| [HBASE-7702](https://issues.apache.org/jira/browse/HBASE-7702) | Adding filtering to Import jobs |  Major | mapreduce | Jesse Yates | Jesse Yates |
| [HBASE-7717](https://issues.apache.org/jira/browse/HBASE-7717) | Wait until regions are assigned in TestSplitTransactionOnCluster |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7715](https://issues.apache.org/jira/browse/HBASE-7715) | FSUtils#waitOnSafeMode can incorrectly loop on standby NN |  Major | . | Andrew Wang | Ted Yu |
| [HBASE-7729](https://issues.apache.org/jira/browse/HBASE-7729) | TestCatalogTrackerOnCluster.testbadOriginalRootLocation fails occasionally |  Major | test | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7730](https://issues.apache.org/jira/browse/HBASE-7730) | HBaseAdmin#synchronousBalanceSwitch is not compatible with 0.92 |  Major | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7731](https://issues.apache.org/jira/browse/HBASE-7731) | Append/Increment methods in HRegion don't check whether the table is readonly or not |  Major | regionserver | Devaraj Das | Devaraj Das |
| [HBASE-7728](https://issues.apache.org/jira/browse/HBASE-7728) | deadlock occurs between hlog roller and hlog syncer |  Blocker | wal | Wang Qiang | Ted Yu |
| [HBASE-7740](https://issues.apache.org/jira/browse/HBASE-7740) | Recheck matching row for joined scanners |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-7771](https://issues.apache.org/jira/browse/HBASE-7771) | Secure HBase Client in MR job causes tasks to wait forever |  Major | . | Francis Liu | Francis Liu |
| [HBASE-6513](https://issues.apache.org/jira/browse/HBASE-6513) | Test errors when building on MacOS |  Major | build | Archimedes Trajano | Lars Francke |
| [HBASE-7772](https://issues.apache.org/jira/browse/HBASE-7772) | clusterId is not set in conf properly if only TableMapReduceUtil.initCredentials() is called |  Major | . | Francis Liu | Francis Liu |
| [HBASE-7698](https://issues.apache.org/jira/browse/HBASE-7698) | race between RS shutdown thread and openregionhandler causes region to get stuck |  Major | . | Sergey Shelukhin | ramkrishna.s.vasudevan |
| [HBASE-7785](https://issues.apache.org/jira/browse/HBASE-7785) | rolling-restart.sh script unable to check expiration of master znode |  Major | scripts | Samir Ahmic | Samir Ahmic |
| [HBASE-7776](https://issues.apache.org/jira/browse/HBASE-7776) | Use ErrorReporter/Log instead of System.out in hbck |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-7793](https://issues.apache.org/jira/browse/HBASE-7793) | Port HBASE-5564 Bulkload is discarding duplicate records to 0.94 |  Major | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7687](https://issues.apache.org/jira/browse/HBASE-7687) | TestCatalogTracker.testServerNotRunningIOException fails occasionally |  Major | . | Lars Hofhansl | Ted Yu |
| [HBASE-7626](https://issues.apache.org/jira/browse/HBASE-7626) | Backport portions of HBASE-7460 to 0.94 |  Critical | Client, IPC/RPC | Lars Hofhansl | Gary Helmling |
| [HBASE-2611](https://issues.apache.org/jira/browse/HBASE-2611) | Handle RS that fails while processing the failure of another one |  Critical | Replication | Jean-Daniel Cryans | Himanshu Vashishtha |
| [HBASE-7738](https://issues.apache.org/jira/browse/HBASE-7738) | REST server should publish metrics that are available via HTTP |  Minor | REST | Jimmy Xiang | Jimmy Xiang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7705](https://issues.apache.org/jira/browse/HBASE-7705) | Make the method getCurrentPoolSize of HTablePool public |  Minor | Client | Jianwei Cui | Jianwei Cui |


