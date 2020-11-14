
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

## Release 1.3.3 - 2018-12-21



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15134](https://issues.apache.org/jira/browse/HBASE-15134) | Add visibility into Flush and Compaction queues |  Major | Compaction, metrics, regionserver | Elliott Neil Clark | Abhishek Singh Chouhan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15529](https://issues.apache.org/jira/browse/HBASE-15529) | Override needBalance in StochasticLoadBalancer |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15727](https://issues.apache.org/jira/browse/HBASE-15727) | Canary Tool for Zookeeper |  Major | . | churro morales | churro morales |
| [HBASE-16399](https://issues.apache.org/jira/browse/HBASE-16399) | Provide an API to get list of failed regions and servername in Canary |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-17205](https://issues.apache.org/jira/browse/HBASE-17205) | Add a metric for the duration of region in transition |  Minor | Region Assignment | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17437](https://issues.apache.org/jira/browse/HBASE-17437) | Support specifying a WAL directory outside of the root directory |  Major | Filesystem Integration, wal | Yishan Yang | Zach York |
| [HBASE-17731](https://issues.apache.org/jira/browse/HBASE-17731) | Fractional latency reporting in MultiThreadedAction |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-17912](https://issues.apache.org/jira/browse/HBASE-17912) | Avoid major compactions on region server startup |  Major | Compaction | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-17924](https://issues.apache.org/jira/browse/HBASE-17924) | Consider sorting the row order when processing multi() ops before taking rowlocks |  Major | . | Andrew Kyle Purtell | Allan Yang |
| [HBASE-17959](https://issues.apache.org/jira/browse/HBASE-17959) | Canary timeout should be configurable on a per-table basis |  Minor | canary | Andrew Kyle Purtell | Chinmay Kulkarni |
| [HBASE-18248](https://issues.apache.org/jira/browse/HBASE-18248) | Warn if monitored RPC task has been tied up beyond a configurable threshold |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20047](https://issues.apache.org/jira/browse/HBASE-20047) | AuthenticationTokenIdentifier should provide a toString |  Minor | Usability | Sean Busbey | maoling |
| [HBASE-15466](https://issues.apache.org/jira/browse/HBASE-15466) | precommit should not run all java goals when given a docs-only patch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-20352](https://issues.apache.org/jira/browse/HBASE-20352) | [Chore] Backport HBASE-18309 to branch-1 |  Major | . | Reid Chan | Reid Chan |
| [HBASE-20379](https://issues.apache.org/jira/browse/HBASE-20379) | shadedjars yetus plugin should add a footer link |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20545](https://issues.apache.org/jira/browse/HBASE-20545) | Improve performance of BaseLoadBalancer.retainAssignment |  Major | Balancer | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20548](https://issues.apache.org/jira/browse/HBASE-20548) | Master fails to startup on large clusters, refreshing block distribution |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20605](https://issues.apache.org/jira/browse/HBASE-20605) | Exclude new Azure Storage FileSystem from SecureBulkLoadEndpoint permission check |  Major | security | Josh Elser | Josh Elser |
| [HBASE-20733](https://issues.apache.org/jira/browse/HBASE-20733) | QABot should run checkstyle tests if the checkstyle configs change |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-20701](https://issues.apache.org/jira/browse/HBASE-20701) | too much logging when balancer runs from BaseLoadBalancer |  Trivial | Balancer | Mihir Monani | Mihir Monani |
| [HBASE-20826](https://issues.apache.org/jira/browse/HBASE-20826) | Truncate responseInfo attributes on RpcServer WARN messages |  Major | rpc | Sergey Soldatov | Josh Elser |
| [HBASE-20806](https://issues.apache.org/jira/browse/HBASE-20806) | Split style journal for flushes and compactions |  Minor | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-20858](https://issues.apache.org/jira/browse/HBASE-20858) | port HBASE-20695 to branch-1 |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | New metrics ReadRequestRate and WriteRequestRate |  Minor | metrics | Ankit Jain | Ankit Jain |
| [HBASE-20930](https://issues.apache.org/jira/browse/HBASE-20930) | MetaScanner.metaScan should use passed variable for meta table name rather than TableName.META\_TABLE\_NAME |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20651](https://issues.apache.org/jira/browse/HBASE-20651) | Master, prevents hbck or shell command to reassign the split parent region |  Minor | master | Hua Xiang | Hua Xiang |
| [HBASE-21028](https://issues.apache.org/jira/browse/HBASE-21028) | Backport HBASE-18633 to branch-1.3 |  Minor | regionserver | Daniel Wong | Daniel Wong |
| [HBASE-20469](https://issues.apache.org/jira/browse/HBASE-20469) | Directory used for sidelining old recovered edits files should be made configurable |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-20387](https://issues.apache.org/jira/browse/HBASE-20387) | flaky infrastructure should work for all branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Minor | tooling | Mike Drob | Colin Garcia |
| [HBASE-21103](https://issues.apache.org/jira/browse/HBASE-21103) | nightly test cache of yetus install needs to be more thorough in verification |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes |  Minor | Operability | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21263](https://issues.apache.org/jira/browse/HBASE-21263) | Mention compression algorithm along with other storefile details |  Minor | . | Andrew Kyle Purtell | Subrat Mishra |
| [HBASE-21373](https://issues.apache.org/jira/browse/HBASE-21373) | Backport to branch-1, "HBASE-21338 [balancer] If balancer is an ill-fit for cluster size, it gives little indication" |  Major | Operability | Michael Stack | Xu Cang |
| [HBASE-21511](https://issues.apache.org/jira/browse/HBASE-21511) | Remove in progress snapshot check in SnapshotFileCache#getUnreferencedFiles |  Minor | snapshots | Ted Yu | Ted Yu |
| [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | Allow overriding configs starting up the shell |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable |  Minor | master | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | Colocate recovered edits directory with hbase.wal.dir |  Major | MTTR, Recovery, wal | Ted Yu | Zach York |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-16091](https://issues.apache.org/jira/browse/HBASE-16091) | Canary takes lot more time when there are delete markers in the table |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-16576](https://issues.apache.org/jira/browse/HBASE-16576) | Shell add\_peer doesn't allow setting cluster\_key for custom endpoints |  Major | shell | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-16910](https://issues.apache.org/jira/browse/HBASE-16910) | Avoid NPE when starting StochasticLoadBalancer |  Minor | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17072](https://issues.apache.org/jira/browse/HBASE-17072) | CPU usage starts to climb up to 90-100% when using G1GC; purge ThreadLocal usage |  Critical | Performance, regionserver | Eiichi Sato | Eiichi Sato |
| [HBASE-17118](https://issues.apache.org/jira/browse/HBASE-17118) | StoreScanner leaked in KeyValueHeap |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-17565](https://issues.apache.org/jira/browse/HBASE-17565) | StochasticLoadBalancer may incorrectly skip balancing due to skewed multiplier sum |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-17798](https://issues.apache.org/jira/browse/HBASE-17798) | RpcServer.Listener.Reader can abort due to CancelledKeyException |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17861](https://issues.apache.org/jira/browse/HBASE-17861) | Regionserver down when checking the permission of staging dir if hbase.rootdir is on S3 |  Major | . | Yi Liang | Yi Liang |
| [HBASE-17816](https://issues.apache.org/jira/browse/HBASE-17816) | HRegion#mutateRowWithLocks should update writeRequestCount metric |  Major | metrics | Ashu Pachauri | Weizhan Zeng |
| [HBASE-17930](https://issues.apache.org/jira/browse/HBASE-17930) | Avoid using Canary.sniff in HBaseTestingUtility |  Major | canary, test | Duo Zhang | Duo Zhang |
| [HBASE-17991](https://issues.apache.org/jira/browse/HBASE-17991) | Add more details about compaction queue on /dump |  Minor | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18058](https://issues.apache.org/jira/browse/HBASE-18058) | Zookeeper retry sleep time should have an upper limit |  Major | . | Allan Yang | Allan Yang |
| [HBASE-18111](https://issues.apache.org/jira/browse/HBASE-18111) | Replication stuck when cluster connection is closed |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18512](https://issues.apache.org/jira/browse/HBASE-18512) | Region Server will abort with IllegalStateException if HDFS umask has limited scope |  Major | regionserver, security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-18830](https://issues.apache.org/jira/browse/HBASE-18830) | TestCanaryTool does not check Canary monitor's error code |  Major | . | Chinmay Kulkarni | Chinmay Kulkarni |
| [HBASE-18762](https://issues.apache.org/jira/browse/HBASE-18762) | Canary sink type cast error |  Major | . | Chinmay Kulkarni | Chinmay Kulkarni |
| [HBASE-19435](https://issues.apache.org/jira/browse/HBASE-19435) | Reopen Files for ClosedChannelException in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-19551](https://issues.apache.org/jira/browse/HBASE-19551) | hbck -boundaries doesn't work correctly |  Major | hbck | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19816](https://issues.apache.org/jira/browse/HBASE-19816) | Replication sink list is not updated on UnknownHostException |  Major | Replication | Scott Wilson | Scott Wilson |
| [HBASE-19163](https://issues.apache.org/jira/browse/HBASE-19163) | "Maximum lock count exceeded" from region server's batch processing |  Major | regionserver | Hua Xiang | Hua Xiang |
| [HBASE-19905](https://issues.apache.org/jira/browse/HBASE-19905) | ReplicationSyncUp tool will not exit if a peer replication is disabled |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-19553](https://issues.apache.org/jira/browse/HBASE-19553) | Old replica regions should be cleared from AM memory after primary region split or merge |  Minor | master, read replicas | Hua Xiang | Pankaj Kumar |
| [HBASE-19391](https://issues.apache.org/jira/browse/HBASE-19391) | Calling HRegion#initializeRegionInternals from a region replica can still re-create a region directory |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-20141](https://issues.apache.org/jira/browse/HBASE-20141) | Fix TooManyFiles exception when RefreshingChannels in FileIOEngine |  Major | BucketCache | Zach York | Zach York |
| [HBASE-19364](https://issues.apache.org/jira/browse/HBASE-19364) | Truncate\_preserve fails with table when replica region \> 1 |  Major | master, read replicas | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20292](https://issues.apache.org/jira/browse/HBASE-20292) | Wrong URLs in the descriptions for update\_all\_config and update\_config commands in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20302](https://issues.apache.org/jira/browse/HBASE-20302) | CatalogJanitor should log the reason why it is disabled |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-17631](https://issues.apache.org/jira/browse/HBASE-17631) | Canary interval too low |  Major | canary | Lars George | Jan Hentschel |
| [HBASE-20322](https://issues.apache.org/jira/browse/HBASE-20322) | CME in StoreScanner causes region server crash |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-20231](https://issues.apache.org/jira/browse/HBASE-20231) | Not able to delete column family from a row using RemoteHTable |  Major | REST | Pankaj Kumar | Pankaj Kumar |
| [HBASE-19343](https://issues.apache.org/jira/browse/HBASE-19343) | Restore snapshot makes split parent region online |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20068](https://issues.apache.org/jira/browse/HBASE-20068) | Hadoopcheck project health check uses default maven repo instead of yetus managed ones |  Major | community, test | Sean Busbey | Sean Busbey |
| [HBASE-15291](https://issues.apache.org/jira/browse/HBASE-15291) | FileSystem not closed in secure bulkLoad |  Major | . | Yong Zhang | Ashish Singhi |
| [HBASE-20335](https://issues.apache.org/jira/browse/HBASE-20335) | nightly jobs no longer contain machine information |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20364](https://issues.apache.org/jira/browse/HBASE-20364) | nightly job gives old results or no results for stages that timeout on SCM |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20404](https://issues.apache.org/jira/browse/HBASE-20404) | Ugly cleanerchore complaint that dir is not empty |  Major | master | Michael Stack | Sean Busbey |
| [HBASE-18862](https://issues.apache.org/jira/browse/HBASE-18862) | backport HBASE-15109 to branch-1.2,branch-1.3 |  Critical | regionserver | Yechao Chen | Yechao Chen |
| [HBASE-18842](https://issues.apache.org/jira/browse/HBASE-18842) | The hbase shell clone\_snaphost command returns bad error message |  Minor | shell | Thoralf Gutierrez | Thoralf Gutierrez |
| [HBASE-19924](https://issues.apache.org/jira/browse/HBASE-19924) | hbase rpc throttling does not work for multi() with request count rater. |  Major | rpc | Hua Xiang | Hua Xiang |
| [HBASE-20517](https://issues.apache.org/jira/browse/HBASE-20517) | Fix PerformanceEvaluation 'column' parameter |  Major | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20554](https://issues.apache.org/jira/browse/HBASE-20554) | "WALs outstanding" message from CleanerChore is noisy |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20004](https://issues.apache.org/jira/browse/HBASE-20004) | Client is not able to execute REST queries in a secure cluster |  Minor | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20571](https://issues.apache.org/jira/browse/HBASE-20571) | JMXJsonServlet generates invalid JSON if it has NaN in metrics |  Major | UI | Balazs Meszaros | Balazs Meszaros |
| [HBASE-20591](https://issues.apache.org/jira/browse/HBASE-20591) | nightly job doesn't respect maven options |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-20638](https://issues.apache.org/jira/browse/HBASE-20638) | nightly source artifact testing should fail the stage if it's going to report an error on jira |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-20597](https://issues.apache.org/jira/browse/HBASE-20597) | Use a lock to serialize access to a shared reference to ZooKeeperWatcher in HBaseReplicationEndpoint |  Minor | Replication | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20664](https://issues.apache.org/jira/browse/HBASE-20664) | Variable shared across multiple threads |  Major | . | Josh Elser | Josh Elser |
| [HBASE-20669](https://issues.apache.org/jira/browse/HBASE-20669) | [findbugs] autoboxing to parse primitive |  Major | . | Sean Busbey | Wei-Chiu Chuang |
| [HBASE-20590](https://issues.apache.org/jira/browse/HBASE-20590) | REST Java client is not able to negotiate with the server in the secure mode |  Critical | REST, security | Ashish Singhi | Ashish Singhi |
| [HBASE-20689](https://issues.apache.org/jira/browse/HBASE-20689) | Docker fails to install rubocop for precommit |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-19377](https://issues.apache.org/jira/browse/HBASE-19377) | Compatibility checker complaining about hash collisions |  Major | community | Andrew Kyle Purtell | Mike Drob |
| [HBASE-20723](https://issues.apache.org/jira/browse/HBASE-20723) | Custom hbase.wal.dir results in data loss because we write recovered edits into a different place than where the recovering region server looks for them |  Critical | Recovery, wal | Rohan Pednekar | Ted Yu |
| [HBASE-20770](https://issues.apache.org/jira/browse/HBASE-20770) | WAL cleaner logs way too much; gets clogged when lots of work to do |  Critical | logging | Michael Stack | Michael Stack |
| [HBASE-20785](https://issues.apache.org/jira/browse/HBASE-20785) | NPE getting metrics in PE testing scans |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20732](https://issues.apache.org/jira/browse/HBASE-20732) | Shutdown scan pool when master is stopped. |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-20575](https://issues.apache.org/jira/browse/HBASE-20575) | Fail to config COMPACTION\_ENABLED by hbase shell |  Major | shell | Chia-Ping Tsai | Mingdao Yang |
| [HBASE-20769](https://issues.apache.org/jira/browse/HBASE-20769) | getSplits() has a out of bounds problem in TableSnapshotInputFormatImpl |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20808](https://issues.apache.org/jira/browse/HBASE-20808) | Wrong shutdown order between Chores and ChoreService |  Minor | . | Reid Chan | Nihal Jain |
| [HBASE-20771](https://issues.apache.org/jira/browse/HBASE-20771) | PUT operation fail with "No server address listed in hbase:meta for region xxxxx" |  Major | Client | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-20889](https://issues.apache.org/jira/browse/HBASE-20889) | PE scan is failing with NullPointerException |  Major | . | Vikas Vishwakarma | Ted Yu |
| [HBASE-20866](https://issues.apache.org/jira/browse/HBASE-20866) | HBase 1.x scan performance degradation compared to 0.98 version |  Critical | Performance | Vikas Vishwakarma | Vikas Vishwakarma |
| [HBASE-17885](https://issues.apache.org/jira/browse/HBASE-17885) | Backport HBASE-15871 to branch-1 |  Major | Scanners | ramkrishna.s.vasudevan | Toshihiro Suzuki |
| [HBASE-20908](https://issues.apache.org/jira/browse/HBASE-20908) | Infinite loop on regionserver if region replica are reduced |  Major | read replicas | Ankit Singhal | Ankit Singhal |
| [HBASE-20230](https://issues.apache.org/jira/browse/HBASE-20230) | Incorrrect log message in RSRpcService |  Minor | . | Vishal Khandelwal | Xu Cang |
| [HBASE-20895](https://issues.apache.org/jira/browse/HBASE-20895) | NPE in RpcServer#readAndProcess |  Major | rpc | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20997](https://issues.apache.org/jira/browse/HBASE-20997) | rebuildUserRegions() does not build ReplicaMapping during master switchover |  Major | master, read replicas | Hua Xiang | Hua Xiang |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |
| [HBASE-21047](https://issues.apache.org/jira/browse/HBASE-21047) | Object creation of StoreFileScanner thru constructor and close may leave refCount to -1 |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21042](https://issues.apache.org/jira/browse/HBASE-21042) | processor.getRowsToLock() always assumes there is some row being locked in HRegion#processRowsWithLocks |  Major | . | Thomas D'Silva | Ted Yu |
| [HBASE-21074](https://issues.apache.org/jira/browse/HBASE-21074) | JDK7 branches need to pass "-Dhttps.protocols=TLSv1.2" to maven when building |  Major | build, community, test | Sean Busbey | Sean Busbey |
| [HBASE-21058](https://issues.apache.org/jira/browse/HBASE-21058) | Nightly tests for branches 1 fail to build ref guide |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21069](https://issues.apache.org/jira/browse/HBASE-21069) | NPE in StoreScanner.updateReaders causes RS to crash |  Major | . | Thomas D'Silva | Andrew Kyle Purtell |
| [HBASE-20890](https://issues.apache.org/jira/browse/HBASE-20890) | PE filterScan seems to be stuck forever |  Minor | . | Vikas Vishwakarma | Abhishek Goyal |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21104](https://issues.apache.org/jira/browse/HBASE-21104) | client.TestRestoreSnapshotFromClientWithRegionReplicas failing on branch-1.3, branch-1.2 |  Major | read replicas, snapshots | Sean Busbey | Toshihiro Suzuki |
| [HBASE-21166](https://issues.apache.org/jira/browse/HBASE-21166) | Creating a CoprocessorHConnection re-retrieves the cluster id from ZK |  Major | Client, Zookeeper | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21173](https://issues.apache.org/jira/browse/HBASE-21173) | Remove the duplicate HRegion#close in TestHRegion |  Minor | test | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21179](https://issues.apache.org/jira/browse/HBASE-21179) | Fix the number of actions in responseTooSlow log |  Major | logging, rpc | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21203](https://issues.apache.org/jira/browse/HBASE-21203) | TestZKMainServer#testCommandLineWorks won't pass with default 4lw whitelist |  Minor | test, Zookeeper | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20704](https://issues.apache.org/jira/browse/HBASE-20704) | Sometimes some compacted storefiles are not archived on region close |  Critical | Compaction | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-21212](https://issues.apache.org/jira/browse/HBASE-21212) | Wrong flush time when update flush metric |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-20766](https://issues.apache.org/jira/browse/HBASE-20766) | Verify Replication Tool Has Typo "remove cluster" |  Trivial | . | Clay B. | Ferran Fernandez Garrido |
| [HBASE-21228](https://issues.apache.org/jira/browse/HBASE-21228) | Memory leak since AbstractFSWAL caches Thread object and never clean later |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-18451](https://issues.apache.org/jira/browse/HBASE-18451) | PeriodicMemstoreFlusher should inspect the queue before adding a delayed flush request |  Major | regionserver | Jean-Marc Spaggiari | Xu Cang |
| [HBASE-19418](https://issues.apache.org/jira/browse/HBASE-19418) | RANGE\_OF\_DELAY in PeriodicMemstoreFlusher should be configurable. |  Minor | . | Jean-Marc Spaggiari | Ramie Raufdeen |
| [HBASE-21067](https://issues.apache.org/jira/browse/HBASE-21067) | Backport HBASE-17519 (Rollback the removed cells) to branch-1.3 |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell should not be returned if it does not match QualifierFilter |  Critical | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21266](https://issues.apache.org/jira/browse/HBASE-21266) | Not running balancer because processing dead regionservers, but empty dead rs list |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21275](https://issues.apache.org/jira/browse/HBASE-21275) | Thrift Server (branch 1 fix) -\> Disable TRACE HTTP method for thrift http server (branch 1 only) |  Minor | Thrift | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21355](https://issues.apache.org/jira/browse/HBASE-21355) | HStore's storeSize is calculated repeatedly which causing the confusing region split |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21357](https://issues.apache.org/jira/browse/HBASE-21357) | RS should abort if OOM in Reader thread |  Critical | regionserver | Allan Yang | Allan Yang |
| [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | Pre commit build is broken due to surefire plugin crashes |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-20604](https://issues.apache.org/jira/browse/HBASE-20604) | ProtobufLogReader#readNext can incorrectly loop to the same position in the stream until the the WAL is rolled |  Critical | Replication, wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-21439](https://issues.apache.org/jira/browse/HBASE-21439) | StochasticLoadBalancer RegionLoads aren’t being used in RegionLoad cost functions |  Major | Balancer | Ben Lau | Ben Lau |
| [HBASE-21445](https://issues.apache.org/jira/browse/HBASE-21445) | CopyTable by bulkload will write hfile into yarn's HDFS |  Major | mapreduce | Zheng Hu | Zheng Hu |
| [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-21359](https://issues.apache.org/jira/browse/HBASE-21359) | Fix build problem against Hadoop 2.8.5 |  Trivial | build | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21546](https://issues.apache.org/jira/browse/HBASE-21546) | ConnectException in TestThriftHttpServer |  Major | test, Thrift | Peter Somogyi | Peter Somogyi |
| [HBASE-21553](https://issues.apache.org/jira/browse/HBASE-21553) | schedLock not released in MasterProcedureScheduler |  Critical | proc-v2 | Xu Cang | Xu Cang |
| [HBASE-21582](https://issues.apache.org/jira/browse/HBASE-21582) | If call HBaseAdmin#snapshotAsync but forget call isSnapshotFinished, then SnapshotHFileCleaner will skip to run every time |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19458](https://issues.apache.org/jira/browse/HBASE-19458) | Allow building HBase 1.3.x against Hadoop 2.8 |  Major | . | Lars Hofhansl | Lars Hofhansl |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20052](https://issues.apache.org/jira/browse/HBASE-20052) | TestRegionOpen#testNonExistentRegionReplica fails due to NPE |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20513](https://issues.apache.org/jira/browse/HBASE-20513) | Collect and emit ScanMetrics in PerformanceEvaluation |  Minor | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20505](https://issues.apache.org/jira/browse/HBASE-20505) | PE should support multi column family read and write cases |  Minor | Performance | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20619](https://issues.apache.org/jira/browse/HBASE-20619) | TestWeakObjectPool occasionally times out |  Trivial | test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |
| [HBASE-21138](https://issues.apache.org/jira/browse/HBASE-21138) | Close HRegion instance at the end of every test in TestHRegion |  Major | . | Ted Yu | Mingliang Liu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18786](https://issues.apache.org/jira/browse/HBASE-18786) | FileNotFoundException should not be silently handled for primary region replicas |  Major | regionserver, Scanners | Ashu Pachauri | Andrew Kyle Purtell |
| [HBASE-16848](https://issues.apache.org/jira/browse/HBASE-16848) | Usage for show\_peer\_tableCFs command doesn't include peer |  Minor | . | Ted Yu | Peter Somogyi |
| [HBASE-20316](https://issues.apache.org/jira/browse/HBASE-20316) | Backport HBASE-20229 "ConnectionImplementation.locateRegions() returns duplicated entries when region replication is on" to branch-1 |  Major | backport | Michael Stack | Toshihiro Suzuki |
| [HBASE-20647](https://issues.apache.org/jira/browse/HBASE-20647) | Backport HBASE-20616 "TruncateTableProcedure is stuck in retry loop in TRUNCATE\_TABLE\_CREATE\_FS\_LAYOUT state" to branch-1 |  Major | backport | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20557](https://issues.apache.org/jira/browse/HBASE-20557) | Backport HBASE-17215 to branch-1 |  Major | HFile, master | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20558](https://issues.apache.org/jira/browse/HBASE-20558) | Backport HBASE-17854 to branch-1 |  Major | HFile | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20559](https://issues.apache.org/jira/browse/HBASE-20559) | Backport HBASE-18083 to branch-1 |  Major | HFile | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20974](https://issues.apache.org/jira/browse/HBASE-20974) | Backport HBASE-20583 (SplitLogWorker should handle FileNotFoundException when split a wal) to branch-1 |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21060](https://issues.apache.org/jira/browse/HBASE-21060) | fix dead store in SecureBulkLoadEndpoint |  Minor | Coprocessors | Sean Busbey | Sean Busbey |
| [HBASE-20317](https://issues.apache.org/jira/browse/HBASE-20317) | Backport HBASE-20261 "Table page (table.jsp) in Master UI does not show replicaIds for hbase meta table" to branch-1 |  Major | backport | Michael Stack | Toshihiro Suzuki |
| [HBASE-21061](https://issues.apache.org/jira/browse/HBASE-21061) | fix synchronization of org.apache.hadoop.hbase.ipc.RpcServer$Connection.useWrap |  Critical | rpc | Sean Busbey | Sean Busbey |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21189](https://issues.apache.org/jira/browse/HBASE-21189) | flaky job should gather machine stats |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-21347](https://issues.apache.org/jira/browse/HBASE-21347) | Backport HBASE-21200 "Memstore flush doesn't finish because of seekToPreviousRow() in memstore scanner." to branch-1 |  Critical | backport, Scanners | Toshihiro Suzuki | Toshihiro Suzuki |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17965](https://issues.apache.org/jira/browse/HBASE-17965) | Canary tool should print the regionserver name on failure |  Minor | . | churro morales | Karan Mehta |
| [HBASE-20112](https://issues.apache.org/jira/browse/HBASE-20112) | Include test results from nightly hadoop3 tests in jenkins test results |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-19475](https://issues.apache.org/jira/browse/HBASE-19475) | Extend backporting strategy in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-20665](https://issues.apache.org/jira/browse/HBASE-20665) | "Already cached block XXX" message should be DEBUG |  Minor | BlockCache | Sean Busbey | Eric Maynard |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20905](https://issues.apache.org/jira/browse/HBASE-20905) | branch-1 docker build fails |  Major | build | Jingyun Tian | Mike Drob |
| [HBASE-20931](https://issues.apache.org/jira/browse/HBASE-20931) | [branch-1] Add -Dhttps.protocols=TLSv1.2 to Maven command line in make\_rc.sh |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | Improve RpcServer TRACE logging |  Major | Operability | Esteban Gutierrez | Krish Dey |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Trivial | . | Mike Drob | Mike Drob |


