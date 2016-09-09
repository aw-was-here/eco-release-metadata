
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

## Release 0.94.0 - 2012-05-14

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4648](https://issues.apache.org/jira/browse/HBASE-4648) | Bytes.toBigDecimal() doesn't use offset |  Major | util | Bryan Keller |  |
| [HBASE-3433](https://issues.apache.org/jira/browse/HBASE-3433) | Remove the KV copy of every KV in Scan; introduced by HBASE-3232 |  Critical | Performance, regionserver | stack | Lars Hofhansl |
| [HBASE-4752](https://issues.apache.org/jira/browse/HBASE-4752) | Don't create an unnecessary LinkedList when evicting from the BlockCache |  Minor | Performance, regionserver | Benoit Sigoure | Ted Yu |
| [HBASE-4989](https://issues.apache.org/jira/browse/HBASE-4989) | Metrics to measure sequential reads and random reads separately |  Minor | regionserver | dhruba borthakur | dhruba borthakur |
| [HBASE-5017](https://issues.apache.org/jira/browse/HBASE-5017) | Bump the default hfile.block.cache.size because of HFileV2 |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5190](https://issues.apache.org/jira/browse/HBASE-5190) | Limit the IPC queue size based on calls' payload size |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5701](https://issues.apache.org/jira/browse/HBASE-5701) | Put RegionServerDynamicStatistics under RegionServer in MBean hierarchy rather than have it as a peer. |  Major | . | stack | stack |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3856](https://issues.apache.org/jira/browse/HBASE-3856) | Build a tree structure data block index inside of the HFile |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-4102](https://issues.apache.org/jira/browse/HBASE-4102) | atomicAppend: A put that appends to the latest version of a cell; i.e. reads current value then adds the bytes offered by the client to the tail and writes out a new entry |  Major | . | stack | Lars Hofhansl |
| [HBASE-4460](https://issues.apache.org/jira/browse/HBASE-4460) | Support running an embedded ThriftServer within a RegionServer |  Major | regionserver, Thrift | Jonathan Gray | Jonathan Gray |
| [HBASE-4219](https://issues.apache.org/jira/browse/HBASE-4219) | Add Per-Column Family Metrics |  Major | . | Nicolas Spiegelberg | David Goode |
| [HBASE-4536](https://issues.apache.org/jira/browse/HBASE-4536) | Allow CF to retain deleted rows |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4629](https://issues.apache.org/jira/browse/HBASE-4629) | enable automated patch testing for hbase |  Major | . | Giridharan Kesavan | Giridharan Kesavan |
| [HBASE-4768](https://issues.apache.org/jira/browse/HBASE-4768) | Per-(table, columnFamily) metrics with configurable table name inclusion |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4683](https://issues.apache.org/jira/browse/HBASE-4683) | Always cache index and bloom blocks |  Minor | . | Lars Hofhansl | Mikhail Bautin |
| [HBASE-4698](https://issues.apache.org/jira/browse/HBASE-4698) | Let the HFile Pretty Printer print all the key values for a specific row. |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-2947](https://issues.apache.org/jira/browse/HBASE-2947) | MultiIncrement/MultiAppend (MultiGet functionality for increments and appends) |  Minor | Client, regionserver | Jonathan Gray | Lars Hofhansl |
| [HBASE-3584](https://issues.apache.org/jira/browse/HBASE-3584) | Allow atomic put/delete in one call |  Major | Client, Coprocessors, regionserver | ryan rawson | Lars Hofhansl |
| [HBASE-5229](https://issues.apache.org/jira/browse/HBASE-5229) | Provide basic building blocks for "multi-row" local transactions. |  Major | Client, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5526](https://issues.apache.org/jira/browse/HBASE-5526) | Configurable file and directory based umask |  Major | regionserver | Jesse Yates | Jesse Yates |
| [HBASE-4608](https://issues.apache.org/jira/browse/HBASE-4608) | HLog Compression |  Major | . | Li Pi | Li Pi |
| [HBASE-5177](https://issues.apache.org/jira/browse/HBASE-5177) | HTable needs a non cached version of getRegionLocation |  Minor | . | Pritam Damania | Pritam Damania |
| [HBASE-5128](https://issues.apache.org/jira/browse/HBASE-5128) | [uber hbck] Online automated repair of table integrity and region consistency problems |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-3134](https://issues.apache.org/jira/browse/HBASE-3134) | [replication] Add the ability to enable/disable streams |  Minor | Replication | Jean-Daniel Cryans | Teruyoshi Zenmyo |
| [HBASE-5599](https://issues.apache.org/jira/browse/HBASE-5599) | [hbck] handle NO\_VERSION\_FILE and SHOULD\_NOT\_BE\_DEPLOYED inconsistencies |  Major | hbck | fulin wang | fulin wang |
| [HBASE-5719](https://issues.apache.org/jira/browse/HBASE-5719) | Enhance hbck to sideline overlapped mega regions |  Major | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5604](https://issues.apache.org/jira/browse/HBASE-5604) | M/R tool to replay WAL files |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4393](https://issues.apache.org/jira/browse/HBASE-4393) | Implement a canary monitoring program |  Major | monitoring | Todd Lipcon | Matteo Bertozzi |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3763](https://issues.apache.org/jira/browse/HBASE-3763) | Add Bloom Block Index Support |  Minor | io, regionserver | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4461](https://issues.apache.org/jira/browse/HBASE-4461) | Expose getRowOrBefore via Thrift |  Major | Thrift | Jonathan Gray | Jonathan Gray |
| [HBASE-4132](https://issues.apache.org/jira/browse/HBASE-4132) | Extend the WALActionsListener API to accomodate log archival |  Major | regionserver | dhruba borthakur | dhruba borthakur |
| [HBASE-4131](https://issues.apache.org/jira/browse/HBASE-4131) | Make the Replication Service pluggable via a standard interface definition |  Major | regionserver | dhruba borthakur | dhruba borthakur |
| [HBASE-4062](https://issues.apache.org/jira/browse/HBASE-4062) | Multi-column scanner unit test |  Minor | regionserver, test | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4145](https://issues.apache.org/jira/browse/HBASE-4145) | Provide metrics for hbase client |  Major | . | Ming Ma | Ming Ma |
| [HBASE-4487](https://issues.apache.org/jira/browse/HBASE-4487) | The increment operation can release the rowlock before sync-ing the Hlog |  Major | . | dhruba borthakur | dhruba borthakur |
| [HBASE-4465](https://issues.apache.org/jira/browse/HBASE-4465) | Lazy-seek optimization for StoreFile scanners |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4469](https://issues.apache.org/jira/browse/HBASE-4469) | Avoid top row seek by looking up ROWCOL bloomfilter |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-4568](https://issues.apache.org/jira/browse/HBASE-4568) | Make zk dump jsp response more quickly |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-4585](https://issues.apache.org/jira/browse/HBASE-4585) | Avoid next operations (and instead reseek) when current kv is deleted |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-4418](https://issues.apache.org/jira/browse/HBASE-4418) | Show all the hbase configuration in the web ui |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-4489](https://issues.apache.org/jira/browse/HBASE-4489) | Better key splitting in RegionSplitter |  Major | . | Dave Revell | Dave Revell |
| [HBASE-4591](https://issues.apache.org/jira/browse/HBASE-4591) | TTL for old HLogs should be calculated from last modification time. |  Minor | master | Madhuwanti Vaidya | Madhuwanti Vaidya |
| [HBASE-4070](https://issues.apache.org/jira/browse/HBASE-4070) | [Coprocessors] Improve region server metrics to report loaded coprocessors to master |  Major | . | Mingjie Lai | Eugene Koontz |
| [HBASE-3512](https://issues.apache.org/jira/browse/HBASE-3512) | Coprocessors: Shell support for listing currently loaded coprocessor set |  Major | Coprocessors | Andrew Purtell | Eugene Koontz |
| [HBASE-4532](https://issues.apache.org/jira/browse/HBASE-4532) | Avoid top row seek by dedicated bloom filter for delete family bloom filter |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-4528](https://issues.apache.org/jira/browse/HBASE-4528) | The put operation can release the rowlock before sync-ing the Hlog |  Major | regionserver | dhruba borthakur | dhruba borthakur |
| [HBASE-4669](https://issues.apache.org/jira/browse/HBASE-4669) | Add an option of using round-robin assignment for enabling table |  Minor | master | Jieshan Bean | Jieshan Bean |
| [HBASE-4696](https://issues.apache.org/jira/browse/HBASE-4696) | HRegionThriftServer' might have to indefinitely do redirtects |  Major | . | Prakash Khemani | Jonathan Gray |
| [HBASE-1744](https://issues.apache.org/jira/browse/HBASE-1744) | Thrift server to match the new java api. |  Critical | Thrift | Tim Sell | Tim Sell |
| [HBASE-4480](https://issues.apache.org/jira/browse/HBASE-4480) | Testing script to simplify local testing |  Minor | . | Jesse Yates |  |
| [HBASE-4746](https://issues.apache.org/jira/browse/HBASE-4746) | Use a random ZK client port in unit tests so we can run them in parallel |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4737](https://issues.apache.org/jira/browse/HBASE-4737) | Categorize the tests into small/medium/large; allow small tests to be run in parallel within a single JVM |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4554](https://issues.apache.org/jira/browse/HBASE-4554) | Allow set/unset coprocessor table attributes from shell. |  Major | Coprocessors | Mingjie Lai | Mingjie Lai |
| [HBASE-4627](https://issues.apache.org/jira/browse/HBASE-4627) | Ability to specify a custom start/end to RegionSplitter |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4779](https://issues.apache.org/jira/browse/HBASE-4779) | TestHTablePool, TestScanWithBloomError, TestRegionSplitCalculator are not tagged and TestPoolMap should not use TestSuite |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4704](https://issues.apache.org/jira/browse/HBASE-4704) | A JRuby script for identifying active master |  Trivial | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4780](https://issues.apache.org/jira/browse/HBASE-4780) | Lower mini cluster shutdown time in HRegionServer#waitOnAllRegionsToClose and ServerManager#letRegionServersShutdown |  Minor | master, regionserver, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4764](https://issues.apache.org/jira/browse/HBASE-4764) | naming errors for TestHLogUtils and SoftValueSortedMapTest |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4761](https://issues.apache.org/jira/browse/HBASE-4761) | Add Developer Debug Options to HBase Config |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4628](https://issues.apache.org/jira/browse/HBASE-4628) | Enhance Table Create Presplit Functionality within the HBase Shell |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-2418](https://issues.apache.org/jira/browse/HBASE-2418) | add support for ZooKeeper authentication |  Critical | master, regionserver | Patrick Hunt | Eugene Koontz |
| [HBASE-4798](https://issues.apache.org/jira/browse/HBASE-4798) | Sleeps and synchronisation improvements for tests |  Minor | master, regionserver, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4213](https://issues.apache.org/jira/browse/HBASE-4213) | Support for fault tolerant, instant schema updates with out master's intervention (i.e with out enable/disable and bulk assign/unassign) through ZK. |  Major | . | Subbu M Iyer | Subbu M Iyer |
| [HBASE-4809](https://issues.apache.org/jira/browse/HBASE-4809) | Per-CF set RPC metrics |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4519](https://issues.apache.org/jira/browse/HBASE-4519) | 25s sleep when expiring sessions in tests |  Major | . | Jean-Daniel Cryans | Nicolas Liochon |
| [HBASE-4783](https://issues.apache.org/jira/browse/HBASE-4783) | Improve RowCounter to count rows in a specific key range. |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4787](https://issues.apache.org/jira/browse/HBASE-4787) | Make corePool as a configurable parameter in HTable |  Trivial | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4863](https://issues.apache.org/jira/browse/HBASE-4863) | Make Thrift server thread pool bounded and add a command-line UI test |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4781](https://issues.apache.org/jira/browse/HBASE-4781) | Pom update to use the new versions of surefire & junit |  Minor | build | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4884](https://issues.apache.org/jira/browse/HBASE-4884) | Allow environment overrides for various HBase processes |  Minor | shell | Ryan Thiessen |  |
| [HBASE-4820](https://issues.apache.org/jira/browse/HBASE-4820) | Distributed log splitting coding enhancement to make it easier to understand, no semantics change |  Minor | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4463](https://issues.apache.org/jira/browse/HBASE-4463) | Run more aggressive compactions during off peak hours |  Major | regionserver | Karthik Ranganathan | Karthik Ranganathan |
| [HBASE-4933](https://issues.apache.org/jira/browse/HBASE-4933) | Ability to calculate the blockcache hit ratio for the last few minutes |  Major | metrics | dhruba borthakur | dhruba borthakur |
| [HBASE-4440](https://issues.apache.org/jira/browse/HBASE-4440) | add an option to presplit table to PerformanceEvaluation |  Minor | util | Sujee Maniyam | Sujee Maniyam |
| [HBASE-4964](https://issues.apache.org/jira/browse/HBASE-4964) | Add builddate, make less sections in toc, and add header and footer customizations |  Major | . | stack |  |
| [HBASE-4847](https://issues.apache.org/jira/browse/HBASE-4847) | Activate single jvm for small tests on jenkins |  Minor | build, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4973](https://issues.apache.org/jira/browse/HBASE-4973) | On failure, HBaseAdmin sleeps one time too many |  Minor | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4995](https://issues.apache.org/jira/browse/HBASE-4995) | Increase zk maxClientCnxns to give us some head room |  Blocker | . | Jean-Daniel Cryans | stack |
| [HBASE-4971](https://issues.apache.org/jira/browse/HBASE-4971) | Useless sleeps in TestTimestampsFilter and TestMultipleTimestamps |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4965](https://issues.apache.org/jira/browse/HBASE-4965) | Monitor the open file descriptors and the threads counters during the unit tests |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5014](https://issues.apache.org/jira/browse/HBASE-5014) | PutSortReducer should adhere to memory limits |  Major | mapreduce | dhruba borthakur | dhruba borthakur |
| [HBASE-4605](https://issues.apache.org/jira/browse/HBASE-4605) | Constraints |  Major | Client, Coprocessors | Jesse Yates | Jesse Yates |
| [HBASE-4970](https://issues.apache.org/jira/browse/HBASE-4970) | Add a parameter so that keepAliveTime of Htable thread pool can be changed |  Trivial | Client | gaojinchao | gaojinchao |
| [HBASE-5072](https://issues.apache.org/jira/browse/HBASE-5072) | Support Max Value for Per-Store Metrics |  Minor | metrics, regionserver | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4439](https://issues.apache.org/jira/browse/HBASE-4439) | Move ClientScanner out of HTable |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-3924](https://issues.apache.org/jira/browse/HBASE-3924) | Improve Shell's CLI help |  Trivial | shell | Lars George | Harsh J |
| [HBASE-5064](https://issues.apache.org/jira/browse/HBASE-5064) | utilize surefire tests parallelization |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5021](https://issues.apache.org/jira/browse/HBASE-5021) | Enforce upper bound on timestamp |  Critical | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-3949](https://issues.apache.org/jira/browse/HBASE-3949) | Add "Master" link to RegionServer pages |  Minor | regionserver | Lars George | Gregory Chanan |
| [HBASE-5134](https://issues.apache.org/jira/browse/HBASE-5134) | Remove getRegionServerWithoutRetries and getRegionServerWithRetries from HConnection Interface |  Major | . | stack | stack |
| [HBASE-3565](https://issues.apache.org/jira/browse/HBASE-3565) | Add metrics to keep track of slow HLog appends |  Major | metrics, regionserver | Benoit Sigoure | Mubarak Seyed |
| [HBASE-5167](https://issues.apache.org/jira/browse/HBASE-5167) | We shouldn't be injecting 'Killing [daemon]' into logs, when we aren't doing that. |  Trivial | scripts | Harsh J | Harsh J |
| [HBASE-4938](https://issues.apache.org/jira/browse/HBASE-4938) | Create a HRegion.getScanner public method that allows reading from a specified readPoint |  Minor | . | dhruba borthakur | dhruba borthakur |
| [HBASE-5193](https://issues.apache.org/jira/browse/HBASE-5193) | Use TBoundedThreadPoolServer in HRegionThriftServer |  Minor | regionserver | Scott Chen | Scott Chen |
| [HBASE-5033](https://issues.apache.org/jira/browse/HBASE-5033) | Opening/Closing store in parallel to reduce region open/close time |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-5201](https://issues.apache.org/jira/browse/HBASE-5201) | Utilize TThreadedSelectorServer and remove redundant code in ThriftServer and HRegionThriftServer |  Major | regionserver | Scott Chen | Scott Chen |
| [HBASE-3373](https://issues.apache.org/jira/browse/HBASE-3373) | Allow regions to be load-balanced by table |  Major | master | Ted Yu | Ted Yu |
| [HBASE-5255](https://issues.apache.org/jira/browse/HBASE-5255) | Use singletons for OperationStatus to save memory |  Minor | regionserver | Benoit Sigoure | Benoit Sigoure |
| [HBASE-5297](https://issues.apache.org/jira/browse/HBASE-5297) | Update metrics numOpenConnections and callQueueLen directly in HBaseServer |  Minor | metrics | Scott Chen | Scott Chen |
| [HBASE-5259](https://issues.apache.org/jira/browse/HBASE-5259) | Normalize the RegionLocation in TableInputFormat by the reverse DNS lookup. |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-5304](https://issues.apache.org/jira/browse/HBASE-5304) | Pluggable split key policy |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5186](https://issues.apache.org/jira/browse/HBASE-5186) | Add metrics to ThriftServer |  Major | . | Scott Chen | Scott Chen |
| [HBASE-5310](https://issues.apache.org/jira/browse/HBASE-5310) | HConnectionManager server cache key enhancement |  Minor | Client | Jimmy Xiang | Jimmy Xiang |
| [HBASE-3850](https://issues.apache.org/jira/browse/HBASE-3850) | Log more details when a scanner lease expires |  Critical | regionserver | Benoit Sigoure | Darren Haas |
| [HBASE-4218](https://issues.apache.org/jira/browse/HBASE-4218) | Data Block Encoding of KeyValues  (aka delta encoding / prefix compression |  Major | io | Jacek Migdal | Mikhail Bautin |
| [HBASE-5199](https://issues.apache.org/jira/browse/HBASE-5199) | Delete out of TTL store files before compaction selection |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-5358](https://issues.apache.org/jira/browse/HBASE-5358) | HBaseObjectWritable should be able to serialize/deserialize generic arrays |  Major | Coprocessors, io | Enis Soztutar | Enis Soztutar |
| [HBASE-5363](https://issues.apache.org/jira/browse/HBASE-5363) | Automatically run rat check on mvn release builds |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5197](https://issues.apache.org/jira/browse/HBASE-5197) | [replication] Handle socket timeouts in ReplicationSource to prevent DDOS |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5395](https://issues.apache.org/jira/browse/HBASE-5395) | CopyTable needs to use GenericOptionsParser |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5388](https://issues.apache.org/jira/browse/HBASE-5388) | Tune HConnectionManager#getCachedLocation method |  Major | . | ronghai.ma | ronghai.ma |
| [HBASE-5394](https://issues.apache.org/jira/browse/HBASE-5394) | Add ability to include Protobufs in HbaseObjectWritable |  Major | . | Ted Yu | Jimmy Xiang |
| [HBASE-5393](https://issues.apache.org/jira/browse/HBASE-5393) | Consider splitting after flushing |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4640](https://issues.apache.org/jira/browse/HBASE-4640) | Catch ClosedChannelException and document it |  Minor | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5421](https://issues.apache.org/jira/browse/HBASE-5421) | use hadoop-client/hadoop-minicluster artifacts for Hadoop 0.23 build |  Minor | build | Shaneal Manek | Shaneal Manek |
| [HBASE-5428](https://issues.apache.org/jira/browse/HBASE-5428) | Allow for custom filters to be registered within the Thrift interface |  Major | Thrift | Robert Roland |  |
| [HBASE-5209](https://issues.apache.org/jira/browse/HBASE-5209) | HConnection/HMasterInterface should allow for way to get hostname of currently active master in multi-master HBase setup |  Major | master | Aditya Acharya | David S. Wang |
| [HBASE-5436](https://issues.apache.org/jira/browse/HBASE-5436) | Right-size the map when reading attributes. |  Trivial | . | Benoit Sigoure | Benoit Sigoure |
| [HBASE-5439](https://issues.apache.org/jira/browse/HBASE-5439) | Fix some performance findbugs issues |  Minor | Performance | Gregory Chanan | Gregory Chanan |
| [HBASE-5332](https://issues.apache.org/jira/browse/HBASE-5332) | Deterministic Compaction Jitter |  Minor | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-5464](https://issues.apache.org/jira/browse/HBASE-5464) | Log warning message when thrift calls throw exceptions |  Trivial | Thrift | Scott Chen | Scott Chen |
| [HBASE-5442](https://issues.apache.org/jira/browse/HBASE-5442) | Use builder pattern in StoreFile and HFile |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5166](https://issues.apache.org/jira/browse/HBASE-5166) | MultiThreaded Table Mapper analogous to MultiThreaded Mapper in hadoop |  Minor | . | Jai Kumar Singh | Jai Kumar Singh |
| [HBASE-4365](https://issues.apache.org/jira/browse/HBASE-4365) | Add a decent heuristic for region size |  Critical | . | Todd Lipcon | stack |
| [HBASE-5440](https://issues.apache.org/jira/browse/HBASE-5440) | Allow Import to optionally use HFileOutputFormat |  Minor | mapreduce | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5325](https://issues.apache.org/jira/browse/HBASE-5325) | Expose basic information about the master-status through jmx beans |  Minor | . | Hitesh Shah | Hitesh Shah |
| [HBASE-5483](https://issues.apache.org/jira/browse/HBASE-5483) | Allow configurable host to bind to for starting REST server from commandline |  Minor | REST | Dan Rosher |  |
| [HBASE-5454](https://issues.apache.org/jira/browse/HBASE-5454) | Refuse operations from Admin before master is initialized |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5489](https://issues.apache.org/jira/browse/HBASE-5489) | Add HTable accessor to get regions for a key range |  Minor | Client | David S. Wang | David S. Wang |
| [HBASE-5508](https://issues.apache.org/jira/browse/HBASE-5508) | Add an option to allow test output to show on the terminal |  Minor | test | Scott Chen | Scott Chen |
| [HBASE-5074](https://issues.apache.org/jira/browse/HBASE-5074) | support checksums in HBase block cache |  Major | regionserver | dhruba borthakur | dhruba borthakur |
| [HBASE-5551](https://issues.apache.org/jira/browse/HBASE-5551) | Some functions should not be used by customer code and must be deprecated in 0.94 |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5588](https://issues.apache.org/jira/browse/HBASE-5588) | Deprecate/remove AssignmentManager#clearRegionFromTransition |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5520](https://issues.apache.org/jira/browse/HBASE-5520) | Support reseek() at RegionScanner |  Major | regionserver | Anoop Sam John | ramkrishna.s.vasudevan |
| [HBASE-4542](https://issues.apache.org/jira/browse/HBASE-4542) | add filter info to slow query logging |  Major | . | Kannan Muthukkaruppan | Madhuwanti Vaidya |
| [HBASE-5560](https://issues.apache.org/jira/browse/HBASE-5560) | Avoid RegionServer GC caused by timed-out calls |  Major | . | dhruba borthakur | dhruba borthakur |
| [HBASE-5246](https://issues.apache.org/jira/browse/HBASE-5246) | Regenerate code with thrift 0.8.0 |  Minor | regionserver | Scott Chen | Scott Chen |
| [HBASE-5589](https://issues.apache.org/jira/browse/HBASE-5589) | Add of the offline call to the Master Interface |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5433](https://issues.apache.org/jira/browse/HBASE-5433) | [REST] Add metrics to keep track of success/failure count |  Major | metrics, REST | Mubarak Seyed | Mubarak Seyed |
| [HBASE-5411](https://issues.apache.org/jira/browse/HBASE-5411) | Add more metrics for ThriftMetrics |  Minor | metrics | Scott Chen | Scott Chen |
| [HBASE-4940](https://issues.apache.org/jira/browse/HBASE-4940) | hadoop-metrics.properties can include configuration of the "rest" context for ganglia |  Minor | metrics | Mubarak Seyed | Mubarak Seyed |
| [HBASE-5592](https://issues.apache.org/jira/browse/HBASE-5592) | Make it easier to get a table from shell |  Trivial | shell | Ben West | Ben West |
| [HBASE-5298](https://issues.apache.org/jira/browse/HBASE-5298) | Add thrift metrics to thrift2 |  Major | metrics, Thrift | Scott Chen | Scott Chen |
| [HBASE-4657](https://issues.apache.org/jira/browse/HBASE-4657) | Improve the efficiency of our MR jobs with a few configurations |  Major | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-5434](https://issues.apache.org/jira/browse/HBASE-5434) | [REST] Include more metrics in cluster status request |  Minor | metrics, REST | Mubarak Seyed | Mubarak Seyed |
| [HBASE-4957](https://issues.apache.org/jira/browse/HBASE-4957) | Clean up some log messages, code in RecoverableZooKeeper |  Minor | Zookeeper | Todd Lipcon | Todd Lipcon |
| [HBASE-5533](https://issues.apache.org/jira/browse/HBASE-5533) | Add more metrics to HBase |  Minor | . | Shaneal Manek | Shaneal Manek |
| [HBASE-5671](https://issues.apache.org/jira/browse/HBASE-5671) | hbase.metrics.showTableName should be true by default |  Critical | metrics | Enis Soztutar | Enis Soztutar |
| [HBASE-5670](https://issues.apache.org/jira/browse/HBASE-5670) | Have Mutation implement the Row interface. |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5682](https://issues.apache.org/jira/browse/HBASE-5682) | Allow HConnectionImplementation to recover from ZK connection loss (for 0.94 only) |  Critical | Client | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5706](https://issues.apache.org/jira/browse/HBASE-5706) | "Dropping fs latency stats since buffer is full" spam |  Minor | . | Jean-Daniel Cryans | Shaneal Manek |
| [HBASE-5734](https://issues.apache.org/jira/browse/HBASE-5734) | Change hbck sideline root |  Trivial | hbck | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5735](https://issues.apache.org/jira/browse/HBASE-5735) | Clearer warning message when connecting a non-secure HBase client to a secure HBase server |  Trivial | security | Shaneal Manek | Shaneal Manek |
| [HBASE-5618](https://issues.apache.org/jira/browse/HBASE-5618) | SplitLogManager - prevent unnecessary attempts to resubmits |  Major | wal, Zookeeper | Prakash Khemani | Prakash Khemani |
| [HBASE-5748](https://issues.apache.org/jira/browse/HBASE-5748) | Enable lib directory in jar file for coprocessor |  Major | Coprocessors | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5770](https://issues.apache.org/jira/browse/HBASE-5770) | Add a clock skew warning threshold |  Minor | master, regionserver | Ian Varley | Ian Varley |
| [HBASE-5775](https://issues.apache.org/jira/browse/HBASE-5775) | ZKUtil doesn't handle deleteRecurisively cleanly |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-5823](https://issues.apache.org/jira/browse/HBASE-5823) | Hbck should be able to print help |  Minor | . | Enis Soztutar | Enis Soztutar |
| [HBASE-5737](https://issues.apache.org/jira/browse/HBASE-5737) | Minor Improvements related to balancer. |  Minor | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5863](https://issues.apache.org/jira/browse/HBASE-5863) | Improve the graceful\_stop.sh CLI help (especially about reloads) |  Minor | scripts | Harsh J | Harsh J |
| [HBASE-5862](https://issues.apache.org/jira/browse/HBASE-5862) | After Region Close remove the Operation Metrics. |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-5712](https://issues.apache.org/jira/browse/HBASE-5712) | Parallelize load of .regioninfo files in diagnostic/repair portion of hbck. |  Major | hbck | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-6004](https://issues.apache.org/jira/browse/HBASE-6004) | Adding more logging to help debugging MR job |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5189](https://issues.apache.org/jira/browse/HBASE-5189) | Add metrics to keep track of region-splits in RS |  Minor | metrics, regionserver | Mubarak Seyed | Matteo Bertozzi |
| [HBASE-5208](https://issues.apache.org/jira/browse/HBASE-5208) | Allow setting Scan start/stop row individually in TableInputFormat |  Minor | mapreduce | Nicholas Telford |  |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-3987](https://issues.apache.org/jira/browse/HBASE-3987) | Fix a NullPointerException on a failure to load Bloom filter data |  Major | regionserver | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4105](https://issues.apache.org/jira/browse/HBASE-4105) | Stargate does not support Content-Type: application/json and Content-Encoding: gzip in parallel |  Major | REST | Jean-Pierre Koenig | Andrew Purtell |
| [HBASE-4116](https://issues.apache.org/jira/browse/HBASE-4116) | [stargate] StringIndexOutOfBoundsException in row spec parse |  Major | . | Andrew Purtell |  |
| [HBASE-4476](https://issues.apache.org/jira/browse/HBASE-4476) | Compactions must fail if column tracker gets columns out of order |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4496](https://issues.apache.org/jira/browse/HBASE-4496) | HFile V2 does not honor setCacheBlocks when scanning. |  Major | regionserver | Lars Hofhansl | Mikhail Bautin |
| [HBASE-4556](https://issues.apache.org/jira/browse/HBASE-4556) | Fix all incorrect uses of InternalScanner.next(...) |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4065](https://issues.apache.org/jira/browse/HBASE-4065) | TableOutputFormat ignores failure to create table instance |  Major | . | Todd Lipcon | Brock Noland |
| [HBASE-4078](https://issues.apache.org/jira/browse/HBASE-4078) | Silent Data Offlining During HDFS Flakiness |  Blocker | io, regionserver | Nicolas Spiegelberg | Pritam Damania |
| [HBASE-4626](https://issues.apache.org/jira/browse/HBASE-4626) | Filters unnecessarily copy byte arrays... |  Major | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4673](https://issues.apache.org/jira/browse/HBASE-4673) | NPE in HFileReaderV2.close during major compaction when hfile.block.cache.size is set to 0 |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4679](https://issues.apache.org/jira/browse/HBASE-4679) | Thrift null mutation error |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4645](https://issues.apache.org/jira/browse/HBASE-4645) | Edits Log recovery losing data across column families |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4691](https://issues.apache.org/jira/browse/HBASE-4691) | Remove more unnecessary byte[] copies from KeyValues |  Minor | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4609](https://issues.apache.org/jira/browse/HBASE-4609) | ThriftServer.getRegionInfo() is expecting old ServerName format, need to use new Addressing class instead |  Minor | Thrift | Jonathan Gray | Jonathan Gray |
| [HBASE-4745](https://issues.apache.org/jira/browse/HBASE-4745) | LRU Statistics thread should be daemon |  Major | . | Ted Yu | Andrew Purtell |
| [HBASE-3690](https://issues.apache.org/jira/browse/HBASE-3690) | Option to Exclude Bulk Import Files from Minor Compaction |  Minor | regionserver | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4769](https://issues.apache.org/jira/browse/HBASE-4769) | Abort RegionServer Immediately on OOME |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-4478](https://issues.apache.org/jira/browse/HBASE-4478) | Improve AssignmentManager.handleRegion so that it can process certain ZK state in the case of RS offline |  Major | . | Ming Ma | ramkrishna.s.vasudevan |
| [HBASE-4776](https://issues.apache.org/jira/browse/HBASE-4776) | HLog.closed should be checked inside of updateLock |  Major | . | Nicolas Spiegelberg | Prakash Khemani |
| [HBASE-4778](https://issues.apache.org/jira/browse/HBASE-4778) | Don't ignore corrupt StoreFiles when opening a region |  Major | . | Nicolas Spiegelberg | Mikhail Bautin |
| [HBASE-4326](https://issues.apache.org/jira/browse/HBASE-4326) | Tests that use HBaseTestingUtility.startMiniCluster(n) should shutdown with HBaseTestingUtility.shutdownMiniCluster. |  Major | . | Jonathan Hsieh | Nicolas Liochon |
| [HBASE-4790](https://issues.apache.org/jira/browse/HBASE-4790) | Occasional TestDistributedLogSplitting failure |  Minor | test | gaojinchao | gaojinchao |
| [HBASE-4792](https://issues.apache.org/jira/browse/HBASE-4792) | SplitRegionHandler doesn't care if it deletes the znode or not, leaves the parent region stuck offline |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4795](https://issues.apache.org/jira/browse/HBASE-4795) | Fix TestHFileBlock when running on a 32-bit JVM |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4805](https://issues.apache.org/jira/browse/HBASE-4805) | Allow better control of resource consumption in HTable |  Major | Client | Lars Hofhansl | Lars Hofhansl |
| [HBASE-2856](https://issues.apache.org/jira/browse/HBASE-2856) | TestAcidGuarantee broken on trunk |  Blocker | . | ryan rawson | Amitanand Aiyer |
| [HBASE-4819](https://issues.apache.org/jira/browse/HBASE-4819) | TestShell broke in trunk; typo |  Major | . | stack | stack |
| [HBASE-4826](https://issues.apache.org/jira/browse/HBASE-4826) | Modify hbasetests.sh to take into account the new pom.xml with surefire |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4825](https://issues.apache.org/jira/browse/HBASE-4825) | TestRegionServersMetrics and TestZKLeaderManager are not categorized (small/medium/large) |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4797](https://issues.apache.org/jira/browse/HBASE-4797) | [availability] Skip recovered.edits files with edits we know older than what region currently has |  Critical | Performance | stack | Jimmy Xiang |
| [HBASE-4832](https://issues.apache.org/jira/browse/HBASE-4832) | TestRegionServerCoprocessorExceptionWithAbort fails if the region server stops too fast |  Minor | Coprocessors, test | Nicolas Liochon | Eugene Koontz |
| [HBASE-4874](https://issues.apache.org/jira/browse/HBASE-4874) | Run tests with non-secure random, some tests hang otherwise |  Major | . | Ted Yu | Lars Hofhansl |
| [HBASE-4886](https://issues.apache.org/jira/browse/HBASE-4886) | truncate fails in HBase shell |  Minor | shell | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4878](https://issues.apache.org/jira/browse/HBASE-4878) | Master crash when splitting hlog may cause data loss |  Major | . | chunhui shen | chunhui shen |
| [HBASE-4729](https://issues.apache.org/jira/browse/HBASE-4729) | Clash between region unassign and splitting kills the master |  Critical | . | Jean-Daniel Cryans | stack |
| [HBASE-4853](https://issues.apache.org/jira/browse/HBASE-4853) | HBASE-4789 does overzealous pruning of seqids |  Critical | . | stack | stack |
| [HBASE-4942](https://issues.apache.org/jira/browse/HBASE-4942) | HMaster is unable to start of HFile V1 is used |  Major | io | Ted Yu | Honghua Zhu |
| [HBASE-4937](https://issues.apache.org/jira/browse/HBASE-4937) | Error in Quick Start Shell Exercises |  Major | documentation | Ryan Berdeen | stack |
| [HBASE-4936](https://issues.apache.org/jira/browse/HBASE-4936) | Cached HRegionInterface connections crash when getting UnknownHost exceptions |  Major | regionserver | Andrei Dragomir | Andrei Dragomir |
| [HBASE-4610](https://issues.apache.org/jira/browse/HBASE-4610) | Port HBASE-3380 (Master failover can split logs of live servers) to 92/trunk (definitely bring in config params, decide if we need to do more to fix the bug) |  Major | master | Jonathan Gray | Jonathan Gray |
| [HBASE-4946](https://issues.apache.org/jira/browse/HBASE-4946) | HTable.coprocessorExec (and possibly coprocessorProxy) does not work with dynamically loaded coprocessors (from hdfs or local system), because the RPC system tries to deserialize an unknown class. |  Major | Coprocessors | Andrei Dragomir | Andrei Dragomir |
| [HBASE-5015](https://issues.apache.org/jira/browse/HBASE-5015) | Remove some leaks in tests due to lack of HTable.close() |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4993](https://issues.apache.org/jira/browse/HBASE-4993) | Performance regression in minicluster creation |  Major | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5026](https://issues.apache.org/jira/browse/HBASE-5026) | Add coprocessor hook to HRegionServer.ScannerListener.leaseExpired() |  Major | Coprocessors | Liu Jia | Liu Jia |
| [HBASE-5038](https://issues.apache.org/jira/browse/HBASE-5038) | Some tests leak connections |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5027](https://issues.apache.org/jira/browse/HBASE-5027) | HConnection.create(final Connection conf) does not clone, it creates a new Configuration reading \*.xmls and then does a merge. |  Major | . | stack | Nicolas Liochon |
| [HBASE-5055](https://issues.apache.org/jira/browse/HBASE-5055) | Build against hadoop 0.22 broken |  Blocker | . | Ted Yu | stack |
| [HBASE-5051](https://issues.apache.org/jira/browse/HBASE-5051) | HBaseTestingUtility#getHBaseAdmin() creates a new HBaseAdmin instance at each call |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5068](https://issues.apache.org/jira/browse/HBASE-5068) | RC1 can not build its hadoop-0.23 profile |  Major | build | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-5085](https://issues.apache.org/jira/browse/HBASE-5085) | fix test-patch script from setting the ulimit |  Major | . | Giridharan Kesavan | Giridharan Kesavan |
| [HBASE-5091](https://issues.apache.org/jira/browse/HBASE-5091) | [replication] Update replication doc to reflect current znode structure |  Trivial | documentation, Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-5100](https://issues.apache.org/jira/browse/HBASE-5100) | Rollback of split could cause closed region to be opened again |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5099](https://issues.apache.org/jira/browse/HBASE-5099) | ZK event thread waiting for root region assignment may block server shutdown handler for the region sever the root region was on |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-4397](https://issues.apache.org/jira/browse/HBASE-4397) | -ROOT-, .META. tables stay offline for too long in recovery phase after all RSs are shutdown at the same time |  Major | . | Ming Ma | Ming Ma |
| [HBASE-5088](https://issues.apache.org/jira/browse/HBASE-5088) | A concurrency issue on SoftValueSortedMap |  Critical | Client | Jieshan Bean | Lars Hofhansl |
| [HBASE-5041](https://issues.apache.org/jira/browse/HBASE-5041) | Major compaction on non existing table does not throw error |  Major | regionserver, shell | Shrijeet Paliwal | Shrijeet Paliwal |
| [HBASE-5141](https://issues.apache.org/jira/browse/HBASE-5141) | Memory leak in MonitoredRPCHandlerImpl |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5103](https://issues.apache.org/jira/browse/HBASE-5103) | Fix improper master znode deserialization |  Minor | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5152](https://issues.apache.org/jira/browse/HBASE-5152) | Region is on service before completing initialization when doing rollback of split, it will affect read correctness |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5172](https://issues.apache.org/jira/browse/HBASE-5172) | HTableInterface should extend java.io.Closeable |  Major | . | Ted Yu | stack |
| [HBASE-5121](https://issues.apache.org/jira/browse/HBASE-5121) | MajorCompaction may affect scan's correctness |  Critical | regionserver | chunhui shen | chunhui shen |
| [HBASE-5182](https://issues.apache.org/jira/browse/HBASE-5182) | TBoundedThreadPoolServer threadKeepAliveTimeSec is not configured properly |  Minor | regionserver | Scott Chen | Scott Chen |
| [HBASE-5053](https://issues.apache.org/jira/browse/HBASE-5053) | HCM Tests leak connections |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5163](https://issues.apache.org/jira/browse/HBASE-5163) | TestLogRolling#testLogRollOnDatanodeDeath fails sometimes on Jenkins or hadoop QA ("The directory is already locked.") |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-5196](https://issues.apache.org/jira/browse/HBASE-5196) | Failure in region split after PONR could cause region hole |  Major | master, regionserver | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5176](https://issues.apache.org/jira/browse/HBASE-5176) | AssignmentManager#getRegion: logging nit  adds a redundant '+' |  Minor | . | Karthik K | Karthik K |
| [HBASE-5228](https://issues.apache.org/jira/browse/HBASE-5228) | [REST] Rip out "transform" feature |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5278](https://issues.apache.org/jira/browse/HBASE-5278) | HBase shell script refers to removed "migrate" functionality |  Trivial | scripts | Shaneal Manek | Shaneal Manek |
| [HBASE-5282](https://issues.apache.org/jira/browse/HBASE-5282) | Possible file handle leak with truncated HLog file. |  Major | . | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5010](https://issues.apache.org/jira/browse/HBASE-5010) | Filter HFiles based on TTL |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5290](https://issues.apache.org/jira/browse/HBASE-5290) | [FindBugs] Synchronization on boxed primitive |  Minor | . | Liyin Tang | Ben West |
| [HBASE-5212](https://issues.apache.org/jira/browse/HBASE-5212) | Fix test TestTableMapReduce against 0.23. |  Major | . | Mahadev konar | Gregory Chanan |
| [HBASE-4658](https://issues.apache.org/jira/browse/HBASE-4658) | Put attributes are not exposed via the ThriftServer |  Major | Thrift | dhruba borthakur | dhruba borthakur |
| [HBASE-5348](https://issues.apache.org/jira/browse/HBASE-5348) | Constraint configuration loaded with bloat |  Minor | Coprocessors, regionserver | Jesse Yates | Jesse Yates |
| [HBASE-5345](https://issues.apache.org/jira/browse/HBASE-5345) | CheckAndPut doesn't work when value is empty byte[] |  Major | . | Evert Arckens | Evert Arckens |
| [HBASE-5288](https://issues.apache.org/jira/browse/HBASE-5288) | Security source code dirs missing from 0.92.0 release tarballs. |  Blocker | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5364](https://issues.apache.org/jira/browse/HBASE-5364) | Fix source files missing licenses in 0.92 and trunk |  Blocker | . | Jonathan Hsieh | Elliott Clark |
| [HBASE-5384](https://issues.apache.org/jira/browse/HBASE-5384) | Up heap used by hadoopqa |  Major | . | stack | stack |
| [HBASE-5387](https://issues.apache.org/jira/browse/HBASE-5387) | Reuse compression streams in HFileBlock.Writer |  Critical | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5398](https://issues.apache.org/jira/browse/HBASE-5398) | HBase shell disable\_all/enable\_all/drop\_all promp wrong tables for confirmation |  Major | scripts | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5327](https://issues.apache.org/jira/browse/HBASE-5327) | Print a message when an invalid hbase.rootdir is passed |  Major | . | Jean-Daniel Cryans | Jimmy Xiang |
| [HBASE-5267](https://issues.apache.org/jira/browse/HBASE-5267) | Add a configuration to disable the slab cache by default |  Blocker | . | Jean-Daniel Cryans | Li Pi |
| [HBASE-5425](https://issues.apache.org/jira/browse/HBASE-5425) |  Punt on the timeout doesn't work in BulkEnabler#waitUntilDone (master's EnableTableHandler) |  Major | master | terry zhang | terry zhang |
| [HBASE-5271](https://issues.apache.org/jira/browse/HBASE-5271) | Result.getValue and Result.getColumnLatest return the wrong column. |  Major | Client | Ghais Issa | Ghais Issa |
| [HBASE-5195](https://issues.apache.org/jira/browse/HBASE-5195) | [Coprocessors] preGet hook does not allow overriding or wrapping filter on incoming Get |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-5420](https://issues.apache.org/jira/browse/HBASE-5420) | TestImportTsv does not shut down MR Cluster correctly (fails against 0.23 hadoop) |  Major | test | Gregory Chanan | Gregory Chanan |
| [HBASE-5200](https://issues.apache.org/jira/browse/HBASE-5200) | AM.ProcessRegionInTransition() and AM.handleRegion() race thus leaving the region assignment inconsistent |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5003](https://issues.apache.org/jira/browse/HBASE-5003) | If the master is started with a wrong root dir, it gets stuck and can't be killed |  Critical | . | Jean-Daniel Cryans | Shaneal Manek |
| [HBASE-5423](https://issues.apache.org/jira/browse/HBASE-5423) | Regionserver may block forever on waitOnAllRegionsToClose when aborting |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-5415](https://issues.apache.org/jira/browse/HBASE-5415) | FSTableDescriptors should handle random folders in hbase.root.dir better |  Critical | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5466](https://issues.apache.org/jira/browse/HBASE-5466) | Opening a table also opens the metatable and never closes it. |  Major | Client | Ashley Taylor | Ashley Taylor |
| [HBASE-5470](https://issues.apache.org/jira/browse/HBASE-5470) | Make DataBlockEncodingTool work correctly with no native compression codecs loaded |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5437](https://issues.apache.org/jira/browse/HBASE-5437) | HRegionThriftServer does not start because of a bug in HbaseHandlerMetricsProxy |  Major | metrics, Thrift | Scott Chen | Scott Chen |
| [HBASE-5351](https://issues.apache.org/jira/browse/HBASE-5351) | hbase completebulkload to a new table fails in a race |  Major | mapreduce | Gregory Chanan | Gregory Chanan |
| [HBASE-5350](https://issues.apache.org/jira/browse/HBASE-5350) | Fix jamon generated package names |  Major | monitoring | Jesse Yates | Jesse Yates |
| [HBASE-5481](https://issues.apache.org/jira/browse/HBASE-5481) | Uncaught UnknownHostException prevents HBase from starting |  Major | regionserver | Benoit Sigoure | Benoit Sigoure |
| [HBASE-5477](https://issues.apache.org/jira/browse/HBASE-5477) | Cannot build RPM for hbase-0.92.0 |  Major | . | Benjamin Lee |  |
| [HBASE-5120](https://issues.apache.org/jira/browse/HBASE-5120) | Timeout monitor races with table disable handler |  Blocker | . | Ted Yu | ramkrishna.s.vasudevan |
| [HBASE-5484](https://issues.apache.org/jira/browse/HBASE-5484) | Spelling mistake in error message in HMasterCommandLine |  Trivial | master | David S. Wang | David S. Wang |
| [HBASE-5485](https://issues.apache.org/jira/browse/HBASE-5485) | LogCleaner refers to non-existant SnapshotLogCleaner |  Minor | documentation, wal | Gregory Chanan | Gregory Chanan |
| [HBASE-5502](https://issues.apache.org/jira/browse/HBASE-5502) | region\_mover.rb fails to load regions back to original server for regions only containing empty tables. |  Minor | scripts | James Page |  |
| [HBASE-5317](https://issues.apache.org/jira/browse/HBASE-5317) | Fix TestHFileOutputFormat to work against hadoop 0.23 |  Major | test | Gregory Chanan | Gregory Chanan |
| [HBASE-5286](https://issues.apache.org/jira/browse/HBASE-5286) | bin/hbase's logic of adding Hadoop jar files to the classpath is fragile when presented with split packaged Hadoop 0.23 installation |  Major | scripts | Roman Shaposhnik | Roman Shaposhnik |
| [HBASE-5473](https://issues.apache.org/jira/browse/HBASE-5473) | Metrics does not push pread time |  Minor | metrics | dhruba borthakur | dhruba borthakur |
| [HBASE-5524](https://issues.apache.org/jira/browse/HBASE-5524) | Add a couple of more filters to our rat exclusion set |  Major | . | stack | stack |
| [HBASE-5531](https://issues.apache.org/jira/browse/HBASE-5531) | Maven hadoop profile (version 23) needs to be updated with latest 23 snapshot |  Major | build | Laxman | Laxman |
| [HBASE-5522](https://issues.apache.org/jira/browse/HBASE-5522) | hbase 0.92 test artifacts are missing from Maven central |  Major | build | Roman Shaposhnik | stack |
| [HBASE-5537](https://issues.apache.org/jira/browse/HBASE-5537) | MXBean shouldn't have a dependence on InterfaceStability until 0.96 |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-4890](https://issues.apache.org/jira/browse/HBASE-4890) | fix possible NPE in HConnectionManager |  Blocker | . | Jonathan Hsieh | stack |
| [HBASE-5529](https://issues.apache.org/jira/browse/HBASE-5529) | MR test failures becuase MALLOC\_ARENA\_MAX is not set |  Minor | mapreduce, test | Gregory Chanan | Gregory Chanan |
| [HBASE-5552](https://issues.apache.org/jira/browse/HBASE-5552) | Clean up our jmx view; its a bit of a mess |  Blocker | . | stack | stack |
| [HBASE-5535](https://issues.apache.org/jira/browse/HBASE-5535) | Make the functions in task monitor synchronized |  Major | . | Liyin Tang | Liyin Tang |
| [HBASE-5507](https://issues.apache.org/jira/browse/HBASE-5507) | ThriftServerRunner.HbaseHandler.getRegionInfo() and getTableRegions() do not use ByteBuffer correctly |  Major | Thrift | Scott Chen | Scott Chen |
| [HBASE-5562](https://issues.apache.org/jira/browse/HBASE-5562) | test-patch.sh reports a javadoc warning when there are no new javadoc warnings |  Trivial | scripts | David S. Wang | David S. Wang |
| [HBASE-5480](https://issues.apache.org/jira/browse/HBASE-5480) | Fixups to MultithreadedTableMapper for Hadoop 0.23.2+ |  Critical | mapreduce | Andrew Purtell | Andrew Purtell |
| [HBASE-5567](https://issues.apache.org/jira/browse/HBASE-5567) | test-patch.sh has logic error in findbugs check |  Trivial | scripts | David S. Wang | David S. Wang |
| [HBASE-5514](https://issues.apache.org/jira/browse/HBASE-5514) | Compile against hadoop 0.24-SNAPSHOT |  Minor | build, test | Mingjie Lai | Mingjie Lai |
| [HBASE-5499](https://issues.apache.org/jira/browse/HBASE-5499) | dev-support/test-patch.sh does not have execute perms |  Trivial | scripts | David S. Wang | David S. Wang |
| [HBASE-5574](https://issues.apache.org/jira/browse/HBASE-5574) | DEFAULT\_MAX\_FILE\_SIZE defaults to a negative value |  Major | . | Michael Drzal | Michael Drzal |
| [HBASE-5579](https://issues.apache.org/jira/browse/HBASE-5579) | A Delete Version could mask other values |  Major | . | Daniel Gómez Ferro | Daniel Gómez Ferro |
| [HBASE-5581](https://issues.apache.org/jira/browse/HBASE-5581) | Creating a table with invalid syntax does not give an error message when it fails |  Minor | shell | Binu John |  |
| [HBASE-5563](https://issues.apache.org/jira/browse/HBASE-5563) | HRegionInfo#compareTo should compare regionId as well |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5206](https://issues.apache.org/jira/browse/HBASE-5206) | Port HBASE-5155 to 0.92, 0.94, and TRUNK |  Major | . | Ted Yu | Ashutosh Jindal |
| [HBASE-5568](https://issues.apache.org/jira/browse/HBASE-5568) | Multi concurrent flushcache() for one region could cause data loss |  Major | regionserver | chunhui shen | chunhui shen |
| [HBASE-5603](https://issues.apache.org/jira/browse/HBASE-5603) | rolling-restart.sh script hangs when attempting to detect expiration of /hbase/master znode. |  Blocker | Zookeeper | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5597](https://issues.apache.org/jira/browse/HBASE-5597) | Findbugs check in test-patch.sh always fails |  Major | scripts | David S. Wang | David S. Wang |
| [HBASE-5569](https://issues.apache.org/jira/browse/HBASE-5569) | Do not collect deleted KVs when they are still in use by a scanner. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5283](https://issues.apache.org/jira/browse/HBASE-5283) | Request counters may become negative for heavily loaded regions |  Major | . | Ted Yu | Mubarak Seyed |
| [HBASE-4932](https://issues.apache.org/jira/browse/HBASE-4932) | Block cache can be mistakenly instantiated by tools |  Major | . | Prakash Khemani | Prakash Khemani |
| [HBASE-5586](https://issues.apache.org/jira/browse/HBASE-5586) | [replication] NPE in ReplicationSource when creating a stream to an inexistent cluster |  Major | Replication | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-4607](https://issues.apache.org/jira/browse/HBASE-4607) | Split log worker should terminate properly when waiting for znode |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5624](https://issues.apache.org/jira/browse/HBASE-5624) | Aborting regionserver when splitting region, may cause daughter region not assigned by ServerShutdownHandler. |  Major | . | chunhui shen | chunhui shen |
| [HBASE-5613](https://issues.apache.org/jira/browse/HBASE-5613) | ThriftServer getTableRegions does not return serverName and port |  Minor | Thrift | Scott Chen | Scott Chen |
| [HBASE-5633](https://issues.apache.org/jira/browse/HBASE-5633) | NPE reading ZK config in HBase |  Minor | Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5623](https://issues.apache.org/jira/browse/HBASE-5623) | Race condition when rolling the HLog and hlogFlush |  Critical | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-5596](https://issues.apache.org/jira/browse/HBASE-5596) | Few minor bugs from HBASE-5209 |  Minor | master | David S. Wang | David S. Wang |
| [HBASE-5639](https://issues.apache.org/jira/browse/HBASE-5639) | The logic used in waiting for region servers during startup is broken |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-5669](https://issues.apache.org/jira/browse/HBASE-5669) | AggregationClient fails validation for open stoprow scan |  Minor | Coprocessors | Brian Rogers | Mubarak Seyed |
| [HBASE-4398](https://issues.apache.org/jira/browse/HBASE-4398) | If HRegionPartitioner is used in MapReduce, client side configurations are overwritten by hbase-site.xml. |  Major | mapreduce | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5690](https://issues.apache.org/jira/browse/HBASE-5690) | compression does not work in Store.java of 0.94 |  Critical | regionserver | Honghua Zhu | Honghua Zhu |
| [HBASE-5636](https://issues.apache.org/jira/browse/HBASE-5636) | TestTableMapReduce doesn't work properly. |  Major | test | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5694](https://issues.apache.org/jira/browse/HBASE-5694) | getRowsWithColumnsTs() in Thrift service handles timestamps incorrectly |  Major | Thrift | Wouter Bolsterlee |  |
| [HBASE-5665](https://issues.apache.org/jira/browse/HBASE-5665) | Repeated split causes HRegionServer failures and breaks table |  Blocker | regionserver | Cosmin Lehene | Cosmin Lehene |
| [HBASE-5663](https://issues.apache.org/jira/browse/HBASE-5663) | MultithreadedTableMapper doesn't work. |  Major | mapreduce | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5097](https://issues.apache.org/jira/browse/HBASE-5097) | RegionObserver implementation whose preScannerOpen and postScannerOpen Impl return null can stall the system initialization through NPE |  Major | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5606](https://issues.apache.org/jira/browse/HBASE-5606) | SplitLogManger async delete node hangs log splitting when ZK connection is lost |  Critical | wal | Gopinathan A | Prakash Khemani |
| [HBASE-5724](https://issues.apache.org/jira/browse/HBASE-5724) | Row cache of KeyValue should be cleared in readFields(). |  Major | . | Teruyoshi Zenmyo | Teruyoshi Zenmyo |
| [HBASE-5680](https://issues.apache.org/jira/browse/HBASE-5680) | Improve compatibility warning about HBase with Hadoop 0.23.x |  Major | master | Kristam Subba Swathi | Jonathan Hsieh |
| [HBASE-5743](https://issues.apache.org/jira/browse/HBASE-5743) | Support GIT patches |  Major | . | Nicolas Spiegelberg | Nicolas Spiegelberg |
| [HBASE-5689](https://issues.apache.org/jira/browse/HBASE-5689) | Skipping RecoveredEdits may cause data loss |  Critical | regionserver | chunhui shen | chunhui shen |
| [HBASE-5720](https://issues.apache.org/jira/browse/HBASE-5720) | HFileDataBlockEncoderImpl uses wrong header size when reading HFiles with no checksums |  Blocker | io, regionserver | Matt Corgan | Matt Corgan |
| [HBASE-5656](https://issues.apache.org/jira/browse/HBASE-5656) | LoadIncrementalHFiles createTable should detect and set compression algorithm |  Major | util | Cosmin Lehene | Cosmin Lehene |
| [HBASE-5213](https://issues.apache.org/jira/browse/HBASE-5213) | "hbase master stop" does not bring down backup masters |  Minor | . | Gregory Chanan | Gregory Chanan |
| [HBASE-5736](https://issues.apache.org/jira/browse/HBASE-5736) | ThriftServerRunner.HbaseHandler.mutateRow() does not use ByteBuffer correctly |  Major | . | Scott Chen | Scott Chen |
| [HBASE-5717](https://issues.apache.org/jira/browse/HBASE-5717) | Scanner metrics are only reported if you get to the end of a scanner |  Minor | Client, metrics | Ian Varley | Ian Varley |
| [HBASE-5773](https://issues.apache.org/jira/browse/HBASE-5773) | HtablePool constructor not reading config files in certain cases |  Minor | Client | Ioan Eugen Stan | Ioan Eugen Stan |
| [HBASE-3443](https://issues.apache.org/jira/browse/HBASE-3443) | ICV optimization to look in memstore first and then store files (HBASE-3082) does not work when deletes are in the mix |  Critical | regionserver | Kannan Muthukkaruppan | Lars Hofhansl |
| [HBASE-5488](https://issues.apache.org/jira/browse/HBASE-5488) | OfflineMetaRepair doesn't support hadoop 0.20's fs.default.name property |  Minor | . | gaojinchao | gaojinchao |
| [HBASE-5781](https://issues.apache.org/jira/browse/HBASE-5781) | Zookeeper session got closed while trying to assign the region to RS using hbck -fix |  Critical | hbck | Kristam Subba Swathi | Jonathan Hsieh |
| [HBASE-5795](https://issues.apache.org/jira/browse/HBASE-5795) | HServerLoad$RegionLoad breaks 0.92\<-\>0.94 compatibility |  Major | . | stack | Ted Yu |
| [HBASE-5780](https://issues.apache.org/jira/browse/HBASE-5780) | Fix race in HBase regionserver startup vs ZK SASL authentication |  Major | security | Shaneal Manek | Shaneal Manek |
| [HBASE-5782](https://issues.apache.org/jira/browse/HBASE-5782) | Edits can be appended out of seqid order since HBASE-4487 |  Blocker | wal | Gopinathan A | Lars Hofhansl |
| [HBASE-5545](https://issues.apache.org/jira/browse/HBASE-5545) | region can't be opened for a long time. Because the creating File failed. |  Major | regionserver | gaojinchao | ramkrishna.s.vasudevan |
| [HBASE-5825](https://issues.apache.org/jira/browse/HBASE-5825) | TestHLog not running any tests; fix |  Major | . | stack | stack |
| [HBASE-5787](https://issues.apache.org/jira/browse/HBASE-5787) | Table owner can't disable/delete his/her own table |  Minor | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5635](https://issues.apache.org/jira/browse/HBASE-5635) | If getTaskList() returns null, splitlogWorker would go down and it won't serve any requests |  Major | wal | Kristam Subba Swathi | Chinna Rao Lalam |
| [HBASE-5833](https://issues.apache.org/jira/browse/HBASE-5833) | 0.92 build has been failing pretty consistently on TestMasterFailover.... |  Major | . | stack | stack |
| [HBASE-5857](https://issues.apache.org/jira/browse/HBASE-5857) | RIT map in RS not getting cleared while region opening |  Major | . | Chinna Rao Lalam | Chinna Rao Lalam |
| [HBASE-5850](https://issues.apache.org/jira/browse/HBASE-5850) | Refuse operations from Admin before master is initialized - fix for all branches. |  Major | . | xufeng | xufeng |
| [HBASE-5866](https://issues.apache.org/jira/browse/HBASE-5866) | Canary in tool package but says its in tools. |  Major | . | stack | stack |
| [HBASE-5865](https://issues.apache.org/jira/browse/HBASE-5865) | test-util.sh broken with unittest updates |  Minor | scripts | Jesse Yates | Jesse Yates |
| [HBASE-5861](https://issues.apache.org/jira/browse/HBASE-5861) | Hadoop 23 compilation broken due to tests introduced in HBASE-5604 |  Blocker | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5848](https://issues.apache.org/jira/browse/HBASE-5848) | Create table with EMPTY\_START\_ROW passed as splitKey causes the HMaster to abort |  Minor | Client | Lars Hofhansl | ramkrishna.s.vasudevan |
| [HBASE-5849](https://issues.apache.org/jira/browse/HBASE-5849) | On first cluster startup, RS aborts if root znode is not available |  Major | master, regionserver, Zookeeper | Enis Soztutar | Enis Soztutar |
| [HBASE-5871](https://issues.apache.org/jira/browse/HBASE-5871) | Usability regression, we don't parse compression algos anymore |  Critical | . | Jean-Daniel Cryans | Lars Hofhansl |
| [HBASE-5873](https://issues.apache.org/jira/browse/HBASE-5873) | TimeOut Monitor thread should be started after atleast one region server registers. |  Minor | . | ramkrishna.s.vasudevan | rajeshbabu |
| [HBASE-5864](https://issues.apache.org/jira/browse/HBASE-5864) | Error while reading from hfile in 0.94 |  Blocker | regionserver | Gopinathan A | ramkrishna.s.vasudevan |
| [HBASE-5893](https://issues.apache.org/jira/browse/HBASE-5893) | Allow spaces in coprocessor conf (aka trim() className) |  Minor | Coprocessors | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5885](https://issues.apache.org/jira/browse/HBASE-5885) | Invalid HFile block magic on Local file System |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-5611](https://issues.apache.org/jira/browse/HBASE-5611) | Replayed edits from regions that failed to open during recovery aren't removed from the global MemStore size |  Critical | . | Jean-Daniel Cryans | Jieshan Bean |
| [HBASE-5884](https://issues.apache.org/jira/browse/HBASE-5884) | MapReduce package info has broken link to bulk-loads |  Trivial | mapreduce | Jesse Yates | Jesse Yates |
| [HBASE-5908](https://issues.apache.org/jira/browse/HBASE-5908) | TestHLogSplit.testTralingGarbageCorruptionFileSkipErrorsPasses should not use append to corrupt the HLog |  Minor | test, wal | Gregory Chanan | Gregory Chanan |
| [HBASE-5897](https://issues.apache.org/jira/browse/HBASE-5897) | prePut coprocessor hook causing substantial CPU usage |  Critical | . | Todd Lipcon | Todd Lipcon |
| [HBASE-5900](https://issues.apache.org/jira/browse/HBASE-5900) | HRegion#FIXED\_OVERHEAD is miscalculated in 94. |  Major | regionserver | Jieshan Bean | Jieshan Bean |
| [HBASE-4083](https://issues.apache.org/jira/browse/HBASE-4083) | If Enable table is not completed and is partial, then scanning of the table is not working |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-5906](https://issues.apache.org/jira/browse/HBASE-5906) | TestChangingEncoding failing sporadically in 0.94 build |  Major | . | stack | stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4534](https://issues.apache.org/jira/browse/HBASE-4534) | A new unit test for lazy seek and StoreScanner in general |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4545](https://issues.apache.org/jira/browse/HBASE-4545) | TestHLog doesn't clean up after itself |  Major | test | Gary Helmling | Gary Helmling |
| [HBASE-4808](https://issues.apache.org/jira/browse/HBASE-4808) | Test to Ensure Expired Deletes Don't Override Puts |  Trivial | . | Nicolas Spiegelberg | Prakash Khemani |
| [HBASE-4772](https://issues.apache.org/jira/browse/HBASE-4772) | Utility to Create StoreFiles |  Minor | . | Nicolas Spiegelberg | Mikhail Bautin |
| [HBASE-4864](https://issues.apache.org/jira/browse/HBASE-4864) | TestMasterObserver#testRegionTransitionOperations occasionally fails |  Minor | test | gaojinchao | gaojinchao |
| [HBASE-4868](https://issues.apache.org/jira/browse/HBASE-4868) | TestOfflineMetaRebuildBase#testMetaRebuild occasionally fails |  Minor | test | gaojinchao | gaojinchao |
| [HBASE-5150](https://issues.apache.org/jira/browse/HBASE-5150) | Failure in a thread may not fail a test, clean up log splitting test |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-5223](https://issues.apache.org/jira/browse/HBASE-5223) | TestMetaReaderEditor is missing call to CatalogTracker.stop() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-4516](https://issues.apache.org/jira/browse/HBASE-4516) | HFile-level load tester with compaction and random-read workloads |  Minor | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-5455](https://issues.apache.org/jira/browse/HBASE-5455) | Add test to avoid unintentional reordering of items in HbaseObjectWritable |  Minor | . | Michael Drzal | Michael Drzal |
| [HBASE-5792](https://issues.apache.org/jira/browse/HBASE-5792) | HLog Performance Evaluation Tool |  Minor | wal | Matteo Bertozzi | Matteo Bertozzi |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4517](https://issues.apache.org/jira/browse/HBASE-4517) | Document new replication features in 0.92 |  Minor | documentation | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4345](https://issues.apache.org/jira/browse/HBASE-4345) | Ensure that Scanners that read from the storefiles respect MVCC |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4343](https://issues.apache.org/jira/browse/HBASE-4343) | Get the TestAcidGuarantee unit test to fail consistently |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4346](https://issues.apache.org/jira/browse/HBASE-4346) | Optimise the storage that we use for storing MVCC information. |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4485](https://issues.apache.org/jira/browse/HBASE-4485) | Eliminate window of missing Data |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4544](https://issues.apache.org/jira/browse/HBASE-4544) | Rename RWCC to MVCC |  Major | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4594](https://issues.apache.org/jira/browse/HBASE-4594) | Ensure that KV's newer than the oldest-living-scanner is not accounted for the maxVersions during flush/compaction. |  Minor | . | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-4911](https://issues.apache.org/jira/browse/HBASE-4911) | Clean shutdown |  Major | Client, regionserver | Nicolas Spiegelberg |  |
| [HBASE-4908](https://issues.apache.org/jira/browse/HBASE-4908) | HBase cluster test tool (port from 0.89-fb) |  Major | . | Mikhail Bautin | Mikhail Bautin |
| [HBASE-4979](https://issues.apache.org/jira/browse/HBASE-4979) | Setting KEEP\_DELETE\_CELLS fails in shell |  Major | shell | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4981](https://issues.apache.org/jira/browse/HBASE-4981) | add raw scan support to shell |  Major | shell | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4682](https://issues.apache.org/jira/browse/HBASE-4682) | Support deleted rows using Import/Export |  Major | mapreduce | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4998](https://issues.apache.org/jira/browse/HBASE-4998) | Support deleted rows in CopyTable |  Minor | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5005](https://issues.apache.org/jira/browse/HBASE-5005) | Add DEFAULT\_MIN\_VERSIONS to HColumnDescriptor.DEFAULT\_VALUES |  Trivial | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-4661](https://issues.apache.org/jira/browse/HBASE-4661) | Ability to export the list of files for a some or all column families for a given region |  Major | documentation, regionserver | Karthik Ranganathan | Madhuwanti Vaidya |
| [HBASE-5058](https://issues.apache.org/jira/browse/HBASE-5058) | Allow HBaseAdmin to use an existing connection |  Minor | Client | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5096](https://issues.apache.org/jira/browse/HBASE-5096) | Replication does not handle deletes correctly. |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5118](https://issues.apache.org/jira/browse/HBASE-5118) | Fix Scan documentation |  Trivial | documentation | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5143](https://issues.apache.org/jira/browse/HBASE-5143) | Fix config typo in pluggable load balancer factory |  Blocker | master | Harsh J | Harsh J |
| [HBASE-5203](https://issues.apache.org/jira/browse/HBASE-5203) | Group atomic put/delete operation into a single WALEdit to handle region server failures. |  Major | Client, Coprocessors, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5266](https://issues.apache.org/jira/browse/HBASE-5266) | Add documentation for ColumnRangeFilter |  Minor | documentation | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5368](https://issues.apache.org/jira/browse/HBASE-5368) | Move PrefixSplitKeyPolicy out of the src/test into src, so it is accessible in HBase installs |  Minor | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5346](https://issues.apache.org/jira/browse/HBASE-5346) |  Fix testColumnFamilyCompression and test\_TIMERANGE in TestHFileOutputFormat |  Major | mapreduce, test | Gregory Chanan | Gregory Chanan |
| [HBASE-5413](https://issues.apache.org/jira/browse/HBASE-5413) | Rename RowMutation to RowMutations |  Major | Client, Coprocessors, regionserver | Amitanand Aiyer | Amitanand Aiyer |
| [HBASE-5431](https://issues.apache.org/jira/browse/HBASE-5431) | Improve delete marker handling in Import M/R jobs |  Minor | mapreduce | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5460](https://issues.apache.org/jira/browse/HBASE-5460) | Add protobuf as M/R dependency jar |  Major | mapreduce | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5497](https://issues.apache.org/jira/browse/HBASE-5497) | Add protobuf as M/R dependency jar (mapred) |  Major | mapreduce | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5523](https://issues.apache.org/jira/browse/HBASE-5523) | Fix Delete Timerange logic for KEEP\_DELETED\_CELLS |  Minor | regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5541](https://issues.apache.org/jira/browse/HBASE-5541) | Avoid holding the rowlock during HLog sync in HRegion.mutateRowWithLocks |  Major | Client, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5371](https://issues.apache.org/jira/browse/HBASE-5371) | Introduce AccessControllerProtocol.checkPermissions(Permission[] permissons) API |  Major | security | Enis Soztutar | Enis Soztutar |
| [HBASE-5641](https://issues.apache.org/jira/browse/HBASE-5641) | decayingSampleTick1 prevents HBase from shutting down. |  Blocker | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-5638](https://issues.apache.org/jira/browse/HBASE-5638) | Backport to 0.90 and 0.92 - NPE reading ZK config in HBase |  Minor | Zookeeper | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-5793](https://issues.apache.org/jira/browse/HBASE-5793) | TestHBaseFsck#TestNoHdfsTable test hangs after client retries increased |  Major | . | Jonathan Hsieh | Jonathan Hsieh |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4429](https://issues.apache.org/jira/browse/HBASE-4429) | Provide synchronous balanceSwitch() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-4611](https://issues.apache.org/jira/browse/HBASE-4611) | Add support for Phabricator/Differential as an alternative code review tool |  Major | . | Jonathan Gray | Nicolas Spiegelberg |
| [HBASE-4751](https://issues.apache.org/jira/browse/HBASE-4751) | Make TestAdmin#testEnableTableRoundRobinAssignment friendly to concurrent tests |  Major | . | Ted Yu | Jieshan Bean |
| [HBASE-4256](https://issues.apache.org/jira/browse/HBASE-4256) | Intra-row scanning (part deux) |  Critical | . | Jean-Daniel Cryans | Dave Revell |
| [HBASE-4712](https://issues.apache.org/jira/browse/HBASE-4712) | Document rules for writing tests |  Minor | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-4968](https://issues.apache.org/jira/browse/HBASE-4968) | Add to troubleshooting workaround for direct buffer oome's. |  Major | . | stack | stack |
| [HBASE-5011](https://issues.apache.org/jira/browse/HBASE-5011) | Move test-util.sh from src/test/bin to dev-tools |  Major | . | stack |  |
| [HBASE-5111](https://issues.apache.org/jira/browse/HBASE-5111) | Upgrade zookeeper to 3.4.2 release |  Major | . | Ted Yu |  |
| [HBASE-5173](https://issues.apache.org/jira/browse/HBASE-5173) | Commit hbase-4480 findHangingTest.sh script under dev-support |  Major | . | stack |  |
| [HBASE-5264](https://issues.apache.org/jira/browse/HBASE-5264) | Add 0.92.0 upgrade guide |  Major | . | stack |  |
| [HBASE-5400](https://issues.apache.org/jira/browse/HBASE-5400) | Some tests does not have annotations for (Small\|Medium\|Large)Tests |  Major | security, test | Enis Soztutar | Enis Soztutar |
| [HBASE-5427](https://issues.apache.org/jira/browse/HBASE-5427) | Upgrade our zk to 3.4.3 |  Major | . | stack | stack |
| [HBASE-5294](https://issues.apache.org/jira/browse/HBASE-5294) | Make sure javadoc is included in tarball bundle when we release |  Critical | . | stack | Shaneal Manek |
| [HBASE-5511](https://issues.apache.org/jira/browse/HBASE-5511) | More doc on maven release process |  Major | . | stack | stack |
| [HBASE-5084](https://issues.apache.org/jira/browse/HBASE-5084) | Allow different HTable instances to share one ExecutorService |  Major | . | Ted Yu | Lars Hofhansl |
| [HBASE-5721](https://issues.apache.org/jira/browse/HBASE-5721) | Update bundled hadoop to be 1.0.2 (it was just released) |  Major | . | stack | stack |
| [HBASE-5715](https://issues.apache.org/jira/browse/HBASE-5715) | Revert 'Instant schema alter' for now, HBASE-4213 |  Major | . | stack | stack |
| [HBASE-5758](https://issues.apache.org/jira/browse/HBASE-5758) | Forward port "HBASE-4109 Hostname returned via reverse dns lookup contains trailing period if configured interface is not 'default'" |  Major | . | stack | stack |
| [HBASE-5256](https://issues.apache.org/jira/browse/HBASE-5256) | Use WritableUtils.readVInt() in RegionLoad.readFields() |  Major | . | Ted Yu | Mubarak Seyed |
| [HBASE-5836](https://issues.apache.org/jira/browse/HBASE-5836) | Backport per region metrics from HBASE-3614 to 0.94.1 |  Major | . | stack | Elliott Clark |


