
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

## Release 0.95.1 - 2013-06-11

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8352](https://issues.apache.org/jira/browse/HBASE-8352) | Rename '.snapshot' directory |  Blocker | . | Ted Yu | Ted Yu |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-5525](https://issues.apache.org/jira/browse/HBASE-5525) | Truncate and preserve region boundaries option |  Major | . | Jean-Daniel Cryans | Kevin Odell |
| [HBASE-7415](https://issues.apache.org/jira/browse/HBASE-7415) | [snapshots] Add task information to snapshot operation |  Major | Client, master, regionserver, snapshots, Zookeeper | Jesse Yates | Jesse Yates |
| [HBASE-7842](https://issues.apache.org/jira/browse/HBASE-7842) | Add compaction policy that explores more storefile groups |  Major | Compaction | Elliott Clark | Elliott Clark |
| [HBASE-1936](https://issues.apache.org/jira/browse/HBASE-1936) | ClassLoader that loads from hdfs; useful adding filters to classpath without having to restart services |  Major | . | stack | Jimmy Xiang |
| [HBASE-7828](https://issues.apache.org/jira/browse/HBASE-7828) | Expose HBase Scan object's "batch" property for intra-row batching in Thrift API |  Minor | Thrift | Shivendra Pratap Singh | Shivendra Pratap Singh |
| [HBASE-8372](https://issues.apache.org/jira/browse/HBASE-8372) | Provide mutability to CompoundConfiguration |  Major | . | Ted Yu | Jonathan Hsieh |
| [HBASE-8415](https://issues.apache.org/jira/browse/HBASE-8415) | DisabledRegionSplitPolicy |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-7244](https://issues.apache.org/jira/browse/HBASE-7244) | Provide a command or argument to startup, that formats znodes if provided |  Critical | Zookeeper | Harsh J | rajeshbabu |
| [HBASE-7006](https://issues.apache.org/jira/browse/HBASE-7006) | [MTTR] Improve Region Server Recovery Time - Distributed Log Replay |  Critical | MTTR | stack | Jeffrey Zhong |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-4316](https://issues.apache.org/jira/browse/HBASE-4316) | book.xml - overhauled MapReduce section to provide more examples |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-4732](https://issues.apache.org/jira/browse/HBASE-4732) | [book] book.xml, added link to MapReduce tutorial |  Trivial | . | Doug Meil | Doug Meil |
| [HBASE-4906](https://issues.apache.org/jira/browse/HBASE-4906) | [book] book.xml added MapReduce to RDBMS example |  Minor | . | Doug Meil | Doug Meil |
| [HBASE-7745](https://issues.apache.org/jira/browse/HBASE-7745) | Import uses System.out.println instead of logging |  Trivial | mapreduce | Nick Dimiduk | Gustavo Anatoly |
| [HBASE-7923](https://issues.apache.org/jira/browse/HBASE-7923) | force unassign can confirm region online on any RS to get rid of double assignments. |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-7568](https://issues.apache.org/jira/browse/HBASE-7568) | [replication] Create an interface for replication queues |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-7649](https://issues.apache.org/jira/browse/HBASE-7649) | client retry timeout doesn't need to do x2 fallback when going to different server |  Major | Client, MTTR | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8240](https://issues.apache.org/jira/browse/HBASE-8240) | CompoundConfiguration should implement Iterable |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8301](https://issues.apache.org/jira/browse/HBASE-8301) | Document for hbase.rpc.timeout |  Minor | documentation | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-7247](https://issues.apache.org/jira/browse/HBASE-7247) | Assignment performances decreased by 50% because of regionserver.OpenRegionHandler#tickleOpening |  Major | master, Region Assignment, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8205](https://issues.apache.org/jira/browse/HBASE-8205) | HBCK support for table locks |  Major | hbck, master, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8339](https://issues.apache.org/jira/browse/HBASE-8339) | Make sure the StochasticLoadBalancer doesn't run a cost function when not needed |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-7410](https://issues.apache.org/jira/browse/HBASE-7410) | [snapshots] add snapshot/clone/restore/export docs to ref guide |  Blocker | documentation, snapshots | Jonathan Hsieh | Matteo Bertozzi |
| [HBASE-6870](https://issues.apache.org/jira/browse/HBASE-6870) | HTable#coprocessorExec always scan the whole table |  Critical | Coprocessors | chunhui shen | chunhui shen |
| [HBASE-8284](https://issues.apache.org/jira/browse/HBASE-8284) | Allow String Offset(s) in ColumnPaginationFilter for bookmark based pagination |  Minor | Filters | Varun Sharma | Varun Sharma |
| [HBASE-5577](https://issues.apache.org/jira/browse/HBASE-5577) | improve 'patch submission' section in HBase book |  Major | documentation | Sujee Maniyam | Sujee Maniyam |
| [HBASE-7434](https://issues.apache.org/jira/browse/HBASE-7434) | Use generics appropriately in RPCEngine and reduce casts, with fixing a related bug of breaking thread-safety in HConnectionManager |  Minor | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-8383](https://issues.apache.org/jira/browse/HBASE-8383) | Support lib/\*jar inside coprocessor jar |  Minor | Coprocessors | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8345](https://issues.apache.org/jira/browse/HBASE-8345) | Add all available resources in o.a.h.h.rest.RootResource and VersionResource to o.a.h.h.rest.client.RemoteAdmin |  Minor | Client, REST | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-2231](https://issues.apache.org/jira/browse/HBASE-2231) | Compaction events should be written to HLog |  Blocker | regionserver | Todd Lipcon | stack |
| [HBASE-8470](https://issues.apache.org/jira/browse/HBASE-8470) | Data file used by TestReference should be excluded from Apache Rat check |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8485](https://issues.apache.org/jira/browse/HBASE-8485) | Retry to open a HLog on more exceptions |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8272](https://issues.apache.org/jira/browse/HBASE-8272) | make compaction checker frequency configurable per table/cf |  Minor | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8405](https://issues.apache.org/jira/browse/HBASE-8405) | Add more custom options to how ClusterManager runs commands |  Minor | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-1762](https://issues.apache.org/jira/browse/HBASE-1762) | Remove concept of ZooKeeper from HConnection interface |  Major | Client | Ken Weiner | stack |
| [HBASE-8367](https://issues.apache.org/jira/browse/HBASE-8367) | LoadIncrementalHFiles does not return an error code nor throw Exception when failures occur due to timeouts |  Minor | mapreduce | Brian Dougan | Brian Dougan |
| [HBASE-5930](https://issues.apache.org/jira/browse/HBASE-5930) | Limits the amount of time an edit can live in the memstore. |  Major | . | Lars Hofhansl | Devaraj Das |
| [HBASE-8461](https://issues.apache.org/jira/browse/HBASE-8461) | Provide the ability to delete multiple snapshots through single command |  Major | . | Ted Yu | Ted Yu |
| [HBASE-7567](https://issues.apache.org/jira/browse/HBASE-7567) | [replication] Create an interface for replication peers |  Major | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-8471](https://issues.apache.org/jira/browse/HBASE-8471) | Server-side, remove convertion from pb type to client type before we call method |  Critical | IPC/RPC, regionserver | stack | Anoop Sam John |
| [HBASE-8235](https://issues.apache.org/jira/browse/HBASE-8235) | Adding inmemory CF attribute to LoadTest and PerformanceEvaluation tool |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8573](https://issues.apache.org/jira/browse/HBASE-8573) | Store last flushed sequence id for each store of region for Distributed Log Replay |  Major | MTTR | Ted Yu | Jeffrey Zhong |
| [HBASE-8420](https://issues.apache.org/jira/browse/HBASE-8420) | Port  HBASE-6874  Implement prefetching for scanners from 0.89-fb |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8613](https://issues.apache.org/jira/browse/HBASE-8613) | Improve logging when BindException is received at startup time. |  Minor | . | Jean-Marc Spaggiari | Jean-Marc Spaggiari |
| [HBASE-8618](https://issues.apache.org/jira/browse/HBASE-8618) | Master is providing dead RegionServer ServerName's to the balancer |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-8704](https://issues.apache.org/jira/browse/HBASE-8704) | Log the table name in ServerCallable.prepare. |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8608](https://issues.apache.org/jira/browse/HBASE-8608) | Do an edit of logs.. we log too much. |  Major | . | stack | stack |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-276](https://issues.apache.org/jira/browse/HBASE-276) | mapreduce input and output formats to go against hbase |  Major | . | stack |  |
| [HBASE-1644](https://issues.apache.org/jira/browse/HBASE-1644) | Result.row is cached in getRow; this breaks MapReduce |  Major | . | Doğacan Güney |  |
| [HBASE-3578](https://issues.apache.org/jira/browse/HBASE-3578) | TableInputFormat does not setup the configuration for HBase mapreduce jobs correctly |  Major | mapreduce | Dan Harvey | Dan Harvey |
| [HBASE-4885](https://issues.apache.org/jira/browse/HBASE-4885) | Building against Hadoop 0.23 uses out-of-date MapReduce artifacts |  Major | build | Tom White | Tom White |
| [HBASE-4398](https://issues.apache.org/jira/browse/HBASE-4398) | If HRegionPartitioner is used in MapReduce, client side configurations are overwritten by hbase-site.xml. |  Major | mapreduce | Takuya Ueshin | Takuya Ueshin |
| [HBASE-5966](https://issues.apache.org/jira/browse/HBASE-5966) | MapReduce based tests broken on Hadoop 2.0.0-alpha |  Major | mapreduce, test | Andrew Purtell | Jimmy Xiang |
| [HBASE-7851](https://issues.apache.org/jira/browse/HBASE-7851) | Include the guava classes as a dependency for jobs using mapreduce.TableMapReduceUtil |  Major | . | Devaraj Das | Devaraj Das |
| [HBASE-8192](https://issues.apache.org/jira/browse/HBASE-8192) | Logic errror causes infinite loop in HRegion.bulkLoadHFiles(List) |  Major | regionserver | Chenghao Jiang | Chenghao Jiang |
| [HBASE-7871](https://issues.apache.org/jira/browse/HBASE-7871) | HBase can be stuck when closing regions concurrently |  Critical | master | Nicolas Liochon | Ted Yu |
| [HBASE-8241](https://issues.apache.org/jira/browse/HBASE-8241) | Fix the bad dependency on netty from HDFS |  Major | build, Client, master, regionserver | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8204](https://issues.apache.org/jira/browse/HBASE-8204) | Don't use hdfs append during lease recovery |  Major | MTTR, wal | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7401](https://issues.apache.org/jira/browse/HBASE-7401) | Remove warning message about running 'hbase migrate' |  Major | Usability | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8263](https://issues.apache.org/jira/browse/HBASE-8263) | Master LogSplitting metrics update wrong counters |  Minor | metrics | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8229](https://issues.apache.org/jira/browse/HBASE-8229) | Replication code logs like crazy if a target table cannot be found. |  Major | Replication | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8230](https://issues.apache.org/jira/browse/HBASE-8230) | Possible NPE on regionserver abort if replication service has not been started |  Major | regionserver, Replication | Jieshan Bean | Jieshan Bean |
| [HBASE-8188](https://issues.apache.org/jira/browse/HBASE-8188) | Avoid unnecessary row compare in StoreScanner |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7817](https://issues.apache.org/jira/browse/HBASE-7817) | Suggested JDWP debug options in hbase-env.sh are wrong |  Minor | . | Ian Varley | Vasu Mariyala |
| [HBASE-8231](https://issues.apache.org/jira/browse/HBASE-8231) | delete tests in table\_tests.rb(TestShell) always running on empty table. |  Major | scripts | rajeshbabu | rajeshbabu |
| [HBASE-8169](https://issues.apache.org/jira/browse/HBASE-8169) | TestMasterFailover#testMasterFailoverWithMockedRITOnDeadRS may fail due to regions randomly assigned to a RS |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8179](https://issues.apache.org/jira/browse/HBASE-8179) | JSON formatting for cluster status is sort of broken |  Major | REST, Usability | Devaraj Das | Devaraj Das |
| [HBASE-8267](https://issues.apache.org/jira/browse/HBASE-8267) | Add some resources checker for tests |  Minor | build, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8208](https://issues.apache.org/jira/browse/HBASE-8208) | In some situations data is not replicated to slaves when deferredLogSync is enabled |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8254](https://issues.apache.org/jira/browse/HBASE-8254) | Add lz4 to test compression util usage string |  Major | util | Elliott Clark | Elliott Clark |
| [HBASE-8158](https://issues.apache.org/jira/browse/HBASE-8158) | Backport HBASE-8140 "TableMapReduceUtils#addDependencyJar fails when nested inside another MR job" |  Major | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8293](https://issues.apache.org/jira/browse/HBASE-8293) | Move BigDecimalColumnInterpreter into hbase-client |  Major | Client, Coprocessors | Elliott Clark | Elliott Clark |
| [HBASE-8248](https://issues.apache.org/jira/browse/HBASE-8248) | HConnectionManager moved region tracking can cause the region server to redirect to itself; load balancer uses incorrect servername compare |  Major | Client | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8289](https://issues.apache.org/jira/browse/HBASE-8289) | TestThreads#testSleepWithoutInterrupt should not expect a bounded wait time |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8290](https://issues.apache.org/jira/browse/HBASE-8290) | TestHTableMultiplexer is flaky |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8305](https://issues.apache.org/jira/browse/HBASE-8305) | Too much logs in the some tests |  Major | build, test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8239](https://issues.apache.org/jira/browse/HBASE-8239) | ChaosMonkey action for root is irrelevant |  Trivial | test | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8252](https://issues.apache.org/jira/browse/HBASE-8252) | Regions by Region Server table in Master's table view needs styling |  Trivial | UI | Elliott Clark | Elliott Clark |
| [HBASE-8312](https://issues.apache.org/jira/browse/HBASE-8312) | TestCompactionState - still timeouting |  Major | test | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8313](https://issues.apache.org/jira/browse/HBASE-8313) | Add Bloom filter testing for HFileOutputFormat |  Minor | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8266](https://issues.apache.org/jira/browse/HBASE-8266) | Master cannot start if TableNotFoundException is thrown while partial table recovery |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-7658](https://issues.apache.org/jira/browse/HBASE-7658) | grant with an empty string as permission should throw an exception |  Trivial | security | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8119](https://issues.apache.org/jira/browse/HBASE-8119) | Optimize StochasticLoadBalancer |  Critical | Region Assignment | Enis Soztutar | Enis Soztutar |
| [HBASE-8303](https://issues.apache.org/jira/browse/HBASE-8303) | Increse the test timeout to 60s when they are less than 20s |  Major | . | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7255](https://issues.apache.org/jira/browse/HBASE-7255) | KV size metric went missing from StoreScanner. |  Critical | . | Lars Hofhansl | Elliott Clark |
| [HBASE-8300](https://issues.apache.org/jira/browse/HBASE-8300) | TestSplitTransaction fails to delete files due to open handles left when region is split |  Major | regionserver | Malie Yin |  |
| [HBASE-8334](https://issues.apache.org/jira/browse/HBASE-8334) | Enable essential column family support by default |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8096](https://issues.apache.org/jira/browse/HBASE-8096) | [replication] NPE while replicating a log that is acquiring a new block from HDFS |  Major | . | Ian Friedman | Dave Latham |
| [HBASE-8314](https://issues.apache.org/jira/browse/HBASE-8314) | HLogSplitter can retry to open a 0-length hlog file |  Major | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8285](https://issues.apache.org/jira/browse/HBASE-8285) | HBaseClient never recovers for single HTable.get() calls with no retries when regions move |  Critical | Client | Varun Sharma | Varun Sharma |
| [HBASE-8341](https://issues.apache.org/jira/browse/HBASE-8341) | RestoreSnapshotHandler.prepare() is not called by SnapshotManager  and TakeSnapshotHandler should first acquire the table lock |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8326](https://issues.apache.org/jira/browse/HBASE-8326) | mapreduce.TestTableInputFormatScan times out frequently |  Major | mapreduce, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-8321](https://issues.apache.org/jira/browse/HBASE-8321) | Log split worker should heartbeat to avoid timeout when the hlog is under recovery |  Major | wal | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8359](https://issues.apache.org/jira/browse/HBASE-8359) | Too much logs on HConnectionManager |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8360](https://issues.apache.org/jira/browse/HBASE-8360) | In HBaseClient#cancelConnections we should close fully the connection |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8374](https://issues.apache.org/jira/browse/HBASE-8374) | NullPointerException when launching the balancer due to unknown region location |  Major | Balancer | Nicolas Liochon | Ted Yu |
| [HBASE-8279](https://issues.apache.org/jira/browse/HBASE-8279) | Performance Evaluation does not consider the args passed in case of more than one client |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8377](https://issues.apache.org/jira/browse/HBASE-8377) | IntegrationTestBigLinkedList calculates wrap for linked list size incorrectly |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-8317](https://issues.apache.org/jira/browse/HBASE-8317) | Seek returns wrong result with PREFIX\_TREE Encoding |  Major | . | chunhui shen | chunhui shen |
| [HBASE-1212](https://issues.apache.org/jira/browse/HBASE-1212) | merge tool expects regions all have different sequence ids |  Major | . | stack | Jean-Marc Spaggiari |
| [HBASE-8391](https://issues.apache.org/jira/browse/HBASE-8391) | StochasticLoadBalancer doesn't call needsBalance |  Major | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8379](https://issues.apache.org/jira/browse/HBASE-8379) | bin/graceful\_stop.sh does not return the balancer to original state |  Major | scripts | Nick Dimiduk | Jean-Marc Spaggiari |
| [HBASE-8295](https://issues.apache.org/jira/browse/HBASE-8295) | TestMasterFailover.testMasterFailoverWithMockedRITOnDeadRS is flaky. |  Major | . | rajeshbabu | rajeshbabu |
| [HBASE-7838](https://issues.apache.org/jira/browse/HBASE-7838) | HBase regionserver never stops when running `hbase-daemon.sh stop regionserver` |  Major | regionserver, scripts, shell | Damien Hardy | Damien Hardy |
| [HBASE-8406](https://issues.apache.org/jira/browse/HBASE-8406) | Fix rat check and rat warning in trunk |  Major | build | stack | stack |
| [HBASE-7921](https://issues.apache.org/jira/browse/HBASE-7921) | TestHFileBlock.testGzipCompression should ignore the block checksum |  Minor | test | Andrew Purtell | Andrew Purtell |
| [HBASE-5472](https://issues.apache.org/jira/browse/HBASE-5472) | LoadIncrementalHFiles loops forever if the target table misses a CF |  Minor | mapreduce | Lars Hofhansl | Yu Li |
| [HBASE-5946](https://issues.apache.org/jira/browse/HBASE-5946) | Thrift Filter Language documentation is inconsistent |  Minor | Filters, Thrift | Alexander | Jesse Anderson |
| [HBASE-7122](https://issues.apache.org/jira/browse/HBASE-7122) | Proper warning message when opening a log file with no entries (idle cluster) |  Major | Replication | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7167](https://issues.apache.org/jira/browse/HBASE-7167) | Thrift's deleteMultiple() raises exception instead of returning list of failed deletes |  Major | Thrift | Daniel Gómez Ferro | Daniel Gómez Ferro |
| [HBASE-8380](https://issues.apache.org/jira/browse/HBASE-8380) | NPE in HBaseClient$Connection.readResponse |  Major | Client | Nicolas Liochon | Nicolas Liochon |
| [HBASE-8327](https://issues.apache.org/jira/browse/HBASE-8327) | Consolidate class loaders |  Minor | . | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8396](https://issues.apache.org/jira/browse/HBASE-8396) | balancerSwitch making two zookeeper calls everytime. |  Major | Balancer | rajeshbabu | rajeshbabu |
| [HBASE-7192](https://issues.apache.org/jira/browse/HBASE-7192) | Move TestHBase7051.java into TestAtomicOperation.java |  Minor | test | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-8427](https://issues.apache.org/jira/browse/HBASE-8427) | Apache Rat is incorrectly excluding test source files |  Blocker | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8431](https://issues.apache.org/jira/browse/HBASE-8431) | Fix missing headers |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-8421](https://issues.apache.org/jira/browse/HBASE-8421) | hbase-0.95.0 tgz does not include lib/junit\*.jar |  Major | build | Jonathan Hsieh | stack |
| [HBASE-8299](https://issues.apache.org/jira/browse/HBASE-8299) | ExploringCompactionPolicy can get stuck in rare cases. |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-8428](https://issues.apache.org/jira/browse/HBASE-8428) | Tighten up IntegrationTestsDriver filter |  Major | . | stack | stack |
| [HBASE-8393](https://issues.apache.org/jira/browse/HBASE-8393) | Testcase TestHeapSize#testMutations is wrong |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8451](https://issues.apache.org/jira/browse/HBASE-8451) | MetricsMBeanBase has concurrency issues in init |  Critical | metrics | Liang Xie | Liang Xie |
| [HBASE-8426](https://issues.apache.org/jira/browse/HBASE-8426) | Opening a region failed on "Metrics source RegionServer,sub=Regions already exists!" |  Critical | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-8407](https://issues.apache.org/jira/browse/HBASE-8407) | Remove Async HBase from 0.95 and trunk. |  Major | Performance | Elliott Clark | Elliott Clark |
| [HBASE-8425](https://issues.apache.org/jira/browse/HBASE-8425) | Per-region memstore size is missing in the new RS web UI |  Major | . | Jean-Daniel Cryans | Elliott Clark |
| [HBASE-8456](https://issues.apache.org/jira/browse/HBASE-8456) | HBase Windows scripts fail when there's a blank space in JAVA\_HOME |  Minor | scripts | Mostafa Elhemali |  |
| [HBASE-8468](https://issues.apache.org/jira/browse/HBASE-8468) | IntegrationTestImportTsv fails on a cluster |  Major | test | Elliott Clark | Elliott Clark |
| [HBASE-8472](https://issues.apache.org/jira/browse/HBASE-8472) | mvn -Dhadoop.profile=2.0 -Dhadoop-two.version=2.0.5-SNAPSHOT fails because of Undef Class error wrt o.a.h.IdGenerator |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8474](https://issues.apache.org/jira/browse/HBASE-8474) | there are dups in hadoop2 pom |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8460](https://issues.apache.org/jira/browse/HBASE-8460) | [replication] Fix the three TODOs in TestReplicationStateBasic.testReplicationQueues |  Minor | Replication | Chris Trezzo | Chris Trezzo |
| [HBASE-8482](https://issues.apache.org/jira/browse/HBASE-8482) | TestHBaseFsck#testCheckTableLocks broke; java.lang.AssertionError: expected:\<[]\> but was:\<[EXPIRED\_TABLE\_LOCK]\> |  Critical | . | stack | stack |
| [HBASE-8214](https://issues.apache.org/jira/browse/HBASE-8214) | Remove proxy and engine, rely directly on pb generated Service |  Major | IPC/RPC | stack | stack |
| [HBASE-8430](https://issues.apache.org/jira/browse/HBASE-8430) | Cell decoder/scanner/etc. should not hide exceptions |  Critical | IPC/RPC, Protobufs | Sergey Shelukhin | stack |
| [HBASE-8404](https://issues.apache.org/jira/browse/HBASE-8404) | Extra commas in LruBlockCache.logStats |  Major | . | Jean-Daniel Cryans | stack |
| [HBASE-8346](https://issues.apache.org/jira/browse/HBASE-8346) | Prefetching .META. rows in case only when useCache is set to true |  Minor | Client | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8422](https://issues.apache.org/jira/browse/HBASE-8422) | Master won't go down.  Stuck waiting on .META. to come on line. |  Major | . | stack | rajeshbabu |
| [HBASE-5835](https://issues.apache.org/jira/browse/HBASE-5835) | [hbck] Catch and handle NotServingRegionException when close region attempt fails |  Major | hbck | Jonathan Hsieh | Liang Xie |
| [HBASE-8483](https://issues.apache.org/jira/browse/HBASE-8483) | HConnectionManager can leak ZooKeeper connections when using deleteStaleConnection |  Critical | Client | Eric Yu |  |
| [HBASE-8506](https://issues.apache.org/jira/browse/HBASE-8506) | Remove unused/dead classes |  Major | . | stack | stack |
| [HBASE-8514](https://issues.apache.org/jira/browse/HBASE-8514) | There's an orig file in 0.95 |  Trivial | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8510](https://issues.apache.org/jira/browse/HBASE-8510) | HBASE-8469 added a hdfs-site.xml file for tests but it gets included in the test jar |  Blocker | . | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8437](https://issues.apache.org/jira/browse/HBASE-8437) | Clean up tmp coprocessor jars |  Minor | Coprocessors | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8509](https://issues.apache.org/jira/browse/HBASE-8509) | ZKUtil#createWithParents won't set data during znode creation when parent folder doesn't exit |  Major | Zookeeper | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8133](https://issues.apache.org/jira/browse/HBASE-8133) | avoid assign for disabling table regions(OPENING/PENDING\_OPEN) in SSH |  Major | Region Assignment | rajeshbabu | rajeshbabu |
| [HBASE-8530](https://issues.apache.org/jira/browse/HBASE-8530) | Refine error message from ExportSnapshot when there is leftover snapshot in target cluster |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-8536](https://issues.apache.org/jira/browse/HBASE-8536) | Possible NullPointerException in ZKInterProcessLockBase#reapExpiredLocks |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8537](https://issues.apache.org/jira/browse/HBASE-8537) | Dead region server pulled in from ZK |  Minor | master | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8547](https://issues.apache.org/jira/browse/HBASE-8547) | Fix java.lang.RuntimeException: Cached an already cached block |  Major | io, regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8519](https://issues.apache.org/jira/browse/HBASE-8519) | Backup master will never come up if primary master dies during initialization |  Minor | master | Jerry He | Jerry He |
| [HBASE-8540](https://issues.apache.org/jira/browse/HBASE-8540) | SnapshotFileCache logs too many times if snapshot dir doesn't exists |  Trivial | snapshots | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8355](https://issues.apache.org/jira/browse/HBASE-8355) | BaseRegionObserver#pre(Compact\|Flush\|Store)ScannerOpen returns null |  Major | Coprocessors | Andrew Purtell | Jesse Yates |
| [HBASE-8507](https://issues.apache.org/jira/browse/HBASE-8507) | HLog tool documentation should be updated to use FSHLog for trunk and 0.95. |  Minor | . | ramkrishna.s.vasudevan | stack |
| [HBASE-8466](https://issues.apache.org/jira/browse/HBASE-8466) | Netty messages in the logs |  Minor | master | Nicolas Liochon | Nicolas Liochon |
| [HBASE-7380](https://issues.apache.org/jira/browse/HBASE-7380) | [replication] When transferring queues, check if the peer still exists before copying the znodes |  Major | Replication, Usability | Jean-Daniel Cryans | Jean-Daniel Cryans |
| [HBASE-8560](https://issues.apache.org/jira/browse/HBASE-8560) | TestMasterShutdown failing in trunk 0.95/trunk -- "Unable to get data of znode /hbase/meta-region-server because node does not exist (not an error)" |  Major | . | stack | Jeffrey Zhong |
| [HBASE-7726](https://issues.apache.org/jira/browse/HBASE-7726) | Family Dir is not removed using modifyTable() |  Major | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8568](https://issues.apache.org/jira/browse/HBASE-8568) | Test case TestDistributedLogSplitting#testWorkerAbort failed intermittently |  Minor | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8567](https://issues.apache.org/jira/browse/HBASE-8567) | TestDistributedLogSplitting#testLogReplayForDisablingTable fails on hadoop 2.0 |  Major | MTTR | Ted Yu | Jeffrey Zhong |
| [HBASE-8577](https://issues.apache.org/jira/browse/HBASE-8577) | TestZooKeeper#testLogSplittingAfterMasterRecoveryDueToZKExpiry failed intermittently |  Major | . | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8539](https://issues.apache.org/jira/browse/HBASE-8539) | Double(or tripple ...) ZooKeeper listeners of the same type when Master recovers from ZK SessionExpiredException |  Major | master | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8582](https://issues.apache.org/jira/browse/HBASE-8582) | Possible NullPointerException in ZKInterProcessLockBase#visitLocks |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8282](https://issues.apache.org/jira/browse/HBASE-8282) | User triggered flushes does not allow compaction to get triggered even if compaction criteria is met |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-8545](https://issues.apache.org/jira/browse/HBASE-8545) | Meta stuck in transition when it is assigned to a just restarted dead region sever |  Major | Region Assignment | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8581](https://issues.apache.org/jira/browse/HBASE-8581) | rpc refactor dropped passing the operation timeout through to the rpcclient |  Major | . | stack | stack |
| [HBASE-8588](https://issues.apache.org/jira/browse/HBASE-8588) | [Documentation]: Add information about adding REST and Thrift API kerberos principals to HBase ACL table |  Minor | documentation, REST, security, Thrift | Aleksandr Shulman | Aleksandr Shulman |
| [HBASE-8505](https://issues.apache.org/jira/browse/HBASE-8505) | References to split daughters should not be deleted separately from parent META entry |  Major | regionserver | Enis Soztutar | Enis Soztutar |
| [HBASE-8525](https://issues.apache.org/jira/browse/HBASE-8525) | Use sleep multilier when choosing sinks in ReplicationSource |  Trivial | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8336](https://issues.apache.org/jira/browse/HBASE-8336) | PooledHTable may be returned multiple times to the same pool |  Minor | Client | Nikolai Grigoriev | samar |
| [HBASE-8596](https://issues.apache.org/jira/browse/HBASE-8596) | [docs] Add docs about Region server "draining" mode |  Major | documentation, regionserver | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8531](https://issues.apache.org/jira/browse/HBASE-8531) | TestZooKeeper fails in trunk/0.95 builds |  Major | Zookeeper | stack | stack |
| [HBASE-8555](https://issues.apache.org/jira/browse/HBASE-8555) | FilterList correctness may be affected by random ordering of sub-filter(list) |  Critical | Filters | Liang Xie | Liang Xie |
| [HBASE-8564](https://issues.apache.org/jira/browse/HBASE-8564) | TestMetricsRegionServer depends on test order |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-8602](https://issues.apache.org/jira/browse/HBASE-8602) | Ugly stack trace just because regionserver comes up before master.... |  Major | . | stack | stack |
| [HBASE-8522](https://issues.apache.org/jira/browse/HBASE-8522) | Archived hfiles and old hlogs may be deleted immediately by HFileCleaner, LogCleaner in HMaster |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-8600](https://issues.apache.org/jira/browse/HBASE-8600) | Bunch of log lines from QosFunction: Marking normal priority after |  Major | . | Enis Soztutar | stack |
| [HBASE-8606](https://issues.apache.org/jira/browse/HBASE-8606) | Meta scanner is not closed |  Trivial | Scanners | Jimmy Xiang | Jimmy Xiang |
| [HBASE-8570](https://issues.apache.org/jira/browse/HBASE-8570) | CompactSplitThread logs a CompactSplitThread$CompactionRunner but it does not have a toString |  Trivial | regionserver | Nicolas Liochon | samar |
| [HBASE-8449](https://issues.apache.org/jira/browse/HBASE-8449) | Refactor recoverLease retries and pauses informed by findings over in hbase-8389 |  Critical | Filesystem Integration | stack | stack |
| [HBASE-8597](https://issues.apache.org/jira/browse/HBASE-8597) | compaction record (probably) can block WAL cleanup forever if region is closed without edits |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8366](https://issues.apache.org/jira/browse/HBASE-8366) | HBaseServer logs the full query. |  Critical | regionserver | Nicolas Liochon | stack |
| [HBASE-8517](https://issues.apache.org/jira/browse/HBASE-8517) | Stochastic Loadbalancer isn't finding steady state on real clusters |  Blocker | . | Elliott Clark | Elliott Clark |
| [HBASE-8621](https://issues.apache.org/jira/browse/HBASE-8621) | More log edits; we log too much |  Major | . | stack | stack |
| [HBASE-8622](https://issues.apache.org/jira/browse/HBASE-8622) | Remove ' You are currently running the HMaster without HDFS append support enabled. This may result in data loss. Please see the HBase wiki for details. ' from UI |  Major | . | stack | stack |
| [HBASE-8325](https://issues.apache.org/jira/browse/HBASE-8325) | ReplicationSource read a empty HLog throws EOFException |  Critical | Replication | zavakid |  |
| [HBASE-8631](https://issues.apache.org/jira/browse/HBASE-8631) | Meta Region First Recovery |  Major | MTTR | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8658](https://issues.apache.org/jira/browse/HBASE-8658) | hbase clean is deaf to the --config DIR option |  Major | . | stack | stack |
| [HBASE-8653](https://issues.apache.org/jira/browse/HBASE-8653) | master seems to be deleting region tmp directory from under compaction |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-8686](https://issues.apache.org/jira/browse/HBASE-8686) | Extra left brace in bin/hbase |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8684](https://issues.apache.org/jira/browse/HBASE-8684) | Table Coprocessor can't access external HTable by default |  Major | . | Jesse Yates | Jesse Yates |
| [HBASE-8402](https://issues.apache.org/jira/browse/HBASE-8402) | ScanMetrics depends on number of rpc calls to the server. |  Minor | Client, metrics | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-8637](https://issues.apache.org/jira/browse/HBASE-8637) | IntegrationTestBigLinkedListWithChaosMonkey uses the wrong table name |  Major | test | Elliott Clark | Jeffrey Zhong |
| [HBASE-8664](https://issues.apache.org/jira/browse/HBASE-8664) | Small fix ups for memory size outputs in UI |  Major | UI | stack | stack |
| [HBASE-8689](https://issues.apache.org/jira/browse/HBASE-8689) | Cover all mutations rather than only Put while reporting for mutations not writing to WAL |  Major | metrics, regionserver | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-4177](https://issues.apache.org/jira/browse/HBASE-4177) | Handling read failures during recovery‏ - when HMaster calls Namenode recovery, recovery may be a failure leading to read failure while splitting logs |  Critical | master | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-8071](https://issues.apache.org/jira/browse/HBASE-8071) | TestRestoreFlushSnapshotFromClient fails intermittently in trunk builds |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8308](https://issues.apache.org/jira/browse/HBASE-8308) | Lower the number of expected regions in TestTableLockManager#testTableReadLock |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8333](https://issues.apache.org/jira/browse/HBASE-8333) | TestTableLockManager#testDelete may occasionally fail due to lack of synchronization between test and handler thread |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8520](https://issues.apache.org/jira/browse/HBASE-8520) | TestIOFencing fails intermittently due to compaction kicking in too soon |  Major | . | Ted Yu | Ted Yu |
| [HBASE-8535](https://issues.apache.org/jira/browse/HBASE-8535) | Test for zk leak does not account for unsynchronized access to zk watcher |  Major | Client | Eric Yu | stack |
| [HBASE-8575](https://issues.apache.org/jira/browse/HBASE-8575) | TestDistributedLogSplitting#testMarkRegionsRecoveringInZK fails intermittently due to lack of online region |  Major | . | Ted Yu | Jeffrey Zhong |
| [HBASE-8668](https://issues.apache.org/jira/browse/HBASE-8668) | TestHLogSplit.generateHLog() does not use local variables for entries |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-2009](https://issues.apache.org/jira/browse/HBASE-2009) | [EC2] support mapreduce subsystem |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-2299](https://issues.apache.org/jira/browse/HBASE-2299) | [EC2] mapreduce fixups for PE |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-7995](https://issues.apache.org/jira/browse/HBASE-7995) | Export$Exporter could be replaced with IdentityTableMapper |  Minor | mapreduce | Nick Dimiduk | Nick Dimiduk |
| [HBASE-7615](https://issues.apache.org/jira/browse/HBASE-7615) | Add metrics for snapshots |  Major | . | Ted Yu | Matteo Bertozzi |
| [HBASE-6330](https://issues.apache.org/jira/browse/HBASE-6330) | TestImportExport has been failing against hadoop 0.23/2.0 profile |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8316](https://issues.apache.org/jira/browse/HBASE-8316) | JoinedHeap for non essential column families should reseek instead of seek |  Major | Filters, Performance, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-7605](https://issues.apache.org/jira/browse/HBASE-7605) | TestMiniClusterLoadSequential fails in trunk build on hadoop 2 |  Critical | hadoop2, test | Ted Yu | Jonathan Hsieh |
| [HBASE-7606](https://issues.apache.org/jira/browse/HBASE-7606) | TestJoinedScanners fails in trunk build on hadoop 2.0 |  Major | hadoop2, test | Ted Yu | Jonathan Hsieh |
| [HBASE-8324](https://issues.apache.org/jira/browse/HBASE-8324) | TestHFileOutputFormat.testMRIncremental\* fails against hadoop2 profile |  Major | hadoop2, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7636](https://issues.apache.org/jira/browse/HBASE-7636) | TestDistributedLogSplitting#testThreeRSAbort fails against hadoop 2.0 |  Major | hadoop2, test | Ted Yu | Jonathan Hsieh |
| [HBASE-7801](https://issues.apache.org/jira/browse/HBASE-7801) | Allow a deferred sync option per Mutation. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-8342](https://issues.apache.org/jira/browse/HBASE-8342) | TestTableInputFormatScan#testScanFromConfiguration fails on hadoop2 profile |  Major | hadoop2, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8349](https://issues.apache.org/jira/browse/HBASE-8349) | TestLogRolling#TestLogRollOnDatanodeDeath hangs under hadoop2 profile |  Major | hadoop2 | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-7239](https://issues.apache.org/jira/browse/HBASE-7239) | Verify protobuf serialization is correctly chunking upon read to avoid direct memory OOMs |  Critical | . | Lars Hofhansl | Devaraj Das |
| [HBASE-8347](https://issues.apache.org/jira/browse/HBASE-8347) | TestSecureLoadInc\* tests hang repeatedly getting UnsupportedOperationException  in hadoop2 profile |  Major | hadoop2, regionserver, security | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8424](https://issues.apache.org/jira/browse/HBASE-8424) | IntegrationTestImportTsv missing Apache License |  Blocker | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8429](https://issues.apache.org/jira/browse/HBASE-8429) | TestMetricsWALSourceImpl from hbase-hadoop2-compat module missing Apache license. |  Major | build | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8392](https://issues.apache.org/jira/browse/HBASE-8392) | TestMetricMBeanBase#testGetAttribute is flakey under hadoop2 profile |  Major | hadoop2, metrics, test | Jonathan Hsieh | Elliott Clark |
| [HBASE-8024](https://issues.apache.org/jira/browse/HBASE-8024) | Make Store flush algorithm pluggable |  Major | regionserver | Maryann Xue | Sergey Shelukhin |
| [HBASE-7413](https://issues.apache.org/jira/browse/HBASE-7413) | Convert WAL to pb |  Critical | wal | stack | Sergey Shelukhin |
| [HBASE-8477](https://issues.apache.org/jira/browse/HBASE-8477) | [hadoop2] TestTableInputFormatScan\* fails intermittently with PrivilegedActionException |  Major | hadoop2, mapreduce, security | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-8469](https://issues.apache.org/jira/browse/HBASE-8469) | [hadoop2] Several tests break because of HDFS-4305 |  Major | test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5746](https://issues.apache.org/jira/browse/HBASE-5746) | HFileDataBlockEncoderImpl uses wrong header size when reading HFiles with no checksums (0.96) |  Critical | io, regionserver | Lars Hofhansl | Sergey Shelukhin |
| [HBASE-8478](https://issues.apache.org/jira/browse/HBASE-8478) | HBASE-2231 breaks TestHRegion#testRecoveredEditsReplayCompaction under hadoop2 profile |  Major | Compaction, hadoop2, Protobufs | Jonathan Hsieh | Enis Soztutar |
| [HBASE-7932](https://issues.apache.org/jira/browse/HBASE-7932) | Do the necessary plumbing for the region locations in META table and send the info to the RegionServers |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-8528](https://issues.apache.org/jira/browse/HBASE-8528) | [hadoop2] TestMultiTableInputFormat always fails on hadoop with YARN-129 applied |  Major | hadoop2, mapreduce, test | Jonathan Hsieh | Jonathan Hsieh |
| [HBASE-5995](https://issues.apache.org/jira/browse/HBASE-5995) | Fix and reenable TestLogRolling.testLogRollOnPipelineRestart |  Blocker | test | stack | Enis Soztutar |
| [HBASE-7942](https://issues.apache.org/jira/browse/HBASE-7942) | Make use of the plumbing in HBASE-7932 to provide location hints when region files are created |  Critical | . | Devaraj Das | Devaraj Das |
| [HBASE-8497](https://issues.apache.org/jira/browse/HBASE-8497) | Protobuf WAL also needs a trailer |  Major | Protobufs, wal | Enis Soztutar | Himanshu Vashishtha |
| [HBASE-8583](https://issues.apache.org/jira/browse/HBASE-8583) | Create a new IntegrationTestBigLinkedListWithChaosMonkey |  Major | test | Jeffrey Zhong | Jeffrey Zhong |
| [HBASE-8643](https://issues.apache.org/jira/browse/HBASE-8643) | Do not log full classnames in logs, just the last two levels |  Major | . | stack | stack |
| [HBASE-8657](https://issues.apache.org/jira/browse/HBASE-8657) | Miscellaneous log fixups for hbase-it; tidier logging, fix a few NPEs |  Major | . | stack | stack |
| [HBASE-5050](https://issues.apache.org/jira/browse/HBASE-5050) | [rest] SPNEGO-based authentication |  Major | REST, security | Andrew Purtell | Jimmy Xiang |
| [HBASE-8645](https://issues.apache.org/jira/browse/HBASE-8645) | Change ServerName so it uses hostname  only, not FQDN hostnames |  Major | . | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-7936](https://issues.apache.org/jira/browse/HBASE-7936) | Undo prefix-tree module as dependency for mapreduce and for DataBlockEncoding |  Major | . | stack | Ted Yu |
| [HBASE-8045](https://issues.apache.org/jira/browse/HBASE-8045) | Fix .META. migration after HBASE-3171 |  Blocker | . | Jean-Daniel Cryans | rajeshbabu |
| [HBASE-8296](https://issues.apache.org/jira/browse/HBASE-8296) | Add svn ignores to hbase-assembly |  Minor | build | Elliott Clark | Elliott Clark |
| [HBASE-8319](https://issues.apache.org/jira/browse/HBASE-8319) | hbase-it tests are run when you ask to run all tests -- it should be that you have to ask explicitly to run them |  Critical | . | stack | Nicolas Liochon |
| [HBASE-7704](https://issues.apache.org/jira/browse/HBASE-7704) | migration tool that checks presence of HFile V1 files |  Blocker | . | Ted Yu | Himanshu Vashishtha |
| [HBASE-8395](https://issues.apache.org/jira/browse/HBASE-8395) | Remove TestFromClientSide.testPoolBehavior |  Trivial | test | Himanshu Vashishtha | Himanshu Vashishtha |
| [HBASE-7897](https://issues.apache.org/jira/browse/HBASE-7897) | Add support for tags to Cell Interface |  Critical | . | stack | ramkrishna.s.vasudevan |
| [HBASE-8574](https://issues.apache.org/jira/browse/HBASE-8574) | Add how to rename a table in the docbook |  Major | documentation | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-8450](https://issues.apache.org/jira/browse/HBASE-8450) | Update hbase-default.xml and general recommendations to better suit current hw, h2, experience, etc. |  Critical | Usability | stack | stack |


