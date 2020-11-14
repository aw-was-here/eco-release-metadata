
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

## Release 2.0.5 - 2019-03-25



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21520](https://issues.apache.org/jira/browse/HBASE-21520) | TestMultiColumnScanner cost long time when using ROWCOL bloom type |  Major | test | Zheng Hu | Zheng Hu |
| [HBASE-21662](https://issues.apache.org/jira/browse/HBASE-21662) | Add append\_peer\_exclude\_namespaces and remove\_peer\_exclude\_namespaces shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21645](https://issues.apache.org/jira/browse/HBASE-21645) | Perform sanity check and disallow table creation/modification with region replication \< 1 |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21694](https://issues.apache.org/jira/browse/HBASE-21694) | Add append\_peer\_exclude\_tableCFs and remove\_peer\_exclude\_tableCFs shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21297](https://issues.apache.org/jira/browse/HBASE-21297) | ModifyTableProcedure can throw TNDE instead of IOE in case of REGION\_REPLICATION change |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21712](https://issues.apache.org/jira/browse/HBASE-21712) | Make submit-patch.py python3 compatible |  Minor | tooling | Tommy Li | Tommy Li |
| [HBASE-21634](https://issues.apache.org/jira/browse/HBASE-21634) | Print error message when user uses unacceptable values for LIMIT while setting quotas. |  Minor | . | Sakthi | Sakthi |
| [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | Throw DNRIOE when connection or rpc client is closed |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21833](https://issues.apache.org/jira/browse/HBASE-21833) | Use NettyAsyncFSWALConfigHelper.setEventLoopConfig to prevent creating too many netty event loop when executing TestHRegion |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21636](https://issues.apache.org/jira/browse/HBASE-21636) | Enhance the shell scan command to support missing scanner specifications like ReadType, IsolationLevel etc. |  Major | shell | Nihal Jain | Nihal Jain |
| [HBASE-21932](https://issues.apache.org/jira/browse/HBASE-21932) | Use Runtime.getRuntime().halt to terminate regionserver when abort timeout |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21667](https://issues.apache.org/jira/browse/HBASE-21667) | Move to latest ASF Parent POM |  Minor | build | Peter Somogyi | Peter Somogyi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21582](https://issues.apache.org/jira/browse/HBASE-21582) | If call HBaseAdmin#snapshotAsync but forget call isSnapshotFinished, then SnapshotHFileCleaner will skip to run every time |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21547](https://issues.apache.org/jira/browse/HBASE-21547) | Precommit uses master flaky list for other branches |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-21630](https://issues.apache.org/jira/browse/HBASE-21630) | [shell] Define ENDKEY == STOPROW (we have ENDROW) |  Trivial | shell | Michael Stack | Nihal Jain |
| [HBASE-21683](https://issues.apache.org/jira/browse/HBASE-21683) | Reset readsEnabled flag after successfully flushing the primary region |  Critical | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21691](https://issues.apache.org/jira/browse/HBASE-21691) | Fix flaky test TestRecoveredEdits |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20220](https://issues.apache.org/jira/browse/HBASE-20220) | [RSGroup] Check if table exists in the cluster before moving it to the specified regionserver group |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21225](https://issues.apache.org/jira/browse/HBASE-21225) | Having RPC & Space quota on a table/Namespace doesn't allow space quota to be removed using 'NONE' |  Major | . | Sakthi | Sakthi |
| [HBASE-21639](https://issues.apache.org/jira/browse/HBASE-21639) | maxHeapUsage value not read properly from config during EntryBuffers initialization |  Minor | . | Bo Cui | Pankaj Kumar |
| [HBASE-21704](https://issues.apache.org/jira/browse/HBASE-21704) | The implementation of DistributedHBaseCluster.getServerHoldingRegion is incorrect |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21732](https://issues.apache.org/jira/browse/HBASE-21732) | Should call toUpperCase before using Enum.valueOf in some methods for ColumnFamilyDescriptor |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-21746](https://issues.apache.org/jira/browse/HBASE-21746) | Fix two concern cases in RegionMover |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21475](https://issues.apache.org/jira/browse/HBASE-21475) | Put mutation (having TTL set) added via co-processor is retrieved even after TTL expires |  Major | Coprocessors | Nihal Jain | Nihal Jain |
| [HBASE-21754](https://issues.apache.org/jira/browse/HBASE-21754) | ReportRegionStateTransitionRequest should be executed in priority executor |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21535](https://issues.apache.org/jira/browse/HBASE-21535) | Zombie Master detector is not working |  Critical | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21699](https://issues.apache.org/jira/browse/HBASE-21699) | Create table failed when using  SPLITS\_FILE =\> 'splits.txt' |  Blocker | Client, shell | huan | huan |
| [HBASE-21644](https://issues.apache.org/jira/browse/HBASE-21644) | Modify table procedure runs infinitely for a table having region replication \> 1 |  Critical | Admin | Nihal Jain | Nihal Jain |
| [HBASE-21840](https://issues.apache.org/jira/browse/HBASE-21840) | TestHRegionWithInMemoryFlush fails with NPE |  Blocker | test | Duo Zhang | Duo Zhang |
| [HBASE-21795](https://issues.apache.org/jira/browse/HBASE-21795) | Client application may get stuck (time bound) if a table modify op is called immediately after split op |  Critical | amv2 | Nihal Jain | Nihal Jain |
| [HBASE-20485](https://issues.apache.org/jira/browse/HBASE-20485) | Copy constructor of Scan doesn't copy the readType and replicaId |  Minor | . | Chia-Ping Tsai | Nihal Jain |
| [HBASE-21843](https://issues.apache.org/jira/browse/HBASE-21843) | RegionGroupingProvider breaks the meta wal file name pattern which may cause data loss for meta region |  Blocker | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21775](https://issues.apache.org/jira/browse/HBASE-21775) | The BufferedMutator doesn't ever refresh region location cache |  Major | Client | Tommy Li | Tommy Li |
| [HBASE-18484](https://issues.apache.org/jira/browse/HBASE-18484) | VerifyRep by snapshot  does not work when Yarn / SourceHBase / PeerHBase located in different HDFS clusters |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-21862](https://issues.apache.org/jira/browse/HBASE-21862) | IPCUtil.wrapException should keep the original exception types for all the connection exceptions |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21854](https://issues.apache.org/jira/browse/HBASE-21854) | Race condition in TestProcedureSkipPersistence |  Minor | proc-v2 | Peter Somogyi | Peter Somogyi |
| [HBASE-21889](https://issues.apache.org/jira/browse/HBASE-21889) | Use thrift 0.12.0 when build thrift by compile-thrift profile |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21890](https://issues.apache.org/jira/browse/HBASE-21890) | Use execute instead of submit to submit a task in RemoteProcedureDispatcher |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21900](https://issues.apache.org/jira/browse/HBASE-21900) | Infinite loop in AsyncMetaRegionLocator if we can not get the location for meta |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21910](https://issues.apache.org/jira/browse/HBASE-21910) | The nonce implementation is wrong for AsyncTable |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21913](https://issues.apache.org/jira/browse/HBASE-21913) | src/main/asciidoc/images link is incorrect |  Trivial | website | Peter Somogyi | Peter Somogyi |
| [HBASE-21929](https://issues.apache.org/jira/browse/HBASE-21929) | The checks at the end of TestRpcClientLeaks are not executed |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21942](https://issues.apache.org/jira/browse/HBASE-21942) | [UI] requests per second is incorrect in rsgroup page(rsgroup.jsp) |  Minor | . | xuqinya | xuqinya |
| [HBASE-21943](https://issues.apache.org/jira/browse/HBASE-21943) | The usage of RegionLocations.mergeRegionLocations is wrong for async client |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21961](https://issues.apache.org/jira/browse/HBASE-21961) | Infinite loop in AsyncNonMetaRegionLocator if there is only one region and we tried to locate before a non empty row |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21915](https://issues.apache.org/jira/browse/HBASE-21915) | FileLink$FileLinkInputStream doesn't implement CanUnbuffer |  Major | Filesystem Integration | Josh Elser | Josh Elser |
| [HBASE-21960](https://issues.apache.org/jira/browse/HBASE-21960) | RESTServletContainer not configured for REST Jetty server |  Blocker | REST | Josh Elser | Josh Elser |
| [HBASE-22006](https://issues.apache.org/jira/browse/HBASE-22006) | Fix branch-2.1 findbugs warning; causes nightly show as failed. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21990](https://issues.apache.org/jira/browse/HBASE-21990) | puppycrawl checkstyle dtds 404... moved to sourceforge |  Major | build | Michael Stack | Michael Stack |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18569](https://issues.apache.org/jira/browse/HBASE-18569) | Add prefetch support for async region locator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-17356](https://issues.apache.org/jira/browse/HBASE-17356) | Add replica get support |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21669](https://issues.apache.org/jira/browse/HBASE-21669) | Move branch-2.0 to 2.0.5-SNAPSHOT version after release of 2.0.4 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21682](https://issues.apache.org/jira/browse/HBASE-21682) | Support getting from specific replica |  Major | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21580](https://issues.apache.org/jira/browse/HBASE-21580) | Support getting Hbck instance from AsyncConnection |  Major | asyncclient, Client, hbck2 | Duo Zhang | Duo Zhang |
| [HBASE-21663](https://issues.apache.org/jira/browse/HBASE-21663) | Add replica scan support |  Major | asyncclient, Client, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21705](https://issues.apache.org/jira/browse/HBASE-21705) | Should treat meta table specially for some methods in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21711](https://issues.apache.org/jira/browse/HBASE-21711) | Remove references to git.apache.org/hbase.git |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19695](https://issues.apache.org/jira/browse/HBASE-19695) | Handle disabled table for async client |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21738](https://issues.apache.org/jira/browse/HBASE-21738) | Remove all the CSLM#size operation in our memstore because it's an quite time consuming. |  Critical | Performance | Zheng Hu | Zheng Hu |
| [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | Some optimization in FilterListWithOR |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21402](https://issues.apache.org/jira/browse/HBASE-21402) | Backport parent "HBASE-21325 Force to terminate regionserver when abort hang in somewhere" |  Major | . | Michael Stack | Pankaj Kumar |
| [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | Size of in-memory compaction thread pool should be configurable |  Major | Compaction, in-memory-compaction | Zheng Hu | Zheng Hu |
| [HBASE-21828](https://issues.apache.org/jira/browse/HBASE-21828) | Make sure we do not return CompletionException when locating region |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21832](https://issues.apache.org/jira/browse/HBASE-21832) | Backport parent "HBASE-21595 Print thread's information and stack traces when RS is aborting forcibly" to branch-2.0/2.1 |  Minor | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21829](https://issues.apache.org/jira/browse/HBASE-21829) | Use FutureUtils.addListener instead of calling whenComplete directly |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21835](https://issues.apache.org/jira/browse/HBASE-21835) | Set version as 2.0.5 in branch-2.0 in prep for first RC |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | Simplify documentation around client timeout |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19889](https://issues.apache.org/jira/browse/HBASE-19889) | Revert Workaround: Purge User API building from branch-2 so can make a beta-1 |  Major | website | Michael Stack | Sakthi |
| [HBASE-21927](https://issues.apache.org/jira/browse/HBASE-21927) | Always fail the locate request when error occur |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21836](https://issues.apache.org/jira/browse/HBASE-21836) | Generate CHANGES.md and RELEASENOTES.md for 2.0.5 |  Major | . | Duo Zhang | Michael Stack |
| [HBASE-21989](https://issues.apache.org/jira/browse/HBASE-21989) | Revert HBASE-21915 from branch-2.0 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21997](https://issues.apache.org/jira/browse/HBASE-21997) | Fix hbase-rest findbugs ST\_WRITE\_TO\_STATIC\_FROM\_INSTANCE\_METHOD complaint |  Major | REST | Michael Stack | Michael Stack |
| [HBASE-21999](https://issues.apache.org/jira/browse/HBASE-21999) | [DEBUG] Exit if git returns empty revision! |  Major | build | Michael Stack | Michael Stack |
| [HBASE-22025](https://issues.apache.org/jira/browse/HBASE-22025) | RAT check fails in nightlies; fails on (old) test data files. |  Major | . | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21612](https://issues.apache.org/jira/browse/HBASE-21612) | Add developer debug options in  HBase Config for REST server |  Minor | Operability, REST, scripts | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21685](https://issues.apache.org/jira/browse/HBASE-21685) | Change repository urls to Gitbox |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21731](https://issues.apache.org/jira/browse/HBASE-21731) | Do not need to use ClusterConnection in IntegrationTestBigLinkedListWithVisibility |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21715](https://issues.apache.org/jira/browse/HBASE-21715) | Do not throw UnsupportedOperationException in ProcedureFuture.get |  Major | Client | Duo Zhang | Junhong Xu |
| [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | Upgrade thrift dependency to 0.12.0 |  Blocker | Thrift | Duo Zhang | Duo Zhang |
| [HBASE-21853](https://issues.apache.org/jira/browse/HBASE-21853) | update copyright notices to 2019 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21884](https://issues.apache.org/jira/browse/HBASE-21884) | Fix box/unbox findbugs warning in secure bulk load |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-22052](https://issues.apache.org/jira/browse/HBASE-22052) | pom cleaning; filter out jersey-core in hadoop2 to match hadoop3 and remove redunant version specifications |  Major | . | Michael Stack | Michael Stack |


