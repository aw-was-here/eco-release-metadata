
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

## Release 2.2.0 - 2019-06-11



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20649](https://issues.apache.org/jira/browse/HBASE-20649) | Validate HFiles do not have PREFIX\_TREE DataBlockEncoding |  Minor | Operability, tooling | Peter Somogyi | Balazs Meszaros |
| [HBASE-20636](https://issues.apache.org/jira/browse/HBASE-20636) | Introduce two bloom filter type : ROWPREFIX\_FIXED\_LENGTH and ROWPREFIX\_DELIMITED |  Major | HFile, regionserver, Scanners | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21753](https://issues.apache.org/jira/browse/HBASE-21753) | Support getting the locations for all the replicas of a region |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-17942](https://issues.apache.org/jira/browse/HBASE-17942) | Disable region splits and merges per table |  Major | . | Vladimir Rodionov | Nihal Jain |
| [HBASE-20886](https://issues.apache.org/jira/browse/HBASE-20886) | [Auth] Support keytab login in hbase client |  Critical | asyncclient, Client, security | Reid Chan | Reid Chan |
| [HBASE-21926](https://issues.apache.org/jira/browse/HBASE-21926) | Profiler servlet |  Major | master, Operability, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21815](https://issues.apache.org/jira/browse/HBASE-21815) | Make isTrackingMetrics and getMetrics of ScannerContext public |  Minor | . | Chen Feng | Chen Feng |
| [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | Provide an alternative to CellUtil.setTimestamp |  Blocker | API, Coprocessors | Thomas D'Silva | Sean Busbey |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20357](https://issues.apache.org/jira/browse/HBASE-20357) | AccessControlClient API Enhancement |  Major | security | Pankaj Kumar | Pankaj Kumar |
| [HBASE-20396](https://issues.apache.org/jira/browse/HBASE-20396) | Remove redundant MBean from thrift JMX |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20617](https://issues.apache.org/jira/browse/HBASE-20617) | Upgrade/remove jetty-jsp |  Minor | . | Sakthi | Sakthi |
| [HBASE-20672](https://issues.apache.org/jira/browse/HBASE-20672) | New metrics ReadRequestRate and WriteRequestRate |  Minor | metrics | Ankit Jain | Ankit Jain |
| [HBASE-20873](https://issues.apache.org/jira/browse/HBASE-20873) | Update doc for Endpoint-based Export |  Minor | documentation | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20935](https://issues.apache.org/jira/browse/HBASE-20935) | HStore.removeCompactedFiles should log in case it is unable to delete a file |  Minor | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-20856](https://issues.apache.org/jira/browse/HBASE-20856) | PITA having to set WAL provider in two places |  Minor | Operability, wal | Michael Stack | Tak-Lon (Stephen) Wu |
| [HBASE-19036](https://issues.apache.org/jira/browse/HBASE-19036) | Add action in Chaos Monkey to restart Active Namenode |  Minor | . | Mihir Monani | Mihir Monani |
| [HBASE-20986](https://issues.apache.org/jira/browse/HBASE-20986) | Separate the config of block size when we do log splitting and write Hlog |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20845](https://issues.apache.org/jira/browse/HBASE-20845) | Support set the consistency for Gets and Scans in thrift2 |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-20965](https://issues.apache.org/jira/browse/HBASE-20965) | Separate region server report requests to new handlers |  Major | Performance | Yi Mei | Yi Mei |
| [HBASE-20985](https://issues.apache.org/jira/browse/HBASE-20985) | add two attributes when we do normalization |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-20979](https://issues.apache.org/jira/browse/HBASE-20979) | Flaky test reporting should specify what JSON it needs and handle HTTP errors |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-20469](https://issues.apache.org/jira/browse/HBASE-20469) | Directory used for sidelining old recovered edits files should be made configurable |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-20387](https://issues.apache.org/jira/browse/HBASE-20387) | flaky infrastructure should work for all branches |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-21071](https://issues.apache.org/jira/browse/HBASE-21071) | HBaseTestingUtility::startMiniCluster() to use builder pattern |  Major | test | Mingliang Liu | Mingliang Liu |
| [HBASE-20749](https://issues.apache.org/jira/browse/HBASE-20749) | Upgrade our use of checkstyle to 8.6+ |  Minor | build, community | Sean Busbey | Mike Drob |
| [HBASE-21126](https://issues.apache.org/jira/browse/HBASE-21126) | Add ability for HBase Canary to ignore a configurable number of ZooKeeper down nodes |  Minor | canary, Zookeeper | David Manning | David Manning |
| [HBASE-21153](https://issues.apache.org/jira/browse/HBASE-21153) | Shaded client jars should always build in relevant phase to avoid confusion |  Major | build | Michael Stack | Sean Busbey |
| [HBASE-21107](https://issues.apache.org/jira/browse/HBASE-21107) | add a metrics for netty direct memory |  Minor | IPC/RPC | Hua Xiang | Hua Xiang |
| [HBASE-21157](https://issues.apache.org/jira/browse/HBASE-21157) | Split TableInputFormatScan to individual tests |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21129](https://issues.apache.org/jira/browse/HBASE-21129) | Clean up duplicate codes in #equals and #hashCode methods of Filter |  Minor | Filters | Reid Chan | Reid Chan |
| [HBASE-21155](https://issues.apache.org/jira/browse/HBASE-21155) | Save on a few log strings and some churn in wal splitter by skipping out early if no logs in dir |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-20307](https://issues.apache.org/jira/browse/HBASE-20307) | LoadTestTool prints too much zookeeper logging |  Minor | tooling | Mike Drob | Colin Garcia |
| [HBASE-21204](https://issues.apache.org/jira/browse/HBASE-21204) | NPE when scan raw DELETE\_FAMILY\_VERSION and codec is not set |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21164](https://issues.apache.org/jira/browse/HBASE-21164) | reportForDuty to spew less log if master is initializing |  Minor | regionserver | Michael Stack | Mingliang Liu |
| [HBASE-20857](https://issues.apache.org/jira/browse/HBASE-20857) | JMX - add Balancer status = enabled / disabled |  Major | API, master, metrics, REST, tooling, Usability | Hari Sekhon | Kiran Kumar Maturi |
| [HBASE-21207](https://issues.apache.org/jira/browse/HBASE-21207) | Add client side sorting functionality in master web UI for table and region server details. |  Minor | master, monitoring, UI, Usability | Archana Katiyar | Archana Katiyar |
| [HBASE-21103](https://issues.apache.org/jira/browse/HBASE-21103) | nightly test cache of yetus install needs to be more thorough in verification |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-21185](https://issues.apache.org/jira/browse/HBASE-21185) | WALPrettyPrinter: Additional useful info to be printed by wal printer tool, for debugability purposes |  Minor | Operability | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21289](https://issues.apache.org/jira/browse/HBASE-21289) | Remove the log "'hbase.regionserver.maxlogs' was deprecated." in AbstractFSWAL |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21299](https://issues.apache.org/jira/browse/HBASE-21299) | List counts of actual region states in master UI tables section |  Major | UI | Michael Stack | Michael Stack |
| [HBASE-21098](https://issues.apache.org/jira/browse/HBASE-21098) | Improve Snapshot Performance with Temporary Snapshot Directory when rootDir on S3 |  Major | . | Tyler Mi | Tyler Mi |
| [HBASE-21303](https://issues.apache.org/jira/browse/HBASE-21303) | [shell] clear\_deadservers with no args fails |  Major | . | Stack | Michael Stack |
| [HBASE-21251](https://issues.apache.org/jira/browse/HBASE-21251) | Refactor RegionMover |  Major | Operability | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21256](https://issues.apache.org/jira/browse/HBASE-21256) | Improve IntegrationTestBigLinkedList for testing huge data |  Major | integration tests | Zephyr Guo | Zephyr Guo |
| [HBASE-21290](https://issues.apache.org/jira/browse/HBASE-21290) | No need to instantiate BlockCache for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21263](https://issues.apache.org/jira/browse/HBASE-21263) | Mention compression algorithm along with other storefile details |  Minor | . | Andrew Kyle Purtell | Subrat Mishra |
| [HBASE-21318](https://issues.apache.org/jira/browse/HBASE-21318) | Make RefreshHFilesClient runnable |  Minor | HFile | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-21385](https://issues.apache.org/jira/browse/HBASE-21385) | HTable.delete request use rpc call directly instead of AsyncProcess |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21325](https://issues.apache.org/jira/browse/HBASE-21325) | Force to terminate regionserver when abort hang in somewhere |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-21388](https://issues.apache.org/jira/browse/HBASE-21388) | No need to instantiate MemStoreLAB for master which not carry table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19682](https://issues.apache.org/jira/browse/HBASE-19682) | Use Collections.emptyList() For Empty List Values |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-21328](https://issues.apache.org/jira/browse/HBASE-21328) | add HBASE\_DISABLE\_HADOOP\_CLASSPATH\_LOOKUP switch to hbase-env.sh |  Minor | documentation, Operability | cong.han | cong.han |
| [HBASE-21485](https://issues.apache.org/jira/browse/HBASE-21485) | Add more debug logs for remote procedure execution |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21480](https://issues.apache.org/jira/browse/HBASE-21480) | Taking snapshot when RS crashes prevent we bring the regions online |  Major | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-21511](https://issues.apache.org/jira/browse/HBASE-21511) | Remove in progress snapshot check in SnapshotFileCache#getUnreferencedFiles |  Minor | snapshots | Ted Yu | Ted Yu |
| [HBASE-21524](https://issues.apache.org/jira/browse/HBASE-21524) | Unnecessary DEBUG log in ConnectionImplementation#isTableEnabled |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-21413](https://issues.apache.org/jira/browse/HBASE-21413) | Empty meta log doesn't get split when restart whole cluster |  Major | . | Jingyun Tian | Allan Yang |
| [HBASE-21560](https://issues.apache.org/jira/browse/HBASE-21560) | Return a new TableDescriptor for MasterObserver#preModifyTable to allow coprocessor modify the TableDescriptor |  Major | Coprocessors | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21567](https://issues.apache.org/jira/browse/HBASE-21567) | Allow overriding configs starting up the shell |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-21283](https://issues.apache.org/jira/browse/HBASE-21283) | Add new shell command 'rit' for listing regions in transition |  Minor | Operability, shell | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21549](https://issues.apache.org/jira/browse/HBASE-21549) | Add shell command for serial replication peer |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21554](https://issues.apache.org/jira/browse/HBASE-21554) | Show replication endpoint classname for replication peer on master web UI |  Minor | UI | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21520](https://issues.apache.org/jira/browse/HBASE-21520) | TestMultiColumnScanner cost long time when using ROWCOL bloom type |  Major | test | Zheng Hu | Zheng Hu |
| [HBASE-21514](https://issues.apache.org/jira/browse/HBASE-21514) | Refactor CacheConfig |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21635](https://issues.apache.org/jira/browse/HBASE-21635) | Use maven enforcer to ban imports from illegal packages |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-21631](https://issues.apache.org/jira/browse/HBASE-21631) | list\_quotas should print human readable values for LIMIT |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21640](https://issues.apache.org/jira/browse/HBASE-21640) | Remove the TODO when increment zero |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21643](https://issues.apache.org/jira/browse/HBASE-21643) | Introduce two new region coprocessor method and deprecated postMutationBeforeWAL |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21642](https://issues.apache.org/jira/browse/HBASE-21642) | CopyTable by reading snapshot and bulkloading will save a lot of time. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21659](https://issues.apache.org/jira/browse/HBASE-21659) | Avoid to load duplicate coprocessors in system config and table descriptor |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21662](https://issues.apache.org/jira/browse/HBASE-21662) | Add append\_peer\_exclude\_namespaces and remove\_peer\_exclude\_namespaces shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21360](https://issues.apache.org/jira/browse/HBASE-21360) | Disable printing of stack-trace in shell for quotas |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21645](https://issues.apache.org/jira/browse/HBASE-21645) | Perform sanity check and disallow table creation/modification with region replication \< 1 |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21694](https://issues.apache.org/jira/browse/HBASE-21694) | Add append\_peer\_exclude\_tableCFs and remove\_peer\_exclude\_tableCFs shell commands |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21700](https://issues.apache.org/jira/browse/HBASE-21700) | Simplify the implementation of RSGroupInfoManagerImpl |  Major | rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-21297](https://issues.apache.org/jira/browse/HBASE-21297) | ModifyTableProcedure can throw TNDE instead of IOE in case of REGION\_REPLICATION change |  Minor | . | Nihal Jain | Nihal Jain |
| [HBASE-21590](https://issues.apache.org/jira/browse/HBASE-21590) | Optimize trySkipToNextColumn in StoreScanner a bit |  Critical | Performance, Scanners | Lars Hofhansl | Lars Hofhansl |
| [HBASE-21712](https://issues.apache.org/jira/browse/HBASE-21712) | Make submit-patch.py python3 compatible |  Minor | tooling | Tommy Li | Tommy Li |
| [HBASE-20209](https://issues.apache.org/jira/browse/HBASE-20209) | Do Not Use Both Map containsKey and get Methods in Replication Sink |  Trivial | Replication | David Mollitor | David Mollitor |
| [HBASE-21595](https://issues.apache.org/jira/browse/HBASE-21595) | Print thread's information and stack traces when RS is aborting forcibly |  Minor | regionserver | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21720](https://issues.apache.org/jira/browse/HBASE-21720) | metric to measure how actions are distributed to servers within a MultiAction |  Minor | Client, metrics, monitoring | Tommy Li | Tommy Li |
| [HBASE-20215](https://issues.apache.org/jira/browse/HBASE-20215) | Rename CollectionUtils to ConcurrentMapUtils |  Trivial | . | David Mollitor | Wellington Chevreuil |
| [HBASE-21689](https://issues.apache.org/jira/browse/HBASE-21689) | Make table/namespace specific current quota info available in shell(describe\_namespace & describe) |  Minor | . | Sakthi | Sakthi |
| [HBASE-21789](https://issues.apache.org/jira/browse/HBASE-21789) | Rewrite MetaTableAccessor.multiMutate with Table.coprocessorService |  Major | Client, Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-21634](https://issues.apache.org/jira/browse/HBASE-21634) | Print error message when user uses unacceptable values for LIMIT while setting quotas. |  Minor | . | Sakthi | Sakthi |
| [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | Throw DNRIOE when connection or rpc client is closed |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21833](https://issues.apache.org/jira/browse/HBASE-21833) | Use NettyAsyncFSWALConfigHelper.setEventLoopConfig to prevent creating too many netty event loop when executing TestHRegion |  Minor | test | Duo Zhang | Duo Zhang |
| [HBASE-21830](https://issues.apache.org/jira/browse/HBASE-21830) | Backport HBASE-20577 (Make Log Level page design consistent with the design of other pages in UI) to branch-2 |  Major | UI, Usability | Nihal Jain | Nihal Jain |
| [HBASE-19616](https://issues.apache.org/jira/browse/HBASE-19616) | Review of LogCleaner Class |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-21816](https://issues.apache.org/jira/browse/HBASE-21816) | Print source cluster replication config directory |  Trivial | Replication | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-21201](https://issues.apache.org/jira/browse/HBASE-21201) | Support to run VerifyReplication MR tool without peerid |  Major | hbase-operator-tools | Sujit P | Toshihiro Suzuki |
| [HBASE-21857](https://issues.apache.org/jira/browse/HBASE-21857) | Do not need to check clusterKey if replicationEndpoint is provided when adding a peer |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21636](https://issues.apache.org/jira/browse/HBASE-21636) | Enhance the shell scan command to support missing scanner specifications like ReadType, IsolationLevel etc. |  Major | shell | Nihal Jain | Nihal Jain |
| [HBASE-21780](https://issues.apache.org/jira/browse/HBASE-21780) | Avoid a wide line on the RegionServer webUI for many ZooKeeper servers |  Minor | UI, Usability | Sakthi | Sakthi |
| [HBASE-21875](https://issues.apache.org/jira/browse/HBASE-21875) | Change the retry logic in RSProcedureDispatcher to 'retry by default, only if xxx' |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21932](https://issues.apache.org/jira/browse/HBASE-21932) | Use Runtime.getRuntime().halt to terminate regionserver when abort timeout |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21867](https://issues.apache.org/jira/browse/HBASE-21867) | Support multi-threads in HFileArchiver |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21967](https://issues.apache.org/jira/browse/HBASE-21967) | Split TestServerCrashProcedure and TestServerCrashProcedureWithReplicas |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21481](https://issues.apache.org/jira/browse/HBASE-21481) | [acl] Superuser's permissions should not be granted or revoked by any non-su global admin |  Major | . | Reid Chan | Reid Chan |
| [HBASE-20401](https://issues.apache.org/jira/browse/HBASE-20401) | Make \`MAX\_WAIT\` and \`waitIfNotFinished\` in CleanerContext configurable |  Minor | master | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-20734](https://issues.apache.org/jira/browse/HBASE-20734) | Colocate recovered edits directory with hbase.wal.dir |  Major | MTTR, Recovery, wal | Ted Yu | Zach York |
| [HBASE-21410](https://issues.apache.org/jira/browse/HBASE-21410) | A helper page that help find all problematic regions and procedures |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21255](https://issues.apache.org/jira/browse/HBASE-21255) | [acl] Refactor TablePermission into three classes (Global, Namespace, Table) |  Major | . | Reid Chan | Reid Chan |
| [HBASE-21871](https://issues.apache.org/jira/browse/HBASE-21871) | Support to specify a peer table name in VerifyReplication tool |  Major | . | Toshihiro Suzuki | Subrat Mishra |
| [HBASE-21987](https://issues.apache.org/jira/browse/HBASE-21987) | Simplify RSGroupInfoManagerImpl#flushConfig() for offline mode |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-21810](https://issues.apache.org/jira/browse/HBASE-21810) | bulkload  support set hfile compression on client |  Major | mapreduce | Yechao Chen | Yechao Chen |
| [HBASE-21667](https://issues.apache.org/jira/browse/HBASE-21667) | Move to latest ASF Parent POM |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22032](https://issues.apache.org/jira/browse/HBASE-22032) | KeyValue validation should check for null byte array |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-22009](https://issues.apache.org/jira/browse/HBASE-22009) | Improve RSGroupInfoManagerImpl#getDefaultServers() |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-22093](https://issues.apache.org/jira/browse/HBASE-22093) | Combine TestRestoreSnapshotFromClientWithRegionReplicas to CloneSnapshotFromClientAfterSplittingRegionTestBase#testCloneSnapshotAfterSplittingRegion |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21964](https://issues.apache.org/jira/browse/HBASE-21964) | unset Quota by Throttle Type |  Major | master | yaojingyi | yaojingyi |
| [HBASE-22097](https://issues.apache.org/jira/browse/HBASE-22097) | Modify the description of split command in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22188](https://issues.apache.org/jira/browse/HBASE-22188) | Make TestSplitMerge more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22193](https://issues.apache.org/jira/browse/HBASE-22193) | Add backoff when region failed open too many times |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21257](https://issues.apache.org/jira/browse/HBASE-21257) | misspelled words.[occured -\> occurred] |  Trivial | . | zhanggangxue | zhanggangxue |
| [HBASE-20586](https://issues.apache.org/jira/browse/HBASE-20586) | SyncTable tool: Add support for cross-realm remote clusters |  Major | mapreduce, Operability, Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22250](https://issues.apache.org/jira/browse/HBASE-22250) | The same constants used in many places should be placed in constant classes |  Minor | Client, conf, regionserver | lixiaobao | lixiaobao |
| [HBASE-22296](https://issues.apache.org/jira/browse/HBASE-22296) | Remove TestFromClientSide.testGetStartEndKeysWithRegionReplicas |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22283](https://issues.apache.org/jira/browse/HBASE-22283) | Print row and table information when failed to get region location |  Major | Client, logging | Yu Li | Yu Li |
| [HBASE-22291](https://issues.apache.org/jira/browse/HBASE-22291) | Fix recovery of recovered.edits files under root dir |  Major | . | Zach York | Zach York |
| [HBASE-22225](https://issues.apache.org/jira/browse/HBASE-22225) | Profiler tab on Master/RS UI not working w/o comprehensive message |  Minor | UI | Yu Li | Andrew Kyle Purtell |
| [HBASE-22341](https://issues.apache.org/jira/browse/HBASE-22341) | Add explicit guidelines for removing deprecations in book |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22087](https://issues.apache.org/jira/browse/HBASE-22087) | Update LICENSE/shading for the dependencies from the latest Hadoop trunk |  Minor | hadoop3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22109](https://issues.apache.org/jira/browse/HBASE-22109) | Update hbase shaded content checker after guava update in hadoop branch-3.0 to 27.0-jre |  Minor | . | Gabor Bota | Gabor Bota |
| [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | Fix Markdown for "Voting on Release Candidates" in book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | Change rubocop configuration for method length |  Minor | community, shell | Jan Hentschel | Murtaza Hassan |
| [HBASE-20494](https://issues.apache.org/jira/browse/HBASE-20494) | Upgrade com.yammer.metrics dependency |  Major | dependencies | Vlad Rozov | Jan Hentschel |
| [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | Remove extra/useless + |  Trivial | . | puleya7 | puleya7 |
| [HBASE-22365](https://issues.apache.org/jira/browse/HBASE-22365) | Region may be opened on two RegionServers |  Blocker | amv2 | Guanghao Zhang | Duo Zhang |
| [HBASE-21658](https://issues.apache.org/jira/browse/HBASE-21658) | Should get the meta replica number from zk instead of config at client side |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | Formatting issues in administration section of book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | Dump replication queue should show list of wal files ordered chronologically |  Major | Replication, tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-20305](https://issues.apache.org/jira/browse/HBASE-20305) | Add option to SyncTable that skip deletes on target cluster |  Minor | mapreduce | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22474](https://issues.apache.org/jira/browse/HBASE-22474) | Add --mvn-custom-repo parameter to yetus calls |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22467](https://issues.apache.org/jira/browse/HBASE-22467) | WebUI changes to enable Apache Knox UI proxying |  Major | UI | Josh Elser | Josh Elser |
| [HBASE-22411](https://issues.apache.org/jira/browse/HBASE-22411) | Refactor codes of moving reigons in RSGroup |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22488](https://issues.apache.org/jira/browse/HBASE-22488) | Cleanup the explicit timeout value for test methods |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22496](https://issues.apache.org/jira/browse/HBASE-22496) | UnsafeAccess.unsafeCopy should not copy more than UNSAFE\_COPY\_THRESHOLD on each iteration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22511](https://issues.apache.org/jira/browse/HBASE-22511) | More missing /rs-status links |  Minor | UI | Josh Elser | Josh Elser |
| [HBASE-22523](https://issues.apache.org/jira/browse/HBASE-22523) | Refactor RegionStates#getAssignmentsByTable to make it easy to understand |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22284](https://issues.apache.org/jira/browse/HBASE-22284) | optimization StringBuilder.append of AbstractMemStore.toString |  Trivial | . | wen.feiyi | wen.feiyi |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20770](https://issues.apache.org/jira/browse/HBASE-20770) | WAL cleaner logs way too much; gets clogged when lots of work to do |  Critical | logging | Michael Stack | Michael Stack |
| [HBASE-20791](https://issues.apache.org/jira/browse/HBASE-20791) | RSGroupBasedLoadBalancer#setClusterMetrics should pass ClusterMetrics to its internalBalancer |  Major | Balancer, rsgroup | chenxu | chenxu |
| [HBASE-20697](https://issues.apache.org/jira/browse/HBASE-20697) | Can't cache All region locations of the specify table by calling table.getRegionLocator().getAllRegionLocations() |  Major | meta | zhaoyuan | zhaoyuan |
| [HBASE-19572](https://issues.apache.org/jira/browse/HBASE-19572) | RegionMover should use the configured default port number and not the one from HConstants |  Major | . | Esteban Gutierrez | Toshihiro Suzuki |
| [HBASE-20865](https://issues.apache.org/jira/browse/HBASE-20865) | CreateTableProcedure is stuck in retry loop in CREATE\_TABLE\_WRITE\_FS\_LAYOUT state |  Major | amv2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20879](https://issues.apache.org/jira/browse/HBASE-20879) | Compacting memstore config should handle lower case |  Major | . | Tushar | Ted Yu |
| [HBASE-20869](https://issues.apache.org/jira/browse/HBASE-20869) | Endpoint-based Export use incorrect user to write to destination |  Major | Coprocessors | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-6028](https://issues.apache.org/jira/browse/HBASE-6028) | Implement a cancel for in-progress compactions |  Minor | regionserver | Derek Wollenstein | Mohit Goel |
| [HBASE-20901](https://issues.apache.org/jira/browse/HBASE-20901) | Reducing region replica has no effect |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-20870](https://issues.apache.org/jira/browse/HBASE-20870) | Wrong HBase root dir in ITBLL's Search Tool |  Minor | integration tests | Allan Yang | Allan Yang |
| [HBASE-19893](https://issues.apache.org/jira/browse/HBASE-19893) | restore\_snapshot is broken in master branch when region splits |  Critical | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20908](https://issues.apache.org/jira/browse/HBASE-20908) | Infinite loop on regionserver if region replica are reduced |  Major | read replicas | Ankit Singhal | Ankit Singhal |
| [HBASE-20565](https://issues.apache.org/jira/browse/HBASE-20565) | ColumnRangeFilter combined with ColumnPaginationFilter can produce incorrect result since 1.4 |  Major | Filters | Jerry He | Zheng Hu |
| [HBASE-20928](https://issues.apache.org/jira/browse/HBASE-20928) | Rewrite calculation of midpoint in binarySearch functions to prevent overflow |  Minor | io | saurabh singh | saurabh singh |
| [HBASE-20932](https://issues.apache.org/jira/browse/HBASE-20932) | Effective MemStoreSize::hashCode() |  Major | . | Mingliang Liu | Mingliang Liu |
| [HBASE-20927](https://issues.apache.org/jira/browse/HBASE-20927) | RSGroupAdminEndpoint doesn't handle clearing dead servers if they are not processed yet. |  Major | . | Sergey Soldatov | Sergey Soldatov |
| [HBASE-20538](https://issues.apache.org/jira/browse/HBASE-20538) | Upgrade our hadoop versions to 2.7.7 and 3.0.3 |  Critical | java, security | Michael Stack | Duo Zhang |
| [HBASE-20794](https://issues.apache.org/jira/browse/HBASE-20794) | CreateTable operation does not log its landing at the master nor the initiator at INFO level |  Major | logging | Michael Stack | Xu Cang |
| [HBASE-21007](https://issues.apache.org/jira/browse/HBASE-21007) | Memory leak in HBase rest server |  Critical | REST | Bosko Devetak | Bosko Devetak |
| [HBASE-21005](https://issues.apache.org/jira/browse/HBASE-21005) | Maven site configuration causes downstream projects to get a directory named ${project.basedir} |  Minor | build | Matt Burgess | Josh Elser |
| [HBASE-21047](https://issues.apache.org/jira/browse/HBASE-21047) | Object creation of StoreFileScanner thru constructor and close may leave refCount to -1 |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21062](https://issues.apache.org/jira/browse/HBASE-21062) | WALFactory has misleading notion of "default" |  Major | wal | Josh Elser | Josh Elser |
| [HBASE-21074](https://issues.apache.org/jira/browse/HBASE-21074) | JDK7 branches need to pass "-Dhttps.protocols=TLSv1.2" to maven when building |  Major | build, community, test | Sean Busbey | Sean Busbey |
| [HBASE-21058](https://issues.apache.org/jira/browse/HBASE-21058) | Nightly tests for branches 1 fail to build ref guide |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-20705](https://issues.apache.org/jira/browse/HBASE-20705) | Having RPC Quota on a table prevents Space quota to be recreated/removed |  Major | . | Biju Nair | Sakthi |
| [HBASE-21032](https://issues.apache.org/jira/browse/HBASE-21032) | ScanResponses contain only one cell each |  Major | Performance, Scanners | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-20666](https://issues.apache.org/jira/browse/HBASE-20666) | Unsuccessful table creation leaves entry in hbase:rsgroup table |  Minor | . | Biju Nair | Xu Cang |
| [HBASE-21031](https://issues.apache.org/jira/browse/HBASE-21031) | Memory leak if replay edits failed during region opening |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21041](https://issues.apache.org/jira/browse/HBASE-21041) | Memstore's heap size will be decreased to minus zero after flush |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20614](https://issues.apache.org/jira/browse/HBASE-20614) | REST scan API with incorrect filter text file throws HTTP 503 Service Unavailable error |  Minor | REST | Nihal Jain | Nihal Jain |
| [HBASE-19008](https://issues.apache.org/jira/browse/HBASE-19008) | Add missing equals or hashCode method(s) to stock Filter implementations |  Major | . | Ted Yu | liubangchen |
| [HBASE-21101](https://issues.apache.org/jira/browse/HBASE-21101) | Remove the waitUntilAllRegionsAssigned call after split in TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21113](https://issues.apache.org/jira/browse/HBASE-21113) | Apply the branch-2 version of HBASE-21095, The timeout retry logic for several procedures are broken after master restarts |  Major | amv2 | Michael Stack | Allan Yang |
| [HBASE-21078](https://issues.apache.org/jira/browse/HBASE-21078) | [amv2] CODE-BUG NPE in RTP doing Unassign |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-20978](https://issues.apache.org/jira/browse/HBASE-20978) | [amv2] Worker terminating UNNATURALLY during MoveRegionProcedure |  Critical | amv2 | Michael Stack | Allan Yang |
| [HBASE-20772](https://issues.apache.org/jira/browse/HBASE-20772) | Controlled shutdown fills Master log with the disturbing message "No matching procedure found for rit=OPEN, location=ZZZZ, table=YYYYY, region=XXXX transition to CLOSED |  Major | logging | Michael Stack | Michael Stack |
| [HBASE-20890](https://issues.apache.org/jira/browse/HBASE-20890) | PE filterScan seems to be stuck forever |  Minor | . | Vikas Vishwakarma | Abhishek Goyal |
| [HBASE-21088](https://issues.apache.org/jira/browse/HBASE-21088) | HStoreFile should be closed in HStore#hasReferences |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21030](https://issues.apache.org/jira/browse/HBASE-21030) | Correct javadoc for append operation |  Minor | documentation | Nihal Jain | Subrat Mishra |
| [HBASE-20968](https://issues.apache.org/jira/browse/HBASE-20968) | list\_procedures\_test fails due to no matching regex |  Major | shell, test | Ted Yu | Duo Zhang |
| [HBASE-21084](https://issues.apache.org/jira/browse/HBASE-21084) | When cloning a snapshot including a split parent region, the split parent region of the cloned table will be online |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20940](https://issues.apache.org/jira/browse/HBASE-20940) | HStore.cansplit should not allow split to happen if it has references |  Major | . | Vishal Khandelwal | Vishal Khandelwal |
| [HBASE-21128](https://issues.apache.org/jira/browse/HBASE-21128) | TestAsyncRegionAdminApi.testAssignRegionAndUnassignRegion is broken |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21132](https://issues.apache.org/jira/browse/HBASE-21132) | return wrong result in rest multiget |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21136](https://issues.apache.org/jira/browse/HBASE-21136) | NPE in MetricsTableSourceImpl.updateFlushTime |  Major | metrics | Guanghao Zhang | Duo Zhang |
| [HBASE-20892](https://issues.apache.org/jira/browse/HBASE-20892) | [UI] Start / End keys are empty on table.jsp |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-21127](https://issues.apache.org/jira/browse/HBASE-21127) | TableRecordReader need to handle cursor result too |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20741](https://issues.apache.org/jira/browse/HBASE-20741) | Split of a region with replicas creates all daughter regions and its replica in same server |  Major | read replicas | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21001](https://issues.apache.org/jira/browse/HBASE-21001) | ReplicationObserver fails to load in HBase 2.0.0 |  Major | . | Wei-Chiu Chuang | Guangxu Cheng |
| [HBASE-21052](https://issues.apache.org/jira/browse/HBASE-21052) | After restoring a snapshot, table.jsp page for the table gets stuck |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21171](https://issues.apache.org/jira/browse/HBASE-21171) | [amv2] Tool to parse a directory of MasterProcWALs standalone |  Major | amv2, test | Michael Stack | Michael Stack |
| [HBASE-21143](https://issues.apache.org/jira/browse/HBASE-21143) | Update findbugs-maven-plugin to 3.0.4 |  Major | pom | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21144](https://issues.apache.org/jira/browse/HBASE-21144) | AssignmentManager.waitForAssignment is not stable |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-21173](https://issues.apache.org/jira/browse/HBASE-21173) | Remove the duplicate HRegion#close in TestHRegion |  Minor | test | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21021](https://issues.apache.org/jira/browse/HBASE-21021) | Result returned by Append operation should be ordered |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-21181](https://issues.apache.org/jira/browse/HBASE-21181) | Use the same filesystem for wal archive directory and wal directory |  Major | . | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-21174](https://issues.apache.org/jira/browse/HBASE-21174) | [REST] Failed to parse empty qualifier in TableResource#getScanResource |  Major | REST | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21179](https://issues.apache.org/jira/browse/HBASE-21179) | Fix the number of actions in responseTooSlow log |  Major | logging, rpc | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21182](https://issues.apache.org/jira/browse/HBASE-21182) | Failed to execute start-hbase.sh |  Major | . | Subrat Mishra | Toshihiro Suzuki |
| [HBASE-21206](https://issues.apache.org/jira/browse/HBASE-21206) | Scan with batch size may return incomplete cells |  Critical | Scanners | Zheng Hu | Zheng Hu |
| [HBASE-21102](https://issues.apache.org/jira/browse/HBASE-21102) | ServerCrashProcedure should select target server where no other replicas exist for the current region |  Major | Region Assignment | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21203](https://issues.apache.org/jira/browse/HBASE-21203) | TestZKMainServer#testCommandLineWorks won't pass with default 4lw whitelist |  Minor | test, Zookeeper | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-20704](https://issues.apache.org/jira/browse/HBASE-20704) | Sometimes some compacted storefiles are not archived on region close |  Critical | Compaction | Francis Christopher Liu | Francis Christopher Liu |
| [HBASE-21208](https://issues.apache.org/jira/browse/HBASE-21208) | Bytes#toShort doesn't work without unsafe |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-21223](https://issues.apache.org/jira/browse/HBASE-21223) | [amv2] Remove abort\_procedure from shell |  Critical | amv2, hbck2, shell | Michael Stack | Michael Stack |
| [HBASE-21212](https://issues.apache.org/jira/browse/HBASE-21212) | Wrong flush time when update flush metric |  Minor | . | Allan Yang | Allan Yang |
| [HBASE-21232](https://issues.apache.org/jira/browse/HBASE-21232) | Show table state in Tables view on Master home page |  Major | Operability, UI | Michael Stack | Michael Stack |
| [HBASE-20766](https://issues.apache.org/jira/browse/HBASE-20766) | Verify Replication Tool Has Typo "remove cluster" |  Trivial | . | Clay B. | Ferran Fernandez Garrido |
| [HBASE-21228](https://issues.apache.org/jira/browse/HBASE-21228) | Memory leak since AbstractFSWAL caches Thread object and never clean later |  Critical | wal | Allan Yang | Allan Yang |
| [HBASE-18451](https://issues.apache.org/jira/browse/HBASE-18451) | PeriodicMemstoreFlusher should inspect the queue before adding a delayed flush request |  Major | regionserver | Jean-Marc Spaggiari | Xu Cang |
| [HBASE-19418](https://issues.apache.org/jira/browse/HBASE-19418) | RANGE\_OF\_DELAY in PeriodicMemstoreFlusher should be configurable. |  Minor | . | Jean-Marc Spaggiari | Ramie Raufdeen |
| [HBASE-21196](https://issues.apache.org/jira/browse/HBASE-21196) | HTableMultiplexer clears the meta cache after every put operation |  Critical | Performance | Nihal Jain | Nihal Jain |
| [HBASE-21248](https://issues.apache.org/jira/browse/HBASE-21248) | Implement exponential backoff when retrying for ModifyPeerProcedure |  Major | proc-v2, Replication | Duo Zhang | Duo Zhang |
| [HBASE-18549](https://issues.apache.org/jira/browse/HBASE-18549) | Unclaimed replication queues can go undetected |  Critical | Replication | Ashu Pachauri | Xu Cang |
| [HBASE-20764](https://issues.apache.org/jira/browse/HBASE-20764) | build broken when latest commit is gpg signed |  Critical | build | Mike Drob | Mike Drob |
| [HBASE-21280](https://issues.apache.org/jira/browse/HBASE-21280) | Add anchors for each heading in UI |  Trivial | UI, Usability | Michael Stack | Michael Stack |
| [HBASE-21158](https://issues.apache.org/jira/browse/HBASE-21158) | Empty qualifier cell should not be returned if it does not match QualifierFilter |  Critical | Filters | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21260](https://issues.apache.org/jira/browse/HBASE-21260) | The whole balancer plans might be aborted if there are more than one plans to move a same region |  Major | Balancer, master | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21266](https://issues.apache.org/jira/browse/HBASE-21266) | Not running balancer because processing dead regionservers, but empty dead rs list |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21320](https://issues.apache.org/jira/browse/HBASE-21320) | [canary] Cleanup of usage and add commentary |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-21327](https://issues.apache.org/jira/browse/HBASE-21327) | Fix minor logging issue where we don't report servername if no associated SCP |  Trivial | amv2 | Michael Stack | Michael Stack |
| [HBASE-21055](https://issues.apache.org/jira/browse/HBASE-21055) | NullPointerException when balanceOverall() but server balance info is null |  Major | Balancer | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21291](https://issues.apache.org/jira/browse/HBASE-21291) | Add a test for bypassing stuck state-machine procedures |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21335](https://issues.apache.org/jira/browse/HBASE-21335) | Change the default wait time of HBCK2 tool |  Critical | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21292](https://issues.apache.org/jira/browse/HBASE-21292) | IdLock.getLockEntry() may hang if interrupted |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21200](https://issues.apache.org/jira/browse/HBASE-21200) | Memstore flush doesn't finish because of seekToPreviousRow() in memstore scanner. |  Critical | Scanners | dongjin2193.jeon | Toshihiro Suzuki |
| [HBASE-21178](https://issues.apache.org/jira/browse/HBASE-21178) | [BC break] : Get and Scan operation with a custom converter\_class not working |  Critical | shell | Subrat Mishra | Subrat Mishra |
| [HBASE-21334](https://issues.apache.org/jira/browse/HBASE-21334) | TestMergeTableRegionsProcedure is flakey |  Major | amv2, proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-21355](https://issues.apache.org/jira/browse/HBASE-21355) | HStore's storeSize is calculated repeatedly which causing the confusing region split |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21356](https://issues.apache.org/jira/browse/HBASE-21356) | bulkLoadHFile API should ensure that rs has the source hfile's write permission |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21349](https://issues.apache.org/jira/browse/HBASE-21349) | Cluster is going down but CatalogJanitor and Normalizer try to run and fail noisely |  Minor | . | Michael Stack | Xu Cang |
| [HBASE-21342](https://issues.apache.org/jira/browse/HBASE-21342) | FileSystem in use may get closed by other bulk load call  in secure bulkLoad |  Major | . | mazhenlin | mazhenlin |
| [HBASE-21391](https://issues.apache.org/jira/browse/HBASE-21391) | RefreshPeerProcedure should also wait master initialized before executing |  Major | Replication | Duo Zhang | Duo Zhang |
| [HBASE-21371](https://issues.apache.org/jira/browse/HBASE-21371) | Hbase unable to compile against Hadoop trunk (3.3.0-SNAPSHOT) due to license error |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-21417](https://issues.apache.org/jira/browse/HBASE-21417) | Pre commit build is broken due to surefire plugin crashes |  Critical | build | Duo Zhang | Duo Zhang |
| [HBASE-21424](https://issues.apache.org/jira/browse/HBASE-21424) | Change flakies and nightlies so scheduled less often |  Major | build | Michael Stack | Michael Stack |
| [HBASE-21422](https://issues.apache.org/jira/browse/HBASE-21422) | NPE in TestMergeTableRegionsProcedure.testMergeWithoutPONR |  Major | proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-21407](https://issues.apache.org/jira/browse/HBASE-21407) | Resolve NPE in backup Master UI |  Minor | UI | Jingyun Tian | Jingyun Tian |
| [HBASE-21425](https://issues.apache.org/jira/browse/HBASE-21425) | 2.1.1 fails to start over 1.x data; namespace not assigned |  Critical | amv2 | Michael Stack | Michael Stack |
| [HBASE-21438](https://issues.apache.org/jira/browse/HBASE-21438) | TestAdmin2#testGetProcedures fails due to FailedProcedure inaccessible |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21430](https://issues.apache.org/jira/browse/HBASE-21430) | [hbase-connectors] Move hbase-spark\* modules to hbase-connectors repo |  Major | hbase-connectors, spark | Michael Stack | Michael Stack |
| [HBASE-21247](https://issues.apache.org/jira/browse/HBASE-21247) | Custom Meta WAL Provider doesn't default to custom WAL Provider whose configuration value is outside the enums in Providers |  Major | wal | Ted Yu | Ted Yu |
| [HBASE-20604](https://issues.apache.org/jira/browse/HBASE-20604) | ProtobufLogReader#readNext can incorrectly loop to the same position in the stream until the the WAL is rolled |  Critical | Replication, wal | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-21439](https://issues.apache.org/jira/browse/HBASE-21439) | StochasticLoadBalancer RegionLoads aren’t being used in RegionLoad cost functions |  Major | Balancer | Ben Lau | Ben Lau |
| [HBASE-21437](https://issues.apache.org/jira/browse/HBASE-21437) | Bypassed procedure throw IllegalArgumentException when its state is WAITING\_TIMEOUT |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21445](https://issues.apache.org/jira/browse/HBASE-21445) | CopyTable by bulkload will write hfile into yarn's HDFS |  Major | mapreduce | Zheng Hu | Zheng Hu |
| [HBASE-21466](https://issues.apache.org/jira/browse/HBASE-21466) | WALProcedureStore uses wrong FileSystem if wal.dir is not under rootdir |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21452](https://issues.apache.org/jira/browse/HBASE-21452) | Illegal character in hbase counters group name |  Major | spark | Michael Stack | Michael Stack |
| [HBASE-21503](https://issues.apache.org/jira/browse/HBASE-21503) | Replication normal source can get stuck due potential race conditions between source wal reader and wal provider initialization threads. |  Blocker | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21387](https://issues.apache.org/jira/browse/HBASE-21387) | Race condition surrounding in progress snapshot handling in snapshot cache leads to loss of snapshot files |  Major | snapshots | Ted Yu | Ted Yu |
| [HBASE-21507](https://issues.apache.org/jira/browse/HBASE-21507) | Compaction failed when execute AbstractMultiFileWriter.beforeShipped() method |  Critical | Compaction, regionserver | lixiaobao | lixiaobao |
| [HBASE-21492](https://issues.apache.org/jira/browse/HBASE-21492) | CellCodec Written To WAL Before It's Verified |  Critical | wal | David Mollitor | David Mollitor |
| [HBASE-21300](https://issues.apache.org/jira/browse/HBASE-21300) | Fix the wrong reference file path when restoring snapshots for tables with MOB columns |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21504](https://issues.apache.org/jira/browse/HBASE-21504) | If enable FIFOCompactionPolicy, a compaction may write a "empty" hfile whose maxTimeStamp is long max. This kind of hfile will never be archived. |  Critical | Compaction | xuming | Zheng Hu |
| [HBASE-21518](https://issues.apache.org/jira/browse/HBASE-21518) | TestMasterFailoverWithProcedures is flaky |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21479](https://issues.apache.org/jira/browse/HBASE-21479) | Individual tests in TestHRegionReplayEvents class are failing |  Major | . | Ted Yu | Peter Somogyi |
| [HBASE-21550](https://issues.apache.org/jira/browse/HBASE-21550) | Add a new method preCreateTableRegionInfos for MasterObserver which allows CPs to modify the TableDescriptor |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-21551](https://issues.apache.org/jira/browse/HBASE-21551) | Memory leak when use scan with STREAM at server side |  Blocker | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21559](https://issues.apache.org/jira/browse/HBASE-21559) | The RestoreSnapshotFromClientTestBase related UT are flaky |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21453](https://issues.apache.org/jira/browse/HBASE-21453) | Convert ReadOnlyZKClient to DEBUG instead of INFO |  Major | logging, Zookeeper | Michael Stack | Sakthi |
| [HBASE-21568](https://issues.apache.org/jira/browse/HBASE-21568) | Disable use of BlockCache for LoadIncrementalHFiles |  Major | Client | Josh Elser | Josh Elser |
| [HBASE-21582](https://issues.apache.org/jira/browse/HBASE-21582) | If call HBaseAdmin#snapshotAsync but forget call isSnapshotFinished, then SnapshotHFileCleaner will skip to run every time |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21575](https://issues.apache.org/jira/browse/HBASE-21575) | memstore above high watermark message is logged too much |  Minor | logging, regionserver | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21589](https://issues.apache.org/jira/browse/HBASE-21589) | TestCleanupMetaWAL fails |  Blocker | test, wal | Michael Stack | Michael Stack |
| [HBASE-21592](https://issues.apache.org/jira/browse/HBASE-21592) | quota.addGetResult(r)  throw  NPE |  Major | . | xuqinya | xuqinya |
| [HBASE-21498](https://issues.apache.org/jira/browse/HBASE-21498) | Master OOM when SplitTableRegionProcedure new CacheConfig and instantiate a new BlockCache |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21610](https://issues.apache.org/jira/browse/HBASE-21610) | numOpenConnections metric is set to -1 when zero server channel exist |  Minor | metrics | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21620](https://issues.apache.org/jira/browse/HBASE-21620) | Problem in scan query when using more than one column prefix filter in some cases. |  Major | Scanners | Mohamed Mohideen Meeran | Zheng Hu |
| [HBASE-21621](https://issues.apache.org/jira/browse/HBASE-21621) | Reversed scan does not return expected  number of rows |  Critical | Scanners | Nihal Jain | Guanghao Zhang |
| [HBASE-21629](https://issues.apache.org/jira/browse/HBASE-21629) | draining\_servers.rb is broken |  Major | scripts | Nihal Jain | Nihal Jain |
| [HBASE-21545](https://issues.apache.org/jira/browse/HBASE-21545) | NEW\_VERSION\_BEHAVIOR breaks Get/Scan with specified columns |  Major | API | Andrey Elenskiy | Andrey Elenskiy |
| [HBASE-21646](https://issues.apache.org/jira/browse/HBASE-21646) | Flakey TestTableSnapshotInputFormat; DisableTable not completing... |  Major | test | Michael Stack | Michael Stack |
| [HBASE-21660](https://issues.apache.org/jira/browse/HBASE-21660) | Apply the cell to right memstore for increment/append operation |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21547](https://issues.apache.org/jira/browse/HBASE-21547) | Precommit uses master flaky list for other branches |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-21630](https://issues.apache.org/jira/browse/HBASE-21630) | [shell] Define ENDKEY == STOPROW (we have ENDROW) |  Trivial | shell | Michael Stack | Nihal Jain |
| [HBASE-21683](https://issues.apache.org/jira/browse/HBASE-21683) | Reset readsEnabled flag after successfully flushing the primary region |  Critical | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21618](https://issues.apache.org/jira/browse/HBASE-21618) | Scan with the same startRow(inclusive=true) and stopRow(inclusive=false) returns one result |  Critical | Client | Jermy Li | Guanghao Zhang |
| [HBASE-21614](https://issues.apache.org/jira/browse/HBASE-21614) | RIT recovery with ServerCrashProcedure doesn't account for all regions |  Critical | amv2 | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21695](https://issues.apache.org/jira/browse/HBASE-21695) | Fix flaky test TestRegionServerAbortTimeout |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21691](https://issues.apache.org/jira/browse/HBASE-21691) | Fix flaky test TestRecoveredEdits |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-20220](https://issues.apache.org/jira/browse/HBASE-20220) | [RSGroup] Check if table exists in the cluster before moving it to the specified regionserver group |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |
| [HBASE-21707](https://issues.apache.org/jira/browse/HBASE-21707) | Fix warnings in hbase-rsgroup module and also make the UTs more stable |  Major | Region Assignment, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-21225](https://issues.apache.org/jira/browse/HBASE-21225) | Having RPC & Space quota on a table/Namespace doesn't allow space quota to be removed using 'NONE' |  Major | . | Sakthi | Sakthi |
| [HBASE-21639](https://issues.apache.org/jira/browse/HBASE-21639) | maxHeapUsage value not read properly from config during EntryBuffers initialization |  Minor | . | Bo Cui | Pankaj Kumar |
| [HBASE-20917](https://issues.apache.org/jira/browse/HBASE-20917) | MetaTableMetrics#stop references uninitialized requestsMap for non-meta region |  Major | meta, metrics | Ted Yu | Ted Yu |
| [HBASE-21657](https://issues.apache.org/jira/browse/HBASE-21657) | PrivateCellUtil#estimatedSerializedSizeOf has been the bottleneck in 100% scan case. |  Major | Performance | Zheng Hu | Zheng Hu |
| [HBASE-21704](https://issues.apache.org/jira/browse/HBASE-21704) | The implementation of DistributedHBaseCluster.getServerHoldingRegion is incorrect |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21732](https://issues.apache.org/jira/browse/HBASE-21732) | Should call toUpperCase before using Enum.valueOf in some methods for ColumnFamilyDescriptor |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-21746](https://issues.apache.org/jira/browse/HBASE-21746) | Fix two concern cases in RegionMover |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21749](https://issues.apache.org/jira/browse/HBASE-21749) | RS UI may throw NPE and make rs-status page inaccessible with multiwal and replication |  Major | Replication, UI | Nihal Jain | Nihal Jain |
| [HBASE-21475](https://issues.apache.org/jira/browse/HBASE-21475) | Put mutation (having TTL set) added via co-processor is retrieved even after TTL expires |  Major | Coprocessors | Nihal Jain | Nihal Jain |
| [HBASE-21754](https://issues.apache.org/jira/browse/HBASE-21754) | ReportRegionStateTransitionRequest should be executed in priority executor |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21770](https://issues.apache.org/jira/browse/HBASE-21770) | Should deal with meta table in HRegionLocator.getAllRegionLocations |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21535](https://issues.apache.org/jira/browse/HBASE-21535) | Zombie Master detector is not working |  Critical | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21699](https://issues.apache.org/jira/browse/HBASE-21699) | Create table failed when using  SPLITS\_FILE =\> 'splits.txt' |  Blocker | Client, shell | huan | huan |
| [HBASE-21733](https://issues.apache.org/jira/browse/HBASE-21733) | SnapshotQuotaObserverChore should only fetch space quotas |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21644](https://issues.apache.org/jira/browse/HBASE-21644) | Modify table procedure runs infinitely for a table having region replication \> 1 |  Critical | Admin | Nihal Jain | Nihal Jain |
| [HBASE-21811](https://issues.apache.org/jira/browse/HBASE-21811) | region can be opened on two servers due to race condition with procedures and server reports |  Blocker | amv2 | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21840](https://issues.apache.org/jira/browse/HBASE-21840) | TestHRegionWithInMemoryFlush fails with NPE |  Blocker | test | Duo Zhang | Duo Zhang |
| [HBASE-21795](https://issues.apache.org/jira/browse/HBASE-21795) | Client application may get stuck (time bound) if a table modify op is called immediately after split op |  Critical | amv2 | Nihal Jain | Nihal Jain |
| [HBASE-21843](https://issues.apache.org/jira/browse/HBASE-21843) | RegionGroupingProvider breaks the meta wal file name pattern which may cause data loss for meta region |  Blocker | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-21775](https://issues.apache.org/jira/browse/HBASE-21775) | The BufferedMutator doesn't ever refresh region location cache |  Major | Client | Tommy Li | Tommy Li |
| [HBASE-18484](https://issues.apache.org/jira/browse/HBASE-18484) | VerifyRep by snapshot  does not work when Yarn / SourceHBase / PeerHBase located in different HDFS clusters |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-21862](https://issues.apache.org/jira/browse/HBASE-21862) | IPCUtil.wrapException should keep the original exception types for all the connection exceptions |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21854](https://issues.apache.org/jira/browse/HBASE-21854) | Race condition in TestProcedureSkipPersistence |  Minor | proc-v2 | Peter Somogyi | Peter Somogyi |
| [HBASE-21785](https://issues.apache.org/jira/browse/HBASE-21785) | master reports open regions as RITs and also messes up rit age metric |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21889](https://issues.apache.org/jira/browse/HBASE-21889) | Use thrift 0.12.0 when build thrift by compile-thrift profile |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21890](https://issues.apache.org/jira/browse/HBASE-21890) | Use execute instead of submit to submit a task in RemoteProcedureDispatcher |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21900](https://issues.apache.org/jira/browse/HBASE-21900) | Infinite loop in AsyncMetaRegionLocator if we can not get the location for meta |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21910](https://issues.apache.org/jira/browse/HBASE-21910) | The nonce implementation is wrong for AsyncTable |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21899](https://issues.apache.org/jira/browse/HBASE-21899) | Fix missing variables in slf4j Logger |  Trivial | logging | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-21928](https://issues.apache.org/jira/browse/HBASE-21928) | Deprecated HConstants.META\_QOS |  Major | Client, rpc | Zheng Hu | Duo Zhang |
| [HBASE-21938](https://issues.apache.org/jira/browse/HBASE-21938) | Add a new ClusterMetrics.Option SERVERS\_NAME to only return the live region servers's name without metrics |  Major | . | Guanghao Zhang | Yi Mei |
| [HBASE-20587](https://issues.apache.org/jira/browse/HBASE-20587) | Replace Jackson with shaded thirdparty gson |  Major | dependencies | Josh Elser | Duo Zhang |
| [HBASE-21929](https://issues.apache.org/jira/browse/HBASE-21929) | The checks at the end of TestRpcClientLeaks are not executed |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21922](https://issues.apache.org/jira/browse/HBASE-21922) | BloomContext#sanityCheck may failed when use ROWPREFIX\_DELIMITED bloom filter |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21942](https://issues.apache.org/jira/browse/HBASE-21942) | [UI] requests per second is incorrect in rsgroup page(rsgroup.jsp) |  Minor | . | xuqinya | xuqinya |
| [HBASE-21947](https://issues.apache.org/jira/browse/HBASE-21947) | TestShell is broken after we remove the jackson dependencies |  Major | dependencies, shell | Duo Zhang | Duo Zhang |
| [HBASE-21943](https://issues.apache.org/jira/browse/HBASE-21943) | The usage of RegionLocations.mergeRegionLocations is wrong for async client |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21961](https://issues.apache.org/jira/browse/HBASE-21961) | Infinite loop in AsyncNonMetaRegionLocator if there is only one region and we tried to locate before a non empty row |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-20724](https://issues.apache.org/jira/browse/HBASE-20724) | Sometimes some compacted storefiles are still opened after region failover |  Critical | . | Francis Christopher Liu | Guanghao Zhang |
| [HBASE-21487](https://issues.apache.org/jira/browse/HBASE-21487) | Concurrent modify table ops can lead to unexpected results |  Major | . | Syeda Arshiya Tabreen | Syeda Arshiya Tabreen |
| [HBASE-21980](https://issues.apache.org/jira/browse/HBASE-21980) | Fix typo in AbstractTestAsyncTableRegionReplicasRead |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21983](https://issues.apache.org/jira/browse/HBASE-21983) | Should track the scan metrics in AsyncScanSingleRegionRpcRetryingCaller if scan metrics is enabled |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21866](https://issues.apache.org/jira/browse/HBASE-21866) | Do not move the table to null rsgroup when creating an existing table |  Major | proc-v2, rsgroup | Xiang Li | Xiang Li |
| [HBASE-21740](https://issues.apache.org/jira/browse/HBASE-21740) | NPE happens while shutdown the RS |  Major | . | lujie | lujie |
| [HBASE-21565](https://issues.apache.org/jira/browse/HBASE-21565) | Delete dead server from dead server list too early leads to concurrent Server Crash Procedures(SCP) for a same server |  Critical | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21915](https://issues.apache.org/jira/browse/HBASE-21915) | FileLink$FileLinkInputStream doesn't implement CanUnbuffer |  Major | Filesystem Integration | Josh Elser | Josh Elser |
| [HBASE-21960](https://issues.apache.org/jira/browse/HBASE-21960) | RESTServletContainer not configured for REST Jetty server |  Blocker | REST | Josh Elser | Josh Elser |
| [HBASE-22006](https://issues.apache.org/jira/browse/HBASE-22006) | Fix branch-2.1 findbugs warning; causes nightly show as failed. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22010](https://issues.apache.org/jira/browse/HBASE-22010) | docs on upgrade from 2.0,2.1 -\> 2.2 renders incorrectly |  Minor | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21990](https://issues.apache.org/jira/browse/HBASE-21990) | puppycrawl checkstyle dtds 404... moved to sourceforge |  Major | build | Michael Stack | Michael Stack |
| [HBASE-22011](https://issues.apache.org/jira/browse/HBASE-22011) | ThriftUtilities.getFromThrift should set filter when not set columns |  Major | . | Bing Xiao | Bing Xiao |
| [HBASE-21736](https://issues.apache.org/jira/browse/HBASE-21736) | Remove the server from online servers before scheduling SCP for it in hbck |  Major | hbck2, test | Duo Zhang | Duo Zhang |
| [HBASE-22045](https://issues.apache.org/jira/browse/HBASE-22045) | Mutable range histogram reports incorrect outliers |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-22061](https://issues.apache.org/jira/browse/HBASE-22061) | SplitTableRegionProcedure should hold the lock of its daughter regions |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-22095](https://issues.apache.org/jira/browse/HBASE-22095) | Taking a snapshot fails in local mode |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21619](https://issues.apache.org/jira/browse/HBASE-21619) | Fix warning message caused by incorrect ternary operator evaluation |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22074](https://issues.apache.org/jira/browse/HBASE-22074) | Should use procedure store to persist the state in reportRegionStateTransition |  Blocker | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22098](https://issues.apache.org/jira/browse/HBASE-22098) | Backport HBASE-18667 "Disable error-prone for hbase-protocol-shaded" to branch-2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22100](https://issues.apache.org/jira/browse/HBASE-22100) | False positive for error prone warnings in pre commit job |  Minor | build | Duo Zhang | Duo Zhang |
| [HBASE-21781](https://issues.apache.org/jira/browse/HBASE-21781) | list\_deadservers elapsed time is incorrect |  Major | shell | xuqinya | xuqinya |
| [HBASE-21135](https://issues.apache.org/jira/browse/HBASE-21135) | Build fails on windows as it fails to parse windows path during license check |  Major | build | Nihal Jain | Nihal Jain |
| [HBASE-22123](https://issues.apache.org/jira/browse/HBASE-22123) | REST gateway reports Insufficient permissions exceptions as 404 Not Found |  Minor | REST | Tomas Sokorai | Tomas Sokorai |
| [HBASE-22121](https://issues.apache.org/jira/browse/HBASE-22121) | AsyncAdmin can not deal with non default meta replica |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21688](https://issues.apache.org/jira/browse/HBASE-21688) | Address WAL filesystem issues |  Major | Filesystem Integration, wal | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-20911](https://issues.apache.org/jira/browse/HBASE-20911) | correct Swtich/case indentation in formatter template for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22133](https://issues.apache.org/jira/browse/HBASE-22133) | Forward port HBASE-22073 "/rits.jsp throws an exception if no procedure" to branch-2.2+ |  Major | UI | Duo Zhang | Duo Zhang |
| [HBASE-20912](https://issues.apache.org/jira/browse/HBASE-20912) | Add import order config in dev support for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22070](https://issues.apache.org/jira/browse/HBASE-22070) | Checking restoreDir in RestoreSnapshotHelper |  Minor | snapshots | Vincent Choi | Vincent Choi |
| [HBASE-22177](https://issues.apache.org/jira/browse/HBASE-22177) | Do not recreate IOException in RawAsyncHBaseAdmin.adminCall |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22179](https://issues.apache.org/jira/browse/HBASE-22179) | Fix RawAsyncHBaseAdmin.getCompactionState |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22180](https://issues.apache.org/jira/browse/HBASE-22180) | Make TestBlockEvictionFromClient.testBlockRefCountAfterSplits more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22178](https://issues.apache.org/jira/browse/HBASE-22178) | Introduce a createTableAsync with TableDescriptor method in Admin |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22163](https://issues.apache.org/jira/browse/HBASE-22163) | Should not archive the compacted store files when region warmup |  Blocker | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22185](https://issues.apache.org/jira/browse/HBASE-22185) | RAMQueueEntry#writeToCache should freeBlock if any exception encountered instead of the IOException catch block |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22198](https://issues.apache.org/jira/browse/HBASE-22198) | Fix flakey TestAsyncTableGetMultiThreaded |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22144](https://issues.apache.org/jira/browse/HBASE-22144) | MultiRowRangeFilter does not work with reversed scans |  Critical | Filters, Scanners | Josh Elser | Josh Elser |
| [HBASE-22202](https://issues.apache.org/jira/browse/HBASE-22202) | Fix new findbugs issues after we upgrade hbase-thirdparty dependencies |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-22207](https://issues.apache.org/jira/browse/HBASE-22207) | Fix flakey TestAssignmentManager.testAssignSocketTimeout |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22235](https://issues.apache.org/jira/browse/HBASE-22235) | OperationStatus.{SUCCESS\|FAILURE\|NOT\_RUN} are not visible to 3rd party coprocessors |  Major | Coprocessors | Lars Hofhansl | Andrew Kyle Purtell |
| [HBASE-22222](https://issues.apache.org/jira/browse/HBASE-22222) | Site build fails after hbase-thirdparty upgrade |  Blocker | website | Peter Somogyi | Duo Zhang |
| [HBASE-22278](https://issues.apache.org/jira/browse/HBASE-22278) | RawAsyncHBaseAdmin should not use cached region location |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22282](https://issues.apache.org/jira/browse/HBASE-22282) | Should deal with error in the callback of RawAsyncHBaseAdmin.splitRegion methods |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22286](https://issues.apache.org/jira/browse/HBASE-22286) | License handling incorrectly lists CDDL/GPLv2+CE as safe to not aggregate |  Critical | build, community | Sean Busbey | Sean Busbey |
| [HBASE-22200](https://issues.apache.org/jira/browse/HBASE-22200) | WALSplitter.hasRecoveredEdits should use same FS instance from WAL region dir |  Major | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22230](https://issues.apache.org/jira/browse/HBASE-22230) | REST Server drops connection on long scans |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22292](https://issues.apache.org/jira/browse/HBASE-22292) | PreemptiveFastFailInterceptor clean repeatedFailuresMap issue |  Blocker | . | zou | zou |
| [HBASE-22298](https://issues.apache.org/jira/browse/HBASE-22298) | branch-2.2 nightly fails "[ForOverride] Method annotated @ForOverride must have protected or package-private visibility" |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22086](https://issues.apache.org/jira/browse/HBASE-22086) | space quota issue: deleting snapshot doesn't update the usage of table |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22236](https://issues.apache.org/jira/browse/HBASE-22236) | AsyncNonMetaRegionLocator should not cache HRegionLocation with null location |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22054](https://issues.apache.org/jira/browse/HBASE-22054) | Space Quota: Compaction is not working for super user in case of NO\_WRITES\_COMPACTIONS |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22340](https://issues.apache.org/jira/browse/HBASE-22340) | Corrupt KeyValue is silently ignored |  Critical | wal | Peter Somogyi | Peter Somogyi |
| [HBASE-22350](https://issues.apache.org/jira/browse/HBASE-22350) | Rewrite TestClientOperationTimeout so we do not timeout when creating table |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22354](https://issues.apache.org/jira/browse/HBASE-22354) | master never sets abortRequested, and thus abort timeout doesn't work for it |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22190](https://issues.apache.org/jira/browse/HBASE-22190) | SnapshotFileCache may fail to load the correct snapshot file list when there is an on-going snapshot operation |  Blocker | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-22343](https://issues.apache.org/jira/browse/HBASE-22343) | Make procedure retry interval configurable in test |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-22047](https://issues.apache.org/jira/browse/HBASE-22047) | LeaseException in Scan should be retired |  Major | Client, Scanners | Allan Yang | Igor Rudenko |
| [HBASE-22314](https://issues.apache.org/jira/browse/HBASE-22314) | shaded byo-hadoop client should list needed hadoop modules as provided scope to avoid inclusion of unnecessary transitive depednencies |  Major | hadoop2, hadoop3, shading | Sean Busbey | Sean Busbey |
| [HBASE-22312](https://issues.apache.org/jira/browse/HBASE-22312) | Hadoop 3 profile for hbase-shaded-mapreduce should like mapreduce as a provided dependency |  Major | mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-21467](https://issues.apache.org/jira/browse/HBASE-21467) | Fix flaky test TestCoprocessorClassLoader.testCleanupOldJars |  Minor | . | OrDTesters | OrDTesters |
| [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | Change rubocop config for max line length of 100 |  Minor | community, shell | Umesh Agashe | Murtaza Hassan |
| [HBASE-22324](https://issues.apache.org/jira/browse/HBASE-22324) |  loss a mass of data when the sequenceId of cells greater than Integer.Max, because MemStoreMergerSegmentsIterator can not merge segments |  Blocker | in-memory-compaction | chenyang | ChenYang |
| [HBASE-22072](https://issues.apache.org/jira/browse/HBASE-22072) | High read/write intensive regions may cause long crash recovery |  Major | Performance, Recovery | Pavel | ramkrishna.s.vasudevan |
| [HBASE-22274](https://issues.apache.org/jira/browse/HBASE-22274) | Cell size limit check on append should consider cell's previous size. |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-22404](https://issues.apache.org/jira/browse/HBASE-22404) | Open/Close region request may be executed twice when master restart |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22424](https://issues.apache.org/jira/browse/HBASE-22424) | Interactions in RSGroup test classes will cause TestRSGroupsAdmin2.testMoveServersAndTables and TestRSGroupsBalance.testGroupBalance flaky |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-20970](https://issues.apache.org/jira/browse/HBASE-20970) | Update hadoop check versions for hadoop3 in hbase-personality |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22442](https://issues.apache.org/jira/browse/HBASE-22442) | Nightly build is failing with hadoop 3.x |  Major | build, hadoop3 | Duo Zhang | Duo Zhang |
| [HBASE-22226](https://issues.apache.org/jira/browse/HBASE-22226) | Incorrect level for headings in asciidoc |  Trivial | documentation | Peter Somogyi | Murtaza Hassan |
| [HBASE-22440](https://issues.apache.org/jira/browse/HBASE-22440) | HRegionServer#getWalGroupsReplicationStatus() throws NPE |  Major | regionserver, Replication | puleya7 | puleya7 |
| [HBASE-22462](https://issues.apache.org/jira/browse/HBASE-22462) | Should run a 'mvn install' at the end of hadoop check in pre commit job |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-21800](https://issues.apache.org/jira/browse/HBASE-21800) | RegionServer aborted due to NPE from MetaTableMetrics coprocessor |  Critical | Coprocessors, meta, metrics, Operability | Sakthi | Sakthi |
| [HBASE-21991](https://issues.apache.org/jira/browse/HBASE-21991) | Fix MetaMetrics issues - [Race condition, Faulty remove logic], few improvements |  Major | Coprocessors, metrics | Sakthi | Sakthi |
| [HBASE-22456](https://issues.apache.org/jira/browse/HBASE-22456) | Polish TestSplitTransitionOnCluster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22473](https://issues.apache.org/jira/browse/HBASE-22473) | Split TestSCP |  Major | Recovery, test | Duo Zhang | Duo Zhang |
| [HBASE-22441](https://issues.apache.org/jira/browse/HBASE-22441) | BucketCache NullPointerException in cacheBlock |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-22003](https://issues.apache.org/jira/browse/HBASE-22003) | Fix flaky test TestVerifyReplication.testHBase14905 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22471](https://issues.apache.org/jira/browse/HBASE-22471) | Our nightly jobs for master and branch-2 are still using hadoop-2.7.1 in integration test |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22486](https://issues.apache.org/jira/browse/HBASE-22486) | Fix flaky test TestLockManager |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22485](https://issues.apache.org/jira/browse/HBASE-22485) | Fix failed ut TestClusterRestartFailover |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22487](https://issues.apache.org/jira/browse/HBASE-22487) | getMostLoadedRegions is unused |  Trivial | regionserver | Clay B. | Clay B. |
| [HBASE-22503](https://issues.apache.org/jira/browse/HBASE-22503) | Failed to upgrade to 2.2+ as the global permission which storaged in zk is not right |  Blocker | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22502](https://issues.apache.org/jira/browse/HBASE-22502) | Purge the logs when we reach the EOF for the last wal file when replication |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22490](https://issues.apache.org/jira/browse/HBASE-22490) | Nightly client integration test fails with hadoop-3 |  Major | build | Duo Zhang | Guanghao Zhang |
| [HBASE-22522](https://issues.apache.org/jira/browse/HBASE-22522) | The integration test in master branch's nightly job has error "ERROR: Only found 1050 rows." |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22513](https://issues.apache.org/jira/browse/HBASE-22513) | Admin#getQuota does not work correctly if exceedThrottleQuota is set |  Major | Quotas | Yi Mei | Yi Mei |
| [HBASE-22518](https://issues.apache.org/jira/browse/HBASE-22518) | yetus personality is treating branch-1.4 like earlier branches for hadoopcheck |  Major | test | Sean Busbey | Sean Busbey |
| [HBASE-22546](https://issues.apache.org/jira/browse/HBASE-22546) | TestRegionServerHostname#testRegionServerHostname fails reliably for me |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22481](https://issues.apache.org/jira/browse/HBASE-22481) | Javadoc Warnings: reference not found |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22551](https://issues.apache.org/jira/browse/HBASE-22551) | TestMasterOperationsForRegionReplicas is flakey |  Major | read replicas, test | Duo Zhang | Duo Zhang |
| [HBASE-22552](https://issues.apache.org/jira/browse/HBASE-22552) | Rewrite TestEndToEndSplitTransaction.testCanSplitJustAfterASplit |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22563](https://issues.apache.org/jira/browse/HBASE-22563) | Reduce retained jobs for Jenkins pipelines |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22115](https://issues.apache.org/jira/browse/HBASE-22115) | HBase RPC aspires to grow an infinite tree of trace scopes; some other places are also unsafe |  Critical | rpc, tracing | Sergey Shelukhin | Sergey Shelukhin |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20838](https://issues.apache.org/jira/browse/HBASE-20838) | Include hbase-server in precommit test if CommonFSUtils is changed |  Major | . | Yu Li | Yu Li |
| [HBASE-20907](https://issues.apache.org/jira/browse/HBASE-20907) | Fix Intermittent failure on TestProcedurePriority |  Major | . | Yu Li | Yu Li |
| [HBASE-21076](https://issues.apache.org/jira/browse/HBASE-21076) | TestTableResource fails with NPE |  Major | REST, test | Ted Yu | Sean Busbey |
| [HBASE-21161](https://issues.apache.org/jira/browse/HBASE-21161) | Enable the test added in HBASE-20741 that was removed accidentally |  Minor | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-21138](https://issues.apache.org/jira/browse/HBASE-21138) | Close HRegion instance at the end of every test in TestHRegion |  Major | . | Ted Yu | Mingliang Liu |
| [HBASE-21097](https://issues.apache.org/jira/browse/HBASE-21097) | Flush pressure assertion may fail in testFlushThroughputTuning |  Major | regionserver | Ted Yu | Ted Yu |
| [HBASE-21258](https://issues.apache.org/jira/browse/HBASE-21258) | Add resetting of flags for RS Group pre/post hooks in TestRSGroups |  Major | . | Ted Yu | Ted Yu |
| [HBASE-21261](https://issues.apache.org/jira/browse/HBASE-21261) | Add log4j.properties for hbase-rsgroup tests |  Trivial | . | Ted Yu | Andrew Kyle Purtell |
| [HBASE-20136](https://issues.apache.org/jira/browse/HBASE-20136) | TestKeyValue misses ClassRule and Category annotations |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-21756](https://issues.apache.org/jira/browse/HBASE-21756) | Backport HBASE-21279 (Split TestAdminShell into several tests) to branch-2 |  Major | . | Nihal Jain | Nihal Jain |
| [HBASE-21963](https://issues.apache.org/jira/browse/HBASE-21963) | Add a script for building and verifying release candidate |  Minor | community, scripts | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20776](https://issues.apache.org/jira/browse/HBASE-20776) | Update branch-2 version to 2.2.0-SNAPSHOT |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-20847](https://issues.apache.org/jira/browse/HBASE-20847) | The parent procedure of RegionTransitionProcedure may not have the table lock |  Major | proc-v2, Region Assignment | Duo Zhang | Duo Zhang |
| [HBASE-20860](https://issues.apache.org/jira/browse/HBASE-20860) | Merged region's RIT state may not be cleaned after master restart |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20875](https://issues.apache.org/jira/browse/HBASE-20875) | MemStoreLABImp::copyIntoCell uses 7% CPU when writing |  Major | Performance | Michael Stack | Michael Stack |
| [HBASE-20853](https://issues.apache.org/jira/browse/HBASE-20853) | Polish "Add defaults to Table Interface so Implementors don't have to" |  Major | API | Michael Stack | Balazs Meszaros |
| [HBASE-20914](https://issues.apache.org/jira/browse/HBASE-20914) | Trim Master memory usage |  Major | Balancer, master | Michael Stack | Michael Stack |
| [HBASE-20846](https://issues.apache.org/jira/browse/HBASE-20846) | Restore procedure locks when master restarts |  Major | . | Allan Yang | Duo Zhang |
| [HBASE-20878](https://issues.apache.org/jira/browse/HBASE-20878) | Data loss if merging regions while ServerCrashProcedure executing |  Critical | amv2 | Allan Yang | Allan Yang |
| [HBASE-20867](https://issues.apache.org/jira/browse/HBASE-20867) | RS may get killed while master restarts |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20921](https://issues.apache.org/jira/browse/HBASE-20921) | Possible NPE in ReopenTableRegionsProcedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-20939](https://issues.apache.org/jira/browse/HBASE-20939) | There will be race when we call suspendIfNotReady and then throw ProcedureSuspendedException |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-19369](https://issues.apache.org/jira/browse/HBASE-19369) | HBase Should use Builder Pattern to Create Log Files while using WAL on Erasure Coding |  Major | . | Alex Leblang | Mike Drob |
| [HBASE-20950](https://issues.apache.org/jira/browse/HBASE-20950) | Helper method to configure secure DFS cluster for tests |  Major | test | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-20893](https://issues.apache.org/jira/browse/HBASE-20893) | Data loss if splitting region while ServerCrashProcedure executing |  Major | . | Allan Yang | Allan Yang |
| [HBASE-20885](https://issues.apache.org/jira/browse/HBASE-20885) | Remove entry for RPC quota from hbase:quota when RPC quota is removed. |  Minor | . | Sakthi | Sakthi |
| [HBASE-20813](https://issues.apache.org/jira/browse/HBASE-20813) | Remove RPC quotas when the associated table/Namespace is dropped off |  Minor | . | Sakthi | Sakthi |
| [HBASE-21012](https://issues.apache.org/jira/browse/HBASE-21012) | Revert the change of serializing TimeRangeTracker |  Critical | . | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21025](https://issues.apache.org/jira/browse/HBASE-21025) | Add cache for TableStateManager |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20975](https://issues.apache.org/jira/browse/HBASE-20975) | Lock may not be taken or released while rolling back procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-20881](https://issues.apache.org/jira/browse/HBASE-20881) | Introduce a region transition procedure to handle all the state transition for a region |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21095](https://issues.apache.org/jira/browse/HBASE-21095) | The timeout retry logic for several procedures are broken after master restarts |  Critical | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21072](https://issues.apache.org/jira/browse/HBASE-21072) | Block out HBCK1 in hbase2 |  Major | hbck | Michael Stack | Michael Stack |
| [HBASE-20941](https://issues.apache.org/jira/browse/HBASE-20941) | Create and implement HbckService in master |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-21017](https://issues.apache.org/jira/browse/HBASE-21017) | Revisit the expected states for open/close |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21083](https://issues.apache.org/jira/browse/HBASE-21083) | Introduce a mechanism to bypass the execution of a stuck procedure |  Major | amv2 | Allan Yang | Allan Yang |
| [HBASE-21190](https://issues.apache.org/jira/browse/HBASE-21190) | Log files and count of entries in each as we load from the MasterProcWAL store |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21189](https://issues.apache.org/jira/browse/HBASE-21189) | flaky job should gather machine stats |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-21172](https://issues.apache.org/jira/browse/HBASE-21172) | Reimplement the retry backoff logic for ReopenTableRegionsProcedure |  Major | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21169](https://issues.apache.org/jira/browse/HBASE-21169) | Initiate hbck2 tool in hbase-operator-tools repo |  Major | hbck2 | Umesh Agashe | Michael Stack |
| [HBASE-21156](https://issues.apache.org/jira/browse/HBASE-21156) | [hbck2] Queue an assign of hbase:meta and bulk assign/unassign |  Critical | hbck2 | Michael Stack | Michael Stack |
| [HBASE-21023](https://issues.apache.org/jira/browse/HBASE-21023) | Add bypassProcedureToCompletion() API to HbckService |  Major | hbck2 | Umesh Agashe | Umesh Agashe |
| [HBASE-21214](https://issues.apache.org/jira/browse/HBASE-21214) | [hbck2] setTableState just sets hbase:meta state, not in-memory state |  Major | amv2, hbck2 | Michael Stack | Michael Stack |
| [HBASE-21217](https://issues.apache.org/jira/browse/HBASE-21217) | Revisit the executeProcedure method for open/close region |  Critical | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21227](https://issues.apache.org/jira/browse/HBASE-21227) | Implement exponential retrying backoff for Assign/UnassignRegionHandler introduced in HBASE-21217 |  Major | amv2, regionserver | Duo Zhang | Duo Zhang |
| [HBASE-21233](https://issues.apache.org/jira/browse/HBASE-21233) | Allow the procedure implementation to skip persistence of the state after a execution |  Major | Performance, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21244](https://issues.apache.org/jira/browse/HBASE-21244) | Skip persistence when retrying for assignment related procedures |  Major | amv2, Performance, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21249](https://issues.apache.org/jira/browse/HBASE-21249) | Add jitter for ProcedureUtil.getBackoffTimeMs |  Major | proc-v2 | Duo Zhang | Yi Mei |
| [HBASE-19275](https://issues.apache.org/jira/browse/HBASE-19275) | TestSnapshotFileCache never worked properly |  Major | . | Andrew Kyle Purtell | Xu Cang |
| [HBASE-21250](https://issues.apache.org/jira/browse/HBASE-21250) | Refactor WALProcedureStore and add more comments for better understanding the implementation |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21254](https://issues.apache.org/jira/browse/HBASE-21254) | Need to find a way to limit the number of proc wal files |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21309](https://issues.apache.org/jira/browse/HBASE-21309) | Increase the waiting timeout for TestProcedurePriority |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21278](https://issues.apache.org/jira/browse/HBASE-21278) | Do not rollback successful sub procedures when rolling back a procedure |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21315](https://issues.apache.org/jira/browse/HBASE-21315) | The getActiveMinProcId and getActiveMaxProcId of BitSetNode are incorrect if there are no active procedure |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21311](https://issues.apache.org/jira/browse/HBASE-21311) | Split TestRestoreSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21310](https://issues.apache.org/jira/browse/HBASE-21310) | Split TestCloneSnapshotFromClient |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21330](https://issues.apache.org/jira/browse/HBASE-21330) | ReopenTableRegionsProcedure will enter an infinite loop if we schedule a TRSP at the same time |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-20716](https://issues.apache.org/jira/browse/HBASE-20716) | Unsafe access cleanup |  Critical | Performance | Michael Stack | Sahil Aggarwal |
| [HBASE-21269](https://issues.apache.org/jira/browse/HBASE-21269) | Forward-port to branch-2 " HBASE-21213 [hbck2] bypass leaves behind     state in RegionStates when assign/unassign" |  Major | amv2 | Michael Stack | Jingyun Tian |
| [HBASE-21323](https://issues.apache.org/jira/browse/HBASE-21323) | Should not skip force updating for a sub procedure even if it has been finished |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21336](https://issues.apache.org/jira/browse/HBASE-21336) | Simplify the implementation of WALProcedureMap |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21354](https://issues.apache.org/jira/browse/HBASE-21354) | Procedure may be deleted improperly during master restarts resulting in 'Corrupt' |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21073](https://issues.apache.org/jira/browse/HBASE-21073) | "Maintenance mode" master |  Major | amv2, hbck2, master | Michael Stack | Mike Drob |
| [HBASE-21192](https://issues.apache.org/jira/browse/HBASE-21192) | Add HOW-TO repair damaged AMv2. |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21338](https://issues.apache.org/jira/browse/HBASE-21338) | [balancer] If balancer is an ill-fit for cluster size, it gives little indication |  Major | Balancer, Operability | Michael Stack | Xu Cang |
| [HBASE-21363](https://issues.apache.org/jira/browse/HBASE-21363) | Rewrite the buildingHoldCleanupTracker method in WALProcedureStore |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21372](https://issues.apache.org/jira/browse/HBASE-21372) | Set hbase.assignment.maximum.attempts to Long.MAX |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21215](https://issues.apache.org/jira/browse/HBASE-21215) | Figure how to invoke hbck2; make it easy to find |  Major | amv2, hbck2 | Michael Stack | Michael Stack |
| [HBASE-21364](https://issues.apache.org/jira/browse/HBASE-21364) | Procedure holds the lock should put to front of the queue after restart |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-21384](https://issues.apache.org/jira/browse/HBASE-21384) | Procedure with holdlock=false should not be restored lock when restarts |  Blocker | . | Allan Yang | Allan Yang |
| [HBASE-20973](https://issues.apache.org/jira/browse/HBASE-20973) | ArrayIndexOutOfBoundsException when rolling back procedure |  Critical | amv2 | Allan Yang | Duo Zhang |
| [HBASE-21375](https://issues.apache.org/jira/browse/HBASE-21375) | Revisit the lock and queue implementation in MasterProcedureScheduler |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21322](https://issues.apache.org/jira/browse/HBASE-21322) | Add a scheduleServerCrashProcedure() API to HbckService |  Critical | hbck2 | Jingyun Tian | Jingyun Tian |
| [HBASE-21191](https://issues.apache.org/jira/browse/HBASE-21191) | Add a holding-pattern if no assign for meta or namespace (Can happen if masterprocwals have been cleared). |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21351](https://issues.apache.org/jira/browse/HBASE-21351) | The force update thread may have race with PE worker when the procedure is rolling back |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21314](https://issues.apache.org/jira/browse/HBASE-21314) | The implementation of BitSetNode is not efficient |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21421](https://issues.apache.org/jira/browse/HBASE-21421) | Do not kill RS if reportOnlineRegions fails |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21443](https://issues.apache.org/jira/browse/HBASE-21443) | [hbase-connectors] Purge hbase-\* modules from core now they've been moved to hbase-connectors |  Major | hbase-connectors, spark | Michael Stack | Michael Stack |
| [HBASE-21376](https://issues.apache.org/jira/browse/HBASE-21376) | Add some verbose log to MasterProcedureScheduler |  Major | logging, proc-v2 | Allan Yang | Duo Zhang |
| [HBASE-21463](https://issues.apache.org/jira/browse/HBASE-21463) | The checkOnlineRegionsReport can accidentally complete a TRSP |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21473](https://issues.apache.org/jira/browse/HBASE-21473) | RowIndexSeekerV1 may return cell with extra two \\x00\\x00 bytes which has no tags |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21472](https://issues.apache.org/jira/browse/HBASE-21472) | Should not persist the dispatched field for RegionRemoteProcedureBase |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21377](https://issues.apache.org/jira/browse/HBASE-21377) | Add debug log for procedure stack id related operations |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21490](https://issues.apache.org/jira/browse/HBASE-21490) | WALProcedure may remove proc wal files still with active procedures |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-21508](https://issues.apache.org/jira/browse/HBASE-21508) | Ignore the reportRegionStateTransition call from a dead server |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21465](https://issues.apache.org/jira/browse/HBASE-21465) | Retry on reportRegionStateTransition can lead to unexpected errors |  Major | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-21570](https://issues.apache.org/jira/browse/HBASE-21570) | Add write buffer periodic flush support for AsyncBufferedMutator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21578](https://issues.apache.org/jira/browse/HBASE-21578) | Fix wrong throttling exception for capacity unit |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21401](https://issues.apache.org/jira/browse/HBASE-21401) | Sanity check when constructing the KeyValue |  Critical | regionserver | Zheng Hu | Zheng Hu |
| [HBASE-21650](https://issues.apache.org/jira/browse/HBASE-21650) | Add DDL operation and some other miscellaneous to thrift2 |  Major | Thrift | Allan Yang | Allan Yang |
| [HBASE-17356](https://issues.apache.org/jira/browse/HBASE-17356) | Add replica get support |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21361](https://issues.apache.org/jira/browse/HBASE-21361) | Disable printing of stack-trace in shell when quotas are not enabled |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21362](https://issues.apache.org/jira/browse/HBASE-21362) | Disable printing of stack-trace in shell when quotas are violated |  Minor | shell | Sakthi | Sakthi |
| [HBASE-21159](https://issues.apache.org/jira/browse/HBASE-21159) | Add shell command to switch throttle on or off |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21682](https://issues.apache.org/jira/browse/HBASE-21682) | Support getting from specific replica |  Major | read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21661](https://issues.apache.org/jira/browse/HBASE-21661) | Provide Thrift2 implementation of Table/Admin |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21652](https://issues.apache.org/jira/browse/HBASE-21652) | Refactor ThriftServer making thrift2 server inherited from thrift1 server |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21580](https://issues.apache.org/jira/browse/HBASE-21580) | Support getting Hbck instance from AsyncConnection |  Major | asyncclient, Client, hbck2 | Duo Zhang | Duo Zhang |
| [HBASE-21663](https://issues.apache.org/jira/browse/HBASE-21663) | Add replica scan support |  Major | asyncclient, Client, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-21705](https://issues.apache.org/jira/browse/HBASE-21705) | Should treat meta table specially for some methods in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21647](https://issues.apache.org/jira/browse/HBASE-21647) | Add status track for splitting WAL tasks |  Major | Operability | Jingyun Tian | Jingyun Tian |
| [HBASE-21711](https://issues.apache.org/jira/browse/HBASE-21711) | Remove references to git.apache.org/hbase.git |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19695](https://issues.apache.org/jira/browse/HBASE-19695) | Handle disabled table for async client |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21726](https://issues.apache.org/jira/browse/HBASE-21726) | Add getAllRegionLocations method to AsyncTableRegionLocator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21034](https://issues.apache.org/jira/browse/HBASE-21034) | Add new throttle type: read/write capacity unit |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21738](https://issues.apache.org/jira/browse/HBASE-21738) | Remove all the CSLM#size operation in our memstore because it's an quite time consuming. |  Critical | Performance | Zheng Hu | Zheng Hu |
| [HBASE-21734](https://issues.apache.org/jira/browse/HBASE-21734) | Some optimization in FilterListWithOR |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21750](https://issues.apache.org/jira/browse/HBASE-21750) | Most of KeyValueUtil#length can be replaced by cell#getSerializedSize for better performance because the latter one has been optimized |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-17370](https://issues.apache.org/jira/browse/HBASE-17370) | Fix or provide shell scripts to drain and decommission region server |  Major | . | Jerry He | Nihal Jain |
| [HBASE-21761](https://issues.apache.org/jira/browse/HBASE-21761) | Align the methods in RegionLocator and AsyncTableRegionLocator |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21713](https://issues.apache.org/jira/browse/HBASE-21713) | Support set region server throttle quota |  Major | . | Yi Mei | Yi Mei |
| [HBASE-20542](https://issues.apache.org/jira/browse/HBASE-20542) | Better heap utilization for IMC with MSLABs |  Major | in-memory-compaction | Eshcar Hillel | Eshcar Hillel |
| [HBASE-21798](https://issues.apache.org/jira/browse/HBASE-21798) | Cut branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21739](https://issues.apache.org/jira/browse/HBASE-21739) | Move grant/revoke from regionserver to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21809](https://issues.apache.org/jira/browse/HBASE-21809) | Add retry thrift client for ThriftTable/Admin |  Major | . | Allan Yang | Allan Yang |
| [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | Size of in-memory compaction thread pool should be configurable |  Major | Compaction, in-memory-compaction | Zheng Hu | Zheng Hu |
| [HBASE-21828](https://issues.apache.org/jira/browse/HBASE-21828) | Make sure we do not return CompletionException when locating region |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21829](https://issues.apache.org/jira/browse/HBASE-21829) | Use FutureUtils.addListener instead of calling whenComplete directly |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21727](https://issues.apache.org/jira/browse/HBASE-21727) | Simplify documentation around client timeout |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21838](https://issues.apache.org/jira/browse/HBASE-21838) | Create a special ReplicationEndpoint just for verifying the WAL entries are fine |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19889](https://issues.apache.org/jira/browse/HBASE-19889) | Revert Workaround: Purge User API building from branch-2 so can make a beta-1 |  Major | website | Michael Stack | Sakthi |
| [HBASE-21814](https://issues.apache.org/jira/browse/HBASE-21814) | Remove the TODO in AccessControlLists#addUserPermission |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21909](https://issues.apache.org/jira/browse/HBASE-21909) | Validate the put instance before executing in AsyncTable.put method |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21907](https://issues.apache.org/jira/browse/HBASE-21907) | Should set priority for rpc request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21930](https://issues.apache.org/jira/browse/HBASE-21930) | Deal with ScannerResetException when opening region scanner |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21783](https://issues.apache.org/jira/browse/HBASE-21783) | Support exceed user/table/ns throttle quota if region server has available quota |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21945](https://issues.apache.org/jira/browse/HBASE-21945) | Maintain the original order when sending batch request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21944](https://issues.apache.org/jira/browse/HBASE-21944) | Validate put for batch operation |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21927](https://issues.apache.org/jira/browse/HBASE-21927) | Always fail the locate request when error occur |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21962](https://issues.apache.org/jira/browse/HBASE-21962) | Filters do not work in ThriftTable |  Major | Thrift | Allan Yang | Allan Yang |
| [HBASE-21820](https://issues.apache.org/jira/browse/HBASE-21820) | Implement CLUSTER quota scope |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21082](https://issues.apache.org/jira/browse/HBASE-21082) | Reimplement assign/unassign related procedure metrics |  Critical | amv2, metrics | Duo Zhang | Duo Zhang |
| [HBASE-21976](https://issues.apache.org/jira/browse/HBASE-21976) | Deal with RetryImmediatelyException for batching request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21974](https://issues.apache.org/jira/browse/HBASE-21974) | Change Admin#grant/revoke parameter from UserPermission to user and Permission |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21978](https://issues.apache.org/jira/browse/HBASE-21978) | Should close AsyncRegistry if we fail to get cluster id when creating AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-18201](https://issues.apache.org/jira/browse/HBASE-18201) | add UT and docs for DataBlockEncodingTool |  Minor | tooling | Chia-Ping Tsai | Kuan-Po Tseng |
| [HBASE-21093](https://issues.apache.org/jira/browse/HBASE-21093) | Move TestCreateTableProcedure.testMRegions to a separated file |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21094](https://issues.apache.org/jira/browse/HBASE-21094) | Remove the explicit timeout config for TestTruncateTableProcedure |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21729](https://issues.apache.org/jira/browse/HBASE-21729) | Extract ProcedureCoordinatorRpcs and ProcedureMemberRpcs from CoordinatedStateManager |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21588](https://issues.apache.org/jira/browse/HBASE-21588) | Procedure v2 wal splitting implementation |  Major | . | Jingyun Tian | Jingyun Tian |
| [HBASE-21934](https://issues.apache.org/jira/browse/HBASE-21934) | RemoteProcedureDispatcher should track the ongoing dispatched calls |  Blocker | proc-v2 | Jingyun Tian | Jingyun Tian |
| [HBASE-15728](https://issues.apache.org/jira/browse/HBASE-15728) | Add remaining per-table region / store / flush / compaction related metrics |  Major | metrics | Enis Soztutar | Xu Cang |
| [HBASE-21972](https://issues.apache.org/jira/browse/HBASE-21972) | Copy master doc into branch-2.2 and edit to make it suit 2.2.0 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21986](https://issues.apache.org/jira/browse/HBASE-21986) | Generate CHANGES.md and RELEASENOTES.md for 2.2.0 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21997](https://issues.apache.org/jira/browse/HBASE-21997) | Fix hbase-rest findbugs ST\_WRITE\_TO\_STATIC\_FROM\_INSTANCE\_METHOD complaint |  Major | REST | Michael Stack | Michael Stack |
| [HBASE-21993](https://issues.apache.org/jira/browse/HBASE-21993) | Set version as 2.2.0 in branch-2.2 in prep for first RC |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21949](https://issues.apache.org/jira/browse/HBASE-21949) | Fix flaky test TestHBaseTestingUtility.testMiniZooKeeperWithMultipleClientPorts |  Major | . | Guanghao Zhang | maoling |
| [HBASE-22000](https://issues.apache.org/jira/browse/HBASE-22000) | Deprecated isTableAvailable with splitKeys |  Major | asyncclient, Client | Duo Zhang | Junhong Xu |
| [HBASE-21999](https://issues.apache.org/jira/browse/HBASE-21999) | [DEBUG] Exit if git returns empty revision! |  Major | build | Michael Stack | Michael Stack |
| [HBASE-21977](https://issues.apache.org/jira/browse/HBASE-21977) | Skip replay WAL and update seqid when open regions restored from snapshot |  Major | Region Assignment, snapshots | Yi Mei | Yi Mei |
| [HBASE-22025](https://issues.apache.org/jira/browse/HBASE-22025) | RAT check fails in nightlies; fails on (old) test data files. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22039](https://issues.apache.org/jira/browse/HBASE-22039) | Should add the synchronous parameter for the XXXSwitch method in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22040](https://issues.apache.org/jira/browse/HBASE-22040) | Add mergeRegionsAsync with a List of region names method in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22066](https://issues.apache.org/jira/browse/HBASE-22066) | Add markers to CHANGES.md and RELEASENOTES.md |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22015](https://issues.apache.org/jira/browse/HBASE-22015) | UserPermission should be annotated as InterfaceAudience.Public |  Blocker | . | Yi Mei | Yi Mei |
| [HBASE-21911](https://issues.apache.org/jira/browse/HBASE-21911) | Move getUserPermissions from regionserver to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22094](https://issues.apache.org/jira/browse/HBASE-22094) | Throw TableNotFoundException if table not exists in AsyncAdmin.compact |  Major | Admin | Duo Zhang | Sakthi |
| [HBASE-22101](https://issues.apache.org/jira/browse/HBASE-22101) | AsyncAdmin.isTableAvailable should not throw TableNotFoundException |  Major | Admin, asyncclient, Client | Duo Zhang | Kevin Su |
| [HBASE-22135](https://issues.apache.org/jira/browse/HBASE-22135) | AsyncAdmin will not refresh master address |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22141](https://issues.apache.org/jira/browse/HBASE-22141) | Fix TestAsyncDecommissionAdminApi |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22157](https://issues.apache.org/jira/browse/HBASE-22157) | Include the cause when constructing RestoreSnapshotException in restoreSnapshot |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22158](https://issues.apache.org/jira/browse/HBASE-22158) | RawAsyncHBaseAdmin.getTableSplits should filter out none default replicas |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | Create a jenkins file for yetus to processing GitHub PR |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22153](https://issues.apache.org/jira/browse/HBASE-22153) | Fix the flaky TestRestartCluster |  Major | test | Zheng Hu | Duo Zhang |
| [HBASE-22155](https://issues.apache.org/jira/browse/HBASE-22155) | Move 2.2.0 on to hbase-thirdparty-2.2.0 |  Major | thirdparty | Michael Stack | Michael Stack |
| [HBASE-21886](https://issues.apache.org/jira/browse/HBASE-21886) | Run ITBLL for branch-2.2 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22117](https://issues.apache.org/jira/browse/HBASE-22117) | Move hasPermission/checkPermissions from region server to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22196](https://issues.apache.org/jira/browse/HBASE-22196) | Split TestRestartCluster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22249](https://issues.apache.org/jira/browse/HBASE-22249) | Rest Server throws NoClassDefFoundError with Java 11 (run-time) |  Major | . | Sakthi | Sakthi |
| [HBASE-22244](https://issues.apache.org/jira/browse/HBASE-22244) | Make use of MetricsConnection in async client |  Major | asyncclient, metrics | Duo Zhang | Duo Zhang |
| [HBASE-19763](https://issues.apache.org/jira/browse/HBASE-19763) | Fix Checkstyle errors in hbase-procedure |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22267](https://issues.apache.org/jira/browse/HBASE-22267) | Implement client push back for async client |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22261](https://issues.apache.org/jira/browse/HBASE-22261) | Make use of ClusterStatusListener for async client |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22317](https://issues.apache.org/jira/browse/HBASE-22317) | Support reading from meta replicas |  Major | asyncclient, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-22322](https://issues.apache.org/jira/browse/HBASE-22322) | Use special pause for CallQueueTooBigException |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22325](https://issues.apache.org/jira/browse/HBASE-22325) | AsyncRpcRetryingCaller will not schedule retry if we hit a NotServingRegionException but there is no TableName provided |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22399](https://issues.apache.org/jira/browse/HBASE-22399) | Change default hadoop-two.version to 2.8.x and remove the 2.7.x hadoop checks |  Major | build, hadoop2 | Duo Zhang | Duo Zhang |
| [HBASE-22429](https://issues.apache.org/jira/browse/HBASE-22429) | hbase-vote download step requires URL to end with '/' |  Trivial | . | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22430](https://issues.apache.org/jira/browse/HBASE-22430) | hbase-vote should tee build and test output to console |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22400](https://issues.apache.org/jira/browse/HBASE-22400) | Remove the adapter code in async fs implementation for hadoop-2.7.x |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-22447](https://issues.apache.org/jira/browse/HBASE-22447) | Check refCount before free block in BucketCache |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-22445](https://issues.apache.org/jira/browse/HBASE-22445) | Add file info when throw exceptions in HFileReaderImpl |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-22478](https://issues.apache.org/jira/browse/HBASE-22478) | Add jackson dependency for hbase-http module |  Major | build, dependencies | Duo Zhang | Duo Zhang |
| [HBASE-22327](https://issues.apache.org/jira/browse/HBASE-22327) | Fix remaining Checkstyle issues in hbase-hadoop-compat |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22326](https://issues.apache.org/jira/browse/HBASE-22326) | Fix Checkstyle errors in hbase-examples |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22316](https://issues.apache.org/jira/browse/HBASE-22316) | Record the stack trace for current thread in FutureUtils.get |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22500](https://issues.apache.org/jira/browse/HBASE-22500) | Modify pom and jenkins jobs for hadoop versions |  Blocker | build, hadoop2, hadoop3 | Duo Zhang | Duo Zhang |
| [HBASE-22535](https://issues.apache.org/jira/browse/HBASE-22535) | TestShellRSGroups fails when run on JDK11 |  Minor | java, shell | Sakthi | Sakthi |
| [HBASE-22536](https://issues.apache.org/jira/browse/HBASE-22536) | TestForeignExceptionSerialization fails when run on JDK11 |  Minor | java | Sakthi | Sakthi |
| [HBASE-22534](https://issues.apache.org/jira/browse/HBASE-22534) | TestCellUtil fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-22554](https://issues.apache.org/jira/browse/HBASE-22554) | Upgrade to surefire 2.22.2 |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22357](https://issues.apache.org/jira/browse/HBASE-22357) | Fix remaining Checkstyle issues in hbase-replication |  Trivial | Replication | Jan Hentschel | Jan Hentschel |
| [HBASE-21970](https://issues.apache.org/jira/browse/HBASE-21970) | Document that how to upgrade from 2.0 or 2.1 to 2.2+ |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22022](https://issues.apache.org/jira/browse/HBASE-22022) | nightly fails rat check down in the dev-support/hbase\_nightly\_source-artifact.sh check |  Major | . | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20540](https://issues.apache.org/jira/browse/HBASE-20540) | [umbrella] Hadoop 3 compatibility |  Major | . | Duo Zhang |  |
| [HBASE-20152](https://issues.apache.org/jira/browse/HBASE-20152) | [AMv2] DisableTableProcedure versus ServerCrashProcedure |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-21489](https://issues.apache.org/jira/browse/HBASE-21489) | TestShell is broken |  Major | shell | Duo Zhang | Reid Chan |
| [HBASE-18735](https://issues.apache.org/jira/browse/HBASE-18735) | Provide a fast mechanism for shutting down mini cluster |  Major | . | Samarth Jain | Artem Ervits |
| [HBASE-21612](https://issues.apache.org/jira/browse/HBASE-21612) | Add developer debug options in  HBase Config for REST server |  Minor | Operability, REST, scripts | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21747](https://issues.apache.org/jira/browse/HBASE-21747) | Release 2.2.0 |  Major | . | Duo Zhang | Guanghao Zhang |
| [HBASE-20610](https://issues.apache.org/jira/browse/HBASE-20610) | Procedure V2 - Distributed Log Splitting |  Major | proc-v2 | Guanghao Zhang | Jingyun Tian |
| [HBASE-20884](https://issues.apache.org/jira/browse/HBASE-20884) | Replace usage of our Base64 implementation with java.util.Base64 |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20989](https://issues.apache.org/jira/browse/HBASE-20989) | Minor, miscellaneous logging fixes |  Trivial | logging | Michael Stack | Michael Stack |
| [HBASE-20942](https://issues.apache.org/jira/browse/HBASE-20942) | Improve RpcServer TRACE logging |  Major | Operability | Esteban Gutierrez | Krish Dey |
| [HBASE-20482](https://issues.apache.org/jira/browse/HBASE-20482) | Print a link to the ref guide chapter for the shell during startup |  Minor | documentation, shell | Sakthi | Sakthi |
| [HBASE-21168](https://issues.apache.org/jira/browse/HBASE-21168) | BloomFilterUtil uses hardcoded randomness |  Trivial | . | Mike Drob | Mike Drob |
| [HBASE-21287](https://issues.apache.org/jira/browse/HBASE-21287) | JVMClusterUtil Master initialization wait time not configurable |  Major | test | Mike Drob | Mike Drob |
| [HBASE-21282](https://issues.apache.org/jira/browse/HBASE-21282) | Upgrade to latest jetty 9.2 and 9.3 versions |  Major | dependencies | Josh Elser | Josh Elser |
| [HBASE-21198](https://issues.apache.org/jira/browse/HBASE-21198) | Exclude dependency on net.minidev:json-smart |  Major | . | Ted Yu | Artem Ervits |
| [HBASE-21281](https://issues.apache.org/jira/browse/HBASE-21281) | Update bouncycastle dependency. |  Major | dependencies, test | Josh Elser | Josh Elser |
| [HBASE-21517](https://issues.apache.org/jira/browse/HBASE-21517) | Move the getTableRegionForRow method from HMaster to TestMaster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21265](https://issues.apache.org/jira/browse/HBASE-21265) | Split up TestRSGroups |  Minor | rsgroup, test | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21541](https://issues.apache.org/jira/browse/HBASE-21541) | Move MetaTableLocator.verifyRegionLocation to hbase-rsgroup module |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21534](https://issues.apache.org/jira/browse/HBASE-21534) | TestAssignmentManager is flakey |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-21685](https://issues.apache.org/jira/browse/HBASE-21685) | Change repository urls to Gitbox |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-21731](https://issues.apache.org/jira/browse/HBASE-21731) | Do not need to use ClusterConnection in IntegrationTestBigLinkedListWithVisibility |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21716](https://issues.apache.org/jira/browse/HBASE-21716) | Add toStringCustomizedValues to TableDescriptor |  Major | . | Duo Zhang | Kevin Su |
| [HBASE-21715](https://issues.apache.org/jira/browse/HBASE-21715) | Do not throw UnsupportedOperationException in ProcedureFuture.get |  Major | Client | Duo Zhang | Junhong Xu |
| [HBASE-21762](https://issues.apache.org/jira/browse/HBASE-21762) | Move some methods in ClusterConnection to Connection |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21782](https://issues.apache.org/jira/browse/HBASE-21782) | LoadIncrementalHFiles should not be IA.Public |  Major | mapreduce | Duo Zhang | Duo Zhang |
| [HBASE-21792](https://issues.apache.org/jira/browse/HBASE-21792) | Mark HTableMultiplexer as deprecated and remove it in 3.0.0 |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-21710](https://issues.apache.org/jira/browse/HBASE-21710) | Add quota related methods to the Admin interface |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | Upgrade thrift dependency to 0.12.0 |  Blocker | Thrift | Duo Zhang | Duo Zhang |
| [HBASE-21853](https://issues.apache.org/jira/browse/HBASE-21853) | update copyright notices to 2019 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21859](https://issues.apache.org/jira/browse/HBASE-21859) | Add clearRegionLocationCache method for AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21884](https://issues.apache.org/jira/browse/HBASE-21884) | Fix box/unbox findbugs warning in secure bulk load |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-21888](https://issues.apache.org/jira/browse/HBASE-21888) | Add a isClosed method to AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21057](https://issues.apache.org/jira/browse/HBASE-21057) | upgrade to latest spotbugs |  Minor | community, test | Sean Busbey | Kevin Su |
| [HBASE-22042](https://issues.apache.org/jira/browse/HBASE-22042) | Missing @Override annotation for RawAsyncTableImpl.scan |  Major | asyncclient, Client | Duo Zhang | Rishabh Jain |
| [HBASE-22065](https://issues.apache.org/jira/browse/HBASE-22065) | Add listTableDescriptors(List\<TableName\>) method in AsyncAdmin |  Major | Admin | Duo Zhang | niuyulin |
| [HBASE-22052](https://issues.apache.org/jira/browse/HBASE-22052) | pom cleaning; filter out jersey-core in hadoop2 to match hadoop3 and remove redunant version specifications |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22099](https://issues.apache.org/jira/browse/HBASE-22099) | Backport HBASE-21895 "Error prone upgrade" to branch-2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22131](https://issues.apache.org/jira/browse/HBASE-22131) | Delete the patches in hbase-protocol-shaded module |  Major | build, Protobufs | Duo Zhang | Kevin Su |
| [HBASE-22007](https://issues.apache.org/jira/browse/HBASE-22007) | Add restoreSnapshot and cloneSnapshot with acl methods in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22108](https://issues.apache.org/jira/browse/HBASE-22108) | Avoid passing null in Admin methods |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22189](https://issues.apache.org/jira/browse/HBASE-22189) | Remove usage of StoreFile.getModificationTimeStamp |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22203](https://issues.apache.org/jira/browse/HBASE-22203) | Reformat DemoClient.java |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22187](https://issues.apache.org/jira/browse/HBASE-22187) | Remove usage of deprecated ClusterConnection.clearRegionCache |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22020](https://issues.apache.org/jira/browse/HBASE-22020) | upgrade to yetus 0.9.0 |  Major | build, community | Michael Stack | Sean Busbey |
| [HBASE-22304](https://issues.apache.org/jira/browse/HBASE-22304) | Fix remaining Checkstyle issues in hbase-endpoint |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22231](https://issues.apache.org/jira/browse/HBASE-22231) | Remove unused and \* imports |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22174](https://issues.apache.org/jira/browse/HBASE-22174) | Remove error prone from our precommit javac check |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22359](https://issues.apache.org/jira/browse/HBASE-22359) | Backport of HBASE-21371 misses activation-api license information |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-21714](https://issues.apache.org/jira/browse/HBASE-21714) | Deprecated isTableAvailableWithSplit method in thrift module |  Major | Thrift | Duo Zhang | niuyulin |
| [HBASE-22375](https://issues.apache.org/jira/browse/HBASE-22375) | Promote AccessChecker to LimitedPrivate(Coprocessor) |  Minor | Coprocessors, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22406](https://issues.apache.org/jira/browse/HBASE-22406) | skip generating rdoc when building gems in our docker image for running yetus |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-22449](https://issues.apache.org/jira/browse/HBASE-22449) | https everywhere in Maven metadata |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21536](https://issues.apache.org/jira/browse/HBASE-21536) | Fix completebulkload usage instructions |  Trivial | documentation, mapreduce | Artem Ervits | Artem Ervits |


