
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

## Release 2.1.3 - 2019-02-14



### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21662](https://issues.apache.org/jira/browse/HBASE-21662) | Add append\_peer\_exclude\_namespaces and remove\_peer\_exclude\_namespaces shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21645](https://issues.apache.org/jira/browse/HBASE-21645) | Perform sanity check and disallow table creation/modification with region replication \< 1 |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21694](https://issues.apache.org/jira/browse/HBASE-21694) | Add append\_peer\_exclude\_tableCFs and remove\_peer\_exclude\_tableCFs shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21297](https://issues.apache.org/jira/browse/HBASE-21297) | ModifyTableProcedure can throw TNDE instead of IOE in case of REGION\_REPLICATION change |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21590](https://issues.apache.org/jira/browse/HBASE-21590) | Optimize trySkipToNextColumn in StoreScanner a bit |  Critical | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21712](https://issues.apache.org/jira/browse/HBASE-21712) | Make submit-patch.py python3 compatible |  Minor | tooling | Tommy Li | Tommy Li |
| [HBASE-21634](https://issues.apache.org/jira/browse/HBASE-21634) | Print error message when user uses unacceptable values for LIMIT while setting quotas. |  Minor | . | Sakthi | Sakthi |
| [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | Throw DNRIOE when connection or rpc client is closed |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21833](https://issues.apache.org/jira/browse/HBASE-21833) | Use NettyAsyncFSWALConfigHelper.setEventLoopConfig to prevent creating too many netty event loop when executing TestHRegion |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21816](https://issues.apache.org/jira/browse/HBASE-21816) | Print source cluster replication config directory |  Trivial | Replication | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-21201](https://issues.apache.org/jira/browse/HBASE-21201) | Support to run VerifyReplication MR tool without peerid |  Major | hbase-operator-tools | Sujit P | Toshihiro Suzuki |
| [HBASE-21857](https://issues.apache.org/jira/browse/HBASE-21857) | Do not need to check clusterKey if replicationEndpoint is provided when adding a peer |  Major | . | Duo Zhang | Duo Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21547](https://issues.apache.org/jira/browse/HBASE-21547) | Precommit uses master flaky list for other branches |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-21630](https://issues.apache.org/jira/browse/HBASE-21630) | [shell] Define ENDKEY == STOPROW (we have ENDROW) |  Trivial | shell | Michael Stack | Nihal Jain |
| [HBASE-21683](https://issues.apache.org/jira/browse/HBASE-21683) | Reset readsEnabled flag after successfully flushing the primary region |  Critical | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21691](https://issues.apache.org/jira/browse/HBASE-21691) | Fix flaky test TestRecoveredEdits |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20220](https://issues.apache.org/jira/browse/HBASE-20220) | [RSGroup] Check if table exists in the cluster before moving it to the specified regionserver group |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21225](https://issues.apache.org/jira/browse/HBASE-21225) | Having RPC & Space quota on a table/Namespace doesn't allow space quota to be removed using 'NONE' |  Major | . | Sakthi | Sakthi |
| [HBASE-21639](https://issues.apache.org/jira/browse/HBASE-21639) | maxHeapUsage value not read properly from config during EntryBuffers initialization |  Minor | . | Bo Cui | Pankaj Kumar |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | meta, metrics | Ted Yu | Ted Yu |
| [HBASE-21704](https://issues.apache.org/jira/browse/HBASE-21704) | The implementation of DistributedHBaseCluster.getServerHoldingRegion is incorrect |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21732](https://issues.apache.org/jira/browse/HBASE-21732) | Should call toUpperCase before using Enum.valueOf in some methods for ColumnFamilyDescriptor |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-21746](https://issues.apache.org/jira/browse/HBASE-21746) | Fix two concern cases in RegionMover |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21749](https://issues.apache.org/jira/browse/HBASE-21749) | RS UI may throw NPE and make rs-status page inaccessible with multiwal and replication |  Major | Replication, UI | Nihal Jain | Nihal Jain |
| [HBASE-21475](https://issues.apache.org/jira/browse/HBASE-21475) | Put mutation (having TTL set) added via co-processor is retrieved even after TTL expires |  Major | Coprocessors | Nihal Jain | Nihal Jain |
| [HBASE-21754](https://issues.apache.org/jira/browse/HBASE-21754) | ReportRegionStateTransitionRequest should be executed in priority executor |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21535](https://issues.apache.org/jira/browse/HBASE-21535) | Zombie Master detector is not working |  Critical | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21699](https://issues.apache.org/jira/browse/HBASE-21699) | Create table failed when using  SPLITS\_FILE =\> 'splits.txt' |  Blocker | Client, shell | huan | huan |
| [HBASE-21644](https://issues.apache.org/jira/browse/HBASE-21644) | Modify table procedure runs infinitely for a table having region replication \> 1 |  Critical | Admin | Nihal Jain | Nihal Jain |
| [HBASE-21840](https://issues.apache.org/jira/browse/HBASE-21840) | TestHRegionWithInMemoryFlush fails with NPE |  Blocker | test | Duo Zhang | Duo Zhang |
| [HBASE-21795](https://issues.apache.org/jira/browse/HBASE-21795) | Client application may get stuck (time bound) if a table modify op is called immediately after split op |  Critical | amv2 | Nihal Jain | Nihal Jain |
| [HBASE-21843](https://issues.apache.org/jira/browse/HBASE-21843) | RegionGroupingProvider breaks the meta wal file name pattern which may cause data loss for meta region |  Blocker | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21775](https://issues.apache.org/jira/browse/HBASE-21775) | The BufferedMutator doesn't ever refresh region location cache |  Major | Client | Tommy Li | Tommy Li |
| [HBASE-21862](https://issues.apache.org/jira/browse/HBASE-21862) | IPCUtil.wrapException should keep the original exception types for all the connection exceptions |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17356](https://issues.apache.org/jira/browse/HBASE-17356) | Add replica get support |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21682](https://issues.apache.org/jira/browse/HBASE-21682) | Support getting from specific replica |  Major | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21698](https://issues.apache.org/jira/browse/HBASE-21698) | Move version in branch-2.1 from 2.1.2 to 2.1.3-SNAPSHOT |  Major | community | Michael Stack | Michael Stack |
| [HBASE-21580](https://issues.apache.org/jira/browse/HBASE-21580) | Support getting Hbck instance from AsyncConnection |  Major | asyncclient, Client, hbck2 | Duo Zhang | Duo Zhang |
| [HBASE-21663](https://issues.apache.org/jira/browse/HBASE-21663) | Add replica scan support |  Major | asyncclient, Client, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21705](https://issues.apache.org/jira/browse/HBASE-21705) | Should treat meta table specially for some methods in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-19722](https://issues.apache.org/jira/browse/HBASE-19722) | Meta query statistics metrics source |  Critical | Coprocessors, meta, metrics, Operability | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21711](https://issues.apache.org/jira/browse/HBASE-21711) | Remove references to git.apache.org/hbase.git |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19695](https://issues.apache.org/jira/browse/HBASE-19695) | Handle disabled table for async client |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21738](https://issues.apache.org/jira/browse/HBASE-21738) | Remove all the CSLM#size operation in our memstore because it's an quite time consuming. |  Critical | Performance | Zheng Hu | Zheng Hu |
| [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | Some optimization in FilterListWithOR |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21402](https://issues.apache.org/jira/browse/HBASE-21402) | Backport parent "HBASE-21325 Force to terminate regionserver when abort hang in somewhere" |  Major | . | Michael Stack | Pankaj Kumar |
| [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | Size of in-memory compaction thread pool should be configurable |  Major | Compaction, in-memory-compaction | Zheng Hu | Zheng Hu |
| [HBASE-21828](https://issues.apache.org/jira/browse/HBASE-21828) | Make sure we do not return CompletionException when locating region |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21832](https://issues.apache.org/jira/browse/HBASE-21832) | Backport parent "HBASE-21595 Print thread's information and stack traces when RS is aborting forcibly" to branch-2.0/2.1 |  Minor | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21829](https://issues.apache.org/jira/browse/HBASE-21829) | Use FutureUtils.addListener instead of calling whenComplete directly |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21834](https://issues.apache.org/jira/browse/HBASE-21834) | Set version as 2.1.3 in branch-2.1 in prep for first RC |  Major | build, community | Duo Zhang | Duo Zhang |
| [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | Simplify documentation around client timeout |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21819](https://issues.apache.org/jira/browse/HBASE-21819) | Generate CHANGES.md and RELEASENOTES.md for 2.1.3 |  Major | community, documentation | Duo Zhang | Duo Zhang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21612](https://issues.apache.org/jira/browse/HBASE-21612) | Add developer debug options in  HBase Config for REST server |  Minor | Operability, REST, scripts | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21282](https://issues.apache.org/jira/browse/HBASE-21282) | Upgrade to latest jetty 9.2 and 9.3 versions |  Major | dependencies | Josh Elser | Josh Elser |
| [HBASE-21685](https://issues.apache.org/jira/browse/HBASE-21685) | Change repository urls to Gitbox |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21731](https://issues.apache.org/jira/browse/HBASE-21731) | Do not need to use ClusterConnection in IntegrationTestBigLinkedListWithVisibility |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21715](https://issues.apache.org/jira/browse/HBASE-21715) | Do not throw UnsupportedOperationException in ProcedureFuture.get |  Major | Client | Duo Zhang | Junhong Xu |
| [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | Upgrade thrift dependency to 0.12.0 |  Blocker | Thrift | Duo Zhang | Duo Zhang |
| [HBASE-21853](https://issues.apache.org/jira/browse/HBASE-21853) | update copyright notices to 2019 |  Major | documentation | Sean Busbey | Sean Busbey |


