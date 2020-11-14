
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

## Release 2.3.0 - 2020-07-13



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-17942](https://issues.apache.org/jira/browse/HBASE-17942) | Disable region splits and merges per table |  Major | . | Vladimir Rodionov | Nihal Jain |
| [HBASE-21926](https://issues.apache.org/jira/browse/HBASE-21926) | Profiler servlet |  Major | master, Operability, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21815](https://issues.apache.org/jira/browse/HBASE-21815) | Make isTrackingMetrics and getMetrics of ScannerContext public |  Minor | . | Chen Feng | Chen Feng |
| [HBASE-22148](https://issues.apache.org/jira/browse/HBASE-22148) | Provide an alternative to CellUtil.setTimestamp |  Blocker | API, Coprocessors | Thomas D'Silva | Sean Busbey |
| [HBASE-22622](https://issues.apache.org/jira/browse/HBASE-22622) | WALKey Extended Attributes |  Major | wal | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-22648](https://issues.apache.org/jira/browse/HBASE-22648) | Snapshot TTL |  Minor | snapshots | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22313](https://issues.apache.org/jira/browse/HBASE-22313) | Add a method to FsDelegationToken to accept token kind |  Minor | security | Venkatesh Sridharan | Venkatesh Sridharan |
| [HBASE-15666](https://issues.apache.org/jira/browse/HBASE-15666) | shaded dependencies for hbase-testing-util |  Critical | test | Sean Busbey | Balazs Meszaros |
| [HBASE-22623](https://issues.apache.org/jira/browse/HBASE-22623) | Add RegionObserver coprocessor hook for preWALAppend |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-11062](https://issues.apache.org/jira/browse/HBASE-11062) | hbtop |  Major | hbtop | Andrew Kyle Purtell | Toshihiro Suzuki |
| [HBASE-21874](https://issues.apache.org/jira/browse/HBASE-21874) | Bucket cache on Persistent memory |  Major | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-22969](https://issues.apache.org/jira/browse/HBASE-22969) | A new binary component comparator(BinaryComponentComparator) to perform comparison of arbitrary length and position |  Minor | Filters | Udai Bhan Kashyap | Udai Bhan Kashyap |
| [HBASE-22280](https://issues.apache.org/jira/browse/HBASE-22280) | Separate read/write handler for priority request(especially for meta). |  Major | Scheduler | Lijin Bin | Lijin Bin |
| [HBASE-23073](https://issues.apache.org/jira/browse/HBASE-23073) | Add an optional costFunction to balance regions according to a capacity rule |  Minor | master | Pierre Zemb | Pierre Zemb |
| [HBASE-23653](https://issues.apache.org/jira/browse/HBASE-23653) | Expose content of meta table in web ui |  Minor | master, Operability, UI | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23710](https://issues.apache.org/jira/browse/HBASE-23710) | Priority configuration for system coprocessors |  Major | Coprocessors | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-18095](https://issues.apache.org/jira/browse/HBASE-18095) | Provide an option for clients to find the server hosting META that does not involve the ZooKeeper client |  Major | Client | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-23146](https://issues.apache.org/jira/browse/HBASE-23146) | Support CheckAndMutate with multiple conditions |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22978](https://issues.apache.org/jira/browse/HBASE-22978) | Online slow response log |  Minor | Admin, Operability, regionserver, shell | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-22285](https://issues.apache.org/jira/browse/HBASE-22285) | A normalizer which merges very small size regions with adjacent regions.(MergeToNormalize) |  Minor | master | Aman Poonia | Aman Poonia |
| [HBASE-24260](https://issues.apache.org/jira/browse/HBASE-24260) | Add a ClusterManager that issues commands via coprocessor |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-18659](https://issues.apache.org/jira/browse/HBASE-18659) | Use HDFS ACL to give user the ability to read snapshot directly on HDFS |  Major | . | Duo Zhang | Yi Mei |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-20894](https://issues.apache.org/jira/browse/HBASE-20894) | Move BucketCache from java serialization to protobuf |  Major | BucketCache | Mike Drob | Mike Drob |
| [HBASE-21634](https://issues.apache.org/jira/browse/HBASE-21634) | Print error message when user uses unacceptable values for LIMIT while setting quotas. |  Minor | . | Sakthi | Sakthi |
| [HBASE-21684](https://issues.apache.org/jira/browse/HBASE-21684) | Throw DNRIOE when connection or rpc client is closed |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21808](https://issues.apache.org/jira/browse/HBASE-21808) | Ensure we can build with JDK11 targetting JDK8 |  Major | build, community, java | Sean Busbey | Sean Busbey |
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
| [HBASE-21871](https://issues.apache.org/jira/browse/HBASE-21871) | Support to specify a peer table name in VerifyReplication tool |  Major | . | Toshihiro Suzuki | Subrat Mishra |
| [HBASE-21810](https://issues.apache.org/jira/browse/HBASE-21810) | bulkload  support set hfile compression on client |  Major | mapreduce | Yechao Chen | Yechao Chen |
| [HBASE-21667](https://issues.apache.org/jira/browse/HBASE-21667) | Move to latest ASF Parent POM |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22032](https://issues.apache.org/jira/browse/HBASE-22032) | KeyValue validation should check for null byte array |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-22093](https://issues.apache.org/jira/browse/HBASE-22093) | Combine TestRestoreSnapshotFromClientWithRegionReplicas to CloneSnapshotFromClientAfterSplittingRegionTestBase#testCloneSnapshotAfterSplittingRegion |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21964](https://issues.apache.org/jira/browse/HBASE-21964) | unset Quota by Throttle Type |  Major | master | yaojingyi | yaojingyi |
| [HBASE-22097](https://issues.apache.org/jira/browse/HBASE-22097) | Modify the description of split command in shell |  Trivial | shell | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22188](https://issues.apache.org/jira/browse/HBASE-22188) | Make TestSplitMerge more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22193](https://issues.apache.org/jira/browse/HBASE-22193) | Add backoff when region failed open too many times |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21257](https://issues.apache.org/jira/browse/HBASE-21257) | misspelled words.[occured -\> occurred] |  Trivial | . | zhanggangxue | zhanggangxue |
| [HBASE-20586](https://issues.apache.org/jira/browse/HBASE-20586) | SyncTable tool: Add support for cross-realm remote clusters |  Major | mapreduce, Operability, Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-15560](https://issues.apache.org/jira/browse/HBASE-15560) | TinyLFU-based BlockCache |  Major | BlockCache | Ben Manes | Ben Manes |
| [HBASE-22279](https://issues.apache.org/jira/browse/HBASE-22279) | Add a getRegionLocator method in Table/AsyncTable interface |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22250](https://issues.apache.org/jira/browse/HBASE-22250) | The same constants used in many places should be placed in constant classes |  Minor | Client, conf, regionserver | lixiaobao | lixiaobao |
| [HBASE-22296](https://issues.apache.org/jira/browse/HBASE-22296) | Remove TestFromClientSide.testGetStartEndKeysWithRegionReplicas |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22291](https://issues.apache.org/jira/browse/HBASE-22291) | Fix recovery of recovered.edits files under root dir |  Major | . | Zach York | Zach York |
| [HBASE-22225](https://issues.apache.org/jira/browse/HBASE-22225) | Profiler tab on Master/RS UI not working w/o comprehensive message |  Minor | UI | Yu Li | Andrew Kyle Purtell |
| [HBASE-22341](https://issues.apache.org/jira/browse/HBASE-22341) | Add explicit guidelines for removing deprecations in book |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21883](https://issues.apache.org/jira/browse/HBASE-21883) | Enhancements to Major Compaction tool |  Minor | Client, Compaction, tooling | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-22301](https://issues.apache.org/jira/browse/HBASE-22301) | Consider rolling the WAL if the HDFS write pipeline is slow |  Minor | wal | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22087](https://issues.apache.org/jira/browse/HBASE-22087) | Update LICENSE/shading for the dependencies from the latest Hadoop trunk |  Minor | hadoop3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22109](https://issues.apache.org/jira/browse/HBASE-22109) | Update hbase shaded content checker after guava update in hadoop branch-3.0 to 27.0-jre |  Minor | . | Gabor Bota | Gabor Bota |
| [HBASE-22379](https://issues.apache.org/jira/browse/HBASE-22379) | Fix Markdown for "Voting on Release Candidates" in book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22358](https://issues.apache.org/jira/browse/HBASE-22358) | Change rubocop configuration for method length |  Minor | community, shell | Jan Hentschel | Murtaza Hassan |
| [HBASE-20494](https://issues.apache.org/jira/browse/HBASE-20494) | Upgrade com.yammer.metrics dependency |  Major | dependencies | Vlad Rozov | Jan Hentschel |
| [HBASE-22392](https://issues.apache.org/jira/browse/HBASE-22392) | Remove extra/useless + |  Trivial | . | puleya7 | puleya7 |
| [HBASE-22365](https://issues.apache.org/jira/browse/HBASE-22365) | Region may be opened on two RegionServers |  Blocker | amv2 | Guanghao Zhang | Duo Zhang |
| [HBASE-21658](https://issues.apache.org/jira/browse/HBASE-21658) | Should get the meta replica number from zk instead of config at client side |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-22377](https://issues.apache.org/jira/browse/HBASE-22377) | Provide API to check the existence of a namespace which does not require ADMIN permissions |  Major | . | Chinmay Kulkarni | Andrew Kyle Purtell |
| [HBASE-22384](https://issues.apache.org/jira/browse/HBASE-22384) | Formatting issues in administration section of book |  Minor | community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-21784](https://issues.apache.org/jira/browse/HBASE-21784) | Dump replication queue should show list of wal files ordered chronologically |  Major | Replication, tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-20305](https://issues.apache.org/jira/browse/HBASE-20305) | Add option to SyncTable that skip deletes on target cluster |  Minor | mapreduce | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22469](https://issues.apache.org/jira/browse/HBASE-22469) | replace md5 checksum in saveVersion script with sha512 for hbase version information |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-22467](https://issues.apache.org/jira/browse/HBASE-22467) | WebUI changes to enable Apache Knox UI proxying |  Major | UI | Josh Elser | Josh Elser |
| [HBASE-22411](https://issues.apache.org/jira/browse/HBASE-22411) | Refactor codes of moving reigons in RSGroup |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22488](https://issues.apache.org/jira/browse/HBASE-22488) | Cleanup the explicit timeout value for test methods |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22459](https://issues.apache.org/jira/browse/HBASE-22459) | Expose store reader reference count |  Minor | HFile, metrics, regionserver | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22511](https://issues.apache.org/jira/browse/HBASE-22511) | More missing /rs-status links |  Minor | UI | Josh Elser | Josh Elser |
| [HBASE-22523](https://issues.apache.org/jira/browse/HBASE-22523) | Refactor RegionStates#getAssignmentsByTable to make it easy to understand |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22284](https://issues.apache.org/jira/browse/HBASE-22284) | optimization StringBuilder.append of AbstractMemStore.toString |  Trivial | . | wen.feiyi | wen.feiyi |
| [HBASE-22160](https://issues.apache.org/jira/browse/HBASE-22160) | Add sorting functionality in regionserver web UI for user regions |  Minor | monitoring, regionserver, UI, Usability | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-22116](https://issues.apache.org/jira/browse/HBASE-22116) | HttpDoAsClient to support keytab and principal in command line argument. |  Major | . | Subrat Mishra | Subrat Mishra |
| [HBASE-22593](https://issues.apache.org/jira/browse/HBASE-22593) | Add local Jenv file to gitignore |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22344](https://issues.apache.org/jira/browse/HBASE-22344) | Document deprecated public APIs |  Major | API, community, documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22561](https://issues.apache.org/jira/browse/HBASE-22561) | modify HFilePrettyPrinter to accept non-hbase.rootdir directories |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-22596](https://issues.apache.org/jira/browse/HBASE-22596) | [Chore] Separate the execution period between CompactionChecker and PeriodicMemStoreFlusher |  Minor | Compaction | Reid Chan | Reid Chan |
| [HBASE-22616](https://issues.apache.org/jira/browse/HBASE-22616) | responseTooXXX logging for Multi should characterize the component ops |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22454](https://issues.apache.org/jira/browse/HBASE-22454) | refactor WALSplitter |  Major | wal | Jingyun Tian | Jingyun Tian |
| [HBASE-22595](https://issues.apache.org/jira/browse/HBASE-22595) | Use full qualified name in Checkstyle suppressions |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22633](https://issues.apache.org/jira/browse/HBASE-22633) | Remove redundant call to substring for ZKReplicationQueueStorage |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22624](https://issues.apache.org/jira/browse/HBASE-22624) | Should sanity check table configuration when clone snapshot to a new table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22604](https://issues.apache.org/jira/browse/HBASE-22604) | fix the link in the docs to "Understanding HBase and BigTable" by Jim R. Wilson |  Trivial | documentation | David Mollitor | Murtaza Hassan |
| [HBASE-22403](https://issues.apache.org/jira/browse/HBASE-22403) | Balance in RSGroup should consider throttling and a failure affects the whole |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22669](https://issues.apache.org/jira/browse/HBASE-22669) | Add unit tests for org.apache.hadoop.hbase.util.Strings |  Major | java | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-7129](https://issues.apache.org/jira/browse/HBASE-7129) | Need documentation for REST atomic operations (HBASE-4720) |  Minor | documentation, REST | Joe Pallas | Dequan Chen |
| [HBASE-22638](https://issues.apache.org/jira/browse/HBASE-22638) | Zookeeper Utility enhancements |  Minor | Zookeeper | Viraj Jasani | Viraj Jasani |
| [HBASE-22689](https://issues.apache.org/jira/browse/HBASE-22689) | Line break for fix version in documentation |  Trivial | documentation | Jan Hentschel | Jan Hentschel |
| [HBASE-22643](https://issues.apache.org/jira/browse/HBASE-22643) | Delete region without archiving only if regiondir is present |  Major | HFile | Viraj Jasani | Viraj Jasani |
| [HBASE-22704](https://issues.apache.org/jira/browse/HBASE-22704) | Avoid NPE when access table.jsp and snapshot.jsp but master not finish initialization |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22690](https://issues.apache.org/jira/browse/HBASE-22690) | Deprecate / Remove OfflineMetaRepair in hbase-2+ |  Major | hbck2 | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-22610](https://issues.apache.org/jira/browse/HBASE-22610) | [BucketCache] Rename "hbase.offheapcache.minblocksize" |  Trivial | . | Reid Chan | Murtaza Hassan |
| [HBASE-22692](https://issues.apache.org/jira/browse/HBASE-22692) | Rubocop definition is not used in the /bin directory |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22721](https://issues.apache.org/jira/browse/HBASE-22721) | Refactor HBaseFsck: move the inner class out |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22750](https://issues.apache.org/jira/browse/HBASE-22750) | Correct @throws in comment |  Trivial | Client, rpc | Wenqiang Li | Wenqiang Li |
| [HBASE-22743](https://issues.apache.org/jira/browse/HBASE-22743) | ClientUtils for hbase-examples |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22763](https://issues.apache.org/jira/browse/HBASE-22763) | Fix remaining Checkstyle issue in hbase-procedure |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22764](https://issues.apache.org/jira/browse/HBASE-22764) | Fix remaining Checkstyle issues in hbase-rsgroup |  Trivial | rsgroup | Jan Hentschel | Jan Hentschel |
| [HBASE-22363](https://issues.apache.org/jira/browse/HBASE-22363) | Remove hardcoded number of read cache block buckets |  Trivial | BlockCache, BucketCache | Biju Nair | Biju Nair |
| [HBASE-22707](https://issues.apache.org/jira/browse/HBASE-22707) | [HBCK2] MasterRpcServices assigns method should try to reload regions from meta if the passed regions isn't found under AssignmentManager RegionsStateStore |  Major | hbck2, master | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22787](https://issues.apache.org/jira/browse/HBASE-22787) | Clean up of tests in hbase-zookeeper |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-22677](https://issues.apache.org/jira/browse/HBASE-22677) | Add unit tests for org.apache.hadoop.hbase.util.ByteRangeUtils and org.apache.hadoop.hbase.util.Classes |  Major | java, test | Eric Hettiaratchi | Eric Hettiaratchi |
| [HBASE-22790](https://issues.apache.org/jira/browse/HBASE-22790) | Add deprecation version for hbase.ipc.server.reservoir.initial.buffer.size & hbase.ipc.server.reservoir.initial.max |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22786](https://issues.apache.org/jira/browse/HBASE-22786) | Fix Checkstyle issues in tests of hbase-client |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22785](https://issues.apache.org/jira/browse/HBASE-22785) | Reduce number of Checkstyle issues in client exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22759](https://issues.apache.org/jira/browse/HBASE-22759) | Add user info to AUDITLOG events when doing grant/revoke |  Major | logging, security | Andor Molnar | Andor Molnar |
| [HBASE-22800](https://issues.apache.org/jira/browse/HBASE-22800) | Add mapreduce dependencies to hbase-shaded-testing-util |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-22812](https://issues.apache.org/jira/browse/HBASE-22812) | InterfaceAudience annotation in CatalogJanitor uses fully-qualified name |  Minor | . | Peter Somogyi | Murtaza Hassan |
| [HBASE-22543](https://issues.apache.org/jira/browse/HBASE-22543) | Revisit HBASE-21207 to make all values fully sortable |  Minor | master, monitoring, Operability, UI, Usability | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-22841](https://issues.apache.org/jira/browse/HBASE-22841) | TimeRange's factory functions do not support ranges, only \`allTime\` and \`at\` |  Major | Client | Huon Wilson | Huon Wilson |
| [HBASE-22871](https://issues.apache.org/jira/browse/HBASE-22871) | Move the DirScanPool out and do not use static field |  Major | master | Duo Zhang | Duo Zhang |
| [HBASE-22844](https://issues.apache.org/jira/browse/HBASE-22844) | Fix Checkstyle issues in client snapshot exceptions |  Minor | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22810](https://issues.apache.org/jira/browse/HBASE-22810) | Initialize an separate ThreadPoolExecutor for taking/restoring snapshot |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22464](https://issues.apache.org/jira/browse/HBASE-22464) | Improvements to hbase-vote script |  Trivial | scripts | Artem Ervits | Artem Ervits |
| [HBASE-20509](https://issues.apache.org/jira/browse/HBASE-20509) | Put List in HashSet directly without using addAll function to improve performance |  Trivial | Performance | taiyinglee | taiyinglee |
| [HBASE-22618](https://issues.apache.org/jira/browse/HBASE-22618) | added the possibility to load custom cost functions |  Major | . | Pierre Zemb | Pierre Zemb |
| [HBASE-22933](https://issues.apache.org/jira/browse/HBASE-22933) | Do not need to kick reassign for rs group change any more |  Major | rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-22962](https://issues.apache.org/jira/browse/HBASE-22962) | Fix typo in javadoc description |  Minor | documentation | KangZhiDong | KangZhiDong |
| [HBASE-22905](https://issues.apache.org/jira/browse/HBASE-22905) | Avoid temp ByteBuffer allocation in BlockingRpcConnection#writeRequest |  Major | . | chenxu | chenxu |
| [HBASE-22954](https://issues.apache.org/jira/browse/HBASE-22954) | Whitelist net.java.dev.jna which got pulled in through Hadoop 3.3.0 |  Minor | community, hadoop3 | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22724](https://issues.apache.org/jira/browse/HBASE-22724) | Add a emoji on the vote table for pre commit result on github |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-21879](https://issues.apache.org/jira/browse/HBASE-21879) | Read HFile's block to ByteBuffer directly instead of to byte for reducing young gc purpose |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22701](https://issues.apache.org/jira/browse/HBASE-22701) | Better handle invalid local directory for DynamicClassLoader |  Major | regionserver | Josh Elser | Josh Elser |
| [HBASE-22802](https://issues.apache.org/jira/browse/HBASE-22802) | Avoid temp ByteBuffer allocation in FileIOEngine#read |  Major | BucketCache | chenxu | chenxu |
| [HBASE-22760](https://issues.apache.org/jira/browse/HBASE-22760) | Stop/Resume Snapshot Auto-Cleanup activity with shell command |  Major | Admin, shell, snapshots | Viraj Jasani | Viraj Jasani |
| [HBASE-22899](https://issues.apache.org/jira/browse/HBASE-22899) | logging improvements for snapshot operations w/large manifests |  Minor | snapshots | Sean Busbey | Rabi Kumar K C |
| [HBASE-22804](https://issues.apache.org/jira/browse/HBASE-22804) | Provide an API to get list of successful regions and total expected regions in Canary |  Minor | canary | Caroline | Caroline |
| [HBASE-22846](https://issues.apache.org/jira/browse/HBASE-22846) | Internal Error 500 when Using HBASE REST API to Create Namespace. |  Major | hbase-connectors | Sailesh Patel | Wellington Chevreuil |
| [HBASE-23037](https://issues.apache.org/jira/browse/HBASE-23037) | Make the split WAL related log more readable |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23044](https://issues.apache.org/jira/browse/HBASE-23044) | CatalogJanitor#cleanMergeQualifier may clean wrong parent regions |  Critical | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23041](https://issues.apache.org/jira/browse/HBASE-23041) | Should not show split parent regions in HBCK report's unknown server part |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23049](https://issues.apache.org/jira/browse/HBASE-23049) | TableDescriptors#getAll should return the tables ordering by the name which contain namespace |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22027](https://issues.apache.org/jira/browse/HBASE-22027) | Move non-MR parts of TokenUtil into hbase-client |  Major | . | Stig Rohde Døssing | Stig Rohde Døssing |
| [HBASE-23058](https://issues.apache.org/jira/browse/HBASE-23058) | Should be "Column Family Name" in table.jsp |  Minor | . | Qiongwu | Qiongwu |
| [HBASE-23075](https://issues.apache.org/jira/browse/HBASE-23075) | Upgrade jackson to version 2.9.10 due to CVE-2019-16335 and CVE-2019-14540 |  Major | dependencies, hbase-connectors, REST, security | Nicholas Jiang | Nicholas Jiang |
| [HBASE-23038](https://issues.apache.org/jira/browse/HBASE-23038) | Provide consistent and clear logging about disabling chores |  Minor | master, regionserver | Sean Busbey | Sanjeet Nishad |
| [HBASE-23035](https://issues.apache.org/jira/browse/HBASE-23035) | Retain region to the last RegionServer make the failover slower |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22930](https://issues.apache.org/jira/browse/HBASE-22930) | Set unique name to longCompactions/shortCompactions threads |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22874](https://issues.apache.org/jira/browse/HBASE-22874) | Define a public interface for Canary and move existing implementation to LimitedPrivate |  Critical | canary | Duo Zhang | Rushabh Shah |
| [HBASE-23116](https://issues.apache.org/jira/browse/HBASE-23116) | LoadBalancer should log table name when balancing per table |  Minor | . | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-23095](https://issues.apache.org/jira/browse/HBASE-23095) | Reuse FileStatus in StoreFileInfo |  Major | mob, snapshots | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23140](https://issues.apache.org/jira/browse/HBASE-23140) | Remove unknown table error |  Minor | . | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23114](https://issues.apache.org/jira/browse/HBASE-23114) | Use archiveArtifacts in Jenkinsfiles |  Trivial | . | Peter Somogyi | Peter Somogyi |
| [HBASE-23017](https://issues.apache.org/jira/browse/HBASE-23017) | [Forward-port] Verify the file integrity in persistent IOEngine |  Major | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23083](https://issues.apache.org/jira/browse/HBASE-23083) | Collect Executor status info periodically and report to metrics system |  Major | . | chenxu | chenxu |
| [HBASE-23093](https://issues.apache.org/jira/browse/HBASE-23093) | Avoid Optional Anti-Pattern where possible |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-20626](https://issues.apache.org/jira/browse/HBASE-20626) | Change the value of "Requests Per Second" on WEBUI |  Major | metrics, UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-23107](https://issues.apache.org/jira/browse/HBASE-23107) | Avoid temp byte array creation when doing cacheDataOnWrite |  Major | BlockCache, HFile | chenxu | chenxu |
| [HBASE-23170](https://issues.apache.org/jira/browse/HBASE-23170) | Admin#getRegionServers use ClusterMetrics.Option.SERVERS\_NAME |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23172](https://issues.apache.org/jira/browse/HBASE-23172) | HBase Canary region success count metrics reflect column family successes, not region successes |  Minor | canary | Caroline | Caroline |
| [HBASE-23207](https://issues.apache.org/jira/browse/HBASE-23207) | Log a region open journal |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23208](https://issues.apache.org/jira/browse/HBASE-23208) | Unit formatting in Master & RS UI |  Trivial | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23191](https://issues.apache.org/jira/browse/HBASE-23191) | Log spams on Replication |  Trivial | Replication | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23221](https://issues.apache.org/jira/browse/HBASE-23221) | Polish the WAL interface after HBASE-23181 |  Major | regionserver, wal | Duo Zhang | Michael Stack |
| [HBASE-23082](https://issues.apache.org/jira/browse/HBASE-23082) | Backport low-latency snapshot tracking for space quotas to 2.x |  Major | Quotas | Josh Elser | Josh Elser |
| [HBASE-23212](https://issues.apache.org/jira/browse/HBASE-23212) | Provide config reload for Auto Region Reopen based on storeFile ref count |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23228](https://issues.apache.org/jira/browse/HBASE-23228) | Allow for jdk8 specific modules on branch-1 in precommit/nightly testing |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-23251](https://issues.apache.org/jira/browse/HBASE-23251) | Add Column Family and Table Names to HFileContext and use in HFileWriterImpl logging |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23245](https://issues.apache.org/jira/browse/HBASE-23245) | All MutableHistogram implementations should remove maxExpected |  Major | metrics | Viraj Jasani | Viraj Jasani |
| [HBASE-23283](https://issues.apache.org/jira/browse/HBASE-23283) | Provide clear and consistent logging about the period of enabled chores |  Minor | Operability | Sean Busbey | Mingliang Liu |
| [HBASE-19450](https://issues.apache.org/jira/browse/HBASE-19450) | Add log about average execution time for ScheduledChore |  Minor | Operability | Reid Chan | Reid Chan |
| [HBASE-23278](https://issues.apache.org/jira/browse/HBASE-23278) |  Add a table-level compaction progress display on the UI |  Minor | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23315](https://issues.apache.org/jira/browse/HBASE-23315) | Miscellaneous HBCK Report page cleanup |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-23308](https://issues.apache.org/jira/browse/HBASE-23308) | Review of NullPointerExceptions |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23321](https://issues.apache.org/jira/browse/HBASE-23321) | [hbck2] fixHoles of fixMeta doesn't update in-memory state |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23325](https://issues.apache.org/jira/browse/HBASE-23325) | [UI]rsgoup average load keep two decimals |  Minor | . | xuqinya | xuqinya |
| [HBASE-23334](https://issues.apache.org/jira/browse/HBASE-23334) | The table-lock node of zk is not needed since HBASE-16786 |  Minor | . | Zheng Wang | Zheng Wang |
| [HBASE-23293](https://issues.apache.org/jira/browse/HBASE-23293) | [REPLICATION] make ship edits timeout configurable |  Minor | Replication | chenxu | chenxu |
| [HBASE-20395](https://issues.apache.org/jira/browse/HBASE-20395) | Displaying thrift server type on the thrift page |  Major | Thrift | Guangxu Cheng | Guangxu Cheng |
| [HBASE-23352](https://issues.apache.org/jira/browse/HBASE-23352) | Allow chaos monkeys to access cmd line params, and improve FillDiskCommandAction |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23362](https://issues.apache.org/jira/browse/HBASE-23362) | WalPrettyPrinter should include the table name |  Minor | tooling | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23365](https://issues.apache.org/jira/browse/HBASE-23365) | Minor change MemStoreFlusher's log |  Trivial | . | Lijin Bin | Lijin Bin |
| [HBASE-23361](https://issues.apache.org/jira/browse/HBASE-23361) | [UI] Limit two decimals even for total average load |  Minor | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23303](https://issues.apache.org/jira/browse/HBASE-23303) | Add security headers to REST server/info page |  Major | REST | Andor Molnar | Andor Molnar |
| [HBASE-23373](https://issues.apache.org/jira/browse/HBASE-23373) | Log \`RetriesExhaustedException\` context with full time precision |  Minor | asyncclient, Client | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23377](https://issues.apache.org/jira/browse/HBASE-23377) | Balancer should skip disabled tables's regions |  Major | Balancer | Lijin Bin | Lijin Bin |
| [HBASE-23379](https://issues.apache.org/jira/browse/HBASE-23379) | Clean Up FSUtil getRegionLocalityMappingFromFS |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23380](https://issues.apache.org/jira/browse/HBASE-23380) | General Cleanup of FSUtil |  Minor | Filesystem Integration | David Mollitor | David Mollitor |
| [HBASE-23549](https://issues.apache.org/jira/browse/HBASE-23549) | Document steps to disable MOB for a column family |  Minor | documentation, mob | Sean Busbey | Sean Busbey |
| [HBASE-23239](https://issues.apache.org/jira/browse/HBASE-23239) | Reporting on status of backing MOB files from client-facing cells |  Major | mapreduce, mob, Operability | Sean Busbey | Sean Busbey |
| [HBASE-23066](https://issues.apache.org/jira/browse/HBASE-23066) | Create a config that forces to cache blocks on compaction |  Minor | Compaction, regionserver | Jacob LeBlanc | Jacob LeBlanc |
| [HBASE-23065](https://issues.apache.org/jira/browse/HBASE-23065) | [hbtop] Top-N heavy hitter user and client drill downs |  Major | hbtop, Operability | Andrew Kyle Purtell | Ankit Singhal |
| [HBASE-23326](https://issues.apache.org/jira/browse/HBASE-23326) | Implement a ProcedureStore which stores procedures in a HRegion |  Critical | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23613](https://issues.apache.org/jira/browse/HBASE-23613) | ProcedureExecutor check StuckWorkers blocked by DeadServerMetricRegionChore |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23238](https://issues.apache.org/jira/browse/HBASE-23238) | Additional test and checks for null references on ScannerCallableWithReplicas |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23617](https://issues.apache.org/jira/browse/HBASE-23617) | Add a stress test tool for region based procedure store |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23618](https://issues.apache.org/jira/browse/HBASE-23618) | Add a tool to dump procedure info in the WAL file |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23615](https://issues.apache.org/jira/browse/HBASE-23615) | Use a dedicated thread for executing WorkerMonitor in ProcedureExecutor. |  Major | amv2 | Lijin Bin | Lijin Bin |
| [HBASE-23624](https://issues.apache.org/jira/browse/HBASE-23624) | Add a tool to dump the procedure info in HFile |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-23632](https://issues.apache.org/jira/browse/HBASE-23632) | DeadServer cleanup |  Minor | . | Michael Stack | Michael Stack |
| [HBASE-23629](https://issues.apache.org/jira/browse/HBASE-23629) | Addition to Supporting projects page |  Minor | . | Manu Manjunath | Manu Manjunath |
| [HBASE-23333](https://issues.apache.org/jira/browse/HBASE-23333) | Include simple Call.toShortString() in sendCall exceptions |  Minor | Client, Operability | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23651](https://issues.apache.org/jira/browse/HBASE-23651) | Region balance throttling can be disabled |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23654](https://issues.apache.org/jira/browse/HBASE-23654) | Please add Apache Trafodion and EsgynDB to "Powered by Apache HBase" page |  Major | documentation | Dave Birdsall | Beata Sudi |
| [HBASE-23668](https://issues.apache.org/jira/browse/HBASE-23668) | Master log start filling with "Flush journal status" messages |  Major | proc-v2, RegionProcedureStore | Michael Stack | Michael Stack |
| [HBASE-23165](https://issues.apache.org/jira/browse/HBASE-23165) | [hbtop] Some modifications from HBASE-22988 |  Minor | hbtop | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23619](https://issues.apache.org/jira/browse/HBASE-23619) | Use built-in formatting for logging in hbase-zookeeper |  Trivial | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-23635](https://issues.apache.org/jira/browse/HBASE-23635) | Reduce number of Checkstyle violations in hbase-mapreduce |  Minor | mapreduce | Jan Hentschel | Jan Hentschel |
| [HBASE-23286](https://issues.apache.org/jira/browse/HBASE-23286) | Improve MTTR: Split WAL to HFile |  Major | MTTR | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23383](https://issues.apache.org/jira/browse/HBASE-23383) | [hbck2] \`fixHoles\` should queue assignment procedures for any regions its fixing |  Minor | hbck2, master, Region Assignment | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23674](https://issues.apache.org/jira/browse/HBASE-23674) | Too many rit page Numbers show confusion |  Trivial | master | dingbaosheng | dingbaosheng |
| [HBASE-23675](https://issues.apache.org/jira/browse/HBASE-23675) | Move to Apache parent POM version 22 |  Minor | dependencies | Peter Somogyi | Peter Somogyi |
| [HBASE-23626](https://issues.apache.org/jira/browse/HBASE-23626) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23622](https://issues.apache.org/jira/browse/HBASE-23622) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23646](https://issues.apache.org/jira/browse/HBASE-23646) | Fix remaining Checkstyle violations in tests of hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23347](https://issues.apache.org/jira/browse/HBASE-23347) | Pluggable RPC authentication |  Major | rpc, security | Josh Elser | Josh Elser |
| [HBASE-23645](https://issues.apache.org/jira/browse/HBASE-23645) | Fix remaining Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23623](https://issues.apache.org/jira/browse/HBASE-23623) | Reduce number of Checkstyle violations in hbase-rest |  Minor | REST | Jan Hentschel | Jan Hentschel |
| [HBASE-23627](https://issues.apache.org/jira/browse/HBASE-23627) | Resolve remaining Checkstyle violations in hbase-thrift |  Minor | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-23683](https://issues.apache.org/jira/browse/HBASE-23683) | Make HBaseInterClusterReplicationEndpoint more extensible |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23686](https://issues.apache.org/jira/browse/HBASE-23686) | Revert binary incompatible change and remove reflection |  Major | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23069](https://issues.apache.org/jira/browse/HBASE-23069) | periodic dependency bump for Sep 2019 |  Critical | dependencies | Sean Busbey | Michael Stack |
| [HBASE-23621](https://issues.apache.org/jira/browse/HBASE-23621) | Reduce number of Checkstyle violations in tests of hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23822](https://issues.apache.org/jira/browse/HBASE-23822) | Fix typo in procedures.jsp |  Trivial | website | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23802](https://issues.apache.org/jira/browse/HBASE-23802) | Remove unnecessary Configuration instantiation in LossyAccounting |  Minor | metrics | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23855](https://issues.apache.org/jira/browse/HBASE-23855) | Change bytes size to human readable size for Server Metrics of RegionServer Web UI |  Trivial | . | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23859](https://issues.apache.org/jira/browse/HBASE-23859) | Modify "Block locality" of RegionServer Web UI to human readable percentage |  Trivial | . | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-23864](https://issues.apache.org/jira/browse/HBASE-23864) | No need to submit SplitTableRegionProcedure/MergeTableRegionsProcedure when split/merge is disabled |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22827](https://issues.apache.org/jira/browse/HBASE-22827) | Expose multi-region merge in shell and Admin API |  Major | Admin, shell | Michael Stack | Sakthi |
| [HBASE-23939](https://issues.apache.org/jira/browse/HBASE-23939) | Remove unused variables from HBaseSaslRpcServer |  Trivial | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23932](https://issues.apache.org/jira/browse/HBASE-23932) | Minor improvements to Region Normalizer |  Minor | hbck2, master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23929](https://issues.apache.org/jira/browse/HBASE-23929) | Shell formatter for for meta table should pretty-print values of info:merge columns |  Minor | shell, Usability | Nick Dimiduk | Michael Stack |
| [HBASE-23930](https://issues.apache.org/jira/browse/HBASE-23930) | Shell should attempt to format \`timestamp\` attributes as ISO-8601 |  Minor | shell, Usability | Nick Dimiduk | Michael Stack |
| [HBASE-23967](https://issues.apache.org/jira/browse/HBASE-23967) | Improve the accuracy of the method sizeToString |  Minor | . | xuqinya | xuqinya |
| [HBASE-24032](https://issues.apache.org/jira/browse/HBASE-24032) | [RSGroup] Assign created tables to respective rsgroup automatically instead of manual operations |  Major | master, rsgroup | Reid Chan | Reid Chan |
| [HBASE-8868](https://issues.apache.org/jira/browse/HBASE-8868) | add metric to report client shortcircuit reads |  Minor | metrics, regionserver | Viral Bajaria | Wei-Chiu Chuang |
| [HBASE-23678](https://issues.apache.org/jira/browse/HBASE-23678) | Literate builder API for version management in schema |  Major | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24021](https://issues.apache.org/jira/browse/HBASE-24021) | Fail fast when bulkLoadHFiles method catch some IOException |  Major | HFile, regionserver | niuyulin | niuyulin |
| [HBASE-24111](https://issues.apache.org/jira/browse/HBASE-24111) | Enable CompactionTool executions on non-HDFS filesystems |  Major | Compaction, mapreduce, tooling | Peter Somogyi | Peter Somogyi |
| [HBASE-24077](https://issues.apache.org/jira/browse/HBASE-24077) | When encounter RowTooBigException, log the row info. |  Minor | . | Lijin Bin | Lijin Bin |
| [HBASE-24055](https://issues.apache.org/jira/browse/HBASE-24055) | Make AsyncFSWAL can run on EC cluster |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-24099](https://issues.apache.org/jira/browse/HBASE-24099) | Use a fair ReentrantReadWriteLock for the region close lock |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24181](https://issues.apache.org/jira/browse/HBASE-24181) | Add region info when log meessages in HRegion. |  Minor | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-23994](https://issues.apache.org/jira/browse/HBASE-23994) |  Add WebUI to Canary |  Trivial | canary, UI, Usability | Zhuoyue Huang | Zhuoyue Huang |
| [HBASE-24112](https://issues.apache.org/jira/browse/HBASE-24112) | [RSGroup] Support renaming rsgroup |  Major | rsgroup | Reid Chan | Reid Chan |
| [HBASE-24195](https://issues.apache.org/jira/browse/HBASE-24195) | Admin.getRegionServers() should return live servers excluding decom RS optionally |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24148](https://issues.apache.org/jira/browse/HBASE-24148) | Upgrade Thrift to 0.13.0: 0.12.0 has outstanding CVEs. |  Major | Thrift | Tamas Penzes | Tamas Penzes |
| [HBASE-24182](https://issues.apache.org/jira/browse/HBASE-24182) | log when the region is set to closing status |  Minor | . | Junhong Xu | Junhong Xu |
| [HBASE-24166](https://issues.apache.org/jira/browse/HBASE-24166) | Duplicate implementation for acquireLock between CreateTableProcedure and its parent class |  Minor | proc-v2 | Sun Xin | Sun Xin |
| [HBASE-24196](https://issues.apache.org/jira/browse/HBASE-24196) | [Shell] Add rename rsgroup command in hbase shell |  Major | rsgroup, shell | Reid Chan | Reid Chan |
| [HBASE-24139](https://issues.apache.org/jira/browse/HBASE-24139) | Balancer should avoid leaving idle region servers |  Critical | Balancer, Operability | Sean Busbey | Beata Sudi |
| [HBASE-24222](https://issues.apache.org/jira/browse/HBASE-24222) | remove FSUtils.checkAccess and replace with FileSystem.access in HBCK |  Major | Filesystem Integration | niuyulin | niuyulin |
| [HBASE-24024](https://issues.apache.org/jira/browse/HBASE-24024) | Optionally reject multi() requests with very high no of rows |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23264](https://issues.apache.org/jira/browse/HBASE-23264) | Resolve a TODO of BucketAllocator: "Why we add the extra 1024 bytes? Slop?" |  Minor | BucketCache | Zheng Wang | Zheng Wang |
| [HBASE-24252](https://issues.apache.org/jira/browse/HBASE-24252) | Implement proxyuser/doAs mechanism for hbase-http |  Major | security, UI | Istvan Toth | Istvan Toth |
| [HBASE-24199](https://issues.apache.org/jira/browse/HBASE-24199) | Procedure related metrics is not consumed in the JMX metric |  Minor | metrics | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24302](https://issues.apache.org/jira/browse/HBASE-24302) | Add an "ignoreTimestamps" option (defaulted to false) to HashTable/SyncTable tool |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24304](https://issues.apache.org/jira/browse/HBASE-24304) | Separate a hbase-asyncfs module |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-24335](https://issues.apache.org/jira/browse/HBASE-24335) | Support deleteall with ts but without column in shell mode |  Major | shell | Zheng Wang | Zheng Wang |
| [HBASE-24328](https://issues.apache.org/jira/browse/HBASE-24328) | skip duplicate GCMultipleMergedRegionsProcedure while previous finished |  Major | . | niuyulin | niuyulin |
| [HBASE-24345](https://issues.apache.org/jira/browse/HBASE-24345) | [ACL] renameRSGroup should require Admin level permission |  Major | acl, rsgroup | Reid Chan | Reid Chan |
| [HBASE-24321](https://issues.apache.org/jira/browse/HBASE-24321) | Add writable MinVersions and read-only Scan to coproc ScanOptions |  Major | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-24355](https://issues.apache.org/jira/browse/HBASE-24355) | Fix typos in the HStore#compact annotation |  Minor | . | kangkang.guo | kangkang.guo |
| [HBASE-24256](https://issues.apache.org/jira/browse/HBASE-24256) | When fixOverlap hits the max region limit, it is possible to include the same region in multiple merge request |  Major | hbck2 | Huaxiang Sun | Huaxiang Sun |
| [HBASE-23969](https://issues.apache.org/jira/browse/HBASE-23969) | Meta browser should show all \`info\` columns |  Minor | master, UI | Nick Dimiduk | Mingliang Liu |
| [HBASE-24164](https://issues.apache.org/jira/browse/HBASE-24164) | Retain the ReadRequests and WriteRequests of region on web UI after alter table |  Major | metrics | Zheng Wang | Zheng Wang |
| [HBASE-24386](https://issues.apache.org/jira/browse/HBASE-24386) | TableSnapshotScanner support scan limit |  Major | Scanners, snapshots | niuyulin | niuyulin |
| [HBASE-21996](https://issues.apache.org/jira/browse/HBASE-21996) | Set locale for javadoc |  Major | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-24387](https://issues.apache.org/jira/browse/HBASE-24387) | TableSnapshotInputFormatImpl support row limit on each InputSplit |  Major | mapreduce | niuyulin | niuyulin |
| [HBASE-24427](https://issues.apache.org/jira/browse/HBASE-24427) | HStore.add log format error |  Minor | . | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24369](https://issues.apache.org/jira/browse/HBASE-24369) | Provide more information about  merged child regions in Hbck Overlaps section, which cannot be fixed immediately |  Major | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24423](https://issues.apache.org/jira/browse/HBASE-24423) | No need to get lock in canSplit because hasReferences will get lock too |  Minor | regionserver | Zheng Wang | Zheng Wang |
| [HBASE-24371](https://issues.apache.org/jira/browse/HBASE-24371) | Add more details when print CompactionConfiguration info |  Minor | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-24428](https://issues.apache.org/jira/browse/HBASE-24428) | Priority compaction for recently split daughter regions |  Major | Compaction | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24416](https://issues.apache.org/jira/browse/HBASE-24416) | RegionNormalizer spliting region should not be limited by hbase.normalizer.min.region.count |  Major | . | Sun Xin | Sun Xin |
| [HBASE-24451](https://issues.apache.org/jira/browse/HBASE-24451) | Remove the HasThread because the related bug had been fixed since jdk7 |  Major | util | Zheng Wang | Zheng Wang |
| [HBASE-24470](https://issues.apache.org/jira/browse/HBASE-24470) | Add store file info when log meessages in HStore. |  Minor | logging, regionserver | song XinCun | song XinCun |
| [HBASE-24132](https://issues.apache.org/jira/browse/HBASE-24132) | Upgrade to Apache ZooKeeper 3.5.7 |  Major | . | Jianfei Jiang | Jianfei Jiang |
| [HBASE-24475](https://issues.apache.org/jira/browse/HBASE-24475) | Clean up the master thread name getting in SplitLogManager and AssignmentManager |  Minor | . | Zheng Wang | Zheng Wang |
| [HBASE-24455](https://issues.apache.org/jira/browse/HBASE-24455) | Correct the doc of "On the number of column families" |  Minor | documentation | Zheng Wang | Zheng Wang |
| [HBASE-24474](https://issues.apache.org/jira/browse/HBASE-24474) | Rename LocalRegion to MasterRegion |  Blocker | master | Duo Zhang | Duo Zhang |
| [HBASE-21406](https://issues.apache.org/jira/browse/HBASE-21406) | "status 'replication'" should not show SINK if the cluster does not act as sink |  Minor | . | Daisuke Kobayashi | Wellington Chevreuil |
| [HBASE-24412](https://issues.apache.org/jira/browse/HBASE-24412) | Canary support check only one column family per RegionTask |  Major | canary | niuyulin | niuyulin |
| [HBASE-24504](https://issues.apache.org/jira/browse/HBASE-24504) | refactor call setupCluster/tearDownCluster in TestTableSnapshotInputFormat |  Minor | mapreduce, test | niuyulin | niuyulin |
| [HBASE-24359](https://issues.apache.org/jira/browse/HBASE-24359) | Optionally ignore edits for deleted CFs for replication. |  Major | Replication | Sun Xin | Sun Xin |
| [HBASE-24483](https://issues.apache.org/jira/browse/HBASE-24483) | Add repeated prefix logging for MultipleColumnPrefixFilter |  Minor | Filters | Zheng Wang | Zheng Wang |
| [HBASE-24468](https://issues.apache.org/jira/browse/HBASE-24468) | Add region info when log meessages in HStore. |  Minor | logging, regionserver | song XinCun | song XinCun |
| [HBASE-24441](https://issues.apache.org/jira/browse/HBASE-24441) | CacheConfig details logged at Store open is not really useful |  Minor | logging, regionserver | Anoop Sam John | song XinCun |
| [HBASE-24524](https://issues.apache.org/jira/browse/HBASE-24524) | SyncTable logging improvements |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24478](https://issues.apache.org/jira/browse/HBASE-24478) | The regionInfo parameter for MasterProcedureScheduler#waitRegions and MasterProcedureScheduler#wakeRegions should be plural |  Minor | proc-v2 | song XinCun | song XinCun |
| [HBASE-21405](https://issues.apache.org/jira/browse/HBASE-21405) | [DOC] Add Details about Output of "status 'replication'" |  Minor | documentation, Replication | Daisuke Kobayashi | Wellington Chevreuil |
| [HBASE-24380](https://issues.apache.org/jira/browse/HBASE-24380) | Improve WAL splitting log lines to enable sessionization |  Minor | logging, Operability, wal | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-24102](https://issues.apache.org/jira/browse/HBASE-24102) | RegionMover should exclude draining/decommissioning nodes from target RSs |  Major | . | Anoop Sam John | Viraj Jasani |
| [HBASE-15161](https://issues.apache.org/jira/browse/HBASE-15161) | Umbrella: Miscellaneous improvements from production usage |  Major | . | Yu Li | Yu Li |
| [HBASE-24605](https://issues.apache.org/jira/browse/HBASE-24605) | Break long region names in the web UI |  Minor | UI | song XinCun | song XinCun |
| [HBASE-24205](https://issues.apache.org/jira/browse/HBASE-24205) | Create metric to know the number of reads that happens from memstore |  Major | metrics | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-24603](https://issues.apache.org/jira/browse/HBASE-24603) | Zookeeper sync() call is async |  Critical | master, regionserver | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24221](https://issues.apache.org/jira/browse/HBASE-24221) | Support bulkLoadHFile by family |  Major | HFile | niuyulin | niuyulin |
| [HBASE-24562](https://issues.apache.org/jira/browse/HBASE-24562) | Stabilize master startup with meta replicas enabled |  Major | meta, read replicas | Szabolcs Bukros | Szabolcs Bukros |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19893](https://issues.apache.org/jira/browse/HBASE-19893) | restore\_snapshot is broken in master branch when region splits |  Critical | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21535](https://issues.apache.org/jira/browse/HBASE-21535) | Zombie Master detector is not working |  Critical | master | Pankaj Kumar | Pankaj Kumar |
| [HBASE-21699](https://issues.apache.org/jira/browse/HBASE-21699) | Create table failed when using  SPLITS\_FILE =\> 'splits.txt' |  Blocker | Client, shell | huan | huan |
| [HBASE-21733](https://issues.apache.org/jira/browse/HBASE-21733) | SnapshotQuotaObserverChore should only fetch space quotas |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21644](https://issues.apache.org/jira/browse/HBASE-21644) | Modify table procedure runs infinitely for a table having region replication \> 1 |  Critical | Admin | Nihal Jain | Nihal Jain |
| [HBASE-21811](https://issues.apache.org/jira/browse/HBASE-21811) | region can be opened on two servers due to race condition with procedures and server reports |  Blocker | amv2 | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21840](https://issues.apache.org/jira/browse/HBASE-21840) | TestHRegionWithInMemoryFlush fails with NPE |  Blocker | test | Duo Zhang | Duo Zhang |
| [HBASE-21795](https://issues.apache.org/jira/browse/HBASE-21795) | Client application may get stuck (time bound) if a table modify op is called immediately after split op |  Critical | amv2 | Nihal Jain | Nihal Jain |
| [HBASE-21843](https://issues.apache.org/jira/browse/HBASE-21843) | RegionGroupingProvider breaks the meta wal file name pattern which may cause data loss for meta region |  Blocker | wal | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-18484](https://issues.apache.org/jira/browse/HBASE-18484) | VerifyRep by snapshot  does not work when Yarn / SourceHBase / PeerHBase located in different HDFS clusters |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-21862](https://issues.apache.org/jira/browse/HBASE-21862) | IPCUtil.wrapException should keep the original exception types for all the connection exceptions |  Blocker | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-21854](https://issues.apache.org/jira/browse/HBASE-21854) | Race condition in TestProcedureSkipPersistence |  Minor | proc-v2 | Peter Somogyi | Peter Somogyi |
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
| [HBASE-21505](https://issues.apache.org/jira/browse/HBASE-21505) | Several inconsistencies on information reported for Replication Sources by hbase shell status 'replication' command. |  Major | Replication | Wellington Chevreuil | Wellington Chevreuil |
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
| [HBASE-21915](https://issues.apache.org/jira/browse/HBASE-21915) | FileLink$FileLinkInputStream doesn't implement CanUnbuffer |  Major | Filesystem Integration | Josh Elser | Josh Elser |
| [HBASE-21736](https://issues.apache.org/jira/browse/HBASE-21736) | Remove the server from online servers before scheduling SCP for it in hbck |  Major | hbck2, test | Duo Zhang | Duo Zhang |
| [HBASE-22045](https://issues.apache.org/jira/browse/HBASE-22045) | Mutable range histogram reports incorrect outliers |  Major | . | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-22095](https://issues.apache.org/jira/browse/HBASE-22095) | Taking a snapshot fails in local mode |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-21619](https://issues.apache.org/jira/browse/HBASE-21619) | Fix warning message caused by incorrect ternary operator evaluation |  Trivial | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-22074](https://issues.apache.org/jira/browse/HBASE-22074) | Should use procedure store to persist the state in reportRegionStateTransition |  Blocker | amv2, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22067](https://issues.apache.org/jira/browse/HBASE-22067) | Fix log line in StochasticLoadBalancer when balancer is an ill-fit for cluster size |  Major | Balancer | Xu Cang | Xu Cang |
| [HBASE-22057](https://issues.apache.org/jira/browse/HBASE-22057) | Impose upper-bound on size of ZK ops sent in a single multi() |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22098](https://issues.apache.org/jira/browse/HBASE-22098) | Backport HBASE-18667 "Disable error-prone for hbase-protocol-shaded" to branch-2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22100](https://issues.apache.org/jira/browse/HBASE-22100) | False positive for error prone warnings in pre commit job |  Minor | build | Duo Zhang | Duo Zhang |
| [HBASE-21781](https://issues.apache.org/jira/browse/HBASE-21781) | list\_deadservers elapsed time is incorrect |  Major | shell | xuqinya | xuqinya |
| [HBASE-21135](https://issues.apache.org/jira/browse/HBASE-21135) | Build fails on windows as it fails to parse windows path during license check |  Major | build | Nihal Jain | Nihal Jain |
| [HBASE-22123](https://issues.apache.org/jira/browse/HBASE-22123) | REST gateway reports Insufficient permissions exceptions as 404 Not Found |  Minor | REST | Tomas Sokorai | Tomas Sokorai |
| [HBASE-22121](https://issues.apache.org/jira/browse/HBASE-22121) | AsyncAdmin can not deal with non default meta replica |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-20911](https://issues.apache.org/jira/browse/HBASE-20911) | correct Swtich/case indentation in formatter template for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22133](https://issues.apache.org/jira/browse/HBASE-22133) | Forward port HBASE-22073 "/rits.jsp throws an exception if no procedure" to branch-2.2+ |  Major | UI | Duo Zhang | Duo Zhang |
| [HBASE-20912](https://issues.apache.org/jira/browse/HBASE-20912) | Add import order config in dev support for eclipse |  Major | . | Ankit Singhal | Ankit Singhal |
| [HBASE-22070](https://issues.apache.org/jira/browse/HBASE-22070) | Checking restoreDir in RestoreSnapshotHelper |  Minor | snapshots | Vincent Choi | Vincent Choi |
| [HBASE-22177](https://issues.apache.org/jira/browse/HBASE-22177) | Do not recreate IOException in RawAsyncHBaseAdmin.adminCall |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22179](https://issues.apache.org/jira/browse/HBASE-22179) | Fix RawAsyncHBaseAdmin.getCompactionState |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22180](https://issues.apache.org/jira/browse/HBASE-22180) | Make TestBlockEvictionFromClient.testBlockRefCountAfterSplits more stable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22178](https://issues.apache.org/jira/browse/HBASE-22178) | Introduce a createTableAsync with TableDescriptor method in Admin |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22163](https://issues.apache.org/jira/browse/HBASE-22163) | Should not archive the compacted store files when region warmup |  Blocker | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22198](https://issues.apache.org/jira/browse/HBASE-22198) | Fix flakey TestAsyncTableGetMultiThreaded |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22194](https://issues.apache.org/jira/browse/HBASE-22194) | Snapshot unittests fail on Windows due to invalid file path uri |  Major | regionserver, test | Bahram Chehrazy | Bahram Chehrazy |
| [HBASE-22144](https://issues.apache.org/jira/browse/HBASE-22144) | MultiRowRangeFilter does not work with reversed scans |  Critical | Filters, Scanners | Josh Elser | Josh Elser |
| [HBASE-22202](https://issues.apache.org/jira/browse/HBASE-22202) | Fix new findbugs issues after we upgrade hbase-thirdparty dependencies |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-22207](https://issues.apache.org/jira/browse/HBASE-22207) | Fix flakey TestAssignmentManager.testAssignSocketTimeout |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22235](https://issues.apache.org/jira/browse/HBASE-22235) | OperationStatus.{SUCCESS\|FAILURE\|NOT\_RUN} are not visible to 3rd party coprocessors |  Major | Coprocessors | Lars Hofhansl | Andrew Kyle Purtell |
| [HBASE-22150](https://issues.apache.org/jira/browse/HBASE-22150) | rssStub in HRegionServer is not thread safe and should not directly be used |  Major | regionserver | Bahram Chehrazy | Bahram Chehrazy |
| [HBASE-21959](https://issues.apache.org/jira/browse/HBASE-21959) | CompactionTool should close the store it uses for compacting files, in order to properly archive compacted files. |  Major | tooling | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22222](https://issues.apache.org/jira/browse/HBASE-22222) | Site build fails after hbase-thirdparty upgrade |  Blocker | website | Peter Somogyi | Duo Zhang |
| [HBASE-22278](https://issues.apache.org/jira/browse/HBASE-22278) | RawAsyncHBaseAdmin should not use cached region location |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22282](https://issues.apache.org/jira/browse/HBASE-22282) | Should deal with error in the callback of RawAsyncHBaseAdmin.splitRegion methods |  Major | Admin, asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22268](https://issues.apache.org/jira/browse/HBASE-22268) | Update shading for javax.activation |  Minor | hadoop3, java, shading | Adam Antal | Adam Antal |
| [HBASE-22286](https://issues.apache.org/jira/browse/HBASE-22286) | License handling incorrectly lists CDDL/GPLv2+CE as safe to not aggregate |  Critical | build, community | Sean Busbey | Sean Busbey |
| [HBASE-22230](https://issues.apache.org/jira/browse/HBASE-22230) | REST Server drops connection on long scans |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22292](https://issues.apache.org/jira/browse/HBASE-22292) | PreemptiveFastFailInterceptor clean repeatedFailuresMap issue |  Blocker | . | zou | zou |
| [HBASE-22298](https://issues.apache.org/jira/browse/HBASE-22298) | branch-2.2 nightly fails "[ForOverride] Method annotated @ForOverride must have protected or package-private visibility" |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22086](https://issues.apache.org/jira/browse/HBASE-22086) | space quota issue: deleting snapshot doesn't update the usage of table |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22236](https://issues.apache.org/jira/browse/HBASE-22236) | AsyncNonMetaRegionLocator should not cache HRegionLocation with null location |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22054](https://issues.apache.org/jira/browse/HBASE-22054) | Space Quota: Compaction is not working for super user in case of NO\_WRITES\_COMPACTIONS |  Minor | . | Ajeet Rai | Sakthi |
| [HBASE-22190](https://issues.apache.org/jira/browse/HBASE-22190) | SnapshotFileCache may fail to load the correct snapshot file list when there is an on-going snapshot operation |  Blocker | snapshots | Duo Zhang | Duo Zhang |
| [HBASE-22343](https://issues.apache.org/jira/browse/HBASE-22343) | Make procedure retry interval configurable in test |  Major | amv2, test | Duo Zhang | Duo Zhang |
| [HBASE-22047](https://issues.apache.org/jira/browse/HBASE-22047) | LeaseException in Scan should be retired |  Major | Client, Scanners | Allan Yang | Igor Rudenko |
| [HBASE-22314](https://issues.apache.org/jira/browse/HBASE-22314) | shaded byo-hadoop client should list needed hadoop modules as provided scope to avoid inclusion of unnecessary transitive depednencies |  Major | hadoop2, hadoop3, shading | Sean Busbey | Sean Busbey |
| [HBASE-22312](https://issues.apache.org/jira/browse/HBASE-22312) | Hadoop 3 profile for hbase-shaded-mapreduce should like mapreduce as a provided dependency |  Major | mapreduce, shading | Sean Busbey | Sean Busbey |
| [HBASE-21467](https://issues.apache.org/jira/browse/HBASE-21467) | Fix flaky test TestCoprocessorClassLoader.testCleanupOldJars |  Minor | . | OrDTesters | OrDTesters |
| [HBASE-21070](https://issues.apache.org/jira/browse/HBASE-21070) | SnapshotFileCache won't update for snapshots stored in S3 |  Critical | snapshots | Zach York | Zach York |
| [HBASE-20851](https://issues.apache.org/jira/browse/HBASE-20851) | Change rubocop config for max line length of 100 |  Minor | community, shell | Umesh Agashe | Murtaza Hassan |
| [HBASE-22360](https://issues.apache.org/jira/browse/HBASE-22360) | Abort timer doesn't set when abort is called during graceful shutdown process |  Major | regionserver | Bahram Chehrazy | Bahram Chehrazy |
| [HBASE-21777](https://issues.apache.org/jira/browse/HBASE-21777) | "Tune compaction throughput" debug messages even when nothing has changed |  Trivial | Compaction | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22324](https://issues.apache.org/jira/browse/HBASE-22324) |  loss a mass of data when the sequenceId of cells greater than Integer.Max, because MemStoreMergerSegmentsIterator can not merge segments |  Blocker | in-memory-compaction | chenyang | ChenYang |
| [HBASE-22072](https://issues.apache.org/jira/browse/HBASE-22072) | High read/write intensive regions may cause long crash recovery |  Major | Performance, Recovery | Pavel | ramkrishna.s.vasudevan |
| [HBASE-22274](https://issues.apache.org/jira/browse/HBASE-22274) | Cell size limit check on append should consider cell's previous size. |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-22378](https://issues.apache.org/jira/browse/HBASE-22378) | HBase Canary fails with TableNotFoundException when table deleted during Canary run |  Minor | canary | Caroline | Caroline |
| [HBASE-21048](https://issues.apache.org/jira/browse/HBASE-21048) | Get LogLevel is not working from console in secure environment |  Major | . | Chandra Sekhar | Wei-Chiu Chuang |
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
| [HBASE-22520](https://issues.apache.org/jira/browse/HBASE-22520) | Avoid possible NPE in HalfStoreFileReader seekBefore() |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-22481](https://issues.apache.org/jira/browse/HBASE-22481) | Javadoc Warnings: reference not found |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22551](https://issues.apache.org/jira/browse/HBASE-22551) | TestMasterOperationsForRegionReplicas is flakey |  Major | read replicas, test | Duo Zhang | Duo Zhang |
| [HBASE-22552](https://issues.apache.org/jira/browse/HBASE-22552) | Rewrite TestEndToEndSplitTransaction.testCanSplitJustAfterASplit |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22563](https://issues.apache.org/jira/browse/HBASE-22563) | Reduce retained jobs for Jenkins pipelines |  Major | . | Josh Elser | Josh Elser |
| [HBASE-22530](https://issues.apache.org/jira/browse/HBASE-22530) | The metrics of store files count of region are returned to clients incorrectly |  Minor | metrics, regionserver | Eungsop Yoo | Eungsop Yoo |
| [HBASE-22559](https://issues.apache.org/jira/browse/HBASE-22559) | [RPC] set guard against CALL\_QUEUE\_HANDLER\_FACTOR\_CONF\_KEY |  Minor | rpc | Reid Chan | Reid Chan |
| [HBASE-22562](https://issues.apache.org/jira/browse/HBASE-22562) | PressureAwareThroughputController#skipControl never invoked |  Trivial | Operability | Josh Elser | Josh Elser |
| [HBASE-22565](https://issues.apache.org/jira/browse/HBASE-22565) | Javadoc Warnings: @see cannot be used in inline documentation |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22495](https://issues.apache.org/jira/browse/HBASE-22495) | Update SyncTable section, explaining from which specific minor versions "doDeletes/doPuts" is available |  Major | documentation | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22605](https://issues.apache.org/jira/browse/HBASE-22605) | Ref guide includes dev guidance only applicable to EOM versions |  Trivial | documentation | Sean Busbey | Mingliang Liu |
| [HBASE-22617](https://issues.apache.org/jira/browse/HBASE-22617) | Recovered WAL directories not getting cleaned up |  Blocker | wal | Abhishek Singh Chouhan | Duo Zhang |
| [HBASE-22477](https://issues.apache.org/jira/browse/HBASE-22477) | Throwing exception when meta region is not in OPEN state in client registry may crash a master |  Major | Client, master, meta | Duo Zhang | Duo Zhang |
| [HBASE-21751](https://issues.apache.org/jira/browse/HBASE-21751) | WAL creation fails during region open may cause region assign forever fail |  Major | . | Allan Yang | Bing Xiao |
| [HBASE-13798](https://issues.apache.org/jira/browse/HBASE-13798) | TestFromClientSide\* don't close the Table |  Trivial | test | Matteo Bertozzi | Andor Molnar |
| [HBASE-22637](https://issues.apache.org/jira/browse/HBASE-22637) | fix flaky TestMetaTableMetrics test |  Major | metrics, test | Mate Szalay-Beko | Mate Szalay-Beko |
| [HBASE-22652](https://issues.apache.org/jira/browse/HBASE-22652) | Flakey TestLockManager; test timed out after 780 seconds |  Major | proc-v2 | Michael Stack | Michael Stack |
| [HBASE-22582](https://issues.apache.org/jira/browse/HBASE-22582) | The Compaction writer may access the lastCell whose memory has been released when appending fileInfo in the final |  Major | Compaction | Zheng Hu | Zheng Hu |
| [HBASE-22656](https://issues.apache.org/jira/browse/HBASE-22656) | [Metrics]  Tabe metrics 'BatchPut' and 'BatchDelete' are never updated |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-22686](https://issues.apache.org/jira/browse/HBASE-22686) | ZkSplitLogWorkerCoordination doesn't allow a regionserver to pick up all of the split work it is capable of |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22681](https://issues.apache.org/jira/browse/HBASE-22681) | The 'assert highestUnsyncedTxid \< entry.getTxid();' in AbstractFWAL.append may fail when using AsyncFSWAL |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-22571](https://issues.apache.org/jira/browse/HBASE-22571) | Javadoc Warnings related to @return tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22586](https://issues.apache.org/jira/browse/HBASE-22586) | Javadoc Warnings related to @param tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22414](https://issues.apache.org/jira/browse/HBASE-22414) | Interruption of moving regions in RSGroup will cause regions on wrong rs |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22684](https://issues.apache.org/jira/browse/HBASE-22684) | The log rolling request maybe canceled immediately in LogRoller due to a race |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-22661](https://issues.apache.org/jira/browse/HBASE-22661) | list\_regions command in hbase shell is broken |  Major | shell | Toshihiro Suzuki | Duo Zhang |
| [HBASE-22700](https://issues.apache.org/jira/browse/HBASE-22700) | Incorrect timeout in recommended ZooKeeper configuration |  Minor | documentation | Peter Somogyi | maoling |
| [HBASE-20368](https://issues.apache.org/jira/browse/HBASE-20368) | Fix RIT stuck when a rsgroup has no online servers but AM's pendingAssginQueue is cleared |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-21426](https://issues.apache.org/jira/browse/HBASE-21426) | TestEncryptionKeyRotation.testCFKeyRotation is flaky |  Major | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22720](https://issues.apache.org/jira/browse/HBASE-22720) | Incorrect link for hbase.unittests |  Trivial | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-22603](https://issues.apache.org/jira/browse/HBASE-22603) | Javadoc Warnings related to @link tag |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22722](https://issues.apache.org/jira/browse/HBASE-22722) | Upgrade jackson databind dependencies to 2.9.9.1 |  Blocker | dependencies | Duo Zhang | Duo Zhang |
| [HBASE-22715](https://issues.apache.org/jira/browse/HBASE-22715) | All scan requests should be handled by scan handler threads in RWQueueRpcExecutor |  Minor | . | Jeongdae Kim | Jeongdae Kim |
| [HBASE-22733](https://issues.apache.org/jira/browse/HBASE-22733) | TestSplitTransactionOnCluster.testMasterRestartAtRegionSplitPendingCatalogJanitor is flakey |  Major | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22751](https://issues.apache.org/jira/browse/HBASE-22751) | table.jsp fails if ugly regions in table |  Major | UI | Michael Stack | Michael Stack |
| [HBASE-22714](https://issues.apache.org/jira/browse/HBASE-22714) | BuffferedMutatorParams opertationTimeOut() is misspelt |  Trivial | Client | Thanh Nm | Thanh Nm |
| [HBASE-22758](https://issues.apache.org/jira/browse/HBASE-22758) | Remove the unneccesary info cf deletion in DeleteTableProcedure#deleteFromMeta |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22408](https://issues.apache.org/jira/browse/HBASE-22408) | add a metric for regions OPEN on non-live servers |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22145](https://issues.apache.org/jira/browse/HBASE-22145) | windows hbase-env causes hbase cli/etc to ignore HBASE\_OPTS |  Major | . | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22773](https://issues.apache.org/jira/browse/HBASE-22773) | when set blockSize option in Performance Evaluation tool, error occurs:ERROR: Unrecognized option/command: --blockSize=131072 |  Minor | mapreduce | dingwei2019 | dingwei2019 |
| [HBASE-22778](https://issues.apache.org/jira/browse/HBASE-22778) | Upgrade jasckson databind to 2.9.9.2 |  Blocker | dependencies | Duo Zhang | niuyulin |
| [HBASE-22793](https://issues.apache.org/jira/browse/HBASE-22793) | RPC server connection is logging user as NULL principal |  Minor | rpc | Y. SREENIVASULU REDDY | Y. SREENIVASULU REDDY |
| [HBASE-22801](https://issues.apache.org/jira/browse/HBASE-22801) | Maven build issue on Github PRs |  Major | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22539](https://issues.apache.org/jira/browse/HBASE-22539) | WAL corruption due to early DBBs re-use when Durability.ASYNC\_WAL is used |  Blocker | rpc, wal | Wellington Chevreuil | Duo Zhang |
| [HBASE-22115](https://issues.apache.org/jira/browse/HBASE-22115) | HBase RPC aspires to grow an infinite tree of trace scopes; some other places are also unsafe |  Critical | rpc, tracing | Sergey Shelukhin | Sergey Shelukhin |
| [HBASE-22838](https://issues.apache.org/jira/browse/HBASE-22838) | assembly:single failure: user id or group id 'xxxxx' is too big |  Major | build | Viraj Jasani | Viraj Jasani |
| [HBASE-22632](https://issues.apache.org/jira/browse/HBASE-22632) | SplitTableRegionProcedure and MergeTableRegionsProcedure should skip store files for unknown column families |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-22856](https://issues.apache.org/jira/browse/HBASE-22856) | HBASE-Find-Flaky-Tests fails with pip error |  Major | build, test | Duo Zhang | Duo Zhang |
| [HBASE-22870](https://issues.apache.org/jira/browse/HBASE-22870) | reflection fails to access a private nested class |  Major | master | ranpanfeng | ranpanfeng |
| [HBASE-22882](https://issues.apache.org/jira/browse/HBASE-22882) | TestFlushSnapshotFromClient#testConcurrentSnapshottingAttempts is flakey (was written flakey) |  Major | test | Michael Stack | Michael Stack |
| [HBASE-22863](https://issues.apache.org/jira/browse/HBASE-22863) | Avoid Jackson versions and dependencies with known CVEs |  Major | dependencies | Viraj Jasani | Viraj Jasani |
| [HBASE-22601](https://issues.apache.org/jira/browse/HBASE-22601) | Misconfigured addition of peers leads to cluster shutdown. |  Major | . | Rushabh Shah | Rushabh Shah |
| [HBASE-22806](https://issues.apache.org/jira/browse/HBASE-22806) | Deleted CF are not cleared if memstore contain entries |  Major | API | Chao | Pankaj Kumar |
| [HBASE-22904](https://issues.apache.org/jira/browse/HBASE-22904) | NPE occurs when RS send space quota usage report during HMaster init |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22867](https://issues.apache.org/jira/browse/HBASE-22867) | The ForkJoinPool in CleanerChore will spawn thousands of threads in our cluster with thousands table |  Critical | master | Zheng Hu | Zheng Hu |
| [HBASE-22852](https://issues.apache.org/jira/browse/HBASE-22852) | hbase nightlies leaking gpg-agents |  Minor | build | Allen Wittenauer | Rushabh Shah |
| [HBASE-22922](https://issues.apache.org/jira/browse/HBASE-22922) | Only the two first regions are locked in MergeTableRegionsProcedure |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22857](https://issues.apache.org/jira/browse/HBASE-22857) | Fix the failed ut TestHRegion and TestHRegionWithInMemoryFlush |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22935](https://issues.apache.org/jira/browse/HBASE-22935) | TaskMonitor warns MonitoredRPCHandler task may be stuck when it recently started |  Minor | logging | David Manning | David Manning |
| [HBASE-22928](https://issues.apache.org/jira/browse/HBASE-22928) | ScanMetrics counter update may not happen in case of exception in TableRecordReaderImpl |  Minor | mapreduce | Pankaj Kumar | Pankaj Kumar |
| [HBASE-22893](https://issues.apache.org/jira/browse/HBASE-22893) | Change the comment in HBaseClassTestRule to reflect change in default test timeouts |  Trivial | . | Sakthi | Rabi Kumar K C |
| [HBASE-22943](https://issues.apache.org/jira/browse/HBASE-22943) | Various procedures should not cache log trace level |  Minor | proc-v2 | Sean Busbey | Sean Busbey |
| [HBASE-22896](https://issues.apache.org/jira/browse/HBASE-22896) | TestHRegion.testFlushMarkersWALFail is flaky |  Minor | . | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22961](https://issues.apache.org/jira/browse/HBASE-22961) | Deprecate hbck1 in core |  Major | hbck | Michael Stack | Michael Stack |
| [HBASE-22970](https://issues.apache.org/jira/browse/HBASE-22970) | split parents show as overlaps in the HBCK Report |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22981](https://issues.apache.org/jira/browse/HBASE-22981) | Remove unused flags for Yetus |  Critical | build | Peter Somogyi | Peter Somogyi |
| [HBASE-22963](https://issues.apache.org/jira/browse/HBASE-22963) | Netty ByteBuf leak in rpc client implementation |  Major | rpc | Duo Zhang | Duo Zhang |
| [HBASE-22964](https://issues.apache.org/jira/browse/HBASE-22964) | Fix flaky TestClusterRestartFailover and TestClusterRestartFailoverSplitWithoutZk |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22979](https://issues.apache.org/jira/browse/HBASE-22979) | Call ChunkCreator.initialize in TestHRegionWithInMemoryFlush |  Critical | . | Peter Somogyi | Peter Somogyi |
| [HBASE-22013](https://issues.apache.org/jira/browse/HBASE-22013) | SpaceQuotas - getNumRegions() returning wrong number of regions due to region replicas |  Major | . | Ajeet Rai | Shardul Singh |
| [HBASE-23007](https://issues.apache.org/jira/browse/HBASE-23007) | UnsatisfiedLinkError when using hbase-shaded packages under linux |  Critical | shading | Balazs Meszaros | Balazs Meszaros |
| [HBASE-23006](https://issues.apache.org/jira/browse/HBASE-23006) | RSGroupBasedLoadBalancer should also try to place replicas for the same region to different region servers |  Major | Region Assignment, rsgroup | Duo Zhang | Duo Zhang |
| [HBASE-23009](https://issues.apache.org/jira/browse/HBASE-23009) | TestSnapshotScannerHDFSAclController is broken on branch-2 |  Major | snapshots | Peter Somogyi | Yi Mei |
| [HBASE-22929](https://issues.apache.org/jira/browse/HBASE-22929) | MemStoreLAB  ChunkCreator may memory leak |  Major | . | Yechao Chen | ramkrishna.s.vasudevan |
| [HBASE-22955](https://issues.apache.org/jira/browse/HBASE-22955) | Branches-1 precommit and nightly yetus jobs are using jdk8 for jdk7 jobs |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-23043](https://issues.apache.org/jira/browse/HBASE-23043) | TestWALEntryStream times out |  Major | wal | Peter Somogyi | Peter Somogyi |
| [HBASE-23040](https://issues.apache.org/jira/browse/HBASE-23040) | region mover gives NullPointerException instead of saying a host isn't in the cluster |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-23005](https://issues.apache.org/jira/browse/HBASE-23005) | Table UI showed exception message when table is disabled |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23051](https://issues.apache.org/jira/browse/HBASE-23051) | Remove unneeded Mockito.mock invocations |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22941](https://issues.apache.org/jira/browse/HBASE-22941) | MetaTableAccessor.getMergeRegions() returns parent regions in random order |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22649](https://issues.apache.org/jira/browse/HBASE-22649) | Encode StoreFile path URLs in the UI to handle scenarios where CF contains special characters (like # etc.) |  Major | UI | Ashok shetty | Y. SREENIVASULU REDDY |
| [HBASE-22142](https://issues.apache.org/jira/browse/HBASE-22142) | Space quota: If table inside namespace having space quota is dropped, data size  usage is still considered for the drop table. |  Minor | . | Shardul Singh | Shardul Singh |
| [HBASE-22944](https://issues.apache.org/jira/browse/HBASE-22944) | TableNotFoundException: hbase:quota  is thrown when region server is restarted. |  Minor | Quotas | Shardul Singh | Shardul Singh |
| [HBASE-22012](https://issues.apache.org/jira/browse/HBASE-22012) | SpaceQuota DisableTableViolationPolicy will cause cycles of enable/disable table |  Major | . | Ajeet Rai | Shardul Singh |
| [HBASE-22965](https://issues.apache.org/jira/browse/HBASE-22965) | RS Crash due to DBE reference to an reused ByteBuff |  Major | . | chenxu | chenxu |
| [HBASE-23079](https://issues.apache.org/jira/browse/HBASE-23079) | RegionRemoteProcedureBase should override setTimeoutFailure |  Blocker | amv2 | Xiaolin Ha | Duo Zhang |
| [HBASE-22380](https://issues.apache.org/jira/browse/HBASE-22380) | break circle replication when doing bulkload |  Critical | Replication | chenxu | Wellington Chevreuil |
| [HBASE-23054](https://issues.apache.org/jira/browse/HBASE-23054) | Remove synchronization block from MetaTableMetrics and fix LossyCounting algorithm |  Major | metrics | Ankit Singhal | Ankit Singhal |
| [HBASE-23119](https://issues.apache.org/jira/browse/HBASE-23119) | ArrayIndexOutOfBoundsException in PrivateCellUtil#qualifierStartsWith |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-22735](https://issues.apache.org/jira/browse/HBASE-22735) | list\_regions may throw an error if a region is RIT |  Minor | shell | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23125](https://issues.apache.org/jira/browse/HBASE-23125) | TestRSGroupsAdmin2 is flaky |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-23094](https://issues.apache.org/jira/browse/HBASE-23094) | Wrong log message in simpleRegionNormaliser while checking if merge is enabled. |  Minor | . | Sanjeet Nishad | Sanjeet Nishad |
| [HBASE-22903](https://issues.apache.org/jira/browse/HBASE-22903) | alter\_status command is broken |  Major | metrics, shell | Viraj Jasani | Viraj Jasani |
| [HBASE-23134](https://issues.apache.org/jira/browse/HBASE-23134) | Enable\_all and Disable\_all table by Regex fail from Shell |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-22767](https://issues.apache.org/jira/browse/HBASE-22767) | System table RIT STUCK if their RSGroup has no highest version RSes |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-22887](https://issues.apache.org/jira/browse/HBASE-22887) | HFileOutputFormat2 split a lot of HFile by roll once per rowkey |  Major | mapreduce | langdamao | langdamao |
| [HBASE-23139](https://issues.apache.org/jira/browse/HBASE-23139) | MapReduce jobs lauched from convenience distribution are nonfunctional |  Blocker | mapreduce | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-23138](https://issues.apache.org/jira/browse/HBASE-23138) | Drop\_all table by regex fail from Shell -  Similar to HBASE-23134 |  Major | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23115](https://issues.apache.org/jira/browse/HBASE-23115) | Unit change for StoreFileSize and MemStoreSize |  Minor | metrics, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23056](https://issues.apache.org/jira/browse/HBASE-23056) | Block count is 0 when BucketCache using persistent IOEngine and retrieve from file |  Minor | BucketCache | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-23152](https://issues.apache.org/jira/browse/HBASE-23152) | Compaction\_switch does not work by RegionServer name |  Major | Client, Compaction | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23154](https://issues.apache.org/jira/browse/HBASE-23154) | list\_deadservers return incorrect no of rows |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23159](https://issues.apache.org/jira/browse/HBASE-23159) | HStore#getStorefilesSize may throw NPE |  Major | regionserver | Lijin Bin | Lijin Bin |
| [HBASE-21540](https://issues.apache.org/jira/browse/HBASE-21540) | when set property  "hbase.systemtables.compacting.memstore.type" to "basic" or "eager" will  cause an exception |  Major | conf | lixiaobao | lixiaobao |
| [HBASE-23155](https://issues.apache.org/jira/browse/HBASE-23155) | May NPE when concurrent AsyncNonMetaRegionLocator#updateCachedLocationOnError |  Major | asyncclient | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23078](https://issues.apache.org/jira/browse/HBASE-23078) | BaseLoadBalancer should consider region replicas when randomAssignment and roundRobinAssignment |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22370](https://issues.apache.org/jira/browse/HBASE-22370) | ByteBuf LEAK ERROR |  Major | rpc, wal | Lijin Bin | Lijin Bin |
| [HBASE-22881](https://issues.apache.org/jira/browse/HBASE-22881) | Fix non-daemon threads in hbase server implementation |  Major | master | Xiaolin Ha | Xiaolin Ha |
| [HBASE-23042](https://issues.apache.org/jira/browse/HBASE-23042) | Parameters are incorrect in procedures jsp |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23177](https://issues.apache.org/jira/browse/HBASE-23177) | If fail to open reference because FNFE, make it plain it is a Reference |  Major | Operability | Michael Stack | Michael Stack |
| [HBASE-23193](https://issues.apache.org/jira/browse/HBASE-23193) | ConnectionImplementation.isTableAvailable can not deal with meta table on branch-2.x |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23181](https://issues.apache.org/jira/browse/HBASE-23181) | Blocked WAL archive: "LogRoller: Failed to schedule flush of XXXX, because it is not online on us" |  Major | regionserver, wal | Michael Stack | Duo Zhang |
| [HBASE-23222](https://issues.apache.org/jira/browse/HBASE-23222) | Better logging and mitigation for MOB compaction failures |  Critical | mob | Sean Busbey | Sean Busbey |
| [HBASE-23199](https://issues.apache.org/jira/browse/HBASE-23199) | Error populating Table-Attribute fields |  Major | master, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23187](https://issues.apache.org/jira/browse/HBASE-23187) | Update parent region state to SPLIT in meta |  Major | master | Lijin Bin | Lijin Bin |
| [HBASE-20827](https://issues.apache.org/jira/browse/HBASE-20827) | Add pause when retrying after CallQueueTooBigException for reportRegionStateTransition |  Major | Region Assignment | Ankit Singhal | Ankit Singhal |
| [HBASE-23192](https://issues.apache.org/jira/browse/HBASE-23192) | CatalogJanitor consistencyCheck does not log problematic row on exception |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-22739](https://issues.apache.org/jira/browse/HBASE-22739) | ArrayIndexOutOfBoundsException when balance |  Major | Balancer | casuallc | Lijin Bin |
| [HBASE-23231](https://issues.apache.org/jira/browse/HBASE-23231) | ReplicationSource do not update metrics after refresh |  Major | wal | Lijin Bin | Lijin Bin |
| [HBASE-23184](https://issues.apache.org/jira/browse/HBASE-23184) | The HeapAllocation in WebUI is not accurate |  Minor | UI | chenxu | chenxu |
| [HBASE-23244](https://issues.apache.org/jira/browse/HBASE-23244) | NPEs running Canary |  Major | canary | Michael Stack | Michael Stack |
| [HBASE-23241](https://issues.apache.org/jira/browse/HBASE-23241) | TestExecutorService sometimes fail |  Major | test | Lijin Bin | Lijin Bin |
| [HBASE-23247](https://issues.apache.org/jira/browse/HBASE-23247) | [hbck2] Schedule SCPs for 'Unknown Servers' |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23243](https://issues.apache.org/jira/browse/HBASE-23243) | [pv2] Filter out SUCCESS procedures; on decent-sized cluster, plethora overwhelms problems |  Major | proc-v2, UI | Michael Stack | Michael Stack |
| [HBASE-21458](https://issues.apache.org/jira/browse/HBASE-21458) | Error: Could not find or load main class org.apache.hadoop.hbase.util.GetJavaProperty |  Minor | build, Client | Michael Stack | Michael Stack |
| [HBASE-22980](https://issues.apache.org/jira/browse/HBASE-22980) | HRegionPartioner getPartition() method incorrectly partitions the regions of the table. |  Major | mapreduce | Shardul Singh | Shardul Singh |
| [HBASE-23263](https://issues.apache.org/jira/browse/HBASE-23263) | NPE in Quotas.jsp |  Major | UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23262](https://issues.apache.org/jira/browse/HBASE-23262) | Cannot load Master UI |  Major | master, UI | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-18439](https://issues.apache.org/jira/browse/HBASE-18439) | Subclasses of o.a.h.h.chaos.actions.Action all use the same logger |  Minor | integration tests | Mike Drob | Rabi Kumar K C |
| [HBASE-23290](https://issues.apache.org/jira/browse/HBASE-23290) | shell processlist command is broken |  Major | shell | Michael Stack | Mingliang Liu |
| [HBASE-23294](https://issues.apache.org/jira/browse/HBASE-23294) | ReplicationBarrierCleaner should delete all the barriers for a removed region which does not belong to any serial replication peer |  Major | master, Replication | Duo Zhang | Duo Zhang |
| [HBASE-23282](https://issues.apache.org/jira/browse/HBASE-23282) | HBCKServerCrashProcedure for 'Unknown Servers' |  Major | hbck2, proc-v2 | Michael Stack | Michael Stack |
| [HBASE-23318](https://issues.apache.org/jira/browse/HBASE-23318) | LoadTestTool doesn't start |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22607](https://issues.apache.org/jira/browse/HBASE-22607) | TestExportSnapshotNoCluster::testSnapshotWithRefsExportFileSystemState() fails intermittently |  Major | test | Mingliang Liu | Mingliang Liu |
| [HBASE-23328](https://issues.apache.org/jira/browse/HBASE-23328) | info:regioninfo goes wrong when region replicas enabled |  Major | read replicas | Michael Stack | Michael Stack |
| [HBASE-23237](https://issues.apache.org/jira/browse/HBASE-23237) | Negative 'Requests per Second' counts in UI |  Major | UI | Michael Stack | Karthik Palanisamy |
| [HBASE-23336](https://issues.apache.org/jira/browse/HBASE-23336) | [CLI] Incorrect row(s) count  "clear\_deadservers" |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23197](https://issues.apache.org/jira/browse/HBASE-23197) | "IllegalArgumentException: Wrong FS" on edits replay when WALs on different file system and hbase.region.archive.recovered.edits is enabled. |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23312](https://issues.apache.org/jira/browse/HBASE-23312) | HBase Thrift SPNEGO configs (HBASE-19852) should be backwards compatible |  Major | Thrift | Kevin Risden | Kevin Risden |
| [HBASE-23117](https://issues.apache.org/jira/browse/HBASE-23117) | Bad enum in hbase:meta info:state column can fail loadMeta and stop startup |  Minor | . | Michael Stack | Sandeep Pal |
| [HBASE-23313](https://issues.apache.org/jira/browse/HBASE-23313) | [hbck2] setRegionState should update Master in-memory state too |  Major | hbck2 | Michael Stack | Wellington Chevreuil |
| [HBASE-23356](https://issues.apache.org/jira/browse/HBASE-23356) | When construct StoreScanner throw exceptions it is possible to left some KeyValueScanner not closed. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23345](https://issues.apache.org/jira/browse/HBASE-23345) | Table need to replication unless all of cfs are excluded |  Minor | Replication | Sun Xin | Sun Xin |
| [HBASE-23337](https://issues.apache.org/jira/browse/HBASE-23337) | Several modules missing in nexus for Apache HBase 2.2.2 |  Blocker | build, community, scripts | Chao | Sean Busbey |
| [HBASE-22529](https://issues.apache.org/jira/browse/HBASE-22529) | Sanity check for in-memory compaction policy |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-23364](https://issues.apache.org/jira/browse/HBASE-23364) | HRegionServer sometimes does not shut down. |  Major | metrics, regionserver | Lars Hofhansl | Lars Hofhansl |
| [HBASE-22096](https://issues.apache.org/jira/browse/HBASE-22096) | /storeFile.jsp shows CorruptHFileException when the storeFile is a reference file |  Major | UI | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23360](https://issues.apache.org/jira/browse/HBASE-23360) | [CLI] Fix help command "set\_quota" to explain removing quota |  Minor | shell | Karthik Palanisamy | Karthik Palanisamy |
| [HBASE-23566](https://issues.apache.org/jira/browse/HBASE-23566) | Fix package/packet terminology problem in chaos monkeys |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23582](https://issues.apache.org/jira/browse/HBASE-23582) | Unbalanced braces in string representation of table descriptor |  Minor | . | Junegunn Choi | Junegunn Choi |
| [HBASE-23376](https://issues.apache.org/jira/browse/HBASE-23376) | NPE happens while replica region is moving |  Minor | read replicas | Sun Xin | Sun Xin |
| [HBASE-23594](https://issues.apache.org/jira/browse/HBASE-23594) | Procedure stuck due to region happen to recorded on two servers. |  Critical | amv2, Region Assignment | Lijin Bin | Duo Zhang |
| [HBASE-23564](https://issues.apache.org/jira/browse/HBASE-23564) | RegionStates may has some expired serverinfo and make regions do not balance. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23572](https://issues.apache.org/jira/browse/HBASE-23572) | In 'HBCK Report', distinguish between live, dead, and unknown servers |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23581](https://issues.apache.org/jira/browse/HBASE-23581) | Creating table gets stuck when specifying an invalid split policy as METADATA |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23589](https://issues.apache.org/jira/browse/HBASE-23589) | FlushDescriptor contains non-matching family/output combinations |  Critical | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23590](https://issues.apache.org/jira/browse/HBASE-23590) | Update maxStoreFileRefCount to maxCompactedStoreFileRefCount |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23596](https://issues.apache.org/jira/browse/HBASE-23596) | HBCKServerCrashProcedure can double assign |  Major | proc-v2 | Michael Stack | Michael Stack |
| [HBASE-23098](https://issues.apache.org/jira/browse/HBASE-23098) | [bulkload] If one of the peers in a cluster is configured with NAMESPACE level, its hfile-refs(zk) will be backlogged |  Major | . | Yiran Wu | Yiran Wu |
| [HBASE-23587](https://issues.apache.org/jira/browse/HBASE-23587) | The FSYNC\_WAL flag does not work on branch-2.x |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-23175](https://issues.apache.org/jira/browse/HBASE-23175) | Yarn unable to acquire delegation token for HBase Spark jobs |  Major | security, spark | Ankit Singhal | Ankit Singhal |
| [HBASE-23369](https://issues.apache.org/jira/browse/HBASE-23369) | Auto-close 'unknown' Regions reported as OPEN on RegionServers |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23636](https://issues.apache.org/jira/browse/HBASE-23636) | Disable table may hang when regionserver stop or abort. |  Major | amv2 | Lijin Bin | Lijin Bin |
| [HBASE-23666](https://issues.apache.org/jira/browse/HBASE-23666) | Backport "HBASE-23660 hbase:meta's table.jsp ref to wrong rs address" to branch-2 |  Major | master | Lijin Bin | Lijin Bin |
| [HBASE-23663](https://issues.apache.org/jira/browse/HBASE-23663) | Allow dot and hyphen in Profiler's URL |  Minor | profiler | Peter Somogyi | Peter Somogyi |
| [HBASE-23648](https://issues.apache.org/jira/browse/HBASE-23648) | Re-use underlying connection registry in RawAsyncHBaseAdmin |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23655](https://issues.apache.org/jira/browse/HBASE-23655) | Fix flaky TestRSGroupsKillRS: should wait the SCP to finish |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23659](https://issues.apache.org/jira/browse/HBASE-23659) | BaseLoadBalancer#wouldLowerAvailability should consider region replicas |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23658](https://issues.apache.org/jira/browse/HBASE-23658) | Fix flaky TestSnapshotFromMaster |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23679](https://issues.apache.org/jira/browse/HBASE-23679) | FileSystem instance leaks due to bulk loads with Kerberos enabled |  Critical | . | Josh Elser | Josh Elser |
| [HBASE-23677](https://issues.apache.org/jira/browse/HBASE-23677) | region.jsp returns 500/NPE when provided encoded region name is not online |  Minor | regionserver, UI | Nick Dimiduk | wenfeiyi666 |
| [HBASE-23694](https://issues.apache.org/jira/browse/HBASE-23694) | After RegionProcedureStore completes migration of WALProcedureStore, still running WALProcedureStore.syncThread keeps trying to delete now inexistent log files. |  Major | proc-v2, RegionProcedureStore | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23695](https://issues.apache.org/jira/browse/HBASE-23695) | Fail more gracefully when test class is missing Category |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23701](https://issues.apache.org/jira/browse/HBASE-23701) | Make sure HBaseClassTestRule doesn't suffer same issue as HBaseClassTestRuleChecker |  Minor | . | Josh Elser | Josh Elser |
| [HBASE-23156](https://issues.apache.org/jira/browse/HBASE-23156) | start-hbase.sh failed with ClassNotFoundException when build with hadoop3 |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23601](https://issues.apache.org/jira/browse/HBASE-23601) | OutputSink.WriterThread exception gets stuck and repeated indefinietly |  Major | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23709](https://issues.apache.org/jira/browse/HBASE-23709) | Unwrap the real user to properly dispatch proxy-user auth'n |  Major | . | Jan Hentschel | Josh Elser |
| [HBASE-23733](https://issues.apache.org/jira/browse/HBASE-23733) | [Flakey Tests] TestSplitTransactionOnCluster |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23737](https://issues.apache.org/jira/browse/HBASE-23737) | [Flakey Tests] TestFavoredNodeTableImport fails 30% of the time |  Major | . | Michael Stack | Michael Stack |
| [HBASE-17115](https://issues.apache.org/jira/browse/HBASE-17115) | HMaster/HRegion Info Server does not honour admin.acl |  Major | . | Mohammad Arshad | Josh Elser |
| [HBASE-23782](https://issues.apache.org/jira/browse/HBASE-23782) | We still reference the hard coded meta descriptor in some places when listing table descriptors |  Blocker | meta | Duo Zhang | Duo Zhang |
| [HBASE-23809](https://issues.apache.org/jira/browse/HBASE-23809) | The RSGroup shell test is missing |  Major | rsgroup, test | Duo Zhang | Duo Zhang |
| [HBASE-23813](https://issues.apache.org/jira/browse/HBASE-23813) | Get surefire version from parent pom rather than define it in hbase-archetypes |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23682](https://issues.apache.org/jira/browse/HBASE-23682) | Fix NPE when disable DeadServerMetricRegionChore |  Major | master | Lijin Bin | Lijin Bin |
| [HBASE-23554](https://issues.apache.org/jira/browse/HBASE-23554) | Encoded regionname to regionname utility |  Major | shell | Michael Stack | Michael Stack |
| [HBASE-23804](https://issues.apache.org/jira/browse/HBASE-23804) | Fix default master addr hostname in master registry |  Major | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23892](https://issues.apache.org/jira/browse/HBASE-23892) | SecureTestCluster should allow its subclasses to pass their Class reference on HBaseKerberosUtils.setSSLConfiguration |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23904](https://issues.apache.org/jira/browse/HBASE-23904) | Procedure updating meta and Master shutdown are incompatible: CODE-BUG |  Major | amv2 | Michael Stack | Michael Stack |
| [HBASE-23553](https://issues.apache.org/jira/browse/HBASE-23553) | Snapshot referenced data files are deleted in some case |  Major | snapshots | Yi Mei | Yi Mei |
| [HBASE-23909](https://issues.apache.org/jira/browse/HBASE-23909) | list\_regions fails if table is under split |  Minor | shell | Peter Somogyi | Viraj Jasani |
| [HBASE-23895](https://issues.apache.org/jira/browse/HBASE-23895) | STUCK Region-In-Transition when failed to insert procedure to procedure store |  Major | proc-v2, RegionProcedureStore | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23944](https://issues.apache.org/jira/browse/HBASE-23944) | The method setClusterLoad of SimpleLoadBalancer is incorrect when balance by table |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-23954](https://issues.apache.org/jira/browse/HBASE-23954) | SplitParent region should not be balanced |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-23953](https://issues.apache.org/jira/browse/HBASE-23953) | SimpleBalancer bug when second pass to fill up to min |  Major | Balancer | niuyulin | niuyulin |
| [HBASE-22103](https://issues.apache.org/jira/browse/HBASE-22103) | HDFS-13209 in Hadoop 3.3.0 breaks asyncwal |  Major | hadoop3, wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24016](https://issues.apache.org/jira/browse/HBASE-24016) | Change nightly poll from cron @daily to pollSCM @daily; i.e. run nightly if a change ONLY |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24019](https://issues.apache.org/jira/browse/HBASE-24019) | Correct exception messages for table null and namespace unavailable. |  Minor | . | Mohammad Arshad | Mohammad Arshad |
| [HBASE-23633](https://issues.apache.org/jira/browse/HBASE-23633) | Find a way to handle the corrupt recovered hfiles |  Critical | MTTR, wal | Guanghao Zhang | Pankaj Kumar |
| [HBASE-23741](https://issues.apache.org/jira/browse/HBASE-23741) | Data loss when WAL split to HFile enabled |  Blocker | MTTR | Pankaj Kumar | Guanghao Zhang |
| [HBASE-24043](https://issues.apache.org/jira/browse/HBASE-24043) | [Flakey Tests] TestAsyncRegionAdminApi, TestRegionMergeTransactionOnCluster fixes and debug |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23949](https://issues.apache.org/jira/browse/HBASE-23949) | refactor  loadBalancer implements for rsgroup balance by table to  achieve overallbalanced |  Major | rsgroup | niuyulin | niuyulin |
| [HBASE-24040](https://issues.apache.org/jira/browse/HBASE-24040) | WALFactory.Providers.multiwal causes StackOverflowError |  Minor | wal | wenfeiyi666 | wenfeiyi666 |
| [HBASE-24057](https://issues.apache.org/jira/browse/HBASE-24057) | Add modules to mapreduce job classpaths |  Major | mapreduce | Peter Somogyi | Peter Somogyi |
| [HBASE-24041](https://issues.apache.org/jira/browse/HBASE-24041) | [regression]  Increase RESTServer buffer size back to 64k |  Major | REST | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-24001](https://issues.apache.org/jira/browse/HBASE-24001) | The "HBase Nightly" job may exhaust all executors - and create a deadlock |  Major | . | Zoltan Haindrich | Michael Stack |
| [HBASE-24122](https://issues.apache.org/jira/browse/HBASE-24122) | Change machine ulimit-l to ulimit-a so dumps full ulimit rather than just 'max locked memory' |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24128](https://issues.apache.org/jira/browse/HBASE-24128) | [Flakey Tests] Add retry on thrift cmdline if client fails plus misc debug |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23153](https://issues.apache.org/jira/browse/HBASE-23153) | PrimaryRegionCountSkewCostFunction SLB function should implement CostFunction#isNeeded |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24131](https://issues.apache.org/jira/browse/HBASE-24131) | [Flakey Tests] TestExportSnapshot takes too long; up against 13min max |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24121](https://issues.apache.org/jira/browse/HBASE-24121) | [Authorization] ServiceAuthorizationManager isn't dynamically updatable. And it should be. |  Major | rpc, security | Reid Chan | Reid Chan |
| [HBASE-24074](https://issues.apache.org/jira/browse/HBASE-24074) | ConcurrentModificationException occurred in ReplicationSourceManager while refreshing the peer |  Major | Replication | Pankaj Kumar | Pankaj Kumar |
| [HBASE-24162](https://issues.apache.org/jira/browse/HBASE-24162) | Move CHANGES.txt to CHANGES.md. Add RELEASENOTES.md too on branch-2, branch-2.3, and master |  Major | build | Michael Stack | Michael Stack |
| [HBASE-23998](https://issues.apache.org/jira/browse/HBASE-23998) | Update license for jetty-client |  Major | build, dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24168](https://issues.apache.org/jira/browse/HBASE-24168) | Align the internal.protobuf.version in hbase-protocol-shaded with hbase-thirdparty |  Major | pom, Protobufs | Duo Zhang | Junhong Xu |
| [HBASE-22879](https://issues.apache.org/jira/browse/HBASE-22879) | user\_permission command failed to show global permission |  Major | . | Yi Mei | Yi Mei |
| [HBASE-24167](https://issues.apache.org/jira/browse/HBASE-24167) | [Flakey Tests] TestHRegionWithInMemoryFlush#testWritesWhileScanning gets stuck MVCC |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24176](https://issues.apache.org/jira/browse/HBASE-24176) | user\_permission '.\*'  command failed to show all table permissions |  Minor | shell | song XinCun | song XinCun |
| [HBASE-24197](https://issues.apache.org/jira/browse/HBASE-24197) | TestHttpServer.testBindAddress failure with latest jetty |  Major | . | Istvan Toth | Istvan Toth |
| [HBASE-24151](https://issues.apache.org/jira/browse/HBASE-24151) | [rsgroup] The master server  aborted for IllegalThreadStateException |  Minor | rsgroup | kangkang.guo | kangkang.guo |
| [HBASE-24186](https://issues.apache.org/jira/browse/HBASE-24186) | RegionMover ignores replicationId |  Minor | read replicas | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-24158](https://issues.apache.org/jira/browse/HBASE-24158) | [Flakey Tests] TestAsyncTableGetMultiThreaded |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23833](https://issues.apache.org/jira/browse/HBASE-23833) | The relocated hadoop-thirdparty protobuf breaks HBase asyncwal |  Major | wal | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24177](https://issues.apache.org/jira/browse/HBASE-24177) | MetricsTable#updateFlushTime is wrong |  Minor | metrics | ramkrishna.s.vasudevan | Gaurav Kanade |
| [HBASE-24203](https://issues.apache.org/jira/browse/HBASE-24203) | Bump git version in Dockerfile |  Blocker | build | Peter Somogyi | Peter Somogyi |
| [HBASE-24174](https://issues.apache.org/jira/browse/HBASE-24174) | Fix findbugs warning on ServiceAuthorizationManager |  Major | . | Reid Chan | Reid Chan |
| [HBASE-24220](https://issues.apache.org/jira/browse/HBASE-24220) | Allow that zk NOTEMPTY multi exception is retryable by running in-series |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24213](https://issues.apache.org/jira/browse/HBASE-24213) | Backport the pre commit changes for HBASE-24169 to all branches |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24223](https://issues.apache.org/jira/browse/HBASE-24223) | The -Phadoop-3.0 option does not work on branch-2 and branch-2.3 with JDK11 |  Major | hadoop3, pom | Duo Zhang | Duo Zhang |
| [HBASE-24253](https://issues.apache.org/jira/browse/HBASE-24253) | HBASE-Find-Flaky-Tests job is failing because of can not build docker image |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24251](https://issues.apache.org/jira/browse/HBASE-24251) | PreCommit build is failing because of can not build docker image |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24281](https://issues.apache.org/jira/browse/HBASE-24281) | Remove some stale hadoop.version properties in the pom for sub modules |  Major | hadoop3, pom | Duo Zhang | Duo Zhang |
| [HBASE-24215](https://issues.apache.org/jira/browse/HBASE-24215) | [Flakey Tests] [ERROR] TestSecureRESTServer  java.lang.NoClassDefFoundError: com/sun/jersey/core/spi/factory/AbstractRuntimeDelegate |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24274](https://issues.apache.org/jira/browse/HBASE-24274) | \`RESTApiClusterManager\` attempts to deserialize response using serialization API |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24247](https://issues.apache.org/jira/browse/HBASE-24247) | Failed multi-merge because two regions not adjacent (legitimately). |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-24282](https://issues.apache.org/jira/browse/HBASE-24282) | 'scandetail' log message is missing when responseTooSlow happens on the first scan rpc call |  Major | Operability | song XinCun | song XinCun |
| [HBASE-22710](https://issues.apache.org/jira/browse/HBASE-22710) | Wrong result in one case of scan that use  raw and versions and filter together |  Major | Scanners | Zheng Wang | Zheng Wang |
| [HBASE-24294](https://issues.apache.org/jira/browse/HBASE-24294) | [Flakey Tests] TestThriftHttpServer BindException |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24288](https://issues.apache.org/jira/browse/HBASE-24288) | Allow admin user to create table and do bulkLoad |  Major | acl | song XinCun | song XinCun |
| [HBASE-24246](https://issues.apache.org/jira/browse/HBASE-24246) | Miscellaneous hbck2 fixMeta bulk merge fixes: better logging around merges/overlap-fixing, 'HBCK Report' overlap listing, and configuration |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24314](https://issues.apache.org/jira/browse/HBASE-24314) | Some classes still use log4j logger directly |  Blocker | logging | Duo Zhang | Duo Zhang |
| [HBASE-24322](https://issues.apache.org/jira/browse/HBASE-24322) | UnsafeAvailChecker should also check that required methods are available |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24307](https://issues.apache.org/jira/browse/HBASE-24307) | [Flakey Tests] krb server for secure thrift tests throws BindException |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24336](https://issues.apache.org/jira/browse/HBASE-24336) | [Metrics] FSDataInputStream's localBytesRead is wrong |  Minor | metrics | Reid Chan | Reid Chan |
| [HBASE-24316](https://issues.apache.org/jira/browse/HBASE-24316) | GCMulitpleMergedRegionsProcedure  is not idempotent |  Major | proc-v2 | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24342](https://issues.apache.org/jira/browse/HBASE-24342) | [Flakey Tests] Disable TestClusterPortAssignment.testClusterPortAssignment as it can't pass 100% of the time |  Major | flakies, test | Michael Stack | Michael Stack |
| [HBASE-24250](https://issues.apache.org/jira/browse/HBASE-24250) | CatalogJanitor resubmits GCMultipleMergedRegionsProcedure for the same region |  Major | master | Andrey Elenskiy | niuyulin |
| [HBASE-24284](https://issues.apache.org/jira/browse/HBASE-24284) | [h3/jdk11] REST server won't start |  Major | REST | Michael Stack | Michael Stack |
| [HBASE-24211](https://issues.apache.org/jira/browse/HBASE-24211) | Create table is slow in large cluster when AccessController is enabled. |  Major | Performance | Mohammad Arshad | Mohammad Arshad |
| [HBASE-24273](https://issues.apache.org/jira/browse/HBASE-24273) | HBCK's "Orphan Regions on FileSystem" reports regions with referenced HFiles |  Critical | hbck2 | Andrey Elenskiy | Huaxiang Sun |
| [HBASE-24338](https://issues.apache.org/jira/browse/HBASE-24338) | [Flakey Tests] NPE in TestRaceBetweenSCPAndDTP |  Major | flakies, test | Michael Stack | Michael Stack |
| [HBASE-24190](https://issues.apache.org/jira/browse/HBASE-24190) | Make kerberos value of hbase.security.authentication property case insensitive |  Major | . | Yuanliang Zhang | Rushabh Shah |
| [HBASE-23832](https://issues.apache.org/jira/browse/HBASE-23832) | Old config hbase.hstore.compactionThreshold is ignored |  Critical | . | Anoop Sam John | Sambit Mohapatra |
| [HBASE-24368](https://issues.apache.org/jira/browse/HBASE-24368) | Let HBCKSCP clear 'Unknown Servers', even if RegionStateNode has RegionLocation == null |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23702](https://issues.apache.org/jira/browse/HBASE-23702) | \`hbase.hstore.flusher.count\` setting to 0 breaks HMaster |  Major | regionserver | Ctest | Ctest |
| [HBASE-24135](https://issues.apache.org/jira/browse/HBASE-24135) | TableStateNotFoundException happends when table creation if rsgroup is enable |  Minor | . | Ajeet Rai | Sun Xin |
| [HBASE-24381](https://issues.apache.org/jira/browse/HBASE-24381) | The Size metrics in Master Webui is wrong if the size is 0 |  Major | UI | Baiqiang Zhao | Baiqiang Zhao |
| [HBASE-24377](https://issues.apache.org/jira/browse/HBASE-24377) | MemStoreFlusher throw NullPointerException |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-24365](https://issues.apache.org/jira/browse/HBASE-24365) | MetricsTableWrapperAggregateImpl runnable fails due to exception and never runs |  Minor | metrics | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-20289](https://issues.apache.org/jira/browse/HBASE-20289) | Comparator for NormalizationPlan breaks comparator's convention |  Minor | master | Yuki Tawara | Yuki Tawara |
| [HBASE-24399](https://issues.apache.org/jira/browse/HBASE-24399) | [Flakey Tests] Some UTs about RSGroup should wait RSGroupInfoManager to be online |  Minor | rsgroup | Sun Xin | Sun Xin |
| [HBASE-24364](https://issues.apache.org/jira/browse/HBASE-24364) | [Chaos Monkey] Invalid data block encoding in ChangeEncodingAction |  Major | . | Yi Mei | Yi Mei |
| [HBASE-24401](https://issues.apache.org/jira/browse/HBASE-24401) | Cell size limit check on append should consider 0 or less value to disable the check |  Major | . | wenbang | wenbang |
| [HBASE-24426](https://issues.apache.org/jira/browse/HBASE-24426) | Missing regionName while logging warning in HBCKServerCrashProcedure |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24376](https://issues.apache.org/jira/browse/HBASE-24376) | MergeNormalizer is merging non-adjacent regions and causing region overlaps/holes. |  Critical | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24370](https://issues.apache.org/jira/browse/HBASE-24370) | Avoid aggressive MergeRegion and GCMultipleMergedRegionsProcedure |  Major | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24425](https://issues.apache.org/jira/browse/HBASE-24425) | Run hbck\_chore\_run and catalogjanitor\_run on draw of 'HBCK Report' page |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24437](https://issues.apache.org/jira/browse/HBASE-24437) | Flaky test, TestLocalRegionOnTwoFileSystems#testFlushAndCompact |  Major | meta, test | Huaxiang Sun | Michael Stack |
| [HBASE-24434](https://issues.apache.org/jira/browse/HBASE-24434) | fix building cpp-example DemoClient |  Major | Client | Alexander Myasnikov |  |
| [HBASE-24379](https://issues.apache.org/jira/browse/HBASE-24379) | CatalogJanitor misreports region holes when there are actually over laps. |  Major | master | Huaxiang Sun | Huaxiang Sun |
| [HBASE-22287](https://issues.apache.org/jira/browse/HBASE-22287) | inifinite retries on failed server in RSProcedureDispatcher |  Major | . | Sergey Shelukhin | Michael Stack |
| [HBASE-23715](https://issues.apache.org/jira/browse/HBASE-23715) | MasterFileSystem should not create MasterProcWALs dir on fresh installs |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-24454](https://issues.apache.org/jira/browse/HBASE-24454) | BucketCache disabled instantly before error duration toleration is reached due to timing issue |  Major | BucketCache | Jacob LeBlanc | Jacob LeBlanc |
| [HBASE-24479](https://issues.apache.org/jira/browse/HBASE-24479) | Deflake TestCompaction#testStopStartCompaction |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24280](https://issues.apache.org/jira/browse/HBASE-24280) | Hadoop2 and Hadoop3 profiles being activated simultaneously causing test failures |  Major | . | Josh Elser | Istvan Toth |
| [HBASE-24499](https://issues.apache.org/jira/browse/HBASE-24499) | Use a client property for SaslConnection MAX\_ATTEMPTS (currently hardcoded to 5) |  Minor | Client, security | Ravi Kishore Valeti | Ravi Kishore Valeti |
| [HBASE-24496](https://issues.apache.org/jira/browse/HBASE-24496) | The tab of Base Stats not actived by default in table.jsp |  Major | UI | Zheng Wang | Zheng Wang |
| [HBASE-24513](https://issues.apache.org/jira/browse/HBASE-24513) | The default readRpcTimeout and writeRpcTimeout is incorrectly calculated in AsyncConnectionConfiguration |  Critical | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-24506](https://issues.apache.org/jira/browse/HBASE-24506) | async client deadlock |  Blocker | asyncclient | Whitney Jackson | Duo Zhang |
| [HBASE-24515](https://issues.apache.org/jira/browse/HBASE-24515) | batch Increment/Append fails when retrying the RPC |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24444](https://issues.apache.org/jira/browse/HBASE-24444) | Should shutdown mini cluster after class in TestMetaAssignmentWithStopMaster |  Minor | test | Duo Zhang | wenfeiyi666 |
| [HBASE-23202](https://issues.apache.org/jira/browse/HBASE-23202) | ExportSnapshot (import) will fail if copying files to root directory takes longer than cleaner TTL |  Major | snapshots | Zach York | Guangxu Cheng |
| [HBASE-24511](https://issues.apache.org/jira/browse/HBASE-24511) | Ability to configure timeout between RPC retry to RS from master |  Major | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24532](https://issues.apache.org/jira/browse/HBASE-24532) | Execute region plans with throttle should return succeeded plans |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24529](https://issues.apache.org/jira/browse/HBASE-24529) | hbase.rs.evictblocksonclose is not honored when removing compacted files and closing the storefiles |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24545](https://issues.apache.org/jira/browse/HBASE-24545) | Add backoff to SCP check on WAL split completion |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23195](https://issues.apache.org/jira/browse/HBASE-23195) | FSDataInputStreamWrapper unbuffer can NOT invoke the classes that NOT implements CanUnbuffer but its parents class implements CanUnbuffer |  Critical | io | Zhao Yi Ming | Zhao Yi Ming |
| [HBASE-24189](https://issues.apache.org/jira/browse/HBASE-24189) | WALSplit recreates region dirs for deleted table with recovered edits data |  Major | regionserver, wal | Andrey Elenskiy | Anoop Sam John |
| [HBASE-24517](https://issues.apache.org/jira/browse/HBASE-24517) | AssignmentManager.start should add meta region to ServerStateNode |  Critical | amv2 | Duo Zhang | Duo Zhang |
| [HBASE-24516](https://issues.apache.org/jira/browse/HBASE-24516) | Parameter copyFiles should be passed in SecureBulkLoadClient |  Minor | Replication | Qilin Cao | Qilin Cao |
| [HBASE-24550](https://issues.apache.org/jira/browse/HBASE-24550) | Passing '-h' or '--help' to bin/hbase doesn't do as expected |  Trivial | Operability, shell | Michael Stack | wenfeiyi666 |
| [HBASE-24579](https://issues.apache.org/jira/browse/HBASE-24579) | Failed SASL authentication does not result in an exception on client side |  Major | rpc | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-21773](https://issues.apache.org/jira/browse/HBASE-21773) | rowcounter utility should respond to pleas for help |  Critical | tooling | Sean Busbey | Wellington Chevreuil |
| [HBASE-24446](https://issues.apache.org/jira/browse/HBASE-24446) | Use EnvironmentEdgeManager to compute clock skew in Master |  Minor | . | Sandeep Guggilam | Sandeep Guggilam |
| [HBASE-24600](https://issues.apache.org/jira/browse/HBASE-24600) | Empty RegionAction added to MultiRequest in case of RowMutations/CheckAndMutate batch |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-24616](https://issues.apache.org/jira/browse/HBASE-24616) | Remove BoundedRecoveredHFilesOutputSink  dependency on a TableDescriptor |  Major | HFile, MTTR | Michael Stack | Michael Stack |
| [HBASE-24588](https://issues.apache.org/jira/browse/HBASE-24588) | Normalizer plan execution is not consistent between plan types |  Major | master, Normalizer | Nick Dimiduk | Viraj Jasani |
| [HBASE-24117](https://issues.apache.org/jira/browse/HBASE-24117) | Shutdown AssignmentManager before ProcedureExecutor may cause SCP to accidentally skip assigning a region |  Critical | proc-v2 | Michael Stack | Duo Zhang |
| [HBASE-24552](https://issues.apache.org/jira/browse/HBASE-24552) | Replica region needs to check if primary region directory exists at file system  in TransitRegionStateProcedure |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24657](https://issues.apache.org/jira/browse/HBASE-24657) | JsonBean representation of metrics at /jmx endpoint now quotes all numbers |  Minor | metrics | David Manning | David Manning |
| [HBASE-24546](https://issues.apache.org/jira/browse/HBASE-24546) | CloneSnapshotProcedure unlimited retry |  Major | snapshots | wenfeiyi666 | wenfeiyi666 |
| [HBASE-23987](https://issues.apache.org/jira/browse/HBASE-23987) | NettyRpcClientConfigHelper will not share event loop by default which is incorrect |  Major | Client, rpc | Duo Zhang | Duo Zhang |
| [HBASE-24656](https://issues.apache.org/jira/browse/HBASE-24656) | [Flakey Tests] branch-2 TestMasterNoCluster.testStopDuringStart |  Major | . | Michael Stack | Michael Stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21952](https://issues.apache.org/jira/browse/HBASE-21952) | Test Failure: TestClientOperationInterrupt.testInterrupt50Percent |  Minor | . | Xu Cang | Xu Cang |
| [HBASE-21416](https://issues.apache.org/jira/browse/HBASE-21416) | Intermittent TestRegionInfoDisplay failure due to shift in relTime of RegionState#toDescriptiveString |  Minor | . | Ted Yu | Norbert Kalmár |
| [HBASE-20918](https://issues.apache.org/jira/browse/HBASE-20918) | Re-enable TestRpcHandlerException |  Minor | test | Jack Bearden | Jack Bearden |
| [HBASE-21963](https://issues.apache.org/jira/browse/HBASE-21963) | Add a script for building and verifying release candidate |  Minor | community, scripts | Tak-Lon (Stephen) Wu | Tak-Lon (Stephen) Wu |
| [HBASE-22051](https://issues.apache.org/jira/browse/HBASE-22051) | Expect values are hard-coded in the verifications of TestRSGroupsBasics |  Minor | rsgroup, test | Xiang Li | Xiang Li |
| [HBASE-22455](https://issues.apache.org/jira/browse/HBASE-22455) | Split TestReplicationStatus |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-20782](https://issues.apache.org/jira/browse/HBASE-20782) | Fix duplication of TestServletFilter.access |  Minor | . | Jan Hentschel | Xu Cang |
| [HBASE-22472](https://issues.apache.org/jira/browse/HBASE-22472) | The newly split TestReplicationStatus\* tests are flaky |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-22545](https://issues.apache.org/jira/browse/HBASE-22545) | TestLogLevel broken |  Major | test | Josh Elser | Mingliang Liu |
| [HBASE-22615](https://issues.apache.org/jira/browse/HBASE-22615) | Make TestChoreService more robust to timing |  Minor | test | Sean Busbey | Sean Busbey |
| [HBASE-22791](https://issues.apache.org/jira/browse/HBASE-22791) | Wrong order of asserts in TestZKMulti |  Trivial | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-22725](https://issues.apache.org/jira/browse/HBASE-22725) | Remove all remaining javadoc warnings |  Trivial | test | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22894](https://issues.apache.org/jira/browse/HBASE-22894) | Move testOpenRegionFailedMemoryLeak to dedicated class |  Major | test | Bing Xiao | Bing Xiao |
| [HBASE-22766](https://issues.apache.org/jira/browse/HBASE-22766) | Code Coverage Improvement: Create Unit Tests for ResultStatsUtil |  Trivial | test | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22886](https://issues.apache.org/jira/browse/HBASE-22886) | Code Coverage Improvement: Create Unit Tests for ConnectionId |  Trivial | test | Murtaza Hassan | Rabi Kumar K C |
| [HBASE-23259](https://issues.apache.org/jira/browse/HBASE-23259) | Ability to run mini cluster using pre-determined available random ports |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23552](https://issues.apache.org/jira/browse/HBASE-23552) | Format Javadocs on ITBLL |  Trivial | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23555](https://issues.apache.org/jira/browse/HBASE-23555) | TestQuotaThrottle is broken |  Minor | . | Yi Mei | Yi Mei |
| [HBASE-23569](https://issues.apache.org/jira/browse/HBASE-23569) | Validate that the log cleaner actually cleans oldWALs as expected |  Major | integration tests, master, test | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23665](https://issues.apache.org/jira/browse/HBASE-23665) | Split unit tests from TestTableName into a separate test only class |  Minor | test | Nick Dimiduk | Bharath Vissapragada |
| [HBASE-23711](https://issues.apache.org/jira/browse/HBASE-23711) | Add test for MinVersions and KeepDeletedCells TTL |  Minor | . | Geoffrey Jacoby | Geoffrey Jacoby |
| [HBASE-23729](https://issues.apache.org/jira/browse/HBASE-23729) | [Flakeys] TestRSGroupsBasics#testClearNotProcessedDeadServer fails most of the time |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23735](https://issues.apache.org/jira/browse/HBASE-23735) | [Flakey Tests] TestClusterRestartFailover & TestClusterRestartFailoverSplitWithoutZk |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23731](https://issues.apache.org/jira/browse/HBASE-23731) | TestFromClientSide flakey after junit upgrade |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23746](https://issues.apache.org/jira/browse/HBASE-23746) | [Flakey Tests] Caused by: org.apache.hadoop.hbase.util.CommonFSUtils$StreamLacksCapabilityException: hflush and hsync |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23749](https://issues.apache.org/jira/browse/HBASE-23749) | TestHFileWriterV3 should have tests for all data block encodings |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23770](https://issues.apache.org/jira/browse/HBASE-23770) | [Flakey Tests] TestRegionReplicasWithRestartScenarios#testWhenRestart |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23764](https://issues.apache.org/jira/browse/HBASE-23764) | Flaky tests due to ZK client name resolution delays |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23752](https://issues.apache.org/jira/browse/HBASE-23752) | Fix a couple more test failures from nightly run |  Major | test | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23780](https://issues.apache.org/jira/browse/HBASE-23780) | Edit of test classifications |  Major | test | Michael Stack | Michael Stack |
| [HBASE-23786](https://issues.apache.org/jira/browse/HBASE-23786) |  [Flakey Test] TestMasterNotCarryTable.testMasterMemStoreLAB |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23783](https://issues.apache.org/jira/browse/HBASE-23783) | Address tests writing and reading SSL/Security files in a common location. |  Minor | . | Mark Robert Miller | Mark Robert Miller |
| [HBASE-23789](https://issues.apache.org/jira/browse/HBASE-23789) | [Flakey Tests] ERROR [Time-limited test] balancer.HeterogeneousRegionCountCostFunction(199): cannot read rules file located at ' /tmp/hbase-balancer.rules ' |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23793](https://issues.apache.org/jira/browse/HBASE-23793) | Increase maven heap allocation to 4G in Yetus personality |  Major | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23805](https://issues.apache.org/jira/browse/HBASE-23805) | [Flakey Test] TestRaceBetweenSCPAndDTP |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23815](https://issues.apache.org/jira/browse/HBASE-23815) | [Flakey Test] AbstractTestAsyncTableRegionReplicasRead family of tests fails with no breadcrumbs on why |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23824](https://issues.apache.org/jira/browse/HBASE-23824) | TestSnapshotScannerHDFSAclController is flakey |  Major | . | Yi Mei | Yi Mei |
| [HBASE-23812](https://issues.apache.org/jira/browse/HBASE-23812) | [Flakey Test] TestReplicator#testReplicatorWithErrors: AssertionError: We did not replicate enough rows expected:\<10\> but was:\<7\> |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23838](https://issues.apache.org/jira/browse/HBASE-23838) | Adding debug logging to a few ExportSnapshot tests |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23808](https://issues.apache.org/jira/browse/HBASE-23808) | [Flakey Test] TestMasterShutdown#testMasterShutdownBeforeStartingAnyRegionServer |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23867](https://issues.apache.org/jira/browse/HBASE-23867) | [Flakey Test] TestStochasticLoadBalancerRegionReplicaSameHosts#testRegionReplicationOnMidClusterSameHosts |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23863](https://issues.apache.org/jira/browse/HBASE-23863) | [Flakey Test] TestReplicationEndpointWithMultipleWAL#testInterClusterReplication improvements |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23899](https://issues.apache.org/jira/browse/HBASE-23899) | [Flakey Test] Stabilizations and Debug |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23914](https://issues.apache.org/jira/browse/HBASE-23914) | TestThriftHBaseServiceHandler.testMetricsWithException failing |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23999](https://issues.apache.org/jira/browse/HBASE-23999) | [flakey test] TestTableOutputFormatConnectionExhaust |  Major | test | Nick Dimiduk | Huaxiang Sun |
| [HBASE-23977](https://issues.apache.org/jira/browse/HBASE-23977) | [Flakey Tests]  TestSlowLogRecorder.testOnlieSlowLogConsumption:178-\>confirmPayloadParams:97 expected:\<client\_1[0]\> but was:\<client\_1[4]\> |  Major | test | Michael Stack | Viraj Jasani |
| [HBASE-23984](https://issues.apache.org/jira/browse/HBASE-23984) | [Flakey Tests] TestMasterAbortAndRSGotKilled fails in teardown |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24035](https://issues.apache.org/jira/browse/HBASE-24035) | [Flakey Tests] Disable TestClusterScopeQuotaThrottle#testUserNamespaceClusterScopeQuota |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24034](https://issues.apache.org/jira/browse/HBASE-24034) | [Flakey Tests] A couple of fixes and cleanups |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24047](https://issues.apache.org/jira/browse/HBASE-24047) | [Flakey Tests] Disable TestCustomSaslAuthenticationProvider#testNegativeAuthentication on branch-2.3 |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-22555](https://issues.apache.org/jira/browse/HBASE-22555) | Re-enable TestMasterOperationsForRegionReplicas$testIncompleteMetaTableReplicaInformation |  Major | Replication, test | Peter Somogyi | Peter Somogyi |
| [HBASE-24097](https://issues.apache.org/jira/browse/HBASE-24097) | [Flakey Tests] TestSnapshotScannerHDFSAclController#testRestoreSnapshot |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24075](https://issues.apache.org/jira/browse/HBASE-24075) | [Flakey Tests] teardown fails because JmxCacheBuster wants to read ClusterId from closed fs |  Major | flakies | Michael Stack | Bharath Vissapragada |
| [HBASE-24100](https://issues.apache.org/jira/browse/HBASE-24100) | [Flakey Tests] Add test to check we work properly when port clash setting up thriftserver |  Major | flakies, Thrift | Michael Stack | Michael Stack |
| [HBASE-24073](https://issues.apache.org/jira/browse/HBASE-24073) | [flakey test] client.TestAsyncRegionAdminApi messed up compaction state. |  Major | Compaction | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24103](https://issues.apache.org/jira/browse/HBASE-24103) | [Flakey Tests] TestSnapshotScannerHDFSAclController |  Major | . | Yi Mei | Yi Mei |
| [HBASE-24107](https://issues.apache.org/jira/browse/HBASE-24107) | [Flakey Test] TestThriftServerCmdLine.testRunThriftServer NPEs if InfoServer port clash |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-24105](https://issues.apache.org/jira/browse/HBASE-24105) | [Flakey Test] regionserver.TestRegionReplicas |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24120](https://issues.apache.org/jira/browse/HBASE-24120) | Flakey Test: TestReplicationAdminWithClusters timeout |  Major | Replication | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24114](https://issues.apache.org/jira/browse/HBASE-24114) | [Flakey Tests] TestSnapshotScannerHDFSAclController |  Major | acl | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24161](https://issues.apache.org/jira/browse/HBASE-24161) | [flakey test] locking.TestEntityLocks.testEntityLockTimeout |  Minor | Client | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24159](https://issues.apache.org/jira/browse/HBASE-24159) | [flakey test] regionserver.TestRegionMergeTransactionOnCluster |  Major | regionserver | Huaxiang Sun | Huaxiang Sun |
| [HBASE-23853](https://issues.apache.org/jira/browse/HBASE-23853) | [Flakey Test] TestBlockEvictionFromClient#testBlockRefCountAfterSplits |  Major | flakies | Michael Stack | Huaxiang Sun |
| [HBASE-24183](https://issues.apache.org/jira/browse/HBASE-24183) | [flakey test] replication.TestAddToSerialReplicationPeer |  Major | Client | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24185](https://issues.apache.org/jira/browse/HBASE-24185) | Junit tests do not behave well with System.exit or Runtime.halt or JVM exits in general. |  Major | test | Mark Robert Miller | Mark Robert Miller |
| [HBASE-23956](https://issues.apache.org/jira/browse/HBASE-23956) | Use less resources running tests |  Major | test | Michael Stack | Michael Stack |
| [HBASE-24118](https://issues.apache.org/jira/browse/HBASE-24118) | [Flakey Tests] TestCloseRegionWhileRSCrash |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23976](https://issues.apache.org/jira/browse/HBASE-23976) | [flakey test] TestVerifyBucketCacheFile |  Major | regionserver, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23943](https://issues.apache.org/jira/browse/HBASE-23943) | Rubocop configuration needs updated |  Minor | build | Nick Dimiduk | Jan Hentschel |
| [HBASE-24080](https://issues.apache.org/jira/browse/HBASE-24080) | [flakey test] TestRegionReplicaFailover.testSecondaryRegionKill fails. |  Major | read replicas | Huaxiang Sun | Huaxiang Sun |
| [HBASE-24360](https://issues.apache.org/jira/browse/HBASE-24360) | RollingBatchRestartRsAction loses track of dead servers |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24361](https://issues.apache.org/jira/browse/HBASE-24361) | Make \`RESTApiClusterManager\` more resilient |  Major | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23957](https://issues.apache.org/jira/browse/HBASE-23957) | [flakey test] client.TestMultiParallel fails to read hbase-site.xml |  Minor | test | Nick Dimiduk | Huaxiang Sun |
| [HBASE-24115](https://issues.apache.org/jira/browse/HBASE-24115) | Relocate test-only REST "client" from src/ to test/ and mark Private |  Major | REST, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-24493](https://issues.apache.org/jira/browse/HBASE-24493) | [flakey test] TestExportSnapshot family of tests failing due to timeout in AbstractDelegationTokenSecretManager$ExpiredTokenRemover |  Major | test | Nick Dimiduk | Michael Stack |
| [HBASE-24594](https://issues.apache.org/jira/browse/HBASE-24594) | testReplicationStatusSink last applied op ts comparison failure |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23974](https://issues.apache.org/jira/browse/HBASE-23974) | [Flakey Tests] Allow that server may not yet be cleared from DeadServers in TestHBCKSCP |  Major | . | Michael Stack | Michael Stack |
| [HBASE-21905](https://issues.apache.org/jira/browse/HBASE-21905) | TestFIFOCompactionPolicy is flaky |  Major | test | Andrew Kyle Purtell | Bharath Vissapragada |
| [HBASE-22524](https://issues.apache.org/jira/browse/HBASE-22524) | Refactor TestReplicationSyncUpTool |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24079](https://issues.apache.org/jira/browse/HBASE-24079) | [Flakey Tests] Misc fixes and debug; fix BindException in Thrift tests; add waits on quota table to come online; etc. |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-22548](https://issues.apache.org/jira/browse/HBASE-22548) | Split TestAdmin1 |  Major | Admin, test | Duo Zhang | Duo Zhang |
| [HBASE-23814](https://issues.apache.org/jira/browse/HBASE-23814) | Add null checks and logging to misc set of tests |  Trivial | . | Michael Stack | Michael Stack |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-21799](https://issues.apache.org/jira/browse/HBASE-21799) | Update branch-2 version to 2.3.0-SNAPSHOT |  Major | build | Guanghao Zhang | Guanghao Zhang |
| [HBASE-21739](https://issues.apache.org/jira/browse/HBASE-21739) | Move grant/revoke from regionserver to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21764](https://issues.apache.org/jira/browse/HBASE-21764) | Size of in-memory compaction thread pool should be configurable |  Major | Compaction, in-memory-compaction | Zheng Hu | Zheng Hu |
| [HBASE-21828](https://issues.apache.org/jira/browse/HBASE-21828) | Make sure we do not return CompletionException when locating region |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21829](https://issues.apache.org/jira/browse/HBASE-21829) | Use FutureUtils.addListener instead of calling whenComplete directly |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
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
| [HBASE-21820](https://issues.apache.org/jira/browse/HBASE-21820) | Implement CLUSTER quota scope |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21916](https://issues.apache.org/jira/browse/HBASE-21916) | Abstract an ByteBuffAllocator to allocate/free ByteBuffer in ByteBufferPool |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21082](https://issues.apache.org/jira/browse/HBASE-21082) | Reimplement assign/unassign related procedure metrics |  Critical | amv2, metrics | Duo Zhang | Duo Zhang |
| [HBASE-21976](https://issues.apache.org/jira/browse/HBASE-21976) | Deal with RetryImmediatelyException for batching request |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21974](https://issues.apache.org/jira/browse/HBASE-21974) | Change Admin#grant/revoke parameter from UserPermission to user and Permission |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21978](https://issues.apache.org/jira/browse/HBASE-21978) | Should close AsyncRegistry if we fail to get cluster id when creating AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21934](https://issues.apache.org/jira/browse/HBASE-21934) | RemoteProcedureDispatcher should track the ongoing dispatched calls |  Blocker | proc-v2 | Jingyun Tian | Jingyun Tian |
| [HBASE-15728](https://issues.apache.org/jira/browse/HBASE-15728) | Add remaining per-table region / store / flush / compaction related metrics |  Major | metrics | Enis Soztutar | Xu Cang |
| [HBASE-21949](https://issues.apache.org/jira/browse/HBASE-21949) | Fix flaky test TestHBaseTestingUtility.testMiniZooKeeperWithMultipleClientPorts |  Major | . | Guanghao Zhang | maoling |
| [HBASE-21917](https://issues.apache.org/jira/browse/HBASE-21917) | Make the HFileBlock#validateChecksum can accept ByteBuff as an input. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22000](https://issues.apache.org/jira/browse/HBASE-22000) | Deprecated isTableAvailable with splitKeys |  Major | asyncclient, Client | Duo Zhang | Junhong Xu |
| [HBASE-22016](https://issues.apache.org/jira/browse/HBASE-22016) | Rewrite the block reading methods by using hbase.nio.ByteBuff |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21977](https://issues.apache.org/jira/browse/HBASE-21977) | Skip replay WAL and update seqid when open regions restored from snapshot |  Major | Region Assignment, snapshots | Yi Mei | Yi Mei |
| [HBASE-22025](https://issues.apache.org/jira/browse/HBASE-22025) | RAT check fails in nightlies; fails on (old) test data files. |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22039](https://issues.apache.org/jira/browse/HBASE-22039) | Should add the synchronous parameter for the XXXSwitch method in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22040](https://issues.apache.org/jira/browse/HBASE-22040) | Add mergeRegionsAsync with a List of region names method in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22015](https://issues.apache.org/jira/browse/HBASE-22015) | UserPermission should be annotated as InterfaceAudience.Public |  Blocker | . | Yi Mei | Yi Mei |
| [HBASE-21911](https://issues.apache.org/jira/browse/HBASE-21911) | Move getUserPermissions from regionserver to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22094](https://issues.apache.org/jira/browse/HBASE-22094) | Throw TableNotFoundException if table not exists in AsyncAdmin.compact |  Major | Admin | Duo Zhang | Sakthi |
| [HBASE-22101](https://issues.apache.org/jira/browse/HBASE-22101) | AsyncAdmin.isTableAvailable should not throw TableNotFoundException |  Major | Admin, asyncclient, Client | Duo Zhang | Kevin Su |
| [HBASE-22135](https://issues.apache.org/jira/browse/HBASE-22135) | AsyncAdmin will not refresh master address |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22005](https://issues.apache.org/jira/browse/HBASE-22005) | Use ByteBuff's refcnt to track the life cycle of data block |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22141](https://issues.apache.org/jira/browse/HBASE-22141) | Fix TestAsyncDecommissionAdminApi |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22157](https://issues.apache.org/jira/browse/HBASE-22157) | Include the cause when constructing RestoreSnapshotException in restoreSnapshot |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22158](https://issues.apache.org/jira/browse/HBASE-22158) | RawAsyncHBaseAdmin.getTableSplits should filter out none default replicas |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22152](https://issues.apache.org/jira/browse/HBASE-22152) | Create a jenkins file for yetus to processing GitHub PR |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22127](https://issues.apache.org/jira/browse/HBASE-22127) | Ensure that the block cached in the LRUBlockCache offheap is allocated from heap |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22153](https://issues.apache.org/jira/browse/HBASE-22153) | Fix the flaky TestRestartCluster |  Major | test | Zheng Hu | Duo Zhang |
| [HBASE-22117](https://issues.apache.org/jira/browse/HBASE-22117) | Move hasPermission/checkPermissions from region server to master |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21965](https://issues.apache.org/jira/browse/HBASE-21965) | Fix failed split and merge transactions that have failed to roll back |  Major | hbck2 | Jingyun Tian | Jingyun Tian |
| [HBASE-22196](https://issues.apache.org/jira/browse/HBASE-22196) | Split TestRestartCluster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-22084](https://issues.apache.org/jira/browse/HBASE-22084) | Rename AccessControlLists to PermissionStorage |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22159](https://issues.apache.org/jira/browse/HBASE-22159) | ByteBufferIOEngine should support write off-heap ByteBuff to the bufferArray |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22249](https://issues.apache.org/jira/browse/HBASE-22249) | Rest Server throws NoClassDefFoundError with Java 11 (run-time) |  Major | . | Sakthi | Sakthi |
| [HBASE-22244](https://issues.apache.org/jira/browse/HBASE-22244) | Make use of MetricsConnection in async client |  Major | asyncclient, metrics | Duo Zhang | Duo Zhang |
| [HBASE-19763](https://issues.apache.org/jira/browse/HBASE-19763) | Fix Checkstyle errors in hbase-procedure |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22267](https://issues.apache.org/jira/browse/HBASE-22267) | Implement client push back for async client |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22261](https://issues.apache.org/jira/browse/HBASE-22261) | Make use of ClusterStatusListener for async client |  Major | asyncclient | Duo Zhang | Duo Zhang |
| [HBASE-22208](https://issues.apache.org/jira/browse/HBASE-22208) | Create access checker and expose it in RS |  Major | . | Yi Mei | Yi Mei |
| [HBASE-21957](https://issues.apache.org/jira/browse/HBASE-21957) | Unify refCount of BucketEntry and refCount of hbase.nio.ByteBuff into one |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19222](https://issues.apache.org/jira/browse/HBASE-19222) | update jruby to 9.1.17.0 |  Major | shell | Sean Busbey | Peter Somogyi |
| [HBASE-22211](https://issues.apache.org/jira/browse/HBASE-22211) | Remove the returnBlock  method because we can just call HFileBlock#release directly |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21937](https://issues.apache.org/jira/browse/HBASE-21937) | Make the Compression#decompress can accept ByteBuff as input |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22218](https://issues.apache.org/jira/browse/HBASE-22218) | Shell throws "Unsupported Java version" when tried with Java 11 (run-time) |  Major | . | Sakthi | Sakthi |
| [HBASE-22122](https://issues.apache.org/jira/browse/HBASE-22122) | Change to release mob hfile's block  after rpc server shipped response to client |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22317](https://issues.apache.org/jira/browse/HBASE-22317) | Support reading from meta replicas |  Major | asyncclient, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-22322](https://issues.apache.org/jira/browse/HBASE-22322) | Use special pause for CallQueueTooBigException |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22325](https://issues.apache.org/jira/browse/HBASE-22325) | AsyncRpcRetryingCaller will not schedule retry if we hit a NotServingRegionException but there is no TableName provided |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22345](https://issues.apache.org/jira/browse/HBASE-22345) | REST Server must have specific version of javax.annotations available at runtime |  Major | REST | Sakthi | Sakthi |
| [HBASE-21921](https://issues.apache.org/jira/browse/HBASE-21921) | Notify users if the ByteBufAllocator is always allocating ByteBuffers from heap which means the increacing GC pressure |  Minor | . | Zheng Hu | Zheng Hu |
| [HBASE-22090](https://issues.apache.org/jira/browse/HBASE-22090) | The HFileBlock#CacheableDeserializer should pass ByteBuffAllocator to the newly created HFileBlock |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22405](https://issues.apache.org/jira/browse/HBASE-22405) | Update Ref Guide for EOL of Hadoop 2.7 |  Major | community, documentation | Sean Busbey | Sean Busbey |
| [HBASE-22399](https://issues.apache.org/jira/browse/HBASE-22399) | Change default hadoop-two.version to 2.8.x and remove the 2.7.x hadoop checks |  Major | build, hadoop2 | Duo Zhang | Duo Zhang |
| [HBASE-22429](https://issues.apache.org/jira/browse/HBASE-22429) | hbase-vote download step requires URL to end with '/' |  Trivial | . | Andrew Kyle Purtell | Tak-Lon (Stephen) Wu |
| [HBASE-22430](https://issues.apache.org/jira/browse/HBASE-22430) | hbase-vote should tee build and test output to console |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22400](https://issues.apache.org/jira/browse/HBASE-22400) | Remove the adapter code in async fs implementation for hadoop-2.7.x |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-22412](https://issues.apache.org/jira/browse/HBASE-22412) | Improve the metrics in ByteBuffAllocator |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22435](https://issues.apache.org/jira/browse/HBASE-22435) | Add a UT to address the HFileBlock#heapSize() in TestHeapSize |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22447](https://issues.apache.org/jira/browse/HBASE-22447) | Check refCount before free block in BucketCache |  Major | BucketCache | Lijin Bin | Lijin Bin |
| [HBASE-22445](https://issues.apache.org/jira/browse/HBASE-22445) | Add file info when throw exceptions in HFileReaderImpl |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-22478](https://issues.apache.org/jira/browse/HBASE-22478) | Add jackson dependency for hbase-http module |  Major | build, dependencies | Duo Zhang | Duo Zhang |
| [HBASE-22327](https://issues.apache.org/jira/browse/HBASE-22327) | Fix remaining Checkstyle issues in hbase-hadoop-compat |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22326](https://issues.apache.org/jira/browse/HBASE-22326) | Fix Checkstyle errors in hbase-examples |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22422](https://issues.apache.org/jira/browse/HBASE-22422) | Retain an ByteBuff with refCnt=0 when getBlock from LRUCache |  Major | BlockCache | Zheng Hu | Zheng Hu |
| [HBASE-22316](https://issues.apache.org/jira/browse/HBASE-22316) | Record the stack trace for current thread in FutureUtils.get |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22463](https://issues.apache.org/jira/browse/HBASE-22463) | Some paths in HFileScannerImpl did not consider block#release  which will exhaust the ByteBuffAllocator |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22483](https://issues.apache.org/jira/browse/HBASE-22483) | It's better to use 65KB as the default buffer size in ByteBuffAllocator |  Major | BucketCache | Zheng Hu | Zheng Hu |
| [HBASE-22500](https://issues.apache.org/jira/browse/HBASE-22500) | Modify pom and jenkins jobs for hadoop versions |  Blocker | build, hadoop2, hadoop3 | Duo Zhang | Duo Zhang |
| [HBASE-22535](https://issues.apache.org/jira/browse/HBASE-22535) | TestShellRSGroups fails when run on JDK11 |  Minor | java, shell | Sakthi | Sakthi |
| [HBASE-22536](https://issues.apache.org/jira/browse/HBASE-22536) | TestForeignExceptionSerialization fails when run on JDK11 |  Minor | java | Sakthi | Sakthi |
| [HBASE-22534](https://issues.apache.org/jira/browse/HBASE-22534) | TestCellUtil fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-22554](https://issues.apache.org/jira/browse/HBASE-22554) | Upgrade to surefire 2.22.2 |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-22357](https://issues.apache.org/jira/browse/HBASE-22357) | Fix remaining Checkstyle issues in hbase-replication |  Trivial | Replication | Jan Hentschel | Jan Hentschel |
| [HBASE-22569](https://issues.apache.org/jira/browse/HBASE-22569) | Should treat null consistency as Consistency.STRONG in ConnectionUtils.timelineConsistentRead |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-22491](https://issues.apache.org/jira/browse/HBASE-22491) | Separate the heap HFileBlock and offheap HFileBlock because the heap block won't need refCnt and save into prevBlocks list before shipping |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22458](https://issues.apache.org/jira/browse/HBASE-22458) | TestClassFinder fails when run on JDK11 |  Minor | java, test | Sakthi | Sakthi |
| [HBASE-22531](https://issues.apache.org/jira/browse/HBASE-22531) | The HFileReaderImpl#shouldUseHeap return the incorrect true when disabled BlockCache |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22264](https://issues.apache.org/jira/browse/HBASE-22264) | Separate out jars related to JDK 11 into a folder in /lib |  Minor | java | Sakthi | Sakthi |
| [HBASE-22598](https://issues.apache.org/jira/browse/HBASE-22598) | Deprecated the hbase.ipc.server.reservoir.initial.buffer.size & hbase.ipc.server.reservoir.initial.max for HBase2.x compatibility |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22585](https://issues.apache.org/jira/browse/HBASE-22585) | Ensure javax.annotation doesn't get include in shaded artifacts when built with Java 11 |  Major | build, java | Sakthi | Sakthi |
| [HBASE-22588](https://issues.apache.org/jira/browse/HBASE-22588) | Upgrade jaxws-ri dependency to 2.3.2 |  Major | dependencies, java | Duo Zhang | Sakthi |
| [HBASE-22600](https://issues.apache.org/jira/browse/HBASE-22600) | Document that LoadIncrementalHFiles will be removed in 3.0.0 |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21284](https://issues.apache.org/jira/browse/HBASE-21284) | Forward port HBASE-21000 to branch-2 |  Major | . | Andrew Kyle Purtell | Mingliang Liu |
| [HBASE-22547](https://issues.apache.org/jira/browse/HBASE-22547) | Align the config keys and add document for offheap read in HBase Book. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-21995](https://issues.apache.org/jira/browse/HBASE-21995) | Add a coprocessor to set HDFS ACL for hbase granted user |  Major | Coprocessors, security | Yi Mei | Yi Mei |
| [HBASE-20060](https://issues.apache.org/jira/browse/HBASE-20060) | Add details of off heap memstore into book. |  Critical | documentation | Anoop Sam John | Zheng Hu |
| [HBASE-22621](https://issues.apache.org/jira/browse/HBASE-22621) | Backport offheap block reading (HBASE-21879) to branch-2 |  Major | Offheaping | Zheng Hu | Zheng Hu |
| [HBASE-7191](https://issues.apache.org/jira/browse/HBASE-7191) | HBCK - Add offline create/fix hbase.version and hbase.id |  Major | hbck | Enis Soztutar | xufeng |
| [HBASE-22673](https://issues.apache.org/jira/browse/HBASE-22673) | Avoid to expose protobuf stuff in Hbck interface |  Major | hbck2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22663](https://issues.apache.org/jira/browse/HBASE-22663) | The HeapAllocationRatio in WebUI is not accurate because all of the heap allocation will happen in another separated allocator named HEAP |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-22719](https://issues.apache.org/jira/browse/HBASE-22719) | Add debug support for github PR pre commit job |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22527](https://issues.apache.org/jira/browse/HBASE-22527) | [hbck2] Add a master web ui to show the problematic regions |  Major | hbase-operator-tools, hbck2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22578](https://issues.apache.org/jira/browse/HBASE-22578) | HFileCleaner should not delete empty ns/table directories used for user san snapshot feature |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22742](https://issues.apache.org/jira/browse/HBASE-22742) | [HBCK2] Add more log for hbck operations at master side |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22709](https://issues.apache.org/jira/browse/HBASE-22709) | Add a chore thread in master to do hbck checking and display results in 'HBCK Report' page |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22580](https://issues.apache.org/jira/browse/HBASE-22580) | Add a table attribute to make user scan snapshot feature configurable for table |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22723](https://issues.apache.org/jira/browse/HBASE-22723) | Have CatalogJanitor report holes and overlaps; i.e. problems it sees when doing its regular scan of hbase:meta |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22741](https://issues.apache.org/jira/browse/HBASE-22741) | Show catalogjanitor consistency complaints in new 'HBCK Report' page |  Major | hbck2, UI | Michael Stack | Michael Stack |
| [HBASE-22737](https://issues.apache.org/jira/browse/HBASE-22737) | Add a new admin method and shell cmd to trigger the hbck chore to run |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22807](https://issues.apache.org/jira/browse/HBASE-22807) | HBCK Report showed wrong orphans regions on FileSystem |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22776](https://issues.apache.org/jira/browse/HBASE-22776) | Rename config names in user scan snapshot feature |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22808](https://issues.apache.org/jira/browse/HBASE-22808) | HBCK Report showed the offline regions which belong to disabled table |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22824](https://issues.apache.org/jira/browse/HBASE-22824) | Show filesystem path for the orphans regions on filesystem |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22803](https://issues.apache.org/jira/browse/HBASE-22803) | Modify config value range to enable turning off of the hbck chore |  Major | . | Sakthi | Sakthi |
| [HBASE-22777](https://issues.apache.org/jira/browse/HBASE-22777) | Add a multi-region merge (for fixing overlaps, etc.) |  Major | hbck2, proc-v2 | Michael Stack | Michael Stack |
| [HBASE-22845](https://issues.apache.org/jira/browse/HBASE-22845) | Revert MetaTableAccessor#makePutFromTableState access to public |  Blocker | . | Sakthi | Sakthi |
| [HBASE-22771](https://issues.apache.org/jira/browse/HBASE-22771) | [HBCK2] fixMeta method and server-side support |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-22842](https://issues.apache.org/jira/browse/HBASE-22842) | Tmp directory should not be deleted when master restart used for user scan snapshot feature |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22891](https://issues.apache.org/jira/browse/HBASE-22891) | Use HBaseQA in HBase-PreCommit-GitHub-PR job |  Major | build, scripts | Duo Zhang | Duo Zhang |
| [HBASE-22858](https://issues.apache.org/jira/browse/HBASE-22858) | Add HBCK Report to master's header.jsp |  Minor | master | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22945](https://issues.apache.org/jira/browse/HBASE-22945) | Show quota infos in master UI |  Major | master, UI | Yi Mei | Yi Mei |
| [HBASE-22946](https://issues.apache.org/jira/browse/HBASE-22946) | Fix TableNotFound when grant/revoke if AccessController is not loaded |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22878](https://issues.apache.org/jira/browse/HBASE-22878) | Show table throttle quotas in table jsp |  Major | . | Yi Mei | Yi Mei |
| [HBASE-22859](https://issues.apache.org/jira/browse/HBASE-22859) | [HBCK2] Fix the orphan regions on filesystem |  Major | documentation, hbck2 | Guanghao Zhang | Michael Stack |
| [HBASE-23014](https://issues.apache.org/jira/browse/HBASE-23014) | Should not show split parent regions in hbck report UI |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22993](https://issues.apache.org/jira/browse/HBASE-22993) | HBCK report UI showed -1 if hbck chore not running |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-22796](https://issues.apache.org/jira/browse/HBASE-22796) | [HBCK2] Add fix of overlaps to fixMeta hbck Service |  Major | . | Michael Stack | Sakthi |
| [HBASE-22927](https://issues.apache.org/jira/browse/HBASE-22927) | Upgrade mockito version for Java 11 compatibility |  Major | . | Sakthi | Rabi Kumar K C |
| [HBASE-22982](https://issues.apache.org/jira/browse/HBASE-22982) | Send SIGSTOP to hang or SIGCONT to resume rs and add graceful rolling restart |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-23163](https://issues.apache.org/jira/browse/HBASE-23163) | Refactor HStore.getStorefilesSize related methods |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-22460](https://issues.apache.org/jira/browse/HBASE-22460) | Reopen a region if store reader references may have leaked |  Minor | . | Andrew Kyle Purtell | Viraj Jasani |
| [HBASE-23136](https://issues.apache.org/jira/browse/HBASE-23136) | PartionedMobFileCompactor bulkloaded files shouldn't get replicated (addressing buklload replication related issue raised in HBASE-22380) |  Critical | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22480](https://issues.apache.org/jira/browse/HBASE-22480) | Get block from BlockCache once and return this block to BlockCache twice make ref count error. |  Major | . | Lijin Bin | Lijin Bin |
| [HBASE-23257](https://issues.apache.org/jira/browse/HBASE-23257) | Track ClusterID in stand by masters |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23275](https://issues.apache.org/jira/browse/HBASE-23275) | Track active master server name in ActiveMasterManager |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23322](https://issues.apache.org/jira/browse/HBASE-23322) | [hbck2] Simplification on HBCKSCP scheduling |  Minor | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23307](https://issues.apache.org/jira/browse/HBASE-23307) | Add running of ReplicationBarrierCleaner to hbck2 fixMeta invocation |  Major | hbck2 | Michael Stack | Michael Stack |
| [HBASE-23281](https://issues.apache.org/jira/browse/HBASE-23281) | Track meta region changes on masters |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23085](https://issues.apache.org/jira/browse/HBASE-23085) | Network and Data related Actions |  Minor | integration tests | Szabolcs Bukros | Szabolcs Bukros |
| [HBASE-20461](https://issues.apache.org/jira/browse/HBASE-20461) | Implement fsync for AsyncFSWAL |  Major | wal | Michael Stack | Duo Zhang |
| [HBASE-23320](https://issues.apache.org/jira/browse/HBASE-23320) | Upgrade surefire plugin to 3.0.0-M4 |  Major | dependencies, test | Peter Somogyi | Rabi Kumar K C |
| [HBASE-23588](https://issues.apache.org/jira/browse/HBASE-23588) | Cache index blocks and bloom blocks on write if CacheCompactedBlocksOnWrite is enabled |  Major | . | ramkrishna.s.vasudevan | Viraj Jasani |
| [HBASE-23681](https://issues.apache.org/jira/browse/HBASE-23681) | Add UT for procedure store region flusher |  Major | proc-v2, RegionProcedureStore | Duo Zhang | Duo Zhang |
| [HBASE-23305](https://issues.apache.org/jira/browse/HBASE-23305) | Master based registry implementation |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-18326](https://issues.apache.org/jira/browse/HBASE-18326) | Fix and reenable TestMasterProcedureWalLease |  Blocker | test | Michael Stack | Szabolcs Bukros |
| [HBASE-23680](https://issues.apache.org/jira/browse/HBASE-23680) | RegionProcedureStore missing cleaning of hfile archive |  Major | proc-v2, RegionProcedureStore | Michael Stack | Duo Zhang |
| [HBASE-23722](https://issues.apache.org/jira/browse/HBASE-23722) | TestCustomSaslAuthenticationProvider failing in nightlies |  Major | . | Josh Elser | Josh Elser |
| [HBASE-23726](https://issues.apache.org/jira/browse/HBASE-23726) | Forward-port HBASE-21345 to branch-2.2, 2.3 & master as well. |  Major | . | Sakthi | Sakthi |
| [HBASE-23727](https://issues.apache.org/jira/browse/HBASE-23727) | Port HBASE-20981 in 2.2 & 2.3 |  Major | . | Sakthi | Sakthi |
| [HBASE-23728](https://issues.apache.org/jira/browse/HBASE-23728) | Include HBASE-21018 in 2.2 & 2.3 |  Major | . | Sakthi | Sakthi |
| [HBASE-23330](https://issues.apache.org/jira/browse/HBASE-23330) |   Expose cluster ID for clients using it for delegation token based auth |  Major | Client, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23707](https://issues.apache.org/jira/browse/HBASE-23707) | Add IntelliJ check style plugin configuration |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23647](https://issues.apache.org/jira/browse/HBASE-23647) | Make MasterRegistry the default registry impl |  Major | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23753](https://issues.apache.org/jira/browse/HBASE-23753) | Update of errorprone generated failures |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23705](https://issues.apache.org/jira/browse/HBASE-23705) | Add CellComparator to HFileContext |  Major | io | Michael Stack | Michael Stack |
| [HBASE-23350](https://issues.apache.org/jira/browse/HBASE-23350) | Make compaction files cacheonWrite configurable based on threshold |  Major | Compaction | ramkrishna.s.vasudevan | Abhinaba Sarkar |
| [HBASE-23816](https://issues.apache.org/jira/browse/HBASE-23816) | [Flakey Test] TestExportSnapshotNoCluster.testSnapshotV2WithRefsExportFileSystemState(TestExportSnapshotNoCluster.java:91) Wrong FS! |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23304](https://issues.apache.org/jira/browse/HBASE-23304) | Implement RPCs needed for master based registry |  Major | master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23331](https://issues.apache.org/jira/browse/HBASE-23331) | Document HBASE-18095 |  Major | documentation | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23877](https://issues.apache.org/jira/browse/HBASE-23877) | [Flakey Test] TestStochasticLoadBalancerRegionReplicaHighReplication "Two or more region replicas are hosted on the same host after balance" |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23755](https://issues.apache.org/jira/browse/HBASE-23755) | [OpenTracing] Declare HTrace is unusable in the user doc |  Major | . | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23740](https://issues.apache.org/jira/browse/HBASE-23740) | Invalid StoreFile WARN log message printed for recovered.hfiles directory |  Minor | MTTR | Pankaj Kumar | Pankaj Kumar |
| [HBASE-23926](https://issues.apache.org/jira/browse/HBASE-23926) | [Flakey Tests] Down the flakies re-run ferocity; it makes for too many fails. |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23767](https://issues.apache.org/jira/browse/HBASE-23767) | Add JDK11 compilation and unit test support to Github precommit |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23876](https://issues.apache.org/jira/browse/HBASE-23876) | Add JDK11 compilation and unit test support to nightly job |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23788](https://issues.apache.org/jira/browse/HBASE-23788) | ROW\_INDEX\_V1 encoder should consider the secondary index size with the encoded data size tracking |  Major | . | Anoop Sam John | Abhinaba Sarkar |
| [HBASE-23912](https://issues.apache.org/jira/browse/HBASE-23912) | Resolve the TODO of FSTableDescriptor's construct method |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23739](https://issues.apache.org/jira/browse/HBASE-23739) | BoundedRecoveredHFilesOutputSink should read the table descriptor directly |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23946](https://issues.apache.org/jira/browse/HBASE-23946) | [JDK11] Yetus should vote -0 for known JDK11 issues |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23979](https://issues.apache.org/jira/browse/HBASE-23979) | Disable TestSlowLogRecorder until parent addressed |  Major | test | Michael Stack | Michael Stack |
| [HBASE-23991](https://issues.apache.org/jira/browse/HBASE-23991) | [Flakey Tests] Disable TestSecureExport.testVisibilityLabels |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23891](https://issues.apache.org/jira/browse/HBASE-23891) | Add an option to Actions to filter out meta RS |  Minor | integration tests | Tamas Adami | Szabolcs Bukros |
| [HBASE-23993](https://issues.apache.org/jira/browse/HBASE-23993) | Use loopback for zk standalone server in minizkcluster |  Major | Zookeeper | Michael Stack | Michael Stack |
| [HBASE-24009](https://issues.apache.org/jira/browse/HBASE-24009) | Backport the personality changes in HBASE-23989 to all active branches |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-24033](https://issues.apache.org/jira/browse/HBASE-24033) | Add ut for loading the corrupt recovered hfiles |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23936](https://issues.apache.org/jira/browse/HBASE-23936) | Thrift support for get and clear slow\_log APIs |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24037](https://issues.apache.org/jira/browse/HBASE-24037) | Add ut for root dir and wal root dir are different |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-24045](https://issues.apache.org/jira/browse/HBASE-24045) | Support setting \`-Dhadoop.profile\` in adhoc\_run\_tests.sh |  Minor | tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24050](https://issues.apache.org/jira/browse/HBASE-24050) | Deprecated PBType on all 2.x branches |  Major | Protobufs | Duo Zhang | Duo Zhang |
| [HBASE-24007](https://issues.apache.org/jira/browse/HBASE-24007) | Get \`-PrunLargeTests\` passing on JDK11 |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23992](https://issues.apache.org/jira/browse/HBASE-23992) | Fix TestAdminShell and TestQuotasShell mistakenly broken by parent commit |  Trivial | test | Michael Stack | Michael Stack |
| [HBASE-22022](https://issues.apache.org/jira/browse/HBASE-22022) | nightly fails rat check down in the dev-support/hbase\_nightly\_source-artifact.sh check |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23937](https://issues.apache.org/jira/browse/HBASE-23937) | Retrieve online large RPC logs |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24071](https://issues.apache.org/jira/browse/HBASE-24071) | [JDK11] Remove \`unit\` filter from nightly and precommit jobs |  Major | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24109](https://issues.apache.org/jira/browse/HBASE-24109) | Change fork count from 0.5C to 0.25C |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24113](https://issues.apache.org/jira/browse/HBASE-24113) | Upgrade the maven we use from 3.5.4 to 3.6.3 in nightlies |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24134](https://issues.apache.org/jira/browse/HBASE-24134) | Down forked JVM heap size from 2800m to 2200m for jdk8 and jdk11 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23697](https://issues.apache.org/jira/browse/HBASE-23697) | Document new RegionProcedureStore operation and migration |  Major | documentation | Michael Stack | Michael Stack |
| [HBASE-24175](https://issues.apache.org/jira/browse/HBASE-24175) | [Flakey Tests] TestSecureExportSnapshot FileNotFoundException |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23829](https://issues.apache.org/jira/browse/HBASE-23829) | Get \`-PrunSmallTests\` passing on JDK11 |  Major | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24218](https://issues.apache.org/jira/browse/HBASE-24218) | Add hadoop 3.2.x in hadoop check |  Major | scripts | Duo Zhang | Duo Zhang |
| [HBASE-24143](https://issues.apache.org/jira/browse/HBASE-24143) | [JDK11] Switch default garbage collector from CMS |  Major | scripts | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24303](https://issues.apache.org/jira/browse/HBASE-24303) | Undo core of parent TestSecureRESTServer change; use fix over in HBASE-24280 instead |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24265](https://issues.apache.org/jira/browse/HBASE-24265) | Remove hedged rpc call support, implement the logic in MaterRegistry directly |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-24310](https://issues.apache.org/jira/browse/HBASE-24310) | Use Slf4jRequestLog for hbase-http |  Major | logging | Duo Zhang | Duo Zhang |
| [HBASE-24331](https://issues.apache.org/jira/browse/HBASE-24331) | [Flakey Test] TestJMXListener rmi port clash |  Major | flakies, test | Michael Stack | Michael Stack |
| [HBASE-24354](https://issues.apache.org/jira/browse/HBASE-24354) | Make it so can make an hbase1 schema and hbase2 schema equate |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24333](https://issues.apache.org/jira/browse/HBASE-24333) | Backport HBASE-24304 "Separate a hbase-asyncfs module" to branch-2.x |  Major | build, pom | Duo Zhang | Duo Zhang |
| [HBASE-23938](https://issues.apache.org/jira/browse/HBASE-23938) | Replicate slow/large RPC calls to HDFS |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23771](https://issues.apache.org/jira/browse/HBASE-23771) | [Flakey Tests] Test TestSplitTransactionOnCluster Again |  Major | . | Michael Stack | Michael Stack |
| [HBASE-24405](https://issues.apache.org/jira/browse/HBASE-24405) | Document hbase:slowlog in detail |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24343](https://issues.apache.org/jira/browse/HBASE-24343) | Document how to configure the http request log |  Major | documentation | Duo Zhang | Nick Dimiduk |
| [HBASE-23941](https://issues.apache.org/jira/browse/HBASE-23941) | get\_slowlog\_responses filters with AND/OR operator support |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24347](https://issues.apache.org/jira/browse/HBASE-24347) | Hadoop2&Hadoop3 profiles are both active when pre-commit PR builds run |  Major | build | Michael Stack | Josh Elser |
| [HBASE-24309](https://issues.apache.org/jira/browse/HBASE-24309) | Avoid introducing log4j and slf4j-log4j dependencies for modules other than hbase-assembly |  Major | logging, pom | Duo Zhang | Duo Zhang |
| [HBASE-24505](https://issues.apache.org/jira/browse/HBASE-24505) | Reimplement Hbck.setRegionStateInMeta |  Blocker | hbck2 | Duo Zhang | Duo Zhang |
| [HBASE-24577](https://issues.apache.org/jira/browse/HBASE-24577) | Doc WALSplitter classes |  Trivial | wal | Michael Stack | Michael Stack |
| [HBASE-24574](https://issues.apache.org/jira/browse/HBASE-24574) | Procedure V2 - Distributed WAL Splitting =\> LOGGING |  Major | wal | Michael Stack | Michael Stack |
| [HBASE-24630](https://issues.apache.org/jira/browse/HBASE-24630) | Purge dev javadoc from client bin tarball |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-22504](https://issues.apache.org/jira/browse/HBASE-22504) | Optimize the MultiByteBuff#get(ByteBuffer, offset, len) |  Major | BucketCache | Zheng Hu | Zheng Hu |
| [HBASE-24144](https://issues.apache.org/jira/browse/HBASE-24144) | Update docs from master |  Major | documentation | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23851](https://issues.apache.org/jira/browse/HBASE-23851) | Log networks and bind addresses when multicast publisher/listener enabled |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-24126](https://issues.apache.org/jira/browse/HBASE-24126) | Up the container nproc uplimit from 10000 to 12500 |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24150](https://issues.apache.org/jira/browse/HBASE-24150) | Allow module tests run in parallel |  Major | build | Michael Stack | Michael Stack |
| [HBASE-24052](https://issues.apache.org/jira/browse/HBASE-24052) | Add debug+fix to TestMasterShutdown |  Trivial | . | Michael Stack | Michael Stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-22833](https://issues.apache.org/jira/browse/HBASE-22833) | MultiRowRangeFilter should provide a method for creating a filter which is functionally equivalent to multiple prefix filters |  Minor | Client | Itsuki Toyota | Itsuki Toyota |
| [HBASE-21745](https://issues.apache.org/jira/browse/HBASE-21745) | Make HBCK2 be able to fix issues other than region assignment |  Critical | hbase-operator-tools, hbck2 | Duo Zhang | Michael Stack |
| [HBASE-24217](https://issues.apache.org/jira/browse/HBASE-24217) | Add hadoop 3.2.x support |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-21791](https://issues.apache.org/jira/browse/HBASE-21791) | Upgrade thrift dependency to 0.12.0 |  Blocker | Thrift | Duo Zhang | Duo Zhang |
| [HBASE-21812](https://issues.apache.org/jira/browse/HBASE-21812) | Address ruby static analysis for bin module [2nd pass] |  Minor | scripts | Sakthi | Sakthi |
| [HBASE-21853](https://issues.apache.org/jira/browse/HBASE-21853) | update copyright notices to 2019 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-21859](https://issues.apache.org/jira/browse/HBASE-21859) | Add clearRegionLocationCache method for AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21884](https://issues.apache.org/jira/browse/HBASE-21884) | Fix box/unbox findbugs warning in secure bulk load |  Minor | . | Sean Busbey | Sean Busbey |
| [HBASE-21888](https://issues.apache.org/jira/browse/HBASE-21888) | Add a isClosed method to AsyncConnection |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-21057](https://issues.apache.org/jira/browse/HBASE-21057) | upgrade to latest spotbugs |  Minor | community, test | Sean Busbey | Kevin Su |
| [HBASE-21969](https://issues.apache.org/jira/browse/HBASE-21969) | Improve the update of destination rsgroup of RSGroupInfoManagerImpl#moveTables() |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-22001](https://issues.apache.org/jira/browse/HBASE-22001) | Polish the Admin interface |  Major | Admin, Client | Duo Zhang | Duo Zhang |
| [HBASE-22044](https://issues.apache.org/jira/browse/HBASE-22044) | ByteBufferUtils should not be IA.Public API |  Major | compatibility, util | Sean Busbey | Sean Busbey |
| [HBASE-22042](https://issues.apache.org/jira/browse/HBASE-22042) | Missing @Override annotation for RawAsyncTableImpl.scan |  Major | asyncclient, Client | Duo Zhang | Rishabh Jain |
| [HBASE-22063](https://issues.apache.org/jira/browse/HBASE-22063) | Deprecated Admin.deleteSnapshot(byte[]) |  Major | Admin | Duo Zhang | Junhong Xu |
| [HBASE-22065](https://issues.apache.org/jira/browse/HBASE-22065) | Add listTableDescriptors(List\<TableName\>) method in AsyncAdmin |  Major | Admin | Duo Zhang | niuyulin |
| [HBASE-22052](https://issues.apache.org/jira/browse/HBASE-22052) | pom cleaning; filter out jersey-core in hadoop2 to match hadoop3 and remove redunant version specifications |  Major | . | Michael Stack | Michael Stack |
| [HBASE-22099](https://issues.apache.org/jira/browse/HBASE-22099) | Backport HBASE-21895 "Error prone upgrade" to branch-2 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22131](https://issues.apache.org/jira/browse/HBASE-22131) | Delete the patches in hbase-protocol-shaded module |  Major | build, Protobufs | Duo Zhang | Kevin Su |
| [HBASE-22007](https://issues.apache.org/jira/browse/HBASE-22007) | Add restoreSnapshot and cloneSnapshot with acl methods in AsyncAdmin |  Major | Admin, asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-22108](https://issues.apache.org/jira/browse/HBASE-22108) | Avoid passing null in Admin methods |  Major | Admin | Duo Zhang | Duo Zhang |
| [HBASE-22189](https://issues.apache.org/jira/browse/HBASE-22189) | Remove usage of StoreFile.getModificationTimeStamp |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22203](https://issues.apache.org/jira/browse/HBASE-22203) | Reformat DemoClient.java |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22187](https://issues.apache.org/jira/browse/HBASE-22187) | Remove usage of deprecated ClusterConnection.clearRegionCache |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-22240](https://issues.apache.org/jira/browse/HBASE-22240) | [backport] HBASE-19762 Fix Checkstyle errors in hbase-http |  Major | . | Reid Chan | Reid Chan |
| [HBASE-22020](https://issues.apache.org/jira/browse/HBASE-22020) | upgrade to yetus 0.9.0 |  Major | build, community | Michael Stack | Sean Busbey |
| [HBASE-22304](https://issues.apache.org/jira/browse/HBASE-22304) | Fix remaining Checkstyle issues in hbase-endpoint |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22307](https://issues.apache.org/jira/browse/HBASE-22307) | Deprecated Preemptive Fail Fast |  Major | Client | Duo Zhang | Duo Zhang |
| [HBASE-22231](https://issues.apache.org/jira/browse/HBASE-22231) | Remove unused and \* imports |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22083](https://issues.apache.org/jira/browse/HBASE-22083) | move eclipse specific configs into a profile |  Minor | build | Sean Busbey | Sean Busbey |
| [HBASE-22321](https://issues.apache.org/jira/browse/HBASE-22321) | Add 1.5 release line to the Hadoop supported versions table |  Minor | documentation | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22174](https://issues.apache.org/jira/browse/HBASE-22174) | Remove error prone from our precommit javac check |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22359](https://issues.apache.org/jira/browse/HBASE-22359) | Backport of HBASE-21371 misses activation-api license information |  Minor | build, community | Sean Busbey | Sean Busbey |
| [HBASE-21714](https://issues.apache.org/jira/browse/HBASE-21714) | Deprecated isTableAvailableWithSplit method in thrift module |  Major | Thrift | Duo Zhang | niuyulin |
| [HBASE-22375](https://issues.apache.org/jira/browse/HBASE-22375) | Promote AccessChecker to LimitedPrivate(Coprocessor) |  Minor | Coprocessors, security | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-22406](https://issues.apache.org/jira/browse/HBASE-22406) | skip generating rdoc when building gems in our docker image for running yetus |  Critical | build, test | Sean Busbey | Sean Busbey |
| [HBASE-22449](https://issues.apache.org/jira/browse/HBASE-22449) | https everywhere in Maven metadata |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-21536](https://issues.apache.org/jira/browse/HBASE-21536) | Fix completebulkload usage instructions |  Trivial | documentation, mapreduce | Artem Ervits | Artem Ervits |
| [HBASE-22373](https://issues.apache.org/jira/browse/HBASE-22373) | maven-eclipse-plugin does not define version in every module |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22560](https://issues.apache.org/jira/browse/HBASE-22560) | Upgrade to Jetty 9.3.latest and Jackson 2.9.latest |  Major | dependencies | Josh Elser | Josh Elser |
| [HBASE-22566](https://issues.apache.org/jira/browse/HBASE-22566) | Call out default compaction throttling for 2.x in Book |  Major | documentation | Josh Elser | Josh Elser |
| [HBASE-22556](https://issues.apache.org/jira/browse/HBASE-22556) | [DOCS] Backport HBASE-15557 to branch-1 and branch-2 |  Major | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-22597](https://issues.apache.org/jira/browse/HBASE-22597) | Upgrading commons-lang to 3.9 |  Major | dependencies | Viraj Jasani | Viraj Jasani |
| [HBASE-22572](https://issues.apache.org/jira/browse/HBASE-22572) | Javadoc Warnings: @link reference not found |  Trivial | documentation | Murtaza Hassan | Murtaza Hassan |
| [HBASE-22651](https://issues.apache.org/jira/browse/HBASE-22651) | ErrorProne issue in TestByteBufferArray |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-19230](https://issues.apache.org/jira/browse/HBASE-19230) | Write up fixVersion policy from dev discussion in refguide |  Major | documentation | Michael Stack | Murtaza Hassan |
| [HBASE-21606](https://issues.apache.org/jira/browse/HBASE-21606) | Document use of the meta table load metrics added in HBASE-19722 |  Critical | documentation, meta, metrics, Operability | Sean Busbey | Mate Szalay-Beko |
| [HBASE-22594](https://issues.apache.org/jira/browse/HBASE-22594) | Clean up for backup examples |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-22382](https://issues.apache.org/jira/browse/HBASE-22382) | Refactor tests in TestFromClientSide |  Major | test | Andor Molnar | Andor Molnar |
| [HBASE-21400](https://issues.apache.org/jira/browse/HBASE-21400) | correct spelling error of 'initilize' in comment |  Trivial | documentation | wuguihu | wuguihu |
| [HBASE-22911](https://issues.apache.org/jira/browse/HBASE-22911) | fewer concurrent github PR builds |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-22913](https://issues.apache.org/jira/browse/HBASE-22913) | Use Hadoop label for nightly builds |  Major | build | Duo Zhang | Gavin McDonald |
| [HBASE-22910](https://issues.apache.org/jira/browse/HBASE-22910) | Enable TestMultiVersionConcurrencyControl |  Major | test | Sakthi | Sakthi |
| [HBASE-22895](https://issues.apache.org/jira/browse/HBASE-22895) | Fix the flakey TestSpaceQuotas |  Major | Quotas, test | Sakthi | Sakthi |
| [HBASE-22642](https://issues.apache.org/jira/browse/HBASE-22642) | Make move operations of RSGroup idempotent |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-23024](https://issues.apache.org/jira/browse/HBASE-23024) | Replace Exception.initCause() with Constructor args |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-21056](https://issues.apache.org/jira/browse/HBASE-21056) | Findbugs false positive: BucketCache.persistToFile may fail to clean up java.io.OutputStream |  Minor | BucketCache | Sean Busbey | Sean Busbey |
| [HBASE-23046](https://issues.apache.org/jira/browse/HBASE-23046) | Remove compatibility case from truncate command |  Minor | shell | Peter Somogyi | Peter Somogyi |
| [HBASE-23047](https://issues.apache.org/jira/browse/HBASE-23047) | ChecksumUtil.validateChecksum logs an INFO message inside a "if(LOG.isTraceEnabled())" block. |  Minor | . | Wellington Chevreuil | Wellington Chevreuil |
| [HBASE-23032](https://issues.apache.org/jira/browse/HBASE-23032) | Upgrade to Curator 4.2.0 |  Major | . | Tamas Penzes | Balazs Meszaros |
| [HBASE-23023](https://issues.apache.org/jira/browse/HBASE-23023) | upgrade shellcheck used to test in nightly and precommit |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-23053](https://issues.apache.org/jira/browse/HBASE-23053) | Disable concurrent nightly builds |  Minor | build | Peter Somogyi | Peter Somogyi |
| [HBASE-23129](https://issues.apache.org/jira/browse/HBASE-23129) | Move core to use hbase-thirdparty-3.1.1 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23227](https://issues.apache.org/jira/browse/HBASE-23227) | Upgrade jackson-databind to 2.9.10.1 to avoid recent CVEs |  Blocker | dependencies, REST, security | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-23250](https://issues.apache.org/jira/browse/HBASE-23250) | Log message about CleanerChore delegate initialization should be at INFO |  Minor | master, Operability | Sean Busbey | Rabi Kumar K C |
| [HBASE-23236](https://issues.apache.org/jira/browse/HBASE-23236) | Upgrade to yetus 0.11.1 |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-22888](https://issues.apache.org/jira/browse/HBASE-22888) | Share some stuffs with the initial reader when new stream reader created |  Major | HFile, regionserver | chenxu | chenxu |
| [HBASE-23230](https://issues.apache.org/jira/browse/HBASE-23230) | Enforce member visibility in HRegionServer |  Major | regionserver | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23234](https://issues.apache.org/jira/browse/HBASE-23234) | Provide .editorconfig based on checkstyle configuration |  Major | build, tooling | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23298](https://issues.apache.org/jira/browse/HBASE-23298) | Refactor LogRecoveredEditsOutputSink and BoundedLogWriterCreationOutputSink |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-23556](https://issues.apache.org/jira/browse/HBASE-23556) | Minor ChoreService Cleanup |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-23575](https://issues.apache.org/jira/browse/HBASE-23575) | Remove dead code from AsyncRegistry interface |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23374](https://issues.apache.org/jira/browse/HBASE-23374) | ExclusiveMemHFileBlock’s allocator should not be hardcoded as ByteBuffAllocator.HEAP |  Minor | . | chenxu | chenxu |
| [HBASE-23604](https://issues.apache.org/jira/browse/HBASE-23604) | Clarify AsyncRegistry usage in the code |  Minor | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-23642](https://issues.apache.org/jira/browse/HBASE-23642) | Reintroduce ReplicationUtils.contains as deprecated |  Major | Replication | Peter Somogyi | Peter Somogyi |
| [HBASE-23628](https://issues.apache.org/jira/browse/HBASE-23628) | Replace Apache Commons Digest Base64 with JDK8 Base64 |  Minor | dependencies | David Mollitor | David Mollitor |
| [HBASE-23664](https://issues.apache.org/jira/browse/HBASE-23664) | Upgrade JUnit to 4.13 |  Minor | integration tests, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23687](https://issues.apache.org/jira/browse/HBASE-23687) | DEBUG logging cleanup |  Trivial | . | Michael Stack | Michael Stack |
| [HBASE-23652](https://issues.apache.org/jira/browse/HBASE-23652) | Move the unsupported procedure type check before migrating to RegionProcedureStore |  Blocker | master | Nick Dimiduk | Duo Zhang |
| [HBASE-23700](https://issues.apache.org/jira/browse/HBASE-23700) | Upgrade checkstyle and plugin versions |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23335](https://issues.apache.org/jira/browse/HBASE-23335) | Improve cost functions array copy in StochasticLoadBalancer |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23625](https://issues.apache.org/jira/browse/HBASE-23625) | Reduce number of Checkstyle violations in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23661](https://issues.apache.org/jira/browse/HBASE-23661) | Reduce number of Checkstyle violations in hbase-rest |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-23751](https://issues.apache.org/jira/browse/HBASE-23751) | Move core to hbase-thirdparty 3.2.0 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23774](https://issues.apache.org/jira/browse/HBASE-23774) | Announce user-zh list |  Trivial | website | Josh Elser | Josh Elser |
| [HBASE-23865](https://issues.apache.org/jira/browse/HBASE-23865) | Up flakey history from 5 to 10 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-23872](https://issues.apache.org/jira/browse/HBASE-23872) | [Flakey Test] TestGenerateDelegationToken; Master not initialized after 200000ms |  Major | flakies | Michael Stack | Michael Stack |
| [HBASE-23854](https://issues.apache.org/jira/browse/HBASE-23854) | Documentation update of external\_apis.adoc#example-scala-code |  Trivial | documentation | Michael Heil | Michael Heil |
| [HBASE-23874](https://issues.apache.org/jira/browse/HBASE-23874) | Move Jira-attached file precommit definition from script in Jenkins config to dev-support |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-18418](https://issues.apache.org/jira/browse/HBASE-18418) | Remove apache\_hbase\_topology from dev-support |  Minor | . | Dima Spivak | Dima Spivak |
| [HBASE-23945](https://issues.apache.org/jira/browse/HBASE-23945) | Dockerfiles showing hadolint check failures |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23077](https://issues.apache.org/jira/browse/HBASE-23077) | move entirely to spotbugs |  Major | build, test | Sean Busbey | Duo Zhang |
| [HBASE-23978](https://issues.apache.org/jira/browse/HBASE-23978) | Dockerfiles reusing stale apt sources info |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23986](https://issues.apache.org/jira/browse/HBASE-23986) | Bump hadoop-two.version to 2.10.0 on master and branch-2 |  Major | build, dependencies, hadoop2 | Duo Zhang | Duo Zhang |
| [HBASE-24004](https://issues.apache.org/jira/browse/HBASE-24004) | Include hadoop version in Nightly report name |  Trivial | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23971](https://issues.apache.org/jira/browse/HBASE-23971) | protoc warns: "no protobuf syntax specified" |  Minor | Protobufs | Nick Dimiduk | wenfeiyi666 |
| [HBASE-23861](https://issues.apache.org/jira/browse/HBASE-23861) | Reconcile Hadoop version |  Major | dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24030](https://issues.apache.org/jira/browse/HBASE-24030) | Add necessary validations to HRegion.checkAndMutate() and HRegion.checkAndRowMutate() |  Major | . | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-23980](https://issues.apache.org/jira/browse/HBASE-23980) | Use enforcer plugin to print JVM info in maven output |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24002](https://issues.apache.org/jira/browse/HBASE-24002) | shadedjars check does not propagate --hadoop-profile |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24000](https://issues.apache.org/jira/browse/HBASE-24000) | Simplify CommonFSUtils after upgrading to hadoop 2.10.0 |  Major | hadoop2, wal | Duo Zhang | Duo Zhang |
| [HBASE-20467](https://issues.apache.org/jira/browse/HBASE-20467) | Precommit personality should only run checkstyle once if we're going to run it at the root. |  Minor | community, test | Sean Busbey | Nihal Jain |
| [HBASE-24078](https://issues.apache.org/jira/browse/HBASE-24078) | SpotBugs check automatically skip inapplicable modules |  Minor | build, test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24092](https://issues.apache.org/jira/browse/HBASE-24092) | Fix links to build reports generated by nightly job |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24084](https://issues.apache.org/jira/browse/HBASE-24084) | Fix missing jdk8 dependencies in hbase-assembly/hadoop-two-compat |  Major | build, master | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24049](https://issues.apache.org/jira/browse/HBASE-24049) | "Packaging and Integration" check fails |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24138](https://issues.apache.org/jira/browse/HBASE-24138) | Ensure StochasticLoadBalancer can log details of decision to not run balancer |  Major | Balancer, Operability | Sean Busbey | Sean Busbey |
| [HBASE-24156](https://issues.apache.org/jira/browse/HBASE-24156) | Make ZK registry the default for branch-2 and branch-2.3 |  Major | Client | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24140](https://issues.apache.org/jira/browse/HBASE-24140) | Move CandidateGenerator out of StochasticLoadBalancer |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23779](https://issues.apache.org/jira/browse/HBASE-23779) | Up the default fork count to make builds complete faster; make count relative to CPU count |  Major | test | Michael Stack | Michael Stack |
| [HBASE-24194](https://issues.apache.org/jira/browse/HBASE-24194) | Refactor BufferedEncodedSeeker anonymous classes to named inner class |  Minor | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24072](https://issues.apache.org/jira/browse/HBASE-24072) | Nightlies reporting OutOfMemoryError: unable to create new native thread |  Major | test | Michael Stack | Michael Stack |
| [HBASE-23896](https://issues.apache.org/jira/browse/HBASE-23896) | Snapshot owner cannot delete snapshot when ACL is enabled and Kerberos is not enabled |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-24264](https://issues.apache.org/jira/browse/HBASE-24264) | Disable TestNettyIPC.testHedgedAsyncEcho |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-24249](https://issues.apache.org/jira/browse/HBASE-24249) | Move code in FSHDFSUtils to FSUtils and mark related classes as final |  Major | Filesystem Integration | Duo Zhang | Duo Zhang |
| [HBASE-24285](https://issues.apache.org/jira/browse/HBASE-24285) | Move to hbase-thirdparty-3.3.0 |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-24301](https://issues.apache.org/jira/browse/HBASE-24301) | Update Apache POM to version 23 |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-24258](https://issues.apache.org/jira/browse/HBASE-24258) | [Hadoop3.3] Update license for org.ow2.asm:\* |  Minor | dependencies | Wei-Chiu Chuang | Wei-Chiu Chuang |
| [HBASE-24271](https://issues.apache.org/jira/browse/HBASE-24271) | Set values in \`conf/hbase-site.xml\` that enable running on \`LocalFileSystem\` out of the box |  Major | . | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24408](https://issues.apache.org/jira/browse/HBASE-24408) | Introduce a general 'local region' to store data on master |  Blocker | master | Duo Zhang | Duo Zhang |
| [HBASE-24417](https://issues.apache.org/jira/browse/HBASE-24417) | update copyright notices year to 2020 |  Major | documentation | Guangxu Cheng | Guangxu Cheng |
| [HBASE-24477](https://issues.apache.org/jira/browse/HBASE-24477) | Move ConfigurationObserver and related classes to hbase-common |  Minor | conf | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24418](https://issues.apache.org/jira/browse/HBASE-24418) | Consolidate Normalizer implementations |  Major | master, Normalizer | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24500](https://issues.apache.org/jira/browse/HBASE-24500) | The behavior of RegionInfoBuilder.newBuilder(RegionInfo) is strange |  Blocker | Client, read replicas | Duo Zhang | Duo Zhang |
| [HBASE-24367](https://issues.apache.org/jira/browse/HBASE-24367) | ScheduledChore log elapsed timespan in a human-friendly format |  Minor | master, regionserver | Nick Dimiduk | Andrew Kyle Purtell |
| [HBASE-24535](https://issues.apache.org/jira/browse/HBASE-24535) | Tweak the master registry docs for branch-2 |  Major | Client, master | Bharath Vissapragada | Bharath Vissapragada |
| [HBASE-24547](https://issues.apache.org/jira/browse/HBASE-24547) | Thrift support for HBASE-23941 |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-24611](https://issues.apache.org/jira/browse/HBASE-24611) | Bring back old constructor of SnapshotDescription |  Major | . | Viraj Jasani | Viraj Jasani |
| [HBASE-23055](https://issues.apache.org/jira/browse/HBASE-23055) | Alter hbase:meta |  Major | meta | Michael Stack | Michael Stack |
| [HBASE-24631](https://issues.apache.org/jira/browse/HBASE-24631) | Loosen Dockerfile pinned package versions of the "debian-revision" |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-24646](https://issues.apache.org/jira/browse/HBASE-24646) | Set the log level for ScheduledChore to INFO in HBTU |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24635](https://issues.apache.org/jira/browse/HBASE-24635) | Split TestMetaWithReplicas |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-24295](https://issues.apache.org/jira/browse/HBASE-24295) | [Chaos Monkey] abstract logging through the class hierarchy |  Minor | integration tests | Nick Dimiduk | Nick Dimiduk |
| [HBASE-23866](https://issues.apache.org/jira/browse/HBASE-23866) | More test classifications |  Trivial | test | Michael Stack | Michael Stack |


