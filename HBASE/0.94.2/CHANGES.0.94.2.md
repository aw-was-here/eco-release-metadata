
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

## Release 0.94.2 - 2012-10-11



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6427](https://issues.apache.org/jira/browse/HBASE-6427) | Pluggable compaction and scan policies via coprocessors |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6505](https://issues.apache.org/jira/browse/HBASE-6505) | Allow shared RegionObserver state |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6550](https://issues.apache.org/jira/browse/HBASE-6550) | Refactoring ReplicationSink to make it more responsive of cluster health |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6373](https://issues.apache.org/jira/browse/HBASE-6373) | Add more context information to audit log messages |  Minor | security | Marcelo Vanzin |  |
| [HBASE-6444](https://issues.apache.org/jira/browse/HBASE-6444) | Expose the ability to set custom HTTP Request Headers for the REST client used by RemoteHTable |  Major | REST | Erich Hochmuth | Jimmy Xiang |
| [HBASE-6522](https://issues.apache.org/jira/browse/HBASE-6522) | Expose locks and leases to Coprocessors |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6308](https://issues.apache.org/jira/browse/HBASE-6308) | Coprocessors should be loaded in a custom ClassLoader to prevent dependency conflicts with HBase |  Major | Coprocessors | James Baldassari | Andrew Purtell |
| [HBASE-5728](https://issues.apache.org/jira/browse/HBASE-5728) | Methods Missing in HTableInterface |  Major | Client | Bing Li | Jimmy Xiang |
| [HBASE-5714](https://issues.apache.org/jira/browse/HBASE-5714) | Add write permissions check before any hbck run that modifies hdfs. |  Major | hbck | Jonathan Hsieh | Liang Xie |
| [HBASE-6644](https://issues.apache.org/jira/browse/HBASE-6644) | HBaseAdmin.createTable should wait more till table is enabled. |  Minor | Client, test | Jimmy Xiang | Jimmy Xiang |
| [HBASE-3271](https://issues.apache.org/jira/browse/HBASE-3271) | Allow .META. table to be exported |  Major | util | Ted Yu | Liang Xie |
| [HBASE-6458](https://issues.apache.org/jira/browse/HBASE-6458) | new comparator twice in checkAndPut, just reuse the first one |  Major | . | binlijin |  |
| [HBASE-6643](https://issues.apache.org/jira/browse/HBASE-6643) | Accept encoded region name in compacting/spliting region from shell |  Major | shell | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6586](https://issues.apache.org/jira/browse/HBASE-6586) | Quarantine Corrupted HFiles with hbck |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6291](https://issues.apache.org/jira/browse/HBASE-6291) | Don't retry increments on an invalid cell |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-6286](https://issues.apache.org/jira/browse/HBASE-6286) | Upgrade maven-compiler-plugin to 2.5.1 |  Minor | build | Andrew Purtell | Andrew Purtell |
| [HBASE-5631](https://issues.apache.org/jira/browse/HBASE-5631) | hbck should handle case where .tableinfo file is missing. |  Major | hbck | Jonathan Hsieh | Jie Huang |
| [HBASE-6860](https://issues.apache.org/jira/browse/HBASE-6860) | [replication] HBASE-6550 is too aggressive, DDOSes .META. |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-6914](https://issues.apache.org/jira/browse/HBASE-6914) | Scans/Gets/Mutations don't give a good error if the table is disabled. |  Major | Client | Elliott Clark | Elliott Clark |
| [HBASE-5582](https://issues.apache.org/jira/browse/HBASE-5582) | "No HServerInfo found for" should be a WARNING message |  Trivial | master | Shrijeet Paliwal | Kevin Odell |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5549](https://issues.apache.org/jira/browse/HBASE-5549) | Master can fail if ZooKeeper session expires |  Minor | master, Zookeeper | Nicolas Liochon | Nicolas Liochon |
| [HBASE-6211](https://issues.apache.org/jira/browse/HBASE-6211) | Put latencies in jmx |  Major | metrics, monitoring | Elliott Clark | Elliott Clark |
| [HBASE-6447](https://issues.apache.org/jira/browse/HBASE-6447) | Common TestZooKeeper failures on jenkins: testMasterSessionExpired and testCreateSilentIsReallySilent |  Major | test | stack | stack |
| [HBASE-6450](https://issues.apache.org/jira/browse/HBASE-6450) | HBase startup should be with MALLOC\_MAX\_ARENA set |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-6460](https://issues.apache.org/jira/browse/HBASE-6460) | hbck "-repairHoles" usage inconsistent with "-fixHdfsOrphans" |  Minor | hbck | Jie Huang | Jie Huang |
| [HBASE-6359](https://issues.apache.org/jira/browse/HBASE-6359) | KeyValue may return incorrect values after readFields() |  Major | . | Dave Revell | Dave Revell |
| [HBASE-6520](https://issues.apache.org/jira/browse/HBASE-6520) | MSLab May cause the Bytes.toLong not work correctly for increment |  Major | . | ShiXing | ShiXing |
| [HBASE-6525](https://issues.apache.org/jira/browse/HBASE-6525) | bin/replication/copy\_tables\_desc.rb references non-existent class |  Trivial | scripts | David S. Wang | David S. Wang |
| [HBASE-6512](https://issues.apache.org/jira/browse/HBASE-6512) | Incorrect OfflineMetaRepair log class name |  Major | hbck | Liang Xie | Liang Xie |
| [HBASE-6478](https://issues.apache.org/jira/browse/HBASE-6478) | TestClassLoading.testClassLoadingFromLibDirInJar occasionally fails |  Major | test | zhou wenjian |  |
| [HBASE-6579](https://issues.apache.org/jira/browse/HBASE-6579) | Unnecessary KV order check in StoreScanner |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6552](https://issues.apache.org/jira/browse/HBASE-6552) | TestAcidGuarantees system test should flush more aggressively |  Major | test | Gregory Chanan | Gregory Chanan |
| [HBASE-6263](https://issues.apache.org/jira/browse/HBASE-6263) | Use default mode for HBase Thrift gateway if not specified |  Minor | Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-6471](https://issues.apache.org/jira/browse/HBASE-6471) | Performance regression caused by HBASE-4054 |  Critical | Client | Lars George | Jimmy Xiang |
| [HBASE-6596](https://issues.apache.org/jira/browse/HBASE-6596) | Revert HBASE-5022; it undoes HBC.create |  Major | . | stack | stack |
| [HBASE-6561](https://issues.apache.org/jira/browse/HBASE-6561) | Gets/Puts with many columns send the RegionServer into an "endless" loop |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6565](https://issues.apache.org/jira/browse/HBASE-6565) | Coprocessor exec result Map is not thread safe |  Major | Client, Coprocessors | Yuan Kang | Yuan Kang |
| [HBASE-6576](https://issues.apache.org/jira/browse/HBASE-6576) | HBaseAdmin.createTable should wait until the table is enabled |  Major | Client, test | Gregory Chanan | Gregory Chanan |
| [HBASE-6602](https://issues.apache.org/jira/browse/HBASE-6602) | Region Server Dynamic Metrics can cause high cpu usage. |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-6378](https://issues.apache.org/jira/browse/HBASE-6378) | the javadoc of  setEnabledTable maybe not describe accurately |  Major | master | zhou wenjian | David S. Wang |
| [HBASE-6503](https://issues.apache.org/jira/browse/HBASE-6503) | HBase Shell Documentation For DROP Is Outdated |  Trivial | . | Paul Cavallaro | Paul Cavallaro |
| [HBASE-6603](https://issues.apache.org/jira/browse/HBASE-6603) | RegionMetricsStorage.incrNumericMetric is called too often |  Major | Performance | Lars Hofhansl | M. Chen |
| [HBASE-6621](https://issues.apache.org/jira/browse/HBASE-6621) | Reduce calls to Bytes.toInt |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6631](https://issues.apache.org/jira/browse/HBASE-6631) | TestHMasterRPCException in 0.92 failed twice on socket timeout |  Major | . | stack | stack |
| [HBASE-6632](https://issues.apache.org/jira/browse/HBASE-6632) | [0.92 UNIT TESTS] testCreateTableRPCTimeOut sets rpc timeout to 1500ms and leaves it (testHundredsOfTable fails w/ 1500ms timeout) |  Major | . | stack | stack |
| [HBASE-6437](https://issues.apache.org/jira/browse/HBASE-6437) | Avoid admin.balance during master initialize |  Major | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-6616](https://issues.apache.org/jira/browse/HBASE-6616) | test failure in TestDelayedRpc#testTooManyDelayedRpcs |  Major | test | Ming Ma | Ming Ma |
| [HBASE-6623](https://issues.apache.org/jira/browse/HBASE-6623) | [replication] replication metrics value AgeOfLastShippedOp is not set correctly |  Minor | Replication | terry zhang | terry zhang |
| [HBASE-6641](https://issues.apache.org/jira/browse/HBASE-6641) | more message with DoNotRetryIOException in client |  Major | Client | Zhou wenjian | Zhou wenjian |
| [HBASE-6638](https://issues.apache.org/jira/browse/HBASE-6638) | Move DaemonThreadFactory into Threads (0.94) |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6608](https://issues.apache.org/jira/browse/HBASE-6608) | Fix for HBASE-6160, META entries from daughters can be deleted before parent entries, shouldn't compare HRegionInfo's |  Major | Client, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-5292](https://issues.apache.org/jira/browse/HBASE-5292) | getsize per-CF metric incorrectly counts compaction related reads as well |  Major | . | Kannan Muthukkaruppan |  |
| [HBASE-6514](https://issues.apache.org/jira/browse/HBASE-6514) | unknown metrics type: org.apache.hadoop.hbase.metrics.histogram.MetricsHistogram |  Major | test | Archimedes Trajano | Elliott Clark |
| [HBASE-6529](https://issues.apache.org/jira/browse/HBASE-6529) | With HFile v2, the region server will always perform an extra copy of source files |  Major | Performance, regionserver | Jason Dai | Jie Huang |
| [HBASE-6663](https://issues.apache.org/jira/browse/HBASE-6663) | NPE race in HConnection if zookeeper is reset |  Minor | Client | Gregory Chanan | Gregory Chanan |
| [HBASE-6662](https://issues.apache.org/jira/browse/HBASE-6662) | Region server incorrectly reports its own address as master's address |  Minor | . | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-6364](https://issues.apache.org/jira/browse/HBASE-6364) | Powering down the server host holding the .META. table causes HBase Client to take excessively long to recover and connect to reassigned .META. table |  Major | Client | Suraj Varma | Nicolas Liochon |
| [HBASE-6671](https://issues.apache.org/jira/browse/HBASE-6671) | Kerberos authenticated super user should be able to retrieve proxied delegation tokens |  Major | . | Francis Liu | Francis Liu |
| [HBASE-6686](https://issues.apache.org/jira/browse/HBASE-6686) | HFile Quarantine fails with missing dirs in hadoop 2.0 |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6685](https://issues.apache.org/jira/browse/HBASE-6685) | Thrift DemoClient.pl got NullPointerException |  Minor | Client, Thrift | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6165](https://issues.apache.org/jira/browse/HBASE-6165) | Replication can overrun .META. scans on cluster re-start |  Major | . | Elliott Clark | Himanshu Vashishtha |
| [HBASE-6587](https://issues.apache.org/jira/browse/HBASE-6587) | Region would be assigned twice in the case of all RS offline |  Major | . | chunhui shen | chunhui shen |
| [HBASE-6537](https://issues.apache.org/jira/browse/HBASE-6537) | Race between balancer and disable table can lead to inconsistent cluster |  Major | master | Zhou wenjian | Zhou wenjian |
| [HBASE-6647](https://issues.apache.org/jira/browse/HBASE-6647) | [performance regression] appendNoSync/HBASE-4528 doesn't take deferred log flush into account |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-6321](https://issues.apache.org/jira/browse/HBASE-6321) | ReplicationSource dies reading the peer's id |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-6268](https://issues.apache.org/jira/browse/HBASE-6268) | Can't enable a table on a 0.94 cluster from a 0.92 client |  Major | . | Jean-Daniel Cryans | Ted Yu |
| [HBASE-6516](https://issues.apache.org/jira/browse/HBASE-6516) | hbck cannot detect any IOException while ".tableinfo" file is missing |  Major | hbck | Jie Huang | Jie Huang |
| [HBASE-6711](https://issues.apache.org/jira/browse/HBASE-6711) | Avoid local results copy in StoreScanner |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6432](https://issues.apache.org/jira/browse/HBASE-6432) | HRegionServer doesn't properly set clusterId in conf |  Major | . | Francis Liu | Francis Liu |
| [HBASE-6734](https://issues.apache.org/jira/browse/HBASE-6734) | Code duplication in LoadIncrementalHFiles |  Minor | mapreduce | Richard Ding | Richard Ding |
| [HBASE-6713](https://issues.apache.org/jira/browse/HBASE-6713) | Stopping META/ROOT RS may take 50mins when some region is splitting |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-6757](https://issues.apache.org/jira/browse/HBASE-6757) | Very inefficient behaviour of scan using FilterList |  Major | Filters | Jerry Lam | Lars Hofhansl |
| [HBASE-6340](https://issues.apache.org/jira/browse/HBASE-6340) | HBase RPC should allow protocol extension with common interfaces. |  Major | Coprocessors, regionserver | Konstantin Shvachko | Konstantin Shvachko |
| [HBASE-5997](https://issues.apache.org/jira/browse/HBASE-5997) | Fix concerns raised in HBASE-5922 related to HalfStoreFileReader |  Major | . | ramkrishna.s.vasudevan | Anoop Sam John |
| [HBASE-6648](https://issues.apache.org/jira/browse/HBASE-6648) | [0.92 UNIT TESTS] TestMasterObserver.testRegionTransitionOperations fails occasionally |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-6710](https://issues.apache.org/jira/browse/HBASE-6710) | 0.92/0.94 compatibility issues due to HBASE-5206 |  Critical | . | Gregory Chanan | Gregory Chanan |
| [HBASE-6769](https://issues.apache.org/jira/browse/HBASE-6769) | HRS.multi eats NoSuchColumnFamilyException since HBASE-5021 |  Critical | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-6504](https://issues.apache.org/jira/browse/HBASE-6504) | Adding GC details prevents HBase from starting in non-distributed mode |  Trivial | . | Benoit Sigoure | Michael Drzal |
| [HBASE-6438](https://issues.apache.org/jira/browse/HBASE-6438) | RegionAlreadyInTransitionException needs to give more info to avoid assignment inconsistencies |  Major | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-6803](https://issues.apache.org/jira/browse/HBASE-6803) | script hbase should add JAVA\_LIBRARY\_PATH to LD\_LIBRARY\_PATH |  Major | shell | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6844](https://issues.apache.org/jira/browse/HBASE-6844) | upgrade 0.23 version dependency in 0.94 |  Major | . | Francis Liu | Francis Liu |
| [HBASE-6842](https://issues.apache.org/jira/browse/HBASE-6842) | the jar used in  coprocessor is not deleted in local which will exhaust  the space of /tmp |  Critical | Coprocessors | Zhou wenjian | Zhou wenjian |
| [HBASE-6839](https://issues.apache.org/jira/browse/HBASE-6839) | Operations may be executed without holding rowLock |  Critical | regionserver | chunhui shen | chunhui shen |
| [HBASE-6649](https://issues.apache.org/jira/browse/HBASE-6649) | [0.92 UNIT TESTS] TestReplication.queueFailover occasionally fails [Part-1] |  Blocker | . | Devaraj Das | Devaraj Das |
| [HBASE-6847](https://issues.apache.org/jira/browse/HBASE-6847) | HBASE-6649 broke replication |  Blocker | . | Jean-Daniel Cryans | Devaraj Das |
| [HBASE-6488](https://issues.apache.org/jira/browse/HBASE-6488) | HBase wont run on IPv6 on OSes that use zone-indexes |  Major | . | ryan rawson | ryan rawson |
| [HBASE-6714](https://issues.apache.org/jira/browse/HBASE-6714) | TestMultiSlaveReplication#testMultiSlaveReplication may fail |  Minor | Replication, test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-6851](https://issues.apache.org/jira/browse/HBASE-6851) | Race condition in TableAuthManager.updateGlobalCache() |  Critical | security | Gary Helmling | Gary Helmling |
| [HBASE-6784](https://issues.apache.org/jira/browse/HBASE-6784) | TestCoprocessorScanPolicy is sometimes flaky when run locally |  Minor | . | ramkrishna.s.vasudevan | Lars Hofhansl |
| [HBASE-6868](https://issues.apache.org/jira/browse/HBASE-6868) | Skip checksum is broke; are we double-checksumming by default? |  Blocker | HFile, wal | LiuLei | Lars Hofhansl |
| [HBASE-6679](https://issues.apache.org/jira/browse/HBASE-6679) | RegionServer aborts due to race between compaction and split |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-6854](https://issues.apache.org/jira/browse/HBASE-6854) | Deletion of SPLITTING node on split rollback should clear the region from RIT |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6888](https://issues.apache.org/jira/browse/HBASE-6888) | HBase scripts ignore any HBASE\_OPTS set in the environment |  Minor | scripts | Aditya Kishore | Aditya Kishore |
| [HBASE-6688](https://issues.apache.org/jira/browse/HBASE-6688) | folder referred by thrift demo app instructions is outdated |  Minor | . | Jimmy Xiang | stack |
| [HBASE-6871](https://issues.apache.org/jira/browse/HBASE-6871) | HFileBlockIndex Write Error in HFile V2 due to incorrect split into intermediate index blocks |  Critical | HFile | Feng Wang | Mikhail Bautin |
| [HBASE-6853](https://issues.apache.org/jira/browse/HBASE-6853) | IllegalArgumentException is thrown when an empty region is splitted |  Major | . | ramkrishna.s.vasudevan | Priyadarshini |
| [HBASE-4565](https://issues.apache.org/jira/browse/HBASE-4565) | Maven HBase build broken on cygwin with copynativelib.sh call. |  Major | build | Suraj Varma | Suraj Varma |
| [HBASE-6906](https://issues.apache.org/jira/browse/HBASE-6906) | TestHBaseFsck#testQuarantine\* tests are flakey due to TableNotEnabledException |  Major | hbck, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6901](https://issues.apache.org/jira/browse/HBASE-6901) | Store file compactSelection throws ArrayIndexOutOfBoundsException |  Major | HFile | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6299](https://issues.apache.org/jira/browse/HBASE-6299) | RS starting region open while failing ack to HMaster.sendRegionOpen() causes inconsistency in HMaster's region state and a series of successive problems |  Critical | master | Maryann Xue | Maryann Xue |
| [HBASE-6927](https://issues.apache.org/jira/browse/HBASE-6927) | WrongFS using HRegionInfo.getTableDesc() and different fs for hbase.root and fs.defaultFS |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-6912](https://issues.apache.org/jira/browse/HBASE-6912) | Filters are not properly applied in certain cases |  Major | . | Alex Newman | Lars Hofhansl |
| [HBASE-6916](https://issues.apache.org/jira/browse/HBASE-6916) | HBA logs at info level errors that won't show in the shell |  Minor | shell | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-6946](https://issues.apache.org/jira/browse/HBASE-6946) | JavaDoc missing from release tarballs |  Major | build | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6900](https://issues.apache.org/jira/browse/HBASE-6900) | RegionScanner.reseek() creates NPE when a flush or compaction happens before the reseek. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-6889](https://issues.apache.org/jira/browse/HBASE-6889) | Ignore source control files with apache-rat |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-6920](https://issues.apache.org/jira/browse/HBASE-6920) | On timeout connecting to master, client can get stuck and never make progress |  Critical | . | Gregory Chanan | Gregory Chanan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6507](https://issues.apache.org/jira/browse/HBASE-6507) | [hbck] TestHBaseFsck ran into TableNotEnabledException |  Minor | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-6593](https://issues.apache.org/jira/browse/HBASE-6593) | TestAdmin times out sometimes |  Minor | . | Jimmy Xiang | Jimmy Xiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6496](https://issues.apache.org/jira/browse/HBASE-6496) | Example ZK based scan policy |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-6257](https://issues.apache.org/jira/browse/HBASE-6257) | Avoid unnecessary flush & compact on Meta in admin.rb. |  Major | security, shell | Laxman | Laxman |
| [HBASE-6792](https://issues.apache.org/jira/browse/HBASE-6792) | Remove interface audience annotations in 0.94/0.92 introduced by HBASE-6516 |  Major | . | Jonathan Hsieh | Jonathan Hsieh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-6538](https://issues.apache.org/jira/browse/HBASE-6538) | Remove copy\_table.rb script |  Minor | scripts | David S. Wang | David S. Wang |
| [HBASE-5042](https://issues.apache.org/jira/browse/HBASE-5042) | TestReadWriteConsistencyControl should be renamed |  Major | . | Ted Yu | Chris Trezzo |
| [HBASE-6288](https://issues.apache.org/jira/browse/HBASE-6288) | In hbase-daemons.sh, description of the default backup-master file path is wrong |  Major | master, scripts, shell | Benjamin Kim | Benjamin Kim |


