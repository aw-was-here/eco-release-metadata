
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

## Release 2.0.0-beta-2 - 2018-03-07

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19783](https://issues.apache.org/jira/browse/HBASE-19783) | Change replication peer cluster key/endpoint from a not-null value to null is not allowed |  Minor | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19873](https://issues.apache.org/jira/browse/HBASE-19873) | Add a CategoryBasedTimeout ClassRule for all UTs |  Major | . | Duo Zhang | Duo Zhang |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19799](https://issues.apache.org/jira/browse/HBASE-19799) | Add web UI to rsgroup |  Major | rsgroup, UI | Guangxu Cheng | Guangxu Cheng |
| [HBASE-15321](https://issues.apache.org/jira/browse/HBASE-15321) | Ability to open a HRegion from hdfs snapshot. |  Major | . | churro morales | churro morales |
| [HBASE-4224](https://issues.apache.org/jira/browse/HBASE-4224) | Need a flush by regionserver rather than by table option |  Major | . | stack | Chia-Ping Tsai |
| [HBASE-19897](https://issues.apache.org/jira/browse/HBASE-19897) | RowMutations should follow the fluent pattern |  Minor | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19528](https://issues.apache.org/jira/browse/HBASE-19528) | Major Compaction Tool |  Major | . | churro morales | churro morales |
| [HBASE-19886](https://issues.apache.org/jira/browse/HBASE-19886) | Display maintenance mode in shell, web UI |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-19844](https://issues.apache.org/jira/browse/HBASE-19844) | Shell should support flush by regionserver |  Minor | shell | Chia-Ping Tsai | Reid Chan |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19463](https://issues.apache.org/jira/browse/HBASE-19463) | Make CPEnv#getConnection return a facade that throws Unsupported if CP calls #close |  Major | Coprocessors | stack | Guanghao Zhang |
| [HBASE-19545](https://issues.apache.org/jira/browse/HBASE-19545) | Replace getBytes(StandardCharsets.UTF\_8) with Bytes.toBytes |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-8518](https://issues.apache.org/jira/browse/HBASE-8518) | Get rid of hbase.hstore.compaction.complete setting |  Minor | . | Sergey Shelukhin | Kuan-Po Tseng |
| [HBASE-19649](https://issues.apache.org/jira/browse/HBASE-19649) | Use singleton feature for ImmutableSegment |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19677](https://issues.apache.org/jira/browse/HBASE-19677) | Miscellaneous HFileCleaner Improvements |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19679](https://issues.apache.org/jira/browse/HBASE-19679) | Superusers Logging and Data Structures |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19676](https://issues.apache.org/jira/browse/HBASE-19676) | CleanerChore logging improvements |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19683](https://issues.apache.org/jira/browse/HBASE-19683) | Remove Superfluous Methods From String Class |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19675](https://issues.apache.org/jira/browse/HBASE-19675) | Miscellaneous HStore Class Improvements |  Minor | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19641](https://issues.apache.org/jira/browse/HBASE-19641) | AsyncHBaseAdmin should use exponential backoff when polling the procedure result |  Major | asyncclient, proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-18011](https://issues.apache.org/jira/browse/HBASE-18011) | Refactor RpcServer |  Major | IPC/RPC | Duo Zhang | Duo Zhang |
| [HBASE-18806](https://issues.apache.org/jira/browse/HBASE-18806) | VerifyRep by snapshot need not to restore snapshot for each mapper |  Major | Replication | Zheng Hu | Zheng Hu |
| [HBASE-19613](https://issues.apache.org/jira/browse/HBASE-19613) | Miscellaneous changes to WALSplitter |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19473](https://issues.apache.org/jira/browse/HBASE-19473) | Miscellaneous changes to ClientScanner |  Trivial | . | BELUGA BEHR | BELUGA BEHR |
| [HBASE-19751](https://issues.apache.org/jira/browse/HBASE-19751) | Use RegionInfo directly instead of an identifier and a namespace when getting WAL |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19789](https://issues.apache.org/jira/browse/HBASE-19789) | Not exclude flaky tests from nightly builds |  Major | . | Appy | Appy |
| [HBASE-19739](https://issues.apache.org/jira/browse/HBASE-19739) | Include thrift IDL files in HBase binary distribution |  Minor | Thrift | Umesh Agashe | Umesh Agashe |
| [HBASE-19736](https://issues.apache.org/jira/browse/HBASE-19736) | Remove BaseLogCleanerDelegate deprecated #isLogDeletable(FileStatus) and use #isFileDeletable(FileStatus) instead |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-19820](https://issues.apache.org/jira/browse/HBASE-19820) | Restore public constructor of MiniHBaseCluster (API compat) |  Major | . | Appy | Appy |
| [HBASE-19823](https://issues.apache.org/jira/browse/HBASE-19823) | Make RawCellBuilderFactory LimitedPrivate.UNITTEST |  Minor | . | Appy | Appy |
| [HBASE-19770](https://issues.apache.org/jira/browse/HBASE-19770) | Add '--return-values' option to Shell to print return values of commands in interactive mode |  Critical | shell | Romil Choksi | Josh Elser |
| [HBASE-19861](https://issues.apache.org/jira/browse/HBASE-19861) | Avoid using RPCs when querying table infos for master status pages |  Major | UI | Xiaolin Ha | Xiaolin Ha |
| [HBASE-19912](https://issues.apache.org/jira/browse/HBASE-19912) | The flag "writeToWAL" of Region#checkAndRowMutate is useless |  Minor | . | Chia-Ping Tsai | Mu Chun Wang |
| [HBASE-19904](https://issues.apache.org/jira/browse/HBASE-19904) | Break dependency of WAL constructor on Replication |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19917](https://issues.apache.org/jira/browse/HBASE-19917) | Improve RSGroupBasedLoadBalancer#filterServers() to be more efficient |  Minor | rsgroup | Xiang Li | Xiang Li |
| [HBASE-19915](https://issues.apache.org/jira/browse/HBASE-19915) | From split/ merge procedures daughter/ merged regions get created in OFFLINE state |  Major | . | Umesh Agashe | Umesh Agashe |
| [HBASE-19988](https://issues.apache.org/jira/browse/HBASE-19988) | HRegion#lockRowsAndBuildMiniBatch() is too chatty when interrupted while waiting for a row lock |  Minor | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-19680](https://issues.apache.org/jira/browse/HBASE-19680) | BufferedMutatorImpl#mutate should wait the result from AP in order to throw the failed mutations |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18294](https://issues.apache.org/jira/browse/HBASE-18294) | Reduce global heap pressure: flush based on heap occupancy |  Major | . | Eshcar Hillel | Eshcar Hillel |
| [HBASE-20065](https://issues.apache.org/jira/browse/HBASE-20065) | Revisit the timestamp usage in MetaTableAccessor |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20055](https://issues.apache.org/jira/browse/HBASE-20055) | Remove declaration of un-thrown exceptions and unused setRegionStateBackToOpen() from MergeTableRegionsProcedure |  Minor | amv2 | Umesh Agashe | Umesh Agashe |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19672](https://issues.apache.org/jira/browse/HBASE-19672) | Correct comments for default values of major compaction in SortedCompactionPolicy#getNextMajorCompactTime() |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-19666](https://issues.apache.org/jira/browse/HBASE-19666) | TestDefaultCompactSelection test failed |  Critical | test | Jingyun Tian | Balazs Meszaros |
| [HBASE-19654](https://issues.apache.org/jira/browse/HBASE-19654) | Remove misleading and chatty debug message in ReplicationLogCleaner |  Major | . | Peter Somogyi | Reid Chan |
| [HBASE-19392](https://issues.apache.org/jira/browse/HBASE-19392) | TestReplicaWithCluster#testReplicaGetWithPrimaryAndMetaDown failure in master |  Minor | regionserver | huaxiang sun | stack |
| [HBASE-19691](https://issues.apache.org/jira/browse/HBASE-19691) | Do not require ADMIN permission for obtaining ClusterStatus |  Critical | . | Romil Choksi | Josh Elser |
| [HBASE-19588](https://issues.apache.org/jira/browse/HBASE-19588) | Additional jar dependencies needed for mapreduce PerformanceEvaluation |  Minor | test | Albert Chu | Albert Chu |
| [HBASE-18452](https://issues.apache.org/jira/browse/HBASE-18452) | VerifyReplication by Snapshot should cache HDFS token before submit job for kerberos env. |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19688](https://issues.apache.org/jira/browse/HBASE-19688) | TimeToLiveProcedureWALCleaner should extends BaseLogCleanerDelegate |  Minor | . | Reid Chan | Reid Chan |
| [HBASE-19383](https://issues.apache.org/jira/browse/HBASE-19383) | [1.2] java.lang.AssertionError: expected:\<2\> but was:\<1\> 	at org.apache.hadoop.hbase.TestChoreService.testTriggerNowFailsWhenNotScheduled(TestChoreService.java:707) |  Major | test | stack | stack |
| [HBASE-19734](https://issues.apache.org/jira/browse/HBASE-19734) | IntegrationTestReplication broken w/ separate clusters |  Critical | integration tests | Romil Choksi | Josh Elser |
| [HBASE-19685](https://issues.apache.org/jira/browse/HBASE-19685) | Fix TestFSErrorsExposed#testFullSystemBubblesFSErrors |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19773](https://issues.apache.org/jira/browse/HBASE-19773) | Adding javadoc around getting instance of RawCellBuilder |  Minor | . | Appy | Appy |
| [HBASE-19771](https://issues.apache.org/jira/browse/HBASE-19771) | restore\_snapshot shell command gives wrong namespace if the namespace doesn't exist |  Minor | . | Ted Yu | Janos Gub |
| [HBASE-19775](https://issues.apache.org/jira/browse/HBASE-19775) | hbase shell doesn't handle the exceptions that are wrapped in java.io.UncheckedIOException |  Major | shell | Sergey Soldatov | Sergey Soldatov |
| [HBASE-19769](https://issues.apache.org/jira/browse/HBASE-19769) | IllegalAccessError on package-private Hadoop metrics2 classes in MapReduce jobs |  Critical | mapreduce, metrics | Josh Elser | Josh Elser |
| [HBASE-19768](https://issues.apache.org/jira/browse/HBASE-19768) | RegionServer startup failing when DN is dead |  Critical | . | Jean-Marc Spaggiari | Duo Zhang |
| [HBASE-19732](https://issues.apache.org/jira/browse/HBASE-19732) | Replica regions does not return back the MSLAB chunks to pool |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19797](https://issues.apache.org/jira/browse/HBASE-19797) | Operator priority leads to wrong logic in ReplicationSourceWALReader |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19792](https://issues.apache.org/jira/browse/HBASE-19792) | TestReplicationSmallTests.testDisableEnable fails |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19808](https://issues.apache.org/jira/browse/HBASE-19808) | Reenable TestMultiParallel |  Major | test | stack | stack |
| [HBASE-19784](https://issues.apache.org/jira/browse/HBASE-19784) | stop-hbase gives unfriendly message when local hbase isn't running |  Minor | scripts | Mike Drob | Mike Drob |
| [HBASE-19816](https://issues.apache.org/jira/browse/HBASE-19816) | Replication sink list is not updated on UnknownHostException |  Major | Replication | Scott Wilson | Scott Wilson |
| [HBASE-19812](https://issues.apache.org/jira/browse/HBASE-19812) | TestFlushSnapshotFromClient fails because of failing region.flush |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19806](https://issues.apache.org/jira/browse/HBASE-19806) | Lower max versions for table column family of hbase:meta |  Trivial | . | Ted Yu | Ted Yu |
| [HBASE-19821](https://issues.apache.org/jira/browse/HBASE-19821) | TestCleanerChore#testOnConfigurationChange() requires at least 4 processors to get passed |  Minor | test | Xiang Li | Xiang Li |
| [HBASE-19815](https://issues.apache.org/jira/browse/HBASE-19815) | Flakey TestAssignmentManager.testAssignWithRandExec |  Major | flakey, test | stack | stack |
| [HBASE-19822](https://issues.apache.org/jira/browse/HBASE-19822) | HFileCleaner threads stick around after shutdown stuck on queue#take |  Major | . | stack | stack |
| [HBASE-19825](https://issues.apache.org/jira/browse/HBASE-19825) | Fix hadoop3 compat test failures |  Major | pom | Umesh Agashe | Umesh Agashe |
| [HBASE-19757](https://issues.apache.org/jira/browse/HBASE-19757) | System table gets stuck after enabling region server group feature in secure cluster |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19829](https://issues.apache.org/jira/browse/HBASE-19829) | hadoop-minicluster pulls zookeeper:test-jar:tests 3.4.6 |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-19794](https://issues.apache.org/jira/browse/HBASE-19794) | TestZooKeeper hangs |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-19836](https://issues.apache.org/jira/browse/HBASE-19836) | Fix TestZooKeeper.testLogSplittingAfterMasterRecoveryDueToZKExpiry |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19774](https://issues.apache.org/jira/browse/HBASE-19774) | incorrect behavior of locateRegionInMeta |  Major | . | Romil Choksi | Sergey Soldatov |
| [HBASE-19780](https://issues.apache.org/jira/browse/HBASE-19780) | Change execution phase of checkstyle plugin back to default 'verify' |  Major | . | Appy | Appy |
| [HBASE-19838](https://issues.apache.org/jira/browse/HBASE-19838) | Can not shutdown backup master cleanly when it has already tried to become the active master |  Critical | master | Duo Zhang | stack |
| [HBASE-19853](https://issues.apache.org/jira/browse/HBASE-19853) | duplicate slf4j declaration in mapreduce pom |  Minor | dependencies | Mike Drob | Mike Drob |
| [HBASE-19818](https://issues.apache.org/jira/browse/HBASE-19818) | Scan time limit not work if the filter always filter row key |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19871](https://issues.apache.org/jira/browse/HBASE-19871) | delete.rb should require user to provide the column |  Major | shell | Romil Choksi | Chia-Ping Tsai |
| [HBASE-19892](https://issues.apache.org/jira/browse/HBASE-19892) | Checking 'patch attach' and yetus 0.7.0 and move to Yetus 0.7.0 |  Major | . | stack | stack |
| [HBASE-19906](https://issues.apache.org/jira/browse/HBASE-19906) | TestZooKeeper Timeout |  Major | . | stack | stack |
| [HBASE-19884](https://issues.apache.org/jira/browse/HBASE-19884) | BucketEntryGroup's equals, hashCode and compareTo methods are not consistent |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19901](https://issues.apache.org/jira/browse/HBASE-19901) | Up yetus proclimit on nightlies |  Major | . | stack | stack |
| [HBASE-19919](https://issues.apache.org/jira/browse/HBASE-19919) | Tidying up logging |  Major | . | stack | stack |
| [HBASE-19726](https://issues.apache.org/jira/browse/HBASE-19726) | Failed to start HMaster due to infinite retrying on meta assign |  Major | . | Duo Zhang | stack |
| [HBASE-19905](https://issues.apache.org/jira/browse/HBASE-19905) | ReplicationSyncUp tool will not exit if a peer replication is disabled |  Major | Replication | Ashish Singhi | Ashish Singhi |
| [HBASE-19658](https://issues.apache.org/jira/browse/HBASE-19658) | Fix and reenable TestCompactingToCellFlatMapMemStore#testFlatteningToJumboCellChunkMap |  Major | test | stack | Anastasia Braginsky |
| [HBASE-19703](https://issues.apache.org/jira/browse/HBASE-19703) | Functionality added as part of HBASE-12583 is not working after moving the split code to master |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-19926](https://issues.apache.org/jira/browse/HBASE-19926) | Use a separated class to implement the WALActionListener for Replication |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19907](https://issues.apache.org/jira/browse/HBASE-19907) | TestMetaWithReplicas still flakey |  Major | . | stack | stack |
| [HBASE-19939](https://issues.apache.org/jira/browse/HBASE-19939) | TestSplitTableRegionProcedure#testSplitWithoutPONR() and testRecoveryAndDoubleExecution() are failing with NPE |  Major | amv2 | Umesh Agashe | Umesh Agashe |
| [HBASE-19934](https://issues.apache.org/jira/browse/HBASE-19934) | HBaseSnapshotException when read replicas is enabled and online snapshot is taken after region splitting |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19941](https://issues.apache.org/jira/browse/HBASE-19941) | Flaky TestCreateTableProcedure times out in nightly, needs to LargeTests |  Major | test | Umesh Agashe | Umesh Agashe |
| [HBASE-19900](https://issues.apache.org/jira/browse/HBASE-19900) | Region-level exception destroy the result of batch |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19929](https://issues.apache.org/jira/browse/HBASE-19929) | Call RS.stop on a session expired RS may hang |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19937](https://issues.apache.org/jira/browse/HBASE-19937) | Ensure createRSGroupTable be called after ProcedureExecutor and LoadBalancer are initialized |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-19966](https://issues.apache.org/jira/browse/HBASE-19966) | The WriteEntry for WALKey maybe null if we failed to call WAL.append |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19964](https://issues.apache.org/jira/browse/HBASE-19964) | TestWriteHeavyIncrementObserver fails |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19972](https://issues.apache.org/jira/browse/HBASE-19972) | Should rethrow  the RetriesExhaustedWithDetailsException when failed to apply the batch in ReplicationSink |  Critical | Replication | Zheng Hu | Zheng Hu |
| [HBASE-16060](https://issues.apache.org/jira/browse/HBASE-16060) | 1.x clients cannot access table state talking to 2.0 cluster |  Blocker | . | Enis Soztutar | stack |
| [HBASE-19968](https://issues.apache.org/jira/browse/HBASE-19968) | MapReduce test fails with NoClassDefFoundError against hadoop3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19986](https://issues.apache.org/jira/browse/HBASE-19986) | If HBaseTestClassRule timesout a test, thread dump. |  Major | . | stack | stack |
| [HBASE-19977](https://issues.apache.org/jira/browse/HBASE-19977) | FileMmapEngine allocation of byte buffers should be synchronized |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19876](https://issues.apache.org/jira/browse/HBASE-19876) | The exception happening in converting pb mutation to hbase.mutation messes up the CellScanner |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19979](https://issues.apache.org/jira/browse/HBASE-19979) | ReplicationSyncUp tool may leak Zookeeper connection |  Major | Replication | Pankaj Kumar | Pankaj Kumar |
| [HBASE-19996](https://issues.apache.org/jira/browse/HBASE-19996) | Some nonce procs might not be cleaned up (follow up HBASE-19756) |  Major | . | Thiruvel Thirumoolan | Thiruvel Thirumoolan |
| [HBASE-19998](https://issues.apache.org/jira/browse/HBASE-19998) | Flakey TestVisibilityLabelsWithDefaultVisLabelService |  Major | flakey, test | stack | stack |
| [HBASE-19980](https://issues.apache.org/jira/browse/HBASE-19980) | NullPointerException when restoring a snapshot after splitting a region |  Major | snapshots | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20020](https://issues.apache.org/jira/browse/HBASE-20020) | Make sure we throw DoNotRetryIOException when ConnectionImplementation is closed |  Critical | Client | Duo Zhang | Duo Zhang |
| [HBASE-20023](https://issues.apache.org/jira/browse/HBASE-20023) | CompactionTool command line examples are incorrect |  Trivial | . | Artem Ervits | Artem Ervits |
| [HBASE-19954](https://issues.apache.org/jira/browse/HBASE-19954) | Separate TestBlockReorder into individual tests to avoid ShutdownHook suppression error against hadoop3 |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20032](https://issues.apache.org/jira/browse/HBASE-20032) | Receving multiple warnings for missing reporting.plugins.plugin.version |  Minor | . | Artem Ervits | Artem Ervits |
| [HBASE-19920](https://issues.apache.org/jira/browse/HBASE-19920) | TokenUtil.obtainToken unnecessarily creates a local directory |  Major | . | Rohini Palaniswamy | Mike Drob |
| [HBASE-19991](https://issues.apache.org/jira/browse/HBASE-19991) | lots of hbase-rest test failures against hadoop 3 |  Major | REST, test | Mike Drob | Mike Drob |
| [HBASE-20037](https://issues.apache.org/jira/browse/HBASE-20037) | Race when calling SequenceIdAccounting.resetHighest |  Blocker | wal | Duo Zhang | Duo Zhang |
| [HBASE-19953](https://issues.apache.org/jira/browse/HBASE-19953) | Avoid calling post\* hook when procedure fails |  Critical | master, proc-v2 | Ramesh Mani | Josh Elser |
| [HBASE-19166](https://issues.apache.org/jira/browse/HBASE-19166) | AsyncProtobufLogWriter persists ProtobufLogWriter as class name for backward compatibility |  Blocker | wal | Ted Yu | Ted Yu |
| [HBASE-19391](https://issues.apache.org/jira/browse/HBASE-19391) | Calling HRegion#initializeRegionInternals from a region replica can still re-create a region directory |  Major | . | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-19767](https://issues.apache.org/jira/browse/HBASE-19767) | Master web UI shows negative values for Remaining KVs |  Major | . | Jean-Marc Spaggiari | Umesh Agashe |
| [HBASE-20049](https://issues.apache.org/jira/browse/HBASE-20049) | Region replicas of SPLIT and MERGED regions are kept in in-memory states until restarting master |  Major | read replicas | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-20062](https://issues.apache.org/jira/browse/HBASE-20062) | findbugs is not running on precommit checks |  Blocker | community, test | Sean Busbey | Mike Drob |
| [HBASE-20043](https://issues.apache.org/jira/browse/HBASE-20043) | ITBLL fails against hadoop3 |  Major | integration tests | Mike Drob | stack |
| [HBASE-19974](https://issues.apache.org/jira/browse/HBASE-19974) | Fix decommissioned servers cannot be removed by remove\_servers\_rsgroup methods |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |
| [HBASE-20074](https://issues.apache.org/jira/browse/HBASE-20074) | [FindBugs] Same code on both branches in CompactingMemStore#initMemStoreCompactor |  Major | findbugs | stack | Gali Sheffi |
| [HBASE-20086](https://issues.apache.org/jira/browse/HBASE-20086) | PE randomSeekScan fails with ClassNotFoundException |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20066](https://issues.apache.org/jira/browse/HBASE-20066) | Region sequence id may go backward after split or merge |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-19863](https://issues.apache.org/jira/browse/HBASE-19863) | java.lang.IllegalStateException: isDelete failed when SingleColumnValueFilter is used |  Major | Filters | Sergey Soldatov | Sergey Soldatov |
| [HBASE-20110](https://issues.apache.org/jira/browse/HBASE-20110) | Findbugs in zk and mr caused nightly #409 branch-2 to fail |  Major | findbugs | stack | stack |
| [HBASE-19147](https://issues.apache.org/jira/browse/HBASE-19147) | All branch-2 unit tests pass |  Blocker | test | stack | stack |
| [HBASE-20070](https://issues.apache.org/jira/browse/HBASE-20070) | website generation is failing |  Blocker | website | Sean Busbey | Sean Busbey |
| [HBASE-20104](https://issues.apache.org/jira/browse/HBASE-20104) | Fix infinite loop of RIT when creating table on a rsgroup that has no online servers |  Major | rsgroup | Xiaolin Ha | Xiaolin Ha |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19832](https://issues.apache.org/jira/browse/HBASE-19832) | TestConfServlet#testWriteJson fails against hadoop3 due to spelling change |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19949](https://issues.apache.org/jira/browse/HBASE-19949) | TestRSGroupsWithACL fails with ExceptionInInitializerError |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20031](https://issues.apache.org/jira/browse/HBASE-20031) | Unable to run integration test using mvn due to missing HBaseClassTestRule |  Major | . | Ted Yu | Ted Yu |
| [HBASE-20107](https://issues.apache.org/jira/browse/HBASE-20107) | Add a test case for HBASE-14317 |  Minor | wal | Zephyr Guo | Zephyr Guo |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19430](https://issues.apache.org/jira/browse/HBASE-19430) | Remove the SettableTimestamp and SettableSequenceId |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19428](https://issues.apache.org/jira/browse/HBASE-19428) | Deprecate the compareTo(Row) |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19667](https://issues.apache.org/jira/browse/HBASE-19667) | Get rid of MasterEnvironment#supportGroupCPs |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19772](https://issues.apache.org/jira/browse/HBASE-19772) | Do not close connection to zk when there are still pending request in ReadOnlyZKClient |  Major | Zookeeper | stack | Duo Zhang |
| [HBASE-19795](https://issues.apache.org/jira/browse/HBASE-19795) | Move the tests which only need zookeeper in TestZooKeeper to hbase-zookeeper module |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19793](https://issues.apache.org/jira/browse/HBASE-19793) | Minor improvements on Master/RS startup |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19809](https://issues.apache.org/jira/browse/HBASE-19809) | Fix findbugs and error-prone warnings in hbase-procedure (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19810](https://issues.apache.org/jira/browse/HBASE-19810) | Fix findbugs and error-prone warnings in hbase-metrics (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19527](https://issues.apache.org/jira/browse/HBASE-19527) | Make ExecutorService threads daemon=true. |  Major | . | stack | stack |
| [HBASE-19827](https://issues.apache.org/jira/browse/HBASE-19827) | Addendum for Flakey TestAssignmentManager |  Major | flakey, test | stack | stack |
| [HBASE-19847](https://issues.apache.org/jira/browse/HBASE-19847) | Fix findbugs and error-prone warnings in hbase-thrift (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19845](https://issues.apache.org/jira/browse/HBASE-19845) | Fix findbugs and error-prone warnings in hbase-rsgroup (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19846](https://issues.apache.org/jira/browse/HBASE-19846) | Fix findbugs and error-prone warnings in hbase-rest (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19862](https://issues.apache.org/jira/browse/HBASE-19862) | Fix TestTokenAuthentication - fake RegionCoprocessorEnvironment is not of type HasRegionServerServices |  Major | . | Appy | Appy |
| [HBASE-19867](https://issues.apache.org/jira/browse/HBASE-19867) | Split TestStochasticLoadBalancer into several small tests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19879](https://issues.apache.org/jira/browse/HBASE-19879) | Promote TestAcidGuaranteesXXX to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19880](https://issues.apache.org/jira/browse/HBASE-19880) | Promote TestFuzzyRowFilterEndToEnd to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19881](https://issues.apache.org/jira/browse/HBASE-19881) | Promote TestRegionReplicaReplicationEndpoint to LargeTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19870](https://issues.apache.org/jira/browse/HBASE-19870) | Fix the NPE in ReadOnlyZKClient#run |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19877](https://issues.apache.org/jira/browse/HBASE-19877) | hbase-common and hbase-zookeeper don't add the log4j.properties to the resource path for testing |  Critical | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19882](https://issues.apache.org/jira/browse/HBASE-19882) | Promote TestProcedureManager to MediumTests |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19866](https://issues.apache.org/jira/browse/HBASE-19866) | TestRegionServerReportForDuty doesn't timeout |  Major | rpc | Appy | Duo Zhang |
| [HBASE-19885](https://issues.apache.org/jira/browse/HBASE-19885) | Promote TestAssignmentManager to LargeTests |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-19811](https://issues.apache.org/jira/browse/HBASE-19811) | Fix findbugs and error-prone warnings in hbase-server (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19891](https://issues.apache.org/jira/browse/HBASE-19891) | Up nightly test run timeout from 6 hours to 8 |  Major | . | stack | stack |
| [HBASE-19887](https://issues.apache.org/jira/browse/HBASE-19887) | Do not overwrite the surefire junit listener property in the pom of sub modules |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19911](https://issues.apache.org/jira/browse/HBASE-19911) | Convert some tests from small to medium because they are timing out: TestNettyRpcServer, TestClientClusterStatus, TestCheckTestClasses |  Major | . | stack | stack |
| [HBASE-19839](https://issues.apache.org/jira/browse/HBASE-19839) | Flakey TestMergeTableRegionsProcedure & TestSplitTableRegionProcedure |  Major | flakey, test | stack | Umesh Agashe |
| [HBASE-19913](https://issues.apache.org/jira/browse/HBASE-19913) | Split TestStochasticLoadBalancer2 |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19895](https://issues.apache.org/jira/browse/HBASE-19895) | Add keepDeletedCells option in ScanOptions for customizing scanInfo in pre-hooks |  Major | Coprocessors | Ankit Singhal | Ankit Singhal |
| [HBASE-19896](https://issues.apache.org/jira/browse/HBASE-19896) | Fix ScanInfo.customize() to update only the requested options |  Major | Coprocessors | Ankit Singhal | Ankit Singhal |
| [HBASE-19918](https://issues.apache.org/jira/browse/HBASE-19918) | Promote TestAsyncClusterAdminApi to LargeTests |  Major | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19928](https://issues.apache.org/jira/browse/HBASE-19928) | TestVisibilityLabelsOnNewVersionBehaviorTable fails |  Major | test | stack | stack |
| [HBASE-19909](https://issues.apache.org/jira/browse/HBASE-19909) | TestRegionLocationFinder Timeout |  Major | . | stack | stack |
| [HBASE-19908](https://issues.apache.org/jira/browse/HBASE-19908) | TestCoprocessorShortCircuitRPC Timeout.... |  Major | . | stack | stack |
| [HBASE-19868](https://issues.apache.org/jira/browse/HBASE-19868) | TestCoprocessorWhitelistMasterObserver is flakey |  Major | flakey, test | Peter Somogyi | Peter Somogyi |
| [HBASE-19914](https://issues.apache.org/jira/browse/HBASE-19914) | Refactor TestVisibilityLabelsOnNewVersionBehaviorTable |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19916](https://issues.apache.org/jira/browse/HBASE-19916) | TestCacheOnWrite Times Out |  Major | . | stack | stack |
| [HBASE-19910](https://issues.apache.org/jira/browse/HBASE-19910) | TestBucketCache TimesOut |  Major | . | stack | stack |
| [HBASE-19803](https://issues.apache.org/jira/browse/HBASE-19803) | False positive for the HBASE-Find-Flaky-Tests job |  Major | . | Duo Zhang |  |
| [HBASE-19837](https://issues.apache.org/jira/browse/HBASE-19837) | Flakey TestRegionLoad |  Major | flakey, test | stack | stack |
| [HBASE-19931](https://issues.apache.org/jira/browse/HBASE-19931) | TestMetaWithReplicas failing 100% of the time in testHBaseFsckWithMetaReplicas |  Major | . | stack | stack |
| [HBASE-19944](https://issues.apache.org/jira/browse/HBASE-19944) | Fix timeout TestVisibilityLabelsWithCustomVisLabService |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19841](https://issues.apache.org/jira/browse/HBASE-19841) | Tests against hadoop3 fail with StreamLacksCapabilityException |  Major | . | Ted Yu | Mike Drob |
| [HBASE-19927](https://issues.apache.org/jira/browse/HBASE-19927) | TestFullLogReconstruction flakey |  Major | wal | stack | Duo Zhang |
| [HBASE-19840](https://issues.apache.org/jira/browse/HBASE-19840) | Flakey TestMetaWithReplicas |  Major | flakey, test | stack | stack |
| [HBASE-19791](https://issues.apache.org/jira/browse/HBASE-19791) | TestZKAsyncRegistry hangs |  Critical | . | Duo Zhang | stack |
| [HBASE-19951](https://issues.apache.org/jira/browse/HBASE-19951) | Cleanup the explicit timeout value for test method |  Major | . | Duo Zhang | stack |
| [HBASE-19956](https://issues.apache.org/jira/browse/HBASE-19956) | Remove category as a consideration timing out tests; set all test to timeout at 10minutes regardless |  Major | . | stack | stack |
| [HBASE-19942](https://issues.apache.org/jira/browse/HBASE-19942) | Fix flaky TestSimpleRpcScheduler |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19960](https://issues.apache.org/jira/browse/HBASE-19960) | Doc test timeouts and test categories in hbase2 |  Major | . | stack | stack |
| [HBASE-19965](https://issues.apache.org/jira/browse/HBASE-19965) | Fix flaky TestAsyncRegionAdminApi |  Critical | . | Guanghao Zhang | stack |
| [HBASE-19116](https://issues.apache.org/jira/browse/HBASE-19116) | Currently the tail of hfiles with CellComparator\* classname makes it so hbase1 can't open hbase2 written hfiles; fix |  Critical | HFile, migration | stack | stack |
| [HBASE-20000](https://issues.apache.org/jira/browse/HBASE-20000) | Remove the quantum logic in FairQueue, always put high priority queue in front |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-19903](https://issues.apache.org/jira/browse/HBASE-19903) | Split TestShell so it will not time out |  Major | shell, test | Duo Zhang | Duo Zhang |
| [HBASE-20011](https://issues.apache.org/jira/browse/HBASE-20011) | Disable TestRestoreSnapshotFromClientWithRegionReplicas; it is flakey. Needs attention. |  Major | read replicas | stack | stack |
| [HBASE-19978](https://issues.apache.org/jira/browse/HBASE-19978) | The keepalive logic is incomplete in ProcedureExecutor |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20014](https://issues.apache.org/jira/browse/HBASE-20014) | TestAdmin1 Times out |  Major | . | stack | stack |
| [HBASE-20013](https://issues.apache.org/jira/browse/HBASE-20013) | TestZKPermissionWatcher is flakey |  Major | flakey | stack | stack |
| [HBASE-20015](https://issues.apache.org/jira/browse/HBASE-20015) | TestMergeTableRegionsProcedure and TestRegionMergeTransactionOnCluster flakey |  Major | flakey | stack | stack |
| [HBASE-20029](https://issues.apache.org/jira/browse/HBASE-20029) | @Ignore TestQuotaThrottle and TestReplicasClient#testCancelOfMultiGet |  Major | . | stack | stack |
| [HBASE-20021](https://issues.apache.org/jira/browse/HBASE-20021) | TestFromClientSideWithCoprocessor is flakey |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-20039](https://issues.apache.org/jira/browse/HBASE-20039) | move testhbasetestingutility mr tests to hbase-mapreduce |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20035](https://issues.apache.org/jira/browse/HBASE-20035) | .TestQuotaStatusRPCs.testQuotaStatusFromMaster failed with NPEs and RuntimeExceptions |  Major | . | stack | Josh Elser |
| [HBASE-20041](https://issues.apache.org/jira/browse/HBASE-20041) | cannot start mini mapreduce cluster for ITs |  Major | . | Mike Drob | Mike Drob |
| [HBASE-20038](https://issues.apache.org/jira/browse/HBASE-20038) | TestLockProcedure.testTimeout is flakey |  Major | proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-19554](https://issues.apache.org/jira/browse/HBASE-19554) | AbstractTestDLS.testThreeRSAbort sometimes fails in pre commit |  Major | Recovery, wal | Duo Zhang | Duo Zhang |
| [HBASE-20048](https://issues.apache.org/jira/browse/HBASE-20048) | Revert serial replication feature |  Blocker | Replication | Duo Zhang | Duo Zhang |
| [HBASE-20083](https://issues.apache.org/jira/browse/HBASE-20083) | Fix findbugs error for ReplicationSyncUp |  Major | findbugs | Duo Zhang | Duo Zhang |
| [HBASE-20069](https://issues.apache.org/jira/browse/HBASE-20069) | fix existing findbugs errors in hbase-server |  Critical | findbugs | Sean Busbey | stack |
| [HBASE-19400](https://issues.apache.org/jira/browse/HBASE-19400) | Add missing security checks in MasterRpcServices |  Major | . | Balazs Meszaros | Appy |
| [HBASE-20100](https://issues.apache.org/jira/browse/HBASE-20100) | TestEnableTableProcedure flakey |  Major | amv2, flakey | stack | stack |
| [HBASE-20113](https://issues.apache.org/jira/browse/HBASE-20113) | Move branch-2 version from 2.0.0-beta-2-SNAPSHOT to 2.0.0-beta-2 |  Major | . | stack | stack |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19296](https://issues.apache.org/jira/browse/HBASE-19296) | Fix findbugs and error-prone warnings (branch-2) |  Major | . | Andrew Purtell | Peter Somogyi |
| [HBASE-19948](https://issues.apache.org/jira/browse/HBASE-19948) | Since HBASE-19873, HBaseClassTestRule, Small/Medium/Large has different semantic |  Major | . | stack | stack |
| [HBASE-19976](https://issues.apache.org/jira/browse/HBASE-19976) | Dead lock if the worker threads in procedure executor are exhausted |  Critical | . | Duo Zhang | Duo Zhang |
| [HBASE-19550](https://issues.apache.org/jira/browse/HBASE-19550) | Wrap the cell passed via Mutation#add(Cell) to be of ExtendedCell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19620](https://issues.apache.org/jira/browse/HBASE-19620) | Add UT to confirm the race in MasterRpcServices.getProcedureResult |  Minor | proc-v2, test | Duo Zhang | Duo Zhang |
| [HBASE-19596](https://issues.apache.org/jira/browse/HBASE-19596) | RegionMetrics/ServerMetrics/ClusterMetrics should apply to all public classes |  Critical | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19922](https://issues.apache.org/jira/browse/HBASE-19922) | ProtobufUtils::PRIMITIVES is unused |  Major | Protobufs | Mike Drob | Mike Drob |
| [HBASE-19946](https://issues.apache.org/jira/browse/HBASE-19946) | TestPerColumnFamilyFlush and TestWalAndCompactingMemStoreFlush fail against h3 |  Major | test | Mike Drob | Mike Drob |
| [HBASE-19947](https://issues.apache.org/jira/browse/HBASE-19947) | MR jobs using ITU use wrong filesystem |  Critical | integration tests | stack | Mike Drob |
| [HBASE-18596](https://issues.apache.org/jira/browse/HBASE-18596) | [TEST] A hbase1 cluster should be able to replicate to a hbase2 cluster; verify |  Blocker | . | stack | Esteban Gutierrez |


