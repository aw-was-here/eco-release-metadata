
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

## Release 1.4.0 - Unreleased (as of 2017-05-04)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15376](https://issues.apache.org/jira/browse/HBASE-15376) | ScanNext metric is size-based while every other per-operation metric is time based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15377](https://issues.apache.org/jira/browse/HBASE-15377) | Per-RS Get metric is time based, per-region metric is size-based |  Major | . | Enis Soztutar | Heng Chen |
| [HBASE-15323](https://issues.apache.org/jira/browse/HBASE-15323) | Hbase Rest CheckAndDeleteAPi should be able to delete more cells |  Major | hbase | Ajith | Ajith |
| [HBASE-15950](https://issues.apache.org/jira/browse/HBASE-15950) | Fix memstore size estimates to be more tighter |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16355](https://issues.apache.org/jira/browse/HBASE-16355) | hbase-client dependency on hbase-common test-jar should be test scope |  Major | Client, dependencies | Sean Busbey | Stevo Slavic |
| [HBASE-16321](https://issues.apache.org/jira/browse/HBASE-16321) | Ensure findbugs jsr305 jar isn\'t present |  Blocker | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16340](https://issues.apache.org/jira/browse/HBASE-16340) | ensure no Xerces jars included |  Critical | dependencies | Sean Busbey | Sean Busbey |
| [HBASE-15297](https://issues.apache.org/jira/browse/HBASE-15297) | error message is wrong when a wrong namspace is specified in grant in hbase shell |  Minor | shell | Xiang Li | Umesh Agashe |
| [HBASE-16765](https://issues.apache.org/jira/browse/HBASE-16765) | New SteppingRegionSplitPolicy, avoid too aggressive spread of regions for small tables. |  Critical | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-16972](https://issues.apache.org/jira/browse/HBASE-16972) | Log more details for Scan#next request when responseTooSlow |  Major | Operability | Yu Li | Yu Li |
| [HBASE-17017](https://issues.apache.org/jira/browse/HBASE-17017) | Remove the current per-region latency histogram metrics |  Major | metrics | Duo Zhang | Enis Soztutar |
| [HBASE-17508](https://issues.apache.org/jira/browse/HBASE-17508) | Unify the implementation of small scan and regular scan for sync client |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17599](https://issues.apache.org/jira/browse/HBASE-17599) | Use mayHaveMoreCellsInRow instead of isPartial |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17472](https://issues.apache.org/jira/browse/HBASE-17472) | Correct the semantic of  permission grant |  Major | Admin | Zheng Hu | Zheng Hu |
| [HBASE-16584](https://issues.apache.org/jira/browse/HBASE-16584) | Backport the new ipc implementation in HBASE-16432 to branch-1 |  Major | Client, IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-17595](https://issues.apache.org/jira/browse/HBASE-17595) | Add partial result support for small/limited scan |  Critical | asyncclient, Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17956](https://issues.apache.org/jira/browse/HBASE-17956) | Raw scan should ignore TTL |  Major | scan | Duo Zhang | Duo Zhang |


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
| [HBASE-9465](https://issues.apache.org/jira/browse/HBASE-9465) | Push entries to peer clusters serially |  Critical | regionserver, Replication | Honghua Feng | Phil Yang |
| [HBASE-16213](https://issues.apache.org/jira/browse/HBASE-16213) | A new HFileBlock structure for fast random get |  Major | Performance | binlijin | binlijin |
| [HBASE-16388](https://issues.apache.org/jira/browse/HBASE-16388) | Prevent client threads being blocked by only one slow region server |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16677](https://issues.apache.org/jira/browse/HBASE-16677) | Add table size (total store file size) to table page |  Minor | website | Guang Yang | Guang Yang |
| [HBASE-17181](https://issues.apache.org/jira/browse/HBASE-17181) | Let HBase thrift2 support TThreadedSelectorServer |  Minor | Thrift | Jian Yi | Jian Yi |
| [HBASE-17737](https://issues.apache.org/jira/browse/HBASE-17737) | Thrift2 proxy should support scan timeRange per column family |  Major | Thrift | Yechao Chen | Yechao Chen |
| [HBASE-17757](https://issues.apache.org/jira/browse/HBASE-17757) | Unify blocksize after encoding to decrease memory fragment |  Major | . | Allan Yang | Allan Yang |


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
| [HBASE-15478](https://issues.apache.org/jira/browse/HBASE-15478) | add comments to FSHLog explaining why syncRunnerIndex won\'t overflow |  Minor | wal | Sean Busbey | Sean Busbey |
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
| [HBASE-16033](https://issues.apache.org/jira/browse/HBASE-16033) | Add more details in logging of responseTooSlow/TooLarge |  Major | Operability | Yu Li | Yu Li |
| [HBASE-5291](https://issues.apache.org/jira/browse/HBASE-5291) | Add Kerberos HTTP SPNEGO authentication support to HBase web consoles |  Major | master, regionserver, security | Andrew Purtell | Josh Elser |
| [HBASE-16048](https://issues.apache.org/jira/browse/HBASE-16048) | Tag InternalScanner with LimitedPrivate(HBaseInterfaceAudience.COPROC) |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15600](https://issues.apache.org/jira/browse/HBASE-15600) | Add provision for adding mutations to memstore or able to write to same region in batchMutate coprocessor hooks |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-15870](https://issues.apache.org/jira/browse/HBASE-15870) | Specify columns in REST multi gets |  Minor | REST | Dean Gurvitz | Matt Warhaftig |
| [HBASE-16085](https://issues.apache.org/jira/browse/HBASE-16085) | Add on metric for failed compactions |  Major | . | Elliott Clark | Gary Helmling |
| [HBASE-15353](https://issues.apache.org/jira/browse/HBASE-15353) | Add metric for number of CallQueueTooBigException\'s |  Minor | IPC/RPC, metrics | Elliott Clark | Jingcheng Du |
| [HBASE-16089](https://issues.apache.org/jira/browse/HBASE-16089) | Add on FastPath for CoDel |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14007](https://issues.apache.org/jira/browse/HBASE-14007) | Writing to table through MR should fail upfront if table does not exist/is disabled |  Minor | mapreduce | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-16149](https://issues.apache.org/jira/browse/HBASE-16149) | Log the underlying RPC exception in RpcRetryingCallerImpl |  Minor | . | Jerry He | Jerry He |
| [HBASE-16124](https://issues.apache.org/jira/browse/HBASE-16124) | Make check\_compatibility.sh less verbose when building HBase |  Minor | build, test | Dima Spivak | Dima Spivak |
| [HBASE-16147](https://issues.apache.org/jira/browse/HBASE-16147) | Add ruby wrapper for getting compaction state |  Major | shell | Ted Yu | Ted Yu |
| [HBASE-16114](https://issues.apache.org/jira/browse/HBASE-16114) | Get regionLocation of required regions only for MR jobs |  Minor | mapreduce | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-16108](https://issues.apache.org/jira/browse/HBASE-16108) | RowCounter should support multiple key ranges |  Major | . | Geoffrey Jacoby | Konstantin Ryakhovskiy |
| [HBASE-14548](https://issues.apache.org/jira/browse/HBASE-14548) | Expand how table coprocessor jar and dependency path can be specified |  Major | Coprocessors | Jerry He | Xiang Li |
| [HBASE-16087](https://issues.apache.org/jira/browse/HBASE-16087) | Replication shouldn\'t start on a master if if only hosts system tables |  Major | . | Elliott Clark | Elliott Clark |
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
| [HBASE-12770](https://issues.apache.org/jira/browse/HBASE-12770) | Don\'t transfer all the queued hlogs of a dead server to the same alive server |  Minor | Replication | Jianwei Cui | Phil Yang |
| [HBASE-16299](https://issues.apache.org/jira/browse/HBASE-16299) | Update REST API scanner with ability to do reverse scan |  Minor | REST | Bjorn Olsen | Minwoo Kang |
| [HBASE-14345](https://issues.apache.org/jira/browse/HBASE-14345) | Consolidate printUsage in IntegrationTestLoadAndVerify |  Trivial | integration tests | Nick Dimiduk | Reid Chan |
| [HBASE-16379](https://issues.apache.org/jira/browse/HBASE-16379) | [replication] Minor improvement to replication/copy\_tables\_desc.rb |  Trivial | Replication, shell | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16419](https://issues.apache.org/jira/browse/HBASE-16419) | check REPLICATION\_SCOPE\'s value more stringently |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-16455](https://issues.apache.org/jira/browse/HBASE-16455) | Provide API for obtaining all the WAL files |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16450](https://issues.apache.org/jira/browse/HBASE-16450) | Shell tool to dump replication queues |  Major | Operability, Replication | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-16448](https://issues.apache.org/jira/browse/HBASE-16448) | Custom metrics for custom replication endpoints |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-16486](https://issues.apache.org/jira/browse/HBASE-16486) | Unify system table creation using the same createSystemTable API. |  Minor | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16508](https://issues.apache.org/jira/browse/HBASE-16508) | Move UnexpectedStateException to common |  Trivial | . | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16224](https://issues.apache.org/jira/browse/HBASE-16224) | Reduce the number of RPCs for the large PUTs |  Minor | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16502](https://issues.apache.org/jira/browse/HBASE-16502) | Reduce garbage in BufferedDataBlockEncoder |  Major | . | binlijin | binlijin |
| [HBASE-16399](https://issues.apache.org/jira/browse/HBASE-16399) | Provide an API to get list of failed regions and servername in Canary |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-16541](https://issues.apache.org/jira/browse/HBASE-16541) | Avoid unnecessary cell copy in Result#compareResults |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16086](https://issues.apache.org/jira/browse/HBASE-16086) | TableCfWALEntryFilter and ScopeWALEntryFilter should not redundantly iterate over cells. |  Major | . | churro morales | Vincent Poon |
| [HBASE-16616](https://issues.apache.org/jira/browse/HBASE-16616) | Rpc handlers stuck on ThreadLocalMap.expungeStaleEntry |  Major | Performance | Tomu Tsuruhara | Tomu Tsuruhara |
| [HBASE-16640](https://issues.apache.org/jira/browse/HBASE-16640) | TimeoutBlockingQueue#remove() should return whether the entry is removed |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16423](https://issues.apache.org/jira/browse/HBASE-16423) | Add re-compare option to VerifyReplication to avoid occasional inconsistent rows |  Minor | Replication | Jianwei Cui | Jianwei Cui |
| [HBASE-16667](https://issues.apache.org/jira/browse/HBASE-16667) | Building with JDK 8: ignoring option MaxPermSize=256m |  Minor | build | Niels Basjes | Niels Basjes |
| [HBASE-16705](https://issues.apache.org/jira/browse/HBASE-16705) | Eliminate long to Long auto boxing in LongComparator |  Minor | Filters | binlijin | binlijin |
| [HBASE-16694](https://issues.apache.org/jira/browse/HBASE-16694) | Reduce garbage for onDiskChecksum in HFileBlock |  Minor | . | binlijin | binlijin |
| [HBASE-16672](https://issues.apache.org/jira/browse/HBASE-16672) | Add option for bulk load to always copy hfile(s) instead of renaming |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16772](https://issues.apache.org/jira/browse/HBASE-16772) | Add verbose option to VerifyReplication for logging good rows |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16657](https://issues.apache.org/jira/browse/HBASE-16657) | Expose per-region last major compaction timestamp in RegionServer UI |  Minor | regionserver, UI | Gary Helmling | Dustin Pho |
| [HBASE-16773](https://issues.apache.org/jira/browse/HBASE-16773) | AccessController should access local region if possible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16661](https://issues.apache.org/jira/browse/HBASE-16661) | Add last major compaction age to per-region metrics |  Minor | . | Gary Helmling | Dustin Pho |
| [HBASE-16832](https://issues.apache.org/jira/browse/HBASE-16832) | Reduce the default number of versions in Meta table for branch-1 |  Major | . | binlijin | binlijin |
| [HBASE-17006](https://issues.apache.org/jira/browse/HBASE-17006) | Add names to threads for better debugability of thread dumps |  Minor | Operability | Appy | Appy |
| [HBASE-16946](https://issues.apache.org/jira/browse/HBASE-16946) | Provide Raw scan as an option in VerifyReplication |  Minor | hbase | Sreekar Pallapothu | Sreekar Pallapothu |
| [HBASE-17004](https://issues.apache.org/jira/browse/HBASE-17004) | Refactor IntegrationTestManyRegions to use @ClassRule for timing out |  Minor | integration tests | Appy | Appy |
| [HBASE-16840](https://issues.apache.org/jira/browse/HBASE-16840) | Reuse cell\'s timestamp and type in ScanQueryMatcher |  Minor | . | binlijin | binlijin |
| [HBASE-17026](https://issues.apache.org/jira/browse/HBASE-17026) | VerifyReplication log should distinguish whether good row key is result of revalidation |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17077](https://issues.apache.org/jira/browse/HBASE-17077) | Don\'t copy the replication queue belonging to the peer which has been deleted |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16708](https://issues.apache.org/jira/browse/HBASE-16708) | Expose endpoint Coprocessor name in "responseTooSlow" log messages |  Major | . | Nick Dimiduk | Yi Liang |
| [HBASE-17088](https://issues.apache.org/jira/browse/HBASE-17088) | Refactor RWQueueRpcExecutor/BalancedQueueRpcExecutor/RpcExecutor |  Major | rpc | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16561](https://issues.apache.org/jira/browse/HBASE-16561) | Add metrics about read/write/scan queue length and active read/write/scan handler count |  Minor | IPC/RPC, metrics | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16302](https://issues.apache.org/jira/browse/HBASE-16302) | age of last shipped op and age of last applied op should be histograms |  Major | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17178](https://issues.apache.org/jira/browse/HBASE-17178) | Add region balance throttling |  Major | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17211](https://issues.apache.org/jira/browse/HBASE-17211) | Add more details in log when UnknownScannerException thrown in ScannerCallable |  Minor | . | Yu Li | Yu Li |
| [HBASE-17212](https://issues.apache.org/jira/browse/HBASE-17212) | Should add null checker on table name in HTable constructor and RegionServerCallable |  Major | . | Yu Li | Yu Li |
| [HBASE-17205](https://issues.apache.org/jira/browse/HBASE-17205) | Add a metric for the duration of region in transition |  Minor | Region Assignment | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17276](https://issues.apache.org/jira/browse/HBASE-17276) | Reduce log spam from WrongRegionException in large multi()\'s |  Minor | regionserver | Josh Elser | Josh Elser |
| [HBASE-17296](https://issues.apache.org/jira/browse/HBASE-17296) | Provide per peer throttling for replication |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17318](https://issues.apache.org/jira/browse/HBASE-17318) | Increment does not add new column if the increment amount is zero at first time writing |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17332](https://issues.apache.org/jira/browse/HBASE-17332) | Replace HashMap to Array for DataBlockEncoding.idToEncoding |  Major | . | binlijin | binlijin |
| [HBASE-17292](https://issues.apache.org/jira/browse/HBASE-17292) | Add observer notification before bulk loaded hfile is moved to region directory |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15924](https://issues.apache.org/jira/browse/HBASE-15924) | Enhance hbase services autorestart capability to hbase-daemon.sh |  Major | . | Loknath Priyatham Teja Singamsetty | Loknath Priyatham Teja Singamsetty |
| [HBASE-17314](https://issues.apache.org/jira/browse/HBASE-17314) | Limit total buffered size for all replication sources |  Major | Replication | Phil Yang | Phil Yang |
| [HBASE-17494](https://issues.apache.org/jira/browse/HBASE-17494) | Guard against cloning family of all cells if no data need be replicated |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17488](https://issues.apache.org/jira/browse/HBASE-17488) | WALEdit should be lazily instantiated |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16698](https://issues.apache.org/jira/browse/HBASE-16698) | Performance issue: handlers stuck waiting for CountDownLatch inside WALKey#getWriteEntry under high writing workload |  Major | Performance | Yu Li | Yu Li |
| [HBASE-17462](https://issues.apache.org/jira/browse/HBASE-17462) | Use sliding window for read/write request costs in StochasticLoadBalancer |  Major | . | Ted Yu | Tim Brown |
| [HBASE-17543](https://issues.apache.org/jira/browse/HBASE-17543) | Create additional ReplicationEndpoint WALEntryFilters by configuration |  Major | Replication | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-17437](https://issues.apache.org/jira/browse/HBASE-17437) | Support specifying a WAL directory outside of the root directory |  Major | Filesystem Integration, wal | Yishan Yang | Zach York |
| [HBASE-17280](https://issues.apache.org/jira/browse/HBASE-17280) | Add mechanism to control hbase cleaner behavior |  Minor | Client, hbase, shell | Ajay Jadhav | Ajay Jadhav |
| [HBASE-17637](https://issues.apache.org/jira/browse/HBASE-17637) | Update progress more frequently in IntegrationTestBigLinkedList.Generator.persist |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17627](https://issues.apache.org/jira/browse/HBASE-17627) | Active workers metric for thrift |  Major | Thrift | Ashu Pachauri | Ashu Pachauri |
| [HBASE-13718](https://issues.apache.org/jira/browse/HBASE-13718) | Add a pretty printed table description to the table detail page of HBase\'s master |  Minor | hbase | Joao Girao | Joao Girao |
| [HBASE-17634](https://issues.apache.org/jira/browse/HBASE-17634) | Clean up the usage of Result.isPartial |  Major | scan | Duo Zhang | Jan Hentschel |
| [HBASE-17689](https://issues.apache.org/jira/browse/HBASE-17689) | Add support for table.existsAll in thrift2 THBaseservice |  Major | Thrift | Yechao Chen | Yechao Chen |
| [HBASE-16188](https://issues.apache.org/jira/browse/HBASE-16188) | Add EventCounter information to log4j properties file |  Minor | . | Lars George | Gopi Krishnan Nambiar |
| [HBASE-15941](https://issues.apache.org/jira/browse/HBASE-15941) | HBCK repair should not unsplit healthy splitted region |  Major | hbck | Stephen Yuan Jiang | Esteban Gutierrez |
| [HBASE-16977](https://issues.apache.org/jira/browse/HBASE-16977) | VerifyReplication should log a printable representation of the row keys |  Minor | Replication | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17731](https://issues.apache.org/jira/browse/HBASE-17731) | Fractional latency reporting in MultiThreadedAction |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-15429](https://issues.apache.org/jira/browse/HBASE-15429) | Add a split policy for busy regions |  Major | regionserver | Ashu Pachauri | Ashu Pachauri |
| [HBASE-17778](https://issues.apache.org/jira/browse/HBASE-17778) | Remove the testing code in the AsyncRequestFutureImpl |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17623](https://issues.apache.org/jira/browse/HBASE-17623) | Reuse the bytes array when building the hfile block |  Major | HFile | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17831](https://issues.apache.org/jira/browse/HBASE-17831) | Support small scan in thrift2 |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17837](https://issues.apache.org/jira/browse/HBASE-17837) | Backport HBASE-15314 to branch-1.3 |  Major | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16969](https://issues.apache.org/jira/browse/HBASE-16969) | RegionCoprocessorServiceExec should override the toString() for debugging |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16469](https://issues.apache.org/jira/browse/HBASE-16469) | Several log refactoring/improvement suggestions |  Major | Operability | Nemo Chen | Nemo Chen |
| [HBASE-17916](https://issues.apache.org/jira/browse/HBASE-17916) | Error message not clear when the permission of staging dir is not as expected |  Minor | Operability | Xiang Li | Xiang Li |
| [HBASE-17912](https://issues.apache.org/jira/browse/HBASE-17912) | Avoid major compactions on region server startup |  Major | Compaction | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-17944](https://issues.apache.org/jira/browse/HBASE-17944) | Removed unused JDK version parsing from ClassSize. |  Minor | build | Colm O hEigeartaigh | Colm O hEigeartaigh |
| [HBASE-17514](https://issues.apache.org/jira/browse/HBASE-17514) | Warn when Thrift Server 1 is configured for proxy users but not the HTTP transport |  Minor | Thrift, Usability | Sean Busbey | lv zehui |
| [HBASE-17448](https://issues.apache.org/jira/browse/HBASE-17448) | Export metrics from RecoverableZooKeeper |  Major | Zookeeper | Andrew Purtell | Chinmay Kulkarni |
| [HBASE-9899](https://issues.apache.org/jira/browse/HBASE-9899) | for idempotent operation dups, return the result instead of throwing conflict exception |  Major | . | Sergey Shelukhin | Guanghao Zhang |
| [HBASE-17877](https://issues.apache.org/jira/browse/HBASE-17877) | Improve HBase\'s byte[] comparator |  Major | util | Lars Hofhansl | Vikas Vishwakarma |
| [HBASE-17962](https://issues.apache.org/jira/browse/HBASE-17962) | Improve documentation on Rest interface |  Trivial | documentation, REST | Niels Basjes | Niels Basjes |
| [HBASE-17835](https://issues.apache.org/jira/browse/HBASE-17835) | Spelling mistakes in the Java source |  Trivial | documentation | Qilin Cao | Qilin Cao |
| [HBASE-17817](https://issues.apache.org/jira/browse/HBASE-17817) | Make Regionservers log which tables it removed coprocessors from when aborting |  Major | Coprocessors, regionserver | Steen Manniche | Steen Manniche |
| [HBASE-17979](https://issues.apache.org/jira/browse/HBASE-17979) | HBase Shell \'list\' Command Help Doc Improvements |  Minor | shell | Hugo Louro | Hugo Louro |
| [HBASE-12870](https://issues.apache.org/jira/browse/HBASE-12870) | "Major compaction triggered" and "Skipping major compaction" messages lack the region information |  Major | Compaction | Hari Krishna Dara | Chinmay Kulkarni |


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
| [HBASE-15548](https://issues.apache.org/jira/browse/HBASE-15548) | SyncTable: sourceHashDir is supposed to be optional but won\'t work without |  Minor | Replication | My Ho | Dave Latham |
| [HBASE-15327](https://issues.apache.org/jira/browse/HBASE-15327) | Canary will always invoke admin.balancer() in each sniffing period when writeSniffing is enabled |  Minor | canary | Jianwei Cui | Jianwei Cui |
| [HBASE-15559](https://issues.apache.org/jira/browse/HBASE-15559) | BaseMasterAndRegionObserver doesn\'t implement all the methods |  Major | . | Elliott Clark | Elliott Clark |
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
| [HBASE-15563](https://issues.apache.org/jira/browse/HBASE-15563) | \'counter\' may overflow in BoundedGroupingStrategy |  Minor | wal | Duo Zhang | Matt Warhaftig |
| [HBASE-15292](https://issues.apache.org/jira/browse/HBASE-15292) | Refined ZooKeeperWatcher to prevent ZooKeeper\'s callback while construction |  Minor | Zookeeper | Hiroshi Ikeda | Hiroshi Ikeda |
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
| [HBASE-15845](https://issues.apache.org/jira/browse/HBASE-15845) | Shell Cleanup : move formatter to commands.rb; move one of the two hbase.rb to hbase\_constants.rb |  Minor | shell | Appy | Appy |
| [HBASE-15889](https://issues.apache.org/jira/browse/HBASE-15889) | String case conversions are locale-sensitive, used without locale |  Minor | localization | Sean Mackrory | Sean Mackrory |
| [HBASE-15954](https://issues.apache.org/jira/browse/HBASE-15954) | REST server should log requests with TRACE instead of DEBUG |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15698](https://issues.apache.org/jira/browse/HBASE-15698) | Increment TimeRange not serialized to server |  Blocker | . | James Taylor | Ted Yu |
| [HBASE-15803](https://issues.apache.org/jira/browse/HBASE-15803) | ZooKeeperWatcher\'s constructor can leak a ZooKeeper instance with throwing ZooKeeperConnectionException when canCreateBaseZNode is true |  Minor | . | Hiroshi Ikeda | Ted Yu |
| [HBASE-15913](https://issues.apache.org/jira/browse/HBASE-15913) | Sasl encryption doesn\'t work with AsyncRpcChannel |  Major | . | Colin Ma | Colin Ma |
| [HBASE-15957](https://issues.apache.org/jira/browse/HBASE-15957) | RpcClientImpl.close never ends in some circumstances |  Major | Client, rpc | Sergey Soldatov | Sergey Soldatov |
| [HBASE-15952](https://issues.apache.org/jira/browse/HBASE-15952) | Bulk load data replication is not working when RS user does not have permission on hfile-refs node |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-15990](https://issues.apache.org/jira/browse/HBASE-15990) | The priority value of subsequent coprocessors in the Coprocessor.Priority.SYSTEM list are not incremented by one |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15946](https://issues.apache.org/jira/browse/HBASE-15946) | Eliminate possible security concerns in RS web UI\'s store file metrics |  Major | . | Sean Mackrory | Sean Mackrory |
| [HBASE-16007](https://issues.apache.org/jira/browse/HBASE-16007) | Job\'s Configuration should be passed to TableMapReduceUtil#addDependencyJars() in WALPlayer |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16016](https://issues.apache.org/jira/browse/HBASE-16016) | AssignmentManager#waitForAssignment could have unexpected negative deadline |  Major | . | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15746](https://issues.apache.org/jira/browse/HBASE-15746) | Remove extra RegionCoprocessor preClose() in RSRpcServices#closeRegion |  Minor | Coprocessors, regionserver | Matteo Bertozzi | Stephen Yuan Jiang |
| [HBASE-16017](https://issues.apache.org/jira/browse/HBASE-16017) | HBase TableOutputFormat has connection leak in getRecordWriter |  Major | mapreduce | Zhan Zhang | Zhan Zhang |
| [HBASE-16045](https://issues.apache.org/jira/browse/HBASE-16045) | endtime argument for VerifyReplication was incorrectly specified in usage |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16058](https://issues.apache.org/jira/browse/HBASE-16058) | TestHRegion fails on 1.4 builds |  Major | test | Mikhail Antonov | Enis Soztutar |
| [HBASE-16054](https://issues.apache.org/jira/browse/HBASE-16054) | OutOfMemory exception when using AsyncRpcClient with encryption |  Major | . | Colin Ma | Colin Ma |
| [HBASE-16059](https://issues.apache.org/jira/browse/HBASE-16059) | Region normalizer fails to trigger merge action where one of the regions is empty |  Major | master | Romil Choksi | Ted Yu |
| [HBASE-15783](https://issues.apache.org/jira/browse/HBASE-15783) | AccessControlConstants#OP\_ATTRIBUTE\_ACL\_STRATEGY\_CELL\_FIRST not used any more. |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16062](https://issues.apache.org/jira/browse/HBASE-16062) | Improper error handling in WAL Reader/Writer creation |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16012](https://issues.apache.org/jira/browse/HBASE-16012) | Major compaction can\'t work due to obsolete scanner read point in RegionServer |  Major | Compaction, Scanners | Guanghao Zhang | Guanghao Zhang |
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
| [HBASE-16091](https://issues.apache.org/jira/browse/HBASE-16091) | Canary takes lot more time when there are delete markers in the table |  Major | canary | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-16177](https://issues.apache.org/jira/browse/HBASE-16177) | In dev mode thrift server can\'t be run |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-16157](https://issues.apache.org/jira/browse/HBASE-16157) | The incorrect block cache count and size are caused by removing duplicate block key in the LruBlockCache |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
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
| [HBASE-16235](https://issues.apache.org/jira/browse/HBASE-16235) | TestSnapshotFromMaster#testSnapshotHFileArchiving will fail if there are too many hfiles |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16144](https://issues.apache.org/jira/browse/HBASE-16144) | Replication queue\'s lock will live forever if RS acquiring the lock has died prematurely |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16172](https://issues.apache.org/jira/browse/HBASE-16172) | Unify the retry logic in ScannerCallableWithReplicas and RpcRetryingCallerWithReadReplicas |  Major | . | Yu Li | Ted Yu |
| [HBASE-16237](https://issues.apache.org/jira/browse/HBASE-16237) | Blocks for hbase:meta table are not cached in L1 cache |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16244](https://issues.apache.org/jira/browse/HBASE-16244) | LocalHBaseCluster start timeout should be configurable |  Major | hbase | Siddharth Wagle |  |
| [HBASE-16272](https://issues.apache.org/jira/browse/HBASE-16272) | Overflow in ServerName\'s compareTo method |  Major | hbase | huaxiang sun | huaxiang sun |
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
| [HBASE-7621](https://issues.apache.org/jira/browse/HBASE-7621) | REST client (RemoteHTable) doesn\'t support binary row keys |  Major | REST | Craig Muchinsky | Keith David Winkler |
| [HBASE-16444](https://issues.apache.org/jira/browse/HBASE-16444) | CellUtil#estimatedSerializedSizeOfKey() should consider KEY\_INFRASTRUCTURE\_SIZE |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-16360](https://issues.apache.org/jira/browse/HBASE-16360) | TableMapReduceUtil addHBaseDependencyJars has the wrong class name for PrefixTreeCodec |  Minor | mapreduce | Matteo Bertozzi | Jing Pu Chen |
| [HBASE-16464](https://issues.apache.org/jira/browse/HBASE-16464) | archive folder grows bigger and bigger due to corrupt snapshot under tmp dir |  Major | snapshots | Heng Chen | Heng Chen |
| [HBASE-16471](https://issues.apache.org/jira/browse/HBASE-16471) | Region Server metrics context will be wrong when machine hostname contain "master" word |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16270](https://issues.apache.org/jira/browse/HBASE-16270) | Handle duplicate clearing of snapshot in region replicas |  Major | Replication | Robert Yokota | Robert Yokota |
| [HBASE-16304](https://issues.apache.org/jira/browse/HBASE-16304) | HRegion#RegionScannerImpl#handleFileNotFoundException may lead to deadlock when trying to obtain write lock on updatesLock |  Critical | . | mingmin xu | Ted Yu |
| [HBASE-16495](https://issues.apache.org/jira/browse/HBASE-16495) | When accessed via Thrift, all column families have timeToLive equal to -1 |  Minor | Thrift | Tigran Saluev | Tigran Saluev |
| [HBASE-16409](https://issues.apache.org/jira/browse/HBASE-16409) | Row key for bad row should be properly delimited in VerifyReplication |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16515](https://issues.apache.org/jira/browse/HBASE-16515) | AsyncProcess has incorrent count of tasks if the backoff policy is enabled |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16535](https://issues.apache.org/jira/browse/HBASE-16535) | Use regex to exclude generated classes for findbugs |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-16528](https://issues.apache.org/jira/browse/HBASE-16528) | Procedure-V2: ServerCrashProcedure misses owner information |  Major | hbase, master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16527](https://issues.apache.org/jira/browse/HBASE-16527) | IOExceptions from DFS client still can cause CatalogJanitor to delete referenced files |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-16547](https://issues.apache.org/jira/browse/HBASE-16547) | hbase-archetype-builder shell scripts assume bash is installed in /bin |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16552](https://issues.apache.org/jira/browse/HBASE-16552) | MiniHBaseCluster#getServerWith() does not ignore stopped RSs |  Trivial | test | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16538](https://issues.apache.org/jira/browse/HBASE-16538) | Version mismatch in HBaseConfiguration.checkDefaultsVersion |  Major | . | Appy | Appy |
| [HBASE-16460](https://issues.apache.org/jira/browse/HBASE-16460) | Can\'t rebuild the BucketAllocator\'s data structures when BucketCache uses FileIOEngine |  Major | BucketCache | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16572](https://issues.apache.org/jira/browse/HBASE-16572) | Sync method in RecoverableZooKeeper failed to pass callback function in |  Minor | Zookeeper | Allan Yang | Allan Yang |
| [HBASE-16589](https://issues.apache.org/jira/browse/HBASE-16589) | Adjust log level for FATAL messages from HBaseReplicationEndpoint that are not fatal |  Trivial | . | Andrew Purtell | Andrew Purtell |
| [HBASE-16309](https://issues.apache.org/jira/browse/HBASE-16309) | TestDefaultCompactSelection.testCompactionRatio is flaky |  Major | Compaction, test | Duo Zhang | Duo Zhang |
| [HBASE-16576](https://issues.apache.org/jira/browse/HBASE-16576) | Shell add\_peer doesn\'t allow setting cluster\_key for custom endpoints |  Major | shell | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-16612](https://issues.apache.org/jira/browse/HBASE-16612) | Use array to cache Types for KeyValue.Type.codeToType |  Minor | . | Phil Yang | Phil Yang |
| [HBASE-16613](https://issues.apache.org/jira/browse/HBASE-16613) | Return the unused ByteBuffer to BoundedByteBufferPool when no cell is retrieved from the CellScanner |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16165](https://issues.apache.org/jira/browse/HBASE-16165) | Decrease RpcServer.callQueueSize before writeResponse causes OOM |  Minor | IPC/RPC, rpc | Duo Zhang | Guanghao Zhang |
| [HBASE-16647](https://issues.apache.org/jira/browse/HBASE-16647) | hbck should do offline reference repair before online repair |  Major | . | Jerry He | Jerry He |
| [HBASE-16540](https://issues.apache.org/jira/browse/HBASE-16540) | Scan should do additional validation on start and stop row |  Major | Client | Gary Helmling | Dustin Pho |
| [HBASE-12949](https://issues.apache.org/jira/browse/HBASE-12949) | Scanner can be stuck in infinite loop if the HFile is corrupted |  Major | . | Jerry He | Jerry He |
| [HBASE-16294](https://issues.apache.org/jira/browse/HBASE-16294) | hbck reporting "No HDFS region dir found" for replicas |  Minor | hbck | Matteo Bertozzi | Umesh Agashe |
| [HBASE-12088](https://issues.apache.org/jira/browse/HBASE-12088) | Remove un-used profiles in non-root poms |  Major | . | Elliott Clark | Jonathan Hsieh |
| [HBASE-16670](https://issues.apache.org/jira/browse/HBASE-16670) | Make RpcServer#processRequest logic more robust |  Minor | . | Yu Li | Yu Li |
| [HBASE-16675](https://issues.apache.org/jira/browse/HBASE-16675) | Average region size may be incorrect when there is region whose RegionLoad cannot be retrieved |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16662](https://issues.apache.org/jira/browse/HBASE-16662) | Fix open POODLE vulnerabilities |  Major | REST, Thrift | Ben Lau | Ben Lau |
| [HBASE-16604](https://issues.apache.org/jira/browse/HBASE-16604) | Scanner retries on IOException can cause the scans to miss data |  Major | regionserver, Scanners | Enis Soztutar | Enis Soztutar |
| [HBASE-16679](https://issues.apache.org/jira/browse/HBASE-16679) | Flush throughput controller: Minor perf change and fix flaky TestFlushWithThroughputController |  Major | . | Appy | Appy |
| [HBASE-16660](https://issues.apache.org/jira/browse/HBASE-16660) | ArrayIndexOutOfBounds during the majorCompactionCheck in DateTieredCompaction |  Major | Compaction | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-16682](https://issues.apache.org/jira/browse/HBASE-16682) | Fix Shell tests failure. NoClassDefFoundError for MiniKdc |  Major | . | Appy | Appy |
| [HBASE-16723](https://issues.apache.org/jira/browse/HBASE-16723) | RMI registry is not destroyed after stopping JMX Connector Server |  Major | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16732](https://issues.apache.org/jira/browse/HBASE-16732) | Avoid possible NPE in MetaTableLocator |  Minor | . | Jerry He | Jerry He |
| [HBASE-16678](https://issues.apache.org/jira/browse/HBASE-16678) | MapReduce jobs do not update counters from ScanMetrics |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-16739](https://issues.apache.org/jira/browse/HBASE-16739) | Timed out exception message should include encoded region name |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16373](https://issues.apache.org/jira/browse/HBASE-16373) | precommit needs a dockerfile with hbase prereqs |  Critical | build | Sean Busbey | Duo Zhang |
| [HBASE-16644](https://issues.apache.org/jira/browse/HBASE-16644) | Errors when reading legit HFile Trailer of old (v2.0) format file |  Critical | HFile | Mikhail Antonov | Mikhail Antonov |
| [HBASE-16681](https://issues.apache.org/jira/browse/HBASE-16681) | Fix flaky TestReplicationSourceManagerZkImpl |  Major | . | Appy | Ashu Pachauri |
| [HBASE-16768](https://issues.apache.org/jira/browse/HBASE-16768) | Inconsistent results from the Append/Increment |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16771](https://issues.apache.org/jira/browse/HBASE-16771) | VerifyReplication should increase GOODROWS counter if re-comparison passes |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16762](https://issues.apache.org/jira/browse/HBASE-16762) | NullPointerException is thrown when constructing sourceTable in verifyrep |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16699](https://issues.apache.org/jira/browse/HBASE-16699) | Overflows in AverageIntervalRateLimiter\'s refill() and getWaitInterval() |  Major | . | huaxiang sun | huaxiang sun |
| [HBASE-16788](https://issues.apache.org/jira/browse/HBASE-16788) | Race in compacted file deletion between HStore close() and closeAndArchiveCompactedFiles() |  Blocker | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-15109](https://issues.apache.org/jira/browse/HBASE-15109) | HM/RS failed to start when "fs.hdfs.impl.disable.cache" is set to true |  Critical | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16801](https://issues.apache.org/jira/browse/HBASE-16801) | The Append/Increment may return the data from future |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16716](https://issues.apache.org/jira/browse/HBASE-16716) | OfflineMetaRepair leaves empty directory inside /hbase/WALs which remains forever |  Minor | hbck | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16807](https://issues.apache.org/jira/browse/HBASE-16807) | RegionServer will fail to report new active Hmaster until HMaster/RegionServer failover |  Major | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16724](https://issues.apache.org/jira/browse/HBASE-16724) | Snapshot owner can\'t clone |  Major | snapshots | Pankaj Kumar | Pankaj Kumar |
| [HBASE-16664](https://issues.apache.org/jira/browse/HBASE-16664) | Timeout logic in AsyncProcess is broken |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16810](https://issues.apache.org/jira/browse/HBASE-16810) | HBase Balancer throws ArrayIndexOutOfBoundsException when regionservers are in /hbase/draining znode and unloaded |  Major | Balancer | Ashu Pachauri | David Pope |
| [HBASE-16816](https://issues.apache.org/jira/browse/HBASE-16816) | HMaster.move() should throw exception if region to move is not online |  Minor | Admin | Allan Yang | Allan Yang |
| [HBASE-16853](https://issues.apache.org/jira/browse/HBASE-16853) | Regions are assigned to Region Servers in /hbase/draining after HBase Master failover |  Major | Balancer, Region Assignment | David Pope | David Pope |
| [HBASE-16856](https://issues.apache.org/jira/browse/HBASE-16856) | Exception message in SyncRunner.run() should print currentSequence |  Minor | wal | Allan Yang | Allan Yang |
| [HBASE-16855](https://issues.apache.org/jira/browse/HBASE-16855) | Avoid NPE in MetricsConnection’s construction |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-16721](https://issues.apache.org/jira/browse/HBASE-16721) | Concurrency issue in WAL unflushed seqId tracking |  Critical | wal | Enis Soztutar | Enis Soztutar |
| [HBASE-16653](https://issues.apache.org/jira/browse/HBASE-16653) | Backport HBASE-11393 to all branches which support namespace |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16824](https://issues.apache.org/jira/browse/HBASE-16824) | Writer.flush() can be called on already closed streams in WAL roll |  Major | wal | Atri Sharma | Enis Soztutar |
| [HBASE-16752](https://issues.apache.org/jira/browse/HBASE-16752) | Upgrading from 1.2 to 1.3 can lead to replication failures due to difference in RPC size limit |  Major | Replication, rpc | Ashu Pachauri | Ashu Pachauri |
| [HBASE-16889](https://issues.apache.org/jira/browse/HBASE-16889) | Proc-V2: verifyTables in the IntegrationTestDDLMasterFailover test after each table DDL is incorrect |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-16701](https://issues.apache.org/jira/browse/HBASE-16701) | TestHRegion and TestHRegionWithInMemoryFlush timing out |  Major | regionserver, test | Appy | Sean Busbey |
| [HBASE-16910](https://issues.apache.org/jira/browse/HBASE-16910) | Avoid NPE when starting StochasticLoadBalancer |  Minor | Balancer | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15348](https://issues.apache.org/jira/browse/HBASE-15348) | Fix tests broken by recent metrics re-work |  Major | metrics, test | Elliott Clark | Elliott Clark |
| [HBASE-16754](https://issues.apache.org/jira/browse/HBASE-16754) | Regions failing compaction due to referencing non-existent store file |  Blocker | . | Gary Helmling | Gary Helmling |
| [HBASE-16829](https://issues.apache.org/jira/browse/HBASE-16829) | DemoClient should detect secure mode |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16815](https://issues.apache.org/jira/browse/HBASE-16815) | Low scan ratio in RPC queue tuning triggers divide by zero exception |  Major | regionserver, rpc | Lars George | Guanghao Zhang |
| [HBASE-16870](https://issues.apache.org/jira/browse/HBASE-16870) | Add the metrics of replication sources which were transformed from other dead rs to ReplicationLoad |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16939](https://issues.apache.org/jira/browse/HBASE-16939) | ExportSnapshot: set owner and permission on right directory |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-16948](https://issues.apache.org/jira/browse/HBASE-16948) | Fix inconsistency between HRegion and Region javadoc on getRowLock |  Major | . | stack | stack |
| [HBASE-16980](https://issues.apache.org/jira/browse/HBASE-16980) | TestRowProcessorEndpoint failing consistently |  Major | . | Andrew Purtell | Yu Li |
| [HBASE-16931](https://issues.apache.org/jira/browse/HBASE-16931) | Setting cell\'s seqId to zero in compaction flow might cause RS down. |  Critical | regionserver | binlijin | binlijin |
| [HBASE-16964](https://issues.apache.org/jira/browse/HBASE-16964) | Successfully archived files are not cleared from compacted store file list if archiving of any file fails |  Blocker | regionserver | Gary Helmling | Gary Helmling |
| [HBASE-14329](https://issues.apache.org/jira/browse/HBASE-14329) | Report region in transition only ever operates on one region |  Major | Region Assignment | Elliott Clark | Eddie Elizondo |
| [HBASE-16960](https://issues.apache.org/jira/browse/HBASE-16960) | RegionServer hang when aborting |  Critical | . | binlijin | binlijin |
| [HBASE-16992](https://issues.apache.org/jira/browse/HBASE-16992) | The usage of mutation from CP is weird. |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17033](https://issues.apache.org/jira/browse/HBASE-17033) | LogRoller makes a lot of allocations unnecessarily |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17042](https://issues.apache.org/jira/browse/HBASE-17042) | Remove \'public\' keyword from MasterObserver interface |  Minor | Coprocessors | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17010](https://issues.apache.org/jira/browse/HBASE-17010) | Serial replication should handle daughter regions being assigned to another RS |  Major | Replication | Ted Yu | Phil Yang |
| [HBASE-16983](https://issues.apache.org/jira/browse/HBASE-16983) | TestMultiTableSnapshotInputFormat failing with  Unable to create region directory: /tmp/... |  Minor | test | stack | stack |
| [HBASE-17054](https://issues.apache.org/jira/browse/HBASE-17054) | Compactor#preCreateCoprocScanner should be passed user |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16938](https://issues.apache.org/jira/browse/HBASE-16938) | TableCFsUpdater maybe failed due to no write permission on peerNode |  Major | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17020](https://issues.apache.org/jira/browse/HBASE-17020) | keylen in midkey() dont computed correctly |  Major | HFile | Yu Sun | Yu Sun |
| [HBASE-17039](https://issues.apache.org/jira/browse/HBASE-17039) | SimpleLoadBalancer schedules large amount of invalid region moves |  Major | Balancer | Charlie Qiangeng Xu | Charlie Qiangeng Xu |
| [HBASE-16962](https://issues.apache.org/jira/browse/HBASE-16962) | Add readPoint to preCompactScannerOpen() and preFlushScannerOpen() API |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-17062](https://issues.apache.org/jira/browse/HBASE-17062) | RegionSplitter throws ClassCastException |  Minor | util | Jeongdae Kim | Jeongdae Kim |
| [HBASE-16345](https://issues.apache.org/jira/browse/HBASE-16345) | RpcRetryingCallerWithReadReplicas#call() should catch some RegionServer Exceptions |  Major | Client | huaxiang sun | huaxiang sun |
| [HBASE-17074](https://issues.apache.org/jira/browse/HBASE-17074) | PreCommit job always fails because of OOM |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-17044](https://issues.apache.org/jira/browse/HBASE-17044) | Fix merge failed before creating merged region leaves meta inconsistent |  Critical | regionserver | Andrew Purtell | Andrew Purtell |
| [HBASE-17091](https://issues.apache.org/jira/browse/HBASE-17091) | IntegrationTestZKAndFSPermissions failed with \'KeeperException$NoNodeException\' |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17058](https://issues.apache.org/jira/browse/HBASE-17058) | Lower epsilon used for jitter verification from HBASE-15324 |  Major | Compaction | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-17131](https://issues.apache.org/jira/browse/HBASE-17131) | Avoid livelock caused by HRegion#processRowsWithLocks |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17095](https://issues.apache.org/jira/browse/HBASE-17095) | The ClientSimpleScanner keeps retrying if the hfile is corrupt or cannot found |  Major | regionserver, scan | Jingcheng Du | Jingcheng Du |
| [HBASE-17171](https://issues.apache.org/jira/browse/HBASE-17171) | IntegrationTestTimeBoundedRequestsWithRegionReplicas fails with obtuse error when readers have no time to run |  Minor | integration tests | Josh Elser | Josh Elser |
| [HBASE-17127](https://issues.apache.org/jira/browse/HBASE-17127) | Locate region should fail fast if underlying Connection already closed |  Major | . | Yu Li | Yu Li |
| [HBASE-17116](https://issues.apache.org/jira/browse/HBASE-17116) | [PerformanceEvaluation] Add option to configure block size |  Trivial | tooling | Esteban Gutierrez | Yi Liang |
| [HBASE-17072](https://issues.apache.org/jira/browse/HBASE-17072) | CPU usage starts to climb up to 90-100% when using G1GC; purge ThreadLocal usage |  Critical | Performance, regionserver | Eiichi Sato | Eiichi Sato |
| [HBASE-17224](https://issues.apache.org/jira/browse/HBASE-17224) | There are lots of spelling errors in the HBase logging and exception messages |  Trivial | Client, io, mapreduce, master, regionserver, security, wal | Grant Sohn | Grant Sohn |
| [HBASE-17206](https://issues.apache.org/jira/browse/HBASE-17206) | FSHLog may roll a new writer successfully with unflushed entries |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-16209](https://issues.apache.org/jira/browse/HBASE-16209) | Provide an ExponentialBackOffPolicy sleep between failed region open requests |  Major | . | Joseph | Ashu Pachauri |
| [HBASE-17112](https://issues.apache.org/jira/browse/HBASE-17112) | Prevent setting timestamp of delta operations the same as previous value\'s |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16886](https://issues.apache.org/jira/browse/HBASE-16886) | hbase-client: scanner with reversed=true and small=true gets no result |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-17118](https://issues.apache.org/jira/browse/HBASE-17118) | StoreScanner leaked in KeyValueHeap |  Major | . | binlijin | binlijin |
| [HBASE-17170](https://issues.apache.org/jira/browse/HBASE-17170) | HBase is also retrying DoNotRetryIOException because of class loader differences. |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-17256](https://issues.apache.org/jira/browse/HBASE-17256) | Rpc handler monitoring will be removed when the task queue is full |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-16985](https://issues.apache.org/jira/browse/HBASE-16985) | TestClusterId failed due to wrong hbase rootdir |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17023](https://issues.apache.org/jira/browse/HBASE-17023) | Region left unassigned due to AM and SSH each thinking others would do the assignment work |  Major | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17297](https://issues.apache.org/jira/browse/HBASE-17297) | Single Filter in parenthesis cannot be parsed correctly |  Major | Filters | Xuesen Liang | Xuesen Liang |
| [HBASE-17344](https://issues.apache.org/jira/browse/HBASE-17344) | The regionserver web UIs miss the coprocessors of RegionServerCoprocessorHost. |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17347](https://issues.apache.org/jira/browse/HBASE-17347) | ExportSnapshot may write snapshot info file to wrong directory when specifying target name |  Minor | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-17328](https://issues.apache.org/jira/browse/HBASE-17328) | Properly dispose of looped replication peers |  Critical | Replication | Vincent Poon | Vincent Poon |
| [HBASE-17341](https://issues.apache.org/jira/browse/HBASE-17341) | Add a timeout during replication endpoint termination |  Critical | . | Vincent Poon | Vincent Poon |
| [HBASE-16663](https://issues.apache.org/jira/browse/HBASE-16663) | JMX ConnectorServer stopped when unauthorized user try to stop HM/RS/cluster |  Critical | metrics, security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-17330](https://issues.apache.org/jira/browse/HBASE-17330) | SnapshotFileCache will always refresh the file cache |  Minor | snapshots | Jianwei Cui | Jianwei Cui |
| [HBASE-17238](https://issues.apache.org/jira/browse/HBASE-17238) | Wrong in-memory hbase:meta location causing SSH failure |  Critical | Region Assignment | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17374](https://issues.apache.org/jira/browse/HBASE-17374) | ZKPermissionWatcher crashed when grant after region close |  Critical | regionserver | Liu Junhong | Liu Junhong |
| [HBASE-17387](https://issues.apache.org/jira/browse/HBASE-17387) | Reduce the overhead of exception report in RegionActionResult for multi() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17427](https://issues.apache.org/jira/browse/HBASE-17427) | region\_mover.rb may move region onto the same server |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17390](https://issues.apache.org/jira/browse/HBASE-17390) | Online update of configuration for all servers leaves out masters |  Major | . | Lars George | Jan Hentschel |
| [HBASE-17290](https://issues.apache.org/jira/browse/HBASE-17290) | Potential loss of data for replication of bulk loaded hfiles |  Major | . | Ted Yu | Ashish Singhi |
| [HBASE-17351](https://issues.apache.org/jira/browse/HBASE-17351) | Enforcer plugin fails with NullPointerException |  Critical | build | Ted Yu | Esteban Gutierrez |
| [HBASE-17424](https://issues.apache.org/jira/browse/HBASE-17424) | Protect REST client against malicious XML responses. |  Major | REST | Josh Elser | Josh Elser |
| [HBASE-17435](https://issues.apache.org/jira/browse/HBASE-17435) | Call to preCommitStoreFile() hook encounters SaslException in secure deployment |  Major | . | Romil Choksi | Ted Yu |
| [HBASE-17429](https://issues.apache.org/jira/browse/HBASE-17429) | HBase bulkload cannot support HDFS viewFs |  Major | . | shenxianqiang | shenxianqiang |
| [HBASE-17445](https://issues.apache.org/jira/browse/HBASE-17445) | Count size of serialized exceptions in checking max result size quota |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17452](https://issues.apache.org/jira/browse/HBASE-17452) | Failed taking snapshot - region Manifest proto-message too large |  Major | snapshots | huaxiang sun | huaxiang sun |
| [HBASE-17450](https://issues.apache.org/jira/browse/HBASE-17450) | TablePermission#equals throws NPE after namespace support was added |  Major | findbugs | Zheng Hu | Zheng Hu |
| [HBASE-17464](https://issues.apache.org/jira/browse/HBASE-17464) | Fix HBaseTestingUtility.getNewDataTestDirOnTestFS to always return a unique path |  Minor | test | Zach York | Zach York |
| [HBASE-17475](https://issues.apache.org/jira/browse/HBASE-17475) | Stack overflow in AsyncProcess if retry too much |  Major | API, Client | Allan Yang | Allan Yang |
| [HBASE-17469](https://issues.apache.org/jira/browse/HBASE-17469) | Properly handle empty TableName in TablePermission#readFields and #write |  Major | findbugs | Ted Yu | Manjunath Anand |
| [HBASE-17289](https://issues.apache.org/jira/browse/HBASE-17289) | Avoid adding a replication peer named "lock" |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-17357](https://issues.apache.org/jira/browse/HBASE-17357) | PerformanceEvaluation parameters parsing triggers NPE. |  Minor | Performance, test | Jean-Marc Spaggiari | Dave Navarro |
| [HBASE-17489](https://issues.apache.org/jira/browse/HBASE-17489) | ClientScanner may send a next request to a RegionScanner which has been exhausted |  Critical | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17504](https://issues.apache.org/jira/browse/HBASE-17504) | The passed durability of Increment is ignored when syncing WAL |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17510](https://issues.apache.org/jira/browse/HBASE-17510) | DefaultMemStore gets the wrong heap size after rollback |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17519](https://issues.apache.org/jira/browse/HBASE-17519) | Rollback the removed cells |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17540](https://issues.apache.org/jira/browse/HBASE-17540) | Change SASL server GSSAPI callback log line from DEBUG to TRACE in RegionServer to reduce log volumes in DEBUG mode |  Minor | regionserver | Maddineni Sukumar | Maddineni Sukumar |
| [HBASE-17522](https://issues.apache.org/jira/browse/HBASE-17522) | RuntimeExceptions from MemoryMXBean should not take down server process |  Major | regionserver | Sean Busbey | Sean Busbey |
| [HBASE-16621](https://issues.apache.org/jira/browse/HBASE-16621) | HBCK should have -fixHFileLinks |  Major | . | Enis Soztutar | Janos Gub |
| [HBASE-17587](https://issues.apache.org/jira/browse/HBASE-17587) | Do not Rethrow DoNotRetryIOException as UnknownScannerException |  Major | Coprocessors, regionserver, rpc | Zach York | Zach York |
| [HBASE-17601](https://issues.apache.org/jira/browse/HBASE-17601) | close() in TableRecordReaderImpl assumes the split has started |  Minor | hadoop2 | Michael Axiak | Michael Axiak |
| [HBASE-17578](https://issues.apache.org/jira/browse/HBASE-17578) | Thrift per-method metrics should still update in the case of exceptions |  Major | Thrift | Gary Helmling | Gary Helmling |
| [HBASE-17187](https://issues.apache.org/jira/browse/HBASE-17187) | DoNotRetryExceptions from coprocessors should bubble up to the application |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17597](https://issues.apache.org/jira/browse/HBASE-17597) | TestMetaWithReplicas.testMetaTableReplicaAssignment is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-17264](https://issues.apache.org/jira/browse/HBASE-17264) | Processing RIT with offline state will always fail to open the first time |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17275](https://issues.apache.org/jira/browse/HBASE-17275) | Assign timeout may cause region to be unassigned forever |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17565](https://issues.apache.org/jira/browse/HBASE-17565) | StochasticLoadBalancer may incorrectly skip balancing due to skewed multiplier sum |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-17381](https://issues.apache.org/jira/browse/HBASE-17381) | ReplicationSourceWorkerThread can die due to unhandled exceptions |  Major | Replication | Gary Helmling | Zheng Hu |
| [HBASE-17105](https://issues.apache.org/jira/browse/HBASE-17105) | Annotate RegionServerObserver |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-17604](https://issues.apache.org/jira/browse/HBASE-17604) | Backport HBASE-15437 (fix request and response size metrics) to branch-1 |  Major | IPC/RPC, metrics | Gary Helmling | Gary Helmling |
| [HBASE-17616](https://issues.apache.org/jira/browse/HBASE-17616) | Incorrect actions performed by CM |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17265](https://issues.apache.org/jira/browse/HBASE-17265) | Region left unassigned in master failover when region failed to open |  Major | Region Assignment | Allan Yang | Allan Yang |
| [HBASE-17572](https://issues.apache.org/jira/browse/HBASE-17572) | HMaster: Caught throwable while processing event C\_M\_MERGE\_REGION |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17603](https://issues.apache.org/jira/browse/HBASE-17603) | REST API for scan should return 404 when table does not exist |  Blocker | REST, scan | Ted Yu | Ted Yu |
| [HBASE-17611](https://issues.apache.org/jira/browse/HBASE-17611) | Thrift 2 per-call latency metrics are capped at ~ 2 seconds |  Major | metrics, Thrift | Gary Helmling | Gary Helmling |
| [HBASE-17558](https://issues.apache.org/jira/browse/HBASE-17558) | ZK dumping jsp should escape html |  Minor | security, UI | Sean Busbey | Sean Busbey |
| [HBASE-17639](https://issues.apache.org/jira/browse/HBASE-17639) | Do not stop server if ReplicationSourceManager\'s waitUntilCanBePushed throws InterruptedException |  Major | Replication | Phil Yang | Phil Yang |
| [HBASE-17649](https://issues.apache.org/jira/browse/HBASE-17649) | REST API for scan should return 410 when table is disabled |  Major | . | Ted Yu | Ted Yu |
| [HBASE-17648](https://issues.apache.org/jira/browse/HBASE-17648) | HBase Table-level synchronization fails between two secured(kerberized) clusters |  Major | . | Yi Liang | Yi Liang |
| [HBASE-17658](https://issues.apache.org/jira/browse/HBASE-17658) | Bookkeeping issue in BaseLoadBalancer for Table Skew |  Major | Balancer | Tim Brown | Tim Brown |
| [HBASE-17661](https://issues.apache.org/jira/browse/HBASE-17661) | fix the queue length passed to FastPathBalancedQueueRpcExecutor |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-15328](https://issues.apache.org/jira/browse/HBASE-15328) | Unvalidated Redirect in HMaster |  Minor | security | stack | Sean Busbey |
| [HBASE-17675](https://issues.apache.org/jira/browse/HBASE-17675) | ReplicationEndpoint should choose new sinks if a SaslException occurs |  Major | . | churro morales | churro morales |
| [HBASE-17590](https://issues.apache.org/jira/browse/HBASE-17590) | Drop cache hint should work for StoreFile write path |  Major | . | Appy | Ashu Pachauri |
| [HBASE-17677](https://issues.apache.org/jira/browse/HBASE-17677) | ServerName parsing from directory name should be more robust to errors from guava\'s HostAndPort |  Major | wal | Sean Busbey | Sean Busbey |
| [HBASE-17069](https://issues.apache.org/jira/browse/HBASE-17069) | RegionServer writes invalid META entries for split daughters in some circumstances |  Blocker | wal | Andrew Purtell | Abhishek Singh Chouhan |
| [HBASE-17682](https://issues.apache.org/jira/browse/HBASE-17682) | Region stuck in merging\_new state indefinitely |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17674](https://issues.apache.org/jira/browse/HBASE-17674) | Major compaction may be cancelled in CompactionChecker |  Major | Compaction | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17673](https://issues.apache.org/jira/browse/HBASE-17673) | Monitored RPC Handler not shown in the WebUI |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-17710](https://issues.apache.org/jira/browse/HBASE-17710) | HBase in standalone mode creates directories with 777 permission |  Major | regionserver | Toshihiro Suzuki | Ted Yu |
| [HBASE-17722](https://issues.apache.org/jira/browse/HBASE-17722) | Metrics subsystem stop/start messages add a lot of useless bulk to operational logging |  Trivial | metrics | Andrew Purtell | Andrew Purtell |
| [HBASE-16630](https://issues.apache.org/jira/browse/HBASE-16630) | Fragmentation in long running Bucket Cache |  Critical | BucketCache | deepankar | deepankar |
| [HBASE-17460](https://issues.apache.org/jira/browse/HBASE-17460) | enable\_table\_replication can not perform cyclic replication of a table |  Critical | Replication | NITIN VERMA | NITIN VERMA |
| [HBASE-17717](https://issues.apache.org/jira/browse/HBASE-17717) | Incorrect ZK ACL set for HBase superuser |  Critical | security, Zookeeper | Shreya Bhat | Josh Elser |
| [HBASE-17729](https://issues.apache.org/jira/browse/HBASE-17729) | Missing shortcuts for some useful HCD options |  Trivial | shell | Andrew Purtell | Andrew Purtell |
| [HBASE-17718](https://issues.apache.org/jira/browse/HBASE-17718) | Difference between RS\'s servername and its ephemeral node cause SSH stop working |  Major | . | Allan Yang | Allan Yang |
| [HBASE-17761](https://issues.apache.org/jira/browse/HBASE-17761) | Test TestRemoveRegionMetrics.testMoveRegion fails intermittently because of race condition |  Major | Region Assignment | Umesh Agashe | Umesh Agashe |
| [HBASE-17736](https://issues.apache.org/jira/browse/HBASE-17736) | Some options can\'t be configured by the shell |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17764](https://issues.apache.org/jira/browse/HBASE-17764) | Solve TestMultiSlaveReplication flakiness |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-17712](https://issues.apache.org/jira/browse/HBASE-17712) | Remove/Simplify the logic of RegionScannerImpl.handleFileNotFound |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-17746](https://issues.apache.org/jira/browse/HBASE-17746) | TestSimpleRpcScheduler.testCoDelScheduling is broken |  Major | integration tests | Anup Halarnkar | Chia-Ping Tsai |
| [HBASE-17773](https://issues.apache.org/jira/browse/HBASE-17773) | VerifyReplication tool wrongly emits warning "ERROR: Invalid argument \'--recomparesleep=xx\'" |  Trivial | . | Tomu Tsuruhara | Tomu Tsuruhara |
| [HBASE-17501](https://issues.apache.org/jira/browse/HBASE-17501) | NullPointerException after Datanodes Decommissioned and Terminated |  Minor | Filesystem Integration, Operability | Patrick Dignan | James Moore |
| [HBASE-17780](https://issues.apache.org/jira/browse/HBASE-17780) | BoundedByteBufferPool "At capacity" messages are not actionable |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-17779](https://issues.apache.org/jira/browse/HBASE-17779) | disable\_table\_replication returns misleading message and does not turn off replication |  Major | Replication | Ted Yu | Janos Gub |
| [HBASE-17426](https://issues.apache.org/jira/browse/HBASE-17426) | Inconsistent environment variable names for enabling JMX |  Major | . | Ted Yu | Chia-Ping Tsai |
| [HBASE-17803](https://issues.apache.org/jira/browse/HBASE-17803) | PE always re-creates table when we specify the split policy |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-17798](https://issues.apache.org/jira/browse/HBASE-17798) | RpcServer.Listener.Reader can abort due to CancelledKeyException |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17287](https://issues.apache.org/jira/browse/HBASE-17287) | Master becomes a zombie if filesystem object closes |  Blocker | master | Clay B. | Ted Yu |
| [HBASE-17821](https://issues.apache.org/jira/browse/HBASE-17821) | The CompoundConfiguration#toString is wrong |  Trivial | . | Chia-Ping Tsai | Yi Liang |
| [HBASE-17698](https://issues.apache.org/jira/browse/HBASE-17698) | ReplicationEndpoint choosing sinks |  Major | Replication | churro morales | Karan Mehta |
| [HBASE-17861](https://issues.apache.org/jira/browse/HBASE-17861) | Regionserver down when checking the permission of staging dir if hbase.rootdir is on S3 |  Major | . | Yi Liang | Yi Liang |
| [HBASE-17871](https://issues.apache.org/jira/browse/HBASE-17871) | scan#setBatch(int) call leads wrong result of VerifyReplication |  Minor | . | Tomu Tsuruhara | Tomu Tsuruhara |
| [HBASE-17869](https://issues.apache.org/jira/browse/HBASE-17869) | UnsafeAvailChecker wrongly returns false on ppc |  Minor | . | Jerry He | Jerry He |
| [HBASE-17886](https://issues.apache.org/jira/browse/HBASE-17886) | Fix compatibility of ServerSideScanMetrics |  Blocker | . | Yu Li | Yu Li |
| [HBASE-17816](https://issues.apache.org/jira/browse/HBASE-17816) | HRegion#mutateRowWithLocks should update writeRequestCount metric |  Major | metrics | Ashu Pachauri | Weizhan Zeng |
| [HBASE-17930](https://issues.apache.org/jira/browse/HBASE-17930) | Avoid using Canary.sniff in HBaseTestingUtility |  Major | canary, test | Duo Zhang | Duo Zhang |
| [HBASE-17937](https://issues.apache.org/jira/browse/HBASE-17937) | Memstore size becomes negative in case of expensive postPut/Delete Coprocessor call |  Major | regionserver | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-17302](https://issues.apache.org/jira/browse/HBASE-17302) | The region flush request disappeared from flushQueue |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-17904](https://issues.apache.org/jira/browse/HBASE-17904) | Get runs into NoSuchElementException when using Read Replica, with hbase. ipc.client.specificThreadForWriting to be true and hbase.rpc.client.impl to be org.apache.hadoop.hbase.ipc.RpcClientImpl |  Major | Client, IPC/RPC | huaxiang sun | huaxiang sun |
| [HBASE-17862](https://issues.apache.org/jira/browse/HBASE-17862) | Condition that always returns true |  Trivial | Client | JC | JC |
| [HBASE-17985](https://issues.apache.org/jira/browse/HBASE-17985) | Inline package manage updates with package installation in Yetus Dockerfile |  Blocker | . | Josh Elser | Josh Elser |
| [HBASE-17958](https://issues.apache.org/jira/browse/HBASE-17958) | Avoid passing unexpected cell to ScanQueryMatcher when optimize SEEK to SKIP |  Major | . | Guanghao Zhang | Guanghao Zhang |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15679](https://issues.apache.org/jira/browse/HBASE-15679) | Assertion on wrong variable in TestReplicationThrottler#testThrottling |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-15923](https://issues.apache.org/jira/browse/HBASE-15923) | Shell rows counter test fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-16051](https://issues.apache.org/jira/browse/HBASE-16051) | TestScannerHeartbeatMessages fails on some machines |  Major | test | Mikhail Antonov | Phil Yang |
| [HBASE-16049](https://issues.apache.org/jira/browse/HBASE-16049) | TestRowProcessorEndpoint is failing on Apache Builds |  Major | . | Mikhail Antonov | Guanghao Zhang |
| [HBASE-16418](https://issues.apache.org/jira/browse/HBASE-16418) | Reduce duration of sleep waiting for region reopen in IntegrationTestBulkLoad#installSlowingCoproc() |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16639](https://issues.apache.org/jira/browse/HBASE-16639) | TestProcedureInMemoryChore#testChoreAddAndRemove occasionally fails |  Minor | . | Ted Yu | Matteo Bertozzi |
| [HBASE-16349](https://issues.apache.org/jira/browse/HBASE-16349) | TestClusterId may hang during cluster shutdown |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-16725](https://issues.apache.org/jira/browse/HBASE-16725) | Don\'t let flushThread hang in TestHRegion |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-17189](https://issues.apache.org/jira/browse/HBASE-17189) | TestMasterObserver#wasModifyTableActionCalled uses wrong variables |  Minor | test | Stephen Yuan Jiang | Stephen Yuan Jiang |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-15342](https://issues.apache.org/jira/browse/HBASE-15342) | create branch-1.3 and update branch-1 poms to 1.4.0-SNAPSHOT |  Major | build | Mikhail Antonov | Mikhail Antonov |
| [HBASE-15365](https://issues.apache.org/jira/browse/HBASE-15365) | Do not write to \'/tmp\' in TestHBaseConfiguration |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-15371](https://issues.apache.org/jira/browse/HBASE-15371) | Procedure V2 - Completed support parent-child procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-15354](https://issues.apache.org/jira/browse/HBASE-15354) | Use same criteria for clearing meta cache for all operations |  Major | Client | Ashu Pachauri | Ashu Pachauri |
| [HBASE-15435](https://issues.apache.org/jira/browse/HBASE-15435) | Add WAL (in bytes) written metric |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15479](https://issues.apache.org/jira/browse/HBASE-15479) | No more garbage or beware of autoboxing |  Major | Client | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-15460](https://issues.apache.org/jira/browse/HBASE-15460) | Fix infer issues in hbase-common |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-15464](https://issues.apache.org/jira/browse/HBASE-15464) | Flush / Compaction metrics revisited |  Major | metrics | Enis Soztutar | Enis Soztutar |
| [HBASE-15488](https://issues.apache.org/jira/browse/HBASE-15488) | Add ACL for setting split merge switch |  Major | . | Ted Yu | Ted Yu |
| [HBASE-15412](https://issues.apache.org/jira/browse/HBASE-15412) | Add average region size metric |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15384](https://issues.apache.org/jira/browse/HBASE-15384) | Avoid using \'/tmp\' directory in TestBulkLoad |  Major | test | Heng Chen | Heng Chen |
| [HBASE-15537](https://issues.apache.org/jira/browse/HBASE-15537) | Make multi WAL work with WALs other than FSHLog |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-15386](https://issues.apache.org/jira/browse/HBASE-15386) | PREFETCH\_BLOCKS\_ON\_OPEN in HColumnDescriptor is ignored |  Major | BucketCache | stack | stack |
| [HBASE-15640](https://issues.apache.org/jira/browse/HBASE-15640) | L1 cache doesn\'t give fair warning that it is showing partial stats only when it hits limit |  Major | BlockCache | stack | stack |
| [HBASE-15518](https://issues.apache.org/jira/browse/HBASE-15518) | Add Per-Table metrics back |  Major | . | Enis Soztutar | Alicia Ying Shu |
| [HBASE-15662](https://issues.apache.org/jira/browse/HBASE-15662) | Hook up JvmPauseMonitor to REST server |  Major | metrics, REST | Andrew Purtell | Andrew Purtell |
| [HBASE-15663](https://issues.apache.org/jira/browse/HBASE-15663) | Hook up JvmPauseMonitor to ThriftServer |  Major | metrics, Thrift | Andrew Purtell | Andrew Purtell |
| [HBASE-15683](https://issues.apache.org/jira/browse/HBASE-15683) | Min latency in latency histograms are emitted as Long.MAX\_VALUE |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-15366](https://issues.apache.org/jira/browse/HBASE-15366) | Add doc, trace-level logging, and test around hfileblock |  Major | BlockCache | stack | stack |
| [HBASE-15671](https://issues.apache.org/jira/browse/HBASE-15671) | Add per-table metrics on memstore, storefile and regionsize |  Major | . | Alicia Ying Shu | Alicia Ying Shu |
| [HBASE-15392](https://issues.apache.org/jira/browse/HBASE-15392) | Single Cell Get reads two HFileBlocks |  Major | BucketCache | stack | stack |
| [HBASE-15477](https://issues.apache.org/jira/browse/HBASE-15477) | Do not save \'next block header\' when we cache hfileblocks |  Major | BlockCache, Performance | stack | stack |
| [HBASE-15713](https://issues.apache.org/jira/browse/HBASE-15713) | Backport "HBASE-15477 Do not save \'next block header\' when we cache hfileblocks" |  Major | BucketCache | stack | stack |
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
| [HBASE-16318](https://issues.apache.org/jira/browse/HBASE-16318) | fail build if license isn\'t in whitelist |  Major | build, dependencies | Sean Busbey | Sean Busbey |
| [HBASE-16485](https://issues.apache.org/jira/browse/HBASE-16485) | Procedure V2 - Add support to addChildProcedure() as last "step" in StateMachineProcedure |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16451](https://issues.apache.org/jira/browse/HBASE-16451) | Procedure v2 - Test WAL protobuf entry size limit |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16522](https://issues.apache.org/jira/browse/HBASE-16522) | Procedure v2 - Cache system user and avoid IOException |  Major | master, proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16533](https://issues.apache.org/jira/browse/HBASE-16533) | Procedure v2 - Extract chore from the executor |  Minor | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-16311](https://issues.apache.org/jira/browse/HBASE-16311) | Audit log for delete snapshot operation is missing in case of snapshot owner deleting the same |  Minor | snapshots | Abhishek Kumar | Yi Liang |
| [HBASE-16101](https://issues.apache.org/jira/browse/HBASE-16101) | Procedure v2 - Perf Tool for WAL |  Major | proc-v2, tooling | Appy | Appy |
| [HBASE-16530](https://issues.apache.org/jira/browse/HBASE-16530) | Reduce DBE code duplication |  Major | Performance | binlijin | binlijin |
| [HBASE-15984](https://issues.apache.org/jira/browse/HBASE-15984) | Given failure to parse a given WAL that was closed cleanly, replay the WAL. |  Critical | Replication | Sean Busbey | Sean Busbey |
| [HBASE-14734](https://issues.apache.org/jira/browse/HBASE-14734) | BindException when setting up MiniKdc |  Major | flakey, test | stack | Appy |
| [HBASE-16146](https://issues.apache.org/jira/browse/HBASE-16146) | Counters are expensive... |  Major | metrics | stack | Gary Helmling |
| [HBASE-16505](https://issues.apache.org/jira/browse/HBASE-16505) | Save deadline in RpcCallContext according to request\'s timeout |  Major | . | Phil Yang | Phil Yang |
| [HBASE-16970](https://issues.apache.org/jira/browse/HBASE-16970) | Clarify misleading Scan.java comment about caching |  Trivial | . | Jim Kleckner | Jim Kleckner |
| [HBASE-16570](https://issues.apache.org/jira/browse/HBASE-16570) | Compute region locality in parallel at startup |  Major | . | binlijin | binlijin |
| [HBASE-17167](https://issues.apache.org/jira/browse/HBASE-17167) | Pass mvcc to client when scan |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-16336](https://issues.apache.org/jira/browse/HBASE-16336) | Removing peers seems to be leaving spare queues |  Major | Replication | Joseph | Guanghao Zhang |
| [HBASE-16398](https://issues.apache.org/jira/browse/HBASE-16398) | optimize HRegion computeHDFSBlocksDistribution |  Major | regionserver | binlijin | binlijin |
| [HBASE-17149](https://issues.apache.org/jira/browse/HBASE-17149) | Procedure V2 - Fix nonce submission to avoid unnecessary calling coprocessor multiple times |  Major | proc-v2 | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-17409](https://issues.apache.org/jira/browse/HBASE-17409) | Re-fix XSS request issue in JMXJsonServlet |  Major | security, UI | Josh Elser | Josh Elser |
| [HBASE-12148](https://issues.apache.org/jira/browse/HBASE-12148) | Remove TimeRangeTracker as point of contention when many threads writing a Store |  Major | Performance | stack | huaxiang sun |
| [HBASE-17583](https://issues.apache.org/jira/browse/HBASE-17583) | Add inclusive/exclusive support for startRow and endRow of scan for sync client |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17210](https://issues.apache.org/jira/browse/HBASE-17210) | Set timeout on trying rowlock according to client\'s RPC timeout |  Major | . | Phil Yang | Phil Yang |
| [HBASE-17561](https://issues.apache.org/jira/browse/HBASE-17561) | table status page should escape values that may contain arbitrary characters. |  Major | master, UI | Sean Busbey | Sean Busbey |
| [HBASE-15484](https://issues.apache.org/jira/browse/HBASE-15484) | Correct the semantic of batch and partial |  Blocker | Client, scan | Phil Yang | Phil Yang |
| [HBASE-17793](https://issues.apache.org/jira/browse/HBASE-17793) | Backport ScanResultCache related code to branch-1 |  Major | Client, scan | Duo Zhang | Duo Zhang |
| [HBASE-17925](https://issues.apache.org/jira/browse/HBASE-17925) | mvn assembly:single fails against hadoop3-alpha2 |  Major | hadoop3 | Jonathan Hsieh | Jonathan Hsieh |


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
| [HBASE-16518](https://issues.apache.org/jira/browse/HBASE-16518) | Remove old .arcconfig file |  Trivial | tooling | Gary Helmling | Gary Helmling |
| [HBASE-16335](https://issues.apache.org/jira/browse/HBASE-16335) | update to latest apache parent pom |  Major | build, dependencies | Sean Busbey | Jan Hentschel |
| [HBASE-16710](https://issues.apache.org/jira/browse/HBASE-16710) | Add ZStandard Codec to Compression.java |  Minor | . | churro morales | churro morales |
| [HBASE-17609](https://issues.apache.org/jira/browse/HBASE-17609) | Allow for region merging in the UI |  Major | . | churro morales | churro morales |
| [HBASE-17965](https://issues.apache.org/jira/browse/HBASE-17965) | Canary tool should print the regionserver name on failure |  Minor | . | churro morales | Karan Mehta |
| [HBASE-17968](https://issues.apache.org/jira/browse/HBASE-17968) | Update copyright year in NOTICE file |  Trivial | build | Nick Dimiduk | Josh Elser |


