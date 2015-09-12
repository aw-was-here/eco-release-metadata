
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

## Release 1.3.0 - Unreleased (as of 2015-09-12)

### INCOMPATIBLE CHANGES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-13963](https://issues.apache.org/jira/browse/HBASE-13963) | avoid leaking jdk.tools |  Critical | build, documentation | Sean Busbey | Gabor Liptak |
| [HBASE-13706](https://issues.apache.org/jira/browse/HBASE-13706) | CoprocessorClassLoader should not exempt Hive classes |  Minor | Coprocessors | Jerry He | Jerry He |


### NEW FEATURES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14154](https://issues.apache.org/jira/browse/HBASE-14154) | DFS Replication should be configurable at column family level |  Minor | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13702](https://issues.apache.org/jira/browse/HBASE-13702) | ImportTsv: Add dry-run functionality and log bad rows |  Major | . | Apekshit Sharma | Apekshit Sharma |


### IMPROVEMENTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14397](https://issues.apache.org/jira/browse/HBASE-14397) | PrefixFilter doesn't filter all remaining rows if the prefix is longer than rowkey being compared |  Minor | Filters | cuijianwei | cuijianwei |
| [HBASE-14314](https://issues.apache.org/jira/browse/HBASE-14314) | Metrics for block cache should take region replicas into account |  Major | metrics, regionserver | Ted Yu | Ted Yu |
| [HBASE-14309](https://issues.apache.org/jira/browse/HBASE-14309) | Allow load balancer to operate when there is region in transition by adding force flag |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14261](https://issues.apache.org/jira/browse/HBASE-14261) | Enhance Chaos Monkey framework by adding zookeeper and datanode fault injections. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14260](https://issues.apache.org/jira/browse/HBASE-14260) | don't build javadocs for hbase-protocol module |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-14230](https://issues.apache.org/jira/browse/HBASE-14230) | replace reflection in FSHlog with HdfsDataOutputStream#getCurrentBlockReplication() |  Minor | wal | Heng Chen | Heng Chen |
| [HBASE-14203](https://issues.apache.org/jira/browse/HBASE-14203) | remove duplicate code getTableDescriptor in HTable |  Trivial | . | Heng Chen | Heng Chen |
| [HBASE-14194](https://issues.apache.org/jira/browse/HBASE-14194) | Undeprecate methods in ThriftServerRunner.HBaseHandler |  Trivial | . | Lars Francke | Lars Francke |
| [HBASE-14165](https://issues.apache.org/jira/browse/HBASE-14165) | The initial size of RWQueueRpcExecutor.queues should be (numWriteQueues + numReadQueues + numScanQueues) |  Minor | rpc | cuijianwei | cuijianwei |
| [HBASE-14164](https://issues.apache.org/jira/browse/HBASE-14164) | Display primary region replicas distribution on table.jsp |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14148](https://issues.apache.org/jira/browse/HBASE-14148) | Web UI Framable Page |  Major | . | Apekshit Sharma | Gabor Liptak |
| [HBASE-14122](https://issues.apache.org/jira/browse/HBASE-14122) | Client API for determining if server side supports cell level security |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14110](https://issues.apache.org/jira/browse/HBASE-14110) | Add CostFunction for balancing primary region replicas |  Major | . | Ted Yu | Ted Yu |
| [HBASE-14097](https://issues.apache.org/jira/browse/HBASE-14097) | Log link to client scan troubleshooting section when scanner exceptions happen. |  Trivial | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14078](https://issues.apache.org/jira/browse/HBASE-14078) | improve error message when HMaster can't bind to port |  Major | master | Sean Busbey | Matt Warhaftig |
| [HBASE-14058](https://issues.apache.org/jira/browse/HBASE-14058) | Stabilizing default heap memory tuner |  Major | regionserver | Abhilash | Abhilash |
| [HBASE-14045](https://issues.apache.org/jira/browse/HBASE-14045) | Bumping thrift version to 0.9.2. |  Major | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14015](https://issues.apache.org/jira/browse/HBASE-14015) | Allow setting a richer state value when toString a pv2 |  Minor | proc-v2 | stack | stack |
| [HBASE-14002](https://issues.apache.org/jira/browse/HBASE-14002) | Add --noReplicationSetup option to IntegrationTestReplication |  Major | integration tests | Dima Spivak | Dima Spivak |
| [HBASE-13996](https://issues.apache.org/jira/browse/HBASE-13996) | Add write sniffing in canary |  Major | canary | Liu Shaohui | Liu Shaohui |
| [HBASE-13985](https://issues.apache.org/jira/browse/HBASE-13985) | Add configuration to skip validating HFile format when bulk loading |  Minor | . | Victor Xu | Victor Xu |
| [HBASE-13980](https://issues.apache.org/jira/browse/HBASE-13980) | Distinguish blockedFlushCount vs unblockedFlushCount when tuning heap memory |  Minor | . | Ted Yu | Abhilash |
| [HBASE-13965](https://issues.apache.org/jira/browse/HBASE-13965) | Stochastic Load Balancer JMX Metrics |  Major | Balancer, metrics | Lei Chen | Lei Chen |
| [HBASE-13925](https://issues.apache.org/jira/browse/HBASE-13925) | Use zookeeper multi to clear znodes in ZKProcedureUtil |  Major | . | Ashish Singhi | Ashish Singhi |
| [HBASE-13876](https://issues.apache.org/jira/browse/HBASE-13876) | Improving performance of HeapMemoryManager |  Minor | hbase, regionserver | Abhilash | Abhilash |
| [HBASE-13127](https://issues.apache.org/jira/browse/HBASE-13127) | Add timeouts on all tests so less zombie sightings |  Major | test | stack | stack |
| [HBASE-13103](https://issues.apache.org/jira/browse/HBASE-13103) | [ergonomics] add region size balancing as a feature of master |  Major | Balancer, Usability | Nick Dimiduk | Mikhail Antonov |
| [HBASE-12988](https://issues.apache.org/jira/browse/HBASE-12988) | [Replication]Parallel apply edits across regions |  Major | Replication | hongyu bi | Lars Hofhansl |
| [HBASE-12596](https://issues.apache.org/jira/browse/HBASE-12596) | bulkload needs to follow locality |  Major | HFile, regionserver | Victor Xu | Victor Xu |
| [HBASE-8642](https://issues.apache.org/jira/browse/HBASE-8642) | [Snapshot] List and delete snapshot by table |  Major | snapshots | Julian Zhou | Ashish Singhi |
| [HBASE-7972](https://issues.apache.org/jira/browse/HBASE-7972) | Add a configuration for the TCP backlog in the Thrift server |  Major | Thrift | Jean-Daniel Cryans | Sean Busbey |
| [HBASE-6617](https://issues.apache.org/jira/browse/HBASE-6617) | ReplicationSourceManager should be able to track multiple WAL paths |  Major | Replication | Ted Yu | Yu Li |


### BUG FIXES:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14393](https://issues.apache.org/jira/browse/HBASE-14393) | Have TestHFileEncryption clean up after itself so it don't go all zombie on us |  Major | . | stack | stack |
| [HBASE-14392](https://issues.apache.org/jira/browse/HBASE-14392) | [tests] TestLogRollingNoCluster fails on master from time to time |  Major | test | stack | stack |
| [HBASE-14385](https://issues.apache.org/jira/browse/HBASE-14385) | Close the sockets that is missing in connection closure. |  Minor | . | Srikanth Srungarapu | Srikanth Srungarapu |
| [HBASE-14382](https://issues.apache.org/jira/browse/HBASE-14382) | TestInterfaceAudienceAnnotations should hadoop-compt module resources |  Minor | test | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14359](https://issues.apache.org/jira/browse/HBASE-14359) | HTable#close will hang forever if unchecked error/exception thrown in AsyncProcess#sendMultiAction |  Major | . | Yu Li | Victor Xu |
| [HBASE-14354](https://issues.apache.org/jira/browse/HBASE-14354) | Minor improvements for usage of the mlock agent |  Trivial | hbase, regionserver | Esteban Gutierrez | Esteban Gutierrez |
| [HBASE-14317](https://issues.apache.org/jira/browse/HBASE-14317) | Stuck FSHLog: bad disk (HDFS-8960) and can't roll WAL |  Blocker | . | stack | stack |
| [HBASE-14315](https://issues.apache.org/jira/browse/HBASE-14315) | Save one call to KeyValueHeap.peek per row |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-14313](https://issues.apache.org/jira/browse/HBASE-14313) | After a Connection sees ConnectionClosingException it never recovers |  Critical | . | Elliott Clark | Elliott Clark |
| [HBASE-14302](https://issues.apache.org/jira/browse/HBASE-14302) | TableSnapshotInputFormat should not create back references when restoring snapshot |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-14291](https://issues.apache.org/jira/browse/HBASE-14291) | NPE On StochasticLoadBalancer Balance Involving RS With No Regions |  Minor | Balancer | Matt Warhaftig | Ted Yu |
| [HBASE-14273](https://issues.apache.org/jira/browse/HBASE-14273) | Rename MVCC to MVCC: From MultiVersionConsistencyControl to MultiVersionConcurrencyControl |  Major | . | stack | Lars Francke |
| [HBASE-14269](https://issues.apache.org/jira/browse/HBASE-14269) | FuzzyRowFilter omits certain rows when multiple fuzzy keys exist |  Major | Filters | hongbin ma | hongbin ma |
| [HBASE-14258](https://issues.apache.org/jira/browse/HBASE-14258) | Make region\_mover.rb script case insensitive with regard to hostname |  Minor | . | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14251](https://issues.apache.org/jira/browse/HBASE-14251) | javadoc jars use LICENSE/NOTICE from primary artifact |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14250](https://issues.apache.org/jira/browse/HBASE-14250) | branch-1.1 hbase-server test-jar has incorrect LICENSE |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14249](https://issues.apache.org/jira/browse/HBASE-14249) | shaded jar modules create spurious source and test jars with incorrect LICENSE/NOTICE info |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-14243](https://issues.apache.org/jira/browse/HBASE-14243) | Incorrect NOTICE file in hbase-it test-jar |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14241](https://issues.apache.org/jira/browse/HBASE-14241) | Fix deadlock during cluster shutdown due to concurrent connection close |  Critical | . | Andrew Purtell | Ted Yu |
| [HBASE-14234](https://issues.apache.org/jira/browse/HBASE-14234) | Exception encountered in WALProcedureStore#rollWriter() should be properly handled |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14229](https://issues.apache.org/jira/browse/HBASE-14229) | Flushing canceled by coprocessor still leads to memstoreSize set down |  Major | regionserver | Yerui Sun | Yerui Sun |
| [HBASE-14228](https://issues.apache.org/jira/browse/HBASE-14228) | Close BufferedMutator and connection in MultiTableOutputFormat |  Minor | mapreduce | Jerry He | Jerry He |
| [HBASE-14224](https://issues.apache.org/jira/browse/HBASE-14224) | Fix coprocessor handling of duplicate classes |  Critical | Coprocessors | Lars George | stack |
| [HBASE-14219](https://issues.apache.org/jira/browse/HBASE-14219) | src tgz no longer builds after HBASE-14085 |  Blocker | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14214](https://issues.apache.org/jira/browse/HBASE-14214) | list\_labels shouldn't raise ArgumentError if no labels are defined |  Minor | . | Andrew Purtell | Anoop Sam John |
| [HBASE-14209](https://issues.apache.org/jira/browse/HBASE-14209) | TestShell visibility tests failing |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14206](https://issues.apache.org/jira/browse/HBASE-14206) | MultiRowRangeFilter returns records whose rowKeys are out of allowed ranges |  Critical | . | Anton Nazaruk | Anton Nazaruk |
| [HBASE-14196](https://issues.apache.org/jira/browse/HBASE-14196) | Thrift server idle connection timeout issue |  Major | Thrift | Vladimir Rodionov | Vladimir Rodionov |
| [HBASE-14185](https://issues.apache.org/jira/browse/HBASE-14185) | Incorrect region names logged by MemStoreFlusher |  Minor | regionserver | Biju Nair | Biju Nair |
| [HBASE-14168](https://issues.apache.org/jira/browse/HBASE-14168) | Avoid useless retry for DoNotRetryIOException in TableRecordReaderImpl |  Minor | mapreduce | zhouyingchao | zhouyingchao |
| [HBASE-14166](https://issues.apache.org/jira/browse/HBASE-14166) | Per-Region metrics can be stale |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14162](https://issues.apache.org/jira/browse/HBASE-14162) | Fixing maven target for regenerating thrift classes fails against 0.9.2 |  Blocker | build, Thrift | Sean Busbey | Srikanth Srungarapu |
| [HBASE-14157](https://issues.apache.org/jira/browse/HBASE-14157) | Interfaces implemented by subclasses should be checked when registering CoprocessorService |  Major | . | Alok Lal | Ted Yu |
| [HBASE-14155](https://issues.apache.org/jira/browse/HBASE-14155) | StackOverflowError in reverse scan |  Critical | regionserver, Scanners | James Taylor | ramkrishna.s.vasudevan |
| [HBASE-14153](https://issues.apache.org/jira/browse/HBASE-14153) | Typo in ProcedureManagerHost.MASTER\_PROCEUDRE\_CONF\_KEY |  Trivial | . | Konstantin Shvachko | Konstantin Shvachko |
| [HBASE-14146](https://issues.apache.org/jira/browse/HBASE-14146) | Once replication sees an error it slows down forever |  Major | . | Elliott Clark | Elliott Clark |
| [HBASE-14143](https://issues.apache.org/jira/browse/HBASE-14143) | remove obsolete maven repositories |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-14115](https://issues.apache.org/jira/browse/HBASE-14115) | Fix resource leak in HMasterCommandLine |  Major | . | Yuhao Bi | Yuhao Bi |
| [HBASE-14109](https://issues.apache.org/jira/browse/HBASE-14109) | NPE if we don't load fully before we are shutdown |  Trivial | regionserver | stack | stack |
| [HBASE-14100](https://issues.apache.org/jira/browse/HBASE-14100) | Fix high priority findbugs warnings |  Major | . | Duo Zhang | Duo Zhang |
| [HBASE-14094](https://issues.apache.org/jira/browse/HBASE-14094) | Procedure.proto can't be compiled to C++ |  Major | proc-v2, Protobufs | Elliott Clark | Elliott Clark |
| [HBASE-14092](https://issues.apache.org/jira/browse/HBASE-14092) | hbck should run without locks by default and only disable the balancer when necessary |  Major | hbck, util | Elliott Clark | Elliott Clark |
| [HBASE-14089](https://issues.apache.org/jira/browse/HBASE-14089) | Remove unnecessary draw of system entropy from RecoverableZooKeeper |  Minor | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14077](https://issues.apache.org/jira/browse/HBASE-14077) | Add package to hbase-protocol protobuf files. |  Major | Protobufs | Elliott Clark | Elliott Clark |
| [HBASE-14054](https://issues.apache.org/jira/browse/HBASE-14054) | Acknowledged writes may get lost if regionserver clock is set backwards |  Major | regionserver | Tobi Vollebregt | Enis Soztutar |
| [HBASE-14042](https://issues.apache.org/jira/browse/HBASE-14042) | Fix FATAL level logging in FSHLog where logged for non fatal exceptions |  Major | . | Andrew Purtell | Andrew Purtell |
| [HBASE-14041](https://issues.apache.org/jira/browse/HBASE-14041) | Client MetaCache is cleared if a ThrottlingException is thrown |  Minor | Client | Eungsop Yoo | Eungsop Yoo |
| [HBASE-14021](https://issues.apache.org/jira/browse/HBASE-14021) | Quota table has a wrong description on the UI |  Minor | UI | Ashish Singhi | Ashish Singhi |
| [HBASE-14012](https://issues.apache.org/jira/browse/HBASE-14012) | Double Assignment and Dataloss when ServerCrashProcedure runs during Master failover |  Blocker | master, Region Assignment | stack | stack |
| [HBASE-14005](https://issues.apache.org/jira/browse/HBASE-14005) | Set permission to .top hfile in LoadIncrementalHFiles |  Trivial | . | Francesco MDE | Francesco MDE |
| [HBASE-14000](https://issues.apache.org/jira/browse/HBASE-14000) | Region server failed to report to Master and was stuck in reportForDuty retry loop |  Major | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13997](https://issues.apache.org/jira/browse/HBASE-13997) | ScannerCallableWithReplicas cause Infinitely blocking |  Minor | Client | Zephyr Guo | Zephyr Guo |
| [HBASE-13989](https://issues.apache.org/jira/browse/HBASE-13989) | Threshold for combined MemStore and BlockCache percentages is not checked |  Major | . | Ted Yu | Ted Yu |
| [HBASE-13988](https://issues.apache.org/jira/browse/HBASE-13988) | Add exception handler for lease thread |  Minor | . | Liu Shaohui | Liu Shaohui |
| [HBASE-13974](https://issues.apache.org/jira/browse/HBASE-13974) | TestRateLimiter#testFixedIntervalResourceAvailability may fail |  Minor | test | Guanghao Zhang | Guanghao Zhang |
| [HBASE-13971](https://issues.apache.org/jira/browse/HBASE-13971) | Flushes stuck since 6 hours on a regionserver. |  Critical | regionserver | Abhilash | Ted Yu |
| [HBASE-13969](https://issues.apache.org/jira/browse/HBASE-13969) | AuthenticationTokenSecretManager is never stopped in RPCServer |  Minor | . | Pankaj Kumar | Pankaj Kumar |
| [HBASE-13966](https://issues.apache.org/jira/browse/HBASE-13966) | Limit column width in table.jsp |  Minor | Operability, UI | Jean-Marc Spaggiari | Matt Warhaftig |
| [HBASE-13959](https://issues.apache.org/jira/browse/HBASE-13959) | Region splitting uses a single thread in most common cases |  Critical | regionserver | Hari Krishna Dara | Hari Krishna Dara |
| [HBASE-13958](https://issues.apache.org/jira/browse/HBASE-13958) | RESTApiClusterManager calls kill() instead of suspend() and resume() |  Minor | integration tests | Matteo Bertozzi | Matteo Bertozzi |
| [HBASE-13945](https://issues.apache.org/jira/browse/HBASE-13945) | Prefix\_Tree seekBefore() does not work correctly |  Major | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13938](https://issues.apache.org/jira/browse/HBASE-13938) | Deletes done during the region merge transaction may get eclipsed |  Major | master, regionserver | Devaraj Das | Enis Soztutar |
| [HBASE-13935](https://issues.apache.org/jira/browse/HBASE-13935) | Orphaned namespace table ZK node should not prevent master to start |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-13933](https://issues.apache.org/jira/browse/HBASE-13933) | DBE's seekBefore with tags corrupts the tag's offset information thus leading to incorrect results |  Critical | . | ramkrishna.s.vasudevan | ramkrishna.s.vasudevan |
| [HBASE-13918](https://issues.apache.org/jira/browse/HBASE-13918) | Fix hbase:namespace description in webUI |  Trivial | hbase | Patrick White | Patrick White |
| [HBASE-13906](https://issues.apache.org/jira/browse/HBASE-13906) | Improve handling of NeedUnmanagedConnectionException |  Major | . | Nick Dimiduk | Mikhail Antonov |
| [HBASE-13897](https://issues.apache.org/jira/browse/HBASE-13897) | OOM may occur when Import imports a row with too many KeyValues |  Major | . | Liu Junhong | Liu Junhong |
| [HBASE-13889](https://issues.apache.org/jira/browse/HBASE-13889) | Fix hbase-shaded-client artifact so it works on hbase-downstreamer |  Critical | Client | Dmitry Minkovsky | Elliott Clark |
| [HBASE-13885](https://issues.apache.org/jira/browse/HBASE-13885) | ZK watches leaks during snapshots |  Critical | snapshots | Abhishek Singh Chouhan | Lars Hofhansl |
| [HBASE-13881](https://issues.apache.org/jira/browse/HBASE-13881) | Bug in HTable#incrementColumnValue implementation |  Major | Client | Jerry Lam | Gabor Liptak |
| [HBASE-13865](https://issues.apache.org/jira/browse/HBASE-13865) | Increase the default value for hbase.hregion.memstore.block.multipler from 2 to 4 (part 2) |  Trivial | regionserver | Vladimir Rodionov | Gabor Liptak |
| [HBASE-13863](https://issues.apache.org/jira/browse/HBASE-13863) | Multi-wal feature breaks reported number and size of HLogs |  Major | regionserver, UI | Elliott Clark | Abhilash |
| [HBASE-13835](https://issues.apache.org/jira/browse/HBASE-13835) | KeyValueHeap.current might be in heap when exception happens in pollRealKV |  Major | Scanners | zhouyingchao | zhouyingchao |
| [HBASE-13825](https://issues.apache.org/jira/browse/HBASE-13825) | Use ProtobufUtil#mergeFrom and ProtobufUtil#mergeDelimitedFrom in place of builder methods of same name |  Major | . | Dev Lakhani | Andrew Purtell |
| [HBASE-13480](https://issues.apache.org/jira/browse/HBASE-13480) | ShortCircuitConnection doesn't short-circuit all calls as expected |  Critical | Client | Josh Elser | Jingcheng Du |
| [HBASE-13352](https://issues.apache.org/jira/browse/HBASE-13352) | Add hbase.import.version to Import usage. |  Major | . | Lars Hofhansl | Lars Hofhansl |
| [HBASE-13337](https://issues.apache.org/jira/browse/HBASE-13337) | Table regions are not assigning back, after restarting all regionservers at once. |  Blocker | Region Assignment | Y. SREENIVASULU REDDY | Samir Ahmic |
| [HBASE-12865](https://issues.apache.org/jira/browse/HBASE-12865) | WALs may be deleted before they are replicated to peers |  Critical | Replication | Liu Shaohui | He Liangliang |
| [HBASE-10844](https://issues.apache.org/jira/browse/HBASE-10844) | Coprocessor failure during batchmutation leaves the memstore datastructs in an inconsistent state |  Major | regionserver | Devaraj Das | Nick Dimiduk |
| [HBASE-5878](https://issues.apache.org/jira/browse/HBASE-5878) | Use getVisibleLength public api from HdfsDataInputStream from Hadoop-2. |  Major | wal | Uma Maheswara Rao G | Ashish Singhi |


### TESTS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14293](https://issues.apache.org/jira/browse/HBASE-14293) | TestStochasticBalancerJmxMetrics intermittently fails due to port conflict |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14210](https://issues.apache.org/jira/browse/HBASE-14210) | Create test for cell level ACLs involving user group |  Major | . | Ted Yu | Ashish Singhi |
| [HBASE-14200](https://issues.apache.org/jira/browse/HBASE-14200) | Separate RegionReplica subtests of TestStochasticLoadBalancer into TestStochasticLoadBalancer2 |  Minor | . | Ted Yu | Ted Yu |
| [HBASE-14197](https://issues.apache.org/jira/browse/HBASE-14197) | TestRegionServerHostname#testInvalidRegionServerHostnameAbortsServer fails in Jenkins |  Minor | . | Ted Yu | Ted Yu |


### SUB-TASKS:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14274](https://issues.apache.org/jira/browse/HBASE-14274) | Deadlock in region metrics on shutdown: MetricsRegionSourceImpl vs MetricsRegionAggregateSourceImpl |  Major | test | stack | Elliott Clark |
| [HBASE-14239](https://issues.apache.org/jira/browse/HBASE-14239) | Branch-1.2 AM can get stuck when meta moves |  Major | Region Assignment | Elliott Clark | Elliott Clark |
| [HBASE-14176](https://issues.apache.org/jira/browse/HBASE-14176) | Add missing headers to META-INF files |  Trivial | build | Andrew Purtell | Andrew Purtell |
| [HBASE-14108](https://issues.apache.org/jira/browse/HBASE-14108) | Procedure V2 - Administrative Task: provide an API to abort a procedure |  Major | proc-v2 | Stephen Yuan Jiang | Stephen Yuan Jiang |
| [HBASE-14105](https://issues.apache.org/jira/browse/HBASE-14105) | Add shell tests for Snapshot |  Major | test | Ashish Singhi | Ashish Singhi |
| [HBASE-14087](https://issues.apache.org/jira/browse/HBASE-14087) | ensure correct ASF policy compliant headers on source/docs |  Blocker | build | Sean Busbey | Sean Busbey |
| [HBASE-14086](https://issues.apache.org/jira/browse/HBASE-14086) | remove unused bundled dependencies |  Blocker | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14003](https://issues.apache.org/jira/browse/HBASE-14003) | work around jdk8 spec bug in WALPerfEval |  Critical | test | Sean Busbey | Sean Busbey |
| [HBASE-13990](https://issues.apache.org/jira/browse/HBASE-13990) | clean up remaining errors for maven site goal |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-13973](https://issues.apache.org/jira/browse/HBASE-13973) | Update documentation for 10070 Phase 2 changes |  Major | . | Enis Soztutar | Enis Soztutar |
| [HBASE-13967](https://issues.apache.org/jira/browse/HBASE-13967) | add jdk profiles for jdk.tools dependency |  Major | . | Sean Busbey | Sean Busbey |
| [HBASE-13920](https://issues.apache.org/jira/browse/HBASE-13920) | Exclude Java files generated from protobuf from javadoc |  Minor | . | Gabor Liptak | Gabor Liptak |
| [HBASE-13909](https://issues.apache.org/jira/browse/HBASE-13909) | create 1.2 branch |  Major | build | Sean Busbey | Sean Busbey |
| [HBASE-13832](https://issues.apache.org/jira/browse/HBASE-13832) | Procedure V2: master fail to start due to WALProcedureStore sync failures when HDFS data nodes count is low |  Blocker | master, proc-v2 | Stephen Yuan Jiang | Matteo Bertozzi |
| [HBASE-13470](https://issues.apache.org/jira/browse/HBASE-13470) | High level Integration test for master DDL operations |  Major | master | Enis Soztutar | Sophia Feng |
| [HBASE-13415](https://issues.apache.org/jira/browse/HBASE-13415) | Procedure V2 - Use nonces for double submits from client |  Blocker | master | Enis Soztutar | Stephen Yuan Jiang |
| [HBASE-13212](https://issues.apache.org/jira/browse/HBASE-13212) | Procedure V2 - master Create/Modify/Delete namespace |  Major | master | Stephen Yuan Jiang | Stephen Yuan Jiang |


### OTHER:

| JIRA | Summary | Priority | Component | Reporter | Contributor |
|:---- |:---- | :--- |:---- |:---- |:---- |
| [HBASE-14318](https://issues.apache.org/jira/browse/HBASE-14318) | make\_rc.sh should purge/re-resolve dependencies from local repository |  Major | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14308](https://issues.apache.org/jira/browse/HBASE-14308) | HTableDescriptor WARN is not actionable |  Minor | Usability | Nick Dimiduk | Lars Francke |
| [HBASE-14290](https://issues.apache.org/jira/browse/HBASE-14290) | Spin up less threads in tests |  Major | test | stack | stack |
| [HBASE-14288](https://issues.apache.org/jira/browse/HBASE-14288) | Upgrade asciidoctor plugin to v1.5.2.1 |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-14066](https://issues.apache.org/jira/browse/HBASE-14066) | clean out old docbook docs from branch-1 |  Major | documentation | Sean Busbey | Sean Busbey |
| [HBASE-14057](https://issues.apache.org/jira/browse/HBASE-14057) | HBase shell user\_permission should list super users defined on hbase-site.xml |  Minor | shell | Wellington Chevreuil | Srikanth Srungarapu |
| [HBASE-14053](https://issues.apache.org/jira/browse/HBASE-14053) | Disable DLR in branch-1+ |  Major | Recovery | stack | stack |
| [HBASE-14052](https://issues.apache.org/jira/browse/HBASE-14052) | Mark a few methods in CellUtil audience private since only make sense internally to hbase |  Trivial | API | stack | stack |
| [HBASE-13964](https://issues.apache.org/jira/browse/HBASE-13964) | Skip region normalization for tables under namespace quota |  Major | Balancer, Usability | Mikhail Antonov | Ted Yu |
| [HBASE-13929](https://issues.apache.org/jira/browse/HBASE-13929) | make\_rc.sh publishes empty shaded artifacts |  Minor | build | Nick Dimiduk | Nick Dimiduk |
| [HBASE-13666](https://issues.apache.org/jira/browse/HBASE-13666) | book.pdf is not renamed during site build |  Major | site | Nick Dimiduk | Gabor Liptak |
| [HBASE-13089](https://issues.apache.org/jira/browse/HBASE-13089) | Fix test compilation error on building against htrace-3.2.0-incubating |  Minor | . | Masatake Iwasaki | Esteban Gutierrez |
| [HBASE-11276](https://issues.apache.org/jira/browse/HBASE-11276) | Add back support for running ChaosMonkey as standalone tool |  Minor | . | Dima Spivak | Yu Li |


