
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

## Release 1.4.0 - Unreleased (as of 2016-08-25)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15376](https://issues.apache.org/jira/browse/HBASE-15376) | ScanNext metric is size-based while every other per-operation metric is time based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15377](https://issues.apache.org/jira/browse/HBASE-15377) | Per-RS Get metric is time based, per-region metric is size-based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | Hbase Rest CheckAndDeleteAPi should be able to delete more cells |  Major | hbase | Ajith | Ajith |
| [HBASE-15950](https://issues.apache.org/jira/browse/HBASE-15950) | Fix memstore size estimates to be more tighter |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16355](https://issues.apache.org/jira/browse/HBASE-16355) | hbase-client dependency on hbase-common test-jar should be test scope |  Major | Client, dependencies | Sean Busbey | Stevo Slavic |
| [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | ensure no Xerces jars included |  Critical | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | Ensure findbugs jsr305 jar isn't present |  Blocker | dependencies | Sean Busbey | Sean Busbey |


### IMPORTANT ISSUES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15322](https://issues.apache.org/jira/browse/HBASE-15322) | Operations using Unsafe path broken for platforms not having sun.misc.Unsafe |  Critical | hbase | Anant Sharma | Anoop Sam John |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15592](https://issues.apache.org/jira/browse/HBASE-15592) | Print Procedure WAL content |  Major | . | Jerry He | Jerry He |
| [HBASE-15633](https://issues.apache.org/jira/browse/HBASE-15633) | Backport HBASE-15507 to branch-1 |  Major | Replication, shell | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15847](https://issues.apache.org/jira/browse/HBASE-15847) | VerifyReplication prefix filtering |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-10358](https://issues.apache.org/jira/browse/HBASE-10358) | Shell changes for setting consistency per request |  Major | shell | Enis Soztutar | Yi Liang |
| [HBASE-15881](https://issues.apache.org/jira/browse/HBASE-15881) | Allow BZIP2 compression |  Major | HFile | Lars Hofhansl | Lars Hofhansl |
| [HBASE-9465](https://issues.apache.org/jira/browse/HBASE-9465) | Push entries to peer clusters serially |  Major | regionserver, Replication | Honghua Feng | Phil Yang |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14574](https://issues.apache.org/jira/browse/HBASE-14574) | TableOutputFormat#getRecordWriter javadoc misleads |  Major | . | stack | stack |
| [HBASE-15119](https://issues.apache.org/jira/browse/HBASE-15119) | Include git SHA in check\_compatibility reports |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-15315](https://issues.apache.org/jira/browse/HBASE-15315) | Remove always set super user call as high priority |  Major | . | Yong Zhang | Yong Zhang |
| [HBASE-15243](https://issues.apache.org/jira/browse/HBASE-15243) | Utilize the lowest seek value when all Filters in MUST\_PASS\_ONE FilterList return SEEK\_NEXT\_USING\_HINT |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15413](https://issues.apache.org/jira/browse/HBASE-15413) | Procedure-V2: print out ProcedureInfo during trace |  Trivial | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-12940](https://issues.apache.org/jira/browse/HBASE-12940) | Expose listPeerConfigs and getPeerConfig to the HBase shell |  Major | shell | Kevin Risden | Geoffrey Jacoby |
| [HBASE-15456](https://issues.apache.org/jira/browse/HBASE-15456) | CreateTableProcedure/ModifyTableProcedure needs to fail when there is no family in table descriptor |  Minor | master | huaxiang sun | huaxiang sun |
| [HBASE-15451](https://issues.apache.org/jira/browse/HBASE-15451) | Remove unnecessary wait in MVCC |  Major | . | Yu Li | Yu Li |
| [HBASE-14963](https://issues.apache.org/jira/browse/HBASE-14963) | Remove use of Guava Stopwatch from HBase client code |  Major | Client | Devaraj Das | Devaraj Das |
| [HBASE-15478](https://issues.apache.org/jira/browse/HBASE-15478) | add comments to FSHLog explaining why syncRunnerIndex won't overflow |  Minor | wal | Sean Busbey | Sean Busbey |
| [HBASE-15212](https://issues.apache.org/jira/browse/HBASE-15212) | RRCServer should enforce max request size |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15475](https://issues.apache.org/jira/browse/HBASE-15475) | Allow TimestampsFilter to provide a seek hint |  Major | Client, Filters, regionserver | Elliott Clark | Elliott Clark |
| [HBASE-14703](https://issues.apache.org/jira/browse/HBASE-14703) | HTable.mutateRow does not collect stats |  Major | Client | Heng Chen | Heng Chen |
| [HBASE-15526](https://issues.apache.org/jira/browse/HBASE-15526) | Make SnapshotManager accessible through MasterServices |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15496](https://issues.apache.org/jira/browse/HBASE-15496) | Throw RowTooBigException only for user scan/get |  Minor | Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15508](https://issues.apache.org/jira/browse/HBASE-15508) | Add command for exporting snapshot in hbase command script |  Minor | hbase, scripts, snapshots | Yufeng Jiang | Yufeng Jiang |
| [HBASE-15191](https://issues.apache.org/jira/browse/HBASE-15191) | CopyTable and VerifyReplication - Option to specify batch size, versions |  Minor | Replication | Parth Shah | Parth Shah |
| [HBASE-14983](https://issues.apache.org/jira/browse/HBASE-14983) | Create metrics for per block type hit/miss ratios |  Major | metrics | Elliott Clark | Elliott Clark |
| [HBASE-15569](https://issues.apache.org/jira/browse/HBASE-15569) | Make Bytes.toStringBinary faster |  Minor | Performance | Junegunn Choi | Junegunn Choi |
| [HBASE-15571](https://issues.apache.org/jira/browse/HBASE-15571) | Make MasterProcedureManagerHost accessible through MasterServices |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15396](https://issues.apache.org/jira/browse/HBASE-15396) | Enhance mapreduce.TableSplit to add encoded region name |  Minor | mapreduce | Harsh J | Harsh J |
| [HBASE-15586](https://issues.apache.org/jira/browse/HBASE-15586) | Unify human readable numbers in the web UI |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14985](https://issues.apache.org/jira/browse/HBASE-14985) | TimeRange constructors should set allTime when appropriate |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-15632](https://issues.apache.org/jira/browse/HBASE-15632) | Undo the checking of lastStoreFlushTimeMap.isEmpty() introduced in HBASE-13145 |  Minor | regionserver | huaxiang sun | huaxiang sun |
| [HBASE-15614](https://issues.apache.org/jira/browse/HBASE-15614) | Report metrics from JvmPauseMonitor |  Major | metrics, regionserver | Nick Dimiduk | Andrew Purtell |
| [HBASE-15641](https://issues.apache.org/jira/browse/HBASE-15641) | Shell "alter" should do a single modifyTable operation |  Major | shell | Gary Helmling | Matt Warhaftig |
| [HBASE-15686](https://issues.apache.org/jira/browse/HBASE-15686) | Add override mechanism for the exempt classes when dynamically loading table coprocessor |  Major | Coprocessors | Sangjin Lee | Ted Yu |
| [HBASE-15720](https://issues.apache.org/jira/browse/HBASE-15720) | Print row locks at the debug dump page |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15808](https://issues.apache.org/jira/browse/HBASE-15808) | Reduce potential bulk load intermediate space usage and waste |  Minor | . | Jerry He | Jerry He |
| [HBASE-15842](https://issues.apache.org/jira/browse/HBASE-15842) | SnapshotInfo should display ownership information |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15843](https://issues.apache.org/jira/browse/HBASE-15843) | Replace RegionState.getRegionInTransition() Map with a Set |  Trivial | master, Region Assignment | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15864](https://issues.apache.org/jira/browse/HBASE-15864) | Reuse the testing helper to wait regions in transition |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15529](https://issues.apache.org/jira/browse/HBASE-15529) | Override needBalance in StochasticLoadBalancer |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15802](https://issues.apache.org/jira/browse/HBASE-15802) |  ConnectionUtils should use ThreadLocalRandom instead of Random |  Minor | . | Hiroshi Ikeda | Matt Warhaftig |
| [HBASE-15471](https://issues.apache.org/jira/browse/HBASE-15471) | Add num calls in priority and general queue to RS UI |  Major | UI | Elliott Clark | Joseph |
| [HBASE-15727](https://issues.apache.org/jira/browse/HBASE-15727) | Canary Tool for Zookeeper |  Major | . | churro morales | churro morales |
| [HBASE-15931](https://issues.apache.org/jira/browse/HBASE-15931) | Add log for long-running tasks in AsyncProcess |  Critical | Operability | Yu Li | Yu Li |
| [HBASE-5291](https://issues.apache.org/jira/browse/HBASE-5291) | Add Kerberos HTTP SPNEGO authentication support to HBase web consoles |  Major | master, regionserver, security | Andrew Purtell | Josh Elser |
| [HBASE-16048](https://issues.apache.org/jira/browse/HBASE-16048) | Tag InternalScanner with LimitedPrivate(HBaseInterfaceAudience.COPROC) |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15600](https://issues.apache.org/jira/browse/HBASE-15600) | Add provision for adding mutations to memstore or able to write to same region in batchMutate coprocessor hooks |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-15870](https://issues.apache.org/jira/browse/HBASE-15870) | Specify columns in REST multi gets |  Minor | REST | Dean Gurvitz | Matt Warhaftig |
| [HBASE-16085](https://issues.apache.org/jira/browse/HBASE-16085) | Add on metric for failed compactions |  Major | . | Elliott Clark | Gary Helmling |
| [HBASE-15353](https://issues.apache.org/jira/browse/HBASE-15353) | Add metric for number of CallQueueTooBigException's |  Minor | IPC/RPC, metrics | Elliott Clark | Jingcheng Du |
| [HBASE-16089](https://issues.apache.org/jira/browse/HBASE-16089) | Add on FastPath for CoDel |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14007](https://issues.apache.org/jira/browse/HBASE-14007) | Writing to table through MR should fail upfront if table does not exist/is disabled |  Minor | mapreduce | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-16149](https://issues.apache.org/jira/browse/HBASE-16149) | Log the underlying RPC exception in RpcRetryingCallerImpl |  Minor | . | Jerry He | Jerry He |
| [HBASE-16124](https://issues.apache.org/jira/browse/HBASE-16124) | Make check\_compatibility.sh less verbose when building HBase |  Minor | build, test | Dima Spivak | Dima Spivak |
| [HBASE-16147](https://issues.apache.org/jira/browse/HBASE-16147) | Add ruby wrapper for getting compaction state |  Major | shell | Ted Yu | Ted Yu |
| [HBASE-16114](https://issues.apache.org/jira/browse/HBASE-16114) | Get regionLocation of required regions only for MR jobs |  Minor | mapreduce | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-16108](https://issues.apache.org/jira/browse/HBASE-16108) | RowCounter should support multiple key ranges |  Major | . | Geoffrey Jacoby | Konstantin Ryakhovskiy |
| [HBASE-14548](https://issues.apache.org/jira/browse/HBASE-14548) | Expand how table coprocessor jar and dependency path can be specified |  Major | Coprocessors | Jerry He | Xiang Li |
| [HBASE-16087](https://issues.apache.org/jira/browse/HBASE-16087) | Replication shouldn't start on a master if if only hosts system tables |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16220](https://issues.apache.org/jira/browse/HBASE-16220) | Demote log level for "HRegionFileSystem - No StoreFiles for" messages to TRACE |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16231](https://issues.apache.org/jira/browse/HBASE-16231) | Integration tests should support client keytab login for secure clusters |  Major | integration tests | Gary Helmling | Gary Helmling |
| [HBASE-16052](https://issues.apache.org/jira/browse/HBASE-16052) | Improve HBaseFsck Scalability |  Major | hbck | Ben Lau | Ben Lau |
| [HBASE-16262](https://issues.apache.org/jira/browse/HBASE-16262) | Update RegionsInTransition UI for branch-1 |  Minor | . | Joseph | Joseph |
| [HBASE-16008](https://issues.apache.org/jira/browse/HBASE-16008) | A robust way deal with early termination of HBCK |  Major | hbck | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16266](https://issues.apache.org/jira/browse/HBASE-16266) | Do not throw ScannerTimeoutException when catch UnknownScannerException |  Major | Client, Scanners | Phil Yang | Phil Yang |
| [HBASE-16275](https://issues.apache.org/jira/browse/HBASE-16275) | Change ServerManager#onlineServers from ConcurrentHashMap to ConcurrentSkipListMap |  Minor | . | huaxiang sun | huaxiang sun |
| [HBASE-16225](https://issues.apache.org/jira/browse/HBASE-16225) | Refactor ScanQueryMatcher |  Major | regionserver, Scanners | Duo Zhang | Duo Zhang |
| [HBASE-16287](https://issues.apache.org/jira/browse/HBASE-16287) | LruBlockCache size should not exceed acceptableSize too many |  Major | BlockCache | Yu Sun | Yu Sun |
| [HBASE-8386](https://issues.apache.org/jira/browse/HBASE-8386) | deprecate TableMapReduce.addDependencyJars(Configuration, class\<?\> ...) |  Major | mapreduce | Nick Dimiduk | Sean Busbey |
| [HBASE-12770](https://issues.apache.org/jira/browse/HBASE-12770) | Don't transfer all the queued hlogs of a dead server to the same alive server |  Minor | Replication | Jianwei Cui | Phil Yang |
| [HBASE-16299](https://issues.apache.org/jira/browse/HBASE-16299) | Update REST API scanner with ability to do reverse scan |  Minor | REST | Bjorn Olsen | Minwoo Kang |
| [HBASE-9899](https://issues.apache.org/jira/browse/HBASE-9899) | for idempotent operation dups, return the result instead of throwing conflict exception |  Major | . | Sergey Shelukhin | Guanghao Zhang |
| [HBASE-14345](https://issues.apache.org/jira/browse/HBASE-14345) | Consolidate printUsage in IntegrationTestLoadAndVerify |  Trivial | integration tests | Nick Dimiduk | Reid Chan |
| [HBASE-16379](https://issues.apache.org/jira/browse/HBASE-16379) | [replication] Minor improvement to replication/copy\_tables\_desc.rb |  Trivial | Replication, shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16419](https://issues.apache.org/jira/browse/HBASE-16419) | check REPLICATION\_SCOPE's value more stringently |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-16455](https://issues.apache.org/jira/browse/HBASE-16455) | Provide API for obtaining all the WAL files |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16448](https://issues.apache.org/jira/browse/HBASE-16448) | Custom metrics for custom replication endpoints |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-16486](https://issues.apache.org/jira/browse/HBASE-16486) | Unify system table creation using the same createSystemTable API. |  Minor | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15358](https://issues.apache.org/jira/browse/HBASE-15358) | canEnforceTimeLimitFromScope should use timeScope instead of sizeScope |  Major | Scanners | Phil Yang | Phil Yang |
| [HBASE-15128](https://issues.apache.org/jira/browse/HBASE-15128) | Disable region splits and merges switch in master |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15397](https://issues.apache.org/jira/browse/HBASE-15397) | Create bulk load replication znode(hfile-refs) in ZK replication queue by default |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15378](https://issues.apache.org/jira/browse/HBASE-15378) | Scanner cannot handle heartbeat message with no results |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15425](https://issues.apache.org/jira/browse/HBASE-15425) | Failing to write bulk load event marker in the WAL is ignored |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-15439](https://issues.apache.org/jira/browse/HBASE-15439) | getMaximumAllowedTimeBetweenRuns in ScheduledChore ignores the TimeUnit |  Major | master, mob, regionserver | Ted Yu | Jingcheng Du |
| [HBASE-15463](https://issues.apache.org/jira/browse/HBASE-15463) | Region normalizer should check whether split/merge is enabled |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15441](https://issues.apache.org/jira/browse/HBASE-15441) | Fix WAL splitting when region has moved multiple times |  Blocker | Recovery, wal | Elliott Clark | Elliott Clark |
| [HBASE-15433](https://issues.apache.org/jira/browse/HBASE-15433) | SnapshotManager#restoreSnapshot not update table and region count quota correctly when encountering exception |  Major | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-15325](https://issues.apache.org/jira/browse/HBASE-15325) | ResultScanner allowing partial result will miss the rest of the row if the region is moved between two rpc requests |  Critical | dataloss, Scanners | Phil Yang | Phil Yang |
| [HBASE-15520](https://issues.apache.org/jira/browse/HBASE-15520) | Fix broken TestAsyncIPC |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-14256](https://issues.apache.org/jira/browse/HBASE-14256) | Flush task message may be confusing when region is recovered |  Major | regionserver | Lars George | Gabor Liptak |
| [HBASE-15515](https://issues.apache.org/jira/browse/HBASE-15515) | Improve LocalityBasedCandidateGenerator in Balancer |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15548](https://issues.apache.org/jira/browse/HBASE-15548) | SyncTable: sourceHashDir is supposed to be optional but won't work without |  Minor | Replication | My Ho | Dave Latham |
| [HBASE-15327](https://issues.apache.org/jira/browse/HBASE-15327) | Canary will always invoke admin.balancer() in each sniffing period when writeSniffing is enabled |  Minor | canary | Jianwei Cui | Jianwei Cui |
| [HBASE-15559](https://issues.apache.org/jira/browse/HBASE-15559) | BaseMasterAndRegionObserver doesn't implement all the methods |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15324](https://issues.apache.org/jira/browse/HBASE-15324) | Jitter may cause desiredMaxFileSize overflow in ConstantSizeRegionSplitPolicy and trigger unexpected split |  Major | . | Yu Li | Yu Li |
| [HBASE-15424](https://issues.apache.org/jira/browse/HBASE-15424) | Add bulk load hfile-refs for replication in ZK after the event is appended in the WAL |  Minor | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15578](https://issues.apache.org/jira/browse/HBASE-15578) | Handle HBASE-15234 for ReplicationHFileCleaner |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15485](https://issues.apache.org/jira/browse/HBASE-15485) | Filter.reset() should not be called between batches |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15587](https://issues.apache.org/jira/browse/HBASE-15587) | FSTableDescriptors.getDescriptor() logs stack trace erronously |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15591](https://issues.apache.org/jira/browse/HBASE-15591) | ServerCrashProcedure not yielding |  Major | . | Jerry He | Jerry He |
| [HBASE-15093](https://issues.apache.org/jira/browse/HBASE-15093) | Replication can report incorrect size of log queue for the global source when multiwal is enabled |  Minor | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15636](https://issues.apache.org/jira/browse/HBASE-15636) | hard coded wait time out value in HBaseTestingUtility#waitUntilAllRegionsAssigned might cause test failure |  Minor | integration tests, test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15639](https://issues.apache.org/jira/browse/HBASE-15639) | Unguarded access to stackIndexes in Procedure#toStringDetails() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15504](https://issues.apache.org/jira/browse/HBASE-15504) | Fix Balancer in 1.3 not moving regions off overloaded regionserver |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15405](https://issues.apache.org/jira/browse/HBASE-15405) | Synchronize final results logging single thread in PE, fix wrong defaults in help message |  Minor | Performance | Appy | Appy |
| [HBASE-15650](https://issues.apache.org/jira/browse/HBASE-15650) | Remove TimeRangeTracker as point of contention when many threads reading a StoreFile |  Major | Performance | stack | stack |
| [HBASE-15187](https://issues.apache.org/jira/browse/HBASE-15187) | Integrate CSRF prevention filter to REST gateway |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15287](https://issues.apache.org/jira/browse/HBASE-15287) | mapreduce.RowCounter returns incorrect result with binary row key inputs |  Major | mapreduce, util | Randy Hu | Matt Warhaftig |
| [HBASE-15668](https://issues.apache.org/jira/browse/HBASE-15668) | HFileReplicator$Copier fails to replicate other hfiles in the request when a hfile in not found in FS anywhere |  Trivial | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15664](https://issues.apache.org/jira/browse/HBASE-15664) | Use Long.MAX\_VALUE instead of HConstants.FOREVER in CompactionPolicy |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15673](https://issues.apache.org/jira/browse/HBASE-15673) | [PE tool] Fix latency metrics for multiGet |  Major | Performance | Appy | Appy |
| [HBASE-15672](https://issues.apache.org/jira/browse/HBASE-15672) | hadoop.hbase.security.visibility.TestVisibilityLabelsWithDeletes fails |  Major | test | Vladimir Rodionov | Anoop Sam John |
| [HBASE-15674](https://issues.apache.org/jira/browse/HBASE-15674) | HRegionLocator#getAllRegionLocations should put the results in cache |  Major | . | Elliott Clark | Heng Chen |
| [HBASE-15670](https://issues.apache.org/jira/browse/HBASE-15670) | Add missing Snapshot.proto to the maven profile for compiling protobuf |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15360](https://issues.apache.org/jira/browse/HBASE-15360) | Fix flaky TestSimpleRpcScheduler |  Critical | test | Mikhail Antonov | Duo Zhang |
| [HBASE-14252](https://issues.apache.org/jira/browse/HBASE-14252) | RegionServers fail to start when setting hbase.ipc.server.callqueue.scan.ratio to 0 |  Major | regionserver | Toshihiro Suzuki | Yubao Liu |
| [HBASE-15710](https://issues.apache.org/jira/browse/HBASE-15710) | Include issue servers information in RetriesExhaustedWithDetailsException message |  Minor | . | Yu Li | Yu Li |
| [HBASE-15634](https://issues.apache.org/jira/browse/HBASE-15634) | TestDateTieredCompactionPolicy#negativeForMajor is flaky |  Major | test | Ted Yu | Duo Zhang |
| [HBASE-15645](https://issues.apache.org/jira/browse/HBASE-15645) | hbase.rpc.timeout is not used in operations of HTable |  Critical | . | Phil Yang | Phil Yang |
| [HBASE-15707](https://issues.apache.org/jira/browse/HBASE-15707) | ImportTSV bulk output does not support tags with hfile.format.version=3 |  Major | mapreduce | huaxiang sun | huaxiang sun |
| [HBASE-15676](https://issues.apache.org/jira/browse/HBASE-15676) | FuzzyRowFilter fails and matches all the rows in the table if the mask consists of all 0s |  Major | Filters | Rohit Sinha | Matt Warhaftig |
| [HBASE-15711](https://issues.apache.org/jira/browse/HBASE-15711) | Add client side property to allow logging details for batch errors |  Major | . | Yu Li | Yu Li |
| [HBASE-15357](https://issues.apache.org/jira/browse/HBASE-15357) | TableInputFormatBase getSplitKey does not handle signed bytes correctly |  Major | mapreduce | Nathan Schile | Nathan Schile |
| [HBASE-15714](https://issues.apache.org/jira/browse/HBASE-15714) | We are calling checkRow() twice in doMiniBatchMutation() |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15752](https://issues.apache.org/jira/browse/HBASE-15752) | ClassNotFoundException is encountered when custom WAL codec is not found in WALPlayer job |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15528](https://issues.apache.org/jira/browse/HBASE-15528) | Clean up outdated entries in hbase-default.xml |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-15613](https://issues.apache.org/jira/browse/HBASE-15613) | TestNamespaceCommand times out |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15563](https://issues.apache.org/jira/browse/HBASE-15563) | 'counter' may overflow in BoundedGroupingStrategy |  Minor | wal | Duo Zhang | Matt Warhaftig |
| [HBASE-15292](https://issues.apache.org/jira/browse/HBASE-15292) | Refined ZooKeeperWatcher to prevent ZooKeeper's callback while construction |  Minor | Zookeeper | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-15669](https://issues.apache.org/jira/browse/HBASE-15669) | HFile size is not considered correctly in a replication request |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15738](https://issues.apache.org/jira/browse/HBASE-15738) | Ensure artifacts in project dist area include required md5 file |  Blocker | build, community | Sean Busbey | Nick Dimiduk |
| [HBASE-15236](https://issues.apache.org/jira/browse/HBASE-15236) | Inconsistent cell reads over multiple bulk-loaded HFiles |  Major | . | Appy | Appy |
| [HBASE-15801](https://issues.apache.org/jira/browse/HBASE-15801) | Upgrade checkstyle for all branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15742](https://issues.apache.org/jira/browse/HBASE-15742) | Reduce allocation of objects in metrics |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15815](https://issues.apache.org/jira/browse/HBASE-15815) | Region mover script sometimes reports stuck region where only one server was involved |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15840](https://issues.apache.org/jira/browse/HBASE-15840) | WAL.proto compilation broken for cpp |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15769](https://issues.apache.org/jira/browse/HBASE-15769) | Perform validation on cluster key for add\_peer |  Minor | . | Ted Yu | Matt Warhaftig |
| [HBASE-15593](https://issues.apache.org/jira/browse/HBASE-15593) | Time limit of scanning should be offered by client |  Major | . | Phil Yang | Phil Yang |
| [HBASE-15824](https://issues.apache.org/jira/browse/HBASE-15824) | LocalHBaseCluster gets bind exception in master info port |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15841](https://issues.apache.org/jira/browse/HBASE-15841) | Performance Evaluation tool total rows may not be set correctly |  Minor | . | Jerry He | Jerry He |
| [HBASE-15465](https://issues.apache.org/jira/browse/HBASE-15465) | userPermission returned by getUserPermission() for the selected namespace does not have namespace set |  Minor | Protobufs | Xiang Li | Xiang Li |
| [HBASE-14818](https://issues.apache.org/jira/browse/HBASE-14818) | user\_permission does not list namespace permissions |  Minor | hbase | Steven Hancz | Xiang Li |
| [HBASE-15873](https://issues.apache.org/jira/browse/HBASE-15873) | ACL for snapshot restore / clone is not enforced |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-15884](https://issues.apache.org/jira/browse/HBASE-15884) | NPE in StoreFileScanner#skipKVsNewerThanReadpoint during reverse scan |  Major | Scanners | Sergey Soldatov | Sergey Soldatov |
| [HBASE-11625](https://issues.apache.org/jira/browse/HBASE-11625) | Reading datablock throws "Invalid HFile block magic" and can not switch to hdfs checksum |  Major | HFile | qian wang | Appy |
| [HBASE-15693](https://issues.apache.org/jira/browse/HBASE-15693) | Reconsider the ImportOrder rule of checkstyle |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-15933](https://issues.apache.org/jira/browse/HBASE-15933) | NullPointerException may be thrown from SimpleRegionNormalizer#getRegionSize() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15845](https://issues.apache.org/jira/browse/HBASE-15845) | Shell Cleanup : move formatter to commands.rb; move one of the two hbase.rb to hbase\_constants.rb |  Minor | . | Appy | Appy |
| [HBASE-15889](https://issues.apache.org/jira/browse/HBASE-15889) | String case conversions are locale-sensitive, used without locale |  Minor | localization | Sean Mackrory | Sean Mackrory |
| [HBASE-15954](https://issues.apache.org/jira/browse/HBASE-15954) | REST server should log requests with TRACE instead of DEBUG |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15698](https://issues.apache.org/jira/browse/HBASE-15698) | Increment TimeRange not serialized to server |  Blocker | . | James Taylor | Ted Yu |
| [HBASE-15803](https://issues.apache.org/jira/browse/HBASE-15803) | ZooKeeperWatcher's constructor can leak a ZooKeeper instance with throwing ZooKeeperConnectionException when canCreateBaseZNode is true |  Minor | . | Hiroshi Ikeda | Ted Yu |
| [HBASE-15913](https://issues.apache.org/jira/browse/HBASE-15913) | Sasl encryption doesn't work with AsyncRpcChannel |  Major | . | Colin Ma | Colin Ma |
| [HBASE-15957](https://issues.apache.org/jira/browse/HBASE-15957) | RpcClientImpl.close never ends in some circumstances |  Major | Client, rpc | Sergey Soldatov | Sergey Soldatov |
| [HBASE-15952](https://issues.apache.org/jira/browse/HBASE-15952) | Bulk load data replication is not working when RS user does not have permission on hfile-refs node |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15990](https://issues.apache.org/jira/browse/HBASE-15990) | The priority value of subsequent coprocessors in the Coprocessor.Priority.SYSTEM list are not incremented by one |  Minor | . | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-15946](https://issues.apache.org/jira/browse/HBASE-15946) | Eliminate possible security concerns in RS web UI's store file metrics |  Major | . | Sean Mackrory | Sean Mackrory |
| [HBASE-16007](https://issues.apache.org/jira/browse/HBASE-16007) | Job's Configuration should be passed to TableMapReduceUtil#addDependencyJars() in WALPlayer |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16016](https://issues.apache.org/jira/browse/HBASE-16016) | AssignmentManager#waitForAssignment could have unexpected negative deadline |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15746](https://issues.apache.org/jira/browse/HBASE-15746) | Remove extra RegionCoprocessor preClose() in RSRpcServices#closeRegion |  Minor | Coprocessors, regionserver | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-16017](https://issues.apache.org/jira/browse/HBASE-16017) | HBase TableOutputFormat has connection leak in getRecordWriter |  Major | mapreduce | Zhan Zhang | Zhan Zhang |
| [HBASE-16033](https://issues.apache.org/jira/browse/HBASE-16033) | Add more details in logging of responseTooSlow/TooLarge |  Major | . | Yu Li | Yu Li |
| [HBASE-16045](https://issues.apache.org/jira/browse/HBASE-16045) | endtime argument for VerifyReplication was incorrectly specified in usage |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16058](https://issues.apache.org/jira/browse/HBASE-16058) | TestHRegion fails on 1.4 builds |  Major | test | Mikhail Antonov | Enis Soztutar |
| [HBASE-16054](https://issues.apache.org/jira/browse/HBASE-16054) | OutOfMemory exception when using AsyncRpcClient with encryption |  Major | . | Colin Ma | Colin Ma |
| [HBASE-16059](https://issues.apache.org/jira/browse/HBASE-16059) | Region normalizer fails to trigger merge action where one of the regions is empty |  Major | master | Romil Choksi | Ted Yu |
| [HBASE-15783](https://issues.apache.org/jira/browse/HBASE-15783) | AccessControlConstants#OP\_ATTRIBUTE\_ACL\_STRATEGY\_CELL\_FIRST not used any more. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16062](https://issues.apache.org/jira/browse/HBASE-16062) | Improper error handling in WAL Reader/Writer creation |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16012](https://issues.apache.org/jira/browse/HBASE-16012) | Major compaction can't work due to obsolete scanner read point in RegionServer |  Major | Compaction, Scanners | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16070](https://issues.apache.org/jira/browse/HBASE-16070) | Mapreduce Serialization classes do not have Interface audience |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16090](https://issues.apache.org/jira/browse/HBASE-16090) | ResultScanner is not closed in SyncTable#finishRemainingHashRanges() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16118](https://issues.apache.org/jira/browse/HBASE-16118) | TestHFileOutputFormat2 is broken |  Major | test | Mikhail Antonov | ramkrishna.s.vasudevan |
| [HBASE-16122](https://issues.apache.org/jira/browse/HBASE-16122) | PerformanceEvaluation should provide user friendly hint when client threads argument is missing |  Minor | . | Ted Yu | Konstantin Ryakhovskiy |
| [HBASE-15976](https://issues.apache.org/jira/browse/HBASE-15976) | RegionServerMetricsWrapperRunnable will be failure  when disable blockcache. |  Major | . | Liu Junhong | Jingcheng Du |
| [HBASE-16129](https://issues.apache.org/jira/browse/HBASE-16129) | check\_compatibility.sh is broken when using Java API Compliance Checker v1.7 |  Major | test | Dima Spivak | Dima Spivak |
| [HBASE-16093](https://issues.apache.org/jira/browse/HBASE-16093) | Splits failed before creating daughter regions leave meta inconsistent |  Critical | master, Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-16125](https://issues.apache.org/jira/browse/HBASE-16125) | RegionMover uses hardcoded, Unix-style tmp folder - breaks Windows |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16159](https://issues.apache.org/jira/browse/HBASE-16159) | OutOfMemory exception when using AsyncRpcClient with encryption to read rpc response |  Major | . | Colin Ma | Colin Ma |
| [HBASE-15844](https://issues.apache.org/jira/browse/HBASE-15844) | We should respect hfile.block.index.cacheonwrite when write intermediate index Block |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16135](https://issues.apache.org/jira/browse/HBASE-16135) | PeerClusterZnode under rs of removed peer may never be deleted |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-16091](https://issues.apache.org/jira/browse/HBASE-16091) | Canary takes lot more time when there are delete markers in the table |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-16177](https://issues.apache.org/jira/browse/HBASE-16177) | In dev mode thrift server can't be run |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16157](https://issues.apache.org/jira/browse/HBASE-16157) | The incorrect block cache count and size are caused by removing duplicate block key in the LruBlockCache |  Trivial | . | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-16182](https://issues.apache.org/jira/browse/HBASE-16182) | Increase IntegrationTestRpcClient timeout |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16190](https://issues.apache.org/jira/browse/HBASE-16190) | IntegrationTestDDLMasterFailover failed with IllegalArgumentException: n must be positive |  Minor | . | Romil Choksi | Romil Choksi |
| [HBASE-15925](https://issues.apache.org/jira/browse/HBASE-15925) | compat-module maven variable not evaluated |  Blocker | build | Nick Dimiduk | Sean Busbey |
| [HBASE-16074](https://issues.apache.org/jira/browse/HBASE-16074) | ITBLL fails, reports lost big or tiny families |  Blocker | integration tests | Mikhail Antonov | stack |
| [HBASE-16160](https://issues.apache.org/jira/browse/HBASE-16160) | Get the UnsupportedOperationException when using delegation token with encryption |  Blocker | . | Colin Ma | Colin Ma |
| [HBASE-16081](https://issues.apache.org/jira/browse/HBASE-16081) | Replication remove\_peer gets stuck and blocks WAL rolling |  Blocker | regionserver, Replication | Ashu Pachauri | Joseph |
| [HBASE-16055](https://issues.apache.org/jira/browse/HBASE-16055) | PutSortReducer loses any Visibility/acl attribute set on the Puts |  Critical | security | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16150](https://issues.apache.org/jira/browse/HBASE-16150) | Remove ConcurrentIndex |  Major | . | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-16211](https://issues.apache.org/jira/browse/HBASE-16211) | JMXCacheBuster restarting the metrics system might cause tests to hang |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16227](https://issues.apache.org/jira/browse/HBASE-16227) | [Shell] Column value formatter not working in scans |  Major | . | Appy | Appy |
| [HBASE-16095](https://issues.apache.org/jira/browse/HBASE-16095) | Add priority to TableDescriptor and priority region open thread pool |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16235](https://issues.apache.org/jira/browse/HBASE-16235) | TestSnapshotFromMaster#testSnapshotHFileArchiving will fail if there are too many hfiles |  Trivial | . | ChiaPing Tsai | ChiaPing Tsai |
| [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | Replication queue's lock will live forever if RS acquiring the lock has died prematurely |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16172](https://issues.apache.org/jira/browse/HBASE-16172) | Unify the retry logic in ScannerCallableWithReplicas and RpcRetryingCallerWithReadReplicas |  Major | . | Yu Li | Ted Yu |
| [HBASE-16237](https://issues.apache.org/jira/browse/HBASE-16237) | Blocks for hbase:meta table are not cached in L1 cache |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16244](https://issues.apache.org/jira/browse/HBASE-16244) | LocalHBaseCluster start timeout should be configurable |  Major | hbase | Siddharth Wagle |  |
| [HBASE-16272](https://issues.apache.org/jira/browse/HBASE-16272) | Overflow in ServerName's compareTo method |  Major | hbase | huaxiang sun | huaxiang sun |
| [HBASE-16221](https://issues.apache.org/jira/browse/HBASE-16221) | Thrift server drops connection on long scans |  Major | Thrift | Ashu Pachauri | Joseph |
| [HBASE-16281](https://issues.apache.org/jira/browse/HBASE-16281) | TestMasterReplication is flaky |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16293](https://issues.apache.org/jira/browse/HBASE-16293) | TestSnapshotFromMaster#testSnapshotHFileArchiving flakey |  Major | test | huaxiang sun | huaxiang sun |
| [HBASE-16096](https://issues.apache.org/jira/browse/HBASE-16096) | Replication keeps accumulating znodes |  Major | Replication | Ashu Pachauri | Joseph |
| [HBASE-16288](https://issues.apache.org/jira/browse/HBASE-16288) | HFile intermediate block level indexes might recurse forever creating multi TB files |  Critical | HFile | Enis Soztutar | Enis Soztutar |
| [HBASE-16296](https://issues.apache.org/jira/browse/HBASE-16296) | Reverse scan performance degrades when using filter lists |  Major | Filters | James Taylor | Ted Yu |
| [HBASE-16284](https://issues.apache.org/jira/browse/HBASE-16284) | Unauthorized client can shutdown the cluster |  Major | . | Deokwoo Han | Deokwoo Han |
| [HBASE-16315](https://issues.apache.org/jira/browse/HBASE-16315) | RegionSizeCalculator prints region names as binary without escapes |  Trivial | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16319](https://issues.apache.org/jira/browse/HBASE-16319) | Fix TestCacheOnWrite after HBASE-16288 |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16301](https://issues.apache.org/jira/browse/HBASE-16301) | Trigger flush without waiting when compaction is disabled on a table |  Minor | . | huaxiang sun | huaxiang sun |
| [HBASE-16271](https://issues.apache.org/jira/browse/HBASE-16271) | Fix logging and re-run the test in IntegrationTestBulkLoad |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16350](https://issues.apache.org/jira/browse/HBASE-16350) | Undo server abort from HBASE-14968 |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15574](https://issues.apache.org/jira/browse/HBASE-15574) | Minor typo on HRegionServerCommandLine.java |  Trivial | . | Lim Chee Hau | Lim Chee Hau |
| [HBASE-16359](https://issues.apache.org/jira/browse/HBASE-16359) | NullPointerException in RSRpcServices.openRegion() |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15866](https://issues.apache.org/jira/browse/HBASE-15866) | Split hbase.rpc.timeout into \*.read.timeout and \*.write.timeout |  Major | . | Andrew Purtell | Vivek Koppuru |
| [HBASE-16303](https://issues.apache.org/jira/browse/HBASE-16303) | FilterList with MUST\_PASS\_ONE optimization |  Major | Filters | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16367](https://issues.apache.org/jira/browse/HBASE-16367) | Race between master and region server initialization may lead to premature server abort |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16377](https://issues.apache.org/jira/browse/HBASE-16377) | ServerName check is ineffective in region\_mover.rb |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16368](https://issues.apache.org/jira/browse/HBASE-16368) | test\*WhenRegionMove in TestPartialResultsFromClientSide is flaky |  Major | Scanners | Guanghao Zhang | Phil Yang |
| [HBASE-15635](https://issues.apache.org/jira/browse/HBASE-15635) | Mean age of Blocks in cache (seconds) on webUI should be greater than zero |  Major | . | Heng Chen | Heng Chen |
| [HBASE-16429](https://issues.apache.org/jira/browse/HBASE-16429) | FSHLog: deadlock if rollWriter called when ring buffer filled with appends |  Critical | . | Yu Li | Yu Li |
| [HBASE-7621](https://issues.apache.org/jira/browse/HBASE-7621) | REST client (RemoteHTable) doesn't support binary row keys |  Major | REST | Craig Muchinsky | Keith David Winkler |
| [HBASE-16444](https://issues.apache.org/jira/browse/HBASE-16444) | CellUtil#estimatedSerializedSizeOfKey() should consider KEY\_INFRASTRUCTURE\_SIZE |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16360](https://issues.apache.org/jira/browse/HBASE-16360) | TableMapReduceUtil addHBaseDependencyJars has the wrong class name for PrefixTreeCodec |  Minor | mapreduce | Matteo Bertozzi | Jing Pu Chen |
| [HBASE-16464](https://issues.apache.org/jira/browse/HBASE-16464) | archive folder grows bigger and bigger due to corrupt snapshot under tmp dir |  Major | snapshots | Heng Chen | Heng Chen |
| [HBASE-16471](https://issues.apache.org/jira/browse/HBASE-16471) | Region Server metrics context will be wrong when machine hostname contain "master" word |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16270](https://issues.apache.org/jira/browse/HBASE-16270) | Handle duplicate clearing of snapshot in region replicas |  Major | Replication | Robert Yokota |  |
| [HBASE-16304](https://issues.apache.org/jira/browse/HBASE-16304) | HRegion#RegionScannerImpl#handleFileNotFoundException may lead to deadlock when trying to obtain write lock on updatesLock |  Critical | . | mingmin xu | Ted Yu |
| [HBASE-16495](https://issues.apache.org/jira/browse/HBASE-16495) | When accessed via Thrift, all column families have timeToLive equal to -1 |  Minor | Thrift | Tigran Saluev | Tigran Saluev |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15679](https://issues.apache.org/jira/browse/HBASE-15679) | Assertion on wrong variable in TestReplicationThrottler#testThrottling |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15923](https://issues.apache.org/jira/browse/HBASE-15923) | Shell rows counter test fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16051](https://issues.apache.org/jira/browse/HBASE-16051) | TestScannerHeartbeatMessages fails on some machines |  Major | test | Mikhail Antonov | Phil Yang |
| [HBASE-16049](https://issues.apache.org/jira/browse/HBASE-16049) | TestRowProcessorEndpoint is failing on Apache Builds |  Major | . | Mikhail Antonov | Guanghao Zhang |
| [HBASE-16418](https://issues.apache.org/jira/browse/HBASE-16418) | Reduce duration of sleep waiting for region reopen in IntegrationTestBulkLoad#installSlowingCoproc() |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15342](https://issues.apache.org/jira/browse/HBASE-15342) | create branch-1.3 and update branch-1 poms to 1.4.0-SNAPSHOT |  Major | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15365](https://issues.apache.org/jira/browse/HBASE-15365) | Do not write to '/tmp' in TestHBaseConfiguration |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-15371](https://issues.apache.org/jira/browse/HBASE-15371) | Procedure V2 - Completed support parent-child procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15435](https://issues.apache.org/jira/browse/HBASE-15435) | Add WAL (in bytes) written metric |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15479](https://issues.apache.org/jira/browse/HBASE-15479) | No more garbage or beware of autoboxing |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15460](https://issues.apache.org/jira/browse/HBASE-15460) | Fix infer issues in hbase-common |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15464](https://issues.apache.org/jira/browse/HBASE-15464) | Flush / Compaction metrics revisited |  Major | metrics | Enis Soztutar | Enis Soztutar |
| [HBASE-15488](https://issues.apache.org/jira/browse/HBASE-15488) | Add ACL for setting split merge switch |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15412](https://issues.apache.org/jira/browse/HBASE-15412) | Add average region size metric |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15384](https://issues.apache.org/jira/browse/HBASE-15384) | Avoid using '/tmp' directory in TestBulkLoad |  Major | test | Heng Chen | Heng Chen |
| [HBASE-15389](https://issues.apache.org/jira/browse/HBASE-15389) | Write out multiple files when compaction |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15400](https://issues.apache.org/jira/browse/HBASE-15400) | Use DateTieredCompactor for Date Tiered Compaction |  Major | Compaction | Clara Xiong | Clara Xiong |
| [HBASE-15537](https://issues.apache.org/jira/browse/HBASE-15537) | Make multi WAL work with WALs other than FSHLog |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-15527](https://issues.apache.org/jira/browse/HBASE-15527) | Refactor Compactor related classes |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15665](https://issues.apache.org/jira/browse/HBASE-15665) | Support using different StoreFileComparators for different CompactionPolicies |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored |  Major | BucketCache | stack | stack |
| [HBASE-15640](https://issues.apache.org/jira/browse/HBASE-15640) | L1 cache doesn't give fair warning that it is showing partial stats only when it hits limit |  Major | BlockCache | stack | stack |
| [HBASE-15518](https://issues.apache.org/jira/browse/HBASE-15518) | Add Per-Table metrics back |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15662](https://issues.apache.org/jira/browse/HBASE-15662) | Hook up JvmPauseMonitor to REST server |  Major | metrics, REST | Andrew Purtell | Andrew Purtell |
| [HBASE-15663](https://issues.apache.org/jira/browse/HBASE-15663) | Hook up JvmPauseMonitor to ThriftServer |  Major | metrics, Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-15368](https://issues.apache.org/jira/browse/HBASE-15368) | Add pluggable window support |  Major | Compaction | Duo Zhang | Duo Zhang |
| [HBASE-15683](https://issues.apache.org/jira/browse/HBASE-15683) | Min latency in latency histograms are emitted as Long.MAX\_VALUE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15366](https://issues.apache.org/jira/browse/HBASE-15366) | Add doc, trace-level logging, and test around hfileblock |  Major | BlockCache | stack | stack |
| [HBASE-15671](https://issues.apache.org/jira/browse/HBASE-15671) | Add per-table metrics on memstore, storefile and regionsize |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15392](https://issues.apache.org/jira/browse/HBASE-15392) | Single Cell Get reads two HFileBlocks |  Major | BucketCache | stack | stack |
| [HBASE-15713](https://issues.apache.org/jira/browse/HBASE-15713) | Backport "HBASE-15477 Do not save 'next block header' when we cache hfileblocks" |  Major | BucketCache | stack | stack |
| [HBASE-15658](https://issues.apache.org/jira/browse/HBASE-15658) | RegionServerCallable / RpcRetryingCaller clear meta cache on retries |  Critical | Client | Gary Helmling | Gary Helmling |
| [HBASE-15675](https://issues.apache.org/jira/browse/HBASE-15675) | Add more details about region on table.jsp |  Major | . | Yu Li | Yu Li |
| [HBASE-15740](https://issues.apache.org/jira/browse/HBASE-15740) | Replication source.shippedKBs metric is undercounting because it is in KB |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15865](https://issues.apache.org/jira/browse/HBASE-15865) | Move TestTableDeleteFamilyHandler and TestTableDescriptorModification handler tests to procedure |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15927](https://issues.apache.org/jira/browse/HBASE-15927) | Remove HMaster.assignRegion() |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-15994](https://issues.apache.org/jira/browse/HBASE-15994) | Allow selection of RpcSchedulers |  Major | . | stack | stack |
| [HBASE-15935](https://issues.apache.org/jira/browse/HBASE-15935) | Have a separate Walker task running concurrently with Generator |  Minor | integration tests | Joseph | Joseph |
| [HBASE-16176](https://issues.apache.org/jira/browse/HBASE-16176) | Bug fixes/improvements on HBASE-15650 Remove TimeRangeTracker as point of contention when many threads reading a StoreFile |  Major | Performance | stack | stack |
| [HBASE-16092](https://issues.apache.org/jira/browse/HBASE-16092) | Procedure v2 - complete child procedure support |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16195](https://issues.apache.org/jira/browse/HBASE-16195) | Should not add chunk into chunkQueue if not using chunk pool in HeapMemStoreLAB |  Major | . | Yu Li | Yu Li |
| [HBASE-16189](https://issues.apache.org/jira/browse/HBASE-16189) | [Rolling Upgrade] 2.0 hfiles cannot be opened by 1.x servers |  Critical | migration | Enis Soztutar | ramkrishna.s.vasudevan |
| [HBASE-16236](https://issues.apache.org/jira/browse/HBASE-16236) | Typo in javadoc of InstancePending |  Trivial | Zookeeper | Hiroshi Ikeda | Hiroshi Ikeda |
| [HBASE-16280](https://issues.apache.org/jira/browse/HBASE-16280) | Use hash based map in SequenceIdAccounting |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-16317](https://issues.apache.org/jira/browse/HBASE-16317) | revert all ESAPI changes |  Blocker | dependencies, security | Sean Busbey | Nick Dimiduk |
| [HBASE-16285](https://issues.apache.org/jira/browse/HBASE-16285) | Drop RPC requests if it must be considered as timeout at client |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16452](https://issues.apache.org/jira/browse/HBASE-16452) | Procedure v2 - Make ProcedureWALPrettyPrinter extend Tool |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16318](https://issues.apache.org/jira/browse/HBASE-16318) | fail build if license isn't in whitelist |  Major | build, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16485](https://issues.apache.org/jira/browse/HBASE-16485) | Procedure V2 - Add support to addChildProcedure() as last "step" in StateMachineProcedure |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16451](https://issues.apache.org/jira/browse/HBASE-16451) | Procedure v2 - Test WAL protobuf entry size limit |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15729](https://issues.apache.org/jira/browse/HBASE-15729) | Remove old JDiff wrapper scripts in dev-support |  Minor | build, community | Dima Spivak | Dima Spivak |
| [HBASE-4368](https://issues.apache.org/jira/browse/HBASE-4368) | Expose processlist in shell (per regionserver and perhaps by cluster) |  Major | shell | stack | Talat UYARER |
| [HBASE-14635](https://issues.apache.org/jira/browse/HBASE-14635) | Fix flaky test TestSnapshotCloneIndependence |  Major | test | stack | Appy |
| [HBASE-15895](https://issues.apache.org/jira/browse/HBASE-15895) | remove unmaintained jenkins build analysis tool. |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-15888](https://issues.apache.org/jira/browse/HBASE-15888) | Extend HBASE-12769 for bulk load data replication |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-16073](https://issues.apache.org/jira/browse/HBASE-16073) | update compatibility\_checker for jacc dropping comma sep args |  Critical | build, documentation | Sean Busbey | Dima Spivak |
| [HBASE-16467](https://issues.apache.org/jira/browse/HBASE-16467) | Move AbstractHBaseTool to hbase-common |  Trivial | . | Appy | Appy |
| [HBASE-16376](https://issues.apache.org/jira/browse/HBASE-16376) | Document implicit side-effects on partial results when calling Scan#setBatch(int) |  Minor | API, documentation | Josh Elser | Josh Elser |


