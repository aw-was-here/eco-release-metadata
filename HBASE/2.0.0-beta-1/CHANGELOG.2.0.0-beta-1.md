
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

## Release 2.0.0-beta-1 - 2018-01-16



### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19103](https://issues.apache.org/jira/browse/HBASE-19103) | Add BigDecimalComparator for filter |  Minor | Client | Qilin Cao | Qilin Cao |
| [HBASE-19189](https://issues.apache.org/jira/browse/HBASE-19189) | Ad-hoc test job for running a subset of tests lots of times |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19326](https://issues.apache.org/jira/browse/HBASE-19326) | Remove decommissioned servers from rsgroup |  Major | rsgroup | Guangxu Cheng | Guangxu Cheng |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18621](https://issues.apache.org/jira/browse/HBASE-18621) | Refactor ClusterOptions before applying to code base |  Major | . | Reid Chan | Reid Chan |
| [HBASE-13844](https://issues.apache.org/jira/browse/HBASE-13844) | Move static helper methods from KeyValue into CellUtils |  Minor | . | Lars George | Andy Yang |
| [HBASE-18814](https://issues.apache.org/jira/browse/HBASE-18814) | Make ScanMetrics enabled and add counter \<HBase Counters, ROWS\_SCANNED\> into the MapReduce Job over snapshot |  Minor | mapreduce | xinxin fan | xinxin fan |
| [HBASE-18649](https://issues.apache.org/jira/browse/HBASE-18649) | Deprecate KV Usage in MR to move to Cells in 3.0 |  Major | API, mapreduce | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18899](https://issues.apache.org/jira/browse/HBASE-18899) | Make Fileinfo more readable in HFilePrettyPrinter |  Major | HFile | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18843](https://issues.apache.org/jira/browse/HBASE-18843) | Add DistCp support to incremental backup with bulk loading |  Major | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-17065](https://issues.apache.org/jira/browse/HBASE-17065) | Perform more effective sorting for RPC Handler Tasks |  Minor | . | Ted Yu | Reid Chan |
| [HBASE-18925](https://issues.apache.org/jira/browse/HBASE-18925) | Need updated mockito for using java optional |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-13622](https://issues.apache.org/jira/browse/HBASE-13622) | document upgrade rollback |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-19027](https://issues.apache.org/jira/browse/HBASE-19027) | Honor the CellComparator of ScanInfo in scanning over a store |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19186](https://issues.apache.org/jira/browse/HBASE-19186) | Unify to use bytes to show size in master/rs ui |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19228](https://issues.apache.org/jira/browse/HBASE-19228) | nightly job should gather machine stats. |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-12350](https://issues.apache.org/jira/browse/HBASE-12350) | Backport error-prone build support to branch-1 and branch-2 |  Minor | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19187](https://issues.apache.org/jira/browse/HBASE-19187) | Remove option to create on heap bucket cache |  Minor | regionserver | Biju Nair | Anoop Sam John |
| [HBASE-18601](https://issues.apache.org/jira/browse/HBASE-18601) | Update Htrace to 4.2 |  Major | dependencies, tracing | Tamas Penzes | Balazs Meszaros |
| [HBASE-19262](https://issues.apache.org/jira/browse/HBASE-19262) | Revisit checkstyle rules |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19251](https://issues.apache.org/jira/browse/HBASE-19251) | Merge RawAsyncTable and AsyncTable |  Major | asyncclient, Client | Duo Zhang | Duo Zhang |
| [HBASE-19274](https://issues.apache.org/jira/browse/HBASE-19274) | Log IOException when unable to determine the size of committed file |  Trivial | . | Ted Yu | Guangxu Cheng |
| [HBASE-16574](https://issues.apache.org/jira/browse/HBASE-16574) | Add backup / restore feature to refguide |  Major | . | Ted Yu | Frank Welsch |
| [HBASE-19293](https://issues.apache.org/jira/browse/HBASE-19293) | Support adding a new replication peer in disabled state |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19311](https://issues.apache.org/jira/browse/HBASE-19311) | Promote TestAcidGuarantees to LargeTests and start mini cluster once to make it faster |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-16868](https://issues.apache.org/jira/browse/HBASE-16868) | Add a replicate\_all flag to avoid misuse the namespaces and table-cfs config of replication peer |  Critical | Replication | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18090](https://issues.apache.org/jira/browse/HBASE-18090) | Improve TableSnapshotInputFormat to allow more multiple mappers per region |  Major | mapreduce | Mikhail Antonov | xinxin fan |
| [HBASE-19372](https://issues.apache.org/jira/browse/HBASE-19372) | Remove the Span object in SyncFuture as it is useless now |  Major | tracing, wal | Duo Zhang | Duo Zhang |
| [HBASE-19252](https://issues.apache.org/jira/browse/HBASE-19252) | Move the transform logic of FilterList into transformCell() method to avoid extra ref to question cell |  Minor | . | Zheng Hu | Zheng Hu |
| [HBASE-19382](https://issues.apache.org/jira/browse/HBASE-19382) | Update report-flakies.py script to handle yetus builds |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19367](https://issues.apache.org/jira/browse/HBASE-19367) | Refactoring in RegionStates, and RSProcedureDispatcher |  Minor | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19336](https://issues.apache.org/jira/browse/HBASE-19336) | Improve rsgroup to allow assign all tables within a specified namespace by only writing namespace |  Major | rsgroup | xinxin fan | xinxin fan |
| [HBASE-19432](https://issues.apache.org/jira/browse/HBASE-19432) | Roll the specified writer in HFileOutputFormat2 |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-18169](https://issues.apache.org/jira/browse/HBASE-18169) | Coprocessor fix and cleanup before 2.0.0 release |  Blocker | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19180](https://issues.apache.org/jira/browse/HBASE-19180) | Remove unused imports from AlwaysPasses |  Trivial | build | Jan Hentschel | Jan Hentschel |
| [HBASE-19464](https://issues.apache.org/jira/browse/HBASE-19464) | Replace StringBuffer with StringBuilder for hbase-common |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-17425](https://issues.apache.org/jira/browse/HBASE-17425) | Fix calls to deprecated APIs in TestUpdateConfiguration |  Trivial | Client | Jan Hentschel | Jan Hentschel |
| [HBASE-19489](https://issues.apache.org/jira/browse/HBASE-19489) | Check against only the latest maintenance release in pre-commit hadoopcheck. |  Minor | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19472](https://issues.apache.org/jira/browse/HBASE-19472) | Remove ArrayUtil Class |  Major | . | David Mollitor | David Mollitor |
| [HBASE-14790](https://issues.apache.org/jira/browse/HBASE-14790) | Implement a new DFSOutputStream for logging WAL only |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19521](https://issues.apache.org/jira/browse/HBASE-19521) | HBase mob compaction need to check hfile version |  Critical | Compaction, mob | Qilin Cao | Qilin Cao |
| [HBASE-19492](https://issues.apache.org/jira/browse/HBASE-19492) | Add EXCLUDE\_NAMESPACE and EXCLUDE\_TABLECFS support to replication peer config |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-15482](https://issues.apache.org/jira/browse/HBASE-15482) | Provide an option to skip calculating block locations for SnapshotInputFormat |  Minor | mapreduce | Liyin Tang | Xiang Li |
| [HBASE-19491](https://issues.apache.org/jira/browse/HBASE-19491) | Exclude flaky tests from nightly master run |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19571](https://issues.apache.org/jira/browse/HBASE-19571) | Minor refactor of Nightly run scripts |  Minor | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19570](https://issues.apache.org/jira/browse/HBASE-19570) | Add hadoop3 tests to Nightly master/branch-2 runs |  Critical | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19590](https://issues.apache.org/jira/browse/HBASE-19590) | Remove the duplicate code in deprecated ReplicationAdmin |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19576](https://issues.apache.org/jira/browse/HBASE-19576) | Introduce builder for ReplicationPeerConfig and make it immutable |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19618](https://issues.apache.org/jira/browse/HBASE-19618) | Remove replicationQueuesClient.class/replicationQueues.class config and remove table based ReplicationQueuesClient/ReplicationQueues implementation |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19621](https://issues.apache.org/jira/browse/HBASE-19621) | Revisit the methods in ReplicationPeerConfigBuilder |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19615](https://issues.apache.org/jira/browse/HBASE-19615) | CompositeImmutableSegment ArrayList Instead of LinkedList |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-19647](https://issues.apache.org/jira/browse/HBASE-19647) | Logging cleanups; emit regionname when RegionTooBusyException inside RetriesExhausted... make netty connect/disconnect TRACE-level |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19659](https://issues.apache.org/jira/browse/HBASE-19659) | Enable -x in make\_rc.sh so logs where it is in execution |  Trivial | build | Michael Stack | Michael Stack |
| [HBASE-19486](https://issues.apache.org/jira/browse/HBASE-19486) |  Periodically ensure records are not buffered too long by BufferedMutator |  Major | Client | Niels Basjes | Niels Basjes |
| [HBASE-19651](https://issues.apache.org/jira/browse/HBASE-19651) | Remove LimitInputStream |  Minor | . | David Mollitor | David Mollitor |
| [HBASE-19358](https://issues.apache.org/jira/browse/HBASE-19358) | Improve the stability of splitting log when do fail over |  Major | MTTR | Jingyun Tian | Jingyun Tian |
| [HBASE-19684](https://issues.apache.org/jira/browse/HBASE-19684) | BlockCacheKey toString Performance |  Trivial | . | David Mollitor | David Mollitor |
| [HBASE-19702](https://issues.apache.org/jira/browse/HBASE-19702) | Improve RSGroupInfo constructors |  Minor | . | Xiang Li | Xiang Li |
| [HBASE-19139](https://issues.apache.org/jira/browse/HBASE-19139) | Create Async Admin methods for Clear Block Cache |  Major | Admin | Zach York | Guanghao Zhang |
| [HBASE-19483](https://issues.apache.org/jira/browse/HBASE-19483) | Add proper privilege check for rsgroup commands |  Major | rsgroup, security | Ted Yu | Guangxu Cheng |
| [HBASE-19758](https://issues.apache.org/jira/browse/HBASE-19758) | Split TestHCM to several smaller tests |  Major | test | Duo Zhang | Duo Zhang |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18913](https://issues.apache.org/jira/browse/HBASE-18913) | TestShell fails because NoMethodError: undefined method parseColumn |  Major | shell | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18490](https://issues.apache.org/jira/browse/HBASE-18490) | Modifying a table descriptor to enable replicas does not create replica regions |  Major | Region Assignment | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-18992](https://issues.apache.org/jira/browse/HBASE-18992) | Comparators passed to the Memstore's flattened segments seems to be wrong |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19017](https://issues.apache.org/jira/browse/HBASE-19017) | [AMv2] EnableTableProcedure is not retaining the assignments |  Major | Region Assignment | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19135](https://issues.apache.org/jira/browse/HBASE-19135) | TestWeakObjectPool time out |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19137](https://issues.apache.org/jira/browse/HBASE-19137) | Nightly test should make junit reports optional rather than attempt archive after reporting. |  Critical | build | Michael Stack | Sean Busbey |
| [HBASE-19100](https://issues.apache.org/jira/browse/HBASE-19100) | Missing break in catch block of InterruptedException in HRegion#waitForFlushesAndCompactions |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19065](https://issues.apache.org/jira/browse/HBASE-19065) | HRegion#bulkLoadHFiles() should wait for concurrent Region#flush() to finish |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19120](https://issues.apache.org/jira/browse/HBASE-19120) | IllegalArgumentException from ZNodeClearer when master shuts down |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19118](https://issues.apache.org/jira/browse/HBASE-19118) | Use SaslUtil to set Sasl.QOP in 'Thrift' |  Major | Thrift | Reid Chan | Reid Chan |
| [HBASE-19156](https://issues.apache.org/jira/browse/HBASE-19156) | Duplicative regions\_per\_server options on LoadTestTool |  Trivial | test | Josh Elser | Josh Elser |
| [HBASE-19124](https://issues.apache.org/jira/browse/HBASE-19124) | Move HBase-Nightly source artifact creation test from JenkinsFile to a script in dev-support |  Major | test | Apekshit Sharma | Sean Busbey |
| [HBASE-19178](https://issues.apache.org/jira/browse/HBASE-19178) | table.rb use undefined method 'getType' for Cell interface |  Trivial | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18983](https://issues.apache.org/jira/browse/HBASE-18983) | Upgrade to latest error-prone |  Major | build | Mike Drob | Mike Drob |
| [HBASE-19185](https://issues.apache.org/jira/browse/HBASE-19185) | ClassNotFoundException: com.fasterxml.jackson.\* |  Critical | mapreduce | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19160](https://issues.apache.org/jira/browse/HBASE-19160) | Re-expose CellComparator |  Critical | . | Mike Drob | Mike Drob |
| [HBASE-19111](https://issues.apache.org/jira/browse/HBASE-19111) | Add missing CellUtil#isPut(Cell) methods |  Critical | Client | Josh Elser | Josh Elser |
| [HBASE-19102](https://issues.apache.org/jira/browse/HBASE-19102) | TestZooKeeperMainServer fails with KeeperException$ConnectionLossException |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19198](https://issues.apache.org/jira/browse/HBASE-19198) | TestIPv6NIOServerSocketChannel fails; unable to bind |  Minor | test | Michael Stack | Michael Stack |
| [HBASE-19211](https://issues.apache.org/jira/browse/HBASE-19211) | B&R: update configuration string in BackupRestoreConstants |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-19184](https://issues.apache.org/jira/browse/HBASE-19184) | clean up nightly source artifact test to match expectations from switch to git-archive |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19165](https://issues.apache.org/jira/browse/HBASE-19165) | TODO Handle stuck in transition: rit=OPENING, location=ve0538.... |  Critical | migration | Michael Stack | Michael Stack |
| [HBASE-19195](https://issues.apache.org/jira/browse/HBASE-19195) | More error-prone fixes |  Major | . | Mike Drob | Mike Drob |
| [HBASE-19199](https://issues.apache.org/jira/browse/HBASE-19199) | RatioBasedCompactionPolicy#shouldPerformMajorCompaction() always return true when only one file needs to compact |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19229](https://issues.apache.org/jira/browse/HBASE-19229) | Nightly script to check source artifact should not do a destructive git operation without opt-in |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19089](https://issues.apache.org/jira/browse/HBASE-19089) | Fix the list of included moduleSets in src and binary tars |  Major | build | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19244](https://issues.apache.org/jira/browse/HBASE-19244) | Fix simple typos in HBASE-15518 descriptions |  Trivial | . | Clay B. | Clay B. |
| [HBASE-19246](https://issues.apache.org/jira/browse/HBASE-19246) | Trivial fix in findHangingTests.py |  Trivial | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19250](https://issues.apache.org/jira/browse/HBASE-19250) | TestClientClusterStatus is flaky |  Trivial | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19215](https://issues.apache.org/jira/browse/HBASE-19215) | Incorrect exception handling on the client causes incorrect call timeouts and byte buffer allocations on the server |  Major | rpc | Abhishek Singh Chouhan | Abhishek Singh Chouhan |
| [HBASE-19240](https://issues.apache.org/jira/browse/HBASE-19240) | Fix error-prone errors, part four? |  Major | . | Mike Drob | Mike Drob |
| [HBASE-19249](https://issues.apache.org/jira/browse/HBASE-19249) | test for "hbase antipatterns" should check \_count\_ of occurance rather than text of |  Critical | build | Sean Busbey | Sean Busbey |
| [HBASE-19210](https://issues.apache.org/jira/browse/HBASE-19210) | TestNamespacesInstanceResource fails |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19245](https://issues.apache.org/jira/browse/HBASE-19245) | MultiTableInputFormatBase#getSplits creates a Connection per Table |  Minor | mapreduce | Michael Stack | Michael Stack |
| [HBASE-19255](https://issues.apache.org/jira/browse/HBASE-19255) | PerformanceEvaluation class not found when run PE test |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19223](https://issues.apache.org/jira/browse/HBASE-19223) | Remove references to Date Tiered compaction from branch-1.2 and branch-1.1 ref guide |  Critical | Compaction, documentation | chilianyi | Sean Busbey |
| [HBASE-18357](https://issues.apache.org/jira/browse/HBASE-18357) | Enable disabled tests in TestHCM that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Michael Stack |
| [HBASE-18356](https://issues.apache.org/jira/browse/HBASE-18356) | Enable TestFavoredStochasticBalancerPickers#testPickers that was disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Thiruvel Thirumoolan |
| [HBASE-19181](https://issues.apache.org/jira/browse/HBASE-19181) | LogRollBackupSubprocedure will fail if we use AsyncFSWAL instead of FSHLog |  Major | backup&restore | Duo Zhang | Vladimir Rodionov |
| [HBASE-19260](https://issues.apache.org/jira/browse/HBASE-19260) | Add lock back to avoid parallel accessing meta to locate region |  Major | . | Yu Li | Yu Li |
| [HBASE-19304](https://issues.apache.org/jira/browse/HBASE-19304) | KEEP\_DELETED\_CELLS should ignore case |  Blocker | regionserver | Sergey Soldatov | Sergey Soldatov |
| [HBASE-19315](https://issues.apache.org/jira/browse/HBASE-19315) | Incorrect snapshot version is used for 2.0.0-beta-1 |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19321](https://issues.apache.org/jira/browse/HBASE-19321) | ZKAsyncRegistry ctor would hang when zookeeper cluster is not available |  Major | . | Ted Yu | Guoquan Wu |
| [HBASE-19330](https://issues.apache.org/jira/browse/HBASE-19330) | Remove duplicated dependency from hbase-rest |  Trivial | dependencies | Peter Somogyi | Peter Somogyi |
| [HBASE-19317](https://issues.apache.org/jira/browse/HBASE-19317) | Increase "yarn.nodemanager.disk-health-checker.max-disk-utilization-per-disk-percentage" to avoid host-related failures on MiniMRCluster |  Major | integration tests, test | Josh Elser | Josh Elser |
| [HBASE-19310](https://issues.apache.org/jira/browse/HBASE-19310) | Verify IntegrationTests don't rely on Rules outside of JUnit context |  Critical | integration tests | Romil Choksi | Josh Elser |
| [HBASE-19337](https://issues.apache.org/jira/browse/HBASE-19337) | AsyncMetaTableAccessor may hang when call ScanController.terminate many times |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19325](https://issues.apache.org/jira/browse/HBASE-19325) | Pass a list of server name to postClearDeadServers |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19319](https://issues.apache.org/jira/browse/HBASE-19319) | Fix bug in synchronizing over ProcedureEvent |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19318](https://issues.apache.org/jira/browse/HBASE-19318) | MasterRpcServices#getSecurityCapabilities explicitly checks for the HBase AccessController implementation |  Critical | master, security | Sharmadha S | Josh Elser |
| [HBASE-19335](https://issues.apache.org/jira/browse/HBASE-19335) | Fix waitUntilAllRegionsAssigned |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19355](https://issues.apache.org/jira/browse/HBASE-19355) | Missing dependency on hbase-zookeeper module causes CopyTable to fail |  Major | . | Romil Choksi | Ted Yu |
| [HBASE-19351](https://issues.apache.org/jira/browse/HBASE-19351) | Deprecated is missing in Table implementations |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19035](https://issues.apache.org/jira/browse/HBASE-19035) | Miss metrics when coprocessor use region scanner to read data |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19363](https://issues.apache.org/jira/browse/HBASE-19363) | Tests under TestCheckAndMutate are identical |  Minor | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19386](https://issues.apache.org/jira/browse/HBASE-19386) | HBase UnsafeAvailChecker returns false on Arm64 |  Minor | . | Yuqi Gu | Yuqi Gu |
| [HBASE-19388](https://issues.apache.org/jira/browse/HBASE-19388) | Incorrect value is being set for Compaction Pressure in RegionLoadStats object inside HRegion class |  Minor | regionserver | Harshal Jain | Harshal Jain |
| [HBASE-19350](https://issues.apache.org/jira/browse/HBASE-19350) | TestMetaWithReplicas is flaky |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19390](https://issues.apache.org/jira/browse/HBASE-19390) | Revert to older version of Jetty 9.3 |  Major | . | Esteban Gutierrez | Mike Drob |
| [HBASE-19406](https://issues.apache.org/jira/browse/HBASE-19406) | Fix CompactionRequest equals and hashCode |  Major | . | Andrew Kyle Purtell | Andrew Kyle Purtell |
| [HBASE-19339](https://issues.apache.org/jira/browse/HBASE-19339) | Eager policy results in the negative size of memstore |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19056](https://issues.apache.org/jira/browse/HBASE-19056) |  TestCompactionInDeadRegionServer is top of the flakies charts! |  Major | test | Michael Stack | Ted Yu |
| [HBASE-18942](https://issues.apache.org/jira/browse/HBASE-18942) | hbase-hadoop2-compat module ignores hadoop-3 profile |  Major | . | Ted Yu | Apekshit Sharma |
| [HBASE-19431](https://issues.apache.org/jira/browse/HBASE-19431) | The tag array written by IndividualBytesFieldCell#write is out of bounds |  Critical | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19384](https://issues.apache.org/jira/browse/HBASE-19384) | Results returned by preAppend hook in a coprocessor are replaced with null from other coprocessor even on bypass |  Critical | Coprocessors | Rajeshbabu Chintaguntla | Michael Stack |
| [HBASE-19422](https://issues.apache.org/jira/browse/HBASE-19422) | using hadoop-profile property leads to confusing failures |  Major | . | Ted Yu | Mike Drob |
| [HBASE-19023](https://issues.apache.org/jira/browse/HBASE-19023) | Usage for rowcounter in refguide is out of sync with code |  Major | . | Ted Yu | Tak-Lon (Stephen) Wu |
| [HBASE-19417](https://issues.apache.org/jira/browse/HBASE-19417) | Remove boolean return value from postBulkLoadHFile hook |  Major | . | Apekshit Sharma | Ted Yu |
| [HBASE-12444](https://issues.apache.org/jira/browse/HBASE-12444) | Total number of requests overflow because it's int |  Minor | hbck, master, regionserver | yunjiong zhao | Chia-Ping Tsai |
| [HBASE-19435](https://issues.apache.org/jira/browse/HBASE-19435) | Reopen Files for ClosedChannelException in BucketCache |  Major | BucketCache | Zach York | Zach York |
| [HBASE-19349](https://issues.apache.org/jira/browse/HBASE-19349) | Introduce wrong version depencency of servlet-api jar |  Critical | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19454](https://issues.apache.org/jira/browse/HBASE-19454) | Debugging TestDistributedLogSplitting#testThreeRSAbort |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19433](https://issues.apache.org/jira/browse/HBASE-19433) | ChangeSplitPolicyAction modifies an immutable HTableDescriptor |  Critical | integration tests | Josh Elser | Ted Yu |
| [HBASE-19461](https://issues.apache.org/jira/browse/HBASE-19461) | TestRSGroups is broke |  Major | test | Michael Stack | Michael Stack |
| [HBASE-19134](https://issues.apache.org/jira/browse/HBASE-19134) | Make WALKey an Interface; expose Read-Only version to CPs |  Major | Coprocessors, wal | Michael Stack | Michael Stack |
| [HBASE-19371](https://issues.apache.org/jira/browse/HBASE-19371) | Running WALPerformanceEvaluation against asyncfswal throws exceptions |  Major | . | Michael Stack | Duo Zhang |
| [HBASE-19493](https://issues.apache.org/jira/browse/HBASE-19493) | Make TestWALMonotonicallyIncreasingSeqId also work with AsyncFSWAL |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19394](https://issues.apache.org/jira/browse/HBASE-19394) | Support multi-homing env for the publication of RS status with multicast (hbase.status.published) |  Major | Client, master | Toshihiro Suzuki | Toshihiro Suzuki |
| [HBASE-19495](https://issues.apache.org/jira/browse/HBASE-19495) | Fix failed ut TestShell |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19456](https://issues.apache.org/jira/browse/HBASE-19456) | RegionMover's region server hostname option is no longer case insensitive |  Major | tooling | Romil Choksi | Sergey Soldatov |
| [HBASE-19508](https://issues.apache.org/jira/browse/HBASE-19508) | ReadOnlyConfiguration throws exception if any Configuration in current context calls addDefautlResource |  Major | conf | Michael Stack | Michael Stack |
| [HBASE-19484](https://issues.apache.org/jira/browse/HBASE-19484) | The value array written by ExtendedCell#write is out of bounds |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19434](https://issues.apache.org/jira/browse/HBASE-19434) | create\_namespace command for existing namespace does not throw useful error message |  Minor | . | Romil Choksi | Ted Yu |
| [HBASE-19503](https://issues.apache.org/jira/browse/HBASE-19503) | Fix TestWALOpenAfterDNRollingStart for AsyncFSWAL |  Major | Replication, wal | Duo Zhang | Duo Zhang |
| [HBASE-19287](https://issues.apache.org/jira/browse/HBASE-19287) | master hangs forever if RecoverMeta send assign meta region request to target server fail |  Major | proc-v2 | Yi Liang | Yi Liang |
| [HBASE-19510](https://issues.apache.org/jira/browse/HBASE-19510) | TestDistributedLogSplitting is flakey for AsyncFSWAL |  Critical | Recovery, test | Duo Zhang | Duo Zhang |
| [HBASE-19511](https://issues.apache.org/jira/browse/HBASE-19511) | Splits causes blocks to be cached again and so such blocks cannot be evicted from bucket cache |  Critical | BucketCache | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19513](https://issues.apache.org/jira/browse/HBASE-19513) | Fix the wrapped AsyncFSOutput implementation |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19516](https://issues.apache.org/jira/browse/HBASE-19516) | IntegrationTestBulkLoad and IntegrationTestImportTsv run into 'java.lang.RuntimeException: DistributedHBaseCluster@1bb564e2 not an instance of MiniHBaseCluster' |  Major | . | Romil Choksi | Ankit Singhal |
| [HBASE-18946](https://issues.apache.org/jira/browse/HBASE-18946) | Stochastic load balancer assigns replica regions to the same RS |  Major | Balancer | ramkrishna.s.vasudevan | Michael Stack |
| [HBASE-18838](https://issues.apache.org/jira/browse/HBASE-18838) | shaded artifacts are incorrect when built against hadoop 3 |  Critical | Client | Sean Busbey | Mike Drob |
| [HBASE-18352](https://issues.apache.org/jira/browse/HBASE-18352) | Enable TestMasterOperationsForRegionReplicas#testCreateTableWithMultipleReplicas disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Stephen Yuan Jiang | Hua Xiang |
| [HBASE-19509](https://issues.apache.org/jira/browse/HBASE-19509) | RSGroupAdminEndpoint#preCreateTable triggers TableNotFoundException |  Minor | . | Ted Yu | Andrew Kyle Purtell |
| [HBASE-19530](https://issues.apache.org/jira/browse/HBASE-19530) | New regions should always be added with state CLOSED |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19522](https://issues.apache.org/jira/browse/HBASE-19522) | The complete order may be wrong in AsyncBufferedMutatorImpl |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19546](https://issues.apache.org/jira/browse/HBASE-19546) | TestMasterReplication.testCyclicReplication2 uses wrong assertion |  Major | Replication, test | Duo Zhang | Duo Zhang |
| [HBASE-19549](https://issues.apache.org/jira/browse/HBASE-19549) | Change path comparison in CommonFSUtils |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19532](https://issues.apache.org/jira/browse/HBASE-19532) | AssignProcedure#COMPARATOR may produce incorrect sort order |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19555](https://issues.apache.org/jira/browse/HBASE-19555) | TestSplitTransactionOnCluster is flaky |  Major | test | Peter Somogyi | Peter Somogyi |
| [HBASE-19558](https://issues.apache.org/jira/browse/HBASE-19558) | TestRegionsOnMasterOptions hack so it works reliablly |  Major | test | Michael Stack | Michael Stack |
| [HBASE-19561](https://issues.apache.org/jira/browse/HBASE-19561) | maxCacheSize in CacheEvictionStats can't be accumulated repeatedly When dealing with each region |  Major | . | Guangxu Cheng | Guangxu Cheng |
| [HBASE-19563](https://issues.apache.org/jira/browse/HBASE-19563) | A few hbase-procedure classes missing @InterfaceAudience annotation |  Minor | proc-v2 | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19542](https://issues.apache.org/jira/browse/HBASE-19542) | fix TestSafemodeBringsDownMaster |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19218](https://issues.apache.org/jira/browse/HBASE-19218) | Master stuck thinking hbase:namespace is assigned after restart preventing intialization |  Critical | . | Josh Elser | Michael Stack |
| [HBASE-19559](https://issues.apache.org/jira/browse/HBASE-19559) | Fix TestLogRolling.testLogRollOnDatanodeDeath |  Major | test, wal | Duo Zhang | Duo Zhang |
| [HBASE-19578](https://issues.apache.org/jira/browse/HBASE-19578) | MasterProcWALs cleaning is incorrect |  Critical | amv2 | Peter Somogyi | Peter Somogyi |
| [HBASE-19148](https://issues.apache.org/jira/browse/HBASE-19148) | Reevaluate default values of configurations |  Blocker | Operability | Michael Stack | Michael Stack |
| [HBASE-17248](https://issues.apache.org/jira/browse/HBASE-17248) | SimpleRegionNormalizer javadoc correction |  Trivial | master | Daisuke Kobayashi | Daisuke Kobayashi |
| [HBASE-19589](https://issues.apache.org/jira/browse/HBASE-19589) | New regions should always be added with state CLOSED (followup of HBASE-19530) |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19593](https://issues.apache.org/jira/browse/HBASE-19593) | Possible NPE if wal is closed during waledit append. |  Major | . | Rajeshbabu Chintaguntla | Rajeshbabu Chintaguntla |
| [HBASE-19608](https://issues.apache.org/jira/browse/HBASE-19608) | Race in MasterRpcServices.getProcedureResult |  Major | proc-v2 | Duo Zhang | Duo Zhang |
| [HBASE-19457](https://issues.apache.org/jira/browse/HBASE-19457) | Debugging flaky TestTruncateTableProcedure#testRecoveryAndDoubleExecutionPreserveSplits |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19496](https://issues.apache.org/jira/browse/HBASE-19496) | Reusing the ByteBuffer in rpc layer corrupt the ServerLoad and RegionLoad |  Blocker | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19619](https://issues.apache.org/jira/browse/HBASE-19619) | Modify replication\_admin.rb to use ReplicationPeerConfigBuilder |  Critical | . | Ted Yu | Ted Yu |
| [HBASE-19643](https://issues.apache.org/jira/browse/HBASE-19643) | Need to update cache location when get error in AsyncBatchRpcRetryingCaller |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19490](https://issues.apache.org/jira/browse/HBASE-19490) | Rare failure in TestRateLimiter |  Major | test | Andrew Kyle Purtell | Chia-Ping Tsai |
| [HBASE-19709](https://issues.apache.org/jira/browse/HBASE-19709) | Guard against a ThreadPool size of 0 in CleanerChore |  Critical | . | Siddharth Wagle | Josh Elser |
| [HBASE-19714](https://issues.apache.org/jira/browse/HBASE-19714) | \`status 'detailed'\` invokes nonexistent "getRegionsInTransition" method on ClusterStatus |  Critical | shell | Josh Elser | Josh Elser |
| [HBASE-19721](https://issues.apache.org/jira/browse/HBASE-19721) | Unnecessary stubbings detected in test class: TestReversedScannerCallable |  Major | test | Jean-Marc Spaggiari | Mike Drob |
| [HBASE-19696](https://issues.apache.org/jira/browse/HBASE-19696) | Filter returning INCLUDE\_AND\_NEXT\_COL doesn't skip remaining versions when scan has explicit columns |  Critical | . | Ankit Singhal | Ankit Singhal |
| [HBASE-19712](https://issues.apache.org/jira/browse/HBASE-19712) | Fix TestSnapshotQuotaObserverChore#testSnapshotSize |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19424](https://issues.apache.org/jira/browse/HBASE-19424) | Metrics servlet throws NPE |  Minor | . | Andrew Kyle Purtell | Toshihiro Suzuki |
| [HBASE-19717](https://issues.apache.org/jira/browse/HBASE-19717) | IntegrationTestDDLMasterFailover is using outdated values for DataBlockEncoding |  Major | integration tests | Romil Choksi | Sergey Soldatov |
| [HBASE-19744](https://issues.apache.org/jira/browse/HBASE-19744) | Fix flakey TestZKLeaderManager |  Major | test | Michael Stack | Michael Stack |
| [HBASE-19729](https://issues.apache.org/jira/browse/HBASE-19729) | UserScanQueryMatcher#mergeFilterResponse should return INCLUDE\_AND\_SEEK\_NEXT\_ROW when filterResponse is INCLUDE\_AND\_SEEK\_NEXT\_ROW |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19740](https://issues.apache.org/jira/browse/HBASE-19740) | Repeated error message for NamespaceExistException |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-19749](https://issues.apache.org/jira/browse/HBASE-19749) | Revisit  logic of UserScanQueryMatcher#mergeFilterResponse method |  Major | . | Zheng Hu | Zheng Hu |
| [HBASE-19755](https://issues.apache.org/jira/browse/HBASE-19755) | Error message for non-existent namespace is inaccurate |  Minor | . | Ted Yu | Sergey Soldatov |
| [HBASE-19694](https://issues.apache.org/jira/browse/HBASE-19694) | The initialization order for a fresh cluster is incorrect |  Critical | . | Duo Zhang | Michael Stack |
| [HBASE-11409](https://issues.apache.org/jira/browse/HBASE-11409) | Add more flexibility for input directory structure to LoadIncrementalHFiles |  Major | . | churro morales | churro morales |
| [HBASE-19752](https://issues.apache.org/jira/browse/HBASE-19752) | RSGroupBasedLoadBalancer#getMisplacedRegions() should handle the case where rs group cannot be determined |  Major | . | Ted Yu | Ted Yu |
| [HBASE-19196](https://issues.apache.org/jira/browse/HBASE-19196) | Release hbase-2.0.0-beta-1; the "Finish-line" release |  Blocker | . | Michael Stack | Michael Stack |
| [HBASE-19656](https://issues.apache.org/jira/browse/HBASE-19656) | Disable TestAssignmentManagerMetrics for beta-1 |  Major | . | Michael Stack | Michael Stack |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-19237](https://issues.apache.org/jira/browse/HBASE-19237) | TestMaster.testMasterOpsWhileSplitting fails |  Major | . | Ted Yu | Yi Liang |
| [HBASE-19248](https://issues.apache.org/jira/browse/HBASE-19248) | TestZooKeeper#testMultipleZK fails due to missing method getKeepAliveZooKeeperWatcher |  Critical | Zookeeper | Ted Yu | Sean Busbey |
| [HBASE-19273](https://issues.apache.org/jira/browse/HBASE-19273) | IntegrationTestBulkLoad#installSlowingCoproc() uses read-only HTableDescriptor |  Major | . | Romil Choksi | Ted Yu |
| [HBASE-19299](https://issues.apache.org/jira/browse/HBASE-19299) | Assert only one Connection is constructed when calculating splits in a MultiTableInputFormat |  Minor | test | Michael Stack | Michael Stack |
| [HBASE-19288](https://issues.apache.org/jira/browse/HBASE-19288) | Intermittent test failure in TestHStore.testRunDoubleMemStoreCompactors |  Major | test | Ted Yu | Ted Yu |
| [HBASE-19266](https://issues.apache.org/jira/browse/HBASE-19266) | TestAcidGuarantees should cover adaptive in-memory compaction |  Minor | . | Ted Yu | Chia-Ping Tsai |
| [HBASE-19342](https://issues.apache.org/jira/browse/HBASE-19342) | fix TestTableBasedReplicationSourceManagerImpl#testRemovePeerMetricsCleanup |  Major | test | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19289](https://issues.apache.org/jira/browse/HBASE-19289) | CommonFSUtils$StreamLacksCapabilityException: hflush when running test against hadoop3 beta1 |  Critical | . | Ted Yu | Mike Drob |
| [HBASE-19514](https://issues.apache.org/jira/browse/HBASE-19514) | Use random port for TestJMXListener |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18753](https://issues.apache.org/jira/browse/HBASE-18753) | Introduce the unsynchronized TimeRangeTracker |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18909](https://issues.apache.org/jira/browse/HBASE-18909) | Deprecate Admin's methods which used String regex |  Major | Admin | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18752](https://issues.apache.org/jira/browse/HBASE-18752) | Recalculate the TimeRange in flushing snapshot to store file |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18966](https://issues.apache.org/jira/browse/HBASE-18966) | Use non-sync TimeRangeTracker as a replacement for TimeRange in ImmutableSegment |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18914](https://issues.apache.org/jira/browse/HBASE-18914) | Remove AsyncAdmin's methods which were already deprecated in Admin interface |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19010](https://issues.apache.org/jira/browse/HBASE-19010) | Reimplement getMasterInfoPort for Admin |  Major | Client | Guanghao Zhang | Guanghao Zhang |
| [HBASE-18754](https://issues.apache.org/jira/browse/HBASE-18754) | Get rid of Writable from TimeRangeTracker |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19031](https://issues.apache.org/jira/browse/HBASE-19031) | Align exist method in Table and AsyncTable interfaces |  Critical | asyncclient, Client | Peter Somogyi | Peter Somogyi |
| [HBASE-19141](https://issues.apache.org/jira/browse/HBASE-19141) |  [compat 1-2] getClusterStatus always return empty ClusterStatus |  Critical | API | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18972](https://issues.apache.org/jira/browse/HBASE-18972) | Use Builder pattern to remove nullable parameters for coprocessor methods in RawAsyncTable interface |  Blocker | Client | Duo Zhang | Duo Zhang |
| [HBASE-19152](https://issues.apache.org/jira/browse/HBASE-19152) | Update refguide 'how to build an RC' and the make\_rc.sh script |  Trivial | build | Michael Stack | Michael Stack |
| [HBASE-19095](https://issues.apache.org/jira/browse/HBASE-19095) | Add CP hooks in RegionObserver for in memory compaction |  Major | Coprocessors | Duo Zhang | Duo Zhang |
| [HBASE-19131](https://issues.apache.org/jira/browse/HBASE-19131) | Add the ClusterStatus hook and cleanup other hooks which can be replaced by ClusterStatus hook |  Major | Coprocessors | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18950](https://issues.apache.org/jira/browse/HBASE-18950) | Remove Optional parameters in AsyncAdmin interface |  Blocker | Client | Duo Zhang | Guanghao Zhang |
| [HBASE-19197](https://issues.apache.org/jira/browse/HBASE-19197) | Move version on branch-2 from 2.0.0-alpha4 to 2.0.0-beta-1.SNAPSHOT |  Major | . | Michael Stack | Michael Stack |
| [HBASE-18961](https://issues.apache.org/jira/browse/HBASE-18961) | doMiniBatchMutate() is big, split it into smaller methods |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-19002](https://issues.apache.org/jira/browse/HBASE-19002) | Introduce more examples to show how to intercept normal region operations |  Minor | Coprocessors | Duo Zhang | Josh Elser |
| [HBASE-19220](https://issues.apache.org/jira/browse/HBASE-19220) | Async tests time out talking to zk; 'clusterid came back null' |  Major | test | Michael Stack | Michael Stack |
| [HBASE-19127](https://issues.apache.org/jira/browse/HBASE-19127) | Set State.SPLITTING, MERGING, MERGING\_NEW, SPLITTING\_NEW properly in RegionStatesNode |  Major | . | Yi Liang | Yi Liang |
| [HBASE-18962](https://issues.apache.org/jira/browse/HBASE-18962) | Support atomic BatchOperations through batchMutate() |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-18423](https://issues.apache.org/jira/browse/HBASE-18423) | Fix TestMetaWithReplicas |  Major | test | Vladimir Rodionov | Michael Stack |
| [HBASE-19243](https://issues.apache.org/jira/browse/HBASE-19243) | Start mini cluster once before class for TestFIFOCompactionPolicy |  Major | test | Duo Zhang | Duo Zhang |
| [HBASE-19235](https://issues.apache.org/jira/browse/HBASE-19235) | CoprocessorEnvironment should be exposed to CPs |  Minor | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19278](https://issues.apache.org/jira/browse/HBASE-19278) | Reenable cleanup in test teardown in TestAccessController3 disabled by HBASE-14614 |  Major | Region Assignment | Michael Stack | Michael Stack |
| [HBASE-19270](https://issues.apache.org/jira/browse/HBASE-19270) | Reenable TestRegionMergeTransactionOnCluster#testMergeWithReplicas disable by HBASE-14614 |  Major | Region Assignment | Michael Stack | Michael Stack |
| [HBASE-18964](https://issues.apache.org/jira/browse/HBASE-18964) | Deprecate RowProcessor and processRowsWithLocks() APIs that take RowProcessor as an argument |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-19009](https://issues.apache.org/jira/browse/HBASE-19009) | implement modifyTable and enable/disableTableReplication for AsyncAdmin |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19268](https://issues.apache.org/jira/browse/HBASE-19268) | Enable Replica tests that were disabled by Proc-V2 AM in HBASE-14614 |  Major | test | Michael Stack | Michael Stack |
| [HBASE-18911](https://issues.apache.org/jira/browse/HBASE-18911) | Unify Admin and AsyncAdmin's methods name |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19276](https://issues.apache.org/jira/browse/HBASE-19276) | RegionPlan should correctly implement equals and hashCode |  Major | . | Andrew Kyle Purtell | Michael Stack |
| [HBASE-19269](https://issues.apache.org/jira/browse/HBASE-19269) | Reenable TestShellRSGroups |  Major | test | Michael Stack | Guangxu Cheng |
| [HBASE-19313](https://issues.apache.org/jira/browse/HBASE-19313) | Call blockUntilConnected when constructing ZKAsyncRegistry(temporary workaround) |  Major | asyncclient, Client, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-19122](https://issues.apache.org/jira/browse/HBASE-19122) | preCompact and preFlush can bypass by returning null scanner; shut it down |  Critical | Coprocessors, Scanners | Michael Stack | Michael Stack |
| [HBASE-19092](https://issues.apache.org/jira/browse/HBASE-19092) | Make Tag IA.LimitedPrivate and expose for CPs |  Critical | Coprocessors | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19242](https://issues.apache.org/jira/browse/HBASE-19242) | Add MOB compact support for AsyncAdmin |  Blocker | Admin, mob | Duo Zhang | Balazs Meszaros |
| [HBASE-17049](https://issues.apache.org/jira/browse/HBASE-17049) | Do not issue sync request when there are still entries in ringbuffer |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-19096](https://issues.apache.org/jira/browse/HBASE-19096) | Add RowMutions batch support in AsyncTable |  Major | . | Jerry He | Jerry He |
| [HBASE-19362](https://issues.apache.org/jira/browse/HBASE-19362) | Remove unused imports from hbase-thrift module |  Minor | Thrift | Jan Hentschel | Guangxu Cheng |
| [HBASE-19359](https://issues.apache.org/jira/browse/HBASE-19359) | Revisit the default config of hbase client retries number |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19346](https://issues.apache.org/jira/browse/HBASE-19346) | Use EventLoopGroup to create AsyncFSOutput |  Major | wal | Duo Zhang | Duo Zhang |
| [HBASE-19344](https://issues.apache.org/jira/browse/HBASE-19344) | improve asyncWAL by using Independent thread for netty #IO in FanOutOneBlockAsyncDFSOutput |  Major | wal | Chance Li | Duo Zhang |
| [HBASE-19399](https://issues.apache.org/jira/browse/HBASE-19399) | Purge curator dependency from hbase-client |  Major | Client, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-19426](https://issues.apache.org/jira/browse/HBASE-19426) | Move has() and setTimestamp() to Mutation |  Major | Client | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18112](https://issues.apache.org/jira/browse/HBASE-18112) | Write RequestTooBigException back to client for NettyRpcServer |  Major | IPC/RPC | Duo Zhang | Toshihiro Suzuki |
| [HBASE-19295](https://issues.apache.org/jira/browse/HBASE-19295) | The Configuration returned by CPEnv should be read-only. |  Major | Coprocessors | Michael Stack | Michael Stack |
| [HBASE-19439](https://issues.apache.org/jira/browse/HBASE-19439) | Mark ShortCircuitMasterConnection  with InterfaceAudience Private |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-19357](https://issues.apache.org/jira/browse/HBASE-19357) | Bucket cache no longer L2 for LRU cache |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-19301](https://issues.apache.org/jira/browse/HBASE-19301) | Provide way for CPs to create short circuited connection with custom configurations |  Major | Coprocessors | Anoop Sam John | Anoop Sam John |
| [HBASE-19360](https://issues.apache.org/jira/browse/HBASE-19360) | Remove unused imports from hbase-zookeeper module |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-19373](https://issues.apache.org/jira/browse/HBASE-19373) | Fix Checkstyle error in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19375](https://issues.apache.org/jira/browse/HBASE-19375) | Fix import order in hbase-thrift |  Trivial | Thrift | Jan Hentschel | Jan Hentschel |
| [HBASE-16890](https://issues.apache.org/jira/browse/HBASE-16890) | Analyze the performance of AsyncWAL and fix the same |  Blocker | wal | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19427](https://issues.apache.org/jira/browse/HBASE-19427) | Add TimeRange support into Append to optimize for counters |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19213](https://issues.apache.org/jira/browse/HBASE-19213) | Align check and mutate operations in Table and AsyncTable |  Minor | API | Peter Somogyi | Peter Somogyi |
| [HBASE-19000](https://issues.apache.org/jira/browse/HBASE-19000) | Group multiple block cache clear requests per server |  Major | . | Ted Yu | Guangxu Cheng |
| [HBASE-19462](https://issues.apache.org/jira/browse/HBASE-19462) | Deprecate all addImmutable methods in Put |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19505](https://issues.apache.org/jira/browse/HBASE-19505) | Disable ByteBufferPool by default at HM |  Major | . | Anoop Sam John | Anoop Sam John |
| [HBASE-15536](https://issues.apache.org/jira/browse/HBASE-15536) | Make AsyncFSWAL as our default WAL |  Critical | wal | Duo Zhang | Duo Zhang |
| [HBASE-19272](https://issues.apache.org/jira/browse/HBASE-19272) | Deal with HBCK tests disabled by HBASE-14614 AMv2 when HBCK works again... |  Major | hbck | Michael Stack | Michael Stack |
| [HBASE-19498](https://issues.apache.org/jira/browse/HBASE-19498) | Fix findbugs and error-prone warnings in hbase-client (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19497](https://issues.apache.org/jira/browse/HBASE-19497) | Fix findbugs and error-prone warnings in hbase-common (branch-2) |  Major | . | Peter Somogyi | Peter Somogyi |
| [HBASE-19479](https://issues.apache.org/jira/browse/HBASE-19479) | Fix Checkstyle error in hbase-shell |  Trivial | shell | Jan Hentschel | Jan Hentschel |
| [HBASE-19474](https://issues.apache.org/jira/browse/HBASE-19474) | Bring down number of Checkstyle errors in hbase-zookeeper |  Minor | Zookeeper | Jan Hentschel | Jan Hentschel |
| [HBASE-19112](https://issues.apache.org/jira/browse/HBASE-19112) | Suspect methods on Cell to be deprecated |  Blocker | Client | Josh Elser | ramkrishna.s.vasudevan |
| [HBASE-18440](https://issues.apache.org/jira/browse/HBASE-18440) | ITs and Actions modify immutable TableDescriptors |  Major | integration tests | Mike Drob | Guanghao Zhang |
| [HBASE-19539](https://issues.apache.org/jira/browse/HBASE-19539) | Remove unnecessary semicolons in hbase-common |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19538](https://issues.apache.org/jira/browse/HBASE-19538) | Remove unnecessary semicolons in hbase-client |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19481](https://issues.apache.org/jira/browse/HBASE-19481) | Enable Checkstyle in hbase-error-prone |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19480](https://issues.apache.org/jira/browse/HBASE-19480) | Enable Checkstyle in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19494](https://issues.apache.org/jira/browse/HBASE-19494) | Create simple WALKey filter that can be plugged in on the Replication Sink |  Major | Replication | Michael Stack | Michael Stack |
| [HBASE-19556](https://issues.apache.org/jira/browse/HBASE-19556) | Remove TestAssignmentManager#testGoodSplit, which no longer make sense |  Minor | . | Yi Liang | Yi Liang |
| [HBASE-19567](https://issues.apache.org/jira/browse/HBASE-19567) | ClassNotFoundException: org.apache.hadoop.hbase.KeyValue$RawBytesComparator starting 2.0.0 over a 0.98.25 data. |  Major | HFile | Michael Stack | Michael Stack |
| [HBASE-19566](https://issues.apache.org/jira/browse/HBASE-19566) | Fix Checkstyle errors in hbase-client-project |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19575](https://issues.apache.org/jira/browse/HBASE-19575) | add copy constructor to Mutation |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-10092](https://issues.apache.org/jira/browse/HBASE-10092) | Move to slf4j |  Critical | . | Michael Stack | Balazs Meszaros |
| [HBASE-19591](https://issues.apache.org/jira/browse/HBASE-19591) | Cleanup the usage of ReplicationAdmin from hbase-shell |  Major | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19602](https://issues.apache.org/jira/browse/HBASE-19602) | Cleanup the usage of ReplicationAdmin from document |  Minor | . | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19605](https://issues.apache.org/jira/browse/HBASE-19605) | Fix Checkstyle errors in hbase-metrics-api |  Minor | metrics | Jan Hentschel | Jan Hentschel |
| [HBASE-19609](https://issues.apache.org/jira/browse/HBASE-19609) | Fix Checkstyle errors in hbase-metrics |  Minor | metrics | Jan Hentschel | Jan Hentschel |
| [HBASE-19648](https://issues.apache.org/jira/browse/HBASE-19648) | Move branch-2 version from 2.0.0-beta-1-SNAPSHOT to 2.0.0-beta-1 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19653](https://issues.apache.org/jira/browse/HBASE-19653) | Reduce the default hbase.client.start.log.errors.counter |  Trivial | Operability | Guanghao Zhang | Guanghao Zhang |
| [HBASE-19133](https://issues.apache.org/jira/browse/HBASE-19133) | Transfer big cells or upserted/appended cells into MSLAB upon flattening to CellChunkMap |  Major | . | Anastasia Braginsky | Gali Sheffi |
| [HBASE-19660](https://issues.apache.org/jira/browse/HBASE-19660) | Up default retries from 10 to 15 and blocking store files limit from 10 to 16 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19282](https://issues.apache.org/jira/browse/HBASE-19282) | CellChunkMap Benchmarking and User Interface |  Major | . | Anastasia Braginsky | Anastasia Braginsky |
| [HBASE-19670](https://issues.apache.org/jira/browse/HBASE-19670) | Workaround: Purge User API building from branch-2 so can make a beta-1 |  Major | website | Michael Stack | Michael Stack |
| [HBASE-19581](https://issues.apache.org/jira/browse/HBASE-19581) | Fix Checkstyle error in hbase-external-blockcache |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19604](https://issues.apache.org/jira/browse/HBASE-19604) | Fix Checkstyle errors in hbase-protocol-shaded |  Minor | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19731](https://issues.apache.org/jira/browse/HBASE-19731) | TestFromClientSide#testCheckAndDeleteWithCompareOp and testNullQualifier are flakey |  Critical | test | Michael Stack | Duo Zhang |
| [HBASE-19743](https://issues.apache.org/jira/browse/HBASE-19743) | Disable TestMemstoreLABWithoutPool |  Major | test | Michael Stack | Michael Stack |
| [HBASE-19787](https://issues.apache.org/jira/browse/HBASE-19787) | Fix or disable tests broken in branch-2 so can cut beta-1 |  Critical | . | Michael Stack | Michael Stack |
| [HBASE-18963](https://issues.apache.org/jira/browse/HBASE-18963) | Remove MultiRowMutationProcessor and implement mutateRows... methods using batchMutate() |  Major | regionserver | Umesh Agashe | Umesh Agashe |
| [HBASE-19114](https://issues.apache.org/jira/browse/HBASE-19114) | Split out o.a.h.h.zookeeper from hbase-server and hbase-client |  Major | . | Apekshit Sharma | Apekshit Sharma |
| [HBASE-19128](https://issues.apache.org/jira/browse/HBASE-19128) | Purge Distributed Log Replay from codebase, configurations, text; mark the feature as unsupported, broken. |  Major | documentation | Michael Stack | Apekshit Sharma |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-18751](https://issues.apache.org/jira/browse/HBASE-18751) | Revisit the TimeRange and TimeRangeTracker |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-18926](https://issues.apache.org/jira/browse/HBASE-18926) | Cleanup Optional\<T\> from method params |  Major | . | Apekshit Sharma | Duo Zhang |
| [HBASE-18703](https://issues.apache.org/jira/browse/HBASE-18703) | Inconsistent behavior for preBatchMutate in doMiniBatchMutate and processRowsWithLocks |  Critical | Coprocessors | Duo Zhang | Umesh Agashe |
| [HBASE-18805](https://issues.apache.org/jira/browse/HBASE-18805) | Unify Admin and AsyncAdmin |  Major | . | Balazs Meszaros | Guanghao Zhang |
| [HBASE-18978](https://issues.apache.org/jira/browse/HBASE-18978) | Align the methods in Table and AsyncTable |  Critical | asyncclient, Client | Duo Zhang | Peter Somogyi |
| [HBASE-18110](https://issues.apache.org/jira/browse/HBASE-18110) | [AMv2] Reenable tests temporarily disabled |  Blocker | Region Assignment | Michael Stack | Michael Stack |
| [HBASE-18429](https://issues.apache.org/jira/browse/HBASE-18429) | ITs attempt to modify immutable table/column descriptors |  Critical | integration tests | Mike Drob | Mike Drob |
| [HBASE-18705](https://issues.apache.org/jira/browse/HBASE-18705) | bin/hbase does not find cached\_classpath.txt |  Major | . | Balazs Meszaros | Balazs Meszaros |
| [HBASE-18927](https://issues.apache.org/jira/browse/HBASE-18927) | Add the DataType which is subset of KeyValue#Type to CellBuilder for building cell |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19097](https://issues.apache.org/jira/browse/HBASE-19097) | update testing to use Apache Yetus Test Patch version 0.6.0 |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-19176](https://issues.apache.org/jira/browse/HBASE-19176) | Remove hbase-native-client from branch-2 |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19179](https://issues.apache.org/jira/browse/HBASE-19179) | Remove hbase-prefix-tree |  Critical | . | Michael Stack | Michael Stack |
| [HBASE-18817](https://issues.apache.org/jira/browse/HBASE-18817) | Pull hbase-spark module out of branch-2 |  Blocker | spark | Sean Busbey | Sean Busbey |
| [HBASE-19224](https://issues.apache.org/jira/browse/HBASE-19224) | LICENSE failure for Hadoop 3.1 on dnsjava |  Major | build | Josh Elser | Josh Elser |
| [HBASE-14350](https://issues.apache.org/jira/browse/HBASE-14350) | Procedure V2 Phase 2: Assignment Manager |  Blocker | master, proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-19241](https://issues.apache.org/jira/browse/HBASE-19241) | Improve javadoc for AsyncAdmin and cleanup warnings for the implementation classes |  Major | documentation | Duo Zhang | Duo Zhang |
| [HBASE-19123](https://issues.apache.org/jira/browse/HBASE-19123) | Purge 'complete' support from Coprocesor Observers |  Major | Coprocessors | Michael Stack | Michael Stack |
| [HBASE-19200](https://issues.apache.org/jira/browse/HBASE-19200) | make hbase-client only depend on ZKAsyncRegistry and ZNodePaths |  Major | Client, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-19328](https://issues.apache.org/jira/browse/HBASE-19328) | Remove asked if splittable log messages |  Minor | proc-v2 | Balazs Meszaros | Balazs Meszaros |
| [HBASE-19407](https://issues.apache.org/jira/browse/HBASE-19407) | [branch-2] Remove backup/restore |  Blocker | . | Michael Stack | Michael Stack |
| [HBASE-19408](https://issues.apache.org/jira/browse/HBASE-19408) | Remove WALActionsListener.Base |  Trivial | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19298](https://issues.apache.org/jira/browse/HBASE-19298) | CellScanner and CellScannable should be declared as IA.Public |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19416](https://issues.apache.org/jira/browse/HBASE-19416) | Document dynamic configurations currently support |  Minor | documentation | Reid Chan | Reid Chan |
| [HBASE-19323](https://issues.apache.org/jira/browse/HBASE-19323) | Make netty engine default in hbase2 |  Major | rpc | Michael Stack | Michael Stack |
| [HBASE-19410](https://issues.apache.org/jira/browse/HBASE-19410) | Move zookeeper related UTs to hbase-zookeeper and mark them as ZKTests |  Major | test, Zookeeper | Duo Zhang | Duo Zhang |
| [HBASE-18988](https://issues.apache.org/jira/browse/HBASE-18988) | Add release managers to reference guide |  Trivial | documentation | Peter Somogyi | Peter Somogyi |
| [HBASE-19485](https://issues.apache.org/jira/browse/HBASE-19485) | Minor improvement to TestCompactedHFilesDischarger |  Trivial | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-19512](https://issues.apache.org/jira/browse/HBASE-19512) | Move EventType and ExecutorType from hbase-client to hbase-server |  Major | regionserver | Duo Zhang | Duo Zhang |
| [HBASE-19267](https://issues.apache.org/jira/browse/HBASE-19267) | Eclipse project import issues on 2.0 |  Major | build | Josh Elser | Josh Elser |
| [HBASE-19477](https://issues.apache.org/jira/browse/HBASE-19477) | Move and align documentation in hbase-annotations |  Trivial | . | Jan Hentschel | Jan Hentschel |
| [HBASE-19526](https://issues.apache.org/jira/browse/HBASE-19526) | Update hadoop version to 3.0 GA |  Major | build, dependencies | Mike Drob | Apekshit Sharma |
| [HBASE-19548](https://issues.apache.org/jira/browse/HBASE-19548) | Backport the missed doc fix from master to branch-2 |  Major | . | Chia-Ping Tsai | Chien Hsiang Tang |
| [HBASE-18970](https://issues.apache.org/jira/browse/HBASE-18970) | The version of jruby we use now can't get interactive input from prompt |  Critical | shell | Chia-Ping Tsai | AMIT VIRMANI |
| [HBASE-19637](https://issues.apache.org/jira/browse/HBASE-19637) | Add .checkstyle to gitignore |  Major | build | Duo Zhang | Duo Zhang |
| [HBASE-19644](https://issues.apache.org/jira/browse/HBASE-19644) | add the checkstyle rule to reject the illegal imports |  Major | . | Chia-Ping Tsai | Chia-Ping Tsai |
| [HBASE-19652](https://issues.apache.org/jira/browse/HBASE-19652) | Turn down CleanerChore logging; too chatty |  Major | . | Michael Stack | Michael Stack |
| [HBASE-19552](https://issues.apache.org/jira/browse/HBASE-19552) | update hbase to use new thirdparty libs |  Major | dependencies, thirdparty | Mike Drob | Mike Drob |
| [HBASE-16459](https://issues.apache.org/jira/browse/HBASE-16459) | Remove unused hbase shell --format option |  Trivial | shell | Dima Spivak | Dima Spivak |


