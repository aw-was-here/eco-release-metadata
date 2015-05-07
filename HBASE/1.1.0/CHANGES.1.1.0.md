
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
# Changelog

## Release 1.1.0 - Unreleased

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13118](https://issues.apache.org/jira/browse/HBASE-13118) | [PE] Add being able to write many columns |  Major | test | stack | stack |
| [HBASE-12774](https://issues.apache.org/jira/browse/HBASE-12774) | Fix the inconsistent permission checks for bulkloading. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12684](https://issues.apache.org/jira/browse/HBASE-12684) | Add new AsyncRpcClient |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-10728](https://issues.apache.org/jira/browse/HBASE-10728) | get\_counter value is never used. |  Major | . | Jean-Marc Spaggiari | Lars George |
| [HBASE-6778](https://issues.apache.org/jira/browse/HBASE-6778) | Deprecate Chore; its a thread per task when we should have one thread to do all tasks |  Major | . | stack | Jonathan Lawlor |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13412](https://issues.apache.org/jira/browse/HBASE-13412) | Region split decisions should have jitter |  Major | regionserver | Elliott Clark | Elliott Clark |
| [HBASE-13170](https://issues.apache.org/jira/browse/HBASE-13170) | Allow block cache to be external |  Major | io | Elliott Clark | Elliott Clark |
| [HBASE-13090](https://issues.apache.org/jira/browse/HBASE-13090) | Progress heartbeats for long running scanners |  Major | . | Andrew Purtell | Jonathan Lawlor |
| [HBASE-13063](https://issues.apache.org/jira/browse/HBASE-13063) | Allow to turn off memstore replication for region replicas |  Minor | regionserver, Replication | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13057](https://issues.apache.org/jira/browse/HBASE-13057) | Provide client utility to easily enable and disable table replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-12972](https://issues.apache.org/jira/browse/HBASE-12972) | Region, a supportable public/evolving subset of HRegion |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12869](https://issues.apache.org/jira/browse/HBASE-12869) | Add a REST API implementation of the ClusterManager interface |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-12731](https://issues.apache.org/jira/browse/HBASE-12731) | Heap occupancy based client pushback |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12709](https://issues.apache.org/jira/browse/HBASE-12709) | [mvn] Add unit test excludes command line flag to the build. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12268](https://issues.apache.org/jira/browse/HBASE-12268) | Add support for Scan.setRowPrefixFilter to shell |  Major | shell | Niels Basjes | Niels Basjes |
| [HBASE-9531](https://issues.apache.org/jira/browse/HBASE-9531) | a command line (hbase shell) interface to retreive the replication metrics and show replication lag |  Major | Replication | Demai Ni | Ashish Singhi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13578](https://issues.apache.org/jira/browse/HBASE-13578) | Remove Arrays.asList().subList() from FSHLog.offer() |  Trivial | wal | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13552](https://issues.apache.org/jira/browse/HBASE-13552) | ChoreService shutdown message could be more informative |  Trivial | . | Andrew Purtell | Jonathan Lawlor |
| [HBASE-13550](https://issues.apache.org/jira/browse/HBASE-13550) | [Shell] Support unset of a list of table attributes |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13518](https://issues.apache.org/jira/browse/HBASE-13518) | Typo in hbase.hconnection.meta.lookup.threads.core parameter |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-13516](https://issues.apache.org/jira/browse/HBASE-13516) | Increase PermSize to 128MB |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13456](https://issues.apache.org/jira/browse/HBASE-13456) | Improve HFilePrettyPrinter first hbase:meta region processing |  Minor | util | Samir Ahmic | Samir Ahmic |
| [HBASE-13453](https://issues.apache.org/jira/browse/HBASE-13453) | Master should not bind to region server ports |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-13436](https://issues.apache.org/jira/browse/HBASE-13436) | Include user name in ADE for scans |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13431](https://issues.apache.org/jira/browse/HBASE-13431) | Allow to skip store file range check based on column family while creating reference files in HRegionFileSystem#splitStoreFile |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13419](https://issues.apache.org/jira/browse/HBASE-13419) | Thrift gateway should propagate text from exception causes. |  Major | Thrift | Michael Muller | Michael Muller |
| [HBASE-13381](https://issues.apache.org/jira/browse/HBASE-13381) | Expand TestSizeFailures to include small scans |  Minor | test | Josh Elser | Josh Elser |
| [HBASE-13370](https://issues.apache.org/jira/browse/HBASE-13370) | PE tool could give option for using Explicit Column Tracker which leads to seeks |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13369](https://issues.apache.org/jira/browse/HBASE-13369) | Expose scanNext stats to region server level |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13362](https://issues.apache.org/jira/browse/HBASE-13362) | Set max result size from client only (like scanner caching). |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13351](https://issues.apache.org/jira/browse/HBASE-13351) | Annotate internal MasterRpcServices methods with admin priority |  Major | master | Josh Elser | Josh Elser |
| [HBASE-13350](https://issues.apache.org/jira/browse/HBASE-13350) | Add a debug-warn if we fail HTD checks even if table.sanity.checks is false |  Trivial | master, Operability | Matteo Bertozzi | Matt Warhaftig |
| [HBASE-13345](https://issues.apache.org/jira/browse/HBASE-13345) | Fix LocalHBaseCluster so that different region server impl can be used for different slaves |  Minor | . | Jerry He | Jerry He |
| [HBASE-13342](https://issues.apache.org/jira/browse/HBASE-13342) | Fix incorrect interface annotations |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13316](https://issues.apache.org/jira/browse/HBASE-13316) | Reduce the downtime on planned moves of regions |  Minor | Balancer | Sameet Agarwal | Sameet Agarwal |
| [HBASE-13270](https://issues.apache.org/jira/browse/HBASE-13270) | Setter for Result#getStats is #addResults; confusing! |  Major | . | stack | Mikhail Antonov |
| [HBASE-13256](https://issues.apache.org/jira/browse/HBASE-13256) | HBaseConfiguration#checkDefaultsVersion(Configuration) has spelling error |  Trivial | Client | Josh Elser | Josh Elser |
| [HBASE-13255](https://issues.apache.org/jira/browse/HBASE-13255) | Bad grammar in RegionServer status page |  Trivial | monitoring | Josh Elser | Josh Elser |
| [HBASE-13241](https://issues.apache.org/jira/browse/HBASE-13241) | Add tests for group level grants |  Critical | security, test | Sean Busbey | Ashish Singhi |
| [HBASE-13236](https://issues.apache.org/jira/browse/HBASE-13236) | Clean up m2e-related warnings/errors from poms |  Minor | build | Josh Elser | Josh Elser |
| [HBASE-13235](https://issues.apache.org/jira/browse/HBASE-13235) | Revisit the security auditing semantics. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13223](https://issues.apache.org/jira/browse/HBASE-13223) | Add testMoveMeta to IntegrationTestMTTR |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13222](https://issues.apache.org/jira/browse/HBASE-13222) | Provide means of non-destructive balancer inspection |  Minor | Balancer | Nick Dimiduk | Josh Elser |
| [HBASE-13216](https://issues.apache.org/jira/browse/HBASE-13216) | Add version info in RPC connection header |  Minor | Client, rpc | Liu Shaohui | Liu Shaohui |
| [HBASE-13183](https://issues.apache.org/jira/browse/HBASE-13183) | Make ZK tickTime configurable in standalone HBase |  Minor | master | Alex Araujo | Alex Araujo |
| [HBASE-13171](https://issues.apache.org/jira/browse/HBASE-13171) | Change AccessControlClient methods to accept connection object to reduce setup time. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13168](https://issues.apache.org/jira/browse/HBASE-13168) | Backport HBASE-12590 "A solution for data skew in HBase-Mapreduce Job" |  Major | mapreduce | Nick Dimiduk | Ted Yu |
| [HBASE-13162](https://issues.apache.org/jira/browse/HBASE-13162) | Add capability for cleaning hbase acls to hbase cleanup script. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13142](https://issues.apache.org/jira/browse/HBASE-13142) | [PERF] Reuse the IPCUtil#buildCellBlock buffer |  Major | Performance | stack | Liang Xie |
| [HBASE-13138](https://issues.apache.org/jira/browse/HBASE-13138) | Clean up TestMasterObserver (debug, trying to figure why fails) |  Major | test | stack | stack |
| [HBASE-13132](https://issues.apache.org/jira/browse/HBASE-13132) | Improve RemoveColumn action debug message |  Trivial | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13128](https://issues.apache.org/jira/browse/HBASE-13128) | Make HBCK's lock file retry creation and deletion |  Minor | hbck | Victoria | Victoria |
| [HBASE-13122](https://issues.apache.org/jira/browse/HBASE-13122) | Improve efficiency for return codes of some filters |  Major | Filters | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13120](https://issues.apache.org/jira/browse/HBASE-13120) | Allow disabling hadoop classpath and native library lookup |  Major | hbase | Siddharth Wagle |  |
| [HBASE-13109](https://issues.apache.org/jira/browse/HBASE-13109) | Make better SEEK vs SKIP decisions during scanning |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13100](https://issues.apache.org/jira/browse/HBASE-13100) | Shell command to retrieve table splits |  Minor | shell | Sean Busbey | Ashish Singhi |
| [HBASE-13086](https://issues.apache.org/jira/browse/HBASE-13086) | Show ZK root node on Master WebUI |  Minor | master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13080](https://issues.apache.org/jira/browse/HBASE-13080) | Hbase shell message containing extra quote at the end of error message. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13059](https://issues.apache.org/jira/browse/HBASE-13059) | Set executable bit for scripts in dev-support |  Trivial | scripts | Dima Spivak | Dima Spivak |
| [HBASE-13056](https://issues.apache.org/jira/browse/HBASE-13056) | Refactor table.jsp code to remove repeated code and make it easier to add new checks |  Major | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13054](https://issues.apache.org/jira/browse/HBASE-13054) | Provide more tracing information for locking/latching events. |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-13044](https://issues.apache.org/jira/browse/HBASE-13044) | Configuration option for disabling coprocessor loading |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13008](https://issues.apache.org/jira/browse/HBASE-13008) | Better default for hbase.regionserver.regionSplitLimit parameter. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13002](https://issues.apache.org/jira/browse/HBASE-13002) | Make encryption cipher configurable |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12997](https://issues.apache.org/jira/browse/HBASE-12997) | FSHLog should print pipeline on low replication |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12987](https://issues.apache.org/jira/browse/HBASE-12987) | HBCK should print status while scanning over many regions |  Major | hbck, Usability | Nick Dimiduk | Josh Elser |
| [HBASE-12982](https://issues.apache.org/jira/browse/HBASE-12982) | Adding timeouts to TestChoreService |  Major | . | stack | stack |
| [HBASE-12979](https://issues.apache.org/jira/browse/HBASE-12979) | Use setters instead of return values for handing back statistics from HRegion methods |  Major | . | Andrew Purtell | Jesse Yates |
| [HBASE-12975](https://issues.apache.org/jira/browse/HBASE-12975) | Supportable SplitTransaction and RegionMergeTransaction interfaces |  Major | . | Rajeshbabu Chintaguntla | Andrew Purtell |
| [HBASE-12973](https://issues.apache.org/jira/browse/HBASE-12973) | RegionCoprocessorEnvironment should provide HRegionInfo directly |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12957](https://issues.apache.org/jira/browse/HBASE-12957) | region\_mover#isSuccessfulScan may be extremely slow on region with lots of expired data |  Minor | scripts | hongyu bi | hongyu bi |
| [HBASE-12929](https://issues.apache.org/jira/browse/HBASE-12929) | TableMapReduceUtil.initTableMapperJob unnecessarily limits the types of outputKeyClass and outputValueClass |  Minor | mapreduce | Will Temperley |  |
| [HBASE-12899](https://issues.apache.org/jira/browse/HBASE-12899) | HBase should prefix htrace configuration keys with "hbase.htrace" rather than just "hbase." |  Major | . | Colin Patrick McCabe |  |
| [HBASE-12893](https://issues.apache.org/jira/browse/HBASE-12893) | IntegrationTestBigLinkedListWithVisibility should use buffered writes |  Minor | integration tests | Nick Dimiduk | Jingcheng Du |
| [HBASE-12891](https://issues.apache.org/jira/browse/HBASE-12891) | Parallel execution for Hbck checkRegionConsistency |  Major | hbck | churro morales | Dave Latham |
| [HBASE-12825](https://issues.apache.org/jira/browse/HBASE-12825) | CallRunner exception messages should include destination host:port |  Minor | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12768](https://issues.apache.org/jira/browse/HBASE-12768) | Support enable cache\_data\_on\_write in Shell while creating table |  Major | shell | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12762](https://issues.apache.org/jira/browse/HBASE-12762) | Region with no hfiles will have the highest locality cost in LocalityCostFunction |  Minor | Balancer | cuijianwei | cuijianwei |
| [HBASE-12761](https://issues.apache.org/jira/browse/HBASE-12761) | On region jump ClientScanners should get next row start key instead of a skip. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12745](https://issues.apache.org/jira/browse/HBASE-12745) | Visibility Labels:  support visibility labels for user groups. |  Major | security | Jerry He | Jerry He |
| [HBASE-12736](https://issues.apache.org/jira/browse/HBASE-12736) | Let MetaScanner recycle a given Connection |  Major | Client | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12720](https://issues.apache.org/jira/browse/HBASE-12720) | Make InternalScan LimitedPrivate |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-12719](https://issues.apache.org/jira/browse/HBASE-12719) | Add test WAL provider to quantify FSHLog overhead in the absence of HDFS. |  Minor | test, wal | Sean Busbey | Sean Busbey |
| [HBASE-12706](https://issues.apache.org/jira/browse/HBASE-12706) | Support multiple port numbers in ZK quorum string |  Critical | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12641](https://issues.apache.org/jira/browse/HBASE-12641) | Grant all permissions of hbase zookeeper node to hbase superuser in a secure cluster |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12627](https://issues.apache.org/jira/browse/HBASE-12627) | Add back snapshot batching facility from HBASE-11360 dropped by HBASE-11742 |  Major | master, scaling | stack | churro morales |
| [HBASE-12620](https://issues.apache.org/jira/browse/HBASE-12620) | Add HBASE-11639 related items to Ref Guide |  Major | documentation | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12608](https://issues.apache.org/jira/browse/HBASE-12608) | region\_mover.rb does not log moving region count correctly when loading regions |  Minor | shell | cuijianwei | cuijianwei |
| [HBASE-12429](https://issues.apache.org/jira/browse/HBASE-12429) | Add port to ClusterManager's actions. |  Major | integration tests | Elliott Clark | Elliott Clark |
| [HBASE-12405](https://issues.apache.org/jira/browse/HBASE-12405) | WAL accounting by Store |  Major | wal | zhangduo | zhangduo |
| [HBASE-12223](https://issues.apache.org/jira/browse/HBASE-12223) | MultiTableInputFormatBase.getSplits is too slow |  Minor | Client | shanwen | YuanBo Peng |
| [HBASE-12071](https://issues.apache.org/jira/browse/HBASE-12071) | Separate out thread pool for Master \<-\> RegionServer communication |  Major | . | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-11869](https://issues.apache.org/jira/browse/HBASE-11869) | Support snapshot owner |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-11864](https://issues.apache.org/jira/browse/HBASE-11864) | Enhance HLogPrettyPrinter to print information from WAL Header |  Minor | . | Ted Yu | Chuhan Yang |
| [HBASE-11144](https://issues.apache.org/jira/browse/HBASE-11144) | Filter to support scanning multiple row key ranges |  Major | Filters | Jiajia Li | Jiajia Li |
| [HBASE-10201](https://issues.apache.org/jira/browse/HBASE-10201) | Port 'Make flush decisions per column family' to trunk |  Major | wal | Ted Yu | zhangduo |
| [HBASE-8329](https://issues.apache.org/jira/browse/HBASE-8329) | Limit compaction speed |  Major | Compaction | binlijin | zhangduo |
| [HBASE-7541](https://issues.apache.org/jira/browse/HBASE-7541) | Convert all tests that use HBaseTestingUtility.createMultiRegions to HBA.createTable |  Major | . | Jean-Daniel Cryans | Jonathan Lawlor |
| [HBASE-6919](https://issues.apache.org/jira/browse/HBASE-6919) | Remove unnecessary throws IOException from Bytes.readVLong |  Minor | . | James Taylor | Apekshit Sharma |
| [HBASE-5699](https://issues.apache.org/jira/browse/HBASE-5699) | Run with \> 1 WAL in HRegionServer |  Critical | Performance, wal | binlijin | Sean Busbey |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13632](https://issues.apache.org/jira/browse/HBASE-13632) | Backport HBASE-13368 to branch-1 and 0.98 |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13617](https://issues.apache.org/jira/browse/HBASE-13617) | TestReplicaWithCluster.testChangeTable timeout |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13596](https://issues.apache.org/jira/browse/HBASE-13596) | src assembly does not build |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13594](https://issues.apache.org/jira/browse/HBASE-13594) | MultiRowRangeFilter shouldn't call HBaseZeroCopyByteString.wrap() directly |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13589](https://issues.apache.org/jira/browse/HBASE-13589) | [WINDOWS] hbase.cmd script is broken |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13585](https://issues.apache.org/jira/browse/HBASE-13585) | HRegionFileSystem#splitStoreFile() finishes without closing the file handle in some situation |  Major | regionserver | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13577](https://issues.apache.org/jira/browse/HBASE-13577) | Documentation is pointing to wrong port for Master Web UI |  Minor | documentation | David Newcomer | Lars Francke |
| [HBASE-13576](https://issues.apache.org/jira/browse/HBASE-13576) | HBCK enhancement: Failure in checking one region should not fail the entire HBCK operation. |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13575](https://issues.apache.org/jira/browse/HBASE-13575) | TestChoreService has to make sure that the opened ChoreService is closed for each unit test |  Trivial | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13555](https://issues.apache.org/jira/browse/HBASE-13555) | StackServlet produces 500 error |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13546](https://issues.apache.org/jira/browse/HBASE-13546) | NPE on region server status page if all masters are down |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-13528](https://issues.apache.org/jira/browse/HBASE-13528) | A bug on selecting compaction pool |  Minor | Compaction | Shuaifeng Zhou | Shuaifeng Zhou |
| [HBASE-13527](https://issues.apache.org/jira/browse/HBASE-13527) | The default value for hbase.client.scanner.max.result.size is never actually set on Scans |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13526](https://issues.apache.org/jira/browse/HBASE-13526) | TestRegionServerReportForDuty can be flaky: hang or timeout |  Minor | test | Jerry He | Jerry He |
| [HBASE-13524](https://issues.apache.org/jira/browse/HBASE-13524) | TestReplicationAdmin fails on JDK 1.8 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13520](https://issues.apache.org/jira/browse/HBASE-13520) | NullPointerException in TagRewriteCell |  Major | . | Josh Elser | Josh Elser |
| [HBASE-13517](https://issues.apache.org/jira/browse/HBASE-13517) | Publish a client artifact with shaded dependencies |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13499](https://issues.apache.org/jira/browse/HBASE-13499) | AsyncRpcClient test cases failure in powerpc |  Major | IPC/RPC | sangamesh | zhangduo |
| [HBASE-13491](https://issues.apache.org/jira/browse/HBASE-13491) | Issue in FuzzyRowFilter#getNextForFuzzyRule |  Major | Filters | Anoop Sam John | Anoop Sam John |
| [HBASE-13490](https://issues.apache.org/jira/browse/HBASE-13490) | foreground daemon start re-executes ulimit output |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-13482](https://issues.apache.org/jira/browse/HBASE-13482) | Phoenix is failing to scan tables on secure environments. |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-13477](https://issues.apache.org/jira/browse/HBASE-13477) | Create metrics on failed requests |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13475](https://issues.apache.org/jira/browse/HBASE-13475) | Small spelling mistake in region\_mover#isSuccessfulScan causes NoMethodError |  Trivial | scripts | Victor Xu | Victor Xu |
| [HBASE-13473](https://issues.apache.org/jira/browse/HBASE-13473) | deleted cells come back alive after the stripe compaction |  Blocker | Compaction | jeongmin kim | jeongmin kim |
| [HBASE-13471](https://issues.apache.org/jira/browse/HBASE-13471) | Fix a possible infinite loop in doMiniBatchMutation |  Major | . | Elliott Clark | Rajesh Nishtala |
| [HBASE-13463](https://issues.apache.org/jira/browse/HBASE-13463) | Quota needs to be updated only in case of successful region merge |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13460](https://issues.apache.org/jira/browse/HBASE-13460) | Revise the MetaLookupPool executor-related defaults (introduced in HBASE-13036) |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13457](https://issues.apache.org/jira/browse/HBASE-13457) | SnapshotExistsException doesn't honor the DoNotRetry |  Trivial | Client | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13444](https://issues.apache.org/jira/browse/HBASE-13444) | IntegrationTestBigLinkedList from branch-1 can't talk to a cluster running branch-1.0 |  Blocker | . | Rajesh Nishtala |  |
| [HBASE-13437](https://issues.apache.org/jira/browse/HBASE-13437) | ThriftServer leaks ZooKeeper connections |  Major | Thrift | Winger Pun | Winger Pun |
| [HBASE-13430](https://issues.apache.org/jira/browse/HBASE-13430) | HFiles that are in use by a table cloned from a snapshot may be deleted when that snapshot is deleted |  Critical | hbase | Tobi Vollebregt | Tobi Vollebregt |
| [HBASE-13423](https://issues.apache.org/jira/browse/HBASE-13423) | Remove duplicate entry for hbase.regionserver.regionSplitLimit in hbase-default.xml |  Minor | hbase | Apekshit Sharma | Apekshit Sharma |
| [HBASE-13417](https://issues.apache.org/jira/browse/HBASE-13417) | batchCoprocessorService() does not handle NULL keys |  Minor | Coprocessors | Lars George | Abhishek Singh Chouhan |
| [HBASE-13414](https://issues.apache.org/jira/browse/HBASE-13414) | TestHCM no longer needs to test for JRE 6. |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-13410](https://issues.apache.org/jira/browse/HBASE-13410) | Bug in KeyValueUtil.oswrite() for non Keyvalue cases |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13409](https://issues.apache.org/jira/browse/HBASE-13409) | Add categories to uncategorized tests |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13406](https://issues.apache.org/jira/browse/HBASE-13406) | TestAccessController is flaky when create is slow |  Minor | security, test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13402](https://issues.apache.org/jira/browse/HBASE-13402) | [Backport 1.1] HBASE-12552: listSnapshots should list only owned snapshots for non-super user |  Major | snapshots | Ashish Singhi | Ashish Singhi |
| [HBASE-13397](https://issues.apache.org/jira/browse/HBASE-13397) | Purge duplicate rpc request thread local |  Major | rpc | stack | stack |
| [HBASE-13394](https://issues.apache.org/jira/browse/HBASE-13394) | Failed to recreate a table when quota is enabled |  Major | security | Y. SREENIVASULU REDDY | Ashish Singhi |
| [HBASE-13388](https://issues.apache.org/jira/browse/HBASE-13388) | Handling NullPointer in ZKProcedureMemberRpcs while getting ZNode data |  Minor | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13385](https://issues.apache.org/jira/browse/HBASE-13385) | TestGenerateDelegationToken is broken with hadoop 2.8.0 |  Major | test | zhangduo | zhangduo |
| [HBASE-13384](https://issues.apache.org/jira/browse/HBASE-13384) | Fix Javadoc warnings introduced by HBASE-12972 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13382](https://issues.apache.org/jira/browse/HBASE-13382) | IntegrationTestBigLinkedList should use SecureRandom |  Major | integration tests | Todd Lipcon | Dima Spivak |
| [HBASE-13374](https://issues.apache.org/jira/browse/HBASE-13374) | Small scanners (with particular configurations) do not return all rows |  Blocker | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13371](https://issues.apache.org/jira/browse/HBASE-13371) | Fix typo in TestAsyncIPC |  Major | test | zhangduo | zhangduo |
| [HBASE-13331](https://issues.apache.org/jira/browse/HBASE-13331) | Exceptions from DFS client can cause CatalogJanitor to delete referenced files |  Blocker | master | Elliott Clark | Elliott Clark |
| [HBASE-13328](https://issues.apache.org/jira/browse/HBASE-13328) | LoadIncrementalHFile.doBulkLoad(Path,HTable) should handle managed connections |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13326](https://issues.apache.org/jira/browse/HBASE-13326) | Disabled table can't be enabled after HBase is restarted |  Blocker | . | Dima Spivak | Andrey Stepachev |
| [HBASE-13321](https://issues.apache.org/jira/browse/HBASE-13321) | Fix flaky TestHBaseFsck |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13317](https://issues.apache.org/jira/browse/HBASE-13317) | Region server reportForDuty stuck looping if there is a master change |  Major | regionserver | Jerry He | Jerry He |
| [HBASE-13315](https://issues.apache.org/jira/browse/HBASE-13315) | BufferedMutator should be @InterfaceAudience.Public |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13314](https://issues.apache.org/jira/browse/HBASE-13314) | Fix NPE in HMaster.getClusterStatus() |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13309](https://issues.apache.org/jira/browse/HBASE-13309) | Some tests do not reset EnvironmentEdgeManager |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13308](https://issues.apache.org/jira/browse/HBASE-13308) | Fix flaky TestEndToEndSplitTransaction |  Major | test | zhangduo | zhangduo |
| [HBASE-13305](https://issues.apache.org/jira/browse/HBASE-13305) | Get(Get get) is not copying the row key |  Major | API | Lars George | Ashish Singhi |
| [HBASE-13301](https://issues.apache.org/jira/browse/HBASE-13301) | Possible memory leak in BucketCache |  Major | BlockCache | zhangduo | zhangduo |
| [HBASE-13299](https://issues.apache.org/jira/browse/HBASE-13299) | Add setReturnResults() to Increment, like Append has |  Critical | API | Lars George | Ashish Singhi |
| [HBASE-13298](https://issues.apache.org/jira/browse/HBASE-13298) | Clarify if Table.{set\|get}WriteBufferSize() is deprecated or not |  Critical | API | Lars George | stack |
| [HBASE-13296](https://issues.apache.org/jira/browse/HBASE-13296) | Fix the deletion of acl notify nodes for namespace. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13295](https://issues.apache.org/jira/browse/HBASE-13295) | TestInfoServers hang |  Major | test | zhangduo | zhangduo |
| [HBASE-13294](https://issues.apache.org/jira/browse/HBASE-13294) | Fix the critical ancient loopholes in security testing infrastructure. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13289](https://issues.apache.org/jira/browse/HBASE-13289) | typo in splitSuccessCount  metric |  Major | metrics | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13285](https://issues.apache.org/jira/browse/HBASE-13285) | Fix flaky getRegions() in TestAccessController.setUp() |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13282](https://issues.apache.org/jira/browse/HBASE-13282) | Fix the minor issues of running Canary on kerberized environment |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13275](https://issues.apache.org/jira/browse/HBASE-13275) | Setting hbase.security.authorization to false does not disable authorization |  Major | . | William Watson | Andrew Purtell |
| [HBASE-13274](https://issues.apache.org/jira/browse/HBASE-13274) | Fix misplaced deprecation in Delete#addXYZ |  Major | API | stack | Mikhail Antonov |
| [HBASE-13273](https://issues.apache.org/jira/browse/HBASE-13273) | Make Result.EMPTY\_RESULT read-only; currently it can be modified |  Major | . | stack | Mikhail Antonov |
| [HBASE-13265](https://issues.apache.org/jira/browse/HBASE-13265) | Make thrift2 usable from c++ |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13262](https://issues.apache.org/jira/browse/HBASE-13262) | ResultScanner doesn't return all rows in Scan |  Blocker | Client | Josh Elser | Josh Elser |
| [HBASE-13253](https://issues.apache.org/jira/browse/HBASE-13253) | LoadIncrementalHFiles unify hfiles discovery |  Major | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13246](https://issues.apache.org/jira/browse/HBASE-13246) | Correct the assertion for namespace permissions in tearDown method of TestAccessController |  Minor | security, test | Ashish Singhi | Ashish Singhi |
| [HBASE-13242](https://issues.apache.org/jira/browse/HBASE-13242) | TestPerColumnFamilyFlush.testFlushingWhenLogRolling hung |  Major | test | zhangduo | zhangduo |
| [HBASE-13239](https://issues.apache.org/jira/browse/HBASE-13239) | HBase grant at specific column level does not work for Groups |  Major | hbase | Jaymin Patel | Ted Yu |
| [HBASE-13232](https://issues.apache.org/jira/browse/HBASE-13232) | ConnectionManger : Batch pool threads and metaLookup pool threads should use different name pattern |  Trivial | . | Anoop Sam John | Anoop Sam John |
| [HBASE-13229](https://issues.apache.org/jira/browse/HBASE-13229) | Specify bash for local-regionservers.sh and local-master-backup.sh |  Minor | scripts | Gustavo Anatoly | Gustavo Anatoly |
| [HBASE-13227](https://issues.apache.org/jira/browse/HBASE-13227) | LoadIncrementalHFile should skip non-files inside a possible family-dir |  Minor | Client, mapreduce | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13224](https://issues.apache.org/jira/browse/HBASE-13224) | Minor formatting issue when logging a namespace scope in AuthResult#toContextString |  Trivial | Coprocessors, security | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13206](https://issues.apache.org/jira/browse/HBASE-13206) | Fix TableLock tableName log format |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13193](https://issues.apache.org/jira/browse/HBASE-13193) | RegionScannerImpl filters should not be reset if a partial Result is returned |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13188](https://issues.apache.org/jira/browse/HBASE-13188) | java.lang.ArithmeticException issue in BoundedByteBufferPool.putBuffer |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13181](https://issues.apache.org/jira/browse/HBASE-13181) | TestHRegionReplayEvents.testReplayBulkLoadEvent fails frequently. |  Minor | . | Srikanth Srungarapu | Matteo Bertozzi |
| [HBASE-13176](https://issues.apache.org/jira/browse/HBASE-13176) | Flakey TestZooKeeper test. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13174](https://issues.apache.org/jira/browse/HBASE-13174) | Apply HBASE-11804 to Windows scripts |  Major | scripts | Lars George | Lars George |
| [HBASE-13172](https://issues.apache.org/jira/browse/HBASE-13172) | TestDistributedLogSplitting.testThreeRSAbort fails several times on branch-1 |  Major | test | zhangduo | zhangduo |
| [HBASE-13165](https://issues.apache.org/jira/browse/HBASE-13165) | Fix docs and scripts for default max heaps size after HBASE-11804 |  Minor | documentation, scripts | Lars George | Lars George |
| [HBASE-13156](https://issues.apache.org/jira/browse/HBASE-13156) | Fix minor rat violation recently introduced (asciidoctor.css). |  Major | . | stack | stack |
| [HBASE-13155](https://issues.apache.org/jira/browse/HBASE-13155) | Fix TestPrefixTree |  Major | test | zhangduo | zhangduo |
| [HBASE-13149](https://issues.apache.org/jira/browse/HBASE-13149) | HBase MR is broken on Hadoop 2.5+ Yarn |  Blocker | . | Jerry He | Jerry He |
| [HBASE-13146](https://issues.apache.org/jira/browse/HBASE-13146) | Race Condition in ScheduledChore and ChoreService |  Major | regionserver | zhangduo | zhangduo |
| [HBASE-13145](https://issues.apache.org/jira/browse/HBASE-13145) | TestNamespaceAuditor.testRegionMerge is flaky |  Major | test | zhangduo | zhangduo |
| [HBASE-13141](https://issues.apache.org/jira/browse/HBASE-13141) | IntegrationTestAcidGuarantees returns incorrect values for getColumnFamilies |  Major | integration tests | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-13139](https://issues.apache.org/jira/browse/HBASE-13139) | Clean up missing JAVA\_HOME message in bin/hbase-config.sh |  Trivial | shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-13136](https://issues.apache.org/jira/browse/HBASE-13136) | TestSplitLogManager.testGetPreviousRecoveryMode is flakey |  Major | . | zhangduo | zhangduo |
| [HBASE-13134](https://issues.apache.org/jira/browse/HBASE-13134) | mutateRow and checkAndMutate apis don't throw region level exceptions |  Major | . | Francis Liu | Francis Liu |
| [HBASE-13133](https://issues.apache.org/jira/browse/HBASE-13133) | NPE when running TestSplitLogManager |  Major | . | zhangduo | Andrey Stepachev |
| [HBASE-13131](https://issues.apache.org/jira/browse/HBASE-13131) | ReplicationAdmin leaks connections if there's an error in the constructor |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-13123](https://issues.apache.org/jira/browse/HBASE-13123) | Minor bug in ROW bloom filter |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13119](https://issues.apache.org/jira/browse/HBASE-13119) | FileLink should implement equals |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13115](https://issues.apache.org/jira/browse/HBASE-13115) | Fix the usage of remote user in thrift doAs implementation. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13114](https://issues.apache.org/jira/browse/HBASE-13114) | [UNITTEST] TestEnableTableHandler.testDeleteForSureClearsAllTableRowsFromMeta |  Major | test | stack | Esteban Gutierrez |
| [HBASE-13112](https://issues.apache.org/jira/browse/HBASE-13112) | quota.rb, security.rb and visibility\_labels.rb leak connection |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13111](https://issues.apache.org/jira/browse/HBASE-13111) | truncate\_preserve command is failing with undefined method error |  Major | shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13102](https://issues.apache.org/jira/browse/HBASE-13102) | Fix Pseudo-distributed Mode which was broken in 1.0.0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-13097](https://issues.apache.org/jira/browse/HBASE-13097) | Use same EventLoopGroup for different AsyncRpcClients if possible |  Major | IPC/RPC, test | zhangduo | zhangduo |
| [HBASE-13093](https://issues.apache.org/jira/browse/HBASE-13093) | Local mode HBase instance doesn't shut down. |  Major | . | Elliott Clark | Andrey Stepachev |
| [HBASE-13091](https://issues.apache.org/jira/browse/HBASE-13091) | Split ZK Quorum on Master WebUI |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-13085](https://issues.apache.org/jira/browse/HBASE-13085) | Security issue in the implementation of Rest gataway 'doAs' proxy user support |  Critical | REST, security | Jerry He | Jerry He |
| [HBASE-13084](https://issues.apache.org/jira/browse/HBASE-13084) | Add labels to VisibilityLabelsCache asynchronously causes TestShell flakey |  Major | test | zhangduo | zhangduo |
| [HBASE-13083](https://issues.apache.org/jira/browse/HBASE-13083) | Master can be dead-locked while assigning META. |  Major | master, Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13077](https://issues.apache.org/jira/browse/HBASE-13077) | BoundedCompletionService doesn't pass trace info to server |  Major | hbase | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-13075](https://issues.apache.org/jira/browse/HBASE-13075) | TableInputFormatBase spuriously warning about multiple initializeTable calls |  Minor | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13072](https://issues.apache.org/jira/browse/HBASE-13072) | BucketCache.evictBlock returns true if block does not exist |  Major | BlockCache | zhangduo | zhangduo |
| [HBASE-13070](https://issues.apache.org/jira/browse/HBASE-13070) | Fix TestCacheOnWrite |  Major | test | zhangduo | zhangduo |
| [HBASE-13069](https://issues.apache.org/jira/browse/HBASE-13069) | Thrift Http Server returns an error code of 500 instead of 401 when authentication fails |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13066](https://issues.apache.org/jira/browse/HBASE-13066) | Fix typo in AsyncRpcChannel |  Major | IPC/RPC | zhangduo | zhangduo |
| [HBASE-13065](https://issues.apache.org/jira/browse/HBASE-13065) | Increasing -Xmx when running TestDistributedLogSplitting |  Major | test | zhangduo | zhangduo |
| [HBASE-13061](https://issues.apache.org/jira/browse/HBASE-13061) | RegionStates can remove wrong region from server holdings |  Major | Region Assignment | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13058](https://issues.apache.org/jira/browse/HBASE-13058) | Hbase shell command 'scan' for non existent table shows unnecessary info for one unrelated existent table. |  Trivial | Client | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13055](https://issues.apache.org/jira/browse/HBASE-13055) | HRegion FIXED\_OVERHEAD missed one boolean |  Major | . | zhangduo | zhangduo |
| [HBASE-13050](https://issues.apache.org/jira/browse/HBASE-13050) | Hbase shell create\_namespace command throws ArrayIndexOutOfBoundException for (invalid) empty text input. |  Trivial | . | Abhishek Kumar | Abhishek Kumar |
| [HBASE-13049](https://issues.apache.org/jira/browse/HBASE-13049) | wal\_roll ruby command doesn't work. |  Major | shell | Bhupendra Kumar Jain | Bhupendra Kumar Jain |
| [HBASE-13048](https://issues.apache.org/jira/browse/HBASE-13048) | Use hbase.crypto.wal.algorithm in SecureProtobufLogReader while decrypting the data |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13047](https://issues.apache.org/jira/browse/HBASE-13047) | Add "HBase Configuration" link missing on the table details pages |  Trivial | Operability | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-13040](https://issues.apache.org/jira/browse/HBASE-13040) | Possible failure of TestHMasterRPCException |  Major | test | zhangduo | zhangduo |
| [HBASE-13039](https://issues.apache.org/jira/browse/HBASE-13039) | Add patchprocess/* to .gitignore to fix builds of branches |  Major | build | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13038](https://issues.apache.org/jira/browse/HBASE-13038) | Fix the java doc warning continuously reported by Hadoop QA |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13036](https://issues.apache.org/jira/browse/HBASE-13036) | Meta scanner should use its own threadpool |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13032](https://issues.apache.org/jira/browse/HBASE-13032) | Migration of states should be performed once META is assigned and onlined. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13030](https://issues.apache.org/jira/browse/HBASE-13030) | [1.0.0 polish] Make ScanMetrics public again and align Put 'add' with Get, Delete, etc., addColumn |  Major | Operability | stack | stack |
| [HBASE-13027](https://issues.apache.org/jira/browse/HBASE-13027) | mapreduce.TableInputFormatBase should create its own Connection if needed |  Blocker | mapreduce | Sean Busbey | Sean Busbey |
| [HBASE-13011](https://issues.apache.org/jira/browse/HBASE-13011) | TestLoadIncrementalHFiles is flakey when using AsyncRpcClient as client implementation |  Major | . | zhangduo | zhangduo |
| [HBASE-13010](https://issues.apache.org/jira/browse/HBASE-13010) | HFileOutputFormat2 partitioner's path is hard-coded as '/tmp' |  Major | mapreduce | Aditya Kishore | Aditya Kishore |
| [HBASE-13009](https://issues.apache.org/jira/browse/HBASE-13009) | HBase REST UI inaccessible |  Major | REST | Aditya Kishore | Aditya Kishore |
| [HBASE-13007](https://issues.apache.org/jira/browse/HBASE-13007) | Fix the test timeouts being caused by ChoreService |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13004](https://issues.apache.org/jira/browse/HBASE-13004) | Make possible to explain why HBaseTestingUtility.waitFor fails |  Minor | test | Andrey Stepachev | Andrey Stepachev |
| [HBASE-13003](https://issues.apache.org/jira/browse/HBASE-13003) | Get tests in TestHFileBlockIndex back |  Major | test | zhangduo | zhangduo |
| [HBASE-13001](https://issues.apache.org/jira/browse/HBASE-13001) | NullPointer in master logs for table.jsp |  Trivial | . | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12999](https://issues.apache.org/jira/browse/HBASE-12999) | Make foreground\_start return the correct exit code |  Major | shell | Elliott Clark | Elliott Clark |
| [HBASE-12998](https://issues.apache.org/jira/browse/HBASE-12998) | Compilation with Hdfs-2.7.0-SNAPSHOT is broken after HDFS-7647 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12996](https://issues.apache.org/jira/browse/HBASE-12996) | Reversed field on Filter should be transient |  Trivial | . | Ian Friedman | Ian Friedman |
| [HBASE-12993](https://issues.apache.org/jira/browse/HBASE-12993) | Use HBase 1.0 interfaces in hbase-thrift |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12991](https://issues.apache.org/jira/browse/HBASE-12991) | Use HBase 1.0 interfaces in hbase-rest |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12989](https://issues.apache.org/jira/browse/HBASE-12989) | region\_mover.rb unloadRegions method uses ArrayList concurrently resulting in errors |  Minor | scripts | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-12985](https://issues.apache.org/jira/browse/HBASE-12985) | Javadoc warning and findbugs fixes to get us green again |  Major | . | stack | stack |
| [HBASE-12984](https://issues.apache.org/jira/browse/HBASE-12984) | SSL cannot be used by the InfoPort after removing deprecated code in HBASE-10336 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12978](https://issues.apache.org/jira/browse/HBASE-12978) | Region goes permanently offline (WAS: hbase:meta has a row missing hregioninfo and it causes my long-running job to fail) |  Blocker | . | stack | stack |
| [HBASE-12976](https://issues.apache.org/jira/browse/HBASE-12976) | Set default value for hbase.client.scanner.max.result.size |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12971](https://issues.apache.org/jira/browse/HBASE-12971) | Replication stuck due to large default value for replication.source.maxretriesmultiplier |  Major | hbase | Adrian Muraru | Lars Hofhansl |
| [HBASE-12969](https://issues.apache.org/jira/browse/HBASE-12969) | Parameter Validation is not there for shell script, local-master-backup.sh and local-regionservers.sh |  Minor | scripts | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-12966](https://issues.apache.org/jira/browse/HBASE-12966) | NPE in HMaster while recovering tables in Enabling state |  Major | master | ramkrishna.s.vasudevan | Andrey Stepachev |
| [HBASE-12964](https://issues.apache.org/jira/browse/HBASE-12964) | Add the ability for hbase-daemon.sh to start in the foreground |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12962](https://issues.apache.org/jira/browse/HBASE-12962) | TestHFileBlockIndex.testBlockIndex() commented out during HBASE-10531 |  Major | test | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12961](https://issues.apache.org/jira/browse/HBASE-12961) | Negative values in read and write region server metrics |  Minor | regionserver | Victoria | Victoria |
| [HBASE-12958](https://issues.apache.org/jira/browse/HBASE-12958) | SSH doing hbase:meta get but hbase:meta not assigned |  Major | . | stack | stack |
| [HBASE-12956](https://issues.apache.org/jira/browse/HBASE-12956) | Binding to 0.0.0.0 is broken after HBASE-10569 |  Blocker | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12954](https://issues.apache.org/jira/browse/HBASE-12954) | Ability impaired using HBase on multihomed hosts |  Minor | . | Clay B. | Ted Yu |
| [HBASE-12953](https://issues.apache.org/jira/browse/HBASE-12953) | RegionServer is not functionally working with AysncRpcClient in secure mode |  Critical | security | Ashish Singhi | zhangduo |
| [HBASE-12951](https://issues.apache.org/jira/browse/HBASE-12951) | TestHCM.testConnectionClose is flakey when using AsyncRpcClient as client implementation |  Major | IPC/RPC | zhangduo | zhangduo |
| [HBASE-12948](https://issues.apache.org/jira/browse/HBASE-12948) | Calling Increment#addColumn on the same column multiple times produces wrong result |  Critical | Client, regionserver | hongyu bi | hongyu bi |
| [HBASE-12931](https://issues.apache.org/jira/browse/HBASE-12931) | The existing KeyValues in memstore are not removed completely after inserting cell into memStore |  Minor | . | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12927](https://issues.apache.org/jira/browse/HBASE-12927) | TestFromClientSide#testScanMetrics() failing due to duplicate createTable commands |  Minor | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-12924](https://issues.apache.org/jira/browse/HBASE-12924) | HRegionServer#MovedRegionsCleaner Chore does not start |  Minor | . | Jonathan Lawlor | Sameet Agarwal |
| [HBASE-12919](https://issues.apache.org/jira/browse/HBASE-12919) | Compilation with Hadoop-2.4- is broken again |  Major | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12918](https://issues.apache.org/jira/browse/HBASE-12918) | Backport asciidoc changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12917](https://issues.apache.org/jira/browse/HBASE-12917) | HFilePerformanceEvaluation Scan tests fail with StackOverflowError due to recursive call in createCell function |  Major | hbase | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12916](https://issues.apache.org/jira/browse/HBASE-12916) | No access control for replicating WAL entries |  Major | Replication | Liu Shaohui | Liu Shaohui |
| [HBASE-12915](https://issues.apache.org/jira/browse/HBASE-12915) | Disallow small scan with batching |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12908](https://issues.apache.org/jira/browse/HBASE-12908) | Typos in MemStoreFlusher javadocs |  Trivial | documentation | Edvin Malinovskis |  |
| [HBASE-12904](https://issues.apache.org/jira/browse/HBASE-12904) | Threading issues in region\_mover.rb |  Major | . | Lars Hofhansl | Andrew Purtell |
| [HBASE-12901](https://issues.apache.org/jira/browse/HBASE-12901) | Possible deadlock while onlining a region and get region plan for other region run parallel |  Critical | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12898](https://issues.apache.org/jira/browse/HBASE-12898) | Add in used undeclared dependencies |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-12897](https://issues.apache.org/jira/browse/HBASE-12897) | Minimum memstore size is a percentage |  Major | . | churro morales | churro morales |
| [HBASE-12892](https://issues.apache.org/jira/browse/HBASE-12892) | Add a class to allow taking a snapshot from the command line |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12886](https://issues.apache.org/jira/browse/HBASE-12886) | Correct tag option name in PerformanceEvaluation |  Minor | . | Jerry He | Jerry He |
| [HBASE-12881](https://issues.apache.org/jira/browse/HBASE-12881) | TestFastFail is not compatible with surefire.rerunFailingTestsCount |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12878](https://issues.apache.org/jira/browse/HBASE-12878) | Incorrect HFile path in TestHFilePerformance print output (fix for easier debugging) |  Trivial | test | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-12867](https://issues.apache.org/jira/browse/HBASE-12867) | Shell does not support custom replication endpoint specification |  Major | . | Andrew Purtell | Kevin Risden |
| [HBASE-12864](https://issues.apache.org/jira/browse/HBASE-12864) | IntegrationTestTableSnapshotInputFormat fails |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12863](https://issues.apache.org/jira/browse/HBASE-12863) | Master info port on RS UI is always 0 |  Major | . | Enis Soztutar | zhangduo |
| [HBASE-12862](https://issues.apache.org/jira/browse/HBASE-12862) | Uppercase "wals" in RegionServer webUI |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12849](https://issues.apache.org/jira/browse/HBASE-12849) | LoadIncrementalHFiles should use unmanaged connection in branch-1 |  Major | mapreduce | Ted Yu | Ted Yu |
| [HBASE-12847](https://issues.apache.org/jira/browse/HBASE-12847) | TestZKLessSplitOnCluster frequently times out in 0.98 builds |  Major | . | Andrew Purtell | Rajeshbabu Chintaguntla |
| [HBASE-12845](https://issues.apache.org/jira/browse/HBASE-12845) | ByteBufferOutputStream should grow as direct buffer if the initial buffer is also direct BB |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-12844](https://issues.apache.org/jira/browse/HBASE-12844) | ServerManager.isServerReacable() should sleep between retries |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12837](https://issues.apache.org/jira/browse/HBASE-12837) | ReplicationAdmin leaks zk connections |  Major | Zookeeper | stack | stack |
| [HBASE-12835](https://issues.apache.org/jira/browse/HBASE-12835) | HBASE-12422 changed new HTable(Configuration) to not use managed Connections anymore |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12833](https://issues.apache.org/jira/browse/HBASE-12833) | [shell] table.rb leaks connections |  Major | shell | Nick Dimiduk | Solomon Duskis |
| [HBASE-12832](https://issues.apache.org/jira/browse/HBASE-12832) | Describe table from shell no longer shows Table's attributes, only CF attributes |  Critical | . | Enis Soztutar | Srikanth Srungarapu |
| [HBASE-12831](https://issues.apache.org/jira/browse/HBASE-12831) | Changing the set of vis labels a user has access to doesn't generate an audit log event |  Major | . | Sean Busbey | Ashish Singhi |
| [HBASE-12824](https://issues.apache.org/jira/browse/HBASE-12824) | CompressionTest fails with org.apache.hadoop.hbase.io.hfile.AbstractHFileReader$NotSeekedException: Not seeked to a key/value |  Critical | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12819](https://issues.apache.org/jira/browse/HBASE-12819) | ExportSnapshot doesn't close FileSystem instances |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12817](https://issues.apache.org/jira/browse/HBASE-12817) | Data missing while scanning using PREFIX\_TREE data block encoding |  Major | Scanners | zhangduo | zhangduo |
| [HBASE-12811](https://issues.apache.org/jira/browse/HBASE-12811) | [AccessController] NPE while scanning a table with user not having READ permission on the namespace |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-12810](https://issues.apache.org/jira/browse/HBASE-12810) | Update to htrace-incubating |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-12804](https://issues.apache.org/jira/browse/HBASE-12804) | ImportTsv fails to delete partition files created by it |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-12801](https://issues.apache.org/jira/browse/HBASE-12801) | Failed to truncate a table while maintaing binary region boundaries |  Minor | shell | Liu Shaohui | Liu Shaohui |
| [HBASE-12798](https://issues.apache.org/jira/browse/HBASE-12798) | Map Reduce jobs should not create Tables in setConf() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12791](https://issues.apache.org/jira/browse/HBASE-12791) | HBase does not attempt to clean up an aborted split when the regionserver shutting down |  Critical | regionserver | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-12782](https://issues.apache.org/jira/browse/HBASE-12782) | ITBLL fails for me if generator does anything but 5M per maptask |  Critical | integration tests | stack | stack |
| [HBASE-12781](https://issues.apache.org/jira/browse/HBASE-12781) | thrift2 listen port will bind always to the passed command line address |  Major | Thrift | Pankaj Kumar | Pankaj Kumar |
| [HBASE-12772](https://issues.apache.org/jira/browse/HBASE-12772) | TestPerColumnFamilyFlush failing |  Major | test | stack | stack |
| [HBASE-12771](https://issues.apache.org/jira/browse/HBASE-12771) | TestFailFast#testFastFail failing |  Major | test | stack | Manukranth Kolloju |
| [HBASE-12767](https://issues.apache.org/jira/browse/HBASE-12767) | Fix a StoreFileScanner NPE in reverse scan flow |  Major | regionserver, Scanners | Liang Xie | Liang Xie |
| [HBASE-12750](https://issues.apache.org/jira/browse/HBASE-12750) | getRequestsCount() in ClusterStatus returns total number of request |  Major | Client | Weichen Ye | Weichen Ye |
| [HBASE-12749](https://issues.apache.org/jira/browse/HBASE-12749) | Tighten HFileLink api to enable non-snapshot uses |  Major | snapshots | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12747](https://issues.apache.org/jira/browse/HBASE-12747) | IntegrationTestMTTR will OOME if launched with mvn verify |  Minor | . | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-12744](https://issues.apache.org/jira/browse/HBASE-12744) | hbase-default.xml lists hbase.regionserver.global.memstore.size twice |  Minor | . | Jerry He | Jerry He |
| [HBASE-12742](https://issues.apache.org/jira/browse/HBASE-12742) | ClusterStatusPublisher crashes with a IPv6 network interface. |  Major | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12741](https://issues.apache.org/jira/browse/HBASE-12741) | AccessController contains a javadoc issue |  Minor | . | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12740](https://issues.apache.org/jira/browse/HBASE-12740) | Improve performance of TestHBaseFsck |  Major | util | Jurriaan Mous | Jurriaan Mous |
| [HBASE-12739](https://issues.apache.org/jira/browse/HBASE-12739) | Avoid too large identifier of ZooKeeperWatcher |  Minor | Zookeeper | Liu Shaohui | Liu Shaohui |
| [HBASE-12734](https://issues.apache.org/jira/browse/HBASE-12734) | TestPerColumnFamilyFlush.testCompareStoreFileCount is flakey |  Minor | . | zhangduo | zhangduo |
| [HBASE-12732](https://issues.apache.org/jira/browse/HBASE-12732) | Log messages in FileLink$FileLinkInputStream#tryOpen are reversed |  Trivial | hbase | Tobi Vollebregt |  |
| [HBASE-12728](https://issues.apache.org/jira/browse/HBASE-12728) | buffered writes substantially less useful after removal of HTablePool |  Blocker | hbase | Aaron Beppu | Nick Dimiduk |
| [HBASE-12718](https://issues.apache.org/jira/browse/HBASE-12718) | Convert TestAcidGuarantees from a unit test to an integration test |  Major | hbase, integration tests, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-12716](https://issues.apache.org/jira/browse/HBASE-12716) | A bug in RegionSplitter.UniformSplit algorithm |  Major | regionserver | Weichen Ye | Weichen Ye |
| [HBASE-12715](https://issues.apache.org/jira/browse/HBASE-12715) | getLastSequenceId always returns -1 |  Major | wal | zhangduo | zhangduo |
| [HBASE-12711](https://issues.apache.org/jira/browse/HBASE-12711) | Fix new findbugs warnings in hbase-thrift module |  Minor | . | Ted Yu | Srikanth Srungarapu |
| [HBASE-12697](https://issues.apache.org/jira/browse/HBASE-12697) | Don't use RegionLocationFinder if localityCost == 0 |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-12694](https://issues.apache.org/jira/browse/HBASE-12694) | testTableExistsIfTheSpecifiedTableRegionIsSplitParent in TestSplitTransactionOnCluster class leaves regions in transition |  Minor | . | Vandana Ayyalasomayajula | Vandana Ayyalasomayajula |
| [HBASE-12644](https://issues.apache.org/jira/browse/HBASE-12644) | Visibility Labels: issue with storing super users in labels table |  Major | security | Jerry He | Jerry He |
| [HBASE-12607](https://issues.apache.org/jira/browse/HBASE-12607) | TestHBaseFsck#testParallelHbck fails running against hadoop 2.6.0 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12585](https://issues.apache.org/jira/browse/HBASE-12585) | Fix refguide so it does hbase 1.0 style API everywhere with callout on how we used to do it in pre-1.0 |  Major | documentation | stack | Misty Stanley-Jones |
| [HBASE-12574](https://issues.apache.org/jira/browse/HBASE-12574) | Update replication metrics to not do so many map look ups. |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-12548](https://issues.apache.org/jira/browse/HBASE-12548) | Improve debuggability of IntegrationTestTimeBoundedRequestsWithRegionReplicas |  Minor | . | Devaraj Das | Devaraj Das |
| [HBASE-12480](https://issues.apache.org/jira/browse/HBASE-12480) | Regions in FAILED\_OPEN/FAILED\_CLOSE should be processed on master failover |  Major | Region Assignment | Virag Kothari | Virag Kothari |
| [HBASE-12393](https://issues.apache.org/jira/browse/HBASE-12393) | The regionserver web will throw exception if we disable block cache |  Minor | regionserver, UI | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-12339](https://issues.apache.org/jira/browse/HBASE-12339) | WAL performance evaluation tool doesn't roll logs |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-12270](https://issues.apache.org/jira/browse/HBASE-12270) | A bug in the bucket cache, with cache blocks on write enabled |  Critical | . | Khaled Elmeleegy | Liu Shaohui |
| [HBASE-12108](https://issues.apache.org/jira/browse/HBASE-12108) | HBaseConfiguration: set classloader before loading xml files |  Minor | Client | Aniket Bhatnagar |  |
| [HBASE-12102](https://issues.apache.org/jira/browse/HBASE-12102) | Duplicate keys in HBase.RegionServer metrics JSON |  Minor | . | Andrew Purtell | Ravi Kishore Valeti |
| [HBASE-12070](https://issues.apache.org/jira/browse/HBASE-12070) | Add an option to hbck to fix ZK inconsistencies |  Major | hbck | Sudarshan Kadambi | Stephen Yuan Jiang |
| [HBASE-12028](https://issues.apache.org/jira/browse/HBASE-12028) | Abort the RegionServer, when it's handler threads die |  Major | regionserver | Sudarshan Kadambi | Alicia Ying Shu |
| [HBASE-12006](https://issues.apache.org/jira/browse/HBASE-12006) | [JDK 8] KeyStoreTestUtil#generateCertificate fails due to "subject class type invalid" |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-11544](https://issues.apache.org/jira/browse/HBASE-11544) | [Ergonomics] hbase.client.scanner.caching is dogged and will try to return batch even if it means OOME |  Critical | . | stack | Jonathan Lawlor |
| [HBASE-10528](https://issues.apache.org/jira/browse/HBASE-10528) | DefaultBalancer selects plans to move regions onto draining nodes |  Major | . | churro morales | churro morales |
| [HBASE-10499](https://issues.apache.org/jira/browse/HBASE-10499) | In write heavy scenario one of the regions does not get flushed causing RegionTooBusyException |  Critical | . | ramkrishna.s.vasudevan | Ted Yu |
| [HBASE-9910](https://issues.apache.org/jira/browse/HBASE-9910) | TestHFilePerformance and HFilePerformanceEvaluation should be merged in a single HFile performance test class. |  Major | Performance, test | Jean-Marc Spaggiari | Vikas Vishwakarma |
| [HBASE-9738](https://issues.apache.org/jira/browse/HBASE-9738) | Delete table and loadbalancer interference |  Critical | . | Devaraj Das |  |
| [HBASE-8725](https://issues.apache.org/jira/browse/HBASE-8725) | Add total time RPC call metrics |  Major | metrics | Elliott Clark | Nate Edel |
| [HBASE-8026](https://issues.apache.org/jira/browse/HBASE-8026) | HBase Shell docs for scan command does not reference VERSIONS |  Major | . | Jonathan Natkins | Amit Kabra |
| [HBASE-7332](https://issues.apache.org/jira/browse/HBASE-7332) | [webui] HMaster webui should display the number of regions a table has. |  Minor | UI | Jonathan Hsieh | Andrey Stepachev |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13413](https://issues.apache.org/jira/browse/HBASE-13413) | Create an integration test for Replication |  Minor | integration tests | Rajesh Nishtala | Rajesh Nishtala |
| [HBASE-13280](https://issues.apache.org/jira/browse/HBASE-13280) | TestSecureRPC failed |  Minor | . | Liu Shaohui | zhangduo |
| [HBASE-13182](https://issues.apache.org/jira/browse/HBASE-13182) | Test NamespaceAuditor/AccessController create/delete table is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13179](https://issues.apache.org/jira/browse/HBASE-13179) | TestMasterObserver deleteTable is flaky |  Minor | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13106](https://issues.apache.org/jira/browse/HBASE-13106) | Ensure endpoint-only table coprocessors can be dynamically loaded |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12992](https://issues.apache.org/jira/browse/HBASE-12992) | TestChoreService doesn't close services, that can break test on slow virtual hosts. |  Major | . | Andrey Stepachev | Andrey Stepachev |
| [HBASE-12885](https://issues.apache.org/jira/browse/HBASE-12885) | Unit test for RAW / VERSIONS scanner specifications |  Minor | shell | Amit Kabra | Amit Kabra |
| [HBASE-12876](https://issues.apache.org/jira/browse/HBASE-12876) | TestScannerWithBulkload should pass Table with unmanaged connection to LoadIncrementalHFiles#doBulkLoad() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12799](https://issues.apache.org/jira/browse/HBASE-12799) | ITAG fails with java.lang.RuntimeException if table does not exist |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12764](https://issues.apache.org/jira/browse/HBASE-12764) | TestPerColumnFamilyFlush#testCompareStoreFileCount may fail due to new table not available |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-7781](https://issues.apache.org/jira/browse/HBASE-7781) | Update security unit tests to use a KDC if available |  Blocker | security, test | Gary Helmling | zhangduo |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13551](https://issues.apache.org/jira/browse/HBASE-13551) | Procedure V2 - Procedure classes should not be InterfaceAudience.Public |  Blocker | master | Enis Soztutar | Enis Soztutar |
| [HBASE-13529](https://issues.apache.org/jira/browse/HBASE-13529) | Procedure v2 - WAL Improvements |  Blocker | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13515](https://issues.apache.org/jira/browse/HBASE-13515) | Handle FileNotFoundException in region replica replay for flush/compaction events |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13514](https://issues.apache.org/jira/browse/HBASE-13514) | Fix test failures in TestScannerHeartbeatMessages caused by incorrect setting of hbase.rpc.timeout |  Minor | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13502](https://issues.apache.org/jira/browse/HBASE-13502) | Deprecate/remove getRowComparator() in TableName |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13498](https://issues.apache.org/jira/browse/HBASE-13498) | Add more docs and a basic check for storage policy handling |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-13496](https://issues.apache.org/jira/browse/HBASE-13496) | Make Bytes$LexicographicalComparerHolder$UnsafeComparer::compareTo inlineable |  Major | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13481](https://issues.apache.org/jira/browse/HBASE-13481) | Master should respect master (old) DNS/bind related configurations |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13469](https://issues.apache.org/jira/browse/HBASE-13469) | [branch-1.1] Procedure V2 - Make procedure v2 configurable in branch-1.1 |  Major | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-13466](https://issues.apache.org/jira/browse/HBASE-13466) | Document deprecations in 1.x - Part 1 |  Major | . | Lars Francke | Lars Francke |
| [HBASE-13455](https://issues.apache.org/jira/browse/HBASE-13455) | Procedure V2 - master truncate table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13447](https://issues.apache.org/jira/browse/HBASE-13447) | Bypass logic in TimeRange.compare |  Minor | Scanners | Anoop Sam John | Anoop Sam John |
| [HBASE-13421](https://issues.apache.org/jira/browse/HBASE-13421) | Reduce the number of object creations introduced by HBASE-11544 in scan RPC hot code paths |  Major | . | Jonathan Lawlor | Jonathan Lawlor |
| [HBASE-13386](https://issues.apache.org/jira/browse/HBASE-13386) | Backport HBASE-12601 to all active branches other than master |  Minor | documentation, shell | Ashish Singhi | Ashish Singhi |
| [HBASE-13335](https://issues.apache.org/jira/browse/HBASE-13335) | Update ClientSmallScanner and ClientSmallReversedScanner |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-13332](https://issues.apache.org/jira/browse/HBASE-13332) | Fix the usage of doAs/runAs in Visibility Controller tests. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-13327](https://issues.apache.org/jira/browse/HBASE-13327) | Use Admin in ConnectionCache |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13307](https://issues.apache.org/jira/browse/HBASE-13307) | Making methods under ScannerV2#next inlineable, faster |  Major | Scanners | stack | stack |
| [HBASE-13303](https://issues.apache.org/jira/browse/HBASE-13303) | Fix size calculation of results on the region server |  Major | Client | Lars Hofhansl | Andrew Purtell |
| [HBASE-13290](https://issues.apache.org/jira/browse/HBASE-13290) | Procedure v2 - client enable/disable table sync |  Major | Client | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13244](https://issues.apache.org/jira/browse/HBASE-13244) | Test delegation token generation with kerberos enabled |  Major | security, test | zhangduo | zhangduo |
| [HBASE-13213](https://issues.apache.org/jira/browse/HBASE-13213) | Split out locality metrics among primary and secondary region |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13211](https://issues.apache.org/jira/browse/HBASE-13211) | Procedure V2 - master Enable/Disable table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13210](https://issues.apache.org/jira/browse/HBASE-13210) | Procedure V2 - master Modify table |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13209](https://issues.apache.org/jira/browse/HBASE-13209) | Procedure V2 - master Add/Modify/Delete Column Family |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13204](https://issues.apache.org/jira/browse/HBASE-13204) | Procedure v2 - client create/delete table sync |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13203](https://issues.apache.org/jira/browse/HBASE-13203) | Procedure v2 - master create/delete table |  Minor | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13202](https://issues.apache.org/jira/browse/HBASE-13202) | Procedure v2 - core framework |  Major | master | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13201](https://issues.apache.org/jira/browse/HBASE-13201) | Remove HTablePool from thrift-server |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-13169](https://issues.apache.org/jira/browse/HBASE-13169) | ModifyTable increasing the region replica count should also auto-setup RRRE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13164](https://issues.apache.org/jira/browse/HBASE-13164) | Update TestUsersOperationsWithSecureHadoop to use MiniKdc |  Major | security, test | zhangduo | zhangduo |
| [HBASE-13130](https://issues.apache.org/jira/browse/HBASE-13130) | Add timeouts on TestMasterObserver, a frequent zombie show |  Major | test | stack | stack |
| [HBASE-13121](https://issues.apache.org/jira/browse/HBASE-13121) | Async wal replication for region replicas and dist log replay does not work together |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13067](https://issues.apache.org/jira/browse/HBASE-13067) | Fix caching of stubs to allow IP address changes of restarted remote servers |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-13006](https://issues.apache.org/jira/browse/HBASE-13006) | Document visibility label support for groups |  Minor | . | Jerry He | Jerry He |
| [HBASE-12980](https://issues.apache.org/jira/browse/HBASE-12980) | Delete of a table may not clean all rows from hbase:meta |  Major | Operability | stack | stack |
| [HBASE-12926](https://issues.apache.org/jira/browse/HBASE-12926) | Backport HBASE-12688 (Update site with a bootstrap-based UI) for HBASE-12918 |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12848](https://issues.apache.org/jira/browse/HBASE-12848) | Utilize Flash storage for WAL |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12802](https://issues.apache.org/jira/browse/HBASE-12802) | Remove unnecessary Table.flushCommits() |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12793](https://issues.apache.org/jira/browse/HBASE-12793) | [hbck] closeRegionSilentlyAndWait() should log cause of IOException and retry until  hbase.hbck.close.timeout expires |  Minor | hbck | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-12779](https://issues.apache.org/jira/browse/HBASE-12779) | SplitTransaction: Add metrics |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12776](https://issues.apache.org/jira/browse/HBASE-12776) | SpliTransaction: Log number of files to be split |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-12763](https://issues.apache.org/jira/browse/HBASE-12763) | Make it so there must be WALs for a server to be marked dead |  Major | wal | stack | stack |
| [HBASE-12735](https://issues.apache.org/jira/browse/HBASE-12735) | Refactor TAG so it can live as unit test and as an integration test |  Major | test | stack | Jonathan Hsieh |
| [HBASE-12730](https://issues.apache.org/jira/browse/HBASE-12730) | Backport HBASE-5162 (Basic client pushback mechanism) to branch-1 |  Major | Client, regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-12714](https://issues.apache.org/jira/browse/HBASE-12714) | RegionReplicaReplicationEndpoint should not set the RPC Codec |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12708](https://issues.apache.org/jira/browse/HBASE-12708) | Document newly introduced params for using Thrift-over-HTTPS. |  Minor | documentation, Thrift | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-12562](https://issues.apache.org/jira/browse/HBASE-12562) | Handling memory pressure for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12561](https://issues.apache.org/jira/browse/HBASE-12561) | Replicas of regions can be cached from different instances of the table in MetaCache |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-12511](https://issues.apache.org/jira/browse/HBASE-12511) | namespace permissions - add support from table creation privilege in a namespace 'C' |  Blocker | . | Francis Liu | Huaiyu Zhu |
| [HBASE-12012](https://issues.apache.org/jira/browse/HBASE-12012) | Improve cancellation for the scan RPCs |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11908](https://issues.apache.org/jira/browse/HBASE-11908) | Region replicas should be added to the meta table at the time of table creation |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11903](https://issues.apache.org/jira/browse/HBASE-11903) | Directly invoking split & merge of replica regions should be disallowed |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-11842](https://issues.apache.org/jira/browse/HBASE-11842) | Integration test for async wal replication to secondary regions |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11598](https://issues.apache.org/jira/browse/HBASE-11598) | Add simple rpc throttling |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-11580](https://issues.apache.org/jira/browse/HBASE-11580) | Failover handling for secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11574](https://issues.apache.org/jira/browse/HBASE-11574) | hbase:meta's regions can be replicated |  Major | . | Enis Soztutar | Devaraj Das |
| [HBASE-11571](https://issues.apache.org/jira/browse/HBASE-11571) | Bulk load handling from secondary region replicas |  Major | . | Enis Soztutar | Jeffrey Zhong |
| [HBASE-11569](https://issues.apache.org/jira/browse/HBASE-11569) | Flush / Compaction handling from secondary region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11568](https://issues.apache.org/jira/browse/HBASE-11568) | Async WAL replication for region replicas |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-11567](https://issues.apache.org/jira/browse/HBASE-11567) | Write bulk load COMMIT events to WAL |  Major | . | Enis Soztutar | Alex Newman |
| [HBASE-11261](https://issues.apache.org/jira/browse/HBASE-11261) | Handle splitting/merging of regions that have region\_replication greater than one |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-10942](https://issues.apache.org/jira/browse/HBASE-10942) | support parallel request cancellation for multi-get |  Major | . | Sergey Shelukhin | Devaraj Das |
| [HBASE-10674](https://issues.apache.org/jira/browse/HBASE-10674) | HBCK should be updated to do replica related checks |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-7847](https://issues.apache.org/jira/browse/HBASE-7847) | Use zookeeper multi to clear znodes |  Major | . | Ted Yu | Rakesh R |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-12859](https://issues.apache.org/jira/browse/HBASE-12859) | New master API to track major compaction completion |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13584](https://issues.apache.org/jira/browse/HBASE-13584) | Disable distributed log replay by default for 1.1 |  Critical | master, MTTR | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13438](https://issues.apache.org/jira/browse/HBASE-13438) | [branch-1] Backport Basic quota support for namespaces |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13380](https://issues.apache.org/jira/browse/HBASE-13380) | Cherry pick the HBASE-12808 compatibility checker tool back to 0.98+ |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-13205](https://issues.apache.org/jira/browse/HBASE-13205) | [branch-1] Backport HBASE-11598 Add simple rpc throttling |  Major | security | Ashish Singhi | Ashish Singhi |
| [HBASE-13187](https://issues.apache.org/jira/browse/HBASE-13187) | Add ITBLL that exercises per CF flush |  Critical | integration tests | stack | zhangduo |
| [HBASE-12995](https://issues.apache.org/jira/browse/HBASE-12995) | Document that HConnection#getTable methods do not check table existence since 0.98.1 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-12834](https://issues.apache.org/jira/browse/HBASE-12834) | Promote ScanType to LimitedPrivate |  Major | . | Ted Yu | Ted Yu |
| [HBASE-12788](https://issues.apache.org/jira/browse/HBASE-12788) | Promote Abortable to LimitedPrivate |  Major | . | Andrew Purtell | Enis Soztutar |
| [HBASE-12785](https://issues.apache.org/jira/browse/HBASE-12785) | Use FutureTask to timeout the attempt to get the lock for hbck |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-12783](https://issues.apache.org/jira/browse/HBASE-12783) | Create efficient RegionLocator implementation |  Major | . | Solomon Duskis | Solomon Duskis |
| [HBASE-12180](https://issues.apache.org/jira/browse/HBASE-12180) | Fix and reenable TestRegionReplicaReplicationEndpoint |  Major | test | stack | Enis Soztutar |


